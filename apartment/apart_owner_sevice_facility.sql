-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 09:19 AM
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
-- Table structure for table `apart_owner_sevice_facility`
--

CREATE TABLE `apart_owner_sevice_facility` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
  `office_code` varchar(10) NOT NULL,
  `owner_code` varchar(10) NOT NULL,
  `services_code` varchar(5) NOT NULL,
  `services_name` varchar(50) NOT NULL,
  `services_avail_flag` varchar(2) NOT NULL,
  `effect_date` date NOT NULL,
  `teminate_date` date NOT NULL,
  `ss_creator` varchar(15) NOT NULL,
  `ss_creator_on` date NOT NULL,
  `ss_modifier` varchar(15) NOT NULL,
  `ss_modified_on` date NOT NULL,
  `ss_org_no` varchar(5) NOT NULL,
   PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
