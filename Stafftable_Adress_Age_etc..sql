-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 18. Okt 2017 um 14:21
-- Server-Version: 5.7.17-log
-- PHP-Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `dbs1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `vorname` char(255) COLLATE latin1_german1_ci NOT NULL,
  `nachname` char(255) COLLATE latin1_german1_ci NOT NULL,
  `alterInJahren` int(11) NOT NULL,
  `strasse` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `plz` int(5) NOT NULL,
  `ort` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `land` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `anmeldung` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`vorname`, `nachname`, `alterInJahren`, `strasse`, `plz`, `ort`, `land`, `anmeldung`) VALUES
('Pierre', 'Chevalier', 23, 'Avenue Bleu', 91823, 'Paris', 'Frankreich', '2017-08-11 05:12:29'),
('Theo', 'Kleist', 24, 'Hauptstraße 1', 10101, 'Berlin', 'Deutschland', '2018-04-01 14:12:29'),
('Anna', 'Meier', 30, 'Goethestraße 5', 11223, 'Berlin', 'Deutschland', '2017-11-11 18:12:29'),
('Peter', 'Meier', 50, 'Hauptstraße 13', 14140, 'Potsdam', 'Deutschland', '2016-03-23 14:12:29'),
('Ali', 'Mueller', 29, 'Bachweg 2', 11111, 'Berlin', 'Deutschland', '2017-04-14 16:12:29'),
('Maria', 'Mueller', 5, 'Schillerstraße', 60000, 'Frankfurt', 'Deutschland', '2018-07-22 23:12:29'),
('Paul', 'Panther', 42, '42nd street', 12345, 'New York', 'USA', '2018-04-09 07:12:29'),
('Karl', 'Schmitt', 98, 'Hauptstraße 99', 60666, 'Frankfurt', 'Deutschland', '2017-01-05 13:12:29'),
('Sandra', 'Schuster', 21, 'Kleiner Weg 3', 14014, 'Potsdam', 'Deutschland', '2017-03-11 12:12:29'),
('John', 'Smith', 35, 'Broadway 1', 54321, 'New York', 'USA', '2018-10-11 11:12:29'),
('Peter', 'Pattex', 53, 'Goldackerweg 17', 65191, 'Wiesbaden', 'Deutschland', '2018-05-02 16:43:57');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`nachname`,`vorname`,`alterInJahren`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
