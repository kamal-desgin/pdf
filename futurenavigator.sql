-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2020 at 09:41 PM
-- Server version: 5.6.48-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futurenavigator`
--

-- --------------------------------------------------------

--
-- Table structure for table `fn_receipt`
--

CREATE TABLE `fn_receipt` (
  `id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `email` varchar(155) NOT NULL,
  `fathername` varchar(155) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ruppessword` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `paydate` date NOT NULL,
  `receiptdate` date NOT NULL,
  `cheque` varchar(55) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `cash` varchar(55) NOT NULL,
  `referencenumber` varchar(100) NOT NULL DEFAULT '',
  `gst` varchar(55) NOT NULL DEFAULT '',
  `gtotal` varchar(55) NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fn_receipt`
--

INSERT INTO `fn_receipt` (`id`, `name`, `email`, `fathername`, `address`, `ruppessword`, `purpose`, `paydate`, `receiptdate`, `cheque`, `bankname`, `cash`, `referencenumber`, `gst`, `gtotal`, `createdate`, `remarks`) VALUES
(22, 'Akash', 'kamal.microshare@gmail.com', 'Mr.KADHIRVEL', 'address check', 'Ten Thousand Only check', 'Registration [jobs] check', '2020-08-21', '0000-00-00', 'Cash', 'Bank Name', 'Cash Numbers', '', '', '', '2020-08-21 06:44:35', 'https://futurenavigatorsedu.com/receipt/checkpdf.php?ac=new'),
(23, 'K.GNANAVEL', 'kamal.microshare@gmail.com', 'Mr.KADHIRVEL', 'address check', 'Ten Thousand Only check', 'Registration [jobs] check', '2020-08-21', '0000-00-00', 'Cash', 'Bank Name', '2000', '', '', '', '2020-08-21 09:46:06', 'check mail content 1'),
(26, 'K.GNANAVEL', 'kamal.microshare@gmail.com', 'Mr.KADHIRVEL', '#164, Tharuyamman Kovil Street, Panruti Tk. Cuddalore.', 'Ten Thousand Only', 'Registration [jobs]', '2020-08-21', '0000-00-00', 'Cash', 'Indian Bank', '10000', '', '', '', '2020-08-21 10:46:58', 'check final'),
(27, 'KAMAL', 'kamal.microshare@gmail.com', 'Mannarsamy', '#164, Tharuyamman Kovil Street, Panruti Tk. Cuddalore.', 'Ten Thousand Only', 'Registration [jobs]', '2020-08-22', '0000-00-00', 'Cash', 'Indian Bank', '1000', '', '', '', '2020-08-21 11:52:36', 'check'),
(28, 'Arun', 'kamal.microshare@gmail.com', 'Arumugam', '#164, Tharuyamman Kovil Street, Panruti Tk. Cuddalore.', 'Ten Thousand Only', 'Registration [jobs]', '2020-08-22', '2020-08-22', 'Cash', 'Indian Bank', '1000', '1233', '18', '1180/- Pay', '2020-08-21 12:01:18', 'check email'),
(29, 'SwarnaMahalaxmi', 'swarnamahalaxmi312005@gmail.com', 'Saravanan', 'Urapakkam, Chennai', 'One thousand only', 'Test', '2020-08-01', '2020-08-23', 'Cash', '', '1000', '001', '', '1000/- Pay', '2020-08-23 03:06:39', 'Test Purpose');

-- --------------------------------------------------------

--
-- Table structure for table `fn_users`
--

CREATE TABLE `fn_users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `paswd` varchar(30) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `created_dt` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `status` enum('A','D','E') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fn_users`
--

INSERT INTO `fn_users` (`id`, `username`, `paswd`, `full_name`, `email`, `phone`, `address`, `profile`, `created_dt`, `created_by`, `updated_dt`, `updated_by`, `status`) VALUES
(1, 'admin', '123', 'Admin', 'futurenavigatorsedu@gmail.com', '7397269369', 'No: 228/10, 2nd Floor, GST Road, Near MIT Bridge, Chrompet, Chennai - 600 044', '', '0000-00-00 00:00:00', 1, NULL, 0, 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fn_receipt`
--
ALTER TABLE `fn_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fn_users`
--
ALTER TABLE `fn_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fn_receipt`
--
ALTER TABLE `fn_receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `fn_users`
--
ALTER TABLE `fn_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
