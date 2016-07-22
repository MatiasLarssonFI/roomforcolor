-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 22, 2016 at 07:07 PM
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
(7, 'mail_password', '', NULL, '2016-04-12 18:00:00'),
(8, 'js_src_mode', 'debug', NULL, '2016-07-15 21:00:00'),
(9, 'js_src_version', '20160716', NULL, '2016-07-15 21:00:00'),
(10, 'css_src_version', '20160716', NULL, '2016-07-15 21:00:00');

--
-- Dumping data for table `ui_text`
--

INSERT INTO `ui_text` (`id`, `language`, `code`, `content`, `time_edited`, `time_created`) VALUES
(1, 'en', 'CONTACT_TITLE', 'Contact', NULL, '2016-03-11 20:00:00'),
(2, 'fi', 'CONTACT_TITLE', 'Yhteydenotto', NULL, '2016-03-11 20:00:00'),
(3, 'fi', 'CONTACT_FIELD_NAME', 'Nimesi', NULL, '2016-04-02 21:00:00'),
(4, 'fi', 'CONTACT_FIELD_EMAIL', 'Sähköpostiosoite', '2016-06-27 16:01:38', '2016-04-02 21:00:00'),
(5, 'fi', 'CONTACT_FIELD_SUBJECT', 'Aihe', NULL, '2016-04-02 21:00:00'),
(6, 'fi', 'CONTACT_FIELD_MESSAGE', 'Viesti', NULL, '0000-00-00 00:00:00'),
(7, 'en', 'CONTACT_FIELD_NAME', 'Name', '2016-06-26 14:28:47', '2016-04-02 18:00:00'),
(8, 'en', 'CONTACT_FIELD_EMAIL', 'E-mail address', '2016-06-26 14:49:58', '2016-04-02 18:00:00'),
(9, 'en', 'CONTACT_FIELD_SUBJECT', 'Subject', NULL, '2016-04-02 18:00:00'),
(10, 'en', 'CONTACT_FIELD_MESSAGE', 'Question/comment', '2016-06-26 14:29:27', '0000-00-00 00:00:00'),
(11, 'fi', 'CONTACT_SUBMIT', 'Lähetä viesti', NULL, '2016-04-02 21:00:00'),
(12, 'en', 'CONTACT_SUBMIT', 'Send', '2016-07-20 20:13:59', '2016-04-02 21:00:00'),
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
(31, 'fi', 'FRONT_PAGE_PROMO', 'Wallpaintings, furniture decorations and drawings\n\nfor kids room, babyroom, bedroom, living room, hallway, kitchen, restaurant, sauna, café, hospital, daycare, health facility or any other company!', '2016-07-05 19:39:21', '2016-03-05 20:00:00'),
(33, 'en', 'FRONT_PAGE_PROMO', 'Wallpaintings, furniture decorations and drawings\n\nfor kids room, babyroom, bedroom, living room, hallway, kitchen, restaurant, sauna, café, hospital, daycare, health facility or any other company!', '2016-07-05 19:39:12', '2016-03-05 20:00:00'),
(34, 'fi', 'FRONT_PAGE_TITLE', 'Room for color', '2016-06-21 18:04:39', '2016-03-05 20:00:00'),
(36, 'en', 'FRONT_PAGE_TITLE', 'Room for color', '2016-06-21 18:04:50', '2016-03-05 20:00:00'),
(37, 'fi', 'EXCEPTION_PAGE_TITLE', 'Virhe', NULL, '2016-03-05 20:00:00'),
(39, 'en', 'EXCEPTION_PAGE_TITLE', 'Error', NULL, '2016-03-05 20:00:00'),
(40, 'nl', 'NAV_ABOUT', 'Wie en Wat', NULL, '0000-00-00 00:00:00'),
(41, 'en', 'NAV_ABOUT', 'About me', NULL, '0000-00-00 00:00:00'),
(42, 'fi', 'NAV_ABOUT', 'Tietoa minusta', NULL, '0000-00-00 00:00:00'),
(43, 'nl', 'CONTACT_TITLE', 'Contact', NULL, '2016-03-11 20:00:00'),
(44, 'nl', 'NAV_FRONT_PAGE', 'Home', '2016-06-21 18:14:54', '2016-03-11 20:00:00'),
(45, 'nl', 'NAV_CONTACT', 'Contact', NULL, '2016-03-11 20:00:00'),
(46, 'nl', 'FRONT_PAGE_TITLE', 'Room for color', '2016-06-21 18:04:50', '2016-03-05 20:00:00'),
(47, 'nl', 'EXCEPTION_PAGE_TITLE', 'Fout', '2016-06-26 12:43:01', '2016-03-05 20:00:00'),
(48, 'nl', 'FRONT_PAGE_PROMO', 'Muurschilderingen, meubel decoratie en tekeningen\n\nvoor kinderkamer, babykamer, slaapkamer, woonkamer, hal, keuken, restaurant, sauna, café, ziekenhuis, dagopvang, zorginstelling en andere ondernemingen!', '2016-07-05 19:39:27', '2016-03-05 20:00:00'),
(49, 'en', 'ABOUT_PAGE_TEXT', 'Welcome to my site Room for Color!\n\nHopefully you may find something or be inspired.\n\nMy name is Fiona Ansink and I am living since 2006 in Finland, land of my heart.\nI have been born in the Netherlands and after seeing several other countries I found my place in the land of over the thousand lakes.\n\nFrom the moment I discovered colour pencils and could hold them, I have been fascinated by colour and creating! \nBesides my love for drawing I am interested in everything that has to do with creating something: like building houses, creating and restoration of \nfurniture, designing, photography and painting. My passion for painting started out and has developed with painting of interior and exterior of houses.\nMy beloved father got my passion going since I was 12 years old.\n\nWhile working for Ruukinpaja in Karkkila, South-Finland, I got the opportunity to show my passion for renovating and decorative painting of furniture.\n\nYou can also visit me on my Facebook site.\n\n\nInformation of what I can do\n\nOn this site you can find a selection of my work I have been doing so far, this contains wall paintings, decorative painting of furniture: cupboards, \nbaby cribs, chairs, tables, chests, trays and doorplates, some of these I have made myself and/or designed.\n\nFurther more I make colour pencil and pencil drawings on request.\nMy passion and experience is of realistic showing of people, animals, landscapes and plants.\n\nWall paintings can be for children rooms, bedrooms, living rooms, hallways, kitchens, restaurant, café, hospital, daycare, health facility or any other company.', '2016-06-26 14:08:02', '0000-00-00 00:00:00'),
(50, 'nl', 'ABOUT_PAGE_TEXT', 'Welkom op mijn site Room for Color!\n\nDat U hier iets mag vinden of geïnspireerd mag raken.\n\nMijn naam is Fiona Ansink en woon sinds 2006 in Finland, het land naar mijn hart.\nBen geboren in Nederland en na meerdere landen te hebben doorgetrokken heb ik mijn stekje gevonden in het land van de ruim duizend meren.\n\nVanaf het moment dat ik de kleurpotloden ontdekte en vast kon houden heeft kleur en creëren mij gefascineerd!\nNaast mijn liefde voor tekenen, interesseert alles met het creëren van iets mij, zoals het bouwen van huizen, maken en restaureren van meubels, \nontwerpen, fotografie en schilderen. De grootte passie voor schilderen is ontstaan met het beschilderen van interieurs en exterieurs van huizen, \nwelke mijn geliefde vader heeft meegegeven sinds ik 12 jaar was.\n\nBij Ruukinpaja in Karkkila, Zuid-Finland, kreeg ik de mogelijkheid om mijn passie te laten zien, zoals het renoveren van meubels en het decoratief \nbeschilderen van meubels.\n\nU kunt ook mijn Facebook site bezoek.\n\n\nInformatie over wat ik doe\n\nOp deze site kunt U een selectie vinden van de werken die ik tot nu toe heb gedaan, dit bevat muurschilderingen, decoratieve beschildering van \nmeubels: kasten, babybedjes, stoelen, tafels, kisten, dienbladen en naambordjes, waarvan ik sommige zelf heb gemaakt en ontworpen.\nDaarnaast maak ik ook kleurtekeningen en potloodtekeningen op verzoek.\nMijn passie en ervaring ligt in het realistisch weergeven van mensen, dieren, landschappen en planten.', '2016-06-26 14:08:10', '0000-00-00 00:00:00'),
(51, 'en', 'ABOUT_PAGE_TITLE', 'About me', NULL, '0000-00-00 00:00:00'),
(52, 'nl', 'ABOUT_PAGE_TITLE', 'Wie en Wat', NULL, '0000-00-00 00:00:00'),
(53, 'fi', 'ABOUT_PAGE_TITLE', 'Tietoa minusta', NULL, '0000-00-00 00:00:00'),
(54, 'en', 'CONTACT_PAGE_TEXT', 'Would You have questions and/or comments? Please fill in this form.\r\nI will get in contact with You as soon as possible.\r\n\r\nWould You rather call? You can use this following number: (+358) 0440610497', NULL, '0000-00-00 00:00:00'),
(55, 'nl', 'CONTACT_PAGE_TEXT', 'Heeft U vragen en/of opmerkingen? Vul dan het onderstaand formulier in.\r\nIk neem dan zo spoedig mogelijk contact met U op.\r\n\r\nOf wilt U liever direct bellen? Bel dan: (+358) 0440610497', NULL, '0000-00-00 00:00:00'),
(56, 'en', 'CONTACT_PLACEHOLDER_MESSAGE', 'Please try to give a complete description.', '2016-06-26 14:27:00', '0000-00-00 00:00:00'),
(57, 'nl', 'CONTACT_PLACEHOLDER_MESSAGE', 'Geef a.u.b. een zo volledig mogelijke omschrijving.', NULL, '0000-00-00 00:00:00'),
(58, 'en', 'CONTACT_FIELD_PHONE', 'Telephone number', NULL, '0000-00-00 00:00:00'),
(59, 'nl', 'CONTACT_FIELD_PHONE', 'Telefoonnummer', NULL, '0000-00-00 00:00:00'),
(60, 'nl', 'CONTACT_SUBMIT', 'Verzend gegevens', NULL, '2016-04-02 21:00:00'),
(61, 'nl', 'CONTACT_FIELD_NAME', 'Naam', NULL, '2016-04-02 18:00:00'),
(62, 'nl', 'CONTACT_FIELD_EMAIL', 'E-mail adres', NULL, '2016-04-02 21:00:00'),
(63, 'nl', 'CONTACT_FIELD_MESSAGE', 'Vraag/opmerkingen', '2016-06-26 14:29:27', '0000-00-00 00:00:00'),
(64, 'fi', 'CONTACT_FIELD_PHONE', 'Puhelinnumero', NULL, '0000-00-00 00:00:00'),
(65, 'fi', 'CONTACT_PLACEHOLDER_MESSAGE', 'Ole hyvä ja anna mahdollisimman tarkka kuvaus.', '2016-06-26 14:27:00', '0000-00-00 00:00:00'),
(66, 'nl', 'CONTACT_SUBMIT_TEXT', 'Dank je. We zullen binnenkort contact met u op.', '2016-04-03 16:28:03', '2016-04-02 21:00:00'),
(67, 'fi', 'CONTACT_PAGE_TEXT', 'Yhteydenotto.', NULL, '0000-00-00 00:00:00'),
(68, 'en', 'NAV_WALLPAINTINGS', 'Wallpaintings', '2016-07-02 11:33:21', '2016-07-01 21:00:00'),
(69, 'nl', 'NAV_WALLPAINTINGS', 'Muurschilderingen', '2016-07-02 11:33:24', '2016-07-01 21:00:00'),
(70, 'fi', 'NAV_WALLPAINTINGS', 'Seinämaalaukset', '2016-07-02 11:33:24', '2016-07-01 21:00:00'),
(71, 'fi', 'GALLERY_NO_MORE_IMAGES', 'Ei enempää kuvia.', NULL, '2016-07-09 21:00:00'),
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
(85, 'fi', 'GUESTBOOK_PAGE_TEXT', '(fi)On this page You can find customers comments of their wallpainting, furniture decoration or drawing, \r\nwhich they let be made by Room for Color.\r\n\r\nYou can also leave here your experience.', '2016-07-20 19:00:05', '2016-07-19 21:00:00'),
(86, 'en', 'GUESTBOOK_PLACEHOLDER_MESSAGE', '', NULL, '2016-07-19 21:00:00'),
(87, 'nl', 'GUESTBOOK_PLACEHOLDER_MESSAGE', '', NULL, '2016-07-19 21:00:00'),
(88, 'fi', 'GUESTBOOK_PLACEHOLDER_MESSAGE', '', NULL, '2016-07-19 21:00:00'),
(89, 'nl', 'CONTACT_FIELD_ERROR___CSRF_TOKEN', 'Het spijt ons, maar de vorm is verlopen. Probeer het opnieuw.', '2016-04-15 19:58:48', '2016-04-13 21:00:00'),
(90, 'nl', 'CONTACT_FIELD_ERROR_EMAIL', 'Uw e-mailadres moet een echte e-mailadres.', NULL, '2016-04-02 15:00:00'),
(91, 'nl', 'CONTACT_FIELD_ERROR_MESSAGE', 'De boodschap moet langer zijn dan drie karakters.', NULL, '0000-00-00 00:00:00'),
(92, 'nl', 'CONTACT_FIELD_ERROR_NAME', 'Voer uw naam in.', NULL, '2016-04-02 15:00:00'),
(93, 'nl', 'CONTACT_FIELD_ERROR_SUBJECT', 'Vul een onderwerp.', NULL, '2016-04-02 15:00:00'),
(94, 'nl', 'CONTACT_FIELD_SUBJECT', 'Onderwerpen', NULL, '2016-04-02 18:00:00'),
(95, 'fi', 'GUESTBOOK_FIELD_ERROR___CSRF_TOKEN', 'Pahoittelumme, mutta lomake on vanhentunut. Ole hyvä ja yritä uudelleen.', '2016-07-20 19:17:57', '2016-04-13 18:00:00'),
(96, 'en', 'GUESTBOOK_FIELD_ERROR___CSRF_TOKEN', 'We''re sorry but the form has expired. Please try again.', '2016-07-20 19:17:57', '2016-04-13 18:00:00'),
(97, 'nl', 'GUESTBOOK_FIELD_ERROR___CSRF_TOKEN', 'Het spijt ons, maar de vorm is verlopen. Probeer het opnieuw.', '2016-07-20 19:17:57', '2016-04-13 18:00:00'),
(98, 'fi', 'GUESTBOOK_FIELD_ERROR_MESSAGE', 'Viestissä on oltava enemmän kuin kolme merkkiä.', '2016-07-20 19:17:57', '0000-00-00 00:00:00'),
(99, 'en', 'GUESTBOOK_FIELD_ERROR_MESSAGE', 'The message must be longer than three characters.', '2016-07-20 19:17:57', '0000-00-00 00:00:00'),
(100, 'nl', 'GUESTBOOK_FIELD_ERROR_MESSAGE', 'De boodschap moet langer zijn dan drie karakters.', '2016-07-20 19:17:57', '0000-00-00 00:00:00'),
(101, 'fi', 'GUESTBOOK_FIELD_ERROR_NAME', 'Nimi ei voi olla tyhjä.', '2016-07-20 19:17:57', '2016-04-02 15:00:00'),
(102, 'en', 'GUESTBOOK_FIELD_ERROR_NAME', 'Your name can´t be empty.', '2016-07-20 19:17:57', '2016-04-02 12:00:00'),
(103, 'nl', 'GUESTBOOK_FIELD_ERROR_NAME', 'Voer uw naam in.', '2016-07-20 19:17:57', '2016-04-02 12:00:00'),
(104, 'fi', 'GUESTBOOK_FIELD_MESSAGE', 'Viesti', '2016-07-20 19:17:57', '0000-00-00 00:00:00'),
(105, 'en', 'GUESTBOOK_FIELD_MESSAGE', 'Message', '2016-07-20 19:17:57', '0000-00-00 00:00:00'),
(106, 'nl', 'GUESTBOOK_FIELD_MESSAGE', 'Vraag', '2016-07-20 19:17:57', '0000-00-00 00:00:00'),
(107, 'fi', 'GUESTBOOK_FIELD_NAME', 'Nimesi', '2016-07-20 19:17:57', '2016-04-02 18:00:00'),
(108, 'en', 'GUESTBOOK_FIELD_NAME', 'Name', '2016-07-20 19:17:57', '2016-04-02 15:00:00'),
(109, 'nl', 'GUESTBOOK_FIELD_NAME', 'Naam', '2016-07-20 19:17:57', '2016-04-02 15:00:00'),
(110, 'fi', 'GUESTBOOK_SUBMIT', 'Lähetä viesti', '2016-07-20 19:17:57', '2016-04-02 18:00:00'),
(111, 'en', 'GUESTBOOK_SUBMIT', 'Send message', '2016-07-20 19:17:57', '2016-04-02 18:00:00'),
(112, 'nl', 'GUESTBOOK_SUBMIT', 'Verzend gegevens', '2016-07-20 19:17:57', '2016-04-02 18:00:00'),
(113, 'fi', 'GUESTBOOK_SUBMIT_TEXT', 'Kiitos yhteydenotostasi. Olemme sinuun yhteydessä pian.', '2016-07-20 19:17:57', '2016-04-02 18:00:00'),
(114, 'en', 'GUESTBOOK_SUBMIT_TEXT', 'Thank you. We''ll be in touch with you soon.', '2016-07-20 19:17:57', '2016-04-02 18:00:00'),
(115, 'nl', 'GUESTBOOK_SUBMIT_TEXT', 'Dank je. We zullen binnenkort contact met u op.', '2016-07-20 19:17:57', '2016-04-02 18:00:00'),
(116, 'en', 'GUESTBOOK_SHOW_FORM', 'Add recommendation', NULL, '2016-07-19 21:00:00'),
(117, 'nl', 'GUESTBOOK_SHOW_FORM', 'Voeg referentie toe', NULL, '2016-07-19 21:00:00'),
(118, 'fi', 'GUESTBOOK_SHOW_FORM', 'Kirjoita suositus', NULL, '2016-07-19 21:00:00'),
(119, 'en', 'GUESTBOOK_TITLE', 'Guestbook', NULL, '0000-00-00 00:00:00'),
(120, 'nl', 'GUESTBOOK_TITLE', 'Gastenboek', NULL, '2016-07-19 21:00:00'),
(121, 'fi', 'GUESTBOOK_TITLE', 'Vieraskirja', NULL, '2016-07-19 21:00:00'),
(122, 'en', 'NAV_PROCESS', 'Process', '2016-07-22 15:56:54', '2016-07-21 21:00:00'),
(123, 'nl', 'NAV_PROCESS', 'Werkwijze', '2016-07-22 15:56:56', '2016-07-21 21:00:00'),
(124, 'fi', 'NAV_PROCESS', 'Prosessi', '2016-07-22 15:56:56', '2016-07-21 21:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
