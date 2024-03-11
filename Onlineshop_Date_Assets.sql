-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 26. Okt 2017 um 16:08
-- Server-Version: 5.7.17-log
-- PHP-Version: 5.6.19

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Tabellenstruktur für Tabelle `bestellung`
--

DROP TABLE IF EXISTS `bestellung`;
CREATE TABLE `bestellung` (
  `bestellnummer` int(10) UNSIGNED NOT NULL,
  `artikelanzahl` int(11) NOT NULL,
  `einzelpreis` decimal(6,2) NOT NULL,
  `artikel` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `bestellDatum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lieferDatum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `zahlungsDatum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `bestellung`
--

INSERT INTO `bestellung` (`bestellnummer`, `artikelanzahl`, `einzelpreis`, `artikel`, `bestellDatum`, `lieferDatum`, `zahlungsDatum`) VALUES
(1, 1, '499.99', 'Monitor', '2016-01-01 07:23:11', '2016-01-03 00:11:35', '2016-01-25 00:11:35'),
(2, 2, '1299.00', 'PC X2000', '2016-09-23 11:12:13', '0000-00-00 00:00:00', '2016-10-10 00:11:57'),
(3, 3, '4.99', 'Maus', '2016-10-02 09:34:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, '1299.00', 'PC X2000', '2016-09-01 19:12:54', '2016-10-01 16:46:24', '2016-10-11 16:42:50'),
(5, 12, '4.99', 'Maus', '2016-05-01 13:11:19', '2016-05-05 16:45:52', '2016-07-21 16:45:52'),
(6, 1, '1429.00', 'PC X3000', '2016-10-10 19:19:19', '0000-00-00 00:00:00', '2016-10-11 16:44:03'),
(7, 6, '699.00', 'Laptop Y500', '2017-01-09 07:12:49', '2017-04-01 16:47:50', '2017-01-11 16:47:50'),
(8, 100, '2.50', 'VGA Kabel', '2016-07-07 16:52:39', '2016-08-11 16:47:50', '0000-00-00 00:00:00'),
(9, 4, '699.00', 'Laptop Y500', '2016-02-09 09:19:29', '2016-03-11 16:47:54', '2016-05-11 16:47:54'),
(10, 75, '2.50', 'VGA Kabel', '2016-08-27 17:43:15', '2016-09-14 16:47:54', '0000-00-00 00:00:00');

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
('Pierre', 'Chevalier', 23, 'Avenue Bleu', 91823, 'Paris', 'Frankreich', '2016-08-11 05:12:29'),
('Theo', 'Kleist', 24, 'Hauptstraße 1', 10101, 'Berlin', 'Deutschland', '2017-04-01 14:12:29'),
('Anna', 'Meier', 30, 'Goethestraße 5', 11223, 'Berlin', 'Deutschland', '2016-11-11 18:12:29'),
('Peter', 'Meier', 50, 'Hauptstraße 13', 14140, 'Potsdam', 'Deutschland', '2015-03-23 14:12:29'),
('Ali', 'Mueller', 29, 'Bachweg 2', 11111, 'Berlin', 'Deutschland', '2016-04-14 16:12:29'),
('Maria', 'Mueller', 5, 'Schillerstraße', 60000, 'Frankfurt', 'Deutschland', '2017-07-22 23:12:29'),
('Paul', 'Panther', 42, '42nd street', 12345, 'New York', 'USA', '2017-04-09 07:12:29'),
('Karl', 'Schmitt', 98, 'Hauptstraße 99', 60666, 'Frankfurt', 'Deutschland', '2016-01-05 13:12:29'),
('Sandra', 'Schuster', 21, 'Kleiner Weg 3', 14014, 'Potsdam', 'Deutschland', '2016-03-11 12:12:29'),
('John', 'Smith', 35, 'Broadway 1', 54321, 'New York', 'USA', '2017-10-11 11:12:29'),
('Peter', 'Pattex', 53, 'Goldackerweg 17', 65191, 'Wiesbaden', 'Deutschland', '2018-05-02 16:43:57');


--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  ADD PRIMARY KEY (`bestellnummer`);

--
-- Indizes für die Tabelle `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`nachname`,`vorname`,`alterInJahren`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  MODIFY `bestellnummer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
