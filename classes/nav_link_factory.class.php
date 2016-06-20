<?php

require_once(dirname(__FILE__) . "/iwidget.class.php");
require_once(dirname(__FILE__) . "/site_config_factory.class.php");
require_once(dirname(__FILE__) . "/ui_text_storage.class.php");


class NavLinkFactory {
    private $_action;
    private $_all_actions;
    
    
    /**
     * Constructor.
     * 
     * @param string $action Current action
     * @param string $nav_actions Array of all navigation action names
     * @param string $lang
     * @param string $base_uri
     */
    public function __construct($action, array $nav_actions, $lang, $base_uri) {
        $this->_action = $action;
        $this->_all_actions = $nav_actions;
        $this->_lang = $lang;
        $this->_base_uri = $base_uri;
    }
    
    
    public function get_nav_links() {
        $texts = \UITextStorage::get();
        $lang = $this->_lang;
        $current_action = $this->_action;
        
        return array_map(function ($action) use ($texts, $current_action) {
            if ($action !== "") {
                $title = $texts->text("NAV_" . strtoupper($action));
            } else {
                $title = $texts->text("NAV_FRONT_PAGE");
            }
            $css_attr = ($action === $current_action ? "class='active'" : "");
            return new NavLink($action, $title, $action === $current_action);
        }, $this->_all_actions);
    }
    
    
    public function get_lang_links() {
        $action = $this->_action;
        $base_uri = $this->_base_uri;
        $lang = $this->_lang;
        return array_map(function($lang) use ($base_uri, $action) {
            return new LangLink($lang, strtoupper($lang), $action);
        }, array_filter(DBIF::get()->get_language_codes(), function($code) use ($lang) {
            return $code !== $lang;
        }));
    }
}
