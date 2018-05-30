-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2018 at 12:43 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notify_demo_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dangvanduc', 'dangvanduc0@gmail.com', '$2y$10$anSlEGkJ/9OdGqEEG8LWQ.zH7txri1pCCVQRuZ5uM8T.aiP45x8Ou', 'i6StydONgz4L6PsqVGgQ8DIBaJWJZ8IlGVscN2mVI2kMYyvr3W1qwRc5q2Qx', '2018-05-29 21:40:29', '2018-05-29 21:40:29'),
(2, 'dangvanadmicro', 'ducdangvan@admicro.vn', '$2y$10$xreP3BxPAFfbqzKqqx6VVuxhN3eqmyyA1/Yc1zptauYFO9mDE7516', 'vy76wwDAhGYY1OjCwgyX64UkwS1Qi6j9peErsJ5LkxLwyz3McjG7Cr1oxwaz', '2018-05-30 00:39:56', '2018-05-30 00:39:56'),
(3, 'dangvanduc90', 'ducdangvan@vccorp.vn', '$2y$10$LZP58BDvj9TEcWfP7.2fIeV34UHySBPIgoDh7erynyRIp.0Mq.sHu', NULL, '2018-05-30 02:52:10', '2018-05-30 02:52:10'),
(4, 'dangvan', 'nguyengiap283@gmail.com', '$2y$10$01ikTOWsxEKeQ0T1miLnMeIEdd.ihsGP2tL8j3A8oUYoXV6rb245C', 'bI2Eh3fpu12SxTTyzCpNNXZrYwSPEJGi59l10DHN4ZM6m5ne3avRf4lEZPHW', '2018-05-30 02:53:05', '2018-05-30 02:53:05'),
(5, 'dang\\', 'nguyenhuugiap283@gmail.com', '$2y$10$UYzTipQzLisu2Bfh0zwEIOJl2Nh0vgeJdt0ZIM0qZSu2faSWPk846', 'gNAv78ka40jbZAaRVeqTWVLd1BpQM0QSzR4fs0FBwGUm50rD77nGTHLPof1K', '2018-05-30 02:56:58', '2018-05-30 02:56:58'),
(6, 'ducdang', 'ducdang@gmail.com', '$2y$10$5K3YceV6wj8kEcEJlS8IQOHaFbjfGXG8/9y1XaKc9AtaOdXGVcQY6', NULL, '2018-05-30 02:58:40', '2018-05-30 02:58:40');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
