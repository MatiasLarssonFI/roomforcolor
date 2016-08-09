<?php

require_once(dirname(__FILE__) . "/process.class.php");
require_once(dirname(__FILE__) . "/process_text.class.php");
require_once(dirname(__FILE__) . "/ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/dbif.class.php");


class ProcessFactory {
    private static $_inst;
    
    
    /**
     * Returns the ProcessFactory object.
     * 
     * @return ProcessFactory
     */
    public static function get() {
        if (self::$_inst === null) {
            self::$_inst = new self();
        }
        
        return self::$_inst;
    }
    
    /**
     * Returns the process.
     * 
     * @param int $id The process ID
     * @return IProcess[]
     */
    public function get_process($id) {
        $lang = UITextStorage::get()->get_language();
        $row = DBIF::get()->get_process($id, $lang);
        return new Process((int)$row["id"], $row["title"], $row["intro"]);
    }
    
    
    /**
     * Returns the default process for given action.
     * 
     * @param string $action
     * @return IProcess[]
     */
    public function get_default_process($action) {
        $lang = UITextStorage::get()->get_language();
        $row = DBIF::get()->get_first_process($action, $lang);
        return new Process((int)$row["id"], $row["title"], $row["intro"]);
    }
    
    
    /**
     * Returns the process texts.
     * 
     * @param int $id Process ID
     * @return IProcessText[]
     */
    public function get_process_texts($id) {
        $ret = array();
        $lang = UITextStorage::get()->get_language();

        DBIF::get()->get_process_texts(function(array $row) use (&$ret) {
            $ret[] = new ProcessText(
                $row["id"],
                $row["title"],
                $row["content"]
            );
        }, $id, $lang);
        
        
        return $ret;
    }
}
