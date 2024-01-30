-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 30, 2024 lúc 07:39 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lightmydesk4`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(150) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `role` tinyint(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `address`, `email`, `password`, `fullname`, `phone`, `role`, `status`, `remember_token`) VALUES
(7, 'doanh123', 'hcm thu duc 123', 'doanh@gmail.com', '$2y$12$eVUoz9.WqKGCEmtf9qCdaOMZ6MJUkeh5he2pK95g5AZ0AEo.dGvn2', 'doanh pham', '08239232312', 0, 1, NULL),
(9, 'ChangChia', '52duong so 19', 'phamhoainhannn@gmail.com', '$2y$12$S1mBt1vzMzaDQN9dj1tek.ZIkBCkrU7Qv8JEyLcYgK5opW29S3k..', 'Pham Hoai Chia', '0823925414', 1, 1, '35XMMqF6YETOO7z9XGizhHWlRwXOfvdypcNBV2k6phJRjOd43MvpUySaXOpO'),
(14, 'doanhdoanh', 'sadsads', 'doanh123@gmail.com', '$2y$12$7rvpC/0E4vJIIg.6jFQbp.Y5f8txEA5r9RP9kDLl8hGVc1Zfyg0GS', 'doanhcute', '0823925414', 0, 1, NULL),
(15, 'thivui', 'hcm quan 2 city', 'thi@gmail.com', '$2y$12$3rN2bM38OjhTqNdgBNvCuuw6xMT4KHnXdAmtz3KB.MJZ0ZzQ8ozGG', 'pham van thi', '082888999', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `ads`
--

INSERT INTO `ads` (`id`, `title`, `desc`, `image`, `status`) VALUES
(1, '20% Off On <br>New Chair', 'Get Instant Cashback', '1704900395_f11.jpg', 1),
(2, 'Let’s buy <br>New Chair', 'Get Instant Cashback', '1704910236_f33.jpg', 1),
(3, 'Let’s buy <br>New Chair', 'Get Instant Cashback', '1704904475_f22.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `nameblogger` varchar(255) NOT NULL,
  `descshort` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `descproduct` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `image`, `name`, `info`, `title`, `avatar`, `nameblogger`, `descshort`, `content`, `note`, `descproduct`, `status`, `created_at`, `updated_at`) VALUES
(2, '1705923865_furniture-11.jpg', 'Phạm Hoài Nhân', 'Decor', 'Your desk lights up', '1705923865_blogger.jpg', 'Phạm Hoài Nhân', 'loream loream loream loream loream loream loram loream', '<p>loream&nbsp;loream&nbsp;loream&nbsp;loream&nbsp;loream&nbsp;loream&nbsp;loream&nbsp;loream&nbsp;loream&nbsp;loream</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:435px; position:absolute; top:-4.8px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 'loream loream loream loream loream loror loream loream loream', 'loream loream loream loream loream loloream loream loream', 1, '2024-01-22 11:44:25', '2024-01-22 11:44:25'),
(3, '1705923992_furniture-55.jpg', 'Nguyen Ngọc Hải', 'Study', 'Study hard, study hard', '1705923992_3.jpg', 'Nguyễn Chí Thiện', 'Study hard, study hard Study hard, study hard Study hard, study hard', '<p>Study hard, study hard&nbsp;Study hard, study hard&nbsp;Study hard, study hard</p>', 'Study hard, study hard Study hard, study hard Study hard, study hard', 'Study hard, study hard Study hard, study hard Study hard, study hard', 1, '2024-01-22 11:46:32', '2024-01-22 11:46:32'),
(4, '1705924069_furniture-33.jpg', 'Vương Vân Hoa', 'Luxurious', 'Beautiful luxurious lamp table', '1705924069_2.jpg', 'Nguyễn hoài Nam', 'Beautiful luxurious lamp table Beautiful luxurious lamp table Beautiful luxurious lamp table', '<p>Beautiful luxurious lamp table&nbsp;Beautiful luxurious lamp table&nbsp;Beautiful luxurious lamp table</p>', 'Beautiful luxurious lamp table Beautiful luxurious lamp table Beautiful luxurious lamp table', 'Beautiful luxurious lamp table Beautiful luxurious lamp table Beautiful luxurious lamp table', 1, '2024-01-22 11:47:49', '2024-01-22 11:47:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brandlogo`
--

CREATE TABLE `brandlogo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `brandlogo`
--

INSERT INTO `brandlogo` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '1704988587_11.png', 1, '2024-01-11 15:56:27', '2024-01-11 15:56:27'),
(2, '1704988602_22.png', 1, '2024-01-11 15:56:42', '2024-01-11 15:56:42'),
(3, '1704988627_33.png', 1, '2024-01-11 15:57:07', '2024-01-11 15:57:07'),
(4, '1704988642_44.png', 1, '2024-01-11 15:57:22', '2024-01-11 15:57:22'),
(5, '1704988665_55.png', 1, '2024-01-11 15:57:45', '2024-01-11 15:57:45'),
(6, '1704988687_66.png', 1, '2024-01-11 15:58:07', '2024-01-11 15:58:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `keyword`, `image`, `desc`, `level`, `status`) VALUES
(1, 'Home Decor', 'SHOP COLLECTION', '1705583882_ct1.jpg', 'SHOP COLLECTION', '1', 1),
(2, 'anti-myopia desk lamp', 'SHOP COLLECTION', '1705583986_ct2.jpg', 'anti-myopia desk lamp', '2', 1),
(3, 'Multi-function table lamp', 'SHOP COLLECTION', '1705584034_ct3.jpg', 'Multi-function table lamp', '3', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `desc`, `name`, `pos`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'It\'s been 6 years since I bought a lantern. I like their quick service and so far I haven\'t had any complaints about the variety of lights I have.\"', 'Nguyễn Ngọc Hải', 'Staff, Aribank', '1705045826_hai.jpg', 1, '2024-01-12 07:33:44', '2024-01-30 04:05:25'),
(2, 'Love is like puzzle pieces that don\'t fit together. No one suits anyone 100%! If you keep looking for a perfect love and leave behind beautiful feelings, then you are a fool.', 'Nguyễn Yến Nhi', 'Mr.Bird, Kontum', '1705045374_vc.jpg', 1, '2024-01-12 07:42:54', '2024-01-12 07:43:19'),
(3, 'I just called the network to ask what\'s wrong with the network today, Anyone who likes this status will live as. but I posted a status for an hour without anyone liking it.\"', 'Trần Thanh Thủy', 'Doctor Skincare, Serum one', '1705045526_nhi.jpg', 1, '2024-01-12 07:45:26', '2024-01-12 07:51:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footbanner`
--

CREATE TABLE `footbanner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `footbanner`
--

INSERT INTO `footbanner` (`id`, `title`, `desc`, `image`, `status`) VALUES
(2, 'Lighting dreams', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus.', '1704981260_single-banner-22.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `account_id`, `product_id`, `created_at`, `updated_at`) VALUES
(8, 9, 6, '2024-01-30 05:45:02', '2024-01-30 05:45:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_27_053132_create_account_table', 1),
(6, '2023_12_29_085637_create_product_table', 2),
(7, '2023_12_29_094735_create_category_table', 3),
(8, '2024_01_10_065301_create_slider_table', 4),
(9, '2024_01_10_110337_create_trust_table', 5),
(10, '2024_01_10_120130_create_ads_table', 6),
(11, '2024_01_11_132846_create_footbanner_table', 7),
(12, '2024_01_11_142005_create_latestblog_table', 8),
(13, '2024_01_11_222848_create_brandlogo_table', 9),
(14, '2024_01_11_223234_create_brandlogo_table', 10),
(15, '2024_01_12_141937_create_comment_table', 11),
(16, '2024_01_12_145909_create_video_table', 12),
(17, '2024_01_16_192616_create_order_table', 13),
(18, '2024_01_16_194628_create_orderdetail_table', 14),
(19, '2024_01_18_200356_create_category_table', 15),
(20, '2024_01_18_200524_create_product_table', 16),
(21, '2024_01_18_200859_create_orderdetail_table', 17),
(22, '2024_01_11_142005_create_blog_table', 18),
(23, '2024_01_21_221511_create_blogdetail_table', 19),
(24, '2024_01_22_172332_create_blog_table', 20),
(34, '2024_01_26_103655_create_likes_table', 21),
(35, '2024_01_27_205225_create_ratings_table', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_account` bigint(20) UNSIGNED NOT NULL,
  `ship` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `payment` int(11) DEFAULT NULL,
  `shiptime` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `date_order` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `id_account`, `ship`, `total`, `payment`, `shiptime`, `note`, `date_order`, `status`, `created_at`, `updated_at`) VALUES
(11, 15, '10', '105.4', NULL, '3', '', '30/01/2024', 1, '2024-01-30 02:21:26', '2024-01-30 02:21:26'),
(12, 15, '10', '38.8', NULL, '3', '', '30/01/2024', 1, '2024-01-30 02:27:23', '2024-01-30 02:27:23'),
(13, 9, '10', '96.4', NULL, '3', '', '30/01/2024', 1, '2024-01-30 05:48:46', '2024-01-30 05:48:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `id_order` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `id_product`, `quantity`, `id_order`, `status`, `created_at`, `updated_at`) VALUES
(7, 6, 2, 11, 1, '2024-01-30 02:21:26', '2024-01-30 02:21:26'),
(8, 5, 1, 11, 1, '2024-01-30 02:21:26', '2024-01-30 02:21:26'),
(9, 6, 1, 12, 1, '2024-01-30 02:27:23', '2024-01-30 02:27:23'),
(10, 6, 3, 13, 1, '2024-01-30 05:48:46', '2024-01-30 05:48:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `price_old` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_secondary` varchar(256) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `id_cat` bigint(20) UNSIGNED NOT NULL,
  `date_create` varchar(255) DEFAULT NULL,
  `date_edit` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `keyword`, `desc`, `content`, `discount`, `price`, `price_old`, `image`, `image_secondary`, `images`, `id_cat`, `date_create`, `date_edit`, `status`) VALUES
(1, 'Channel', 'Channel.', 'Channel.', '<p>chanel</p>', 10, '23.000', '33.000', '1705588720_pd4.jpg', '1705588720_pd4.4.jpg', '[\"1705588720_at_pd6.jpg\",\"1705588720_at_pd7.7.jpg\",\"1705588720_at_pd7.jpg\",\"1705588720_at_pd8.8.jpg\",\"1705588720_at_pd8.jpg\",\"1705588720_at_pd9.9.jpg\",\"1705588720_at_pd9.jpg\"]', 1, '1705588720', '1705588720', 1),
(2, 'Gucci', 'Gucci', 'Gucci', '<p>Gucci</p>', 10, '54.000', '67.000', '1705588782_pd7.jpg', '1705588782_pd7.7.jpg', '[\"1705588782_at_pd1.1.jpg\",\"1705588782_at_pd1.jpg\",\"1705588782_at_pd2.2.jpg\",\"1705588782_at_pd2.jpg\",\"1705588782_at_pd3.3.jpg\",\"1705588782_at_pd3.jpg\",\"1705588782_at_pd4.4.jpg\"]', 1, '1705588782', '1705588782', 1),
(3, 'Dior', 'Dior', 'Dior', '<p>Dior</p>', 10, '17.000', '52.000', '1705588834_pd8.jpg', '1705588834_pd8.8.jpg', '[\"1705588834_at_pd1.1.jpg\",\"1705588834_at_pd1.jpg\",\"1705588834_at_pd2.2.jpg\",\"1705588834_at_pd2.jpg\",\"1705588834_at_pd3.3.jpg\",\"1705588834_at_pd3.jpg\",\"1705588834_at_pd4.4.jpg\"]', 1, '1705588834', '1705588834', 1),
(4, 'Louis Vuitton LV', 'Louis Vuitton LV', 'Louis Vuitton LV', '<p>Loisu Voiudasd</p>', 10, '45.000', '36.000', '1705588898_pd9.jpg', '1705588898_pd9.9.jpg', '[\"1705588898_at_pd1.jpg\",\"1705588898_at_pd2.2.jpg\",\"1705588898_at_pd2.jpg\",\"1705588898_at_pd4.4.jpg\",\"1705588898_at_pd4.jpg\",\"1705588898_at_pd5.5.jpg\",\"1705588898_at_pd5.jpg\"]', 2, '1705589178', '1705589178', 1),
(5, 'Hermes', 'Hermes', 'Hermes', '<p>herem</p>', 10, '42.000', '56.000', '1705588974_pd6.jpg', '1705588974_pd6.6.jpg', '[\"1705588974_at_pd4.jpg\",\"1705588974_at_pd5.5.jpg\",\"1705588974_at_pd5.jpg\",\"1705588974_at_pd6.6.jpg\",\"1705588974_at_pd6.jpg\",\"1705588974_at_pd7.7.jpg\",\"1705588974_at_pd7.jpg\"]', 2, '1705589168', '1705589168', 1),
(6, 'Prada', 'Prada', 'Prada', '<p>Parda</p>', 10, '32.000', '34.000', '1705589028_pd3.jpg', '1705589028_pd3.3.jpg', '[\"1705589028_at_pd2.2.jpg\",\"1705589028_at_pd2.jpg\",\"1705589028_at_pd3.3.jpg\",\"1705589028_at_pd4.jpg\",\"1705589028_at_pd5.5.jpg\",\"1705589028_at_pd5.jpg\",\"1705589028_at_pd8.8.jpg\"]', 2, '1705589155', '1705589155', 1),
(7, 'Burberry', 'Burberry', 'Burberry', '<p>Burbery</p>', 10, '23.000', '45.000', '1705589089_pd2.jpg', '1705589089_pd2.2.jpg', '[\"1705589089_at_pd1.jpg\",\"1705589089_at_pd2.2.jpg\",\"1705589089_at_pd3.3.jpg\",\"1705589089_at_pd4.4.jpg\",\"1705589089_at_pd4.jpg\",\"1705589089_at_pd5.5.jpg\",\"1705589089_at_pd5.jpg\"]', 3, '1705589101', '1705589101', 1),
(8, 'Balenciaga', 'Balenciaga', 'Balenciaga', '<p>Balenciaga</p>', 10, '31.000', '45.000', '1705589136_pd1.jpg', '1705589136_pd1.1.jpg', '[\"1705589136_at_pd1.1.jpg\",\"1705589136_at_pd1.jpg\",\"1705589136_at_pd3.3.jpg\",\"1705589136_at_pd3.jpg\",\"1705589136_at_pd4.4.jpg\",\"1705589136_at_pd5.jpg\",\"1705589136_at_pd7.7.jpg\"]', 3, '1705589146', '1705589146', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `created_at`, `updated_at`, `name`, `email`, `rating`, `title`, `content`, `product_id`, `blog_id`, `type`) VALUES
(1, '2024-01-27 16:51:07', '2024-01-27 16:51:07', 'hoang hung', 'hunghv62@wru.vn', NULL, NULL, 'bruh', 0, NULL, 'blog'),
(2, '2024-01-27 16:51:55', '2024-01-27 16:51:55', 'hoang hung', 'hunghv62@wru.vn', NULL, NULL, 'bnru', 0, 3, 'blog'),
(3, '2024-01-27 16:57:17', '2024-01-27 16:57:17', 'hoang hung', 'hunghv62@wru.vn', 3, 'aaaa', 'aaaa', 1, NULL, 'rate'),
(4, '2024-01-27 17:14:57', '2024-01-27 17:14:57', 'hoang hung', 'hunghv62@wru.vn', 4, 'aaa', 'aaaa', 1, NULL, 'rate'),
(5, '2024-01-27 17:15:29', '2024-01-27 17:15:29', 'hoang hung', 'hunghv62@wru.vn', 1, 'aaa', 'aaa', 1, NULL, 'rate'),
(6, '2024-01-27 17:17:35', '2024-01-27 17:17:35', 'hung1', 'hunghv62@wru.vn11', NULL, NULL, 'dfsdfcc\r\ncvv', 0, 3, 'blog'),
(7, '2024-01-28 05:50:57', '2024-01-28 05:50:57', 'hung test', 'hunghv62@wru.vn1111', NULL, NULL, 'first comment', 0, 2, 'blog'),
(8, '2024-01-28 05:52:28', '2024-01-28 05:52:28', 'hùng reviewer', 'hunghv62@wru.vn212', 4, 'first rating', 'first rating 1111', 7, NULL, 'rate'),
(9, '2024-01-28 05:53:37', '2024-01-28 05:53:37', 'hung 2', 'hunghv62@wru.vn444', 1, 'sdfsf', 'sdfsfsdf', 7, NULL, 'rate'),
(10, '2024-01-28 11:47:22', '2024-01-28 11:47:22', 'nhan', 'nhan@gmail', 4, 'hàng tốt', 'thật sự quá ưng ý luôn', 6, NULL, 'rate'),
(12, '2024-01-28 12:53:16', '2024-01-28 12:53:16', 'Phạm Hoài Nhân', 'phamhoainhannn@gmail.com', 5, '2132132', '213213213', 2, NULL, 'rate'),
(13, '2024-01-29 12:58:51', '2024-01-29 12:58:51', 'phuc', 'phuc123@gmail.com', 5, 'âSAsaS', 'SAQSQWSWQWQS', 6, NULL, 'rate'),
(14, '2024-01-30 05:46:13', '2024-01-30 05:46:13', 'Phạm Hoài Nhân', 'phamhoainhannn@gmail.com', 5, 'asdasdasd', 'asdasdas', 6, NULL, 'rate'),
(15, '2024-01-30 05:49:36', '2024-01-30 05:49:36', 'Nguyen thanh nhan', 'phamhoainhannn@gmail.com', NULL, NULL, '123123213', 0, 2, 'blog'),
(16, '2024-01-30 06:13:14', '2024-01-30 06:13:14', 'Phạm Hoài Nhân', 'phamhoainhannn@gmail.com', NULL, NULL, 'sadsad', 0, 3, 'blog');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `title`, `desc`, `image`, `status`) VALUES
(2, 'asdadasd', 'asdadasd', '1704880831_f11.jpg', 1),
(3, 'Let’s buy <br>New Chair', 'Get Instant Cashback', '1704894344_f22.jpg', 1),
(4, 'asdadasdadasdsagfg', 'sgsgsgshshshs', '1704880900_f33.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trust`
--

CREATE TABLE `trust` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `trust`
--

INSERT INTO `trust` (`id`, `title`, `desc`, `image`, `status`) VALUES
(1, 'Free Shipping & Return', 'On all order over $99.00', '1704885787_11.png', 1),
(2, 'Customer Support 24/7', 'Instant access to support', '1704885816_22.png', 1),
(3, '100% Secure Payment', 'We ensure secure payment!', '1704885840_33.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `linkyt` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `image`, `linkyt`, `status`, `created_at`, `updated_at`) VALUES
(2, '1705048282_video-furniture-44.png', 'https://www.youtube.com/watch?v=VrV0kxxMcUA', 1, '2024-01-12 08:31:22', '2024-01-12 08:31:22');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_email_unique` (`email`);

--
-- Chỉ mục cho bảng `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brandlogo`
--
ALTER TABLE `brandlogo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footbanner`
--
ALTER TABLE `footbanner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_account_id_foreign` (`account_id`),
  ADD KEY `likes_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_account_id_foreign` (`id_account`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderdetail_id_product_foreign` (`id_product`),
  ADD KEY `orderdetail_id_order_foreign` (`id_order`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id_cat_foreign` (`id_cat`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trust`
--
ALTER TABLE `trust`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `brandlogo`
--
ALTER TABLE `brandlogo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `footbanner`
--
ALTER TABLE `footbanner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `trust`
--
ALTER TABLE `trust`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_account_id_foreign` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `orderdetail_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_id_cat_foreign` FOREIGN KEY (`id_cat`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
