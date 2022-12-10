-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 10:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luanvan`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ask_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user`, `ask_id`, `content`, `created_at`, `updated_at`) VALUES
(11, 'Nguyễn Đăng Thiên', '6', '<p>Chào anh. Tình trạng của anh có thể là do rối loạn testocteron. Anh có thể đến bệnh viện để kiểm tra&nbsp;</p>', '2022-11-29 09:06:05', '2022-11-29 09:06:05'),
(12, 'Nguyễn Đăng Thiên', '6', '<p>Chào anh. Tình trạng của anh có thể là do rối loạn testocteron. Anh có thể đến bệnh viện để kiểm tra&nbsp;</p>', '2022-11-29 09:06:11', '2022-11-29 09:06:11'),
(13, 'Nguyễn Đăng Thiên', '6', '<p>Chào anh. Tình trạng của anh có thể là do rối loạn testocteron. Anh có thể đến bệnh viện để kiểm tra&nbsp;</p>', '2022-11-29 09:06:15', '2022-11-29 09:06:15'),
(14, 'Nguyễn Đăng Thiên', '6', '<p>đ</p>', '2022-11-29 09:09:32', '2022-11-29 09:09:32'),
(15, 'Nguyễn Đăng Thiên', '6', '<p>ss</p>', '2022-11-29 09:11:08', '2022-11-29 09:11:08'),
(16, 'Nguyễn Đăng Thiên', '6', '<p>dd</p>', '2022-11-29 09:11:58', '2022-11-29 09:11:58'),
(17, 'Nguyễn Đăng Thiên', '6', '<p>s</p>', '2022-11-29 09:14:39', '2022-11-29 09:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `asks`
--

CREATE TABLE `asks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `years` int(11) NOT NULL,
  `gender` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IVF',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asks`
--

INSERT INTO `asks` (`id`, `name`, `email`, `phone`, `years`, `gender`, `type`, `content`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Nguyễn Đăng Thiên', 'thien1pro1@gmail.com', '0585253470', 2000, 0, 'IVF', 'Chào bác sĩ. Tôi khi đi ngoài đau buốt, lúc quan hệ thì lâu ra. Tôi bị sao ạ', 1, '2022-11-29 09:04:59', '2022-11-29 09:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `book_id`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
(54, 49, 1, 0, '2022-11-29 08:59:44', '2022-11-29 08:59:44'),
(55, 50, 1, 26000, '2022-11-29 09:48:05', '2022-11-29 09:48:05'),
(56, 51, 1, 336000, '2022-12-07 22:25:13', '2022-12-07 22:25:13'),
(57, 52, 1, 96000, '2022-12-07 22:39:27', '2022-12-07 22:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `bill_medicines`
--

CREATE TABLE `bill_medicines` (
  `bill_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_medicines`
--

INSERT INTO `bill_medicines` (`bill_id`, `medicine_id`, `amount`) VALUES
(54, 12, 1),
(55, 3, 1),
(55, 8, 1),
(56, 8, 7),
(56, 13, 14),
(57, 1, 1),
(57, 2, 1),
(57, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wife_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hus_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wife_birthday` date NOT NULL,
  `hus_birthday` date NOT NULL,
  `register_date` date NOT NULL,
  `register_time` time NOT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `wife_name`, `hus_name`, `phone`, `email`, `wife_birthday`, `hus_birthday`, `register_date`, `register_time`, `room_id`, `status`, `message`, `result`, `created_at`, `updated_at`, `user_id`) VALUES
(39, 'Trần Yến Nhi', 'Trần Hạo Thiên', '0585253470', 'thien1pro1@gmail.com', '1993-09-21', '1990-06-15', '2022-11-28', '07:00:00', 1, 1, 'Tôi muốn kiểm tra sức khỏe cho vợ sau khi dùng gói IVF', NULL, '2022-11-28 09:02:22', '2022-11-28 10:50:48', NULL),
(40, 'Trần Yến Nhi', 'Trần Hạo Thiên', '0585253470', 'thien1pro1@gmail.com', '1993-09-21', '1990-06-15', '2022-12-03', '07:00:00', NULL, 0, 'Tối muốn sử dụng dịch vu IVF Phương Châu', '', '2022-11-28 09:02:22', '2022-11-28 09:03:13', NULL),
(41, 'Trần Yến Nhi', 'Trần Hạo Thiên', '0585253470', 'thien1pro1@gmail.com', '1993-09-21', '1990-06-15', '2022-10-28', '07:00:00', 1, 2, 'Tối muốn sử dụng dịch vu IVF Phương Châu', 'Kết quả tinh trùng đạt mức độ D\r\nTrứng bình thường', '2022-11-28 09:02:22', '2022-11-28 09:03:13', 3),
(42, 'Trần Yến Nhi', 'Trần Hạo Thiên', '0585253470', 'thien1pro1@gmail.com', '1993-09-21', '1990-06-15', '2022-11-11', '07:00:00', 1, 2, 'Tối muốn sử dụng dịch vu IVF Phương Châu', 'Kết quả Hoàn thành quá trình thụ tinh nhân tạo, Hen 2 tuần kiểm tra', '2022-11-28 09:02:22', '2022-11-28 09:03:13', 3),
(43, 'Nguyễn Kim Yến', 'Phạm Hoàng Học', '0345689654', 'hochochc@gmail.com', '1993-09-21', '1990-06-15', '2022-11-02', '13:00:00', 1, 2, 'Tôi muốn kiểm tra sức khỏe cho vợ sau khi dùng gói IVF', 'Sức khỏe tinh trùng tốt', '2022-11-28 09:02:22', '2022-11-28 09:03:13', 5),
(44, 'Nguyễn Kim Yến', 'Phạm Hoàng Học', '0345689654', 'hochochc@gmail.com', '1993-09-21', '1990-06-15', '2022-12-03', '07:00:00', NULL, 0, 'Tối muốn sử dụng dịch vu IVF Phương Châu', '', '2022-11-28 09:02:22', '2022-11-28 09:03:13', NULL),
(45, 'Nguyễn Kim Yến', 'Phạm Hoàng Học', '0345689654', 'hochochc@gmail.com', '1993-09-21', '1990-06-15', '2022-11-29', '07:00:00', 2, 2, 'Tối muốn sử dụng dịch vu IVF Phương Châu', 'Kết quả tinh trùng đạt mức độ D\r\nTrứng bình thường', '2022-11-28 09:02:22', '2022-11-28 09:03:13', 3),
(46, 'Nguyễn Kim Yến', 'Phạm Hoàng Học', '0345689654', 'hochochc@gmail.com', '1993-09-21', '1990-06-15', '2022-11-11', '07:00:00', 2, 2, 'Tối muốn sử dụng dịch vu IVF Phương Châu', 'Kết quả Hoàn thành quá trình thụ tinh nhân tạo, Hen 2 tuần kiểm tra', '2022-11-28 09:02:22', '2022-11-28 09:03:13', 3),
(47, 'Phạm Thúy Hằng', 'Dương Tấn Lực', '0896777567', 'luc@gmail.com', '2000-03-26', '1997-05-19', '2022-11-29', '07:00:00', NULL, -1, 'ko có gì', NULL, '2022-11-28 10:37:24', '2022-11-28 10:37:24', NULL),
(48, 'Dương Tố Như', 'Từ Văn Tài', '0543567890', 'thien1pro1@gmail.com', '1999-02-02', '1980-03-12', '2022-11-29', '07:00:00', NULL, -1, 'no', NULL, '2022-11-28 10:40:53', '2022-11-28 10:40:53', NULL),
(49, 'Dương Tố Như', 'Từ Văn Tài', '0543567890', 'thien1pro1@gmail.com', '1999-02-02', '1980-03-12', '2022-11-29', '07:00:00', NULL, 0, 'no', NULL, '2022-11-28 10:40:58', '2022-11-28 10:41:12', NULL),
(50, 'Trần Yến Nhi', 'Trần Hạo Thiên', '0585253470', 'thien1pro1@gmail.com', '1993-09-21', '1990-06-15', '2022-11-29', '08:00:00', 1, 2, 'Tôi muốn kiểm tra sức khỏe cho vợ sau khi dùng gói IVF', 'Kết quả xét nghiệm bình thường', '2022-11-28 09:02:22', '2022-11-29 10:02:19', NULL),
(51, 'Trần Yến Nhi', 'Trần Hạo Thiên', '0585253470', 'thien1pro1@gmail.com', '1993-09-21', '1990-06-15', '2022-12-08', '07:00:00', 1, 1, 'Tôi muốn kiểm tra sức khỏe cho vợ sau khi dùng gói IVF', NULL, '2022-11-28 09:02:22', '2022-11-28 10:50:48', NULL),
(52, 'Trần Yến Nhi', 'Trần Hạo Thiên', '0585253470', 'thien1pro1@gmail.com', '1993-09-21', '1990-06-15', '2022-12-08', '07:00:00', 1, 1, 'Tôi muốn kiểm tra sức khỏe cho vợ sau khi dùng gói IVF', NULL, '2022-11-28 09:02:22', '2022-11-28 10:50:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `calendars`
--

CREATE TABLE `calendars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(11) NOT NULL,
  `shift1` int(11) DEFAULT NULL,
  `shift2` int(11) DEFAULT NULL,
  `shift3` int(11) DEFAULT NULL,
  `Shift4` int(11) DEFAULT NULL,
  `shift5` int(11) DEFAULT NULL,
  `shift6` int(11) DEFAULT NULL,
  `shift7` int(11) DEFAULT NULL,
  `shift8` int(11) DEFAULT NULL,
  `shift9` int(11) DEFAULT NULL,
  `shift10` int(11) DEFAULT NULL,
  `shift11` int(11) DEFAULT NULL,
  `shift12` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calendars`
--

INSERT INTO `calendars` (`id`, `room_id`, `shift1`, `shift2`, `shift3`, `Shift4`, `shift5`, `shift6`, `shift7`, `shift8`, `shift9`, `shift10`, `shift11`, `shift12`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 2, 1, 2, NULL, NULL, NULL, NULL, 4, NULL, 6, NULL, NULL, NULL),
(2, 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-04 06:01:06'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categogies`
--

CREATE TABLE `categogies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categogyName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_Desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categogies`
--

INSERT INTO `categogies` (`id`, `categogyName`, `short_Desc`, `status`, `created_at`, `updated_at`) VALUES
(0, 'Dịch vụ', 'Dịch vụ của BVQT PHương Châu', 1, '2022-10-20 21:37:53', '2022-10-20 21:39:42'),
(1, 'Về chúng tôi', 'Về chúng tôi', 1, NULL, '2022-11-26 08:57:33'),
(2, 'Chế độ dinh dưỡng', 'Các loại thức ăn giàu đạm', 1, '2022-10-20 21:37:53', '2022-10-20 21:39:42');

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
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'thien1pro1@gmail.com',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `content`, `status`, `post_id`, `created_at`, `updated_at`) VALUES
(5, 'Nguyễn Đăng Thiên', 'thien1pro1@gmail.com', 'Bài viết rất bổ ich', 0, 2, '2022-11-25 20:19:29', '2022-11-25 20:19:29'),
(6, 'Thiên', 'thien1pro1@gmail.com', 'bai viet tao lao', 0, 6, '2022-11-26 03:01:43', '2022-11-26 03:01:43'),
(7, 'Thiên', 'thien1pro1@gmail.com', 'Bài viết rất hay', 0, 6, '2022-11-26 03:03:21', '2022-11-26 03:03:21'),
(8, 'thien', 'thien@gmail.com', 'ok', 0, 6, '2022-11-26 03:03:34', '2022-11-26 03:03:34'),
(9, 'thien', 'thien@gmail.com', 'bai viet rat bo ich, cam on benh vien', 0, 6, '2022-11-26 03:05:36', '2022-11-26 03:05:36'),
(10, 'Pham Hoang Hoc', 'hochochc@gmail.com', 'oke. Cám ơn đội ngũ bác sĩ của BVQT PC', 0, 6, '2022-11-26 03:06:49', '2022-11-26 03:06:49'),
(11, 'Nguyễn Đăng Thiên', 'thien1pro1@gmail.com', 'oke lắm ạ :)', 0, 10, '2022-11-27 23:14:21', '2022-11-27 23:14:21'),
(12, 'Phạm Hoàng Học', 'hocphe@gmail.com', 'Theo tôi thấy vấn đề này cần phải cẩn thận hơn với trẻ em', 0, 14, '2022-12-02 22:09:37', '2022-12-02 22:09:37'),
(13, 'Phạm Hoàng Học', 'hocphe@gmail.com', 'Theo tôi thấy vấn đề này cần phải cẩn thận hơn với trẻ em', 0, 14, '2022-12-02 22:10:22', '2022-12-02 22:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `type`, `price`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Vitamin C vien', '4', 23000, 1000, 0, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(2, 'Vitamin D vien', '4', 23000, 1000, 0, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(3, 'Vitamin E vien', '4', 23000, 1000, 0, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(4, 'Plizertin', '1', 50000, 1000, 0, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(5, 'Plizertin - 2x', '1', 50000, 2500, 0, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(6, 'Plizertin - 3x', '1', 50000, 3256, 0, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(7, 'Hiperon Extra M2', '2', 1700, 10000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(8, 'Gluvenron ', '2', 3000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(9, 'Paracetamon ', '2', 3000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(10, 'Paradon ', '2', 3000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(11, 'Ademi ', '2', 3000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(12, 'Nước muối kháng sinh', '3', 15000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(13, 'Oxigen 90% 500ml', '3', 15000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(14, 'Thuốc đỏ', '3', 15000, 5000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(15, 'Băng gạt y tế', '5', 15000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(16, 'Chỉ y tế', '5', 15000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(17, 'Thuốc tê', '5', 15000, 2567, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(18, 'Thuốc mê', '5', 15000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(19, 'Túi zip', '5', 15000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(20, 'Que gỗ y tế 100pcs', '5', 15000, 1000, 1, '2022-11-17 10:11:17', '2022-11-17 10:11:17'),
(21, 'Etozin', '2', 12000, 3000, 0, '2022-11-19 16:05:54', '2022-11-19 16:05:54');

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
(5, '2022_10_06_095525_create_permission_tables', 1),
(9, '2022_10_16_125751_create_books_table', 2),
(11, '2022_10_21_031046_create_services_table', 4),
(12, '2022_10_21_031933_create_positions_table', 4),
(13, '2022_10_21_032305_create_categogies_table', 4),
(16, '2022_10_21_034532_create_posts_table', 5),
(19, '2022_10_16_151700_create_rooms_table', 6),
(20, '2022_11_14_142208_create_files_table', 6),
(21, '2022_11_16_064258_create_flights_table', 7),
(23, '2022_11_16_162410_add_user_id_to_books_table', 7),
(24, '2022_11_16_064354_create_medicines_table', 8),
(25, '2022_11_18_043448_add_avatar_to_users_table', 9),
(28, '2022_11_19_063432_create_bills_table', 10),
(29, '2022_11_19_063559_create_bill__medicines_table', 11),
(30, '2022_11_20_130958_create_asks_table', 12),
(31, '2022_11_20_131549_create_answers_table', 13),
(32, '2022_11_26_022151_feedback_migration', 14),
(34, '2022_11_26_022151_calendar_migration', 15);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` bigint(20) NOT NULL DEFAULT 6000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `salary`, `created_at`, `updated_at`) VALUES
(0, 'Admin', 6000000, '2022-11-26 05:38:34', '2022-11-26 05:38:34'),
(1, 'Giám đốc', 6000000, '2022-10-20 20:30:13', '2022-10-20 20:30:13'),
(2, 'Bác Sĩ', 6000000, '2022-10-20 20:30:21', '2022-10-20 20:30:21'),
(3, 'Y tá', 6000000, '2022-10-20 20:40:43', '2022-10-20 20:40:43'),
(4, 'Nhân viên marketing', 6000000, '2022-10-20 20:40:59', '2022-10-20 20:40:59'),
(6, 'bảo vệ', 6000000, '2022-11-26 05:38:34', '2022-11-26 05:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_Desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categogy_id` tinyint(4) NOT NULL,
  `views` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'thien',
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `short_Desc`, `content`, `image`, `categogy_id`, `views`, `name`, `status`) VALUES
(1, '2022-10-21 03:13:52', '2022-11-26 02:23:12', 'Đánh giá sức khỏe sinh sản tiền hôn nhân', '<p>Độ tuổi dưới 15 là&nbsp;<strong>“thời kì vàng”</strong>&nbsp;cho sự phát triển của trẻ sau này. Vì thế, việc khám tầm soát tổng quát định kỳ trong giai đoạn này là rất cần thiết. Điều này giúp bố mẹ có thể nắm bắt được quá trình tăng trưởng về thể chất lẫn tinh thần của con.</p>', '<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://127.0.0.1:8000/4e421070-234f-4c37-abc5-e982e36e948f\" width=\"1200\" />\r\n<figcaption>z</figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Độ tuổi dưới 15 là&nbsp;<strong>“thời kì vàng”</strong>&nbsp;cho sự phát triển của trẻ sau này. Vì thế, việc khám tầm soát tổng quát định kỳ trong giai đoạn này là rất cần thiết. Điều này giúp bố mẹ có thể nắm bắt được quá trình tăng trưởng về thể chất lẫn tinh thần của con.</p>\r\n\r\n<p>Các chuyên gia về lĩnh vực nhi khoa khuyến cáo: Dù trẻ có ốm yếu hay khỏe mạnh, bố mẹ vẫn cần cho trẻ khám sức khỏe định kỳ 6 tháng/1 lần đối với trẻ lớn và 2 – 4 tháng/1 lần đối với trẻ nhỏ.</p>\r\n\r\n<p>Thấu hiểu được điều đó,&nbsp;<strong>BV Phương Châu Sa Đéc</strong>&nbsp;mang đến&nbsp;“Gói khám tầm soát sức khoẻ trẻ em”&nbsp;với các ưu điểm:</p>\r\n\r\n<p>Giúp bố mẹ có thể theo dõi sát sao quá trình tăng trưởng của bé, đảm bảo không bỏ sót các hạng mục kiểm tra sức khỏe cần thiết theo độ tuổi của bé.</p>\r\n\r\n<p>Tầm soát để phát hiện sớm các dấu hiệu bệnh và điều trị kịp thời.</p>\r\n\r\n<p>Bác sĩ chuyên khoa Nhi sẽ tư vấn chi tiết về cách xây dựng chế độ dinh dưỡng hợp lý, lịch tiêm chủng và cách thức phòng tránh các bệnh lý thường gặp theo mùa.</p>\r\n\r\n<p>Tại&nbsp;<strong>Bệnh viện Phương Châu Sa Đéc</strong>&nbsp;có 3 loại gói khám phù hợp với độ tuổi và nhu cầu thăm khám khác nhau:</p>\r\n\r\n<ul>\r\n	<li><strong>Gói Khám sức khỏe tổng quát Nhi (01 tháng – 01 tuổi)</strong></li>\r\n	<li><strong>Gói Khám sức khỏe tổng quát Nhi (01 tuổi – 05 tuổi)</strong></li>\r\n	<li><strong>Gói Khám sức khỏe tổng quát Nhi (05 tuổi – 15 tuổi)</strong></li>\r\n</ul>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"2\"><strong>&nbsp;</strong><br />\r\n			<strong>STT</strong></td>\r\n			<td rowspan=\"2\"><strong>&nbsp;</strong><br />\r\n			<strong>DANH MỤC GÓI KHÁM</strong></td>\r\n			<td colspan=\"3\"><strong>&nbsp;</strong><br />\r\n			<strong>ĐỘ TUỔI</strong><br />\r\n			<strong>&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1 THÁNG – 1 TUỔI</strong></td>\r\n			<td><strong>1 TUỔI – 5 TUỔI</strong></td>\r\n			<td><strong>5 TUỔI – 15 TUỔI</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>KHÁM LÂM SÀNG VÀ TƯ VẤN</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Khám nhi và tư vấn tổng quát</strong><br />\r\n			Bác sĩ khám lâm sàng các bệnh lý và bất thường, tư vấn kết quả khám, tư vấn dinh dưỡng và tiêm ngừa</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><strong>Khám tai mũi họng</strong><br />\r\n			Khám và tư thế các vấn đề bệnh lý tai mũi họng: xoang, viêm thanh quản, amidan….</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>CẬN LÂM SÀNG</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td><strong>Tổng phấn tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td><strong>Tổng phân tích nước tiểu 10 thông số</strong><br />\r\n			Soi cặn lắng, tầm soát các bệnh đái tháo đường, đái nhạt, bệnh gan, thận, bệnh viêm đường tiết niệu, đái máu…</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td><strong>Đường huyết Glucose</strong><br />\r\n			Đánh giá tình trạng chuyển hóa đường, rối loạn dung nạp đường huyết trong cơ thể</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td><strong>Chức năng thận( Ure, Creatinine)</strong><br />\r\n			Đánh giá chức năng cầu thận, tầm soát bệnh lý về thận: thiếu năng thận, viêm cầu thận cấp, mạn, tắc mật, sỏi mật…</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td><strong>Chức năng gan( AST, ALT)</strong><br />\r\n			Đánh giá múc độ tổn thương màng tế bào gan. Tầm soát các bệnh lý về chức năng gan</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td><strong>Định lượng Protein toàn phần</strong><br />\r\n			Đánh giá tình trạng dinh dưỡng liên quan đến chuyển hóa đạm (protein)</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td><strong>Định lượng Albumin (máu)</strong><br />\r\n			Đánh giá tình trạng dinh dưỡng liên quan đến chuyển hóa đạm (Albumin)</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td><strong>Định lượng Mg</strong><br />\r\n			Định lượng vi chất Magie trong cơ thể</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td><strong>Định lượng ZN huyết thanh</strong><br />\r\n			Định lượng vi chất kẽm trong cơ thể</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td><strong>Định lượng Calci ion hóa</strong><br />\r\n			Đánh giá nồng độ calci trong máu góp phần trong quá trình tạo xương, thiếu dinh dưỡng…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td><strong>Định lượng Ferritin</strong><br />\r\n			Đánh giá tình trạng thiếu máu thiếu sắt, đánh giá những rối loạn chuyển hóa sắt trong cơ thể</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td><strong>HBsAg test nhanh</strong><br />\r\n			Tầm soát bệnh lý viêm gan siêu vi B</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td><strong>HbsAb định lượng</strong><br />\r\n			Kiểm tra định lượng kháng thể viêm gan B</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>CHẨN ĐOÁN HÌNH ẢNH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td><strong>Siêu âm ổ bụng</strong><br />\r\n			Kiểm tra các bất thường về hình dạng nội tạng, các bệnh lý trong ở bụng</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td><strong>Siêu âm tim và màng tim qua thành ngực</strong><br />\r\n			Kiểm tra các bất thường và bệnh lý ở tim</td>\r\n			<td>√</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td><strong>Siêu âm qua thóp</strong><br />\r\n			Kiểm tra các bất thường, chẩn đoán các bệnh lý của hệ thần kinh trung ương</td>\r\n			<td>√</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td><strong>Chụp X quang ngực thẳng</strong><br />\r\n			Kiểm tra các bất thường về tim, phổi.</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>1.370.000</strong></td>\r\n			<td><strong>1.280.000</strong></td>\r\n			<td><strong>2.260.000</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHI PHÍ ƯU ĐÃI&nbsp;</strong></td>\r\n			<td><strong>1.240.000&nbsp;</strong></td>\r\n			<td><strong>1.165.000&nbsp;</strong></td>\r\n			<td><strong>2.045.000&nbsp;</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Tổng đài 1900 54 54 66 (ấn phím 2)</strong>&nbsp;sẵn sàng hỗ trợ gia đình các thông tin cần thiết.</p>', '1669454481_goi-tam-soat-suc-khoe-tre-em.jpg', 0, 234, 'thien', 0),
(2, '2022-10-21 03:18:09', '2022-11-26 02:25:38', 'Xét nghiệm tinh dịch đồ - Semen Analysis', 'Sau 4 đợt bùng dịch tại Việt Nam, Covid-19 đã để lại nhiều đau thương và ảnh hưởng nghiêm trọng đến sức khỏe mọi nhà, trong đó. Hội chứng hậu Covid-19là một minh chứng cụ thể. Hội chứng hậu Covid-19 đặc biệt nghiêm trọng đối với người cao tuổi, người có bệnh nền, thai phụ và trẻ em', '<p><a href=\"https://sadec.phuongchau.com/goi-kham-suc-khoe-hau-covid-19-cho-nguoi-lon-va-tre-em/\"><img alt=\"gói khám sức khỏe hậu covid dành cho người lớn tại phương châu sa đéc\" height=\"722\" sizes=\"(max-width: 1020px) 100vw, 1020px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2022/03/goi-kham-suc-khoe-hau-covid-danh-cho-nguoi-lon-pcsd-scaled.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2022/03/goi-kham-suc-khoe-hau-covid-danh-cho-nguoi-lon-pcsd-scaled.jpg 2560w, https://sadec.phuongchau.com/wp-content/uploads/2022/03/goi-kham-suc-khoe-hau-covid-danh-cho-nguoi-lon-pcsd-scaled-500x354.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2022/03/goi-kham-suc-khoe-hau-covid-danh-cho-nguoi-lon-pcsd-scaled-800x566.jpg 800w\" width=\"1020\" /></a></p>\r\n\r\n<p>14<br />\r\nMar</p>\r\n\r\n<p>Sau 4 đợt bùng dịch tại Việt Nam, Covid-19 đã để lại nhiều đau thương và ảnh hưởng nghiêm trọng đến sức khỏe mọi nhà, trong đó&nbsp;<strong>Hội chứng hậu Covid-19</strong>&nbsp;là một minh chứng cụ thể.&nbsp;<strong>Hội chứng hậu Covid-19</strong>&nbsp;đặc biệt nghiêm trọng đối với người cao tuổi, người có bệnh nền, thai phụ và trẻ em.</p>\r\n\r\n<p>Thấu hiểu nhiều gia đình F0 khỏi bệnh có nhu cầu được tư vấn, thăm khám và điều trị&nbsp;<strong>Hội chứng hậu&nbsp;Covid-19</strong>, gói&nbsp;<strong>Khám Hậu&nbsp;Covid-19</strong>&nbsp;ra đời để đáp lại mong muốn vô cùng cấp thiết của các gia đình nhà Châu.</p>\r\n\r\n<p>Các gói&nbsp;<strong>Khám Hội chứng hậu Covid</strong>&nbsp;hiện có tại&nbsp;<strong>Phương châu Sa đéc</strong>&nbsp;dành cho đối tượng khách hàng người lớn &amp; trẻ em:</p>\r\n\r\n<p><strong>Gói khám dành cho người lớn:</strong></p>\r\n\r\n<p><em><strong>– Gói khám hậu SARS CoV2 gói số 01 (gói chỉ từ 2.510.000)</strong></em></p>\r\n\r\n<p><em><strong>– Gói khám hậu SARS CoV2 gói số 02 (gói chỉ từ 1.975.000)</strong></em></p>\r\n\r\n<p><strong>Gói khám dành cho trẻ em:</strong></p>\r\n\r\n<p><em><strong>– Gói khám hậu SARS CoV2_TRẺ EM (gói chỉ từ 1.235.000)</strong></em></p>\r\n\r\n<h2><strong>GÓI KHÁM HẬU SARS CoV 2 SỐ 01 &amp;&nbsp;</strong><strong>02</strong></h2>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>NỘI DUNG</strong></td>\r\n			<td><strong>SỐ 1</strong></td>\r\n			<td><strong>SỐ 2</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\"><strong>Khám lâm sàng và tư vấn</strong></td>\r\n			<td><strong>&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Khám nội khoa và tư vấn kết quả</strong><br />\r\n			Bác sĩ khám lâm sàng các bệnh lý và bất thường, tư vấn kết quả</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\"><strong>Cận lâm sàng</strong></td>\r\n			<td><strong>&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Định lượng CRP</strong><br />\r\n			Xác định và đánh giá tình trạng viêm hoặc nhiễm trùng</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Tổng phân tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><strong>Tổng phân tích nước tiểu 10 thông số</strong><br />\r\n			Soi cặn lắng, tầm soát các bệnh đái tháo đường, đái nhạt, bệnh gan, thận, viêm đường tiết niệu, đái máu…</td>\r\n			<td>√</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td><strong>Điện giải đồ ( Na, K, Cl, CA)</strong><br />\r\n			Kiểm tra các điện giải trong cơ thể</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td><strong>Chức năng thận ( Urê, Creatinine)</strong><br />\r\n			Tầm soát các bệnh lý về thận: thiểu năng thận, viêm cầu thận cấp, mạn, tắc mật, sỏi mật…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td><strong>Chức năng gan ( AST, ALT)</strong><br />\r\n			Tầm soát các bệnh về gan: Viêm gan cấp, mạn, tổn thương nhu mô gan…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td><strong>Men gan GGT</strong><br />\r\n			Kiểm tra men gan, tổn thương gan do bia rượu, thuốc</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Đường huyết Glucose<br />\r\n			Tầm soát đái tháo đường, hạ đường huyết, rối loạn chuyển hóa glucose</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td><strong>Định lượng HbA1c</strong><br />\r\n			Phản ánh tình trạng kiểm soát đường của bệnh nhân đang điều trị ĐTĐ, phát hiện sớm ĐTĐ..</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td><strong>Định lượng Ferritin</strong><br />\r\n			Chẩn đoán tình trạng thiếu máu thiếu sắt, rối loạn chuyển hóa sắt</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td><strong>Bộ mỡ 4 chỉ số ( Cholesterol, Triglycerid, HDL-C, LDL-C)</strong><br />\r\n			Phát hiện hội chứng rối loạn chuyển hóa lipid, nguy cơ xơ vữa động mạch, tăng huyết áp nhồi máu cơ tim.</td>\r\n			<td>√</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td><strong>Chức năng tuyến giáp (FT3, FT4, TSH)</strong><br />\r\n			Đánh giá chức năng tuyến giáp</td>\r\n			<td>√</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td><strong>Định lượng Fibrinogen</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td><strong>Thời gian prothrombin (PT: Prothrombin Time) bằng máy tự động</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td><strong>Thời gian thromboplastin một phần hoạt hóa (APTT: Activated Partial Thromboplastin Time)</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid.</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\"><strong>Chuẩn đoán hình ảnh</strong></td>\r\n			<td><strong>&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Điện tim thường</strong><br />\r\n			Kiểm tra nhịp tim, bệnh lý tim mạch…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Chụp X-quang ngực thẳng</strong><br />\r\n			Tầm soát lao và bệnh phổi, hình ảnh bóng tim</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><strong>Siêu âm doppler màu tim</strong><br />\r\n			Tầm soát các bệnh lý tim mạch, hở van tim, rối loạn nhịp, dịch màng ngoài tim..</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td><strong>Siêu âm ổ bụng</strong><br />\r\n			Tầm soát các bệnh lý sỏi thận, gan nhiễm mỡ, lách tụy, khảo sát tử cung, phần phụ, chức năng tiền liệt tuyến…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>2,760,000đ</strong></td>\r\n			<td><strong>2,170,000đ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHI PHÍ ƯU ĐÃI</strong></td>\r\n			<td><strong>2,510,000đ</strong></td>\r\n			<td><strong>1,975,000đ</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><strong>GÓI KHÁM HẬU SARS CoV 2_TRẺ EM</strong></h2>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>NỘI DUNG</strong></td>\r\n			<td><strong>TRẺ EM</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\"><strong>Khám lâm sàng và tư vấn</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Khám nhi và tư vấn tổng quát</strong><br />\r\n			Bác sĩ khám lâm sàng các bệnh lý và bất thường, tư vấn kết quả khám, tư vấn dinh dưỡng và tiêm ngừa</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\"><strong>Cận lâm sàng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Tổng phấn tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Chức năng thận (Ure, Creatinine)</strong><br />\r\n			Đánh giá chức năng cầu thận, tầm soát bệnh lý về thận: thiếu năng thận, viêm cầu thận cấp, mạn, tắc mật, sỏi mật …</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><strong>Chức năng gan (AST, ALT)</strong><br />\r\n			Đánh giá múc độ tổn thương màng tế bào gan. Tầm soát các bệnh lý về chức năng gan</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td><strong>Định lượng CRP</strong><br />\r\n			Xác định và đánh giá tình trạng viêm hoặc nhiễm trùng</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td><strong>Định lượng Fibrinogen</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td><strong>PT INR máu</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td><strong>Thời gian prothrombin (PT: Prothrombin Time) bằng máy tự động</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td><strong>Định lượng Ferritin</strong><br />\r\n			Chẩn đoán tình trạng thiếu máu thiếu sắt, rối loạn chuyển hóa sắt</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td><strong>Thời gian thromboplastin một phần hoạt hóa (APTT: Activated Partial Thromboplastin Time)</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td><strong>Định lượng Mg</strong><br />\r\n			<em>Định lượng vi chất Magie trong cơ thể</em></td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td><strong>Định lượng ZN huyết thanh</strong><br />\r\n			<em>Định lượng vi chất kẽm trong cơ thể</em></td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td><strong>Định lượng Calci ion hóa</strong><br />\r\n			<em>Đánh giá nồng độ calci trong máu góp phần trong quá trình tạo xương, thiếu dinh dưỡng…</em></td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>1,345,000đ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHI PHÍ GÓI KHÁM SỨC KHỎE</strong></td>\r\n			<td><strong>1,235,000đ</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<blockquote>\r\n<p><em><strong>Khuyến mãi Khách hàng mua gói khám hậu COVID trẻ em: Giảm 5% dịch vụ khám Dinh dưỡng Nhi khoa cho trẻ. (HSD: 01 tháng sau khi mua gói)</strong></em></p>\r\n</blockquote>\r\n\r\n<p>Các gia đình cần hỗ trợ thêm thông tin từ bác sĩ&nbsp;<strong>Phương Châu</strong>&nbsp;về việc thăm khám các&nbsp;<strong>Hội chứng hậu Covid-19</strong>&nbsp;cũng như các vấn đề khác về sức khỏe có thể liên hệ qua&nbsp;<strong>Tổng đài&nbsp;1900 54 54 66&nbsp;(Phím 2)</strong></p>', '1669454738_goi-kham-suc-khoe-hau-covid-danh-cho-nguoi-lon-pcsd-scaled-800x566.jpg', 0, 2442, 'thien', 0),
(3, '2022-11-25 21:55:56', '2022-11-26 02:54:33', 'Chuyển phôi trữ lạnh – Frozen Embryo Transfer (FET)', 'Hiện nay, bệnh lý ung thư phụ khoa đang có xu hướng gia tăng và độ tuổi người bệnh đang ngày một trẻ hóa. Các triệu chứng của căn bệnh này thường khó nhận ra. Đừng để quá trễ, ngay từ bây giờ, các chị em phụ nữ cần có biện pháp phòng ngừa và phát hiện sớm, tránh nguy cơ mắc bệnh và tốn kém chi phí điều trị về sau.', '<p><a href=\"https://sadec.phuongchau.com/goi-tam-soat-ung-thu-phu-khoa/\"><img alt=\"Tầm Soát Ung Thư Phụ Khoa\" height=\"434\" sizes=\"(max-width: 738px) 100vw, 738px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/hieu-biet-ve-ung-thu-co-tu-cung-e1582108929410.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/hieu-biet-ve-ung-thu-co-tu-cung-e1582108929410.jpg 738w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/hieu-biet-ve-ung-thu-co-tu-cung-e1582108929410-500x294.jpg 500w\" width=\"738\" /></a></p>\r\n\r\n<p>22<br />\r\nNov</p>\r\n\r\n<h2><strong>GÓI TẦM SOÁT UNG THƯ PHỤ KHOA</strong></h2>\r\n\r\n<p><strong>Chủ động với sức khỏe của mình – Vì bạn là phụ nữ</strong></p>\r\n\r\n<p><strong>Hiện nay, bệnh lý ung thư phụ khoa đang có xu hướng gia tăng và độ tuổi người bệnh đang ngày một trẻ hóa. Các triệu chứng của căn bệnh này thường khó nhận ra. Đừng để quá trễ, ngay từ bây giờ, các chị em phụ nữ cần có biện pháp phòng ngừa và phát hiện sớm, tránh nguy cơ mắc bệnh và tốn kém chi phí điều trị về sau.</strong></p>\r\n\r\n<p>Một số loại ung thư phụ khoa phổ biến là: ung thư cổ tử cung, ung thư vú, ung thư buồng trứng, ung thư tử cung, ung thư âm hộ, ung thư âm đạo… Đây là những căn bệnh thường gặp, có tỉ lệ tử vong&nbsp;<strong>cao nhất</strong>&nbsp;trong các loại bệnh ung thư ở phụ nữ.</p>\r\n\r\n<p>Đa số phụ nữ Việt Nam ít có thói quen khám sức khỏe phụ khoa định kỳ do tâm lý e ngại, xấu hổ và nghĩ là “bệnh của phụ nữ”. Khi bệnh chuyển biến nặng thì đã quá muộn, các chị em phải tốn kém rất nhiều chi phí điều trị, tỷ lệ điều trị thành công lúc này không cao.</p>\r\n\r\n<h2><strong>Gói Tầm Soát Ung Thư Phụ Khoa của BV Phương Châu Sa Đéc sẽ đồng hành cùng chị, em phụ nữ:</strong></h2>\r\n\r\n<ul>\r\n	<li>Kiểm tra chức năng phụ khoa</li>\r\n	<li>Thực hiện xét nghiệm và cận lâm sàng cần thiết giúp phát hiện sớm các bệnh:&nbsp;<strong>ung thư cổ tử cung,</strong><strong>tử cung,&nbsp;buồng trứng,&nbsp;ung thư vú</strong>. Đồng thời, các bệnh lý lây truyền qua đường tình dục, có thể dẫn đến nguy cơ ung thư phụ khoa cao rất cần được kiểm tra, phát hiện &amp; điều trị kịp thời, dứt điểm.</li>\r\n</ul>\r\n\r\n<h2><strong>Vì sao chọn Tầm Soát Ung Thư Phụ Khoa tại BV Phương Châu Sa Đéc ?</strong></h2>\r\n\r\n<p>Tại ĐBSCL hiện nay, Phương Châu đã được nhiều khách hàng lựa chọn là nơi tầm soát sức khỏe nói chung và tầm soát ung thư phụ khoa nói riêng với:</p>\r\n\r\n<ul>\r\n	<li><em>Máy móc, trang thiết bị y tế hiện đại với độ chính xác cao.</em></li>\r\n	<li><em>Đội ngũ Bác sĩ có nhiều năm kinh nghiệm trong điều trị các bệnh lý phụ khoa.</em></li>\r\n	<li><em>Các gói khám được thiết kế dành riêng cho từng lứa tuổi (21 – 65 tuổi), đáp ứng nhu cầu thăm khám đa dạng của các chị em.</em></li>\r\n	<li><em>Hợp tác chuyên môn với các bệnh viện uy tín trong nước và quốc tế.</em></li>\r\n	<li><em>Điều trị, chăm sóc người bệnh toàn diện, phối hợp đa chuyên khoa.</em></li>\r\n</ul>\r\n\r\n<h3><strong>NỘI DUNG GÓI KHÁM TẦM SOÁT UNG THƯ PHỤ KHOA</strong></h3>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>HẠNG MỤC&nbsp;</strong></td>\r\n			<td>\r\n			<p><strong>CƠ BẢN</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>TIÊU CHUẨN</strong></p>\r\n\r\n			<p><strong>(Viêm nhiễm tái phát)</strong></p>\r\n			</td>\r\n			<td><strong>NÂNG CAO</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>KHÁM LÂM SÀN VÀ TƯ VẤN&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1</strong></td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td>Miễn phí</td>\r\n			<td>&nbsp;Miễn phí</td>\r\n			<td>Miễn phí</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2</strong></td>\r\n			<td><strong>Khám và Tư vấn Phụ Khoa</strong><br />\r\n			Phát hiện và kiểm tra các bệnh viêm nhiễm đường sinh dục, u xơ tử cung, ung thư cổ tử cung, ….</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3</strong></td>\r\n			<td><strong>Khám và Tư vấn Nhũ khoa</strong><br />\r\n			Kiểm tra tuyến vú: Phát hiện các bệnh lý tuyến vú, ung thư vú …</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>CHUẨN ĐOÁN HÌNH ẢNH</strong>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>4</strong></td>\r\n			<td><strong>Siêu âm tuyến vú 2 bên</strong><br />\r\n			Tầm soát bệnh lý tuyến vú, khối u, nang trong vùng ngực…</td>\r\n			<td>&nbsp;√</td>\r\n			<td>&nbsp;√</td>\r\n			<td>&nbsp;√</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>5</strong></td>\r\n			<td><strong>Chụp nhũ ảnh 2 bên</strong><br />\r\n			Tầm soát bệnh lý tuyến vú, khối u, nang, phát triển tổn thương kích thước nhỏ, tầm soát ung thư</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>6</strong></td>\r\n			<td><strong>Siêu âm tử cung buồng trứng qua đường âm đạo</strong><br />\r\n			Phát triển u nang, u xơ, polyp buồng tử cung</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>7</strong></td>\r\n			<td><strong>Soi cổ tử cung</strong><br />\r\n			Kiểm tra tổn thương bề mặt, cổ tử cung, viêm lộ tuyến cổ tử cung, tiền ung thư…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>CÁC XÉT NGHIỆM TẦM SOÁT&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>8</strong></td>\r\n			<td><strong>Vi khuẩn nhuộm soi (dịch)</strong><br />\r\n			Xét nghiệm tìm nguyên nhân viêm nhiễm âm đạo do vi khuẩn, nấm..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>9</strong></td>\r\n			<td><strong>Xét nghiệm tế bào học bằng phương pháp Liqui Prep</strong><br />\r\n			Tầm soát Ung thư Cổ tử cung</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>10</strong></td>\r\n			<td><strong>HPV Genotype</strong><br />\r\n			Xác định các loại virus có khả năng gây ung thư CTC</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>11</strong></td>\r\n			<td><strong>Chlamydia real – time PCR</strong><br />\r\n			Tầm soát bệnh viêm nhiễm cho vi khuẩn Chlamydia</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>12</strong></td>\r\n			<td><strong>Nesseria gonorrhoeae real – time PCR</strong><br />\r\n			Tầm soát viêm nhiễm do vi khuẩn lậu</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>13</strong></td>\r\n			<td><strong>Định lượng CA 12.5</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư buồng trứng</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>14</strong></td>\r\n			<td><strong>Định lượng CA 15.3</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư vú</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>15</strong></td>\r\n			<td><strong>Tổng phân tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>1.990.000đ</strong></td>\r\n			<td><strong>3.690.000đ</strong></td>\r\n			<td><strong>4.160.000đ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>GIÁ GÓI KHÁM SỨC KHỎE</strong></td>\r\n			<td><strong>1.790.000đ</strong></td>\r\n			<td><strong>3.320.000đ</strong></td>\r\n			<td><strong>3.745.000đ</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Ưu đãi 10% tất cả gói khám tầm soát sức khỏe</strong></p>\r\n\r\n<p>Chọn quà thay cho tình yêu thương, cần là những sự lựa chọn ý nghĩa, tinh tế và cần thiết đối với người nhận. Hơn nữa, đó còn là tấm lòng và sự quan tâm của những đứa con dành trọn vẹn cho ba mẹ và những người thương yêu của mình.</p>\r\n\r\n<p><strong>Những Món Quà Sức Khỏe Giúp Ta Bày Tỏ Yêu Thương Bằng Hành Động</strong></p>\r\n\r\n<h2><strong>ĐỐI TƯỢNG SỬ DỤNG GÓI TẦM SOÁT</strong></h2>\r\n\r\n<p>– Khách hàng có nhu cầu có thể thực hiện sàng lọc bệnh lý về ung thư phụ khoa (cổ tử cung, tử cung, buồng trứng), bệnh lý phụ khoa khác.<br />\r\n– Các khách hàng có nguy cơ cao mắc các bệnh về ung thư – đặc biệt là khách hàng tiền sử gia đình có bệnh lý ung thư phụ khoa.<br />\r\n– Phụ nữ đã từng quan hệ tình dục.</p>\r\n\r\n<h3><strong>Lưu ý khi sử dụng Gói Tầm Soát&nbsp;Ung Thư Phụ Khoa</strong></h3>\r\n\r\n<p>– Các kết quả xét nghiệm có thể âm tính giả hoặc dương tính giả. Các Bác sĩ chuyên khoa sẽ xem xét các trường hợp cụ thể để đưa ra tư vấn thích hợp cho từng khách hàng.<br />\r\n– Các hạng mục dịch vụ phát sinh do bác sĩ tư vấn và chỉ định ngoài hạng mục của gói khám khách hàng sẽ thanh toán thêm nếu đồng ý thực hiện</p>\r\n\r\n<p><strong>Để biết thêm thông tin về Gói tầm soát, quý khách hàng vui lòng liên hệ:</strong><br />\r\n<em>– Tổng Đài Tư vấn &amp; CSKH&nbsp;<strong>1900 54 54 66 ( Phím 2 )</strong></em><br />\r\n<em>– Tương tác qua Facebook BV Phương Châu Sa Đéc</em><br />\r\n<em>(<a href=\"https://www.facebook.com/phuongchausadec\">facebook.com/bvphuongchausadec</a>)</em><br />\r\n<em>– Hoặc Đến Quầy Chăm Sóc Khách Hàng BV Phương Châu Sa Đéc để được tư vấn trực tiếp</em></p>', '1669456473_hieu-biet-ve-ung-thu-co-tu-cung-e1582108929410.jpg', 0, 1312, 'thien', 0);
INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `short_Desc`, `content`, `image`, `categogy_id`, `views`, `name`, `status`) VALUES
(4, '2022-11-26 02:56:36', '2022-11-26 10:06:21', 'Hỗ trợ phôi thoát màng – Assisted Hatching (AH)', '<p>Kiểm tra sức khỏe tổng quát đóng một vai trò quan trọng trong việc tầm soát mầm bệnh ngay cả trong trường hợp bạn không có bất kì dấu hiệu hay triệu chứng nào của bệnh. Ngoài việc phát hiện bệnh sớm và có hướng điều trị kịp thời, đúng cách; việc khám sức khỏe định kỳ còn giúp bạn đánh giá sức khỏe bản thân, từ đó điều chỉnh lối sống phù hợp.</p>', '<p><a href=\"https://sadec.phuongchau.com/goi-tam-soat-suc-khoe-tong-quat/\"><img alt=\"goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky\" height=\"534\" sizes=\"(max-width: 1020px) 100vw, 1020px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky.jpg 1200w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky-500x262.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky-800x419.jpg 800w\" width=\"1020\" /></a></p>\r\n\r\n<p>22<br />\r\nNov</p>\r\n\r\n<h3><strong>GÓI KHÁM TẦM SOÁT SỨC KHỎE TỔNG QUÁT</strong></h3>\r\n\r\n<p><strong>Tầm soát sức khỏe định kỳ – vì chất lượng cuộc sống của bạn&nbsp;</strong></p>\r\n\r\n<p><strong>Kiểm tra sức khỏe tổng quát đóng một vai trò quan trọng trong việc tầm soát mầm bệnh ngay cả trong trường hợp bạn không có bất kì dấu hiệu hay triệu chứng nào của bệnh. Ngoài việc phát hiện bệnh sớm và có hướng điều trị kịp thời, đúng cách; việc khám sức khỏe định kỳ còn giúp bạn đánh giá sức khỏe bản thân, từ đó điều chỉnh lối sống phù hợp.&nbsp;</strong></p>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<h5><em><img alt=\"goi-tam-soat-suc-khoe-tong-quat\" height=\"400\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/goi-tam-soat-suc-khoe-tong-quat-667x400.png\" width=\"667\" />Người trên 18 tuổi nên khám sức khỏe tổng quát định kỳ 06 tháng/1 lần</em></h5>\r\n\r\n<p><strong>Gói Khám Tầm Soát Sức Khỏe Tổng Quát</strong>&nbsp;của BV Phương Châu Sa Đéc được thiết kế khoa học, phù hợp với nhu cầu và tình hình sức khoẻ của từng người bệnh, nhờ đó giúp phát hiện sớm và điều trị kịp thời nhằm giảm chi phí điều trị, kiểm soát rủi ro, đặc biệt là các bệnh lý nguy hiểm, đe dọa tính mạng, ảnh hưởng tới chất lượng cuộc sống.</p>\r\n\r\n<h3><strong><em>HẠNG MỤC GÓI TẦM SOÁT SỨC KHỎE TỔNG QUÁT&nbsp;</em></strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Gói khám tổng quát cho nam</strong></li>\r\n	<li><strong>Gói khám tổng quát cho nữ</strong></li>\r\n</ul>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>HẠNG&nbsp;MỤC&nbsp;</strong></td>\r\n			<td><strong>NAM</strong></td>\r\n			<td><strong>NỮ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>KHÁM LÂM SÀNG VÀ TƯ VẤN</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1</strong></td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2</strong></td>\r\n			<td><strong>Khám nội khoa và tư vấn kết quả</strong><br />\r\n			Bác sĩ khám lâm sàng các bệnh lý và bất thường, tư vấn kết quả</td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>XÉT NGHIỆM</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3</strong></td>\r\n			<td><strong>Tổng phân tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>4</strong></td>\r\n			<td><strong>Chức năng thận ( Urê, Creatinine )</strong><br />\r\n			Tầm soát các bệnh lý về thận: thiểu năng thận, viêm cầu thận cấp, mạn, tắc mật, sỏi mật…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>5</strong></td>\r\n			<td><strong>Chức năng gan ( AST, ALT)</strong><br />\r\n			Tầm soát các bệnh về gan: Viêm gan cấp, mạn, tổn thương nhu mô gan..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>6</strong></td>\r\n			<td><strong>Men gan GGT</strong><br />\r\n			Kiểm tra men gan, tổn thương gan do bia rượu, thuốc</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>7</strong></td>\r\n			<td><strong>Đường huyết Glucose</strong><br />\r\n			Tầm soát đái tháo đường, hạ đường huyết, rối loạn chuyển hóa glucose</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>số 8</strong></td>\r\n			<td><strong>Định lượng HbA1c</strong><br />\r\n			Phản ánh tình trạng kiểm soát đường của bệnh nhân đang điều trị ĐTĐ, phát hiện sớm ĐTĐ..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>9</strong></td>\r\n			<td><strong>Định lượng Acid uric</strong><br />\r\n			Tầm soát bệnh gout</td>\r\n			<td><strong>√</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>10</strong></td>\r\n			<td><strong>Điện giải đồ ( Na, K, Cl, Ca)</strong><br />\r\n			Kiểm tra các điện giải trong cơ thể</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>11</strong></td>\r\n			<td><strong>Tổng phân tích nước tiểu 10 thông số</strong><br />\r\n			Soi cặn lắng, tầm soát các bệnh đái tháo đường, đái nhạt, bệnh gan, thận, viêm đường tiết niệu, đái máu..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>12</strong></td>\r\n			<td><strong>Bộ mỡ 4 chỉ số ( Cholesterol, Triglycerid, HDL-C, LDL-C)</strong><br />\r\n			Phát hiện hội chứng rối loạn chuyển hóa lipid, nguy cơ xơ vữa động mạch, tăng huyết áp nhồi máu cơ tim.</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>13</strong></td>\r\n			<td><strong>Chức năng tuyến giáp (FT3, FT4, TSH)</strong><br />\r\n			Đánh giá chức năng tuyến giáp</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHẨN ĐOÁN HÌNH ẢNH</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>14</strong></td>\r\n			<td><strong>Siêu âm ổ bụng</strong><br />\r\n			Tầm soát các bệnh lý sỏi thận, gan nhiễm mỡ, lách tụy, khảo sát tử cung, phần phụ, chức năng tiền liệt tuyến…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>15</strong></td>\r\n			<td><strong>Chụp X-quang ngực thẳng</strong><br />\r\n			Tầm soát lao và bệnh phổi, hình ảnh bóng tim</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>16</strong></td>\r\n			<td><strong>Điện tim thường</strong><br />\r\n			Kiểm tra nhịp tim, bệnh lý tim mạch..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>&nbsp;1.870.000</strong></td>\r\n			<td><strong>1.830.000&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHI PHÍ GÓI KHÁM SỨC KHỎE</strong></td>\r\n			<td><strong>&nbsp;1.705.000&nbsp;</strong></td>\r\n			<td><strong>1.665.000</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3><strong><em>HẠNG MỤC GÓI TẦM SOÁT SỨC KHỎE TỔNG QUÁT TOÀN DIỆN</em></strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Gói Khám sức khỏe toàn diện – Tiêu chuẩn</strong></li>\r\n	<li><strong>Gói Khám sức khỏe toàn diện – Premium Nữ</strong></li>\r\n	<li><strong>Gói Khám sức khỏe toàn diện – Premium Nam</strong></li>\r\n</ul>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>HẠNG&nbsp;MỤC&nbsp;</strong></td>\r\n			<td><strong>TIÊU CHUẨN</strong></td>\r\n			<td colspan=\"2\"><strong>PHƯƠNG CHÂU</strong><br />\r\n			<strong>PREMIUM</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>NAM&nbsp;</strong></td>\r\n			<td><strong>NỮ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>KHÁM LÂM SÀNG VÀ TƯ VẤN</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1</strong></td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2</strong></td>\r\n			<td><strong>Khám nội khoa và tư vấn kết quả</strong><br />\r\n			Bác sĩ khám lâm sàng các bệnh lý và bất thường, tư vấn kết quả</td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CẬN LÂM SÀNG</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3</strong></td>\r\n			<td><strong>Tổng phân tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>4</strong></td>\r\n			<td><strong>Chức năng thận ( Ure, Creatinine)</strong><br />\r\n			Tầm soát các bệnh lý về thận: thiểu năng thận, viêm cầu thận cấp, mạn, tắc mật, sỏi mật…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>5</strong></td>\r\n			<td><strong>Chức năng gan ( AST, ALT)</strong><br />\r\n			Tầm soát các bệnh về gan: Viêm gan cấp, mạn, tổn thương nhu mô gan..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>6</strong></td>\r\n			<td><strong>Men gan GGT</strong><br />\r\n			Kiểm tra men gan, tổn thương gan do bia rượu, thuốc</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>7</strong></td>\r\n			<td><strong>Đường huyết Glucose</strong><br />\r\n			Tầm soát đái tháo đường, hạ đường huyết, rối loạn chuyển hóa glucose</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>số 8</strong></td>\r\n			<td><strong>Định lượng HbA1c</strong><br />\r\n			Phản ánh tình trạng kiểm soát đường của bệnh nhân đang điều trị ĐTĐ, phát hiện sớm ĐTĐ…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>9</strong></td>\r\n			<td><strong>Định lượng Ferritin</strong><br />\r\n			Chẩn đoán tình trạng thiếu máu thiếu sắt, rối loạn chuyển hóa sắt</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>11</strong></td>\r\n			<td><strong>Điện giải đồ ( Na, K, Cl, Ca)</strong><br />\r\n			Kiểm tra các điện giải trong cơ thể</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>12</strong></td>\r\n			<td><strong>Tổng phân tích nước tiểu 10 thông số</strong><br />\r\n			Soi cặn lắng, tầm soát các bệnh đái tháo đường, đái nhạt, bệnh gan, thận, viêm đường tiết niệu, đái máu…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>13</strong></td>\r\n			<td><strong>Định lượng Acid uric</strong><br />\r\n			Tầm soát bệnh gout</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>14</strong></td>\r\n			<td><strong>Bộ mỡ 4 chỉ số ( Cholesterol, Triglycerid, HDL-C, LDL-C)</strong><br />\r\n			Phát hiện hội chứng rối loạn chuyển hóa lipid, nguy cơ xơ vữa động mạch, tăng huyết áp nhồi máu cơ tim.</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>15</strong></td>\r\n			<td><strong>HBsAg miễn dịch tự động</strong><br />\r\n			Tầm soát bệnh lý viêm gan siêu vi B</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>16</strong></td>\r\n			<td><strong>HbsAb định lượng</strong><br />\r\n			Kiểm tra lượng kháng thể viêm gan B</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>17</strong></td>\r\n			<td><strong>HCV test nhanh</strong><br />\r\n			Tầm soát bệnh lý viêm gan siêu vi C</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>18</strong></td>\r\n			<td><strong>Chức năng tuyến giáp (FT3, FT4, TSH)</strong><br />\r\n			Đánh giá chức năng tuyến giáp</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>19</strong></td>\r\n			<td><strong>Định lượng CA 19.9, CEA, CA 72.4)</strong><br />\r\n			Các dấu ấn sàng lọc nguy cơ ung thư đường tiêu hóa, dạ dày, đại tràng, phổi.</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>20</strong></td>\r\n			<td><strong>Định lượng Cyfra 21.1</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư phổi</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>21</strong></td>\r\n			<td><strong>Định lượng AFP</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư gan</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>22</strong></td>\r\n			<td><strong>Định lượng CA 12.5</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư buồng trứng</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>23</strong></td>\r\n			<td><strong>Định lượng CA 15.3</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư vú</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>24</strong></td>\r\n			<td><strong>Định lượng CA PSA</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư tuyến tiền liệt</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHẨN ĐOÁN HÌNH ẢNH</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>25</strong></td>\r\n			<td><strong>Siêu âm ổ bụng</strong><br />\r\n			Tầm soát các bệnh lý sỏi thận, gan nhiễm mỡ, lách tụy, khảo sát tử cung, phần phụ, chức năng tiền liệt tuyến…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>26</strong></td>\r\n			<td><strong>Siêu âm doppler màu tim</strong><br />\r\n			Tầm soát các bệnh lý tim mạch, hở van tim, rối loạn nhịp, dịch màng ngoài tim…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>27</strong></td>\r\n			<td><strong>Chụp X-quang ngực thẳng</strong><br />\r\n			Tầm soát lao và bệnh phổi, hình ảnh bóng tim</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>28</strong></td>\r\n			<td><strong>Siêu âm tuyến vú hai bên</strong><br />\r\n			Tầm soát bệnh lý tuyến vú, khối u, nang trong vùng ngực</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>29</strong></td>\r\n			<td><strong>Siêu âm tuyến giáp</strong><br />\r\n			Tầm soát bệnh lý tuyến giáp: bướu giáp đơn thuần, cường giáp, ung thư tuyến giáp</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>30</strong></td>\r\n			<td><strong>Chụp X-quang cột sống thắt lưng</strong><br />\r\n			Chần đoán bệnh lý cột sống thắt lưng: thoái hóa, chấn thương, gai xương…</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>31</strong></td>\r\n			<td><strong>Điện tim thường</strong><br />\r\n			Kiểm tra nhịp tim, bệnh lý tim mạch..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>32</strong></td>\r\n			<td><strong>Khám và nội soi tai mũi họng</strong><br />\r\n			Tầm soát bệnh lý tai mũi họng, tầm soát ung thư vòm, dây thanh, thanh quản…</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>3.040.000</strong></td>\r\n			<td><strong>5.060.000</strong></td>\r\n			<td><strong>5.575.000</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHI PHÍ ƯU ĐÃI</strong></td>\r\n			<td><strong>&nbsp;2.695.000</strong></td>\r\n			<td><strong>&nbsp;4.510.000</strong></td>\r\n			<td><strong>&nbsp;4.975.000</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3><strong>Đặc biệt:&nbsp;</strong><strong>luôn có những ưu đãi dành riêng cho khách hàng của Phương Châu:</strong></h3>\r\n\r\n<p>– Tiết kiệm&nbsp;chi phí dành cho khách hàng thân thuộc sở hữu thẻ&nbsp;<strong>Phuong Chau Care</strong></p>\r\n\r\n<p>– Tặng thẻ<strong>&nbsp;Phuong Chau Care</strong>&nbsp;sử dụng cho các dịch vụ chăm sóc sức khoẻ tại&nbsp;<strong>Phương Châu</strong>&nbsp;trong 01 năm đối với khách hàng chưa sở hữu thẻ trước đây khi sử dụng gói khám trị giá từ&nbsp;<strong>2.000.000 đồng</strong></p>\r\n\r\n<p><em><strong>*Không áp dụng đồng thời với các ưu đãi khác</strong></em></p>\r\n\r\n<p><strong>THÔNG TIN CÁC GÓI TẦM SOÁT SỨC KHOẺ:</strong><br />\r\n<strong>1</strong>.&nbsp;&nbsp;&nbsp;<strong>Gói Tầm Soát Sức Khỏe Cơ Bản:</strong>&nbsp;Tầm soát các yếu tố nguy cơ của các bệnh lý thường gặp (Viêm gan siêu vi, tăng huyết áp, đái tháo đường, các bệnh truyền nhiễm, các dấu hiệu, các rối loạn mỡ máu,…), đánh giá tình trạng chung của sức khỏe.</p>\r\n\r\n<ul>\r\n	<li>Tình trạng tim mạch, hô hấp, tiêu hóa,…</li>\r\n	<li>Phát hiện sớm và ngăn chặn các dấu hiệu rối loạn mỡ máu, viêm gan siêu vi, tăng huyết áp, đái tháo đường,…</li>\r\n</ul>\r\n\r\n<p>Dựa vào kết quả bác sĩ sẽ đưa ra các biện pháp điều trị, cách phòng ngừa các bệnh lý một cách phù hợp.</p>\r\n\r\n<p><strong>2.&nbsp; Gói Tầm Soát Sức Khỏe Tiêu Chuẩn:&nbsp;</strong>Ngoài tầm soát các bệnh lý thường gặp, gói khám được thiết kế tập trung vào các đối tượng có nhiều yếu tố nguy cơ liên quan đến các bệnh lý nguy hiểm như: Thần kinh, tim mạch, các bệnh về nội tiết:</p>\r\n\r\n<ul>\r\n	<li>Tầm soát bệnh đái tháo đường, hạ đường huyết,…</li>\r\n	<li>Tầm soát bệnh lý tim mạch, van tim, cơ tim, nhồi máu cơ tim.</li>\r\n	<li>Tầm soát tình trạng máu, rối loạn chuyển hóa sắt.</li>\r\n	<li>Tầm soát ung thư tuyến giáp, bướu cổ.</li>\r\n</ul>\r\n\r\n<p><strong>3.&nbsp;</strong>&nbsp;<strong>Gói Tầm Soát Sức Khỏe Cao Cấp Dành Cho Nam Và Nữ:&nbsp;</strong>Gói khám có sự phân chia giữa nam và nữ, giúp tầm soát các bệnh lý liên quan về giới tính. Người trên 40 tuổi được khuyến cáo nên sử dụng gói dịch vụ Premium. Gói khám tầm soát được các bệnh lý có thể dẫn đến ung thư phổ biến ( ung thư vú, tuyến tiền liệt, đại tràng, cổ tử cung,..) và tầm soát được các yếu tố suy thoái ở những người cao tuổi.</p>\r\n\r\n<ul>\r\n	<li><strong>Dành cho nam:</strong>&nbsp;Tầm soát ung tiền liệt tuyến</li>\r\n	<li><strong>Dành cho nữ:</strong>&nbsp;Tầm soát các bệnh lý về nhũ, các dấu hiệu ung thư buồng trứng, tử cung, ung thư vú,…</li>\r\n</ul>\r\n\r\n<p><strong>Để biết thêm thông tin về Gói tầm soát, quý khách hàng vui lòng liên hệ:</strong></p>\r\n\r\n<p><em>–&nbsp;Tổng Đài&nbsp;Tư vấn &amp; CSKH&nbsp;<strong>1900 54 54 66 ( Phím 2 )</strong></em></p>\r\n\r\n<p><em>– Tương tác qua Facebook BV Phương Châu Sa Đéc</em></p>\r\n\r\n<p><em>(&nbsp;<a href=\"https://www.facebook.com/phuongchausadec/\">facebook.com/bvphuongchausadec</a>&nbsp;)</em></p>\r\n\r\n<p><em>– Hoặc Đến Quầy Chăm Sóc Khách Hàng BV Phương Châu Sa Đéc để được tư vấn trực tiếp</em></p>', '1669482381_goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky.jpg', 0, 1244, 'thien', 0),
(5, '2022-11-26 02:58:27', '2022-11-26 02:58:27', 'Siêu âm theo dõi phát triển nang noãn – Ultrasound Scans', 'Thấu hiểu những khó nhọc từ khi mang thai đến ngày vượt cạn, Phương Châu Sa Đéc không ngừng đổi mới và hoàn thiện để trải nghiệm mang thai của người mẹ là một hành trình trọn vẹn. Thông qua hợp tác với Tập đoàn y tế Kishokai , Phương Châu đã tiếp nhận chuyển giao những đổi mới và kỹ thuật y khoa tiến bộ của nền y tế Nhật Bản đến với người dân Sa Đéc', '<p><a href=\"https://sadec.phuongchau.com/tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can/\"><img alt=\"tận hưởng hành trình sanh an toàn - yên tâm chờ ngày vượt cạn\" height=\"534\" sizes=\"(max-width: 1020px) 100vw, 1020px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2022/05/tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2022/05/tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can.jpg 1200w, https://sadec.phuongchau.com/wp-content/uploads/2022/05/tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can-500x262.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2022/05/tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can-800x419.jpg 800w\" width=\"1020\" /></a></p>\r\n\r\n<p>16<br />\r\nMay</p>\r\n\r\n<p>Thấu hiểu những khó nhọc từ khi mang thai đến ngày vượt cạn,&nbsp;<strong>Phương Châu Sa Đéc</strong>&nbsp;không ngừng đổi mới và hoàn thiện để trải nghiệm mang thai của người mẹ là một hành trình trọn vẹn. Thông qua hợp tác với&nbsp;<strong>Tập đoàn y tế Kishokai</strong>, Phương Châu đã tiếp nhận chuyển giao những đổi mới và kỹ thuật y khoa tiến bộ của&nbsp;<em><strong>nền y tế Nhật Bản đến với người dân Sa Đéc</strong></em>.</p>\r\n\r\n<p>Tại xứ sở mặt trời mọc, quá trình chăm sóc toàn diện cho mẹ &amp; bé được tuân thủ an toàn chặt chẽ, tỉ mỉ và quan tâm từ những điều nhỏ nhặt nhất. Các gia đình sẽ không còn lo lắng hay bỡ ngỡ để tận hưởng hành trình mang thai đầy ý nghĩa.</p>\r\n\r\n<h2><strong>Những ưu điểm trong chăm sóc mẹ và bé theo tiêu chuẩn Nhật Bản tại Phương Châu:</strong></h2>\r\n\r\n<h3><strong>1. Kết nối sớm ngay từ lúc mang thai:</strong></h3>\r\n\r\n<p>Đội ngũ tư vấn sức khỏe sẽ hỗ trợ, đồng hành kết nối cá nhân khi khách hàng thực hiện tạm ứng chi phí sinh.</p>\r\n\r\n<h3><strong>2. Sanh không đau an toàn:</strong></h3>\r\n\r\n<p>Kết hợp các liệu giảm đau giúp người mẹ giữ được sức lực và tinh thần thật tốt để chuẩn bị cho quá trình rặn sinh diễn ra thuận lợi và chu đáo hơn.</p>\r\n\r\n<h3><strong>3. Phòng Sanh Thân Thiện dành tặng cho tất cả sản phụ sanh thường tại Phương Châu:</strong></h3>\r\n\r\n<ul>\r\n	<li>Người thân đồng hành vượt cạn</li>\r\n	<li>Massage, bấm huyệt giảm đau chuyển dạ</li>\r\n	<li>Ngâm chân với nước ấm thư giãn trước sanh</li>\r\n	<li>Ngồi bóng hỗ trợ cuộc sanh thuận lợi</li>\r\n</ul>\r\n\r\n<p><strong>Xem thêm&nbsp;<a href=\"https://sadec.phuongchau.com/diem-noi-bat-khi-sanh-thuong/\">Điểm nổi bật sanh thường</a>&nbsp;tại đây</strong></p>\r\n\r\n<h3><strong>4. Chăm sóc mẹ và bé sau sanh:</strong></h3>\r\n\r\n<ul>\r\n	<li>Bé được da kề da với mẹ nhiều giờ sau sanh</li>\r\n	<li>Tiêm Vitamin K1, Lao &amp; Viêm gan B cho bé trong những ngày đầu sau sinh</li>\r\n	<li>Hướng dẫn bé bú mẹ đúng cách và tạo thói quen bú sớm</li>\r\n</ul>\r\n\r\n<p><strong>Xem thêm&nbsp;<a href=\"https://sadec.phuongchau.com/cham-soc-me-va-be-sau-sanh-tai-phuong-chau/\">chăm sóc mẹ và bé sau sanh</a>&nbsp;tại đây</strong></p>\r\n\r\n<h3><strong>4. Dịch vụ tiện ích hậu sản:</strong></h3>\r\n\r\n<ul>\r\n	<li>Massage thảo dược cho bé</li>\r\n	<li>Tắm và theo dõi cân nặng cho bé mỗi ngày</li>\r\n	<li>Suất ăn dinh dưỡng nội trú</li>\r\n	<li>Tầm soát sức khỏe sơ sinh: Kiểm tra vàng da không xâm lấn &amp; Chiếu đèn điều trị, kiểm tra thính lực sơ sinh, lấy máu gót chân tầm soát các bệnh lý sơ sinh, siêu âm tim thóp não trước xuất viện…</li>\r\n</ul>\r\n\r\n<h3><strong>5. Quà tặng xuất viện:</strong></h3>\r\n\r\n<ul>\r\n	<li>Bộ thẻ Phương Châu với nhiều ưu đãi chăm sóc sức khỏe giá trị cho mẹ &amp; bé</li>\r\n	<li>Túi tím Phương Châu cùng khung ảnh kỷ niệm cho bé</li>\r\n</ul>\r\n\r\n<p>* Không bó buộc mẹ bầu vào những khung dịch vụ sanh trọn gói sẵn có</p>\r\n\r\n<p>* Tự do chọn những dịch vụ tốt nhất, phù hợp nhất cho tình trạng sức khỏe thai kỳ của mình hoặc điều kiện kinh tế của gia đình</p>\r\n\r\n<p>Các đình có thể xem thêm&nbsp;<a href=\"https://sadec.phuongchau.com/bang-gia-sanh-tai-phuong-chau-sa-dec/\"><strong>Bảng giá sanh tại BV Phương Châu Sa Đéc</strong></a>&nbsp;trong bài viết.</p>\r\n\r\n<p>* Với mong muốn tạo điều kiện để các gia đình tiếp cận gần hơn với dịch vụ chuẩn quốc tế,&nbsp;<strong>từ nay đến 31/12/2022</strong>, các gia đình bầu sẽ&nbsp;<strong>“TIẾT KIỆM THÊM 2 TRIỆU ĐỒNG khi TẠM ỨNG CHI PHÍ SANH”</strong>&nbsp;tại&nbsp;<strong>Phương Châu Sa Đéc</strong>. Gia đình mình sẽ không còn phải lo lắng vì đã có đội tư vấn sức khỏe trong suốt quá trình mang thai và chuẩn bị những thứ cần thiết để hành trình đón bé chu đáo hơn, nhẹ nhàng hơn.</p>\r\n\r\n<p>Thông tin chi tiết về quà tặng hoặc các&nbsp;<strong>dịch vụ Sản khoa</strong>&nbsp;an toàn, các gia đình liên hệ đến&nbsp;<strong>Tổng đài&nbsp;<a href=\"tel:1900 54 54 66\">1900 54 54 66</a>&nbsp;(ấn phím 2)</strong>&nbsp;để được hỗ trợ tư vấn.</p>', '1669456707_tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can.jpg', 0, 1324, 'thien', 0),
(6, '2022-11-26 02:59:33', '2022-11-26 02:59:33', 'Phẫu thuật lấy tinh trùng từ tinh hoàn (mào tinh) – PESA', 'Không khí nôn nao đón mùa xuân mới 2022 trong sẽ trở nên ý nghĩa hơn với những món quà sức khỏe ý nghĩa được trao tay. Những món quà từ sự quan tâm và chăm sóc sức khỏe trong thời điểm này sẽ cần thiết hơn bao giờ hết.', '<p><a href=\"https://sadec.phuongchau.com/qua-tang-suc-khoe-dau-nam-2022/\"><img alt=\"quà tặng sức khỏe đầu năm 2022\" height=\"680\" sizes=\"(max-width: 1020px) 100vw, 1020px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2022/01/qua-tang-suc-khoe-dau-nam-2022.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2022/01/qua-tang-suc-khoe-dau-nam-2022.jpg 1600w, https://sadec.phuongchau.com/wp-content/uploads/2022/01/qua-tang-suc-khoe-dau-nam-2022-500x333.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2022/01/qua-tang-suc-khoe-dau-nam-2022-800x534.jpg 800w\" width=\"1020\" /></a></p>\r\n\r\n<p>24<br />\r\nJan</p>\r\n\r\n<p><strong>Không khí nôn nao đón mùa xuân mới 2022 trong sẽ trở nên ý nghĩa hơn với những món quà sức khỏe ý nghĩa được trao tay. Những món quà từ sự quan tâm và chăm sóc sức khỏe trong thời điểm này sẽ cần thiết hơn bao giờ hết.</strong></p>\r\n\r\n<p>Phiếu quà tặng là các gói khám, tầm soát sức khỏe dùng để tặng người thân, bạn bè, đối tác, khách hàng… thay cho lì xì đầu năm là một gợi ý hữu ích cho bạn, là cách bày tỏ tình yêu thương và sự quan tâm của mỗi chúng ta với những người thân yêu.</p>\r\n\r\n<h2><strong>CÁC GÓI KHÁM TẦM SOÁT SỨC KHỎE HIỆN CÓ TẠI PHƯƠNG CHÂU PHÙ HỢP CÁC NHU CẦU SỬ DỤNG HOẶC BIẾU, TẶNG DỊP ĐẦU NĂM:</strong></h2>\r\n\r\n<p>– Gói Khám Sức Khỏe Tổng Quát – Toàn Diện (gói chỉ từ&nbsp;<strong>1.190.000đ</strong>)</p>\r\n\r\n<p>– Gói Tầm Soát Ung Thư Phụ Khoa (gói chỉ từ&nbsp;<strong>1.090.000đ</strong>)</p>\r\n\r\n<p>– Gói Tầm Soát Sức Khỏe Dành Cho Trẻ Em</p>\r\n\r\n<p>– Gói Khám Tiền Hôn Nhân</p>\r\n\r\n<p>– Các Gói Khám Tầm Soát Bệnh Lý Chuyên Khoa: Tim Mạch, Huyết Áp, Gan Mật, Tiêu Hóa, Đái Tháo Đường…</p>\r\n\r\n<p>– Đặc biệt có Gói Khám Tầm Soát Sức Khỏe Hậu COVID-19 cho người lớn và trẻ em</p>\r\n\r\n<h3>*&nbsp;<strong>TẶNG KÈM THEO MỖI GÓI 01 LẦN TÁI KHÁM CHUYÊN KHOA</strong>&nbsp;cho khách hàng sử dụng gói khám</h3>\r\n\r\n<h3>*&nbsp;<strong>HẠN SỬ DỤNG</strong>: 02 tháng kể từ ngày mua gói khám</h3>\r\n\r\n<p><img alt=\"uu-dai-qua-tang-suc-khoe-dau-nam-2022\" height=\"1200\" sizes=\"(max-width: 849px) 100vw, 849px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2022/01/uu-dai-qua-tang-suc-khoe-dau-nam-2022.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2022/01/uu-dai-qua-tang-suc-khoe-dau-nam-2022.jpg 849w, https://sadec.phuongchau.com/wp-content/uploads/2022/01/uu-dai-qua-tang-suc-khoe-dau-nam-2022-500x707.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2022/01/uu-dai-qua-tang-suc-khoe-dau-nam-2022-800x1131.jpg 800w\" width=\"849\" /></p>\r\n\r\n<h3>*&nbsp;<strong>NHỮNG LƯU Ý KHI SỬ DỤNG</strong>:</h3>\r\n\r\n<p>– Phiếu quà tặng có giá trị sử dụng 1 lần và không quy đổi thành tiền mặt</p>\r\n\r\n<p>– Vui lòng mang theo phiếu quà tặng khi đến sử dụng các Gói khám tại BVQT Phương Châu</p>\r\n\r\n<p>– Có thể mua tặng phiếu quà tặng cho người thân, bạn bè, đồng nghiệp, đối tác, khách hàng…</p>\r\n\r\n<p>Để được tư vấn theo nhu cầu sử dụng, vui lòng liên hệ số điện thoại:&nbsp;<a href=\"tel:0854 466 499\"><strong>0854 466 499</strong></a>&nbsp;(Bp.Khám sức khỏe-BLVP) hoặc Zalo qua số:&nbsp;<strong>0854 466 499</strong></p>\r\n\r\n<p>Chắp cánh cho những yêu thương chạm tới trái tim, hãy trao tặng những món quà ngày đầu năm thiết thực và ý nghĩa nhất, bạn nhé!</p>\r\n\r\n<h3><strong>ĐẦU NĂM MỚI MẺ</strong></h3>\r\n\r\n<h3><strong>“LÌ XÌ” SỨC KHỎE</strong></h3>\r\n\r\n<h3><strong>CẢ NĂM ĐỀU KHỎE</strong></h3>\r\n\r\n<h3><strong>AN YÊN VUI VẺ</strong></h3>', '1669456773_qua-tang-suc-khoe-dau-nam-2022.jpg', 0, 2333, 'thien', 0),
(7, '2022-11-26 03:17:07', '2022-11-26 03:17:07', 'QUY TRÌNH THĂM KHÁM HIẾM MUỘN', 'Nước mũi của trẻ đổi màu khiến bố mẹ lo lắng không yên. Cơ chế đổi màu nước mũi có liên quan mật thiết tới những bệnh hô hấp từ đơn giản tới phức tạp như: viêm mũi dị ứng, viêm mũi bội nhiễm, dị vật mũi,… Và thông qua “màu nước mũi”, ba mẹ có thể xác định được phần nào tình trạng bệnh của trẻ để xử lí kịp thời.', '<p><a href=\"https://sadec.phuongchau.com/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con/\"><img alt=\"ba mẹ nhìn màu sắc nước mũi dự đoán sức khỏe con\" height=\"765\" sizes=\"(max-width: 1020px) 100vw, 1020px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-1067x800.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-1067x800.jpg 1067w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-533x400.jpg 533w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-768x576.jpg 768w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-1536x1152.jpg 1536w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-500x375.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-800x600.jpg 800w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con.jpg 1600w\" width=\"1020\" /></a></p>\r\n\r\n<p>23<br />\r\nNov</p>\r\n\r\n<p><em>Nước mũi của trẻ đổi màu khiến bố mẹ lo lắng không yên. Cơ chế đổi&nbsp;<strong>màu nước mũi</strong>&nbsp;có liên quan mật thiết tới những bệnh hô hấp từ đơn giản tới phức tạp như: viêm mũi dị ứng, viêm mũi bội nhiễm, dị vật mũi,… Và thông qua “màu nước mũi”, ba mẹ có thể xác định được phần nào tình trạng bệnh của trẻ để xử lí kịp thời.</em></p>\r\n\r\n<p><em>Ba mẹ nhìn&nbsp;<strong>màu sắc nước mũi</strong>&nbsp;có thể dự đoán được tình trạng sức khỏe con như thế nào? Mời Quý gia đình cùng&nbsp;<a href=\"https://sadec.phuongchau.com/\">Phương Châu</a>&nbsp;tham khảo thêm tại bài viết dưới đây nhé.</em></p>\r\n\r\n<h2><strong>Nước mũi màu trắng trong</strong></h2>\r\n\r\n<p>Trẻ chảy nước mũi màu trắng trong, loãng khá phổ biến. Lúc này, trẻ đang ở trạng thái khỏe mạnh và ba mẹ không nên lo lắng. Dịch mũi ở dạng này là cách cơ thể ngăn ngừa và loại bỏ các hạt bụi nhỏ, vi khuẩn, virus từ ngoài môi trường ra khỏi mũi, để chúng không đi vào phổi.</p>\r\n\r\n<p>Nếu thấy dịch mũi dạng nhầy, trong nhưng đặc quánh thì có thể trẻ đang gặp phải tình trạng dị ứng mãn tính. Hội chứng này làm khoang mũi bị tắc nghẽn hoặc sưng viêm niêm mạc.</p>\r\n\r\n<h2><strong>Nước mũi màu trắng đục</strong></h2>\r\n\r\n<p>Nước mũi màu trắng đục là biểu hiện nghẹt mũi do:</p>\r\n\r\n<ul>\r\n	<li>Mất nước</li>\r\n	<li>Dị ứng</li>\r\n	<li>Dấu hiệu của bệnh cảm lạnh</li>\r\n</ul>\r\n\r\n<p>Hiện tượng này xảy ra khi các tế bào lông mũi bị tổn thương, dịch nhầy sẽ giảm tiết, mất đi độ ẩm và trở nên trắng đục. Trong trường hợp này, ba mẹ nên cho trẻ:</p>\r\n\r\n<ul>\r\n	<li>Uống thật nhiều nước</li>\r\n	<li>Rửa mũi bằng dung dịch nước muối sinh lý để giúp làm ẩm niêm mạc mũi, rửa trôi những tác nhân lạ từ môi trường.</li>\r\n</ul>\r\n\r\n<h2><strong>Nước mũi màu hồng, đỏ hay nâu</strong></h2>\r\n\r\n<p>Nước mũi màu hồng, đỏ hay nâu đều là dấu hiệu cho thấy có máu trong mũi của trẻ. Điều này đồng nghĩa với việc mũi đang tổn thương do bị trầy xước niêm mạc mũi. Khô mũi hoặc ho quá nhiều cũng có thể khiến các mạch máu trong mũi dễ dàng bị vỡ, gây xuất huyết. Làm nước mũi chuyển màu. Nước mũi màu hồng, đỏ là dấu hiệu mới chảy máu. Màu nâu là máu đã bị khô lại.</p>\r\n\r\n<p>Các bác sĩ khuyến cáo nếu sau 30 phút mà máu không ngừng chảy thì cần đưa trẻ đến bệnh viện. Điều này cần đặc biệt lưu ý, nhất là đối với trẻ nhỏ.</p>\r\n\r\n<p>Nếu máu khô lại khiến nước mũi có sắc nâu. Hãy vệ sinh bằng bông sâu kèn có thấm nước muối sinh lý để loại bỏ máu khô, làm ẩm và cân bằng sinh lí niêm mạc mũi cho trẻ.</p>\r\n\r\n<h2><strong>Nước mũi màu vàng</strong></h2>\r\n\r\n<p>Nếu nước mũi có màu vàng, trẻ có thể bị cảm lạnh hoặc viêm mũi giai đoạn nặng. Khi phần niêm mạc mũi bị viêm nhiễm, các tế bào bạch cầu sẽ tập trung tại khu vực đó và lẫn vào trong dịch mũi. Từ đó, khiến màu nước mũi chảy ra là màu vàng.</p>\r\n\r\n<p>Khi trẻ mới chảy nước mũi màu vàng, lựa chọn nước muối có chứa các thành phần tự nhiên giúp kháng viêm, kháng khuẩn là an toàn hơn cả so với việc sử dụng thuốc kháng sinh. Đặc biệt với trẻ sơ sinh, các cơ quan trong chưa được hoàn thiện, dễ bị tổn thương nếu dùng thuốc không đúng cách.</p>\r\n\r\n<p>Nếu trẻ bị nghẹt mũi, chảy nước mũi màu vàng trong hơn 2 tuần, ba mẹ nên đưa trẻ đến cơ sở y tế thăm khám.</p>\r\n\r\n<h2><strong>Nước mũi màu xanh lá cây</strong></h2>\r\n\r\n<p>Khi thấy màu nước mũi ngả dần sang màu xanh lá cây thì đây là biểu hiện hệ miễn dịch của trẻ đang hoạt động “tích cực” nhằm chống lại các tác nhân gây nhiễm trùng. Dịch mũi lúc này đặc quánh cùng với xác của các tế bào bạch cầu bị tiêu diệt tạo thành dịch nhầy màu xanh.</p>\r\n\r\n<p>Nếu nước mũi chuyển xanh lá cây liên tục trong 12 ngày kèm sốt, buồn nôn, nôn. Ba mẹ nên đưa trẻ tới ngay các cơ sở y tế. Bởi, đây là biểu hiện của bệnh viêm xoang hoặc các bệnh lý nhiễm trùng.</p>\r\n\r\n<h2><strong>Nước mũi màu đen</strong></h2>\r\n\r\n<p>Nước mũi màu đen là biểu hiện của của nấm trong khoang mũi. Nấm có xu hướng bám lại ở những mô chết. Do vậy, nếu dịch mũi bị tích tụ ở những vị trí này sẽ tạo môi trường thuận lợi cho nấm phát triển và gây bệnh viêm xoang do nấm. Đây là bệnh hiếm gặp ở trẻ. Tuy nhiên, nếu thấy trẻ chảy nước mũi màu đen, ba mẹ nên đưa ngay đến bệnh viện thăm khám.</p>\r\n\r\n<p><em>Rất mong bài viết trên đã phần nào giúp ba mẹ giải đáp được màu sắc nước mũi của trẻ.</em></p>\r\n\r\n<p><strong>Ba mẹ có thể Liên hệ đến Tổng đài&nbsp;<a href=\"tel:1900545466\">1900 54 54 66 (phím 2)</a>&nbsp;hoặc liên hệ qua fanpage:&nbsp;<a href=\"https://www.facebook.com/phuongchausadec\">Bệnh Viện Phương Châu Sa Đéc</a>&nbsp;để được tư vấn thêm các thông tin cần thiết.</strong></p>', '1669457827_ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-1067x800.jpg', 0, 122, 'thien', 0),
(8, '2022-11-26 09:05:44', '2022-11-26 09:05:44', 'Thông điệp từ nhà sáng lập', 'Thông điệp từ nhà sáng lập', '<p><img alt=\"\" height=\"600\" src=\"https://phuongchau.com/FilesUpload/images/NU1_2915.jpg\" width=\"400\" /></p>\r\n\r\n<p><br />\r\n<strong>​​​</strong></p>\r\n\r\n<p><strong>BS. Nguyễn Thị Ngọc Hồ</strong></p>\r\n\r\n<p><strong>Chủ tịch Hội đồng quản trị kiêm Tổng Giám Đốc</strong></p>\r\n\r\n<p><strong>Tập Đoàn Y Tế Phương Châu</strong></p>\r\n\r\n<p>Thay mặt toàn thể Tập Đoàn Y Tế Phương Châu, xin gửi đến quý khách lời chào trân trọng, lời chúc may mắn và thành công.</p>\r\n\r\n<p>Qua hơn 20 năm công tác trong ngành y, tôi nhận thấy nhu cầu về chăm sóc sức khỏe &amp; tận hưởng dịch vụ y tế chất lượng trở thành mối quan tâm hàng đầu của mọi gia đình. Trong bối cảnh xã hội và đời sống của người dân ngày càng phát triển, hệ thống y tế Phương Châu cũng không ngừng cải tiến, hội nhập quốc tế với mục tiêu an toàn và hiện đại hóa.</p>\r\n\r\n<p>Với hành trình 10 năm phát triển, chất lượng y tế của Phương Châu dần được nâng tầm qua nhiều bước tiến về mở rộng hệ thống và hợp tác quốc tế với Nhật Bản trong lĩnh vực Sản – Nhi – IVF. Đặc biệt, thế mạnh về cung cấp các dịch vụ y tế chu sinh an toàn theo tiêu chuẩn Nhật Bản được Phương Châu tiên phong thực hiện cho người dân Đồng bằng Sông Cửu Long.&nbsp;</p>\r\n\r\n<p>Phương Châu không ngừng nỗ lực với mong muốn tiết kiệm được nhiều chi phí, thời gian, rút ngắn những cách trở địa lý để đến các trung tâm y tế lớn như trước đây cho người dân Đồng bằng.</p>\r\n\r\n<p>Đó cũng là những cam kết của chúng tôi, sẽ luôn tận tâm vì sự an toàn và chuyên nghiệp hóa dịch vụ để mang lại sự hài lòng cho mỗi trải nghiệm của khách hàng khi tin chọn Phương Châu.</p>\r\n\r\n<p>Trân trọng,</p>\r\n\r\n<p>-------------------------------------------------</p>', '1669478744_about1.jpg', 1, 1324, 'thien', 0),
(9, '2022-11-26 09:11:08', '2022-11-26 09:11:08', 'Câu chuyện về Khoa Hiếm muộn IVF Phương Châu', 'Cách nay gần 10 năm, Khoa Hiếm Muộn (IVF) Phương Châu ra đời trong bối cảnh BVQT Phương Châu trở thành BV tư nhân đầu tiên tại ĐBSCL được công nhận là cơ sở có đủ điều kiện thực hiện kỹ thuật Thụ tinh trong ống nghiệm vào tháng 6/2011', '<p dir=\"ltr\">Cách nay gần 10 năm,&nbsp;<strong>Khoa Hiếm Muộn (IVF) Phương Châu</strong>&nbsp;ra đời trong bối cảnh BVQT Phương Châu trở thành BV tư nhân đầu tiên tại ĐBSCL được công nhận là cơ sở có đủ điều kiện thực hiện kỹ thuật Thụ tinh trong ống nghiệm vào tháng 6/2011</p>\r\n\r\n<p dir=\"ltr\">Năm 2017, với sự phát triển của Nam Khoa. Khoa hiếm muộn<strong>&nbsp;IVF Phương Châu</strong>&nbsp;là nơi đầu tiên tại ĐBSCL kết hợp điều trị hiếm muộn toàn diện ở cả nam và nữ. Từ đó, quy trình khép kín và chặt chẽ trong từng giai đoạn điều trị. Tháng 6/2019, Khoa hiếm muộn IVF Phương Châu hợp tác quốc tế với IVF Japan – Tập đoàn y tế hàng đầu Nhật Bản, giúp nâng cao chất lượng về chuyên môn trong điều trị</p>\r\n\r\n<p dir=\"ltr\">Sự ra đời của Khoa hiếm muộn IVF Phương Châu đã góp phần phục vụ nhu cầu điều trị vô sinh, hiếm muộn cho khu vực ĐBSCL – nơi mà trước đó người dân chịu không ít thiệt thòi khi những ai có nhu cầu điều trị, phải lặn lội lên tận TP. HCM, ra Hà Nội hay thậm chí là ra nước ngoài.</p>\r\n\r\n<p dir=\"ltr\">Đội ngũ y bác sĩ tại Khoa hiếm muộn IVF Phương Châu là những chuyên gia được đào tạo bài bản, chính quy về TTTON. Ngoài ra, Bệnh viện thường xuyên phối hợp với các chuyên gia đầu ngành tại TP.HCM, đưa nhân sự học tập và trao đổi chuyên môn với các trung tâm trong khu vực, tham dự các hội thảo chuyên về TTTON trong và ngoài nước như Thái Lan, Singapore, Nhật Bản.</p>\r\n\r\n<p dir=\"ltr\"><strong>IVF Phương Châu</strong>&nbsp;đã được trang bị cơ sở vật chất thuộc loại hiện đại bậc nhất Việt Nam và khu vực Đông Nam Á, trong đó có:</p>\r\n\r\n<p dir=\"ltr\">1.&nbsp;<strong>Cleanroom “hệ thống phòng sạch” theo tiêu chuẩn quốc tế ISO 14644:</strong>&nbsp;đến nay IVF Phương Châu đã vận hành và duy trì thành công hệ thống phòng sạch này.</p>\r\n\r\n<p><img alt=\"\" height=\"267\" src=\"https://phuongchau.com/FilesUpload/images/z2103716095534_af062778ea39b2f815243475520bbef2.jpg\" width=\"400\" /></p>\r\n\r\n<p dir=\"ltr\">2.&nbsp;<strong>Hệ thống nuôi cấy theo dõi phôi liên tục Timelapse:</strong>&nbsp;Phôi được nuôi cấy trong đĩa cấy đặc biệt được thiết kế riêng tích hợp với tủ cấy có camera quan sát liên tục. Theo đó, phôi của mỗi khách hàng sẽ được nuôi cấy trong buồng cấy riêng biệt. Cứ mỗi 15 phút, camera sẽ chụp hình phôi để cung cấp dữ liệu cho phần mềm phân tích sự phát triển của phôi. Nhờ vậy, phôi được nuôi cấy ổn định liên tục bên trong tủ qua các giai đoạn từ thụ tinh đến phôi ngày 2, ngày 3,&nbsp; ngày 5.</p>\r\n\r\n<p><img alt=\"\" height=\"233\" src=\"https://phuongchau.com/FilesUpload/images/z2103716095530_174ac461b2ceacfa635a2fda576f6aa7.jpg\" width=\"350\" /></p>\r\n\r\n<p dir=\"ltr\">3.<strong>&nbsp;Hệ thống DATAssure:</strong>&nbsp;là hệ thống theo dõi liên tục các chỉ số chất lượng trong phòng lab bao gồm:nhiệt độ, độ ẩm, nồng độ các hợp chất hữu cơ dễ bay hơi (VOC) cho đến các thông số nhiệt độ, nồng độ CO2 / O2 của tất cả các tủ nuôi cấy phôi. Để tạo môi trường nuôi cấy tối ưu cho giao tử/phôi, việc kiểm soát nhằm hạn chế tối đa các yếu tố bất lợi ảnh hưởng đến quá trình tạo phôi là điều tối quan trọng</p>\r\n\r\n<p><img alt=\"\" height=\"233\" src=\"https://phuongchau.com/FilesUpload/images/z2548058202610_cc65da54c4c0ca857fcd0a64369142df(1).jpg\" width=\"350\" /></p>\r\n\r\n<p dir=\"ltr\">Đến nay, IVF Phương Châu trở thành trung tâm TTTON đầu tiên tại ĐBSCL thực hiện tất cả các kĩ thuật liên quan đến điều trị hiếm muộn như:</p>\r\n\r\n<p dir=\"ltr\">☑️ Khám và tư vấn hiếm muộn</p>\r\n\r\n<p dir=\"ltr\">☑️ Đánh giá sức khỏe sinh sản tiền hôn nhân</p>\r\n\r\n<p dir=\"ltr\">☑️ Xét nghiệm tinh dịch đồ - Semen Analysis</p>\r\n\r\n<p dir=\"ltr\">☑️ Siêu âm theo dõi phát triển nang noãn – Ultrasound Scans</p>\r\n\r\n<p dir=\"ltr\">☑️ Bơm tinh trùng vào buồng tử cung (IUI)</p>\r\n\r\n<p dir=\"ltr\">☑️&nbsp;Thụ tinh trong ống nghiệm (IVF)</p>\r\n\r\n<p dir=\"ltr\">☑️&nbsp;Tiêm tinh trùng vào bào tương noãn (ICSI)</p>\r\n\r\n<p dir=\"ltr\">☑️ Hỗ trợ phôi thoát màng – Assisted Hatching (AH)</p>\r\n\r\n<p dir=\"ltr\">☑️&nbsp;Chuyển phôi trữ lạnh – Frozen Embryo Transfer (FET)</p>\r\n\r\n<p dir=\"ltr\">☑️&nbsp;Trữ lạnh và lưu giữ: phôi, noãn, tinh trùng – Embryo, Oocyte, sperm Cryopreservation</p>\r\n\r\n<p dir=\"ltr\">☑️&nbsp;Phẫu thuật lấy tinh trùng từ tinh hoàn (mào tinh) – PESA</p>\r\n\r\n<p dir=\"ltr\">☑️ Sinh thiết tinh hoàn (TESE)</p>\r\n\r\n<p dir=\"ltr\">☑️&nbsp;Ứng dụng hệ thống theo dõi phôi liên tục trong thụ tinh ống nghiệm (Time Lapse)</p>\r\n\r\n<p dir=\"ltr\">☑️&nbsp;Hệ thống theo dõi liên tục các chỉ số chất lượng trong phòng lab (Hệ thống DATAssure)</p>\r\n\r\n<p dir=\"ltr\">IVF Phương Châu từng điều trị những trường hợp khó có con tự nhiên như: nam giới không xuất tinh được hoặc không có tinh trùng trong tinh dịch: phẫu thuật tìm tinh trùng và tiêm tinh trùng vào bào tương của trứng; Nữ giới: u lạc nội mạc tử cung; đa nhân xơ tử cung, vô kinh nhiều năm; phụ nữ mãn kinh; suy buồng trứng sớm… Tất cả các trường hợp đó điều thực hiện được kỹ thuật TTTON và thành công.</p>\r\n\r\n<p dir=\"ltr\">Hơn 10 năm hoạt động, Khoa Hiếm Muộn IVF Phương Châu đã tư vấn cho hơn&nbsp;<strong>31.500 cặp gia đình,&nbsp;</strong><strong>với tỷ lệ thành công khoảng 74% (là tỷ lệ thai lâm sàng với phương pháp thụ tinh trong ống nghiệm – chuyển phôi trữ lạnh của đối tượng người phụ nữ dưới 35 tuổi)</strong>. Khoa đã chào đón&nbsp;<strong>hơn 3000 em bé chào đời bằng phương pháp thụ tinh trong ống nghiệm</strong>. Tại IVF Phương Châu, với đội ngũ nhân viên y tế chuyên nghiệp, tâm huyết ứng dụng Văn hóa “Phụng sự từ tâm” &nbsp;vào văn hóa dịch vụ và tiếp nhận công nghệ chuyển giao từ nền y khoa Nhật Bản sẽ mở ra bước phát triển mới trong việc điều trị hiếm muộn cho người dân đồng bằng Sông Cửu Long. Hạnh phúc của IVF Phương Châu là&nbsp;<strong>MONG ƯỚC GẦN HƠN&nbsp;</strong>trên hành trình đồng hành cùng khách hàng đi tìm mầm xanh sự sống.</p>', '1669479068_about2.jpg', 1, 2312, 'thien', 0);
INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `short_Desc`, `content`, `image`, `categogy_id`, `views`, `name`, `status`) VALUES
(10, '2022-11-26 09:21:28', '2022-11-26 09:21:28', 'Hệ thống tập đoàn y tế Phương Châu', 'Đoàn Y Tế Phương Châu gồm 3 bệnh viện tại Cần Thơ Sa Đéc (Đồng Tháp) Sóc Trăng và không ngừng hoàn thiện “sứ mệnh chăm sóc sức khỏe sinh sản toàn diện” cùng các gia đình.', '<p><strong>TẬP ĐOÀN Y TẾ PHƯƠNG CHÂU</strong></p>\r\n\r\n<p>Tập Đoàn Y Tế Phương Châu gồm 3 bệnh viện tại&nbsp;<strong>Cần Thơ</strong>,&nbsp;<strong>Sa Đéc (Đồng Tháp)</strong>,&nbsp;<strong>Sóc Trăng</strong>&nbsp;và không ngừng hoàn thiện “<strong>sứ mệnh chăm sóc sức khỏe sinh sản toàn diện</strong>” cùng các gia đình. Hệ thống y tế Phương Châu hoạt động đầy đủ và kết nối chặt chẽ các chuyên khoa trong tầm soát sớm, chẩn đoán, điều trị bệnh:&nbsp;<strong>Sản-Phụ khoa</strong>,&nbsp;<strong>Nhi-Sơ sinh</strong>,&nbsp;<strong>Hiếm muộn</strong>,&nbsp;<strong>Nam khoa, Đa khoa</strong>,&nbsp;<strong>Thẩm mỹ</strong>…</p>\r\n\r\n<p>Qua chặng đường hơn 10 năm, Phương Châu đã nỗ lực không ngừng trong mọi hoạt động vận hành và chuyên môn, luôn cập nhật, thay đổi và vươn lên thành một Tập Đoàn Y Tế với các dịch vụ tiêu chuẩn quốc tế. Với mong muốn chuyển mình vươn ra biển lớn, Tập Đoàn Y Tế Phương Châu luôn duy trì các hợp tác quốc tế cùng đối tác y tế lớn tại Nhật Bản, Hàn Quốc…&nbsp;Từ đây, người dân ĐBSCL được thụ hưởng y tế chất lượng cao do đội ngũ bác sĩ, nhân viên y tế tận tâm, vững chuyên môn chăm sóc cùng sự hỗ trợ đắc lực của hệ thống máy móc hiện đại, liên tục cập nhật kỹ thuật cao với chi phí hợp lý.</p>\r\n\r\n<p>Hành trình hơn 10 năm qua là một cột mốc đẹp để Phương Châu nhìn lại những con số bảo chứng khi đồng hành cùng người phụ nữ và các gia đình làm tròn thiên chức, vượt cạn “mẹ tròn con vuông”</p>\r\n\r\n<p><strong>☑️&nbsp;</strong><strong>30.000 bé chào đời</strong>&nbsp;<strong>từ sự kết hợp chăm sóc chặt chẽ của Sản khoa và Nhi-Sơ sinh</strong>&nbsp;Phương Châu an toàn, khỏe mạnh “mẹ tròn con vuông”</p>\r\n\r\n<p><strong>☑️&nbsp;</strong><strong>&nbsp;3.000 em bé chào đời vuông tròn từ các kỹ thuật hỗ trợ sinh sản, điều trị hiếm muộn&nbsp;</strong>tại Phương Châu</p>\r\n\r\n<p><strong>☑️</strong><strong>&nbsp;65% tỷ lệ điều trị hiếm muộn thành công tại Khoa Hiếm muộn Phương Châu&nbsp;</strong>(IVF Phương Châu)</p>\r\n\r\n<p><strong>☑️</strong><strong>&nbsp;Kết hợp các chuyên môn kỹ thuật cao từ Đa khoa, tạo hệ sinh thái chăm sóc sức khỏe toàn diện khép kín tại Phương Châu</strong></p>\r\n\r\n<p><strong>--------------------------------------------------</strong></p>\r\n\r\n<p><strong>BỆNH VIỆN QUỐC TẾ PHƯƠNG CHÂU</strong></p>\r\n\r\n<p><img alt=\"\" height=\"345\" src=\"https://phuongchau.com/FilesUpload/images/PC_CanTho_GDL.jpg\" width=\"500\" /></p>\r\n\r\n<p>Tiên phong đi vào hoạt động với hành trình hơn 10 năm, Bệnh Viện Quốc Tế (BVQT) Phương Châu tại Cần Thơ đã dần trở thành ngôi nhà thân thiện, chuyên nghiệp, ấm áp và đáng tin cậy cho các gia đình.</p>\r\n\r\n<p>BVQT Phương Châu (Cần Thơ) sẵn sàng đồng hành với từng nhu cầu chăm sóc sức khỏe khác nhau của các gia đình với các chuyên khoa đang hoạt động:&nbsp;<strong>Sản-Phụ khoa</strong>,&nbsp;<strong>Nhi-Sơ sinh</strong>,&nbsp;<strong>Hiếm muộn</strong>,&nbsp;<strong>Nam khoa</strong>,&nbsp;<strong>Đa khoa</strong>,&nbsp;<strong>Thẩm mỹ</strong>…</p>\r\n\r\n<p>Hành trình 10 năm, BVQT Phương Châu Cần Thơ đã không ngừng nỗ lực cải tiến chất lượng chuyên môn lẫn dịch vụ:</p>\r\n\r\n<p>☑️&nbsp;Hệ thống y tế Phương Châu đang được chuẩn hóa chất lượng bệnh viện theo tiêu chuẩn quốc tế JCI, RTAC…</p>\r\n\r\n<p><strong>☑️</strong>&nbsp;Hệ thống xét nghiệm đạt chuẩn ISO 15189</p>\r\n\r\n<p><strong>☑️</strong>&nbsp;Phương Châu trong top các bệnh viện dẫn đầu cả nước về điểm số phúc tra 83 tiêu chí của Bộ Y tế về chất lượng bệnh viện nhiều năm liền</p>\r\n\r\n<p><strong>☑️</strong>&nbsp;Đạt 100% độ hài lòng người bệnh (3 năm liền);</p>\r\n\r\n<p><strong>☑️</strong>&nbsp;Là một trong số ít các bệnh viện được công nhận Bệnh Viện Thực Hành Nuôi Con Bằng Sữa Mẹ Xuất Sắc từ tổ chức Alive &amp; Thrive…</p>\r\n\r\n<p><strong>--------------------------------------------------</strong></p>\r\n\r\n<p><strong>BỆNH VIỆN PHƯƠNG CHÂU SA ĐÉC</strong></p>\r\n\r\n<p><img alt=\"\" height=\"334\" src=\"https://phuongchau.com/FilesUpload/images/PC_Sa%20%C4%90e%CC%81c_GDL.jpg\" width=\"500\" /></p>\r\n\r\n<p>Bệnh viện Phương Châu Sa Đéc thuộc hệ thống Tập đoàn Y tế Phương Châu cung cấp các dịch vụ chăm sóc sức khoẻ sinh sản toàn diện, khép kín và an toàn.</p>\r\n\r\n<p>Ngày 18-07-2018 vừa qua, Bệnh viện Phương Châu Sa Đéc chính thức đi vào hoạt động nội trú theo giấy phép của Bộ Y tế và chào đón cas sanh đầu tiên.</p>\r\n\r\n<p>Hiện tại Bệnh Viện Phương Châu Sa Đéc với các chuyên khoa mũi nhọn Sản - Phụ - Nhi, giai đoạn 1 với quy mô 50 giường bệnh, được áp dụng chất lượng an toàn và đồng bộ quy trình với toàn hệ thống y tế của Tập Đoàn Phương Châu. Với thế mạnh sẵn có từ hệ thống Tập Đoàn, những cuộc hội chẩn liên viện sẵn sàng được thực hiện kịp thời nhằm đảm bảo xử trí hiệu quả các trường hợp bệnh lý cần thiết.</p>\r\n\r\n<p><strong>☑️</strong><strong>&nbsp;Sản Phụ Khoa</strong>:&nbsp;Phương Châu Sa Đéc thực hiện các cas sanh “mẹ tròn con vuông”, dịch vụ tầm soát sàng lọc trước và sau sanh, chăm sóc sơ sinh theo tiêu chuẩn an toàn, khám và tầm soát ung thư phụ khoa theo khuyến cáo và tiêu chuẩn quốc tế…</p>\r\n\r\n<p><strong>☑️</strong><strong>&nbsp;Nhi Khoa</strong>:&nbsp;thực hiện các hoạt động khám, điều trị bệnh và tiêm ngừa an toàn chất lượng cao cho bé</p>\r\n\r\n<p><strong>☑️</strong>&nbsp;<strong>Đa khoa</strong>: thực hiện các dịch vụ chẩn đoán và điều trị kỹ thuật cao như: nội khoa, ngoại khoa, tai mũi họng, mạch máu, trĩ, nội soi tiêu hoá</p>\r\n\r\n<p>Ngoài hệ thống cơ sở hạ tầng và trang thiết bị hiện đại, Bệnh Viện Phương Châu Sa Đéc quy tụ đội ngũ các bác sĩ và điều dưỡng trình độ chuyên môn cao, giàu kinh nghiệm đến từ Tập Đoàn Y tế Phương Châu.</p>\r\n\r\n<p>Bên cạnh uy tín, chuyên môn sẵn có và thông qua dự án hợp tác quốc tế với Tập Đoàn Y Tế Kisokai Nhật Bản, đội ngũ nhân viên tại Phương Châu Sa Đéc sẽ liên tục được cập nhật kiến thức y tế mới nhất, bám sát với phát triển của nền y học thế giới. Đặc biệt, Bệnh Viện Phương Châu Sa Đéc vận hành ngay từ đầu theo các tiêu chuẩn quản lý nghiêm ngặt nhằm đảm bảo chất lượng an toàn theo tiêu chuẩn quốc tế.</p>\r\n\r\n<p><strong>--------------------------------------------------</strong></p>\r\n\r\n<p><strong>BỆNH VIỆN QUỐC TẾ PHƯƠNG CHÂU SÓC TRĂNG</strong></p>\r\n\r\n<p><img alt=\"\" height=\"426\" src=\"https://phuongchau.com/FilesUpload/images/Phuong%20Chau%20Soc%20Trang.jpg\" width=\"600\" /></p>\r\n\r\n<p>BVQT Phương Châu Sóc Trăng hoạt động với các chuyên khoa:&nbsp;<strong>Sản - Phụ khoa,&nbsp;</strong><strong>Nhi - Sơ sinh,&nbsp;</strong><strong>Đa khoa</strong>&nbsp;với sự hợp tác cùng Tập Đoàn Y Tế Kishokai - Nhật Bản. Bên cạnh chuyên khoa thế mạnh là&nbsp;<strong>Sản – Nhi Sơ sinh an toàn, b</strong>ệnh viện còn phát triển&nbsp;<strong>Đa khoa kỹ thuật cao</strong>&nbsp;với đầy đủ các chuyên khoa&nbsp;cùng đội ngũ y bác sĩ giàu kinh nghiệm, tay nghề cao:</p>\r\n\r\n<p><strong>☑️</strong><strong>&nbsp;Nội - Ngoại tổng quát</strong></p>\r\n\r\n<p><strong>☑️</strong><strong>&nbsp;Tiêu hóa</strong></p>\r\n\r\n<p><strong>☑️&nbsp;</strong><strong>Chấn thương chỉnh hình</strong></p>\r\n\r\n<p><strong>☑️&nbsp;</strong><strong>Nội tiết</strong>-<strong>Tim mạch</strong></p>\r\n\r\n<p><strong>☑️&nbsp;</strong><strong>Gan-Mật-Tụy</strong></p>\r\n\r\n<p><strong>☑️</strong><strong>&nbsp;Tai-Mũi-Họng</strong>,</p>\r\n\r\n<p><strong>☑️</strong><strong>&nbsp;Mắt</strong></p>\r\n\r\n<p><strong>☑️</strong><strong>&nbsp;Răng-Hàm-Mặt</strong></p>\r\n\r\n<p>Ngoài góp phần giảm tải cho các bệnh viện tuyến trên, sự ra đời của Phương Châu Sóc Trăng còn đáp lại nhu cầu chính đáng trong thụ hưởng dịch vụ y tế an toàn chất lượng cao, tiết kiệm thời gian, chi phí đi lại cho người dân các tỉnh thành trong và ngoài vùng.</p>\r\n\r\n<p>Tất cả các tiêu chuẩn chất lượng bệnh viện quốc tế JCI được vận dụng cho quản lý điều hành và chuyên môn nhằm đảm bảo an toàn, chuyên nghiệp tại Phương Châu Sóc Trăng cũng như tiếp tục mở rộng và tăng cường hợp tác với Tập Đoàn Y Tế Kishokai - Tập Đoàn Y Tế tư nhân hàng đầu Nhật Bản hoạt động lĩnh vực Sản-Nhi.</p>\r\n\r\n<p>* Khởi công vào ngày 6/7/2019, BVQT Phương Châu Sóc Trăng tại địa chỉ số 373 Phú Lợi, phường 2, TP Sóc Trăng. Bệnh viện tọa lạc tại&nbsp;<strong>vị trí trên quốc lộ 1A</strong>, nơi giao thoa thuận tiện đi lại giữa Sóc Trăng, Bạc Liêu, Cà Mau và các tỉnh, thành lân cận.</p>\r\n\r\n<p>Kiến trúc khối nhà được thiết kế đồng bộ hóa theo lối nhận dạng thương hiệu từ Tập Đoàn được thiết kế bởi các Kiến trúc sư Hàn Quốc, có&nbsp;<strong>quy mô 7 tầng</strong>,&nbsp;<strong>vốn đầu tư hơn 25 triệu USD</strong>&nbsp;trên&nbsp;<strong>diện tích hơn 7.400 m<sup>2</sup></strong>,&nbsp;<strong>công suất thiết kế 150 giường với các tiện ích đạt tiêu chuẩn quốc tế,&nbsp;</strong>tuân thủ các quy định nghiêm ngặt về quản lý xây dựng theo TCXDVN 365-2007 của Bộ Xây Dựng.</p>\r\n\r\n<p>Hơn thế nữa, kết hợp cùng với kinh nghiệm vận hành sẵn có từ hệ thống và áp dụng các tiêu chuẩn theo JCI vào thiết kế xây dựng nên Phương Châu Sóc Trăng đã tối ưu hóa dòng chảy lưu thông từ khâu tiếp nhận cho đến các quy trình khám chữa bệnh nhằm tạo cho khách hàng và người bệnh có cảm giác thoải mái an toàn và thân thiện.</p>', '1669479688_ABOOUT3.jpg', 1, 21332, 'thien', 0),
(11, '2022-11-26 09:23:55', '2022-11-26 09:23:55', 'Sứ mệnh - Tầm nhìn - Giá trị cốt lõi - Slogan Mẹ Tròn Con Vuông', 'Chăm sóc sức khỏe sinh sản toàn diện cộng đồng chuẩn mực Quốc tế với chi phí hợp lý', '<p><strong>☑️&nbsp;SỨ MỆNH</strong></p>\r\n\r\n<p>Chăm sóc sức khỏe sinh sản toàn diện cộng đồng chuẩn mực Quốc tế với chi phí hợp lý</p>\r\n\r\n<p><strong>☑️&nbsp;TẦM NHÌN</strong></p>\r\n\r\n<p>Là trung tâm xuất sắc cung cấp dịch vụ chăm sóc sức khoẻ sinh sản toàn diện và cao cấp hàng đầu Đồng Bằng Sông Cửu Long</p>\r\n\r\n<p><strong>☑️&nbsp;GIÁ TRỊ CỐT LÕI</strong></p>\r\n\r\n<p><strong>⭐&nbsp;An toàn</strong></p>\r\n\r\n<p>Tất cả hoạt động vì mục tiêu cuối cùng là đảm bảo an toàn cho khách hàng.</p>\r\n\r\n<p><strong>⭐Nhân bản</strong></p>\r\n\r\n<p>Đặt khách hàng làm trung tâm của mọi hoạt động. Phát triển nguồn nhân lực có tâm và có tầm.</p>\r\n\r\n<p><strong>⭐&nbsp;Tiên phong</strong></p>\r\n\r\n<p>Đi đầu trong áp dụng phương pháp chăm sóc &amp; điều trị tiên tiến.</p>\r\n\r\n<p><strong>⭐ Chuyên nghiệp</strong></p>\r\n\r\n<p>Chăm sóc sức khỏe chuẩn mực quốc tế với đội ngũ nhân viên chuyên nghiệp.</p>\r\n\r\n<p><strong>⭐ Tinh tế</strong><br />\r\nMang đến trải nghiệm dịch vụ hoàn hảo từ thấu cảm<strong>&nbsp;</strong>nhu cầu khách hàng theo văn hóa Omotenashi (Nhật Bản).</p>\r\n\r\n<p><strong>⭐&nbsp;Hợp tác</strong></p>\r\n\r\n<p>Mở rộng hợp tác để cùng phát triển và không ngừng nâng cao chất lượng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>☑️&nbsp;&nbsp;SLOGAN&nbsp;“MẸ TRÒN CON VUÔNG” CỦA BVQT PHƯƠNG CHÂU</strong></p>\r\n\r\n<p><img alt=\"\" height=\"247\" src=\"https://phuongchau.com/FilesUpload/images/Phuong%20Chau%20-%20PNG(1).png\" width=\"251\" /></p>\r\n\r\n<p>Một bệnh viện với chuyên khoa mũi nhọn Sản – Nhi thì trọng trách đặt lên vai các nhà y khoa là bảo vệ an toàn không chỉ cho một&nbsp;mà là cả hai&nbsp;mẹ - con. Do vậy, sự chú trọng nâng cao về tay nghề, năng lực chuyên môn&nbsp;hay đầu tư cơ sở thiết bị, kỹ thuật y tế luôn được Phương Châu cân bằng, đảm bảo hỗ trợ tốt cho cả hai chuyên khoa Sản và Nhi-Sơ sinh. Không chỉ dừng lại ở hai&nbsp;chuyên khoa Sản – Nhi, mà tất cả các chuyên khoa còn lại gồm: Hiếm muộn, Phụ khoa, Nam khoa, Đa khoa, Thẩm mỹ… đều tập trung hỗ trợ, phối hợp chặt chẽ để hoàn thiện chuỗi giá trị chăm sóc sức khỏe sinh sản toàn diện cho người dân Đồng bằng Sông Cửu Long.</p>\r\n\r\n<p>Với nhiều ý nghĩa và hoài bão vì hạnh phúc thiêng liêng của người phụ nữ và các gia đình, hơn 10&nbsp;năm qua, Phương Châu miệt mài và tận tâm với từng cuộc vượt cạn&nbsp;<strong>“MẸ TRÒN CON VUÔNG”</strong>. Đó cũng là khẩu hiệu, mục tiêu, lý tưởng và giá trị ý nghĩa theo xuyên suốt từng nỗ lực của tập thể&nbsp;BVQT Phương Châu.</p>\r\n\r\n<p>Ý nghĩa&nbsp;<strong>“vuông - tròn”</strong>&nbsp;là những giá trị và là thước đo để các nhà Sản khoa Phương Châu nỗ lực không ngừng. Bởi cuộc vượt cạn nào cũng có khả năng đối mặt với nhiều rủi ro. Vậy nên, hơn hết, điều mà tất cả các gia đình mong mỏi trước mắt là sự an toàn cho mẹ và con. Rồi sau đó là đến những giá trị cao đẹp hơn về chân-thiện-mỹ, hướng đến sự hoàn thiện, viên mãn và đong đầy từ nền tảng vuông – tròn vô giá. Để cùng hợp tác tốt và làm được điều đó, đòi hỏi một niềm tin rất lớn giữa khách hàng và Phương Châu đặt vào nhau, đồng hành cùng nhau và giao phó sinh mệnh cho nhau.</p>\r\n\r\n<p>Do vậy, cái tên&nbsp;<strong>Phương Châu</strong>&nbsp;cũng với ý nghĩa&nbsp;<strong>Vuông – Tròn</strong>&nbsp;được đặt vào trong chính khẩu hiệu “<strong>mẹ tròn con vuông</strong>” được tập thể hơn 1.000 con người đang gìn giữ và hoàn thiện. Đó không chỉ là tâm huyết của nhà sáng lập, mà còn được Ban Giám Đốc tiếp nối, truyền cảm hứng về lòng yêu trẻ - sự trân trọng, nâng niu những người mẹ/người phụ nữ cho toàn thể thành viên ltrong ngôi nhà Phương Châu ấm áp này.</p>', '1669479835_ABOUT4.png', 1, 2111, 'thien', 0),
(12, '2022-11-26 09:26:03', '2022-11-26 09:26:03', 'Sơ đồ tổ chức', 'Sơ đồ tổ chức Tập đoàn Y tế Phương Châu', '<p><img alt=\"\" height=\"501\" src=\"https://phuongchau.com/FilesUpload/images/so%20do%20so%20tay%20JCI-17.jpg\" width=\"850\" /></p>\r\n\r\n<p><img alt=\"\" height=\"626\" src=\"https://phuongchau.com/FilesUpload/images/S%C6%A0%20%C4%90%E1%BB%92%20T%E1%BB%94%20CH%E1%BB%A8C%20S%C4%90.jpg\" width=\"850\" /></p>\r\n\r\n<p><img alt=\"\" height=\"1200\" src=\"https://phuongchau.com/FilesUpload/images/1(16).png\" width=\"829\" /></p>', '1669479963_about5.jpg', 1, 2423, 'thien', 0),
(13, '2022-11-26 09:31:26', '2022-11-26 09:31:26', 'Trách nhiệm với xã hội của Phương Châu', '<p>Trách nhiệm của một bệnh viện là không ngừng hoàn thiện để nâng cao chất lượng chăm sức khỏe cho người dân. Trong hành trình 10 năm qua, Tập đoàn Y tế Phương Châu không ngừng cố gắng và xem trọng trách nhiệm của mình đối với xã hội và môi trường.</p>', '<p>Trách nhiệm của một bệnh viện là không ngừng hoàn thiện để nâng cao chất lượng chăm sức khỏe cho người dân. Trong hành trình 10 năm qua, Tập đoàn Y tế Phương Châu không ngừng cố gắng và xem trọng trách nhiệm của mình đối với xã hội và môi trường.</p>\r\n\r\n<p><strong>1. TRÁCH NHIỆM Y TẾ</strong></p>\r\n\r\n<p>Trách nhiệm y tế của bệnh viện chính là không ngừng nâng cao chất lượng khám chữa bệnh để chăm lo cho sức khỏe người dân và góp phần vào sự phát triển y tế địa phương.</p>\r\n\r\n<p>Không dùng lại ở đó, Phương Châu luôn nỗ lực hướng đến những tiêu chuẩn mang tầm quốc tế. &nbsp;</p>\r\n\r\n<p><strong>Tiêu chuẩn quốc tế JCI (Joint Commission International)</strong></p>\r\n\r\n<p>Tất cả những mục tiêu của JCI đều hướng đến giá trị lấy người bệnh làm trung tâm nên toàn bộ các tiêu chuẩn, mọi hoạt động phải hoàn toàn thống nhất theo một quy chuẩn.</p>\r\n\r\n<p><img alt=\"\" height=\"573\" src=\"https://phuongchau.com/FilesUpload/images/26685885_1505823916180556_8581159056304111308_o.jpg\" width=\"763\" /></p>\r\n\r\n<p><em>Bác sĩ và Ban quản lý chất lượng Bệnh viện quốc tế Phương Châu tham quan học hỏi ứng dụng JCI tại Bệnh viện Hạnh Phúc</em></p>\r\n\r\n<p>JCI tập trung vào:</p>\r\n\r\n<p>- An toàn người bệnh: 6 mục tiêu</p>\r\n\r\n<p><img alt=\"\" height=\"593\" src=\"https://phuongchau.com/FilesUpload/images/7d4b1a188eb840e619a9.jpg\" width=\"725\" /></p>\r\n\r\n<p><em>6 mục tiêu quốc tế về an toàn người bệnh theo tiêu chuẩn JCI</em></p>\r\n\r\n<p>- Chất lượng dịch vụ y tế: bao gồm chất lượng khám chữa bệnh, chất lượng cơ sở hạ tầng, trang thiết bị,…</p>\r\n\r\n<p>- Hệ thống quản lý chất lượng bệnh viện: trách nhiệm của Hội đồng quản lý chất lượng, các Trưởng chương JCI, cán bộ quản lý chất lượng</p>\r\n\r\n<p>Các lợi ích mà JCI mang đến cho người bệnh:Đảm bảo các quy trình chất lượng chặt chẽ: kiểm soát&nbsp;nhiễm khuẩn, quy trình khám chữa bệnh thống nhất trong cả tập đoàn.</p>\r\n\r\n<p>- Chất lượng khám chữa bệnh ngày một nâng cao: tạo dòng chảy thông suốt từ khâu tiếp nhận đến khi xuất viện người bệnh cảm thấy thoải mái&nbsp;và tin tưởng.</p>\r\n\r\n<p>- Chất lượng quản lý hệ thống ngày càng hiệu quả: toàn bộ nhân viên thông suốt các quy trình, hạn chế xảy ra các sự cố về y tế.</p>\r\n\r\n<p>- Độ hài lòng người bệnh và nhân viên y tế được duy trì: đạt 100% độ hài lòng cả 3 nhóm người bệnh ngoại trú, nội trú và nhân viên y tế</p>\r\n\r\n<p><img alt=\"\" height=\"574\" src=\"https://phuongchau.com/FilesUpload/images/done%2005(3).jpg\" width=\"720\" /></p>\r\n\r\n<p><em>Tập huấn JCI tại Cộng hòa Séc</em></p>\r\n\r\n<p><img alt=\"\" height=\"533\" src=\"https://phuongchau.com/FilesUpload/images/99142046_2964617053634561_7990580839375175680_n.jpg\" width=\"711\" /></p>\r\n\r\n<p><em>Nhận dạng đúng người bệnh theo tiêu chuẩn JCI</em></p>\r\n\r\n<p><img alt=\"\" height=\"535\" src=\"https://phuongchau.com/FilesUpload/images/80262633_2562028950560042_4663907069785538560_n.jpg\" width=\"712\" /></p>\r\n\r\n<p><em>Quy trình 1 phút timeout trước phẫu thuật theo tiêu chuẩn JCI</em></p>\r\n\r\n<p><img alt=\"\" height=\"531\" src=\"https://phuongchau.com/FilesUpload/images/66494341_2247592152003725_1831111482188759040_n.png\" width=\"707\" /></p>\r\n\r\n<p><em>Tập huấn phòng ngừa và kiểm soát nhiễm khuẩn</em></p>\r\n\r\n<p><strong>Tiếp cận nền y tế Nhật Bản</strong></p>\r\n\r\n<p>Thông qua việc hợp tác với tập đoàn y tế Kishokai trong lĩnh vực Sản – Nhi, lần lượt đưa các quy trình vận hành theo Tiêu chuẩn Nhật Bản:</p>\r\n\r\n<p>- Theo dõi chăm sóc thai phụ sanh ngả âm đạo</p>\r\n\r\n<p>- Quản lý sanh không đau đúng cách</p>\r\n\r\n<p>- Đọc, theo dõi CTG</p>\r\n\r\n<p>- Hồi sức sơ sinh</p>\r\n\r\n<p>- Chăm sóc sản phụ sau sanh</p>\r\n\r\n<p>Ngoài Sản – Nhi, Phương Châu còn mở rộng hợp tác Việt – Nhật và nhận chuyển giao kỹ thuật Trung tâm hỗ trợ sinh Sản – IVF, nâng cao hiệu quả hơn trong điều trị vô sinh, hiếm muộn.</p>\r\n\r\n<p><img alt=\"\" height=\"513\" src=\"https://phuongchau.com/FilesUpload/images/01(1)(1).jpeg\" width=\"744\" /></p>\r\n\r\n<p><em>Lễ kí kết hợp tác y tế toàn diện giữa BVQT Phương Châu &amp; Tập đoàn y tế Kishokai Nhật Bản</em></p>\r\n\r\n<p><img alt=\"\" height=\"489\" src=\"https://phuongchau.com/FilesUpload/images/64929968_2211152655647675_30732960609075200_n.jpg\" width=\"734\" /></p>\r\n\r\n<p><em>Hợp tác Trung tâm hỗ trợ sinh sản IVF Phương Châu và Tập đoàn Y tế Kishokai Nhật Bản</em></p>\r\n\r\n<p><img alt=\"\" height=\"493\" src=\"https://phuongchau.com/FilesUpload/images/x6.jpg\" width=\"738\" /></p>\r\n\r\n<p><em>Trang thiết bị hiện đại tại Trung tâm Hỗ trợ sinh sản – IVF Phương Châu</em></p>\r\n\r\n<p><img alt=\"\" height=\"482\" src=\"https://phuongchau.com/FilesUpload/images/1000%20be%20ivf.jpg\" width=\"722\" /></p>\r\n\r\n<p><em>Gala Chào mừng 1000 bé ra đời từ phương pháp thụ tinh trong ống nghiệm</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. TIẾP CẬN CỘNG ĐỒNG</strong></p>\r\n\r\n<p><strong>Hoạt động khám bệnh cho người dân tại vùng sâu, vùng xa</strong></p>\r\n\r\n<p>Không chỉ chăm sóc cho người bệnh tại bệnh viện, Phương Châu đã và đang tiếp cận gần hơn với người dân ở các vùng còn thiếu thốn điều kiện hỗ trợ về y tế như Đồng Tháp, Sóc Trăng, Bạc Liêu, Hậu Giang, Vĩnh Long,...</p>\r\n\r\n<p>Một số hình ảnh hoạt động khám bệnh thiện nguyện của Phương Châu:</p>\r\n\r\n<p><img alt=\"\" height=\"624\" src=\"https://phuongchau.com/FilesUpload/images/2(41).jpg\" width=\"719\" /></p>\r\n\r\n<p><img alt=\"\" height=\"532\" src=\"https://phuongchau.com/FilesUpload/images/3(21).jpg\" width=\"709\" /></p>\r\n\r\n<p><img alt=\"\" height=\"536\" src=\"https://phuongchau.com/FilesUpload/images/4(25).jpg\" width=\"714\" /></p>\r\n\r\n<p><img alt=\"\" height=\"537\" src=\"https://phuongchau.com/FilesUpload/images/kb%20hau%20giang.jpg\" width=\"717\" /></p>\r\n\r\n<p>Nỗ lực tiếp cận gần hơn nữa để người dân không phải tốn nhiều thời gian, chi phí do cách trở địa lý mà vẫn được thụ hưởng dịch vụ y tế chất lượng cao, Phương Châu đã khánh thành thêm 2 chi nhánh mới:</p>\r\n\r\n<p><img alt=\"\" height=\"481\" src=\"https://phuongchau.com/FilesUpload/images/PC_Sa%20%C4%90e%CC%81c_GDL(2).jpg\" width=\"721\" /></p>\r\n\r\n<p><em>Bệnh viện quốc tế Phương Châu Sa Đéc khánh thành năm 2018</em></p>\r\n\r\n<p><img alt=\"\" height=\"638\" src=\"https://phuongchau.com/FilesUpload/images/Phuong%20Chau%20Soc%20Trang(1).jpg\" width=\"743\" /></p>\r\n\r\n<p><em>Toàn cảnh Bệnh viện quốc tế Phương Châu Sóc Trăng khánh thành năm 2021</em></p>\r\n\r\n<p><strong>Mở thêm các chuyên khoa</strong></p>\r\n\r\n<p>Ngoài thế mạnh Sản – Nhi – Phụ khoa, hệ thống tập đoàn y tế Phương Châu có đầy đủ các chuyên khoa khác để chăm sóc toàn diện sức khỏe cộng đồng như Đa khoa, Hiếm muộn, Thẩm mỹ và Nam khoa.</p>\r\n\r\n<p><img alt=\"\" height=\"619\" src=\"https://phuongchau.com/FilesUpload/images/da%20khoa.jpg\" width=\"619\" /></p>\r\n\r\n<p><em>Phương Châu đầy đủ các chuyên khoa chăm sóc toàn diện cho cả gia đình</em></p>\r\n\r\n<p><strong>Tiêm chủng vaccine covid-19 cho cộng đồng</strong></p>\r\n\r\n<p>Trong giai đoạn đại dịch covid-19, được sự phân công và chỉ đạo của Sở y tế và thành phố, Phương Châu thực hiện nhiều chiến dịch tiêm ngừa covid cho cộng đồng tại địa bàn Tp. Cần Thơ.</p>\r\n\r\n<p>Kết quả là hơn 100.000 mũi vaccine ngừa covid-19 đã được tiêm an toàn cho người dân, trong đó có các đối tượng cấp bách cần được quan tâm hàng đầu: phụ nữ mang thai, phụ nữ cho con bú, người cao tuổi, người có nhiều bệnh nền.</p>\r\n\r\n<p><img alt=\"\" height=\"428\" src=\"https://phuongchau.com/FilesUpload/images/232739178_4196402720455982_320681757487752154_n.jpg\" width=\"727\" /></p>\r\n\r\n<p><em>Điểm tiêm ngừa covid-19 cho cộng đồng tại trường THCS An Khánh, Cần Thơ</em></p>\r\n\r\n<p>&nbsp;&nbsp;+&nbsp;Quy trình tiêm ngừa an toàn, nhanh chóng:</p>\r\n\r\n<p><img alt=\"\" height=\"557\" src=\"https://phuongchau.com/FilesUpload/images/232742006_4196402463789341_3697409836125539763_n.jpg\" width=\"742\" /></p>\r\n\r\n<p><img alt=\"\" height=\"574\" src=\"https://phuongchau.com/FilesUpload/images/232096041_4196402350456019_7963450491093463271_n.jpg\" width=\"737\" /></p>\r\n\r\n<p>+ Tiêm ngừa vắc xin covid-19 cho đối tượng phụ nữ có thai và người cao tuổi:</p>\r\n\r\n<p><img alt=\"\" height=\"556\" src=\"https://phuongchau.com/FilesUpload/images/236821448_4228154127280841_5494944172459471912_n.jpg\" width=\"741\" /></p>\r\n\r\n<p><img alt=\"\" height=\"559\" src=\"https://phuongchau.com/FilesUpload/images/237139755_4247040738725513_2499683878789707350_n.jpg\" width=\"745\" /></p>\r\n\r\n<p><strong>Ngày hội việc làm</strong></p>\r\n\r\n<p>Hàng năm Tập đoàn Y tế Phương Châu đều tham gia hoạt động ngày hội việc làm tại Cần Thơ và các tỉnh lân cận để tạo cơ hội việc làm đến cho sinh viên của các trường đại học và tạo nguồn nhân lực tiềm năng cho hội nhập phát triển.</p>\r\n\r\n<p>+ Ngày hội việc làm tại Trường Đại học Cần Thơ:</p>\r\n\r\n<p><img alt=\"\" height=\"566\" src=\"https://phuongchau.com/FilesUpload/images/277367976_4961988647230715_5570863276382604871_n.jpg\" width=\"754\" /></p>\r\n\r\n<p><img alt=\"\" height=\"558\" src=\"https://phuongchau.com/FilesUpload/images/277223870_4961987923897454_7391834520736896237_n.jpg\" width=\"743\" /></p>\r\n\r\n<p>+ Buổi tuyển dụng nhân sự ngày hội việc làm tại Cà Mau:</p>\r\n\r\n<p><img alt=\"\" height=\"489\" src=\"https://phuongchau.com/FilesUpload/images/6(9).jpg\" width=\"734\" /></p>\r\n\r\n<p><img alt=\"\" height=\"503\" src=\"https://phuongchau.com/FilesUpload/images/7.jpg\" width=\"741\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. PHÁT TRIỂN BỀN VỮNG</strong></p>\r\n\r\n<p>Tại Phương Châu, chúng tôi luôn quan tâm đến việc sử dụng các nguồn tài nguyên một cách hiệu quả, tiết kiệm và bền vững.</p>\r\n\r\n<p>- Tiết kiệm tài nguyên điện nước bằng cách giảm thiểu thời gian máy lạnh, quy định thời gian sử dụng đèn chiếu sáng, phát triển năng lượng mặt trời,…</p>\r\n\r\n<p>- Sử dụng hợp lý các loại giấy, văn phòng phẩm,…</p>\r\n\r\n<p>- Tái chế, phân loại rác thải, thức ăn thừa</p>\r\n\r\n<p>- Tạo không gian cây xanh trong khuôn viên bệnh viện, nơi làm việc,…</p>\r\n\r\n<p><img alt=\"\" height=\"563\" src=\"https://phuongchau.com/FilesUpload/images/x5.jpg\" width=\"750\" /></p>\r\n\r\n<p><em>Phát triển năng lượng mặt trời thân thiện với môi trường</em></p>\r\n\r\n<p><img alt=\"\" height=\"557\" src=\"https://phuongchau.com/FilesUpload/images/x4.jpg\" width=\"742\" /></p>\r\n\r\n<p>&nbsp;<em>Thiết kế kiến trúc tận dụng tối đa ánh sáng trời</em></p>\r\n\r\n<p><img alt=\"\" height=\"544\" src=\"https://phuongchau.com/FilesUpload/images/x3.jpg\" width=\"726\" /></p>\r\n\r\n<p>&nbsp;<em>Quy định phân loại chất thải</em></p>\r\n\r\n<p><img alt=\"\" height=\"562\" src=\"https://phuongchau.com/FilesUpload/images/x2.jpg\" width=\"749\" /></p>\r\n\r\n<p>&nbsp;<em>Cây xanh tại nơi làm việc giúp không gian thông thoáng hơn</em></p>\r\n\r\n<p><img alt=\"\" height=\"451\" src=\"https://phuongchau.com/FilesUpload/images/x1.jpg\" width=\"740\" /></p>\r\n\r\n<p><em>Toàn cảnh không gian xanh tại BVQT Phương Châu</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. ĐẠO ĐỨC NGÀNH Y</strong></p>\r\n\r\n<p>Bảo đảm quyền riêng tư của khách hàng: đảm bảo bảo mật thông tin hồ sơ bệnh án, không chụp ảnh, quay phim trong khuôn viên bệnh viện khi không cần thiết, giảm thiểu tiếng ồn khu vực nội trú.</p>\r\n\r\n<p>Đạo đức của người làm ngành Y: Tận tâm với sản phụ và người bệnh, không bỏ rơi người bệnh trong bất kỳ trường hợp nào, kiên quyết nói không với tiêu cực, tham nhũng</p>\r\n\r\n<p><img alt=\"\" height=\"514\" src=\"https://phuongchau.com/FilesUpload/images/Kham%20benh.JPG\" width=\"767\" /></p>\r\n\r\n<p><em>Tận tâm với sản phụ và người bệnh, trong bất kì trường hợp nào không bỏ rơi người bệnh</em></p>\r\n\r\n<p>Văn hóa ứng xử nhân viên y tế - người bệnh: chào đón người bệnh với tất cả lòng nhiệt thành, lắng nghe để thấu hiểu và tận tâm xem người bệnh như người thân.</p>\r\n\r\n<p><img alt=\"\" height=\"503\" src=\"https://phuongchau.com/FilesUpload/images/40414461_1780823802013898_6141436640641417216_n.jpg\" width=\"754\" /></p>\r\n\r\n<p><em>Ứng xử là yếu tố quan trọng để tạo lòng tin cho người bệnh, nhất là các em nhỏ</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5. PHỤNG SỰ TỪ TÂM</strong></p>\r\n\r\n<p>Văn hóa Nhật Bản Omotenashi mang đến cho Phương Châu những cách thức để phục vụ người bệnh bằng tất cả sự chân thành – Phụng sự từ tâm.</p>\r\n\r\n<p>Tại Phương Châu, đội ngũ y tế luôn chủ động lắng nghe, tìm hiểu nhu cầu của người bệnh và tận tình giải thích để người bệnh hiểu và an tâm điều trị</p>\r\n\r\n<p>Đồng hành với thai phụ và gia đình trong suốt cuộc hành trình mang thai, phối hợp chặt chẽ để thai phụ vượt cạn mẹ tròn con vuông.</p>\r\n\r\n<p><img alt=\"\" height=\"540\" src=\"https://phuongchau.com/FilesUpload/images/BS%20H%E1%BA%A1nh%20Nh%C3%A2n%20t%C6%B0%20v%E1%BA%A5n%20Thalassemia%20(b%E1%BA%A7u%20Nh%C6%B0)%2001.jpg\" width=\"714\" /></p>\r\n\r\n<p><em>Chủ động lắng nghe để hiểu các vấn đề của người bệnh</em></p>\r\n\r\n<p><img alt=\"\" height=\"505\" src=\"https://phuongchau.com/FilesUpload/images/lang%20nghe1(1).jpg\" width=\"712\" /></p>\r\n\r\n<p><em>Tư vấn cho người bệnh để họ hiểu được vấn đề sức khỏe của mình</em></p>\r\n\r\n<p><img alt=\"\" height=\"533\" src=\"https://phuongchau.com/FilesUpload/images/5(6).jpg\" width=\"710\" /></p>\r\n\r\n<p><em>Đồng hành chăm sóc chu đáo cho thai phụ</em></p>\r\n\r\n<p>Hơn cả nơi khám và điều trị, văn hóa Omotenashi góp phần làm cho Phương Châu trở nên thân thiện, gần gũi, tạo điều kiện thoải mái để khách hàng an tâm điều trị, nghỉ dưỡng và gắn kết gia đình trong thời gian phục hồi sức khỏe.</p>\r\n\r\n<p><img alt=\"\" height=\"470\" src=\"https://phuongchau.com/FilesUpload/images/omo.jpg\" width=\"705\" /></p>\r\n\r\n<p><em>Phụng sự từ tâm - Lan tỏa hạnh phúc \"vuông tròn\"</em></p>\r\n\r\n<p>Chúng tôi mong rằng tất cả những giá trị tốt đẹp mà Phương Châu đã và đang mang đến cho người bệnh và cho cộng đồng chính là sự đền đáp xứng đáng cho niềm tin mà cộng đồng đã trao gửi.<br />\r\nQuý Công Ty, Doanh nghiệp mong muốn kết nối để cùng&nbsp;Bệnh viện quốc tế Phương Châu thực hiện Trách nhiệm xã hội có thể liên hệ với chúng tôi qua Tổng đài 1900 54 54 66. Phương Châu xin cảm ơn.</p>', '1669480286_abou6.jpg', 1, 2133, 'thien', 0);
INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `short_Desc`, `content`, `image`, `categogy_id`, `views`, `name`, `status`) VALUES
(14, '2022-11-26 19:49:32', '2022-11-26 19:52:54', 'QUY TRÌNH THĂM KHÁM HIẾM MUỘN', '<p>Sứ mệnh lớn của Phương Châu là tập trung vào an toàn theo tiêu chuẩn Nhật Bản, luôn nâng niu và đề cao thiên chức người phụ nữ.</p>', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>ĐẶC TRƯNG SẢN KHOA PHƯƠNG CHÂU</h2>\r\n\r\n<p>Sứ mệnh lớn của&nbsp;<strong>Phương Châu</strong>&nbsp;là tập trung vào an toàn&nbsp;<a href=\"https://sadec.phuongchau.com/san-khoa-phuong-chau-sadec/\"><strong>Sản Khoa</strong></a>&nbsp;theo tiêu chuẩn Nhật Bản, luôn nâng niu và đề cao thiên chức người phụ nữ.</p>\r\n\r\n<p>Chúng tôi sẽ luôn ở đây, bên cạnh và&nbsp;<strong>đồng hành cùng thai kỳ của bạn</strong>. Từ những ngày đầu mang thai, chuyển dạ sinh đến giai đoạn phục hồi sau sinh, mẹ và bé sẽ được&nbsp;<strong>chăm sóc sức khỏe toàn diện, chu đáo theo tiêu chuẩn Nhật Bản</strong>. Bên cạnh chăm lo về y tế, các gia đình còn được trải nghiệm những dịch vụ và tiện ích đặc trưng chỉ có tại các bệnh viện thuộc&nbsp;<strong>Tập đoàn Y tế Phương Châu</strong>.</p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/san-khoa-phuong-chau-sadec/#htlm\"><img alt=\"Khởi đầu hành trình làm mẹ\" height=\"400\" sizes=\"(max-width: 600px) 100vw, 600px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/khoi-dau-hhanh-trinh-lam-me-roll-pcsd.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/khoi-dau-hhanh-trinh-lam-me-roll-pcsd.jpg 600w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/khoi-dau-hhanh-trinh-lam-me-roll-pcsd-500x333.jpg 500w\" width=\"600\" /></a></p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/san-khoa-phuong-chau-sadec/#htlm\">&nbsp;<strong>Khởi đầu hành trình làm mẹ</strong></a></p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/san-khoa-phuong-chau-sadec/#hts\"><img alt=\"trải nghiệm sanh tại phương châu sa đéc\" height=\"400\" sizes=\"(max-width: 600px) 100vw, 600px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/trai-nghiem-sanh-tai-phuong-chau-sadec-scroll.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/trai-nghiem-sanh-tai-phuong-chau-sadec-scroll.jpg 600w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/trai-nghiem-sanh-tai-phuong-chau-sadec-scroll-500x333.jpg 500w\" width=\"600\" /></a></p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/san-khoa-phuong-chau-sadec/#hts\"><strong>&nbsp;Trải nghiệm hành trình vượt cạn</strong></a></p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/san-khoa-phuong-chau-sadec/#cbts\"><img alt=\"vật dụng cần mang theo khi sanh tại phương châu sa đéc\" height=\"400\" sizes=\"(max-width: 600px) 100vw, 600px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/vat-dung-mang-theo-khi-sanh-pcsd-scroll.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/vat-dung-mang-theo-khi-sanh-pcsd-scroll.jpg 600w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/vat-dung-mang-theo-khi-sanh-pcsd-scroll-500x333.jpg 500w\" width=\"600\" /></a></p>\r\n\r\n<p><strong><a href=\"https://sadec.phuongchau.com/san-khoa-phuong-chau-sadec/#cbts\">&nbsp;Chuẩn bị trước khi sanh</a></strong></p>\r\n\r\n<p><a name=\"htlm\"></a></p>\r\n\r\n<h2>KHỞI ĐẦU HÀNH TRÌNH LÀM MẸ</h2>\r\n\r\n<p><strong>Mang thai</strong>&nbsp;là một chặng đường hạnh phúc nhưng cũng đầy thử thách trong hành trình làm mẹ. Để có một thai kỳ khỏe mạnh và an toàn,&nbsp;<strong>Phương Châu Sa Đéc</strong>&nbsp;hiểu rằng, mỗi mẹ bầu đều cần sự chăm sóc, đồng hành và chia sẻ trong suốt giai đoạn mang thai. Hơn thế nữa, đó là sự&nbsp;<strong>chăm sóc toàn diện cho mẹ và thai nhi</strong>&nbsp;từ những giai đoạn sớm của thai kỳ. Mỗi kế hoạch chăm sóc thai kỳ đều được xây dựng riêng cho từng mẹ bầu dựa theo sức khỏe, tuổi thai. Bên cạnh đó,&nbsp;<strong>kế hoạch chăm sóc sẽ được quản lý</strong>&nbsp;và&nbsp;<strong>đồng hành bởi Nhân viên nữ hộ sinh chuyên biệt</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/san-khoa-phuong-chau-sadec/#\">xem thêm</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/san-khoa-phuong-chau-sadec/#\">xem thêm</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/san-khoa-phuong-chau-sadec/#\">xem thêm</a></p>\r\n\r\n<p><a name=\"hts\"></a></p>\r\n\r\n<h2>HÀNH TRÌNH VƯỢT CẠN AN TOÀN</h2>\r\n\r\n<p>Thấu hiểu được nỗi lo lắng từ các mẹ bầu trong giai đoạn chuyển dạ, sinh và sau sinh.&nbsp;<strong>Bệnh Viện Phương Châu Sa Đéc</strong>&nbsp;đã thiết kế hành trình vượt cạn với những dịch vụ đặc biệt dành riêng cho&nbsp;<strong>sinh thường</strong>&nbsp;và&nbsp;<strong>sinh mổ</strong>.</p>\r\n\r\n<p><img alt=\"sanh-thuong-phong-sanh-than-thien-1\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/sanh-thuong-phong-sanh-than-thien-1.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/sanh-thuong-phong-sanh-than-thien-1.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/sanh-thuong-phong-sanh-than-thien-1-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<h3>Sanh Thường “Phòng Sanh Thân Thiện”</h3>\r\n\r\n<p>&nbsp;Mẹ bầu được ngồi bóng tập, ngâm chân nước ấm, xông tinh dầu, massage lưng và bấm huyệt tam âm giao để giảm bớt cơn đau chuyển dạ.</p>\r\n\r\n<p>&nbsp;Luôn có người thân bên cạnh chăm sóc và chứng kiến khoảnh khắc vượt cạn thiêng liêng.</p>\r\n\r\n<p>&nbsp;Chăm sóc tầng sinh môn với máy Sitzbath.</p>\r\n\r\n<p>&nbsp;Phòng sinh được sơn kháng khuẩn.</p>\r\n\r\n<p>&nbsp;Sinh thường không đau với gây tê màn cứng</p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/diem-noi-bat-khi-sanh-thuong/\" target=\"_self\">Xem thêm&nbsp;</a></p>\r\n\r\n<h3>Sanh Mổ “An Toàn – Giảm Đau – Trọn Vẹn”</h3>\r\n\r\n<p>&nbsp;Phòng mổ vô trùng với sơn kháng khuẩn và không khí một chiều áp lực dương.</p>\r\n\r\n<p>&nbsp;Giảm đau sau mổ tốt.</p>\r\n\r\n<p>&nbsp;May thẩm mỹ với chỉ tự tan và vết mổ được bảo vệ bằng băng sinh học chống thấm nước.</p>\r\n\r\n<p>&nbsp;Tiêm kháng sinh dự phòng trước mổ.</p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/diem-noi-bat-khi-sanh-mo/\" target=\"_self\">Xem thêm&nbsp;</a></p>\r\n\r\n<p><img alt=\"Sanh mổ an toàn giảm đau trọn vẹn\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/sanh-mo-an-toan-giam-dau-tron-ven.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/sanh-mo-an-toan-giam-dau-tron-ven.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/sanh-mo-an-toan-giam-dau-tron-ven-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<p><img alt=\"cham-soc-sau-sanh-cho-me\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-me.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-me.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-me-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<p><img alt=\"cham-soc-sau-sanh-cho-me-1\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-me-1.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-me-1.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-me-1-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<p><img alt=\"cham-soc-sau-sanh-cho-me-2\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-me-2.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-me-2.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-me-2-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<h3>Chăm sóc sau sanh cho bé</h3>\r\n\r\n<p>&nbsp;Tầm soát thính lực sơ sinh.</p>\r\n\r\n<p>&nbsp;Tầm soát sơ sinh – lấy máu gót chân (5 bệnh khó chẩn đoán trên lâm sàng).</p>\r\n\r\n<p>&nbsp;Tầm soát bộ phận sinh dục bé trai &amp; bé gái sơ sinh.</p>\r\n\r\n<p>&nbsp;Sàng lọc bệnh tim bẩm sinh phức tạp bằng máy đo SPO2.</p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/cham-soc-me-va-be-sau-sanh-tai-phuong-chau/\" target=\"_self\">Xem thêm&nbsp;</a></p>\r\n\r\n<p><img alt=\"quà tặng túi bỉm sửa phương châu sadec\" height=\"800\" sizes=\"(max-width: 799px) 100vw, 799px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-1-scaled.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-1-scaled.jpg 2557w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-1-scaled-500x501.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-1-scaled-100x100.jpg 100w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-1-scaled-800x801.jpg 800w\" width=\"799\" /></p>\r\n\r\n<p><img alt=\"quà tặng khung ảnh bé\" height=\"800\" sizes=\"(max-width: 799px) 100vw, 799px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-2-scaled.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-2-scaled.jpg 2557w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-2-scaled-500x501.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-2-scaled-100x100.jpg 100w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-2-scaled-800x801.jpg 800w\" width=\"799\" /></p>\r\n\r\n<p><img alt=\"quà tặng tại phương châu sa đéc\" height=\"800\" sizes=\"(max-width: 799px) 100vw, 799px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-3-scaled.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-3-scaled.jpg 2557w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-3-scaled-500x501.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-3-scaled-100x100.jpg 100w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/qua-tang-phuong-chau-sadec-3-scaled-800x801.jpg 800w\" width=\"799\" /></p>\r\n\r\n<h3>Chăm sóc sau sanh cho mẹ</h3>\r\n\r\n<p>&nbsp;Hỗ trợ mẹ cho bé bú.</p>\r\n\r\n<p>&nbsp;Sản phụ sinh thường được vệ sinh tầng sinh môn bằng máy Siztbath.</p>\r\n\r\n<p>&nbsp;Sản phụ sinh mổ, vết mổ được bảo vệ bằng băng sinh học chống thấm nước.</p>\r\n\r\n<p>&nbsp;Suất ăn dinh dưỡng được thiết kế chuyên biệt bởi Bác sĩ chuyên khoa.</p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/cham-soc-me-va-be-sau-sanh-tai-phuong-chau/\" target=\"_self\">Xem thêm&nbsp;</a></p>\r\n\r\n<p><img alt=\"\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-be-1.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-be-1.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-be-1-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<p><img alt=\"\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-be-2.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-be-2.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-be-2-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<p><img alt=\"\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20758%20677%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E\" srcset=\"\" width=\"758\" /></p>\r\n\r\n<p><img alt=\"cham-soc-sau-sanh-cho-be-4\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-be-4.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-be-4.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/cham-soc-sau-sanh-cho-be-4-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<h3>Quà tặng Vuông – Tròn<br />\r\ntừ Phương Châu</h3>\r\n\r\n<p>&nbsp;<a href=\"https://sadec.phuongchau.com/chuong-trinh-phuong-chau-care/\">Phương Châu Care</a></p>\r\n\r\n<p>&nbsp;<a href=\"https://sadec.phuongchau.com/chuong-trinh-phuong-chau-care/\">Phương Châu Baby Care</a></p>\r\n\r\n<p>&nbsp;<a href=\"https://sadec.phuongchau.com/the-cham-soc-thai-ky-toan-dien/\">Chia sẻ niềm tin – Món quà sức khỏe</a></p>\r\n\r\n<p>&nbsp;Khung ảnh khoảnh khắc đầu đời cho bé</p>\r\n\r\n<p>&nbsp;Túi bỉm sữa cho bé</p>\r\n\r\n<p><a name=\"cbts\"></a></p>\r\n\r\n<h2>VẬT DỤNG CHUẨN BỊ KHI SANH</h2>\r\n\r\n<p>CÁC TIỆN NGHI NỘI TRÚ SẴN CÓ</p>\r\n\r\n<p><img alt=\"tiện nghi phòng nội trú phương châu\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/tien-nghi-noi-tru-phuong-chau-sadec-1.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/tien-nghi-noi-tru-phuong-chau-sadec-1.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/tien-nghi-noi-tru-phuong-chau-sadec-1-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<p><img alt=\"tiện nghi nội trú tại phương châu sa đéc\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/tien-nghi-noi-tru-san-co-pcsd-1.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/tien-nghi-noi-tru-san-co-pcsd-1.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/tien-nghi-noi-tru-san-co-pcsd-1-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<p><img alt=\"tiện nghi nội trú phương châu sa đéc\" height=\"677\" sizes=\"(max-width: 758px) 100vw, 758px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/tien-nghi-noi-tru-san-co-pcsd.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/06/tien-nghi-noi-tru-san-co-pcsd.jpg 758w, https://sadec.phuongchau.com/wp-content/uploads/2021/06/tien-nghi-noi-tru-san-co-pcsd-500x447.jpg 500w\" width=\"758\" /></p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/binh-thuy-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/binh-thuy-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/binh-thuy-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Bình thủy nước nóng</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/ly-nuoc-uong-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/ly-nuoc-uong-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/ly-nuoc-uong-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Nước uống, ly sứ</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/dam-san-phu-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/dam-san-phu-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/dam-san-phu-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Đầm nội trú cho sản phụ</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/chan-goi-grap-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/chan-goi-grap-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/chan-goi-grap-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Chăn, drap, gối cho sản phụ</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/do-cho-be-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/do-cho-be-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/do-cho-be-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>01 bộ đồ thiết yếu cho bé được tiệt trùng và trang bị sẵn tại phòng sanh / phòng mổ Phương Châu</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/kem-ban-chai-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/kem-ban-chai-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/kem-ban-chai-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Kem, bàn chải đánh răng</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/xa-phong-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/xa-phong-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/xa-phong-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Xà phòng rửa tay, giấy vệ sinh</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/giuong-xep-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/giuong-xep-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/giuong-xep-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Giường xếp cho người thân</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/wifi-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/wifi-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/wifi-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Tivi, tủ lạnh, tủ đầu giường, máy lạnh, wifi, hệ thống nước nóng lạnh năng lượng mặt trời</p>\r\n\r\n<p>VẬT DỤNG CẦN MANG THEO</p>\r\n\r\n<h3>Đồ dùng cho bé</h3>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/1-ta-giay-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/1-ta-giay-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/1-ta-giay-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Tả giấy (10 miếng)<br />\r\nBao tay, bao chân (3-4 bộ)<br />\r\nÁo sơ sinh, nón sơ sinh (5-7 bộ)</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/3-khan-quan-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/3-khan-quan-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/3-khan-quan-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Khăn sữa (5 cái)<br />\r\nKhăn quấn (3-4 cái)<br />\r\nKhăn tắm (2-3 cái)</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/7-khan-giay-uot-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/7-khan-giay-uot-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/7-khan-giay-uot-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Khăn giấy mềm<br />\r\nKhăn giấy ướt</p>\r\n\r\n<h3>Đồ dùng cho mẹ</h3>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/9-sua-tam-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/9-sua-tam-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/9-sua-tam-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Dầu gội (2 gói)<br />\r\nSữa tắm (5 gói)</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/4-khan-tam-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/4-khan-tam-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/4-khan-tam-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Khăn giấy (1 gói)<br />\r\nKhăn mặt, khăn tắm (2-3 cái)</p>\r\n\r\n<p><img alt=\"\" height=\"120\" sizes=\"(max-width: 121px) 100vw, 121px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/11-quan-ao-xuat-vien-icon.png\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/11-quan-ao-xuat-vien-icon.png 121w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/11-quan-ao-xuat-vien-icon-100x100.png 100w\" width=\"121\" /></p>\r\n\r\n<p>Quần áo mặc khi xuất viện (1 bộ)<br />\r\nQuần lót giấy (1-2 gói)<br />\r\nBăng vệ sinh (1-2 gói)</p>\r\n\r\n<h3>Các loại giấy tờ cần thiết</h3>\r\n\r\n<p>&nbsp;Hồ sơ khám thai.</p>\r\n\r\n<p>&nbsp;Thẻ ưu đãi (nếu có).</p>\r\n\r\n<p>&nbsp;Thẻ bảo hiểm y tế, thẻ bảo hiểm sức khỏe (nếu có) của thai phụ.</p>\r\n\r\n<p>&nbsp;Giấy CMND, bản photo sổ hộ khẩu của thai phụ để cung cấp thông tin làm giấy chứng sinh cho bé.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>VƯỢT CẠN AN TOÀN – AN TÂM NGHỈ DƯỠNG</h2>\r\n\r\n<p>&nbsp;Không gian lưu trú đảm bảo yếu tố: ấm cúng, tiện nghi và riêng tư tuyệt đối</p>\r\n\r\n<p>&nbsp;Dịch vụ chăm sóc y tế 24/24 đảm bảo an toàn cho mẹ và bé</p>\r\n\r\n<p>&nbsp;Đội ngũ dịch vụ phòng luôn sẵn sàng đảm bảo hỗ trợ chăm sóc tốt nhất cho gia đình</p>\r\n\r\n<p>&nbsp;Thiết kế với nội thất cao cấp, an toàn kiểm soát nhiễm khuẩn trong quá trình nội trú</p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/dich-vu-phong-luu-tru/\" target=\"_self\">Xem thêm&nbsp;</a></p>\r\n\r\n<h2>GHI ÂM TIẾNG KHÓC ĐẦU ĐỜI CỦA CON</h2>\r\n\r\n<p>Một kỷ vật thiêng liêng và đặc trưng chỉ có tại&nbsp;<strong>Phương Châu</strong>&nbsp;từ chiếc thiệp ghi âm vi diệu chất lượng&nbsp;<strong>Nhật Bản</strong>. Lưu giữ tiếng khóc đầu tiên của con cũng chính là lưu giữ những ký ức hạnh phúc nhất của mẹ, của ba và cả gia đình.</p>\r\n\r\n<p><a href=\"https://sadec.phuongchau.com/thiep-ghi-am-tieng-khoc-dau-doi-cua-con/\" target=\"_self\">Xem thêm&nbsp;</a></p>', '1669517372_1.jpg', 0, 2132, 'thien', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Phòng 1', '1', NULL, NULL),
(2, 'Phòng 2', '2', NULL, NULL),
(3, 'Phòng 3', '3', NULL, NULL),
(4, 'Phòng 4', '4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Đánh giá sức khỏe sinh sản tiền hôn nhân', 1, '2022-11-25 20:38:49', '2022-11-26 02:11:35'),
(2, 'Xét nghiệm tinh dịch đồ - Semen Analysis', 0, '2022-11-26 02:12:07', '2022-11-26 02:12:07'),
(3, 'Bơm tinh trùng vào buồng tử cung (IUI)', 0, '2022-11-26 02:14:43', '2022-11-26 02:14:43'),
(5, 'Hỗ trợ phôi thoát màng – Assisted Hatching (AH)', 0, '2022-11-26 02:15:25', '2022-11-26 02:15:25'),
(6, 'Phẫu thuật lấy tinh trùng từ tinh hoàn (mào tinh) – PESA', 0, '2022-11-26 02:15:31', '2022-11-26 02:15:31'),
(7, 'Hỗ trợ phôi thoát màng – Assisted Hatching (AH)', 0, '2022-11-26 02:15:38', '2022-11-26 02:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `position_id` int(11) NOT NULL DEFAULT 2,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `position_id`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Nguyễn Đăng Thiên', 'thien1pro1@gmail.com', '1669447502_thien.jpg', NULL, 0, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', 'DsiQkJ9CuQrNuRj7LWPSd1TIcCfGhyBI0doyyWlcDGIUgLCCVjOugukNcLPz', '2022-10-06 09:51:23', '2022-11-26 00:25:02', ''),
(2, 'Phạm Hoàng Học', 'hoc@gmail.com', '1669654804_hoc.jpg', NULL, 1, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', NULL, '2022-10-07 09:33:54', '2022-11-28 10:00:04', ''),
(3, 'Lê Phú Cường', 'thien1pr@gmail.com', '1669655387_bscuong.jpg', NULL, 2, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', NULL, '2022-11-25 22:16:05', '2022-11-28 10:09:47', NULL),
(4, 'Hoàng Xuân Hải', 'Hai123@gmail.com', '1669654346_BS_hai.jpg', NULL, 2, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', NULL, '2022-11-28 09:52:26', '2022-11-28 09:52:26', NULL),
(6, 'Trương Thị Tuyết', 'tuyet@gmail.com', '1669655158_BacsiTuyen.jpg', NULL, 2, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', NULL, '2022-11-28 10:05:58', '2022-11-28 10:05:58', NULL),
(7, 'Trương Minh Tú', 'tu@gmail.com', '1669655194_BacsiTu.jpg', NULL, 2, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', NULL, '2022-11-28 10:06:34', '2022-11-28 10:06:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asks`
--
ALTER TABLE `asks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categogies`
--
ALTER TABLE `categogies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `asks`
--
ALTER TABLE `asks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categogies`
--
ALTER TABLE `categogies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
