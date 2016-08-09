<?php

namespace Views;

require_once(dirname(__FILE__) . "/abstract_view.class.php");
require_once(dirname(__FILE__) . "/../ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/../gallery_factory.class.php");

class GalleryView extends AbstractView {
    protected function get_required_params() {
        return array("gallery_id", "action");
    }
    
    
    protected function get_template_name() {
        return "gallery.html";
    }
    
    
    protected function get_view_data(array $params) {
        $factory = \GalleryFactory::get();
        $text_storage = \UITextStorage::get();
        $gallery_id = (int)$params["gallery_id"];
        if ($gallery_id > 0) { // gallery is selected by user
            $gallery = $factory->get_gallery($gallery_id);
        } else {
            // this happens when the user clicks on the gallery action
            // nav (gallery not selected, only the action is)
            $gallery = $factory->get_default_gallery($params["action"]);
        }
        $images = $factory->get_gallery_images($gallery->get_id());
        return array(
            "strings" => array(
                "page_title" => $gallery->get_name(),
                "next" => $text_storage->text("GALLERY_NEXT"),
                "previous" => $text_storage->text("GALLERY_PREVIOUS"),
            ),
            "images" => $images,
            "default_stage_image_url" => $this->get_stage_image_url($images)
        );
    }
    
    
    
    private function get_stage_image_url(array $images) {
        return (isset($images[0]) ? $images[0]->get_original_url() : "");
    }
}
