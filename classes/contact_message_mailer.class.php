<?php

require_once(__DIR__ . "/iemail_message.class.php");
require_once(__DIR__ . "/imailer.class.php");
require_once(__DIR__ . "/dbif.class.php");
require_once(__DIR__ . "/site_config_factory.class.php");

require_once(__DIR__ . "/../lib/PHPMailer-5.2.14/PHPMailerAutoload.php");
require_once(__DIR__ . "/../lib_autoload.php");

class ContactMessageMailer implements IMailer {
    public function send(IEmailMessage $contactmsg) {
        $mail = new PHPMailer;
        
        $loader = new \Twig\Loader\FilesystemLoader(__DIR__ . "/../templates");
        $twig = new \Twig\Environment($loader, [
            "cache" => __DIR__ . "/../../twig_compilation_cache",
        ]);
        
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

        $html_tmpl = $twig->load("contact_email.html");
        $text_tmpl = $twig->load("contact_email.txt");
        
        $mail->addReplyTo($contactmsg->get_email(), $contactmsg->get_name());
        $mail->FromName ='Room for color Contact Form';
        $mail->From = "contactform@{$host}";
        $mail->addAddress($db->get_contact_email());     // recipient
        $mail->isHTML(true);                             // email format to HTML
    
        $mail->CharSet = 'UTF-8';
        $mail->Subject = "RFC-CONTACT: {$contactmsg->get_subject()}";
        $mail->Body    = $html_tmpl->render([ "message" => $contactmsg ]);
        $mail->AltBody = $text_tmpl->render([ "message" => $contactmsg ]);

        if(!$mail->send()) {
            file_put_contents(__DIR__ . "/../contact_email_error_log", "{$mail->ErrorInfo}\n", FILE_APPEND);
            throw new \RuntimeException("Failed to send contact mail. Mail error: {$mail->ErrorInfo}");
        }
    }
}
