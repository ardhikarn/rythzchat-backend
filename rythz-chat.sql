-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 05:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rythz-chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `friendlist`
--

CREATE TABLE `friendlist` (
  `friendlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `friendlist_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `friendlist_updated_id` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friendlist`
--

INSERT INTO `friendlist` (`friendlist_id`, `user_id`, `friend_id`, `friendlist_created_at`, `friendlist_updated_id`) VALUES
(23, 6, 23, '2020-09-28 03:49:11', '2020-09-28 03:49:12'),
(25, 6, 24, '2020-09-28 03:55:31', '2020-09-28 03:55:31'),
(26, 23, 24, '2020-09-28 03:57:31', '2020-09-28 03:57:31'),
(37, 23, 25, '2020-09-29 06:23:43', '2020-09-29 06:23:43'),
(40, 23, 31, '2020-10-22 07:56:17', '2020-10-22 07:56:17'),
(41, 23, 32, '2020-10-22 07:56:32', '2020-10-22 07:56:32'),
(42, 23, 6, '2020-10-22 17:30:11', '2020-10-22 17:30:11'),
(43, 23, 27, '2020-10-22 22:57:23', '2020-10-22 22:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `message_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `message_updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`room_id`, `user_id`, `message`, `message_created_at`, `message_updated_at`) VALUES
(953093, 25, 'tes', '2020-09-29 03:37:15', '2020-09-29 03:37:15'),
(953093, 25, 'dicobaa', '2020-09-29 03:37:22', '2020-09-29 03:37:22'),
(953093, 23, 'okeoke', '2020-09-29 03:39:57', '2020-09-29 03:39:57'),
(953093, 25, 'jos', '2020-09-29 03:48:11', '2020-09-29 03:48:11'),
(953093, 23, 'jos opo', '2020-09-29 03:48:59', '2020-09-29 03:48:59'),
(953093, 23, 'ping', '2020-09-29 03:49:47', '2020-09-29 03:49:47'),
(953093, 23, 'ping', '2020-09-29 03:49:54', '2020-09-29 03:49:54'),
(953093, 23, 'woy', '2020-09-29 03:49:58', '2020-09-29 03:49:58'),
(953093, 23, 'wok', '2020-09-29 03:50:48', '2020-09-29 03:50:48'),
(953093, 25, 'wok', '2020-09-29 03:51:07', '2020-09-29 03:51:07'),
(953093, 25, 'wok', '2020-09-29 03:51:09', '2020-09-29 03:51:09'),
(953093, 23, 'masih bisa aje', '2020-09-29 03:51:17', '2020-09-29 03:51:17'),
(953093, 25, 'gatau la ini', '2020-09-29 03:51:23', '2020-09-29 03:51:23'),
(839032, 25, 'hai', '2020-09-29 04:23:02', '2020-09-29 04:23:02'),
(839032, 25, 'wasapp', '2020-09-29 04:23:08', '2020-09-29 04:23:08'),
(991226, 23, 'haloo', '2020-09-29 06:25:08', '2020-09-29 06:25:08'),
(991226, 25, 'dicoba', '2020-09-29 06:25:22', '2020-09-29 06:25:22'),
(991226, 23, 'oke gan masuk', '2020-09-29 06:25:29', '2020-09-29 06:25:29'),
(991226, 25, 'ngapa', '2020-09-29 06:25:43', '2020-09-29 06:25:43'),
(733343, 23, 'halo', '2020-09-29 07:38:22', '2020-09-29 07:38:22'),
(733343, 25, 'oke masuk', '2020-09-29 07:38:30', '2020-09-29 07:38:30'),
(733343, 23, 'okkk sama', '2020-09-29 07:38:35', '2020-09-29 07:38:35'),
(773577, 23, 'coba tes masuk', '2020-09-29 08:22:12', '2020-09-29 08:22:12'),
(773577, 25, 'masuk coba', '2020-09-29 08:23:01', '2020-09-29 08:23:01'),
(773577, 23, 'woy im comeback', '2020-09-29 08:45:38', '2020-09-29 08:45:38'),
(773577, 25, 'darimana lu', '2020-09-29 08:45:51', '2020-09-29 08:45:51'),
(773577, 23, 'dari rumah, insyaAllah mau ke mekkah', '2020-09-29 08:46:08', '2020-09-29 08:46:08'),
(773577, 25, 'masyaAllah, ikut coy', '2020-09-29 08:46:23', '2020-09-29 08:46:23'),
(773577, 23, 'berdoa coy, Allah maha memberi', '2020-09-29 08:46:41', '2020-09-29 08:46:41'),
(773577, 25, 'masyaAllah siaap ', '2020-09-29 08:46:49', '2020-09-29 08:46:49'),
(773577, 23, 'mantap', '2020-09-29 09:38:56', '2020-09-29 09:38:56'),
(773577, 25, 'malam bro', '2020-09-29 12:01:46', '2020-09-29 12:01:46'),
(773577, 23, 'malam juga wkwkw', '2020-09-29 12:02:00', '2020-09-29 12:02:00'),
(773577, 25, 'lu dimana wkwk', '2020-09-29 12:02:15', '2020-09-29 12:02:15'),
(773577, 23, 'diamana mana wkwkwk', '2020-09-29 12:02:31', '2020-09-29 12:02:31'),
(773577, 23, 'beli jajan coy, ayok', '2020-09-29 14:09:14', '2020-09-29 14:09:14'),
(773577, 25, 'oke gas,, ', '2020-09-29 14:09:23', '2020-09-29 14:09:23'),
(535935, 23, 'hwowowow', '2020-09-29 14:34:09', '2020-09-29 14:34:09'),
(773577, 23, 'hei', '2020-09-29 14:36:00', '2020-09-29 14:36:00'),
(535935, 23, 'piye kabare', '2020-09-29 14:40:44', '2020-09-29 14:40:44'),
(535935, 24, 'sangar jhon jhon', '2020-09-29 14:40:51', '2020-09-29 14:40:51'),
(535935, 23, 'kowe dewek piye', '2020-09-29 14:40:59', '2020-09-29 14:41:00'),
(535935, 24, 'halaah error', '2020-09-29 14:41:07', '2020-09-29 14:41:07'),
(535935, 23, '', '2020-09-29 14:41:09', '2020-09-29 14:41:09'),
(535935, 23, 'awowowww', '2020-09-29 14:41:12', '2020-09-29 14:41:12'),
(773577, 25, 'opo', '2020-09-29 14:44:49', '2020-09-29 14:44:49'),
(773577, 23, 'errorrrawea', '2020-09-29 14:45:36', '2020-09-29 14:45:36'),
(773577, 23, 'opowe', '2020-10-16 09:30:47', '2020-10-16 09:30:47'),
(773577, 23, 'clear', '2020-10-16 09:30:50', '2020-10-16 09:30:50'),
(773577, 23, '-clear', '2020-10-16 09:30:52', '2020-10-16 09:30:52'),
(773577, 23, '--coy', '2020-10-16 09:30:56', '2020-10-16 09:30:56'),
(773577, 23, '---cot', '2020-10-16 09:31:00', '2020-10-16 09:31:00'),
(773577, 25, 'hai', '2020-10-20 06:03:48', '2020-10-20 06:03:48'),
(773577, 23, 'asdsdf', '2020-10-20 06:04:05', '2020-10-20 06:04:05'),
(535935, 24, 'arrr', '2020-10-20 06:05:04', '2020-10-20 06:05:04'),
(535935, 23, 'arrrrr', '2020-10-20 06:05:14', '2020-10-20 06:05:14'),
(535935, 24, 'assss', '2020-10-20 06:05:19', '2020-10-20 06:05:19'),
(773577, 23, 'aaa', '2020-10-21 03:26:29', '2020-10-21 03:26:29'),
(773577, 23, 'aaa', '2020-10-21 03:26:34', '2020-10-21 03:26:34'),
(984576, 25, 'hai gas', '2020-10-22 08:01:45', '2020-10-22 08:01:45'),
(984576, 25, 'gaes maksudnya', '2020-10-22 08:01:50', '2020-10-22 08:01:50'),
(984576, 23, 'holaa, apa kabar', '2020-10-22 08:02:09', '2020-10-22 08:02:09'),
(984576, 25, 'Alhamdulillah khair. kamu?', '2020-10-22 08:02:44', '2020-10-22 08:02:44'),
(984576, 23, 'alhamdulillah agak meriang bro', '2020-10-22 08:03:04', '2020-10-22 08:03:04'),
(984576, 25, 'Syafakallahu broo', '2020-10-22 08:03:39', '2020-10-22 08:03:39'),
(984576, 23, 'Aamiin. Semangat Coding !', '2020-10-22 08:03:54', '2020-10-22 08:03:54'),
(984576, 25, 'Siaaappp', '2020-10-22 08:04:05', '2020-10-22 08:04:05'),
(984576, 25, 'haii', '2020-10-22 08:06:02', '2020-10-22 08:06:02'),
(984576, 25, 'hai', '2020-10-22 08:06:29', '2020-10-22 08:06:29'),
(984576, 25, 'kabar kabar', '2020-10-22 08:09:14', '2020-10-22 08:09:14'),
(984576, 23, 'baik baik', '2020-10-22 08:13:04', '2020-10-22 08:13:04'),
(984576, 23, 'gimana', '2020-10-22 14:39:20', '2020-10-22 14:39:20'),
(984576, 23, 'ok', '2020-10-22 16:56:36', '2020-10-22 16:56:36'),
(984576, 23, 'oke', '2020-10-22 17:00:37', '2020-10-22 17:00:37'),
(984576, 23, 'gaes', '2020-10-22 17:28:29', '2020-10-22 17:28:29'),
(397132, 23, 'halooo', '2020-10-22 17:30:37', '2020-10-22 17:30:37'),
(984576, 23, 'gimana bro', '2020-10-22 17:32:59', '2020-10-22 17:32:59'),
(984576, 23, 'woy', '2020-10-22 17:35:27', '2020-10-22 17:35:27'),
(984576, 23, 'oke sip bisa', '2020-10-22 17:36:04', '2020-10-22 17:36:04'),
(31556, 23, 'koe sopo', '2020-10-22 17:36:15', '2020-10-22 17:36:15'),
(401704, 23, 'halo idola', '2020-10-22 17:36:23', '2020-10-22 17:36:23'),
(863749, 23, 'gaeeess', '2020-10-22 17:36:36', '2020-10-22 17:36:36'),
(863749, 23, 'aku adalah programmer yg handal', '2020-10-22 17:38:04', '2020-10-22 17:38:04'),
(863749, 23, 'aku adalah programmer yang sangat handal', '2020-10-22 17:38:33', '2020-10-22 17:38:33'),
(401704, 23, 'hei', '2020-10-22 17:45:33', '2020-10-22 17:45:33'),
(984576, 23, 'ssss', '2020-10-22 17:49:46', '2020-10-22 17:49:46'),
(397132, 23, 'piyyy', '2020-10-22 17:49:59', '2020-10-22 17:49:59'),
(397132, 23, 'aaaaaa', '2020-10-22 17:51:58', '2020-10-22 17:51:58'),
(397132, 23, 'bisalaaah', '2020-10-22 17:54:40', '2020-10-22 17:54:40'),
(863749, 23, 'asoy', '2020-10-22 17:54:47', '2020-10-22 17:54:47'),
(863749, 23, 'oke atas', '2020-10-22 18:02:17', '2020-10-22 18:02:17'),
(31556, 23, 'oke gan', '2020-10-22 18:24:55', '2020-10-22 18:24:55'),
(984576, 23, 'apa lu bro', '2020-10-22 18:25:15', '2020-10-22 18:25:15'),
(984576, 23, 'tesss', '2020-10-22 18:36:59', '2020-10-22 18:36:59'),
(984576, 23, 'ok', '2020-10-22 22:59:08', '2020-10-22 22:59:08'),
(984576, 23, 'apa kabar', '2020-10-22 23:02:33', '2020-10-22 23:02:33'),
(984576, 23, 'hai', '2020-10-22 23:04:12', '2020-10-22 23:04:12'),
(984576, 23, 'coba bisa', '2020-10-22 23:04:20', '2020-10-22 23:04:20'),
(41249, 23, 'woy', '2020-10-22 23:32:41', '2020-10-22 23:32:41'),
(984576, 25, 'haloo', '2020-10-22 23:38:55', '2020-10-22 23:38:55'),
(984576, 23, 'hai', '2020-10-22 23:39:09', '2020-10-22 23:39:09'),
(984576, 25, 'tes', '2020-10-22 23:39:34', '2020-10-22 23:39:34'),
(984576, 25, 'woy', '2020-10-22 23:40:54', '2020-10-22 23:40:54'),
(984576, 23, 'mantap', '2020-10-22 23:41:00', '2020-10-22 23:41:00'),
(984576, 23, 'hai', '2020-10-22 23:46:17', '2020-10-22 23:46:17'),
(984576, 25, 'kok gak masuk', '2020-10-22 23:46:29', '2020-10-22 23:46:29'),
(984576, 23, 'gimana', '2020-10-22 23:46:42', '2020-10-22 23:46:42'),
(984576, 25, 'macem mana ', '2020-10-22 23:46:59', '2020-10-22 23:46:59'),
(984576, 25, 'coba', '2020-10-22 23:50:05', '2020-10-22 23:50:05'),
(984576, 23, 'isoooo', '2020-10-22 23:52:53', '2020-10-22 23:52:53'),
(984576, 25, 'goodjobbb', '2020-10-22 23:52:58', '2020-10-22 23:52:58'),
(984576, 25, 'gas', '2020-10-23 05:56:20', '2020-10-23 05:56:20'),
(984576, 23, 'hai', '2020-10-23 06:00:13', '2020-10-23 06:00:13'),
(984576, 23, 'kok', '2020-10-23 06:02:07', '2020-10-23 06:02:07'),
(984576, 23, 'woy', '2020-10-23 06:02:53', '2020-10-23 06:02:53'),
(984576, 23, 'bajul iso', '2020-10-23 06:02:59', '2020-10-23 06:02:59'),
(984576, 23, 'gaes', '2020-10-23 06:03:42', '2020-10-23 06:03:42'),
(984576, 23, 'bro', '2020-10-23 06:09:06', '2020-10-23 06:09:06'),
(984576, 23, 'hai', '2020-10-23 06:25:43', '2020-10-23 06:25:43'),
(984576, 23, 'apakah yang dimaksud dengan javascript', '2020-10-23 06:39:52', '2020-10-23 06:39:52'),
(41249, 23, 'apa', '2020-10-23 08:00:21', '2020-10-23 08:00:21'),
(984576, 25, 'bro', '2020-10-24 04:31:10', '2020-10-24 04:31:10'),
(984576, 23, 'okee knpa', '2020-10-24 04:31:17', '2020-10-24 04:31:17'),
(984576, 23, 'bro', '2020-10-24 04:31:32', '2020-10-24 04:31:32'),
(984576, 25, 'woy', '2020-10-24 04:31:39', '2020-10-24 04:31:39'),
(984576, 25, 'woy', '2020-10-24 04:32:08', '2020-10-24 04:32:08'),
(984576, 23, 'loook', '2020-10-24 04:32:16', '2020-10-24 04:32:16'),
(984576, 23, 'e', '2020-10-24 04:32:26', '2020-10-24 04:32:26'),
(984576, 23, 'dd', '2020-10-24 04:32:44', '2020-10-24 04:32:44'),
(984576, 23, 'piye', '2020-10-24 04:33:22', '2020-10-24 04:33:22'),
(984576, 23, 'bro', '2020-10-24 04:37:33', '2020-10-24 04:37:33'),
(397132, 23, 'bos', '2020-10-24 04:38:11', '2020-10-24 04:38:11'),
(397132, 23, 'gimana bos', '2020-10-24 04:38:21', '2020-10-24 04:38:21'),
(397132, 6, 'oke', '2020-10-24 04:38:30', '2020-10-24 04:38:30'),
(397132, 23, 'oke', '2020-10-24 04:38:48', '2020-10-24 04:38:48'),
(397132, 6, 'macam mana', '2020-10-24 04:38:56', '2020-10-24 04:38:56'),
(397132, 23, 'bro', '2020-10-24 04:47:42', '2020-10-24 04:47:42'),
(397132, 6, 'ntah lah ', '2020-10-24 04:47:49', '2020-10-24 04:47:49'),
(397132, 23, 'hai', '2020-10-24 04:48:17', '2020-10-24 04:48:17'),
(397132, 23, '', '2020-10-24 04:48:17', '2020-10-24 04:48:17'),
(397132, 23, 'bos', '2020-10-24 04:48:28', '2020-10-24 04:48:28'),
(397132, 6, 'masuk', '2020-10-24 04:48:47', '2020-10-24 04:48:47'),
(397132, 23, 'jos', '2020-10-24 04:49:02', '2020-10-24 04:49:02'),
(397132, 6, 'alah', '2020-10-24 04:49:09', '2020-10-24 04:49:09'),
(984576, 23, 'hai', '2020-10-24 04:51:38', '2020-10-24 04:51:38'),
(984576, 25, 'apakabar', '2020-10-24 04:51:53', '2020-10-24 04:51:53'),
(984576, 23, 'awaawaw', '2020-10-24 04:52:06', '2020-10-24 04:52:06'),
(984576, 25, 'ssss', '2020-10-24 04:52:16', '2020-10-24 04:52:16'),
(984576, 23, 'ayolah', '2020-10-24 04:57:09', '2020-10-24 04:57:09'),
(984576, 25, 'bisa?', '2020-10-24 04:57:22', '2020-10-24 04:57:22'),
(984576, 23, 'belum bisa coy', '2020-10-24 04:58:06', '2020-10-24 04:58:06'),
(984576, 25, ' caranya gimanaaa', '2020-10-24 04:58:16', '2020-10-24 04:58:16'),
(984576, 23, 'gatau lah ni', '2020-10-24 05:00:25', '2020-10-24 05:00:25'),
(984576, 23, 'sumpek', '2020-10-24 05:00:55', '2020-10-24 05:00:55'),
(984576, 23, 'haddeeeh', '2020-10-24 05:01:35', '2020-10-24 05:01:35'),
(984576, 23, 'woy', '2020-10-24 05:01:51', '2020-10-24 05:01:51'),
(984576, 23, 'mboh', '2020-10-24 05:19:12', '2020-10-24 05:19:12'),
(984576, 23, 'kacau', '2020-10-24 05:19:22', '2020-10-24 05:19:22'),
(984576, 23, 'kacau lur lur', '2020-10-24 06:11:49', '2020-10-24 06:11:49'),
(984576, 25, 'bisa?', '2020-10-24 06:11:59', '2020-10-24 06:11:59'),
(984576, 23, 'kagakkk', '2020-10-24 06:12:03', '2020-10-24 06:12:03'),
(984576, 25, 'lhaitu udah bisa satu notif', '2020-10-24 06:12:15', '2020-10-24 06:12:15'),
(984576, 23, 'oiya udah bisa ekekek', '2020-10-24 06:12:22', '2020-10-24 06:12:22'),
(984576, 25, 'tapi belum spa', '2020-10-24 06:12:29', '2020-10-24 06:12:29'),
(984576, 23, 'gimana caranya yak', '2020-10-24 06:12:35', '2020-10-24 06:12:35'),
(984576, 25, '', '2020-10-24 06:12:39', '2020-10-24 06:12:39'),
(984576, 23, 'sek iso ora', '2020-10-24 07:07:58', '2020-10-24 07:07:58'),
(984576, 25, 'alhamdulillah sek iso', '2020-10-24 07:08:07', '2020-10-24 07:08:07'),
(984576, 25, 'tes', '2020-10-24 07:10:48', '2020-10-24 07:10:48'),
(984576, 25, 'sek iso ora', '2020-10-24 07:12:44', '2020-10-24 07:12:44'),
(984576, 23, 'isek nek notif', '2020-10-24 07:13:02', '2020-10-24 07:13:02'),
(984576, 23, 'gimana sekarang', '2020-10-24 07:20:51', '2020-10-24 07:20:51'),
(984576, 25, 'masih', '2020-10-24 07:21:04', '2020-10-24 07:21:04'),
(984576, 23, 'haloo', '2020-10-24 07:29:07', '2020-10-24 07:29:07'),
(984576, 25, 'gimana', '2020-10-24 07:29:18', '2020-10-24 07:29:18'),
(984576, 25, 'hai', '2020-10-24 07:30:32', '2020-10-24 07:30:32'),
(984576, 25, 'hai', '2020-10-24 07:30:54', '2020-10-24 07:30:54'),
(984576, 23, 'ata', '2020-10-24 07:31:03', '2020-10-24 07:31:03'),
(984576, 23, 'aaa', '2020-10-24 07:32:50', '2020-10-24 07:32:50'),
(984576, 23, 'sasa', '2020-10-24 07:33:34', '2020-10-24 07:33:34'),
(984576, 23, 'haii', '2020-10-24 07:35:01', '2020-10-24 07:35:01'),
(984576, 25, 'sasaaaa', '2020-10-24 07:35:24', '2020-10-24 07:35:24'),
(984576, 25, 'adasd', '2020-10-24 07:35:36', '2020-10-24 07:35:36'),
(984576, 25, 'eaeae', '2020-10-24 07:35:51', '2020-10-24 07:35:51'),
(984576, 23, 'asasasa', '2020-10-24 07:35:58', '2020-10-24 07:35:58'),
(984576, 23, 'macem mana ini', '2020-10-24 07:39:29', '2020-10-24 07:39:29'),
(984576, 23, 'kok bisa wkwkwk', '2020-10-24 07:39:43', '2020-10-24 07:39:43'),
(984576, 25, 'lah kok NAN', '2020-10-24 07:40:19', '2020-10-24 07:40:19'),
(984576, 23, 'notif sis', '2020-10-24 07:41:05', '2020-10-24 07:41:05'),
(984576, 25, 'notef sesss', '2020-10-24 07:42:10', '2020-10-24 07:42:10'),
(984576, 25, 'tes', '2020-10-24 07:43:45', '2020-10-24 07:43:45'),
(984576, 23, 'iso', '2020-10-24 07:43:54', '2020-10-24 07:43:54'),
(984576, 25, 'tes', '2020-10-24 07:45:17', '2020-10-24 07:45:17'),
(984576, 25, 'kok bisa', '2020-10-24 07:45:32', '2020-10-24 07:45:32'),
(984576, 23, 'sss', '2020-10-24 07:46:48', '2020-10-24 07:46:48'),
(984576, 23, 'sasa', '2020-10-24 07:47:08', '2020-10-24 07:47:08'),
(984576, 25, 'sss', '2020-10-24 07:47:14', '2020-10-24 07:47:14'),
(984576, 23, 'tes ting', '2020-10-24 07:48:59', '2020-10-24 07:48:59'),
(984576, 23, 'ambyar raiso', '2020-10-24 07:50:36', '2020-10-24 07:50:36'),
(984576, 23, 'sek urung coy wkwk', '2020-10-24 07:50:54', '2020-10-24 07:50:54'),
(984576, 23, 'malah error maneh', '2020-10-24 07:51:45', '2020-10-24 07:51:45'),
(984576, 25, 'asem', '2020-10-24 07:53:49', '2020-10-24 07:53:49'),
(984576, 23, 'kok ada notif', '2020-10-24 07:54:09', '2020-10-24 07:54:09'),
(984576, 23, 'masih notiif?', '2020-10-24 07:55:33', '2020-10-24 07:55:33'),
(984576, 23, 'kok masih', '2020-10-24 07:56:31', '2020-10-24 07:56:31'),
(984576, 25, 'kok bisa wkkwkw', '2020-10-24 07:56:42', '2020-10-24 07:56:42'),
(984576, 23, 'wes ga ada', '2020-10-24 07:56:50', '2020-10-24 07:56:50'),
(984576, 25, 'lhoh ada lagi', '2020-10-24 07:56:59', '2020-10-24 07:56:59'),
(984576, 23, 'tes', '2020-10-24 07:57:17', '2020-10-24 07:57:17'),
(984576, 23, 'ga ada', '2020-10-24 07:57:52', '2020-10-24 07:57:52'),
(984576, 25, 'gimana ', '2020-10-24 07:58:58', '2020-10-24 07:58:58'),
(984576, 23, 'harus di click', '2020-10-24 07:59:10', '2020-10-24 07:59:10'),
(984576, 25, 'asasas', '2020-10-24 07:59:32', '2020-10-24 07:59:32'),
(984576, 23, 'gak muncul', '2020-10-24 07:59:41', '2020-10-24 07:59:41'),
(984576, 23, 'gatau la', '2020-10-24 08:00:36', '2020-10-24 08:00:36'),
(984576, 25, 'muncul?', '2020-10-24 08:00:47', '2020-10-24 08:00:47'),
(984576, 25, 'gimana ada notif kan?', '2020-10-24 08:01:37', '2020-10-24 08:01:37'),
(984576, 23, 'aneh wkwk', '2020-10-24 08:02:04', '2020-10-24 08:02:04'),
(984576, 23, 'harusnya bisa nih', '2020-10-24 08:03:10', '2020-10-24 08:03:10'),
(984576, 25, 'kudu iso', '2020-10-24 08:07:45', '2020-10-24 08:07:45'),
(984576, 25, 'ayolah isooo', '2020-10-24 08:08:46', '2020-10-24 08:08:46'),
(984576, 23, 'embuh lah', '2020-10-24 08:08:59', '2020-10-24 08:08:59'),
(984576, 23, 'raiso bos', '2020-10-24 08:09:15', '2020-10-24 08:09:15'),
(984576, 25, 'kacau kacau\'', '2020-10-24 08:09:28', '2020-10-24 08:09:28'),
(984576, 23, 'sseeem', '2020-10-24 08:10:38', '2020-10-24 08:10:38'),
(984576, 23, 'sumpek', '2020-10-24 08:13:11', '2020-10-24 08:13:11'),
(984576, 25, 'iso aora', '2020-10-24 08:16:26', '2020-10-24 08:16:26'),
(984576, 23, 'embuhlah', '2020-10-24 08:16:51', '2020-10-24 08:16:51'),
(984576, 23, 'gasakk bos', '2020-10-24 08:18:16', '2020-10-24 08:18:16'),
(984576, 25, 'sumbeeawkk', '2020-10-24 08:19:19', '2020-10-24 08:19:19'),
(984576, 23, 'asdfasdfasfasfdsaf', '2020-10-24 08:19:39', '2020-10-24 08:19:39'),
(984576, 23, 'asem', '2020-10-24 08:22:28', '2020-10-24 08:22:28'),
(984576, 23, 'coba', '2020-10-24 08:24:28', '2020-10-24 08:24:28'),
(984576, 23, 'asasa', '2020-10-24 08:24:51', '2020-10-24 08:24:51'),
(984576, 25, 'awa', '2020-10-24 08:25:26', '2020-10-24 08:25:26'),
(984576, 23, 'kur nan tookkkkk', '2020-10-24 08:25:39', '2020-10-24 08:25:39'),
(984576, 25, 'appa ainiiii', '2020-10-24 08:26:27', '2020-10-24 08:26:27'),
(984576, 25, 'hadhe', '2020-10-24 08:28:49', '2020-10-24 08:28:49'),
(984576, 23, 'dicoba', '2020-10-24 08:29:13', '2020-10-24 08:29:13'),
(984576, 25, 'araara', '2020-10-24 08:30:19', '2020-10-24 08:30:19'),
(984576, 23, 'apalah', '2020-10-24 08:30:38', '2020-10-24 08:30:38'),
(984576, 23, 'kenapa lu', '2020-10-24 08:32:41', '2020-10-24 08:32:41'),
(984576, 25, 'gimana', '2020-10-24 08:33:35', '2020-10-24 08:33:35'),
(984576, 23, 'asdfdasf', '2020-10-24 08:35:24', '2020-10-24 08:35:24'),
(984576, 25, 'sdfasfasdfas', '2020-10-24 08:35:31', '2020-10-24 08:35:31'),
(984576, 23, 'asdfsadfsadf', '2020-10-24 08:36:15', '2020-10-24 08:36:15'),
(984576, 23, 'kok masih nan', '2020-10-24 08:36:31', '2020-10-24 08:36:31'),
(984576, 25, 'gimana kalo skrg', '2020-10-24 08:38:16', '2020-10-24 08:38:16'),
(984576, 25, 'wooww bisa kaah', '2020-10-24 08:38:33', '2020-10-24 08:38:33'),
(984576, 23, 'gimana', '2020-10-24 08:39:34', '2020-10-24 08:39:34'),
(984576, 25, 'gimana ', '2020-10-24 08:40:01', '2020-10-24 08:40:01'),
(984576, 25, 'apanya', '2020-10-24 08:40:13', '2020-10-24 08:40:13'),
(984576, 23, 'gini ja', '2020-10-24 08:40:32', '2020-10-24 08:40:32'),
(984576, 25, 'gabosaa', '2020-10-24 08:48:29', '2020-10-24 08:48:29'),
(984576, 23, 'woy', '2020-10-24 08:48:37', '2020-10-24 08:48:37'),
(984576, 23, 'bisa ak', '2020-10-24 08:52:03', '2020-10-24 08:52:03'),
(984576, 25, 'gak bisa coeg', '2020-10-24 08:52:23', '2020-10-24 08:52:23'),
(984576, 25, '', '2020-10-24 08:59:41', '2020-10-24 08:59:41'),
(984576, 25, '', '2020-10-24 08:59:49', '2020-10-24 08:59:49'),
(984576, 25, 'isoo', '2020-10-24 09:00:27', '2020-10-24 09:00:27'),
(984576, 25, 'iso', '2020-10-24 09:01:41', '2020-10-24 09:01:41'),
(984576, 23, 'apane', '2020-10-24 09:01:55', '2020-10-24 09:01:55'),
(984576, 23, 'iku', '2020-10-24 09:02:01', '2020-10-24 09:02:01'),
(984576, 23, 'ngiawut', '2020-10-24 09:03:00', '2020-10-24 09:03:00'),
(984576, 23, 'coba lagi', '2020-10-24 09:07:20', '2020-10-24 09:07:20'),
(984576, 25, 'gimana', '2020-10-24 09:07:31', '2020-10-24 09:07:31'),
(984576, 23, 'apanyaa', '2020-10-24 09:09:20', '2020-10-24 09:09:20'),
(984576, 25, 'nanya', '2020-10-24 09:10:22', '2020-10-24 09:10:22'),
(984576, 23, 'belum bisa', '2020-10-24 09:10:38', '2020-10-24 09:10:38'),
(984576, 25, 'dah lah nyerah', '2020-10-24 09:11:34', '2020-10-24 09:11:34'),
(984576, 23, 'capek euy', '2020-10-24 09:12:22', '2020-10-24 09:12:22'),
(984576, 23, 'tes dicoba', '2020-10-24 09:13:20', '2020-10-24 09:13:20'),
(984576, 25, 'oke diterima', '2020-10-24 09:13:33', '2020-10-24 09:13:33'),
(984576, 25, 'tapi kok', '2020-10-24 09:14:16', '2020-10-24 09:14:16'),
(984576, 23, 'gatau la', '2020-10-24 09:14:48', '2020-10-24 09:14:48'),
(984576, 23, 'gini aja kali ya', '2020-10-24 09:16:03', '2020-10-24 09:16:03'),
(984576, 25, 'okelah', '2020-10-24 09:16:11', '2020-10-24 09:16:11'),
(984576, 25, 'coba', '2020-10-24 09:16:56', '2020-10-24 09:16:56'),
(984576, 23, 'still ', '2020-10-24 09:17:05', '2020-10-24 09:17:05'),
(984576, 23, 'let see', '2020-10-24 09:18:19', '2020-10-24 09:18:19'),
(984576, 25, 'ISOSOSOOSOSOSOSOSOS', '2020-10-24 09:19:01', '2020-10-24 09:19:01'),
(984576, 23, 'YESSSS!', '2020-10-24 09:19:24', '2020-10-24 09:19:24'),
(984576, 25, 'GOOD JOB', '2020-10-24 09:22:18', '2020-10-24 09:22:18'),
(984576, 23, 'oke done mas', '2020-10-24 09:22:30', '2020-10-24 09:22:30'),
(984576, 25, 'masuk', '2020-10-24 09:40:30', '2020-10-24 09:40:30'),
(984576, 23, 'kok iflline', '2020-10-24 09:40:43', '2020-10-24 09:40:43'),
(984576, 25, 'gatau lah', '2020-10-24 09:40:53', '2020-10-24 09:40:53'),
(984576, 25, 'tes', '2020-10-24 09:47:23', '2020-10-24 09:47:23'),
(984576, 25, 'asdasdsad', '2020-10-24 09:48:56', '2020-10-24 09:48:56'),
(984576, 23, 'asasdas', '2020-10-24 09:51:03', '2020-10-24 09:51:03'),
(984576, 25, 'sadasd', '2020-10-24 09:51:12', '2020-10-24 09:51:12'),
(984576, 23, 'dasa', '2020-10-24 09:51:46', '2020-10-24 09:51:46'),
(984576, 25, 'asdasd', '2020-10-24 09:51:57', '2020-10-24 09:51:57'),
(984576, 23, 'asdasx', '2020-10-24 09:52:19', '2020-10-24 09:52:19'),
(984576, 25, 'piyee tooo', '2020-10-24 09:52:28', '2020-10-24 09:52:28'),
(984576, 23, 'wembuh', '2020-10-24 09:52:36', '2020-10-24 09:52:36'),
(984576, 25, 'bedesss', '2020-10-24 09:52:46', '2020-10-24 09:52:46'),
(984576, 23, 'online pieee', '2020-10-24 09:53:04', '2020-10-24 09:53:04'),
(984576, 25, 'asem', '2020-10-24 09:53:14', '2020-10-24 09:53:14'),
(984576, 25, 'asem', '2020-10-24 09:54:31', '2020-10-24 09:54:31'),
(984576, 23, 'sadasdasd', '2020-10-24 09:54:40', '2020-10-24 09:54:40'),
(984576, 25, 'eaea', '2020-10-24 09:54:49', '2020-10-24 09:54:49'),
(984576, 25, 'aaaaa', '2020-10-24 09:54:59', '2020-10-24 09:54:59'),
(984576, 25, 'awawawa', '2020-10-24 12:48:26', '2020-10-24 12:48:26'),
(984576, 23, 'wkwkwkw', '2020-10-24 12:48:43', '2020-10-24 12:48:43'),
(984576, 25, 'wkwkwk', '2020-10-24 12:48:54', '2020-10-24 12:48:54'),
(984576, 23, 'masuk pak ekooo', '2020-10-24 13:03:48', '2020-10-24 13:03:48'),
(984576, 25, 'iyo ta', '2020-10-24 13:04:13', '2020-10-24 13:04:13'),
(984576, 23, 'kok offline', '2020-10-24 13:04:31', '2020-10-24 13:04:31'),
(984576, 25, 'lha terus nyapo', '2020-10-24 13:04:43', '2020-10-24 13:04:43'),
(984576, 25, 'gatau', '2020-10-24 13:27:26', '2020-10-24 13:27:26'),
(984576, 23, 'woy', '2020-10-24 14:02:42', '2020-10-24 14:02:42'),
(984576, 25, 'wkwkwk\\', '2020-10-24 14:02:50', '2020-10-24 14:02:50'),
(984576, 25, 'wkwkw', '2020-10-24 14:05:21', '2020-10-24 14:05:21'),
(984576, 23, 'asasasas', '2020-10-24 14:08:51', '2020-10-24 14:08:51'),
(984576, 25, 'ampasss', '2020-10-24 14:09:04', '2020-10-24 14:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `room_updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `room_id`, `user_id`, `room_created_at`, `room_updated_at`) VALUES
(31, 31556, 23, '2020-10-22 07:56:46', '2020-10-22 18:24:56'),
(32, 31556, 32, '2020-10-22 07:56:46', '2020-10-22 18:24:56'),
(33, 401704, 23, '2020-10-22 08:00:14', '2020-10-22 17:45:35'),
(34, 401704, 31, '2020-10-22 08:00:15', '2020-10-22 17:45:35'),
(35, 984576, 23, '2020-10-22 08:00:25', '2020-10-24 14:09:05'),
(36, 984576, 25, '2020-10-22 08:00:26', '2020-10-24 14:09:05'),
(37, 863749, 23, '2020-10-22 12:38:06', '2020-10-22 18:02:17'),
(38, 863749, 24, '2020-10-22 12:38:06', '2020-10-22 18:02:17'),
(39, 397132, 23, '2020-10-22 17:30:25', '2020-10-24 04:49:09'),
(40, 397132, 6, '2020-10-22 17:30:25', '2020-10-24 04:49:09'),
(41, 41249, 23, '2020-10-22 23:32:26', '2020-10-23 08:00:21'),
(42, 41249, 27, '2020-10-22 23:32:26', '2020-10-23 08:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_image` varchar(200) NOT NULL,
  `user_about` varchar(255) NOT NULL,
  `user_lat` varchar(20) NOT NULL,
  `user_lng` varchar(20) NOT NULL,
  `user_activity` int(11) NOT NULL,
  `user_status` int(1) NOT NULL,
  `user_key` varchar(20) NOT NULL,
  `user_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_image`, `user_about`, `user_lat`, `user_lng`, `user_activity`, `user_status`, `user_key`, `user_created_at`, `user_updated_at`) VALUES
(6, 'Dougnut', 'aaa@gmail.com', '$2b$10$3R1VU07eSjxty12nzoESuuq/R6Q3bm7cK7Ag17pRzlVhfcjj7sFzy', '222222222', '2020-09-28T03-47-42.019Z-instagram.png', 'Donat itu enak', '-7.3275', '112.7465', 0, 1, '', '2020-09-23 08:30:25', '2020-10-24 04:38:00'),
(23, 'Ardhika Ryzha Nurmawan', 'ardhikarn@gmail.com', '$2b$10$NSwUImw8NuJbFLOKGXW8R.QQuPlP1VrVJzenvJwNwG9/isn3os37W', '085708570857', '2020-10-27T16-20-41.852Z-ikhwan.jpg', 'Fullstack Web Developer, InsyaAllah', '-7.160321', '111.8687942', 0, 1, '', '2020-09-26 03:09:25', '2020-10-24 14:35:04'),
(24, 'Ryzha N', 'qwertyzxcvb2828@gmail.com', '$2b$10$lL6rSpuURZpMXlma6g/VHuU9NBLZAdvKQzWa7Wt4MXl7MYHPuLnTq', '1727383826', '2020-09-28T03-56-21.736Z-lock.png', 'AKUU RYZHA', '0', '0', 0, 1, '', '2020-09-27 07:23:34', '2020-09-29 14:40:01'),
(25, 'ardhika37', 'ardhika.ryzha37@gmail.com', '$2b$10$rS/0gtG.5iWPMspqWpD3q.J2UlEi1xoi9VaIn0sfRTDsBwuBGQYrq', '37373737', '2020-09-28T06-50-55.789Z-wikiversity-logo.png', 'Front End Developer', '-7.3275', '112.7465', 0, 1, '', '2020-09-28 06:45:00', '2020-10-24 15:51:31'),
(26, 'qwerty', 'qwerty123@gmail.com', '$2b$10$2q5LVgEMPC8ddOE7I7n/3..uZbeGYn0mWw3Ko.9Aq9bXngPE.zb06', '', 'blank-profile-pic.png', '', '0', '0', 0, 1, '', '2020-09-29 08:16:32', '2020-09-29 08:16:33'),
(27, 'Qwerty', 'qwertyzxcvb3737@gmail.com', '$2b$10$nTOxtYvdZN/dfkI9uU/tAewLylts1pdIE1ahWxKcEeMA4IvMDDa26', '1234123121', 'blank-profile-pic.png', 'Full Stack Qwerty', '0', '0', 0, 1, '', '2020-10-17 16:49:48', '2020-10-17 17:09:26'),
(28, 'aaaaaa', 'aaaaaa@gmail.com', '$2b$10$JO3wEvpwoHPy9gVfTKUOker/lRT2Ow4YzERMGujpcyqETPuEQmpZu', '', 'blank-profile-pic.png', '', '0', '0', 0, 1, '', '2020-10-19 12:33:17', '2020-10-19 12:33:17'),
(29, 'ardhikas', 'ardhikarns@gmail.com', '$2b$10$P6gnTJoiscrpTEswIWBW0e7MGoOkgL1CdISQIt0K4Zh4hav5qKTBi', '', 'blank-profile-pic.png', '', '', '', 0, 0, '', '2020-10-20 13:19:56', '2020-10-20 13:19:56'),
(30, 'ardhikass', 'ardhikarnss@gmail.com', '$2b$10$W5utliteAjTr3q6sn2qfru6epE6X5095ZYcXxGmNU571jIq8yzTXK', '', 'blank-profile-pic.png', '', '', '', 0, 0, '', '2020-10-20 13:20:14', '2020-10-20 13:20:14'),
(31, 'Lionel Messi', 'lm10@gmail.com', '$2b$10$HoeDrhhyvGMxobLMS92m3O6/nYwT9vfEx0lqgNigHwOnTrRrS6aG.', '1234567899', 'blank-profile-pic.png', 'AKU BISA', '-7.1389385999999995', '111.8926187', 0, 1, '', '2020-10-20 17:18:16', '2020-10-21 14:25:38'),
(32, 'Cristiano Ronaldo', 'cr7@gmail.com', '$2b$10$2G/fEfdajtuxL891ssn7jut4jrZmcmbkIrmbXYyoZ1KamZWcV6/Rq', '', 'blank-profile-pic.png', '', '', '', 0, 1, '', '2020-10-20 17:25:49', '2020-10-20 17:34:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friendlist`
--
ALTER TABLE `friendlist`
  ADD PRIMARY KEY (`friendlist_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friendlist`
--
ALTER TABLE `friendlist`
  MODIFY `friendlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
