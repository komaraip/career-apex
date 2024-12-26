-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 8.0.30 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk komarai1_ca_fix
USE `komarai1_ca_fix`;

-- membuang struktur untuk table komarai1_ca_fix.abouts
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.abouts: ~0 rows (lebih kurang)
INSERT INTO `abouts` (`id`, `image`, `title`, `description`, `url`, `created_at`, `updated_at`) VALUES
	(1, '/uploads/media_676c37244879f.png', 'What We Can Do?', '<p>At Career Apex, we are dedicated to bridging the gap between job seekers and employers by providing a platform that makes the job search and hiring process seamless and efficient. For job seekers, we offer extensive job listings across various industries, personalized job matches based on skills and preferences, valuable career resources including resume tips and interview guides, and an easy application process through our user-friendly interface. For employers, we provide streamlined hiring solutions that allow posting jobs, reviewing applications, and communicating with candidates all in one place. Our platform connects you with top-quality candidates from a wide pool, offers advanced search tools for efficient filtering and screening, and enhances your company\'s visibility with a compelling company profile. Join Career Apex today and take the next step towards achieving your career or hiring goals with ease and confidence.</p>', 'https://project.komaraip.com/careerapex', '2024-02-09 04:27:59', '2024-12-25 09:47:32');

-- membuang struktur untuk table komarai1_ca_fix.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/default-uploads/avatar.png',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.admins: ~0 rows (lebih kurang)
INSERT INTO `admins` (`id`, `name`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', '/default-uploads/avatar.png', 'admin@careerapex.com', NULL, '$2y$12$5OjjiOpwRVOX45WJQbjSterHCA8equuz2JWwU0TFxjk8ipnke.BWS', NULL, '2024-02-07 22:29:28', '2024-12-22 11:53:15'),
	(3, 'Zarin Nurullayla', '/default-uploads/avatar.png', 'zarin@careerapex.com', NULL, '$2y$12$bqynnZuYcAzxqqYEiM1bEus0BSVSrHhnde8shE8QmFFIyAabQbsSe', NULL, '2024-12-25 10:37:06', '2024-12-25 10:37:06'),
	(4, 'Ahmad Haikal Kamil Shahab', '/default-uploads/avatar.png', 'haikal@careerapex.com', NULL, '$2y$12$gx7ccYMpnzBHD8ai/ZHO5eWOsTZi/xWKENqB9FfgZWSUzFVNl6daO', NULL, '2024-12-25 10:42:22', '2024-12-25 10:42:22'),
	(5, 'Zaky Fajri Rosmansah', '/default-uploads/avatar.png', 'zaky@careerapex.com', NULL, '$2y$12$to1RDRwkYfcDpikUAQRRf.n.wC7DlLiYXJuDRRCfJd778naii9xCy', NULL, '2024-12-25 10:43:01', '2024-12-25 10:43:01');

-- membuang struktur untuk table komarai1_ca_fix.admin_menus
CREATE TABLE IF NOT EXISTS `admin_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.admin_menus: ~5 rows (lebih kurang)
INSERT INTO `admin_menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Navigation Menu', NULL, NULL),
	(3, 'Footer Menu One', '2024-01-31 20:35:53', '2024-01-31 20:35:53'),
	(4, 'Footer Menu Two', '2024-01-31 20:36:11', '2024-01-31 20:36:11'),
	(5, 'Footer Menu Three', '2024-01-31 20:36:25', '2024-01-31 20:36:25'),
	(6, 'Footer Menu Four', '2024-01-31 20:36:38', '2024-01-31 20:36:38');

-- membuang struktur untuk table komarai1_ca_fix.admin_menu_items
CREATE TABLE IF NOT EXISTS `admin_menu_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `sort` int NOT NULL DEFAULT '0',
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` bigint unsigned NOT NULL,
  `depth` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `admin_menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.admin_menu_items: ~23 rows (lebih kurang)
INSERT INTO `admin_menu_items` (`id`, `label`, `link`, `parent_id`, `sort`, `class`, `menu_id`, `depth`, `created_at`, `updated_at`) VALUES
	(1, 'Home', '/', 0, 0, NULL, 1, 0, '2024-02-09 04:05:52', '2024-02-09 04:06:08'),
	(2, 'Find a Job', '/jobs', 0, 1, NULL, 1, 0, '2024-02-09 04:06:08', '2024-02-09 04:06:21'),
	(3, 'Company', '/companies', 0, 2, NULL, 1, 0, '2024-02-09 04:06:20', '2024-12-24 03:34:06'),
	(4, 'Candidate', '/candidates', 0, 3, NULL, 1, 0, '2024-02-09 04:06:30', '2024-12-24 03:34:41'),
	(7, 'About Us', '/about-us', 0, 5, NULL, 1, 0, '2024-02-09 04:08:07', '2024-12-25 10:31:06'),
	(8, 'Contact', '/contact', 0, 6, NULL, 1, 0, '2024-02-09 04:08:17', '2024-12-25 10:31:06'),
	(9, 'Blogs', '/blogs', 0, 4, NULL, 1, 0, '2024-02-09 04:08:30', '2024-12-25 10:31:11'),
	(10, 'Komara Indra Putra', '/', 0, 0, NULL, 3, 0, '2024-02-09 04:12:25', '2024-12-25 07:36:55'),
	(11, 'Ahmad Haikal K. S.', '/', 0, 1, NULL, 3, 0, '2024-02-09 04:12:34', '2024-12-25 07:39:07'),
	(12, 'Zaky Fajri Rosmansah', '/', 0, 2, NULL, 3, 0, '2024-02-09 04:12:41', '2024-12-25 07:38:07'),
	(13, 'Zarin Nurullayla', '/', 0, 3, NULL, 3, 0, '2024-02-09 04:12:47', '2024-12-25 07:38:33'),
	(14, 'Home', '/', 0, 0, NULL, 4, 0, '2024-02-09 04:13:04', '2024-12-25 07:40:05'),
	(15, 'Find a Job', '/jobs', 0, 1, NULL, 4, 0, '2024-02-09 04:13:19', '2024-12-25 07:40:36'),
	(16, 'Company', '/companies', 0, 2, NULL, 4, 0, '2024-02-09 04:13:25', '2024-12-25 07:40:51'),
	(17, 'Candidate', '/candidates', 0, 3, NULL, 4, 0, '2024-02-09 04:13:33', '2024-12-25 07:41:30'),
	(18, 'About Us', '/about-us', 0, 0, NULL, 5, 0, '2024-02-09 04:13:50', '2024-12-25 07:42:51'),
	(19, 'FAQ', '/', 0, 3, NULL, 5, 0, '2024-02-09 04:13:57', '2024-12-25 07:44:00'),
	(26, 'Privacy', '#', 0, 0, NULL, 6, 0, '2024-02-09 04:25:16', '2024-02-09 04:25:23'),
	(27, 'Help', '#', 0, 1, NULL, 6, 0, '2024-02-09 04:25:23', '2024-02-09 04:25:28'),
	(28, 'Terms', '#', 0, 2, NULL, 6, 0, '2024-02-09 04:25:28', '2024-02-09 04:25:34'),
	(29, 'Github', 'https://github.com/komaraip/career-apex/', 0, 3, NULL, 6, 0, '2024-02-09 04:25:34', '2024-12-25 07:46:12'),
	(31, 'Blogs', '/blogs', 0, 1, NULL, 5, 0, '2024-12-25 07:43:14', '2024-12-25 07:43:41'),
	(32, 'Contact', '/contact', 0, 2, NULL, 5, 0, '2024-12-25 07:43:24', '2024-12-25 07:43:42');

-- membuang struktur untuk table komarai1_ca_fix.applied_jobs
CREATE TABLE IF NOT EXISTS `applied_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned NOT NULL,
  `candidate_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.applied_jobs: ~0 rows (lebih kurang)
INSERT INTO `applied_jobs` (`id`, `job_id`, `candidate_id`, `created_at`, `updated_at`) VALUES
	(1, 37, 43, '2024-12-24 03:47:17', '2024-12-24 03:47:17');

-- membuang struktur untuk table komarai1_ca_fix.benefits
CREATE TABLE IF NOT EXISTS `benefits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.benefits: ~131 rows (lebih kurang)
INSERT INTO `benefits` (`id`, `company_id`, `name`, `created_at`, `updated_at`) VALUES
	(3, 1, 'free coffee', '2024-02-08 22:37:06', '2024-02-08 22:37:06'),
	(4, 2, 'free coffee', '2024-02-08 22:55:23', '2024-02-08 22:55:23'),
	(5, 2, ' free tea', '2024-02-08 22:55:23', '2024-02-08 22:55:23'),
	(6, 2, ' free break fast', '2024-02-08 22:55:23', '2024-02-08 22:55:23'),
	(7, 2, ' on time salary', '2024-02-08 22:55:23', '2024-02-08 22:55:23'),
	(12, 2, 'free coffee', '2024-02-08 23:01:19', '2024-02-08 23:01:19'),
	(13, 2, ' free tea', '2024-02-08 23:01:19', '2024-02-08 23:01:19'),
	(14, 2, ' free break fast', '2024-02-08 23:01:19', '2024-02-08 23:01:19'),
	(15, 2, ' on time salary', '2024-02-08 23:01:19', '2024-02-08 23:01:19'),
	(16, 2, 'free coffee', '2024-02-08 23:01:41', '2024-02-08 23:01:41'),
	(17, 2, ' free tea', '2024-02-08 23:01:41', '2024-02-08 23:01:41'),
	(18, 2, ' free break fast', '2024-02-08 23:01:41', '2024-02-08 23:01:41'),
	(19, 2, ' on time salary', '2024-02-08 23:01:41', '2024-02-08 23:01:41'),
	(20, 2, 'free coffee', '2024-02-08 23:02:07', '2024-02-08 23:02:07'),
	(21, 2, ' free tea', '2024-02-08 23:02:07', '2024-02-08 23:02:07'),
	(22, 2, ' free break fast', '2024-02-08 23:02:07', '2024-02-08 23:02:07'),
	(23, 2, ' on time salary', '2024-02-08 23:02:07', '2024-02-08 23:02:07'),
	(24, 2, 'free coffee', '2024-02-08 23:02:33', '2024-02-08 23:02:33'),
	(25, 2, ' free tea', '2024-02-08 23:02:34', '2024-02-08 23:02:34'),
	(26, 2, ' free break fast', '2024-02-08 23:02:34', '2024-02-08 23:02:34'),
	(27, 2, ' on time salary', '2024-02-08 23:02:34', '2024-02-08 23:02:34'),
	(52, 3, 'free coffee', '2024-02-08 23:40:15', '2024-02-08 23:40:15'),
	(53, 3, ' free tea', '2024-02-08 23:40:15', '2024-02-08 23:40:15'),
	(54, 3, ' free break fast', '2024-02-08 23:40:15', '2024-02-08 23:40:15'),
	(55, 3, ' on time salary', '2024-02-08 23:40:15', '2024-02-08 23:40:15'),
	(56, 3, 'free coffee', '2024-02-08 23:42:34', '2024-02-08 23:42:34'),
	(57, 3, ' free tea', '2024-02-08 23:42:34', '2024-02-08 23:42:34'),
	(58, 3, ' free break fast', '2024-02-08 23:42:34', '2024-02-08 23:42:34'),
	(59, 3, ' on time salary', '2024-02-08 23:42:34', '2024-02-08 23:42:34'),
	(60, 3, 'free coffee', '2024-02-08 23:45:34', '2024-02-08 23:45:34'),
	(61, 3, ' free tea', '2024-02-08 23:45:34', '2024-02-08 23:45:34'),
	(62, 3, ' free break fast', '2024-02-08 23:45:34', '2024-02-08 23:45:34'),
	(63, 3, ' on time salary', '2024-02-08 23:45:34', '2024-02-08 23:45:34'),
	(64, 3, 'free coffee', '2024-02-08 23:46:45', '2024-02-08 23:46:45'),
	(65, 3, ' free tea', '2024-02-08 23:46:45', '2024-02-08 23:46:45'),
	(66, 3, ' free break fast', '2024-02-08 23:46:45', '2024-02-08 23:46:45'),
	(67, 3, ' on time salary', '2024-02-08 23:46:45', '2024-02-08 23:46:45'),
	(68, 3, 'free coffee', '2024-02-08 23:49:13', '2024-02-08 23:49:13'),
	(69, 3, ' free tea', '2024-02-08 23:49:13', '2024-02-08 23:49:13'),
	(70, 3, ' free break fast', '2024-02-08 23:49:13', '2024-02-08 23:49:13'),
	(71, 3, ' on time salary', '2024-02-08 23:49:13', '2024-02-08 23:49:13'),
	(72, 3, 'free coffee', '2024-02-08 23:50:24', '2024-02-08 23:50:24'),
	(73, 3, ' free tea', '2024-02-08 23:50:24', '2024-02-08 23:50:24'),
	(74, 3, ' free break fast', '2024-02-08 23:50:24', '2024-02-08 23:50:24'),
	(75, 3, ' on time salary', '2024-02-08 23:50:24', '2024-02-08 23:50:24'),
	(76, 3, 'free coffee', '2024-02-08 23:51:37', '2024-02-08 23:51:37'),
	(77, 3, ' free tea', '2024-02-08 23:51:37', '2024-02-08 23:51:37'),
	(78, 3, ' free break fast', '2024-02-08 23:51:37', '2024-02-08 23:51:37'),
	(79, 3, ' on time salary', '2024-02-08 23:51:37', '2024-02-08 23:51:37'),
	(80, 3, 'free coffee', '2024-02-08 23:53:15', '2024-02-08 23:53:15'),
	(81, 3, ' free tea', '2024-02-08 23:53:15', '2024-02-08 23:53:15'),
	(82, 3, ' free break fast', '2024-02-08 23:53:15', '2024-02-08 23:53:15'),
	(83, 3, ' on time salary', '2024-02-08 23:53:15', '2024-02-08 23:53:15'),
	(84, 9, 'free coffee', '2024-02-09 00:10:28', '2024-02-09 00:10:28'),
	(85, 9, ' free tea', '2024-02-09 00:10:28', '2024-02-09 00:10:28'),
	(86, 9, ' free break fast', '2024-02-09 00:10:28', '2024-02-09 00:10:28'),
	(87, 9, ' on time salary', '2024-02-09 00:10:28', '2024-02-09 00:10:28'),
	(88, 12, 'free coffee', '2024-02-09 00:13:07', '2024-02-09 00:13:07'),
	(89, 12, ' free tea', '2024-02-09 00:13:07', '2024-02-09 00:13:07'),
	(90, 12, ' free break fast', '2024-02-09 00:13:07', '2024-02-09 00:13:07'),
	(91, 12, ' on time salary', '2024-02-09 00:13:07', '2024-02-09 00:13:07'),
	(92, 14, 'free coffee', '2024-02-09 00:16:06', '2024-02-09 00:16:06'),
	(93, 14, ' free tea', '2024-02-09 00:16:06', '2024-02-09 00:16:06'),
	(94, 14, ' free break fast', '2024-02-09 00:16:06', '2024-02-09 00:16:06'),
	(95, 14, ' on time salary', '2024-02-09 00:16:06', '2024-02-09 00:16:06'),
	(96, 6, 'free coffee', '2024-02-09 00:19:03', '2024-02-09 00:19:03'),
	(97, 6, ' free tea', '2024-02-09 00:19:03', '2024-02-09 00:19:03'),
	(98, 6, ' free break fast', '2024-02-09 00:19:03', '2024-02-09 00:19:03'),
	(99, 6, ' on time salary', '2024-02-09 00:19:03', '2024-02-09 00:19:03'),
	(100, 11, 'free coffee', '2024-02-09 00:21:34', '2024-02-09 00:21:34'),
	(101, 11, ' free tea', '2024-02-09 00:21:34', '2024-02-09 00:21:34'),
	(102, 11, ' free break fast', '2024-02-09 00:21:34', '2024-02-09 00:21:34'),
	(103, 11, ' on time salary', '2024-02-09 00:21:34', '2024-02-09 00:21:34'),
	(104, 13, 'free coffee', '2024-02-09 00:22:36', '2024-02-09 00:22:36'),
	(105, 13, ' free tea', '2024-02-09 00:22:36', '2024-02-09 00:22:36'),
	(106, 13, ' free break fast', '2024-02-09 00:22:36', '2024-02-09 00:22:36'),
	(107, 13, ' on time salary', '2024-02-09 00:22:36', '2024-02-09 00:22:36'),
	(108, 10, 'free coffee', '2024-02-09 00:23:48', '2024-02-09 00:23:48'),
	(109, 10, ' free tea', '2024-02-09 00:23:48', '2024-02-09 00:23:48'),
	(110, 10, ' free break fast', '2024-02-09 00:23:48', '2024-02-09 00:23:48'),
	(111, 10, ' on time salary', '2024-02-09 00:23:48', '2024-02-09 00:23:48'),
	(112, 11, 'free coffee', '2024-02-09 03:00:47', '2024-02-09 03:00:47'),
	(113, 11, ' free tea', '2024-02-09 03:00:48', '2024-02-09 03:00:48'),
	(114, 11, ' free break fast', '2024-02-09 03:00:48', '2024-02-09 03:00:48'),
	(115, 11, ' on time salary', '2024-02-09 03:00:48', '2024-02-09 03:00:48'),
	(116, 14, 'free coffee', '2024-02-09 03:01:55', '2024-02-09 03:01:55'),
	(117, 14, ' free tea', '2024-02-09 03:01:55', '2024-02-09 03:01:55'),
	(118, 14, ' free break fast', '2024-02-09 03:01:55', '2024-02-09 03:01:55'),
	(119, 14, ' on time salary', '2024-02-09 03:01:56', '2024-02-09 03:01:56'),
	(120, 6, 'free coffee', '2024-02-09 03:03:04', '2024-02-09 03:03:04'),
	(121, 6, ' free tea', '2024-02-09 03:03:04', '2024-02-09 03:03:04'),
	(122, 6, ' free break fast', '2024-02-09 03:03:04', '2024-02-09 03:03:04'),
	(123, 6, ' on time salary', '2024-02-09 03:03:04', '2024-02-09 03:03:04'),
	(124, 7, 'free coffee', '2024-02-09 03:04:35', '2024-02-09 03:04:35'),
	(125, 7, ' free tea', '2024-02-09 03:04:35', '2024-02-09 03:04:35'),
	(126, 7, ' free break fast', '2024-02-09 03:04:35', '2024-02-09 03:04:35'),
	(127, 7, ' on time salary', '2024-02-09 03:04:35', '2024-02-09 03:04:35'),
	(128, 15, 'free coffee', '2024-02-09 03:05:44', '2024-02-09 03:05:44'),
	(129, 15, ' free tea', '2024-02-09 03:05:45', '2024-02-09 03:05:45'),
	(130, 15, ' free break fast', '2024-02-09 03:05:45', '2024-02-09 03:05:45'),
	(131, 15, ' on time salary', '2024-02-09 03:05:45', '2024-02-09 03:05:45'),
	(132, 2, 'free coffee', '2024-02-09 03:06:38', '2024-02-09 03:06:38'),
	(133, 2, ' free tea', '2024-02-09 03:06:38', '2024-02-09 03:06:38'),
	(138, 13, 'free coffee', '2024-02-09 03:07:19', '2024-02-09 03:07:19'),
	(139, 13, ' free tea', '2024-02-09 03:07:19', '2024-02-09 03:07:19'),
	(140, 13, ' free break fast', '2024-02-09 03:07:19', '2024-02-09 03:07:19'),
	(141, 13, ' on time salary', '2024-02-09 03:07:19', '2024-02-09 03:07:19'),
	(142, 8, 'free coffee', '2024-02-09 03:07:57', '2024-02-09 03:07:57'),
	(143, 8, ' free tea', '2024-02-09 03:07:57', '2024-02-09 03:07:57'),
	(144, 8, ' free break fast', '2024-02-09 03:07:57', '2024-02-09 03:07:57'),
	(145, 8, ' on time salary', '2024-02-09 03:07:57', '2024-02-09 03:07:57'),
	(146, 4, 'free coffee', '2024-02-09 03:08:42', '2024-02-09 03:08:42'),
	(147, 4, ' free tea', '2024-02-09 03:08:42', '2024-02-09 03:08:42'),
	(148, 4, ' free break fast', '2024-02-09 03:08:42', '2024-02-09 03:08:42'),
	(149, 4, ' on time salary', '2024-02-09 03:08:42', '2024-02-09 03:08:42'),
	(150, 5, 'free coffee', '2024-02-09 03:08:49', '2024-02-09 03:08:49'),
	(151, 5, ' free tea', '2024-02-09 03:08:49', '2024-02-09 03:08:49'),
	(152, 5, ' free break fast', '2024-02-09 03:08:49', '2024-02-09 03:08:49'),
	(153, 5, ' on time salary', '2024-02-09 03:08:49', '2024-02-09 03:08:49'),
	(154, 7, 'free coffee', '2024-02-09 03:08:57', '2024-02-09 03:08:57'),
	(155, 7, ' free tea', '2024-02-09 03:08:57', '2024-02-09 03:08:57'),
	(156, 7, ' free break fast', '2024-02-09 03:08:57', '2024-02-09 03:08:57'),
	(157, 7, ' on time salary', '2024-02-09 03:08:57', '2024-02-09 03:08:57'),
	(158, 13, 'free coffee', '2024-02-09 03:09:05', '2024-02-09 03:09:05'),
	(159, 13, ' free tea', '2024-02-09 03:09:05', '2024-02-09 03:09:05'),
	(160, 13, ' free break fast', '2024-02-09 03:09:05', '2024-02-09 03:09:05'),
	(161, 13, ' on time salary', '2024-02-09 03:09:05', '2024-02-09 03:09:05'),
	(162, 15, 'free coffee', '2024-02-09 03:09:12', '2024-02-09 03:09:12'),
	(163, 15, ' free tea', '2024-02-09 03:09:12', '2024-02-09 03:09:12'),
	(164, 15, ' free break fast', '2024-02-09 03:09:12', '2024-02-09 03:09:12'),
	(165, 15, ' on time salary', '2024-02-09 03:09:12', '2024-02-09 03:09:12'),
	(166, 16, 'BPJS', '2024-12-24 02:47:25', '2024-12-24 02:47:25'),
	(167, 16, 'BPJS', '2024-12-24 02:47:51', '2024-12-24 02:47:51');

-- membuang struktur untuk table komarai1_ca_fix.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_author_id_foreign` (`author_id`),
  CONSTRAINT `blogs_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.blogs: ~3 rows (lebih kurang)
INSERT INTO `blogs` (`id`, `image`, `title`, `slug`, `author_id`, `description`, `status`, `featured`, `created_at`, `updated_at`) VALUES
	(5, '/uploads/media_676c284396966.webp', 'Mastering the Job Search: A Comprehensive Guide to Landing Your Dream Role', 'mastering-the-job-search-a-comprehensive-guide-to-landing-your-dream-role', 1, '<p>Finding a job can feel like navigating a maze, but with a structured approach, you can position yourself as the ideal candidate. The first step is to understand your career goals. Ask yourself: What industries excite you? What skills do you want to use daily? Once you’ve answered these questions, you can start targeting roles that align with your ambitions.</p><p>A standout resume is crucial. Focus on accomplishments rather than generic responsibilities. For example, instead of stating, "Managed a sales team," highlight, "Led a sales team that exceeded quarterly targets by 25%." Quantifiable achievements make a stronger impression. Pair this with a personalized cover letter that explains why you’re passionate about the role and how your skills align with the company’s goals.</p><p>Networking is another critical element. Attend industry events, join professional groups on LinkedIn, and don’t hesitate to reach out to professionals in your desired field. A well-crafted LinkedIn profile acts as your digital resume, so keep it updated and ensure it reflects your key achievements.</p><p>Finally, prepare extensively for interviews. Research the company, rehearse common questions, and think of questions to ask the interviewer. Post-interview, send a thank-you email to express gratitude and reaffirm your interest. Job hunting may be challenging, but with these strategies, you’ll be closer to your dream role.</p>', 1, 1, '2024-12-25 08:44:03', '2024-12-25 09:02:03'),
	(7, '/uploads/media_676c2a7561ae9.jpg', 'Work From Home Jobs: Pros, Cons, and How to Get Started', 'work-from-home-jobs-pros-cons-and-how-to-get-started', 1, '<p>Remote work has transformed from a perk to a necessity in recent years, with many companies adopting hybrid or fully remote models. While this flexibility has numerous advantages, it also comes with its challenges.</p><p><strong>Advantages</strong>: One of the biggest draws of remote work is flexibility. Employees can design their schedules to maximize productivity and work-life balance. Additionally, eliminating the commute saves time and reduces stress, contributing to better mental health.</p><p><strong>Challenges</strong>: Despite the perks, working from home isn’t without its hurdles. Distractions, lack of direct supervision, and feelings of isolation can impact performance. Maintaining boundaries between work and personal life is also a common struggle.</p><p>To excel in remote roles, create a dedicated workspace, set clear boundaries, and maintain regular communication with your team. Platforms like Upwork and LinkedIn are great places to find legitimate remote opportunities. With the right approach, remote work can offer unparalleled career satisfaction.</p>', 1, 1, '2024-12-25 08:53:25', '2024-12-25 09:01:44'),
	(9, '/uploads/media_676c2ca329ed1.jpg', 'Interview Tips: How to Impress Employers in 2024', 'interview-tips-how-to-impress-employers-in-2024', 1, '<p>Interviews can be nerve-wracking, but preparation is your best ally. Start by researching the company thoroughly. Understand its mission, recent achievements, and challenges. This knowledge will not only help you tailor your answers but also impress the interviewer with your genuine interest.</p><p>When answering questions, use the STAR method (Situation, Task, Action, Result) to structure your responses. For instance, if asked about a leadership experience, describe a challenging project you led, the actions you took to overcome obstacles, and the measurable outcomes.</p><p>Body language matters, too. Maintain eye contact, offer a firm handshake, and sit with a confident yet relaxed posture. For virtual interviews, ensure your background is clean and professional, and test your equipment beforehand.</p><p>Finally, end the interview on a positive note. Ask thoughtful questions about the company or role, and follow up with a thank-you email within 24 hours. By demonstrating preparedness and enthusiasm, you’ll leave a lasting impression on potential employers.</p>', 1, 1, '2024-12-25 09:01:22', '2024-12-25 09:02:43');

-- membuang struktur untuk table komarai1_ca_fix.candidates
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `experience_id` bigint unsigned DEFAULT NULL,
  `profession_id` bigint unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `marital_status` enum('married','single') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` bigint unsigned DEFAULT NULL,
  `state` bigint unsigned DEFAULT NULL,
  `country` bigint unsigned DEFAULT NULL,
  `status` enum('available','not_available') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_complete` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidates_user_id_foreign` (`user_id`),
  CONSTRAINT `candidates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.candidates: ~2 rows (lebih kurang)
INSERT INTO `candidates` (`id`, `user_id`, `experience_id`, `profession_id`, `title`, `image`, `full_name`, `slug`, `gender`, `website`, `phone_one`, `phone_two`, `email`, `cv`, `bio`, `marital_status`, `birth_date`, `address`, `city`, `state`, `country`, `status`, `profile_complete`, `visibility`, `created_at`, `updated_at`) VALUES
	(13, 43, 1, 1, 'Fullstack Developer', '/uploads/media_676c318ddbef7.jpg', 'Komara Indra Putra', 'komara-indra-putra', 'male', 'https://komaraip.com', '081339879657', '081339879657', 'komaraindra21@gmail.com', '/uploads/media_6768622d778ea.pdf', '<p>Computer Science student with over 2 years of experience specializing in Website Development and UI/UX<br>design. Successfully developed multiple websites for college projects and freelance clients, including e-commerce,<br>finance, and company profile.</p>', 'single', '2024-12-01', 'Jl. Salam Raya No.21 JK, Sukabumi Utara, Kebon Jeruk', NULL, 5239, 269, 'available', 1, 1, '2024-12-22 12:02:05', '2024-12-25 09:23:53'),
	(14, 1, 1, NULL, 'Blogger', '/uploads/media_676c24a0085e1.png', 'Admin', 'admin', NULL, 'https://www.contoh.com/', NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-01', NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-25 08:28:32', '2024-12-25 08:28:32'),
	(15, 49, 1, 1, 'Software Engineer', '/uploads/media_676c301823c40.jpg', 'Ahmad Haikal Kamil Shahab', 'ahmad-haikal-kamil-shahab', 'male', 'https://www.contoh.com/', '08123456789', '08123456789', 'haikal@gmail.com', '/uploads/media_676c2e8b4d3a3.pdf', '<p>Passionate IT student majoring in Computer Science. He excels in programming languages like Python and Java, and has a keen interest in artificial intelligence and machine learning. John is also an active member of the coding club at his university, where he collaborates on various tech projects.</p>', 'single', '2024-12-01', 'Jl. Teuku Umar No. 21, Condet', NULL, 5240, 269, 'available', 1, 1, '2024-12-25 09:10:51', '2024-12-25 09:25:50'),
	(16, 50, 1, 3, 'Data Scientist', '/uploads/media_676c32673e1fe.jpg', 'Zaky Fajri Rosmansah', 'zaky-fajri-rosmansah', 'male', 'https://www.contoh.com/', '08123456789', '081339879657', 'zaky@gmail.com', '/uploads/media_676c32673f0db.pdf', '<p>Dedicated IT student with a concentration in Data Science. I possesses strong analytical skills and is proficient in using tools like SQL, R, and Tableau. My passion lies in uncovering insights from data, and has participated in numerous hackathons to showcase her abilities.</p>', 'single', '2024-12-01', 'Jl. Teuku Umar No. 11, Condet', NULL, 5240, 269, 'available', 1, 1, '2024-12-25 09:27:19', '2024-12-25 09:30:16'),
	(17, 51, 1, 5, 'UI/UX Designer', '/uploads/media_676c33576919a.jpg', 'Zarin Nurullayla', 'zarin-nurullayla', 'female', 'https://www.contoh.com/', '08123456789', '08123456789', 'zarin@gmail.com', '/uploads/media_676c335769890.pdf', '<p>Talented UI/UX design student with a keen eye for detail. I excels in creating intuitive and user-friendly interfaces. I proficient in design tools like Sketch and Figma, and enjoys conducting user research to enhance the user experience and passionate about making technology accessible to everyone.</p>', 'single', '2024-12-01', 'Jl. Petojo Barat No.25A, Petojo', NULL, 5238, 269, 'available', 1, 1, '2024-12-25 09:31:19', '2024-12-25 09:34:41');

-- membuang struktur untuk table komarai1_ca_fix.candidate_education
CREATE TABLE IF NOT EXISTS `candidate_education` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_education_candidate_id_foreign` (`candidate_id`),
  CONSTRAINT `candidate_education_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.candidate_education: ~21 rows (lebih kurang)
INSERT INTO `candidate_education` (`id`, `candidate_id`, `level`, `degree`, `year`, `note`, `created_at`, `updated_at`) VALUES
	(22, 13, 'BINUS University', 'Bachelor of Computer Science', '2026', '● Specialized in Web Programming and Interactive & User Experience Design.\r\n● Presented research: "Application of Collaborative Filtering Methods to Recommend Tourist Destinations in\r\nJakarta City" - 11th International Conference on ICT for Smart Society (ICISS) 2024.', '2024-12-22 12:07:15', '2024-12-24 02:05:27'),
	(23, 15, 'BINUS University', 'Bachelor of Computer Science', '2026', NULL, '2024-12-25 09:13:44', '2024-12-25 09:13:44'),
	(24, 16, 'BINUS University', 'Bachelor of Computer Science', '2026', NULL, '2024-12-25 09:29:33', '2024-12-25 09:29:33'),
	(25, 17, 'BINUS University', 'Bachelor of Computer Science', '2026', NULL, '2024-12-25 09:34:03', '2024-12-25 09:34:03');

-- membuang struktur untuk table komarai1_ca_fix.candidate_experiences
CREATE TABLE IF NOT EXISTS `candidate_experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `responsibilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `currently_working` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_experiences_candidate_id_foreign` (`candidate_id`),
  CONSTRAINT `candidate_experiences_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.candidate_experiences: ~26 rows (lebih kurang)
INSERT INTO `candidate_experiences` (`id`, `candidate_id`, `company`, `department`, `designation`, `start`, `end`, `responsibilities`, `currently_working`, `created_at`, `updated_at`) VALUES
	(32, 13, 'Freelance', 'IT Division', 'Web Developer', '2024-03-01', '2024-12-22', '● Successfully delivered two client website projects within specified deadlines.\r\n● Implemented custom web solutions based on detailed client requirements analysis.\r\n● Generated revenue of 6 million IDR through website design and development services.\r\n● Maintained clear communication channels with clients throughout project lifecycles.', 0, '2024-12-22 12:13:09', '2024-12-24 02:04:52'),
	(33, 15, 'Tokopedia', 'IT Division', 'Software Engineer', '2024-12-01', '2024-12-31', NULL, 0, '2024-12-25 09:14:51', '2024-12-25 09:14:51'),
	(34, 16, 'Gojek', 'IT Division', 'Data Scientist', '2024-12-01', '2024-12-31', NULL, 0, '2024-12-25 09:29:26', '2024-12-25 09:29:26'),
	(35, 17, 'Zalora', 'Creative Division', 'UI/UX Designer', '2024-12-01', '2024-12-31', NULL, 0, '2024-12-25 09:33:57', '2024-12-25 09:33:57');

-- membuang struktur untuk table komarai1_ca_fix.candidate_languages
CREATE TABLE IF NOT EXISTS `candidate_languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `language_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_languages_candidate_id_foreign` (`candidate_id`),
  CONSTRAINT `candidate_languages_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.candidate_languages: ~35 rows (lebih kurang)
INSERT INTO `candidate_languages` (`id`, `candidate_id`, `language_id`, `created_at`, `updated_at`) VALUES
	(42, 13, 1, '2024-12-25 09:25:17', '2024-12-25 09:25:17'),
	(43, 15, 1, '2024-12-25 09:26:22', '2024-12-25 09:26:22'),
	(44, 15, 3, '2024-12-25 09:26:22', '2024-12-25 09:26:22'),
	(45, 16, 1, '2024-12-25 09:29:04', '2024-12-25 09:29:04'),
	(46, 17, 1, '2024-12-25 09:33:22', '2024-12-25 09:33:22');

-- membuang struktur untuk table komarai1_ca_fix.candidate_skills
CREATE TABLE IF NOT EXISTS `candidate_skills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `skill_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_skills_candidate_id_foreign` (`candidate_id`),
  CONSTRAINT `candidate_skills_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.candidate_skills: ~67 rows (lebih kurang)
INSERT INTO `candidate_skills` (`id`, `candidate_id`, `skill_id`, `created_at`, `updated_at`) VALUES
	(80, 13, 24, '2024-12-25 09:25:17', '2024-12-25 09:25:17'),
	(81, 13, 25, '2024-12-25 09:25:17', '2024-12-25 09:25:17'),
	(82, 13, 27, '2024-12-25 09:25:17', '2024-12-25 09:25:17'),
	(83, 13, 31, '2024-12-25 09:25:17', '2024-12-25 09:25:17'),
	(84, 13, 63, '2024-12-25 09:25:17', '2024-12-25 09:25:17'),
	(85, 13, 66, '2024-12-25 09:25:17', '2024-12-25 09:25:17'),
	(86, 15, 23, '2024-12-25 09:26:22', '2024-12-25 09:26:22'),
	(87, 15, 27, '2024-12-25 09:26:22', '2024-12-25 09:26:22'),
	(88, 15, 31, '2024-12-25 09:26:22', '2024-12-25 09:26:22'),
	(89, 15, 63, '2024-12-25 09:26:22', '2024-12-25 09:26:22'),
	(90, 15, 71, '2024-12-25 09:26:22', '2024-12-25 09:26:22'),
	(91, 16, 22, '2024-12-25 09:29:04', '2024-12-25 09:29:04'),
	(92, 16, 26, '2024-12-25 09:29:04', '2024-12-25 09:29:04'),
	(93, 16, 38, '2024-12-25 09:29:04', '2024-12-25 09:29:04'),
	(94, 16, 39, '2024-12-25 09:29:04', '2024-12-25 09:29:04'),
	(95, 16, 40, '2024-12-25 09:29:04', '2024-12-25 09:29:04'),
	(96, 17, 4, '2024-12-25 09:33:22', '2024-12-25 09:33:22'),
	(97, 17, 49, '2024-12-25 09:33:22', '2024-12-25 09:33:22'),
	(98, 17, 60, '2024-12-25 09:33:22', '2024-12-25 09:33:22');

-- membuang struktur untuk table komarai1_ca_fix.cities
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned NOT NULL,
  `country_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.cities: ~0 rows (lebih kurang)

-- membuang struktur untuk table komarai1_ca_fix.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry_type_id` bigint unsigned DEFAULT NULL,
  `organization_type_id` bigint unsigned DEFAULT NULL,
  `team_size_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establishment_date` date DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vision` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_views` int NOT NULL DEFAULT '0',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` bigint unsigned DEFAULT NULL,
  `state` bigint unsigned DEFAULT NULL,
  `country` bigint unsigned DEFAULT NULL,
  `map_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_profile_verified` tinyint(1) NOT NULL DEFAULT '0',
  `document_verified_at` timestamp NULL DEFAULT NULL,
  `profile_completion` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companies_user_id_foreign` (`user_id`),
  CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.companies: ~6 rows (lebih kurang)
INSERT INTO `companies` (`id`, `user_id`, `name`, `slug`, `industry_type_id`, `organization_type_id`, `team_size_id`, `logo`, `banner`, `establishment_date`, `website`, `phone`, `email`, `bio`, `vision`, `total_views`, `address`, `city`, `state`, `country`, `map_link`, `is_profile_verified`, `document_verified_at`, `profile_completion`, `visibility`, `created_at`, `updated_at`) VALUES
	(16, 44, 'Zyxdev Technology', 'zyxdev-company', 2, 4, 4, '/uploads/media_676a81144015a.png', '/uploads/media_676bbfcf31bc5.jpg', '2024-07-01', 'https://www.google.com/', '081339879657', 'hrd@zyxdev.com', '<p>Zyxdev Technology is a premier technology consulting and solutions provider specializing in empowering businesses through cutting-edge IT services. Established to bridge the gap between innovative technology and real-world business needs, IT Soulition Services offers a comprehensive portfolio that includes cloud computing, cybersecurity, software development, IT infrastructure management, and digital transformation consulting. With a team of highly skilled professionals, the company delivers tailored, scalable, and sustainable solutions designed to enhance efficiency, productivity, and competitiveness. IT Soulition Services prides itself on building long-term partnerships, ensuring clients achieve their strategic goals in an ever-evolving digital landscape. The company is committed to fostering innovation and driving meaningful results for businesses of all</p>', 'To be the trusted global leader in IT solutions, transforming businesses through innovation, collaboration, and excellence in service delivery.', 0, 'Jl. Petojo Melintang No.25A, RT.19/RW.7, Petojo Selatan, Gambir', NULL, 5238, 269, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63465.83310064029!2d106.79517914012136!3d-6.182311407443545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f436b8c94b07%3A0x6ea6d5398b7c82f6!2sJakarta%20Pusat%2C%20Kota%20Jakarta%20Pusat%2C%20Daerah%20Khusus%20Ibukota%20Jakarta!5e0!3m2!1sid!2sid!4v1735118217328!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 0, NULL, 1, 1, '2024-12-24 02:38:28', '2024-12-25 02:21:50'),
	(17, 45, 'Tokopedia', 'tokopedia', 2, 4, 10, '/uploads/media_676bcb9e22a33.jpg', '/uploads/media_676bcb9e23466.jpg', '2024-12-01', 'https://www.tokopedia.com/', '08123456789', 'hrd@tokopedia.com', '<p>Tokopedia is one of Indonesia\'s leading technology companies, founded in 2009 with a mission to democratize commerce through technology. As part of the GoTo Group, Tokopedia integrates seamlessly with Gojek and other platforms to create a unified ecosystem of services. The company has transformed the e-commerce landscape in Indonesia by enabling millions of small and medium enterprises (SMEs) to scale their businesses online. Tokopedia provides an extensive marketplace that connects buyers and sellers across the nation, supported by cutting-edge technology, robust logistics solutions, and secure payment systems. Through continuous innovation, Tokopedia is committed to empowering the Indonesian economy and fostering digital inclusion.</p>', 'To democratize commerce through technology.', 0, 'Tokopedia Tower, Ciputra World 2, Jl. Prof. Dr. Satrio Kav. 11, Kuningan', NULL, 5241, 269, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126907.0391921869!2d106.7195065195965!3d-6.284100076261527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f1ec2422b0b3%3A0x39a0d0fe47404d02!2sJakarta%20Selatan%2C%20Kota%20Jakarta%20Selatan%2C%20Daerah%20Khusus%20Ibukota%20Jakarta!5e0!3m2!1sid!2sid!4v1735117704988!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 0, NULL, 1, 1, '2024-12-25 02:08:46', '2024-12-25 02:11:06'),
	(18, 46, 'Gojek', 'gojek', 2, 3, 10, '/uploads/media_676bcca4aac0a.png', '/uploads/media_676bcca4ab5bd.jpg', '2024-12-01', 'https://www.gojek.com/', '08123456789', 'hrd@gojek.com', '<p>Gojek is Southeast Asia\'s premier super app, offering over 20 services ranging from ride-hailing and food delivery to logistics, payments, and on-demand household services. Established in 2010 in Indonesia, Gojek has become a symbol of technological innovation, solving real-world problems for millions of users daily. The platform connects customers with service providers, including drivers, merchants, and professionals, creating economic opportunities for its partners. Gojek\'s mission to improve everyday life is underscored by its commitment to social impact and sustainability. As part of the GoTo Group, Gojek continues to leverage technology to create a seamless and efficient digital ecosystem for its users.</p>', 'To improve the quality of life for users and partners by creating solutions to everyday problems.', 0, 'Pasaraya Blok M Building, 6th Floor, Jl. Iskandarsyah II No.7, Kebayoran Baru', NULL, 5241, 269, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126907.0391921869!2d106.7195065195965!3d-6.284100076261527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f1ec2422b0b3%3A0x39a0d0fe47404d02!2sJakarta%20Selatan%2C%20Kota%20Jakarta%20Selatan%2C%20Daerah%20Khusus%20Ibukota%20Jakarta!5e0!3m2!1sid!2sid!4v1735117704988!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 0, NULL, 1, 1, '2024-12-25 02:13:08', '2024-12-25 02:14:28'),
	(19, 47, 'IBM', 'ibm', 4, 4, 10, '/uploads/media_676bcdc01babd.png', '/uploads/media_676bcdc01ce2a.jpg', '2024-12-01', 'https://www.ibm.com/', '08123456789', 'hrd@ibm.com', '<p>International Business Machines Corporation (IBM) is a globally renowned leader in technological innovation, headquartered in Armonk, New York, with operations in more than 170 countries. Since its founding in 1911, IBM has been at the forefront of groundbreaking technological advancements, including the development of the first computer systems, artificial intelligence (AI), and quantum computing. IBM\'s offerings include enterprise-grade solutions in cloud computing, AI, blockchain, data analytics, and more, helping businesses transform digitally and stay competitive in an ever-changing marketplace. With a strong commitment to sustainability, diversity, and innovation, IBM continues to lead in shaping the future of technology and business worldwide.</p>', 'To be the most essential company for clients and the modern digital economy.', 0, 'IBM Indonesia, Indonesia Stock Exchange Building, Tower 1, 16th Floor, Jl. Jend. Sudirman Kav. 52-53', NULL, 5238, 269, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63465.83310064029!2d106.79517914012136!3d-6.182311407443545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f436b8c94b07%3A0x6ea6d5398b7c82f6!2sJakarta%20Pusat%2C%20Kota%20Jakarta%20Pusat%2C%20Daerah%20Khusus%20Ibukota%20Jakarta!5e0!3m2!1sid!2sid!4v1735118217328!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 0, NULL, 1, 1, '2024-12-25 02:17:09', '2024-12-25 02:17:52'),
	(20, 53, 'PT. Pertamina', 'pt-pertamina', 5, 1, 10, '/uploads/media_676c0ca6ce931.png', '/uploads/media_676c0ca6cf049.jpg', '2024-12-01', 'https://www.pertamina.com/', '08123456789', 'hrd@pertamina.com', '<p>Pertamina, officially known as PT Pertamina (Persero), is Indonesia\'s state-owned energy giant and one of the largest energy companies in Southeast Asia. Founded in 1957, Pertamina plays a pivotal role in ensuring Indonesia\'s energy security and advancing its national energy agenda. The company\'s operations span the entire energy value chain, including oil and gas exploration, production, refining, distribution, and renewable energy development. Pertamina is also a global player, with assets and operations in various countries. As a leader in energy innovation, the company is committed to transitioning towards sustainable energy solutions by investing in green energy and reducing carbon emissions. Pertamina\'s vision is to empower the future of energy while maintaining a strong commitment to environmental, social, and corporate governance (ESG) principles.</p>', 'To become a world-class energy company by utilizing innovation and sustainability.', 0, 'Pertamina Headquarters, Jl. Medan Merdeka Timur No.1A, Gambir', NULL, 5238, 269, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63465.83310064029!2d106.79517914012136!3d-6.182311407443545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f436b8c94b07%3A0x6ea6d5398b7c82f6!2sJakarta%20Pusat%2C%20Kota%20Jakarta%20Pusat%2C%20Daerah%20Khusus%20Ibukota%20Jakarta!5e0!3m2!1sid!2sid!4v1735118217328!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 0, NULL, 1, 1, '2024-12-25 06:46:14', '2024-12-25 06:47:06'),
	(21, 52, 'PT. Bank Central Asia', 'pt-bank-central-asia', 4, 3, 10, '/uploads/media_676c0d256f172.png', '/uploads/media_676c0d256f72e.jpg', '2024-12-01', 'https://www.bca.com/', '08123456789', 'hrd@bca.com', '<p>Bank Central Asia (BCA) is a cornerstone of Indonesia\'s banking industry, established in 1957. As the largest private bank in the country, BCA provides a comprehensive range of financial products and services, including savings accounts, loans, wealth management, and digital banking. With a robust network of branches and ATMs, coupled with cutting-edge mobile and internet banking platforms, BCA ensures seamless access to financial services for individuals and businesses alike. The bank is renowned for its customer-centric approach, emphasizing innovation and reliability. BCA’s commitment to supporting economic growth and improving financial literacy in Indonesia has solidified its position as a trusted partner for millions of customers.</p>', 'To be the bank of choice that delivers meaningful financial solutions for a brighter future.', 0, 'Menara BCA, Grand Indonesia, Jl. MH Thamrin No. 1', NULL, 5238, 269, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63465.83310064029!2d106.79517914012136!3d-6.182311407443545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f436b8c94b07%3A0x6ea6d5398b7c82f6!2sJakarta%20Pusat%2C%20Kota%20Jakarta%20Pusat%2C%20Daerah%20Khusus%20Ibukota%20Jakarta!5e0!3m2!1sid!2sid!4v1735118217328!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 0, NULL, 1, 1, '2024-12-25 06:48:21', '2024-12-25 06:49:13');

-- membuang struktur untuk table komarai1_ca_fix.counters
CREATE TABLE IF NOT EXISTS `counters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `counter_one` int NOT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_two` int NOT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_three` int NOT NULL,
  `title_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_four` int NOT NULL,
  `title_four` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.counters: ~0 rows (lebih kurang)
INSERT INTO `counters` (`id`, `counter_one`, `title_one`, `counter_two`, `title_two`, `counter_three`, `title_three`, `counter_four`, `title_four`, `created_at`, `updated_at`) VALUES
	(1, 300, 'Recruitments', 150, 'Companies', 500, 'Skilled People', 1000, 'Happy Clients', '2024-02-09 03:16:42', '2024-12-24 03:39:51');

-- membuang struktur untuk table komarai1_ca_fix.countries
CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.countries: ~4 rows (lebih kurang)
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(268, 'Banten', '2024-12-22 11:44:49', '2024-12-24 02:21:53'),
	(269, 'DKI Jakarta', '2024-12-24 02:15:13', '2024-12-24 02:15:13'),
	(270, 'Jawa Barat', '2024-12-24 02:16:08', '2024-12-24 02:20:55'),
	(274, 'Bali', '2024-12-25 08:08:35', '2024-12-25 08:08:35');

-- membuang struktur untuk table komarai1_ca_fix.custom_page_builders
CREATE TABLE IF NOT EXISTS `custom_page_builders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.custom_page_builders: ~0 rows (lebih kurang)
INSERT INTO `custom_page_builders` (`id`, `page_name`, `slug`, `content`, `created_at`, `updated_at`) VALUES
	(2, 'Custom', 'custom', '<p>Hello World</p>', '2024-12-25 10:32:34', '2024-12-25 10:32:34');

-- membuang struktur untuk table komarai1_ca_fix.education
CREATE TABLE IF NOT EXISTS `education` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.education: ~5 rows (lebih kurang)
INSERT INTO `education` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'intermediate', 'intermediate', '2024-02-08 22:22:44', '2024-02-08 22:22:44'),
	(2, 'Bachelor Degree', 'bachelor-degree', '2024-02-08 22:22:44', '2024-02-08 22:22:44'),
	(3, 'PhD', 'phd', '2024-02-08 22:22:44', '2024-02-08 22:22:44'),
	(4, 'High School', 'high-school', '2024-02-08 22:22:44', '2024-02-08 22:22:44'),
	(5, 'Any', 'any', '2024-02-08 22:22:44', '2024-02-08 22:22:44');

-- membuang struktur untuk table komarai1_ca_fix.experiences
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.experiences: ~8 rows (lebih kurang)
INSERT INTO `experiences` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Fresher', NULL, NULL),
	(2, '1 Year', NULL, NULL),
	(3, '2 Year', NULL, NULL),
	(4, '3+ Year', NULL, NULL),
	(5, '5+ Year', NULL, NULL),
	(6, '8+ Year', NULL, NULL),
	(7, '10+ Year', NULL, NULL),
	(8, '15+ Year', NULL, NULL);

-- membuang struktur untuk table komarai1_ca_fix.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.failed_jobs: ~0 rows (lebih kurang)

-- membuang struktur untuk table komarai1_ca_fix.footers
CREATE TABLE IF NOT EXISTS `footers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.footers: ~0 rows (lebih kurang)
INSERT INTO `footers` (`id`, `logo`, `copyright`, `details`, `created_at`, `updated_at`) VALUES
	(1, '/uploads/media_676c175c22b6e.png', 'Copyright © 2024. Career Apex All Right Reserved.', 'Follow Social Media', '2024-02-09 04:10:38', '2024-12-25 08:34:28');

-- membuang struktur untuk table komarai1_ca_fix.heroes
CREATE TABLE IF NOT EXISTS `heroes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.heroes: ~0 rows (lebih kurang)
INSERT INTO `heroes` (`id`, `image`, `background_image`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
	(1, '/uploads/media_65c4631307ffc.jpg', '/uploads/media_65c46341ce16c.jpg', 'Join us & Explore Thousands of Jobs', 'Find Jobs, Employment & Career Opportunities', '2024-02-07 23:13:55', '2024-02-07 23:14:41');

-- membuang struktur untuk table komarai1_ca_fix.industry_types
CREATE TABLE IF NOT EXISTS `industry_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.industry_types: ~20 rows (lebih kurang)
INSERT INTO `industry_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Manufacturing', 'manufacturing', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(2, 'Technology', 'technology', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(3, 'Healthcare', 'healthcare', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(4, 'Financial Services', 'financial-services', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(5, 'Energy', 'energy', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(6, 'Retail', 'retail', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(7, 'Telecommunications', 'telecommunications', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(8, 'Agriculture', 'agriculture', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(9, 'Transportation and Logistics', 'transportation-and-logistics', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(10, 'Entertainment and Media', 'entertainment-and-media', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(11, 'Construction', 'construction', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(12, 'Automotive', 'automotive', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(13, 'Tourism and Hospitality', 'tourism-and-hospitality', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(14, 'Education', 'education', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(15, 'Real Estate', 'real-estate', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(16, 'Pharmaceutical', 'pharmaceutical', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(17, 'Consumer Goods', 'consumer-goods', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(18, 'Environmental', 'environmental', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(19, 'Defense and Aerospace', 'defense-and-aerospace', '2024-02-08 04:42:26', '2024-02-08 04:42:26'),
	(20, 'Legal and Professional Services', 'legal-and-professional-services', '2024-02-08 04:42:26', '2024-02-08 04:42:26');

-- membuang struktur untuk table komarai1_ca_fix.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `job_category_id` bigint unsigned NOT NULL,
  `job_role_id` bigint unsigned NOT NULL,
  `job_experience_id` bigint unsigned NOT NULL,
  `education_id` bigint unsigned NOT NULL,
  `job_type_id` bigint unsigned NOT NULL,
  `salary_type_id` bigint unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacancies` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_salary` double DEFAULT NULL,
  `max_salary` double DEFAULT NULL,
  `custom_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` date NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','active','expired') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `apply_on` enum('app','email','custom_url') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured` tinyint(1) DEFAULT NULL,
  `highlight` tinyint(1) DEFAULT NULL,
  `featured_until` date DEFAULT NULL,
  `highlight_until` date DEFAULT NULL,
  `total_views` int NOT NULL DEFAULT '0',
  `city_id` bigint unsigned DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_mode` enum('range','custom') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_company_id_foreign` (`company_id`),
  KEY `jobs_job_category_id_foreign` (`job_category_id`),
  CONSTRAINT `jobs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `jobs_job_category_id_foreign` FOREIGN KEY (`job_category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.jobs: ~1 rows (lebih kurang)
INSERT INTO `jobs` (`id`, `company_id`, `job_category_id`, `job_role_id`, `job_experience_id`, `education_id`, `job_type_id`, `salary_type_id`, `title`, `slug`, `vacancies`, `min_salary`, `max_salary`, `custom_salary`, `deadline`, `description`, `status`, `apply_on`, `apply_email`, `apply_url`, `featured`, `highlight`, `featured_until`, `highlight_until`, `total_views`, `city_id`, `state_id`, `country_id`, `address`, `salary_mode`, `company_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(37, 16, 14, 4, 2, 2, 1, 1, 'Data Scientist', 'data-scientist-2', '5', 5000000, 7000000, NULL, '2025-02-11', '<p>Lorem Ipsum</p>', 'active', 'app', NULL, NULL, 1, 1, NULL, NULL, 0, NULL, 5239, 269, 'APL Tower', 'range', 'Zyxdev', '2024-12-24 02:47:51', '2024-12-24 02:48:14', NULL);

-- membuang struktur untuk table komarai1_ca_fix.job_benefits
CREATE TABLE IF NOT EXISTS `job_benefits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned NOT NULL,
  `benefit_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_benefits_job_id_foreign` (`job_id`),
  CONSTRAINT `job_benefits_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.job_benefits: ~1 rows (lebih kurang)
INSERT INTO `job_benefits` (`id`, `job_id`, `benefit_id`, `created_at`, `updated_at`) VALUES
	(167, 37, 167, '2024-12-24 02:47:51', '2024-12-24 02:47:51');

-- membuang struktur untuk table komarai1_ca_fix.job_bookmarks
CREATE TABLE IF NOT EXISTS `job_bookmarks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned NOT NULL,
  `candidate_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.job_bookmarks: ~0 rows (lebih kurang)
INSERT INTO `job_bookmarks` (`id`, `job_id`, `candidate_id`, `created_at`, `updated_at`) VALUES
	(1, 37, 13, '2024-12-24 03:47:44', '2024-12-24 03:47:44');

-- membuang struktur untuk table komarai1_ca_fix.job_categories
CREATE TABLE IF NOT EXISTS `job_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_at_popular` tinyint(1) NOT NULL DEFAULT '0',
  `show_at_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.job_categories: ~30 rows (lebih kurang)
INSERT INTO `job_categories` (`id`, `icon`, `name`, `slug`, `show_at_popular`, `show_at_featured`, `created_at`, `updated_at`) VALUES
	(1, 'fas fa-dollar-sign', 'Accounting/Finance', 'accounting-finance', 1, 1, '2024-02-07 22:46:15', '2024-02-09 05:22:53'),
	(2, 'fas fa-chess-king', 'Administration', 'administration', 0, 0, '2024-02-07 22:46:15', '2024-12-25 01:49:22'),
	(3, 'fas fa-ad', 'Advertising', 'advertising', 0, 0, '2024-02-07 22:46:15', '2024-12-25 01:49:29'),
	(4, 'fas fa-tree', 'Agriculture', 'agriculture', 0, 0, '2024-02-07 22:46:15', '2024-12-25 01:49:36'),
	(5, 'fas fa-microphone', 'Arts/Entertainment', 'arts-entertainment', 1, 0, '2024-02-07 22:46:15', '2024-12-25 01:55:26'),
	(6, 'fas fa-donate', 'Banking', 'banking', 1, 1, '2024-02-07 22:46:15', '2024-12-24 03:21:31'),
	(7, 'fas fa-building', 'Construction', 'construction', 0, 0, '2024-02-07 22:46:15', '2024-12-25 01:49:59'),
	(8, 'fas fa-hands-helping', 'Customer Service', 'customer-service', 0, 0, '2024-02-07 22:46:15', '2024-12-25 01:50:13'),
	(9, 'fas fa-book-open', 'Education/Training', 'education-training', 0, 0, '2024-02-07 22:46:15', '2024-12-25 01:50:21'),
	(10, 'fas fa-users-cog', 'Engineering', 'engineering', 1, 1, '2024-02-07 22:46:15', '2024-12-24 03:21:40'),
	(11, 'far fa-building', 'Government', 'government-military', 1, 0, '2024-02-07 22:46:15', '2024-12-25 01:54:42'),
	(12, 'fas fa-heart', 'Healthcare', 'healthcare', 1, 0, '2024-02-07 22:46:15', '2024-12-25 01:54:50'),
	(13, 'fas fa-dove', 'Human Resources', 'human-resources', 1, 0, '2024-02-07 22:46:15', '2024-12-25 01:55:04'),
	(14, 'fas fa-tv', 'Information Technology', 'information-technology', 1, 1, '2024-02-07 22:46:15', '2024-12-24 03:19:53'),
	(15, 'fas fa-poll', 'Legal', 'legal', 0, 0, '2024-02-07 22:46:15', '2024-12-25 01:51:12'),
	(16, 'fas fa-align-justify', 'Management', 'management', 0, 0, '2024-02-07 22:46:15', '2024-12-25 01:51:21'),
	(17, 'fas fa-tshirt', 'Manufacturing', 'manufacturing', 0, 0, '2024-02-07 22:46:15', '2024-12-25 01:51:28'),
	(18, 'fas fa-headphones-alt', 'Communications', 'communications', 0, 0, '2024-02-07 22:46:15', '2024-12-25 01:51:35'),
	(20, 'fas fa-dot-circle', 'Real Estate', 'real-estate', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'),
	(21, 'fas fa-dot-circle', 'Restaurant/Food Service', 'restaurant-food-service', 1, 0, '2024-02-07 22:46:15', '2024-12-25 01:55:18'),
	(22, 'fas fa-dot-circle', 'Retail', 'retail', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'),
	(23, 'fas fa-dot-circle', 'Sales', 'sales', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'),
	(24, 'fas fa-dot-circle', 'Science/Biotech', 'science-biotech', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'),
	(25, 'fas fa-dot-circle', 'Telecommunications', 'telecommunications', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'),
	(26, 'fas fa-dot-circle', 'Transportation', 'transportation', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'),
	(27, 'fas fa-dot-circle', 'Travel/Hospitality', 'travel-hospitality', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'),
	(28, 'fas fa-dot-circle', 'Warehousing', 'warehousing', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'),
	(29, 'fas fa-dot-circle', 'Writing/Editing', 'writing-editing', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'),
	(30, 'fas fa-dot-circle', 'Other', 'other', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'),
	(31, 'fas fa-store-alt', 'E-Commerce', 'e-commerce', 1, 1, '2024-12-25 01:53:27', '2024-12-25 01:53:27');

-- membuang struktur untuk table komarai1_ca_fix.job_experiences
CREATE TABLE IF NOT EXISTS `job_experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.job_experiences: ~0 rows (lebih kurang)

-- membuang struktur untuk table komarai1_ca_fix.job_locations
CREATE TABLE IF NOT EXISTS `job_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint unsigned NOT NULL,
  `status` enum('featured','trending','hot') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.job_locations: ~4 rows (lebih kurang)
INSERT INTO `job_locations` (`id`, `image`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
	(3, '/uploads/media_676c1fc8ac294.jpg', 269, 'trending', '2024-02-09 03:39:59', '2024-12-25 08:10:22'),
	(5, '/uploads/media_676c1fd3b0d63.jpg', 270, 'featured', '2024-02-09 03:41:06', '2024-12-25 08:08:03'),
	(10, '/uploads/media_676c1fa6451fe.jpg', 268, 'featured', '2024-12-25 08:07:18', '2024-12-25 08:07:18'),
	(12, '/uploads/media_676c20467a6cd.jpg', 274, 'hot', '2024-12-25 08:09:58', '2024-12-25 08:10:28');

-- membuang struktur untuk table komarai1_ca_fix.job_roles
CREATE TABLE IF NOT EXISTS `job_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.job_roles: ~20 rows (lebih kurang)
INSERT INTO `job_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Project Manager', 'project-manager', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(2, 'Marketing Manager', 'marketing-manager', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(3, 'Customer Service Representative', 'customer-service-representative', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(4, 'Data Scientist', 'data-scientist', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(5, 'Cybersecurity Analyst', 'cybersecurity-analyst', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(6, 'Human Resources Manager', 'human-resources-manager', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(7, 'Architect', 'architect', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(8, 'Chef', 'chef', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(9, 'Veterinarian', 'veterinarian', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(10, 'Writer', 'writer', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(11, 'Photographer', 'photographer', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(12, 'Videographer', 'videographer', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(13, 'Editor', 'editor', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(14, 'Musician', 'musician', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(15, 'Actor', 'actor', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(16, 'Artist', 'artist', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(17, 'Filmmaker', 'filmmaker', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(18, 'Lawyer', 'lawyer', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(19, 'Engineer', 'engineer', '2024-02-07 23:16:48', '2024-02-07 23:16:48'),
	(20, 'Police Officer', 'police-officer', '2024-02-07 23:16:48', '2024-02-07 23:16:48');

-- membuang struktur untuk table komarai1_ca_fix.job_skills
CREATE TABLE IF NOT EXISTS `job_skills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned NOT NULL,
  `skill_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_skills_job_id_foreign` (`job_id`),
  CONSTRAINT `job_skills_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.job_skills: ~3 rows (lebih kurang)
INSERT INTO `job_skills` (`id`, `job_id`, `skill_id`, `created_at`, `updated_at`) VALUES
	(160, 37, 2, '2024-12-24 02:47:51', '2024-12-24 02:47:51'),
	(161, 37, 5, '2024-12-24 02:47:51', '2024-12-24 02:47:51'),
	(162, 37, 20, '2024-12-24 02:47:51', '2024-12-24 02:47:51');

-- membuang struktur untuk table komarai1_ca_fix.job_tags
CREATE TABLE IF NOT EXISTS `job_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_tags_job_id_foreign` (`job_id`),
  CONSTRAINT `job_tags_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.job_tags: ~2 rows (lebih kurang)
INSERT INTO `job_tags` (`id`, `job_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(177, 37, 3, '2024-12-24 02:47:51', '2024-12-24 02:47:51'),
	(178, 37, 4, '2024-12-24 02:47:51', '2024-12-24 02:47:51');

-- membuang struktur untuk table komarai1_ca_fix.job_types
CREATE TABLE IF NOT EXISTS `job_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.job_types: ~10 rows (lebih kurang)
INSERT INTO `job_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Full-time', 'full-time', '2024-02-08 22:23:18', '2024-02-08 22:23:18'),
	(2, 'Part-time', 'part-time', '2024-02-08 22:23:18', '2024-02-08 22:23:18'),
	(3, 'Contract', 'contract', '2024-02-08 22:23:18', '2024-02-08 22:23:18'),
	(4, 'Temporary', 'temporary', '2024-02-08 22:23:18', '2024-02-08 22:23:18'),
	(5, 'Remote', 'remote', '2024-02-08 22:23:18', '2024-02-08 22:23:18'),
	(6, 'Freelance', 'freelance', '2024-02-08 22:23:18', '2024-02-08 22:23:18'),
	(7, 'Internship', 'internship', '2024-02-08 22:23:18', '2024-02-08 22:23:18'),
	(8, 'Entry-level', 'entry-level', '2024-02-08 22:23:18', '2024-02-08 22:23:18'),
	(9, 'Mid-level', 'mid-level', '2024-02-08 22:23:18', '2024-02-08 22:23:18'),
	(10, 'Senior-level', 'senior-level', '2024-02-08 22:23:18', '2024-02-08 22:23:18');

-- membuang struktur untuk table komarai1_ca_fix.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.languages: ~5 rows (lebih kurang)
INSERT INTO `languages` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'English', 'english', '2024-02-07 23:37:45', '2024-02-07 23:37:45'),
	(2, 'Hindi', 'hindi', '2024-02-07 23:37:45', '2024-02-07 23:37:45'),
	(3, 'Arabic', 'arabic', '2024-02-07 23:37:45', '2024-02-07 23:37:45'),
	(4, 'Bangla', 'bangla', '2024-02-07 23:37:45', '2024-02-07 23:37:45'),
	(5, 'Other', 'other', '2024-02-07 23:37:45', '2024-02-07 23:37:45');

-- membuang struktur untuk table komarai1_ca_fix.learn_mores
CREATE TABLE IF NOT EXISTS `learn_mores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.learn_mores: ~0 rows (lebih kurang)
INSERT INTO `learn_mores` (`id`, `image`, `title`, `main_title`, `sub_title`, `url`, `created_at`, `updated_at`) VALUES
	(1, '/uploads/media_65c5ed3e6f8e9.png', 'Millions Of Jobs.', 'Find The One That\'s Right For You', 'Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 250 companies. The right job is out there.', '/', '2024-02-09 03:15:42', '2024-12-24 03:40:40');

-- membuang struktur untuk table komarai1_ca_fix.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.migrations: ~57 rows (lebih kurang)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2017_08_11_073824_create_menus_wp_table', 1),
	(4, '2017_08_11_074006_create_menu_items_wp_table', 1),
	(5, '2019_08_19_000000_create_failed_jobs_table', 1),
	(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(7, '2023_12_11_093917_create_admins_table', 1),
	(8, '2023_12_14_095631_create_companies_table', 1),
	(9, '2023_12_18_102543_create_industry_types_table', 1),
	(10, '2023_12_19_111743_create_organization_types_table', 1),
	(11, '2023_12_20_045833_create_team_sizes_table', 1),
	(12, '2023_12_20_061004_create_countries_table', 1),
	(13, '2023_12_20_061016_create_states_table', 1),
	(14, '2023_12_20_061027_create_cities_table', 1),
	(15, '2023_12_24_095516_create_languages_table', 1),
	(16, '2023_12_24_112740_create_professions_table', 1),
	(17, '2023_12_25_042432_create_skills_table', 1),
	(18, '2023_12_25_055605_create_candidates_table', 1),
	(19, '2023_12_25_100255_create_experiences_table', 1),
	(20, '2023_12_26_062851_create_candidate_languages_table', 1),
	(21, '2023_12_26_062857_create_candidate_skills_table', 1),
	(22, '2023_12_27_031235_create_candidate_experiences_table', 1),
	(23, '2023_12_28_043744_create_candidate_education_table', 1),
	(24, '2024_01_01_091246_create_plans_table', 1),
	(25, '2024_01_02_050030_add_show_at_home_to_plans', 1),
	(26, '2024_01_02_091108_create_payment_settings_table', 1),
	(27, '2024_01_03_061551_create_site_settings_table', 1),
	(28, '2024_01_04_055809_create_orders_table', 1),
	(29, '2024_01_04_095501_create_user_plans_table', 1),
	(30, '2024_01_09_035110_create_job_categories_table', 1),
	(31, '2024_01_09_055023_create_education_table', 1),
	(32, '2024_01_09_065443_create_job_types_table', 1),
	(33, '2024_01_09_092041_create_salary_types_table', 1),
	(34, '2024_01_09_101223_create_tags_table', 1),
	(35, '2024_01_09_105927_create_job_roles_table', 1),
	(36, '2024_01_10_032256_create_job_experiences_table', 1),
	(37, '2024_01_10_053636_create_jobs_table', 1),
	(38, '2024_01_14_063326_create_job_tags_table', 1),
	(39, '2024_01_14_070836_create_benefits_table', 1),
	(40, '2024_01_14_070853_create_job_benefits_table', 1),
	(41, '2024_01_14_092122_create_job_skills_table', 1),
	(42, '2024_01_15_063950_add_softdelete_to_jobs_table', 1),
	(43, '2024_01_22_092311_create_applied_jobs_table', 1),
	(44, '2024_01_23_063900_create_job_bookmarks_table', 1),
	(45, '2024_01_23_103114_create_blogs_table', 1),
	(46, '2024_01_24_093258_create_heroes_table', 1),
	(47, '2024_01_25_085554_create_why_choose_us_table', 1),
	(48, '2024_01_28_044404_create_learn_mores_table', 1),
	(49, '2024_01_28_062423_create_counters_table', 1),
	(50, '2024_01_28_110347_create_job_locations_table', 1),
	(51, '2024_01_29_064929_create_reviews_table', 1),
	(52, '2024_01_30_033018_create_abouts_table', 1),
	(53, '2024_01_30_102934_create_custom_page_builders_table', 1),
	(54, '2024_01_31_045344_create_subscribers_table', 1),
	(55, '2024_02_01_031615_create_footers_table', 1),
	(56, '2024_02_01_041322_create_social_icons_table', 1),
	(57, '2024_02_05_102755_create_permission_tables', 1),
	(58, '2024_12_22_163859_create_sessions_table', 2);

-- membuang struktur untuk table komarai1_ca_fix.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.model_has_permissions: ~0 rows (lebih kurang)

-- membuang struktur untuk table komarai1_ca_fix.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.model_has_roles: ~0 rows (lebih kurang)
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\Admin', 1),
	(1, 'App\\Models\\Admin', 2),
	(2, 'App\\Models\\Admin', 3),
	(3, 'App\\Models\\Admin', 4),
	(4, 'App\\Models\\Admin', 5);

-- membuang struktur untuk table komarai1_ca_fix.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `plan_id` bigint unsigned NOT NULL,
  `package_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `paid_in_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` enum('paid','unpaid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_company_id_foreign` (`company_id`),
  CONSTRAINT `orders_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.orders: ~1 rows (lebih kurang)

-- membuang struktur untuk table komarai1_ca_fix.organization_types
CREATE TABLE IF NOT EXISTS `organization_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.organization_types: ~6 rows (lebih kurang)
INSERT INTO `organization_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Government', 'government', '2024-02-08 04:42:46', '2024-02-08 04:42:46'),
	(2, 'Semi Government', 'semi-government', '2024-02-08 04:42:46', '2024-02-08 04:42:46'),
	(3, 'Public', 'public', '2024-02-08 04:42:46', '2024-02-08 04:42:46'),
	(4, 'Private', 'private', '2024-02-08 04:42:46', '2024-02-08 04:42:46'),
	(5, 'NGO', 'ngo', '2024-02-08 04:42:46', '2024-02-08 04:42:46'),
	(6, 'International Agencies', 'international-agencies', '2024-02-08 04:42:46', '2024-02-08 04:42:46');

-- membuang struktur untuk table komarai1_ca_fix.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.password_reset_tokens: ~0 rows (lebih kurang)
INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
	('admin@careerapex.com', '$2y$12$hemV3AX35o47IGqEMR81O.q0i7YqtxkIbxooEU4sNUnVBeSFBL.U6', '2024-12-25 07:16:47');

-- membuang struktur untuk table komarai1_ca_fix.payment_settings
CREATE TABLE IF NOT EXISTS `payment_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.payment_settings: ~20 rows (lebih kurang)
INSERT INTO `payment_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'paypal_status', 'active', '2024-01-02 21:36:16', '2024-01-07 22:31:01'),
	(2, 'paypal_account_mode', 'sandbox', '2024-01-02 21:36:16', '2024-01-02 21:36:16'),
	(3, 'paypal_country_name', 'US', '2024-01-02 21:36:16', '2024-01-02 21:36:16'),
	(4, 'paypal_currency_name', 'USD', '2024-01-02 21:36:16', '2024-01-03 22:11:42'),
	(5, 'paypal_currency_rate', '1', '2024-01-02 21:36:16', '2024-01-03 22:11:42'),
	(6, 'paypal_client_id', 'AVNUDKwMZBRre6GdfGusYp8nnFMbyRrzKb46A-s9OgsziUpMRGSWvdaBM2B8EUTM_NIxIX45MetVbkCK', '2024-01-02 21:36:16', '2024-01-03 03:41:24'),
	(7, 'paypal_client_secret', 'EL6KjLuP1g38qLZ3axMhcp3uMzBgYXiAyOekEMsXbtng5Mgb0aG0ofDM7sURAbRKnKCEAPiQYntkh8bO', '2024-01-02 21:36:16', '2024-01-03 03:41:24'),
	(8, 'paypal_app_id', 'Client_app_id', '2024-01-02 21:36:16', '2024-01-02 21:36:16'),
	(9, 'stripe_status', 'active', '2024-01-05 23:34:39', '2024-01-05 23:34:39'),
	(10, 'stripe_country_name', 'US', '2024-01-05 23:34:39', '2024-01-05 23:34:39'),
	(11, 'stripe_currency_name', 'USD', '2024-01-05 23:34:39', '2024-01-05 23:34:39'),
	(12, 'stripe_currency_rate', '1', '2024-01-05 23:34:39', '2024-01-05 23:34:39'),
	(13, 'stripe_publishable_key', 'pk_test_51OVRhFHgrCz0Smml5mxCMyUU1zWdegTdMkUMyubU3wL9yjDZA6LGpLpgCsFD7KX4JUBQb67z2iyUJFuPL0ClcDZi00Yui5p25Y', '2024-01-05 23:34:39', '2024-01-05 23:34:39'),
	(14, 'stripe_secret_key', 'sk_test_51OVRhFHgrCz0SmmlZq11q3KVSZbCDEsYawGFGdhYBiEDACTJKwAnVZhF7bVmAKveGel1ubry1DX6taNlNSYe9APO00veYq6d3w', '2024-01-05 23:34:39', '2024-01-05 23:34:39'),
	(15, 'razorpay_status', 'active', '2024-01-06 03:41:18', '2024-01-06 03:41:18'),
	(16, 'razorpay_country_name', 'IN', '2024-01-06 03:41:18', '2024-01-06 03:41:18'),
	(17, 'razorpay_currency_name', 'INR', '2024-01-06 03:41:18', '2024-01-06 03:41:18'),
	(18, 'razorpay_currency_rate', '83.19', '2024-01-06 03:41:18', '2024-01-06 03:41:18'),
	(19, 'razorpay_key', 'rzp_test_K7CipNQYyyMPiS', '2024-01-06 03:41:18', '2024-01-06 04:28:38'),
	(20, 'razorpay_secret_key', 'zSBmNMorJrirOrnDrbOd1ALO', '2024-01-06 03:41:18', '2024-01-06 04:28:38');

-- membuang struktur untuk table komarai1_ca_fix.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.permissions: ~23 rows (lebih kurang)
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group`, `created_at`, `updated_at`) VALUES
	(1, 'dashboard analytics', 'admin', 'Dashboard', '2024-02-05 21:56:14', '2024-02-05 21:56:14'),
	(2, 'dashboard pending posts', 'admin', 'Dashboard', '2024-02-05 21:56:31', '2024-02-05 21:56:31'),
	(3, 'order index', 'admin', 'Order', '2024-02-05 22:41:50', '2024-02-05 22:41:50'),
	(4, 'job category create', 'admin', 'Job Category', '2024-02-05 22:42:54', '2024-02-05 22:42:54'),
	(5, 'job category update', 'admin', 'Job Category', '2024-02-05 22:43:00', '2024-02-05 22:43:00'),
	(6, 'job category delete', 'admin', 'Job Category', '2024-02-05 22:43:06', '2024-02-05 22:43:06'),
	(7, 'job create', 'admin', 'Job', '2024-02-05 22:44:13', '2024-02-05 22:44:13'),
	(8, 'job update', 'admin', 'Job', '2024-02-05 22:44:19', '2024-02-05 22:44:19'),
	(9, 'job delete', 'admin', 'Job', '2024-02-05 22:44:27', '2024-02-05 22:44:27'),
	(10, 'job role', 'admin', 'Job Role', '2024-02-05 22:46:17', '2024-02-05 22:46:17'),
	(11, 'job attributes', 'admin', 'Job Attributes', '2024-02-05 22:48:23', '2024-02-05 22:48:23'),
	(12, 'job locations', 'admin', 'Job Locations', '2024-02-05 22:49:00', '2024-02-05 22:49:00'),
	(13, 'sections', 'admin', 'Site Sections', '2024-02-05 22:49:31', '2024-02-05 22:49:31'),
	(14, 'site pages', 'admin', 'Site Pages', '2024-02-05 22:50:09', '2024-02-05 22:50:09'),
	(15, 'site footer', 'admin', 'Site Footer', '2024-02-05 22:50:48', '2024-02-05 22:50:48'),
	(16, 'blogs', 'admin', 'Blogs', '2024-02-05 22:51:23', '2024-02-05 22:51:23'),
	(17, 'price plan', 'admin', 'Price Plan', '2024-02-05 22:51:54', '2024-02-05 22:51:54'),
	(18, 'news letter', 'admin', 'News Letter', '2024-02-05 22:52:37', '2024-02-05 22:52:37'),
	(19, 'menu builder', 'admin', 'Menu Builder', '2024-02-05 22:53:11', '2024-02-05 22:53:11'),
	(20, 'access management', 'admin', 'Access Management', '2024-02-05 22:53:58', '2024-02-05 22:53:58'),
	(21, 'payment settings', 'admin', 'Payment Settings', '2024-02-05 22:54:36', '2024-02-05 22:54:36'),
	(22, 'site settings', 'admin', 'Site Settings', '2024-02-05 22:54:44', '2024-02-05 22:54:44'),
	(23, 'database clear', 'admin', 'Database Clear', '2024-02-05 22:54:54', '2024-02-05 22:54:54');

-- membuang struktur untuk table komarai1_ca_fix.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.personal_access_tokens: ~0 rows (lebih kurang)

-- membuang struktur untuk table komarai1_ca_fix.plans
CREATE TABLE IF NOT EXISTS `plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `job_limit` int NOT NULL,
  `featured_job_limit` int NOT NULL,
  `highlight_job_limit` int NOT NULL,
  `profile_verified` tinyint(1) NOT NULL DEFAULT '0',
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `frontend_show` tinyint(1) NOT NULL DEFAULT '0',
  `show_at_home` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.plans: ~1 rows (lebih kurang)

-- membuang struktur untuk table komarai1_ca_fix.professions
CREATE TABLE IF NOT EXISTS `professions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.professions: ~20 rows (lebih kurang)
INSERT INTO `professions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Software Developer', 'software-developer', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(2, 'Web Designer', 'web-designer', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(3, 'Data Scientist', 'data-scientist', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(4, 'Digital Marketer', 'digital-marketer', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(5, 'UX/UI Designer', 'ux-ui-designer', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(6, 'Network Administrator', 'network-administrator', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(7, 'Content Creator', 'content-creator', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(8, 'Project Manager', 'project-manager', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(9, 'Graphic Designer', 'graphic-designer', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(10, 'Database Administrator', 'database-administrator', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(11, 'Cybersecurity Analyst', 'cybersecurity-analyst', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(12, 'Systems Analyst', 'systems-analyst', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(13, 'Mobile App Developer', 'mobile-app-developer', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(14, 'Game Developer', 'game-developer', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(15, 'Technical Writer', 'technical-writer', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(16, 'DevOps Engineer', 'devops-engineer', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(17, 'Cloud Architect', 'cloud-architect', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(18, 'Business Analyst', 'business-analyst', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(19, 'UI/UX Developer', 'ui-ux-developer', '2024-02-07 23:35:59', '2024-02-07 23:35:59'),
	(20, 'Artificial Intelligence Engineer', 'artificial-intelligence-engineer', '2024-02-07 23:35:59', '2024-02-07 23:35:59');

-- membuang struktur untuk table komarai1_ca_fix.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.reviews: ~5 rows (lebih kurang)
INSERT INTO `reviews` (`id`, `image`, `name`, `title`, `review`, `rating`, `created_at`, `updated_at`) VALUES
	(1, '/uploads/media_65c5f508e91d9.png', 'Karen Audrey', 'Marketing Manager', 'This job portal is user-friendly with spot-on job recommendations. Within a month, I secured a Marketing Manager position. Highly recommend it!', 5, '2024-02-09 03:48:56', '2024-12-25 07:55:00'),
	(2, '/uploads/media_65c5f5473f2df.png', 'Samuel Cornelis', 'Human Resources Specialist', 'The comprehensive job listings and filters made my job search easy. Thanks to this platform, I now work as a Human Resources Specialist.', 5, '2024-02-09 03:49:59', '2024-12-25 07:55:44'),
	(3, '/uploads/media_65c5f5701b628.png', 'Rifki Iskandar', 'Data Analyst', 'This job portal\'s accuracy and relevance stood out. After a few applications, I got an offer as a Data Analyst. Highly recommend it for job seekers.', 5, '2024-02-09 03:50:40', '2024-12-25 07:56:04'),
	(4, '/uploads/media_65c5f59496248.png', 'Mousa Khalil', 'AI Engineer', 'As a recent grad, this job portal made finding a job easier. I found many entry-level positions and was hired as a AI Engineer in weeks.', 5, '2024-02-09 03:51:16', '2024-12-25 07:55:32'),
	(5, '/uploads/media_65c5f5bc32fc4.jpg', 'Samuel Caesar', 'Software Engineer', 'The job portal was a game-changer. I appreciated the detailed job descriptions and alerts. I landed a Software Engineer job smoothly. Thank you!', 5, '2024-02-09 03:51:56', '2024-12-25 07:55:51');

-- membuang struktur untuk table komarai1_ca_fix.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.roles: ~0 rows (lebih kurang)
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'admin', '2024-02-06 03:55:55', '2024-02-06 03:55:55'),
	(2, 'Copywriter', 'admin', '2024-12-25 10:35:50', '2024-12-25 10:40:24'),
	(3, 'Jober', 'admin', '2024-12-25 10:40:07', '2024-12-25 10:40:07'),
	(4, 'Builder', 'admin', '2024-12-25 10:41:20', '2024-12-25 10:41:20');

-- membuang struktur untuk table komarai1_ca_fix.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.role_has_permissions: ~23 rows (lebih kurang)
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(1, 2),
	(18, 2),
	(1, 3),
	(2, 3),
	(4, 3),
	(5, 3),
	(6, 3),
	(7, 3),
	(8, 3),
	(9, 3),
	(10, 3),
	(11, 3),
	(12, 3),
	(1, 4),
	(13, 4),
	(14, 4),
	(15, 4),
	(16, 4),
	(19, 4);

-- membuang struktur untuk table komarai1_ca_fix.salary_types
CREATE TABLE IF NOT EXISTS `salary_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.salary_types: ~4 rows (lebih kurang)
INSERT INTO `salary_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Monthly', 'monthly', '2024-02-08 22:22:07', '2024-02-08 22:22:07'),
	(2, 'Hourly', 'hourly', '2024-02-08 22:22:07', '2024-02-08 22:22:07'),
	(3, 'Yearly', 'yearly', '2024-02-08 22:22:07', '2024-02-08 22:22:07'),
	(4, 'Project Basis', 'project-basis', '2024-02-08 22:22:07', '2024-02-08 22:22:07');

-- membuang struktur untuk table komarai1_ca_fix.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.sessions: ~1 rows (lebih kurang)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('ba5QPctaKCMoROcv4qfHT0ASeb5BL53bxhuYILwd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT1F4aldSOXhBbE5tZGVURUR1R0Z0VUFPMUlzS2VidExRM3k0R0MycyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL2NhcmVlci1hcGV4LnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735148721),
	('BePEEQIXTuQTHN176iriIfaO5F46jNOkm4ujArW3', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY1Y2azl3WXlzdUhTMmtkT1hXQU5XeUYzZ2tQcFdjVlhoeEV6MVJ5bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MjoiaHR0cDovL2NhcmVlci1hcGV4LnRlc3QvYWRtaW4vbWVudS1idWlsZGVyIjt9czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1735147702);

-- membuang struktur untuk table komarai1_ca_fix.site_settings
CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.site_settings: ~8 rows (lebih kurang)
INSERT INTO `site_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'site_name', 'Career Apex', '2024-01-03 01:03:35', '2024-12-22 10:25:09'),
	(2, 'site_email', 'info@careerapex.com', '2024-01-03 01:03:35', '2024-12-22 10:25:09'),
	(3, 'site_phone', '+62 8133 9879 657', '2024-01-03 01:03:35', '2024-12-22 11:54:28'),
	(4, 'site_default_currency', 'IDR', '2024-01-03 01:03:35', '2024-12-22 10:25:09'),
	(5, 'site_currency_icon', 'Rp.', '2024-01-03 01:03:35', '2024-12-22 10:25:09'),
	(6, 'site_map', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63468.48521907333!2d106.75725949999999!3d-6.1601685999999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f7c9d110d719%3A0x300c5e82dd4b8a0!2sJakarta%20Barat%2C%20Kec.%20Kb.%20Jeruk%2C%20Kota%20Jakarta%20Barat%2C%20Daerah%20Khusus%20Ibukota%20Jakarta!5e0!3m2!1sid!2sid!4v1734888294261!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', '2024-01-30 03:53:20', '2024-12-22 10:25:09'),
	(7, 'site_logo', '/uploads/media_676c16e7c5ef6.png', '2024-12-22 10:26:19', '2024-12-25 07:29:59'),
	(8, 'site_favicon', '/uploads/media_67685c7705e14.png', '2024-12-22 10:26:19', '2024-12-22 11:37:43');

-- membuang struktur untuk table komarai1_ca_fix.skills
CREATE TABLE IF NOT EXISTS `skills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.skills: ~85 rows (lebih kurang)
INSERT INTO `skills` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Communication Skills', 'communication-skills', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(2, 'Critical Thinking', 'critical-thinking', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(3, 'Problem Solving', 'problem-solving', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(4, 'Creativity', 'creativity', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(5, 'Teamwork', 'teamwork', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(6, 'Leadership', 'leadership', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(7, 'Adaptability', 'adaptability', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(8, 'Time Management', 'time-management', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(9, 'Emotional Intelligence', 'emotional-intelligence', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(10, 'Decision Making', 'decision-making', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(11, 'Analytical Skills', 'analytical-skills', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(12, 'Project Management', 'project-management', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(13, 'Collaboration', 'collaboration', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(14, 'Negotiation', 'negotiation', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(15, 'Conflict Resolution', 'conflict-resolution', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(16, 'Networking', 'networking', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(17, 'Presentation Skills', 'presentation-skills', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(18, 'Strategic Planning', 'strategic-planning', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(19, 'Research', 'research', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(20, 'Data Analysis', 'data-analysis', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(21, 'Digital Literacy', 'digital-literacy', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(22, 'Python', 'python', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(23, 'Java', 'java', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(24, 'JavaScript', 'javascript', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(25, 'C++', 'c', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(26, 'Ruby', 'ruby', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(27, 'PHP', 'php', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(28, 'Swift', 'swift', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(29, 'Kotlin', 'kotlin', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(30, 'TypeScript', 'typescript', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(31, 'HTML/CSS', 'html-css', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(32, 'Cybersecurity', 'cybersecurity', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(33, 'AWS (Amazon Web Services)', 'aws-amazon-web-services', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(34, 'Azure', 'azure', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(35, 'Google Cloud Platform', 'google-cloud-platform', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(36, 'Kubernetes', 'kubernetes', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(37, 'Docker', 'docker', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(38, 'TensorFlow', 'tensorflow', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(39, 'PyTorch', 'pytorch', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(40, 'scikit-learn', 'scikit-learn', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(41, 'Keras', 'keras', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(42, 'R', 'r', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(43, 'SAS', 'sas', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(44, 'SPSS', 'spss', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(45, 'Financial Literacy', 'financial-literacy', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(46, 'Marketing Strategy', 'marketing-strategy', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(47, 'Sales', 'sales', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(48, 'Customer Service', 'customer-service', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(49, 'Adobe Creative Suite (Photoshop, Illustrator, InDesign)', 'adobe-creative-suite-photoshop-illustrator-indesign', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(50, 'Sketch', 'sketch', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(51, 'Canva', 'canva', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(52, 'Adobe Premiere Pro', 'adobe-premiere-pro', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(53, 'Final Cut Pro', 'final-cut-pro', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(54, 'DaVinci Resolve', 'davinci-resolve', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(55, 'Content Writing', 'content-writing', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(56, 'Foreign Language Proficiency', 'foreign-language-proficiency', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(57, 'Public Speaking', 'public-speaking', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(58, 'Sales', 'sales-2', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(59, 'Quality Assurance', 'quality-assurance', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(60, 'Figma', 'figma', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(61, 'Sketch', 'sketch-2', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(62, 'Adobe XD', 'adobe-xd', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(63, 'React.js', 'react-js', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(64, 'Angular', 'angular', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(65, 'Vue.js', 'vue-js', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(66, 'Node.js', 'node-js', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(67, 'Django', 'django', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(68, 'Flask', 'flask', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(69, 'Ruby on Rails', 'ruby-on-rails', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(70, 'ASP.NET', 'asp-net', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(71, 'React Native', 'react-native', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(72, 'Flutter', 'flutter', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(73, 'Xamarin', 'xamarin', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(74, 'Swift (iOS)', 'swift-ios', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(75, 'Kotlin (Android)', 'kotlin-android', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(76, 'Social Media Management', 'social-media-management', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(77, 'SEO (Search Engine Optimization)', 'seo-search-engine-optimization', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(78, 'Supply Chain Management', 'supply-chain-management', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(79, 'Public Relations', 'public-relations', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(80, 'Risk Management', 'risk-management', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(81, 'Coaching/Mentoring', 'coaching-mentoring', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(82, 'Learning Agility', 'learning-agility', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(83, 'Crisis Management', 'crisis-management', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(84, 'Health and Wellness', 'health-and-wellness', '2024-02-07 23:36:44', '2024-02-07 23:36:44'),
	(85, 'Cultural Competence', 'cultural-competence', '2024-02-07 23:36:44', '2024-02-07 23:36:44');

-- membuang struktur untuk table komarai1_ca_fix.social_icons
CREATE TABLE IF NOT EXISTS `social_icons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.social_icons: ~4 rows (lebih kurang)
INSERT INTO `social_icons` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
	(1, 'fab fa-facebook-f', 'https://www.facebook.com/', '2024-02-09 04:11:04', '2024-02-09 04:11:04'),
	(2, 'fab fa-instagram', 'https://www.instagram.com/', '2024-02-09 04:11:18', '2024-12-25 08:33:59'),
	(5, 'fab fa-whatsapp', 'https://wa.me/', '2024-12-22 11:50:21', '2024-12-25 08:33:25'),
	(6, 'fab fa-linkedin', 'https://id.linkedin.com/', '2024-12-22 11:50:35', '2024-12-25 08:33:45');

-- membuang struktur untuk table komarai1_ca_fix.states
CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `states_country_id_foreign` (`country_id`),
  CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.states: ~13 rows (lebih kurang)
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
	(5238, 'Central Jakarta', 269, '2024-12-24 02:18:57', '2024-12-24 02:18:57'),
	(5239, 'West Jakarta', 269, '2024-12-24 02:19:09', '2024-12-24 02:19:09'),
	(5240, 'East Jakarta', 269, '2024-12-24 02:19:22', '2024-12-24 02:19:22'),
	(5241, 'South Jakarta', 269, '2024-12-24 02:19:39', '2024-12-24 02:19:39'),
	(5242, 'North Jakarta', 269, '2024-12-24 02:19:50', '2024-12-24 02:19:50'),
	(5243, 'Depok', 270, '2024-12-24 02:22:09', '2024-12-24 02:22:09'),
	(5244, 'Bekasi', 270, '2024-12-24 02:22:20', '2024-12-24 02:22:20'),
	(5245, 'Bandung', 270, '2024-12-24 02:22:38', '2024-12-24 02:22:38'),
	(5246, 'Tangerang', 268, '2024-12-24 02:23:15', '2024-12-24 02:23:15'),
	(5247, 'Serang', 268, '2024-12-24 02:23:39', '2024-12-24 02:23:39'),
	(5248, 'Cilegon', 268, '2024-12-24 02:23:49', '2024-12-24 02:23:49'),
	(5249, 'Denpasar', 274, '2024-12-25 08:09:02', '2024-12-25 08:09:02'),
	(5251, 'Tabanan', 274, '2024-12-25 08:13:14', '2024-12-25 08:13:14');

-- membuang struktur untuk table komarai1_ca_fix.subscribers
CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.subscribers: ~1 rows (lebih kurang)
INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
	(2, 'komaraindra21@gmail.com', '2024-12-24 04:49:37', '2024-12-24 04:49:37');

-- membuang struktur untuk table komarai1_ca_fix.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.tags: ~20 rows (lebih kurang)
INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'remote-friendly', 'remote-friendly', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(2, 'fully-distributed', 'fully-distributed', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(3, 'software-development', 'software-development', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(4, 'data-science', 'data-science', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(5, 'cybersecurity', 'cybersecurity', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(6, 'cloud-computing', 'cloud-computing', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(7, 'open-source-experience', 'open-source-experience', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(8, 'agile-methodology', 'agile-methodology', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(9, 'strong-communication-skills', 'strong-communication-skills', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(10, 'time-zone-flexibility', 'time-zone-flexibility', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(11, 'global-collaboration', 'global-collaboration', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(12, 'startup-environment', 'startup-environment', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(13, 'work-life-balance', 'work-life-balance', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(14, 'continuous-learning', 'continuous-learning', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(15, 'competitive-benefits', 'competitive-benefits', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(16, 'equity-compensation', 'equity-compensation', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(17, 'high-growth-opportunity', 'high-growth-opportunity', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(18, 'diverse-and-inclusive', 'diverse-and-inclusive', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(19, 'positive-company-culture', 'positive-company-culture', '2024-02-08 22:30:37', '2024-02-08 22:30:37'),
	(20, 'impactful-work', 'impactful-work', '2024-02-08 22:30:37', '2024-02-08 22:30:37');

-- membuang struktur untuk table komarai1_ca_fix.team_sizes
CREATE TABLE IF NOT EXISTS `team_sizes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.team_sizes: ~10 rows (lebih kurang)
INSERT INTO `team_sizes` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Only Me', 'only-me', NULL, NULL),
	(2, '1-5 Members', '1-5-members', NULL, NULL),
	(3, '5-10 Members', '5-10-members', NULL, NULL),
	(4, '10-20 Members', '10-20-members', NULL, NULL),
	(5, '20-50 Members', '20-50-members', NULL, NULL),
	(6, '50-100 Members', '50-100-members', NULL, NULL),
	(7, '100-200 Members', '100-200-members', NULL, NULL),
	(8, '200-300 Members', '200-300-members', NULL, NULL),
	(9, '300-400 Members', '300-400-members', NULL, NULL),
	(10, '500+ Members', '500-members', NULL, NULL);

-- membuang struktur untuk table komarai1_ca_fix.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/default-uploads/avatar.png',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('company','candidate') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'candidate',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.users: ~13 rows (lebih kurang)
INSERT INTO `users` (`id`, `name`, `image`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', '/default-uploads/avatar.png', 'adminblog@gmail.com', NULL, 'candidate', '$2y$12$6q9Cm1VCU7R93bMyjvx6De/pmXmUUttGmog34duV4qQUqoS/MJQ9C', NULL, '2024-12-25 08:26:20', '2024-12-25 08:26:20'),
	(43, 'Komara Indra Putra', '/default-uploads/avatar.png', 'komaraindra21@gmail.com', NULL, 'candidate', '$2y$12$xatsokmehfOFPDTs52YFCO59Utj.eyR3lZjpeILI2XujoU6vDbzhq', NULL, '2024-12-22 11:59:06', '2024-12-22 11:59:06'),
	(44, 'Zyxdev Technology', '/default-uploads/avatar.png', 'hrd@zyxdev.com', NULL, 'company', '$2y$12$eHBHjc/L7/lGmuyAaA4hP.GQcVyfhk0G7DFiztSEAWtHSnKQO9YOe', NULL, '2024-12-24 02:37:23', '2024-12-24 02:37:23'),
	(45, 'Tokopedia', '/default-uploads/avatar.png', 'hrd@tokopedia.com', NULL, 'company', '$2y$12$et9wPSj2omd1gJMoAZXtT.VTuJ/yjtgRzbrowxnW6zqTe5afqJ2Qm', NULL, '2024-12-25 01:22:02', '2024-12-25 01:22:02'),
	(46, 'Gojek', '/default-uploads/avatar.png', 'hrd@gojek.com', NULL, 'company', '$2y$12$HDgk49Hz5jIibckiEu4ND.Spwck3FV7NErdprCeBbSJD7eWGNQ6cW', NULL, '2024-12-25 01:22:44', '2024-12-25 01:22:44'),
	(47, 'IBM', '/default-uploads/avatar.png', 'hrd@ibm.com', NULL, 'company', '$2y$12$5UTIEzUszvoaX3D7gDuNFuXs4g.c2w8EfOPhZOz0mqtMJNPlQSk7.', NULL, '2024-12-25 01:23:24', '2024-12-25 01:23:24'),
	(48, 'Zalora', '/default-uploads/avatar.png', 'hrd@zalora.com', NULL, 'company', '$2y$12$d6xvfkgtOHJi6ZWArvGY7OmXE82TFcnzBSr2WEmBtGu.lhp8ea3n.', NULL, '2024-12-25 01:23:55', '2024-12-25 01:23:55'),
	(49, 'Ahmad Haikal Kamil Shahab', '/default-uploads/avatar.png', 'haikal@gmail.com', NULL, 'candidate', '$2y$12$nDTSPZrgc7PZsoyR.0haUuW.O.lR/NYDfmH57UFK5owhmmvxncPii', NULL, '2024-12-25 01:41:31', '2024-12-25 01:41:31'),
	(50, 'Zaky  Fajri Rosmansah', '/default-uploads/avatar.png', 'zaky@gmail.com', NULL, 'candidate', '$2y$12$8q61VJ1GdNKdOxjUpHlNAuXFC6ztCi/MKfhfQGgeweIr7ao.3j8SK', NULL, '2024-12-25 01:43:15', '2024-12-25 01:43:15'),
	(51, 'Zarin Nurullayla', '/default-uploads/avatar.png', 'zarin@gmail.com', NULL, 'candidate', '$2y$12$vv.G1lU/lLFngXGlsxa6XuBkfYkJJx67UlE/bX3FrXaj3rFEt4Iae', NULL, '2024-12-25 01:45:01', '2024-12-25 01:45:01'),
	(52, 'Bank Central Asia', '/default-uploads/avatar.png', 'hrd@bca.com', NULL, 'company', '$2y$12$XlwbWdeR3J.n6jr9Ht/1YeYafP02fD3DUSq9Tj21DrICWpLPKd9hu', NULL, '2024-12-25 01:57:14', '2024-12-25 01:57:14'),
	(53, 'Pertamina', '/default-uploads/avatar.png', 'hrd@pertamina.com', NULL, 'company', '$2y$12$yJ5b1kdpdQC1pOO4cL4PWeVzs5TuwioUMlcpD.7vCJot6aKzy9tDy', NULL, '2024-12-25 01:58:15', '2024-12-25 01:58:15');

-- membuang struktur untuk table komarai1_ca_fix.user_plans
CREATE TABLE IF NOT EXISTS `user_plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `plan_id` bigint unsigned NOT NULL,
  `job_limit` int NOT NULL DEFAULT '0',
  `featured_job_limit` int NOT NULL DEFAULT '0',
  `highlight_job_limit` int NOT NULL DEFAULT '0',
  `profile_verified` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_plans_company_id_foreign` (`company_id`),
  CONSTRAINT `user_plans_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.user_plans: ~1 rows (lebih kurang)

-- membuang struktur untuk table komarai1_ca_fix.why_choose_us
CREATE TABLE IF NOT EXISTS `why_choose_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel komarai1_ca_fix.why_choose_us: ~0 rows (lebih kurang)
INSERT INTO `why_choose_us` (`id`, `icon_one`, `title_one`, `sub_title_one`, `icon_two`, `title_two`, `sub_title_two`, `icon_three`, `title_three`, `sub_title_three`, `created_at`, `updated_at`) VALUES
	(1, 'fas fa-dollar-sign', 'Budget Friendly', 'Our services are designed to be affordable, ensuring you get the best value for your investment.', 'fas fa-check', 'Easy to Use', 'Our user-friendly platform makes it simple to post jobs and manage applications efficiently.', 'fas fa-award', 'Quality Candidate', 'We connect you with top-tier candidates who meet your specific job requirements.', '2024-02-09 03:14:36', '2024-12-25 09:39:36');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
