-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 04:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofoliosimple-laravel-maurah`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_13_165832_create_sections_table', 2),
(6, '2024_03_13_175040_create_partners_table', 3),
(7, '2024_03_13_180244_create_settings_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title`, `thumbnail`, `content`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Bandit', 'LlknrafLpcanIsXYMPyVF1joGa0PWv-metaY2F0Ni5qcGc=-.jpg', '<p>Saya adalah kucing yang memiliki selera tinggi, dan anggukan saya yang anggun adalah tanda kualitas yang tak tertandingi. Sambutlah, dengan segelas sauvignon blanc dan kehadiran saya yang memesona!\" 🍷😺</p>', 'https://en.wikipedia.org/wiki/Cat', '2024-03-13 15:06:16', '2024-03-13 15:47:24'),
(2, 'Spotify', 'aMgyX5di5TB89vCBenhVWwRRPvyWmY-meta4bCNIGt0aCBfIHRhZWh5dW5nIF8gdiDwkIyGLmpwZw==-.jpg', '<p>Taehyung</p>', 'https://open.spotify.com/intl-id/artist/3Nrfpe0tUJi4K4DXYWgMUX', '2024-03-13 15:45:21', '2024-03-13 15:45:21'),
(3, 'Programming', 'uDjv8vQ5IKiqlM1Qnc7Ex6l6cCrj61-metaZG93bmxvYWQgKDQpLmpwZw==-.jpg', '<p>Study</p>', 'https://g.co/kgs/GDvTXZM', '2024-03-13 15:49:48', '2024-03-13 15:49:48'),
(4, 'Skincare', '8Z2e0IEynHF9HeyGwBlOlM1PKWJ9zD-metaZG93bmxvYWQgKDcpXzExem9uLmpwZw==-.jpg', '<p>skincare &amp; make up</p>', 'https://www.alodokter.com/skincare-kenali-jenis-dan-fungsinya', '2024-03-13 15:51:42', '2024-03-13 15:51:42'),
(5, 'K-Drama', 'ro8cnVoH3B4bn7Ggc2ucblCAfUgJ1E-metaZG93bmxvYWQgKDYpXzExem9uLmpwZw==-.jpg', '<p>Crash Landing On You</p>', 'https://www.netflix.com/title/81159258', '2024-03-13 15:53:02', '2024-03-13 15:53:02'),
(6, 'Shopping', 'FoW5EykVKL7Egw4CqX9wE2nHU7gL09-metaQSBHdWlkZSB0byBNeWVvbmdkb25nIERpc3RyaWN0IGluIFNlb3VsLCBTb3V0aCBLb3JlYSAtIExvc3QgV2l0aCBKZW5fMTF6b24uanBn-.jpg', '<p>Checkout Shopee</p>', 'https://shopee.co.id/', '2024-03-13 15:54:13', '2024-03-13 15:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `post_as` enum('JUMBOTRON','ABOUT') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `thumbnail`, `content`, `post_as`, `created_at`, `updated_at`) VALUES
(1, 'Maurah Tria ', 'bBrx6FYoSYrl56UAjbd6dzyhgP3Uz4-metaYWJvdXQuanBn-.jpg', '<p>Web Developer</p>', 'JUMBOTRON', '2024-03-13 10:49:33', '2024-03-13 15:42:20'),
(2, 'About Me', '8o9XMEtd8zHiRxPifezoiidXZ14TSD-metaV2hhdHNBcHAgSW1hZ2UgMjAyNC0wMy0wMiBhdCAxNC41My4wNSAoMikuanBn-.jpg', '<ul><li><strong>Birthday:</strong> 7 November 2003</li><li><strong>Phone:</strong> +6282172037116</li><li><strong>Address:&nbsp;</strong>Jalan Sutan Soripada Mulia , Padangsidimpuan Utara , Sumatera Utara</li><li><strong>Age:</strong> 20</li><li><strong>Hobby:</strong> Coding , Watching K-Drama and Music</li><li><strong>Favorite color:</strong> Brown , Pink , Green</li><li><strong>Elementary School : </strong>SDN 211007 Padangsidimpuan</li><li><strong>Junior High School : </strong>MTsN 1 Model Padangsidimpuan</li><li><strong>Senior High School : </strong>MAN 1 Padangsidimpuan</li><li><strong>University : </strong>Padang State University</li><li><strong>Study Program : </strong>Informatics Engineering</li></ul>', 'ABOUT', '2024-03-13 15:05:04', '2024-03-13 16:04:27'),
(3, 'cat', 'ygyuT6RvCma0MX4bu9cA0E6H18MLcj-metaY2F0NS5qcGc=-.jpg', '<p>cat</p>', 'JUMBOTRON', '2024-03-13 15:05:47', '2024-03-13 15:05:47'),
(4, 'maurah ', 'aizuxLaprhSG7yIU0kOW43Mx3zDIUj-metaY2F0MS5qcGc=-.jpg', '<p><span style=\"text-decoration: underline;\">pemrograman bergerak</span></p>', 'JUMBOTRON', '2024-03-13 15:35:53', '2024-03-13 15:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `label`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, '_site_name', 'Judul Situs', 'Website Portfolio ', 'text', '2024-03-13 11:05:09', '2024-03-13 16:05:18'),
(2, '_location', 'Alamat Kantor', 'Padang, Parupuk Tabing, Indonesia', 'text', '2024-03-13 11:05:09', '2024-03-13 11:05:09'),
(3, '_instagram', 'Instagram', 'https://www.instagram.com/maurahtria/', 'text', '2024-03-13 11:05:09', '2024-03-13 11:05:09'),
(4, '_facebook', 'Facebook', 'https://www.facebook.com/taehyung.jungkook.taeyong.wonu/', 'text', '2024-03-13 11:05:09', '2024-03-13 11:05:09'),
(5, '_github', 'Github', 'https://github.com/maurahtria0711/', 'text', '2024-03-13 11:05:09', '2024-03-13 11:05:09'),
(6, '_youtube', 'Youtube', 'https://www.youtube.com/channel/UCNGgWcn8YQUiM7Us-T1bqmg', 'text', '2024-03-13 11:05:09', '2024-03-13 11:05:09'),
(7, '_site_description', 'Site Description', 'Website Portfolio Laravel Maurah', 'longtext', '2024-03-13 11:05:09', '2024-03-13 11:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maurah', 'trirahmayami0711@gmail.com', NULL, '$2y$12$DXmRfA5E0qfSg/N8q5z2U.4ga46eS6vyPNxboA2x1jsg4XAa30g16', NULL, '2024-03-13 09:57:51', '2024-03-13 09:57:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
