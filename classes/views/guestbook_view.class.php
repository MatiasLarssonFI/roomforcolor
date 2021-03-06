<?php

namespace Views;

require_once(dirname(__FILE__) . "/abstract_view.class.php");
require_once(dirname(__FILE__) . "/../ui_text_storage.class.php");


class GuestbookView extends AbstractView {
    protected function get_required_params() {
        return array();
    }
    
    
    protected function get_template_name() {
        return "guestbook.html";
    }
    
    
    protected function get_view_data(array $params) {
        $text_storage = \UITextStorage::get();
        return array(
            "strings" => array(
                "page_title" => $text_storage->text("GUESTBOOK_TITLE"),
                "field_name" => $text_storage->text("GUESTBOOK_FIELD_NAME"),
                "field_message" => $text_storage->text("GUESTBOOK_FIELD_MESSAGE"),
                "show_form" => $text_storage->text("GUESTBOOK_SHOW_FORM"),
                "submit" => $text_storage->text("GUESTBOOK_SUBMIT"),
                "load_messages" => $text_storage->text("GUESTBOOK_LOAD_MESSAGES"),
                "no_more_messages" => $text_storage->text("GUESTBOOK_NO_MORE_MESSAGES"),
                "recommendations" => $text_storage->text("GUESTBOOK_LIST_TITLE"),
            ),
            "body_paragraphs" => $text_storage->paragraphs("GUESTBOOK_PAGE_TEXT"),
            "placeholder" => array(
                "message" => $text_storage->text("GUESTBOOK_PLACEHOLDER_MESSAGE")
            ),
            "has_recommendations" => (bool)\DBIF::get()->row_count("guestbook"),
            "prefill" => array(
                "name" => "",
                "message" => "",
                "url" => "", // hidden captcha
            )
        );
    }
}
