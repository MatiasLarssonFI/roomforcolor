-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 10, 2016 at 11:19 PM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `r4c`
--

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `key`, `value`, `time_edited`, `time_created`) VALUES
(1, 'color_css_uri', '/css/color-default.css', NULL, '2016-03-13 20:00:00'),
(2, 'slogan_img_uri', '/data/img/slogan.jpg', '2016-07-25 19:34:15', '2016-03-16 20:00:00'),
(3, 'header_logo_uri', '/data/img/logo.png', '2016-07-25 19:16:58', '2016-03-25 20:00:00'),
(4, 'contact_email', 'matias@matias-laptop', '2016-04-02 15:37:11', '2016-04-01 18:00:00'),
(5, 'mail_server', 'localhost', '2016-04-13 16:20:29', '2016-04-12 18:00:00'),
(6, 'mail_user', '', NULL, '2016-04-12 18:00:00'),
(7, 'mail_password', '', NULL, '2016-04-12 18:00:00'),
(8, 'js_src_mode', 'debug', NULL, '2016-07-15 21:00:00'),
(9, 'js_src_version', '20160716', NULL, '2016-07-15 21:00:00'),
(10, 'css_src_version', '20160716', NULL, '2016-07-15 21:00:00'),
(11, 'facebook_page_url', 'https://www.facebook.com/matias.larssonFIN', NULL, '2016-07-30 21:00:00');

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `action`, `time_created`, `time_edited`) VALUES
(1, 'wallpaintings', '2016-07-01 00:00:00', '2016-07-01 16:24:05'),
(2, '', '2016-07-05 00:00:00', NULL),
(3, 'wallpaintings', '2016-07-21 00:00:00', NULL),
(5, 'furniture', '2016-07-31 00:00:00', NULL),
(6, 'drawings', '2016-07-31 00:00:00', NULL),
(7, 'furniture', '2016-07-31 00:00:00', NULL),
(8, 'furniture', '2016-07-31 00:00:00', NULL),
(9, 'furniture', '2016-07-31 00:00:00', NULL),
(10, 'furniture', '2016-07-31 00:00:00', NULL),
(11, 'furniture', '2016-07-31 00:00:00', NULL),
(12, 'drawings', '2016-07-31 00:00:00', NULL),
(13, 'drawings', '2016-07-31 00:00:00', NULL),
(14, 'drawings', '2016-07-31 00:00:00', NULL),
(15, 'wallpaintings', '2016-07-31 00:00:00', NULL),
(16, 'wallpaintings', '2016-07-31 00:00:00', NULL);

--
-- Dumping data for table `gallery_image`
--

INSERT INTO `gallery_image` (`id`, `image_id`, `gallery_id`, `time_created`, `time_edited`) VALUES
(2, 1, 2, '2016-07-05 00:00:00', '2016-08-10 19:08:52'),
(3, 3, 2, '2016-07-05 00:00:00', '2016-08-10 19:08:54'),
(4, 4, 2, '2016-07-05 00:00:00', '1970-01-10 00:00:00'),
(20, 33, 14, '2016-08-09 22:40:08', '1970-01-10 00:00:00'),
(21, 34, 14, '2016-08-09 22:40:08', '1970-01-10 00:00:00'),
(22, 35, 14, '2016-08-09 22:40:08', '1970-01-10 00:00:00'),
(23, 36, 12, '2016-08-09 22:57:29', '1970-01-10 00:00:00'),
(24, 37, 12, '2016-08-09 22:57:29', '1970-01-10 00:00:00'),
(27, 40, 12, '2016-08-09 22:57:29', '1970-01-10 00:00:00'),
(28, 41, 12, '2016-08-09 22:57:29', '1970-01-10 00:00:00'),
(29, 42, 12, '2016-08-09 22:57:29', '1970-01-10 00:00:00'),
(30, 43, 12, '2016-08-09 22:57:29', '1970-01-10 00:00:00'),
(31, 44, 12, '2016-08-09 22:57:29', '1970-01-10 00:00:00'),
(32, 45, 13, '2016-08-10 19:59:25', '1970-01-10 00:00:00'),
(33, 46, 13, '2016-08-10 19:59:25', '1970-01-10 00:00:00'),
(34, 47, 6, '2016-08-10 20:42:29', '1970-01-10 00:00:00'),
(35, 48, 6, '2016-08-10 20:42:29', '1970-01-10 00:00:00'),
(36, 49, 6, '2016-08-10 20:42:29', '1970-01-10 00:00:00'),
(37, 50, 6, '2016-08-10 20:42:29', '1970-01-10 00:00:00'),
(38, 51, 6, '2016-08-10 20:42:29', '1970-01-10 00:00:00'),
(39, 52, 6, '2016-08-10 20:42:29', '1970-01-10 00:00:00'),
(40, 53, 6, '2016-08-10 20:42:29', '1970-01-10 00:00:00'),
(41, 54, 6, '2016-08-10 20:42:29', '1970-01-10 00:00:00'),
(42, 55, 11, '2016-08-10 20:55:40', '1970-01-10 00:00:00'),
(43, 56, 11, '2016-08-10 20:55:40', '1970-01-10 00:00:00'),
(44, 57, 11, '2016-08-10 20:55:40', '1970-01-10 00:00:00'),
(45, 58, 11, '2016-08-10 20:55:40', '1970-01-10 00:00:00'),
(46, 59, 11, '2016-08-10 20:55:40', '1970-01-10 00:00:00'),
(47, 60, 11, '2016-08-10 20:55:40', '1970-01-10 00:00:00'),
(48, 61, 9, '2016-08-10 21:02:21', '2016-08-10 18:03:14'),
(49, 62, 9, '2016-08-10 21:02:21', '2016-08-10 18:03:10'),
(50, 63, 9, '2016-08-10 21:02:21', '2016-08-10 18:03:02'),
(51, 64, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(52, 65, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(53, 66, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(54, 67, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(55, 68, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(56, 69, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(57, 70, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(58, 71, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(59, 72, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(60, 73, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(61, 74, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(62, 75, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(63, 76, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(64, 77, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(65, 78, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(66, 79, 5, '2016-08-10 21:13:50', '1970-01-10 00:00:00'),
(67, 80, 10, '2016-08-10 21:41:15', '1970-01-10 00:00:00'),
(68, 81, 10, '2016-08-10 21:41:15', '1970-01-10 00:00:00'),
(69, 82, 8, '2016-08-10 21:45:31', '1970-01-10 00:00:00'),
(70, 83, 8, '2016-08-10 21:45:31', '1970-01-10 00:00:00'),
(71, 84, 6, '2016-08-10 00:00:00', '2016-08-10 18:52:19'),
(72, 85, 5, '2016-08-10 00:00:00', '2016-08-10 19:01:51'),
(73, 86, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(74, 87, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(75, 88, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(76, 89, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(77, 90, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(78, 91, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(79, 92, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(80, 93, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(81, 94, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(82, 95, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(83, 96, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(84, 97, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(85, 98, 1, '2016-08-10 22:19:48', '1970-01-10 00:00:00'),
(86, 99, 3, '2016-08-10 00:00:00', '2016-08-10 19:29:34'),
(87, 100, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(88, 101, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(89, 102, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(90, 103, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(91, 104, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(92, 105, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(93, 106, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(94, 107, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(95, 108, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(96, 109, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(97, 110, 7, '2016-08-10 22:38:57', '1970-01-10 00:00:00'),
(106, 119, 12, '2017-02-05 00:00:00', '2017-02-04 22:00:00'),
(105, 118, 12, '2017-02-05 00:00:00', '2017-02-04 22:00:00'),
(104, 117, 12, '2017-02-05 00:00:00', '2017-02-04 22:00:00'),
(102, 115, 12, '2017-02-05 00:00:00', '2017-02-04 22:00:00'),
(101, 114, 12, '2017-02-05 00:00:00', '2017-02-04 22:00:00'),
(100, 113, 12, '2017-02-05 00:00:00', '2017-02-04 22:00:00'),
(120, 133, 15, '2017-02-05 19:03:36', '2017-02-05 17:03:36'),
(119, 132, 15, '2017-02-05 19:03:36', '2017-02-05 17:03:36'),
(118, 131, 15, '2017-02-05 19:03:36', '2017-02-05 17:03:36'),
(117, 130, 15, '2017-02-05 19:03:36', '2017-02-05 17:03:36'),
(116, 129, 15, '2017-02-05 19:03:36', '2017-02-05 17:03:36'),
(115, 128, 15, '2017-02-05 19:03:35', '2017-02-05 17:03:35'),
(114, 127, 15, '2017-02-05 19:03:35', '2017-02-05 17:03:35'),
(113, 126, 15, '2017-02-05 19:03:35', '2017-02-05 17:03:35'),
(112, 125, 15, '2017-02-05 19:03:35', '2017-02-05 17:03:35'),
(111, 124, 15, '2017-02-05 19:03:35', '2017-02-05 17:03:35'),
(110, 123, 15, '2017-02-05 19:03:35', '2017-02-05 17:03:35'),
(109, 122, 15, '2017-02-05 19:03:35', '2017-02-05 17:03:35'),
(108, 121, 15, '2017-02-05 19:03:35', '2017-02-05 17:03:35'),
(107, 120, 15, '2017-02-05 19:03:35', '2017-02-05 17:03:35'),
(121, 134, 16, '2017-02-05 19:03:35', '2017-02-05 17:03:35');

--
-- Dumping data for table `gallery_name`
--

INSERT INTO `gallery_name` (`id`, `gallery_id`, `language`, `content`, `time_created`, `time_edited`) VALUES
(1, 1, 'en', 'Kids rooms', '2016-07-01 00:00:00', NULL),
(2, 1, 'nl', 'Kinderkamer', '2016-07-01 00:00:00', NULL),
(3, 1, 'fi', 'Lastenhuone', '2016-07-01 00:00:00', '2016-08-09 15:16:58'),
(4, 3, 'en', 'Panels', '2016-07-21 00:00:00', '2016-07-21 18:11:52'),
(5, 3, 'nl', 'Panelen', '2016-07-21 00:00:00', '2016-07-21 18:11:52'),
(6, 3, 'fi', 'Paneelit', '2016-07-21 00:00:00', '2016-07-21 18:12:13'),
(13, 5, 'nl', 'Kinderkamer', '2016-07-31 00:00:00', '2016-07-31 13:07:34'),
(14, 6, 'en', 'Portraits', '2016-07-31 00:00:00', '2016-07-31 13:23:32'),
(15, 6, 'nl', 'Portretten', '2016-07-31 00:00:00', '2016-07-31 13:23:42'),
(16, 5, 'fi', 'Lastenhuone', '2016-07-31 00:00:00', '2016-08-09 15:16:45'),
(17, 6, 'fi', 'Muotokuvat', '2016-07-31 00:00:00', '2016-07-31 13:23:56'),
(18, 5, 'en', 'Kids rooms', '2016-07-31 00:00:00', '2016-07-31 12:59:35'),
(19, 7, 'en', 'Cupboards', '2016-07-31 00:00:00', '2016-07-31 13:00:12'),
(21, 7, 'nl', 'Kasten', '2016-07-31 00:00:00', '2016-07-31 13:08:04'),
(22, 7, 'fi', 'Kaapit', '2016-07-31 00:00:00', '2016-07-31 13:10:16'),
(23, 8, 'en', 'Trays', '2016-07-31 00:00:00', '2016-07-31 13:12:40'),
(24, 8, 'nl', 'Dienbladen', '2016-07-31 00:00:00', '2016-07-31 13:13:20'),
(25, 8, 'fi', 'Tarjottimet', '2016-07-31 00:00:00', '2016-07-31 13:14:46'),
(26, 9, 'en', 'Chests', '2016-07-31 00:00:00', '2016-07-31 13:15:32'),
(27, 9, 'nl', 'Kist', '2016-07-31 00:00:00', '2016-07-31 13:15:32'),
(28, 9, 'fi', 'Arkut', '2016-07-31 00:00:00', '2016-08-09 15:20:14'),
(29, 10, 'en', 'Nameplates', '2016-07-31 00:00:00', '2016-07-31 13:17:24'),
(30, 10, 'nl', 'Huisbordje', '2016-07-31 00:00:00', '2016-07-31 13:17:24'),
(31, 10, 'fi', 'Ovikyltit', '2016-07-31 00:00:00', '2016-08-09 15:19:52'),
(32, 11, 'en', 'Additional', '2016-07-31 00:00:00', '2016-07-31 13:21:34'),
(33, 11, 'nl', 'Overig', '2016-07-31 00:00:00', '2016-07-31 13:21:34'),
(34, 11, 'fi', 'Muuta', '2016-07-31 00:00:00', '2016-08-09 15:16:14'),
(35, 12, 'en', 'Animals', '2016-07-31 00:00:00', '2016-07-31 13:25:25'),
(36, 12, 'nl', 'Dieren', '2016-07-31 00:00:00', '2016-07-31 13:25:45'),
(37, 12, 'fi', 'Eläimet', '2016-07-31 16:30:00', '2016-07-31 13:26:27'),
(38, 13, 'en', 'Landscapes', '2016-07-31 00:00:00', '2016-07-31 13:27:17'),
(39, 13, 'nl', 'Landschap', '2016-07-31 00:00:00', '2016-07-31 13:27:17'),
(40, 13, 'fi', 'Maisemat', '2016-07-31 00:00:00', '2016-07-31 13:27:30'),
(41, 14, 'en', 'Additional', '2016-07-31 00:00:00', '2016-07-31 13:28:49'),
(42, 14, 'nl', 'Overig', '2016-07-31 00:00:00', '2016-07-31 13:28:49'),
(43, 14, 'fi', 'Muuta', '2016-07-31 00:00:00', '2016-08-09 15:18:28'),
(46, 15, 'nl', 'Schilderijen', '2017-02-05 00:00:00', NULL),
(45, 15, 'en', 'Paintings', '2017-02-05 00:00:00', NULL),
(44, 15, 'fi', 'Taulut', '2017-02-05 00:00:00', NULL),
(49, 16, 'nl', 'Kinderdagverblijf', '2017-02-07 00:00:00', NULL),
(48, 16, 'en', 'Daycare', '2017-02-07 00:00:00', NULL),
(47, 16, 'fi', 'Päiväkoti', '2017-02-07 00:00:00', NULL);

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `thumb_uri`, `original_uri`, `is_published`, `time_edited`, `time_created`) VALUES
(1, '/data/img/content/thumb/050.jpg', '/data/img/content/front_page/050.jpg', 1, '2016-07-31 15:40:04', '2016-07-04 21:00:00'),
(2, '/data/img/content/thumb/033.jpg', '/data/img/content/kids_rooms/033.jpg', 1, '2016-07-31 15:38:42', '2016-07-04 21:00:00'),
(3, '/data/img/content/thumb/flower.jpg', '/data/img/content/front_page/flower.jpg', 1, '2016-07-31 15:40:07', '2016-07-04 21:00:00'),
(4, '/data/img/content/thumb/iron.jpg', '/data/img/content/front_page/iron.jpg', 1, '2016-07-04 21:00:00', '2016-07-04 21:00:00'),
(33, '/data/img/content/thumb/drawings_additional/031.jpg', '/data/img/content/drawings_additional/031.jpg', 1, '2016-08-09 19:47:44', '1970-01-10 00:00:00'),
(34, '/data/img/content/thumb/drawings_additional/032.jpg', '/data/img/content/drawings_additional/032.jpg', 1, '2016-08-09 19:47:44', '1970-01-10 00:00:00'),
(35, '/data/img/content/thumb/drawings_additional/057.jpg', '/data/img/content/drawings_additional/057.jpg', 1, '2016-08-09 19:47:44', '1970-01-10 00:00:00'),
(36, '/data/img/content/thumb/drawings_animals/9900026.jpg', '/data/img/content/drawings_animals/9900026.jpg', 1, NULL, '2016-08-09 19:55:01'),
(37, '/data/img/content/thumb/drawings_animals/9900027.jpg', '/data/img/content/drawings_animals/9900027.jpg', 1, NULL, '2016-08-09 19:55:02'),
(40, '/data/img/content/thumb/drawings_animals/9900060.jpg', '/data/img/content/drawings_animals/9900060.jpg', 1, NULL, '2016-08-09 19:55:02'),
(41, '/data/img/content/thumb/drawings_animals/9900061.jpg', '/data/img/content/drawings_animals/9900061.jpg', 1, NULL, '2016-08-09 19:55:02'),
(42, '/data/img/content/thumb/drawings_animals/9900097.jpg', '/data/img/content/drawings_animals/9900097.jpg', 1, NULL, '2016-08-09 19:55:02'),
(43, '/data/img/content/thumb/drawings_animals/9900121.jpg', '/data/img/content/drawings_animals/9900121.jpg', 1, NULL, '2016-08-09 19:55:02'),
(44, '/data/img/content/thumb/drawings_animals/9900125.jpg', '/data/img/content/drawings_animals/9900125.jpg', 1, NULL, '2016-08-09 19:55:02'),
(45, '/data/img/content/thumb/drawings_landscape/018.jpg', '/data/img/content/drawings_landscape/018.jpg', 1, NULL, '2016-08-10 16:58:15'),
(46, '/data/img/content/thumb/drawings_landscape/019.jpg', '/data/img/content/drawings_landscape/019.jpg', 1, NULL, '2016-08-10 16:58:15'),
(47, '/data/img/content/thumb/drawings_portraits/99025.jpg', '/data/img/content/drawings_portraits/99025.jpg', 1, NULL, '2016-08-10 17:41:02'),
(48, '/data/img/content/thumb/drawings_portraits/99028.jpg', '/data/img/content/drawings_portraits/99028.jpg', 1, NULL, '2016-08-10 17:41:02'),
(49, '/data/img/content/thumb/drawings_portraits/99040.jpg', '/data/img/content/drawings_portraits/99040.jpg', 1, NULL, '2016-08-10 17:41:02'),
(50, '/data/img/content/thumb/drawings_portraits/99103.jpg', '/data/img/content/drawings_portraits/99103.jpg', 1, NULL, '2016-08-10 17:41:02'),
(51, '/data/img/content/thumb/drawings_portraits/99120.jpg', '/data/img/content/drawings_portraits/99120.jpg', 1, NULL, '2016-08-10 17:41:02'),
(52, '/data/img/content/thumb/drawings_portraits/99122.jpg', '/data/img/content/drawings_portraits/99122.jpg', 1, NULL, '2016-08-10 17:41:02'),
(53, '/data/img/content/thumb/drawings_portraits/99123.jpg', '/data/img/content/drawings_portraits/99123.jpg', 1, NULL, '2016-08-10 17:41:02'),
(54, '/data/img/content/thumb/drawings_portraits/99124.jpg', '/data/img/content/drawings_portraits/99124.jpg', 1, NULL, '2016-08-10 17:41:02'),
(55, '/data/img/content/thumb/furniture_additional/99051.jpg', '/data/img/content/furniture_additional/99051.jpg', 1, NULL, '2016-08-10 17:53:10'),
(56, '/data/img/content/thumb/furniture_additional/99052.jpg', '/data/img/content/furniture_additional/99052.jpg', 1, NULL, '2016-08-10 17:53:10'),
(57, '/data/img/content/thumb/furniture_additional/99053.jpg', '/data/img/content/furniture_additional/99053.jpg', 1, NULL, '2016-08-10 17:53:10'),
(58, '/data/img/content/thumb/furniture_additional/99054.jpg', '/data/img/content/furniture_additional/99054.jpg', 1, NULL, '2016-08-10 17:53:10'),
(59, '/data/img/content/thumb/furniture_additional/99055.jpg', '/data/img/content/furniture_additional/99055.jpg', 1, NULL, '2016-08-10 17:53:10'),
(60, '/data/img/content/thumb/furniture_additional/99110.jpg', '/data/img/content/furniture_additional/99110.jpg', 1, NULL, '2016-08-10 17:53:10'),
(61, '/data/img/content/thumb/furniture_chests/99079.jpg', '/data/img/content/furniture_chests/99079.jpg', 1, NULL, '2016-08-10 18:01:38'),
(62, '/data/img/content/thumb/furniture_chests/99081.jpg', '/data/img/content/furniture_chests/99081.jpg', 1, NULL, '2016-08-10 18:01:39'),
(63, '/data/img/content/thumb/furniture_chests/99096.jpg', '/data/img/content/furniture_chests/99096.jpg', 1, NULL, '2016-08-10 18:01:39'),
(64, '/data/img/content/thumb/furniture_kids_rooms/99033.jpg', '/data/img/content/furniture_kids_rooms/99033.jpg', 1, NULL, '2016-08-10 18:11:21'),
(65, '/data/img/content/thumb/furniture_kids_rooms/99035.jpg', '/data/img/content/furniture_kids_rooms/99035.jpg', 1, NULL, '2016-08-10 18:11:21'),
(66, '/data/img/content/thumb/furniture_kids_rooms/99043.jpg', '/data/img/content/furniture_kids_rooms/99043.jpg', 1, NULL, '2016-08-10 18:11:21'),
(67, '/data/img/content/thumb/furniture_kids_rooms/99044.jpg', '/data/img/content/furniture_kids_rooms/99044.jpg', 1, NULL, '2016-08-10 18:11:21'),
(68, '/data/img/content/thumb/furniture_kids_rooms/99045.jpg', '/data/img/content/furniture_kids_rooms/99045.jpg', 1, NULL, '2016-08-10 18:11:21'),
(69, '/data/img/content/thumb/furniture_kids_rooms/99069.jpg', '/data/img/content/furniture_kids_rooms/99069.jpg', 1, NULL, '2016-08-10 18:11:21'),
(70, '/data/img/content/thumb/furniture_kids_rooms/99071.jpg', '/data/img/content/furniture_kids_rooms/99071.jpg', 1, NULL, '2016-08-10 18:11:21'),
(71, '/data/img/content/thumb/furniture_kids_rooms/99072.jpg', '/data/img/content/furniture_kids_rooms/99072.jpg', 1, NULL, '2016-08-10 18:11:21'),
(72, '/data/img/content/thumb/furniture_kids_rooms/99073.jpg', '/data/img/content/furniture_kids_rooms/99073.jpg', 1, NULL, '2016-08-10 18:11:21'),
(73, '/data/img/content/thumb/furniture_kids_rooms/99074.jpg', '/data/img/content/furniture_kids_rooms/99074.jpg', 1, NULL, '2016-08-10 18:11:21'),
(74, '/data/img/content/thumb/furniture_kids_rooms/99075.jpg', '/data/img/content/furniture_kids_rooms/99075.jpg', 1, NULL, '2016-08-10 18:11:21'),
(75, '/data/img/content/thumb/furniture_kids_rooms/99076.jpg', '/data/img/content/furniture_kids_rooms/99076.jpg', 1, NULL, '2016-08-10 18:11:21'),
(76, '/data/img/content/thumb/furniture_kids_rooms/99078.jpg', '/data/img/content/furniture_kids_rooms/99078.jpg', 1, NULL, '2016-08-10 18:11:21'),
(77, '/data/img/content/thumb/furniture_kids_rooms/99083.jpg', '/data/img/content/furniture_kids_rooms/99083.jpg', 1, NULL, '2016-08-10 18:11:21'),
(78, '/data/img/content/thumb/furniture_kids_rooms/99084.jpg', '/data/img/content/furniture_kids_rooms/99084.jpg', 1, NULL, '2016-08-10 18:11:21'),
(79, '/data/img/content/thumb/furniture_kids_rooms/99085.jpg', '/data/img/content/furniture_kids_rooms/99085.jpg', 1, NULL, '2016-08-10 18:11:22'),
(80, '/data/img/content/thumb/furniture_nameplates/021.jpg', '/data/img/content/furniture_nameplates/021.jpg', 1, NULL, '2016-08-10 18:40:34'),
(81, '/data/img/content/thumb/furniture_nameplates/104.jpg', '/data/img/content/furniture_nameplates/104.jpg', 1, NULL, '2016-08-10 18:40:34'),
(82, '/data/img/content/thumb/furniture_trays/99089-1.jpg', '/data/img/content/furniture_trays/99089-1.jpg', 1, NULL, '2016-08-10 18:44:08'),
(83, '/data/img/content/thumb/furniture_trays/99093.jpg', '/data/img/content/furniture_trays/99093.jpg', 1, NULL, '2016-08-10 18:44:08'),
(84, '/data/img/content/thumb/drawings_portraits/99102.jpg', '/data/img/content/drawings_portraits/99102.jpg', 1, '2016-08-10 18:53:41', '2016-08-10 18:44:08'),
(85, '/data/img/content/thumb/furniture_kids_rooms/99127.jpg', '/data/img/content/furniture_kids_rooms/99127.jpg', 1, '2016-08-10 19:02:40', '2016-08-10 18:44:08'),
(86, '/data/img/content/thumb/wallpaintings_kids_rooms/99045.jpg', '/data/img/content/wallpaintings_kids_rooms/99045.jpg', 1, NULL, '2016-08-10 19:18:12'),
(87, '/data/img/content/thumb/wallpaintings_kids_rooms/99046.jpg', '/data/img/content/wallpaintings_kids_rooms/99046.jpg', 1, NULL, '2016-08-10 19:18:12'),
(88, '/data/img/content/thumb/wallpaintings_kids_rooms/99047.jpg', '/data/img/content/wallpaintings_kids_rooms/99047.jpg', 1, NULL, '2016-08-10 19:18:12'),
(89, '/data/img/content/thumb/wallpaintings_kids_rooms/99048.jpg', '/data/img/content/wallpaintings_kids_rooms/99048.jpg', 1, NULL, '2016-08-10 19:18:12'),
(90, '/data/img/content/thumb/wallpaintings_kids_rooms/99049.jpg', '/data/img/content/wallpaintings_kids_rooms/99049.jpg', 1, NULL, '2016-08-10 19:18:12'),
(91, '/data/img/content/thumb/wallpaintings_kids_rooms/99050.jpg', '/data/img/content/wallpaintings_kids_rooms/99050.jpg', 1, NULL, '2016-08-10 19:18:12'),
(92, '/data/img/content/thumb/wallpaintings_kids_rooms/99106.jpg', '/data/img/content/wallpaintings_kids_rooms/99106.jpg', 1, NULL, '2016-08-10 19:18:12'),
(93, '/data/img/content/thumb/wallpaintings_kids_rooms/99107.jpg', '/data/img/content/wallpaintings_kids_rooms/99107.jpg', 1, NULL, '2016-08-10 19:18:12'),
(94, '/data/img/content/thumb/wallpaintings_kids_rooms/99108.jpg', '/data/img/content/wallpaintings_kids_rooms/99108.jpg', 1, NULL, '2016-08-10 19:18:12'),
(95, '/data/img/content/thumb/wallpaintings_kids_rooms/99111.jpg', '/data/img/content/wallpaintings_kids_rooms/99111.jpg', 1, NULL, '2016-08-10 19:18:12'),
(96, '/data/img/content/thumb/wallpaintings_kids_rooms/99112.jpg', '/data/img/content/wallpaintings_kids_rooms/99112.jpg', 1, NULL, '2016-08-10 19:18:12'),
(97, '/data/img/content/thumb/wallpaintings_kids_rooms/99113.jpg', '/data/img/content/wallpaintings_kids_rooms/99113.jpg', 1, NULL, '2016-08-10 19:18:12'),
(98, '/data/img/content/thumb/wallpaintings_kids_rooms/99117.jpg', '/data/img/content/wallpaintings_kids_rooms/99117.jpg', 1, NULL, '2016-08-10 19:18:12'),
(99, '/data/img/content/thumb/wallpaintings_panels/042.jpg', '/data/img/content/wallpaintings_panels/042.jpg', 1, NULL, '2016-08-10 19:18:12'),
(100, '/data/img/content/thumb/furniture_cupboards/99062.jpg', '/data/img/content/furniture_cupboards/99062.jpg', 1, NULL, '2016-08-10 19:36:44'),
(101, '/data/img/content/thumb/furniture_cupboards/99063.jpg', '/data/img/content/furniture_cupboards/99063.jpg', 1, NULL, '2016-08-10 19:36:44'),
(102, '/data/img/content/thumb/furniture_cupboards/99064.jpg', '/data/img/content/furniture_cupboards/99064.jpg', 1, NULL, '2016-08-10 19:36:44'),
(103, '/data/img/content/thumb/furniture_cupboards/99065.jpg', '/data/img/content/furniture_cupboards/99065.jpg', 1, NULL, '2016-08-10 19:36:44'),
(104, '/data/img/content/thumb/furniture_cupboards/99066.jpg', '/data/img/content/furniture_cupboards/99066.jpg', 1, NULL, '2016-08-10 19:36:44'),
(105, '/data/img/content/thumb/furniture_cupboards/99067.jpg', '/data/img/content/furniture_cupboards/99067.jpg', 1, NULL, '2016-08-10 19:36:44'),
(106, '/data/img/content/thumb/furniture_cupboards/99068.jpg', '/data/img/content/furniture_cupboards/99068.jpg', 1, NULL, '2016-08-10 19:36:44'),
(107, '/data/img/content/thumb/furniture_cupboards/99086.jpg', '/data/img/content/furniture_cupboards/99086.jpg', 1, NULL, '2016-08-10 19:36:44'),
(108, '/data/img/content/thumb/furniture_cupboards/99087.jpg', '/data/img/content/furniture_cupboards/99087.jpg', 1, NULL, '2016-08-10 19:36:44'),
(109, '/data/img/content/thumb/furniture_cupboards/99092-1.jpg', '/data/img/content/furniture_cupboards/99092-1.jpg', 1, NULL, '2016-08-10 19:36:44'),
(110, '/data/img/content/thumb/furniture_cupboards/99095.jpg', '/data/img/content/furniture_cupboards/99095.jpg', 1, NULL, '2016-08-10 19:36:44'),
(119, '/data/img/content/thumb/drawings_animals/001_12-01-17.jpg', '/data/img/content/drawings_animals/001_12-01-17.jpg', 1, '2017-02-05 13:47:44', '2017-02-05 13:47:44'),
(118, '/data/img/content/thumb/drawings_animals/020_Eagle_16-12-16.JPG', '/data/img/content/drawings_animals/020_Eagle_16-12-16.JPG', 1, '2017-02-05 13:47:44', '2017-02-05 13:47:44'),
(117, '/data/img/content/thumb/drawings_animals/018_eagle_15-12-16.JPG', '/data/img/content/drawings_animals/018_eagle_15-12-16.JPG', 1, '2017-02-05 13:47:44', '2017-02-05 13:47:44'),
(115, '/data/img/content/thumb/drawings_animals/014_20-10-16_Harco_Jersey_Sir_William_Laura.jpg', '/data/img/content/drawings_animals/014_20-10-16_Harco_Jersey_Sir_William_Laura.jpg', 1, '2017-02-05 13:47:44', '2017-02-05 13:47:44'),
(114, '/data/img/content/thumb/drawings_animals/005_25-01-17.jpg', '/data/img/content/drawings_animals/005_25-01-17.jpg', 1, '2017-02-05 13:47:44', '2017-02-05 13:47:44'),
(113, '/data/img/content/thumb/drawings_animals/004_24-01-17-1.jpg', '/data/img/content/drawings_animals/004_24-01-17-1.jpg', 1, '2017-02-05 13:47:44', '2017-02-05 13:47:44'),
(133, '/data/img/content/thumb/wallpaintings_paintings/16_24-11-16_Yellow_boots_day.jpg', '/data/img/content/wallpaintings_paintings/16_24-11-16_Yellow_boots_day.jpg', 1, '2017-02-05 16:20:40', '2017-02-05 16:20:40'),
(132, '/data/img/content/thumb/wallpaintings_paintings/015_08-11-16_little_bird.jpg', '/data/img/content/wallpaintings_paintings/015_08-11-16_little_bird.jpg', 1, '2017-02-05 16:20:40', '2017-02-05 16:20:40'),
(131, '/data/img/content/thumb/wallpaintings_paintings/013_12-10-16-1.jpg', '/data/img/content/wallpaintings_paintings/013_12-10-16-1.jpg', 1, '2017-02-05 16:20:40', '2017-02-05 16:20:40'),
(130, '/data/img/content/thumb/wallpaintings_paintings/012_11-10-16-1.jpg', '/data/img/content/wallpaintings_paintings/012_11-10-16-1.jpg', 1, '2017-02-05 16:20:40', '2017-02-05 16:20:40'),
(129, '/data/img/content/thumb/wallpaintings_paintings/011_06-10-16.jpg', '/data/img/content/wallpaintings_paintings/011_06-10-16.jpg', 1, '2017-02-05 16:20:40', '2017-02-05 16:20:40'),
(128, '/data/img/content/thumb/wallpaintings_paintings/010_05-10-16.jpg', '/data/img/content/wallpaintings_paintings/010_05-10-16.jpg', 1, '2017-02-05 16:20:40', '2017-02-05 16:20:40'),
(127, '/data/img/content/thumb/wallpaintings_paintings/009_03-10-16_The_Fall.jpg', '/data/img/content/wallpaintings_paintings/009_03-10-16_The_Fall.jpg', 1, '2017-02-05 16:20:40', '2017-02-05 16:20:40'),
(126, '/data/img/content/thumb/wallpaintings_paintings/008_28-09-16.jpg', '/data/img/content/wallpaintings_paintings/008_28-09-16.jpg', 1, '2017-02-05 16:20:40', '2017-02-05 16:20:40'),
(125, '/data/img/content/thumb/wallpaintings_paintings/007_25-09-16.jpg', '/data/img/content/wallpaintings_paintings/007_25-09-16.jpg', 1, '2017-02-05 16:20:40', '2017-02-05 16:20:40'),
(124, '/data/img/content/thumb/wallpaintings_paintings/006_23-09-16.jpg', '/data/img/content/wallpaintings_paintings/006_23-09-16.jpg', 1, '2017-02-05 16:20:40', '2017-02-05 16:20:40'),
(123, '/data/img/content/thumb/wallpaintings_paintings/005_08-09-16.jpg', '/data/img/content/wallpaintings_paintings/005_08-09-16.jpg', 1, '2017-02-05 16:20:39', '2017-02-05 16:20:39'),
(122, '/data/img/content/thumb/wallpaintings_paintings/004_01-09-16.jpg', '/data/img/content/wallpaintings_paintings/004_01-09-16.jpg', 1, '2017-02-05 16:20:39', '2017-02-05 16:20:39'),
(121, '/data/img/content/thumb/wallpaintings_paintings/003_30-08-16.jpg', '/data/img/content/wallpaintings_paintings/003_30-08-16.jpg', 1, '2017-02-05 16:20:39', '2017-02-05 16:20:39'),
(120, '/data/img/content/thumb/wallpaintings_paintings/002_25-08-16.jpg', '/data/img/content/wallpaintings_paintings/002_25-08-16.jpg', 1, '2017-02-05 16:20:39', '2017-02-05 16:20:39'),
(134, '/data/img/content/thumb/wallpaintings_daycare/006_01-02-17.jpg', '/data/img/content/wallpaintings_daycare/006_01-02-17.jpg', 1, '2017-02-07 16:20:40', '2017-02-07 16:20:40');

--
-- Dumping data for table `page_text`
--

INSERT INTO `page_text` (`id`, `page_code`, `language`, `content`, `order`, `time_edited`, `time_created`) VALUES
(1, 'ABOUT', 'en', 'Welcome to my site Room for Color!\n\nHopefully you may find something or be inspired.\n\nMy name is Fiona Ansink and I am living since 2006 in Finland, land of my heart.\nI have been born in the Netherlands and after seeing several other countries I found my place in the land of over the thousand lakes.\n\nFrom the moment I discovered colour pencils and could hold them, I have been fascinated by colour and creating! \nBesides my love for drawing I am interested in everything that has to do with creating something: like building houses, creating and restoration of furniture, designing, photography and painting. My passion for painting started out and has developed with painting of interior and exterior of houses.\nMy beloved father got my passion going since I was 12 years old.\n\nWhile working for Ruukinpaja in Karkkila, South-Finland, I got the opportunity to show my passion for renovating and decorative painting of furniture.\n\nYou can also visit me on my Facebook site.', 1, '2016-08-09 20:39:42', '2016-08-07 21:00:00'),
(2, 'ABOUT', 'nl', 'Welkom op mijn site Room for Color!\n\nDat U hier iets mag vinden of geïnspireerd mag raken.\n\nMijn naam is Fiona Ansink en woon sinds 2006 in Finland, het land naar mijn hart.\nBen geboren in Nederland en na meerdere landen te hebben doorgetrokken heb ik mijn stekje gevonden in het land van de ruim duizend meren.\n\nVanaf het moment dat ik de kleurpotloden ontdekte en vast kon houden heeft kleur en creëren mij gefascineerd!\nNaast mijn liefde voor tekenen, interesseert alles met het creëren van iets mij, zoals het bouwen van huizen, maken en restaureren van meubels, ontwerpen, fotografie en schilderen. De grootte passie voor schilderen is ontstaan met het beschilderen van interieurs en exterieurs van huizen, \nwelke mijn geliefde vader heeft meegegeven sinds ik 12 jaar was.\n\nBij Ruukinpaja in Karkkila, Zuid-Finland, kreeg ik de mogelijkheid om mijn passie te laten zien, zoals het renoveren van meubels en het decoratief \nbeschilderen van meubels.\n\nU kunt ook mijn Facebook site bezoek.', 1, '2016-08-10 19:41:25', '2016-08-07 21:00:00'),
(4, 'ABOUT', 'nl', 'Informatie over wat ik doe\n\nOp deze site kunt U een selectie vinden van de werken die ik tot nu toe heb gedaan, dit bevat muurschilderingen, decoratieve beschildering van meubels: kasten, babybedjes, stoelen, tafels, kisten, dienbladen en naambordjes, waarvan ik sommige zelf heb gemaakt en ontworpen.\nDaarnaast maak ik ook kleurtekeningen en potloodtekeningen op verzoek.\nMijn passie en ervaring ligt in het realistisch weergeven van mensen, dieren, landschappen en planten.', 2, '2016-08-10 19:41:46', '2016-08-07 21:00:00'),
(5, 'ABOUT', 'en', 'Information of what I can do\n\nOn this site you can find a selection of my work I have been doing so far, this contains wall paintings, decorative painting of furniture: cupboards, baby cribs, chairs, tables, chests, trays and doorplates, some of these I have made myself and/or designed.\n\nFurther more I make colour pencil and pencil drawings on request.\nMy passion and experience is of realistic showing of people, animals, landscapes and plants.\n\nWall paintings can be for children rooms, bedrooms, living rooms, hallways, kitchens, restaurant, café, hospital, daycare, health facility or any other company.', 2, '2016-08-09 20:42:35', '2016-08-07 21:00:00'),
(8, 'ABOUT', 'fi', 'Tervetuloa Room for Color-sivuilleni!\n\nToivottavasti löydät jotakin inspiroivaa.\n\nNimeni on Fiona Ansink ja olen asunut Suomessa, lempimaassani, vuodesta 2006.\nOlen syntynyt Alankomaissa ja tutustuttuani moneen eri maahan olen löytänyt kotini täältä tuhansien järvien maasta.\n\nSiitä lähtien, kun olen pienenä tutustunut ja oppinut pitelemään värikyniä, olen ollut innostunut väreistä ja luomisesta. \nPiirtämisen lisäksi olen kiinnostunut kaikesta, joka liittyy luomiseen: talojen rakentaminen, huonekalujen tekeminen ja korjaaminen, vaatteiden suunnitteleminen, valokuvaaminen ja maalaaminen ovat kiinnostuksen kohteitani. Intohimoni maalaamiseen alkoi talojen ulko- ja sisäpintojen maalaamisesta ja tämän intohimon sai syttymään rakas isäni, kun olin 12-vuotias.', 1, '2016-08-10 19:45:45', '2016-08-07 21:00:00'),
(9, 'ABOUT', 'fi', 'Tässä taidonnäytteitäni\n\nTällä sivulla on esitelty töitäni, jotka olen tehnyt tai suunnitellut. Täältä löydät mm. seinämaalaukset, huonekalujen maalaukset, hyllyt, vauvojen sängyt, tuolit, pöydät, kaapit sekä ovikyltit.\n\nSeinämaalaukset voidaan toteuttaa lastenhuoneisiin, makuuhuoneisiin, eteishalleihin, keittiöihin, ravintoloihin, kahviloihin, sairaaloihin, päivähoitopaikkoihin, terveysalan yrityksiin ja muihinkin liiketiloihin.\n\nTäältä löydät valikoiman seinämaalauksiani ja kaappien, lastensänkyjen, tuolien ja pöytien maalauksia, joista osan olen itse suunnitellut ja tehnyt.\nVoin myös toteuttaa toiveesi minkä tahansa haluamasi huonekalun somistamisesta.\n\nTervetuloa myös Facebook-sivuilleni!', 2, '2016-08-08 17:52:52', '2016-08-07 21:00:00');

--
-- Dumping data for table `process_page`
--

INSERT INTO `process_page` (`id`, `action`, `time_created`, `time_edited`) VALUES
(1, 'process', '2016-07-22 00:00:00', NULL),
(2, 'process', '2016-07-22 00:00:00', NULL),
(3, 'process', '2016-07-22 00:00:00', NULL),
(4, 'process', '2016-07-22 00:00:00', NULL),
(5, 'process', '2016-07-22 00:00:00', NULL);

--
-- Dumping data for table `process_text`
--

INSERT INTO `process_text` (`id`, `process_page_id`, `language`, `title`, `content`, `order`, `time_created`, `time_edited`) VALUES
(1, 1, 'en', '', 'Would you like to have a wall painting? A nice wall painting will be a wonderful eye catcher!\nIt is an original and trendy way to decorate your company entrance, one of the company rooms or private home. Wall paintings give a happy, warm and personal atmosphere and can be made for you personal taste.', 1, '2016-07-22 00:00:00', '2016-08-08 18:07:26'),
(2, 2, 'en', '', 'After a first contact through e-mail or by phone, it might be clear of what is desired. I will make a cost calculation and a date on which I will have the painting ready can be set.', 1, '2016-07-22 00:00:00', '2016-08-08 18:20:50'),
(3, 1, 'en', 'Material', 'The paint I will be using will be on water base and will not give a lot of odeur. Also the paint will dry fast and water-resistant. It will be possible to clean the painting with a little bit of wet towel. I will take all of my own material with me, inclusive floor coverup.', 4, '2016-07-23 00:00:00', '2016-08-08 18:09:10'),
(5, 1, 'en', 'The wall', 'I prefer to work on a smooth wall which has already been painted. When the wall has a dark coat, just let me know, than I can make a better estimation.\nIf the wall has a rougher structure it will be possible to paint, but it will cost more because it will take longer to decorate. \nWhen a wall is very rough it might be good to consider a panel, this can be colored in the wall colour and mounted where ever.', 5, '2016-07-23 00:00:00', '2016-08-08 18:07:56'),
(7, 1, 'en', 'The picture', 'I would like to receive a picture of the existing wall and te room where the painting will be. \nI can make a design and there is also the option of sending your own picture (this can be a photograph, cart, drawing, own made sketch or anything else) so I can put it in the design.', 6, '2016-07-23 00:00:00', '2016-08-08 18:08:43'),
(9, 1, 'en', 'Cost calculations', 'I prefer to set a set cost, so there will be no surprises for you. This I will base on the hours I think I need, material and kilometers.\n\nMy base is: \n32,50 € x hours + 15 € materials cost + 0,20 € the km + 24% TAX.', 7, '2016-07-23 00:00:00', '2016-08-08 19:12:54'),
(10, 1, 'en', '', 'In some occasions it is required for me to make first a drawing of the figures and/or background, name etc. This drawing and the cost calculation will be sent by e-mail.', 3, '2016-07-23 00:00:00', '2016-08-08 18:07:53'),
(11, 1, 'en', '', 'How a wall painting comes to live?\nAfter a first contact through e-mail or by phone, it might be clear of what is desired. I will make a cost calculation and a date on which I will come and paint the wall painting can be set.', 2, '2016-07-23 00:00:00', '2016-08-08 18:08:18'),
(12, 1, 'en', '', 'Most of the wall paintings will be ready in 1 or 2 days time, depends on the amount of figures and size. For more extensive wallpaintings with a lot of figures or animals we can communicate the amount of days that are needed and plan these.', 9, '2016-07-23 00:00:00', '2016-08-08 18:43:52'),
(13, 1, 'en', '', 'You can always ask a optional cost calculation and planned dates can be canceled without cost to up the day before.', 10, '2016-07-23 00:00:00', '2016-08-08 18:43:46'),
(14, 1, 'en', '', 'I am working in the region of South-Finland and have no waiting list. I am prepared to come and work out site this region, we can always talk about it.', 11, '2016-07-23 00:00:00', '2016-08-08 18:43:43'),
(15, 1, 'nl', '', 'Muurschildering laten maken? Een mooie muurschildering is een echte eye catcher!\nOp zoek naar een originele en trendy manier om uw kamer of lokaal te decoreren? Muurschilderingen geven een vrolijke, warme en persoonlijke sfeer en kunnen helemaal op maat naar uw wensen worden gemaakt.', 1, '2016-07-22 00:00:00', '2016-08-08 18:14:10'),
(16, 1, 'nl', '', 'Hoe komt een muurschildering tot stand?\nNa het eerste contact via mail of telefonisch, is het in sommige gevallen al meteen duidelijk hoe de muurschildering eruit komt te zien. In dat geval wordt er een prijsopgave gemaakt en kan er een indien gewenst een datum gepland worden om de muurschildering te realiseren.\nIn andere gevallen is het wenselijk om van te voren eerst een tekening te maken met alle gewenste figuurtjes en/of achtergrond, naam etc. \nDeze tekening wordt dan samen met de prijsopgave per mail verstuurd.', 2, '2016-07-23 00:00:00', '2016-08-08 18:14:35'),
(17, 1, 'nl', 'Materiaal', 'Ik schilder met acrylverf, dit is verf op waterbasis, kindvriendelijk en niet schadelijk voor de gezondheid. Als deze verf opdroogt is het watervast en kun je, als het nodig is, de muurschildering gewoon afnemen met een vochtig doekje. Ik neem alle materialen zelf mee, incl. afdekmateriaal.', 3, '2016-07-23 00:00:00', '2016-08-08 18:14:59'),
(18, 1, 'nl', 'De afbeelding', 'Ik ontvang graag een foto van de muur en de kamer waar de schildering moet komen.\nHet is mogelijk om zelf één of meerdere afbeeldingen aan mij door te sturen (dit kunnen foto’s, ansichtkaarten, tekeningen, eigen schetsjes en dergelijke zijn) zodat ik ze in het ontwerp kan verwerken.', 5, '2016-07-23 00:00:00', '2016-08-08 18:15:07'),
(20, 1, 'nl', 'Tarieven muurschilderingen', 'Ik communiceer altijd vooraf een vaste prijs zodat je nooit voor verrassingen komt te staan. Dit doe ik op basis van de ingeschatte uren, materiaal en kilometers.\n\nMijn uitgangspunt is: \n32,50 € x aantal uren + 15 € materiaalkosten + 0,20 € per km  + 24% BTW', 6, '2016-07-23 00:00:00', '2016-08-08 19:13:29'),
(22, 1, 'nl', '', 'De meeste muurschilderingen zijn binnen 1 á 2 dagen klaar, meestal afhankelijk van het aantal figuurtjes. Voor uitgebreidere muurschilderingen met veel figuren of dieren bv. worden in overleg  meerdere dagen ingepland.', 8, '2016-07-23 00:00:00', '2016-08-08 18:17:46'),
(23, 1, 'nl', '', 'Het aanvragen van een prijsopgave is uiteraard vrijblijvend en geplande schilderdata kunnen tot een dag van te voren kosteloos worden geannuleerd.', 9, '2016-07-23 00:00:00', '2016-07-23 10:51:54'),
(24, 1, 'nl', '', 'Ik werk in Zuid-Finland en heb geen lange wachttijden. Ik ben bereid om te overwegen om buiten deze regio te werken. Dit kunnen we altijd overleggen.', 10, '2016-07-23 00:00:00', '2016-07-23 10:51:38'),
(25, 1, 'nl', 'De muur', 'Ik werk het liefst op een gladde muur die al een keer gesaust is. Mocht de muur een donkere ondergrond hebben, laat het mij dan even weten, dan kan ik een goede tijdsinschatting maken. Als de muur wat grover is kan het ook, maar dan kost het wat meer tijd.\nMocht de muur erg grof van structuur zijn is het misschien een goed idee om met panelen te werken. Deze kunnen in de kleur van de bestaande muur worden beschilderd en daarop de schildering.', 4, '2016-07-23 00:00:00', '2016-08-08 18:19:42'),
(26, 2, 'en', '', 'There is the option to sent me one or several pictures. Several pictures can be combined to make one painting. I can also provide a design.', 2, '1970-01-10 00:00:00', '2016-07-23 10:59:44'),
(27, 2, 'en', '', 'There is the possibility to bring the parts to be decorated to me or that I will come and pick them up. I also can come to you and paint on location. In this case I will bring all the necessaries to make the decoration.', 3, '1970-01-10 00:00:00', '2016-07-23 10:59:53'),
(28, 2, 'nl', '', 'Na het eerste contact via mail of telefonisch, is het in sommige gevallen al meteen duidelijk hoe de afbeelding eruit komt te zien. In dat geval wordt er een prijsopgave gemaakt en kan er een indien gewenst een datum gepland worden om de afbeelding klaar te hebben.', 1, '2016-07-22 00:00:00', '2016-08-08 18:21:10'),
(29, 2, 'nl', '', 'Het is mogelijk om zelf één of meerdere afbeeldingen of foto’s aan mij door te sturen zodat ik ze in het ontwerp kan verwerken. Of ik kan een ontwerp voor u maken.', 2, '1970-01-10 00:00:00', '2016-08-08 18:21:16'),
(30, 2, 'nl', '', 'De mogelijkheid is om de beschilderde onderdelen naar mij toe te brengen of dat ik die kom ophalen. Ook kan ik bij U komen en het ter plaatse te beschilderen. Ik neem alle benodigdheden om de afbeelding te verwerkelijken zelf mee.', 3, '1970-01-10 00:00:00', '2016-08-08 18:21:21'),
(31, 3, 'en', '', 'After a first contact through e-mail or by phone, it might be clear of what is desired. I will make a cost calculation and a date on which I will have the drawing ready can be set.', 1, '2016-07-23 00:00:00', '2016-08-08 18:21:45'),
(32, 3, 'en', '', 'There is the option to sent me one or several pictures. Several pictures can be combined to make one drawing.\nThe drawing can be made on any size of paper, any kind of paper and any paper colour.', 2, '2016-07-23 00:00:00', '2016-08-08 18:21:48'),
(33, 3, 'nl', '', 'Na het eerste contact via mail of telefonisch, is het in sommige gevallen al meteen duidelijk hoe de tekening eruit komt te zien. In dat geval wordt er een prijsopgave gemaakt en kan er een indien gewenst een datum gepland worden om de tekening klaar te hebben.', 1, '2016-07-23 00:00:00', '2016-08-08 18:22:26'),
(34, 3, 'nl', '', 'Het is mogelijk om zelf één of meerdere afbeeldingen of foto’s aan mij door te sturen zodat ik ze in het ontwerp kan verwerken. Dit kan verwerkt worden op verschillende formaten, papier en papierkleuren.', 2, '2016-07-23 00:00:00', '2016-08-08 18:22:30'),
(35, 4, 'en', '', 'After a first contact through e-mail or by phone, it might be clear of what is desired. I will make a cost calculation and a date on which I will have the panel ready can be set.', 1, '2016-07-23 00:00:00', '2016-08-08 18:22:56'),
(36, 4, 'en', '', 'There is the option to sent me one or several pictures. Several pictures can be combined to make one panel. These panels can be made in different sizes. \nThe background can be the same as the wall, where the panel will be, or any other colour. Just consider where it will come and how to attach it.', 2, '2016-07-23 00:00:00', '2016-08-08 18:23:00'),
(37, 4, 'nl', '', 'Na het eerste contact via mail of telefonisch, is het in sommige gevallen al meteen duidelijk hoe het paneel eruit komt te zien. In dat geval wordt er een prijsopgave gemaakt en kan er een indien gewenst een datum gepland worden om paneel klaar te hebben.', 1, '2016-07-23 00:00:00', '2016-08-08 18:23:32'),
(38, 4, 'nl', '', 'Het is mogelijk om zelf één of meerdere afbeeldingen of foto’s aan mij door te sturen zodat ik ze in het ontwerp kan verwerken. Dit kan verwerkt worden op verschillende formaten. De ondergrond kan dezelfde kleur als de bestaande muur krijgen of geschilderd worden in elke andere kleur.\nHoud hier rekening mee waar het geplaatst wordt. En hoe het bevestigt moet worden.', 2, '2016-07-23 00:00:00', '2016-08-08 18:23:40'),
(39, 5, 'en', '', 'Would you like a wallpainting but have no idea what? Or have no idea what to choose?\nThen I have some tips which can help you to make a decision.', 1, '2016-07-23 00:00:00', '2016-08-08 18:06:08'),
(40, 5, 'en', '', 'Before you let me make a wallpainting it is good to consider the following things:', 2, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(41, 5, 'en', '', 'Would you like a wallpainting to coverup a whole wall or just a part, for example above a baby crib or changing place? Is it a big or small room? When the room is small many times it looks better when a wall is partly covert.', 3, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(42, 5, 'en', '', 'On which of the existing wall or walls the painting should be? Think about the furniture where it will be placed. Sometimes it is good to consider future use of the room.', 4, '2016-07-23 00:00:00', '2016-08-08 18:24:04'),
(43, 5, 'en', '', 'Would you like to have a wall painting specific for gender or rather neutral? It is possible with some accent colors to make it more gender specific. This can later be adjusted for the opposite gender.\r\nA teenager might have there own wishes, these can be taking into the design.', 5, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(44, 5, 'en', '', 'Which will be the background colour? It is not a necessity to have a white background to make a wall painting. A different background colour might give a wonderful effect.', 6, '2016-07-23 00:00:00', '2016-08-08 18:06:41'),
(45, 5, 'en', '', 'Personal elements like a holiday picture, a name, a stuffed animal or pet, can make it very unique!', 7, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(46, 5, 'en', '', 'It is also very important to remember which budget you will have. It is possible to make a wall painting according to a budget.', 8, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(47, 5, 'nl', '', 'Wil je graag een muurschildering laten maken maar weet je nog niet precies wat? Of weet je door de vele voorbeelden niet meer wat je moet kiezen?\r\nHieronder volgen een aantal tips die je kunnen helpen bij het kiezen of samenstellen van een muurschildering.', 1, '2016-07-23 00:00:00', '2016-07-23 12:00:41'),
(48, 5, 'nl', '', 'Voordat je een muurschildering laat maken, is het handig om al eens over de volgende dingen na te denken:', 2, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(49, 5, 'nl', '', 'Wil je een muurschildering die de hele wand in beslag neemt of alleen een gedeelte, bv. boven het bedje of commode? Is het een groot of juist een heel klein kamertje? Bij een heel klein kamertje is het vaak mooier om een gedeelte van de wand te beschilderen.', 3, '2016-07-23 00:00:00', '2016-08-08 18:26:22'),
(50, 5, 'nl', '', 'Op welke wand of wanden moet de muurschildering komen? Denk hierbij ook aan de indeling van de meubels. Vaak kan bij de schildering ook alvast rekening worden gehouden met een eventuele toekomstige verandering van indeling, als bijvoorbeeld de commode wegvalt en er een “groot” bed in komt. Zo blijft de schildering ook langer “bruikbaar”.', 4, '2016-07-23 00:00:00', '2016-08-08 18:26:34'),
(51, 5, 'nl', '', 'Moet de schildering worden afgestemd op het geslacht van jullie kindje of moeten de kleuren en/of het thema neutraal blijven? Vaak kan met enkele kleuraccenten al een jongens– of meisjessfeer gemaakt worden. Deze accenten zijn ook weer makkelijk aan te passen aan een eventueel volgend kindje. Een wat ouder kind heeft zelf vaak al specifieke wensen, deze kunnen in de schildering verwerkt worden.', 5, '2016-07-23 00:00:00', '2016-08-08 18:26:47'),
(52, 5, 'nl', '', 'Welke kleur krijgt de ondergrond? Het is niet zo dat de muur per sé wit moet zijn om er een muurschildering op te maken. Soms geeft een andere ondergrond kleur juist een heel mooi effect.', 6, '2016-07-23 00:00:00', '2016-08-08 18:27:12'),
(53, 5, 'nl', '', 'Persoonlijke elementen zoals een vakantie foto, een naam, een knuffel of huisdier, zorgen voor een unieke schildering!', 7, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(54, 5, 'nl', '', 'Ook zeker niet onbelangrijk: Welk budget heb je te besteden? Het is ook mogelijk om aan de hand van een bepaald budget een schildering te laten maken.', 8, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(55, 2, 'fi', '', 'Ensimmäisen yhteydenoton jälkeen suunnitelma voi olla jo valmis. Teen kustannusarvion ja ehdotan päivää, jolloin maalaus on valmis maalattavaksi.', 1, '2016-07-22 00:00:00', '2016-08-10 19:49:06'),
(56, 2, 'fi', '', 'Voit halutessasi lähettää minulle joko yhden tai useampia kuvia. Useita kuvia voidaan yhdistää samaan maalaukseen. Voin myös suunnitella designin.', 2, '1970-01-10 00:00:00', '2016-08-10 19:49:22'),
(57, 2, 'fi', '', 'Huonekalut tai huonekalujen osat, joihin toivotaan maalauksia, voidaan toimittaa minulle tai voin myös hakea ne. Voin myös maalata maalauksen paikan päällä, tässä tapauksessa tuon mukaani kaiken tarvitsemani materiaalin.', 3, '1970-01-10 00:00:00', '2016-08-10 19:49:52'),
(58, 5, 'fi', '', 'Haluaisitko seinämaalauksen, mutta sinulla ei ole suunnitelma? \nTässä muutamia vihjeitäni päätöksenteon tueksi.', 1, '2016-07-23 00:00:00', '2016-08-10 19:51:06'),
(59, 5, 'fi', '', 'Ennen kuin seinämaalaus toteutetaan on hyvä huomioida seuraavat asiat:', 2, '2016-07-23 00:00:00', '2016-08-10 19:51:20'),
(61, 5, 'fi', '', 'Haluaisitko seinämaalauksestasi osittain seinän peittävän, esimerkiksi lapsen sängyn viereen?\nOnko huone, johon maalaus tulee, pieni vai iso? Usein pieneen huoneeseen sopii vain osan seinästä pettävä maalaus.', 3, '2016-07-23 00:00:00', '2016-08-10 19:56:30'),
(62, 5, 'fi', '', 'Mihin huoneen seinistä tai seiniin maalaus tulisi? Ota suunnittelussa huomioon huoneen kalustus. Joskus on myös hyvä miettiä huoneen tulevaa käyttöä.', 4, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(63, 5, 'fi', '', 'Haluaisitko seinämaalauksen jollekin tietylle henkilölle vai neutraalin maalauksen? Värivalinnoilla voidaan vaikuttaa maalauksen soveltuvuuteen joko tytölle tai pojalle. Tämä voidaan myöhemmin muuttaa toisinpäin.\nNuorilla voi olla heidän omat toiveensa, jotka voidaan ottaa suunnittelussa huomioon.', 5, '2016-07-23 00:00:00', '2016-08-10 19:57:16'),
(64, 5, 'fi', '', 'Minkä värinen tulisi seinän olla? Seinämaalauksen toteuttamiseen ei aina tarvita valkoista taustaväriä. Eri taustaväri voi tuoda maalaukselle hienon efektin.', 6, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(65, 5, 'fi', '', 'Persoonalliset toiveet kuten lomakuva, nimi tai lemmikki voivat tehdä maalauksesta todella uniikin!', 7, '2016-07-23 00:00:00', '2016-08-10 19:58:03'),
(66, 5, 'fi', '', 'Suunnittelussa on huomioitava maalaukselle ajateltu budjetti. Seinämaalaus voidaan toteuttaa budjetin mukaisesti.', 8, '2016-07-23 00:00:00', '2016-08-08 18:28:55'),
(67, 4, 'fi', '', 'Ensimmäisen yhteydenoton jälkeen suunnitelma voi olla jo valmis. Teen kustannusarvion ja ehdotan päivää, jolloin maalaus on valmis maalattavaksi.', 1, '2016-07-23 00:00:00', '2016-08-09 14:34:13'),
(69, 4, 'fi', '', 'Voit halutessasi lähettää minulle joko yhden tai useampia kuvia. Useita kuvia voidaan yhdistää samaan maalaukseen. Voin myös suunnitella designin. Paneeleita voidaan toteuttaa erikokoisina.', 2, '2016-07-23 00:00:00', '2016-08-10 20:00:31'),
(70, 4, 'fi', '', 'Paneelin taustaväri voi olla sama kuin seinän, jolle paneeli tulee tai minkä tahansa muun värinen. Maalauspaneelien suunnittelussa tulee ottaa huomioon suunniteltu paikka ja kuinka paneeli kiinnitetään.', 3, '2016-07-23 00:00:00', '2016-08-10 20:01:07'),
(71, 1, 'fi', '', 'Haluatko seinämaalauksen? Kaunis seinämaalaus on todellinen katseenvangitsija!\nSe on omaperäinen ja trendikäs tapa koristaa yrityksen aula, toimistohuone tai yksityiskoti. Seinämaalaukset tuovat iloisen, lämpimän ja persoonallisen tunnelman ja ne voidaan toteuttaa halusi mukaisesti.', 1, '2016-07-22 00:00:00', '2016-08-10 20:11:36'),
(73, 1, 'fi', '', 'Ota minuun yhteyttä joka puhelimiste tai sähköpostilla, niin keskustelemme toiveestasi ja sen toteuttamisesta.', 2, '2016-07-23 00:00:00', '2016-08-10 20:11:52'),
(74, 1, 'fi', 'Materiaali', 'Käyttämäni maalit ovat vesiliukoisia ja vähän hajustettuja. Maalaukset kuivuvat nopeasti ja ovat vedenkestäviä. \nVähän kostutettu kangas maalauksen puhdistamiseen. Työssäni tarvitsemani materiaalit tuon mukaani.', 4, '2016-07-23 00:00:00', '2016-08-10 20:12:03'),
(75, 1, 'fi', 'Seinä', 'Maalauksen toteuttamiseen soveltuu parhaiten sileä maalattu seinä. Ilmoitathan minulle, jos seinä on tummasävyinen. \nEpätasaisempaakin seinäpintaa on mahdollista maalata, mutta maalauksen tekeminen kestää pidempää ja on hieman hintavampaa.\nHyvin epätasaiselle seinäpinnalle suosittelen paneelia, joka voidaan sijoittaa minne tahansa.', 5, '2016-07-23 00:00:00', '2016-08-10 20:12:20'),
(76, 1, 'fi', 'Kuva', 'Ennen työn aloittamista toivon saavani kuvan seinistä ja koko huoneesta, jonne maalausta toivottaan.\nVoin luoda idean itse tai voit lähettää itse kuvan (tämä voi olla kuva, piirros, itse tehty luonnos tai mitä tahansa), minä voin käyttää ideasi suunnittelussani.', 6, '2016-07-23 00:00:00', '2016-08-10 20:12:33'),
(77, 1, 'fi', 'Kustannukset', 'Teen aina toivotusta työstä hinta-arvion, joten kustannukset eivät ole Sinulle yllätys. Kustannusarvioni perustuu arvioituihin työtunteihin, materiaaleihin ja kilometreihin.\n\nHinnoitteluni: \n32,50 €/tunti + 15 € materiaalimaksu + 0,20 € km + 24% Vero. ', 7, '2016-07-23 00:00:00', '2016-08-10 20:15:04'),
(78, 1, 'fi', '', 'Suurin osa seinämaalauksista valmistuu yhden tai kahden päivää aikana, riippuu kuvioiden määrästä ja koosta.\nVaativampiin seinämaalauksiin, joissa on paljon kuvioita tai eläimiä, teemme yhdessä toteutussuunnitelman.', 9, '2016-07-23 00:00:00', '2016-08-10 20:13:45'),
(79, 1, 'fi', '', 'Hinnasta voidaan aina neuvotella ja maalauspäivä voidaa peruuttaa ilman kustannuksia vielä päivää ennen.', 10, '2016-07-23 00:00:00', '2016-08-08 18:43:46'),
(80, 1, 'fi', '', 'Toimin Etelä-Suomen alueella ja minulla ei ole jonotuslistaa. Voimme myös keskustella työn toteuttamisesta muualla Suomeen.', 11, '2016-07-23 00:00:00', '2016-08-08 18:43:43'),
(81, 3, 'fi', '', 'Ensimmäisen yhteydenoton jälkeen suunnitelma voi olla jo valmis. Teen kustannusarvion ja ehdotan päivää, jolloin maalaus on valmis maalattavaksi.', 1, '2016-07-23 00:00:00', '2016-08-08 18:21:45'),
(82, 3, 'fi', '', 'Voit halutessasi lähettää minulle joko yhden tai useampia kuvia. Useita kuvia voidaan yhdistää samaan maalaukseen. \nPiirros voi olla tehty minkä tahansa kokoiselle, väriselle tai laatuiselle paperille.', 2, '2016-07-23 00:00:00', '2016-08-10 20:16:47');

--
-- Dumping data for table `process_translation`
--

INSERT INTO `process_translation` (`id`, `process_page_id`, `language`, `title`, `intro`, `time_created`, `time_edited`) VALUES
(1, 1, 'en', 'Wallpaintings', 'Process for a wall painting', '2016-07-22 00:00:00', '2016-07-22 14:35:05'),
(4, 2, 'en', 'Furniture', 'Process for furniture', '2016-07-22 00:00:00', '2016-07-22 14:38:37'),
(5, 1, 'nl', 'Muurschilderingen', 'Werkwijze voor muurschildering', '2016-07-22 00:00:00', '2016-07-22 14:35:05'),
(6, 1, 'fi', 'Seinämaalaukset', 'Seinämaalauksen tilaaminen', '2016-07-22 00:00:00', '2016-08-08 18:34:25'),
(7, 2, 'nl', 'Meubels', 'Werkwijze voor Meubels', '2016-07-22 00:00:00', '2016-07-22 16:01:28'),
(8, 2, 'fi', 'Huonekalut', 'Huonekalun koristelu/maalaaminen', '2016-07-22 00:00:00', '2016-08-08 17:54:58'),
(9, 3, 'en', 'Drawings', 'Process for drawings', '2016-07-23 00:00:00', '2016-07-23 11:28:53'),
(10, 3, 'nl', 'Tekeningen', 'Process for drawings', '2016-07-23 00:00:00', '2016-07-23 11:28:53'),
(11, 3, 'fi', 'Piirrokset', 'Piirrokset', '2016-07-23 00:00:00', '2016-08-09 14:33:45'),
(12, 4, 'en', 'Panels', 'Process for panels', '2016-07-23 00:00:00', '2016-07-23 11:41:47'),
(13, 4, 'nl', 'Panelen', 'Werkwijze voor panelen', '2016-07-23 00:00:00', '2016-07-23 11:41:58'),
(14, 4, 'fi', 'Paneelit', 'Paneelin maalaaminen', '2016-07-23 00:00:00', '2016-08-08 18:30:52'),
(15, 5, 'en', 'Inspiration', 'Inspiration needed?', '2016-07-23 00:00:00', '2016-07-23 11:47:07'),
(16, 5, 'nl', 'Inspiratie', 'Inspiratie nodig?', '2016-07-23 00:00:00', '2016-07-23 11:47:07'),
(19, 5, 'fi', 'Inspiraatio', 'Tarvitsetko inspiraatiota?', '2016-07-23 00:00:00', '2016-08-08 17:58:20');

--
-- Dumping data for table `ui_text`
--

INSERT INTO `ui_text` (`id`, `language`, `code`, `content`, `time_edited`, `time_created`) VALUES
(1, 'en', 'CONTACT_TITLE', 'Contact', NULL, '2016-03-11 20:00:00'),
(2, 'fi', 'CONTACT_TITLE', 'Yhteydenotto', NULL, '2016-03-11 20:00:00'),
(3, 'fi', 'CONTACT_FIELD_NAME', 'Nimi', '2016-08-10 20:02:57', '2016-04-02 21:00:00'),
(4, 'fi', 'CONTACT_FIELD_EMAIL', 'Sähköpostiosoite', '2016-06-27 16:01:38', '2016-04-02 21:00:00'),
(5, 'fi', 'CONTACT_FIELD_SUBJECT', 'Aihe', NULL, '2016-04-02 21:00:00'),
(6, 'fi', 'CONTACT_FIELD_MESSAGE', 'Viesti', NULL, '1970-01-10 00:00:00'),
(7, 'en', 'CONTACT_FIELD_NAME', 'Name', '2016-06-26 14:28:47', '2016-04-02 18:00:00'),
(8, 'en', 'CONTACT_FIELD_EMAIL', 'E-mail address', '2016-06-26 14:49:58', '2016-04-02 18:00:00'),
(9, 'en', 'CONTACT_FIELD_SUBJECT', 'Subject', NULL, '2016-04-02 18:00:00'),
(10, 'en', 'CONTACT_FIELD_MESSAGE', 'Question/comment', '2016-06-26 14:29:27', '1970-01-10 00:00:00'),
(11, 'fi', 'CONTACT_SUBMIT', 'Lähetä', '2016-08-10 20:03:33', '2016-04-02 21:00:00'),
(12, 'en', 'CONTACT_SUBMIT', 'Send', '2016-07-20 20:13:59', '2016-04-02 21:00:00'),
(13, 'fi', 'CONTACT_SUBMIT_TEXT', 'Kiitos yhteydenotostasi. Olen yhteydessä sinuun pian.', '2016-08-08 17:10:24', '2016-04-02 21:00:00'),
(14, 'en', 'CONTACT_SUBMIT_TEXT', 'Thank you. I''ll be in touch with you soon.', '2016-08-08 17:10:28', '2016-04-02 21:00:00'),
(15, 'fi', 'CONTACT_FIELD_ERROR_NAME', 'Nimi ei voi olla tyhjä.', NULL, '2016-04-02 18:00:00'),
(16, 'fi', 'CONTACT_FIELD_ERROR_EMAIL', 'Sähköpostiosoite on oltava oikea.', NULL, '2016-04-02 18:00:00'),
(17, 'fi', 'CONTACT_FIELD_ERROR_SUBJECT', 'Aihe ei voi olla tyhjä.', NULL, '2016-04-02 18:00:00'),
(18, 'fi', 'CONTACT_FIELD_ERROR_MESSAGE', 'Viestissä on oltava enemmän kuin kolme merkkiä.', NULL, '1970-01-10 00:00:00'),
(19, 'en', 'CONTACT_FIELD_ERROR_NAME', 'Your name can´t be empty.', NULL, '2016-04-02 15:00:00'),
(20, 'en', 'CONTACT_FIELD_ERROR_EMAIL', 'Your e-mail address must be a real address.', NULL, '2016-04-02 15:00:00'),
(21, 'en', 'CONTACT_FIELD_ERROR_SUBJECT', 'The subject can´t be empty.', NULL, '2016-04-02 15:00:00'),
(22, 'en', 'CONTACT_FIELD_ERROR_MESSAGE', 'The message must be longer than three characters.', NULL, '1970-01-10 00:00:00'),
(23, 'fi', 'CONTACT_FIELD_ERROR___CSRF_TOKEN', 'Pahoittelumme, mutta lomake on vanhentunut. Ole hyvä ja yritä uudelleen.', '2016-04-15 19:59:42', '2016-04-13 21:00:00'),
(24, 'en', 'CONTACT_FIELD_ERROR___CSRF_TOKEN', 'We''re sorry but the form has expired. Please try again.', '2016-04-15 19:58:48', '2016-04-13 21:00:00'),
(26, 'fi', 'NAV_FRONT_PAGE', 'Etusivu', '2016-06-21 18:14:52', '2016-03-11 20:00:00'),
(27, 'en', 'NAV_FRONT_PAGE', 'Home', '2016-06-21 18:14:54', '2016-03-11 20:00:00'),
(28, 'en', 'NAV_CONTACT', 'Contact', NULL, '2016-03-11 20:00:00'),
(30, 'fi', 'NAV_CONTACT', 'Yhteydenotto', NULL, '2016-03-11 20:00:00'),
(31, 'fi', 'FRONT_PAGE_PROMO', 'Seinämaalaukset, Huonekalujen koristelut ja Piirrokset\n\nlasten huoneisiin, vauvan huoneeseen, makuuhuoneeseen, olohuoneeseen, käytävään, keittiöön, ravintolaan, saunaan,  kahvilaan, sairaalaan, päiväkotiin, terveyskeskukseen tai mihin tahansa!', '2016-08-09 15:11:49', '2016-03-05 20:00:00'),
(33, 'en', 'FRONT_PAGE_PROMO', 'Wallpaintings, furniture decorations and drawings\n\nfor kids room, babyroom, bedroom, living room, hallway, kitchen, restaurant, sauna, café, hospital, daycare, health facility or any other company!', '2016-07-05 19:39:12', '2016-03-05 20:00:00'),
(34, 'fi', 'FRONT_PAGE_TITLE', 'Room for color', '2016-06-21 18:04:39', '2016-03-05 20:00:00'),
(36, 'en', 'FRONT_PAGE_TITLE', 'Room for color', '2016-06-21 18:04:50', '2016-03-05 20:00:00'),
(37, 'fi', 'EXCEPTION_PAGE_TITLE', 'Virhe', NULL, '2016-03-05 20:00:00'),
(39, 'en', 'EXCEPTION_PAGE_TITLE', 'Error', NULL, '2016-03-05 20:00:00'),
(40, 'nl', 'NAV_ABOUT', 'Wie en Wat', NULL, '1970-01-10 00:00:00'),
(41, 'en', 'NAV_ABOUT', 'About me', NULL, '1970-01-10 00:00:00'),
(42, 'fi', 'NAV_ABOUT', 'Tietoa minusta', NULL, '1970-01-10 00:00:00'),
(43, 'nl', 'CONTACT_TITLE', 'Contact', NULL, '2016-03-11 20:00:00'),
(44, 'nl', 'NAV_FRONT_PAGE', 'Home', '2016-06-21 18:14:54', '2016-03-11 20:00:00'),
(45, 'nl', 'NAV_CONTACT', 'Contact', NULL, '2016-03-11 20:00:00'),
(46, 'nl', 'FRONT_PAGE_TITLE', 'Room for color', '2016-06-21 18:04:50', '2016-03-05 20:00:00'),
(47, 'nl', 'EXCEPTION_PAGE_TITLE', 'Fout', '2016-06-26 12:43:01', '2016-03-05 20:00:00'),
(48, 'nl', 'FRONT_PAGE_PROMO', 'Muurschilderingen, meubel decoratie en tekeningen\n\nvoor kinderkamer, babykamer, slaapkamer, woonkamer, hal, keuken, restaurant, sauna, café, ziekenhuis, dagopvang, zorginstelling en andere ondernemingen!', '2016-07-05 19:39:27', '2016-03-05 20:00:00'),
(51, 'en', 'ABOUT_PAGE_TITLE', 'About me', NULL, '1970-01-10 00:00:00'),
(52, 'nl', 'ABOUT_PAGE_TITLE', 'Wie en Wat', NULL, '1970-01-10 00:00:00'),
(53, 'fi', 'ABOUT_PAGE_TITLE', 'Tietoa minusta', NULL, '1970-01-10 00:00:00'),
(54, 'en', 'CONTACT_PAGE_TEXT', 'Would You have questions and/or comments? Please fill in this form.\r\nI will get in contact with You as soon as possible.', NULL, '1970-01-10 00:00:00'),
(55, 'nl', 'CONTACT_PAGE_TEXT', 'Heeft U vragen en/of opmerkingen? Vul dan het onderstaand formulier in.\r\nIk neem dan zo spoedig mogelijk contact met U op.', NULL, '1970-01-10 00:00:00'),
(56, 'en', 'CONTACT_PLACEHOLDER_MESSAGE', 'Please try to give a complete description.', '2016-06-26 14:27:00', '1970-01-10 00:00:00'),
(57, 'nl', 'CONTACT_PLACEHOLDER_MESSAGE', 'Geef a.u.b. een zo volledig mogelijke omschrijving.', NULL, '1970-01-10 00:00:00'),
(58, 'en', 'CONTACT_FIELD_PHONE', 'Telephone number', NULL, '1970-01-10 00:00:00'),
(59, 'nl', 'CONTACT_FIELD_PHONE', 'Telefoonnummer', NULL, '1970-01-10 00:00:00'),
(60, 'nl', 'CONTACT_SUBMIT', 'Verzend gegevens', NULL, '2016-04-02 21:00:00'),
(61, 'nl', 'CONTACT_FIELD_NAME', 'Naam', NULL, '2016-04-02 18:00:00'),
(62, 'nl', 'CONTACT_FIELD_EMAIL', 'E-mail adres', NULL, '2016-04-02 21:00:00'),
(63, 'nl', 'CONTACT_FIELD_MESSAGE', 'Vraag/opmerkingen', '2016-06-26 14:29:27', '1970-01-10 00:00:00'),
(64, 'fi', 'CONTACT_FIELD_PHONE', 'Puhelinnumero', NULL, '1970-01-10 00:00:00'),
(65, 'fi', 'CONTACT_PLACEHOLDER_MESSAGE', 'Ole hyvä ja yritä kertoa kysymyksesi ja kommenttisi mahdollisimman selvästi.', '2016-08-10 20:03:27', '1970-01-10 00:00:00'),
(66, 'nl', 'CONTACT_SUBMIT_TEXT', 'Dank je. Ik zal binnenkort contact met u op.', '2016-08-08 17:11:04', '2016-04-02 21:00:00'),
(67, 'fi', 'CONTACT_PAGE_TEXT', 'Onko sinulla kysymyksiä ja/tai kommentteja? Ole hyvä ja täytä tämä lomake.\nOtan sinun yhteyttä niin pian kuin mahdollista.', '2016-08-10 20:02:41', '1970-01-10 00:00:00'),
(68, 'en', 'NAV_WALLPAINTINGS', 'Paintings', '2016-07-02 11:33:21', '2016-07-01 21:00:00'),
(69, 'nl', 'NAV_WALLPAINTINGS', 'Schilderijen', '2016-07-02 11:33:24', '2016-07-01 21:00:00'),
(70, 'fi', 'NAV_WALLPAINTINGS', 'Maalaukset', '2016-07-02 11:33:24', '2016-07-01 21:00:00'),
(71, 'fi', 'GALLERY_NO_MORE_IMAGES', 'Ei enempää kuvia.', '2016-07-23 10:36:44', '2016-07-09 21:00:00'),
(72, 'en', 'GALLERY_NO_MORE_IMAGES', 'No more images.', NULL, '2016-07-09 21:00:00'),
(73, 'nl', 'GALLERY_NO_MORE_IMAGES', 'Geen afbeeldingen.', NULL, '2016-07-09 21:00:00'),
(74, 'fi', 'GALLERY_NEXT', 'Seuraava', '2016-07-13 18:02:00', '2016-07-12 21:00:00'),
(75, 'en', 'GALLERY_NEXT', 'Next', '2016-07-13 18:01:57', '2016-07-12 21:00:00'),
(76, 'nl', 'GALLERY_NEXT', 'Volgende', '2016-07-13 18:01:54', '2016-07-12 21:00:00'),
(77, 'nl', 'GALLERY_PREVIOUS', 'Vorige', '2016-07-13 15:01:54', '2016-07-12 18:00:00'),
(78, 'en', 'GALLERY_PREVIOUS', 'Previous', '2016-07-13 15:01:57', '2016-07-12 18:00:00'),
(79, 'fi', 'GALLERY_PREVIOUS', 'Edellinen', '2016-07-13 15:02:00', '2016-07-12 18:00:00'),
(80, 'en', 'NAV_GUESTBOOK', 'Guestbook', NULL, '2016-07-19 21:00:00'),
(81, 'nl', 'NAV_GUESTBOOK', 'Gastenboek', NULL, '2016-07-19 21:00:00'),
(82, 'fi', 'NAV_GUESTBOOK', 'Vieraskirja', NULL, '2016-07-19 21:00:00'),
(83, 'en', 'GUESTBOOK_PAGE_TEXT', 'On this page You can find customers comments of their wallpainting, furniture decoration or drawing, \r\nwhich they let be made by Room for Color.\r\n\r\nYou can also leave here your experience.', '2016-07-20 19:00:01', '2016-07-19 21:00:00'),
(84, 'nl', 'GUESTBOOK_PAGE_TEXT', 'Op deze pagina kunt U ervaringen van mensen lezen die een muurschildering, meubel decoratie of een tekening\r\nhebben laten maken door Room for Color.\r\n\r\nOok kunt U hier uw ervaring delen.', '2016-07-20 19:00:03', '2016-07-19 21:00:00'),
(85, 'fi', 'GUESTBOOK_PAGE_TEXT', 'Tältä sivulta löydät asiakkaitteni kommentteja tekemistäni seinämaalauksista ja huonekalujen koristeluista.\n\nVoit myös jättää oman asiakasarviosi.', '2016-08-09 14:36:53', '2016-07-19 21:00:00'),
(86, 'en', 'GUESTBOOK_PLACEHOLDER_MESSAGE', '', NULL, '2016-07-19 21:00:00'),
(87, 'nl', 'GUESTBOOK_PLACEHOLDER_MESSAGE', '', NULL, '2016-07-19 21:00:00'),
(88, 'fi', 'GUESTBOOK_PLACEHOLDER_MESSAGE', '', NULL, '2016-07-19 21:00:00'),
(89, 'nl', 'CONTACT_FIELD_ERROR___CSRF_TOKEN', 'Het spijt ons, maar de vorm is verlopen. Probeer het opnieuw.', '2016-04-15 19:58:48', '2016-04-13 21:00:00'),
(90, 'nl', 'CONTACT_FIELD_ERROR_EMAIL', 'Uw e-mailadres moet een echte e-mailadres.', NULL, '2016-04-02 15:00:00'),
(91, 'nl', 'CONTACT_FIELD_ERROR_MESSAGE', 'De boodschap moet langer zijn dan drie karakters.', NULL, '1970-01-10 00:00:00'),
(92, 'nl', 'CONTACT_FIELD_ERROR_NAME', 'Voer uw naam in.', NULL, '2016-04-02 15:00:00'),
(93, 'nl', 'CONTACT_FIELD_ERROR_SUBJECT', 'Vul een onderwerp.', NULL, '2016-04-02 15:00:00'),
(94, 'nl', 'CONTACT_FIELD_SUBJECT', 'Onderwerpen', NULL, '2016-04-02 18:00:00'),
(95, 'fi', 'GUESTBOOK_FIELD_ERROR___CSRF_TOKEN', 'Pahoittelumme, mutta lomake on vanhentunut. Ole hyvä ja yritä uudelleen.', '2016-07-20 19:17:57', '2016-04-13 18:00:00'),
(96, 'en', 'GUESTBOOK_FIELD_ERROR___CSRF_TOKEN', 'We''re sorry but the form has expired. Please try again.', '2016-07-20 19:17:57', '2016-04-13 18:00:00'),
(97, 'nl', 'GUESTBOOK_FIELD_ERROR___CSRF_TOKEN', 'Het spijt ons, maar de vorm is verlopen. Probeer het opnieuw.', '2016-07-20 19:17:57', '2016-04-13 18:00:00'),
(98, 'fi', 'GUESTBOOK_FIELD_ERROR_MESSAGE', 'Viestissä on oltava enemmän kuin kolme merkkiä.', '2016-07-20 19:17:57', '1970-01-10 00:00:00'),
(99, 'en', 'GUESTBOOK_FIELD_ERROR_MESSAGE', 'The message must be longer than three characters.', '2016-07-20 19:17:57', '1970-01-10 00:00:00'),
(100, 'nl', 'GUESTBOOK_FIELD_ERROR_MESSAGE', 'De boodschap moet langer zijn dan drie karakters.', '2016-07-20 19:17:57', '1970-01-10 00:00:00'),
(101, 'fi', 'GUESTBOOK_FIELD_ERROR_NAME', 'Nimi ei voi olla tyhjä.', '2016-07-20 19:17:57', '2016-04-02 15:00:00'),
(102, 'en', 'GUESTBOOK_FIELD_ERROR_NAME', 'Your name can´t be empty.', '2016-07-20 19:17:57', '2016-04-02 12:00:00'),
(103, 'nl', 'GUESTBOOK_FIELD_ERROR_NAME', 'Voer uw naam in.', '2016-07-20 19:17:57', '2016-04-02 12:00:00'),
(104, 'fi', 'GUESTBOOK_FIELD_MESSAGE', 'Viesti', '2016-07-20 19:17:57', '1970-01-10 00:00:00'),
(105, 'en', 'GUESTBOOK_FIELD_MESSAGE', 'Message', '2016-07-20 19:17:57', '1970-01-10 00:00:00'),
(106, 'nl', 'GUESTBOOK_FIELD_MESSAGE', 'Vraag', '2016-07-20 19:17:57', '1970-01-10 00:00:00'),
(107, 'fi', 'GUESTBOOK_FIELD_NAME', 'Nimi', '2016-08-10 20:09:53', '2016-04-02 18:00:00'),
(108, 'en', 'GUESTBOOK_FIELD_NAME', 'Name', '2016-07-20 19:17:57', '2016-04-02 15:00:00'),
(109, 'nl', 'GUESTBOOK_FIELD_NAME', 'Naam', '2016-07-20 19:17:57', '2016-04-02 15:00:00'),
(110, 'fi', 'GUESTBOOK_SUBMIT', 'Lähetä suositus', '2016-07-24 15:13:24', '2016-04-02 18:00:00'),
(111, 'en', 'GUESTBOOK_SUBMIT', 'Send recommendation', '2016-07-24 15:13:31', '2016-04-02 18:00:00'),
(112, 'nl', 'GUESTBOOK_SUBMIT', 'Aanbeveling verzenden', '2016-07-24 15:13:59', '2016-04-02 18:00:00'),
(113, 'fi', 'GUESTBOOK_SUBMIT_TEXT', 'Kiitos palautteestasi.', '2016-08-03 16:03:53', '2016-04-02 18:00:00'),
(114, 'en', 'GUESTBOOK_SUBMIT_TEXT', 'Thank you for your feedback.', '2016-07-24 14:25:49', '2016-04-02 18:00:00'),
(115, 'nl', 'GUESTBOOK_SUBMIT_TEXT', '\nHartelijk dank voor uw feedback.', '2016-07-24 14:26:16', '2016-04-02 18:00:00'),
(116, 'en', 'GUESTBOOK_SHOW_FORM', 'Add recommendation', NULL, '2016-07-19 21:00:00'),
(117, 'nl', 'GUESTBOOK_SHOW_FORM', 'Voeg referentie toe', NULL, '2016-07-19 21:00:00'),
(118, 'fi', 'GUESTBOOK_SHOW_FORM', 'Lisää arvostelu', '2016-08-09 14:37:05', '2016-07-19 21:00:00'),
(119, 'en', 'GUESTBOOK_TITLE', 'Guestbook', NULL, '1970-01-10 00:00:00'),
(120, 'nl', 'GUESTBOOK_TITLE', 'Gastenboek', NULL, '2016-07-19 21:00:00'),
(121, 'fi', 'GUESTBOOK_TITLE', 'Vieraskirja', NULL, '2016-07-19 21:00:00'),
(122, 'en', 'NAV_PROCESS', 'Process', '2016-07-22 15:56:54', '2016-07-21 21:00:00'),
(123, 'nl', 'NAV_PROCESS', 'Werkwijze', '2016-07-22 15:56:56', '2016-07-21 21:00:00'),
(124, 'fi', 'NAV_PROCESS', 'Prosessi', '2016-07-22 15:56:56', '2016-07-21 21:00:00'),
(125, 'fi', 'GUESTBOOK_LOAD_MESSAGES', 'Näytä lisää suosituksia', NULL, '2016-07-23 21:00:00'),
(126, 'en', 'GUESTBOOK_LOAD_MESSAGES', 'Show more recommendations', NULL, '2016-07-23 21:00:00'),
(127, 'nl', 'GUESTBOOK_LOAD_MESSAGES', 'Toon meer aanbevelingen', NULL, '2016-07-23 21:00:00'),
(128, 'fi', 'GUESTBOOK_NO_MORE_MESSAGES', 'Kaikki suositukset näytetty.', NULL, '2016-07-23 21:00:00'),
(130, 'en', 'GUESTBOOK_NO_MORE_MESSAGES', 'All recommendations visible.', NULL, '2016-07-23 21:00:00'),
(131, 'nl', 'GUESTBOOK_NO_MORE_MESSAGES', 'Alle aanbevelingen zichtbaar.', NULL, '2016-07-23 21:00:00'),
(132, 'fi', 'GUESTBOOK_LIST_TITLE', 'Suositukset', NULL, '2016-07-23 21:00:00'),
(133, 'en', 'GUESTBOOK_LIST_TITLE', 'Recommendations', NULL, '2016-07-23 21:00:00'),
(134, 'nl', 'GUESTBOOK_LIST_TITLE', 'Aanbevelingen', NULL, '2016-07-23 21:00:00'),
(135, 'nl', 'HEADER_PROMO', 'Muurschilderingen, Meubel decoratie en Tekenigen', NULL, '2016-07-24 21:00:00'),
(136, 'en', 'HEADER_PROMO', 'Wallpaintings, furniture decoration and Drawings', NULL, '2016-07-24 21:00:00'),
(137, 'fi', 'HEADER_PROMO', 'Seinämaalaukset, Huonekalujen koristelut ja Piirrokset', '2016-08-09 20:38:49', '2016-07-24 21:00:00'),
(138, 'en', 'NAV_FURNITURE', 'Furniture', NULL, '2016-07-30 21:00:00'),
(139, 'en', 'NAV_DRAWINGS', 'Drawings', '2016-07-31 12:55:16', '2016-07-30 21:00:00'),
(140, 'nl', 'NAV_FURNITURE', 'Meubels', NULL, '2016-07-30 21:00:00'),
(141, 'nl', 'NAV_DRAWINGS', 'Tekeningen', '2016-07-31 12:55:16', '2016-07-30 21:00:00'),
(142, 'fi', 'NAV_DRAWINGS', 'Piirrokset', '2016-07-31 12:55:16', '2016-07-30 21:00:00'),
(143, 'fi', 'NAV_FURNITURE', 'Huonekalut', NULL, '2016-07-30 21:00:00'),
(144, 'en', 'UP', 'Top', NULL, '2016-08-02 21:00:00'),
(145, 'nl', 'UP', 'Terug', NULL, '2016-08-02 21:00:00'),
(146, 'fi', 'UP', 'Ylös', NULL, '2016-08-02 21:00:00'),
(147, 'fi', 'CONTACT_TEXT_NAME', 'Fiona Ansink', NULL, '2016-08-07 12:37:37'),
(148, 'fi', 'CONTACT_TEXT_STREET_ADDRESS', 'Värjärinkatu 9', NULL, '2016-08-07 12:37:37'),
(149, 'fi', 'CONTACT_TEXT_POSTAL_CODE', '03600', NULL, '2016-08-07 12:37:37'),
(150, 'fi', 'CONTACT_TEXT_CITY', 'Karkkila,', '2016-08-07 16:01:35', '2016-08-07 12:37:37'),
(151, 'fi', 'CONTACT_TEXT_PHONE', '(00358) 0440610497', NULL, '2016-08-07 12:37:37'),
(152, 'fi', 'CONTACT_TEXT_BUSINESS_ID', 'Y-tunnus: 2755838-9', NULL, '2016-08-07 12:37:37'),
(153, 'nl', 'CONTACT_TEXT_NAME', 'Fiona Ansink', NULL, '2016-08-07 12:37:37'),
(154, 'nl', 'CONTACT_TEXT_STREET_ADDRESS', 'Värjärinkatu 9', NULL, '2016-08-07 12:37:37'),
(155, 'nl', 'CONTACT_TEXT_POSTAL_CODE', '03600', NULL, '2016-08-07 12:37:37'),
(156, 'nl', 'CONTACT_TEXT_CITY', 'Karkkila,', '2016-08-07 16:01:41', '2016-08-07 12:37:37'),
(157, 'nl', 'CONTACT_TEXT_PHONE', '(00358) 0440610497', NULL, '2016-08-07 12:37:37'),
(158, 'nl', 'CONTACT_TEXT_BUSINESS_ID', 'Zakelijke ID: 2755838-9', NULL, '2016-08-07 12:37:37'),
(159, 'en', 'CONTACT_TEXT_NAME', 'Fiona Ansink', NULL, '2016-08-07 12:37:37'),
(160, 'en', 'CONTACT_TEXT_STREET_ADDRESS', 'Värjärinkatu 9', NULL, '2016-08-07 12:37:37'),
(161, 'en', 'CONTACT_TEXT_POSTAL_CODE', '03600', NULL, '2016-08-07 12:37:37'),
(162, 'en', 'CONTACT_TEXT_CITY', 'Karkkila,', '2016-08-07 16:01:44', '2016-08-07 12:37:37'),
(163, 'en', 'CONTACT_TEXT_PHONE', '(00358) 0440610497', NULL, '2016-08-07 12:37:37'),
(164, 'en', 'CONTACT_TEXT_BUSINESS_ID', 'Business ID: 2755838-9', NULL, '2016-08-07 12:37:37'),
(167, 'nl', 'CONTACT_TEXT_EMAIL_ADDRESS', 'fiona@roomforcolor.fi', NULL, '2017-02-04 22:00:00'),
(166, 'en', 'CONTACT_TEXT_EMAIL_ADDRESS', 'fiona@roomforcolor.fi', NULL, '2017-02-04 22:00:00'),
(165, 'fi', 'CONTACT_TEXT_EMAIL_ADDRESS', 'fiona@roomforcolor.fi', NULL, '2017-02-04 22:00:00');

-- 210327

INSERT INTO `gallery` (`id`, `action`, `time_created`, `time_edited`) VALUES (17, 'wallpaintings', '2021-03-27 14:52:59', NULL);

INSERT INTO `gallery_name` (`id`, `gallery_id`, `language`, `content`, `time_created`, `time_edited`) VALUES
      (NULL, '17', 'fi', 'Akryylikaato', '2021-03-27 14:54:25', NULL)
    , (NULL, '17', 'en', 'Acrylic Pouring', '2021-03-27 14:54:25', NULL)
    , (NULL, '17', 'nl', 'Acryl gieten', '2021-03-27 14:54:25', NULL)
    ;

INSERT INTO `gallery` (`id`, `action`, `time_created`, `time_edited`) VALUES (18, 'wallpaintings', '2021-03-27 14:52:59', NULL);

INSERT INTO `gallery_name` (`id`, `gallery_id`, `language`, `content`, `time_created`, `time_edited`) VALUES
      (NULL, '18', 'fi', 'Ennen ja jälkeen', '2021-03-27 14:54:25', NULL)
    , (NULL, '18', 'en', 'Before and after', '2021-03-27 14:54:25', NULL)
    , (NULL, '18', 'nl', 'Voor en na', '2021-03-27 14:54:25', NULL)
    ;

INSERT INTO `gallery` (`id`, `action`, `time_created`, `time_edited`) VALUES (19, 'wallpaintings', '2021-03-27 14:52:59', NULL);

INSERT INTO `gallery_name` (`id`, `gallery_id`, `language`, `content`, `time_created`, `time_edited`) VALUES
      (NULL, '19', 'fi', 'Seinämaalaukset', '2021-03-27 14:54:25', NULL)
    , (NULL, '19', 'en', 'Wallpaintings', '2021-03-27 14:54:25', NULL)
    , (NULL, '19', 'nl', 'Muurschilderingen', '2021-03-27 14:54:25', NULL)
    ;

INSERT INTO `image` (`id`, `thumb_uri`, `original_uri`, `is_published`, `time_edited`, `time_created`) VALUES
      (135, '/data/img/content/thumb/paintings_acrylic_pouring/1.jpg', '/data/img/content/paintings_acrylic_pouring/1.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (136, '/data/img/content/thumb/paintings_acrylic_pouring/2.jpg', '/data/img/content/paintings_acrylic_pouring/2.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (137, '/data/img/content/thumb/paintings_acrylic_pouring/3.jpg', '/data/img/content/paintings_acrylic_pouring/3.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (138, '/data/img/content/thumb/paintings_acrylic_pouring/4.jpg', '/data/img/content/paintings_acrylic_pouring/4.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (139, '/data/img/content/thumb/paintings_acrylic_pouring/5.jpg', '/data/img/content/paintings_acrylic_pouring/5.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (140, '/data/img/content/thumb/paintings_acrylic_pouring/6.jpg', '/data/img/content/paintings_acrylic_pouring/6.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (141, '/data/img/content/thumb/paintings_acrylic_pouring/7.jpg', '/data/img/content/paintings_acrylic_pouring/7.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (142, '/data/img/content/thumb/paintings_acrylic_pouring/8.jpg', '/data/img/content/paintings_acrylic_pouring/8.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (143, '/data/img/content/thumb/paintings_acrylic_pouring/9.jpg', '/data/img/content/paintings_acrylic_pouring/9.jpg', '1', NULL, '2021-03-27 15:42:53')
    ;

INSERT INTO `gallery_image` (`id`, `image_id`, `gallery_id`, `time_created`, `time_edited`) VALUES
      (NULL, 135, 17, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    , (NULL, 136, 17, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    , (NULL, 137, 17, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    , (NULL, 138, 17, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    , (NULL, 139, 17, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    , (NULL, 140, 17, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    , (NULL, 141, 17, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    , (NULL, 142, 17, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    , (NULL, 143, 17, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    ;

INSERT INTO `image` (`id`, `thumb_uri`, `original_uri`, `is_published`, `time_edited`, `time_created`) VALUES
      (144, '/data/img/content/thumb/paintings_before_and_after/1.jpg', '/data/img/content/paintings_before_and_after/1.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (145, '/data/img/content/thumb/paintings_before_and_after/2.jpg', '/data/img/content/paintings_before_and_after/2.jpg', '1', NULL, '2021-03-27 15:42:53')
    ;
INSERT INTO `gallery_image` (`id`, `image_id`, `gallery_id`, `time_created`, `time_edited`) VALUES
      (NULL, 144, 18, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    , (NULL, 145, 18, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
    ;

INSERT INTO `image` (`id`, `thumb_uri`, `original_uri`, `is_published`, `time_edited`, `time_created`) VALUES
      (146, '/data/img/content/thumb/wallpaintings/1.jpg', '/data/img/content/wallpaintings/1.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (147, '/data/img/content/thumb/wallpaintings/2.jpg', '/data/img/content/wallpaintings/2.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (148, '/data/img/content/thumb/wallpaintings/3.jpg', '/data/img/content/wallpaintings/3.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (149, '/data/img/content/thumb/wallpaintings/4.1.jpg', '/data/img/content/wallpaintings/4.1.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (150, '/data/img/content/thumb/wallpaintings/4.jpg', '/data/img/content/wallpaintings/4.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (151, '/data/img/content/thumb/wallpaintings/5.jpg', '/data/img/content/wallpaintings/5.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (152, '/data/img/content/thumb/wallpaintings/6.jpg', '/data/img/content/wallpaintings/6.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (153, '/data/img/content/thumb/wallpaintings/7.jpg', '/data/img/content/wallpaintings/7.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (154, '/data/img/content/thumb/wallpaintings/8.jpg', '/data/img/content/wallpaintings/8.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (155, '/data/img/content/thumb/wallpaintings/9.jpg', '/data/img/content/wallpaintings/9.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (156, '/data/img/content/thumb/wallpaintings/10.jpg', '/data/img/content/wallpaintings/10.jpg', '1', NULL, '2021-03-27 15:42:53')
    , (157, '/data/img/content/thumb/wallpaintings/11.jpg', '/data/img/content/wallpaintings/11.jpg', '1', NULL, '2021-03-27 15:42:53')
    ;

INSERT INTO `gallery_image` (`id`, `image_id`, `gallery_id`, `time_created`, `time_edited`) VALUES
        (NULL, 146, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 147, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 148, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 149, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 150, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 151, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 152, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 153, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 154, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 155, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 156, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      , (NULL, 157, 19, '2021-03-27 15:42:53', '2021-03-27 15:42:53')
      ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
