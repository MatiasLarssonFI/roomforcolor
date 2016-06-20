<?php

require_once(dirname(__FILE__) . "/ivideo.class.php");


class VideosPageVideo implements IVideo {
    private $_id;
    private $_thumb_url;
    private $_name;
    private $_description;
    private $_video_files;
    
    
    /**
     * Constructor.
     * 
     * @param int $id
     * @param string $video_url
     * @param string $thumb_url
     * @param string $name
     * @param string $description
     * @param string $subtype e. g. "mp4"
     * @param VideoFile[] $video_files
     */
    public function __construct($id, $thumb_url, $name, $description, array $video_files) {
        $this->_id = $id;
        $this->_thumb_url = $thumb_url;
        $this->_name = $name;
        $this->_description = $description;
        $this->_video_files = $video_files;
    }
    
    
    
    public function get_thumb_url() {
        return $this->_thumb_url;
    }
    
    
    public function get_video_files() {
        return $this->_video_files;
    }
    
    
    public function get_id() {
        return $this->_id;
    }
    
    
    public function get_name() {
        return $this->_name;
    }
    
    
    public function get_url_name() {
        // spaces to dashes
        $name_str = str_replace(" ", "-", strtolower($this->_name));
        // ä, ö and å to a, o and a
        $name_str = str_replace(array("ä", "ö", "å"), array("a", "o", "a"), $name_str);
        // whitelist: a-z, 0-9, ä, ö and dash
        return preg_replace("/[^a-z0-9\-]/", "", $name_str);
    }
    
    
    public function get_description() {
        return $this->_description;
    }
    
    public function get_mime_subtype() {
        return $this->_subtype;
    }
}
