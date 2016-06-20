<?php

interface IVideo {
    /**
     * Returns the thumbnail URL.
     * 
     * @return string
     */
    public function get_thumb_url();
    
    
     /**
     * Returns the video files.
     * 
     * @return VideoFile[]
     */
    public function get_video_files();
    
    
    /**
     * Returns the video ID.
     * 
     * @return int
     */
    public function get_id();
    
    
    /**
     * Returns the video name.
     * 
     * @return string
     */
    public function get_name();
    
    
    /**
     * Returns the URL-friendly video name.
     * 
     * The return value must not be
     * URL-encoded, just URL-friendly.
     * 
     * @return string
     */
    public function get_url_name();
    
    
    /**
     * Returns the video description.
     * 
     * @return string
     */
    public function get_description();
}
