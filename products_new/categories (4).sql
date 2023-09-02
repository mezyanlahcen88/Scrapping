-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 02 sep. 2023 à 11:18
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
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_level` int(11) NOT NULL DEFAULT '0',
  `commision_rate` double(8,2) NOT NULL DEFAULT '0.00',
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `top` int(1) NOT NULL DEFAULT '0',
  `digital` int(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `level`, `name`, `order_level`, `commision_rate`, `banner`, `icon`, `cover_image`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'Uncategorised', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'uncategorised', NULL, NULL, '2023-09-02 11:17:26', '2023-08-18 21:30:30'),
(2, 0, 0, 'Visage', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'visage', NULL, NULL, '2023-09-02 11:17:30', '2023-08-18 21:30:30'),
(3, 2, 1, 'SOINS ANTI-ÂGE & ANTI-RIDES', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-anti-age-anti-rides', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(4, 3, 1, 'Soins eclat', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-eclat', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(5, 3, 1, 'Premières rides', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'premieres-rides', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(6, 3, 1, 'Rides installées', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'rides-installees', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(7, 3, 1, 'Rides marquées / perte de fermeté', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'rides-marquees-perte-de-fermete', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(8, 2, 1, 'YEUX ET LÈVRES', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'yeux-et-levres', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(9, 8, 1, 'Démaquillants yeux', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'demaquillants-yeux', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(10, 8, 1, 'Soins Anti-poches et cernes', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-anti-poches-et-cernes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(11, 8, 1, 'Contour des yeux et lèvres', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'contour-des-yeux-et-levres', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(12, 8, 1, 'Soins cils et sourcils', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-cils-et-sourcils', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(13, 8, 1, 'Sticks lèvres et Réparateurs', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'sticks-levres-et-reparateurs', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(14, 2, 1, 'DÉMAQUILLANTS, NETTOYANTS VISAGE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'demaquillants-nettoyants-visage', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(15, 14, 1, 'Eau / Tonique / Lotion', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'eau-tonique-lotion', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(16, 14, 1, 'Lait / Mousse / Emulsion', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'lait-mousse-emulsion', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(17, 14, 1, 'Gel / Crème / Huile', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'gel-creme-huile', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(18, 14, 1, 'Cotons démaquillants / Lingettes et éponges', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cotons-demaquillants-lingettes-et-eponges', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(19, 2, 1, 'SOINS HYDRATANTS ET NUTRITION', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-hydratants-et-nutrition', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(20, 19, 1, 'Hydratants toutes peaux', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hydratants-toutes-peaux', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(21, 19, 1, 'Hydratants peaux normales à mixtes', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hydratants-peaux-normales-a-mixtes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(22, 19, 1, 'Hydratants peaux sèches', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hydratants-peaux-seches', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(23, 19, 1, 'Hydratants peaux intolérantes', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hydratants-peaux-intolerantes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(24, 19, 1, 'Hydratants peaux atopiques', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hydratants-peaux-atopiques', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(25, 19, 1, 'Soins teintés / bonne mine', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-teintes-bonne-mine', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(26, 2, 1, 'SOINS PEAU GRASSE / MIXTE & ACNÉ', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-peau-grasse-mixte-acne', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(27, 26, 1, 'Nettoyants / Purifiants', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'nettoyants-purifiants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(28, 26, 1, 'Matifiants / Hydratants', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'matifiants-hydratants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(29, 26, 1, 'Soins teintés', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-teintes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(30, 26, 1, 'Soins spécifiques', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-specifiques', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(31, 2, 1, 'Autres', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'N', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(32, 31, 1, 'Masques visage', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'masques-visage', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(33, 31, 1, 'Gommages et exfoliants visage', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'gommages-et-exfoliants-visage', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(34, 31, 1, 'Eau thermales', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'eau-thermales', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(35, 31, 1, 'Soins anti-rougeurs / peau sensible / squames', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-anti-rougeurs-peau-sensible-squames', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(36, 31, 1, 'Soins anti-taches & dépigmentants', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-anti-taches-depigmentants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(37, 31, 1, 'Soins réparateurs / cicatrisants', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-reparateurs-cicatrisants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(38, 31, 1, 'Outils & accessoires beauté', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'outils-accessoires-beaute', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(39, 0, 0, 'Cheveux', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cheveux', NULL, NULL, '2023-09-02 11:17:33', '2023-08-18 21:30:30'),
(40, 39, 1, 'SHAMPOOING', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'shampooing', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(41, 40, 1, 'Doux et Fréquent', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'doux-et-frequent', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(42, 40, 1, 'Antipelliculaire', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'antipelliculaire', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(43, 40, 1, 'Cheveux Gras', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cheveux-gras', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(44, 40, 1, 'Cuir Chevelu Sensible', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cuir-chevelu-sensible', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(45, 40, 1, 'Cheveux Secs', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cheveux-secs', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(46, 40, 1, 'Cheveux Frisés et Crépus', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cheveux-frises-et-crepus', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(47, 40, 1, 'Cheveux Colorés', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cheveux-colores', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(48, 40, 1, 'Cheveux Longs et Fins', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cheveux-longs-et-fins', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(49, 40, 1, 'Cheveux Cassants / Dévitalisés', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cheveux-cassants-devitalises', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(50, 40, 1, 'Reflets et Brillance', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'reflets-et-brillance', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(51, 39, 1, 'APRÉS-SHAMPOOING / SOIN DES CHEVEUX', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'apres-shampooing-soin-des-cheveux', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(52, 51, 1, 'Aprés-shampooing', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'apres-shampooing', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(53, 51, 1, 'Soins Défrisant et Lissant', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-defrisant-et-lissant', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(54, 51, 1, 'Masques / Baumes / Huiles Capillaires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'masques-baumes-huiles-capillaires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(55, 51, 1, 'Sérums et Ampoules Capillaires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'serums-et-ampoules-capillaires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(56, 51, 1, 'Soins Spray Cappilaires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-spray-cappilaires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(57, 39, 1, 'SOINS ANTI-CHUTE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-anti-chute', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(58, 57, 1, 'Shampooing Anti-Chute', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'shampooing-anti-chute', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(59, 57, 1, 'Ampoules et Lotions Anti-Chute', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'ampoules-et-lotions-anti-chute', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(60, 39, 1, 'SOINS ANTI-POUX', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-anti-poux', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(61, 60, 1, 'Shampooing Anti-poux', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'shampooing-anti-poux', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(62, 60, 1, 'Lotions Anti-poux', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'lotions-anti-poux', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(63, 60, 1, 'Accessoires Anti-poux', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'accessoires-anti-poux', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(64, 39, 1, 'APPAREILS & OUTILS DE COIFFURE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'appareils-outils-de-coiffure', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(65, 64, 1, 'Brossage – Accessoires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'brossage-accessoires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(66, 64, 1, 'Fixation, Gel', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'fixation-gel', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(67, 64, 1, 'Mousse, Crème', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'mousse-creme', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(68, 64, 1, 'Sèche cheveux', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'seche-cheveux', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(69, 64, 1, 'Tondeuses', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'tondeuses', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(70, 39, 1, 'Autres', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'N', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(71, 70, 1, 'Colorations', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'colorations', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(72, 70, 1, 'Soins à la kératine', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-a-la-keratine', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(73, 0, 0, 'Corps', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'corps', NULL, NULL, '2023-09-02 11:17:37', '2023-08-18 21:30:30'),
(74, 73, 1, 'HYDRATATION & NUTRITION CORPS', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hydratation-nutrition-corps', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(75, 74, 1, 'Soins Hydratation', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-hydratation', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(76, 74, 1, 'Soins Hydratation Anti-âge', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-hydratation-anti-age', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(77, 74, 1, 'Soins Hydratation Peaux Séches et Atopiques', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-hydratation-peaux-seches-et-atopiques', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(78, 74, 1, 'Soins Hydratation Teintés / Bonne mine', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-hydratation-teintes-bonne-mine', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(79, 73, 1, 'SOINS DES MAINS', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-des-mains', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(80, 79, 1, 'Mains Séches et Abîmées', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'mains-seches-et-abimees', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(81, 79, 1, 'Soins Anti-tache / Anti-âge Mains', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-anti-tache-anti-age-mains', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(82, 73, 1, 'MANUCURE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'manucure', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(83, 82, 1, 'Soins des ongles', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-des-ongles', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(84, 82, 1, 'Vernis à ongles', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'vernis-a-ongles', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(85, 82, 1, 'Dissolvant', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'dissolvant', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(86, 73, 1, 'SOINS PIEDS', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-pieds', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(87, 86, 1, 'Pieds Secs et Abîmées', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'pieds-secs-et-abimees', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(88, 86, 1, 'Pieds Fatigués et échauffés', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'pieds-fatigues-et-echauffes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(89, 86, 1, 'Pansements Pieds et Coussinets', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'pansements-pieds-et-coussinets', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(90, 86, 1, 'Pédicure', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'pedicure', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(91, 73, 1, 'EPILATION', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'epilation', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(92, 91, 1, 'Crème et Mousse Dépilatoire', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'creme-et-mousse-depilatoire', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(93, 91, 1, 'Cire et Bandes Dépilatoires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cire-et-bandes-depilatoires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(94, 73, 1, 'Autres', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'N', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(95, 94, 1, 'Lait corps éclaircissant', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'lait-corps-eclaircissant', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(96, 94, 1, 'Gommage et exfoliant corps', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'gommage-et-exfoliant-corps', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(97, 94, 1, 'Jambes lourds', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'jambes-lourds', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(98, 94, 1, 'Soins buste et seins', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-buste-et-seins', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(99, 94, 1, 'Accessoires manucure et pédicure', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'accessoires-manucure-et-pedicure', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(100, 94, 1, 'Articulations', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'articulations', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(101, 94, 1, 'Massage et détente', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'massage-et-detente', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(102, 0, 0, 'Dentaire', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'dentaire', NULL, NULL, '2023-09-02 11:17:40', '2023-08-18 21:30:30'),
(103, 102, 1, 'DENTIFRICES', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'dentifrices', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(104, 103, 1, 'Dentifrices Protection Caries', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'dentifrices-protection-caries', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(105, 103, 1, 'Dentifrices Gencives Sensibles', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'dentifrices-gencives-sensibles', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(106, 103, 1, 'Dentifrices Blanchissants', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'dentifrices-blanchissants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(107, 103, 1, 'Dentifrices Enfants', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'dentifrices-enfants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(108, 103, 1, 'Dentifrices Orthodontiques', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'dentifrices-orthodontiques', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(109, 102, 1, 'BROSSE À DENTS', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'brosse-a-dents', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(110, 109, 1, 'Brosses à Dents manuelles', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'brosses-a-dents-manuelles', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(111, 109, 1, 'Brosses à Dents Électriques', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'brosses-a-dents-electriques', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(112, 109, 1, 'Brosses à Dents Enfants', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'brosses-a-dents-enfants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(113, 109, 1, 'Brosses à Dents Spécialisées', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'brosses-a-dents-specialisees', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(114, 102, 1, 'Autres', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'N', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(115, 114, 1, 'Haleine fraîche', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'haleine-fraiche', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(116, 114, 1, 'Bain de bouche', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'bain-de-bouche', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(117, 114, 1, 'Soin gencive', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soin-gencive', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(118, 114, 1, 'Fils dentaires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'fils-dentaires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(119, 114, 1, 'Appareils dentaires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'appareils-dentaires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(120, 114, 1, 'Accessoires dentaires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'accessoires-dentaires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(121, 0, 0, 'Hygiène', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hygiene', NULL, NULL, '2023-09-02 11:17:44', '2023-08-18 21:30:30'),
(122, 120, 1, 'DOUCHE & BAIN', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'douche-bain', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(123, 121, 1, 'Gel douche / Savon liquide / Gommage', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'gel-douche-savon-liquide-gommage', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(124, 121, 1, 'Gel douche et savon peaux atopiques', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'gel-douche-et-savon-peaux-atopiques', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(125, 121, 1, 'Huiles lavantes', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'huiles-lavantes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(126, 121, 1, 'Savon et pain', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'savon-et-pain', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(127, 121, 1, 'Bain (moussant / huile / sels / soins', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'bain-moussant-huile-sels-soins', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(128, 120, 1, 'DÉODORANTS', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'deodorants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(129, 128, 1, 'Déodorants et Anti-transpirants', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'deodorants-et-anti-transpirants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(130, 129, 1, 'Déodorants fraicheur', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'deodorants-fraicheur', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(131, 129, 1, 'Stick / Spray / Roll-on', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'stick-spray-roll-on', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(132, 120, 1, 'NEZ ET OREILLES', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'nez-et-oreilles', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(133, 132, 1, 'Hygiène nasale', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hygiene-nasale', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(134, 132, 1, 'Nettoyage auriculaire', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'nettoyage-auriculaire', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(135, 132, 1, 'Protection auditive', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'protection-auditive', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(136, 132, 1, 'Sérum physiologique', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'serum-physiologique', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(137, 132, 1, 'Ronflement', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'ronflement', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(138, 121, 1, 'HYGIÈNE INTIME', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hygiene-intime', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(139, 138, 1, 'Toilette intime', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'toilette-intime', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(140, 138, 1, 'Lingettes Intimes', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'lingettes-intimes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(141, 138, 1, 'Tampons', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'tampons', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(142, 138, 1, 'Serviettes hygiéniques / Slips jetables', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'serviettes-hygieniques-slips-jetables', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(143, 138, 1, 'Soins intimes', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-intimes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(144, 138, 1, 'Protections incontinence et couches adultes', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'protections-incontinence-et-couches-adultes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(145, 120, 1, 'SEXUALITÉ', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'sexualite', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(146, 145, 1, 'Gel lubrifiants', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'gel-lubrifiants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(147, 145, 1, 'Tests de grocesse et d’ovulation', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'tests-de-grocesse-et-dovulation', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(148, 120, 1, 'Autres', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'N', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(149, 148, 1, 'Hammam & SPA', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hammam-spa', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(150, 148, 1, 'Spray & solutions antiseptiques', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'spray-solutions-antiseptiques', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(151, 0, 0, 'Solaire', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'solaire', NULL, NULL, '2023-09-02 11:17:46', '2023-08-18 21:30:30'),
(152, 151, 1, 'CRÈMES SOLAIRES', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'cremes-solaires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(153, 152, 1, 'Crème invisible', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'creme-invisible', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(154, 152, 1, 'Crème toucher sec', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'creme-toucher-sec', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(155, 152, 1, 'Crème toucher sec teintée', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'creme-toucher-sec-teintee', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(156, 152, 1, 'Crème teintée', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'creme-teintee', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(157, 152, 1, 'Crème fluide', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'creme-fluide', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(158, 152, 1, 'Lait et huiles solaires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'lait-et-huiles-solaires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(159, 152, 1, 'Crème fondante', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'creme-fondante', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(160, 152, 1, 'Brune et aerosol solaire', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'brune-et-aerosol-solaire', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(161, 0, 0, 'Bébé-Maman', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'bebe-maman', NULL, NULL, '2023-09-02 11:17:52', '2023-08-18 21:30:30'),
(162, 161, 1, 'HYGIÈNE BÉBÉ', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hygiene-bebe', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(163, 163, 1, 'Bain et toilette', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'bain-et-toilette', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(164, 163, 1, 'Lingettes Intimes', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'lingettes-intimes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(165, 163, 1, 'Couches bébé et Change', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'couches-bebe-et-change', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(166, 163, 1, 'Mouche bébé et hygiène nasale', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'mouche-bebe-et-hygiene-nasale', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(167, 161, 1, 'PUÉRICULTURE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'puericulture', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(168, 167, 1, 'Biberons et tasses', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'biberons-et-tasses', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(169, 167, 1, 'Tétines', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'tetines', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(170, 167, 1, 'Sucettes Attaches-sucettes', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'sucettes-attaches-sucettes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(171, 167, 1, 'Apprentissage repas', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'apprentissage-repas', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(172, 167, 1, 'Matériel', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'materiel', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(173, 0, 0, 'Santé', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'sante', NULL, NULL, '2023-09-02 11:17:56', '2023-08-18 21:30:30'),
(174, 173, 1, 'MATÉRIEL PARAMÉDICAL', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'materiel-paramedical', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(175, 174, 1, 'Thermomètre', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'thermometre', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(176, 174, 1, 'Tensiomètre', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'tensiometre', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(177, 174, 1, 'Lecteur de glycémie et bandettes', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'lecteur-de-glycemie-et-bandettes', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(178, 174, 1, 'Matériel consommable', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'materiel-consommable', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(179, 0, 0, 'Homme', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'homme', NULL, NULL, '2023-09-02 11:17:59', '2023-08-18 21:30:30'),
(180, 179, 1, 'RASAGE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'rasage', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(181, 180, 1, 'Mousses / Gels / Crèmes à raser', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'mousses-gels-cremes-a-raser', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(182, 180, 1, 'Après-rasage', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'apres-rasage', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(183, 180, 1, 'Barbe et moustache', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'barbe-et-moustache', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(184, 180, 1, 'Rasoirs', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'rasoirs', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(185, 180, 1, 'Accessoires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'accessoires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(186, 179, 1, 'SOINS', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(187, 186, 1, 'Soins Hydratants', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'soins-hydratants', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(188, 186, 1, 'Anti-age et Anti-fatigue', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'anti-age-et-anti-fatigue', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(189, 179, 1, 'Autres', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'N', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(190, 189, 1, 'Performance physique', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'performance-physique', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(191, 189, 1, 'Produit sexuel', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'produit-sexuel', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(192, 189, 1, 'Hygiène_', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'hygiene-homme-homme', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(193, 0, 0, 'Complément alimentaires', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'complement-alimentaires', NULL, NULL, '2023-09-02 11:18:02', '2023-08-18 21:30:30'),
(194, 193, 1, 'VITAMINES ET FORME', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'vitamines-et-forme', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(195, 194, 1, 'Comprimés et gélules', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'comprimes-et-gelules', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(196, 194, 1, 'Ampoules / Sirop / Jus / Pastilles', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'ampoules-sirop-jus-pastilles', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(197, 194, 1, 'Sachets et Poudre', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'sachets-et-poudre', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(198, 193, 1, 'Autres', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'N', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(199, 198, 1, 'COMPLÈMENTS ANTI-ÂGE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'complements-anti-age', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(200, 198, 1, 'COMPLÈMENTS CHEVEUX ET ONGLES', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'complements-cheveux-et-ongles', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(201, 198, 1, 'BIEN-ÊTRE, EQUILIBRE ÉMOTIONNEL, DÉPRIME', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'bien-etre-equilibre-emotionnel-deprime', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(202, 198, 1, 'TRANSIT / DIGESTION / ELIMINATION', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'transit-digestion-elimination', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(203, 198, 1, 'MÉNOPAUSE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'menopause', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(204, 198, 1, 'GYNÉCOLOGIE / TROUBLE URINAIRES', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'gynecologie-trouble-urinaires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(205, 198, 1, 'MÉMOIRE ET CONCENTRATION', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'memoire-et-concentration', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(206, 198, 1, 'CIRCULATION, COEUR', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'circulation-coeur', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(207, 198, 1, 'ARTICULATIONS ET GRAMPE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'articulations-et-grampe', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(208, 198, 1, 'SOMMEIL -DÉTENTE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'sommeil-detente', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(209, 198, 1, 'COMPLÈMENTS ALIMENTAIRES NATURELS', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'complements-alimentaires-naturels', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(210, 198, 1, 'COMPLÉMENTS ALIMENTAIRES ENFANT', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'complements-alimentaires-enfant', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(211, 198, 1, 'COMPLÈMENTS ALIMENTAIRES SÉNIOR', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'complements-alimentaires-senior', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(212, 198, 1, 'SPÉCIAL SPORT', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'special-sport', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(213, 198, 1, 'OPHTALMOLOGIE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'ophtalmologie', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(214, 198, 1, 'TROUBLES URINAIRES MASCULINS', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'troubles-urinaires-masculins', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(215, 198, 1, 'DÉFENSES IMMUNITAIRES', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'defenses-immunitaires', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(216, 198, 1, 'CONFISERIE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'confiserie', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(217, 0, 0, 'Parfumerie', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'parfumerie', NULL, NULL, '2023-09-02 11:18:04', '2023-08-18 21:30:30'),
(218, 217, 1, 'MAQUILLAGE', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'maquillage', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(219, 218, 1, 'Rouge à lèvres / Gloss / Repulpant', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'rouge-a-levres-gloss-repulpant', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(220, 218, 1, 'Mascara', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'mascara', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(221, 218, 1, 'Crayon à yeux / Eye Liner', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'crayon-a-yeux-eye-liner', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(222, 218, 1, 'Crayon sourcils', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'crayon-sourcils', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(223, 218, 1, 'Fard à paupières', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'fard-a-paupieres', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(224, 218, 1, 'Fond de teint fluide', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'fond-de-teint-fluide', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(225, 218, 1, 'Poudre teint', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'poudre-teint', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(226, 218, 1, 'Correcteurs de teint', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'correcteurs-de-teint', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(227, 218, 1, 'Accessoires Maquillage', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'accessoires-maquillage', NULL, NULL, '2023-08-18 21:30:30', '2023-08-18 21:30:30'),
(228, 0, 0, 'Bons plans', 0, 0.00, NULL, NULL, NULL, 0, 0, 0, 'bons-plans', NULL, NULL, '2023-09-02 11:18:07', '2023-08-18 21:30:30');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
