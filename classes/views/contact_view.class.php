<?php

namespace Views;

require_once(dirname(__FILE__) . "/abstract_view.class.php");
require_once(dirname(__FILE__) . "/../ui_text_storage.class.php");


class ContactView extends AbstractView {
    protected function get_required_params() {
        return array();
    }
    
    
    protected function get_template_name() {
        return "contact.html";
    }
    
    
    protected function get_view_data(array $params) {
        $text_storage = \UITextStorage::get();
        return array(
            "strings" => array(
                "page_title" => $text_storage->text("CONTACT_TITLE"),
                "field_name" => $text_storage->text("CONTACT_FIELD_NAME"),
                "field_email" => $text_storage->text("CONTACT_FIELD_EMAIL"),
                "field_phone" => $text_storage->text("CONTACT_FIELD_PHONE"),
                "field_message" => $text_storage->text("CONTACT_FIELD_MESSAGE"),
                "submit" => $text_storage->text("CONTACT_SUBMIT")
            ),
            "body_paragraphs" => $text_storage->paragraphs("CONTACT_PAGE_TEXT"),
            "placeholder" => array(
                "message" => $text_storage->text("CONTACT_PLACEHOLDER_MESSAGE")
            ),
            "prefill" => array(
                "name" => "",
                "email" => "",
                "phone" => "",
                "message" => "",
                "url" => "", // hidden captcha
                "company" => "company name oy", // hidden captcha
            ),
            "lang" => $text_storage->get_language()
        );
    }
}
