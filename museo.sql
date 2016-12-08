-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 08 Décembre 2016 à 17:14
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `museo`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(3) NOT NULL,
  `titre` varchar(40) NOT NULL,
  `accroche` varchar(200) NOT NULL,
  `contenu` text NOT NULL,
  `publication` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `accroche`, `contenu`, `publication`, `image`) VALUES
(1, 'Wall Drawings - MAC Lyon', 'Kid Kr&eacute;ol &amp; Boogie ont r&eacute;alis&eacute; une oeuvre immersive &quot;Remonter le temps par la lumi&egrave;re&quot;. Ils nous font voyager dans une ambiance mi cosmique mi foetale', 'Kid Kr&eacute;ol &amp; Boogie ont r&eacute;alis&eacute; une oeuvre immersive &quot;Remonter le temps par la lumi&egrave;re&quot;. Ils nous font voyager dans une ambiance mi cosmique mi foetale, &agrave; la rencontre de bienveillants spectres color&eacute;s. La photo est tir&eacute;e de leur page Facebook https://www.facebook.com/kidkreol.boogie/', '2016-11-26 15:23:36', 'img1.png'),
(2, 'Jean-Luc Parant - MAC Lyon', 'A priori pas du tout attir&eacute;e par cet amas de boules rassembl&eacute;es dans une des salles de l''exposition Le bonheur de deviner peu &agrave; peu, je me suis laiss&eacute;e convaincre par Eboul', 'A priori pas du tout attir&eacute;e par cet amas de boules rassembl&eacute;es dans une des salles de l''exposition Le bonheur de deviner peu &agrave; peu, je me suis laiss&eacute;e convaincre par Eboulement. La collection commenc&eacute;e depuis 1992 suite &agrave; la biennale de Lyon de 1991, &quot;envahit&quot; petit &agrave; petit le mus&eacute;e. Elle pose la question de la compl&eacute;tude de l''oeuvre; ici celle-ci &eacute;voluera jusqu''&agrave; la disparition de l''artiste ou la destruction du mus&eacute;e. C''est aussi mati&egrave;re &agrave; r&eacute;fl&eacute;chir sur la temporalit&eacute;, la vision forc&eacute;ment tronqu&eacute;e d''une r&eacute;alit&eacute; que l''on appr&eacute;hende depuis notre position ou d''apr&egrave;s le t&eacute;moignage d''une tierce personne. Pour aller plus loin: http://www.mac-lyon.com/static/mac/contenu/fichiers/artistes/notices_collec/parant.pdf ou dans le cadre d''une visite guid&eacute;e.<br />\r\nImage http://www.expointhecity.com/2015/10/24/eboulement/<br />\r\n<br />\r\n', '2016-11-26 15:23:36', 'img2.png'),
(4, 'Matisse - Mus&eacute;e St Pierre - Lyon', 'Ma prochaine visite, &agrave; suivre! L''exposition se poursuit jusqu''au 6 mars 2017. Je vous pr&eacute;senterai une oeuvre en particulier. En attendant, vous pouvez retrouver quelques unes des &oelig;', 'Ma prochaine visite, &agrave; suivre! L''exposition se poursuit jusqu''au 6 mars 2017. Je vous pr&eacute;senterai une oeuvre en particulier. En attendant, vous pouvez retrouver quelques unes des &oelig;uvres pr&eacute;sent&eacute;es sur https://www.facebook.com/museedesbeauxartsdelyon/. ', '2016-11-30 17:19:47', 'img3.png');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(4) NOT NULL,
  `id_membre` int(3) NOT NULL,
  `id_article` int(3) NOT NULL,
  `commentaire` text NOT NULL,
  `publication` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `id_membre`, `id_article`, `commentaire`, `publication`) VALUES
(1, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero totam, nobis numquam incidunt consequatur nihil sit laborum! praesentium nemo', '2016-11-26 19:32:27'),
(2, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. consequatur nihil sit laborum! Autem numquam magnam veritatis praesentium nemo', '2016-11-26 19:32:27'),
(3, 3, 2, 'Bravo, ce lorem est magnifique', '2016-11-27 16:49:00'),
(4, 3, 3, 'Quelle belle vue', '2016-11-27 16:49:54'),
(5, 3, 2, 'bibibibibibibibiibi', '2016-11-27 16:57:01'),
(6, 3, 4, 'tututuuttututtututuut', '2016-11-28 11:02:36');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int(3) NOT NULL,
  `pseudo` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `membres`
--

INSERT INTO `membres` (`id`, `pseudo`, `email`, `password`) VALUES
(1, 'cat', 'cj@gmail.com', ''),
(3, 'toto', 'toto@gmail.com', '$2y$10$g/4tFFYpliTzXcPMDRlp2O5i03ScK7hfHnpfKMc5lU.SzpK7k7TEC'),
(4, 'jeff', 'toto@gmail.com', '$2y$10$VPiI8LFpIWiL4.iLhTS6b.ryReU/G6vn5l9y9q3/zD/G8nH706SKK'),
(5, 'soso', 'so@gmail.com', '$2y$10$ZVp4uA9/GpACQfikTzI.R.KInVdGzWrxNqGHmz1vK3Mjqv/ETmojO');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
