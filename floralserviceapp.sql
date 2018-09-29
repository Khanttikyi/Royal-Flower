-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2018 at 07:10 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `floralserviceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Rose', '2018-09-24 12:07:04', '2018-09-24 12:07:04'),
(2, 'Orchid', '2018-09-24 12:18:33', '2018-09-24 12:18:33'),
(3, 'Mixed', '2018-09-24 12:18:42', '2018-09-24 12:18:42'),
(4, 'Lilies', '2018-09-24 12:29:08', '2018-09-24 12:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `feedback` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `feedback`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Thank U ♥', 2, '2018-09-24 12:50:21', '2018-09-24 12:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `flowers`
--

CREATE TABLE `flowers` (
  `id` int(10) UNSIGNED NOT NULL,
  `flower` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `dis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flowers`
--

INSERT INTO `flowers` (`id`, `flower`, `type_id`, `category_id`, `description`, `photo`, `price`, `status`, `dis`, `created_at`, `updated_at`) VALUES
(1, 'Dozen Roses N Small Teddy Bear', 1, 1, 'Your lover will smile from ear to eat when they collect this dainty arrangement of a dozen classic red roses nestled with greens. Send a token of your love with roses in yellow, pink, peach and white.', '1537814631.jpg', 15000, 0, NULL, '2018-09-24 12:13:51', '2018-09-24 12:13:51'),
(2, '100 Blooms', 2, 1, 'Wow someone you love by sending 100 Rose Blooms. Arranged with a variety of spray rose colors including red, pink and yellow roses. Delivered with a personalized card message, wow her with a sweet message of love and affection.', '1537814736.jpg', 35000, 0, NULL, '2018-09-24 12:15:36', '2018-09-27 07:10:58'),
(3, '100 Long Stem Red Roses', 1, 1, 'They\'ll Be Speechless When They Hold 100 Red Roses!  Buy a bouquet of bulk roses - the perfect way to show you care!  Perhaps the most stunning of all flowers, the red rose has long been known as a symbol of love and romance. Its no secret - red roses are as much a symbol of romantic love as a kiss itself! A fresh bouquet of 100 Long Stem Roses is the perfect way to say \"\"I Love You\"\" when words just aren\'t enough.', '1537814846.jpg', 40000, 1, '35000', '2018-09-24 12:17:26', '2018-09-24 12:27:06'),
(4, 'Bearing My Heart', 3, 3, 'How can you say \"love?\" Let\'s count the ways. First, there\'s the wondrous arrangement of red andamp; hot pink roses, lavender daisies, white Monte Casino blooms and hot pink mini carnations. Then there\'s the cute-as-a-button brown bear. And finally, the distinctive split wood basket.', '1537814991.jpg', 20000, 0, NULL, '2018-09-24 12:19:51', '2018-09-24 12:19:51'),
(5, 'Sienna', 3, 3, 'Treat that special someone with this beautiful bouquet. Lively pink oriental lilies and gently blooming pink roses accented with fuchsia gerberas give this bouquet a soft, fresh appearance and a heavenly scent that they will be sure to ador', '1537815081.jpg', 20000, 0, NULL, '2018-09-24 12:21:21', '2018-09-24 12:21:21'),
(6, 'Beary Rosy Bouquet', 4, 1, 'This may be the most romantic arrangement she ever receives. This Beary Rosy Bouquet includes', '1537815203.jpg', 55000, 1, '50000', '2018-09-24 12:23:23', '2018-09-24 12:33:35'),
(7, 'Devotion Pink Mum', 3, 2, 'Let grieving friends and family know you\'re thinking of them with this colorful plant that reminds them, each, day, that you are thinking of them and how much you care. This cheering and easy to care for mum plant blooms in a vibrant cloud of hot pink blossoms that makes a beautiful and meaningful addition to any home or office.', '1537815407.jpg', 25000, 0, NULL, '2018-09-24 12:26:47', '2018-09-24 12:26:47'),
(8, 'Hold Me Close Bouquet', 4, 4, 'Make it a special day! This passionate bouquet of lovely lilies and radiant roses, artfully arranged in our pretty pink vase, is one she\'ll hold close to her heart forever.', '1537815609.jpg', 22000, 0, NULL, '2018-09-24 12:30:09', '2018-09-24 12:30:09'),
(9, 'Light in Your Honor Bouquet', 1, 4, 'Light In Your Honor Bouquet is a beautifully bright arrangement bursting with elegant fragrance to convey your deepest sympathies for the loss of their loved one. A stunning bouquet of gorgeous Oriental lilies are accented with lush greens and seated in a clear glass vase to create a bouquet that is serenely sophisticated, offering comfort and peace in their time of need.', '1537815684.jpg', 23000, 0, NULL, '2018-09-24 12:31:24', '2018-09-24 12:31:24'),
(10, 'Carnations Lilies and Roses Small', 4, 3, 'Pink lilies nestled among red roses and dark pink carnations sure makes a pretty picture especially if you are at the receiving end. Gift this bouquet to a loved one and see the joy bloom on their faces.', '1537815736.jpg', 32000, 0, NULL, '2018-09-24 12:32:16', '2018-09-24 12:32:16'),
(11, 'Ultimate Love Bouquet', 3, 1, 'Bouquet includes one dozen of our most gorgeous Premium red roses, a 6-inch plush teddy bear, three Ferrero Rocher Chocolates, and a Mylar Foil balloon shaped like a heart with the words \"I Love You.\"', '1537815802.jpg', 43000, 0, NULL, '2018-09-24 12:33:22', '2018-09-24 12:33:22'),
(12, 'Thoughts Bouquet N Red Roses', 3, 1, 'A graceful heart of bear grass. tied with purple waxflower blossoms. forms a heart that appears to float above the velvety red roses in this delightful bouquet, arranged in a ruby-red cube vase. Send this beautiful floral arrangement to someone you love, and they\'ll think sweet thoughts about you!', '1537867172.jpg', 25000, 0, NULL, '2018-09-25 02:49:32', '2018-09-25 02:49:32');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_04_070946_create_types_table', 1),
(4, '2018_09_04_071828_create_categories_table', 1),
(5, '2018_09_04_071906_create_flowers_table', 1),
(6, '2018_09_04_072933_create_feedback_table', 1),
(7, '2018_09_23_061848_create_orders_table', 1),
(8, '2018_09_23_062015_create_orderdetails_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `flower_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `flower_id`, `qty`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 15000, '2018-09-24 12:50:48', '2018-09-24 12:50:48'),
(2, 1, 11, 1, 43000, '2018-09-24 12:50:48', '2018-09-24 12:50:48'),
(3, 2, 6, 1, 55000, '2018-09-25 02:56:54', '2018-09-25 02:56:54'),
(4, 2, 5, 1, 20000, '2018-09-25 02:56:54', '2018-09-25 02:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` double DEFAULT NULL,
  `delivery` double NOT NULL,
  `subtotal` double DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `delivery`, `subtotal`, `address`, `phone`, `email_token`, `verified`, `created_at`, `updated_at`) VALUES
(1, 2, 58000, 2500, 60500, 'San Chaung, Yangon', '09799334700', 'MTIwMTgtMDktMjQgMTk6MjA6NDg=', 1, '2018-09-24 12:50:48', '2018-09-24 12:51:25'),
(2, 3, 75000, 2500, 77500, 'San Chaung', '0943007852', 'MjIwMTgtMDktMjUgMDk6MjY6NTQ=', 1, '2018-09-25 02:56:54', '2018-09-25 02:58:57');

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
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Birthday', '2018-09-24 12:12:20', '2018-09-24 12:12:20'),
(2, '100 Bloomes', '2018-09-24 12:14:53', '2018-09-24 12:14:53'),
(3, 'Anniversary', '2018-09-24 12:18:23', '2018-09-24 12:18:23'),
(4, 'Love And Romance', '2018-09-24 12:22:07', '2018-09-24 12:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Royal Flower', 'royalflowerservice@gmail.com', '$2y$10$NqD69CZFxW6/4qsZr6T1Ben3y2FpMB9phaOrm5H8wB7cHdwFGBgLO', NULL, NULL, 'admin', 'maerWC79alMyIbhGQsaPfxZnVKjSMQUrPbm4Y39B7Qmg90XP59DwKnT339kw', '2018-09-24 09:46:54', '2018-09-24 09:46:54'),
(2, 'KHANT TI KYI', 'khanttikyi.kk@gmail.com', '$2y$10$PkTIFWBUakHWyIuOeJN9K.r5qtEYVsvjbAqvyv4mxlmuogXPEpRGq', NULL, NULL, 'user', 'XbfBgvzbxGuP8tZiGz5a4PSpl8vxwfqLdIugPgzmEhiuZMgmLzbXOdcxfJeQ', '2018-09-24 11:55:43', '2018-09-24 11:55:43'),
(3, 'Bhone Myint Myat', 'wearethestrays.demon@gmail.com', '$2y$10$nkKUFz05QHbpiAcK01GnXu1p4yQlYLnCde45xuVNyqanAzywN7P2.', NULL, NULL, 'user', 'IeJcjvaIb4zi8XyejNz2pRpYsqRaMVKEoXJ7XWQg5ND40OI2oCgSOJFS4pZk', '2018-09-25 02:53:45', '2018-09-25 02:53:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flowers`
--
ALTER TABLE `flowers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flowers`
--
ALTER TABLE `flowers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
