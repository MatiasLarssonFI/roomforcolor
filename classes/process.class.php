<?php

require_once(__DIR__ . "/iprocess.class.php");


class Process implements IProcess {
    private $_title;
    private $_intro;
    private $_id;
    
    
    /**
     * @param int $id
     * @param srting $title
     * @param srting $intro
     */
    public function __construct($id, $title, $intro) {
        $this->_title = $title;
        $this->_id = $id;
        $this->_intro = $intro;
    }
    
    
    public function get_title() {
        return $this->_title;
    }
    
    
    public function get_intro() {
        return $this->_intro;
    }
    
    
    public function get_id() {
        return $this->_id;
    }
}
