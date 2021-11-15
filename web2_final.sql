-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Nov 14. 17:29
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `web2`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ar`
--

CREATE TABLE `ar` (
  `id` int(11) NOT NULL,
  `sutiid` int(11) NOT NULL,
  `ertek` int(11) DEFAULT NULL,
  `egyseg` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `ar`
--

INSERT INTO `ar` (`id`, `sutiid`, `ertek`, `egyseg`) VALUES
(1, 32, 500, 'db\r\n'),
(2, 76, 10900, '16 szeletes\r\n'),
(3, 106, 4300, '8 szeletes\r\n'),
(4, 88, 300, 'db\r\n'),
(5, 116, 16200, '24 szeletes\r\n'),
(6, 135, 250, 'db\r\n'),
(7, 127, 4400, 'kg\r\n'),
(8, 50, 13400, '24 szeletes\r\n'),
(9, 70, 700, 'db\r\n'),
(10, 31, 5200, 'kg\r\n'),
(11, 96, 3300, 'kg ​​\r\n'),
(12, 116, 5700, '8 szeletes\r\n'),
(13, 22, 9000, '16 szeletes\r\n'),
(14, 138, 4400, 'kg\r\n'),
(15, 112, 2900, 'kg\r\n'),
(16, 58, 3200, 'kg\r\n'),
(17, 98, 10400, '16 szeletes\r\n'),
(18, 75, 2100, 'rúd\r\n'),
(19, 24, 11400, '24 szeletes\r\n'),
(20, 62, 600, 'db\r\n'),
(21, 61, 8400, '16 szeletes\r\n'),
(22, 105, 10900, '16 szeletes\r\n'),
(23, 20, 4700, '8 szeletes\r\n'),
(24, 123, 1800, 'rúd\r\n'),
(25, 60, 8200, '16 szeletes\r\n'),
(26, 24, 3900, '8 szeletes\r\n'),
(27, 38, 4300, '8 szeletes\r\n'),
(28, 126, 2100, 'rúd\r\n'),
(29, 64, 750, 'db\r\n'),
(30, 109, 300, 'db\r\n'),
(31, 66, 350, '\r\n'),
(32, 89, 13200, '24 szeletes\r\n'),
(33, 98, 15400, '24 szeletes\r\n'),
(34, 24, 7400, '16 szeletes\r\n'),
(35, 76, 5700, '8 szeletes\r\n'),
(36, 131, 250, 'db\r\n'),
(37, 50, 9200, '16 szeletes\r\n'),
(38, 55, 600, 'db\r\n'),
(39, 87, 3400, 'kg\r\n'),
(40, 4, 3500, 'koszorú\r\n'),
(41, 8, 400, 'db\r\n'),
(42, 100, 450, 'db\r\n'),
(43, 129, 5300, '8 szeletes\r\n'),
(44, 35, 4700, '8 szeletes\r\n'),
(45, 47, 490, 'db\r\n'),
(46, 89, 9000, '16 szeletes\r\n'),
(47, 111, 3300, 'kg\r\n'),
(48, 94, 400, 'db\r\n'),
(49, 42, 16200, '24 szeletes\r\n'),
(50, 80, 350, 'db\r\n'),
(51, 134, 4700, '8 szeletes\r\n'),
(52, 128, 4000, 'kg\r\n'),
(53, 90, 5200, 'kg\r\n'),
(54, 39, 13200, '24 szeletes\r\n'),
(55, 71, 7400, '16 szeletes\r\n'),
(56, 17, 3400, 'kg\r\n'),
(57, 68, 18400, '24 szeletes\r\n'),
(58, 81, 8200, '16 szeletes\r\n'),
(59, 134, 9000, '16 szeletes\r\n'),
(60, 108, 11400, '24 szeletes\r\n'),
(61, 97, 5200, 'kg\r\n'),
(62, 81, 4300, '8 szeletes\r\n'),
(63, 44, 3800, 'kg\r\n'),
(64, 72, 5700, '8 szeletes\r\n'),
(65, 49, 250, 'db\r\n'),
(66, 48, 350, 'db\r\n'),
(67, 14, 350, 'db\r\n'),
(68, 107, 12200, '24 szeletes\r\n'),
(69, 27, 15400, '24 szeletes\r\n'),
(70, 106, 12100, '24 szeletes\r\n'),
(71, 74, 7400, '16 szeletes\r\n'),
(72, 40, 5700, '8 szeletes\r\n'),
(73, 133, 450, 'db\r\n'),
(74, 77, 490, 'db\r\n'),
(75, 22, 13200, '24 szeletes\r\n'),
(76, 119, 9000, '16 szeletes\r\n'),
(77, 120, 3400, 'kg\r\n'),
(78, 105, 5700, '8 szeletes\r\n'),
(79, 119, 13200, '24 szeletes\r\n'),
(80, 99, 4600, 'kg\r\n'),
(81, 61, 12200, '24 szeletes\r\n'),
(82, 93, 4200, 'kg\r\n'),
(83, 59, 13200, '24 szeletes\r\n'),
(84, 82, 5700, '8 szeletes\r\n'),
(85, 56, 600, 'db\r\n'),
(86, 23, 550, 'db\r\n'),
(87, 81, 12100, '24 szeletes\r\n'),
(88, 67, 500, 'db\r\n'),
(89, 68, 6400, '8 szeletes\r\n'),
(90, 38, 8200, '16 szeletes\r\n'),
(91, 139, 4700, '8 szeletes\r\n'),
(92, 30, 530, 'db\r\n'),
(93, 95, 16200, '24 szeletes\r\n'),
(94, 101, 400, 'db\r\n'),
(95, 65, 400, 'db\r\n'),
(96, 10, 12100, '24 szeletes\r\n'),
(97, 59, 9000, '16 szeletes\r\n'),
(98, 119, 4700, '8 szeletes\r\n'),
(99, 82, 16200, '24 szeletes\r\n'),
(100, 3, 3300, 'kg\r\n'),
(101, 104, 4200, 'kg\r\n'),
(102, 110, 530, 'db\r\n'),
(103, 1, 300, 'db\r\n'),
(104, 25, 8200, '16 szeletes\r\n'),
(105, 40, 16200, '24 szeletes\r\n'),
(106, 36, 490, 'db\r\n'),
(107, 124, 3900, '8 szeletes\r\n'),
(108, 16, 530, 'db\r\n'),
(109, 29, 3500, 'koszorú\r\n'),
(110, 116, 10900, '16 szeletes\r\n'),
(111, 71, 3900, '8 szeletes\r\n'),
(112, 2, 500, 'db\r\n'),
(113, 71, 11400, '24 szeletes\r\n'),
(114, 10, 4300, '8 szeletes\r\n'),
(115, 108, 3900, '8 szeletes\r\n'),
(116, 69, 450, 'db\r\n'),
(117, 39, 9000, '16 szeletes\r\n'),
(118, 25, 4300, '8 szeletes\r\n'),
(119, 107, 8400, '16 szeletes\r\n'),
(120, 5, 9000, '12 szeletes\r\n'),
(121, 106, 8200, '16 szeletes\r\n'),
(122, 114, 450, 'db\r\n'),
(123, 26, 400, 'db\r\n'),
(124, 82, 10900, '16 szeletes\r\n'),
(125, 28, 8200, '16 szeletes\r\n'),
(126, 42, 10900, '16 szeletes\r\n'),
(127, 35, 13200, '24 szeletes\r\n'),
(128, 74, 3900, '8 szeletes\r\n'),
(129, 19, 450, 'db\r\n'),
(130, 25, 12100, '24 szeletes\r\n'),
(131, 125, 5700, '8 szeletes\r\n'),
(132, 95, 5700, '8 szeletes\r\n'),
(133, 34, 1700, 'rúd\r\n'),
(134, 121, 530, 'db\r\n'),
(135, 76, 16200, '24 szeletes\r\n'),
(136, 13, 400, 'db\r\n'),
(137, 60, 12100, '24 szeletes\r\n'),
(138, 33, 350, 'db\r\n'),
(139, 132, 530, 'db\r\n'),
(140, 117, 9900, '16 szeletes\r\n'),
(141, 27, 10400, '16 szeletes\r\n'),
(142, 18, 490, 'db\r\n'),
(143, 124, 7400, '16 szeletes\r\n'),
(144, 122, 5200, 'kg\r\n'),
(145, 59, 4700, '8 szeletes\r\n'),
(146, 124, 11400, '24 szeletes\r\n'),
(147, 134, 13200, '24 szeletes\r\n'),
(148, 45, 450, 'db\r\n'),
(149, 63, 350, 'db\r\n'),
(150, 6, 3900, '8 szeletes\r\n'),
(151, 28, 4300, '8 szeletes\r\n'),
(152, 37, 3900, '8 szeletes\r\n'),
(153, 52, 5000, 'kg\r\n'),
(154, 61, 4500, '8 szeletes\r\n'),
(155, 86, 600, 'db\r\n'),
(156, 6, 7400, '16 szeletes\r\n'),
(157, 37, 7400, '16 szeletes\r\n'),
(158, 11, 490, 'db\r\n'),
(159, 108, 7400, '16 szeletes\r\n'),
(160, 35, 9000, '16 szeletes\r\n'),
(161, 107, 4500, '8 szeletes\r\n'),
(162, 6, 11400, '24 szeletes\r\n'),
(163, 79, 4000, 'kg\r\n'),
(164, 60, 4300, '8 szeletes\r\n'),
(165, 21, 5700, '8 szeletes\r\n'),
(166, 28, 12100, '24 szeletes\r\n'),
(167, 15, 5000, 'kg\r\n'),
(168, 21, 5700, '8 szeletes\r\n'),
(169, 37, 11400, '24 szeletes\r\n'),
(170, 74, 11400, '24 szeletes\r\n'),
(171, 103, 650, 'db\r\n'),
(172, 43, 4200, 'kg \r\n'),
(173, 12, 3400, 'kg\r\n'),
(174, 27, 5400, '8 szeletes\r\n'),
(175, 7, 490, 'db\r\n'),
(176, 84, 5200, 'kg\r\n'),
(177, 115, 3600, 'kg\r\n'),
(178, 51, 4000, 'kg\r\n'),
(179, 118, 450, 'db\r\n'),
(180, 41, 530, 'db\r\n'),
(181, 135, 400, 'db\r\n'),
(182, 73, 5400, '8 szeletes\r\n'),
(183, 10, 8200, '16 szeletes\r\n'),
(184, 98, 5400, '8 szeletes\r\n'),
(185, 113, 850, 'db\r\n'),
(186, 130, 350, 'db\r\n'),
(187, 39, 4700, '8 szeletes\r\n'),
(188, 136, 3400, 'kg\r\n'),
(189, 83, 650, 'db\r\n'),
(190, 91, 800, '20 dkg\r\n'),
(191, 46, 5200, 'kg\r\n'),
(192, 102, 330, 'db\r\n'),
(193, 95, 10900, '16 szeletes\r\n'),
(194, 54, 580, 'db\r\n'),
(195, 57, 530, 'db\r\n'),
(196, 22, 4700, '8 szeletes\r\n'),
(197, 92, 450, 'db\r\n'),
(198, 68, 12400, '16 szeletes\r\n'),
(199, 42, 5700, '8 szeletes\r\n'),
(200, 40, 10900, '16 szeletes\r\n'),
(201, 9, 450, 'db\r\n'),
(202, 78, 4200, 'kg\r\n'),
(203, 85, 500, 'db\r\n'),
(204, 137, 600, 'db\r\n'),
(205, 50, 4900, '8 szeletes\r\n'),
(206, 38, 12100, '24 szeletes\r\n'),
(207, 53, 4200, 'kg\r\n'),
(208, 89, 4700, '8 szeletes\r\n');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(10) UNSIGNED NOT NULL,
  `csaladi_nev` varchar(45) NOT NULL DEFAULT '',
  `utonev` varchar(45) NOT NULL DEFAULT '',
  `bejelentkezes` varchar(12) NOT NULL DEFAULT '',
  `jelszo` varchar(40) NOT NULL DEFAULT '',
  `jogosultsag` varchar(7) NOT NULL DEFAULT '/\\d1\\d/'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `csaladi_nev`, `utonev`, `bejelentkezes`, `jelszo`, `jogosultsag`) VALUES
(1, 'Rendszer', 'Admin', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '/\\d\\d1/'),
(12, 'Gemzsi', 'Patrícia', 'Patrissa', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '/\\d1\\d/'),
(15, 'asd', 'asd', 'asd', 'f10e2821bbbea527ea02200352313bc059445190', '_1_');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hirek`
--

CREATE TABLE `hirek` (
  `id` int(11) NOT NULL,
  `uzenet` varchar(500) NOT NULL,
  `datum` date NOT NULL,
  `felhaszn_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `hirek`
--

INSERT INTO `hirek` (`id`, `uzenet`, `datum`, `felhaszn_id`) VALUES
(1, 'fsfdsf', '2021-10-15', 1),
(2, 'sfsf', '2021-10-15', 2),
(3, 'sfsf', '2021-10-15', 1),
(4, 'sfsf', '2021-10-15', 2),
(5, 'A süti jó volt', '2021-10-15', 4),
(8, 'sfr', '2021-10-19', 0),
(9, 'dgdfgdfg', '2021-10-19', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `komment`
--

CREATE TABLE `komment` (
  `id` int(11) NOT NULL,
  `komment` varchar(200) NOT NULL,
  `kommentazonosito` int(11) NOT NULL,
  `felhaszn_id2` int(11) NOT NULL,
  `datum2` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `komment`
--

INSERT INTO `komment` (`id`, `komment`, `kommentazonosito`, `felhaszn_id2`, `datum2`) VALUES
(51, 'dgd', 1, 1, '2021-10-24'),
(52, 'dgd', 2, 2, '2021-10-24'),
(53, 'dgdg', 3, 3, '2021-10-24'),
(71, 'gdg', 1, 11, '2021-10-24'),
(72, 'dfg', 2, 12, '2021-10-24'),
(73, 'fdg', 1, 12, '2021-10-23'),
(74, 'valami', 2, 11, '2021-10-24'),
(75, 'fdgdf', 3, 0, '2021-10-24');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `suti`
--

CREATE TABLE `suti` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tipus` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `dijazott` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `suti`
--

INSERT INTO `suti` (`id`, `nev`, `tipus`, `dijazott`) VALUES
(1, 'Süni', 'vegyes', 0),
(2, 'Gesztenyealagút', 'vegyes', 0),
(3, 'Sajtos pogácsa', 'sós teasütemény', 0),
(4, 'Diós-mákos', 'bejgli', 0),
(5, 'Sajttorta (málnás)', 'torta', 0),
(6, 'Citrom', 'torta', 0),
(7, 'Eszterházy', 'tortaszelet', 0),
(8, 'Rákóczi-túrós', 'pite', 0),
(9, 'Meggyes kocka', 'tejszínes sütemény', 0),
(10, 'Legényfogó', 'torta', -1),
(11, 'Alpesi karamell', 'tortaszelet', 0),
(12, 'Kókuszcsók', 'édes teasütemény', 0),
(13, 'Habos mákos', 'pite', 0),
(14, 'Szilvás', 'pite', 0),
(15, 'Juhtúrós párna', 'sós teasütemény', 0),
(16, 'Mákos guba', 'tortaszelet', 0),
(17, 'Néró', 'édes teasütemény', 0),
(18, 'Sacher', 'tortaszelet', 0),
(19, 'Citrom', 'tortaszelet', 0),
(20, 'Ribizlihabos-almás réteges', 'különleges torta', -1),
(21, 'Három kívánság', 'torta', -1),
(22, 'Dobos', 'torta', 0),
(23, 'Epres mascarpone', 'tortaszelet', 0),
(24, 'Csokoládémousse', 'torta', 0),
(25, 'Oroszkrém', 'torta', 0),
(26, 'Medvetalp', 'vegyes', 0),
(27, 'Trüffel', 'torta', 0),
(28, 'Tejszínes gyümölcsös (meggy)', 'torta', 0),
(29, 'Mákos-szilvalekváros', 'bejgli', 0),
(30, 'Ribizlihabos-﻿almá﻿s réteges tortaszelet', 'tortaszelet', 0),
(31, 'Marcipános vágott', 'édes teasütemény', 0),
(32, 'Indiáner', 'vegyes', 0),
(33, 'Meggyes', 'pite', 0),
(34, 'Mákos', 'bejgli', 0),
(35, 'Sós karamella', 'torta', 0),
(36, 'Legényfogó', 'tortaszelet', 0),
(37, 'Rigó Jancsi', 'torta', 0),
(38, 'Tejszínes gyümölcsös (erdei gyümölcs)', 'torta', 0),
(39, 'Ez+Az (csokoládé és gesztenye)', 'torta', 0),
(40, 'Málnás mascarpone', 'torta', 0),
(41, 'Dobos', 'tortaszelet', 0),
(42, 'Ferrero', 'torta', 0),
(43, 'Vegyes házi pite falatok', 'pite', 0),
(44, 'Ökörszem', 'édes teasütemény', 0),
(45, 'Danubius kocka', 'tejszínes sütemény', 0),
(46, 'Sajtkrémmel töltött fánkocska', 'sós teasütemény', 0),
(47, 'Túrókrém gyümölccsel díszítve', 'tortaszelet', 0),
(48, 'Almás', 'pite', 0),
(49, 'Mignon', 'vegyes', 0),
(50, 'Csokoládémousse fényes csokoládéval', 'torta', 0),
(51, 'Vágott sós (sós omlós)', 'sós teasütemény', 0),
(52, 'Nagyi sós', 'sós teasütemény', 0),
(53, 'Vegyes sós', 'sós teasütemény', 0),
(54, 'Somlói', 'tortaszelet', 0),
(55, 'Tiramisu', 'tortaszelet', 0),
(56, 'Hegyvidék', 'tortaszelet', 0),
(57, 'Szedres csokoládé', 'tortaszelet', 0),
(58, 'Pogácsák vegyesen', 'sós teasütemény', 0),
(59, 'Lúdláb', 'torta', 0),
(60, 'Sacher', 'torta', 0),
(61, 'Eszterházy', 'torta', 0),
(62, 'Zalavári gesztenye', 'tortaszelet', 0),
(63, 'Gesztenyegolyó', 'vegyes', 0),
(64, 'Pisztáciás-málnás mascarpone', 'tortaszelet', 0),
(65, 'Habos mákos', 'vegyes', 0),
(66, 'Franciakrémes', 'krémes', 0),
(67, 'Gesztenye kocka', 'tejszínes sütemény', 0),
(68, 'Pisztáciás-málnás mascarpone', 'torta', 0),
(69, 'Málnás kocka', 'tejszínes sütemény', 0),
(70, 'Sajttorta (málnás)', 'tortaszelet', 0),
(71, 'Túrókrém gyümölccsel', 'torta', 0),
(72, 'Csokis kaland', 'különleges torta', -1),
(73, 'Somlói', 'torta', 0),
(74, 'Palermo', 'torta', 0),
(75, 'Szilvalekváros', 'bejgli', 0),
(76, 'Ünnepi diótorta grillázzsal', 'torta', 0),
(77, 'Oroszkrém', 'tortaszelet', 0),
(78, 'Mini zserbó', 'édes teasütemény', 0),
(79, 'Sajtos masni', 'sós teasütemény', 0),
(80, 'Zserbó', 'pite', 0),
(81, 'Tejszínes gyümölcsös (málna)', 'torta', 0),
(82, 'Marcipános csokoládé', 'torta', 0),
(83, 'Csokis kaland', 'tortaszelet', 0),
(84, 'Marcipán tekercs', 'édes teasütemény', 0),
(85, 'Képviselőfánk', 'vegyes', 0),
(86, 'Epres omlett', 'vegyes', 0),
(87, 'Mini linzer', 'édes teasütemény', 0),
(88, 'Linzerkarika', 'vegyes', 0),
(89, 'Szedres csokoládé', 'torta', 0),
(90, 'Narancsív', 'édes teasütemény', 0),
(91, 'Gesztenyepüré', 'vegyes', 0),
(92, 'Palermo', 'tejszínes sütemény', 0),
(93, 'Csokis néró', 'édes teasütemény', 0),
(94, 'Flódni', 'pite', 0),
(95, 'Mézeskalács', 'torta', 0),
(96, 'Olívás pogácsa', 'sós teasütemény', 0),
(97, 'Florentin', 'édes teasütemény', 0),
(98, 'Tiramisu', 'torta', 0),
(99, 'Zoli kedvence (vágott édes tea)', 'édes teasütemény', 0),
(100, 'Erdei gyümölcs kocka', 'tejszínes sütemény', 0),
(101, 'Rákóczi-túrós', 'tortaszelet', 0),
(102, 'Mézeskrémes', 'pite', 0),
(103, 'Trüffel', 'tortaszelet', 0),
(104, 'Szilvás papucs', 'édes teasütemény', 0),
(105, 'Zalavári gesztenye', 'torta', -1),
(106, 'Danubius', 'torta', 0),
(107, 'Alpesi karamell', 'torta', 0),
(108, 'Puncs', 'torta', 0),
(109, 'Gesztenye szív', 'vegyes', 0),
(110, 'Ez+Az (csokoládé és gesztenye)', 'tortaszelet', 0),
(111, 'Tökmagos félhold', 'sós teasütemény', 0),
(112, 'Burgonyás pogácsa', 'sós teasütemény', 0),
(113, 'Somlói galuska', 'vegyes', 0),
(114, 'Puncs', 'tortaszelet', 0),
(115, 'Lekváros vágott', 'édes teasütemény', 0),
(116, 'Oreo', 'torta', 0),
(117, 'Vintage', 'torta', 0),
(118, 'Rigó Jancsi', 'tejszínes sütemény', 0),
(119, 'Feketeerdő', 'torta', 0),
(120, 'Kókuszos vágott', 'édes teasütemény', 0),
(121, 'Feketeerdő', 'tortaszelet', 0),
(122, 'Moscauer', 'édes teasütemény', 0),
(123, 'Diós', 'bejgli', 0),
(124, 'Rákóczi-túrós', 'torta', 0),
(125, 'Három kívánság', 'különleges torta', 0),
(126, 'Gesztenyés-karamellás', 'bejgli', 0),
(127, 'Gesztenyés szív', 'édes teasütemény', 0),
(128, 'Ropi', 'sós teasütemény', 0),
(129, 'Paleolit étcsokoládé', 'különleges torta', 0),
(130, 'Túrós', 'pite', 0),
(131, 'Ischler', 'vegyes', 0),
(132, 'Lúdláb', 'tortaszelet', 0),
(133, 'Csokoládémousse', 'tortaszelet', 0),
(134, 'Dió', 'torta', 0),
(135, 'Krémes', 'krémes', 0),
(136, 'Mini ischler', 'édes teasütemény', 0),
(137, 'Paleolit étcsokoládé', 'tortaszelet', 0),
(138, 'Tejfölös túrós hajtogatott', 'sós teasütemény', 0),
(139, 'Mákos guba', 'torta', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tartalom`
--

CREATE TABLE `tartalom` (
  `id` int(11) NOT NULL,
  `sutiid` int(11) NOT NULL,
  `mentes` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `tartalom`
--

INSERT INTO `tartalom` (`id`, `sutiid`, `mentes`) VALUES
(1, 26, 'G\r\n'),
(2, 37, 'L\r\n'),
(3, 83, 'HC\r\n'),
(4, 91, 'G\r\n'),
(5, 137, 'G\r\n'),
(6, 60, 'Te\r\n'),
(7, 129, 'HC\r\n'),
(8, 122, 'To\r\n'),
(9, 90, 'G\r\n'),
(10, 26, 'To\r\n'),
(11, 94, 'L\r\n'),
(12, 46, 'É\r\n'),
(13, 72, 'HC\r\n'),
(14, 114, 'Te\r\n'),
(15, 63, 'To\r\n'),
(16, 12, 'Te\r\n'),
(17, 128, 'É\r\n'),
(18, 51, 'É\r\n'),
(19, 109, 'To\r\n'),
(20, 109, 'G\r\n'),
(21, 97, 'G\r\n'),
(22, 97, 'To\r\n'),
(23, 24, 'L\r\n'),
(24, 91, 'To\r\n'),
(25, 137, 'L\r\n'),
(26, 84, 'G\r\n'),
(27, 30, 'HC\r\n'),
(28, 108, 'Te\r\n'),
(29, 84, 'To\r\n'),
(30, 6, 'L\r\n'),
(31, 108, 'L\r\n'),
(32, 12, 'L\r\n'),
(33, 79, 'É\r\n'),
(34, 72, 'G\r\n'),
(35, 118, 'L\r\n'),
(36, 60, 'L\r\n'),
(37, 52, 'É\r\n'),
(38, 137, 'HC\r\n'),
(39, 114, 'L\r\n'),
(40, 90, 'To\r\n'),
(41, 20, 'HC\r\n'),
(42, 63, 'G\r\n'),
(43, 129, 'G\r\n'),
(44, 129, 'L\r\n'),
(45, 15, 'É\r\n');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ar`
--
ALTER TABLE `ar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sutiid` (`sutiid`);

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `hirek`
--
ALTER TABLE `hirek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `komment`
--
ALTER TABLE `komment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komment_ibfk_1` (`kommentazonosito`);

--
-- A tábla indexei `suti`
--
ALTER TABLE `suti`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tartalom`
--
ALTER TABLE `tartalom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sutiid` (`sutiid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ar`
--
ALTER TABLE `ar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `hirek`
--
ALTER TABLE `hirek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `komment`
--
ALTER TABLE `komment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT a táblához `suti`
--
ALTER TABLE `suti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT a táblához `tartalom`
--
ALTER TABLE `tartalom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `komment`
--
ALTER TABLE `komment`
  ADD CONSTRAINT `komment_ibfk_1` FOREIGN KEY (`kommentazonosito`) REFERENCES `hirek` (`id`);

--
-- Megkötések a táblához `tartalom`
--
ALTER TABLE `tartalom`
  ADD CONSTRAINT `tartalom_ibfk_1` FOREIGN KEY (`sutiid`) REFERENCES `suti` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
