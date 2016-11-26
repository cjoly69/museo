-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 26 Novembre 2016 à 21:28
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
(1, 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.', '2016-11-26 15:23:36', 'img/img1.png'),
(2, 'Article 2', 'Lorem ipsum dolor sit amet, conse', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.', '2016-11-26 15:23:36', 'img/img2.png'),
(3, 'Article 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint,', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.', '2016-11-26 15:24:25', 'img/img3.png');

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
(2, 2, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. consequatur nihil sit laborum! Autem numquam magnam veritatis praesentium nemo', '2016-11-26 19:32:27');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int(3) NOT NULL,
  `pseudo` varchar(15) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `membres`
--

INSERT INTO `membres` (`id`, `pseudo`, `mail`, `password`) VALUES
(1, 'cat', 'cj@gmail.com', ''),
(2, 'toto', 'toto@gmail.com', '');

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
