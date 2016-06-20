<?php

require_once(dirname(__FILE__) . "/iservice.class.php");


class Service implements IService {
    private $_title;
    private $_text;
    private $_img_uri;
    private $_description;
    
    
    /**
     * Constructor.
     * 
     * @param string $title
     * @param string $text
     * @param string $img_uri
     * @param int $gallery_img_id
     */
    public function __construct($title, $text, $img_uri, $gallery_img_id) {
        $this->_title = $title;
        $this->_text = $text;
        $this->_img_uri = $img_uri;
        $this->_gallery_img_id = $gallery_img_id;
    }
    
    
    
    public function get_text_paragraphs() {
        return explode(PHP_EOL, $this->_text);
    }
    
    
    public function get_title() {
        return $this->_title;
    }
    
    
    public function get_img_uri() {
        return $this->_img_uri;
    }
    
    
    public function get_gallery_img_id() {
        return $this->_gallery_img_id;
    }
}
