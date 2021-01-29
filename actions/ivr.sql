-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 21, 2021 at 11:58 PM
-- Server version: 8.0.16
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ivr`
--

-- --------------------------------------------------------

--
-- Table structure for table `ivrmenuitems`
--

DROP TABLE IF EXISTS `ivrmenuitems`;
CREATE TABLE IF NOT EXISTS `ivrmenuitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `frName` text NOT NULL,
  `enName` text NOT NULL,
  `menuId` int(11) NOT NULL,
  `itemOrder` tinyint(4) NOT NULL,
  `display` tinyint(1) NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `menuId` (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ivrmenuitems`
--

INSERT INTO `ivrmenuitems` (`id`, `name`, `frName`, `enName`, `menuId`, `itemOrder`, `display`, `lastModified`, `dateCreated`) VALUES
(1, 'Vuga Ikinyarwanda', 'Vuga Ikinyarwanda', 'Vuga Ikinyarwanda', 1, 1, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(2, 'Say English', 'Say English', 'Say English', 1, 2, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(3, 'Dit Francais', 'Dit Francais', 'Dit Francais', 1, 3, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(4, 'Kumenya umubare w\'abanduye', 'Nombre de cas active', 'Number of active cases', 2, 1, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(5, 'Kumenya ibimenyetso bya covid-19', 'Symptômes du Covid-19', 'Covid-19 symptoms', 2, 2, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(6, 'Kuvugana n\'umukozi wa RBC', 'Parler a un représentant de RBC', 'Speak to an RBC representative', 2, 3, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(7, 'Subira ahabanza', 'Returner sur le menu principale', 'Return to the principal menu', 2, 0, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(8, 'Gusohoka', 'Sortir', 'Exit', 2, 0, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(9, 'Umubare w\'abanduye mu Rwanda', 'Nombre de cas au Rwanda', 'Number of cases in Rwanda', 3, 1, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(10, 'Umubare w\'abanduye ku isi', 'Nombre de cas mondiale', 'Number of cases world wide', 3, 2, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(11, 'Gusubira inyuma', 'Returner sur le menu précédent', 'Return to the previous menu', 3, 3, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(12, 'Subira ahabanza', 'Returner sur le menu principale', 'Return to the principal menu', 3, 4, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(13, 'Gusohoka', 'Sortir', 'Exit', 3, 5, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(14, 'Covid ni iki?', 'Qu\'est ce que le Covid-19?', 'What is Covid-19?', 4, 1, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(15, 'Ibimenyetso bya covid ni ibiye?', 'Quel sont les symptômes du Covid-19?', 'What are the symptoms of Covid-19?', 4, 2, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(16, 'Uburyo bwo kwirinda', 'Mesures de prevention', 'Prevention measures', 4, 3, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(17, 'Gusubira inyuma', 'Returner sur le menu précédent', 'Return to the previous menu', 4, 4, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(18, 'Subira ahabanza', 'Returner sur le menu principale', 'Return to the principal menu', 4, 5, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(19, 'Gusohoka', 'Sortir', 'Exit', 4, 6, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(20, 'Gusubira inyuma', 'Returner sur le menu précédent', 'Return to the previous menu', 5, 1, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(21, 'Subira ahabanza', 'Returner sur le menu principale', 'Return to the principal menu', 5, 2, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(22, 'Gusohoka', 'Sortir', 'Exit', 5, 3, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(23, 'Gusubira inyuma', 'Returner sur le menu précédent', 'Return to the previous menu', 6, 1, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(24, 'Subira ahabanza', 'Returner sur le menu principale', 'Return to the principal menu', 6, 2, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(25, 'Gusohoka', 'Sortir', 'Exit', 6, 3, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(26, 'Gusubira inyuma', 'Returner sur le menu précédent', 'Return to the previous menu', 7, 1, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(27, 'Subira ahabanza', 'Returner sur le menu principale', 'Return to the principal menu', 7, 2, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(28, 'Gusohoka', 'Sortir', 'Exit', 7, 3, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(29, 'Gusubira inyuma', 'Returner sur le menu précédent', 'Return to the previous menu', 8, 1, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(30, 'Subira ahabanza', 'Returner sur le menu principale', 'Return to the principal menu', 8, 2, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(31, 'Gusohoka', 'Sortir', 'Exit', 8, 3, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(32, 'Gusubira inyuma', 'Returner sur le menu précédent', 'Return to the previous menu', 9, 1, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(33, 'Subira ahabanza', 'Returner sur le menu principale', 'Return to the principal menu', 9, 2, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20'),
(34, 'Gusohoka', 'Sortir', 'Exit', 9, 3, 1, '2021-01-21 08:24:15', '2021-01-21 08:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `ivrmenus`
--

DROP TABLE IF EXISTS `ivrmenus`;
CREATE TABLE IF NOT EXISTS `ivrmenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `menuParent` int(11) DEFAULT NULL,
  `response` tinyint(1) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `frTitle` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enTitle` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`(20))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ivrmenus`
--

INSERT INTO `ivrmenus` (`id`, `name`, `menuParent`, `response`, `title`, `frTitle`, `enTitle`) VALUES
(1, 'language', 0, 0, 'Nimba ushaka kuvuga mu kinyarwanda vuga ikinyarwanda', 'Si voulez parler en français dites français', 'If you want to speak in English say English'),
(2, 'subject', 1, 0, 'Gufashe mubijyanye n\'iki?', 'Comment puis-je vous aider?', 'What can I help you with?'),
(3, 'location', 2, 0, 'Urashaka imibare y\'abanduye ya hehe?', 'Dans quel region?', 'In which location?'),
(4, 'moreSubjects', 2, 0, 'Gufashe mubijyanye n\'iki?', 'Comment puis-je vous aider?', 'What can I help you with?'),
(5, 'rwandaStatistics', 3, 1, 'Imibare y\'abanduye mu Rwanda', 'Nombre de cas au Rwanda', 'Number of cases in Rwanda'),
(6, 'worldStatistics', 3, 1, 'Imibare y\'abanduye ku isi.', 'Nombre de cas mondiale.', 'Global number of cases.'),
(7, 'covidInfo', 4, 1, 'Covid ni iki?', 'Qu\'est ce que Covid signifie?', 'What is Covid?'),
(8, 'covidSymptoms', 4, 1, 'Ibimenyetso bya covid', 'Quel sont les symptoms du Covid?', 'What are the symptoms of Covid?'),
(9, 'covidPrevention', 4, 1, 'Kwirinda covid', 'Comment prevenir Covid?', 'How to prevent Covid?');

-- --------------------------------------------------------

--
-- Table structure for table `ivrresponses`
--

DROP TABLE IF EXISTS `ivrresponses`;
CREATE TABLE IF NOT EXISTS `ivrresponses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `frName` text NOT NULL,
  `enName` text NOT NULL,
  `menuId` int(11) NOT NULL,
  `itemOrder` tinyint(4) NOT NULL,
  `display` int(11) NOT NULL,
  `response` text NOT NULL,
  `frResponse` text NOT NULL,
  `enResponse` text NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `menuId` (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ivrresponses`
--

INSERT INTO `ivrresponses` (`id`, `name`, `frName`, `enName`, `menuId`, `itemOrder`, `display`, `response`, `frResponse`, `enResponse`, `lastModified`, `dateCreated`) VALUES
(1, 'Abanduye bose', 'Cas total', 'Total cases', 5, 1, 1, '5,779', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(2, 'Abanduye uyu munsi', 'Nouveau cas', 'New cases', 5, 2, 2, '29', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(3, 'Abakize', 'Cas rétablie', 'Recovered cases', 5, 1, 1, '5,317', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(4, 'Abakize uyu munsi', 'Rétablie aujourd\'hui', 'Recovered today', 5, 4, 2, '76', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(5, 'Abakirwaye', 'Cas actuel', 'Current case(s)', 5, 5, 1, '415', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(6, 'Ibipimo', 'Teste(s)', 'Test(s)', 5, 6, 1, '614,267', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(7, 'Ibipimo by\'uyu munsi', 'Teste faite aujourd’hui', 'Today\'s test(s)', 5, 7, 2, '2,583', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(8, 'Abapfuye', 'Mort(s)', 'Death(s)', 5, 8, 1, '47', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(9, 'Abapfuye uyu munsi', 'Mort(s) aujourd\'hui', 'Today\'s death(s)', 5, 9, 2, '0', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(10, 'Abanduye bose', 'Nombre de cas globale', 'Global number of case(s)', 6, 1, 1, '60,837,127', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(11, 'Abakize', 'Cas rétablie', 'Recovered cases', 6, 2, 1, '42,162,378', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(12, 'Abakirwaye', 'Cas actuel', 'Current case(s)', 6, 3, 1, '17,245,620', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(13, 'Abapfuye', 'Morts', 'Deaths', 6, 4, 1, '1,429,129', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(14, 'Covid-19 ni indwara yandura iterwa na virusi ya SARS Cov2', 'Le Covid-19 est une maladie infectieuse causé par le virus SARS Cov2.', 'Covid-19 is an infectious disease caused by the SARS Cov2 virus.', 7, 1, 1, '', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(15, 'Umuriro', 'Fièvre', 'Fever', 8, 1, 1, '', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(16, 'Umunaniro', 'Fatigue', 'Fatigue/Tiredness', 8, 2, 1, '', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(17, 'Inkorora', 'Toux', 'Cough', 8, 3, 1, '', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(18, 'Kwambara masike mu bantu', 'Porter un masque en publique', 'Wearing a mask in public', 9, 1, 1, '', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(19, 'Gukaraba intoki kenshi', 'Se laver les mains fréquemment', 'Wash hands frequently', 9, 2, 1, '', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25'),
(20, 'Gusiga intera ya metero hagati yawe n\'abandi', 'Garder une distance d\'un mètre entre vous et les autres.', 'Keep a one meter distance between you and others', 9, 3, 1, '', '', '', '2021-01-21 14:25:25', '2021-01-21 14:25:25');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ivrmenuitems`
--
ALTER TABLE `ivrmenuitems`
  ADD CONSTRAINT `ivrmenuitems_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `ivrmenus` (`id`);

--
-- Constraints for table `ivrresponses`
--
ALTER TABLE `ivrresponses`
  ADD CONSTRAINT `ivrresponses_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `ivrmenus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
