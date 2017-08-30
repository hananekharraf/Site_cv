-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 30 Août 2017 à 09:35
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `microcms`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_article`
--

CREATE TABLE `t_article` (
  `art_id` int(11) NOT NULL,
  `art_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `art_content` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_article`
--

INSERT INTO `t_article` (`art_id`, `art_title`, `art_content`) VALUES
(1, 'First article', 'Hi there! This is the very first article.'),
(2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut hendrerit mauris ac porttitor accumsan. Nunc vitae pulvinar odio, auctor interdum dolor. Aenean sodales dui quis metus iaculis, hendrerit vulputate lorem vestibulum. Suspendisse pulvinar, purus at euismod semper, nulla orci pulvinar massa, ac placerat nisi urna eu tellus. Fusce dapibus rutrum diam et dictum. Sed tellus ipsum, ullamcorper at consectetur vitae, gravida vel sem. Vestibulum pellentesque tortor et elit posuere vulputate. Sed et volutpat nunc. Praesent nec accumsan nisi, in hendrerit nibh. In ipsum mi, fermentum et eleifend eget, eleifend vitae libero. Phasellus in magna tempor diam consequat posuere eu eget urna. Fusce varius nulla dolor, vel semper dui accumsan vitae. Sed eget risus neque.'),
(3, 'Lorem ipsum in french', 'J’en dis autant de ceux qui, par mollesse d’esprit, c’est-à-dire par la crainte de la peine et de la douleur, manquent aux devoirs de la vie. Et il est très facile de rendre raison de ce que j’avance. Car, lorsque nous sommes tout à fait libres, et que rien ne nous empêche de faire ce qui peut nous donner le plus de plaisir, nous pouvons nous livrer entièrement à la volupté et chasser toute sorte de douleur ; mais, dans les temps destinés aux devoirs de la société ou à la nécessité des affaires, souvent il faut faire divorce avec la volupté, et ne se point refuser à la peine. La règle que suit en cela un homme sage, c’est de renoncer à de légères voluptés pour en avoir de plus grandes, et de savoir supporter des douleurs légères pour en éviter de plus fâcheuses.'),
(4, 'je suis un article', 'zgefoapfanfkjabidhab ljaendkjabkjab aldnakjek aodnkj');

-- --------------------------------------------------------

--
-- Structure de la table `t_comment`
--

CREATE TABLE `t_comment` (
  `com_id` int(11) NOT NULL,
  `com_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `art_id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_comment`
--

INSERT INTO `t_comment` (`com_id`, `com_content`, `art_id`, `usr_id`) VALUES
(1, 'kdhgierhuginsiurnijrg', 3, 6);

-- --------------------------------------------------------

--
-- Structure de la table `t_competences`
--

CREATE TABLE `t_competences` (
  `comp_id` int(11) NOT NULL,
  `comp_nom` varchar(255) NOT NULL,
  `comp_valeur` varchar(255) NOT NULL,
  `comp_logo` varchar(255) NOT NULL,
  `comp_categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_competences`
--

INSERT INTO `t_competences` (`comp_id`, `comp_nom`, `comp_valeur`, `comp_logo`, `comp_categorie`) VALUES
(1, 'html 5', '90%', 'fa-html5', 'front'),
(3, 'php', '40%', 'images/php-logo.png', 'back'),
(4, 'Wordpress', '55%', 'fa-wordpress', 'numerique/web'),
(5, 'css3', '80%', 'web/images/css3_logo.jpg', 'front'),
(6, 'javascript', '20%', 'images/web/jquery.png', 'front'),
(7, 'jQuery', '30%', 'images/web/javascript.png', 'front'),
(9, 'sql', '50%', 'fa-html5', 'back'),
(11, 'ajax', '20%', 'fa-html5', 'back'),
(12, 'github', '30%', 'fa-html5', 'numerique/web'),
(13, 'photoshop', '40%', 'fa-html5', 'numerique/web'),
(14, 'bootstrap', '50%', 'fa-html5', 'front');

-- --------------------------------------------------------

--
-- Structure de la table `t_contact`
--

CREATE TABLE `t_contact` (
  `cont_id` int(11) NOT NULL,
  `cont_nom` varchar(255) NOT NULL,
  `cont_email` varchar(255) NOT NULL,
  `cont_telephonne` varchar(255) NOT NULL,
  `cont_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_experience`
--

CREATE TABLE `t_experience` (
  `xp_id` int(11) NOT NULL,
  `xp_contrat` varchar(255) NOT NULL,
  `xp_debut` date NOT NULL,
  `xp_fin` date NOT NULL,
  `xp_descriptif` varchar(255) NOT NULL,
  `xp_poste` varchar(255) NOT NULL,
  `xp_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_experience`
--

INSERT INTO `t_experience` (`xp_id`, `xp_contrat`, `xp_debut`, `xp_fin`, `xp_descriptif`, `xp_poste`, `xp_img`) VALUES
(7, 'CDI', '2017-02-20', '2017-12-19', 'Projet site CV avec espace admin :\r\n\r\nbase de données / back-office(Silex/Twig) / front-end(html/css/boostrap/js/)', 'Intégrateur & développeur Web', 'images/portfolio/lepoles.jpg'),
(8, 'CDI', '2009-12-01', '2014-09-13', 'Réception et enregistrement des commandes, Stockage des articles en provenance des fournisseurs, Préparation et expédition des produits finis aux clients.', 'AGENT LOGISTIQUE', 'images/portfolio/BIGUINE.PNG'),
(9, 'CDI', '2005-10-15', '2008-07-31', 'La frappe et la mise en forme de courrier préétablis ainsi que le suivi des Dossiers administratifs,\r\nOuverture et tri du courrier, Réception, orientation et transmission des communications téléphoniques.', 'AGENT ADMINISTRATIF', 'images/portfolio/DHL.jpg'),
(10, 'CDI', '2003-04-10', '2003-10-10', 'Effectuer le traitement, le contrôle et la saisie des documents,\r\nSaisie des arrêts de travail en relation avec les accidents de travail,\r\nNumérisation des documents, vérification des consignes à suivre.', 'OPÉRATRICE DE SAISIE', 'images/portfolio/cpam.png');

-- --------------------------------------------------------

--
-- Structure de la table `t_loisirs`
--

CREATE TABLE `t_loisirs` (
  `loisir_id` int(11) NOT NULL,
  `loisir_photo` varchar(300) NOT NULL,
  `loisir_nom` varchar(255) NOT NULL,
  `loisir_descriptif` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_loisirs`
--

INSERT INTO `t_loisirs` (`loisir_id`, `loisir_photo`, `loisir_nom`, `loisir_descriptif`) VALUES
(2, 'images/team/1.jpg', 'Sport', 'Jogging|Fitness|danse'),
(4, 'images/team/2.jpg', 'Cinéma', 'Moment de détente, voir des films romantiques pour m''évader et humoristique pour m''éclater...'),
(5, 'images/team/3.jpg', 'Voyage', 'Découvrir une nouvelle culture,Aller à la rencontre de l’autre,Apprendre une nouvelle langue');

-- --------------------------------------------------------

--
-- Structure de la table `t_perso`
--

CREATE TABLE `t_perso` (
  `perso_id` int(11) NOT NULL,
  `perso_nom` varchar(255) NOT NULL,
  `perso_prenom` varchar(255) NOT NULL,
  `perso_poste` varchar(255) NOT NULL,
  `perso_img` varchar(300) NOT NULL,
  `perso_facebook` varchar(300) NOT NULL,
  `perso_linkedin` varchar(300) NOT NULL,
  `perso_github` varchar(300) NOT NULL,
  `perso_codepen` varchar(300) NOT NULL,
  `perso_tel` varchar(255) NOT NULL,
  `perso_adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_perso`
--

INSERT INTO `t_perso` (`perso_id`, `perso_nom`, `perso_prenom`, `perso_poste`, `perso_img`, `perso_facebook`, `perso_linkedin`, `perso_github`, `perso_codepen`, `perso_tel`, `perso_adresse`) VALUES
(1, 'kharraf', 'Hanane', 'INTÉGRATRICE DÉVELLOPEUSE WEB', 'images/hanane.jpg', 'https://www.facebook.com/hanane.kharraf', 'https://www.linkedin.com/in/hanane-kharraf-8888b6143/', 'https://github.com/hananekharraf', 'https://codepen.io/hanouna/', '0678718852', '4 rue Honore de balzac');

-- --------------------------------------------------------

--
-- Structure de la table `t_portfolio`
--

CREATE TABLE `t_portfolio` (
  `port_id` int(11) NOT NULL,
  `port_name` varchar(255) NOT NULL,
  `port_lieu` varchar(255) NOT NULL,
  `port_descriptif` varchar(1000) NOT NULL,
  `port_date` date NOT NULL,
  `port_img` varchar(300) NOT NULL,
  `port_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_portfolio`
--

INSERT INTO `t_portfolio` (`port_id`, `port_name`, `port_lieu`, `port_descriptif`, `port_date`, `port_img`, `port_link`) VALUES
(3, 'Site CV', 'pantin', 'Site cv avec une base de données', '0000-00-00', 'images/CaptureCV.PNG', '/'),
(4, 'Travaux pratiques', 'pantin', 'exo', '2017-08-15', 'images/Capture1.PNG', '/travauxPratique/voyage/index3.html'),
(6, 'Travaux pratiques', 'pantin', 'exo', '2017-03-15', 'images/Capture3.PNG', '/travauxPratique/plage/indexPlage.html'),
(8, 'Intégration', 'pantin', 'exo', '2017-03-15', 'images/Capture5.PNG', '/travauxPratique/apple/indexApple.html');

-- --------------------------------------------------------

--
-- Structure de la table `t_user`
--

CREATE TABLE `t_user` (
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_user`
--

INSERT INTO `t_user` (`usr_id`, `usr_name`, `usr_password`, `usr_salt`, `usr_role`) VALUES
(3, 'admin', '$2y$13$A8MQM2ZNOi99EW.ML7srhOJsCaybSbexAj/0yXrJs4gQ/2BqMMW2K', 'EDDsl&fBCJB|a5XUtAlnQN8', 'ROLE_ADMIN'),
(6, 'Adricen', '$2y$13$Jz8z9URQQhtMSrJxv.B/iOmudR.ILGk84DN4f31/5YwmDtUZ.Vgc.', '01643b5402b3f86883d75fb', 'ROLE_ADMIN'),
(7, 'hanane', '$2y$13$soi3mLGpNHws9KhVmfz/xuo0mE/ZZFFPaQJsEqk5.1s6DKMqniU0a', '6db0079adffc59dfab5a1ba', 'ROLE_ADMIN');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_article`
--
ALTER TABLE `t_article`
  ADD PRIMARY KEY (`art_id`);

--
-- Index pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `fk_com_art` (`art_id`),
  ADD KEY `fk_com_usr` (`usr_id`);

--
-- Index pour la table `t_competences`
--
ALTER TABLE `t_competences`
  ADD PRIMARY KEY (`comp_id`);

--
-- Index pour la table `t_contact`
--
ALTER TABLE `t_contact`
  ADD PRIMARY KEY (`cont_id`);

--
-- Index pour la table `t_experience`
--
ALTER TABLE `t_experience`
  ADD PRIMARY KEY (`xp_id`);

--
-- Index pour la table `t_loisirs`
--
ALTER TABLE `t_loisirs`
  ADD PRIMARY KEY (`loisir_id`);

--
-- Index pour la table `t_perso`
--
ALTER TABLE `t_perso`
  ADD PRIMARY KEY (`perso_id`);

--
-- Index pour la table `t_portfolio`
--
ALTER TABLE `t_portfolio`
  ADD PRIMARY KEY (`port_id`);

--
-- Index pour la table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_article`
--
ALTER TABLE `t_article`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `t_comment`
--
ALTER TABLE `t_comment`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_competences`
--
ALTER TABLE `t_competences`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `t_contact`
--
ALTER TABLE `t_contact`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_experience`
--
ALTER TABLE `t_experience`
  MODIFY `xp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `t_loisirs`
--
ALTER TABLE `t_loisirs`
  MODIFY `loisir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `t_perso`
--
ALTER TABLE `t_perso`
  MODIFY `perso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_portfolio`
--
ALTER TABLE `t_portfolio`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD CONSTRAINT `fk_com_art` FOREIGN KEY (`art_id`) REFERENCES `t_article` (`art_id`),
  ADD CONSTRAINT `fk_com_usr` FOREIGN KEY (`usr_id`) REFERENCES `t_user` (`usr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
