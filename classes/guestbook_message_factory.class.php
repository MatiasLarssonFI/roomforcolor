<?php

require_once(dirname(__FILE__) . "/guestbook_message.class.php");


class GuestbookMessageFactory {
    private static $_inst;
    
    
    /**
     * Returns the GuestbookMessageFactory object.
     * 
     * @return GuestbookMessageFactory
     */
    public static function get() {
        if (self::$_inst === null) {
            self::$_inst = new self();
        }
        
        return self::$_inst;
    }
    
    
    /**
     * Creates an IGuestbookMessage object.
     * 
     * @param string $name
     * @param string $message
     * 
     * @return IGuestbookMessage[]
     */
    public function make_from_values($name, $message) {
        return new GuestbookMessage($name, $message);
    }
}
