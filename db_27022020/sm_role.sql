-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 10:46 AM
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
-- Table structure for table `sm_role`
--

CREATE TABLE `sm_role` (
  `id` int(4) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_no` smallint(2) NOT NULL,
  `role_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_stat` tinyint(1) NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` datetime NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` datetime NOT NULL,
  `ss_org_no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_role`
--

INSERT INTO `sm_role` (`id`, `office_code`, `role_no`, `role_name`, `active_stat`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`) VALUES
(60, '', 99, 'Admin', 1, '', '2019-09-13 21:18:25', '', '2019-09-13 21:18:25', 0),
(61, '', 88, 'Account Officer', 1, '', '2019-09-12 15:01:36', '', '2019-09-12 15:01:36', 0),
(62, '', 77, 'Transport Officer', 1, '', '2019-09-12 15:02:01', '', '2019-09-12 15:02:01', 0),
(63, '', 66, 'Bill Collector', 1, '', '2019-09-12 15:02:18', '', '2019-09-12 15:02:18', 0),
(76, '', 200, 'Customer', 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0),
(77, '', 300, 'Supplier', 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0),
(78, '', 400, 'Member', 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0),
(79, '', 500, 'Teacher', 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0),
(80, '', 600, 'Student', 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0),
(81, '', 700, 'Guardian', 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sm_role`
--
ALTER TABLE `sm_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_no` (`role_no`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sm_role`
--
ALTER TABLE `sm_role`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
