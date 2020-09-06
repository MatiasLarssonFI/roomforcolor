<?php

require_once(dirname(__FILE__) . "/isite_config.class.php");


class ProductionSiteConfig implements ISiteConfig {
    public function base_uri() {
        return "https://{$this->host()}";
    }
    
    
    public function host() {
        return "roomforcolor.fi";
    }
    
    
    public function default_language() {
        return "fi";
    }
    
    
    public function db_login_params() {
        $creds_fname = dirname(__FILE__) . "/../../db_creds.json";
        if (is_readable($creds_fname)) {
            $jso = json_decode(file_get_contents($creds_fname));
            return array(
                "host" => $jso->host,
                "dbname" => $jso->dbname,
                "user" => $jso->user,
                "pass" => $jso->pass
            );
        }
        
        throw new RuntimeException("Cannot read db credentials");
    }
}
