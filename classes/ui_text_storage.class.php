<?php

require_once(dirname(__FILE__) . "/dbif.class.php");
require_once(dirname(__FILE__) . "/site_config_factory.class.php");


/**
 * Singleton.
 */
class UITextStorage {
    private $_texts;
    private $_current_language;
    
    private static $_inst;
    
    
    /**
     * Returns the UITextStorage object.
     * 
     * @return UITextStorage
     */
    public static function get() {
        if (self::$_inst === null) {
            self::$_inst = new self(\SiteConfigFactory::get()->get_site_config()->default_language());
        }
        
        return self::$_inst;
    }
    
    
    /**
     * Try to change the language and fail quietly.
     * 
     * Failing results in falling back to the default language.
     * 
     * @param string $language ISO-3166, 2 chars
     */
    public function try_change_language($language) {
        if (in_array($language, DBIF::get()->get_language_codes()) &&
            $this->_current_language !== $language) {
            
            $this->load_texts($language);
            $this->_current_language = $language;
        }
    }
    
    
    /**
     * Returns the UI text in current language.
     * 
     * @param string $code The UI text code
     */
    public function text($code) {
        if (array_key_exists($code, $this->_texts)) {
            return $this->_texts[$code];
        }
        
        return "[{$code}]";
    }
    
    
    /**
     * Returns the UI text in current language, as paragraphs.
     * 
     * @param string $code The UI text code
     * @return string[]
     */
    public function paragraphs($code) {
        return $this->make_paragraphs($this->text($code));
    }
    
    
    /**
     * Returns the special text in current language, as paragraphs.
     * 
     * @param string $code The special text code
     * @return [string[], string[], ...]
     */
    public function page_paragraph_groups($code) {
        $ret = array();
        $cb_make_paragraphs = array($this, "make_paragraphs");
        
        DBIF::get()->get_page_texts(function($row) use (&$ret, $cb_make_paragraphs) {
            $ret[] = $cb_make_paragraphs($row["content"]);
        }, $code, $this->_current_language);
        
        return $ret;
    }
    
    
    private function make_paragraphs($text) {
        return explode("\n\n", $text);
    }
    
    
    /**
     * Returns the current language ISO 3166-1 alpha-2 code.
     * 
     * @return string
     */
    public function get_language() {
        return $this->_current_language;
    }
    
    
    private function load_texts($language) {
        $texts = &$this->_texts;
        $texts = [];
        DBIF::get()->get_ui_texts(function(array $row) use(&$texts) {
            $texts[$row["code"]] = $row["content"];
        }, $language);
    }
    
    
    protected function __construct($language) {
        $this->try_change_language($language);
    }
}
