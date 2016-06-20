<?php

require_once(dirname(__FILE__) . "/service.class.php");
require_once(dirname(__FILE__) . "/ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/dbif.class.php");


class ServiceFactory {
    private static $_inst;
    
    
    /**
     * Returns the ServiceFactory object.
     * 
     * @return ServiceFactory
     */
    public static function get() {
        if (self::$_inst === null) {
            self::$_inst = new self();
        }
        
        return self::$_inst;
    }
    
    
    /**
     * Returns the services.
     * 
     * @return IService[]
     */
    public function get_services() {
        $ret = array();
        
        $lang = UITextStorage::get()->get_language();
        
        DBIF::get()->get_services(function(array $row) use (&$ret, $lang) {
            $title_obj = json_decode($row["title"]);
            $text_obj = json_decode($row["text"]);
            
            $ret[] = new Service(
                $title_obj->$lang,
                $text_obj->$lang,
                $row["img_uri"],
                $row["gallery_img_id"]
            );
        });
        
        return $ret;
    }
}
