-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2020 at 05:40 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acc_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `office_info`
--

CREATE TABLE `office_info` (
  `id` int(11) NOT NULL,
  `org_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_cont_person` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_con_mobile_no` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_start_dt` date DEFAULT NULL,
  `office_end_dt` date DEFAULT NULL,
  `area_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office_info`
--

INSERT INTO `office_info` (`id`, `org_code`, `office_code`, `office_name`, `office_type`, `office_address`, `office_cont_person`, `office_con_mobile_no`, `office_start_dt`, `office_end_dt`, `area_code`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '', '9900', 'Habro System Limited ', '1', 'Gulshan-1', 'Bisnu Chandra Dush', '012345656', '2020-01-01', '2020-01-31', '', '1', '', '', '', ''),
(2, '', '9900', 'Citgo ', '3', 'Gulshan-1', 'Rahamot Ullah ', '01234567', '2020-01-22', '2020-01-22', '', '1', '', '', '', ''),
(3, '', '9900', 'Shapla, Shanti Nogor Project', '3', 'Shanti Nogor ', 'Mr x ', '0123456789', '2020-01-01', '2020-07-31', '', '1', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `office_info`
--
ALTER TABLE `office_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `office_info`
--
ALTER TABLE `office_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
