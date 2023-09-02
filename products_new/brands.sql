-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 01 sep. 2023 à 18:04
-- Version du serveur : 5.7.33
-- Version de PHP : 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `activecms`
--

-- --------------------------------------------------------

--
-- Structure de la table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1,'ACM','uploads/brands/brand.jpg',1,'acm','ACM',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(2,'Apivita','uploads/brands/brand.jpg',1,'apivita','Apivita',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(3,'Avent','uploads/brands/brand.jpg',1,'avent','Avent',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(4,'Avène','uploads/brands/brand.jpg',1,'avene','Avène',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(5,'Babyliss','uploads/brands/brand.jpg',1,'babyliss','Babyliss',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(6,'Bebe Confort','uploads/brands/brand.jpg',1,'bebe-confort','Bebe Confort',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(7,'Beurer','uploads/brands/brand.jpg',1,'beurer','Beurer',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(8,'Bioderma','uploads/brands/brand.jpg',1,'bioderma','Bioderma',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(9,'Biokap','uploads/brands/brand.jpg',1,'biokap','Biokap',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(10,'Biokera','uploads/brands/brand.jpg',1,'biokera','Biokera',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(11,'CATTIER','uploads/brands/brand.jpg',1,'cattier','CATTIER',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(12,'Curasept','uploads/brands/brand.jpg',1,'curasept','Curasept',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(13,'Dodie','uploads/brands/brand.jpg',1,'dodie','Dodie',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(14,'Ducray','uploads/brands/brand.jpg',1,'ducray','Ducray',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(15,'Elgydium','uploads/brands/brand.jpg',1,'elgydium','Elgydium',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(16,'Esthederm','uploads/brands/brand.jpg',1,'esthederm','Esthederm',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(17,'Eucerin','uploads/brands/brand.jpg',1,'eucerin','Eucerin',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(18,'Farlin','uploads/brands/brand.jpg',1,'farlin','Farlin',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(19,'Filorga','uploads/brands/brand.jpg',1,'filorga','Filorga',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(20,'Garnier','uploads/brands/brand.jpg',1,'garnier','Garnier',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(21,'Gum','uploads/brands/brand.jpg',1,'gum','Gum',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(22,'Hartmann','uploads/brands/brand.jpg',1,'hartmann','Hartmann',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(23,'ISDIN','uploads/brands/brand.jpg',1,'isdin','ISDIN',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(24,'Janssen Cosmetics','uploads/brands/brand.jpg',1,'janssen-cosmetics','Janssen Cosmetics',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(25,'KLorane','uploads/brands/brand.jpg',1,'klorane','KLorane',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(26,'L\'OREAL','uploads/brands/brand.jpg',1,'loreal','L\'OREAL',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(27,'La roche-Posay','uploads/brands/brand.jpg',1,'la-roche-posay','La roche-Posay',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(28,'Lierac','uploads/brands/brand.jpg',1,'lierac','Lierac',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(29,'Manix','uploads/brands/brand.jpg',1,'manix','Manix',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(30,'NATURALIA','uploads/brands/brand.jpg',1,'naturalia','NATURALIA',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(31,'NaturEsoin','uploads/brands/brand.jpg',1,'naturesoin','NaturEsoin',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(32,'Noreva','uploads/brands/brand.jpg',1,'noreva','Noreva',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(33,'Novexpert','uploads/brands/brand.jpg',1,'novexpert','Novexpert',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(34,'Nuxe','uploads/brands/brand.jpg',1,'nuxe','Nuxe',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(35,'PRESIDENT','uploads/brands/brand.jpg',1,'president','PRESIDENT',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(36,'Pro vital','uploads/brands/brand.jpg',1,'pro-vital','Pro vital',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(37,'Puressentiel','uploads/brands/brand.jpg',1,'puressentiel','Puressentiel',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(38,'Racine Vita','uploads/brands/brand.jpg',1,'racine-vita','Racine Vita',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(39,'Roche-Posay','uploads/brands/brand.jpg',1,'roche-posay','Roche-Posay',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(40,'Sensilis','uploads/brands/brand.jpg',1,'sensilis','Sensilis',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(41,'SVR','uploads/brands/brand.jpg',1,'svr','SVR',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(42,'Urgo','uploads/brands/brand.jpg',1,'urgo','Urgo',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(43,'Uriage','uploads/brands/brand.jpg',1,'uriage','Uriage',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(44,'Vichy','uploads/brands/brand.jpg',1,'vichy','Vichy',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30'),
(45,'Vita Nature','uploads/brands/brand.jpg',1,'vita-nature','Vita Nature',NULL,'2023-08-18 21:30:30','2023-08-18 21:30:30');


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
