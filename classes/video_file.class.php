<?php

class VideoFile {
    private $_mime_subtype;
    private $_video_url;
    
    
    /**
     * Constructor.
     * 
     * @param string $video_url
     * @param string $mime_subtype
     */
    public function __construct($video_url, $mime_subtype) {
        $this->_mime_subtype = $mime_subtype;
        $this->_video_url = $video_url;
    }
    
    
    /**
     * Returns the media subtype (e. g. "mp4").
     * 
     * @return string
     */
    public function get_mime_subtype() {
        return $this->_mime_subtype;
    }
    
    
    /**
     * Returns the video url.
     * 
     * @return string
     */
    public function get_url() {
        return $this->_video_url;
    }
}
