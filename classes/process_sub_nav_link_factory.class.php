<?php

require_once(dirname(__FILE__) . "/nav_link.class.php");
require_once(dirname(__FILE__) . "/dbif.class.php");
require_once(dirname(__FILE__) . "/isub_nav_link_factory.class.php");
require_once(dirname(__FILE__) . "/ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/process_factory.class.php");


class ProcessSubNavLinkFactory implements ISubNavLinkFactory {
    public function get_sub_nav_links($action, array $params) {
        $current_process_id = $this->get_current_process_id($action, $params);
        $lang = UITextStorage::get()->get_language();
        $ret = [];
        
        DBIF::get()->get_action_processes(function(array $row) use (&$ret, $action, $current_process_id) {
            $id = (int)$row["id"];
            $name = $row["title"];
            $ret[] = new NavLink("{$action}/{$id}/{$this->make_url_process_name($name)}", $name, $current_process_id === $id);
        }, $action, $lang);

        return $ret;
    }
    
    
    private function get_current_process_id($action, array $params) {
        if (!empty($params)) { // process is selected
            return (int)$params[0];
        }
        
        try {
            // process is not selected by user, so the current one is the default one
            return \ProcessFactory::get()->get_default_process($action)->get_id();
        } catch (InvalidArgumentException $e) {
            return null; // there were no processes for $action
        }
    }
    
    
    private function make_url_process_name($name) {
        // spaces to dashes
        $name_str = str_replace(" ", "-", strtolower($name));
        // ä, ö å and ü to a, o, a and u
        $name_str = str_replace(array("ä", "ö", "å", "ü"), array("a", "o", "a", "u"), $name_str);
        // whitelist: a-z, 0-9 and dash
        return preg_replace("/[^a-z0-9\-]/", "", $name_str);
    }
}
