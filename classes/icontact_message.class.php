<?php

interface IContactMessage {
    public function get_name();
    public function get_email();
    public function get_subject();
    public function get_message();
}
