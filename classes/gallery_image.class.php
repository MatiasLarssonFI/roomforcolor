<?php

require_once(dirname(__FILE__) . "/igallery_image.class.php");


class GalleryImage implements IGalleryImage {
    private $_id;
    private $_original_url;
    private $_thumb_url;
    
    
    /**
     * Constructor.
     * 
     * @param int $id
     * @param string $original_url
     * @param string $thumb_url
     * @param string $name
     * @param string $description
     */
    public function __construct($id, $original_url, $thumb_url) {
        $this->_id = $id;
        $this->_original_url = $original_url;
        $this->_thumb_url = $thumb_url;
    }
    
    
    public function get_thumb_url() {
        return $this->_thumb_url;
    }
    
    
    public function get_original_url() {
        return $this->_original_url;
    }
    
    
    public function get_id() {
        return $this->_id;
    }
}
