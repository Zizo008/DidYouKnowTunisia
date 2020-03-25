-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 03 juin 2019 à 00:16
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tunisia`
--
CREATE DATABASE IF NOT EXISTS `tunisia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tunisia`;

-- --------------------------------------------------------

--
-- Structure de la table `facts`
--

CREATE TABLE `facts` (
  `Fact_ID` int(11) NOT NULL,
  `Fact_Info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `facts`
--

INSERT INTO `facts` (`Fact_ID`, `Fact_Info`) VALUES
(1, 'Tunis is situated on the shores of the Mediterranean Sea. The area commonly called the old city of Medina.\r\nTunis is a beautiful city famed for its warm and magnificent weather. It is a land of great ancient architecture that blends Arabic, Italian and French artistic creations.\r\n\r\nTunis is home to one of the oldest Medinas in the Arab world. Tunis medina is buttressed by a fortress wall fence created to guard it against enemy attacks. Medina of Tunis has over 700 historic monuments that dates back to the Almohad and the Hafsid periods.\r\n\r\nIt\'s a UNESCO World Heritage Site with most of these monuments comprising of fountains, mausoleums, mosques, madrasas, and even palaces.'),
(2, 'Though it is relatively small in size, Tunisia has great environmental diversity.\r\nTunisia is the smallest country in the Maghreb region comprising of a population of about 12 million people over an area of 163,610 square kilometers. However, its small size doesn\'t diminish its status as a spectacular jewelry etched on the sands of the expansive Sahara desert.\r\n\r\nWhile it shares the Sahara desert with so many Arab countries in the north, it has its own shades of unique climate that includes the temperate Mediterranean climate that makes it conducive for olives to grow.\r\n\r\nThis environmental diversity makes it attractive and habitable by Western tourists, not so hot, yet not so cold, and still not far off Europe.'),
(34, 'Tunisia has only ever had five presidents.\r\nTunisia has had 5 presidents since its independence from France in 1956 with Habib Bourguiba as Prime Minister who eventually become its first president on July 25, 1957 upon its proclamation as a Republic. He was later succeeded on by his Prime Minister Ben Ali in a coup d\'etat of November 7, 1987.\r\n\r\nBen Ali was overthrown by a civilian uprising (the \'Arab Spring\') on On January 14, 2011. Fouad Mebazaa took over as acting President overseeing drafting of the new Constitution which paved way for election of President Moncef Marzouki on December 12, 2011 as the president.\r\n\r\nOn December 21, 2014, the current president Beji Caid Essebsi took over after defeating Marzouki in a General elections.'),
(43, 'The Sahel, a broadening coastal plain along Tunisia\'s eastern Mediterranean coast, is among the world\'s premier areas of olive cultivation.\r\nOlive is one of the most appreciated plants in the Mediterranean region. Its extract, the Olive oil, is revered by world\'s culinary experts and nutritionists for its unique healthy properties.\r\n\r\nThe Sahel olive growing region covers about 6,600 square kilometers and extends through three governorates, Sousse, Monastir and Mahdia. Sahel region is not only popular with olive farming but also covers the highest number of pristine beaches along its coastline.\r\n\r\nIt is home to almost 14% of Tunisia\'s population of 12 million people.'),
(44, 'The city Kairouan is the fourth most important city in the Islamic world after Mecca, Medina and Jerusalem.\r\nKairouan is one of the most ancient cities in the Maghreb region. It was founded in 670 AD by Uqba ibn Nafi. It is the capital city of  Kairouan Governorate in northern Tunisia.\r\n\r\nIt hosts the the holy Mosque of Uqba. It was a center of Islamic teachings, Quranic learning and Sunni scholarship in the entire Maghreb. It is currently a UNESCO World Heritage site'),
(58, 'wiwiwolomada');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(2, 'Ziza', '$2y$10$9C7TVhv9hreWBEIVFJDgKOzKObsmK/9aDIFcyUmklnxLr7mumVRH.', '2019-06-02 17:54:30'),
(3, 'Imen', '$2y$10$c27vsb2j5P8F0ynjzBzEmuMYP.6xC/PhUwk8ySiOR33ETG2J7v/q.', '2019-06-02 17:55:28'),
(4, 'Zuma', '$2y$10$fiWPfBXPinRlCnOfOVaVSuESS2RJ7ezF.aF0gX/SewohzoUnokw6u', '2019-06-02 21:20:20');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `facts`
--
ALTER TABLE `facts`
  ADD PRIMARY KEY (`Fact_ID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `facts`
--
ALTER TABLE `facts`
  MODIFY `Fact_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
