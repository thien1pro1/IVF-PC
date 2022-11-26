-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2022 lúc 11:21 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `luanvan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answers`
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
-- Đang đổ dữ liệu cho bảng `answers`
--

INSERT INTO `answers` (`id`, `user`, `ask_id`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Đăng Thiên', '1', '<p>Chào anh. Hiện tại vấn đề của anh là chứng đau lwung thường niên, anh có thể đến bệnh viện để kiểm tra sức khỏe</p>', '2022-11-22 23:51:05', '2022-11-22 23:51:05'),
(6, 'Nguyễn Đăng Thiên', '1', '<p>f</p>', '2022-11-23 00:01:19', '2022-11-23 00:01:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `asks`
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
-- Đang đổ dữ liệu cho bảng `asks`
--

INSERT INTO `asks` (`id`, `name`, `email`, `phone`, `years`, `gender`, `type`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lê Phú Cường', 'thien1pro1@gmail.com', '8484848484', 2000, 0, 'IVF', 'Xin chào bác sĩ. Tôi bị đau vùng lưng, trên xương chậu. Khi sáng dậy thì không sao nữa, Xin hỏi vậy là sao thưa bác sĩ?', 1, '2022-11-22 09:16:02', '2022-11-22 10:20:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
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
-- Đang đổ dữ liệu cho bảng `bills`
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
-- Cấu trúc bảng cho bảng `bill_medicines`
--

CREATE TABLE `bill_medicines` (
  `bill_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_medicines`
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
-- Cấu trúc bảng cho bảng `books`
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
-- Đang đổ dữ liệu cho bảng `books`
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
(34, 'Phan Triệu Vy', 'Tôn Văn Nghị ', '0987556935', 'thien1pro1@gmail.com', '1996-03-08', '1993-07-15', '2022-11-24', '15:00:00', NULL, 1, 'Tôi cần dịch vụ hỗ trợ sinh ', NULL, '2022-11-06 08:27:01', '2022-11-06 08:27:01', 1),
(35, 'Phan Kim Ly', 'Phan Thanh Liêm', '0929622239', 'hochochc@gmail.com', '1994-05-04', '1997-11-26', '2022-11-26', '08:30:00', NULL, -1, 'Tôi muốn push', NULL, '2022-11-26 03:10:10', '2022-11-26 03:10:10', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categogies`
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
-- Đang đổ dữ liệu cho bảng `categogies`
--

INSERT INTO `categogies` (`id`, `categogyName`, `short_Desc`, `status`, `created_at`, `updated_at`) VALUES
(0, 'Dịch vụ', 'Dịch vụ của BVQT PHương Châu', 1, '2022-10-20 21:37:53', '2022-10-20 21:39:42'),
(1, 'Đảm bảo sức khỏe sau sinh', 'các chế độ ăn, tập luyện và hồi phục sau sinh cho mẹ 2', 2, NULL, '2022-11-25 20:47:57'),
(2, 'Chế độ dinh dưỡng', 'Các loại thức ăn giàu đạm', 1, '2022-10-20 21:37:53', '2022-10-20 21:39:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `feedbacks`
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
-- Đang đổ dữ liệu cho bảng `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `content`, `status`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Đăng Thiên', 'thien@gmail.com', 'heloku', 0, 2, '2022-11-25 19:49:36', '2022-11-25 19:49:36'),
(2, 'Nguyễn Đăng Thiên', 'thien@gmail.com', 'heloku', 0, 2, '2022-11-25 19:50:50', '2022-11-25 19:50:50'),
(3, 'Nguyễn Đăng Thiên', 'thien@gmail.com', 'heloku', 0, 2, '2022-11-25 19:50:58', '2022-11-25 19:50:58'),
(4, 'Nguyễn Đăng Thiên', 'thien@gmail.com', 'heloku', 0, 2, '2022-11-25 19:51:17', '2022-11-25 19:51:17'),
(5, 'Nguyễn Đăng Thiên', 'thien1pro1@gmail.com', 'Dr. Marie mang dịch vụ đến với nữ công nhân trong khuôn khổ dự án hợp tác với MSI.\r\n\r\nHiện tại, khi Việt Nam đã bước vào giai đoạn phục hồi sau đại dịch, Dr. Marie cùng MSI Reproductive Choices nỗ lực mở rộng hệ thống cơ sở chăm sóc sức khỏe sinh sản, nhằm đem đến sự hỗ trợ kịp thời cho mọi đối tượng trong xã hội. Qua những kinh nghiệm trải qua khó khăn trong thời điểm đại dịch, Dr. Marie cũng đã xây dựng được các phương án đối phó rủi ro, giúp hệ thống linh hoạt hơn khi chịu tác động tiêu cực từ môi trường bên ngoài.\r\n\r\nHành trình của Dr. Marie là hành trình không ngừng nỗ lực mang đến niềm tin, điểm tựa cho hàng triệu phụ nữ Việt Nam. Không có điều gì là dễ dàng, Dr. Marie luôn sẵn sàng với mọi thử thách để thay đổi tư duy của xã hội, để SKSS và KHHGĐ trở thành lĩnh vực được ưu tiên hơn nữa trong tương lai.\r\n\r\nTìm kiếm sự chăm sóc sức khỏe sinh sản toàn diện tại', 0, 2, '2022-11-25 20:19:29', '2022-11-25 20:19:29'),
(6, 'Thiên', 'thien1pro1@gmail.com', 'bai viet tao lao', 0, 6, '2022-11-26 03:01:43', '2022-11-26 03:01:43'),
(7, 'Thiên', 'thien1pro1@gmail.com', 'bai viet tao lao', 0, 6, '2022-11-26 03:03:21', '2022-11-26 03:03:21'),
(8, 'thien', 'thien@gmail.com', 'ok', 0, 6, '2022-11-26 03:03:34', '2022-11-26 03:03:34'),
(9, 'thien', 'thien@gmail.com', 'bai viet rat bo ich, cam on benh vien', 0, 6, '2022-11-26 03:05:36', '2022-11-26 03:05:36'),
(10, 'Pham Hoang Hoc', 'hochochc@gmail.com', 'hehee', 0, 6, '2022-11-26 03:06:49', '2022-11-26 03:06:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files`
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
-- Đang đổ dữ liệu cho bảng `files`
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
-- Cấu trúc bảng cho bảng `medicines`
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
-- Đang đổ dữ liệu cho bảng `medicines`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
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
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` bigint(20) NOT NULL DEFAULT 6000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `positions`
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
-- Cấu trúc bảng cho bảng `posts`
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
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `short_Desc`, `content`, `image`, `categogy_id`, `views`, `name`, `status`) VALUES
(1, '2022-10-21 03:13:52', '2022-11-26 02:23:12', 'Đánh giá sức khỏe sinh sản tiền hôn nhân', '<p>Độ tuổi dưới 15 là&nbsp;<strong>“thời kì vàng”</strong>&nbsp;cho sự phát triển của trẻ sau này. Vì thế, việc khám tầm soát tổng quát định kỳ trong giai đoạn này là rất cần thiết. Điều này giúp bố mẹ có thể nắm bắt được quá trình tăng trưởng về thể chất lẫn tinh thần của con.</p>', '<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://127.0.0.1:8000/4e421070-234f-4c37-abc5-e982e36e948f\" width=\"1200\" />\r\n<figcaption>z</figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Độ tuổi dưới 15 là&nbsp;<strong>“thời kì vàng”</strong>&nbsp;cho sự phát triển của trẻ sau này. Vì thế, việc khám tầm soát tổng quát định kỳ trong giai đoạn này là rất cần thiết. Điều này giúp bố mẹ có thể nắm bắt được quá trình tăng trưởng về thể chất lẫn tinh thần của con.</p>\r\n\r\n<p>Các chuyên gia về lĩnh vực nhi khoa khuyến cáo: Dù trẻ có ốm yếu hay khỏe mạnh, bố mẹ vẫn cần cho trẻ khám sức khỏe định kỳ 6 tháng/1 lần đối với trẻ lớn và 2 – 4 tháng/1 lần đối với trẻ nhỏ.</p>\r\n\r\n<p>Thấu hiểu được điều đó,&nbsp;<strong>BV Phương Châu Sa Đéc</strong>&nbsp;mang đến&nbsp;“Gói khám tầm soát sức khoẻ trẻ em”&nbsp;với các ưu điểm:</p>\r\n\r\n<p>Giúp bố mẹ có thể theo dõi sát sao quá trình tăng trưởng của bé, đảm bảo không bỏ sót các hạng mục kiểm tra sức khỏe cần thiết theo độ tuổi của bé.</p>\r\n\r\n<p>Tầm soát để phát hiện sớm các dấu hiệu bệnh và điều trị kịp thời.</p>\r\n\r\n<p>Bác sĩ chuyên khoa Nhi sẽ tư vấn chi tiết về cách xây dựng chế độ dinh dưỡng hợp lý, lịch tiêm chủng và cách thức phòng tránh các bệnh lý thường gặp theo mùa.</p>\r\n\r\n<p>Tại&nbsp;<strong>Bệnh viện Phương Châu Sa Đéc</strong>&nbsp;có 3 loại gói khám phù hợp với độ tuổi và nhu cầu thăm khám khác nhau:</p>\r\n\r\n<ul>\r\n	<li><strong>Gói Khám sức khỏe tổng quát Nhi (01 tháng – 01 tuổi)</strong></li>\r\n	<li><strong>Gói Khám sức khỏe tổng quát Nhi (01 tuổi – 05 tuổi)</strong></li>\r\n	<li><strong>Gói Khám sức khỏe tổng quát Nhi (05 tuổi – 15 tuổi)</strong></li>\r\n</ul>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"2\"><strong>&nbsp;</strong><br />\r\n			<strong>STT</strong></td>\r\n			<td rowspan=\"2\"><strong>&nbsp;</strong><br />\r\n			<strong>DANH MỤC GÓI KHÁM</strong></td>\r\n			<td colspan=\"3\"><strong>&nbsp;</strong><br />\r\n			<strong>ĐỘ TUỔI</strong><br />\r\n			<strong>&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1 THÁNG – 1 TUỔI</strong></td>\r\n			<td><strong>1 TUỔI – 5 TUỔI</strong></td>\r\n			<td><strong>5 TUỔI – 15 TUỔI</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>KHÁM LÂM SÀNG VÀ TƯ VẤN</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Khám nhi và tư vấn tổng quát</strong><br />\r\n			Bác sĩ khám lâm sàng các bệnh lý và bất thường, tư vấn kết quả khám, tư vấn dinh dưỡng và tiêm ngừa</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><strong>Khám tai mũi họng</strong><br />\r\n			Khám và tư thế các vấn đề bệnh lý tai mũi họng: xoang, viêm thanh quản, amidan….</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>CẬN LÂM SÀNG</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td><strong>Tổng phấn tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td><strong>Tổng phân tích nước tiểu 10 thông số</strong><br />\r\n			Soi cặn lắng, tầm soát các bệnh đái tháo đường, đái nhạt, bệnh gan, thận, bệnh viêm đường tiết niệu, đái máu…</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td><strong>Đường huyết Glucose</strong><br />\r\n			Đánh giá tình trạng chuyển hóa đường, rối loạn dung nạp đường huyết trong cơ thể</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td><strong>Chức năng thận( Ure, Creatinine)</strong><br />\r\n			Đánh giá chức năng cầu thận, tầm soát bệnh lý về thận: thiếu năng thận, viêm cầu thận cấp, mạn, tắc mật, sỏi mật…</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td><strong>Chức năng gan( AST, ALT)</strong><br />\r\n			Đánh giá múc độ tổn thương màng tế bào gan. Tầm soát các bệnh lý về chức năng gan</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td><strong>Định lượng Protein toàn phần</strong><br />\r\n			Đánh giá tình trạng dinh dưỡng liên quan đến chuyển hóa đạm (protein)</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td><strong>Định lượng Albumin (máu)</strong><br />\r\n			Đánh giá tình trạng dinh dưỡng liên quan đến chuyển hóa đạm (Albumin)</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td><strong>Định lượng Mg</strong><br />\r\n			Định lượng vi chất Magie trong cơ thể</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td><strong>Định lượng ZN huyết thanh</strong><br />\r\n			Định lượng vi chất kẽm trong cơ thể</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td><strong>Định lượng Calci ion hóa</strong><br />\r\n			Đánh giá nồng độ calci trong máu góp phần trong quá trình tạo xương, thiếu dinh dưỡng…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td><strong>Định lượng Ferritin</strong><br />\r\n			Đánh giá tình trạng thiếu máu thiếu sắt, đánh giá những rối loạn chuyển hóa sắt trong cơ thể</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td><strong>HBsAg test nhanh</strong><br />\r\n			Tầm soát bệnh lý viêm gan siêu vi B</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td><strong>HbsAb định lượng</strong><br />\r\n			Kiểm tra định lượng kháng thể viêm gan B</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>CHẨN ĐOÁN HÌNH ẢNH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td><strong>Siêu âm ổ bụng</strong><br />\r\n			Kiểm tra các bất thường về hình dạng nội tạng, các bệnh lý trong ở bụng</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td><strong>Siêu âm tim và màng tim qua thành ngực</strong><br />\r\n			Kiểm tra các bất thường và bệnh lý ở tim</td>\r\n			<td>√</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td><strong>Siêu âm qua thóp</strong><br />\r\n			Kiểm tra các bất thường, chẩn đoán các bệnh lý của hệ thần kinh trung ương</td>\r\n			<td>√</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td><strong>Chụp X quang ngực thẳng</strong><br />\r\n			Kiểm tra các bất thường về tim, phổi.</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>1.370.000</strong></td>\r\n			<td><strong>1.280.000</strong></td>\r\n			<td><strong>2.260.000</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHI PHÍ ƯU ĐÃI&nbsp;</strong></td>\r\n			<td><strong>1.240.000&nbsp;</strong></td>\r\n			<td><strong>1.165.000&nbsp;</strong></td>\r\n			<td><strong>2.045.000&nbsp;</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Tổng đài 1900 54 54 66 (ấn phím 2)</strong>&nbsp;sẵn sàng hỗ trợ gia đình các thông tin cần thiết.</p>', '1669454481_goi-tam-soat-suc-khoe-tre-em.jpg', 0, 234, 'thien', 0),
(2, '2022-10-21 03:18:09', '2022-11-26 02:25:38', 'Xét nghiệm tinh dịch đồ - Semen Analysis', 'Sau 4 đợt bùng dịch tại Việt Nam, Covid-19 đã để lại nhiều đau thương và ảnh hưởng nghiêm trọng đến sức khỏe mọi nhà, trong đó. Hội chứng hậu Covid-19là một minh chứng cụ thể. Hội chứng hậu Covid-19 đặc biệt nghiêm trọng đối với người cao tuổi, người có bệnh nền, thai phụ và trẻ em', '<p><a href=\"https://sadec.phuongchau.com/goi-kham-suc-khoe-hau-covid-19-cho-nguoi-lon-va-tre-em/\"><img alt=\"gói khám sức khỏe hậu covid dành cho người lớn tại phương châu sa đéc\" height=\"722\" sizes=\"(max-width: 1020px) 100vw, 1020px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2022/03/goi-kham-suc-khoe-hau-covid-danh-cho-nguoi-lon-pcsd-scaled.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2022/03/goi-kham-suc-khoe-hau-covid-danh-cho-nguoi-lon-pcsd-scaled.jpg 2560w, https://sadec.phuongchau.com/wp-content/uploads/2022/03/goi-kham-suc-khoe-hau-covid-danh-cho-nguoi-lon-pcsd-scaled-500x354.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2022/03/goi-kham-suc-khoe-hau-covid-danh-cho-nguoi-lon-pcsd-scaled-800x566.jpg 800w\" width=\"1020\" /></a></p>\r\n\r\n<p>14<br />\r\nMar</p>\r\n\r\n<p>Sau 4 đợt bùng dịch tại Việt Nam, Covid-19 đã để lại nhiều đau thương và ảnh hưởng nghiêm trọng đến sức khỏe mọi nhà, trong đó&nbsp;<strong>Hội chứng hậu Covid-19</strong>&nbsp;là một minh chứng cụ thể.&nbsp;<strong>Hội chứng hậu Covid-19</strong>&nbsp;đặc biệt nghiêm trọng đối với người cao tuổi, người có bệnh nền, thai phụ và trẻ em.</p>\r\n\r\n<p>Thấu hiểu nhiều gia đình F0 khỏi bệnh có nhu cầu được tư vấn, thăm khám và điều trị&nbsp;<strong>Hội chứng hậu&nbsp;Covid-19</strong>, gói&nbsp;<strong>Khám Hậu&nbsp;Covid-19</strong>&nbsp;ra đời để đáp lại mong muốn vô cùng cấp thiết của các gia đình nhà Châu.</p>\r\n\r\n<p>Các gói&nbsp;<strong>Khám Hội chứng hậu Covid</strong>&nbsp;hiện có tại&nbsp;<strong>Phương châu Sa đéc</strong>&nbsp;dành cho đối tượng khách hàng người lớn &amp; trẻ em:</p>\r\n\r\n<p><strong>Gói khám dành cho người lớn:</strong></p>\r\n\r\n<p><em><strong>– Gói khám hậu SARS CoV2 gói số 01 (gói chỉ từ 2.510.000)</strong></em></p>\r\n\r\n<p><em><strong>– Gói khám hậu SARS CoV2 gói số 02 (gói chỉ từ 1.975.000)</strong></em></p>\r\n\r\n<p><strong>Gói khám dành cho trẻ em:</strong></p>\r\n\r\n<p><em><strong>– Gói khám hậu SARS CoV2_TRẺ EM (gói chỉ từ 1.235.000)</strong></em></p>\r\n\r\n<h2><strong>GÓI KHÁM HẬU SARS CoV 2 SỐ 01 &amp;&nbsp;</strong><strong>02</strong></h2>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>NỘI DUNG</strong></td>\r\n			<td><strong>SỐ 1</strong></td>\r\n			<td><strong>SỐ 2</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\"><strong>Khám lâm sàng và tư vấn</strong></td>\r\n			<td><strong>&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Khám nội khoa và tư vấn kết quả</strong><br />\r\n			Bác sĩ khám lâm sàng các bệnh lý và bất thường, tư vấn kết quả</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\"><strong>Cận lâm sàng</strong></td>\r\n			<td><strong>&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Định lượng CRP</strong><br />\r\n			Xác định và đánh giá tình trạng viêm hoặc nhiễm trùng</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Tổng phân tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><strong>Tổng phân tích nước tiểu 10 thông số</strong><br />\r\n			Soi cặn lắng, tầm soát các bệnh đái tháo đường, đái nhạt, bệnh gan, thận, viêm đường tiết niệu, đái máu…</td>\r\n			<td>√</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td><strong>Điện giải đồ ( Na, K, Cl, CA)</strong><br />\r\n			Kiểm tra các điện giải trong cơ thể</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td><strong>Chức năng thận ( Urê, Creatinine)</strong><br />\r\n			Tầm soát các bệnh lý về thận: thiểu năng thận, viêm cầu thận cấp, mạn, tắc mật, sỏi mật…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td><strong>Chức năng gan ( AST, ALT)</strong><br />\r\n			Tầm soát các bệnh về gan: Viêm gan cấp, mạn, tổn thương nhu mô gan…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td><strong>Men gan GGT</strong><br />\r\n			Kiểm tra men gan, tổn thương gan do bia rượu, thuốc</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Đường huyết Glucose<br />\r\n			Tầm soát đái tháo đường, hạ đường huyết, rối loạn chuyển hóa glucose</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td><strong>Định lượng HbA1c</strong><br />\r\n			Phản ánh tình trạng kiểm soát đường của bệnh nhân đang điều trị ĐTĐ, phát hiện sớm ĐTĐ..</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td><strong>Định lượng Ferritin</strong><br />\r\n			Chẩn đoán tình trạng thiếu máu thiếu sắt, rối loạn chuyển hóa sắt</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td><strong>Bộ mỡ 4 chỉ số ( Cholesterol, Triglycerid, HDL-C, LDL-C)</strong><br />\r\n			Phát hiện hội chứng rối loạn chuyển hóa lipid, nguy cơ xơ vữa động mạch, tăng huyết áp nhồi máu cơ tim.</td>\r\n			<td>√</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td><strong>Chức năng tuyến giáp (FT3, FT4, TSH)</strong><br />\r\n			Đánh giá chức năng tuyến giáp</td>\r\n			<td>√</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td><strong>Định lượng Fibrinogen</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td><strong>Thời gian prothrombin (PT: Prothrombin Time) bằng máy tự động</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td><strong>Thời gian thromboplastin một phần hoạt hóa (APTT: Activated Partial Thromboplastin Time)</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid.</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\"><strong>Chuẩn đoán hình ảnh</strong></td>\r\n			<td><strong>&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Điện tim thường</strong><br />\r\n			Kiểm tra nhịp tim, bệnh lý tim mạch…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Chụp X-quang ngực thẳng</strong><br />\r\n			Tầm soát lao và bệnh phổi, hình ảnh bóng tim</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><strong>Siêu âm doppler màu tim</strong><br />\r\n			Tầm soát các bệnh lý tim mạch, hở van tim, rối loạn nhịp, dịch màng ngoài tim..</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td><strong>Siêu âm ổ bụng</strong><br />\r\n			Tầm soát các bệnh lý sỏi thận, gan nhiễm mỡ, lách tụy, khảo sát tử cung, phần phụ, chức năng tiền liệt tuyến…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>2,760,000đ</strong></td>\r\n			<td><strong>2,170,000đ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHI PHÍ ƯU ĐÃI</strong></td>\r\n			<td><strong>2,510,000đ</strong></td>\r\n			<td><strong>1,975,000đ</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><strong>GÓI KHÁM HẬU SARS CoV 2_TRẺ EM</strong></h2>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>NỘI DUNG</strong></td>\r\n			<td><strong>TRẺ EM</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\"><strong>Khám lâm sàng và tư vấn</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Khám nhi và tư vấn tổng quát</strong><br />\r\n			Bác sĩ khám lâm sàng các bệnh lý và bất thường, tư vấn kết quả khám, tư vấn dinh dưỡng và tiêm ngừa</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\"><strong>Cận lâm sàng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><strong>Tổng phấn tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><strong>Chức năng thận (Ure, Creatinine)</strong><br />\r\n			Đánh giá chức năng cầu thận, tầm soát bệnh lý về thận: thiếu năng thận, viêm cầu thận cấp, mạn, tắc mật, sỏi mật …</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><strong>Chức năng gan (AST, ALT)</strong><br />\r\n			Đánh giá múc độ tổn thương màng tế bào gan. Tầm soát các bệnh lý về chức năng gan</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td><strong>Định lượng CRP</strong><br />\r\n			Xác định và đánh giá tình trạng viêm hoặc nhiễm trùng</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td><strong>Định lượng Fibrinogen</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td><strong>PT INR máu</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td><strong>Thời gian prothrombin (PT: Prothrombin Time) bằng máy tự động</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td><strong>Định lượng Ferritin</strong><br />\r\n			Chẩn đoán tình trạng thiếu máu thiếu sắt, rối loạn chuyển hóa sắt</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td><strong>Thời gian thromboplastin một phần hoạt hóa (APTT: Activated Partial Thromboplastin Time)</strong><br />\r\n			Rối loạn đông máu của bệnh nhân sau nhiễm Covid</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td><strong>Định lượng Mg</strong><br />\r\n			<em>Định lượng vi chất Magie trong cơ thể</em></td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td><strong>Định lượng ZN huyết thanh</strong><br />\r\n			<em>Định lượng vi chất kẽm trong cơ thể</em></td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td><strong>Định lượng Calci ion hóa</strong><br />\r\n			<em>Đánh giá nồng độ calci trong máu góp phần trong quá trình tạo xương, thiếu dinh dưỡng…</em></td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>1,345,000đ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHI PHÍ GÓI KHÁM SỨC KHỎE</strong></td>\r\n			<td><strong>1,235,000đ</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<blockquote>\r\n<p><em><strong>Khuyến mãi Khách hàng mua gói khám hậu COVID trẻ em: Giảm 5% dịch vụ khám Dinh dưỡng Nhi khoa cho trẻ. (HSD: 01 tháng sau khi mua gói)</strong></em></p>\r\n</blockquote>\r\n\r\n<p>Các gia đình cần hỗ trợ thêm thông tin từ bác sĩ&nbsp;<strong>Phương Châu</strong>&nbsp;về việc thăm khám các&nbsp;<strong>Hội chứng hậu Covid-19</strong>&nbsp;cũng như các vấn đề khác về sức khỏe có thể liên hệ qua&nbsp;<strong>Tổng đài&nbsp;1900 54 54 66&nbsp;(Phím 2)</strong></p>', '1669454738_goi-kham-suc-khoe-hau-covid-danh-cho-nguoi-lon-pcsd-scaled-800x566.jpg', 0, 2442, 'thien', 0),
(3, '2022-11-25 21:55:56', '2022-11-26 02:54:33', 'Chuyển phôi trữ lạnh – Frozen Embryo Transfer (FET)', 'Hiện nay, bệnh lý ung thư phụ khoa đang có xu hướng gia tăng và độ tuổi người bệnh đang ngày một trẻ hóa. Các triệu chứng của căn bệnh này thường khó nhận ra. Đừng để quá trễ, ngay từ bây giờ, các chị em phụ nữ cần có biện pháp phòng ngừa và phát hiện sớm, tránh nguy cơ mắc bệnh và tốn kém chi phí điều trị về sau.', '<p><a href=\"https://sadec.phuongchau.com/goi-tam-soat-ung-thu-phu-khoa/\"><img alt=\"Tầm Soát Ung Thư Phụ Khoa\" height=\"434\" sizes=\"(max-width: 738px) 100vw, 738px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/hieu-biet-ve-ung-thu-co-tu-cung-e1582108929410.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/hieu-biet-ve-ung-thu-co-tu-cung-e1582108929410.jpg 738w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/hieu-biet-ve-ung-thu-co-tu-cung-e1582108929410-500x294.jpg 500w\" width=\"738\" /></a></p>\r\n\r\n<p>22<br />\r\nNov</p>\r\n\r\n<h2><strong>GÓI TẦM SOÁT UNG THƯ PHỤ KHOA</strong></h2>\r\n\r\n<p><strong>Chủ động với sức khỏe của mình – Vì bạn là phụ nữ</strong></p>\r\n\r\n<p><strong>Hiện nay, bệnh lý ung thư phụ khoa đang có xu hướng gia tăng và độ tuổi người bệnh đang ngày một trẻ hóa. Các triệu chứng của căn bệnh này thường khó nhận ra. Đừng để quá trễ, ngay từ bây giờ, các chị em phụ nữ cần có biện pháp phòng ngừa và phát hiện sớm, tránh nguy cơ mắc bệnh và tốn kém chi phí điều trị về sau.</strong></p>\r\n\r\n<p>Một số loại ung thư phụ khoa phổ biến là: ung thư cổ tử cung, ung thư vú, ung thư buồng trứng, ung thư tử cung, ung thư âm hộ, ung thư âm đạo… Đây là những căn bệnh thường gặp, có tỉ lệ tử vong&nbsp;<strong>cao nhất</strong>&nbsp;trong các loại bệnh ung thư ở phụ nữ.</p>\r\n\r\n<p>Đa số phụ nữ Việt Nam ít có thói quen khám sức khỏe phụ khoa định kỳ do tâm lý e ngại, xấu hổ và nghĩ là “bệnh của phụ nữ”. Khi bệnh chuyển biến nặng thì đã quá muộn, các chị em phải tốn kém rất nhiều chi phí điều trị, tỷ lệ điều trị thành công lúc này không cao.</p>\r\n\r\n<h2><strong>Gói Tầm Soát Ung Thư Phụ Khoa của BV Phương Châu Sa Đéc sẽ đồng hành cùng chị, em phụ nữ:</strong></h2>\r\n\r\n<ul>\r\n	<li>Kiểm tra chức năng phụ khoa</li>\r\n	<li>Thực hiện xét nghiệm và cận lâm sàng cần thiết giúp phát hiện sớm các bệnh:&nbsp;<strong>ung thư cổ tử cung,</strong><strong>tử cung,&nbsp;buồng trứng,&nbsp;ung thư vú</strong>. Đồng thời, các bệnh lý lây truyền qua đường tình dục, có thể dẫn đến nguy cơ ung thư phụ khoa cao rất cần được kiểm tra, phát hiện &amp; điều trị kịp thời, dứt điểm.</li>\r\n</ul>\r\n\r\n<h2><strong>Vì sao chọn Tầm Soát Ung Thư Phụ Khoa tại BV Phương Châu Sa Đéc ?</strong></h2>\r\n\r\n<p>Tại ĐBSCL hiện nay, Phương Châu đã được nhiều khách hàng lựa chọn là nơi tầm soát sức khỏe nói chung và tầm soát ung thư phụ khoa nói riêng với:</p>\r\n\r\n<ul>\r\n	<li><em>Máy móc, trang thiết bị y tế hiện đại với độ chính xác cao.</em></li>\r\n	<li><em>Đội ngũ Bác sĩ có nhiều năm kinh nghiệm trong điều trị các bệnh lý phụ khoa.</em></li>\r\n	<li><em>Các gói khám được thiết kế dành riêng cho từng lứa tuổi (21 – 65 tuổi), đáp ứng nhu cầu thăm khám đa dạng của các chị em.</em></li>\r\n	<li><em>Hợp tác chuyên môn với các bệnh viện uy tín trong nước và quốc tế.</em></li>\r\n	<li><em>Điều trị, chăm sóc người bệnh toàn diện, phối hợp đa chuyên khoa.</em></li>\r\n</ul>\r\n\r\n<h3><strong>NỘI DUNG GÓI KHÁM TẦM SOÁT UNG THƯ PHỤ KHOA</strong></h3>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>HẠNG MỤC&nbsp;</strong></td>\r\n			<td>\r\n			<p><strong>CƠ BẢN</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>TIÊU CHUẨN</strong></p>\r\n\r\n			<p><strong>(Viêm nhiễm tái phát)</strong></p>\r\n			</td>\r\n			<td><strong>NÂNG CAO</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>KHÁM LÂM SÀN VÀ TƯ VẤN&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1</strong></td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td>Miễn phí</td>\r\n			<td>&nbsp;Miễn phí</td>\r\n			<td>Miễn phí</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2</strong></td>\r\n			<td><strong>Khám và Tư vấn Phụ Khoa</strong><br />\r\n			Phát hiện và kiểm tra các bệnh viêm nhiễm đường sinh dục, u xơ tử cung, ung thư cổ tử cung, ….</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3</strong></td>\r\n			<td><strong>Khám và Tư vấn Nhũ khoa</strong><br />\r\n			Kiểm tra tuyến vú: Phát hiện các bệnh lý tuyến vú, ung thư vú …</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>CHUẨN ĐOÁN HÌNH ẢNH</strong>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>4</strong></td>\r\n			<td><strong>Siêu âm tuyến vú 2 bên</strong><br />\r\n			Tầm soát bệnh lý tuyến vú, khối u, nang trong vùng ngực…</td>\r\n			<td>&nbsp;√</td>\r\n			<td>&nbsp;√</td>\r\n			<td>&nbsp;√</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>5</strong></td>\r\n			<td><strong>Chụp nhũ ảnh 2 bên</strong><br />\r\n			Tầm soát bệnh lý tuyến vú, khối u, nang, phát triển tổn thương kích thước nhỏ, tầm soát ung thư</td>\r\n			<td>&nbsp;</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>6</strong></td>\r\n			<td><strong>Siêu âm tử cung buồng trứng qua đường âm đạo</strong><br />\r\n			Phát triển u nang, u xơ, polyp buồng tử cung</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>7</strong></td>\r\n			<td><strong>Soi cổ tử cung</strong><br />\r\n			Kiểm tra tổn thương bề mặt, cổ tử cung, viêm lộ tuyến cổ tử cung, tiền ung thư…</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n			<td>√</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\"><strong>CÁC XÉT NGHIỆM TẦM SOÁT&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>8</strong></td>\r\n			<td><strong>Vi khuẩn nhuộm soi (dịch)</strong><br />\r\n			Xét nghiệm tìm nguyên nhân viêm nhiễm âm đạo do vi khuẩn, nấm..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>9</strong></td>\r\n			<td><strong>Xét nghiệm tế bào học bằng phương pháp Liqui Prep</strong><br />\r\n			Tầm soát Ung thư Cổ tử cung</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>10</strong></td>\r\n			<td><strong>HPV Genotype</strong><br />\r\n			Xác định các loại virus có khả năng gây ung thư CTC</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>11</strong></td>\r\n			<td><strong>Chlamydia real – time PCR</strong><br />\r\n			Tầm soát bệnh viêm nhiễm cho vi khuẩn Chlamydia</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>12</strong></td>\r\n			<td><strong>Nesseria gonorrhoeae real – time PCR</strong><br />\r\n			Tầm soát viêm nhiễm do vi khuẩn lậu</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>13</strong></td>\r\n			<td><strong>Định lượng CA 12.5</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư buồng trứng</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>14</strong></td>\r\n			<td><strong>Định lượng CA 15.3</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư vú</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>15</strong></td>\r\n			<td><strong>Tổng phân tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>1.990.000đ</strong></td>\r\n			<td><strong>3.690.000đ</strong></td>\r\n			<td><strong>4.160.000đ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>GIÁ GÓI KHÁM SỨC KHỎE</strong></td>\r\n			<td><strong>1.790.000đ</strong></td>\r\n			<td><strong>3.320.000đ</strong></td>\r\n			<td><strong>3.745.000đ</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Ưu đãi 10% tất cả gói khám tầm soát sức khỏe</strong></p>\r\n\r\n<p>Chọn quà thay cho tình yêu thương, cần là những sự lựa chọn ý nghĩa, tinh tế và cần thiết đối với người nhận. Hơn nữa, đó còn là tấm lòng và sự quan tâm của những đứa con dành trọn vẹn cho ba mẹ và những người thương yêu của mình.</p>\r\n\r\n<p><strong>Những Món Quà Sức Khỏe Giúp Ta Bày Tỏ Yêu Thương Bằng Hành Động</strong></p>\r\n\r\n<h2><strong>ĐỐI TƯỢNG SỬ DỤNG GÓI TẦM SOÁT</strong></h2>\r\n\r\n<p>– Khách hàng có nhu cầu có thể thực hiện sàng lọc bệnh lý về ung thư phụ khoa (cổ tử cung, tử cung, buồng trứng), bệnh lý phụ khoa khác.<br />\r\n– Các khách hàng có nguy cơ cao mắc các bệnh về ung thư – đặc biệt là khách hàng tiền sử gia đình có bệnh lý ung thư phụ khoa.<br />\r\n– Phụ nữ đã từng quan hệ tình dục.</p>\r\n\r\n<h3><strong>Lưu ý khi sử dụng Gói Tầm Soát&nbsp;Ung Thư Phụ Khoa</strong></h3>\r\n\r\n<p>– Các kết quả xét nghiệm có thể âm tính giả hoặc dương tính giả. Các Bác sĩ chuyên khoa sẽ xem xét các trường hợp cụ thể để đưa ra tư vấn thích hợp cho từng khách hàng.<br />\r\n– Các hạng mục dịch vụ phát sinh do bác sĩ tư vấn và chỉ định ngoài hạng mục của gói khám khách hàng sẽ thanh toán thêm nếu đồng ý thực hiện</p>\r\n\r\n<p><strong>Để biết thêm thông tin về Gói tầm soát, quý khách hàng vui lòng liên hệ:</strong><br />\r\n<em>– Tổng Đài Tư vấn &amp; CSKH&nbsp;<strong>1900 54 54 66 ( Phím 2 )</strong></em><br />\r\n<em>– Tương tác qua Facebook BV Phương Châu Sa Đéc</em><br />\r\n<em>(<a href=\"https://www.facebook.com/phuongchausadec\">facebook.com/bvphuongchausadec</a>)</em><br />\r\n<em>– Hoặc Đến Quầy Chăm Sóc Khách Hàng BV Phương Châu Sa Đéc để được tư vấn trực tiếp</em></p>', '1669456473_hieu-biet-ve-ung-thu-co-tu-cung-e1582108929410.jpg', 0, 1312, 'thien', 0);
INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `short_Desc`, `content`, `image`, `categogy_id`, `views`, `name`, `status`) VALUES
(4, '2022-11-26 02:56:36', '2022-11-26 02:56:36', 'Hỗ trợ phôi thoát màng – Assisted Hatching (AH)', 'Kiểm tra sức khỏe tổng quát đóng một vai trò quan trọng trong việc tầm soát mầm bệnh ngay cả trong trường hợp bạn không có bất kì dấu hiệu hay triệu chứng nào của bệnh. Ngoài việc phát hiện bệnh sớm và có hướng điều trị kịp thời, đúng cách; việc khám sức khỏe định kỳ còn giúp bạn đánh giá sức khỏe bản thân, từ đó điều chỉnh lối sống phù hợp.', '<p><a href=\"https://sadec.phuongchau.com/goi-tam-soat-suc-khoe-tong-quat/\"><img alt=\"goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky\" height=\"534\" sizes=\"(max-width: 1020px) 100vw, 1020px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky.jpg 1200w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky-500x262.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2021/05/goi-tam-soat-suc-khoe-tong-quat-tam-soat-dinh-ky-800x419.jpg 800w\" width=\"1020\" /></a></p>\r\n\r\n<p>22<br />\r\nNov</p>\r\n\r\n<h3><strong>GÓI KHÁM TẦM SOÁT SỨC KHỎE TỔNG QUÁT</strong></h3>\r\n\r\n<p><strong>Tầm soát sức khỏe định kỳ – vì chất lượng cuộc sống của bạn&nbsp;</strong></p>\r\n\r\n<p><strong>Kiểm tra sức khỏe tổng quát đóng một vai trò quan trọng trong việc tầm soát mầm bệnh ngay cả trong trường hợp bạn không có bất kì dấu hiệu hay triệu chứng nào của bệnh. Ngoài việc phát hiện bệnh sớm và có hướng điều trị kịp thời, đúng cách; việc khám sức khỏe định kỳ còn giúp bạn đánh giá sức khỏe bản thân, từ đó điều chỉnh lối sống phù hợp.&nbsp;</strong></p>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<h5><em><img alt=\"goi-tam-soat-suc-khoe-tong-quat\" height=\"400\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2021/05/goi-tam-soat-suc-khoe-tong-quat-667x400.png\" width=\"667\" />Người trên 18 tuổi nên khám sức khỏe tổng quát định kỳ 06 tháng/1 lần</em></h5>\r\n\r\n<p><strong>Gói Khám Tầm Soát Sức Khỏe Tổng Quát</strong>&nbsp;của BV Phương Châu Sa Đéc được thiết kế khoa học, phù hợp với nhu cầu và tình hình sức khoẻ của từng người bệnh, nhờ đó giúp phát hiện sớm và điều trị kịp thời nhằm giảm chi phí điều trị, kiểm soát rủi ro, đặc biệt là các bệnh lý nguy hiểm, đe dọa tính mạng, ảnh hưởng tới chất lượng cuộc sống.</p>\r\n\r\n<h3><strong><em>HẠNG MỤC GÓI TẦM SOÁT SỨC KHỎE TỔNG QUÁT&nbsp;</em></strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Gói khám tổng quát cho nam</strong></li>\r\n	<li><strong>Gói khám tổng quát cho nữ</strong></li>\r\n</ul>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>HẠNG&nbsp;MỤC&nbsp;</strong></td>\r\n			<td><strong>NAM</strong></td>\r\n			<td><strong>NỮ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>KHÁM LÂM SÀNG VÀ TƯ VẤN</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1</strong></td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2</strong></td>\r\n			<td><strong>Khám nội khoa và tư vấn kết quả</strong><br />\r\n			Bác sĩ khám lâm sàng các bệnh lý và bất thường, tư vấn kết quả</td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>XÉT NGHIỆM</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3</strong></td>\r\n			<td><strong>Tổng phân tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>4</strong></td>\r\n			<td><strong>Chức năng thận ( Urê, Creatinine )</strong><br />\r\n			Tầm soát các bệnh lý về thận: thiểu năng thận, viêm cầu thận cấp, mạn, tắc mật, sỏi mật…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>5</strong></td>\r\n			<td><strong>Chức năng gan ( AST, ALT)</strong><br />\r\n			Tầm soát các bệnh về gan: Viêm gan cấp, mạn, tổn thương nhu mô gan..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>6</strong></td>\r\n			<td><strong>Men gan GGT</strong><br />\r\n			Kiểm tra men gan, tổn thương gan do bia rượu, thuốc</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>7</strong></td>\r\n			<td><strong>Đường huyết Glucose</strong><br />\r\n			Tầm soát đái tháo đường, hạ đường huyết, rối loạn chuyển hóa glucose</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>số 8</strong></td>\r\n			<td><strong>Định lượng HbA1c</strong><br />\r\n			Phản ánh tình trạng kiểm soát đường của bệnh nhân đang điều trị ĐTĐ, phát hiện sớm ĐTĐ..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>9</strong></td>\r\n			<td><strong>Định lượng Acid uric</strong><br />\r\n			Tầm soát bệnh gout</td>\r\n			<td><strong>√</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>10</strong></td>\r\n			<td><strong>Điện giải đồ ( Na, K, Cl, Ca)</strong><br />\r\n			Kiểm tra các điện giải trong cơ thể</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>11</strong></td>\r\n			<td><strong>Tổng phân tích nước tiểu 10 thông số</strong><br />\r\n			Soi cặn lắng, tầm soát các bệnh đái tháo đường, đái nhạt, bệnh gan, thận, viêm đường tiết niệu, đái máu..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>12</strong></td>\r\n			<td><strong>Bộ mỡ 4 chỉ số ( Cholesterol, Triglycerid, HDL-C, LDL-C)</strong><br />\r\n			Phát hiện hội chứng rối loạn chuyển hóa lipid, nguy cơ xơ vữa động mạch, tăng huyết áp nhồi máu cơ tim.</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>13</strong></td>\r\n			<td><strong>Chức năng tuyến giáp (FT3, FT4, TSH)</strong><br />\r\n			Đánh giá chức năng tuyến giáp</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHẨN ĐOÁN HÌNH ẢNH</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>14</strong></td>\r\n			<td><strong>Siêu âm ổ bụng</strong><br />\r\n			Tầm soát các bệnh lý sỏi thận, gan nhiễm mỡ, lách tụy, khảo sát tử cung, phần phụ, chức năng tiền liệt tuyến…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>15</strong></td>\r\n			<td><strong>Chụp X-quang ngực thẳng</strong><br />\r\n			Tầm soát lao và bệnh phổi, hình ảnh bóng tim</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>16</strong></td>\r\n			<td><strong>Điện tim thường</strong><br />\r\n			Kiểm tra nhịp tim, bệnh lý tim mạch..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>&nbsp;1.870.000</strong></td>\r\n			<td><strong>1.830.000&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHI PHÍ GÓI KHÁM SỨC KHỎE</strong></td>\r\n			<td><strong>&nbsp;1.705.000&nbsp;</strong></td>\r\n			<td><strong>1.665.000</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3><strong><em>HẠNG MỤC GÓI TẦM SOÁT SỨC KHỎE TỔNG QUÁT TOÀN DIỆN</em></strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Gói Khám sức khỏe toàn diện – Tiêu chuẩn</strong></li>\r\n	<li><strong>Gói Khám sức khỏe toàn diện – Premium Nữ</strong></li>\r\n	<li><strong>Gói Khám sức khỏe toàn diện – Premium Nam</strong></li>\r\n</ul>\r\n\r\n<table id=\"customers\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>HẠNG&nbsp;MỤC&nbsp;</strong></td>\r\n			<td><strong>TIÊU CHUẨN</strong></td>\r\n			<td colspan=\"2\"><strong>PHƯƠNG CHÂU</strong><br />\r\n			<strong>PREMIUM</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>NAM&nbsp;</strong></td>\r\n			<td><strong>NỮ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>KHÁM LÂM SÀNG VÀ TƯ VẤN</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1</strong></td>\r\n			<td><strong>Kiểm tra chiều cao, cân nặng, mạch, BMI</strong><br />\r\n			Đánh giá cân nặng, chiều cao…</td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2</strong></td>\r\n			<td><strong>Khám nội khoa và tư vấn kết quả</strong><br />\r\n			Bác sĩ khám lâm sàng các bệnh lý và bất thường, tư vấn kết quả</td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n			<td><strong>&nbsp;√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CẬN LÂM SÀNG</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3</strong></td>\r\n			<td><strong>Tổng phân tích tế bào máu ngoại vi bằng máy đếm laser</strong><br />\r\n			Tầm soát bệnh thiếu máu, bệnh lý về máu và cơ quan tạo máu, suy tủy, ung thư máu, phân tích 5 thành phần bạch cầu</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>4</strong></td>\r\n			<td><strong>Chức năng thận ( Ure, Creatinine)</strong><br />\r\n			Tầm soát các bệnh lý về thận: thiểu năng thận, viêm cầu thận cấp, mạn, tắc mật, sỏi mật…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>5</strong></td>\r\n			<td><strong>Chức năng gan ( AST, ALT)</strong><br />\r\n			Tầm soát các bệnh về gan: Viêm gan cấp, mạn, tổn thương nhu mô gan..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>6</strong></td>\r\n			<td><strong>Men gan GGT</strong><br />\r\n			Kiểm tra men gan, tổn thương gan do bia rượu, thuốc</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>7</strong></td>\r\n			<td><strong>Đường huyết Glucose</strong><br />\r\n			Tầm soát đái tháo đường, hạ đường huyết, rối loạn chuyển hóa glucose</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>số 8</strong></td>\r\n			<td><strong>Định lượng HbA1c</strong><br />\r\n			Phản ánh tình trạng kiểm soát đường của bệnh nhân đang điều trị ĐTĐ, phát hiện sớm ĐTĐ…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>9</strong></td>\r\n			<td><strong>Định lượng Ferritin</strong><br />\r\n			Chẩn đoán tình trạng thiếu máu thiếu sắt, rối loạn chuyển hóa sắt</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>11</strong></td>\r\n			<td><strong>Điện giải đồ ( Na, K, Cl, Ca)</strong><br />\r\n			Kiểm tra các điện giải trong cơ thể</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>12</strong></td>\r\n			<td><strong>Tổng phân tích nước tiểu 10 thông số</strong><br />\r\n			Soi cặn lắng, tầm soát các bệnh đái tháo đường, đái nhạt, bệnh gan, thận, viêm đường tiết niệu, đái máu…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>13</strong></td>\r\n			<td><strong>Định lượng Acid uric</strong><br />\r\n			Tầm soát bệnh gout</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>14</strong></td>\r\n			<td><strong>Bộ mỡ 4 chỉ số ( Cholesterol, Triglycerid, HDL-C, LDL-C)</strong><br />\r\n			Phát hiện hội chứng rối loạn chuyển hóa lipid, nguy cơ xơ vữa động mạch, tăng huyết áp nhồi máu cơ tim.</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>15</strong></td>\r\n			<td><strong>HBsAg miễn dịch tự động</strong><br />\r\n			Tầm soát bệnh lý viêm gan siêu vi B</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>16</strong></td>\r\n			<td><strong>HbsAb định lượng</strong><br />\r\n			Kiểm tra lượng kháng thể viêm gan B</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>17</strong></td>\r\n			<td><strong>HCV test nhanh</strong><br />\r\n			Tầm soát bệnh lý viêm gan siêu vi C</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>18</strong></td>\r\n			<td><strong>Chức năng tuyến giáp (FT3, FT4, TSH)</strong><br />\r\n			Đánh giá chức năng tuyến giáp</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>19</strong></td>\r\n			<td><strong>Định lượng CA 19.9, CEA, CA 72.4)</strong><br />\r\n			Các dấu ấn sàng lọc nguy cơ ung thư đường tiêu hóa, dạ dày, đại tràng, phổi.</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>20</strong></td>\r\n			<td><strong>Định lượng Cyfra 21.1</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư phổi</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>21</strong></td>\r\n			<td><strong>Định lượng AFP</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư gan</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>22</strong></td>\r\n			<td><strong>Định lượng CA 12.5</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư buồng trứng</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>23</strong></td>\r\n			<td><strong>Định lượng CA 15.3</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư vú</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>24</strong></td>\r\n			<td><strong>Định lượng CA PSA</strong><br />\r\n			Dấu ấn sàng lọc nguy cơ ung thư tuyến tiền liệt</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHẨN ĐOÁN HÌNH ẢNH</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>25</strong></td>\r\n			<td><strong>Siêu âm ổ bụng</strong><br />\r\n			Tầm soát các bệnh lý sỏi thận, gan nhiễm mỡ, lách tụy, khảo sát tử cung, phần phụ, chức năng tiền liệt tuyến…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>26</strong></td>\r\n			<td><strong>Siêu âm doppler màu tim</strong><br />\r\n			Tầm soát các bệnh lý tim mạch, hở van tim, rối loạn nhịp, dịch màng ngoài tim…</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>27</strong></td>\r\n			<td><strong>Chụp X-quang ngực thẳng</strong><br />\r\n			Tầm soát lao và bệnh phổi, hình ảnh bóng tim</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>28</strong></td>\r\n			<td><strong>Siêu âm tuyến vú hai bên</strong><br />\r\n			Tầm soát bệnh lý tuyến vú, khối u, nang trong vùng ngực</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>29</strong></td>\r\n			<td><strong>Siêu âm tuyến giáp</strong><br />\r\n			Tầm soát bệnh lý tuyến giáp: bướu giáp đơn thuần, cường giáp, ung thư tuyến giáp</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>30</strong></td>\r\n			<td><strong>Chụp X-quang cột sống thắt lưng</strong><br />\r\n			Chần đoán bệnh lý cột sống thắt lưng: thoái hóa, chấn thương, gai xương…</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>31</strong></td>\r\n			<td><strong>Điện tim thường</strong><br />\r\n			Kiểm tra nhịp tim, bệnh lý tim mạch..</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>32</strong></td>\r\n			<td><strong>Khám và nội soi tai mũi họng</strong><br />\r\n			Tầm soát bệnh lý tai mũi họng, tầm soát ung thư vòm, dây thanh, thanh quản…</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>√</strong></td>\r\n			<td><strong>√</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TỔNG CHI PHÍ DỊCH VỤ</strong></td>\r\n			<td><strong>3.040.000</strong></td>\r\n			<td><strong>5.060.000</strong></td>\r\n			<td><strong>5.575.000</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CHI PHÍ ƯU ĐÃI</strong></td>\r\n			<td><strong>&nbsp;2.695.000</strong></td>\r\n			<td><strong>&nbsp;4.510.000</strong></td>\r\n			<td><strong>&nbsp;4.975.000</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3><strong>Đặc biệt:&nbsp;</strong><strong>luôn có những ưu đãi dành riêng cho khách hàng của Phương Châu:</strong></h3>\r\n\r\n<p>– Tiết kiệm&nbsp;chi phí dành cho khách hàng thân thuộc sở hữu thẻ&nbsp;<strong>Phuong Chau Care</strong></p>\r\n\r\n<p>– Tặng thẻ<strong>&nbsp;Phuong Chau Care</strong>&nbsp;sử dụng cho các dịch vụ chăm sóc sức khoẻ tại&nbsp;<strong>Phương Châu</strong>&nbsp;trong 01 năm đối với khách hàng chưa sở hữu thẻ trước đây khi sử dụng gói khám trị giá từ&nbsp;<strong>2.000.000 đồng</strong></p>\r\n\r\n<p><em><strong>*Không áp dụng đồng thời với các ưu đãi khác</strong></em></p>\r\n\r\n<p><strong>THÔNG TIN CÁC GÓI TẦM SOÁT SỨC KHOẺ:</strong><br />\r\n<strong>1</strong>.&nbsp;&nbsp;&nbsp;<strong>Gói Tầm Soát Sức Khỏe Cơ Bản:</strong>&nbsp;Tầm soát các yếu tố nguy cơ của các bệnh lý thường gặp (Viêm gan siêu vi, tăng huyết áp, đái tháo đường, các bệnh truyền nhiễm, các dấu hiệu, các rối loạn mỡ máu,…), đánh giá tình trạng chung của sức khỏe.</p>\r\n\r\n<ul>\r\n	<li>Tình trạng tim mạch, hô hấp, tiêu hóa,…</li>\r\n	<li>Phát hiện sớm và ngăn chặn các dấu hiệu rối loạn mỡ máu, viêm gan siêu vi, tăng huyết áp, đái tháo đường,…</li>\r\n</ul>\r\n\r\n<p>Dựa vào kết quả bác sĩ sẽ đưa ra các biện pháp điều trị, cách phòng ngừa các bệnh lý một cách phù hợp.</p>\r\n\r\n<p><strong>2.&nbsp; Gói Tầm Soát Sức Khỏe Tiêu Chuẩn:&nbsp;</strong>Ngoài tầm soát các bệnh lý thường gặp, gói khám được thiết kế tập trung vào các đối tượng có nhiều yếu tố nguy cơ liên quan đến các bệnh lý nguy hiểm như: Thần kinh, tim mạch, các bệnh về nội tiết:</p>\r\n\r\n<ul>\r\n	<li>Tầm soát bệnh đái tháo đường, hạ đường huyết,…</li>\r\n	<li>Tầm soát bệnh lý tim mạch, van tim, cơ tim, nhồi máu cơ tim.</li>\r\n	<li>Tầm soát tình trạng máu, rối loạn chuyển hóa sắt.</li>\r\n	<li>Tầm soát ung thư tuyến giáp, bướu cổ.</li>\r\n</ul>\r\n\r\n<p><strong>3.&nbsp;</strong>&nbsp;<strong>Gói Tầm Soát Sức Khỏe Cao Cấp Dành Cho Nam Và Nữ:&nbsp;</strong>Gói khám có sự phân chia giữa nam và nữ, giúp tầm soát các bệnh lý liên quan về giới tính. Người trên 40 tuổi được khuyến cáo nên sử dụng gói dịch vụ Premium. Gói khám tầm soát được các bệnh lý có thể dẫn đến ung thư phổ biến ( ung thư vú, tuyến tiền liệt, đại tràng, cổ tử cung,..) và tầm soát được các yếu tố suy thoái ở những người cao tuổi.</p>\r\n\r\n<ul>\r\n	<li><strong>Dành cho nam:</strong>&nbsp;Tầm soát ung tiền liệt tuyến</li>\r\n	<li><strong>Dành cho nữ:</strong>&nbsp;Tầm soát các bệnh lý về nhũ, các dấu hiệu ung thư buồng trứng, tử cung, ung thư vú,…</li>\r\n</ul>\r\n\r\n<p><strong>Để biết thêm thông tin về Gói tầm soát, quý khách hàng vui lòng liên hệ:</strong></p>\r\n\r\n<p><em>–&nbsp;Tổng Đài&nbsp;Tư vấn &amp; CSKH&nbsp;<strong>1900 54 54 66 ( Phím 2 )</strong></em></p>\r\n\r\n<p><em>– Tương tác qua Facebook BV Phương Châu Sa Đéc</em></p>\r\n\r\n<p><em>(&nbsp;<a href=\"https://www.facebook.com/phuongchausadec/\">facebook.com/bvphuongchausadec</a>&nbsp;)</em></p>\r\n\r\n<p><em>– Hoặc Đến Quầy Chăm Sóc Khách Hàng BV Phương Châu Sa Đéc để được tư vấn trực tiếp</em></p>', 'default.jpg', 0, 1244, 'thien', 0),
(5, '2022-11-26 02:58:27', '2022-11-26 02:58:27', 'Siêu âm theo dõi phát triển nang noãn – Ultrasound Scans', 'Thấu hiểu những khó nhọc từ khi mang thai đến ngày vượt cạn, Phương Châu Sa Đéc không ngừng đổi mới và hoàn thiện để trải nghiệm mang thai của người mẹ là một hành trình trọn vẹn. Thông qua hợp tác với Tập đoàn y tế Kishokai , Phương Châu đã tiếp nhận chuyển giao những đổi mới và kỹ thuật y khoa tiến bộ của nền y tế Nhật Bản đến với người dân Sa Đéc', '<p><a href=\"https://sadec.phuongchau.com/tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can/\"><img alt=\"tận hưởng hành trình sanh an toàn - yên tâm chờ ngày vượt cạn\" height=\"534\" sizes=\"(max-width: 1020px) 100vw, 1020px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2022/05/tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2022/05/tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can.jpg 1200w, https://sadec.phuongchau.com/wp-content/uploads/2022/05/tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can-500x262.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2022/05/tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can-800x419.jpg 800w\" width=\"1020\" /></a></p>\r\n\r\n<p>16<br />\r\nMay</p>\r\n\r\n<p>Thấu hiểu những khó nhọc từ khi mang thai đến ngày vượt cạn,&nbsp;<strong>Phương Châu Sa Đéc</strong>&nbsp;không ngừng đổi mới và hoàn thiện để trải nghiệm mang thai của người mẹ là một hành trình trọn vẹn. Thông qua hợp tác với&nbsp;<strong>Tập đoàn y tế Kishokai</strong>, Phương Châu đã tiếp nhận chuyển giao những đổi mới và kỹ thuật y khoa tiến bộ của&nbsp;<em><strong>nền y tế Nhật Bản đến với người dân Sa Đéc</strong></em>.</p>\r\n\r\n<p>Tại xứ sở mặt trời mọc, quá trình chăm sóc toàn diện cho mẹ &amp; bé được tuân thủ an toàn chặt chẽ, tỉ mỉ và quan tâm từ những điều nhỏ nhặt nhất. Các gia đình sẽ không còn lo lắng hay bỡ ngỡ để tận hưởng hành trình mang thai đầy ý nghĩa.</p>\r\n\r\n<h2><strong>Những ưu điểm trong chăm sóc mẹ và bé theo tiêu chuẩn Nhật Bản tại Phương Châu:</strong></h2>\r\n\r\n<h3><strong>1. Kết nối sớm ngay từ lúc mang thai:</strong></h3>\r\n\r\n<p>Đội ngũ tư vấn sức khỏe sẽ hỗ trợ, đồng hành kết nối cá nhân khi khách hàng thực hiện tạm ứng chi phí sinh.</p>\r\n\r\n<h3><strong>2. Sanh không đau an toàn:</strong></h3>\r\n\r\n<p>Kết hợp các liệu giảm đau giúp người mẹ giữ được sức lực và tinh thần thật tốt để chuẩn bị cho quá trình rặn sinh diễn ra thuận lợi và chu đáo hơn.</p>\r\n\r\n<h3><strong>3. Phòng Sanh Thân Thiện dành tặng cho tất cả sản phụ sanh thường tại Phương Châu:</strong></h3>\r\n\r\n<ul>\r\n	<li>Người thân đồng hành vượt cạn</li>\r\n	<li>Massage, bấm huyệt giảm đau chuyển dạ</li>\r\n	<li>Ngâm chân với nước ấm thư giãn trước sanh</li>\r\n	<li>Ngồi bóng hỗ trợ cuộc sanh thuận lợi</li>\r\n</ul>\r\n\r\n<p><strong>Xem thêm&nbsp;<a href=\"https://sadec.phuongchau.com/diem-noi-bat-khi-sanh-thuong/\">Điểm nổi bật sanh thường</a>&nbsp;tại đây</strong></p>\r\n\r\n<h3><strong>4. Chăm sóc mẹ và bé sau sanh:</strong></h3>\r\n\r\n<ul>\r\n	<li>Bé được da kề da với mẹ nhiều giờ sau sanh</li>\r\n	<li>Tiêm Vitamin K1, Lao &amp; Viêm gan B cho bé trong những ngày đầu sau sinh</li>\r\n	<li>Hướng dẫn bé bú mẹ đúng cách và tạo thói quen bú sớm</li>\r\n</ul>\r\n\r\n<p><strong>Xem thêm&nbsp;<a href=\"https://sadec.phuongchau.com/cham-soc-me-va-be-sau-sanh-tai-phuong-chau/\">chăm sóc mẹ và bé sau sanh</a>&nbsp;tại đây</strong></p>\r\n\r\n<h3><strong>4. Dịch vụ tiện ích hậu sản:</strong></h3>\r\n\r\n<ul>\r\n	<li>Massage thảo dược cho bé</li>\r\n	<li>Tắm và theo dõi cân nặng cho bé mỗi ngày</li>\r\n	<li>Suất ăn dinh dưỡng nội trú</li>\r\n	<li>Tầm soát sức khỏe sơ sinh: Kiểm tra vàng da không xâm lấn &amp; Chiếu đèn điều trị, kiểm tra thính lực sơ sinh, lấy máu gót chân tầm soát các bệnh lý sơ sinh, siêu âm tim thóp não trước xuất viện…</li>\r\n</ul>\r\n\r\n<h3><strong>5. Quà tặng xuất viện:</strong></h3>\r\n\r\n<ul>\r\n	<li>Bộ thẻ Phương Châu với nhiều ưu đãi chăm sóc sức khỏe giá trị cho mẹ &amp; bé</li>\r\n	<li>Túi tím Phương Châu cùng khung ảnh kỷ niệm cho bé</li>\r\n</ul>\r\n\r\n<p>* Không bó buộc mẹ bầu vào những khung dịch vụ sanh trọn gói sẵn có</p>\r\n\r\n<p>* Tự do chọn những dịch vụ tốt nhất, phù hợp nhất cho tình trạng sức khỏe thai kỳ của mình hoặc điều kiện kinh tế của gia đình</p>\r\n\r\n<p>Các đình có thể xem thêm&nbsp;<a href=\"https://sadec.phuongchau.com/bang-gia-sanh-tai-phuong-chau-sa-dec/\"><strong>Bảng giá sanh tại BV Phương Châu Sa Đéc</strong></a>&nbsp;trong bài viết.</p>\r\n\r\n<p>* Với mong muốn tạo điều kiện để các gia đình tiếp cận gần hơn với dịch vụ chuẩn quốc tế,&nbsp;<strong>từ nay đến 31/12/2022</strong>, các gia đình bầu sẽ&nbsp;<strong>“TIẾT KIỆM THÊM 2 TRIỆU ĐỒNG khi TẠM ỨNG CHI PHÍ SANH”</strong>&nbsp;tại&nbsp;<strong>Phương Châu Sa Đéc</strong>. Gia đình mình sẽ không còn phải lo lắng vì đã có đội tư vấn sức khỏe trong suốt quá trình mang thai và chuẩn bị những thứ cần thiết để hành trình đón bé chu đáo hơn, nhẹ nhàng hơn.</p>\r\n\r\n<p>Thông tin chi tiết về quà tặng hoặc các&nbsp;<strong>dịch vụ Sản khoa</strong>&nbsp;an toàn, các gia đình liên hệ đến&nbsp;<strong>Tổng đài&nbsp;<a href=\"tel:1900 54 54 66\">1900 54 54 66</a>&nbsp;(ấn phím 2)</strong>&nbsp;để được hỗ trợ tư vấn.</p>', '1669456707_tan-huong-hanh-trinh-sanh-an-toan-yen-tam-cho-ngay-vuot-can.jpg', 0, 1324, 'thien', 0),
(6, '2022-11-26 02:59:33', '2022-11-26 02:59:33', 'Phẫu thuật lấy tinh trùng từ tinh hoàn (mào tinh) – PESA', 'Không khí nôn nao đón mùa xuân mới 2022 trong sẽ trở nên ý nghĩa hơn với những món quà sức khỏe ý nghĩa được trao tay. Những món quà từ sự quan tâm và chăm sóc sức khỏe trong thời điểm này sẽ cần thiết hơn bao giờ hết.', '<p><a href=\"https://sadec.phuongchau.com/qua-tang-suc-khoe-dau-nam-2022/\"><img alt=\"quà tặng sức khỏe đầu năm 2022\" height=\"680\" sizes=\"(max-width: 1020px) 100vw, 1020px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2022/01/qua-tang-suc-khoe-dau-nam-2022.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2022/01/qua-tang-suc-khoe-dau-nam-2022.jpg 1600w, https://sadec.phuongchau.com/wp-content/uploads/2022/01/qua-tang-suc-khoe-dau-nam-2022-500x333.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2022/01/qua-tang-suc-khoe-dau-nam-2022-800x534.jpg 800w\" width=\"1020\" /></a></p>\r\n\r\n<p>24<br />\r\nJan</p>\r\n\r\n<p><strong>Không khí nôn nao đón mùa xuân mới 2022 trong sẽ trở nên ý nghĩa hơn với những món quà sức khỏe ý nghĩa được trao tay. Những món quà từ sự quan tâm và chăm sóc sức khỏe trong thời điểm này sẽ cần thiết hơn bao giờ hết.</strong></p>\r\n\r\n<p>Phiếu quà tặng là các gói khám, tầm soát sức khỏe dùng để tặng người thân, bạn bè, đối tác, khách hàng… thay cho lì xì đầu năm là một gợi ý hữu ích cho bạn, là cách bày tỏ tình yêu thương và sự quan tâm của mỗi chúng ta với những người thân yêu.</p>\r\n\r\n<h2><strong>CÁC GÓI KHÁM TẦM SOÁT SỨC KHỎE HIỆN CÓ TẠI PHƯƠNG CHÂU PHÙ HỢP CÁC NHU CẦU SỬ DỤNG HOẶC BIẾU, TẶNG DỊP ĐẦU NĂM:</strong></h2>\r\n\r\n<p>– Gói Khám Sức Khỏe Tổng Quát – Toàn Diện (gói chỉ từ&nbsp;<strong>1.190.000đ</strong>)</p>\r\n\r\n<p>– Gói Tầm Soát Ung Thư Phụ Khoa (gói chỉ từ&nbsp;<strong>1.090.000đ</strong>)</p>\r\n\r\n<p>– Gói Tầm Soát Sức Khỏe Dành Cho Trẻ Em</p>\r\n\r\n<p>– Gói Khám Tiền Hôn Nhân</p>\r\n\r\n<p>– Các Gói Khám Tầm Soát Bệnh Lý Chuyên Khoa: Tim Mạch, Huyết Áp, Gan Mật, Tiêu Hóa, Đái Tháo Đường…</p>\r\n\r\n<p>– Đặc biệt có Gói Khám Tầm Soát Sức Khỏe Hậu COVID-19 cho người lớn và trẻ em</p>\r\n\r\n<h3>*&nbsp;<strong>TẶNG KÈM THEO MỖI GÓI 01 LẦN TÁI KHÁM CHUYÊN KHOA</strong>&nbsp;cho khách hàng sử dụng gói khám</h3>\r\n\r\n<h3>*&nbsp;<strong>HẠN SỬ DỤNG</strong>: 02 tháng kể từ ngày mua gói khám</h3>\r\n\r\n<p><img alt=\"uu-dai-qua-tang-suc-khoe-dau-nam-2022\" height=\"1200\" sizes=\"(max-width: 849px) 100vw, 849px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2022/01/uu-dai-qua-tang-suc-khoe-dau-nam-2022.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2022/01/uu-dai-qua-tang-suc-khoe-dau-nam-2022.jpg 849w, https://sadec.phuongchau.com/wp-content/uploads/2022/01/uu-dai-qua-tang-suc-khoe-dau-nam-2022-500x707.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2022/01/uu-dai-qua-tang-suc-khoe-dau-nam-2022-800x1131.jpg 800w\" width=\"849\" /></p>\r\n\r\n<h3>*&nbsp;<strong>NHỮNG LƯU Ý KHI SỬ DỤNG</strong>:</h3>\r\n\r\n<p>– Phiếu quà tặng có giá trị sử dụng 1 lần và không quy đổi thành tiền mặt</p>\r\n\r\n<p>– Vui lòng mang theo phiếu quà tặng khi đến sử dụng các Gói khám tại BVQT Phương Châu</p>\r\n\r\n<p>– Có thể mua tặng phiếu quà tặng cho người thân, bạn bè, đồng nghiệp, đối tác, khách hàng…</p>\r\n\r\n<p>Để được tư vấn theo nhu cầu sử dụng, vui lòng liên hệ số điện thoại:&nbsp;<a href=\"tel:0854 466 499\"><strong>0854 466 499</strong></a>&nbsp;(Bp.Khám sức khỏe-BLVP) hoặc Zalo qua số:&nbsp;<strong>0854 466 499</strong></p>\r\n\r\n<p>Chắp cánh cho những yêu thương chạm tới trái tim, hãy trao tặng những món quà ngày đầu năm thiết thực và ý nghĩa nhất, bạn nhé!</p>\r\n\r\n<h3><strong>ĐẦU NĂM MỚI MẺ</strong></h3>\r\n\r\n<h3><strong>“LÌ XÌ” SỨC KHỎE</strong></h3>\r\n\r\n<h3><strong>CẢ NĂM ĐỀU KHỎE</strong></h3>\r\n\r\n<h3><strong>AN YÊN VUI VẺ</strong></h3>', '1669456773_qua-tang-suc-khoe-dau-nam-2022.jpg', 0, 2333, 'thien', 0),
(7, '2022-11-26 03:17:07', '2022-11-26 03:17:07', 'QUY TRÌNH THĂM KHÁM HIẾM MUỘN', 'Nước mũi của trẻ đổi màu khiến bố mẹ lo lắng không yên. Cơ chế đổi màu nước mũi có liên quan mật thiết tới những bệnh hô hấp từ đơn giản tới phức tạp như: viêm mũi dị ứng, viêm mũi bội nhiễm, dị vật mũi,… Và thông qua “màu nước mũi”, ba mẹ có thể xác định được phần nào tình trạng bệnh của trẻ để xử lí kịp thời.', '<p><a href=\"https://sadec.phuongchau.com/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con/\"><img alt=\"ba mẹ nhìn màu sắc nước mũi dự đoán sức khỏe con\" height=\"765\" sizes=\"(max-width: 1020px) 100vw, 1020px\" src=\"https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-1067x800.jpg\" srcset=\"https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-1067x800.jpg 1067w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-533x400.jpg 533w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-768x576.jpg 768w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-1536x1152.jpg 1536w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-500x375.jpg 500w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-800x600.jpg 800w, https://sadec.phuongchau.com/wp-content/uploads/2022/11/ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con.jpg 1600w\" width=\"1020\" /></a></p>\r\n\r\n<p>23<br />\r\nNov</p>\r\n\r\n<p><em>Nước mũi của trẻ đổi màu khiến bố mẹ lo lắng không yên. Cơ chế đổi&nbsp;<strong>màu nước mũi</strong>&nbsp;có liên quan mật thiết tới những bệnh hô hấp từ đơn giản tới phức tạp như: viêm mũi dị ứng, viêm mũi bội nhiễm, dị vật mũi,… Và thông qua “màu nước mũi”, ba mẹ có thể xác định được phần nào tình trạng bệnh của trẻ để xử lí kịp thời.</em></p>\r\n\r\n<p><em>Ba mẹ nhìn&nbsp;<strong>màu sắc nước mũi</strong>&nbsp;có thể dự đoán được tình trạng sức khỏe con như thế nào? Mời Quý gia đình cùng&nbsp;<a href=\"https://sadec.phuongchau.com/\">Phương Châu</a>&nbsp;tham khảo thêm tại bài viết dưới đây nhé.</em></p>\r\n\r\n<h2><strong>Nước mũi màu trắng trong</strong></h2>\r\n\r\n<p>Trẻ chảy nước mũi màu trắng trong, loãng khá phổ biến. Lúc này, trẻ đang ở trạng thái khỏe mạnh và ba mẹ không nên lo lắng. Dịch mũi ở dạng này là cách cơ thể ngăn ngừa và loại bỏ các hạt bụi nhỏ, vi khuẩn, virus từ ngoài môi trường ra khỏi mũi, để chúng không đi vào phổi.</p>\r\n\r\n<p>Nếu thấy dịch mũi dạng nhầy, trong nhưng đặc quánh thì có thể trẻ đang gặp phải tình trạng dị ứng mãn tính. Hội chứng này làm khoang mũi bị tắc nghẽn hoặc sưng viêm niêm mạc.</p>\r\n\r\n<h2><strong>Nước mũi màu trắng đục</strong></h2>\r\n\r\n<p>Nước mũi màu trắng đục là biểu hiện nghẹt mũi do:</p>\r\n\r\n<ul>\r\n	<li>Mất nước</li>\r\n	<li>Dị ứng</li>\r\n	<li>Dấu hiệu của bệnh cảm lạnh</li>\r\n</ul>\r\n\r\n<p>Hiện tượng này xảy ra khi các tế bào lông mũi bị tổn thương, dịch nhầy sẽ giảm tiết, mất đi độ ẩm và trở nên trắng đục. Trong trường hợp này, ba mẹ nên cho trẻ:</p>\r\n\r\n<ul>\r\n	<li>Uống thật nhiều nước</li>\r\n	<li>Rửa mũi bằng dung dịch nước muối sinh lý để giúp làm ẩm niêm mạc mũi, rửa trôi những tác nhân lạ từ môi trường.</li>\r\n</ul>\r\n\r\n<h2><strong>Nước mũi màu hồng, đỏ hay nâu</strong></h2>\r\n\r\n<p>Nước mũi màu hồng, đỏ hay nâu đều là dấu hiệu cho thấy có máu trong mũi của trẻ. Điều này đồng nghĩa với việc mũi đang tổn thương do bị trầy xước niêm mạc mũi. Khô mũi hoặc ho quá nhiều cũng có thể khiến các mạch máu trong mũi dễ dàng bị vỡ, gây xuất huyết. Làm nước mũi chuyển màu. Nước mũi màu hồng, đỏ là dấu hiệu mới chảy máu. Màu nâu là máu đã bị khô lại.</p>\r\n\r\n<p>Các bác sĩ khuyến cáo nếu sau 30 phút mà máu không ngừng chảy thì cần đưa trẻ đến bệnh viện. Điều này cần đặc biệt lưu ý, nhất là đối với trẻ nhỏ.</p>\r\n\r\n<p>Nếu máu khô lại khiến nước mũi có sắc nâu. Hãy vệ sinh bằng bông sâu kèn có thấm nước muối sinh lý để loại bỏ máu khô, làm ẩm và cân bằng sinh lí niêm mạc mũi cho trẻ.</p>\r\n\r\n<h2><strong>Nước mũi màu vàng</strong></h2>\r\n\r\n<p>Nếu nước mũi có màu vàng, trẻ có thể bị cảm lạnh hoặc viêm mũi giai đoạn nặng. Khi phần niêm mạc mũi bị viêm nhiễm, các tế bào bạch cầu sẽ tập trung tại khu vực đó và lẫn vào trong dịch mũi. Từ đó, khiến màu nước mũi chảy ra là màu vàng.</p>\r\n\r\n<p>Khi trẻ mới chảy nước mũi màu vàng, lựa chọn nước muối có chứa các thành phần tự nhiên giúp kháng viêm, kháng khuẩn là an toàn hơn cả so với việc sử dụng thuốc kháng sinh. Đặc biệt với trẻ sơ sinh, các cơ quan trong chưa được hoàn thiện, dễ bị tổn thương nếu dùng thuốc không đúng cách.</p>\r\n\r\n<p>Nếu trẻ bị nghẹt mũi, chảy nước mũi màu vàng trong hơn 2 tuần, ba mẹ nên đưa trẻ đến cơ sở y tế thăm khám.</p>\r\n\r\n<h2><strong>Nước mũi màu xanh lá cây</strong></h2>\r\n\r\n<p>Khi thấy màu nước mũi ngả dần sang màu xanh lá cây thì đây là biểu hiện hệ miễn dịch của trẻ đang hoạt động “tích cực” nhằm chống lại các tác nhân gây nhiễm trùng. Dịch mũi lúc này đặc quánh cùng với xác của các tế bào bạch cầu bị tiêu diệt tạo thành dịch nhầy màu xanh.</p>\r\n\r\n<p>Nếu nước mũi chuyển xanh lá cây liên tục trong 12 ngày kèm sốt, buồn nôn, nôn. Ba mẹ nên đưa trẻ tới ngay các cơ sở y tế. Bởi, đây là biểu hiện của bệnh viêm xoang hoặc các bệnh lý nhiễm trùng.</p>\r\n\r\n<h2><strong>Nước mũi màu đen</strong></h2>\r\n\r\n<p>Nước mũi màu đen là biểu hiện của của nấm trong khoang mũi. Nấm có xu hướng bám lại ở những mô chết. Do vậy, nếu dịch mũi bị tích tụ ở những vị trí này sẽ tạo môi trường thuận lợi cho nấm phát triển và gây bệnh viêm xoang do nấm. Đây là bệnh hiếm gặp ở trẻ. Tuy nhiên, nếu thấy trẻ chảy nước mũi màu đen, ba mẹ nên đưa ngay đến bệnh viện thăm khám.</p>\r\n\r\n<p><em>Rất mong bài viết trên đã phần nào giúp ba mẹ giải đáp được màu sắc nước mũi của trẻ.</em></p>\r\n\r\n<p><strong>Ba mẹ có thể Liên hệ đến Tổng đài&nbsp;<a href=\"tel:1900545466\">1900 54 54 66 (phím 2)</a>&nbsp;hoặc liên hệ qua fanpage:&nbsp;<a href=\"https://www.facebook.com/phuongchausadec\">Bệnh Viện Phương Châu Sa Đéc</a>&nbsp;để được tư vấn thêm các thông tin cần thiết.</strong></p>', '1669457827_ba-me-nhin-mau-sac-nuoc-mui-du-doan-suc-khoe-con-1067x800.jpg', 0, 122, 'thien', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
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
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Phòng 1', '2', NULL, NULL),
(2, 'Phòng 2', '2', NULL, NULL),
(3, 'Phòng 3', '2', NULL, NULL),
(4, 'Phòng 4', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
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
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `position_id`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Nguyễn Đăng Thiên', 'thien1pro1@gmail.com', '1669447502_thien.jpg', NULL, 0, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', 'bB57Ihz4uS3TcNSFMuuU1fepuhcYM91g96Eo0ELf6nLvlcuPAJQ4yOt3fErJ', '2022-10-06 09:51:23', '2022-11-26 00:25:02', ''),
(2, 'Phạm Hoàng Học', 'hoc@gmail.com', '1669448031_hoc.jpg', NULL, 1, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', NULL, '2022-10-07 09:33:54', '2022-11-26 00:33:51', ''),
(3, 'Lê Phú Cường', 'thien1pr@gmail.com', '1669448179_cuong.jpg', NULL, 2, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', NULL, '2022-11-25 22:16:05', '2022-11-26 00:36:19', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `asks`
--
ALTER TABLE `asks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categogies`
--
ALTER TABLE `categogies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `asks`
--
ALTER TABLE `asks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `categogies`
--
ALTER TABLE `categogies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
