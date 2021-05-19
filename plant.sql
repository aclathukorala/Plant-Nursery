-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 10:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plant`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertiements`
--

CREATE TABLE `advertiements` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertiements`
--

INSERT INTO `advertiements` (`id`, `image`, `url`, `date`, `created_at`, `updated_at`) VALUES
(10, '1582729044.jpg', 'https://www.singersl.com/', '2020-12-18', '2020-02-26 09:27:24', '2020-02-26 10:17:47'),
(12, '1582729924.jpg', 'https://www.singersl.com/', '2020-02-28', '2020-02-26 09:42:04', '2020-02-26 09:42:04'),
(20, '1582730863.jpg', 'https://www.singersl.com/', '2020-02-28', '2020-02-26 09:57:43', '2020-02-26 10:18:10'),
(21, '1582732424.jpg', 'https://www.singersl.com/', '2020-02-29', '2020-02-26 10:00:05', '2020-02-26 10:24:17'),
(25, '1582731451.jpg', 'https://www.singersl.com/', '2020-02-29', '2020-02-26 10:07:31', '2020-02-26 10:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotline` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `hotline`, `email`, `fax`, `created_at`, `updated_at`) VALUES
(1, '0114532345', 'np.madushamethsiri81@gmail.com', '0119234543', '2020-01-12 04:03:29', '2020-01-12 04:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_costs`
--

CREATE TABLE `delivery_costs` (
  `id` int(10) UNSIGNED NOT NULL,
  `homeTown` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_cost` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_costs`
--

INSERT INTO `delivery_costs` (`id`, `homeTown`, `delivery_cost`, `created_at`, `updated_at`) VALUES
(1, 'Galle', 1000, '2020-05-01 04:26:38', '2020-05-01 04:26:38'),
(7, 'Rathnapura', 900, '2020-05-01 05:13:37', '2020-05-01 05:13:37'),
(6, 'Gampaha', 1000, '2020-05-01 05:13:16', '2020-05-01 05:13:16'),
(5, 'Eheliyagoda', 1150, '2020-05-01 05:12:44', '2020-05-01 05:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pno` int(11) NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm` tinyint(10) NOT NULL DEFAULT 0,
  `message` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `dob`, `email`, `pno`, `address`, `gender`, `experience`, `image`, `confirm`, `message`, `created_at`, `updated_at`) VALUES
(5, 'madusha', '2020-02-07', 'np.madushamethsiri81@gmail.com', 1231234321, 'no26,hettimulla,kotadeniyawa.', 'male', 'sdfsdf', '1582773428.jpg', 1, 'new', '2020-02-26 21:47:08', '2020-03-05 11:04:04'),
(6, 'nemo', '2020-02-22', 'hansanapushpakumara@gmail.com', 1231234321, 'no26,hettimulla,kotadeniyawa.', 'male', 'studet', '1582774355.jpg', 1, 'you are employee', '2020-02-26 22:02:35', '2020-02-26 22:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedno` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `supplierid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(3, '1588334538.jpg', '2019-12-28 10:53:39', '2020-05-01 06:32:18'),
(6, '1588334552.jpg', '2019-12-28 11:09:04', '2020-05-01 06:32:32'),
(15, '1588334565.jpg', '2020-01-03 12:11:21', '2020-05-01 06:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `plantname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(100) NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fertilizer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sproutingtime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `plantname`, `price`, `amount`, `image`, `fertilizer`, `sproutingtime`, `created_at`, `updated_at`) VALUES
(8, 'Red rose', '100', 326, '1579086032.jpg', 'osmocote 20.20.20', '3 months', '2020-01-15 05:28:26', '2020-05-01 06:46:27'),
(9, 'Aglaonema Foxii', '500', 826, '1579086273.jpg', 'CS agro bloom compost', '2 months', '2020-01-15 05:34:33', '2020-05-01 05:42:51'),
(10, 'Peperomia', '300', 163, '1579086433.jpg', 'garden vitalizer 35ml', '3 months', '2020-01-15 05:37:13', '2020-05-01 02:21:14'),
(11, 'Euphorbia', '250', 185, '1579086506.jpg', 'Grow more k44', '5months', '2020-01-15 05:38:26', '2020-01-16 01:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_25_084022_create_items_table', 2),
(4, '2019_12_27_051215_create_managewebsites_table', 3),
(5, '2019_12_27_052741_create_adminmanagewebsites_table', 4),
(6, '2019_12_28_161412_create_images_table', 5),
(7, '2020_01_12_070033_create_paragraphs_table', 6),
(8, '2020_01_12_092617_create_contacts_table', 7),
(9, '2020_01_14_152614_create_advertiements_table', 8),
(10, '2019_11_20_132625_create_employee_table', 9),
(11, '2020_01_15_085558_create_suppliers_table', 10),
(14, '2020_03_17_130107_create_orders_table', 11),
(15, '2020_03_18_143817_create_payments_table', 12),
(16, '2020_05_01_093049_create_delivery_costs_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `refNo` int(11) DEFAULT NULL,
  `productId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notconfirmed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `quantity`, `price`, `refNo`, `productId`, `customerId`, `status`, `created_at`, `updated_at`) VALUES
(62, 10, 100, 63, 8, 15, 'confirmed', '2020-05-01 06:46:34', '2020-05-01 06:46:34'),
(51, 12, 100, 60, 8, 20, 'confirmed', '2020-05-01 02:31:00', '2020-05-01 02:31:00'),
(52, 15, 500, 60, 9, 20, 'confirmed', '2020-05-01 02:31:16', '2020-05-01 02:31:16'),
(54, 5, 100, 62, 8, 15, 'confirmed', '2020-05-01 02:44:44', '2020-05-01 02:44:44'),
(63, 12, 500, 63, 9, 15, 'confirmed', '2020-05-01 06:46:44', '2020-05-01 06:46:44'),
(64, 10, 100, 64, 8, 15, 'confirmed', '2020-05-01 06:54:34', '2020-05-01 06:54:34'),
(65, 10, 100, 65, 8, 20, 'confirmed', '2020-05-01 06:59:42', '2020-05-01 06:59:42'),
(66, 2, 100, 66, 8, 15, 'confirmed', '2021-04-07 00:00:55', '2021-04-07 00:00:55'),
(67, 1, 300, 66, 10, 15, 'confirmed', '2021-04-07 00:01:06', '2021-04-07 00:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `paragraphs`
--

CREATE TABLE `paragraphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstparagraph` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondparagraph` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paragraphs`
--

INSERT INTO `paragraphs` (`id`, `firstparagraph`, `secondparagraph`, `created_at`, `updated_at`) VALUES
(1, 'Our family-run nursery has an enviable reputation for growing premier Trees, Shrubs and for providing an extensive range of Sundries and Gift for the discerning gardener. We Offer the finest Shrubs,Conifers,Ornamental trees,Large specimen trees,Climbers,Roses,Herbs and Vegetables.', 'We produce plants for our retail garden center,landscape installations,commercial installation,wholesale, and fundraising program.See what is new at GreenGuardian nursery and stay up to date all upcoming and the behind the scenes actions.', '2020-01-12 01:33:09', '2020-01-15 05:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `subTotal` double NOT NULL,
  `deliveryCost` double NOT NULL,
  `homeTown` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryAddress` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customerId` int(11) NOT NULL,
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notchecked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `subTotal`, `deliveryCost`, `homeTown`, `deliveryAddress`, `customerId`, `payment`, `status`, `created_at`, `updated_at`) VALUES
(65, 1000, 1150, 'Eheliyagoda', '56, Eheliyagoda', 20, '2150', 'checked', '2020-05-01 07:00:13', '2020-05-01 07:19:40'),
(64, 1000, 900, 'Rathnapura', '1210', 15, '1900', 'checked', '2020-05-01 06:56:44', '2020-05-01 07:23:20'),
(63, 7000, 1000, 'Gampaha', 'road,12', 15, '8000', 'checked', '2020-05-01 06:53:57', '2020-05-01 07:57:13'),
(61, 2000, 2800, 'Gampaha', 'main road, gampaha', 15, '4800', 'checked', '2020-05-01 02:41:02', '2020-05-01 06:31:42'),
(62, 500, 2800, 'Gampaha', 'sd', 15, '3300', 'checked', '2020-05-01 02:45:00', '2020-05-01 08:03:56'),
(60, 8700, 1800, 'Rathnapura', '56, Main Road, Eheliyagoda', 20, '10500', 'checked', '2020-05-01 02:31:56', '2020-05-01 02:39:55'),
(66, 500, 1000, 'Gampaha', 'zdaad', 15, '1500', 'notchecked', '2021-04-07 00:03:15', '2021-04-07 00:03:15'),
(67, 500, 1000, 'Gampaha', 'zdaad', 15, '1500', 'notchecked', '2021-04-07 00:03:17', '2021-04-07 00:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pno` int(11) NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plantname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plantprice` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm` tinyint(10) NOT NULL DEFAULT 0,
  `message` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `pno`, `address`, `plantname`, `plantprice`, `quantity`, `image`, `confirm`, `message`, `created_at`, `updated_at`) VALUES
(3, 'nemo', 'hansanapushpakumara@gmail.com', 1231234321, 'no26,hettimulla,kotadeniyawa.', 'Aglaonema Foxii', '10', '12', '1582771441.jpg', 1, NULL, '2020-02-26 21:14:01', '2020-02-26 21:14:45'),
(4, 'sachin', 'sagithiyannagendran@gmail.com', 1231234321, 'no26,hettimulla,kotadeniyawa.', 'roborosia', '10', '12', '1582772212.jpg', 1, 'new try', '2020-02-26 21:26:52', '2020-02-26 21:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` tinyint(1) DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact`, `address`, `image`, `password`, `usertype`, `remember_token`, `created_at`, `updated_at`) VALUES
(14, 'chamantha', 'lchamantha@gmail.com', '071-7110866', 'no26,hettimulla,kotadeniyawa.', '1579088811.jpg', '$2y$10$dDwS.iovUpkeOU5Z1mg9U.imI1FHUbRHD9UxIw74qgtnMp/JD2AbO', 0, 'k8sLLT4WcZOFfUKQOCyeKya9Ussu2ImTifLoJIox8VXbDTGtDy4No9iYAjlG', '2019-12-18 00:25:57', '2020-01-15 06:16:51'),
(15, 'Madusha Methsiri', 'np.madushamethsiri81@gmail.com', '071-7110866', 'no26,hettimulla,meerigama', '1588267916.jpg', '$2y$10$e1UAVqlNqEj6d.9RQsIpyumFCaijbL45QRYI1KQ53XG/XxBGOo7OG', 1, 'ClibUJk0aBtQT5mpjfVeulzBbl4Y0aCtNQiROTFgiJm5wuDaDiz0L8uHJpz3', '2019-12-18 00:27:30', '2020-05-01 00:41:18'),
(16, 'van', 'new@gmail.com', '071-7110866', 'no26,hettimulla,kotadeniyawa.', '1576940599.jpg', '$2y$10$CIrtEy01IUJBY4y1bCE5auk9uKlrF.nBbuu8j94RvSxMBu/WPY./i', 1, 'sQ99yn1BQynGEivhUKYFQ18HdYcroSZj7EQ9dSqLkL1NLzaPnWTi9DRWSXYd', '2019-12-21 00:13:09', '2019-12-21 09:33:19'),
(17, 'car', 'kabil@gmail.com', '071-7110866', 'no26,hettimulla,kotadeniyawa.', '1579086988.jpg', '$2y$10$djmDkqRWCLQwYSeJN9QTXeFN9xlDBwXFf/dQxrbwzf1A8semkRVbG', 1, 'Np3VXArAdlq0wVrOQEaUuPOeOFJU1wcUYz563dKrRsHawVzFdyeyowfxHjXb', '2019-12-21 08:41:05', '2020-01-15 05:46:28'),
(19, 'Hiruni', 'hiruni@gmail.com', '0776895244', 'no6,Unawatuna,Galle', '1579160528.jpg', '$2y$10$5MYD6f923esz8tvxDdOa/uw5CqeaSOkEv/VWZ7k1RxEp3mE4JEkH.', 1, 'M4MMFRXxLcIxGLNslD3d8KULWdQhi4eqGOAigDVUIPeLkdCUQAgptnyQn73y', '2020-01-15 23:43:19', '2020-01-16 02:12:08'),
(20, 'Hansana Pushpakumara', 'hansanapushpakumara@gmail.com', '0713022546', 'Bandarwela road, Badulla', '1588319858.jpg', '$2y$10$klgNltyrZaPDBLW6QzX01ujleZWrhnuO5g7w8qjXEgfoAMlAdeMXC', 1, 'C7GWJVZVeq6QwqiuC5qR1mWwmsPcgWqllEcOTDEUo3RWt9qRXQxAxmoiLWx3', '2020-05-01 02:25:41', '2020-05-01 02:27:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertiements`
--
ALTER TABLE `advertiements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_costs`
--
ALTER TABLE `delivery_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedno`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_name_unique` (`plantname`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paragraphs`
--
ALTER TABLE `paragraphs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `advertiements`
--
ALTER TABLE `advertiements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_costs`
--
ALTER TABLE `delivery_costs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `paragraphs`
--
ALTER TABLE `paragraphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
