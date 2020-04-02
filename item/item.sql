-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 06:39 AM
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
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_category` int(5) NOT NULL,
  `item_code` int(15) NOT NULL,
  `unit_value` int(3) NOT NULL,
  `unit` int(10) NOT NULL,
  `sku` int(15) NOT NULL,
  `barcode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sellable_option` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texable_option` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pack_size` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_of_origin` int(5) NOT NULL,
  `country_of_manufacture` int(5) NOT NULL,
  `country_of_assemble` int(5) NOT NULL,
  `brand_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_acc_code` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `image`, `item`, `parent_id`, `item_category`, `item_code`, `unit_value`, `unit`, `sku`, `barcode`, `sellable_option`, `texable_option`, `pack_size`, `country_of_origin`, `country_of_manufacture`, `country_of_assemble`, `brand_name`, `model_name`, `gl_acc_code`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '', 'Grosury', '0', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(2, '', 'Meat', '0', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(3, '', 'Fish', '0', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(4, '', 'Vegetables', '0', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(5, '', 'Services', '0', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(6, '', 'Electronic', '0', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(7, '', 'Puls', '1', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(8, '', 'Oil', '1', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(9, '', 'Spices', '1', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(10, '', 'Elish', '3', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(11, '', 'Rui', '3', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(12, '', 'Katuol', '3', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(13, '', 'Koi', '3', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(14, '', 'Others', '3', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(15, '', 'Cow Meat', '2', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(16, '', 'Goat meat', '2', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(17, '', 'Chicken Meat', '2', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(18, '', 'Bean', '4', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(19, '', 'Tometo', '4', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(20, '', 'Redis', '4', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(21, '', 'Potato', '4', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(22, '', 'Potol', '4', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(23, '', 'cucumber', '4', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(24, '', 'Fan', '6', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(25, '', 'Light', '6', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(26, '', '100 w', '25', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(31, '', 'AC', '6', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', ''),
(32, '', 'Chicken', '0', 1, 0, 0, 0, 1, 'dsfa', 'sd', 'sd', 'sdfsd', 1, 1, 1, 'sdfas', 'asfas', '', '', '', '', '', ''),
(33, '', 'Chicken', '0', 1, 0, 0, 0, 1, 'dsfa', 'sd', 'sd', 'sdfsd', 1, 1, 1, 'sdfas', 'asfas', '', '', '', '', '', ''),
(34, '', 'Chicken', '0', 2, 0, 0, 0, 1, 'dsfa', 'sd', 'sd', 'sdfsd', 2, 1, 3, 'sdfas', 'asfas', '', '', '', '', '', ''),
(35, '', 'Meat', '0', 1, 0, 0, 0, 1, 'dsfa', 'sd', 'sd', 'sdfsd', 1, 1, 1, 'sdfas', 'asfas', '', '', '', '', '', ''),
(36, '1574672700_2379.png', 'Chicken', '0', 2, 0, 0, 0, 1, 'dsfa', 'sd', 'sd', 'sdfsd', 1, 1, 1, 'sdfas', 'asfas', '', '', '', '', '', ''),
(37, '1574672751_3684.png', 'Chicken', '0', 2, 0, 0, 0, 1, 'dsfa', 'sd', 'sd', 'sdfsd', 1, 1, 1, 'sdfas', 'asfas', '', '', '', '', '', ''),
(38, '1574672788_6572.jpg', 'Chicken', '0', 1, 0, 0, 0, 1, 'dsfa', 'sd', 'sd', 'sdfsd', 1, 1, 1, 'sdfas', 'asfas', '', '', '', '', '', ''),
(39, '1574678324_4561.jpg', 'Chicken', '0', 1, 0, 0, 0, 1, 'dsfa', 'sd', 'sd', 'sdfsd', 1, 1, 1, 'sdfas', 'asfas', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
