<?php

interface IService {
    /**
     * Returns the title.
     * 
     * @return string
     */
    public function get_title();
    
    
     /**
     * Returns the text paragraphs.
     * 
     * @return string[]
     */
    public function get_text_paragraphs();
    
    
    /**
     * Returns the image URI.
     * 
     * @return string
     */
    public function get_img_uri();
    
    
    /**
     * Returns the gallery image ID.
     * 
     * @return string
     */
    public function get_gallery_img_id();
}
