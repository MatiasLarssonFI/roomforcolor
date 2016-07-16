-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 02, 2016 at 03:15 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `r4c`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `time_edited` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `time_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact_inbox`
--

CREATE TABLE IF NOT EXISTS `contact_inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `message` text COLLATE utf8_swedish_ci NOT NULL,
  `time_edited` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `time_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `time_created` datetime NOT NULL,
  `time_edited` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_image`
--

CREATE TABLE IF NOT EXISTS `gallery_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `time_created` datetime NOT NULL,
  `time_edited` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq` (`image_id`,`gallery_id`),
  KEY `image_id` (`image_id`),
  KEY `gallery_id` (`gallery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_name`
--

CREATE TABLE IF NOT EXISTS `gallery_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `time_created` datetime NOT NULL,
  `time_edited` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq` (`gallery_id`,`language`),
  KEY `gallery_id` (`gallery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumb_uri` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `original_uri` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `time_edited` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `time_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq` (`original_uri`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `ui_text`
--

CREATE TABLE IF NOT EXISTS `ui_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `content` text COLLATE utf8_swedish_ci NOT NULL,
  `time_edited` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `time_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang_code_uniq` (`language`,`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=80 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery_image`
--
ALTER TABLE `gallery_image`
  ADD CONSTRAINT `gallery_image_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gallery_image_ibfk_2` FOREIGN KEY (`gallery_id`) REFERENCES `gallery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gallery_name`
--
ALTER TABLE `gallery_name`
  ADD CONSTRAINT `gallery_name_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `gallery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
