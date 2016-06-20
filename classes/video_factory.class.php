<?php

require_once(dirname(__FILE__) . "/ivideo.class.php");
require_once(dirname(__FILE__) . "/videos_page_video.class.php");
require_once(dirname(__FILE__) . "/video_file.class.php");
require_once(dirname(__FILE__) . "/ui_text_storage.class.php");
require_once(dirname(__FILE__) . "/dbif.class.php");


class VideoFactory {
    private static $_inst;
    
    
    /**
     * Returns the VideoFactory object.
     * 
     * @return VideoFactory
     */
    public static function get() {
        if (self::$_inst === null) {
            self::$_inst = new self();
        }
        
        return self::$_inst;
    }
    
    
    /**
     * Returns the videos page videos for listing.
     * 
     * @return IVideo[]
     */
    public function get_videos_page_videos() {
        $ret = array();
        
        $lang = UITextStorage::get()->get_language();
        
        DBIF::get()->get_videos_page_videos_list(function(array $row) use (&$ret, $lang) {
            $name_obj = json_decode($row["name"]);
            $descr_obj = json_decode($row["description"]);
            
            $ret[] = new VideosPageVideo(
                $row["id"],
                $row["thumb_url"],
                $name_obj->$lang,
                $descr_obj->$lang,
                array()
            );
        });
        
        usort($ret, function(IVideo $img1, IVideo $img2) {
            $name1 = $img1->get_name();
            $name2 = $img2->get_name();
            if ($name1 === $name2) {
                return 0;
            }
            return ($name1 < $name2 ? -1 : 1);
        });
        
        return $ret;
    }
    
    
    /**
     * Returns one videos page video.
     * 
     * @param int $id
     * @return IVideo
     */
    public function get_videos_page_video($id) {
        $lang = UITextStorage::get()->get_language();
        $video_data = array();
        $files_data = array();
        
        DBIF::get()->get_videos_page_video($id, function(array $row) use ($lang, &$video_data, &$files_data) {
            if (empty($video_data)) {
                $name_obj = json_decode($row["name"]);
                $descr_obj = json_decode($row["description"]);
                
                $video_data = array(
                    "id" => $row["id"],
                    "thumb_url" => $row["thumb_url"],
                    "name" => $name_obj->$lang,
                    "description" => $descr_obj->$lang,
                );
            }
            
            $files_data[] = array(
                "video_url" => $row["video_url"],
                "mime_subtype" => $row["mime_subtype"],
            );
        });
        
        return new VideosPageVideo(
            $video_data["id"],
            $video_data["thumb_url"],
            $video_data["name"],
            $video_data["description"],
            array_map(function(array $file_data) {
                return new VideoFile($file_data["video_url"], $file_data["mime_subtype"]);
            }, $files_data)
        );
    }
}
