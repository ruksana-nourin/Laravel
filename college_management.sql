-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 19, 2026 at 02:03 AM
-- Server version: 8.0.46
-- PHP Version: 8.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_classes`
--

CREATE TABLE `academic_classes` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_classes`
--

INSERT INTO `academic_classes` (`id`, `course_id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 20, '2nd Year', 'CLS-493', 'Fuga accusantium et qui dolor deleniti numquam corrupti omnis et.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(2, 1, '1st Year', 'CLS-171', 'Possimus unde consequuntur optio nihil id reiciendis in optio.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(3, 5, '3rd Year', 'CLS-574', 'Perspiciatis non sit voluptas a rerum non velit repellendus impedit velit.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(4, 1, '4th Year', 'CLS-638', 'Veniam amet ducimus et et mollitia in itaque qui consectetur officia eum quae.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(5, 13, '2nd Year', 'CLS-453', 'Nulla laudantium modi dignissimos eum hic architecto voluptatibus earum consequatur.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(6, 2, '2nd Year', 'CLS-498', 'Reiciendis nam id ducimus quos modi numquam qui magnam numquam ea ipsam.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(7, 16, '3rd Year', 'CLS-103', 'Vel ad omnis impedit eos enim maiores.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(8, 14, '4th Year', 'CLS-478', 'Et reiciendis ipsum ea consequatur consequuntur facilis repellendus aut impedit voluptatem unde vel.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(9, 20, '3rd Year', 'CLS-153', 'Iusto cum laboriosam quidem ab nostrum nisi vero in neque aut velit velit.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(10, 1, '3rd Year', 'CLS-544', 'Est vero ea porro quo omnis velit repudiandae quibusdam.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(11, 18, '3rd Year', 'CLS-807', 'Corrupti et laboriosam nihil qui voluptatem minima at.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(12, 18, '1st Year', 'CLS-841', 'Deleniti tempore corrupti perferendis esse sit odit aliquid voluptates impedit voluptatem occaecati.', '2026-09-13 11:18:38', '2026-09-17 22:57:46'),
(13, 14, '4th Year', 'CLS-319', 'Culpa dignissimos dolor eum laboriosam quo reprehenderit quibusdam.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(14, 15, '1st Year', 'CLS-547', 'Nisi culpa consequatur aut veniam voluptatem incidunt illum vel.', '2026-09-13 11:18:38', '2026-09-17 23:00:29'),
(15, 14, '2nd Year', 'CLS-581', 'Distinctio est quas neque facilis sit dolor accusamus officia eveniet pariatur ipsum voluptate.', '2026-09-13 11:18:38', '2026-09-17 23:00:07'),
(16, 13, '1st Year', 'CLS-788', 'Esse laborum ex a impedit ipsam dicta soluta omnis dolor.', '2026-09-13 11:18:38', '2026-09-17 22:59:02'),
(18, 19, '3rd Year', 'CLS-252', 'Nisi laboriosam odio recusandae et vel aliquid consequatur est et inventore.', '2026-09-13 11:18:38', '2026-09-13 11:18:38'),
(19, 18, '3rd Year', 'CLS-875', 'Et adipisci similique corrupti commodi dicta nobis.', '2026-09-13 11:18:38', '2026-09-17 22:58:33'),
(20, 18, '2nd Year', 'CLS-339', 'Voluptatem iusto aut at est facilis qui enim.', '2026-09-13 11:18:38', '2026-09-17 22:58:13'),
(21, 18, '1 st year', 'CLS-840', NULL, '2026-09-13 12:18:45', '2026-09-17 22:57:57'),
(22, 17, '4th year', 'Cls- # 401', 'Et reiciendis omnis', '2026-09-13 12:19:39', '2026-09-17 23:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `academic_sessions`
--

CREATE TABLE `academic_sessions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_sessions`
--

INSERT INTO `academic_sessions` (`id`, `name`, `code`, `start_date`, `end_date`, `description`, `created_at`, `updated_at`) VALUES
(1, '2024-2025', '2024-25', '2024-01-01', '2025-12-31', 'Academic session 2024-2025', '2026-09-15 12:55:44', '2026-09-15 12:55:44'),
(2, '2025-2026', '2025-26', '2025-01-01', '2026-12-31', 'Academic session 2025-2026', '2026-09-15 12:55:44', '2026-09-15 12:55:44'),
(3, '2026-2027', '2026-27', '2026-01-01', '2027-12-31', 'Academic session 2026-2027', '2026-09-15 12:55:44', '2026-09-15 12:55:44'),
(4, '2027-2028', '2027-28', '2027-01-01', '2028-12-31', 'Academic session 2027-2028', '2026-09-15 12:55:44', '2026-09-15 12:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` bigint NOT NULL,
  `duration` tinyint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `code`, `department_id`, `duration`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sed sed et quia provident.', 'CRS-518', 4, 2, 'Beatae qui alias in provident voluptates voluptatibus aspernatur doloremque natus consequatur voluptates qui.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(2, 'Necessitatibus accusantium earum voluptatem.', 'CRS-276', 1, 2, 'Rem quam consequatur perspiciatis similique voluptatem sed quod aliquid voluptate voluptatem est tempora.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(3, 'Autem sapiente dolor est.', 'CRS-820', 6, 3, 'Numquam minus accusamus repudiandae et veritatis adipisci dignissimos soluta veniam ut.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(4, 'Error voluptatem numquam.', 'CRS-064', 7, 3, 'Quis aut maxime voluptatum alias nihil numquam.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(5, 'Fuga ipsa atque.', 'CRS-541', 1, 2, 'A sit et quia nostrum eum et ullam nesciunt et nesciunt.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(6, 'Tenetur non.', 'CRS-193', 6, 3, 'Quia sed quae a aut et quia earum qui voluptatibus possimus perferendis quia.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(7, 'Ad qui sit aut quo.', 'CRS-736', 5, 2, 'Vero dicta id voluptate non dicta tempora.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(8, 'Est sint nulla.', 'CRS-354', 1, 2, 'Id laboriosam et expedita explicabo quia voluptatum ut.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(9, 'Neque soluta eum.', 'CRS-229', 3, 4, 'Est et itaque modi et minus voluptatibus et.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(10, 'Eveniet recusandae sint adipisci.', 'CRS-959', 4, 2, 'Laborum exercitationem quod nulla ducimus quo in.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(11, 'Nemo velit provident.', 'CRS-261', 7, 2, 'Cupiditate atque minus voluptatem omnis magni qui rerum in.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(12, 'Sequi qui error quis.', 'CRS-981', 7, 4, 'Impedit similique aut nihil iure sunt fuga alias et in qui.', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(13, 'Diploma in Computer Science', 'CRS-899', 4, 4, 'Qui facere velit corporis quia ad reiciendis beatae vel incidunt ducimus eaque dolorum et.', '2026-09-13 10:07:04', '2026-09-17 22:50:03'),
(14, 'Bachelor of Arts in English', 'BA-ENG', 2, 3, 'Consectetur error quo eligendi saepe dignissimos voluptatem.', '2026-09-13 10:07:04', '2026-09-17 22:49:15'),
(15, 'Bachelor of Science in Mathematics', 'BSC-MAT', 3, 4, NULL, '2026-09-13 10:07:04', '2026-09-17 22:48:12'),
(16, 'Bachelor of Social Science in Economics', 'BSS-ECO', 6, 4, 'Nisi vel repellendus esse nisi facilis voluptates eum et est qui sint.', '2026-09-13 10:07:04', '2026-09-17 22:46:57'),
(17, 'Bachelor of Science in EEE', 'BSC-EEE', 5, 4, 'Expedita pariatur quia dolore quibusdam officia eaque ea mollitia rem.', '2026-09-13 10:07:04', '2026-09-17 22:45:17'),
(18, 'Bachelor of Business Administration', 'BBA', 8, 4, 'Qui quia officiis quia ullam est est qui sunt.', '2026-09-13 10:07:04', '2026-09-17 22:44:18'),
(19, 'Diploma in Computer Science', 'DIP-CSE', 4, 2, 'Optio placeat sit minus similique impedit eos provident quia eos.', '2026-09-13 10:07:04', '2026-09-17 22:43:31'),
(20, 'Bachelor of Science in CSE', 'BSC-CSE', 4, 4, 'Et necessitatibus tenetur voluptas rerum quasi neque quidem.', '2026-09-13 10:07:04', '2026-09-17 22:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Civil Engineering', 'CE', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(2, 'English', 'CSE', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(3, 'Mathematics', 'ENG', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(4, 'Computer Science', 'BBA', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(5, 'Electrical Engineering', 'MAT', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(6, 'Economics', 'PHY', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(7, 'Physics', 'EEE', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(8, 'Business Administration', 'ECO', '2026-09-13 10:07:04', '2026-09-13 10:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Commerce', 'ART', 'Quas voluptas tempore quidem facere doloremque autem fugit ducimus quas qui repellendus.', '2026-09-15 12:10:03', '2026-09-15 12:10:03'),
(2, 'Science', 'COM', 'Non sit cum blanditiis eos ipsa quo et.', '2026-09-15 12:10:04', '2026-09-15 12:10:04'),
(3, 'Arts', 'SCI', 'Ad laboriosam vitae minus odit et expedita sapiente vel dolores aut.', '2026-09-15 12:10:04', '2026-09-15 12:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_09_06_181442_create_roles_table', 1),
(5, '2026_09_12_181826_create_departments_table', 1),
(6, '2026_09_12_195604_create_courses_table', 1),
(7, '2026_09_13_170147_create_academic_classes_table', 2),
(8, '2026_09_14_132700_create_sections_table', 3),
(9, '2026_09_14_140320_add_unique_constraint_to_sections_table', 4),
(10, '2026_09_15_180047_create_groups_table', 5),
(11, '2026_09_15_184223_create_academic_sessions_table', 6),
(12, '2026_09_17_173450_create_semesters_table', 7),
(14, '2026_09_18_150254_create_student_statuses_table', 9),
(15, '2026_09_18_051018_create_students_table', 10);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(2, 'Teacher', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(3, 'Student', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(4, 'Accountant', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(5, 'Librarian', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(6, 'Staff', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(7, 'Admin', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(8, 'Teacher', '2026-09-13 11:16:21', '2026-09-13 11:16:21'),
(9, 'Student', '2026-09-13 11:16:21', '2026-09-13 11:16:21'),
(10, 'Accountant', '2026-09-13 11:16:21', '2026-09-13 11:16:21'),
(11, 'Librarian', '2026-09-13 11:16:21', '2026-09-13 11:16:21'),
(12, 'Staff', '2026-09-13 11:16:21', '2026-09-13 11:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `academic_class_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `academic_class_id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Section A', 'SEC-1-A', 'Section A of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(2, 1, 'Section B', 'SEC-1-B', 'Section B of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(3, 1, 'Section C', 'SEC-1-C', 'Section C of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(4, 2, 'Section A', 'SEC-2-A', 'Section A of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(5, 2, 'Section B', 'SEC-2-B', 'Section B of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(6, 2, 'Section C', 'SEC-2-C', 'Section C of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(7, 3, 'Section A', 'SEC-3-A', 'Section A of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(8, 3, 'Section B', 'SEC-3-B', 'Section B of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(9, 3, 'Section C', 'SEC-3-C', 'Section C of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(10, 4, 'Section A', 'SEC-4-A', 'Section A of 4th Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(11, 4, 'Section B', 'SEC-4-B', 'Section B of 4th Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(12, 4, 'Section C', 'SEC-4-C', 'Section C of 4th Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(13, 5, 'Section A', 'SEC-5-A', 'Section A of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(14, 5, 'Section B', 'SEC-5-B', 'Section B of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(15, 5, 'Section C', 'SEC-5-C', 'Section C of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(16, 6, 'Section A', 'SEC-6-A', 'Section A of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(17, 6, 'Section B', 'SEC-6-B', 'Section B of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(18, 6, 'Section C', 'SEC-6-C', 'Section C of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(19, 7, 'Section A', 'SEC-7-A', 'Section A of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(20, 7, 'Section B', 'SEC-7-B', 'Section B of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(21, 7, 'Section C', 'SEC-7-C', 'Section C of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(22, 8, 'Section A', 'SEC-8-A', 'Section A of 4th Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(23, 8, 'Section B', 'SEC-8-B', 'Section B of 4th Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(24, 8, 'Section C', 'SEC-8-C', 'Section C of 4th Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(25, 9, 'Section A', 'SEC-9-A', 'Section A of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(26, 9, 'Section B', 'SEC-9-B', 'Section B of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(27, 9, 'Section C', 'SEC-9-C', 'Section C of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(28, 10, 'Section A', 'SEC-10-A', 'Section A of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(29, 10, 'Section B', 'SEC-10-B', 'Section B of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(30, 10, 'Section C', 'SEC-10-C', 'Section C of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(31, 11, 'Section A', 'SEC-11-A', 'Section A of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(32, 11, 'Section B', 'SEC-11-B', 'Section B of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(33, 11, 'Section C', 'SEC-11-C', 'Section C of 3rd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(34, 12, 'Section A', 'SEC-12-A', 'Section A of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(35, 12, 'Section B', 'SEC-12-B', 'Section B of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(36, 12, 'Section C', 'SEC-12-C', 'Section C of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(37, 13, 'Section A', 'SEC-13-A', 'Section A of 4th Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(38, 13, 'Section B', 'SEC-13-B', 'Section B of 4th Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(39, 13, 'Section C', 'SEC-13-C', 'Section C of 4th Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(40, 14, 'Section A', 'SEC-14-A', 'Section A of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(41, 14, 'Section B', 'SEC-14-B', 'Section B of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(42, 14, 'Section C', 'SEC-14-C', 'Section C of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(43, 15, 'Section A', 'SEC-15-A', 'Section A of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(44, 15, 'Section B', 'SEC-15-B', 'Section B of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(45, 15, 'Section C', 'SEC-15-C', 'Section C of 2nd Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(46, 16, 'Section A', 'SEC-16-A', 'Section A of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(47, 16, 'Section B', 'SEC-16-B', 'Section B of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(48, 16, 'Section C', 'SEC-16-C', 'Section C of 1st Year', '2026-09-14 08:11:52', '2026-09-14 08:11:52'),
(49, 18, 'Section A', 'SEC-18-A', 'Section A of 3rd Year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(50, 18, 'Section B', 'SEC-18-B', 'Section B of 3rd Year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(51, 18, 'Section C', 'SEC-18-C', 'Section C of 3rd Year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(52, 19, 'Section A', 'SEC-19-A', 'Section A of 1st Year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(53, 19, 'Section B', 'SEC-19-B', 'Section B of 1st Year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(54, 19, 'Section C', 'SEC-19-C', 'Section C of 1st Year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(55, 20, 'Section A', 'SEC-20-A', 'Section A of 2nd Year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(56, 20, 'Section B', 'SEC-20-B', 'Section B of 2nd Year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(57, 20, 'Section C', 'SEC-20-C', 'Section C of 2nd Year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(58, 21, 'Section A', 'SEC-21-A', 'Section A of 1 st year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(60, 21, 'Section C', 'SEC-21-C', 'Section C of 1 st year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(61, 22, 'Section A', 'SEC-22-A', 'Section A of 4th year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(62, 22, 'Section B', 'SEC-22-B', 'Section B of 4th year', '2026-09-14 08:11:53', '2026-09-14 08:11:53'),
(64, 21, 'Section D', 'SEC - 22-D', NULL, '2026-09-14 09:59:22', '2026-09-14 10:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_session_id` bigint NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `name`, `academic_session_id`, `start_date`, `end_date`, `description`, `created_at`, `updated_at`) VALUES
(1, '1st Semester', 1, '2024-01-01', '2024-06-30', 'First semester of 2024-2025', '2026-09-17 12:11:49', '2026-09-17 12:11:49'),
(2, '2nd Semester', 1, '2024-07-01', '2024-12-31', 'Second semester of 2024-2025', '2026-09-17 12:11:49', '2026-09-17 12:11:49'),
(3, '1st Semester', 2, '2025-01-01', '2025-06-30', 'First semester of 2025-2026', '2026-09-17 12:11:49', '2026-09-17 12:11:49'),
(4, '2nd Semester', 2, '2025-07-01', '2025-12-31', 'Second semester of 2025-2026', '2026-09-17 12:11:49', '2026-09-17 12:11:49'),
(5, '1st Semester', 3, '2026-01-01', '2026-06-30', 'First semester of 2026-2027', '2026-09-17 12:11:49', '2026-09-17 12:11:49'),
(6, '2nd Semester', 3, '2026-07-01', '2026-12-31', 'Second semester of 2026-2027', '2026-09-17 12:11:49', '2026-09-17 12:11:49'),
(7, '1st Semester', 4, '2027-01-01', '2027-06-30', 'First semester of 2027-2028', '2026-09-17 12:11:49', '2026-09-17 12:11:49'),
(8, '2nd Semester', 4, '2027-07-01', '2027-12-31', 'Second semester of 2027-2028', '2026-09-17 12:11:49', '2026-09-17 12:11:49'),
(9, '1 st semester', 3, '2026-09-01', '2027-03-18', NULL, '2026-09-17 13:00:22', '2026-09-17 13:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('90DDoMgutdveMFcFeF4O9MVx1tRNfAoO0Hg2BlzE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiIzd1FxUkx3ZlhpbnhZYTRYRkZVa00zcEFVQTVPSE1zOWoybjNFVjJPIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2NvbGxlZ2UtbWFuYWdlbWVudC50ZXN0XC9zdHVkZW50c1wvY3JlYXRlIiwicm91dGUiOiJzdHVkZW50cy5jcmVhdGUifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789751984);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `department_id` bigint NOT NULL,
  `course_id` bigint NOT NULL,
  `academic_class_id` bigint NOT NULL,
  `section_id` bigint NOT NULL,
  `group_id` bigint DEFAULT NULL,
  `academic_session_id` bigint NOT NULL,
  `admission_date` date NOT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_status_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_statuses`
--

CREATE TABLE `student_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_statuses`
--

INSERT INTO `student_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Active', '2026-09-18 09:11:46', '2026-09-18 09:11:46'),
(2, 'Inactive', '2026-09-18 09:11:46', '2026-09-18 09:11:46'),
(3, 'Graduated', '2026-09-18 09:11:46', '2026-09-18 09:11:46'),
(4, 'Suspended', '2026-09-18 09:11:46', '2026-09-18 09:11:46'),
(5, 'Withdrawn', '2026-09-18 09:11:46', '2026-09-18 09:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Lazaro Cormier Jr.', 'idella78@example.org', 1, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'I0DpK900Rj', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(2, 'Liam Hand IV', 'hettinger.edgar@example.com', 3, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'uCYHOoJadj', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(3, 'Charley Bahringer', 'schuppe.dannie@example.com', 1, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'PA27NOWLCD', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(4, 'Keagan Bogisich', 'nicklaus.waters@example.com', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'BzhVcLM071', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(5, 'Ms. Deborah Auer V', 'aconsidine@example.net', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'nXXmrsRNqm', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(6, 'Rodolfo Graham', 'paucek.brown@example.net', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'W3ei88sHVu', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(7, 'Solon Cruickshank', 'lhirthe@example.org', 1, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'gsUmWi3p5O', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(8, 'Berneice Koch Jr.', 'becker.lorna@example.net', 3, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'j0O4CCp6w0', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(9, 'Dr. Adolphus Lebsack', 'adeline91@example.org', 3, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'nB5hwk2MwW', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(10, 'Irving Quitzon', 'makenna68@example.net', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'gv9LL29vXr', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(11, 'Jett Dibbert II', 'kiera.pacocha@example.org', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'Et5LcJYaMd', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(12, 'Miss Rylee Veum Sr.', 'cathrine08@example.org', 1, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'XqRJw0X9yo', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(13, 'Johnpaul Bernhard PhD', 'gladyce37@example.net', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'r8Yb9rkn5N', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(14, 'Pearl Borer', 'kayden.larson@example.net', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'XE9NhL5pSS', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(15, 'Dr. Vilma Von II', 'abailey@example.com', 1, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'kivToZ2lP7', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(16, 'Mr. Gaston Kub Jr.', 'wuckert.carson@example.com', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'VnfZkpPFyb', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(17, 'Johnny Smitham', 'julia.nienow@example.org', 3, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'ktnSN7GNr1', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(18, 'Dr. Gabrielle Wehner IV', 'boyle.coty@example.net', 3, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'LGiXbLDBb4', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(19, 'Ms. Roxanne Sawayn', 'ydicki@example.org', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'uw021zkTZS', '2026-09-13 10:07:03', '2026-09-13 10:07:03'),
(20, 'Guadalupe Lueilwitz', 'jany78@example.org', 1, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'LtQeThv5AJ', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(21, 'Antonette Rolfson', 'hansen.larue@example.org', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', '09rY3kYCac', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(22, 'Rocky Schaefer', 'obauch@example.com', 3, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'l8DbEKSMny', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(23, 'Giles Kiehn', 'flatley.emilie@example.net', 3, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'mHcdGYZgtH', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(24, 'Krista Lindgren', 'dane03@example.com', 3, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 't6wB3jSwNm', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(25, 'Jayda Gottlieb', 'gleason.lois@example.net', 1, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'M1dsEpp4ll', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(26, 'Mr. Jean Conroy', 'hfeil@example.org', 3, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'Ab3qzC66cE', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(27, 'Prof. Stephon Rodriguez PhD', 'sgislason@example.net', 1, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'QkeKKLeyXy', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(28, 'Effie Hudson', 'deanna.sipes@example.org', 2, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'RSi8RV4Ldj', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(29, 'Bridget Morar', 'murazik.laurianne@example.net', 1, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'Ut9WmAF9gu', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(30, 'Brian Wolf', 'uyundt@example.org', 3, '2026-09-13 10:07:03', '$2y$12$I1sFOe0dXBBO0T45MbR8FenTipYDFHhcUjegOA7rRSMsQzVGOTQPO', 'ATpIkLrgGn', '2026-09-13 10:07:04', '2026-09-13 10:07:04'),
(31, 'Guillermo Ankunding', 'cstiedemann@example.net', 2, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'Q7ZBDZ2GtK', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(32, 'Kamron Schultz', 'schumm.saul@example.com', 1, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'FUMuh4S0zh', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(33, 'Alphonso Batz', 'kyla.schroeder@example.com', 2, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', '6IC5rGQbSJ', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(34, 'Matt Haley', 'vivian26@example.net', 2, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'zH8L1QZAme', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(35, 'Tamara Hudson', 'pagac.theresia@example.net', 1, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'LEKDww38q5', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(36, 'Everett Toy', 'carley65@example.org', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'ndUQQgmdic', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(37, 'Emilio McKenzie DDS', 'sporer.leonie@example.com', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', '3bGEGHGgn0', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(38, 'Mr. Simeon Adams IV', 'wconn@example.net', 1, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'LOc5eCIQpX', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(39, 'Prof. Shawn Crist', 'tatyana.hand@example.net', 2, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', '3jLzJXibdZ', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(40, 'Mrs. Kathlyn Paucek', 'raynor.marilyne@example.org', 2, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'YYQ3yd7d4N', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(41, 'Emma Huel Sr.', 'rodriguez.ines@example.com', 2, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'KHSYoQUAmd', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(42, 'Letha Kohler', 'estella69@example.net', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'qiGNtlB6Yz', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(43, 'Constance D\'Amore', 'jdavis@example.com', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'KtbZJXABED', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(44, 'Emilia Huel II', 'macejkovic.van@example.org', 1, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'brr3Sg0nOv', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(45, 'Norene Weber III', 'ophelia.monahan@example.org', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'lkyrDkhisR', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(46, 'Estevan Harris', 'swaniawski.skylar@example.net', 1, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'AMPysTFejA', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(47, 'Rhea Hagenes', 'queenie.doyle@example.net', 1, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'HQLVEFKw9C', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(48, 'Ms. Hortense Cassin II', 'dquigley@example.net', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'HT42rE3ZVS', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(49, 'Lawson Reichel', 'stiedemann.desmond@example.org', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'PrXnLHL1yb', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(50, 'Rahul Brakus', 'fcummerata@example.net', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'J1eq6dDmLZ', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(51, 'Dusty Johnston', 'mcdermott.kenna@example.com', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'OkwMy0C6Yj', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(52, 'Prof. Marcus Auer III', 'alexander.kirlin@example.net', 2, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'veLF7jq6vJ', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(53, 'Breanne Keebler PhD', 'umraz@example.com', 1, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', '1KMGfGcbx6', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(54, 'Gerardo Wintheiser', 'hgusikowski@example.org', 1, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'mRhCwSaMYu', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(55, 'Dr. Erich Beahan III', 'francesco43@example.net', 2, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'Eqk8con5QF', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(56, 'Juvenal Daniel', 'brannon.harris@example.com', 2, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'oD4hqLENxz', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(57, 'Jayne Harris PhD', 'dsteuber@example.net', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', '35Dg149Le3', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(58, 'Theron Quigley', 'schultz.taylor@example.com', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'g0Mlo5kxUl', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(59, 'Lowell Roberts', 'mleannon@example.net', 3, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'DwkEilYAeN', '2026-09-13 11:16:20', '2026-09-13 11:16:20'),
(60, 'Efren Hammes MD', 'xdach@example.org', 1, '2026-09-13 11:16:20', '$2y$12$2za6hQCJuHuM/gK6q8Epuu0snNalBXNdj0KSZXk9oraTc340uH8mW', 'G75UH4YOJ0', '2026-09-13 11:16:20', '2026-09-13 11:16:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_classes`
--
ALTER TABLE `academic_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `academic_classes_code_unique` (`code`);

--
-- Indexes for table `academic_sessions`
--
ALTER TABLE `academic_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `academic_sessions_name_unique` (`name`),
  ADD UNIQUE KEY `academic_sessions_code_unique` (`code`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_code_unique` (`code`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`),
  ADD UNIQUE KEY `departments_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`),
  ADD UNIQUE KEY `groups_code_unique` (`code`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_academic_class_name_unique` (`academic_class_id`,`name`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `semesters_session_name_unique` (`academic_session_id`,`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_student_id_unique` (`student_id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `student_statuses`
--
ALTER TABLE `student_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_statuses_name_unique` (`name`);

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
-- AUTO_INCREMENT for table `academic_classes`
--
ALTER TABLE `academic_classes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `academic_sessions`
--
ALTER TABLE `academic_sessions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_statuses`
--
ALTER TABLE `student_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
