<?php

namespace Views;

require_once(dirname(__FILE__) . "/abstract_view.class.php");
require_once(dirname(__FILE__) . "/../ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/../process_factory.class.php");

class ProcessView extends AbstractView {
    protected function get_required_params() {
        return array("process_id", "action");
    }
    
    
    protected function get_template_name() {
        return "process.html";
    }
    
    
    protected function get_view_data(array $params) {
        $factory = \ProcessFactory::get();
        $text_storage = \UITextStorage::get();
        $process_id = (int)$params["process_id"];
        if ($process_id > 0) { // process is selected by user
            $process = $factory->get_process($process_id);
        } else {
            // this happens when the user clicks on the process action
            // nav (process not selected, only the action is)
            $process = $factory->get_default_process($params["action"]);
        }
        return array(
            "strings" => array(
                "page_title" => $process->get_title(),
                "intro" => $process->get_intro()
            ),
            "texts" => $factory->get_process_texts($process->get_id()),
        );
    }
}
