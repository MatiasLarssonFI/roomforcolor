<?php

require_once(dirname(__FILE__) . "/iguestbook_message.class.php");


class GuestbookMessage implements IGuestbookMessage {
    private $_name;
    private $_message;
    
    
    /**
     * Constructor.
     * 
     * @param string $name
     * @param string $message
     */
    public function __construct($name, $message) {
        $this->_name = $name;
        $this->_message = $message;
    }
    
    
    public function get_name() {
        return $this->_name;
    }
    
    
    public function get_message() {
        return $this->_message;
    }
}
