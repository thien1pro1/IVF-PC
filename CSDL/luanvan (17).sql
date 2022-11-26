-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 09:47 AM
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
(2, 'Nguyễn Đăng Thiên', '1', '<p>Chào anh. Hiện tại vấn đề của anh là chứng đau lwung thường niên, anh có thể đến bệnh viện để kiểm tra sức khỏe</p>', '2022-11-22 23:51:05', '2022-11-22 23:51:05'),
(6, 'Nguyễn Đăng Thiên', '1', '<p>f</p>', '2022-11-23 00:01:19', '2022-11-23 00:01:19');

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
(1, 'Lê Phú Cường', 'thien1pro1@gmail.com', '8484848484', 2000, 0, 'IVF', 'Xin chào bác sĩ. Tôi bị đau vùng lưng, trên xương chậu. Khi sáng dậy thì không sao nữa, Xin hỏi vậy là sao thưa bác sĩ?', 1, '2022-11-22 09:16:02', '2022-11-22 10:20:26');

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
(1, 26, 1, 0, '2022-11-19 11:29:14', '2022-11-19 11:29:14'),
(2, 26, 1, 0, '2022-11-19 11:29:29', '2022-11-19 11:29:29'),
(3, 26, 1, 0, '2022-11-19 11:32:03', '2022-11-19 11:32:03'),
(4, 28, 1, 188100, '2022-11-19 12:09:55', '2022-11-19 12:09:55'),
(5, 1, 1, 80000, '2022-11-19 15:20:07', '2022-11-19 15:20:07'),
(6, 19, 1, 18000, '2022-11-20 06:59:46', '2022-11-20 06:59:46'),
(14, 32, 1, 103000, '2022-11-21 08:40:18', '2022-11-21 08:40:18'),
(15, 32, 1, 29000, '2022-11-21 09:05:23', '2022-11-21 09:05:23'),
(16, 34, 1, 3400, '2022-11-24 05:08:25', '2022-11-24 05:08:25'),
(17, 34, 1, 50000, '2022-11-24 05:08:44', '2022-11-24 05:08:44'),
(18, 34, 1, 200000, '2022-11-24 05:11:44', '2022-11-24 05:11:44'),
(19, 34, 1, 5100, '2022-11-24 05:12:01', '2022-11-24 05:12:01'),
(20, 34, 1, 100000, '2022-11-24 05:13:34', '2022-11-24 05:13:34'),
(21, 34, 1, 3400, '2022-11-24 05:14:18', '2022-11-24 05:14:18'),
(22, 34, 1, 6800, '2022-11-24 05:17:29', '2022-11-24 05:17:29'),
(23, 34, 1, 1700, '2022-11-24 05:17:38', '2022-11-24 05:17:38'),
(24, 34, 1, 6800, '2022-11-24 05:18:03', '2022-11-24 05:18:03'),
(25, 34, 1, 3400, '2022-11-24 05:18:39', '2022-11-24 05:18:39'),
(26, 34, 1, 3400, '2022-11-24 05:19:10', '2022-11-24 05:19:10'),
(27, 34, 1, 450000, '2022-11-24 05:19:20', '2022-11-24 05:19:20'),
(28, 34, 1, 450000, '2022-11-24 05:20:04', '2022-11-24 05:20:04');

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
(2, 1, NULL),
(3, 1, 1),
(3, 2, 2),
(3, 3, 1),
(4, 2, 3),
(4, 7, 3),
(4, 13, 6),
(5, 4, 1),
(5, 13, 2),
(6, 10, 1),
(6, 14, 1),
(7, 1, 1),
(7, 9, 3),
(7, 13, 1),
(8, 1, 1),
(8, 9, 3),
(8, 13, 1),
(9, 5, 1),
(9, 9, 1),
(10, 9, 1),
(10, 14, 4),
(11, 3, 4),
(11, 9, -1),
(11, 14, 2),
(12, 4, 60),
(13, 5, 1),
(13, 12, 2),
(14, 3, 1),
(14, 5, 1),
(14, 18, 2),
(15, 3, 1),
(15, 9, 1),
(15, 10, 1),
(16, 7, 1),
(17, 4, 1),
(18, 4, 1),
(19, 7, 1),
(20, 4, 1),
(21, 7, 1),
(22, 7, 1),
(23, 7, 1),
(24, 7, 1),
(25, 7, 1),
(26, 7, 1),
(27, 4, 1),
(28, 4, 1);

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
(1, 'Tiểu kiều', 'Chu Du', '0987654321', 'chudu@gmail.com', '2022-10-17', '2022-10-17', '2022-11-19', '07:00:00', 2, 1, NULL, NULL, '2022-10-17 01:50:31', '2022-10-18 10:24:17', 1),
(2, 'Kim Yến', 'Hoàng Học', '0987567435', 'hoc@gmail.com', '2000-06-07', '2000-02-24', '2022-10-21', '07:30:00', NULL, 0, 'Tôi bị yếu', NULL, '2022-10-20 11:29:11', '2022-10-20 11:29:11', 0),
(3, 'Trần Mai Phương', 'Đặng Nhật Nam', '9078456784', 'nam@gmail.com', '2022-10-04', '2022-10-19', '2022-10-04', '08:30:00', NULL, 0, NULL, NULL, '2022-10-20 11:32:29', '2022-10-20 11:32:29', 0),
(4, 'Nguyễn Ngọc Trân', 'Thiên', '0585253470', 'thien1pro1@gmail.com', '2022-09-26', '2022-09-28', '2022-09-28', '10:00:00', 1, 1, NULL, NULL, '2022-10-20 22:01:04', '2022-11-17 19:57:10', 0),
(5, 'Trần Bích Chi', 'Châu Thuận Thiên', '0354677900', 'chi@gmail.com', '2022-10-21', '2022-10-21', '2022-10-20', '07:00:00', 3, 2, NULL, NULL, '2022-10-20 22:01:46', '2022-10-20 23:51:57', 1),
(6, 'Phan Thị Trúc Linh', 'Trần Phát', '0678234567', 'phat@gmail.com', '2022-10-21', '2022-10-21', '2022-10-21', '07:00:00', 3, 3, NULL, NULL, '2022-10-20 22:02:33', '2022-10-20 22:04:26', 0),
(7, 'a', 'b', '0987654321', 'a@gmail.com', '2022-10-14', '2022-09-30', '2022-10-30', '07:00:00', NULL, 3, 'cc', NULL, '2022-10-21 05:12:37', '2022-10-21 06:07:19', 0),
(8, 'c', 'd', '6666777788', 'c@gmail.com', '2022-10-21', '2022-10-21', '2022-10-30', '07:30:00', 2, 2, NULL, 'xong', '2022-10-21 05:13:22', '2022-11-14 09:30:06', 1),
(9, 'e', 'f', '8888999900', 'c@gmail.com', '2022-10-13', '2022-10-21', '2022-10-30', '07:00:00', 2, 1, NULL, NULL, '2022-10-21 05:13:56', '2022-10-21 21:04:07', 1),
(10, 'h', 'c', '5555666677', 'c@gmail.com', '2022-10-21', '2022-10-21', '2022-10-30', '07:00:00', 3, 1, NULL, NULL, '2022-10-21 05:25:10', '2022-10-21 21:04:18', 1),
(11, 'Nguyễn Thị Huyền Trang', 'Lâm Trọng Khánh', '0987564325', 'thien1pro1@gmail.com', '2022-11-09', '2022-11-10', '2022-11-30', '07:00:00', 1, 1, NULL, NULL, '2022-11-06 08:26:42', '2022-11-06 08:26:47', 1),
(12, 'Lâm Khánh Vy', 'hà Hữu Sĩ', '0987564325', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-11-30', '15:00:00', NULL, 1, 'Tôi cần dịch vụ hỗ trợ sinh ', NULL, '2022-11-06 08:27:01', '2022-11-06 08:27:01', 1),
(13, 'Trần Diệu Mỹ', 'Lê Quang Thái', '0987564325', 'thai@gmail.com', '1996-11-08', '1993-11-15', '2022-11-30', '15:00:00', NULL, 2, 'Tôi cần dịch vụ hỗ trợ sinh ', 'thai ky binh thuong', '2022-11-06 08:27:01', '2022-11-15 00:10:50', 1),
(14, 'Phan Triệu Vy', 'Tôn Văn Nghị ', '0987556935', 'vy@gmail.com', '1996-03-08', '1993-07-15', '2022-11-27', '15:00:00', NULL, 1, 'Tôi cần dịch vụ hỗ trợ sinh ', NULL, '2022-11-06 08:27:01', '2022-11-06 08:27:01', 1),
(15, 'Nguyễn Thị Ngọc', 'Nguyễn Đăng Thiên', '0585253470', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-10-30', '09:00:00', 1, 2, 'Tôi cần dịch vụ hỗ trợ sinh ', 'Tiếp nhận chăm sóc CarePlus, Đảm bảo sức khỏe cho vợ', '2022-11-06 08:27:01', '2022-11-06 08:27:01', 1),
(16, 'Nguyễn Thị Ngọc', 'Nguyễn Đăng Thiên', '0585253470', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-11-05', '09:00:00', 3, 2, 'Kiểm tra sức khỏe cho vợ định kì ', 'Tình trặng thai nhi bình thường', '2022-11-06 08:27:01', '2022-11-06 08:27:01', 1),
(17, 'Nguyễn Thị Ngọc', 'Nguyễn Đăng Thiên', '0585253470', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-11-17', '09:00:00', NULL, 2, 'Kiểm tra sức khỏe cho vợ định kì ', 'Tình trặng thai nhi bình thường', '2022-11-06 08:27:01', '2022-11-06 08:27:01', 1),
(18, 'Nguyễn Thị Ngọc', 'Nguyễn Đăng Thiên', '0585253470', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-11-30', '09:00:00', NULL, 2, 'Tôi cần dịch vụ hỗ trợ sinh ', 'Tình trặng thai nhi bình thường', '2022-11-06 08:27:01', '2022-11-06 08:27:01', 1),
(19, 'vo123', 'chong123', '6666777788', 'thien1pro1@gmail.com', '2022-11-15', '2022-11-15', '2022-11-20', '07:00:00', NULL, 0, 'Toi muốn phòng vip', NULL, '2022-11-15 07:36:25', '2022-11-15 07:36:25', 0),
(20, 'vo123', 'chong123', '6666777788', 'thien1pro1@gmail.com', '2022-11-15', '2022-11-15', '2022-11-20', '07:00:00', NULL, 0, 'Toi muốn phòng vip', NULL, '2022-11-15 07:40:53', '2022-11-15 07:40:53', 0),
(21, 'vo123', 'chong123', '6666777788', 'thien1pro1@gmail.com', '2022-11-15', '2022-11-15', '2022-11-20', '07:00:00', NULL, 0, 'Toi muốn phòng vip', NULL, '2022-11-15 07:41:20', '2022-11-15 07:41:20', 0),
(22, 'vo123', 'chong123', '6666777788', 'thien1pro1@gmail.com', '2022-11-15', '2022-11-15', '2022-11-20', '07:00:00', NULL, 0, 'Toi muốn phòng vip', NULL, '2022-11-15 07:45:24', '2022-11-15 07:45:24', 0),
(23, 'vo123', 'chong123', '6666777788', 'thien1pro1@gmail.com', '2022-11-15', '2022-11-15', '2022-11-20', '07:00:00', NULL, 0, 'Toi muốn phòng vip', NULL, '2022-11-15 07:45:38', '2022-11-15 07:45:38', 0),
(24, 'vo123', 'chong123', '6666777788', 'thien1pro1@gmail.com', '2022-11-15', '2022-11-15', '2022-11-20', '07:00:00', NULL, 0, 'Toi muốn phòng vip', NULL, '2022-11-15 07:45:50', '2022-11-15 07:45:50', 0),
(25, 'vo123', 'chong123', '6666777788', 'thien1pro1@gmail.com', '2022-11-15', '2022-11-15', '2022-11-20', '07:00:00', NULL, 0, 'Toi muốn phòng vip', NULL, '2022-11-15 07:48:17', '2022-11-15 07:48:17', 0),
(26, 'vo a', 'chong b', '5645678901', 'thien1pro1@gmail.com', '2022-11-15', '2022-11-15', '2022-11-19', '07:00:00', 1, 1, NULL, NULL, '2022-11-15 07:50:14', '2022-11-23 00:32:52', 0),
(27, 'xuan', 'cuong', '1234567890', 'thien1pro1@gmail.com', '2022-11-15', '2022-11-15', '2022-11-19', '07:00:00', NULL, 2, 'ff', 'gghghgh', '2022-11-15 07:53:14', '2022-11-15 10:26:34', 1),
(28, 'xuan vip', 'Cuong pro', '1234567890', 'thien1pro1@gmail.com', '2022-11-15', '2022-11-15', '2022-11-19', '10:30:00', 1, 1, NULL, NULL, '2022-11-15 08:47:31', '2022-11-15 10:24:10', 1),
(29, 'Trần thanh Nhi', 'Nguyễn Đăng Thiên', '0585253470', 'thien1pro1@gmail.com', '2022-11-16', '2022-11-16', '2022-11-16', '10:30:00', NULL, -1, 'Tôi cần chăm sóc', NULL, '2022-11-16 07:58:05', '2022-11-16 07:58:05', 0),
(30, 'Trần Thanh Nhi', 'Nguyễn Đăng Thiên', '0585253470', 'thien1pro1@gmail.com', '2022-11-16', '2022-11-16', '2022-11-16', '10:30:00', NULL, 0, 'oke', NULL, '2022-11-16 08:04:00', '2022-11-16 08:04:00', 0),
(31, 'Nguyễn Thị Tú Hảo', 'Nguyễn Đăng Thiên', '0678987654', 'thien1pro1@gmail.com', '2022-11-16', '2022-11-16', '2022-11-16', '07:00:00', NULL, 2, 'yeah', 'Do thiêu Glucozo, Bổ sung tinh bột', '2022-11-16 08:06:43', '2022-11-16 08:20:55', 1),
(32, 'Lâm Khánh Vy', 'hà Hữu Sĩ', '0987564325', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-11-21', '15:00:00', NULL, 1, 'Kiểm tra y tế', NULL, '2022-11-06 08:27:01', '2022-11-06 08:27:01', 1),
(33, 'Trần Mai Phương', 'Đặng Nhật Nam', '9078456784', 'thien1pro1@gmail.com', '2022-10-04', '2022-10-19', '2022-11-23', '09:30:00', 1, 1, NULL, NULL, '2022-10-20 11:32:29', '2022-11-23 00:30:03', 0),
(34, 'Phan Triệu Vy', 'Tôn Văn Nghị ', '0987556935', 'thien1pro1@gmail.com', '1996-03-08', '1993-07-15', '2022-11-24', '15:00:00', NULL, 1, 'Tôi cần dịch vụ hỗ trợ sinh ', NULL, '2022-11-06 08:27:01', '2022-11-06 08:27:01', 1);

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
(1, 'Đảm bảo sức khỏe sau sinh', 'các chế độ ăn, tập luyện và hồi phục sau sinh cho mẹ 2', 2, NULL, '2022-11-25 20:47:57'),
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
(1, 'Nguyễn Đăng Thiên', 'thien@gmail.com', 'heloku', 0, 2, '2022-11-25 19:49:36', '2022-11-25 19:49:36'),
(2, 'Nguyễn Đăng Thiên', 'thien@gmail.com', 'heloku', 0, 2, '2022-11-25 19:50:50', '2022-11-25 19:50:50'),
(3, 'Nguyễn Đăng Thiên', 'thien@gmail.com', 'heloku', 0, 2, '2022-11-25 19:50:58', '2022-11-25 19:50:58'),
(4, 'Nguyễn Đăng Thiên', 'thien@gmail.com', 'heloku', 0, 2, '2022-11-25 19:51:17', '2022-11-25 19:51:17'),
(5, 'Nguyễn Đăng Thiên', 'thien1pro1@gmail.com', 'Dr. Marie mang dịch vụ đến với nữ công nhân trong khuôn khổ dự án hợp tác với MSI.\r\n\r\nHiện tại, khi Việt Nam đã bước vào giai đoạn phục hồi sau đại dịch, Dr. Marie cùng MSI Reproductive Choices nỗ lực mở rộng hệ thống cơ sở chăm sóc sức khỏe sinh sản, nhằm đem đến sự hỗ trợ kịp thời cho mọi đối tượng trong xã hội. Qua những kinh nghiệm trải qua khó khăn trong thời điểm đại dịch, Dr. Marie cũng đã xây dựng được các phương án đối phó rủi ro, giúp hệ thống linh hoạt hơn khi chịu tác động tiêu cực từ môi trường bên ngoài.\r\n\r\nHành trình của Dr. Marie là hành trình không ngừng nỗ lực mang đến niềm tin, điểm tựa cho hàng triệu phụ nữ Việt Nam. Không có điều gì là dễ dàng, Dr. Marie luôn sẵn sàng với mọi thử thách để thay đổi tư duy của xã hội, để SKSS và KHHGĐ trở thành lĩnh vực được ưu tiên hơn nữa trong tương lai.\r\n\r\nTìm kiếm sự chăm sóc sức khỏe sinh sản toàn diện tại', 0, 2, '2022-11-25 20:19:29', '2022-11-25 20:19:29');

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

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `type`, `book_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 'sa8Ofc@gmail.com', 'sa', '8', 'storage/sa_file/sa8Ofc@gmail.com', '2022-11-14 09:30:06', '2022-11-14 09:30:06'),
(2, 'sa13Ofthai@gmail.com', 'sa', '13', 'storage/sa_file/sa13Ofthai@gmail.com', '2022-11-15 00:10:50', '2022-11-15 00:10:50'),
(3, 'sa13Ofthai@gmail.com', 'sa', '13', 'storage/sa_file/sa13Ofthai@gmail.com', '2022-11-15 00:14:13', '2022-11-15 00:14:13'),
(4, 'sa13Ofthai@gmail.com', 'sa', '13', 'storage/sa_file/sa13Ofthai@gmail.com', '2022-11-15 00:15:38', '2022-11-15 00:15:38'),
(5, 'sa13Ofthai@gmail.com', 'sa', '13', 'storage/sa_file/sa13Ofthai@gmail.com', '2022-11-15 01:23:29', '2022-11-15 01:23:29'),
(6, 'sa27Ofthien1pro1@gmail.com', 'sa', '27', 'storage/sa_file/sa27Ofthien1pro1@gmail.com', '2022-11-15 10:12:45', '2022-11-15 10:12:45'),
(7, 'sa27Ofthien1pro1@gmail.com', 'sa', '27', 'storage/sa_file/sa27Ofthien1pro1@gmail.com', '2022-11-15 10:12:50', '2022-11-15 10:12:50'),
(8, 'sa27Ofthien1pro1@gmail.com', 'sa', '27', 'storage/sa_file/sa27Ofthien1pro1@gmail.com', '2022-11-15 10:25:00', '2022-11-15 10:25:00'),
(9, 'sa27Ofthien1pro1@gmail.com', 'sa', '27', 'storage/sa_file/sa27Ofthien1pro1@gmail.com', '2022-11-15 10:26:34', '2022-11-15 10:26:34'),
(10, 'sa27Ofthien1pro1@gmail.com', 'sa', '27', 'storage/sa_file/sa27Ofthien1pro1@gmail.com', '2022-11-15 10:27:27', '2022-11-15 10:27:27'),
(11, 'sa31Ofthien1pro1@gmail.com', 'sa', '31', 'storage/sa_file/sa31Ofthien1pro1@gmail.com', '2022-11-16 08:20:55', '2022-11-16 08:20:55');

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
(32, '2022_11_26_022151_feedback_migration', 14);

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
(1, '2022-10-21 03:13:52', '2022-11-25 23:51:30', 'Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt', '<h2>(Dân trí) - Trong suốt 3 thập kỷ, Dr.Marie là người bạn đồng hành đáng tin cậy của nhiều thế hệ phụ nữ Việt nhờ những nỗ lực trong việc hỗ trợ chăm sóc sức khỏe sinh sản và kế hoạch hóa gia đình.</h2>', '<p><strong>Thực trạng vấn đề chăm sóc sức khỏe sinh sản tại Việt Nam</strong></p>\r\n\r\n<p>Tại Việt Nam, sức khỏe sinh sản (SKSS) và kế hoạch hóa gia đình là một vấn đề ngày càng được chú trọng và quan tâm. Đặc biệt về mặt quyền lợi của người phụ nữ trong việc sinh con, được chăm sóc toàn diện về thể chất lẫn tinh thần trong thời gian thai kỳ.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929241.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 1\" /></p>\r\n\r\n<p>Dr.Marie đặt quyền lợi của phụ nữ lên hàng đầu.</p>\r\n\r\n<p>Chính vì đó, đã có nhiều đơn vị tại Việt Nam đã nỗ lực không ngừng để bảo vệ sức khỏe, tinh thần của phụ nữ Việt Nam, một trong số đó là Dr. Marie - Cơ sở chăm sóc sức khỏe sinh sản &amp; Kế hoạch hóa Gia đình theo tiêu chuẩn Anh Quốc tại Việt Nam. Được thành lập từ năm 1994, Dr.Marie là thương hiệu do MSI Reproductive Choices đăng ký bảo hộ toàn cầu, vận hành theo tiêu chuẩn quốc tế dưới sự giám sát kỹ thuật và đào tạo liên tục của MSI tại Việt Nam.</p>\r\n\r\n<p>MSI Reproductive Choices (MSI) là một tổ chức phi chính phủ quốc tế, ra đời năm 1976 tại London, Vương quốc Anh, chuyên cung cấp dịch vụ chăm sóc sức khỏe sinh sản và kế hoạch hóa gia đình tại 37 quốc gia trên toàn thế giới. Hệ thống MSI trên toàn cầu bao gồm: 620 điểm cung ứng, 52.000 điểm hỗ trợ lưu động, 4.100 phòng khám nhượng quyền xã hội và hơn 11.700 nhân viên.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929555.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 2\" /></p>\r\n\r\n<p>Dr.Marie sở hữu hệ thống trang thiết bị hiện đại tiêu chuẩn quốc tế.</p>\r\n\r\n<p>Những năm qua nhờ nhận được nguồn lực từ tổ chức quốc tế MSI, Dr. Marie hỗ trợ chăm sóc điều trị các vấn đề về sức khỏe sinh sản bằng chất lượng điều trị tiêu chuẩn quốc tế, hệ thống trang thiết bị hiện đại, đội ngũ bác sĩ, chuyên gia trình độ cao và giàu kinh nghiệm. Mỗi năm, Dr. Marie trợ giúp chăm sóc sức khỏe toàn diện cho hơn 50.000 phụ nữ Việt mọi độ tuổi thông qua hệ thống 12 cơ sở tại 9 tỉnh, thành phố.</p>\r\n\r\n<p><strong>Luôn đề cao trách nhiệm xã hội</strong></p>\r\n\r\n<p>Trong quá trình 28 năm phát triển, Dr. Marie đã không ngừng mở rộng quy mô, hoàn thiện và đa dạng hóa các quy trình hoạt động để hiện thực hóa các mục tiêu nhân đạo của mình. Đó chính là việc đem đến cho phụ nữ Việt Nam sự chăm sóc toàn diện nhất, góp phần xây dựng một thế hệ sau khỏe mạnh và tiến bộ hơn. Bằng những nỗ lực không ngừng nghỉ, Dr. Marie cam kết đảm bảo quyền lợi cho phụ nữ để sinh con theo lựa chọn, và tuyệt đối sẽ ko thỏa hiệp về các tiêu chuẩn an toàn tối thiểu.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929751.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 3\" /></p>\r\n\r\n<p>Dr.Marie đào tạo cho các nữ hộ sinh địa phương trong dự án MSLadies.</p>\r\n\r\n<p>Thời gian qua, do tác động của đại dịch Covid-19, hệ thống y tế tại Việt Nam trở nên quá tải, dẫn tới việc người dân gặp nhiều khó khăn hơn khi muốn tiếp cận các dịch vụ y tế cần thiết, nhất là đối với phụ nữ khi dịch vụ chăm sóc sức khỏe sinh sản không được ưu tiên trong giai đoạn này.</p>\r\n\r\n<p>Không đầu hàng nghịch cảnh, Dr. Marie đã nỗ lực đảm bảo các cơ sở chăm sóc sức khỏe, sinh sản được vận hành liên tục thông qua việc đẩy mạnh các phương thức liên lạc trực tuyến, tối giản quy trình hỗ trợ đảm bảo công tác phòng dịch được đặt lên hàng đầu. Nhờ những cố gắng này, nhiều phụ nữ Việt Nam ở mọi lứa tuổi đã được thăm khám Sản phụ khoa, Tầm soát Ung thư cổ tử cung và thực hiện các biện pháp Chăm sóc sức khỏe sinh sản đầy đủ và kịp thời ngay cả trong mùa dịch.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929905.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 4\" /></p>\r\n\r\n<p>Dr. Marie mang dịch vụ đến với nữ công nhân trong khuôn khổ dự án hợp tác với MSI.</p>\r\n\r\n<p>Hiện tại, khi Việt Nam đã bước vào giai đoạn phục hồi sau đại dịch, Dr.&nbsp;Marie&nbsp;cùng MSI Reproductive Choices nỗ lực mở rộng hệ thống cơ sở chăm sóc sức khỏe sinh sản, nhằm đem đến sự hỗ trợ kịp thời cho mọi đối tượng trong xã hội. Qua những kinh nghiệm trải qua khó khăn trong thời điểm đại dịch, Dr. Marie cũng đã xây dựng được các phương án đối phó rủi ro, giúp hệ thống linh hoạt hơn khi chịu tác động tiêu cực từ môi trường bên ngoài.</p>\r\n\r\n<p>Hành trình của Dr. Marie là hành trình không ngừng nỗ lực mang đến niềm tin, điểm tựa cho hàng triệu phụ nữ Việt Nam. Không có điều gì là dễ dàng, Dr. Marie luôn sẵn sàng với mọi thử thách để thay đổi tư duy của xã hội, để SKSS và KHHGĐ trở thành lĩnh vực được ưu tiên hơn nữa trong tương lai.</p>\r\n\r\n<p>Tìm kiếm sự chăm sóc sức khỏe sinh sản toàn diện tại:</p>', '1666347232_about1.jpg', 0, 2, 'thien', 0),
(2, '2022-10-21 03:18:09', '2022-10-21 03:18:09', 'Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt', 'Trong suốt 3 thập kỷ, Dr.Marie là người bạn đồng hành đáng tin cậy của nhiều thế hệ phụ nữ Việt nhờ những nỗ lực trong việc hỗ trợ chăm sóc sức khỏe sinh sản và kế hoạch hóa gia đình', '<p><strong>Thực trạng vấn đề chăm sóc sức khỏe sinh sản tại Việt Nam</strong></p>\r\n\r\n<p>Tại Việt Nam, sức khỏe sinh sản (SKSS) và kế hoạch hóa gia đình là một vấn đề ngày càng được chú trọng và quan tâm. Đặc biệt về mặt quyền lợi của người phụ nữ trong việc sinh con, được chăm sóc toàn diện về thể chất lẫn tinh thần trong thời gian thai kỳ.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929241.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 1\" /></p>\r\n\r\n<p>Dr.Marie đặt quyền lợi của phụ nữ lên hàng đầu.</p>\r\n\r\n<p>Chính vì đó, đã có nhiều đơn vị tại Việt Nam đã nỗ lực không ngừng để bảo vệ sức khỏe, tinh thần của phụ nữ Việt Nam, một trong số đó là Dr. Marie - Cơ sở chăm sóc sức khỏe sinh sản &amp; Kế hoạch hóa Gia đình theo tiêu chuẩn Anh Quốc tại Việt Nam. Được thành lập từ năm 1994, Dr.Marie là thương hiệu do MSI Reproductive Choices đăng ký bảo hộ toàn cầu, vận hành theo tiêu chuẩn quốc tế dưới sự giám sát kỹ thuật và đào tạo liên tục của MSI tại Việt Nam.</p>\r\n\r\n<p>MSI Reproductive Choices (MSI) là một tổ chức phi chính phủ quốc tế, ra đời năm 1976 tại London, Vương quốc Anh, chuyên cung cấp dịch vụ chăm sóc sức khỏe sinh sản và kế hoạch hóa gia đình tại 37 quốc gia trên toàn thế giới. Hệ thống MSI trên toàn cầu bao gồm: 620 điểm cung ứng, 52.000 điểm hỗ trợ lưu động, 4.100 phòng khám nhượng quyền xã hội và hơn 11.700 nhân viên.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929555.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 2\" /></p>\r\n\r\n<p>Dr.Marie sở hữu hệ thống trang thiết bị hiện đại tiêu chuẩn quốc tế.</p>\r\n\r\n<p>Những năm qua nhờ nhận được nguồn lực từ tổ chức quốc tế MSI, Dr. Marie hỗ trợ chăm sóc điều trị các vấn đề về sức khỏe sinh sản bằng chất lượng điều trị tiêu chuẩn quốc tế, hệ thống trang thiết bị hiện đại, đội ngũ bác sĩ, chuyên gia trình độ cao và giàu kinh nghiệm. Mỗi năm, Dr. Marie trợ giúp chăm sóc sức khỏe toàn diện cho hơn 50.000 phụ nữ Việt mọi độ tuổi thông qua hệ thống 12 cơ sở tại 9 tỉnh, thành phố.</p>\r\n\r\n<p><strong>Luôn đề cao trách nhiệm xã hội</strong></p>\r\n\r\n<p>Trong quá trình 28 năm phát triển, Dr. Marie đã không ngừng mở rộng quy mô, hoàn thiện và đa dạng hóa các quy trình hoạt động để hiện thực hóa các mục tiêu nhân đạo của mình. Đó chính là việc đem đến cho phụ nữ Việt Nam sự chăm sóc toàn diện nhất, góp phần xây dựng một thế hệ sau khỏe mạnh và tiến bộ hơn. Bằng những nỗ lực không ngừng nghỉ, Dr. Marie cam kết đảm bảo quyền lợi cho phụ nữ để sinh con theo lựa chọn, và tuyệt đối sẽ ko thỏa hiệp về các tiêu chuẩn an toàn tối thiểu.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929751.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 3\" /></p>\r\n\r\n<p>Dr.Marie đào tạo cho các nữ hộ sinh địa phương trong dự án MSLadies.</p>\r\n\r\n<p>Thời gian qua, do tác động của đại dịch Covid-19, hệ thống y tế tại Việt Nam trở nên quá tải, dẫn tới việc người dân gặp nhiều khó khăn hơn khi muốn tiếp cận các dịch vụ y tế cần thiết, nhất là đối với phụ nữ khi dịch vụ chăm sóc sức khỏe sinh sản không được ưu tiên trong giai đoạn này.</p>\r\n\r\n<p>Không đầu hàng nghịch cảnh, Dr. Marie đã nỗ lực đảm bảo các cơ sở chăm sóc sức khỏe, sinh sản được vận hành liên tục thông qua việc đẩy mạnh các phương thức liên lạc trực tuyến, tối giản quy trình hỗ trợ đảm bảo công tác phòng dịch được đặt lên hàng đầu. Nhờ những cố gắng này, nhiều phụ nữ Việt Nam ở mọi lứa tuổi đã được thăm khám Sản phụ khoa, Tầm soát Ung thư cổ tử cung và thực hiện các biện pháp Chăm sóc sức khỏe sinh sản đầy đủ và kịp thời ngay cả trong mùa dịch.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929905.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 4\" /></p>\r\n\r\n<p>Dr. Marie mang dịch vụ đến với nữ công nhân trong khuôn khổ dự án hợp tác với MSI.</p>\r\n\r\n<p>Hiện tại, khi Việt Nam đã bước vào giai đoạn phục hồi sau đại dịch, Dr.&nbsp;Marie&nbsp;cùng MSI Reproductive Choices nỗ lực mở rộng hệ thống cơ sở chăm sóc sức khỏe sinh sản, nhằm đem đến sự hỗ trợ kịp thời cho mọi đối tượng trong xã hội. Qua những kinh nghiệm trải qua khó khăn trong thời điểm đại dịch, Dr. Marie cũng đã xây dựng được các phương án đối phó rủi ro, giúp hệ thống linh hoạt hơn khi chịu tác động tiêu cực từ môi trường bên ngoài.</p>\r\n\r\n<p>Hành trình của Dr. Marie là hành trình không ngừng nỗ lực mang đến niềm tin, điểm tựa cho hàng triệu phụ nữ Việt Nam. Không có điều gì là dễ dàng, Dr. Marie luôn sẵn sàng với mọi thử thách để thay đổi tư duy của xã hội, để SKSS và KHHGĐ trở thành lĩnh vực được ưu tiên hơn nữa trong tương lai.</p>\r\n\r\n<p>Tìm kiếm sự chăm sóc sức khỏe sinh sản toàn diện tại:</p>', '1666347489_Screenshot 2022-10-21 171610.png', 1, 45, 'thien', 0),
(3, '2022-11-25 21:55:56', '2022-11-26 00:04:53', 'ggfhsgfd', '<p>ưeartetyruut</p>', '<p>ưesrytrut</p>', '1669446293_khamxong.png', 0, 1312, 'thien', 0);

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
(1, 'Phòng 1', '2', NULL, NULL),
(2, 'Phòng 2', '2', NULL, NULL),
(3, 'Phòng 3', '2', NULL, NULL),
(4, 'Phòng 4', '2', NULL, NULL);

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
(1, 'Chụp X-Quang 1', 1, '2022-11-25 20:38:49', '2022-11-25 20:49:45');

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
(1, 'Nguyễn Đăng Thiên', 'thien1pro1@gmail.com', '1669447502_thien.jpg', NULL, 0, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', 'bB57Ihz4uS3TcNSFMuuU1fepuhcYM91g96Eo0ELf6nLvlcuPAJQ4yOt3fErJ', '2022-10-06 09:51:23', '2022-11-26 00:25:02', ''),
(2, 'Phạm Hoàng Học', 'hoc@gmail.com', '1669448031_hoc.jpg', NULL, 1, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', NULL, '2022-10-07 09:33:54', '2022-11-26 00:33:51', ''),
(3, 'Lê Phú Cường', 'thien1pr@gmail.com', '1669448179_cuong.jpg', NULL, 2, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', NULL, '2022-11-25 22:16:05', '2022-11-26 00:36:19', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `asks`
--
ALTER TABLE `asks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
