<?php

require_once(dirname(__FILE__) . "/iguestbook_message.class.php");


class GuestbookMessage implements IGuestbookMessage {
    private $_name;
    private $_message;
    private $_time_created;
    
    
    /**
     * Constructor.
     * 
     * @param string $name
     * @param string $message
     * @param string $time_created Y-m-d H:i:s
     */
    public function __construct($name, $message, $time_created = null) {
        $this->_name = $name;
        $this->_message = $message;
        $this->_time_created = $time_created;
    }
    
    
    public function get_name() {
        return $this->_name;
    }
    
    
    public function get_message() {
        return $this->_message;
    }
    
    
    public function get_time_created() {
        return $this->_time_created;
    }
}
