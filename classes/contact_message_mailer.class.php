<?php

require_once(__DIR__ . "/iemail_message.class.php");
require_once(__DIR__ . "/imailer.class.php");
require_once(__DIR__ . "/dbif.class.php");
require_once(__DIR__ . "/site_config_factory.class.php");

require_once(__DIR__ . "/../lib_autoload.php");
require_once(__DIR__ . "/../lib/PHPMailer-6.1.7/src/Exception.php");
require_once(__DIR__ . "/../lib/PHPMailer-6.1.7/src/PHPMailer.php");
require_once(__DIR__ . "/../lib/PHPMailer-6.1.7/src/SMTP.php");

use PHPMailer\PHPMailer\PHPMailer;


class ContactMessageMailer implements IMailer {
    private $_mail;
    
    public function send(IEmailMessage $contactmsg) {
        try {
            $this->_send($contactmsg);
        } catch (\Exception $e) {
            $dt = date("Y-m-d H:i:s");
            file_put_contents(__DIR__ . "/../contact_email_error_log", "[{$dt}] {$e->getMessage()} - Mail error: {$this->_mail->ErrorInfo}" . PHP_EOL, FILE_APPEND);
            throw $e;
        }
    }
    
    private function _send(IEmailMessage $contactmsg) {
        $mail = new PHPMailer;
        $this->_mail = $mail;
        
        $sc = \SiteConfigFactory::get()->get_site_config();
        
        $loader = new \Twig\Loader\FilesystemLoader(__DIR__ . "/../templates");
        $twig = new \Twig\Environment($loader, [
            "cache" => __DIR__ . "/../../twig_compilation_cache",
        ]);
        
        $host = $sc->host();
        $db = \DBIF::get();

        $mail_user = $db->get_mail_user();
        
        if (strlen($mail_user) > 0) { // username can also just indicate SMTP
            $mail->isSMTP();
            $mail->Host = $db->get_mail_server();
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail_password = $db->get_mail_password();
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
        $mail->From = "contactform@roomforcolor.fi";
        $mail->addAddress($db->get_contact_email());     // recipient
        $mail->isHTML(true);                             // email format to HTML
    
        $mail->CharSet = PHPMailer::CHARSET_UTF8;
        $mail->Subject = "RFC-CONTACT: {$contactmsg->get_subject()}";
        $mail->Body    = $html_tmpl->render([ "message" => $contactmsg ]);
        $mail->AltBody = $text_tmpl->render([ "message" => $contactmsg ]);

        if(!$mail->send()) {
            throw new \RuntimeException("Failed to send contact form e-mail.");
        }
    }
}
