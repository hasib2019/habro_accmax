-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 11:23 AM
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
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sa_role_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_create_date` date NOT NULL,
  `user_validity_date` date NOT NULL,
  `user_valid_days` int(3) NOT NULL,
  `user_status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_date` date NOT NULL,
  `remarks` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_group` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_id` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` date NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` date NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `office_code`, `username`, `password`, `sa_role_no`, `user_create_date`, `user_validity_date`, `user_valid_days`, `user_status`, `status_date`, `remarks`, `user_group`, `link_id`, `employee_image`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '9900', 'admin', '$2y$10$0T/rfTEsGWNpfTSOh2uFA.us0H8wVOu54tZuGxMTTv.V8DDEHxi6i', '77', '2020-02-25', '2020-03-06', 0, '', '0000-00-00', '', '0200', '', '', 'admin', '2020-02-25', '', '0000-00-00', '9900'),
(2, '9900', 'abc', '$2y$10$0T/rfTEsGWNpfTSOh2uFA.us0H8wVOu54tZuGxMTTv.V8DDEHxi6i', '99', '2020-02-25', '2020-04-25', 60, '1', '0000-00-00', '', '0100', '1', '', 'admin', '2020-02-25', '', '0000-00-00', '9900'),
(3, '9900', 'pqr', '$2y$10$yAWqEB.kiJGHRiuhKR6Dbe7Fyk8J66avfmhnqtW1a.Xc4rjrL.up6', '200', '2020-02-25', '2020-04-26', 61, '1', '0000-00-00', '', '0200', '2', '', 'admin', '2020-02-25', '', '0000-00-00', '9900'),
(4, '9900', 'xyz', '$2y$10$0T/rfTEsGWNpfTSOh2uFA.us0H8wVOu54tZuGxMTTv.V8DDEHxi6i', '88', '2020-02-25', '2020-03-06', 10, '1', '0000-00-00', '', '0200', '1', '', 'admin', '2020-02-25', '', '0000-00-00', '9900'),
(5, '9900', 'siraj', '$2y$10$Dg6aejH76WJ23m1BqkzVF.0bpUmekVBs.JWnPRWpJr2/BXNbGLZv.', '300', '2020-02-27', '2020-04-28', 61, '1', '0000-00-00', '', '0200', '1', '', 'abc', '2020-02-27', '', '0000-00-00', '9900');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`,`user_group`,`link_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
