-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Máj 02. 19:03
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tallest_buildings`
--
CREATE DATABASE IF NOT EXISTS `tallest_buildings` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tallest_buildings`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `buildings`
--

CREATE TABLE `buildings` (
  `rank` int(11) DEFAULT NULL,
  `building_name` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `height_m` double DEFAULT NULL,
  `height_ft` int(11) DEFAULT NULL,
  `floors` int(11) DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `used_for` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `buildings`
--

INSERT INTO `buildings` (`rank`, `building_name`, `city`, `height_m`, `height_ft`, `floors`, `completed`, `material`, `used_for`) VALUES
(30, '23 Marina', 'Dubai (AE)', 392.4, 1287, 88, 2012, 'concrete', 'residential'),
(76, '3 World Trade Center', 'New York City (US)', 328.9, 1079, 69, 2018, 'composite', 'office'),
(32, '30 Hudson Yards', 'New York City (US)', 386.6, 1268, 73, 2019, 'steel/concrete', 'office / retail'),
(22, '432 Park Avenue', 'New York City (US)', 425.7, 1397, 85, 2015, 'concrete', 'residential'),
(54, '85 Sky Tower', 'Kaohsiung (CN)', 347.5, 1140, 85, 1997, 'steel', 'hotel / office / retail'),
(57, '875 North Michigan Avenue', 'Chicago (US)', 343.7, 1128, 100, 1969, 'steel', 'residential / office'),
(59, 'ADNOC Headquarters', 'Abu Dhabi (AE)', 342, 1122, 65, 2015, 'concrete', 'office'),
(27, 'Al Hamra Tower', 'Kuwait City (KW)', 412.6, 1354, 80, 2011, 'concrete', 'office'),
(80, 'Al Yaqoub Tower', 'Dubai (AE)', 328, 1076, 69, 2013, 'concrete', 'hotel / office'),
(44, 'Almas Tower', 'Dubai (AE)', 360, 1181, 68, 2008, 'concrete', 'office'),
(55, 'Aon Center', 'Chicago (US)', 346.3, 1136, 83, 1973, 'steel', 'office'),
(43, 'Bank of America Tower', 'New York City (US)', 365.8, 1200, 55, 2009, 'composite', 'office'),
(42, 'Bank of China Tower', 'Hong Kong (CN)', 367.4, 1205, 72, 1990, 'composite', 'office'),
(82, 'Baoneng Center', 'Shenzhen (CN)', 327.3, 1074, 65, 2018, 'composite', 'office'),
(100, 'Blue Tower', 'Dubai (AE)', 317.6, 1042, 72, 2010, 'concrete', 'residential'),
(91, 'Burj Al Arab', 'Dubai (AE)', 321, 1053, 56, 1999, 'composite', 'hotel'),
(1, 'Burj Khalifa', 'Dubai (AE)', 828, 2717, 163, 2010, 'steel/concrete', 'office / residential / hotel'),
(36, 'Burj Mohammed Bin Rashid', 'Abu Dhabi (AE)', 381.2, 1251, 88, 2014, 'concrete', 'residential'),
(39, 'Central Plaza', 'Hong Kong (CN)', 373.9, 1227, 78, 1992, 'concrete', 'office'),
(14, 'Changsha IFS Tower T1', 'Changsha (CN)', 452.1, 1483, 94, 2018, 'composite', 'hotel / office'),
(29, 'China Resources Tower', 'Shenzhen (CN)', 392.5, 1288, 68, 2018, 'composite', 'office'),
(73, 'China World Tower', 'Beijing (CN)', 330, 1083, 74, 2010, 'composite', 'hotel / office'),
(63, 'Chongqing World Financial Center', 'Chongqing (CN)', 338.9, 1112, 72, 2015, 'composite', 'hotel / office'),
(94, 'Chrysler Building', 'New York City (US)', 318.9, 1046, 77, 1930, 'steel', 'office'),
(31, 'CITIC Plaza', 'Guangzhou (CN)', 390.2, 1280, 80, 1996, 'composite', 'office'),
(9, 'CITIC Tower', 'Beijing (CN)', 527.7, 1731, 109, 2018, 'composite', 'office'),
(60, 'Comcast Technology Center', 'Philadelphia (US)', 341.7, 1121, 59, 2018, 'composite', 'hotel / office'),
(69, 'DAMAC Heights', 'Dubai (AE)', 335.1, 1099, 88, 2018, 'concrete', 'residential'),
(86, 'Deji Plaza', 'Nanjing (CN)', 324, 1063, 62, 2013, 'composite', 'hotel / office'),
(38, 'Elite Residence', 'Dubai (AE)', 380.5, 1248, 87, 2012, 'concrete', 'residential'),
(49, 'Emirates Tower One', 'Dubai (AE)', 354.6, 1163, 54, 2000, 'composite', 'office'),
(37, 'Empire State Building', 'New York City (US)', 381, 1250, 102, 1931, 'steel', 'office'),
(34, 'Eton Place Dalian Tower 1', 'Dalian (CN)', 383.2, 1257, 80, 2016, 'composite', 'hotel / office'),
(98, 'Fanya International Finance Building North', 'Kunming (CN)', 317.8, 1043, 67, 2016, 'composite', 'office'),
(99, 'Fanya International Finance Building South', 'Kunming (CN)', 317.8, 1043, 66, 2016, 'composite', 'office'),
(40, 'Federation Tower', 'Moscow (RU)', 373.7, 1226, 93, 2016, 'concrete', 'residential / office'),
(52, 'Forum 66 Tower 1', 'Shenyang (CN)', 350.6, 1150, 68, 2015, 'composite', 'hotel / office'),
(58, 'Four Seasons Place', 'Kuala Lumpur (MY)', 342.5, 1124, 65, 2018, 'concrete', 'residential / hotel'),
(46, 'Gevora Hotel', 'Dubai (AE)', 356.3, 1169, 75, 2017, 'steel/concrete', 'hotel'),
(95, 'Global City Square', 'Guangzhou (CN)', 318.9, 1046, 67, 2016, 'composite', 'office'),
(90, 'Guangxi Finance Plaza', 'Nanning (CN)', 321, 1053, 68, 2017, 'composite', 'hotel / office'),
(7, 'Guangzhou CTF Finance Centre', 'Guangzhou (CN)', 530, 1739, 111, 2016, 'composite', 'hotel / residential / office'),
(20, 'Guangzhou International Finance Center', 'Guangzhou (CN)', 438.6, 1439, 103, 2010, 'composite', 'hotel / office'),
(45, 'Hanking Center', 'Shenzhen (CN)', 358.9, 1177, 65, 2018, 'composite', 'office'),
(75, 'Hon Kwok City Center', 'Shenzhen (CN)', 329.4, 1081, 80, 2017, 'composite', 'residential / office'),
(12, 'International Commerce Centre', 'Hong Kong (CN)', 484, 1588, 108, 2010, 'composite', 'hotel / office'),
(25, 'Jin Mao Tower', 'Shanghai (CN)', 420.5, 1380, 88, 1999, 'composite', 'hotel / office'),
(97, 'Jiuzhou International Tower', 'Nanning (CN)', 318, 1043, 71, 2017, 'composite', 'office'),
(47, 'JW Marriott Marquis Hotel Dubai Tower 1', 'Dubai (AE)', 355.4, 1166, 82, 2012, 'concrete', 'hotel'),
(47, 'JW Marriott Marquis Hotel Dubai Tower 2', 'Dubai (AE)', 355.4, 1166, 82, 2013, 'concrete', 'hotel'),
(78, 'Keangnam Hanoi Landmark Tower', 'Hanoi (VN)', 328.6, 1078, 72, 2012, 'concrete', 'hotel / residential / office'),
(19, 'KK100', 'Shenzhen (CN)', 441.8, 1449, 100, 2011, 'composite', 'hotel / office'),
(79, 'Longxi International Hotel', 'Wuxi (CN)', 328, 1076, 72, 2011, 'composite', 'residential / hotel'),
(5, 'Lotte World Tower', 'Seoul (KR)', 554.5, 1819, 123, 2017, 'composite', 'hotel / residential / office / retail'),
(3, 'Makkah Royal Clock Tower', 'Mecca (SA)', 601, 1972, 120, 2012, 'steel/concrete', 'other / hotel'),
(23, 'Marina 101', 'Dubai (AE)', 425, 1394, 101, 2017, 'concrete', 'residential / hotel'),
(64, 'Mercury City Tower', 'Moscow (RU)', 338.8, 1112, 75, 2013, 'concrete', 'residential / office'),
(72, 'Minsheng Bank Building', 'Wuhan (CN)', 331, 1086, 68, 2008, 'steel', 'office'),
(35, 'Nanning Logan Century 1', 'Nanning (CN)', 381.3, 1251, 82, 2018, 'composite', 'hotel / office'),
(96, 'New York Times Tower', 'New York City (US)', 318.8, 1046, 52, 2007, 'steel', 'office'),
(92, 'Nina Tower', 'Hong Kong (CN)', 320.4, 1051, 80, 2006, 'concrete', 'hotel / office'),
(50, 'OKO - Residential Tower', 'Moscow (RU)', 354.2, 1162, 90, 2015, 'concrete', 'residential / serviced apartments / hotel'),
(61, 'One Shenzhen Bay Tower 7', 'Shenzhen (CN)', 341.4, 1120, 71, 2018, 'composite', 'residential / hotel / office'),
(6, 'One World Trade Center', 'New York City (US)', 541.3, 1776, 94, 2014, 'composite', 'office'),
(15, 'Petronas Twin Tower 1', 'Kuala Lumpur (MY)', 451.9, 1483, 88, 1998, 'composite', 'office'),
(15, 'Petronas Twin Tower 2', 'Kuala Lumpur (MY)', 451.9, 1483, 88, 1998, 'composite', 'office'),
(4, 'Ping An Finance Center', 'Shenzhen (CN)', 599.1, 1965, 115, 2017, 'composite', 'office'),
(26, 'Princess Tower', 'Dubai (AE)', 413.4, 1356, 101, 2012, 'steel/concrete', 'residential'),
(88, 'Q1 Tower', 'Gold Coast (AU)', 322.5, 1058, 78, 2005, 'concrete', 'residential'),
(71, 'Rose Rayhaan by Rotana', 'Dubai (AE)', 333, 1093, 71, 2007, 'composite', 'hotel'),
(83, 'Salesforce Tower', 'San Francisco (US)', 326.1, 1070, 61, 2018, 'composite', 'office'),
(2, 'Shanghai Tower', 'Shanghai (CN)', 632, 2073, 128, 2015, 'composite', 'hotel / office'),
(11, 'Shanghai World Financial Center', 'Shanghai (CN)', 492, 1614, 101, 2008, 'composite', 'hotel / office'),
(70, 'Shimao International Plaza', 'Shanghai (CN)', 333.3, 1094, 60, 2006, 'concrete', 'hotel / office / retail'),
(33, 'Shun Hing Square', 'Shenzhen (CN)', 384, 1260, 69, 1996, 'composite', 'office'),
(93, 'Sinar Mas Center 1', 'Shanghai (CN)', 320, 1050, 65, 2017, 'composite', 'office'),
(65, 'Suning Plaza Tower 1', 'Zhenjiang (CN)', 338, 1109, 75, 2018, 'composite', 'hotel / serviced apartments / SOHO / office'),
(10, 'TAIPEI 101', 'Taipei (CN)', 508, 1667, 101, 2004, 'composite', 'office'),
(41, 'The Address Boulevard', 'Dubai (AE)', 370, 1214, 73, 2017, 'concrete', 'residential / hotel / retail'),
(56, 'The Center', 'Hong Kong (CN)', 346, 1135, 73, 1998, 'steel', 'office'),
(84, 'The Index', 'Dubai (AE)', 326, 1070, 80, 2010, 'concrete', 'residential / office'),
(85, 'The Landmark', 'Abu Dhabi (AE)', 324, 1063, 72, 2013, 'concrete', 'residential / office'),
(53, 'The Pinnacle', 'Guangzhou (CN)', 350.3, 1149, 60, 2012, 'concrete', 'office'),
(51, 'The Torch', 'Dubai (AE)', 352, 1155, 86, 2011, 'concrete', 'residential'),
(8, 'Tianjin CTF Finance Centre', 'Tianjin (CN)', 530, 1739, 97, 2019, 'composite', 'hotel / office'),
(66, 'Tianjin Modern City Office Tower', 'Tianjin (CN)', 338, 1109, 65, 2016, 'composite', 'office'),
(67, 'Tianjin World Financial Center', 'Tianjin (CN)', 336.9, 1105, 75, 2011, 'composite', 'office'),
(24, 'Trump International Hotel & Tower', 'Chicago (US)', 423.2, 1389, 98, 2009, 'concrete', 'residential / hotel'),
(28, 'Two International Finance Centre', 'Hong Kong (CN)', 412, 1352, 88, 2003, 'composite', 'office'),
(13, 'Vincom Landmark 81', 'Ho Chi Minh City (VN)', 461.3, 1513, 81, 2018, 'composite', 'hotel / residential'),
(89, 'Wenzhou Trade Center', 'Wenzhou (CN)', 321.9, 1056, 68, 2011, 'concrete', 'hotel / office'),
(18, 'Willis Tower', 'Chicago (US)', 442.1, 1451, 108, 1974, 'steel', 'office'),
(68, 'Wilshire Grand Center', 'Los Angeles (US)', 335.3, 1100, 73, 2017, 'composite', 'hotel / office'),
(21, 'Wuhan Center Tower', 'Wuhan (CN)', 438, 1437, 88, 2019, 'composite', 'hotel / residential / office'),
(62, 'Wuxi International Finance Square', 'Wuxi (CN)', 339, 1112, 68, 2014, 'composite', 'hotel / office'),
(81, 'Wuxi Suning Plaza 1', 'Wuxi (CN)', 328, 1076, 67, 2014, 'composite', 'hotel / serviced apartments / office'),
(87, 'Yantai Shimao No. 1 The Harbour', 'Yantai (CN)', 323, 1060, 59, 2017, 'composite', 'residential / hotel / office'),
(74, 'Yuexiu Fortune Center Tower 1', 'Wuhan (CN)', 330, 1083, 68, 2017, 'composite', 'office'),
(77, 'Zhuhai St. Regis Hotel & Office Tower', 'Zhuhai (CN)', 328.8, 1079, 66, 2017, 'composite', 'hotel / office'),
(17, 'Zifeng Tower', 'Nanjing (CN)', 450, 1476, 66, 2010, 'composite', 'hotel / office');

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `buildings_cncc`
-- (Lásd alább az aktuális nézetet)
--
CREATE TABLE `buildings_cncc` (
`rank` int(11)
,`building_name` varchar(255)
,`city_name` varchar(255)
,`country_code` varchar(2)
,`height_m` double
,`height_ft` int(11)
,`floors` int(11)
,`completed` int(11)
,`material` varchar(255)
,`used_for` varchar(255)
);

-- --------------------------------------------------------

--
-- Nézet szerkezete `buildings_cncc`
--
DROP TABLE IF EXISTS `buildings_cncc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `buildings_cncc`  AS SELECT `buildings`.`rank` AS `rank`, `buildings`.`building_name` AS `building_name`, left(`buildings`.`city`,octet_length(`buildings`.`city`) - 5) AS `city_name`, left(right(`buildings`.`city`,3),2) AS `country_code`, `buildings`.`height_m` AS `height_m`, `buildings`.`height_ft` AS `height_ft`, `buildings`.`floors` AS `floors`, `buildings`.`completed` AS `completed`, `buildings`.`material` AS `material`, `buildings`.`used_for` AS `used_for` FROM `buildings` ;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`building_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
