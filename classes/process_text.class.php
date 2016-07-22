<?php

require_once(__DIR__ . "/iprocess_text.class.php");


class ProcessText implements IProcessText {
    private $_title;
    private $_content;
    private $_id;
    
    
    /**
     * @param int $id
     * @param srting $title
     * @param srting $content
     */
    public function __construct($id, $title, $content) {
        $this->_title = $title;
        $this->_id = $id;
        $this->_content = $content;
    }
    
    
    public function get_title() {
        return $this->_title;
    }
    
    
    public function get_content() {
        return $this->_content;
    }
    
    
    public function get_id() {
        return $this->_id;
    }
}
