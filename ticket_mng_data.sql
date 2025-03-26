-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 07:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket_mng_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `ticket_id` int(20) NOT NULL,
  `customer_id` int(20) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `ticket_id`, `customer_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(2, 2, 2, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(3, 3, 2, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(4, 4, 21, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(5, 5, 21, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(6, 6, 22, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(7, 7, 22, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(8, 8, 22, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(9, 9, 23, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(10, 10, 23, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(11, 11, 23, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(12, 12, 24, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(13, 13, 24, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(14, 14, 24, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(15, 15, 25, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(16, 16, 25, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(17, 17, 25, 1, '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(18, 18, 27, 28, '2025-03-07 00:32:37', '2025-03-26 10:29:07'),
(19, 19, 30, 31, '2025-03-16 05:21:49', '2025-03-26 10:29:07'),
(20, 20, 33, 34, '2025-03-01 00:54:47', '2025-03-26 10:29:07'),
(21, 21, 36, 37, '2025-02-25 05:24:39', '2025-03-26 10:29:07'),
(22, 22, 39, 40, '2025-02-24 19:46:08', '2025-03-26 10:29:07'),
(23, 23, 42, 43, '2025-03-25 14:01:56', '2025-03-26 10:29:07'),
(24, 24, 45, 46, '2025-03-16 00:59:25', '2025-03-26 10:29:07'),
(25, 25, 48, 49, '2025-03-04 20:27:11', '2025-03-26 10:29:07'),
(26, 26, 51, 52, '2025-03-25 12:39:26', '2025-03-26 10:29:07'),
(27, 27, 54, 55, '2025-03-07 16:25:46', '2025-03-26 10:29:07'),
(28, 28, 57, 58, '2025-02-28 14:34:15', '2025-03-26 10:29:07'),
(29, 29, 60, 61, '2025-03-26 08:15:49', '2025-03-26 10:29:07'),
(30, 30, 63, 64, '2025-03-24 10:43:12', '2025-03-26 10:29:07'),
(31, 31, 66, 67, '2025-03-09 18:11:05', '2025-03-26 10:29:07'),
(32, 32, 69, 70, '2025-03-14 04:52:33', '2025-03-26 10:29:07'),
(33, 33, 72, 73, '2025-03-04 01:47:51', '2025-03-26 10:29:07'),
(34, 34, 75, 76, '2025-03-19 09:11:40', '2025-03-26 10:29:07'),
(35, 35, 78, 79, '2025-03-11 15:03:23', '2025-03-26 10:29:07'),
(36, 36, 81, 82, '2025-03-04 08:15:22', '2025-03-26 10:29:07'),
(37, 37, 84, 85, '2025-03-17 12:15:54', '2025-03-26 10:29:07'),
(38, 38, 87, 88, '2025-03-10 13:49:22', '2025-03-26 10:29:07'),
(39, 39, 90, 91, '2025-03-13 09:37:35', '2025-03-26 10:29:07'),
(40, 40, 93, 94, '2025-03-10 00:18:43', '2025-03-26 10:29:07'),
(41, 41, 96, 97, '2025-03-02 13:08:21', '2025-03-26 10:29:07'),
(42, 42, 99, 100, '2025-02-27 18:45:16', '2025-03-26 10:29:07'),
(43, 43, 102, 103, '2025-02-24 13:58:17', '2025-03-26 10:29:07'),
(44, 44, 105, 106, '2025-03-14 07:35:01', '2025-03-26 10:29:07'),
(45, 45, 108, 109, '2025-02-27 08:29:22', '2025-03-26 10:29:07'),
(46, 46, 111, 112, '2025-03-02 21:10:47', '2025-03-26 10:29:07'),
(47, 47, 114, 115, '2025-03-21 20:22:42', '2025-03-26 10:29:07'),
(48, 48, 117, 118, '2025-03-13 08:02:11', '2025-03-26 10:29:07'),
(49, 49, 120, 121, '2025-03-02 05:34:19', '2025-03-26 10:29:07'),
(50, 50, 123, 124, '2025-03-05 23:50:38', '2025-03-26 10:29:07'),
(51, 51, 126, 127, '2025-02-27 13:30:29', '2025-03-26 10:29:07'),
(52, 52, 129, 130, '2025-03-14 18:00:30', '2025-03-26 10:29:07'),
(53, 53, 132, 133, '2025-03-21 07:50:32', '2025-03-26 10:29:07'),
(54, 54, 135, 136, '2025-03-02 18:54:55', '2025-03-26 10:29:07'),
(55, 55, 138, 139, '2025-03-10 06:08:21', '2025-03-26 10:29:07'),
(56, 56, 141, 142, '2025-03-03 01:51:49', '2025-03-26 10:29:07'),
(57, 57, 144, 145, '2025-03-11 17:36:15', '2025-03-26 10:29:07'),
(58, 58, 147, 148, '2025-03-04 08:33:50', '2025-03-26 10:29:07'),
(59, 59, 150, 151, '2025-03-13 22:16:19', '2025-03-26 10:29:07'),
(60, 60, 153, 154, '2025-03-17 06:21:50', '2025-03-26 10:29:07'),
(61, 61, 156, 157, '2025-03-25 16:53:21', '2025-03-26 10:29:07'),
(62, 62, 159, 160, '2025-03-21 08:31:56', '2025-03-26 10:29:07'),
(63, 63, 162, 163, '2025-03-16 18:57:21', '2025-03-26 10:29:07'),
(64, 64, 165, 166, '2025-03-12 03:43:45', '2025-03-26 10:29:07'),
(65, 65, 168, 169, '2025-03-09 16:42:33', '2025-03-26 10:29:07'),
(66, 66, 171, 172, '2025-03-04 20:56:46', '2025-03-26 10:29:07'),
(67, 67, 174, 175, '2025-03-13 08:47:53', '2025-03-26 10:29:07'),
(68, 68, 177, 178, '2025-03-01 11:30:16', '2025-03-26 10:29:07'),
(69, 69, 180, 181, '2025-03-08 12:46:08', '2025-03-26 10:29:07'),
(70, 70, 183, 184, '2025-03-21 20:29:18', '2025-03-26 10:29:07'),
(71, 71, 186, 187, '2025-03-22 08:26:41', '2025-03-26 10:29:07'),
(72, 72, 189, 190, '2025-03-12 17:52:08', '2025-03-26 10:29:07'),
(73, 73, 192, 193, '2025-03-15 03:17:48', '2025-03-26 10:29:07'),
(74, 74, 195, 196, '2025-03-08 23:03:02', '2025-03-26 10:29:07'),
(75, 75, 198, 199, '2025-02-26 14:57:30', '2025-03-26 10:29:07'),
(76, 76, 201, 202, '2025-03-01 22:00:58', '2025-03-26 10:29:07'),
(77, 77, 204, 205, '2025-03-13 05:50:10', '2025-03-26 10:29:07'),
(78, 78, 207, 208, '2025-03-11 02:39:56', '2025-03-26 10:29:07'),
(79, 79, 210, 211, '2025-02-28 05:52:32', '2025-03-26 10:29:07'),
(80, 80, 213, 214, '2025-03-18 04:41:51', '2025-03-26 10:29:07'),
(81, 81, 216, 217, '2025-03-25 03:06:23', '2025-03-26 10:29:07'),
(82, 82, 219, 220, '2025-03-12 08:51:07', '2025-03-26 10:29:07'),
(83, 83, 222, 223, '2025-02-28 09:41:09', '2025-03-26 10:29:07'),
(84, 84, 225, 226, '2025-03-17 06:34:52', '2025-03-26 10:29:07'),
(85, 85, 228, 229, '2025-03-26 09:36:07', '2025-03-26 10:29:07'),
(86, 86, 231, 232, '2025-03-04 15:03:09', '2025-03-26 10:29:07'),
(87, 87, 234, 235, '2025-03-10 06:13:13', '2025-03-26 10:29:07'),
(88, 88, 237, 238, '2025-03-06 13:17:30', '2025-03-26 10:29:07'),
(89, 89, 240, 241, '2025-03-10 10:32:40', '2025-03-26 10:29:07'),
(90, 90, 243, 244, '2025-03-15 19:51:13', '2025-03-26 10:29:07'),
(91, 91, 246, 247, '2025-03-15 16:21:15', '2025-03-26 10:29:07'),
(92, 92, 249, 250, '2025-02-25 06:17:46', '2025-03-26 10:29:07'),
(93, 93, 252, 253, '2025-02-26 06:24:47', '2025-03-26 10:29:07'),
(94, 94, 255, 256, '2025-03-18 14:10:30', '2025-03-26 10:29:07'),
(95, 95, 258, 259, '2025-03-14 14:53:34', '2025-03-26 10:29:07'),
(96, 96, 261, 262, '2025-03-08 04:57:15', '2025-03-26 10:29:08'),
(97, 97, 264, 265, '2025-03-12 23:14:43', '2025-03-26 10:29:08'),
(98, 98, 267, 268, '2025-03-02 05:07:11', '2025-03-26 10:29:08'),
(99, 99, 270, 271, '2025-02-28 17:22:11', '2025-03-26 10:29:08'),
(100, 100, 273, 274, '2025-03-12 14:12:18', '2025-03-26 10:29:08'),
(101, 101, 276, 277, '2025-03-09 23:47:05', '2025-03-26 10:29:08'),
(102, 102, 279, 280, '2025-02-24 17:16:34', '2025-03-26 10:29:08'),
(103, 103, 282, 283, '2025-03-26 06:23:53', '2025-03-26 10:29:08'),
(104, 104, 285, 286, '2025-03-23 03:54:04', '2025-03-26 10:29:08'),
(105, 105, 288, 289, '2025-02-28 03:45:52', '2025-03-26 10:29:08'),
(106, 106, 291, 292, '2025-02-28 22:45:38', '2025-03-26 10:29:08'),
(107, 107, 294, 295, '2025-03-24 09:07:18', '2025-03-26 10:29:08'),
(108, 108, 297, 298, '2025-02-24 19:17:41', '2025-03-26 10:29:08'),
(109, 109, 300, 301, '2025-03-23 11:16:52', '2025-03-26 10:29:08'),
(110, 110, 303, 304, '2025-03-20 08:55:21', '2025-03-26 10:29:08'),
(111, 111, 306, 307, '2025-03-15 21:56:34', '2025-03-26 10:29:08'),
(112, 112, 309, 310, '2025-03-18 12:52:40', '2025-03-26 10:29:08'),
(113, 113, 312, 313, '2025-03-09 23:28:59', '2025-03-26 10:29:08'),
(114, 114, 315, 316, '2025-03-16 02:46:04', '2025-03-26 10:29:08'),
(115, 115, 318, 319, '2025-03-22 09:47:13', '2025-03-26 10:29:08'),
(116, 116, 321, 322, '2025-03-17 13:53:35', '2025-03-26 10:29:08'),
(117, 117, 324, 325, '2025-03-15 19:02:57', '2025-03-26 10:29:08'),
(118, 118, 327, 328, '2025-02-28 19:28:21', '2025-03-26 10:29:08'),
(119, 119, 330, 331, '2025-03-24 03:02:19', '2025-03-26 10:29:08'),
(120, 120, 333, 334, '2025-03-10 02:48:51', '2025-03-26 10:29:08'),
(121, 121, 336, 337, '2025-03-21 12:31:42', '2025-03-26 10:29:08'),
(122, 122, 339, 340, '2025-03-21 20:50:32', '2025-03-26 10:29:08'),
(123, 123, 342, 343, '2025-03-17 10:02:28', '2025-03-26 10:29:08'),
(124, 124, 345, 346, '2025-03-14 01:49:53', '2025-03-26 10:29:08'),
(125, 125, 348, 349, '2025-03-13 09:19:15', '2025-03-26 10:29:08'),
(126, 126, 351, 352, '2025-03-02 06:50:32', '2025-03-26 10:29:08'),
(127, 127, 354, 355, '2025-03-10 09:49:34', '2025-03-26 10:29:08'),
(128, 128, 357, 358, '2025-02-27 11:32:53', '2025-03-26 10:29:08'),
(129, 129, 360, 361, '2025-03-13 04:22:25', '2025-03-26 10:29:08'),
(130, 130, 363, 364, '2025-03-01 08:05:35', '2025-03-26 10:29:08'),
(131, 131, 366, 367, '2025-03-21 19:59:15', '2025-03-26 10:29:08'),
(132, 132, 369, 370, '2025-03-16 09:10:02', '2025-03-26 10:29:08'),
(133, 133, 372, 373, '2025-03-12 04:50:56', '2025-03-26 10:29:08'),
(134, 134, 375, 376, '2025-03-20 11:08:43', '2025-03-26 10:29:08'),
(135, 135, 378, 379, '2025-03-11 18:06:36', '2025-03-26 10:29:08'),
(136, 136, 381, 382, '2025-03-11 16:27:26', '2025-03-26 10:29:08'),
(137, 137, 384, 385, '2025-02-27 14:17:48', '2025-03-26 10:29:08'),
(138, 138, 387, 388, '2025-03-20 00:31:58', '2025-03-26 10:29:08'),
(139, 139, 390, 391, '2025-03-22 05:58:11', '2025-03-26 10:29:08'),
(140, 140, 393, 394, '2025-03-11 10:51:02', '2025-03-26 10:29:08'),
(141, 141, 396, 397, '2025-03-12 14:46:55', '2025-03-26 10:29:08'),
(142, 142, 399, 400, '2025-03-23 03:41:49', '2025-03-26 10:29:08'),
(143, 143, 402, 403, '2025-03-16 20:40:25', '2025-03-26 10:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `ticket_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `ticket_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sint qui autem qui occaecati. Tempore quae cum quos vel modi sequi mollitia. Sequi impedit qui provident quibusdam. Sint et ipsa veniam veritatis facilis. Quaerat optio aspernatur aspernatur voluptatem aut qui unde ea.', 1, 21, '2025-02-26 17:46:57', '2025-03-26 10:29:07'),
(2, 'Sint assumenda id et deleniti. Ut excepturi tempora recusandae eos excepturi quisquam. Sit et laudantium amet hic. Aliquid et maiores hic unde. Voluptatem qui ut et.', 1, 21, '2025-03-13 22:18:32', '2025-03-26 10:29:07'),
(3, 'Culpa dolores enim ipsam. Reiciendis maxime consequatur vitae. Ad nihil ea deserunt maiores. Magni vitae odit omnis dolores reprehenderit. Dolores ex numquam omnis beatae.', 1, 21, '2025-03-15 16:48:18', '2025-03-26 10:29:07'),
(4, 'In mollitia inventore sed assumenda dolores ut. Excepturi id unde sint incidunt. Dolor quaerat quia vel molestias velit est.', 1, 21, '2025-02-28 18:23:52', '2025-03-26 10:29:07'),
(5, 'Aut praesentium voluptatem veritatis excepturi dolor qui. Perspiciatis adipisci dolor accusamus cupiditate enim reprehenderit. Ab reprehenderit molestias itaque nobis in quaerat. Laborum debitis laudantium ut cumque neque est optio. Neque rerum harum consequatur porro velit et.', 1, 21, '2025-03-05 17:02:43', '2025-03-26 10:29:07'),
(6, 'Est consequuntur ipsam corporis aliquam sit. Excepturi labore perspiciatis et soluta sapiente. Vel et vero illo enim reprehenderit perferendis.', 2, 2, '2025-03-14 17:51:42', '2025-03-26 10:29:07'),
(7, 'Accusantium ipsam fuga voluptas provident ducimus voluptas unde. Qui eligendi accusantium quia labore. Deserunt dolorem ratione maiores et voluptatem.', 2, 2, '2025-02-28 04:59:46', '2025-03-26 10:29:07'),
(8, 'Tempora repudiandae ab non id. Eos consequatur deserunt consequatur molestiae ratione mollitia.', 2, 2, '2025-03-01 09:15:14', '2025-03-26 10:29:07'),
(9, 'Veritatis corporis reiciendis rem soluta et. Et quia molestias sunt velit inventore qui tenetur quia. Animi vel asperiores aut possimus deserunt illo. Eaque qui ratione ea est.', 2, 2, '2025-03-09 13:53:44', '2025-03-26 10:29:07'),
(10, 'Dolorum dignissimos commodi maxime maiores. Corporis non deleniti qui omnis ex.', 2, 2, '2025-03-15 16:59:50', '2025-03-26 10:29:07'),
(11, 'Voluptatibus aut dolores doloremque culpa iure. Temporibus neque cumque dolorem. Sit in voluptatem qui autem sint. Qui incidunt repellendus unde dolor cum.', 3, 23, '2025-03-17 12:33:25', '2025-03-26 10:29:07'),
(12, 'Magnam aliquam quidem sit enim. Doloremque libero ut necessitatibus vitae excepturi. Eaque suscipit maxime natus porro numquam nostrum sed.', 3, 23, '2025-03-19 21:32:20', '2025-03-26 10:29:07'),
(13, 'Modi officiis maxime placeat odio ut necessitatibus eius explicabo. Omnis tempora voluptatibus odit veniam sed. Odit non et provident distinctio fugit nam eum.', 3, 23, '2025-03-16 17:25:56', '2025-03-26 10:29:07'),
(14, 'Molestias dolore inventore magnam possimus inventore repudiandae. Iste molestiae id sunt architecto hic sunt et ratione. Rerum commodi quia voluptatibus error delectus dolore.', 3, 23, '2025-03-05 11:45:37', '2025-03-26 10:29:07'),
(15, 'Inventore quo hic quis vitae. Necessitatibus animi dolor repellendus voluptas voluptates. Veniam aperiam dignissimos ratione id.', 3, 23, '2025-02-26 10:17:13', '2025-03-26 10:29:07'),
(16, 'Et odit maiores quis pariatur. Pariatur et in accusantium dolore excepturi et nemo est. Ipsum magni qui sed nihil necessitatibus eligendi qui.', 4, 22, '2025-02-25 11:37:59', '2025-03-26 10:29:07'),
(17, 'Quisquam et recusandae exercitationem commodi corrupti sed. Sed odio necessitatibus rerum architecto est nihil qui quod. Hic tenetur consectetur sed earum praesentium.', 4, 22, '2025-03-16 22:01:59', '2025-03-26 10:29:07'),
(18, 'Laborum eius provident ex sapiente omnis pariatur dolor. Error consequuntur doloribus quia repellendus. Vitae explicabo at neque voluptatum.', 4, 22, '2025-03-07 12:03:28', '2025-03-26 10:29:07'),
(19, 'Sit laboriosam aut enim facere. Aut ut et hic voluptatem officia in. Incidunt ut nihil ratione blanditiis nihil. Qui sint et quae iste dolor labore dolor.', 4, 22, '2025-03-12 02:08:35', '2025-03-26 10:29:07'),
(20, 'Ea blanditiis animi corrupti nulla ipsa. Doloribus commodi odio quasi ducimus. Quasi sed aspernatur esse animi quis. Deserunt quod eum voluptas odio.', 5, 22, '2025-03-06 00:36:56', '2025-03-26 10:29:07'),
(21, 'Sed cum nostrum laboriosam. Dolores quis sed non eveniet eligendi enim. Hic dicta accusamus qui possimus esse.', 5, 22, '2025-03-17 17:54:01', '2025-03-26 10:29:07'),
(22, 'Quasi voluptatem dicta praesentium ab in. A qui nulla mollitia quibusdam quia tenetur. Asperiores dolorem consequatur vitae alias repellendus. Fugit aut aut sapiente doloribus ullam modi dolorum.', 5, 22, '2025-03-13 09:24:09', '2025-03-26 10:29:07'),
(23, 'A mollitia ipsum voluptatum perferendis adipisci. Repudiandae aperiam eligendi cumque. Magni odit nesciunt odit doloremque. Sit quam tempora vitae repudiandae rerum qui sit.', 6, 23, '2025-03-03 22:24:00', '2025-03-26 10:29:07'),
(24, 'Quae tempora autem voluptas neque. Nobis beatae et quo quia nihil fugit. Sapiente nesciunt sit atque placeat quo expedita. Blanditiis praesentium non accusantium molestiae dolor ipsam.', 6, 23, '2025-03-12 19:51:49', '2025-03-26 10:29:07'),
(25, 'Quae est et et praesentium. Ut sed aliquid et dolor deleniti rem. Saepe molestiae sed quibusdam ea.', 6, 23, '2025-03-09 01:52:30', '2025-03-26 10:29:07'),
(26, 'Quis quidem ipsam vitae repellendus ullam. Provident dolores repellat assumenda asperiores nesciunt. Nulla aperiam asperiores dignissimos harum. Rerum velit maxime nam officiis incidunt ex. Velit non explicabo eos quisquam.', 7, 25, '2025-03-21 02:06:46', '2025-03-26 10:29:07'),
(27, 'Numquam aut est itaque sed distinctio. Aut et dolorum dignissimos architecto magni magnam deserunt. Cum fugit sit temporibus. Mollitia voluptatum eligendi illum.', 7, 25, '2025-02-27 02:18:27', '2025-03-26 10:29:07'),
(28, 'Minus nam vel est dolore et amet sapiente eum. Dicta debitis ad amet reiciendis molestiae a. Qui beatae ut odio non deserunt neque. Enim optio et dignissimos facere officia.', 8, 25, '2025-03-25 14:08:01', '2025-03-26 10:29:07'),
(29, 'Velit soluta deleniti consequuntur non. Consequatur aliquam quo itaque architecto quo. Itaque maiores qui provident consectetur modi id. Numquam amet consectetur ea ut velit.', 8, 25, '2025-03-26 08:48:28', '2025-03-26 10:29:07'),
(30, 'Illum similique dolorem consequuntur enim placeat ipsum. Doloribus quis eum laborum labore aliquid. Quia similique ea et et repellendus in error omnis. Qui amet excepturi voluptas ullam iusto dolores est.', 9, 23, '2025-03-08 06:21:58', '2025-03-26 10:29:07'),
(31, 'Saepe quia qui voluptas qui. Et quibusdam occaecati error repudiandae dignissimos ut commodi.', 9, 23, '2025-03-03 14:10:37', '2025-03-26 10:29:07'),
(32, 'Voluptatem quia non dolore et aspernatur facilis vel. Quia id modi sed. Nostrum illo iusto rerum ipsam explicabo deserunt repudiandae. Et voluptatibus voluptas non nulla incidunt.', 9, 23, '2025-03-05 23:28:35', '2025-03-26 10:29:07'),
(33, 'Accusantium aut velit harum aut rerum sit culpa. Maiores aut est sunt odit. Alias rem quam sequi expedita ut. Assumenda nesciunt quos nemo magnam delectus.', 9, 23, '2025-02-24 15:22:34', '2025-03-26 10:29:07'),
(34, 'Error voluptatem quia ea iusto quasi ut aut quaerat. Beatae qui voluptatem laborum blanditiis officia labore.', 10, 23, '2025-03-14 19:29:57', '2025-03-26 10:29:07'),
(35, 'Enim magni dolores sequi voluptatem totam non. Sint quisquam et ut sequi. Sint tempora consequatur vitae expedita expedita. Consequatur minima in dolor.', 10, 23, '2025-03-14 14:31:28', '2025-03-26 10:29:07'),
(36, 'Est quia quia facere animi dolores vitae. Dolores qui incidunt atque iusto officiis magnam. Est odio eos in incidunt repellat fugiat dolorem. Totam culpa sint quasi quia est non tempora. Vitae ratione suscipit non officia voluptatibus consectetur et.', 10, 23, '2025-03-23 03:12:55', '2025-03-26 10:29:07'),
(37, 'Sequi sit unde itaque et magnam omnis qui. Voluptatem repellendus ad temporibus nulla. Enim consectetur rerum dolore sapiente. Rem ut perferendis voluptates sint.', 10, 23, '2025-03-01 11:07:06', '2025-03-26 10:29:07'),
(38, 'Quod neque repellendus in et blanditiis error doloremque. Animi nulla dolorem recusandae minus veniam. Odio quia eveniet sed et recusandae. Tempora quidem ut veniam explicabo quam ipsa.', 11, 21, '2025-03-02 17:52:40', '2025-03-26 10:29:07'),
(39, 'Rerum itaque omnis rerum similique nihil architecto. Rerum sint sit tempore ipsum. Totam est non quia modi dolor qui.', 11, 21, '2025-03-16 20:34:58', '2025-03-26 10:29:07'),
(40, 'Voluptate rerum nemo impedit a fugit ut. Repudiandae quibusdam dolorem occaecati assumenda cupiditate vel. Voluptas ipsum eos maiores sapiente et doloremque tempora.', 12, 24, '2025-03-12 20:57:34', '2025-03-26 10:29:07'),
(41, 'Et quis est voluptas. Sequi sit explicabo in maxime aut. Quae et voluptatibus dolorum sunt mollitia quos.', 12, 24, '2025-03-24 06:13:24', '2025-03-26 10:29:07'),
(42, 'Voluptas pariatur corporis porro et repudiandae modi. Fugit a blanditiis quia quis omnis enim esse. Quaerat porro ut impedit corporis.', 12, 24, '2025-03-15 15:03:09', '2025-03-26 10:29:07'),
(43, 'Quia minima doloremque suscipit. Expedita est libero maiores ut sint magnam.', 12, 24, '2025-03-14 13:01:13', '2025-03-26 10:29:07'),
(44, 'Debitis adipisci id possimus et accusantium. Dicta recusandae ut assumenda. Est a optio ut quibusdam nihil recusandae sit.', 12, 24, '2025-03-26 09:34:52', '2025-03-26 10:29:07'),
(45, 'Est cumque quaerat qui est aut voluptatem. Fugit rem labore ipsa officia sunt aut. Saepe commodi ab deserunt similique consectetur vel facilis.', 13, 23, '2025-02-26 01:07:14', '2025-03-26 10:29:07'),
(46, 'Omnis ea occaecati maxime laudantium ratione. Perspiciatis voluptates est quam aliquid sed et dolores. Nihil repudiandae nemo qui accusantium in dolorem accusamus.', 13, 23, '2025-03-10 01:40:23', '2025-03-26 10:29:07'),
(47, 'Culpa doloribus corporis reprehenderit est dolorem quasi architecto. Eveniet mollitia quo eum. Veritatis et sint enim et nulla atque. Adipisci ex dignissimos consectetur soluta dicta molestiae ut. Ut ut facilis dolore cumque qui.', 14, 23, '2025-03-19 14:58:28', '2025-03-26 10:29:07'),
(48, 'Eaque officiis voluptate fuga distinctio laboriosam esse. Ratione sint corporis recusandae voluptas. Vero odit quasi voluptates.', 14, 23, '2025-03-11 19:02:43', '2025-03-26 10:29:07'),
(49, 'Ipsum quia tenetur quas dolorem eos. Culpa ut similique animi odio consequatur fuga corporis.', 14, 23, '2025-03-03 21:01:20', '2025-03-26 10:29:07'),
(50, 'Sed repudiandae eum asperiores minima fugiat quibusdam. Ullam sequi sit nobis et quaerat nulla ducimus. Labore voluptas placeat sed incidunt est iure. Accusantium libero et sed soluta modi minima. Vel sunt numquam asperiores nemo soluta ullam.', 14, 23, '2025-03-06 14:04:56', '2025-03-26 10:29:07'),
(51, 'Quibusdam laudantium iure qui adipisci corrupti magni dolores voluptatem. Voluptas qui neque sunt quo recusandae dignissimos tempore.', 15, 1, '2025-03-01 15:49:34', '2025-03-26 10:29:07'),
(52, 'Quo perspiciatis tempora itaque voluptate. Vel sit dolorem impedit in. Id nostrum qui ducimus. Dolor in incidunt quas quidem ea eum.', 15, 1, '2025-03-20 21:25:20', '2025-03-26 10:29:07'),
(53, 'Aut totam voluptas et quis quia rerum neque illum. Blanditiis omnis dolor corporis voluptatem. Temporibus et omnis nesciunt aspernatur consequatur adipisci.', 16, 20, '2025-03-24 10:20:07', '2025-03-26 10:29:07'),
(54, 'Magnam error in est qui laborum vel consequatur rem. Sed possimus doloribus est possimus reprehenderit tenetur. Dolore sapiente temporibus adipisci.', 16, 20, '2025-02-25 10:20:58', '2025-03-26 10:29:07'),
(55, 'Quasi adipisci esse in qui. Quam tenetur sit libero neque earum. Iste eligendi mollitia molestiae dignissimos animi. Facilis minima nihil tempora eum id minus doloremque.', 16, 20, '2025-03-25 14:09:58', '2025-03-26 10:29:07'),
(56, 'Consequatur facilis dolorum eos ut et voluptatum. Et esse qui maxime et. Inventore dolor atque at voluptate suscipit molestiae. Magnam cupiditate ratione sed libero adipisci. Et doloribus rerum veniam eius ut quia.', 16, 20, '2025-03-24 09:16:56', '2025-03-26 10:29:07'),
(57, 'Officiis qui aut non voluptatum qui aperiam consequatur. Enim hic aut enim.', 17, 2, '2025-03-10 12:39:31', '2025-03-26 10:29:07'),
(58, 'Rerum eligendi ea eos delectus. Quia ab repellendus nemo quos debitis. Reiciendis suscipit quo laudantium ipsa accusamus. At quia voluptatem aut illo. Incidunt dolorem hic eum maxime rerum ducimus et.', 17, 2, '2025-03-01 04:44:49', '2025-03-26 10:29:07');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
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
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `chat_id` int(20) NOT NULL,
  `sender_id` int(20) NOT NULL,
  `receiver_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `content`, `chat_id`, `sender_id`, `receiver_id`, `created_at`, `updated_at`) VALUES
(1, 'hello', 1, 2, 1, '2025-03-26 15:28:24', '2025-03-26 15:28:24'),
(2, 'Alice was just going to begin with; and being ordered about by mice and rabbits. I almost wish I could say if I can listen all day to day.\' This was quite surprised to find that her flamingo was.', 1, 2, 2, '2025-03-13 09:54:30', '2025-03-26 10:29:07'),
(3, 'Alice didn\'t think that will be When they take us up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of mixed flavour of.', 1, 2, 2, '2025-03-19 14:35:27', '2025-03-26 10:29:07'),
(4, 'NOT!\' cried the Mouse, getting up and leave the court; but on the look-out for serpents night and day! Why, I do wonder what I eat\" is the reason so many lessons to learn! No, I\'ve made up my mind.', 1, 2, 2, '2025-03-06 19:42:24', '2025-03-26 10:29:07'),
(5, 'Hatter went on, yawning and rubbing its eyes, \'Of course, of course; just what I could let you out, you know.\' \'And what an ignorant little girl she\'ll think me for a minute or two the Caterpillar.', 1, 2, 2, '2025-03-11 04:53:12', '2025-03-26 10:29:07'),
(6, 'After a time she saw maps and pictures hung upon pegs. She took down a good deal: this fireplace is narrow, to be two people! Why, there\'s hardly room for YOU, and no one listening, this time, sat.', 1, 2, 2, '2025-03-09 23:41:57', '2025-03-26 10:29:07'),
(7, 'Majesty,\' said the Duchess; \'and the moral of that is--\"Be what you like,\' said the sage, as he spoke, and the little glass table. \'Now, I\'ll manage better this time,\' she said, without even waiting.', 2, 2, 2, '2025-03-20 18:16:02', '2025-03-26 10:29:07'),
(8, 'Pat, what\'s that in the wood, \'is to grow to my boy, I beat him when he sneezes; For he can thoroughly enjoy The pepper when he finds out who I am! But I\'d better take him his fan and the baby.', 2, 2, 2, '2025-03-22 20:32:42', '2025-03-26 10:29:07'),
(9, 'O Mouse!\' (Alice thought this must be a very pretty dance,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of mushroom, and crawled away in the kitchen that did not feel encouraged to ask any.', 2, 2, 2, '2025-03-09 03:05:17', '2025-03-26 10:29:07'),
(10, 'Said his father; \'don\'t give yourself airs! Do you think I may as well say,\' added the Dormouse, who was beginning to grow up any more if you\'d rather not.\' \'We indeed!\' cried the Gryphon. \'Of.', 2, 2, 2, '2025-03-20 23:57:06', '2025-03-26 10:29:07'),
(11, 'Dormouse. \'Don\'t talk nonsense,\' said Alice very humbly: \'you had got to the jury. \'Not yet, not yet!\' the Rabbit just under the hedge. In another minute the whole window!\' \'Sure, it does, yer.', 2, 2, 2, '2025-03-12 05:14:36', '2025-03-26 10:29:07'),
(12, 'VERY deeply with a yelp of delight, which changed into alarm in another moment that it was not easy to take the roof of the month, and doesn\'t tell what o\'clock it is!\' As she said to the Cheshire.', 2, 2, 2, '2025-03-06 10:04:12', '2025-03-26 10:29:07'),
(13, 'Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the Hatter. \'You might just as if she meant to take out of sight: \'but it seems to like her, down here, that I should think!\' (Dinah was the first.', 2, 2, 2, '2025-03-11 04:39:03', '2025-03-26 10:29:07'),
(14, 'Dormouse, after thinking a minute or two, looking for it, while the rest were quite dry again, the cook and the words a little, and then nodded. \'It\'s no business of MINE.\' The Queen had ordered.', 2, 2, 2, '2025-03-13 22:26:29', '2025-03-26 10:29:07'),
(15, 'THAT direction,\' the Cat went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty?\' he asked. \'Begin at the end of the jurymen. \'No, they\'re not,\' said the Queen, the royal.', 3, 2, 2, '2025-03-09 20:40:27', '2025-03-26 10:29:07'),
(16, 'Mock Turtle would be offended again. \'Mine is a raven like a tunnel for some time with one finger; and the Queen said to herself, \'whenever I eat one of the others took the hookah out of sight: then.', 3, 2, 2, '2025-03-03 19:58:11', '2025-03-26 10:29:07'),
(17, 'Adventures of hers would, in the last time she had known them all her wonderful Adventures, till she shook the house, and wondering whether she ought to have him with them,\' the Mock Turtle in the.', 3, 2, 2, '2025-03-10 19:10:46', '2025-03-26 10:29:07'),
(18, 'Gryphon, \'she wants for to know your history, you know,\' the Mock Turtle drew a long breath, and said \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think you\'d take a fancy.', 3, 2, 2, '2025-03-03 21:08:51', '2025-03-26 10:29:07'),
(19, 'I don\'t like them!\' When the sands are all dry, he is gay as a lark, And will talk in contemptuous tones of her sharp little chin. \'I\'ve a right to think,\' said Alice desperately: \'he\'s perfectly.', 3, 2, 2, '2025-03-18 03:38:12', '2025-03-26 10:29:07'),
(20, 'Dormouse. \'Write that down,\' the King and Queen of Hearts, she made some tarts, All on a bough of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Oh, you can\'t swim, can.', 4, 21, 1, '2025-03-11 22:49:01', '2025-03-26 10:29:07'),
(21, 'There was a little shaking among the branches, and every now and then; such as, that a moment\'s pause. The only things in the middle. Alice kept her eyes immediately met those of a book,\' thought.', 4, 21, 1, '2025-03-07 08:48:36', '2025-03-26 10:29:07'),
(22, 'Alice, who always took a minute or two she walked up towards it rather timidly, saying to herself, \'I don\'t know what a Gryphon is, look at me like that!\' By this time with great emphasis, looking.', 4, 21, 1, '2025-03-25 19:59:01', '2025-03-26 10:29:07'),
(23, 'VERY remarkable in that; nor did Alice think it would all come wrong, and she at once set to work very carefully, remarking, \'I really must be the best of educations--in fact, we went to school in.', 4, 21, 1, '2025-03-22 09:56:45', '2025-03-26 10:29:07'),
(24, 'King. (The jury all brightened up at this moment the door as you might catch a bad cold if she were saying lessons, and began whistling. \'Oh, there\'s no room to open them again, and put back into.', 4, 21, 1, '2025-03-10 01:22:16', '2025-03-26 10:29:07'),
(25, 'What happened to me! I\'LL soon make you dry enough!\' They all sat down at her own child-life, and the poor little thing sobbed again (or grunted, it was sneezing on the ground as she went on.', 4, 21, 1, '2025-03-24 00:49:14', '2025-03-26 10:29:07'),
(26, 'THE VOICE OF THE SLUGGARD,\"\' said the Cat, and vanished. Alice was a general chorus of \'There goes Bill!\' then the puppy jumped into the open air. \'IF I don\'t remember where.\' \'Well, it must be what.', 4, 21, 1, '2025-02-27 02:06:24', '2025-03-26 10:29:07'),
(27, 'Rabbit coming to look at me like a sky-rocket!\' \'So you did, old fellow!\' said the Cat. \'I said pig,\' replied Alice; \'and I wish I had not attended to this last word with such sudden violence that.', 4, 21, 1, '2025-03-23 12:14:44', '2025-03-26 10:29:07'),
(28, 'ME\' beautifully printed on it except a little startled when she heard her sentence three of the ground--and I should say what you were me?\' \'Well, perhaps you haven\'t found it advisable--\"\' \'Found.', 4, 21, 1, '2025-03-21 23:42:33', '2025-03-26 10:29:07'),
(29, 'King. \'Nearly two miles high,\' added the Dormouse. \'Write that down,\' the King eagerly, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the time he had a head unless.', 4, 21, 1, '2025-03-15 04:40:02', '2025-03-26 10:29:07'),
(30, 'I think you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to Alice, and she felt a little girl,\' said Alice, who was talking. Alice could see her after the rest of the.', 5, 1, 21, '2025-03-09 06:19:42', '2025-03-26 10:29:07'),
(31, 'Gryphon is, look at me like that!\' \'I couldn\'t help it,\' said the Queen, and Alice, were in custody and under sentence of execution. Then the Queen say only yesterday you deserved to be ashamed of.', 5, 1, 21, '2025-03-26 09:51:38', '2025-03-26 10:29:07'),
(32, 'Alice; \'you needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in them, after all. I needn\'t be so kind,\' Alice replied, so eagerly that.', 5, 1, 21, '2025-03-09 01:08:34', '2025-03-26 10:29:07'),
(33, 'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the King; and as the March Hare. \'Yes, please do!\' pleaded Alice. \'And ever since that,\' the Hatter added as an explanation. \'Oh, you\'re sure to.', 5, 1, 21, '2025-03-04 17:46:42', '2025-03-26 10:29:07'),
(34, 'King. \'Shan\'t,\' said the Gryphon. \'Of course,\' the Mock Turtle recovered his voice, and, with tears again as she stood watching them, and all the rest, Between yourself and me.\' \'That\'s the first.', 5, 1, 21, '2025-02-27 19:04:46', '2025-03-26 10:29:07'),
(35, 'NOT SWIM--\" you can\'t help it,\' said the White Rabbit, \'but it seems to like her, down here, and I\'m sure she\'s the best way to fly up into a cucumber-frame, or something of the Lobster; I heard him.', 6, 22, 22, '2025-03-09 15:31:32', '2025-03-26 10:29:07'),
(36, 'I can say.\' This was not quite like the largest telescope that ever was! Good-bye, feet!\' (for when she got used to say.\' \'So he did, so he did,\' said the Lory hastily. \'I don\'t like it, yer honour.', 6, 22, 22, '2025-03-18 12:50:44', '2025-03-26 10:29:07'),
(37, 'I\'ve often seen a good deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King very.', 6, 22, 22, '2025-03-01 21:26:46', '2025-03-26 10:29:07'),
(38, 'THAT direction,\' the Cat in a soothing tone: \'don\'t be angry about it. And yet I wish you could draw treacle out of sight; and an old Crab took the place where it had entirely disappeared; so the.', 6, 22, 22, '2025-03-24 20:36:13', '2025-03-26 10:29:07'),
(39, 'Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, \'it\'s very easy to take out of their wits!\' So she called softly after it, and burning with curiosity, she ran off at once, and.', 6, 22, 22, '2025-03-12 18:48:04', '2025-03-26 10:29:07'),
(40, 'Gryphon. \'Well, I shan\'t grow any more--As it is, I can\'t tell you his history,\' As they walked off together, Alice heard it say to itself, \'Oh dear! Oh dear! I\'d nearly forgotten that I\'ve got to.', 6, 22, 22, '2025-03-17 15:13:36', '2025-03-26 10:29:07'),
(41, 'Alice was very deep, or she should push the matter with it. There could be no use in talking to him,\' said Alice in a sort of knot, and then sat upon it.) \'I\'m glad I\'ve seen that done,\' thought.', 6, 22, 22, '2025-03-03 08:53:57', '2025-03-26 10:29:07'),
(42, 'THAT like?\' said Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took no notice of her ever getting out of sight, he said to the fifth bend, I think?\' \'I had NOT!\' cried.', 6, 22, 22, '2025-03-05 07:30:05', '2025-03-26 10:29:07'),
(43, 'And when I was a long hookah, and taking not the smallest notice of her knowledge. \'Just think of nothing else to do, and perhaps after all it might end, you know,\' said the King, with an M--\' \'Why.', 6, 22, 22, '2025-03-08 10:11:36', '2025-03-26 10:29:07'),
(44, 'I used--and I don\'t know,\' he went on growing, and she walked on in the morning, just time to go, for the baby, and not to her, And mentioned me to him: She gave me a pair of gloves and a large.', 7, 22, 22, '2025-03-01 00:59:07', '2025-03-26 10:29:07'),
(45, 'Dormouse,\' the Queen to play croquet.\' Then they all looked puzzled.) \'He must have a prize herself, you know,\' the Hatter grumbled: \'you shouldn\'t have put it to annoy, Because he knows it teases.\'.', 7, 22, 22, '2025-02-28 12:02:17', '2025-03-26 10:29:07'),
(46, 'King triumphantly, pointing to Alice an excellent opportunity for repeating his remark, with variations. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what am I to get her head.', 7, 22, 22, '2025-03-06 12:13:38', '2025-03-26 10:29:07'),
(47, 'Gryphon hastily. \'Go on with the game,\' the Queen furiously, throwing an inkstand at the righthand bit again, and looking at it gloomily: then he dipped it into one of the court. \'What do you know.', 7, 22, 22, '2025-03-01 23:53:14', '2025-03-26 10:29:07'),
(48, 'I to get in?\' \'There might be hungry, in which the words all coming different, and then said, \'It WAS a curious croquet-ground in her lessons in the shade: however, the moment he was in such a.', 7, 22, 22, '2025-03-10 13:10:43', '2025-03-26 10:29:07'),
(49, 'Hatter: \'it\'s very interesting. I never understood what it was: at first was in managing her flamingo: she succeeded in curving it down \'important,\' and some of them were animals, and some.', 8, 1, 1, '2025-03-04 14:00:07', '2025-03-26 10:29:07'),
(50, 'King, \'or I\'ll have you executed on the bank--the birds with draggled feathers, the animals with their heads!\' and the three gardeners instantly threw themselves flat upon their faces. There was a.', 8, 1, 1, '2025-03-04 02:26:42', '2025-03-26 10:29:07'),
(51, 'And she opened the door of which was full of smoke from one of the Gryphon, and, taking Alice by the fire, and at once set to work shaking him and punching him in the direction it pointed to.', 8, 1, 1, '2025-03-03 23:53:09', '2025-03-26 10:29:07'),
(52, 'First, she dreamed of little pebbles came rattling in at once.\' And in she went. Once more she found she could guess, she was quite pale (with passion, Alice thought), and it sat down in a low.', 8, 1, 1, '2025-03-06 17:08:25', '2025-03-26 10:29:07'),
(53, 'Let me see--how IS it to be sure, this generally happens when one eats cake, but Alice had been jumping about like that!\' said Alice in a hurried nervous manner, smiling at everything that Alice had.', 8, 1, 1, '2025-03-13 08:05:27', '2025-03-26 10:29:07'),
(54, 'Alice, as she had to leave off this minute!\' She generally gave herself very good advice, (though she very seldom followed it), and handed them round as prizes. There was nothing on it except a tiny.', 8, 1, 1, '2025-03-08 17:13:07', '2025-03-26 10:29:07'),
(55, 'Alice noticed with some difficulty, as it was addressed to the Hatter. \'He won\'t stand beating. Now, if you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice hastily, afraid that.', 8, 1, 1, '2025-03-10 00:41:53', '2025-03-26 10:29:07'),
(56, 'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not even room for her. \'I can tell you what year it is?\' \'Of course they were\', said the Dormouse, and repeated her.', 9, 23, 1, '2025-03-22 18:45:31', '2025-03-26 10:29:07'),
(57, 'Bill,\' she gave one sharp kick, and waited to see its meaning. \'And just as well. The twelve jurors were all turning into little cakes as they lay on the trumpet, and called out, \'First witness!\'.', 9, 23, 1, '2025-02-24 19:37:42', '2025-03-26 10:29:07'),
(58, 'Alice. \'I\'ve so often read in the schoolroom, and though this was the BEST butter, you know.\' It was, no doubt: only Alice did not like the look of it now in sight, and no one else seemed inclined.', 9, 23, 1, '2025-03-06 11:56:56', '2025-03-26 10:29:07'),
(59, 'King replied. Here the other birds tittered audibly. \'What I was going on rather better now,\' she said, \'for her hair goes in such a pleasant temper, and thought to herself, as well she might, what.', 9, 23, 1, '2025-03-24 20:13:47', '2025-03-26 10:29:07'),
(60, 'I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she began again. \'I should like to go after that savage Queen: so she set to work at once took up the fan and two or three pairs of tiny white kid.', 9, 23, 1, '2025-03-09 03:00:54', '2025-03-26 10:29:07'),
(61, 'Lizard, who seemed to be ashamed of yourself,\' said Alice, (she had grown to her feet in the sea, \'and in that ridiculous fashion.\' And he got up and said, \'It WAS a narrow escape!\' said Alice, who.', 9, 23, 1, '2025-02-27 02:18:23', '2025-03-26 10:29:07'),
(62, 'Cat went on, taking first one side and then said, \'It WAS a narrow escape!\' said Alice, very loudly and decidedly, and there was no longer to be beheaded!\' \'What for?\' said the Pigeon went on, \'if.', 9, 23, 1, '2025-03-17 07:36:53', '2025-03-26 10:29:07'),
(63, 'Magpie began wrapping itself up and beg for its dinner, and all of you, and don\'t speak a word till I\'ve finished.\' So they got thrown out to the Cheshire Cat sitting on the twelfth?\' Alice went on.', 10, 23, 1, '2025-03-13 07:56:18', '2025-03-26 10:29:07'),
(64, 'Next came an angry tone, \'Why, Mary Ann, what ARE you talking to?\' said the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon replied rather impatiently: \'any shrimp.', 10, 23, 1, '2025-03-18 22:00:26', '2025-03-26 10:29:07'),
(65, 'Alice, always ready to make out what it was: she was to find quite a chorus of voices asked. \'Why, SHE, of course,\' the Gryphon only answered \'Come on!\' cried the Mock Turtle recovered his voice.', 10, 23, 1, '2025-02-24 20:58:27', '2025-03-26 10:29:07'),
(66, 'I\'d only been the right size, that it might belong to one of them with one eye, How the Owl and the pattern on their slates, and she jumped up on to the door, and tried to open them again, and did.', 10, 23, 1, '2025-02-26 02:19:44', '2025-03-26 10:29:07'),
(67, 'Soup of the what?\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'Well, then,\' the Cat went on, half to herself, as usual. \'Come, there\'s no use in crying like that!\' said Alice loudly.', 10, 23, 1, '2025-03-24 20:55:33', '2025-03-26 10:29:07'),
(68, 'Bill,\' she gave one sharp kick, and waited till she was dozing off, and that if something wasn\'t done about it while the Dodo managed it.) First it marked out a new idea to Alice, and she did not.', 10, 23, 1, '2025-03-10 04:13:33', '2025-03-26 10:29:07'),
(69, 'Alice, thinking it was good manners for her neck kept getting entangled among the trees, a little way out of it, and kept doubling itself up and bawled out, \"He\'s murdering the time! Off with his.', 10, 23, 1, '2025-03-06 07:18:37', '2025-03-26 10:29:07'),
(70, 'Hatter. Alice felt a little glass box that was trickling down his face, as long as you liked.\' \'Is that the hedgehog a blow with its eyelids, so he did,\' said the Mock Turtle in the distance, and.', 10, 23, 1, '2025-02-26 05:35:52', '2025-03-26 10:29:07'),
(71, 'There was a treacle-well.\' \'There\'s no sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then she had never been so much frightened that she was now about a thousand times as large as.', 10, 23, 1, '2025-02-24 22:16:25', '2025-03-26 10:29:07'),
(72, 'Bill had left off writing on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old crab, HE was.\' \'I never went to the Classics master, though.', 11, 23, 1, '2025-03-07 00:47:47', '2025-03-26 10:29:08'),
(73, 'Duchess\'s voice died away, even in the lap of her sharp little chin into Alice\'s head. \'Is that all?\' said Alice, surprised at her hands, wondering if anything would EVER happen in a dreamy sort of.', 11, 23, 1, '2025-02-24 12:33:12', '2025-03-26 10:29:08'),
(74, 'There was exactly one a-piece all round. (It was this last word two or three times over to the tarts on the glass table as before, \'and things are \"much of a well--\' \'What did they draw?\' said.', 11, 23, 1, '2025-03-08 17:12:36', '2025-03-26 10:29:08'),
(75, 'Alice watched the White Rabbit, jumping up in a natural way again. \'I wonder what CAN have happened to you? Tell us all about for some way, and the cool fountains. CHAPTER VIII. The Queen\'s.', 11, 23, 1, '2025-03-10 06:47:12', '2025-03-26 10:29:08'),
(76, 'I breathe\"!\' \'It IS a long and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and nothing seems to suit them!\' \'I haven\'t the least notice of her age knew the.', 11, 23, 1, '2025-02-24 14:04:17', '2025-03-26 10:29:08'),
(77, 'I should understand that better,\' Alice said to herself, as she went hunting about, and crept a little irritated at the bottom of a dance is it?\' he said, \'on and off, for days and days.\' \'But what.', 11, 23, 1, '2025-03-25 13:28:38', '2025-03-26 10:29:08'),
(78, 'Who ever saw one that size? Why, it fills the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in another moment.', 11, 23, 1, '2025-03-04 19:23:51', '2025-03-26 10:29:08'),
(79, 'Bill,\' thought Alice,) \'Well, I never was so large a house, that she had to fall upon Alice, as she added, to herself, \'I wish I could say if I can go back by railway,\' she said these words her foot.', 11, 23, 1, '2025-03-19 13:11:06', '2025-03-26 10:29:08'),
(80, 'Improve his shining tail, And pour the waters of the reeds--the rattling teacups would change to tinkling sheep-bells, and the fall was over. However, when they passed too close, and waving their.', 11, 23, 1, '2025-03-20 19:26:05', '2025-03-26 10:29:08'),
(81, 'I COULD NOT SWIM--\" you can\'t help that,\' said the Cat, and vanished. Alice was just in time to hear it say, as it spoke (it was Bill, I fancy--Who\'s to go and live in that ridiculous fashion.\' And.', 11, 23, 1, '2025-02-25 14:52:13', '2025-03-26 10:29:08'),
(82, 'I suppose.\' So she stood looking at them with one elbow against the door, staring stupidly up into the jury-box, or they would call after her: the last few minutes to see if there were ten of them.', 12, 24, 1, '2025-02-26 01:13:09', '2025-03-26 10:29:08'),
(83, 'Hatter, and, just as she ran. \'How surprised he\'ll be when he sneezes: He only does it to the other, and making faces at him as he could go. Alice took up the other, trying every door, she ran off.', 12, 24, 1, '2025-03-04 08:19:18', '2025-03-26 10:29:08'),
(84, 'VERY tired of sitting by her sister on the stairs. Alice knew it was talking in his turn; and both creatures hid their faces in their mouths--and they\'re all over their heads. She felt that it is!\'.', 12, 24, 1, '2025-03-25 01:35:56', '2025-03-26 10:29:08'),
(85, 'The only things in the house opened, and a pair of the leaves: \'I should like it put the Dormouse again, so that it might tell her something about the temper of your nose-- What made you so awfully.', 12, 24, 1, '2025-03-16 13:05:00', '2025-03-26 10:29:08'),
(86, 'Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never saw one, or heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Hatter. \'He won\'t stand beating.', 12, 24, 1, '2025-02-24 16:22:08', '2025-03-26 10:29:08'),
(87, 'But, now that I\'m perfectly sure I don\'t think,\' Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon whispered in reply, \'for fear they should forget them before the officer could get.', 12, 24, 1, '2025-03-03 05:52:14', '2025-03-26 10:29:08'),
(88, 'Alice did not come the same words as before, \'and things are \"much of a feather flock together.\"\' \'Only mustard isn\'t a letter, after all: it\'s a set of verses.\' \'Are they in the pool, and the White.', 12, 24, 1, '2025-03-22 00:17:41', '2025-03-26 10:29:08'),
(89, 'Queen, \'and he shall tell you more than three.\' \'Your hair wants cutting,\' said the King triumphantly, pointing to Alice an excellent plan, no doubt, and very angrily. \'A knot!\' said Alice.', 12, 24, 1, '2025-02-25 18:31:16', '2025-03-26 10:29:08'),
(90, 'The Caterpillar and Alice was just in time to wash the things get used up.\' \'But what did the archbishop find?\' The Mouse did not quite sure whether it was over at last: \'and I do hope it\'ll make me.', 12, 24, 1, '2025-03-23 14:12:50', '2025-03-26 10:29:08'),
(91, 'I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the patience of an oyster!\' \'I wish you would seem to come down the hall. After a time there could be no use going back to the Classics master.', 13, 24, 1, '2025-03-12 05:09:18', '2025-03-26 10:29:08'),
(92, 'Rabbit was still in sight, hurrying down it. There was no label this time she found a little pattering of feet in the other: he came trotting along in a dreamy sort of life! I do so like that.', 13, 24, 1, '2025-03-08 05:29:54', '2025-03-26 10:29:08'),
(93, 'Half-past one, time for dinner!\' (\'I only wish they WOULD put their heads down and make one repeat lessons!\' thought Alice; but she knew the right thing to eat the comfits: this caused some noise.', 13, 24, 1, '2025-03-06 10:54:01', '2025-03-26 10:29:08'),
(94, 'And when I find a number of changes she had to fall a long way back, and barking hoarsely all the jurors had a large canvas bag, which tied up at this moment Alice felt a little startled by seeing.', 13, 24, 1, '2025-03-20 21:53:00', '2025-03-26 10:29:08'),
(95, 'I shall be late!\' (when she thought to herself. At this moment the door opened inwards, and Alice\'s elbow was pressed so closely against her foot, that there ought! And when I learn music.\' \'Ah!.', 13, 24, 1, '2025-03-20 01:00:57', '2025-03-26 10:29:08'),
(96, 'The Hatter\'s remark seemed to her lips. \'I know what it was: at first she thought it over here,\' said the Mock Turtle had just begun to repeat it, but her voice sounded hoarse and strange, and the.', 14, 1, 1, '2025-02-26 09:03:22', '2025-03-26 10:29:08'),
(97, 'There was certainly not becoming. \'And that\'s the jury-box,\' thought Alice, \'they\'re sure to make out who I WAS when I was going to begin at HIS time of life. The King\'s argument was, that you.', 14, 1, 1, '2025-03-01 18:02:04', '2025-03-26 10:29:08'),
(98, 'COULD grin.\' \'They all can,\' said the Dodo, \'the best way to change the subject. \'Go on with the time,\' she said these words her foot as far as they came nearer, Alice could only see her. She is.', 14, 1, 1, '2025-03-23 05:22:45', '2025-03-26 10:29:08'),
(99, 'Queen. \'Their heads are gone, if it wasn\'t trouble enough hatching the eggs,\' said the Cat remarked. \'Don\'t be impertinent,\' said the Cat, and vanished. Alice was too much of it in with a deep.', 14, 1, 1, '2025-03-26 09:23:24', '2025-03-26 10:29:08'),
(100, 'I goes like a wild beast, screamed \'Off with his head!\' or \'Off with her head!\' Those whom she sentenced were taken into custody by the time they had at the Cat\'s head began fading away the time.', 14, 1, 1, '2025-03-07 06:53:07', '2025-03-26 10:29:08'),
(101, 'If I or she should chance to be ashamed of yourself,\' said Alice, feeling very glad to do THAT in a whisper, half afraid that she was peering about anxiously among the bright flower-beds and the.', 14, 1, 1, '2025-03-17 17:31:01', '2025-03-26 10:29:08'),
(102, 'Alice looked very anxiously into her face. \'Very,\' said Alice: \'besides, that\'s not a bit of the lefthand bit of the ground, Alice soon came to the Mock Turtle yawned and shut his eyes.--\'Tell her.', 14, 1, 1, '2025-03-23 09:42:41', '2025-03-26 10:29:08'),
(103, 'WAS a curious appearance in the sky. Twinkle, twinkle--\"\' Here the Dormouse went on, \'if you don\'t explain it as a partner!\' cried the Gryphon. \'Well, I should say what you mean,\' said Alice.', 14, 1, 1, '2025-03-17 08:20:34', '2025-03-26 10:29:08'),
(104, 'SOME change in my life!\' She had already heard her sentence three of her voice. Nobody moved. \'Who cares for you?\' said the sage, as he spoke. \'UNimportant, of course, Alice could speak again. In a.', 15, 25, 25, '2025-03-16 06:49:47', '2025-03-26 10:29:08'),
(105, 'I suppose?\' \'Yes,\' said Alice, \'but I must sugar my hair.\" As a duck with its tongue hanging out of the fact. \'I keep them to sell,\' the Hatter with a little irritated at the sudden change, but she.', 15, 25, 25, '2025-03-24 04:39:56', '2025-03-26 10:29:08'),
(106, 'Alice. \'Reeling and Writhing, of course, Alice could hear the name \'W. RABBIT\' engraved upon it. She felt that it was over at last: \'and I do hope it\'ll make me grow smaller, I suppose.\' So she set.', 15, 25, 25, '2025-03-04 14:40:11', '2025-03-26 10:29:08'),
(107, 'VERY deeply with a melancholy tone: \'it doesn\'t seem to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of.', 15, 25, 25, '2025-02-27 07:17:20', '2025-03-26 10:29:08'),
(108, 'Duchess sneezed occasionally; and as he spoke. \'UNimportant, of course, Alice could bear: she got up, and there stood the Queen shouted at the place of the officers of the window, and some.', 15, 25, 25, '2025-03-13 13:00:36', '2025-03-26 10:29:08'),
(109, 'Alice said; \'there\'s a large piece out of a treacle-well--eh, stupid?\' \'But they were nowhere to be listening, so she helped herself to about two feet high: even then she had made out the answer to.', 15, 25, 25, '2025-03-24 01:45:21', '2025-03-26 10:29:08'),
(110, 'As soon as there was no use their putting their heads down! I am now? That\'ll be a book of rules for shutting people up like a thunderstorm. \'A fine day, your Majesty!\' the Duchess and the Queen.', 15, 25, 25, '2025-03-20 08:49:57', '2025-03-26 10:29:08'),
(111, 'Alice, a little before she had tired herself out with trying, the poor little juror (it was exactly one a-piece all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he.', 15, 25, 25, '2025-02-25 23:06:59', '2025-03-26 10:29:08'),
(112, 'So Alice got up very carefully, with one foot. \'Get up!\' said the March Hare interrupted in a rather offended tone, \'was, that the poor child, \'for I can\'t get out at the sides of it, and talking.', 16, 25, 25, '2025-03-17 16:18:23', '2025-03-26 10:29:08'),
(113, 'Dormouse. \'Fourteenth of March, I think you\'d better leave off,\' said the Dormouse: \'not in that soup!\' Alice said very politely, \'for I never knew whether it would all come wrong, and she looked.', 16, 25, 25, '2025-02-27 18:56:49', '2025-03-26 10:29:08'),
(114, 'FIT you,\' said the Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said the Mock Turtle had just begun to think this a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\'.', 16, 25, 25, '2025-03-18 04:06:53', '2025-03-26 10:29:08'),
(115, 'I hadn\'t quite finished my tea when I breathe\"!\' \'It IS the use of this was of very little use, as it didn\'t sound at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s shrill cries to the cur.', 16, 25, 25, '2025-03-18 02:49:56', '2025-03-26 10:29:08'),
(116, 'I\'m mad. You\'re mad.\' \'How do you like to have it explained,\' said the King, and the whole pack rose up into hers--she could hear him sighing as if she had felt quite strange at first; but she could.', 16, 25, 25, '2025-02-24 20:04:29', '2025-03-26 10:29:08'),
(117, 'March Hare interrupted, yawning. \'I\'m getting tired of being all alone here!\' As she said this last remark. \'Of course they were\', said the Duchess: you\'d better finish the story for yourself.\' \'No.', 16, 25, 25, '2025-03-10 21:48:08', '2025-03-26 10:29:08'),
(118, 'Still she went to school in the pool as it lasted.) \'Then the Dormouse began in a very decided tone: \'tell her something worth hearing. For some minutes it seemed quite natural to Alice an excellent.', 16, 25, 25, '2025-03-11 11:45:03', '2025-03-26 10:29:08'),
(119, 'Alice soon began talking again. \'Dinah\'ll miss me very much at this, she looked up, and reduced the answer to it?\' said the Gryphon: and it set to work at once in the other: the Duchess was VERY.', 16, 25, 25, '2025-03-05 18:30:14', '2025-03-26 10:29:08'),
(120, 'Alice didn\'t think that very few little girls of her voice, and the Queen furiously, throwing an inkstand at the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d.', 16, 25, 25, '2025-03-22 06:48:57', '2025-03-26 10:29:08'),
(121, 'Twinkle, twinkle--\"\' Here the Dormouse fell asleep instantly, and neither of the sort. Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit read out, at.', 17, 1, 25, '2025-03-13 17:24:13', '2025-03-26 10:29:08'),
(122, 'CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice in a moment. \'Let\'s go on in the air: it puzzled her a good character, But said I could say if I might venture to go and take it.', 17, 1, 25, '2025-03-22 19:12:22', '2025-03-26 10:29:08'),
(123, 'Alice began, in a day or two: wouldn\'t it be of very little way forwards each time and a large mustard-mine near here. And the Gryphon went on. \'Or would you like to be lost, as she could, and.', 17, 1, 25, '2025-03-04 10:14:22', '2025-03-26 10:29:08'),
(124, 'March Hare, \'that \"I like what I say--that\'s the same year for such dainties would not stoop? Soup of the house opened, and a fan! Quick, now!\' And Alice was not even get her head in the wind, and.', 17, 1, 25, '2025-03-14 06:39:01', '2025-03-26 10:29:08'),
(125, 'ME,\' but nevertheless she uncorked it and put back into the earth. Let me see: four times six is thirteen, and four times six is thirteen, and four times five is twelve, and four times five is.', 17, 1, 25, '2025-02-24 16:27:06', '2025-03-26 10:29:08'),
(126, 'ONE respectable person!\' Soon her eye fell upon a little timidly: \'but it\'s no use in knocking,\' said the Caterpillar. Alice folded her hands, and she thought to herself that perhaps it was getting.', 17, 1, 25, '2025-03-03 17:27:11', '2025-03-26 10:29:08'),
(127, 'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head was so full of the house.', 17, 1, 25, '2025-03-15 08:14:46', '2025-03-26 10:29:08');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` enum('Technical','Billing','General') DEFAULT NULL,
  `priority` enum('Low','Medium','High') DEFAULT NULL,
  `status` enum('Open','In Progress','Resolved','Closed') DEFAULT NULL,
  `attachment_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `subject`, `description`, `category`, `priority`, `status`, `attachment_path`, `created_at`, `updated_at`) VALUES
(1, 2, 'Dolore aut velit et similique sunt qui.', 'Aliquid sit dolore minima optio sed. Magnam et voluptas dicta sapiente ratione dolorum. Consequatur et laboriosam quia itaque sed hic. Possimus similique in dolore distinctio quidem. Nulla earum odio et.', 'General', 'High', 'Resolved', NULL, '2025-02-28 15:27:08', '2025-03-26 10:29:07'),
(2, 2, 'Quisquam quia ad quo et officiis nisi.', 'Nulla voluptatem magni vel facilis facilis vel. Dolorum debitis dicta facere facilis ut asperiores.', 'General', 'High', 'Resolved', NULL, '2025-03-10 01:01:30', '2025-03-26 10:29:07'),
(3, 2, 'Ipsam rerum quod dolorum voluptas aut molestias ut beatae.', 'Sit qui eaque reiciendis tempora minima et. Et sint aut earum non natus cupiditate in praesentium. Voluptas corrupti deserunt necessitatibus quam quae rerum. Nemo quia inventore aspernatur.', 'General', 'High', 'Resolved', NULL, '2025-03-18 21:04:25', '2025-03-26 10:29:07'),
(4, 21, 'Quia est omnis numquam omnis sequi molestiae.', 'Corrupti aut accusantium cupiditate. Eum explicabo at voluptatem natus. Aut quibusdam ut similique similique.', 'General', 'High', 'Closed', NULL, '2025-03-07 04:55:33', '2025-03-26 10:29:07'),
(5, 21, 'Ratione voluptatem reprehenderit tempora non commodi sunt.', 'Consequatur accusamus quibusdam architecto repellendus sapiente. Possimus exercitationem rerum ad distinctio saepe eligendi cumque id. Qui tempore et autem aut quas. Veritatis voluptatem sit aperiam quia consectetur quia similique.', 'General', 'High', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC20E.tmp', '2025-02-24 10:41:21', '2025-03-26 10:29:07'),
(6, 22, 'Eum inventore incidunt ut a quod est.', 'Deleniti repellat ex et cum aut et fugit. Reiciendis quia ut nobis dolore. Nisi enim recusandae aut et minus eveniet vel.', 'Billing', 'Medium', 'Open', NULL, '2025-03-13 14:37:52', '2025-03-26 10:29:07'),
(7, 22, 'Esse id architecto aut libero sequi.', 'Nemo veniam sit ducimus blanditiis aut consequatur nesciunt qui. Quibusdam ut et nobis natus porro nam. Sint repellendus dolores illum necessitatibus est non maxime.', 'Billing', 'Medium', 'Open', NULL, '2025-03-22 03:50:02', '2025-03-26 10:29:07'),
(8, 22, 'A cum aut nesciunt quo.', 'Vero necessitatibus voluptatem provident et. Nihil libero laudantium corporis amet. Autem ratione doloribus quisquam. Libero doloremque debitis quasi provident qui.', 'Billing', 'Medium', 'Open', NULL, '2025-03-12 03:59:40', '2025-03-26 10:29:07'),
(9, 23, 'Dolores neque voluptatibus consectetur omnis ut quibusdam.', 'Facilis sed expedita debitis est modi quod est. Non rem omnis aut fugit. Perferendis cupiditate odit non officiis. Porro autem recusandae provident eum similique delectus animi.', 'Technical', 'High', 'Closed', NULL, '2025-03-03 11:40:20', '2025-03-26 10:29:07'),
(10, 23, 'Deleniti consequatur quam consequuntur hic excepturi corporis eligendi.', 'Et qui vitae id aperiam est. Omnis consectetur consectetur et voluptas porro nihil facere. Sint quidem quod explicabo esse aut aperiam quae. Sapiente esse ipsam minima incidunt ut nesciunt.', 'Technical', 'High', 'Closed', NULL, '2025-03-16 19:39:06', '2025-03-26 10:29:07'),
(11, 23, 'Ex et nulla dolor consequatur repellat at dicta.', 'Aut sit quia impedit amet expedita culpa. Ea enim deleniti natus voluptates magnam. Dolorem consequatur itaque tenetur culpa sint voluptatem qui.', 'Technical', 'High', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC21F.tmp', '2025-03-12 23:02:09', '2025-03-26 10:29:07'),
(12, 24, 'Quia perspiciatis sed vel est voluptatem aliquid.', 'Porro molestias facere enim consequatur placeat. A laboriosam voluptatum vitae itaque. Assumenda labore est veritatis nobis odio quis. Consequatur facere qui similique sed quos maxime quae.', 'Technical', 'Low', 'Closed', NULL, '2025-02-24 17:24:05', '2025-03-26 10:29:07'),
(13, 24, 'Rerum illum ut quos dignissimos illo consectetur doloremque.', 'Ut ut et quo velit rerum molestiae. Minus quae et impedit quia necessitatibus. Dolorem placeat fugit delectus laudantium sed.', 'Technical', 'Low', 'Closed', NULL, '2025-03-23 16:34:10', '2025-03-26 10:29:07'),
(14, 24, 'Atque at repellat molestiae aut quia modi aut voluptatem.', 'Iste voluptatum architecto ea ratione non autem eaque. Adipisci sed eum aut similique voluptas. Possimus quia aut laudantium quas illo rerum ipsum quisquam. Dolorem veniam ipsa tempore commodi.', 'Technical', 'Low', 'Closed', NULL, '2025-03-05 18:05:45', '2025-03-26 10:29:07'),
(15, 25, 'In et molestias odit.', 'Quia veniam vitae quod ut est perspiciatis pariatur. Qui eum id voluptatibus possimus. Voluptas eum quia rem omnis numquam. Occaecati quibusdam architecto est repellat quia quam.', 'General', 'High', 'Resolved', NULL, '2025-02-28 15:46:49', '2025-03-26 10:29:07'),
(16, 25, 'Cupiditate fugit velit non molestiae consectetur.', 'Mollitia nostrum in atque consectetur amet similique commodi. Repudiandae quas quidem quidem nostrum accusantium. Et ut autem error.', 'General', 'High', 'Resolved', NULL, '2025-03-05 13:28:49', '2025-03-26 10:29:07'),
(17, 25, 'Ducimus quod ut itaque aut qui et.', 'Neque et aut enim atque. Doloremque suscipit quaerat rerum laboriosam sequi pariatur. Voluptatem optio id earum et officiis beatae qui modi. Minima excepturi aut excepturi quasi mollitia occaecati sint aut.', 'General', 'High', 'Resolved', NULL, '2025-03-16 17:21:11', '2025-03-26 10:29:07'),
(18, 26, 'Ea necessitatibus quod iure.', 'Tempora rerum impedit rerum rerum consequuntur rerum voluptas. Neque beatae est aliquam laboriosam. Beatae odit temporibus nesciunt. Dolor est sint magni sit ut expedita.', 'Technical', 'Low', 'In Progress', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC29D.tmp', '2025-03-22 05:48:01', '2025-03-26 10:29:07'),
(19, 29, 'In minus sit in reiciendis et quis commodi.', 'Et est explicabo non facilis accusantium magnam hic quam. Quidem tenetur ipsa sint at unde quas ex. Enim beatae explicabo facilis quis accusamus maxime rerum. In iusto non quidem et.', 'Billing', 'Low', 'Resolved', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC2BD.tmp', '2025-03-16 21:56:18', '2025-03-26 10:29:07'),
(20, 32, 'Incidunt repudiandae modi iure minima assumenda.', 'Consequatur cumque voluptatem minus. Exercitationem perferendis vel qui consequatur.', 'Technical', 'High', 'In Progress', NULL, '2025-03-10 13:04:13', '2025-03-26 10:29:07'),
(21, 35, 'Cumque qui architecto eos ut.', 'Voluptatem molestiae debitis consequatur sunt a velit illo qui. Doloribus esse earum esse laboriosam consequatur magnam enim magni.', 'General', 'Medium', 'Closed', NULL, '2025-03-20 22:08:26', '2025-03-26 10:29:07'),
(22, 38, 'Dolor magni et ea eligendi velit.', 'Nesciunt fuga sed praesentium velit rem. Quod quaerat ullam illum adipisci accusantium reprehenderit debitis officiis. Dolores aut eos vel nihil rerum. Quibusdam quis dolore blanditiis voluptate.', 'General', 'High', 'Resolved', NULL, '2025-03-22 01:10:48', '2025-03-26 10:29:07'),
(23, 41, 'Voluptate corrupti impedit labore eius earum autem sunt.', 'Et minus in unde. Ullam accusantium eligendi eum consequatur officiis non. Accusamus quod repellendus qui sapiente consequuntur sed. Voluptatibus enim veniam facilis est id deserunt quae.', 'Billing', 'High', 'In Progress', NULL, '2025-02-26 22:47:59', '2025-03-26 10:29:07'),
(24, 44, 'Debitis molestias deserunt vero nihil voluptates assumenda earum.', 'Esse consectetur recusandae numquam ipsum. Soluta beatae aperiam cupiditate alias eaque excepturi expedita debitis. Iure sed debitis a illum ut.', 'Technical', 'Medium', 'Closed', NULL, '2025-03-08 04:45:54', '2025-03-26 10:29:07'),
(25, 47, 'Ut minus repellendus repudiandae laboriosam ea deleniti suscipit.', 'Impedit et nihil qui. Asperiores quaerat ipsum voluptas saepe fugiat qui. Quam nostrum cumque totam asperiores autem alias sed. Omnis velit sed ut. Illum aliquid et sit ut non ipsam aspernatur.', 'Billing', 'High', 'Closed', NULL, '2025-03-24 20:56:58', '2025-03-26 10:29:07'),
(26, 50, 'Quis neque aliquid similique officia ipsa ratione quo.', 'Cupiditate aperiam necessitatibus reprehenderit amet et enim. Praesentium ut maxime eos voluptatem dolorum qui id omnis. Repellat a aut velit excepturi incidunt dolor nihil.', 'General', 'Medium', 'Open', NULL, '2025-03-13 22:56:27', '2025-03-26 10:29:07'),
(27, 53, 'Dicta quaerat sed architecto eos harum mollitia atque.', 'Accusamus sed sint eum aut consequatur molestiae numquam. Sequi exercitationem sed et in et exercitationem nisi. Ipsa minima non nulla et voluptatem.', 'Technical', 'High', 'Closed', NULL, '2025-02-24 12:50:03', '2025-03-26 10:29:07'),
(28, 56, 'Perspiciatis magni ut amet aspernatur aut excepturi totam.', 'Accusantium recusandae sunt ad aut id. Aut id eligendi sapiente perferendis tenetur. Sit pariatur quas accusantium non fuga velit.', 'Technical', 'Medium', 'Closed', NULL, '2025-03-07 10:50:10', '2025-03-26 10:29:07'),
(29, 59, 'Ut harum non debitis est qui neque recusandae.', 'Nisi et qui nihil vel et facilis necessitatibus laborum. Repudiandae sit quaerat provident illo ratione. Molestiae perferendis magni neque error culpa est fugit.', 'General', 'High', 'Open', NULL, '2025-02-27 19:04:28', '2025-03-26 10:29:07'),
(30, 62, 'Ipsam et impedit molestiae vero quasi quis.', 'Corporis in illo qui. Quo ea dolorem aperiam qui. Ratione et dignissimos culpa ducimus vel est atque. Sequi quia accusantium ipsa modi dolores voluptates.', 'Technical', 'Medium', 'Resolved', NULL, '2025-02-25 21:14:10', '2025-03-26 10:29:07'),
(31, 65, 'Nostrum ullam reprehenderit quis sed aut alias nisi dolores.', 'Aut facilis recusandae molestiae quidem odio eos distinctio omnis. Sed omnis blanditiis aut dolor rerum ut. Perspiciatis ad possimus adipisci. Quaerat incidunt et at et omnis.', 'Technical', 'Low', 'Open', NULL, '2025-03-18 23:36:52', '2025-03-26 10:29:07'),
(32, 68, 'Quia labore deserunt facere ipsum.', 'Ut est voluptatem possimus veniam necessitatibus minima dolorem. Veniam odit maiores necessitatibus quia. Consectetur amet sint nostrum quidem mollitia quia. Vitae hic fuga praesentium libero laboriosam dolorem sed.', 'Billing', 'High', 'Resolved', NULL, '2025-03-15 18:42:21', '2025-03-26 10:29:07'),
(33, 71, 'Tempora doloribus maiores amet quis magni.', 'Molestiae placeat officiis impedit ipsam quidem corrupti sint sapiente. Fugiat enim rerum repellendus dolorem sapiente praesentium asperiores.', 'General', 'High', 'Resolved', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC32B.tmp', '2025-03-17 23:22:16', '2025-03-26 10:29:07'),
(34, 74, 'Reprehenderit et autem aut exercitationem atque.', 'Eum corporis deserunt modi incidunt expedita nulla laboriosam id. Et molestias et velit rerum voluptas. Quos itaque dicta at cumque velit. Distinctio minus odio aut molestiae. Et inventore iste autem iusto ex.', 'General', 'Low', 'Resolved', NULL, '2025-03-01 08:34:52', '2025-03-26 10:29:07'),
(35, 77, 'Explicabo vitae alias voluptate.', 'Quidem quidem occaecati molestiae. Provident tempora asperiores enim laborum. Ratione excepturi itaque et et sed. Nostrum et perferendis omnis error qui sunt sit.', 'General', 'High', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC34C.tmp', '2025-03-22 14:19:55', '2025-03-26 10:29:07'),
(36, 80, 'Dignissimos ullam praesentium unde placeat quia incidunt.', 'Quo rerum eligendi reiciendis assumenda voluptas non dolorem. Officiis repudiandae facere aliquid aliquam mollitia dolorem. Dolorum accusamus nisi porro repellat atque dolores. Ab est est molestiae laudantium velit libero.', 'Technical', 'High', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC34D.tmp', '2025-03-01 15:34:38', '2025-03-26 10:29:07'),
(37, 83, 'Velit laudantium beatae tenetur fuga error ut.', 'Occaecati reprehenderit voluptatum quos deleniti. Voluptatem asperiores delectus repellat eos quis sed iusto. Ex fugiat voluptatem rerum magni sit molestiae aut sit. Sed et dolore ut debitis molestiae.', 'Billing', 'Medium', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC34E.tmp', '2025-03-02 15:56:34', '2025-03-26 10:29:07'),
(38, 86, 'Eaque ab aut velit aut cumque.', 'Vitae odit non sed assumenda voluptatibus. Quia excepturi ut asperiores culpa qui atque. Saepe magni dolore eos et. Sunt ut molestiae atque aut ducimus laboriosam consequatur.', 'Technical', 'Medium', 'Closed', NULL, '2025-03-13 02:44:04', '2025-03-26 10:29:07'),
(39, 89, 'Magni eum eos sed qui.', 'Rerum pariatur et voluptas perspiciatis et deserunt. Sequi harum velit assumenda nihil et ex blanditiis. Mollitia debitis aut in excepturi.', 'Technical', 'High', 'Resolved', NULL, '2025-03-24 14:19:55', '2025-03-26 10:29:07'),
(40, 92, 'Quasi natus aut velit ad enim harum.', 'Quae voluptatibus suscipit qui. Velit ut rerum quisquam sit temporibus atque. Modi ab qui dolor accusantium. Vitae ipsum occaecati rerum et ipsa.', 'General', 'Low', 'In Progress', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC37E.tmp', '2025-03-08 20:29:33', '2025-03-26 10:29:07'),
(41, 95, 'Rerum illo eum commodi sed est sed.', 'Aut eligendi doloremque et. Rerum repellendus quos illo quaerat aut aspernatur et. Possimus earum hic veniam harum tempore.', 'Technical', 'Medium', 'In Progress', NULL, '2025-02-27 10:15:30', '2025-03-26 10:29:07'),
(42, 98, 'Sunt ex culpa similique consequuntur voluptatem aut impedit.', 'Voluptates quia at quos est. Dolorum fugiat a voluptates commodi optio. Praesentium molestiae nulla ratione distinctio minima molestias.', 'General', 'Medium', 'Closed', NULL, '2025-03-14 03:10:29', '2025-03-26 10:29:07'),
(43, 101, 'Veniam consequuntur est itaque laboriosam.', 'Fugiat iure voluptatem nesciunt quo. Ut non est facilis sit repellendus qui ut. Nulla laborum eveniet vitae sunt.', 'Billing', 'Low', 'In Progress', NULL, '2025-03-23 10:09:43', '2025-03-26 10:29:07'),
(44, 104, 'Eaque voluptas facilis non voluptatum sunt quia.', 'Laudantium consequuntur distinctio consequuntur autem et nam autem. Hic eum maiores nihil delectus. Quis asperiores aut et dolorem fugit.', 'Technical', 'Low', 'Open', NULL, '2025-03-10 01:59:54', '2025-03-26 10:29:07'),
(45, 107, 'Quos deserunt laudantium impedit.', 'Ab harum qui sint delectus. Odit quod quas odit impedit. Quibusdam eum ea voluptates expedita consectetur sed aspernatur. Nesciunt earum voluptatem sint.', 'Technical', 'Medium', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC39E.tmp', '2025-03-03 20:41:00', '2025-03-26 10:29:07'),
(46, 110, 'Velit veniam et saepe laboriosam repellat praesentium.', 'Praesentium facere delectus quidem molestias sed facere. Voluptatem et vel cum explicabo cumque laboriosam molestiae. Accusantium impedit accusantium libero accusamus voluptas magnam. Totam reiciendis maiores exercitationem et dolor dolorum. Voluptatum aut nam iusto qui porro.', 'Technical', 'Medium', 'Resolved', NULL, '2025-03-09 06:02:35', '2025-03-26 10:29:07'),
(47, 113, 'Vel veritatis fugit ducimus.', 'Atque pariatur natus dolores sit labore. Facilis doloremque recusandae modi asperiores nam optio aut adipisci. Voluptatum et vitae illum assumenda. Eos nihil vel modi autem dolorem.', 'Billing', 'Low', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC3AE.tmp', '2025-03-10 04:42:16', '2025-03-26 10:29:07'),
(48, 116, 'Nihil dolorem dicta deserunt suscipit ipsa.', 'Modi laboriosam et iste magnam quo. Excepturi excepturi autem maxime ad. Perferendis id qui aspernatur ullam odit neque quis. Voluptatem perferendis sint delectus ut necessitatibus.', 'Billing', 'High', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC3AF.tmp', '2025-03-08 01:26:19', '2025-03-26 10:29:07'),
(49, 119, 'Et et velit sit eum et ut.', 'Deleniti error voluptatem quae. Laborum labore labore alias. Enim dolorem ullam eaque minima ut est.', 'Billing', 'Low', 'In Progress', NULL, '2025-03-01 12:10:47', '2025-03-26 10:29:07'),
(50, 122, 'Est et autem non et natus et velit.', 'Et illum velit quas. Dolores est velit et cum. Eaque voluptatem eum omnis voluptate.', 'Billing', 'Medium', 'In Progress', NULL, '2025-03-07 07:30:15', '2025-03-26 10:29:07'),
(51, 125, 'Molestias voluptatem aspernatur ipsa doloremque officia modi.', 'Qui quo ut enim quidem necessitatibus voluptates corrupti. Aut voluptates ipsam minus repellat aut quaerat. Cupiditate quas autem odio velit aut deleniti. Iste voluptas repudiandae ab quia dolores ut iure eveniet.', 'Billing', 'Low', 'Resolved', NULL, '2025-03-20 09:28:43', '2025-03-26 10:29:07'),
(52, 128, 'Temporibus sunt eligendi laboriosam labore.', 'Minus minus asperiores numquam dolores vitae. Qui voluptatibus illo maxime rem corrupti. Suscipit autem voluptate excepturi vel est iste. Rerum placeat sit nihil ex animi.', 'Billing', 'Low', 'Open', NULL, '2025-03-10 07:03:15', '2025-03-26 10:29:07'),
(53, 131, 'Rerum soluta molestiae voluptatem dolorem hic nihil.', 'Omnis ut voluptatem facilis similique delectus ut commodi. Eum ea voluptatem sed voluptatem consectetur laboriosam itaque. Ut vero atque consequatur aperiam et. Veritatis excepturi vel a doloremque dignissimos debitis sint.', 'Billing', 'Medium', 'In Progress', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC3DF.tmp', '2025-03-25 13:25:37', '2025-03-26 10:29:07'),
(54, 134, 'Quia voluptas quia odio commodi impedit.', 'Atque illum quia est. Dicta ratione et nihil. Commodi occaecati sit vero ipsa minima.', 'Billing', 'Medium', 'Open', NULL, '2025-03-07 03:43:19', '2025-03-26 10:29:07'),
(55, 137, 'Nam aut sint nisi aut dolorum adipisci velit.', 'Dolorem non dolor ad distinctio ipsam atque. Ipsa aliquid recusandae totam consequatur consequatur quidem commodi. Voluptate quia sunt sunt ullam. Tenetur praesentium tempore odio alias sequi porro est.', 'Technical', 'High', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC3F0.tmp', '2025-03-16 03:35:48', '2025-03-26 10:29:07'),
(56, 140, 'Laboriosam qui quia similique quidem aliquid tenetur.', 'Aut aspernatur eveniet fugiat ut. Vero consequatur soluta ut ad illum. Quaerat accusamus dolores omnis expedita.', 'Billing', 'Medium', 'In Progress', NULL, '2025-03-02 14:05:51', '2025-03-26 10:29:07'),
(57, 143, 'Sit sit rerum quo labore est cum sequi qui.', 'Atque eligendi dolore sed voluptatem sit. Possimus ipsa alias amet quos consectetur et praesentium. Sunt similique dolores quo culpa.', 'Billing', 'Medium', 'Resolved', NULL, '2025-03-26 03:51:03', '2025-03-26 10:29:07'),
(58, 146, 'Eos fugiat dolores omnis dolor qui labore qui.', 'Quidem aut similique et totam id labore. Quas consequatur inventore expedita voluptatem saepe occaecati. Amet fugiat quia laboriosam omnis. Unde iusto quia molestiae minima eum quos sit sed.', 'General', 'High', 'In Progress', NULL, '2025-03-04 07:17:19', '2025-03-26 10:29:07'),
(59, 149, 'Consectetur consequatur nihil quia soluta in reiciendis.', 'Quia aut qui dolorem ut voluptatum omnis. Nemo repellat voluptatem ipsum modi. Dolore aliquam ea rerum dolorem nesciunt. Est sit iusto a est in sit rerum.', 'Technical', 'Medium', 'Open', NULL, '2025-02-25 13:32:43', '2025-03-26 10:29:07'),
(60, 152, 'Itaque consequuntur explicabo porro qui aliquam.', 'Officiis velit pariatur quis molestiae adipisci quibusdam et et. Beatae labore quae voluptate quod qui. Distinctio sunt voluptatem eligendi quos molestiae quia. Aut ipsa esse ut quos delectus omnis et temporibus.', 'Technical', 'Low', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC420.tmp', '2025-03-01 13:08:32', '2025-03-26 10:29:07'),
(61, 155, 'Cupiditate officiis enim in.', 'Totam ut voluptates aut. Et doloremque quibusdam rerum aliquam a voluptatem aut. Sed quia perferendis quia nihil delectus.', 'Technical', 'Low', 'Closed', NULL, '2025-03-12 12:31:18', '2025-03-26 10:29:07'),
(62, 158, 'Doloremque assumenda quasi fuga consequatur quo laudantium doloribus.', 'In eius harum similique est non earum commodi. Itaque ut nisi quos cum ipsum. Voluptatem suscipit non et dolores molestias quam. Qui laborum atque molestiae delectus unde.', 'Technical', 'High', 'In Progress', NULL, '2025-03-16 14:09:56', '2025-03-26 10:29:07'),
(63, 161, 'Enim doloremque natus adipisci non maxime.', 'Repellat non odio consequatur eum dolorem placeat animi. Ullam tempora dignissimos et enim voluptatem odit odio. Dicta in culpa voluptatibus eveniet. Et et alias exercitationem et voluptates laboriosam reprehenderit.', 'General', 'Low', 'Open', NULL, '2025-03-17 15:14:10', '2025-03-26 10:29:07'),
(64, 164, 'Neque adipisci quos placeat nihil aliquam aut.', 'Maxime fugit consequatur eveniet repudiandae. Non molestiae et aut accusantium nobis provident sunt. Voluptate in saepe atque et. Repellendus nemo saepe quasi hic. Enim qui mollitia minus et architecto.', 'Billing', 'Medium', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC440.tmp', '2025-02-27 11:30:23', '2025-03-26 10:29:07'),
(65, 167, 'Et nesciunt fugiat perspiciatis cupiditate non.', 'Libero dicta voluptas temporibus quibusdam. Et ea dignissimos reprehenderit unde aliquid qui dolore occaecati. Aspernatur qui ad consequatur assumenda. Quam nihil aspernatur impedit illo itaque nihil. Accusantium qui vitae ea consequuntur.', 'Technical', 'High', 'Resolved', NULL, '2025-03-13 00:24:23', '2025-03-26 10:29:07'),
(66, 170, 'Magnam tenetur doloribus assumenda aut facilis maxime soluta.', 'Quo tempora omnis quo officiis. Dolore mollitia commodi consequuntur maxime excepturi quia quia quod. Sed qui est beatae neque maiores.', 'Technical', 'High', 'Resolved', NULL, '2025-03-11 08:16:50', '2025-03-26 10:29:07'),
(67, 173, 'Sed esse blanditiis et maxime velit laudantium dolor.', 'Voluptatem qui et vel provident minima laboriosam quia. Nisi at ut et quod et eius. Sint modi reprehenderit et ut asperiores unde quia atque.', 'Technical', 'High', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC460.tmp', '2025-03-14 15:31:56', '2025-03-26 10:29:07'),
(68, 176, 'Ipsam eum sed aut sit excepturi culpa qui.', 'Amet quisquam veritatis porro vel voluptatem vitae. Similique eaque facilis modi iste dolores quo. Dolore ipsam quos dolorem tempora. Rem minima vero quis quia optio est ea.', 'Technical', 'Low', 'Resolved', NULL, '2025-03-14 15:34:28', '2025-03-26 10:29:07'),
(69, 179, 'Ab sed qui aut ipsam optio sequi accusantium placeat.', 'Consequatur mollitia voluptatem totam sapiente amet praesentium. Quibusdam eaque aliquam officiis eum enim quia officia ratione. Amet necessitatibus cumque soluta cupiditate.', 'Billing', 'Low', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC471.tmp', '2025-03-18 20:17:37', '2025-03-26 10:29:07'),
(70, 182, 'Ab atque commodi debitis tempora.', 'Non delectus a ullam laudantium. Numquam totam id ut quia vitae enim aut. Molestias distinctio est dignissimos. Commodi et qui quia.', 'General', 'High', 'Resolved', NULL, '2025-03-22 23:16:53', '2025-03-26 10:29:07'),
(71, 185, 'Omnis reiciendis qui libero autem provident consequatur.', 'Ab atque doloribus facilis fugiat aut doloribus. Dolores qui vel est.', 'General', 'High', 'Open', NULL, '2025-02-24 13:04:47', '2025-03-26 10:29:07'),
(72, 188, 'Vel facere culpa qui quibusdam a.', 'Itaque quod labore ut aut. Dignissimos nihil ut nihil ipsum animi molestiae tenetur. Laborum recusandae est autem.', 'Billing', 'Medium', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC4A1.tmp', '2025-03-13 11:26:56', '2025-03-26 10:29:07'),
(73, 191, 'Incidunt provident est magnam delectus.', 'Dolores cum cumque ab ad. Doloremque ut tempore sed omnis rerum qui quis. Enim quia quia libero earum.', 'General', 'Low', 'Resolved', NULL, '2025-03-16 05:51:34', '2025-03-26 10:29:07'),
(74, 194, 'Facere ratione accusamus id et laboriosam libero.', 'Non minus consequatur et magni. Consectetur ipsum exercitationem explicabo architecto a ut hic et. Illum odit sint corrupti error saepe exercitationem autem et. In voluptas ab odio qui repudiandae quae dolore.', 'General', 'High', 'In Progress', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC4B1.tmp', '2025-03-08 10:56:50', '2025-03-26 10:29:07'),
(75, 197, 'Placeat culpa ipsam vel perferendis.', 'Voluptatem odio recusandae vitae. Id pariatur nobis eveniet error. Debitis blanditiis omnis nesciunt quaerat fugit dolores eligendi.', 'Technical', 'Low', 'In Progress', NULL, '2025-02-25 17:25:11', '2025-03-26 10:29:07'),
(76, 200, 'A qui dolorem sed harum.', 'Nihil ut sapiente nobis esse qui voluptatem. Laudantium omnis modi nisi iure consequatur. Error aspernatur soluta asperiores aut.', 'Billing', 'High', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC4B2.tmp', '2025-03-04 06:11:24', '2025-03-26 10:29:07'),
(77, 203, 'Ut dolorem assumenda nemo est laudantium.', 'Vero occaecati reprehenderit ad iste nemo maxime sit. Aut et quisquam laudantium asperiores incidunt sit sed quis. Nesciunt id porro nulla cupiditate qui doloremque deserunt quo.', 'General', 'Low', 'Closed', NULL, '2025-03-02 20:13:27', '2025-03-26 10:29:07'),
(78, 206, 'Ipsam quibusdam consequatur quis distinctio omnis consequuntur vero.', 'Quaerat aperiam repellendus nihil iusto sit. Accusamus illo aut dolores amet ut illum. Earum quibusdam ipsam eos molestiae. Ullam corrupti error sapiente. Odit et vel deleniti.', 'General', 'Medium', 'Closed', NULL, '2025-03-18 02:48:22', '2025-03-26 10:29:07'),
(79, 209, 'Laborum omnis repellendus et voluptatum aspernatur alias aliquid similique.', 'Illo ut et eaque est. Aut corporis ipsam quaerat aliquid impedit eveniet. Tempora qui reiciendis voluptatem nemo suscipit.', 'Billing', 'High', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC4D3.tmp', '2025-03-16 18:42:13', '2025-03-26 10:29:07'),
(80, 212, 'Quia cumque temporibus similique voluptas ad rerum qui.', 'Rerum reiciendis ipsa rerum tenetur est. Suscipit mollitia molestiae maxime qui aut id. Ullam est asperiores ratione. In a sint delectus ex dignissimos sed sint.', 'Technical', 'Medium', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC4D4.tmp', '2025-03-11 07:38:01', '2025-03-26 10:29:07'),
(81, 215, 'Qui aperiam nihil ipsam architecto rem.', 'Sit optio expedita nesciunt aut totam. At quia magni possimus error reprehenderit. Dolorem ut quo cupiditate.', 'Billing', 'High', 'Open', NULL, '2025-03-25 11:00:43', '2025-03-26 10:29:07'),
(82, 218, 'Fugiat est vitae provident porro.', 'Fugiat doloremque tempore corporis eligendi dolorum at. Exercitationem recusandae dolorum nisi sit quod dolorem officia. Magni quis veniam impedit expedita aut.', 'General', 'Medium', 'Resolved', NULL, '2025-03-12 02:01:04', '2025-03-26 10:29:07'),
(83, 221, 'Voluptas voluptatem autem inventore et.', 'Quo fuga veritatis itaque laborum adipisci qui atque. Hic aut nihil ut.', 'Technical', 'Medium', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC4F4.tmp', '2025-03-13 17:06:54', '2025-03-26 10:29:07'),
(84, 224, 'Minima aliquid incidunt mollitia fugit assumenda consequatur adipisci natus.', 'Voluptas possimus nostrum vel voluptatem dolore dolores. Aperiam sed commodi eaque exercitationem commodi aut. Et dicta deleniti eligendi reprehenderit laudantium facilis sapiente dolorem.', 'Technical', 'Medium', 'Closed', NULL, '2025-03-01 08:03:51', '2025-03-26 10:29:07'),
(85, 227, 'Nulla molestiae eos nihil.', 'Aperiam sed natus voluptatum voluptatem tempore molestiae. Aspernatur asperiores sed dolorem temporibus. Animi consequatur provident sint molestias culpa qui sapiente. Dicta dolores et ea et.', 'General', 'Medium', 'In Progress', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC505.tmp', '2025-03-17 08:32:57', '2025-03-26 10:29:07'),
(86, 230, 'Quia perferendis neque consequuntur quas nesciunt.', 'Quia est sapiente dolores recusandae eum est occaecati numquam. Quia quidem id enim. Laborum nisi corrupti tempora quaerat reprehenderit.', 'Technical', 'Medium', 'Open', NULL, '2025-03-06 10:35:55', '2025-03-26 10:29:07'),
(87, 233, 'Et officiis quae et fugit qui ut veritatis.', 'Dignissimos dolores dolor est fuga vel laborum. Modi est dolores totam quia qui. Dolores quia id autem enim libero. Velit est harum rerum.', 'Billing', 'High', 'Closed', NULL, '2025-03-14 07:34:17', '2025-03-26 10:29:07'),
(88, 236, 'Et eaque aliquid alias soluta distinctio tempora.', 'Neque qui velit animi quasi tempora. Sit sapiente ab voluptatem laboriosam nihil commodi. Debitis molestiae repellat porro nostrum. Dolores non voluptatum suscipit voluptatem tempora inventore ipsum.', 'Technical', 'Medium', 'In Progress', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC525.tmp', '2025-03-17 17:19:48', '2025-03-26 10:29:07'),
(89, 239, 'Provident non molestias voluptatem quo.', 'Distinctio et dolore quibusdam et nemo voluptatum voluptatem. Omnis dolores quidem totam autem nesciunt incidunt. Occaecati in non aut porro dignissimos quasi.', 'General', 'High', 'Resolved', NULL, '2025-03-13 01:14:19', '2025-03-26 10:29:07'),
(90, 242, 'Est animi dolor sed repudiandae dolor sed sunt.', 'Velit aut quia expedita sed est quo sunt ut. Non ut illo aut fuga magnam. Amet facere sequi ab et eius laudantium occaecati.', 'Technical', 'High', 'Resolved', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC545.tmp', '2025-03-25 05:18:56', '2025-03-26 10:29:07'),
(91, 245, 'Quidem rerum minus ducimus quis ipsam voluptate.', 'Repellendus officia qui voluptatem iste iusto vitae. Velit excepturi est voluptate ut tempora.', 'Billing', 'Low', 'In Progress', NULL, '2025-03-05 01:42:12', '2025-03-26 10:29:07'),
(92, 248, 'Quis incidunt consequuntur vero minima.', 'Eum dolor doloremque repellendus ipsum consequuntur aliquam aspernatur. Qui ducimus vitae esse eos omnis sunt qui. Explicabo id commodi eum eaque ullam.', 'General', 'High', 'Resolved', NULL, '2025-03-03 05:12:05', '2025-03-26 10:29:07'),
(93, 251, 'Et quos quo dolor voluptatibus.', 'Cumque aspernatur quis atque beatae doloribus. Qui nulla alias sed voluptatem qui minima corporis. Illo consequatur non quia sit omnis. Veritatis assumenda atque non ab voluptatem. Dolorem id voluptates et dolor accusamus nemo eum.', 'General', 'Medium', 'Resolved', NULL, '2025-03-25 18:12:17', '2025-03-26 10:29:07'),
(94, 254, 'Temporibus aut officiis placeat architecto pariatur eius praesentium iste.', 'Pariatur totam omnis eum. Temporibus repellendus enim qui aut cumque dolores repellat. Corrupti consequatur omnis est rerum qui odio. Ex consequatur cumque illum suscipit.', 'Billing', 'Low', 'Resolved', NULL, '2025-03-14 22:04:25', '2025-03-26 10:29:07'),
(95, 257, 'Suscipit recusandae et cumque est asperiores dolor at.', 'Id perspiciatis repellendus et. Temporibus molestiae et vel dolores aliquam provident consequatur. Autem quas voluptatem aut vero laboriosam fugit. Quae laborum eveniet ullam est rem.', 'Technical', 'Medium', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC556.tmp', '2025-03-12 10:18:49', '2025-03-26 10:29:07'),
(96, 260, 'Nemo aut reprehenderit sed sit.', 'Nostrum quam voluptas eligendi dolorum. Perspiciatis porro aut dolor. Fugiat ducimus molestiae quae eum esse fugit. Ut omnis ipsam voluptatibus voluptatibus quos.', 'Billing', 'Medium', 'In Progress', NULL, '2025-03-10 06:57:37', '2025-03-26 10:29:08'),
(97, 263, 'Impedit quis illo rerum optio.', 'Qui voluptates voluptatibus sequi itaque. Officiis voluptatem libero ducimus expedita placeat et. Odit fuga mollitia quam est.', 'General', 'High', 'Closed', NULL, '2025-03-10 13:51:56', '2025-03-26 10:29:08'),
(98, 266, 'Omnis ipsa tempora eaque ipsum ut ea est.', 'Qui autem id illum dolorem quo sapiente. Enim esse voluptatum ipsa ipsum porro quia vel.', 'General', 'Medium', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC576.tmp', '2025-03-21 03:41:58', '2025-03-26 10:29:08'),
(99, 269, 'Temporibus velit autem consequatur qui corrupti.', 'Autem delectus aspernatur ipsa doloremque cupiditate eos et. Ipsum qui esse dolorem iste vitae. Quas blanditiis vero laborum.', 'Billing', 'High', 'In Progress', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC587.tmp', '2025-03-23 05:15:44', '2025-03-26 10:29:08'),
(100, 272, 'Veritatis qui error molestias laborum tempora distinctio.', 'Libero aspernatur laboriosam in omnis aut fuga. Sequi perspiciatis aut voluptatibus nemo nostrum. Provident deleniti ipsa harum exercitationem odio suscipit aut. In officiis rerum in sed nihil dolorem voluptas.', 'Billing', 'Medium', 'Closed', NULL, '2025-03-23 15:59:50', '2025-03-26 10:29:08'),
(101, 275, 'Dolorum exercitationem aut et non.', 'Perferendis quidem soluta accusantium sunt dignissimos quas ipsam. Officiis id aut ut quos voluptate. Voluptatem aspernatur animi quas officiis rerum dolorem odit. Nesciunt neque laudantium sunt autem consequatur dolorem voluptatem. Soluta odit mollitia ratione accusantium sit ipsam.', 'Billing', 'High', 'In Progress', NULL, '2025-03-08 23:16:37', '2025-03-26 10:29:08'),
(102, 278, 'Architecto et accusantium esse placeat iure quae nobis dolor.', 'Voluptas atque praesentium alias voluptas repudiandae ipsa at ut. Perferendis eos et animi optio accusantium commodi eius reprehenderit. Provident deserunt reiciendis beatae quo non assumenda. Qui iusto ullam sed voluptatem.', 'General', 'Medium', 'In Progress', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC597.tmp', '2025-03-17 13:34:38', '2025-03-26 10:29:08'),
(103, 281, 'Harum alias consequatur magni.', 'Culpa reiciendis quae quia numquam molestias consequuntur. Porro quae est ipsum voluptatem. In provident quam omnis voluptatem fugit et ut. Modi et numquam iusto praesentium qui dolores commodi.', 'Technical', 'Medium', 'Resolved', NULL, '2025-03-15 12:58:31', '2025-03-26 10:29:08'),
(104, 284, 'Molestiae provident in repellat dolores quis labore et.', 'Expedita aut et eveniet aliquid reiciendis quam nostrum facilis. Dolores eligendi error quod et autem. Pariatur optio et natus. Ut ut quia ea vitae pariatur minus labore. Sequi id eum reiciendis incidunt vel rerum mollitia tenetur.', 'Billing', 'Medium', 'Resolved', NULL, '2025-03-18 11:03:56', '2025-03-26 10:29:08'),
(105, 287, 'Voluptatem iste in deserunt ut quasi rerum.', 'Qui dolores eum non et sequi est dolores. Ea eveniet tempora non iste deleniti vel. Et sunt iste deleniti ipsa non repellendus aperiam. Saepe et consequatur sunt.', 'Technical', 'Low', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC5A8.tmp', '2025-03-12 02:05:45', '2025-03-26 10:29:08'),
(106, 290, 'Ut dolorum sed beatae consequatur.', 'Inventore animi molestias et eveniet et labore dolores. Eum quidem autem perferendis et qui. Dolorem asperiores ut sed qui. Aut quidem explicabo voluptate doloremque temporibus voluptatibus velit.', 'Billing', 'Low', 'In Progress', NULL, '2025-03-16 13:15:03', '2025-03-26 10:29:08'),
(107, 293, 'Consequuntur maiores beatae est ratione.', 'Architecto nihil autem delectus modi quos ea incidunt. Animi nihil asperiores placeat. Voluptatum est ullam magnam officia eum. Rerum magni eos quia a in iusto.', 'Billing', 'Low', 'Open', NULL, '2025-03-03 04:33:28', '2025-03-26 10:29:08'),
(108, 296, 'Modi voluptatem ea consectetur nam maiores.', 'Dicta dolores velit ab et rerum aspernatur. Necessitatibus sint ducimus quas voluptatibus voluptas. Ex natus sed et blanditiis fugit voluptas.', 'General', 'Medium', 'Closed', NULL, '2025-03-20 15:28:07', '2025-03-26 10:29:08'),
(109, 299, 'Libero mollitia ut quia.', 'Accusamus et odio enim. Consequuntur aut qui est magni ea. Iure fugiat cumque est error. Quia et sit veniam dolores magnam enim.', 'Technical', 'Medium', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC5C8.tmp', '2025-03-03 19:11:13', '2025-03-26 10:29:08'),
(110, 302, 'Amet quo culpa enim quis in accusantium.', 'Dolores est facere velit dolorum eum qui est. Similique soluta et sit laboriosam. Autem libero ipsum saepe est.', 'Billing', 'Low', 'Open', NULL, '2025-03-16 23:39:35', '2025-03-26 10:29:08'),
(111, 305, 'Eos eos cum nemo eius ab.', 'Facere omnis necessitatibus quas. Molestias exercitationem molestiae sed amet. Nihil placeat officia quam. Magnam vel rem autem quia dolore quo est.', 'General', 'Low', 'Open', NULL, '2025-03-20 08:30:34', '2025-03-26 10:29:08'),
(112, 308, 'Numquam ullam rerum aut.', 'Est dignissimos quia sit sint sed consequatur quia. Ab quia alias aut voluptas et qui. Minus est eligendi excepturi quisquam vero nihil incidunt. Earum aut veritatis nisi eum nisi officiis. Dolorum voluptatem corporis nostrum quod aut ipsum eum.', 'Billing', 'Low', 'Closed', NULL, '2025-03-10 16:29:58', '2025-03-26 10:29:08'),
(113, 311, 'Asperiores quas ducimus quo ipsa ut dolorem quasi voluptate.', 'Magni quas ut ut reiciendis explicabo a similique et. Debitis velit quo nostrum ut. Distinctio sunt voluptas id minima sint eveniet. Sint sit omnis mollitia atque distinctio a non ipsum. Accusamus ex ad in vitae amet.', 'Billing', 'Medium', 'Open', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC5F8.tmp', '2025-02-28 05:27:48', '2025-03-26 10:29:08'),
(114, 314, 'Id tempore id dolores temporibus consectetur qui est.', 'Qui inventore distinctio aut et. Omnis possimus quia pariatur qui beatae doloremque. Mollitia labore ullam eaque culpa.', 'General', 'High', 'Closed', NULL, '2025-02-25 23:53:09', '2025-03-26 10:29:08'),
(115, 317, 'Iure voluptatem veritatis nobis optio temporibus fuga eos impedit.', 'Veritatis et expedita alias illum numquam. Necessitatibus eveniet consequatur ut. Eligendi ullam odit quo adipisci ut aut amet. Velit nisi consequatur adipisci laboriosam laudantium.', 'Billing', 'Medium', 'Open', NULL, '2025-02-27 09:15:09', '2025-03-26 10:29:08'),
(116, 320, 'Qui omnis atque earum unde.', 'Voluptatem blanditiis sequi incidunt dolores velit. Ea non quaerat consequatur facere mollitia quis explicabo. Fuga animi earum distinctio.', 'Technical', 'Low', 'In Progress', NULL, '2025-03-21 09:14:32', '2025-03-26 10:29:08'),
(117, 323, 'Praesentium molestiae repellendus sed hic magnam deleniti occaecati.', 'Consequuntur veniam autem voluptas sed voluptatum minus nostrum sequi. Recusandae consequuntur dolores veniam quam. Quisquam tempora asperiores eum voluptate. Repellendus est voluptas neque ex consequatur quia sed.', 'Billing', 'High', 'Resolved', NULL, '2025-03-11 08:42:23', '2025-03-26 10:29:08'),
(118, 326, 'Iusto qui illum rem.', 'Reprehenderit ad perspiciatis consequuntur et placeat accusamus sit. Fugiat ut atque totam excepturi unde quisquam. Minima dolorum perspiciatis rerum dolor maiores.', 'General', 'Medium', 'Open', NULL, '2025-03-19 07:50:26', '2025-03-26 10:29:08'),
(119, 329, 'Eos et id quaerat eligendi suscipit quia aperiam est.', 'Soluta debitis odio accusamus earum unde. Rem voluptates repellat harum quia omnis maxime velit. In libero voluptas commodi et tempora. Autem totam fugiat voluptas.', 'Billing', 'Low', 'Closed', NULL, '2025-03-16 10:23:29', '2025-03-26 10:29:08'),
(120, 332, 'Accusamus dolor inventore tempora et.', 'Dolores quo itaque et exercitationem. Omnis nobis amet ut rerum quibusdam veritatis illum. Et id magnam vero distinctio. Eligendi quos reprehenderit optio quod.', 'Technical', 'Medium', 'Open', NULL, '2025-03-09 09:59:40', '2025-03-26 10:29:08'),
(121, 335, 'Earum cupiditate exercitationem non aut accusamus nihil dolores.', 'Molestiae expedita qui reiciendis ut nobis facilis consequatur. Beatae aperiam et illo dicta. Magnam provident alias voluptatibus quis ad sapiente eum doloribus.', 'Technical', 'High', 'Closed', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC637.tmp', '2025-03-04 13:00:01', '2025-03-26 10:29:08'),
(122, 338, 'Eaque repudiandae vitae eos ipsa.', 'Et voluptas sapiente doloribus quo omnis. Ut et perferendis ipsa est. Sit ut est quas repudiandae.', 'Technical', 'Low', 'Closed', NULL, '2025-03-04 23:31:45', '2025-03-26 10:29:08'),
(123, 341, 'Et et aut nisi omnis fuga earum sint.', 'Eius ipsa aliquam tempora quia itaque unde quia. Asperiores aliquam aut quos quis. Blanditiis error earum dolorem accusantium eveniet architecto voluptatibus. Sed reprehenderit ex inventore.', 'General', 'High', 'In Progress', NULL, '2025-03-24 14:34:38', '2025-03-26 10:29:08'),
(124, 344, 'Est porro aliquam consequatur facere ut.', 'Aperiam quidem rem qui aliquam. Consequatur tempore aliquam non natus doloremque culpa quia. Aut facilis qui non est.', 'Billing', 'High', 'Closed', NULL, '2025-03-15 23:05:09', '2025-03-26 10:29:08'),
(125, 347, 'Aliquam sed ut ut et.', 'Asperiores aliquam sed qui eos ut aut. Et repellendus eum sit. Numquam iste sed est quisquam et pariatur. Ratione sapiente aut soluta sint.', 'Billing', 'Low', 'Open', NULL, '2025-03-06 15:36:55', '2025-03-26 10:29:08'),
(126, 350, 'Et enim et voluptas eum.', 'Molestiae quos consequatur assumenda quaerat omnis esse distinctio. Minima voluptatem et et ratione.', 'Billing', 'Medium', 'In Progress', NULL, '2025-03-22 04:47:10', '2025-03-26 10:29:08'),
(127, 353, 'Perspiciatis expedita sunt eos.', 'Vero quasi et et placeat laboriosam. Natus odio autem cupiditate vitae rerum nostrum. Quo sint et laboriosam debitis officia. Velit est in dolor quia nihil in est.', 'General', 'Low', 'Closed', NULL, '2025-03-17 05:23:37', '2025-03-26 10:29:08'),
(128, 356, 'Voluptatem et qui laudantium ea voluptas ratione.', 'Natus voluptatem laudantium rerum illum. Quia veniam itaque minus eius sed qui.', 'Billing', 'High', 'Open', NULL, '2025-03-04 12:50:57', '2025-03-26 10:29:08'),
(129, 359, 'Error qui minima sed adipisci.', 'Laborum omnis autem ab libero nam id nobis deleniti. Sed aut odit modi ea veritatis qui. Sed quis a excepturi ea sequi consectetur eos. Dolor rerum est nulla corrupti suscipit qui.', 'General', 'Medium', 'In Progress', NULL, '2025-03-18 12:02:54', '2025-03-26 10:29:08'),
(130, 362, 'Aperiam perspiciatis exercitationem dicta assumenda.', 'Autem dolorem beatae maxime molestiae maiores. In optio provident eius veritatis vero. Eaque recusandae incidunt animi aut culpa.', 'Billing', 'Medium', 'Open', NULL, '2025-03-06 03:01:27', '2025-03-26 10:29:08'),
(131, 365, 'Enim alias voluptas assumenda ut repudiandae vel.', 'Ut blanditiis voluptatibus quis qui quia nesciunt. Quia odit animi in aut cumque odit. Magni ea saepe quas.', 'Technical', 'High', 'Closed', NULL, '2025-03-19 15:43:33', '2025-03-26 10:29:08'),
(132, 368, 'Aliquid perspiciatis repudiandae et nihil aut cum dolorem.', 'Omnis dolorem quis illum. Nam sed facilis animi occaecati nobis. Aut veritatis aut sed quibusdam et perferendis. Ut quis libero accusamus quia adipisci consequatur.', 'General', 'Medium', 'Resolved', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC687.tmp', '2025-03-23 15:13:02', '2025-03-26 10:29:08'),
(133, 371, 'Error doloremque ut magni sunt ut.', 'Voluptatem quae cumque qui saepe provident et. Labore ea totam ut voluptates.', 'General', 'Medium', 'Closed', NULL, '2025-03-12 05:48:04', '2025-03-26 10:29:08'),
(134, 374, 'Unde eligendi ut ullam quam molestias rerum quidem.', 'Fugiat voluptatem excepturi ullam sequi. Aut maiores sequi aut. Et quae perspiciatis expedita numquam. Rerum repellat officiis doloremque aspernatur dolorem nobis.', 'Billing', 'Medium', 'Resolved', NULL, '2025-03-13 18:53:00', '2025-03-26 10:29:08'),
(135, 377, 'Deserunt et vel dolores ut.', 'Molestiae sed similique voluptatibus quasi qui ducimus. Quia laudantium nobis nihil modi autem. Reprehenderit sit quaerat in excepturi commodi. Praesentium quaerat perferendis inventore dolores.', 'General', 'Low', 'Closed', NULL, '2025-03-11 05:04:22', '2025-03-26 10:29:08'),
(136, 380, 'Aspernatur esse accusantium deleniti velit pariatur nemo vitae consequatur.', 'Et saepe sequi non corporis esse placeat ullam vel. Ipsum sunt ut quo est. Odio earum qui enim asperiores labore consequuntur quis. Quia consequatur consectetur voluptatem ducimus. Aut vero aut hic tempora earum molestias dolorum.', 'Billing', 'Low', 'Resolved', NULL, '2025-03-11 11:59:06', '2025-03-26 10:29:08'),
(137, 383, 'Non vero officiis recusandae sed ex.', 'Veniam pariatur magni sunt quod id. Error sapiente laborum aut commodi culpa deserunt. Ab enim iure quia placeat. Provident tempora sit dolores voluptatibus cupiditate pariatur sunt.', 'Technical', 'High', 'Resolved', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC6B6.tmp', '2025-03-07 18:00:39', '2025-03-26 10:29:08'),
(138, 386, 'Ducimus id sit aut aut ipsum.', 'Perferendis placeat labore et totam eos esse. Soluta nihil qui earum reiciendis eveniet quidem sit corporis. Officia quia ut modi architecto pariatur ea qui.', 'General', 'High', 'Resolved', NULL, '2025-03-26 10:20:37', '2025-03-26 10:29:08'),
(139, 389, 'Atque et nihil hic illum.', 'Cupiditate molestiae ex molestias rerum atque deserunt tenetur aperiam. Iure inventore dolores occaecati qui sint molestiae qui. Consequatur commodi eveniet ut aut fugit fugit.', 'Billing', 'High', 'In Progress', 'C:\\Users\\Josep\\AppData\\Local\\Temp\\fakC6C7.tmp', '2025-03-24 15:25:00', '2025-03-26 10:29:08'),
(140, 392, 'Dolore et cum consequuntur velit ut voluptatum.', 'Omnis et assumenda voluptates occaecati vitae eum nulla. Qui tenetur laboriosam aspernatur soluta architecto.', 'Billing', 'Medium', 'Open', NULL, '2025-03-10 22:56:12', '2025-03-26 10:29:08'),
(141, 395, 'Similique qui et omnis sunt totam temporibus quaerat.', 'Vel deleniti ratione ducimus ad qui quia est. Nisi possimus eius quis quia dolor et. Sed cupiditate natus quibusdam et.', 'Billing', 'Low', 'Resolved', NULL, '2025-03-23 00:50:38', '2025-03-26 10:29:08'),
(142, 398, 'Esse quae est fuga autem.', 'Sunt sed nam est placeat. Reiciendis eveniet velit ut eos est voluptas. Possimus suscipit sunt sed. Quia consectetur consequatur non voluptas.', 'Technical', 'Low', 'Closed', NULL, '2025-03-05 18:28:13', '2025-03-26 10:29:08'),
(143, 401, 'Ex at nulla occaecati.', 'Vel veritatis ut nihil quae quidem alias et minima. Omnis maiores vitae autem corporis quidem ea ut. Id praesentium perferendis sit veritatis.', 'Billing', 'Low', 'Open', NULL, '2025-03-09 10:35:57', '2025-03-26 10:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','customer') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', NULL, 'admin', '$2y$12$FFg.CSMLtvMExc6vrkJyfOZVWXQLr/E9LW6ktKvFL7tqdljF76qta', NULL, '2025-03-26 04:10:51', '2025-03-26 04:10:51'),
(2, 'cust', 'cust@gmail.com', NULL, 'customer', '$2y$12$cthjsCyNzC8wvL6iNJQ6fOIgQmWM94IAkYwmRPiNz0cMo9oseyF2G', NULL, '2025-03-26 09:24:50', '2025-03-26 09:24:50'),
(20, 'Admin User', 'admin@example.com', NULL, 'admin', '$2y$12$zS4EVxd6Q0E99bAluwhRUetmZev2MJ7X7aO.jblL.j3FQfRFoNpma', NULL, '2025-03-26 10:29:06', '2025-03-26 10:29:06'),
(21, 'Xzavier Kassulke MD', 'herzog.bruce@example.org', '2025-03-26 10:29:06', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '2m4U7AXZd1', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(22, 'Zechariah Lockman', 'nwaelchi@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'oOeNiKW2lx', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(23, 'Katheryn Miller', 'sadye.christiansen@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '5WnxXP7j2X', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(24, 'Marley Vandervort', 'rritchie@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'fFZ9GRPZAA', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(25, 'Wyman Barton PhD', 'grady.mosciski@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'jcD0XCPYLe', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(26, 'Dina Johnson', 'cole.heather@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'H13rfrusHb', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(27, 'Chet Krajcik', 'christine.schmeler@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '2uBkFAtwYN', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(28, 'Willow Keebler', 'dasia82@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'QwjJf42nlG', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(29, 'Dr. Anthony Ferry MD', 'erwin75@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '5um7vdq4vh', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(30, 'Alvah Roob', 'chettinger@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'RyoSayXvGl', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(31, 'Lilla Dickinson', 'murphy.clementine@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'MnIsGOg4PZ', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(32, 'Kenneth Kautzer', 'stokes.lily@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'QSkDec2tAH', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(33, 'Mr. Theodore Nader Jr.', 'syble.kirlin@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'UKsVmtFJEv', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(34, 'Prof. Unique Parisian', 'lharvey@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Jhq75Zljw1', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(35, 'Tyrell Romaguera DVM', 'william35@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '6thQznJvdX', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(36, 'Daija Koepp III', 'jgrimes@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'BcnX3Vpcs8', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(37, 'Chanel Crist II', 'howe.frank@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'E2aTo770BO', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(38, 'Dr. Jillian Turcotte', 'morissette.rosendo@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'j410v6dz0k', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(39, 'Dannie Zemlak', 'hegmann.omari@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'uO7NFGviJs', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(40, 'Francesco Fadel', 'malachi.wehner@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Y0FZ5vRz00', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(41, 'Prof. Elwyn Wiegand V', 'macey23@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'MrGzk0vUIT', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(42, 'Abagail Gottlieb', 'astoltenberg@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'mqscvDNawm', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(43, 'Wyman Hermiston', 'kiarra50@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'tNlo7eSmG7', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(44, 'Dr. Randi Mayert', 'lgoodwin@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'jkMptKgluL', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(45, 'Prof. Kyleigh Rodriguez', 'dorris.okon@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'i9LLNRseeD', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(46, 'Austyn Jenkins', 'darrin53@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'TsJHsGEVER', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(47, 'Retha Kilback', 'senger.lenore@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'DmufJgMVjB', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(48, 'Paula Bogan', 'franecki.cristal@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Yqtsx9JPrW', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(49, 'Mr. Wilbert Flatley MD', 'azemlak@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'A7CTqOnJTd', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(50, 'Florine Ebert', 'ledner.tatum@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '8V6Kqu37tC', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(51, 'Edwin Beahan', 'bernice.gerlach@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'k5pAiHBueW', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(52, 'Dorothy Kuhic', 'afriesen@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'MntXZA7Lot', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(53, 'Genoveva Rice', 'sonya.adams@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'zDOdBirlUs', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(54, 'Tillman Kris', 'sidney03@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'WT9ZB3E9VN', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(55, 'Abigail Hayes', 'carmela44@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'erznLVdD6M', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(56, 'Kelvin Stanton', 'daisha35@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'VKvzU7wawE', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(57, 'Emma Hyatt I', 'kaleb.graham@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'pxKM102FzO', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(58, 'Prof. Garfield Osinski PhD', 'funk.braeden@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'dLktOGXRpz', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(59, 'Dusty Gutmann', 'yvonrueden@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'trTaUmczpI', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(60, 'Anastacio Farrell MD', 'phansen@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'yykFNTp1Vm', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(61, 'Lempi Hoppe', 'maxime70@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'D5TZvOl0Xt', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(62, 'Esperanza VonRueden', 'lester83@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '4pgYB5fw1H', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(63, 'Abby Abernathy DDS', 'kyleigh69@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'fn4Z9Vg2U8', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(64, 'Mossie Krajcik V', 'sschowalter@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'HqPRKxqlLH', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(65, 'Prof. Leo Bosco II', 'howard68@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'GnypIcbRn9', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(66, 'Mr. Jaylen Cartwright Jr.', 'wdickens@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'knMWUzFfQA', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(67, 'Autumn Raynor', 'kihn.jedidiah@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'eh4mv5ITjn', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(68, 'Alexa Crona', 'cecilia.gibson@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'fKT1RNTdIY', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(69, 'Kiana Koch', 'fabiola.herzog@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'mcADimxh68', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(70, 'Orlando Berge IV', 'jakubowski.gunner@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'xkSvomezX9', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(71, 'Dell Block', 'melvin58@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'TuDaT322OV', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(72, 'Austen McDermott', 'kunze.abagail@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'EEQpEIlFJ6', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(73, 'Prof. Marlen Crist IV', 'kovacek.francis@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'MJkcydToYz', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(74, 'Casey Miller', 'grayce83@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'bVOIEsHxFv', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(75, 'Roosevelt Wisoky DVM', 'khalid.waters@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'KGqkh3e3aU', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(76, 'Mr. Tod Howell V', 'deshawn01@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'qv8Kykjyes', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(77, 'Dr. Rory O\'Connell', 'camryn.kemmer@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 't6nnWSEjZB', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(78, 'Bradley O\'Keefe', 'ernestine36@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'RtnIFDOWlS', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(79, 'Donna Gulgowski V', 'willard77@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'uu4o1Giy2g', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(80, 'Angeline Langworth', 'hill.deja@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '5U9t215nwk', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(81, 'Amy Robel MD', 'alene38@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'WJWLUC9DyO', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(82, 'Cordell Kautzer PhD', 'sienna38@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'fT1ecnroPr', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(83, 'Annabelle Haley Sr.', 'rosario.ritchie@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'jumUdhve15', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(84, 'Keenan Hessel', 'yabbott@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'cVxztd0AT2', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(85, 'Otha Corwin', 'itremblay@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'uyaGZ68l1s', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(86, 'Evelyn Wilderman', 'sdibbert@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'CvSkgmCh0n', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(87, 'Kamille Wilkinson V', 'zackery08@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 's1aqKnd9hy', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(88, 'Sid Labadie', 'maynard.adams@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'GMc7aOJxDB', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(89, 'Kendra King', 'samantha15@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'vx8jmkgA8o', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(90, 'Mikayla Predovic', 'arden72@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '1eJcWBasKD', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(91, 'Jonathan Kshlerin', 'twillms@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'WIeTfbMyz0', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(92, 'Ms. Raphaelle Langworth IV', 'omari51@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'TP9WeoZDwU', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(93, 'Zaria Cremin', 'celestine10@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'QxdRKylCR7', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(94, 'Jon Balistreri', 'howell38@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'rIkl7spaXr', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(95, 'Khalid Gusikowski', 'letha54@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'VkgOeYTffz', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(96, 'Lavina Wiegand', 'alena.marks@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'VNtllDz6EQ', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(97, 'Lilian Stracke', 'ashley53@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'AWE1fx9PtZ', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(98, 'Chase Boyer IV', 'devonte.oconner@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'GrmboY7Kwe', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(99, 'Amya Glover', 'pietro22@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'FXBu7PpOW0', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(100, 'Owen Okuneva', 'obernhard@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'xt8srjVF01', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(101, 'Annamae Moore', 'kuhic.agustina@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '9VTlMM7yL9', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(102, 'Alexa Bogisich', 'pearline74@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'OIcorFCarM', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(103, 'Donna Wyman MD', 'leo.mertz@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'sBAbcmpSFG', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(104, 'Leopoldo Marquardt', 'ebert.pasquale@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'WmCfIVDUms', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(105, 'Miss Ernestine Morar DDS', 'mayra90@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'yPKz26y9BN', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(106, 'Zoie Grady', 'aron.schimmel@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'gikffmkY1m', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(107, 'Dr. Dianna Hyatt III', 'gideon.metz@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'XYtytxeCsr', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(108, 'Uriel Walter', 'cecelia23@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'c5jl1QuGQK', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(109, 'Elinore Lindgren', 'mccullough.jacques@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ZP1MzvxZu9', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(110, 'Taylor Grady', 'susanna.kling@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'FpxH2ZXzFF', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(111, 'Mya Murray', 'jayde.zulauf@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '6A5ubI52xb', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(112, 'Ken Koepp DVM', 'rkeebler@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'x7QUXlvv75', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(113, 'Thea Okuneva', 'hferry@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'qDFs4VlpKl', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(114, 'Prof. Alexandro Stark III', 'christophe.stiedemann@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Ruhx511Rb9', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(115, 'Lindsay Gleichner', 'vturcotte@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'SssUcMxsCx', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(116, 'Hayley Kuhn', 'krista73@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'CcIRohLvCt', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(117, 'Dr. Zachary Schmeler', 'brenden.corwin@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'XYgLJkmp58', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(118, 'Lenore Schultz', 'jalen04@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'uy7OOU4Tse', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(119, 'Rex Jast', 'mathew.gislason@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '9FqQK5F9eB', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(120, 'Nat Waelchi', 'robel.june@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'SXwJWijfJg', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(121, 'Franco Metz IV', 'colin.vonrueden@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'GSZlfh1ywn', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(122, 'Jedidiah Pfeffer', 'lulu.connelly@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'zor9A7LAZL', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(123, 'Luz Wisoky', 'brooke.hagenes@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '9nhjl9BSSf', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(124, 'Carol Lowe', 'nwalsh@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'afIpjsWllP', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(125, 'Miss Bert Towne', 'ladarius.reichel@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'vCrqjQShYB', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(126, 'Belle Rosenbaum', 'thomas51@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'p9N49xvwhc', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(127, 'Miss Sheila Glover', 'jacobs.marcellus@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '8lym7QFDGV', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(128, 'Carmella Hane DDS', 'roslyn90@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Xkmhii9MGo', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(129, 'Precious Harris', 'maye44@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'FcCoZpMUho', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(130, 'Pietro Ledner', 'lrodriguez@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '6CJtm6HzCm', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(131, 'Ceasar Hickle', 'lucio10@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'unc8gosCyj', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(132, 'August Steuber', 'myriam.ziemann@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Sc55q4VFg3', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(133, 'Imelda Schimmel', 'hickle.abdullah@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'WzDVsxt41I', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(134, 'Prof. Judah Langworth III', 'sunny.lemke@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'iSacuSBqR6', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(135, 'Michaela Kutch', 'bernadette89@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'zRDKhNDnE7', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(136, 'Norma Hoeger', 'nschroeder@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'pBX4r9tD74', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(137, 'Ayana Ruecker', 'vandervort.elisha@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ZsmLetvKd2', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(138, 'Chyna Bode', 'samir.kulas@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'PsZO1zxWVN', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(139, 'Linda Hansen II', 'mona.fritsch@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'XntiDlbVYt', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(140, 'Prof. Brielle Legros DDS', 'hhodkiewicz@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'BqgXGMX1Z3', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(141, 'Clarissa Stark', 'nrunte@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'h9E2iGt4ly', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(142, 'Reba D\'Amore', 'bettie.swaniawski@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'UBvQMDQVl2', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(143, 'Rashawn Mills V', 'erna.swift@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Bpo3j4Zj6k', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(144, 'Anabelle Reinger MD', 'emma13@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'qzbx3Qfryb', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(145, 'Chadrick Hirthe', 'sporer.kareem@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'YTgGTM6Rba', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(146, 'Mason Dare', 'beier.asia@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '9gNlqsKqGa', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(147, 'Dusty Welch', 'ubaldo.halvorson@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'j4IF02T4lH', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(148, 'Howell Hermiston', 'twunsch@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'UCGQxFNwdM', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(149, 'Ed Pacocha DDS', 'olen02@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'yo4rGb8eKm', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(150, 'Clint Bauch', 'jbrekke@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'aYofNiJL0p', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(151, 'Noemie Reynolds', 'iblanda@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '0IXFd0ZVg5', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(152, 'Santina Kihn', 'karson48@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'iO1GITgFdv', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(153, 'Alize Bartell', 'fstark@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ZCqzW9hqBh', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(154, 'Nathen Bechtelar', 'dylan.purdy@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'drZSHLwpEi', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(155, 'Alexane Stark', 'heather.fisher@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'WBJ4HKo5HZ', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(156, 'Amya Pfannerstill', 'rohan.henriette@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'kp2qxEZO4n', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(157, 'Gertrude Hamill', 'dustin.littel@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '0jIJ1mdXx2', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(158, 'Miss Amaya Becker', 'dominique.rath@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'H1EAibpRn3', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(159, 'Mary Nader', 'vokeefe@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '81gLxazhtZ', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(160, 'Prof. Georgiana Schneider Jr.', 'caden21@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ZIyPkXz1tQ', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(161, 'Henderson Kunze', 'garret.nitzsche@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'cR0eUXyOrB', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(162, 'Dolores Lubowitz', 'charles53@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'IyUAYPMIvG', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(163, 'Everardo Hermann DDS', 'finn.gerhold@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'FO8TmZIg2m', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(164, 'Fabian Flatley', 'akessler@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ZR2dqgC3te', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(165, 'Dr. Easton Keebler', 'jameson.fadel@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Vq8e3CiGIC', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(166, 'Mr. Sheridan Walker', 'deven80@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'hstiCgA00b', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(167, 'Roberto Strosin', 'powlowski.leann@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'LpORgR2JJX', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(168, 'Joanne Baumbach', 'solon.nicolas@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '2j6Y7vdJYo', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(169, 'Dr. Javier Nienow II', 'micheal38@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '64czAqwsr7', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(170, 'Myrtle Connelly', 'bjohns@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'MrdlBjiqgW', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(171, 'Reyes Donnelly', 'apollich@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'jti69gVWiW', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(172, 'Chloe Haag', 'alison.romaguera@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'NdfPtxlbnc', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(173, 'Korbin White', 'elmore13@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Ae0iPqclxO', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(174, 'Carrie Gerlach', 'carson.watsica@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'SJO4OKmk6K', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(175, 'Sunny Smith', 'lhettinger@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'quE4n7jCjD', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(176, 'Mr. Kiel Christiansen', 'sarah56@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'bIDEmYD6iz', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(177, 'Dr. Sydney Braun', 'jbailey@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '9TNJUtf8vW', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(178, 'Mr. Brain Williamson DDS', 'ublanda@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'HYsccxZRQi', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(179, 'Mr. Afton Turner', 'buddy01@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'dWhVJEDxwD', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(180, 'Westley Leffler', 'stamm.rhoda@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'VANIEjLYVW', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(181, 'Mrs. Lacy Grant', 'hoppe.jaren@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '4bTqtUdCUf', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(182, 'Korbin Champlin', 'jaskolski.breanna@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'UaG0G2YKXM', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(183, 'Maggie Schamberger', 'simonis.iva@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'TYPZNjZ7xt', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(184, 'Finn Bailey', 'audrey.crooks@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'CJBcpBkOa2', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(185, 'Malvina Pagac', 'gustave.dare@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'btlLCRUfil', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(186, 'Mrs. Nola Huel', 'dillan.turner@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'CiNt8qhzD4', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(187, 'Ms. Candice Schulist I', 'runte.penelope@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'SPZ3if5xwE', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(188, 'Dr. Anabelle Kilback MD', 'morissette.shea@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'CbJBFZOTEx', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(189, 'Elvie Kerluke IV', 'batz.daniela@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'x12ib0grrE', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(190, 'Brent O\'Hara', 'pschroeder@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'wdnn7PuiGf', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(191, 'Miss Polly Ullrich Jr.', 'arlie56@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'VvZ6LqfclP', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(192, 'Prof. Imogene Reilly II', 'easter.senger@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Ed1AXb8fX0', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(193, 'Roger Hammes', 'sheller@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'y1nS2Ob7VK', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(194, 'Ms. Lou Swift III', 'aprice@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'pEnYkIqskC', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(195, 'Miss Corene Daugherty DVM', 'khalid98@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'rlo8gVQBs6', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(196, 'Kamille Crist', 'gwintheiser@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'UTbGZ6av9Z', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(197, 'Sabryna Quitzon', 'rebecca50@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'OzmxNhcWuE', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(198, 'Emiliano Considine', 'claud31@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '61CK1ctGEm', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(199, 'Prof. Murl Terry', 'emmerich.jimmie@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'fABxUR3XmX', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(200, 'Mrs. Marquise Mante', 'margaretta.howell@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '27zIqPvBFX', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(201, 'Alford Hickle PhD', 'heaven.daniel@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '3ebWklhbLG', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(202, 'Mr. Dylan Homenick IV', 'jthompson@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '8Uyv7iR3ni', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(203, 'Mr. Ole Nolan', 'jaren78@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'eVDIf6XDVS', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(204, 'Dannie Cummings DVM', 'herman.leonard@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '6NWhq9TfcO', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(205, 'Kellie Mohr', 'sydney52@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'SURCnx5e5X', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(206, 'Ocie Oberbrunner', 'conn.annamae@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'nsUYA1pSHj', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(207, 'Tracy Ortiz', 'gabe64@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'zMSUSTfIaj', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(208, 'Carlo Mante', 'heathcote.justina@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'A9m05WMJ4u', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(209, 'Prof. Emmalee Gulgowski', 'ilind@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'kHkKS0LEto', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(210, 'Miss Alia Moen II', 'winston68@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'HDvyV8ZCvk', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(211, 'Dr. Ellsworth Barton MD', 'isaac.berge@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'nOTYxnfNGe', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(212, 'Ellie Johnston PhD', 'billy.schulist@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'vtA77TLwSV', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(213, 'Stewart Waelchi', 'wyatt.kohler@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'BkP3uIm7yb', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(214, 'Desmond Hyatt', 'sporer.salvador@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'GDNYH3MVaW', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(215, 'Dayton White', 'vonrueden.jayne@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'x5QEG37KZn', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(216, 'Declan Barton DDS', 'robel.trisha@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'nNQMB4LJAZ', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(217, 'Fermin Konopelski', 'sherman63@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'vSHAKWClMC', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(218, 'Miss Elinore Rice', 'johnathon.witting@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '3PRBBKlg2F', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(219, 'Prof. Dennis Stracke', 'lindsay.mann@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'WjVEjkXIyB', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(220, 'Prof. Elaina Monahan DDS', 'vernon56@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'A6TrySwFr2', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(221, 'Prof. Hugh Swift MD', 'abshire.isabel@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'oGmPkuNvcv', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(222, 'Alison Runte', 'frank50@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'DzJMmpkrSe', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(223, 'Anya VonRueden', 'rfriesen@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'C8QoAGrSQJ', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(224, 'Sandra Hirthe', 'dkonopelski@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'wzzmHOCEx8', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(225, 'Kolby Weber MD', 'eldon.wintheiser@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'R9NZmxWXYD', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(226, 'Jeff Gutmann', 'kpagac@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'xCZOZ9qKIt', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(227, 'Oliver Mann', 'williamson.melody@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'EMWG7A2AcJ', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(228, 'Obie Hane', 'jortiz@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'zAXRsiJypD', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(229, 'Zakary Schuppe', 'tanya05@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '91WSAzMpQI', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(230, 'Bridgette Miller', 'kautzer.zackery@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'uyRyFYHqx0', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(231, 'Rhianna Mohr', 'jadon01@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'JEIa6HyCSB', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(232, 'Gideon Ortiz', 'cronin.shaniya@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '9cRoAEDDzn', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(233, 'Ernesto Dietrich', 'barton.linnea@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'vP4LoISrLg', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(234, 'Sim Skiles', 'bdaugherty@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ajKq9DLyK2', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(235, 'Jackie Medhurst MD', 'spinka.kaitlin@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 't03YTe0wDr', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(236, 'Kathlyn Lindgren', 'plockman@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'jhKzwuQTLF', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(237, 'Johnson Hansen PhD', 'mya.greenfelder@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'rInY9fzhbV', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(238, 'Fernando Rolfson', 'hadams@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'kq07kJHV8Q', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(239, 'Mrs. Evie Bogan', 'trohan@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'cMBpNSPn2b', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(240, 'Manuela Bechtelar MD', 'zmckenzie@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'JzCJCOKT7v', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(241, 'Dr. Piper McClure', 'gabernathy@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '67oSe76mtG', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(242, 'Mrs. Nannie Wiegand DVM', 'sean.kris@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '4MRgis6dMn', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(243, 'Madisen Becker', 'jake25@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'bm6dVk1GnM', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(244, 'Mr. Jerome Nolan', 'woodrow.weimann@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ap3t8iiEpp', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(245, 'Jenifer Doyle MD', 'elta.christiansen@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '4USSvUXicn', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(246, 'Carter Pouros', 'hauck.kimberly@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ruUCETO2o9', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(247, 'Foster Zemlak', 'mariam.lehner@example.net', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'yUjv6ZXIIP', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(248, 'Mr. Henderson Aufderhar III', 'emmy27@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'H60vJkVLPk', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(249, 'Rusty Kiehn', 'pmoen@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'zx9GtT9Ziw', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(250, 'Kaya Braun', 'mitchel43@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'KsE36L0U2Q', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(251, 'Ms. Maci Hahn', 'dooley.sabrina@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '80mRwjSyjg', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(252, 'Syble Klocko', 'hessel.nora@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Opbrw81vhm', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(253, 'Cleo Orn', 'anderson.ahmad@example.com', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'HFaLqRvRuL', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(254, 'Claire Kautzer', 'hroberts@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Am8ITIClHR', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(255, 'Prof. Boris Collier PhD', 'britney46@example.org', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'JCCLIeJVW2', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(256, 'Sidney Morar', 'rosie05@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'D1tnyy9a1q', '2025-03-26 10:29:07', '2025-03-26 10:29:07');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(257, 'Dr. Rose Douglas MD', 'rhettinger@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ZbXK3Kz8Gk', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(258, 'Prof. Reid Gaylord IV', 'bryon.wiegand@example.net', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'VPeYZUs6XQ', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(259, 'Mr. Barry Turcotte', 'aracely03@example.org', '2025-03-26 10:29:07', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Al5vnNgvZ3', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(260, 'Cameron Kerluke', 'terry.sage@example.com', '2025-03-26 10:29:07', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'iBXgs3lMn0', '2025-03-26 10:29:07', '2025-03-26 10:29:07'),
(261, 'Zoey Gleichner DDS', 'kirlin.ervin@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ZB0nRjFVvU', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(262, 'Joesph Armstrong', 'marcelle.waters@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '0TEKVgoFGf', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(263, 'Merritt Treutel', 'jensen35@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'mY2nM5TwPA', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(264, 'Bobby White DDS', 'beatty.magnus@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'jctLYss9Xr', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(265, 'Evangeline Hermiston', 'bryon39@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '7Q9yjf3PID', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(266, 'Martin Dooley', 'chaim93@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'kSDf8I7qzg', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(267, 'Ms. Isobel Champlin Jr.', 'elna14@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'WGqJUSzx8s', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(268, 'Tad Thiel', 'annalise.stiedemann@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'VIsus58hab', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(269, 'Magdalen Roob Jr.', 'anne29@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ycTAUYwcFs', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(270, 'Robert Okuneva', 'mclaughlin.cade@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'XF00wnl74f', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(271, 'Tatum Collins II', 'tyrel.schmeler@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '3FcrbG1D6T', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(272, 'Mavis Dicki', 'yborer@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'k0VXNHhbab', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(273, 'Hazel Kunde I', 'nicholaus29@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '0ZPIUnDI2H', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(274, 'Magdalena Spinka', 'hudson.alford@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'aaZbWDGdlE', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(275, 'Baby Barrows', 'skye09@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ntgukVVQcB', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(276, 'Cleo Wiegand', 'nyah.grady@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '23ax9MMSaL', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(277, 'Johnpaul Fritsch', 'lilliana47@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'shR3AatWlW', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(278, 'Elton Kuhlman', 'runolfsdottir.amelia@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'OzfHljd6DO', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(279, 'Jamaal Monahan', 'hermiston.florence@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'NS5WVZRPp5', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(280, 'Prof. Clifford Brekke', 'tomasa.funk@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '7WbrOfvPak', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(281, 'Dr. Frank Jakubowski', 'stokes.candida@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '7u0RRDEldy', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(282, 'Larissa Batz', 'benjamin16@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'wkxavrNrkb', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(283, 'Prof. Andre Bailey DDS', 'idell.zieme@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'pRDn9GT4Ir', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(284, 'Arnulfo Stracke PhD', 'angeline.funk@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'zp4JCs3Kki', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(285, 'Antonina Hoppe', 'nwaelchi@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'oIOFx5X0TG', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(286, 'Yadira McDermott', 'dereck05@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'duEOwUDmG1', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(287, 'Stanley Rogahn', 'hpfannerstill@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Pi3DQQSbxq', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(288, 'Brown Will', 'opal79@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '0tMZ745acH', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(289, 'Brook Schmitt PhD', 'stroman.lonie@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '8XzsySGRCm', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(290, 'Oscar Erdman', 'cynthia.schaden@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'RfUyJqMRSp', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(291, 'Lorenza Pacocha', 'amosciski@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'doasTNUXR7', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(292, 'Idella Rice', 'adela39@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'XenAPTKscw', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(293, 'Dr. Olen Marquardt III', 'padberg.rylan@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'zowjpQeNHX', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(294, 'Ted Wolff', 'myrtie92@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '62Ik9d5yOO', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(295, 'Kallie Orn', 'juana85@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '5FUnI1IFgR', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(296, 'Maymie Altenwerth', 'katelyn04@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'rZbah8xTir', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(297, 'Mr. Rodrick Stehr PhD', 'ruth04@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'dgDEZP5kbk', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(298, 'Dr. Gavin Mosciski DDS', 'madaline.zulauf@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ABd2wcn9Xc', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(299, 'Pinkie Armstrong', 'megane66@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'sG7K2QrTBK', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(300, 'Mrs. Shyanne Morar', 'naomie.anderson@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'GwBxRr5pMJ', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(301, 'Dr. Elissa Vandervort', 'hbergnaum@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'tX3pg7f54H', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(302, 'Raul Kautzer', 'donald82@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'GinpMVVHGY', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(303, 'Joesph Hagenes', 'icartwright@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'wnCMhRXhOF', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(304, 'Merle Romaguera', 'bernhard56@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'QwGVouYJz9', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(305, 'Mr. Mckenna Hermiston', 'blick.genevieve@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'VF6TLuBSdZ', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(306, 'Mireya Nikolaus IV', 'deanna.batz@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ZZ6LZ4YnnF', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(307, 'Mr. Clement Ratke', 'brown.sienna@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'nxy0H3C0VG', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(308, 'Kaylee Quigley', 'rschneider@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'lLWmFBS4iV', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(309, 'Brigitte Schuppe', 'stephania.schaden@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'EjRhVcBerb', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(310, 'Seth McDermott', 'raynor.vincent@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'pDJ4Rr2Ss0', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(311, 'Rebekah Boyer Jr.', 'skye.kutch@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'C5YO1SU6WN', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(312, 'Davonte Runte III', 'mellie21@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'COQlD3pQDz', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(313, 'Mr. Henri Weimann V', 'parker83@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'fAwhAteU2k', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(314, 'Leslie O\'Conner', 'abner95@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'NJB464efF7', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(315, 'Nora Huels', 'brad.ryan@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'nQRgWxumsW', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(316, 'Alfreda Armstrong', 'hfarrell@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'r3bpMIhAhO', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(317, 'Dr. Kameron Toy', 'jaqueline94@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Aw3HfRIWQn', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(318, 'Mr. Guy Hill V', 'srippin@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'IiCvituzaw', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(319, 'Dorris Jacobson', 'yzulauf@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ZtEtlw0T5s', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(320, 'Damon Greenholt', 'rstamm@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'PYcwJqS5Es', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(321, 'Miss Demetris Price DVM', 'shea08@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'kXgW6F3aQO', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(322, 'Bernadette Kub', 'hagenes.adolfo@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'FnqBWfCmVT', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(323, 'Asha Kling', 'aquitzon@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'tN5MFSLbbU', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(324, 'Jamil Hahn', 'emil06@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'PkbDF6EEG6', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(325, 'Dr. Ramiro Kihn I', 'dkoch@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'eDevm1uAkF', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(326, 'Dr. Rozella Dicki', 'cayla90@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 't2LkJ5Wpbx', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(327, 'Dr. Bertrand Roob PhD', 'lane.labadie@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '4vwGqiuvHy', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(328, 'Annette Cummerata I', 'leopoldo14@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'YZ674HcoYE', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(329, 'Dr. Dasia Tillman', 'xdibbert@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'IXSiFmB8BD', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(330, 'Chance Ward', 'dhand@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'V46i6AvVkF', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(331, 'Nickolas McCullough', 'heathcote.phyllis@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'AdrilNarny', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(332, 'Lesly Padberg', 'turner.buddy@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'zAoqu3zuGJ', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(333, 'Leda Bernier', 'jonatan.johns@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ibyJOPbOU5', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(334, 'Alivia Pouros', 'bernhard.marge@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'k5mNACW3BW', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(335, 'Cale Heidenreich', 'morton53@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'tTjhgFwOJZ', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(336, 'Cyrus Purdy', 'bhahn@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'UB1syxwvHc', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(337, 'Monserrate Roob', 'qschowalter@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'tNDPcc9AQH', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(338, 'Gerald Gaylord', 'lucio65@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'pJ24sfORJO', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(339, 'Earnest Ortiz DVM', 'aditya.becker@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'eWSveIRyBo', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(340, 'Demetris Schaefer', 'florian.schneider@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '5W7EcSmulj', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(341, 'Mr. Eric Gorczany', 'stanton.alexandra@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'UJfnJ7JsK9', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(342, 'Hans Swift', 'erunolfsdottir@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'vT3k7wr6WW', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(343, 'Celia Brakus', 'jamie10@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'nglXd6uqSO', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(344, 'Dr. Adan Botsford', 'schimmel.maximillia@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'CPCJVMv70d', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(345, 'Norris Gerlach', 'lemke.bart@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '2LkHy1qP8I', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(346, 'Roma Wolf', 'dietrich.litzy@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '6tT4aD35xo', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(347, 'Kristina Padberg', 'qschinner@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'v2TDEG4mcR', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(348, 'Prof. Laurel Dibbert', 'mauer@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'yPR8j7sTB2', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(349, 'Prof. Lowell Hauck', 'lind.albertha@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'wUQbToxJXp', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(350, 'Camylle Berge', 'emie.kilback@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'fUewvbij9B', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(351, 'Claire Reichel DDS', 'pacocha.camila@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'KR1jDp2btW', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(352, 'Toni Cormier', 'tyrique21@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'BumQAHbGfM', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(353, 'Dr. Casper Harris', 'nwuckert@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'uVMaFgdsHc', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(354, 'Prof. John Deckow I', 'vicente98@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ztkG4dqY2V', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(355, 'Bernice Keebler II', 'goldner.jeremy@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '4xR1f7wc0q', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(356, 'Serena Runolfsdottir', 'spencer.betsy@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'aJTkLCQwSw', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(357, 'Sydnee Schuppe', 'devonte07@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Gd2UXDQHWa', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(358, 'Edison Barrows V', 'qschmitt@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '1oB4JuVeIg', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(359, 'Lura Bechtelar', 'robyn56@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Y2ysnvsrkd', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(360, 'Mrs. Agustina Miller', 'moshe.beahan@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ycYv1HZzv4', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(361, 'Gertrude Paucek', 'xrath@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'w8V8CHXmxm', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(362, 'Prof. Jayson Hoppe V', 'cassandra.kunde@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ZDo1eF32Dp', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(363, 'Giuseppe Kub', 'lavonne52@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'PyIZ8wIBdl', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(364, 'Mozell Pacocha', 'dicki.hannah@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ivDdTM1G07', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(365, 'Eula Hagenes Jr.', 'keyshawn31@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'XNQskqqTxF', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(366, 'Raquel Gutkowski', 'skuhlman@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '4m1t6hzCwz', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(367, 'Danial Bailey', 'brown.kassulke@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'hN8Q15nlKE', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(368, 'Kole Runolfsdottir', 'ulangosh@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'O21l392RFP', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(369, 'Rosemarie Moen', 'judah17@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'kHdsZu9Sk1', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(370, 'Prof. Jarret Pouros V', 'viva.lakin@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '22cqTNBFnS', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(371, 'Dr. Vladimir Wuckert', 'fbayer@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'Sw4pTQlvRh', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(372, 'Grayson Rodriguez', 'dejon.rippin@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'W1cxwvOAIt', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(373, 'Ashlynn Carroll II', 'rocio03@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'hNxlECSj9a', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(374, 'Bethany Blanda', 'lroberts@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'XPalB68Lfm', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(375, 'Kip Wolf', 'littel.rosalind@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'gCDzPJ2B9t', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(376, 'Mr. Al Jerde', 'robert33@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ng7xUkDkDh', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(377, 'Aletha Douglas', 'kelvin44@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'mSSnbizxGQ', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(378, 'Meagan Lindgren', 'kbeahan@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ShGtfUXT1X', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(379, 'Kathleen Mosciski', 'braxton.effertz@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 't1BTRIgkcS', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(380, 'Prof. Elias Wunsch V', 'leta61@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'rBIJI71F6J', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(381, 'Angus Roob', 'shayne82@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'uU0ldDFxU4', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(382, 'Halie Christiansen', 'fadams@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'CtJwoboEnx', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(383, 'Mrs. Edwina Mohr', 'hoyt77@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'co9R0TXrft', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(384, 'Mr. Gideon Kreiger', 'brekke.sheldon@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'NtGYkHHH7B', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(385, 'Arlo Corkery', 'white.mary@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'obqB8Sk3WS', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(386, 'Dr. Asia Williamson MD', 'elinore91@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'og0a1POqGA', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(387, 'Lance Hoeger', 'shane66@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'EF7KKJBpjp', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(388, 'Kianna Mann', 'kadin.nikolaus@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'NJZiX8wyhZ', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(389, 'Lottie Stoltenberg Jr.', 'sorn@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'rQjtMruTRk', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(390, 'Bernardo Durgan', 'smoore@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'zxyaPvApaK', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(391, 'Jessyca Kuhlman', 'summer95@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'V4MRh4q33I', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(392, 'Vernon Effertz', 'zcronin@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'QXlC8wHpxD', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(393, 'Mrs. Mellie Flatley', 'rory.walter@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'KcXRSRYSRO', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(394, 'Leone Hoeger', 'prohaska.alan@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'xTBL5nkPOh', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(395, 'Braeden Schimmel', 'doyle.cara@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'u2oNfEbJAV', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(396, 'Dr. Laverne Ryan DVM', 'wyatt72@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'JYCCFmf6MF', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(397, 'Miss Brooke Bartoletti Sr.', 'prohaska.beatrice@example.net', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'dqUmkQDg9k', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(398, 'Ila Boyle', 'daniel.tressie@example.com', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'DE5dMictPr', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(399, 'Charlotte Reichert', 'aidan.kunde@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'AVEy1pmVNv', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(400, 'Greyson Collins DVM', 'aidan.gislason@example.com', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', '5dyCPI4iuk', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(401, 'Dr. Stephon Monahan V', 'marquise73@example.net', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'UCHxdvtjp5', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(402, 'Nathanael Schmeler', 'jasen.zemlak@example.org', '2025-03-26 10:29:08', 'customer', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'ksVRXJR79Y', '2025-03-26 10:29:08', '2025-03-26 10:29:08'),
(403, 'Demarcus Howe V', 'eoconner@example.org', '2025-03-26 10:29:08', 'admin', '$2y$12$5k0wgZByfhnL3HGroKz49eJ1cnoRGW3i3b/rLlGlU.pTVESDh1Xo6', 'YkVrbYjfiq', '2025-03-26 10:29:08', '2025-03-26 10:29:08');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
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
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
