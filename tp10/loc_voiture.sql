-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Ven 24 Novembre 2023 à 14:52
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `loc_voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `ncin` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `date_naissance` date NOT NULL,
  `num_permis` varchar(15) NOT NULL,
  PRIMARY KEY (`ncin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`ncin`, `email`, `nom`, `prenom`, `adresse`, `tel`, `date_naissance`, `num_permis`) VALUES
('A361548612612', 'free.kau@gmail.', 'kau', 'free', '37 rue chateau des rentiers', '0604050302', '2023-11-16', 'G15861564'),
('B548645156464', 'biggy.samurai@g', 'samurai', 'biggy', '14 rue des petits ronds', '0603050908', '2000-11-13', 'H18587546');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `num_location` int(50) NOT NULL AUTO_INCREMENT,
  `prix_location` double NOT NULL,
  `duree` int(50) NOT NULL,
  `caution` double NOT NULL,
  `date_location` date NOT NULL,
  `immatriculation` varchar(50) NOT NULL,
  `ncin` varchar(50) NOT NULL,
  PRIMARY KEY (`num_location`),
  KEY `immatriculation` (`immatriculation`,`ncin`),
  KEY `ncin` (`ncin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`num_location`, `prix_location`, `duree`, `caution`, `date_location`, `immatriculation`, `ncin`) VALUES
(1, 1500, 3, 15000, '2019-11-12', '1234567', 'A361548612612'),
(2, 2000, 2, 17000, '2026-11-12', '1346792', 'B548645156464');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `immatriculation` varchar(11) NOT NULL,
  `marque` varchar(11) NOT NULL,
  `couleur` varchar(11) NOT NULL,
  `nbre_porte` int(11) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `boite_vitesse` varchar(11) NOT NULL,
  `energie` varchar(11) NOT NULL,
  `puissance` int(11) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`immatriculation`, `marque`, `couleur`, `nbre_porte`, `kilometrage`, `boite_vitesse`, `energie`, `puissance`) VALUES
('1234567', 'bmw', 'blanc', 4, 1500, 'automatique', 'hybride', 200),
('1346792', 'audi', 'noir', 4, 3000, 'manuel', 'diesel', 150);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`ncin`) REFERENCES `clients` (`ncin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
