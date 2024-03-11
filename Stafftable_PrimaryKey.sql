-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 04. Okt 2012 um 17:49
-- Server Version: 5.5.27-log
-- PHP-Version: 5.3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `vorname` char(255) NOT NULL,
  `nachname` char(255) NOT NULL,
  `alterInJahren` int(11) NOT NULL,
  PRIMARY KEY (`nachname`,`vorname`,`alterInJahren`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`vorname`, `nachname`, `alterInJahren`) VALUES
('Theo', 'Kleist', 24),
('Anna', 'Meier', 30),
('Peter', 'Meier', 50),
('Ali', 'Müller', 29),
('Maria', 'Müller', 5),
('Paul', 'Panther', 42),
('Karl', 'Schmitt', 98),
('Sandra', 'Schuster', 21),
('John', 'Smith', 35),
('Peter', 'Pattex', 53);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
