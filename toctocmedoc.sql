-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 29, 2020 at 05:22 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toctocmedoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `motdepasse` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membres`
--

INSERT INTO `membres` (`id`, `pseudo`, `mail`, `motdepasse`) VALUES
(1, 'melin', 'melin@gmail.com', '209d5fae8b2ba427d30650dd0250942af944a0c9'),
(2, 'saby', 'saby@gmail.com', '209d5fae8b2ba427d30650dd0250942af944a0c9'),
(4, 'titi', 'titi@gmail.com', '209d5fae8b2ba427d30650dd0250942af944a0c9'),
(5, 'nounou', 'nounou@gmail.com', '209d5fae8b2ba427d30650dd0250942af944a0c9'),
(6, 'tata', 'tata@gmail.com', '209d5fae8b2ba427d30650dd0250942af944a0c9'),
(7, 'chloe', 'chloe@gmail.com', '209d5fae8b2ba427d30650dd0250942af944a0c9'),
(8, 'toto', 'toto@gmail.com', '209d5fae8b2ba427d30650dd0250942af944a0c9'),
(10, 'test', 'test@gmail.fr', '209d5fae8b2ba427d30650dd0250942af944a0c9'),
(11, 'yao', 'yao@gmail.com', '209d5fae8b2ba427d30650dd0250942af944a0c9'),
(12, 'SandwichProtector', 'heytem.boumaza2077@gmail.com', '32eafc3b77117a016e57a27b60671bfd876ea6c5');

-- --------------------------------------------------------

--
-- Table structure for table `mesrndvs`
--

DROP TABLE IF EXISTS `mesrndvs`;
CREATE TABLE IF NOT EXISTS `mesrndvs` (
  `date` date NOT NULL,
  `heure` time(6) NOT NULL,
  `medecin` varchar(100) NOT NULL,
  `specialite` varchar(50) NOT NULL,
  `adresse` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mesrndvs`
--

INSERT INTO `mesrndvs` (`date`, `heure`, `medecin`, `specialite`, `adresse`) VALUES
('2020-03-18', '14:08:00.000000', 'toto', 'titi', 'bobigny'),
('2020-03-19', '12:35:00.000000', 'TATA', 'TOTO', 'paris'),
('2020-03-19', '12:45:00.000000', 'Julien', 'Ophtalmologue', '21 rue du chemin vert'),
('2020-04-17', '12:12:00.000000', 'chich', 'ophtalmo', '21 rue du chemin vert');

-- --------------------------------------------------------

--
-- Table structure for table `mes_traitement`
--

DROP TABLE IF EXISTS `mes_traitement`;
CREATE TABLE IF NOT EXISTS `mes_traitement` (
  `id_medoc` int(11) NOT NULL AUTO_INCREMENT,
  `type_prise` varchar(255) NOT NULL,
  `matin` int(11) NOT NULL,
  `midi` int(11) NOT NULL,
  `soir` int(11) NOT NULL,
  `nom_medoc` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  PRIMARY KEY (`id_medoc`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mes_traitement`
--

INSERT INTO `mes_traitement` (`id_medoc`, `type_prise`, `matin`, `midi`, `soir`, `nom_medoc`, `date_debut`, `date_fin`) VALUES
(9, 'ComprimÃ©', 1, 2, 1, 'Lysopaine', '2020-04-17', '2020-04-25'),
(8, 'Bouchon', 2, 1, 1, 'Humex', '2020-04-09', '2020-04-12'),
(6, 'ComprimÃ©', 2, 2, 2, 'Doliprane', '2020-03-19', '2020-03-26'),
(10, 'ComprimÃ©', 1, 2, 10, 'Actifes', '2020-04-17', '2020-04-25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
