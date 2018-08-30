-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-08-2018 a las 22:50:28
-- Versión del servidor: 5.6.34-log
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `deployment`
--
CREATE DATABASE IF NOT EXISTS `deployment` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `deployment`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_cf7dbplugin_submits`
--

CREATE TABLE `dl_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_commentmeta`
--

CREATE TABLE `dl_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_comments`
--

CREATE TABLE `dl_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_comments`
--

INSERT INTO `dl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-28 23:02:20', '2018-08-28 23:02:20', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_links`
--

CREATE TABLE `dl_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_options`
--

CREATE TABLE `dl_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_options`
--

INSERT INTO `dl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080', 'yes'),
(2, 'home', 'http://localhost:8080', 'yes'),
(3, 'blogname', 'Deployment', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'imnatuu@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"portfolio/?$\";s:29:\"index.php?post_type=portfolio\";s:42:\"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:37:\"portfolio/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:29:\"portfolio/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=portfolio&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"portfolio/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"portfolio/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"portfolio/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"portfolio/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"portfolio/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"portfolio/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"portfolio/(.+?)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:28:\"portfolio/(.+?)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:48:\"portfolio/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:43:\"portfolio/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:36:\"portfolio/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:43:\"portfolio/(.+?)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/(.+?)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'genesis', 'yes'),
(41, 'stylesheet', 'executive', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'dl_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"header-right\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"home-slider\";a:0:{}s:8:\"home-top\";a:0:{}s:8:\"home-cta\";a:0:{}s:11:\"home-middle\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:3:{i:1535670142;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1535670213;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(121, '_site_transient_timeout_browser_01fe6d96f512df15cc1b10345d6b37d9', '1536102155', 'no'),
(122, '_site_transient_browser_01fe6d96f512df15cc1b10345d6b37d9', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, 'can_compress_scripts', '0', 'no'),
(141, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1535669386;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(142, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1535669394;s:7:\"checked\";a:9:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.3\";s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";s:5:\"2.6.3\";s:53:\"genesis-favicon-uploader/genesis-favicon-uploader.php\";s:5:\".1.1b\";s:55:\"genesis-responsive-slider/genesis-responsive-slider.php\";s:5:\"0.9.6\";s:31:\"genesis-simple-edits/plugin.php\";s:5:\"2.2.1\";s:9:\"hello.php\";s:3:\"1.6\";s:37:\"post-types-order/post-types-order.php\";s:7:\"1.9.3.9\";s:39:\"underconstruction/underConstruction.php\";s:4:\"1.18\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"genesis-favicon-uploader/genesis-favicon-uploader.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/genesis-favicon-uploader\";s:4:\"slug\";s:24:\"genesis-favicon-uploader\";s:6:\"plugin\";s:53:\"genesis-favicon-uploader/genesis-favicon-uploader.php\";s:11:\"new_version\";s:5:\".1.1b\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/genesis-favicon-uploader/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/genesis-favicon-uploader.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:68:\"https://s.w.org/plugins/geopattern-icon/genesis-favicon-uploader.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:55:\"genesis-responsive-slider/genesis-responsive-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/genesis-responsive-slider\";s:4:\"slug\";s:25:\"genesis-responsive-slider\";s:6:\"plugin\";s:55:\"genesis-responsive-slider/genesis-responsive-slider.php\";s:11:\"new_version\";s:5:\"0.9.6\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/genesis-responsive-slider/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/genesis-responsive-slider.0.9.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/genesis-responsive-slider/assets/icon-256x256.png?rev=1335672\";s:2:\"1x\";s:78:\"https://ps.w.org/genesis-responsive-slider/assets/icon-128x128.png?rev=1335672\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/genesis-responsive-slider/assets/banner-1544x500.png?rev=1335672\";s:2:\"1x\";s:80:\"https://ps.w.org/genesis-responsive-slider/assets/banner-772x250.png?rev=1335672\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"genesis-simple-edits/plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/genesis-simple-edits\";s:4:\"slug\";s:20:\"genesis-simple-edits\";s:6:\"plugin\";s:31:\"genesis-simple-edits/plugin.php\";s:11:\"new_version\";s:5:\"2.2.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/genesis-simple-edits/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/genesis-simple-edits.2.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/genesis-simple-edits/assets/icon-256x256.png?rev=1335665\";s:2:\"1x\";s:73:\"https://ps.w.org/genesis-simple-edits/assets/icon-128x128.png?rev=1335665\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/genesis-simple-edits/assets/banner-1544x500.png?rev=1335665\";s:2:\"1x\";s:75:\"https://ps.w.org/genesis-simple-edits/assets/banner-772x250.png?rev=1335665\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:7:\"1.9.3.9\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/post-types-order.1.9.3.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"underconstruction/underConstruction.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/underconstruction\";s:4:\"slug\";s:17:\"underconstruction\";s:6:\"plugin\";s:39:\"underconstruction/underConstruction.php\";s:11:\"new_version\";s:4:\"1.18\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/underconstruction/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/underconstruction.1.18.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/underconstruction/assets/icon-256x256.png?rev=1193449\";s:2:\"1x\";s:70:\"https://ps.w.org/underconstruction/assets/icon-128x128.png?rev=1193449\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/underconstruction/assets/banner-772x250.png?rev=1193449\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(146, 'recently_activated', 'a:0:{}', 'yes'),
(147, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1535497621;s:7:\"version\";s:5:\"5.0.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(148, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(149, 'CF7DBPlugin__version', '2.6.3', 'yes'),
(150, 'CF7DBPlugin__installed', '1', 'yes'),
(151, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535497677;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(153, 'current_theme', 'Executive Child Theme', 'yes'),
(154, 'theme_mods_executive', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(156, 'widget_featured-page', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'widget_featured-post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(158, 'widget_user-profile', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(159, 'genesis-settings', 'a:38:{s:6:\"update\";i:1;s:12:\"update_email\";i:0;s:20:\"update_email_address\";s:0:\"\";s:10:\"blog_title\";s:4:\"text\";s:15:\"style_selection\";s:0:\"\";s:11:\"site_layout\";s:8:\"nolayout\";s:9:\"superfish\";i:0;s:10:\"nav_extras\";s:0:\"\";s:21:\"nav_extras_twitter_id\";s:0:\"\";s:23:\"nav_extras_twitter_text\";s:20:\"Follow me on Twitter\";s:8:\"feed_uri\";s:0:\"\";s:13:\"redirect_feed\";i:0;s:17:\"comments_feed_uri\";s:0:\"\";s:22:\"redirect_comments_feed\";i:0;s:14:\"comments_pages\";i:0;s:14:\"comments_posts\";i:1;s:16:\"trackbacks_pages\";i:0;s:16:\"trackbacks_posts\";i:1;s:15:\"breadcrumb_home\";i:0;s:21:\"breadcrumb_front_page\";i:0;s:21:\"breadcrumb_posts_page\";i:0;s:17:\"breadcrumb_single\";i:0;s:15:\"breadcrumb_page\";i:0;s:18:\"breadcrumb_archive\";i:0;s:14:\"breadcrumb_404\";i:0;s:21:\"breadcrumb_attachment\";i:0;s:15:\"content_archive\";s:4:\"full\";s:25:\"content_archive_thumbnail\";i:0;s:10:\"image_size\";s:0:\"\";s:9:\"posts_nav\";s:7:\"numeric\";s:8:\"blog_cat\";i:0;s:16:\"blog_cat_exclude\";s:0:\"\";s:12:\"blog_cat_num\";i:10;s:14:\"header_scripts\";s:0:\"\";s:14:\"footer_scripts\";s:0:\"\";s:13:\"theme_version\";s:5:\"2.0.2\";s:10:\"db_version\";i:2008;s:21:\"content_archive_limit\";i:0;}', 'yes'),
(160, 'genesis-seo-settings', 'a:31:{s:17:\"semantic_headings\";i:1;s:13:\"publisher_uri\";s:0:\"\";s:17:\"append_site_title\";i:0;s:12:\"doctitle_sep\";s:3:\"–\";s:20:\"doctitle_seplocation\";s:5:\"right\";s:23:\"append_description_home\";i:1;s:10:\"home_h1_on\";s:5:\"title\";s:13:\"home_doctitle\";s:0:\"\";s:16:\"home_description\";s:0:\"\";s:13:\"home_keywords\";s:0:\"\";s:12:\"home_noindex\";i:0;s:13:\"home_nofollow\";i:0;s:14:\"home_noarchive\";i:0;s:18:\"canonical_archives\";i:1;s:28:\"head_adjacent_posts_rel_link\";i:0;s:21:\"head_wlwmanifest_link\";i:0;s:14:\"head_shortlink\";i:0;s:19:\"noindex_cat_archive\";i:1;s:19:\"noindex_tag_archive\";i:1;s:22:\"noindex_author_archive\";i:1;s:20:\"noindex_date_archive\";i:1;s:22:\"noindex_search_archive\";i:1;s:21:\"noarchive_cat_archive\";i:0;s:21:\"noarchive_tag_archive\";i:0;s:24:\"noarchive_author_archive\";i:0;s:22:\"noarchive_date_archive\";i:0;s:24:\"noarchive_search_archive\";i:0;s:9:\"noarchive\";i:0;s:5:\"noodp\";i:1;s:6:\"noydir\";i:1;s:11:\"home_author\";i:0;}', 'yes'),
(164, '_transient_timeout_genesis-update', '1535755786', 'no'),
(165, '_transient_genesis-update', 'a:5:{s:5:\"theme\";s:7:\"genesis\";s:11:\"new_version\";s:5:\"2.6.1\";s:3:\"url\";s:41:\"https://my.studiopress.com/themes/genesis\";s:7:\"package\";s:61:\"https://www.genesistheme.com/download/?file=genesis.2.6.1.zip\";s:13:\"changelog_url\";s:54:\"https://www.genesistheme.com/changelog/?TB_iframe=true\";}', 'no'),
(167, '_site_transient_timeout_theme_roots', '1535671191', 'no'),
(168, '_site_transient_theme_roots', 'a:2:{s:9:\"executive\";s:7:\"/themes\";s:7:\"genesis\";s:7:\"/themes\";}', 'no'),
(169, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1535669394;s:7:\"checked\";a:2:{s:9:\"executive\";s:3:\"2.0\";s:7:\"genesis\";s:5:\"2.0.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_postmeta`
--

CREATE TABLE `dl_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_postmeta`
--

INSERT INTO `dl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> Tu nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu correo electrónico (requerido)\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Tu mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:27:\"Deployment \"[your-subject]\"\";s:6:\"sender\";s:31:\"[your-name] <imnatuu@gmail.com>\";s:4:\"body\";s:191:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Deployment (http://localhost:8080)\";s:9:\"recipient\";s:17:\"imnatuu@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"Deployment \"[your-subject]\"\";s:6:\"sender\";s:30:\"Deployment <imnatuu@gmail.com>\";s:4:\"body\";s:136:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Deployment (http://localhost:8080)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:27:\"Reply-To: imnatuu@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:74:\"Uno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\";s:4:\"spam\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'es_ES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_posts`
--

CREATE TABLE `dl_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_posts`
--

INSERT INTO `dl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-28 23:02:20', '2018-08-28 23:02:20', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2018-08-28 23:02:20', '2018-08-28 23:02:20', '', 0, 'http://localhost:8080/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-28 23:02:20', '2018-08-28 23:02:20', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8080/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2018-08-28 23:02:20', '2018-08-28 23:02:20', '', 0, 'http://localhost:8080/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-28 23:02:20', '2018-08-28 23:02:20', '<h2>Who we are</h2><p>Our website address is: http://localhost:8080.</p><h2>What personal data we collect and why we collect it</h2><h3>Comentarios</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Medios</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-28 23:02:20', '2018-08-28 23:02:20', '', 0, 'http://localhost:8080/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-08-28 23:02:36', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-28 23:02:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/?p=4', 0, 'post', '', 0),
(5, 1, '2018-08-28 23:07:01', '2018-08-28 23:07:01', '<label> Tu nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu correo electrónico (requerido)\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Tu mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]\nDeployment \"[your-subject]\"\n[your-name] <imnatuu@gmail.com>\nDe: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Deployment (http://localhost:8080)\nimnatuu@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nDeployment \"[your-subject]\"\nDeployment <imnatuu@gmail.com>\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Deployment (http://localhost:8080)\n[your-email]\nReply-To: imnatuu@gmail.com\n\n0\n0\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2018-08-28 23:07:01', '2018-08-28 23:07:01', '', 0, 'http://localhost:8080/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_term_relationships`
--

CREATE TABLE `dl_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_term_relationships`
--

INSERT INTO `dl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_term_taxonomy`
--

CREATE TABLE `dl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_term_taxonomy`
--

INSERT INTO `dl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_termmeta`
--

CREATE TABLE `dl_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_terms`
--

CREATE TABLE `dl_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_terms`
--

INSERT INTO `dl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_usermeta`
--

CREATE TABLE `dl_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_usermeta`
--

INSERT INTO `dl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'lawrenette'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'dl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'dl_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"fcb85ef5016dd485b9d8d078c69adb0297f056de38d00d4769361f0ba6c3e1cc\";a:4:{s:10:\"expiration\";i:1535670154;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535497354;}}'),
(17, 1, 'dl_user-settings', 'mfold=o'),
(18, 1, 'dl_user-settings-time', '1535497350'),
(19, 1, 'dl_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_users`
--

CREATE TABLE `dl_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_users`
--

INSERT INTO `dl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lawrenette', '$P$BBSh7g8ApNNNe/lfnDJZOWmeky9XyC1', 'lawrenette', 'imnatuu@gmail.com', '', '2018-08-28 23:02:20', '', 0, 'lawrenette');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_cf7dbplugin_submits`
--

CREATE TABLE `wp_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `wp_cf7dbplugin_submits`
--

INSERT INTO `wp_cf7dbplugin_submits` (`submit_time`, `form_name`, `field_name`, `field_value`, `field_order`, `file`) VALUES
(1411874225.6600, 'Visita', 'your-name', 'Tamara  Godos', 0, NULL),
(1411874225.6600, 'Visita', 'your-email', 'tami.godos@niasalondebelleza.cl', 1, NULL),
(1411874225.6600, 'Visita', 'fono', '2761 46 62.', 2, NULL),
(1411874225.6600, 'Visita', 'date-135', '2014-09-29', 3, NULL),
(1411874225.6600, 'Visita', 'your-message', 'Hola \n\nMe pueden visitar  en mi negocio NIA, queda en Av. Padre Hurtado Central 781, Las Condes, Santiago,  16:00hrs.\n\nEspero su confirmación.', 4, NULL),
(1411874225.6600, 'Visita', 'Submitted From', '201.220.243.250', 10000, NULL),
(1443784166.0000, 'Contacto', 'your-name', 'nike tn pas cher', 0, NULL),
(1443784166.0000, 'Contacto', 'your-email', 'qcrhbfst@gmail.com', 1, NULL),
(1443784166.0000, 'Contacto', 'your-subject', 'nike tn pas cher', 2, NULL),
(1443784166.0000, 'Contacto', 'your-message', 'Hello Jacque<br />I way too are already looking at different alterations with Workboxes but have made a decision having our old children that they can may need the bodily keepsake, that they can work effectively coming from a listing (at a few step little ones need to move to some to-do list). I actually do obtain one issue nevertheless that I haven\'t became all around to wondering any individual consequently Factors . ask you. When you fully grasp this program up and running I may be interested to know the time00 you will need in order to fill the particular bins each night? Adore to notice back of your mouth thoughts is broken upwards as well as going on.\r\n <a href=\"http://www.minutesfromnowhere.com/wp-content/tmp/index.php?ID=160\" >nike tn pas cher</a> [url=http://www.minutesfromnowhere.com/wp-content/tmp/index.php?ID=160]nike tn pas cher[/url]', 3, NULL),
(1443784166.0000, 'Contacto', 'Submitted From', '176.97.116.161', 10000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.tsted.me', 'yes'),
(2, 'blogname', 'Tsted', 'yes'),
(3, 'blogdescription', 'nuestros servicios pretende generar tácticas publicitarias innovadoras, beneficiosas y con oportunidades de negocio, al interior y exterior de cualquier establecimiento comercial.', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'contacto@desafiolatam.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:7:{i:0;s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:53:\"genesis-favicon-uploader/genesis-favicon-uploader.php\";i:3;s:55:\"genesis-responsive-slider/genesis-responsive-slider.php\";i:4;s:31:\"genesis-simple-edits/plugin.php\";i:5;s:37:\"post-types-order/post-types-order.php\";i:6;s:39:\"underconstruction/underConstruction.php\";}', 'yes'),
(36, 'home', 'http://www.tsted.me', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:4:{i:0;s:61:\"/home/tsted/public_html/wp-content/themes/executive/style.css\";i:2;s:65:\"/home/tsted/public_html/wp-content/themes/executive/functions.php\";i:3;s:60:\"/home/tsted/public_html/wp-content/themes/executive/home.php\";i:4;s:0:\"\";}', 'no'),
(44, 'template', 'genesis', 'yes'),
(45, 'stylesheet', 'executive', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '27918', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(83, 'widget_text', 'a:6:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:224:\"<div class=\"three-fourths first\">No te pierdas nuestros servicios para facilitar las decisiones a tus clientes.</div>\r\n \r\n<div class=\"one-fourth\"><a class=\"button alignright\" href=\"?page_id=38 \">Solicita una Visita</a></div>\";s:6:\"filter\";b:0;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:116:\"<h5 style=\"float:right\">Contáctanos</h5></br></br>\r\n<h3 style=\"float:right;margin-top: -25px;\">(+569) 62074539</h3>\";s:6:\"filter\";b:0;}i:4;a:3:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:212:\"<div style=\"background-color:#4c66a4; color:#fff;width: 1140px;margin-left: -70px;margin-top: -90px;height: 65px;padding-top: 50px; padding-left: 70px;font-size: 25px;\"> TSTED | TRANSMITIMOS LO QUE TE GUSTA</div>\";s:6:\"filter\";b:0;}i:5;a:3:{s:5:\"title\";s:19:\"Solicita una Visita\";s:4:\"text\";s:283:\"<a href=\"?page_id=38\">\r\n<img src=\"http://www.tsted.me/wp-content/uploads/2014/01/black-35394_640.png\" alt=\"5340515934_2d72503f6f_z\" width=\"300\" height=\"300\" class=\"alignnone size-medium wp-image-52\" /></a>\r\n\r\n<a href=\"?page_id=38\" class=\"button aligncenter\">Solicita Una Visita</a>\r\n\";s:6:\"filter\";b:0;}i:6;a:3:{s:5:\"title\";s:24:\"¿Por qué ocupar TSTED?\";s:4:\"text\";s:572:\"<div class=\"post-8 page type-page status-publish hentry entry\"><a href=\"http://www.tsted.me/servicios/\" title=\"Servicios\" class=\"alignleft\" style=\"margin: 0 0 30px;\"><img width=\"300\" height=\"200\" src=\"http://www.tsted.me/wp-content/uploads/2014/01/8468788107_6a1b3ae1ea_o-300x200.jpg\" class=\"entry-image attachment-page\" alt=\"8468788107_6a1b3ae1ea_o\" itemprop=\"image\"></a><p>Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.</p></div>\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(84, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(85, 'uninstall_plugins', 'a:1:{s:39:\"underconstruction/underConstruction.php\";s:30:\"underConstructionPlugin_delete\";}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:11:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:8:\"search-2\";i:2;s:6:\"meta-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:12:\"header-right\";a:1:{i:0;s:6:\"text-3\";}s:7:\"sidebar\";a:1:{i:0;s:6:\"text-5\";}s:11:\"home-slider\";a:1:{i:0;s:32:\"genesisresponsiveslider-widget-2\";}s:8:\"home-top\";a:1:{i:0;s:6:\"text-4\";}s:8:\"home-cta\";a:1:{i:0;s:6:\"text-2\";}s:11:\"home-middle\";a:3:{i:0;s:15:\"featured-page-3\";i:1;s:6:\"text-6\";i:2;s:15:\"featured-page-4\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1452755892;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1452799145;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1452802804;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(740, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"contacto@desafiolatam.com\";s:7:\"version\";s:6:\"3.9.10\";s:9:\"timestamp\";i:1452145706;}', 'yes'),
(103, '_transient_random_seed', 'dc9e7b31bb7cd2d381da31da7b7243f8', 'yes'),
(104, 'auth_key', 'v&QOU9LyidR~=AX+|sezX%8^-.Y{C++LG$@?4HksF{.IL4o!:p$_1$sT(eAPWyXY', 'yes'),
(9129, '_site_transient_timeout_theme_roots', '1452718619', 'yes'),
(106, 'auth_salt', '1F-O:2Dx7VHh/@vSh.]s^`iq}96*@~Cy=[&[C-WZ`tVVoq2CPT2pt;odWQptK[@x', 'yes'),
(9130, '_site_transient_theme_roots', 'a:2:{s:9:\"executive\";s:7:\"/themes\";s:7:\"genesis\";s:7:\"/themes\";}', 'yes'),
(9131, '_site_transient_update_plugins', 'O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1452716819;s:8:\"response\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.1.7.zip\";}s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"16507\";s:4:\"slug\";s:36:\"contact-form-7-to-database-extension\";s:6:\"plugin\";s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";s:11:\"new_version\";s:6:\"2.9.13\";s:3:\"url\";s:67:\"https://wordpress.org/plugins/contact-form-7-to-database-extension/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/contact-form-7-to-database-extension.2.9.13.zip\";}s:55:\"genesis-responsive-slider/genesis-responsive-slider.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"27709\";s:4:\"slug\";s:25:\"genesis-responsive-slider\";s:6:\"plugin\";s:55:\"genesis-responsive-slider/genesis-responsive-slider.php\";s:11:\"new_version\";s:5:\"0.9.5\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/genesis-responsive-slider/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/genesis-responsive-slider.0.9.5.zip\";}s:31:\"genesis-simple-edits/plugin.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"18201\";s:4:\"slug\";s:20:\"genesis-simple-edits\";s:6:\"plugin\";s:31:\"genesis-simple-edits/plugin.php\";s:11:\"new_version\";s:5:\"2.1.4\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/genesis-simple-edits/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/genesis-simple-edits.2.1.4.zip\";}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"17292\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:5:\"1.8.5\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/post-types-order.1.8.5.zip\";}s:39:\"underconstruction/underConstruction.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"8707\";s:4:\"slug\";s:17:\"underconstruction\";s:6:\"plugin\";s:39:\"underconstruction/underConstruction.php\";s:11:\"new_version\";s:4:\"1.16\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/underconstruction/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/underconstruction.1.16.zip\";}}s:12:\"translations\";a:0:{}}', 'yes'),
(108, 'logged_in_key', '#k-89/Hq~hu6q_cOy[w9Q[oP8-#FsvJ}(+*BF?9Vp)rvS5zI[#z?v]3&[jhoH3>)', 'yes'),
(110, 'logged_in_salt', '(]=sqaLZ+D-5/S*fP$G4%sb`>0zu-Vlc,,]{- X4z Ze;wO4chw)5LJTozjIb6O(', 'yes'),
(111, 'nonce_key', '$wS:VM>X)O]S_Ehu>4f%=#)pP_r.RJHXKo9, Ms|i+Ol<,ZfR8-Icrp=RAUHSM$=', 'yes'),
(112, 'nonce_salt', 'R2WHK0QhG*[k2HB=/<=A~QA0DO7}W_rrGGN>,42T*6,/u0yQxTTk-} ?yo_$E`fJ', 'yes'),
(9050, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:7:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.4.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.4.1\";s:7:\"version\";s:5:\"4.4.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.4.1\";s:7:\"version\";s:5:\"4.4.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.4.1\";s:7:\"version\";s:5:\"4.4.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}i:3;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.3.2\";s:7:\"version\";s:5:\"4.3.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}i:4;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.2.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.2.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.2.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.2.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.2.6\";s:7:\"version\";s:5:\"4.2.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}i:5;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.1.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.1.9.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.1.9-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.1.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.1.9\";s:7:\"version\";s:5:\"4.1.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}i:6;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.0.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.0.9.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.0.9-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.0.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.0.9\";s:7:\"version\";s:5:\"4.0.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1452716818;s:15:\"version_checked\";s:6:\"3.9.10\";s:12:\"translations\";a:0:{}}', 'yes'),
(1881, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(8284, 'rewrite_rules', 'a:83:{s:12:\"portfolio/?$\";s:29:\"index.php?post_type=portfolio\";s:42:\"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:37:\"portfolio/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:29:\"portfolio/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=portfolio&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"portfolio/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"portfolio/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"portfolio/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"portfolio/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"portfolio/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"portfolio/(.+?)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:48:\"portfolio/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:43:\"portfolio/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:36:\"portfolio/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:43:\"portfolio/(.+?)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:28:\"portfolio/(.+?)(/[0-9]+)?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}', 'yes'),
(270, 'category_children', 'a:0:{}', 'yes'),
(411, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(412, 'CF7DBPlugin__version', '2.6.3', 'yes'),
(413, 'CF7DBPlugin__installed', '1', 'yes'),
(1882, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1883, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1884, 'widget_user-profile', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(805, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1452716820;s:7:\"checked\";a:2:{s:9:\"executive\";s:3:\"2.0\";s:7:\"genesis\";s:5:\"2.0.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'yes'),
(1549, 'CPT_configured', 'TRUE', 'yes'),
(178, 'theme_mods_twentyfourteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1390594178;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(138, 'recently_activated', 'a:0:{}', 'yes'),
(139, 'underConstructionHTTPStatus', '200', 'yes'),
(140, 'underConstructionDisplayOption', '2', 'yes'),
(141, 'underConstructionHTML', '&lt;!DOCTYPE html PUBLIC \\&quot;-//W3C//DTD HTML 4.01 Transitional//EN\\&quot;\r\n\\&quot;http://www.w3.org/TR/html4/loose.dtd\\&quot;&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;title&gt;LeanWebSite | Sitio para Desarrollo de desafiolatam.com&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body style=\\&quot;background-color:#00a37d;\\&quot;&gt;\r\n	&lt;div align=\\&quot;left\\&quot;&gt;\r\n&lt;a href=\\&quot;http://www.desafiolatam.com\\&quot;&gt;&lt;img src=\\&quot;http://www.desafiolatam.com/wp-content/uploads/logo1.png\\&quot; alt=\\&quot;desafiolatam Sitios Web de Calidad\\&quot;&gt;&lt;/a&gt;\r\n\r\n&lt;p align=center&gt; Sitio web en Construcción&lt;p&gt;\r\n&lt;/div&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;', 'yes'),
(142, 'underConstructionActivationStatus', '0', 'yes'),
(143, 'underConstructionRequiredRole', '0', 'yes'),
(796, 'db_upgraded', '', 'yes'),
(9132, '_transient_doing_cron', '1453610986.6082470417022705078125', 'yes'),
(359, 'cpto_options', 'a:3:{s:8:\"autosort\";s:1:\"1\";s:9:\"adminsort\";s:1:\"1\";s:10:\"capability\";s:13:\"publish_pages\";}', 'yes'),
(179, 'current_theme', 'Executive Child Theme', 'yes'),
(180, 'theme_mods_genesis', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1390594400;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"header-right\";a:0:{}s:7:\"sidebar\";a:0:{}s:11:\"sidebar-alt\";a:0:{}s:8:\"footer-1\";N;s:8:\"footer-2\";N;s:8:\"footer-3\";N;}}}', 'yes'),
(181, 'theme_switched', '', 'yes'),
(182, 'genesis-settings', 'a:38:{s:13:\"theme_version\";s:5:\"2.0.2\";s:10:\"db_version\";i:2008;s:20:\"update_email_address\";s:0:\"\";s:15:\"style_selection\";s:0:\"\";s:8:\"feed_uri\";s:0:\"\";s:17:\"comments_feed_uri\";s:0:\"\";s:11:\"site_layout\";s:15:\"content-sidebar\";s:9:\"superfish\";i:1;s:10:\"nav_extras\";s:0:\"\";s:21:\"nav_extras_twitter_id\";s:0:\"\";s:23:\"nav_extras_twitter_text\";s:0:\"\";s:15:\"content_archive\";s:8:\"excerpts\";s:21:\"content_archive_limit\";i:0;s:10:\"image_size\";s:5:\"large\";s:9:\"posts_nav\";s:9:\"prev-next\";s:8:\"blog_cat\";i:0;s:16:\"blog_cat_exclude\";s:0:\"\";s:12:\"blog_cat_num\";i:10;s:14:\"header_scripts\";s:0:\"\";s:14:\"footer_scripts\";s:0:\"\";s:21:\"breadcrumb_front_page\";i:0;s:15:\"breadcrumb_home\";i:0;s:17:\"breadcrumb_single\";i:0;s:15:\"breadcrumb_page\";i:0;s:21:\"breadcrumb_posts_page\";i:0;s:18:\"breadcrumb_archive\";i:0;s:14:\"breadcrumb_404\";i:0;s:21:\"breadcrumb_attachment\";i:0;s:14:\"comments_posts\";i:0;s:14:\"comments_pages\";i:0;s:25:\"content_archive_thumbnail\";i:0;s:13:\"redirect_feed\";i:0;s:22:\"redirect_comments_feed\";i:0;s:16:\"trackbacks_posts\";i:0;s:16:\"trackbacks_pages\";i:0;s:6:\"update\";i:0;s:12:\"update_email\";i:0;s:10:\"blog_title\";s:0:\"\";}', 'yes'),
(183, 'genesis-seo-settings', 'a:33:{s:23:\"append_description_home\";i:1;s:17:\"append_site_title\";i:0;s:12:\"doctitle_sep\";s:3:\"–\";s:20:\"doctitle_seplocation\";s:5:\"right\";s:17:\"semantic_headings\";i:1;s:10:\"home_h1_on\";s:5:\"title\";s:13:\"home_doctitle\";s:0:\"\";s:16:\"home_description\";s:0:\"\";s:13:\"home_keywords\";s:0:\"\";s:12:\"home_noindex\";i:0;s:13:\"home_nofollow\";i:0;s:14:\"home_noarchive\";i:0;s:11:\"home_author\";i:0;s:18:\"canonical_archives\";i:1;s:28:\"head_adjacent_posts_rel_link\";i:0;s:21:\"head_wlwmanifest_link\";i:0;s:14:\"head_shortlink\";i:0;s:19:\"noindex_cat_archive\";i:1;s:19:\"noindex_tag_archive\";i:1;s:22:\"noindex_author_archive\";i:1;s:20:\"noindex_date_archive\";i:1;s:22:\"noindex_search_archive\";i:1;s:21:\"noarchive_cat_archive\";i:0;s:21:\"noarchive_tag_archive\";i:0;s:24:\"noarchive_author_archive\";i:0;s:22:\"noarchive_date_archive\";i:0;s:24:\"noarchive_search_archive\";i:0;s:9:\"noarchive\";i:0;s:5:\"noodp\";i:1;s:6:\"noydir\";i:1;s:19:\"head_index_rel_link\";i:0;s:25:\"head_parent_post_rel_link\";i:0;s:24:\"head_start_post_rel_link\";i:0;}', 'yes'),
(201, 'theme_mods_executive', 'a:10:{i:0;b:0;s:16:\"header_textcolor\";s:5:\"blank\";s:16:\"background_color\";s:0:\"\";s:16:\"background_image\";s:0:\"\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_attachment\";s:5:\"fixed\";s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:0;}s:12:\"header_image\";s:60:\"http://www.tsted.me/wp-content/uploads/2014/02/Top_Tsted.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:63;s:3:\"url\";s:60:\"http://www.tsted.me/wp-content/uploads/2014/02/Top_Tsted.png\";s:13:\"thumbnail_url\";s:60:\"http://www.tsted.me/wp-content/uploads/2014/02/Top_Tsted.png\";s:6:\"height\";i:100;s:5:\"width\";i:1140;}}', 'yes'),
(203, 'genesis-term-meta', 'a:2:{i:0;b:0;i:2;a:0:{}}', 'yes'),
(204, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(208, 'gse-settings', 'a:6:{s:9:\"post_info\";s:51:\"[post_date] Por [post_author_posts_link][post_edit]\";s:9:\"post_meta\";s:18:\"[post_categories] \";s:21:\"footer_backtotop_text\";s:18:\"[footer_backtotop]\";s:17:\"footer_creds_text\";s:0:\"\";s:16:\"footer_output_on\";s:1:\"1\";s:13:\"footer_output\";s:140:\"</div><div class=\"creds\"><p>Copyright [footer_copyright] Tsted · Desarrollado por <a href=\"http://desafiolatam.com\">desafiolatam</a>]</p></div>\";}', 'yes'),
(210, 'genesis_responsive_slider_settings', 'a:26:{s:9:\"post_type\";s:4:\"page\";s:10:\"posts_term\";s:0:\"\";s:13:\"exclude_terms\";s:14:\"20, 22, 24, 78\";s:15:\"include_exclude\";s:7:\"include\";s:7:\"post_id\";s:14:\"20, 22, 24, 78\";s:9:\"posts_num\";s:1:\"3\";s:12:\"posts_offset\";s:1:\"0\";s:7:\"orderby\";s:4:\"date\";s:15:\"slideshow_timer\";s:4:\"4000\";s:15:\"slideshow_delay\";s:3:\"800\";s:16:\"slideshow_effect\";s:4:\"fade\";s:15:\"slideshow_width\";s:4:\"1140\";s:16:\"slideshow_height\";s:3:\"400\";s:16:\"slideshow_arrows\";i:1;s:15:\"slideshow_pager\";i:1;s:20:\"slideshow_title_show\";i:1;s:22:\"slideshow_excerpt_show\";i:1;s:25:\"slideshow_excerpt_content\";s:8:\"excerpts\";s:19:\"slideshow_more_text\";s:19:\"[Quiero Saber Más]\";s:31:\"slideshow_excerpt_content_limit\";s:2:\"10\";s:23:\"slideshow_excerpt_width\";s:2:\"40\";s:17:\"location_vertical\";s:3:\"top\";s:19:\"location_horizontal\";s:5:\"right\";s:14:\"slideshow_loop\";i:0;s:21:\"slideshow_hide_mobile\";i:0;s:17:\"slideshow_no_link\";i:0;}', 'yes'),
(211, 'widget_genesisresponsiveslider-widget', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:0;}', 'yes'),
(218, 'widget_featured-post', 'a:2:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}}', 'yes'),
(232, 'wpcf7', 'a:1:{s:7:\"version\";s:3:\"3.7\";}', 'yes'),
(1880, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(219, 'widget_featured-page', 'a:3:{i:3;a:8:{s:5:\"title\";s:15:\"Acerca De Tsted\";s:7:\"page_id\";s:2:\"12\";s:10:\"show_image\";s:1:\"1\";s:10:\"image_size\";s:9:\"portfolio\";s:15:\"image_alignment\";s:9:\"alignnone\";s:12:\"show_content\";s:1:\"1\";s:13:\"content_limit\";s:3:\"250\";s:9:\"more_text\";s:0:\"\";}i:4;a:8:{s:5:\"title\";s:12:\"Contáctanos\";s:7:\"page_id\";s:2:\"10\";s:10:\"show_image\";s:1:\"1\";s:10:\"image_size\";s:9:\"portfolio\";s:15:\"image_alignment\";s:9:\"alignnone\";s:12:\"show_content\";s:1:\"1\";s:13:\"content_limit\";s:0:\"\";s:9:\"more_text\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(6, 6, '_edit_last', '1'),
(7, 6, '_wp_page_template', 'default'),
(8, 6, '_edit_lock', '1405990610:2'),
(9, 8, '_edit_last', '2'),
(10, 8, '_wp_page_template', 'default'),
(11, 8, '_edit_lock', '1405990517:2'),
(12, 10, '_edit_last', '1'),
(13, 10, '_wp_page_template', 'default'),
(14, 10, '_edit_lock', '1405995340:2'),
(15, 12, '_edit_last', '1'),
(16, 12, '_wp_page_template', 'default'),
(17, 12, '_edit_lock', '1405995307:2'),
(18, 16, '_menu_item_type', 'post_type'),
(19, 16, '_menu_item_menu_item_parent', '0'),
(20, 16, '_menu_item_object_id', '12'),
(21, 16, '_menu_item_object', 'page'),
(22, 16, '_menu_item_target', ''),
(23, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 16, '_menu_item_xfn', ''),
(25, 16, '_menu_item_url', ''),
(56, 20, '_wp_page_template', 'default'),
(27, 17, '_menu_item_type', 'post_type'),
(28, 17, '_menu_item_menu_item_parent', '0'),
(29, 17, '_menu_item_object_id', '10'),
(30, 17, '_menu_item_object', 'page'),
(31, 17, '_menu_item_target', ''),
(32, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 17, '_menu_item_xfn', ''),
(34, 17, '_menu_item_url', ''),
(54, 20, '_edit_last', '2'),
(36, 18, '_menu_item_type', 'post_type'),
(37, 18, '_menu_item_menu_item_parent', '0'),
(38, 18, '_menu_item_object_id', '8'),
(39, 18, '_menu_item_object', 'page'),
(40, 18, '_menu_item_target', ''),
(41, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 18, '_menu_item_xfn', ''),
(43, 18, '_menu_item_url', ''),
(55, 20, '_edit_lock', '1405995484:2'),
(130, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:548;s:6:\"height\";i:640;s:4:\"file\";s:35:\"2014/01/5340515934_2d72503f6f_z.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"5340515934_2d72503f6f_z-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"5340515934_2d72503f6f_z-256x300.jpg\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:35:\"5340515934_2d72503f6f_z-285x100.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:35:\"5340515934_2d72503f6f_z-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:35:\"5340515934_2d72503f6f_z-548x400.jpg\";s:5:\"width\";i:548;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(129, 52, '_wp_attached_file', '2014/01/5340515934_2d72503f6f_z.jpg'),
(57, 22, '_edit_last', '2'),
(58, 22, '_edit_lock', '1405983496:2'),
(59, 22, '_wp_page_template', 'default'),
(60, 24, '_edit_last', '2'),
(61, 24, '_edit_lock', '1405983347:2'),
(62, 24, '_wp_page_template', 'default'),
(63, 26, '_wp_attached_file', '2014/01/5886225374_74f0e5f677_o.jpg'),
(64, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:864;s:4:\"file\";s:35:\"2014/01/5886225374_74f0e5f677_o.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"5886225374_74f0e5f677_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"5886225374_74f0e5f677_o-300x216.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"5886225374_74f0e5f677_o-1024x737.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:737;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:35:\"5886225374_74f0e5f677_o-285x100.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:35:\"5886225374_74f0e5f677_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:35:\"5886225374_74f0e5f677_o-920x400.jpg\";s:5:\"width\";i:920;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(65, 27, '_wp_attached_file', '2014/01/5260815552_34377555cb_o.png'),
(66, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2368;s:6:\"height\";i:1179;s:4:\"file\";s:35:\"2014/01/5260815552_34377555cb_o.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"5260815552_34377555cb_o-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"5260815552_34377555cb_o-300x149.png\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"5260815552_34377555cb_o-1024x509.png\";s:5:\"width\";i:1024;s:6:\"height\";i:509;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:35:\"5260815552_34377555cb_o-285x100.png\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:35:\"5260815552_34377555cb_o-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:35:\"5260815552_34377555cb_o-920x400.png\";s:5:\"width\";i:920;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(67, 28, '_wp_attached_file', '2014/01/3568409530_c4029da66a_o.jpg'),
(68, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3776;s:6:\"height\";i:2520;s:4:\"file\";s:35:\"2014/01/3568409530_c4029da66a_o.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"3568409530_c4029da66a_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"3568409530_c4029da66a_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"3568409530_c4029da66a_o-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:35:\"3568409530_c4029da66a_o-285x100.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:35:\"3568409530_c4029da66a_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:35:\"3568409530_c4029da66a_o-920x400.jpg\";s:5:\"width\";i:920;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:6.29999999999999982236431605997495353221893310546875;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-LX3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1243183212;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"5.1\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.125\";s:5:\"title\";s:0:\"\";}}'),
(77, 24, '_thumbnail_id', '26'),
(78, 22, '_thumbnail_id', '27'),
(79, 20, '_thumbnail_id', '31'),
(80, 6, '_genesis_layout', 'full-width-content'),
(81, 33, '_wp_attached_file', '2014/01/cabecera.png'),
(82, 33, '_wp_attachment_context', 'custom-header'),
(83, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:100;s:4:\"file\";s:20:\"2014/01/cabecera.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"cabecera-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"cabecera-300x26.png\";s:5:\"width\";i:300;s:6:\"height\";i:26;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"cabecera-1024x89.png\";s:5:\"width\";i:1024;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:20:\"cabecera-285x100.png\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:20:\"cabecera-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:20:\"cabecera-920x100.png\";s:5:\"width\";i:920;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(71, 30, '_wp_attached_file', '2014/01/7975205041_74f85a53a9_o.jpg'),
(72, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:2000;s:4:\"file\";s:35:\"2014/01/7975205041_74f85a53a9_o.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"7975205041_74f85a53a9_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"7975205041_74f85a53a9_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"7975205041_74f85a53a9_o-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:35:\"7975205041_74f85a53a9_o-285x100.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:35:\"7975205041_74f85a53a9_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:35:\"7975205041_74f85a53a9_o-920x400.jpg\";s:5:\"width\";i:920;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(73, 31, '_wp_attached_file', '2014/01/8583949219_d565d18edf_o.png'),
(74, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:35:\"2014/01/8583949219_d565d18edf_o.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"8583949219_d565d18edf_o-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"8583949219_d565d18edf_o-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"8583949219_d565d18edf_o-1024x682.png\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:35:\"8583949219_d565d18edf_o-285x100.png\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:35:\"8583949219_d565d18edf_o-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:35:\"8583949219_d565d18edf_o-920x400.png\";s:5:\"width\";i:920;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(75, 32, '_wp_attached_file', '2014/01/8468788107_6a1b3ae1ea_o.jpg'),
(76, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3252;s:6:\"height\";i:1166;s:4:\"file\";s:35:\"2014/01/8468788107_6a1b3ae1ea_o.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"8468788107_6a1b3ae1ea_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"8468788107_6a1b3ae1ea_o-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"8468788107_6a1b3ae1ea_o-1024x367.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:35:\"8468788107_6a1b3ae1ea_o-285x100.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:35:\"8468788107_6a1b3ae1ea_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:35:\"8468788107_6a1b3ae1ea_o-920x400.jpg\";s:5:\"width\";i:920;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:1.6999999999999999555910790149937383830547332763671875;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-GF1\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1312113756;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"20\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";}}'),
(84, 33, '_wp_attachment_is_custom_header', 'executive'),
(85, 34, '_wp_attached_file', '2014/01/tsted_4.png'),
(86, 34, '_wp_attachment_context', 'custom-header'),
(87, 35, '_wp_attached_file', '2014/01/tsted_41.png'),
(88, 35, '_wp_attachment_context', 'custom-header'),
(89, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:100;s:4:\"file\";s:20:\"2014/01/tsted_41.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tsted_41-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"tsted_41-300x26.png\";s:5:\"width\";i:300;s:6:\"height\";i:26;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"tsted_41-1024x89.png\";s:5:\"width\";i:1024;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:20:\"tsted_41-285x100.png\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:20:\"tsted_41-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(90, 35, '_wp_attachment_is_custom_header', 'executive'),
(91, 10, '_thumbnail_id', '30'),
(92, 8, '_thumbnail_id', '32'),
(93, 36, '_wp_attached_file', '2014/01/favicon.png'),
(94, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:376;s:6:\"height\";i:417;s:4:\"file\";s:19:\"2014/01/favicon.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"favicon-270x300.png\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:19:\"favicon-285x100.png\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:19:\"favicon-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:19:\"favicon-376x400.png\";s:5:\"width\";i:376;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(96, 37, '_wp_attached_file', '2014/01/portfolio.png'),
(97, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:193;s:4:\"file\";s:21:\"2014/01/portfolio.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"portfolio-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:21:\"portfolio-285x100.png\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(163, 68, '_wp_attached_file', '2014/01/imagen2.png'),
(99, 38, '_edit_last', '1'),
(100, 38, '_wp_page_template', 'default'),
(101, 38, '_edit_lock', '1405995251:2'),
(102, 40, '_form', '<p>Su nombre (requerido)<br />\n    [text* your-name] </p>\n\n<p>Su e-mail (requerido)<br />\n    [email* your-email] </p>\n\n<p>Asunto<br />\n    [text your-subject] </p>\n\n<p>Su mensaje<br />\n    [textarea your-message] </p>\n\n<p>[submit \"Enviar\"]</p>'),
(103, 40, '_mail', 'a:7:{s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:175:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n--\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\";s:9:\"recipient\";s:23:\"contacto@desafiolatam.com\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;}'),
(104, 40, '_mail_2', 'a:8:{s:6:\"active\";b:0;s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:120:\"Cuerpo del mensaje:\n[your-message]\n\n--\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;}'),
(105, 40, '_messages', 'a:6:{s:12:\"mail_sent_ok\";s:52:\"Su mensaje se ha enviado con éxito. Muchas gracias.\";s:12:\"mail_sent_ng\";s:110:\"Falló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\";s:16:\"validation_error\";s:97:\"Ocurrió un error de validación. Por favor, confirme los campos y envíe el formulario de nuevo.\";s:4:\"spam\";s:110:\"Falló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\";s:12:\"accept_terms\";s:61:\"Por favor, acepte los términos y condiciones para continuar.\";s:16:\"invalid_required\";s:39:\"Por favor, complete el campo requerido.\";}'),
(106, 40, '_additional_settings', ''),
(107, 40, '_locale', 'es_ES'),
(108, 41, '_form', '<p>Nombre<br />\n    [text* your-name] </p>\n\n<p>Correo Electrónico<br />\n    [email* your-email] </p>\n\n<p>Asunto<br />\n    [text your-subject] </p>\n\n<p>Mensaje<br />\n    [textarea your-message] </p>\n\n<p>[submit \"Enviar\"]</p>'),
(109, 41, '_mail', 'a:7:{s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:175:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n--\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\";s:9:\"recipient\";s:23:\"contacto@desafiolatam.com\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;}'),
(110, 41, '_mail_2', 'a:8:{s:6:\"active\";b:0;s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:120:\"Cuerpo del mensaje:\n[your-message]\n\n--\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;}'),
(111, 41, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:52:\"Su mensaje se ha enviado con éxito. Muchas gracias.\";s:12:\"mail_sent_ng\";s:110:\"Falló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\";s:16:\"validation_error\";s:97:\"Ocurrió un error de validación. Por favor, confirme los campos y envíe el formulario de nuevo.\";s:4:\"spam\";s:110:\"Falló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\";s:12:\"accept_terms\";s:61:\"Por favor, acepte los términos y condiciones para continuar.\";s:16:\"invalid_required\";s:39:\"Por favor, complete el campo requerido.\";s:17:\"captcha_not_match\";s:35:\"El código ingresado es incorrecto.\";s:14:\"invalid_number\";s:38:\"El formato numérico parece inválido.\";s:16:\"number_too_small\";s:27:\"Número demasiado pequeño.\";s:16:\"number_too_large\";s:25:\"Número demasiado grande.\";s:13:\"invalid_email\";s:38:\"La dirección e-mail parece inválida.\";s:11:\"invalid_url\";s:24:\"El URL parece inválido.\";s:11:\"invalid_tel\";s:41:\"El número de teléfono parece inválido.\";s:23:\"quiz_answer_not_correct\";s:28:\"La respuesta no es correcta.\";s:12:\"invalid_date\";s:37:\"El formato de fecha parece inválido.\";s:14:\"date_too_early\";s:25:\"Fecha demasiado temprana.\";s:13:\"date_too_late\";s:24:\"Fecha demasiado tardía.\";s:13:\"upload_failed\";s:29:\"Falló la subida del archivo.\";s:24:\"upload_file_type_invalid\";s:29:\"Formato de archivo inválido.\";s:21:\"upload_file_too_large\";s:33:\"Este archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:48:\"Falló la subida del archivo. Ocurrió un error.\";}'),
(112, 41, '_additional_settings', ''),
(113, 41, '_locale', 'es_ES'),
(114, 44, '_form', '<p>Nombre*<br />\n    [text* your-name] </p>\n\n<p>Correo Electrónico*<br />\n    [email* your-email] </p>\n\n<p>Teléfono<br />\n    [text fono] </p>\n\n<p>¿En qué fecha le acomoda?<br />\n    [date date-135] </p>\n\n<p>Mensaje<br />\n    [textarea your-message] </p>\n\n<p>[submit \"Enviar\"]</p>'),
(115, 44, '_mail', 'a:7:{s:7:\"subject\";s:27:\"Solicitud de Visita | Tsted\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:188:\"De: [your-name] <[your-email]>\nFecha: [date-135]\n\nTelefono: [fono]\n\nCuerpo del mensaje:\n[your-message]\n\n--\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\";s:9:\"recipient\";s:23:\"contacto@desafiolatam.com\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;}'),
(116, 44, '_mail_2', 'a:8:{s:6:\"active\";b:0;s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:120:\"Cuerpo del mensaje:\n[your-message]\n\n--\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;}'),
(117, 44, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:52:\"Su mensaje se ha enviado con éxito. Muchas gracias.\";s:12:\"mail_sent_ng\";s:110:\"Falló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\";s:16:\"validation_error\";s:97:\"Ocurrió un error de validación. Por favor, confirme los campos y envíe el formulario de nuevo.\";s:4:\"spam\";s:110:\"Falló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\";s:12:\"accept_terms\";s:61:\"Por favor, acepte los términos y condiciones para continuar.\";s:16:\"invalid_required\";s:39:\"Por favor, complete el campo requerido.\";s:17:\"captcha_not_match\";s:35:\"El código ingresado es incorrecto.\";s:14:\"invalid_number\";s:38:\"El formato numérico parece inválido.\";s:16:\"number_too_small\";s:27:\"Número demasiado pequeño.\";s:16:\"number_too_large\";s:25:\"Número demasiado grande.\";s:13:\"invalid_email\";s:38:\"La dirección e-mail parece inválida.\";s:11:\"invalid_url\";s:24:\"El URL parece inválido.\";s:11:\"invalid_tel\";s:41:\"El número de teléfono parece inválido.\";s:23:\"quiz_answer_not_correct\";s:28:\"La respuesta no es correcta.\";s:12:\"invalid_date\";s:37:\"El formato de fecha parece inválido.\";s:14:\"date_too_early\";s:25:\"Fecha demasiado temprana.\";s:13:\"date_too_late\";s:24:\"Fecha demasiado tardía.\";s:13:\"upload_failed\";s:29:\"Falló la subida del archivo.\";s:24:\"upload_file_type_invalid\";s:29:\"Formato de archivo inválido.\";s:21:\"upload_file_too_large\";s:33:\"Este archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:48:\"Falló la subida del archivo. Ocurrió un error.\";}'),
(118, 44, '_additional_settings', ''),
(119, 44, '_locale', 'es_ES'),
(120, 46, '_menu_item_type', 'custom'),
(121, 46, '_menu_item_menu_item_parent', '0'),
(122, 46, '_menu_item_object_id', '46'),
(123, 46, '_menu_item_object', 'custom'),
(124, 46, '_menu_item_target', ''),
(125, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 46, '_menu_item_xfn', ''),
(127, 46, '_menu_item_url', 'http://tsted.me/'),
(131, 38, '_genesis_layout', 'full-width-content'),
(132, 54, '_menu_item_type', 'post_type'),
(133, 54, '_menu_item_menu_item_parent', '18'),
(134, 54, '_menu_item_object_id', '24'),
(135, 54, '_menu_item_object', 'page'),
(136, 54, '_menu_item_target', ''),
(137, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(138, 54, '_menu_item_xfn', ''),
(139, 54, '_menu_item_url', ''),
(159, 63, '_wp_attached_file', '2014/02/Top_Tsted.png'),
(141, 55, '_menu_item_type', 'post_type'),
(142, 55, '_menu_item_menu_item_parent', '18'),
(143, 55, '_menu_item_object_id', '22'),
(144, 55, '_menu_item_object', 'page'),
(145, 55, '_menu_item_target', ''),
(146, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(147, 55, '_menu_item_xfn', ''),
(148, 55, '_menu_item_url', ''),
(150, 56, '_menu_item_type', 'post_type'),
(151, 56, '_menu_item_menu_item_parent', '18'),
(152, 56, '_menu_item_object_id', '20'),
(153, 56, '_menu_item_object', 'page'),
(154, 56, '_menu_item_target', ''),
(155, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(156, 56, '_menu_item_xfn', ''),
(157, 56, '_menu_item_url', ''),
(160, 63, '_wp_attachment_context', 'custom-header'),
(161, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:100;s:4:\"file\";s:21:\"2014/02/Top_Tsted.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Top_Tsted-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Top_Tsted-300x26.png\";s:5:\"width\";i:300;s:6:\"height\";i:26;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"Top_Tsted-1024x89.png\";s:5:\"width\";i:1024;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:21:\"Top_Tsted-285x100.png\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:21:\"Top_Tsted-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(162, 63, '_wp_attachment_is_custom_header', 'executive'),
(164, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:193;s:4:\"file\";s:19:\"2014/01/imagen2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"imagen2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:19:\"imagen2-285x100.png\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(165, 12, '_thumbnail_id', '68'),
(166, 70, '_wp_attached_file', '2014/01/imagen3.png'),
(167, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:100;s:4:\"file\";s:19:\"2014/01/imagen3.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"imagen3-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"imagen3-300x26.png\";s:5:\"width\";i:300;s:6:\"height\";i:26;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"imagen3-1024x89.png\";s:5:\"width\";i:1024;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:19:\"imagen3-285x100.png\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:19:\"imagen3-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(168, 75, '_wp_attached_file', '2014/01/black-35394_640.png'),
(169, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:27:\"2014/01/black-35394_640.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"black-35394_640-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"black-35394_640-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:27:\"black-35394_640-285x100.png\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:27:\"black-35394_640-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:27:\"black-35394_640-640x400.png\";s:5:\"width\";i:640;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(172, 80, '_wp_attached_file', '2014/02/3568409530_c4029da66a_o.jpg'),
(173, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3776;s:6:\"height\";i:2520;s:4:\"file\";s:35:\"2014/02/3568409530_c4029da66a_o.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"3568409530_c4029da66a_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"3568409530_c4029da66a_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"3568409530_c4029da66a_o-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:35:\"3568409530_c4029da66a_o-285x100.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:35:\"3568409530_c4029da66a_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:36:\"3568409530_c4029da66a_o-1140x400.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:6.29999999999999982236431605997495353221893310546875;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-LX3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1243183212;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"5.1\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.125\";s:5:\"title\";s:0:\"\";}}'),
(178, 82, '_wp_attached_file', '2014/02/3568409530_c4029da66a_o-2.jpg'),
(175, 78, '_edit_last', '1'),
(176, 78, '_edit_lock', '1405995995:2'),
(177, 78, '_wp_page_template', 'Pagina de Redireccion.php'),
(179, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3776;s:6:\"height\";i:1574;s:4:\"file\";s:37:\"2014/02/3568409530_c4029da66a_o-2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"3568409530_c4029da66a_o-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"3568409530_c4029da66a_o-2-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"3568409530_c4029da66a_o-2-1024x426.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:426;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:37:\"3568409530_c4029da66a_o-2-285x100.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:37:\"3568409530_c4029da66a_o-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:38:\"3568409530_c4029da66a_o-2-1140x400.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:6.29999999999999982236431605997495353221893310546875;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-LX3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1243183212;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"5.1\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.125\";s:5:\"title\";s:0:\"\";}}'),
(180, 78, '_thumbnail_id', '82'),
(181, 85, '_edit_last', '1'),
(182, 85, '_wp_page_template', 'default'),
(183, 85, '_edit_lock', '1405995196:2'),
(195, 2, '_edit_lock', '1405995356:2'),
(194, 8, '_post_restored_from', 'a:3:{s:20:\"restored_revision_id\";i:102;s:16:\"restored_by_user\";i:2;s:13:\"restored_time\";i:1402280905;}'),
(193, 20, '_post_restored_from', 'a:3:{s:20:\"restored_revision_id\";i:91;s:16:\"restored_by_user\";i:2;s:13:\"restored_time\";i:1402249043;}'),
(196, 28, '_edit_lock', '1402532666:2'),
(201, 63, '_wp_attachment_custom_header_last_used_executive', '1405997547');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2014-01-20 19:18:10', '2014-01-20 19:18:10', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto:\n\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n...o algo así:\n\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo \"cosas\" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href=\"http://tsted.me/wp-admin/\">tu escritorio</a> para borrar esta páginay crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'publish', 'open', 'open', '', 'pagina-ejemplo', '', '', '2014-01-20 19:18:10', '2014-01-20 19:18:10', '', 0, 'http://tsted.me/?page_id=2', 0, 'page', '', 0),
(63, 1, '2014-02-06 18:51:51', '2014-02-06 18:51:51', 'http://www.tsted.me/wp-content/uploads/2014/02/Top_Tsted.png', 'Top_Tsted.png', '', 'inherit', 'open', 'open', '', 'top_tsted-png', '', '', '2014-02-06 18:51:51', '2014-02-06 18:51:51', '', 0, 'http://www.tsted.me/wp-content/uploads/2014/02/Top_Tsted.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2014-01-24 20:20:17', '2014-01-24 20:20:17', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2014-01-24 21:04:46', '2014-01-24 21:04:46', '', 0, 'http://tsted.me/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-01-24 20:20:17', '2014-01-24 20:20:17', '', 'Home', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-01-24 20:20:17', '2014-01-24 20:20:17', '', 6, 'http://tsted.me/?p=7', 0, 'revision', '', 0),
(8, 1, '2014-01-24 20:20:33', '2014-01-24 20:20:33', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n	<li>Servicio auténtico y confiable.</li>\r\n	<li>Servicio económico y versátil.</li>\r\n	<li>Buena voluntad con el cliente.</li>\r\n	<li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n<h4>Nuestros Planes</h4>\r\n<div><a href=\"?page_id=20\">Servicio Bronze</a></div>\r\n<div>\r\n<ul>\r\n	<li>Creación Fundpage del local comercial.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n</ul>\r\n</div>\r\n<div><a href=\"?page_id=22\">Servicio Silver </a></div>\r\n<div>\r\n<ul>\r\n	<li>Creación Fundpage del local comercial y otros productos.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n	<li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n</ul>\r\n</div>\r\n<div><a href=\"?page_id=24\">Servicio Gold</a></div>\r\n<div>\r\n<ul>\r\n	<li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n</ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'publish', 'open', 'open', '', 'servicios', '', '', '2014-07-21 23:02:28', '2014-07-21 23:02:28', '', 0, 'http://tsted.me/?page_id=8', 0, 'page', '', 0),
(9, 1, '2014-01-24 20:20:33', '2014-01-24 20:20:33', '', 'Servicios', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-01-24 20:20:33', '2014-01-24 20:20:33', '', 8, 'http://tsted.me/?p=9', 0, 'revision', '', 0),
(10, 1, '2014-01-24 20:20:43', '2014-01-24 20:20:43', '[contact-form-7 id=\"41\" title=\"Contacto\"]', 'Contacto', '', 'publish', 'open', 'open', '', 'contacto', '', '', '2014-01-27 15:13:57', '2014-01-27 15:13:57', '', 0, 'http://tsted.me/?page_id=10', 0, 'page', '', 0),
(11, 1, '2014-01-24 20:20:43', '2014-01-24 20:20:43', '', 'Contacto', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-01-24 20:20:43', '2014-01-24 20:20:43', '', 10, 'http://tsted.me/?p=11', 0, 'revision', '', 0),
(12, 1, '2014-01-24 20:20:51', '2014-01-24 20:20:51', 'Somos una empresa que transmite la información en la calidad de un servicio o producto de cualquier negocio. Para lo cual, nuestro mayor foco es la entrega constante de lo que piensan las personas con el parámetro de facebook “me gusta” del servicio o producto en cuestión.\r\n\r\nContamos con un equipo con experiencia que mediante nuestros servicios pretende generar tácticas publicitarias innovadoras, beneficiosas y con oportunidades de negocio, al interior y exterior de cualquier establecimiento comercial.\r\n\r\nNuestros servicios son extensivos y transversales a diferentes tipos de clientes. Entre ellos restaurants, tiendas de ropa, casinos de comida, supermercados, etc.\r\n\r\nLa entrega de información que ocupamos es simple y confiable. Básicamente, para no generar conflictos de interés creamos un facebook oficial personalizado del cliente, administrado solo por el equipo TSTED. Esta será nuestra plataforma social de evaluación de la calidad del servicio o producto que presta el cliente en cuestión. Por tanto, con nuestros servicios se posibilita transmitir y asegurar a los consumidores y a los clientes que se abastezcan de un solo parámetro confiable de evaluación de calidad; el “me gusta” de facebook.\r\n\r\nCabe destacar, que para generar una calidad al cliente con respecto a nuestro servicio, el cliente tiene la responsabilidad ética y urgente de informar y facilitar toda la ayuda posible para agregar a solo los consumidores del servicio o productos que entrega el establecimiento comercial en cuestión.', 'Acerca de Tsted', '', 'publish', 'open', 'open', '', 'quienes-somos', '', '', '2014-02-06 19:48:14', '2014-02-06 19:48:14', '', 0, 'http://tsted.me/?page_id=12', 0, 'page', '', 0),
(13, 1, '2014-01-24 20:20:51', '2014-01-24 20:20:51', '', 'Quienes Somos', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2014-01-24 20:20:51', '2014-01-24 20:20:51', '', 12, 'http://tsted.me/?p=13', 0, 'revision', '', 0),
(14, 1, '2014-01-24 20:21:03', '2014-01-24 20:21:03', '', 'Acerca de Tsted', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2014-01-24 20:21:03', '2014-01-24 20:21:03', '', 12, 'http://tsted.me/?p=14', 0, 'revision', '', 0),
(15, 1, '2014-01-24 20:21:41', '2014-01-24 20:21:41', 'Somos una empresa que transmite la información en la calidad de un servicio o producto de cualquier negocio. Para lo cual, nuestro mayor foco es la entrega constante de lo que piensan las personas con el parámetro de facebook “me gusta” del servicio o producto en cuestión.\r\n\r\nContamos con un equipo con experiencia que mediante nuestros servicios pretende generar tácticas publicitarias innovadoras, beneficiosas y con oportunidades de negocio, al interior y exterior de cualquier establecimiento comercial.\r\n\r\nNuestros servicios son extensivos y transversales a diferentes tipos de clientes. Entre ellos restaurants, tiendas de ropa, casinos de comida, supermercados, etc.\r\n\r\nLa entrega de información que ocupamos es simple y confiable. Básicamente, para no generar conflictos de interés creamos un facebook oficial personalizado del cliente, administrado solo por el equipo TSTED. Esta será nuestra plataforma social de evaluación de la calidad del servicio o producto que presta el cliente en cuestión. Por tanto, con nuestros servicios se posibilita transmitir y asegurar a los consumidores y a los clientes que se abastezcan de un solo parámetro confiable de evaluación de calidad; el “me gusta” de facebook.\r\n\r\nCabe destacar, que para generar una calidad al cliente con respecto a nuestro servicio, el cliente tiene la responsabilidad ética y urgente de informar y facilitar toda la ayuda posible para agregar a solo los consumidores del servicio o productos que entrega el establecimiento comercial en cuestión.', 'Acerca de Tsted', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2014-01-24 20:21:41', '2014-01-24 20:21:41', '', 12, 'http://tsted.me/?p=15', 0, 'revision', '', 0),
(16, 1, '2014-01-24 20:25:21', '2014-01-24 20:25:21', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2014-02-11 22:31:58', '2014-02-11 22:31:58', '', 0, 'http://tsted.me/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2014-01-24 20:25:21', '2014-01-24 20:25:21', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2014-02-11 22:31:58', '2014-02-11 22:31:58', '', 0, 'http://tsted.me/?p=17', 7, 'nav_menu_item', '', 0),
(18, 1, '2014-01-24 20:25:21', '2014-01-24 20:25:21', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2014-02-11 22:31:58', '2014-02-11 22:31:58', '', 0, 'http://tsted.me/?p=18', 3, 'nav_menu_item', '', 0),
(20, 1, '2014-01-25 20:31:55', '2014-01-25 20:31:55', '<span style=\"line-height: 1.5em;\">El equipo TSTED creará un Fundpage del cliente enfocado solo en su local comercial. Esto, según los requerimientos de diseño definidos por TSTED .</span>\r\n\r\nSe instalará solo una pantalla Tsted en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nLa duración del contrato Servicio Básico es de 1 año. Y su costo mensual corresponde a 1 UTM.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Servicio Bronze', '- Creación fundpage personalizado.\r\n- Instalación contador TSTED.', 'publish', 'open', 'closed', '', 'servicio-bronze', '', '', '2014-07-21 22:59:16', '2014-07-21 22:59:16', '', 8, 'http://tsted.me/?page_id=20', 0, 'page', '', 0),
(120, 2, '2014-06-24 00:07:42', '2014-06-24 00:07:42', '<span style=\"line-height: 1.5em;\">El equipo TSTED creará un Fundpage del cliente enfocado solo en su local comercial. Esto, según los requerimientos de diseño definidos por TSTED .</span>\r\n\r\nSe instalará solo una Tablet Tsted en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nLa duración del contrato Servicio Básico es de 1 año. Y su costo mensual corresponde a 1 UTM.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Servicio Básico', '- Creación fundpage personalizado.\r\n- Instalación contador Tsted.', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-06-24 00:07:42', '2014-06-24 00:07:42', '', 20, 'http://www.tsted.me/20-revision-v1/', 0, 'revision', '', 0),
(95, 2, '2014-06-08 20:48:34', '2014-06-08 20:48:34', '<span style=\"line-height: 1.5em;\">El equipo TSTED creará un Fundpage del cliente enfocado solo en su local comercial. Esto, según los requerimientos de diseño definidos por TSTED .</span>\r\n\r\nSe instalará solo una Tablet Tsted en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nLa duración del contrato Servicio Básico es de 1 año. Y su costo mensual corresponde a 1 UTM.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Servicio Básico', '- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-06-08 20:48:34', '2014-06-08 20:48:34', '', 20, 'http://www.tsted.me/20-revision-v1/', 0, 'revision', '', 0),
(93, 2, '2014-06-08 19:43:59', '2014-06-08 19:43:59', '<span style=\"line-height: 1.5em;\">El equipo TSTED creará un Fundpage del cliente enfocado en su local comercial. Esto, según los requerimientos de diseño definidos por TSTED .</span>\r\n\r\nSe instalará una Tablet Tsted en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta.\r\n\r\nLa duración del contrato Servicio Básico es de 1 año. Y su costo mensual corresponde a 1 UTM.\r\n\r\n* Si el cliente cuenta con otros dispositivos digitales (TV, Smart TV, Android TV, etc.) donde le gustaría posicionar el contador TSTED, se gestionará una prima adicional mensual por dispositivo dispuesto.\r\n\r\n&nbsp;', 'Servicio Básico', '- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-06-08 19:43:59', '2014-06-08 19:43:59', '', 20, 'http://www.tsted.me/20-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2014-01-24 20:31:55', '2014-01-24 20:31:55', '<span style=\"line-height: 1.5em;\">Creación facebook comercial personalizado: foto gratuita de la portada del local comercial como perfil y otra foto destinada a la portada. La notificación de creación del facebook se realizará al mail del cliente. Espera aproximada de notificación dos días después del contrato.</span>\r\n\r\nCreado el facebook oficial del local comercial, al día siguiente y los próximos, se entregará al empezar el día un mail certificado por TSTED de la cantidad actualizada de “me gusta” que lleva el local comercial. Esta podrá ser impresa y expuesta a los consumidores en cualquier dependencia del local comercial. Excepto en la fachada del local.\r\n\r\nDurante el mismo día que se pone en funcionamiento el facebook oficial del local comercial, se gestionará la instalación en la fachada un empavonado u otro afiche gratuito de que el local cuenta con el servicio TSTED.\r\n\r\nDuración: 30 días a contar del día en que se instala el empavonado u otro afiche al cliente.\r\n\r\nCosto: Totalmente gratuito.', 'Servicio Gratuito', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-01-24 20:31:55', '2014-01-24 20:31:55', '', 20, 'http://tsted.me/?p=21', 0, 'revision', '', 0),
(22, 1, '2014-01-24 20:33:04', '2014-01-24 20:33:04', 'El equipo TSTED creará diferentes Fundpage del cliente enfocado en su local comercial o productos que se distribuyan. Esto, según los requerimientos de diseño definidos por TSTED.<!--?xml:namespace prefix = \"o\" ns = \"urn:schemas-microsoft-com:office:office\" /-->\r\n\r\nSe instalará  una pantalla TSTED en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nAdemás, los otros dispositivos digitales (a excepción al posicionado en la fachada) tendrán los Fundpages que especifique el cliente con su respectivo contador TSTED.\r\n\r\nEl cliente contará con 4 instancias personales durante el año de vigencia del contrato en las que puede escoger propuestas de edición a los diferentes contadores TSTED.\r\n\r\nLa duración del contrato Servicio Completo es de 1 año. Y su costo mensual corresponde a 0,5 UTM por dispositivo dispuesto.\r\n\r\n<i> </i>', 'Servicio Silver', '- Creación fundpage personalizado.\r\n- Instalación contadores TSTED.\r\n- 4 instancias de mejora con el equipo TSTED.', 'publish', 'open', 'open', '', 'servicio-silver', '', '', '2014-07-21 22:58:16', '2014-07-21 22:58:16', '', 8, 'http://tsted.me/?page_id=22', 0, 'page', '', 0),
(23, 1, '2014-01-24 20:33:04', '2014-01-24 20:33:04', 'Creación facebook comercial personalizado: foto gratuita de la portada del local comercial como perfil y otra foto destinada a la portada. La notificación de creación y funcionamiento del facebook se realizará al mail del cliente. Espera aproximada de notificación dos días después del contrato.\r\n\r\nCreado el Facebook oficial del local comercial, al día siguiente y los próximos, se entregará al empezar el día un mail certificado por TSTED de la cantidad actualizada de “me gusta” que lleva el local comercial. Esta podrá ser impresa y expuesta a los consumidores en cualquier dependencia del local comercial. Excepto en la fachada del local.\r\n\r\nYa puesto en funcionamiento el Facebook oficial del local comercial, se gestionará e instalará en la fachada un empavonado u otro afiche gratuito de que el local cuenta con el servicio TSTED.\r\n\r\nSe actualizará de manera mensual (dentro de los primeros 7 días de cada mes) el empavonado u afiche inicial gratuito que posee el local comercial. Específicamente, mencionará que el local comercial cuenta con el servicio TSTED y la cantidad de “me gusta” que posee al cierre del mes precedente.\r\n\r\nDuración: 1 año.\r\n\r\nCosto: 1 UTM\r\n\r\n<i> </i>', 'Servicio Básico', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-01-24 20:33:04', '2014-01-24 20:33:04', '', 22, 'http://tsted.me/?p=23', 0, 'revision', '', 0),
(24, 1, '2014-01-22 20:33:35', '2014-01-22 20:33:35', '<span style=\"line-height: 1.5em;\">Consultoría exhaustiva de lo que busca el cliente de nuestros servicios. </span>\r\n\r\n<span style=\"line-height: 1.5em;\">El servicio será personalizado y sujeto a presupuesto.</span>', 'Servicio Gold', '- Saca el provecho de todas las potencialidades de las Redes Sociales\r\n- Personalizado y sujeto a presupuesto. \r\n', 'publish', 'open', 'closed', '', 'servicio-personalizado', '', '', '2014-07-21 22:54:46', '2014-07-21 22:54:46', '', 8, 'http://tsted.me/?page_id=24', 0, 'page', '', 0),
(25, 1, '2014-01-24 20:33:35', '2014-01-24 20:33:35', '<span style=\"line-height: 1.5em;\"> Personalizado y sujeto a presupuesto.</span>', 'Servicio Completo', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-01-24 20:33:35', '2014-01-24 20:33:35', '', 24, 'http://tsted.me/?p=25', 0, 'revision', '', 0),
(26, 1, '2014-01-24 20:48:21', '2014-01-24 20:48:21', '', '5886225374_74f0e5f677_o', '', 'inherit', 'open', 'open', '', '5886225374_74f0e5f677_o', '', '', '2014-01-24 20:48:21', '2014-01-24 20:48:21', '', 24, 'http://tsted.me/wp-content/uploads/2014/01/5886225374_74f0e5f677_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2014-01-24 20:48:52', '2014-01-24 20:48:52', '', '5260815552_34377555cb_o', '', 'inherit', 'open', 'open', '', '5260815552_34377555cb_o', '', '', '2014-01-24 20:48:52', '2014-01-24 20:48:52', '', 24, 'http://tsted.me/wp-content/uploads/2014/01/5260815552_34377555cb_o.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2014-01-24 20:50:02', '2014-01-24 20:50:02', '', '3568409530_c4029da66a_o', '', 'inherit', 'open', 'open', '', '3568409530_c4029da66a_o', '', '', '2014-01-24 20:50:02', '2014-01-24 20:50:02', '', 24, 'http://tsted.me/wp-content/uploads/2014/01/3568409530_c4029da66a_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2014-01-24 21:13:04', '2014-01-24 21:13:04', 'http://tsted.me/wp-content/uploads/2014/01/cabecera.png', 'cabecera.png', '', 'inherit', 'open', 'open', '', 'cabecera-png', '', '', '2014-01-24 21:13:04', '2014-01-24 21:13:04', '', 0, 'http://tsted.me/wp-content/uploads/2014/01/cabecera.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2014-01-24 20:50:32', '2014-01-24 20:50:32', '', '7975205041_74f85a53a9_o', '', 'inherit', 'open', 'open', '', '7975205041_74f85a53a9_o', '', '', '2014-01-24 20:50:32', '2014-01-24 20:50:32', '', 24, 'http://tsted.me/wp-content/uploads/2014/01/7975205041_74f85a53a9_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2014-01-24 20:52:01', '2014-01-24 20:52:01', '', '8583949219_d565d18edf_o', '', 'inherit', 'open', 'open', '', '8583949219_d565d18edf_o', '', '', '2014-01-24 20:52:01', '2014-01-24 20:52:01', '', 24, 'http://tsted.me/wp-content/uploads/2014/01/8583949219_d565d18edf_o.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2014-01-24 20:52:20', '2014-01-24 20:52:20', '', '8468788107_6a1b3ae1ea_o', '', 'inherit', 'open', 'open', '', '8468788107_6a1b3ae1ea_o', '', '', '2014-01-24 20:52:20', '2014-01-24 20:52:20', '', 24, 'http://tsted.me/wp-content/uploads/2014/01/8468788107_6a1b3ae1ea_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2014-01-27 14:22:54', '2014-01-27 14:22:54', 'http://tsted.me/wp-content/uploads/2014/01/tsted_4.png', 'tsted_4.png', '', 'inherit', 'open', 'open', '', 'tsted_4-png', '', '', '2014-01-27 14:22:54', '2014-01-27 14:22:54', '', 0, 'http://tsted.me/wp-content/uploads/2014/01/tsted_4.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2014-01-27 14:23:29', '2014-01-27 14:23:29', 'http://tsted.me/wp-content/uploads/2014/01/tsted_41.png', 'tsted_41.png', '', 'inherit', 'open', 'open', '', 'tsted_41-png', '', '', '2014-01-27 14:23:29', '2014-01-27 14:23:29', '', 0, 'http://tsted.me/wp-content/uploads/2014/01/tsted_41.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2014-01-27 14:36:11', '2014-01-27 14:36:11', '', 'favicon', '', 'inherit', 'open', 'open', '', 'favicon', '', '', '2014-01-27 14:36:11', '2014-01-27 14:36:11', '', 12, 'http://tsted.me/wp-content/uploads/2014/01/favicon.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2014-01-27 14:38:56', '2014-01-27 14:38:56', '', 'portfolio', '', 'inherit', 'open', 'open', '', 'portfolio', '', '', '2014-01-27 14:38:56', '2014-01-27 14:38:56', '', 12, 'http://tsted.me/wp-content/uploads/2014/01/portfolio.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2014-01-27 14:40:03', '2014-01-27 14:40:03', '<div class=\"one-half first\">[contact-form-7 id=\"44\" title=\"Visita\"]</div>\r\n<div class=\"one-half\"><a href=\"http://www.tsted.me/wp-content/uploads/2014/01/7975205041_74f85a53a9_o.jpg\"><img src=\"http://www.tsted.me/wp-content/uploads/2014/01/7975205041_74f85a53a9_o-1024x682.jpg\" alt=\"7975205041_74f85a53a9_o\" width=\"680\" height=\"452\" class=\"alignnone size-large wp-image-30\" /></a></div>', 'Solicita Una Visita', '', 'publish', 'open', 'open', '', 'solicita-una-visita', '', '', '2014-02-06 20:29:50', '2014-02-06 20:29:50', '', 0, 'http://tsted.me/?page_id=38', 0, 'page', '', 0),
(39, 1, '2014-01-27 14:40:03', '2014-01-27 14:40:03', '', 'Solicita Una Visita', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2014-01-27 14:40:03', '2014-01-27 14:40:03', '', 38, 'http://tsted.me/?p=39', 0, 'revision', '', 0),
(40, 1, '2014-01-27 14:41:54', '2014-01-27 14:41:54', '<p>Su nombre (requerido)<br />\n    [text* your-name] </p>\n\n<p>Su e-mail (requerido)<br />\n    [email* your-email] </p>\n\n<p>Asunto<br />\n    [text your-subject] </p>\n\n<p>Su mensaje<br />\n    [textarea your-message] </p>\n\n<p>[submit \"Enviar\"]</p>\n[your-subject]\n[your-name] <[your-email]>\nDe: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n--\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\ncontacto@desafiolatam.com\n\n\n0\n\n[your-subject]\n[your-name] <[your-email]>\nCuerpo del mensaje:\n[your-message]\n\n--\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\n[your-email]\n\n\n0\nSu mensaje se ha enviado con éxito. Muchas gracias.\nFalló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\nOcurrió un error de validación. Por favor, confirme los campos y envíe el formulario de nuevo.\nFalló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\nPor favor, acepte los términos y condiciones para continuar.\nPor favor, complete el campo requerido.', 'Formulario de contacto 1', '', 'publish', 'open', 'open', '', 'formulario-de-contacto-1', '', '', '2014-01-27 14:41:54', '2014-01-27 14:41:54', '', 0, 'http://tsted.me/?post_type=wpcf7_contact_form&p=40', 0, 'wpcf7_contact_form', '', 0),
(41, 1, '2014-01-27 15:13:30', '2014-01-27 15:13:30', '<p>Nombre<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Correo Electrónico<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Asunto<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Mensaje<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit \"Enviar\"]</p>\n[your-subject]\n[your-name] <[your-email]>\nDe: [your-name] <[your-email]>\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n--\r\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\ncontacto@desafiolatam.com\n\n\n\n\n[your-subject]\n[your-name] <[your-email]>\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n--\r\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\n[your-email]\n\n\n\nSu mensaje se ha enviado con éxito. Muchas gracias.\nFalló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\nOcurrió un error de validación. Por favor, confirme los campos y envíe el formulario de nuevo.\nFalló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\nPor favor, acepte los términos y condiciones para continuar.\nPor favor, complete el campo requerido.\nEl código ingresado es incorrecto.\nEl formato numérico parece inválido.\nNúmero demasiado pequeño.\nNúmero demasiado grande.\nLa dirección e-mail parece inválida.\nEl URL parece inválido.\nEl número de teléfono parece inválido.\nLa respuesta no es correcta.\nEl formato de fecha parece inválido.\nFecha demasiado temprana.\nFecha demasiado tardía.\nFalló la subida del archivo.\nFormato de archivo inválido.\nEste archivo es demasiado grande.\nFalló la subida del archivo. Ocurrió un error.', 'Contacto', '', 'publish', 'open', 'open', '', 'contacto', '', '', '2014-01-27 15:13:30', '2014-01-27 15:13:30', '', 0, 'http://tsted.me/?post_type=wpcf7_contact_form&p=41', 0, 'wpcf7_contact_form', '', 0),
(124, 2, '2014-07-21 22:53:10', '2014-07-21 22:53:10', '<span style=\"line-height: 1.5em;\">Consultoría exhaustiva de lo que busca el cliente de nuestros servicios. </span>\n\n<span style=\"line-height: 1.5em;\">El servicio será personalizado y sujeto a presupuesto.</span>', 'Servicio Gold', '- Saca el provecho de todas las potencialidades de las Redes Sociales\n- Personalizado y sujeto a presupuesto. \n', 'inherit', 'open', 'open', '', '24-autosave-v1', '', '', '2014-07-21 22:53:10', '2014-07-21 22:53:10', '', 24, 'http://www.tsted.me/24-autosave-v1/', 0, 'revision', '', 0),
(43, 1, '2014-01-27 15:13:57', '2014-01-27 15:13:57', '[contact-form-7 id=\"41\" title=\"Contacto\"]', 'Contacto', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-01-27 15:13:57', '2014-01-27 15:13:57', '', 10, 'http://tsted.me/?p=43', 0, 'revision', '', 0),
(44, 1, '2014-01-27 15:17:53', '2014-01-27 15:17:53', '<p>Nombre*<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Correo Electrónico*<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Teléfono<br />\r\n    [text fono] </p>\r\n\r\n<p>¿En qué fecha le acomoda?<br />\r\n    [date date-135] </p>\r\n\r\n<p>Mensaje<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit \"Enviar\"]</p>\nSolicitud de Visita | Tsted\n[your-name] <[your-email]>\nDe: [your-name] <[your-email]>\r\nFecha: [date-135]\r\n\r\nTelefono: [fono]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n--\r\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\ncontacto@desafiolatam.com\n\n\n\n\n[your-subject]\n[your-name] <[your-email]>\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n--\r\nEste e-mail se ha enviado vía formulario de contacto desde Tsted http://tsted.me\n[your-email]\n\n\n\nSu mensaje se ha enviado con éxito. Muchas gracias.\nFalló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\nOcurrió un error de validación. Por favor, confirme los campos y envíe el formulario de nuevo.\nFalló el envío del mensaje. Por favor, inténtelo más tarde o contacte con el administrador por otro medio.\nPor favor, acepte los términos y condiciones para continuar.\nPor favor, complete el campo requerido.\nEl código ingresado es incorrecto.\nEl formato numérico parece inválido.\nNúmero demasiado pequeño.\nNúmero demasiado grande.\nLa dirección e-mail parece inválida.\nEl URL parece inválido.\nEl número de teléfono parece inválido.\nLa respuesta no es correcta.\nEl formato de fecha parece inválido.\nFecha demasiado temprana.\nFecha demasiado tardía.\nFalló la subida del archivo.\nFormato de archivo inválido.\nEste archivo es demasiado grande.\nFalló la subida del archivo. Ocurrió un error.', 'Visita', '', 'publish', 'open', 'open', '', 'visita', '', '', '2014-01-27 15:17:53', '2014-01-27 15:17:53', '', 0, 'http://tsted.me/?post_type=wpcf7_contact_form&p=44', 0, 'wpcf7_contact_form', '', 0),
(45, 1, '2014-01-27 15:18:29', '2014-01-27 15:18:29', '[contact-form-7 id=\"44\" title=\"Visita\"]', 'Solicita Una Visita', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2014-01-27 15:18:29', '2014-01-27 15:18:29', '', 38, 'http://tsted.me/?p=45', 0, 'revision', '', 0),
(46, 1, '2014-01-27 15:23:11', '2014-01-27 15:23:11', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2014-02-11 22:31:58', '2014-02-11 22:31:58', '', 0, 'http://tsted.me/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2014-01-27 15:24:04', '2014-01-27 15:24:04', 'Nuestras Fortalezas\r\n-	Servicio auténtico y confiable.\r\n-	Servicio económico y versátil.\r\n-	Buena voluntad con el cliente.\r\n-	Asistido con personas con experiencia.\r\n', 'Servicios', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-01-27 15:24:04', '2014-01-27 15:24:04', '', 8, 'http://tsted.me/?p=47', 0, 'revision', '', 0),
(48, 1, '2014-01-27 15:24:19', '2014-01-27 15:24:19', '¿Por qué ocupar TSTED?\r\n\r\nActualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n\r\nNuestras Fortalezas\r\n-	Servicio auténtico y confiable.\r\n-	Servicio económico y versátil.\r\n-	Buena voluntad con el cliente.\r\n-	Asistido con personas con experiencia.\r\n', 'Servicios', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-01-27 15:24:19', '2014-01-27 15:24:19', '', 8, 'http://tsted.me/?p=48', 0, 'revision', '', 0),
(58, 1, '2014-01-27 18:25:34', '2014-01-27 18:25:34', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n\r\n<h4> Nuestras Fortalezas </h4>\r\n-	Servicio auténtico y confiable.\r\n-	Servicio económico y versátil.\r\n-	Buena voluntad con el cliente.\r\n-	Asistido con personas con experiencia.\r\n\r\n\r\n<h4> Nuestros Planes </h4>\r\n\r\n<div class=\"one-third\">Servicio Gratuito  </div>\r\n\r\n<div class=\"one-third\">Servicio Básico  </div>\r\n\r\n<div class=\"one-third\">Servicio Completo </div>', 'Servicios', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-01-27 18:25:34', '2014-01-27 18:25:34', '', 8, 'http://tsted.me/?p=58', 0, 'revision', '', 0),
(50, 1, '2014-01-27 15:26:54', '2014-01-27 15:26:54', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n\r\n<h3> Nuestras Fortalezas </h3>\r\n-	Servicio auténtico y confiable.\r\n-	Servicio económico y versátil.\r\n-	Buena voluntad con el cliente.\r\n-	Asistido con personas con experiencia.\r\n\r\n\r\n<h3> Nuestros Planes </h3>\r\n\r\nServicio Gratuito  Servicio Básico  Servicio Completo', 'Servicios', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-01-27 15:26:54', '2014-01-27 15:26:54', '', 8, 'http://tsted.me/?p=50', 0, 'revision', '', 0),
(51, 1, '2014-01-27 18:09:19', '2014-01-27 18:09:19', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n\r\n<h4> Nuestras Fortalezas </h4>\r\n-	Servicio auténtico y confiable.\r\n-	Servicio económico y versátil.\r\n-	Buena voluntad con el cliente.\r\n-	Asistido con personas con experiencia.\r\n\r\n\r\n<h4> Nuestros Planes </h4>\r\n\r\nServicio Gratuito  Servicio Básico  Servicio Completo', 'Servicios', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-01-27 18:09:19', '2014-01-27 18:09:19', '', 8, 'http://tsted.me/?p=51', 0, 'revision', '', 0),
(52, 1, '2014-01-27 18:11:06', '2014-01-27 18:11:06', '', '5340515934_2d72503f6f_z', '', 'inherit', 'open', 'open', '', '5340515934_2d72503f6f_z', '', '', '2014-01-27 18:11:06', '2014-01-27 18:11:06', '', 8, 'http://tsted.me/wp-content/uploads/2014/01/5340515934_2d72503f6f_z.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2014-01-27 18:22:28', '2014-01-27 18:22:28', ' ', '', '', 'publish', 'open', 'open', '', '54', '', '', '2014-02-11 22:31:58', '2014-02-11 22:31:58', '', 8, 'http://tsted.me/?p=54', 6, 'nav_menu_item', '', 0),
(55, 1, '2014-01-27 18:22:28', '2014-01-27 18:22:28', ' ', '', '', 'publish', 'open', 'open', '', '55', '', '', '2014-02-11 22:31:58', '2014-02-11 22:31:58', '', 8, 'http://tsted.me/?p=55', 5, 'nav_menu_item', '', 0),
(56, 1, '2014-01-27 18:22:28', '2014-01-27 18:22:28', ' ', '', '', 'publish', 'open', 'open', '', '56', '', '', '2014-02-11 22:31:58', '2014-02-11 22:31:58', '', 8, 'http://tsted.me/?p=56', 4, 'nav_menu_item', '', 0),
(57, 1, '2014-06-24 00:02:36', '2014-06-24 00:02:36', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\n<h4>Nuestras Fortalezas</h4>\n<ul>\n	<li>Servicio auténtico y confiable.</li>\n	<li>Servicio económico y versátil.</li>\n	<li>Buena voluntad con el cliente.</li>\n	<li>Asistido con personas con experiencia.</li>\n</ul>\n<h4>Nuestros Planes</h4>\n<div><a href=\"?page_id=20\">Servicio Básico</a></div>\n<div>\n<ul>\n	<li>Creación Fundpage del local comercial.</li>\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\n</ul>\n</div>\n<div><a href=\"?page_id=22\">Servicio Completo </a></div>\n<div>\n<ul>\n	<li>Creación Fundpage del local comercial y otros productos.</li>\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\n	<li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\n</ul>\n</div>\n<div><a href=\"?page_id=24\">Servicio Personalizado</a></div>\n<div>\n<ul>\n	<li>Totalmente personalizado y sujeto a presupuesto.</li>\n</ul>\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-autosave-v1', '', '', '2014-06-24 00:02:36', '2014-06-24 00:02:36', '', 8, 'http://tsted.me/?p=57', 0, 'revision', '', 0),
(59, 1, '2014-01-27 18:26:41', '2014-01-27 18:26:41', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n\r\n<h4> Nuestras Fortalezas </h4>\r\n-	Servicio auténtico y confiable.\r\n-	Servicio económico y versátil.\r\n-	Buena voluntad con el cliente.\r\n-	Asistido con personas con experiencia.\r\n\r\n\r\n<h4> Nuestros Planes </h4>\r\n\r\n<div class=\"one-third first\">Servicio Gratuito  </div>\r\n\r\n<div class=\"one-third\">Servicio Básico  </div>\r\n\r\n<div class=\"one-third\">Servicio Completo </div>', 'Servicios', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-01-27 18:26:41', '2014-01-27 18:26:41', '', 8, 'http://tsted.me/?p=59', 0, 'revision', '', 0),
(60, 1, '2014-01-27 18:29:30', '2014-01-27 18:29:30', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n\r\n<h4> Nuestras Fortalezas </h4>\r\n-	Servicio auténtico y confiable.\r\n-	Servicio económico y versátil.\r\n-	Buena voluntad con el cliente.\r\n-	Asistido con personas con experiencia.\r\n\r\n\r\n<h4> Nuestros Planes </h4>\r\n\r\n<div class=\"one-third first\"><a href=\"#\">Servicio Gratuito</a>\r\nVivamus pretium, odio sit amet vehicula vestibulum, turpis ante sagittis urna, quis eleifend arcu justo ac sem. Cras ut semper orci. In rutrum velit id ornare rhoncus. Aliquam ut dolor vitae lectus blandit malesuada vel non metus\r\n\r\n</div>\r\n\r\n<div class=\"one-third\"><a href=\"#\">Servicio Básico</a>\r\nVivamus pretium, odio sit amet vehicula vestibulum, turpis ante sagittis urna, quis eleifend arcu justo ac sem. Cras ut semper orci. In rutrum velit id ornare rhoncus. Aliquam ut dolor vitae lectus blandit malesuada vel non metus\r\n\r\n</div>\r\n\r\n<div class=\"one-third\"><a href=\"#\">Servicio Completo</a>\r\nVivamus pretium, odio sit amet vehicula vestibulum, turpis ante sagittis urna, quis eleifend arcu justo ac sem. Cras ut semper orci. In rutrum velit id ornare rhoncus. Aliquam ut dolor vitae lectus blandit malesuada vel non metus\r\n</div>', 'Servicios', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-01-27 18:29:30', '2014-01-27 18:29:30', '', 8, 'http://tsted.me/?p=60', 0, 'revision', '', 0),
(61, 1, '2014-01-27 18:30:18', '2014-01-27 18:30:18', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n\r\n<h4> Nuestras Fortalezas </h4>\r\n-	Servicio auténtico y confiable.\r\n-	Servicio económico y versátil.\r\n-	Buena voluntad con el cliente.\r\n-	Asistido con personas con experiencia.\r\n\r\n\r\n<h4> Nuestros Planes </h4>\r\n\r\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Gratuito</a>\r\nVivamus pretium, odio sit amet vehicula vestibulum, turpis ante sagittis urna, quis eleifend arcu justo ac sem. Cras ut semper orci. In rutrum velit id ornare rhoncus. Aliquam ut dolor vitae lectus blandit malesuada vel non metus\r\n\r\n</div>\r\n\r\n<div class=\"one-third\"><a href=\"?page_id=22\">Servicio Básico</a>\r\nVivamus pretium, odio sit amet vehicula vestibulum, turpis ante sagittis urna, quis eleifend arcu justo ac sem. Cras ut semper orci. In rutrum velit id ornare rhoncus. Aliquam ut dolor vitae lectus blandit malesuada vel non metus\r\n\r\n</div>\r\n\r\n<div class=\"one-third\"><a href=\"?page_id=24\">Servicio Completo</a>\r\nVivamus pretium, odio sit amet vehicula vestibulum, turpis ante sagittis urna, quis eleifend arcu justo ac sem. Cras ut semper orci. In rutrum velit id ornare rhoncus. Aliquam ut dolor vitae lectus blandit malesuada vel non metus\r\n</div>', 'Servicios', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-01-27 18:30:18', '2014-01-27 18:30:18', '', 8, 'http://tsted.me/?p=61', 0, 'revision', '', 0),
(92, 2, '2014-06-08 17:37:23', '2014-06-08 17:37:23', '<span style=\"line-height: 1.5em;\">El equipo TSTED creará un Fundpage del cliente enfocado en su local comercial. Esto, según los requerimientos de diseño definidos por TSTED .</span>\n\nSe instalarán los artefactos especificados por cada cliente según los requerimientos de En el cual, se dispondrá la cantidad de likes con que cuente el Fundpage del local comercial.\n\nDurante el mismo día que se pone en funcionamiento el facebook oficial del local comercial, se gestionará la instalación en la fachada un empavonado u otro afiche gratuito de que el local cuenta con el servicio TSTED.\n\nDuración: 30 días a contar del día en que se instala el empavonado u otro afiche al cliente.\n\nCosto: Totalmente gratuito.', 'Servicio Básico', '- Creación facebook personalizado\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\n- Empavonado gratis fachada servicio TSTED', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-06-08 17:37:23', '2014-06-08 17:37:23', '', 20, 'http://www.tsted.me/20-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2014-02-06 19:40:52', '2014-02-06 19:40:52', '<span style=\"line-height: 1.5em;\">Creación facebook comercial personalizado: foto gratuita de la portada del local comercial como perfil y otra foto destinada a la portada. La notificación de creación del facebook se realizará al mail del cliente. Espera aproximada de notificación dos días después del contrato.</span>\r\n\r\nCreado el facebook oficial del local comercial, al día siguiente y los próximos, se entregará al empezar el día un mail certificado por TSTED de la cantidad actualizada de “me gusta” que lleva el local comercial. Esta podrá ser impresa y expuesta a los consumidores en cualquier dependencia del local comercial. Excepto en la fachada del local.\r\n\r\nDurante el mismo día que se pone en funcionamiento el facebook oficial del local comercial, se gestionará la instalación en la fachada un empavonado u otro afiche gratuito de que el local cuenta con el servicio TSTED.\r\n\r\nDuración: 30 días a contar del día en que se instala el empavonado u otro afiche al cliente.\r\n\r\nCosto: Totalmente gratuito.', 'Servicio Gratuito', '- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-02-06 19:40:52', '2014-02-06 19:40:52', '', 20, 'http://www.tsted.me/20-revision-v1/', 0, 'revision', '', 0),
(97, 2, '2014-06-08 21:23:52', '2014-06-08 21:23:52', 'El equipo TSTED creará diferentes Fundpage del cliente enfocado en su local comercial o productos que se distribuyan. Esto, según los requerimientos de diseño definidos por TSTED.<!--?xml:namespace prefix = \"o\" ns = \"urn:schemas-microsoft-com:office:office\" /-->\r\n\r\nSe instalará  una Tablet TSTED en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nAdemás, los otros dispositivos digitales (a excepción al posicionado en la fachada) tendrán los Fundpages que especifique el cliente con su respectivo contador TSTED.\r\n\r\nEl cliente contará con 4 instancias personales en las que puede escoger propuestas de edición a los diferentes contadores TSTED.\r\n\r\nLa duración del contrato Servicio Completo es de 1 año. Y su costo mensual corresponde a 1,25 UTM por dispositivo dispuesto.\r\n\r\n<i> </i>', 'Servicio Básico', '- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED\r\n- Actualización mensual empavonado', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-06-08 21:23:52', '2014-06-08 21:23:52', '', 22, 'http://www.tsted.me/22-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2014-02-06 19:42:54', '2014-02-06 19:42:54', 'Creación facebook comercial personalizado: foto gratuita de la portada del local comercial como perfil y otra foto destinada a la portada. La notificación de creación y funcionamiento del facebook se realizará al mail del cliente. Espera aproximada de notificación dos días después del contrato.\r\n\r\nCreado el Facebook oficial del local comercial, al día siguiente y los próximos, se entregará al empezar el día un mail certificado por TSTED de la cantidad actualizada de “me gusta” que lleva el local comercial. Esta podrá ser impresa y expuesta a los consumidores en cualquier dependencia del local comercial. Excepto en la fachada del local.\r\n\r\nYa puesto en funcionamiento el Facebook oficial del local comercial, se gestionará e instalará en la fachada un empavonado u otro afiche gratuito de que el local cuenta con el servicio TSTED.\r\n\r\nSe actualizará de manera mensual (dentro de los primeros 7 días de cada mes) el empavonado u afiche inicial gratuito que posee el local comercial. Específicamente, mencionará que el local comercial cuenta con el servicio TSTED y la cantidad de “me gusta” que posee al cierre del mes precedente.\r\n\r\nDuración: 1 año.\r\n\r\nCosto: 1 UTM\r\n\r\n<i> </i>', 'Servicio Básico', '- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED\r\n- Actualización mensual empavonado', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-02-06 19:42:54', '2014-02-06 19:42:54', '', 22, 'http://www.tsted.me/22-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2014-02-06 19:42:26', '2014-02-06 19:42:26', 'Creación facebook comercial personalizado: foto gratuita de la portada del local comercial como perfil y otra foto destinada a la portada. La notificación de creación y funcionamiento del facebook se realizará al mail del cliente. Espera aproximada de notificación dos días después del contrato.\r\n\r\nCreado el Facebook oficial del local comercial, al día siguiente y los próximos, se entregará al empezar el día un mail certificado por TSTED de la cantidad actualizada de “me gusta” que lleva el local comercial. Esta podrá ser impresa y expuesta a los consumidores en cualquier dependencia del local comercial. Excepto en la fachada del local.\r\n\r\nYa puesto en funcionamiento el Facebook oficial del local comercial, se gestionará e instalará en la fachada un empavonado u otro afiche gratuito de que el local cuenta con el servicio TSTED.\r\n\r\nSe actualizará de manera mensual (dentro de los primeros 7 días de cada mes) el empavonado u afiche inicial gratuito que posee el local comercial. Específicamente, mencionará que el local comercial cuenta con el servicio TSTED y la cantidad de “me gusta” que posee al cierre del mes precedente.\r\n\r\nDuración: 1 año.\r\n\r\nCosto: 1 UTM\r\n\r\n<i> </i>', 'Servicio Básico', '<ul>\r\n<li> Creación facebook personalizado</li>\r\n<li> Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.</li>\r\n<li>Empavonado gratis fachada servicio TSTED</li>\r\n<li> Actualización mensual empavonado</li>\r\n</ul>', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-02-06 19:42:26', '2014-02-06 19:42:26', '', 22, 'http://www.tsted.me/22-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2014-02-06 19:43:53', '2014-02-06 19:43:53', '<span style=\"line-height: 1.5em;\"> Personalizado y sujeto a presupuesto.</span>', 'Servicio Completo', '- Saca el provecho de todas las potencialidades de las Redes Sociales\r\n- Personalizado y sujeto a presupuesto. \r\n', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-02-06 19:43:53', '2014-02-06 19:43:53', '', 24, 'http://www.tsted.me/24-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2014-02-06 19:48:04', '2014-02-06 19:48:04', '', 'imagen2', '', 'inherit', 'open', 'open', '', 'imagen2', '', '', '2014-02-06 19:48:04', '2014-02-06 19:48:04', '', 12, 'http://www.tsted.me/wp-content/uploads/2014/01/imagen2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(71, 1, '2014-02-06 20:14:01', '2014-02-06 20:14:01', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n	<li>Servicio auténtico y confiable.</li>\r\n	<li>Servicio económico y versátil.</li>\r\n	<li>Buena voluntad con el cliente.</li>\r\n	<li>- Asistido con personas con experiencia.</li>\r\n</ul>\r\n<h4>Nuestros Planes</h4>\r\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Gratuito</a>\r\n- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED</div>\r\n<div class=\"one-third\"><a href=\"?page_id=22\">Servicio Básico</a>\r\n- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED\r\n- Actualización mensual empavonado</div>\r\n<div class=\"one-third\"><a href=\"?page_id=24\">Servicio Completo</a>\r\n- Personalizado y sujeto a presupuesto.</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-02-06 20:14:01', '2014-02-06 20:14:01', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2014-02-06 19:49:59', '2014-02-06 19:49:59', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n\r\n<h4> Nuestras Fortalezas </h4>\r\n-	Servicio auténtico y confiable.\r\n-	Servicio económico y versátil.\r\n-	Buena voluntad con el cliente.\r\n-	Asistido con personas con experiencia.\r\n\r\n\r\n<h4> Nuestros Planes </h4>\r\n\r\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Gratuito</a>\r\nVivamus pretium, odio sit amet vehicula vestibulum, turpis ante sagittis urna, quis eleifend arcu justo ac sem. Cras ut semper orci. In rutrum velit id ornare rhoncus. Aliquam ut dolor vitae lectus blandit malesuada vel non metus\r\n\r\n</div>\r\n\r\n<div class=\"one-third\"><a href=\"?page_id=22\">Servicio Básico</a>\r\nVivamus pretium, odio sit amet vehicula vestibulum, turpis ante sagittis urna, quis eleifend arcu justo ac sem. Cras ut semper orci. In rutrum velit id ornare rhoncus. Aliquam ut dolor vitae lectus blandit malesuada vel non metus\r\n\r\n</div>\r\n\r\n<div class=\"one-third\"><a href=\"?page_id=24\">Servicio Completo</a>\r\nVivamus pretium, odio sit amet vehicula vestibulum, turpis ante sagittis urna, quis eleifend arcu justo ac sem. Cras ut semper orci. In rutrum velit id ornare rhoncus. Aliquam ut dolor vitae lectus blandit malesuada vel non metus\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-02-06 19:49:59', '2014-02-06 19:49:59', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2014-02-06 20:05:35', '2014-02-06 20:05:35', '', 'imagen3', '', 'inherit', 'open', 'open', '', 'imagen3', '', '', '2014-02-06 20:05:35', '2014-02-06 20:05:35', '', 8, 'http://www.tsted.me/wp-content/uploads/2014/01/imagen3.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2014-02-06 20:14:42', '2014-02-06 20:14:42', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n	<li>Servicio auténtico y confiable.</li>\r\n	<li>Servicio económico y versátil.</li>\r\n	<li>Buena voluntad con el cliente.</li>\r\n	<li>- Asistido con personas con experiencia.</li>\r\n</ul>\r\n<h4>Nuestros Planes</h4>\r\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Gratuito</a>\r\n<ul>\r\n	<li>Creación facebook personalizado</li>\r\n	<li>Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.</li>\r\n	<li>Empavonado gratis fachada servicio TSTED</li>\r\n</ul>\r\n</div>\r\n<div class=\"one-third\"><a href=\"?page_id=22\">Servicio Básico</a>\r\n<ul>\r\n	<li>Creación facebook personalizado</li>\r\n	<li>Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.</li>\r\n	<li>Empavonado gratis fachada servicio TSTED</li>\r\n	<li>Actualización mensual empavonado</li>\r\n</ul>\r\n</div>\r\n<div class=\"one-third\"><a href=\"?page_id=24\">Servicio Completo</a>\r\n<ul>\r\n	<li>Personalizado y sujeto a presupuesto.</li>\r\n</ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-02-06 20:14:42', '2014-02-06 20:14:42', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2014-02-06 20:17:08', '2014-02-06 20:17:08', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n	<li>Servicio auténtico y confiable.</li>\r\n	<li>Servicio económico y versátil.</li>\r\n	<li>Buena voluntad con el cliente.</li>\r\n	<li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n<h4>Nuestros Planes</h4>\r\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Gratuito</a>\r\n<ul>\r\n	<li>Creación facebook personalizado</li>\r\n	<li>Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.</li>\r\n	<li>Empavonado gratis fachada servicio TSTED</li>\r\n</ul>\r\n</div>\r\n<div class=\"one-third\"><a href=\"?page_id=22\">Servicio Básico</a>\r\n<ul>\r\n	<li>Creación facebook personalizado</li>\r\n	<li>Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.</li>\r\n	<li>Empavonado gratis fachada servicio TSTED</li>\r\n	<li>Actualización mensual empavonado</li>\r\n</ul>\r\n</div>\r\n<div class=\"one-third\"><a href=\"?page_id=24\">Servicio Completo</a>\r\n<ul>\r\n	<li>Personalizado y sujeto a presupuesto.</li>\r\n</ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-02-06 20:17:08', '2014-02-06 20:17:08', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2014-02-06 20:17:31', '2014-02-06 20:17:31', 'Creación facebook comercial personalizado: foto gratuita de la portada del local comercial como perfil y otra foto destinada a la portada. La notificación de creación y funcionamiento del facebook se realizará al mail del cliente. Espera aproximada de notificación dos días después del contrato.\r\n\r\nCreado el Facebook oficial del local comercial, al día siguiente y los próximos, se entregará al empezar el día un mail certificado por TSTED de la cantidad actualizada de “me gusta” que lleva el local comercial. Esta podrá ser impresa y expuesta a los consumidores en cualquier dependencia del local comercial. Excepto en la fachada del local.\r\n\r\nYa puesto en funcionamiento el Facebook oficial del local comercial, se gestionará e instalará en la fachada un empavonado u otro afiche gratuito de que el local cuenta con el servicio TSTED.\r\n\r\nSe actualizará de manera mensual (dentro de los primeros 7 días de cada mes) el empavonado u afiche inicial gratuito que posee el local comercial. Específicamente, mencionará que el local comercial cuenta con el servicio TSTED y la cantidad de “me gusta” que posee al cierre del mes precedente.\r\n\r\nDuración: 3 meses.\r\n\r\nCosto: 1 UTM\r\n\r\n<i> </i>', 'Servicio Básico', '- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED\r\n- Actualización mensual empavonado', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-02-06 20:17:31', '2014-02-06 20:17:31', '', 22, 'http://www.tsted.me/22-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2014-02-06 20:20:49', '2014-02-06 20:20:49', '', 'black-35394_640', '', 'inherit', 'open', 'open', '', 'black-35394_640', '', '', '2014-02-06 20:20:49', '2014-02-06 20:20:49', '', 8, 'http://www.tsted.me/wp-content/uploads/2014/01/black-35394_640.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2014-02-06 20:29:00', '2014-02-06 20:29:00', '<div class=\"one-half first\">[contact-form-7 id=\"44\" title=\"Visita\"]</div>\r\n<div class=\"one-half\"><a href=\"http://www.tsted.me/wp-content/uploads/2014/01/7975205041_74f85a53a9_o.jpg\"><img src=\"http://www.tsted.me/wp-content/uploads/2014/01/7975205041_74f85a53a9_o-300x200.jpg\" alt=\"7975205041_74f85a53a9_o\" width=\"300\" height=\"200\" class=\"alignnone size-medium wp-image-30\" /></a></div>\r\n', 'Solicita Una Visita', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2014-02-06 20:29:00', '2014-02-06 20:29:00', '', 38, 'http://www.tsted.me/38-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2014-02-06 20:29:50', '2014-02-06 20:29:50', '<div class=\"one-half first\">[contact-form-7 id=\"44\" title=\"Visita\"]</div>\r\n<div class=\"one-half\"><a href=\"http://www.tsted.me/wp-content/uploads/2014/01/7975205041_74f85a53a9_o.jpg\"><img src=\"http://www.tsted.me/wp-content/uploads/2014/01/7975205041_74f85a53a9_o-1024x682.jpg\" alt=\"7975205041_74f85a53a9_o\" width=\"680\" height=\"452\" class=\"alignnone size-large wp-image-30\" /></a></div>', 'Solicita Una Visita', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2014-02-06 20:29:50', '2014-02-06 20:29:50', '', 38, 'http://www.tsted.me/38-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2014-02-06 20:39:57', '2014-02-06 20:39:57', '', 'Convierte un Me Gusta en Un Cliente', 'Aprovecha las ventajas de las Redes Sociales para llevar tu negocio para adelante. Muestra a tus clientes toda la gente que le gusta tu servicio.', 'publish', 'open', 'open', '', 'convierte-un-me-gusta-en-un-cliente', '', '', '2014-02-11 22:29:00', '2014-02-11 22:29:00', '', 0, 'http://www.tsted.me/?page_id=78', 0, 'page', '', 0),
(80, 1, '2014-02-06 20:37:58', '2014-02-06 20:37:58', '', '3568409530_c4029da66a_o', '', 'inherit', 'open', 'open', '', '3568409530_c4029da66a_o-2', '', '', '2014-02-06 20:37:58', '2014-02-06 20:37:58', '', 78, 'http://www.tsted.me/wp-content/uploads/2014/02/3568409530_c4029da66a_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2014-02-06 20:39:57', '2014-02-06 20:39:57', '', 'Convierte un Me Gusta en Un Cliente', 'Aprovecha las ventajas de las Redes Sociales para llevar tu negocio para adelante. Muéstrales a tus clientes toda la gente que le gusta tu servicio.', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2014-02-06 20:39:57', '2014-02-06 20:39:57', '', 78, 'http://www.tsted.me/78-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2014-02-06 20:46:49', '2014-02-06 20:46:49', '', 'Tsted en Redes Sociales', '', 'inherit', 'open', 'open', '', '3568409530_c4029da66a_o-2-2', '', '', '2014-02-06 20:46:49', '2014-02-06 20:46:49', '', 78, 'http://www.tsted.me/wp-content/uploads/2014/02/3568409530_c4029da66a_o-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2014-02-11 22:28:56', '2014-02-11 22:28:56', '', 'Convierte un Me Gusta en Un Cliente', 'Aprovecha las ventajas de las Redes Sociales para llevar tu negocio para adelante. Muestra a tus clientes toda la gente que le gusta tu servicio.', 'inherit', 'open', 'open', '', '78-autosave-v1', '', '', '2014-02-11 22:28:56', '2014-02-11 22:28:56', '', 78, 'http://www.tsted.me/78-autosave-v1/', 0, 'revision', '', 0),
(84, 1, '2014-02-11 22:29:00', '2014-02-11 22:29:00', '', 'Convierte un Me Gusta en Un Cliente', 'Aprovecha las ventajas de las Redes Sociales para llevar tu negocio para adelante. Muestra a tus clientes toda la gente que le gusta tu servicio.', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2014-02-11 22:29:00', '2014-02-11 22:29:00', '', 78, 'http://www.tsted.me/78-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2014-02-11 22:31:11', '2014-02-11 22:31:11', '', 'Clientes', '', 'publish', 'open', 'open', '', 'clientes', '', '', '2014-02-11 22:31:11', '2014-02-11 22:31:11', '', 0, 'http://www.tsted.me/?page_id=85', 0, 'page', '', 0),
(86, 1, '2014-02-11 22:31:11', '2014-02-11 22:31:11', '', 'Clientes', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2014-02-11 22:31:11', '2014-02-11 22:31:11', '', 85, 'http://www.tsted.me/85-revision-v1/', 0, 'revision', '', 0),
(94, 2, '2014-06-24 00:07:31', '2014-06-24 00:07:31', '<span style=\"line-height: 1.5em;\">El equipo TSTED creará un Fundpage del cliente enfocado solo en su local comercial. Esto, según los requerimientos de diseño definidos por TSTED .</span>\n\nSe instalará solo una Tablet Tsted en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\n\nLa duración del contrato Servicio Básico es de 1 año. Y su costo mensual corresponde a 1 UTM.\n\n&nbsp;\n\n&nbsp;', 'Servicio Básico', '- Creación fundpage personalizado.\n- Instalación contador Tsted.\n- Empavonado gratis fachada servicio TSTED', 'inherit', 'open', 'open', '', '20-autosave-v1', '', '', '2014-06-24 00:07:31', '2014-06-24 00:07:31', '', 20, 'http://www.tsted.me/20-autosave-v1/', 0, 'revision', '', 0),
(96, 2, '2014-07-21 22:57:11', '2014-07-21 22:57:11', 'El equipo TSTED creará diferentes Fundpage del cliente enfocado en su local comercial o productos que se distribuyan. Esto, según los requerimientos de diseño definidos por TSTED.<!--?xml:namespace prefix = \"o\" ns = \"urn:schemas-microsoft-com:office:office\" /-->\n\nSe instalará  una Tablet TSTED en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\n\nAdemás, los otros dispositivos digitales (a excepción al posicionado en la fachada) tendrán los Fundpages que especifique el cliente con su respectivo contador TSTED.\n\nEl cliente contará con 4 instancias personales durante el año de vigencia del contrato en las que puede escoger propuestas de edición a los diferentes contadores TSTED.\n\nLa duración del contrato Servicio Completo es de 1 año. Y su costo mensual corresponde a 0,5 UTM por dispositivo dispuesto.\n\n<i> </i>', 'Servicio Silver', '- Creación fundpage personalizado.\n- Instalación contadores TSTED.\n- 4 instancias de mejora con el equipo TSTED.', 'inherit', 'open', 'open', '', '22-autosave-v1', '', '', '2014-07-21 22:57:11', '2014-07-21 22:57:11', '', 22, 'http://www.tsted.me/22-autosave-v1/', 0, 'revision', '', 0),
(98, 2, '2014-06-08 21:24:04', '2014-06-08 21:24:04', 'El equipo TSTED creará diferentes Fundpage del cliente enfocado en su local comercial o productos que se distribuyan. Esto, según los requerimientos de diseño definidos por TSTED.<!--?xml:namespace prefix = \"o\" ns = \"urn:schemas-microsoft-com:office:office\" /-->\r\n\r\nSe instalará  una Tablet TSTED en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nAdemás, los otros dispositivos digitales (a excepción al posicionado en la fachada) tendrán los Fundpages que especifique el cliente con su respectivo contador TSTED.\r\n\r\nEl cliente contará con 4 instancias personales en las que puede escoger propuestas de edición a los diferentes contadores TSTED.\r\n\r\nLa duración del contrato Servicio Completo es de 1 año. Y su costo mensual corresponde a 1,25 UTM por dispositivo dispuesto.\r\n\r\n<i> </i>', 'Servicio Completo', '- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED\r\n- Actualización mensual empavonado', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-06-08 21:24:04', '2014-06-08 21:24:04', '', 22, 'http://www.tsted.me/22-revision-v1/', 0, 'revision', '', 0),
(99, 2, '2014-06-08 21:28:38', '2014-06-08 21:28:38', '<span style=\"line-height: 1.5em;\"> Personalizado y sujeto a presupuesto.</span>', 'Servicio Personalizado', '- Saca el provecho de todas las potencialidades de las Redes Sociales\r\n- Personalizado y sujeto a presupuesto. \r\n', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-06-08 21:28:38', '2014-06-08 21:28:38', '', 24, 'http://www.tsted.me/24-revision-v1/', 0, 'revision', '', 0),
(100, 2, '2014-06-08 21:32:03', '2014-06-08 21:32:03', '<span style=\"line-height: 1.5em;\">Consultoría exhaustiva de lo que busca el cliente de nuestros servicios. </span>\r\n\r\n<span style=\"line-height: 1.5em;\">El servicio será personalizado y sujeto a presupuesto.</span>', 'Servicio Personalizado', '- Saca el provecho de todas las potencialidades de las Redes Sociales\r\n- Personalizado y sujeto a presupuesto. \r\n', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-06-08 21:32:03', '2014-06-08 21:32:03', '', 24, 'http://www.tsted.me/24-revision-v1/', 0, 'revision', '', 0),
(122, 2, '2014-06-24 00:14:15', '2014-06-24 00:14:15', 'El equipo TSTED creará diferentes Fundpage del cliente enfocado en su local comercial o productos que se distribuyan. Esto, según los requerimientos de diseño definidos por TSTED.<!--?xml:namespace prefix = \"o\" ns = \"urn:schemas-microsoft-com:office:office\" /-->\r\n\r\nSe instalará  una Tablet TSTED en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nAdemás, los otros dispositivos digitales (a excepción al posicionado en la fachada) tendrán los Fundpages que especifique el cliente con su respectivo contador TSTED.\r\n\r\nEl cliente contará con 4 instancias personales durante el año de vigencia del contrato en las que puede escoger propuestas de edición a los diferentes contadores TSTED.\r\n\r\nLa duración del contrato Servicio Completo es de 1 año. Y su costo mensual corresponde a 0,5 UTM por dispositivo dispuesto.\r\n\r\n<i> </i>', 'Servicio Completo', '- Creación fundpage personalizado.\r\n- Instalación contadores TSTED.\r\n- 4 instancias de mejora con el equipo TSTED.', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-06-24 00:14:15', '2014-06-24 00:14:15', '', 22, 'http://www.tsted.me/22-revision-v1/', 0, 'revision', '', 0),
(101, 2, '2014-06-09 02:11:15', '2014-06-09 02:11:15', 'El equipo TSTED creará diferentes Fundpage del cliente enfocado en su local comercial o productos que se distribuyan. Esto, según los requerimientos de diseño definidos por TSTED.<!--?xml:namespace prefix = \"o\" ns = \"urn:schemas-microsoft-com:office:office\" /-->\r\n\r\nSe instalará  una Tablet TSTED en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nAdemás, los otros dispositivos digitales (a excepción al posicionado en la fachada) tendrán los Fundpages que especifique el cliente con su respectivo contador TSTED.\r\n\r\nEl cliente contará con 4 instancias personales durante el año de vigencia del contrato en las que puede escoger propuestas de edición a los diferentes contadores TSTED.\r\n\r\nLa duración del contrato Servicio Completo es de 1 año. Y su costo mensual corresponde a 1,25 UTM por dispositivo dispuesto.\r\n\r\n<i> </i>', 'Servicio Completo', '- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED\r\n- Actualización mensual empavonado', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-06-09 02:11:15', '2014-06-09 02:11:15', '', 22, 'http://www.tsted.me/22-revision-v1/', 0, 'revision', '', 0),
(106, 2, '2014-06-09 02:45:49', '2014-06-09 02:45:49', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n	<li>Servicio auténtico y confiable.</li>\r\n	<li>Servicio económico y versátil.</li>\r\n	<li>Buena voluntad con el cliente.</li>\r\n	<li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n<h4>Nuestros Planes</h4>\r\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Básico</a></div>\r\n<div class=\"one-third first\">\r\n<ul>\r\n	<li>Creación Fundpage del local comercial.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n</ul>\r\n</div>\r\n<a href=\"?page_id=22\">Servicio Completo </a>\r\n<div class=\"one-third\">\r\n<ul>\r\n	<li>Creación Fundpage del local comercial y otros productos.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n	<li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n	<li>Cuatro instancias de personalización sugerida por equipo TSTED.</li>\r\n</ul>\r\n</div>\r\n<a href=\"?page_id=24\">Servicio Personalizado </a>\r\n<div class=\"one-third\">\r\n<ul>\r\n	<li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n</ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-09 02:45:49', '2014-06-09 02:45:49', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(105, 2, '2014-06-09 02:41:35', '2014-06-09 02:41:35', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n	<li>Servicio auténtico y confiable.</li>\r\n	<li>Servicio económico y versátil.</li>\r\n	<li>Buena voluntad con el cliente.</li>\r\n	<li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n<h4>Nuestros Planes</h4>\r\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Básico</a></div>\r\n<div class=\"one-third first\">\r\n<ul>\r\n	<li>Creación Fundpage personalizado del local comercial.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n</ul>\r\n</div>\r\n<a href=\"?page_id=22\">Servicio Completo </a>\r\n<div class=\"one-third\">\r\n<ul>\r\n	<li>Creación Fundpage personalizado del local comercial y otros productos.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n	<li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n	<li>Cuatro instancias de personalización sugerida por equipo TSTED.</li>\r\n</ul>\r\n</div>\r\n<a href=\"?page_id=24\">Servicio Personalizado </a>\r\n<div class=\"one-third\">\r\n<ul>\r\n	<li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n</ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-09 02:41:35', '2014-06-09 02:41:35', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(108, 2, '2014-06-09 02:51:19', '2014-06-09 02:51:19', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n	<li>Servicio auténtico y confiable.</li>\r\n	<li>Servicio económico y versátil.</li>\r\n	<li>Buena voluntad con el cliente.</li>\r\n	<li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n<h4>Nuestros Planes</h4>\r\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Básico</a></div>\r\n<div class=\"one-third first\">\r\n<ul>\r\n	<li>Creación Fundpage del local comercial.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n</ul>\r\n</div>\r\n<a href=\"?page_id=22\">Servicio Completo </a>\r\n<div class=\"one-third\">\r\n<ul>\r\n	<li>Creación Fundpage del local comercial y otros productos.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n	<li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n</ul>\r\n</div>\r\n<a href=\"?page_id=24\">Servicio Personalizado </a>\r\n<div class=\"one-third\">\r\n<ul>\r\n	<li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n</ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-09 02:51:19', '2014-06-09 02:51:19', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(103, 2, '2014-06-09 02:28:25', '2014-06-09 02:28:25', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\n<h4>Nuestras Fortalezas</h4>\n<ul>\n	<li>Servicio auténtico y confiable.</li>\n	<li>Servicio económico y versátil.</li>\n	<li>Buena voluntad con el cliente.</li>\n	<li>Asistido con personas con experiencia.</li>\n</ul>\n<h4>Nuestros Planes</h4>\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Básico</a></div>\n<div class=\"one-third first\">\n<ul>\n	<li>Creación Facebook o Fundpage personalizado del local comercial.</li>\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\n</ul>\n</div>\n<a href=\"?page_id=22\">Servicio Completo </a>\n<div class=\"one-third\">\n<ul>\n	<li>Creación Facebook o Fundpage personalizado del local comercial y otros productos.</li>\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\n	<li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\n	<li>Cuatro instancias de personalización sugerida por equipo TSTED.</li>\n</ul>\n</div>\n<a href=\"?page_id=24\">Servicio Personalizado </a>\n<div class=\"one-third\">\n<ul>\n	<li>Totalmente personalizado y sujeto a presupuesto.</li>\n</ul>\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-09 02:28:25', '2014-06-09 02:28:25', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(104, 2, '2014-07-21 23:02:03', '2014-07-21 23:02:03', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\n<h4>Nuestras Fortalezas</h4>\n<ul>\n	<li>Servicio auténtico y confiable.</li>\n	<li>Servicio económico y versátil.</li>\n	<li>Buena voluntad con el cliente.</li>\n	<li>Asistido con personas con experiencia.</li>\n</ul>\n<h4>Nuestros Planes</h4>\n<div><a href=\"?page_id=20\">Servicio Bronze</a></div>\n<div>\n<ul>\n	<li>Creación Fundpage del local comercial.</li>\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\n</ul>\n</div>\n<div><a href=\"?page_id=22\">Servicio Silver </a></div>\n<div>\n<ul>\n	<li>Creación Fundpage del local comercial y otros productos.</li>\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\n	<li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\n</ul>\n</div>\n<div><a href=\"?page_id=24\">Servicio Gold</a></div>\n<div>\n<ul>\n	<li>Totalmente personalizado y sujeto a presupuesto.</li>\n</ul>\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-autosave-v1', '', '', '2014-07-21 23:02:03', '2014-07-21 23:02:03', '', 8, 'http://www.tsted.me/8-autosave-v1/', 0, 'revision', '', 0),
(129, 2, '2014-07-21 23:02:28', '2014-07-21 23:02:28', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n	<li>Servicio auténtico y confiable.</li>\r\n	<li>Servicio económico y versátil.</li>\r\n	<li>Buena voluntad con el cliente.</li>\r\n	<li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n<h4>Nuestros Planes</h4>\r\n<div><a href=\"?page_id=20\">Servicio Bronze</a></div>\r\n<div>\r\n<ul>\r\n	<li>Creación Fundpage del local comercial.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n</ul>\r\n</div>\r\n<div><a href=\"?page_id=22\">Servicio Silver </a></div>\r\n<div>\r\n<ul>\r\n	<li>Creación Fundpage del local comercial y otros productos.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n	<li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n</ul>\r\n</div>\r\n<div><a href=\"?page_id=24\">Servicio Gold</a></div>\r\n<div>\r\n<ul>\r\n	<li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n</ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-07-21 23:02:28', '2014-07-21 23:02:28', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(107, 2, '2014-06-09 02:46:57', '2014-06-09 02:46:57', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n	<li>Servicio auténtico y confiable.</li>\r\n	<li>Servicio económico y versátil.</li>\r\n	<li>Buena voluntad con el cliente.</li>\r\n	<li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n<h4>Nuestros Planes</h4>\r\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Básico</a></div>\r\n<div class=\"one-third first\">\r\n<ul>\r\n	<li>Creación Fundpage del local comercial.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n</ul>\r\n</div>\r\n<a href=\"?page_id=22\">Servicio Completo </a>\r\n<div class=\"one-third\">\r\n<ul>\r\n	<li>Creación Fundpage del local comercial y otros productos.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n	<li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n	<li>Cuatro instancias de personalización sugerida por equipo TSTED.</li>\r\n</ul>\r\n</div>\r\n&nbsp;\r\n\r\n<a href=\"?page_id=24\">Servicio Personalizado </a>\r\n<div class=\"one-third\">\r\n<ul>\r\n	<li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n</ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-09 02:46:57', '2014-06-09 02:46:57', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(109, 2, '2014-06-09 03:03:53', '2014-06-09 03:03:53', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n	<li>Servicio auténtico y confiable.</li>\r\n	<li>Servicio económico y versátil.</li>\r\n	<li>Buena voluntad con el cliente.</li>\r\n	<li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n<h4>Nuestros Planes</h4>\r\n<div class=\"one-third first\"><a href=\"?page_id=20\">Servicio Básico</a></div>\r\n<div class=\"one-third first\">\r\n<ul>\r\n	<li>Creación Fundpage del local comercial.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n</ul>\r\n</div>\r\n<a href=\"?page_id=22\">Servicio Completo </a>\r\n<div class=\"one-third\">\r\n<ul>\r\n	<li>Creación Fundpage del local comercial y otros productos.</li>\r\n	<li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n	<li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n</ul>\r\n</div>\r\n<a href=\"?page_id=24\">Servicio </a>\r\n<div class=\"one-third\">\r\n<ul>\r\n	<li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n</ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-09 03:03:53', '2014-06-09 03:03:53', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(110, 2, '2014-06-12 00:03:40', '2014-06-12 00:03:40', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n  <li>Servicio auténtico y confiable.</li>\r\n  <li>Servicio económico y versátil.</li>\r\n  <li>Buena voluntad con el cliente.</li>\r\n  <li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n\r\n<h4>Nuestros Planes</h4>\r\n\r\n<div class=\"one-third first\">\r\n  <a href=\"?page_id=20\">Servicio Básico</a>\r\n</div>\r\n\r\n\r\n<div class=\"one-third first\">\r\n  <ul>\r\n    <li>Creación Fundpage del local comercial.</li>\r\n    <li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n  </ul>\r\n</div>\r\n\r\n\r\n<div class=\"one-third\">\r\n  <a href=\"?page_id=22\">Servicio Completo </a>\r\n</div>\r\n\r\n<div class=\"one-third\">\r\n  <ul>\r\n    <li>Creación Fundpage del local comercial y otros productos.</li>\r\n    <li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n    <li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n  </ul>\r\n</div>\r\n\r\n\r\n\r\n<div class=\"one-third\">\r\n  <a href=\"?page_id=24\">Servicio Personalizado</a>\r\n</div>\r\n<div class=\"one-third\">\r\n  <ul>\r\n    <li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n  </ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-12 00:03:40', '2014-06-12 00:03:40', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(112, 2, '2014-06-12 00:06:40', '2014-06-12 00:06:40', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n  <li>Servicio auténtico y confiable.</li>\r\n  <li>Servicio económico y versátil.</li>\r\n  <li>Buena voluntad con el cliente.</li>\r\n  <li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n\r\n<h4>Nuestros Planes</h4>\r\n\r\n<div class=\"one-third\">\r\n  <a href=\"?page_id=20\">Servicio Básico</a>\r\n</div>\r\n\r\n\r\n<div class=\"one-third\">\r\n  <ul>\r\n    <li>Creación Fundpage del local comercial.</li>\r\n    <li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n  </ul>\r\n</div>\r\n\r\n\r\n<div class=\"one-third\">\r\n  <a href=\"?page_id=22\">Servicio Completo </a>\r\n</div>\r\n\r\n<div class=\"one-third\">\r\n  <ul>\r\n    <li>Creación Fundpage del local comercial y otros productos.</li>\r\n    <li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n    <li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n  </ul>\r\n</div>\r\n\r\n\r\n\r\n<div class=\"one-third\">\r\n  <a href=\"?page_id=24\">Servicio Personalizado</a>\r\n</div>\r\n<div class=\"one-third\">\r\n  <ul>\r\n    <li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n  </ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-12 00:06:40', '2014-06-12 00:06:40', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(111, 2, '2014-06-12 00:04:42', '2014-06-12 00:04:42', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n  <li>Servicio auténtico y confiable.</li>\r\n  <li>Servicio económico y versátil.</li>\r\n  <li>Buena voluntad con el cliente.</li>\r\n  <li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n\r\n<h4>Nuestros Planes</h4>\r\n\r\n<div class=\"one-third first\">\r\n  <a href=\"?page_id=20\">Servicio Básico</a>\r\n</div>\r\n\r\n\r\n<div class=\"one-third first\">\r\n  <ul>\r\n    <li>Creación Fundpage del local comercial.</li>\r\n    <li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n  </ul>\r\n</div>\r\n\r\n\r\n<div class=\"one-third first\">\r\n  <a href=\"?page_id=22\">Servicio Completo </a>\r\n</div>\r\n\r\n<div class=\"one-third first\">\r\n  <ul>\r\n    <li>Creación Fundpage del local comercial y otros productos.</li>\r\n    <li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n    <li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n  </ul>\r\n</div>\r\n\r\n\r\n\r\n<div class=\"one-third first\">\r\n  <a href=\"?page_id=24\">Servicio Personalizado</a>\r\n</div>\r\n<div class=\"one-third first\">\r\n  <ul>\r\n    <li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n  </ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-12 00:04:42', '2014-06-12 00:04:42', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(114, 2, '2014-06-12 00:08:14', '2014-06-12 00:08:14', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n  <li>Servicio auténtico y confiable.</li>\r\n  <li>Servicio económico y versátil.</li>\r\n  <li>Buena voluntad con el cliente.</li>\r\n  <li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n\r\n<h4>Nuestros Planes</h4>\r\n\r\n<div class=\"\">\r\n  <a href=\"?page_id=20\">Servicio Básico</a>\r\n</div>\r\n\r\n\r\n<div class=\"\">\r\n  <ul>\r\n    <li>Creación Fundpage del local comercial.</li>\r\n    <li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n  </ul>\r\n</div>\r\n\r\n\r\n<div class=\"\">\r\n  <a href=\"?page_id=22\">Servicio Completo </a>\r\n</div>\r\n\r\n<div class=\"\">\r\n  <ul>\r\n    <li>Creación Fundpage del local comercial y otros productos.</li>\r\n    <li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n    <li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n  </ul>\r\n</div>\r\n\r\n\r\n\r\n<div class=\"\">\r\n  <a href=\"?page_id=24\">Servicio Personalizado</a>\r\n</div>\r\n<div class=\"\">\r\n  <ul>\r\n    <li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n  </ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-12 00:08:14', '2014-06-12 00:08:14', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(113, 2, '2014-06-12 00:07:11', '2014-06-12 00:07:11', 'Actualmente las redes sociales cumplen con satisfacer un marketing en tiempo real, tanto en contenido, videos y otros. Por tanto, en un avance de retar este espacio tecnológico que continuamente está cambiando, con esfuerzo surge TSTED. El cual permitirá que tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido.\r\n<h4>Nuestras Fortalezas</h4>\r\n<ul>\r\n  <li>Servicio auténtico y confiable.</li>\r\n  <li>Servicio económico y versátil.</li>\r\n  <li>Buena voluntad con el cliente.</li>\r\n  <li>Asistido con personas con experiencia.</li>\r\n</ul>\r\n\r\n<h4>Nuestros Planes</h4>\r\n\r\n<div class=\"one-third first\">\r\n  <a href=\"?page_id=20\">Servicio Básico</a>\r\n</div>\r\n\r\n\r\n<div class=\"one-third first\">\r\n  <ul>\r\n    <li>Creación Fundpage del local comercial.</li>\r\n    <li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n  </ul>\r\n</div>\r\n\r\n\r\n<div class=\"one-third second\">\r\n  <a href=\"?page_id=22\">Servicio Completo </a>\r\n</div>\r\n\r\n<div class=\"one-third second\">\r\n  <ul>\r\n    <li>Creación Fundpage del local comercial y otros productos.</li>\r\n    <li>Instalación de Tablet TSTED junto con afiche de ayuda en la fachada del local.</li>\r\n    <li>Instalación del contador TSTED en los dispositivos digitales dispuestos.</li>\r\n  </ul>\r\n</div>\r\n\r\n\r\n\r\n<div class=\"one-third third\">\r\n  <a href=\"?page_id=24\">Servicio Personalizado</a>\r\n</div>\r\n<div class=\"one-third third\">\r\n  <ul>\r\n    <li>Totalmente personalizado y sujeto a presupuesto.</li>\r\n  </ul>\r\n</div>', 'Servicios', 'Tus propios clientes con apego a las redes sociales realicen el marketing del negocio transmitiendo físicamente a cada local comercial si les ha gustado el servicio o producto consumido. ', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-12 00:07:11', '2014-06-12 00:07:11', '', 8, 'http://www.tsted.me/8-revision-v1/', 0, 'revision', '', 0),
(116, 2, '2014-06-14 18:37:55', '2014-06-14 18:37:55', 'El equipo TSTED creará diferentes Fundpage del cliente enfocado en su local comercial o productos que se distribuyan. Esto, según los requerimientos de diseño definidos por TSTED.<!--?xml:namespace prefix = \"o\" ns = \"urn:schemas-microsoft-com:office:office\" /-->\r\n\r\nSe instalará  una Tablet TSTED en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nAdemás, los otros dispositivos digitales (a excepción al posicionado en la fachada) tendrán los Fundpages que especifique el cliente con su respectivo contador TSTED.\r\n\r\nEl cliente contará con 4 instancias personales durante el año de vigencia del contrato en las que puede escoger propuestas de edición a los diferentes contadores TSTED.\r\n\r\nLa duración del contrato Servicio Completo es de 1 año. Y su costo mensual corresponde a 0,5 UTM por dispositivo dispuesto.\r\n\r\n<i> </i>', 'Servicio Completo', '- Creación facebook personalizado\r\n- Mail certificado por TSTED de la cantidad actualizada me gusta que tiene el local comercial o sus productos.\r\n- Empavonado gratis fachada servicio TSTED\r\n- Actualización mensual empavonado', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-06-14 18:37:55', '2014-06-14 18:37:55', '', 22, 'http://www.tsted.me/22-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(121, 2, '2014-06-24 00:08:29', '2014-06-24 00:08:29', '<span style=\"line-height: 1.5em;\">El equipo TSTED creará un Fundpage del cliente enfocado solo en su local comercial. Esto, según los requerimientos de diseño definidos por TSTED .</span>\r\n\r\nSe instalará solo una Tablet Tsted en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nLa duración del contrato Servicio Básico es de 1 año. Y su costo mensual corresponde a 1 UTM.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Servicio Básico', '- Creación fundpage personalizado.\r\n- Instalación contador TSTED.', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-06-24 00:08:29', '2014-06-24 00:08:29', '', 20, 'http://www.tsted.me/20-revision-v1/', 0, 'revision', '', 0),
(125, 2, '2014-07-21 22:54:46', '2014-07-21 22:54:46', '<span style=\"line-height: 1.5em;\">Consultoría exhaustiva de lo que busca el cliente de nuestros servicios. </span>\r\n\r\n<span style=\"line-height: 1.5em;\">El servicio será personalizado y sujeto a presupuesto.</span>', 'Servicio Gold', '- Saca el provecho de todas las potencialidades de las Redes Sociales\r\n- Personalizado y sujeto a presupuesto. \r\n', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-07-21 22:54:46', '2014-07-21 22:54:46', '', 24, 'http://www.tsted.me/24-revision-v1/', 0, 'revision', '', 0),
(126, 2, '2014-07-21 22:57:21', '2014-07-21 22:57:21', 'El equipo TSTED creará diferentes Fundpage del cliente enfocado en su local comercial o productos que se distribuyan. Esto, según los requerimientos de diseño definidos por TSTED.<!--?xml:namespace prefix = \"o\" ns = \"urn:schemas-microsoft-com:office:office\" /-->\r\n\r\nSe instalará  una Tablet TSTED en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nAdemás, los otros dispositivos digitales (a excepción al posicionado en la fachada) tendrán los Fundpages que especifique el cliente con su respectivo contador TSTED.\r\n\r\nEl cliente contará con 4 instancias personales durante el año de vigencia del contrato en las que puede escoger propuestas de edición a los diferentes contadores TSTED.\r\n\r\nLa duración del contrato Servicio Completo es de 1 año. Y su costo mensual corresponde a 0,5 UTM por dispositivo dispuesto.\r\n\r\n<i> </i>', 'Servicio Silver', '- Creación fundpage personalizado.\r\n- Instalación contadores TSTED.\r\n- 4 instancias de mejora con el equipo TSTED.', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-07-21 22:57:21', '2014-07-21 22:57:21', '', 22, 'http://www.tsted.me/22-revision-v1/', 0, 'revision', '', 0),
(127, 2, '2014-07-21 22:58:16', '2014-07-21 22:58:16', 'El equipo TSTED creará diferentes Fundpage del cliente enfocado en su local comercial o productos que se distribuyan. Esto, según los requerimientos de diseño definidos por TSTED.<!--?xml:namespace prefix = \"o\" ns = \"urn:schemas-microsoft-com:office:office\" /-->\r\n\r\nSe instalará  una pantalla TSTED en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nAdemás, los otros dispositivos digitales (a excepción al posicionado en la fachada) tendrán los Fundpages que especifique el cliente con su respectivo contador TSTED.\r\n\r\nEl cliente contará con 4 instancias personales durante el año de vigencia del contrato en las que puede escoger propuestas de edición a los diferentes contadores TSTED.\r\n\r\nLa duración del contrato Servicio Completo es de 1 año. Y su costo mensual corresponde a 0,5 UTM por dispositivo dispuesto.\r\n\r\n<i> </i>', 'Servicio Silver', '- Creación fundpage personalizado.\r\n- Instalación contadores TSTED.\r\n- 4 instancias de mejora con el equipo TSTED.', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-07-21 22:58:16', '2014-07-21 22:58:16', '', 22, 'http://www.tsted.me/22-revision-v1/', 0, 'revision', '', 0),
(128, 2, '2014-07-21 22:59:16', '2014-07-21 22:59:16', '<span style=\"line-height: 1.5em;\">El equipo TSTED creará un Fundpage del cliente enfocado solo en su local comercial. Esto, según los requerimientos de diseño definidos por TSTED .</span>\r\n\r\nSe instalará solo una pantalla Tsted en la fachada del local comercial, junto con un afiche personalizado que oriente al cliente para buscar y poner me gusta según la experiencia que haya tenido en el local.\r\n\r\nLa duración del contrato Servicio Básico es de 1 año. Y su costo mensual corresponde a 1 UTM.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Servicio Bronze', '- Creación fundpage personalizado.\r\n- Instalación contador TSTED.', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-07-21 22:59:16', '2014-07-21 22:59:16', '', 20, 'http://www.tsted.me/20-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(56, 2, 0),
(16, 2, 0),
(18, 2, 0),
(17, 2, 0),
(46, 2, 0),
(55, 2, 0),
(54, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menu Top', 'menu-top', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'desafiolatam'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '118'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:\"add-post\";i:1;s:13:\"add-portfolio\";i:2;s:12:\"add-post_tag\";}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&urlbutton=custom&imgsize=large'),
(18, 1, 'wp_user-settings-time', '1392157839'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'closedpostboxes_page', 'a:0:{}'),
(21, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(22, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:145:\"postexcerpt,genesis_inpost_seo_box,genesis_inpost_layout_box,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv,genesis_inpost_scripts_box\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_page', '2'),
(24, 2, 'first_name', ''),
(25, 2, 'last_name', ''),
(26, 2, 'nickname', 'tstedadmin'),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(34, 2, 'wp_user_level', '10'),
(35, 2, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(36, 2, 'wp_dashboard_quick_press_last_post_id', '123'),
(37, 2, 'nav_menu_recently_edited', '2'),
(38, 2, 'managenav-menuscolumnshidden', 'a:1:{i:0;s:0:\"\";}'),
(46, 2, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(39, 2, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:\"add-post\";i:1;s:13:\"add-portfolio\";i:2;s:12:\"add-post_tag\";}'),
(40, 2, 'closedpostboxes_page', 'a:0:{}'),
(41, 2, 'metaboxhidden_page', 'a:0:{}'),
(44, 2, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:145:\"genesis_inpost_seo_box,genesis_inpost_layout_box,postexcerpt,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv,genesis_inpost_scripts_box\";s:8:\"advanced\";s:0:\"\";}'),
(42, 2, 'wp_user-settings', 'editor=tinymce'),
(43, 2, 'wp_user-settings-time', '1403568458'),
(45, 2, 'screen_layout_page', '2'),
(47, 2, 'metaboxhidden_dashboard', 'a:0:{}'),
(48, 2, 'closedpostboxes_post', 'a:0:{}'),
(49, 2, 'metaboxhidden_post', 'a:0:{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'desafiolatam', '$P$BbBf38O4BPLz3WdwCodhB0bN7n8iYV0', 'desafiolatam', 'contacto@desafiolatam.com', '', '2014-01-20 19:18:10', '', 0, 'desafiolatam'),
(2, 'tstedadmin', '$P$BuckcYyotjADg9fA/6ywRhGdETkxGr/', 'tstedadmin', 'contacto@tsted.me', '', '2014-03-19 17:36:54', '', 0, 'tstedadmin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dl_cf7dbplugin_submits`
--
ALTER TABLE `dl_cf7dbplugin_submits`
  ADD KEY `submit_time_idx` (`submit_time`),
  ADD KEY `form_name_idx` (`form_name`),
  ADD KEY `field_name_idx` (`field_name`);

--
-- Indices de la tabla `dl_commentmeta`
--
ALTER TABLE `dl_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_comments`
--
ALTER TABLE `dl_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `dl_links`
--
ALTER TABLE `dl_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `dl_options`
--
ALTER TABLE `dl_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `dl_postmeta`
--
ALTER TABLE `dl_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_posts`
--
ALTER TABLE `dl_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `dl_term_relationships`
--
ALTER TABLE `dl_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `dl_term_taxonomy`
--
ALTER TABLE `dl_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `dl_termmeta`
--
ALTER TABLE `dl_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_terms`
--
ALTER TABLE `dl_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `dl_usermeta`
--
ALTER TABLE `dl_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_users`
--
ALTER TABLE `dl_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_cf7dbplugin_submits`
--
ALTER TABLE `wp_cf7dbplugin_submits`
  ADD KEY `submit_time_idx` (`submit_time`),
  ADD KEY `form_name_idx` (`form_name`),
  ADD KEY `field_name_idx` (`field_name`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`);

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dl_commentmeta`
--
ALTER TABLE `dl_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dl_comments`
--
ALTER TABLE `dl_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `dl_links`
--
ALTER TABLE `dl_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dl_options`
--
ALTER TABLE `dl_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT de la tabla `dl_postmeta`
--
ALTER TABLE `dl_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `dl_posts`
--
ALTER TABLE `dl_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `dl_term_taxonomy`
--
ALTER TABLE `dl_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `dl_termmeta`
--
ALTER TABLE `dl_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dl_terms`
--
ALTER TABLE `dl_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `dl_usermeta`
--
ALTER TABLE `dl_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `dl_users`
--
ALTER TABLE `dl_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9133;
--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
