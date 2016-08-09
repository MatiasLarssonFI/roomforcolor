<?php

interface IGalleryImage {
    /**
     * Returns the thumbnail URL.
     * 
     * @return string
     */
    public function get_thumb_url();
    
    
     /**
     * Returns the original URL.
     * 
     * @return string
     */
    public function get_original_url();
    
    
    /**
     * Returns the image ID.
     * 
     * @return int
     */
    public function get_id();
}
