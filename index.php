<?php

require_once(dirname(__FILE__) . "/classes/views/view_factory.class.php");
require_once(dirname(__FILE__) . "/classes/ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/classes/site_config_factory.class.php");
require_once(dirname(__FILE__) . "/classes/views/exception_view.class.php");
require_once(dirname(__FILE__) . "/classes/nav_link_factory.class.php");
require_once(dirname(__FILE__) . "/classes/gallery_sub_nav_link_factory.class.php");
require_once(dirname(__FILE__) . "/classes/dbif.class.php");

function main() { // C! :D
    try {
        // initialize the request params
        $request = array_merge(
                array(
                    "action" => "", 
                    "params" => "",
                    "language" => SiteConfigFactory::get()->get_site_config()->default_language()
                ),
            $_GET
        );

        $request["params"] = array_filter(explode("/", $request["params"]), "strlen"); // :<
        
        // initialize the actions
        $actions = ["", "about"];
        $gallery_actions = [];
        foreach (DBIF::get()->get_gallery_actions() as $action) {
            $actions[] = $action; // the NavLinkFactory wants these
            $gallery_actions[] = $action; // the ViewFactory wants these
        }
        $actions[] = "contact";
        $actions[] = "guestbook";
        
        // initialize the nav link factory
        $sub_nlfs = array(
            new GallerySubNavLinkFactory()
        );
        
        $nlf = new NavLinkFactory($request["action"], $request["params"], $actions, $request["language"], $sub_nlfs);

        try { // a nested try-block for a fancy exception view, since we can do that now after the inits
            UITextStorage::get()->try_change_language($request["language"]);
            Views\ViewFactory::get()->get_view($request["action"], $request["params"], $request["language"], $nlf, $gallery_actions)->render();
        } catch (Exception $e) {
            $is_ajax = (isset($_REQUEST["is_ajax"]) ? $_REQUEST["is_ajax"] : false);
            $view = new Views\ExceptionView(array("exception" => $e, "is_ajax" => $is_ajax), $nlf);
            $view->render();
        }
    } catch (Exception $e) {
        if (!headers_sent()) {
            header("HTTP/1.1 500 Internal Server Error");
        }
        echo "Very fatal error. :( The following is all I have, maybe accept it as my apology: " . base64_encode($e->getMessage());
    }
}

main();
