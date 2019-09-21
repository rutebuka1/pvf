-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 21, 2019 at 04:01 AM
-- Server version: 10.3.17-MariaDB-1:10.3.17+maria~xenial
-- PHP Version: 7.2.21-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pvfdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `spip_articles`
--

CREATE TABLE `spip_articles` (
  `id_article` bigint(21) NOT NULL,
  `surtitre` text NOT NULL DEFAULT '',
  `titre` text NOT NULL DEFAULT '',
  `soustitre` text NOT NULL DEFAULT '',
  `id_rubrique` bigint(21) NOT NULL DEFAULT 0,
  `descriptif` text NOT NULL DEFAULT '',
  `chapo` mediumtext NOT NULL DEFAULT '',
  `texte` longtext NOT NULL DEFAULT '',
  `ps` mediumtext NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `id_secteur` bigint(21) NOT NULL DEFAULT 0,
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `export` varchar(10) DEFAULT 'oui',
  `date_redac` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visites` int(11) NOT NULL DEFAULT 0,
  `referers` int(11) NOT NULL DEFAULT 0,
  `popularite` double NOT NULL DEFAULT 0,
  `accepter_forum` char(3) NOT NULL DEFAULT '',
  `date_modif` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `langue_choisie` varchar(3) DEFAULT 'non',
  `id_trad` bigint(21) NOT NULL DEFAULT 0,
  `nom_site` tinytext NOT NULL DEFAULT '',
  `url_site` text NOT NULL DEFAULT '',
  `virtuel` text NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spip_articles`
--

INSERT INTO `spip_articles` (`id_article`, `surtitre`, `titre`, `soustitre`, `id_rubrique`, `descriptif`, `chapo`, `texte`, `ps`, `date`, `statut`, `id_secteur`, `maj`, `export`, `date_redac`, `visites`, `referers`, `popularite`, `accepter_forum`, `date_modif`, `lang`, `langue_choisie`, `id_trad`, `nom_site`, `url_site`, `virtuel`) VALUES
(1, '', 'King James yishimiwe bikomeye mu gitaramo yakoreye Bauhaus Club Nyamirambo-AMAFOTO', '', 1, '', '', 'Uyu muhanzi yaririmbiye Bauhaus Club Nyamirmabo mu ijoro ryo ku wa Gatanu rishyira ku wa Gatandatu. Ni igitaramo cyahuriranye no kumurika ku mugaragaro indirimbo nshya yise “Yabigize birebire” aherutse gushyira hanze.\r\n\r\nYaririmbye nyinshi mu ndirimbo ze yagiye ashyira hanze mu bihe bitandukanye zigakundwa mu buryo bukomeye. Yisanzuye mu bafana abaha umwanya wo kubyinana nawe no kuririmba nawe. Bamwe birabarenga bamupfumbatisha amafaranga bamushimira uburyo yabafashije kwizihirwa na ‘weekend’.\r\n\r\nAbasohokera Bauhaus Club Nyamirambo ntibicwa n’icyaka kuko hari ibyo kunywa by’amako yose! Ikindi n’uko hari mucoma w’umuhanga uzi kotsa neza ‘burucheti’.\r\n\r\nKing James yafashije benshi kwizihirwa n’umuziki ari nako banywa ku binyobwa bitandukanye bibarizwa muri aka kabari kagezweho.\r\n\r\n', '', '2019-09-16 08:18:04', 'publie', 1, '2019-09-16 12:18:04', 'oui', '0000-00-00 00:00:00', 0, 0, 0, 'pos', '2019-09-16 08:17:12', 'fr', 'non', 0, '', '', ''),
(2, '', 'Basketball: Patriots BBC yafashe REG banganya imikino ,igikombe gisubirayo bwa kabiri muri Kigali Arena yuzuye neza', '', 2, '', '', 'Ikipe ya Patriots BBC yatsinze REG BBC amanota 78-60 mu mukino w’umunsi wa gatandatu wa Playoffs bituma amakipe yombi anganya intsinzi 3-3 , igikombe gisubira mu bubiko mu gihe Kigali Arena yari yakubise yuzuye abafana mu myanya iyigize.\r\n\r\n\r\n Beleck Bell (32) abyigana na Sagamba Sedar (5)\r\n\r\nMbere y’uko amakipe ahura, REG BBC yari ifite intsinzi eshatu (3) mu gihe Patriots BBC yari ifite intsinzi ebyiri (2) mu mikino itanu (5) baheruka gukina. Byasabaga ko REG BBC itsinda igahabwa igikombe cyangwa Patriots BBC igatsinda bakazakina umukino wa nyuma.\r\n', '', '2019-09-21 01:00:04', 'publie', 2, '2019-09-21 05:00:04', 'oui', '0000-00-00 00:00:00', 0, 0, 0, 'pos', '2019-09-21 00:58:57', 'fr', 'non', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `spip_auteurs`
--

CREATE TABLE `spip_auteurs` (
  `id_auteur` bigint(21) NOT NULL,
  `nom` text NOT NULL DEFAULT '',
  `bio` text NOT NULL DEFAULT '',
  `email` tinytext NOT NULL DEFAULT '',
  `nom_site` tinytext NOT NULL DEFAULT '',
  `url_site` text NOT NULL DEFAULT '',
  `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pass` tinytext NOT NULL DEFAULT '',
  `low_sec` tinytext NOT NULL DEFAULT '',
  `statut` varchar(255) NOT NULL DEFAULT '0',
  `webmestre` varchar(3) NOT NULL DEFAULT 'non',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pgp` text NOT NULL DEFAULT '',
  `htpass` tinytext NOT NULL DEFAULT '',
  `en_ligne` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alea_actuel` tinytext DEFAULT NULL,
  `alea_futur` tinytext DEFAULT NULL,
  `prefs` text DEFAULT NULL,
  `cookie_oubli` tinytext DEFAULT NULL,
  `source` varchar(10) NOT NULL DEFAULT 'spip',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `imessage` varchar(3) DEFAULT NULL,
  `messagerie` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spip_auteurs`
--

INSERT INTO `spip_auteurs` (`id_auteur`, `nom`, `bio`, `email`, `nom_site`, `url_site`, `login`, `pass`, `low_sec`, `statut`, `webmestre`, `maj`, `pgp`, `htpass`, `en_ligne`, `alea_actuel`, `alea_futur`, `prefs`, `cookie_oubli`, `source`, `lang`, `imessage`, `messagerie`) VALUES
(1, 'PVF', '', 'skldev7@gmail.com', '', '', 'skldev', 'e9e2b23ccbf007f1df64a21ca668f08815490ceab09a3f306c3adfcf81d2b50f', '', '0minirezo', 'oui', '2019-09-21 07:38:22', '', '$1$AxFDaMVH$/./ZfuIKS6ahms57eWfHT/', '2019-09-21 03:38:22', '19615803945d7e413d5cc9e3.19979649', '2074847255d85acfb894f44.38696962', 'a:5:{s:7:\"couleur\";i:9;s:7:\"display\";i:2;s:18:\"display_navigation\";s:22:\"navigation_avec_icones\";s:14:\"display_outils\";s:3:\"oui\";s:3:\"cnx\";s:0:\"\";}', NULL, 'spip', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spip_auteurs_liens`
--

CREATE TABLE `spip_auteurs_liens` (
  `id_auteur` bigint(21) NOT NULL DEFAULT 0,
  `id_objet` bigint(21) NOT NULL DEFAULT 0,
  `objet` varchar(25) NOT NULL DEFAULT '',
  `vu` varchar(6) NOT NULL DEFAULT 'non'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spip_auteurs_liens`
--

INSERT INTO `spip_auteurs_liens` (`id_auteur`, `id_objet`, `objet`, `vu`) VALUES
(1, 1, 'article', 'non'),
(1, 2, 'article', 'non');

-- --------------------------------------------------------

--
-- Table structure for table `spip_breves`
--

CREATE TABLE `spip_breves` (
  `id_breve` bigint(21) NOT NULL,
  `date_heure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titre` text NOT NULL DEFAULT '',
  `texte` longtext NOT NULL DEFAULT '',
  `lien_titre` text NOT NULL DEFAULT '',
  `lien_url` text NOT NULL DEFAULT '',
  `statut` varchar(6) NOT NULL DEFAULT '0',
  `id_rubrique` bigint(21) NOT NULL DEFAULT 0,
  `lang` varchar(10) NOT NULL DEFAULT '',
  `langue_choisie` varchar(3) DEFAULT 'non',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_depots`
--

CREATE TABLE `spip_depots` (
  `id_depot` bigint(21) NOT NULL,
  `titre` text NOT NULL DEFAULT '',
  `descriptif` text NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `url_serveur` varchar(255) NOT NULL DEFAULT '',
  `url_brouteur` varchar(255) NOT NULL DEFAULT '',
  `url_archives` varchar(255) NOT NULL DEFAULT '',
  `url_commits` varchar(255) NOT NULL DEFAULT '',
  `xml_paquets` varchar(255) NOT NULL DEFAULT '',
  `sha_paquets` varchar(40) NOT NULL DEFAULT '',
  `nbr_paquets` int(11) NOT NULL DEFAULT 0,
  `nbr_plugins` int(11) NOT NULL DEFAULT 0,
  `nbr_autres` int(11) NOT NULL DEFAULT 0,
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_depots_plugins`
--

CREATE TABLE `spip_depots_plugins` (
  `id_depot` bigint(21) NOT NULL,
  `id_plugin` bigint(21) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_documents`
--

CREATE TABLE `spip_documents` (
  `id_document` bigint(21) NOT NULL,
  `id_vignette` bigint(21) NOT NULL DEFAULT 0,
  `extension` varchar(10) NOT NULL DEFAULT '',
  `titre` text NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `descriptif` text NOT NULL DEFAULT '',
  `fichier` text NOT NULL DEFAULT '',
  `taille` bigint(20) DEFAULT NULL,
  `largeur` int(11) DEFAULT NULL,
  `hauteur` int(11) DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `media` varchar(10) NOT NULL DEFAULT 'file',
  `mode` varchar(10) NOT NULL DEFAULT 'document',
  `distant` varchar(3) DEFAULT 'non',
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `credits` text NOT NULL DEFAULT '',
  `date_publication` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `brise` tinyint(4) DEFAULT 0,
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spip_documents`
--

INSERT INTO `spip_documents` (`id_document`, `id_vignette`, `extension`, `titre`, `date`, `descriptif`, `fichier`, `taille`, `largeur`, `hauteur`, `duree`, `media`, `mode`, `distant`, `statut`, `credits`, `date_publication`, `brise`, `maj`) VALUES
(1, 0, 'jpg', '', '2019-09-21 00:57:48', '', 'jpg/bas.jpg', 1199517, 1920, 1280, NULL, 'image', 'image', 'non', 'publie', '', '1969-12-31 19:00:00', 0, '2019-09-21 05:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `spip_documents_liens`
--

CREATE TABLE `spip_documents_liens` (
  `id_document` bigint(21) NOT NULL DEFAULT 0,
  `id_objet` bigint(21) NOT NULL DEFAULT 0,
  `objet` varchar(25) NOT NULL DEFAULT '',
  `vu` enum('non','oui') NOT NULL DEFAULT 'non',
  `rang_lien` int(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spip_documents_liens`
--

INSERT INTO `spip_documents_liens` (`id_document`, `id_objet`, `objet`, `vu`, `rang_lien`) VALUES
(1, 2, 'article', 'non', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spip_forum`
--

CREATE TABLE `spip_forum` (
  `id_forum` bigint(21) NOT NULL,
  `id_objet` bigint(21) NOT NULL DEFAULT 0,
  `objet` varchar(25) NOT NULL DEFAULT '',
  `id_parent` bigint(21) NOT NULL DEFAULT 0,
  `id_thread` bigint(21) NOT NULL DEFAULT 0,
  `date_heure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_thread` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titre` text NOT NULL DEFAULT '',
  `texte` mediumtext NOT NULL DEFAULT '',
  `auteur` text NOT NULL DEFAULT '',
  `email_auteur` text NOT NULL DEFAULT '',
  `nom_site` text NOT NULL DEFAULT '',
  `url_site` text NOT NULL DEFAULT '',
  `statut` varchar(8) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_auteur` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_groupes_mots`
--

CREATE TABLE `spip_groupes_mots` (
  `id_groupe` bigint(21) NOT NULL,
  `titre` text NOT NULL DEFAULT '',
  `descriptif` text NOT NULL DEFAULT '',
  `texte` longtext NOT NULL DEFAULT '',
  `unseul` varchar(3) NOT NULL DEFAULT '',
  `obligatoire` varchar(3) NOT NULL DEFAULT '',
  `tables_liees` text NOT NULL DEFAULT '',
  `minirezo` varchar(3) NOT NULL DEFAULT '',
  `comite` varchar(3) NOT NULL DEFAULT '',
  `forum` varchar(3) NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_jobs`
--

CREATE TABLE `spip_jobs` (
  `id_job` bigint(21) NOT NULL,
  `descriptif` text NOT NULL DEFAULT '',
  `fonction` varchar(255) NOT NULL,
  `args` longblob NOT NULL DEFAULT '',
  `md5args` char(32) NOT NULL DEFAULT '',
  `inclure` varchar(255) NOT NULL,
  `priorite` smallint(6) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spip_jobs`
--

INSERT INTO `spip_jobs` (`id_job`, `descriptif`, `fonction`, `args`, `md5args`, `inclure`, `priorite`, `date`, `status`) VALUES
(54, 'Tâche CRON mise_a_jour (toutes les 259200 s)', 'mise_a_jour', 0x613a313a7b693a303b693a313536393033393634383b7d, 'eee856a06ceff0448a2953fd4b3b09d5', 'genie/', 0, '2019-09-24 00:20:48', 1),
(53, 'CRON task optimiser (every 172800 s)', 'optimiser', 0x613a313a7b693a303b693a313536393035373530373b7d, 'cd794a4bf95947a045c6ce1c91cc6d46', 'genie/', -3, '2019-09-23 05:18:27', 1),
(52, 'CRON task queue_watch (every 86400 s)', 'queue_watch', 0x613a313a7b693a303b693a313536393033393634373b7d, 'd29b72c249fa04670cb59d02fddac84f', 'genie/', 0, '2019-09-22 00:20:47', 1),
(51, 'CRON task optimiser_revisions (every 86400 s)', 'optimiser_revisions', 0x613a313a7b693a303b693a313536393033393634373b7d, 'd29b72c249fa04670cb59d02fddac84f', 'genie/', 0, '2019-09-22 00:20:47', 1),
(66, 'Tâche CRON invalideur (toutes les 600 s)', 'invalideur', 0x613a313a7b693a303b693a313536393035313835353b7d, '90adcac47675f2373612141a2ce71847', 'genie/', 0, '2019-09-21 03:54:15', 1),
(59, 'Tâche CRON maintenance (toutes les 7200 s)', 'maintenance', 0x613a313a7b693a303b693a313536393034363838313b7d, '882446052e201f8f6a4521c1b9f80961', 'genie/', 0, '2019-09-21 04:21:21', 1),
(50, 'CRON task svp_actualiser_depots (every 21600 s)', 'svp_actualiser_depots', 0x613a313a7b693a303b693a313536393033393634373b7d, 'd29b72c249fa04670cb59d02fddac84f', 'genie/', 0, '2019-09-21 06:20:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spip_jobs_liens`
--

CREATE TABLE `spip_jobs_liens` (
  `id_job` bigint(21) NOT NULL DEFAULT 0,
  `id_objet` bigint(21) NOT NULL DEFAULT 0,
  `objet` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_messages`
--

CREATE TABLE `spip_messages` (
  `id_message` bigint(21) NOT NULL,
  `titre` text NOT NULL DEFAULT '',
  `texte` longtext NOT NULL DEFAULT '',
  `type` varchar(6) NOT NULL DEFAULT '',
  `date_heure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_fin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rv` varchar(3) NOT NULL DEFAULT '',
  `statut` varchar(6) NOT NULL DEFAULT '0',
  `id_auteur` bigint(21) NOT NULL DEFAULT 0,
  `destinataires` text NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_meta`
--

CREATE TABLE `spip_meta` (
  `nom` varchar(255) NOT NULL,
  `valeur` text DEFAULT '',
  `impt` enum('non','oui') NOT NULL DEFAULT 'oui',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spip_meta`
--

INSERT INTO `spip_meta` (`nom`, `valeur`, `impt`, `maj`) VALUES
('charset_sql_base', 'utf8', 'non', '2019-09-15 13:47:06'),
('charset_collation_sql_base', 'utf8_general_ci', 'non', '2019-09-15 13:47:06'),
('charset_sql_connexion', 'utf8', 'non', '2019-09-15 13:47:06'),
('version_installee', '23375', 'non', '2019-09-15 13:47:06'),
('nouvelle_install', '1', 'non', '2019-09-15 13:47:06'),
('pcre_u', 'u', 'oui', '2019-09-15 13:47:45'),
('charset', 'utf-8', 'oui', '2019-09-15 13:47:45'),
('alea_ephemere_ancien', 'd085bbf44b78e87e0436013e2e65551b', 'non', '2019-09-21 04:52:12'),
('alea_ephemere', '14e781e3ecc15950920fc6143ebf41ec', 'non', '2019-09-21 04:52:12'),
('alea_ephemere_date', '1569041532', 'non', '2019-09-21 04:52:12'),
('langues_proposees', 'ar,ast,ay,bg,br,bs,ca,co,cpf,cpf_hat,cs,da,de,en,eo,es,eu,fa,fon,fr,fr_fem,gl,he,hr,hu,id,it,it_fem,ja,km,lb,my,nl,oc_auv,oc_gsc,oc_lms,oc_lnc,oc_ni,oc_ni_la,oc_ni_mis,oc_prv,oc_va,pl,pt,pt_br,ro,ru,sk,sv,tr,uk,vi,zh', 'non', '2019-09-15 13:48:27'),
('langue_site', 'fr', 'non', '2019-09-15 13:48:27'),
('email_webmaster', 'skldev7@gmail.com', 'oui', '2019-09-15 13:48:27'),
('nom_site', 'My SPIP site', 'oui', '2019-09-15 13:48:27'),
('slogan_site', '', 'oui', '2019-09-15 13:48:27'),
('adresse_site', 'http://localhost/pvf', 'non', '2019-09-15 13:48:27'),
('descriptif_site', '', 'oui', '2019-09-15 13:48:27'),
('activer_logos', 'oui', 'oui', '2019-09-15 13:48:27'),
('activer_logos_survol', 'non', 'oui', '2019-09-15 13:48:27'),
('articles_surtitre', 'non', 'oui', '2019-09-15 13:48:27'),
('articles_soustitre', 'non', 'oui', '2019-09-15 13:48:27'),
('articles_descriptif', 'non', 'oui', '2019-09-15 13:48:27'),
('articles_chapeau', 'non', 'oui', '2019-09-15 13:48:27'),
('articles_texte', 'oui', 'oui', '2019-09-15 13:48:27'),
('articles_ps', 'non', 'oui', '2019-09-15 13:48:27'),
('articles_redac', 'non', 'oui', '2019-09-15 13:48:27'),
('post_dates', 'non', 'oui', '2019-09-15 13:48:27'),
('articles_urlref', 'non', 'oui', '2019-09-15 13:48:27'),
('articles_redirection', 'non', 'oui', '2019-09-15 13:48:27'),
('creer_preview', 'non', 'non', '2019-09-15 13:48:27'),
('taille_preview', '150', 'non', '2019-09-15 13:48:27'),
('articles_modif', 'non', 'oui', '2019-09-15 13:48:27'),
('rubriques_descriptif', 'non', 'oui', '2019-09-15 13:48:27'),
('rubriques_texte', 'oui', 'oui', '2019-09-15 13:48:27'),
('accepter_inscriptions', 'non', 'oui', '2019-09-15 13:48:27'),
('accepter_visiteurs', 'non', 'oui', '2019-09-15 13:48:27'),
('prevenir_auteurs', 'non', 'oui', '2019-09-15 13:48:27'),
('suivi_edito', 'non', 'oui', '2019-09-15 13:48:27'),
('adresse_suivi', '', 'oui', '2019-09-15 13:48:27'),
('adresse_suivi_inscription', '', 'oui', '2019-09-15 13:48:27'),
('adresse_neuf', '', 'oui', '2019-09-15 13:48:27'),
('jours_neuf', '', 'oui', '2019-09-15 13:48:27'),
('quoi_de_neuf', 'non', 'oui', '2019-09-15 13:48:27'),
('preview', ',0minirezo,1comite,', 'oui', '2019-09-15 13:48:27'),
('syndication_integrale', 'oui', 'oui', '2019-09-15 13:48:27'),
('dir_img', 'IMG/', 'oui', '2019-09-15 13:48:27'),
('multi_rubriques', 'non', 'oui', '2019-09-15 13:48:27'),
('multi_secteurs', 'non', 'oui', '2019-09-15 13:48:27'),
('gerer_trad', 'non', 'oui', '2019-09-15 13:48:27'),
('langues_multilingue', '', 'oui', '2019-09-15 13:48:27'),
('version_html_max', 'html4', 'oui', '2019-09-15 13:48:27'),
('type_urls', 'page', 'oui', '2019-09-15 13:48:27'),
('email_envoi', '', 'oui', '2019-09-15 13:48:27'),
('auto_compress_http', 'non', 'oui', '2019-09-15 13:48:27'),
('mots_cles_forums', 'non', 'oui', '2019-09-15 13:48:27'),
('forums_titre', 'oui', 'oui', '2019-09-15 13:48:27'),
('forums_texte', 'oui', 'oui', '2019-09-15 13:48:27'),
('forums_urlref', 'non', 'oui', '2019-09-15 13:48:27'),
('forums_afficher_barre', 'oui', 'oui', '2019-09-15 13:48:27'),
('forums_forcer_previsu', 'oui', 'oui', '2019-09-15 13:48:27'),
('formats_documents_forum', '', 'oui', '2019-09-15 13:48:27'),
('forums_publics', 'posteriori', 'oui', '2019-09-15 13:48:27'),
('forum_prive', 'oui', 'oui', '2019-09-15 13:48:27'),
('forum_prive_objets', 'oui', 'oui', '2019-09-15 13:48:27'),
('forum_prive_admin', 'non', 'oui', '2019-09-15 13:48:27'),
('articles_mots', 'non', 'oui', '2019-09-15 13:48:27'),
('config_precise_groupes', 'non', 'oui', '2019-09-15 13:48:27'),
('messagerie_agenda', 'oui', 'oui', '2019-09-15 13:48:27'),
('barre_outils_public', 'oui', 'oui', '2019-09-15 13:48:27'),
('objets_versions', 'a:0:{}', 'oui', '2019-09-15 13:48:27'),
('activer_sites', 'non', 'oui', '2019-09-15 13:48:27'),
('proposer_sites', '0', 'oui', '2019-09-15 13:48:27'),
('activer_syndic', 'oui', 'oui', '2019-09-15 13:48:27'),
('moderation_sites', 'non', 'oui', '2019-09-15 13:48:27'),
('activer_statistiques', 'non', 'oui', '2019-09-15 13:48:27'),
('activer_captures_referers', 'non', 'oui', '2019-09-15 13:48:27'),
('activer_referers', 'oui', 'oui', '2019-09-15 13:48:27'),
('activer_breves', 'non', 'oui', '2019-09-15 13:48:27'),
('auto_compress_js', 'non', 'oui', '2019-09-15 13:48:27'),
('auto_compress_css', 'non', 'oui', '2019-09-15 13:48:27'),
('url_statique_ressources', '', 'oui', '2019-09-15 13:48:27'),
('documents_objets', 'spip_articles', 'oui', '2019-09-15 13:48:27'),
('documents_date', 'non', 'oui', '2019-09-15 13:48:27'),
('langues_utilisees', 'fr', 'oui', '2019-09-15 13:48:27'),
('plugin', 'a:81:{s:4:\"SPIP\";a:5:{s:3:\"nom\";s:4:\"SPIP\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"3.2.4\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:0:\"\";}s:4:\"AIDE\";a:5:{s:3:\"nom\";s:9:\"Aide SPIP\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.0.0\";s:3:\"dir\";s:4:\"aide\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:10:\"ARCHIVISTE\";a:5:{s:3:\"nom\";s:10:\"Archiviste\";s:4:\"etat\";s:3:\"dev\";s:7:\"version\";s:5:\"0.2.2\";s:3:\"dir\";s:10:\"archiviste\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:9:\"COMPAGNON\";a:5:{s:3:\"nom\";s:9:\"Compagnon\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.6.1\";s:3:\"dir\";s:9:\"compagnon\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:4:\"DUMP\";a:5:{s:3:\"nom\";s:4:\"Dump\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.8.4\";s:3:\"dir\";s:4:\"dump\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:6:\"IMAGES\";a:5:{s:3:\"nom\";s:6:\"Images\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"2.0.3\";s:3:\"dir\";s:14:\"filtres_images\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:5:\"FORUM\";a:5:{s:3:\"nom\";s:5:\"Forum\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.11.7\";s:3:\"dir\";s:5:\"forum\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:8:\"JQUERYUI\";a:5:{s:3:\"nom\";s:9:\"jQuery UI\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.12.1\";s:3:\"dir\";s:9:\"jquery_ui\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:8:\"MEDIABOX\";a:5:{s:3:\"nom\";s:8:\"MediaBox\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.1.4\";s:3:\"dir\";s:8:\"mediabox\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:4:\"MOTS\";a:5:{s:3:\"nom\";s:4:\"Mots\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"2.8.6\";s:3:\"dir\";s:4:\"mots\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:10:\"ORGANISEUR\";a:5:{s:3:\"nom\";s:10:\"Organiseur\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.2.4\";s:3:\"dir\";s:10:\"organiseur\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:9:\"PETITIONS\";a:5:{s:3:\"nom\";s:10:\"Pétitions\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.6.1\";s:3:\"dir\";s:9:\"petitions\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:4:\"PLAN\";a:5:{s:3:\"nom\";s:35:\"Plan du site dans l’espace privé\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"2.2.5\";s:3:\"dir\";s:4:\"plan\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:11:\"PORTE_PLUME\";a:5:{s:3:\"nom\";s:11:\"Porte plume\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.18.3\";s:3:\"dir\";s:11:\"porte_plume\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:9:\"REVISIONS\";a:5:{s:3:\"nom\";s:10:\"Révisions\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.9.4\";s:3:\"dir\";s:9:\"revisions\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:8:\"SAFEHTML\";a:5:{s:3:\"nom\";s:8:\"SafeHTML\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.5.2\";s:3:\"dir\";s:8:\"safehtml\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:5:\"SITES\";a:5:{s:3:\"nom\";s:5:\"Sites\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.10.3\";s:3:\"dir\";s:5:\"sites\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:23:\"SQUELETTES_PAR_RUBRIQUE\";a:5:{s:3:\"nom\";s:23:\"Squelettes par Rubrique\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.2.1\";s:3:\"dir\";s:23:\"squelettes_par_rubrique\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:5:\"STATS\";a:5:{s:3:\"nom\";s:12:\"Statistiques\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.1.11\";s:3:\"dir\";s:12:\"statistiques\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:3:\"SVP\";a:5:{s:3:\"nom\";s:3:\"SVP\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.3.8\";s:3:\"dir\";s:3:\"svp\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:2:\"TW\";a:5:{s:3:\"nom\";s:19:\"TextWheel pour SPIP\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.5.5\";s:3:\"dir\";s:9:\"textwheel\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:4:\"URLS\";a:5:{s:3:\"nom\";s:13:\"Urls Etendues\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"2.1.7\";s:3:\"dir\";s:13:\"urls_etendues\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:9:\"VERTEBRES\";a:5:{s:3:\"nom\";s:10:\"vertèbres\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.3.2\";s:3:\"dir\";s:9:\"vertebres\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:10:\"ITERATEURS\";a:5:{s:3:\"nom\";s:10:\"iterateurs\";s:7:\"version\";s:5:\"1.0.6\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:18:\"procure:iterateurs\";}s:5:\"QUEUE\";a:5:{s:3:\"nom\";s:5:\"queue\";s:7:\"version\";s:5:\"0.6.8\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:13:\"procure:queue\";}s:6:\"JQUERY\";a:5:{s:3:\"nom\";s:6:\"jquery\";s:7:\"version\";s:5:\"3.2.1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:14:\"procure:jquery\";}s:3:\"PHP\";a:5:{s:3:\"nom\";s:3:\"php\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:11:\"procure:php\";}s:8:\"PHP:CORE\";a:5:{s:3:\"nom\";s:8:\"php:Core\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:16:\"procure:php:Core\";}s:8:\"PHP:DATE\";a:5:{s:3:\"nom\";s:8:\"php:date\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:16:\"procure:php:date\";}s:10:\"PHP:LIBXML\";a:5:{s:3:\"nom\";s:10:\"php:libxml\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:18:\"procure:php:libxml\";}s:11:\"PHP:OPENSSL\";a:5:{s:3:\"nom\";s:11:\"php:openssl\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:19:\"procure:php:openssl\";}s:8:\"PHP:PCRE\";a:5:{s:3:\"nom\";s:8:\"php:pcre\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:16:\"procure:php:pcre\";}s:8:\"PHP:ZLIB\";a:5:{s:3:\"nom\";s:8:\"php:zlib\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:16:\"procure:php:zlib\";}s:10:\"PHP:FILTER\";a:5:{s:3:\"nom\";s:10:\"php:filter\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:18:\"procure:php:filter\";}s:8:\"PHP:HASH\";a:5:{s:3:\"nom\";s:8:\"php:hash\";s:7:\"version\";s:3:\"1.0\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:16:\"procure:php:hash\";}s:14:\"PHP:REFLECTION\";a:5:{s:3:\"nom\";s:14:\"php:Reflection\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:22:\"procure:php:Reflection\";}s:7:\"PHP:SPL\";a:5:{s:3:\"nom\";s:7:\"php:SPL\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:15:\"procure:php:SPL\";}s:10:\"PHP:SODIUM\";a:5:{s:3:\"nom\";s:10:\"php:sodium\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:18:\"procure:php:sodium\";}s:11:\"PHP:SESSION\";a:5:{s:3:\"nom\";s:11:\"php:session\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:19:\"procure:php:session\";}s:12:\"PHP:STANDARD\";a:5:{s:3:\"nom\";s:12:\"php:standard\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:20:\"procure:php:standard\";}s:18:\"PHP:APACHE2HANDLER\";a:5:{s:3:\"nom\";s:18:\"php:apache2handler\";s:7:\"version\";b:0;s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:26:\"procure:php:apache2handler\";}s:11:\"PHP:MYSQLND\";a:5:{s:3:\"nom\";s:11:\"php:mysqlnd\";s:7:\"version\";s:79:\"mysqlnd 5.0.12-dev - 20150407 - $Id: 3591daad22de08524295e1bd073aceeff11e6579 $\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:19:\"procure:php:mysqlnd\";}s:7:\"PHP:PDO\";a:5:{s:3:\"nom\";s:7:\"php:PDO\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:15:\"procure:php:PDO\";}s:7:\"PHP:XML\";a:5:{s:3:\"nom\";s:7:\"php:xml\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:15:\"procure:php:xml\";}s:7:\"PHP:BZ2\";a:5:{s:3:\"nom\";s:7:\"php:bz2\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:15:\"procure:php:bz2\";}s:12:\"PHP:CALENDAR\";a:5:{s:3:\"nom\";s:12:\"php:calendar\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:20:\"procure:php:calendar\";}s:9:\"PHP:CTYPE\";a:5:{s:3:\"nom\";s:9:\"php:ctype\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:17:\"procure:php:ctype\";}s:8:\"PHP:CURL\";a:5:{s:3:\"nom\";s:8:\"php:curl\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:16:\"procure:php:curl\";}s:7:\"PHP:DOM\";a:5:{s:3:\"nom\";s:7:\"php:dom\";s:7:\"version\";s:8:\"20031129\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:15:\"procure:php:dom\";}s:12:\"PHP:MBSTRING\";a:5:{s:3:\"nom\";s:12:\"php:mbstring\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:20:\"procure:php:mbstring\";}s:12:\"PHP:FILEINFO\";a:5:{s:3:\"nom\";s:12:\"php:fileinfo\";s:7:\"version\";s:5:\"1.0.5\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:20:\"procure:php:fileinfo\";}s:7:\"PHP:FTP\";a:5:{s:3:\"nom\";s:7:\"php:ftp\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:15:\"procure:php:ftp\";}s:6:\"PHP:GD\";a:5:{s:3:\"nom\";s:6:\"php:gd\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:14:\"procure:php:gd\";}s:11:\"PHP:GETTEXT\";a:5:{s:3:\"nom\";s:11:\"php:gettext\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:19:\"procure:php:gettext\";}s:9:\"PHP:ICONV\";a:5:{s:3:\"nom\";s:9:\"php:iconv\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:17:\"procure:php:iconv\";}s:8:\"PHP:JSON\";a:5:{s:3:\"nom\";s:8:\"php:json\";s:7:\"version\";s:5:\"1.6.0\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:16:\"procure:php:json\";}s:8:\"PHP:EXIF\";a:5:{s:3:\"nom\";s:8:\"php:exif\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:16:\"procure:php:exif\";}s:10:\"PHP:MYSQLI\";a:5:{s:3:\"nom\";s:10:\"php:mysqli\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:18:\"procure:php:mysqli\";}s:13:\"PHP:PDO_MYSQL\";a:5:{s:3:\"nom\";s:13:\"php:pdo_mysql\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:21:\"procure:php:pdo_mysql\";}s:8:\"PHP:PHAR\";a:5:{s:3:\"nom\";s:8:\"php:Phar\";s:7:\"version\";s:5:\"2.0.2\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:16:\"procure:php:Phar\";}s:9:\"PHP:POSIX\";a:5:{s:3:\"nom\";s:9:\"php:posix\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:17:\"procure:php:posix\";}s:12:\"PHP:READLINE\";a:5:{s:3:\"nom\";s:12:\"php:readline\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:20:\"procure:php:readline\";}s:9:\"PHP:SHMOP\";a:5:{s:3:\"nom\";s:9:\"php:shmop\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:17:\"procure:php:shmop\";}s:13:\"PHP:SIMPLEXML\";a:5:{s:3:\"nom\";s:13:\"php:SimpleXML\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:21:\"procure:php:SimpleXML\";}s:11:\"PHP:SOCKETS\";a:5:{s:3:\"nom\";s:11:\"php:sockets\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:19:\"procure:php:sockets\";}s:11:\"PHP:SYSVMSG\";a:5:{s:3:\"nom\";s:11:\"php:sysvmsg\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:19:\"procure:php:sysvmsg\";}s:11:\"PHP:SYSVSEM\";a:5:{s:3:\"nom\";s:11:\"php:sysvsem\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:19:\"procure:php:sysvsem\";}s:11:\"PHP:SYSVSHM\";a:5:{s:3:\"nom\";s:11:\"php:sysvshm\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:19:\"procure:php:sysvshm\";}s:13:\"PHP:TOKENIZER\";a:5:{s:3:\"nom\";s:13:\"php:tokenizer\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:21:\"procure:php:tokenizer\";}s:8:\"PHP:WDDX\";a:5:{s:3:\"nom\";s:8:\"php:wddx\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:16:\"procure:php:wddx\";}s:13:\"PHP:XMLREADER\";a:5:{s:3:\"nom\";s:13:\"php:xmlreader\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:21:\"procure:php:xmlreader\";}s:13:\"PHP:XMLWRITER\";a:5:{s:3:\"nom\";s:13:\"php:xmlwriter\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:21:\"procure:php:xmlwriter\";}s:7:\"PHP:XSL\";a:5:{s:3:\"nom\";s:7:\"php:xsl\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:15:\"procure:php:xsl\";}s:7:\"PHP:ZIP\";a:5:{s:3:\"nom\";s:7:\"php:zip\";s:7:\"version\";s:6:\"1.15.4\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:15:\"procure:php:zip\";}s:16:\"PHP:ZEND OPCACHE\";a:5:{s:3:\"nom\";s:16:\"php:Zend OPcache\";s:7:\"version\";s:37:\"7.2.21-1+ubuntu18.04.1+deb.sury.org+1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:24:\"procure:php:Zend OPcache\";}s:7:\"MINIDOC\";a:5:{s:3:\"nom\";s:7:\"minidoc\";s:7:\"version\";s:5:\"1.0.3\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";s:3:\"dir\";s:22:\"medias/procure:minidoc\";}s:5:\"ORDOC\";a:5:{s:3:\"nom\";s:5:\"ordoc\";s:7:\"version\";s:5:\"1.1.2\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";s:3:\"dir\";s:20:\"medias/procure:ordoc\";}s:4:\"MEJS\";a:5:{s:3:\"nom\";s:4:\"mejs\";s:7:\"version\";s:5:\"4.2.7\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";s:3:\"dir\";s:19:\"medias/procure:mejs\";}s:6:\"BREVES\";a:5:{s:3:\"nom\";s:7:\"Brèves\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.4.0\";s:3:\"dir\";s:6:\"breves\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:11:\"COMPRESSEUR\";a:5:{s:3:\"nom\";s:11:\"Compresseur\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.12.8\";s:3:\"dir\";s:11:\"compresseur\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:6:\"MEDIAS\";a:5:{s:3:\"nom\";s:6:\"Medias\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:7:\"2.20.30\";s:3:\"dir\";s:6:\"medias\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}}', 'non', '2019-09-15 13:48:27'),
('plugin_attente', 'a:0:{}', 'oui', '2019-09-15 13:48:27'),
('compagnon', 'a:2:{s:6:\"config\";a:1:{s:7:\"activer\";s:3:\"oui\";}i:1;a:3:{s:7:\"accueil\";i:1;s:18:\"accueil_configurer\";i:1;s:19:\"accueil_publication\";i:1;}}', 'oui', '2019-09-16 10:25:57'),
('compagnon_base_version', '1.0.0', 'oui', '2019-09-15 13:48:27'),
('forum_base_version', '1.2.2', 'oui', '2019-09-15 13:48:27'),
('mots_base_version', '2.1.1', 'oui', '2019-09-15 13:48:27'),
('organiseur_base_version', '1.1.2', 'oui', '2019-09-15 13:48:27'),
('petitions_base_version', '1.1.6', 'oui', '2019-09-15 13:48:27'),
('revisions_base_version', '1.2.0', 'oui', '2019-09-15 13:48:27'),
('sites_base_version', '1.1.1', 'oui', '2019-09-15 13:48:27'),
('stats_base_version', '1.0.1', 'oui', '2019-09-15 13:48:27'),
('svp_base_version', '0.5.1', 'oui', '2019-09-15 13:48:27'),
('urls_base_version', '2.0.1', 'oui', '2019-09-15 13:48:27'),
('breves_base_version', '1.0.0', 'oui', '2019-09-15 13:48:27'),
('medias_base_version', '1.3.5', 'oui', '2019-09-15 13:48:27'),
('plugin_installes', 'a:12:{i:0;s:9:\"compagnon\";i:1;s:5:\"forum\";i:2;s:4:\"mots\";i:3;s:10:\"organiseur\";i:4;s:9:\"petitions\";i:5;s:9:\"revisions\";i:6;s:5:\"sites\";i:7;s:12:\"statistiques\";i:8;s:3:\"svp\";i:9;s:13:\"urls_etendues\";i:10;s:6:\"breves\";i:11;s:6:\"medias\";}', 'oui', '2019-09-15 13:48:27'),
('cache_signature', '148da4c1f6648eabd5b165bcedcb70d81e2d12531a278735273e515961827972', 'oui', '2019-09-15 13:48:34'),
('secret_du_site', 'b2b3a38d07d5f9e0c53d72a4e0a22e2c584a6f8274f204d3311f6f2de5941c0b', 'oui', '2019-09-15 13:48:34'),
('sha_256_only', 'oui', 'oui', '2019-09-15 13:48:34'),
('optimiser_table', 'i:3;', 'oui', '2019-09-21 04:20:47'),
('tour_quota_cache', '0', 'oui', '2019-09-21 07:44:15'),
('info_maj_spip', '3.2.4|<a class=\'info_maj_spip\' href=\'https://www.spip.net/fr_update\' title=\'3.2.5\'>La mise à jour 3.2.5 de SPIP est disponible</a>', 'non', '2019-09-21 04:20:48'),
('derniere_modif_rubrique', '1568629894', 'oui', '2019-09-16 10:31:34'),
('derniere_modif', '1569042004', 'oui', '2019-09-21 05:00:04'),
('derniere_modif_article', '1569042004', 'oui', '2019-09-21 05:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `spip_mots`
--

CREATE TABLE `spip_mots` (
  `id_mot` bigint(21) NOT NULL,
  `titre` text NOT NULL DEFAULT '',
  `descriptif` text NOT NULL DEFAULT '',
  `texte` longtext NOT NULL DEFAULT '',
  `id_groupe` bigint(21) NOT NULL DEFAULT 0,
  `type` text NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_mots_liens`
--

CREATE TABLE `spip_mots_liens` (
  `id_mot` bigint(21) NOT NULL DEFAULT 0,
  `id_objet` bigint(21) NOT NULL DEFAULT 0,
  `objet` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_paquets`
--

CREATE TABLE `spip_paquets` (
  `id_paquet` bigint(21) NOT NULL,
  `id_plugin` bigint(21) NOT NULL,
  `prefixe` varchar(30) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(24) NOT NULL DEFAULT '',
  `version_base` varchar(24) NOT NULL DEFAULT '',
  `compatibilite_spip` varchar(24) NOT NULL DEFAULT '',
  `branches_spip` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `auteur` text NOT NULL DEFAULT '',
  `credit` text NOT NULL DEFAULT '',
  `licence` text NOT NULL DEFAULT '',
  `copyright` text NOT NULL DEFAULT '',
  `lien_doc` text NOT NULL DEFAULT '',
  `lien_demo` text NOT NULL DEFAULT '',
  `lien_dev` text NOT NULL DEFAULT '',
  `etat` varchar(16) NOT NULL DEFAULT '',
  `etatnum` int(1) NOT NULL DEFAULT 0,
  `dependances` text NOT NULL DEFAULT '',
  `procure` text NOT NULL DEFAULT '',
  `date_crea` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modif` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_depot` bigint(21) NOT NULL DEFAULT 0,
  `nom_archive` varchar(255) NOT NULL DEFAULT '',
  `nbo_archive` int(11) NOT NULL DEFAULT 0,
  `maj_archive` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `src_archive` varchar(255) NOT NULL DEFAULT '',
  `traductions` text NOT NULL DEFAULT '',
  `actif` varchar(3) NOT NULL DEFAULT 'non',
  `installe` varchar(3) NOT NULL DEFAULT 'non',
  `recent` int(2) NOT NULL DEFAULT 0,
  `maj_version` varchar(255) NOT NULL DEFAULT '',
  `superieur` varchar(3) NOT NULL DEFAULT 'non',
  `obsolete` varchar(3) NOT NULL DEFAULT 'non',
  `attente` varchar(3) NOT NULL DEFAULT 'non',
  `constante` varchar(30) NOT NULL DEFAULT '',
  `signature` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_petitions`
--

CREATE TABLE `spip_petitions` (
  `id_petition` bigint(21) NOT NULL,
  `id_article` bigint(21) NOT NULL DEFAULT 0,
  `email_unique` char(3) NOT NULL DEFAULT '',
  `site_obli` char(3) NOT NULL DEFAULT '',
  `site_unique` char(3) NOT NULL DEFAULT '',
  `message` char(3) NOT NULL DEFAULT '',
  `texte` longtext NOT NULL DEFAULT '',
  `statut` varchar(10) NOT NULL DEFAULT 'publie',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_plugins`
--

CREATE TABLE `spip_plugins` (
  `id_plugin` bigint(21) NOT NULL,
  `prefixe` varchar(30) NOT NULL DEFAULT '',
  `nom` text NOT NULL DEFAULT '',
  `slogan` text NOT NULL DEFAULT '',
  `categorie` varchar(100) NOT NULL DEFAULT '',
  `tags` text NOT NULL DEFAULT '',
  `vmax` varchar(24) NOT NULL DEFAULT '',
  `date_crea` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modif` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `compatibilite_spip` varchar(24) NOT NULL DEFAULT '',
  `branches_spip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_referers`
--

CREATE TABLE `spip_referers` (
  `referer_md5` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `visites` int(10) UNSIGNED NOT NULL,
  `visites_jour` int(10) UNSIGNED NOT NULL,
  `visites_veille` int(10) UNSIGNED NOT NULL,
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_referers_articles`
--

CREATE TABLE `spip_referers_articles` (
  `id_article` int(10) UNSIGNED NOT NULL,
  `referer_md5` bigint(20) UNSIGNED NOT NULL,
  `referer` varchar(255) NOT NULL DEFAULT '',
  `visites` int(10) UNSIGNED NOT NULL,
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_resultats`
--

CREATE TABLE `spip_resultats` (
  `recherche` char(16) NOT NULL DEFAULT '',
  `id` int(10) UNSIGNED NOT NULL,
  `points` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `table_objet` varchar(30) NOT NULL DEFAULT '',
  `serveur` char(16) NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_rubriques`
--

CREATE TABLE `spip_rubriques` (
  `id_rubrique` bigint(21) NOT NULL,
  `id_parent` bigint(21) NOT NULL DEFAULT 0,
  `titre` text NOT NULL DEFAULT '',
  `descriptif` text NOT NULL DEFAULT '',
  `texte` longtext NOT NULL DEFAULT '',
  `id_secteur` bigint(21) NOT NULL DEFAULT 0,
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `langue_choisie` varchar(3) DEFAULT 'non',
  `statut_tmp` varchar(10) NOT NULL DEFAULT '0',
  `date_tmp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `profondeur` smallint(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spip_rubriques`
--

INSERT INTO `spip_rubriques` (`id_rubrique`, `id_parent`, `titre`, `descriptif`, `texte`, `id_secteur`, `maj`, `statut`, `date`, `lang`, `langue_choisie`, `statut_tmp`, `date_tmp`, `profondeur`) VALUES
(1, 0, 'Imyidagaduro', '', '', 1, '2019-09-16 12:18:04', 'publie', '2019-09-16 08:18:04', 'fr', 'non', '0', '0000-00-00 00:00:00', 0),
(2, 0, 'Imikino', '', '', 2, '2019-09-21 05:00:04', 'publie', '2019-09-21 01:00:04', 'fr', 'non', '0', '0000-00-00 00:00:00', 0),
(3, 0, 'Ikoranabuhanga', '', '', 3, '2019-09-16 10:28:04', 'prepa', '0000-00-00 00:00:00', 'fr', 'non', '0', '0000-00-00 00:00:00', 0),
(4, 0, 'Ubukungu', '', '', 4, '2019-09-16 10:28:24', 'prepa', '0000-00-00 00:00:00', 'fr', 'non', '0', '0000-00-00 00:00:00', 0),
(5, 0, 'Ubuzima', '', '', 5, '2019-09-16 10:28:43', 'prepa', '0000-00-00 00:00:00', 'fr', 'non', '0', '0000-00-00 00:00:00', 0),
(6, 0, 'Urukundo', '', '', 6, '2019-09-16 10:29:00', 'prepa', '0000-00-00 00:00:00', 'fr', 'non', '0', '0000-00-00 00:00:00', 0),
(7, 0, 'Iyobokamana', '', '', 7, '2019-09-16 10:29:22', 'prepa', '0000-00-00 00:00:00', 'fr', 'non', '0', '0000-00-00 00:00:00', 0),
(8, 0, 'Cinema', '', '', 8, '2019-09-16 10:29:39', 'prepa', '0000-00-00 00:00:00', 'fr', 'non', '0', '0000-00-00 00:00:00', 0),
(9, 0, 'Uburezi', '', '', 9, '2019-09-16 10:31:15', 'prepa', '0000-00-00 00:00:00', 'fr', 'non', '0', '0000-00-00 00:00:00', 0),
(10, 0, 'Umuco', '', '', 10, '2019-09-16 10:31:34', 'prepa', '0000-00-00 00:00:00', 'fr', 'non', '0', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spip_signatures`
--

CREATE TABLE `spip_signatures` (
  `id_signature` bigint(21) NOT NULL,
  `id_petition` bigint(21) NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nom_email` text NOT NULL DEFAULT '',
  `ad_email` text NOT NULL DEFAULT '',
  `nom_site` text NOT NULL DEFAULT '',
  `url_site` text NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL DEFAULT '',
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_syndic`
--

CREATE TABLE `spip_syndic` (
  `id_syndic` bigint(21) NOT NULL,
  `id_rubrique` bigint(21) NOT NULL DEFAULT 0,
  `id_secteur` bigint(21) NOT NULL DEFAULT 0,
  `nom_site` text NOT NULL DEFAULT '',
  `url_site` text NOT NULL DEFAULT '',
  `url_syndic` text NOT NULL DEFAULT '',
  `descriptif` text NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `syndication` varchar(3) NOT NULL DEFAULT '',
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_syndic` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_index` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `moderation` varchar(3) DEFAULT 'non',
  `miroir` varchar(3) DEFAULT 'non',
  `oubli` varchar(3) DEFAULT 'non',
  `resume` varchar(3) DEFAULT 'oui'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_syndic_articles`
--

CREATE TABLE `spip_syndic_articles` (
  `id_syndic_article` bigint(21) NOT NULL,
  `id_syndic` bigint(21) NOT NULL DEFAULT 0,
  `titre` text NOT NULL DEFAULT '',
  `url` text NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lesauteurs` text NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `descriptif` text NOT NULL DEFAULT '',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `url_source` tinytext NOT NULL DEFAULT '',
  `source` tinytext NOT NULL DEFAULT '',
  `tags` text NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_types_documents`
--

CREATE TABLE `spip_types_documents` (
  `extension` varchar(10) NOT NULL DEFAULT '',
  `titre` text NOT NULL DEFAULT '',
  `descriptif` text NOT NULL DEFAULT '',
  `mime_type` varchar(100) NOT NULL DEFAULT '',
  `inclus` enum('non','image','embed') NOT NULL DEFAULT 'non',
  `upload` enum('oui','non') NOT NULL DEFAULT 'oui',
  `media_defaut` varchar(10) NOT NULL DEFAULT 'file',
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spip_types_documents`
--

INSERT INTO `spip_types_documents` (`extension`, `titre`, `descriptif`, `mime_type`, `inclus`, `upload`, `media_defaut`, `maj`) VALUES
('jpg', 'JPEG', '', 'image/jpeg', 'image', 'oui', 'image', '2019-09-15 13:48:27'),
('png', 'PNG', '', 'image/png', 'image', 'oui', 'image', '2019-09-15 13:48:27'),
('gif', 'GIF', '', 'image/gif', 'image', 'oui', 'image', '2019-09-15 13:48:27'),
('bmp', 'BMP', '', 'image/x-ms-bmp', 'image', 'oui', 'image', '2019-09-15 13:48:27'),
('tif', 'TIFF', '', 'image/tiff', 'embed', 'oui', 'image', '2019-09-15 13:48:27'),
('aac', 'Advanced Audio Coding', '', 'audio/mp4a-latm', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('ac3', 'AC-3 Compressed Audio', '', 'audio/x-aac', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('aifc', 'Compressed AIFF Audio', '', 'audio/x-aifc', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('aiff', 'AIFF', '', 'audio/x-aiff', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('amr', 'Adaptive Multi-Rate Audio', '', 'audio/amr', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('ape', 'Monkey\'s Audio File', '', 'audio/x-monkeys-audio', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('asf', 'Windows Media', '', 'video/x-ms-asf', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('avi', 'AVI', '', 'video/x-msvideo', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('anx', 'Annodex', '', 'application/annodex', 'embed', 'oui', 'file', '2019-09-15 13:48:27'),
('axa', 'Annodex Audio', '', 'audio/annodex', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('axv', 'Annodex Video', '', 'video/annodex', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('dv', 'Digital Video', '', 'video/x-dv', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('f4a', 'Audio for Adobe Flash Player', '', 'audio/mp4', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('f4b', 'Audio Book for Adobe Flash Player', '', 'audio/mp4', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('f4p', 'Protected Video for Adobe Flash Player', '', 'video/mp4', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('f4v', 'Video for Adobe Flash Player', '', 'video/mp4', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('flac', 'Free Lossless Audio Codec', '', 'audio/x-flac', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('flv', 'Flash Video', '', 'video/x-flv', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('m2p', 'MPEG-PS', '', 'video/MP2P', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('m2ts', 'BDAV MPEG-2 Transport Stream', '', 'video/MP2T', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('m4a', 'MPEG4 Audio', '', 'audio/mp4a-latm', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('m4b', 'MPEG4 Audio', '', 'audio/mp4a-latm', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('m4p', 'MPEG4 Audio', '', 'audio/mp4a-latm', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('m4r', 'iPhone Ringtone', '', 'audio/aac', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('m4u', 'MPEG4 Playlist', '', 'video/vnd.mpegurl', 'non', 'oui', 'video', '2019-09-15 13:48:27'),
('m4v', 'MPEG4 Video', '', 'video/x-m4v', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('mid', 'Midi', '', 'audio/midi', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('mka', 'Matroska Audio', '', 'audio/mka', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('mkv', 'Matroska Video', '', 'video/mkv', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('mng', 'MNG', '', 'video/x-mng', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('mov', 'QuickTime', '', 'video/quicktime', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('mp3', 'MP3', '', 'audio/mpeg', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('mp4', 'MPEG4', '', 'application/mp4', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('mpc', 'Musepack', '', 'audio/x-musepack', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('mpg', 'MPEG', '', 'video/mpeg', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('mts', 'AVCHD MPEG-2 transport stream', '', 'video/MP2T', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('oga', 'Ogg Audio', '', 'audio/ogg', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('ogg', 'Ogg Vorbis', '', 'audio/ogg', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('ogv', 'Ogg Video', '', 'video/ogg', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('ogx', 'Ogg Multiplex', '', 'application/ogg', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('qt', 'QuickTime', '', 'video/quicktime', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('ra', 'RealAudio', '', 'audio/x-pn-realaudio', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('ram', 'RealAudio', '', 'audio/x-pn-realaudio', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('rm', 'RealAudio', '', 'audio/x-pn-realaudio', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('spx', 'Ogg Speex', '', 'audio/ogg', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('svg', 'Scalable Vector Graphics', '', 'image/svg+xml', 'embed', 'oui', 'image', '2019-09-15 13:48:27'),
('svgz', 'Compressed Scalable Vector Graphic', '', 'image/svg+xml', 'embed', 'oui', 'image', '2019-09-15 13:48:27'),
('swf', 'Flash', '', 'application/x-shockwave-flash', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('ts', 'MPEG transport stream', '', 'video/MP2T', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('wav', 'WAV', '', 'audio/x-wav', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('webm', 'WebM', '', 'video/webm', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('wma', 'Windows Media Audio', '', 'audio/x-ms-wma', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('wmv', 'Windows Media Video', '', 'video/x-ms-wmv', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('y4m', 'YUV4MPEG2', '', 'video/x-raw-yuv', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('3gp', '3rd Generation Partnership Project', '', 'video/3gpp', 'embed', 'oui', 'video', '2019-09-15 13:48:27'),
('3ga', '3GP Audio File', '', 'audio/3ga', 'embed', 'oui', 'audio', '2019-09-15 13:48:27'),
('7z', '7 Zip', '', 'application/x-7z-compressed', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ai', 'Adobe Illustrator', '', 'application/illustrator', 'non', 'oui', 'image', '2019-09-15 13:48:27'),
('abw', 'Abiword', '', 'application/abiword', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('asx', 'Advanced Stream Redirector', '', 'video/x-ms-asf', 'non', 'oui', 'video', '2019-09-15 13:48:27'),
('bib', 'BibTeX', '', 'application/x-bibtex', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('bin', 'Binary Data', '', 'application/octet-stream', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('blend', 'Blender', '', 'application/x-blender', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('bz2', 'BZip', '', 'application/x-bzip2', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('c', 'C source', '', 'text/x-csrc', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('csl', 'Citation Style Language', '', 'application/xml', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('css', 'Cascading Style Sheet', '', 'text/css', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('csv', 'Comma Separated Values', '', 'text/csv', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('deb', 'Debian', '', 'application/x-debian-package', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('doc', 'Word', '', 'application/msword', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('dot', 'Word Template', '', 'application/msword', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('djvu', 'DjVu', '', 'image/vnd.djvu', 'non', 'oui', 'image', '2019-09-15 13:48:27'),
('dvi', 'LaTeX DVI', '', 'application/x-dvi', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('emf', 'Enhanced Metafile', '', 'image/x-emf', 'non', 'oui', 'image', '2019-09-15 13:48:27'),
('enl', 'EndNote Library', '', 'application/octet-stream', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ens', 'EndNote Style', '', 'application/octet-stream', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('eps', 'PostScript', '', 'application/postscript', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('epub', 'EPUB', '', 'application/epub+zip', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('gpx', 'GPS eXchange Format', '', 'application/gpx+xml', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('gz', 'GZ', '', 'application/x-gzip', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('h', 'C header', '', 'text/x-chdr', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('html', 'HTML', '', 'text/html', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ics', 'iCalendar', '', 'text/calendar', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('jar', 'Java Archive', '', 'application/java-archive', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('json', 'JSON', '', 'application/json', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('kml', 'Keyhole Markup Language', '', 'application/vnd.google-earth.kml+xml', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('kmz', 'Google Earth Placemark File', '', 'application/vnd.google-earth.kmz', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('lyx', 'Lyx file', '', 'application/x-lyx', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('m3u', 'M3U Playlist', '', 'text/plain', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('m3u8', 'M3U8 Playlist', '', 'text/plain', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('mathml', 'MathML', '', 'application/mathml+xml', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('mbtiles', 'MBTiles', '', 'application/x-sqlite3', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('md', 'Markdown Document', '', 'text/x-markdown', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('pas', 'Pascal', '', 'text/x-pascal', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('pdf', 'PDF', '', 'application/pdf', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('pgn', 'Portable Game Notation', '', 'application/x-chess-pgn', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('pls', 'Playlist', '', 'text/plain', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ppt', 'PowerPoint', '', 'application/vnd.ms-powerpoint', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('pot', 'PowerPoint Template', '', 'application/vnd.ms-powerpoint', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ps', 'PostScript', '', 'application/postscript', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('psd', 'Photoshop', '', 'image/x-photoshop', 'non', 'oui', 'image', '2019-09-15 13:48:27'),
('rar', 'WinRAR', '', 'application/x-rar-compressed', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('rdf', 'Resource Description Framework', '', 'application/rdf+xml', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ris', 'RIS', '', 'application/x-research-info-systems', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('rpm', 'RedHat/Mandrake/SuSE', '', 'application/x-redhat-package-manager', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('rtf', 'RTF', '', 'application/rtf', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('sdc', 'StarOffice Spreadsheet', '', 'application/vnd.stardivision.calc', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('sdd', 'StarOffice Presentation', '', 'application/vnd.stardivision.impress', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('sdw', 'StarOffice Writer document', '', 'application/vnd.stardivision.writer', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('sit', 'Stuffit', '', 'application/x-stuffit', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('sla', 'Scribus', '', 'application/x-scribus', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('srt', 'SubRip Subtitle', '', 'text/plain', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ssa', 'SubStation Alpha Subtitle', '', 'text/plain', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('sxc', 'OpenOffice.org Calc', '', 'application/vnd.sun.xml.calc', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('sxi', 'OpenOffice.org Impress', '', 'application/vnd.sun.xml.impress', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('sxw', 'OpenOffice.org', '', 'application/vnd.sun.xml.writer', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('tar', 'Tar', '', 'application/x-tar', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('tex', 'LaTeX', '', 'text/x-tex', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('tgz', 'TGZ', '', 'application/x-gtar', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('torrent', 'BitTorrent', '', 'application/x-bittorrent', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ttf', 'TTF Font', '', 'application/x-font-ttf', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('txt', 'Texte', '', 'text/plain', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('usf', 'Universal Subtitle Format', '', 'application/xml', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('vcf', 'vCard', '', 'text/vcard', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xcf', 'GIMP multi-layer', '', 'application/x-xcf', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xls', 'Excel', '', 'application/vnd.ms-excel', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xlt', 'Excel Template', '', 'application/vnd.ms-excel', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('wmf', 'Windows Metafile', '', 'image/x-emf', 'non', 'oui', 'image', '2019-09-15 13:48:27'),
('wpl', 'Windows Media Player Playlist', '', 'application/vnd.ms-wpl', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xspf', 'XSPF', '', 'application/xspf+xml', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xml', 'XML', '', 'application/xml', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('yaml', 'YAML', '', 'text/yaml', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('zip', 'Zip', '', 'application/zip', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('odt', 'OpenDocument Text', '', 'application/vnd.oasis.opendocument.text', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ods', 'OpenDocument Spreadsheet', '', 'application/vnd.oasis.opendocument.spreadsheet', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('odp', 'OpenDocument Presentation', '', 'application/vnd.oasis.opendocument.presentation', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('odg', 'OpenDocument Graphics', '', 'application/vnd.oasis.opendocument.graphics', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('odc', 'OpenDocument Chart', '', 'application/vnd.oasis.opendocument.chart', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('odf', 'OpenDocument Formula', '', 'application/vnd.oasis.opendocument.formula', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('odb', 'OpenDocument Database', '', 'application/vnd.oasis.opendocument.database', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('odi', 'OpenDocument Image', '', 'application/vnd.oasis.opendocument.image', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('odm', 'OpenDocument Text-master', '', 'application/vnd.oasis.opendocument.text-master', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ott', 'OpenDocument Text-template', '', 'application/vnd.oasis.opendocument.text-template', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ots', 'OpenDocument Spreadsheet-template', '', 'application/vnd.oasis.opendocument.spreadsheet-template', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('otp', 'OpenDocument Presentation-template', '', 'application/vnd.oasis.opendocument.presentation-template', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('otg', 'OpenDocument Graphics-template', '', 'application/vnd.oasis.opendocument.graphics-template', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('cls', 'LaTeX Class', '', 'text/x-tex', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('sty', 'LaTeX Style Sheet', '', 'text/x-tex', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('docm', 'Word', '', 'application/vnd.ms-word.document.macroEnabled.12', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('docx', 'Word', '', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('dotm', 'Word template', '', 'application/vnd.ms-word.template.macroEnabled.12', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('dotx', 'Word template', '', 'application/vnd.openxmlformats-officedocument.wordprocessingml.template', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('potm', 'Powerpoint template', '', 'application/vnd.ms-powerpoint.template.macroEnabled.12', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('potx', 'Powerpoint template', '', 'application/vnd.openxmlformats-officedocument.presentationml.template', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ppam', 'Powerpoint addin', '', 'application/vnd.ms-powerpoint.addin.macroEnabled.12', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ppsm', 'Powerpoint slideshow', '', 'application/vnd.ms-powerpoint.slideshow.macroEnabled.12', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('ppsx', 'Powerpoint slideshow', '', 'application/vnd.openxmlformats-officedocument.presentationml.slideshow', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('pptm', 'Powerpoint', '', 'application/vnd.ms-powerpoint.presentation.macroEnabled.12', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('pptx', 'Powerpoint', '', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xlam', 'Excel', '', 'application/vnd.ms-excel.addin.macroEnabled.12', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xlsb', 'Excel binary', '', 'application/vnd.ms-excel.sheet.binary.macroEnabled.12', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xlsm', 'Excel', '', 'application/vnd.ms-excel.sheet.macroEnabled.12', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xlsx', 'Excel', '', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xltm', 'Excel template', '', 'application/vnd.ms-excel.template.macroEnabled.12', 'non', 'oui', 'file', '2019-09-15 13:48:27'),
('xltx', 'Excel template', '', 'application/vnd.openxmlformats-officedocument.spreadsheetml.template', 'non', 'oui', 'file', '2019-09-15 13:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `spip_urls`
--

CREATE TABLE `spip_urls` (
  `id_parent` bigint(21) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'article',
  `id_objet` bigint(21) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `segments` smallint(3) NOT NULL DEFAULT 1,
  `perma` tinyint(1) NOT NULL DEFAULT 0,
  `langue` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_versions`
--

CREATE TABLE `spip_versions` (
  `id_version` bigint(21) NOT NULL DEFAULT 0,
  `id_objet` bigint(21) NOT NULL DEFAULT 0,
  `objet` varchar(25) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_auteur` varchar(23) NOT NULL DEFAULT '',
  `titre_version` text NOT NULL DEFAULT '',
  `permanent` char(3) NOT NULL DEFAULT '',
  `champs` text NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_versions_fragments`
--

CREATE TABLE `spip_versions_fragments` (
  `id_fragment` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version_min` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version_max` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_objet` bigint(21) NOT NULL,
  `objet` varchar(25) NOT NULL DEFAULT '',
  `compress` tinyint(4) NOT NULL,
  `fragment` longblob DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_visites`
--

CREATE TABLE `spip_visites` (
  `date` date NOT NULL,
  `visites` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spip_visites_articles`
--

CREATE TABLE `spip_visites_articles` (
  `date` date NOT NULL,
  `id_article` int(10) UNSIGNED NOT NULL,
  `visites` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `spip_articles`
--
ALTER TABLE `spip_articles`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_rubrique` (`id_rubrique`),
  ADD KEY `id_secteur` (`id_secteur`),
  ADD KEY `id_trad` (`id_trad`),
  ADD KEY `lang` (`lang`),
  ADD KEY `statut` (`statut`,`date`);

--
-- Indexes for table `spip_auteurs`
--
ALTER TABLE `spip_auteurs`
  ADD PRIMARY KEY (`id_auteur`),
  ADD KEY `login` (`login`),
  ADD KEY `statut` (`statut`),
  ADD KEY `en_ligne` (`en_ligne`);

--
-- Indexes for table `spip_auteurs_liens`
--
ALTER TABLE `spip_auteurs_liens`
  ADD PRIMARY KEY (`id_auteur`,`id_objet`,`objet`),
  ADD KEY `id_auteur` (`id_auteur`),
  ADD KEY `id_objet` (`id_objet`),
  ADD KEY `objet` (`objet`);

--
-- Indexes for table `spip_breves`
--
ALTER TABLE `spip_breves`
  ADD PRIMARY KEY (`id_breve`),
  ADD KEY `id_rubrique` (`id_rubrique`);

--
-- Indexes for table `spip_depots`
--
ALTER TABLE `spip_depots`
  ADD PRIMARY KEY (`id_depot`);

--
-- Indexes for table `spip_depots_plugins`
--
ALTER TABLE `spip_depots_plugins`
  ADD PRIMARY KEY (`id_depot`,`id_plugin`);

--
-- Indexes for table `spip_documents`
--
ALTER TABLE `spip_documents`
  ADD PRIMARY KEY (`id_document`),
  ADD KEY `id_vignette` (`id_vignette`),
  ADD KEY `mode` (`mode`),
  ADD KEY `extension` (`extension`);

--
-- Indexes for table `spip_documents_liens`
--
ALTER TABLE `spip_documents_liens`
  ADD PRIMARY KEY (`id_document`,`id_objet`,`objet`),
  ADD KEY `id_document` (`id_document`),
  ADD KEY `id_objet` (`id_objet`),
  ADD KEY `objet` (`objet`);

--
-- Indexes for table `spip_forum`
--
ALTER TABLE `spip_forum`
  ADD PRIMARY KEY (`id_forum`),
  ADD KEY `id_auteur` (`id_auteur`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `id_thread` (`id_thread`),
  ADD KEY `optimal` (`statut`,`id_parent`,`id_objet`,`objet`,`date_heure`);

--
-- Indexes for table `spip_groupes_mots`
--
ALTER TABLE `spip_groupes_mots`
  ADD PRIMARY KEY (`id_groupe`);

--
-- Indexes for table `spip_jobs`
--
ALTER TABLE `spip_jobs`
  ADD PRIMARY KEY (`id_job`),
  ADD KEY `date` (`date`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `spip_jobs_liens`
--
ALTER TABLE `spip_jobs_liens`
  ADD PRIMARY KEY (`id_job`,`id_objet`,`objet`),
  ADD KEY `id_job` (`id_job`);

--
-- Indexes for table `spip_messages`
--
ALTER TABLE `spip_messages`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `id_auteur` (`id_auteur`);

--
-- Indexes for table `spip_meta`
--
ALTER TABLE `spip_meta`
  ADD PRIMARY KEY (`nom`);

--
-- Indexes for table `spip_mots`
--
ALTER TABLE `spip_mots`
  ADD PRIMARY KEY (`id_mot`),
  ADD KEY `id_groupe` (`id_groupe`);

--
-- Indexes for table `spip_mots_liens`
--
ALTER TABLE `spip_mots_liens`
  ADD PRIMARY KEY (`id_mot`,`id_objet`,`objet`),
  ADD KEY `id_mot` (`id_mot`),
  ADD KEY `id_objet` (`id_objet`),
  ADD KEY `objet` (`objet`);

--
-- Indexes for table `spip_paquets`
--
ALTER TABLE `spip_paquets`
  ADD PRIMARY KEY (`id_paquet`),
  ADD KEY `id_plugin` (`id_plugin`);

--
-- Indexes for table `spip_petitions`
--
ALTER TABLE `spip_petitions`
  ADD PRIMARY KEY (`id_petition`),
  ADD UNIQUE KEY `id_article` (`id_article`);

--
-- Indexes for table `spip_plugins`
--
ALTER TABLE `spip_plugins`
  ADD PRIMARY KEY (`id_plugin`),
  ADD KEY `prefixe` (`prefixe`);

--
-- Indexes for table `spip_referers`
--
ALTER TABLE `spip_referers`
  ADD PRIMARY KEY (`referer_md5`);

--
-- Indexes for table `spip_referers_articles`
--
ALTER TABLE `spip_referers_articles`
  ADD PRIMARY KEY (`id_article`,`referer_md5`),
  ADD KEY `referer_md5` (`referer_md5`);

--
-- Indexes for table `spip_rubriques`
--
ALTER TABLE `spip_rubriques`
  ADD PRIMARY KEY (`id_rubrique`),
  ADD KEY `lang` (`lang`),
  ADD KEY `id_parent` (`id_parent`);

--
-- Indexes for table `spip_signatures`
--
ALTER TABLE `spip_signatures`
  ADD PRIMARY KEY (`id_signature`),
  ADD KEY `id_petition` (`id_petition`),
  ADD KEY `statut` (`statut`);

--
-- Indexes for table `spip_syndic`
--
ALTER TABLE `spip_syndic`
  ADD PRIMARY KEY (`id_syndic`),
  ADD KEY `id_rubrique` (`id_rubrique`),
  ADD KEY `id_secteur` (`id_secteur`),
  ADD KEY `statut` (`statut`,`date_syndic`);

--
-- Indexes for table `spip_syndic_articles`
--
ALTER TABLE `spip_syndic_articles`
  ADD PRIMARY KEY (`id_syndic_article`),
  ADD KEY `id_syndic` (`id_syndic`),
  ADD KEY `statut` (`statut`),
  ADD KEY `url` (`url`(255));

--
-- Indexes for table `spip_types_documents`
--
ALTER TABLE `spip_types_documents`
  ADD PRIMARY KEY (`extension`),
  ADD KEY `inclus` (`inclus`);

--
-- Indexes for table `spip_urls`
--
ALTER TABLE `spip_urls`
  ADD PRIMARY KEY (`id_parent`,`url`),
  ADD KEY `type` (`type`,`id_objet`),
  ADD KEY `langue` (`langue`),
  ADD KEY `url` (`url`);

--
-- Indexes for table `spip_versions`
--
ALTER TABLE `spip_versions`
  ADD PRIMARY KEY (`id_version`,`id_objet`,`objet`),
  ADD KEY `id_version` (`id_version`),
  ADD KEY `id_objet` (`id_objet`),
  ADD KEY `objet` (`objet`);

--
-- Indexes for table `spip_versions_fragments`
--
ALTER TABLE `spip_versions_fragments`
  ADD PRIMARY KEY (`id_objet`,`objet`,`id_fragment`,`version_min`);

--
-- Indexes for table `spip_visites`
--
ALTER TABLE `spip_visites`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `spip_visites_articles`
--
ALTER TABLE `spip_visites_articles`
  ADD PRIMARY KEY (`date`,`id_article`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `spip_articles`
--
ALTER TABLE `spip_articles`
  MODIFY `id_article` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `spip_auteurs`
--
ALTER TABLE `spip_auteurs`
  MODIFY `id_auteur` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `spip_breves`
--
ALTER TABLE `spip_breves`
  MODIFY `id_breve` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_depots`
--
ALTER TABLE `spip_depots`
  MODIFY `id_depot` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_documents`
--
ALTER TABLE `spip_documents`
  MODIFY `id_document` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `spip_forum`
--
ALTER TABLE `spip_forum`
  MODIFY `id_forum` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_groupes_mots`
--
ALTER TABLE `spip_groupes_mots`
  MODIFY `id_groupe` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_jobs`
--
ALTER TABLE `spip_jobs`
  MODIFY `id_job` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `spip_messages`
--
ALTER TABLE `spip_messages`
  MODIFY `id_message` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_mots`
--
ALTER TABLE `spip_mots`
  MODIFY `id_mot` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_paquets`
--
ALTER TABLE `spip_paquets`
  MODIFY `id_paquet` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_petitions`
--
ALTER TABLE `spip_petitions`
  MODIFY `id_petition` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_plugins`
--
ALTER TABLE `spip_plugins`
  MODIFY `id_plugin` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_rubriques`
--
ALTER TABLE `spip_rubriques`
  MODIFY `id_rubrique` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `spip_signatures`
--
ALTER TABLE `spip_signatures`
  MODIFY `id_signature` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_syndic`
--
ALTER TABLE `spip_syndic`
  MODIFY `id_syndic` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spip_syndic_articles`
--
ALTER TABLE `spip_syndic_articles`
  MODIFY `id_syndic_article` bigint(21) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
