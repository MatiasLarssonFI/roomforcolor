<?php

interface IEmailMessage {
    /**
     * Returns the message body.
     */
    public function get_message();
    
    
    /**
     * Returns the message subject.
     */
    public function get_subject();
    
    
    /**
     * Returns the message sender name.
     */
    public function get_name();
    
    
    /**
     * Returns the message sender email address.
     */
    public function get_email();
}
