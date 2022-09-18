-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 07:46 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `form_responses`
--

CREATE TABLE `form_responses` (
  `student_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `filldate` date DEFAULT NULL,
  `response_json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_responses`
--

INSERT INTO `form_responses` (`student_id`, `form_id`, `filldate`, `response_json`) VALUES
(1, 1, '0005-04-22', '{\"slider-1\":\"5\",\"slider-2\":\"3\",\"slider-3\":\"4\",\"slider-4\":\"4\",\"slider-5\":\"3\",\"slider-6\":\"4\",\"slider-7\":\"3\"}\n'),
(2, 1, '0005-05-22', '{\"slider-1\":\"3\",\"slider-2\":\"2\",\"slider-3\":\"1\",\"slider-4\":\"5\",\"slider-5\":\"3\",\"slider-6\":\"5\",\"slider-7\":\"3\"}\n'),
(3, 1, '0005-05-22', '{\"slider-1\":\"2\",\"slider-2\":\"4\",\"slider-3\":\"4\",\"slider-4\":\"3\",\"slider-5\":\"3\",\"slider-6\":\"3\",\"slider-7\":\"3\"}\n'),
(4, 1, '0005-05-22', '{\"slider-1\":\"2\",\"slider-2\":\"4\",\"slider-3\":\"2\",\"slider-4\":\"3\",\"slider-5\":\"2\",\"slider-6\":\"3\",\"slider-7\":\"2\"}\n'),
(5, 1, '0005-05-22', '{\"slider-1\":\"2\",\"slider-2\":\"4\",\"slider-3\":\"2\",\"slider-4\":\"2\",\"slider-5\":\"5\",\"slider-6\":\"2\",\"slider-7\":\"5\"}\n'),
(6, 1, '0005-05-22', '{\"slider-1\":\"1\",\"slider-2\":\"5\",\"slider-3\":\"3\",\"slider-4\":\"1\",\"slider-5\":\"5\",\"slider-6\":\"1\",\"slider-7\":\"5\"}\n'),
(7, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"4\",\"slider-5\":\"4\",\"slider-6\":\"4\",\"slider-7\":\"4\"}\n'),
(8, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"4\",\"slider-3\":\"5\",\"slider-4\":\"5\",\"slider-5\":\"5\",\"slider-6\":\"5\",\"slider-7\":\"5\"}\n'),
(9, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"5\",\"slider-5\":\"5\",\"slider-6\":\"5\",\"slider-7\":\"5\"}\n'),
(10, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"4\",\"slider-3\":\"4\",\"slider-4\":\"4\",\"slider-5\":\"4\",\"slider-6\":\"4\",\"slider-7\":\"4\"}\n'),
(11, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"5\",\"slider-5\":\"5\",\"slider-6\":\"5\",\"slider-7\":\"5\"}\n'),
(12, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"5\",\"slider-5\":\"5\",\"slider-6\":\"5\",\"slider-7\":\"5\"}\n'),
(13, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"2\",\"slider-5\":\"3\",\"slider-6\":\"2\",\"slider-7\":\"3\"}\n'),
(14, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"4\",\"slider-3\":\"5\",\"slider-4\":\"4\",\"slider-5\":\"3\",\"slider-6\":\"4\",\"slider-7\":\"3\"}\n'),
(15, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"5\",\"slider-5\":\"5\",\"slider-6\":\"5\",\"slider-7\":\"5\"}\n'),
(16, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"4\",\"slider-4\":\"3\",\"slider-5\":\"4\",\"slider-6\":\"3\",\"slider-7\":\"4\"}\n'),
(17, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"4\",\"slider-4\":\"2\",\"slider-5\":\"2\",\"slider-6\":\"2\",\"slider-7\":\"2\"}\n'),
(18, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"3\",\"slider-5\":\"5\",\"slider-6\":\"3\",\"slider-7\":\"5\"}\n'),
(19, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"4\",\"slider-3\":\"4\",\"slider-4\":\"4\",\"slider-5\":\"4\",\"slider-6\":\"4\",\"slider-7\":\"4\"}\n'),
(20, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"3\",\"slider-5\":\"4\",\"slider-6\":\"3\",\"slider-7\":\"4\"}\n'),
(21, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"3\",\"slider-5\":\"5\",\"slider-6\":\"3\",\"slider-7\":\"5\"}\n'),
(22, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"3\",\"slider-3\":\"2\",\"slider-4\":\"1\",\"slider-5\":\"2\",\"slider-6\":\"1\",\"slider-7\":\"2\"}\n'),
(23, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"3\",\"slider-5\":\"4\",\"slider-6\":\"3\",\"slider-7\":\"4\"}\n'),
(24, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"4\",\"slider-5\":\"4\",\"slider-6\":\"4\",\"slider-7\":\"4\"}\n'),
(25, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"3\",\"slider-5\":\"5\",\"slider-6\":\"3\",\"slider-7\":\"5\"}\n'),
(26, 1, '0005-05-22', '{\"slider-1\":\"1\",\"slider-2\":\"1\",\"slider-3\":\"1\",\"slider-4\":\"1\",\"slider-5\":\"1\",\"slider-6\":\"1\",\"slider-7\":\"1\"}\n'),
(27, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"4\",\"slider-5\":\"3\",\"slider-6\":\"4\",\"slider-7\":\"3\"}\n'),
(28, 1, '0005-05-22', '{\"slider-1\":\"3\",\"slider-2\":\"3\",\"slider-3\":\"3\",\"slider-4\":\"3\",\"slider-5\":\"3\",\"slider-6\":\"3\",\"slider-7\":\"3\"}\n'),
(29, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"4\",\"slider-3\":\"4\",\"slider-4\":\"4\",\"slider-5\":\"4\",\"slider-6\":\"4\",\"slider-7\":\"4\"}\n'),
(30, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"4\",\"slider-3\":\"4\",\"slider-4\":\"4\",\"slider-5\":\"2\",\"slider-6\":\"4\",\"slider-7\":\"2\"}\n'),
(31, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"4\",\"slider-3\":\"5\",\"slider-4\":\"5\",\"slider-5\":\"5\",\"slider-6\":\"5\",\"slider-7\":\"5\"}\n'),
(32, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"1\",\"slider-5\":\"3\",\"slider-6\":\"1\",\"slider-7\":\"3\"}\n'),
(33, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"5\",\"slider-3\":\"4\",\"slider-4\":\"3\",\"slider-5\":\"2\",\"slider-6\":\"3\",\"slider-7\":\"2\"}\n'),
(34, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"4\",\"slider-3\":\"5\",\"slider-4\":\"3\",\"slider-5\":\"3\",\"slider-6\":\"3\",\"slider-7\":\"3\"}\n'),
(35, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"3\",\"slider-5\":\"3\",\"slider-6\":\"3\",\"slider-7\":\"3\"}\n'),
(36, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"4\",\"slider-3\":\"4\",\"slider-4\":\"2\",\"slider-5\":\"1\",\"slider-6\":\"2\",\"slider-7\":\"1\"}\n'),
(37, 1, '0005-05-22', '{\"slider-1\":\"3\",\"slider-2\":\"3\",\"slider-3\":\"3\",\"slider-4\":\"3\",\"slider-5\":\"3\",\"slider-6\":\"3\",\"slider-7\":\"3\"}\n'),
(38, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"5\",\"slider-5\":\"5\",\"slider-6\":\"5\",\"slider-7\":\"5\"}\n'),
(39, 1, '0005-05-22', '{\"slider-1\":\"3\",\"slider-2\":\"3\",\"slider-3\":\"3\",\"slider-4\":\"3\",\"slider-5\":\"3\",\"slider-6\":\"3\",\"slider-7\":\"3\"}\n'),
(40, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"4\",\"slider-5\":\"3\",\"slider-6\":\"4\",\"slider-7\":\"3\"}\n'),
(41, 1, '0005-05-22', '{\"slider-1\":\"4\",\"slider-2\":\"4\",\"slider-3\":\"4\",\"slider-4\":\"4\",\"slider-5\":\"4\",\"slider-6\":\"4\",\"slider-7\":\"4\"}\n'),
(42, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"4\",\"slider-3\":\"4\",\"slider-4\":\"4\",\"slider-5\":\"4\",\"slider-6\":\"4\",\"slider-7\":\"4\"}\n'),
(43, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"5\",\"slider-5\":\"5\",\"slider-6\":\"5\",\"slider-7\":\"5\"}\n'),
(44, 1, '0005-05-22', '{\"slider-1\":\"2\",\"slider-2\":\"3\",\"slider-3\":\"3\",\"slider-4\":\"4\",\"slider-5\":\"1\",\"slider-6\":\"4\",\"slider-7\":\"1\"}\n'),
(45, 1, '0005-05-22', '{\"slider-1\":\"3\",\"slider-2\":\"3\",\"slider-3\":\"3\",\"slider-4\":\"3\",\"slider-5\":\"3\",\"slider-6\":\"3\",\"slider-7\":\"3\"}\n'),
(46, 1, '0005-05-22', '{\"slider-1\":\"5\",\"slider-2\":\"5\",\"slider-3\":\"5\",\"slider-4\":\"4\",\"slider-5\":\"5\",\"slider-6\":\"4\",\"slider-7\":\"5\"}\n'),
(47, 2, '0005-05-22', '{\"slider-1\":\"1\",\"slider-2\":\"1\",\"slider-3\":\"1\",\"slider-4\":\"1\",\"slider-5\":\"1\",\"slider-6\":\"1\",\"slider-7\":\"1\"}'),
(48, 3, '0005-05-22', '{\"slider-1\":\"1\",\"slider-2\":\"1\",\"slider-3\":\"1\",\"slider-4\":\"1\",\"slider-5\":\"1\",\"slider-6\":\"1\",\"slider-7\":\"1\"}');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
