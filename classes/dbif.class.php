<?php

require_once(dirname(__FILE__) . "/icontact_message.class.php");


/**
 * Singleton.
 * 
 * The database interface.
 */
class DBIF {
    private $_pdo;
    private $_result_cache;
    
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
        $stm = $this->get_gallery_stm($language, "where gallery.id = :id");
        $stm->bindParam(":id", $id, PDO::PARAM_INT);
        $stm->execute();
        if ($stm->rowCount() > 0) {
            return $stm->fetch();
        }
        
        throw new InvalidArgumentException("No gallery for id '{$id}' and lang '{$language}'");
    }
    
    
    /**
     * Get the first gallery by action.
     * 
     * The result is cached so it is fine to call this method subsequently.
     * 
     * Calls cb_store_row on each row.
     */
    public function get_first_gallery($action, $language) {
        $cache_id = __METHOD__ . md5(implode("", func_get_args()));
        if ($gallery_data = $this->get_from_cache($cache_id)) {
            return $gallery_data;
        } else {
            $stm = $this->get_gallery_stm($language, "where gallery.action = :action order by id asc limit 1");
            $stm->bindParam(":action", $action, PDO::PARAM_STR);
            $stm->execute();
            if ($stm->rowCount() > 0) {
                $gallery_data = $stm->fetch();
                $this->insert_to_cache($gallery_data, $cache_id);
                return $gallery_data;
            }
            
            throw new InvalidArgumentException("No gallery for action '{$action}' and lang '{$language}'");
        }
    }
    
    
    /**
     * Get the process.
     * 
     * Calls cb_store_row on each row.
     */
    public function get_process($id, $language) {
        $stm = $this->get_process_stm($language, "where process_page.id = :id");
        $stm->bindParam(":id", $id, PDO::PARAM_INT);
        $stm->execute();
        if ($stm->rowCount() > 0) {
            return $stm->fetch();
        }
        
        throw new InvalidArgumentException("No process for id '{$id}' and lang '{$language}'");
    }
    
    
    /**
     * Get the first gallery by action.
     * 
     * The result is cached so it is fine to call this method subsequently.
     * 
     * Calls cb_store_row on each row.
     */
    public function get_first_process($action, $language) {
        $cache_id = __METHOD__ . md5(implode("", func_get_args()));
        if ($process_data = $this->get_from_cache($cache_id)) {
            return $process_data;
        } else {
            $stm = $this->get_process_stm($language, "where process_page.action = :action order by id asc limit 1");
            $stm->bindParam(":action", $action, PDO::PARAM_STR);
            $stm->execute();
            if ($stm->rowCount() > 0) {
                $process_data = $stm->fetch();
                $this->insert_to_cache($process_data, $cache_id);
                return $process_data;
            }
            
            throw new InvalidArgumentException("No process for action '{$action}' and lang '{$language}'");
        }
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
                            "SELECT image.id, image.thumb_uri, image.original_uri
                            FROM gallery
                            inner join gallery_image gi on gi.gallery_id = :g_id
                            inner join image on gi.image_id = image.id
                            where is_published
                            group by image.id, image.thumb_uri, image.original_uri");
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
                            "SELECT image.thumb_uri, image.original_uri, image.id
                            FROM gallery g
                            inner join gallery_image gi on gi.gallery_id = g.id
                            inner join image
                                on image.id = gi.image_id
                                and image.is_published
                            
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
        $stm = $this->get_gallery_stm($lang, "where gallery.action = :action");
        $stm->bindParam(":action", $action, PDO::PARAM_STR);
        $stm->execute();
        
        while ($row = $stm->fetch()) {
            $cb_store_row($row);
        }
    }
    
    
    /**
     * Get the processes for an action.
     * 
     * Calls cb_store_row on each row.
     * 
     * @param callable $cb_store_row
     * @param string $action
     * @param string $lang
     */
    public function get_action_processes($cb_store_row, $action, $lang) {
        $stm = $this->get_process_stm($lang, "where process_page.action = :action");
        $stm->bindParam(":action", $action, PDO::PARAM_STR);
        $stm->execute();
        
        while ($row = $stm->fetch()) {
            $cb_store_row($row);
        }
    }
    
    
    /**
     * Returns a PDOStatement to fetch a gallery.
     * 
     * @param string $language
     * @param string $appended_sql SQL to append to the query string right after the joins.
     * 
     * @return PDOStatement
     */
    private function get_gallery_stm($language, $appended_sql) {
        $stm = $this->_pdo->prepare(
                    "SELECT gallery.id, gn.content as name
                    from gallery
                    inner join gallery_name gn
                        on gn.gallery_id = gallery.id
                        and gn.language = :lang
                    {$appended_sql}
            ");
        $stm->bindParam(":lang", $language, PDO::PARAM_STR);
        return $stm;
    }
    
    
    /**
     * Returns a PDOStatement to fetch a process.
     * 
     * @param string $language
     * @param string $appended_sql SQL to append to the query string right after the joins.
     * 
     * @return PDOStatement
     */
    private function get_process_stm($language, $appended_sql) {
        $stm = $this->_pdo->prepare(
                    "SELECT process_page.id, pt.intro, pt.title
                    from process_page
                    inner join process_translation pt
                        on pt.process_page_id = process_page.id
                        and pt.language = :lang
                    {$appended_sql}
            ");
        $stm->bindParam(":lang", $language, PDO::PARAM_STR);
        return $stm;
    }
    
    
    /**
     * Get the process texts.
     * 
     * Calls cb_store_row on each row
     * 
     * @param int $process_id
     */
    public function get_process_texts($cb_store_row, $process_id, $language) {
        $stm = $this->_pdo->prepare(
                            "SELECT pt.id, pt.title, pt.content
                            FROM process_text pt
                            where process_page_id = :p_id
                            and language = :lang
                            order by `order` asc
                            ");
        $stm->bindParam(":p_id", $process_id, PDO::PARAM_INT);
        $stm->bindParam(":lang", $language, PDO::PARAM_STR);
        $stm->execute();
        
        while ($row = $stm->fetch()) {
            $cb_store_row($row);
        }
    }
    
    
    /**
     * Returns the gallery actions excluding the empty action.
     * 
     * @return string[]
     */
    public function get_gallery_actions() {
        $ret = [];
        
        $stm = $this->_pdo->prepare("SELECT distinct action from gallery where action != ''");
        $stm->execute();
        
        while ($row = $stm->fetch()) {
            $ret[] = $row["action"];
        }
        
        return $ret;
    }
    
    
    
    /**
     * Returns the process actions.
     * 
     * @return string[]
     */
    public function get_process_actions() {
        $ret = [];
        
        $stm = $this->_pdo->prepare("SELECT distinct action from process_page");
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
    
    
    /**
     * Returns the resource configuration values.
     * 
     * @return string[], keys are js_src_mode, js_src_version and css_src_version
     */
    public function get_resource_configuration() {
        $stm = $this->_pdo->prepare("SELECT `key`, `value` from config where `key` in ('js_src_mode', 'js_src_version', 'css_src_version')");
        $stm->execute();
        $ret = array();
        while ($row = $stm->fetch()) {
            $ret[$row["key"]] = $row["value"];
        }
        
        return $ret;
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
    
    
    
    public function insert_guestbook_message(IGuestbookMessage $message) {
        $stm = $this->_pdo->prepare("INSERT INTO `guestbook` (name, message, time_created) VALUES(:name, :message, now())");
        
        $name = $message->get_name();
        $msg = $message->get_message();
        
        $stm->bindParam(":name", $name, PDO::PARAM_STR);
        $stm->bindParam(":message", $msg, PDO::PARAM_STR);
        $stm->execute();
    }
    
    
    /**
     * Get the guestbook messages.
     * 
     * Calls cb_store_row on each row.
     * 
     * @param int $offset
     * @param callable $cb_store_row
     */
    public function get_guestbook_messages($cb_store_row, $offset) {
        $stm = $this->_pdo->prepare("SELECT name, message, time_created from guestbook order by time_created desc limit " . (int)$offset . ", 1");
        $stm->execute();

        while ($row = $stm->fetch()) {
            $cb_store_row($row);
        }
    }
    
    
    /**
     * Returns number of rows in a table.
     * 
     * @param string $tablename SQL-safe table name
     * @return int
     */
    public function row_count($tablename) {
        $stm = $this->_pdo->prepare("SELECT count(*) from `{$tablename}`");
        $stm->execute();
        return (int)$stm->fetchColumn();
    }
    
    
    /**
     * Write data to cache.
     * 
     * @param mixed $data
     * @param string $cache_id
     */
    private function insert_to_cache($data, $cache_id) {
        $this->_result_cache[$cache_id] = $data;
    }
    
    
    
    /**
     * Read data from cache.
     * 
     * @param string $cache_id
     */
    private function get_from_cache($cache_id) {
        if (array_key_exists($cache_id, $this->_result_cache)) {
            return $this->_result_cache[$cache_id];
        }
        
        return null;
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
        
        $this->_result_cache = array();
    }
}
