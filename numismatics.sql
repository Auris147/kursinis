-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 09:24 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `numismatics`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(80, 'default', 'created', 44, 'App\\Inventory', 1, 'App\\User', '[]', '2019-06-08 15:38:16', '2019-06-08 15:38:16'),
(81, 'default', 'created', 45, 'App\\Inventory', 1, 'App\\User', '[]', '2019-06-09 09:46:36', '2019-06-09 09:46:36'),
(82, 'default', 'created', 46, 'App\\Inventory', 1, 'App\\User', '[]', '2019-06-09 09:46:42', '2019-06-09 09:46:42'),
(83, 'default', 'deleted', 41, 'App\\Inventory', 1, 'App\\User', '[]', '2019-06-09 11:16:39', '2019-06-09 11:16:39'),
(84, 'default', 'deleted', 42, 'App\\Inventory', 1, 'App\\User', '[]', '2019-06-09 11:16:43', '2019-06-09 11:16:43'),
(85, 'default', 'deleted', 44, 'App\\Inventory', 1, 'App\\User', '[]', '2019-06-09 11:16:47', '2019-06-09 11:16:47'),
(86, 'default', 'created', 4, 'App\\Catalog', 1, 'App\\User', '[]', '2019-06-10 16:54:25', '2019-06-10 16:54:25'),
(87, 'default', 'deleted', 4, 'App\\Catalog', 1, 'App\\User', '[]', '2019-06-10 16:55:07', '2019-06-10 16:55:07'),
(88, 'default', 'created', 5, 'App\\Catalog', 1, 'App\\User', '[]', '2019-06-10 16:57:42', '2019-06-10 16:57:42'),
(89, 'default', 'deleted', 5, 'App\\Catalog', 1, 'App\\User', '[]', '2019-06-10 16:57:52', '2019-06-10 16:57:52'),
(90, 'default', 'created', 6, 'App\\Catalog', 1, 'App\\User', '[]', '2019-06-10 16:58:02', '2019-06-10 16:58:02'),
(91, 'default', 'deleted', 6, 'App\\Catalog', 1, 'App\\User', '[]', '2019-06-10 16:58:37', '2019-06-10 16:58:37'),
(92, 'default', 'created', 7, 'App\\Catalog', 1, 'App\\User', '[]', '2019-06-10 17:04:29', '2019-06-10 17:04:29'),
(93, 'default', 'updated', 7, 'App\\Catalog', 1, 'App\\User', '[]', '2019-06-10 17:08:20', '2019-06-10 17:08:20'),
(94, 'default', 'updated', 7, 'App\\Catalog', 1, 'App\\User', '[]', '2019-06-10 17:14:05', '2019-06-10 17:14:05'),
(95, 'default', 'deleted', 7, 'App\\Catalog', 1, 'App\\User', '[]', '2019-06-10 17:19:50', '2019-06-10 17:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` mediumtext,
  `Krause_number` varchar(20) DEFAULT NULL,
  `Country` varchar(40) DEFAULT NULL,
  `Denomination` varchar(255) DEFAULT NULL,
  `Year` int(4) DEFAULT NULL,
  `Period` varchar(255) DEFAULT NULL,
  `Coin_type` varchar(30) DEFAULT NULL,
  `Composition` varchar(255) DEFAULT NULL,
  `Edge_type` varchar(30) DEFAULT NULL,
  `Shape` varchar(20) DEFAULT NULL,
  `Alignment` varchar(255) DEFAULT NULL,
  `Weight` float DEFAULT NULL,
  `Diameter` float DEFAULT NULL,
  `Thickness` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `image`, `Krause_number`, `Country`, `Denomination`, `Year`, `Period`, `Coin_type`, `Composition`, `Edge_type`, `Shape`, `Alignment`, `Weight`, `Diameter`, `Thickness`) VALUES
(1, 'g873.jpg', 'KM# 205', 'Lithuania', '1 euro cent', 2015, 'European Union (Euro) (2015 - 2019)', 'Circulation coins', 'Copper plated Steel', 'Smooth', 'Round', 'Medal (0°)', 2.3, 16.25, 1.67),
(2, 'g1377.jpg', 'KM# 209', 'Germany', '5 euro cent', 2002, 'European Union (Euro) (2002 - 2019)', 'Circulation coins', 'Copper plated Steel', 'Smooth', 'Round', 'Medal (0°)', 3.92, 21.25, 1.67),
(3, '5-Kopeks.jpg', 'Y# 601', 'Russia', '5 kopeks', 1997, 'Russian Federation (1997 - 2019)', 'Circulation coins', 'Copper-Nickel plated Steel', 'Smooth', 'Round', 'Medal (0°)', 2.6, 18.5, 1.45);

-- --------------------------------------------------------

--
-- Table structure for table `chatter_categories`
--

CREATE TABLE `chatter_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_categories`
--

INSERT INTO `chatter_categories` (`id`, `parent_id`, `order`, `name`, `color`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Introductions', '#3498DB', 'introductions', NULL, NULL),
(2, NULL, 2, 'General', '#2ECC71', 'general', NULL, NULL),
(3, NULL, 3, 'Feedback', '#9B59B6', 'feedback', NULL, NULL),
(4, NULL, 4, 'Random', '#E67E22', 'random', NULL, NULL),
(5, 1, 1, 'Rules', '#227ab5', 'rules', NULL, NULL),
(6, 5, 1, 'Basics', '#195a86', 'basics', NULL, NULL),
(7, 5, 2, 'Contribution', '#195a86', 'contribution', NULL, NULL),
(8, 1, 2, 'About', '#227ab5', 'about', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chatter_discussion`
--

CREATE TABLE `chatter_discussion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chatter_category_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `answered` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '#232629',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_reply_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_discussion`
--

INSERT INTO `chatter_discussion` (`id`, `chatter_category_id`, `title`, `user_id`, `sticky`, `views`, `answered`, `created_at`, `updated_at`, `slug`, `color`, `deleted_at`, `last_reply_at`) VALUES
(10, 2, 'Looking to  change coins', 1, 0, 9, 0, '2019-06-09 11:14:53', '2019-06-10 14:02:27', 'looking-to-change-coins', NULL, NULL, '2019-06-10 14:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `chatter_post`
--

CREATE TABLE `chatter_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chatter_discussion_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `markdown` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_post`
--

INSERT INTO `chatter_post` (`id`, `chatter_discussion_id`, `user_id`, `body`, `created_at`, `updated_at`, `markdown`, `locked`, `deleted_at`) VALUES
(13, 10, 1, '<p>Hello,&nbsp;</p>\r\n<p>I would like to know if anyone has any coins to swap.</p>', '2019-06-09 11:14:53', '2019-06-09 11:14:53', 0, 0, NULL),
(15, 10, 1, '<p>dddddddddddddddddddd</p>', '2019-06-10 14:02:21', '2019-06-10 14:02:25', 0, 0, '2019-06-10 14:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `chatter_user_discussion`
--

CREATE TABLE `chatter_user_discussion` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `discussion_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_user_discussion`
--

INSERT INTO `chatter_user_discussion` (`user_id`, `discussion_id`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` mediumtext NOT NULL,
  `Country` varchar(40) DEFAULT NULL,
  `Year` int(4) DEFAULT NULL,
  `Denomination` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `user_id`, `image`, `Country`, `Year`, `Denomination`) VALUES
(43, 4, 'g873.jpg', 'Lithuania', 2015, '1 euro cent'),
(45, 1, 'g873.jpg', 'Lithuania', 2015, '1 euro cent'),
(46, 1, 'g1377.jpg', 'Germany', 2002, '5 euro cent');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_05_23_124039_create_activity_log_table', 2),
(6, '2016_07_29_171118_create_chatter_categories_table', 3),
(7, '2016_07_29_171118_create_chatter_discussion_table', 3),
(8, '2016_07_29_171118_create_chatter_post_table', 3),
(9, '2016_07_29_171128_create_foreign_keys', 3),
(10, '2016_08_02_183143_add_slug_field_for_discussions', 3),
(11, '2016_08_03_121747_add_color_row_to_chatter_discussions', 3),
(12, '2017_01_16_121747_add_markdown_and_lock_to_chatter_posts', 3),
(13, '2017_01_16_121747_create_chatter_user_discussion_pivot_table', 3),
(14, '2017_08_07_165345_add_chatter_soft_deletes', 3),
(15, '2017_10_10_221227_add_chatter_last_reply_at_discussion', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('asd@gmail.com', '$2y$10$DEdO9rwV4y3IDfkkg8arDulMqGVpyoySja26NBaqkBZXfHnx5dtuq', '2019-05-22 09:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `isAdmin`) VALUES
(1, 'jonas', 'ghfmtgf@hgj.lt', NULL, '$2y$10$5Fi09lBwaQDxo8txxzf.JuUNx.VWEdztTqIAabY5vjnoGJ4drrpHy', NULL, '2019-05-20 08:56:37', '2019-05-20 08:56:37', 1),
(4, 'asdd', 'asdd@gmail.com', NULL, '$2y$10$HmdM5n1z6MVUHqjtZ7Xgge4RxDLvNVTAzQ24AhOMh9As.Bq7wGmTG', NULL, '2019-05-23 10:09:58', '2019-05-23 10:59:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `causer_foreign_id` (`causer_id`);

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatter_categories`
--
ALTER TABLE `chatter_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chatter_discussion_slug_unique` (`slug`),
  ADD KEY `chatter_discussion_chatter_category_id_foreign` (`chatter_category_id`),
  ADD KEY `chatter_discussion_user_id_foreign` (`user_id`);

--
-- Indexes for table `chatter_post`
--
ALTER TABLE `chatter_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chatter_post_chatter_discussion_id_foreign` (`chatter_discussion_id`),
  ADD KEY `chatter_post_user_id_foreign` (`user_id`);

--
-- Indexes for table `chatter_user_discussion`
--
ALTER TABLE `chatter_user_discussion`
  ADD PRIMARY KEY (`user_id`,`discussion_id`),
  ADD KEY `chatter_user_discussion_user_id_index` (`user_id`),
  ADD KEY `chatter_user_discussion_discussion_id_index` (`discussion_id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_foreign_user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chatter_categories`
--
ALTER TABLE `chatter_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chatter_post`
--
ALTER TABLE `chatter_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD CONSTRAINT `causer_foreign_id` FOREIGN KEY (`causer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  ADD CONSTRAINT `chatter_discussion_chatter_category_id_foreign` FOREIGN KEY (`chatter_category_id`) REFERENCES `chatter_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chatter_discussion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chatter_post`
--
ALTER TABLE `chatter_post`
  ADD CONSTRAINT `chatter_post_chatter_discussion_id_foreign` FOREIGN KEY (`chatter_discussion_id`) REFERENCES `chatter_discussion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chatter_post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chatter_user_discussion`
--
ALTER TABLE `chatter_user_discussion`
  ADD CONSTRAINT `chatter_user_discussion_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `chatter_discussion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chatter_user_discussion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventory_foreign_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
