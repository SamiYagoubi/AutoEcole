drop database auto_ecole;
create database auto_ecole;
use auto_ecole;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `auto_ecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
CREATE TABLE IF NOT EXISTS `lessons` (
  `id_l` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) DEFAULT NULL,
  `description` text,
  `date_l` datetime DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `id_e` int(11) NOT NULL,
  `id_m` int(11) NOT NULL,
  PRIMARY KEY (`id_l`),
  KEY `id_e` (`id_e`),
  KEY `id_m` (`id_m`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lessons`
--

INSERT INTO `lessons` (`id_l`, `titre`, `description`, `date_l`, `duree`, `id_e`, `id_m`) VALUES
(1, 'Maitrise de la vitesse', 'Conduite en voiture tout en contrôlant la vitesse', '2021-04-15 09:00:00', 2, 7, 2),
(2, 'Maitrise du volant', 'Conduite en voiture tout en contrôlant le volant', '2021-04-21 10:00:00', 3, 7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id_exp` int(11) NOT NULL,
  `id_dest` int(11) NOT NULL,
  `date_envoi` datetime DEFAULT NULL,
  `lu` int(11) DEFAULT '0',
  PRIMARY KEY (`id_exp`,`id_dest`),
  KEY `id_dest` (`id_dest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id_exp`, `id_dest`, `date_envoi`, `lu`) VALUES
(1, 2, '2021-03-11 17:59:37', 0),
(2, 1, '2021-03-16 17:59:37', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_u` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `tel` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `lvl` int(11) DEFAULT '1',
  `adresse` varchar(100) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_u`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_u`, `nom`, `prenom`, `tel`, `email`, `mdp`, `lvl`, `adresse`, `cp`) VALUES
(1, 'BRUAIRE', 'Tom', '0606060606', 'tombruaire@gmail.com', '107d348bff437c999a9ff192adcb78cb03b8ddc6', 3, '5 rue de Levallois', '92300'),
(4, 'BRUAIRE', 'Tomy', '0707070707', 't@gmail.com', '5af21dd631d8bb1a9cc8064e99b668935f9797e7', 2, 'dzdsfqdfqf', '87500'),
(7, 'BRUAIRE2', 'Tom2', '0808080808', 'tom@gmail.com', '107d348bff437c999a9ff192adcb78cb03b8ddc6', 1, '5 rue de CHEPAKOI', '78500'),
(6, 'sqfqsfqsf', 'qdfqdsfqSDFDSQ', '0101010101', 'mmmm@gmail.com', '0e90ccbbd548c8e7dc93fdecfa3cea3657c4a689', 2, 'sqfqsfqsfsq', '48520');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
