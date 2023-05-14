-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 09:21 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniprojet`
--

-- --------------------------------------------------------

--
-- Table structure for table `courstd`
--

CREATE TABLE `courstd` (
  `id` int(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `matiere` varchar(30) NOT NULL,
  `anesem` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courstd`
--

INSERT INTO `courstd` (`id`, `nom`, `matiere`, `anesem`, `type`) VALUES
(9459, 'JMS_Cours.pdf', 'Développement avancé', 'FIA2-1', 'cours'),
(9460, 'ED_Introduction.pdf', 'Entrepôts de données', 'FIA2-2', 'cours'),
(9461, 'TD1-2023.pdf', 'Entrepôts de données', 'FIA2-2', 'td'),
(9462, 'TP-3-les-JavaBeans.pdf', 'Développement avancé', 'FIA2-1', 'td'),
(9463, 'TP-2-JSPs.pdf', 'Développement avancé', 'FIA2-1', 'cours'),
(9464, '45-aop-programming.ppt', 'Entrepôts de données', 'FIA2-2', 'cours'),
(9465, 'JMS_Cours.pdf', 'Electronique Analogique', 'prepa1-2', 'cours'),
(9466, 'EJB.pptx', 'Développement avancé', 'FIA2-1', 'td'),
(9467, 'Main.java', 'Electronique Analogique', 'prepa1-2', 'td'),
(9468, 'TD1-2023.pdf', 'Théorie des langages et compil', 'FIA1-2', 'td'),
(9469, 'Minimalist-Beige-Cream-Brand-P', 'analyse', 'prepa1-1', 'cours'),
(9470, 'Projet3 (1).mpp', 'analyse', 'prepa1-1', 'td'),
(9471, 'Add_Vect_CUDA.cu', 'analyse', 'prepa1-1', 'cours'),
(9472, 'AAP_TP1_Corr.pdf', 'Algèbre', 'prepa1-1', 'autre'),
(9473, 'TP2-Trello.pdf', 'Algèbre', 'prepa1-1', 'td'),
(9474, 'TP1_Github_with_Part2.pdf', 'Electrocinétique', 'prepa1-1', 'td'),
(9475, 'Minimalist-Beige-Cream-Brand-P', 'Electrocinétique', 'prepa1-1', 'cours'),
(9476, 'AAP tp.txt', 'Electronique Analogique', 'prepa1-2', 'td'),
(9477, 'AAP tp.txt', 'Electromagnétisme', 'prepa1-2', 'cours'),
(9478, 'Projetex3.mpp', 'Electromagnétisme', 'prepa1-2', 'td'),
(9479, 'MVC15.pdf', 'Développement avancé', 'FIA2-1', 'cours'),
(9480, 'TP-2-JSPs.pdf', 'Développement avancé', 'FIA2-1', 'td'),
(9481, 'JMS_Cours.pdf', 'Développement avancé', 'FIA2-1', 'cours'),
(9482, 'Servlets22.pptx', 'Développement avancé', 'FIA2-1', 'cours'),
(9483, 'difference.pdf', 'Développement web', 'FIA2-1', 'cours'),
(9484, 'html-css.pdf', 'Développement web', 'FIA2-1', 'cours'),
(9485, 'js.pdf', 'Développement web', 'FIA2-1', 'cours'),
(9486, 'bibli.txt', 'Développement web', 'FIA2-1', 'td'),
(9487, 'ex1_a.txt', 'Développement web', 'FIA2-1', 'td'),
(9488, 'ex1_a.txt', 'Web2.0 et Web3.0', 'FIA2-2', 'td');

-- --------------------------------------------------------

--
-- Table structure for table `filcourses`
--

CREATE TABLE `filcourses` (
  `id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `filiere` text NOT NULL,
  `succ` varchar(50) NOT NULL,
  `prec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filcourses`
--

INSERT INTO `filcourses` (`id`, `num`, `filiere`, `succ`, `prec`) VALUES
(1, 1, 'Cycle préparatoire integré', '2', 0),
(2, 2, 'A1-Cycle Préparatoire-Scientifique-Informatique [Intégré]', '2', 1),
(3, 3, '1er semestre', 'prepa1-1', 2),
(4, 13, '2eme semestre', 'prepa1-2', 2),
(5, 22, 'A2-Cycle Préparatoire-Scientifique-Informatique [Intégré]', '2', 1),
(6, 23, '1er semestre', 'prepa2-1', 22),
(7, 24, '2eme semestre', 'prepa2-2', 22),
(8, 42, 'Formation d\'ingénieur', '4', 0),
(9, 43, 'A1-DNI-Informatique-Tronc Commun [DNI: Diplôme National d\'Ingénieur] [FI: Formation d\'Ingénieurs]', '9', 42),
(10, 44, '1er semestre', 'FIA1-1', 43),
(11, 54, '2eme semestre', 'FIA1-2', 43),
(12, 64, 'A2-DNI-Informatique-Génie Logiciel [DNI: Diplôme National d\'Ingénieur] [FI: Formation d\'Ingénieurs]', '2', 42),
(13, 65, '1er semestre', 'FIA2-1', 64),
(14, 76, '2eme semestre', 'FIA2-2', 64),
(15, 87, 'A3-DNI-Informatique-Génie Logiciel', '1', 42),
(16, 88, '1er semestre', 'FIA3-1', 87);

-- --------------------------------------------------------

--
-- Table structure for table `homef`
--

CREATE TABLE `homef` (
  `num` int(11) NOT NULL,
  `filiere` varchar(100) NOT NULL,
  `succ` int(11) NOT NULL,
  `prec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homef`
--

INSERT INTO `homef` (`num`, `filiere`, `succ`, `prec`) VALUES
(0, 'fili?re', 0, 0),
(2, 'A1-Cycle Préparatoire-Scientifique-Informatique [Intégré]', 2, 1),
(4, 'Analyse', 0, 3),
(5, 'Algèbre', 0, 3),
(6, 'Electrostatique-Magnétostatique', 0, 3),
(7, 'Electrocinétique', 0, 3),
(8, 'Optique', 0, 3),
(9, 'Algorithme et structures de données', 0, 3),
(10, 'Programmation C', 0, 3),
(11, 'C2I', 0, 3),
(12, 'Introduction à la gestion', 0, 3),
(13, '2eme semestre', 8, 2),
(14, 'Analyse ', 0, 13),
(15, 'Algèbre', 0, 13),
(16, 'Electromagnétisme', 0, 13),
(17, 'Algorithme et structures de données', 0, 13),
(18, 'Programmation C', 0, 13),
(19, 'Electronique Analogique', 0, 13),
(20, 'Electronique Numérique', 0, 13),
(21, 'C2I', 0, 13),
(22, 'A2-Cycle Préparatoire-Scientifique-Informatique [Intégré]', 2, 1),
(23, '1er semestre', 8, 22),
(24, 'Mathématiques de signal', 0, 23),
(25, 'Probabilités et statistiques', 0, 23),
(26, 'Architectures des ordinateurs', 0, 23),
(27, 'Techniques de transmission', 0, 23),
(28, 'Programmation orientée objet', 0, 23),
(29, 'Systèmes d\'exploitation: Windows', 0, 23),
(30, 'Bases de données', 0, 23),
(31, 'Culture d\'entreprise', 0, 23),
(32, '2eme semestre', 9, 22),
(33, 'Programmation Mathématique', 0, 32),
(34, 'Analyse numérique', 0, 32),
(35, 'Architectures des ordinateurs', 0, 32),
(36, 'Programmation orientée objet', 0, 32),
(37, 'Système d\'exploitation: Linux', 0, 32),
(38, 'Réseaux informatiques', 0, 32),
(39, 'Conception des systèmes informatiques', 0, 32),
(40, 'Développement Web', 0, 32),
(41, 'Droits de l\'homme', 0, 32),
(42, 'Formation d\'ingénieur', 4, 0),
(43, 'A1-DNI-Informatique-Tronc Commun [DNI: Diplôme National d\'Ingénieur] [FI: Formation d\'Ingénieurs]', 9, 6),
(44, '1er semestre', 11, 43),
(45, 'Mathématiques discrètes', 0, 22),
(46, 'ProbabiIité et Statistiques', 0, 22),
(47, 'Transmission de données', 0, 22),
(48, 'Paradigmes de programmation', 0, 22),
(49, 'Algorithmique et structures de données', 0, 22),
(50, 'Bases de données', 0, 22),
(51, 'Architectures des ordinateurs', 0, 22),
(52, 'Fondements des systèmes d\'exploitation', 0, 22),
(53, 'Création d\'entreprises et innovation', 0, 22),
(54, '2eme semestre', 9, 43),
(55, 'Mathématiques pour l\'Ingénieur', 0, 54),
(56, 'Internet et Protocoles', 0, 54),
(57, 'Théorie des langages et compilation', 0, 54),
(58, 'Systèmes d\'exploitation embarqués et temps réel', 0, 54),
(59, 'Réseaux Informatiques', 0, 54),
(60, 'Programmation O O', 0, 54),
(61, 'Méthodologies d\'analyse et de conception de logiciels (MOO, Design patterns, …)', 0, 54),
(62, 'Graphe et Recherche Opérationnelle', 0, 54),
(63, 'Comptabilité général', 0, 54),
(64, 'A2-DNI-Informatique-Génie Logiciel [DNI: Diplôme National d\'Ingénieur] [FI: Formation d\'Ingénieurs]', 2, 42),
(65, '1er semestre', 10, 64),
(66, 'Théorie des Files d\'attente', 0, 65),
(67, 'Analyse Numérique', 0, 65),
(68, 'IHM', 0, 65),
(69, 'Développement Avancée(orienté composants, orienté services, orienté aspect)', 0, 65),
(70, 'Développement Web', 0, 65),
(71, 'SGBD et administration', 0, 65),
(72, 'Middlewares et Intégration d\'Application', 0, 65),
(73, 'Administration des réseaux', 0, 65),
(74, 'Sécurité des réseaux', 0, 65),
(75, 'Comptabilité Analytique', 0, 65),
(76, '2eme semestre', 10, 64),
(77, 'Bases de données avancées', 0, 76),
(78, 'Entrepôts de données', 0, 76),
(79, 'Commerce électronique', 0, 76),
(80, 'Développement de portail et d\'outils de travail collaboratifs', 0, 76),
(81, 'Algorithmique et architectures parallèles', 0, 76),
(82, 'Outils et Atelier Avancé de Génie Logiciel', 0, 76),
(83, 'Sécurité des logiciels et des systèmes d\'information', 0, 76),
(84, 'Qualité, Audit, Gestion des Projets', 0, 76),
(85, 'Web2.0 et Web3.0', 0, 76),
(86, 'Architectures logicielles et principes de conception', 0, 76),
(88, '1er semestre', 11, 87),
(89, 'Réseaux de nouvelles générations', 0, 88),
(90, 'Virtualisation des services et cloud computing', 0, 88),
(91, 'Intelligence Artificielle', 0, 88),
(92, 'Vision par ordinateur', 0, 88),
(93, 'Veille technologique', 0, 88),
(94, 'Systèmes mobiles et développement de code mobile et embarqué', 0, 88),
(95, 'Environnement de développement (.net)', 0, 88),
(96, 'Marketing Industriel', 0, 88),
(97, 'Big data', 0, 88),
(98, 'Ingénierie dirigée par les modèles', 0, 88),
(99, 'Initiation à la data science', 0, 88),
(101, '1ère Année', 7, 100),
(102, 'A1-Licence en EEA-Tronc Commun [EEA: Electronique Electrotechnique et Automatique] (LEEA-A1)', 2, 101),
(103, '1er Semestre', 8, 102),
(104, 'Analyse 1', 0, 103),
(105, 'Algèbre 1', 0, 103),
(106, 'Electrostatique et magnétostatique', 0, 103),
(107, 'Mécanique', 0, 103),
(108, 'Systèmes d\'exploitation', 0, 103),
(109, 'Algorithmes et Programmation', 0, 103),
(110, 'Electronique Numérique', 0, 103),
(111, 'Circuits Electriques', 0, 103),
(112, 'Semestre 2', 8, 102),
(113, 'Thermodynamique', 0, 112),
(114, 'Algèbre 2', 0, 112),
(115, 'Bases de données', 0, 112),
(116, 'Analyse2', 0, 112),
(117, 'Electronique Analogique', 0, 112),
(118, 'Programmation avancée', 0, 112),
(119, 'Électromagnétisme', 0, 112),
(120, 'Fonctions d’électronique numérique', 0, 112),
(121, 'A1-Licence en Electro-Mécanique-Tronc Commun', 2, 6),
(122, '1er semestre', 8, 121),
(123, 'Analyse ', 0, 122),
(124, 'Algèbre 1', 0, 122),
(125, 'Circuits Electriques', 0, 122),
(126, 'Electronique Appliquée', 0, 122),
(127, 'Algorithmique et programmation', 0, 122),
(128, 'Initiation à la programmation', 0, 122),
(129, 'Outils de communication graphiques', 0, 122),
(130, 'Technologie de Construction', 0, 122),
(131, '2ème Semestre', 8, 121),
(132, 'Technologie des Système Automatisés', 0, 131),
(133, 'Algèbre 2', 0, 131),
(134, 'Initiation aux mécanismes', 0, 131),
(135, 'Matériaux Métalliques', 0, 131),
(136, 'Statique', 0, 131),
(137, 'Analyse 2', 0, 131),
(138, 'CINEMATIQUE DES SOLIDES', 0, 131),
(139, 'Polymères et composites', 0, 131),
(140, 'A1-Licence en Génie Civil-Tronc Commun', 2, 6),
(141, '1er semestre', 8, 140),
(142, 'Analyse ', 0, 141),
(143, 'Algebre ', 0, 141),
(144, 'Electro-magnétostatique et optique', 0, 141),
(145, 'Algorithmes et Programmation', 0, 141),
(146, 'Mécanique générale', 0, 141),
(147, 'Mécanique des fluides', 0, 141),
(148, 'Topographie et cartographie', 0, 141),
(149, 'Culture et compétences numériques', 0, 141),
(150, '2eme semestre ', 10, 140),
(151, 'Dessin & Architecture et urbanisme', 0, 150),
(152, 'Analyse ', 0, 150),
(153, 'Algebre ', 0, 150),
(154, 'Thermodynamique', 0, 150),
(155, 'Chimie', 0, 150),
(156, 'Physique du bâtiment', 0, 150),
(157, 'Gestion de l\'entreprise', 0, 150),
(158, 'Résistance des matériaux', 0, 150),
(159, 'Matériaux de construction', 0, 150),
(160, 'Dessin & Architecture et urbanisme', 0, 150),
(161, 'A1-Licence en Genie Energétique-Froid et Climatisation', 2, 6),
(162, '1er semestre', 12, 161),
(163, 'Analyse 1', 0, 162),
(164, 'Algèbre 1', 0, 162),
(165, 'Electrostatique & Magnétostatique', 0, 162),
(166, 'Introduction à la thermodynamique', 0, 162),
(167, 'Conduction & Convection', 0, 162),
(168, 'Atelier de Programmation', 0, 162),
(169, 'Outils numériques', 0, 162),
(170, 'Ressources énergétiques', 0, 162),
(171, 'Outil de calcul en énergétique', 0, 162),
(172, 'Lecture des plans', 0, 162),
(173, 'Technique de communication', 0, 162),
(174, 'Culture et Compétences numérique', 0, 162),
(175, '2ème Semestre', 9, 161),
(176, 'Algèbre 2', 0, 175),
(177, 'Analyse Fonctionnelle', 0, 175),
(178, 'Dessin technique', 0, 175),
(179, 'Analyse 2', 0, 175),
(180, 'Thermodynamique appliquée', 0, 175),
(181, 'Statique & cinématique des fluides', 0, 175),
(182, 'Technologies de Doudure', 0, 175),
(183, 'Polimberie sanitaire', 0, 175),
(184, 'Soft skills', 0, 175),
(185, 'A1-Licence en Génie Mécanique-Tronc Commun', 2, 6),
(186, '1er semestre', 9, 185),
(187, 'Mécanique ', 0, 186),
(188, 'Conception', 0, 186),
(189, 'Procédés ', 0, 186),
(190, 'Sciences des matériaux ', 0, 186),
(191, 'Electronique', 0, 186),
(192, 'Electrotechnique', 0, 186),
(193, 'Analyse ', 0, 186),
(194, 'Algèbre ', 0, 186),
(195, 'Culture et Compétences Numériques', 0, 186),
(196, '2eme semestre', 9, 185),
(197, 'Mécanique ', 0, 196),
(198, 'Culture et Compétences Numériques', 0, 196),
(199, 'Circuits et schémas électriques', 0, 196),
(200, 'Conception', 0, 196),
(201, 'Algorithmique et Programmation', 0, 196),
(202, 'Science des matériaux ', 0, 196),
(203, 'Procédés', 0, 196),
(204, 'Analyse', 0, 196),
(205, 'Algèbre ', 0, 196),
(206, 'A1-Licence en Ingénièrie des Systèmes de l\'Informatique-Systèmes Embarqués et internet des objets', 2, 6),
(207, '1er semestre', 8, 206),
(208, 'Algèbre 1', 0, 207),
(209, 'Analyse 1', 0, 207),
(210, 'Electricité - Electronique', 0, 207),
(211, 'Propagation et rayonnement', 0, 207),
(212, 'Système d\'exploitation 1', 0, 207),
(213, 'Systèmes logiques', 0, 207),
(214, 'Algorithmique et structure des données', 0, 207),
(215, 'Atelier Programmation', 0, 207),
(216, '2ème Semestre', 9, 206),
(217, 'Algèbre 2', 0, 216),
(218, 'Fonctions Electronique', 0, 216),
(219, 'Atelier Programmation', 0, 216),
(220, 'Initiation au traitement du signal', 0, 216),
(221, 'Transmission de données', 0, 216),
(222, 'Systèmes d’exploitation 2', 0, 216),
(223, 'Architecture des ordinateurs', 0, 216),
(224, 'Analyse 2', 0, 216),
(225, 'Algorithmique, Structure des données et Complexité', 0, 216),
(226, 'A1-Licence en Sciences de l\'Informatique-Génie Logiciel et Systèmes d\'information', 2, 6),
(227, '1er semestre', 8, 226),
(228, 'Algèbre 1', 0, 227),
(229, 'Analyse 1', 0, 227),
(230, 'Algorithmique et structure de données', 0, 227),
(231, 'Atelier de programmation', 0, 227),
(232, 'Système d\'exploitation 1', 0, 227),
(233, 'Systèmes logiques et Architecture des ordinateurs', 0, 227),
(234, 'Logique formelle', 0, 227),
(235, 'Technologies Multimédias', 0, 227),
(236, 'Semestre 2', 8, 226),
(237, 'Programmation Python', 0, 236),
(238, 'Système d\'exploitation', 0, 236),
(239, 'Fondements des bases de données', 0, 236),
(240, 'Atelier de programmation', 0, 236),
(241, 'Algèbre 2', 0, 236),
(242, 'Algorithmique, structures de données et complexité', 0, 236),
(243, 'Fondements des réseaux', 0, 236),
(244, 'Analyse 2', 0, 236),
(245, '2ème Année', 12, 100),
(246, 'A2-Licence en EEA-Automatique et Informatique Industrielles [EEA: Electronique Electrotechnique et A', 0, 0),
(247, 'A2-Licence en EEA-Electronique Industrielle [EEA: Electronique Electrotechnique et Automatique]', 0, 0),
(248, 'A2-Licence en EEA-Systèmes Embarqués [EEA: Electronique Electrotechnique et Automatique]', 0, 0),
(249, 'A2-Licence en Electro-Mécanique-Mécatronique Automobile', 0, 0),
(250, 'A2-Licence en Electro-Mécanique-Mécatronique Industrielle', 0, 0),
(251, 'A2-Licence en Génie Civil-Bâtiments', 0, 0),
(252, 'A2-Licence en Génie Civil-Ponts et chaussées', 0, 0),
(253, 'A2-Licence en Genie Energétique-Froid et Climatisation', 0, 0),
(254, 'A2-Licence en Génie Mécanique-Conception et Production integrées', 0, 0),
(255, 'A2-Licence en Génie Mécanique-Productique', 0, 0),
(256, 'A2-Licence en Ingénièrie des Systèmes de l\'Informatique-Systèmes Embarqués et internet des objets', 0, 0),
(257, 'A2-Licence en Sciences de l\'Informatique-Génie Logiciel et Systèmes d\'information', 0, 0),
(258, '3ème Année', 11, 100),
(259, 'A3-Licence en EEA-Automatique et Informatique Industrielles [EEA: Electronique Electrotechnique et A', 0, 0),
(260, 'A3-Licence en EEA-Electronique Industrielle [EEA: Electronique Electrotechnique et Automatique]', 0, 0),
(261, 'A3-Licence en Electro-Mécanique-Mécatronique Automobile', 0, 0),
(262, 'A3-Licence en Electro-Mécanique-Mécatronique Industrielle', 0, 0),
(263, 'A3-Licence en Génie Civil-Bâtiments', 0, 0),
(264, 'A3-Licence en Génie Civil-Ponts et chaussées', 0, 0),
(265, 'A3-Licence en Genie Energétique-Froid et Climatisation', 0, 0),
(266, 'A3-Licence en Génie Mécanique-Conception et Production intégrées', 0, 0),
(267, 'A3-Licence en Génie Mécanique-Productique', 0, 0),
(268, 'A3-Licence en Ingénièrie des Systèmes de l\'Informatique-Systèmes Embarqués et internet des objets', 0, 0),
(269, 'A3-Licence en Sciences de l\'Informatique-Génie Logiciel et Systèmes d\'information', 0, 0),
(270, 'Masters professionnels', 2, 0),
(271, '1ère Année', 2, 82),
(272, 'A1-Mastère Professionnel en Energétique-Maîtrise et Exploitation Rationnelle de l’Energie', 0, 0),
(273, 'A1-Mastère Professionnel en Génie Mécanique-Tronc Commun', 0, 0),
(274, '2ème Année', 4, 82),
(275, 'A2-Mastère Professionnel en Efficacité Energétique dans les Bâtiments-Efficacité Energétique dans le', 0, 0),
(276, 'A2-Mastère Professionnel en Energétique-Maîtrise et Exploitation Rationnelle de l’Energie', 0, 0),
(277, 'A2-Mastère Professionel en Génie Mécanique-Génie des Procédés de Production Mécanique', 0, 0),
(278, 'A2-Mastère Professionel en Génie Mécanique-Productique', 0, 0),
(279, 'Masters de recherche', 2, 0),
(281, 'A1-Mastère Recherche en Génie Mécanique-Tronc Commun', 0, 0),
(282, 'A1-Mastère Recherche-Systèmes pérvasifs intellegents-Systèmes Pérvasifs Intelligents [INFO: Informat', 0, 0),
(283, 'A1-Mastère Recherche-Microsystèmes et Système Electroniques Embarquées-Tronc Commun', 0, 0),
(284, '2ème Année', 6, 99),
(285, 'A2-Mastère Recherche en Génie Mécanique-Mécanique des Matériaux', 0, 0),
(286, 'A2-Mastère Recherche en Génie Mécanique-Systèmes Mécaniques', 0, 0),
(287, 'A2-Mastère Recherche-Systèmes pèrvasifs intellegents-Systèmes Pervasifs Intelligents [INFO: Informat', 0, 0),
(288, 'A2-Mastère Recherche-Microsystèmes et Système Electroniques Embarquées-Systèmes Electroniques Embarq', 0, 0),
(289, 'A2-Mastère Recherche-Microsystèmes et Système Electroniques Embarquées-Microsystèmes Electroniques', 0, 0),
(290, 'A2-Mastère Recherche-Microsystèmes et Système Electroniques Embarquées-Mobilité Durable et Energies ', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `ansem` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matiere`
--

INSERT INTO `matiere` (`id`, `nom`, `ansem`) VALUES
(1, 'analyse', 'prepa1-1'),
(2, 'Algèbre', 'prepa1-1'),
(3, 'Electrocinétique', 'prepa1-1'),
(4, 'Electronique Analogique', 'prepa1-2'),
(5, 'Electromagnétisme', 'prepa1-2'),
(6, 'Programmation orientée objet', 'prepa2-1'),
(7, 'Mathématiques de signal', 'prepa2-1'),
(8, 'Réseaux informatiques', 'prepa2-2'),
(9, 'Analyse numérique', 'prepa2-2'),
(10, 'Mathématiques discrètes', 'FIA1-1'),
(11, 'Paradigmes de programmation', 'FIA1-1'),
(12, 'Internet et Protocoles', 'FIA1-2'),
(13, 'Théorie des langages et compil', 'FIA1-2'),
(14, 'Développement avancé', 'FIA2-1'),
(15, 'Développement web', 'FIA2-1'),
(16, 'Intelligence Artificielle', 'FIA3-1'),
(17, 'Entrepôts de données', 'FIA2-2'),
(18, 'Web2.0 et Web3.0', 'FIA2-2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courstd`
--
ALTER TABLE `courstd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filcourses`
--
ALTER TABLE `filcourses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homef`
--
ALTER TABLE `homef`
  ADD PRIMARY KEY (`num`),
  ADD UNIQUE KEY `num` (`num`);

--
-- Indexes for table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courstd`
--
ALTER TABLE `courstd`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9489;

--
-- AUTO_INCREMENT for table `filcourses`
--
ALTER TABLE `filcourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `filcourses`
--
ALTER TABLE `filcourses`
  ADD CONSTRAINT `FKcollapse` FOREIGN KEY (`prec`) REFERENCES `filcourses` (`num`);

--
-- Constraints for table `homef`
--
ALTER TABLE `homef`
  ADD CONSTRAINT `collapsFK` FOREIGN KEY (`succ`) REFERENCES `homef` (`num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
