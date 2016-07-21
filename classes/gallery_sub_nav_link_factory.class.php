<?php

require_once(dirname(__FILE__) . "/nav_link.class.php");
require_once(dirname(__FILE__) . "/dbif.class.php");
require_once(dirname(__FILE__) . "/isub_nav_link_factory.class.php");
require_once(dirname(__FILE__) . "/ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/gallery_factory.class.php");


class GallerySubNavLinkFactory implements ISubNavLinkFactory {
    public function get_sub_nav_links($action, array $params) {
        $current_gallery_id = $this->get_current_gallery_id($action, $params);
        $lang = UITextStorage::get()->get_language();
        $ret = [];
        
        if ($action !== "") { // exclude front page gallery
            DBIF::get()->get_action_galleries(function(array $row) use (&$ret, $action, $current_gallery_id) {
                $id = (int)$row["id"];
                $name = $row["name"];
                $ret[] = new NavLink("{$action}/{$id}/{$this->make_url_gallery_name($name)}", $name, $current_gallery_id === $id);
            }, $action, $lang);
        }
        
        return $ret;
    }
    
    
    private function get_current_gallery_id($action, array $params) {
        if (!empty($params)) { // gallery is selected
            return (int)$params[0];
        }
        
        try {
            // gallery is not selected by user, so the current one is the default one
            return \GalleryFactory::get()->get_default_gallery($action)->get_id();
        } catch (InvalidArgumentException $e) {
            return null; // there were no galleries for $action
        }
    }
    
    
    private function make_url_gallery_name($name) {
        // spaces to dashes
        $name_str = str_replace(" ", "-", strtolower($name));
        // ä, ö å and ü to a, o, a and u
        $name_str = str_replace(array("ä", "ö", "å", "ü"), array("a", "o", "a", "u"), $name_str);
        // whitelist: a-z, 0-9 and dash
        return preg_replace("/[^a-z0-9\-]/", "", $name_str);
    }
}
