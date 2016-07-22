<?php

namespace Views;

require_once(dirname(__FILE__) . "/front_page_view.class.php");
require_once(dirname(__FILE__) . "/contact_view.class.php");
require_once(dirname(__FILE__) . "/guestbook_view.class.php");
require_once(dirname(__FILE__) . "/about_view.class.php");
require_once(dirname(__FILE__) . "/gallery_view.class.php");
require_once(dirname(__FILE__) . "/contact_submit_view.class.php");
require_once(dirname(__FILE__) . "/guestbook_submit_view.class.php");
require_once(dirname(__FILE__) . "/process_view.class.php");

require_once(dirname(__FILE__) . "/../site_config_factory.class.php");
require_once(dirname(__FILE__) . "/../dbif.class.php");


/**
 * Singleton.
 */
class ViewFactory {
    private static $_inst;
    
    /**
     * Returns the ViewFactory object.
     * 
     * @return ViewFactory
     */
    public static function get() {
        if (self::$_inst === null) {
            self::$_inst = new self();
        }
        
        return self::$_inst;
    }
    
    
    /**
     * Returns the view to serve given action.
     * 
     * @param string $action The action name
     * @param string[] $params The action parameters
     * @param string $language Current language
     * @param string[] $gallery_actions
     * @param string[] $process_actions
     * @param \NavLinkFactory $nlf
     * @return IView
     */
    public function get_view($action, array $params, $language, \NavLinkFactory $nlf, array $gallery_actions, array $process_actions) {
        if ($action === "") {
            return new FrontPageView(array(), $nlf);
        } else if ($action === "about") {
            return new AboutView(array(), $nlf);
        } else if ($action === "contact") {
            return new ContactView(array(), $nlf);
        } else if ($action === "contact_submit") {
            return new ContactSubmitView($_POST, $nlf);
        } else if ($action === "guestbook") {
            return new GuestbookView(array(), $nlf);
        } else if ($action === "guestbook_submit") {
            return new GuestbookSubmitView($_POST, $nlf);
        } else if (in_array($action, $gallery_actions)) {
            return new GalleryView(
                            [
                                "gallery_id" => $this->optional_element(0, null, $params),
                                "action" => $action
                            ],
                            $nlf
                        );
        } else if (in_array($action, $process_actions)) {
            return new ProcessView(
                            [
                                "process_id" => $this->optional_element(0, null, $params),
                                "action" => $action
                            ],
                            $nlf
                        );
        }
        
        // Bad request: redirect to front page
        
        header("HTTP/1.1 303 See Other");
        header("Location: " . \SiteConfigFactory::get()->get_site_config()->base_uri());
        
        throw new \InvalidArgumentException("No view for action '{$action}'");
    }
    
    
    private function optional_element($key, $default, $storage) {
        return (isset($storage[$key]) ? $storage[$key] : $default);
    }

    
    
    protected function __construct() {}
}
