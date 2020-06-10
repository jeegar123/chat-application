-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 03:53 PM
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
-- Database: `chat_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `toId` int(11) NOT NULL,
  `msg` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `type` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `userId`, `toId`, `msg`, `type`, `created_at`, `read_at`) VALUES
(0, 1, 2, 'jadd', 0, '2020-06-10 19:19:30', NULL),
(0, 1, 2, '👵dsdsds', 0, '2020-06-10 19:19:44', NULL),
(0, 1, 2, 'india', 0, '2020-06-10 19:20:03', NULL),
(0, 1, 2, 'sjdjsdhsj', 0, '2020-06-10 19:20:05', NULL),
(0, 1, 2, 'sdjhsjd', 0, '2020-06-10 19:20:07', NULL),
(0, 1, 2, 'sjdhsjd', 0, '2020-06-10 19:20:09', NULL),
(0, 1, 2, 'dsjhjhsd', 0, '2020-06-10 19:20:10', NULL),
(0, 1, 2, 'sdsdkjs', 0, '2020-06-10 19:20:12', NULL),
(0, 1, 2, 'sdhjdsh', 0, '2020-06-10 19:20:13', NULL),
(0, 1, 2, 'sddsj', 0, '2020-06-10 19:20:14', NULL),
(0, 1, 2, 'sdnsjdn', 0, '2020-06-10 19:20:16', NULL),
(0, 1, 2, 'sdkjsdk', 0, '2020-06-10 19:20:17', NULL),
(0, 1, 2, 'dskjdksj', 0, '2020-06-10 19:20:18', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
