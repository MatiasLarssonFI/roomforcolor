<?php

class Gallery {
    private $_name;
    private $_id;
    
    
    /**
     * @param int $id
     * @param srting $name
     */
    public function __construct($id, $name) {
        $this->_name = $name;
        $this->_id = $id;
    }
    
    
    public function get_name() {
        return $this->_name;
    }
    
    
    public function get_id() {
        return $this->_id;
    }
}
