-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 21. 09:51
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `classic_db`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cargo`
--

CREATE TABLE `cargo` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `place` varchar(100) COLLATE utf8_bin NOT NULL,
  `cargo_weight` int(4) UNSIGNED DEFAULT NULL,
  `transport_date` date DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `langID` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `cargo`
--

INSERT INTO `cargo` (`id`, `place`, `cargo_weight`, `transport_date`, `active`, `langID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, '11. bikás park', 1200, '2022-02-22', 1, 0, 2, '2022-02-21 08:24:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_config`
--

CREATE TABLE `core_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `systemType` enum('frontend','backend') COLLATE utf8_bin DEFAULT NULL,
  `core_configsID` bigint(20) UNSIGNED DEFAULT NULL,
  `fieldName` varchar(100) COLLATE utf8_bin NOT NULL,
  `fieldValue` text COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin DEFAULT NULL,
  `autoload` int(1) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `core_config`
--

INSERT INTO `core_config` (`id`, `systemType`, `core_configsID`, `fieldName`, `fieldValue`, `description`, `autoload`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'frontend', NULL, 'core_localserverID', '1', NULL, 1, 1, NULL, NULL, NULL, NULL),
(2, 'frontend', NULL, 'barcodeType', '0', NULL, 1, 1, NULL, NULL, NULL, NULL),
(3, 'frontend', NULL, 'maxPatientView', '8', NULL, 1, 1, NULL, NULL, 2, '2013-10-03 15:19:04'),
(4, 'frontend', NULL, 'waitingBoxRefresh', '10', NULL, 1, 1, NULL, NULL, NULL, NULL),
(5, 'frontend', NULL, 'bannerBoxRefresh', '1800', NULL, 1, 1, NULL, NULL, NULL, NULL),
(6, 'frontend', NULL, 'marqueeBoxRefresh', '10', NULL, 1, 1, NULL, NULL, NULL, NULL),
(7, 'frontend', NULL, 'barcodeReadTimeout', '8', NULL, 1, 1, NULL, NULL, 2, '2013-11-26 12:18:10'),
(8, 'frontend', NULL, 'patientViewTimeout', '8', NULL, 1, 1, NULL, NULL, 2, '2013-11-26 12:18:26'),
(9, 'frontend', NULL, 'patientViewRefresh', '1', NULL, 1, 1, NULL, NULL, NULL, NULL),
(10, 'frontend', NULL, 'bannerChangeTimeout', '15', NULL, 1, 1, NULL, NULL, NULL, NULL),
(11, 'frontend', NULL, 'bannerDrMaximum', '6', NULL, 1, 1, NULL, NULL, NULL, NULL),
(12, 'frontend', NULL, 'marqueeDrMaximum', '5', NULL, 1, 1, NULL, NULL, NULL, NULL),
(13, 'frontend', NULL, 'playAudio', '1', NULL, 1, 1, NULL, NULL, NULL, NULL),
(14, 'frontend', NULL, 'cssFromFile', '1', NULL, 1, 1, NULL, NULL, NULL, NULL),
(15, 'frontend', NULL, 'cssInsertRename', '0', NULL, 1, 1, NULL, NULL, NULL, NULL),
(16, 'frontend', NULL, 'callUpCounterMax', '1', NULL, 1, 1, NULL, NULL, NULL, NULL),
(17, 'frontend', NULL, 'dayStartClearBefore', '1', NULL, 1, 1, NULL, NULL, NULL, NULL),
(18, 'backend', 10, 'miniBoxZoomHeight', '600px', NULL, 1, 1, 2, '2013-09-09 13:03:11', NULL, NULL),
(19, 'backend', 68, 'boxRefresh', '60', NULL, 1, 1, 2, '2013-09-08 09:24:54', 2, '2013-09-08 20:00:48'),
(20, 'frontend', NULL, 'getBarcodeErrorAudio', '<audio autoplay><source src=\"../docroot/audio/hiba.wav\" type=\"audio/wav\"></audio>', NULL, 1, 1, 2, '2013-11-28 14:36:48', 2, '2016-05-15 11:08:28'),
(21, 'frontend', NULL, 'callUpAudio', '<audio autoplay><source src=\"../docroot/audio/behivas.wav\" type=\"audio/wav\"></audio>', NULL, 1, 1, NULL, NULL, 2, '2013-11-08 09:41:15'),
(22, 'frontend', NULL, 'patientCallType', 'madmax', NULL, 1, 1, NULL, NULL, NULL, NULL),
(23, 'frontend', NULL, 'getBarcodeAudio', '<audio autoplay><source src=\"../docroot/audio/kartya.wav\" type=\"audio/wav\"></audio>', NULL, 1, 1, 2, '2013-11-08 09:10:29', 2, '2013-11-08 09:40:48'),
(24, 'frontend', NULL, 'defaultOrderTime', '--:-- - --:--', NULL, 1, 1, 2, '2013-11-19 12:25:34', NULL, NULL),
(25, 'frontend', NULL, 'barcodeLogging', '0', NULL, 1, 1, 2, '2013-11-19 12:25:34', NULL, NULL),
(26, 'frontend', NULL, 'doctorNameViewNo', '0', NULL, 1, 1, NULL, NULL, NULL, NULL),
(27, 'frontend', NULL, 'waitingListSetup1920x1080', '750<=>220<=>17<=>6', NULL, 1, 1, 2, '2013-11-27 11:58:57', 2, '2013-11-27 13:27:42'),
(28, 'frontend', NULL, 'waitingListSetup1360x768', '550<=>180<=>12<=>5', NULL, 1, 1, 2, '2013-11-27 18:30:10', 2, '2013-11-27 18:51:19'),
(29, 'frontend', NULL, 'waitingListSetup1366x768', '550<=>180<=>12<=>5', NULL, NULL, 1, 2, '2013-11-27 18:43:02', 2, '2013-11-27 18:52:26'),
(30, 'frontend', NULL, 'waitingListSetup1024x768', '550<=>180<=>12<=>5', NULL, 1, 1, 2, '2013-11-27 18:54:06', 2, '2016-05-15 11:58:06'),
(31, 'frontend', NULL, 'waitingListSetup1280x720', '550<=>180<=>12<=>5', NULL, NULL, 1, 2, '2013-11-27 19:01:26', 2, '2016-05-15 12:02:30'),
(32, 'backend', 72, 'core_configsID', 'Modul', NULL, NULL, 1, 2, '2017-04-21 08:13:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_configs`
--

CREATE TABLE `core_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `tplName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `allrecs` int(2) UNSIGNED DEFAULT 0,
  `ownrecs` int(2) UNSIGNED DEFAULT 0,
  `description` longtext COLLATE utf8_bin DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `insertUserID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `core_configs`
--

INSERT INTO `core_configs` (`id`, `name`, `title`, `tplName`, `allrecs`, `ownrecs`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'core_users', 'Felhasználók', 'core_users', 0, 0, NULL, 1, 1, '2005-08-29 23:45:38', 2, '2013-08-24 11:47:27'),
(2, 'core_users_rights', 'Felhasználó jogai', 'core_users_rights', 0, 0, NULL, 1, 1, '2005-08-29 23:46:03', 2, '2013-07-30 15:50:07'),
(3, 'core_groups', 'Csoport', 'core_groups', 0, 0, NULL, 1, 1, '2005-08-29 23:46:31', 2, '2013-08-24 11:57:35'),
(4, 'core_groups_rights', 'Csoport jogai', 'core_groups_rights', 0, 0, NULL, 1, 1, '2005-08-29 23:46:46', 2, '2012-01-17 13:37:39'),
(5, 'core_lang', 'Nyelv', 'core_lang', 0, 0, NULL, 1, 1, '2005-08-29 23:48:06', 2, '2010-09-24 08:57:03'),
(7, 'core_userstitle', 'Titulus', 'core_userstitle', 0, 0, NULL, 1, 2, '2009-07-01 10:12:24', 2, '2012-03-25 13:59:07'),
(8, 'userslog', 'login/logout', NULL, 0, 0, NULL, 1, 2, '2009-08-12 20:40:21', NULL, NULL),
(10, 'configShare', 'Rendszer', NULL, 0, 0, NULL, 1, 2, '2011-03-11 22:34:24', 2, '2012-03-23 23:11:47'),
(17, 'core_configs', 'Konfigurátor', 'core_configs', 0, 15, NULL, 1, 2, '2012-01-16 14:15:08', 2, '2013-07-30 15:48:30'),
(107, 'transport', 'Rendelés', NULL, 0, 0, NULL, 1, 2, '2022-02-20 22:26:15', NULL, NULL),
(72, 'core_config', 'Setup', 'core_config', 0, 0, NULL, 1, 2, '2013-09-05 22:10:02', 2, '2013-09-20 12:01:42'),
(73, 'core_language', 'Nyelv', 'core_language', 0, 0, NULL, 1, 2, '2013-09-23 13:12:50', NULL, NULL),
(90, 'core_themes', 'Arculat', NULL, 0, 0, NULL, 1, 2, '2017-04-28 10:15:35', NULL, NULL),
(104, 'license_type', 'Jogosítvány típus', NULL, 0, 0, NULL, 1, 2, '2022-02-17 16:14:05', NULL, NULL),
(105, 'cargo', 'Teher', NULL, 0, 0, NULL, 1, 2, '2022-02-20 19:31:23', NULL, NULL),
(106, 'passanger', 'Utas', NULL, 0, 0, NULL, 1, 2, '2022-02-20 19:31:38', NULL, NULL),
(98, 'admin', 'Admin', NULL, 0, 0, NULL, 1, 2, '2017-04-29 21:38:07', NULL, NULL),
(101, 'vehicle', 'Járművek', NULL, 0, 0, NULL, 1, 2, '2022-02-17 11:47:28', NULL, NULL),
(102, 'vehicle_type', 'Jármű típus', NULL, 0, 0, NULL, 1, 2, '2022-02-17 14:08:25', NULL, NULL),
(103, 'driver', 'Sofőr', NULL, 0, 0, NULL, 1, 2, '2022-02-17 14:48:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_groups`
--

CREATE TABLE `core_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `core_themesID` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `core_groups`
--

INSERT INTO `core_groups` (`id`, `core_themesID`, `name`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, NULL, 'Vendég', NULL, 1, 2, '2005-08-29 21:08:54', 2, '2013-07-22 23:29:48'),
(2, NULL, 'Supervisor', NULL, 1, 1, '2005-08-29 21:08:54', 2, '2011-12-26 14:56:34'),
(3, NULL, 'Rendszergazda', NULL, 1, 1, '2005-08-29 21:10:02', NULL, NULL),
(4, NULL, 'Kiemelt Tag', NULL, 1, 1, '2005-08-29 21:10:55', 2, '2010-10-05 12:23:21'),
(5, NULL, 'Tag', NULL, 1, 2, '2016-10-14 20:37:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_groups_config`
--

CREATE TABLE `core_groups_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fieldName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fieldValue` text COLLATE utf8_bin DEFAULT NULL,
  `autoload` int(1) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `core_groupsID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_groups_rights`
--

CREATE TABLE `core_groups_rights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `core_groupsID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `core_configsID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `allrecs` int(2) UNSIGNED DEFAULT 0,
  `ownrecs` int(2) UNSIGNED DEFAULT 0,
  `active` int(1) UNSIGNED DEFAULT 1,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `core_groups_rights`
--

INSERT INTO `core_groups_rights` (`id`, `core_groupsID`, `core_configsID`, `allrecs`, `ownrecs`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 2, 1, 31, 0, 1, 2, '2012-03-30 15:44:44', NULL, NULL),
(2, 2, 2, 31, 0, 1, 2, '2012-03-30 15:45:16', NULL, NULL),
(3, 2, 3, 31, 0, 1, 2, '2012-03-30 15:46:14', NULL, NULL),
(4, 2, 4, 31, 0, 1, 2, '2012-03-30 15:46:27', NULL, NULL),
(5, 2, 5, 15, 0, 1, 2, '2012-03-30 15:46:42', NULL, NULL),
(7, 2, 7, 31, 0, 1, 2, '2012-03-30 15:47:09', NULL, NULL),
(9, 2, 10, 15, 0, 1, 2, '2012-03-30 15:48:16', NULL, NULL),
(165, 3, 104, 31, 0, 1, 2, '2022-02-17 16:14:27', NULL, NULL),
(16, 2, 17, 31, 0, 1, 2, '2012-03-30 15:50:10', NULL, NULL),
(124, 2, 90, 31, 0, 1, 2, '2017-04-28 10:16:35', NULL, NULL),
(159, 3, 107, 31, 0, 1, 2, '2022-02-20 22:26:43', NULL, NULL),
(162, 3, 106, 31, 0, 1, 2, '2022-02-20 19:38:11', NULL, NULL),
(149, 2, 107, 31, 0, 1, 2, '2022-02-20 22:26:43', NULL, NULL),
(84, 2, 72, 31, 0, 1, 2, '2013-09-05 22:10:29', NULL, NULL),
(87, 2, 73, 31, 0, 1, 2, '2013-09-23 13:14:02', NULL, NULL),
(148, 2, 106, 31, 0, 1, 2, '2022-02-20 19:38:11', NULL, NULL),
(152, 3, 3, 0, 0, 0, 2, '2012-03-30 15:46:14', 3, '2022-02-21 09:49:25'),
(151, 3, 2, 0, 0, 0, 2, '2012-03-30 15:45:16', 3, '2022-02-21 09:49:26'),
(158, 3, 90, 8, 0, 1, 2, '2017-04-28 10:16:35', NULL, NULL),
(150, 3, 1, 0, 0, 0, 2, '2012-03-30 15:44:44', 3, '2022-02-21 09:49:52'),
(156, 3, 10, 0, 0, 1, 2, '2012-03-30 15:48:16', NULL, NULL),
(116, 1, 1, 0, 0, 1, 2, '2016-10-20 21:28:46', NULL, NULL),
(154, 3, 5, 0, 0, 0, 2, '2012-03-30 15:46:42', 3, '2022-02-21 09:49:23'),
(153, 3, 4, 0, 0, 0, 2, '2012-03-30 15:46:27', 3, '2022-02-21 09:49:24'),
(168, 3, 101, 31, 0, 1, 2, '2022-02-17 11:49:00', NULL, NULL),
(169, 3, 102, 31, 0, 1, 2, '2022-02-17 14:08:48', NULL, NULL),
(167, 3, 98, 0, 0, 1, 2, '2017-04-29 21:38:30', NULL, NULL),
(170, 3, 103, 31, 0, 1, 2, '2022-02-17 14:48:52', NULL, NULL),
(146, 2, 104, 31, 0, 1, 2, '2022-02-17 16:14:27', NULL, NULL),
(147, 2, 105, 31, 0, 1, 2, '2022-02-20 19:37:39', NULL, NULL),
(131, 2, 98, 8, 0, 1, 2, '2017-04-29 21:38:30', NULL, NULL),
(166, 3, 105, 31, 0, 1, 2, '2022-02-20 19:37:39', NULL, NULL),
(143, 2, 101, 31, 0, 1, 2, '2022-02-17 11:49:00', NULL, NULL),
(144, 2, 102, 31, 0, 1, 2, '2022-02-17 14:08:48', NULL, NULL),
(145, 2, 103, 31, 0, 1, 2, '2022-02-17 14:48:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_lang`
--

CREATE TABLE `core_lang` (
  `id` int(2) UNSIGNED NOT NULL,
  `active` int(1) UNSIGNED NOT NULL,
  `name` varchar(4) COLLATE utf8_bin NOT NULL,
  `pictureURL` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `core_lang`
--

INSERT INTO `core_lang` (`id`, `active`, `name`, `pictureURL`) VALUES
(1, 1, 'HU', 'images/public/button/hu.gif');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_language`
--

CREATE TABLE `core_language` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `systemType` enum('frontend','backend') COLLATE utf8_bin DEFAULT NULL,
  `core_configsID` bigint(20) UNSIGNED DEFAULT NULL,
  `fieldName` varchar(100) COLLATE utf8_bin NOT NULL,
  `fieldValue` text COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin DEFAULT NULL,
  `autoload` int(1) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `core_language`
--

INSERT INTO `core_language` (`id`, `systemType`, `core_configsID`, `fieldName`, `fieldValue`, `description`, `autoload`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'frontend', 10, 'labelWaitDr', 'ORVOS:', NULL, 1, 1, NULL, NULL, 2, '2013-09-10 15:54:47'),
(2, 'frontend', NULL, 'messageCardAccept', 'Kártya elfogadva!', NULL, 1, 1, NULL, NULL, NULL, NULL),
(3, 'frontend', NULL, 'messageComeIn', 'Kérem fáradjon be!', NULL, 1, 1, NULL, NULL, NULL, NULL),
(4, 'frontend', NULL, 'messageBarcodeLogged', 'Már be van jelentkezve!', NULL, 1, 1, NULL, NULL, NULL, NULL),
(5, 'frontend', NULL, 'messageDrNotOpen', 'A kártyához tartozó orvos most nem rendel!', NULL, 1, 1, NULL, NULL, NULL, NULL),
(6, 'frontend', NULL, 'messageDrNotExist', 'Az Ön orvosa itt nem rendel!', NULL, 1, 1, NULL, NULL, NULL, NULL),
(7, 'frontend', NULL, 'messageBadWhere', 'Hibás kihez megadás!', NULL, 1, 1, NULL, NULL, NULL, NULL),
(8, 'frontend', NULL, 'systemName', 'Váró', NULL, 1, 1, NULL, NULL, NULL, NULL),
(9, 'frontend', NULL, 'templateNotFound', 'Template nem tal', NULL, 1, 1, NULL, NULL, NULL, NULL),
(10, 'frontend', NULL, 'messageOpenExpired', 'Rendelési idő lejárt!', NULL, 1, 1, NULL, NULL, NULL, NULL),
(11, 'frontend', NULL, 'marqueeDrSeparator', '--', NULL, 1, 1, NULL, NULL, NULL, NULL),
(12, 'frontend', NULL, 'marqueeMessageSeparator', '**', NULL, 1, 1, NULL, NULL, NULL, NULL),
(13, 'frontend', NULL, 'cssNotFound', 'CSS nem található', NULL, 1, 1, NULL, NULL, NULL, NULL),
(14, 'backend', 10, 'copyright', 'Copyright &copy; Mysys', NULL, 1, 1, NULL, NULL, 2, '2016-05-03 17:38:21'),
(15, 'backend', 10, 'loginBoxHeaderText', 'Bejelentkezés', NULL, 0, 1, NULL, NULL, 2, '2013-09-11 09:05:46'),
(16, 'frontend', 10, 'loginSealNumberLabel', 'PECSÉTSZÁM', NULL, 0, 1, NULL, NULL, 2, '2013-09-11 09:07:14'),
(17, 'backend', 10, 'loginNicknameLabel', 'Név', NULL, 0, 1, NULL, NULL, 2, '2013-09-11 09:09:00'),
(18, 'backend', 10, 'loginPasswordLabel', 'Jelszó', NULL, 0, 1, NULL, NULL, 2, '2013-09-11 09:09:18'),
(19, 'frontend', 10, 'shortSystemName', 'MySys Admin 1.0', NULL, 1, 1, NULL, NULL, 2, '2016-05-03 17:37:44'),
(20, 'frontend', NULL, 'startSelectTitle', '- Kérem válasszon -', NULL, 1, 1, NULL, NULL, NULL, NULL),
(21, 'frontend', NULL, 'loginSealNumberEmpty', 'Nincs pecsétszám kiválasztva!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(22, 'backend', NULL, 'loginNicknameEmpty', 'Üres felhasználónév!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(23, 'backend', NULL, 'loginPasswordEmpty', 'Üres jelszó!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(24, 'backend', NULL, 'loginNicknameNotExist', 'Nincs ilyen felhasználó!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(25, 'backend', NULL, 'loginPasswordBad', 'Hibás jelszó!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(26, 'frontend', NULL, 'jsNotFound', 'js file nem található!', NULL, 1, 1, NULL, NULL, NULL, NULL),
(27, 'frontend', NULL, 'messageBadBarcode', 'Ismeretlen kártya formátum!', NULL, 1, 1, NULL, NULL, NULL, NULL),
(28, 'frontend', NULL, 'orderWhenTitle', 'Rendelési idő: ', NULL, 1, 1, NULL, NULL, NULL, NULL),
(394, 'backend', 107, 'cargoID', 'Teher', NULL, NULL, 1, 2, '2022-02-21 08:10:50', NULL, NULL),
(30, 'backend', 10, 'loginSubmitButtonText', 'Belépés', NULL, 1, 1, 2, '2013-09-09 13:51:43', 2, '2013-09-11 09:06:18'),
(393, 'backend', 107, 'driverID', 'Sofőr', NULL, NULL, 1, 2, '2022-02-21 08:09:51', NULL, NULL),
(32, 'backend', 10, 'call', 'Behívás', NULL, 0, 1, NULL, NULL, 2, '2013-11-19 19:52:29'),
(33, 'backend', 10, 'inside', 'Ellátás', NULL, 0, 1, NULL, NULL, 2, '2013-11-19 20:08:35'),
(34, 'backend', 10, 'outside', 'Törlés', NULL, 0, 1, NULL, NULL, 2, '2013-11-19 20:16:52'),
(35, 'backend', 68, 'title', 'Várakozók', NULL, 0, 1, NULL, NULL, NULL, NULL),
(36, 'backend', 69, 'title', 'Ellátottak', NULL, 0, 1, NULL, NULL, NULL, NULL),
(37, 'backend', 64, 'sealNumber', 'Orvos', NULL, NULL, 1, 2, '2013-11-20 10:20:36', 2, '2013-11-20 10:21:32'),
(38, 'backend', 70, 'title', 'Előjegyzettek', NULL, 0, 1, NULL, NULL, NULL, NULL),
(39, 'backend', 67, 'nocore_doctor', 'Orvos', NULL, 0, 1, NULL, NULL, NULL, NULL),
(40, 'backend', 67, 'tajNumber', 'TAJ', NULL, 0, 1, NULL, NULL, NULL, NULL),
(41, 'backend', 67, 'masterCartonNumber', 'Törzskarton', NULL, 0, 1, NULL, NULL, NULL, NULL),
(42, 'backend', 67, 'birthDate', 'Születési dátum', NULL, 0, 1, NULL, NULL, NULL, NULL),
(43, 'backend', 67, 'loginDate', 'Bejelentkezés dátum', NULL, 0, 1, NULL, NULL, NULL, NULL),
(44, 'backend', 67, 'core_genderID', 'Neme', NULL, 0, 1, NULL, NULL, NULL, NULL),
(45, 'backend', 10, 'patientID', 'Beteg', NULL, NULL, 1, 2, '2013-11-20 10:04:37', NULL, NULL),
(46, 'backend', 67, 'tajNumberEmpty', 'Üres TAJ!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(47, 'backend', 67, 'masterCartonNumberEmpty', 'Üres Törzskarton!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(48, 'backend', 67, 'birthDateEmpty', 'Üres Születési dátum!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(49, 'backend', 67, 'loginDateEmpty', 'Üres Bejelentkezés dátum!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(50, 'backend', 67, 'core_genderIDEmpty', 'Üres Neme!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(392, 'backend', 107, 'driverName', 'Sofőr', NULL, NULL, 1, 2, '2022-02-21 08:09:33', NULL, NULL),
(53, 'backend', 57, 'startTime', 'Rendelés mettől', '', 0, 1, NULL, NULL, 2, '2014-02-10 19:51:47'),
(54, 'backend', 57, 'stopTime', 'Rendelés meddig', NULL, 0, 1, NULL, NULL, 2, '2014-02-10 19:52:14'),
(55, 'backend', 57, 'barcodeStart', 'Vonalkód kezdés', NULL, 0, 1, NULL, NULL, NULL, NULL),
(56, 'backend', 57, 'barcodeStop', 'Vonalkód végzés', NULL, 0, 1, NULL, NULL, NULL, NULL),
(57, 'backend', 57, 'doctorIs', 'Orvos', NULL, 0, 1, NULL, NULL, NULL, NULL),
(58, 'backend', 57, 'nurseIs', 'Nővér', NULL, 0, 1, NULL, NULL, NULL, NULL),
(391, 'backend', 107, 'driverIDEmpty', 'Üres Sofőr!', NULL, NULL, 1, 2, '2022-02-21 08:09:14', NULL, NULL),
(60, 'backend', 57, 'startTimeEmpty', 'Üres Mettől!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(61, 'backend', 57, 'stopTimeEmpty', 'Üres Meddig!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(62, 'backend', 10, 'message', 'Üzenet', NULL, 0, 1, NULL, NULL, NULL, NULL),
(63, 'backend', 10, 'messageEmpty', 'Üres Üzenet!', NULL, 0, 1, NULL, NULL, 2, '2013-11-19 20:11:09'),
(64, 'backend', 64, 'sealNumberDeputy', 'Helyettes', NULL, 0, 1, NULL, NULL, NULL, NULL),
(65, 'backend', 10, 'stopDate', 'Meddig', '', 0, 1, NULL, NULL, 2, '2013-11-19 20:24:30'),
(66, 'backend', 64, 'sealNumberEmpty', 'Üres Orvos!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(67, 'backend', 64, 'sealNumberDeputyEmpty', 'Üres Helyettes!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(68, 'backend', 55, 'textValue', 'Szöveg', '', 0, 1, NULL, NULL, NULL, NULL),
(69, 'backend', 10, 'advertFileNameEmpty', 'Üres Kép!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(70, 'backend', 55, 'textValueEmpty', 'Üres Szöveg!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(71, 'backend', 53, 'sealNumber', 'Pecsétszám', NULL, 0, 1, NULL, NULL, NULL, NULL),
(72, 'backend', 53, 'licence', 'Liszensz', NULL, 0, 1, NULL, NULL, NULL, NULL),
(73, 'backend', 10, 'information', 'Információ', '', 0, 1, NULL, NULL, 2, '2013-11-19 20:36:54'),
(74, 'backend', 53, 'nurse', 'Nővér', NULL, 0, 1, NULL, NULL, NULL, NULL),
(75, 'backend', 53, 'bannerMaximum', 'Banner', NULL, 0, 1, NULL, NULL, NULL, NULL),
(76, 'backend', 53, 'marqueeMaximum', 'Fényújság', NULL, 0, 1, NULL, NULL, NULL, NULL),
(77, 'backend', 53, 'statusName', 'Állapot', NULL, 0, 1, NULL, NULL, NULL, NULL),
(78, 'backend', 53, 'sealNumberEmpty', 'Üres Pecsétszám!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(79, 'backend', 53, 'licenceEmpty', 'Üres Liszensz!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(390, 'backend', 107, 'vehicleIDEmpty', 'Üres Jármű!', NULL, NULL, 1, 2, '2022-02-21 08:07:05', NULL, NULL),
(389, 'backend', 107, 'vehicleName', 'Jármű', NULL, NULL, 1, 2, '2022-02-21 08:06:38', NULL, NULL),
(82, 'backend', 50, 'sealNumber', 'Orvos', NULL, 0, 1, NULL, NULL, NULL, NULL),
(388, 'backend', 107, 'vehicleID', 'Jármű', NULL, NULL, 1, 2, '2022-02-21 08:06:15', NULL, NULL),
(84, 'backend', 20, 'fgcolor', 'Előtérszín', NULL, 0, 1, NULL, NULL, NULL, NULL),
(85, 'backend', 20, 'bgcolor', 'Háttérszín', NULL, 0, 1, NULL, NULL, NULL, NULL),
(86, 'backend', 20, 'path', 'Útvonal', '', 0, 1, NULL, NULL, NULL, NULL),
(87, 'backend', 17, 'title', 'Megnevezés', NULL, 0, 1, NULL, NULL, NULL, NULL),
(88, 'backend', 17, 'tplName', 'Template', NULL, 0, 1, NULL, NULL, NULL, NULL),
(89, 'backend', 17, 'titleEmpty', 'Üres Megnevezés!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(90, 'backend', 3, 'name', 'Csoport', NULL, 0, 1, NULL, NULL, NULL, NULL),
(91, 'backend', 3, 'actionCount', 'User', NULL, 0, 1, NULL, NULL, NULL, NULL),
(92, 'backend', 10, 'rightsCount', 'Jog', NULL, 0, 1, NULL, NULL, 2, '2013-11-19 20:21:09'),
(93, 'backend', 3, 'nameEmpty', 'Üres Csoport', NULL, 0, 1, NULL, NULL, NULL, NULL),
(94, 'backend', 10, 'core_groupsID', 'Csoport', NULL, 0, 1, NULL, NULL, 2, '2013-11-19 20:35:33'),
(95, 'backend', 10, 'core_groupsIDEmpty', 'Üres Csoport!', NULL, 0, 1, NULL, NULL, 2, '2013-11-19 20:35:41'),
(99, 'backend', 1, 'core_userstitleID', 'Titulus', NULL, 0, 1, NULL, NULL, NULL, NULL),
(100, 'backend', 1, 'surname', 'Vezetéknév', NULL, 0, 1, NULL, NULL, NULL, NULL),
(101, 'backend', 1, 'forename', 'Keresztnév', '', 0, 1, NULL, NULL, NULL, NULL),
(102, 'backend', 1, 'nickname', 'Becenév', NULL, 0, 1, NULL, NULL, NULL, NULL),
(103, 'backend', 1, 'password', 'Jelszó', NULL, 0, 1, NULL, NULL, NULL, NULL),
(104, 'backend', 1, 'password2', 'Jelszó megerősítés', NULL, 0, 1, NULL, NULL, NULL, NULL),
(105, 'backend', 1, 'oldpassword', 'Régi jelszó', NULL, 0, 1, NULL, NULL, NULL, NULL),
(106, 'backend', 1, 'pictureURL', 'Kép', NULL, 0, 1, NULL, NULL, NULL, NULL),
(107, 'backend', 1, 'activationWhen', 'Aktiválva', NULL, 0, 1, NULL, NULL, NULL, NULL),
(108, 'backend', 1, 'newsletter', 'Hirlevél', NULL, 0, 1, NULL, NULL, NULL, NULL),
(109, 'backend', 1, 'myData', 'Adataim', NULL, 0, 1, NULL, NULL, NULL, NULL),
(110, 'backend', 10, 'passchange', 'Jelszóváltás', NULL, 0, 1, NULL, NULL, 2, '2013-10-02 10:37:49'),
(111, 'backend', 1, 'registration', 'Regisztráció', NULL, 0, 1, NULL, NULL, NULL, NULL),
(112, 'backend', 1, 'nicknameEmpty', 'Üres Becenév!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(113, 'backend', 1, 'passwordEmpty', 'Üres Jelszó!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(114, 'backend', 1, 'password2Empty', 'Üres Jelszó megerősítés!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(115, 'backend', 1, 'passwordPassword', 'Hibás jelszó megerősítés!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(116, 'backend', 1, 'passwordOldEmpty', 'Üres Régi jelszó!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(117, 'backend', 1, 'surnameEmpty', 'Üres Vezetéknév!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(118, 'backend', 1, 'forenameEmpty', 'Üres Keresznév!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(119, 'backend', 10, 'emailEmpty', 'Üres Email!', NULL, 0, 1, NULL, NULL, 2, '2013-11-19 20:01:36'),
(120, 'backend', 10, 'emailDuplicate', 'Már van ilyen Email!', NULL, 0, 1, NULL, NULL, 2, '2013-11-19 20:01:56'),
(121, 'backend', 1, 'notFoundUser', 'Nem létező Rövidnév/Jelszó!', NULL, 0, 1, NULL, NULL, NULL, NULL),
(122, 'backend', 10, 'systemType', 'Rendszertípus', NULL, NULL, 1, 2, '2013-09-05 22:40:41', 2, '2013-11-20 09:31:26'),
(123, 'backend', 10, 'fieldType', 'Típus', NULL, NULL, 1, 2, '2013-09-05 22:41:35', 2, '2013-11-19 20:03:32'),
(124, 'backend', 10, 'fieldName', 'Megnevezés', NULL, NULL, 1, 2, '2013-09-05 22:41:59', 2, '2013-11-19 20:02:54'),
(125, 'backend', 10, 'fieldValue', 'Érték', NULL, NULL, 1, 2, '2013-09-05 22:42:18', 2, '2013-11-19 20:04:14'),
(126, 'backend', 10, 'autoload', 'Autobetöltés', NULL, NULL, 1, 2, '2013-09-05 22:43:07', 2, '2013-11-19 19:51:40'),
(127, 'backend', 10, 'systemTypeEmpty', 'Üres Rendszertípus!', NULL, NULL, 1, 2, '2013-09-05 22:43:39', 2, '2013-11-20 09:31:16'),
(128, 'backend', 10, 'fieldTypeEmpty', 'Üres Típus!', NULL, NULL, 1, 2, '2013-09-05 22:44:46', 2, '2013-11-19 20:03:18'),
(129, 'backend', 10, 'fieldNameEmpty', 'Üres Megnevezés!', NULL, NULL, 1, 2, '2013-09-05 22:46:17', 2, '2013-11-19 20:02:37'),
(130, 'backend', 10, 'fieldValueEmpty', 'Üres Érték!', NULL, NULL, 1, 2, '2013-09-05 22:46:41', 2, '2013-11-19 20:04:03'),
(139, 'backend', 10, 'nameEmpty', 'Üres Megnevezés!', NULL, NULL, 1, 2, '2013-09-05 22:56:31', 2, '2013-11-19 20:50:32'),
(146, 'backend', 10, 'actionCount', 'Mennyiség', NULL, NULL, 1, 2, '2013-11-19 19:44:58', NULL, NULL),
(151, 'backend', 10, 'viewButtonText', 'Megtekintés', NULL, 1, 1, 2, '2013-09-10 12:31:44', 2, '2013-09-10 12:48:34'),
(152, 'frontend', 10, 'labelWaitNurse', 'NŐVÉR:', NULL, 1, 1, 2, '2013-09-10 15:54:02', 2, '2013-09-19 15:08:43'),
(153, 'backend', 10, 'deleteGroup', 'Törlés', NULL, NULL, 1, 2, '2013-09-16 14:41:19', 2, '2013-10-08 13:06:52'),
(154, 'backend', 10, 'topMessage', '//A Honlap feltőltése folyamatban ezért 1-2 funkció még nem működik.', NULL, 1, 1, 2, '2013-09-23 15:24:00', 2, '2013-09-23 15:36:21'),
(155, 'backend', 10, 'list', 'List', NULL, NULL, 1, 2, '2013-09-23 15:48:57', NULL, NULL),
(156, 'backend', 10, 'add', 'Felvitel', NULL, NULL, 1, 2, '2013-09-23 15:49:28', 2, '2016-03-04 09:05:11'),
(157, 'backend', 10, 'copy', 'Másolás', NULL, NULL, 1, 2, '2013-09-23 15:55:32', NULL, NULL),
(158, 'backend', 10, 'edit', 'Módosítás', NULL, NULL, 1, 2, '2013-09-23 15:58:07', NULL, NULL),
(159, 'backend', 10, 'view', 'Megtekintés', NULL, NULL, 1, 2, '2013-09-23 15:59:04', NULL, NULL),
(160, 'backend', 10, 'delete', 'Törlés', NULL, NULL, 1, 2, '2013-09-23 16:00:40', NULL, NULL),
(161, 'backend', 10, 'first', 'Első', NULL, NULL, 1, 2, '2013-09-23 16:02:21', 2, '2013-09-23 16:04:13'),
(162, 'backend', 10, 'prev', 'Elöző oldal', NULL, NULL, 1, 2, '2013-09-23 16:05:21', NULL, NULL),
(163, 'backend', 10, 'prevItem', 'Elöző tétel', NULL, NULL, 1, 2, '2013-09-23 16:05:34', NULL, NULL),
(164, 'backend', 10, 'next', 'Következő oldal', NULL, NULL, 1, 2, '2013-09-23 16:07:58', NULL, NULL),
(165, 'backend', 10, 'nextItem', 'Következő tétel', NULL, NULL, 1, 2, '2013-09-23 16:08:12', NULL, NULL),
(166, 'backend', 10, 'last', 'Utolsó', NULL, NULL, 1, 2, '2013-09-23 16:09:14', NULL, NULL),
(167, 'backend', 10, 'layoutfull', 'Teljes', NULL, NULL, 1, 2, '2013-09-23 16:10:10', NULL, NULL),
(168, 'backend', 10, 'layoutmini', 'Behívó', NULL, NULL, 1, 2, '2013-09-23 16:10:32', NULL, NULL),
(169, 'backend', 10, 'layoutsetup', 'Beállítások', NULL, NULL, 1, 2, '2013-09-23 16:10:54', NULL, NULL),
(170, 'backend', 10, 'search', 'Keresés', NULL, NULL, 1, 2, '2013-09-23 16:12:03', NULL, NULL),
(171, 'backend', 10, 'searchOff', 'Összes', NULL, NULL, 1, 2, '2013-09-23 16:14:28', NULL, NULL),
(172, 'backend', 10, 'yes', 'Igen', NULL, NULL, 1, 2, '2013-09-23 16:15:25', NULL, NULL),
(173, 'backend', 10, 'no', 'Nem', NULL, NULL, 1, 2, '2013-09-23 16:15:37', NULL, NULL),
(174, 'backend', 10, 'save', 'Mentés', NULL, NULL, 1, 2, '2013-09-23 16:17:50', NULL, NULL),
(175, 'backend', 10, 'saveNoBack', 'Mentés és maradok', NULL, NULL, 1, 2, '2013-09-23 16:18:17', NULL, NULL),
(176, 'backend', 10, 'back', 'Vissza', NULL, NULL, 1, 2, '2013-09-23 16:18:45', NULL, NULL),
(177, 'backend', 10, 'noRecord', 'Nincs találat!', NULL, NULL, 1, 2, '2013-09-23 16:22:27', NULL, NULL),
(178, 'backend', 10, 'noRights', 'Nincs jogosultság!', NULL, NULL, 1, 2, '2013-09-23 16:23:52', NULL, NULL),
(179, 'backend', 10, 'order', 'Rendezettség', NULL, NULL, 1, 2, '2013-09-23 16:24:29', NULL, NULL),
(180, 'backend', 10, 'logout', 'Kijelentkezés', NULL, NULL, 1, 2, '2013-09-23 16:25:38', NULL, NULL),
(181, 'backend', 10, 'description', 'Leírás', NULL, NULL, 1, 2, '2013-09-23 16:26:17', NULL, NULL),
(182, 'backend', 10, 'item', 'Tétel', NULL, NULL, 1, 2, '2013-09-23 20:38:58', NULL, NULL),
(183, 'backend', 10, 'page', 'Oldal', NULL, NULL, 1, 2, '2013-09-23 20:39:58', NULL, NULL),
(184, 'backend', 10, 'myDataChange', 'Adataim', NULL, NULL, 1, 2, '2013-09-23 20:41:53', NULL, NULL),
(185, 'backend', 10, 'passwordChange', 'Jelszóváltás', NULL, NULL, 1, 2, '2013-09-23 20:42:39', NULL, NULL),
(186, 'backend', 10, 'zoomin', 'Kicsi', NULL, NULL, 1, 2, '2013-09-23 20:47:40', 2, '2013-10-04 08:58:10'),
(187, 'backend', 10, 'zoomout', 'Nagy', NULL, NULL, 1, 2, '2013-09-23 20:49:22', NULL, NULL),
(188, 'backend', 10, 'zoomClose', 'Bezárás', NULL, NULL, 1, 2, '2013-09-23 20:49:42', NULL, NULL),
(189, 'backend', 10, 'itemSelect', '----', NULL, NULL, 1, 2, '2013-09-23 21:04:30', NULL, NULL),
(190, 'backend', 10, 'insertWhen', 'Rögzítve', NULL, NULL, 1, 2, '2013-09-23 21:11:15', NULL, NULL),
(191, 'backend', 10, 'newItem', 'Új tétel', NULL, NULL, 1, 2, '2013-09-23 21:13:35', NULL, NULL),
(192, 'backend', 10, 'topLogo', '//Backend', NULL, NULL, 1, 2, '2013-09-23 21:23:13', 2, '2013-09-23 21:29:03'),
(193, 'backend', 10, 'sec', 'másodperc', NULL, NULL, 1, 2, '2013-09-23 21:24:47', 2, '2013-09-23 21:43:09'),
(194, 'backend', 10, 'system', 'MySys Admin 1.0', NULL, NULL, 1, 2, '2013-09-23 22:23:12', 2, '2016-05-03 17:33:57'),
(195, 'backend', 55, 'sequenceId', 'Sorrend', NULL, NULL, 1, 2, '2013-09-24 09:41:18', NULL, NULL),
(196, 'backend', 10, 'core_advert_advertiserID', 'Hírdető', NULL, NULL, 1, 2, '2013-09-24 12:57:12', 2, '2013-11-19 19:54:57'),
(197, 'backend', 10, 'core_advert_zoneID', 'Zóna', NULL, NULL, 1, 2, '2013-09-24 12:59:14', 2, '2013-11-19 19:56:22'),
(198, 'backend', 10, 'activateWhen', 'Mettől', NULL, NULL, 1, 2, '2013-09-24 12:59:45', 2, '2013-11-19 19:49:55'),
(199, 'backend', 10, 'deactivateWhen', 'Meddig', NULL, NULL, 1, 2, '2013-09-24 12:59:58', 2, '2013-11-19 19:50:07'),
(200, 'backend', 10, 'playMaxNum', 'Maximális lejátszás', NULL, NULL, 1, 2, '2013-09-24 13:01:06', 2, '2013-11-19 20:19:24'),
(201, 'backend', 10, 'playCounter', 'Lejátszott', NULL, NULL, 1, 2, '2013-09-24 13:01:25', 2, '2013-11-19 20:18:53'),
(202, 'backend', 10, 'clickMaxNum', 'Maximális klikkelés', NULL, NULL, 1, 2, '2013-09-24 13:01:49', 2, '2013-11-19 19:54:01'),
(203, 'backend', 10, 'clickCounter', 'Klikkeltek', NULL, NULL, 1, 2, '2013-09-24 13:02:12', 2, '2013-11-19 19:53:18'),
(204, 'backend', 10, 'priceMax', 'Maximálisan költhető', NULL, NULL, 1, 2, '2013-09-24 13:02:38', 2, '2013-11-19 20:20:28'),
(205, 'backend', 10, 'priceActual', 'Elköltött', NULL, NULL, 1, 2, '2013-09-24 13:02:57', 2, '2013-11-19 20:20:05'),
(206, 'backend', 10, 'address', 'Utca, házszám', NULL, NULL, 1, 2, '2013-09-24 13:59:15', 2, '2013-11-19 20:34:36'),
(207, 'backend', 13, 'contactName', 'Kapcsolattartó', NULL, NULL, 1, 2, '2013-09-24 13:59:35', NULL, NULL),
(208, 'backend', 13, 'phone', 'Telefon', NULL, NULL, 1, 2, '2013-09-24 13:59:49', NULL, NULL),
(209, 'backend', 13, 'fax', 'Fax', NULL, NULL, 1, 2, '2013-09-24 14:00:01', 2, '2013-09-24 14:00:10'),
(210, 'backend', 13, 'mobile', 'Mobil', NULL, NULL, 1, 2, '2013-09-24 14:00:25', NULL, NULL),
(211, 'backend', 10, 'email', 'Email', NULL, NULL, 1, 2, '2013-09-24 14:00:40', 2, '2013-11-19 20:01:18'),
(212, 'backend', 13, 'website', 'Weboldal', NULL, NULL, 1, 2, '2013-09-24 14:00:55', NULL, NULL),
(213, 'backend', 10, 'nameDuplicate', 'Már van ilyen!', NULL, NULL, 1, 2, '2013-09-24 12:56:20', 2, '2013-11-19 20:13:03'),
(214, 'backend', 10, 'advertFileName', 'Kép', NULL, NULL, 1, 2, '2013-09-24 14:17:35', NULL, NULL),
(215, 'backend', 6, 'textValue', 'Szöveges tartalom', NULL, NULL, 1, 2, '2013-09-24 14:18:08', NULL, NULL),
(216, 'backend', 6, 'jumpURL', 'Link', NULL, NULL, 1, 2, '2013-09-24 14:18:24', NULL, NULL),
(217, 'backend', 6, 'core_advert_groupID', 'Reklám csoport', NULL, NULL, 1, 2, '2013-09-24 14:19:29', NULL, NULL),
(218, 'backend', 6, 'core_advert_campaignID', 'Kampány', NULL, NULL, 1, 2, '2013-09-24 14:19:51', NULL, NULL),
(219, 'backend', 6, 'core_advert_sizeID', 'Méret', NULL, NULL, 1, 2, '2013-09-24 14:20:06', NULL, NULL),
(220, 'backend', 6, 'core_advert_sourceID', 'Forrás', NULL, NULL, 1, 2, '2013-09-24 14:20:22', NULL, NULL),
(221, 'backend', 10, 'sizeWidth', 'Szélesség', NULL, NULL, 1, 2, '2013-09-24 14:20:42', 2, '2013-11-19 20:23:02'),
(222, 'backend', 10, 'sizeHeight', 'Magasság', NULL, NULL, 1, 2, '2013-09-24 14:20:57', 2, '2013-11-19 20:22:45'),
(223, 'backend', 6, 'changeTime', 'Csere idő', NULL, NULL, 1, 2, '2013-09-24 14:21:20', 2, '2013-11-05 09:22:53'),
(224, 'backend', 10, 'core_configsIDEmpty', 'Üres Modul!', NULL, NULL, 1, 2, '2013-09-24 14:28:51', 2, '2013-11-19 19:57:16'),
(225, 'backend', 2, 'core_usersIDEmpty', 'Üres Felhasználó!', NULL, NULL, 1, 2, '2013-09-24 14:29:23', NULL, NULL),
(226, 'backend', 2, 'core_usersID', 'Felhasználó', NULL, NULL, 1, 2, '2013-09-24 14:29:53', 2, '2013-09-24 14:30:40'),
(227, 'backend', 10, 'import', 'Import', NULL, 1, 1, 2, '2013-09-30 10:48:03', NULL, NULL),
(228, 'backend', 10, 'fileNameEmpty', 'Üres Fájlnév!', NULL, NULL, 1, 2, '2013-09-30 11:03:52', 2, '2013-11-20 08:46:27'),
(229, 'backend', 83, 'importOK', 'Adatok importja sikeres!', NULL, NULL, 1, 2, '2013-09-30 15:18:45', 2, '2013-09-30 15:19:15'),
(230, 'backend', 83, 'importBAD', 'Adatok importja sikertelen!', NULL, NULL, 1, 2, '2013-09-30 15:58:52', NULL, NULL),
(231, 'backend', 10, 'fileName', 'Fájlnév', NULL, NULL, 1, 2, '2013-10-01 08:53:24', 2, '2013-11-20 08:46:12'),
(232, 'backend', 10, 'core_configsID', 'Modul', NULL, NULL, 1, 2, '2013-10-01 08:55:02', 2, '2013-11-19 19:57:02'),
(233, 'backend', 10, 'mydata', 'Adataim', NULL, NULL, 1, 2, '2013-10-02 08:36:01', 2, '2013-10-02 08:38:17'),
(234, 'backend', 1, 'oldpasswordEmpty', 'Üres Régi jelszó!', NULL, NULL, 1, 2, '2013-10-02 09:45:25', NULL, NULL),
(235, 'backend', 1, 'oldpasswordBad', 'Hibás Régi jelszó!', NULL, NULL, 1, 2, '2013-10-02 10:28:58', NULL, NULL),
(398, 'backend', 107, 'passangerName', 'Utas', NULL, NULL, 1, 2, '2022-02-21 08:12:19', NULL, NULL),
(237, 'backend', 10, 'pdf', 'PDF', NULL, NULL, 1, 2, '2013-10-09 12:27:31', NULL, NULL),
(238, 'backend', 10, 'calendarToday', 'Ma', NULL, NULL, 1, 2, '2013-10-14 15:43:12', NULL, NULL),
(395, 'backend', 107, 'cargoName', 'Teher', NULL, NULL, 1, 2, '2022-02-21 08:11:07', NULL, NULL),
(240, 'backend', 75, 'startWhen', 'Mettől', NULL, NULL, 1, 2, '2013-10-15 13:21:55', NULL, NULL),
(241, 'backend', 75, 'stopWhen', 'Meddig', NULL, NULL, 1, 2, '2013-10-15 13:22:44', NULL, NULL),
(397, 'backend', 107, 'passangerIDEmpty', 'Üres Utas!', NULL, NULL, 1, 2, '2022-02-21 08:12:01', NULL, NULL),
(243, 'backend', 10, 'week', 'Hét', NULL, NULL, 1, 2, '2013-10-15 14:03:51', NULL, NULL),
(396, 'backend', 107, 'cargoIDEmpty', 'Üres Teher!', NULL, NULL, 1, 2, '2022-02-21 08:11:24', NULL, NULL),
(245, 'backend', 10, 'id', 'Azonosító', NULL, NULL, 1, 2, '2013-10-16 09:22:28', 2, '2013-11-19 20:06:41'),
(246, 'backend', 83, 'productId', 'Cikkszám', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(247, 'backend', 75, 'title', 'Bejegyzés', NULL, NULL, 1, 2, '2013-10-16 13:09:43', 2, '2013-10-16 13:13:08'),
(248, 'backend', 10, 'startDate', 'Mettől', NULL, NULL, 1, 2, '2013-10-17 08:32:02', 2, '2014-02-06 08:58:36'),
(249, 'backend', 10, 'zipcode', 'Irányítőszám', NULL, NULL, 1, 2, '2013-10-21 12:07:09', 2, '2013-11-19 20:25:47'),
(250, 'backend', 10, 'settlement', 'Település', NULL, NULL, 1, 2, '2013-10-21 12:07:34', 2, '2013-11-19 20:22:08'),
(251, 'backend', 53, 'phone', 'Telefon', NULL, NULL, 1, 2, '2013-10-21 12:08:39', NULL, NULL),
(252, 'backend', 10, 'core_localserverIDEmpty', 'Üres Szerver!', NULL, NULL, 1, 2, '2013-11-04 20:57:08', NULL, NULL),
(253, 'backend', 10, 'min', 'perc', NULL, NULL, 1, 2, '2013-11-04 20:57:08', NULL, NULL),
(254, 'backend', 10, 'dateViewFormat', '(éééé-hh-nn)', NULL, NULL, 1, 2, '2013-11-05 08:37:40', NULL, NULL),
(255, 'backend', 10, 'piece', 'darab', NULL, NULL, 1, 2, '2013-11-05 08:40:04', NULL, NULL),
(256, 'backend', 10, 'timeViewFormat', '(óó:pp:mm)', NULL, NULL, 1, 2, '2013-11-05 08:45:04', 2, '2013-11-05 08:46:30'),
(257, 'backend', 10, 'weekly', 'Hét', NULL, NULL, 1, 2, '2013-11-06 10:36:03', 2, '2014-01-27 11:45:04'),
(258, 'backend', 10, 'daily', 'Nap', NULL, NULL, 1, 2, '2013-11-06 10:36:58', 2, '2014-01-27 11:44:43'),
(259, 'backend', 53, 'patientTime', 'Páciens/Idő', NULL, NULL, 1, 2, '2013-11-11 11:38:43', 2, '2013-11-11 11:41:03'),
(260, 'backend', 53, 'alwaysView', 'Midig látható', NULL, NULL, 1, 2, '2013-11-19 08:55:16', NULL, NULL),
(261, 'backend', 10, 'core_localserverID', 'Szerver', NULL, NULL, 1, 2, '2013-11-19 15:57:43', NULL, NULL),
(262, 'backend', 10, 'monthly', 'Hónap', NULL, NULL, 1, 2, '2014-01-10 10:40:23', 2, '2014-01-27 11:45:43'),
(263, 'backend', 10, 'journal', 'Napló', NULL, NULL, 1, 2, '2014-01-27 11:46:03', NULL, NULL),
(264, 'backend', 10, 'journal', 'Napló', NULL, NULL, 1, 2, '2014-01-27 11:46:03', NULL, NULL),
(265, 'backend', 75, 'startDateTime', 'Mettől', NULL, NULL, 1, 2, '2014-02-06 08:55:28', NULL, NULL),
(266, 'backend', 75, 'stopDateTime', 'Meddig', NULL, NULL, 1, 2, '2014-02-06 08:55:44', NULL, NULL),
(267, 'backend', 56, 'patientIDEmpty', 'Üres Páciens!', NULL, NULL, 1, 2, '2014-02-06 13:05:15', 2, '2014-02-24 14:48:20'),
(268, 'backend', 75, 'nocore_patientIDEmpty', 'Üres Páciens!', NULL, NULL, 1, 2, '2014-02-06 13:05:15', NULL, NULL),
(269, 'backend', 57, 'startTimeReserve', 'Előjegyzés mettől', NULL, NULL, 1, 2, '2014-02-10 19:54:02', NULL, NULL),
(270, 'backend', 57, 'stopTimeReserve', 'Előjegyzés meddig', NULL, NULL, 1, 2, '2014-02-10 19:54:29', NULL, NULL),
(271, 'backend', 10, 'deleteReally', 'Valóban törlöd?', NULL, 1, 1, 2, '2014-02-16 18:58:12', 2, '2016-03-04 09:06:01'),
(272, 'backend', 10, 'day', 'nap', NULL, NULL, 1, 2, '2014-02-16 21:20:44', NULL, NULL),
(399, 'backend', 107, 'passangerID', 'Utas', NULL, NULL, 1, 2, '2022-02-21 08:12:38', NULL, NULL),
(400, 'backend', 107, 'order_date', 'Dátum', NULL, NULL, 1, 2, '2022-02-21 08:21:21', NULL, NULL),
(401, 'backend', 107, 'order_dateEmpty', 'Üres Dátum!', NULL, NULL, 1, 2, '2022-02-21 08:21:55', NULL, NULL),
(277, 'backend', NULL, 'nocore_patient_statusID', 'Státusz', NULL, NULL, 1, 2, '2014-03-13 15:20:33', 2, '2014-03-13 15:20:58'),
(278, 'backend', 83, 'name', 'Termék név', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(279, 'backend', 83, 'descriptionPublic', 'Megjegyzés', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(280, 'backend', 83, 'descriptionPrivate', 'Belső megjegyzés', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(281, 'backend', 83, 'storageWhere', 'Tárhely', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(282, 'backend', 83, 'quantity', 'Mennyiség', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(283, 'backend', 83, 'updateWhen', 'Frissítve', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(284, 'backend', 83, 'price', 'Átadási ár', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(285, 'backend', 83, 'makeWho', 'Gyártmány', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(286, 'backend', 83, 'makeType', 'Típus', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(287, 'backend', 83, 'products_statusID', 'Állapot', NULL, NULL, 1, 2, '2013-11-19 20:48:14', NULL, NULL),
(288, 'backend', 83, 'products_statusID', 'Állapot', NULL, NULL, 1, 2, '2016-10-03 21:11:43', NULL, NULL),
(289, 'backend', 84, 'name', 'Megnevezés', NULL, NULL, 1, 2, '2016-10-03 22:59:08', NULL, NULL),
(291, 'backend', 1, 'address', 'Cím', NULL, NULL, 1, 2, '2016-10-04 07:06:24', NULL, NULL),
(295, 'backend', 83, 'productIdEmpty', 'Üres Cikkszám!', NULL, NULL, 1, 2, '2016-10-04 07:28:01', NULL, NULL),
(296, 'backend', 83, 'nameEmpty', 'Üres Megnevezés!', NULL, NULL, 1, 2, '2016-10-04 07:28:42', NULL, NULL),
(298, 'backend', 1, 'nameEmpty', 'Üres Név!', NULL, NULL, 1, 2, '2016-10-04 07:47:59', NULL, NULL),
(301, 'backend', 89, 'makeYearEmoty', 'Üres Megjelenés!', NULL, NULL, 1, 2, '2016-10-04 07:49:48', NULL, NULL),
(304, 'backend', 83, 'core_usersID', 'Cég', NULL, NULL, 1, 2, '2016-10-04 08:03:58', NULL, NULL),
(305, 'backend', 83, 'own', 'Saját', NULL, NULL, 1, 2, '2016-11-13 23:26:18', NULL, NULL),
(306, 'backend', 88, 'name', 'Kategória', NULL, NULL, 1, 2, '2017-04-16 19:25:53', NULL, NULL),
(307, 'backend', 87, 'name', 'Név', NULL, NULL, 1, 2, '2017-04-16 19:29:35', NULL, NULL),
(310, 'backend', 10, 'insertUserID', 'Rögzítő', NULL, NULL, 1, 2, '2017-04-16 19:45:39', NULL, NULL),
(311, 'backend', 72, 'core_configsID', 'Modul', NULL, NULL, 1, 2, '2017-04-21 08:16:23', NULL, NULL),
(312, 'backend', 17, 'name', 'Modul', NULL, NULL, 1, 2, '2017-04-21 08:44:37', NULL, NULL),
(313, 'backend', 87, 'ingrediens', 'Hozzávalók', NULL, NULL, 1, 2, '2017-04-21 09:37:25', NULL, NULL),
(314, 'backend', 87, 'making', 'Elkészítés', NULL, NULL, 1, 2, '2017-04-21 09:49:22', NULL, NULL),
(315, 'backend', 10, 'comment', 'Megjegyzés', NULL, NULL, 1, 2, '2017-04-21 10:03:42', NULL, NULL),
(316, 'backend', 89, 'name', 'Cím', NULL, NULL, 1, 2, '2017-04-26 22:42:05', NULL, NULL),
(317, 'backend', 89, 'makeYear', 'Mikor', NULL, NULL, 1, 2, '2017-04-26 22:42:41', NULL, NULL),
(318, 'backend', 89, 'rateNumber', 'Pont', NULL, NULL, 1, 2, '2017-04-26 22:43:09', NULL, NULL),
(319, 'backend', 89, 'story', 'Történet', NULL, NULL, 1, 2, '2017-04-27 12:34:49', NULL, NULL),
(320, 'backend', 89, 'watchWhen', 'Megtekintve', NULL, NULL, 1, 2, '2017-04-27 22:38:43', NULL, NULL),
(321, 'backend', 7, 'name', 'Titulus', NULL, NULL, 1, 2, '2017-04-28 06:51:59', NULL, NULL),
(322, 'backend', 90, 'name', 'Megnevezés', NULL, NULL, 1, 2, '2017-04-28 23:27:06', NULL, NULL),
(323, 'backend', 90, 'bgcolor', 'Háttér', NULL, NULL, 1, 2, '2017-04-28 23:27:57', NULL, NULL),
(324, 'backend', 90, 'fgcolor', 'Előtér', NULL, NULL, 1, 2, '2017-04-28 23:28:10', NULL, NULL),
(325, 'backend', 90, 'path', 'Útvonal', NULL, NULL, 1, 2, '2017-04-28 23:30:06', NULL, NULL),
(326, 'backend', 92, 'name', 'Kategória', NULL, NULL, 1, 2, '2017-04-29 14:32:09', NULL, NULL),
(329, 'backend', 91, 'runTime', 'Idő', NULL, NULL, 1, 2, '2017-04-29 14:35:07', NULL, NULL),
(332, 'backend', 89, 'makeYearEmpty', 'Üres Megjelenés!', NULL, NULL, 1, 2, '2017-04-29 15:28:49', NULL, NULL),
(333, 'backend', 89, 'storyEmpty', 'Üres Történet!', NULL, NULL, 1, 2, '2017-04-29 15:29:28', NULL, NULL),
(370, 'backend', 104, 'name', 'JogosítványTípus', NULL, NULL, 1, 2, '2022-02-17 16:15:56', NULL, NULL),
(371, 'backend', 103, 'license_typeID', 'Jogosítvány', NULL, NULL, 1, 2, '2022-02-17 16:28:24', NULL, NULL),
(372, 'backend', 103, 'license_typeName', 'Jogosítvány', NULL, NULL, 1, 2, '2022-02-17 16:28:46', NULL, NULL),
(373, 'backend', 103, 'license_typeIDEmpty', 'Üres Jogosítvány!', NULL, NULL, 1, 2, '2022-02-17 16:29:10', NULL, NULL),
(339, 'backend', 10, 'nameDuplicate', 'Van mér ilyen tétel!', NULL, NULL, 1, 2, '2017-04-29 15:37:04', NULL, NULL),
(340, 'backend', 95, 'name', 'Kategória', NULL, NULL, 1, 2, '2017-04-29 18:17:08', NULL, NULL),
(343, 'backend', 94, 'quantity', 'Mennyiség', NULL, NULL, 1, 2, '2017-04-29 18:47:49', NULL, NULL),
(374, 'backend', 101, 'person', 'Személy', NULL, NULL, 1, 2, '2022-02-20 19:06:21', NULL, NULL),
(375, 'backend', 101, 'max_weight', 'Súly', NULL, NULL, 1, 2, '2022-02-20 19:06:41', NULL, NULL),
(346, 'backend', 96, 'name', 'Megnevezés', NULL, NULL, 1, 2, '2017-04-29 19:27:33', NULL, NULL),
(353, 'backend', 91, 'name', 'Név', NULL, NULL, 1, 2, '2020-08-14 15:57:03', NULL, NULL),
(354, 'backend', 99, 'name', 'Kategória', NULL, NULL, 1, 2, '2021-12-15 10:00:46', NULL, NULL),
(376, 'backend', 105, 'place', 'Felvétel helye', NULL, NULL, 1, 2, '2022-02-20 19:40:14', NULL, NULL),
(356, 'backend', 100, 'infotopicName', 'Kategória', NULL, NULL, 1, 2, '2021-12-15 12:43:30', NULL, NULL),
(357, 'backend', 100, 'infotopicID', 'Kategória', NULL, NULL, 1, 2, '2021-12-15 12:43:47', NULL, NULL),
(358, 'backend', 100, 'name', 'Megnevezés', NULL, NULL, 1, 2, '2021-12-15 12:45:04', NULL, NULL),
(359, 'backend', 100, 'shortDescription', 'Rövid leírés', NULL, NULL, 1, 2, '2021-12-15 12:46:02', NULL, NULL),
(360, 'backend', 100, 'status', 'Állapot', NULL, NULL, 1, 2, '2021-12-15 12:46:48', NULL, NULL),
(361, 'backend', 101, 'vehicle_typeIDEmpty', 'Üres Típus!', NULL, NULL, 1, 2, '2022-02-17 11:51:08', NULL, NULL),
(362, 'backend', 101, 'vehicle_typeName', 'Típus', NULL, NULL, 1, 2, '2022-02-17 11:51:49', NULL, NULL),
(363, 'backend', 101, 'vehicle_typeID', 'Típus', NULL, NULL, 1, 2, '2022-02-17 11:52:11', NULL, NULL),
(364, 'backend', 101, 'lpn', 'Rendszám', NULL, NULL, 1, 2, '2022-02-17 11:53:10', NULL, NULL),
(365, 'backend', 101, 'start_year', 'Forgalomba helyezés éve', NULL, NULL, 1, 2, '2022-02-17 12:03:27', NULL, NULL),
(366, 'backend', 102, 'name', 'Típus', NULL, NULL, 1, 2, '2022-02-17 14:10:49', NULL, NULL),
(367, 'backend', 103, 'name', 'Sofőr', NULL, NULL, 1, 2, '2022-02-17 14:50:27', NULL, NULL),
(368, 'backend', 103, 'birth_year', 'Születési év\r\n', NULL, NULL, 1, 2, '2022-02-17 14:51:13', NULL, NULL),
(369, 'backend', 103, 'birth_yearEmpty', 'Üres Születési Év!', NULL, NULL, 1, 2, '2022-02-17 15:10:42', NULL, NULL),
(377, 'backend', 105, 'cargo_weight', 'Súly', NULL, NULL, 1, 2, '2022-02-20 19:41:04', NULL, NULL),
(378, 'backend', 105, 'transport_date', 'Szállítás dátuma', NULL, NULL, 1, 2, '2022-02-20 19:41:56', NULL, NULL),
(379, 'backend', 105, 'placeEmpty', 'Üres Felvétel helye!', NULL, NULL, 1, 2, '2022-02-20 20:03:48', NULL, NULL),
(380, 'backend', 105, 'cargo_weightEmpty', 'Üres Súly!', NULL, NULL, 1, 2, '2022-02-20 20:04:20', NULL, NULL),
(381, 'backend', 105, 'transport_dateEmpty', 'Üres Szállítás dátuma!', NULL, NULL, 1, 2, '2022-02-20 20:04:49', NULL, NULL),
(382, 'backend', 106, 'transport_dateEmpty', 'Üres Szállítás dátuma!', NULL, NULL, 1, 2, '2022-02-20 20:41:10', NULL, NULL),
(383, 'backend', 106, 'how_many_peopleEmpty', 'Üres Utas!', NULL, NULL, 1, 2, '2022-02-20 20:42:03', NULL, NULL),
(384, 'backend', 106, 'customer_nameEmpty', 'Üres Megrendelő neve!', NULL, NULL, 1, 2, '2022-02-20 20:42:33', NULL, NULL),
(385, 'backend', 106, 'transport_date', 'Szállítás dátuma', NULL, NULL, 1, 2, '2022-02-20 20:42:44', NULL, NULL),
(386, 'backend', 106, 'how_many_people', 'Utas', NULL, NULL, 1, 2, '2022-02-20 20:43:11', NULL, NULL),
(387, 'backend', 106, 'customer_name', 'Megrendelő neve', NULL, NULL, 1, 2, '2022-02-20 20:43:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_themes`
--

CREATE TABLE `core_themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `bgcolor` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `fgcolor` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `core_themes`
--

INSERT INTO `core_themes` (`id`, `name`, `bgcolor`, `fgcolor`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'black', '#000000', '#FFFFFF', NULL, 1, 2, '2010-09-24 00:41:33', 2, '2010-09-27 14:08:51'),
(2, 'white', '#FFFFFF', '#000000', NULL, 1, 2, '2010-09-24 00:41:53', 2, '2010-09-27 14:16:18'),
(3, 'silver', '#C0C0C0', '#000000', NULL, 1, 2, '2010-09-24 00:42:20', 2, '2010-09-27 14:17:10'),
(4, 'gray', '#808080', '#FFFFFF', NULL, 1, 2, '2010-09-24 00:55:14', 2, '2010-09-27 14:18:47'),
(5, 'maroon', '#800000', '#FFFFFF', NULL, 1, 2, '2010-09-24 00:55:45', 2, '2010-09-27 14:18:30'),
(6, 'purple', '#800080', '#FFFFFF', NULL, 1, 2, '2010-09-24 00:55:57', 2, '2010-09-27 14:19:23'),
(7, 'fuchsia', '#FF00FF', '#FFFFFF', NULL, 1, 2, '2010-09-26 14:09:10', 2, '2010-09-27 14:21:51'),
(8, 'green', '#008000', '#FFFFFF', NULL, 1, 2, '2010-09-26 14:09:41', 2, '2010-09-27 14:22:20'),
(9, 'lime', '#00FF00', '#000000', NULL, 1, 2, '2010-09-26 14:21:39', 2, '2010-09-27 14:23:00'),
(10, 'olive', '#808000', '#FFFFFF', NULL, 1, 2, '2010-09-26 15:20:25', 2, '2010-09-27 14:23:30'),
(11, 'yellow', '#FFFF00', '#000000', NULL, 1, 2, '2010-09-26 22:24:13', 2, '2010-09-27 14:24:10'),
(12, 'navy', '#000080', '#FFFFFF', NULL, 1, 2, '2010-09-26 23:22:00', 2, '2010-09-27 14:24:54'),
(13, 'blue', '#0000FF', '#FFFFFF', NULL, 1, 2, '2010-09-27 13:12:59', 2, '2010-09-27 14:25:26'),
(14, 'teal', '#008080', '#FFFFFF', NULL, 1, 2, '2010-09-27 14:54:08', NULL, NULL),
(15, 'aqua', '#00FFFF', '#000000', NULL, 1, 2, '2010-09-27 16:26:35', NULL, NULL),
(16, 'orange', '#FFA500', '#000000', NULL, 1, 2, '2010-09-27 17:09:27', 2, '2017-04-28 11:02:18');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_users`
--

CREATE TABLE `core_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `core_userstitleID` bigint(20) UNSIGNED DEFAULT NULL,
  `surname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `forename` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(40) COLLATE utf8_bin NOT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `description` longtext COLLATE utf8_bin DEFAULT NULL,
  `lastLoginWhen` datetime DEFAULT NULL,
  `lastLogoutWhen` datetime DEFAULT NULL,
  `activationCode` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `regmailWhen` datetime DEFAULT NULL,
  `activationWhen` datetime DEFAULT NULL,
  `core_groupsID` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `pictureURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `newsletter` int(1) DEFAULT 0,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  `isReadUserID` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- A tábla adatainak kiíratása `core_users`
--

INSERT INTO `core_users` (`id`, `core_userstitleID`, `surname`, `forename`, `nickname`, `password`, `email`, `active`, `description`, `lastLoginWhen`, `lastLogoutWhen`, `activationCode`, `regmailWhen`, `activationWhen`, `core_groupsID`, `pictureURL`, `newsletter`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`, `isReadWhen`, `isReadUserID`) VALUES
(1, NULL, NULL, NULL, 'Guest', '', '', 1, NULL, NULL, '2020-08-16 11:24:16', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, 2, '2012-01-24 11:06:15', '2006-03-28 23:38:24', 2),
(2, NULL, 'SuperAdmin', 'SuperAdmin', 'Super', 'super', 'rodnas@uw.hu', 1, NULL, '2013-09-02 13:09:13', '2022-02-21 09:35:40', NULL, NULL, NULL, 2, NULL, 0, NULL, '2005-02-19 09:00:00', 2, '2013-11-04 10:14:52', '2009-06-03 09:01:09', 2),
(3, NULL, 'Admin', 'Admin', 'Admin', 'admin', 'alext@fw.hu', 1, NULL, '2013-09-02 13:09:13', '2022-02-21 09:47:20', NULL, NULL, NULL, 2, NULL, 0, NULL, '2005-02-19 09:00:00', 2, '2013-11-04 10:14:52', '2009-06-03 09:01:09', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_userslog`
--

CREATE TABLE `core_userslog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usersID` bigint(20) UNSIGNED DEFAULT NULL,
  `modul` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `actionWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_userstitle`
--

CREATE TABLE `core_userstitle` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `core_userstitle`
--

INSERT INTO `core_userstitle` (`id`, `name`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'dr', NULL, 1, 2, '2013-07-26 08:48:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_users_config`
--

CREATE TABLE `core_users_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fieldName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fieldValue` text COLLATE utf8_bin DEFAULT NULL,
  `autoload` int(1) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `core_usersID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `core_users_rights`
--

CREATE TABLE `core_users_rights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `core_usersID` bigint(20) UNSIGNED DEFAULT NULL,
  `core_configsID` bigint(20) UNSIGNED DEFAULT NULL,
  `allrecs` int(2) UNSIGNED DEFAULT 0,
  `ownrecs` int(2) UNSIGNED DEFAULT 0,
  `active` int(1) UNSIGNED DEFAULT 1,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `driver`
--

CREATE TABLE `driver` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `birth_year` int(4) UNSIGNED DEFAULT NULL,
  `license_typeID` int(11) UNSIGNED NOT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `langID` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `driver`
--

INSERT INTO `driver` (`id`, `name`, `birth_year`, `license_typeID`, `active`, `langID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Szabó Sándor', 1961, 1, 1, 0, 2, '2022-02-17 15:25:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `license_type`
--

CREATE TABLE `license_type` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `license_type`
--

INSERT INTO `license_type` (`id`, `name`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'B  - személyautó', 1, 2, '2022-02-17 16:17:33', NULL, NULL),
(2, 'C - kisteherautó', 1, 2, '2022-02-17 16:17:55', NULL, NULL),
(3, 'D - nagyteherautó', 1, 2, '2022-02-17 16:18:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `passanger`
--

CREATE TABLE `passanger` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `customer_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `how_many_people` int(4) UNSIGNED DEFAULT NULL,
  `transport_date` date DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `langID` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `passanger`
--

INSERT INTO `passanger` (`id`, `customer_name`, `how_many_people`, `transport_date`, `active`, `langID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Anonymus', 5, '2022-02-22', 1, 0, 2, '2022-02-21 08:25:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `transport`
--

CREATE TABLE `transport` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `vehicleID` int(11) UNSIGNED DEFAULT NULL,
  `driverID` int(11) UNSIGNED DEFAULT NULL,
  `cargoID` int(11) UNSIGNED DEFAULT NULL,
  `passangerID` int(11) UNSIGNED DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `langID` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `transport`
--

INSERT INTO `transport` (`id`, `vehicleID`, `driverID`, `cargoID`, `passangerID`, `order_date`, `active`, `langID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 1, 1, 1, 1, '2022-02-22', 1, 0, NULL, '2022-02-21 08:54:20', NULL, '2022-02-21 08:54:20');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vehicle`
--

CREATE TABLE `vehicle` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `vehicle_typeID` int(11) UNSIGNED DEFAULT NULL,
  `lpn` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `start_year` int(4) UNSIGNED DEFAULT NULL,
  `person` int(11) NOT NULL,
  `max_weight` int(11) NOT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `langID` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `vehicle`
--

INSERT INTO `vehicle` (`id`, `vehicle_typeID`, `lpn`, `start_year`, `person`, `max_weight`, `active`, `langID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 1, 'PTH855', 2018, 5, 400, 1, 0, 2, '2022-02-17 14:24:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `active` int(1) UNSIGNED DEFAULT 1,
  `insertUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) UNSIGNED DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `name`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'személygépkocsi', 1, 2, '2022-02-17 14:11:59', NULL, NULL),
(2, 'kisteherautó', 1, 2, '2022-02-17 14:12:44', NULL, NULL),
(3, 'nagy teherautó', 1, 2, '2022-02-17 14:13:02', NULL, NULL);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insertWhen` (`insertWhen`),
  ADD KEY `insertUserId` (`insertUserID`),
  ADD KEY `langID` (`langID`) USING BTREE;

--
-- A tábla indexei `core_config`
--
ALTER TABLE `core_config`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `core_configs`
--
ALTER TABLE `core_configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- A tábla indexei `core_groups`
--
ALTER TABLE `core_groups`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `core_groups_config`
--
ALTER TABLE `core_groups_config`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `core_groups_rights`
--
ALTER TABLE `core_groups_rights`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `core_lang`
--
ALTER TABLE `core_lang`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `core_language`
--
ALTER TABLE `core_language`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `core_themes`
--
ALTER TABLE `core_themes`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `core_users`
--
ALTER TABLE `core_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nickname` (`nickname`);

--
-- A tábla indexei `core_userslog`
--
ALTER TABLE `core_userslog`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `core_userstitle`
--
ALTER TABLE `core_userstitle`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `core_users_config`
--
ALTER TABLE `core_users_config`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `core_users_rights`
--
ALTER TABLE `core_users_rights`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insertWhen` (`insertWhen`),
  ADD KEY `insertUserId` (`insertUserID`),
  ADD KEY `langID` (`langID`) USING BTREE;

--
-- A tábla indexei `license_type`
--
ALTER TABLE `license_type`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `passanger`
--
ALTER TABLE `passanger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insertWhen` (`insertWhen`),
  ADD KEY `insertUserId` (`insertUserID`),
  ADD KEY `langID` (`langID`) USING BTREE;

--
-- A tábla indexei `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insertWhen` (`insertWhen`),
  ADD KEY `insertUserId` (`insertUserID`),
  ADD KEY `langID` (`langID`);

--
-- A tábla indexei `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insertWhen` (`insertWhen`),
  ADD KEY `insertUserId` (`insertUserID`),
  ADD KEY `langID` (`langID`) USING BTREE;

--
-- A tábla indexei `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `core_config`
--
ALTER TABLE `core_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT a táblához `core_configs`
--
ALTER TABLE `core_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT a táblához `core_groups`
--
ALTER TABLE `core_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `core_groups_config`
--
ALTER TABLE `core_groups_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `core_groups_rights`
--
ALTER TABLE `core_groups_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT a táblához `core_lang`
--
ALTER TABLE `core_lang`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `core_language`
--
ALTER TABLE `core_language`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT a táblához `core_themes`
--
ALTER TABLE `core_themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT a táblához `core_users`
--
ALTER TABLE `core_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `core_userslog`
--
ALTER TABLE `core_userslog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `core_userstitle`
--
ALTER TABLE `core_userstitle`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `core_users_config`
--
ALTER TABLE `core_users_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `core_users_rights`
--
ALTER TABLE `core_users_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `driver`
--
ALTER TABLE `driver`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `license_type`
--
ALTER TABLE `license_type`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `passanger`
--
ALTER TABLE `passanger`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `transport`
--
ALTER TABLE `transport`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
