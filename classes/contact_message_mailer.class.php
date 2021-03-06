<?php

require_once(dirname(__FILE__) . "/iemail_message.class.php");
require_once(dirname(__FILE__) . "/imailer.class.php");
require_once(dirname(__FILE__) . "/dbif.class.php");
require_once(dirname(__FILE__) . "/site_config_factory.class.php");

require_once(dirname(__FILE__) . "/../lib/Twig-1.24.0/Twig-1.24.0/lib/Twig/Autoloader.php");
require_once(dirname(__FILE__) . "/../lib/PHPMailer-5.2.14/PHPMailerAutoload.php");


class ContactMessageMailer implements IMailer {
    public function send(IEmailMessage $contactmsg) {
        $mail = new PHPMailer;
        
        \Twig_Autoloader::register();
        $loader = new \Twig_Loader_Filesystem(dirname(__FILE__) . "/../templates");
        $twig = new \Twig_Environment($loader, array());
        
        $host = \SiteConfigFactory::get()->get_site_config()->host();
        $db = \DBIF::get();

        $mail_user = $db->get_mail_user();
        $mail_password = $db->get_mail_password();
        if (strlen($mail_user) > 0) { // username can also just indicate SMTP, lol
            $mail->isSMTP(); // Set mailer to use SMTP
            $mail->Host = $db->get_mail_server();
            if (strlen($mail_password) > 0) {
                $mail->SMTPAuth = true;
                $mail->Username = $mail_user;
                $mail->Password = $mail_password;
            }
        }
        
        $mail->Port = 587;

        $mail->addReplyTo($contactmsg->get_email(), $contactmsg->get_name());
        $mail->FromName ='Room for color Contact Form';
        $mail->From = "contactform@{$host}";
        $mail->addAddress($db->get_contact_email());     // recipient
        $mail->isHTML(true);                             // email format to HTML
    
        $mail->CharSet = 'UTF-8';
        $mail->Subject = "RFC-CONTACT: {$contactmsg->get_subject()}";
        $mail->Body    = $twig->render("contact_email.html", array("message" => $contactmsg));
        $mail->AltBody = $twig->render("contact_email.txt", array("message" => $contactmsg));

        if(!$mail->send()) {
            file_put_contents(__DIR__ . "/../contact_email_error_log", "{$mail->ErrorInfo}\n", FILE_APPEND);
            throw new \RuntimeException("Failed to send contact mail. Mail error: {$mail->ErrorInfo}");
        }
    }
}
