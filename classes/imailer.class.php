<?php

require_once(dirname(__FILE__) . "/iemail_message.class.php");


interface IMailer {
    public function send(IEmailMessage $email);
}
