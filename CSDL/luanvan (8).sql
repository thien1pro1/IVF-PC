-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 09:32 AM
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
CREATE DATABASE IF NOT EXISTS `luanvan` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `luanvan`;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `wife_name`, `hus_name`, `phone`, `email`, `wife_birthday`, `hus_birthday`, `register_date`, `register_time`, `room_id`, `status`, `message`, `result`, `created_at`, `updated_at`) VALUES
(1, 'Tiểu kiều', 'Chu Du', '0987654321', 'chudu@gmail.com', '2022-10-17', '2022-10-17', '2022-10-17', '07:00:00', 2, 1, NULL, NULL, '2022-10-17 01:50:31', '2022-10-18 10:24:17'),
(2, 'Kim Yến', 'Hoàng Học', '0987567435', 'hoc@gmail.com', '2000-06-07', '2000-02-24', '2022-10-21', '07:30:00', NULL, 0, 'Tôi bị yếu', NULL, '2022-10-20 11:29:11', '2022-10-20 11:29:11'),
(3, 'Trần Mai Phương', 'Đặng Nhật Nam', '9078456784', 'nam@gmail.com', '2022-10-04', '2022-10-19', '2022-10-04', '08:30:00', NULL, 0, NULL, NULL, '2022-10-20 11:32:29', '2022-10-20 11:32:29'),
(4, 'Nguyễn Ngọc Trân', 'Thiên', '0585253470', 'thien1pro1@gmail.com', '2022-09-26', '2022-09-28', '2022-09-28', '10:00:00', NULL, 0, NULL, NULL, '2022-10-20 22:01:04', '2022-10-20 22:01:04'),
(5, 'Trần Bích Chi', 'Châu Thuận Thiên', '0354677900', 'chi@gmail.com', '2022-10-21', '2022-10-21', '2022-10-20', '07:00:00', 3, 2, NULL, NULL, '2022-10-20 22:01:46', '2022-10-20 23:51:57'),
(6, 'Phan Thị Trúc Linh', 'Trần Phát', '0678234567', 'phat@gmail.com', '2022-10-21', '2022-10-21', '2022-10-21', '07:00:00', 3, 3, NULL, NULL, '2022-10-20 22:02:33', '2022-10-20 22:04:26'),
(7, 'a', 'b', '0987654321', 'a@gmail.com', '2022-10-14', '2022-09-30', '2022-10-30', '07:00:00', NULL, 3, 'cc', NULL, '2022-10-21 05:12:37', '2022-10-21 06:07:19'),
(8, 'c', 'd', '6666777788', 'c@gmail.com', '2022-10-21', '2022-10-21', '2022-10-30', '07:30:00', 2, 2, NULL, 'xong', '2022-10-21 05:13:22', '2022-11-14 09:30:06'),
(9, 'e', 'f', '8888999900', 'c@gmail.com', '2022-10-13', '2022-10-21', '2022-10-30', '07:00:00', 2, 1, NULL, NULL, '2022-10-21 05:13:56', '2022-10-21 21:04:07'),
(10, 'h', 'c', '5555666677', 'c@gmail.com', '2022-10-21', '2022-10-21', '2022-10-30', '07:00:00', 3, 1, NULL, NULL, '2022-10-21 05:25:10', '2022-10-21 21:04:18'),
(11, 'Nguyễn Thị Huyền Trang', 'Lâm Trọng Khánh', '0987564325', 'thien1pro1@gmail.com', '2022-11-09', '2022-11-10', '2022-11-30', '07:00:00', 1, 1, NULL, NULL, '2022-11-06 08:26:42', '2022-11-06 08:26:47'),
(12, 'Lâm Khánh Vy', 'hà Hữu Sĩ', '0987564325', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-11-30', '15:00:00', NULL, 1, 'Tôi cần dịch vụ hỗ trợ sinh ', NULL, '2022-11-06 08:27:01', '2022-11-06 08:27:01'),
(13, 'Trần Diệu Mỹ', 'Lê Quang Thái', '0987564325', 'thai@gmail.com', '1996-11-08', '1993-11-15', '2022-11-30', '15:00:00', NULL, 2, 'Tôi cần dịch vụ hỗ trợ sinh ', 'thai ky binh thuong', '2022-11-06 08:27:01', '2022-11-15 00:10:50'),
(14, 'Phan Triệu Vy', 'Tôn Văn Nghị ', '0987556935', 'vy@gmail.com', '1996-03-08', '1993-07-15', '2022-11-27', '15:00:00', NULL, 1, 'Tôi cần dịch vụ hỗ trợ sinh ', NULL, '2022-11-06 08:27:01', '2022-11-06 08:27:01'),
(15, 'Nguyễn Thị Ngọc', 'Nguyễn Đăng Thiên', '0585253470', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-10-30', '09:00:00', 1, 2, 'Tôi cần dịch vụ hỗ trợ sinh ', 'Tiếp nhận chăm sóc CarePlus, Đảm bảo sức khỏe cho vợ', '2022-11-06 08:27:01', '2022-11-06 08:27:01'),
(16, 'Nguyễn Thị Ngọc', 'Nguyễn Đăng Thiên', '0585253470', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-11-05', '09:00:00', 3, 2, 'Kiểm tra sức khỏe cho vợ định kì ', 'Tình trặng thai nhi bình thường', '2022-11-06 08:27:01', '2022-11-06 08:27:01'),
(17, 'Nguyễn Thị Ngọc', 'Nguyễn Đăng Thiên', '0585253470', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-11-17', '09:00:00', NULL, 2, 'Kiểm tra sức khỏe cho vợ định kì ', 'Tình trặng thai nhi bình thường', '2022-11-06 08:27:01', '2022-11-06 08:27:01'),
(18, 'Nguyễn Thị Ngọc', 'Nguyễn Đăng Thiên', '0585253470', 'thien1pro1@gmail.com', '1996-11-08', '1993-11-15', '2022-11-30', '09:00:00', NULL, 2, 'Tôi cần dịch vụ hỗ trợ sinh ', 'Tình trặng thai nhi bình thường', '2022-11-06 08:27:01', '2022-11-06 08:27:01');

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
(1, 'Đảm bảo sức khỏe sau sinh', 'các chế độ ăn, tập luyện và hồi phục sau sinh cho mẹ 1', 1, NULL, '2022-10-20 21:34:14'),
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
(5, 'sa13Ofthai@gmail.com', 'sa', '13', 'storage/sa_file/sa13Ofthai@gmail.com', '2022-11-15 01:23:29', '2022-11-15 01:23:29');

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
(20, '2022_11_14_142208_create_files_table', 6);

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
(1, 'Giám đốc', 6000000, '2022-10-20 20:30:13', '2022-10-20 20:30:13'),
(2, 'Bác Sĩ', 6000000, '2022-10-20 20:30:21', '2022-10-20 20:30:21'),
(3, 'Y tá', 6000000, '2022-10-20 20:40:43', '2022-10-20 20:40:43'),
(4, 'Nhân viên marketing', 6000000, '2022-10-20 20:40:59', '2022-10-20 20:40:59');

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
  `views` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'thien',
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `short_Desc`, `content`, `image`, `categogy_id`, `views`, `name`, `status`) VALUES
(1, '2022-10-21 03:13:52', '2022-10-21 03:13:52', 'Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt', '<h2>(Dân trí) - Trong suốt 3 thập kỷ, Dr.Marie là người bạn đồng hành đáng tin cậy của nhiều thế hệ phụ nữ Việt nhờ những nỗ lực trong việc hỗ trợ chăm sóc sức khỏe sinh sản và kế hoạch hóa gia đình.</h2>', '<p><strong>Thực trạng vấn đề chăm sóc sức khỏe sinh sản tại Việt Nam</strong></p>\r\n\r\n<p>Tại Việt Nam, sức khỏe sinh sản (SKSS) và kế hoạch hóa gia đình là một vấn đề ngày càng được chú trọng và quan tâm. Đặc biệt về mặt quyền lợi của người phụ nữ trong việc sinh con, được chăm sóc toàn diện về thể chất lẫn tinh thần trong thời gian thai kỳ.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929241.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 1\" /></p>\r\n\r\n<p>Dr.Marie đặt quyền lợi của phụ nữ lên hàng đầu.</p>\r\n\r\n<p>Chính vì đó, đã có nhiều đơn vị tại Việt Nam đã nỗ lực không ngừng để bảo vệ sức khỏe, tinh thần của phụ nữ Việt Nam, một trong số đó là Dr. Marie - Cơ sở chăm sóc sức khỏe sinh sản &amp; Kế hoạch hóa Gia đình theo tiêu chuẩn Anh Quốc tại Việt Nam. Được thành lập từ năm 1994, Dr.Marie là thương hiệu do MSI Reproductive Choices đăng ký bảo hộ toàn cầu, vận hành theo tiêu chuẩn quốc tế dưới sự giám sát kỹ thuật và đào tạo liên tục của MSI tại Việt Nam.</p>\r\n\r\n<p>MSI Reproductive Choices (MSI) là một tổ chức phi chính phủ quốc tế, ra đời năm 1976 tại London, Vương quốc Anh, chuyên cung cấp dịch vụ chăm sóc sức khỏe sinh sản và kế hoạch hóa gia đình tại 37 quốc gia trên toàn thế giới. Hệ thống MSI trên toàn cầu bao gồm: 620 điểm cung ứng, 52.000 điểm hỗ trợ lưu động, 4.100 phòng khám nhượng quyền xã hội và hơn 11.700 nhân viên.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929555.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 2\" /></p>\r\n\r\n<p>Dr.Marie sở hữu hệ thống trang thiết bị hiện đại tiêu chuẩn quốc tế.</p>\r\n\r\n<p>Những năm qua nhờ nhận được nguồn lực từ tổ chức quốc tế MSI, Dr. Marie hỗ trợ chăm sóc điều trị các vấn đề về sức khỏe sinh sản bằng chất lượng điều trị tiêu chuẩn quốc tế, hệ thống trang thiết bị hiện đại, đội ngũ bác sĩ, chuyên gia trình độ cao và giàu kinh nghiệm. Mỗi năm, Dr. Marie trợ giúp chăm sóc sức khỏe toàn diện cho hơn 50.000 phụ nữ Việt mọi độ tuổi thông qua hệ thống 12 cơ sở tại 9 tỉnh, thành phố.</p>\r\n\r\n<p><strong>Luôn đề cao trách nhiệm xã hội</strong></p>\r\n\r\n<p>Trong quá trình 28 năm phát triển, Dr. Marie đã không ngừng mở rộng quy mô, hoàn thiện và đa dạng hóa các quy trình hoạt động để hiện thực hóa các mục tiêu nhân đạo của mình. Đó chính là việc đem đến cho phụ nữ Việt Nam sự chăm sóc toàn diện nhất, góp phần xây dựng một thế hệ sau khỏe mạnh và tiến bộ hơn. Bằng những nỗ lực không ngừng nghỉ, Dr. Marie cam kết đảm bảo quyền lợi cho phụ nữ để sinh con theo lựa chọn, và tuyệt đối sẽ ko thỏa hiệp về các tiêu chuẩn an toàn tối thiểu.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929751.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 3\" /></p>\r\n\r\n<p>Dr.Marie đào tạo cho các nữ hộ sinh địa phương trong dự án MSLadies.</p>\r\n\r\n<p>Thời gian qua, do tác động của đại dịch Covid-19, hệ thống y tế tại Việt Nam trở nên quá tải, dẫn tới việc người dân gặp nhiều khó khăn hơn khi muốn tiếp cận các dịch vụ y tế cần thiết, nhất là đối với phụ nữ khi dịch vụ chăm sóc sức khỏe sinh sản không được ưu tiên trong giai đoạn này.</p>\r\n\r\n<p>Không đầu hàng nghịch cảnh, Dr. Marie đã nỗ lực đảm bảo các cơ sở chăm sóc sức khỏe, sinh sản được vận hành liên tục thông qua việc đẩy mạnh các phương thức liên lạc trực tuyến, tối giản quy trình hỗ trợ đảm bảo công tác phòng dịch được đặt lên hàng đầu. Nhờ những cố gắng này, nhiều phụ nữ Việt Nam ở mọi lứa tuổi đã được thăm khám Sản phụ khoa, Tầm soát Ung thư cổ tử cung và thực hiện các biện pháp Chăm sóc sức khỏe sinh sản đầy đủ và kịp thời ngay cả trong mùa dịch.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929905.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 4\" /></p>\r\n\r\n<p>Dr. Marie mang dịch vụ đến với nữ công nhân trong khuôn khổ dự án hợp tác với MSI.</p>\r\n\r\n<p>Hiện tại, khi Việt Nam đã bước vào giai đoạn phục hồi sau đại dịch, Dr.&nbsp;Marie&nbsp;cùng MSI Reproductive Choices nỗ lực mở rộng hệ thống cơ sở chăm sóc sức khỏe sinh sản, nhằm đem đến sự hỗ trợ kịp thời cho mọi đối tượng trong xã hội. Qua những kinh nghiệm trải qua khó khăn trong thời điểm đại dịch, Dr. Marie cũng đã xây dựng được các phương án đối phó rủi ro, giúp hệ thống linh hoạt hơn khi chịu tác động tiêu cực từ môi trường bên ngoài.</p>\r\n\r\n<p>Hành trình của Dr. Marie là hành trình không ngừng nỗ lực mang đến niềm tin, điểm tựa cho hàng triệu phụ nữ Việt Nam. Không có điều gì là dễ dàng, Dr. Marie luôn sẵn sàng với mọi thử thách để thay đổi tư duy của xã hội, để SKSS và KHHGĐ trở thành lĩnh vực được ưu tiên hơn nữa trong tương lai.</p>\r\n\r\n<p>Tìm kiếm sự chăm sóc sức khỏe sinh sản toàn diện tại:</p>', '1666347232_about1.jpg', 1, 2, 'thien', 0),
(2, '2022-10-21 03:18:09', '2022-10-21 03:18:09', 'Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt', 'Trong suốt 3 thập kỷ, Dr.Marie là người bạn đồng hành đáng tin cậy của nhiều thế hệ phụ nữ Việt nhờ những nỗ lực trong việc hỗ trợ chăm sóc sức khỏe sinh sản và kế hoạch hóa gia đình', '<p><strong>Thực trạng vấn đề chăm sóc sức khỏe sinh sản tại Việt Nam</strong></p>\r\n\r\n<p>Tại Việt Nam, sức khỏe sinh sản (SKSS) và kế hoạch hóa gia đình là một vấn đề ngày càng được chú trọng và quan tâm. Đặc biệt về mặt quyền lợi của người phụ nữ trong việc sinh con, được chăm sóc toàn diện về thể chất lẫn tinh thần trong thời gian thai kỳ.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929241.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 1\" /></p>\r\n\r\n<p>Dr.Marie đặt quyền lợi của phụ nữ lên hàng đầu.</p>\r\n\r\n<p>Chính vì đó, đã có nhiều đơn vị tại Việt Nam đã nỗ lực không ngừng để bảo vệ sức khỏe, tinh thần của phụ nữ Việt Nam, một trong số đó là Dr. Marie - Cơ sở chăm sóc sức khỏe sinh sản &amp; Kế hoạch hóa Gia đình theo tiêu chuẩn Anh Quốc tại Việt Nam. Được thành lập từ năm 1994, Dr.Marie là thương hiệu do MSI Reproductive Choices đăng ký bảo hộ toàn cầu, vận hành theo tiêu chuẩn quốc tế dưới sự giám sát kỹ thuật và đào tạo liên tục của MSI tại Việt Nam.</p>\r\n\r\n<p>MSI Reproductive Choices (MSI) là một tổ chức phi chính phủ quốc tế, ra đời năm 1976 tại London, Vương quốc Anh, chuyên cung cấp dịch vụ chăm sóc sức khỏe sinh sản và kế hoạch hóa gia đình tại 37 quốc gia trên toàn thế giới. Hệ thống MSI trên toàn cầu bao gồm: 620 điểm cung ứng, 52.000 điểm hỗ trợ lưu động, 4.100 phòng khám nhượng quyền xã hội và hơn 11.700 nhân viên.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929555.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 2\" /></p>\r\n\r\n<p>Dr.Marie sở hữu hệ thống trang thiết bị hiện đại tiêu chuẩn quốc tế.</p>\r\n\r\n<p>Những năm qua nhờ nhận được nguồn lực từ tổ chức quốc tế MSI, Dr. Marie hỗ trợ chăm sóc điều trị các vấn đề về sức khỏe sinh sản bằng chất lượng điều trị tiêu chuẩn quốc tế, hệ thống trang thiết bị hiện đại, đội ngũ bác sĩ, chuyên gia trình độ cao và giàu kinh nghiệm. Mỗi năm, Dr. Marie trợ giúp chăm sóc sức khỏe toàn diện cho hơn 50.000 phụ nữ Việt mọi độ tuổi thông qua hệ thống 12 cơ sở tại 9 tỉnh, thành phố.</p>\r\n\r\n<p><strong>Luôn đề cao trách nhiệm xã hội</strong></p>\r\n\r\n<p>Trong quá trình 28 năm phát triển, Dr. Marie đã không ngừng mở rộng quy mô, hoàn thiện và đa dạng hóa các quy trình hoạt động để hiện thực hóa các mục tiêu nhân đạo của mình. Đó chính là việc đem đến cho phụ nữ Việt Nam sự chăm sóc toàn diện nhất, góp phần xây dựng một thế hệ sau khỏe mạnh và tiến bộ hơn. Bằng những nỗ lực không ngừng nghỉ, Dr. Marie cam kết đảm bảo quyền lợi cho phụ nữ để sinh con theo lựa chọn, và tuyệt đối sẽ ko thỏa hiệp về các tiêu chuẩn an toàn tối thiểu.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929751.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 3\" /></p>\r\n\r\n<p>Dr.Marie đào tạo cho các nữ hộ sinh địa phương trong dự án MSLadies.</p>\r\n\r\n<p>Thời gian qua, do tác động của đại dịch Covid-19, hệ thống y tế tại Việt Nam trở nên quá tải, dẫn tới việc người dân gặp nhiều khó khăn hơn khi muốn tiếp cận các dịch vụ y tế cần thiết, nhất là đối với phụ nữ khi dịch vụ chăm sóc sức khỏe sinh sản không được ưu tiên trong giai đoạn này.</p>\r\n\r\n<p>Không đầu hàng nghịch cảnh, Dr. Marie đã nỗ lực đảm bảo các cơ sở chăm sóc sức khỏe, sinh sản được vận hành liên tục thông qua việc đẩy mạnh các phương thức liên lạc trực tuyến, tối giản quy trình hỗ trợ đảm bảo công tác phòng dịch được đặt lên hàng đầu. Nhờ những cố gắng này, nhiều phụ nữ Việt Nam ở mọi lứa tuổi đã được thăm khám Sản phụ khoa, Tầm soát Ung thư cổ tử cung và thực hiện các biện pháp Chăm sóc sức khỏe sinh sản đầy đủ và kịp thời ngay cả trong mùa dịch.</p>\r\n\r\n<p><img alt=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/770/2022/05/15/drmariedocx-1652570929905.png\" title=\"Dr.Marie và hành trình 28 năm đồng hành cùng sức khỏe sinh sản phụ nữ Việt - 4\" /></p>\r\n\r\n<p>Dr. Marie mang dịch vụ đến với nữ công nhân trong khuôn khổ dự án hợp tác với MSI.</p>\r\n\r\n<p>Hiện tại, khi Việt Nam đã bước vào giai đoạn phục hồi sau đại dịch, Dr.&nbsp;Marie&nbsp;cùng MSI Reproductive Choices nỗ lực mở rộng hệ thống cơ sở chăm sóc sức khỏe sinh sản, nhằm đem đến sự hỗ trợ kịp thời cho mọi đối tượng trong xã hội. Qua những kinh nghiệm trải qua khó khăn trong thời điểm đại dịch, Dr. Marie cũng đã xây dựng được các phương án đối phó rủi ro, giúp hệ thống linh hoạt hơn khi chịu tác động tiêu cực từ môi trường bên ngoài.</p>\r\n\r\n<p>Hành trình của Dr. Marie là hành trình không ngừng nỗ lực mang đến niềm tin, điểm tựa cho hàng triệu phụ nữ Việt Nam. Không có điều gì là dễ dàng, Dr. Marie luôn sẵn sàng với mọi thử thách để thay đổi tư duy của xã hội, để SKSS và KHHGĐ trở thành lĩnh vực được ưu tiên hơn nữa trong tương lai.</p>\r\n\r\n<p>Tìm kiếm sự chăm sóc sức khỏe sinh sản toàn diện tại:</p>', '1666347489_Screenshot 2022-10-21 171610.png', 1, 45, 'thien', 0);

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
(2, 'Phòng 2', NULL, NULL, NULL),
(3, 'Phòng 3', NULL, NULL, NULL),
(4, 'Phòng 4', NULL, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `position_id` int(11) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `position_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Đăng Thiên', 'thien1pro1@gmail.com', NULL, 0, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', 'fJvaDpb3DSAyQn12XV1MQUOpurVKTu5aFxCNPl310cBK77YxfibpSneAp8rv', '2022-10-06 09:51:23', '2022-10-06 09:51:23'),
(2, 'Phạm ho', 'hoc@gmail.com', NULL, 1, '$2y$10$1Im0YEvwb1vXDEuP10gjG.XTEgQmcNUe/XwfYgnizytgRKBp62UOi', NULL, '2022-10-07 09:33:54', '2022-10-07 09:33:54');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `files`
--
ALTER TABLE `files`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categogies`
--
ALTER TABLE `categogies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
--
-- Database: `ne`
--
CREATE DATABASE IF NOT EXISTS `ne` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ne`;
--
-- Database: `news_api`
--
CREATE DATABASE IF NOT EXISTS `news_api` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `news_api`;

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`id`, `title`, `created_at`, `updated_at`, `short_desc`) VALUES
(13, 'FASHION', '2022-09-23 19:14:56', '2022-09-23 19:14:56', 'Cập nhật thông tin mới nhất về Fashion thế giới'),
(14, 'GIẢI TRÍ', '2022-09-23 19:16:06', '2022-09-23 19:16:06', 'Cập nhật thông tin mới nhất về các sự kiện giải trí'),
(15, 'SAO & ĐỜI SỐNG', '2022-09-23 19:16:55', '2022-09-23 19:16:55', 'Cập nhật thông tin mới nhất về đời sống của các nghệ sĩ'),
(16, 'ÂM NHẠC', '2022-09-23 19:17:16', '2022-09-23 19:17:16', 'Cập nhật thông tin mới nhất về âm nhạc thế giới'),
(17, 'PHIM ẢNH', '2022-09-23 19:17:36', '2022-09-23 19:17:36', 'Cập nhật thông tin mới nhất về phim ảnh thế giới'),
(18, 'SỐNG KHỎE', '2022-09-23 19:18:09', '2022-09-23 19:18:09', 'Cập nhật thông tin mới nhất y tế thế giới'),
(19, 'THỂ THAO', '2022-09-23 19:18:28', '2022-09-23 19:18:28', 'Cập nhật thông tin mới nhất về thể thao thế giới'),
(20, 'MUA SẮM', '2022-09-23 19:19:22', '2022-09-27 20:59:55', 'Cập nhật thông tin mới nhất về mua sắm'),
(21, 'CÔNG NGHỆ', '2022-09-23 19:21:56', '2022-09-23 19:21:56', 'Cập nhật thông tin mới nhất về thị trường công nghệ thế giới');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` bigint(20) UNSIGNED NOT NULL,
  `name_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `name_customer`, `phone_customer`, `address_customer`, `email_customer`, `city_customer`, `created_at`, `updated_at`) VALUES
(1, 'Pham Hoang Hoc', '0929622239', 'Cai Rang', 'hochochc@gmail.com', 'Can Tho', NULL, NULL),
(2, 'Pham Hoang Hoc', '0929622239', 'Cai Rang', 'hochochc@gmail.com', 'Can Tho', NULL, NULL),
(3, 'Pham Hoang Hoc', '0929622239', 'Cai Rang', 'hochochc@gmail.com', 'Can Tho', NULL, NULL),
(4, 'Pham Hoang Hoc', '0929622239', 'Cai Rang', 'hochochc@gmail.com', 'Can Tho', NULL, NULL),
(5, 'Pham Hoang Hoc', '0929622239', 'Cai Rang', 'hochochc@gmail.com', 'Can Tho', NULL, NULL),
(6, 'Pham Hoang Hoc', '0929622239', 'Cai Rang', 'hochochc@gmail.com', 'Can Tho', NULL, NULL),
(7, 'Pham Hoang Hoc', '0929622239', 'Cai Rang', 'hochochc@gmail.com', 'Can Tho', NULL, NULL),
(8, 'Pham Hoang Hoc', '0929622239', 'Cai Rang', 'hochochc@gmail.com', 'Can Tho', NULL, NULL),
(9, 'Hoc', '0965210907', 'CaiRang', 'hoc1@gmail.com', 'Can Tho', '2021-09-20 01:14:52', '2021-09-20 01:14:52'),
(11, 'HocHoang', '0965210907', 'CaiRang', 'hoc2@gmail.com', 'Can Tho', '2021-09-20 01:29:00', '2021-09-20 01:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_09_11_001511_create_customer', 1),
(5, '2021_09_27_064428_create_posts_table', 2),
(6, '2021_09_27_064904_create_post_controllers_table', 2),
(7, '2021_09_27_070319_create_category_posts_table', 3),
(8, '2014_10_12_200000_add_two_factor_columns_to_users_table', 4),
(9, '2021_10_05_012734_create_sessions_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `desc` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `short_desc`, `desc`, `image`, `post_category_id`, `created_at`, `updated_at`, `post_date`, `views`, `name`) VALUES
(37, 'Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc', 'Đội tuyển Anh đã thua Italy 0-1 ở bảng A3 và chính thức rớt hạng UEFA Nations League. Trong khi đó, Đức bất ngờ thất bại 0-1 trước Hungary', '<p>Cuộc đua ở bảng A3 UEFA Nations League diễn ra đầy hấp dẫn khi cả Anh, Đức, Italy đều có tham vọng riêng. Tâm điểm chú ý là trận đại chiến Italy và Anh ở lượt trận thứ 5.</p>\r\n\r\n<p><img alt=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/24/italy4-1663974467863.jpg\" title=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 1\" /></p>\r\n\r\n<p>Harry Kane và đội tuyển Anh đã có trận đấu nhạt nhòa (Ảnh: AP).</p>\r\n\r\n<p>Với lợi thế sân nhà, Italy nhập cuộc tốt hơn. Ngay phút thứ 6, tiền đạo Gianluca Scamacca đánh đầu uy hiếp khung thành của thủ môn Nick Pope. Tuyển Anh sau đó có một vài cơ hội cuối hiệp 1 nhưng cả Reece James, Jude Bellingham hay Harry Kane đều dứt điểm thiếu chính xác.</p>\r\n\r\n<p>Hiệp 1 khép lại với kết quả hòa 0-0. Sang hiệp 2, các học trò của HLV Gareth Southgate vẫn tấn công bế tắc, trong khi đội chủ nhà chơi tốt hơn và chờ đợi thời cơ để ghi bàn.</p>\r\n\r\n<p><img alt=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/24/italy2-1663974467875.jpg\" title=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 2\" /></p>\r\n\r\n<p>Giacomo Raspadori ghi bàn duy nhất mang về chiến thắng 1-0 cho Italy (Ảnh: GI).</p>\r\n\r\n<p>Phút 68, Leonardo Bonucci phất bóng dài chuyền cho Giacomo Raspadori để tiền đạo tân binh Napoli loại bỏ sự truy cản của Kyle Walker trước khi sút tung đối phương để mở tỷ số cho đội tuyển Italy.</p>\r\n\r\n<p>Harry Kane chơi đầy nỗ lực, nhưng phải chờ đến tận phút 77 anh mới có một cơ hội đáng kể. Thủ môn Gianluigi Donnarumma chơi xuất sắc để cản cú vung chân từ cự ly gần của ngôi sao đang Tottenham.</p>\r\n\r\n<p><img alt=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/24/italy1-1663974467928.jpg\" title=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 3\" /></p>\r\n\r\n<p>Italy nuôi hy vọng lên ngôi đầu bảng và giành quyền vào bán kết UEFA Nations League (Ảnh: GI).</p>\r\n\r\n<p>Đến phút 85, Manolo Gabbiadini có cơ hội nhân đôi cách biệt cho Italy nhưng anh không thắng được Nick Pope ở tình huống đối mặt. Ngay sau đó, Dimarco đã đưa bóng dội trúng cột dọc.</p>\r\n\r\n<p>Đội tuyển Anh dồn lên tấn công ở phút cuối nhưng nỗ lực dứt điểm của Declan Rice và Bellingham không mang tới kết quả như mong đợi. Italy thắng chung cuộc 1-0 sau 90 phút.</p>\r\n\r\n<p><img alt=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/24/italy3-1663974467880.jpg\" title=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 4\" /></p>\r\n\r\n<p>Tuyển Anh cầm chắc vị trí cuối bảng và sẽ chơi ở League B UEFA Nations League mùa tới (Ảnh: GI).</p>\r\n\r\n<p>Thất bại 0-1 trên sân San Siro, đội tuyển Anh chỉ có 2 điểm sau 5 lượt trận, cầm chắc vị trí cuối bảng trước lượt trận cuối cùng và phải xuống chơi ở League B tại UEFA Nations League mùa sau. Trong khi đó, Italy có 8 điểm và đã nhảy một bậc lên chiếm vị trí nhì bảng A3 UEFA Nations League, kém Hungary 2 điểm.</p>\r\n\r\n<p><em><strong>Đội hình thi đấu</strong></em></p>\r\n\r\n<p><strong>Italy</strong>: Donnarumma, Di Lorenzo, Bonucci, Acerbi, Toloi, Cristante, Jorginho, Dimarco, Barella, Raspadori, Scamacca</p>\r\n\r\n<p>Bàn thắng: Gaspadori (68\')</p>\r\n\r\n<p><strong>Anh</strong>: Pope, Walker, Maguire, Dier, James, Rice, Bellingham, Foden, Saka, Sterling, Kane</p>\r\n\r\n<p>Hành quân đến sân Red Bull Arena của đối thủ, Hungary hứng khởi trong cuộc so tài với Đức. Phút 17 từ quả phạt góc bên cánh trái, tiền đạo Adam Szalai đánh gót điệu nghệ đưa bóng rót vào khung thành trước sự bất lực của hàng thủ Đức.</p>\r\n\r\n<p>Sau khi có lợi thế, Hungary phòng ngự dày đặc trước khung thành của Peter Gulacsi. Đức chủ yếu sử dụng nhiều các tình huống tạt cánh đánh đầu, nhưng họ không tạo ra nổi một cơ hội đáng chú ý trong suốt hiệp một.</p>\r\n\r\n<p><img alt=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/24/hungary1-1663975667671.jpg\" title=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 5\" /></p>\r\n\r\n<p>Adam Szalai ghi bàn duy nhất giúp Hungary thắng Đức 1-0 (Ảnh: AP).</p>\r\n\r\n<p>Sang đến hiệp hai, HLV Hansi Flick chỉ đạo học trò thực hiện nhiều tình huống phối hợp nhanh ở trung lộ. Lúc này, nhà vô địch World Cup 2014 mới có thể áp sát khung thành của Hungary.</p>\r\n\r\n<p>Phút 53, Timo Werner đưa được bóng vào lưới, nhưng bàn thắng của anh lại không được công nhận vì lỗi việt vị. Trong phần còn lại của trận đấu, tuyển Đức cố gắng đẩy cao đội hình gây sức ép, nhưng các chân sút tỏ ra khá vô duyên.</p>\r\n\r\n<p><img alt=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 6\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/24/hungary3-1663975667769.jpg\" title=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 6\" /></p>\r\n\r\n<p>Thomas Muller và các tiền đạo Đức có ngày thi đấu vô duyên (Ảnh: AP).</p>\r\n\r\n<p>Trong bối cảnh hàng công vô duyên, đội tuyển chỉ có thể tìm kiếm cơ hội từ những cú sút xa được thực hiện bởi Joshua Kimmich, nhưng không mang lại sự hiệu quả.</p>\r\n\r\n<p>Hungary dồn toàn lực phòng ngự, nhưng họ vẫn tạo ra những pha phản công sắc bén. Phút 72, Martin Adam suýt kết liễu chủ nhà bằng một cú sút chéo góc. Tài năng của Ter Stegen đã giúp mành lưới của Đức không phải nhận bàn thua thứ hai.</p>\r\n\r\n<p><img alt=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 7\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/24/hungary2-1663975667734.jpg\" title=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 7\" /></p>\r\n\r\n<p>Người Đức hết hy vọng có mặt ở bán kết UEFA Nations League (Ảnh: AP).</p>\r\n\r\n<p>Chiến thắng 1-0 nghiêng về Hungary được giữ cho đến khi kết thúc 90 phút. Đoàn quân của HLV Marco Rossi bất bại trong 3 lần chạm trán người Đức gần đây nhất.</p>\r\n\r\n<p>Hungary tiếp tục dẫn đầu bảng A3 UEFA Nations League với 10 điểm. Ở lượt trận cuối, họ sẽ chạm trán Italy (8 điểm) để tranh vé vào vòng play-off. Trong khi đó, Đức hết hy vọng cạnh tranh ngôi đầu bảng để đi tiếp do chỉ có 6 điểm và sẽ gặp Anh trong trận đấu thủ tục.</p>\r\n\r\n<p><img alt=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 8\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/24/bxh-1663974479808.jpg\" title=\"Tuyển Anh rớt hạng sau trận thua Italy, Đức nhận thất bại sốc - 8\" /></p>\r\n\r\n<p>Bảng xếp hạng bảng A3 UEFA Nations League sau 5 lượt trận (Ảnh: DailyMail).</p>', '1664266120_Screenshot 2022-09-24 093413.jpg', '19', '2022-09-23 19:35:47', '2022-09-27 01:09:13', '2727-09-2022', '1234', ''),
(38, 'Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng?', 'Trò chuyện với PV Dân trí, Doãn Hải My cho biết, cân nặng hiện tại của cô là khoảng 46 kg. Cô sở hữu vòng eo 55 cm. Người đẹp tích cực tập gym từ khi là cô nữ sinh lớp 10', '<p>Doãn Hải My (SN 2001) từng lọt Top 10 Hoa hậu Việt Nam 2020 và giành giải phụ Người đẹp tài năng.</p>\r\n\r\n<p>Bên cạnh giải Người đẹp tài năng thì khán giả còn yêu mến Doãn Hải My với thành tích học tập nổi bật. Nữ sinh viên trường Đại học Luật Hà Nội hiện đang là đại sứ hình ảnh Hội Sinh viên Luật châu Á tại Hà Nội.</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/doan-hai-my-cc-1663038378171.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 1\" /></p>\r\n\r\n<p>Doãn Hải My sở hữu gương mặt thanh tú, nụ cười duyên dáng (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/doan-hai-my-bikini-1663038094720.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 2\" /></p>\r\n\r\n<p>Những bức ảnh mà Doãn Hải My đăng tải trên mạng xã hội cho thấy, cô sở hữu vòng eo nhỏ xíu (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/hai-my-1663038094725.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 3\" /></p>\r\n\r\n<p>Cô dễ dàng chinh phục các mẫu bikini nóng bỏng nhất (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/hai-my-1663044099929.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 4\" /></p>\r\n\r\n<p>Vậy vóc dáng ngoài đời thực của Doãn Hải My ra sao? (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/doan-hai-my-thoi-trang-1663038177936.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 5\" /></p>\r\n\r\n<p>Trên thực tế, vóc dáng của cô còn thon gọn hơn trên ảnh. Trò chuyện với PV Dân trí, Doãn Hải My cho biết, cân nặng hiện tại của cô là khoảng 46 kg (Ảnh: Vũ Toàn).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 6\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/my-1663038094627.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 6\" /></p>\r\n\r\n<p>Người đẹp tiết lộ: \"Do cơ địa, may mắn tôi không phải lo nghĩ nhiều về việc giảm cân. Thậm chí tôi đang muốn tăng cân. Tôi thấy nếu mình đạt được mốc 50 kg là cân đối nhất. Tôi đang kết hợp ăn uống, tập luyện để cải thiện vóc dáng\" (Ảnh: Vũ Toàn).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 7\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/nhan-sac-1663038094727.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 7\" /></p>\r\n\r\n<p>Doãn Hải My sở hữu chiều cao 1m67, số đo 3 vòng 78-55-89 (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 8\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/screen-shot-2022-09-13-at-101708-1663039043502.png\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 8\" /></p>\r\n\r\n<p>Khi nhiều người thắc mắc về vòng eo siêu nhỏ của Doãn Hải My thì đây là cách cô đưa ra đáp án (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 9\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/eo-doan-hai-my-1663038094601.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 9\" /></p>\r\n\r\n<p>Khi được hỏi về bí quyết có được đường cong quyến rũ, Hải My cho hay, trước mùa dịch, cô thường tập gym ở trung tâm. Nhưng sau khi dịch bệnh bùng phát, cô tự tập ở nhà. Nhờ kiến thức đã tích lũy được, cô không khó khăn trong việc bắt nhịp. Doãn Hải My nói, tự luyện tập, điều cần nhất là&nbsp;tính tự giác và kỷ luật cao (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 10\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/doan-hai-my-1663038094596.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 10\" /></p>\r\n\r\n<p>Trong trang phục đời thường, đơn giản với quần short, áo thun, Doãn Hải My cũng trở nên nổi bật nhờ vóc dáng chuẩn (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 11\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/doan-hai-my-khoe-vong-eo-1663038094703.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 11\" /></p>\r\n\r\n<p>Cô bắt đầu tập gym từ năm lớp 10. Thời gian đó, cô từng đạt được mốc 50 kg và tập luyện để giữ nguyên phom dáng, vòng eo, cơ bụng (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 12\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/doan-hai-my-voc-dang-1663038094655.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 12\" /></p>\r\n\r\n<p>Người đẹp không quá khắt khe trong việc ăn uống, nhưng cô thường ưu tiên rau xanh, hoa quả trong các bữa ăn. Nhờ vậy, không chỉ vóc dáng mà làn da của Doãn Hải My cũng rất sáng bóng, cơ thể luôn tràn đầy năng lượng (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 13\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/hai-my-eo-thon-1663038094604.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 13\" /></p>\r\n\r\n<p>Khi được hỏi về phong cách thời trang yêu thích, Doãn Hải My chia sẻ với PV Dân trí, tiêu chí của cô là trang phục phải phù hợp với nơi mình đến, thể hiện được con người, tính cách của mình, dựa theo từng sự kiện, cô sẽ có cách chọn đồ khác nhau (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 14\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/ban-gai-dvh-1663041830592.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 14\" /></p>\r\n\r\n<p>Nhiều người đặt câu hỏi, liệu Doãn Hải My có thi một cuộc thi sắc đẹp khác trong tương lai không, cô tâm sự: \"Hiện tại việc học và tốt nghiệp đúng thời hạn, đạt bằng tốt là ưu tiên hàng đầu với My. Còn sau đó, việc có tham gia một cuộc thi nào khác hay không, thú thật bản thân My cũng không biết trước được. My không tính xa 5 hay 10 năm, chỉ đạt mục tiêu ngắn hạn để tập trung một cách chỉn chu\" (Ảnh: Hải My).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 15\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/11/doan-hai-my-bao-han-1662869214847.jpg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 15\" /></p>\r\n\r\n<p>Những khoảnh khắc buồn hay cạn năng lượng, cô sẽ tìm đến những người bạn mang lại năng lượng tốt cho mình. Trong showbiz, Doãn Hải My thân với nữ diễn viên Bảo Hân. \"Tôi thường hay đi chơi với Hân. Hân sống tích cực, lạc quan, là vitamin C cho mọi người. Tôi cảm thấy, ai cũng thích ở cạnh bạn ấy\", Doãn Hải My nói (Ảnh: Vũ Toàn).</p>\r\n\r\n<p><img alt=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 16\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/13/doan-hayi-my-1663042363624.jpeg\" title=\"Vóc dáng thật của bạn gái Đoàn Văn Hậu, ngoài đời có như ảnh trên mạng? - 16\" /></p>\r\n\r\n<p>Bên cạnh việc học, vào những lúc rảnh rỗi, cô tranh thủ nhận lời tham gia một vài sự kiện giải trí phù hợp. Đặc biệt, người đẹp dành thời gian cho các hoạt động từ thiện ở chùa, bệnh viện, cô muốn bản thân mình có thể đi nhiều hơn nữa, cố gắng lan tỏa những điều tích cực trong cuộc sống (Ảnh: Hải My).</p>', '1664269156_Screenshot 2022-09-24 093823.jpg', '13', '2022-09-23 19:39:16', '2022-09-27 01:59:16', '2727-09-2022', '1232', ''),
(39, 'Viettel, VNPT dẫn đầu danh sách thương hiệu giá trị nhất Việt Nam', 'Nếu mọi chuyện diễn ra theo đúng kế hoạch, dịch vụ Starlink của Elon Musk sẽ truyền trực tiếp Internet từ vệ tinh đến smartphone người dùng vào năm sau', '<p>Starlink là dự án của hãng công nghệ vũ trụ SpaceX (do tỷ phú công nghệ Elon Musk sáng lập), sử dụng vệ tinh phóng lên quỹ đạo để phủ sóng Internet trên toàn cầu.</p>\r\n\r\n<p>Các vệ tinh của Starlink sẽ được thiết kế để phát sóng Internet băng thông rộng từ không gian về trái đất. Để thu nhận sóng Internet từ vệ tinh, người dùng cần phải lắp đặt các chảo ăn-ten do Starlink cung cấp, từ đó mới có thể kết nối mạng Internet do SpaceX cung cấp trên thiết bị của mình.</p>\r\n\r\n<p>Ưu điểm của Starlink là có thể cung cấp Internet đến bất kỳ đâu trên thế giới, ngay cả vùng xa xôi, hẻo lánh, những khu vực khó tiếp cận được với mạng Internet hoặc mạng di động thông thường. Tuy nhiên, nhược điểm đó là người dùng cần phải ở gần ăn-ten của Starlink mới có thể sử dụng mạng Internet do dịch vụ này cung cấp.</p>\r\n\r\n<p>Nhược điểm này của Starlink có thể sẽ được khắc phục vào năm sau, khi vệ tinh sẽ truyền trực tiếp dịch vụ Internet đến smartphone của người dùng mà không cần phải thông qua chảo thu tín hiệu như hiện nay.</p>\r\n\r\n<p>Theo đó, Elon Musk - nhà sáng lập và Chủ tịch SpaceX, cùng với Mike Sievert - Chủ tịch kiêm CEO hãng viễn thông T-Mobile, vừa công bố kế hoạch hợp tác giữa SpaceX và T-Mobile trong một dự án có tên gọi \"Vùng phủ sóng trên và xa hơn\", nhằm mục đích cung cấp mạng Internet từ vệ tinh của SpaceX đến người dùng mạng T-Mobile ở khắp mọi nơi.</p>\r\n\r\n<p>\"Tôi tin rằng đây thực sự là một ý tưởng to lớn làm thay đổi cuộc chơi. Tóm lại, sẽ không còn khu vực nào ngoài vùng phủ sóng\", Elon Musk tuyên bố.</p>\r\n\r\n<p><img alt=\"Elon Musk (phải) và Mike Sievert (trái) thông báo về dự án phát sóng Internet từ vệ tinh trực tiếp vào smartphone người dùng (Ảnh: T-Mobile).\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/08/27/elon-musk-1661538872352.jpg\" title=\"Elon Musk (phải) và Mike Sievert (trái) thông báo về dự án phát sóng Internet từ vệ tinh trực tiếp vào smartphone người dùng (Ảnh: T-Mobile).\" /></p>\r\n\r\n<p>Elon Musk (phải) và Mike Sievert (trái) thông báo về dự án phát sóng Internet từ vệ tinh trực tiếp vào smartphone người dùng (Ảnh: T-Mobile).</p>\r\n\r\n<p>Hiện vẫn còn những khu vực ngoài vùng phủ sóng tại Mỹ, là những vùng hẻo lánh cách xa các trạm phát sóng di động. Mike Sievert ước tính đang có khoảng 1,3 triệu kilômét vuông tại Mỹ không nhận được sóng từ bất kỳ nhà cung cấp dịch vụ mạng di động nào.</p>\r\n\r\n<p>Dự án \"Vùng phủ sóng trên và xa hơn\" sẽ giải quyết vấn đề này bằng cách khai thác vệ tinh Starlink của SpaceX để phát sóng Internet trực tiếp từ vệ tinh đến smartphone của người dùng.</p>\r\n\r\n<p>Hiện tại, SpaceX đã phóng lên quỹ đạo Trái đất tầm thấp khoảng 3.000 vệ tinh Starlink để phát sóng Internet. Tuy nhiên, những vệ tinh này không có chức năng phát sóng trực tiếp Internet đến smartphone, mà chỉ có thể phát sóng Internet đến các chảo thu tín hiệu. Do vậy, dự án mới của Elon Musk sẽ phải sử dụng vệ tinh Starlink thế hệ thứ 2, dự định sẽ được SpaceX ra mắt vào năm sau.</p>\r\n\r\n<p>Vệ tinh Starlink thế hệ thứ 2 sẽ dài khoảng 7m và nặng 1,25 tấn, lớn hơn nhiều so với khối lượng 300kg của vệ tinh Starlink hiện nay. Vệ tinh này lớn đến mức SpaceX cần phải sử dụng tên lửa đẩy Starship thế hệ mới để đưa lên quỹ đạo, thay vì sử dụng tên lửa đẩy Falcon 9 hiện tại. Tuy nhiên, hiện Starship vẫn đang trong giai đoạn phát triển và điều này sẽ ảnh hưởng đến thời điểm có thể triển khai vệ tinh Starlink thế hệ thứ 2.</p>\r\n\r\n<p>Vệ tinh Starlink thế hệ thứ 2 cũng sẽ được trang bị 2 ăn-ten đặc biệt với chiều dài 5m để giúp phát tín hiệu từ quỹ đạo về trái đất, trong khi vệ tinh vẫn đang di chuyển với tốc độ nhanh trên quỹ đạo.</p>\r\n\r\n<p>Nếu dự án được triển khai thành công, người dùng mạng di động T-Mobile có thể truy cập Internet thông qua vệ tinh của Starlink ngay trên smartphone của mình ở bất cứ đâu mà không cần phải mua thêm thiết bị mới đặc biệt nào.</p>\r\n\r\n<p>Elon Musk và Mike Sievert cho biết giá của dịch vụ sẽ ở mức phù hợp.</p>\r\n\r\n<p>Tuy nhiên, Elon Musk thừa nhận rằng việc phát sóng Internet qua vệ tinh sẽ không mang lại tốc độ tốt như khi nhận sóng di động từ các tháp thu phát sóng trên mặt đất. Dự án này chỉ nhằm mục đích xóa bỏ các khu vực không có sóng di động, hơn là mục đích mang đến mạng Internet tốc độ cao.</p>\r\n\r\n<p>Nếu dự án thành công, trong tương lai SpaceX có thể hợp tác với nhiều nhà mạng khác trên toàn cầu để phát sóng Internet trực tiếp từ vệ tinh đến smartphone của người dùng, thay vì phải sử dụng các thiết bị thu tín hiệu vệ tinh như hiện nay.</p>', '1664265999_Screenshot 2022-09-24 093413.jpg', '21', '2022-09-27 01:06:39', '2022-09-27 02:29:29', '2727-09-2022', '1323', ''),
(40, 'Chuỗi kỷ lục ấn tượng của nhóm Blackpink', 'Nhóm Blackpink liên tiếp lập những kỷ lục và thành tích ấn tượng với album mới mang tên \"Born Pink\" và MV mới trình làng \"Shut Down\". Họ khẳng định vị thế nhóm nhạc nữ toàn cầu đình đám của Hàn Quốc', '<p>Theo Yonhap News, Blackpink&nbsp; đã trở thành nhóm nhạc nữ Kpop đầu tiên chiếm lĩnh vị trí số một trên Billboard 200 - bảng xếp hạng album chính của tạp chí Billboard (Mỹ) với album mới phát hành mang tên&nbsp;<em>Born Pink</em>.</p>\r\n\r\n<p>Trong bảng xếp hạng công bố ngày 25/9 (giờ Mỹ), Billboard cho biết album&nbsp;<em>Born Pink</em>&nbsp;phát hành hôm 16/9 của nhóm Blackpink đã vươn lên dẫn đầu Billboard 200 tuần này. Theo đó, 102.000 bản album đã được bán.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Chuỗi kỷ lục ấn tượng của nhóm Blackpink - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/22/blackpink-2-1663810460376.png\" title=\"Chuỗi kỷ lục ấn tượng của nhóm Blackpink - 1\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Nhóm Blackpink lập nhiều kỷ lục ấn tượng với album mới \"Born Pink\" (Ảnh: YG Entertainment).</p>\r\n\r\n<p><em>Born Pink</em>&nbsp;cũng soán ngôi album&nbsp;<em>Un Verano Sin Ti</em>&nbsp;của rapper Bad Bunny, trở thành album bán chạy nhất Mỹ hiện nay, dựa trên doanh số bán album bản cứng và bản kỹ thuật số. Trước đó, album&nbsp;<em>Un Verano Sin Ti</em>&nbsp;liên tiếp giành vị trí đứng đầu bảng xếp hạng Billboard 200 trong 11 tuần.</p>\r\n\r\n<p>Với thành tích trên, Blackpink trở thành nhóm nhạc Kpop thứ 4 từng đứng đầu bảng xếp hạng Billboard 200 sau các nhóm nhạc nam BTS, SuperM và Stray Kids.&nbsp;</p>\r\n\r\n<p>Billboard cho biết, với số lượng 75.000 bản cứng album&nbsp;<em>Born Pink</em>&nbsp;được bán ra, Blackpink cũng đứng đầu bảng xếp hạng Billboard Top Album Sales tuần này và xếp thứ 7 trong số các album được phát hành trong năm.&nbsp;</p>\r\n\r\n<p>Ngày 23/9 vừa rồi, album&nbsp;<em>Born Pink</em>&nbsp;cũng giành vị trí số một trong bảng xếp hạng Top 100 album của Anh. Như vậy, họ trở thành những nữ nghệ sĩ châu Á duy nhất cùng lúc đứng đầu bảng xếp hạng của Anh và Billboard của Mỹ.</p>\r\n\r\n<p><img alt=\"Chuỗi kỷ lục ấn tượng của nhóm Blackpink - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2021/11/15/blackpinknewsen-crop-1636961009498.jpeg\" title=\"Chuỗi kỷ lục ấn tượng của nhóm Blackpink - 2\" /></p>\r\n\r\n<p>4 cô gái của Blackpink tiếp tục khẳng định vị thế nhóm nhạc nữ toàn cầu của Kpop (Ảnh: Newsen).</p>\r\n\r\n<p>Nói về album&nbsp;<em>Born Pink</em>, tờ Billboard cho biết album có nhiều ca khúc với lời nhạc tiếng Anh, dễ giành được cảm tình của người hâm mộ tại thị trường Mỹ, Anh.&nbsp;</p>\r\n\r\n<p>Theo Hanteo Chart (Hàn Quốc), album&nbsp;<em>Born Pink</em>&nbsp;cũng đã phá kỷ lục doanh số album tuần đầu tiên trong lịch sử nhóm nhạc nữ Kpop. Sau một tuần trình làng, album&nbsp;<em>Born Pink</em>&nbsp;của Blackpink đã bán được tổng cộng 1.542.950 bản. Đây là con số gấp đôi so với thành tích mà album trước đó của nhóm -&nbsp;<em>The Album</em>&nbsp;đạt được vào năm 2020.</p>\r\n\r\n<p>Đồng thời, con số tiêu thụ khủng của album&nbsp;<em>Born Pink</em>&nbsp;cũng giúp Blackpink trở thành Nữ nghệ sĩ Hàn Quốc có doanh số album tuần đầu tiên cao nhất mọi thời đại (dựa trên dữ liệu của Hanteo). Kỷ lục trước đó được thiết lập bởi album&nbsp;<em>Girls&nbsp;</em>của nhóm Aespa vào đầu năm 2022.&nbsp;</p>\r\n\r\n<p>Ngoài những thành tích rực rỡ trong các bảng xếp hạng âm nhạc của Anh, Mỹ, Hàn Quốc, album&nbsp;<em>Born Pink</em>&nbsp;của Blackpink cũng gây ấn tượng mạnh mẽ khi đứng đầu bảng xếp hạng album iTunes tại 60 quốc gia.</p>\r\n\r\n<p>Ca khúc chủ đề mang tên&nbsp;<em>Shut Down</em>&nbsp;của&nbsp;<em>Born Pink</em>&nbsp;dẫn đầu bảng xếp hạng Spotify toàn cầu trong 6 ngày liên tiếp. Chưa dừng lại ở đó, toàn bộ 8 ca khúc trong album đều lọt top 25 trên bảng xếp hạng này.&nbsp;</p>\r\n\r\n<p><img alt=\"Chuỗi kỷ lục ấn tượng của nhóm Blackpink - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/blackpink-13-1664176197650.jpg\" title=\"Chuỗi kỷ lục ấn tượng của nhóm Blackpink - 3\" /></p>\r\n\r\n<p>Không chỉ thành công trong lĩnh vực ca hát, Blackpink còn là những đại sứ toàn cầu của một số nhãn hàng danh tiếng (Ảnh: News).</p>\r\n\r\n<p>Theo nhận định của giới chuyên môn, danh tiếng vốn có, ngoại hình đẹp và kỹ năng trình diễn của các thành viên trong nhóm là yếu tố tạo nên sự thành công đáng mơ ước của Blackpink.</p>\r\n\r\n<p>Trước khi phát hành album mới, Blackpink đã là cái tên toàn cầu và điều này góp phần giúp album&nbsp;<em>Born Pink</em>&nbsp;không chỉ nhận được sự quan tâm của khán giả trong nước, tại châu Á mà còn khắp thế giới dù còn vướng một số tranh cãi.&nbsp;</p>\r\n\r\n<p>Blackpink là nhóm nhạc nữ nổi tiếng Hàn Quốc gồm 4 thành viên là Jennie, Lisa, Jisoo và Rosé. Nhóm ra mắt từ năm 2016 và sau 6 năm hoạt động, Blackpink vươn lên thành một trong những nhóm nhạc hàng đầu Kpop với nhiều bản hit tỷ view như&nbsp;<em>Ddu Du Ddu Du, How You Like That…&nbsp;</em>Ngoài âm nhạc, nhóm còn nổi bật trong các hoạt động thời trang.</p>\r\n\r\n<p><em>Born Pink</em>&nbsp;là album mới nhất của Blackpink, được ra mắt sau gần 2 năm nhóm dừng trình làng sản phẩm mới.&nbsp;<em>Shut Down</em>&nbsp;được chọn là bài hát chủ đề trong album&nbsp;<em>Born Pink.</em>&nbsp;<em>Shut Down</em>&nbsp;đạt thành tích 50 triệu lượt xem sau 24 giờ phát hành và 100 triệu lượt xem sau 5 ngày ra mắt trên YouTube.</p>\r\n\r\n<p>MV&nbsp;<em>Pink Venom</em>&nbsp;được ra mắt trước MV&nbsp;<em>Shut Down</em>&nbsp;gần nửa tháng và cũng thuộc album mới của nhóm Blackpink cũng thu hút hơn 300 triệu lượt xem trên nền tảng phát video trực tuyến YouTube.&nbsp;</p>\r\n\r\n<p>Sắp tới, Blackpink sẽ tổ chức chuyến lưu diễn vòng quanh thế giới để quảng bá album&nbsp;<em>Born Pink</em>. Chuyến lưu diễn bắt đầu tại Seoul (Hàn Quốc) vào ngày 15/10 và dừng chân ở châu Âu, châu Á và châu Đại Dương.</p>\r\n\r\n<p>Trình phát Video is loading.</p>\r\n\r\n<p>This is a modal window.</p>\r\n\r\n<p>Phát media đã bị hủy do một sai lỗi hoặc media sử dụng những tính năng trình duyệt không hỗ trợ.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Blackpink trình diễn \"live\" ca khúc \"Shut Down\" (Video: INKIGAYO SBS).</p>', '1664282451_blackpink.jpg', '16', '2022-09-27 05:40:51', '2022-09-27 05:40:51', '2727-09-2022', '4221', NULL),
(41, 'Vụ ồn ào với Thủy Tiên, Nathan Lee: \"Tôi không muốn mất thời gian kiện cáo\"', 'Nathan Lee cho biết anh đã nhận được lời xin lỗi từ phía ê-kíp của Thủy Tiên chứ không phải đích thân nữ ca sĩ.', '<p>Trước đó, mạng xã hội rộ lên tranh cãi về việc ca sĩ Thủy Tiên thể hiện bài hát&nbsp;<em>Giấc mơ tuyết trắng</em>&nbsp;(sáng tác: Quốc Bảo) tại một phòng trà hôm 2/9 trong khi ca khúc này từng được Nathan Lee tuyên bố mua độc quyền.</p>\r\n\r\n<p>Thời điểm đó, PV&nbsp;<em>Dân trí</em>&nbsp;đã liên hệ với Nathan Lee nhưng nam ca sĩ đang đi&nbsp;<a href=\"https://dantri.com.vn/du-lich.htm\">du lịch</a>&nbsp;nước ngoài nên chưa có dịp tiếp xúc, trao đổi với báo chí. Chiều 26/9, tại buổi ra mắt MV&nbsp;<em>Tuy nhiên,&nbsp;</em>anh đã có những chia sẻ về ồn ào vừa qua.</p>\r\n\r\n<p>\"Lúc xảy ra sự việc, tôi đang ở nước ngoài. Cá nhân tôi là người rất tôn trọng tác giả sáng tác ca khúc đó. Bởi vậy, khi tôi muốn mua tác phẩm thì tôi sẽ chuyển tiền nhanh, gọn, lẹ. Tôi tâm niệm bất kỳ sản phẩm nào cũng cần bỏ nhiều công sức, mồ hôi, nước mắt, chất xám. Tôi luôn trân trọng nỗ lực của nhạc sĩ dù tôi chưa từng hát những ca khúc đó bao giờ\", Nathan Lee nói.</p>\r\n\r\n<p><img alt=\"Vụ ồn ào với Thủy Tiên, Nathan Lee: Tôi không muốn mất thời gian kiện cáo - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/nam-ca-si-tro-lai-duong-dua-am-nhac-sau-thoi-gian-dai-vang-bong-anh-nhan-vat-cung-cap-1664244464119.jpg\" title=\"Vụ ồn ào với Thủy Tiên, Nathan Lee: Tôi không muốn mất thời gian kiện cáo - 1\" /></p>\r\n\r\n<p>Nathan Lee cho biết lúc xảy ra vụ ồn ào liên quan đến ca khúc \"Giấc mơ tuyết trắng\", anh đang ở nước ngoài (Ảnh: Nhân vật cung cấp).&nbsp;</p>\r\n\r\n<p>Giọng ca sinh năm 1983 \"kể khổ\": \"Tôi chưa kiếm một xu nào từ những bài hát ấy nhưng lại bị \"ăn chửi\", trong khi mình là người làm đúng\".&nbsp;</p>\r\n\r\n<p>Nathan Lee cũng cho biết thêm người trong ê-kíp của Thủy Tiên đã gọi điện xin lỗi chứ không phải đích thân nữ ca sĩ. Hiện tại, nam ca sĩ cũng khá bận rộn nên \"không có thời gian kiện cáo\".</p>\r\n\r\n<p>\"Chuyện sai thì họ đã nhận sai với tôi, nhưng đó không phải là câu xin lỗi từ chính chủ. Tuy nhiên, tôi không phải là người mất nhiều thời gian cho những việc này nên tính đến hiện tại, tôi chưa có động thái nào liên quan đến kiện cáo. Nhưng nếu muốn thì việc kiện cáo diễn ra rất dễ dàng\", Nathan Lee chia sẻ.</p>\r\n\r\n<p>Trước những ý kiến trái chiều về việc mua lại những ca khúc được xem là thanh xuân của nhiều người nhưng chưa có nhu cầu sử dụng, nam ca sĩ cho rằng: \"Khi nhắc đến chữ \"tình\", nhiều người rất hời hợt. Tôi thích thể hiện chữ \"tình\" đó bằng hành động hơn là chỉ nói miệng. Điều này bộc lộ qua cách tôi hát, cách tôi sống và cách tôi trả tiền cho nhạc sĩ. Về sau, khi tôi sử dụng những ca khúc này thì chúng sẽ trở thành thanh xuân của những thế hệ mới\".&nbsp;</p>\r\n\r\n<p><img alt=\"Vụ ồn ào với Thủy Tiên, Nathan Lee: Tôi không muốn mất thời gian kiện cáo - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/nathan-lee-cho-biet-luc-xay-ra-on-ao-ban-quyen-anh-dang-o-nuoc-ngoai-anh-nhan-vat-cung-cap-1664244464792.jpg\" title=\"Vụ ồn ào với Thủy Tiên, Nathan Lee: Tôi không muốn mất thời gian kiện cáo - 2\" /></p>\r\n\r\n<p>Nam ca sĩ trở lại đường đua âm nhạc sau thời gian dài vắng bóng (Ảnh: Nhân vật cung cấp).&nbsp;</p>\r\n\r\n<p>Khi nhận được câu hỏi liệu khán giả Việt Nam có đang dễ dãi với âm nhạc và dễ tha thứ khi ca sĩ gặp ồn ào, Nathan Lee cho rằng nền âm nhạc có phát triển hay không còn phụ thuộc phần nhiều vào khán giả: \"Mọi thứ đều do khán giả quyết định, họ có quyền lựa chọn điều họ thích\".&nbsp;</p>\r\n\r\n<p>Nathan Lee cũng tự nhận anh không có nhiều bạn bè trong làng giải trí nhưng không cảm thấy cô đơn vì đó là cuộc sống mà nam ca sĩ lựa chọn. Hiện tại, anh đang có những dự định riêng về âm nhạc và tận hưởng cuộc sống \"sang chảnh\" khi du lịch nhiều nơi trên thế giới.&nbsp;</p>\r\n\r\n<p>MV \"Tuy nhiên\" có nhiều cảnh hoành tráng, được ghi hình tại nhiều nơi trên thế giới, từ Châu Á sang Châu Âu cùng sự xuất hiện của dàn mỹ nhân quốc tế nóng bỏng. Nathan Lee cho biết sau nhiều năm, anh đã \"có lửa\" trở lại với nghề và sẽ hoạt động nghệ thuật chăm chỉ hơn trong thời gian tới.</p>', '1664282643_nathanlee.jpg', '15', '2022-09-27 05:44:03', '2022-09-27 05:44:03', '2727-09-2022', '3242', NULL),
(42, 'Việt Nam 1-0 Ấn Độ (hiệp 1): Văn Đức mở tỉ số', 'Phút 10, từ tình huống đá phạt góc của tuyển Việt Nam, Văn Đức đã dứt điểm ở trung tâm vòng cấm địa đưa bóng vào lưới mở tỉ số trận đấu.', '<p>Tường thuật: Việt Nam - Ấn Độ</p>\r\n\r\n<p>45\'</p>\r\n\r\n<p>Chhetri đánh đầu đưa bóng đi chệch cột dọc</p>\r\n\r\n<p>Đón quả tạt của đồng đội từ bên trái vào, Chhetri đã đánh đầu ở cự ly chừng 6m ở trung tâm, bóng đi chệch cột dọc phải cầu môn tuyển Việt Nam chỉ trong gang tấc.</p>\r\n\r\n<p><img alt=\"z3755192001002_ad875454d5fcab5e6c384a1d42c050b5.jpg\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/z3755192001002ad875454d5fcab5e6c384a1d42c050b5-1664282822003.jpg?watermark=true\" title=\"z3755192001002_ad875454d5fcab5e6c384a1d42c050b5.jpg\" /></p>\r\n\r\n<p>43\'</p>\r\n\r\n<p>Tấn Tài dứt điểm cắt mặt khung thành Ấn Độ</p>\r\n\r\n<p>Tấn Tài dứt điểm từ bên phải, bóng đi cắt mặt khung thành Ấn Độ ra ngoài.</p>\r\n\r\n<p>38\'</p>\r\n\r\n<p>Kuruniyan va chạm với Nguyên Mạnh</p>\r\n\r\n<p>Kuruniyan băng xuống nhưng đã bị bắt lỗi việt vị, anh va chạm với Nguyên Mạnh. Cầu thủ số 22 của Ấn Độ phản ứng vì cho rằng anh đã thu chân nên không có tình làm đau Nguyên Mạnh.</p>\r\n\r\n<p><img alt=\"z3755258533157_e558f46ac4f802ce75f8f9cabbcdf453.jpg\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/z3755258533157e558f46ac4f802ce75f8f9cabbcdf453-1664282686396.jpg?watermark=true\" title=\"z3755258533157_e558f46ac4f802ce75f8f9cabbcdf453.jpg\" /></p>\r\n\r\n<p>Kuruniyan lời qua tiếng lại với Ngọc Hải (Ảnh: Khoa Nguyễn).</p>\r\n\r\n<p>32\'</p>\r\n\r\n<p>Samad nỗ lực dứt điểm</p>\r\n\r\n<p>Samad nỗ lực giành và đi bóng ở trong vòng cấm địa của Việt Nam. Số 18 của Ấn Độ từ góc hẹp phía phải, bóng đi không quá mạnh, thủ thành Nguyên Mạnh đã chủ động khép góc bắt gọn bóng.</p>\r\n\r\n<p><img alt=\"z3755183063171_64dc344f6fc185de39e4a6e5a657ac3b.jpg\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/z375518306317164dc344f6fc185de39e4a6e5a657ac3b-1664282323068.jpg?watermark=true\" title=\"z3755183063171_64dc344f6fc185de39e4a6e5a657ac3b.jpg\" /></p>\r\n\r\n<p>Pha vào bóng quyết liệt của cầu thủ Ấn Độ với Văn Hậu (Ảnh: Khoa Nguyễn).</p>\r\n\r\n<p>29\'</p>\r\n\r\n<p>Tấn Tài tạt bóng không chính xác</p>\r\n\r\n<p>Tấn Tài lên bóng bên cánh phải, ở bên trong có Tiến Linh. Đáng tiếc cú tạt bóng của Tấn Tài lại không đưa bóng tới đúng vị trí của đồng đội.</p>\r\n\r\n<p>26\'</p>\r\n\r\n<p>Kuruniyan sút bóng cắt mặt khung thành</p>\r\n\r\n<p>Kuruniyan nhận bóng ở đầu vòng cấm địa, bên trái. Số 22 của Ấn Độ dứt điểm nhanh khi anh có được khoảng trống lớn, bóng đi cắt mặt khung thành ra ngoài.</p>\r\n\r\n<p>22\'</p>\r\n\r\n<p>Công Phượng dứt điểm từ góc hẹp</p>\r\n\r\n<p>Lại là Văn Đức thực hiện cú chuyền bóng dọc trung lộ cho Công Phượng băng xuống. Công Phượng đã dứt điểm từ góc hẹp bên phải, bóng đi cắt mặt khung thành ra ngoài.</p>\r\n\r\n<p><img alt=\"z3755191541565_1bef7fc88fcfc44f742dcd67cd23c2f1.jpg\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/z37551915415651bef7fc88fcfc44f742dcd67cd23c2f1-1664281422976.jpg?watermark=true\" title=\"z3755191541565_1bef7fc88fcfc44f742dcd67cd23c2f1.jpg\" /></p>\r\n\r\n<p>Pha phá bóng của Thanh Bình (Ảnh: Khoa Nguyễn).</p>\r\n\r\n<p>21\'</p>\r\n\r\n<p>Tiến Linh không theo kịp đường chuyền của Quang Hải</p>\r\n\r\n<p>Quang Hải mở đường chuyền dài vượt tuyến từ giữa sân cho Tiến Linh bứt tốc băng xuống. Đáng tiếc Tiến Linh vẫn chậm hơn bóng một nhịp.</p>\r\n\r\n<p>16\'</p>\r\n\r\n<p>Công Phượng không thể dứt điểm</p>\r\n\r\n<p>Văn Đức thực hiện đường chuyền chọc khe tinh tế cho Công Phượng thoát xuống nhận bóng. Đáng tiếc dù đã đẩy được bóng tới sát biên ngang nhưng Công Phượng không thể dứt điểm.</p>\r\n\r\n<p><img alt=\"z3755194524641_891d579f7ec2950a242ad055851b3c92.jpg\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/z3755194524641891d579f7ec2950a242ad055851b3c92-1664281283786.jpg?watermark=true\" title=\"z3755194524641_891d579f7ec2950a242ad055851b3c92.jpg\" /></p>\r\n\r\n<p>Pha bứt tốc của Công Phượng (Ảnh: Hải Long).</p>\r\n\r\n<p>10\'&nbsp;</p>\r\n\r\n<p>Bàn thắng. Văn Đức mở tỉ số.</p>\r\n\r\n<p><strong>Công Phượng đá phạt góc, anh treo bóng xoáy vào cầu môn của Ấn Độ, thủ thành đội khách đẩy bóng ra và Văn Đức nhanh chân bắt vô lê ở trung tâm vòng cấm địa đưa bóng vào lưới.</strong></p>\r\n\r\n<p><img alt=\"z3755177989968_3a789bb7c3034c261305660c22341a1c.jpg\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/z37551779899683a789bb7c3034c261305660c22341a1c-1664280899580.jpg?watermark=true\" title=\"z3755177989968_3a789bb7c3034c261305660c22341a1c.jpg\" /></p>\r\n\r\n<p>Văn Đức ăn mừng sau khi ghi bàn (Ảnh: Khoa Nguyễn).</p>\r\n\r\n<p>10\'</p>\r\n\r\n<p>Hồ Tấn Tài sút xa</p>\r\n\r\n<p>Hồ Tấn Tài sút xa uy lực, bóng đi hướng vào cầu môn của Ấn Độ, thủ môn Sandhu đã tung người đẩy bóng ra biên.</p>\r\n\r\n<p>8\'</p>\r\n\r\n<p>Quang Hải, Vân Đức phối hợp đẹp mắt</p>\r\n\r\n<p>Quang Hải, Vân Đức phối hợp ban bật liên tục ở bên trái trong vòng cấm địa đối phương, tuy nhiên tuyển Việt Nam đã không có được pha dứt điểm.</p>\r\n\r\n<p><img alt=\"z3755156891742_802a03c24daedb913db88040f950bc5b.jpg\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/z3755156891742802a03c24daedb913db88040f950bc5b-1664280518806.jpg?watermark=true\" title=\"z3755156891742_802a03c24daedb913db88040f950bc5b.jpg\" /></p>\r\n\r\n<p>Văn Hậu ngăn cản pha đi bóng của Kumam (Ảnh: Khoa Nguyễn).</p>\r\n\r\n<p>5\'</p>\r\n\r\n<p>Cầu thủ Ấn Độ dứt điểm bất thành</p>\r\n\r\n<p>Samad lao vào dứt điểm điểm ở đầu vòng cấm địa nhưng hậu vệ của Việt Nam đã băng lên chặn bóng nhanh. Số 18 của Ấn Độ ngã song trọng tài không cắt còi.</p>\r\n\r\n<p>2\'</p>\r\n\r\n<p>Sóng gió trước cầu môn tuyển Việt Nam</p>\r\n\r\n<p>Bóng đi cắt mặt khung thành của tuyển Việt Nam sau quả phạt góc nhưng không có cầu thủ đội khách lao vào dứt điểm.</p>\r\n\r\n<p>1\'</p>\r\n\r\n<p>19h00- Trận đấu bắt đầu</p>\r\n\r\n<p><img alt=\"z3755135178926_04058b10ee074dee59fdf9a445db0f41.jpg\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/z375513517892604058b10ee074dee59fdf9a445db0f41-1664280074311.jpg?watermark=true\" title=\"z3755135178926_04058b10ee074dee59fdf9a445db0f41.jpg\" /></p>\r\n\r\n<p>Đội hình ra sân của tuyển Việt Nam (Ảnh: Hải Long).</p>', '1664282852_vietnam.jpg', '19', '2022-09-27 05:47:32', '2022-09-27 05:47:32', '2727-09-2022', '2322', NULL),
(43, 'CĐV lại chế nhạo sai lầm của Harry Maguire khiến tuyển Anh suýt thua trận', 'Harry Maguire đã mắc sai lầm trong khâu phòng ngự khiến đội tuyển Anh phải chịu quả phạt đền và giúp Đức có bàn mở tỷ số trên chấm 11m', '<p>Đội tuyển Anh bước vào trận đấu cuối cùng với tuyển Đức ở bảng A3 Nations League với mục tiêu tìm kiếm một trận thắng danh dự, khi đoàn quân của HLV Gareth Southgate đã chắc chắn xuống hạng League B sau 5 vòng đấu trước đó (2 hòa, 3 thua).</p>\r\n\r\n<p>Hiệp một cả hai hòa nhau không bàn thắng, nhưng mọi chuyện thay đổi kể từ hiệp 2 sau sai lầm của trung vệ Harry Maguire. Phút 51, xuất phát từ đường chuyền lên bất cẩn của Maguire, tiền đạo 19 tuổi Musiala đột phá vào vòng cấm và bị chính Maguire đốn ngã khiến tuyển Anh phải chịu quả phạt đền.</p>\r\n\r\n<p><img alt=\"CĐV lại chế nhạo sai lầm của Harry Maguire khiến tuyển Anh suýt thua trận - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/maguire-7-1664249351879.jpg\" title=\"CĐV lại chế nhạo sai lầm của Harry Maguire khiến tuyển Anh suýt thua trận - 1\" /><img alt=\"\" src=\"https://vn-gmtdmp.mookie1.com/t/v2/activity?tagid=V2_1036812&amp;src.rand=1664283588516&amp;\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Harry Maguire đốn ngã Musiala trong vòng cấm khiến tuyển Anh phải chịu quả phạt đền (Ảnh: PA).</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>Trên chấm 11m, tiền vệ Gundogan dễ dàng đánh bại thủ thành Pope để có bàn mở tỷ số cho tuyển Đức. Dù vậy, tuyển Anh đã nỗ lực trong những phút còn lại để có một trận hòa với tỷ số chung cuộc 3-3 trước \"cỗ xe tăng\" Đức.</p>\r\n\r\n<p>Chứng kiến sai lầm của trung vệ Harry Maguire, rất nhiều cổ động viên (CĐV) tuyển Anh đã buông lời chế nhạo đối với đội trưởng của Man Utd trên mạng xã hội.</p>\r\n\r\n<p>\"Làm thế nào anh ta vẫn được chọn là thủ lĩnh tinh thần cho cả Man Utd và đội tuyển Anh cơ chứ?\", một người hâm mộ bình luận.</p>\r\n\r\n<p>\"Maguire một lần nữa có pha tắc bóng ngu ngốc. Chúng tôi không hiểu làm thế nào Maguire có thể ra sân trong đội hình xuất phát của tuyển Anh nhưng đang phải dự bị ở Man Utd?\", một người khác thất vọng nói\". \"Anh ta mắc hết sai lầm này đến sai lầm khác\", một người khác nói thêm.</p>\r\n\r\n<p><img alt=\"CĐV lại chế nhạo sai lầm của Harry Maguire khiến tuyển Anh suýt thua trận - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/maguire-6-1664249391290.jpg\" title=\"CĐV lại chế nhạo sai lầm của Harry Maguire khiến tuyển Anh suýt thua trận - 2\" /></p>\r\n\r\n<p>HLV Gareth Southgate bị chỉ trích khi tin dùng Harry Maguire (Ảnh: Getty).</p>\r\n\r\n<p>Trong khi đó một người hâm mộ cho rằng Harry Maguire bị thổi phồng về đẳng cấp. \"Rõ ràng đó không phải là lỗi của anh ấy. Đó là do anh ấy bị đặt vào một đẳng cấp cao hơn so với trình độ, tài năng anh ấy có được\", người hâm mộ này khẳng định.</p>\r\n\r\n<p>Nhiều CĐV còn cho rằng HLV Gareth Southgate sẽ tiếp tục phải trả giá nếu cứ tin tưởng Maguire đá chính ở&nbsp;<a href=\"https://dantri.com.vn/tim-kiem/world+cup+2022.htm\">World Cup 2022</a>&nbsp;sắp tới. \"Đã đến lúc HLV Southgate phải loại thẳng tay Maguire khỏi đội hình Tam sư nếu như không muốn bị sa thải ở World Cup 2022 này\", một người hâm mộ khẳng định.</p>\r\n\r\n<p>Sau trận đấu với tuyển Đức, Harry Maguire là cầu thủ bị chấm điểm thấp nhất của tuyển Anh khi anh chỉ được 4 điểm. Cầu thủ được chấm điểm cao nhất của \"Tam sư\" là tiền vệ Jude Bellingham.</p>\r\n\r\n<p><img alt=\"CĐV lại chế nhạo sai lầm của Harry Maguire khiến tuyển Anh suýt thua trận - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/screen-shot-2022-09-27-at-60823-am-1664233951283.png\" title=\"CĐV lại chế nhạo sai lầm của Harry Maguire khiến tuyển Anh suýt thua trận - 3\" /></p>\r\n\r\n<p>Bảng xếp hạng chung cuộc bảng A3 UEFA Nations League (Ảnh: LS).</p>', '1664283600_harry\'.jpg', '19', '2022-09-27 06:00:00', '2022-09-27 06:00:00', '2727-09-2022', '3222', NULL),
(44, 'FA cáo buộc Ronaldo vi phạm luật', 'FA khẳng định Cristiano Ronaldo đã vi phạm điều luật của cơ quan này sau hành vi đập vỡ điện thoại của một cổ động viên vào tháng 4 năm nay.', '<p>Liên đoàn&nbsp;<a href=\"https://dantri.com.vn/the-thao/bong-da-trong-nuoc.htm\">bóng đá</a>&nbsp;Anh (FA) thông báo trên Twitter vào chiều qua (23/9): \"Cristiano Ronaldo đã bị buộc tội vi phạm điều luật E3 của FA vì một sự cố diễn ra sau trận đấu tại Premier League giữa Man Utd với Everton vào thứ Bảy ngày 9 tháng 4 năm 2022. Tiền đạo của Man Utd bị cáo buộc hành vi không đúng mực hoặc bạo lực sau khi trận đấu kết thúc\".</p>\r\n\r\n<p>Man Utd nhanh chóng tiếp nhận thông tin FA đưa ra và khẳng định sẽ có những hành động để hỗ trợ ngôi sao của đội. \"Chúng tôi ghi nhận thông báo của FA liên quan đến Ronaldo. Chúng tôi sẽ hỗ trợ cầu thủ trước những lời buộc tội này\", trang chủ của Man Utd viết.</p>\r\n\r\n<p><img alt=\"FA cáo buộc Ronaldo vi phạm luật - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/24/0cristiano-ronaldo-file-photo-1663979785508.jpg\" title=\"FA cáo buộc Ronaldo vi phạm luật - 1\" /></p>\r\n\r\n<p>Ronaldo thất vọng sau 90 phút tại Goodison Park vào ngày 9/4/2022 (Ảnh: Mirror).</p>\r\n\r\n<p>Vụ việc xảy ra sau trận đấu giữa Everton và Man Utd vào ngày 9/4/2022.&nbsp;<a href=\"https://dantri.com.vn/tim-kiem/ronaldo.htm\">Ronaldo</a>&nbsp;chơi đủ 90 phút, nhưng đội bóng của anh đã thất bại với tỷ số 0-1. Đó là trận thua thứ 5 trong 8 trận thua ở giai đoạn cuối mùa trước của \"Quỷ đỏ\".</p>\r\n\r\n<p>Ronaldo đập điện thoại của Jacob Harding xuống sàn khi cậu thiếu niên bị tự kỷ chìa điện thoại xin chụp hình lưu niệm trên đường ngôi sao người Bồ Đào Nha đi vào phòng thay đồ. Ngay sau đó Ronaldo đã lên tiếng xin lỗi và mời cậu bé 14 tuổi này tới xem trận đấu của Man Utd tại Old Trafford nhưng bị từ chối.&nbsp;</p>\r\n\r\n<p>Ronaldo nói: \"Không bao giờ dễ dàng đối mặt với cảm xúc trong những thời khắc khó khăn như chúng tôi đang đối mặt. Tôi muốn xin lỗi vì sự bộc phát của mình và nếu có thể, tôi muốn mời cổ động viên này đến xem một trận đấu tại Old Trafford như tinh thần&nbsp;<a href=\"https://dantri.com.vn/the-thao.htm\">thể thao</a>&nbsp;và fair-play\".</p>\r\n\r\n<p>Hành động của Ronaldo không bị cảnh sát Anh truy cứu. \"Chúng tôi xác nhận rằng một người đàn ông 37 tuổi đã tự nguyện trình diện và được thẩm vấn thận trọng liên quan đến cáo buộc hành hung và gây thiệt hại tài sản\", một thông báo từ Cảnh sát Merseyside viết về vụ việc của CR7.</p>\r\n\r\n<p>\"Cáo buộc liên quan đến một vụ việc sau trận Everton gặp Man Utd tại Goodison Park vào thứ Bảy ngày 9 tháng 4. Vấn đề đã được xử lý theo cách thận trọng có điều kiện, hiện tại vụ việc đã có kết luận\".</p>\r\n\r\n<p>Ronaldo hiện tại không ở Anh, anh đang cùng đội tuyển Bồ Đào Nha chuẩn bị cho các trận đấu tại UEFA Nations League gặp Cộng hòa Séc vào hôm nay (thứ Bảy) và Tây Ban Nha vào thứ Ba tuần sau.</p>\r\n\r\n<p>Trận đấu tiếp theo của Man Utd tại Premier League là trận derby Manchester, diễn ra trên sân vận động Etihad vào Chủ nhật ngày 2 tháng 10.</p>\r\n\r\n<p>Theo&nbsp;<strong>Man Utd, Mirror</strong></p>', '1664283708_ronaldo.jpg', '19', '2022-09-27 06:01:48', '2022-09-27 06:01:48', '2727-09-2022', '447', NULL),
(45, 'Tăng Phúc nói gì khi bị chê bai giọng hát sau \"Ca sĩ mặt nạ\"?', 'Tăng Phúc cho biết bản thân không buồn khi bị khán giả nhận xét \"một màu\". Anh chấp nhận bị chê bai để trưởng thành hơn và sẵn sàng thay đổi trong thời gian tới.', '<p>Sau nhiều cái tên đình đám như Lương Bích Hữu, Trung Quân hay Hà Nhi, \"chàng Lúa\" Tăng Phúc là ca sĩ tiếp theo lộ diện tại&nbsp;<em>Ca sĩ mặt nạ</em>.</p>\r\n\r\n<p>Không khó đoán như các giọng ca trước, \"chàng Lúa\" được Trấn Thành, Tóc Tiên và khán giả sớm nhận ra từ những vòng thi đầu tiên với chất giọng cao vút cùng kỹ thuật luyến láy đặc trưng.&nbsp;</p>\r\n\r\n<p>Tuy nhiên, cũng vì sự luyến láy này mà Tăng Phúc vấp phải không ít ý kiến trái chiều, bị đem ra so sánh với giọng hát của nhiều nghệ sĩ cùng tham gia chương trình.</p>\r\n\r\n<p><img alt=\"Tăng Phúc nói gì khi bị chê bai giọng hát sau Ca sĩ mặt nạ? - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/chang-lua-tang-phuc-tai-chuong-trinh-ca-si-mat-na-anh-facebook-nhan-vat-1664261266561.jpg\" title=\"Tăng Phúc nói gì khi bị chê bai giọng hát sau Ca sĩ mặt nạ? - 1\" /></p>\r\n\r\n<p>\"Chàng lúa\" Tăng Phúc tại chương trình \"Ca sĩ mặt nạ\" (Ảnh: Facebook nhân vật).</p>\r\n\r\n<p>Chia sẻ về lý do tham gia chương trình, giọng ca&nbsp;<em>Đừng chờ anh nữa</em>&nbsp;cho biết: \"Âm nhạc như một món ăn tinh thần, có người sẽ vì thích mà yêu mến ca sĩ, hoặc ngược lại. Tôi tham gia&nbsp;<em>Ca sĩ mặt nạ</em>&nbsp;với tinh thần vui vẻ trải nghiệm và để thử thách khán giả, liệu có ai nhận ra mình sau lớp mặt nạ khi chỉ nghe giọng hát không?\".</p>\r\n\r\n<p>Tăng Phúc tiết lộ bản thân đã có được câu trả lời mà mình mong muốn và được truyền cảm hứng rất nhiều khi nghe chia sẻ từ Tóc Tiên, Trấn Thành… Nam ca sĩ cho biết anh chấp nhận bị chê bai để trưởng thành, sẵn sàng thay đổi và cũng cần khán giả công tâm đánh giá.&nbsp;</p>\r\n\r\n<p>Rời&nbsp;<em>Ca sĩ mặt nạ</em>, mới đây, Tăng Phúc cho ra mắt MV&nbsp;<em>Kỳ vọng sai lầm</em>, đánh dấu bước chuyển mình thay vì chỉ \"đóng khung\" với hình ảnh ca sĩ chuyên hát nhạc ballad.</p>\r\n\r\n<p>\"Dự án này là sự thay đổi trong hình ảnh và cá tính âm nhạc của tôi để mọi người thấy tôi không chỉ hát được ballad, mà dòng nhạc R&amp;B hay bất kỳ dòng nhạc nào tôi cũng làm tròn. Tôi không buồn nếu trước đây khán giả nói mình \"một màu\", bởi tôi tâm niệm hãy làm tốt nhất những thế mạnh của bản thân còn hơn là cứ đi thử nghiệm rồi loay hoay không biết đang ở đâu\", nam ca sĩ chia sẻ.</p>\r\n\r\n<p><img alt=\"Tăng Phúc nói gì khi bị chê bai giọng hát sau Ca sĩ mặt nạ? - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/tang-phuc-muon-thu-nghiem-o-nhung-dong-nhac-khong-phai-so-truong-cua-minh-anh-nhan-vat-cung-cap-1664261267997.jpg\" title=\"Tăng Phúc nói gì khi bị chê bai giọng hát sau Ca sĩ mặt nạ? - 2\" /></p>\r\n\r\n<p>Tăng Phúc muốn thử nghiệm ở những dòng nhạc không phải sở trường của mình (Ảnh: Nhân vật cung cấp).</p>\r\n\r\n<p>Tăng Phúc được biết đến là ca sĩ chuyên cover và theo đuổi các ca khúc ballad. Anh từng rất thành công với bản cover&nbsp;<em>Chỉ là không cùng nhau.&nbsp;</em>Trong 2 năm gần đây, nam ca sĩ dần thoát khỏi danh xưng \"ca sĩ cover\" khi có trong tay nhiều bản hit riêng được khán giả yêu mến.&nbsp;</p>', '1664333163_tăngphuc.jpg', '14', '2022-09-27 19:46:03', '2022-09-27 19:46:03', '2828-09-2022', '213', NULL);
INSERT INTO `posts` (`id`, `title`, `short_desc`, `desc`, `image`, `post_category_id`, `created_at`, `updated_at`, `post_date`, `views`, `name`) VALUES
(46, 'Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022', 'Tối 25/9, chung kết cuộc thi Hoa hậu Hong Kong 2022 đã diễn ra và người giành chiến thắng là người đẹp Lâm Ngọc Vị. Á hậu 1 của cuộc thi là Hứa Tử Huyên và Á hậu 2 thuộc về Lương Siêu Di', '<p>Hoa hậu Hong Kong 2021 - Tống Uyển Dĩnh đã trao vương miện cho tân hoa hậu Lâm Ngọc Vị. Lâm Ngọc Vị là một trong những thí sinh được quan tâm ngay khi cuộc thi bắt đầu. Cô sở hữu vóc dáng gợi cảm với chiều cao trên 1,7m cùng đôi chân dài 1,19m.&nbsp;</p>\r\n\r\n<p>Tân hoa hậu Hong Kong năm nay 27 tuổi và là con gái của nam diễn viên Lâm Tuấn Hiền. Ông là ngôi sao nổi tiếng TVB (Hong Kong) thập niên 1980-1990. Ông tham gia nhiều tác phẩm ăn khách như&nbsp;<em>Biên thành lãng tử, Hoan lạc Trường An, Ngũ hổ tướng, Bản sắc nam nhi, Hào môn, Hào tình, Người hùng…</em></p>\r\n\r\n<p><img alt=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/hoa-hau-hong-kong-1-1664156613913.jpg\" title=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 1\" /></p>\r\n\r\n<p>3 người đẹp đăng quang tại cuộc thi Hoa hậu Hong Kong 2022, tối 25/9 (Ảnh: HK01).</p>\r\n\r\n<p><img alt=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/hoa-hau-hong-kong-4-1664156613875.jpg\" title=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 2\" /></p>\r\n\r\n<p>Tân Hoa hậu Hong Kong - Lâm Ngọc Vị trong đêm chung kết cuộc thi, 25/9 (Ảnh: ON).</p>\r\n\r\n<p>Lâm Ngọc Vị là con gái của tài tử Lâm Tuấn Hiền với người vợ đầu tiên. Lâm Tuấn Hiền và vợ đã ly hôn. Lâm Ngọc Vị bước chân vào showbiz từ năm 2014 với vai trò người mẫu.&nbsp;</p>\r\n\r\n<p>Năm 2019, Lâm Ngọc Vị lấn sân sang diễn xuất với tác phẩm&nbsp;<em>Psycho Detective 2</em>&nbsp;của đài ViuTV. Sau đó, cô tham gia show truyền hình thực tế&nbsp;<em>Take Seat by Number</em>. Dù vậy, sự nghiệp nghệ thuật của Lâm Ngọc Vị chưa có gì nổi bật.</p>\r\n\r\n<p>Trước khi tham dự cuộc thi Hoa hậu Hong Kong, Lâm Ngọc Vị từng tham gia một số show truyền hình thực tế và gây tranh cãi khi chia sẻ về kinh nghiệm phòng the trên một show giải trí. Lâm Ngọc Vị cũng thừa nhận cô từng có 5 người tình.</p>\r\n\r\n<p><img alt=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/hoa-hau-hong-kong-14-1664156613903.jpg\" title=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 3\" /></p>\r\n\r\n<p>Lâm Ngọc Vị là gương mặt gây chú ý tại cuộc thi Hoa hậu Hong Kong 2022 (Ảnh: Instagram).</p>\r\n\r\n<p><img alt=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/hoa-hau-hong-kong-12-1664156613911.jpg\" title=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 4\" /></p>\r\n\r\n<p>Lâm Ngọc Vị là con gái của ngôi sao điện ảnh xứ hương cảng - Lâm Tuấn Kiệt (Ảnh: Sina).</p>\r\n\r\n<p>Nhờ xuất thân con nhà sao, cô nhận được nhiều sự chú ý của truyền thông. Tuy nhiên, Lâm Ngọc Vị nhiều lần khẳng định không muốn được mọi người ưu ái chỉ vì danh tiếng của cha, muốn tự lực phát triển sự nghiệp trong giới giải trí.&nbsp;&nbsp;</p>\r\n\r\n<p>Trong suốt thời gian tham gia cuộc thi Hoa hậu Hong Kong 2022, Lâm Ngọc Vị được cho là nhận sự ưu ái vì là con gái của ngôi sao nổi tiếng. Song, một số khán giả vẫn đánh giá cao Lâm Ngọc Vị nhờ dáng vóc cân đối, đôi chân dài 1,19m và gu&nbsp;<a href=\"https://dantri.com.vn/giai-tri/thoi-trang.htm\">thời trang</a>&nbsp;hiện đại. Cô được xem là làn gió mới trong cuộc thi năm nay.&nbsp;</p>\r\n\r\n<p>Thổ lộ với phóng viên khi đăng ký tham dự cuộc thi Hoa hậu Hong Kong 2022, Lâm Ngọc Vị cho biết, cô muốn giành chiến thắng cao nhất và sẽ cố gắng hết mình.</p>\r\n\r\n<p>Người đẹp 27 tuổi nói: \"Tôi luôn làm việc chăm chỉ như bao đồng nghiệp để có thêm cơ hội phát triển. Tôi không muốn cứ mãi bị nhắc tới kèm gia thế của mình. Tôi từng làm gia sư, đầu bếp, bán bảo hiểm để duy trì cuộc sống và đam mê nghệ thuật. Hiện tại, tôi tìm hào quang ở cuộc thi Hoa hậu Hong Kong, thay vì dựa vào tên tuổi của cha\".&nbsp;</p>\r\n\r\n<p><img alt=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/hoa-hau-hong-kong-11-1664156613906.jpg\" title=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 5\" /></p>\r\n\r\n<p>Lâm Ngọc Vị sở hữu chiều cao 1,7m và đôi chân dài 1,19m (Ảnh: Sina).</p>\r\n\r\n<p><img alt=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 6\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/hoa-hau-hong-kong-10-1664156613898.jpg\" title=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 6\" /></p>\r\n\r\n<p>Trước khi dự thi hoa hậu, cô từng làm người mẫu, góp mặt trong một số show truyền hình nhưng chưa có thành tích nổi bật (Ảnh: Sina).</p>\r\n\r\n<p><img alt=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 7\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/hoa-hau-hong-kong-13-1664156613939.jpg\" title=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 7\" /></p>\r\n\r\n<p>Lâm Ngọc Vị thổ lộ, cô dự thi hoa hậu vì muốn tìm kiếm chiến thắng và khẳng định năng lực bản thân (Ảnh: Sina).</p>\r\n\r\n<p>Á&nbsp;hậu 1 của cuộc thi Hoa hậu Hong Kong 2022 - Hứa Tử Huyên là thí sinh được đánh giá cao trong suốt quá trình tranh tài. Cô còn đạt thêm giải phụ Hoa hậu quốc tế thân thiện. Người đẹp 25 tuổi hiện là chuyên viên phân tích tài chính. Khi MC xướng tên Lâm Ngọc Vị giành chiến thắng, Hứa Tử Tuyên không giấu được sự thất vọng.&nbsp;</p>\r\n\r\n<p>Á hậu 2 của cuộc thi, người đẹp Lương Siêu Di, là thí sinh từ Mỹ về tham dự cuộc thi. Cô cũng là một trong ba thí sinh được yêu thích nhất cuộc thi Hoa hậu Hong Kong 2022. Lương Siêu Di còn giành thêm giải phụ Người đẹp ăn ảnh nhất.</p>\r\n\r\n<p>Cuộc thi Hoa hậu Hong Kong 2022 được diễn ra đúng dịp kỷ niệm 50 năm kể từ khi cuộc thi sắc đẹp này được triển khai. Ban tổ chức cuộc thi muốn đây là một&nbsp;<a href=\"https://dantri.com.vn/su-kien.htm\">sự kiện</a>&nbsp;hoành tráng và thực hiện nhiều chiến dịch để quảng bá cho cuộc thi cũng như tăng \"gia vị\" cho đêm chung kết.&nbsp;</p>\r\n\r\n<p><img alt=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 8\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/hoa-hau-hong-kong-2-1664156613829.jpg\" title=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 8\" /></p>\r\n\r\n<p>Á hậu 1 của cuộc thi - Hứa Tử Huyên (Ảnh: HK01).</p>\r\n\r\n<p><img alt=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 9\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/hoa-hau-hong-kong-3-1664156613890.jpg\" title=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 9\" /></p>\r\n\r\n<p>Á hậu 2 của cuộc thi - người đẹp Lương Siêu Di (Ảnh: HK01).</p>\r\n\r\n<p>Trong đêm chung kết, các thí sinh của cuộc thi Hoa hậu Hong Kong 2022 được mặc trang phục của những người đẹp từng đăng quang. Trong đó, tân hoa hậu Lâm Ngọc Vị được ưu ái mặc trang phục của Quán quân cuộc thi Hoa hậu Hong Kong năm 1996 - Lý San San.&nbsp;</p>\r\n\r\n<p>Theo HK01, sân vận động Hồng Quán - nơi diễn ra chung kết cuộc thi Hoa hậu Hong Kong 2022, tối 25/9, là nơi xảy ra tai nạn sân khấu khiến vũ công Lý Khải Ngôn bị liệt hồi tháng 8 vừa rồi. Trong chung kết Hoa hậu Hong Kong 2022, công tác kiểm tra an toàn sân khấu được tăng cường và màn hình LED giữa sân khấu đã được chuyển sang hai bên.&nbsp;</p>\r\n\r\n<p>Tuy nhiên, sức hút của Hoa hậu Hong Kong 2022 vẫn không được như mong muốn. Lượng người theo dõi cuộc thi này trên sóng truyền hình không có nhiều đột phá.&nbsp;</p>\r\n\r\n<p>Theo Ban tổ chức, 20 người đẹp lọt vào chung kết Hoa hậu Hong Kong 2022 là những gương mặt được lựa chọn từ hơn 100 cô gái ghi danh tham gia vòng sơ tuyển và trải qua 3 vòng phỏng vấn sàng lọc khác nhau.</p>\r\n\r\n<p>Yêu cầu tham gia cuộc đua giành vương miện Hoa hậu Hong Kong 2022 là các cô gái từ 17 đến 28 tuổi. Các nghệ sĩ cũng được ban tổ chức khuyến khích mời bạn bè, người quen dự thi với hy vọng sẽ có sự xuất hiện của những gương mặt nổi trội, đáp ứng tiêu chuẩn của một hoa hậu mà họ đang tìm kiếm.&nbsp;</p>\r\n\r\n<p><img alt=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 10\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/26/hoa-hau-hong-kong-7-1664156613886.jpg\" title=\"Con gái cưng của tài tử nổi tiếng đăng quang Hoa hậu Hong Kong 2022 - 10\" /></p>\r\n\r\n<p>Những người đẹp góp mặt tại chung kết Hoa hậu Hong Kong 2022 (Ảnh: Sina).</p>\r\n\r\n<p>Ban Tổ chức cuộc thi khẳng định chất lượng thí sinh của Hoa hậu Hong Kong 2022 khá đồng đều và ổn định. Song, truyền thông xứ hương cảng và người hâm mộ không đánh giá quá cao chất lượng thí sinh năm nay.&nbsp;</p>\r\n\r\n<p>Cuộc thi Hoa hậu Hong Kong từng là một trong những cuộc thi nhan sắc nổi tiếng nhất nhì khu vực châu Á, được xem là bàn đạp tìm kiếm danh vọng của nhiều ngôi sao xứ hương cảng.</p>\r\n\r\n<p>Từ cuộc thi này, nhiều ngôi sao và mỹ nhân của làng giải trí xứ hương cảng đã được phát hiện như Lý Gia Hân, Quách Thiện Ni, Xa Thi Mạn, Trương Mạn Ngọc, Hồ Hạnh Nhi... Họ không chỉ có ngoại hình nổi bật mà còn thành tích đáng nể trong nghệ thuật.&nbsp;</p>\r\n\r\n<p>Tuy nhiên, vài năm trở lại đây, chất lượng thí sinh của cuộc thi này bị nhận định tụt dốc. Các thí sinh tham dự cuộc thi đều không có ngoại hình nổi bật, thậm chí gây tranh cãi. Nhiều thí sinh đăng quang tại cuộc thi không tìm được chỗ đứng trong làng giải trí.&nbsp;</p>', '1664333560_hoahau.jpg', '14', '2022-09-27 19:48:57', '2022-09-27 19:52:40', '2828-09-2022', '342', NULL),
(47, 'Hoa hậu Thùy Tiên khiến fan \"dậy sóng\": \"Tôi có thể lấy vợ cũng được\"', 'Những chia sẻ của Thùy Tiên trong buổi họp fan khi được đề cập đến Quang Linh Vlogs và chuyện lấy chồng khiến nhiều khán giả bất ngờ.', '<p>Hôm 24/9, Hoa hậu Nguyễn Thúc Thùy Tiên tổ chức buổi gặp gỡ, giao lưu với người hâm mộ. Đây là buổi họp fan chính thức đầu tiên của cô, cũng là dịp nàng hậu tri ân những người đã yêu thương, đồng hành cùng mình suốt thời gian qua.</p>\r\n\r\n<p>Thùy Tiên chọn không gian ngoài trời làm nơi tổ chức. Rất đông người hâm mộ đã có mặt từ rất sớm để chụp ảnh, nhận quà từ cô.&nbsp;</p>\r\n\r\n<p><img alt=\"Hoa hậu Thùy Tiên khiến fan dậy sóng: Tôi có thể lấy vợ cũng được - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/25/fan-meeting-thuy-tien-2-1664098154214.jpg\" title=\"Hoa hậu Thùy Tiên khiến fan dậy sóng: Tôi có thể lấy vợ cũng được - 1\" /></p>\r\n\r\n<p>Fan meeting của Thùy Tiên có sự tham gia của đông đảo người hâm mộ (Ảnh: Ban Tổ chức).</p>\r\n\r\n<p><img alt=\"Hoa hậu Thùy Tiên khiến fan dậy sóng: Tôi có thể lấy vợ cũng được - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/25/fan-meeting-thuy-tien-6-1664098154673.jpg\" title=\"Hoa hậu Thùy Tiên khiến fan dậy sóng: Tôi có thể lấy vợ cũng được - 2\" /></p>\r\n\r\n<p>Thùy Tiên mặc giản dị tại buổi giao lưu (Ảnh: Ban Tổ chức).</p>\r\n\r\n<p>Xuất hiện tại buổi gặp gỡ, Thùy Tiên trang điểm nhẹ nhàng, diện áo thun và quần jeans đơn giản, trẻ trung. Người đẹp không ngại tham gia các trò chơi vui nhộn cùng khán giả. Đây cũng là dịp nàng hậu sinh năm 1998 bộc bạch những tâm tư, tình cảm và giải đáp thắc mắc của người hâm mộ.</p>\r\n\r\n<p>Đáng chú ý, khi một người khán giả bất ngờ đặt câu hỏi cho Thùy Tiên: \"Anh Quang Linh đang chờ chị, khi nào chị lấy chồng?\", Hoa hậu Hòa bình Quốc tế 2021 thẳng thắn trả lời: \"Thùy Tiên có thể lấy chồng và cũng có thể không lấy chồng, có thể sinh con hoặc không sinh con. Thùy Tiên là một người khá phóng khoáng. Tiên nghĩ sống trên đời này quan trọng nhất là sau khi hoàn thành trách nhiệm của mình, mình có quyền được sống theo cách mình mong muốn, không cần theo khuôn khổ nào hết. Tiên có thể lấy vợ cũng được, đây là nói thật. Các bạn cũng vậy, hãy làm những điều mình thích và sống một cuộc đời như thế\".</p>\r\n\r\n<p>Câu trả lời của Thùy Tiên được những khán giả có mặt nhiệt liệt ủng hộ, vỗ tay không ngừng.</p>\r\n\r\n<p><img alt=\"Hoa hậu Thùy Tiên khiến fan dậy sóng: Tôi có thể lấy vợ cũng được - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/25/fan-meeting-thuy-tien-29-1664098153426.jpg\" title=\"Hoa hậu Thùy Tiên khiến fan dậy sóng: Tôi có thể lấy vợ cũng được - 3\" /></p>\r\n\r\n<p>Thùy Tiên và HIEUTHUHAI sôi nổi trên sân khấu (Ảnh: Ban Tổ chức).</p>\r\n\r\n<p><img alt=\"Hoa hậu Thùy Tiên khiến fan dậy sóng: Tôi có thể lấy vợ cũng được - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/25/fan-meeting-thuy-tien-30-1664098154747.jpg\" title=\"Hoa hậu Thùy Tiên khiến fan dậy sóng: Tôi có thể lấy vợ cũng được - 4\" /></p>\r\n\r\n<p>Lê Dương Bảo Lâm cũng có mặt tại buổi giao lưu (Ảnh: Ban Tổ chức).</p>\r\n\r\n<p>Buổi giao lưu còn gây bất ngờ với sự xuất hiện của diễn viên Lê Dương Bảo Lâm và rapper HIEUTHUHAI. Hai chàng trai mang đến những tiết mục âm nhạc sôi động, hài hước cho khán giả. Đặc biệt, Thùy Tiên còn hứa rằng cô sẵn sàng đóng MV cho HIEUTHUHAI trong tương lai nếu anh ngỏ lời mời.</p>\r\n\r\n<p>Cuối buổi gặp gỡ, người hâm mộ đã gửi đến nàng hậu phần quà bất ngờ gồm bánh kem, hoa… khiến cô không khỏi xúc động, bật khóc. Người đẹp liên tục cảm ơn mọi người vì đã luôn đồng hành cùng mình suốt thời gian qua.</p>\r\n\r\n<p><img alt=\"Hoa hậu Thùy Tiên khiến fan dậy sóng: Tôi có thể lấy vợ cũng được - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/25/fan-meeting-thuy-tien-43-1664098153125.jpg\" title=\"Hoa hậu Thùy Tiên khiến fan dậy sóng: Tôi có thể lấy vợ cũng được - 5\" /></p>\r\n\r\n<p>Thùy Tiên không kìm được nước mắt trước tình cảm của người hâm mộ (Ảnh: Ban Tổ chức).</p>\r\n\r\n<p>Từ khi đăng quang Hoa hậu Hòa bình Quốc tế 2021, Nguyễn Thúc Thùy Tiên (SN 1998) luôn là cái tên thu hút sự chú ý của công chúng và được truyền thông săn đón. Bên cạnh nhan sắc và tài năng, chuyện đời tư, tình cảm của cô cũng là chủ đề được chú ý.</p>\r\n\r\n<p>Cách đây không lâu, chuỗi hoạt động từ thiện của Thùy Tiên và hot YouTuber Quang Linh Vlogs (tên thật Phạm Quang Linh, SN 1997) tại Angola đã thu hút sự quan tâm đặc biệt của khán giả.</p>\r\n\r\n<p>Ê-kíp của Thùy Tiên và Quang Linh đã kết hợp xây 2 giếng nước sạch ở Angola để giúp đỡ 300 hộ dân nghèo trong sinh hoạt cũng như trồng trọt. Được biết, dự án do phía Thùy Tiên tài trợ kinh phí, nhóm của Quang Linh thay mặt thực hiện.</p>\r\n\r\n<p>19&nbsp;đã tặng424</p>', '1664333721_thuytien.jpg', '14', '2022-09-27 19:54:37', '2022-09-27 19:55:21', '2828-09-2022', '678', NULL),
(49, 'Ngô Kinh: \"Kẻ điên khùng\" của giới làm phim Trung Quốc', 'Ngô Kinh là ngôi sao võ thuật nổi tiếng của Trung Quốc với những tác phẩm như \"Chiến lang\" và \"Lưu lạc địa cầu\". Anh cũng được xem là một kẻ liều lĩnh và điên rồ trong công việc.', '<p>Ngô Kinh, sinh năm 1974, từng giành quán quân môn bắn súng&nbsp;tại cuộc thi võ toàn quốc ở Trung Quốc năm 1994. Từ năm 1998, anh gia nhập làng giải trí với những vai diễn&nbsp;<a href=\"https://dantri.com.vn/the-thao/vo-thuat.htm\">võ thuật</a>&nbsp;đẹp mắt và ấn tượng trong các bộ phim như&nbsp;<em>Thiếu Lâm Tự, Nam Thiếu Lâm, Thục Sơn kỳ hiệp, Sát phá lang, Bản sắc nam nhi...</em></p>\r\n\r\n<p>Nhờ khả năng võ thuật nổi bật, anh được nhận xét là người kế thừa Lý Liên Kiệt, Thành Long. Tên tuổi của Ngô Kinh còn được giới làm phim Hollywood biết tới nhờ thành công ở những \"bom tấn\" như hai phần phim<em>&nbsp;Chiến lang</em>&nbsp;và&nbsp;<em>Lưu lạc địa cầu.&nbsp;</em>Cái tên Ngô Kinh là sự bảo chứng về doanh thu phòng vé cho các tác phẩm điện ảnh.&nbsp;</p>\r\n\r\n<p><img alt=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/22/ngo-kinh-10-1663859981207.jpg\" title=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 1\" /></p>\r\n\r\n<p>Ngô Kinh được xem là kẻ điên rồ và liều lĩnh của giới làm phim Hoa ngữ (Ảnh: Sina).</p>\r\n\r\n<p>Năm 2017, Ngô Kinh cho ra mắt dự án&nbsp;<em>Chiến lang 2</em>&nbsp;và bất ngờ đạt được thành công ngoài mong đợi. Bộ phim có mức đầu tư 30 triệu USD, khá cao đối với&nbsp;<a href=\"https://dantri.com.vn/van-hoa/dien-anh.htm\">điện ảnh</a>&nbsp;Trung Quốc lúc bấy giờ, giúp anh thu về 877 triệu USD ở các phòng vé nội địa, đồng thời càn quét mọi kỷ lục điện ảnh ở quốc gia tỷ dân và trở thành \"điểm sáng của điện ảnh Trung Hoa\".&nbsp;</p>\r\n\r\n<p>Trước đó,&nbsp;<em>Chiến lang 1</em>&nbsp;chỉ thu về 89 triệu USD doanh thu phòng vé và được đề cử nhiều giải quan trọng như phim hay nhất, đạo diễn xuất sắc, kịch bản, nam nữ chính xuất sắc... tại các giải thưởng điện ảnh uy tín của Trung Quốc như Kim Kê, Bách Hoa, LHP Quốc tế Thượng Hải.</p>\r\n\r\n<p>Đặc biệt, bộ phim&nbsp;<em>Lưu lạc địa cầu</em>&nbsp;sản xuất năm 2019 của Ngô Kinh thu về hơn 700 triệu USD trên toàn thế giới. Riêng tại thị trường Trung Quốc, phim đạt 691 triệu USD doanh thu phòng vé.&nbsp;<em>Lưu lạc địa cầu</em>&nbsp;trở thành một trong 3 bộ phim có doanh thu phòng vé cao nhất thế giới vào năm 2019 và là một trong những tác phẩm điện ảnh Trung Quốc có doanh thu kỷ lục hiện tại.&nbsp;</p>\r\n\r\n<p><img alt=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/22/ngo-kinh-3-crop-1663859911736.jpeg\" title=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 2\" /></p>\r\n\r\n<p>Ngô Kinh nổi danh với \"Chiến lang\" và \"Lưu lạc địa cầu\" (Ảnh: Sohu).</p>\r\n\r\n<p>Tính đến thời điểm hiện tại,&nbsp;<em>Lưu lạc địa cầu</em>&nbsp;vẫn đang nằm trong top 20 bộ phim giả tưởng khoa học có doanh thu phòng vé cao nhất thế giới. Được biết, Ngô Kinh đầu tư kinh phí sản xuất bộ phim này và đây cũng là một trong những tác phẩm tâm huyết nhất trong sự nghiệp của anh.&nbsp;</p>\r\n\r\n<p>Năm 2021, Ngô Kinh góp mặt trong dự án&nbsp;<em>Hồ Trường Tân&nbsp;</em>do 3 đạo diễn lừng danh của Trung Quốc gồm Lâm Siêu Hiền, Từ Khắc và Trần Khải Ca hợp sức chỉ đạo. Được biết, đây là tác phẩm có mức đầu tư lên đến 200 triệu USD và được xem là \"bom tấn\" đắt đỏ nhất lịch sử điện ảnh Trung Quốc.</p>\r\n\r\n<p>Phim đạt doanh thu phòng vé 845 triệu USD và là tác phẩm ăn khách nhất năm 2021, vượt qua nhiều bom tấn Hollywood đình đám. Phần một thắng lợi khiến&nbsp;<em>Hồ Trường Tân</em>&nbsp;được xúc tiến sản xuất phần 2 mang tên là&nbsp;<em>Water Gate Bridge.</em></p>\r\n\r\n<p><img alt=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/22/ngo-kinh-1-1663859907128.jpg\" title=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 3\" /></p>\r\n\r\n<p>Ngô Kinh vẫn say mê với nghề diễn và công việc trong làng giải trí hơn 30 năm qua (Ảnh: Sina).</p>\r\n\r\n<p><strong>Kẻ liều lĩnh, điên rồ của giới làm phim Hoa ngữ</strong></p>\r\n\r\n<p>Nói về bí quyết thành công của Ngô Kinh, nhiều người nhận định, nó xuất phát từ sự liều lĩnh. Thậm chí, anh còn được gọi là \"kẻ điên khùng nhất trong giới giải trí Hoa ngữ\" bởi những quyết định táo bạo tới mức điên rồ trong sự nghiệp.&nbsp;&nbsp;</p>\r\n\r\n<p>Trong khi nhiều ngôi sao võ thuật dùng tiền để hưởng thụ, mua nhà, tậu xe hay đi&nbsp;<a href=\"https://dantri.com.vn/du-lich.htm\">du lịch</a>&nbsp;ở những địa điểm đắt đỏ thì Ngô Kinh sẵn sàng bỏ tiền túi để làm phim, bất kể sản phẩm điện ảnh đó có mang lại khoản doanh thu hậu hĩnh hay không.&nbsp;Đổi lại những vai diễn đẹp mắt, mạo hiểm trên màn ảnh, Ngô Kinh phải chịu những vết thương trên khắp cơ thể.&nbsp;</p>\r\n\r\n<p><img alt=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/22/ngo-kinh-5-1663859907101.jpg\" title=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 4\" /></p>\r\n\r\n<p>Ngô Kinh có tổng cộng hơn 100 mũi khâu trên khắp cơ thể và không ít lần phải nhập viện điều trị (Ảnh: Weibo).</p>\r\n\r\n<p>Anh từng đánh cược số phận vào hai siêu phẩm&nbsp;<em>Chiến lang</em>&nbsp;và&nbsp;<em>Lưu lạc đại cầu.&nbsp;</em>Ngôi sao thế hệ 7X dốc sạch tiền trong tài khoản, bán nhà, bán xe để đủ tiền làm phim. May mắn đã mỉm cười với anh khi cả hai bộ phim đều thành công ngoài sức mong đợi cả về doanh thu và tính nghệ thuật.&nbsp;&nbsp;</p>\r\n\r\n<p>Ngô Kinh cũng là một nghệ sĩ có tâm và hết lòng cho những vai diễn. Anh không bao giờ sử dụng người đóng thế cho nhân vật của mình. Do vậy, ngôi sao&nbsp;<em>Chiến lang</em>&nbsp;nhiều lần thương nặng và phải nhập viện.</p>\r\n\r\n<p>Năm 2014, trên phim trường&nbsp;<em>Sát phá lang 2</em>&nbsp;và&nbsp;<em>Chiến lang</em>, nam diễn viên tự mình thực hiện các cảnh mạo hiểm, không dùng người đóng thế. Hậu quả, anh bị thương nặng ở cả hai chân và phải phẫu thuật.&nbsp;</p>\r\n\r\n<p>Nói về những vết thương trên cơ thể, anh chia sẻ: \"Đời người không đôi lần làm chuyện điên rồ thì không đáng sống\".&nbsp;</p>\r\n\r\n<p><img alt=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/22/ngo-kinh-6-1663859907117.jpg\" title=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 5\" /></p>\r\n\r\n<p>Sau nhiều lần đóng phim mạo hiểm và bị thương, Ngô Kinh bị di chứng và phải chống nạng (Ảnh: Sina).</p>\r\n\r\n<p>Trong suốt sự nghiệp của mình, Ngô Kinh chịu nhiều thương tích. Trong gần 30 năm theo đuổi nghề võ, anh có tổng cộng hơn 100 mũi khâu trên khắp cơ thể, từ bàn chân, tay, thắt lưng, mũi và đầu... Anh cũng nhiều lần va chạm mạnh dẫn đến ảnh hưởng não và thần kinh.&nbsp;</p>\r\n\r\n<p>\"Tôi học võ từ nhỏ. 6 tuổi tôi phải khâu 5 mũi, 8 tuổi bị chấn động não, 9 tuổi bị gãy tay, 10 tuổi đứt dây chằng, 14 tuổi gãy chân, 19 tuổi bị gãy mũi, 20 tuổi bị đạn bắn, 21 tuổi đóng phim bị dao chém\", Ngô Kinh tâm sự về chặng đường khó khăn anh từng đi qua.&nbsp;</p>\r\n\r\n<p>Thậm chí, ngôi sao điện ảnh từng nhận giấy chẩn đoán liệt chân và phải trải qua khoảnh khắc giữa sự sống và cái chết. Sau những chấn thương dài ngày, Ngô Kinh thường xuyên phải chống nạng, làm bạn với xe lăn khi chấn thương tái phát.</p>\r\n\r\n<p>Ngô Kinh thừa nhận không còn đủ lực theo nghiệp diễn. Di chứng chấn thương trong quá khứ khiến cơ thể anh luôn bị đau nhức, phải uống thuốc và tập vật lý trị liệu để có thể ngủ. Trong show truyền hình mới đây, ngôi sao võ thuật tiết lộ sẽ lui về làm đạo diễn kiêm nhà đầu tư các tác phẩm điện ảnh.&nbsp;</p>\r\n\r\n<p>Tháng 9 này, hình ảnh Ngô Kinh chống nạng để di chuyển xuống phố được chia sẻ trên nhiều trang báo của Trung Quốc. Nam diễn viên bị tái phát chấn thương đầu gối nghiêm trọng, phải dùng nạng để đi lại, đồng thời phải dùng thuốc, trị liệu mỗi ngày.&nbsp;</p>\r\n\r\n<p><img alt=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 6\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/22/ngo-kinh-2-1663860120187.jpeg\" title=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 6\" /></p>\r\n\r\n<p>Hình ảnh Ngô Kinh chống nạng khi xuống phố, tháng 9/2022 (Ảnh: Sohu).</p>\r\n\r\n<p>Thời gian qua, Ngô Kinh làm việc cường độ cao. Nam diễn viên quay phim điện ảnh&nbsp;<em>Lưu lạc địa cầu 2</em>, tham gia show truyền hình thực tế và ngồi ghế giám khảo của các sự kiện phim ảnh.</p>\r\n\r\n<p>\"Tôi biết tổn thương của bản thân và cách ứng phó với nỗi đau, nhưng thực tế không dễ dàng gì với các di chứng dai dẳng. Mỗi khi đi ngủ, các cơ ở hai bên lưng sẽ bị co giật khiến bản thân đau nhức. Nhiều lúc vì quá đau tôi mất ngủ đến 3-4 đêm liên tiếp. Ngoài trị liệu bắt buộc, ngày nào vợ cũng phải massage giảm đau cho tôi\", anh nói trong một show truyền hình gần đây.&nbsp;</p>\r\n\r\n<p>Cuộc sống hôn nhân của Ngô Kinh cũng đáng ngưỡng mộ. Anh kết hôn cùng MC Tạ Nam từ năm 2014. Ngôi sao võ thuật luôn cảm ơn bạn đời vì sự ủng hộ hết mình của cô trong sự nghiệp. Suốt những năm tháng hẹn hò và ngay cả khi đã kết hôn, Ngô Kinh liên tục gặp chấn thương và không ít lần liều lĩnh đầu tư cho sự nghiệp.&nbsp;</p>\r\n\r\n<p>Tạ Nam chấp nhận \"sự điên rồ\" của chồng và trở thành hậu phương vững vàng của anh. Cặp đôi có hai con trai và gia đình 4 người của Ngô Kinh và Tạ Nam trở thành hình mẫu lý tưởng trong mắt đồng nghiệp, người hâm mộ.</p>\r\n\r\n<p><img alt=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 7\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/22/ngo-kinh-7-1663859906896.jpg\" title=\"Ngô Kinh: Kẻ điên khùng của giới làm phim Trung Quốc - 7\" /></p>\r\n\r\n<p>Ngô Kinh và vợ - MC Tạ Na (Ảnh: Sina).</p>', '1664334449_ngokinh.jpg', '17', '2022-09-27 20:07:29', '2022-09-27 20:07:29', '2828-09-2022', '334', NULL),
(50, 'Phận đời đáng thương của \"tiểu Lý Gia Hân\" mất tích bí ẩn hơn chục năm', 'Thái Hiểu Nghi từng là mỹ nhân đình đám một thời của làng giải trí Hong Kong. Tuy nhiên, những sóng gió trong cuộc sống cá nhân khiến nhan sắc và tài năng của cô đều dần mai một.', '<p>Thái Hiểu Nghi từng được truyền thông xem là một trong những bông hoa đẹp nhất nhì làng giải trí Hong Kong. Ở thời kỳ đỉnh cao sự nghiệp, truyền thông nhận định cô là bản sao của hoa hậu Lý Gia Hân, người có cả nhan sắc và tài năng.&nbsp;</p>\r\n\r\n<p>Thái Hiểu Nghi có vẻ ngoài vừa cá tính vừa dịu dàng. Những bộ phim có sự góp mặt của cô đều được đánh giá cao. Nữ diễn viên sinh năm 1971 từng góp mặt trong các bộ phim đình đám của đài ATV (Hong Kong) như&nbsp;<em>Long tại giang hồ, Bão táp trường đua, Hồng Hy Quan, Bích huyết thanh thiên Dương gia tướng, Tân Bao Thanh Thiên, Tôi có hẹn với mùa xuân…</em></p>\r\n\r\n<p><img alt=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/20/thai-hieu-nghi-15-1663647523919.jpeg\" title=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 1\" /></p>\r\n\r\n<p>Thái Hiểu Nghi từng là mỹ nhân nức tiếng một thời của màn ảnh Hong Kong (Ảnh: HK01).</p>\r\n\r\n<p>Năm 2002, sau khi đóng xong bộ phim&nbsp;<em>Pháp nội tình</em>, Thái Hiểu Nghi bỗng nhiên biến mất khỏi làng giải trí. Truyền thông Hong Kong khi đó liên tục đăng tin tìm kiếm nữ diễn viên nhưng không có hồi đáp.&nbsp;</p>\r\n\r\n<p>Tới năm 2014, gần 12 năm sau khi mất tích một cách bí ẩn, cô bất ngờ xuất hiện trở lại. Nữ diễn viên kể lại rằng, 12 năm trước, cô cùng đoàn phim tới Thái Lan để tham gia quảng bá cho bộ phim mới.&nbsp;Tại đó, cô gặp một đại gia giàu có người Thái Lan gốc Hoa. Người này đã ngỏ lời yêu Thái Hiểu Nghi và quyết tâm theo đuổi cô. Tuy nhiên, nữ diễn viên kiên quyết từ chối.</p>\r\n\r\n<p>Sau đó, cuộc sống của Thái Hiểu Nghi đã chuyển sang một trang mới. Nữ diễn viên nghi ngờ bản thân bị hãm hại khiến tinh thần suy sụp. Cô&nbsp;kể lại: \"Thời điểm còn làm việc ở đài ATV (Hong Kong), tôi có được mời sang Thái Lan tham dự một hoạt động. Tại đó, tôi gặp một người Thái gốc Hoa, anh ta đeo đuổi tôi nhưng tôi từ chối. Không hiểu sao, sau một lần gặp anh ta, tôi rơi vào trạng thái lạ lùng. Tôi không thể kiểm soát cảm xúc của mình, lúc nào cũng như sắp chết. Tinh thần tôi tuyệt vọng, chán nản, thậm chí đã không ít lần muốn tự vẫn\".</p>\r\n\r\n<p><img alt=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/20/phan-doi-dang-thuong-cua-1663681878655.jpeg\" title=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 2\" /></p>\r\n\r\n<p>Thái Hiểu Nghi được xem là bản sao của Lý Gia Hân vì vẻ ngoài xinh đẹp, cá tính (Ảnh: HK01).</p>\r\n\r\n<p><img alt=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/20/thai-hieu-nghi-1-1663647562576.jpeg\" title=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 3\" /></p>\r\n\r\n<p>Thái Hiểu Nghi biến mất khỏi làng giải trí từ năm 2002 (Ảnh: HK01).</p>\r\n\r\n<p>Cựu ngôi sao của đài ATV cho biết, cô đã được cứu thoát khỏi tình trạng này nhờ gia đình: \"Gia đình đã đưa tôi vào bệnh viện và chăm sóc tôi suốt một thời gian dài. Chị gái đã ở bên và động viên tôi về cả tinh thần lẫn tiền bạc trong khoảng thời gian đen tối đó. Chị khóc rất nhiều vì tôi\".&nbsp;</p>\r\n\r\n<p>Khi được hỏi vì sao lại quyết định tiết lộ bí mật sau nhiều nằm ở ẩn, Thái Hiểu Nghi cho biết cô muốn chia sẻ trải nghiệm với mọi người: \"Tôi muốn nói rằng ngay cả khi đối diện với những khó khăn, bạn cũng nên cố gắng vượt qua, bởi mọi thứ sẽ thay đổi và bạn sẽ lại thấy ánh mặt trời. Đừng từ bỏ khi gặp rắc rối. Sau khó khăn, hạnh phúc sẽ đến\".</p>\r\n\r\n<p>Khi công khai về quãng thời gian mất tích, Thái Hiểu Nghi cũng bày tỏ mong muốn được trở lại làm việc và được khán giả ủng hộ. Tuy nhiên, tới năm 2019, phóng viên bắt gặp Thái Hiểu Nghi tại một ga tàu điện ngầm. Nữ diễn viên xinh đẹp nức tiếng một thời ăn mặc lôi thôi, mái tóc buông dài, dáng đi chậm chạp&nbsp;và gương mặt lộ vẻ mệt mỏi.&nbsp;</p>\r\n\r\n<p><img alt=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/20/thai-hieu-nghi-10-1663647476280.jpg\" title=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 4\" /></p>\r\n\r\n<p>Vẻ đẹp gây thương nhớ của Thái Hiểu Nghi thời xuân sắc (Ảnh: HK01).</p>\r\n\r\n<p><img alt=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/20/thai-hieu-nghi-19-1663647476269.jpg\" title=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 5\" /></p>\r\n\r\n<p>Năm 2014, Thái Hiểu Nghi bất ngờ tiết lộ lý do khiến cô biến mất khỏi làng giải trí trong 12 năm (Ảnh: HK01).</p>\r\n\r\n<p>Khi hình ảnh của cô được đăng tải trên báo, nhiều khán giả thừa nhận, họ không còn nhận ra \"tiểu Lý Gia Hân\" xinh đẹp, quyến rũ ngày nào. Một số nguồn tin cho rằng, nữ diễn viên gặp vấn đề tâm lý nhưng thông tin này không được người thân của cô xác nhận.&nbsp;</p>\r\n\r\n<p>Từ năm 2019 đến nay, truyền thông Hong Kong không còn hay tin về Thái Hiểu Nghi. Một nguồn tin cho biết, nữ diễn viên thế hệ 7X mắc chứng trầm cảm và chưa lập gia đình dù cô từng tiết lộ việc có bạn trai. Ngắm nhìn những hình ảnh rực rỡ trong quá khứ của nữ diễn viên, nhiều khán giả tiếc nuối cho sự nghiệp ngắn ngủi và phận đời bất hạnh của nữ diễn viên.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 6\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/20/thai-hieu-nghi-11-1663647476324.jpg\" title=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 6\" /></p>\r\n\r\n<p>Năm 2014, Thái Hiểu Nghi bày tỏ mong muốn trở lại làng giải trí (Ảnh: Sina).</p>\r\n\r\n<p><img alt=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 7\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/20/thai-hieu-nghi-3-1663647475948.jpg\" title=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 7\" /></p>\r\n\r\n<p><img alt=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 8\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/20/thai-hieu-nghi-2-1663647476091.jpg\" title=\"Phận đời đáng thương của tiểu Lý Gia Hân mất tích bí ẩn hơn chục năm - 8\" /></p>\r\n\r\n<p>Hình ảnh Thái Hiểu Nghi năm 2019 khiến nhiều khán giả xót xa (Ảnh: HK01)</p>', '1664335732_lygiahannn.jpg', '15', '2022-09-27 20:28:52', '2022-09-27 20:28:52', '2828-09-2022', '333', NULL),
(51, 'Brad Pitt số nhọ trong siêu phẩm \"Bullet Train\" trên FPT Play', 'Đóng cùng dàn diễn viên ngôi sao, Brad Pitt khiến các bạn diễn hoàn toàn lu mờ trong bom tấn hành động \"Sát thủ đối đầu\" trên FPT Play.', '<p>Là dự án đánh dấu sự trở lại của Brad Pitt sau 3 năm không đóng chính, Bullet Train (Sát Thủ Đối Đầu) nhanh chóng thu hút sự chú ý của người hâm mộ. Khác với những vai diễn gai góc, nặng về chiều sâu, lần này tài tử gây ấn tượng với khán giả qua một nhân vật có tính cách tiếu lâm, thể hiện diễn xuất thoải mái và có phần \"tung tẩy\" trước ống kính.</p>\r\n\r\n<p>Cầm trịch dự án là đạo diễn David Leitch - người từng làm hàng loạt tác phẩm hành động nổi tiếng, được yêu thích như&nbsp;<em>John Wick</em>,&nbsp;<em>Atomic Blonde</em>&nbsp;hay&nbsp;<em>Deadpool 2</em>. Thế nên, khán giả hoàn toàn có thể tin tưởng vào chất lượng phim. Sự kết hợp giữa bộ đôi diễn viên - đạo diễn nổi tiếng hứa hẹn tạo nên một tác phẩm hấp dẫn, đậm tính giải trí.</p>\r\n\r\n<p><img alt=\"Brad Pitt số nhọ trong siêu phẩm Bullet Train trên FPT Play - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/25/brad-pitt-so-nho-trong-sieu-pham-bullet-train-tren-fpt-playdocx-1664121817483.jpeg\" title=\"Brad Pitt số nhọ trong siêu phẩm Bullet Train trên FPT Play - 1\" /></p>\r\n\r\n<p><strong>Diễn xuất đỉnh cao, diễn như không diễn</strong></p>\r\n\r\n<p>Trong phim, Brad Pitt vào vai Ladybug (Brad Pitt), một tay sát thủ thạo nghề nhưng thường xuyên gặp vận rủi. Dù theo đuổi công việc chết chóc nhưng Ladybug tự nhận mình là người theo chủ nghĩa ôn hòa. Anh luôn miệng nói về thiền, sự tĩnh tâm, tránh né sử dụng súng đạn trong khi thực hiện nhiệm vụ.</p>\r\n\r\n<p>Trong lần tái xuất, Ladybug nhận một nhiệm vụ thu giữ chiếc vali trên chuyến tàu tốc hành (shinkansen) đi từ Tokyo đến Kyoto ở Nhật Bản. Công việc tưởng chừng dễ dàng lại hóa phức tạp và nguy hiểm khi Ladybug đụng độ 7 sát thủ khác cũng truy lùng chiếc vali bí ẩn.</p>\r\n\r\n<p><img alt=\"Brad Pitt số nhọ trong siêu phẩm Bullet Train trên FPT Play - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/25/brad-pitt-so-nho-trong-sieu-pham-bullet-train-tren-fpt-playdocx-1664121817598.jpeg\" title=\"Brad Pitt số nhọ trong siêu phẩm Bullet Train trên FPT Play - 2\" /></p>\r\n\r\n<p>Sau&nbsp;<em>Deadpool 2</em>, bom tấn hành động Bullet Train là bộ phim thứ hai đánh dấu sự hợp tác giữa Brad Pitt và đạo diễn David Leitch. Đáng chú ý, cả hai tác phẩm này đều có yếu tố giễu nhại và đầy tính giải trí. Trong đó, những vai mà Brad Pitt đảm nhận đều là nhân vật nguy hiểm, phải đối mặt với nhiều tình huống oái oăm, ngang trái.</p>\r\n\r\n<p>Với vai Ladybug, Brad Pitt thể hiện khả năng diễn xuất tự nhiên, xóa nhòa ranh giới giữa nhân vật và đời thực. Từ điệu bộ, cử chỉ từ khuôn mặt phóng khoáng, pha chút phong trần của nhân vật rất tương đồng với cá tính tài tử ngoài đời<strong>.&nbsp;</strong>Ở nhiều phân đoạn, khán giả thích thú khi được chứng kiến tài tử lịch lãm U60 bộc lộ sự hài hước duyên dáng với nhiều mảng miếng tấu hài rất \"ngọt\".</p>\r\n\r\n<p><img alt=\"Brad Pitt số nhọ trong siêu phẩm Bullet Train trên FPT Play - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/25/brad-pitt-so-nho-trong-sieu-pham-bullet-train-tren-fpt-playdocx-1664121817699.jpeg\" title=\"Brad Pitt số nhọ trong siêu phẩm Bullet Train trên FPT Play - 3\" /></p>\r\n\r\n<p>So với các sát thủ còn lại, Ladybug có phần hậu đậu. Những pha hành động của anh ta cũng khiến người xem bật cười khi đối đầu kẻ thủ bằng chai nước suối hay chặn nòng súng bằng tay không. Sự chuyển mình của tài tử lịch lãm này được nhiều trang nổi tiếng như New York Times, Guardian… tán thưởng.</p>\r\n\r\n<p>Giới phê bình nhận định Bullet Train cho thấy hướng đi mới&nbsp;của Pitt. Sau sự thành công của kiệt tác&nbsp;<em>Once Upon a Time in Hollywood</em>, anh càng lấn sâu hơn vào những hình tượng gần gũi và thoải mái. Đạo diễn David Leitch cho biết \"<em>Cậu ấy là một diễn viên hài rất thông minh. Thậm chí Pitt còn đề xuất những cảnh hành động và cách biểu cảm rất sáng tạo</em>\"</p>\r\n\r\n<p><strong>Bối cảnh và dàn cast độc đáo</strong></p>\r\n\r\n<p>Một trong những yếu tố giúp Bullet Train tỏa sáng trong phim chính là phong cách ấn tượng của đạo diễn David Leitch. Với kinh nghiệm làm phim hành động lâu năm, anh xử lý tốt những cảnh đánh đấm, tạo được không khí hồi hộp, kịch tính từ đầu đến cuối. Chưa kể, David Leitch còn khéo léo lồng ghép yếu tố hài hước, gợi nhớ phong cách của quái kiệt Quentin Tarantino với cách dàn dựng độc đáo, cài cắm nhiều ẩn ý trong kịch bản.</p>\r\n\r\n<p><img alt=\"Brad Pitt số nhọ trong siêu phẩm Bullet Train trên FPT Play - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/25/brad-pitt-so-nho-trong-sieu-pham-bullet-train-tren-fpt-playdocx-1664121817775.jpeg\" title=\"Brad Pitt số nhọ trong siêu phẩm Bullet Train trên FPT Play - 4\" /></p>\r\n\r\n<p>Bối cảnh Nhật Bản và màu phim neo-noir đậm nét giúp phim khác biệt so với nhiều tác phẩm hành động Hollywood. Đạo diễn ưu tiên chọn những đại cảnh là khu phố sầm uất ở Tokyo, phủ kín ánh đèn tạo cảm giác xa lạ. Trái lại, những tòa tàu chật hẹp trên chuyến tàu tốc hành làm tăng sự căng thẳng của phim, nhất là những cảnh hành động. Khi Ladybug phải lần lượt đối đầu các đối thủ \"quái chiêu\" trong không gian nhỏ hẹp, cũng là lúc anh bộc lộ cá tính hào sảng, không sợ trời không sợ đất.</p>\r\n\r\n<p>Bên cạnh đó, dàn diễn viên đa quốc tịch cũng giúp phim giữ được độ hấp dẫn nhất định. Từ tài tử Aaron Taylor-Johnson - nổi tiếng với Kick-Ass (2010), ngôi sao người Anh gốc Nhật Andrew Koji đến nữ diễn viên Gen Z Joey King đều làm tròn vai. Sự xuất hiện của Michael Shannon trong vai phản diện chính giúp phim tạo được độ gay cấn nhất định. Đặc biệt, minh tinh Sandra Bullock dù xuất hiện ít ỏi nhưng cũng mang lại bất ngờ ở phút chót. Tất cả các yếu tố đó giúp phim thành công khi ra mắt, đạt doanh thu lên đến hơn 220 tỷ USD so với kinh phí sản xuất xấp xỉ 90 tỷ USD.</p>\r\n\r\n<p><img alt=\"Brad Pitt số nhọ trong siêu phẩm Bullet Train trên FPT Play - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/25/brad-pitt-so-nho-trong-sieu-pham-bullet-train-tren-fpt-playdocx-1664121817864.jpeg\" title=\"Brad Pitt số nhọ trong siêu phẩm Bullet Train trên FPT Play - 5\" /></p>\r\n\r\n<p>Bộ phim điện ảnh&nbsp;<a href=\"https://fptplay.vn/xem-video/sat-thu-doi-dau-bullet-train-630dd382ff6e0d82ca762106?utm_source=pr&amp;utm_medium=dantri.com.vn&amp;utm_campaign=MKT-PhimUSUKT9&amp;utm_content=BulletTrain\" rel=\"nofollow noopener\" target=\"_blank\">Sát Thủ Đối Đầu (tựa quốc tế: Bullet Train)</a>&nbsp;sẽ chính thức công chiếu trực tuyến tại Việt Nam trên các nền tảng của FPT Play từ ngày 29/09.</p>\r\n\r\n<p>Độc giả tải ứng dụng FPT Play và đăng ký tài khoản để thưởng thức nhiều bộ phim nổi tiếng và nội dung giải trí mọi lúc, mọi nơi. Thông tin chi tiết xin liên hệ hotline 19006600.</p>', '1664335830_fptlay.jpg', '17', '2022-09-27 20:30:30', '2022-09-27 20:30:30', '2828-09-2022', '777', NULL),
(52, 'Cuộc tình hỗn loạn của Johnny Depp và Amber Heard liên tiếp lên phim', 'Cuộc tình hỗn loạn và loạt vụ kiện tụng dai dẳng giữa hai ngôi sao Hollywood - Johnny Depp và Amber Heard - liên tục được chuyển thể thành phim.', '<h2>.</h2>\r\n\r\n<p><img alt=\"Cuộc tình hỗn loạn của Johnny Depp và Amber Heard liên tiếp lên phim - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/17/1-1663387928739.jpg\" title=\"Cuộc tình hỗn loạn của Johnny Depp và Amber Heard liên tiếp lên phim - 1\" /></p>\r\n\r\n<p>Johnny Depp và Amber Heard khi còn gắn bó (Ảnh: Grazia Magazine).</p>\r\n\r\n<p>Bộ phim làm về việc kiện tụng sau khi ly hôn giữa hai diễn viên nổi tiếng ở Hollywood - Johnny Depp và Amber Heard sẽ được ra mắt vào cuối tháng 9 này. Như vậy, đã có hai dự án phim khai thác cuộc đối đầu rình rang trước tòa án giữa hai ngôi sao Hollywood từng một thời là vợ chồng của nhau.</p>\r\n\r\n<p>Bộ phim \"Hot Take: The Depp/Heard Trial\" sẽ được cho ra mắt vào ngày 30/9 tới đây trên một nền tảng trực tuyến. Nội dung phim khai thác những chi tiết kịch tính nhất trong vụ kiện tụng kéo dài hơn 6 tuần giữa Depp và Heard diễn ra trong năm nay. Ngoài ra, phim cũng sẽ khắc họa mối quan hệ tình cảm hỗn loạn, từ yêu chuyển sang hận, giữa Depp và Heard.</p>\r\n\r\n<p>Trong bộ phim này, nam diễn viên Mark Hapka vào vai tài tử Johnny Depp, nữ diễn viên Megan Davis vào vai minh tinh Amber Heard. Bộ phim được đạo diễn bởi Sara Lohman.</p>\r\n\r\n<p>Vụ kiện giữa Johnny Depp và Amber Heard đã đi tới kết thúc vào ngày 1/6 năm nay. Phần thắng nghiêng về phía Johnny Depp. Tòa án đưa ra phán quyết rằng Depp thắng trên 3 luận điểm tố cáo Amber Heard bôi nhọ danh dự của anh.</p>\r\n\r\n<p>Về phía Amber Heard, cô thắng trên một luận điểm trong vụ kiện ngược của mình, theo phía Heard, chính cô cũng đã bị ảnh hưởng về danh dự và hình ảnh vì các động thái của Johnny Depp.</p>\r\n\r\n<p><img alt=\"Cuộc tình hỗn loạn của Johnny Depp và Amber Heard liên tiếp lên phim - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/17/2-1663387928726.jpg\" title=\"Cuộc tình hỗn loạn của Johnny Depp và Amber Heard liên tiếp lên phim - 2\" /></p>\r\n\r\n<p>Đã có hai dự án phim khai thác cuộc đối đầu rình rang trước tòa án giữa hai ngôi sao Hollywood từng một thời là vợ chồng của nhau (Ảnh: Grazia Magazine).</p>\r\n\r\n<p>Khởi đầu vụ kiện bắt đầu từ một bài báo mà Amber Heard từng viết cho tờ tin tức&nbsp;<em>Washington Post</em>&nbsp;(Mỹ) hồi năm 2018, theo đơn kiện của Depp, bài báo này đã bôi nhọ danh dự của anh, với nội dung ngầm cho rằng anh là người gây ra bạo hành trong gia đình. Khi kết thúc vụ kiện, Johnny Depp được bồi thường 10,35 triệu USD, Amber Heard được bồi thường 2 triệu USD.</p>\r\n\r\n<p>Johnny Depp và Amber Heard chính thức là vợ chồng được hơn một năm, nhưng họ kiện tụng ra tòa tại Anh và Mỹ tới... 5 năm mới tạm thời dừng lại. Cuộc ly hôn lùm xùm giữa Johnny Depp và Amber Heard được nhiều hãng phim... làm thành phim.</p>\r\n\r\n<p>Hồi cuối năm 2021, một nền tảng trực tuyến cũng từng thực hiện một bộ phim tài liệu dài hai tập có tên \"Johnny vs. Amber\". Bộ phim tài liệu này xoay quanh giai đoạn đổ vỡ hôn nhân của cặp đôi ngôi sao Hollywood, cũng như quá trình ly hôn, kiện tụng rình rang diễn ra sau đó.</p>\r\n\r\n<p>Bộ phim không đứng về phía ai trong hai nhân vật chính. Johnny Depp thấy mình lấy phải một người phụ nữ dối trá, xảo quyệt, một người không từ thủ đoạn gì để bảo vệ hình ảnh bản thân trước truyền thông - công chúng.</p>\r\n\r\n<p>Amber Heard thấy mình lấy phải một người đàn ông ban đầu những tưởng là rất đáng mơ ước, nhưng rồi hóa ra lại là một người rượu chè bê tha, lạm dụng chất kích thích và thay đổi đến mức như trở thành một quái vật bạo lực.</p>\r\n\r\n<p>Những điều này đều dựa trên chính những cáo buộc đanh thép và không khoan nhượng mà đôi bên đã đưa ra trong quá trình theo đuổi kiện tụng. Mỗi bên đều có lý lẽ của mình và đều cho rằng mình mới là nạn nhân, là bên bị hại, bị thiệt thòi.</p>\r\n\r\n<p><img alt=\"Cuộc tình hỗn loạn của Johnny Depp và Amber Heard liên tiếp lên phim - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/04/23/deppheardnyp-1-1-1650692103123.jpg\" title=\"Cuộc tình hỗn loạn của Johnny Depp và Amber Heard liên tiếp lên phim - 3\" /></p>\r\n\r\n<p>Johnny Depp (59 tuổi) và Amber Heard (36 tuổi) kết hôn hồi năm 2015, tới năm 2017 thì mọi thủ tục ly hôn hoàn tất (Ảnh: New York Post).</p>\r\n\r\n<p>Bộ phim tài liệu đưa lại những góc nhìn cận cảnh về quá trình theo đuổi kiện tụng của đôi bên, những nhân chứng xuất hiện trước tòa, những đoạn video, những đoạn ghi âm, những dòng tin nhắn và những hình ảnh mà đôi bên đã lưu lại rồi dùng để tố cáo nhau về sau. Bộ phim đưa lại góc nhìn sâu sắc vào cuộc chiến pháp lý dài lâu, mệt mỏi, rình rang giữa Johnny Depp và Amber Heard.</p>\r\n\r\n<p>Chuyện phim khắc họa một sự việc nhưng từ hai góc nhìn của người trong cuộc, để người xem hiểu về những gì mà đôi bên đã trải qua, hiểu về những biến đổi của một mối quan hệ giữa hai con người từng một thời gắn bó trong hôn nhân. Bộ phim cho thấy một câu chuyện chân thực, rằng hôn nhân có thể đi chệch hướng và đưa lại những điều tệ hại kinh khủng như thế nào cho mỗi bên.</p>\r\n\r\n<p>Johnny Depp (59 tuổi) và Amber Heard (36 tuổi) kết hôn hồi năm 2015, tới năm 2017 thì mọi thủ tục ly hôn hoàn tất. Kể từ năm 2016, khi đơn ly hôn được phía Amber Heard nộp lên tòa án, hai người đã bắt đầu lời qua tiếng lại với những cáo buộc hướng vào đối phương và sau đó, một cuộc chiến pháp lý kéo dài đã khiến hình ảnh và tên tuổi của cả đôi bên đều bị ảnh hưởng.</p>\r\n\r\n<p>Hồi tháng 11/2020, Johnny Depp đã bị thua trong phiên tòa diễn ra tại London (Anh), khi đó, Depp kiện một tờ tin tức ở Anh vì những lời lẽ phỉ báng, sai sự thật về việc nam diễn viên là người đàn ông \"đánh vợ\". Trong vụ kiện ở London, Amber Heard không phải là bên bị kiện, cô chỉ đóng vai trò nhân chứng ủng hộ cho tờ tin tức.</p>\r\n\r\n<p>Phát</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bật âm thanh</p>\r\n\r\n<p>Thời gian hiện tại&nbsp;0:00</p>\r\n\r\n<p>/</p>\r\n\r\n<p>Độ dài&nbsp;2:15</p>\r\n\r\n<p>Đã tải:&nbsp;26.66%</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Toàn màn hình</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cài đặt</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Trailer phim \"Johnny vs. Amber\" (Video: Discovery +).</p>\r\n\r\n<p>Sau đó, trong năm 2021, Johnny Depp tiếp tục theo đuổi vụ kiện tại Mỹ. Lần này, Amber Heard là bên bị kiện, Johnny Depp kiện vợ cũ vì đã bôi nhọ danh dự của anh. Johnny Depp kiện Amber Heard vì bài báo do cô thực hiện và đăng trên tờ&nbsp;<em>Washington Post</em>&nbsp;hồi tháng 12/2018, trong đó Amber Heard nói về việc cô bị bạo hành trong gia đình.</p>\r\n\r\n<p>Johnny Depp đệ đơn kiện, yêu cầu được Amber Heard đền bù 50 triệu USD. Depp cho rằng mình là nạn nhân của những cáo buộc sai sự thật mà Amber Heard ngầm đưa ra trong bài báo, dù bài báo không một lần nhắc tên đích danh Johnny Depp, nhưng theo phía nam tài tử, bất cứ ai đọc bài báo cũng hiểu Amber Heard đang nói về ai.</p>', '1664335977_jooony.jpg', '15', '2022-09-27 20:32:57', '2022-09-27 20:32:57', '2828-09-2022', '644', NULL);
INSERT INTO `posts` (`id`, `title`, `short_desc`, `desc`, `image`, `post_category_id`, `created_at`, `updated_at`, `post_date`, `views`, `name`) VALUES
(53, 'Tuổi thơ nghèo khó có tác động như thế nào tới \"vua hài\" Châu Tinh Trì?', 'Lớn lên trong cảnh nghèo và luôn là một cậu học trò cá biệt đã có tác động như thế nào đối với Châu Tinh Trì, để sau này ông trở thành \"vua hài\"?', '<p><strong>Xuất thân nghèo khó</strong></p>\r\n\r\n<p>Hình ảnh khu dân cư nghèo trong bộ phim \"Tuyệt đỉnh Kungfu\" (2004) - một nơi đông đúc, quy tụ những người&nbsp;<a href=\"https://dantri.com.vn/lao-dong-viec-lam/lao-dong.htm\">lao động</a>&nbsp;bình dân - đã được lấy cảm hứng từ một khu dân cư nghèo ở Hồng Kông nơi Châu Tinh Trì từng một thời gắn bó suốt tuổi ấu thơ.</p>\r\n\r\n<p>\"Đó là nơi tôi đã sống, chen chúc, chật chội, nhưng cũng là nơi tôi thân thiết nhất, chẳng có ai là người lạ, giữa các hộ gia đình chẳng có gì là bí mật. Đó cũng là nơi luôn ẩn chứa nhiều điều bất ngờ, chẳng hạn có lần tôi tình cờ phát hiện một người hàng xóm từng là võ sư…\", Châu Tinh Trì từng tâm sự như vậy.</p>\r\n\r\n<p><img alt=\"Tuổi thơ nghèo khó có tác động như thế nào tới vua hài Châu Tinh Trì? - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/14/1-1663172540911.jpg\" title=\"Tuổi thơ nghèo khó có tác động như thế nào tới vua hài Châu Tinh Trì? - 1\" /></p>\r\n\r\n<p>Hình ảnh khu dân cư nghèo trong bộ phim \"Tuyệt đỉnh Kungfu\" (2004) lấy cảm hứng từ nơi Châu Tinh Trì từng gắn bó suốt tuổi ấu thơ (Ảnh: Sohu).</p>\r\n\r\n<p>Trong những bộ phim của Châu Tinh Trì, \"vua hài\" luôn đưa vào những trải nghiệm của chính ông. Một chủ đề thường xuất hiện trong phim của Châu Tinh Trì, đó là cuộc chiến đấu, vật lộn của những con người bé nhỏ trước hoàn cảnh sống khó khăn, chật vật. Điều này phản ánh một phần quá trình trưởng thành của chính \"vua hài Hồng Kông\".</p>\r\n\r\n<p>Trong những năm tháng tuổi thơ của \"vua hài\", gia đình ông luôn trong hoàn cảnh sống rất chật vật. Cả nhà sống trong ngôi nhà chật chội, ăn uống kham khổ.</p>\r\n\r\n<p>Cha mẹ lại thường xuyên cãi vã. Cuối cùng, mẹ của Châu Tinh Trì quyết định ly hôn và tự mình nuôi ba người con gồm hai gái, một trai. Châu Tinh Trì là con thứ hai, cha mẹ ông ly hôn khi ông mới 7 tuổi. Đối với Châu Tinh Trì, ông thường nói như thể việc cha mẹ ông ly hôn không phải điều gì quá đáng buồn.</p>\r\n\r\n<p>Châu Tinh Trì từng nhắc nhớ lại chuyện cha mẹ thường xuyên cãi nhau theo cách kể hài hước: \"Cha mẹ tôi rất thú vị, thực tế cả hai người đều yêu nghệ thuật và có chất nghệ sĩ, cách họ đối thoại và hành xử với nhau khiến tôi cảm thấy rất thú vị khi quan sát.</p>\r\n\r\n<p>Thậm chí, cả khi họ cãi nhau tôi cũng thích xem. Mẹ tôi không phải một người phụ nữ dễ bảo, vì vậy, những trận cãi vã của họ thường đưa tới những kết thúc bất ngờ khó đoán trước. Tôi có một tuổi thơ vui vẻ, tôi luôn có rất nhiều điều thú vị để làm, chẳng hạn như ra công viên chơi hay luyện võ. Tôi không bao giờ ngồi lại và cảm thấy buồn bã trong những năm tháng tuổi thơ của mình\".</p>\r\n\r\n<p><img alt=\"Tuổi thơ nghèo khó có tác động như thế nào tới vua hài Châu Tinh Trì? - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/14/2-1663172540911.jpg\" title=\"Tuổi thơ nghèo khó có tác động như thế nào tới vua hài Châu Tinh Trì? - 2\" /></p>\r\n\r\n<p>Châu Tinh Trì bên mẹ - bà Lăng Bảo Nhi trong một bức ảnh chụp nhiều năm về trước (Ảnh: Sohu).</p>\r\n\r\n<p>Trong phim của Châu Tinh Trì đôi khi có xuất hiện hình ảnh người phụ nữ nghèo, sống trong xóm lao động nhưng ngày ngày vẫn nghe nhạc, ca hát, đó chính là hình ảnh mẹ ông. Mẹ ông rất thích hát và cũng rất hay hát. Bà còn thích đóng kịch và tham gia vào đội kịch tại khu dân cư.</p>\r\n\r\n<p>Mẹ của Châu Tinh Trì rất tích cực tham gia các hoạt động văn nghệ tại khu dân cư, mỗi lần bà tham gia vở diễn nào, bà đều bắt các con đi xem.</p>\r\n\r\n<p>Nhận xét về cách mẹ diễn xuất, Châu Tinh Trì cũng từng chia sẻ hài hước và thẳng thắn: \"Cho tới giờ tôi vẫn không hiểu ngày xưa mẹ tôi đã diễn cái gì, nhưng mỗi khi tôi nhìn thấy mẹ diễn một cách nồng nhiệt trên sân khấu, tôi lại không nín được cười. Mẹ đã truyền cảm hứng rất lớn cho tôi…\".</p>\r\n\r\n<p>Châu Tinh Trì rất ít khi nói về cha, trong các cuộc phỏng vấn, chỉ có vài lần ông nói thoáng qua về người cha của mình. Châu Tinh Trì cho biết ông từng ít gặp lại cha mình, nhưng khi người cha nhiều tuổi hơn, ông đã thường xuyên tới thăm cha hơn. Trong cảm nhận của Châu Tinh Trì, cha của ông cũng là người hài hước.</p>\r\n\r\n<p>Sau khi ly hôn, một mình mẹ Châu Tinh Trì phải nuôi 3 con, bà làm việc cật lực. Vì công việc quá bận rộn nên bà thường chỉ kịp chuẩn bị cho các con mỗi đứa một bát mì vào bữa tối. Về sau, khi đã trở thành ngôi sao nổi tiếng, Châu Tinh Trì vẫn thích ăn những bát mì bình dân bởi nó gợi nhắc cho ông nhớ về một giai đoạn trưởng thành nhiều gian khó của bản thân.</p>\r\n\r\n<p>Thuở nhỏ, nhà nghèo không có tivi, Châu Tinh Trì và các bạn thường góp tiền lại để trả cho cửa hàng bán tivi, nhờ người bán bật cho bọn trẻ xem những bộ phim kiếm hiệp, phim võ thuật, phim hành động...</p>\r\n\r\n<p>Cũng trong quãng thời gian này, Lý Tiểu Long trở về Hồng Kông và bắt đầu tung ra những bộ phim võ thuật, tạo nên cơn sốt học võ.</p>\r\n\r\n<p><img alt=\"Tuổi thơ nghèo khó có tác động như thế nào tới vua hài Châu Tinh Trì? - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/14/4-1663172540896.jpg\" title=\"Tuổi thơ nghèo khó có tác động như thế nào tới vua hài Châu Tinh Trì? - 3\" /></p>\r\n\r\n<p>Châu Tinh Trì là một ẩn số khó hiểu, ông hay im lặng và sống khép kín (Ảnh: Sohu).</p>\r\n\r\n<p>Châu Tình Trì vẫn nhớ lần đầu ông được vào rạp xem phim: \"Năm tôi 10 tuổi, mẹ đưa tôi đi xem phim&nbsp;<a href=\"https://dantri.com.vn/van-hoa/dien-anh.htm\">điện ảnh</a>&nbsp;lần đầu tiên, đó là phim \"Fist of Fury\" (Tinh Võ Môn - 1972) của Lý Tiểu Long, tim tôi muốn nhảy ra khỏi lồng ngực và có lúc nước mắt tôi đã rơi. Đối với gia đình rất nghèo của tôi khi ấy, việc mẹ đưa cả ba đứa con đi xem phim là một sự việc trọng đại\".</p>\r\n\r\n<p>Đối với mẹ, Châu Tinh Trì cũng là một ẩn số khó hiểu, ông hay im lặng và sống khép kín. Ngay từ khi còn nhỏ, Châu Tinh Trì đã không có thói quen chia sẻ, tâm sự với mọi người, vì vậy dù là những người thân nhất cũng khó hiểu nổi suy nghĩ và cảm xúc thật của Châu Tinh Trì.</p>\r\n\r\n<p>Về sau, trong bước đường sự nghiệp, dù có nhiều lời đồn đại tai tiếng, nhưng Châu Tinh Trì cũng chỉ im lặng, không giải thích nhiều lời, một phần bởi tính cách của \"vua hài\" không thích nói nhiều, trái ngược hẳn với những vai diễn hài hước \"lắm lời\" vẫn thường xuất hiện trong phim của ông.</p>\r\n\r\n<p>Châu Tinh Trì được nhìn nhận là một diễn viên kiêm đạo diễn có tài năng hàng đầu trong thể loại phim hài của giới làm phim Hoa ngữ, ông đã đạt nhiều thành tựu trong sự nghiệp, nhưng vì kiệm lời với đồng nghiệp, trong công việc lại rất khắt khe, nên Châu Tinh Trì làm mất lòng nhiều đồng nghiệp.</p>\r\n\r\n<p>Châu Tinh Trì có rất ít bạn, kể cả bạn trong giới làm phim hay ngoài cuộc sống, những người yêu mến \"vua hài\" thường nhận xét rằng ông giống như một ngôi sao trong vũ trụ, dù tỏa sáng nhưng rất cô đơn, tách biệt.</p>\r\n\r\n<p><strong>Cậu học trò cá biệt</strong></p>\r\n\r\n<p>Ngay từ khi còn học tiểu học, Châu Tinh Trì đã là một cậu bé nghịch ngợm, tinh quái. Châu Tinh Trì thường xuyên bị giám thị phạt. Ông từng hài hước nói về quãng thời gian đi học của mình rằng: \"Các thầy cô nhìn nhận tôi như thế nào à? Họ tránh nhìn thấy tôi. Vì cứ nhìn thấy tôi là y như rằng họ thấy đau đầu\".</p>\r\n\r\n<p>Trong những ngày tháng đi học, Châu Tinh Trì luôn là cậu học trò nghịch ngợm và điểm số thì lẹt đẹt. Khi đi học, cậu bé Châu Tinh Trì luôn thích thu hút sự chú ý bằng những trò tinh quái, nhưng khi đứng trước các bạn nữ, cậu bé lại luôn ngượng ngùng, bẽn lẽn.</p>\r\n\r\n<p><img alt=\"Tuổi thơ nghèo khó có tác động như thế nào tới vua hài Châu Tinh Trì? - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/14/3-1663172540903.jpg\" title=\"Tuổi thơ nghèo khó có tác động như thế nào tới vua hài Châu Tinh Trì? - 4\" /></p>\r\n\r\n<p>Ngay từ khi còn học tiểu học, Châu Tinh Trì đã là một cậu bé nghịch ngợm, tinh quái (Ảnh: Sohu).</p>\r\n\r\n<p>Khi học đến lớp 10, Châu Tinh Trì bắt đầu đi làm thêm ngoài giờ học, cậu thiếu niên được nhận vào làm tại một quán bar. Về sau, mỗi khi cùng đồng nghiệp, bạn bè đi hát, Châu Tinh Trì chỉ hát những bài hát cũ, bởi đó chính là những bài hát hiếm hoi mà Châu Tinh Trì thuộc lòng cả ca từ và giai điệu, đó chính là những bài hát mà hàng đêm, tại quán bar năm xưa, ông đã nghe \"mòn cả tai\".</p>\r\n\r\n<p>Châu Tinh Trì trải qua nhiều việc làm thêm, từ làm công việc phục vụ tại quán ăn, quán bar, đến bán hàng tại cửa hiệu, đi bán báo dạo… Đối với Tinh Trì, thời gian này đã cho ông cơ hội được sớm giao tiếp với nhiều loại người khác nhau, nhờ đó, Châu Tinh Trì trở nên nhanh trí và linh hoạt hơn.</p>\r\n\r\n<p>Thời gian này, nhờ có tiền đi làm thêm mà Châu Tinh Trì có thể đi xem phim nhiều hơn, từ đây, ước mơ trở thành diễn viên đã bắt đầu hình thành trong chàng trai trẻ.</p>\r\n\r\n<p>Khi còn học trung học, Châu Tinh Trì đã kết bạn với Lương Triều Vỹ - hai người bạn bằng tuổi, có xuất thân giống nhau, cả hai đều không quan tâm tới việc thi Đại học. Tốt nghiệp trung học xong, đi làm cảm thấy chán nản, Châu Tinh Trì \"kích động\" để Lương Triều Vỹ cùng mình đi đăng ký xin học lớp đào tạo diễn xuất của đài TVB.</p>\r\n\r\n<p>Khi chia sẻ với mẹ về ý định trở thành diễn viên, mẹ của Châu Tinh Trì nhìn con trai từ đầu đến chân rồi không nói gì. Châu Tinh Trì nghĩ thầm: \"Tuyệt vời, im lặng là đồng ý rồi\". Tinh Trì phấn khởi mang đơn đi nộp, xin vào học lớp đào tạo diễn xuất.</p>\r\n\r\n<p><img alt=\"Tuổi thơ nghèo khó có tác động như thế nào tới vua hài Châu Tinh Trì? - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/14/6-1663172827028.jpg\" title=\"Tuổi thơ nghèo khó có tác động như thế nào tới vua hài Châu Tinh Trì? - 5\" /></p>\r\n\r\n<p>Châu Tinh Trì và Lương Triều Vỹ thời trẻ (Ảnh: Sohu).</p>\r\n\r\n<p>Trong vòng phỏng vấn đầu tiên, Lương Triều Vỹ đã sớm bỏ về vì thấy có quá đông thí sinh, bỏ về được nửa đường, Lương Triều Vỹ lại quay lại vì cảm thấy tiếc tiền đăng ký. Châu Tinh Trì thì trước sau vẫn kiên định ngồi chờ.</p>\r\n\r\n<p>Kết quả sơ tuyển vòng đầu, Lương Triều Vỹ đi thi \"chơi chơi\" thì trúng ngay, còn Châu Tinh Trì tha thiết mong trúng lại trượt. Châu Tinh Trì trở về nhà rất buồn nản. Về sau, Châu Tinh Trì thi lại lần hai thì đỗ.</p>\r\n\r\n<p>Chia sẻ về niềm đam mê diễn xuất của mình, Châu Tinh Trì từng nói: \"Tôi khá nhút nhát. Tôi thường chỉ lắng nghe, quan sát. Tôi không tự tin khi đối thoại trực tiếp, nhưng nếu đưa cho tôi kịch bản diễn xuất, tôi sẽ có thể quên đi chính mình và làm tất cả vì vai diễn. Thật khó để nói tôi thực sự có tài năng hay không, nhưng ít nhất tôi có đam mê\".</p>', '1664336082_ctt\'.jpg', '17', '2022-09-27 20:34:42', '2022-09-27 20:34:42', '2828-09-2022', '8897', NULL),
(54, 'Tuấn Hưng tiếp tục được hát ở ban công sau khi nộp phạt 12,5 triệu đồng', 'Sau khi nộp phạt và hoàn thành các thủ tục xin phép, cam kết, ca sĩ Tuấn Hưng tiếp tục được thực hiện chương trình \"Góc ban công\".', '<p>Ca sĩ Tuấn Hưng cho biết, anh đã hoàn thành các thủ tục xin phép, cam kết và được tiếp tục thực hiện chương trình âm nhạc mang tên&nbsp;<em>Góc ban công</em>.</p>\r\n\r\n<p>Nam ca sĩ cho hay, lần trở lại này, anh được các cơ quan ban ngành tạo điều kiện để mang tiếng hát, niềm vui đến cho khán giả ngày cuối tuần. Đây là chương trình với \"cát-xê 0 đồng\" đặc biệt mà Tuấn Hưng thực hiện trong những năm qua.</p>\r\n\r\n<p>Tuấn Hưng thông tin, UBND quận Hoàn Kiếm và công an Hoàn Kiếm sẽ có sự hỗ trợ, đảm bảo an ninh cho đêm nhạc. Về phía Tuấn Hưng, anh cũng chủ động thuê nhiều vệ sĩ để công tác tổ chức diễn ra suôn sẻ.</p>\r\n\r\n<p>Trên trang cá nhân, nam ca sĩ nhắn tới người hâm mộ: \"<em>Góc ban công</em>&nbsp;sẽ tiếp tục sáng đèn vào tối mai (24/9)\". Tuấn Hưng xin chân thành cảm ơn tất cả\". Anh không quên nhắc khán giả \"nhớ mang khẩu trang và ô\".</p>\r\n\r\n<p><img alt=\"Tuấn Hưng tiếp tục được hát ở ban công sau khi nộp phạt 12,5 triệu đồng - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/06/tuan-hung-hat-o-ban-cong-nha-rieng-hang-nghin-khan-gia-doi-mua-xem-7-1662453467113.jpeg\" title=\"Tuấn Hưng tiếp tục được hát ở ban công sau khi nộp phạt 12,5 triệu đồng - 1\" /></p>\r\n\r\n<p>Tuấn Hưng được mở lại chương trình \"Góc ban công\" sau khi hoàn thành việc xin phép (Ảnh: Facebook Tuấn Hưng).</p>\r\n\r\n<p>Tuấn Hưng nói, lý do khiến anh tổ chức&nbsp;<em>Góc ban công</em>&nbsp;là bởi, show diễn chính thức, trả phí của anh không phải lúc nào người hâm mộ cũng có thể mua vé đi xem. Hát bên ban công là cách để nam ca sĩ tri ân người yêu âm nhạc của mình.</p>\r\n\r\n<p>Trước đó, ca sĩ Tuấn Hưng cũng đã lên tiếng nhận trách nhiệm sau khi nộp phạt hành chính vì tổ chức liveshow tại ban công nhưng không xin phép.</p>\r\n\r\n<p>Ngày 9/9, ca sĩ Tuấn Hưng đã đăng trên trang cá nhân biên lai nộp phạt hành chính 12,5 triệu đồng kèm dòng chia sẻ: \"Tôi luôn tìm kiếm những phương thức tiếp cận người hâm mộ để luôn làm mới mình và có nhiều cơ hội gần gũi hơn với các bạn.</p>\r\n\r\n<p>Tuy nhiên vẫn phải thượng tôn pháp luật. Sau sự việc lần này, tôi tự thấy mình cần phải rút kinh nghiệm sâu sắc và sẽ chuẩn bị kỹ tất cả những thủ tục pháp lý cần thiết để&nbsp;<em>Góc ban công</em>&nbsp;được phép hoạt động trở lại hợp pháp. Hoặc tôi sẽ tìm những nơi thuận tiện hơn để có cơ hội gặp gỡ các bạn\".</p>\r\n\r\n<p>Song song với niềm vui từ&nbsp;<em>Góc ban công</em>, ca sĩ Tuấn Hưng vừa được bổ nhiệm chức danh Phó Chủ tịch Hội Nghệ sĩ trẻ Hà Nội khóa II, nhiệm kỳ 2019-2024.</p>\r\n\r\n<p>Quyết định này được đưa ra sau khi Phó Bí thư thường trực Thành Đoàn, Chủ tịch Hội Liên hiệp Thanh niên Việt Nam thành phố Hà Nội Nguyễn Đức Tiến xét đề nghị của Văn phòng Hội Liên hiệp thanh niên TP Hà Nội và công văn của ban chấp hành Hội Nghệ sĩ trẻ Hà Nội để kiện toàn nhân sự.</p>\r\n\r\n<p>Ca sĩ Tuấn Hưng bày tỏ sự bất ngờ với quyết định được bổ nhiệm và chưa bao giờ nghĩ rằng, điều này sẽ xảy ra. Bản thân anh cảm thấy tự hào, trân trọng, hứa sẽ cố gắng để tiếp tục sống lan tỏa và ngày càng sống đẹp, sống có ý nghĩa hơn.</p>\r\n\r\n<p>Ca sĩ Tuấn Hưng (SN 1978) bắt đầu sự nghiệp ca hát cùng nhóm nhạc Quả dưa hấu gồm Bằng Kiều, Anh Tú và Tường Văn. Nhóm nhạc chiếm được cảm tình lớn từ người hâm mộ. Sau đó từng thành viên tách ra xây dựng sự nghiệp riêng.&nbsp;</p>\r\n\r\n<p>Năm 2000, Tuấn Hưng vào TPHCM lập nghiệp. Suốt hơn 20 năm ca hát, Tuấn Hưng ghi dấu ấn trong lòng người hâm mộ với loạt bài hit như&nbsp;<em>Cầu vồng khuyết, Dĩ vãng cuộc tình, Nắm lấy tay anh, Tìm lại bầu trời...</em></p>', '1664336326_tuanhung.jpg', '16', '2022-09-27 20:38:46', '2022-09-27 20:38:46', '2828-09-2022', '6789', NULL),
(55, 'Hàng loạt MV bị chỉ trích dung tục \"bốc hơi\" trong đêm, Bộ Văn hóa nói gì?', 'Hàng loạt MV của rapper Bình Gold vừa \"bốc hơi\" chỉ sau một đêm. Trước đó, những MV này bị công chúng chỉ trích cho là dung tục. Không riêng Bình Gold, Chi Pu cũng đang gây tranh cãi với MV \"Sashimi\".', '<p>Sáng nay (21/9), rapper Bình Gold (tên thật là Vũ Xuân Bình, SN 1997 tại Hà Nội) xác nhận với PV&nbsp;<em>Dân trí</em>&nbsp;đã ẩn một số MV gây tranh cãi như&nbsp;<em>Bốc bát họ, Ông bà già tao lo hết, Trơn, Quan hệ rộng, Lái máy bay</em>&nbsp;khỏi kênh YouTube.</p>\r\n\r\n<p>Tuy nhiên khi được hỏi cụ thể về lý do ẩn các MV nói trên và định hướng tiếp theo trên con đường âm nhạc sau sự việc này, nam rapper từ chối trả lời.</p>\r\n\r\n<p>Trước đó, các MV của Bình Gold gây tranh cãi. Nhiều ý kiến cho rằng, các MV này có nội dung phản cảm. Những cô gái xuất hiện trong MV ăn mặc hở hang, nhân vật được xây dựng phô diễn, khoe khoang sự giàu sang một cách thái quá...</p>\r\n\r\n<p><img alt=\"Hàng loạt MV bị chỉ trích dung tục bốc hơi trong đêm, Bộ Văn hóa nói gì? - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/21/screen-shot-2022-09-21-at-100605-1663729582108.png\" title=\"Hàng loạt MV bị chỉ trích dung tục bốc hơi trong đêm, Bộ Văn hóa nói gì? - 1\" /></p>\r\n\r\n<p>Rapper Bình Gold ẩn hàng loạt MV từng gây tranh cãi (Ảnh: Facebook nhân vật).</p>\r\n\r\n<p>Đây không phải lần đầu, Bình Gold hứng chỉ trích. Năm 2020, bản tin Thời sự toàn cảnh của VTV1 từng điểm tên rapper này khi phản ánh về việc nhiều nội dung phản cảm, độc hại được đăng tải công khai trên YouTube đang gây ảnh hưởng tiêu cực đến xã hội, đặc biệt là trẻ em.</p>\r\n\r\n<p>Thời điểm đó, Bình Gold giải thích, bản thân chỉ muốn làm nghệ thuật, muốn rap Việt giống như rap Mỹ và cho biết, sẽ suy nghĩ lại để có thể tiết chế hơn trong các sản phẩm sau.</p>\r\n\r\n<p>Gần đây, MV&nbsp;<em>Black Hickey</em>&nbsp;của Chi Pu cũng gây tranh cãi với phân cảnh cô trèo lên bàn và có hành động quyến rũ nhân vật nam trong MV. MV này được ẩn không lâu sau đó.&nbsp;</p>\r\n\r\n<p>Trước thực trạng nhức nhối về những MV gây tranh cãi, bị cho là \"rác mạng\", phản cảm, dung tục, PV&nbsp;<em>Dân trí</em>&nbsp;đã liên hệ với ông Phạm Cao Thái, Chánh Thanh tra Bộ Văn hóa - Thể thao và&nbsp;<a href=\"https://dantri.com.vn/du-lich.htm\">Du lịch</a>&nbsp;(VH-TT&amp;DL) về hướng xử lý, giải quyết của Bộ VH-TT&amp;DL xung quanh câu chuyện nói trên.</p>\r\n\r\n<p>Ông Phạm Cao Thái cho hay, bước đầu nắm thông tin về các MV nói trên, trong đó có MV của Bình Gold, Chi Pu, Bộ VH-TT&amp;DL đang tìm hiểu và sẽ xem xét cụ thể đối với từng trường hợp.</p>\r\n\r\n<p>Trao đổi với PV&nbsp;<em>Dân trí</em>, ông Phạm Cao Thái khẳng định, tất cả các MV, nếu có sai phạm đều phải chịu xử lý theo đúng quy định của pháp luật.</p>\r\n\r\n<p>Trước đó, vào tháng 5 năm nay, nam ca sĩ Sơn Tùng M-TP từng bị Bộ VH-TT&amp;DL xử phạt 70 triệu đồng vì MV&nbsp;<em>There\'s no one at all</em>.&nbsp; Ngoài ra MV này bị tiêu hủy, gỡ bỏ hoàn toàn trên môi trường số.</p>\r\n\r\n<p>Trong MV, Sơn Tùng hóa thân thành một chàng trai với tuổi thơ khốn khó, là trẻ mồ côi lớn lên trong cô nhi viện. Chính sự thiếu vắng tình yêu thương của cha mẹ đã khiến tâm hồn cậu có những tranh đấu không ngừng. Cậu lớn lên trở thành một kẻ hay gây rối, lêu lổng. Xuất hiện cả những phân cảnh bị đuổi bắt, đánh đập...</p>\r\n\r\n<p>Không ít người đã giật mình khi Sơn Tùng M-TP chọn cái kết tiêu cực cho nhân vật của mình. Vốn là một thần tượng của giới trẻ nên cách anh xây dựng tình huống bi kịch như thế này đã bị khán giả phản ứng dữ dội.</p>', '1664336489_binhgold.jpg', '16', '2022-09-27 20:41:29', '2022-09-27 20:41:29', '2828-09-2022', '679', NULL),
(56, 'Phú Hưng Life đồng hành cải thiện và chăm sóc sức khỏe khách hàng', 'Trong hơn 9 năm hoạt động, Phú Hưng Life luôn ưu tiên hiện thực hóa sứ mệnh mang lại sự thịnh vượng vững bền cho người dân Việt Nam. Bên cạnh đó, Công ty ngày càng chú trọng mục tiêu đồng hành cùng khách hàng cải thiện và chăm sóc sức khỏe toàn diện.', '<p><strong>\"Khỏe cùng Phú Hưng Life\"</strong></p>\r\n\r\n<p>Thấu hiểu rằng sức khỏe là nền tảng quan trọng nhất để xây dựng cuộc sống khỏe mạnh hơn, Phú Hưng Life với sứ mệnh \"Vì bạn, vì cuộc sống vững bền\" luôn mong muốn lan tỏa tinh thần sống khỏe một cách trọn vẹn về thể chất lẫn tinh thần.</p>\r\n\r\n<p>Theo đó, Phú Hưng Life thường xuyên phối hợp với các đơn vị y tế uy tín để tổ chức và duy trì thực hiện chuỗi sự kiện \"Ngày hội Khỏe cùng Phú Hưng Life\" nhằm tạo điều kiện chăm sóc, tư vấn sức khỏe cho khách hàng và gia đình.</p>\r\n\r\n<p>Cụ thể, ngày 25/9 vừa qua, Phú Hưng Life đã tổ chức chương trình Ngày hội Khỏe, chủ đề \"Bệnh hiểm nghèo và cách phòng ngừa\" với sự tham gia của hơn 120 khách hàng tại khu vực TPHCM.</p>\r\n\r\n<p><img alt=\"Phú Hưng Life đồng hành cải thiện và chăm sóc sức khỏe khách hàng - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/final-dan-tri-phu-hung-life-ngay-hoi-suc-khoe-2609-edit-lan-2-00000002docx-1664265785950.jpeg\" title=\"Phú Hưng Life đồng hành cải thiện và chăm sóc sức khỏe khách hàng - 1\" /></p>\r\n\r\n<p>Thạc sĩ.Bác sĩ Đặng Ngọc Hùng chia sẻ tại sự kiện \"Ngày hội Khỏe cùng Phú Hưng Life\".</p>\r\n\r\n<p>Sự kiện được thiết kế với nhiều hoạt động đa dạng, từ chương trình thăm khám đến tư vấn các phương pháp chăm sóc và bảo vệ sức khỏe, đặc biệt là phòng chống bệnh hiểm nghèo từ các bác sĩ chuyên khoa nhiều năm kinh nghiệm. Tại sự kiện, các khách hàng còn có cơ hội gặp gỡ và trao đổi cùng Thạc sĩ.Bác sĩ Đặng Ngọc Hùng với hơn 10 năm hoạt động trong lĩnh vực y khoa, để được cập nhật thêm nhiều thông tin, lời khuyên hữu ích trước nhu cầu sở hữu \"sức khỏe vàng\".</p>\r\n\r\n<p>Ông Nguyễn Khắc Thành Đạt - Phó Tổng Giám đốc Phát triển Kinh doanh của Phú Hưng Life chia sẻ:&nbsp;<em>\"Sự kiện \"Ngày hội Khỏe cùng Phú Hưng Life\" nằm trong khuôn khổ chuỗi các hoạt động kỷ niệm 9 năm thành lập Phú Hưng Life tại thị trường Việt Nam. Tại sự kiện này, quý khách hàng tham gia sẽ được khám tổng quát cũng như được chúng tôi chia sẻ thông tin về một số sản phẩm, giải pháp bảo vệ mới của Phú Hưng Life với nhiều quyền lợi vượt trội\".</em></p>\r\n\r\n<p><img alt=\"Phú Hưng Life đồng hành cải thiện và chăm sóc sức khỏe khách hàng - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/27/final-dan-tri-phu-hung-life-ngay-hoi-suc-khoe-2609-edit-lan-2-00000002docx-1664265786125.jpeg\" title=\"Phú Hưng Life đồng hành cải thiện và chăm sóc sức khỏe khách hàng - 2\" /></p>\r\n\r\n<p>Ông Nguyễn Khắc Thành Đạt - Phó Tổng Giám đốc Phát triển Kinh doanh chia sẻ những nỗ lực hiện thực hóa sứ mệnh mang lại sự thịnh vượng vững bền cho người dân Việt Nam của Phú Hưng Life.</p>\r\n\r\n<p>Ông Hồng Khánh Hưng, Giám đốc Kinh doanh miền, miền Hồ Chí Minh 3 của Phú Hưng Life cũng nhấn mạnh: \"<em>Hiểu được giá trị về sức khỏe cho khách hàng, Phú Hưng Life tổ chức hội thảo này nhằm mang lại những thông tin hữu ích cho khách hàng và người thân. Trong thời gian tới, Phú Hưng Life sẽ tiếp tục tổ chức các chuỗi sự kiện tương tự với nhiều chủ đề đa dạng, giúp người dân nâng cao ý thức về sức khỏe, hướng tới một cộng đồng khỏe mạnh</em>\".</p>\r\n\r\n<p>Sự thành công của sự kiện đã khẳng định nỗ lực của Phú Hưng Life trong hành trình mang đến những giá trị bền vững cho đất nước và con người Việt Nam.</p>\r\n\r\n<p><strong>Nỗ lực mang đến nhiều giải pháp tối ưu và vượt trội</strong></p>\r\n\r\n<p>Nhằm mang đến các giải pháp bảo vệ và tích lũy tài chính trước những rủi ro từ bệnh hiểm nghèo, có kế hoạch tài chính tốt nhất bảo vệ bản thân và gia đình, Phú Hưng Life đã luôn nỗ lực mang đến các sản phẩm và dịch vụ tối ưu dành cho khách hàng. Nổi bật nhất trong số đó là Phú Hưng Đại Phát và Phú Hưng Đại Phúc. Tìm hiểu thêm về sản phẩm&nbsp;<a href=\"https://www.phuhunglife.com/vn/san-pham/phu-hung-dai-phat/\" rel=\"nofollow noopener\" target=\"_blank\">tại đây</a>.</p>\r\n\r\n<p>Với sản phẩm Phú Hưng Đại Phát, việc kéo dài thời hạn bảo vệ khách hàng đến năm 99 tuổi là điểm nổi trội so với nhiều sản phẩm bảo hiểm tương tự trên thị trường. Điều này giúp Phú Hưng Đại Phát không chỉ mang lại những quyền lợi bảo vệ tối ưu mà còn trao tặng sự an tâm tuyệt đối cho khách hàng.</p>\r\n\r\n<p>Với Phú Hưng Đại Phúc, sỡ hữu ưu thế \"Đóng phí ngắn hạn, cam kết dài lâu\", thời gian cam kết đóng phí ngắn hạn (1 lần hoặc ít nhất 3 năm đầu), nhưng thời gian bảo vệ lên tới 10 hoặc 15 năm.</p>\r\n\r\n<p>Trong thời gian tới, Phú Hưng Life sẽ tiếp tục nâng cao chất lượng dịch vụ, nghiên cứu và cho ra mắt các gói sản phẩm tích hợp nhiều tiện ích cho khách hàng. Bên cạnh đó, công ty cũng sẽ tiếp tục thúc đẩy phát triển đội ngũ đại lý then chốt, nhằm hiện thực hóa \"Sứ mệnh 50 - M50\", cùng đồng hành, tạo dựng sự tin tưởng và mang đến những giá trị tốt nhất cho khách hàng trên mọi vùng miền. Dự kiến trong năm 2022, đội ngũ kinh doanh Phú Hưng Life sẽ đạt con số 50.000 tư vấn tài chính.</p>\r\n\r\n<p>Ông Nguyễn Đằng Giao, Giám đốc Kinh doanh miền, miền Hồ Chí Minh 2 của Phú Hưng Life cho biết: \"<em>Đội ngũ kinh doanh tại TPHCM của Phú Hưng Life được đào tạo bài bản, chuyên nghiệp, áp dụng những công nghệ hiện đại trong việc tư vấn, chăm sóc và phục vụ khách hàng, giúp khách hàng chọn lựa những chương trình hỗ trợ về tài chính tốt nhất cho bản thân và gia đình\".</em></p>\r\n\r\n<p><strong>PHÚ HƯNG LIFE - VÌ BẠN, VÌ CUỘC SỐNG VỮNG BỀN</strong></p>', '1664336627_suckhoe01.jpg', '18', '2022-09-27 20:43:47', '2022-09-27 20:43:47', '2828-09-2022', '90', NULL),
(57, 'Nhiều iPhone 14 Pro gặp lỗi kỳ lạ', 'Theo ghi nhận từ 9to5mac, nhiều người dùng iPhone 14 Pro và iPhone 14 Pro Max phàn nàn rằng thiết bị của họ thường xuyên khởi động lại một cách ngẫu nhiên trong quá trình sạc pin.', '<p>\"Tôi mới sử dụng chiếc&nbsp;<a href=\"https://dantri.com.vn/suc-manh-so/iphone-14-tieu-chuan-gay-that-vong-20220923220200315.htm\">iPhone 14</a>&nbsp;Pro một khoảng thời gian và nhận thấy rằng máy sẽ tự khởi động lại trong quá trình sạc (bằng cả sạc không dây magsafe và sạc có dây). Thiết bị hoàn toàn không gặp phải tình trạng trên khi không sạc pin. Có ai gặp vấn đề tương tự không?\", một người dùng phản ánh trên diễn đàn Reddit.&nbsp;</p>\r\n\r\n<p><img alt=\"Nhiều iPhone 14 Pro gặp lỗi kỳ lạ - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/09/16/tren-tay-iphone-14-pro-max-3-1663297795621.jpg\" title=\"Nhiều iPhone 14 Pro gặp lỗi kỳ lạ - 1\" /></p>\r\n\r\n<p>Nhiều chiếc iPhone 14 Pro tự khởi động lại trong quá trình sạc pin (Ảnh: Huy Nguyễn).</p>\r\n\r\n<p>Trong khi đó, một người dùng&nbsp;<a href=\"https://dantri.com.vn/tim-kiem/iphone+14+pro+max.htm\">iPhone 14 Pro Max</a>&nbsp;khác nói rằng thiết bị của họ liên tục khởi động lại sau mỗi 10-20 phút trong quá trình sạc. Nhiều người dùng báo cáo rằng họ gặp phải sự cố này trên cả phiên bản iOS 16.0.2 và iOS 16.1 beta.</p>\r\n\r\n<p>Trên trang hỗ trợ khách hàng, Apple cho biết người dùng có thể tạm thời khắc phục sự cố trên bằng một số biện pháp như khôi phục cài đặt gốc của thiết bị, tắt tính năng tối ưu pin khi sạc...</p>\r\n\r\n<p>Tuy vậy, nhiều người dùng nói rằng những cách trên không thể xử lý được vấn đề. Trong khi đó, một số khác cho biết thiết bị của họ đã tạm thời hoạt động ổn định khi tắt tính năng làm mới ứng dụng nền.</p>\r\n\r\n<p>Trang 9to5mac cho rằng nếu chiếc&nbsp;<a href=\"https://dantri.com.vn/tim-kiem/iphone+14+pro.htm\">iPhone 14 Pro</a>&nbsp;gặp phải lỗi trên, người dùng hãy liên hệ trực tiếp với Apple hoặc các cửa hàng Apple Store để được hỗ trợ nhanh nhất.</p>', '1664337572_iphone14.jpg', '20', '2022-09-27 20:59:32', '2022-09-27 20:59:32', '2828-09-2022', '5567', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('IMFI7mEMVwAmdxui7GtW90um4EUtBPPMZ1Fw86VU', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWFtUGVZbTdwRFVCdHE1U2w0cFNteDk0STd3YVdoZ0ZCa0d0RWVmeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9sb2NhbGhvc3QvbmV3c19hcGkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1664522393),
('muGXFgy3CQq9L8blFFMXJBUGKDNBPlna3ip5cOY1', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmZjcEZyWkMydTlRZXBJemJZaEUwckNQVUR0U1NlaU5hYk1uRHdiWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9sb2NhbGhvc3QvbmV3c19hcGkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1668276021);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Phạm Hoàng Học', 'hochochc@gmail.com', NULL, '$2y$10$hIJiEPtUD0DThJuvT2bPve5jGj16HdFauIeIU22VisxF5rxq6HqOa', NULL, NULL, 'WhAN5HAJbVGaYrs0ZZUnrxAObFeH41Wt5IV8zfsfmSgDGE7G13FBiU0sbWAe', '2021-10-04 20:59:42', '2021-10-04 20:59:42'),
(3, 'Admin', 'admin@gmail.com', NULL, 'a9af6380693bfb2928eb033bcb4fff75', NULL, NULL, NULL, '2021-10-13 19:46:25', '2021-10-13 19:46:25'),
(4, 'Pham Hoang Hoc', 'admin1@gmail.com', NULL, '$2y$10$c0jTdVehzOvqLlBviSD4zeDu45rXyRX3/Wl8GQYLmLTbNyXOzEYzy', NULL, NULL, NULL, '2022-09-22 02:33:01', '2022-09-22 02:33:01'),
(5, 'Phạm Hoàng Học', 'hochoc@gmail.com', NULL, '$2y$10$ILLN9P9quE9SJFok6A9ulOhd9Jr0RKz8cyZ8FiVdl5NUu6WiFlYVK', NULL, NULL, NULL, '2022-09-27 04:41:03', '2022-09-27 04:41:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'luanvan', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"luanvan\",\"ne\",\"news_api\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"luanvan\",\"table\":\"books\"},{\"db\":\"luanvan\",\"table\":\"files\"},{\"db\":\"luanvan\",\"table\":\"rooms\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-11-15 08:32:19', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
