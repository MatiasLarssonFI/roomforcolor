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
     * @return IGuestbookMessage
     */
    public function make_from_values($name, $message) {
        return new GuestbookMessage($name, $message);
    }
    
    
    /**
     * Returns the saved messages ordered by time from latest to oldest.
     * 
     * @param int $offset Offset of first message
     * @return IGuestbookMessage[]
     */
    public function get_messages($offset) {
        $ret = array();

        DBIF::get()->get_guestbook_messages(function(array $row) use (&$ret) {
            $ret[] = new GuestbookMessage(
                $row["name"],
                $row["message"],
                $row["time_created"]
            );
        }, $offset);
        
        
        return $ret;
    }
    
    
    /**
     * Returns the number of stored messages.
     * 
     * @return int
     */
    public function count_messages() {
        return DBIF::get()->row_count("guestbook");
    }
}
