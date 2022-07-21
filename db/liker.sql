-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2022 at 11:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liker`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `like` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `like`, `created_at`, `updated_at`) VALUES
(12, 1, 4, 1, '2022-04-29 05:44:46', '2022-04-29 05:44:46'),
(13, 1, 3, 1, '2022-04-29 05:44:48', '2022-04-29 05:44:48'),
(30, 1, 5, 1, '2022-04-29 06:22:32', '2022-04-29 06:22:38'),
(31, 1, 6, 1, '2022-04-29 06:23:58', '2022-04-29 06:23:58'),
(36, 2, 8, 1, '2022-04-29 10:36:43', '2022-04-29 10:36:43'),
(37, 5, 8, 1, '2022-04-29 10:45:02', '2022-04-30 02:16:34'),
(39, 5, 6, 1, '2022-04-29 10:45:08', '2022-04-29 10:45:08'),
(40, 5, 5, 1, '2022-04-29 10:45:12', '2022-04-29 10:45:12'),
(41, 2, 9, 1, '2022-04-30 01:12:32', '2022-04-30 01:12:32'),
(45, 5, 7, 1, '2022-04-30 02:30:54', '2022-04-30 02:30:54'),
(46, 5, 10, 1, '2022-04-30 02:31:03', '2022-04-30 02:31:03'),
(48, 6, 10, 1, '2022-04-30 02:33:42', '2022-04-30 02:33:42'),
(53, 6, 5, 1, '2022-04-30 04:02:58', '2022-04-30 04:02:58');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_04_28_061708_create_likes_table', 2),
(9, '2022_04_28_061627_create_posts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgPath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `imgName`, `imgPath`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'My name is shubham', NULL, '202204291116imagemy.jpg', 1, '2022-04-29 05:46:18', '2022-04-29 05:46:18'),
(6, 'admin post', NULL, '2022042911533d_840-1280x800.jpg', 1, '2022-04-29 06:23:53', '2022-04-29 06:23:53'),
(7, 'Char bolta vodka, kaam Bhagwat Maan ka roaz ka', NULL, '202204291601backgroundDefault.jpg', 2, '2022-04-29 10:31:17', '2022-04-29 10:31:17'),
(8, 'Are ye dawai se kachu nahi hoye hai, voto man ki shanti hai to kaairo ,dekho hum kachu burai se nahi keh rahe hai.. hamara kaya ja raha h... ee kya likha h co co nut???\r\n\r\nMahadev Darshan Dijye\r\nAngle Mittle\r\nShambhu\r\n\r\nare kahe ka number', NULL, '2022042916062.jpg', 2, '2022-04-29 10:36:06', '2022-04-29 10:36:06'),
(10, 'post by dummy, for Twice.', NULL, '202204300653communityIcon_wdp00gpw1by71.jpg', 5, '2022-04-30 01:23:44', '2022-04-30 01:25:14');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shubham', 'shubhamsahu702@gmail.com', NULL, '$2y$10$hUsX8bQZxPgXexYUfy7tdOiOPlrsEEjt0I8beI.z1VtJkDsfyobzi', NULL, '2022-04-29 01:46:06', '2022-04-29 01:46:06'),
(2, 'admin', 'admin@host.com', NULL, '$2y$10$NErWKNaOBjCeLBnk7zGpDutB.BVTGerCNJFS2gWLtZROuIIO2FmZm', NULL, '2022-04-29 01:46:45', '2022-04-29 01:46:45'),
(3, 'demo', 'demo@email.com', NULL, '$2y$10$d6FFExrepw0q8.TXrGD/T.shk8k11pmnMIl8sQ2sygUupQE8Z4Gge', NULL, '2022-04-29 01:52:57', '2022-04-29 01:52:57'),
(4, 'new user', 'new@example.com', NULL, '$2y$10$pykMNJ5EL6slzRu7XmJpjOf3Q5e.hDAhwyioE.3b1EHTmHOhoCsiW', NULL, '2022-04-29 03:22:58', '2022-04-29 03:22:58'),
(5, 'dummy', 'dummy@gmail.com', NULL, '$2y$10$xOVi1V0Q9Gf5.SdQIVhUzu4agdYPvAwTUPVVmLk7IiVXXtlRc3cMi', NULL, '2022-04-29 10:43:18', '2022-04-29 10:43:18'),
(6, 'user', 'user@email.com', NULL, '$2y$10$oYaaANn7mFY1raQCaVRFCeEplqS1YMxMPAzJ89mORgLQIueY22k76', NULL, '2022-04-30 02:33:26', '2022-04-30 02:33:26');

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
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
