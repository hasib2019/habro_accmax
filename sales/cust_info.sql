-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 10:18 AM
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
-- Table structure for table `cust_info`
--

CREATE TABLE `cust_info` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_type` int(5) NOT NULL,
  `cust_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_add` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_business_category` int(5) NOT NULL,
  `cust_contact_per` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_location_code` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_TIN_no` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_VAT_no` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_TDS_no` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Link_gl_code` int(15) NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` date NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` date NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cust_info`
--

INSERT INTO `cust_info` (`id`, `office_code`, `cust_type`, `cust_name`, `cust_add`, `cust_business_category`, `cust_contact_per`, `cust_location_code`, `cust_TIN_no`, `cust_VAT_no`, `cust_TDS_no`, `Link_gl_code`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '9900', 1, 'Bosir Traders', 'Dhaka', 0, 'Bosir ', '1200', '2345678', '1234567', '123456789', 0, 'admin', '2017-07-01', '', '0000-00-00', '9900');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust_info`
--
ALTER TABLE `cust_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust_info`
--
ALTER TABLE `cust_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
