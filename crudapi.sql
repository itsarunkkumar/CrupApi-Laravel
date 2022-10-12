-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2022 at 10:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudapi`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('gaurav@example.com', 'kkRfZlt95O7NhqRhpk3NphMwJwPSGa2iLQOYE43ssUPkRk464pNotnJvNLVQ', '2022-09-29 06:02:50'),
('gaurav@example.com', 'nmtrD2VirX5pRY9rn4Dmasx4EBNGU677upStWGhM8DKvqO22teku6GgaJuG2', '2022-09-29 06:05:02'),
('gaurav@example.com', '0GyQaOYK7RsnCGKrKHJ3STLpk9CNyIk02hdPD8Kru1FDFq14qqH1ezp1nJRg', '2022-09-29 06:05:48'),
('arunyadav79499@gmail.com', 'M9PM4qnvlibXeryTIiJ8EE83HdM1cAbo5fWK18DJnjFN5wT2IPUD0tvsjvaM', '2022-09-29 06:38:19'),
('arunyadav79499@gmail.com', 'Ki5eulnr8DdzA9XarbsAawcle9F5geKXaYQ3bFdtqv4GAxtkkEqybhdzhh8R', '2022-09-29 06:39:41'),
('arunyadav79499@gmail.com', '3C1lxp2WqUjwSoZstZSL14dtD2wMsidPY9ZRjxt6z1uRzxKjo8VISI2YrMcx', '2022-09-29 06:44:13'),
('arunyadav79499@gmail.com', 'dSxjcVa5GVvaXN5PDV0F311bWIxPPNLbdSwmCBUXstZkiOUv3yv7QsXs05c4', '2022-09-29 06:46:10'),
('arunyadav79499@gmail.com', 'rbjTmZJGnWsmvT1fhNJNKG4en18t0DYTqptv0P7XDtAJQlQDLhH2laZF9VRD', '2022-09-29 06:48:57'),
('dhakar012345@gmail.com', '03B5QNlDxo43iwCm9v8Du8B9Y0KVwNp2lqvIN5HybBs53pDTWmYG73CobcMS', '2022-09-29 06:53:01'),
('dhakar012345@gmail.com', 'GG1dE2C3HCpkajWqeyIxTHk9hsSyQ5SMwAo2NRnDiw41vArnGJvtmXbUQeQA', '2022-09-29 06:59:22'),
('dhakar012345@gmail.com', 'VUglixP8iSi9n9dHEsibj1rOmSMmMSxsByMFnGxKuPL9CfVtrZzeZaA7W92B', '2022-09-29 07:01:10'),
('dhakar012345@gmail.com', 'kxM1jc5wJ9fcNZN7YqI9wI4yGH0MIuxQy6U0M23B9YG1jMmW92CtcFB6eq59', '2022-09-29 07:07:36'),
('dhakar012345@gmail.com', 'Ellw70zPsgDt8lfNFE3IVeQsztVBSnJXCYuO2FdzTXTiXxxnUCigJlGFBNAf', '2022-09-29 07:08:22'),
('dhakar012345@gmail.com', 'yAll7AWtBsrmG86TZORSvjDQsIySko75yjuDP1akZW09VfotRvEnUawBlXtJ', '2022-09-29 07:08:54'),
('dhakar012345@gmail.com', '4bztH3kFqZ6f2e0s11ZHue3yADOo6VLpuNwEnDPwOppUOfhgruWbBSzFAZ7l', '2022-09-29 07:44:37'),
('dhakar012345@gmail.com', 'G1Y51ouYCOy9rWCiW4rxMOZsX8nlVMIjLt0iVKKORLHQgqOgJnnNquFMrav2', '2022-09-29 07:44:43'),
('dhakar012345@gmail.com', 'oklIk9ERlTBoKzNosDR59eYn9icQU4EHlULqK55GSqYq7f1Fn4ggmOtOmaKC', '2022-09-29 07:44:57'),
('dhakar012345@gmail.com', 'q1Zmjyyg58ArfrsRyKCct50x64zfKnnsw5MLLWrUKE0WKpn6HX8z7ZNmeTrD', '2022-09-29 07:45:19'),
('dhakar012345@gmail.com', '7icrDfPgiB4ozrniOUx6S1TpGqPdvUy09uXNUeigBd28OsXA3g8w5GNmCv5N', '2022-09-29 07:52:38'),
('dhakar012345@gmail.com', 'Yth9hFAWtmwoPb8babeA53QNf8NnLBFKz99tHlaHt6AkHY0di9vnAJj1UAiM', '2022-09-29 07:53:22');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(9, 'App\\Models\\User', 4, 'arunyadav79499@gmail.com', 'd6c966d619257ed4915b781d140cff0cd60e50a824ace9e7362f0ed1a0ea4aac', '[\"*\"]', NULL, NULL, '2022-09-29 06:36:27', '2022-09-29 06:36:27'),
(10, 'App\\Models\\User', 5, 'dhakar012345@gmail.com', 'bd2fe12e3ede1bcd43c03f82effdb1f36b9a3c027529ce6d8a697c057c312c50', '[\"*\"]', NULL, NULL, '2022-09-29 06:50:20', '2022-09-29 06:50:20'),
(11, 'App\\Models\\User', 6, 'anup@gmail.com', '627a7c806e5fc2bcb18f7aab2af871920ebdc4c28d9a1387e3abcfb3a3bb3cb2', '[\"*\"]', NULL, NULL, '2022-09-29 10:15:31', '2022-09-29 10:15:31');

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
  `tc` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `tc`, `created_at`, `updated_at`) VALUES
(3, 'Gaurav', 'gaurav@example.com', NULL, '$2y$10$bWcVyeE.N06XPYrIOFxFd.jQOeIi5FDjkXRYutll7JFh51rSdcbKy', NULL, 1, '2022-09-29 03:55:52', '2022-09-29 05:24:55'),
(4, 'Arun', 'arunyadav79499@gmail.com', NULL, '$2y$10$XWZD4e7GDGxgMicoEJ7siOdpaxHhh.y0nWK.CiEKv0RbFIUf4zmQa', NULL, 1, '2022-09-29 06:36:27', '2022-09-29 06:36:27'),
(5, 'Sourab Dhakar', 'dhakar012345@gmail.com', NULL, '$2y$10$zj/RYJGmEboEmpRR/JFoPO83xZJsFlPI8yYH5hyHD1fl98C5w48jK', NULL, 1, '2022-09-29 06:50:20', '2022-09-29 06:50:20'),
(6, 'Anup Kumar', 'anup@gmail.com', NULL, '$2y$10$FbfUc2HSvtunj4c6A1VDUu5gIhlldUGYduL1hRd/L.yXL.x90vkDO', NULL, 1, '2022-09-29 10:15:31', '2022-09-29 10:15:31');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

