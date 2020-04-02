-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2020 at 10:01 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

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
-- Table structure for table `acc_rule_setup`
--

CREATE TABLE `acc_rule_setup` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_inv` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_profit_loss_acc` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allow_multicurrency` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_bill_details` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_bdtl_for_non_trading_acc` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_int_cal` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_advance_rule` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_payroll` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_cost_center` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_cost_center_for_job` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_predefine_cost_c_all_in_transaction` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_invoicing` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_dr_cr_note` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_invoice_for_cr_note` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_invoice_for_dr_note` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_buget_and_control` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_rev_journal` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_optional_voucher` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_chq_printing` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_post_dt_chq` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` datetime NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` datetime NOT NULL,
  `ss_verify_plag` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_verified_by` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_verified_on` datetime NOT NULL,
  `ss_og_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acc_rule_setup`
--

INSERT INTO `acc_rule_setup` (`id`, `office_code`, `m_inv`, `m_profit_loss_acc`, `allow_multicurrency`, `m_bill_details`, `m_bdtl_for_non_trading_acc`, `active_int_cal`, `m_advance_rule`, `m_payroll`, `a_cost_center`, `u_cost_center_for_job`, `u_predefine_cost_c_all_in_transaction`, `a_invoicing`, `a_dr_cr_note`, `a_invoice_for_cr_note`, `a_invoice_for_dr_note`, `m_buget_and_control`, `a_rev_journal`, `a_optional_voucher`, `a_chq_printing`, `check_post_dt_chq`, `rec_status`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_verify_plag`, `ss_verified_by`, `ss_verified_on`, `ss_og_no`) VALUES
(1, '', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', '2019-10-23 13:04:23', '', '2019-10-23 12:05:37', '', '', '2019-10-23 13:04:23', ''),
(2, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 13:07:06', '', '2019-10-23 11:56:01', '', '', '0000-00-00 00:00:00', ''),
(3, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 13:07:44', '', '2019-10-23 11:58:02', '', '', '0000-00-00 00:00:00', ''),
(4, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 14:02:43', '', '2019-10-23 11:58:08', '', '', '0000-00-00 00:00:00', ''),
(5, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 14:07:35', '', '2019-10-23 11:58:14', '', '', '0000-00-00 00:00:00', ''),
(6, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 14:10:09', '', '2019-10-23 11:58:19', '', '', '0000-00-00 00:00:00', ''),
(7, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 14:11:49', '', '2019-10-23 11:56:14', '', '', '0000-00-00 00:00:00', ''),
(8, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 14:15:43', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', ''),
(9, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 14:15:58', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', ''),
(10, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 14:17:11', '', '2019-10-23 11:57:48', '', '', '0000-00-00 00:00:00', ''),
(11, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 14:17:22', '', '2019-10-23 11:57:57', '', '', '0000-00-00 00:00:00', ''),
(12, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 14:17:39', '', '2019-10-23 11:58:26', '', '', '0000-00-00 00:00:00', ''),
(13, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '2019-10-23 14:49:31', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `bach_no`
--

CREATE TABLE `bach_no` (
  `bno` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bach_no`
--

INSERT INTO `bach_no` (`bno`, `username`, `datetime`, `status`) VALUES
(2020000, '', '2020-02-27 08:38:45', 0),
(2020001, 'superadmin', '2020-02-27 08:39:05', 0),
(2020002, 'superadmin', '2020-02-27 09:23:22', 0),
(2020003, 'superadmin', '2020-02-27 09:28:46', 0),
(2020004, 'superadmin', '2020-02-27 09:28:52', 0),
(2020005, 'superadmin', '2020-02-27 09:28:55', 0),
(2020006, 'superadmin', '2020-02-27 09:30:21', 0),
(2020007, 'superadmin', '2020-02-27 09:53:36', 0),
(2020008, 'superadmin', '2020-03-01 04:50:31', 0),
(2020009, 'superadmin', '2020-03-01 04:50:35', 0),
(2020010, 'superadmin', '2020-03-01 04:50:37', 0),
(2020011, 'superadmin', '2020-03-01 04:50:39', 0),
(2020012, 'superadmin', '2020-03-01 04:50:43', 0),
(2020013, 'superadmin', '2020-03-01 04:50:46', 0),
(2020014, 'superadmin', '2020-03-01 05:59:54', 0),
(2020015, 'superadmin', '2020-03-01 06:29:28', 0),
(2020016, 'superadmin', '2020-03-01 06:57:05', 0),
(2020017, 'superadmin', '2020-03-01 06:57:08', 0),
(2020018, 'superadmin', '2020-03-01 06:57:12', 0),
(2020019, 'superadmin', '2020-03-01 06:59:23', 0),
(2020020, 'superadmin', '2020-03-01 06:59:25', 0),
(2020021, 'superadmin', '2020-03-01 07:59:56', 0),
(2020022, 'superadmin', '2020-03-01 08:00:56', 0),
(2020023, 'superadmin', '2020-03-01 08:00:58', 0),
(2020024, 'superadmin', '2020-03-01 08:03:22', 0),
(2020025, 'superadmin', '2020-03-01 08:03:24', 0),
(2020026, 'superadmin', '2020-03-01 08:03:42', 0),
(2020027, 'superadmin', '2020-03-01 08:03:51', 0),
(2020028, 'superadmin', '2020-03-01 08:04:15', 0),
(2020029, 'superadmin', '2020-03-01 08:04:16', 0),
(2020030, 'superadmin', '2020-03-01 08:04:28', 0),
(2020031, 'superadmin', '2020-03-01 08:04:29', 0),
(2020032, 'superadmin', '2020-03-01 08:04:42', 0),
(2020033, 'superadmin', '2020-03-01 08:04:43', 0),
(2020034, 'superadmin', '2020-03-01 08:04:57', 0),
(2020035, 'superadmin', '2020-03-01 08:05:03', 0),
(2020036, 'superadmin', '2020-03-01 08:05:21', 0),
(2020037, 'superadmin', '2020-03-01 08:05:27', 0),
(2020038, 'superadmin', '2020-03-01 08:05:50', 0),
(2020039, 'superadmin', '2020-03-01 08:05:58', 0),
(2020040, 'superadmin', '2020-03-01 08:06:00', 0),
(2020041, 'superadmin', '2020-03-01 08:06:55', 0),
(2020042, 'superadmin', '2020-03-01 08:07:04', 0),
(2020043, 'superadmin', '2020-03-01 08:07:56', 0),
(2020044, 'superadmin', '2020-03-01 08:08:08', 0),
(2020045, 'superadmin', '2020-03-01 08:08:11', 0),
(2020046, 'superadmin', '2020-03-01 08:08:18', 0),
(2020047, 'superadmin', '2020-03-01 08:08:20', 0),
(2020048, 'superadmin', '2020-03-01 10:00:51', 0),
(2020049, 'superadmin', '2020-03-01 10:01:04', 0),
(2020050, 'superadmin', '2020-03-01 10:01:07', 0),
(2020051, 'superadmin', '2020-03-01 10:03:05', 0),
(2020052, 'superadmin', '2020-03-01 10:03:08', 0),
(2020053, 'superadmin', '2020-03-01 10:10:24', 0),
(2020054, 'superadmin', '2020-03-01 10:10:28', 0),
(2020055, 'superadmin', '2020-03-01 10:12:27', 0),
(2020056, 'superadmin', '2020-03-01 10:12:30', 0),
(2020057, 'superadmin', '2020-03-01 10:16:47', 0),
(2020058, 'superadmin', '2020-03-01 10:16:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bank_acc_info`
--

CREATE TABLE `bank_acc_info` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_acc_no` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` int(9) NOT NULL,
  `branch_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_acc_code` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` date NOT NULL,
  `ss_modifier` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modifier_on` date NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_acc_info`
--

INSERT INTO `bank_acc_info` (`id`, `office_code`, `bank_acc_no`, `acc_name`, `bank_code`, `bank_name`, `branch_code`, `branch_name`, `bank_address`, `gl_acc_code`, `ss_creator`, `ss_creator_on`, `ss_modifier`, `ss_modifier_on`, `ss_org_no`) VALUES
(1, '20002', 'CD 120', 'Habro Current Account', '11', 'Sonali Bank', 1234, 'Motijil Branch', 'Motijil', '102020202000', 'superadmin', '2017-07-01', '', '0000-00-00', '9900'),
(2, '20002', 'CD 225', 'Fund Collection Current Account', '14', 'Rupali Bank', 250, 'Dilkhusha Dhaka', 'Dilkhusha Dhaka', '102020203000', 'superadmin', '2017-07-01', '', '0000-00-00', '9900');

-- --------------------------------------------------------

--
-- Table structure for table `bank_chq_info`
--

CREATE TABLE `bank_chq_info` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_acc_no` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chq_prefix` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beg_chq_no` int(8) NOT NULL,
  `chq_issue_date` date NOT NULL,
  `no_of_leaf` int(3) NOT NULL,
  `chq_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_date` date NOT NULL,
  `remark` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` datetime NOT NULL,
  `ss_modifier` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modifier_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_chq_info`
--

INSERT INTO `bank_chq_info` (`id`, `office_code`, `bank_acc_no`, `bank_code`, `bank_name`, `branch_code`, `branch_name`, `chq_prefix`, `beg_chq_no`, `chq_issue_date`, `no_of_leaf`, `chq_status`, `status_date`, `remark`, `ss_creator`, `ss_creator_on`, `ss_modifier`, `ss_modifier_on`, `ss_org_no`) VALUES
(1, '20002', 'CD 120', '11', 'Sonali Bank', '1234', 'Motijil Branch', 'CD', 110, '2020-02-25', 10, '1', '2020-02-25', '', ' superadmin', '2017-07-01 00:00:00', '', '2020-02-25 09:30:36', '9900'),
(2, '20002', 'CD 225', '14', 'Rupali Bank', '250', 'Dilkhusha Dhaka', 'CD', 525, '2020-02-25', 20, '1', '2020-02-25', '', ' superadmin', '2017-07-01 00:00:00', '', '2020-02-25 09:31:02', '9900'),
(3, '20002', 'CD 120', '11', 'Sonali Bank', '1234', 'Motijil Branch', 'CD', 110, '2020-02-27', 30, '1', '2020-02-27', '', ' superadmin', '2017-07-01 00:00:00', '', '2020-02-27 09:32:37', '9900');

-- --------------------------------------------------------

--
-- Table structure for table `bank_chq_leaf_info`
--

CREATE TABLE `bank_chq_leaf_info` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chq_prefix` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beg_chq_no` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chq_leaf_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leaf_status` int(5) NOT NULL,
  `status_date` date NOT NULL,
  `remark` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` datetime NOT NULL,
  `ss_modifier` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modifier_on` datetime NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_chq_leaf_info`
--

INSERT INTO `bank_chq_leaf_info` (`id`, `office_code`, `bank_code`, `branch_code`, `account_no`, `chq_prefix`, `beg_chq_no`, `chq_leaf_no`, `leaf_status`, `status_date`, `remark`, `ss_creator`, `ss_creator_on`, `ss_modifier`, `ss_modifier_on`, `ss_org_no`) VALUES
(1, '20002', '11', '1234', 'CD 120', 'CD', '110', 'CD110', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(2, '20002', '11', '1234', 'CD 120', 'CD', '111', 'CD111', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(3, '20002', '11', '1234', 'CD 120', 'CD', '112', 'CD112', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(4, '20002', '11', '1234', 'CD 120', 'CD', '113', 'CD113', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(5, '20002', '11', '1234', 'CD 120', 'CD', '114', 'CD114', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(6, '20002', '11', '1234', 'CD 120', 'CD', '115', 'CD115', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(7, '20002', '11', '1234', 'CD 120', 'CD', '116', 'CD116', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(8, '20002', '11', '1234', 'CD 120', 'CD', '117', 'CD117', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(9, '20002', '11', '1234', 'CD 120', 'CD', '118', 'CD118', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(10, '20002', '11', '1234', 'CD 120', 'CD', '119', 'CD119', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(11, '20002', '14', '250', 'CD 225', 'CD', '525', 'CD525', 0, '2020-02-25', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(12, '20002', '14', '250', 'CD 225', 'CD', '526', 'CD526', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(13, '20002', '14', '250', 'CD 225', 'CD', '527', 'CD527', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(14, '20002', '14', '250', 'CD 225', 'CD', '528', 'CD528', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(15, '20002', '14', '250', 'CD 225', 'CD', '529', 'CD529', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(16, '20002', '14', '250', 'CD 225', 'CD', '530', 'CD530', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(17, '20002', '14', '250', 'CD 225', 'CD', '531', 'CD531', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(18, '20002', '14', '250', 'CD 225', 'CD', '532', 'CD532', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(19, '20002', '14', '250', 'CD 225', 'CD', '533', 'CD533', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(20, '20002', '14', '250', 'CD 225', 'CD', '534', 'CD534', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(21, '20002', '14', '250', 'CD 225', 'CD', '535', 'CD535', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(22, '20002', '14', '250', 'CD 225', 'CD', '536', 'CD536', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(23, '20002', '14', '250', 'CD 225', 'CD', '537', 'CD537', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(24, '20002', '14', '250', 'CD 225', 'CD', '538', 'CD538', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(25, '20002', '14', '250', 'CD 225', 'CD', '539', 'CD539', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(26, '20002', '14', '250', 'CD 225', 'CD', '540', 'CD540', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(27, '20002', '14', '250', 'CD 225', 'CD', '541', 'CD541', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(28, '20002', '14', '250', 'CD 225', 'CD', '542', 'CD542', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(29, '20002', '14', '250', 'CD 225', 'CD', '543', 'CD543', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(30, '20002', '14', '250', 'CD 225', 'CD', '544', 'CD544', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(31, '20002', '11', '1234', 'CD 120', 'CD', '110', 'CD110', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(32, '20002', '11', '1234', 'CD 120', 'CD', '111', 'CD111', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(33, '20002', '11', '1234', 'CD 120', 'CD', '112', 'CD112', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(34, '20002', '11', '1234', 'CD 120', 'CD', '113', 'CD113', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(35, '20002', '11', '1234', 'CD 120', 'CD', '114', 'CD114', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(36, '20002', '11', '1234', 'CD 120', 'CD', '115', 'CD115', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(37, '20002', '11', '1234', 'CD 120', 'CD', '116', 'CD116', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(38, '20002', '11', '1234', 'CD 120', 'CD', '117', 'CD117', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(39, '20002', '11', '1234', 'CD 120', 'CD', '118', 'CD118', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(40, '20002', '11', '1234', 'CD 120', 'CD', '119', 'CD119', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(41, '20002', '11', '1234', 'CD 120', 'CD', '120', 'CD120', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(42, '20002', '11', '1234', 'CD 120', 'CD', '121', 'CD121', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(43, '20002', '11', '1234', 'CD 120', 'CD', '122', 'CD122', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(44, '20002', '11', '1234', 'CD 120', 'CD', '123', 'CD123', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(45, '20002', '11', '1234', 'CD 120', 'CD', '124', 'CD124', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(46, '20002', '11', '1234', 'CD 120', 'CD', '125', 'CD125', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(47, '20002', '11', '1234', 'CD 120', 'CD', '126', 'CD126', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(48, '20002', '11', '1234', 'CD 120', 'CD', '127', 'CD127', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(49, '20002', '11', '1234', 'CD 120', 'CD', '128', 'CD128', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(50, '20002', '11', '1234', 'CD 120', 'CD', '129', 'CD129', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(51, '20002', '11', '1234', 'CD 120', 'CD', '130', 'CD130', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(52, '20002', '11', '1234', 'CD 120', 'CD', '131', 'CD131', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(53, '20002', '11', '1234', 'CD 120', 'CD', '132', 'CD132', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(54, '20002', '11', '1234', 'CD 120', 'CD', '133', 'CD133', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(55, '20002', '11', '1234', 'CD 120', 'CD', '134', 'CD134', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(56, '20002', '11', '1234', 'CD 120', 'CD', '135', 'CD135', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(57, '20002', '11', '1234', 'CD 120', 'CD', '136', 'CD136', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(58, '20002', '11', '1234', 'CD 120', 'CD', '137', 'CD137', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(59, '20002', '11', '1234', 'CD 120', 'CD', '138', 'CD138', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900'),
(60, '20002', '11', '1234', 'CD 120', 'CD', '139', 'CD139', 1, '0000-00-00', '', ' superadmin', '2017-07-01 00:00:00', '', '0000-00-00 00:00:00', '9900');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_saler_info`
--

CREATE TABLE `buyer_saler_info` (
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tin_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_saler_flag` int(1) NOT NULL COMMENT '1= buyer, 2= saler',
  `ss_creator` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` datetime NOT NULL,
  `ss_modifier` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modifier_on` datetime NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buyer_saler_info`
--

INSERT INTO `buyer_saler_info` (`office_code`, `id`, `name`, `address`, `vat_no`, `tin_no`, `buyer_saler_flag`, `ss_creator`, `ss_creator_on`, `ss_modifier`, `ss_modifier_on`, `ss_org_no`) VALUES
('007', 64, 'Grosury2222', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 1, '1', '2020-01-02 17:37:00', '', '2020-01-02 17:37:00', ''),
('007', 66, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:01', '', '2020-01-02 17:37:01', ''),
('007', 67, 'Grosury222200', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, '1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 68, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 70, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 71, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 72, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 73, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 74, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 75, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 76, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 77, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 78, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 79, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 80, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 81, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 82, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 83, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 84, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 85, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 86, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 87, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 88, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 89, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:24', '', '2020-01-02 17:37:24', ''),
('007', 90, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 91, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 92, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 93, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 94, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 95, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 96, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 97, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 98, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 99, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 100, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 101, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 102, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 103, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 104, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 105, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 106, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:37:25', '', '2020-01-02 17:37:25', ''),
('007', 107, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:02', '', '2020-01-02 17:38:02', ''),
('007', 108, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:02', '', '2020-01-02 17:38:02', ''),
('007', 109, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:02', '', '2020-01-02 17:38:02', ''),
('007', 110, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:02', '', '2020-01-02 17:38:02', ''),
('007', 111, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:02', '', '2020-01-02 17:38:02', ''),
('007', 112, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:02', '', '2020-01-02 17:38:02', ''),
('007', 113, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:02', '', '2020-01-02 17:38:02', ''),
('007', 114, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:02', '', '2020-01-02 17:38:02', ''),
('007', 115, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 116, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 117, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 118, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 119, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 120, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 121, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 122, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 123, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 124, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 125, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 126, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 127, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 128, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 129, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 130, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 131, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 132, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 133, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 134, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 135, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 136, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 137, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 138, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 139, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 140, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 141, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:03', '', '2020-01-02 17:38:03', ''),
('007', 142, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:04', '', '2020-01-02 17:38:04', ''),
('007', 143, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:04', '', '2020-01-02 17:38:04', ''),
('007', 144, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:04', '', '2020-01-02 17:38:04', ''),
('007', 145, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:04', '', '2020-01-02 17:38:04', ''),
('007', 146, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:04', '', '2020-01-02 17:38:04', ''),
('007', 147, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:07', '', '2020-01-02 17:38:07', ''),
('007', 148, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:07', '', '2020-01-02 17:38:07', ''),
('007', 149, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:07', '', '2020-01-02 17:38:07', ''),
('007', 150, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:07', '', '2020-01-02 17:38:07', ''),
('007', 151, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:07', '', '2020-01-02 17:38:07', ''),
('007', 152, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 153, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 154, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 155, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 156, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 157, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 158, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 159, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 160, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 161, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 162, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 163, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 164, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 165, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 166, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 167, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 168, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 169, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 170, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 171, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 172, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 173, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 174, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 175, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 176, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 177, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 178, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 179, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 180, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:08', '', '2020-01-02 17:38:08', ''),
('007', 181, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:09', '', '2020-01-02 17:38:09', ''),
('007', 182, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:09', '', '2020-01-02 17:38:09', ''),
('007', 183, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:09', '', '2020-01-02 17:38:09', ''),
('007', 184, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:09', '', '2020-01-02 17:38:09', ''),
('007', 185, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:09', '', '2020-01-02 17:38:09', ''),
('007', 186, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:09', '', '2020-01-02 17:38:09', ''),
('007', 187, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 188, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 189, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 190, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 191, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 192, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 193, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 194, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 195, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 196, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 197, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 198, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 199, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 200, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 201, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 202, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 203, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 204, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 205, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 206, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 207, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 208, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 209, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 210, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 211, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:12', '', '2020-01-02 17:38:12', ''),
('007', 212, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 213, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 214, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 215, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 216, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 217, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 218, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 219, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 220, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 221, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 222, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 223, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 224, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 225, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 226, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:13', '', '2020-01-02 17:38:13', ''),
('007', 227, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 228, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 229, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 230, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 231, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 232, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 233, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 234, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 235, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 236, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 237, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 238, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 239, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 240, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 241, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 242, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 243, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 244, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 245, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 246, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 247, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 248, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 249, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 250, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:17', '', '2020-01-02 17:38:17', ''),
('007', 251, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 252, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 253, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 254, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 255, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 256, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 257, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 258, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 259, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 260, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 261, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 262, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 263, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 264, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 265, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('007', 266, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' 1', '2020-01-02 17:38:18', '', '2020-01-02 17:38:18', ''),
('', 267, 'Grosury', 'fffffffffffff', 'fgdssdf', 'aaaaaaaa', 2, ' ', '2020-01-02 18:26:30', '', '2020-01-02 18:26:30', ''),
('007', 268, 'Chicken', 'Keranigong', 'kr984539-54', '485-3495034598', 2, ' 1', '2020-01-04 11:24:53', '', '2020-01-04 11:24:53', ''),
('007', 269, 'Chicken', 'Keranigong', 'kr984539-54', '485-3495034598', 2, ' 1', '2020-01-05 11:05:38', '', '2020-01-05 11:05:38', '');

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
(70, '20002', 'acc_t', '6', 'payable', 'payable', 'superadmin', '2020-02-18 17:12:36', '', '2020-02-18 12:14:07', 10002),
(71, '20002', 'acc_t', '7', 'Receivable ', 'Receivable', 'superadmin', '2020-02-18 17:14:27', '', '0000-00-00 00:00:00', 10002),
(72, '20002', 'UCODE', '3', 'Set', 'Set', 'superadmin', '2020-02-20 13:01:01', '', '2020-02-20 08:01:34', 9900),
(73, '20002', 'UCODE', '4', 'Pice', 'Pice', 'superadmin', '2020-02-20 13:02:18', '', '0000-00-00 00:00:00', 9900),
(75, '20002', 'UCODE', '6', 'Gram ', 'Gram', 'superadmin', '2020-02-20 13:02:57', '', '0000-00-00 00:00:00', 9900),
(76, '20002', 'UCODE', '7', 'Feet', 'Feet', 'superadmin', '2020-02-20 13:03:14', '', '0000-00-00 00:00:00', 9900);

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
(1, '9900', 1, 'Bosir Traders', 'Dhaka', 0, 'Bosir ', '1200', '2345678', '1234567', '123456789', 0, 'admin', '2017-07-01', '', '0000-00-00', '9900'),
(2, '20002', 1, 'Sumana Electronics', '23 Khilgoan, Dhaka', 0, 'mr.yyy', 'Dhaka-12012', '23456', '2345', '2345667', 0, 'superadmin', '2017-07-01', '', '0000-00-00', '9900'),
(3, '20002', 1, 'Boi Bichitra ', '34 Kalabagan, Dhaka-1209', 0, 'Mr.ccccccccccc', 'Dhaka-1209', '456789', '237656', '3456782', 0, 'superadmin', '2017-07-01', '', '0000-00-00', '9900');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd', '2015-09-13 04:33:27', '2016-04-06 10:48:38'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(10, 8, 'Mymensingh', 'ময়মনসিং', 0, 0, 'www.mymensingh.gov.bd', '2015-09-13 04:33:27', '2016-04-06 10:49:01'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(13, 8, 'Netrokona', 'নেত্রকোনা', 24.870955, 90.727887, 'www.netrokona.gov.bd', '2015-09-13 04:33:27', '2016-04-06 10:46:31'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd', '2015-09-13 04:33:27', '2016-04-06 10:48:21'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(18, 5, 'Bogra', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(35, 1, 'Barisal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(43, 2, 'Chittagong', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(44, 2, 'Comilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(57, 4, 'Jessore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `created_at`, `updated_at`) VALUES
(1, 'Barisal', 'বরিশাল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Chittagong', 'চট্টগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Dhaka', 'ঢাকা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Khulna', 'খুলনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Rajshahi', 'রাজশাহী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Rangpur', 'রংপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Sylhet', 'সিলেট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Mymensingh', 'ময়মনসিংহ', '2016-04-06 10:46:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fund_member`
--

CREATE TABLE `fund_member` (
  `member_id` bigint(25) UNSIGNED NOT NULL,
  `gl_acc_code` bigint(15) UNSIGNED NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `husband_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_birth_no` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_no` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `village` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upazila` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_office` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` int(6) NOT NULL,
  `p_village` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_division` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_district` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_upazila` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_p_office` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_p_code` int(6) NOT NULL,
  `donation_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annul_c_tk` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_person_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_person_id` int(11) NOT NULL,
  `referred_person` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annual_con_in_fc` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_key` tinyint(1) NOT NULL,
  `paid_amount` int(15) NOT NULL,
  `paid_date` date NOT NULL,
  `due` int(25) NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` date NOT NULL,
  `ss_modified` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` date NOT NULL,
  `ss_org_no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_member`
--

INSERT INTO `fund_member` (`member_id`, `gl_acc_code`, `office_code`, `member_type`, `full_name`, `father_name`, `mother_name`, `husband_name`, `email`, `mobile`, `nid_birth_no`, `passport_no`, `blood_group`, `dob`, `village`, `division`, `district`, `upazila`, `p_office`, `p_code`, `p_village`, `p_division`, `p_district`, `p_upazila`, `p_p_office`, `p_p_code`, `donation_type`, `payment_type`, `annul_c_tk`, `referred_person_type`, `referred_person_id`, `referred_person`, `annual_con_in_fc`, `currency_type`, `currency_rate`, `activation_key`, `paid_amount`, `paid_date`, `due`, `ss_creator`, `ss_creator_on`, `ss_modified`, `ss_modified_on`, `ss_org_no`) VALUES
(6, 501010100000, '', '2', 'rangaprovat newsbd', 'rangaprovat', 'Zarina Begumdfsd', '', 'ngaprovatnewsbd@gmail.com', '01738356180', '131242344123123', '121212', '03', '2020-02-24', 'Rajbari', '2', '42', '62', 'CreativeITbari', 1216, 'East Maijpara', '4', '58', '293', 'Birmohon ', 79000, '02', '01', '50000', '20', 10001, 'md jahirul', '', '01', '', 0, 19000, '2020-02-27', 31000, 'superadmin', '2020-02-24', '', '0000-00-00', 9900),
(8, 501010100000, '', '2', 'rangaprovat newsbd', 'rangaprovat', 'Zarina Begumdfsd', '', 'nggggggaprovatnewsbd@gmail.com', '01738356180', '131242344123123', '121212', '03', '2020-02-24', 'Rajbari', '2', '42', '62', 'CreativeITbari', 1216, 'East Maijpara', '4', '58', '293', 'Birmohon ', 79000, '02', '01', '50000', '20', 10001, 'md jahirul', '', '01', '', 0, 11000, '2020-02-25', 39000, 'superadmin', '2020-02-24', '', '0000-00-00', 9900),
(9, 501010100000, '', '2', 'rangaprovat newsbd', 'rangaprovat', 'Zarina Begumdfsd', '', 'ngaprovatnewshhhbd@gmail.com', '01738356180', '131242344123123', '121212', '03', '2020-02-24', 'Rajbari', '5', '20', '352', 'CreativeITbari', 1216, 'East Maijpara', '2', '49', '130', 'Birmohon ', 79000, '02', '01', '50000', '20', 2001, 'md fazle rabbi', '', '01', '', 0, 0, '0000-00-00', 0, 'superadmin', '2020-02-24', '', '0000-00-00', 9900),
(11, 501010100000, '20002', '2', 'Md. Hasib Uzzaman', 'Md.', 'ffer', 'MD RAFIQUL HASAN ', 'hasib.9437.hu@gmail.com', '01738356180', '1234567890', '23124124123shdbfsdf121233', '01', '2020-02-24', 'Rajbari54894', '2', '49', '130', 'CreativeITbari', 1216, 'Rajbari', '1', '35', '15', 'mirpur', 7900, '02', '01', '568990', '20', 2001, 'md fazle rabbi', '', '01', '', 0, 1046590, '2020-02-25', -477600, 'superadmin', '2020-02-24', '', '0000-00-00', 9900);

-- --------------------------------------------------------

--
-- Table structure for table `fund_recived`
--

CREATE TABLE `fund_recived` (
  `transaction_id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership_no` int(10) NOT NULL,
  `payment_mode` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_amount` int(50) NOT NULL,
  `payment_date` date NOT NULL,
  `cheque_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cheque_date` date NOT NULL,
  `bank_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_transaction_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_service_provider_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_ac_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_card_no` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_bank_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` date NOT NULL,
  `ss_modified` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` date NOT NULL,
  `ss_org_no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_recived`
--

INSERT INTO `fund_recived` (`transaction_id`, `office_code`, `membership_no`, `payment_mode`, `payment_amount`, `payment_date`, `cheque_no`, `cheque_date`, `bank_name`, `branch_name`, `wallet_transaction_id`, `wallet_service_provider_code`, `wallet_ac_no`, `agent_code`, `credit_card_no`, `card_bank_name`, `ss_creator`, `ss_creator_on`, `ss_modified`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '', 1, 'By Cash', 50000, '2020-02-23', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '2020-02-23', '', '2020-02-23', 0),
(2, '', 1, 'By Cash', 50000, '2020-02-23', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '2020-02-23', '', '2020-02-23', 0),
(3, '', 1, 'By Cash', 5000, '2020-02-23', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '2020-02-23', '', '2020-02-23', 0),
(4, '', 2, 'By Cash', 50000, '2020-02-23', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '2020-02-23', '', '2020-02-23', 0),
(5, '', 3, 'By Cash', 5000, '2020-02-23', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '2020-02-23', '', '2020-02-23', 0),
(6, '', 2, 'By Bank', 50000, '2020-02-23', '121212', '2020-02-23', 'Sonali Bank', 'Gulsan-1', '', '', '', '', '', '', '', '2020-02-23', '', '2020-02-23', 0),
(7, '', 5, 'By Bank', 5000, '2020-02-23', '', '0000-00-00', '', '', '1231234', '124124', '123123', '1414', '', '', '', '2020-02-23', '', '2020-02-23', 0),
(8, '', 1, 'By Cash', 121212, '2020-02-23', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '2020-02-23', '', '2020-02-23', 0),
(9, '', 2, 'By Cash', 50000, '2020-02-23', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '2020-02-24', '', '2020-02-24', 0),
(10, '20002', 0, 'By Cash', 90000, '2020-02-25', '', '0000-00-00', '', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(11, '20002', 0, 'By Cash', 999999, '2020-02-25', '', '0000-00-00', '', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(12, '20002', 11, 'By Cash', 909090, '2020-02-25', '', '0000-00-00', '', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(13, '20002', 11, 'By Cash', 500, '2020-02-25', '', '0000-00-00', '', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(14, '20002', 11, 'By Cash', 70000, '2020-02-25', '', '0000-00-00', '', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(15, '20002', 8, 'By Cash', 5000, '2020-02-25', '', '0000-00-00', '', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(16, '20002', 11, 'By Cash', 500, '2020-02-25', '', '0000-00-00', '', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(17, '20002', 11, 'By Cash', 6000, '2020-02-25', '', '0000-00-00', '', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(18, '20002', 11, 'By Cash', 60000, '2020-02-25', '', '0000-00-00', '', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(19, '20002', 11, 'By Bank', 500, '2020-02-25', '121212', '2020-02-25', 'Sonali Bank', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(20, '20002', 8, 'By Bank', 6000, '2020-02-25', '121212', '2020-02-25', 'DDBL', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(21, '20002', 6, 'By Bank', 6000, '2020-02-25', '5000', '2020-02-25', 'Sonali Bank', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(22, '20002', 6, 'By Bank', 2000, '2020-02-25', '121212', '2020-02-25', 'Sonali Bank', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(23, '20002', 6, 'By Cash', 5000, '2020-02-25', '', '0000-00-00', '', '', '', '', '', '', '', '', 'superadmin', '2020-02-25', '', '0000-00-00', 9900),
(24, '20002', 6, 'By Bank', 6000, '2020-02-27', '121212', '2020-02-27', 'Sonali Bank', '', '', '', '', '', '', '', 'superadmin', '2020-02-27', '', '0000-00-00', 9900);

-- --------------------------------------------------------

--
-- Table structure for table `fund_ref_info`
--

CREATE TABLE `fund_ref_info` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reffered_id` int(11) NOT NULL,
  `full_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `husband_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upazila` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_office` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` int(6) NOT NULL,
  `p_village` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_division` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_district` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_upazila` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_p_office` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_p_code` int(6) NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` date NOT NULL,
  `ss_modified` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` date NOT NULL,
  `ss_org_no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_ref_info`
--

INSERT INTO `fund_ref_info` (`id`, `office_code`, `referred_type`, `reffered_id`, `full_name`, `father_name`, `mother_name`, `husband_name`, `email`, `mobile`, `village`, `division`, `district`, `upazila`, `p_office`, `p_code`, `p_village`, `p_division`, `p_district`, `p_upazila`, `p_p_office`, `p_p_code`, `ss_creator`, `ss_creator_on`, `ss_modified`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '20002', '10', 10001, 'md jahirul', 'md kabir uddin', 'joyonti begum', 'Jakir ', 'roktimsokal@gmail.com', '01908513143', 'Purba Maijpara', '3', '7', '192', 'birmnohon', 7900, 'Purba Maijpara', '3', '7', '192', 'birmohon', 7900, '', '2020-02-23', '', '2020-02-23', 9900),
(2, '20002', '20', 2001, 'md fazle rabbi', 'faysal sheikh ', 'kabira alam ', 'faysal sheikh ', 'afrazamin2020@gmail.com', '01799363475', 'Purba Maijpara', '3', '7', '192', 'birmohon', 7900, 'Purba Maijpara', '3', '7', '192', 'birmohon', 7900, '', '2020-02-23', '', '2020-02-23', 9900);

-- --------------------------------------------------------

--
-- Table structure for table `gl_acc_code`
--

CREATE TABLE `gl_acc_code` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_code` bigint(15) UNSIGNED NOT NULL,
  `acc_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curr_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tran_nature` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_level` int(1) NOT NULL,
  `postable_acc` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tin_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxable_flag` int(1) NOT NULL,
  `buyer_saler_flag` int(1) NOT NULL,
  `rep_glcode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_ho_acc` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_type` int(1) NOT NULL,
  `contra_acc_code` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_acc_code` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_root` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_bal_loc` int(15) NOT NULL,
  `acc_bal_fc` int(15) NOT NULL,
  `exch_rate` int(5) NOT NULL,
  `remarks` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `active` tinyint(1) NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` datetime NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modifier_on` date NOT NULL,
  `ss_verify_flag` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_verified_by` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_verified_on` date NOT NULL,
  `ss_org_no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gl_acc_code`
--

INSERT INTO `gl_acc_code` (`id`, `office_code`, `acc_code`, `acc_head`, `curr_code`, `category_code`, `tran_nature`, `acc_level`, `postable_acc`, `address`, `vat_no`, `tin_no`, `taxable_flag`, `buyer_saler_flag`, `rep_glcode`, `is_ho_acc`, `acc_type`, `contra_acc_code`, `parent_acc_code`, `is_root`, `acc_bal_loc`, `acc_bal_fc`, `exch_rate`, `remarks`, `rec_status`, `active`, `ss_creator`, `ss_creator_on`, `ss_modifier`, `ss_modifier_on`, `ss_verify_flag`, `ss_verified_by`, `ss_verified_on`, `ss_org_no`) VALUES
(9, '', 100000000000, 'সম্পদ', '', '1', '', 1, 'N', '', '', '', 0, 0, '', '', 3, '', '0', '', 0, 0, 0, '', 'C', 0, '', '2019-12-11 15:29:17', 'superadmin', '2020-02-27', '', '', '0000-00-00', 0),
(10, '', 200000000000, 'LIABLITIES', '', '2', '', 1, '', '', '', '', 0, 0, '02', '', 4, '', '0', '', 0, 0, 0, '', 'C', 0, '', '2019-12-11 15:29:35', 'admin', '2020-02-16', '', '', '0000-00-00', 0),
(11, '', 101000000000, 'NON-CURRENT ASSETS', '', '1', '', 2, 'N', '', '', '', 0, 0, '0101', '', 4, '', '9', '', 0, 0, 0, '', 'C', 0, '', '2019-12-11 16:42:27', '', '0000-00-00', '', '', '0000-00-00', 0),
(12, '', 101010000000, 'Plant Machinery & Equipment', '', '1', '', 3, 'N', '', '', '', 0, 0, '0101001', '', 1, '', '11', '', 0, 0, 0, '', 'C', 0, '', '2019-12-11 16:43:26', '', '0000-00-00', '', '', '0000-00-00', 0),
(13, '', 101010100000, 'Office Equipment', '', '1', '', 4, 'N', '', '', '', 0, 0, '01010010001', '', 4, '', '12', '', 0, 0, 0, '', 'C', 0, '', '2019-12-11 16:44:26', '', '0000-00-00', '', '', '0000-00-00', 0),
(14, '', 102000000000, 'CURRENT ASSETS', '', '1', '', 2, 'N', '', '', '', 0, 0, '0102', '', 4, '', '9', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:07:26', '', '0000-00-00', '', '', '0000-00-00', 0),
(15, '', 101020000000, 'Furniture & Fixture', '', '1', '', 3, 'N', '', '', '', 0, 0, '0101003', '', 4, '', '11', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:12:49', '', '0000-00-00', '', '', '0000-00-00', 0),
(16, '', 101030000000, 'Computer & Software', '', '1', '', 3, 'N', '', '', '', 0, 0, '0101004', '', 4, '', '11', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:13:41', '', '0000-00-00', '', '', '0000-00-00', 0),
(17, '', 101040000000, 'Electric & Electronics Equipment', '', '1', '', 3, 'N', '', '', '', 0, 0, '0101005', '', 4, '', '11', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:15:07', '', '0000-00-00', '', '', '0000-00-00', 0),
(19, '', 101020100000, 'Furniture', '', '1', '', 4, 'N', '', '', '', 0, 0, '01010030001', '', 4, '', '15', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:19:56', '', '0000-00-00', '', '', '0000-00-00', 0),
(20, '', 101020200000, 'Fixture', '', '1', '', 4, 'N', '', '', '', 0, 0, '01010030002', '', 4, '', '15', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:21:15', '', '0000-00-00', '', '', '0000-00-00', 0),
(21, '', 101020101000, 'Chair', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100300010001', '', 4, '', '19', '', 131500, 0, 0, '', 'C', 0, '', '2019-12-12 11:24:09', '', '0000-00-00', '', '', '0000-00-00', 0),
(22, '', 101020102000, 'Table (Computer)', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100300010002', '', 4, '', '19', '', 240072, 0, 0, '', 'C', 0, '', '2019-12-12 11:25:39', '', '0000-00-00', '', '', '0000-00-00', 0),
(23, '', 101020103000, 'Table (Executive)', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100300010003', '', 4, '', '19', '', 6500, 0, 0, '', 'C', 0, '', '2019-12-12 11:26:52', '', '0000-00-00', '', '', '0000-00-00', 0),
(24, '', 101020104000, 'File Cabinet', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100300010004', '', 4, '', '19', '', 6000, 0, 0, '', 'C', 0, '', '2019-12-12 11:27:47', '', '0000-00-00', '', '', '0000-00-00', 0),
(25, '', 101020105000, 'Almirah', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100300010005', '', 4, '', '19', '', 66000, 0, 0, '', 'C', 0, '', '2019-12-12 11:28:51', '', '0000-00-00', '', '', '0000-00-00', 0),
(26, '', 101020106000, 'Raw Materials and Hardware', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100300010006', '', 4, '', '19', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:29:45', '', '0000-00-00', '', '', '0000-00-00', 0),
(27, '', 101020201000, 'Decoration', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100300020001', '', 4, '', '20', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:31:03', '', '0000-00-00', '', '', '0000-00-00', 0),
(28, '', 101030100000, 'Computer Hardware', '', '1', '', 4, 'N', '', '', '', 0, 0, '01010040001', '', 4, '', '16', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:32:38', '', '0000-00-00', '', '', '0000-00-00', 0),
(29, '', 101030200000, 'Computer Software', '', '1', '', 4, 'N', '', '', '', 0, 0, '01010040002', '', 4, '', '16', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:33:49', '', '0000-00-00', '', '', '0000-00-00', 0),
(30, '', 101030101000, 'Desktop Computer', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100400010001', '', 4, '', '28', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:35:14', '', '0000-00-00', '', '', '0000-00-00', 0),
(31, '', 101030102000, 'Laptop Computer', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100400010002', '', 4, '', '28', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:36:06', '', '0000-00-00', '', '', '0000-00-00', 0),
(32, '', 101030103000, 'Printer', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100400010003', '', 4, '', '28', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:36:53', '', '0000-00-00', '', '', '0000-00-00', 0),
(33, '', 101030104000, 'Scanner', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100400010004', '', 4, '', '28', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:37:35', '', '0000-00-00', '', '', '0000-00-00', 0),
(34, '', 101030105000, 'UPS', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100400010005', '', 4, '', '28', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:38:48', '', '0000-00-00', '', '', '0000-00-00', 0),
(35, '', 101030106000, 'Router', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100400010006', '', 4, '', '28', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:39:37', '', '0000-00-00', '', '', '0000-00-00', 0),
(36, '', 101030201000, 'AccMax', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100400020001', '', 4, '', '29', '', -50000, 0, 0, '', 'C', 0, '', '2019-12-12 11:40:59', '', '0000-00-00', '', '', '0000-00-00', 0),
(37, '', 101040100000, 'Electric Equipment', '', '1', '', 4, 'N', '', '', '', 0, 0, '01010050001', '', 4, '', '17', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:43:36', '', '0000-00-00', '', '', '0000-00-00', 0),
(38, '', 101040200000, 'Electronics Equipment', '', '1', '', 4, 'Y', '', '', '', 0, 0, '01010050002', '', 4, '', '17', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:47:01', '', '0000-00-00', '', '', '0000-00-00', 0),
(39, '', 101040101000, '	Fan', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100500010001', '', 4, '', '37', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:48:09', '', '0000-00-00', '', '', '0000-00-00', 0),
(40, '', 101040201000, 'Air Condition', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100500020001', '', 4, '', '38', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:49:50', '', '0000-00-00', '', '', '0000-00-00', 0),
(41, '', 101040202000, 'C . C Camera', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100500020002', '', 4, '', '38', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:50:45', '', '0000-00-00', '', '', '0000-00-00', 0),
(42, '', 101040203000, 'Water Pure it', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100500020003', '', 4, '', '38', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 11:51:44', '', '0000-00-00', '', '', '0000-00-00', 0),
(43, '', 101050100000, 'Website Development', '', '1', '', 4, 'N', '', '', '', 0, 0, '01010060001', '', 4, '', '18', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:21:54', '', '0000-00-00', '', '', '0000-00-00', 0),
(44, '', 101050101000, 'HABRO - Website Development', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100600010001', '', 4, '', '43', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:23:24', '', '0000-00-00', '', '', '0000-00-00', 0),
(45, '', 101050102000, 'HABRO - Domain', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100600010002', '', 4, '', '43', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:24:34', '', '0000-00-00', '', '', '0000-00-00', 0),
(46, '', 101050103000, 'HABRO - Hosting', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100600010003', '', 4, '', '43', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:25:54', '', '0000-00-00', '', '', '0000-00-00', 0),
(47, '', 101050104000, 'HABRO - Email Fee', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010100600010004', '', 4, '', '43', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:26:47', '', '0000-00-00', '', '', '0000-00-00', 0),
(48, '', 102010000000, 'ADVANCES DEPOSITS & PREPAYMENTS', '', '1', '', 3, 'N', '', '', '', 0, 0, '0102001', '', 4, '', '14', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:38:35', '', '0000-00-00', '', '', '0000-00-00', 0),
(49, '', 102020000000, 'CASH & CASH EQUIVALENT', '', '1', '', 3, 'N', '', '', '', 0, 0, '0102002', '', 4, '', '14', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:39:41', '', '0000-00-00', '', '', '0000-00-00', 0),
(50, '', 102030000000, 'TRADE RECEIVABLE', '', '1', '', 3, 'Y', '', '', '', 0, 0, '0102003', '', 7, '', '14', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:40:26', 'superadmin', '2020-02-18', '', '', '0000-00-00', 0),
(51, '', 102040000000, 'OTHER RECEIVABLE', '', '1', '', 3, 'N', '', '', '', 0, 0, '0102005', '', 4, '', '14', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:41:35', '', '0000-00-00', '', '', '0000-00-00', 0),
(52, '', 102050000000, 'INVESTMENT', '', '1', '', 3, 'N', '', '', '', 0, 0, '0102004', '', 4, '', '14', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:42:42', '', '0000-00-00', '', '', '0000-00-00', 0),
(53, '', 102060000000, 'STOCK & STATIONERY', '', '1', '', 3, 'N', '', '', '', 0, 0, '0102006', '', 4, '', '14', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:43:37', '', '0000-00-00', '', '', '0000-00-00', 0),
(54, '', 102010100000, 'Advances', '', '1', '', 4, 'N', '', '', '', 0, 0, '01020010001', '', 4, '', '48', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:48:41', '', '0000-00-00', '', '', '0000-00-00', 0),
(55, '', 102010101000, 'Advance Against Salary', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200100010001', '', 4, '', '54', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:50:17', '', '0000-00-00', '', '', '0000-00-00', 0),
(56, '', 102010200000, 'Security Deposits', '', '1', '', 4, 'N', '', '', '', 0, 0, '01020010002', '', 4, '', '48', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:51:29', '', '0000-00-00', '', '', '0000-00-00', 0),
(57, '', 102010300000, 'Deposit Against Electricity Bill', '', '1', '', 4, 'N', '', '', '', 0, 0, '01020010003', '', 4, '', '48', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:52:54', '', '0000-00-00', '', '', '0000-00-00', 0),
(58, '', 102010102000, 'Advance Against Supplier', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200100010002', '', 4, '', '54', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:54:02', '', '0000-00-00', '', '', '0000-00-00', 0),
(59, '', 102010103000, 'Advance Against Rent', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200100010003', '', 4, '', '54', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:54:52', '', '0000-00-00', '', '', '0000-00-00', 0),
(60, '', 102010104000, 'Advance Against Purchase', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200100010004', '', 4, '', '54', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:55:40', '', '0000-00-00', '', '', '0000-00-00', 0),
(61, '', 102020100000, 'CASH IN HAND', '', '1', '', 4, '', '', '', '', 0, 0, '01020020001', '', 1, '', '49', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:57:44', '1', '2020-02-16', '', '', '0000-00-00', 0),
(62, '', 102020200000, 'CASH AT BANK', '', '1', '', 4, '', '', '', '', 0, 0, '01020020002', '', 2, '', '49', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:58:47', 'admin', '2020-02-22', '', '', '0000-00-00', 0),
(63, '', 102020300000, 'Cash Equivalent', '', '1', '', 4, 'N', '', '', '', 0, 0, '01020020003', '', 4, '', '49', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 12:59:36', '', '0000-00-00', '', '', '0000-00-00', 0),
(64, '', 102020101000, 'Cash in hand', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200200010001', '', 1, '', '61', '', -1113084, 0, 0, '', 'C', 0, '', '2019-12-12 13:01:04', '', '2019-12-15', '', '', '0000-00-00', 0),
(65, '', 102020201000, 'Cash at bank', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200200020001', '', 4, '', '62', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:01:52', '', '0000-00-00', '', '', '0000-00-00', 0),
(66, '', 102030100000, 'Software Sale', '', '1', '', 4, 'Y', '', '', '', 0, 0, '01020030001', '', 4, '', '50', '', 5800, 0, 0, '', 'C', 0, '', '2019-12-12 13:03:19', '', '0000-00-00', '', '', '0000-00-00', 0),
(67, '', 102030200000, 'Software Maintenance', '', '1', '', 4, 'Y', '', '', '', 0, 0, '01020030002', '', 4, '', '50', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:04:14', '', '0000-00-00', '', '', '0000-00-00', 0),
(68, '', 102040100000, 'RECEIVABLE FROM DEALER', '', '1', '', 4, 'Y', '', '', '', 0, 0, '01020050001', '', 4, '', '51', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:06:34', '', '0000-00-00', '', '', '0000-00-00', 0),
(69, '', 102040200000, 'COMMISSION RECEIVABLE', '', '1', '', 4, 'Y', '', '', '', 0, 0, '01020050002', '', 4, '', '51', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:08:28', '', '0000-00-00', '', '', '0000-00-00', 0),
(70, '', 102040300000, 'PROJECT- KAZI ABDUL HAMID HIGH SCHOOL', '', '1', '', 4, 'N', '', '', '', 0, 0, '01020050003', '', 4, '', '51', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:10:12', '', '0000-00-00', '', '', '0000-00-00', 0),
(71, '', 102040400000, 'PROJECT- DARUL ULOOM DHAKA', '', '1', '', 4, 'N', '', '', '', 0, 0, '01020050004', '', 4, '', '51', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:10:57', '', '0000-00-00', '', '', '0000-00-00', 0),
(72, '', 102040500000, 'The Move International Limited', '', '1', '', 4, 'N', '', '', '', 0, 0, '01020050005', '', 4, '', '51', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:11:54', '', '0000-00-00', '', '', '0000-00-00', 0),
(73, '', 102040301000, 'A/R- Data Entry- Kazi Abdul Hamid High School', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200500030001', '', 4, '', '70', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:13:09', '', '0000-00-00', '', '', '0000-00-00', 0),
(74, '', 102040302000, 'A/R- Monthly Bill- Kazi Abdul Hamid High School', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200500030002', '', 4, '', '70', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:14:02', '', '0000-00-00', '', '', '0000-00-00', 0),
(75, '', 102040303000, 'A/R- SMS Cost- Kazi Abdul Hamid High School', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200500030003', '', 4, '', '70', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:15:06', '', '0000-00-00', '', '', '0000-00-00', 0),
(76, '', 102040401000, 'A/R- Data Entry- Darul Uloom Dhaka', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200050004000', '', 4, '', '71', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:16:25', '', '0000-00-00', '', '', '0000-00-00', 0),
(77, '', 102040402000, 'A/R- Monthly Bill- Darul Uloom Dhaka', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200500040002', '', 4, '', '71', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:17:29', '', '0000-00-00', '', '', '0000-00-00', 0),
(78, '', 102040403000, 'A/R- SMS Cost- Darul Uloom Dhaka', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200500040003', '', 4, '', '71', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:18:57', '', '0000-00-00', '', '', '0000-00-00', 0),
(79, '', 102040501000, 'A/R- Web Development- The Move International Limited', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200500050001', '', 4, '', '72', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:20:18', '', '0000-00-00', '', '', '0000-00-00', 0),
(80, '', 102040502000, 'A/R- Domain- The Move International Limited', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200500050002', '', 4, '', '72', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:21:14', '', '0000-00-00', '', '', '0000-00-00', 0),
(81, '', 102040503000, 'A/R- Hosting- The Move International Limited', '', '1', '', 5, 'Y', '', '', '', 0, 0, '010200500050003', '', 4, '', '72', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:22:10', '', '0000-00-00', '', '', '0000-00-00', 0),
(82, '', 102060100000, 'STOCK', '', '1', '', 4, 'Y', '', '', '', 0, 0, '01020060001', '', 4, '', '53', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:23:39', '', '0000-00-00', '', '', '0000-00-00', 0),
(83, '', 102060200000, 'STATIONERY', '', '1', '', 4, 'Y', '', '', '', 0, 0, '01020060002', '', 4, '', '53', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:24:22', '', '0000-00-00', '', '', '0000-00-00', 0),
(84, '', 300000000000, 'INCOME', '', '3', '', 1, 'N', '', '', '', 0, 0, '03', '', 0, '', '0', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:28:01', '', '0000-00-00', '', '', '0000-00-00', 0),
(85, '', 400000000000, 'EXPENSE ', '', '4', '', 1, 'N', '', '', '', 0, 0, '04', '', 0, '', '0', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:28:48', '', '0000-00-00', '', '', '0000-00-00', 0),
(87, '', 301000000000, 'REVENUE', '', '3', '', 2, 'N', '', '', '', 0, 0, '0301', '', 4, '', '84', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:30:19', '', '0000-00-00', '', '', '0000-00-00', 0),
(88, '', 301010000000, 'SALE', '', '3', '', 3, 'N', '', '', '', 0, 0, '0301001', '', 4, '', '87', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:31:05', '', '0000-00-00', '', '', '0000-00-00', 0),
(89, '', 301020000000, 'OTHER INCOME', '', '3', '', 3, 'N', '', '', '', 0, 0, '0301002', '', 4, '', '87', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:32:09', '', '0000-00-00', '', '', '0000-00-00', 0),
(90, '', 301030000000, 'SERVICE & MAINTENANCE', '', '3', '', 3, 'N', '', '', '', 0, 0, '0301003', '', 4, '', '87', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:32:54', '', '0000-00-00', '', '', '0000-00-00', 0),
(91, '', 301010100000, 'SALE OF PRODUCTS', '', '3', '', 4, 'N', '', '', '', 0, 0, '03010010001', '', 4, '', '88', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:34:24', '', '0000-00-00', '', '', '0000-00-00', 0),
(92, '', 301010200000, 'SOFTWARE INSTALLATION FEE', '', '3', '', 4, 'N', '', '', '', 0, 0, '03010010002', '', 4, '', '88', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:35:46', '', '0000-00-00', '', '', '0000-00-00', 0),
(93, '', 301010300000, 'CONSULTING FEE', '', '3', '', 4, 'N', '', '', '', 0, 0, '03010010003', '', 4, '', '88', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:36:25', '', '0000-00-00', '', '', '0000-00-00', 0),
(94, '', 301010400000, 'WEB DEVELOPMENT', '', '3', '', 4, 'N', '', '', '', 0, 0, '03010010004', '', 4, '', '88', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:37:05', '', '0000-00-00', '', '', '0000-00-00', 0),
(95, '', 301010500000, 'SOFTWARE LICENSE FEE', '', '3', '', 4, 'N', '', '', '', 0, 0, '03010010005', '', 4, '', '88', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:37:52', '', '0000-00-00', '', '', '0000-00-00', 0),
(96, '', 301010600000, 'DATA ENTRY CHARGE', '', '3', '', 4, 'N', '', '', '', 0, 0, '03010010006', '', 4, '', '88', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:38:38', '', '0000-00-00', '', '', '0000-00-00', 0),
(97, '', 301010401000, 'The Move International Limited', '', '3', '', 5, 'Y', '', '', '', 0, 0, '030100100040001', '', 4, '', '94', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:39:41', '', '0000-00-00', '', '', '0000-00-00', 0),
(98, '', 301020100000, 'COMMISSION', '', '3', '', 4, 'N', '', '', '', 0, 0, '03010020001', '', 4, '', '89', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:41:00', '', '0000-00-00', '', '', '0000-00-00', 0),
(99, '', 301030100000, 'EDUMAX SOFTWARE', '', '3', '', 4, 'N', '', '', '', 0, 0, '03010030001', '', 4, '', '90', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:42:49', '', '0000-00-00', '', '', '0000-00-00', 0),
(100, '', 301030200000, 'DEVELOPMENT', '', '3', '', 4, 'N', '', '', '', 0, 0, '03010030002', '', 4, '', '90', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:43:56', '', '0000-00-00', '', '', '0000-00-00', 0),
(101, '', 301030201000, 'Website', '', '3', '', 5, 'Y', '', '', '', 0, 0, '030100300020001', '', 4, '', '100', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:44:50', '', '0000-00-00', '', '', '0000-00-00', 0),
(102, '', 401000000000, 'DIRECT EXPENSES', '', '4', '', 2, 'N', '', '', '', 0, 0, '0401', '', 4, '', '85', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:46:29', '', '0000-00-00', '', '', '0000-00-00', 0),
(103, '', 402000000000, 'FINANCE EXPENSES', '', '4', '', 2, 'N', '', '', '', 0, 0, '0402', '', 4, '', '85', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:47:14', '', '0000-00-00', '', '', '0000-00-00', 0),
(104, '', 403000000000, 'ADMINISTRATIVE EXPENSES', '', '4', '', 2, 'N', '', '', '', 0, 0, '0403', '', 4, '', '85', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:48:18', '', '0000-00-00', '', '', '0000-00-00', 0),
(105, '', 404000000000, 'SELLING & DISTRIBUTION EXPENSE', '', '4', '', 2, 'N', '', '', '', 0, 0, '0404', '', 4, '', '85', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:48:48', '', '0000-00-00', '', '', '0000-00-00', 0),
(106, '', 404010000000, 'SELLING EXPENSES', '', '4', '', 3, 'N', '', '', '', 0, 0, '0404001', '', 4, '', '105', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:50:00', '', '0000-00-00', '', '', '0000-00-00', 0),
(107, '', 404020000000, 'DISTRIBUTION EXPENSE', '', '4', '', 3, 'N', '', '', '', 0, 0, '0404002', '', 4, '', '105', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:50:38', '', '0000-00-00', '', '', '0000-00-00', 0),
(108, '', 404010100000, 'COMMISSION EXPENSES', '', '4', '', 4, 'Y', '', '', '', 0, 0, '04040010001', '', 4, '', '106', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:51:38', '', '0000-00-00', '', '', '0000-00-00', 0),
(109, '', 404020100000, 'Truck fare', '', '4', '', 4, 'Y', '', '', '', 0, 0, '04040020001', '', 4, '', '107', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:52:16', '', '0000-00-00', '', '', '0000-00-00', 0),
(110, '', 404020200000, 'Loading & unloading', '', '4', '', 4, 'Y', '', '', '', 0, 0, '04040020002', '', 4, '', '107', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:52:50', '', '0000-00-00', '', '', '0000-00-00', 0),
(111, '', 403010000000, 'SALARY & ALLOWANCE', '', '4', '', 3, 'N', '', '', '', 0, 0, '0403001', '', 4, '', '104', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:55:15', '', '0000-00-00', '', '', '0000-00-00', 0),
(112, '', 403020000000, 'OTHER ADMINISTRATIVE EXPENSES', '', '4', '', 3, 'N', '', '', '', 0, 0, '0403002', '', 4, '', '104', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:56:25', '', '0000-00-00', '', '', '0000-00-00', 0),
(113, '', 403030000000, 'DEPRECIATION EXPENSES', '', '4', '', 3, 'N', '', '', '', 0, 0, '0403003', '', 4, '', '104', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:57:31', '', '0000-00-00', '', '', '0000-00-00', 0),
(114, '', 403010100000, 'Salary & Benefits', '', '4', '', 4, 'N', '', '', '', 0, 0, '04030010001', '', 4, '', '111', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 13:59:07', '', '0000-00-00', '', '', '0000-00-00', 0),
(115, '', 403010101000, 'Salary Habro', '', '4', '', 5, 'N', '', '', '', 0, 0, '040300100010001', '', 4, '', '114', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:00:10', '', '0000-00-00', '', '', '0000-00-00', 0),
(116, '', 403010102000, 'Bonus Habro', '', '4', '', 5, 'N', '', '', '', 0, 0, '040300100010002', '', 4, '', '114', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:01:04', '', '0000-00-00', '', '', '0000-00-00', 0),
(117, '', 403010103000, 'Incentive', '', '4', '', 5, 'N', '', '', '', 0, 0, '040300100010003', '', 4, '', '114', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:01:54', '', '0000-00-00', '', '', '0000-00-00', 0),
(118, '', 403010104000, 'Apprenticeship Allowance', '', '4', '', 5, 'N', '', '', '', 0, 0, '040300100010004', '', 4, '', '114', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:02:38', '', '0000-00-00', '', '', '0000-00-00', 0),
(119, '', 402010000000, 'INTEREST EXPENSE', '', '4', '', 3, 'N', '', '', '', 0, 0, '0402001', '', 4, '', '103', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:05:43', '', '0000-00-00', '', '', '0000-00-00', 0),
(120, '', 402010100000, 'INTEREST OF BANK LOAN', '', '4', '', 4, 'Y', '', '', '', 0, 0, '04020010001', '', 4, '', '119', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:07:06', '', '0000-00-00', '', '', '0000-00-00', 0),
(121, '', 401010000000, 'PURCHASE', '', '4', '', 3, 'N', '', '', '', 0, 0, '0401001', '', 4, '', '102', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:09:19', '', '0000-00-00', '', '', '0000-00-00', 0),
(122, '', 401020000000, 'SALARY & ALLOWANCE', '', '4', '', 3, 'N', '', '', '', 0, 0, '0401002', '', 4, '', '102', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:10:11', '', '0000-00-00', '', '', '0000-00-00', 0),
(123, '', 401030000000, 'OTHER DIRECT COST', '', '4', '', 3, 'N', '', '', '', 0, 0, '0401003', '', 4, '', '102', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:10:59', '', '0000-00-00', '', '', '0000-00-00', 0),
(124, '', 401010100000, 'GOODS PURCHASE', '', '4', '', 4, 'Y', '', '', '', 0, 0, '04010010001', '', 4, '', '121', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:12:19', '', '2020-01-27', '', '', '0000-00-00', 0),
(125, '', 401010200000, 'PACKING MATERIAL PURCHASE', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010010002', '', 4, '', '121', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:12:58', '', '0000-00-00', '', '', '0000-00-00', 0),
(126, '', 401010300000, 'DOMAIN & HOSTING PURCHASE', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010010003', '', 4, '', '121', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:13:39', '', '0000-00-00', '', '', '0000-00-00', 0),
(127, '', 401010400000, 'SMS PURCHASE', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010010004', '', 4, '', '121', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:15:00', '', '0000-00-00', '', '', '0000-00-00', 0),
(128, '', 401010500000, 'CC Camera', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010010005', '', 4, '', '121', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:16:06', '', '0000-00-00', '', '', '0000-00-00', 0),
(129, '', 401010501000, 'C.C Camrea', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040100100050001', '', 4, '', '128', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:17:22', '', '0000-00-00', '', '', '0000-00-00', 0),
(130, '', 401010401000, 'SMS', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040100100040001', '', 4, '', '127', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:19:01', '', '0000-00-00', '', '', '0000-00-00', 0),
(131, '', 401010301000, 'Domain Purchase', '', '4', '', 5, 'N', '', '', '', 0, 0, '040100100030001', '', 4, '', '126', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:19:52', '', '0000-00-00', '', '', '0000-00-00', 0),
(132, '', 401010302000, 'Hosting Purchase', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040100100030002', '', 4, '', '126', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:21:09', '', '0000-00-00', '', '', '0000-00-00', 0),
(134, '', 401020100000, 'BASIC', '', '4', '', 4, '', '', '', '', 0, 0, '04010020001', '', 4, '', '122', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:50:46', '', '0000-00-00', '', '', '0000-00-00', 0),
(135, '', 401020200000, 'HOUSE RENT', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010020002', '', 4, '', '122', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:51:59', '', '0000-00-00', '', '', '0000-00-00', 0),
(136, '', 401020300000, 'MEDICAL ALLOWANCES', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010020003', '', 4, '', '122', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:53:51', '', '0000-00-00', '', '', '0000-00-00', 0),
(137, '', 401020400000, 'TRANSPORT', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010020004', '', 4, '', '122', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:54:31', '', '0000-00-00', '', '', '0000-00-00', 0),
(138, '', 401020401000, 'EMPLOYEE TRANSPORT', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040100200040001', '', 4, '', '137', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:55:55', '', '0000-00-00', '', '', '0000-00-00', 0),
(139, '', 401020301000, 'EMPLOYEE MEDICAL ALLOWANCES', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040100200030001', '', 4, '', '136', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:57:15', '', '0000-00-00', '', '', '0000-00-00', 0),
(140, '', 401020101000, 'EMPLOYEE BASIC', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040100200010001', '', 4, '', '134', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:58:29', '', '0000-00-00', '', '', '0000-00-00', 0),
(141, '', 401020201000, 'EMPLOYEE HOUSE RENT', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040100200020001', '', 4, '', '135', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 14:59:28', '', '0000-00-00', '', '', '0000-00-00', 0),
(142, '', 401030100000, 'CARRIAGE INWARD', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010030001', '', 4, '', '123', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:01:14', '', '0000-00-00', '', '', '0000-00-00', 0),
(143, '', 401030200000, 'WAGES', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010030002', '', 4, '', '123', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:01:57', '', '0000-00-00', '', '', '0000-00-00', 0),
(144, '', 401030300000, 'LOADING UNLOADING', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010030003', '', 4, '', '123', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:02:38', '', '0000-00-00', '', '', '0000-00-00', 0),
(145, '', 401030400000, 'REPAIR & INSTALLATION', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010030004', '', 4, '', '123', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:03:57', '', '0000-00-00', '', '', '0000-00-00', 0),
(146, '', 401030500000, 'PROJECT COST', '', '4', '', 4, 'N', '', '', '', 0, 0, '04010030005', '', 4, '', '123', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:04:35', '', '0000-00-00', '', '', '0000-00-00', 0),
(147, '', 401030501000, 'Data Entry Expense', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040100300050001', '', 4, '', '146', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:05:37', '', '0000-00-00', '', '', '0000-00-00', 0),
(148, '', 401030502000, 'Software Implementation Expense', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040100300050002', '', 4, '', '146', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:07:13', '', '0000-00-00', '', '', '0000-00-00', 0),
(149, '', 401030503000, 'SMS COST', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040100300050003', '', 4, '', '146', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:07:48', '', '0000-00-00', '', '', '0000-00-00', 0),
(151, '', 403020200000, 'Utility Bill', '', '4', '', 4, 'N', '', '', '', 0, 0, '04030020001', '', 4, '', '112', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:11:32', '', '0000-00-00', '', '', '0000-00-00', 0),
(152, '', 403020300000, 'REPAIR & MAINTENANCE', '', '4', '', 4, 'N', '', '', '', 0, 0, '04030020002', '', 4, '', '112', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:13:31', '', '0000-00-00', '', '', '0000-00-00', 0),
(153, '', 403020201000, 'Internet Bill', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200010001', '', 4, '', '151', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:14:28', '', '0000-00-00', '', '', '0000-00-00', 0),
(154, '', 403020202000, 'Telephone Bill', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200010002', '', 4, '', '151', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:15:29', '', '0000-00-00', '', '', '0000-00-00', 0),
(155, '', 403020301000, 'Repair', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200020001', '', 4, '', '152', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:16:22', '', '0000-00-00', '', '', '0000-00-00', 0),
(156, '', 403020400000, 'Others Expenses', '', '4', '', 4, 'N', '', '', '', 0, 0, '04030020003', '', 4, '', '112', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:17:43', '', '0000-00-00', '', '', '0000-00-00', 0),
(157, '', 403020401000, 'Office Rent', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030001', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:19:12', '', '0000-00-00', '', '', '0000-00-00', 0),
(158, '', 403020402000, 'Conveyance', '', '4', '', 5, 'N', '', '', '', 0, 0, '040300200030002', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:20:48', '', '0000-00-00', '', '', '0000-00-00', 0),
(159, '', 403020402010, 'Billal Hossain (Conv.)', '', '4', '', 6, 'Y', '', '', '', 0, 0, '040300200030002', '', 4, '', '158', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:22:50', '', '0000-00-00', '', '', '0000-00-00', 0),
(160, '', 403020402020, 'Md. Forhad Hossain (C0nv.)', '', '4', '', 6, 'Y', '', '', '', 0, 0, '040300200030002', '', 4, '', '158', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:23:40', '', '0000-00-00', '', '', '0000-00-00', 0),
(161, '', 403020402030, 'Md. Alamin (Conv.)', '', '4', '', 6, 'Y', '', '', '', 0, 0, '040300200030002', '', 4, '', '158', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:24:16', '', '0000-00-00', '', '', '0000-00-00', 0),
(162, '', 403020403000, 'Travelling ', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030003', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:25:36', '', '0000-00-00', '', '', '0000-00-00', 0),
(163, '', 403020404000, '', '', '4', '', 5, '', '', '', '', 0, 0, '', '', 1, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:25:56', '', '0000-00-00', '', '', '0000-00-00', 0),
(164, '', 403020405000, 'Printing & Stationary', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030004', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:26:44', '', '0000-00-00', '', '', '0000-00-00', 0),
(165, '', 403020406000, 'Entertainment ', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030005', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:27:26', '', '0000-00-00', '', '', '0000-00-00', 0),
(166, '', 403020407000, 'VAT', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030006', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:27:57', '', '0000-00-00', '', '', '0000-00-00', 0),
(167, '', 403020408000, 'Computer Accessories ', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030007', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:28:48', '', '0000-00-00', '', '', '0000-00-00', 0),
(168, '', 403020409000, 'TAX', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030008', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:29:50', '', '0000-00-00', '', '', '0000-00-00', 0),
(169, '', 403020410000, 'Trading & Development Cost', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030009', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:30:42', '', '0000-00-00', '', '', '0000-00-00', 0),
(170, '', 403020411000, 'Business Promotion', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030010', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:31:37', '', '0000-00-00', '', '', '0000-00-00', 0),
(171, '', 403020412000, 'Electric Installation', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030011', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:32:24', '', '0000-00-00', '', '', '0000-00-00', 0),
(172, '', 403020413000, 'Sanitary Item', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030012', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:33:24', '', '0000-00-00', '', '', '0000-00-00', 0),
(173, '', 403020414000, 'Civil', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030013', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:34:10', '', '0000-00-00', '', '', '0000-00-00', 0),
(174, '', 403020415000, 'Thai Aluminium ', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030014', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:34:50', '', '0000-00-00', '', '', '0000-00-00', 0),
(175, '', 403020416000, 'Hardware ', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030015', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:35:32', '', '0000-00-00', '', '', '0000-00-00', 0),
(176, '', 403020417000, 'Abdul Kadir', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030016', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:36:10', '', '0000-00-00', '', '', '0000-00-00', 0),
(177, '', 403020418000, 'Advance Lighting House', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200030017', '', 4, '', '156', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:36:57', '', '0000-00-00', '', '', '0000-00-00', 0),
(178, '', 403020500000, 'FEES, FROM, RENEWALS AND AUDIT', '', '4', '', 4, 'N', '', '', '', 0, 0, '04030020004', '', 4, '', '112', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:38:45', '', '0000-00-00', '', '', '0000-00-00', 0),
(179, '', 403020501000, 'FEES, FROM, & RENEWALS', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200040001', '', 4, '', '178', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:40:32', '', '0000-00-00', '', '', '0000-00-00', 0),
(180, '', 403020502000, 'Audit Fee', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200040002', '', 4, '', '178', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:41:22', '', '0000-00-00', '', '', '0000-00-00', 0),
(181, '', 403020503000, 'Legal Expense ', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300200040003', '', 4, '', '178', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:42:07', '', '2020-01-22', '', '', '0000-00-00', 0),
(182, '', 403030100000, 'DEPRECIATION ON OFFICE EQUIPMENT', '', '4', '', 4, 'N', '', '', '', 0, 0, '04030030001', '', 4, '', '113', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:44:05', '', '0000-00-00', '', '', '0000-00-00', 0),
(183, '', 403030101000, 'Air Conditioner ', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300010001', '', 4, '', '182', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:45:16', '', '0000-00-00', '', '', '0000-00-00', 0),
(184, '', 403030102000, 'Stand Fan ', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300010002', '', 4, '', '182', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:46:03', '', '0000-00-00', '', '', '0000-00-00', 0),
(185, '', 403030200000, 'DEPRECIATION ON FURNITURE', '', '4', '', 4, 'N', '', '', '', 0, 0, '04030030002', '', 4, '', '113', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:48:17', '', '0000-00-00', '', '', '0000-00-00', 0),
(186, '', 403030300000, 'DEPRECIATION ON FIXTURE ', '', '4', '', 4, 'N', '', '', '', 0, 0, '04030030003', '', 4, '', '113', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:49:39', '', '0000-00-00', '', '', '0000-00-00', 0),
(187, '', 403030400000, 'DEPRECIATION ON COMPUTER & COMPUTER ITEMS ', '', '4', '', 4, 'N', '', '', '', 0, 0, '04030030004', '', 4, '', '113', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:50:43', '', '0000-00-00', '', '', '0000-00-00', 0),
(188, '', 403030401000, 'Depreciation on Laptop', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300040001', '', 4, '', '187', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:52:27', '', '0000-00-00', '', '', '0000-00-00', 0),
(189, '', 403030402000, 'Depreciation on Desktop', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300040002', '', 4, '', '187', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:53:18', '', '0000-00-00', '', '', '0000-00-00', 0),
(190, '', 403030403000, 'Depreciation on Printer', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300040003', '', 4, '', '187', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:54:08', '', '0000-00-00', '', '', '0000-00-00', 0),
(191, '', 403030404000, 'Depreciation on Scanner', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300040004', '', 4, '', '187', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:54:56', '', '0000-00-00', '', '', '0000-00-00', 0),
(192, '', 403030405000, 'Depreciation on UPS', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300040005', '', 4, '', '187', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:55:37', '', '0000-00-00', '', '', '0000-00-00', 0),
(193, '', 403030301000, 'Decoration', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300030001', '', 4, '', '186', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:56:51', '', '0000-00-00', '', '', '0000-00-00', 0),
(194, '', 403030201000, 'Depreciation on Table', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300020001', '', 4, '', '185', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:58:04', '', '0000-00-00', '', '', '0000-00-00', 0),
(195, '', 403030202000, 'Depreciation on Chair', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300020002', '', 4, '', '185', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 15:58:55', '', '0000-00-00', '', '', '0000-00-00', 0),
(196, '', 403030203000, 'Depreciation on File Cabinet', '', '4', '', 5, 'Y', '', '', '', 0, 0, '040300300020003', '', 4, '', '185', '', 0, 0, 0, '', 'C', 0, '', '2019-12-12 16:00:01', '', '0000-00-00', '', '', '0000-00-00', 0),
(197, '', 501000000000, 'FUND', '', '5', '', 2, 'N', '', '', '', 0, 0, '0501', '', 4, '', '86', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 10:59:45', '', '0000-00-00', '', '', '0000-00-00', 0),
(198, '', 501010000000, 'Fund Collection', '', '5', '', 3, 'N', '', '', '', 0, 0, '0501001', '', 4, '', '197', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:01:04', '', '0000-00-00', '', '', '0000-00-00', 0),
(199, '', 501020000000, 'PAID UP CAPITAL', '', '5', '', 3, 'N', '', '', '', 0, 0, '0501002', '', 4, '', '197', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:01:44', '', '0000-00-00', '', '', '0000-00-00', 0),
(200, '', 501030000000, 'RETAINED EARNING', '', '5', '', 3, 'N', '', '', '', 0, 0, '0501003', '', 4, '', '197', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:02:46', '', '0000-00-00', '', '', '0000-00-00', 0),
(201, '', 501010100000, 'Fund collection by cash', '', '5', '', 4, 'Y', '', '', '', 0, 0, '05010010001', '', 4, '', '198', '', 259572, 0, 0, '', 'C', 0, '', '2019-12-14 11:05:24', 'superadmin', '2020-02-24', '', '', '0000-00-00', 0),
(202, '', 501010200000, 'Fund collection by Cheque', '', '5', '', 4, 'Y', '', '', '', 0, 0, '05010010002', '', 4, '', '198', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:07:06', 'superadmin', '2020-02-24', '', '', '0000-00-00', 0),
(203, '', 501010101000, 'FC-KAZI MOHAMMAD RAHMATULLAH', '', '5', '', 5, 'Y', '', '', '', 0, 0, '050100100010001', '', 4, '', '201', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:08:13', 'superadmin', '2020-02-18', '', '', '0000-00-00', 0),
(204, '', 501020100000, 'MD. NASIMUL GANI', '', '5', '', 4, 'Y', '', '', '', 0, 0, '050010020001', '', 4, '', '199', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:10:13', '', '0000-00-00', '', '', '0000-00-00', 0),
(205, '', 501020200000, 'KAZI MOHAMMAD RAHMATULLAH', '', '5', '', 4, 'Y', '', '', '', 0, 0, '05010020002', '', 4, '', '199', '', 439640, 0, 0, '', 'C', 0, '', '2019-12-14 11:11:03', '', '0000-00-00', '', '', '0000-00-00', 0),
(206, '', 501020300000, 'MOHAMMAD JULHAS', '', '5', '', 4, 'Y', '', '', '', 0, 0, '05010020003', '', 4, '', '199', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:11:39', '', '0000-00-00', '', '', '0000-00-00', 0),
(207, '', 501020400000, 'MD. MUZIBUL HOQUE', '', '5', '', 4, 'Y', '', '', '', 0, 0, '05010020004', '', 4, '', '199', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:12:25', '', '0000-00-00', '', '', '0000-00-00', 0),
(208, '', 501020500000, 'KAZI MD. OBAIDULLAH', '', '5', '', 4, 'Y', '', '', '', 0, 0, '05010020005', '', 4, '', '199', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:13:08', '', '0000-00-00', '', '', '0000-00-00', 0),
(209, '', 501020600000, 'KAZI MOHAMMED BARKATULLAH       ', '', '5', '', 4, 'Y', '', '', '', 0, 0, '05010020006', '', 4, '', '199', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:15:04', '', '0000-00-00', '', '', '0000-00-00', 0),
(210, '', 501020700000, 'KAZI MOHAMMAD AHSAN ULLAH 		', '', '5', '', 4, 'Y', '', '', '', 0, 0, '05010020007', '', 4, '', '199', '', 38000, 0, 0, '', 'C', 0, '', '2019-12-14 11:15:46', '', '0000-00-00', '', '', '0000-00-00', 0),
(211, '', 501020800000, 'KAZI MOHAMMAD HAMIDULLAH        ', '', '5', '', 4, 'Y', '', '', '', 0, 0, '05010020008', '', 4, '', '199', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:16:58', '', '0000-00-00', '', '', '0000-00-00', 0),
(212, '', 501030100000, 'INCOME & EXPENDITURE ACCOUNT', '', '5', '', 4, 'N', '', '', '', 0, 0, '05010030001', '', 4, '', '200', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:18:52', '', '0000-00-00', '', '', '0000-00-00', 0),
(213, '', 501030101000, 'CURRENT YEAR PROFIT/LOSS', '', '5', '', 5, 'Y', '', '', '', 0, 0, '050100300010001', '', 4, '', '212', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:19:37', '', '0000-00-00', '', '', '0000-00-00', 0),
(214, '', 501030102000, 'LAST YEAR PROFIT/LOSS', '', '5', '', 5, 'Y', '', '', '', 0, 0, '050100300010002', '', 4, '', '212', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:20:36', '', '0000-00-00', '', '', '0000-00-00', 0),
(215, '', 201000000000, 'LONG TERM LIABILITY', '', '2', '', 2, 'N', '', '', '', 0, 0, '0201', '', 4, '', '10', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:22:02', '', '0000-00-00', '', '', '0000-00-00', 0),
(216, '', 202000000000, 'CURRENT LIABILITY', '', '2', '', 2, 'N', '', '', '', 0, 0, '0202', '', 4, '', '10', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:23:12', '', '0000-00-00', '', '', '0000-00-00', 0),
(217, '', 201010000000, 'LOAN', '', '2', '', 3, 'N', '', '', '', 0, 0, '0201001', '', 4, '', '215', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:25:00', '', '0000-00-00', '', '', '0000-00-00', 0),
(218, '', 201010100000, 'Bank Loan', '', '2', '', 4, 'N', '', '', '', 0, 0, '02010010001', '', 4, '', '217', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:26:46', '', '0000-00-00', '', '', '0000-00-00', 0),
(219, '', 201010200000, 'Loan from Others', '', '2', '', 4, 'N', '', '', '', 0, 0, '02010010002', '', 4, '', '217', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:27:33', '', '0000-00-00', '', '', '0000-00-00', 0),
(220, '', 202010000000, 'PAYABLE FOR EXPENSES', '', '2', '', 3, 'Y', '', '', '', 0, 0, '0202001', '', 6, '', '216', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:29:20', 'superadmin', '2020-02-18', '', '', '0000-00-00', 0),
(221, '', 202020000000, 'TRADE PAYABLE', '', '2', '', 3, 'N', '', '', '', 0, 0, '0202002', '', 4, '', '216', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:31:27', '', '0000-00-00', '', '', '0000-00-00', 0),
(222, '', 202030000000, 'ACCUMULATED DEPRECIATION', '', '2', '', 3, 'N', '', '', '', 0, 0, '0202003', '', 4, '', '216', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:32:58', '', '0000-00-00', '', '', '0000-00-00', 0),
(223, '', 202010100000, 'Salary Payable', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020010001', '', 4, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:34:46', '', '0000-00-00', '', '', '0000-00-00', 0),
(224, '', 202010101000, 'Administration Officer', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010001', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:35:38', '', '0000-00-00', '', '', '0000-00-00', 0),
(225, '', 202010102000, 'Md. Forhad Hossain', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010002', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:36:28', '', '0000-00-00', '', '', '0000-00-00', 0),
(226, '', 202010103000, 'Motaher Hossain', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010003', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:37:15', '', '0000-00-00', '', '', '0000-00-00', 0),
(227, '', 202010104000, 'Md. Alamin', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010004', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:38:03', '', '0000-00-00', '', '', '0000-00-00', 0),
(228, '', 202010105000, 'Md. Billal Hossain', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010005', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:38:52', '', '0000-00-00', '', '', '0000-00-00', 0),
(229, '', 202010106000, 'Riadh Arefin', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010006', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:39:35', '', '0000-00-00', '', '', '0000-00-00', 0),
(230, '', 202010107000, 'Md. Mahedi Hasan', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010007', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:40:24', '', '0000-00-00', '', '', '0000-00-00', 0),
(231, '', 202010108000, 'Md. Hasibuzzaman', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010008', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:41:14', '', '0000-00-00', '', '', '0000-00-00', 0),
(232, '', 202010109000, 'Bilkis Begum', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010009', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:42:50', '', '0000-00-00', '', '', '0000-00-00', 0),
(233, '', 202010110000, 'Md. Ali Abdullah', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010010', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:44:17', '', '0000-00-00', '', '', '0000-00-00', 0),
(234, '', 202010111000, 'Md. Mohaiminul Haque', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100010011', '', 4, '', '223', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:45:04', '', '0000-00-00', '', '', '0000-00-00', 0),
(236, '', 202010200000, 'Duty And Tax', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020010002', '', 4, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 11:54:42', '', '2020-01-27', '', '', '0000-00-00', 0),
(239, '', 202010500000, 'Office Rent Payable', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020010005', '', 4, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:00:28', '', '0000-00-00', '', '', '0000-00-00', 0),
(240, '', 202010600000, 'Utility bill Payable', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020010003', '', 4, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:08:41', '', '0000-00-00', '', '', '0000-00-00', 0),
(241, '', 202010700000, 'Others Bill Payable', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020010004', '', 4, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:09:25', '', '0000-00-00', '', '', '0000-00-00', 0),
(242, '', 202010800000, 'KAZI ABDUL HAMID HIGH SCHOOL', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020010006', '', 4, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:10:42', '', '0000-00-00', '', '', '0000-00-00', 0),
(243, '', 202010900000, 'Darul Uloom Dhaka', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020010007', '', 4, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:12:09', '', '0000-00-00', '', '', '0000-00-00', 0),
(244, '', 202011000000, 'Apprenticeship Allowance', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020010008', '', 4, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:13:04', '', '0000-00-00', '', '', '0000-00-00', 0),
(245, '', 202011100000, 'Office Conveyance', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020010009', '', 4, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:13:54', '', '0000-00-00', '', '', '0000-00-00', 0),
(246, '', 202011200000, 'Director Remuneration', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020010010', '', 4, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:14:51', '', '0000-00-00', '', '', '0000-00-00', 0),
(247, '', 202011201000, 'Bisnu Chanda Saha', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100100001', '', 4, '', '246', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:16:21', '', '0000-00-00', '', '', '0000-00-00', 0),
(248, '', 202010201000, 'VAT Payable', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100020001', '', 4, '', '236', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:19:08', '', '0000-00-00', '', '', '0000-00-00', 0);
INSERT INTO `gl_acc_code` (`id`, `office_code`, `acc_code`, `acc_head`, `curr_code`, `category_code`, `tran_nature`, `acc_level`, `postable_acc`, `address`, `vat_no`, `tin_no`, `taxable_flag`, `buyer_saler_flag`, `rep_glcode`, `is_ho_acc`, `acc_type`, `contra_acc_code`, `parent_acc_code`, `is_root`, `acc_bal_loc`, `acc_bal_fc`, `exch_rate`, `remarks`, `rec_status`, `active`, `ss_creator`, `ss_creator_on`, `ss_modifier`, `ss_modifier_on`, `ss_verify_flag`, `ss_verified_by`, `ss_verified_on`, `ss_org_no`) VALUES
(249, '', 202010202000, 'Tax Payable', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100020002', '', 4, '', '236', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:19:54', '', '0000-00-00', '', '', '0000-00-00', 0),
(250, '', 202010601000, 'Telephone bill payable', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100030001', '', 4, '', '240', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:21:11', '', '0000-00-00', '', '', '0000-00-00', 0),
(251, '', 202010602000, 'Internet bill payable', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100030002', '', 4, '', '240', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:21:58', '', '0000-00-00', '', '', '0000-00-00', 0),
(252, '', 202010603000, 'Electricity Bill Payable', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100030003', '', 4, '', '240', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:23:10', '', '0000-00-00', '', '', '0000-00-00', 0),
(253, '', 202010701000, 'Carnival Internet', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040001', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:24:35', '', '0000-00-00', '', '', '0000-00-00', 0),
(254, '', 202010702000, 'Eicra Soft Limited', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040002', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:25:27', '', '0000-00-00', '', '', '0000-00-00', 0),
(255, '', 202010703000, 'iTmex Technology', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040003', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:26:15', '', '0000-00-00', '', '', '0000-00-00', 0),
(256, '', 202010704000, 'Greenweb', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040004', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:27:01', '', '0000-00-00', '', '', '0000-00-00', 0),
(257, '', 202010705000, 'Venus-IT', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040005', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:27:56', '', '0000-00-00', '', '', '0000-00-00', 0),
(258, '', 202010706000, 'First Lead Limited', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040006', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:28:52', '', '0000-00-00', '', '', '0000-00-00', 0),
(259, '', 202010707000, 'Food Zone', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040007', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:29:57', '', '0000-00-00', '', '', '0000-00-00', 0),
(260, '', 202010708000, 'Ata Khan & Co.', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040008', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:30:50', '', '0000-00-00', '', '', '0000-00-00', 0),
(261, '', 202010709000, 'M/S Mahi Enterprise', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040009', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:31:38', '', '0000-00-00', '', '', '0000-00-00', 0),
(262, '', 202010710000, 'Al-Amin Agency', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040010', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:32:32', '', '0000-00-00', '', '', '0000-00-00', 0),
(263, '', 202010711000, 'Durbin Labs Limited', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100040011', '', 4, '', '241', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:33:18', '', '0000-00-00', '', '', '0000-00-00', 0),
(264, '', 202010501000, 'Hashem Electric Company Limited', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100050001', '', 4, '', '239', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:35:13', '', '0000-00-00', '', '', '0000-00-00', 0),
(265, '', 202010801000, 'A/P- Data Entry- Kazi Abdul Hamid High School', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100060001', '', 4, '', '242', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:36:14', '', '0000-00-00', '', '', '0000-00-00', 0),
(266, '', 202010802000, 'A/P-Monthly Bill - Kazi Abdul Hamid High School', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100060002', '', 4, '', '242', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:37:00', '', '0000-00-00', '', '', '0000-00-00', 0),
(267, '', 202010803000, 'A/P- SMS Cost- Kazi Abdul Hamid High School', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100060003', '', 4, '', '242', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:37:46', '', '0000-00-00', '', '', '0000-00-00', 0),
(268, '', 202010901000, 'A/P- SMS Cost- Darul Uloom Dhaka', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100070001', '', 4, '', '243', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:38:51', '', '0000-00-00', '', '', '0000-00-00', 0),
(269, '', 202011001000, 'Saeema Binte Sattar', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100080001', '', 4, '', '244', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:39:52', '', '0000-00-00', '', '', '0000-00-00', 0),
(270, '', 202011002000, 'Nafisa Jahan', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100080002', '', 4, '', '244', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:40:33', '', '0000-00-00', '', '', '0000-00-00', 0),
(271, '', 202011003000, 'Israt Jahan Era', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100080003', '', 4, '', '244', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:41:12', '', '0000-00-00', '', '', '0000-00-00', 0),
(272, '', 202011101000, 'Md. Billal Hossain (Conv)', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100090001', '', 4, '', '245', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:42:17', '', '0000-00-00', '', '', '0000-00-00', 0),
(273, '', 202011102000, 'Md. Fortha Hossain (Conv)', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100090002', '', 4, '', '245', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:42:55', '', '0000-00-00', '', '', '0000-00-00', 0),
(274, '', 202011103000, 'Md. Al-Amin (Conv)', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100090003', '', 4, '', '245', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:44:22', '', '0000-00-00', '', '', '0000-00-00', 0),
(275, '', 202011104000, 'Md. Hasibuzzaman (Conv)', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100090004', '', 4, '', '245', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:45:21', '', '0000-00-00', '', '', '0000-00-00', 0),
(276, '', 202011105000, 'Md. Ali Abdullah (Conv)', '', '2', '', 5, 'N', '', '', '', 0, 0, '020200100090005', '', 4, '', '245', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:46:11', '', '0000-00-00', '', '', '0000-00-00', 0),
(277, '', 202011106000, 'Bilkis (Conv)', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200100090006', '', 4, '', '245', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:47:03', '', '0000-00-00', '', '', '0000-00-00', 0),
(278, '', 202020100000, 'PAYABLE FOR GOODS', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020020001', '', 4, '', '221', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:48:42', '', '0000-00-00', '', '', '0000-00-00', 0),
(279, '', 202020200000, 'COMMISSION PAYABLE', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020020002', '', 4, '', '221', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:49:25', '', '0000-00-00', '', '', '0000-00-00', 0),
(280, '', 202030100000, 'DEPRECIATION ON OFFICE EQUIPMENT', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020030001', '', 4, '', '222', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:50:37', '', '0000-00-00', '', '', '0000-00-00', 0),
(281, '', 202030200000, 'DEPRECIATION ON FURNITURE', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020030002', '', 4, '', '222', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:51:40', '', '0000-00-00', '', '', '0000-00-00', 0),
(282, '', 202030300000, 'DEPRECIATION ON FIXTURE', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020030003', '', 4, '', '222', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:52:37', '', '0000-00-00', '', '', '0000-00-00', 0),
(283, '', 202030400000, 'DEPRECIATION ON COMPUTER & COMPUTER ITEMS', '', '2', '', 4, 'N', '', '', '', 0, 0, '02020030004', '', 4, '', '222', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:53:14', '', '0000-00-00', '', '', '0000-00-00', 0),
(284, '', 202030401000, 'Depreciation on Desktop', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200300040001', '', 4, '', '283', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:54:31', '', '0000-00-00', '', '', '0000-00-00', 0),
(285, '', 202030101000, 'Depreciation on Stand Fan', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200300010001', '', 4, '', '280', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:56:01', '', '0000-00-00', '', '', '0000-00-00', 0),
(286, '', 202030102000, 'Depreciation on Telephone Set', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200300010002', '', 4, '', '280', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:57:08', '', '0000-00-00', '', '', '0000-00-00', 0),
(287, '', 202030201000, 'Depreciation on Chair', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200300020001', '', 4, '', '281', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:58:41', '', '0000-00-00', '', '', '0000-00-00', 0),
(288, '', 202030301000, 'Depreciation on Decoration', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200300030001', '', 4, '', '282', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 12:59:36', '', '0000-00-00', '', '', '0000-00-00', 0),
(289, '', 202030402000, 'Depreciation on Laptop', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200300040002', '', 4, '', '283', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 13:00:34', '', '0000-00-00', '', '', '0000-00-00', 0),
(290, '', 202030403000, 'Depreciation on Printer', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200300040003', '', 4, '', '283', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 13:01:25', '', '0000-00-00', '', '', '0000-00-00', 0),
(291, '', 202030404000, 'Depreciation on Scanner', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200300040004', '', 4, '', '283', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 13:02:21', '', '0000-00-00', '', '', '0000-00-00', 0),
(292, '', 202030405000, 'Depreciation on Router', '', '2', '', 5, 'Y', '', '', '', 0, 0, '020200300040005', '', 4, '', '283', '', 0, 0, 0, '', 'C', 0, '', '2019-12-14 13:03:05', '', '0000-00-00', '', '', '0000-00-00', 0),
(293, '', 501030102010, 'Alamin', '', '5', '', 6, 'Y', '', '', '', 0, 0, '11', '', 4, '', '214', '', 0, 0, 0, '', 'C', 0, '', '2019-12-22 11:03:15', 'superadmin', '2020-02-18', '', '', '0000-00-00', 0),
(294, '', 301020200000, 'Discount From Purchase', '', '3', '', 4, 'Y', '', '', '', 2, 0, '0301002001', '', 4, '', '89', '', 0, 0, 0, '', 'C', 0, '', '2020-01-27 16:55:32', '', '0000-00-00', '', '', '0000-00-00', 0),
(296, '9900', 103000000000, 'jjjjjjjjjjjjjjjjjjjjj', '', '1', '', 2, 'N', '', '', '', 0, 0, '', '', 4, '', '9', '', 0, 0, 0, '', 'C', 0, '1', '2020-02-16 12:04:09', '1', '2020-02-16', '', '', '0000-00-00', 9900),
(297, '9900', 203000000000, 'new acc', '', '2', '', 2, 'Y', '', '', '', 0, 0, '111', '', 4, '', '10', '', 0, 0, 0, '', 'C', 0, '1', '2020-02-16 17:20:45', '', '0000-00-00', '', '', '0000-00-00', 9900),
(302, '', 202011300000, 'Mr. ABC Traders ', '', '1', '', 4, 'Y', '', '', '', 0, 0, '', '', 6, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2020-02-19 20:39:58', '', '0000-00-00', '', '', '0000-00-00', 0),
(303, '', 202011400000, 'bangladesh shop', '', '1', '', 4, 'Y', '', '', '', 0, 0, '10207000000', '', 6, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2020-02-19 20:41:18', '', '0000-00-00', '', '', '0000-00-00', 0),
(304, '', 202011500000, 'bangladesh shop', '', '1', '', 4, 'Y', '', '', '', 0, 0, '', '', 6, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2020-02-19 20:53:45', '', '0000-00-00', '', '', '0000-00-00', 0),
(305, '', 202011600000, 'Karim Traders', '', '1', '', 4, 'Y', '', '', '', 0, 0, '20211600000', '', 6, '', '220', '', 0, 0, 0, '', 'C', 0, '', '2020-02-19 20:57:44', '', '0000-00-00', '', '', '0000-00-00', 0),
(306, '20002', 101020201010, 'decoration 2', '', '1', '', 6, 'Y', '', '', '', 0, 0, '101020201010', '', 1, '', '27', '', -11000, 0, 0, '', 'C', 0, 'admin', '2020-02-24 12:56:57', '', '0000-00-00', '', '', '0000-00-00', 9900),
(307, '20002', 500000000000, 'EQUITY', '', '5', '', 1, 'N', '', '', '', 0, 0, '0500', '', 4, '', '0', '', 0, 0, 0, '', 'C', 0, 'superadmin', '2020-02-24 16:07:11', '', '0000-00-00', '', '', '0000-00-00', 9900),
(308, '20002', 102020202000, 'Habro Current Account', '', '1', '', 5, 'Y', '', '', '', 0, 0, '102020202000', '', 2, '', '62', '', 0, 0, 0, '', 'C', 0, 'superadmin', '2020-02-25 15:28:21', '', '0000-00-00', '', '', '0000-00-00', 9900),
(309, '20002', 102020203000, 'Fund Collection Current Account', '', '1', '', 5, 'Y', '', '', '', 0, 0, '102020203000', '', 2, '', '62', '', -40000, 0, 0, '', 'C', 0, 'superadmin', '2020-02-25 15:29:48', '', '0000-00-00', '', '', '0000-00-00', 9900);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `OFF_CODE` int(11) NOT NULL,
  `HOLIDAY_DATE` date NOT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HOLIDAY_TYPE` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SS_CREATOR` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SS_CREATED_ON` datetime NOT NULL,
  `SS_MODIFIER` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SS_MODIFIED_ON` timestamp NOT NULL DEFAULT current_timestamp(),
  `SS_OG_NO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`OFF_CODE`, `HOLIDAY_DATE`, `DESCRIPTION`, `HOLIDAY_TYPE`, `SS_CREATOR`, `SS_CREATED_ON`, `SS_MODIFIER`, `SS_MODIFIED_ON`, `SS_OG_NO`) VALUES
(886, '2019-12-16', 'Victory', 'National Holiday', '', '2019-09-16 09:45:45', '', '2019-09-16 03:45:45', 0),
(887, '2019-03-26', 'Shadhinota Dibosh', 'National Holiday', '', '2019-09-16 09:46:29', '', '2019-09-16 03:46:29', 0),
(888, '2019-02-21', 'Shaheed Dibosh', 'National Holiday', '', '2019-09-16 09:46:54', '', '2019-09-16 03:46:54', 0),
(889, '2019-08-15', 'Shokh Dibosh', 'National Holiday', '', '2019-09-16 09:47:24', '', '2019-09-16 03:47:24', 0),
(890, '2019-08-12', 'Korbani', 'Festival Holiday', '', '2019-09-16 09:48:06', '', '2019-09-16 03:48:06', 0),
(891, '2019-06-13', 'Eid Ul Fitr', 'Festival Holiday', '', '2019-09-16 09:48:24', '', '2019-09-16 03:48:24', 0),
(892, '2019-01-11', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(893, '2019-01-18', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(894, '2019-01-25', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(895, '2019-02-01', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(896, '2019-02-08', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(897, '2019-02-15', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(898, '2019-02-22', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(899, '2019-03-01', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(900, '2019-03-08', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(901, '2019-03-15', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(902, '2019-03-22', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(903, '2019-03-29', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(904, '2019-04-05', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(905, '2019-04-12', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(906, '2019-04-19', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(907, '2019-04-26', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:40', '', '2019-09-16 03:49:40', 0),
(908, '2019-05-03', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(909, '2019-05-10', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(910, '2019-05-17', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(911, '2019-05-24', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(912, '2019-05-31', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(913, '2019-06-07', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(914, '2019-06-14', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(915, '2019-06-21', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(916, '2019-06-28', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(917, '2019-07-05', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(918, '2019-07-12', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(919, '2019-07-19', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(920, '2019-07-26', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(921, '2019-08-02', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(922, '2019-08-09', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(923, '2019-08-16', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(924, '2019-08-23', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(925, '2019-08-30', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(926, '2019-09-06', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(927, '2019-09-13', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(928, '2019-09-20', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(929, '2019-09-27', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(930, '2019-10-04', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(931, '2019-10-11', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(932, '2019-10-18', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(933, '2019-10-25', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(934, '2019-11-01', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(935, '2019-11-08', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(936, '2019-11-15', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(937, '2019-11-22', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(938, '2019-11-29', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(939, '2019-12-06', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(940, '2019-12-13', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(941, '2019-12-20', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:41', '', '2019-09-16 03:49:41', 0),
(942, '2019-12-27', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(943, '2020-01-03', 'Friday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(944, '2019-01-12', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(945, '2019-01-19', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(946, '2019-01-26', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(947, '2019-02-02', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(948, '2019-02-09', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(949, '2019-02-16', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(950, '2019-02-23', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(951, '2019-03-02', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(952, '2019-03-09', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(953, '2019-03-16', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(954, '2019-03-23', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(955, '2019-03-30', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(956, '2019-04-06', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(957, '2019-04-13', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(958, '2019-04-20', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(959, '2019-04-27', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(960, '2019-05-04', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(961, '2019-05-11', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:42', '', '2019-09-16 03:49:42', 0),
(962, '2019-05-18', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(963, '2019-05-25', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(964, '2019-06-01', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(965, '2019-06-08', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(966, '2019-06-15', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(967, '2019-06-22', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(968, '2019-06-29', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(969, '2019-07-06', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(970, '2019-07-13', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(971, '2019-07-20', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(972, '2019-07-27', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(973, '2019-08-03', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(974, '2019-08-10', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(975, '2019-08-17', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(976, '2019-08-24', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(977, '2019-08-31', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(978, '2019-09-07', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(979, '2019-09-14', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(980, '2019-09-21', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(981, '2019-09-28', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(982, '2019-10-05', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(983, '2019-10-12', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(984, '2019-10-19', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(985, '2019-10-26', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(986, '2019-11-02', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(987, '2019-11-09', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(988, '2019-11-16', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(989, '2019-11-23', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(990, '2019-11-30', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(991, '2019-12-07', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(992, '2019-12-14', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(993, '2019-12-21', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:43', '', '2019-09-16 03:49:43', 0),
(994, '2019-12-28', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:44', '', '2019-09-16 03:49:44', 0),
(995, '2020-01-04', 'Saturday', 'Weekly Holiday', '', '2019-09-16 09:49:44', '', '2019-09-16 03:49:44', 0),
(996, '0000-00-00', '', 'Weekly Holiday', '', '2019-09-16 09:49:44', '', '2019-09-16 03:49:44', 0),
(997, '0000-00-00', '', '', '', '2019-09-17 15:24:03', '', '2019-09-17 09:24:03', 0),
(998, '0000-00-00', '', '', '', '2019-09-17 15:25:13', '', '2019-09-17 09:25:13', 0),
(999, '2019-09-01', 'new', 'National Holiday', '', '2019-09-17 15:25:25', '', '2019-09-17 09:25:25', 0),
(1000, '2019-09-17', 'special new holiday', 'Special Holiday', '', '2019-09-17 15:27:21', '', '2019-09-17 09:27:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'purchase order, sale order, transfer in, transfer out, debit note, credit note',
  `in_out_flag` int(1) NOT NULL COMMENT '1=in, 2=out',
  `order_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `item_no` int(10) NOT NULL,
  `item_qty` int(10) NOT NULL,
  `item_unit` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price_loc` int(12) NOT NULL,
  `unit_price_fc` int(12) NOT NULL,
  `curr_code` int(5) NOT NULL,
  `exch_rate` int(7) NOT NULL,
  `total_price_loc` decimal(15,2) NOT NULL,
  `total_price_fc` decimal(15,2) NOT NULL,
  `include` int(11) NOT NULL,
  `includ_vat_tax` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bar_code` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_origin` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_waranty` int(4) NOT NULL,
  `warranty_type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agaunest_indent_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_date` date NOT NULL,
  `status_ref` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` datetime NOT NULL,
  `ss_modifier` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modofier_on` date NOT NULL,
  `ss_org_no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`id`, `office_code`, `order_type`, `in_out_flag`, `order_no`, `order_date`, `item_no`, `item_qty`, `item_unit`, `unit_price_loc`, `unit_price_fc`, `curr_code`, `exch_rate`, `total_price_loc`, `total_price_fc`, `include`, `includ_vat_tax`, `bar_code`, `item_origin`, `item_waranty`, `warranty_type`, `agaunest_indent_no`, `order_status`, `status_date`, `status_ref`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modofier_on`, `ss_org_no`) VALUES
(1, '20002', 'P', 1, '2019000590', '2017-07-01', 22, 2, 'Set', 55000, 0, 0, 0, '110000.00', '0.00', 0, '', '', '', 0, '', '', '1', '2017-07-01', '', 'superadmin', '2020-02-20 13:59:50', '', '0000-00-00', 9900),
(2, '20002', 'P', 1, '2020018', '2017-07-01', 1, 5, 'KG', 2500, 0, 0, 0, '12500.00', '0.00', 0, '', '', '', 0, '', '', '1', '2017-07-01', '', 'superadmin', '2020-03-01 12:59:23', '', '0000-00-00', 9900),
(3, '20002', 'P', 1, '2020018', '2017-07-01', 2, 5, 'KG', 2500, 0, 0, 0, '12500.00', '0.00', 0, '', '', '', 0, '', '', '1', '2017-07-01', '', 'superadmin', '2020-03-01 12:59:23', '', '0000-00-00', 9900),
(4, '20002', 'P', 1, '2020018', '2017-07-01', 2, 5, 'Meter', 555555, 0, 0, 0, '2777775.00', '0.00', 0, '', '', '', 0, '', '', '1', '2017-07-01', '', 'superadmin', '2020-03-01 12:59:23', '', '0000-00-00', 9900);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_code` bigint(20) NOT NULL,
  `item_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `parent_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_level` int(1) NOT NULL,
  `item_category` int(5) NOT NULL,
  `unit` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_value` int(3) NOT NULL,
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
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `office_code`, `item_code`, `item_name`, `parent_id`, `item_level`, `item_category`, `unit`, `unit_value`, `sku`, `barcode`, `sellable_option`, `texable_option`, `pack_size`, `country_of_origin`, `country_of_manufacture`, `country_of_assemble`, `brand_name`, `model_name`, `gl_acc_code`, `image`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '9900', 100000000000, 'Grocery ', '0', 1, 1, '0', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', 'admin', '2020-01-22 14:5', '', '', '9900'),
(2, '9900', 200000000000, 'Medicine', '0', 1, 2, '0', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', 'admin', '2020-01-22 14:5', '', '', '9900'),
(3, '9900', 300000000000, 'Electric and Electronics', '0', 1, 3, '0', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', 'admin', '2020-01-22 14:5', '', '', '9900'),
(4, '9900', 400000000000, 'Garments', '0', 1, 4, '0', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', 'admin', '2020-01-22 14:5', '', '', '9900'),
(5, '9900', 500000000000, 'Lubricant and Fuel ', '0', 1, 5, '0', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', 'admin', '2020-01-22 14:5', '', '', '9900'),
(6, '9900', 600000000000, 'Fisheries and Livestock  ', '0', 1, 6, '0', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', 'admin', '2020-01-22 14:5', '', '', '9900'),
(7, '9900', 700000000000, 'Services', '0', 1, 7, '0', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', 'admin', '2020-01-22 14:5', '', '', '9900'),
(9, '9900', 800000000000, 'Stationary', '0', 1, 8, '0', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', 'admin', '2020-01-22 14:5', '', '', '9900'),
(10, '9900', 900000000000, 'Furniture and Furniture', '0', 1, 10, '0', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '', 'admin', '2020-01-22 15:0', '', '', '9900'),
(11, '9900', 101000000000, 'Rice', '1', 2, 1, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579683670_5107.', 'admin', '2020-01-22 15:0', '', '', '9900'),
(12, '9900', 102000000000, 'Green Puls', '1', 2, 1, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579683936_4135.', 'admin', '2020-01-22 15:0', '', '', '9900'),
(13, '9900', 301000000000, 'Electric Cable', '3', 2, 3, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579684041_6839.', 'admin', '2020-01-22 15:0', '', '', '9900'),
(14, '9900', 302000000000, 'Ceiling Fan', '3', 2, 3, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579684174_8573.', 'admin', '2020-01-22 15:0', '', '', '9900'),
(15, '9900', 303000000000, 'Table Fan', '3', 2, 3, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579684208_7632.', 'admin', '2020-01-22 15:1', '', '', '9900'),
(16, '9900', 501000000000, 'Petrol ', '5', 2, 5, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579684323_6633.', 'admin', '2020-01-22 15:1', '', '', '9900'),
(17, '9900', 502000000000, 'Octan', '5', 2, 5, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579684364_8639.', 'admin', '2020-01-22 15:1', '', '', '9900'),
(18, '9900', 601000000000, 'Fish', '6', 2, 6, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579684512_7030.', 'admin', '2020-01-22 15:1', '', '', '9900'),
(19, '9900', 602000000000, 'Chicken', '6', 2, 6, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579684601_4572.', 'admin', '2020-01-22 15:1', '', '', '9900'),
(20, '9900', 603000000000, 'Goat', '6', 2, 6, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579684629_6374.', 'admin', '2020-01-22 15:1', '', '', '9900'),
(21, '9900', 604000000000, 'Cow', '6', 2, 6, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579684657_5437.', 'admin', '2020-01-22 15:1', '', '', '9900'),
(22, '9900', 304000000000, 'Computer', '3', 2, 3, '1', 0, 0, '', 'N', 'Y', '', 0, 0, 0, '', '', '', '1579684684_2338.', 'admin', '2020-01-22 15:1', '', '', '9900'),
(23, '9900', 305000000000, 'Printer', '3', 2, 3, '1', 0, 0, '', 'N', 'N', '', 0, 0, 0, '', '', '', '1579684706_6547.', 'admin', '2020-01-22 15:1', '', '', '9900'),
(24, '9900', 306000000000, 'Router', '3', 2, 3, '1', 0, 0, '', 'N', 'Y', '', 0, 0, 0, '', '', '', '1579684734_3740.', 'admin', '2020-01-22 15:1', '', '', '9900'),
(25, '9900', 301010000000, 'HP 840 G-6 Laptop', '13', 3, 3, '0', 0, 0, '', 'Y', 'Y', '', 0, 0, 0, '', '', '', '1581315582_3592.', 'admin', '2020-02-10 12:1', '', '', '9900'),
(26, '9900', 301010000000, 'HP 840 G-6 Laptop', '13', 3, 3, 'KG', 0, 0, '', 'Y', 'Y', '', 0, 0, 0, '', '', '', '1581315582_3592.', 'admin', '2020-02-10 12:2', '', '', '9900'),
(27, '20002', 103000000000, 'HP 840 G-6 Laptop', '1', 2, 1, 'KG', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', '1582698603_2994.', 'superadmin', '2020-02-26 12:3', '', '', '9900'),
(28, '20002', 104000000000, 'new item', '1', 2, 1, 'KG', 0, 0, '', 'Y', 'Y', '', 0, 0, 0, '', '', '', '1582698648_3476.', 'superadmin', '2020-02-26 12:3', '', '', '9900');

-- --------------------------------------------------------

--
-- Table structure for table `office_info`
--

CREATE TABLE `office_info` (
  `id` int(11) NOT NULL,
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

INSERT INTO `office_info` (`id`, `office_code`, `office_name`, `office_type`, `office_address`, `office_cont_person`, `office_con_mobile_no`, `office_start_dt`, `office_end_dt`, `area_code`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '99001', 'Habro System Limited ', '1', 'Gulshan-1', 'Bisnu Chandra Dush', '012345656', '2020-01-01', '2020-01-31', '', '1', '', '', '', ''),
(2, '99002', 'Citgo ', '3', 'Gulshan-1', 'Rahamot Ullah ', '01234567', '2020-01-22', '2020-01-22', '', '1', '', '', '', ''),
(3, '99003', 'Shapla, Shanti Nogor Project', '3', 'Shanti Nogor ', 'Mr x ', '0123456789', '2020-01-01', '2020-07-31', '', '1', '', '', '', ''),
(4, '3300', 'new', '04', '217, B/70 3rd Colony, Lalkuthi, Mirpur-1', 'sdfsdf', '1234567890', '2020-02-16', '2020-04-22', '1738', 'admin', '2017-07-01', '', '', '9900');

-- --------------------------------------------------------

--
-- Table structure for table `org_info`
--

CREATE TABLE `org_info` (
  `org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_addr1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_addr2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_fax` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_tel` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_country` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_slorgan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_logo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_fin_month` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_fin_year_st` date NOT NULL,
  `org_budget_year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_maintain_inv` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_emp_img_type` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_path_emp_img` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_loc_curr_symbol` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_loc_curr_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_for_symbol` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_for_curr_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_no_of_decimal` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_rounding_decl` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_rounding_type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_eoy_date` date NOT NULL,
  `org_eom_date` date NOT NULL,
  `org_last_trn_hour` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_eod_bod_proceorg_time` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_eod_bod_proceorg_date` date NOT NULL,
  `org_eod_bod_flag` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_rep_footer1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_rep_footer2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_rep_server` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seprt_cs_info` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Y= Yes, N=No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `org_info`
--

INSERT INTO `org_info` (`org_no`, `org_name`, `org_addr1`, `org_addr2`, `org_email`, `org_website`, `org_fax`, `org_tel`, `org_country`, `org_slorgan`, `org_logo`, `org_fin_month`, `org_fin_year_st`, `org_budget_year`, `org_maintain_inv`, `org_emp_img_type`, `org_path_emp_img`, `org_loc_curr_symbol`, `org_loc_curr_name`, `org_for_symbol`, `org_for_curr_name`, `org_no_of_decimal`, `org_rounding_decl`, `org_rounding_type`, `org_eoy_date`, `org_eom_date`, `org_last_trn_hour`, `org_eod_bod_proceorg_time`, `org_eod_bod_proceorg_date`, `org_eod_bod_flag`, `org_rep_footer1`, `org_rep_footer2`, `org_rep_server`, `seprt_cs_info`) VALUES
('9900', 'Habro Systems Limited, Bangladesh', '60/B#road no-130#gulsan-1', 'new', 'hasib.9437.hu@gmail.com', 'habrosystems.com', '0248810576', '01738356180', 'Bang', 'Better Customer Services', 'logo.png', 'July', '2020-02-11', '2017', 'y', '', '', 'TK', 'BDT', '$', 'USD', '2', '2', 'y', '0000-00-00', '0000-00-00', '', '', '2017-07-01', '0', '', '', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sm_hr_emp`
--

CREATE TABLE `sm_hr_emp` (
  `emp_no` int(30) NOT NULL,
  `emp_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_create_date` date NOT NULL,
  `user_validity_date` date NOT NULL,
  `user_valid_days` int(3) NOT NULL,
  `join_date` date NOT NULL,
  `f_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `husband_name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `blood_group` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_personal` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_official` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_home` int(15) NOT NULL,
  `phone_mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_office` int(15) NOT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upazila` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_office` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_village` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_division` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_district` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_upazila` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_p_office` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_p_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reporting_to` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sa_last_login` date NOT NULL,
  `active_status` tinyint(1) NOT NULL,
  `sa_role_no` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` int(30) NOT NULL,
  `passport_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driving_lc_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tin_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_incr_date` date NOT NULL,
  `m_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` datetime NOT NULL,
  `ss_modifier` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` datetime NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_hr_emp`
--

INSERT INTO `sm_hr_emp` (`emp_no`, `emp_id`, `office_code`, `username`, `password`, `job_title_no`, `user_create_date`, `user_validity_date`, `user_valid_days`, `join_date`, `f_name`, `l_name`, `father_name`, `mother_name`, `husband_name`, `gender`, `dob`, `blood_group`, `religion`, `marital_status`, `email_personal`, `email_official`, `phone_home`, `phone_mobile`, `phone_office`, `nationality`, `village`, `division`, `district`, `upazila`, `p_office`, `p_code`, `p_village`, `p_division`, `p_district`, `p_upazila`, `p_p_office`, `p_p_code`, `reporting_to`, `sa_last_login`, `active_status`, `sa_role_no`, `nid`, `passport_no`, `driving_lc_no`, `tin_no`, `next_incr_date`, `m_status`, `employee_image`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`) VALUES
(1, 'emp-1234567890', '20002', 'superadmin', '$2y$10$j1pcY.Y.FDw1inddsHz23OQoQZxdK1Mqe8GE.J.bLi7hzAgpoXaoC', 'Web Developer', '2020-02-27', '2021-02-26', 365, '2019-11-06', 'Hasib', 'Uzzaman', 'Md. Bokul Hossain', 'Zarina Begum', '', '', '1994-03-22', 'A+', 'Islam', 'unmarried', 'hasib.9437.hu@gmail.com', 'hasib@habrosystemslimited.com', 1738356180, '01728256180', 1738356180, 'Bangladeshi', 'Charlaxmipur', '4', '61', '312', 'Rajbari', '7700', 'Rajbari', '1', '24', '1', 'Rajbari', '7700', 'Bisnu Shaha', '0000-00-00', 1, '110', 0, '', '', '', '0000-00-00', '', 'hasib.jpg', 'superadmin', '2019-11-06 15:18:19', '', '2019-11-06 15:18:19', '10002'),
(2, 'emp-1234567891', '20002', 'billal', '$2y$10$eP3MsSlCYr43dHWNmrv.ROZwosxMipez9wXGZ1RB2upRXY5/VeCQm', 'Account Officer', '2020-02-25', '2020-10-04', 222, '2019-12-07', 'Billal', 'Uzzaman', 'Ballal', 'Ballali', 'Md. Hasib Uzzaman', '1', '2019-12-07', 'A+', 'Islam', 'unmarried', 'hasib.9437.phu@gmail.com', 'hasib.9437.ohu@gmail.com', 1738356180, '01738356180', 1738356180, 'Bangladeshi', 'Rajbari54894', '4', '61', '312', 'CreativeITbari', '1216', 'Rajbari', '1', '34', '1', 'Birmohon ', '79000', 'hasib', '2019-12-07', 1, '88', 123457, '23124124123shdbfsdf121233', '123456787654321', '34567890987', '2019-12-13', 'H', '', 'admin', '2019-12-07 14:26:10', '', '0000-00-00 00:00:00', '10002'),
(42, '100002017', '99001', '', '', 'Programmer', '0000-00-00', '0000-00-00', 0, '2019-10-01', 'Mohammad Ali ', ' Abdullah', 'Abdur Rob', 'Jahanara Begum', '-', '1', '1989-12-07', 'O+', 'Islam', 'unmarried', 'mdalibd511@gmail.com', 'abdullahhabro@gamail.com', 184653733, '0184653733', 1849378511, 'Bangladeshi', 'Maijdee Court', '2', '49', '126', '3800', '3800', 'Bijoy Soroni', '3', '1', '538', '1215', '1215', 'Bisnu ', '2020-02-26', 1, '99', 2147483647, '5387123098589', '874570985348', '098785234578', '2020-02-26', '', 'abdullah passport.png_26-02-2020_8307.png', 'superadmin', '2020-02-26 17:06:53', '', '0000-00-00 00:00:00', '9900'),
(43, '1001', '99001', '', '', 'Asst. Manager of implemen', '0000-00-00', '0000-00-00', 0, '2016-10-01', 'MD ', 'AL AMIN', 'ABDUL KARIM', 'JOYNAB BEGUM ', '', '1', '1994-11-10', 'AB+', 'Islam', 'married', 'alaminbinkarim@gmail.com', 'alamin@habrosystems.com', 1762841338, '01799363475', 248810576, 'Bangladeshi', 'Purba Maijpara', '3', '7', '192', 'Birmohon', '7900', 'Purba Maijpara', '3', '7', '192', 'Birmohon', '7900', 'K.M RAHMATULLAH ', '2020-02-26', 1, '', 2147483647, 'BC 257619', '', '', '2020-12-31', '', 'circle-cropped (4).png_26-02-2020_8762.png', 'superadmin', '2020-02-26 17:09:14', '', '0000-00-00 00:00:00', '9900');

-- --------------------------------------------------------

--
-- Table structure for table `sm_menu`
--

CREATE TABLE `sm_menu` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_no` bigint(15) UNSIGNED NOT NULL,
  `menu_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_obj_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_type` tinyint(1) NOT NULL,
  `p_menu_no` int(11) NOT NULL,
  `lavel_no` int(3) NOT NULL,
  `active_stat` tinyint(1) NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` datetime NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` datetime NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disply_sq_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_menu`
--

INSERT INTO `sm_menu` (`id`, `office_code`, `menu_no`, `menu_name`, `menu_obj_name`, `menu_type`, `p_menu_no`, `lavel_no`, `active_stat`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`, `disply_sq_no`) VALUES
(1, '20002', 100000, 'House Keeping', 'house', 0, 0, 1, 1, 'admin', '2019-11-05 14:48:07', '', '2019-11-28 12:04:42', '10002', 0),
(2, '20002', 200000, 'Setup', 'setup', 1, 0, 1, 1, 'admin', '2019-11-05 14:48:40', '', '2019-11-06 06:54:16', '10002', 0),
(3, '20002', 300000, 'Account Master', 'acc', 1, 0, 1, 1, 'admin', '2019-11-05 14:49:13', '', '2019-11-06 06:54:27', '10002', 0),
(4, '20002', 400000, 'Transaction', 'tran', 1, 0, 1, 1, 'admin', '2019-11-05 15:12:33', '', '2019-11-06 06:54:39', '10002', 0),
(5, '20002', 500000, 'Security Management', 'sec', 1, 0, 1, 1, 'admin', '2019-11-05 15:13:12', '', '2019-11-06 06:54:48', '10002', 0),
(6, '20002', 101000, 'Code Master Setup', '../code_master/code_master.php', 1, 1, 2, 1, 'admin', '2019-11-05 15:14:10', '', '2020-01-23 08:19:55', '10002', 0),
(7, '20002', 102000, 'Opening Balance', '../transation/opening_balance.php', 1, 1, 2, 1, 'admin', '2019-11-05 15:14:44', '', '2019-11-20 10:32:23', '10002', 0),
(10, '20002', 203000, 'Assign Menu to Role', '../menu_role/user_roles_details.php', 1, 2, 2, 1, 'admin', '2019-11-05 15:18:28', '', '2019-11-05 15:18:28', '10002', 0),
(11, '20002', 501000, 'Create New User with Role', '../menu_role/user_create.php', 1, 5, 2, 1, 'admin', '2019-11-05 15:20:06', '', '2019-11-05 10:20:44', '10002', 0),
(12, '20002', 502000, 'Inactive User', '', 1, 5, 2, 1, 'admin', '2019-11-05 15:21:26', '', '2019-11-05 15:21:26', '10002', 0),
(13, '20002', 301000, 'Account Open', '../account_and_bank_information/gl_account.php', 1, 3, 2, 1, 'admin', '2019-11-05 15:22:06', '', '2019-11-21 08:07:59', '10002', 0),
(14, '20002', 302000, 'Account Role Setup', '../account_and_bank_information/acc_rule_setup.php', 1, 3, 2, 1, 'admin', '2019-11-05 15:22:51', '', '2019-11-21 12:46:21', '10002', 0),
(15, '20002', 401000, 'Receive Voucher', '../transation/receipt_voucher.php', 1, 4, 2, 1, 'admin', '2019-11-05 15:24:19', '', '2019-11-07 10:06:50', '10002', 0),
(16, '20002', 402000, 'Payment Voucher', '../transation/payment_voucher.php', 0, 4, 2, 1, 'admin', '2019-11-05 15:24:42', '', '2019-11-05 15:24:42', '10002', 0),
(19, '20002', 405000, 'Contra Voucher', '../transation/contra.php', 1, 4, 2, 1, 'admin', '2019-11-05 15:26:31', '', '2019-12-03 12:07:36', '10002', 0),
(20, '20002', 600000, 'HR Management', 'HR Management', 1, 0, 1, 1, 'admin', '2019-11-07 12:58:09', '', '2019-12-05 10:57:03', '10002', 0),
(21, '20002', 601000, 'Employ Info', '../hr_emp/hr_emp.php', 1, 20, 2, 1, 'admin', '2019-11-07 12:58:44', '', '2019-11-07 12:58:44', '10002', 0),
(33, '20002', 700000, 'Report', 'report', 1, 0, 1, 1, 'admin', '2019-11-21 17:30:54', '', '2019-11-21 12:31:07', '10002', 0),
(40, '20002', 800000, 'Bank & Account Info', 'Bank', 1, 0, 1, 1, 'admin', '2019-11-25 14:59:26', '', '2019-11-25 14:59:26', '10002', 0),
(41, '20002', 801000, 'Bank Info', '../bank_account_info/bank_acc_info.php', 1, 40, 2, 1, 'admin', '2019-11-25 15:01:15', '', '2020-02-11 12:54:19', '10002', 0),
(42, '20002', 802000, 'Chaque Book Info', '../bank_account_info/Chq_book_info.php', 1, 40, 2, 1, 'admin', '2019-11-25 15:02:36', '', '2020-02-11 12:54:30', '10002', 0),
(43, '20002', 803000, 'Chaque Leaf Info', '../bank_account_info/Chq_leaf_info.php', 1, 40, 2, 1, 'admin', '2019-11-25 15:03:23', '', '2020-02-11 12:54:43', '10002', 0),
(45, '20002', 406000, 'Journal Entry', '../transation/journal.php', 1, 4, 2, 1, 'admin', '2019-11-27 12:46:38', '', '2020-02-26 11:34:54', '10002', 0),
(47, '20002', 804000, 'Vat Tax Info', '../bank_account_info/vat_tax_rate_info.php', 1, 40, 2, 1, 'admin', '2019-12-05 15:55:42', '', '2020-02-11 12:54:52', '10002', 0),
(48, '20002', 701000, 'Journal', '../report/Journal.php', 1, 33, 2, 1, 'admin', '2019-12-05 16:01:36', '', '2020-02-26 11:35:12', '10002', 0),
(49, '20002', 702000, 'Trial Balance', '../report/trial_balance.php', 1, 33, 2, 1, 'admin', '2019-12-05 16:03:05', '', '2019-12-05 16:03:05', '10002', 0),
(50, '20002', 703000, 'General Ladger', '../report/gl_ledger.php', 1, 33, 2, 1, 'admin', '2019-12-05 16:03:49', '', '2020-01-23 08:22:08', '10002', 0),
(51, '20002', 704000, 'Income Expense', '../report/inc_exp.php', 1, 33, 2, 1, 'admin', '2019-12-05 16:04:24', '', '2019-12-05 16:04:24', '10002', 0),
(52, '20002', 705000, 'Profit Loss', '../report/profit_loss.php', 1, 33, 2, 1, 'admin', '2019-12-05 16:05:01', '', '2019-12-05 16:05:01', '10002', 0),
(53, '20002', 706000, 'Balance Sheet', '../report/balance_sheet.php', 1, 33, 2, 1, 'admin', '2019-12-05 16:05:36', '', '2019-12-05 16:05:36', '10002', 0),
(54, '20002', 707000, 'Chart Of Account', '../report/chart_of_account.php', 1, 33, 2, 1, 'admin', '2019-12-05 16:13:20', '', '2019-12-05 16:13:20', '10002', 0),
(56, '20002', 201000, 'Organization Info', '../organization/organization.php', 1, 2, 2, 1, 'admin', '2019-12-05 16:54:12', '', '2019-12-05 16:54:12', '10002', 0),
(58, '20002', 204000, 'Item Info', '../item/item.php', 1, 2, 2, 1, 'admin', '2019-12-12 13:26:03', '', '2019-12-12 13:26:03', '10002', 0),
(60, '20002', 104000, 'Database Backup', '../backup/database_backup.php', 1, 1, 2, 1, 'admin', '2020-01-06 12:24:16', '', '2020-01-06 12:24:16', '10002', 0),
(69, '20002', 105000, 'Year Process ', '../house_keeping/year_process.php', 1, 1, 2, 1, 'admin', '2020-02-10 15:08:33', '', '0000-00-00 00:00:00', '10002', 0),
(70, '20002', 106000, 'User Role Setup', '../house_keeping/user_roles.php', 1, 1, 2, 1, 'admin', '2020-02-11 15:53:35', '', '2020-02-11 10:53:48', '10002', 0),
(71, '20002', 900000, '313 Bodri Qafela', 'Bodri ', 1, 0, 1, 1, 'admin', '2020-02-11 16:54:29', '', '2020-02-11 11:54:43', '10002', 0),
(74, '20002', 901000, 'All Member', '../bodri_qafela/member_view.php', 1, 71, 2, 1, 'admin', '2020-02-11 18:03:18', '', '0000-00-00 00:00:00', '10002', 0),
(83, '20002', 1000000, 'Purchase', 'Purchase', 1, 0, 1, 1, 'admin', '2020-02-13 11:30:25', '', '0000-00-00 00:00:00', '10002', 0),
(84, '20002', 1001000, 'Purchase Voucher', '../purchase/purchase_voucher.php', 1, 83, 2, 1, 'admin', '2020-02-13 11:31:10', '', '2020-02-19 09:10:11', '10002', 0),
(85, '20002', 1002000, 'Purchase Details', '../purchase/purchase_details.php', 1, 83, 2, 1, 'admin', '2020-02-13 11:41:14', '', '0000-00-00 00:00:00', '10002', 0),
(86, '20002', 1003000, 'Monthly Report', '../purchase/monthly.php', 1, 83, 2, 1, 'admin', '2020-02-13 11:43:10', '', '0000-00-00 00:00:00', '10002', 0),
(87, '20002', 1004000, 'On demand Report ', '../purchase/day_by_day.php', 1, 83, 2, 1, 'admin', '2020-02-13 11:44:36', '', '0000-00-00 00:00:00', '10002', 0),
(88, '20002', 1100000, 'Sales', 'Sales', 1, 0, 1, 1, 'admin', '2020-02-13 12:18:29', '', '0000-00-00 00:00:00', '10002', 0),
(89, '20002', 1101000, 'Sales', '../sales/sales_voucher.php', 1, 88, 2, 1, 'admin', '2020-02-13 12:19:12', '', '0000-00-00 00:00:00', '10002', 0),
(90, '20002', 107000, 'Office Setup', '../office/office_info.php', 1, 1, 2, 1, 'admin', '2020-02-16 12:34:58', '', '0000-00-00 00:00:00', '10002', 0),
(91, '20002', 1005000, 'Supplier Information', '../purchase/supp_info.php', 1, 83, 2, 1, 'superadmin', '2020-02-19 15:03:24', '', '0000-00-00 00:00:00', '10002', 0),
(92, '20002', 1102000, 'Customer Information', '../sales/cust_info.php', 1, 88, 2, 1, 'superadmin', '2020-02-19 15:04:44', '', '0000-00-00 00:00:00', '10002', 0),
(93, '20002', 902000, 'All Referred Person', '../bodri_qafela/referred_person_view.php', 1, 71, 2, 1, 'superadmin', '2020-02-23 13:03:29', '', '0000-00-00 00:00:00', '9900', 0),
(95, '20002', 407000, 'Fund Received', '../transation/fund_received.php', 1, 4, 2, 1, 'superadmin', '2020-02-24 16:58:18', '', '0000-00-00 00:00:00', '9900', 0),
(96, '20002', 108000, 'Menu Define', '../menu_role/user_menu.php', 1, 1, 2, 1, 'superadmin', '2020-02-27 12:39:57', '', '0000-00-00 00:00:00', '9900', 0),
(97, '20002', 1006000, 'Purchase Return', '../purchase/purchase_return.php', 1, 83, 2, 1, 'superadmin', '2020-02-27 15:27:57', '', '0000-00-00 00:00:00', '9900', 0);

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
(60, '20002', 99, 'Admin', 1, 'admin', '2019-09-13 21:18:25', 'superadmin', '2020-02-20 06:30:27', 10002),
(61, '20002', 88, 'Account Officer', 1, 'admin', '2019-09-12 15:01:36', '', '2019-09-12 15:01:36', 10002),
(62, '20002', 77, 'Transport Officer', 1, 'admin', '2019-09-12 15:02:01', '', '2019-09-12 15:02:01', 10002),
(63, '20002', 66, 'Bill Collector', 1, 'admin', '2019-09-12 15:02:18', '', '2019-09-12 15:02:18', 10002),
(64, '20002', 100, 'System Admin.', 1, 'admin', '2019-09-16 07:34:09', '', '2019-09-16 07:34:09', 10002),
(77, '', 110, 'superadmin', 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sm_role_dtl`
--

CREATE TABLE `sm_role_dtl` (
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `role_no` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_obj_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_id` int(11) NOT NULL,
  `p_menu_no` int(11) NOT NULL,
  `active_stat` tinyint(1) NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` datetime NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` datetime NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_role_dtl`
--

INSERT INTO `sm_role_dtl` (`office_code`, `id`, `role_no`, `menu_no`, `menu_name`, `menu_obj_name`, `main_id`, `p_menu_no`, `active_stat`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`) VALUES
('20002', 783, '100', '100000', 'House Keeping', '', 0, 0, 1, '', '2019-12-14 15:29:10', '', '2019-12-14 15:29:10', '10002'),
('20002', 784, '100', '101000', 'Code master Setup', '', 0, 0, 0, '', '2019-12-14 15:29:10', '', '2019-12-14 15:29:10', '10002'),
('20002', 785, '100', '102000', 'Opening Balance', '', 0, 0, 0, '', '2019-12-14 15:29:10', '', '2019-12-14 15:29:10', '10002'),
('20002', 786, '100', '103000', 'Organization Info', '', 0, 0, 0, '', '2019-12-14 15:29:10', '', '2019-12-14 15:29:10', '10002'),
('20002', 787, '100', '200000', 'Setup', '', 0, 0, 0, '', '2019-12-14 15:29:10', '', '2019-12-14 15:29:10', '10002'),
('20002', 788, '100', '201000', 'Organization Info', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 789, '100', '202000', 'Menu Define', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 790, '100', '203000', 'Assign Menu to Role', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 791, '100', '300000', 'Account Master', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 792, '100', '301000', 'Account Open', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 793, '100', '302000', 'Account Role Setup', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 794, '100', '400000', 'Transaction', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 795, '100', '401000', 'Receive Voucher', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 796, '100', '402000', 'Payment Voucher', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 797, '100', '403000', 'Purchase Voucher', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 798, '100', '404000', 'Sales Voucher', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 799, '100', '405000', 'Contra Voucher', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 800, '100', '406000', 'Jaurnal Entry', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 801, '100', '500000', 'Security Management', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 802, '100', '501000', 'Create New User with Role', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 803, '100', '502000', 'Inactive User', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 804, '100', '600000', 'HR Management', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 805, '100', '601000', 'Employ Info', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 806, '100', '700000', 'Report', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 807, '100', '701000', 'Jaurnal', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 808, '100', '702000', 'Trial Balance', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 809, '100', '703000', 'Gl Ladger', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 810, '100', '704000', 'Income Expense', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 811, '100', '705000', 'Profit Loss', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 812, '100', '706000', 'Balance Sheet', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 813, '100', '707000', 'Chart Of Account', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 814, '100', '800000', 'Bank & Account Info', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 815, '100', '801000', 'Bank Info', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 816, '100', '802000', 'Chaque Book Info', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 817, '100', '803000', 'Chaque Leaf Info', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 818, '100', '804000', 'Vat Tax Info', '', 0, 0, 0, '', '2019-12-14 15:29:11', '', '2019-12-14 15:29:11', '10002'),
('20002', 2278, '1122', '100000', 'House Keeping', 'house', 1, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2279, '1122', '101000', 'Code Master Setup', '../code_master/code_master.php', 6, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2280, '1122', '102000', 'Opening Balance', '../transation/opening_balance.php', 7, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2281, '1122', '104000', 'Database Backup', '../backup/database_backup.php', 60, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2282, '1122', '200000', 'Setup', 'setup', 2, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2283, '1122', '201000', 'Organization Info', '../organization/organization.php', 56, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2284, '1122', '202000', 'Menu Define', '../menu_role/user_menu.php', 9, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2285, '1122', '203000', 'Assign Menu to Role', '../menu_role/user_roles_details.php', 10, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2286, '1122', '204000', 'Item Info', '../item/item.php', 58, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2287, '1122', '300000', 'Account Master', 'acc', 3, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2288, '1122', '301000', 'Account Open', '../account_and_bank_information/gl_account.php', 13, 3, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2289, '1122', '302000', 'Account Role Setup', '../account_and_bank_information/acc_rule_setup.php', 14, 3, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2290, '1122', '400000', 'Transaction', 'tran', 4, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2291, '1122', '401000', 'Receive Voucher', '../transation/receipt_voucher.php', 15, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2292, '1122', '402000', 'Payment Voucher', '../transation/payment_voucher.php', 16, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2293, '1122', '403000', 'Purchase Voucher', '../transation/purchase_voucher.php', 17, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2294, '1122', '404000', 'Sales Voucher', '../transation/sales_voucher.php', 18, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2295, '1122', '405000', 'Contra Voucher', '../transation/contra.php', 19, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2296, '1122', '406000', 'Jaurnal Entry', '../transation/journal.php', 45, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2297, '1122', '500000', 'Security Management', 'sec', 5, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2298, '1122', '501000', 'Create New User with Role', '../menu_role/user_create.php', 11, 5, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2299, '1122', '502000', 'Inactive User', '', 12, 5, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2300, '1122', '600000', 'HR Management', 'HR Management', 20, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2301, '1122', '601000', 'Employ Info', '../hr_emp/hr_emp.php', 21, 20, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2302, '1122', '700000', 'Report', 'report', 33, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2303, '1122', '701000', 'Jaurnal', '../report/Jaurnal.php', 48, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2304, '1122', '702000', 'Trial Balance', '../report/trial_balance.php', 49, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2305, '1122', '703000', 'General Ladger', '../report/gl_ledger.php', 50, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2306, '1122', '704000', 'Income Expense', '../report/inc_exp.php', 51, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2307, '1122', '705000', 'Profit Loss', '../report/profit_loss.php', 52, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2308, '1122', '706000', 'Balance Sheet', '../report/balance_sheet.php', 53, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2309, '1122', '707000', 'Chart Of Account', '../report/chart_of_account.php', 54, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2310, '1122', '800000', 'Bank & Account Info', 'Bank', 40, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2311, '1122', '801000', 'Bank Info', '../transation/bank_acc_info.php', 41, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2312, '1122', '802000', 'Chaque Book Info', '../transation/Chq_book_info.php', 42, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2313, '1122', '803000', 'Chaque Leaf Info', '../transation/Chq_leaf_info.php', 43, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2314, '1122', '804000', 'Vat Tax Info', '../transation/vat_tax_rate_info.php', 47, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2611, '88', '100000', 'House Keeping', 'house', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2612, '88', '101000', 'Code Master Setup', '../code_master/code_master.php', 6, 1, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2613, '88', '102000', 'Opening Balance', '../transation/opening_balance.php', 7, 1, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2614, '88', '104000', 'Database Backup', '../backup/database_backup.php', 60, 1, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2615, '88', '200000', 'Setup', 'setup', 2, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2616, '88', '201000', 'Organization Info', '../organization/organization.php', 56, 2, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2617, '88', '202000', 'Menu Define', '../menu_role/user_menu.php', 9, 2, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2618, '88', '203000', 'Assign Menu to Role', '../menu_role/user_roles_details.php', 10, 2, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2619, '88', '204000', 'Item Info', '../item/item.php', 58, 2, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2620, '88', '300000', 'Account Master', 'acc', 3, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2621, '88', '301000', 'Account Open', '../account_and_bank_information/gl_account.php', 13, 3, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2622, '88', '302000', 'Account Role Setup', '../account_and_bank_information/acc_rule_setup.php', 14, 3, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2623, '88', '400000', 'Transaction', 'tran', 4, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2624, '88', '401000', 'Receive Voucher', '../transation/receipt_voucher.php', 15, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2625, '88', '402000', 'Payment Voucher', '../transation/payment_voucher.php', 16, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2626, '88', '403000', 'Purchase Voucher', '../transation/purchase_voucher.php', 17, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2627, '88', '404000', 'Sales Voucher', '../transation/sales_voucher.php', 18, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2628, '88', '405000', 'Contra Voucher', '../transation/contra.php', 19, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2629, '88', '406000', 'Jaurnal Entry', '../transation/journal.php', 45, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2630, '88', '500000', 'Security Management', 'sec', 5, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2631, '88', '501000', 'Create New User with Role', '../menu_role/user_create.php', 11, 5, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2632, '88', '502000', 'Inactive User', '', 12, 5, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2633, '88', '600000', 'HR Management', 'HR Management', 20, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2634, '88', '601000', 'Employ Info', '../hr_emp/hr_emp.php', 21, 20, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2635, '88', '700000', 'Report', 'report', 33, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2636, '88', '701000', 'Jaurnal', '../report/Jaurnal.php', 48, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2637, '88', '702000', 'Trial Balance', '../report/trial_balance.php', 49, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2638, '88', '703000', 'General Ladger', '../report/gl_ledger.php', 50, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2639, '88', '704000', 'Income Expense', '../report/inc_exp.php', 51, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2640, '88', '705000', 'Profit Loss', '../report/profit_loss.php', 52, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2641, '88', '706000', 'Balance Sheet', '../report/balance_sheet.php', 53, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2642, '88', '707000', 'Chart Of Account', '../report/chart_of_account.php', 54, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2643, '88', '800000', 'Bank & Account Info', 'Bank', 40, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2644, '88', '801000', 'Bank Info', '../transation/bank_acc_info.php', 41, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2645, '88', '802000', 'Chaque Book Info', '../transation/Chq_book_info.php', 42, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2646, '88', '803000', 'Chaque Leaf Info', '../transation/Chq_leaf_info.php', 43, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2647, '88', '804000', 'Vat Tax Info', '../transation/vat_tax_rate_info.php', 47, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2648, '200', '100000', 'House Keeping', 'house', 1, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2649, '200', '101000', 'Code Master Setup', '../code_master/code_master.php', 6, 1, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2650, '200', '102000', 'Opening Balance', '../transation/opening_balance.php', 7, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2651, '200', '104000', 'Database Backup', '../backup/database_backup.php', 60, 1, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2652, '200', '200000', 'Setup', 'setup', 2, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2653, '200', '201000', 'Organization Info', '../organization/organization.php', 56, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2654, '200', '202000', 'Menu Define', '../menu_role/user_menu.php', 9, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2655, '200', '203000', 'Assign Menu to Role', '../menu_role/user_roles_details.php', 10, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2656, '200', '204000', 'Item Info', '../item/item.php', 58, 2, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2657, '200', '300000', 'Account Master', 'acc', 3, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2658, '200', '301000', 'Account Open', '../account_and_bank_information/gl_account.php', 13, 3, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2659, '200', '302000', 'Account Role Setup', '../account_and_bank_information/acc_rule_setup.php', 14, 3, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2660, '200', '400000', 'Transaction', 'tran', 4, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2661, '200', '401000', 'Receive Voucher', '../transation/receipt_voucher.php', 15, 4, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2662, '200', '402000', 'Payment Voucher', '../transation/payment_voucher.php', 16, 4, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2663, '200', '403000', 'Purchase Voucher', '../transation/purchase_voucher.php', 17, 4, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2664, '200', '404000', 'Sales Voucher', '../transation/sales_voucher.php', 18, 4, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2665, '200', '405000', 'Contra Voucher', '../transation/contra.php', 19, 4, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2666, '200', '406000', 'Jaurnal Entry', '../transation/journal.php', 45, 4, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2667, '200', '500000', 'Security Management', 'sec', 5, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2668, '200', '501000', 'Create New User with Role', '../menu_role/user_create.php', 11, 5, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2669, '200', '502000', 'Inactive User', '', 12, 5, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2670, '200', '600000', 'HR Management', 'HR Management', 20, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2671, '200', '601000', 'Employ Info', '../hr_emp/hr_emp.php', 21, 20, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2672, '200', '700000', 'Report', 'report', 33, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2673, '200', '701000', 'Jaurnal', '../report/Jaurnal.php', 48, 33, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2674, '200', '702000', 'Trial Balance', '../report/trial_balance.php', 49, 33, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2675, '200', '703000', 'General Ladger', '../report/gl_ledger.php', 50, 33, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2676, '200', '704000', 'Income Expense', '../report/inc_exp.php', 51, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2677, '200', '705000', 'Profit Loss', '../report/profit_loss.php', 52, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2678, '200', '706000', 'Balance Sheet', '../report/balance_sheet.php', 53, 33, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2679, '200', '707000', 'Chart Of Account', '../report/chart_of_account.php', 54, 33, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2680, '200', '800000', 'Bank & Account Info', 'Bank', 40, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2681, '200', '801000', 'Bank Info', '../transation/bank_acc_info.php', 41, 40, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2682, '200', '802000', 'Chaque Book Info', '../transation/Chq_book_info.php', 42, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2683, '200', '803000', 'Chaque Leaf Info', '../transation/Chq_leaf_info.php', 43, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('20002', 2684, '200', '804000', 'Vat Tax Info', '../transation/vat_tax_rate_info.php', 47, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '10002'),
('', 10301, '99', '100000', 'House Keeping', 'house', 1, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10302, '99', '101000', 'Code Master Setup', '../code_master/code_master.php', 6, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10303, '99', '102000', 'Opening Balance', '../transation/opening_balance.php', 7, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10304, '99', '104000', 'Database Backup', '../backup/database_backup.php', 60, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10305, '99', '105000', 'Year Process ', '../house_keeping/year_process.php', 69, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10306, '99', '106000', 'User Role Setup', '../house_keeping/user_roles.php', 70, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10307, '99', '107000', 'Office Setup', '../office/office_info.php', 90, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10308, '99', '200000', 'Setup', 'setup', 2, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10309, '99', '201000', 'Organization Info', '../organization/organization.php', 56, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10310, '99', '202000', 'Menu Define', '../menu_role/user_menu.php', 9, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10311, '99', '203000', 'Assign Menu to Role', '../menu_role/user_roles_details.php', 10, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10312, '99', '204000', 'Item Info', '../item/item.php', 58, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10313, '99', '300000', 'Account Master', 'acc', 3, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10314, '99', '301000', 'Account Open', '../account_and_bank_information/gl_account.php', 13, 3, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10315, '99', '302000', 'Account Role Setup', '../account_and_bank_information/acc_rule_setup.php', 14, 3, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10316, '99', '400000', 'Transaction', 'tran', 4, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10317, '99', '401000', 'Receive Voucher', '../transation/receipt_voucher.php', 15, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10318, '99', '402000', 'Payment Voucher', '../transation/payment_voucher.php', 16, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10319, '99', '405000', 'Contra Voucher', '../transation/contra.php', 19, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10320, '99', '406000', 'Journal Entry', '../transation/journal.php', 45, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10321, '99', '407000', 'Fund Received', '../transation/fund_received.php', 95, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10322, '99', '500000', 'Security Management', 'sec', 5, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10323, '99', '501000', 'Create New User with Role', '../menu_role/user_create.php', 11, 5, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10324, '99', '502000', 'Inactive User', '', 12, 5, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10325, '99', '600000', 'HR Management', 'HR Management', 20, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10326, '99', '601000', 'Employ Info', '../hr_emp/hr_emp.php', 21, 20, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10327, '99', '700000', 'Report', 'report', 33, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10328, '99', '701000', 'Journal', '../report/Jaurnal.php', 48, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10329, '99', '702000', 'Trial Balance', '../report/trial_balance.php', 49, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10330, '99', '703000', 'General Ladger', '../report/gl_ledger.php', 50, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10331, '99', '704000', 'Income Expense', '../report/inc_exp.php', 51, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10332, '99', '705000', 'Profit Loss', '../report/profit_loss.php', 52, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10333, '99', '706000', 'Balance Sheet', '../report/balance_sheet.php', 53, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10334, '99', '707000', 'Chart Of Account', '../report/chart_of_account.php', 54, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10335, '99', '800000', 'Bank & Account Info', 'Bank', 40, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10336, '99', '801000', 'Bank Info', '../bank_account_info/bank_acc_info.php', 41, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10337, '99', '802000', 'Chaque Book Info', '../bank_account_info/Chq_book_info.php', 42, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10338, '99', '803000', 'Chaque Leaf Info', '../bank_account_info/Chq_leaf_info.php', 43, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10339, '99', '804000', 'Vat Tax Info', '../bank_account_info/vat_tax_rate_info.php', 47, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10340, '99', '900000', '313 Bodri Qafela', 'Bodri ', 71, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10341, '99', '901000', 'All Member', '../bodri_qafela/member_view.php', 74, 71, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10342, '99', '902000', 'All Referred Person', '../bodri_qafela/referred_person_view.php', 93, 71, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10343, '99', '903000', 'Fund Received', '../bodri_qafela/fund_received_bycash.php', 94, 71, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10344, '99', '1000000', 'Purchase', 'Purchase', 83, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10345, '99', '1001000', 'Purchase Voucher', '../purchase/purchase_voucher.php', 84, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10346, '99', '1002000', 'Purchase Details', '../purchase/purchase_details.php', 85, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10347, '99', '1003000', 'Monthly Report', '../purchase/monthly.php', 86, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10348, '99', '1004000', 'On demand Report ', '../purchase/day_by_day.php', 87, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10349, '99', '1005000', 'Supplier Information', '../purchase/supp_info.php', 91, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10350, '99', '1100000', 'Sales', 'Sales', 88, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10351, '99', '1101000', 'Sales', '../sales/sales_voucher.php', 89, 88, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10352, '99', '1102000', 'Customer Information', '../sales/cust_info.php', 92, 88, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10561, '110', '100000', 'House Keeping', 'house', 1, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10562, '110', '101000', 'Code Master Setup', '../code_master/code_master.php', 6, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10563, '110', '102000', 'Opening Balance', '../transation/opening_balance.php', 7, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10564, '110', '104000', 'Database Backup', '../backup/database_backup.php', 60, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10565, '110', '105000', 'Year Process ', '../house_keeping/year_process.php', 69, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10566, '110', '106000', 'User Role Setup', '../house_keeping/user_roles.php', 70, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10567, '110', '107000', 'Office Setup', '../office/office_info.php', 90, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10568, '110', '108000', 'Menu Define', '../menu_role/user_menu.php', 96, 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10569, '110', '200000', 'Setup', 'setup', 2, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10570, '110', '201000', 'Organization Info', '../organization/organization.php', 56, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10571, '110', '203000', 'Assign Menu to Role', '../menu_role/user_roles_details.php', 10, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10572, '110', '204000', 'Item Info', '../item/item.php', 58, 2, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10573, '110', '300000', 'Account Master', 'acc', 3, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10574, '110', '301000', 'Account Open', '../account_and_bank_information/gl_account.php', 13, 3, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10575, '110', '302000', 'Account Role Setup', '../account_and_bank_information/acc_rule_setup.php', 14, 3, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10576, '110', '400000', 'Transaction', 'tran', 4, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10577, '110', '401000', 'Receive Voucher', '../transation/receipt_voucher.php', 15, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10578, '110', '402000', 'Payment Voucher', '../transation/payment_voucher.php', 16, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10579, '110', '405000', 'Contra Voucher', '../transation/contra.php', 19, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10580, '110', '406000', 'Journal Entry', '../transation/journal.php', 45, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10581, '110', '407000', 'Fund Received', '../transation/fund_received.php', 95, 4, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10582, '110', '500000', 'Security Management', 'sec', 5, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10583, '110', '501000', 'Create New User with Role', '../menu_role/user_create.php', 11, 5, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10584, '110', '502000', 'Inactive User', '', 12, 5, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10585, '110', '600000', 'HR Management', 'HR Management', 20, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10586, '110', '601000', 'Employ Info', '../hr_emp/hr_emp.php', 21, 20, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10587, '110', '700000', 'Report', 'report', 33, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10588, '110', '701000', 'Journal', '../report/Journal.php', 48, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10589, '110', '702000', 'Trial Balance', '../report/trial_balance.php', 49, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10590, '110', '703000', 'General Ladger', '../report/gl_ledger.php', 50, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10591, '110', '704000', 'Income Expense', '../report/inc_exp.php', 51, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10592, '110', '705000', 'Profit Loss', '../report/profit_loss.php', 52, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10593, '110', '706000', 'Balance Sheet', '../report/balance_sheet.php', 53, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10594, '110', '707000', 'Chart Of Account', '../report/chart_of_account.php', 54, 33, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10595, '110', '800000', 'Bank & Account Info', 'Bank', 40, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10596, '110', '801000', 'Bank Info', '../bank_account_info/bank_acc_info.php', 41, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10597, '110', '802000', 'Chaque Book Info', '../bank_account_info/Chq_book_info.php', 42, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10598, '110', '803000', 'Chaque Leaf Info', '../bank_account_info/Chq_leaf_info.php', 43, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10599, '110', '804000', 'Vat Tax Info', '../bank_account_info/vat_tax_rate_info.php', 47, 40, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10600, '110', '900000', '313 Bodri Qafela', 'Bodri ', 71, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10601, '110', '901000', 'All Member', '../bodri_qafela/member_view.php', 74, 71, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10602, '110', '902000', 'All Referred Person', '../bodri_qafela/referred_person_view.php', 93, 71, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10603, '110', '1000000', 'Purchase', 'Purchase', 83, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10604, '110', '1001000', 'Purchase Voucher', '../purchase/purchase_voucher.php', 84, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10605, '110', '1002000', 'Purchase Details', '../purchase/purchase_details.php', 85, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10606, '110', '1003000', 'Monthly Report', '../purchase/monthly.php', 86, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10607, '110', '1004000', 'On demand Report ', '../purchase/day_by_day.php', 87, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10608, '110', '1005000', 'Supplier Information', '../purchase/supp_info.php', 91, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10609, '110', '1006000', 'Purchase Return', '../purchase/purchase_return.php', 97, 83, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10610, '110', '1100000', 'Sales', 'Sales', 88, 0, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10611, '110', '1101000', 'Sales', '../sales/sales_voucher.php', 89, 88, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
('', 10612, '110', '1102000', 'Customer Information', '../sales/cust_info.php', 92, 88, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `supp_info`
--

CREATE TABLE `supp_info` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supp_type` int(5) NOT NULL,
  `supp_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supp_add` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supp_business_category` int(5) NOT NULL,
  `supp_contact_per` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supp_location_code` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supp_TIN_no` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supp_VAT_no` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supp_TDS_no` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Link_gl_code` int(15) NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_created_on` date NOT NULL,
  `ss_modifier` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` date NOT NULL,
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supp_info`
--

INSERT INTO `supp_info` (`id`, `office_code`, `supp_type`, `supp_name`, `supp_add`, `supp_business_category`, `supp_contact_per`, `supp_location_code`, `supp_TIN_no`, `supp_VAT_no`, `supp_TDS_no`, `Link_gl_code`, `ss_creator`, `ss_created_on`, `ss_modifier`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '9900', 1, 'Mr. ABC Traders ', '32,  motijilee dhaka', 1, '1234', '666', '777', '888', '12345678912345678', 0, 'admin', '2017-07-01', '', '0000-00-00', '9900'),
(4, '9900', 2, 'bangladesh shop', '32,  motijilee dhaka', 2, 'Mr. ABC ', '666', '122ww', '2333', '12345678912345678', 0, 'admin', '2017-07-01', '', '0000-00-00', '9900');

-- --------------------------------------------------------

--
-- Table structure for table `tax_vat_rate_details`
--

CREATE TABLE `tax_vat_rate_details` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl_no` int(5) NOT NULL,
  `from_amount` decimal(15,2) NOT NULL,
  `to_amount` decimal(15,2) NOT NULL,
  `tax_on_rate` int(3) NOT NULL,
  `ss_creator` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `ss_modifier` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modifier_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_vat_rate_details`
--

INSERT INTO `tax_vat_rate_details` (`id`, `office_code`, `tax_type`, `item_code`, `sl_no`, `from_amount`, `to_amount`, `tax_on_rate`, `ss_creator`, `ss_creator_on`, `ss_modifier`, `ss_modifier_on`, `ss_org_no`) VALUES
(1, '20002', '1', '8', 1, '0.00', '100000.00', 5, 'admin', '2020-01-22 09:34:00', '', '2020-01-22 09:34:00', '10002'),
(2, '20002', '1', '8', 3, '20000.00', '30000.00', 10, 'admin', '2020-01-22 09:41:11', '', '2020-01-22 09:41:11', '10002'),
(3, '20002', '1', '8', 4, '30000.00', '40000.00', 13, 'admin', '2020-01-22 09:42:02', '', '2020-01-22 09:42:02', '10002'),
(4, '20002', '1', '8', 5, '40000.00', '50000.00', 17, 'admin', '2020-01-22 09:43:05', '', '2020-01-22 09:43:05', '10002'),
(5, '20002', '1', '8', 6, '60000.00', '70000.00', 18, 'admin', '2020-01-22 09:58:48', '', '2020-01-22 09:58:48', '10002'),
(6, '20002', '1', '9', 1, '0.00', '100000.00', 5, 'admin', '2020-01-22 10:16:11', '', '2020-01-22 10:16:11', '10002'),
(7, '20002', '1', '8', 2, '5000.00', '20000.00', 6, 'admin', '2020-01-22 10:22:23', '', '2020-01-22 10:22:23', '10002'),
(8, '20002', '1', '8', 7, '100000.00', '200000.00', 25, 'admin', '2020-01-22 10:50:59', '', '2020-01-22 10:50:59', '10002');

-- --------------------------------------------------------

--
-- Table structure for table `tax_vat_rate_master`
--

CREATE TABLE `tax_vat_rate_master` (
  `id` int(11) NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fin_year` int(10) NOT NULL,
  `active_form` date NOT NULL,
  `all_item` int(1) NOT NULL COMMENT '1=all item , 2=individul item',
  `item_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `under_account` bigint(15) NOT NULL,
  `is_current` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `ss_modifier` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modifier_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `ss_org_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_vat_rate_master`
--

INSERT INTO `tax_vat_rate_master` (`id`, `office_code`, `tax_type`, `fin_year`, `active_form`, `all_item`, `item_code`, `under_account`, `is_current`, `ss_creator`, `ss_creator_on`, `ss_modifier`, `ss_modifier_on`, `ss_org_no`) VALUES
(1, '9900', '1', 2019, '2020-01-01', 0, '8', 0, '1', '1', '2020-01-22 06:44:49', '', '2020-01-22 06:44:49', ''),
(2, '9900', '1', 2019, '2020-01-02', 0, '9', 0, '1', '1', '2020-01-22 06:50:39', '', '2020-01-22 06:50:39', ''),
(3, '9900', '1', 2019, '2020-02-20', 1, '', 101000000000, '1', '1', '2020-02-20 07:58:46', '', '2020-02-20 07:58:46', ''),
(4, '9900', '1', 2019, '2020-02-20', 1, '', 101000000000, '1', '1', '2020-02-20 07:59:12', '', '2020-02-20 07:59:12', ''),
(5, '9900', '2', 2020, '2020-02-20', 1, '', 200000000000, '1', '1', '2020-02-20 08:12:37', '', '2020-02-20 08:12:37', '');

-- --------------------------------------------------------

--
-- Table structure for table `tran_details`
--

CREATE TABLE `tran_details` (
  `tran_no` int(11) NOT NULL,
  `auto_tran_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tran_date` date NOT NULL,
  `back_value_date` datetime NOT NULL,
  `gl_acc_code` bigint(20) UNSIGNED NOT NULL,
  `tran_mode` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vaucher_type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_amt_loc` int(11) NOT NULL,
  `cr_amt_loc` int(11) NOT NULL,
  `dr_amt_fc` int(11) NOT NULL,
  `cr_amt_fc` int(11) NOT NULL,
  `bank_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cheque_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cheque_date` date NOT NULL,
  `curr_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exch_rate` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reversaled` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rev_tran_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_tran` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_by_1` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_date_1` datetime NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` datetime NOT NULL,
  `ss_modified` int(11) NOT NULL,
  `ss_modified_on` datetime NOT NULL,
  `ss_org_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tran_details`
--

INSERT INTO `tran_details` (`tran_no`, `auto_tran_no`, `office_code`, `year_code`, `batch_no`, `tran_date`, `back_value_date`, `gl_acc_code`, `tran_mode`, `vaucher_type`, `dr_amt_loc`, `cr_amt_loc`, `dr_amt_fc`, `cr_amt_fc`, `bank_name`, `branch_name`, `cheque_no`, `cheque_date`, `curr_code`, `exch_rate`, `description`, `reversaled`, `rev_tran_no`, `auto_tran`, `posted`, `verified_by_1`, `verified_date_1`, `ss_creator`, `ss_creator_on`, `ss_modified`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '', '20002', '2017', '2020056', '2020-03-01', '0000-00-00 00:00:00', 101020201010, 'CR', 'DR', 6000, 0, 0, 0, '', '', '', '0000-00-00', '', 0, '01738356180', '', '', '', '', '', '0000-00-00 00:00:00', 'superadmin', '2020-03-01 16:16:47', 0, '0000-00-00 00:00:00', 9900),
(2, '', '20002', '2017', '2020056', '2020-03-01', '0000-00-00 00:00:00', 101020102000, 'CR', 'CR', 0, 6000, 0, 0, '', '', '', '0000-00-00', '', 0, '01738356180', '', '', '', '', '', '0000-00-00 00:00:00', 'superadmin', '2020-03-01 16:16:47', 0, '0000-00-00 00:00:00', 9900);

--
-- Triggers `tran_details`
--
DELIMITER $$
CREATE TRIGGER `tran_delete` AFTER DELETE ON `tran_details` FOR EACH ROW INSERT INTO `tran_details_reverse` (`tran_no`, `auto_tran_no`, `office_code`, `year_code`, `batch_no`, `tran_date`, `back_value_date`, `gl_acc_code`, `tran_mode`, `vaucher_type`, `dr_amt_loc`, `cr_amt_loc`, `dr_amt_fc`, `cr_amt_fc`, `bank_name`, `branch_name`, `cheque_no`, `cheque_date`, `curr_code`, `exch_rate`, `description`, `reversaled`, `rev_tran_no`, `auto_tran`, `posted`, `verified_by_1`, `verified_date_1`, `ss_creator`, `ss_creator_on`, `ss_modified`, `ss_modified_on`, `ss_org_no`) VALUES (old.tran_no, old.auto_tran_no, old.office_code, old.year_code,old.batch_no, old.tran_date, old.back_value_date, old.gl_acc_code, old.tran_mode, old.vaucher_type, old.dr_amt_loc, old.cr_amt_loc, old.dr_amt_fc, old.cr_amt_fc, old.bank_name, old.branch_name, old.cheque_no, old.cheque_date, old.curr_code, old.exch_rate, old.description, old.reversaled, old.rev_tran_no, old.auto_tran, old.posted, old.verified_by_1, old.verified_date_1, old.ss_creator, old.ss_creator_on, old.ss_modified, old.ss_modified_on, old.ss_org_no)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tran_history` AFTER INSERT ON `tran_details` FOR EACH ROW INSERT INTO `tran_details_history` (`tran_no`, `auto_tran_no`, `office_code`, `year_code`, `batch_no`, `tran_date`, `back_value_date`, `gl_acc_code`, `tran_mode`, `vaucher_type`, `dr_amt_loc`, `cr_amt_loc`, `dr_amt_fc`, `cr_amt_fc`, `bank_name`, `branch_name`, `cheque_no`, `cheque_date`, `curr_code`, `exch_rate`, `description`, `reversaled`, `rev_tran_no`, `auto_tran`, `posted`, `verified_by_1`, `verified_date_1`, `ss_creator`, `ss_creator_on`, `ss_modified`, `ss_modified_on`, `ss_org_no`) VALUES (new.tran_no, new.auto_tran_no, new.office_code, new.year_code,new.batch_no, new.tran_date, new.back_value_date, new.gl_acc_code, new.tran_mode, new.vaucher_type, new.dr_amt_loc, new.cr_amt_loc, new.dr_amt_fc, new.cr_amt_fc, new.bank_name, new.branch_name, new.cheque_no, new.cheque_date, new.curr_code, new.exch_rate, new.description, new.reversaled, new.rev_tran_no, new.auto_tran, new.posted, new.verified_by_1, new.verified_date_1, new.ss_creator, new.ss_creator_on, new.ss_modified, new.ss_modified_on, new.ss_org_no)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tran_details_history`
--

CREATE TABLE `tran_details_history` (
  `tran_no` int(11) NOT NULL,
  `auto_tran_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tran_date` date NOT NULL,
  `back_value_date` datetime NOT NULL,
  `gl_acc_code` bigint(20) UNSIGNED NOT NULL,
  `tran_mode` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vaucher_type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_amt_loc` int(11) NOT NULL,
  `cr_amt_loc` int(11) NOT NULL,
  `dr_amt_fc` int(11) NOT NULL,
  `cr_amt_fc` int(11) NOT NULL,
  `bank_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cheque_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cheque_date` date NOT NULL,
  `curr_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exch_rate` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reversaled` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rev_tran_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_tran` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_by_1` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_date_1` datetime NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` datetime NOT NULL,
  `ss_modified` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_modified_on` datetime NOT NULL,
  `ss_org_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tran_details_history`
--

INSERT INTO `tran_details_history` (`tran_no`, `auto_tran_no`, `office_code`, `year_code`, `batch_no`, `tran_date`, `back_value_date`, `gl_acc_code`, `tran_mode`, `vaucher_type`, `dr_amt_loc`, `cr_amt_loc`, `dr_amt_fc`, `cr_amt_fc`, `bank_name`, `branch_name`, `cheque_no`, `cheque_date`, `curr_code`, `exch_rate`, `description`, `reversaled`, `rev_tran_no`, `auto_tran`, `posted`, `verified_by_1`, `verified_date_1`, `ss_creator`, `ss_creator_on`, `ss_modified`, `ss_modified_on`, `ss_org_no`) VALUES
(1, '', '20002', '2017', '2020056', '2020-03-01', '0000-00-00 00:00:00', 101020201010, 'CR', 'DR', 6000, 0, 0, 0, '', '', '', '0000-00-00', '', 0, '01738356180', '', '', '', '', '', '0000-00-00 00:00:00', 'superadmin', '2020-03-01 16:16:47', '0', '0000-00-00 00:00:00', 9900),
(2, '', '20002', '2017', '2020056', '2020-03-01', '0000-00-00 00:00:00', 101020102000, 'CR', 'CR', 0, 6000, 0, 0, '', '', '', '0000-00-00', '', 0, '01738356180', '', '', '', '', '', '0000-00-00 00:00:00', 'superadmin', '2020-03-01 16:16:47', '0', '0000-00-00 00:00:00', 9900);

-- --------------------------------------------------------

--
-- Table structure for table `tran_details_reverse`
--

CREATE TABLE `tran_details_reverse` (
  `tran_no` int(11) NOT NULL,
  `auto_tran_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tran_date` date NOT NULL,
  `back_value_date` datetime NOT NULL,
  `gl_acc_code` bigint(20) UNSIGNED NOT NULL,
  `tran_mode` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vaucher_type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_amt_loc` int(11) NOT NULL,
  `cr_amt_loc` int(11) NOT NULL,
  `dr_amt_fc` int(11) NOT NULL,
  `cr_amt_fc` int(11) NOT NULL,
  `bank_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cheque_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cheque_date` date NOT NULL,
  `curr_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exch_rate` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reversaled` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rev_tran_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_tran` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_by_1` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_date_1` datetime NOT NULL,
  `ss_creator` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ss_creator_on` datetime NOT NULL,
  `ss_modified` int(11) NOT NULL,
  `ss_modified_on` datetime NOT NULL,
  `ss_org_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `tran_details_reverse`
--
DELIMITER $$
CREATE TRIGGER `new_tigger1` BEFORE INSERT ON `tran_details_reverse` FOR EACH ROW INSERT INTO `tran_details` (`tran_no`, `auto_tran_no`, `office_code`, `year_code`, `batch_no`, `tran_date`, `back_value_date`, `gl_acc_code`, `tran_mode`, `vaucher_type`, `dr_amt_loc`, `cr_amt_loc`, `dr_amt_fc`, `cr_amt_fc`, `bank_name`, `branch_name`, `cheque_no`, `cheque_date`, `curr_code`, `exch_rate`, `description`, `reversaled`, `rev_tran_no`, `auto_tran`, `posted`, `verified_by_1`, `verified_date_1`, `ss_creator`, `ss_creator_on`, `ss_modified`, `ss_modified_on`, `ss_org_no`) VALUES (new.tran_no, new.auto_tran_no, new.office_code, new.year_code,new.batch_no, new.tran_date, new.back_value_date, new.gl_acc_code, new.tran_mode, new.vaucher_type, new.dr_amt_loc, new.cr_amt_loc, new.dr_amt_fc, new.cr_amt_fc, new.bank_name, new.branch_name, new.cheque_no, new.cheque_date, new.curr_code, new.exch_rate, new.description, new.reversaled, new.rev_tran_no, new.auto_tran, new.posted, new.verified_by_1, new.verified_date_1, new.ss_creator, new.ss_creator_on, new.ss_modified, new.ss_modified_on, new.ss_org_no)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`, `created_at`, `updated_at`) VALUES
(1, 34, 'Amtali', 'আমতলী', '0000-00-00 00:00:00', '2016-04-06 06:48:39'),
(2, 34, 'Bamna ', 'বামনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 34, 'Barguna Sadar ', 'বরগুনা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 34, 'Betagi ', 'বেতাগি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 34, 'Patharghata ', 'পাথরঘাটা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 34, 'Taltali ', 'তালতলী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 35, 'Muladi ', 'মুলাদি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 35, 'Babuganj ', 'বাবুগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 35, 'Agailjhara ', 'আগাইলঝরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 35, 'Barisal Sadar ', 'বরিশাল সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 35, 'Bakerganj ', 'বাকেরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 35, 'Banaripara ', 'বানাড়িপারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 35, 'Gaurnadi ', 'গৌরনদী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 35, 'Hizla ', 'হিজলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 35, 'Mehendiganj ', 'মেহেদিগঞ্জ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 35, 'Wazirpur ', 'ওয়াজিরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 36, 'Bhola Sadar ', 'ভোলা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 36, 'Burhanuddin ', 'বুরহানউদ্দিন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 36, 'Char Fasson ', 'চর ফ্যাশন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 36, 'Daulatkhan ', 'দৌলতখান', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 36, 'Lalmohan ', 'লালমোহন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 36, 'Manpura ', 'মনপুরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 36, 'Tazumuddin ', 'তাজুমুদ্দিন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 37, 'Jhalokati Sadar ', 'ঝালকাঠি সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 37, 'Kathalia ', 'কাঁঠালিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 37, 'Nalchity ', 'নালচিতি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 37, 'Rajapur ', 'রাজাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 38, 'Bauphal ', 'বাউফল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 38, 'Dashmina ', 'দশমিনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 38, 'Galachipa ', 'গলাচিপা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 38, 'Kalapara ', 'কালাপারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 38, 'Mirzaganj ', 'মির্জাগঞ্জ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 38, 'Patuakhali Sadar ', 'পটুয়াখালী সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 38, 'Dumki ', 'ডুমকি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 38, 'Rangabali ', 'রাঙ্গাবালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 39, 'Kaukhali', 'কাউখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 39, 'Nazirpur', 'নাজিরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 39, 'Nesarabad', 'নেসারাবাদ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 39, 'Zianagar', 'জিয়ানগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 40, 'Thanchi', 'থানচি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 40, 'Lama', 'লামা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 40, 'Ali kadam', 'আলী কদম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 40, 'Ruma', 'রুমা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 41, 'Brahmanbaria Sadar ', 'ব্রাহ্মণবাড়িয়া সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 41, 'Ashuganj ', 'আশুগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 41, 'Nasirnagar ', 'নাসির নগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 41, 'Nabinagar ', 'নবীনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 41, 'Sarail ', 'সরাইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 41, 'Kasba ', 'কসবা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 41, 'Akhaura ', 'আখাউরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 41, 'Bancharampur ', 'বাঞ্ছারামপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 41, 'Bijoynagar ', 'বিজয় নগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 42, 'Haimchar', 'হাইমচর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 42, 'Haziganj', 'হাজীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 42, 'Kachua', 'কচুয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 42, 'Shahrasti', 'শাহরাস্তি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 43, 'Anwara ', 'আনোয়ারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 43, 'Banshkhali ', 'বাশখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 43, 'Boalkhali ', 'বোয়ালখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 43, 'Chandanaish ', 'চন্দনাইশ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 43, 'Fatikchhari ', 'ফটিকছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 43, 'Hathazari ', 'হাঠহাজারী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 43, 'Lohagara ', 'লোহাগারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 43, 'Mirsharai ', 'মিরসরাই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 43, 'Patiya ', 'পটিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 43, 'Rangunia ', 'রাঙ্গুনিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 43, 'Raozan ', 'রাউজান', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 43, 'Sandwip ', 'সন্দ্বীপ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 43, 'Satkania ', 'সাতকানিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 43, 'Sitakunda ', 'সীতাকুণ্ড', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 44, 'Barura ', 'বড়ুরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 44, 'Brahmanpara ', 'ব্রাহ্মণপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 44, 'Burichong ', 'বুড়িচং', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 44, 'Chandina ', 'চান্দিনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 44, 'Chauddagram ', 'চৌদ্দগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 44, 'Daudkandi ', 'দাউদকান্দি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 44, 'Debidwar ', 'দেবীদ্বার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 44, 'Homna ', 'হোমনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 44, 'Comilla Sadar ', 'কুমিল্লা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 44, 'Laksam ', 'লাকসাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 44, 'Monohorgonj ', 'মনোহরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 44, 'Meghna ', 'মেঘনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 44, 'Muradnagar ', 'মুরাদনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 44, 'Nangalkot ', 'নাঙ্গালকোট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 44, 'Comilla Sadar South ', 'কুমিল্লা সদর দক্ষিণ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 44, 'Titas ', 'তিতাস', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 45, 'Chakaria ', 'চকরিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 45, 'Chakaria ', 'চকরিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 45, 'Cox\'s Bazar Sadar ', 'কক্স বাজার সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 45, 'Kutubdia ', 'কুতুবদিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 45, 'Maheshkhali ', 'মহেশখালী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 45, 'Ramu ', 'রামু', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 45, 'Teknaf ', 'টেকনাফ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 45, 'Ukhia ', 'উখিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 45, 'Pekua ', 'পেকুয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 46, 'Feni Sadar', 'ফেনী সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 46, 'Daganbhyan', 'দাগানভিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 46, 'Parshuram', 'পরশুরাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 46, 'Fhulgazi', 'ফুলগাজি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 46, 'Sonagazi', 'সোনাগাজি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 47, 'Dighinala ', 'দিঘিনালা ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 47, 'Khagrachhari ', 'খাগড়াছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 47, 'Lakshmichhari ', 'লক্ষ্মীছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 47, 'Mahalchhari ', 'মহলছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 47, 'Manikchhari ', 'মানিকছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 47, 'Matiranga ', 'মাটিরাঙ্গা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 47, 'Panchhari ', 'পানছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 47, 'Ramgarh ', 'রামগড়', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 48, 'Lakshmipur Sadar ', 'লক্ষ্মীপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 48, 'Raipur ', 'রায়পুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 48, 'Ramganj ', 'রামগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 48, 'Ramgati ', 'রামগতি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 48, 'Komol Nagar ', 'কমল নগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 49, 'Noakhali Sadar ', 'নোয়াখালী সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 49, 'Begumganj ', 'বেগমগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 49, 'Chatkhil ', 'চাটখিল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 49, 'Companyganj ', 'কোম্পানীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 49, 'Shenbag ', 'শেনবাগ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 49, 'Hatia ', 'হাতিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 49, 'Kobirhat ', 'কবিরহাট ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 49, 'Sonaimuri ', 'সোনাইমুরি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 49, 'Suborno Char ', 'সুবর্ণ চর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 50, 'Rangamati Sadar ', 'রাঙ্গামাটি সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 50, 'Belaichhari ', 'বেলাইছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 50, 'Bagaichhari ', 'বাঘাইছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 50, 'Barkal ', 'বরকল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 50, 'Juraichhari ', 'জুরাইছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 50, 'Rajasthali ', 'রাজাস্থলি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 50, 'Kaptai ', 'কাপ্তাই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 50, 'Langadu ', 'লাঙ্গাডু', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 50, 'Nannerchar ', 'নান্নেরচর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 50, 'Kaukhali ', 'কাউখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 2, 'Faridpur Sadar ', 'ফরিদপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 2, 'Boalmari ', 'বোয়ালমারী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 2, 'Alfadanga ', 'আলফাডাঙ্গা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 2, 'Madhukhali ', 'মধুখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 2, 'Bhanga ', 'ভাঙ্গা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 2, 'Nagarkanda ', 'নগরকান্ড', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 2, 'Charbhadrasan ', 'চরভদ্রাসন ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 2, 'Sadarpur ', 'সদরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 2, 'Shaltha ', 'শালথা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 3, 'Kaliakior', 'কালিয়াকৈর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 3, 'Kapasia', 'কাপাসিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 3, 'Sripur', 'শ্রীপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 3, 'Tongi', 'টঙ্গি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 4, 'Gopalganj Sadar ', 'গোপালগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 4, 'Kashiani ', 'কাশিয়ানি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 4, 'Kotalipara ', 'কোটালিপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 4, 'Muksudpur ', 'মুকসুদপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 4, 'Tungipara ', 'টুঙ্গিপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 5, 'Dewanganj ', 'দেওয়ানগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 5, 'Baksiganj ', 'বকসিগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 5, 'Islampur ', 'ইসলামপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 5, 'Jamalpur Sadar ', 'জামালপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 5, 'Madarganj ', 'মাদারগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 5, 'Melandaha ', 'মেলানদাহা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 5, 'Sarishabari ', 'সরিষাবাড়ি ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 5, 'Narundi Police I.C', 'নারুন্দি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 6, 'Astagram ', 'অষ্টগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 6, 'Bajitpur ', 'বাজিতপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 6, 'Bhairab ', 'ভৈরব', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 6, 'Hossainpur ', 'হোসেনপুর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 6, 'Itna ', 'ইটনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 6, 'Karimganj ', 'করিমগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 6, 'Katiadi ', 'কতিয়াদি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 6, 'Kishoreganj Sadar ', 'কিশোরগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 6, 'Kuliarchar ', 'কুলিয়ারচর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 6, 'Mithamain ', 'মিঠামাইন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 6, 'Nikli ', 'নিকলি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 6, 'Pakundia ', 'পাকুন্ডা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 6, 'Tarail ', 'তাড়াইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 7, 'Kalkini', 'কালকিনি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 7, 'Rajoir', 'রাজইর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 7, 'Shibchar', 'শিবচর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 8, 'Manikganj Sadar ', 'মানিকগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 8, 'Singair ', 'সিঙ্গাইর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 8, 'Shibalaya ', 'শিবালয়', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 8, 'Saturia ', 'সাঠুরিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 8, 'Harirampur ', 'হরিরামপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 8, 'Ghior ', 'ঘিওর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 8, 'Daulatpur ', 'দৌলতপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 9, 'Lohajang ', 'লোহাজং', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 9, 'Sreenagar ', 'শ্রীনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 9, 'Munshiganj Sadar ', 'মুন্সিগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 9, 'Sirajdikhan ', 'সিরাজদিখান', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 9, 'Tongibari ', 'টঙ্গিবাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 9, 'Gazaria ', 'গজারিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 10, 'Bhaluka', 'ভালুকা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 10, 'Trishal', 'ত্রিশাল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 10, 'Haluaghat', 'হালুয়াঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 10, 'Muktagachha', 'মুক্তাগাছা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 10, 'Dhobaura', 'ধবারুয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 10, 'Gaffargaon', 'গফরগাঁও', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 10, 'Gauripur', 'গৌরিপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 10, 'Nandail', 'নন্দাইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 10, 'Phulpur', 'ফুলপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 11, 'Araihazar ', 'আড়াইহাজার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 11, 'Sonargaon ', 'সোনারগাঁও', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 11, 'Bandar', 'বান্দার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 11, 'Naryanganj Sadar ', 'নারায়ানগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 11, 'Rupganj ', 'রূপগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 11, 'Siddirgonj ', 'সিদ্ধিরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 12, 'Belabo ', 'বেলাবো', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 12, 'Monohardi ', 'মনোহরদি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 12, 'Narsingdi Sadar ', 'নরসিংদী সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 12, 'Palash ', 'পলাশ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 12, 'Raipura , Narsingdi', 'রায়পুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 12, 'Shibpur ', 'শিবপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 13, 'Atpara Upazilla', 'আটপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 13, 'Madan Upazilla', 'মদন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 14, 'Baliakandi ', 'বালিয়াকান্দি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 14, 'Goalandaghat ', 'গোয়ালন্দ ঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 14, 'Pangsha ', 'পাংশা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 14, 'Kalukhali ', 'কালুখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 14, 'Rajbari Sadar ', 'রাজবাড়ি সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 15, 'Damudya ', 'দামুদিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 15, 'Naria ', 'নড়িয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 15, 'Jajira ', 'জাজিরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 15, 'Bhedarganj ', 'ভেদারগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 15, 'Gosairhat ', 'গোসাইর হাট ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 16, 'Jhenaigati ', 'ঝিনাইগাতি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 16, 'Nakla ', 'নাকলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 16, 'Nalitabari ', 'নালিতাবাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 16, 'Sherpur Sadar ', 'শেরপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 16, 'Sreebardi ', 'শ্রীবরদি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 17, 'Tangail Sadar ', 'টাঙ্গাইল সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 17, 'Sakhipur ', 'সখিপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 17, 'Basail ', 'বসাইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 17, 'Madhupur ', 'মধুপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 17, 'Ghatail ', 'ঘাটাইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 17, 'Kalihati ', 'কালিহাতি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 17, 'Nagarpur ', 'নগরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 17, 'Mirzapur ', 'মির্জাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 17, 'Gopalpur ', 'গোপালপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 17, 'Delduar ', 'দেলদুয়ার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 17, 'Bhuapur ', 'ভুয়াপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 17, 'Dhanbari ', 'ধানবাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 55, 'Bagerhat Sadar ', 'বাগেরহাট সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 55, 'Chitalmari ', 'চিতলমাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 55, 'Fakirhat ', 'ফকিরহাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 55, 'Kachua ', 'কচুয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 55, 'Mollahat ', 'মোল্লাহাট ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 55, 'Mongla ', 'মংলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 55, 'Morrelganj ', 'মরেলগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 55, 'Rampal ', 'রামপাল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 55, 'Sarankhola ', 'স্মরণখোলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 56, 'Damurhuda ', 'দামুরহুদা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 56, 'Chuadanga-S ', 'চুয়াডাঙ্গা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 56, 'Jibannagar ', 'জীবন নগর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 56, 'Alamdanga ', 'আলমডাঙ্গা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 57, 'Abhaynagar ', 'অভয়নগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 57, 'Keshabpur ', 'কেশবপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 57, 'Bagherpara ', 'বাঘের পাড়া ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 57, 'Jessore Sadar ', 'যশোর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 57, 'Chaugachha ', 'চৌগাছা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 57, 'Manirampur ', 'মনিরামপুর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 57, 'Jhikargachha ', 'ঝিকরগাছা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 57, 'Sharsha ', 'সারশা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 58, 'Jhenaidah Sadar ', 'ঝিনাইদহ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 58, 'Maheshpur ', 'মহেশপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 58, 'Kaliganj ', 'কালীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 58, 'Kotchandpur ', 'কোট চাঁদপুর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 58, 'Shailkupa ', 'শৈলকুপা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 58, 'Harinakunda ', 'হাড়িনাকুন্দা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 59, 'Terokhada ', 'তেরোখাদা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 59, 'Batiaghata ', 'বাটিয়াঘাটা ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 59, 'Dacope ', 'ডাকপে', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 59, 'Dumuria ', 'ডুমুরিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 59, 'Dighalia ', 'দিঘলিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 59, 'Koyra ', 'কয়ড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 59, 'Paikgachha ', 'পাইকগাছা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 59, 'Phultala ', 'ফুলতলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 59, 'Rupsa ', 'রূপসা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 60, 'Kumarkhali', 'কুমারখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 60, 'Daulatpur', 'দৌলতপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 60, 'Mirpur', 'মিরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 60, 'Bheramara', 'ভেরামারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 60, 'Khoksa', 'খোকসা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 61, 'Magura Sadar ', 'মাগুরা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 61, 'Mohammadpur ', 'মোহাম্মাদপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 61, 'Shalikha ', 'শালিখা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 61, 'Sreepur ', 'শ্রীপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 62, 'angni ', 'আংনি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 62, 'Mujib Nagar ', 'মুজিব নগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 62, 'Meherpur-S ', 'মেহেরপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 63, 'Kalia Upazilla', 'কালিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 64, 'Satkhira Sadar ', 'সাতক্ষীরা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 64, 'Assasuni ', 'আসসাশুনি ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 64, 'Debhata ', 'দেভাটা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 64, 'Tala ', 'তালা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 64, 'Kalaroa ', 'কলরোয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 64, 'Kaliganj ', 'কালীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 64, 'Shyamnagar ', 'শ্যামনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 18, 'Adamdighi', 'আদমদিঘী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 18, 'Sherpur', 'শেরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 18, 'Dhunat', 'ধুনট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 18, 'Gabtali', 'গাবতলি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 18, 'Kahaloo', 'কাহালু', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 18, 'Nandigram', 'নন্দিগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 18, 'Shibganj', 'শিবগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 18, 'Sonatala', 'সোনাতলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 19, 'Akkelpur', 'আক্কেলপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 19, 'Kalai', 'কালাই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 19, 'Khetlal', 'খেতলাল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 19, 'Panchbibi', 'পাঁচবিবি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 20, 'Naogaon Sadar ', 'নওগাঁ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 20, 'Mohadevpur ', 'মহাদেবপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 20, 'Manda ', 'মান্দা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 20, 'Niamatpur ', 'নিয়ামতপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 20, 'Atrai ', 'আত্রাই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 20, 'Raninagar ', 'রাণীনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 20, 'Patnitala ', 'পত্নীতলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 20, 'Dhamoirhat ', 'ধামইরহাট ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 20, 'Sapahar ', 'সাপাহার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 20, 'Porsha ', 'পোরশা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 20, 'Badalgachhi ', 'বদলগাছি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 21, 'Natore Sadar ', 'নাটোর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 21, 'Baraigram ', 'বড়াইগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 21, 'Bagatipara ', 'বাগাতিপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 21, 'Lalpur ', 'লালপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 21, 'Natore Sadar ', 'নাটোর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 21, 'Baraigram ', 'বড়াই গ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 22, 'Bholahat ', 'ভোলাহাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 22, 'Gomastapur ', 'গোমস্তাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 22, 'Nachole ', 'নাচোল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 22, 'Nawabganj Sadar ', 'নবাবগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 22, 'Shibganj ', 'শিবগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 23, 'Atgharia ', 'আটঘরিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 23, 'Bera ', 'বেড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 23, 'Bhangura ', 'ভাঙ্গুরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 23, 'Chatmohar ', 'চাটমোহর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 23, 'Faridpur ', 'ফরিদপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 23, 'Ishwardi ', 'ঈশ্বরদী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 23, 'Pabna Sadar ', 'পাবনা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 23, 'Santhia ', 'সাথিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 23, 'Sujanagar ', 'সুজানগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 24, 'Bagha', 'বাঘা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 24, 'Bagmara', 'বাগমারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 24, 'Charghat', 'চারঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 24, 'Durgapur', 'দুর্গাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 24, 'Godagari', 'গোদাগারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 24, 'Mohanpur', 'মোহনপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 24, 'Paba', 'পবা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 24, 'Puthia', 'পুঠিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 24, 'Tanore', 'তানোর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 25, 'Sirajganj Sadar ', 'সিরাজগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 25, 'Belkuchi ', 'বেলকুচি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 25, 'Chauhali ', 'চৌহালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 25, 'Kamarkhanda ', 'কামারখান্দা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 25, 'Kazipur ', 'কাজীপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 25, 'Raiganj ', 'রায়গঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 25, 'Shahjadpur ', 'শাহজাদপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 25, 'Tarash ', 'তারাশ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 25, 'Ullahpara ', 'উল্লাপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 26, 'Birampur ', 'বিরামপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 26, 'Birganj', 'বীরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 26, 'Biral ', 'বিড়াল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 26, 'Bochaganj ', 'বোচাগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 26, 'Chirirbandar ', 'চিরিরবন্দর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 26, 'Phulbari ', 'ফুলবাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 26, 'Ghoraghat ', 'ঘোড়াঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 26, 'Hakimpur ', 'হাকিমপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 26, 'Kaharole ', 'কাহারোল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 26, 'Khansama ', 'খানসামা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 26, 'Dinajpur Sadar ', 'দিনাজপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 26, 'Parbatipur ', 'পার্বতীপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 27, 'Fulchhari', 'ফুলছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 27, 'Palashbari', 'পলাশবাড়ী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 27, 'Saghata', 'সাঘাটা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 28, 'Nageshwari', 'নাগেশ্বরী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 28, 'Phulbari', 'ফুলবাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 28, 'Rajarhat', 'রাজারহাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 28, 'Ulipur', 'উলিপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 28, 'Chilmari', 'চিলমারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 28, 'Rowmari', 'রউমারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 29, 'Aditmari', 'আদিতমারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 29, 'Kaliganj', 'কালীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 29, 'Hatibandha', 'হাতিবান্ধা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 29, 'Patgram', 'পাটগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 30, 'Saidpur', 'সৈয়দপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 30, 'Jaldhaka', 'জলঢাকা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 30, 'Domar', 'ডোমার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 30, 'Dimla', 'ডিমলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 31, 'Debiganj', 'দেবীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 31, 'Boda', 'বোদা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 31, 'Atwari', 'আটোয়ারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 31, 'Tetulia', 'তেতুলিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 32, 'Badarganj', 'বদরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 32, 'Mithapukur', 'মিঠাপুকুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 32, 'Gangachara', 'গঙ্গাচরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 32, 'Kaunia', 'কাউনিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 32, 'Pirgachha', 'পীরগাছা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 32, 'Pirganj', 'পীরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 32, 'Taraganj', 'তারাগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 33, 'Thakurgaon Sadar ', 'ঠাকুরগাঁও সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 33, 'Pirganj ', 'পীরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 33, 'Baliadangi ', 'বালিয়াডাঙ্গি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 33, 'Haripur ', 'হরিপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 33, 'Ranisankail ', 'রাণীসংকইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 51, 'Baniachang', 'বানিয়াচং', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 51, 'Bahubal', 'বাহুবল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 51, 'Chunarughat', 'চুনারুঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 51, 'Lakhai', 'লাক্ষাই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 51, 'Madhabpur', 'মাধবপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 51, 'Nabiganj', 'নবীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 51, 'Shaistagonj ', 'শায়েস্তাগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 52, 'Barlekha', 'বড়লেখা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 52, 'Juri', 'জুড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 52, 'Kamalganj', 'কামালগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 52, 'Kulaura', 'কুলাউরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 52, 'Rajnagar', 'রাজনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 53, 'Chhatak', 'ছাতক', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 53, 'Derai', 'দেড়াই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 53, 'Dharampasha', 'ধরমপাশা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 53, 'Jamalganj', 'জামালগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 53, 'Sulla', 'সুল্লা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 53, 'Tahirpur', 'তাহিরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 54, 'Bishwanath', 'বিশ্বনাথ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 54, 'Dakshin Surma ', 'দক্ষিণ সুরমা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 54, 'Balaganj', 'বালাগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 54, 'Kanaighat', 'কানাইঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 54, 'Nobigonj', 'নবীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 1, 'Adabor', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(494, 1, 'Airport', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(495, 1, 'Badda', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(496, 1, 'Banani', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(497, 1, 'Bangshal', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(498, 1, 'Bhashantek', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(499, 1, 'Cantonment', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(500, 1, 'Chackbazar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(501, 1, 'Darussalam', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(502, 1, 'Daskhinkhan', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(503, 1, 'Demra', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(504, 1, 'Dhamrai', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(505, 1, 'Dhanmondi', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(506, 1, 'Dohar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(507, 1, 'Gandaria', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(508, 1, 'Gulshan', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(509, 1, 'Hazaribag', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(510, 1, 'Jatrabari', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(511, 1, 'Kafrul', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(512, 1, 'Kalabagan', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(513, 1, 'Kamrangirchar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(514, 1, 'Keraniganj', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(515, 1, 'Khilgaon', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(516, 1, 'Khilkhet', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(517, 1, 'Kotwali', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(518, 1, 'Lalbag', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(519, 1, 'Mirpur Model', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(520, 1, 'Mohammadpur', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(521, 1, 'Motijheel', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(522, 1, 'Mugda', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(523, 1, 'Nawabganj', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(524, 1, 'New Market', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(525, 1, 'Pallabi', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(526, 1, 'Paltan', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(527, 1, 'Ramna', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(528, 1, 'Rampura', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(529, 1, 'Rupnagar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(530, 1, 'Sabujbag', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(531, 1, 'Savar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(532, 1, 'Shah Ali', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(533, 1, 'Shahbag', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(534, 1, 'Shahjahanpur', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(535, 1, 'Sherebanglanagar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(536, 1, 'Shyampur', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(537, 1, 'Sutrapur', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(538, 1, 'Tejgaon', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(539, 1, 'Tejgaon I/A', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(540, 1, 'Turag', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(541, 1, 'Uttara', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(542, 1, 'Uttara West', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(543, 1, 'Uttarkhan', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(544, 1, 'Vatara', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(545, 1, 'Wari', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(546, 1, 'Others', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(547, 35, 'Airport', 'এয়ারপোর্ট', '2016-04-06 11:23:08', '0000-00-00 00:00:00'),
(548, 35, 'Kawnia', 'কাউনিয়া', '2016-04-06 11:24:40', '0000-00-00 00:00:00'),
(549, 35, 'Bondor', 'বন্দর', '2016-04-06 11:27:19', '0000-00-00 00:00:00'),
(550, 35, 'Others', 'অন্যান্য', '2016-04-06 11:28:14', '0000-00-00 00:00:00'),
(551, 24, 'Boalia', 'বোয়ালিয়া', '2016-04-06 11:32:13', '0000-00-00 00:00:00'),
(552, 24, 'Motihar', 'মতিহার', '2016-04-06 11:33:00', '0000-00-00 00:00:00'),
(553, 24, 'Shahmokhdum', 'শাহ্ মকখদুম ', '2016-04-06 11:36:15', '0000-00-00 00:00:00'),
(554, 24, 'Rajpara', 'রাজপারা ', '2016-04-06 11:38:32', '0000-00-00 00:00:00'),
(555, 24, 'Others', 'অন্যান্য', '2016-04-06 11:39:09', '0000-00-00 00:00:00'),
(556, 43, 'Akborsha', 'Akborsha', '2016-04-06 11:57:01', '0000-00-00 00:00:00'),
(557, 43, 'Baijid bostami', 'বাইজিদ বোস্তামী', '2016-04-06 12:09:38', '0000-00-00 00:00:00'),
(558, 43, 'Bakolia', 'বাকোলিয়া', '2016-04-06 12:10:52', '0000-00-00 00:00:00'),
(559, 43, 'Bandar', 'বন্দর', '2016-04-06 12:11:53', '0000-00-00 00:00:00'),
(560, 43, 'Chandgaon', 'চাঁদগাও', '2016-04-06 12:12:34', '0000-00-00 00:00:00'),
(561, 43, 'Chokbazar', 'চকবাজার', '2016-04-06 12:13:10', '0000-00-00 00:00:00'),
(562, 43, 'Doublemooring', 'ডাবল মুরিং', '2016-04-06 12:14:10', '0000-00-00 00:00:00'),
(563, 43, 'EPZ', 'ইপিজেড', '2016-04-06 12:14:55', '0000-00-00 00:00:00'),
(564, 43, 'Hali Shohor', 'হলী শহর', '2016-04-06 12:15:54', '0000-00-00 00:00:00'),
(565, 43, 'Kornafuli', 'কর্ণফুলি', '2016-04-06 12:16:29', '0000-00-00 00:00:00'),
(566, 43, 'Kotwali', 'কোতোয়ালী', '2016-04-06 12:17:08', '0000-00-00 00:00:00'),
(567, 43, 'Kulshi', 'কুলশি', '2016-04-06 12:18:09', '0000-00-00 00:00:00'),
(568, 43, 'Pahartali', 'পাহাড়তলী', '2016-04-06 12:19:26', '0000-00-00 00:00:00'),
(569, 43, 'Panchlaish', 'পাঁচলাইশ', '2016-04-06 12:20:24', '0000-00-00 00:00:00'),
(570, 43, 'Potenga', 'পতেঙ্গা', '2016-04-06 12:21:20', '0000-00-00 00:00:00'),
(571, 43, 'Shodhorgat', 'সদরঘাট', '2016-04-06 12:22:19', '0000-00-00 00:00:00'),
(572, 43, 'Others', 'অন্যান্য', '2016-04-06 12:22:51', '0000-00-00 00:00:00'),
(573, 44, 'Others', 'অন্যান্য', '2016-04-06 12:37:59', '0000-00-00 00:00:00'),
(574, 59, 'Aranghata', 'আড়াংঘাটা', '2016-04-06 13:30:50', '0000-00-00 00:00:00'),
(575, 59, 'Daulatpur', 'দৌলতপুর', '2016-04-06 13:32:12', '0000-00-00 00:00:00'),
(576, 59, 'Harintana', 'হারিন্তানা ', '2016-04-06 13:34:06', '0000-00-00 00:00:00'),
(577, 59, 'Horintana', 'হরিণতানা ', '2016-04-06 13:35:11', '0000-00-00 00:00:00'),
(578, 59, 'Khalishpur', 'খালিশপুর', '2016-04-06 13:35:56', '0000-00-00 00:00:00'),
(579, 59, 'Khanjahan Ali', 'খানজাহান আলী', '2016-04-06 13:37:14', '0000-00-00 00:00:00'),
(580, 59, 'Khulna Sadar', 'খুলনা সদর', '2016-04-06 13:37:58', '0000-00-00 00:00:00'),
(581, 59, 'Labanchora', 'লাবানছোরা', '2016-04-06 13:39:23', '0000-00-00 00:00:00'),
(582, 59, 'Sonadanga', 'সোনাডাঙ্গা', '2016-04-06 13:40:22', '0000-00-00 00:00:00'),
(583, 59, 'Others', 'অন্যান্য', '2016-04-06 13:42:14', '0000-00-00 00:00:00'),
(584, 2, 'Others', 'অন্যান্য', '2016-04-06 13:43:56', '0000-00-00 00:00:00'),
(585, 4, 'Others', 'অন্যান্য', '2016-04-06 13:45:07', '0000-00-00 00:00:00'),
(586, 5, 'Others', 'অন্যান্য', '2016-04-06 13:46:18', '0000-00-00 00:00:00'),
(587, 54, 'Airport', 'বিমানবন্দর', '2016-04-06 13:54:47', '0000-00-00 00:00:00'),
(588, 54, 'Hazrat Shah Paran', 'হযরত শাহ পরাণ', '2016-04-06 13:57:13', '0000-00-00 00:00:00'),
(589, 54, 'Jalalabad', 'জালালাবাদ', '2016-04-06 13:58:15', '0000-00-00 00:00:00'),
(590, 54, 'Kowtali', 'কোতোয়ালী', '2016-04-06 13:59:27', '0000-00-00 00:00:00'),
(591, 54, 'Moglabazar', 'মোগলাবাজার', '2016-04-06 14:00:58', '0000-00-00 00:00:00'),
(592, 54, 'Osmani Nagar', 'ওসমানী নগর', '2016-04-06 14:01:36', '0000-00-00 00:00:00'),
(593, 54, 'South Surma', 'দক্ষিণ সুরমা', '2016-04-06 14:02:16', '0000-00-00 00:00:00'),
(594, 54, 'Others', 'অন্যান্য', '2016-04-06 14:03:07', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_rule_setup`
--
ALTER TABLE `acc_rule_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bach_no`
--
ALTER TABLE `bach_no`
  ADD PRIMARY KEY (`bno`);

--
-- Indexes for table `bank_acc_info`
--
ALTER TABLE `bank_acc_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_chq_info`
--
ALTER TABLE `bank_chq_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_chq_leaf_info`
--
ALTER TABLE `bank_chq_leaf_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_saler_info`
--
ALTER TABLE `buyer_saler_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code_master`
--
ALTER TABLE `code_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hardcode` (`hardcode`,`softcode`);

--
-- Indexes for table `cust_info`
--
ALTER TABLE `cust_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_member`
--
ALTER TABLE `fund_member`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `UNIQUE` (`email`);

--
-- Indexes for table `fund_recived`
--
ALTER TABLE `fund_recived`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `fund_ref_info`
--
ALTER TABLE `fund_ref_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`mobile`),
  ADD UNIQUE KEY `reffered_id` (`reffered_id`);

--
-- Indexes for table `gl_acc_code`
--
ALTER TABLE `gl_acc_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`OFF_CODE`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_info`
--
ALTER TABLE `office_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `office_code` (`office_code`);

--
-- Indexes for table `org_info`
--
ALTER TABLE `org_info`
  ADD PRIMARY KEY (`org_no`);

--
-- Indexes for table `sm_hr_emp`
--
ALTER TABLE `sm_hr_emp`
  ADD PRIMARY KEY (`emp_no`),
  ADD UNIQUE KEY `email_personal` (`email_personal`);

--
-- Indexes for table `sm_menu`
--
ALTER TABLE `sm_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_role`
--
ALTER TABLE `sm_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_no` (`role_no`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sm_role_dtl`
--
ALTER TABLE `sm_role_dtl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_no` (`role_no`,`menu_no`);

--
-- Indexes for table `supp_info`
--
ALTER TABLE `supp_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supp_name` (`supp_name`),
  ADD KEY `cust_id` (`Link_gl_code`);

--
-- Indexes for table `tax_vat_rate_details`
--
ALTER TABLE `tax_vat_rate_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_vat_rate_master`
--
ALTER TABLE `tax_vat_rate_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tran_details`
--
ALTER TABLE `tran_details`
  ADD PRIMARY KEY (`tran_no`);

--
-- Indexes for table `tran_details_history`
--
ALTER TABLE `tran_details_history`
  ADD PRIMARY KEY (`tran_no`);

--
-- Indexes for table `tran_details_reverse`
--
ALTER TABLE `tran_details_reverse`
  ADD PRIMARY KEY (`tran_no`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_rule_setup`
--
ALTER TABLE `acc_rule_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bach_no`
--
ALTER TABLE `bach_no`
  MODIFY `bno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2020059;

--
-- AUTO_INCREMENT for table `bank_acc_info`
--
ALTER TABLE `bank_acc_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_chq_info`
--
ALTER TABLE `bank_chq_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank_chq_leaf_info`
--
ALTER TABLE `bank_chq_leaf_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `buyer_saler_info`
--
ALTER TABLE `buyer_saler_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `code_master`
--
ALTER TABLE `code_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `cust_info`
--
ALTER TABLE `cust_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fund_member`
--
ALTER TABLE `fund_member`
  MODIFY `member_id` bigint(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fund_recived`
--
ALTER TABLE `fund_recived`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fund_ref_info`
--
ALTER TABLE `fund_ref_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gl_acc_code`
--
ALTER TABLE `gl_acc_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `OFF_CODE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `office_info`
--
ALTER TABLE `office_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_hr_emp`
--
ALTER TABLE `sm_hr_emp`
  MODIFY `emp_no` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sm_menu`
--
ALTER TABLE `sm_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `sm_role`
--
ALTER TABLE `sm_role`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `sm_role_dtl`
--
ALTER TABLE `sm_role_dtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10613;

--
-- AUTO_INCREMENT for table `supp_info`
--
ALTER TABLE `supp_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tax_vat_rate_details`
--
ALTER TABLE `tax_vat_rate_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tax_vat_rate_master`
--
ALTER TABLE `tax_vat_rate_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tran_details`
--
ALTER TABLE `tran_details`
  MODIFY `tran_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tran_details_history`
--
ALTER TABLE `tran_details_history`
  MODIFY `tran_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tran_details_reverse`
--
ALTER TABLE `tran_details_reverse`
  MODIFY `tran_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
