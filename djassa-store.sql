-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 29 mars 2021 à 15:11
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `djassa-store`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat_client`
--

CREATE TABLE `achat_client` (
  `id` int(11) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `achat_client`
--

INSERT INTO `achat_client` (`id`, `telephone`, `user_id`) VALUES
(1, '+225 0101525289', 2),
(2, '+225 0589632145', 3),
(3, '+225 010182962', 4),
(4, '+25501270207', 5);

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add commande', 7, 'add_commande'),
(26, 'Can change commande', 7, 'change_commande'),
(27, 'Can delete commande', 7, 'delete_commande'),
(28, 'Can view commande', 7, 'view_commande'),
(29, 'Can add phone', 8, 'add_phone'),
(30, 'Can change phone', 8, 'change_phone'),
(31, 'Can delete phone', 8, 'delete_phone'),
(32, 'Can view phone', 8, 'view_phone'),
(33, 'Can add modele phone', 9, 'add_modelephone'),
(34, 'Can change modele phone', 9, 'change_modelephone'),
(35, 'Can delete modele phone', 9, 'delete_modelephone'),
(36, 'Can view modele phone', 9, 'view_modelephone'),
(37, 'Can add panier', 10, 'add_panier'),
(38, 'Can change panier', 10, 'change_panier'),
(39, 'Can delete panier', 10, 'delete_panier'),
(40, 'Can view panier', 10, 'view_panier'),
(41, 'Can add marque', 11, 'add_marque'),
(42, 'Can change marque', 11, 'change_marque'),
(43, 'Can delete marque', 11, 'delete_marque'),
(44, 'Can view marque', 11, 'view_marque'),
(45, 'Can add color phone', 12, 'add_colorphone'),
(46, 'Can change color phone', 12, 'change_colorphone'),
(47, 'Can delete color phone', 12, 'delete_colorphone'),
(48, 'Can view color phone', 12, 'view_colorphone'),
(49, 'Can add price phone', 13, 'add_pricephone'),
(50, 'Can change price phone', 13, 'change_pricephone'),
(51, 'Can delete price phone', 13, 'delete_pricephone'),
(52, 'Can view price phone', 13, 'view_pricephone'),
(53, 'Can add client', 14, 'add_client'),
(54, 'Can change client', 14, 'change_client'),
(55, 'Can delete client', 14, 'delete_client'),
(56, 'Can view client', 14, 'view_client'),
(57, 'Can add panne', 15, 'add_panne'),
(58, 'Can change panne', 15, 'change_panne'),
(59, 'Can delete panne', 15, 'delete_panne'),
(60, 'Can view panne', 15, 'view_panne');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$xbV0F3SEDRoR$WJQxjf8y+Z6a3g2xpbVZYKaURZbtfIjcj8YFj1io+7g=', '2021-03-06 12:36:05.820652', 1, 'almoustapha', '', '', 'doumbiaalmoustapha@gmail.com', 1, 1, '2021-01-29 21:22:18.157134'),
(2, 'pbkdf2_sha256$216000$2iPnYOKE0kle$D3zH6UQW641jJ6mckKK1wrYcIcOOxTwI2FUtsTGWcws=', '2021-02-20 17:03:05.252868', 0, 'franck@gmail.com', 'Kouadio', 'Franck', 'franck@gmail.com', 0, 1, '2021-02-20 16:52:19.964229'),
(3, 'touch5869', NULL, 0, 'moussa@gmail.com', 'Oyewolé', 'Moussa', 'moussa@gmail.com', 0, 1, '2021-02-20 17:10:02.453491'),
(4, 'pbkdf2_sha256$216000$1hDYhrLSl0yw$kaV0zOVWp3JXI6l+4aS+aHVhmRpheoPh6uhuQODf1sw=', '2021-02-20 17:24:15.917224', 0, 'charles@gmail.com', 'Bamba', 'Charles', 'charles@gmail.com', 0, 1, '2021-02-20 17:23:57.629706'),
(5, 'pbkdf2_sha256$216000$JG7jiDCRzaH3$4cXH39sxugeOd+ERQ3erlJxUanGlcIgU4lCO4XyNkSc=', '2021-03-05 09:39:04.614768', 0, 'kone@gmail.com', 'Amidou', 'Kone', 'kone@gmail.com', 0, 1, '2021-03-05 09:33:21.644000');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `colorphone`
--

CREATE TABLE `colorphone` (
  `id` bigint(20) NOT NULL,
  `couleur` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `id_modele` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `colorphone`
--

INSERT INTO `colorphone` (`id`, `couleur`, `image`, `created_at`, `updated_at`, `id_modele`) VALUES
(1, 'graphite', 'Iphone_12_Graphite_7Bc7gwD.png', '2021-02-02 12:48:17.922994', '2021-02-02 12:48:10.000000', 1),
(2, 'silver', 'Iphone_12_Pro_Silver.png', '2021-02-02 15:05:53.048715', '2021-02-02 15:05:49.000000', 1),
(3, 'or', 'Iphone_12_Pro_or.png', '2021-02-02 15:26:03.768527', '2021-02-02 15:26:01.000000', 1),
(4, 'bleu pacifique', 'Iphone_12_Pro_Max_Bleu_qUiOoin.png', '2021-02-02 15:27:09.515400', '2021-02-02 15:27:07.000000', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` bigint(20) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `id_phone` bigint(20) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-01-29 21:29:16.673079', '1', 'Marque object (1)', 1, '[{\"added\": {}}]', 11, 1),
(2, '2021-01-29 21:29:28.916038', '2', 'Marque object (2)', 1, '[{\"added\": {}}]', 11, 1),
(3, '2021-01-29 21:29:43.909038', '3', 'Marque object (3)', 1, '[{\"added\": {}}]', 11, 1),
(4, '2021-01-29 21:48:24.544855', '1', 'Iphone 12', 1, '[{\"added\": {}}]', 9, 1),
(5, '2021-01-29 21:49:31.907855', '2', 'Iphone 11', 1, '[{\"added\": {}}]', 9, 1),
(6, '2021-01-29 21:54:06.584476', '3', 'Iphone X', 1, '[{\"added\": {}}]', 9, 1),
(7, '2021-01-29 21:54:25.642475', '4', 'Iphone SE', 1, '[{\"added\": {}}]', 9, 1),
(8, '2021-01-29 21:54:50.115563', '5', 'Iphone 8', 1, '[{\"added\": {}}]', 9, 1),
(9, '2021-01-29 21:58:04.175859', '6', 'Iphone 7', 1, '[{\"added\": {}}]', 9, 1),
(10, '2021-01-29 21:58:20.217857', '7', 'Iphone 6', 1, '[{\"added\": {}}]', 9, 1),
(11, '2021-01-29 21:58:47.832893', '8', 'Iphone 6S', 1, '[{\"added\": {}}]', 9, 1),
(12, '2021-01-29 21:59:04.802896', '9', 'Iphone 6+', 1, '[{\"added\": {}}]', 9, 1),
(13, '2021-01-29 21:59:32.869896', '10', 'Iphone 6S +', 1, '[{\"added\": {}}]', 9, 1),
(14, '2021-01-29 21:59:58.521414', '11', 'Iphone 7+', 1, '[{\"added\": {}}]', 9, 1),
(15, '2021-01-29 22:00:28.630978', '12', 'Iphone 8+', 1, '[{\"added\": {}}]', 9, 1),
(16, '2021-01-29 22:00:52.252481', '13', 'Iphone XS', 1, '[{\"added\": {}}]', 9, 1),
(17, '2021-01-29 22:01:19.054480', '14', 'Iphone X max', 1, '[{\"added\": {}}]', 9, 1),
(18, '2021-01-29 22:01:38.900019', '15', 'Iphone XS max', 1, '[{\"added\": {}}]', 9, 1),
(19, '2021-01-29 22:02:01.004020', '16', 'Iphone 11 Pro', 1, '[{\"added\": {}}]', 9, 1),
(20, '2021-01-29 22:02:28.662700', '17', 'Iphone 11 Pro max', 1, '[{\"added\": {}}]', 9, 1),
(21, '2021-01-29 22:02:50.964255', '18', 'Iphone 12 Pro', 1, '[{\"added\": {}}]', 9, 1),
(22, '2021-01-29 22:03:11.008220', '19', 'Iphone 12 Pro max', 1, '[{\"added\": {}}]', 9, 1),
(23, '2021-02-01 16:27:34.001876', '20', 'Iphone XR', 1, '[{\"added\": {}}]', 9, 1),
(24, '2021-02-01 17:22:25.024355', '20', 'Iphone XR', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(25, '2021-02-01 17:24:54.471355', '19', 'Iphone 12 Pro max', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(26, '2021-02-01 17:25:12.633630', '18', 'Iphone 12 Pro', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(27, '2021-02-01 17:25:27.077781', '17', 'Iphone 11 Pro max', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(28, '2021-02-01 17:25:50.745783', '16', 'Iphone 11 Pro', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(29, '2021-02-01 17:26:16.257782', '15', 'Iphone XS max', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Updated at\"]}}]', 9, 1),
(30, '2021-02-01 17:26:37.902784', '14', 'Iphone X max', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Updated at\"]}}]', 9, 1),
(31, '2021-02-01 17:26:52.268783', '13', 'Iphone XS', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Updated at\"]}}]', 9, 1),
(32, '2021-02-01 17:27:10.266785', '12', 'Iphone 8+', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Updated at\"]}}]', 9, 1),
(33, '2021-02-01 17:27:30.484787', '11', 'Iphone 7+', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Updated at\"]}}]', 9, 1),
(34, '2021-02-01 17:28:25.694787', '9', 'Iphone 6+', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Updated at\"]}}]', 9, 1),
(35, '2021-02-01 17:28:39.946783', '8', 'Iphone 6S', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Updated at\"]}}]', 9, 1),
(36, '2021-02-01 17:29:13.766786', '7', 'Iphone 6', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Updated at\"]}}]', 9, 1),
(37, '2021-02-01 17:29:37.972786', '6', 'Iphone 7', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(38, '2021-02-01 17:29:51.777785', '5', 'Iphone 8', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(39, '2021-02-01 17:30:05.560803', '4', 'Iphone SE', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(40, '2021-02-01 17:30:28.263782', '3', 'Iphone X', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Updated at\"]}}]', 9, 1),
(41, '2021-02-01 17:30:46.462783', '2', 'Iphone 11', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(42, '2021-02-01 17:31:01.906783', '1', 'Iphone 12', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(43, '2021-02-01 17:31:27.831784', '10', 'Iphone 6S +', 3, '', 9, 1),
(44, '2021-02-01 22:02:45.959962', '6', 'Iphone 7', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(45, '2021-02-01 22:11:35.704664', '6', 'Iphone 7', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Updated at\"]}}]', 9, 1),
(46, '2021-02-02 09:47:09.298459', '1', 'Phone object (1)', 1, '[{\"added\": {}}]', 8, 1),
(47, '2021-02-02 10:03:38.374109', '2', 'graphite', 1, '[{\"added\": {}}]', 8, 1),
(48, '2021-02-02 10:09:15.271920', '3', 'graphite', 1, '[{\"added\": {}}]', 8, 1),
(49, '2021-02-02 12:48:18.040614', '1', 'graphite', 1, '[{\"added\": {}}]', 12, 1),
(50, '2021-02-02 12:51:03.066533', '1', '64 Go', 1, '[{\"added\": {}}]', 13, 1),
(51, '2021-02-02 12:51:43.073648', '2', '128 Go', 1, '[{\"added\": {}}]', 13, 1),
(52, '2021-02-02 12:53:03.744502', '3', '256 Go', 1, '[{\"added\": {}}]', 13, 1),
(53, '2021-02-02 12:55:02.405828', '4', '512 Go', 1, '[{\"added\": {}}]', 13, 1),
(54, '2021-02-02 15:05:53.074217', '2', 'Iphone 12 silver', 1, '[{\"added\": {}}]', 12, 1),
(55, '2021-02-02 15:07:32.925847', '5', 'Iphone 12 silver 64 Go', 1, '[{\"added\": {}}]', 13, 1),
(56, '2021-02-02 15:11:06.823703', '6', 'Iphone 12 silver 128 Go', 1, '[{\"added\": {}}]', 13, 1),
(57, '2021-02-02 15:11:29.867353', '7', 'Iphone 12 silver 256 Go', 1, '[{\"added\": {}}]', 13, 1),
(58, '2021-02-02 15:12:08.384253', '8', 'Iphone 12 silver 512 Go', 1, '[{\"added\": {}}]', 13, 1),
(59, '2021-02-02 15:26:03.816325', '3', 'Iphone 12 or', 1, '[{\"added\": {}}]', 12, 1),
(60, '2021-02-02 15:27:09.558848', '4', 'Iphone 12 bleu pacifique', 1, '[{\"added\": {}}]', 12, 1),
(61, '2021-02-02 15:28:32.045599', '9', 'Iphone 12 or 64 Go', 1, '[{\"added\": {}}]', 13, 1),
(62, '2021-02-02 15:28:45.509658', '10', 'Iphone 12 or 128 Go', 1, '[{\"added\": {}}]', 13, 1),
(63, '2021-02-02 15:29:01.785437', '11', 'Iphone 12 or 256 Go', 1, '[{\"added\": {}}]', 13, 1),
(64, '2021-02-02 15:30:06.222513', '12', 'Iphone 12 or 512 Go', 1, '[{\"added\": {}}]', 13, 1),
(65, '2021-02-02 15:30:22.643161', '13', 'Iphone 12 bleu pacifique 64 Go', 1, '[{\"added\": {}}]', 13, 1),
(66, '2021-02-02 15:35:35.283646', '14', 'Iphone 12 bleu pacifique 128 Go', 1, '[{\"added\": {}}]', 13, 1),
(67, '2021-02-02 15:35:54.835870', '15', 'Iphone 12 bleu pacifique 256 Go', 1, '[{\"added\": {}}]', 13, 1),
(68, '2021-02-02 15:36:12.067387', '16', 'Iphone 12 bleu pacifique 512 Go', 1, '[{\"added\": {}}]', 13, 1),
(69, '2021-02-20 17:01:59.170768', '2', 'franck@gmail.com', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(70, '2021-03-06 12:48:18.731125', '20', 'Iphone XR', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(71, '2021-03-06 12:49:23.194647', '17', 'Iphone 11 Pro max', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(72, '2021-03-06 12:53:08.452562', '16', 'Iphone 11 Pro', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(73, '2021-03-06 12:53:56.851564', '2', 'Iphone 11', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(74, '2021-03-06 12:54:54.252564', '15', 'Iphone XS max', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(75, '2021-03-06 12:56:56.557564', '13', 'Iphone XS', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(76, '2021-03-06 12:57:27.877563', '14', 'Iphone X max', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(77, '2021-03-06 12:57:47.378089', '3', 'Iphone X', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(78, '2021-03-06 13:01:12.459438', '12', 'Iphone 8+', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(79, '2021-03-06 13:02:15.288196', '12', 'Iphone 8+', 2, '[]', 9, 1),
(80, '2021-03-06 13:02:35.549153', '5', 'Iphone 8', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(81, '2021-03-06 13:03:40.777669', '11', 'Iphone 7+', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(82, '2021-03-06 13:04:08.168667', '6', 'Iphone 7', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(83, '2021-03-06 13:06:18.223726', '8', 'Iphone 6S', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(84, '2021-03-06 13:06:41.776730', '9', 'Iphone 6+', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(85, '2021-03-06 13:08:06.485684', '4', 'Iphone SE', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(86, '2021-03-06 13:08:55.473685', '19', 'Iphone 12 Pro max', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(87, '2021-03-06 13:09:05.438693', '18', 'Iphone 12 Pro', 2, '[{\"changed\": {\"fields\": [\"Troc\"]}}]', 9, 1),
(88, '2021-03-06 13:09:23.378685', '1', 'Iphone 12', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1),
(89, '2021-03-06 13:11:11.781109', '7', 'Iphone 6', 2, '[{\"changed\": {\"fields\": [\"Troc\", \"Updated at\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(14, 'achat', 'client'),
(12, 'achat', 'colorphone'),
(7, 'achat', 'commande'),
(11, 'achat', 'marque'),
(9, 'achat', 'modelephone'),
(10, 'achat', 'panier'),
(15, 'achat', 'panne'),
(8, 'achat', 'phone'),
(13, 'achat', 'pricephone'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-01-27 22:38:37.805705'),
(2, 'auth', '0001_initial', '2021-01-27 22:38:43.606048'),
(3, 'admin', '0001_initial', '2021-01-27 22:39:11.006472'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-01-27 22:39:16.086938'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-27 22:39:16.189779'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-01-27 22:39:19.156341'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-01-27 22:39:26.006459'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-01-27 22:39:34.186426'),
(9, 'auth', '0004_alter_user_username_opts', '2021-01-27 22:39:34.483929'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-01-27 22:39:39.036400'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-01-27 22:39:39.221666'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-01-27 22:39:39.316496'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-01-27 22:39:39.586406'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-01-27 22:39:39.816384'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-01-27 22:39:43.166075'),
(16, 'auth', '0011_update_proxy_permissions', '2021-01-27 22:39:43.253390'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-01-27 22:39:43.511606'),
(18, 'sessions', '0001_initial', '2021-01-27 22:39:44.916222'),
(19, 'achat', '0001_initial', '2021-01-27 22:40:27.456381'),
(20, 'achat', '0002_phone_image', '2021-01-29 21:27:52.628698'),
(21, 'achat', '0003_modelephone_image', '2021-02-01 17:13:56.577107'),
(22, 'achat', '0004_colorphone_pricephone', '2021-02-02 12:31:31.903908'),
(23, 'achat', '0005_auto_20210216_2253', '2021-02-20 11:19:09.203104'),
(24, 'achat', '0006_client', '2021-02-20 11:19:10.157610'),
(25, 'achat', '0007_auto_20210306_1232', '2021-03-06 12:33:14.263653'),
(26, 'achat', '0008_auto_20210306_1246', '2021-03-06 12:46:25.834123');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('60pn53ndd4qe02b396s9w4vhjekt1ud8', '.eJxVjEEOwiAQAP_C2RB2AV08eu8bCLAgVUOT0p6MfzckPeh1ZjJv4cO-Vb_3vPqZxVWAOP2yGNIztyH4Edp9kWlp2zpHORJ52C6nhfPrdrR_gxp6HVtljSIVnKOzLRp1QAZdgElFU6IxDjA5x6g1JwDSCa0tCMz5QlSs-HwBrqg23w:1l5bHz:kQBfBDUVyQJi91fx67hI3bhzZZ_YtR8bE8O0wgmiPPU', '2021-02-12 21:26:47.611348'),
('ancibsow14blvxyrv1xi6gea14neme9k', '.eJxVjEEOwiAQAP_C2RB2AV08eu8bCLAgVUOT0p6MfzckPeh1ZjJv4cO-Vb_3vPqZxVWAOP2yGNIztyH4Edp9kWlp2zpHORJ52C6nhfPrdrR_gxp6HVtljSIVnKOzLRp1QAZdgElFU6IxDjA5x6g1JwDSCa0tCMz5QlSs-HwBrqg23w:1lIWAA:XHD-i47ZcWEcL3_-hk92ATaat6_h4LE4uK2VII0PFRo', '2021-03-20 12:36:06.096670'),
('b0mkh1h9vb30ec4gv9dfbqkf6zx0v16y', '.eJxVjEEOwiAQRe_C2hA6MEBduvcMZAaoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIsUJx-N6b4yHUH6U711mRsdV1mlrsiD9rltaX8vBzu30GhXr4160mDRWcYKDkLnhMqUJiGEYi8zRZHYxV4r7WfogLW1oHXCploMEq8P7wbNnQ:1lI6vI:qb3MEPB2jZdkSGUjlDwCG3tVdbsj_Trgc7s4529BJrM', '2021-03-19 09:39:04.792095'),
('lzw0vqdzctunlg7ww48ckos3usqf3gnp', '.eJxVjEEOwiAQAP_C2RB2AV08eu8bCLAgVUOT0p6MfzckPeh1ZjJv4cO-Vb_3vPqZxVWAOP2yGNIztyH4Edp9kWlp2zpHORJ52C6nhfPrdrR_gxp6HVtljSIVnKOzLRp1QAZdgElFU6IxDjA5x6g1JwDSCa0tCMz5QlSs-HwBrqg23w:1lDVdn:5nEyrmwKCsBdiUHVrOTjh-61lScyWVCbuTW9LC60t48', '2021-03-06 17:01:59.405709');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', '2021-01-29 21:29:16.508038', '2021-01-29 21:29:07.000000'),
(2, 'Huawei', '2021-01-29 21:29:28.914037', '2021-01-29 21:29:26.000000'),
(3, 'Samsung', '2021-01-29 21:29:43.908037', '2021-01-29 21:29:42.000000');

-- --------------------------------------------------------

--
-- Structure de la table `modele_phone`
--

CREATE TABLE `modele_phone` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `id_marque` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `troc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `modele_phone`
--

INSERT INTO `modele_phone` (`id`, `name`, `created_at`, `updated_at`, `id_marque`, `image`, `troc`) VALUES
(1, 'Iphone 12', '2021-01-29 21:48:11.000000', '2021-03-06 13:09:21.000000', 1, 'Iphone_12_Noir.png', '490 000'),
(2, 'Iphone 11', '2021-01-29 21:49:28.000000', '2021-03-06 12:53:50.000000', 1, 'Iphone_11_Gris.jpg', '327 300'),
(3, 'Iphone X', '2021-01-29 21:54:01.000000', '2021-03-06 12:57:45.000000', 1, 'Iphone_X_Noir.jpg', '200 000'),
(4, 'Iphone SE', '2021-01-29 21:54:21.000000', '2021-03-06 13:08:04.000000', 1, 'Iphone_SE_Noir.jpg', '170 200'),
(5, 'Iphone 8', '2021-01-29 21:54:42.000000', '2021-03-06 13:02:33.000000', 1, 'Iphone_8_Gris.jpg', '120 000'),
(6, 'Iphone 7', '2021-01-29 21:58:01.000000', '2021-03-06 13:04:01.000000', 1, 'Iphone_7_Gold_BIqD9dg.png', '100 000'),
(7, 'Iphone 6', '2021-01-29 21:58:15.000000', '2021-03-06 13:11:09.000000', 1, 'Iphone_6_Noir.png', '30 000'),
(8, 'Iphone 6S', '2021-01-29 21:58:42.000000', '2021-03-06 13:06:12.000000', 1, 'Iphone_6s_Noir.jpg', '48 000'),
(9, 'Iphone 6+', '2021-01-29 21:59:00.000000', '2021-03-06 13:06:33.000000', 1, 'Iphone_6_plus_Gris.png', '46 000'),
(11, 'Iphone 7+', '2021-01-29 21:59:54.000000', '2021-03-06 13:03:34.000000', 1, 'IPhone_7_Plus_Rouge.jpg', '102 000'),
(12, 'Iphone 8+', '2021-01-29 22:00:23.000000', '2021-03-06 13:00:57.000000', 1, 'Iphone_8_plus_Gold.jpg', '130 900'),
(13, 'Iphone XS', '2021-01-29 22:00:48.000000', '2021-03-06 12:56:51.000000', 1, 'Iphone_XS_Gris.png', '222 630'),
(14, 'Iphone X max', '2021-01-29 22:01:10.000000', '2021-03-06 12:57:25.000000', 1, 'Iphone_X_Max_Noir.jpg', '210 000'),
(15, 'Iphone XS max', '2021-01-29 22:01:31.000000', '2021-03-06 12:54:52.000000', 1, 'Iphone_XS_Max_Gris.png', '242270'),
(16, 'Iphone 11 Pro', '2021-01-29 22:01:57.000000', '2021-03-06 12:53:03.000000', 1, 'Iphone_11_Pro_Noir.png', '419 000'),
(17, 'Iphone 11 Pro max', '2021-01-29 22:02:19.000000', '2021-03-06 12:49:20.000000', 1, 'Iphone_11_Pro_Max_Noir.png', '458 350'),
(18, 'Iphone 12 Pro', '2021-01-29 22:02:47.000000', '2021-01-29 22:02:49.000000', 1, 'Iphone_12_Pro_Gris.png', '510 000'),
(19, 'Iphone 12 Pro max', '2021-01-29 22:03:06.000000', '2021-03-06 13:08:43.000000', 1, 'Iphone_12_Pro_Max_Bleu.png', '520 000'),
(20, 'Iphone XR', '2021-02-01 16:27:29.000000', '2021-03-06 12:48:15.000000', 1, 'Iphone_XR_Noir.png', '196 435');

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` bigint(20) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `id_price_phone` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id`, `quantite`, `total`, `type`, `status`, `created_at`, `updated_at`, `id_users`, `id_price_phone`) VALUES
(1, 2, '750 000', 'ACHAT', 1, '2021-02-20 17:42:37.679439', NULL, 4, 12),
(2, 2, '680 000', 'ACHAT', 1, '2021-02-21 12:53:28.122337', NULL, 4, 13),
(3, 1, '700 000', 'ACHAT', 1, '2021-02-22 12:05:23.239391', NULL, 4, 2),
(4, 1, '720 000', 'ACHAT', 1, '2021-02-22 12:18:47.255242', NULL, 4, 3),
(5, 1, '700 000', 'ACHAT', 1, '2021-02-22 14:33:31.102085', NULL, 4, 14),
(6, 1, '680 000', 'ACHAT', 0, '2021-02-22 17:28:58.412385', NULL, 4, 13),
(7, 2, '720 000', 'ACHAT', 1, '2021-03-05 09:40:02.944560', NULL, 5, 11);

-- --------------------------------------------------------

--
-- Structure de la table `panne`
--

CREATE TABLE `panne` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `id_modele` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone`
--

CREATE TABLE `phone` (
  `id` bigint(20) NOT NULL,
  `couleur` varchar(255) DEFAULT NULL,
  `capacite` varchar(255) DEFAULT NULL,
  `prix` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `id_modele` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone`
--

INSERT INTO `phone` (`id`, `couleur`, `capacite`, `prix`, `created_at`, `updated_at`, `id_modele`, `image`) VALUES
(1, 'graphite', '64 Go', '680 000', '2021-02-02 09:47:09.235943', '2021-02-02 09:47:00.000000', 1, 'Iphone_12_Graphite.png'),
(2, 'graphite', '128 Go', '700 000', '2021-02-02 10:03:38.333593', '2021-02-02 10:03:33.000000', 1, 'Iphone_12_Graphite_aCLAmug.png'),
(3, 'graphite', '256 Go', '720 000', '2021-02-02 10:09:15.240668', '2021-02-02 10:09:12.000000', 1, 'Iphone_12_Graphite_EXl59iS.png');

-- --------------------------------------------------------

--
-- Structure de la table `pricephone`
--

CREATE TABLE `pricephone` (
  `id` bigint(20) NOT NULL,
  `capacite` varchar(255) DEFAULT NULL,
  `prix` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `id_color` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pricephone`
--

INSERT INTO `pricephone` (`id`, `capacite`, `prix`, `created_at`, `updated_at`, `id_color`) VALUES
(1, '64 Go', '680 000', '2021-02-02 12:51:03.033882', '2021-02-02 12:50:57.000000', 1),
(2, '128 Go', '700 000', '2021-02-02 12:51:43.010830', '2021-02-02 12:51:40.000000', 1),
(3, '256 Go', '720 000', '2021-02-02 12:53:03.743503', '2021-02-02 12:52:58.000000', 1),
(4, '512 Go', '750 000', '2021-02-02 12:55:02.317204', '2021-02-02 12:54:56.000000', 1),
(5, '64 Go', '680 000', '2021-02-02 15:07:32.818702', '2021-02-02 15:07:31.000000', 2),
(6, '128 Go', '700 000', '2021-02-02 15:11:06.799422', '2021-02-02 15:11:04.000000', 2),
(7, '256 Go', '720 000', '2021-02-02 15:11:29.784563', '2021-02-02 15:11:28.000000', 2),
(8, '512 Go', '750 000', '2021-02-02 15:12:08.355221', '2021-02-02 15:12:05.000000', 2),
(9, '64 Go', '680 000', '2021-02-02 15:28:32.042582', '2021-02-02 15:28:30.000000', 3),
(10, '128 Go', '700 000', '2021-02-02 15:28:45.413274', '2021-02-02 15:28:43.000000', 3),
(11, '256 Go', '720 000', '2021-02-02 15:29:01.712661', '2021-02-02 15:29:00.000000', 3),
(12, '512 Go', '750 000', '2021-02-02 15:30:06.220527', '2021-02-02 15:30:04.000000', 3),
(13, '64 Go', '680 000', '2021-02-02 15:30:22.640160', '2021-02-02 15:30:19.000000', 4),
(14, '128 Go', '700 000', '2021-02-02 15:35:35.243651', '2021-02-02 15:35:27.000000', 4),
(15, '256 Go', '720 000', '2021-02-02 15:35:54.833856', '2021-02-02 15:35:52.000000', 4),
(16, '512 Go', '750 000', '2021-02-02 15:36:11.959482', '2021-02-02 15:36:10.000000', 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achat_client`
--
ALTER TABLE `achat_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `colorphone`
--
ALTER TABLE `colorphone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colorphone_id_modele_07b9b03a_fk_modele_phone_id` (`id_modele`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commande_id_phone_ee4996e4_fk_phone_id` (`id_phone`),
  ADD KEY `commande_id_users_3475397d_fk_auth_user_id` (`id_users`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `modele_phone`
--
ALTER TABLE `modele_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modele_phone_id_marque_8f7fde44_fk_marque_id` (`id_marque`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `panier_id_users_b175171a_fk_auth_user_id` (`id_users`),
  ADD KEY `panier_id_price_phone_f9894589_fk_pricephone_id` (`id_price_phone`);

--
-- Index pour la table `panne`
--
ALTER TABLE `panne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `panne_id_modele_afa2898a_fk_modele_phone_id` (`id_modele`);

--
-- Index pour la table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phone_id_modele_9b17e17c_fk_modele_phone_id` (`id_modele`);

--
-- Index pour la table `pricephone`
--
ALTER TABLE `pricephone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricephone_id_color_dfd1688b_fk_colorphone_id` (`id_color`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achat_client`
--
ALTER TABLE `achat_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `colorphone`
--
ALTER TABLE `colorphone`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `modele_phone`
--
ALTER TABLE `modele_phone`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `panne`
--
ALTER TABLE `panne`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone`
--
ALTER TABLE `phone`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `pricephone`
--
ALTER TABLE `pricephone`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achat_client`
--
ALTER TABLE `achat_client`
  ADD CONSTRAINT `achat_client_user_id_b2e338c8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `colorphone`
--
ALTER TABLE `colorphone`
  ADD CONSTRAINT `colorphone_id_modele_07b9b03a_fk_modele_phone_id` FOREIGN KEY (`id_modele`) REFERENCES `modele_phone` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_id_phone_ee4996e4_fk_phone_id` FOREIGN KEY (`id_phone`) REFERENCES `phone` (`id`),
  ADD CONSTRAINT `commande_id_users_3475397d_fk_auth_user_id` FOREIGN KEY (`id_users`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `modele_phone`
--
ALTER TABLE `modele_phone`
  ADD CONSTRAINT `modele_phone_id_marque_8f7fde44_fk_marque_id` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id`);

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `panier_id_price_phone_f9894589_fk_pricephone_id` FOREIGN KEY (`id_price_phone`) REFERENCES `pricephone` (`id`),
  ADD CONSTRAINT `panier_id_users_b175171a_fk_auth_user_id` FOREIGN KEY (`id_users`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `panne`
--
ALTER TABLE `panne`
  ADD CONSTRAINT `panne_id_modele_afa2898a_fk_modele_phone_id` FOREIGN KEY (`id_modele`) REFERENCES `modele_phone` (`id`);

--
-- Contraintes pour la table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_id_modele_9b17e17c_fk_modele_phone_id` FOREIGN KEY (`id_modele`) REFERENCES `modele_phone` (`id`);

--
-- Contraintes pour la table `pricephone`
--
ALTER TABLE `pricephone`
  ADD CONSTRAINT `pricephone_id_color_dfd1688b_fk_colorphone_id` FOREIGN KEY (`id_color`) REFERENCES `colorphone` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
