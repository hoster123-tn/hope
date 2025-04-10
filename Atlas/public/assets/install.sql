-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2025 at 11:45 AM
-- Server version: 5.7.24
-- PHP Version: 8.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atlas1.1.1`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `version` float DEFAULT NULL,
  `unique_identifier` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aditional_information` longtext COLLATE utf8mb4_unicode_ci,
  `customer_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zoom_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beauty_listings`
--

CREATE TABLE `beauty_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` longtext COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `team` text COLLATE utf8mb4_unicode_ci,
  `service` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_time` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_claimed` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `is_popular` int(11) DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_listings`
--

CREATE TABLE `car_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transmission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuel_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cylinder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interior_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exterior_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drive_train` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mileage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double DEFAULT NULL,
  `discount_price` double DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` longtext COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `is_popular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `claimed_listings`
--

CREATE TABLE `claimed_listings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `listing_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_info` longtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(21) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  `has_read` int(11) DEFAULT '0',
  `replied` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` int(11) DEFAULT NULL,
  `currency_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `dial_code`, `currency_name`, `thumbnail`, `currency_symbol`, `currency_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '1741687214.webp', 0, 0, NULL, '2025-03-11 04:00:14'),
(2, 'Aland Islands', 'AX', '+358', '', '1733385195.webp', 0, 0, NULL, '2024-12-05 01:53:15'),
(3, 'Albania', 'AL', '+355', 'Albanian lek', '1733569672.webp', 0, 0, NULL, '2024-12-07 05:07:52'),
(4, 'Algeria', 'DZ', '+213', 'Algerian dinar', NULL, 0, 0, NULL, NULL),
(5, 'AmericanSamoa', 'AS', '+1684', '', NULL, 0, 0, NULL, NULL),
(6, 'Andorra', 'AD', '+376', 'Euro', '1733569643.webp', 0, 0, NULL, '2024-12-07 05:07:23'),
(7, 'Angola', 'AO', '+244', 'Angolan kwanza', '1733392190.webp', 0, 0, NULL, '2024-12-05 03:49:50'),
(8, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(9, 'Antarctica', 'AQ', '+672', '', NULL, 0, 0, NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(11, 'Argentina', 'AR', '+54', 'Argentine peso', NULL, 0, 0, NULL, NULL),
(12, 'Armenia', 'AM', '+374', 'Armenian dram', NULL, 0, 0, NULL, NULL),
(13, 'Aruba', 'AW', '+297', 'Aruban florin', NULL, 0, 0, NULL, NULL),
(14, 'Australia', 'AU', '+61', 'Australian dollar', NULL, 0, 0, NULL, NULL),
(15, 'Austria', 'AT', '+43', 'Euro', NULL, 0, 0, NULL, NULL),
(16, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', NULL, 0, 0, NULL, NULL),
(17, 'Bahamas', 'BS', '+1242', '', NULL, 0, 0, NULL, NULL),
(18, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '1727859648.webp', 0, 0, NULL, '2024-10-02 03:00:48'),
(19, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', '1733386184.webp', 0, 0, NULL, '2024-12-05 02:09:44'),
(20, 'Barbados', 'BB', '+1246', 'Barbadian dollar', NULL, 0, 0, NULL, NULL),
(21, 'Belarus', 'BY', '+375', 'Belarusian ruble', NULL, 0, 0, NULL, NULL),
(22, 'Belgium', 'BE', '+32', 'Euro', '1733569353.webp', 0, 0, NULL, '2024-12-07 05:02:34'),
(23, 'Belize', 'BZ', '+501', 'Belize dollar', NULL, 0, 0, NULL, NULL),
(24, 'Benin', 'BJ', '+229', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(25, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', NULL, 0, 0, NULL, NULL),
(26, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', NULL, 0, 0, NULL, NULL),
(27, 'Bolivia, Plurination', 'BO', '+591', '', NULL, 0, 0, NULL, NULL),
(28, 'Bosnia and Herzegovi', 'BA', '+387', '', NULL, 0, 0, NULL, NULL),
(29, 'Botswana', 'BW', '+267', 'Botswana pula', NULL, 0, 0, NULL, NULL),
(30, 'Brazil', 'BR', '+55', 'Brazilian real', NULL, 0, 0, NULL, NULL),
(31, 'British Indian Ocean', 'IO', '+246', '', NULL, 0, 0, NULL, NULL),
(32, 'Brunei Darussalam', 'BN', '+673', '', NULL, 0, 0, NULL, NULL),
(33, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', NULL, 0, 0, NULL, NULL),
(34, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(35, 'Burundi', 'BI', '+257', 'Burundian franc', NULL, 0, 0, NULL, NULL),
(36, 'Cambodia', 'KH', '+855', 'Cambodian riel', NULL, 0, 0, NULL, NULL),
(37, 'Cameroon', 'CM', '+237', 'Central African CFA ', NULL, 0, 0, NULL, NULL),
(38, 'Canada', 'CA', '+1', 'Canadian dollar', NULL, 0, 0, NULL, NULL),
(39, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', NULL, 0, 0, NULL, NULL),
(40, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', NULL, 0, 0, NULL, NULL),
(41, 'Central African Repu', 'CF', '+236', '', NULL, 0, 0, NULL, NULL),
(42, 'Chad', 'TD', '+235', 'Central African CFA ', NULL, 0, 0, NULL, NULL),
(43, 'Chile', 'CL', '+56', 'Chilean peso', NULL, 0, 0, NULL, NULL),
(44, 'China', 'CN', '+86', 'Chinese yuan', NULL, 0, 0, NULL, NULL),
(45, 'Christmas Island', 'CX', '+61', '', NULL, 0, 0, NULL, NULL),
(46, 'Cocos (Keeling) Isla', 'CC', '+61', '', NULL, 0, 0, NULL, NULL),
(47, 'Colombia', 'CO', '+57', 'Colombian peso', NULL, 0, 0, NULL, NULL),
(48, 'Comoros', 'KM', '+269', 'Comorian franc', NULL, 0, 0, NULL, NULL),
(49, 'Congo', 'CG', '+242', '', NULL, 0, 0, NULL, NULL),
(50, 'Congo, The Democrati', 'CD', '+243', '', NULL, 0, 0, NULL, NULL),
(51, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', NULL, 0, 0, NULL, NULL),
(52, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', NULL, 0, 0, NULL, NULL),
(53, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(54, 'Croatia', 'HR', '+385', 'Croatian kuna', NULL, 0, 0, NULL, NULL),
(55, 'Cuba', 'CU', '+53', 'Cuban convertible pe', NULL, 0, 0, NULL, NULL),
(56, 'Cyprus', 'CY', '+357', 'Euro', NULL, 0, 0, NULL, NULL),
(57, 'Czech Republic', 'CZ', '+420', 'Czech koruna', NULL, 0, 0, NULL, NULL),
(58, 'Denmark', 'DK', '+45', 'Danish krone', NULL, 0, 0, NULL, NULL),
(59, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', NULL, 0, 0, NULL, NULL),
(60, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(61, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', NULL, 0, 0, NULL, NULL),
(62, 'Ecuador', 'EC', '+593', 'United States dollar', NULL, 0, 0, NULL, NULL),
(63, 'Egypt', 'EG', '+20', 'Egyptian pound', NULL, 0, 0, NULL, NULL),
(64, 'El Salvador', 'SV', '+503', 'United States dollar', NULL, 0, 0, NULL, NULL),
(65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', NULL, 0, 0, NULL, NULL),
(66, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', NULL, 0, 0, NULL, NULL),
(67, 'Estonia', 'EE', '+372', 'Euro', NULL, 0, 0, NULL, NULL),
(68, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', NULL, 0, 0, NULL, NULL),
(69, 'Falkland Islands (Ma', 'FK', '+500', '', NULL, 0, 0, NULL, NULL),
(70, 'Faroe Islands', 'FO', '+298', 'Danish krone', NULL, 0, 0, NULL, NULL),
(71, 'Fiji', 'FJ', '+679', 'Fijian dollar', NULL, 0, 0, NULL, NULL),
(72, 'Finland', 'FI', '+358', 'Euro', NULL, 0, 0, NULL, NULL),
(73, 'France', 'FR', '+33', 'Euro', NULL, 0, 0, NULL, NULL),
(74, 'French Guiana', 'GF', '+594', '', NULL, 0, 0, NULL, NULL),
(75, 'French Polynesia', 'PF', '+689', 'CFP franc', NULL, 0, 0, NULL, NULL),
(76, 'Gabon', 'GA', '+241', 'Central African CFA ', NULL, 0, 0, NULL, NULL),
(77, 'Gambia', 'GM', '+220', '', NULL, 0, 0, NULL, NULL),
(78, 'Georgia', 'GE', '+995', 'Georgian lari', NULL, 0, 0, NULL, NULL),
(79, 'Germany', 'DE', '+49', 'Euro', NULL, 0, 0, NULL, NULL),
(80, 'Ghana', 'GH', '+233', 'Ghana cedi', NULL, 0, 0, NULL, NULL),
(81, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', NULL, 0, 0, NULL, NULL),
(82, 'Greece', 'GR', '+30', 'Euro', NULL, 0, 0, NULL, NULL),
(83, 'Greenland', 'GL', '+299', '', NULL, 0, 0, NULL, NULL),
(84, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(85, 'Guadeloupe', 'GP', '+590', '', NULL, 0, 0, NULL, NULL),
(86, 'Guam', 'GU', '+1671', '', NULL, 0, 0, NULL, NULL),
(87, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', NULL, 0, 0, NULL, NULL),
(88, 'Guernsey', 'GG', '+44', 'British pound', NULL, 0, 0, NULL, NULL),
(89, 'Guinea', 'GN', '+224', 'Guinean franc', NULL, 0, 0, NULL, NULL),
(90, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(91, 'Guyana', 'GY', '+595', 'Guyanese dollar', NULL, 0, 0, NULL, NULL),
(92, 'Haiti', 'HT', '+509', 'Haitian gourde', NULL, 0, 0, NULL, NULL),
(93, 'Holy See (Vatican Ci', 'VA', '+379', '', NULL, 0, 0, NULL, NULL),
(94, 'Honduras', 'HN', '+504', 'Honduran lempira', NULL, 0, 0, NULL, NULL),
(95, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', NULL, 0, 0, NULL, NULL),
(96, 'Hungary', 'HU', '+36', 'Hungarian forint', NULL, 0, 0, NULL, NULL),
(97, 'Iceland', 'IS', '+354', 'Icelandic króna', NULL, 0, 0, NULL, NULL),
(98, 'India', 'IN', '+91', 'Indian rupee', '1733385975.webp', 0, 0, NULL, '2024-12-05 02:06:15'),
(99, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', NULL, 0, 0, NULL, NULL),
(100, 'Iran, Islamic Republ', 'IR', '+98', '', NULL, 0, 0, NULL, NULL),
(101, 'Iraq', 'IQ', '+964', 'Iraqi dinar', NULL, 0, 0, NULL, NULL),
(102, 'Ireland', 'IE', '+353', 'Euro', NULL, 0, 0, NULL, NULL),
(103, 'Isle of Man', 'IM', '+44', 'British pound', NULL, 0, 0, NULL, NULL),
(104, 'Israel', 'IL', '+972', 'Israeli new shekel', NULL, 0, 0, NULL, NULL),
(105, 'Italy', 'IT', '+39', 'Euro', NULL, 0, 0, NULL, NULL),
(106, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', NULL, 0, 0, NULL, NULL),
(107, 'Japan', 'JP', '+81', 'Japanese yen', NULL, 0, 0, NULL, NULL),
(108, 'Jersey', 'JE', '+44', 'British pound', NULL, 0, 0, NULL, NULL),
(109, 'Jordan', 'JO', '+962', 'Jordanian dinar', NULL, 0, 0, NULL, NULL),
(110, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', NULL, 0, 0, NULL, NULL),
(111, 'Kenya', 'KE', '+254', 'Kenyan shilling', NULL, 0, 0, NULL, NULL),
(112, 'Kiribati', 'KI', '+686', 'Australian dollar', NULL, 0, 0, NULL, NULL),
(113, 'Korea, Democratic Pe', 'KP', '+850', '', NULL, 0, 0, NULL, NULL),
(114, 'Korea, Republic of S', 'KR', '+82', '', NULL, 0, 0, NULL, NULL),
(115, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', NULL, 0, 0, NULL, NULL),
(116, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', NULL, 0, 0, NULL, NULL),
(117, 'Laos', 'LA', '+856', 'Lao kip', NULL, 0, 0, NULL, NULL),
(118, 'Latvia', 'LV', '+371', 'Euro', NULL, 0, 0, NULL, NULL),
(119, 'Lebanon', 'LB', '+961', 'Lebanese pound', NULL, 0, 0, NULL, NULL),
(120, 'Lesotho', 'LS', '+266', 'Lesotho loti', NULL, 0, 0, NULL, NULL),
(121, 'Liberia', 'LR', '+231', 'Liberian dollar', NULL, 0, 0, NULL, NULL),
(122, 'Libyan Arab Jamahiri', 'LY', '+218', '', NULL, 0, 0, NULL, NULL),
(123, 'Liechtenstein', 'LI', '+423', 'Swiss franc', NULL, 0, 0, NULL, NULL),
(124, 'Lithuania', 'LT', '+370', 'Euro', NULL, 0, 0, NULL, NULL),
(125, 'Luxembourg', 'LU', '+352', 'Euro', NULL, 0, 0, NULL, NULL),
(126, 'Macao', 'MO', '+853', '', NULL, 0, 0, NULL, NULL),
(127, 'Macedonia', 'MK', '+389', '', NULL, 0, 0, NULL, NULL),
(128, 'Madagascar', 'MG', '+261', 'Malagasy ariary', NULL, 0, 0, NULL, NULL),
(129, 'Malawi', 'MW', '+265', 'Malawian kwacha', NULL, 0, 0, NULL, NULL),
(130, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', NULL, 0, 0, NULL, NULL),
(131, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', NULL, 0, 0, NULL, NULL),
(132, 'Mali', 'ML', '+223', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(133, 'Malta', 'MT', '+356', 'Euro', NULL, 0, 0, NULL, NULL),
(134, 'Marshall Islands', 'MH', '+692', 'United States dollar', NULL, 0, 0, NULL, NULL),
(135, 'Martinique', 'MQ', '+596', '', NULL, 0, 0, NULL, NULL),
(136, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', NULL, 0, 0, NULL, NULL),
(137, 'Mauritius', 'MU', '+230', 'Mauritian rupee', NULL, 0, 0, NULL, NULL),
(138, 'Mayotte', 'YT', '+262', '', NULL, 0, 0, NULL, NULL),
(139, 'Mexico', 'MX', '+52', 'Mexican peso', NULL, 0, 0, NULL, NULL),
(140, 'Micronesia, Federate', 'FM', '+691', '', NULL, 0, 0, NULL, NULL),
(141, 'Moldova', 'MD', '+373', 'Moldovan leu', NULL, 0, 0, NULL, NULL),
(142, 'Monaco', 'MC', '+377', 'Euro', NULL, 0, 0, NULL, NULL),
(143, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', NULL, 0, 0, NULL, NULL),
(144, 'Montenegro', 'ME', '+382', 'Euro', NULL, 0, 0, NULL, NULL),
(145, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(146, 'Morocco', 'MA', '+212', 'Moroccan dirham', NULL, 0, 0, NULL, NULL),
(147, 'Mozambique', 'MZ', '+258', 'Mozambican metical', NULL, 0, 0, NULL, NULL),
(148, 'Myanmar', 'MM', '+95', 'Burmese kyat', NULL, 0, 0, NULL, NULL),
(149, 'Namibia', 'NA', '+264', 'Namibian dollar', NULL, 0, 0, NULL, NULL),
(150, 'Nauru', 'NR', '+674', 'Australian dollar', NULL, 0, 0, NULL, NULL),
(151, 'Nepal', 'NP', '+977', 'Nepalese rupee', NULL, 0, 0, NULL, NULL),
(152, 'Netherlands', 'NL', '+31', 'Euro', NULL, 0, 0, NULL, NULL),
(153, 'Netherlands Antilles', 'AN', '+599', '', NULL, 0, 0, NULL, NULL),
(154, 'New Caledonia', 'NC', '+687', 'CFP franc', NULL, 0, 0, NULL, NULL),
(155, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', NULL, 0, 0, NULL, NULL),
(156, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', NULL, 0, 0, NULL, NULL),
(157, 'Niger', 'NE', '+227', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(158, 'Nigeria', 'NG', '+234', 'Nigerian naira', NULL, 0, 0, NULL, NULL),
(159, 'Niue', 'NU', '+683', 'New Zealand dollar', NULL, 0, 0, NULL, NULL),
(160, 'Norfolk Island', 'NF', '+672', '', NULL, 0, 0, NULL, NULL),
(161, 'Northern Mariana Isl', 'MP', '+1670', '', NULL, 0, 0, NULL, NULL),
(162, 'Norway', 'NO', '+47', 'Norwegian krone', NULL, 0, 0, NULL, NULL),
(163, 'Oman', 'OM', '+968', 'Omani rial', NULL, 0, 0, NULL, NULL),
(164, 'Pakistan', 'PK', '+92', 'Pakistani rupee', NULL, 0, 0, NULL, NULL),
(165, 'Palau', 'PW', '+680', 'Palauan dollar', NULL, 0, 0, NULL, NULL),
(166, 'Palestinian Territor', 'PS', '+970', '', NULL, 0, 0, NULL, NULL),
(167, 'Panama', 'PA', '+507', 'Panamanian balboa', NULL, 0, 0, NULL, NULL),
(168, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', NULL, 0, 0, NULL, NULL),
(169, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', NULL, 0, 0, NULL, NULL),
(170, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', NULL, 0, 0, NULL, NULL),
(171, 'Philippines', 'PH', '+63', 'Philippine peso', NULL, 0, 0, NULL, NULL),
(172, 'Pitcairn', 'PN', '+872', '', NULL, 0, 0, NULL, NULL),
(173, 'Poland', 'PL', '+48', 'Polish z?oty', NULL, 0, 0, NULL, NULL),
(174, 'Portugal', 'PT', '+351', 'Euro', NULL, 0, 0, NULL, NULL),
(175, 'Puerto Rico', 'PR', '+1939', '', NULL, 0, 0, NULL, NULL),
(176, 'Qatar', 'QA', '+974', 'Qatari riyal', NULL, 0, 0, NULL, NULL),
(177, 'Romania', 'RO', '+40', 'Romanian leu', NULL, 0, 0, NULL, NULL),
(178, 'Russia', 'RU', '+7', 'Russian ruble', NULL, 0, 0, NULL, NULL),
(179, 'Rwanda', 'RW', '+250', 'Rwandan franc', NULL, 0, 0, NULL, NULL),
(180, 'Reunion', 'RE', '+262', '', NULL, 0, 0, NULL, NULL),
(181, 'Saint Barthelemy', 'BL', '+590', '', NULL, 0, 0, NULL, NULL),
(182, 'Saint Helena, Ascens', 'SH', '+290', '', NULL, 0, 0, NULL, NULL),
(183, 'Saint Kitts and Nevi', 'KN', '+1869', '', NULL, 0, 0, NULL, NULL),
(184, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(185, 'Saint Martin', 'MF', '+590', '', NULL, 0, 0, NULL, NULL),
(186, 'Saint Pierre and Miq', 'PM', '+508', '', NULL, 0, 0, NULL, NULL),
(187, 'Saint Vincent and th', 'VC', '+1784', '', NULL, 0, 0, NULL, NULL),
(188, 'Samoa', 'WS', '+685', 'Samoan t?l?', NULL, 0, 0, NULL, NULL),
(189, 'San Marino', 'SM', '+378', 'Euro', NULL, 0, 0, NULL, NULL),
(190, 'Sao Tome and Princip', 'ST', '+239', '', NULL, 0, 0, NULL, NULL),
(191, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', NULL, 0, 0, NULL, NULL),
(192, 'Senegal', 'SN', '+221', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(193, 'Serbia', 'RS', '+381', 'Serbian dinar', NULL, 0, 0, NULL, NULL),
(194, 'Seychelles', 'SC', '+248', 'Seychellois rupee', NULL, 0, 0, NULL, NULL),
(195, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', NULL, 0, 0, NULL, NULL),
(196, 'Singapore', 'SG', '+65', 'Brunei dollar', NULL, 0, 0, NULL, NULL),
(197, 'Slovakia', 'SK', '+421', 'Euro', NULL, 0, 0, NULL, NULL),
(198, 'Slovenia', 'SI', '+386', 'Euro', NULL, 0, 0, NULL, NULL),
(199, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', NULL, 0, 0, NULL, NULL),
(200, 'Somalia', 'SO', '+252', 'Somali shilling', NULL, 0, 0, NULL, NULL),
(201, 'South Africa', 'ZA', '+27', 'South African rand', NULL, 0, 0, NULL, NULL),
(202, 'South Georgia and th', 'GS', '+500', '', NULL, 0, 0, NULL, NULL),
(203, 'Spain', 'ES', '+34', 'Euro', NULL, 0, 0, NULL, NULL),
(204, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', NULL, 0, 0, NULL, NULL),
(205, 'Sudan', 'SD', '+249', 'Sudanese pound', NULL, 0, 0, NULL, NULL),
(206, 'Suriname', 'SR', '+597', 'Surinamese dollar', NULL, 0, 0, NULL, NULL),
(207, 'Svalbard and Jan May', 'SJ', '+47', '', NULL, 0, 0, NULL, NULL),
(208, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', NULL, 0, 0, NULL, NULL),
(209, 'Sweden', 'SE', '+46', 'Swedish krona', NULL, 0, 0, NULL, NULL),
(210, 'Switzerland', 'CH', '+41', 'Swiss franc', NULL, 0, 0, NULL, NULL),
(211, 'Syrian Arab Republic', 'SY', '+963', '', NULL, 0, 0, NULL, NULL),
(212, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', NULL, 0, 0, NULL, NULL),
(213, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', NULL, 0, 0, NULL, NULL),
(214, 'Tanzania, United Rep', 'TZ', '+255', '', NULL, 0, 0, NULL, NULL),
(215, 'Thailand', 'TH', '+66', 'Thai baht', NULL, 0, 0, NULL, NULL),
(216, 'Timor-Leste', 'TL', '+670', '', NULL, 0, 0, NULL, NULL),
(217, 'Togo', 'TG', '+228', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(218, 'Tokelau', 'TK', '+690', '', NULL, 0, 0, NULL, NULL),
(219, 'Tonga', 'TO', '+676', 'Tongan pa?anga', NULL, 0, 0, NULL, NULL),
(220, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', NULL, 0, 0, NULL, NULL),
(221, 'Tunisia', 'TN', '+216', 'Tunisian dinar', NULL, 0, 0, NULL, NULL),
(222, 'Turkey', 'TR', '+90', 'Turkish lira', NULL, 0, 0, NULL, NULL),
(223, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', NULL, 0, 0, NULL, NULL),
(224, 'Turks and Caicos Isl', 'TC', '+1649', '', NULL, 0, 0, NULL, NULL),
(225, 'Tuvalu', 'TV', '+688', 'Australian dollar', NULL, 0, 0, NULL, NULL),
(226, 'Uganda', 'UG', '+256', 'Ugandan shilling', NULL, 0, 0, NULL, NULL),
(227, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', NULL, 0, 0, NULL, NULL),
(228, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', NULL, 0, 0, NULL, NULL),
(229, 'United Kingdom', 'GB', '+44', 'British pound', NULL, 0, 0, NULL, NULL),
(230, 'United States', 'US', '+1', 'United States dollar', NULL, 0, 0, NULL, NULL),
(231, 'Uruguay', 'UY', '+598', 'Uruguayan peso', NULL, 0, 0, NULL, NULL),
(232, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', NULL, 0, 0, NULL, NULL),
(233, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', NULL, 0, 0, NULL, NULL),
(234, 'Venezuela, Bolivaria', 'VE', '+58', '', NULL, 0, 0, NULL, NULL),
(235, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', NULL, 0, 0, NULL, NULL),
(236, 'Virgin Islands, Brit', 'VG', '+1284', '', NULL, 0, 0, NULL, NULL),
(237, 'Virgin Islands, U.S.', 'VI', '+1340', '', NULL, 0, 0, NULL, NULL),
(238, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', NULL, 0, 0, NULL, NULL),
(239, 'Yemen', 'YE', '+967', 'Yemeni rial', NULL, 0, 0, NULL, NULL),
(240, 'Zambia', 'ZM', '+260', 'Zambian kwacha', NULL, 0, 0, NULL, NULL),
(241, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_supported` int(11) NOT NULL DEFAULT '0',
  `stripe_supported` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'map_position', 'top', '2024-07-16 04:41:17', '2024-12-27 09:34:33'),
(2, 'mother_homepage_banner', '[{\"id\":1,\"title\":\"Your Gateway to Comfort & Adventure\",\"description\":\"On the top advertising a Courses available business to online includes assembling  site on top advertising Courses includes\",\"image\":\"1730781649_6729a1d10cc54.webp\"},{\"id\":2,\"title\":\"Where Every Meal is a Celebration\",\"description\":\"On the top advertising a Courses available business to online includes assembling  site on top advertising Courses includes\",\"image\":\"1730781682_6729a1f2cb312.webp\"},{\"id\":3,\"title\":\"Compassionate Healthcare You Can Trust\",\"description\":\"On the top advertising a Courses available business to online includes assembling  site on top advertising Courses includes\",\"image\":\"1730781703_6729a207eaf8e.webp\"},{\"id\":4,\"title\":\"Discover Your Dream Ride Today\",\"description\":\"On the top advertising a Courses available business to online includes assembling  site on top advertising Courses includes\",\"image\":\"1730781727_6729a21fe80ce.webp\"},{\"id\":5,\"title\":\"Find Your Dream Home Today\",\"description\":\"On the top advertising a Courses available business to online includes assembling  site on top advertising Courses includes\",\"image\":\"1730781745_6729a231c6aba.webp\"},{\"id\":6,\"title\":\"Discover the Essence of True Beauty\",\"description\":\"On the top advertising a Courses available business to online includes assembling  site on top advertising Courses includes\",\"image\":\"1730781761_6729a24180cb6.webp\"}]', '2024-07-16 04:41:17', '2024-11-04 23:25:43'),
(3, 'light_logo', '1730803513_logo-for-dark.svg', '2024-07-16 04:41:17', '2024-11-05 04:45:13'),
(4, 'favicon_logo', '1730706465_favicon.svg', '2024-07-16 04:41:17', '2024-11-04 01:47:45'),
(5, 'dark_logo', '1730803523_logo-for-dark.svg', '2024-07-16 04:41:17', '2024-11-05 04:45:23'),
(6, 'hotel', '1730786984_mh-category-banner1.webp', '2024-07-16 04:41:17', '2024-11-05 00:09:44'),
(7, 'doctors', '1730788214_mh-category-banner4.webp', '2024-07-16 04:41:17', '2024-11-05 00:30:14'),
(8, 'car', '1735639516_at-blog-banner2.webp', '2024-07-16 04:41:17', '2024-12-31 04:05:16'),
(9, 'beauty', '1730788243_mh-category-banner6.webp', '2024-07-16 04:41:17', '2024-11-05 00:30:43'),
(10, 'real_estate', '1730788041_mh-category-banner5.webp', '2024-07-16 04:41:17', '2024-11-05 00:27:21'),
(11, 'restaurent', '1730787972_mh-category-banner2.webp', '2024-07-16 04:41:17', '2024-11-05 00:26:12'),
(12, 'company_images', '[{\"id\":1,\"image\":\"1730793104_6729ce900f0f4.svg\"},{\"id\":2,\"image\":\"1730792894_6729cdbec33e3.svg\"},{\"id\":3,\"image\":\"1730792906_6729cdcabbd6c.svg\"},{\"id\":4,\"image\":\"1730792918_6729cdd6675fb.svg\"},{\"id\":5,\"image\":\"1730792928_6729cde093d49.svg\"},{\"id\":6,\"image\":\"1730792937_6729cde981ba1.svg\"},{\"id\":7,\"image\":\"1730792947_6729cdf31cbc8.svg\"},{\"id\":8,\"image\":\"1730792956_6729cdfc03d1c.svg\"}]', '2024-07-16 04:41:17', '2024-11-05 01:52:14'),
(13, 'menu', '[\"Real-Estate\",\"Hotel\",\"Beauty\",\"Restaurant\",\"Car\"]', '2024-07-16 04:41:17', '2024-12-26 05:49:34'),
(14, 'website_faqs', '{\"0\":{\"question\":\"How to create an accounts?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"},\"2\":{\"question\":\"How long do you provide support?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"}}', '2024-07-16 04:41:17', '2024-12-27 09:11:52'),
(15, 'about_us', '<h2><b><span style=\"font-size: 24px;\">About Us</span></b></h2><p><br></p><p>Welcome\r\n to Academy, the premier online learning platform designed to empower \r\nindividuals through high-quality education. At Academy, we believe that \r\nlearning is a lifelong journey, and our mission is to make that journey \r\naccessible, engaging, and rewarding for everyone.</p><h3><br></h3><h3><b><span style=\"font-size: 24px;\">Our Mission</span></b></h3><p><br></p><p>Our\r\n mission is to democratize education by providing a diverse range of \r\ncourses that cater to all levels of learners. Whether you\'re a beginner \r\nlooking to acquire new skills, a professional aiming to enhance your \r\nexpertise, or a hobbyist exploring new interests, Academy has something \r\nfor you.</p><h3><br></h3><h3><span style=\"font-size: 24px;\"><b>What We Offer</b></span></h3><ul><li><strong><br></strong></li><li><strong>Wide Range of Courses</strong>:\r\n From technology and business to arts and personal development, our \r\nextensive course library covers a multitude of subjects to meet the \r\ndiverse needs of our learners.</li><li><strong>Expert Instructors</strong>: Learn from industry leaders and subject matter experts who bring real-world experience and insights to the classroom.</li><li><strong>Flexible Learning</strong>: Our platform allows you to learn at your own pace, on your own schedule, from any device, anywhere in the world.</li><li><strong>Community and Support</strong>:\r\n Join a vibrant community of learners and educators. Participate in \r\ndiscussions, collaborate on projects, and receive support every step of \r\nthe way.</li></ul><h3><br></h3><h3><b><span style=\"font-size: 24px;\">Our Vision</span></b></h3><p><br></p><p>We\r\n envision a world where education is not confined to traditional \r\nclassrooms. By harnessing the power of technology, we aim to create an \r\ninclusive learning environment that transcends geographical boundaries \r\nand empowers individuals to achieve their personal and professional \r\ngoals.</p><h3><br></h3><h3><b><span style=\"font-size: 24px;\">Why Choose Academy?</span></b></h3><ul><li><strong><br></strong></li><li><strong>Quality Content</strong>: Our courses are meticulously designed to ensure they are informative, engaging, and up-to-date with industry standards.</li><li><strong>Affordable Learning</strong>:\r\n We believe that education should be accessible to everyone. Our \r\ncompetitive pricing and free courses ensure that financial constraints \r\ndo not hinder your learning journey.</li><li><strong>Continuous Improvement</strong>: We are committed to continually enhancing our platform and content based on user feedback and emerging trends in education.</li></ul><h3><br></h3><h3><b><span style=\"font-size: 24px;\">Join Us Today</span></b></h3><p><br></p><p>Embark\r\n on your learning journey with Academy and unlock your potential. Sign \r\nup today to explore our courses, connect with experts, and become part \r\nof a global learning community. Together, let\'s shape the future of \r\neducation.</p><p></p>', '2024-07-16 04:41:17', '2024-12-27 09:34:33'),
(16, 'terms_and_condition', '<p><span>﻿</span><span style=\"font-size: 24px;\"><b>Terms and Conditions</b></span></p><p><br></p><p>Welcome\r\n to Academy. By accessing and using our platform, you agree to comply \r\nwith and be bound by the following terms and conditions. Please read \r\nthem carefully before using our services.</p><p><strong><span style=\"font-size: 24px;\"><br></span></strong></p><p><strong><span style=\"font-size: 18px;\">1. Acceptance of Terms</span></strong></p><p><br></p><p>By\r\n accessing and using the Academy website and services, you accept and \r\nagree to be bound by these terms and conditions. If you do not agree \r\nwith any part of these terms, </p><p>you must not use our platform.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">2. Use of the Platform</span></strong></p><p><br></p><p>You\r\n agree to use Academy for lawful purposes only. You must not use our \r\nplatform in any way that breaches any applicable local, national, or \r\ninternational law or regulation.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">3. Account Registration</span></strong></p><p><br></p><p>To\r\n access certain features of Academy, you may be required to create an \r\naccount. You agree to provide accurate and complete information during \r\nthe registration process and to keep your account information up to \r\ndate.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">4. User Conduct</span></strong></p><p><br></p><p>You agree not to use Academy to:</p><ul><li>Post, upload, or distribute any content that is unlawful, defamatory, abusive, or otherwise objectionable.</li><li>Engage in any activity that could harm or disrupt the platform or other users\' experience.</li><li>Infringe upon the intellectual property rights of others.</li><li><br></li></ul><p><strong><span style=\"font-size: 18px;\">5. Intellectual Property</span></strong></p><p><br></p><p>All\r\n content on Academy, including but not limited to text, graphics, logos,\r\n and software, is the property of Academy or its content suppliers and \r\nis protected by intellectual property laws. You may not reproduce, \r\ndistribute, or create derivative works based on our content without \r\nexpress written permission from Academy.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">6. Payment and Refunds</span></strong></p><p><br></p><p>Certain\r\n courses and services on Academy may be offered for a fee. All payments \r\nare non-refundable unless otherwise specified. Academy reserves the \r\nright to change its pricing at any time.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">7. Termination</span></strong></p><p><br></p><p>Academy\r\n reserves the right to terminate or suspend your account at our sole \r\ndiscretion, without prior notice, for conduct that we believe violates \r\nthese terms or is harmful to other users or our platform.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">8. Disclaimer of Warranties</span></strong></p><p><br></p><p>Academy\r\n provides the platform and services \"as is\" and without any warranty or \r\ncondition, express, implied, or statutory. We do not guarantee that the \r\nplatform will be uninterrupted or error-free.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">9. Limitation of Liability</span></strong></p><p><br></p><p>In\r\n no event shall Academy be liable for any indirect, incidental, special,\r\n consequential, or punitive damages, or any loss of profits or revenues,\r\n whether incurred directly or indirectly, or any loss of data, use, \r\ngoodwill, or other intangible losses, resulting from (a) your use or \r\ninability to use the platform; (b) any unauthorized access to or use of \r\nour services; (c) any interruption or cessation of transmission to or \r\nfrom our services.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">10. Changes to Terms</span></strong></p><p><br></p><p>Academy\r\n reserves the right to modify these terms at any time. We will notify \r\nyou of any changes by posting the new terms on this page. Your continued\r\n use of the platform after any changes constitutes your acceptance of \r\nthe new terms.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">11. Governing Law</span></strong></p><p><br></p><p>These\r\n terms and conditions are governed by and construed in accordance with \r\nthe laws of the jurisdiction in which Academy operates, without regard \r\nto its conflict of law principles.</p><p></p>', '2024-07-16 04:41:17', '2024-12-27 09:34:33'),
(17, 'privacy_policy', '<p><strong><span style=\"font-size: 24px;\">Privacy Policy</span></strong></p><p><strong><br></strong></p><p>Welcome\r\n to Academy. We are committed to protecting your privacy and ensuring \r\nthat your personal information is handled in a safe and responsible \r\nmanner. This Privacy Policy outlines how we collect, use, and protect \r\nyour information when you use our platform.</p><p><strong><br></strong></p><p><strong><span style=\"font-size: 18px;\">1. Information We Collect</span></strong></p><p><br></p><p>We collect various types of information in connection with the services we provide, including:</p><ul><li><strong>Personal Information</strong>:\r\n When you register for an account, we may collect personal details such \r\nas your name, email address, phone number, and payment information.</li><li><strong>Usage Data</strong>:\r\n We collect information about your interactions with our platform, such \r\nas the pages you visit, the courses you access, and other actions you \r\ntake.</li><li><strong>Cookies and Tracking Technologies</strong>: We use cookies and similar technologies to track your activity on our platform and hold certain information.</li></ul><p><strong><span style=\"font-size: 18px;\"><br></span></strong></p><p><strong><span style=\"font-size: 18px;\">2. How We Use Your Information</span></strong></p><p><br></p><p>We use the information we collect for various purposes, including:</p><ul><li><strong>Providing Services</strong>: To create and manage your account, process transactions, and provide the courses and services you request.</li><li><strong>Improving Our Platform</strong>: To analyze usage patterns and improve the functionality and user experience of our platform.</li><li><strong>Communication</strong>:\r\n To send you updates, newsletters, and other information that may be of \r\ninterest to you. You can opt-out of receiving these communications at \r\nany time.</li><li><strong>Security</strong>: To monitor and protect the security of our platform and its users.</li></ul><p><strong><span style=\"font-size: 18px;\"><br></span></strong></p><p><strong><span style=\"font-size: 18px;\">3. Sharing Your Information</span></strong></p><p><br></p><p>We may share your information with third parties in the following circumstances:</p><ul><li><strong>Service Providers</strong>:\r\n We may share your information with third-party service providers who \r\nperform services on our behalf, such as payment processing, data \r\nanalysis, and email delivery.</li><li><strong>Legal Requirements</strong>: We may disclose your information if required to do so by law or in response to valid requests by public authorities.</li><li><strong>Business Transfers</strong>:\r\n In the event of a merger, acquisition, or sale of all or a portion of \r\nour assets, your information may be transferred as part of that \r\ntransaction.</li></ul><p><strong><span style=\"font-size: 24px;\"><br></span></strong></p><p><strong><span style=\"font-size: 24px;\">4. Data Security</span></strong></p><p><br></p><p>We\r\n implement appropriate security measures to protect your information \r\nfrom unauthorized access, alteration, disclosure, or destruction. \r\nHowever, no method of transmission over the internet or electronic \r\nstorage is completely secure, and we cannot guarantee its absolute \r\nsecurity.</p><p></p>', '2024-07-16 04:41:17', '2024-12-27 09:34:33'),
(18, 'refund_policy', '<p><strong><span style=\"font-size: 24px;\">Refund Policy</span></strong></p><p><span style=\"text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"text-align: var(--bs-body-text-align);\">At\r\n Academy, we strive to provide the best learning experience for our \r\nusers. We understand that there may be situations where you may need to \r\nrequest a refund. This Refund Policy outlines the conditions and \r\nprocesses for obtaining a refund for purchases made on our platform.</span><br></p><p><strong><span style=\"font-size: 18px;\"><br></span></strong></p><p><strong><span style=\"font-size: 18px;\">1. General Refund Policy</span></strong></p><p><br></p><p>Our\r\n general refund policy applies to all courses and services offered on \r\nAcademy. Refunds will be granted under the following conditions:</p><ul><li><strong>Course Not Accessed</strong>:\r\n If you have purchased a course and have not accessed any of its \r\ncontent, you may request a full refund within 14 days of the purchase \r\ndate.</li><li><strong>Technical Issues</strong>: If you experience \r\ntechnical issues that prevent you from accessing the course content and \r\nwe are unable to resolve the issue, you may request a refund within 14 \r\ndays of the purchase date.</li></ul><p><strong><span style=\"font-size: 18px;\"><br>2. Non-Refundable Items</span></strong></p><p><br></p><p>Certain items and services are non-refundable. These include:</p><ul><li><strong>Downloaded Content</strong>: Any content that has been downloaded to your device is non-refundable.</li><li><strong>Completed Courses</strong>: If you have completed a course, it is not eligible for a refund.</li></ul><p><strong><span style=\"font-size: 18px;\"><br></span></strong></p><p><strong><span style=\"font-size: 18px;\">3. How to Request a Refund</span></strong></p><p><br></p><p>To request a refund, please follow these steps:</p><ol><li><strong>Contact Support</strong>: Email our support team at <a rel=\"noreferrer\">support@example.com</a> with your refund request. Include your order number, the course name, and the reason for the refund request.</li><li><strong>Review Process</strong>: Our support team will review your request and may ask for additional information to process your refund.</li><li><strong>Refund Approval</strong>:\r\n If your refund request meets the conditions outlined in this policy, we\r\n will process the refund to your original method of payment. Please \r\nallow 5-10 business days for the refund to appear in your account.</li></ol><p><strong><span style=\"font-size: 18px;\"><br></span></strong></p><p><strong><span style=\"font-size: 18px;\">4. Changes to Refund Policy</span></strong></p><p><br></p><p>Academy\r\n reserves the right to modify this Refund Policy at any time. We will \r\nnotify you of any changes by posting the new policy on this page. Your \r\ncontinued use of the platform after any changes constitutes your \r\nacceptance of the new policy.</p><p></p>', '2024-07-16 04:41:17', '2024-12-27 09:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_settings`
--

CREATE TABLE `home_page_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_page_settings`
--

INSERT INTO `home_page_settings` (`id`, `type`, `key`, `value`, `created_at`, `updated_at`) VALUES
(9, 'BeautyFacial', 'BeautyFacial', '{\"title\":\"Exclusive Facial Deals\",\"description\":\"20% OFF\",\"image\":\"1731153406_bt-banner-card-bg1.webp\"}', '2024-11-09 05:56:46', '2024-11-09 06:05:57'),
(10, 'BeautyMassage', 'BeautyMassage', '{\"title\":\"Relax & Save\",\"description\":\"30% Off All PARLOUR\",\"image\":\"1731154110_bt-banner-card-bg2.webp\"}', '2024-11-09 06:08:30', '2024-11-09 06:10:05'),
(11, 'BeautyMotion', 'BeautyMotion', '{\"title\":\"Book Your Visit Online\",\"description\":\"SAVE UP TO 30 % OFF\",\"image\":\"1731155250_bt-discount-banner.webp\"}', '2024-11-09 06:27:30', '2024-11-10 06:04:29'),
(12, 'BeautyBanner', 'BeautyBanner', '{\"title\":\"The Power Of Healthy Skin\",\"description\":\"On the top advertising a Courses available business online includes assembling site on top advertising.\",\"video_url\":\"\",\"image\":\"1731159740_beauty-hero-banner.webp\"}', '2024-11-09 07:42:20', '2024-12-26 04:54:29'),
(13, 'CarBanner', 'CarBanner', '{\"title\":\"FIND YOUR CAR\",\"description\":\"On the top advertising a Courses available business to online includes assembling site on top advertising Courses includes .\",\"image\":\"1733034680_car-hero-car.webp\"}', '2024-12-01 00:31:20', '2024-12-01 00:31:20'),
(14, 'CarMotion', 'CarMotion', '{\"title\":\"EXCLUSIVE CARS FOR SELL\",\"description\":\"UP TO 30% OFF\",\"image\":\"1733035325_car-discount-banner.webp\"}', '2024-12-01 00:42:05', '2024-12-01 00:42:05'),
(15, 'HotelBanner', 'HotelBanner', '{\"title\":\"Stay with us feel like home\",\"description\":\"Awesome site. on the top advertising a Courses available business online includes assembling site on the advertising.\",\"video_url\":\"\",\"image\":\"1733381111_hotel-hero-banner.svg\"}', '2024-12-05 00:45:11', '2024-12-05 00:47:34'),
(16, 'HotelBooking', 'HotelBooking', '{\"title\":\"Book a room today\",\"image\":\"1733382195_book-room-banner.webp\"}', '2024-12-05 01:03:15', '2024-12-05 01:03:15'),
(17, 'HotelExclusive', 'HotelExclusive', '{\"title\":\"Exclusive Hotel Deals\",\"description\":\"Just For You -70%\",\"image\":\"1733383432_bg-card-banner1.webp\"}', '2024-12-05 01:23:52', '2024-12-05 01:24:42'),
(18, 'HotelSize', 'HotelSize', '{\"title\":\"Size the moment\",\"description\":\"Save 15% or more when you book and stay before 1 October 2024\",\"image\":\"1733383510_bg-card-banner2.webp\"}', '2024-12-05 01:25:10', '2024-12-05 01:25:10'),
(19, 'RealEstateBanner', 'RealEstateBanner', '{\"title\":\"Modern Living For Everyone\",\"description\":\"On the top advertising a Courses available business to online includes assembling site on top advertising includes .\",\"image\":\"1733810127_real-estate-banner.webp\"}', '2024-12-09 23:52:41', '2024-12-09 23:55:27'),
(20, 'RealEstateDiscount', 'RealEstateDiscount', '{\"title\":\"Save Up To 30%\",\"description\":\"Offer Ends On 24 June, 2024\",\"image\":\"1733810717_re-discount-banner.webp\"}', '2024-12-10 00:05:17', '2024-12-10 00:05:17'),
(21, 'RestaurantBanner', 'RestaurantBanner', '{\"title\":\"Be The Fastest In Delivering Your Food\",\"description\":\"Awesome site. on the top advertising a Courses available business online includes assembling site on the site on the top advertising\",\"image1\":\"1734850174_1_restaurant-banner-shape1.webp\",\"image2\":\"1734850164_2_restaurant-banner-shape2.webp\"}', '2024-12-22 00:49:24', '2024-12-22 00:49:34'),
(22, 'RestaurantExclusive', 'RestaurantExclusive', '{\"title\":\"Exclusive Restaurant Deals\",\"description\":\"Just For You -70%\",\"image\":\"1734850976_rt-deal-bg.webp\"}', '2024-12-22 01:02:29', '2024-12-22 01:02:56'),
(23, 'RestaurantDiscount', 'RestaurantDiscount', '{\"title\":\"Get up to\",\"description\":\"20% OFF\",\"image\":\"1734852834_dark-card-img.svg\"}', '2024-12-22 01:33:54', '2024-12-22 01:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_listings`
--

CREATE TABLE `hotel_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` longtext COLLATE utf8mb4_unicode_ci,
  `country` bigint(20) NOT NULL,
  `city` bigint(20) NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phrase` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translated` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(61, 'english', 'Gibson', 'Gibson 1254', '2024-07-10 04:59:40', '2024-07-11 05:30:32'),
(63, 'english', 'Language Created Successfully', 'Language Created Successfully', '2024-07-10 10:59:40', '2024-07-11 05:30:31'),
(65, 'english', 'Success', 'Success', '2024-07-10 10:59:40', '2024-07-11 01:28:17'),
(67, 'english', 'System name', 'System name', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(69, 'english', 'System Email', 'System Email', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(71, 'english', 'System Currency', 'System Currency', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(73, 'english', 'Currency Position', 'Currency Position', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(75, 'english', 'Left', 'Left', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(77, 'english', 'Right', 'Right', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(79, 'english', 'Office \r\n                    Address', 'Office \r\n                    Address', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(81, 'english', 'Phone Number', 'Phone Number', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(83, 'english', 'System Language', 'System Language', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(85, 'english', 'Select a system language', 'Select a system language', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(87, 'english', 'English', 'English', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(90, 'english', 'Country', 'Country', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(92, 'english', 'Select a Country', 'Select a Country', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(94, 'english', 'Afghanistan', 'Afghanistan', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(96, 'english', 'Aland Islands', 'Aland Islands', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(98, 'english', 'Albania', 'Albania', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(100, 'english', 'Algeria', 'Algeria', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(102, 'english', 'AmericanSamoa', 'AmericanSamoa', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(104, 'english', 'Andorra', 'Andorra', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(106, 'english', 'Angola', 'Angola', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(108, 'english', 'Anguilla', 'Anguilla', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(110, 'english', 'Antarctica', 'Antarctica', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(112, 'english', 'Antigua and Barbuda', 'Antigua and Barbuda', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(114, 'english', 'Argentina', 'Argentina', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(116, 'english', 'Armenia', 'Armenia', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(118, 'english', 'Aruba', 'Aruba', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(120, 'english', 'Australia', 'Australia', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(122, 'english', 'Austria', 'Austria', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(124, 'english', 'Azerbaijan', 'Azerbaijan', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(126, 'english', 'Bahamas', 'Bahamas', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(128, 'english', 'Bahrain', 'Bahrain', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(130, 'english', 'Bangladesh', 'Bangladesh', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(132, 'english', 'Barbados', 'Barbados', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(134, 'english', 'Belarus', 'Belarus', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(136, 'english', 'Belgium', 'Belgium', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(138, 'english', 'Belize', 'Belize', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(140, 'english', 'Benin', 'Benin', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(142, 'english', 'Bermuda', 'Bermuda', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(144, 'english', 'Bhutan', 'Bhutan', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(146, 'english', 'Bolivia, Plurination', 'Bolivia, Plurination', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(148, 'english', 'Bosnia and Herzegovi', 'Bosnia and Herzegovi', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(150, 'english', 'Botswana', 'Botswana', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(152, 'english', 'Brazil', 'Brazil', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(154, 'english', 'British Indian Ocean', 'British Indian Ocean', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(156, 'english', 'Brunei Darussalam', 'Brunei Darussalam', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(158, 'english', 'Bulgaria', 'Bulgaria', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(160, 'english', 'Burkina Faso', 'Burkina Faso', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(162, 'english', 'Burundi', 'Burundi', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(164, 'english', 'Cambodia', 'Cambodia', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(166, 'english', 'Cameroon', 'Cameroon', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(168, 'english', 'Canada', 'Canada', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(170, 'english', 'Cape Verde', 'Cape Verde', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(172, 'english', 'Cayman Islands', 'Cayman Islands', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(174, 'english', 'Central African Repu', 'Central African Repu', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(176, 'english', 'Chad', 'Chad', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(178, 'english', 'Chile', 'Chile', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(180, 'english', 'China', 'China', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(182, 'english', 'Christmas Island', 'Christmas Island', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(184, 'english', 'Cocos (Keeling) Isla', 'Cocos (Keeling) Isla', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(186, 'english', 'Colombia', 'Colombia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(188, 'english', 'Comoros', 'Comoros', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(190, 'english', 'Congo', 'Congo', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(192, 'english', 'Congo, The Democrati', 'Congo, The Democrati', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(194, 'english', 'Cook Islands', 'Cook Islands', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(196, 'english', 'Costa Rica', 'Costa Rica', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(198, 'english', 'Cote d\'Ivoire', 'Cote d\'Ivoire', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(200, 'english', 'Croatia', 'Croatia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(202, 'english', 'Cuba', 'Cuba', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(204, 'english', 'Cyprus', 'Cyprus', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(206, 'english', 'Czech Republic', 'Czech Republic', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(208, 'english', 'Denmark', 'Denmark', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(210, 'english', 'Djibouti', 'Djibouti', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(212, 'english', 'Dominica', 'Dominica', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(214, 'english', 'Dominican Republic', 'Dominican Republic', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(216, 'english', 'Ecuador', 'Ecuador', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(218, 'english', 'Egypt', 'Egypt', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(220, 'english', 'El Salvador', 'El Salvador', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(222, 'english', 'Equatorial Guinea', 'Equatorial Guinea', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(224, 'english', 'Eritrea', 'Eritrea', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(226, 'english', 'Estonia', 'Estonia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(228, 'english', 'Ethiopia', 'Ethiopia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(230, 'english', 'Falkland Islands (Ma', 'Falkland Islands (Ma', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(232, 'english', 'Faroe Islands', 'Faroe Islands', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(234, 'english', 'Fiji', 'Fiji', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(236, 'english', 'Finland', 'Finland', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(238, 'english', 'France', 'France', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(240, 'english', 'French Guiana', 'French Guiana', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(242, 'english', 'French Polynesia', 'French Polynesia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(244, 'english', 'Gabon', 'Gabon', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(246, 'english', 'Gambia', 'Gambia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(248, 'english', 'Georgia', 'Georgia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(250, 'english', 'Germany', 'Germany', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(252, 'english', 'Ghana', 'Ghana', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(254, 'english', 'Gibraltar', 'Gibraltar', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(256, 'english', 'Greece', 'Greece', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(258, 'english', 'Greenland', 'Greenland', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(260, 'english', 'Grenada', 'Grenada', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(262, 'english', 'Guadeloupe', 'Guadeloupe', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(264, 'english', 'Guam', 'Guam', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(266, 'english', 'Guatemala', 'Guatemala', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(268, 'english', 'Guernsey', 'Guernsey', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(270, 'english', 'Guinea', 'Guinea', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(272, 'english', 'Guinea-Bissau', 'Guinea-Bissau', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(274, 'english', 'Guyana', 'Guyana', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(276, 'english', 'Haiti', 'Haiti', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(278, 'english', 'Holy See (Vatican Ci', 'Holy See (Vatican Ci', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(280, 'english', 'Honduras', 'Honduras', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(282, 'english', 'Hong Kong', 'Hong Kong', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(284, 'english', 'Hungary', 'Hungary', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(286, 'english', 'Iceland', 'Iceland', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(288, 'english', 'India', 'India', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(290, 'english', 'Indonesia', 'Indonesia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(292, 'english', 'Iran, Islamic Republ', 'Iran, Islamic Republ', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(294, 'english', 'Iraq', 'Iraq', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(296, 'english', 'Ireland', 'Ireland', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(298, 'english', 'Isle of Man', 'Isle of Man', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(300, 'english', 'Israel', 'Israel', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(302, 'english', 'Italy', 'Italy', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(304, 'english', 'Jamaica', 'Jamaica', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(306, 'english', 'Japan', 'Japan', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(308, 'english', 'Jersey', 'Jersey', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(310, 'english', 'Jordan', 'Jordan', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(312, 'english', 'Kazakhstan', 'Kazakhstan', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(314, 'english', 'Kenya', 'Kenya', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(316, 'english', 'Kiribati', 'Kiribati', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(318, 'english', 'Korea, Democratic Pe', 'Korea, Democratic Pe', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(320, 'english', 'Korea, Republic of S', 'Korea, Republic of S', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(322, 'english', 'Kuwait', 'Kuwait', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(324, 'english', 'Kyrgyzstan', 'Kyrgyzstan', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(326, 'english', 'Laos', 'Laos', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(328, 'english', 'Latvia', 'Latvia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(330, 'english', 'Lebanon', 'Lebanon', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(332, 'english', 'Lesotho', 'Lesotho', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(334, 'english', 'Liberia', 'Liberia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(336, 'english', 'Libyan Arab Jamahiri', 'Libyan Arab Jamahiri', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(338, 'english', 'Liechtenstein', 'Liechtenstein', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(340, 'english', 'Lithuania', 'Lithuania', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(342, 'english', 'Luxembourg', 'Luxembourg', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(344, 'english', 'Macao', 'Macao', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(346, 'english', 'Macedonia', 'Macedonia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(348, 'english', 'Madagascar', 'Madagascar', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(350, 'english', 'Malawi', 'Malawi', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(352, 'english', 'Malaysia', 'Malaysia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(354, 'english', 'Maldives', 'Maldives', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(356, 'english', 'Mali', 'Mali', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(358, 'english', 'Malta', 'Malta', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(360, 'english', 'Marshall Islands', 'Marshall Islands', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(362, 'english', 'Martinique', 'Martinique', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(364, 'english', 'Mauritania', 'Mauritania', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(366, 'english', 'Mauritius', 'Mauritius', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(368, 'english', 'Mayotte', 'Mayotte', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(370, 'english', 'Mexico', 'Mexico', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(372, 'english', 'Micronesia, Federate', 'Micronesia, Federate', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(374, 'english', 'Moldova', 'Moldova', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(376, 'english', 'Monaco', 'Monaco', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(378, 'english', 'Mongolia', 'Mongolia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(380, 'english', 'Montenegro', 'Montenegro', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(382, 'english', 'Montserrat', 'Montserrat', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(384, 'english', 'Morocco', 'Morocco', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(386, 'english', 'Mozambique', 'Mozambique', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(388, 'english', 'Myanmar', 'Myanmar', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(390, 'english', 'Namibia', 'Namibia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(392, 'english', 'Nauru', 'Nauru', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(394, 'english', 'Nepal', 'Nepal', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(396, 'english', 'Netherlands', 'Netherlands', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(398, 'english', 'Netherlands Antilles', 'Netherlands Antilles', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(400, 'english', 'New Caledonia', 'New Caledonia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(402, 'english', 'New Zealand', 'New Zealand', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(404, 'english', 'Nicaragua', 'Nicaragua', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(406, 'english', 'Niger', 'Niger', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(408, 'english', 'Nigeria', 'Nigeria', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(410, 'english', 'Niue', 'Niue', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(412, 'english', 'Norfolk Island', 'Norfolk Island', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(414, 'english', 'Northern Mariana Isl', 'Northern Mariana Isl', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(416, 'english', 'Norway', 'Norway', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(418, 'english', 'Oman', 'Oman', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(420, 'english', 'Pakistan', 'Pakistan', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(422, 'english', 'Palau', 'Palau', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(424, 'english', 'Palestinian Territor', 'Palestinian Territor', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(426, 'english', 'Panama', 'Panama', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(428, 'english', 'Papua New Guinea', 'Papua New Guinea', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(430, 'english', 'Paraguay', 'Paraguay', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(432, 'english', 'Peru', 'Peru', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(434, 'english', 'Philippines', 'Philippines', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(436, 'english', 'Pitcairn', 'Pitcairn', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(438, 'english', 'Poland', 'Poland', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(440, 'english', 'Portugal', 'Portugal', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(442, 'english', 'Puerto Rico', 'Puerto Rico', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(444, 'english', 'Qatar', 'Qatar', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(446, 'english', 'Romania', 'Romania', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(448, 'english', 'Russia', 'Russia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(450, 'english', 'Rwanda', 'Rwanda', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(452, 'english', 'Reunion', 'Reunion', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(454, 'english', 'Saint Barthelemy', 'Saint Barthelemy', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(456, 'english', 'Saint Helena, Ascens', 'Saint Helena, Ascens', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(458, 'english', 'Saint Kitts and Nevi', 'Saint Kitts and Nevi', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(460, 'english', 'Saint Lucia', 'Saint Lucia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(462, 'english', 'Saint Martin', 'Saint Martin', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(464, 'english', 'Saint Pierre and Miq', 'Saint Pierre and Miq', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(466, 'english', 'Saint Vincent and th', 'Saint Vincent and th', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(468, 'english', 'Samoa', 'Samoa', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(470, 'english', 'San Marino', 'San Marino', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(472, 'english', 'Sao Tome and Princip', 'Sao Tome and Princip', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(474, 'english', 'Saudi Arabia', 'Saudi Arabia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(476, 'english', 'Senegal', 'Senegal', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(478, 'english', 'Serbia', 'Serbia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(480, 'english', 'Seychelles', 'Seychelles', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(482, 'english', 'Sierra Leone', 'Sierra Leone', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(484, 'english', 'Singapore', 'Singapore', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(486, 'english', 'Slovakia', 'Slovakia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(488, 'english', 'Slovenia', 'Slovenia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(490, 'english', 'Solomon Islands', 'Solomon Islands', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(492, 'english', 'Somalia', 'Somalia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(494, 'english', 'South Africa', 'South Africa', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(496, 'english', 'South Georgia and th', 'South Georgia and th', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(498, 'english', 'Spain', 'Spain', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(500, 'english', 'Sri Lanka', 'Sri Lanka', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(502, 'english', 'Sudan', 'Sudan', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(504, 'english', 'Suriname', 'Suriname', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(506, 'english', 'Svalbard and Jan May', 'Svalbard and Jan May', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(508, 'english', 'Swaziland', 'Swaziland', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(510, 'english', 'Sweden', 'Sweden', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(512, 'english', 'Switzerland', 'Switzerland', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(514, 'english', 'Syrian Arab Republic', 'Syrian Arab Republic', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(516, 'english', 'Taiwan', 'Taiwan', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(518, 'english', 'Tajikistan', 'Tajikistan', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(520, 'english', 'Tanzania, United Rep', 'Tanzania, United Rep', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(522, 'english', 'Thailand', 'Thailand', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(524, 'english', 'Timor-Leste', 'Timor-Leste', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(526, 'english', 'Togo', 'Togo', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(528, 'english', 'Tokelau', 'Tokelau', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(530, 'english', 'Tonga', 'Tonga', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(532, 'english', 'Trinidad and Tobago', 'Trinidad and Tobago', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(534, 'english', 'Tunisia', 'Tunisia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(536, 'english', 'Turkey', 'Turkey', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(538, 'english', 'Turkmenistan', 'Turkmenistan', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(540, 'english', 'Turks and Caicos Isl', 'Turks and Caicos Isl', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(542, 'english', 'Tuvalu', 'Tuvalu', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(544, 'english', 'Uganda', 'Uganda', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(546, 'english', 'Ukraine', 'Ukraine', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(548, 'english', 'United Arab Emirates', 'United Arab Emirates', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(550, 'english', 'United Kingdom', 'United Kingdom', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(552, 'english', 'United States', 'United States', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(554, 'english', 'Uruguay', 'Uruguay', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(556, 'english', 'Uzbekistan', 'Uzbekistan', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(558, 'english', 'Vanuatu', 'Vanuatu', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(560, 'english', 'Venezuela, Bolivaria', 'Venezuela, Bolivaria', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(562, 'english', 'Vietnam', 'Vietnam', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(564, 'english', 'Virgin Islands, Brit', 'Virgin Islands, Brit', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(566, 'english', 'Virgin Islands, U.S.', 'Virgin Islands, U.S.', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(568, 'english', 'Wallis and Futuna', 'Wallis and Futuna', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(570, 'english', 'Yemen', 'Yemen', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(572, 'english', 'Zambia', 'Zambia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(574, 'english', 'Zimbabwe', 'Zimbabwe', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(576, 'english', 'Purchase Code', 'Purchase Code', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(578, 'english', 'Email Verification', 'Email Verification', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(580, 'english', 'Select email verification', 'Select email verification', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(582, 'english', 'Enable', 'Enable', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(584, 'english', 'Disable', 'Disable', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(586, 'english', 'Map access token', 'Map access token', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(588, 'english', 'Max zoom level', 'Max zoom level', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(590, 'english', 'Default location', 'Default location', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(592, 'english', 'Update', 'Update', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(594, 'english', 'Facebook Link', 'Facebook Link', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(596, 'english', 'Twitter Link', 'Twitter Link', '2024-07-10 11:02:39', '2024-07-11 01:28:17'),
(598, 'english', 'Linkedin Link', 'Linkedin Link', '2024-07-10 11:02:39', '2024-07-11 01:28:17'),
(600, 'english', 'Update File', 'Update File', '2024-07-10 11:02:39', '2024-07-11 01:28:17'),
(602, 'english', 'Setting update successfully!', 'Setting update successfully!', '2024-07-10 11:02:48', '2024-07-11 01:28:17'),
(603, 'english', 'System Settings', 'System Settings', '2024-07-10 11:02:48', '2024-07-11 01:28:17'),
(604, 'english', 'Dashboard', 'Dashboard', '2024-07-10 11:02:49', '2024-07-11 03:28:40'),
(605, 'english', 'Listing Categories', 'Listing Categories', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(606, 'english', 'Doctor', 'Doctor', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(607, 'english', 'Beauty', 'Beauty', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(608, 'english', 'Car', 'Car', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(609, 'english', 'Real Estate', 'Real Estate', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(610, 'english', 'Hotel', 'Hotel', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(611, 'english', 'Restaurant', 'Restaurant', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(612, 'english', 'Cities', 'Cities', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(613, 'english', 'Listing Amenities', 'Listing Amenities', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(614, 'english', 'Directory Listings', 'Directory Listings', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(615, 'english', 'All Listings', 'All Listings', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(616, 'english', 'Add Listing', 'Add Listing', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(617, 'english', 'Claimed Listings', 'Claimed Listings', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(618, 'english', 'Reported Listing', 'Reported Listing', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(619, 'english', 'Subscription History', 'Subscription History', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(620, 'english', 'Pricing', 'Pricing', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(621, 'english', 'Users', 'Users', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(622, 'english', 'Add New', 'Add New', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(623, 'english', 'All Doctors', 'All Doctors', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(624, 'english', 'Agent', 'Agent', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(625, 'english', 'All Agents', 'All Agents', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(626, 'english', 'Customer', 'Customer', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(627, 'english', 'All Customers', 'All Customers', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(628, 'english', 'Newsletter', 'Newsletter', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(629, 'english', 'Manage Newsletter', 'Manage Newsletter', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(630, 'english', 'Subscribed User', 'Subscribed User', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(631, 'english', 'Contacts', 'Contacts', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(632, 'english', 'Blogs', 'Blogs', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(633, 'english', 'All Blogs', 'All Blogs', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(634, 'english', 'Pending Blogs', 'Pending Blogs', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(635, 'english', 'Add Blogs', 'Add Blogs', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(636, 'english', 'Blog Category', 'Blog Category', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(637, 'english', 'Settings', 'Settings', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(638, 'english', 'Website Settings', 'Website Settings', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(639, 'english', 'Payment Settings', 'Payment Settings', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(640, 'english', 'Language Settings', 'Language Settings', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(641, 'english', 'Email Settings', 'Email Settings', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(642, 'english', 'Manage Profile', 'Manage Profile', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(643, 'english', 'Atlas Admin Panel', 'Atlas Admin Panel', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(644, 'english', 'View site', 'View site', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(645, 'english', 'Language', 'Language', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(646, 'english', 'Admin', 'Admin', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(647, 'english', 'My Profile', 'My Profile', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(648, 'english', 'Sign Out', 'Sign Out', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(649, 'english', 'Modal title', 'Modal title', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(650, 'english', 'Are you sure!', 'Are you sure!', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(651, 'english', 'If you this data then can\'t be undo', 'If you this data then can\'t be undo', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(652, 'english', 'Close', 'Close', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(653, 'english', 'Delete', 'Delete', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(654, 'english', 'Add New Language', 'Add New Language', '2024-07-10 11:02:58', '2024-07-11 01:28:17'),
(655, 'english', 'ID', 'ID', '2024-07-10 11:02:58', '2024-07-11 01:28:17'),
(656, 'english', 'Language Name', 'Language Name', '2024-07-10 11:02:58', '2024-07-11 01:28:17'),
(657, 'english', 'Action', 'Action', '2024-07-10 11:02:58', '2024-07-11 01:28:17'),
(658, 'english', 'Update language', 'Update language', '2024-07-10 11:02:59', '2024-07-11 01:28:17'),
(659, 'english', 'Edit', 'Edit', '2024-07-10 11:02:59', '2024-07-11 01:28:17'),
(660, 'english', 'Language Deleted Successfully', 'Language Deleted Successfully', '2024-07-10 11:03:37', '2024-07-11 01:28:17'),
(661, 'english', 'Edit Phrase', 'Edit Phrase', '2024-07-10 11:33:03', '2024-07-11 01:28:17'),
(662, 'english', 'Enter language name', 'Enter language name', '2024-07-10 11:34:19', '2024-07-11 01:28:17'),
(663, 'english', 'Create', 'Create', '2024-07-10 11:34:19', '2024-07-11 01:28:17'),
(664, 'english', 'System settings updated successfully.', 'System settings updated successfully.', '2024-07-10 11:42:24', '2024-07-11 01:28:17'),
(665, 'english', 'Language updated successfully.', 'Language updated successfully.', '2024-07-10 11:43:25', '2024-07-11 01:28:17'),
(666, 'english', 'Gib124', 'Gib124', '2024-07-10 11:43:31', '2024-07-11 01:28:17'),
(667, 'english', 'Home Page', 'Home Page', '2024-07-11 06:40:02', '2024-07-11 01:28:17'),
(668, 'english', 'Admin Dashboard', 'Admin Dashboard', '2024-07-11 07:26:03', '2024-07-11 01:28:17'),
(669, 'english', 'Change Phrase', 'Change Phrase', '2024-07-11 07:31:20', '2024-07-11 07:31:20'),
(670, 'english', 'Language Phrase', 'Language Phrase', '2024-07-11 07:31:20', '2024-07-11 07:31:20'),
(671, 'english', 'Save', 'Save', '2024-07-11 07:37:18', '2024-07-11 07:37:18'),
(673, 'english', 'Bangla', 'Bangla', '2024-07-11 09:29:45', '2024-07-11 09:29:45'),
(1006, 'english', 'Protocol (smtp or ssmtp or mail)', 'Protocol (smtp or ssmtp or mail)', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1008, 'english', 'Protocol (smtp)', 'Protocol (smtp)', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1010, 'english', 'Smtp crypto (ssl or tls)', 'Smtp crypto (ssl or tls)', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1012, 'english', 'Crypto (ssl or tls)', 'Crypto (ssl or tls)', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1014, 'english', 'Smtp host', 'Smtp host', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1016, 'english', 'Smtp port', 'Smtp port', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1018, 'english', 'Smtp username', 'Smtp username', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1020, 'english', 'Smtp password', 'Smtp password', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1022, 'english', 'Add New Blog', 'Add New Blog', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1024, 'english', 'Image', 'Image', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1026, 'english', 'Title', 'Title', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1028, 'english', 'Category', 'Category', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1030, 'english', 'Status', 'Status', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1032, 'english', 'Active', 'Active', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1034, 'english', 'Change Status', 'Change Status', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1036, 'english', 'Profile', 'Profile', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1038, 'english', 'Profile Settings', 'Profile Settings', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1040, 'english', 'Profile Information', 'Profile Information', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1042, 'english', 'User Name', 'User Name', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1044, 'english', 'Enter user name', 'Enter user name', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1046, 'english', 'User Email', 'User Email', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1048, 'english', 'Enter user email', 'Enter user email', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1050, 'english', 'User Image', 'User Image', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1052, 'english', 'Password Update', 'Password Update', '2024-07-11 09:52:55', '2024-07-11 09:52:55'),
(1054, 'english', 'Current Password', 'Current Password', '2024-07-11 09:52:55', '2024-07-11 09:52:55'),
(1056, 'english', 'New Password', 'New Password', '2024-07-11 09:52:55', '2024-07-11 09:52:55'),
(1058, 'english', 'Confirm Password', 'Confirm Password', '2024-07-11 09:52:55', '2024-07-11 09:52:55'),
(1060, 'english', 'Info', 'Info', '2024-07-11 09:54:24', '2024-07-11 09:54:24'),
(1063, 'english', 'User Full Name *', 'User Full Name *', '2024-07-11 09:54:24', '2024-07-11 09:54:24'),
(1065, 'english', 'Enter name', 'Enter name', '2024-07-11 09:54:24', '2024-07-11 09:54:24'),
(1067, 'english', 'Email Address *', 'Email Address *', '2024-07-11 09:54:24', '2024-07-11 09:54:24'),
(1069, 'english', 'Enter email', 'Enter email', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1071, 'english', 'Phone Number *', 'Phone Number *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1073, 'english', 'Enter phone', 'Enter phone', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1075, 'english', 'Gender *', 'Gender *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1077, 'english', 'Select Gender', 'Select Gender', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1079, 'english', 'Male', 'Male', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1081, 'english', 'Female', 'Female', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1083, 'english', 'Country *', 'Country *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1085, 'english', 'Select Country', 'Select Country', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1087, 'english', 'Enter facebook link', 'Enter facebook link', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1089, 'english', 'City *', 'City *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1091, 'english', 'Select City', 'Select City', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1093, 'english', 'Enter linkedin link', 'Enter linkedin link', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1095, 'english', 'Enter twitter link', 'Enter twitter link', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1097, 'english', 'Password *', 'Password *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1099, 'english', 'Enter password', 'Enter password', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1101, 'english', 'Confirm Password *', 'Confirm Password *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1103, 'english', 'Appointments', 'Appointments', '2024-07-11 10:28:57', '2024-07-11 10:28:57'),
(1105, 'english', 'Manage Appointment', 'Manage Appointment', '2024-07-11 10:29:03', '2024-07-11 10:29:03'),
(1108, 'english', 'Create Listing', 'Create Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1110, 'english', 'Listing Type', 'Listing Type', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1112, 'english', 'Select listing type', 'Select listing type', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1114, 'english', 'Beauty Listing', 'Beauty Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1116, 'english', 'Car Listing', 'Car Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1118, 'english', 'Real Estate Listing', 'Real Estate Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1120, 'english', 'Hotel Listing', 'Hotel Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1122, 'english', 'Restaurant Listing', 'Restaurant Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1124, 'english', 'Listing Category', 'Listing Category', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1126, 'english', 'Select listing type first', 'Select listing type first', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1128, 'english', 'Select Listing type from dropdown.', 'Select Listing type from dropdown.', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1130, 'english', 'Select listing category', 'Select listing category', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1132, 'english', 'Basic Info', 'Basic Info', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1134, 'english', 'Address', 'Address', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1136, 'english', 'Seo', 'Seo', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1138, 'english', 'Media', 'Media', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1140, 'english', 'Listing title', 'Listing title', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1142, 'english', 'Enter listing title', 'Enter listing title', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1144, 'english', 'Brand', 'Brand', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1146, 'english', 'Select listing brand', 'Select listing brand', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1148, 'english', 'Model', 'Model', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1150, 'english', 'Select listing model', 'Select listing model', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1152, 'english', 'Year', 'Year', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1154, 'english', 'Select listing year', 'Select listing year', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1156, 'english', 'Car Type', 'Car Type', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1158, 'english', 'Select listing car type', 'Select listing car type', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1160, 'english', 'Transmission', 'Transmission', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1162, 'english', 'Select listing transmission', 'Select listing transmission', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1164, 'english', 'Fuel Type', 'Fuel Type', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1166, 'english', 'Select listing fuel_type', 'Select listing fuel_type', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1168, 'english', 'Cylinder', 'Cylinder', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1170, 'english', 'Select listing Cylinder', 'Select listing Cylinder', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1172, 'english', 'Interior Color', 'Interior Color', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1174, 'english', 'Select listing interior color', 'Select listing interior color', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1176, 'english', 'Exterior Color', 'Exterior Color', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1178, 'english', 'Select listing exterior color', 'Select listing exterior color', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1180, 'english', 'Drive Train', 'Drive Train', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1182, 'english', 'Select listing drive train', 'Select listing drive train', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1184, 'english', 'Trim', 'Trim', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1186, 'english', 'Select listing trim', 'Select listing trim', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1188, 'english', 'Engin_size', 'Engin_size', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1190, 'english', 'Mileage', 'Mileage', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1192, 'english', '00', '00', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1194, 'english', 'vin', 'vin', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1196, 'english', '4jh45ed4', '4jh45ed4', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1198, 'english', 'price', 'price', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1200, 'english', '00.00', '00.00', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1202, 'english', 'discount_price', 'discount_price', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1204, 'english', 'Visibility', 'Visibility', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1206, 'english', 'Select listing visibility', 'Select listing visibility', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1208, 'english', 'Visible', 'Visible', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1210, 'english', 'Hidden', 'Hidden', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1212, 'english', 'Description', 'Description', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1214, 'english', 'Enter listing description', 'Enter listing description', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1216, 'english', 'Select listing country', 'Select listing country', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1218, 'english', 'City', 'City', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1220, 'english', 'Select listing city', 'Select listing city', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1222, 'english', 'Address', 'Address', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1224, 'english', 'Enter listing address', 'Enter listing address', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1226, 'english', 'Post Code', 'Post Code', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1228, 'english', 'Enter post code', 'Enter post code', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1230, 'english', 'Latitude', 'Latitude', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1232, 'english', 'Enter Latitude code', 'Enter Latitude code', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1234, 'english', 'Longitude', 'Longitude', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1236, 'english', 'Enter longitude code', 'Enter longitude code', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1238, 'english', 'Meta Title', 'Meta Title', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1240, 'english', 'Enter meta title', 'Enter meta title', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1242, 'english', 'Meta keywords', 'Meta keywords', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1244, 'english', 'Keyword1; keyword2; keyword3;', 'Keyword1; keyword2; keyword3;', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1246, 'english', 'Meta Description', 'Meta Description', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1248, 'english', 'Enter meta description', 'Enter meta description', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1250, 'english', 'OG title', 'OG title', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1252, 'english', 'Enter og title', 'Enter og title', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1254, 'english', 'Canonical URL', 'Canonical URL', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1256, 'english', 'Enter canonical URL', 'Enter canonical URL', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1258, 'english', 'OG Description', 'OG Description', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1260, 'english', 'Json ID', 'Json ID', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1262, 'english', 'Enter json ID', 'Enter json ID', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1264, 'english', 'OG Image', 'OG Image', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1266, 'english', 'Listing Images', 'Listing Images', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1268, 'english', 'Click to upload SVG, PNG, JPG, or GIF', 'Click to upload SVG, PNG, JPG, or GIF', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1270, 'english', 'Visible', 'Visible', '2024-07-14 07:03:19', '2024-07-14 07:03:19'),
(1272, 'english', 'Preview Video', 'Preview Video', '2024-07-14 07:03:21', '2024-07-14 07:03:21'),
(1274, 'english', 'Enter youtube link', 'Enter youtube link', '2024-07-14 07:03:21', '2024-07-14 07:03:21'),
(1276, 'english', 'Beauty Listings', 'Beauty Listings', '2024-07-14 10:38:12', '2024-07-14 10:38:12'),
(1278, 'english', 'Listing', 'Listing', '2024-07-14 10:40:23', '2024-07-14 10:40:23'),
(1280, 'english', 'Car Listings', 'Car Listings', '2024-07-14 10:43:35', '2024-07-14 10:43:35'),
(1282, 'english', 'Hotel Listings', 'Hotel Listings', '2024-07-14 10:43:38', '2024-07-14 10:43:38'),
(1284, 'english', 'Real Estate Listings', 'Real Estate Listings', '2024-07-14 10:43:44', '2024-07-14 10:43:44'),
(1286, 'english', 'Restaurant Listings', 'Restaurant Listings', '2024-07-14 10:43:48', '2024-07-14 10:43:48'),
(1288, 'english', 'Listing List', 'Listing List', '2024-07-14 10:57:32', '2024-07-14 10:57:32'),
(1290, 'english', 'Lists', 'Lists', '2024-07-14 10:57:32', '2024-07-14 10:57:32'),
(1292, 'english', 'Add New Listing', 'Add New Listing', '2024-07-14 10:57:32', '2024-07-14 10:57:32'),
(1294, 'english', 'Change visibility', 'Change visibility', '2024-07-14 10:57:32', '2024-07-14 10:57:32'),
(1296, 'english', 'Update Listing', 'Update Listing', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1298, 'english', 'Listing Update', 'Listing Update', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1300, 'english', 'Services', 'Services', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1302, 'english', 'Opening Time', 'Opening Time', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1304, 'english', 'Team Members', 'Team Members', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1306, 'english', 'Add some listing service', 'Add some listing service', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1308, 'english', 'Add New Service', 'Add New Service', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1310, 'english', 'Add Service', 'Add Service', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1312, 'english', 'From', 'From', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1314, 'english', 'Opening', 'Opening', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1316, 'english', 'Closed', 'Closed', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1318, 'english', 'Select some team members', 'Select some team members', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1320, 'english', 'Add Team Member', 'Add Team Member', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1322, 'english', 'Add Team', 'Add Team', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1324, 'english', 'Amenities', 'Amenities', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1326, 'english', 'Add', 'Add', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1328, 'english', 'Cylinder', 'Cylinder', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1330, 'english', 'Engine Size', 'Engine Size', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1332, 'english', 'Amenities List', 'Amenities List', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1334, 'english', 'Name', 'Name', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1336, 'english', 'Icon', 'Icon', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1338, 'english', 'Update Amenities', 'Update Amenities', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1340, 'english', 'Location', 'Location', '2024-07-15 09:48:10', '2024-07-15 09:48:10'),
(1342, 'english', 'Map Position', 'Map Position', '2024-07-16 10:38:48', '2024-07-16 10:38:48'),
(1344, 'english', 'Right Sidebar', 'Right Sidebar', '2024-07-16 10:38:48', '2024-07-16 10:38:48'),
(1346, 'english', 'Top Header', 'Top Header', '2024-07-16 10:38:48', '2024-07-16 10:38:48'),
(1348, 'english', 'Showing', 'Showing', '2024-07-16 10:53:11', '2024-07-16 10:53:11'),
(1350, 'english', 'of', 'of', '2024-07-16 10:53:11', '2024-07-16 10:53:11'),
(1352, 'english', 'results', 'results', '2024-07-16 10:53:25', '2024-07-16 10:53:25'),
(1354, 'english', 'Map', 'Map', '2024-07-16 12:31:57', '2024-07-16 12:31:57'),
(1356, 'english', 'Features', 'Features', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1358, 'english', 'Specification', 'Specification', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1360, 'english', 'Add some listing features', 'Add some listing features', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1362, 'english', 'Add New Feature', 'Add New Feature', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1364, 'english', 'Add Feature', 'Add Feature', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1366, 'english', 'Update Feature', 'Update Feature', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1368, 'english', 'Add New Sub Feature', 'Add New Sub Feature', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1370, 'english', 'Add some listing specification', 'Add some listing specification', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1372, 'english', 'Add New Specification', 'Add New Specification', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1374, 'english', 'Add Specification', 'Add Specification', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1376, 'english', 'Enter listing sub title', 'Enter listing sub title', '2024-07-17 08:33:52', '2024-07-17 08:33:52'),
(1378, 'english', 'Listing Update successfully!', 'Listing Update successfully!', '2024-07-17 08:34:21', '2024-07-17 08:34:21'),
(1380, 'english', 'Update Specification', 'Update Specification', '2024-07-17 08:34:42', '2024-07-17 08:34:42'),
(1382, 'english', 'Add New Sub Specification', 'Add New Sub Specification', '2024-07-17 08:34:42', '2024-07-17 08:34:42'),
(1384, 'english', 'City Lists', 'City Lists', '2024-07-17 08:36:01', '2024-07-17 08:36:01'),
(1386, 'english', 'Add New City', 'Add New City', '2024-07-17 08:36:01', '2024-07-17 08:36:01'),
(1388, 'english', 'City Name', 'City Name', '2024-07-17 08:36:01', '2024-07-17 08:36:01'),
(1390, 'english', 'Edit City', 'Edit City', '2024-07-17 08:36:01', '2024-07-17 08:36:01');
INSERT INTO `languages` (`id`, `name`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(1392, 'english', 'Listing price', 'Listing price', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1394, 'english', 'Enter listing price', 'Enter listing price', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1396, 'english', 'Bed number', 'Bed number', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1398, 'english', 'Enter bed number', 'Enter bed number', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1400, 'english', 'bath number', 'bath number', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1402, 'english', 'Enter bath number', 'Enter bath number', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1404, 'english', 'Floor Size', 'Floor Size', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1406, 'english', 'Enter floor size', 'Enter floor size', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1408, 'english', 'Dimension', 'Dimension', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1410, 'english', 'Enter property dimension', 'Enter property dimension', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1412, 'english', 'Write your description', 'Write your description', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1414, 'english', 'Listing Created successfully!', 'Listing Created successfully!', '2024-07-18 05:35:28', '2024-07-18 05:35:28'),
(1416, 'english', 'Rooms', 'Rooms', '2024-07-18 05:53:09', '2024-07-18 05:53:09'),
(1418, 'english', 'Garage', 'Garage', '2024-07-18 05:53:09', '2024-07-18 05:53:09'),
(1420, 'english', 'Add some listing feature', 'Add some listing feature', '2024-07-18 05:53:09', '2024-07-18 05:53:09'),
(1422, 'english', 'Add some room', 'Add some room', '2024-07-18 05:53:10', '2024-07-18 05:53:10'),
(1424, 'english', 'Add New Room', 'Add New Room', '2024-07-18 05:53:10', '2024-07-18 05:53:10'),
(1426, 'english', 'Add Room', 'Add Room', '2024-07-18 05:53:10', '2024-07-18 05:53:10'),
(1428, 'english', 'More', 'More', '2024-07-18 06:23:17', '2024-07-18 06:23:17'),
(1430, 'english', 'See Details', 'See Details', '2024-07-18 06:34:13', '2024-07-18 06:34:13'),
(1432, 'english', 'night', 'night', '2024-07-18 06:34:13', '2024-07-18 06:34:13'),
(1434, 'english', 'Listings on Map', 'Listings on Map', '2024-07-18 06:35:16', '2024-07-18 06:35:16'),
(1436, 'english', 'Bed', 'Bed', '2024-07-18 07:50:23', '2024-07-18 07:50:23'),
(1438, 'english', 'Bath', 'Bath', '2024-07-18 07:50:23', '2024-07-18 07:50:23'),
(1440, 'english', 'sqft', 'sqft', '2024-07-18 07:50:23', '2024-07-18 07:50:23'),
(1442, 'english', 'Restaurant Listings', 'Restaurant Listings', '2024-07-25 11:18:26', '2024-07-25 11:18:26'),
(1444, 'english', 'Add New Package', 'Add New Package', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1446, 'english', 'Period', 'Period', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1448, 'english', 'listing Amount', 'listing Amount', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1450, 'english', 'Category Amount', 'Category Amount', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1452, 'english', 'Feature', 'Feature', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1454, 'english', 'Contact', 'Contact', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1456, 'english', 'Video', 'Video', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1458, 'english', 'Choice', 'Choice', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1460, 'english', 'Update Package', 'Update Package', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1462, 'english', 'Best Choice', 'Best Choice', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1464, 'english', 'Menu', 'Menu', '2024-07-29 10:20:08', '2024-07-29 10:20:08'),
(1466, 'english', 'Add some menu for restaurant', 'Add some menu for restaurant', '2024-07-29 10:20:08', '2024-07-29 10:20:08'),
(1468, 'english', 'Add New Menu', 'Add New Menu', '2024-07-29 10:20:08', '2024-07-29 10:20:08'),
(1470, 'english', 'Add menu', 'Add menu', '2024-07-29 10:20:08', '2024-07-29 10:20:08'),
(1472, 'english', 'Update Menu', 'Update Menu', '2024-07-29 10:20:08', '2024-07-29 10:20:08'),
(1474, 'english', 'Menu title', 'Menu title', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1476, 'english', 'Enter menu title', 'Enter menu title', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1478, 'english', 'Menu Sub title', 'Menu Sub title', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1480, 'english', 'Enter sub title', 'Enter sub title', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1482, 'english', 'Menu price', 'Menu price', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1484, 'english', 'Enter menu price', 'Enter menu price', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1486, 'english', 'Menu discount price', 'Menu discount price', '2024-07-29 10:20:17', '2024-07-29 10:20:17'),
(1488, 'english', 'Enter menu discount price', 'Enter menu discount price', '2024-07-29 10:20:17', '2024-07-29 10:20:17'),
(1490, 'english', 'Specification value', 'Specification value', '2024-07-29 10:20:17', '2024-07-29 10:20:17'),
(1492, 'english', 'Listing menu create successful!', 'Listing menu create successful!', '2024-07-29 10:20:40', '2024-07-29 10:20:40'),
(1494, 'english', 'Amenities Create', 'Amenities Create', '2024-07-29 10:25:59', '2024-07-29 10:25:59'),
(1496, 'english', 'Amenities Name', 'Amenities Name', '2024-07-29 10:26:15', '2024-07-29 10:26:15'),
(1498, 'english', 'Amenities icon', 'Amenities icon', '2024-07-29 10:26:15', '2024-07-29 10:26:15'),
(1500, 'english', 'Pick an Icon', 'Pick an Icon', '2024-07-29 10:26:15', '2024-07-29 10:26:15'),
(1502, 'english', 'Amenities Created Successful!', 'Amenities Created Successful!', '2024-07-29 10:26:25', '2024-07-29 10:26:25'),
(1504, 'english', 'Add some feature for restaurant', 'Add some feature for restaurant', '2024-07-29 10:32:38', '2024-07-29 10:32:38'),
(1506, 'english', 'Sub Dimension', 'Sub Dimension', '2024-07-29 10:33:54', '2024-07-29 10:33:54'),
(1508, 'english', 'Enter property sub dimension', 'Enter property sub dimension', '2024-07-29 10:33:54', '2024-07-29 10:33:54'),
(1510, 'english', 'Add some feature', 'Add some feature', '2024-07-29 10:33:56', '2024-07-29 10:33:56'),
(1512, 'english', 'Floor Plan', 'Floor Plan', '2024-07-29 10:33:56', '2024-07-29 10:33:56'),
(1514, 'english', 'Listing feature create successful!', 'Listing feature create successful!', '2024-07-29 10:36:29', '2024-07-29 10:36:29'),
(1516, 'english', 'Categories', 'Categories', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1518, 'english', 'Category Create', 'Category Create', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1520, 'english', 'Add New Category', 'Add New Category', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1522, 'english', 'Parent', 'Parent', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1524, 'english', 'Type', 'Type', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1526, 'english', 'Edit Category', 'Edit Category', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1528, 'english', 'Add New agent', 'Add New agent', '2024-07-30 08:16:42', '2024-07-30 08:16:42'),
(1530, 'english', 'No data found', 'No data found', '2024-07-30 08:16:42', '2024-07-30 08:16:42'),
(1532, 'english', 'Pending', 'Pending', '2024-07-30 08:17:50', '2024-07-30 08:17:50'),
(1534, 'english', 'Add Blog', 'Add Blog', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1536, 'english', 'back', 'back', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1538, 'english', 'Blog Title', 'Blog Title', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1540, 'english', 'Enter blog title', 'Enter blog title', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1542, 'english', 'Select blog category', 'Select blog category', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1544, 'english', 'Blog Description', 'Blog Description', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1546, 'english', 'Blog Keyword', 'Blog Keyword', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1548, 'english', 'Keyword will be:- keyword1; keyword2; keyword3', 'Keyword will be:- keyword1; keyword2; keyword3', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1550, 'english', 'Blog Banner', 'Blog Banner', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1552, 'english', 'Write Blog description', 'Write Blog description', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1554, 'english', 'Doctor Listings', 'Doctor Listings', '2024-07-30 10:51:51', '2024-07-30 10:51:51'),
(1556, 'english', 'Categories par listing', 'Categories par listing', '2024-07-31 13:00:25', '2024-07-31 13:00:25'),
(1558, 'english', 'Contact Form', 'Contact Form', '2024-07-31 13:02:52', '2024-07-31 13:02:52'),
(1560, 'english', 'Listing Video', 'Listing Video', '2024-07-31 13:03:55', '2024-07-31 13:03:55'),
(1562, 'english', 'Blog Details', 'Blog Details', '2024-08-01 07:55:55', '2024-08-01 07:55:55'),
(1564, 'english', 'Update Blog', 'Update Blog', '2024-08-04 04:39:28', '2024-08-04 04:39:28'),
(1566, 'english', 'Blog Create successfully!', 'Blog Create successfully!', '2024-08-04 04:39:31', '2024-08-04 04:39:31'),
(1568, 'english', 'Status successful!', 'Status successful!', '2024-08-04 04:39:44', '2024-08-04 04:39:44'),
(1570, 'english', 'Read More', 'Read More', '2024-08-04 04:51:14', '2024-08-04 04:51:14'),
(1572, 'english', 'Search', 'Search', '2024-08-04 05:06:01', '2024-08-04 05:06:01'),
(1574, 'english', 'Resent Post', 'Resent Post', '2024-08-04 14:20:47', '2024-08-04 14:20:47'),
(1576, 'english', 'Listing Details', 'Listing Details', '2024-08-06 07:35:49', '2024-08-06 07:35:49'),
(1578, 'english', 'Related Property', 'Related Property', '2024-08-06 09:50:35', '2024-08-06 09:50:35'),
(1580, 'english', 'Hotel Home Page', 'Hotel Home Page', '2024-09-15 10:35:16', '2024-09-15 10:35:16'),
(1582, 'english', 'Home', 'Home', '2024-09-17 06:42:10', '2024-09-17 06:42:10'),
(1584, 'english', 'Office \n                    Address', 'Office \n                    Address', '2024-09-17 07:24:39', '2024-09-17 07:24:39'),
(1586, 'english', 'Category name', 'Category name', '2024-09-17 09:23:30', '2024-09-17 09:23:30'),
(1588, 'english', 'Category parent', 'Category parent', '2024-09-17 09:23:30', '2024-09-17 09:23:30'),
(1590, 'english', 'Select Category parent', 'Select Category parent', '2024-09-17 09:23:30', '2024-09-17 09:23:30'),
(1592, 'english', 'Enter City Name', 'Enter City Name', '2024-09-17 12:16:28', '2024-09-17 12:16:28'),
(1594, 'english', 'Country Name', 'Country Name', '2024-09-17 12:16:28', '2024-09-17 12:16:28'),
(1596, 'english', 'Select Country Name', 'Select Country Name', '2024-09-17 12:16:28', '2024-09-17 12:16:28'),
(1598, 'english', 'Customer Wishlist', 'Customer Wishlist', '2024-09-18 11:48:25', '2024-09-18 11:48:25'),
(1600, 'english', 'Add New customer', 'Add New customer', '2024-09-21 11:12:57', '2024-09-21 11:12:57'),
(1602, 'english', 'User Created successfully!', 'User Created successfully!', '2024-09-21 11:14:03', '2024-09-21 11:14:03'),
(1604, 'english', 'Email', 'Email', '2024-09-21 11:14:03', '2024-09-21 11:14:03'),
(1606, 'english', 'Edit User', 'Edit User', '2024-09-21 11:14:03', '2024-09-21 11:14:03'),
(1608, 'english', 'Inactive', 'Inactive', '2024-09-21 11:14:03', '2024-09-21 11:14:03'),
(1610, 'english', 'Blocked', 'Blocked', '2024-09-21 11:14:03', '2024-09-21 11:14:03'),
(1612, 'english', 'Enter Category Name', 'Enter Category Name', '2024-09-22 10:56:03', '2024-09-22 10:56:03'),
(1614, 'english', 'Category added successfully!', 'Category added successfully!', '2024-09-22 10:56:15', '2024-09-22 10:56:15'),
(1616, 'english', 'All Category', 'All Category', '2024-09-23 09:55:56', '2024-09-23 09:55:56'),
(1618, 'english', 'Atlas Login', 'Atlas Login', '2024-09-23 10:38:10', '2024-09-23 10:38:10'),
(1620, 'english', 'Password', 'Password', '2024-09-23 10:48:53', '2024-09-23 10:48:53'),
(1622, 'english', 'Forget your password', 'Forget your password', '2024-09-23 10:48:53', '2024-09-23 10:48:53'),
(1624, 'english', 'I agree to the', 'I agree to the', '2024-09-23 10:52:50', '2024-09-23 10:52:50'),
(1626, 'english', 'Terms & Policy', 'Terms & Policy', '2024-09-23 10:52:50', '2024-09-23 10:52:50'),
(1628, 'english', 'Login', 'Login', '2024-09-23 10:55:50', '2024-09-23 10:55:50'),
(1630, 'english', 'Don\'t an account', 'Don\'t an account', '2024-09-23 10:55:50', '2024-09-23 10:55:50'),
(1632, 'english', 'Sign up', 'Sign up', '2024-09-23 10:55:50', '2024-09-23 10:55:50'),
(1634, 'english', 'Get Started Now', 'Get Started Now', '2024-09-23 11:19:16', '2024-09-23 11:19:16'),
(1636, 'english', 'Enter your credentials to access your account', 'Enter your credentials to access your account', '2024-09-23 11:19:16', '2024-09-23 11:19:16'),
(1638, 'english', 'Register', 'Register', '2024-09-23 11:22:39', '2024-09-23 11:22:39'),
(1640, 'english', 'Logout', 'Logout', '2024-09-23 11:51:20', '2024-09-23 11:51:20'),
(1642, 'english', 'Forget Password', 'Forget Password', '2024-09-23 12:13:10', '2024-09-23 12:13:10'),
(1644, 'english', 'Enter your email address to receive a verification  code', 'Enter your email address to receive a verification  code', '2024-09-23 12:13:10', '2024-09-23 12:13:10'),
(1646, 'english', 'Send', 'Send', '2024-09-23 12:13:10', '2024-09-23 12:13:10'),
(1648, 'english', 'Member', 'Member', '2024-09-24 06:35:25', '2024-09-24 06:35:25'),
(1650, 'english', 'Team Member', 'Team Member', '2024-09-24 06:35:25', '2024-09-24 06:35:25'),
(1652, 'english', 'Service', 'Service', '2024-09-24 06:35:25', '2024-09-24 06:35:25'),
(1654, 'english', 'Designation', 'Designation', '2024-09-24 06:35:25', '2024-09-24 06:35:25'),
(1656, 'english', 'Rating', 'Rating', '2024-09-24 06:35:25', '2024-09-24 06:35:25'),
(1658, 'english', 'Enter team member name', 'Enter team member name', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1660, 'english', 'Enter team member designation', 'Enter team member designation', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1662, 'english', 'Select rating', 'Select rating', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1664, 'english', '1.0', '1.0', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1666, 'english', '2.0', '2.0', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1668, 'english', '3.0', '3.0', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1670, 'english', '4.0', '4.0', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1672, 'english', '5.0', '5.0', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1674, 'english', 'Price List', 'Price List', '2024-09-24 07:12:36', '2024-09-24 07:12:36'),
(1676, 'english', 'Package name', 'Package name', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1678, 'english', 'Enter package name', 'Enter package name', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1680, 'english', 'Package sub title', 'Package sub title', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1682, 'english', 'Package Price', 'Package Price', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1684, 'english', 'Enter price', 'Enter price', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1686, 'english', 'Package Period', 'Package Period', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1688, 'english', 'Monthly', 'Monthly', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1690, 'english', 'Semi Annually', 'Semi Annually', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1692, 'english', 'Annually', 'Annually', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1694, 'english', 'Listing Number', 'Listing Number', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1696, 'english', 'Enter listing number', 'Enter listing number', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1698, 'english', 'Category Number', 'Category Number', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1700, 'english', 'Enter category number', 'Enter category number', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1702, 'english', 'Featured Listings', 'Featured Listings', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1704, 'english', 'Unavailable', 'Unavailable', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1706, 'english', 'Available', 'Available', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1708, 'english', 'Listings Video', 'Listings Video', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1710, 'english', 'No', 'No', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1712, 'english', 'Yes', 'Yes', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1714, 'english', 'Package List', 'Package List', '2024-09-24 07:13:07', '2024-09-24 07:13:07'),
(1716, 'english', 'Add New doctor', 'Add New doctor', '2024-09-24 07:14:00', '2024-09-24 07:14:00'),
(1718, 'english', 'Blog Categories', 'Blog Categories', '2024-09-24 07:28:44', '2024-09-24 07:28:44'),
(1720, 'english', 'Blog Category Create', 'Blog Category Create', '2024-09-24 07:28:44', '2024-09-24 07:28:44'),
(1722, 'english', 'Number Blogs', 'Number Blogs', '2024-09-24 07:28:44', '2024-09-24 07:28:44'),
(1724, 'english', 'Total number of blogs : 0', 'Total number of blogs : 0', '2024-09-24 07:28:44', '2024-09-24 07:28:44'),
(1726, 'english', 'Profile Update successfully!', 'Profile Update successfully!', '2024-09-24 07:52:16', '2024-09-24 07:52:16'),
(1728, 'english', 'Customer Booking', 'Customer Booking', '2024-09-24 09:46:38', '2024-09-24 09:46:38'),
(1730, 'english', 'Agent Bookings', 'Agent Bookings', '2024-09-24 10:26:34', '2024-09-24 10:26:34'),
(1732, 'english', 'Agent Listings', 'Agent Listings', '2024-09-24 10:39:20', '2024-09-24 10:39:20'),
(1734, 'english', 'Subscriptions', 'Subscriptions', '2024-09-26 12:34:52', '2024-09-26 12:34:52'),
(1736, 'english', 'List of subscriptions', 'List of subscriptions', '2024-09-26 12:35:00', '2024-09-26 12:35:00'),
(1738, 'english', 'Buyer', 'Buyer', '2024-09-28 11:19:38', '2024-09-28 11:19:38'),
(1740, 'english', 'Package', 'Package', '2024-09-28 11:19:38', '2024-09-28 11:19:38'),
(1742, 'english', 'Amount Paid', 'Amount Paid', '2024-09-28 11:19:38', '2024-09-28 11:19:38'),
(1744, 'english', 'Reported Listings', 'Reported Listings', '2024-09-29 12:40:49', '2024-09-29 12:40:49'),
(1746, 'english', 'City Update successfully!', 'City Update successfully!', '2024-10-02 07:14:40', '2024-10-02 07:14:40'),
(1748, 'english', 'Edit Country', 'Edit Country', '2024-10-02 07:52:28', '2024-10-02 07:52:28'),
(1750, 'english', 'Choose country thumbnail', 'Choose country thumbnail', '2024-10-02 07:53:55', '2024-10-02 07:53:55'),
(1752, 'english', 'optional', 'optional', '2024-10-02 07:53:55', '2024-10-02 07:53:55'),
(1754, 'english', 'Country thumbnail update successfully!', 'Country thumbnail update successfully!', '2024-10-02 08:03:48', '2024-10-02 08:03:48'),
(1756, 'english', 'About', 'About', '2024-10-02 11:17:34', '2024-10-02 11:17:34'),
(1758, 'english', 'Not found', 'Not found', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1760, 'english', 'About This Application', 'About This Application', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1762, 'english', 'Software version', 'Software version', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1764, 'english', 'Laravel version', 'Laravel version', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1766, 'english', 'Check update', 'Check update', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1768, 'english', 'Php version', 'Php version', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1770, 'english', 'Curl enable', 'Curl enable', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1772, 'english', 'enabled', 'enabled', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1774, 'english', 'Product license', 'Product license', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1776, 'english', 'Enter valid purchase code', 'Enter valid purchase code', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1778, 'english', 'Customer support status', 'Customer support status', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1780, 'english', 'Support expiry date', 'Support expiry date', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1782, 'english', 'Customer name', 'Customer name', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1784, 'english', 'Get customer support', 'Get customer support', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1786, 'english', 'Customer support', 'Customer support', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1788, 'english', 'SEO Settings', 'SEO Settings', '2024-10-02 11:51:51', '2024-10-02 11:51:51'),
(1790, 'english', 'Manage SEO Settings', 'Manage SEO Settings', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1792, 'english', 'Writing your keyword and hit the enter', 'Writing your keyword and hit the enter', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1794, 'english', 'Meta Robot', 'Meta Robot', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1796, 'english', ' Canonical Url', ' Canonical Url', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1798, 'english', ' Custom Url', ' Custom Url', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1800, 'english', 'Submit', 'Submit', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1802, 'english', 'Enter your keywords', 'Enter your keywords', '2024-10-02 12:15:47', '2024-10-02 12:15:47'),
(1804, 'english', 'Amenities Updated Successful!', 'Amenities Updated Successful!', '2024-10-14 08:06:53', '2024-10-14 08:06:53'),
(1806, 'english', 'Listing sub title', 'Listing sub title', '2024-10-14 08:09:25', '2024-10-14 08:09:25'),
(1808, 'english', 'Payment', 'Payment', '2024-10-14 11:11:17', '2024-10-14 11:11:17'),
(1810, 'english', 'Payment Gateways List', 'Payment Gateways List', '2024-10-14 11:11:17', '2024-10-14 11:11:17'),
(1812, 'english', 'Currency', 'Currency', '2024-10-14 11:13:49', '2024-10-14 11:13:49'),
(1814, 'english', 'Change Status', 'Change Status', '2024-10-14 11:34:27', '2024-10-14 11:34:27'),
(1816, 'english', 'Status Changed successfully!', 'Status Changed successfully!', '2024-10-14 11:35:35', '2024-10-14 11:35:35'),
(1818, 'english', 'Credentials Update', 'Credentials Update', '2024-10-14 11:49:38', '2024-10-14 11:49:38'),
(1820, 'english', 'Payment currency', 'Payment currency', '2024-10-14 12:33:28', '2024-10-14 12:33:28'),
(1822, 'english', 'Public Key', 'Public Key', '2024-10-14 12:33:28', '2024-10-14 12:33:28'),
(1824, 'english', 'Secret Key', 'Secret Key', '2024-10-14 12:36:13', '2024-10-14 12:36:13'),
(1826, 'english', 'Public Live Key', 'Public Live Key', '2024-10-14 12:36:13', '2024-10-14 12:36:13'),
(1828, 'english', 'Package create successfully!', 'Package create successfully!', '2024-10-15 05:53:30', '2024-10-15 05:53:30'),
(1830, 'english', 'Listing Feature', 'Listing Feature', '2024-10-15 05:55:20', '2024-10-15 05:55:20'),
(1832, 'english', 'Package delete successfully!', 'Package delete successfully!', '2024-10-15 05:56:09', '2024-10-15 05:56:09'),
(1834, 'english', 'Payment credentials update successfully!', 'Payment credentials update successfully!', '2024-10-15 06:17:12', '2024-10-15 06:17:12'),
(1836, 'english', 'Try Now', 'Try Now', '2024-10-15 06:24:01', '2024-10-15 06:24:01'),
(1838, 'english', 'Order summary', 'Order summary', '2024-10-15 06:58:21', '2024-10-15 06:58:21'),
(1840, 'english', 'Cancel Payment', 'Cancel Payment', '2024-10-15 07:14:30', '2024-10-15 07:14:30'),
(1842, 'english', 'Select payment gateway', 'Select payment gateway', '2024-10-15 07:14:30', '2024-10-15 07:14:30'),
(1844, 'english', 'Item List', 'Item List', '2024-10-15 07:15:12', '2024-10-15 07:15:12'),
(1846, 'english', 'Total', 'Total', '2024-10-15 07:20:36', '2024-10-15 07:20:36'),
(1848, 'english', 'Grand Total', 'Grand Total', '2024-10-15 07:20:36', '2024-10-15 07:20:36'),
(1850, 'english', 'Package Details', 'Package Details', '2024-10-15 07:27:03', '2024-10-15 07:27:03'),
(1852, 'english', 'Subscription successfully!', 'Subscription successfully!', '2024-10-15 09:25:27', '2024-10-15 09:25:27'),
(1854, 'english', 'Current Package', 'Current Package', '2024-10-15 09:31:14', '2024-10-15 09:31:14'),
(1856, 'english', 'Become an agent', 'Become an agent', '2024-10-15 11:10:46', '2024-10-15 11:10:46'),
(1858, 'english', 'My Agent Panel', 'My Agent Panel', '2024-10-16 07:46:01', '2024-10-16 07:46:01'),
(1860, 'english', 'My Listing', 'My Listing', '2024-10-16 07:46:01', '2024-10-16 07:46:01'),
(1862, 'english', 'Listing Create Form', 'Listing Create Form', '2024-10-16 09:46:51', '2024-10-16 09:46:51'),
(1864, 'english', 'Hide', 'Hide', '2024-10-17 10:52:24', '2024-10-17 10:52:24'),
(1866, 'english', 'Edit Listing', 'Edit Listing', '2024-10-17 10:53:16', '2024-10-17 10:53:16'),
(1868, 'english', 'Remove Listing', 'Remove Listing', '2024-10-17 10:53:16', '2024-10-17 10:53:16'),
(1870, 'english', 'Upload Product Image', 'Upload Product Image', '2024-10-20 04:45:59', '2024-10-20 04:45:59'),
(1872, 'english', 'Listing deleted successfully!', 'Listing deleted successfully!', '2024-10-20 10:11:22', '2024-10-20 10:11:22'),
(1874, 'english', 'Open Time', 'Open Time', '2024-10-21 06:28:50', '2024-10-21 06:28:50'),
(1876, 'english', 'Feature title', 'Feature title', '2024-10-21 11:33:45', '2024-10-21 11:33:45'),
(1878, 'english', 'Enter title', 'Enter title', '2024-10-21 11:33:45', '2024-10-21 11:33:45'),
(1880, 'english', 'Listing feature add successful!', 'Listing feature add successful!', '2024-10-21 11:33:58', '2024-10-21 11:33:58'),
(1882, 'english', 'Specification title', 'Specification title', '2024-10-21 11:34:19', '2024-10-21 11:34:19'),
(1884, 'english', 'Listing specification add successful!', 'Listing specification add successful!', '2024-10-21 11:34:22', '2024-10-21 11:34:22'),
(1886, 'english', 'Listing sub feature add successful!', 'Listing sub feature add successful!', '2024-10-21 11:34:33', '2024-10-21 11:34:33'),
(1888, 'english', 'Enter specification title', 'Enter specification title', '2024-10-21 11:37:41', '2024-10-21 11:37:41'),
(1890, 'english', 'Enter specification value', 'Enter specification value', '2024-10-21 11:37:41', '2024-10-21 11:37:41'),
(1892, 'english', 'Listing feature delete successful!', 'Listing feature delete successful!', '2024-10-22 11:40:17', '2024-10-22 11:40:17'),
(1894, 'english', 'Listing feature update successful!', 'Listing feature update successful!', '2024-10-22 12:14:41', '2024-10-22 12:14:41'),
(1896, 'english', 'Listing specification update successful!', 'Listing specification update successful!', '2024-10-23 06:07:45', '2024-10-23 06:07:45'),
(1898, 'english', 'Listing specification delete successful!', 'Listing specification delete successful!', '2024-10-23 06:07:55', '2024-10-23 06:07:55'),
(1900, 'english', 'Update Sub Specification', 'Update Sub Specification', '2024-10-23 07:21:54', '2024-10-23 07:21:54'),
(1902, 'english', 'Room Title', 'Room Title', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1904, 'english', 'Enter room title', 'Enter room title', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1906, 'english', 'Number of persons', 'Number of persons', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1908, 'english', 'Enter number of person (2 adult, 1 Child)', 'Enter number of person (2 adult, 1 Child)', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1910, 'english', 'Room Price', 'Room Price', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1912, 'english', 'Enter room price', 'Enter room price', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1914, 'english', 'Room Images', 'Room Images', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1916, 'english', 'Hotel room create successful!', 'Hotel room create successful!', '2024-10-27 05:56:26', '2024-10-27 05:56:26'),
(1918, 'english', 'Update Room', 'Update Room', '2024-10-27 07:37:52', '2024-10-27 07:37:52'),
(1920, 'english', 'Listing room delete successful!', 'Listing room delete successful!', '2024-10-27 07:43:32', '2024-10-27 07:43:32'),
(1922, 'english', 'Subscription', 'Subscription', '2024-10-27 12:02:39', '2024-10-27 12:02:39'),
(1924, 'english', 'Listing menu delete successful!', 'Listing menu delete successful!', '2024-10-28 06:26:24', '2024-10-28 06:26:24'),
(1926, 'english', 'Listing menu update successful!', 'Listing menu update successful!', '2024-10-28 06:27:11', '2024-10-28 06:27:11'),
(1928, 'english', 'Expired Subscription', 'Expired Subscription', '2024-10-28 07:16:45', '2024-10-28 07:16:45'),
(1930, 'english', 'Your subscription has expired', 'Your subscription has expired', '2024-10-28 07:16:45', '2024-10-28 07:16:45'),
(1932, 'english', 'Your package has expired, please renew your package', 'Your package has expired, please renew your package', '2024-10-28 07:16:45', '2024-10-28 07:16:45'),
(1934, 'english', 'Renew Subscription', 'Renew Subscription', '2024-10-28 07:16:45', '2024-10-28 07:16:45'),
(1936, 'english', 'Payment Method', 'Payment Method', '2024-10-28 07:16:45', '2024-10-28 07:16:45'),
(1938, 'english', 'Invoicing', 'Invoicing', '2024-10-28 07:19:01', '2024-10-28 07:19:01'),
(1940, 'english', 'Last payment:', 'Last payment:', '2024-10-28 07:19:01', '2024-10-28 07:19:01'),
(1942, 'english', 'Modify Billing Information', 'Modify Billing Information', '2024-10-28 07:20:27', '2024-10-28 07:20:27'),
(1944, 'english', 'Billing History', 'Billing History', '2024-10-28 07:20:27', '2024-10-28 07:20:27'),
(1946, 'english', 'Reference', 'Reference', '2024-10-28 07:20:27', '2024-10-28 07:20:27'),
(1948, 'english', 'Date', 'Date', '2024-10-28 07:20:27', '2024-10-28 07:20:27'),
(1950, 'english', 'Download', 'Download', '2024-10-28 07:20:27', '2024-10-28 07:20:27'),
(1952, 'english', '6', '6', '2024-10-28 07:31:40', '2024-10-28 07:31:40'),
(1954, 'english', 'Naomi Black', 'Naomi Black', '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1956, 'english', 'Account', 'Account', '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1958, 'english', NULL, NULL, '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1960, 'english', 'Plan', 'Plan', '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1962, 'english', 'Your current package price is', 'Your current package price is', '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1964, 'english', 'It will expired on ', 'It will expired on ', '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1970, 'english', 'Agent Subscription', 'Agent Subscription', '2024-10-28 08:04:28', '2024-10-28 08:04:28'),
(1974, 'english', 'semiannually', 'semiannually', '2024-10-28 08:07:23', '2024-10-28 08:07:23'),
(1976, 'english', 'Subscription Renew', 'Subscription Renew', '2024-10-28 09:22:40', '2024-10-28 09:22:40'),
(1978, 'english', 'Billing Information', 'Billing Information', '2024-10-28 09:23:09', '2024-10-28 09:23:09'),
(1980, 'english', 'Lorem Ipsum available but the majority have suffered\r\n                              alteration', 'Lorem Ipsum available but the majority have suffered\r\n                              alteration', '2024-10-28 09:23:09', '2024-10-28 09:23:09'),
(1982, 'english', 'Billing Email', 'Billing Email', '2024-10-28 09:24:09', '2024-10-28 09:24:09'),
(1984, 'english', 'State', 'State', '2024-10-28 09:32:48', '2024-10-28 09:32:48'),
(1986, 'english', 'Save Changes', 'Save Changes', '2024-10-28 09:33:34', '2024-10-28 09:33:34'),
(1988, 'english', 'Panel', 'Panel', '2024-10-28 10:21:38', '2024-10-28 10:21:38'),
(1990, 'english', 'INVOICE', 'INVOICE', '2024-10-28 10:21:38', '2024-10-28 10:21:38'),
(1992, 'english', 'Dear', 'Dear', '2024-10-28 10:21:38', '2024-10-28 10:21:38'),
(1994, 'english', 'Please find below the invoice', 'Please find below the invoice', '2024-10-28 10:21:38', '2024-10-28 10:21:38'),
(1996, 'english', 'Billing Address', 'Billing Address', '2024-10-28 10:21:38', '2024-10-28 10:21:38'),
(1998, 'english', 'Address line', 'Address line', '2024-10-28 10:23:41', '2024-10-28 10:23:41'),
(2000, 'english', 'Paid', 'Paid', '2024-10-28 10:23:41', '2024-10-28 10:23:41'),
(2002, 'english', 'Invoice no', 'Invoice no', '2024-10-28 10:23:41', '2024-10-28 10:23:41'),
(2004, 'english', 'Total Amount', 'Total Amount', '2024-10-28 10:23:41', '2024-10-28 10:23:41'),
(2006, 'english', 'Paid Amount', 'Paid Amount', '2024-10-28 10:23:41', '2024-10-28 10:23:41'),
(2008, 'english', 'Subtotal', 'Subtotal', '2024-10-28 10:27:39', '2024-10-28 10:27:39'),
(2010, 'english', 'Lorem Ipsum available but the majority have suffered\r\n                                alteration', 'Lorem Ipsum available but the majority have suffered\r\n                                alteration', '2024-10-28 10:58:16', '2024-10-28 10:58:16'),
(2012, 'english', 'Profile update', 'Profile update', '2024-10-29 05:30:36', '2024-10-29 05:30:36'),
(2014, 'english', 'Full name', 'Full name', '2024-10-29 05:52:02', '2024-10-29 05:52:02'),
(2016, 'english', 'Phone', 'Phone', '2024-10-29 05:52:53', '2024-10-29 05:52:53'),
(2018, 'english', 'Facebook', 'Facebook', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2020, 'english', 'Twitter', 'Twitter', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2022, 'english', 'Linkedin', 'Linkedin', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2024, 'english', 'Website', 'Website', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2026, 'english', 'Gender', 'Gender', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2028, 'english', 'Other', 'Other', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2030, 'english', 'Bio', 'Bio', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2032, 'english', 'Profile Photo', 'Profile Photo', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2034, 'english', 'Company Logo (160 X 160)', 'Company Logo (160 X 160)', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2036, 'english', 'Old Password', 'Old Password', '2024-10-29 09:19:56', '2024-10-29 09:19:56'),
(2038, 'english', 'Appointment', 'Appointment', '2024-10-29 09:35:35', '2024-10-29 09:35:35'),
(2040, 'english', 'Agent Appontment', 'Agent Appontment', '2024-10-29 09:36:19', '2024-10-29 09:36:19'),
(2042, 'english', 'Agent Appointment', 'Agent Appointment', '2024-10-29 09:36:31', '2024-10-29 09:36:31'),
(2044, 'english', 'Not start yet', 'Not start yet', '2024-10-29 10:32:32', '2024-10-29 10:32:32'),
(2046, 'english', 'View Listing', 'View Listing', '2024-10-29 10:45:41', '2024-10-29 10:45:41'),
(2048, 'english', 'Email Address', 'Email Address', '2024-10-29 10:45:41', '2024-10-29 10:45:41'),
(2050, 'english', 'Remove', 'Remove', '2024-10-29 10:45:41', '2024-10-29 10:45:41'),
(2052, 'english', 'Successfully Ended', 'Successfully Ended', '2024-10-29 10:53:06', '2024-10-29 10:53:06'),
(2054, 'english', 'Number', 'Number', '2024-10-29 11:10:14', '2024-10-29 11:10:14'),
(2056, 'english', 'Customer Phone Number', 'Customer Phone Number', '2024-10-29 11:14:00', '2024-10-29 11:14:00'),
(2058, 'english', 'Customer Email Address', 'Customer Email Address', '2024-10-29 11:14:00', '2024-10-29 11:14:00'),
(2060, 'english', 'Meeting Link', 'Meeting Link', '2024-10-29 11:35:16', '2024-10-29 11:35:16'),
(2062, 'english', 'Enter Meeting link', 'Enter Meeting link', '2024-10-29 11:35:20', '2024-10-29 11:35:20'),
(2064, 'english', 'Blog', 'Blog', '2024-10-30 05:47:23', '2024-10-30 05:47:23'),
(2066, 'english', 'Booking', 'Booking', '2024-10-30 05:49:14', '2024-10-30 05:49:14'),
(2068, 'english', 'Create blog', 'Create blog', '2024-10-30 06:05:15', '2024-10-30 06:05:15'),
(2070, 'english', 'Create Blogs', 'Create Blogs', '2024-10-30 06:07:20', '2024-10-30 06:07:20'),
(2072, 'english', 'On Review', 'On Review', '2024-10-30 07:00:44', '2024-10-30 07:00:44'),
(2074, 'english', 'Keywords', 'Keywords', '2024-10-30 07:01:14', '2024-10-30 07:01:14'),
(2076, 'english', 'Remove blog', 'Remove blog', '2024-10-30 07:07:23', '2024-10-30 07:07:23'),
(2078, 'english', 'Blog deleted successfully!', 'Blog deleted successfully!', '2024-10-30 07:07:27', '2024-10-30 07:07:27'),
(2080, 'english', 'Update Blogs', 'Update Blogs', '2024-10-30 07:23:18', '2024-10-30 07:23:18'),
(2082, 'english', 'Customer Appointment', 'Customer Appointment', '2024-10-30 07:41:44', '2024-10-30 07:41:44'),
(2084, 'english', 'Details', 'Details', '2024-10-30 07:46:23', '2024-10-30 07:46:23'),
(2086, 'english', 'Link Update successfully!', 'Link Update successfully!', '2024-10-30 11:21:56', '2024-10-30 11:21:56'),
(2088, 'english', 'Message', 'Message', '2024-10-31 07:31:54', '2024-10-31 07:31:54'),
(2090, 'english', 'Messages', 'Messages', '2024-10-31 07:33:57', '2024-10-31 07:33:57'),
(2092, 'english', 'Frontend Settings', 'Frontend Settings', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2094, 'english', 'Motivational Speech', 'Motivational Speech', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2096, 'english', 'Website FAQS', 'Website FAQS', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2098, 'english', 'Contact Information', 'Contact Information', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2100, 'english', 'Logo & Images', 'Logo & Images', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2102, 'english', 'User Reviews', 'User Reviews', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2104, 'english', 'Update Settings', 'Update Settings', '2024-11-03 07:30:41', '2024-11-03 07:30:41'),
(2106, 'english', 'Restaurant', 'Restaurant', '2024-11-03 07:47:41', '2024-11-03 07:47:41'),
(2108, 'english', 'Mother Home Banner', 'Mother Home Banner', '2024-11-03 08:11:11', '2024-11-03 08:11:11'),
(2110, 'english', 'Mother Homepage Banner', 'Mother Homepage Banner', '2024-11-03 08:12:48', '2024-11-03 08:12:48'),
(2112, 'english', 'photo', 'photo', '2024-11-03 09:16:55', '2024-11-03 09:16:55'),
(2114, 'english', 'Setting updated successfully!', 'Setting updated successfully!', '2024-11-03 09:48:17', '2024-11-03 09:48:17'),
(2116, 'english', 'Add New Banner', 'Add New Banner', '2024-11-03 10:57:33', '2024-11-03 10:57:33'),
(2118, 'english', 'Update Banner', 'Update Banner', '2024-11-03 11:49:07', '2024-11-03 11:49:07'),
(2120, 'english', 'Banner updated successfully!', 'Banner updated successfully!', '2024-11-03 12:06:02', '2024-11-03 12:06:02'),
(2122, 'english', 'Banner deleted successfully!', 'Banner deleted successfully!', '2024-11-03 12:19:26', '2024-11-03 12:19:26'),
(2124, 'english', 'Upload light logo', 'Upload light logo', '2024-11-04 05:12:20', '2024-11-04 05:12:20'),
(2126, 'english', 'Save Change', 'Save Change', '2024-11-04 05:17:25', '2024-11-04 05:17:25'),
(2128, 'english', 'Upload Dark logo', 'Upload Dark logo', '2024-11-04 05:18:10', '2024-11-04 05:18:10'),
(2130, 'english', 'Upload favicon', 'Upload favicon', '2024-11-04 05:18:10', '2024-11-04 05:18:10'),
(2132, 'english', 'Lite Logo updated successfully!', 'Lite Logo updated successfully!', '2024-11-04 06:32:33', '2024-11-04 06:32:33'),
(2134, 'english', 'Light Logo updated successfully!', 'Light Logo updated successfully!', '2024-11-04 06:45:52', '2024-11-04 06:45:52'),
(2136, 'english', 'No file uploaded for Dark Logo!', 'No file uploaded for Dark Logo!', '2024-11-04 07:13:18', '2024-11-04 07:13:18'),
(2138, 'english', 'Error', 'Error', '2024-11-04 07:13:18', '2024-11-04 07:13:18'),
(2140, 'english', 'Dark Logo updated successfully!', 'Dark Logo updated successfully!', '2024-11-04 07:16:39', '2024-11-04 07:16:39'),
(2142, 'english', 'Favicon updated successfully!', 'Favicon updated successfully!', '2024-11-04 07:19:59', '2024-11-04 07:19:59'),
(2144, 'english', 'Review', 'Review', '2024-11-04 08:09:06', '2024-11-04 08:09:06'),
(2146, 'english', 'Add new Review', 'Add new Review', '2024-11-04 08:14:13', '2024-11-04 08:14:13'),
(2148, 'english', 'Add Review', 'Add Review', '2024-11-04 08:15:30', '2024-11-04 08:15:30'),
(2150, 'english', 'Select User', 'Select User', '2024-11-04 08:15:30', '2024-11-04 08:15:30'),
(2152, 'english', 'Select a category', 'Select a category', '2024-11-04 08:15:30', '2024-11-04 08:15:30'),
(2154, 'english', 'Select a Rating', 'Select a Rating', '2024-11-04 08:15:30', '2024-11-04 08:15:30'),
(2156, 'english', 'Review Add', 'Review Add', '2024-11-04 08:21:49', '2024-11-04 08:21:49'),
(2158, 'english', 'Select a User', 'Select a User', '2024-11-04 09:02:00', '2024-11-04 09:02:00'),
(2160, 'english', 'Review added successful!', 'Review added successful!', '2024-11-04 09:03:39', '2024-11-04 09:03:39'),
(2162, 'english', 'Options', 'Options', '2024-11-04 09:03:39', '2024-11-04 09:03:39'),
(2164, 'english', 'Edit Review', 'Edit Review', '2024-11-04 09:04:35', '2024-11-04 09:04:35'),
(2166, 'english', 'Update Review', 'Update Review', '2024-11-04 09:04:35', '2024-11-04 09:04:35'),
(2168, 'english', 'Review Update successful!', 'Review Update successful!', '2024-11-04 09:10:45', '2024-11-04 09:10:45'),
(2170, 'english', 'Review Delete successful!', 'Review Delete successful!', '2024-11-04 09:13:25', '2024-11-04 09:13:25'),
(2172, 'english', 'Browse Top Categories', 'Browse Top Categories', '2024-11-04 10:16:39', '2024-11-04 10:16:39'),
(2174, 'english', 'Large Image', 'Large Image', '2024-11-05 04:59:43', '2024-11-05 04:59:43'),
(2176, 'english', 'Small Image', 'Small Image', '2024-11-05 04:59:43', '2024-11-05 04:59:43'),
(2178, 'english', 'Add Type Image', 'Add Type Image', '2024-11-05 05:33:42', '2024-11-05 05:33:42'),
(2180, 'english', 'Category Type Image', 'Category Type Image', '2024-11-05 05:41:20', '2024-11-05 05:41:20'),
(2182, 'english', 'Upload Hotel type Image', 'Upload Hotel type Image', '2024-11-05 05:53:03', '2024-11-05 05:53:03'),
(2184, 'english', 'Hotel image updated successfully!', 'Hotel image updated successfully!', '2024-11-05 06:07:46', '2024-11-05 06:07:46'),
(2186, 'english', 'Upload doctors type Image', 'Upload doctors type Image', '2024-11-05 06:12:39', '2024-11-05 06:12:39'),
(2188, 'english', 'Upload Car type Image', 'Upload Car type Image', '2024-11-05 06:17:26', '2024-11-05 06:17:26'),
(2190, 'english', 'Upload beauty type Image', 'Upload beauty type Image', '2024-11-05 06:17:26', '2024-11-05 06:17:26'),
(2192, 'english', 'Upload Real Estate type Image', 'Upload Real Estate type Image', '2024-11-05 06:17:26', '2024-11-05 06:17:26'),
(2194, 'english', 'Upload Restaurant type Image', 'Upload Restaurant type Image', '2024-11-05 06:17:26', '2024-11-05 06:17:26'),
(2196, 'english', 'Upload Cars type Image', 'Upload Cars type Image', '2024-11-05 06:18:19', '2024-11-05 06:18:19'),
(2198, 'english', 'Restaurant image updated successfully!', 'Restaurant image updated successfully!', '2024-11-05 06:26:12', '2024-11-05 06:26:12'),
(2200, 'english', 'Real Estate image updated successfully!', 'Real Estate image updated successfully!', '2024-11-05 06:27:21', '2024-11-05 06:27:21'),
(2202, 'english', 'Doctors image updated successfully!', 'Doctors image updated successfully!', '2024-11-05 06:30:14', '2024-11-05 06:30:14'),
(2204, 'english', 'Car image updated successfully!', 'Car image updated successfully!', '2024-11-05 06:30:28', '2024-11-05 06:30:28'),
(2206, 'english', 'Beauty image updated successfully!', 'Beauty image updated successfully!', '2024-11-05 06:30:43', '2024-11-05 06:30:43'),
(2208, 'english', 'Restaurant', 'Restaurant', '2024-11-05 06:43:44', '2024-11-05 06:43:44'),
(2210, 'english', 'Doctors', 'Doctors', '2024-11-05 06:43:44', '2024-11-05 06:43:44'),
(2212, 'english', 'We Have Worked with ', 'We Have Worked with ', '2024-11-05 07:05:02', '2024-11-05 07:05:02'),
(2214, 'english', '10,000', '10,000', '2024-11-05 07:05:02', '2024-11-05 07:05:02'),
(2216, 'english', ' Trusted Companies', ' Trusted Companies', '2024-11-05 07:05:02', '2024-11-05 07:05:02'),
(2218, 'english', 'What the people Thinks About Us', 'What the people Thinks About Us', '2024-11-05 07:05:02', '2024-11-05 07:05:02'),
(2220, 'english', 'Trusted Companies', 'Trusted Companies', '2024-11-05 07:17:45', '2024-11-05 07:17:45'),
(2222, 'english', 'Add New Company Logo', 'Add New Company Logo', '2024-11-05 07:21:15', '2024-11-05 07:21:15'),
(2224, 'english', 'Company Logos updated successfully!', 'Company Logos updated successfully!', '2024-11-05 07:30:17', '2024-11-05 07:30:17'),
(2226, 'english', 'Update Company Logo', 'Update Company Logo', '2024-11-05 07:32:04', '2024-11-05 07:32:04'),
(2228, 'english', 'Logo', 'Logo', '2024-11-05 07:39:29', '2024-11-05 07:39:29'),
(2230, 'english', 'Company logo updated successfully!', 'Company logo updated successfully!', '2024-11-05 07:40:26', '2024-11-05 07:40:26'),
(2232, 'english', 'Company Logo Delete successfully!', 'Company Logo Delete successfully!', '2024-11-05 07:43:20', '2024-11-05 07:43:20'),
(2234, 'english', 'Trusted Company', 'Trusted Company', '2024-11-05 08:01:09', '2024-11-05 08:01:09'),
(2236, 'english', 'Pickup New Updates', 'Pickup New Updates', '2024-11-05 09:20:49', '2024-11-05 09:20:49'),
(2238, 'english', 'Info Update', 'Info Update', '2024-11-05 09:27:57', '2024-11-05 09:27:57'),
(2240, 'english', 'User updated successfully!', 'User updated successfully!', '2024-11-05 09:28:22', '2024-11-05 09:28:22'),
(2242, 'english', 'Do you want to mark it as popular', 'Do you want to mark it as popular', '2024-11-05 09:40:25', '2024-11-05 09:40:25'),
(2244, 'english', 'Mark as popular', 'Mark as popular', '2024-11-05 09:40:25', '2024-11-05 09:40:25'),
(2246, 'english', 'Blog deleted successful!', 'Blog deleted successful!', '2024-11-05 09:49:18', '2024-11-05 09:49:18'),
(2248, 'english', 'Blog Update successfully!', 'Blog Update successfully!', '2024-11-05 09:49:56', '2024-11-05 09:49:56'),
(2250, 'english', 'Category update successful!', 'Category update successful!', '2024-11-05 09:52:55', '2024-11-05 09:52:55'),
(2252, 'english', 'Sign up to our newsletter', 'Sign up to our newsletter', '2024-11-05 11:01:55', '2024-11-05 11:01:55'),
(2254, 'english', 'Stay up to date with the latest news, announcements, and articles.', 'Stay up to date with the latest news, announcements, and articles.', '2024-11-05 11:01:55', '2024-11-05 11:01:55'),
(2256, 'english', 'Enter your email Address', 'Enter your email Address', '2024-11-05 11:01:55', '2024-11-05 11:01:55'),
(2258, 'english', 'Subscribe', 'Subscribe', '2024-11-05 11:01:55', '2024-11-05 11:01:55'),
(2260, 'english', 'Footer Text', 'Footer Text', '2024-11-05 11:36:56', '2024-11-05 11:36:56'),
(2262, 'english', 'Lorem ipsum dolor sit amet, consectetur they adipiscing elit ut aliquam, purus sit amet luctus venenatis.', 'Lorem ipsum dolor sit amet, consectetur they adipiscing elit ut aliquam, purus sit amet luctus venenatis.', '2024-11-05 11:41:09', '2024-11-05 11:41:09'),
(2264, 'english', 'Our Latest Blog', 'Our Latest Blog', '2024-11-05 11:51:16', '2024-11-05 11:51:16'),
(2266, 'english', 'Browse Top Categories.', 'Browse Top Categories.', '2024-11-06 05:52:44', '2024-11-06 05:52:44'),
(2268, 'english', 'All', 'All', '2024-11-06 06:56:10', '2024-11-06 06:56:10'),
(2270, 'english', 'Sft', 'Sft', '2024-11-06 07:56:58', '2024-11-06 07:56:58'),
(2272, 'english', 'Massage', 'Massage', '2024-11-06 10:19:00', '2024-11-06 10:19:00'),
(2274, 'english', 'Open', 'Open', '2024-11-06 10:37:15', '2024-11-06 10:37:15'),
(2276, 'english', 'View More', 'View More', '2024-11-06 11:19:25', '2024-11-06 11:19:25'),
(2278, 'english', 'View details', 'View details', '2024-11-06 11:29:21', '2024-11-06 11:29:21'),
(2280, 'english', 'Dine in', 'Dine in', '2024-11-06 12:32:57', '2024-11-06 12:32:57'),
(2282, 'english', 'Takeaway', 'Takeaway', '2024-11-06 12:32:57', '2024-11-06 12:32:57'),
(2284, 'english', 'Delivery', 'Delivery', '2024-11-06 12:32:57', '2024-11-06 12:32:57'),
(2286, 'english', 'Our Happy Customer', 'Our Happy Customer', '2024-11-07 08:13:26', '2024-11-07 08:13:26'),
(2288, 'english', 'Latest Vehicles on Sale', 'Latest Vehicles on Sale', '2024-11-07 08:13:26', '2024-11-07 08:13:26'),
(2290, 'english', 'Beauty Banner Title', 'Beauty Banner Title', '2024-11-07 10:23:37', '2024-11-07 10:23:37'),
(2292, 'english', 'Beauty frontend Settings', 'Beauty frontend Settings', '2024-11-07 10:25:33', '2024-11-07 10:25:33'),
(2294, 'english', 'Beauty Title', 'Beauty Title', '2024-11-07 10:31:36', '2024-11-07 10:31:36'),
(2296, 'english', 'Beauty Description', 'Beauty Description', '2024-11-07 10:31:36', '2024-11-07 10:31:36'),
(2298, 'english', 'Upload Beauty Banner Image', 'Upload Beauty Banner Image', '2024-11-07 10:40:00', '2024-11-07 10:40:00'),
(2300, 'english', 'Beauty Banner', 'Beauty Banner', '2024-11-07 10:44:37', '2024-11-07 10:44:37'),
(2302, 'english', 'No file uploaded for Beauty!', 'No file uploaded for Beauty!', '2024-11-07 11:24:03', '2024-11-07 11:24:03'),
(2304, 'english', 'No image uploaded', 'No image uploaded', '2024-11-07 12:10:34', '2024-11-07 12:10:34'),
(2306, 'english', 'Beauty Video Url', 'Beauty Video Url', '2024-11-07 12:17:52', '2024-11-07 12:17:52'),
(2308, 'english', 'Beauty Facial Title', 'Beauty Facial Title', '2024-11-07 12:41:03', '2024-11-07 12:41:03'),
(2310, 'english', 'Beauty Discount', 'Beauty Discount', '2024-11-07 12:41:03', '2024-11-07 12:41:03'),
(2312, 'english', 'Beauty Facial Image', 'Beauty Facial Image', '2024-11-07 12:44:01', '2024-11-07 12:44:01'),
(2314, 'english', 'Beauty Massage Photo', 'Beauty Massage Photo', '2024-11-07 12:44:01', '2024-11-07 12:44:01'),
(2316, 'english', 'Beauty Banner Image', 'Beauty Banner Image', '2024-11-07 12:44:22', '2024-11-07 12:44:22'),
(2318, 'english', 'Beauty Facial Discount', 'Beauty Facial Discount', '2024-11-07 12:48:58', '2024-11-07 12:48:58'),
(2320, 'english', 'Beauty Massage Title', 'Beauty Massage Title', '2024-11-07 12:50:24', '2024-11-07 12:50:24'),
(2322, 'english', 'Beauty Massage Discount ', 'Beauty Massage Discount ', '2024-11-07 12:50:24', '2024-11-07 12:50:24'),
(2324, 'english', 'Beauty Massage Image', 'Beauty Massage Image', '2024-11-07 12:50:24', '2024-11-07 12:50:24'),
(2326, 'english', '10 word', '10 word', '2024-11-09 11:51:42', '2024-11-09 11:51:42'),
(2328, 'english', 'Upload Beauty Facial Image', 'Upload Beauty Facial Image', '2024-11-09 11:51:42', '2024-11-09 11:51:42'),
(2330, 'english', '10 words', '10 words', '2024-11-09 11:54:57', '2024-11-09 11:54:57'),
(2332, 'english', 'Upload Beauty Massage Image', 'Upload Beauty Massage Image', '2024-11-09 12:04:11', '2024-11-09 12:04:11'),
(2334, 'english', '2 words', '2 words', '2024-11-09 12:11:17', '2024-11-09 12:11:17'),
(2336, 'english', 'Beauty Another Image  Settings', 'Beauty Another Image  Settings', '2024-11-09 12:24:57', '2024-11-09 12:24:57'),
(2338, 'english', 'Beauty Motion Title', 'Beauty Motion Title', '2024-11-09 12:24:57', '2024-11-09 12:24:57'),
(2340, 'english', 'Beauty Motion Description', 'Beauty Motion Description', '2024-11-09 12:24:57', '2024-11-09 12:24:57'),
(2342, 'english', 'Beauty Motion Image', 'Beauty Motion Image', '2024-11-09 12:24:57', '2024-11-09 12:24:57'),
(2344, 'english', 'Book Now', 'Book Now', '2024-11-09 13:36:28', '2024-11-09 13:36:28'),
(2346, 'english', 'Explore Our Products', 'Explore Our Products', '2024-11-09 13:36:28', '2024-11-09 13:36:28'),
(2348, 'english', 'Organic Product', 'Organic Product', '2024-11-09 14:37:52', '2024-11-09 14:37:52'),
(2350, 'english', 'Product Preview', 'Product Preview', '2024-11-09 14:37:53', '2024-11-09 14:37:53'),
(2352, 'english', 'Market Experience', 'Market Experience', '2024-11-09 14:37:53', '2024-11-09 14:37:53'),
(2354, 'english', 'Hair Treatment', 'Hair Treatment', '2024-11-10 09:57:34', '2024-11-10 09:57:34');
INSERT INTO `languages` (`id`, `name`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(2356, 'english', '&', '&', '2024-11-10 09:57:34', '2024-11-10 09:57:34'),
(2358, 'english', 'Repair', 'Repair', '2024-11-10 09:57:34', '2024-11-10 09:57:34'),
(2360, 'english', 'Get Discount Up To 20', 'Get Discount Up To 20', '2024-11-10 09:57:34', '2024-11-10 09:57:34'),
(2362, 'english', '%', '%', '2024-11-10 09:57:34', '2024-11-10 09:57:34'),
(2364, 'english', 'Best Massage', 'Best Massage', '2024-11-10 09:57:34', '2024-11-10 09:57:34'),
(2366, 'english', 'Explore More', 'Explore More', '2024-11-10 10:04:33', '2024-11-10 10:04:33'),
(2368, 'english', 'Popular', 'Popular', '2024-11-10 10:13:34', '2024-11-10 10:13:34'),
(2370, 'english', 'Best', 'Best', '2024-11-10 10:13:34', '2024-11-10 10:13:34'),
(2372, 'english', 'Wellness', 'Wellness', '2024-11-10 10:13:34', '2024-11-10 10:13:34'),
(2374, 'english', 'Select  type', 'Select  type', '2024-11-10 10:14:01', '2024-11-10 10:14:01'),
(2376, 'english', 'Select Type', 'Select Type', '2024-11-10 10:17:55', '2024-11-10 10:17:55'),
(2378, 'english', 'City added successfully!', 'City added successfully!', '2024-11-10 10:24:56', '2024-11-10 10:24:56'),
(2380, 'english', 'is_popular', 'is_popular', '2024-11-10 10:26:51', '2024-11-10 10:26:51'),
(2382, 'english', 'Popular Beauty Parlors', 'Popular Beauty Parlors', '2024-11-10 10:41:30', '2024-11-10 10:41:30'),
(2384, 'english', 'Beauty Salon', 'Beauty Salon', '2024-11-10 10:51:37', '2024-11-10 10:51:37'),
(2386, 'english', 'Find The Best Spa Here', 'Find The Best Spa Here', '2024-11-10 11:52:49', '2024-11-10 11:52:49'),
(2388, 'english', 'Complete wellness with massage', 'Complete wellness with massage', '2024-11-10 11:52:49', '2024-11-10 11:52:49'),
(2390, 'english', 'Booking Online', 'Booking Online', '2024-11-10 11:52:49', '2024-11-10 11:52:49'),
(2392, 'english', 'Beauty Details', 'Beauty Details', '2024-11-12 09:36:15', '2024-11-12 09:36:15'),
(2394, 'english', 'Back to listing', 'Back to listing', '2024-11-12 10:15:41', '2024-11-12 10:15:41'),
(2396, 'english', 'Time', 'Time', '2024-11-12 11:36:44', '2024-11-12 11:36:44'),
(2398, 'english', 'Edit Your Review', 'Edit Your Review', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2400, 'english', 'Select Rating', 'Select Rating', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2402, 'english', '1', '1', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2404, 'english', '2', '2', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2406, 'english', '3', '3', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2408, 'english', '4', '4', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2410, 'english', '5', '5', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2412, 'english', 'You have successfully Review Done!', 'You have successfully Review Done!', '2024-11-17 06:55:28', '2024-11-17 06:55:28'),
(2414, 'english', 'Your review was successfully submitted!', 'Your review was successfully submitted!', '2024-11-17 07:02:47', '2024-11-17 07:02:47'),
(2416, 'english', 'Please Login First!', 'Please Login First!', '2024-11-17 07:05:11', '2024-11-17 07:05:11'),
(2418, 'english', 'Add  Your Review', 'Add  Your Review', '2024-11-17 07:30:52', '2024-11-17 07:30:52'),
(2420, 'english', 'Add Your Review', 'Add Your Review', '2024-11-17 07:59:01', '2024-11-17 07:59:01'),
(2422, 'english', 'Your review was update successfully!', 'Your review was update successfully!', '2024-11-17 08:10:44', '2024-11-17 08:10:44'),
(2424, 'english', 'Update Reviews', 'Update Reviews', '2024-11-17 09:25:23', '2024-11-17 09:25:23'),
(2426, 'english', 'Add Reviews', 'Add Reviews', '2024-11-17 09:58:00', '2024-11-17 09:58:00'),
(2428, 'english', 'Reply', 'Reply', '2024-11-17 09:58:47', '2024-11-17 09:58:47'),
(2430, 'english', 'Log Out', 'Log Out', '2024-11-17 10:02:20', '2024-11-17 10:02:20'),
(2432, 'english', 'Review*', 'Review*', '2024-11-17 10:24:58', '2024-11-17 10:24:58'),
(2434, 'english', 'Reviews', 'Reviews', '2024-11-17 10:40:11', '2024-11-17 10:40:11'),
(2436, 'english', 'Reply Review', 'Reply Review', '2024-11-17 11:16:11', '2024-11-17 11:16:11'),
(2438, 'english', 'Your review was successfully updated!', 'Your review was successfully updated!', '2024-11-17 11:25:53', '2024-11-17 11:25:53'),
(2440, 'english', 'Review deleted successfully!', 'Review deleted successfully!', '2024-11-17 11:37:17', '2024-11-17 11:37:17'),
(2442, 'english', 'Empty Message', 'Empty Message', '2024-11-18 05:58:20', '2024-11-18 05:58:20'),
(2444, 'english', 'No Message Found', 'No Message Found', '2024-11-18 05:58:24', '2024-11-18 05:58:24'),
(2446, 'english', 'Write your message', 'Write your message', '2024-11-18 05:58:24', '2024-11-18 05:58:24'),
(2448, 'english', 'My Customer Panel', 'My Customer Panel', '2024-11-18 06:00:22', '2024-11-18 06:00:22'),
(2450, 'english', 'Wishlist', 'Wishlist', '2024-11-18 06:00:22', '2024-11-18 06:00:22'),
(2452, 'english', 'Following agent', 'Following agent', '2024-11-18 06:00:22', '2024-11-18 06:00:22'),
(2454, 'english', 'Wishlist added!', 'Wishlist added!', '2024-11-18 06:58:58', '2024-11-18 06:58:58'),
(2456, 'english', 'Wishlist removed', 'Wishlist removed', '2024-11-18 07:01:25', '2024-11-18 07:01:25'),
(2458, 'english', 'Agent Contact Details', 'Agent Contact Details', '2024-11-19 17:01:31', '2024-11-19 17:01:31'),
(2460, 'english', 'Follow', 'Follow', '2024-11-19 17:01:31', '2024-11-19 17:01:31'),
(2462, 'english', 'Listing by', 'Listing by', '2024-11-20 06:59:05', '2024-11-20 06:59:05'),
(2464, 'english', 'Phone:', 'Phone:', '2024-11-20 06:59:05', '2024-11-20 06:59:05'),
(2466, 'english', 'Email:', 'Email:', '2024-11-20 06:59:05', '2024-11-20 06:59:05'),
(2468, 'english', 'following', 'following', '2024-11-20 07:05:09', '2024-11-20 07:05:09'),
(2470, 'english', 'Unfollow', 'Unfollow', '2024-11-20 07:20:08', '2024-11-20 07:20:08'),
(2472, 'english', 'Message*', 'Message*', '2024-11-20 08:57:34', '2024-11-20 08:57:34'),
(2474, 'english', 'Book a Meeting', 'Book a Meeting', '2024-11-20 09:45:54', '2024-11-20 09:45:54'),
(2476, 'english', 'Select Date and Time', 'Select Date and Time', '2024-11-20 09:45:54', '2024-11-20 09:45:54'),
(2478, 'english', 'Submit Now', 'Submit Now', '2024-11-20 09:45:55', '2024-11-20 09:45:55'),
(2480, 'english', 'Service Title', 'Service Title', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2482, 'english', 'Enter service title', 'Enter service title', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2484, 'english', 'Service Time', 'Service Time', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2486, 'english', 'Enter service time', 'Enter service time', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2488, 'english', 'Service Price', 'Service Price', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2490, 'english', 'Enter service price', 'Enter service price', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2492, 'english', 'Show More', 'Show More', '2024-11-30 10:46:03', '2024-11-30 10:46:03'),
(2494, 'english', 'Filters', 'Filters', '2024-11-30 15:42:01', '2024-11-30 15:42:01'),
(2496, 'english', 'Clear', 'Clear', '2024-11-30 15:42:01', '2024-11-30 15:42:01'),
(2498, 'english', 'Car Frontend Settings', 'Car Frontend Settings', '2024-12-01 06:12:31', '2024-12-01 06:12:31'),
(2500, 'english', 'Banner', 'Banner', '2024-12-01 06:22:45', '2024-12-01 06:22:45'),
(2502, 'english', 'Upload  Banner Image', 'Upload  Banner Image', '2024-12-01 06:22:45', '2024-12-01 06:22:45'),
(2504, 'english', 'Motion Description', 'Motion Description', '2024-12-01 06:40:52', '2024-12-01 06:40:52'),
(2506, 'english', ' Motion Image', ' Motion Image', '2024-12-01 06:40:52', '2024-12-01 06:40:52'),
(2508, 'english', 'Car Title', 'Car Title', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2510, 'english', 'Car Description', 'Car Description', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2512, 'english', 'Car Banner', 'Car Banner', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2514, 'english', 'Car Motion Title', 'Car Motion Title', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2516, 'english', 'Car Motion Description', 'Car Motion Description', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2518, 'english', 'Car Motion Image', 'Car Motion Image', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2520, 'english', 'Car Banner Title', 'Car Banner Title', '2024-12-01 06:46:17', '2024-12-01 06:46:17'),
(2522, 'english', 'Car Banner Description', 'Car Banner Description', '2024-12-01 06:46:17', '2024-12-01 06:46:17'),
(2524, 'english', 'Car Banner Banner', 'Car Banner Banner', '2024-12-01 06:46:17', '2024-12-01 06:46:17'),
(2526, 'english', 'Upload  Image', 'Upload  Image', '2024-12-01 06:47:09', '2024-12-01 06:47:09'),
(2528, 'english', 'Upload Image', 'Upload Image', '2024-12-01 06:47:09', '2024-12-01 06:47:09'),
(2530, 'english', 'Car Home ', 'Car Home ', '2024-12-01 06:54:25', '2024-12-01 06:54:25'),
(2532, 'english', 'Beauty Home', 'Beauty Home', '2024-12-01 06:55:45', '2024-12-01 06:55:45'),
(2534, 'english', 'Featured', 'Featured', '2024-12-01 07:12:35', '2024-12-01 07:12:35'),
(2536, 'english', 'Top', 'Top', '2024-12-01 07:12:35', '2024-12-01 07:12:35'),
(2538, 'english', 'FEATURED VEHICLES', 'FEATURED VEHICLES', '2024-12-01 09:24:20', '2024-12-01 09:24:20'),
(2540, 'english', 'Top Cars', 'Top Cars', '2024-12-01 09:34:25', '2024-12-01 09:34:25'),
(2542, 'english', 'Category Updated successfully!', 'Category Updated successfully!', '2024-12-01 09:40:39', '2024-12-01 09:40:39'),
(2544, 'english', 'Car Listing Details', 'Car Listing Details', '2024-12-01 12:44:27', '2024-12-01 12:44:27'),
(2546, 'english', 'Car Details', 'Car Details', '2024-12-02 06:30:53', '2024-12-02 06:30:53'),
(2548, 'english', 'Beauty Listing Details', 'Beauty Listing Details', '2024-12-02 06:36:27', '2024-12-02 06:36:27'),
(2550, 'english', 'Overview', 'Overview', '2024-12-02 06:51:25', '2024-12-02 06:51:25'),
(2552, 'english', 'Information', 'Information', '2024-12-02 06:51:25', '2024-12-02 06:51:25'),
(2554, 'english', 'Condition', 'Condition', '2024-12-02 07:07:38', '2024-12-02 07:07:38'),
(2556, 'english', 'Fuel', 'Fuel', '2024-12-02 07:16:35', '2024-12-02 07:16:35'),
(2558, 'english', 'Seller information', 'Seller information', '2024-12-02 10:00:02', '2024-12-02 10:00:02'),
(2560, 'english', 'Phone :', 'Phone :', '2024-12-02 10:45:38', '2024-12-02 10:45:38'),
(2562, 'english', 'mail :', 'mail :', '2024-12-02 10:45:38', '2024-12-02 10:45:38'),
(2564, 'english', 'Address :', 'Address :', '2024-12-02 10:45:38', '2024-12-02 10:45:38'),
(2566, 'english', 'Update Your Review', 'Update Your Review', '2024-12-02 11:59:24', '2024-12-02 11:59:24'),
(2568, 'english', 'View all photos', 'View all photos', '2024-12-03 07:03:44', '2024-12-03 07:03:44'),
(2570, 'english', 'More cars from this seller', 'More cars from this seller', '2024-12-03 09:32:34', '2024-12-03 09:32:34'),
(2572, 'english', 'View all', 'View all', '2024-12-03 09:32:34', '2024-12-03 09:32:34'),
(2574, 'english', 'REVIEWS)', 'REVIEWS)', '2024-12-03 10:02:00', '2024-12-03 10:02:00'),
(2576, 'english', 'Stock', 'Stock', '2024-12-03 10:28:36', '2024-12-03 10:28:36'),
(2578, 'english', 'Book inspection', 'Book inspection', '2024-12-03 10:36:00', '2024-12-03 10:36:00'),
(2580, 'english', 'Select date & time', 'Select date & time', '2024-12-03 10:36:00', '2024-12-03 10:36:00'),
(2582, 'english', 'Your information', 'Your information', '2024-12-03 10:36:00', '2024-12-03 10:36:00'),
(2584, 'english', 'Replys', 'Replys', '2024-12-03 11:14:59', '2024-12-03 11:14:59'),
(2586, 'english', 'Contact Dealer', 'Contact Dealer', '2024-12-03 11:45:07', '2024-12-03 11:45:07'),
(2588, 'english', 'Car Dealer', 'Car Dealer', '2024-12-03 11:45:07', '2024-12-03 11:45:07'),
(2590, 'english', 'Message dealer', 'Message dealer', '2024-12-03 11:45:07', '2024-12-03 11:45:07'),
(2592, 'english', 'Years', 'Years', '2024-12-04 09:30:25', '2024-12-04 09:30:25'),
(2594, 'english', 'Colors', 'Colors', '2024-12-04 09:39:05', '2024-12-04 09:39:05'),
(2596, 'english', 'Brands', 'Brands', '2024-12-04 15:24:40', '2024-12-04 15:24:40'),
(2598, 'english', 'Search Cars', 'Search Cars', '2024-12-04 16:15:53', '2024-12-04 16:15:53'),
(2600, 'english', 'Hotel Frontend Settings', 'Hotel Frontend Settings', '2024-12-05 05:45:51', '2024-12-05 05:45:51'),
(2602, 'english', 'Hotel Banner Title', 'Hotel Banner Title', '2024-12-05 06:24:48', '2024-12-05 06:24:48'),
(2604, 'english', 'Hotel Banner Description', 'Hotel Banner Description', '2024-12-05 06:24:48', '2024-12-05 06:24:48'),
(2606, 'english', 'Hotel Video Url', 'Hotel Video Url', '2024-12-05 06:24:48', '2024-12-05 06:24:48'),
(2608, 'english', 'Hotel Banner Banner', 'Hotel Banner Banner', '2024-12-05 06:24:48', '2024-12-05 06:24:48'),
(2610, 'english', 'Booking Title', 'Booking Title', '2024-12-05 07:00:12', '2024-12-05 07:00:12'),
(2612, 'english', 'Booking Image', 'Booking Image', '2024-12-05 07:00:12', '2024-12-05 07:00:12'),
(2614, 'english', 'Hotel Banner', 'Hotel Banner', '2024-12-05 07:12:35', '2024-12-05 07:12:35'),
(2616, 'english', 'Exclusive Deals', 'Exclusive Deals', '2024-12-05 07:12:35', '2024-12-05 07:12:35'),
(2618, 'english', 'Exclusive Deals Discount', 'Exclusive Deals Discount', '2024-12-05 07:12:35', '2024-12-05 07:12:35'),
(2620, 'english', 'Exclusive Banner', 'Exclusive Banner', '2024-12-05 07:12:35', '2024-12-05 07:12:35'),
(2622, 'english', 'Size the moment', 'Size the moment', '2024-12-05 07:23:52', '2024-12-05 07:23:52'),
(2624, 'english', 'Size  Discount', 'Size  Discount', '2024-12-05 07:23:52', '2024-12-05 07:23:52'),
(2626, 'english', 'Size Banner', 'Size Banner', '2024-12-05 07:23:53', '2024-12-05 07:23:53'),
(2628, 'english', 'Learn More', 'Learn More', '2024-12-05 07:31:07', '2024-12-05 07:31:07'),
(2630, 'english', 'Take A Tour', 'Take A Tour', '2024-12-05 07:31:07', '2024-12-05 07:31:07'),
(2632, 'english', 'Find Gateway Deals', 'Find Gateway Deals', '2024-12-05 07:51:04', '2024-12-05 07:51:04'),
(2634, 'english', 'Explore Hotel', 'Explore Hotel', '2024-12-05 07:51:04', '2024-12-05 07:51:04'),
(2636, 'english', 'City deleted successfully!', 'City deleted successfully!', '2024-12-05 09:50:24', '2024-12-05 09:50:24'),
(2638, 'english', 'Top Hotels', 'Top Hotels', '2024-12-05 10:27:11', '2024-12-05 10:27:11'),
(2640, 'english', 'See all', 'See all', '2024-12-05 10:27:11', '2024-12-05 10:27:11'),
(2642, 'english', 'Popular Hotel', 'Popular Hotel', '2024-12-05 12:20:09', '2024-12-05 12:20:09'),
(2644, 'english', 'Flexible budget', 'Flexible budget', '2024-12-05 12:20:29', '2024-12-05 12:20:29'),
(2646, 'english', 'Peaceful place', 'Peaceful place', '2024-12-05 12:20:29', '2024-12-05 12:20:29'),
(2648, 'english', 'Well decorated', 'Well decorated', '2024-12-05 12:20:29', '2024-12-05 12:20:29'),
(2650, 'english', 'Get Started', 'Get Started', '2024-12-05 12:20:29', '2024-12-05 12:20:29'),
(2652, 'english', 'Contact Us', 'Contact Us', '2024-12-05 12:20:29', '2024-12-05 12:20:29'),
(2654, 'english', 'City Image', 'City Image', '2024-12-05 12:34:22', '2024-12-05 12:34:22'),
(2656, 'english', 'Hotel Listing Details', 'Hotel Listing Details', '2024-12-08 06:28:53', '2024-12-08 06:28:53'),
(2658, 'english', 'Hotel details', 'Hotel details', '2024-12-08 06:41:05', '2024-12-08 06:41:05'),
(2660, 'english', 'Total Price : ', 'Total Price : ', '2024-12-08 06:42:35', '2024-12-08 06:42:35'),
(2662, 'english', 'Select Status', 'Select Status', '2024-12-08 07:20:18', '2024-12-08 07:20:18'),
(2664, 'english', 'Rent', 'Rent', '2024-12-08 07:20:18', '2024-12-08 07:20:18'),
(2666, 'english', 'Sell', 'Sell', '2024-12-08 07:20:18', '2024-12-08 07:20:18'),
(2668, 'english', 'Published:', 'Published:', '2024-12-08 07:45:16', '2024-12-08 07:45:16'),
(2670, 'english', 'For', 'For', '2024-12-08 07:46:26', '2024-12-08 07:46:26'),
(2672, 'english', 'Room', 'Room', '2024-12-08 07:52:45', '2024-12-08 07:52:45'),
(2674, 'english', 'Number of Child', 'Number of Child', '2024-12-08 09:39:41', '2024-12-08 09:39:41'),
(2676, 'english', 'Persons', 'Persons', '2024-12-08 09:45:50', '2024-12-08 09:45:50'),
(2678, 'english', 'Child', 'Child', '2024-12-08 09:45:50', '2024-12-08 09:45:50'),
(2680, 'english', 'For 1 Night 1 Room', 'For 1 Night 1 Room', '2024-12-08 09:48:58', '2024-12-08 09:48:58'),
(2682, 'english', 'Select Room', 'Select Room', '2024-12-08 09:48:58', '2024-12-08 09:48:58'),
(2684, 'english', 'Refundable', 'Refundable', '2024-12-08 09:48:58', '2024-12-08 09:48:58'),
(2686, 'english', 'See all Amenities', 'See all Amenities', '2024-12-08 09:52:06', '2024-12-08 09:52:06'),
(2688, 'english', 'Get Direction', 'Get Direction', '2024-12-08 10:01:52', '2024-12-08 10:01:52'),
(2690, 'english', 'Related Hotels', 'Related Hotels', '2024-12-08 11:23:11', '2024-12-08 11:23:11'),
(2692, 'english', 'Proceed Booking', 'Proceed Booking', '2024-12-09 05:19:16', '2024-12-09 05:19:16'),
(2694, 'english', 'No Result Found', 'No Result Found', '2024-12-09 06:18:09', '2024-12-09 06:18:09'),
(2696, 'english', 'No products were found matching your selection.', 'No products were found matching your selection.', '2024-12-09 06:18:09', '2024-12-09 06:18:09'),
(2698, 'english', 'Go Back', 'Go Back', '2024-12-09 06:18:09', '2024-12-09 06:18:09'),
(2700, 'english', 'Bathroom', 'Bathroom', '2024-12-09 07:47:36', '2024-12-09 07:47:36'),
(2702, 'english', 'Bedroom', 'Bedroom', '2024-12-09 08:06:33', '2024-12-09 08:06:33'),
(2704, 'english', 'Select Category', 'Select Category', '2024-12-09 09:46:20', '2024-12-09 09:46:20'),
(2706, 'english', '', '', '2024-12-09 09:58:22', '2024-12-09 09:58:22'),
(2708, 'english', 'Real-Estate Home', 'Real-Estate Home', '2024-12-09 12:06:07', '2024-12-09 12:06:07'),
(2710, 'english', 'Real  Estate Frontend Settings', 'Real  Estate Frontend Settings', '2024-12-10 05:46:12', '2024-12-10 05:46:12'),
(2712, 'english', 'Real Estate Frontend Settings', 'Real Estate Frontend Settings', '2024-12-10 05:49:28', '2024-12-10 05:49:28'),
(2714, 'english', 'Real Estate  Title', 'Real Estate  Title', '2024-12-10 05:49:28', '2024-12-10 05:49:28'),
(2716, 'english', 'Real Estate Banner Description', 'Real Estate Banner Description', '2024-12-10 05:49:28', '2024-12-10 05:49:28'),
(2718, 'english', 'Real Estate Banner', 'Real Estate Banner', '2024-12-10 05:49:28', '2024-12-10 05:49:28'),
(2720, 'english', 'Real Estate Discount Title', 'Real Estate Discount Title', '2024-12-10 06:04:44', '2024-12-10 06:04:44'),
(2722, 'english', 'Real Estate Short Description', 'Real Estate Short Description', '2024-12-10 06:04:44', '2024-12-10 06:04:44'),
(2724, 'english', 'Discount Image', 'Discount Image', '2024-12-10 06:04:44', '2024-12-10 06:04:44'),
(2726, 'english', 'Discount', 'Discount', '2024-12-10 06:08:43', '2024-12-10 06:08:43'),
(2728, 'english', 'Listing Discount price', 'Listing Discount price', '2024-12-10 08:21:36', '2024-12-10 08:21:36'),
(2730, 'english', 'Enter discount price', 'Enter discount price', '2024-12-10 08:23:53', '2024-12-10 08:23:53'),
(2732, 'english', 'Real Estate Listing Details', 'Real Estate Listing Details', '2024-12-10 09:41:29', '2024-12-10 09:41:29'),
(2734, 'english', 'Real-Estate', 'Real-Estate', '2024-12-10 09:50:42', '2024-12-10 09:50:42'),
(2736, 'english', 'Property ID', 'Property ID', '2024-12-10 10:27:50', '2024-12-10 10:27:50'),
(2738, 'english', 'Apartment', 'Apartment', '2024-12-10 10:32:20', '2024-12-10 10:32:20'),
(2740, 'english', 'ID :', 'ID :', '2024-12-10 10:32:20', '2024-12-10 10:32:20'),
(2742, 'english', 'Property', 'Property', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2744, 'english', 'Property Size', 'Property Size', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2746, 'english', 'Bedrooms', 'Bedrooms', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2748, 'english', 'Bathrooms', 'Bathrooms', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2750, 'english', 'Year Build', 'Year Build', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2752, 'english', 'Property Agent', 'Property Agent', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2754, 'english', 'Floor Plans', 'Floor Plans', '2024-12-10 11:47:17', '2024-12-10 11:47:17'),
(2756, 'english', 'Choose Category', 'Choose Category', '2024-12-11 07:54:11', '2024-12-11 07:54:11'),
(2758, 'english', 'Choose City', 'Choose City', '2024-12-11 08:01:54', '2024-12-11 08:01:54'),
(2760, 'english', 'Choose your budget', 'Choose your budget', '2024-12-11 08:10:24', '2024-12-11 08:10:24'),
(2762, 'english', 'Tour Type', 'Tour Type', '2024-12-18 11:10:52', '2024-12-18 11:10:52'),
(2764, 'english', 'In Progress', 'In Progress', '2024-12-18 11:10:52', '2024-12-18 11:10:52'),
(2766, 'english', 'In Person', 'In Person', '2024-12-18 11:23:40', '2024-12-18 11:23:40'),
(2768, 'english', 'Nearby', 'Nearby', '2024-12-18 11:33:25', '2024-12-18 11:33:25'),
(2770, 'english', 'Nearby Location', 'Nearby Location', '2024-12-18 11:33:25', '2024-12-18 11:33:25'),
(2772, 'english', 'Add Nearby Location', 'Add Nearby Location', '2024-12-18 11:36:59', '2024-12-18 11:36:59'),
(2774, 'english', 'School', 'School', '2024-12-18 12:33:09', '2024-12-18 12:33:09'),
(2776, 'english', 'Hospital', 'Hospital', '2024-12-18 12:33:09', '2024-12-18 12:33:09'),
(2778, 'english', 'Shopping Center', 'Shopping Center', '2024-12-18 12:33:09', '2024-12-18 12:33:09'),
(2780, 'english', 'Enter discount price', 'Enter discount price', '2024-12-19 05:02:59', '2024-12-19 05:02:59'),
(2782, 'english', 'Save Nearby', 'Save Nearby', '2024-12-19 06:32:59', '2024-12-19 06:32:59'),
(2784, 'english', 'Add a Nearby Location', 'Add a Nearby Location', '2024-12-19 06:34:00', '2024-12-19 06:34:00'),
(2786, 'english', 'Select Location', 'Select Location', '2024-12-19 06:53:18', '2024-12-19 06:53:18'),
(2788, 'english', 'Your selected', 'Your selected', '2024-12-19 06:53:18', '2024-12-19 06:53:18'),
(2790, 'english', 'NearBy Location Add successful!', 'NearBy Location Add successful!', '2024-12-19 07:19:32', '2024-12-19 07:19:32'),
(2792, 'english', 'NearBy Location Update successful!', 'NearBy Location Update successful!', '2024-12-19 09:22:08', '2024-12-19 09:22:08'),
(2794, 'english', 'Location has been deleted', 'Location has been deleted', '2024-12-19 09:30:00', '2024-12-19 09:30:00'),
(2796, 'english', '3D Model', '3D Model', '2024-12-19 10:44:50', '2024-12-19 10:44:50'),
(2798, 'english', 'Upload 3D Model: ', 'Upload 3D Model: ', '2024-12-19 10:51:38', '2024-12-19 10:51:38'),
(2800, 'english', 'Upload A 3D Model', 'Upload A 3D Model', '2024-12-19 10:54:54', '2024-12-19 10:54:54'),
(2802, 'english', 'Upload 3D Model', 'Upload 3D Model', '2024-12-19 11:08:22', '2024-12-19 11:08:22'),
(2804, 'english', 'Choose Type', 'Choose Type', '2024-12-21 06:56:57', '2024-12-21 06:56:57'),
(2806, 'english', 'Choose Model', 'Choose Model', '2024-12-21 07:02:37', '2024-12-21 07:02:37'),
(2808, 'english', 'Choose Brand', 'Choose Brand', '2024-12-21 07:02:37', '2024-12-21 07:02:37'),
(2810, 'english', 'Choose Year', 'Choose Year', '2024-12-21 07:02:37', '2024-12-21 07:02:37'),
(2812, 'english', 'Best Properties', 'Best Properties', '2024-12-21 07:08:31', '2024-12-21 07:08:31'),
(2814, 'english', 'Explore All Properties', 'Explore All Properties', '2024-12-21 07:08:31', '2024-12-21 07:08:31'),
(2816, 'english', 'For Sell', 'For Sell', '2024-12-21 07:40:38', '2024-12-21 07:40:38'),
(2818, 'english', 'For Rent', 'For Rent', '2024-12-21 07:55:45', '2024-12-21 07:55:45'),
(2820, 'english', 'All Listing', 'All Listing', '2024-12-21 08:00:40', '2024-12-21 08:00:40'),
(2822, 'english', 'Footer Copyright Text', 'Footer Copyright Text', '2024-12-21 08:22:54', '2024-12-21 08:22:54'),
(2824, 'english', 'Restaurant Home', 'Restaurant Home', '2024-12-22 06:01:38', '2024-12-22 06:01:38'),
(2826, 'english', 'Restaurant Frontend Settings', 'Restaurant Frontend Settings', '2024-12-22 06:33:48', '2024-12-22 06:33:48'),
(2828, 'english', 'Restaurant Banner Title', 'Restaurant Banner Title', '2024-12-22 06:33:48', '2024-12-22 06:33:48'),
(2830, 'english', 'Restaurant Banner 1', 'Restaurant Banner 1', '2024-12-22 06:33:48', '2024-12-22 06:33:48'),
(2832, 'english', 'Restaurant Banner', 'Restaurant Banner', '2024-12-22 06:38:56', '2024-12-22 06:38:56'),
(2834, 'english', 'Discount Banner', 'Discount Banner', '2024-12-22 07:30:34', '2024-12-22 07:30:34'),
(2836, 'english', 'View Menu', 'View Menu', '2024-12-22 07:42:52', '2024-12-22 07:42:52'),
(2838, 'english', 'Book A Table', 'Book A Table', '2024-12-22 07:42:52', '2024-12-22 07:42:52'),
(2840, 'english', 'Trending', 'Trending', '2024-12-22 08:14:43', '2024-12-22 08:14:43'),
(2842, 'english', 'Popular Restaurant', 'Popular Restaurant', '2024-12-22 09:27:02', '2024-12-22 09:27:02'),
(2844, 'english', 'Trending Restaurant', 'Trending Restaurant', '2024-12-22 09:46:09', '2024-12-22 09:46:09'),
(2846, 'english', 'Explore Restaurant', 'Explore Restaurant', '2024-12-22 10:03:54', '2024-12-22 10:03:54'),
(2848, 'english', 'Restaurants', 'Restaurants', '2024-12-22 10:03:55', '2024-12-22 10:03:55'),
(2850, 'english', 'Restaurant details', 'Restaurant details', '2024-12-22 11:13:38', '2024-12-22 11:13:38'),
(2852, 'english', 'closing', 'closing', '2024-12-22 12:03:08', '2024-12-22 12:03:08'),
(2854, 'english', 'Remove Wishlist', 'Remove Wishlist', '2024-12-23 07:18:45', '2024-12-23 07:18:45'),
(2856, 'english', 'Discount Price', 'Discount Price', '2024-12-23 10:27:53', '2024-12-23 10:27:53'),
(2858, 'english', 'New', 'New', '2024-12-23 10:27:53', '2024-12-23 10:27:53'),
(2860, 'english', 'Used', 'Used', '2024-12-23 10:27:53', '2024-12-23 10:27:53'),
(2862, 'english', '0', '0', '2024-12-23 10:46:11', '2024-12-23 10:46:11'),
(2864, 'english', 'All Restaurant', 'All Restaurant', '2024-12-23 11:53:10', '2024-12-23 11:53:10'),
(2866, 'english', 'Guests', 'Guests', '2024-12-24 04:55:44', '2024-12-24 04:55:44'),
(2868, 'english', 'Adults', 'Adults', '2024-12-24 04:55:44', '2024-12-24 04:55:44'),
(2870, 'english', 'Children', 'Children', '2024-12-24 04:55:44', '2024-12-24 04:55:44'),
(2872, 'english', 'Lunch', 'Lunch', '2024-12-24 04:55:44', '2024-12-24 04:55:44'),
(2874, 'english', 'Dinner', 'Dinner', '2024-12-24 04:55:44', '2024-12-24 04:55:44'),
(2876, 'english', ' Adult Guests:', ' Adult Guests:', '2024-12-24 07:11:34', '2024-12-24 07:11:34'),
(2878, 'english', 'Child Guests:', 'Child Guests:', '2024-12-24 07:11:34', '2024-12-24 07:11:34'),
(2880, 'english', 'Time: ', 'Time: ', '2024-12-24 07:11:34', '2024-12-24 07:11:34'),
(2882, 'english', 'Select Time', 'Select Time', '2024-12-24 07:18:19', '2024-12-24 07:18:19'),
(2884, 'english', 'Quick links', 'Quick links', '2024-12-24 09:29:59', '2024-12-24 09:29:59'),
(2886, 'english', 'About Us', 'About Us', '2024-12-24 09:29:59', '2024-12-24 09:29:59'),
(2888, 'english', 'Privacy policy', 'Privacy policy', '2024-12-24 09:29:59', '2024-12-24 09:29:59'),
(2890, 'english', 'Terms and Condition', 'Terms and Condition', '2024-12-24 09:29:59', '2024-12-24 09:29:59'),
(2892, 'english', 'Links', 'Links', '2024-12-24 09:32:31', '2024-12-24 09:32:31'),
(2894, 'english', 'Popular Product', 'Popular Product', '2024-12-24 11:28:14', '2024-12-24 11:28:14'),
(2896, 'english', 'Best Product', 'Best Product', '2024-12-24 11:28:14', '2024-12-24 11:28:14'),
(2898, 'english', 'Wellness Product', 'Wellness Product', '2024-12-24 11:28:14', '2024-12-24 11:28:14'),
(2900, 'english', 'Agent Details', 'Agent Details', '2024-12-25 05:45:25', '2024-12-25 05:45:25'),
(2902, 'english', 'Facebook.com', 'Facebook.com', '2024-12-25 06:02:08', '2024-12-25 06:02:08'),
(2904, 'english', 'Twitter.com', 'Twitter.com', '2024-12-25 06:05:37', '2024-12-25 06:05:37'),
(2906, 'english', 'linkedin.com', 'linkedin.com', '2024-12-25 06:05:37', '2024-12-25 06:05:37'),
(2908, 'english', 'Listings', 'Listings', '2024-12-25 06:29:54', '2024-12-25 06:29:54'),
(2910, 'english', 'Send Email', 'Send Email', '2024-12-25 06:29:54', '2024-12-25 06:29:54'),
(2912, 'english', 'Call', 'Call', '2024-12-25 06:29:54', '2024-12-25 06:29:54'),
(2914, 'english', 'Our Happy Customers', 'Our Happy Customers', '2024-12-25 07:26:24', '2024-12-25 07:26:24'),
(2916, 'english', 'Hotels', 'Hotels', '2024-12-25 07:40:44', '2024-12-25 07:40:44'),
(2918, 'english', 'No Data were found matching your selection.', 'No Data were found matching your selection.', '2024-12-25 07:50:05', '2024-12-25 07:50:05'),
(2920, 'english', 'Share On :', 'Share On :', '2024-12-25 08:12:13', '2024-12-25 08:12:13'),
(2922, 'english', 'Tags :', 'Tags :', '2024-12-25 08:17:53', '2024-12-25 08:17:53'),
(2924, 'english', 'Related Blogs', 'Related Blogs', '2024-12-25 09:17:48', '2024-12-25 09:17:48'),
(2926, 'english', 'Newsletter Subscribe successfully', 'Newsletter Subscribe successfully', '2024-12-25 10:15:38', '2024-12-25 10:15:38'),
(2928, 'english', 'Subscribe User', 'Subscribe User', '2024-12-25 10:48:35', '2024-12-25 10:48:35'),
(2930, 'english', 'Add Newsletter', 'Add Newsletter', '2024-12-25 10:48:55', '2024-12-25 10:48:55'),
(2932, 'english', 'Newsletter', 'Newsletter', '2024-12-25 10:53:14', '2024-12-25 10:53:14'),
(2934, 'english', 'Subscribers', 'Subscribers', '2024-12-25 10:54:15', '2024-12-25 10:54:15'),
(2936, 'english', 'Export', 'Export', '2024-12-25 10:54:15', '2024-12-25 10:54:15'),
(2938, 'english', 'PDF', 'PDF', '2024-12-25 10:54:15', '2024-12-25 10:54:15'),
(2940, 'english', 'Print', 'Print', '2024-12-25 10:54:15', '2024-12-25 10:54:15'),
(2942, 'english', 'Search Email', 'Search Email', '2024-12-25 10:54:54', '2024-12-25 10:54:54'),
(2944, 'english', 'User status', 'User status', '2024-12-25 10:54:54', '2024-12-25 10:54:54'),
(2946, 'english', 'Actions', 'Actions', '2024-12-25 10:54:54', '2024-12-25 10:54:54'),
(2948, 'english', 'Not Registered', 'Not Registered', '2024-12-25 10:54:54', '2024-12-25 10:54:54'),
(2950, 'english', 'data', 'data', '2024-12-25 10:54:54', '2024-12-25 10:54:54'),
(2952, 'english', 'Subscriber', 'Subscriber', '2024-12-25 10:56:59', '2024-12-25 10:56:59'),
(2954, 'english', 'Registered User', 'Registered User', '2024-12-25 11:05:59', '2024-12-25 11:05:59'),
(2956, 'english', 'Data not found.', 'Data not found.', '2024-12-25 11:07:49', '2024-12-25 11:07:49'),
(2958, 'english', 'subscriber delete successfully!', 'subscriber delete successfully!', '2024-12-25 11:09:38', '2024-12-25 11:09:38'),
(2960, 'english', 'You are already subscribed', 'You are already subscribed', '2024-12-25 11:11:42', '2024-12-25 11:11:42'),
(2962, 'english', 'Warning', 'Warning', '2024-12-25 11:11:42', '2024-12-25 11:11:42'),
(2964, 'english', 'Newsletter Subscriber', 'Newsletter Subscriber', '2024-12-25 11:12:43', '2024-12-25 11:12:43'),
(2966, 'english', 'Subscription delete successfully!', 'Subscription delete successfully!', '2024-12-25 11:20:28', '2024-12-25 11:20:28'),
(2968, 'english', 'Subject', 'Subject', '2024-12-25 11:31:12', '2024-12-25 11:31:12'),
(2970, 'english', 'Write  description', 'Write  description', '2024-12-25 11:33:44', '2024-12-25 11:33:44'),
(2972, 'english', 'Newsletter created successfully!', 'Newsletter created successfully!', '2024-12-25 11:37:48', '2024-12-25 11:37:48'),
(2974, 'english', 'Send Newsletter', 'Send Newsletter', '2024-12-25 11:43:09', '2024-12-25 11:43:09'),
(2976, 'english', 'Newsletter deleted successfully.', 'Newsletter deleted successfully.', '2024-12-25 11:53:14', '2024-12-25 11:53:14'),
(2978, 'english', 'Update Newsletter', 'Update Newsletter', '2024-12-25 12:00:26', '2024-12-25 12:00:26'),
(2980, 'english', 'Newsletter updated successfully.', 'Newsletter updated successfully.', '2024-12-25 12:21:38', '2024-12-25 12:21:38'),
(2982, 'english', 'Send To', 'Send To', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2984, 'english', 'Selected user', 'Selected user', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2986, 'english', 'All user', 'All user', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2988, 'english', 'All student', 'All student', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2990, 'english', 'All instructor', 'All instructor', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2992, 'english', 'All subscriber', 'All subscriber', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2994, 'english', 'Non registered user', 'Non registered user', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2996, 'english', 'Email sent successfully', 'Email sent successfully', '2024-12-26 07:13:54', '2024-12-26 07:13:54'),
(2998, 'english', 'Please select a user', 'Please select a user', '2024-12-26 07:21:40', '2024-12-26 07:21:40'),
(3000, 'english', 'SMTP Settings', 'SMTP Settings', '2024-12-26 09:36:42', '2024-12-26 09:36:42'),
(3002, 'english', 'Menu Settings', 'Menu Settings', '2024-12-26 09:39:42', '2024-12-26 09:39:42'),
(3004, 'english', 'You can re-order the Menu by dragging and dropping each of the Menu!', 'You can re-order the Menu by dragging and dropping each of the Menu!', '2024-12-26 11:05:45', '2024-12-26 11:05:45'),
(3006, 'english', 'You can reorder the menu by dragging and dropping each item! The way you arrange them here will be reflected on the frontend as well.', 'You can reorder the menu by dragging and dropping each item! The way you arrange them here will be reflected on the frontend as well.', '2024-12-26 11:17:10', '2024-12-26 11:17:10'),
(3008, 'english', 'MAIN MENU', 'MAIN MENU', '2024-12-27 14:39:14', '2024-12-27 14:39:14'),
(3010, 'english', 'All Customer', 'All Customer', '2024-12-27 14:40:29', '2024-12-27 14:40:29'),
(3012, 'english', 'Website FAQ', 'Website FAQ', '2024-12-27 14:58:10', '2024-12-27 14:58:10'),
(3014, 'english', 'Question', 'Question', '2024-12-27 15:01:19', '2024-12-27 15:01:19'),
(3016, 'english', 'Write a question', 'Write a question', '2024-12-27 15:01:19', '2024-12-27 15:01:19'),
(3018, 'english', 'Answer', 'Answer', '2024-12-27 15:01:19', '2024-12-27 15:01:19'),
(3020, 'english', 'Write a question answer', 'Write a question answer', '2024-12-27 15:01:19', '2024-12-27 15:01:19'),
(3022, 'english', 'Website Faqs update successfully', 'Website Faqs update successfully', '2024-12-27 15:05:39', '2024-12-27 15:05:39'),
(3024, 'english', 'Frequently Asked Questions', 'Frequently Asked Questions', '2024-12-27 15:10:51', '2024-12-27 15:10:51'),
(3026, 'english', 'Privacy policy', 'Privacy policy', '2024-12-27 15:18:28', '2024-12-27 15:18:28'),
(3028, 'english', 'Refund policy', 'Refund policy', '2024-12-27 15:18:28', '2024-12-27 15:18:28'),
(3030, 'english', 'Write description', 'Write description', '2024-12-27 15:24:26', '2024-12-27 15:24:26'),
(3032, 'english', 'Privacy-policy', 'Privacy-policy', '2024-12-27 15:46:44', '2024-12-27 15:46:44'),
(3034, 'english', 'Another Links', 'Another Links', '2024-12-27 15:58:00', '2024-12-27 15:58:00'),
(3036, 'english', 'Pricing Plan for Becoming Agent', 'Pricing Plan for Becoming Agent', '2024-12-27 15:58:03', '2024-12-27 15:58:03'),
(3038, 'english', 'Get In Touch', 'Get In Touch', '2024-12-27 16:27:19', '2024-12-27 16:27:19'),
(3040, 'english', 'Awesome  site. on the top advertising a Courses available business online includes assembling  site on the site.', 'Awesome  site. on the top advertising a Courses available business online includes assembling  site on the site.', '2024-12-27 16:27:19', '2024-12-27 16:27:19'),
(3042, 'english', 'Company', 'Company', '2024-12-27 16:48:31', '2024-12-27 16:48:31'),
(3044, 'english', 'I am bound by the terms of the service I accept Privacy Policy', 'I am bound by the terms of the service I accept Privacy Policy', '2024-12-27 16:48:31', '2024-12-27 16:48:31'),
(3046, 'english', 'Send Message', 'Send Message', '2024-12-27 16:48:31', '2024-12-27 16:48:31'),
(3048, 'english', 'Contact successfully', 'Contact successfully', '2024-12-27 17:09:42', '2024-12-27 17:09:42'),
(3050, 'english', 'Search Contact', 'Search Contact', '2024-12-27 17:29:52', '2024-12-27 17:29:52'),
(3052, 'english', 'Contact delete successfully!', 'Contact delete successfully!', '2024-12-27 17:44:20', '2024-12-27 17:44:20'),
(3055, 'english', 'Tamil', 'Tamil', '2024-12-27 18:11:36', '2024-12-27 18:11:36'),
(3057, 'english', 'Send reply', 'Send reply', '2024-12-27 18:16:59', '2024-12-27 18:16:59'),
(3060, 'english', 'Atlas Sign Up', 'Atlas Sign Up', '2024-12-27 19:04:35', '2024-12-27 19:04:35'),
(3063, 'english', 'Atlas Forgot Password', 'Atlas Forgot Password', '2024-12-27 19:12:23', '2024-12-27 19:12:23'),
(3066, 'english', 'Forgot Password', 'Forgot Password', '2024-12-27 19:17:54', '2024-12-27 19:17:54'),
(3069, 'english', 'Email :', 'Email :', '2024-12-28 05:28:59', '2024-12-28 05:28:59'),
(3072, 'english', 'User Full Name *', 'User Full Name *', '2024-12-28 06:52:50', '2024-12-28 06:52:50'),
(3075, 'english', 'Engine size', 'Engine size', '2024-12-28 07:50:20', '2024-12-28 07:50:20'),
(3078, 'english', 'Filter', 'Filter', '2024-12-28 08:38:18', '2024-12-28 08:38:18'),
(3081, 'english', '404 not found', '404 not found', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3084, 'english', 'The page you requested could not be found', 'The page you requested could not be found', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3087, 'english', 'Please try the following', 'Please try the following', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3090, 'english', 'Check the spelling of the url', 'Check the spelling of the url', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3093, 'english', 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3096, 'english', 'Back to home', 'Back to home', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3099, 'english', '500 not found', '500 not found', '2024-12-29 05:05:15', '2024-12-29 05:05:15'),
(3102, 'english', '500 error found', '500 error found', '2024-12-29 05:05:15', '2024-12-29 05:05:15'),
(3105, 'english', 'A technical error has occurred', 'A technical error has occurred', '2024-12-29 05:05:15', '2024-12-29 05:05:15'),
(3108, 'english', 'Please contact with site administrator', 'Please contact with site administrator', '2024-12-29 05:05:15', '2024-12-29 05:05:15'),
(3111, 'english', 'Contact Email', 'Contact Email', '2024-12-29 05:05:15', '2024-12-29 05:05:15'),
(3114, 'english', 'Atlas Reset Password', 'Atlas Reset Password', '2024-12-29 05:45:26', '2024-12-29 05:45:26'),
(3117, 'english', 'Reset Password', 'Reset Password', '2024-12-29 05:45:26', '2024-12-29 05:45:26'),
(3120, 'english', 'Submit your account email address.', 'Submit your account email address.', '2024-12-29 05:45:26', '2024-12-29 05:45:26'),
(3123, 'english', 'Your Email', 'Your Email', '2024-12-29 05:45:26', '2024-12-29 05:45:26'),
(3126, 'english', 'A confirmation email has been sent. Please check your inbox to confirm access to this account from this device.', 'A confirmation email has been sent. Please check your inbox to confirm access to this account from this device.', '2024-12-29 06:32:46', '2024-12-29 06:32:46'),
(3129, 'english', 'A confirmation email has been sent. Please check your inbox.', 'A confirmation email has been sent. Please check your inbox.', '2024-12-29 06:35:10', '2024-12-29 06:35:10'),
(3132, 'english', 'Password Reset Successfully', 'Password Reset Successfully', '2024-12-29 06:37:04', '2024-12-29 06:37:04'),
(3135, 'english', 'Login Successfully', 'Login Successfully', '2024-12-29 06:39:27', '2024-12-29 06:39:27'),
(3147, 'english', 'Back to login Page.', 'Back to login Page.', '2024-12-29 07:08:36', '2024-12-29 07:08:36'),
(3150, 'english', 'Back to login.', 'Back to login.', '2024-12-29 07:09:49', '2024-12-29 07:09:49'),
(3153, 'english', 'A verification link has been sent to your email address.', 'A verification link has been sent to your email address.', '2024-12-29 08:13:45', '2024-12-29 08:13:45'),
(3156, 'english', 'Registered successfully!', 'Registered successfully!', '2024-12-29 08:15:16', '2024-12-29 08:15:16'),
(3162, 'english', 'Atlas Verify  Email', 'Atlas Verify  Email', '2024-12-29 09:00:07', '2024-12-29 09:00:07'),
(3165, 'english', 'Enter Verification COde', 'Enter Verification COde', '2024-12-29 09:00:07', '2024-12-29 09:00:07'),
(3168, 'english', 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', '2024-12-29 09:00:07', '2024-12-29 09:00:07'),
(3171, 'english', 'Resend Verification Email', 'Resend Verification Email', '2024-12-29 09:00:07', '2024-12-29 09:00:07'),
(3174, 'english', 'A new verification link has been sent to the email address you provided during registration.', 'A new verification link has been sent to the email address you provided during registration.', '2024-12-29 09:00:18', '2024-12-29 09:00:18'),
(3183, 'english', 'Send Verification Email', 'Send Verification Email', '2024-12-29 10:29:51', '2024-12-29 10:29:51'),
(3192, 'english', 'Click Verify Email', 'Click Verify Email', '2024-12-29 10:49:09', '2024-12-29 10:49:09'),
(3195, 'english', 'Package update successfully!', 'Package update successfully!', '2024-12-29 12:35:41', '2024-12-29 12:35:41'),
(3204, 'english', 'Pay by Stripe', 'Pay by Stripe', '2024-12-30 05:36:59', '2024-12-30 05:36:59'),
(3207, 'english', 'Purchasing', 'Purchasing', '2024-12-30 06:48:46', '2024-12-30 06:48:46'),
(3210, 'english', 'Payment not configured yet', 'Payment not configured yet', '2024-12-30 07:12:31', '2024-12-30 07:12:31'),
(3213, 'english', 'Payment not configured yet!', 'Payment not configured yet!', '2024-12-30 07:26:11', '2024-12-30 07:26:11'),
(3222, 'english', 'Melanie Vasquez 124', 'Melanie Vasquez 124', '2024-12-30 10:02:17', '2024-12-30 10:02:17'),
(3225, 'english', 'Aliquid sit maxime a', 'Aliquid sit maxime a', '2024-12-30 10:02:17', '2024-12-30 10:02:17'),
(3228, 'english', 'Pay by Razorpay', 'Pay by Razorpay', '2024-12-30 10:19:04', '2024-12-30 10:19:04'),
(3231, 'english', 'Pay', 'Pay', '2024-12-30 10:32:38', '2024-12-30 10:32:38'),
(3234, 'english', 'Payment failed! Please try again.', 'Payment failed! Please try again.', '2024-12-30 10:58:20', '2024-12-30 10:58:20'),
(3237, 'english', 'User information updated!', 'User information updated!', '2024-12-30 12:18:41', '2024-12-30 12:18:41'),
(3243, 'english', 'pay by paystack', 'pay by paystack', '2024-12-31 04:52:58', '2024-12-31 04:52:58'),
(3246, 'english', 'Total Listing', 'Total Listing', '2024-12-31 05:50:55', '2024-12-31 05:50:55'),
(3249, 'english', 'Real-Estate Listing', 'Real-Estate Listing', '2024-12-31 05:56:25', '2024-12-31 05:56:25'),
(3252, 'english', 'Total Subscription', 'Total Subscription', '2024-12-31 06:05:18', '2024-12-31 06:05:18'),
(3255, 'english', 'Monthly Earnings for', 'Monthly Earnings for', '2024-12-31 09:19:21', '2024-12-31 09:19:21'),
(3258, 'english', 'Visible Listings as Percentages', 'Visible Listings as Percentages', '2024-12-31 09:51:45', '2024-12-31 09:51:45'),
(3261, 'english', 'Language updated successfully!', 'Language updated successfully!', '2024-12-31 10:00:45', '2024-12-31 10:00:45'),
(3339, 'english', 'Cars', 'Cars', '2024-12-31 11:01:05', '2024-12-31 11:01:05'),
(3342, 'english', 'Terms-and-condition', 'Terms-and-condition', '2024-12-31 11:25:45', '2024-12-31 11:25:45'),
(3348, 'english', 'Video Chat', 'Video Chat', '2025-01-02 07:46:10', '2025-01-02 07:46:10'),
(3351, 'english', 'Website name', 'Website name', '2025-01-02 09:57:02', '2025-01-02 09:57:02'),
(3354, 'english', 'Website Email', 'Website Email', '2025-01-02 09:57:02', '2025-01-02 09:57:02'),
(3357, 'english', 'Website keywords', 'Website keywords', '2025-01-02 09:57:02', '2025-01-02 09:57:02'),
(3360, 'english', 'Website Description', 'Website Description', '2025-01-02 09:57:02', '2025-01-02 09:57:02'),
(3363, 'english', 'Author', 'Author', '2025-01-02 09:57:02', '2025-01-02 09:57:02'),
(3366, 'english', 'Install successfully!', 'Install successfully!', '2025-01-02 10:52:56', '2025-01-02 10:52:56'),
(3372, 'english', 'Are you sure?', 'Are you sure?', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3373, 'english', 'You can\'t bring it back!', 'You can\'t bring it back!', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3374, 'english', 'Cancel', 'Cancel', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3375, 'english', 'Confirm', 'Confirm', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3376, 'english', 'Just Now', 'Just Now', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3377, 'english', 'Success !', 'Success !', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3378, 'english', 'Attention !', 'Attention !', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3379, 'english', 'An Error Occurred !', 'An Error Occurred !', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3380, 'english', 'Real-Estate Directory Listing', 'Real-Estate Directory Listing', '2025-03-11 09:34:52', '2025-03-11 09:34:52'),
(3381, 'english', 'Budget', 'Budget', '2025-03-11 09:34:52', '2025-03-11 09:34:52'),
(3382, 'english', 'New Properties', 'New Properties', '2025-03-11 09:34:52', '2025-03-11 09:34:52'),
(3383, 'english', 'Home | Atlas Directory Listing', 'Home | Atlas Directory Listing', '2025-03-11 09:35:37', '2025-03-11 09:35:37'),
(3384, 'english', 'Car Grid', 'Car Grid', '2025-03-11 09:35:47', '2025-03-11 09:35:47'),
(3386, 'english', 'Listing Cities', 'Listing Cities', '2025-03-11 09:36:11', '2025-03-11 09:36:11'),
(3387, 'english', 'Agent Packages', 'Agent Packages', '2025-03-11 09:36:11', '2025-03-11 09:36:11'),
(3388, 'english', 'Admin Panel', 'Admin Panel', '2025-03-11 09:36:11', '2025-03-11 09:36:11'),
(3389, 'english', 'Tags:', 'Tags:', '2025-03-11 09:50:29', '2025-03-11 09:50:29'),
(3390, 'english', 'Recent Post', 'Recent Post', '2025-03-11 09:51:40', '2025-03-11 09:51:40'),
(3391, 'english', 'Hotel Directory Listing', 'Hotel Directory Listing', '2025-03-11 10:17:17', '2025-03-11 10:17:17'),
(3392, 'english', 'Beauty Directory Listings', 'Beauty Directory Listings', '2025-03-11 10:18:32', '2025-03-11 10:18:32'),
(3393, 'english', '11.10.0', '11.10.0', '2025-03-11 10:47:33', '2025-03-11 10:47:33'),
(3394, 'english', 'Hotel Grid', 'Hotel Grid', '2025-03-11 10:55:59', '2025-03-11 10:55:59'),
(3395, 'english', 'Beauty Grid', 'Beauty Grid', '2025-03-11 10:56:05', '2025-03-11 10:56:05'),
(3396, 'english', 'Restaurant Grid', 'Restaurant Grid', '2025-03-11 10:56:10', '2025-03-11 10:56:10'),
(3397, 'english', 'Car Directory Listing', 'Car Directory Listing', '2025-03-11 10:56:14', '2025-03-11 10:56:14'),
(3398, 'english', 'User deleted successfully!', 'User deleted successfully!', '2025-03-11 11:13:42', '2025-03-11 11:13:42'),
(3399, 'english', 'Amenities Image', 'Amenities Image', '2025-03-11 11:24:35', '2025-03-11 11:24:35'),
(3400, 'english', 'upload a image', 'upload a image', '2025-03-11 11:24:35', '2025-03-11 11:24:35'),
(3401, 'english', 'Category added successful!', 'Category added successful!', '2025-03-11 12:02:09', '2025-03-11 12:02:09'),
(3402, 'english', 'max 500 x 700px', 'max 500 x 700px', '2025-03-11 12:04:43', '2025-03-11 12:04:43'),
(3404, 'english', 'Back to login', 'Back to login', '2025-03-12 05:04:41', '2025-03-12 05:04:41'),
(3406, 'english', 'Footer  Text', 'Footer  Text', '2025-03-12 05:11:59', '2025-03-12 05:11:59'),
(3407, 'english', 'Timezone', 'Timezone', '2025-03-12 05:11:59', '2025-03-12 05:11:59'),
(3408, 'english', 'Update Service', 'Update Service', '2025-03-12 07:12:30', '2025-03-12 07:12:30'),
(3409, 'english', 'Listing team create successful!', 'Listing team create successful!', '2025-03-12 07:30:44', '2025-03-12 07:30:44'),
(3410, 'english', 'Listing service create successful!', 'Listing service create successful!', '2025-03-12 07:32:03', '2025-03-12 07:32:03'),
(3411, 'english', 'Add to Wishlist', 'Add to Wishlist', '2025-03-12 07:32:13', '2025-03-12 07:32:13'),
(3412, 'english', 'Copy link to share', 'Copy link to share', '2025-03-12 07:32:22', '2025-03-12 07:32:22'),
(3413, 'english', 'Select date', 'Select date', '2025-03-12 07:32:22', '2025-03-12 07:32:22'),
(3414, 'english', 'Remove from Wishlist', 'Remove from Wishlist', '2025-03-12 07:37:54', '2025-03-12 07:37:54'),
(3415, 'english', 'Beauty List', 'Beauty List', '2025-03-12 07:42:08', '2025-03-12 07:42:08'),
(3416, 'english', 'Inbox is Empty', 'Inbox is Empty', '2025-03-12 08:10:06', '2025-03-12 08:10:06'),
(3417, 'english', 'No Messages Yet.', 'No Messages Yet.', '2025-03-12 08:10:06', '2025-03-12 08:10:06'),
(3418, 'english', 'It seems you haven\'t start conversion', 'It seems you haven\'t start conversion', '2025-03-12 08:10:06', '2025-03-12 08:10:06'),
(3419, 'english', ' with any of our professionals yet!', ' with any of our professionals yet!', '2025-03-12 08:10:06', '2025-03-12 08:10:06'),
(3420, 'english', 'Chat', 'Chat', '2025-03-12 08:10:21', '2025-03-12 08:10:21'),
(3421, 'english', 'All Listing Type', 'All Listing Type', '2025-03-12 09:28:32', '2025-03-12 09:28:32'),
(3422, 'english', 'View Frontend', 'View Frontend', '2025-03-12 09:41:36', '2025-03-12 09:41:36'),
(3423, 'english', 'Select  City', 'Select  City', '2025-03-12 09:46:45', '2025-03-12 09:46:45'),
(3424, 'english', 'You can\'t book your own business!', 'You can\'t book your own business!', '2025-03-12 10:04:54', '2025-03-12 10:04:54'),
(3425, 'english', 'Approve', 'Approve', '2025-03-12 10:18:52', '2025-03-12 10:18:52'),
(3426, 'english', 'Claim Listing', 'Claim Listing', '2025-03-12 11:46:54', '2025-03-12 11:46:54'),
(3427, 'english', 'Claim this listing', 'Claim this listing', '2025-03-12 11:56:49', '2025-03-12 11:56:49'),
(3428, 'english', 'Additional Proof', 'Additional Proof', '2025-03-12 12:03:49', '2025-03-12 12:03:49'),
(3429, 'english', 'Additional Info', 'Additional Info', '2025-03-12 12:05:08', '2025-03-12 12:05:08'),
(3430, 'english', 'Appointment placed successfully!', 'Appointment placed successfully!', '2025-03-12 12:33:52', '2025-03-12 12:33:52'),
(3431, 'english', 'Already Claimed', 'Already Claimed', '2025-03-13 07:07:25', '2025-03-13 07:07:25'),
(3432, 'english', 'Report Listing', 'Report Listing', '2025-03-13 07:41:19', '2025-03-13 07:41:19'),
(3433, 'english', 'Listing Owener', 'Listing Owener', '2025-03-13 10:05:03', '2025-03-13 10:05:03'),
(3434, 'english', 'Additional information', 'Additional information', '2025-03-13 10:05:03', '2025-03-13 10:05:03'),
(3435, 'english', 'Listing Owner', 'Listing Owner', '2025-03-13 10:34:14', '2025-03-13 10:34:14'),
(3436, 'english', 'Listings Type', 'Listings Type', '2025-03-13 10:34:14', '2025-03-13 10:34:14'),
(3437, 'english', 'Claimed listing has been deleted successfully!', 'Claimed listing has been deleted successfully!', '2025-03-13 10:53:05', '2025-03-13 10:53:05'),
(3438, 'english', 'You can it back!', 'You can it back!', '2025-03-13 11:18:24', '2025-03-13 11:18:24');
INSERT INTO `languages` (`id`, `name`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(3439, 'english', 'Once approved, this action cannot be reversed and will be finalized.', 'Once approved, this action cannot be reversed and will be finalized.', '2025-03-13 11:25:40', '2025-03-13 11:25:40'),
(3440, 'english', 'Listing not found.', 'Listing not found.', '2025-03-13 11:59:00', '2025-03-13 11:59:00'),
(3441, 'english', 'Listing has been approved successfully.', 'Listing has been approved successfully.', '2025-03-13 12:05:45', '2025-03-13 12:05:45'),
(3448, 'english', 'Hotel Category', 'Hotel Category', '2025-03-15 11:08:30', '2025-03-15 11:08:30'),
(3449, 'english', 'Hotels Category', 'Hotels Category', '2025-03-15 11:08:38', '2025-03-15 11:08:38'),
(3450, 'english', 'Real Estate Grid', 'Real Estate Grid', '2025-03-15 11:11:40', '2025-03-15 11:11:40'),
(3451, 'english', 'Restaurant Category', 'Restaurant Category', '2025-03-15 11:17:14', '2025-03-15 11:17:14'),
(3452, 'english', 'Real-estate Category', 'Real-estate Category', '2025-03-15 11:17:21', '2025-03-15 11:17:21'),
(3453, 'english', 'Claim', 'Claim', '2025-03-15 11:29:24', '2025-03-15 11:29:24'),
(3454, 'english', 'Claim Title', 'Claim Title', '2025-03-15 11:29:25', '2025-03-15 11:29:25'),
(3455, 'english', 'This directory is not yet verified !', 'This directory is not yet verified !', '2025-03-15 11:32:47', '2025-03-15 11:32:47'),
(3456, 'english', 'Provide Validity', 'Provide Validity', '2025-03-15 11:32:47', '2025-03-15 11:32:47'),
(3457, 'english', 'Enter Full Name', 'Enter Full Name', '2025-03-15 11:54:53', '2025-03-15 11:54:53'),
(3458, 'english', 'Enter Phonr Number', 'Enter Phonr Number', '2025-03-15 11:54:53', '2025-03-15 11:54:53'),
(3459, 'english', 'Enter Additional Info', 'Enter Additional Info', '2025-03-15 11:54:53', '2025-03-15 11:54:53'),
(3460, 'english', 'Enter Phone Number', 'Enter Phone Number', '2025-03-15 11:55:10', '2025-03-15 11:55:10'),
(3461, 'english', 'Listing has been Claimed successfully.', 'Listing has been Claimed successfully.', '2025-03-15 12:28:06', '2025-03-15 12:28:06'),
(3462, 'english', 'Remove verification Status', 'Remove verification Status', '2025-03-15 12:45:09', '2025-03-15 12:45:09'),
(3463, 'english', 'Claimed listing has been remove successfully!', 'Claimed listing has been remove successfully!', '2025-03-16 06:34:45', '2025-03-16 06:34:45'),
(3464, 'english', 'The claimed listing has been approved successfully!', 'The claimed listing has been approved successfully!', '2025-03-16 06:52:24', '2025-03-16 06:52:24'),
(3465, 'english', 'Engin Size', 'Engin Size', '2025-03-16 07:37:29', '2025-03-16 07:37:29'),
(3466, 'english', 'Welcome back ____', 'Welcome back ____', '2025-03-16 07:42:59', '2025-03-16 07:42:59'),
(3467, 'english', 'Car Category', 'Car Category', '2025-03-16 09:34:30', '2025-03-16 09:34:30'),
(3468, 'english', 'Beauty Category', 'Beauty Category', '2025-03-16 10:04:12', '2025-03-16 10:04:12'),
(3469, 'english', 'This listing is verified', 'This listing is verified', '2025-03-16 10:22:16', '2025-03-16 10:22:16'),
(3470, 'english', 'Car list', 'Car list', '2025-03-16 11:26:32', '2025-03-16 11:26:32'),
(3471, 'english', 'Enter number of person', 'Enter number of person', '2025-03-16 12:09:19', '2025-03-16 12:09:19'),
(3472, 'english', 'Enter number of child', 'Enter number of child', '2025-03-16 12:09:19', '2025-03-16 12:09:19'),
(3473, 'english', 'Update New Room', 'Update New Room', '2025-03-16 12:09:38', '2025-03-16 12:09:38'),
(3474, 'english', 'Hotel list', 'Hotel list', '2025-03-16 12:23:26', '2025-03-16 12:23:26'),
(3475, 'english', 'Restaurant Listing Details', 'Restaurant Listing Details', '2025-03-17 06:43:26', '2025-03-17 06:43:26'),
(3476, 'english', 'Enter year', 'Enter year', '2025-03-17 07:03:24', '2025-03-17 07:03:24'),
(3477, 'english', '3D Link', '3D Link', '2025-03-17 07:05:30', '2025-03-17 07:05:30'),
(3478, 'english', 'Report this listing', 'Report this listing', '2025-03-17 10:25:06', '2025-03-17 10:25:06'),
(3479, 'english', 'Report Type', 'Report Type', '2025-03-17 12:01:08', '2025-03-17 12:01:08'),
(3480, 'english', 'False Information', 'False Information', '2025-03-17 12:01:08', '2025-03-17 12:01:08'),
(3481, 'english', 'Spam / Fraud', 'Spam / Fraud', '2025-03-17 12:01:08', '2025-03-17 12:01:08'),
(3482, 'english', 'Inappropriate Content', 'Inappropriate Content', '2025-03-17 12:01:08', '2025-03-17 12:01:08'),
(3483, 'english', 'Others', 'Others', '2025-03-17 12:01:08', '2025-03-17 12:01:08'),
(3484, 'english', 'Already Reported', 'Already Reported', '2025-03-18 06:17:46', '2025-03-18 06:17:46'),
(3485, 'english', 'Report', 'Report', '2025-03-18 07:03:12', '2025-03-18 07:03:12'),
(3486, 'english', 'Owner:', 'Owner:', '2025-03-18 07:12:21', '2025-03-18 07:12:21'),
(3487, 'english', 'Listing Owner:', 'Listing Owner:', '2025-03-18 07:12:35', '2025-03-18 07:12:35'),
(3488, 'english', 'View Listing Frontend', 'View Listing Frontend', '2025-03-18 07:14:48', '2025-03-18 07:14:48'),
(3489, 'english', 'Report listing has been remove successfully!', 'Report listing has been remove successfully!', '2025-03-18 07:26:46', '2025-03-18 07:26:46'),
(3490, 'english', 'The Report listing has been approved successfully!', 'The Report listing has been approved successfully!', '2025-03-18 08:07:51', '2025-03-18 08:07:51'),
(3491, 'english', 'Reason', 'Reason', '2025-03-18 09:33:40', '2025-03-18 09:33:40'),
(3492, 'english', 'Reported by', 'Reported by', '2025-03-18 09:34:07', '2025-03-18 09:34:07'),
(3493, 'english', 'Report Delete', 'Report Delete', '2025-03-18 09:34:36', '2025-03-18 09:34:36'),
(3494, 'english', 'Listing Delete', 'Listing Delete', '2025-03-18 09:39:29', '2025-03-18 09:39:29'),
(3495, 'english', 'Listings Delete', 'Listings Delete', '2025-03-18 09:39:38', '2025-03-18 09:39:38'),
(3496, 'english', 'Select Report Type', 'Select Report Type', '2025-03-18 10:01:51', '2025-03-18 10:01:51'),
(3497, 'english', 'Report Type : ', 'Report Type : ', '2025-03-18 10:45:11', '2025-03-18 10:45:11'),
(3498, 'english', '360 X 360', '360 X 360', '2025-03-18 11:13:45', '2025-03-18 11:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `listing__features`
--

CREATE TABLE `listing__features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_id` int(11) NOT NULL,
  `feature_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listing__specifications`
--

CREATE TABLE `listing__specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_id` int(11) NOT NULL,
  `specification_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `listing_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis_price` double DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext,
  `message` longtext,
  `sender` longtext,
  `read_status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext,
  `sender` bigint(20) UNSIGNED NOT NULL,
  `receiver` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_29_062523_create_categories_table', 1),
(5, '2024_06_03_103706_create_cities_table', 2),
(6, '2024_06_04_060707_create_blogs_table', 3),
(7, '2024_06_04_102457_create_blog_categories_table', 4),
(8, '2024_06_10_055010_create_car_listings_table', 5),
(9, '2024_06_10_061242_create_beauty_listings_table', 5),
(10, '2024_06_10_061308_create_real_estate_listings_table', 5),
(11, '2024_06_10_061343_create_hotel_listings_table', 5),
(12, '2024_06_10_061405_create_restaurant_listings_table', 5),
(13, '2024_06_10_074114_create_hotels_table', 5),
(14, '2024_06_10_074555_create_restaurants_table', 5),
(15, '2024_06_10_080627_create_amenities_table', 6),
(16, '2024_06_25_063412_create_listing__features_table', 7),
(17, '2024_06_25_095021_create_listing__specifications_table', 8),
(18, '2024_07_02_094655_create_rooms_table', 9),
(20, '2024_07_07_112000_create_menus_table', 10),
(21, '2024_07_09_053040_create_pricings_table', 11),
(22, '2024_07_16_103206_create_frontend_settings_table', 12),
(23, '2024_10_29_094121_create_appointments_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `nearby_location`
--

CREATE TABLE `nearby_location` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearby_id` int(11) DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `listing_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_geteways`
--

CREATE TABLE `payment_geteways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keys` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_geteways`
--

INSERT INTO `payment_geteways` (`id`, `identifier`, `currency`, `title`, `keys`, `model_name`, `test_mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'USD', 'Paypal', '{\"currency\":\"USD\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"123425447893328\",\"production_secret_key\":\"12345\"}', 'Paypal', '1', '1', '2023-03-28 00:32:45', '2025-03-18 04:52:50'),
(2, 'stripe', 'USD', 'Stripe', '{\"currency\":\"USD\",\"public_key\":\"pk_test_51MoMWZSDxTnaFTDaxC5wAXM9e0yB0ztZ9lrUZWFa1dHlcnTKs9Pr8n3P0uQqnoadBYuG7RL7qRxgLPkpVgr7ZNCx00Vei4c1LC\",\"secret_key\":\"sk_test_51MoMWZSDxTnaFTDavug9YfQGTryZc0xJ7t4TiJNYRlUwP0RaV1pWLl9mXjH6zWlX26M0XqJOxYtbYTR3y70uA4Bj00qMZ9ugFc\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'StripePay', '1', '1', '2023-03-28 00:32:45', '2025-03-15 03:26:43'),
(3, 'razorpay', 'INR', 'Razorpay', '{\"public_key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\"}', 'Razorpay', '1', '1', '2023-03-28 00:32:45', '2024-12-26 03:35:23'),
(4, 'flutterwave', 'USD', 'Flutterwave', '{\"public_key\":\"FLWPUBK_TEST-48dfbeb50344ecd8bc075b4ffe9ba266-X\",\"secret_key\":\"FLWSECK_TEST-1691582e23bd6ee4fb04213ec0b862dd-X\"}', 'Flutterwave', '1', '1', '2023-03-28 00:32:45', '2024-12-26 03:35:23'),
(5, 'paystack', 'NGN', 'Paystack', '{\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Paystack', '1', '1', '2023-03-28 00:32:45', '2024-12-26 03:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `real_estate_listings`
--

CREATE TABLE `real_estate_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `discount` double DEFAULT NULL,
  `bed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_dimension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_plan` longtext COLLATE utf8mb4_unicode_ci,
  `garage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` longtext COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `near_by` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reported_listings`
--

CREATE TABLE `reported_listings` (
  `id` bigint(20) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reporter_id` int(11) DEFAULT NULL,
  `report` longtext COLLATE utf8_unicode_ci,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_listings`
--

CREATE TABLE `restaurant_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_time` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` longtext COLLATE utf8mb4_unicode_ci,
  `country` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` int(11) NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child` int(11) DEFAULT NULL,
  `listing_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_fields`
--

CREATE TABLE `seo_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(20) DEFAULT NULL,
  `blog_id` int(20) DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_robot` text COLLATE utf8mb4_unicode_ci,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_ld` longtext COLLATE utf8mb4_unicode_ci,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` text COLLATE utf8mb4_unicode_ci,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('W1URiKl68UfUaJOjC41CFm2pDTDaukpjJvgwAL4f', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiUnF3QUYwWkJ3akY5NVdRUkZERXkxYlZYYkRLSmtWdFFLSnBqUElLQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9sb2NhbGhvc3QvYXRsYXNfbGFyYXZlbC9hdGxhcy9hZG1pbi9zeXN0ZW0tc2V0dGluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTU6ImFjdGl2ZV9sYW5ndWFnZSI7czo3OiJlbmdsaXNoIjtzOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjg6Imxhbmd1YWdlIjtzOjc6ImVuZ2xpc2giO30=', 1735812190),
('xmPV3u1Xqqllls9qC0moYUI5TgSrD9XZNzbot1X0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZDR0cmFGUlg0N0JlT1dhTHVwZkhUSnlCWHFjMFUwcGk2dVFYOWJ5UyI7czoxNToiYWN0aXZlX2xhbmd1YWdlIjtzOjc6ImVuZ2xpc2giO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vbG9jYWxob3N0L2F0bGFzX2xhcmF2ZWwvYXRsYXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735809623);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `package_id` bigint(20) NOT NULL,
  `paid_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_keys` longtext COLLATE utf8_unicode_ci,
  `auto_subscription` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expire_date` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'system_title', 'Atlas Business Directory Listing', '', '2025-03-12 05:12:18'),
(4, 'system_email', 'admin@example.com', '', '2025-03-12 05:12:18'),
(5, 'address', 'New broad street house, 35 New broad street, London, UK', '', '2025-03-12 05:12:18'),
(6, 'phone', '+9029-500-024', '', '2025-03-12 05:12:18'),
(8, 'country_id', '14', '', '2025-03-12 05:12:18'),
(10, 'currency_position', 'left', '', '2025-03-12 05:12:18'),
(11, 'language', 'english', '', '2025-03-12 05:12:18'),
(12, 'purchase_code', 'f73502dd-98d1-4141-9c80-2d10e93c8893', '', '2025-03-12 05:12:18'),
(13, 'timezone', 'Asia/Dhaka', '', '2025-03-12 05:12:18'),
(14, 'paypal', '{\"status\":\"0\",\"mode\":\"test\",\"test_client_id\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"test_secret_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"live_client_id\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"live_secret_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"}', '', ''),
(15, 'stripe', '{\"status\":\"1\",\"mode\":\"test\",\"test_key\":\"pk_test_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"}', '', ''),
(18, 'system_currency', '2', '', '2025-03-12 05:12:18'),
(23, 'smtp_protocol', 'smtp_protocol', '', '2025-01-02 11:37:13'),
(24, 'smtp_host', 'smtp_host', '', '2025-01-02 11:37:13'),
(25, 'smtp_port', 'smtp_port', '', '2025-01-02 11:37:13'),
(26, 'smtp_user', 'roky.creativeitem@gmail.com', '', ''),
(27, 'smtp_pass', 'wegqskvpctybwvqm', '', ''),
(28, 'facebook', 'https://www.facebook.com', '', '2024-11-05 11:27:11'),
(30, 'term_and_condition', '', '', ''),
(31, 'privacy_policy', '', '', ''),
(35, 'footer_text', '© Copyright by creativeitem. All rights reserved.', '', '2025-03-12 05:12:18'),
(36, 'footer_link', 'http://creativeitem.com/', '', ''),
(37, 'version', '1.1', '', ''),
(40, 'map_access_token', 'pk.eyJ1IjoicG9sbG9idGVzdGluZ3I3IiwiYSI6ImNrZmwybHFmYjFrdHoyeXMybDdxNjgxaWYifQ.Gp_boLx9d0F6eM4ju6phiQ', '', '2025-03-12 05:12:18'),
(41, 'max_zoom_level', '1', '', '2025-03-12 05:12:18'),
(44, 'default_location', '40.702210, -74.015880', '', '2025-03-12 05:12:18'),
(50, 'smtp_crypto', 'smtp_crypto', '', '2025-01-02 11:37:13'),
(52, 'signup_email_verification', '0', '', '2025-03-12 05:12:18'),
(57, 'smtp_from_email', 'smtp from email', '', ''),
(59, 'twitter', 'https://twitter.com', '', '2024-11-05 11:27:11'),
(60, 'linkedin', 'https://linkedin.com', '', '2024-11-05 11:27:11'),
(61, 'smtp_username', 'smtp_username', '2024-07-11 09:52:11', '2025-01-02 11:37:13'),
(62, 'smtp_password', 'smtp_password', '2024-07-11 09:52:11', '2025-01-02 11:37:13'),
(63, 'system_currency', '18', '2024-07-11 09:52:11', '2025-03-12 05:12:18'),
(64, 'footer_copyright_text', 'Lorem ipsum dolor sit amet, consectetur they adipiscing elit ut aliquam, purus sit amet luctus venenatis.', '', '2025-03-12 05:12:18'),
(65, 'keyword', 'atlas', '', '2025-03-12 05:12:18'),
(66, 'website_description', 'Many online platforms or software tools offer directory listings as part of their digital maps or geographic databases. These directories might include information such as addresses, directions, and points of interest, making it easier for users to find specific locations or services in a particular area.', '', '2025-03-12 05:12:18'),
(67, 'author', 'Creativeitem', '', '2025-03-12 05:12:18'),
(69, 'timezone', 'Asia/Dhaka', '2025-01-02 10:52:55', '2025-03-12 05:12:18'),
(70, 'system_name', 'Atlas Directory Listing', '2025-01-02 11:18:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` longtext COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_agent` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8mb4_unicode_ci,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `specialty` text COLLATE utf8mb4_unicode_ci,
  `treatment_areas` text COLLATE utf8mb4_unicode_ci,
  `education` text COLLATE utf8mb4_unicode_ci,
  `experience` text COLLATE utf8mb4_unicode_ci,
  `membership` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `following_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beauty_listings`
--
ALTER TABLE `beauty_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `car_listings`
--
ALTER TABLE `car_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claimed_listings`
--
ALTER TABLE `claimed_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_listings`
--
ALTER TABLE `hotel_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing__features`
--
ALTER TABLE `listing__features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing__specifications`
--
ALTER TABLE `listing__specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`),
  ADD KEY `message_thread_sender_foreign` (`sender`),
  ADD KEY `message_thread_receiver_foreign` (`receiver`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nearby_location`
--
ALTER TABLE `nearby_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_geteways`
--
ALTER TABLE `payment_geteways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `real_estate_listings`
--
ALTER TABLE `real_estate_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reported_listings`
--
ALTER TABLE `reported_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_listings`
--
ALTER TABLE `restaurant_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_fields`
--
ALTER TABLE `seo_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beauty_listings`
--
ALTER TABLE `beauty_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_listings`
--
ALTER TABLE `car_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `claimed_listings`
--
ALTER TABLE `claimed_listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel_listings`
--
ALTER TABLE `hotel_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3499;

--
-- AUTO_INCREMENT for table `listing__features`
--
ALTER TABLE `listing__features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listing__specifications`
--
ALTER TABLE `listing__specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `nearby_location`
--
ALTER TABLE `nearby_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_geteways`
--
ALTER TABLE `payment_geteways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `real_estate_listings`
--
ALTER TABLE `real_estate_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reported_listings`
--
ALTER TABLE `reported_listings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_listings`
--
ALTER TABLE `restaurant_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_fields`
--
ALTER TABLE `seo_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
