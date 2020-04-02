-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 10:30 AM
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
-- Table structure for table `code_master`
--

CREATE TABLE `code_master` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hardcode` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `softcode` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_des` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modify_by` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modify_date` datetime NOT NULL,
  `ss_org_no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `code_master`
--

INSERT INTO `code_master` (`id`, `office_code`, `hardcode`, `softcode`, `description`, `sort_des`, `created_by`, `created_date`, `modify_by`, `modify_date`, `ss_org_no`) VALUES
(1, '9900', 'acat', '0', 'Account Category', 'Account Ty', 'admin', '2020-02-12 11:19:36', '', '2020-02-16 11:10:33', 9900),
(2, '9900', 'acc_t', '0', 'Account Type', 'Account Ty', 'admin', '2020-02-12 11:20:58', '', '0000-00-00 00:00:00', 9900),
(3, '9900', 'UCODE', '0', 'Unit Code', 'Unit Code', 'admin', '2020-02-12 11:21:26', '', '0000-00-00 00:00:00', 9900),
(4, '9900', 'VTYPE', '0', 'Voucher Type', 'Voucher Ty', 'admin', '2020-02-12 11:22:35', '', '0000-00-00 00:00:00', 9900),
(5, '9900', 'CURT', '0', 'Currency Type', 'Currency T', 'admin', '2020-02-12 11:23:01', '', '0000-00-00 00:00:00', 9900),
(6, '9900', 'DTYPE', '0', 'Deposite Type', 'Deposite T', 'admin', '2020-02-12 11:23:38', '', '0000-00-00 00:00:00', 9900),
(7, '9900', 'DOTY', '0', 'Donation Type', 'Donation T', 'admin', '2020-02-12 11:24:41', '', '0000-00-00 00:00:00', 9900),
(8, '9900', 'BGTYP', '0', 'Blood Group Type', 'BGTYPE', 'admin', '2020-02-12 11:26:07', '', '0000-00-00 00:00:00', 9900),
(9, '9900', 'MTYPE', '0', 'Member Type', 'Member Typ', 'admin', '2020-02-12 11:26:35', '', '0000-00-00 00:00:00', 9900),
(10, '9900', 'RTYPE', '0', 'Role Type', 'Role Type', 'admin', '2020-02-12 11:27:31', '', '0000-00-00 00:00:00', 9900),
(11, '9900', 'acat', '1', 'ASSETS ', 'asst', 'admin', '2020-02-12 11:32:52', '', '0000-00-00 00:00:00', 9900),
(12, '9900', 'acat', '2', 'LIABLITIES', 'lib', 'admin', '2020-02-12 11:33:52', '', '0000-00-00 00:00:00', 9900),
(13, '9900', 'acat', '3', 'INCOME', 'inc', 'admin', '2020-02-12 11:34:21', '', '0000-00-00 00:00:00', 9900),
(14, '9900', 'acat', '4', 'EXPENSE', 'EXP', 'admin', '2020-02-12 11:34:43', '', '0000-00-00 00:00:00', 9900),
(15, '9900', 'acat', '5', 'EQUITY', 'eqt', 'admin', '2020-02-12 11:35:04', '', '0000-00-00 00:00:00', 9900),
(16, '9900', 'acc_t', '1', 'Cash', 'Cash', 'admin', '2020-02-12 11:35:40', '', '0000-00-00 00:00:00', 9900),
(17, '9900', 'acc_t', '2', 'Bank', 'Bank', 'admin', '2020-02-12 11:36:01', '', '0000-00-00 00:00:00', 9900),
(18, '9900', 'acc_t', '3', 'Personal', 'Personal', 'admin', '2020-02-12 11:36:21', '', '0000-00-00 00:00:00', 9900),
(19, '9900', 'acc_t', '4', 'Real Account', 'Real Accou', 'admin', '2020-02-12 11:36:52', '', '0000-00-00 00:00:00', 9900),
(20, '9900', 'acc_t', '5', 'Nominal', 'Nominal', 'admin', '2020-02-12 11:37:36', '', '0000-00-00 00:00:00', 9900),
(21, '9900', 'UCODE', '1', 'KG', 'KG', 'admin', '2020-02-12 11:38:20', '', '0000-00-00 00:00:00', 9900),
(22, '9900', 'UCODE', '2', 'Meter', 'Meter', 'admin', '2020-02-12 11:39:14', '', '0000-00-00 00:00:00', 9900),
(23, '9900', 'VTYPE', '08', 'Credit Note', 'c note', 'admin', '2020-02-12 11:39:56', '', '0000-00-00 00:00:00', 9900),
(24, '9900', 'VTYPE', '01', 'Cash Receipt ', 'cash rec', 'admin', '2020-02-12 11:40:53', '', '2020-02-12 06:59:14', 9900),
(25, '9900', 'VTYPE', '02', 'Cash Payment', 'cash pay', 'admin', '2020-02-12 11:41:23', '', '2020-02-12 06:59:02', 9900),
(26, '9900', 'VTYPE', '03', 'Purchase', 'purchase', 'admin', '2020-02-12 11:42:22', '', '2020-02-12 06:58:51', 9900),
(27, '9900', 'VTYPE', '04', 'Sales', 'sales', 'admin', '2020-02-12 11:43:16', '', '0000-00-00 00:00:00', 9900),
(28, '9900', 'VTYPE', '05', 'Journal', 'jr', 'admin', '2020-02-12 11:43:48', '', '0000-00-00 00:00:00', 9900),
(29, '9900', 'VTYPE', '07', 'Debit Note', 'dnote', 'admin', '2020-02-12 11:44:29', '', '0000-00-00 00:00:00', 9900),
(30, '9900', 'VTYPE', '06', 'Contra Entry', 'centry', 'admin', '2020-02-12 11:58:32', '', '0000-00-00 00:00:00', 9900),
(31, '9900', 'CURT', '01', 'Bangladesh TK', 'BDT', 'admin', '2020-02-12 12:01:56', '', '0000-00-00 00:00:00', 9900),
(32, '9900', 'CURT', '02', 'US Doller', 'USD', 'admin', '2020-02-12 12:02:17', '', '0000-00-00 00:00:00', 9900),
(34, '9900', 'DTYPE', '01', 'Monthly', 'monthly', 'admin', '2020-02-12 12:04:49', '', '0000-00-00 00:00:00', 9900),
(35, '9900', 'DOTY', '01', 'Jakat', 'jakat', 'admin', '2020-02-12 12:05:22', '', '0000-00-00 00:00:00', 9900),
(36, '9900', 'DOTY', '02', 'Sadqa', 'sadqa', 'admin', '2020-02-12 12:05:42', '', '0000-00-00 00:00:00', 9900),
(37, '9900', 'DOTY', '03', 'General', 'general', 'admin', '2020-02-12 12:06:10', '', '0000-00-00 00:00:00', 9900),
(38, '9900', 'BGTYP', '01', 'A+', 'A+', 'admin', '2020-02-12 12:06:44', '', '0000-00-00 00:00:00', 9900),
(39, '9900', 'BGTYP', '02', 'A-', 'A-', 'admin', '2020-02-12 12:06:57', '', '0000-00-00 00:00:00', 9900),
(40, '9900', 'BGTYP', '03', 'B+', 'B+', 'admin', '2020-02-12 12:07:14', '', '0000-00-00 00:00:00', 9900),
(41, '9900', 'BGTYP', '04', 'B-', 'B-', 'admin', '2020-02-12 12:07:31', '', '0000-00-00 00:00:00', 9900),
(42, '9900', 'BGTYP', '05', 'AB+', 'AB+', 'admin', '2020-02-12 12:07:47', '', '0000-00-00 00:00:00', 9900),
(43, '9900', 'BGTYP', '06', 'AB-', 'AB-', 'admin', '2020-02-12 12:08:00', '', '0000-00-00 00:00:00', 9900),
(44, '9900', 'BGTYP', '07', 'O+', 'O+', 'admin', '2020-02-12 12:08:18', '', '0000-00-00 00:00:00', 9900),
(45, '9900', 'BGTYP', '08', 'O-', 'O-', 'admin', '2020-02-12 12:08:31', '', '0000-00-00 00:00:00', 9900),
(47, '9900', 'MTYPE', '1', 'Regular Member', 'R-mem', 'admin', '2020-02-12 12:10:01', '', '0000-00-00 00:00:00', 9900),
(48, '9900', 'MTYPE', '2', 'Life Long Member ', 'life long', 'admin', '2020-02-12 12:10:28', '', '0000-00-00 00:00:00', 9900),
(49, '9900', 'RTYPE', '10', 'inward', 'inward', 'admin', '2020-02-12 12:11:03', '', '2020-02-12 07:11:24', 9900),
(50, '9900', 'RTYPE', '20', 'Outward contract', 'OutContrac', 'admin', '2020-02-12 12:13:04', '', '0000-00-00 00:00:00', 9900),
(51, '9900', 'RTYPE', '21', 'Local Authority', 'Local Auth', 'admin', '2020-02-12 12:13:36', '', '0000-00-00 00:00:00', 9900),
(52, '9900', 'RTYPE', '22', 'Existing Member', 'existing-M', 'admin', '2020-02-12 12:14:14', '', '0000-00-00 00:00:00', 9900),
(53, '9900', 'OFFTP', '0', 'Office Type', 'OFFTP', 'admin', '2020-02-13 13:49:25', '', '0000-00-00 00:00:00', 9900),
(54, '9900', 'OFFTP', '1', 'Project Office', 'project', 'admin', '2020-02-13 13:50:34', '', '0000-00-00 00:00:00', 9900),
(55, '9900', 'OFFTP', '2', 'Branch Office ', 'branch', 'admin', '2020-02-13 13:50:59', '', '0000-00-00 00:00:00', 9900),
(56, '9900', 'OFFTP', '3', 'Wear House ', 'wearhouse', 'admin', '2020-02-13 13:51:26', '', '0000-00-00 00:00:00', 9900),
(57, '9900', 'OFFTP', '04', 'project4', 'project4', 'admin', '2020-02-16 16:16:17', '', '0000-00-00 00:00:00', 9900),
(58, '9900', 'SUPTP', '0', 'Supplier Type ', 'Supplier T', 'admin', '2020-02-17 12:56:04', '', '0000-00-00 00:00:00', 9900),
(59, '9900', 'SUPTP', '1', 'Individual ', 'Individual', 'admin', '2020-02-17 12:56:56', '', '0000-00-00 00:00:00', 9900),
(60, '9900', 'SUPTP', '2', 'Corporate', 'Corporate', 'admin', '2020-02-17 12:57:11', '', '0000-00-00 00:00:00', 9900),
(61, '9900', 'SUPTP', '3', 'Manufacturer ', 'Manufactur', 'admin', '2020-02-17 12:57:28', '', '0000-00-00 00:00:00', 9900),
(62, '9900', 'SUPTP', '4', 'Distributor  ', 'Distributo', 'admin', '2020-02-17 12:57:50', '', '0000-00-00 00:00:00', 9900),
(63, '9900', 'CUSTP', '0', 'Customer Type', 'Customer T', 'admin', '2020-02-17 12:58:15', '', '0000-00-00 00:00:00', 9900),
(64, '9900', 'CUSTP', '1', 'Individual ', 'Individual', 'admin', '2020-02-17 12:58:31', '', '0000-00-00 00:00:00', 9900),
(65, '9900', 'CUSTP', '2', 'Corporate', 'Corporate', 'admin', '2020-02-17 12:58:43', '', '0000-00-00 00:00:00', 9900),
(66, '9900', 'BUSCA', '0', 'Business Category', 'Business C', 'admin', '2020-02-17 13:00:20', '', '0000-00-00 00:00:00', 9900),
(67, '9900', 'BUSCA', '1', 'Contractor ', 'Contractor', 'admin', '2020-02-17 13:00:43', '', '0000-00-00 00:00:00', 9900),
(68, '9900', 'BUSCA', '2', 'Wholesaler', 'Wholesaler', 'admin', '2020-02-17 13:01:17', '', '0000-00-00 00:00:00', 9900),
(69, '9900', 'BUSCA', '3', 'Re seller ', 'Re seller ', 'admin', '2020-02-17 13:01:57', '', '0000-00-00 00:00:00', 9900),
(70, '9900', 'acc_t', '6', 'Payable', 'Payable', 'admin', '2020-02-17 15:38:29', '', '0000-00-00 00:00:00', 9900),
(71, '9900', 'acc_t', '7', 'receivable', 'receivable', 'admin', '2020-02-17 15:39:18', '', '0000-00-00 00:00:00', 9900),
(72, '9900', 'TTYPE', '0', 'Vat Tax Type ', 'Vat Tax Ty', 'admin', '2020-02-20 12:47:54', '', '0000-00-00 00:00:00', 9900),
(73, '9900', 'TTYPE', '1', 'Value Added Tax', 'Value Adde', 'admin', '2020-02-20 12:48:20', '', '0000-00-00 00:00:00', 9900),
(74, '9900', 'TTYPE', '2', 'Goods and Service Tax', 'GST', 'admin', '2020-02-20 12:48:43', '', '0000-00-00 00:00:00', 9900),
(75, '9900', 'TTYPE', '3', 'State Goods and Services ', 'SGST', 'admin', '2020-02-20 12:49:07', '', '0000-00-00 00:00:00', 9900),
(76, '9900', 'TTYPE', '4', 'Discount', 'discount', 'admin', '2020-02-20 12:49:34', '', '0000-00-00 00:00:00', 9900),
(77, '9900', 'USERG', '0', 'User Group', 'User Group', 'admin', '2020-02-24 17:16:46', '', '0000-00-00 00:00:00', 9900),
(78, '9900', 'USERG', '0100', 'Employee', 'Employee', 'admin', '2020-02-24 17:17:32', '', '0000-00-00 00:00:00', 9900),
(79, '9900', 'USERG', '0200', 'Customer', 'Customer', 'admin', '2020-02-24 17:18:36', '', '0000-00-00 00:00:00', 9900),
(80, '9900', 'USERG', '0300', 'Supplier', 'Supplier', 'admin', '2020-02-24 17:19:01', '', '0000-00-00 00:00:00', 9900),
(81, '9900', 'USERG', '0400', 'Member', 'Member', 'admin', '2020-02-24 17:19:26', '', '0000-00-00 00:00:00', 9900),
(82, '9900', 'USERG', '0500', 'Teacher', 'Teacher', 'admin', '2020-02-24 17:19:52', '', '0000-00-00 00:00:00', 9900),
(83, '9900', 'USERG', '0600', 'Student', 'Student', 'admin', '2020-02-24 17:20:17', '', '0000-00-00 00:00:00', 9900),
(84, '9900', 'USERG', '0700', 'Gradient', 'Gradient', 'admin', '2020-02-24 17:21:02', '', '0000-00-00 00:00:00', 9900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code_master`
--
ALTER TABLE `code_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hardcode` (`hardcode`,`softcode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code_master`
--
ALTER TABLE `code_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
