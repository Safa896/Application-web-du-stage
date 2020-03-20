-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 24 sep. 2019 à 15:31
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `Article_code` text NOT NULL,
  `Article_designation` text NOT NULL,
  `Article_PUHT` int(11) NOT NULL,
  `Article_Qte` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`Article_code`, `Article_designation`, `Article_PUHT`, `Article_Qte`) VALUES
('b002', 'Bureau MDF 11M40', 325, 57),
('b003', 'Table pour ordinateur ', 175, 90),
('b005', 'Bibliotheque 4 portes', 445, 8),
('b009', 'Chaise roulante', 83, 60),
('b010', 'Souris optique', 16, 152),
('b008', 'Imprimante Lexmark ', 360, 41);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `Client_civilite` varchar(255) NOT NULL,
  `Client_nom` varchar(255) NOT NULL,
  `Client_prenom` varchar(255) NOT NULL,
  `Client_num` int(11) NOT NULL,
  `ref_client` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `Com_num` int(11) NOT NULL,
  `Com_client` varchar(255) NOT NULL,
  `Com_date` date NOT NULL,
  `Com_montant` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail`
--

DROP TABLE IF EXISTS `detail`;
CREATE TABLE IF NOT EXISTS `detail` (
  `Detail_num` int(11) NOT NULL,
  `Detail_com` int(11) NOT NULL,
  `Detail_ref` text NOT NULL,
  `Detail_qte` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detail`
--

INSERT INTO `detail` (`Detail_num`, `Detail_com`, `Detail_ref`, `Detail_qte`) VALUES
(17, 8, '0', 2),
(20, 9, 'b009', 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
