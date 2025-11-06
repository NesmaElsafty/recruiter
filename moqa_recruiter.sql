-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2025 at 11:23 AM
-- Server version: 10.11.13-MariaDB-ubu2204-log
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moqa_recruiter`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `title`, `description`, `user_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '2', 1, '2025-10-18 11:49:55', '2025-10-18 14:54:47'),
(2, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '4', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(3, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '8', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(4, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '2', 1, '2025-10-18 11:49:55', '2025-10-18 14:56:18'),
(5, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '3', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(6, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '4', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(7, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '5', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(8, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '7', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(9, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '8', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(10, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '9', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(11, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '10', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(12, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '11', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(13, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '12', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(14, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '13', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(15, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '14', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(16, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '15', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(17, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '16', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(18, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '17', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(19, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '18', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(20, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '19', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(21, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '20', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(22, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '21', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(23, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '22', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(24, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '23', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(25, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '24', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(26, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '25', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(27, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '26', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(28, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '27', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(29, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '28', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(30, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '29', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(31, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '30', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(32, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '31', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(33, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '32', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(34, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '33', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(35, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '34', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(36, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '35', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(37, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '36', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(38, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '37', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(39, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '38', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(40, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '41', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(41, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '43', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(42, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '45', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(43, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '47', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(44, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '48', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(45, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '49', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(46, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '50', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(47, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '51', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(48, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '52', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(49, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '53', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(50, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '54', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(51, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '55', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(52, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '57', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(53, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '58', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(54, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '59', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(55, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '60', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(56, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '61', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(57, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '62', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(58, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '63', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(59, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '65', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(60, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '67', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(61, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '69', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(62, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '70', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(63, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '71', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(64, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '72', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(65, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '73', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(66, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '76', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(67, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '78', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(68, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '79', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(69, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '81', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(70, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '83', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(71, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '84', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(72, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '85', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(73, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '91', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(74, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '92', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(75, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '94', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(76, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '96', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(77, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '97', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(78, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '98', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(79, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '99', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(80, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '100', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(81, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '101', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(82, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '102', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(83, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '104', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(84, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '106', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(85, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '107', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(86, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '109', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(87, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '110', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(88, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '112', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(89, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '113', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(90, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '114', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(91, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '115', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(92, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '116', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(93, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '117', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(94, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '118', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(95, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '119', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(96, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '120', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(97, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '123', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(98, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '124', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(99, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '126', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(100, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '128', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(101, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '129', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(102, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '132', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(103, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '133', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(104, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '137', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(105, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '138', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(106, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '139', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(107, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '140', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(108, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '142', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(109, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '144', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(110, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '145', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(111, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '146', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(112, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '147', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(113, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '149', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(114, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '150', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(115, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '151', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(116, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '152', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(117, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '153', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(118, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '154', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(119, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '155', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(120, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '158', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(121, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '159', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(122, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '160', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(123, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '161', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(124, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '162', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(125, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '163', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(126, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '166', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(127, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '168', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(128, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '169', 0, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(129, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '1', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(130, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '6', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(131, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '1', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(132, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '6', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(133, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '39', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(134, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '40', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(135, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '42', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(136, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '44', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(137, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '46', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(138, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '56', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(139, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '64', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(140, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '66', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(141, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '68', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(142, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '74', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(143, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '75', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(144, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '77', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(145, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '80', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(146, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '82', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(147, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '86', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(148, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '87', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(149, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '88', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(150, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '89', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(151, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '90', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(152, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '93', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(153, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '95', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(154, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '103', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(155, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '105', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(156, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '108', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(157, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '111', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(158, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '121', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(159, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '122', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(160, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '125', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(161, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '127', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(162, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '130', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(163, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '131', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(164, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '134', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(165, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '135', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(166, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '136', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(167, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '141', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(168, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '143', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(169, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '148', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(170, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '156', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(171, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '157', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(172, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '164', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(173, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '165', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(174, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '167', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(175, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '170', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(176, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', '172', 0, '2025-10-29 12:13:00', '2025-10-29 12:13:00'),
(177, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '1', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(178, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '6', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(179, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '39', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(180, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '40', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(181, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '42', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(182, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '44', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(183, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '46', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(184, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '56', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(185, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '64', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(186, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '66', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(187, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '68', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(188, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '74', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(189, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '75', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(190, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '77', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(191, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '80', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(192, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '82', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(193, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '86', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(194, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '87', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(195, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '88', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(196, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '89', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(197, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '90', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(198, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '93', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(199, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '95', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(200, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '103', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(201, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '105', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(202, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '108', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(203, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '111', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(204, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '4', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(205, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '8', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(206, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '9', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(207, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '10', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(208, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '11', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(209, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '12', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(210, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '13', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(211, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '14', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(212, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '15', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(213, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '16', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(214, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '17', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(215, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '18', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(216, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '19', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(217, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '20', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(218, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '21', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(219, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '22', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(220, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '23', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(221, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '24', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(222, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '25', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(223, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '26', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(224, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '27', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(225, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '28', 0, '2025-10-29 13:21:31', '2025-10-29 13:21:31'),
(226, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '1', 0, '2025-10-29 13:22:20', '2025-10-29 13:22:20'),
(227, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '6', 0, '2025-10-29 13:22:20', '2025-10-29 13:22:20'),
(228, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '7', 0, '2025-10-29 13:22:20', '2025-10-29 13:22:20'),
(229, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '30', 0, '2025-10-29 13:22:20', '2025-10-29 13:22:20'),
(230, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '129', 0, '2025-10-29 13:22:20', '2025-10-29 13:22:20'),
(231, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '133', 0, '2025-10-29 13:22:20', '2025-10-29 13:22:20'),
(232, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '139', 0, '2025-10-29 13:22:20', '2025-10-29 13:22:20'),
(233, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', '176', 0, '2025-10-29 13:22:20', '2025-10-29 13:22:20');

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
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_en`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'Riyadh', 'الرياض', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(2, 'Jeddah', 'جدة', '2025-10-15 09:40:39', '2025-10-27 07:40:12'),
(3, 'Mecca', 'مكة المكرمة', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(4, 'Medina', 'المدينة المنورة', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(5, 'Dammam', 'الدمام', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(6, 'Khobar', 'الخبر', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(7, 'Dhahran', 'الظهران', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(8, 'Taif', 'الطائف', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(9, 'Buraidah', 'بريدة', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(10, 'Tabuk', 'تبوك', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(11, 'Wymanstad', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(12, 'East Torrance', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(13, 'Casperhaven', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(14, 'Port Citlallistad', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(15, 'Staceymouth', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(16, 'Jovanport', 'شرم الشيخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(17, 'Lake Kathlynborough', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(18, 'West Adrian', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(19, 'Lake Sim', 'الإسكندرية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(20, 'South Natashachester', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(21, 'Dibbertmouth', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(22, 'Wisozkburgh', 'دهب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(23, 'Willmsland', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(24, 'Presleymouth', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(25, 'Port Soniaberg', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(26, 'Danielport', 'القاهرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(27, 'South Oswaldshire', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(28, 'East Mathiasburgh', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(29, 'Port Presleymouth', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(30, 'Wuckertburgh', 'شرم الشيخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(31, 'South Savanna', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(32, 'Port Katelinside', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(33, 'East Abraham', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(34, 'East Dennis', 'دهب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(35, 'West Wanda', 'القاهرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(36, 'Port Lessiefort', 'الإسكندرية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(37, 'Colefurt', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(38, 'Heidistad', 'الإسكندرية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(39, 'New Leola', 'شرم الشيخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(40, 'Jamarport', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(41, 'Hermistonville', 'القاهرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(42, 'Kshlerinville', 'القاهرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(43, 'Nienowburgh', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(44, 'Scottieborough', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(45, 'Predovicland', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(46, 'Lake Emmet', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(47, 'Marcoton', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(48, 'East Eunicetown', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(49, 'Solonmouth', 'دهب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(50, 'Port Soledadhaven', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(51, 'South Amaliaville', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(52, 'West Itzel', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(53, 'Sauerborough', 'شرم الشيخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(54, 'New Hanna', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(55, 'North Alyssonton', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(56, 'New Kayleigh', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(57, 'Rosiehaven', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(58, 'Lake Florence', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(59, 'East Clair', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(60, 'Jordaneport', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(61, 'Lake Esmeralda', 'دهب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(62, 'West Jaceychester', 'دهب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(63, 'Schneiderchester', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(64, 'Ismaelmouth', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(65, 'Starkfurt', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(66, 'Miafort', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(67, 'Lake Shanialand', 'دهب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(68, 'Considinefort', 'الإسكندرية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(69, 'Sawaynburgh', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(70, 'Port Alysonside', 'دهب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(71, 'New Kaylahtown', 'القاهرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(72, 'West Kenyattaborough', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(73, 'Welchchester', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(74, 'Kerlukestad', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(75, 'West Neil', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(76, 'Paulside', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(77, 'West Lacyshire', 'القاهرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(78, 'North Antoniofort', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(79, 'Reillymouth', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(80, 'Lake Ardith', 'الإسكندرية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(81, 'Burleyton', 'القاهرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(82, 'West Nella', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(83, 'New Shaniya', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(84, 'South Sid', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(85, 'New Estebanbury', 'دهب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(86, 'Nelsonmouth', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(87, 'East Reynold', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(88, 'Desireemouth', 'شرم الشيخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(89, 'Autumnshire', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(90, 'Gleichnershire', 'شرم الشيخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(91, 'O\'Keefemouth', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(92, 'New Earlburgh', 'الإسكندرية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(93, 'Camrenborough', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(94, 'West Carmelomouth', 'دهب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(95, 'Bauchberg', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(96, 'South Kristastad', 'شرم الشيخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(97, 'North Madysontown', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(98, 'Linaburgh', 'الإسكندرية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(99, 'South Jessika', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(100, 'New Zion', 'القاهرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(101, 'Chloeton', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(102, 'South Glendaburgh', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(103, 'Robertohaven', 'الإسكندرية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(104, 'Nolahaven', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(105, 'West Carson', 'الإسكندرية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(106, 'Ethelynshire', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(107, 'East Meagan', 'شرم الشيخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(108, 'Shieldsport', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(109, 'Violettestad', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(110, 'Katrineview', 'دهب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(111, 'West Kaileyburgh', 'القاهرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(112, 'West Anaisbury', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(113, 'Gialand', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(114, 'Brakusland', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(115, 'New Melissaview', 'شرم الشيخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(116, 'DuBuquebury', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(117, 'Amybury', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(118, 'Wittingview', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(119, 'Mayertborough', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(120, 'Torphyland', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(121, 'Lefflermouth', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(122, 'Lindgrenmouth', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(123, 'Rippinview', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(124, 'Port Dimitri', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(125, 'Abernathyhaven', 'أسوان', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(126, 'Wizamouth', 'الغردقة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(127, 'Pietroshire', 'مرسى علم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(128, 'Jacobsonmouth', 'الإسكندرية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(129, 'Veummouth', 'الأقصر', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(130, 'Bernhardfort', 'القاهرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(131, 'Sabrynaland', 'الجيزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(132, 'Lake Kathryn', 'طابا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(133, 'Wandaborough', 'طابا', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(134, 'Bauchport', 'الجيزة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(135, 'Port Alessandro', 'الإسكندرية', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(136, 'New Hassanview', 'شرم الشيخ', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(137, 'Faymouth', 'شرم الشيخ', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(138, 'Nathanielville', 'شرم الشيخ', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(139, 'Lake Jayfort', 'الجيزة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(140, 'Harberstad', 'الغردقة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(141, 'Rohanview', 'القاهرة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(142, 'Abernathyshire', 'الأقصر', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(143, 'Shanychester', 'الأقصر', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(144, 'Maxineview', 'الأقصر', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(145, 'Baileyport', 'الإسكندرية', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(146, 'Arleneshire', 'أسوان', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(147, 'West Kristoffer', 'الغردقة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(148, 'New Stephan', 'الغردقة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(149, 'Kathrynfurt', 'أسوان', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(150, 'Lake Shirleyborough', 'مرسى علم', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(151, 'Port Maximusfort', 'الجيزة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(152, 'Kelsiefurt', 'شرم الشيخ', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(153, 'Bayerchester', 'شرم الشيخ', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(154, 'Lake Lyda', 'الجيزة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(155, 'South Colton', 'القاهرة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(156, 'East Josefaland', 'الجيزة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(157, 'Adalbertoburgh', 'طابا', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(158, 'Port Lamont', 'الجيزة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(159, 'Bernhardbury', 'القاهرة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(160, 'East Bill', 'الأقصر', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(161, 'West Mortimer', 'طابا', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(162, 'Luettgenfort', 'الأقصر', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(163, 'Kovacekchester', 'شرم الشيخ', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(164, 'South Karson', 'القاهرة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(165, 'New Karlieshire', 'الجيزة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(166, 'North Petraborough', 'طابا', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(167, 'Rodrigueztown', 'القاهرة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(168, 'Lubowitzview', 'أسوان', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(169, 'Riceton', 'القاهرة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(170, 'North Cortneyhaven', 'شرم الشيخ', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(171, 'Reynoldsstad', 'الغردقة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(172, 'Loraton', 'أسوان', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(173, 'Ivamouth', 'شرم الشيخ', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(174, 'Coleview', 'الأقصر', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(175, 'East Caden', 'الجيزة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(176, 'Stehrton', 'الإسكندرية', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(177, 'Octaviashire', 'الجيزة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(178, 'South Florencio', 'شرم الشيخ', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(179, 'Pacochafurt', 'الغردقة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(180, 'Koelpintown', 'طابا', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(181, 'Jessystad', 'الأقصر', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(182, 'New Toby', 'شرم الشيخ', '2025-10-15 09:40:41', '2025-10-15 09:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `address`, `phone`, `email`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'الرياض، المملكة العربية السعودية - حي النرجس، شارع الملك فهد، مبنى رقم 123', '966123456789', 'info@recruiter.com', '\'© 2025 Recruiter Platform. جميع الحقوق محفوظة.', '2025-10-15 09:40:40', '2025-10-29 10:25:36'),
(2, '741 Dokki, Giza, Egypt', '+20 17 5359 8290', 'hbartell@effertz.org', '© 2025 RecruiterHub. All rights reserved.', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(3, '321 Sheikh Zayed City, Giza, Egypt', '+20 17 8390 7477', 'oreilly.jena@bosco.org', '© 2025 TalentConnect. All rights reserved.', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(4, '357 Sheikh Zayed, 6th October City, Egypt', '+20 2 7543 3003', 'helmer80@johnston.com', '© 2025 JobMatch. All rights reserved.', '2025-10-15 09:40:40', '2025-10-15 09:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `major_id` bigint(20) UNSIGNED DEFAULT NULL,
  `major_name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `user_id`, `university`, `degree`, `major_id`, `major_name`, `start_date`, `end_date`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'Conroy Ltd University', 'PhD', NULL, 'Sapiente', '2022-01-01', '2027-01-01', 'Dolor fugit tempora in quia eum soluta odio earum soluta quia voluptatem.', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(3, 4, 'Flatley-Runte University', 'BSc', NULL, 'Est', '2019-01-01', '2022-01-01', 'Temporibus sed et aspernatur labore voluptatem error ad voluptatibus omnis expedita est consequatur expedita laudantium et.', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(4, 4, 'Hansen Inc University', 'PhD', NULL, 'Porro', '2022-01-01', '2026-01-01', 'Quasi quisquam ad tempora voluptas qui recusandae minus ullam molestiae excepturi.', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(5, 8, 'Greenfelder And Sons University', 'Diploma', NULL, 'Eum', '2015-01-01', '2017-01-01', 'Ut praesentium hic sapiente autem animi aliquid qui excepturi et facilis sit eos optio.', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(6, 2, 'Tech University', 'BSc', 4, NULL, '2018-09-01', '2022-06-30', 'Studied software engineering topics.', '2025-10-19 11:57:07', '2025-10-19 11:57:07'),
(7, 2, 'mti', '3.5', 14, NULL, '2014-07-01', '2023-08-30', 'test', '2025-10-19 12:08:13', '2025-10-19 12:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_period` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `user_id`, `company_name`, `position`, `location`, `start_date`, `end_date`, `description`, `is_current`, `created_at`, `updated_at`, `total_period`) VALUES
(1, 2, 'O\'keefe-Bahringer', 'Parking Lot Attendant', 'East Rosendo', '2022-10-01 00:00:00', '2025-10-17 17:57:09', 'Vel aut eos rerum magnam culpa animi voluptates culpa. Aut nisi nihil id natus ratione sit. Quos sit temporibus quis rerum.', 1, '2025-10-15 09:40:40', '2025-11-06 08:22:22', 3),
(2, 2, 'Kessler And Sons', 'Public Transportation Inspector', 'Gleasonview', '2024-10-01 00:00:00', '2025-09-01 00:00:00', 'Earum facere sequi autem id ut fugiat alias. Molestias et tenetur voluptatem qui. Ipsum non aperiam in consectetur magni.', 0, '2025-10-15 09:40:40', '2025-11-06 08:22:22', 1),
(4, 4, 'Anderson Inc', 'Shoe Machine Operators', 'North Vivienport', '2024-10-01 00:00:00', '2026-08-01 00:00:00', 'Totam eligendi quis quibusdam qui et est incidunt qui. Iure sed consectetur qui iure architecto voluptates. Voluptatem nisi enim facilis ut nihil.', 0, '2025-10-15 09:40:40', '2025-11-06 08:22:22', 2),
(5, 8, 'Steuber, Hagenes And Bogisich', 'Locomotive Firer', 'Reggieshire', '2017-10-01 00:00:00', '2019-06-01 00:00:00', 'Molestiae rerum sit repudiandae est reprehenderit est suscipit. Nostrum hic aut itaque reprehenderit placeat quidem eos. Quidem praesentium in qui et vel.', 0, '2025-10-15 09:40:40', '2025-11-06 08:22:22', 2),
(6, 8, 'Schuppe, Kuhic And Heathcote', 'Dot Etcher', 'Simonismouth', '2019-10-01 00:00:00', '2025-10-17 17:57:09', 'Saepe eum corporis in pariatur ex sed. Exercitationem qui rem nostrum repudiandae id non aut. Rerum ea laborum veritatis assumenda.', 1, '2025-10-15 09:40:40', '2025-11-06 08:22:22', 6),
(7, 8, 'Ratke Inc', 'Entertainer And Performer', 'Torphyberg', '2023-10-01 00:00:00', '2025-10-17 17:57:09', 'Pariatur reprehenderit veniam ut doloremque sapiente quam reprehenderit voluptatibus. Voluptate nisi necessitatibus error cum occaecati modi. Ipsum accusamus velit voluptatem quaerat modi. Sunt nemo ad beatae aut expedita aliquid vel quis.', 1, '2025-10-15 09:40:40', '2025-11-06 08:22:22', 2),
(13, 2, 'sky', 'frontend', 'emirates', '2025-02-01 00:00:00', '2025-09-01 00:00:00', 'test', 1, '2025-10-19 12:09:25', '2025-11-06 08:22:22', 1);

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
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recruiter_id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name_en`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'Unlimited Job Posts', 'عدد غير محدود من إعلانات الوظائف', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(2, 'Highlighted Listings', 'إعلانات مميزة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(3, 'Candidate Messaging', 'مراسلة المتقدمين', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(4, 'Advanced Analytics', 'تحليلات متقدمة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(5, 'Priority Support', 'دعم ذو أولوية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(6, 'Team Members', 'أعضاء الفريق', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(7, 'API Access', 'وصول عبر واجهة برمجة التطبيقات', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(8, 'Calendar Integration', 'تكامل التقويم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(9, 'Two-Factor Authentication', 'المصادقة الثنائية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(10, 'Recruitment Analytics', 'تحليلات التوظيف', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(11, 'Calendar Integration', 'تكامل التقويم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(12, 'Onboarding Tools', 'أدوات الإدماج', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(13, 'Social Media Integration', 'تكامل وسائل التواصل الاجتماعي', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(14, 'Direct Messaging', 'الرسائل المباشرة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(15, 'Interview Scheduling', 'جدولة المقابلات', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(16, 'Advanced Filters', 'المرشحات المتقدمة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(17, 'Team Collaboration', 'التعاون الجماعي', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(18, 'Cover Letter Templates', 'قوالب خطابات التغطية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(19, 'Advanced Filters', 'المرشحات المتقدمة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(20, 'Candidate Database', 'قاعدة بيانات المرشحين', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(21, 'Bulk Applications', 'التقديمات المجمعة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(22, 'Offer Management', 'إدارة العروض', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(23, 'Application Analytics', 'تحليلات الطلبات', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(24, 'Profile Views', 'مشاهدات الملف الشخصي', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(25, 'Job Alerts', 'تنبيهات الوظائف', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(26, 'Advanced Job Search', 'البحث المتقدم عن الوظائف', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(27, 'Cover Letter Templates', 'قوالب خطابات التغطية', '2025-10-15 09:40:40', '2025-10-15 09:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `feature_plan`
--

CREATE TABLE `feature_plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_plan`
--

INSERT INTO `feature_plan` (`id`, `feature_id`, `plan_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(2, 3, 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(3, 1, 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(4, 2, 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(5, 3, 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(6, 6, 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(7, 4, 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(8, 1, 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(9, 2, 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(10, 3, 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(11, 6, 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(12, 4, 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(13, 5, 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(14, 7, 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(15, 1, 4, NULL, NULL),
(16, 2, 4, NULL, NULL),
(17, 2, 12, NULL, NULL),
(18, 4, 12, NULL, NULL),
(19, 3, 12, NULL, NULL),
(20, 11, 12, NULL, NULL),
(21, 1, 13, NULL, NULL),
(22, 3, 7, NULL, NULL),
(23, 4, 7, NULL, NULL),
(24, 5, 7, NULL, NULL),
(25, 13, 7, NULL, NULL),
(26, 14, 7, NULL, NULL),
(27, 2, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `rating_type` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `comment`, `rating`, `rating_type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 7, 'منصة ممتازة! وجدت وظيفة أحلامي خلال أسبوع واحد.', '5', 'good', 0, '2025-08-01 03:28:16', '2025-10-15 09:40:40'),
(2, 4, 'واجهة مستخدم رائعة وسهلة التنقل. أنصح بها بشدة!', '5', 'good', 0, '2025-09-05 02:54:36', '2025-10-15 09:40:40'),
(3, 5, 'خوارزمية المطابقة دقيقة جداً. وجدت فرصاً مناسبة بسرعة.', '4', 'good', 0, '2025-07-15 15:09:50', '2025-10-15 09:40:40'),
(4, 6, 'خدمة العملاء سريعة الاستجابة ومفيدة. تجربة رائعة بشكل عام.', '5', 'good', 0, '2025-07-26 22:44:06', '2025-10-15 09:40:40'),
(5, 7, 'أحب التطبيق المحمول! مريح جداً للبحث عن الوظائف أثناء التنقل.', '4', 'good', 0, '2025-09-17 21:42:27', '2025-10-15 09:40:40'),
(6, 7, 'توصيات الوظائف دقيقة تماماً. وفرت علي الكثير من الوقت.', '5', 'good', 1, '2025-09-24 01:26:54', '2025-10-15 09:40:40'),
(7, 8, 'منصة مهنية مع إعلانات وظائف عالية الجودة. راضٍ جداً.', '4', 'good', 1, '2025-10-11 10:19:59', '2025-10-15 09:40:40'),
(8, 7, 'عملية التقديم سهلة والردود من أصحاب العمل سريعة.', '5', 'good', 1, '2025-07-30 20:52:40', '2025-10-15 09:40:40'),
(9, 7, 'تنوع رائع في فرص العمل في مجال تخصصي.', '4', 'good', 0, '2025-10-01 12:28:39', '2025-10-15 09:40:40'),
(10, 2, 'إعداد الملف الشخصي كان مباشراً وشاملاً.', '4', 'good', 1, '2025-08-02 18:43:47', '2025-10-15 09:40:40'),
(11, 6, 'منصة جيدة لكن يمكن تحسين فلاتر الوظائف.', '3', 'good', 0, '2025-07-17 14:45:24', '2025-10-15 09:40:40'),
(12, 8, 'تجربة مقبولة، لكن البحث يمكن أن يكون أكثر دقة.', '3', 'good', 1, '2025-08-28 17:39:21', '2025-10-15 09:40:40'),
(13, 7, 'المنصة مقبولة، لكن تحتاج نظام إشعارات أفضل.', '3', 'good', 0, '2025-09-04 12:00:22', '2025-10-15 09:40:40'),
(14, 1, 'تجربة مستخدم سيئة. الواجهة مربكة جداً.', '2', 'bad', 0, '2025-08-28 19:38:09', '2025-10-15 09:40:40'),
(15, 4, 'خيارات وظائف محدودة في منطقتي، الواجهة تحتاج تحسين.', '2', 'bad', 1, '2025-10-06 04:41:14', '2025-10-15 09:40:40'),
(16, 2, 'أوقات تحميل بطيئة جداً وأخطاء متكررة.', '1', 'bad', 0, '2025-08-27 06:01:26', '2025-10-15 09:40:40'),
(17, 8, NULL, '5', 'good', 0, '2025-09-16 11:23:18', '2025-10-15 09:40:40'),
(18, 5, NULL, '4', 'good', 1, '2025-09-14 19:56:43', '2025-10-15 09:40:40'),
(19, 8, NULL, '2', 'bad', 1, '2025-08-11 07:42:20', '2025-10-15 09:40:40'),
(20, NULL, 'منصة رائعة للباحثين عن العمل!', '5', 'good', 0, '2025-09-02 18:24:04', '2025-10-15 09:40:40'),
(21, NULL, 'يمكن تحسين تجربة التطبيق المحمول.', '1', 'bad', 0, '2025-09-12 09:57:35', '2025-10-15 09:40:40'),
(22, 41, 'Perfect app for job searching. Easy to use!', '4', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(23, 42, 'Good response time and assistance.', '4', 'service', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(24, 43, 'Outstanding communication and support.', '4', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(25, 44, 'Decent communication.', '5', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(26, 45, 'Good company to work for.', '5', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(27, 46, 'Perfect recruiter experience.', '4', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(28, 47, 'Nice app, works well most of the time.', '5', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(29, 48, 'Outstanding opportunity and company.', '4', 'job', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(30, 49, 'Professional and efficient service.', '5', 'service', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(31, 50, 'Outstanding skills and experience.', '5', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(32, 51, 'Outstanding opportunity and company.', '4', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(33, 52, 'Amazing workplace environment.', '4', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(34, 53, 'Excellent company to work for!', '4', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(35, 54, 'Excellent recruiter, very professional!', '4', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(36, 55, 'Solid candidate experience.', '5', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(37, 56, 'Love the interface and features. Highly recommended!', '4', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(38, 57, 'Amazing workplace environment.', '4', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(39, 58, 'Good app overall, minor improvements needed.', '5', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(40, 59, 'Solid candidate experience.', '4', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(41, 60, 'Decent job with good benefits.', '5', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(42, 61, 'Good job opportunity.', '4', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(43, 62, 'Best customer service I\'ve experienced.', '4', 'service', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(44, 63, 'Pretty good, but could use some enhancements.', '5', 'app', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(45, 64, 'Amazing platform with excellent functionality.', '4', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(46, 65, 'Excellent company to work for!', '4', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(47, 66, 'Best recruiter I\'ve worked with.', '5', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(48, 67, 'Professional and efficient service.', '5', 'service', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(49, 68, 'Solid platform with good features.', '4', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(50, 69, 'Good candidate overall.', '4', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(51, 70, 'Good recruiter to work with.', '4', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(52, 71, 'Solid job posting.', '5', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(53, 72, 'Solid company with good values.', '4', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(54, 73, 'Great company culture and values.', '4', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(55, 74, 'Perfect recruiter experience.', '5', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(56, 75, 'Good job opportunity.', '5', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(57, 76, 'Good job opportunity.', '4', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(58, 77, 'Good company overall.', '5', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(59, 78, 'Solid candidate experience.', '5', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(60, 79, 'Satisfactory service experience.', '5', 'service', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(61, 80, 'Good company overall.', '5', 'company', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(62, 81, 'Outstanding skills and experience.', '5', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(63, 82, 'Outstanding customer service!', '4', 'service', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(64, 83, 'Best job I\'ve found through this platform.', '4', 'job', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(65, 84, 'Good job opportunity.', '4', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(66, 85, 'Best job I\'ve found through this platform.', '4', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(67, 86, 'Decent skills and background.', '5', 'candidate', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(68, 87, 'Love the interface and features. Highly recommended!', '5', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(69, 88, 'Good recruiter to work with.', '5', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(70, 89, 'Solid job posting.', '4', 'job', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(71, 90, 'Good candidate to consider.', '5', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(72, 91, 'Acceptable but not outstanding.', '3', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(73, 92, 'Acceptable but not outstanding.', '3', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(74, 93, 'Acceptable but not outstanding.', '3', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(75, 94, 'Mediocre experience overall.', '3', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(76, 95, 'Mediocre job posting.', '3', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(77, 96, 'Standard service experience.', '3', 'service', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(78, 97, 'Okay qualifications.', '3', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(79, 98, 'Okay qualifications.', '3', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(80, 99, 'Mediocre experience overall.', '3', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(81, 100, 'Okay communication.', '3', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(82, 101, 'It\'s okay, could be better.', '3', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(83, 102, 'Average app, nothing special.', '3', 'app', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(84, 103, 'Mediocre company culture.', '3', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(85, 104, 'Average app, nothing special.', '3', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(86, 105, 'Average service, nothing special.', '3', 'service', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(87, 106, 'Acceptable but not outstanding.', '3', 'recruiter', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(88, 107, 'Average candidate.', '3', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(89, 108, 'Standard candidate profile.', '3', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(90, 109, 'Decent functionality but needs work.', '3', 'app', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(91, 110, 'Acceptable company.', '3', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(92, 111, 'Poor qualifications.', '1', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(93, 112, 'Needs improvement in skills.', '1', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(94, 113, 'Worst job posting ever.', '2', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(95, 114, 'Not very helpful.', '2', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(96, 115, 'Completely unprofessional.', '2', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(97, 116, 'Disappointing recruiter experience.', '2', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(98, 117, 'Poor workplace culture.', '1', 'company', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(99, 118, 'Worst employer ever.', '1', 'company', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(100, 119, 'Below average service quality.', '2', 'service', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(101, 120, 'Not what was advertised.', '2', 'job', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interview_id` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `performance` varchar(255) DEFAULT NULL,
  `status` enum('pending','completed','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interviews`
--

INSERT INTO `interviews` (`id`, `interview_id`, `user_id`, `performance`, `status`, `created_at`, `updated_at`) VALUES
(1, 'INT-896720', 26, '100%', 'completed', '2025-08-11 07:13:07', '2025-10-13 12:58:01'),
(2, 'INT-871421', 132, '33%', 'completed', '2025-07-22 16:58:23', '2025-09-08 09:04:10'),
(3, 'INT-208569', 73, '8%', 'completed', '2025-08-03 20:34:59', '2025-09-30 18:32:04'),
(4, 'INT-498989', 126, '41%', 'pending', '2025-09-07 18:47:40', '2025-10-02 01:04:01'),
(5, 'INT-733601', 98, '4%', 'completed', '2025-09-18 14:10:01', '2025-09-29 11:03:31'),
(6, 'INT-641626', 4, '0%', 'completed', '2025-08-17 14:58:39', '2025-10-06 12:46:28'),
(7, 'INT-072698', 11, '33%', 'pending', '2025-09-07 13:03:24', '2025-09-20 13:48:40'),
(8, 'INT-842066', 16, '42%', 'cancelled', '2025-09-01 03:00:54', '2025-09-23 04:13:31'),
(9, 'INT-323923', 47, '45%', 'completed', '2025-09-19 05:32:31', '2025-09-19 15:08:57'),
(10, 'INT-143788', 4, '49%', 'pending', '2025-08-29 00:32:37', '2025-10-03 05:30:15'),
(11, 'INT-040344', 149, '49%', 'completed', '2025-09-07 03:31:19', '2025-09-22 23:47:14'),
(12, 'INT-385616', 152, '29%', 'pending', '2025-07-30 19:05:13', '2025-08-22 08:39:33'),
(13, 'INT-776791', 54, '10%', 'completed', '2025-10-07 17:02:31', '2025-10-14 15:04:12'),
(14, 'INT-455489', 169, '41%', 'pending', '2025-10-06 17:42:43', '2025-10-11 11:36:43'),
(15, 'INT-238286', 152, '41%', 'pending', '2025-08-09 13:25:03', '2025-09-30 14:53:25'),
(16, 'INT-116670', 119, '58%', 'completed', '2025-08-23 22:40:03', '2025-08-26 12:01:42'),
(17, 'INT-177926', 140, '10%', 'pending', '2025-09-24 22:38:00', '2025-10-13 08:21:29'),
(18, 'INT-729141', 21, '44%', 'cancelled', '2025-09-03 14:54:31', '2025-10-01 21:44:45'),
(19, 'INT-849989', 98, '85%', 'cancelled', '2025-09-10 23:10:38', '2025-10-11 14:31:41'),
(20, 'INT-582114', 69, '36%', 'pending', '2025-09-01 04:36:15', '2025-09-04 11:57:35'),
(21, 'INT-167069', 53, '15%', 'cancelled', '2025-09-26 11:00:41', '2025-10-12 16:51:29'),
(22, 'INT-797316', 27, '18%', 'cancelled', '2025-09-16 08:13:07', '2025-09-22 13:17:32'),
(23, 'INT-536678', 109, '63%', 'cancelled', '2025-09-10 16:55:38', '2025-09-11 22:50:11'),
(24, 'INT-276607', 109, '35%', 'pending', '2025-08-12 04:25:58', '2025-09-25 18:11:02'),
(25, 'INT-870333', 22, '39%', 'completed', '2025-07-29 17:12:40', '2025-10-05 05:32:54'),
(26, 'INT-357838', 126, '42%', 'cancelled', '2025-08-10 18:15:10', '2025-09-14 19:58:54'),
(27, 'INT-648083', 67, '29%', 'cancelled', '2025-07-17 22:22:35', '2025-08-08 15:50:57'),
(28, 'INT-025277', 8, '27%', 'pending', '2025-09-15 21:34:59', '2025-10-07 09:33:54'),
(29, 'INT-774698', 161, '2%', 'pending', '2025-10-01 05:32:14', '2025-10-07 14:41:54'),
(30, 'INT-569660', 23, '98%', 'cancelled', '2025-10-03 04:59:23', '2025-10-06 13:52:39'),
(31, 'INT-813798', 116, '88%', 'pending', '2025-07-23 05:07:49', '2025-08-04 23:31:53'),
(32, 'INT-276911', 14, '84%', 'cancelled', '2025-08-31 19:39:10', '2025-10-08 02:38:30'),
(33, 'INT-142612', 50, '47%', 'cancelled', '2025-08-11 13:50:54', '2025-09-05 01:00:31'),
(34, 'INT-743982', 2, '19%', 'completed', '2025-09-25 21:05:49', '2025-09-29 03:57:52'),
(35, 'INT-622630', 96, '100%', 'completed', '2025-10-13 16:52:20', '2025-10-15 06:55:48'),
(36, 'INT-737554', 69, '32%', 'completed', '2025-09-10 09:58:11', '2025-10-10 17:10:08'),
(37, 'INT-426308', 28, '83%', 'cancelled', '2025-10-11 04:45:06', '2025-10-14 18:44:55'),
(38, 'INT-494331', 24, '86%', 'completed', '2025-09-01 16:00:51', '2025-09-17 07:57:00'),
(39, 'INT-040597', 18, '52%', 'cancelled', '2025-10-02 00:26:58', '2025-10-07 15:29:53'),
(40, 'INT-912724', 22, '2%', 'completed', '2025-09-28 13:27:34', '2025-10-05 03:09:52'),
(41, 'INT-712239', 19, '91%', 'pending', '2025-10-10 16:27:58', '2025-10-15 02:29:43'),
(42, 'INT-891307', 14, '13%', 'completed', '2025-08-01 19:15:07', '2025-09-07 02:56:43'),
(43, 'INT-812438', 119, '94%', 'cancelled', '2025-09-22 15:34:21', '2025-09-26 03:30:06'),
(44, 'INT-359997', 163, '63%', 'pending', '2025-09-01 21:31:46', '2025-10-09 15:09:25'),
(45, 'INT-935271', 16, '91%', 'pending', '2025-09-04 15:55:10', '2025-09-20 00:03:32'),
(46, 'INT-472739', 102, '57%', 'cancelled', '2025-08-19 21:02:32', '2025-08-20 04:50:57'),
(47, 'INT-496524', 73, '68%', 'completed', '2025-08-15 07:25:26', '2025-09-09 09:03:17'),
(48, 'INT-850239', 166, '48%', 'pending', '2025-08-16 05:25:02', '2025-10-01 05:01:54'),
(49, 'INT-115311', 23, '31%', 'completed', '2025-09-04 18:18:16', '2025-09-23 00:38:50'),
(50, 'INT-346530', 49, '20%', 'cancelled', '2025-09-13 20:40:48', '2025-10-12 02:38:55'),
(51, 'INT-514811', 137, '61%', 'pending', '2025-07-27 09:11:34', '2025-08-08 14:19:03'),
(52, 'INT-009414', 78, '87%', 'pending', '2025-08-17 16:39:07', '2025-09-15 17:23:31'),
(53, 'INT-532049', 45, '8%', 'pending', '2025-09-05 09:56:38', '2025-09-29 13:15:58'),
(54, 'INT-219380', 22, '64%', 'pending', '2025-08-07 20:34:20', '2025-09-08 00:22:48'),
(55, 'INT-301759', 140, '51%', 'pending', '2025-08-31 13:14:13', '2025-10-12 19:22:03'),
(56, 'INT-088229', 149, '24%', 'pending', '2025-08-15 08:58:05', '2025-08-17 17:24:21'),
(57, 'INT-030651', 48, '53%', 'pending', '2025-10-13 20:21:57', '2025-10-14 17:23:24'),
(58, 'INT-688258', 94, '72%', 'pending', '2025-08-26 05:16:05', '2025-09-01 09:07:46'),
(59, 'INT-512742', 123, '55%', 'pending', '2025-09-30 10:22:06', '2025-10-10 02:10:06'),
(60, 'INT-967042', 142, '63%', 'pending', '2025-08-31 11:04:15', '2025-09-24 22:41:16'),
(61, 'INT-125164', 98, '94%', 'completed', '2025-09-14 05:16:04', '2025-09-30 17:31:42'),
(62, 'INT-294460', 24, '99%', 'completed', '2025-08-11 01:47:56', '2025-08-30 00:49:05'),
(63, 'INT-796119', 116, '81%', 'completed', '2025-09-03 10:25:02', '2025-10-01 08:42:11'),
(64, 'INT-667651', 169, '99%', 'completed', '2025-08-01 16:12:03', '2025-10-11 20:43:52'),
(65, 'INT-495512', 28, '97%', 'completed', '2025-08-02 04:17:37', '2025-10-06 11:17:26'),
(66, 'INT-761777', 27, '87%', 'completed', '2025-09-29 11:08:56', '2025-10-10 09:27:38'),
(67, 'INT-268098', 83, '85%', 'completed', '2025-10-06 06:21:33', '2025-10-10 22:39:33'),
(68, 'INT-850106', 17, '94%', 'completed', '2025-09-18 08:20:34', '2025-09-22 22:22:54'),
(69, 'INT-469755', 149, '89%', 'completed', '2025-09-26 07:42:59', '2025-10-08 07:27:45'),
(70, 'INT-751998', 15, '87%', 'completed', '2025-09-12 23:22:10', '2025-10-03 01:38:01'),
(71, 'INT-455118', 55, '98%', 'completed', '2025-08-19 14:31:50', '2025-08-30 12:57:27'),
(72, 'INT-957735', 4, '90%', 'completed', '2025-09-29 07:32:24', '2025-10-08 12:39:48'),
(73, 'INT-490836', 50, '91%', 'completed', '2025-08-02 12:00:14', '2025-09-18 02:44:42'),
(74, 'INT-068506', 128, '100%', 'completed', '2025-09-27 07:45:57', '2025-09-29 11:55:56'),
(75, 'INT-358250', 161, '84%', 'completed', '2025-08-28 01:30:13', '2025-08-30 17:06:50'),
(76, 'INT-137772', 166, '2%', 'completed', '2025-10-14 09:20:33', '2025-10-15 00:41:29'),
(77, 'INT-015702', 24, '2%', 'completed', '2025-07-15 21:19:41', '2025-08-03 09:44:15'),
(78, 'INT-706480', 57, '5%', 'completed', '2025-07-24 21:15:22', '2025-09-07 04:27:00'),
(79, 'INT-589429', 18, '29%', 'completed', '2025-07-31 21:19:03', '2025-09-18 18:13:55'),
(80, 'INT-615129', 137, '40%', 'completed', '2025-09-15 15:04:32', '2025-09-27 09:51:14'),
(81, 'INT-163357', 2, '79%', 'cancelled', '2025-09-02 21:57:45', '2025-09-24 15:58:57'),
(82, 'INT-968012', 163, '43%', 'cancelled', '2025-08-16 00:32:44', '2025-09-30 15:33:53'),
(83, 'INT-160534', 23, '13%', 'cancelled', '2025-08-12 16:27:03', '2025-10-02 11:45:02'),
(84, 'INT-196946', 50, '17%', 'cancelled', '2025-08-29 22:42:26', '2025-10-10 01:45:13'),
(85, 'INT-487004', 49, '87%', 'cancelled', '2025-10-13 03:02:20', '2025-10-14 03:39:18'),
(86, 'INT-630678', 51, '37%', 'cancelled', '2025-07-20 11:43:30', '2025-10-05 14:12:15'),
(87, 'INT-696532', 26, '48%', 'cancelled', '2025-09-28 02:29:15', '2025-10-03 20:12:01'),
(88, 'INT-133960', 20, '68%', 'cancelled', '2025-08-10 00:47:08', '2025-10-07 10:44:36');

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"151c065e-c6e6-4c60-ae4e-8891c0af64da\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:14:\\\"Security Alert\\\";s:4:\\\"body\\\";s:68:\\\"Check out this week\'s featured service providers and special offers.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:2;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1760798995,\"delay\":null}', 0, NULL, 1760798995, 1760798995),
(2, 'default', '{\"uuid\":\"23895710-43d8-4b60-a4b0-bfee70041ad8\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:14:\\\"Security Alert\\\";s:4:\\\"body\\\";s:68:\\\"Check out this week\'s featured service providers and special offers.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:4;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1760798995,\"delay\":null}', 0, NULL, 1760798995, 1760798995),
(3, 'default', '{\"uuid\":\"4b92397d-bec9-49dc-8ac1-c2d0a022b85f\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:14:\\\"Security Alert\\\";s:4:\\\"body\\\";s:68:\\\"Check out this week\'s featured service providers and special offers.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:8;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1760798995,\"delay\":null}', 0, NULL, 1760798995, 1760798995),
(4, 'default', '{\"uuid\":\"803ca6fb-993d-434e-9d62-69fc15985c6e\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:14:\\\"Security Alert\\\";s:4:\\\"body\\\";s:68:\\\"Check out this week\'s featured service providers and special offers.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:1;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761750780,\"delay\":null}', 0, NULL, 1761750780, 1761750780),
(5, 'default', '{\"uuid\":\"ff2afa28-9678-42b0-9edc-b6df0df04263\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:14:\\\"Security Alert\\\";s:4:\\\"body\\\";s:68:\\\"Check out this week\'s featured service providers and special offers.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:6;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761750780,\"delay\":null}', 0, NULL, 1761750780, 1761750780),
(6, 'default', '{\"uuid\":\"ff87c568-c9aa-47e7-894a-6194807133e4\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:1;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(7, 'default', '{\"uuid\":\"98882c1e-388c-4ba4-b9a8-e88918512056\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:6;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(8, 'default', '{\"uuid\":\"93d2e068-202d-45a7-a05f-a77414582fc6\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:39;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(9, 'default', '{\"uuid\":\"c78306ce-3d95-4ea4-81a5-65636e70a905\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:40;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(10, 'default', '{\"uuid\":\"9fd70f19-974a-4a7a-b901-e89faf637e79\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:42;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(11, 'default', '{\"uuid\":\"8b18c794-b0cd-465f-81f4-b436e4faa8d3\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:44;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(12, 'default', '{\"uuid\":\"c21db58d-1401-4ab1-b5ca-31386e423f24\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:46;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(13, 'default', '{\"uuid\":\"0fcda450-49a3-442c-90d8-460adfc1dfa7\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:56;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(14, 'default', '{\"uuid\":\"17162166-fd05-4cca-8162-228575f8c0f6\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:64;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(15, 'default', '{\"uuid\":\"9d418385-afe5-42b3-997a-be18fa837d70\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:66;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(16, 'default', '{\"uuid\":\"146797fc-c064-4d68-89ba-2aa525d9b208\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:68;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(17, 'default', '{\"uuid\":\"9aa80fe0-727b-4827-a0ff-a6cf85b4364f\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:74;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(18, 'default', '{\"uuid\":\"3fbddab6-7842-4c6f-aef7-dbae7633be8e\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:75;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(19, 'default', '{\"uuid\":\"77d7afce-f683-44a4-8368-7dd6554ee531\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:77;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(20, 'default', '{\"uuid\":\"70518440-cbae-4781-9fae-6e6d67934fb1\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:80;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(21, 'default', '{\"uuid\":\"02d18fdf-6d17-424c-8056-38863e389b08\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:82;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(22, 'default', '{\"uuid\":\"b3fa7b9c-c209-432c-a584-7b88d076d405\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:86;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(23, 'default', '{\"uuid\":\"cf0b1ed6-48f5-453c-8a39-fa55540105fd\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:87;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(24, 'default', '{\"uuid\":\"f1e98c7e-8ae9-4fca-8c1b-62b161a991b7\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:88;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(25, 'default', '{\"uuid\":\"bbd2caee-f9f3-4e2b-97ec-cedbc10f6312\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:89;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(26, 'default', '{\"uuid\":\"b0d95ec1-5ee7-4d16-9b48-38d92a083f39\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:90;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(27, 'default', '{\"uuid\":\"8d2a8ba5-0bb1-462d-a9a5-eabba152bd80\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:93;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(28, 'default', '{\"uuid\":\"fc65fcb8-98c8-4cfd-a31c-4805d3cf5000\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:95;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(29, 'default', '{\"uuid\":\"c2b52367-208d-4056-b7c8-3b33c145a2c1\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:103;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(30, 'default', '{\"uuid\":\"7641176e-b6cc-4d1b-95e4-034ce91cc19c\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:105;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(31, 'default', '{\"uuid\":\"94624b9c-06c3-4f23-8757-70dfa91b9161\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:108;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(32, 'default', '{\"uuid\":\"8544c66f-1053-4ef9-b6bf-b66934f78125\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:111;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(33, 'default', '{\"uuid\":\"d6581492-8bbb-4f81-a4ee-e42afc623c9a\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:4;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(34, 'default', '{\"uuid\":\"21ef8d93-f494-48b7-a0ac-744e35186231\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:8;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(35, 'default', '{\"uuid\":\"b3c46d8a-7497-4e17-8913-09415d45fe8b\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:9;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(36, 'default', '{\"uuid\":\"006aa6a9-01d5-45d8-bdc8-994a5bb3e701\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:10;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(37, 'default', '{\"uuid\":\"2a0a1543-3555-4b6a-9804-985422d83062\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:11;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(38, 'default', '{\"uuid\":\"fb04d995-f824-4f15-908e-684b77ff8f33\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:12;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(39, 'default', '{\"uuid\":\"416adde9-9c5e-4669-b744-9b9976695e49\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:13;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(40, 'default', '{\"uuid\":\"c248d839-4ca2-4a72-8a66-efd4c261affe\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:14;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(41, 'default', '{\"uuid\":\"7be89396-8314-4eab-a427-c5d1048e0d77\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:15;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(42, 'default', '{\"uuid\":\"2c214e37-aa31-424a-98fa-9aca4d5b7ca4\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:16;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(43, 'default', '{\"uuid\":\"e89a0426-1f19-430e-8964-40184e621350\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:17;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(44, 'default', '{\"uuid\":\"8322538b-4fbc-4744-9b25-a5bd3d1b97b9\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:18;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(45, 'default', '{\"uuid\":\"0f3b4338-4a56-411d-8a00-605f1d9cc39a\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:19;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(46, 'default', '{\"uuid\":\"c3233c6b-950e-42d3-81dd-a9d23e27ef4b\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:20;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(47, 'default', '{\"uuid\":\"1a51c84e-778d-4c5f-b4cf-55c133d3449f\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:21;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(48, 'default', '{\"uuid\":\"a4631fad-478f-4f74-b9a3-8d62347c0af6\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:22;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(49, 'default', '{\"uuid\":\"8c991437-2b78-432d-bf8f-0f42857972e0\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:23;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(50, 'default', '{\"uuid\":\"b31824fb-5db2-41b4-905f-a2d9346607ff\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:24;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(51, 'default', '{\"uuid\":\"1ccdbfe6-1deb-4b1f-89cd-e4ba2850dfd4\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:25;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(52, 'default', '{\"uuid\":\"fa67ef2b-14a9-444f-9c62-1b5be6b82ca2\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:26;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(53, 'default', '{\"uuid\":\"789cefaf-5941-4b1a-99bc-5d0b39d5fa10\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:27;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(54, 'default', '{\"uuid\":\"b8bbaf44-5856-4e64-ad95-14f968649191\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:28;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754892,\"delay\":null}', 0, NULL, 1761754892, 1761754892),
(55, 'default', '{\"uuid\":\"ea6d03ed-0ffe-4e50-8904-6f2145a68003\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:1;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754940,\"delay\":null}', 0, NULL, 1761754940, 1761754940),
(56, 'default', '{\"uuid\":\"821982f8-48db-4ee4-8808-c9133de135e7\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:6;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754940,\"delay\":null}', 0, NULL, 1761754940, 1761754940),
(57, 'default', '{\"uuid\":\"ab831b38-3a2d-43ce-a538-f9ceb3b584a8\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:7;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754940,\"delay\":null}', 0, NULL, 1761754940, 1761754940),
(58, 'default', '{\"uuid\":\"3be203c8-d912-4663-8aa1-df3de3651250\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:30;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754940,\"delay\":null}', 0, NULL, 1761754940, 1761754940),
(59, 'default', '{\"uuid\":\"72416edd-55eb-4b4d-81bc-147f827dda0a\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:129;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754940,\"delay\":null}', 0, NULL, 1761754940, 1761754940),
(60, 'default', '{\"uuid\":\"b45e1086-602a-4ba3-a5a1-f2007fd0866e\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:133;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754940,\"delay\":null}', 0, NULL, 1761754940, 1761754940),
(61, 'default', '{\"uuid\":\"5ccb6cad-0acc-4f52-9ea6-537c01e77f3e\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:139;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754940,\"delay\":null}', 0, NULL, 1761754940, 1761754940),
(62, 'default', '{\"uuid\":\"e3f62391-2653-4556-b214-f827249c7321\",\"displayName\":\"App\\\\Events\\\\AlertCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\AlertCreated\\\":2:{s:7:\\\"payload\\\";a:3:{s:5:\\\"title\\\";s:36:\\\"مرحباً بك في منصتنا!\\\";s:4:\\\"body\\\";s:265:\\\"مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.\\\";s:4:\\\"type\\\";s:4:\\\"info\\\";}s:6:\\\"userId\\\";i:176;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761754940,\"delay\":null}', 0, NULL, 1761754940, 1761754940);

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
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `name_en`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'Computer Science', 'علوم الحاسب', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(2, 'Information Technology', 'تقنية المعلومات', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(3, 'Software Engineering', 'هندسة البرمجيات', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(4, 'Data Science', 'علوم البيانات', '2025-10-15 09:40:39', '2025-10-27 07:35:29'),
(5, 'Cybersecurity', 'الأمن السيبراني', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(6, 'Business Administration', 'إدارة الأعمال', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(7, 'Marketing', 'التسويق', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(8, 'Finance', 'المالية', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(9, 'Accounting', 'المحاسبة', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(10, 'Human Resources', 'الموارد البشرية', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(11, 'Mechanical Engineering', 'الهندسة الميكانيكية', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(12, 'Electrical Engineering', 'الهندسة الكهربائية', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(13, 'Civil Engineering', 'الهندسة المدنية', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(14, 'Medicine', 'الطب', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(15, 'Nursing', 'التمريض', '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(16, 'Education', 'التربية والتعليم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(17, 'Environmental Science', 'العلوم البيئية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(18, 'International Relations', 'العلاقات الدولية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(19, 'Game Development', 'تطوير الألعاب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(20, 'Game Development', 'تطوير الألعاب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(21, 'Film Production', 'إنتاج الأفلام', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(22, 'Business Administration', 'إدارة الأعمال', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(23, 'Aerospace Engineering', 'الهندسة الجوية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(24, 'Operations Management', 'إدارة العمليات', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(25, 'Education', 'التربية والتعليم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(26, 'Veterinary Medicine', 'الطب البيطري', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(27, 'Nursing', 'التمريض', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(28, 'Biomedical Engineering', 'الهندسة الطبية الحيوية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(29, 'History', 'التاريخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(30, 'Statistics', 'الإحصاء', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(31, 'Chemical Engineering', 'الهندسة الكيميائية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(32, 'Environmental Engineering', 'الهندسة البيئية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(33, 'Chemistry', 'الكيمياء', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(34, 'Marketing', 'التسويق', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(35, 'History', 'التاريخ', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(36, 'Anthropology', 'علم الأنثروبولوجيا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(37, 'Information Technology', 'تكنولوجيا المعلومات', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(38, 'Pharmacy', 'الصيدلة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(39, 'Web Development', 'تطوير الويب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(40, 'Education', 'التربية والتعليم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(41, 'Supply Chain Management', 'إدارة سلسلة التوريد', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(42, 'Statistics', 'الإحصاء', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(43, 'Supply Chain Management', 'إدارة سلسلة التوريد', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(44, 'Game Development', 'تطوير الألعاب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(45, 'Hotel Management', 'إدارة الفنادق', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(46, 'Data Science', 'علوم البيانات', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(47, 'Criminology', 'علم الجريمة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(48, 'Journalism', 'الصحافة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(49, 'Medicine', 'الطب', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(50, 'Chemistry', 'الكيمياء', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(51, 'Journalism', 'الصحافة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(52, 'Linguistics', 'اللغويات', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(53, 'Film Production', 'إنتاج الأفلام', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(54, 'Geography', 'الجغرافيا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(55, 'Agriculture', 'الزراعة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(56, 'Statistics', 'الإحصاء', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(57, 'Photography', 'التصوير الفوتوغرافي', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(58, 'Project Management', 'إدارة المشاريع', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(59, 'Statistics', 'الإحصاء', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(60, 'Business Administration', 'إدارة الأعمال', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(61, 'Music', 'الموسيقى', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(62, 'Civil Engineering', 'الهندسة المدنية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(63, 'Physical Education', 'التربية الرياضية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(64, 'Physics', 'الفيزياء', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(65, 'Agriculture', 'الزراعة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(66, 'Pharmacy', 'الصيدلة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(67, 'Mathematics', 'الرياضيات', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(68, 'Law', 'القانون', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(69, 'Chemical Engineering', 'الهندسة الكيميائية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(70, 'Physics', 'الفيزياء', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(71, 'Accounting', 'المحاسبة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(72, 'Biomedical Engineering', 'الهندسة الطبية الحيوية', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(73, 'Translation', 'الترجمة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(74, 'Physics', 'الفيزياء', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(75, 'Veterinary Medicine', 'الطب البيطري', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(76, 'Anthropology', 'علم الأنثروبولوجيا', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(77, 'Agriculture', 'الزراعة', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(78, 'Education', 'التربية والتعليم', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(79, 'Data Science', 'علوم البيانات', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(80, 'Biology', 'الأحياء', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(81, 'Human Resources', 'الموارد البشرية', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(82, 'Hotel Management', 'إدارة الفنادق', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(83, 'Special Education', 'التربية الخاصة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(84, 'Sales', 'المبيعات', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(85, 'Mechanical Engineering', 'الهندسة الميكانيكية', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(86, 'Social Work', 'العمل الاجتماعي', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(87, 'Education', 'التربية والتعليم', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(88, 'Sports Science', 'علوم الرياضة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(89, 'Tourism and Hospitality', 'السياحة والضيافة', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(90, 'Project Management', 'إدارة المشاريع', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(91, 'Supply Chain Management', 'إدارة سلسلة التوريد', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(92, 'Economics', 'الاقتصاد', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(93, 'Web Development', 'تطوير الويب', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(94, 'Event Management', 'إدارة الفعاليات', '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(95, 'one more try', 'محاوله اخرى', '2025-10-23 11:28:21', '2025-10-23 11:35:05'),
(96, 'one more try', 'محاوله اخرى', '2025-10-23 11:29:21', '2025-10-23 11:32:45'),
(97, 'try', 'محاوله', '2025-10-23 11:29:46', '2025-10-23 11:29:46'),
(98, 'test major en', 'test major', '2025-10-27 07:39:32', '2025-10-27 07:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, '2dca4016-ff59-4d06-9032-4972e95a509e', 'resume', 'merged', 'merged.pdf', 'application/pdf', 'public', 'public', 4550190, '[]', '[]', '[]', '[]', 1, '2025-10-19 12:12:39', '2025-10-19 12:12:39'),
(2, 'App\\Models\\User', 172, 'fa10b9ec-76e8-469d-9705-07ff695bdea2', 'exports', 'candidate_export_20251023_110719.csv', 'candidate_export_20251023_110719.csv', 'text/plain', 'public', 'public', 76, '[]', '[]', '[]', '[]', 1, '2025-10-23 08:07:19', '2025-10-23 08:07:19'),
(3, 'App\\Models\\User', 1, '9d1ffe2b-6f16-4ac2-9684-a97acefefa06', 'exports', 'candidate_export_20251023_110954.csv', 'candidate_export_20251023_110954.csv', 'text/plain', 'public', 'public', 76, '[]', '[]', '[]', '[]', 1, '2025-10-23 08:09:54', '2025-10-23 08:09:54'),
(4, 'App\\Models\\User', 172, '1b64062a-be7a-45c0-997d-6fef7c62618c', 'exports', 'interview_export_20251023_124753.csv', 'interview_export_20251023_124753.csv', 'text/csv', 'public', 'public', 464, '[]', '[]', '[]', '[]', 2, '2025-10-23 09:47:53', '2025-10-23 09:47:53'),
(5, 'App\\Models\\User', 1, '7e709d21-3497-44c3-95cd-699d3d007963', 'exports', 'subscriptions_export_2025-10-25_09-43-49.csv', 'subscriptions_export_2025-10-25_09-43-49.csv', 'text/csv', 'public', 'public', 405, '[]', '[]', '[]', '[]', 2, '2025-10-25 06:43:49', '2025-10-25 06:43:49'),
(6, 'App\\Models\\User', 172, '46b45049-e56f-48b4-8452-7711f2d03f49', 'exports', 'subscriptions_export_2025-10-25_12-32-15.csv', 'subscriptions_export_2025-10-25_12-32-15.csv', 'text/csv', 'public', 'public', 7105, '[]', '[]', '[]', '[]', 3, '2025-10-25 09:32:15', '2025-10-25 09:32:15'),
(7, 'App\\Models\\User', 172, '99c5397f-e0ab-4c06-9644-f400956eed2b', 'exports', 'subscriptions_export_2025-10-25_12-37-09.csv', 'subscriptions_export_2025-10-25_12-37-09.csv', 'text/csv', 'public', 'public', 7105, '[]', '[]', '[]', '[]', 4, '2025-10-25 09:37:09', '2025-10-25 09:37:09'),
(8, 'App\\Models\\User', 172, '5f8c5d4c-6735-4f53-abe9-e2f8d5350214', 'exports', 'candidate_export_20251027_090612.csv', 'candidate_export_20251027_090612.csv', 'text/plain', 'public', 'public', 76, '[]', '[]', '[]', '[]', 5, '2025-10-27 06:06:12', '2025-10-27 06:06:12'),
(9, 'App\\Models\\User', 172, '8286cb3a-7ec2-406a-b612-ca9e6a72fe8e', 'exports', 'candidate_export_20251029_164300.csv', 'candidate_export_20251029_164300.csv', 'text/plain', 'public', 'public', 76, '[]', '[]', '[]', '[]', 6, '2025-10-29 13:43:00', '2025-10-29 13:43:00'),
(10, 'App\\Models\\User', 172, 'ed3a0971-7e6d-46a4-a990-c483dd430209', 'exports', 'faq_export_20251029_165838.csv', 'faq_export_20251029_165838.csv', 'text/csv', 'public', 'public', 1731, '[]', '[]', '[]', '[]', 7, '2025-10-29 13:58:38', '2025-10-29 13:58:38'),
(11, 'App\\Models\\User', 172, '0fa23c8a-c2df-4891-9fa8-d6b2f878272c', 'exports', 'faq_export_20251029_170134.csv', 'faq_export_20251029_170134.csv', 'text/csv', 'public', 'public', 1219, '[]', '[]', '[]', '[]', 8, '2025-10-29 14:01:34', '2025-10-29 14:01:34'),
(12, 'App\\Models\\User', 1, '2bb1b9b4-5973-4e93-8352-59568f2dafeb', 'exports', 'faq_export_20251029_171157.csv', 'faq_export_20251029_171157.csv', 'text/csv', 'public', 'public', 1731, '[]', '[]', '[]', '[]', 3, '2025-10-29 14:11:57', '2025-10-29 14:11:57'),
(13, 'App\\Models\\User', 1, '684d1b8b-4010-4458-8dfb-aecb0c9b1e4e', 'exports', 'faq_export_20251029_171514.csv', 'faq_export_20251029_171514.csv', 'text/csv', 'public', 'public', 1731, '[]', '[]', '[]', '[]', 4, '2025-10-29 14:15:14', '2025-10-29 14:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text DEFAULT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_replied` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `sender_id`, `is_read`, `is_replied`, `created_at`, `updated_at`) VALUES
(1, 'Aut sequi aut neque excepturi. Culpa nostrum qui et ipsam. Magni aliquam saepe dolores sed reiciendis rerum in. Rem ut ratione ea numquam dolor.', 121, 1, 0, '2025-09-19 17:16:40', '2025-10-21 09:55:46'),
(2, 'Vero ad mollitia error est id dolorem a aut. Qui ea et perferendis dolores et illo et. Qui facere temporibus maxime.', 122, 1, 0, '2025-09-19 18:39:29', '2025-09-03 13:45:31'),
(3, 'Aut occaecati et voluptatum aut eius. Est velit temporibus dolor ea possimus labore. Blanditiis pariatur et aut sed et veniam.', 123, 1, 0, '2025-09-23 03:38:23', '2025-08-14 13:24:35'),
(4, 'Sunt consectetur voluptatum et velit suscipit. Aut repellat illo explicabo deserunt culpa. Aut blanditiis delectus rerum sapiente ut in. Eos et inventore dolorem deleniti.', 124, 0, 0, '2025-08-21 17:42:04', '2025-10-12 15:58:28'),
(5, 'Repellendus consectetur incidunt perferendis omnis laborum. Autem quaerat expedita ut adipisci. Et consequatur nesciunt ratione.', 125, 1, 1, '2025-10-12 20:19:20', '2025-10-28 10:18:10'),
(6, 'Vitae provident quam quasi est veniam numquam. Consequatur dolor ratione necessitatibus nihil mollitia.', 126, 1, 0, '2025-10-01 15:51:37', '2025-08-27 02:06:57'),
(7, 'Iste nulla at dolorem esse. Sit qui autem totam quas minima eius voluptatibus. Vitae iure facere aut perferendis nemo mollitia.', 127, 1, 0, '2025-09-02 04:21:26', '2025-09-03 07:36:51'),
(8, 'Voluptates tenetur laudantium cupiditate tenetur. Aut quis minus in aut ipsum et quis. Sed sit nulla animi magni soluta.', 128, 1, 0, '2025-07-16 01:36:54', '2025-09-09 01:21:51'),
(9, 'Ad molestiae omnis repellat voluptatem. Blanditiis perferendis autem temporibus quibusdam qui doloribus dolores ut. Consequatur consectetur exercitationem est. Est voluptatem eveniet et non.', 129, 0, 0, '2025-08-02 17:54:57', '2025-09-28 19:19:39'),
(10, 'Quo et ut qui tempore adipisci qui similique. Quas mollitia quia id reprehenderit magnam omnis omnis. Suscipit earum deleniti odit eos eligendi. Optio quo est facere et enim ipsa.', 130, 0, 0, '2025-08-20 07:10:05', '2025-08-22 10:49:24'),
(11, 'Est numquam eum rerum molestiae cumque quasi quia. Id quia quia adipisci saepe.', 131, 0, 0, '2025-08-11 17:05:40', '2025-09-18 16:47:03'),
(12, 'Eum et repellat harum iste sapiente. Et voluptatem quia a voluptatem et autem. Provident qui voluptatem eum accusantium quia est. Nisi voluptas assumenda ea veritatis tempore commodi reiciendis.', 132, 0, 0, '2025-09-30 02:06:06', '2025-08-19 01:40:59'),
(13, 'Molestias aut assumenda quia dolorem aliquam est ut. Eaque id nihil ex praesentium officia recusandae. At magni reiciendis aut quae totam nobis est autem.', 133, 0, 0, '2025-07-21 05:23:59', '2025-08-09 14:49:17'),
(14, 'Porro veritatis odio deleniti eveniet est. Quibusdam porro tempore excepturi dolor quasi accusamus earum facilis. Sed ut dolor cum possimus quas atque minima voluptatem.', 134, 0, 0, '2025-07-18 16:31:28', '2025-08-26 17:58:09'),
(15, 'Tempore quos ipsam quas in qui. Voluptatem beatae suscipit temporibus nam. Sed quidem voluptas eos odit culpa et molestias.', 135, 1, 0, '2025-09-01 19:18:15', '2025-07-23 15:15:49'),
(16, 'Et facilis doloribus dignissimos. Voluptas libero est unde quisquam quia unde exercitationem qui. Molestiae numquam porro nam nobis.', 136, 1, 0, '2025-08-14 11:25:52', '2025-07-21 13:38:59'),
(17, 'Nobis vel qui dolores. Ex doloremque praesentium debitis enim rerum porro. Voluptatibus tempora minus consequatur. Fugiat deserunt vel et cumque fugiat.', 137, 0, 0, '2025-09-05 13:18:09', '2025-08-02 07:24:55'),
(18, 'Placeat possimus quia nobis rerum. Vitae aut autem qui in quam. Et aut quibusdam consectetur. Et in ut recusandae placeat molestiae ut consequuntur quia.', 138, 1, 0, '2025-08-11 21:51:22', '2025-08-30 08:35:37'),
(19, 'Ab totam et placeat et molestiae dolorem nihil. Eligendi repellendus sapiente consequatur quisquam maiores. Voluptatem et veritatis quibusdam et.', 139, 1, 0, '2025-10-11 01:20:39', '2025-09-01 19:37:34'),
(20, 'Ut aperiam voluptas enim voluptas sint rerum nulla quia. Aliquid explicabo odit quia optio dolor nisi. Fuga maiores dolores nisi. Rerum labore reprehenderit possimus deleniti culpa laborum ut.', 140, 1, 0, '2025-08-21 14:17:15', '2025-09-28 17:40:39'),
(21, 'Sapiente sed nihil ducimus dolores consequatur sunt. Molestiae voluptatem enim at enim placeat. Labore debitis hic ea quo ut.', 141, 1, 0, '2025-08-20 18:04:59', '2025-09-11 15:26:33'),
(22, 'Ex rerum consectetur eveniet officia porro. Vero neque quos in aut nihil quo. Eius repellat maiores dolores omnis sint. Rerum ut quam velit optio sunt aut et quam.', 142, 1, 0, '2025-09-25 22:24:47', '2025-08-09 11:33:10'),
(23, 'Eum et itaque laudantium adipisci dolor. Ipsam consectetur numquam repudiandae dicta molestiae accusamus. Voluptas eum qui quia sint dolore.', 143, 0, 0, '2025-08-24 18:14:31', '2025-09-11 09:37:03'),
(24, 'Et quidem et similique dicta. Exercitationem dicta quis qui quaerat. Quis quam dignissimos culpa laudantium. Nesciunt libero nihil veritatis ut placeat.', 144, 0, 0, '2025-09-10 01:32:09', '2025-07-15 16:55:30'),
(25, 'Blanditiis nesciunt sit sint odit. Nobis mollitia reprehenderit nisi repellat et. Doloremque sed velit perferendis pariatur quam minus aut.', 145, 0, 0, '2025-09-01 22:10:14', '2025-09-26 18:01:38'),
(26, 'Aut velit in voluptates in. Quia ut animi corrupti praesentium ut ad.', 146, 1, 0, '2025-10-12 16:37:54', '2025-09-28 18:22:10'),
(27, 'Voluptas aut ipsam asperiores est in accusantium. Corrupti ipsum magnam at placeat dolore error sunt.', 147, 1, 0, '2025-08-26 06:28:48', '2025-07-27 04:24:24'),
(28, 'Labore voluptatibus qui magni perspiciatis ad officia libero. Sint magnam ullam molestiae natus labore distinctio voluptas et. Vel ab molestias ipsam ullam facere.', 148, 0, 0, '2025-10-04 17:27:23', '2025-10-09 21:59:00'),
(29, 'Et beatae ut voluptas quo voluptates. Distinctio qui velit eveniet laborum nesciunt itaque et. Velit est quo et nesciunt. Doloribus itaque qui ut soluta.', 149, 0, 0, '2025-08-07 09:04:31', '2025-10-10 13:06:36'),
(30, 'Est qui ut quis aut. Earum ex id voluptatem sint tempora maxime. Esse voluptatum occaecati magni. Aperiam nihil amet eum laborum.', 150, 1, 0, '2025-07-21 18:24:13', '2025-07-21 16:44:10'),
(31, 'Quo molestiae et nostrum voluptatem laudantium et non vero. Fugit molestiae quo distinctio libero. Laboriosam rerum numquam quae culpa.', 151, 0, 0, '2025-07-31 21:06:39', '2025-10-09 14:49:31'),
(32, 'Quisquam nostrum nesciunt voluptate recusandae vero autem et repellendus. Nihil et assumenda facilis quia est ipsam dignissimos.', 152, 1, 0, '2025-07-30 16:46:24', '2025-08-15 23:07:09'),
(33, 'Nisi temporibus consequatur et ea optio natus. Sunt beatae explicabo et et commodi voluptatibus. Et non molestiae id. Ratione sapiente accusantium rerum.', 153, 1, 0, '2025-10-08 04:22:45', '2025-08-16 20:10:18'),
(34, 'Aut repellat architecto illo aliquid ea laborum suscipit. Et animi consequatur dolore eos qui recusandae est. Et molestiae aut aut rerum distinctio ut.', 154, 0, 0, '2025-07-29 15:10:48', '2025-08-28 17:06:21'),
(35, 'Quibusdam autem earum voluptatem. Illo sit asperiores alias culpa. Ut ipsum itaque est autem ullam.', 155, 1, 0, '2025-08-06 16:56:14', '2025-08-26 12:16:32'),
(36, 'Magni omnis laboriosam eaque repudiandae non sunt. Incidunt sunt et culpa eos. Qui qui deserunt possimus molestiae consequuntur ut nihil.', 156, 0, 0, '2025-08-05 06:49:44', '2025-07-19 07:54:13'),
(37, 'A fugiat molestiae aut nemo nihil. Recusandae qui atque rem aut in error ipsum. Iste ut saepe maxime beatae quos impedit quasi corrupti. Architecto nihil voluptas illum et rem.', 157, 1, 0, '2025-08-28 07:48:20', '2025-09-29 20:19:48'),
(38, 'Tempora perspiciatis perspiciatis voluptate sit ab consectetur. Eum dolor molestiae molestias ratione sit.', 158, 1, 0, '2025-08-28 05:26:12', '2025-09-08 17:24:14'),
(39, 'Est nihil perspiciatis dolores aut minima itaque sunt. Placeat ratione est porro dolor vel et quaerat aut. Iste voluptatem aut id voluptas.', 159, 1, 0, '2025-10-01 11:59:24', '2025-08-16 19:45:50'),
(40, 'Hic maxime est nobis est et. Deserunt vel aut corrupti tenetur et natus ad. Quos deserunt fugit quo facilis recusandae ad neque.', 160, 0, 0, '2025-09-12 12:15:15', '2025-10-12 03:37:29'),
(41, 'Iusto velit sit officia fuga ipsa neque. Incidunt numquam atque maiores iusto quia quia. Optio ad dolorem eum inventore.', 161, 1, 0, '2025-09-24 07:43:41', '2025-10-29 06:09:27'),
(42, 'Libero dolorum nihil fugit qui. Qui quos vero eaque. Voluptatum est corrupti quia labore alias. Rem cupiditate sit voluptatum nostrum deleniti quis sunt.', 162, 1, 0, '2025-09-24 21:03:13', '2025-09-06 01:48:09'),
(43, 'In doloremque quisquam qui placeat neque. In iure libero dicta laudantium adipisci. Illo sit ex at omnis provident omnis libero. Nulla sequi molestias nobis autem ea.', 163, 0, 0, '2025-07-23 01:31:31', '2025-07-23 08:53:51'),
(44, 'Repellendus sint aut dolor ea asperiores. Mollitia sed facere nihil qui voluptate non. Doloribus maiores aspernatur voluptas rerum placeat autem est.', 164, 1, 0, '2025-08-25 17:48:05', '2025-08-28 17:43:07'),
(45, 'Id a pariatur ullam et nostrum. Occaecati consequuntur est laboriosam nihil nesciunt dolorem consequatur. Possimus nostrum officiis est sunt non. Culpa earum amet reiciendis.', 165, 0, 0, '2025-07-21 17:50:24', '2025-08-13 10:56:01'),
(46, 'Occaecati minus mollitia vel fugiat. Porro sapiente corrupti sint dolor nulla dolor vitae aut. Sed esse fugit in magni quidem.', 166, 1, 0, '2025-07-29 19:15:42', '2025-07-17 13:30:50'),
(47, 'Libero eius eos nihil est rerum. Libero quis culpa quis aut. Sit iste recusandae architecto dicta.', 167, 0, 0, '2025-09-19 14:29:09', '2025-10-12 21:51:26'),
(48, 'Qui illum nemo aut voluptatem eos. Adipisci voluptatem deleniti porro quia qui dicta. Eos nam error rem velit incidunt suscipit. Id quaerat adipisci modi esse delectus.', 168, 1, 0, '2025-09-07 13:27:19', '2025-10-12 18:37:18'),
(49, 'Et ullam ut voluptas sit commodi. Esse quia repellendus nisi ut est ad. Voluptatibus magnam alias voluptatem sunt suscipit.', 169, 0, 0, '2025-07-17 12:18:48', '2025-09-10 20:02:08'),
(50, 'Ut sunt dicta est accusantium suscipit. Sapiente odit et non impedit voluptas. Deleniti est voluptatibus fugiat sequi cupiditate voluptatibus.', 170, 1, 0, '2025-08-10 20:57:23', '2025-08-30 04:40:07'),
(51, 'test', 2, 1, 0, '2025-10-18 11:24:48', '2025-10-28 10:09:50');

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
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_15_183145_create_cities_table', 1),
(5, '2025_09_15_183146_create_majors_table', 1),
(6, '2025_09_15_184926_update_users_table', 1),
(7, '2025_09_15_194628_create_personal_access_tokens_table', 1),
(8, '2025_09_15_194716_add_api_token_to_users_table', 1),
(9, '2025_09_16_030526_create_media_table', 1),
(10, '2025_09_17_115931_create_feedback_table', 1),
(11, '2025_09_17_155955_create_contact_us_table', 1),
(12, '2025_09_17_161819_create_social_media_table', 1),
(13, '2025_09_17_165727_create_terms_table', 1),
(14, '2025_09_18_083908_create_plans_table', 1),
(15, '2025_09_18_084045_create_features_table', 1),
(16, '2025_09_18_084141_create_feature_plan_table', 1),
(17, '2025_09_20_151028_create_notifications_table', 1),
(18, '2025_09_20_151604_create_notify_users_table', 1),
(19, '2025_09_20_151651_create_alerts_table', 1),
(20, '2025_09_21_163846_create_messages_table', 1),
(21, '2025_09_21_201938_create_replies_table', 1),
(22, '2025_09_21_221712_create_interviews_table', 1),
(23, '2025_09_23_023104_create_subscriptions_table', 1),
(24, '2025_09_23_043208_create_retrievals_table', 1),
(25, '2025_09_24_125736_create_experiences_table', 1),
(26, '2025_09_24_141854_create_education_table', 1),
(27, '2025_09_24_142442_create_skills_table', 1),
(28, '2025_09_27_145603_add_total_period_to_experience', 1),
(29, '2025_09_27_151057_add_total_period_to_users_table', 1),
(30, '2025_09_27_154541_add_major_name_to_users_table', 1),
(31, '2025_09_27_155747_create_favorites_table', 1),
(32, '2025_09_28_091241_create_otps_table', 1),
(33, '2025_09_28_122101_create_sub_majors_table', 1),
(34, '2025_09_28_194417_add_sub_major_to_users_table', 1),
(35, '2025_10_09_104916_create_social_accounts_table', 1),
(36, '2025_10_12_153734_create_refresh_tokens_table', 1),
(37, '2025_10_16_130104_update_experiences_table', 2),
(38, '2025_10_19_120827_add_degree_to_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` enum('notification','alert','reminder') NOT NULL DEFAULT 'notification',
  `segments` varchar(255) DEFAULT NULL,
  `status` enum('planned','sent','unsent') NOT NULL DEFAULT 'planned',
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `type`, `segments`, `status`, `sent_at`, `created_at`, `updated_at`) VALUES
(1, 'مرحباً بك في منصتنا!', 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.', 'notification', '[\"recruiter\",\"admin\"]', 'sent', '2025-10-13 21:15:35', '2025-10-15 09:40:40', '2025-10-29 13:22:20'),
(2, 'مرحباً بالمرشحين الجدد!', 'مرحباً بك في منصتنا! ابدأ في بناء ملفك الشخصي واكتشف فرص عمل مذهلة تطابق مهاراتك وأهدافك المهنية.', 'notification', 'clients', 'sent', '2025-10-10 19:15:22', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(3, 'مرحباً بالمجندين الجدد!', 'مرحباً بك في منصة التوظيف الخاصة بنا! ابدأ في نشر الوظائف والعثور على المرشحين المثاليين لمنظمتك.', 'notification', 'companies', 'sent', '2025-10-13 13:22:22', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(6, 'تنبيه تحديث أمني', 'تم إصدار تحديث أمني حرج. يرجى التأكد من أمان حسابك من خلال تحديث كلمة المرور وتمكين المصادقة الثنائية.', 'alert', 'admins,clients,companies', 'sent', '2025-10-11 12:13:16', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(8, 'وظائف تقنية جديدة متاحة', 'تم نشر وظائف تقنية مثيرة جديدة! تحقق من الفرص في تطوير البرمجيات وعلوم البيانات والأمن السيبراني.', 'notification', 'clients', 'sent', '2025-10-08 01:02:21', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(9, 'فرص العمل عن بُعد', 'اكتشف فرص العمل المرنة عن بُعد التي تسمح لك بالعمل من أي مكان في العالم.', 'notification', 'clients', 'sent', '2025-09-21 11:24:53', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(10, 'مناصب إدارية عليا مفتوحة', 'مناصب تنفيذية وإدارية عليا متاحة الآن. اتخذ الخطوة التالية في حياتك المهنية.', 'notification', 'clients', 'sent', '2025-09-30 21:35:31', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(11, 'تنبيه صيانة مجدولة', 'سيتم إجراء صيانة مجدولة على خوادمنا. قد تكون المنصة غير متاحة مؤقتاً خلال هذا الوقت. نعتذر عن أي إزعاج.', 'alert', 'admins,clients,companies', 'planned', NULL, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(12, 'صيانة طارئة مطلوبة', 'مطلوب صيانة طارئة لمعالجة مشكلة حرجة. ستتم استعادة الخدمات قريباً.', 'alert', 'admins,clients,companies', 'sent', '2025-10-04 17:30:47', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(13, 'صيانة قاعدة البيانات مجدولة', 'صيانة قاعدة البيانات مجدولة لهذه الليلة. قد تكون بعض الميزات غير متاحة مؤقتاً.', 'alert', 'admins', 'planned', NULL, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(14, 'تنبيه تحديث أمني', 'تم إصدار تحديث أمني حرج. يرجى التأكد من أمان حسابك من خلال تحديث كلمة المرور وتمكين المصادقة الثنائية.', 'alert', 'admins,clients,companies', 'sent', '2025-09-17 15:20:56', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(15, 'تم اكتشاف نشاط مشبوه', 'تم اكتشاف أنماط تسجيل دخول غير عادية. يرجى مراجعة نشاط المستخدم وسجلات الأمان.', 'alert', 'admins', 'sent', '2025-10-04 07:55:13', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(16, 'تذكير أمان كلمة المرور', 'لأمانك، يرجى التفكير في تحديث كلمة المرور بانتظام وتمكين المصادقة الثنائية.', 'notification', 'admins,clients,companies', 'sent', '2025-09-29 17:38:48', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(17, 'تذكير بتحديث الملف الشخصي', 'ملفك الشخصي غير مكتمل. يرجى تحديث معلوماتك لتحسين وضوحك لأصحاب العمل المحتملين وزيادة فرصك في العثور على الفرصة المناسبة.', 'reminder', 'clients', 'sent', '2025-10-13 11:43:17', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(18, 'تذكير تحديث ملف الشركة', 'حافظ على تحديث ملف شركتك لجذب أفضل المرشحين. حدث معلومات شركتك ونشرات الوظائف.', 'notification', 'companies', 'sent', '2025-10-03 07:03:49', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(19, 'أكمل تقييم المهارات الخاص بك', 'خذ تقييم المهارات الخاص بنا لعرض قدراتك وتحسين وضوح ملفك الشخصي لأصحاب العمل المحتملين.', 'notification', 'clients', 'sent', '2025-09-18 12:02:02', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(20, 'النشرة الإخبارية الأسبوعية - رؤى الصناعة', 'اقرأ نشرتنا الإخبارية الأسبوعية للحصول على أحدث رؤى الصناعة واتجاهات سوق العمل ونصائح مهنية من خبرائنا.', 'notification', 'admins,clients,companies', 'sent', '2025-09-24 19:03:07', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(21, 'نصائح التطوير المهني الشهرية', 'عزز آفاقك المهنية مع نصائح وموارد التطوير المهني الشاملة.', 'notification', 'clients', 'sent', '2025-10-11 08:39:14', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(22, 'تحديث أخبار الصناعة', 'ابق محدثاً بأحدث أخبار الصناعة والاتجاهات التي قد تؤثر على حياتك المهنية وبحثك عن العمل.', 'notification', 'admins,clients,companies', 'sent', '2025-10-03 04:12:40', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(23, 'ميزات جديدة متاحة!', 'لقد أضفنا ميزات جديدة لتحسين تجربتك. تحقق من أحدث التحديثات بما في ذلك وظائف البحث المحسنة وخوارزميات المطابقة الأفضل.', 'notification', 'admins,clients,companies', 'sent', '2025-09-29 13:23:57', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(24, 'تطبيق الهاتف المحمول متاح الآن', 'حمل تطبيقنا الجديد للهاتف المحمول لنظامي iOS و Android للوصول إلى حسابك أثناء التنقل وتلقي الإشعارات الفورية.', 'notification', 'admins,clients,companies', 'sent', '2025-10-05 01:36:47', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(25, 'ميزات مميزة مفتوحة', 'تهانينا! لقد فتحت ميزات مميزة. استمتع بوظائف محسنة ودعم ذو أولوية.', 'notification', 'admins,clients,companies', 'sent', '2025-09-28 02:18:02', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(26, 'صيانة النظام القادمة', 'ستحدث صيانة مجدولة الأسبوع القادم. يرجى التخطيط وفقاً لذلك.', 'alert', 'admins,clients,companies', 'planned', NULL, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(27, 'ميزة جديدة قادمة قريباً', 'نحن متحمسون للإعلان عن ميزة جديدة ستُصدر الشهر القادم. ابق متابعاً للتحديثات!', 'notification', 'admins,clients,companies', 'planned', NULL, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(28, 'تحيات العطلة', 'نتمنى لك ولعائلتك موسم عطلات رائع! شكراً لكونك جزءاً من مجتمعنا.', 'notification', 'admins,clients,companies', 'planned', NULL, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(29, 'فشل في تسليم البريد الإلكتروني', 'واجهنا مشكلة في تسليم إشعار البريد الإلكتروني الخاص بك. يرجى التحقق من إعدادات البريد الإلكتروني.', 'notification', 'admins,clients,companies', 'unsent', NULL, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(30, 'فشل تسليم الرسائل النصية', 'فشل تسليم إشعار الرسائل النصية لبعض المستخدمين. يرجى مراجعة سجلات التسليم.', 'alert', 'admins', 'unsent', NULL, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(31, 'فشل الإشعار المباشر', 'فشل تسليم الإشعار المباشر. يرجى التحقق من إعدادات جهازك واتصال الإنترنت.', 'notification', 'clients', 'unsent', NULL, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(32, 'تذكير بموعد المقابلة', 'لديك مقابلة مجدولة قريباً. يرجى التحضير للمقابلة ومراجعة تفاصيل الوظيفة.', 'reminder', 'clients', 'sent', '2025-09-18 18:09:24', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(33, 'تذكير بتجديد الاشتراك', 'اشتراكك سينتهي قريباً. يرجى تجديد اشتراكك للاستمرار في الاستفادة من جميع الميزات.', 'reminder', 'admins,clients,companies', 'sent', '2025-09-15 23:40:11', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(34, 'تذكير بتحديث كلمة المرور', 'لم تقم بتحديث كلمة المرور منذ فترة طويلة. يرجى تحديث كلمة المرور لضمان أمان حسابك.', 'reminder', 'admins,clients,companies', 'sent', '2025-09-27 07:44:26', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(35, 'تذكير بتحميل المستندات', 'لم تقم بتحميل جميع المستندات المطلوبة. يرجى تحميل المستندات المفقودة لإكمال ملفك الشخصي.', 'reminder', 'clients', 'sent', '2025-10-11 18:35:03', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(36, 'تذكير بإنهاء التسجيل', 'لم تكمل عملية التسجيل. يرجى إكمال التسجيل للوصول إلى جميع ميزات المنصة.', 'reminder', 'admins,clients,companies', 'sent', '2025-10-05 15:01:05', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(37, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', 'alert', '[\"candidate\",\"recruiter\"]', 'sent', NULL, '2025-10-18 11:49:55', '2025-10-18 11:49:55'),
(38, 'Security Alert', 'Check out this week\'s featured service providers and special offers.', 'alert', '[\"admin\"]', 'sent', NULL, '2025-10-29 12:13:00', '2025-10-29 12:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `notify_users`
--

CREATE TABLE `notify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `notification_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notify_users`
--

INSERT INTO `notify_users` (`id`, `user_id`, `notification_id`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(2, '6', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(51, '2', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(52, '4', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(53, '8', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(54, '9', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(55, '10', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(56, '11', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(57, '12', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(58, '13', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(59, '14', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(60, '15', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(61, '16', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(62, '17', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(63, '18', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(64, '19', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(65, '20', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(66, '21', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(67, '22', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(68, '23', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(69, '24', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(70, '25', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(71, '26', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(72, '27', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(73, '28', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(74, '45', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(75, '47', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(76, '48', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(77, '49', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(78, '50', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(79, '51', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(80, '53', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(81, '54', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(82, '55', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(83, '57', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(84, '60', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(85, '62', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(86, '67', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(87, '69', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(88, '73', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(89, '78', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(90, '83', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(91, '85', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(92, '91', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(93, '94', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(94, '96', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(95, '98', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(96, '99', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(97, '102', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(98, '107', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(99, '109', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(100, '115', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(101, '3', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(102, '5', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(103, '7', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(104, '29', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(105, '30', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(106, '31', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(107, '32', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(108, '33', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(109, '34', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(110, '35', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(111, '36', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(112, '37', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(113, '38', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(114, '41', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(115, '43', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(116, '52', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(117, '58', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(118, '59', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(119, '61', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(120, '63', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(121, '65', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(122, '70', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(123, '71', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(124, '72', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(125, '76', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(126, '79', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(127, '81', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(128, '84', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(129, '92', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(130, '97', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(131, '100', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(132, '101', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(133, '104', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(134, '106', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(135, '110', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(136, '112', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(137, '113', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(138, '114', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(139, '117', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(140, '118', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(141, '120', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(219, '1', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(220, '6', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(221, '39', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(222, '40', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(223, '42', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(224, '44', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(225, '46', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(226, '56', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(227, '64', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(228, '66', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(229, '68', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(230, '74', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(231, '75', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(232, '77', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(233, '80', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(234, '82', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(235, '86', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(236, '87', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(237, '88', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(238, '89', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(239, '90', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(240, '93', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(241, '95', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(242, '103', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(243, '105', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(244, '108', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(245, '111', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(246, '2', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(247, '4', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(248, '8', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(249, '9', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(250, '10', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(251, '11', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(252, '12', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(253, '13', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(254, '14', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(255, '15', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(256, '16', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(257, '17', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(258, '18', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(259, '19', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(260, '20', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(261, '21', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(262, '22', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(263, '23', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(264, '24', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(265, '25', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(266, '26', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(267, '27', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(268, '28', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(319, '2', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(320, '4', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(321, '8', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(322, '9', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(323, '10', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(324, '11', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(325, '12', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(326, '13', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(327, '14', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(328, '15', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(329, '16', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(330, '17', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(331, '18', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(332, '19', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(333, '20', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(334, '21', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(335, '22', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(336, '23', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(337, '24', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(338, '25', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(339, '26', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(340, '27', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(341, '28', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(342, '45', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(343, '47', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(344, '48', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(345, '49', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(346, '50', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(347, '51', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(348, '53', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(349, '54', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(350, '55', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(351, '57', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(352, '60', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(353, '62', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(354, '67', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(355, '69', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(356, '73', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(357, '78', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(358, '83', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(359, '85', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(360, '91', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(361, '94', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(362, '96', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(363, '98', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(364, '99', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(365, '102', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(366, '107', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(367, '109', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(368, '115', 8, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(369, '2', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(370, '4', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(371, '8', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(372, '9', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(373, '10', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(374, '11', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(375, '12', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(376, '13', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(377, '14', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(378, '15', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(379, '16', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(380, '17', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(381, '18', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(382, '19', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(383, '20', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(384, '21', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(385, '22', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(386, '23', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(387, '24', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(388, '25', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(389, '26', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(390, '27', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(391, '28', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(392, '45', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(393, '47', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(394, '48', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(395, '49', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(396, '50', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(397, '51', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(398, '53', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(399, '54', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(400, '55', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(401, '57', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(402, '60', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(403, '62', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(404, '67', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(405, '69', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(406, '73', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(407, '78', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(408, '83', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(409, '85', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(410, '91', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(411, '94', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(412, '96', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(413, '98', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(414, '99', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(415, '102', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(416, '107', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(417, '109', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(418, '115', 9, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(419, '2', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(420, '4', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(421, '8', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(422, '9', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(423, '10', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(424, '11', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(425, '12', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(426, '13', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(427, '14', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(428, '15', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(429, '16', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(430, '17', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(431, '18', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(432, '19', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(433, '20', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(434, '21', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(435, '22', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(436, '23', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(437, '24', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(438, '25', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(439, '26', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(440, '27', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(441, '28', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(442, '45', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(443, '47', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(444, '48', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(445, '49', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(446, '50', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(447, '51', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(448, '53', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(449, '54', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(450, '55', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(451, '57', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(452, '60', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(453, '62', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(454, '67', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(455, '69', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(456, '73', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(457, '78', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(458, '83', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(459, '85', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(460, '91', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(461, '94', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(462, '96', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(463, '98', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(464, '99', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(465, '102', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(466, '107', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(467, '109', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(468, '115', 10, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(469, '1', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(470, '6', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(471, '39', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(472, '40', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(473, '42', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(474, '44', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(475, '46', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(476, '56', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(477, '64', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(478, '66', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(479, '68', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(480, '74', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(481, '75', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(482, '77', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(483, '80', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(484, '82', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(485, '86', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(486, '87', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(487, '88', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(488, '89', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(489, '90', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(490, '93', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(491, '95', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(492, '103', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(493, '105', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(494, '108', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(495, '111', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(496, '2', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(497, '4', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(498, '8', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(499, '9', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(500, '10', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(501, '11', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(502, '12', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(503, '13', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(504, '14', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(505, '15', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(506, '16', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(507, '17', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(508, '18', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(509, '19', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(510, '20', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(511, '21', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(512, '22', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(513, '23', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(514, '24', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(515, '25', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(516, '26', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(517, '27', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(518, '28', 11, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(519, '1', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(520, '6', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(521, '39', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(522, '40', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(523, '42', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(524, '44', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(525, '46', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(526, '56', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(527, '64', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(528, '66', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(529, '68', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(530, '74', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(531, '75', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(532, '77', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(533, '80', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(534, '82', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(535, '86', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(536, '87', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(537, '88', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(538, '89', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(539, '90', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(540, '93', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(541, '95', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(542, '103', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(543, '105', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(544, '108', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(545, '111', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(546, '2', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(547, '4', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(548, '8', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(549, '9', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(550, '10', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(551, '11', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(552, '12', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(553, '13', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(554, '14', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(555, '15', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(556, '16', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(557, '17', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(558, '18', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(559, '19', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(560, '20', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(561, '21', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(562, '22', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(563, '23', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(564, '24', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(565, '25', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(566, '26', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(567, '27', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(568, '28', 12, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(569, '1', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(570, '6', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(571, '39', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(572, '40', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(573, '42', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(574, '44', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(575, '46', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(576, '56', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(577, '64', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(578, '66', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(579, '68', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(580, '74', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(581, '75', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(582, '77', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(583, '80', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(584, '82', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(585, '86', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(586, '87', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(587, '88', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(588, '89', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(589, '90', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(590, '93', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(591, '95', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(592, '103', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(593, '105', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(594, '108', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(595, '111', 13, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(596, '1', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(597, '6', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(598, '39', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(599, '40', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(600, '42', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(601, '44', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(602, '46', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(603, '56', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(604, '64', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(605, '66', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(606, '68', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(607, '74', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(608, '75', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(609, '77', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(610, '80', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(611, '82', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(612, '86', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(613, '87', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(614, '88', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(615, '89', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(616, '90', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(617, '93', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(618, '95', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(619, '103', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(620, '105', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(621, '108', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(622, '111', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(623, '2', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(624, '4', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(625, '8', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(626, '9', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(627, '10', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(628, '11', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(629, '12', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(630, '13', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(631, '14', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(632, '15', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(633, '16', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(634, '17', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(635, '18', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(636, '19', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(637, '20', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(638, '21', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(639, '22', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(640, '23', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(641, '24', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(642, '25', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(643, '26', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(644, '27', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(645, '28', 14, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(646, '1', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(647, '6', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(648, '39', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(649, '40', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(650, '42', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(651, '44', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(652, '46', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(653, '56', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(654, '64', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(655, '66', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(656, '68', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(657, '74', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(658, '75', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(659, '77', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(660, '80', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(661, '82', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(662, '86', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(663, '87', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(664, '88', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(665, '89', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(666, '90', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(667, '93', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(668, '95', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(669, '103', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(670, '105', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(671, '108', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(672, '111', 15, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(673, '1', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(674, '6', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(675, '39', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(676, '40', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(677, '42', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(678, '44', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(679, '46', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(680, '56', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(681, '64', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(682, '66', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(683, '68', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(684, '74', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(685, '75', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(686, '77', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(687, '80', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(688, '82', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(689, '86', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(690, '87', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(691, '88', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(692, '89', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(693, '90', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(694, '93', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(695, '95', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(696, '103', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(697, '105', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(698, '108', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(699, '111', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(700, '2', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(701, '4', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(702, '8', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(703, '9', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(704, '10', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(705, '11', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(706, '12', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(707, '13', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(708, '14', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(709, '15', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(710, '16', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(711, '17', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(712, '18', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(713, '19', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(714, '20', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(715, '21', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(716, '22', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(717, '23', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(718, '24', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(719, '25', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(720, '26', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(721, '27', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(722, '28', 16, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(723, '2', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(724, '4', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(725, '8', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(726, '9', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(727, '10', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(728, '11', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(729, '12', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(730, '13', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(731, '14', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(732, '15', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(733, '16', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(734, '17', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(735, '18', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(736, '19', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(737, '20', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(738, '21', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(739, '22', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(740, '23', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(741, '24', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(742, '25', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(743, '26', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(744, '27', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(745, '28', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(746, '45', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(747, '47', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(748, '48', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(749, '49', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(750, '50', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(751, '51', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(752, '53', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(753, '54', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(754, '55', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(755, '57', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(756, '60', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(757, '62', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(758, '67', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(759, '69', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(760, '73', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(761, '78', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(762, '83', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(763, '85', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(764, '91', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(765, '94', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(766, '96', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(767, '98', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(768, '99', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(769, '102', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(770, '107', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(771, '109', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(772, '115', 17, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(773, '3', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(774, '5', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(775, '7', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(776, '29', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(777, '30', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(778, '31', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(779, '32', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(780, '33', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(781, '34', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(782, '35', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(783, '36', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(784, '37', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(785, '38', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(786, '41', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(787, '43', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(788, '52', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(789, '58', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(790, '59', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(791, '61', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(792, '63', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(793, '65', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(794, '70', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(795, '71', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(796, '72', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(797, '76', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(798, '79', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(799, '81', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(800, '84', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(801, '92', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(802, '97', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(803, '100', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(804, '101', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(805, '104', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(806, '106', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(807, '110', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(808, '112', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(809, '113', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(810, '114', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(811, '117', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(812, '118', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(813, '120', 18, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(814, '2', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(815, '4', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(816, '8', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(817, '9', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(818, '10', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(819, '11', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(820, '12', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(821, '13', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(822, '14', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(823, '15', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(824, '16', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(825, '17', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(826, '18', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(827, '19', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(828, '20', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(829, '21', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(830, '22', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(831, '23', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(832, '24', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(833, '25', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(834, '26', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(835, '27', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(836, '28', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(837, '45', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(838, '47', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(839, '48', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(840, '49', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(841, '50', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(842, '51', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(843, '53', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(844, '54', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(845, '55', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(846, '57', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(847, '60', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(848, '62', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(849, '67', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(850, '69', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(851, '73', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(852, '78', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(853, '83', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(854, '85', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(855, '91', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(856, '94', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(857, '96', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(858, '98', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(859, '99', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(860, '102', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(861, '107', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(862, '109', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(863, '115', 19, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(864, '1', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(865, '6', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(866, '39', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(867, '40', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(868, '42', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(869, '44', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(870, '46', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(871, '56', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(872, '64', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(873, '66', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(874, '68', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(875, '74', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(876, '75', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(877, '77', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(878, '80', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(879, '82', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(880, '86', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(881, '87', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(882, '88', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(883, '89', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(884, '90', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(885, '93', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(886, '95', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(887, '103', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(888, '105', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(889, '108', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(890, '111', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(891, '2', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(892, '4', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(893, '8', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(894, '9', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(895, '10', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(896, '11', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(897, '12', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(898, '13', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(899, '14', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(900, '15', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(901, '16', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(902, '17', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(903, '18', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(904, '19', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(905, '20', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(906, '21', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(907, '22', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(908, '23', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(909, '24', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(910, '25', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(911, '26', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(912, '27', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(913, '28', 20, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(914, '2', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(915, '4', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(916, '8', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(917, '9', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(918, '10', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(919, '11', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(920, '12', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(921, '13', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(922, '14', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(923, '15', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(924, '16', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(925, '17', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(926, '18', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(927, '19', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(928, '20', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(929, '21', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(930, '22', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(931, '23', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(932, '24', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(933, '25', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(934, '26', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(935, '27', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(936, '28', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(937, '45', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(938, '47', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(939, '48', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(940, '49', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(941, '50', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(942, '51', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(943, '53', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(944, '54', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(945, '55', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(946, '57', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(947, '60', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(948, '62', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(949, '67', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(950, '69', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(951, '73', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(952, '78', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(953, '83', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(954, '85', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(955, '91', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(956, '94', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(957, '96', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(958, '98', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(959, '99', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(960, '102', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(961, '107', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(962, '109', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(963, '115', 21, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(964, '1', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(965, '6', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(966, '39', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(967, '40', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(968, '42', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(969, '44', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(970, '46', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(971, '56', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(972, '64', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(973, '66', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(974, '68', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(975, '74', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(976, '75', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(977, '77', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(978, '80', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(979, '82', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(980, '86', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(981, '87', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(982, '88', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(983, '89', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(984, '90', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(985, '93', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(986, '95', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(987, '103', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(988, '105', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(989, '108', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(990, '111', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(991, '2', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(992, '4', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(993, '8', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(994, '9', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(995, '10', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(996, '11', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(997, '12', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41');
INSERT INTO `notify_users` (`id`, `user_id`, `notification_id`, `created_at`, `updated_at`) VALUES
(998, '13', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(999, '14', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1000, '15', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1001, '16', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1002, '17', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1003, '18', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1004, '19', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1005, '20', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1006, '21', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1007, '22', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1008, '23', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1009, '24', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1010, '25', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1011, '26', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1012, '27', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1013, '28', 22, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1014, '1', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1015, '6', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1016, '39', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1017, '40', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1018, '42', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1019, '44', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1020, '46', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1021, '56', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1022, '64', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1023, '66', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1024, '68', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1025, '74', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1026, '75', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1027, '77', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1028, '80', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1029, '82', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1030, '86', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1031, '87', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1032, '88', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1033, '89', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1034, '90', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1035, '93', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1036, '95', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1037, '103', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1038, '105', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1039, '108', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1040, '111', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1041, '2', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1042, '4', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1043, '8', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1044, '9', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1045, '10', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1046, '11', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1047, '12', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1048, '13', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1049, '14', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1050, '15', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1051, '16', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1052, '17', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1053, '18', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1054, '19', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1055, '20', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1056, '21', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1057, '22', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1058, '23', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1059, '24', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1060, '25', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1061, '26', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1062, '27', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1063, '28', 23, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1064, '1', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1065, '6', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1066, '39', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1067, '40', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1068, '42', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1069, '44', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1070, '46', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1071, '56', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1072, '64', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1073, '66', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1074, '68', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1075, '74', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1076, '75', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1077, '77', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1078, '80', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1079, '82', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1080, '86', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1081, '87', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1082, '88', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1083, '89', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1084, '90', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1085, '93', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1086, '95', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1087, '103', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1088, '105', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1089, '108', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1090, '111', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1091, '2', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1092, '4', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1093, '8', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1094, '9', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1095, '10', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1096, '11', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1097, '12', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1098, '13', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1099, '14', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1100, '15', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1101, '16', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1102, '17', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1103, '18', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1104, '19', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1105, '20', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1106, '21', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1107, '22', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1108, '23', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1109, '24', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1110, '25', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1111, '26', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1112, '27', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1113, '28', 24, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1114, '1', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1115, '6', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1116, '39', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1117, '40', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1118, '42', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1119, '44', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1120, '46', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1121, '56', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1122, '64', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1123, '66', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1124, '68', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1125, '74', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1126, '75', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1127, '77', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1128, '80', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1129, '82', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1130, '86', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1131, '87', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1132, '88', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1133, '89', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1134, '90', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1135, '93', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1136, '95', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1137, '103', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1138, '105', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1139, '108', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1140, '111', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1141, '2', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1142, '4', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1143, '8', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1144, '9', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1145, '10', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1146, '11', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1147, '12', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1148, '13', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1149, '14', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1150, '15', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1151, '16', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1152, '17', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1153, '18', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1154, '19', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1155, '20', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1156, '21', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1157, '22', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1158, '23', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1159, '24', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1160, '25', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1161, '26', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1162, '27', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1163, '28', 25, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1164, '1', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1165, '6', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1166, '39', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1167, '40', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1168, '42', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1169, '44', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1170, '46', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1171, '56', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1172, '64', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1173, '66', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1174, '68', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1175, '74', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1176, '75', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1177, '77', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1178, '80', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1179, '82', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1180, '86', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1181, '87', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1182, '88', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1183, '89', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1184, '90', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1185, '93', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1186, '95', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1187, '103', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1188, '105', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1189, '108', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1190, '111', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1191, '2', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1192, '4', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1193, '8', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1194, '9', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1195, '10', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1196, '11', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1197, '12', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1198, '13', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1199, '14', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1200, '15', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1201, '16', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1202, '17', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1203, '18', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1204, '19', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1205, '20', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1206, '21', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1207, '22', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1208, '23', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1209, '24', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1210, '25', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1211, '26', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1212, '27', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1213, '28', 26, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1214, '1', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1215, '6', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1216, '39', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1217, '40', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1218, '42', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1219, '44', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1220, '46', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1221, '56', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1222, '64', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1223, '66', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1224, '68', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1225, '74', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1226, '75', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1227, '77', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1228, '80', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1229, '82', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1230, '86', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1231, '87', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1232, '88', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1233, '89', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1234, '90', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1235, '93', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1236, '95', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1237, '103', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1238, '105', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1239, '108', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1240, '111', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1241, '2', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1242, '4', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1243, '8', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1244, '9', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1245, '10', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1246, '11', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1247, '12', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1248, '13', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1249, '14', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1250, '15', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1251, '16', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1252, '17', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1253, '18', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1254, '19', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1255, '20', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1256, '21', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1257, '22', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1258, '23', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1259, '24', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1260, '25', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1261, '26', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1262, '27', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1263, '28', 27, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1264, '1', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1265, '6', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1266, '39', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1267, '40', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1268, '42', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1269, '44', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1270, '46', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1271, '56', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1272, '64', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1273, '66', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1274, '68', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1275, '74', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1276, '75', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1277, '77', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1278, '80', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1279, '82', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1280, '86', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1281, '87', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1282, '88', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1283, '89', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1284, '90', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1285, '93', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1286, '95', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1287, '103', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1288, '105', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1289, '108', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1290, '111', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1291, '2', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1292, '4', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1293, '8', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1294, '9', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1295, '10', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1296, '11', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1297, '12', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1298, '13', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1299, '14', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1300, '15', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1301, '16', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1302, '17', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1303, '18', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1304, '19', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1305, '20', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1306, '21', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1307, '22', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1308, '23', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1309, '24', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1310, '25', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1311, '26', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1312, '27', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1313, '28', 28, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1314, '1', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1315, '6', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1316, '39', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1317, '40', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1318, '42', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1319, '44', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1320, '46', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1321, '56', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1322, '64', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1323, '66', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1324, '68', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1325, '74', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1326, '75', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1327, '77', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1328, '80', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1329, '82', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1330, '86', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1331, '87', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1332, '88', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1333, '89', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1334, '90', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1335, '93', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1336, '95', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1337, '103', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1338, '105', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1339, '108', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1340, '111', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1341, '2', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1342, '4', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1343, '8', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1344, '9', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1345, '10', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1346, '11', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1347, '12', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1348, '13', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1349, '14', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1350, '15', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1351, '16', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1352, '17', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1353, '18', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1354, '19', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1355, '20', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1356, '21', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1357, '22', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1358, '23', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1359, '24', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1360, '25', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1361, '26', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1362, '27', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1363, '28', 29, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1364, '1', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1365, '6', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1366, '39', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1367, '40', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1368, '42', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1369, '44', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1370, '46', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1371, '56', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1372, '64', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1373, '66', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1374, '68', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1375, '74', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1376, '75', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1377, '77', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1378, '80', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1379, '82', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1380, '86', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1381, '87', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1382, '88', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1383, '89', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1384, '90', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1385, '93', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1386, '95', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1387, '103', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1388, '105', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1389, '108', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1390, '111', 30, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1391, '2', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1392, '4', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1393, '8', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1394, '9', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1395, '10', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1396, '11', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1397, '12', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1398, '13', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1399, '14', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1400, '15', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1401, '16', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1402, '17', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1403, '18', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1404, '19', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1405, '20', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1406, '21', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1407, '22', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1408, '23', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1409, '24', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1410, '25', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1411, '26', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1412, '27', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1413, '28', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1414, '45', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1415, '47', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1416, '48', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1417, '49', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1418, '50', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1419, '51', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1420, '53', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1421, '54', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1422, '55', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1423, '57', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1424, '60', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1425, '62', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1426, '67', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1427, '69', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1428, '73', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1429, '78', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1430, '83', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1431, '85', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1432, '91', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1433, '94', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1434, '96', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1435, '98', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1436, '99', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1437, '102', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1438, '107', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1439, '109', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1440, '115', 31, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1441, '2', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1442, '4', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1443, '8', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1444, '9', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1445, '10', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1446, '11', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1447, '12', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1448, '13', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1449, '14', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1450, '15', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1451, '16', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1452, '17', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1453, '18', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1454, '19', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1455, '20', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1456, '21', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1457, '22', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1458, '23', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1459, '24', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1460, '25', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1461, '26', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1462, '27', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1463, '28', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1464, '45', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1465, '47', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1466, '48', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1467, '49', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1468, '50', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1469, '51', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1470, '53', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1471, '54', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1472, '55', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1473, '57', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1474, '60', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1475, '62', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1476, '67', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1477, '69', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1478, '73', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1479, '78', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1480, '83', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1481, '85', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1482, '91', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1483, '94', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1484, '96', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1485, '98', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1486, '99', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1487, '102', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1488, '107', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1489, '109', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1490, '115', 32, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1491, '1', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1492, '6', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1493, '39', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1494, '40', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1495, '42', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1496, '44', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1497, '46', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1498, '56', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1499, '64', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1500, '66', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1501, '68', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1502, '74', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1503, '75', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1504, '77', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1505, '80', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1506, '82', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1507, '86', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1508, '87', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1509, '88', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1510, '89', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1511, '90', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1512, '93', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1513, '95', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1514, '103', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1515, '105', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1516, '108', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1517, '111', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1518, '2', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1519, '4', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1520, '8', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1521, '9', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1522, '10', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1523, '11', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1524, '12', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1525, '13', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1526, '14', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1527, '15', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1528, '16', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1529, '17', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1530, '18', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1531, '19', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1532, '20', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1533, '21', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1534, '22', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1535, '23', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1536, '24', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1537, '25', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1538, '26', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1539, '27', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1540, '28', 33, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1541, '1', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1542, '6', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1543, '39', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1544, '40', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1545, '42', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1546, '44', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1547, '46', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1548, '56', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1549, '64', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1550, '66', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1551, '68', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1552, '74', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1553, '75', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1554, '77', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1555, '80', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1556, '82', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1557, '86', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1558, '87', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1559, '88', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1560, '89', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1561, '90', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1562, '93', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1563, '95', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1564, '103', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1565, '105', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1566, '108', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1567, '111', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1568, '2', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1569, '4', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1570, '8', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1571, '9', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1572, '10', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1573, '11', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1574, '12', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1575, '13', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1576, '14', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1577, '15', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1578, '16', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1579, '17', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1580, '18', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1581, '19', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1582, '20', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1583, '21', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1584, '22', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1585, '23', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1586, '24', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1587, '25', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1588, '26', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1589, '27', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1590, '28', 34, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1591, '2', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1592, '4', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1593, '8', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1594, '9', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1595, '10', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1596, '11', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1597, '12', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1598, '13', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1599, '14', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1600, '15', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1601, '16', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1602, '17', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1603, '18', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1604, '19', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1605, '20', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1606, '21', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1607, '22', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1608, '23', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1609, '24', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1610, '25', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1611, '26', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1612, '27', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1613, '28', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1614, '45', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1615, '47', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1616, '48', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1617, '49', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1618, '50', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1619, '51', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1620, '53', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1621, '54', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1622, '55', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1623, '57', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1624, '60', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1625, '62', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1626, '67', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1627, '69', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1628, '73', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1629, '78', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1630, '83', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1631, '85', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1632, '91', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1633, '94', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1634, '96', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1635, '98', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1636, '99', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1637, '102', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1638, '107', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1639, '109', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1640, '115', 35, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1641, '1', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1642, '6', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1643, '39', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1644, '40', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1645, '42', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1646, '44', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1647, '46', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1648, '56', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1649, '64', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1650, '66', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1651, '68', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1652, '74', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1653, '75', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1654, '77', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1655, '80', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1656, '82', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1657, '86', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1658, '87', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1659, '88', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1660, '89', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1661, '90', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1662, '93', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1663, '95', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1664, '103', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1665, '105', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1666, '108', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1667, '111', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1668, '2', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1669, '4', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1670, '8', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1671, '9', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1672, '10', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1673, '11', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1674, '12', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1675, '13', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1676, '14', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1677, '15', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1678, '16', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1679, '17', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1680, '18', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1681, '19', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1682, '20', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1683, '21', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1684, '22', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1685, '23', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1686, '24', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1687, '25', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1688, '26', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1689, '27', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1690, '28', 36, '2025-10-15 09:40:41', '2025-10-15 09:40:41'),
(1691, '2', 37, NULL, NULL),
(1692, '4', 37, NULL, NULL),
(1693, '8', 37, NULL, NULL),
(1694, '3', 37, NULL, NULL),
(1695, '5', 37, NULL, NULL),
(1696, '7', 37, NULL, NULL),
(1697, '9', 37, NULL, NULL),
(1698, '10', 37, NULL, NULL),
(1699, '11', 37, NULL, NULL),
(1700, '12', 37, NULL, NULL),
(1701, '13', 37, NULL, NULL),
(1702, '14', 37, NULL, NULL),
(1703, '15', 37, NULL, NULL),
(1704, '16', 37, NULL, NULL),
(1705, '17', 37, NULL, NULL),
(1706, '18', 37, NULL, NULL),
(1707, '19', 37, NULL, NULL),
(1708, '20', 37, NULL, NULL),
(1709, '21', 37, NULL, NULL),
(1710, '22', 37, NULL, NULL),
(1711, '23', 37, NULL, NULL),
(1712, '24', 37, NULL, NULL),
(1713, '25', 37, NULL, NULL),
(1714, '26', 37, NULL, NULL),
(1715, '27', 37, NULL, NULL),
(1716, '28', 37, NULL, NULL),
(1717, '29', 37, NULL, NULL),
(1718, '30', 37, NULL, NULL),
(1719, '31', 37, NULL, NULL),
(1720, '32', 37, NULL, NULL),
(1721, '33', 37, NULL, NULL),
(1722, '34', 37, NULL, NULL),
(1723, '35', 37, NULL, NULL),
(1724, '36', 37, NULL, NULL),
(1725, '37', 37, NULL, NULL),
(1726, '38', 37, NULL, NULL),
(1727, '41', 37, NULL, NULL),
(1728, '43', 37, NULL, NULL),
(1729, '45', 37, NULL, NULL),
(1730, '47', 37, NULL, NULL),
(1731, '48', 37, NULL, NULL),
(1732, '49', 37, NULL, NULL),
(1733, '50', 37, NULL, NULL),
(1734, '51', 37, NULL, NULL),
(1735, '52', 37, NULL, NULL),
(1736, '53', 37, NULL, NULL),
(1737, '54', 37, NULL, NULL),
(1738, '55', 37, NULL, NULL),
(1739, '57', 37, NULL, NULL),
(1740, '58', 37, NULL, NULL),
(1741, '59', 37, NULL, NULL),
(1742, '60', 37, NULL, NULL),
(1743, '61', 37, NULL, NULL),
(1744, '62', 37, NULL, NULL),
(1745, '63', 37, NULL, NULL),
(1746, '65', 37, NULL, NULL),
(1747, '67', 37, NULL, NULL),
(1748, '69', 37, NULL, NULL),
(1749, '70', 37, NULL, NULL),
(1750, '71', 37, NULL, NULL),
(1751, '72', 37, NULL, NULL),
(1752, '73', 37, NULL, NULL),
(1753, '76', 37, NULL, NULL),
(1754, '78', 37, NULL, NULL),
(1755, '79', 37, NULL, NULL),
(1756, '81', 37, NULL, NULL),
(1757, '83', 37, NULL, NULL),
(1758, '84', 37, NULL, NULL),
(1759, '85', 37, NULL, NULL),
(1760, '91', 37, NULL, NULL),
(1761, '92', 37, NULL, NULL),
(1762, '94', 37, NULL, NULL),
(1763, '96', 37, NULL, NULL),
(1764, '97', 37, NULL, NULL),
(1765, '98', 37, NULL, NULL),
(1766, '99', 37, NULL, NULL),
(1767, '100', 37, NULL, NULL),
(1768, '101', 37, NULL, NULL),
(1769, '102', 37, NULL, NULL),
(1770, '104', 37, NULL, NULL),
(1771, '106', 37, NULL, NULL),
(1772, '107', 37, NULL, NULL),
(1773, '109', 37, NULL, NULL),
(1774, '110', 37, NULL, NULL),
(1775, '112', 37, NULL, NULL),
(1776, '113', 37, NULL, NULL),
(1777, '114', 37, NULL, NULL),
(1778, '115', 37, NULL, NULL),
(1779, '116', 37, NULL, NULL),
(1780, '117', 37, NULL, NULL),
(1781, '118', 37, NULL, NULL),
(1782, '119', 37, NULL, NULL),
(1783, '120', 37, NULL, NULL),
(1784, '123', 37, NULL, NULL),
(1785, '124', 37, NULL, NULL),
(1786, '126', 37, NULL, NULL),
(1787, '128', 37, NULL, NULL),
(1788, '129', 37, NULL, NULL),
(1789, '132', 37, NULL, NULL),
(1790, '133', 37, NULL, NULL),
(1791, '137', 37, NULL, NULL),
(1792, '138', 37, NULL, NULL),
(1793, '139', 37, NULL, NULL),
(1794, '140', 37, NULL, NULL),
(1795, '142', 37, NULL, NULL),
(1796, '144', 37, NULL, NULL),
(1797, '145', 37, NULL, NULL),
(1798, '146', 37, NULL, NULL),
(1799, '147', 37, NULL, NULL),
(1800, '149', 37, NULL, NULL),
(1801, '150', 37, NULL, NULL),
(1802, '151', 37, NULL, NULL),
(1803, '152', 37, NULL, NULL),
(1804, '153', 37, NULL, NULL),
(1805, '154', 37, NULL, NULL),
(1806, '155', 37, NULL, NULL),
(1807, '158', 37, NULL, NULL),
(1808, '159', 37, NULL, NULL),
(1809, '160', 37, NULL, NULL),
(1810, '161', 37, NULL, NULL),
(1811, '162', 37, NULL, NULL),
(1812, '163', 37, NULL, NULL),
(1813, '166', 37, NULL, NULL),
(1814, '168', 37, NULL, NULL),
(1815, '169', 37, NULL, NULL),
(1816, '1', 38, NULL, NULL),
(1817, '6', 38, NULL, NULL),
(1818, '39', 38, NULL, NULL),
(1819, '40', 38, NULL, NULL),
(1820, '42', 38, NULL, NULL),
(1821, '44', 38, NULL, NULL),
(1822, '46', 38, NULL, NULL),
(1823, '56', 38, NULL, NULL),
(1824, '64', 38, NULL, NULL),
(1825, '66', 38, NULL, NULL),
(1826, '68', 38, NULL, NULL),
(1827, '74', 38, NULL, NULL),
(1828, '75', 38, NULL, NULL),
(1829, '77', 38, NULL, NULL),
(1830, '80', 38, NULL, NULL),
(1831, '82', 38, NULL, NULL),
(1832, '86', 38, NULL, NULL),
(1833, '87', 38, NULL, NULL),
(1834, '88', 38, NULL, NULL),
(1835, '89', 38, NULL, NULL),
(1836, '90', 38, NULL, NULL),
(1837, '93', 38, NULL, NULL),
(1838, '95', 38, NULL, NULL),
(1839, '103', 38, NULL, NULL),
(1840, '105', 38, NULL, NULL),
(1841, '108', 38, NULL, NULL),
(1842, '111', 38, NULL, NULL),
(1843, '121', 38, NULL, NULL),
(1844, '122', 38, NULL, NULL),
(1845, '125', 38, NULL, NULL),
(1846, '127', 38, NULL, NULL),
(1847, '130', 38, NULL, NULL),
(1848, '131', 38, NULL, NULL),
(1849, '134', 38, NULL, NULL),
(1850, '135', 38, NULL, NULL),
(1851, '136', 38, NULL, NULL),
(1852, '141', 38, NULL, NULL),
(1853, '143', 38, NULL, NULL),
(1854, '148', 38, NULL, NULL),
(1855, '156', 38, NULL, NULL),
(1856, '157', 38, NULL, NULL),
(1857, '164', 38, NULL, NULL),
(1858, '165', 38, NULL, NULL),
(1859, '167', 38, NULL, NULL),
(1860, '170', 38, NULL, NULL),
(1861, '172', 38, NULL, NULL),
(1862, '7', 1, NULL, NULL),
(1863, '30', 1, NULL, NULL),
(1864, '129', 1, NULL, NULL),
(1865, '133', 1, NULL, NULL),
(1866, '139', 1, NULL, NULL),
(1867, '176', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `context` varchar(32) NOT NULL,
  `otp_hash` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `attempts` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_type` enum('monthly','yearly') DEFAULT NULL,
  `type` enum('candidate','recruiter') DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name_en`, `name_ar`, `description_en`, `description_ar`, `price`, `duration`, `duration_type`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 'الأساسي', 'Essential tools for small teams getting started.', 'أدوات أساسية للفرق الصغيرة التي تبدأ.', 0.00, 1, 'monthly', 'candidate', 0, '2025-10-15 09:40:40', '2025-10-27 11:24:00'),
(2, 'Pro', 'المحترف', 'Advanced features for growing companies.', 'ميزات متقدمة للشركات النامية.', 99.00, 1, 'monthly', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(3, 'Enterprise', 'المؤسسات', 'Full power for large organizations with custom needs.', 'قوة كاملة للمؤسسات الكبيرة ذات الاحتياجات الخاصة.', 999.00, 12, 'yearly', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(4, 'Professional Candidate', 'المرشح المحترف', 'Advanced features for experienced professionals', 'ميزات متقدمة للمحترفين ذوي الخبرة', 249.91, 1, 'monthly', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(5, 'Premium Candidate', 'المرشح المميز', 'Complete package with all premium features', 'حزمة كاملة مع جميع الميزات المميزة', 383.22, 3, 'yearly', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(6, 'Premium Candidate', 'المرشح المميز', 'Complete package with all premium features', 'حزمة كاملة مع جميع الميزات المميزة', 86.96, 3, 'yearly', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(7, 'Student Plan', 'خطة الطلاب', 'Special pricing for students and fresh graduates', 'أسعار خاصة للطلاب والخريجين الجدد', 222.68, 6, 'monthly', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-25 10:25:05'),
(8, 'Student Plan', 'خطة الطلاب', 'Special pricing for students and fresh graduates', 'أسعار خاصة للطلاب والخريجين الجدد', 407.41, 10, 'monthly', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(9, 'Professional Recruiter', 'المجند المحترف', 'Advanced recruitment tools for growing companies', 'أدوات توظيف متقدمة للشركات النامية', 290.77, 9, 'monthly', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(10, 'Agency Plan', 'خطة الوكالة', 'Specialized features for recruitment agencies', 'ميزات متخصصة لوكالات التوظيف', 148.22, 7, 'monthly', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(11, 'Starter Recruiter', 'المجند المبتدئ', 'Essential tools for small recruitment agencies', 'أدوات أساسية لوكالات التوظيف الصغيرة', 108.53, 3, 'yearly', 'recruiter', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(12, 'test en', 'test', 'test desc en', 'test descr ar', 600.00, NULL, 'monthly', 'candidate', 1, '2025-10-25 10:02:49', '2025-10-25 10:02:49'),
(13, 'name en', 'mane ar', 'desc en', 'desc ar', 1000.00, NULL, 'yearly', 'candidate', 1, '2025-10-25 10:03:44', '2025-10-25 10:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `refresh_tokens`
--

CREATE TABLE `refresh_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token_hash` varchar(128) NOT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `expires_at` timestamp NOT NULL,
  `revoked` tinyint(1) NOT NULL DEFAULT 0,
  `replaced_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`id`, `user_id`, `token_hash`, `device_name`, `ip`, `user_agent`, `expires_at`, `revoked`, `replaced_by_id`, `created_at`, `updated_at`) VALUES
(1, 2, '4c664327ef2caf5e9554db1e4d14d8d154696a05d0ef3419727ba9668f69f333', 'unknown', '156.203.160.5', 'PostmanRuntime/7.48.0', '2025-11-14 09:40:44', 0, NULL, '2025-10-15 09:40:44', '2025-10-15 09:40:44'),
(2, 2, '50836da26a129844ffd087930be33fd964ee4cd14d8a7bf0b685dd7dba9b2e5c', 'unknown', '156.222.83.241', 'PostmanRuntime/7.48.0', '2025-11-14 09:41:39', 0, NULL, '2025-10-15 09:41:39', '2025-10-15 09:41:39'),
(3, 2, '5cc97b5d4bc2e701f0a5c373778d4ac8cbedf8ad02b7faeee1e72ade09b5c954', 'unknown', '156.203.160.5', 'PostmanRuntime/7.48.0', '2025-11-14 09:42:06', 0, NULL, '2025-10-15 09:42:06', '2025-10-15 09:42:06'),
(4, 2, '0b0283c768fe964e1fc88bfa0d395745c4872e2f7ba5151609bba2963c699b74', 'unknown', '156.222.83.241', 'PostmanRuntime/7.48.0', '2025-11-14 09:43:41', 0, NULL, '2025-10-15 09:43:41', '2025-10-15 09:43:41'),
(5, 2, '788192bab045d0ff4f7e9d9e471ab417e019551cf2add921766e6b2405ace3bd', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-14 10:02:52', 1, 10, '2025-10-15 10:02:52', '2025-10-16 10:02:26'),
(6, 1, '951c9dc57793f99f2dcccc2e18d548ea54e8a8687b12cbf08fda85430bd33e08', 'unknown', '156.203.160.5', 'PostmanRuntime/7.48.0', '2025-11-15 09:58:46', 0, NULL, '2025-10-16 09:58:46', '2025-10-16 09:58:46'),
(7, 2, 'f297afd1ed389becbca67f5586b6c47ecca7e9c246f8bf614ad78c417c1552dd', 'unknown', '156.203.160.5', 'PostmanRuntime/7.48.0', '2025-11-15 09:58:55', 0, NULL, '2025-10-16 09:58:55', '2025-10-16 09:58:55'),
(8, 2, '65791b03be5c06a56adcc00345f41eb18d826fdcde805b5485cc500cb5ca61dd', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-15 10:02:26', 0, NULL, '2025-10-16 10:02:26', '2025-10-16 10:02:26'),
(9, 2, '155c79edcd974c45f2f0f328a4869e805e6413e3d59376f6ae9bcc375d272650', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-15 10:02:26', 0, NULL, '2025-10-16 10:02:26', '2025-10-16 10:02:26'),
(10, 2, '0b60679b9e87b5338c1e67eefe1e909ee41fff1e97d47cdff8a5b148987a7a5d', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-15 10:02:26', 0, NULL, '2025-10-16 10:02:26', '2025-10-16 10:02:26'),
(11, 2, '2560be472e79d3d3405a8fa8561f86f28d8e5ea0601d19d575ec1cd3f07195f1', 'unknown', '196.128.135.34', 'PostmanRuntime/7.48.0', '2025-11-16 15:08:22', 0, NULL, '2025-10-17 15:08:22', '2025-10-17 15:08:22'),
(12, 2, '0dde08c94173ddc2269cf6caebdbf1fe86320c5b9143bfcc67524d818105ef2b', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-17 11:24:33', 1, 16, '2025-10-18 11:24:33', '2025-10-18 11:52:29'),
(13, 2, '0fa5f4a7de8e71c7baebfe400a663ed26510b4a37c895e2383335ec012958ef1', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-17 11:44:14', 0, NULL, '2025-10-18 11:44:14', '2025-10-18 11:44:14'),
(14, 1, 'a2818a94189cfa763aa984c27a63dca1ff2c03b1675fc73e6669d7d3ed592b9a', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-17 11:49:37', 0, NULL, '2025-10-18 11:49:37', '2025-10-18 11:49:37'),
(15, 2, '10631d7b5eea58f8dfcf8be5efa942a2af4a2ecc9998786feba7dff01ee37e76', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-17 11:50:44', 0, NULL, '2025-10-18 11:50:44', '2025-10-18 11:50:44'),
(16, 2, 'd556285c9cebcf2ae86e1f494e7ea47c46e237d5d6e95e3420f453f5b6d90c3c', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-17 11:52:29', 0, NULL, '2025-10-18 11:52:29', '2025-10-18 11:52:29'),
(17, 2, 'cd6e052a86672f74ae8d7d5fa00cfc94bedf8ba86e4847e9147329acfded2fd6', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-17 12:07:21', 1, 22, '2025-10-18 12:07:21', '2025-10-19 11:49:38'),
(18, 171, 'fdbe54ab3687c358b20971c090cb8b2ea81b9a304de301ae10c1348f594a9f8e', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-18 09:03:35', 0, NULL, '2025-10-19 09:03:35', '2025-10-19 09:03:35'),
(19, 171, '0105ce7ffc5cc31af60855e37e97408d58e774f872c596b525a816c22c2cad86', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-18 09:03:41', 0, NULL, '2025-10-19 09:03:41', '2025-10-19 09:03:41'),
(20, 171, '84115328358fd12538add01a291219b687e793101ff0252a769e9e4ad4097eb8', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-18 09:31:07', 0, NULL, '2025-10-19 09:31:07', '2025-10-19 09:31:07'),
(21, 2, 'c4ac51308d69f5ec58c32b6db5c0b16fb9f14c2b8b44ce6f4e01bd3bc38b7587', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-18 11:43:19', 0, NULL, '2025-10-19 11:43:19', '2025-10-19 11:43:19'),
(22, 2, '21af4c22f0b7fc5f524d54a2e6750284b6d3b31870231940f1fd81bf5a635871', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-18 11:49:38', 1, 23, '2025-10-19 11:49:38', '2025-10-19 11:49:38'),
(23, 2, '1e9fd032426c9098a77bbef89bf8ec107c4a771ec19ecfe62a347d31b709e0ad', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-18 11:49:38', 0, NULL, '2025-10-19 11:49:38', '2025-10-19 11:49:38'),
(24, 2, 'ccfa5f2d419d6f5c823196aac783b70110ae2ef58ed27d30d2eb81ae0c1b9e1e', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-18 11:56:57', 0, NULL, '2025-10-19 11:56:57', '2025-10-19 11:56:57'),
(25, 2, '07f12af274159e994b6e0106e09bf848f5753fcb5c77f76ba1d9eeeb03bd3df3', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-18 11:59:34', 1, 28, '2025-10-19 11:59:34', '2025-10-19 12:47:37'),
(26, 2, '50a69b1166853e4e9c04a058f2ec23708b8c6a5b54ce83b3fa5c56fd80cb3463', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-18 12:40:33', 0, NULL, '2025-10-19 12:40:33', '2025-10-19 12:40:33'),
(27, 2, '5d49a3d9dba86c33cccf2f54964a1b35a18e2d3b26fc69e42c7b4f11c7447b47', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-18 12:47:37', 0, NULL, '2025-10-19 12:47:37', '2025-10-19 12:47:37'),
(28, 2, '142aec162fd27ccbaa2c80f8f8e1dbccb04c410330044906d1df34eb5cb803ed', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-18 12:47:37', 0, NULL, '2025-10-19 12:47:37', '2025-10-19 12:47:37'),
(29, 2, '879bfe031b91358c30ce79f24787dc340632bbd6460119c9e1ed33e30c8c6751', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-18 12:47:51', 1, 38, '2025-10-19 12:47:51', '2025-10-19 13:17:04'),
(30, 2, 'cf35f01fe012b81f449f61df8904f8421bd64016173132f929837e6c43567ebd', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-18 12:58:52', 0, NULL, '2025-10-19 12:58:52', '2025-10-19 12:58:52'),
(31, 2, '41240eacedcf14628d0e6d355fdecc390ec0b80c9b324c245d54879ffb214381', 'unknown', '41.37.58.23', 'PostmanRuntime/7.49.0', '2025-11-18 13:08:17', 0, NULL, '2025-10-19 13:08:17', '2025-10-19 13:08:17'),
(32, 1, '6639429c92b83483b82d29a4e67529f9646fea5074dea28ac5858694ffcbb876', 'unknown', '41.37.58.23', 'PostmanRuntime/7.49.0', '2025-11-18 13:08:36', 0, NULL, '2025-10-19 13:08:36', '2025-10-19 13:08:36'),
(33, 2, '0107128ca880fc4a7f67cc63faa50f94cc09dc83feca6b4781079da716fed1c5', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-18 13:09:23', 1, 36, '2025-10-19 13:09:23', '2025-10-19 13:14:22'),
(34, 1, 'f8171c63345ec0bb43ea75f458258b1ed0393efb4a33a4ff61ccf48e34f7bc5c', 'unknown', '41.37.58.23', 'PostmanRuntime/7.49.0', '2025-11-18 13:09:29', 0, NULL, '2025-10-19 13:09:29', '2025-10-19 13:09:29'),
(35, 2, 'eac569080f86c7f0d0f89d6ffcbacbb9a0472d00e7c852d974b61985888b92f1', 'unknown', '41.37.58.23', 'PostmanRuntime/7.49.0', '2025-11-18 13:09:35', 0, NULL, '2025-10-19 13:09:35', '2025-10-19 13:09:35'),
(36, 2, '02f0db85367cff23c2963f5b09fe14336ba70a6010a3c88c3c6ed0c692d0d805', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-18 13:14:22', 0, NULL, '2025-10-19 13:14:22', '2025-10-19 13:14:22'),
(37, 2, '7cef64f054f9f9056d43b82c25ac3f3e2eabf032e6e11776526786dc9397553b', 'unknown', '41.37.58.23', 'PostmanRuntime/7.49.0', '2025-11-18 13:15:27', 0, NULL, '2025-10-19 13:15:27', '2025-10-19 13:15:27'),
(38, 2, 'd09d67d9d385704deacdeb6d07cfa613cd4dbcef1296a6f8af3b84fcea87ed70', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-18 13:17:04', 0, NULL, '2025-10-19 13:17:04', '2025-10-19 13:17:04'),
(39, 2, '7ee3f27d5ba7fb74113cdb3dd6012bdaf992349220438fbd6ee45bbfd935626f', 'unknown', '41.37.58.23', 'PostmanRuntime/7.49.0', '2025-11-18 13:17:27', 0, NULL, '2025-10-19 13:17:27', '2025-10-19 13:17:27'),
(40, 2, '3387a2f81519faec735d0af491b641426f1389d4e6d8a66d5c76faf8c3e5808c', 'unknown', '41.37.58.23', 'PostmanRuntime/7.49.0', '2025-11-18 13:20:02', 0, NULL, '2025-10-19 13:20:02', '2025-10-19 13:20:02'),
(41, 2, '45a0a33f35e78c3600b135153251ba5825d0fefa7205d2e199cff1c21c9f803f', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-18 13:22:56', 0, NULL, '2025-10-19 13:22:56', '2025-10-19 13:22:56'),
(42, 2, '36a10ce8dbd6cdf641f588050d453e3174ce3cd1431a5ac75b0f33aae11fe7e4', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-18 13:23:48', 0, NULL, '2025-10-19 13:23:48', '2025-10-19 13:23:48'),
(43, 1, 'f34356b4eee77216f4438d7215d911c62a8ba92ae60309e6637d3cf6db8aeb05', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-20 09:21:28', 0, NULL, '2025-10-21 09:21:28', '2025-10-21 09:21:28'),
(44, 1, 'f5f5641531b565b6e3b895dc3b748777ec97150c77be178ba23b63f10294ef98', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-20 09:36:06', 0, NULL, '2025-10-21 09:36:06', '2025-10-21 09:36:06'),
(45, 1, '28a8b14c1510ac01a218fc9f6e06a6da0b85f0beca1bfb8d957bfcf111896945', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-20 09:36:27', 0, NULL, '2025-10-21 09:36:27', '2025-10-21 09:36:27'),
(46, 1, 'd3f151f23226abdbe632d6b2a37de55cae59b6668acc44f6b04c3529b37555a4', 'unknown', '156.203.160.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-20 10:08:03', 0, NULL, '2025-10-21 10:08:03', '2025-10-21 10:08:03'),
(47, 172, '18af9b683fbcc665659f9eba9229bbc0b4439660e8f0c6f34470ea62e8cf4b68', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-21 07:51:33', 0, NULL, '2025-10-22 07:51:33', '2025-10-22 07:51:33'),
(48, 172, '904ad8ce5e83931a04fd6e683fd2c37374be28b9d6c03571cfe620720f803749', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-21 07:51:35', 0, NULL, '2025-10-22 07:51:35', '2025-10-22 07:51:35'),
(49, 172, '89dbedbfae15697ed2cd49e6d2a278af9eef4ea677bd67557639d2da50c28810', 'unknown', '156.203.160.5', 'PostmanRuntime/7.49.0', '2025-11-22 07:01:56', 0, NULL, '2025-10-23 07:01:56', '2025-10-23 07:01:56'),
(50, 172, 'b65838190e583959efe52ab917a098d2686ce49c6ef46c24c70c2395e25115af', 'unknown', '156.222.75.41', 'PostmanRuntime/7.49.0', '2025-11-22 07:02:27', 0, NULL, '2025-10-23 07:02:27', '2025-10-23 07:02:27'),
(51, 1, '46a2531d4e1bad1cc916eb3102c6bb1d4d64eb1f673623bbfd413300b792f02f', 'unknown', '196.150.54.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-22 08:05:43', 0, NULL, '2025-10-23 08:05:43', '2025-10-23 08:05:43'),
(52, 172, 'f7178b55960a05aff3fc147a0079dec4618584672ddca0628da6f4f2a996a1e4', 'unknown', '196.150.54.90', 'PostmanRuntime/7.49.0', '2025-11-22 08:07:16', 0, NULL, '2025-10-23 08:07:16', '2025-10-23 08:07:16'),
(53, 1, 'd6d91f19f3c904c18ff23085d4b682d85ec5d9da181beb38fd3696bfa4925b0c', 'unknown', '196.150.54.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-22 08:41:21', 0, NULL, '2025-10-23 08:41:21', '2025-10-23 08:41:21'),
(54, 1, '8ff460fa6f701f0aa3c8f91c8a28f60c0cf8fab908a73c1dea69fb2b5877cd06', 'unknown', '196.150.54.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-22 08:47:51', 0, NULL, '2025-10-23 08:47:51', '2025-10-23 08:47:51'),
(55, 1, '129b2bf15a33362d752dfd43466e85900dc17bbb7dfd852d042e2119643926b7', 'unknown', '196.150.54.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-22 09:00:14', 0, NULL, '2025-10-23 09:00:14', '2025-10-23 09:00:14'),
(56, 1, '319b180ae0f3e6dd1db237d1a74f981b2eab07a1d7298d370677ad2f8d9a2028', 'unknown', '196.150.54.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-22 09:00:52', 0, NULL, '2025-10-23 09:00:52', '2025-10-23 09:00:52'),
(57, 172, '9f75ed6132b6b44f859a4f6b648e4c865ded659fd95956386e7455959452fa02', 'unknown', '156.222.75.41', 'PostmanRuntime/7.49.0', '2025-11-22 10:36:08', 0, NULL, '2025-10-23 10:36:08', '2025-10-23 10:36:08'),
(58, 172, '3201ba7d508b188ebaf8a9ffbabf0c8ce4e1ac45e989e8cfa50766fcaae322e8', 'unknown', '196.150.54.90', 'PostmanRuntime/7.49.0', '2025-11-22 10:36:40', 0, NULL, '2025-10-23 10:36:40', '2025-10-23 10:36:40'),
(59, 172, '3ab1c2ac7ca5ced85c48c9135a322a563bd9d0d7147cb6c00db2ad578fa4a624', 'unknown', '156.222.75.41', 'PostmanRuntime/7.49.0', '2025-11-22 10:37:00', 0, NULL, '2025-10-23 10:37:00', '2025-10-23 10:37:00'),
(60, 172, '24e5882c909fa2250b434270261bb5f8e7d2746cf694ac7ee742b06adfea22b4', 'unknown', '196.150.54.90', 'PostmanRuntime/7.49.0', '2025-11-22 10:37:50', 0, NULL, '2025-10-23 10:37:50', '2025-10-23 10:37:50'),
(61, 172, 'e9ba8d0c84a3f8462701abb1b0ca1ec74c1072f499c591140bfcee460fcd9c50', 'unknown', '156.222.75.41', 'PostmanRuntime/7.49.0', '2025-11-22 11:24:38', 0, NULL, '2025-10-23 11:24:38', '2025-10-23 11:24:38'),
(62, 172, 'b93b3027b3af6512d616e6585a8d326a7b00651812df42dd8359eea58726275c', 'unknown', '156.222.75.41', 'PostmanRuntime/7.49.0', '2025-11-22 11:25:15', 0, NULL, '2025-10-23 11:25:15', '2025-10-23 11:25:15'),
(63, 172, '77463fc0a139b70c9b7ddde1b01d29f8cd02c3dfd3f08360f3814ced9038fc70', 'unknown', '41.232.93.52', 'PostmanRuntime/7.49.0', '2025-11-24 06:12:50', 0, NULL, '2025-10-25 06:12:50', '2025-10-25 06:12:50'),
(64, 172, '66c99030b97ee170d9b277807ee2ed824df4fd549afbb993260bda087ce75d73', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-24 09:28:08', 0, NULL, '2025-10-25 09:28:08', '2025-10-25 09:28:08'),
(65, 172, 'fa46051eb3f94d295548438d0628ddd43dfda5ab05ee5c2dcc6af0739c05f4c7', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-24 09:32:12', 0, NULL, '2025-10-25 09:32:12', '2025-10-25 09:32:12'),
(66, 172, 'ab69292f5ea67b693f55b86e2c153f160cebdfe75eaa36e3762a9e0bab545ed4', 'unknown', '41.232.93.52', 'PostmanRuntime/7.49.0', '2025-11-24 09:37:05', 0, NULL, '2025-10-25 09:37:05', '2025-10-25 09:37:05'),
(67, 1, '0130e9ac76270e920eb381904ef1c18e230bf99bef35c6705eebbfbd78f916fb', 'unknown', '41.232.93.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-24 09:39:26', 0, NULL, '2025-10-25 09:39:26', '2025-10-25 09:39:26'),
(68, 1, 'e435d61ee29e4b749634eefb055ab38683f3842377176094b22965f0b1c3d41b', 'unknown', '102.47.76.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-25 08:35:54', 0, NULL, '2025-10-26 08:35:54', '2025-10-26 08:35:54'),
(69, 172, 'd004b6fc037211ebef062b04464333a90f5e389c552a1a5a8f9c01a5d6e6e238', 'unknown', '197.151.62.97', 'PostmanRuntime/7.49.0', '2025-11-25 11:21:00', 0, NULL, '2025-10-26 11:21:00', '2025-10-26 11:21:00'),
(70, 172, 'fde0d8db4f1f7e1977071d27d40e641c22069fb6e61cfc62326afcc2d281417a', 'unknown', '102.47.76.11', 'PostmanRuntime/7.49.0', '2025-11-25 11:50:47', 0, NULL, '2025-10-26 11:50:47', '2025-10-26 11:50:47'),
(71, 172, '38a1e2118b587db3902e40d78d0a0e426509fa9bdc8808b6d464eb11d87048b7', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-26 05:55:37', 0, NULL, '2025-10-27 05:55:37', '2025-10-27 05:55:37'),
(72, 172, '5422a49d5eb3a3e57d471fb467d80721753a86c37c81f38c7b594da2754dbe42', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-26 05:56:12', 0, NULL, '2025-10-27 05:56:12', '2025-10-27 05:56:12'),
(73, 172, 'b8d02a4d07dd33b73502bf1fd4dca496a09012b562ea96a61f0570e9795c6bbb', 'unknown', '102.42.29.117', 'PostmanRuntime/7.49.0', '2025-11-26 06:06:08', 0, NULL, '2025-10-27 06:06:08', '2025-10-27 06:06:08'),
(74, 172, 'bd8128e9464f51ff13a9e217ef2aca3a981a46f795bf02b2d9a5dc805b6659b6', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-26 06:21:54', 0, NULL, '2025-10-27 06:21:54', '2025-10-27 06:21:54'),
(75, 172, '856d4b489fb2d0fdccefad9d56c1d24489b947a4a3a97e07b6465152fc9dd871', 'unknown', '102.42.29.117', 'PostmanRuntime/7.49.0', '2025-11-26 06:30:47', 0, NULL, '2025-10-27 06:30:47', '2025-10-27 06:30:47'),
(76, 172, 'af161e9957aa8ae66cecbf65e330caec7dfb64ac8c9bb1e81b8e22b2cbab10ca', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-26 07:06:48', 0, NULL, '2025-10-27 07:06:48', '2025-10-27 07:06:48'),
(77, 172, 'c3fc94833cb6f15d4983ce061cc0a1011ed5579b4d3780b438d5d72dda43737c', 'unknown', '102.42.29.117', 'PostmanRuntime/7.49.0', '2025-11-26 07:11:46', 0, NULL, '2025-10-27 07:11:46', '2025-10-27 07:11:46'),
(78, 172, '24c5e99f638c78361a4fdba4d48aad4a5ab0eedbfeba220a83da51cb7c831d85', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-27 03:07:48', 0, NULL, '2025-10-28 03:07:48', '2025-10-28 03:07:48'),
(79, 172, '0416aee711426b5b03e33f1c4c07f98151b381081a0cb3e3abb12de09ff87196', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-27 03:07:59', 0, NULL, '2025-10-28 03:07:59', '2025-10-28 03:07:59'),
(80, 1, 'af5c19d501cb9748c012532d111c4bc725f992d8415929f83793ac33f50b38af', 'unknown', '41.43.223.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-27 04:54:28', 0, NULL, '2025-10-28 04:54:28', '2025-10-28 04:54:28'),
(81, 172, 'eac2b85bbd7092429644ab1377cd2e33c39257968549ee2bfedc9c59237b2f4d', 'unknown', '196.157.101.159', 'PostmanRuntime/7.49.0', '2025-11-27 06:53:03', 0, NULL, '2025-10-28 06:53:03', '2025-10-28 06:53:03'),
(82, 172, 'b3972e4c5f85d0c86efd37f15a4d616b2c30d753eba1fdff5843d2b077189338', 'unknown', '156.195.234.30', 'PostmanRuntime/7.49.0', '2025-11-28 06:07:02', 0, NULL, '2025-10-29 06:07:02', '2025-10-29 06:07:02'),
(83, 172, '77e9213be7fb5736882ab0a354c067eef7ca3349164acd09d04cba93bae0c484', 'unknown', '156.195.234.30', 'PostmanRuntime/7.49.0', '2025-11-28 06:32:42', 0, NULL, '2025-10-29 06:32:42', '2025-10-29 06:32:42'),
(84, 172, '4f4a97bc402879e320cd9bc770f2d4da9f2d895d36cf887666c228ee13b61c09', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-28 12:52:41', 0, NULL, '2025-10-29 12:52:41', '2025-10-29 12:52:41'),
(85, 172, '279aed06f560fc6eb9c9214f325f041b28735b2c17f91e18c69f92471da78cc8', 'unknown', '102.44.20.110', 'PostmanRuntime/7.49.0', '2025-11-28 13:00:34', 0, NULL, '2025-10-29 13:00:34', '2025-10-29 13:00:34'),
(86, 172, '28fa37ad076b9565eb96f43f7ee538bbd75bbb51f529f3d46ab9e172aff50096', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-28 13:37:09', 0, NULL, '2025-10-29 13:37:09', '2025-10-29 13:37:09'),
(87, 172, 'd42c9ba7ec6cea59b2550c7a89726d8de8046f4eca92b65d552f046b703c050f', 'unknown', '41.43.208.129', 'PostmanRuntime/7.49.0', '2025-11-28 13:41:31', 0, NULL, '2025-10-29 13:41:31', '2025-10-29 13:41:31'),
(88, 172, 'e4e2f05d67d5aa7e0f27e3f76fcd8cb723116818b4002f560a0bef9f99f16feb', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-28 13:58:35', 0, NULL, '2025-10-29 13:58:35', '2025-10-29 13:58:35'),
(89, 172, '94d6bb82709457fa94c4dea85780168bb1bdeb62c272119eabd037a19bb6950a', 'unknown', '41.43.208.129', 'PostmanRuntime/7.49.0', '2025-11-28 13:59:08', 0, NULL, '2025-10-29 13:59:08', '2025-10-29 13:59:08'),
(90, 172, 'd8a860ccad7a985fe82a8b848e718ce6eb8f7ea789474a7e8835f1da17559d22', 'unknown', '156.195.62.62', 'PostmanRuntime/7.49.0', '2025-11-29 08:07:27', 0, NULL, '2025-10-30 08:07:27', '2025-10-30 08:07:27'),
(91, 172, '0c66aa55cfdb903bbbfc487e2ebd3a026111cdfdea8ed5fa12df66ab14ef8b76', 'unknown', '196.157.34.235', 'PostmanRuntime/7.49.0', '2025-11-29 08:10:52', 0, NULL, '2025-10-30 08:10:52', '2025-10-30 08:10:52'),
(92, 172, '3dd357df5db973c5814054ffbaed9663032fbd708a61306efcea25e61c81afe7', 'unknown', '156.195.62.62', 'PostmanRuntime/7.49.0', '2025-11-29 08:11:20', 0, NULL, '2025-10-30 08:11:20', '2025-10-30 08:11:20'),
(93, 172, '23824b3680225c5740f737ad8112fe9d7e06bdb0e88709a875aea739d431b27a', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-29 08:18:07', 0, NULL, '2025-10-30 08:18:07', '2025-10-30 08:18:07'),
(94, 172, '7186a172b11cef0828fd2e06736cc0b6adf59fde5d0fe5118c3c8153fe95f836', 'unknown', '156.195.62.62', 'PostmanRuntime/7.49.0', '2025-11-29 08:19:16', 0, NULL, '2025-10-30 08:19:16', '2025-10-30 08:19:16'),
(95, 172, 'a48c9732eede15894afd62adf3afe7a23e0341b56ae445f89a780132c1dc6193', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-29 08:21:01', 0, NULL, '2025-10-30 08:21:01', '2025-10-30 08:21:01'),
(96, 172, 'cc67751a7d74fd5895b9beefc471ae97838eea42d19edc5266fe0b581a07946b', 'unknown', '156.195.62.62', 'PostmanRuntime/7.49.0', '2025-11-29 09:25:42', 0, NULL, '2025-10-30 09:25:42', '2025-10-30 09:25:42'),
(97, 172, '7d1475b40d068f2e7463b662c05f2a35e0e02afa658f79d2085e7491c4a6cd58', 'unknown', '102.42.139.116', 'PostmanRuntime/7.49.0', '2025-11-29 09:33:38', 0, NULL, '2025-10-30 09:33:38', '2025-10-30 09:33:38'),
(98, 172, 'c9404f785428625bf08a93d8c373c5b3a88e14c2f1e6c9b46aad447ad96e5241', 'unknown', '156.195.62.62', 'PostmanRuntime/7.49.0', '2025-11-29 10:03:27', 0, NULL, '2025-10-30 10:03:27', '2025-10-30 10:03:27'),
(99, 1, '26aca1d6c012f4ceb55487eb8fc6613ff1db95a6c80231139086950ccca440a5', 'unknown', '156.195.62.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-29 10:19:47', 0, NULL, '2025-10-30 10:19:47', '2025-10-30 10:19:47'),
(100, 177, 'e3948e19795dcf19c24f956c9826ba500728961e201cbf6a1c10f6c9bb9835d7', 'unknown', '156.203.200.207', 'PostmanRuntime/7.49.1', '2025-12-05 11:32:17', 0, NULL, '2025-11-05 11:32:17', '2025-11-05 11:32:17'),
(101, 177, 'f7fcd74a2818a762156877f2ce21a4ba03781a9616203a8b7570f91f8283d36b', 'unknown', '156.203.200.207', 'PostmanRuntime/7.49.1', '2025-12-05 11:32:25', 0, NULL, '2025-11-05 11:32:25', '2025-11-05 11:32:25'),
(102, 177, '8946e40ed06b72e38d06fea254775e099e96b38f4a43697bd744f7d2a1db9c19', 'unknown', '156.203.200.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-12-05 11:32:41', 0, NULL, '2025-11-05 11:32:41', '2025-11-05 11:32:41'),
(103, 2, '3b4cd69960ae62869feb11a0e2d1f5d21c09cfa71a17b86025f45b8188305bc9', 'unknown', '102.42.135.160', 'PostmanRuntime/7.49.1', '2025-12-05 23:20:56', 0, NULL, '2025-11-05 23:20:56', '2025-11-05 23:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `message_id`, `user_id`, `reply`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'test', '2025-10-28 10:12:17', '2025-10-28 10:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `retrievals`
--

CREATE TABLE `retrievals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retrievals`
--

INSERT INTO `retrievals` (`id`, `subscription_id`, `user_id`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'Change of mind - no longer need the service', 'approved', '2025-09-14 21:54:21', '2025-09-14 21:54:21'),
(2, 33, 26, 'Requesting refund due to service issues', 'rejected', '2025-08-09 04:52:03', '2025-08-09 04:52:03'),
(3, 17, 99, 'Technical problems with the platform', 'rejected', '2025-08-03 23:14:07', '2025-08-03 23:14:07'),
(4, 37, 109, 'Service features not as advertised', 'rejected', '2025-10-15 02:21:00', '2025-10-15 02:21:00'),
(5, 10, 149, 'Account security concerns', 'pending', '2025-09-13 15:23:26', '2025-09-13 15:23:26'),
(6, 27, 9, 'Service features not as advertised', 'approved', '2025-09-10 22:04:54', '2025-09-10 22:04:54'),
(7, 34, 14, 'Temporary suspension needed', 'rejected', '2025-07-23 23:51:54', '2025-07-23 23:51:54'),
(8, 28, 107, 'Need to downgrade to a cheaper plan', 'rejected', '2025-08-14 09:20:15', '2025-08-14 09:20:15'),
(9, 52, 85, 'Dissatisfied with customer support', 'approved', '2025-07-22 09:40:48', '2025-07-22 09:40:48'),
(10, 39, 15, 'Financial difficulties - need to cancel', 'pending', '2025-10-14 06:00:11', '2025-10-14 06:00:11'),
(11, 34, 98, 'Change of mind - no longer need the service', 'pending', '2025-09-28 22:40:09', '2025-09-28 22:40:09'),
(12, 42, 91, 'Temporary suspension needed', 'pending', '2025-09-24 19:48:20', '2025-09-24 19:48:20'),
(13, 25, 45, 'Moving to a different location', 'approved', '2025-08-01 19:46:27', '2025-08-01 19:46:27'),
(14, 10, 78, 'Financial difficulties - need to cancel', 'pending', '2025-09-29 07:27:52', '2025-09-29 07:27:52'),
(15, 28, 4, 'Personal circumstances changed', 'pending', '2025-10-14 05:17:49', '2025-10-14 05:17:49'),
(16, 19, 123, 'Account security concerns', 'rejected', '2025-07-31 23:12:37', '2025-07-31 23:12:37'),
(17, 45, 67, 'Account security concerns', 'rejected', '2025-10-14 11:02:42', '2025-10-14 11:02:42'),
(18, 9, 119, 'Moving to a different location', 'rejected', '2025-08-17 22:58:09', '2025-08-17 22:58:09'),
(19, 54, 119, 'Billing issues and payment disputes', 'pending', '2025-08-23 05:09:15', '2025-08-23 05:09:15'),
(20, 47, 25, 'Change of mind - no longer need the service', 'rejected', '2025-10-05 09:14:57', '2025-10-05 09:14:57'),
(21, 52, 153, 'Temporary suspension needed', 'approved', '2025-07-22 03:10:49', '2025-07-22 03:10:49'),
(22, 35, 163, 'Temporary suspension needed', 'rejected', '2025-07-31 10:59:08', '2025-07-31 10:59:08'),
(23, 36, 8, 'Temporary suspension needed', 'pending', '2025-10-04 10:02:52', '2025-10-04 10:02:52'),
(24, 47, 22, 'Service not meeting expectations', 'pending', '2025-10-02 02:39:11', '2025-10-02 02:39:11'),
(25, 16, 94, 'Change of mind - no longer need the service', 'approved', '2025-08-08 11:57:01', '2025-08-08 11:57:01'),
(26, 19, 27, 'Need to downgrade to a cheaper plan', 'approved', '2025-08-05 17:29:33', '2025-08-05 17:29:33'),
(27, 23, 18, 'Company policy changes', 'rejected', '2025-09-28 09:01:18', '2025-09-28 09:01:18'),
(28, 52, 19, 'Service features not as advertised', 'pending', '2025-07-29 02:29:20', '2025-07-29 02:29:20'),
(29, 37, 126, 'Financial difficulties - need to cancel', 'pending', '2025-09-29 10:20:10', '2025-09-29 10:20:10'),
(30, 21, 140, 'Need to downgrade to a cheaper plan', 'pending', '2025-10-03 18:59:43', '2025-10-03 18:59:43'),
(31, 3, 48, 'Requesting refund due to service issues', 'rejected', '2025-09-05 05:07:52', '2025-09-05 05:07:52'),
(32, 6, 17, 'Temporary suspension needed', 'pending', '2025-09-02 00:28:22', '2025-09-02 00:28:22'),
(33, 50, 28, 'Temporary suspension needed', 'approved', '2025-09-14 20:13:59', '2025-09-14 20:13:59'),
(34, 20, 96, 'Personal circumstances changed', 'approved', '2025-10-01 03:12:01', '2025-10-01 03:12:01'),
(35, 37, 69, 'Account security concerns', 'rejected', '2025-10-02 06:38:42', '2025-10-02 06:38:42'),
(36, 41, 62, 'Account security concerns', 'pending', '2025-09-11 08:17:23', '2025-09-11 08:17:23'),
(37, 5, 54, 'Need to downgrade to a cheaper plan', 'rejected', '2025-07-26 09:43:25', '2025-07-26 09:43:25'),
(38, 16, 96, 'Dissatisfied with customer support', 'approved', '2025-10-14 11:45:24', '2025-10-14 11:45:24'),
(39, 18, 99, 'Found a better alternative service', 'pending', '2025-08-19 16:08:38', '2025-08-19 16:08:38'),
(40, 28, 19, 'Found a better alternative service', 'approved', '2025-10-10 14:32:07', '2025-10-10 14:32:07'),
(41, 36, 48, 'Moving to a different location', 'rejected', '2025-10-04 10:10:00', '2025-10-04 10:10:00'),
(42, 13, 132, 'Change of mind - no longer need the service', 'approved', '2025-09-28 04:39:48', '2025-09-28 04:39:48'),
(43, 52, 19, 'Found a better alternative service', 'pending', '2025-10-02 22:48:39', '2025-10-02 22:48:39'),
(44, 40, 149, 'Account security concerns', 'rejected', '2025-09-28 23:53:26', '2025-09-28 23:53:26'),
(45, 35, 91, 'Moving to a different location', 'pending', '2025-08-01 05:03:05', '2025-08-01 05:03:05'),
(46, 21, 124, 'Requesting refund due to service issues', 'rejected', '2025-09-07 23:00:00', '2025-09-07 23:00:00'),
(47, 44, 78, 'Need to downgrade to a cheaper plan', 'rejected', '2025-07-29 16:26:15', '2025-07-29 16:26:15'),
(48, 9, 115, 'Change of mind - no longer need the service', 'pending', '2025-09-10 05:47:12', '2025-09-10 05:47:12'),
(49, 36, 48, 'Dissatisfied with customer support', 'approved', '2025-09-05 13:02:39', '2025-09-05 13:02:39'),
(50, 11, 94, 'Personal circumstances changed', 'pending', '2025-10-04 11:33:07', '2025-10-04 11:33:07'),
(51, 16, 73, 'Found a better alternative service', 'rejected', '2025-09-28 05:00:26', '2025-09-28 05:00:26'),
(52, 5, 55, 'Technical problems with the platform', 'rejected', '2025-09-20 08:15:46', '2025-09-20 08:15:46'),
(53, 40, 153, 'Account security concerns', 'rejected', '2025-09-28 14:54:50', '2025-09-28 14:54:50'),
(54, 31, 149, 'Moving to a different location', 'approved', '2025-09-04 18:41:10', '2025-09-04 18:41:10'),
(55, 9, 142, 'Moving to a different location', 'approved', '2025-08-20 13:32:45', '2025-08-20 13:32:45');

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0JywRBL2jheQWoWGL450c5fnrvuILbKuRjMr7ger', NULL, '64.225.26.198', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnJJYVFIbnlLNzVSUk8ybkxSQzQ1bjhCNElQSGpHZGFQMkVUZUlSeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1762281302),
('0mzypKNtcV00pe7pGkZ2sgYAkAWvazULgmIWLVOQ', NULL, '3.140.182.19', 'Mozilla/5.0 zgrab/0.x', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDVrWWVMSGRHQU5waEMwVDNMWk13SWJTbmdYZnV2TkRYT29pcWNpciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761415898),
('1joC6NGgPIS6WbjyB9kKMrmxbacOigZXnib0jVeq', NULL, '66.132.153.133', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWlLeFhhMGJsZnBZVGFQaXlNUVdZZ1pyakdoTEpGU0RtTEdoWWZWaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761918318),
('4F1CRgd10p7gAN23Q7E33AwZIQO2G14j7SQkE1Mz', NULL, '198.235.24.141', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmkyQ0hMbUlNcjMwS0VsdHZLZnM3a2lVSEtwaEhlVjg2U05kYzl2NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761542100),
('80WZPopY7GKhLhI3JusHdfTPlAdDfDCYpMaYvS1p', NULL, '34.91.125.183', 'Scrapy/2.13.3 (+https://scrapy.org)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXg5YkE2STFQanBieVBaYjNFbE9aOGNjSTdUR1B0M2dBOUpFa1FaTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1762402146),
('9fjlprV2H1nlnMYAoGh2WzChdLiwOGKezB48yxRt', NULL, '34.1.29.60', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDYwSEprWjJoTGhVT0Q2WWxNcDhZQVFPZnlrUVczSWkzVVA5bTFmOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761115981),
('a7WcqlhAX2iv6b1DBNRGSheXXbD7np8k4D1M9zxv', NULL, '162.142.125.216', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3o4SVdQZ3NxcXhYMjZMWlFjV3d5c0lYMlVjdTRBRHVIb09PU01YMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1762033288),
('BJBY75KPd7lldAAo4sGbiHvURk3AXelXD9SF5B5p', NULL, '149.57.180.159', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2Z5RUNiczNBaFczTmhhb2xaWEJrMkpNVHJFSVM3YXNMVUQyYkh0RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760587999),
('bKpUkrWLlHyOg0hB4DLhuD3BWxx8NAyYLGGX3Aqp', NULL, '18.208.206.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0Y1YmF3eElpNk16bzFlY2V5M1Bjb2k4bENuS3JkajVYNUdEc3lQbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760600348),
('cELNEF7ELLNyAT5DYskpE4Xtm4RRrDQcBnY3JK9k', NULL, '66.132.153.127', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGlYeXZRTUR3MHZzUm9WYm85OWdYMm5VVjlXOTY5Y1pUMzA5blpNdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761750514),
('d1Uflabd3nj013ebgV4QEXyr2TPCfw16qDvkZIoZ', NULL, '196.251.88.64', 'Mozilla/4.0 (compatible; MSIE 5.0; Series80/2.0 Nokia9500/4.51 Profile/MIDP-2.0 Configuration/CLDC-1.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakw5RERNRW1BRmxmMzJNRm5lYThyU21vbVM0ZnJYZVRSMUlTMFBNOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760582999),
('D9JuOeIn0JjFbmi6fU87MVjhPIQzuoexBFf32iK3', NULL, '18.188.101.249', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkxpNFR5d3NSMUpib0gzamI2M1ZGaXpzR3VlYVlNQ290cm1WUnZjRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760681414),
('D9kRQCN4jJoGAV3mR5Q2JzaCdJLh9itpEfGeBmLi', NULL, '34.16.137.186', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3lzRW5aNGt1ZnIxQXg5MlhXdm13Rkk4blltWUpzSWt0SmFMRDNMNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760607538),
('e9dUvl0WRqLhvpZ6RtYA1SSk4vxJCOK5hWesNhYJ', NULL, '23.27.145.154', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0VwRzg4eVg3UlI4RmpKM29JcjZmRE9GZ0JpUUNCengyY0hPWm1ScSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761267742),
('GN6vzCrheXVXUwwLClu699yN0tpu7qmAIHHE69ze', NULL, '18.130.240.39', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWdIbUlSMmh6RVIwb0h2OTNBMmZ2bUo0dnRXTU12Y2J4aUprc3VqNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20vaW5kZXgucGhwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1760619626),
('gvRc9ls756CrlhRAlqzQQwYOM4UIMK4bQxcCG73n', NULL, '23.27.145.100', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVZSRVhkeWNNd3BEeWdkUnprSWNYSlR6YjV4R1F6WFVKeFJZRkRBVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760844950),
('HpnXRi53sHCLWoPBwSMNfaGEy8XGWWlu6SGq2ieP', NULL, '179.43.169.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmx5RDAzRGZ2SDhpV1hOeW8wTmZMckljNk9FYmFCTGJyMXN3dUpYYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760602328),
('IgYg4awMcd7tClGvfQNNyjOAcVqePQd4Fknphtiv', NULL, '34.245.36.8', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3dMQXpBbnhjRWQyQWgwbjJIa0VKRjdRMXVWTjF1YTZhZ3BzbkdCNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1762206814),
('iPC6saTsJOBIjCK3epYFwEAj4BfctkbFr7Sbi80V', NULL, '167.71.104.91', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:136.0) Gecko/20100101 Firefox/136.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2RvSzJaaGcwWUpHc1FZTmlBaXY2eHVoQ1lmS0NoOTYycW8wWEdEdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1762335326),
('JOSP5hoJJB6x4OjZI0tgSnzoDhZZnyfPDiajyGSG', NULL, '3.146.111.124', 'Mozilla/5.0 zgrab/0.x', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnV0THNPWWU1QXZtbDZITWJqNGdWcTZPcks0d3k3NmtmT1Y3TWFtbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760932114),
('Lz3PVG1hYTtJxK1paHkg5BWCDv5yIZyy7WwTmfnT', NULL, '149.57.180.7', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajJ2SVBEYThtNEJTNUtwcTBGY0VvakZXY2J2R2FCRTFLeFVTM3FydSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760658511),
('MXkQfzXpHRhM0BlsPvuUFEEx7xkZ3SyT2H9bqvrt', NULL, '18.188.101.249', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmhtMUJKZkFIaGNURXB3c1FBRlZxWGV2SE5ab21PeGlUMkVoTUIzSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760681413),
('nPJOZ72jvjOcx4XyU2CYaCrOwalw7qwm7CLevMRA', NULL, '146.190.65.230', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDhTU21vclhzQ2Q1M3oxQk9IOWh2SE12ZHpXMVFxVm52cTlkUmVLeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761303607),
('O7LstZxponSIuRalaadU4kUhgLKRAcCR8KqsJoeN', NULL, '23.27.145.188', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUlaaDg1OTdlMVpxNDNkYzFxaWdYSm1CYzJGNlBLczZlWlA3ZkU2aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760915207),
('OpwzEg0zODnx0T8ki11KEfw4QSobjDWxGMV3FnU9', NULL, '167.94.138.119', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFJ1NDZyTEJQSzA5NjRQcklRZ2xGWTloTVdmWDg5Wm5OaXNwbU1hYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760795224),
('oRteP9CEAC6a3ASg8uVihFNNQsddDnKXQJtPuWcH', NULL, '149.57.180.8', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkhKbFJFYzVkNGExeXBPcnp5Q2hvYXJMQnlTamJpV2JzQVBoNkhsciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760589808),
('ov2ZhoHJqn5FlfO7ezofQWtOcb6yG2NOMZsH6nIN', NULL, '91.84.86.2', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDVlYVg3UXh5VFQxSHVkUVJUYVVrbUZMcXNET3FTelZxeFpXUzFwNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761776990),
('peTdFZQccZxk1SsIR3WVBtSahvlpakXenBEJr6BE', NULL, '91.84.86.2', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVFZeXNJME1vSlZnN1RKUVZZTm5WejZFV3Jmb1V4MExxVTA1OEFneCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1762382226),
('RppW93XXQWnXqceUAkYf6p7Kvhe79gVvyFzctZXw', NULL, '209.38.68.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDd4WDJDcExLTjZZQmozRW1GS2hlbWFZOWRZNzhCUmlMdFFiclBFWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760602688),
('sDLmTP23redCBXPxl44D78O7RQJIO5GJT392Q1Vo', NULL, '179.43.169.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUxpMHpoMEpvbnAxNDB4VzhHdWxiMG4xdUtUMGdSQlZKQ252dmVYaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760602331),
('stOPZnEUbAQyNqJNFczaHAukVqTy5F3DIMn0OKKn', NULL, '167.71.176.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:136.0) Gecko/20100101 Firefox/136.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnpKSDFZUDdGYVdRblY4NGc0bVpyUU92SWVXODBvekg3NGpPQVlZNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1762260531),
('SxF7k969LfPFYeJca7H9cWK7Xxo0cQlV4CLrHOxg', NULL, '51.81.46.212', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDZjUTRFeEdRRDQ0eXA1cUkzUmRjUkVkbjRCTGlsQjVQcHQ5cTEyYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761710799),
('U1J396f1fca4im7V5vp9q2fyNA7cpJFiXVm1kv80', NULL, '147.185.132.153', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHd4U0RvS3RWMDFsVWZnMk9Zd3pnd05Fa0V1emtUeko1UWZ5bVh5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760993328),
('u1zrWyWVuvV4YOYGLrZRcXq93UTd6zhwLzi6Y9iK', NULL, '35.204.245.119', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWhvS1I5YjFPZG1pb2g2ZGZNS3o1ck9UNkg4eWM3UEFkQUpWMmU5eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760624038),
('VCoJSZo7cDZuQ0aSN054dQCO9PqVaczZtRinjjc9', NULL, '44.242.136.200', 'portalmmm/2.0 N410i(c20;TB)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGhsV2VkMEpQMkZlakhVNlViR2lacnZvMWFTdWpvd1daZ1JaSVR0MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760645540),
('XRkhyvolCLpD9ZOZzWG6YHkiKmQvPc5ffrD75ITG', NULL, '205.169.39.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1NIbTE2VFNSbE5MYjVMVmFRSHdGemZHejU3aVE2YTN3T0hpR2dZeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761771710),
('xVauSRNEdcdqj7JE5qSNnf4IByhjX6VDdXaLRRYw', NULL, '213.209.157.216', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-E700H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXBVNW5EN3FzN3FvUUV6ZWtGMWg0VGtiSDZuVVFUaDN5SXpNalF3QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760891775),
('Zh7D39UuZN2vNTuohWd6ATaaVTspMpCiNbkcNBNR', NULL, '176.9.158.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUVKSWROWWRYTzlPeXExQ1pjYWFoUXFjYjNwTDUxdmVuYTZweDJFdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761289786),
('zo9RNxlk3EH9rdwwOA8LUEM2ndsLr20E4HL2UJQi', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmJ4dnBwb3JJZTg0YTg2c0ljZXJjUlBMMldSQ1EzRFZ4WjFDNDB5RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc3NvLm1vcWFiYWxhaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1761651768);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `skillable_type` varchar(255) NOT NULL,
  `skillable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `user_id`, `name`, `skillable_type`, `skillable_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'Ex', 'App\\Models\\Experience', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(2, 2, 'Quibusdam', 'App\\Models\\Experience', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(3, 2, 'Nisi', 'App\\Models\\Experience', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(4, 2, 'Architecto', 'App\\Models\\Experience', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(5, 2, 'Et', 'App\\Models\\Experience', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(6, 2, 'Alias', 'App\\Models\\Experience', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(7, 2, 'Voluptatem', 'App\\Models\\Experience', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(8, 2, 'Magnam', 'App\\Models\\Experience', 2, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(12, 4, 'Dolorem', 'App\\Models\\Experience', 4, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(13, 4, 'Cum', 'App\\Models\\Experience', 4, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(14, 4, 'Tempora', 'App\\Models\\Experience', 4, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(15, 8, 'Saepe', 'App\\Models\\Experience', 5, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(16, 8, 'Necessitatibus', 'App\\Models\\Experience', 5, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(17, 8, 'Cupiditate', 'App\\Models\\Experience', 5, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(18, 8, 'Accusantium', 'App\\Models\\Experience', 5, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(19, 8, 'Atque', 'App\\Models\\Experience', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(20, 8, 'Voluptas', 'App\\Models\\Experience', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(21, 8, 'Ullam', 'App\\Models\\Experience', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(22, 8, 'In', 'App\\Models\\Experience', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(23, 8, 'Adipisci', 'App\\Models\\Experience', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(24, 8, 'Illum', 'App\\Models\\Experience', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(25, 8, 'Eum', 'App\\Models\\Experience', 6, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(26, 8, 'Perspiciatis', 'App\\Models\\Experience', 7, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(27, 8, 'Possimus', 'App\\Models\\Experience', 7, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(28, 8, 'Tenetur', 'App\\Models\\Experience', 7, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(29, 2, 'Research', 'App\\Models\\Education', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(30, 2, 'Leadership', 'App\\Models\\Education', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(34, 4, 'Presentation', 'App\\Models\\Education', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(35, 4, 'Project Management', 'App\\Models\\Education', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(36, 4, 'Data Analysis', 'App\\Models\\Education', 3, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(37, 4, 'Leadership', 'App\\Models\\Education', 4, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(38, 4, 'Statistics', 'App\\Models\\Education', 4, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(39, 4, 'Research', 'App\\Models\\Education', 4, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(40, 4, 'Teamwork', 'App\\Models\\Education', 4, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(41, 4, 'Data Analysis', 'App\\Models\\Education', 4, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(42, 8, 'Research', 'App\\Models\\Education', 5, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(43, 8, 'Statistics', 'App\\Models\\Education', 5, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(44, 8, 'Presentation', 'App\\Models\\Education', 5, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(45, 8, 'Teamwork', 'App\\Models\\Education', 5, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(46, 8, 'Writing', 'App\\Models\\Education', 5, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(47, NULL, 'Time Management', 'App\\Models\\User', 2, '2025-10-15 09:42:14', '2025-10-15 09:42:14'),
(66, 2, 'Research', 'App\\Models\\Education', 6, '2025-10-19 11:57:07', '2025-10-19 11:57:07'),
(67, 2, 'Teamwork', 'App\\Models\\Education', 6, '2025-10-19 11:57:07', '2025-10-19 11:57:07'),
(68, 2, 'Data Analysis', 'App\\Models\\Education', 6, '2025-10-19 11:57:07', '2025-10-19 11:57:07'),
(69, 2, 'test', 'App\\Models\\Education', 7, '2025-10-19 12:08:13', '2025-10-19 12:08:13'),
(72, NULL, 'test', 'App\\Models\\Experience', 13, '2025-10-19 12:09:37', '2025-10-19 12:09:37'),
(73, NULL, 'test', 'App\\Models\\User', 2, '2025-10-19 12:10:19', '2025-10-19 12:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider_name` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `platform`, `link`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://www.facebook.com/recruiter', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(2, 'twitter', 'https://www.twitter.com/recruiter', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(3, 'instagram', 'https://www.instagram.com/recruiter', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(4, 'linkedin', 'https://www.linkedin.com/recruiter', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(5, 'Behance', 'https://behance.net/careerlink', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(6, 'Medium', 'https://medium.com/@talentfinder', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(7, 'Twitter', 'https://twitter.com/@recruiterhub', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(8, 'WhatsApp', 'https://wa.me/{phone}', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(9, 'Behance', 'https://behance.net/talentfinder', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(10, 'Medium', 'https://medium.com/@jobconnect', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(11, 'Twitter', 'https://twitter.com/@talentfinder', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(12, 'Reddit', 'https://reddit.com/r/jobseekerpro', '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(13, 'medium', 'http://localhost:5173/communication', '2025-10-29 10:41:34', '2025-10-29 10:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_id` varchar(255) DEFAULT NULL,
  `paid_amount` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `status` enum('pending','cancelled','active','expired') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `plan_id`, `subscription_id`, `paid_amount`, `payment_method`, `start_date`, `end_date`, `is_active`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 'MXP1QBIA1DIT', '249.91', 'credit_card', '2025-10-15', '2025-11-15', 1, 'active', '2025-09-26 09:16:59', '2025-10-15 09:44:03'),
(2, 2, 4, 'TWZFBPZTOSE7', '249.91', 'bank_transfer', '2025-09-08', '2025-10-15', 0, 'cancelled', '2025-09-08 11:14:11', '2025-10-15 09:44:49'),
(3, 2, 8, 'AU153KTXDTHV', '407.41', 'paypal', '2025-07-16', '2025-10-15', 0, 'cancelled', '2025-07-16 14:57:17', '2025-10-15 09:45:02'),
(4, 2, 5, '0N17AF154FYY', '383.22', 'paypal', '2025-08-02', '2025-10-15', 0, 'cancelled', '2025-08-02 15:30:43', '2025-10-15 09:45:05'),
(5, 99, 5, '6508O57PRDX9', '383.22', 'bank_transfer', '2025-08-23', '2028-08-23', 1, 'pending', '2025-08-23 13:32:27', '2025-08-23 13:32:27'),
(6, 18, 7, 'CJ5HDUX2NENT', '222.68', 'stripe', '2025-08-15', '2026-02-15', 1, 'pending', '2025-08-15 08:04:54', '2025-08-15 08:04:54'),
(7, 99, 1, '3VLCRSNPS3SA', '0.00', 'bank_transfer', '2025-08-02', '2025-09-02', 1, 'pending', '2025-08-02 19:55:10', '2025-08-02 19:55:10'),
(8, 73, 8, 'LW3EW8G796HG', '407.41', 'credit_card', '2025-09-25', '2026-07-25', 1, 'pending', '2025-09-25 11:54:21', '2025-09-25 11:54:21'),
(9, 49, 6, '8OLCQ1WHQNPT', '86.96', 'credit_card', '2025-09-23', '2028-09-23', 1, 'pending', '2025-09-23 16:14:24', '2025-09-23 16:14:24'),
(10, 137, 7, '6QWHJC5Q5G60', '222.68', 'credit_card', '2025-10-07', '2026-04-07', 0, 'pending', '2025-10-07 13:09:16', '2025-10-07 13:09:16'),
(11, 78, 4, '5ML1HQPMFA5W', '249.91', 'stripe', '2025-07-19', '2025-08-19', 1, 'pending', '2025-07-19 20:48:48', '2025-07-19 20:48:48'),
(12, 116, 8, '8DAFL26153JO', '407.41', 'credit_card', '2025-07-28', '2026-05-28', 1, 'pending', '2025-07-27 21:56:34', '2025-07-27 21:56:34'),
(13, 22, 8, '0LF66HZMZHI8', '407.41', 'paypal', '2025-08-28', '2026-06-28', 1, 'pending', '2025-08-28 10:29:54', '2025-08-28 10:29:54'),
(14, 13, 6, '9FNZ130WU5O2', '86.96', 'paypal', '2025-08-11', '2028-08-11', 1, 'pending', '2025-08-11 07:44:23', '2025-08-11 07:44:23'),
(15, 15, 6, '8M7BKU2U3RDB', '86.96', 'stripe', '2025-10-10', '2028-10-10', 1, 'pending', '2025-10-10 18:27:19', '2025-10-10 18:27:19'),
(16, 109, 6, '1VOHKKIUPF0T', '86.96', 'credit_card', '2025-10-13', '2028-10-13', 1, 'pending', '2025-10-13 03:53:36', '2025-10-13 03:53:36'),
(17, 85, 6, '2NTK2UX1BSBF', '86.96', 'credit_card', '2025-10-05', '2028-10-05', 1, 'pending', '2025-10-05 00:26:55', '2025-10-05 00:26:55'),
(18, 4, 8, 'DWLGCX1IZSVR', '407.41', 'stripe', '2025-09-06', '2026-07-06', 1, 'pending', '2025-09-06 09:51:29', '2025-09-06 09:51:29'),
(19, 96, 4, 'N978N62BZ7NN', '249.91', 'stripe', '2025-08-12', '2025-09-12', 1, 'pending', '2025-08-12 15:45:20', '2025-08-12 15:45:20'),
(20, 163, 8, '00W3BP4NJF3O', '407.41', 'paypal', '2025-09-17', '2026-07-17', 1, 'pending', '2025-09-17 14:07:10', '2025-09-17 14:07:10'),
(21, 55, 5, 'BYX5DUV91LMV', '383.22', 'paypal', '2025-08-18', '2028-08-18', 1, 'pending', '2025-08-18 16:29:31', '2025-08-18 16:29:31'),
(22, 19, 4, 'MY6HR6KVY7BQ', '249.91', 'paypal', '2025-10-02', '2025-11-02', 1, 'pending', '2025-10-02 15:50:03', '2025-10-02 15:50:03'),
(23, 91, 5, 'AEN6LXR7RLXY', '383.22', 'credit_card', '2025-08-31', '2028-08-31', 1, 'pending', '2025-08-31 09:05:49', '2025-08-31 09:05:49'),
(24, 119, 5, 'N35LAQJVVBBI', '383.22', 'stripe', '2025-08-30', '2028-08-30', 0, 'pending', '2025-08-30 03:43:52', '2025-08-30 03:43:52'),
(25, 21, 8, '6RWO21MGD1VJ', '407.41', 'bank_transfer', '2025-10-07', '2026-08-07', 1, 'pending', '2025-10-07 08:17:59', '2025-10-07 08:17:59'),
(26, 47, 4, '08JHVL34D6S7', '249.91', 'credit_card', '2025-10-02', '2025-11-02', 1, 'pending', '2025-10-02 17:48:13', '2025-10-02 17:48:13'),
(27, 62, 6, 'GAIC6W03FIXA', '86.96', 'credit_card', '2025-10-02', '2028-10-02', 1, 'pending', '2025-10-02 06:49:32', '2025-10-02 06:49:32'),
(28, 149, 1, '2ZF6O1VBSKTV', '0.00', 'paypal', '2025-09-02', '2025-10-02', 1, 'pending', '2025-09-02 05:33:35', '2025-09-02 05:33:35'),
(29, 128, 8, 'ML1FMENBL3E4', '407.41', 'paypal', '2025-08-29', '2026-06-29', 1, 'pending', '2025-08-29 16:51:01', '2025-08-29 16:51:01'),
(30, 25, 1, 'KQ6JXYOTVZ9T', '0.00', 'stripe', '2025-09-20', '2025-10-20', 0, 'pending', '2025-09-20 03:36:56', '2025-09-20 03:36:56'),
(31, 67, 8, 'SO4E3KSNG95V', '407.41', 'credit_card', '2025-07-30', '2026-05-30', 1, 'pending', '2025-07-30 04:36:37', '2025-07-30 04:36:37'),
(32, 69, 5, '1I5UEQF1OWEK', '383.22', 'bank_transfer', '2025-09-15', '2028-09-15', 1, 'pending', '2025-09-15 14:15:31', '2025-09-15 14:15:31'),
(33, 54, 8, 'BKU643RHBSZD', '407.41', 'bank_transfer', '2025-09-20', '2026-07-20', 1, 'pending', '2025-09-20 04:50:11', '2025-09-20 04:50:11'),
(34, 49, 1, 'EN9C5L96BIOD', '0.00', 'paypal', '2025-07-21', '2025-08-21', 1, 'pending', '2025-07-21 04:22:42', '2025-07-21 04:22:42'),
(35, 69, 5, 'IC0YNM0N663D', '383.22', 'paypal', '2025-08-27', '2028-08-27', 1, 'pending', '2025-08-27 12:48:36', '2025-08-27 12:48:36'),
(36, 137, 8, 'U5WZXK5YMWAC', '407.41', 'bank_transfer', '2025-08-12', '2026-06-12', 1, 'pending', '2025-08-12 18:20:01', '2025-08-12 18:20:01'),
(37, 14, 1, 'RAO9GLVGNCPK', '0.00', 'paypal', '2025-09-24', '2025-10-24', 0, 'pending', '2025-09-24 08:31:53', '2025-09-24 08:31:53'),
(38, 149, 7, 'TR2XHKUBWPS5', '222.68', 'bank_transfer', '2025-10-05', '2026-04-05', 0, 'pending', '2025-10-05 20:31:48', '2025-10-05 20:31:48'),
(39, 85, 1, 'QW0MLQ7POL18', '0.00', 'paypal', '2025-07-30', '2025-08-30', 1, 'pending', '2025-07-30 12:38:35', '2025-07-30 12:38:35'),
(40, 142, 1, '1KKF62QF3MI8', '0.00', 'stripe', '2025-08-10', '2025-09-10', 1, 'pending', '2025-08-10 18:40:04', '2025-08-10 18:40:04'),
(41, 169, 4, 'HVO9XIVC797Z', '249.91', 'stripe', '2025-08-15', '2025-09-15', 1, 'pending', '2025-08-14 23:43:53', '2025-08-14 23:43:53'),
(42, 50, 6, 'KCFJLBFYVEBE', '86.96', 'stripe', '2025-10-14', '2028-10-14', 1, 'pending', '2025-10-14 17:52:01', '2025-10-14 17:52:01'),
(43, 28, 1, 'FRGPP5EMXZXJ', '0.00', 'bank_transfer', '2025-09-25', '2025-10-25', 1, 'pending', '2025-09-25 09:16:20', '2025-09-25 09:16:20'),
(44, 4, 5, 'PFMSE4JSNDAF', '383.22', 'stripe', '2025-08-21', '2028-08-21', 1, 'pending', '2025-08-21 12:52:16', '2025-08-21 12:52:16'),
(45, 48, 1, 'FE7CZ13JUNBC', '0.00', 'stripe', '2025-09-29', '2025-10-29', 1, 'pending', '2025-09-29 10:01:39', '2025-09-29 10:01:39'),
(46, 50, 7, 'J1TN92HIEUS9', '222.68', 'credit_card', '2025-08-28', '2026-02-28', 1, 'pending', '2025-08-28 05:56:56', '2025-08-28 05:56:56'),
(47, 4, 8, 'QZHW5X3DJY36', '407.41', 'paypal', '2025-08-08', '2026-06-08', 0, 'pending', '2025-08-08 04:48:17', '2025-08-08 04:48:17'),
(48, 48, 8, '13DTGTOWGK2S', '407.41', 'paypal', '2025-10-10', '2026-08-10', 1, 'pending', '2025-10-10 09:34:03', '2025-10-10 09:34:03'),
(49, 20, 4, 'Q49440KLTL3Q', '249.91', 'paypal', '2025-09-12', '2025-10-12', 1, 'pending', '2025-09-12 07:01:18', '2025-09-12 07:01:18'),
(50, 21, 6, '051WON3BJNL4', '86.96', 'paypal', '2025-07-23', '2028-07-23', 1, 'pending', '2025-07-23 15:59:25', '2025-07-23 15:59:25'),
(51, 10, 6, '5O0SOV84JS79', '86.96', 'paypal', '2025-08-22', '2028-08-22', 1, 'pending', '2025-08-22 12:32:10', '2025-08-22 12:32:10'),
(52, 128, 7, '13MBRUZ5IVJ5', '222.68', 'bank_transfer', '2025-08-25', '2026-02-25', 1, 'pending', '2025-08-25 13:11:09', '2025-08-25 13:11:09'),
(53, 10, 4, 'V6S1YVO1ETJD', '249.91', 'paypal', '2025-07-16', '2025-08-16', 1, 'pending', '2025-07-16 04:50:10', '2025-07-16 04:50:10'),
(54, 98, 8, 'PYSETRMOT0YE', '407.41', 'paypal', '2025-08-23', '2026-06-23', 1, 'pending', '2025-08-22 22:20:41', '2025-08-22 22:20:41'),
(55, 67, 8, '6LPF7NTJ7U5Q', '407.41', 'credit_card', '2025-07-18', '2026-05-18', 0, 'pending', '2025-07-18 20:10:33', '2025-07-18 20:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `sub_majors`
--

CREATE TABLE `sub_majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `major_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_majors`
--

INSERT INTO `sub_majors` (`id`, `name_en`, `name_ar`, `major_id`, `created_at`, `updated_at`) VALUES
(1, 'Artificial Intelligence', 'الذكاء الاصطناعي', 1, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(2, 'Machine Learning', 'تعلم الآلة', 1, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(3, 'Computer Graphics', 'رسوم الحاسب', 1, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(4, 'Database Systems', 'أنظمة قواعد البيانات', 1, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(5, 'Computer Networks', 'شبكات الحاسب', 1, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(6, 'Web Development', 'تطوير الويب', 2, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(7, 'Mobile App Development', 'تطوير تطبيقات الهاتف', 2, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(8, 'System Administration', 'إدارة الأنظمة', 2, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(9, 'Cloud Computing', 'الحوسبة السحابية', 2, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(10, 'Frontend Development', 'تطوير الواجهة الأمامية', 3, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(11, 'Backend Development', 'تطوير الخادم', 3, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(12, 'DevOps', 'تطوير العمليات', 3, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(13, 'Quality Assurance', 'ضمان الجودة', 3, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(17, 'Network Security', 'أمان الشبكات', 5, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(18, 'Digital Forensics', 'الطب الشرعي الرقمي', 5, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(19, 'Ethical Hacking', 'الاختراق الأخلاقي', 5, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(20, 'Strategic Management', 'الإدارة الاستراتيجية', 6, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(21, 'Operations Management', 'إدارة العمليات', 6, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(22, 'Project Management', 'إدارة المشاريع', 6, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(23, 'Digital Marketing', 'التسويق الرقمي', 7, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(24, 'Brand Management', 'إدارة العلامة التجارية', 7, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(25, 'Social Media Marketing', 'التسويق عبر وسائل التواصل', 7, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(26, 'Investment Banking', 'البنوك الاستثمارية', 8, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(27, 'Corporate Finance', 'المالية المؤسسية', 8, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(28, 'Risk Management', 'إدارة المخاطر', 8, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(29, 'Financial Accounting', 'المحاسبة المالية', 9, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(30, 'Management Accounting', 'المحاسبة الإدارية', 9, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(31, 'Auditing', 'التدقيق', 9, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(32, 'Recruitment', 'التوظيف', 10, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(33, 'Training & Development', 'التدريب والتطوير', 10, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(34, 'Employee Relations', 'علاقات الموظفين', 10, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(35, 'Thermodynamics', 'الديناميكا الحرارية', 11, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(36, 'Robotics', 'الروبوتات', 11, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(37, 'Automotive Engineering', 'هندسة السيارات', 11, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(38, 'Power Systems', 'أنظمة الطاقة', 12, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(39, 'Control Systems', 'أنظمة التحكم', 12, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(40, 'Telecommunications', 'الاتصالات', 12, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(41, 'Structural Engineering', 'الهندسة الإنشائية', 13, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(42, 'Transportation Engineering', 'هندسة النقل', 13, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(43, 'Environmental Engineering', 'الهندسة البيئية', 13, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(44, 'Internal Medicine', 'الطب الباطني', 14, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(45, 'Surgery', 'الجراحة', 14, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(46, 'Pediatrics', 'طب الأطفال', 14, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(47, 'Critical Care Nursing', 'تمريض العناية المركزة', 15, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(48, 'Pediatric Nursing', 'تمريض الأطفال', 15, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(49, 'Mental Health Nursing', 'تمريض الصحة النفسية', 15, '2025-10-15 09:40:39', '2025-10-15 09:40:39'),
(50, 'sub try', 'محاوله فرعيه', 97, '2025-10-23 11:29:46', '2025-10-23 11:29:46'),
(53, 'one more sub try', 'محاوله فرعيه اخرى', 96, '2025-10-23 11:34:54', '2025-10-23 11:34:54'),
(54, 'one more sub try', 'محاوله فرعيه اخرى', 95, '2025-10-23 11:35:05', '2025-10-23 11:35:05'),
(60, 'Data Analytics', 'تحليل البيانات', 4, '2025-10-27 07:38:59', '2025-10-27 07:38:59'),
(61, 'test2', 'test2', 4, '2025-10-27 07:38:59', '2025-10-27 07:38:59'),
(62, 'test', 'test', 4, '2025-10-27 07:38:59', '2025-10-27 07:38:59'),
(63, 'sub en', 'sub', 98, '2025-10-27 07:39:32', '2025-10-27 07:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `type` enum('terms','privacy_policy','faq') DEFAULT NULL,
  `user_type` enum('candidate','recruiter') DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `title_en`, `title_ar`, `description_en`, `description_ar`, `type`, `user_type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Terms and Conditions for Candidates', 'الشروط والأحكام للمتقدمين', 'By using our platform, candidates agree to provide accurate information, maintain professional conduct, and respect the privacy of recruiters. Candidates must not share false information or engage in fraudulent activities.', 'باستخدام منصتنا، يوافق المتقدمون على تقديم معلومات دقيقة والحفاظ على السلوك المهني واحترام خصوصية أصحاب العمل. يجب على المتقدمين عدم مشاركة معلومات خاطئة أو الانخراط في أنشطة احتيالية.', 'terms', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(2, 'Terms and Conditions for Recruiters', 'الشروط والأحكام لأصحاب العمل', 'Recruiters must provide accurate job postings, treat candidates with respect, and comply with employment laws. Any discriminatory practices or false job advertisements are strictly prohibited.', 'يجب على أصحاب العمل تقديم إعلانات وظائف دقيقة ومعاملة المتقدمين باحترام والامتثال لقوانين العمل. أي ممارسات تمييزية أو إعلانات وظائف خاطئة محظورة تماماً.', 'terms', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(3, 'Privacy Policy for Candidates', 'سياسة الخصوصية للمتقدمين', 'We collect and process your personal data to provide job matching services. Your information is protected and will not be shared with third parties without your consent. You have the right to access, modify, or delete your data.', 'نقوم بجمع ومعالجة بياناتك الشخصية لتقديم خدمات مطابقة الوظائف. معلوماتك محمية ولن يتم مشاركتها مع أطراف ثالثة دون موافقتك. لديك الحق في الوصول إلى بياناتك أو تعديلها أو حذفها.', 'privacy_policy', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(4, 'Privacy Policy for Recruiters', 'سياسة الخصوصية لأصحاب العمل', 'We collect company information and job posting data to facilitate recruitment. Your business data is secure and used only for platform services. We implement strict security measures to protect your information.', 'نقوم بجمع معلومات الشركة وبيانات إعلانات الوظائف لتسهيل التوظيف. بيانات عملك آمنة وتستخدم فقط لخدمات المنصة. نطبق إجراءات أمنية صارمة لحماية معلوماتك.', 'privacy_policy', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(5, 'General Terms and Conditions', 'الشروط والأحكام العامة', 'These terms govern the use of our recruitment platform. Users must comply with all applicable laws and regulations. We reserve the right to modify these terms and will notify users of any changes.', 'تحكم هذه الشروط استخدام منصة التوظيف الخاصة بنا. يجب على المستخدمين الامتثال لجميع القوانين واللوائح المعمول بها. نحتفظ بالحق في تعديل هذه الشروط وسنخطر المستخدمين بأي تغييرات.', 'terms', NULL, 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(6, 'General Privacy Policy', 'سياسة الخصوصية العامة', 'This privacy policy explains how we collect, use, and protect your personal information. We are committed to maintaining the privacy and security of all user data in accordance with applicable privacy laws.', 'توضح سياسة الخصوصية هذه كيفية جمع واستخدام وحماية معلوماتك الشخصية. نحن ملتزمون بالحفاظ على خصوصية وأمان جميع بيانات المستخدمين وفقاً لقوانين الخصوصية المعمول بها.', 'privacy_policy', NULL, 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(7, 'Frequently Asked Questions - Candidates', 'الأسئلة الشائعة - المتقدمين', 'Q: How do I create a profile? A: Click on \"Sign Up\" and fill in your personal and professional information. Q: How do I apply for jobs? A: Browse available positions and click \"Apply\" on jobs that match your skills. Q: Can I edit my profile? A: Yes, you can update your profile anytime from your dashboard.', 'س: كيف يمكنني إنشاء ملف شخصي؟ ج: انقر على \"التسجيل\" واملأ معلوماتك الشخصية والمهنية. س: كيف يمكنني التقديم للوظائف؟ ج: تصفح الوظائف المتاحة وانقر على \"تقدم\" للوظائف التي تناسب مهاراتك. س: هل يمكنني تعديل ملفي الشخصي؟ ج: نعم، يمكنك تحديث ملفك الشخصي في أي وقت من لوحة التحكم.', 'faq', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-29 14:09:12'),
(9, 'General Frequently Asked Questions', 'الأسئلة الشائعة العامة', 'Q: Is the platform free to use? A: Basic features are free for both candidates and recruiters. Premium features are available with subscription plans. Q: How do I contact support? A: You can reach our support team through the contact form or email us directly. Q: Is my data secure? A: Yes, we use industry-standard encryption and security measures to protect your information.', 'س: هل المنصة مجانية للاستخدام؟ ج: الميزات الأساسية مجانية لكل من المتقدمين وأصحاب العمل. الميزات المميزة متاحة مع خطط الاشتراك. س: كيف يمكنني التواصل مع الدعم؟ ج: يمكنك الوصول إلى فريق الدعم من خلال نموذج الاتصال أو مراسلتنا مباشرة. س: هل بياناتي آمنة؟ ج: نعم، نستخدم التشفير وإجراءات الأمان المعيارية في الصناعة لحماية معلوماتك.', 'faq', NULL, 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(10, 'Additional Terms for Recruiters', 'شروط إضافية لأصحاب العمل', 'Additional terms and conditions for recruiters regarding premium features and advanced platform usage. These terms outline extended responsibilities for recruiters using advanced features.', 'شروط وأحكام إضافية لأصحاب العمل فيما يتعلق بالميزات المميزة والاستخدام المتقدم للمنصة. تحدد هذه الشروط المسؤوليات الموسعة لأصحاب العمل الذين يستخدمون الميزات المتقدمة.', 'terms', 'recruiter', 0, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(11, 'Privacy Policy', 'سياسة الخصوصية', 'This Privacy Policy describes how we collect, use, and protect your personal information when you use our recruitment platform. We are committed to protecting your privacy and ensuring the security of your data.', 'تصف سياسة الخصوصية هذه كيفية جمعنا واستخدامنا وحماية معلوماتك الشخصية عند استخدام منصة التوظيف الخاصة بنا. نحن ملتزمون بحماية خصوصيتك وضمان أمان بياناتك.', 'privacy_policy', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(12, 'Privacy Policy', 'سياسة الخصوصية', 'This Privacy Policy describes how we collect, use, and protect your personal information when you use our recruitment platform. We are committed to protecting your privacy and ensuring the security of your data.', 'تصف سياسة الخصوصية هذه كيفية جمعنا واستخدامنا وحماية معلوماتك الشخصية عند استخدام منصة التوظيف الخاصة بنا. نحن ملتزمون بحماية خصوصيتك وضمان أمان بياناتك.', 'privacy_policy', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(13, 'Terms of Service', 'شروط الخدمة', 'These Terms of Service govern your use of our recruitment platform. By using our services, you agree to be bound by these terms and conditions. Please read them carefully before using our platform.', 'تحكم شروط الخدمة هذه استخدامك لمنصة التوظيف الخاصة بنا. باستخدام خدماتنا، فإنك توافق على الالتزام بهذه الشروط والأحكام. يرجى قراءتها بعناية قبل استخدام منصتنا.', 'terms', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(14, 'Terms of Service', 'شروط الخدمة', 'These Terms of Service govern your use of our recruitment platform. By using our services, you agree to be bound by these terms and conditions. Please read them carefully before using our platform.', 'تحكم شروط الخدمة هذه استخدامك لمنصة التوظيف الخاصة بنا. باستخدام خدماتنا، فإنك توافق على الالتزام بهذه الشروط والأحكام. يرجى قراءتها بعناية قبل استخدام منصتنا.', 'terms', 'candidate', 1, '2025-10-15 09:40:40', '2025-10-15 09:40:40'),
(15, 'Frequently Asked Questions', 'الأسئلة الشائعة', 'Find answers to the most frequently asked questions about our recruitment platform. If you cannot find the answer you are looking for, please contact our support team.', 'ابحث عن إجابات للأسئلة الأكثر شيوعاً حول منصة التوظيف الخاصة بنا. إذا لم تتمكن من العثور على الإجابة التي تبحث عنها، يرجى الاتصال بفريق الدعم.', 'faq', 'recruiter', 1, '2025-10-15 09:40:40', '2025-10-29 13:59:13'),
(16, 'terms for candidates', 'سياسة الخصوصية للعملاء test', 'dummy description', 'نحترم خصوصيتك ونلتزم بحماية بياناتك الشخصية.', 'terms', 'recruiter', 1, '2025-10-28 08:45:21', '2025-10-29 10:18:16'),
(17, 'Aliquip in qui tempo', 'Est labore ea in lab', 'Dolor nulla eum quae', 'Ut sunt facilis aut', 'privacy_policy', 'candidate', 1, '2025-10-29 10:18:43', '2025-10-29 10:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `major_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('candidate','recruiter','admin') DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `total_period` int(11) DEFAULT NULL,
  `major_name` varchar(255) DEFAULT NULL,
  `sub_major_id` bigint(20) UNSIGNED DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `company_name`, `job_title`, `city_id`, `major_id`, `type`, `is_active`, `deleted_at`, `api_token`, `total_period`, `major_name`, `sub_major_id`, `degree`) VALUES
(1, 'Ahmed', 'Al-Rashid', 'Admin@example.com', NULL, '$2y$12$GrDyUArhb8v7a1ipurOMoORqPYxR.pwwpuQViSP46ROKGYNJewMgG', NULL, '2025-08-05 12:14:11', '2025-10-30 10:19:47', '966555555555', NULL, NULL, NULL, NULL, 'admin', 1, NULL, '13206342d84506cef6907f71750b235479425ebfef18d636b14490ea6b6015c5323969c57cb93df6', NULL, NULL, NULL, NULL),
(2, 'Sarah', 'Johnson', 'candidate@example.com', NULL, '$2y$12$eLNsiNBCY09SDVfOSr11xuz3sumvFtABHgncsZeeGT3tmGnZ9HsXy', NULL, '2025-07-29 10:11:18', '2025-11-05 23:20:56', '966555555551', NULL, NULL, 7, 8, 'candidate', 1, NULL, 'a89933fcc91e98a54cb2be205deedaf20c56c9203a73a225f639a30ce7fe40fa879c37ad0dc6bc12', 5, NULL, NULL, NULL),
(3, 'Mohammed', 'Al-Sheikh', 'recruiter@example.com', NULL, '$2y$12$eJ5np3nrkDbPRZCUJaaFHee/V4H0QqxHgLejUTldu653fcZV1lZuC', NULL, '2025-10-09 11:32:06', '2025-10-15 09:40:39', '966555555553', 'Tech University', 'Computer Science Professor', NULL, NULL, 'recruiter', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Fatima', 'Al-Zahra', 'fatima@example.com', NULL, '$2y$12$cqSjs8ncSm6fxglc4mZBMu7tsALmWV/Sq2iIvbLvvkGiJzJzZeIg6', NULL, '2025-09-07 23:23:18', '2025-10-17 14:57:09', '966555555556', NULL, NULL, 1, 14, 'candidate', 1, NULL, NULL, 2, NULL, NULL, NULL),
(5, 'David', 'Wilson', 'david@example.com', NULL, '$2y$12$fvhG6VulLXVW6U2ZfeK6j.oQCmvWB9V8wM8XJoKh7nGCooj2hu4Ry', NULL, '2025-10-01 01:43:49', '2025-10-15 09:40:40', '966555555557', 'Business School', 'Marketing Lecturer', 9, 5, 'recruiter', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'John', 'Doe', 'john@example.com', NULL, '$2y$12$iz9t8VtaxR3g5Z8lb4smbuyog2Ev.mKVGAcYf7keNg0oNjCbQlKgG', NULL, '2025-09-28 05:48:28', '2025-10-15 09:40:40', '966555555558', NULL, NULL, NULL, NULL, 'admin', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Jane', 'Doe', 'jane@example.com', NULL, '$2y$12$Hj0Ej4oYqJ2rSr45FIkkj.IJa6UjUHd5ZMuq22EBRzEkfRvv0Gz7.', NULL, '2025-09-21 13:57:52', '2025-10-23 09:40:54', '966555555559', 'Tech University', 'Computer Science Professor', 1, 12, 'recruiter', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Jane', 'Doe', 'janee@example.com', NULL, '$2y$12$Fuvv.cEabuihd0K8JGZgwucvRs.w5jI2iIpttL8wAqhrOKSz/A2US', NULL, '2025-09-03 17:41:42', '2025-10-17 14:57:09', '966555555510', NULL, NULL, 6, 10, 'candidate', 1, NULL, NULL, 10, NULL, NULL, NULL),
(9, 'Corbin', 'Dibbert', 'hintz.carmine@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'UKXnZImOHR', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 9636 8356', NULL, NULL, 21, 31, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Maia', 'Cummerata', 'beverly.frami@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'dTgLiz80Y4', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 3086 1202', NULL, NULL, 22, 32, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Gwen', 'Miller', 'lee.conn@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'asguhmZKU7', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 1174 9080', NULL, NULL, 23, 33, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Cloyd', 'Waelchi', 'tabshire@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Hx4saAbW8O', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 0930 9731', NULL, NULL, 24, 34, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'John', 'Lebsack', 'ada34@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'NWKkOs1a5t', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 6405 3162', NULL, NULL, 25, 35, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Dayne', 'Adams', 'daron.wilderman@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'BFNE6fiUVd', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 0651 5111', NULL, NULL, 26, 36, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Myrtis', 'Hammes', 'eking@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Kbe6dT3P5z', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 7030 0074', NULL, NULL, 27, 37, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Zander', 'Gibson', 'wiza.terry@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '6MYHTBgTTI', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 5118 3167', NULL, NULL, 28, 38, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Jazmin', 'White', 'marilyne.casper@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'MQ0tL1brmB', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 9010 6626', NULL, NULL, 29, 39, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Daisy', 'Prosacco', 'josiah18@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '3fkiLDHXuk', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 8018 5661', NULL, NULL, 30, 40, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Stan', 'Walsh', 'kris81@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'mV893utKoC', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 1195 2552', NULL, NULL, 31, 41, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Katharina', 'Parker', 'lueilwitz.javier@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'zQ3ctgw9bI', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 3911 2987', NULL, NULL, 32, 42, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Henriette', 'Flatley', 'herminio.streich@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'NM8byX5ezd', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 7341 9122', NULL, NULL, 33, 43, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Abagail', 'Mayer', 'nakia52@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'QMRnCebAUx', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 1765 1231', NULL, NULL, 34, 44, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Joy', 'Corwin', 'alia.witting@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '04rYBhB8tX', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 8097 7169', NULL, NULL, 35, 45, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Frederik', 'Nikolaus', 'rudy.bednar@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'GY0n7l3AlK', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 15 8480 7831', NULL, NULL, 36, 46, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Donnie', 'Braun', 'eveline51@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'YSvOLIRujH', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 2127 0937', NULL, NULL, 37, 47, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Beatrice', 'Gleason', 'hans23@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'jRfLEyszzJ', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 6030 1888', NULL, NULL, 38, 48, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Sabryna', 'Weber', 'sawayn.brigitte@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'BlMJdeEZIo', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 1696 0494', NULL, NULL, 39, 49, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Elaina', 'Mann', 'fkautzer@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'ibWmYxbBrv', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 5902 6258', NULL, NULL, 40, 50, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Lane', 'Schamberger', 'saul.dach@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '6dk7OXHlm4', '2025-10-15 09:40:40', '2025-10-23 09:41:47', '+20 11 7119 6780', 'Grant, Hahn and Roob', 'Telecommunications Equipment Installer', 41, NULL, 'recruiter', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Gisselle', 'Effertz', 'kuhic.kamren@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'xBv1zVTBSZ', '2025-10-15 09:40:40', '2025-10-27 06:21:31', '+20 11 4911 7012', 'Pfannerstill, Lebsack and Anderson', 'Medical Scientists', 42, NULL, 'recruiter', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Alaina', 'Dickens', 'schneider.minnie@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'd43WJkgBjr', '2025-10-15 09:40:40', '2025-10-27 06:21:59', '+20 16 5010 9858', 'Zieme-Fritsch', 'Network Admin OR Computer Systems Administrator', 43, NULL, 'recruiter', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Orville', 'West', 'hhyatt@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'VfmpLnVRKv', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 3696 5347', 'Lebsack, Hills and Cassin', 'Education Teacher', 44, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Sydni', 'Simonis', 'hand.gerardo@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'yxEZfkeJBR', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 1381 5819', 'McGlynn, Kozey and Bogan', 'Hazardous Materials Removal Worker', 45, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Eldora', 'Olson', 'lennie.rowe@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'JA5qa3aIGr', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 2668 1847', 'Schaden, Rowe and Keeling', 'Marine Architect', 46, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Lilly', 'Pfannerstill', 'trantow.cary@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'xUEkJfG3Ql', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 15 7190 0258', 'Schuppe-Reinger', 'Buyer', 47, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Frederic', 'Cremin', 'skovacek@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '3J1IfpuhJU', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 4979 8473', 'Gleason-Kuvalis', 'Camera Operator', 48, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Lina', 'Jacobs', 'nikko38@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'jrKS7KXLC4', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 5735 3978', 'Hoppe-Bode', 'Law Enforcement Teacher', 49, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Ralph', 'Bins', 'buddy.hackett@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '1gD9aJRpDl', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 8980 0330', 'Sipes, Murphy and Renner', 'Librarian', 50, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Freddie', 'Jacobi', 'jerrold.kohler@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'KUcMq8V5je', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 8390 1893', NULL, NULL, 51, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Mateo', 'McKenzie', 'kcormier@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'w36sVyhHkj', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 3993 0430', NULL, NULL, 52, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Jackson', 'Morar', 'claudine.monahan@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'IMbL0RLNP6', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 4150 8173', 'Franecki, Stokes and Johnston', 'Portable Power Tool Repairer', 53, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Elisha', 'Crooks', 'umonahan@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'ZMLFkiI6eL', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 2540 3222', NULL, NULL, 54, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Penelope', 'Hudson', 'frida.rice@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Qj3a7YkOnf', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 15 1234 7787', 'Torphy-Berge', 'Fashion Model', 55, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Hulda', 'Mann', 'aliya.nicolas@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'g4O16EqO89', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 6484 2652', NULL, NULL, 56, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Rosina', 'Morar', 'tatum90@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'HszDd9hB6x', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 6098 6419', NULL, NULL, 57, 51, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Junius', 'Haag', 'swunsch@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'xNRQmjln7y', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 7130 9122', NULL, NULL, 58, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Alexandrine', 'Walsh', 'glover.carlo@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'RC6Wy6F1Y8', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 4872 5555', NULL, NULL, 59, 52, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Einar', 'Kuhn', 'burnice38@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'C3tDTwURtG', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 9737 1743', NULL, NULL, 60, 53, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Garfield', 'Predovic', 'ustoltenberg@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'nbasixzISk', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 0796 4715', NULL, NULL, 61, 54, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Andy', 'D\'Amore', 'gmedhurst@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'dqrKlE04KN', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 0303 3249', NULL, NULL, 62, 55, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Garth', 'Roberts', 'hiram42@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'CWs4iyW3uG', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 7002 8324', NULL, NULL, 63, 56, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Dagmar', 'Weber', 'heaney.benedict@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'kkpomDl5dU', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 7025 7075', 'Greenholt and Sons', 'Supervisor Correctional Officer', 64, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Lolita', 'Stanton', 'kilback.andreanne@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '6cAcUhfhYn', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 3990 7942', NULL, NULL, 65, 57, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Claude', 'Bruen', 'peter.johns@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'YLKzQDyIih', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 6822 5331', NULL, NULL, 66, 58, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Eliane', 'Bauch', 'wiegand.harold@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '2GVtodS3hC', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 2042 1637', NULL, NULL, 67, 59, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Alaina', 'Schuppe', 'lbergnaum@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'P0QSjfWF49', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 4051 2939', NULL, NULL, 68, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Roscoe', 'Runte', 'amanda.daugherty@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'BChFTiRNZy', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 1057 5760', NULL, NULL, 69, 60, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Pedro', 'Rutherford', 'nya.larson@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '8LlMY9x5wy', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 3495 5093', 'Krajcik-Stamm', 'Urban Planner', 70, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Era', 'Dicki', 'dicki.izabella@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'sAefDI1Sst', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 15 7715 4379', 'Ferry LLC', 'Animal Control Worker', 71, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Constance', 'Fahey', 'xharber@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'sDjnVKxIUA', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 7037 0805', NULL, NULL, 72, 61, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Lyda', 'Turner', 'kenton.mckenzie@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'LMlsyfiPV1', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 2650 7750', 'Konopelski PLC', 'Health Technologist', 73, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Thomas', 'King', 'judge.parker@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '3NeDQdg0vu', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 1494 7060', NULL, NULL, 74, 62, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Cecile', 'Heller', 'russel.halle@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'jPvmtBJ7Zo', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 7202 2003', 'Bartoletti, Rath and Bernier', 'Embossing Machine Operator', 75, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Jabari', 'Schuppe', 'margarita.bradtke@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'D4riTcDYdr', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 6127 5073', NULL, NULL, 76, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Larue', 'O\'Keefe', 'nsanford@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'PFbew84r0b', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 3429 6846', 'Reilly Ltd', 'Courier', 77, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Burnice', 'Leannon', 'lue58@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'fYMkFDS9qb', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 6894 9628', NULL, NULL, 78, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'Aric', 'Mohr', 'ziemann.ellie@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '9pRRQinWcH', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 0043 6981', NULL, NULL, 79, 63, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Cleora', 'Zemlak', 'tabitha.bechtelar@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'uzzCa39Zyw', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 2797 1694', NULL, NULL, 80, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Abigale', 'Kiehn', 'thora.hermiston@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'c5qx8zrMN5', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 8854 9803', NULL, NULL, 81, 64, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Ocie', 'Stanton', 'federico.schmidt@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'pV9CaDBesb', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 15 1788 7706', 'Hoppe, Quigley and Watsica', 'Woodworking Machine Operator', 82, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Toby', 'Beahan', 'gwalter@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'A3t2XgCffj', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 7363 8413', 'Jacobi PLC', 'Communications Teacher', 83, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Iliana', 'Labadie', 'roob.melody@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'dyGe7v5Dwh', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 9098 2504', 'Sporer-Mertz', 'Materials Scientist', 84, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Lucy', 'Spinka', 'dahlia.windler@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'M9KasMZfPl', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 8778 3543', NULL, NULL, 85, 65, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Joannie', 'Hahn', 'blanda.alexis@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'FCE4QwP6sb', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 7891 3997', NULL, NULL, 86, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Erica', 'Wisoky', 'zswift@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'HJshXd64Fc', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 7059 4516', NULL, NULL, 87, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Drew', 'Wiza', 'toconnell@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'N344Ex5k4m', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 4436 5520', 'Crooks Group', 'Fence Erector', 88, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Yasmin', 'Pagac', 'lorine70@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '8DfSHnoJyK', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 1890 4182', NULL, NULL, 89, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Melissa', 'Miller', 'johns.elroy@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Ia2g1UX73M', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 7033 5807', NULL, NULL, 90, 66, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Adelle', 'Bernhard', 'nella.reinger@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'DfUVUBHRoc', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 2985 3171', 'Maggio and Sons', 'Marketing VP', 91, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Gilda', 'Nitzsche', 'simone.carter@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'uuqjnuMwFH', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 3515 2984', NULL, NULL, 92, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Ricardo', 'Marvin', 'moriah.haag@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'FjKgyTlMQM', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 1208 6963', 'Beer Ltd', 'Diesel Engine Specialist', 93, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Alessandro', 'Auer', 'okey21@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'IX3gPxjDHU', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 3866 4515', NULL, NULL, 94, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Beaulah', 'McLaughlin', 'shaylee82@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Giw4SDFXSM', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 15 7649 5956', NULL, NULL, 95, 67, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Virginia', 'Halvorson', 'pkoepp@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '8nwdBCGUcw', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 6674 8651', 'Wunsch-Will', 'Caption Writer', 96, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Genesis', 'Thompson', 'opowlowski@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Go6MPSmzhB', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 9146 5441', NULL, NULL, 97, 68, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Adah', 'Smith', 'garnet54@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'GDnSBA39Qh', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 2747 4426', NULL, NULL, 98, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Tobin', 'Boyer', 'vmaggio@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'aSEk93rUKI', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 0803 7607', NULL, NULL, 99, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Oleta', 'Kessler', 'stracke.tyrique@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'LnFDPE3Zj8', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 9078 0424', NULL, NULL, 100, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Lessie', 'Conn', 'mccullough.martine@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'XOE3xPWKAh', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 3728 4753', NULL, NULL, 101, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Michelle', 'Vandervort', 'frami.easter@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'GCO2GrWdmr', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 15 8120 8437', NULL, NULL, 102, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Elijah', 'Huels', 'fiona45@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '32L2gVCuZr', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 3317 3663', NULL, NULL, 103, 69, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Nathen', 'Rolfson', 'imelda.cremin@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '2kF4mipXKu', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 4865 3763', 'Bosco, Langosh and O\'Connell', 'Transportation and Material-Moving', 104, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Tyrese', 'Lang', 'pdurgan@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'REDNasTR5u', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 15 7050 4507', NULL, NULL, 105, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Fritz', 'Turcotte', 'zemlak.josephine@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'BSkNhYHrCX', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 2472 9160', NULL, NULL, 106, 70, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Efrain', 'Tremblay', 'oreilly@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'kdcLAZU6qu', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 9570 0298', NULL, NULL, 107, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Eliza', 'Kuhlman', 'jakubowski.brittany@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '97d2fIRJvz', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 7304 4797', NULL, NULL, 108, 71, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Simone', 'Parisian', 'maci51@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'J0FlVA1b0s', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 1025 3044', 'Hickle LLC', 'Singer', 109, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Isabell', 'Grant', 'frida.hessel@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'yYepegLs01', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 9598 8790', NULL, NULL, 110, 72, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Krystina', 'Johnson', 'matilde.parker@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '6Se1AFtaCT', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 1014 7629', NULL, NULL, 111, 73, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Kathryn', 'Schulist', 'ida79@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'goKKl0tanA', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 5550 8970', 'Fay, Tremblay and Vandervort', 'Administrative Support Supervisors', 112, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Lorenz', 'Kautzer', 'zboncak.evalyn@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'uJicGt6ltE', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 1702 9767', 'Hayes Inc', 'History Teacher', 113, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Cecelia', 'Swaniawski', 'raymundo.lubowitz@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '7yMCiiFk04', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 0487 9331', NULL, NULL, 114, 74, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Magnus', 'Simonis', 'friesen.beth@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'RpOOZssPkf', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 1513 6162', NULL, NULL, 115, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Frankie', 'Paucek', 'vandervort.ahmad@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'YGlWfG0tj7', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 12 9513 4960', 'Towne, Wisozk and Brakus', 'Industrial Safety Engineer', 116, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Stephen', 'Kihn', 'zmedhurst@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'BFYr8GkwJL', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 6621 4371', NULL, NULL, 117, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Amir', 'Berge', 'max.effertz@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '0PzGYNsPga', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 1278 1738', 'Hansen-Boehm', 'Securities Sales Agent', 118, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'Annabelle', 'Harber', 'roderick.windler@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'VwlKFOxL5L', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 3053 3257', NULL, NULL, 119, 75, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Stevie', 'Lang', 'pattie65@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'oZLzzynWw8', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 5079 6919', NULL, NULL, 120, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Bryana', 'Runte', 'wilderman.colby@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '0dZEGE5fq9', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 2748 2968', NULL, NULL, 121, 76, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Edgardo', 'Cummerata', 'kassulke.shannon@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'b4wnZfmrQm', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 6710 5218', 'Barton Inc', 'Home Health Aide', 122, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Summer', 'Witting', 'ydickens@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'pbH9Lzmy9d', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 10 1696 8269', NULL, NULL, 123, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Jerome', 'Heathcote', 'kunde.sally@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '9RweUpOliZ', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 18 3594 9071', 'Brekke Inc', 'Poet OR Lyricist', 124, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Tristin', 'Schmeler', 'yoconner@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'f5nZCrG5oC', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 17 8688 0491', 'Graham-Reilly', 'Telecommunications Facility Examiner', 125, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Sydney', 'Yost', 'haag.jaylon@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'vqwMv8Ckzt', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 9929 4890', 'Halvorson-Rutherford', 'Drywall Ceiling Tile Installer', 126, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Mireya', 'Roberts', 'arnoldo.schmitt@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'DmrRHZyo0P', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 11 9377 3304', NULL, NULL, 127, 77, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Lizeth', 'Schimmel', 'magnus.kreiger@example.com', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'snPTSHmaS6', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 9644 8053', NULL, NULL, 128, 78, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Ellis', 'Rodriguez', 'presley.gulgowski@example.org', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'XUjSjKxHzu', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 16 5250 2956', 'Shanahan, Huel and Botsford', 'Insurance Sales Agent', 129, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Albert', 'Grant', 'bashirian.sylvan@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Y4vhxRXi8M', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 15 1235 7923', 'Lehner, Hansen and Schimmel', 'Reservation Agent OR Transportation Ticket Agent', 130, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Dave', 'Wisoky', 'rowland54@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'btxhW5ca7x', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 15 1086 9412', NULL, NULL, 131, 79, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'Erich', 'Daniel', 'pfeffer.vaughn@example.net', '2025-10-15 09:40:40', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '2o1aEJYfgF', '2025-10-15 09:40:40', '2025-10-15 09:40:40', '+20 19 2971 5386', 'Heathcote Inc', 'Precision Aircraft Systems Assemblers', 132, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'Carli', 'Hermann', 'gmertz@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'soVTwqRLtJ', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 11 7633 9721', NULL, NULL, 133, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'Zaria', 'Hermann', 'spinka.bella@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '8weTyL6uZi', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 17 6332 5247', NULL, NULL, 134, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Crystal', 'Koelpin', 'ona.torp@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'smbXiAZyPs', '2025-10-15 09:40:41', '2025-10-23 08:18:32', '+20 16 7505 3069', NULL, NULL, 135, 80, 'candidate', NULL, '2025-10-23 08:18:32', NULL, NULL, NULL, NULL, NULL),
(124, 'Nash', 'Baumbach', 'nbergnaum@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '1a88A2E4eY', '2025-10-15 09:40:41', '2025-10-23 08:18:32', '+20 11 3959 8037', NULL, NULL, 136, 81, 'candidate', NULL, '2025-10-23 08:18:32', NULL, NULL, NULL, NULL, NULL),
(125, 'Haylee', 'Schimmel', 'wilfrid.stiedemann@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'utqdlRc14W', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 12 8755 6242', NULL, NULL, 137, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Lewis', 'Wisoky', 'xmcdermott@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'ksyZXYNG0P', '2025-10-15 09:40:41', '2025-10-27 06:18:25', '+20 12 6581 9069', NULL, NULL, 138, 82, 'candidate', NULL, '2025-10-27 06:18:25', NULL, NULL, NULL, NULL, NULL),
(127, 'Lonny', 'Brakus', 'karli.block@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'JsaPEuYWdT', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 12 4655 3803', NULL, NULL, 139, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'John', 'Updated', 'dan.dickens@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'm9IB76IsAW', '2025-10-15 09:40:41', '2025-10-27 06:18:25', '+11111212311', NULL, NULL, 2, 3, 'candidate', NULL, '2025-10-27 06:18:25', NULL, NULL, NULL, 1, NULL),
(129, 'Madilyn', 'Parker', 'jada.will@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'fZZabyCRZR', '2025-10-15 09:40:41', '2025-10-27 06:19:29', '+20 10 0256 1048', 'Kutch, Zemlak and Balistreri', 'Building Inspector', 141, 1, 'recruiter', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Jermaine', 'Fay', 'delmer50@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'jggGtLKsDs', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 18 3251 1473', NULL, NULL, 142, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'Vicenta', 'Macejkovic', 'qmurphy@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'zOyKZfj5ZN', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 16 6898 4180', NULL, NULL, 143, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'Sofia', 'Murazik', 'dooley.cicero@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'nyzlINpppW', '2025-10-15 09:40:41', '2025-10-27 06:18:31', '+20 15 4856 9757', NULL, NULL, 144, 84, 'candidate', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'Fern', 'Adams', 'gbruen@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'r3RfRzKvvL', '2025-10-15 09:40:41', '2025-10-27 06:20:17', '+20 12 3732 2578', 'Mosciski LLC', 'Program Director', 145, NULL, 'recruiter', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Thora', 'Grant', 'ignacio.mraz@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'LhISCA4Gm7', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 18 8310 6326', NULL, NULL, 146, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Jeramie', 'Fay', 'nikko09@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'ci1VnCRBIx', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 10 7028 4923', NULL, NULL, 147, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Cordelia', 'Dickens', 'lurline93@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'e4JlrJnnFC', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 10 0581 1111', NULL, NULL, 148, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Dedrick', 'Kozey', 'wisoky.gabriella@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'aLYyFAGGaF', '2025-10-15 09:40:41', '2025-10-27 06:18:31', '+20 18 2747 6295', NULL, NULL, 149, 85, 'candidate', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Edwina', 'Fahey', 'caitlyn00@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '9ZYFcnTx6L', '2025-10-15 09:40:41', '2025-10-27 06:20:39', '+20 19 1924 0836', 'Renner, Kilback and Feest', 'Law Enforcement Teacher', 150, NULL, 'recruiter', NULL, '2025-10-27 06:20:39', NULL, NULL, NULL, NULL, NULL),
(139, 'Lucile', 'Marvin', 'casper.ernser@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'gvFsf8ok82', '2025-10-15 09:40:41', '2025-10-27 06:20:17', '+20 16 2004 7754', 'McDermott-Barrows', 'Cost Estimator', 151, NULL, 'recruiter', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Jeromy', 'O\'Keefe', 'kjones@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'uUX4m5p78S', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 15 4639 4110', NULL, NULL, 152, 86, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Waldo', 'Towne', 'imckenzie@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'ylg6FIXSr9', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 10 9800 4332', NULL, NULL, 153, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'Johnny', 'Conn', 'rkuhic@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Ugv8i69oxR', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 19 4773 7476', NULL, NULL, 154, 87, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Jules', 'Braun', 'jones.brianne@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'cjtxyA8V3R', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 12 4108 9748', NULL, NULL, 155, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'Vena', 'Reichert', 'liliane35@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'i8yejKxWGk', '2025-10-15 09:40:41', '2025-10-27 06:20:39', '+20 16 6200 2807', 'Heller-Littel', 'Maintenance Equipment Operator', 156, NULL, 'recruiter', NULL, '2025-10-27 06:20:39', NULL, NULL, NULL, NULL, NULL),
(145, 'Jaquelin', 'Collins', 'kaylie00@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'eoMFQX1Zh1', '2025-10-15 09:40:41', '2025-10-27 06:20:43', '+20 17 9212 9403', 'Koch LLC', 'Economics Teacher', 157, NULL, 'recruiter', NULL, '2025-10-27 06:20:43', NULL, NULL, NULL, NULL, NULL),
(146, 'Jaquelin', 'Barton', 'hyatt.arvid@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'It5yL4BfQP', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 16 5885 2040', 'Rutherford, Kuhn and Kuvalis', 'Middle School Teacher', 158, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'Kade', 'Ernser', 'francesco.grant@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '8f8ww6pVbx', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 18 3542 4498', 'Marquardt Ltd', 'Meat Packer', 159, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'Sincere', 'Langworth', 'emelia.kilback@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'sx1RIdjoAb', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 10 5963 1461', NULL, NULL, 160, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'Rita', 'Legros', 'schmeler.jarrod@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'IP5Nm5Cks9', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 16 1108 6399', NULL, NULL, 161, 88, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'Myles', 'Deckow', 'sgoyette@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'gGfrH1QzLG', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 19 8864 9735', 'Stamm Inc', 'Sawing Machine Tool Setter', 162, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'Otis', 'Medhurst', 'golda.mckenzie@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Ym2iGoCqHu', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 19 6298 6767', 'Sipes, Wolff and Hodkiewicz', 'Camera Operator', 163, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Aurelie', 'Haag', 'tgleason@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'I4zwXbNZrD', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 18 4889 0731', NULL, NULL, 164, 89, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'Eleonore', 'Russel', 'mherman@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'CYtNqubXtT', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 11 9021 5289', NULL, NULL, 165, 90, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'Jevon', 'Legros', 'hiram30@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'GJ24loJP18', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 10 6532 6507', 'Hartmann-Ondricka', 'Postal Clerk', 166, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'Angus', 'Deckow', 'etha96@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'k2OIkR7GiV', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 19 2103 1291', 'Borer-Thiel', 'Director Of Social Media Marketing', 167, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'Erika', 'Skiles', 'yasmine72@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'IpLzSoIAM8', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 19 6654 1995', NULL, NULL, 168, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'Judy', 'Hessel', 'agoyette@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Uv11bZQjoV', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 16 1907 9458', NULL, NULL, 169, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'Cletus', 'Hodkiewicz', 'mpouros@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'YGEHzR4aXB', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 11 7433 1981', 'Kunze LLC', 'Paper Goods Machine Operator', 170, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'Tatum', 'Ebert', 'robyn.schulist@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'O2UKisTKQ7', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 19 9758 9987', 'Windler Ltd', 'Budget Analyst', 171, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'Mollie', 'Shanahan', 'buster50@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'LvxifROWRo', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 17 4165 9357', 'Haley Ltd', 'Aircraft Structure Assemblers', 172, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'Orland', 'Kessler', 'corbin61@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'bItyncqsJm', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 16 5805 0487', NULL, NULL, 173, 91, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Melyssa', 'Rice', 'vking@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'ocg8SwRII4', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 12 7209 2717', 'Sanford, Jacobi and Bailey', 'Sound Engineering Technician', 174, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `company_name`, `job_title`, `city_id`, `major_id`, `type`, `is_active`, `deleted_at`, `api_token`, `total_period`, `major_name`, `sub_major_id`, `degree`) VALUES
(163, 'Vincenzo', 'Heller', 'lucie35@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'ZCqvYkCkVt', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 19 0362 1991', NULL, NULL, 175, 92, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Micah', 'West', 'clark.gorczany@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'S2FNv2ZS2j', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 16 2496 5588', NULL, NULL, 176, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Leila', 'Schinner', 'ccormier@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '81L1zxaedV', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 10 9304 6941', NULL, NULL, 177, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'Oma', 'Hintz', 'sabbott@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'cAU9Cwq6ZL', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 15 1854 2787', NULL, NULL, 178, 93, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'Mckayla', 'Kassulke', 'charlene63@example.com', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'nWdkhw4uEE', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 12 2695 0163', NULL, NULL, 179, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'Aniyah', 'Satterfield', 'tmacejkovic@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '1BpjCZN3M8', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 11 2512 1352', 'Schiller-Roob', 'Postal Clerk', 180, NULL, 'recruiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'Ebba', 'Heller', 'rkuphal@example.org', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', '58URk0ueyT', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 17 2989 6690', NULL, NULL, 181, 94, 'candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'Robert', 'Treutel', 'stokes.aracely@example.net', '2025-10-15 09:40:41', '$2y$12$VqKDS.uhSlFDAQmTBsHcBu6E.2gRfV5IDEPWlR3yOG7UunZ462AMW', 'Y3tHU9YZxy', '2025-10-15 09:40:41', '2025-10-15 09:40:41', '+20 18 2578 4332', NULL, NULL, 182, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'Candidate', 'User', 'candidate3@example.com', NULL, '$2y$12$bY6R1zQKJsjzXKdU8GLDMuGMxLBsIYHY3uFNkzj10gZ1J8IRYOc76', NULL, '2025-10-19 09:03:35', '2025-10-23 08:18:22', '96612345788', NULL, NULL, 1, 1, 'candidate', NULL, '2025-10-23 08:18:22', '37f47a33a93b8ebf1da54f1fb69e04044fd66bf2d35b22e87301755cdda4c5bfd444b7cf7161b5d8', NULL, 'Computer Science_en', 1, NULL),
(172, 'Admin', 'User', 'aadmminn@example.com', NULL, '$2y$12$cyegfSgXbRfm5LTC9y44l.vvUUn3UUw/Mewub9KFTBuK.6328Iznu', NULL, '2025-10-22 07:51:33', '2025-10-30 10:03:27', '966123456789', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, '20152517baa0a5230f00a8a5374b05a801b59315a7b7dfb5c534e1c2122de9662ea51855c23998f8', NULL, NULL, NULL, NULL),
(173, 'John', 'Doe', 'john.doe@example.com', NULL, '$2y$12$Yu6UfnBvpAMT7SrNgkyUweKhCAKJqhBRsdkk05fv.Vc4V1ZcofBEG', NULL, '2025-10-26 11:50:51', '2025-10-26 11:50:51', '+1234567890', NULL, NULL, 1, 1, 'candidate', 1, NULL, NULL, NULL, NULL, 1, NULL),
(174, 'John', 'Doe', 'john.doe2@example.com', NULL, '$2y$12$9qRtTGchUQyqbtr3xD9XI.BOvAyeUxzvBH7A3Pi.E0V92XVKIo82a', NULL, '2025-10-26 11:58:09', '2025-10-27 05:52:03', '+12345678290', NULL, NULL, 1, 1, 'candidate', 0, '2025-10-27 05:52:03', NULL, NULL, NULL, 1, NULL),
(175, 'Barclay Santana', 'Neil Johnston', 'xodiw@mailinator.com', NULL, '$2y$12$6icV04CxViK9dRSPNxj7jeFixAZi02TcmOKPRt/GAbYZeEPRazBfW', NULL, '2025-10-26 12:01:13', '2025-10-27 05:40:46', '+1 (653) 314-7889', NULL, NULL, 4, 2, 'candidate', 1, NULL, NULL, NULL, NULL, 7, NULL),
(176, 'Whoopi Dejesus', 'Zahir Dunn', 'hewiq@mailinator.com', NULL, '$2y$12$EqHIkVWPgx.D3dukMOPX..1NhwO/RC/Mcl..tKi8ESahTTeJZ6qwe', NULL, '2025-10-27 06:21:01', '2025-10-27 06:21:01', '+1 (432) 595-4331', 'Brennan and Black Trading', 'Sit ipsa est commo', 3, 3, 'recruiter', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'Candidate', 'User', 'candidate9@example.com', NULL, '$2y$12$w5M10fmxqs2HCyLVpwMCw.Hvr7iqcZtBuYwp0gH17I/BE5rjrbjU.', NULL, '2025-11-05 11:32:17', '2025-11-05 11:32:41', '96612345188', NULL, NULL, 1, 1, 'candidate', NULL, NULL, 'ae96839346ac3b2a39cc01e745ba89c1187deddf96a7ed6c2ba82b13e281ab7d073655cf74924d34', NULL, 'Computer Science_en', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
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
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_user_id_foreign` (`user_id`),
  ADD KEY `education_major_id_foreign` (`major_id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_recruiter_id_foreign` (`recruiter_id`),
  ADD KEY `favorites_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_plan`
--
ALTER TABLE `feature_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_plan_feature_id_foreign` (`feature_id`),
  ADD KEY `feature_plan_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_user_id_foreign` (`user_id`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interviews_user_id_foreign` (`user_id`);

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
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify_users`
--
ALTER TABLE `notify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notify_users_notification_id_foreign` (`notification_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_email_index` (`email`),
  ADD KEY `otps_context_index` (`context`),
  ADD KEY `otps_expires_at_index` (`expires_at`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `refresh_tokens_token_hash_unique` (`token_hash`),
  ADD KEY `refresh_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_message_id_foreign` (`message_id`),
  ADD KEY `replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `retrievals`
--
ALTER TABLE `retrievals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `retrievals_subscription_id_foreign` (`subscription_id`),
  ADD KEY `retrievals_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_user_id_foreign` (`user_id`),
  ADD KEY `skills_skillable_type_skillable_id_index` (`skillable_type`,`skillable_id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_name_provider_id_unique` (`provider_name`,`provider_id`),
  ADD KEY `social_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `subscriptions_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `sub_majors`
--
ALTER TABLE `sub_majors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_majors_major_id_foreign` (`major_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD KEY `users_city_id_foreign` (`city_id`),
  ADD KEY `users_major_id_foreign` (`major_id`),
  ADD KEY `users_sub_major_id_foreign` (`sub_major_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `feature_plan`
--
ALTER TABLE `feature_plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `notify_users`
--
ALTER TABLE `notify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1868;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `retrievals`
--
ALTER TABLE `retrievals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sub_majors`
--
ALTER TABLE `sub_majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_major_id_foreign` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`),
  ADD CONSTRAINT `education_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_recruiter_id_foreign` FOREIGN KEY (`recruiter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_plan`
--
ALTER TABLE `feature_plan`
  ADD CONSTRAINT `feature_plan_feature_id_foreign` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`),
  ADD CONSTRAINT `feature_plan_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `interviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notify_users`
--
ALTER TABLE `notify_users`
  ADD CONSTRAINT `notify_users_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD CONSTRAINT `refresh_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `retrievals`
--
ALTER TABLE `retrievals`
  ADD CONSTRAINT `retrievals_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `retrievals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_majors`
--
ALTER TABLE `sub_majors`
  ADD CONSTRAINT `sub_majors_major_id_foreign` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `users_major_id_foreign` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`),
  ADD CONSTRAINT `users_sub_major_id_foreign` FOREIGN KEY (`sub_major_id`) REFERENCES `sub_majors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
