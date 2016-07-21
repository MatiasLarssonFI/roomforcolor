<?php

require_once(dirname(__FILE__) . "/igallery_image.class.php");
require_once(dirname(__FILE__) . "/gallery.class.php");
require_once(dirname(__FILE__) . "/gallery_image.class.php");
require_once(dirname(__FILE__) . "/ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/dbif.class.php");


class GalleryFactory {
    private static $_inst;
    
    
    /**
     * Returns the GalleryFactory object.
     * 
     * @return GalleryFactory
     */
    public static function get() {
        if (self::$_inst === null) {
            self::$_inst = new self();
        }
        
        return self::$_inst;
    }
    
    
    /**
     * Returns the gallery images.
     * 
     * @param int $id Gallery ID
     * @return IGalleryImage[]
     */
    public function get_gallery_images($id) {
        $ret = array();

        DBIF::get()->get_gallery_images(function(array $row) use (&$ret) {
            $ret[] = new GalleryImage(
                $row["id"],
                $row["original_uri"],
                $row["thumb_uri"]
            );
        }, $id);
        
        
        return $ret;
    }
    
    
    /**
     * Returns the front page images.
     * 
     * @return IGalleryImage[]
     */
    public function get_front_page_images() {
        $ret = array();

        DBIF::get()->get_front_page_images(function(array $row) use (&$ret) {
            $ret[] = new GalleryImage(
                $row["id"],
                $row["original_uri"],
                $row["thumb_uri"]
            );
        });
        
        
        return $ret;
    }
    
    
    /**
     * Returns the gallery.
     * 
     * @param int $id The gallery ID
     * @return IGallery[]
     */
    public function get_gallery($id) {
        $lang = UITextStorage::get()->get_language();
        $row = DBIF::get()->get_gallery($id, $lang);
        return new Gallery((int)$row["id"], $row["name"]);
    }
    
    
    /**
     * Returns the default gallery for given action.
     * 
     * @param string $action
     * @return IGallery[]
     */
    public function get_default_gallery($action) {
        $lang = UITextStorage::get()->get_language();
        $row = DBIF::get()->get_first_gallery($action, $lang);
        return new Gallery((int)$row["id"], $row["name"]);
    }
}
