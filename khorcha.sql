-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 07:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khorcha`
--

-- --------------------------------------------------------

--
-- Table structure for table `basics`
--

CREATE TABLE `basics` (
  `basic_id` bigint(20) UNSIGNED NOT NULL,
  `basic_company` varchar(100) DEFAULT NULL,
  `basic_title` varchar(100) DEFAULT NULL,
  `basic_logo` varchar(50) DEFAULT NULL,
  `basic_favicon` varchar(50) DEFAULT NULL,
  `basic_flogo` varchar(50) DEFAULT NULL,
  `basic_creator` int(11) DEFAULT NULL,
  `basic_editor` int(11) DEFAULT NULL,
  `basic_slug` varchar(30) DEFAULT NULL,
  `basic_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basics`
--

INSERT INTO `basics` (`basic_id`, `basic_company`, `basic_title`, `basic_logo`, `basic_favicon`, `basic_flogo`, `basic_creator`, `basic_editor`, `basic_slug`, `basic_status`, `created_at`, `updated_at`) VALUES
(1, 'Creative System Limited', 'Software Company', NULL, NULL, NULL, 1, NULL, 'B2065530bb344295', 1, '2023-11-14 05:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `ci_id` bigint(20) UNSIGNED NOT NULL,
  `ci_phone1` varchar(20) DEFAULT NULL,
  `ci_phone2` varchar(20) DEFAULT NULL,
  `ci_phone3` varchar(20) DEFAULT NULL,
  `ci_phone4` varchar(20) DEFAULT NULL,
  `ci_email1` varchar(40) DEFAULT NULL,
  `ci_email2` varchar(40) DEFAULT NULL,
  `ci_email3` varchar(40) DEFAULT NULL,
  `ci_email4` varchar(40) DEFAULT NULL,
  `ci_address1` text DEFAULT NULL,
  `ci_address2` text DEFAULT NULL,
  `ci_address3` text DEFAULT NULL,
  `ci_address4` text DEFAULT NULL,
  `ci_creator` int(11) DEFAULT NULL,
  `ci_editor` int(11) DEFAULT NULL,
  `ci_slug` varchar(30) DEFAULT NULL,
  `ci_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`ci_id`, `ci_phone1`, `ci_phone2`, `ci_phone3`, `ci_phone4`, `ci_email1`, `ci_email2`, `ci_email3`, `ci_email4`, `ci_address1`, `ci_address2`, `ci_address3`, `ci_address4`, `ci_creator`, `ci_editor`, `ci_slug`, `ci_status`, `created_at`, `updated_at`) VALUES
(1, '01710726035', NULL, NULL, NULL, 'info@domain.com', NULL, NULL, NULL, 'Dhanmondi, Dhaka.', NULL, NULL, NULL, 1, NULL, 'CI2065530bb348c1e', 1, '2023-11-14 05:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` bigint(20) UNSIGNED NOT NULL,
  `expense_title` varchar(100) DEFAULT NULL,
  `expcate_id` int(11) DEFAULT NULL,
  `expense_amount` varchar(10) DEFAULT NULL,
  `expense_date` varchar(20) DEFAULT NULL,
  `expense_creator` int(11) DEFAULT NULL,
  `expense_editor` int(11) DEFAULT NULL,
  `expense_slug` varchar(30) DEFAULT NULL,
  `expense_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `expense_title`, `expcate_id`, `expense_amount`, `expense_date`, `expense_creator`, `expense_editor`, `expense_slug`, `expense_status`, `created_at`, `updated_at`) VALUES
(1, 'House Rent for October Month', 1, '10000', '2023-10-11', 1, NULL, 'E2065545ffac2141', 1, '2023-11-15 06:06:50', NULL),
(2, 'Family Bazar', 2, '10000', '2023-10-10', 1, NULL, 'E206554601a9c84a', 1, '2023-11-15 06:07:22', NULL),
(3, 'Monthly Medicine', 4, '5000', '2023-10-22', 1, NULL, 'E206554603464fa4', 1, '2023-11-15 06:07:48', NULL),
(4, 'Restaurant Bill', 2, '3000', '2023-10-17', 1, NULL, 'E20655460533310c', 1, '2023-11-15 06:08:19', NULL),
(5, 'House Rent', 1, '10000', '2023-12-12', 1, NULL, 'E206555a961a98bc', 1, '2023-11-16 05:32:17', NULL),
(6, 'House Rent', 1, '10000', '2023-11-12', 1, NULL, 'E206555b39b61601', 1, '2023-11-16 06:15:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `expcate_id` bigint(20) UNSIGNED NOT NULL,
  `expcate_name` varchar(50) NOT NULL,
  `expcate_remarks` varchar(200) DEFAULT NULL,
  `expcate_creator` int(11) DEFAULT NULL,
  `expcate_editor` int(11) DEFAULT NULL,
  `expcate_slug` varchar(30) DEFAULT NULL,
  `expcate_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`expcate_id`, `expcate_name`, `expcate_remarks`, `expcate_creator`, `expcate_editor`, `expcate_slug`, `expcate_status`, `created_at`, `updated_at`) VALUES
(1, 'House Rent', NULL, 1, NULL, 'house-rent', 1, '2023-11-15 05:38:23', NULL),
(2, 'Food', 'All food item me and family', 1, NULL, 'food', 1, '2023-11-15 05:38:44', NULL),
(3, 'Shopping', NULL, 1, NULL, 'shopping', 1, '2023-11-15 05:38:55', NULL),
(4, 'Medicine', NULL, 1, NULL, 'medicine', 1, '2023-11-15 05:39:03', NULL),
(5, 'Convency', NULL, 1, NULL, 'convency', 1, '2023-11-15 05:39:16', NULL),
(6, 'Pocket Money', NULL, 1, NULL, 'pocket-money', 1, '2023-11-15 05:39:24', NULL);

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
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `income_id` bigint(20) UNSIGNED NOT NULL,
  `income_title` varchar(100) DEFAULT NULL,
  `incate_id` int(11) DEFAULT NULL,
  `income_amount` varchar(10) DEFAULT NULL,
  `income_date` varchar(20) DEFAULT NULL,
  `income_creator` int(11) DEFAULT NULL,
  `income_editor` int(11) DEFAULT NULL,
  `income_slug` varchar(30) DEFAULT NULL,
  `income_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`income_id`, `income_title`, `incate_id`, `income_amount`, `income_date`, `income_creator`, `income_editor`, `income_slug`, `income_status`, `created_at`, `updated_at`) VALUES
(1, 'October Salary', 1, '20000', '2023-10-10', 1, NULL, 'I206554544f2092c', 1, '2023-10-10 05:17:03', NULL),
(2, 'Website Development for UK Client', 2, '20000', '2023-08-30', 1, NULL, 'I206554547a1919f', 1, '2023-08-30 05:17:46', NULL),
(3, 'Salary November', 1, '30000', '2023-11-11', 1, NULL, 'I20655454a42514c', 1, '2023-11-15 05:18:28', NULL),
(4, 'Support XYZ Company', 3, '10000', '2023-11-14', 1, NULL, 'I20655454d2da1ad', 1, '2023-11-15 05:19:14', NULL),
(5, 'Salary December', 1, '30000', '2023-12-11', 1, NULL, 'I206555a9432f6a5', 1, '2023-11-16 05:31:47', NULL),
(6, 'Business Profit', 14, '45000', '2023-11-20', 1, NULL, 'I20655c4858d6bff', 1, '2023-11-21 06:04:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

CREATE TABLE `income_categories` (
  `incate_id` bigint(20) UNSIGNED NOT NULL,
  `incate_name` varchar(50) NOT NULL,
  `incate_remarks` varchar(200) DEFAULT NULL,
  `incate_creator` int(11) DEFAULT NULL,
  `incate_editor` int(11) DEFAULT NULL,
  `incate_slug` varchar(30) DEFAULT NULL,
  `incate_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_categories`
--

INSERT INTO `income_categories` (`incate_id`, `incate_name`, `incate_remarks`, `incate_creator`, `incate_editor`, `incate_slug`, `incate_status`, `created_at`, `updated_at`) VALUES
(1, 'Salary', 'Job purpose monthly salary', 1, NULL, 'salary', 1, '2023-11-15 05:15:43', NULL),
(2, 'Freelancing', NULL, 1, NULL, 'freelancing', 1, '2023-11-15 05:15:50', NULL),
(3, 'Consultancy', NULL, 1, NULL, 'consultancy', 1, '2023-11-15 05:23:12', NULL),
(14, 'Business', NULL, 1, NULL, 'business', 1, '2023-11-21 06:03:37', NULL);

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
(5, '2023_10_15_053957_create_income_categories_table', 1),
(6, '2023_10_15_055909_create_expense_categories_table', 1),
(7, '2023_10_23_115515_create_incomes_table', 1),
(8, '2023_10_23_115852_create_expenses_table', 1),
(9, '2023_10_31_120737_create_roles_table', 1),
(10, '2023_11_12_111048_create_basics_table', 1),
(11, '2023_11_12_111454_create_social_media_table', 1),
(12, '2023_11_12_112120_create_contact_information_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `role_slug` varchar(30) DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `role_slug`, `role_status`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'R2065530bb34b517', 1, '2023-11-14 05:54:59', NULL),
(2, 'Admin', 'R2065530bb34cf52', 1, '2023-11-14 05:54:59', NULL),
(3, 'Author', 'R2065530bb34eebd', 1, '2023-11-14 05:54:59', NULL),
(4, 'Editor', 'R2065530bb350c30', 1, '2023-11-14 05:54:59', NULL),
(5, 'Subscriber', 'R2065530bb35299c', 1, '2023-11-14 05:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `sm_id` bigint(20) UNSIGNED NOT NULL,
  `sm_facebook` varchar(100) DEFAULT NULL,
  `sm_twitter` varchar(100) DEFAULT NULL,
  `sm_linkedin` varchar(100) DEFAULT NULL,
  `sm_youtube` varchar(100) DEFAULT NULL,
  `sm_instagram` varchar(100) DEFAULT NULL,
  `sm_pinterest` varchar(100) DEFAULT NULL,
  `sm_behance` varchar(100) DEFAULT NULL,
  `sm_whatsapp` varchar(100) DEFAULT NULL,
  `sm_telegram` varchar(100) DEFAULT NULL,
  `sm_github` varchar(100) DEFAULT NULL,
  `sm_creator` int(11) DEFAULT NULL,
  `sm_editor` int(11) DEFAULT NULL,
  `sm_slug` varchar(30) DEFAULT NULL,
  `sm_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`sm_id`, `sm_facebook`, `sm_twitter`, `sm_linkedin`, `sm_youtube`, `sm_instagram`, `sm_pinterest`, `sm_behance`, `sm_whatsapp`, `sm_telegram`, `sm_github`, `sm_creator`, `sm_editor`, `sm_slug`, `sm_status`, `created_at`, `updated_at`) VALUES
(1, 'www.facebook.com', '#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'SM2065530bb346744', 1, '2023-11-14 05:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 5,
  `photo` varchar(50) DEFAULT NULL,
  `slug` varchar(30) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `username`, `role`, `photo`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Saidul Islam Uzzal', '01710726035', 'uzzalbd.creative@gmail.com', NULL, '$2y$10$d0KRqCvkqfbGAi6zfYc2ce1kNt7djjSD.PlSrt.39I5AzWBHanQDm', NULL, 'uzzalbd', 1, NULL, 'U2065530bb34110a', 1, '2023-11-14 05:54:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basics`
--
ALTER TABLE `basics`
  ADD PRIMARY KEY (`basic_id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`ci_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`expcate_id`),
  ADD UNIQUE KEY `expense_categories_expcate_name_unique` (`expcate_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `income_categories`
--
ALTER TABLE `income_categories`
  ADD PRIMARY KEY (`incate_id`),
  ADD UNIQUE KEY `income_categories_incate_name_unique` (`incate_name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `roles_role_name_unique` (`role_name`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basics`
--
ALTER TABLE `basics`
  MODIFY `basic_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `ci_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `expcate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `income_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `incate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `sm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
