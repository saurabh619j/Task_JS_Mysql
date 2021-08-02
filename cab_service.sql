-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 01:12 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cab_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_number` int(11) NOT NULL,
  `ride` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`d_id`, `d_name`, `d_email`, `d_number`, `ride`) VALUES
(1, 'Joy Root', 'joy@cabservice.com', 2147483647, 'mini'),
(2, 'Shyam Rathod', 'shyam@cabservice.com', 1234567890, 'auto');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_email` varchar(255) NOT NULL,
  `p_number` int(10) NOT NULL,
  `ride` varchar(255) NOT NULL,
  `payment_op` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`p_id`, `p_name`, `p_email`, `p_number`, `ride`, `payment_op`, `source`, `destination`) VALUES
(1, 'Varad Shirsath', 'vs@gmail.com', 2147483647, 'auto', 'cash', 'Chetak Ghoda', 'TV center'),
(2, 'Juber Shaikh', 'juber@gmail.com', 1234567890, 'wagnor', 'upi', 'Jalgaon ', 'Waluj'),
(3, 'Stieven', 'stivene@g.com', 123457890, 'auto', 'debit', 'Delhi Gate', 'Tv center');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `debit_name` varchar(255) NOT NULL,
  `card_no` varchar(255) NOT NULL,
  `card_exp_date` varchar(255) NOT NULL,
  `cvv` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `tax_amount` varchar(255) NOT NULL,
  `driver_amnt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `debit_name`, `card_no`, `card_exp_date`, `cvv`, `total_amount`, `tax_amount`, `driver_amnt`) VALUES
(2, 'Stieven Mathew', '776522129076', '09/22', '121', '400', '472', '340');

-- --------------------------------------------------------

--
-- Table structure for table `payment_via_upi`
--

CREATE TABLE `payment_via_upi` (
  `id` int(11) NOT NULL,
  `upi_name` varchar(255) NOT NULL,
  `upi_id` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `tax_amount` varchar(255) NOT NULL,
  `driver_amnt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_via_upi`
--

INSERT INTO `payment_via_upi` (`id`, `upi_name`, `upi_id`, `total_amount`, `tax_amount`, `driver_amnt`) VALUES
(2, 'Johny Roy', '124xyz@upi.abc', '578', '682.04', '491.3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_via_upi`
--
ALTER TABLE `payment_via_upi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_via_upi`
--
ALTER TABLE `payment_via_upi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
