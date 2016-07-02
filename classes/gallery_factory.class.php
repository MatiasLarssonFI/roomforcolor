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
}
