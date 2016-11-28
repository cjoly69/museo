-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 27 Novembre 2016 à 17:53
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
(1, 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.', '2016-11-26 15:23:36', 'img1.png'),
(2, 'Article 2', 'Tous mes sens sont &eacute;mus d''une volupt&eacute; douce et pure, comme l''haleine du matin dans cette saison d&eacute;licieuse. Seul, au milieu d''une contr&eacute;e qui semble fait expr&egrave;s pour', 'Tous mes sens sont &eacute;mus d''une volupt&eacute; douce et pure, comme l''haleine du matin dans cette saison d&eacute;licieuse. Seul, au milieu d''une contr&eacute;e qui semble fait expr&egrave;s pour un coeur tel que mien, j''y go&ucirc;te &agrave; longs traits l''ivresse de la vie. Je suis si heureux, mon ami, si absorb&eacute; dans le sentiment de ma paisible existence, que mon art en souffre. Incapable de dessiner le mointre trait, la plus faible &eacute;bauche, jamais pourtant je ne fus si grand peintre. Quand mon vallon ch&eacute;ri se couvre autour de moi d''une l&eacute;g&egrave;re vapeur; qu''au-dessus de ma t&ecirc;te le soleil de midi darde ses rayons embras&eacute;s sur la sombre vo&ucirc;te de mon bois, au fond duquel, comme d''un sanctuaire, il introduit &agrave; peine une tremblante lumi&egrave;re; qu''&eacute;tendu sur le gazon touffu, &agrave; la chute d''un ruisseau, je d&eacute;couvre avec ravissement une multitude de plantes, de fleurs d''une d&eacute;licatesse infinie; que je vois s''agiter entre les brins d''herbe des milliers de vermisseaux, d''insectes, de moucherons, aux formes vari&eacute;es et innombrables; que j''entends r&eacute;sonner &agrave; mon oreille le murmure confus de ce petit monde; quand l''auguste pr&eacute;sence de l''&Ecirc;tre tout-puissant qui cr&eacute;a l''homme &agrave; son image, le souffle vivifiant du Dieu d''amour et de<br />\r\n<br />\r\n', '2016-11-26 15:23:36', 'img2.png'),
(4, 'Article 3', 'Loin, tr&egrave;s loin, au del&agrave; des monts Mots, &agrave; mille lieues des pays Voyellie et Consonnia, demeurent les Bolos Bolos. Ils vivent en retrait, &agrave; Bourg-en-Lettres, sur les c&ocir', 'Loin, tr&egrave;s loin, au del&agrave; des monts Mots, &agrave; mille lieues des pays Voyellie et Consonnia, demeurent les Bolos Bolos. Ils vivent en retrait, &agrave; Bourg-en-Lettres, sur les c&ocirc;tes de la S&eacute;mantique, un vaste oc&eacute;an de langues. Un petit ruisseau, du nom de Larousse, coule en leur lieu et les approvisionne en r&egrave;glalades n&eacute;cessaires en tout genre; un pays paradisiagmatique, dans lequel des pans entiers de phrases pr&eacute;m&acirc;ch&eacute;es vous volent lit&eacute;ralement tout cuit dans la bouche. Pas m&ecirc;me la toute puissante Ponctuation ne r&eacute;git les Bolos Bolos - une vie on ne peut moins orthodoxographique. Un jour pourtant, une petite ligne de Bolo Bolo du nom de Lorem Ipsum d&eacute;cida de s''aventurer dans la vaste Grammaire. Le grand Oxymore voulut l''en dissuader, le prevenant que l&agrave;-bas cela fourmillait de vils Virgulos, de sauvages Pointdexclamators et de sournois Semicolons qui l''attendraient pour s&ucirc;r au prochain paragraphe, mais ces mots ne firent &eacute;cho dans l''oreille du petit Bolo qui ne se laissa point d&eacute;concerter. Il pacqua ses 12 lettrines, glissa son initiale dans sa panse et se mit en route. Alors qu''il avait gravi les premiers flancs de la cha&icirc;ne des monts ', '2016-11-27 17:19:47', 'img3.png');

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
(5, 3, 2, 'bibibibibibibibiibi', '2016-11-27 16:57:01');

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
(4, 'jeff', 'toto@gmail.com', '$2y$10$VPiI8LFpIWiL4.iLhTS6b.ryReU/G6vn5l9y9q3/zD/G8nH706SKK');

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
