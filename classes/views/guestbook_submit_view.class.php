<?php

namespace Views;

require_once(dirname(__FILE__) . "/abstract_view.class.php");
require_once(dirname(__FILE__) . "/../ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/../guestbook_message_factory.class.php");
require_once(dirname(__FILE__) . "/../session.class.php");
require_once(dirname(__FILE__) . "/../dbif.class.php");


class GuestbookSubmitView extends AbstractView {
    protected function get_required_params() {
        return array("__csrf_token", "name", "message", "is_ajax", "url");
    }
    
    
    protected function get_template_name() {
        return "guestbook_submit.html";
    }
    
    
    protected function get_view_data(array $params) {
        $is_success = false;
        $text_storage = \UITextStorage::get();
        $errors = array();
        if (strlen($params["url"]) === 0) { // url is actually a hidden captcha field, not to be filled
            $errors = $this->get_form_errors($params, $text_storage);
            if (empty($errors)) {
                $f = \GuestbookMessageFactory::get();
                $message = $f->make_from_values($params["name"], $params["message"]);
                \DBIF::get()->insert_guestbook_message($message);
                $is_success = true;
            }
        }
        
        return array(
            "strings" => array(
                "success_text" => $text_storage->text("GUESTBOOK_SUBMIT_TEXT"),
                "page_title" => $text_storage->text("GUESTBOOK_TITLE"),
                "field_name" => $text_storage->text("GUESTBOOK_FIELD_NAME"),
                "field_message" => $text_storage->text("GUESTBOOK_FIELD_MESSAGE"),
                "show_form" => $text_storage->text("GUESTBOOK_SHOW_FORM"),
                "submit" => $text_storage->text("GUESTBOOK_SUBMIT"),
            ),
            "placeholder" => array(
                "message" => $text_storage->text("GUESTBOOK_PLACEHOLDER_MESSAGE")
            ),
            "prefill" => $params,
            "errors" => $errors,
            "is_ajax" => (bool)$params["is_ajax"],
            "is_success" => $is_success,
            "lang" => $text_storage->get_language()
        );
    }
    
    
    private function get_form_errors(array $form, \UITextStorage $text_storage) {
        $errors = array();
        $session = \Session::get();
        $validators = array(
            "__csrf_token" => function($token) use ($session) {
                return $session->validate_csrf_token($token);
            },
            "name" => "strlen",
            "message" => function($message) {
                return strlen($message) > 3;
            }
        );
        
        $errstr = array();
        foreach ($this->get_required_params() as $param) {
            $param_upper = strtoupper($param);
            $errstr[$param] = $text_storage->text("GUESTBOOK_FIELD_ERROR_{$param_upper}");
        }
        
        foreach ($validators as $field => $f) {
            if (!$f($form[$field])) {
                $errors[$field] = $errstr[$field];
            }
        }
        
        return $errors;
    }
}
