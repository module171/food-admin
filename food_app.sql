-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 11:22 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codecanyon_food_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_content`, `image`, `logo`, `footer_logo`, `favicon`, `fb`, `twitter`, `insta`, `android`, `ios`, `copyright`, `mobile`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'about-5fa8f1af82a9a.jpg', 'logo-5fa8f23623d32.png', 'footer-5fa8f2437276f.png', 'favicon-5fa8f27866397.png', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://play.google.com/store', 'https://www.apple.com/ios/app-store/', 'Copyright Food App © 2020.All Rights Reserved.', '+91 7016428845', 'infotechgravity@gmail.com', '517-518, Amby Valley Arcade, VIP Cir, nr. Essar Petroleum, Uttran, Surat, Gujarat 394105', '2020-11-09 13:59:15', '2020-11-09 13:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `addons_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes . 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(6, '2020_06_05_070854_create_categories_table', 2),
(7, '2020_06_05_103122_create_item_table', 3),
(9, '2020_06_05_110205_create_item_images_table', 4),
(10, '2020_06_05_125414_create_ingredients_table', 5),
(14, '2020_06_06_055110_create_cart_table', 6),
(16, '2020_06_07_051607_create_order_table', 7),
(18, '2020_06_07_063234_create_order_details_table', 8),
(19, '2020_06_16_094849_create_ratting_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(2, 'App\\User', 18),
(2, 'App\\User', 19),
(2, 'App\\User', 20),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 23),
(2, 'App\\User', 24),
(2, 'App\\User', 25),
(2, 'App\\User', 26),
(2, 'App\\User', 27),
(2, 'App\\User', 28),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(2, 'App\\User', 31),
(2, 'App\\User', 32),
(2, 'App\\User', 33),
(2, 'App\\User', 34),
(2, 'App\\User', 35),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 44),
(2, 'App\\User', 45),
(2, 'App\\User', 46),
(2, 'App\\User', 47),
(2, 'App\\User', 48),
(2, 'App\\User', 49),
(2, 'App\\User', 50),
(2, 'App\\User', 51),
(2, 'App\\User', 52),
(2, 'App\\User', 53),
(2, 'App\\User', 54),
(2, 'App\\User', 56),
(2, 'App\\User', 57),
(2, 'App\\User', 58),
(2, 'App\\User', 59),
(2, 'App\\User', 60),
(2, 'App\\User', 61),
(2, 'App\\User', 62),
(2, 'App\\User', 63),
(2, 'App\\User', 64),
(2, 'App\\User', 65),
(2, 'App\\User', 66),
(2, 'App\\User', 68),
(2, 'App\\User', 69),
(2, 'App\\User', 70),
(2, 'App\\User', 71),
(2, 'App\\User', 72),
(2, 'App\\User', 73),
(2, 'App\\User', 74),
(2, 'App\\User', 75),
(2, 'App\\User', 79),
(2, 'App\\User', 80),
(2, 'App\\User', 81),
(2, 'App\\User', 82),
(2, 'App\\User', 83),
(2, 'App\\User', 84),
(2, 'App\\User', 85),
(2, 'App\\User', 86),
(2, 'App\\User', 87),
(2, 'App\\User', 88),
(2, 'App\\User', 89),
(2, 'App\\User', 90),
(2, 'App\\User', 91),
(2, 'App\\User', 92),
(2, 'App\\User', 93),
(2, 'App\\User', 94),
(2, 'App\\User', 95),
(2, 'App\\User', 96),
(2, 'App\\User', 97),
(2, 'App\\User', 98),
(2, 'App\\User', 99),
(2, 'App\\User', 100),
(2, 'App\\User', 101),
(2, 'App\\User', 102),
(2, 'App\\User', 103),
(2, 'App\\User', 104),
(2, 'App\\User', 105),
(2, 'App\\User', 106),
(2, 'App\\User', 107),
(2, 'App\\User', 108),
(2, 'App\\User', 109),
(2, 'App\\User', 110),
(2, 'App\\User', 111),
(2, 'App\\User', 112),
(2, 'App\\User', 113),
(2, 'App\\User', 114),
(2, 'App\\User', 115),
(2, 'App\\User', 116),
(2, 'App\\User', 117),
(2, 'App\\User', 118),
(2, 'App\\User', 119),
(2, 'App\\User', 120),
(2, 'App\\User', 121),
(2, 'App\\User', 122),
(2, 'App\\User', 123),
(2, 'App\\User', 124),
(2, 'App\\User', 125),
(2, 'App\\User', 126),
(2, 'App\\User', 127),
(2, 'App\\User', 128),
(2, 'App\\User', 129),
(2, 'App\\User', 130),
(2, 'App\\User', 131),
(2, 'App\\User', 132),
(2, 'App\\User', 133),
(2, 'App\\User', 134),
(2, 'App\\User', 135),
(2, 'App\\User', 136),
(2, 'App\\User', 137),
(2, 'App\\User', 138),
(2, 'App\\User', 139),
(2, 'App\\User', 140),
(2, 'App\\User', 141),
(2, 'App\\User', 142);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razorpay_payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Delivery , 2 = Pickup',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promocode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_pr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_amount` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_from` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Unread , 2 = Read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addons_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `id` bigint(20) NOT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacypolicy`
--

CREATE TABLE `privacypolicy` (
  `id` int(11) NOT NULL,
  `privacypolicy_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `privacypolicy_content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-13 12:37:35', '2020-10-13 07:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `id` bigint(20) NOT NULL,
  `offer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratting`
--

CREATE TABLE `ratting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ratting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19'),
(2, 'user', 'User', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `termscondition_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `termscondition_content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-13 12:37:35', '2020-11-11 07:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `day` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `close_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `always_close` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `day`, `open_time`, `close_time`, `always_close`, `created_at`, `updated_at`) VALUES
(1, 'Monday', '12:00am', '11:59pm', 2, '2020-11-13 09:49:35', '2020-11-13 09:49:35'),
(2, 'Tuesday', '12:00am', '11:59pm', 2, '2020-11-13 09:49:35', '2020-11-13 09:49:35'),
(3, 'Wednesday', '12:00am', '11:59pm', 2, '2020-11-13 09:49:35', '2020-11-13 09:49:35'),
(4, 'Thursday', '12:00am', '11:59pm', 2, '2020-11-13 09:49:35', '2020-11-13 09:49:35'),
(5, 'Friday', '12:00am', '11:59pm', 2, '2020-11-13 09:49:35', '2020-11-13 09:49:35'),
(6, 'Saturday', '12:00am', '11:59pm', 2, '2020-11-13 09:49:35', '2020-11-13 09:49:35'),
(7, 'Sunday', '12:00am', '11:59pm', 2, '2020-11-13 09:49:35', '2020-11-13 09:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `tax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_order_qty` int(11) DEFAULT NULL,
  `min_order_amount` int(11) DEFAULT NULL,
  `max_order_amount` int(11) DEFAULT NULL,
  `lat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `otp` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int(11) DEFAULT NULL COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `profile_image`, `password`, `type`, `tax`, `delivery_charge`, `max_order_qty`, `min_order_amount`, `max_order_amount`, `lat`, `lang`, `token`, `is_available`, `otp`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '', 'unknown.png', '$2y$10$RKFRI21R2SVyf/QMSj92H.srHuJXPWKk7VCbK8R3LJvRHuUobvjai', 1, '5', '20', 10, 50, 1000, '40.712776', '-74.005974', 'foUMSygnRN-FY7UL7bj9o5:APA91bGzcFEMDAUVfFL2UjeVoBihXlUXfTojGn6UcwSRiVhHonhw7TXUgI-Mq2zq0wUeBtiIkn7Gi6qPS_S4grn7C9bF4IxsP23hbs1B5jCjnl--6Aa_bK_OARj1Hb6drtCM7gb1MahS', 1, NULL, NULL, '2020-06-05 07:21:20', '2020-11-13 09:49:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user_id_foreign` (`user_id`),
  ADD KEY `cart_item_id_foreign` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_item_id_foreign` (`item_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_images_item_id_foreign` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_user_id_foreign` (`user_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratting`
--
ALTER TABLE `ratting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratting_user_id_foreign` (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promocode`
--
ALTER TABLE `promocode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratting`
--
ALTER TABLE `ratting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
