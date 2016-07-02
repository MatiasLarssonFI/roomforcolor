<?php

require_once(dirname(__FILE__) . "/icontact_message.class.php");


/**
 * Singleton.
 * 
 * The database interface.
 */
class DBIF {
    private $_pdo;
    
    private static $_inst = null;
    
    
    /**
     * Returns the DBIF object.
     * 
     * @return DBIF
     */
    public static function get() {
        if (self::$_inst === null) {
            self::$_inst = new self();
        }
        
        return self::$_inst;
    }
    
    
    /**
     * Get the UI texts.
     * 
     * Calls cb_store_row on each row.
     */
    public function get_ui_texts($language, $cb_store_row) {
        $stm = $this->_pdo->prepare("SELECT code, content FROM ui_text where language = :lang");
        $stm->bindParam(":lang", $language, PDO::PARAM_STR);
        $stm->execute();

        while ($row = $stm->fetch()) {
            $cb_store_row($row);
        }
    }
    
    
    /**
     * Returns ISO-3166 -codes of the supported languages.
     * 
     * @return string[]
     */
    public function get_language_codes() {
        $ret = array();
        
        $stm = $this->_pdo->prepare("SELECT DISTINCT language FROM ui_text");
        $stm->execute();

        while ($row = $stm->fetch()) {
            $ret[] = $row["language"];
        }
        
        return $ret;
    }
    
    
    /**
     * Get the gallery.
     * 
     * Calls cb_store_row on each row.
     */
    public function get_gallery($id, $language) {
        $stm = $this->_pdo->prepare(
                    "SELECT gallery.id, gn.content as name
                    from gallery
                    inner join gallery_name gn
                        on gn.gallery_id = gallery.id
                        and gn.language = :lang
                    where gallery.id = :id
                    ");
        $stm->bindParam(":id", $id, PDO::PARAM_INT);
        $stm->bindParam(":lang", $language, PDO::PARAM_STR);
        $stm->execute();
        if ($stm->rowCount() > 0) {
            return $stm->fetch();
        }
        
        throw new InvalidArgumentException("No gallery for id '{$id}' and lang '{$language}'");
    }
    
    
    /**
     * Get the gallery images.
     * 
     * Calls cb_store_row on each row
     * 
     * @param int $gallery_id
     */
    public function get_gallery_images($cb_store_row, $gallery_id) {
        $stm = $this->_pdo->prepare(
                            "SELECT image.thumb_uri, image.original_uri, image.id
                            FROM gallery
                            inner join gallery_image gi on gi.gallery_id = :g_id
                            inner join image on gi.image_id = image.id
                            where is_published");
        $stm->bindParam(":g_id", $gallery_id, PDO::PARAM_INT);
        $stm->execute();
        
        while ($row = $stm->fetch()) {
            $cb_store_row($row);
        }
    }
    
    
    
    /**
     * Get the front page images.
     * 
     * Calls cb_store_row on each row.
     */
    public function get_front_page_images($cb_store_row) {
        $stm = $this->_pdo->prepare(
                            "SELECT image.thumb_uri, image.id
                            FROM gallery g
                            inner join gallery_image gi on gi.gallery_id = g.id
                            inner join image on image.id = gi.image_id
                            
                            WHERE g.action = ''");
        $stm->execute();
        
        while ($row = $stm->fetch()) {
            $cb_store_row($row);
        }
    }
    
    
    /**
     * Get the galleries for an action.
     * 
     * Calls cb_store_row on each row.
     * 
     * @param callable $cb_store_row
     * @param string $action
     * @param string $lang
     */
    public function get_action_galleries($cb_store_row, $action, $lang) {
        $stm = $this->_pdo->prepare(
                            "SELECT g.id, gn.content as name
                            FROM gallery g
                            inner join gallery_name gn
                                on gn.gallery_id = g.id
                                and gn.language = :lang
                            WHERE g.action = :action");
        $stm->bindParam(":action", $action, PDO::PARAM_STR);
        $stm->bindParam(":lang", $lang, PDO::PARAM_STR);
        $stm->execute();
        
        while ($row = $stm->fetch()) {
            $cb_store_row($row);
        }
    }
    
    
    public function get_gallery_actions() {
        $ret = [];
        
        $stm = $this->_pdo->prepare("SELECT distinct action from gallery");
        $stm->execute();
        
        while ($row = $stm->fetch()) {
            $ret[] = $row["action"];
        }
        
        return $ret;
    }
    
    
    /**
     * Get the videos page videos.
     * 
     * Calls cb_store_row on each row.
     */
    public function get_videos_page_videos_list($cb_store_row) {
        $stm = $this->_pdo->prepare("SELECT thumb_uri, name, description, id FROM videos_page_video where is_published");
        $stm->execute();
        
        while ($row = $stm->fetch()) {
            $cb_store_row($row);
        }
    }
    
    
    /**
     * Get one videos page video.
     * 
     * Calls cb_store_row on each row.
     * 
     * @param int $id
     */
    public function get_videos_page_video($id, $cb_store_row) {
        $stm = $this->_pdo->prepare(
                            "SELECT
                                thumb_uri,
                                name,
                                description,
                                vf.video_url as video_url,
                                vf.mime_subtype as mime_subtype,
                                v.id
                             FROM videos_page_video v
                             inner join video_file vf on vf.videos_page_video_id = v.id
                             where v.id = :id");
        $stm->bindParam(":id", $id, PDO::PARAM_INT);
        $stm->execute();
        while ($row = $stm->fetch()) {
            $cb_store_row($row);
        }
    }
    
    
    
    /**
     * Returns URI of the CSS file of colors.
     * 
     * @return string
     */
    public function get_color_css_uri() {
        $stm = $this->_pdo->prepare("SELECT `value` from config where `key` = 'color_css_uri'");
        $stm->execute();
        return $stm->fetchColumn();
    }
    
    
    /**
     * Returns URI of the footer image.
     * 
     * @return string
     */
    public function get_footer_img_uri() {
        $stm = $this->_pdo->prepare("SELECT `value` from config where `key` = 'footer_img_uri'");
        $stm->execute();
        return $stm->fetchColumn();
    }
    
    
    /**
     * Returns URI of the header image.
     * 
     * @return string
     */
    public function get_header_img_uri() {
        $stm = $this->_pdo->prepare("SELECT `value` from config where `key` = 'header_img_uri'");
        $stm->execute();
        return $stm->fetchColumn();
    }
    
    
    /**
     * Returns the contact form email recipient.
     * 
     * @return string
     */
    public function get_contact_email() {
        $stm = $this->_pdo->prepare("SELECT `value` from config where `key` = 'contact_email'");
        $stm->execute();
        return $stm->fetchColumn();
    }
    
    
    /**
     * Returns the mail server URI.
     * 
     * @return string
     */
    public function get_mail_server() {
        $stm = $this->_pdo->prepare("SELECT `value` from config where `key` = 'mail_server'");
        $stm->execute();
        return $stm->fetchColumn();
    }
    
    
    /**
     * Returns the mail server username.
     * 
     * @return string
     */
    public function get_mail_user() {
        $stm = $this->_pdo->prepare("SELECT `value` from config where `key` = 'mail_user'");
        $stm->execute();
        return $stm->fetchColumn();
    }
    
    
    /**
     * Returns the mail server password.
     * 
     * @return string
     */
    public function get_mail_password() {
        $stm = $this->_pdo->prepare("SELECT `value` from config where `key` = 'mail_password'");
        $stm->execute();
        return $stm->fetchColumn();
    }
    
    
    public function insert_contact_message(IContactMessage $message) {
        $stm = $this->_pdo->prepare("INSERT INTO `contact_inbox` (name, email, subject, phone, message, time_created) VALUES(:name, :email, :subject, :phone, :message, now())");
        
        $name = $message->get_name();
        $email = $message->get_email();
        $subject = $message->get_subject();
        $phone = $message->get_phone();
        $msg = $message->get_message();
        
        $stm->bindParam(":name", $name, PDO::PARAM_STR);
        $stm->bindParam(":email", $email, PDO::PARAM_STR);
        $stm->bindParam(":subject", $subject, PDO::PARAM_STR);
        $stm->bindParam(":phone", $phone, PDO::PARAM_STR);
        $stm->bindParam(":message", $msg, PDO::PARAM_STR);
        $stm->execute();
    }
    
    
    protected function __construct() {
        $db_login = SiteConfigFactory::get()->get_site_config()->db_login_params();
        try {
            $this->_pdo = new PDO("mysql:host={$db_login["host"]};dbname={$db_login["dbname"]}", "{$db_login["user"]}", "{$db_login["pass"]}");
        } catch (PDOException $e) {
            die("uh, oh error " . base64_encode($e->getMessage()) . " ...sorry about that. We're fixing the problem and getting back up ASAP.");
        }

        $this->_pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->_pdo->exec("SET NAMES utf8");
        ini_set("default_charset", "utf-8");
    }
}
