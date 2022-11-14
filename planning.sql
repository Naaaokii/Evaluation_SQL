SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `professeur`;  /*Tous les professeurs avec leur classe du jour et donc l'école*/
CREATE TABLE IF NOT EXISTS `professeur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `id_classe` int NOT NULL,
  PRIMARY KEY (`id`),
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `matiere`;  /*Toutes les matières*/
CREATE TABLE IF NOT EXISTS `matiere` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `matiere_prof`; /*Les matières du jour des profs*/
CREATE TABLE IF NOT EXISTS `matiere_prof` (
  `id_prof` int NOT NULL,
  `id_matiere` int NOT NULL,
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;




DROP TABLE IF EXISTS `classe`; /*Toutes les classes avec leur prof du jour*/
CREATE TABLE IF NOT EXISTS `classe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_eleves` int NOT NULL,
  `id_ecole`int NOT NULL,
  `id_prof`int NOT NULL,
  PRIMARY KEY (`id`),
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;




DROP TABLE IF EXISTS `ecole`; /*Toutes les écoles*/
CREATE TABLE IF NOT EXISTS `ecole` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `slug` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;
