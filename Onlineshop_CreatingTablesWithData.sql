-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 26. Okt 2017 um 16:00
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
  `kunde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `bestellung`
--

INSERT INTO `bestellung` (`bestellnummer`, `artikelanzahl`, `einzelpreis`, `artikel`, `bestellDatum`, `kunde`) VALUES
(1, 1, '499.99', 'Monitor', '2018-01-01 07:23:11', 1),
(2, 5, '8.95', 'USB Stick', '2018-09-23 11:12:13', 3),
(3, 3, '4.99', 'Maus', '2018-10-02 09:34:27', 4),
(4, 1, '1299.00', 'PC X2000', '2018-09-01 19:12:54', 5),
(5, 12, '4.99', 'Maus', '2018-05-01 13:11:19', 7),
(6, 1, '1429.00', 'PC X3000', '2018-10-10 19:19:19', 1),
(7, 13, '699.00', 'Laptop Y500', '2018-09-09 07:12:49', 9),
(8, 100, '2.50', 'VGA Kabel', '2018-07-07 16:52:39', 3),
(9, 4, '699.00', 'Laptop Y500', '2018-02-09 09:19:29', 5),
(10, 100, '2.50', 'VGA Kabel', '2018-08-27 17:43:15', 2),
(11, 1, '6549.95', 'Beamer', '2018-11-15 16:59:03', 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(10) UNSIGNED NOT NULL,
  `vorname` char(255) COLLATE latin1_german1_ci NOT NULL,
  `nachname` char(255) COLLATE latin1_german1_ci NOT NULL,
  `strasse` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `plz` int(5) NOT NULL,
  `ort` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `land` varchar(255) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`id`, `vorname`, `nachname`, `strasse`, `plz`, `ort`, `land`) VALUES
(1, 'Pierre', 'Chevalier', 'Avenue Bleu', 91823, 'Paris', 'Frankreich'),
(2, 'Theo', 'Kleist', 'Hauptstraße 1', 10101, 'Berlin', 'Deutschland'),
(3, 'Anna', 'Meier', 'Goethestraße 5', 11223, 'Berlin', 'Deutschland'),
(4, 'Peter', 'Meier', 'Hauptstraße 13', 14140, 'Potsdam', 'Deutschland'),
(5, 'Ali', 'Mueller', 'Bachweg 2', 11111, 'Berlin', 'Deutschland'),
(6, 'Maria', 'Mueller', 'Schillerstraße', 60000, 'Frankfurt', 'Deutschland'),
(7, 'Paul', 'Panther', '42nd street', 12345, 'New York', 'USA'),
(8, 'Karl', 'Schmitt', 'Hauptstraße 99', 60666, 'Frankfurt', 'Deutschland'),
(9, 'Sandra', 'Schuster', 'Kleiner Weg 3', 14014, 'Potsdam', 'Deutschland'),
(10, 'John', 'Smith', 'Broadway 1', 54321, 'New York', 'USA');

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  MODIFY `bestellnummer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `person`
--
ALTER TABLE `person`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
