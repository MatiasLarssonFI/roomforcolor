<?php

require_once(dirname(__FILE__) . "/icontact_message.class.php");
require_once(dirname(__FILE__) . "/iemail_message.class.php");


class ContactMessage implements IContactMessage, IEmailMessage {
    /**
     * Constructor.
     * 
     * @param string $name
     * @param string $email
     * @param string $subject
     * @param string $message
     */
    public function __construct($name, $email, $subject, $message) {
        $this->_name = $name;
        $this->_email = $email;
        $this->_subject = $subject;
        $this->_message = $message;
    }
    
    
    public function get_name() {
        return $this->_name;
    }
    
    
    public function get_email() {
        return $this->_email;
    }
    
    
    public function get_subject() {
        return $this->_subject;
    }
    
    
    public function get_message() {
        return $this->_message;
    }
}
