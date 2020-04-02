-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 08:57 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `old_table`
--

-- --------------------------------------------------------

--
-- Table structure for table `tenant_info`
--

CREATE TABLE `apart_tenant_info` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flat_no` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_under_owner_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_hus_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `mobile_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_add` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_date` date NOT NULL,
  `contract_period` int(5) NOT NULL,
  `contract_expiry_date` date NOT NULL,
  `tenant_image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` date NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` date NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
