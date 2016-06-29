<?php

require_once(dirname(__FILE__) . "/icontact_message.class.php");
require_once(dirname(__FILE__) . "/iemail_message.class.php");


class ContactMessage implements IContactMessage, IEmailMessage {
    /**
     * Constructor.
     * 
     * @param string $name
     * @param string $email
     * @param string $phone
     * @param string $message
     */
    public function __construct($name, $email, $phone, $message) {
        $this->_name = $name;
        $this->_email = $email;
        $this->_phone = $phone;
        $this->_message = $message;
    }
    
    
    public function get_name() {
        return $this->_name;
    }
    
    
    public function get_email() {
        return $this->_email;
    }
    
    
    public function get_subject() {
        return $this->_name; // name as subject
    }
    
    
    public function get_phone() {
        return $this->_phone;
    }
    
    
    public function get_message() {
        return $this->_message;
    }
}
