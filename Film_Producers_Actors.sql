-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 11. Jan 2013 um 14:05
-- Server Version: 5.1.66
-- PHP-Version: 5.3.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `perdelt`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) NOT NULL,
  `inhalt` text NOT NULL,
  `laenge` int(11) NOT NULL,
  `regisseur` int(11) DEFAULT NULL,
  `produzent` int(11) DEFAULT NULL,
  `genre` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `film`
--

INSERT INTO `film` (`id`, `titel`, `inhalt`, `laenge`, `regisseur`, `produzent`, `genre`) VALUES
(1, 'Die Vögel', '', 90, 1, NULL, 2),
(2, 'Alice im Wunderland', '', 109, 3, 3, 1),
(3, 'The Brave', '', 127, 2, NULL, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Komödie'),
(2, 'Tragödie');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`id`, `name`) VALUES
(1, 'Alfred Hitchcock'),
(2, 'Johnny Depp'),
(3, 'Tim Burton'),
(4, 'George Clooney');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `spielt`
--

DROP TABLE IF EXISTS `spielt`;
CREATE TABLE IF NOT EXISTS `spielt` (
  `schauspieler` int(11) NOT NULL,
  `film` int(11) NOT NULL,
  PRIMARY KEY (`schauspieler`,`film`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `spielt`
--

INSERT INTO `spielt` (`schauspieler`, `film`) VALUES
(1, 1),
(2, 2);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
