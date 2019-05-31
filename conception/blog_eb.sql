-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 21 Mai 2019 à 12:09
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog_eb`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `a_id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` mediumtext NOT NULL,
  `img` varchar(100) NOT NULL,
  `active` int(1) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`a_id`, `titre`, `contenu`, `img`, `active`, `id_user`, `id_cat`) VALUES
(3, 'test', 'hello', 'montagne.jpg', 1, 2, 1),
(4, 'test2', 'hello 2', '', 1, 3, 2),
(5, 'aaaaa', 'dsfdsf sdf sdf sdf sdf', '', 1, 3, 1),
(6, 'hahahahahha', 'af azzafza azd zad ad af azzafza azd zad ad af azzafza azd zad ad af azzafza azd zad ad af azzafza azd zad ad af azzafza azd zad ad af azzafza azd zad ad af azzafza azd zad ad af azzafza azd zad ad af azzafza azd zad ad af azzafza azd zad ad af azzafza azd zad ad ', '', 1, 3, 3),
(7, 'hhhhhhhhhhhhh', 'vdsqvdsvsvsdvsdv dss fsdf sdf sdf', '', 1, 3, 3),
(8, 'cours a pied', 'qsd qsd qsd qsdqsd qsd qsd qsdqsd qsd qsd qsdqsd qsd qsd qsdqsd qsd qsd qsdqsd qsd qsd qsdqsd qsd qsd qsdqsd qsd qsd qsdqsd qsd qsd qsd', '', 1, 2, 4),
(11, 'toto', 'tgggggggggggggggggggggggggggggggggggggggggggggg', 'image', 1, 1, 1),
(12, 'lol', 'knponkomlkjinoljnolknjolkj', 'image', 1, 1, 1),
(13, 'tesg', 'gqzgbrfqbh', 'image', 1, 1, 1),
(14, 'fgq', 'bqfbq', 'image', 1, 1, 1),
(15, 'fgq', 'bqfbq', 'image', 1, 1, 3),
(16, 'sa', 'dsda', 'image', 1, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `c_id` int(11) NOT NULL,
  `nom_cat` varchar(50) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`c_id`, `nom_cat`, `active`) VALUES
(1, 'foot', 1),
(2, 'hand', 1),
(3, 'basket', 0),
(4, 'cours', 1);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`u_id`, `nom`, `prenom`, `email`, `mdp`, `id_role`) VALUES
(1, 'cici', 'cici', 'cici@cici.fr', 'cici', 1),
(2, 'tata', 'tata', 'tata@tata.fr', 'tata', 2),
(3, 'titi', 'titi', 'titi@titi.fr', 'titi', 2),
(4, 'tutu', 'tutu', 'tutu@tutu.fr', 'tutu', 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`c_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
