<?php

namespace Views;

require_once(dirname(__FILE__) . "/abstract_view.class.php");
require_once(dirname(__FILE__) . "/../site_config_factory.class.php");
require_once(dirname(__FILE__) . "/../ui_text_storage.class.php");


class AboutView extends AbstractView {
    protected function get_required_params() {
        return array();
    }
    
    
    protected function get_template_name() {
        return "about_me.html";
    }
    
    
    protected function get_view_data(array $params) {
        $text_storage = \UITextStorage::get();
        return array(
            "strings" => array(
                "page_title" => $text_storage->text("ABOUT_PAGE_TITLE"),
            ),
            "body_paragraphs" => $text_storage->paragraphs("ABOUT_PAGE_TEXT"),
            "lang" => $text_storage->get_language()
        );
    }
}
