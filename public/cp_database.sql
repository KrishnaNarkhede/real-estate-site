-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 03:46 PM
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
-- Database: `cp_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `service_type` varchar(50) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `mobile`, `service_type`, `appointment_date`, `appointment_time`, `message`, `created_at`) VALUES
(1, 'admin', 'srushtinogja@gmail.com', '9420702727', 'BOOKING', '2024-11-01', '23:14:00', 'klhxgasxhksacvm', '2024-10-21 12:39:32'),
(2, 'Srushti', 'admin@gmail.com', '9420702727', 'BOOKING', '2024-10-22', '20:27:00', 'xvrfhfgbh', '2024-10-21 12:55:45'),
(3, 'admin', 'admin@gmail.com', '54687465746', 'BOOKING', '2024-10-22', '22:43:00', 'gsgfdh', '2024-10-21 13:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'Srushti', 'srushtinogja@gmail.com', 'sdvfdv', 'sdbfdnb', '2024-10-20 14:41:56'),
(2, 'Srushti', 'admin@gmail.com', 'sdvfdv', 'adesgfhd', '2024-10-21 06:16:50'),
(3, 'Srushti', 'admin@gmail.com', 'sdvfdv', 'adesgfhd', '2024-10-21 06:18:57'),
(7, '', '', '', '', '2024-10-21 10:44:02'),
(8, '', '', '', '', '2024-10-21 10:44:08'),
(9, '', '', '', '', '2024-10-21 10:44:33'),
(10, '', '', '', '', '2024-10-21 10:46:30'),
(11, 'Srushti', '', '', '', '2024-10-21 10:48:31'),
(12, '', '', '', '', '2024-10-21 10:49:07'),
(13, '', '', '', '', '2024-10-21 10:51:00'),
(14, '', '', '', '', '2024-10-21 10:52:18'),
(15, '', '', '', '', '2024-10-21 11:03:18'),
(16, '', '', '', '', '2024-10-21 11:04:00'),
(18, 'admin', '', '', '', '2024-10-21 11:37:10'),
(19, '', '', '', '', '2024-10-21 11:37:25'),
(20, '', '', '', '', '2024-10-21 12:05:35'),
(21, '', '', '', '', '2024-10-21 13:00:13'),
(22, 'Srushti', 'admin@gmail.com', 'sdvfdv', 'gfdhdhh', '2024-10-21 13:00:23'),
(23, 'dgd', 'admin@gmail.com', 'zcXxb', 'cxbvcnvb', '2024-10-21 13:10:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
