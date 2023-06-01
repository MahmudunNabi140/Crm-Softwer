-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 08:39 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `role` enum('super','admin','marketing','support','dealer') NOT NULL DEFAULT 'dealer',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `parent`, `phone`, `role`, `status`) VALUES
(1, 'Super admin', 'super@email.com', '12345', NULL, '017', 'super', 'active'),
(2, 'New admin', 'admin@email.com', '12345', 1, '018', 'admin', 'active'),
(3, 'mahmud', 'mahmudunnabi140@gmail.com', '01759526830', 1, '01759526830', 'admin', 'active'),
(5, 'mamun', 'rajamamun@gmail.com', '12345', 3, '0155', 'marketing', 'active'),
(6, 'mah', 'mahmud@#gmail.com', '12345', 3, '017', 'marketing', ''),
(7, 'mah', 'mahmud@gmail.com', '12223', 3, '017', 'marketing', ''),
(8, 'Al_amin hossen', 'mahmud@gmail.com', '12345', 3, '01759526830', 'marketing', ''),
(9, 'mah', 'mahmud@gmail.com', '12223', 3, '01759526830', 'marketing', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
