-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 09 mai 2023 à 22:12
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `clubs`
--

-- --------------------------------------------------------

--
-- Structure de la table `clubs_club_list`
--

CREATE TABLE `clubs_club_list` (
  `id` int(11) NOT NULL,
  `num_tab` int(11) NOT NULL,
  `club_nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_members_nb` int(11) NOT NULL,
  `club_institut` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_activity_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_rep_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_rep_email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `club_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clubs_club_list`
--

INSERT INTO `clubs_club_list` (`id`, `num_tab`, `club_nom`, `club_members_nb`, `club_institut`, `club_activity_type`, `club_rep_name`, `club_rep_email`, `club_img`, `created_at`, `club_description`) VALUES
(23, 1, 'IEEE ISSATSO', 100, 'Issat Sousse', 'Ingénierie en inform', 'Rama hermi', 'hermi.rama94@ieee.org', 'assets/images/64579ad71aa4b.jpg', '2023-05-07 14:34:31', 'Best club ever IEEE is the world’s largest technical professional organization dedicated to advancing technology for the benefit of humanity. IEEE and its members inspire a global community through its highly cited publications, conferences, technology st'),
(24, 1, 'Nateg', 70, 'Issat Sousse', 'Ingénierie en inform', 'AHmed zaghdoudi', 'ahmed@ahmed.com', 'assets/images/64579b3cc3ae7.jpg', '2023-05-07 14:36:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat'),
(25, 1, 'Cyber Trace', 20, 'Issat Sousse', 'Ingénierie en inform', 'ahlma deroiuch', 'alma@alma.com', 'assets/images/64579b81a6286.png', '2023-05-07 14:37:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat'),
(26, 1, 'Microsoft', 40, 'Issat Sousse', 'Ingénierie en inform', 'Selma nefzi', 'salma@salma.com', 'assets/images/64579bb215cb8.jpg', '2023-05-07 14:38:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat'),
(27, 1, 'Panoramix', 15, 'Issat Sousse', 'Ingénierie en inform', 'nour hermi', 'email@email.com', 'assets/images/64579bec712ee.jpg', '2023-05-07 14:39:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat'),
(28, 1, 'GDG-ISSATSO', 60, 'Issat Sousse', 'Ingénierie en inform', 'Salim Latrech', 'email@email.com', 'assets/images/64579c40e77c7.jpg', '2023-05-07 14:40:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat');

-- --------------------------------------------------------

--
-- Structure de la table `clubs_evenements`
--

CREATE TABLE `clubs_evenements` (
  `id` int(11) NOT NULL,
  `tab_num` int(11) NOT NULL,
  `evenement_nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evenement_club_nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evenement_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evenement_date` date NOT NULL,
  `evenement_lieu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evenement_lien` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evenement_prix` double DEFAULT NULL,
  `evenement_image` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `clb_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clubs_evenements`
--

INSERT INTO `clubs_evenements` (`id`, `tab_num`, `evenement_nom`, `evenement_club_nom`, `evenement_type`, `evenement_date`, `evenement_lieu`, `evenement_lien`, `evenement_prix`, `evenement_image`, `created_at`, `clb_id_id`) VALUES
(3, 2, 'Devzest', 'IEEE ISSATSO', 'technique', '2018-01-01', 'ISSAT', 'https://www.facebook', 15, 'assets/images/645a47a51880d.jpg', '2023-05-09 15:16:20', 23),
(4, 2, 'SOS Akouda', 'IEEE ISSATSO', 'humanitaire', '2020-01-01', 'sos akouda', 'https//link', 30, 'assets/images/645a5bd282786.jpg', '2023-05-09 16:34:18', 23),
(5, 2, 'Pydata', 'GDG-ISSATSO', 'technique', '2023-01-01', 'Issat sousse', 'https//sfcklf', 10, 'assets/images/645a98688b414.jpg', '2023-05-09 21:00:56', 28),
(6, 2, 'Talent', 'IEEE ISSATSO', 'technique', '2023-01-18', 'STIP', 'https//dgdv', 20, 'assets/images/645a98c34f3ad.jpg', '2023-05-09 21:02:27', 23);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230425010004', '2023-04-25 03:52:22', 9598);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clubs_club_list`
--
ALTER TABLE `clubs_club_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clubs_evenements`
--
ALTER TABLE `clubs_evenements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4188EA8A5C34929F` (`clb_id_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clubs_club_list`
--
ALTER TABLE `clubs_club_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `clubs_evenements`
--
ALTER TABLE `clubs_evenements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `clubs_evenements`
--
ALTER TABLE `clubs_evenements`
  ADD CONSTRAINT `FK_4188EA8A5C34929F` FOREIGN KEY (`clb_id_id`) REFERENCES `clubs_club_list` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
