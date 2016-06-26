-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 21, 2016 at 09:21 PM
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

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `key`, `value`, `time_edited`, `time_created`) VALUES
(1, 'color_css_uri', '/css/color-default.css', NULL, '2016-03-13 20:00:00'),
(2, 'footer_img_uri', '/data/img/footer.png', '2016-06-16 17:30:04', '2016-03-16 20:00:00'),
(3, 'header_img_uri', '/data/img/header.png', '2016-03-26 15:34:29', '2016-03-25 20:00:00'),
(4, 'contact_email', 'matias@matias-laptop', '2016-04-02 15:37:11', '2016-04-01 18:00:00'),
(5, 'mail_server', 'localhost', '2016-04-13 16:20:29', '2016-04-12 18:00:00'),
(6, 'mail_user', '', NULL, '2016-04-12 18:00:00'),
(7, 'mail_password', '', NULL, '2016-04-12 18:00:00');

--
-- Dumping data for table `ui_text`
--

INSERT INTO `ui_text` (`id`, `language`, `code`, `content`, `time_edited`, `time_created`) VALUES
(1, 'en', 'CONTACT_TITLE', 'Contact', NULL, '2016-03-11 20:00:00'),
(2, 'fi', 'CONTACT_TITLE', 'Yhteydenotto', NULL, '2016-03-11 20:00:00'),
(3, 'fi', 'CONTACT_FIELD_NAME', 'Nimesi', NULL, '2016-04-02 21:00:00'),
(4, 'fi', 'CONTACT_FIELD_EMAIL', 'Sähköpostiosoitteesi', NULL, '2016-04-02 21:00:00'),
(5, 'fi', 'CONTACT_FIELD_SUBJECT', 'Aihe', NULL, '2016-04-02 21:00:00'),
(6, 'fi', 'CONTACT_FIELD_MESSAGE', 'Viesti', NULL, '0000-00-00 00:00:00'),
(7, 'en', 'CONTACT_FIELD_NAME', 'Your name', NULL, '2016-04-02 18:00:00'),
(8, 'en', 'CONTACT_FIELD_EMAIL', 'Your e-mail address', NULL, '2016-04-02 18:00:00'),
(9, 'en', 'CONTACT_FIELD_SUBJECT', 'Subject', NULL, '2016-04-02 18:00:00'),
(10, 'en', 'CONTACT_FIELD_MESSAGE', 'Message', NULL, '0000-00-00 00:00:00'),
(11, 'fi', 'CONTACT_SUBMIT', 'Lähetä viesti', NULL, '2016-04-02 21:00:00'),
(12, 'en', 'CONTACT_SUBMIT', 'Send message', NULL, '2016-04-02 21:00:00'),
(13, 'fi', 'CONTACT_SUBMIT_TEXT', 'Kiitos yhteydenotostasi. Olemme sinuun yhteydessä pian.', NULL, '2016-04-02 21:00:00'),
(14, 'en', 'CONTACT_SUBMIT_TEXT', 'Thank you. We''ll be in touch with you soon.', '2016-04-03 16:28:03', '2016-04-02 21:00:00'),
(15, 'fi', 'CONTACT_FIELD_ERROR_NAME', 'Nimi ei voi olla tyhjä.', NULL, '2016-04-02 18:00:00'),
(16, 'fi', 'CONTACT_FIELD_ERROR_EMAIL', 'Sähköpostiosoite on oltava oikea.', NULL, '2016-04-02 18:00:00'),
(17, 'fi', 'CONTACT_FIELD_ERROR_SUBJECT', 'Aihe ei voi olla tyhjä.', NULL, '2016-04-02 18:00:00'),
(18, 'fi', 'CONTACT_FIELD_ERROR_MESSAGE', 'Viestissä on oltava enemmän kuin kolme merkkiä.', NULL, '0000-00-00 00:00:00'),
(19, 'en', 'CONTACT_FIELD_ERROR_NAME', 'Your name can´t be empty.', NULL, '2016-04-02 15:00:00'),
(20, 'en', 'CONTACT_FIELD_ERROR_EMAIL', 'Your e-mail address must be a real address.', NULL, '2016-04-02 15:00:00'),
(21, 'en', 'CONTACT_FIELD_ERROR_SUBJECT', 'The subject can´t be empty.', NULL, '2016-04-02 15:00:00'),
(22, 'en', 'CONTACT_FIELD_ERROR_MESSAGE', 'The message must be longer than three characters.', NULL, '0000-00-00 00:00:00'),
(23, 'fi', 'CONTACT_FIELD_ERROR___CSRF_TOKEN', 'Pahoittelumme, mutta lomake on vanhentunut. Ole hyvä ja yritä uudelleen.', '2016-04-15 19:59:42', '2016-04-13 21:00:00'),
(24, 'en', 'CONTACT_FIELD_ERROR___CSRF_TOKEN', 'We''re sorry but the form has expired. Please try again.', '2016-04-15 19:58:48', '2016-04-13 21:00:00'),
(26, 'fi', 'NAV_FRONT_PAGE', 'Koti', '2016-06-21 18:14:52', '2016-03-11 20:00:00'),
(27, 'en', 'NAV_FRONT_PAGE', 'Home', '2016-06-21 18:14:54', '2016-03-11 20:00:00'),
(28, 'en', 'NAV_CONTACT', 'Contact', NULL, '2016-03-11 20:00:00'),
(30, 'fi', 'NAV_CONTACT', 'Yhteydenotto', NULL, '2016-03-11 20:00:00'),
(31, 'fi', 'FRONT_PAGE_PROMO', 'Etusivu', '2016-06-21 18:03:57', '2016-03-05 20:00:00'),
(33, 'en', 'FRONT_PAGE_PROMO', 'Front page', '2016-06-21 18:04:02', '2016-03-05 20:00:00'),
(34, 'fi', 'FRONT_PAGE_TITLE', 'Room for color', '2016-06-21 18:04:39', '2016-03-05 20:00:00'),
(36, 'en', 'FRONT_PAGE_TITLE', 'Room for color', '2016-06-21 18:04:50', '2016-03-05 20:00:00'),
(37, 'fi', 'EXCEPTION_PAGE_TITLE', 'Virhe', NULL, '2016-03-05 20:00:00'),
(39, 'en', 'EXCEPTION_PAGE_TITLE', 'Error', NULL, '2016-03-05 20:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
