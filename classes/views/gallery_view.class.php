<?php

namespace Views;

require_once(dirname(__FILE__) . "/abstract_view.class.php");
require_once(dirname(__FILE__) . "/../ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/../gallery_factory.class.php");

class GalleryView extends AbstractView {
    protected function get_required_params() {
        return array("gallery_id");
    }
    
    
    protected function get_template_name() {
        return "gallery.html";
    }
    
    
    protected function get_view_data(array $params) {
        $text_storage = \UITextStorage::get();
        $factory = \GalleryFactory::get();
        $gallery = $factory->get_gallery((int)$params["gallery_id"]);
        return array(
            "strings" => array(
                "page_title" => $gallery->get_name()
            ),
            "images" => $factory->get_gallery_images($gallery->get_id())
        );
    }
}
