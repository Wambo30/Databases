-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Host: 141.64.22.18
-- Erstellungszeit: 23. Apr 2014 um 15:25
-- Server Version: 5.6.16-log
-- PHP-Version: 5.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `dbs1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

DROP TABLE IF EXISTS `artikel`;
CREATE TABLE IF NOT EXISTS `artikel` (
  `artikelnummer` int(11) NOT NULL AUTO_INCREMENT,
  `bezeichnung` varchar(255) NOT NULL,
  `preis` decimal(6,2) NOT NULL,
  `artikelgruppe` int(11) NOT NULL,
  `hersteller` int(11) NOT NULL,
  PRIMARY KEY (`artikelnummer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`artikelnummer`, `bezeichnung`, `preis`, `artikelgruppe`, `hersteller`) VALUES
(1, 'Monitor', '499.99', 2, 3),
(2, 'Beamer', '6549.95', 2, 4),
(3, 'Maus', '4.99', 3, 5),
(4, 'USB Stick', '8.95', 3, 5),
(5, 'VGA Kabel', '2.50', 3, 4),
(6, 'Laptop Y500', '699.00', 1, 3),
(7, 'PC X2000', '1299.00', 1, 1),
(8, 'PC X3000', '1429.00', 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikelgruppe`
--

DROP TABLE IF EXISTS `artikelgruppe`;
CREATE TABLE IF NOT EXISTS `artikelgruppe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `artikelgruppe`
--

INSERT INTO `artikelgruppe` (`id`, `name`) VALUES
(1, 'Computer'),
(2, 'Monitore und Beamer'),
(3, 'Zubehör');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellung`
--

DROP TABLE IF EXISTS `bestellung`;
CREATE TABLE IF NOT EXISTS `bestellung` (
  `bestellnummer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `artikelanzahl` int(11) NOT NULL,
  `artikel` int(11) NOT NULL,
  `bestellDatum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lieferDatum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `zahlungsDatum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mahnDatum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `kunde` int(11) NOT NULL,
  PRIMARY KEY (`bestellnummer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci AUTO_INCREMENT=12 ;

--
-- Daten für Tabelle `bestellung`
--

INSERT INTO `bestellung` (`bestellnummer`, `artikelanzahl`, `artikel`, `bestellDatum`, `lieferDatum`, `zahlungsDatum`, `mahnDatum`, `kunde`) VALUES
(1, 1, 1, '2013-01-01 07:23:11', '2013-01-03 00:11:35', '2013-01-25 00:11:35', '0000-00-00 00:00:00', 1),
(2, 5, 4, '2013-09-23 11:12:13', '0000-00-00 00:00:00', '2013-10-10 00:11:57', '0000-00-00 00:00:00', 3),
(3, 3, 3, '2013-10-02 09:34:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(4, 1, 7, '2013-09-01 19:12:54', '2013-10-01 16:46:24', '2013-10-11 16:42:50', '0000-00-00 00:00:00', 5),
(5, 12, 3, '2013-05-01 13:11:19', '2013-05-05 16:45:52', '2013-07-21 16:45:52', '2013-06-11 16:45:52', 7),
(6, 1, 8, '2013-10-10 19:19:19', '0000-00-00 00:00:00', '2013-10-11 16:44:03', '0000-00-00 00:00:00', 1),
(7, 13, 6, '2013-09-09 07:12:49', '2013-08-09 16:47:50', '2013-10-11 16:47:50', '2013-09-11 16:47:50', 9),
(8, 100, 5, '2013-07-07 16:52:39', '2013-08-11 16:47:50', '0000-00-00 00:00:00', '2013-10-11 16:47:50', 3),
(9, 4, 6, '2013-02-09 09:19:29', '2013-03-11 16:47:54', '2013-05-11 16:47:54', '2013-04-11 16:47:54', 5),
(10, 100, 5, '2013-08-27 17:43:15', '2013-09-14 16:47:54', '0000-00-00 00:00:00', '2013-10-11 16:47:54', 2),
(11, 1, 2, '2013-11-15 16:59:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hersteller`
--

DROP TABLE IF EXISTS `hersteller`;
CREATE TABLE IF NOT EXISTS `hersteller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `land` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `hersteller`
--

INSERT INTO `hersteller` (`id`, `name`, `land`) VALUES
(1, 'HP', 'USA'),
(2, 'Sony', 'Japan'),
(3, 'Samsung', 'Südkorea'),
(4, 'Philips', 'Niederlande'),
(5, 'Logitech', 'Schweiz');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vorname` char(255) COLLATE latin1_german1_ci NOT NULL,
  `nachname` char(255) COLLATE latin1_german1_ci NOT NULL,
  `alterInJahren` int(11) NOT NULL,
  `strasse` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `plz` int(5) NOT NULL,
  `ort` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `land` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `anmeldung` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`id`, `vorname`, `nachname`, `alterInJahren`, `strasse`, `plz`, `ort`, `land`, `anmeldung`) VALUES
(1, 'Pierre', 'Chevalier', 23, 'Avenue Bleu', 91823, 'Paris', 'Frankreich', '2013-08-11 05:12:29'),
(2, 'Theo', 'Kleist', 24, 'Hauptstraße 1', 10101, 'Berlin', 'Deutschland', '2013-09-11 14:12:29'),
(3, 'Anna', 'Meier', 30, 'Goethestraße 5', 11223, 'Berlin', 'Deutschland', '2012-11-11 18:12:29'),
(4, 'Peter', 'Meier', 50, 'Hauptstraße 13', 14140, 'Potsdam', 'Deutschland', '2013-03-23 14:12:29'),
(5, 'Ali', 'Mueller', 29, 'Bachweg 2', 11111, 'Berlin', 'Deutschland', '2013-04-14 16:12:29'),
(6, 'Maria', 'Mueller', 5, 'Schillerstraße', 60000, 'Frankfurt', 'Deutschland', '2013-07-22 23:12:29'),
(7, 'Paul', 'Panther', 42, '42nd street', 12345, 'New York', 'USA', '2013-06-19 07:12:29'),
(8, 'Karl', 'Schmitt', 98, 'Hauptstraße 99', 60666, 'Frankfurt', 'Deutschland', '2013-10-01 13:12:29'),
(9, 'Sandra', 'Schuster', 21, 'Kleiner Weg 3', 14014, 'Potsdam', 'Deutschland', '2013-10-11 12:12:29'),
(10, 'John', 'Smith', 35, 'Broadway 1', 54321, 'New York', 'USA', '2013-10-11 11:12:29');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
