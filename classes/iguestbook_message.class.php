<?php

interface IGuestbookMessage {
    public function get_name();
    public function get_message();
    public function get_time_created();
}
