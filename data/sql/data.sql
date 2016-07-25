-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2016 at 11:13 PM
-- Server version: 5.5.50-0ubuntu0.14.04.1
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
(2, 'slogan_img_uri', '/data/img/slogan.jpg', '2016-07-25 19:34:15', '2016-03-16 20:00:00'),
(3, 'header_logo_uri', '/data/img/logo.png', '2016-07-25 19:16:58', '2016-03-25 20:00:00'),
(4, 'contact_email', 'matias@matias-laptop', '2016-04-02 15:37:11', '2016-04-01 18:00:00'),
(5, 'mail_server', 'localhost', '2016-04-13 16:20:29', '2016-04-12 18:00:00'),
(6, 'mail_user', '', NULL, '2016-04-12 18:00:00'),
(7, 'mail_password', '', NULL, '2016-04-12 18:00:00'),
(8, 'js_src_mode', 'debug', NULL, '2016-07-15 21:00:00'),
(9, 'js_src_version', '20160716', NULL, '2016-07-15 21:00:00'),
(10, 'css_src_version', '20160716', NULL, '2016-07-15 21:00:00');

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
(1, 1, 'en', '', 'Would you like to have a wall painting? A nice wall painting will be a wonderful eye catcher!\nIt is an original and trendy way to decorate your company entrance, one of the company rooms or private home. Wall paintings give a happy, warm \nand personal atmosphere and can be made for you personal taste.', 1, '2016-07-22 00:00:00', '2016-07-23 09:44:42'),
(2, 2, 'en', '', 'After a first contact through e-mail or by phone, it might be clear of what is desired. I will make a cost calculation and a date on which I will have the \npainting ready can be set.', 1, '2016-07-22 00:00:00', '2016-07-22 14:39:59'),
(3, 1, 'en', 'Material', 'The paint I will be using will be on water base and will not give a lot of odeur. Also the paint will dry fast and water-resistant. It will be possible to \r\nclean the painting with a little bit of wet towel. I will take all of my own material with me, inclusive floor coverup.', 4, '2016-07-23 00:00:00', '2016-07-23 09:43:55'),
(5, 1, 'en', 'The wall', 'I prefer to work on a smooth wall which has already been painted. When the wall has a dark coat, just let me know, than I can make a better estimation.\r\nIf the wall has a rougher structure it will be possible to paint, but it will cost more because it will take longer to decorate. \r\nWhen a wall is very rough it might be good to consider a panel, this can be colored in the wall colour and mounted where ever.', 5, '2016-07-23 00:00:00', '2016-07-23 09:43:51'),
(7, 1, 'en', 'The picture', 'I would like to receive a picture of the existing wall and te room where the painting will be. \r\nI can make a design and there is also the option of sending your own picture (this can be a photograph, cart, drawing, own made sketch or anything else) \r\nso I can put it in the design.', 6, '2016-07-23 00:00:00', '2016-07-23 09:43:49'),
(9, 1, 'en', 'Cost calculations', 'I prefer to set a set cost, so there will be no surprises for you. This I will base on the hours I think I need, material and kilometers.', 7, '2016-07-23 00:00:00', '2016-07-23 09:43:46'),
(10, 1, 'en', '', 'In some occasions it is required for me to make first a drawing of the figures and/or background, name etc. This drawing and the cost calculation will\r\nbe sent by e-mail.', 3, '2016-07-23 00:00:00', '2016-07-23 09:51:51'),
(11, 1, 'en', '', 'How a wall painting comes to live?\r\nAfter a first contact through e-mail or by phone, it might be clear of what is desired. I will make a cost calculation and a date on which I will come and \r\npaint the wall painting can be set.', 2, '2016-07-23 00:00:00', '2016-07-23 09:45:09'),
(12, 1, 'en', '', 'Most of the wall paintings will be ready in 1 or 2 days time, depends on the amount of figures and size. For more extensive wallpaintings with a lot \r\nof figures or animals we can communicate the amount of days that are needed and plan these.', 8, '2016-07-23 00:00:00', '2016-07-23 09:43:46'),
(13, 1, 'en', '', 'You can always ask a optional cost calculation and planned dates can be canceled without cost to up the day before.', 9, '2016-07-23 00:00:00', '2016-07-23 09:43:46'),
(14, 1, 'en', '', 'I am working in the region of South-Finland and have no waiting list. I am prepared to come and work out site this region, we can always talk about it.', 10, '2016-07-23 00:00:00', '2016-07-23 09:43:46'),
(15, 1, 'nl', '', 'Muurschildering laten maken? Een mooie muurschildering is een echte eye catcher!\r\nOp zoek naar een originele en trendy manier om uw kamer of lokaal te decoreren? Muurschilderingen geven een vrolijke, warme en persoonlijke \r\nsfeer en kunnen helemaal op maat naar uw wensen worden gemaakt.', 1, '2016-07-22 00:00:00', '2016-07-23 09:44:42'),
(16, 1, 'nl', '', 'Hoe komt een muurschildering tot stand?\r\nNa het eerste contact via mail of telefonisch, is het in sommige gevallen al meteen duidelijk hoe de muurschildering eruit komt te zien. In dat geval \r\nwordt er een prijsopgave gemaakt en kan er een indien gewenst een datum gepland worden om de muurschildering te realiseren.\r\nIn andere gevallen is het wenselijk om van te voren eerst een tekening te maken met alle gewenste figuurtjes en/of achtergrond, naam etc. \r\nDeze tekening wordt dan samen met de prijsopgave per mail verstuurd.', 2, '2016-07-23 00:00:00', '2016-07-23 09:45:09'),
(17, 1, 'nl', 'Materiaal', 'Ik schilder met acrylverf, dit is verf op waterbasis, kindvriendelijk en niet schadelijk voor de gezondheid. Als deze verf opdroogt is het watervast en \r\nkun je, als het nodig is, de muurschildering gewoon afnemen met een vochtig doekje. Ik neem alle materialen zelf mee, incl. afdekmateriaal.', 3, '2016-07-23 00:00:00', '2016-07-23 09:51:51'),
(18, 1, 'nl', 'De afbeelding', 'Ik ontvang graag een foto van de muur en de kamer waar de schildering moet komen.\r\nHet is mogelijk om zelf één of meerdere afbeeldingen aan mij door te sturen (dit kunnen foto’s, ansichtkaarten, tekeningen, eigen schetsjes en \r\ndergelijke zijn) zodat ik ze in het ontwerp kan verwerken.', 5, '2016-07-23 00:00:00', '2016-07-23 10:52:05'),
(20, 1, 'nl', 'Tarieven muurschilderingen', 'Ik communiceer altijd vooraf een vaste prijs zodat je nooit voor verrassingen komt te staan. Dit doe ik op basis van de ingeschatte uren, materiaal \r\nen kilometers.', 6, '2016-07-23 00:00:00', '2016-07-23 10:52:02'),
(21, 1, 'nl', '', 'Mijn uitgangspunt is: \r\n32,50 x aantal uren + 15,- materiaalkosten + 0,20 per km=  + 24% BTW Most of the wall paintings will be ready in 1 or 2 days time, depends on the amount of figures and size. For more extensive wallpaintings with a lot \r\nof figures or animals we can communicate the amount of days that are needed and plan these.', 7, '2016-07-23 00:00:00', '2016-07-23 10:51:58'),
(22, 1, 'nl', '', 'De meeste muurschilderingen zijn binnen 1 á 2 dagen klaar, meestal afhankelijk van het aantal figuurtjes. Voor uitgebreidere muurschilderingen met \r\nveel figuren of dieren bv. worden in overleg  meerdere dagen ingepland.', 8, '2016-07-23 00:00:00', '2016-07-23 10:51:56'),
(23, 1, 'nl', '', 'Het aanvragen van een prijsopgave is uiteraard vrijblijvend en geplande schilderdata kunnen tot een dag van te voren kosteloos worden geannuleerd.', 9, '2016-07-23 00:00:00', '2016-07-23 10:51:54'),
(24, 1, 'nl', '', 'Ik werk in Zuid-Finland en heb geen lange wachttijden. Ik ben bereid om te overwegen om buiten deze regio te werken. Dit kunnen we altijd overleggen.', 10, '2016-07-23 00:00:00', '2016-07-23 10:51:38'),
(25, 1, 'nl', 'De muur', 'De muur\r\nIk werk het liefst op een gladde muur die al een keer gesaust is. Mocht de muur een donkere ondergrond hebben, laat het mij dan even weten, dan \r\nkan ik een goede tijdsinschatting maken. Als de muur wat grover is kan het ook, maar dan kost het wat meer tijd.\r\nMocht de muur erg grof van structuur zijn is het misschien een goed idee om met panelen te werken. Deze kunnen in de kleur van de bestaande \r\nmuur worden beschilderd en daarop de schildering.', 4, '2016-07-23 00:00:00', '2016-07-23 10:52:09'),
(26, 2, 'en', '', 'There is the option to sent me one or several pictures. Several pictures can be combined to make one painting. I can also provide a design.', 2, '0000-00-00 00:00:00', '2016-07-23 10:59:44'),
(27, 2, 'en', '', 'There is the possibility to bring the parts to be decorated to me or that I will come and pick them up. I also can come to you and paint on location. In this case I will bring all the necessaries to make the decoration.', 3, '0000-00-00 00:00:00', '2016-07-23 10:59:53'),
(28, 2, 'nl', '', 'Na het eerste contact via mail of telefonisch, is het in sommige gevallen al meteen duidelijk hoe de afbeelding eruit komt te zien. In dat geval wordt \r\ner een prijsopgave gemaakt en kan er een indien gewenst een datum gepland worden om de afbeelding klaar te hebben.', 1, '2016-07-22 00:00:00', '2016-07-22 14:39:59'),
(29, 2, 'nl', '', 'Het is mogelijk om zelf één of meerdere afbeeldingen of foto’s aan mij door te sturen zodat ik ze in het ontwerp kan verwerken. Of ik kan een \r\nontwerp voor u maken.', 2, '0000-00-00 00:00:00', '2016-07-23 10:59:44'),
(30, 2, 'nl', '', 'De mogelijkheid is om de beschilderde onderdelen naar mij toe te brengen of dat ik die kom ophalen. Ook kan ik bij U komen en het ter plaatse te \r\nbeschilderen. Ik neem alle benodigdheden om de afbeelding te verwerkelijken zelf mee.', 3, '0000-00-00 00:00:00', '2016-07-23 10:59:53'),
(31, 3, 'en', '', 'After a first contact true e-mail or by phone, it might be clear of what is desired. I will make a cost calculation and a date on which I will have the \r\ndrawing ready can be set.', 1, '2016-07-23 00:00:00', '2016-07-23 11:30:35'),
(32, 3, 'en', '', 'There is the option to sent me one or several pictures. Several pictures can be combined to make one drawing.\r\nThe drawing can be made on any size of paper, any kind of paper and any paper colour.', 2, '2016-07-23 00:00:00', '2016-07-23 11:30:51'),
(33, 3, 'nl', '', 'Na het eerste contact via mail of telefonisch, is het in sommige gevallen al meteen duidelijk hoe de tekening eruit komt te zien. In dat geval wordt er\r\neen prijsopgave gemaakt en kan er een indien gewenst een datum gepland worden om de tekening klaar te hebben.', 1, '2016-07-23 00:00:00', '2016-07-23 11:30:35'),
(34, 3, 'nl', '', 'Het is mogelijk om zelf één of meerdere afbeeldingen of foto’s aan mij door te sturen zodat ik ze in het ontwerp kan verwerken. Dit kan verwerkt \r\nworden op verschillende formaten, papier en papierkleuren.', 2, '2016-07-23 00:00:00', '2016-07-23 11:30:51'),
(35, 4, 'en', '', 'After a first contact true e-mail or by phone, it might be clear of what is desired. I will make a cost calculation and a date on which I will have the \r\npanel ready can be set.', 1, '2016-07-23 00:00:00', '2016-07-23 11:43:43'),
(36, 4, 'en', '', 'There is the option to sent me one or several pictures. Several pictures can be combined to make one panel. These panels can be made in different sizes. \r\nThe background can be the same as the wall, where the panel will be, or any other colour. Just consider where it will come and how to attach it.', 2, '2016-07-23 00:00:00', '2016-07-23 11:43:43'),
(37, 4, 'nl', '', 'Na het eerste contact via mail of telefonisch, is het in sommige gevallen al meteen duidelijk hoe het paneel eruit komt te zien. In dat geval wordt er \r\neen prijsopgave gemaakt en kan er een indien gewenst een datum gepland worden om paneel klaar te hebben.', 1, '2016-07-23 00:00:00', '2016-07-23 11:44:37'),
(38, 4, 'nl', '', 'Het is mogelijk om zelf één of meerdere afbeeldingen of foto’s aan mij door te sturen zodat ik ze in het ontwerp kan verwerken. Dit kan verwerkt \r\nworden op verschillende formaten. De ondergrond kan dezelfde kleur als de bestaande muur krijgen of geschilderd worden in elke andere kleur.\r\nHoud hier rekening mee waar het geplaatst wordt. En hoe het bevestigt moet worden.', 2, '2016-07-23 00:00:00', '2016-07-23 11:44:37'),
(39, 5, 'en', '', 'Would you like a wallpainting but have no idea what? Or have no idea what to choose?\nThan I have some tips which can help you to make a decision.', 1, '2016-07-23 00:00:00', '2016-07-23 12:00:41'),
(40, 5, 'en', '', 'Before you let me make a wallpainting it is good to consider the following things:', 2, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(41, 5, 'en', '', 'Would you like a wallpainting to coverup a whole wall or just a part, for example above a baby crib or changing place? Is it a big or small room? When the room is small many times it looks better when a wall is partly covert.', 3, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(42, 5, 'en', '', 'On which of the existing wall or walls the painting should be? Think about the furniture where it will be placed. Sometimes it is good to consider \r\nfuture use of the room.', 4, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(43, 5, 'en', '', 'Would you like to have a wall painting specific for gender or rather neutral? It is possible with some accent colors to make it more gender specific. This can later be adjusted for the opposite gender.\r\nA teenager might have there own wishes, these can be taking into the design.', 5, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(44, 5, 'en', '', 'Which will be the background colour? It is not a necessity to have a white background to make a wall painting. A different background colour might \r\ngive a wonderful effect.', 6, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(45, 5, 'en', '', 'Personal elements like a holiday picture, a name, a stuffed animal or pet, can make it very unique!', 7, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(46, 5, 'en', '', 'It is also very important to remember which budget you will have. It is possible to make a wall painting according to a budget.', 8, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(47, 5, 'nl', '', 'Wil je graag een muurschildering laten maken maar weet je nog niet precies wat? Of weet je door de vele voorbeelden niet meer wat je moet kiezen?\r\nHieronder volgen een aantal tips die je kunnen helpen bij het kiezen of samenstellen van een muurschildering.', 1, '2016-07-23 00:00:00', '2016-07-23 12:00:41'),
(48, 5, 'nl', '', 'Voordat je een muurschildering laat maken, is het handig om al eens over de volgende dingen na te denken:', 2, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(49, 5, 'nl', '', 'Wil je een muurschildering die de hele wand in beslag neemt of alleen een gedeelte, bv. boven het bedje of commode? Is het een groot of juist een \r\nheel klein kamertje? Bij een heel klein kamertje is het vaak mooier om een gedeelte van de wand te beschilderen.', 3, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(50, 5, 'nl', '', 'Op welke wand of wanden moet de muurschildering komen? Denk hierbij ook aan de indeling van de meubels. Vaak kan bij de schildering ook alvast \r\nrekening worden gehouden met een eventuele toekomstige verandering van indeling, als bijvoorbeeld de commode wegvalt en er een “groot” bed in \r\nkomt. Zo blijft de schildering ook langer “bruikbaar”.', 4, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(51, 5, 'nl', '', 'Moet de schildering worden afgestemd op het geslacht van jullie kindje of moeten de kleuren en/of het thema neutraal blijven? Vaak kan met enkele \r\nkleuraccenten al een jongens– of meisjessfeer gemaakt worden. Deze accenten zijn ook weer makkelijk aan te passen aan een eventueel volgend kindje.\r\nEen wat ouder kind heeft zelf vaak al specifieke wensen, deze kunnen in de schildering verwerkt worden.', 5, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(52, 5, 'nl', '', 'Welke kleur krijgt de ondergrond? Het is niet zo dat de muur per sé wit moet zijn om er een muurschildering op te maken. Soms geeft een andere \r\nondergrond kleur juist een heel mooi effect.', 6, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(53, 5, 'nl', '', 'Persoonlijke elementen zoals een vakantie foto, een naam, een knuffel of huisdier, zorgen voor een unieke schildering!', 7, '2016-07-23 00:00:00', '2016-07-23 12:00:50'),
(54, 5, 'nl', '', 'Ook zeker niet onbelangrijk: Welk budget heb je te besteden? Het is ook mogelijk om aan de hand van een bepaald budget een schildering te laten maken.', 8, '2016-07-23 00:00:00', '2016-07-23 12:00:50');

--
-- Dumping data for table `process_translation`
--

INSERT INTO `process_translation` (`id`, `process_page_id`, `language`, `title`, `intro`, `time_created`, `time_edited`) VALUES
(1, 1, 'en', 'Wallpaintings', 'Process for a wall painting', '2016-07-22 00:00:00', '2016-07-22 14:35:05'),
(4, 2, 'en', 'Furniture', 'Process for furniture', '2016-07-22 00:00:00', '2016-07-22 14:38:37'),
(5, 1, 'nl', 'Muurschilderingen', 'Werkwijze voor muurschildering', '2016-07-22 00:00:00', '2016-07-22 14:35:05'),
(6, 1, 'fi', 'Seinämaalaukset', 'Prosessi seinämaalauksille', '2016-07-22 00:00:00', '2016-07-22 14:35:05'),
(7, 2, 'nl', 'Meubels', 'Werkwijze voor Meubels', '2016-07-22 00:00:00', '2016-07-22 16:01:28'),
(8, 2, 'fi', 'Kalusteet', 'Prosessi kalusteille', '2016-07-22 00:00:00', '2016-07-22 16:01:28'),
(9, 3, 'en', 'Drawings', 'Process for drawings', '2016-07-23 00:00:00', '2016-07-23 11:28:53'),
(10, 3, 'nl', 'Tekeningen', 'Process for drawings', '2016-07-23 00:00:00', '2016-07-23 11:28:53'),
(11, 3, 'fi', 'Piirrokset', 'Prosessi piirroksille', '2016-07-23 00:00:00', '2016-07-23 11:38:12'),
(12, 4, 'en', 'Panels', 'Process for panels', '2016-07-23 00:00:00', '2016-07-23 11:41:47'),
(13, 4, 'nl', 'Panelen', 'Werkwijze voor panelen', '2016-07-23 00:00:00', '2016-07-23 11:41:58'),
(14, 4, 'fi', 'Paneelit', 'Prosessi paneeleille', '2016-07-23 00:00:00', '2016-07-23 11:41:58'),
(15, 5, 'en', 'Inspiration', 'Inspiration needed?', '2016-07-23 00:00:00', '2016-07-23 11:47:07'),
(16, 5, 'nl', 'Inspiratie', 'Inspiratie nodig?', '2016-07-23 00:00:00', '2016-07-23 11:47:07'),
(19, 5, 'fi', 'Inspiraatio', 'Inspiraation tarpeessa?', '2016-07-23 00:00:00', '2016-07-23 11:47:07');

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
(110, 'fi', 'GUESTBOOK_SUBMIT', 'Lähetä suositus', '2016-07-24 15:13:24', '2016-04-02 18:00:00'),
(111, 'en', 'GUESTBOOK_SUBMIT', 'Send recommendation', '2016-07-24 15:13:31', '2016-04-02 18:00:00'),
(112, 'nl', 'GUESTBOOK_SUBMIT', 'Aanbeveling verzenden', '2016-07-24 15:13:59', '2016-04-02 18:00:00'),
(113, 'fi', 'GUESTBOOK_SUBMIT_TEXT', 'Kiitos palautteestasi,', '2016-07-24 14:25:38', '2016-04-02 18:00:00'),
(114, 'en', 'GUESTBOOK_SUBMIT_TEXT', 'Thank you for your feedback.', '2016-07-24 14:25:49', '2016-04-02 18:00:00'),
(115, 'nl', 'GUESTBOOK_SUBMIT_TEXT', '\nHartelijk dank voor uw feedback.', '2016-07-24 14:26:16', '2016-04-02 18:00:00'),
(116, 'en', 'GUESTBOOK_SHOW_FORM', 'Add recommendation', NULL, '2016-07-19 21:00:00'),
(117, 'nl', 'GUESTBOOK_SHOW_FORM', 'Voeg referentie toe', NULL, '2016-07-19 21:00:00'),
(118, 'fi', 'GUESTBOOK_SHOW_FORM', 'Kirjoita suositus', NULL, '2016-07-19 21:00:00'),
(119, 'en', 'GUESTBOOK_TITLE', 'Guestbook', NULL, '0000-00-00 00:00:00'),
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
(137, 'fi', 'HEADER_PROMO', 'Seinämaalauksia, huonekalukoristeluja ja piirroksia', NULL, '2016-07-24 21:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
