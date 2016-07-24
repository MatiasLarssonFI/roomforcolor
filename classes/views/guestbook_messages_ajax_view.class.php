<?php

namespace Views;

require_once(dirname(__FILE__) . "/abstract_view.class.php");
require_once(dirname(__FILE__) . "/../guestbook_message_factory.class.php");


class GuestbookMessagesAjaxView extends AbstractView {
    protected function get_required_params() {
        return array("offset");
    }
    
    
    protected function get_template_name() {
        return "guestbook_messages.html";
    }
    
    
    protected function get_view_data(array $params) {
        return array(
            "messages" => \GuestbookMessageFactory::get()->get_messages($params["offset"])
        );
    }
}
