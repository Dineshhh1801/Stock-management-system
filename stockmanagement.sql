-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2022 at 02:15 PM
-- Server version: 5.7.21-log
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `barcode` int(11) NOT NULL,
  `cprice` int(11) NOT NULL,
  `rprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `rlevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `description`, `barcode`, `cprice`, `rprice`, `qty`, `rlevel`) VALUES
(1, 'milk', '500 ml', 111, 40, 38, 301, 1),
(2, 'sugar', '1 kg', 101, 50, 49, 187, 1),
(3, 'rice', '1 kg', 102, 60, 58, 31, 11),
(4, 'salt', '250 g', 1, 40, 39, 1025, 1),
(5, 'Redmi mobile', 'note 7 pro', 2, 14999, 13499, 162, 50),
(7, 'RealMe', '9', 3, 12999, 11999, 215, 100),
(8, 'iphone', '7', 4, 50000, 47000, 150, 0),
(10, 'grapes', '1 kg', 103, 80, 75, 130, 100),
(11, 'oppo f11 pro', 'mobile', 5, 18999, 17999, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `bal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `date`, `vendor`, `subtotal`, `pay`, `bal`) VALUES
(1, '2022-01-27', '123', 8700, 0, 8700),
(2, '2022-01-27', '123', 8700, 100000, -91300),
(3, '2022-01-27', 'Dinesh Suryavanshi', 8700, 10000, -1300),
(4, '2022-01-28', 'Dinesh Suryavanshi', 10700, 11000, -300),
(5, '2022-01-28', 'Dinesh Suryavanshi', 4900, 10000, -5100),
(6, '2022-01-28', 'Dinesh Suryavanshi', 4900, 10000, -5100),
(7, '2022-01-28', 'Dinesh Suryavanshi', 43900, 0, 43900),
(8, '2022-01-28', '123', 7895, 7895, 0),
(9, '2022-01-28', '123', 490, 500, -10),
(10, '2022-02-02', 'Dinesh Suryavanshi', 1274900, 0, 1274900),
(11, '2022-02-02', '123', 1368900, 5000000, -3631100),
(12, '2022-02-02', '123', 5899900, 6000000, -100100),
(13, '2022-02-04', '123', 2549800, 2600000, -50200),
(14, '2022-02-17', '123', 1168, 1200, -32),
(15, '2022-03-07', 'Dinesh', 1128, 1200, -72),
(16, '2022-03-18', 'dinesh ', 2985, 3000, -15),
(17, '2022-03-29', 'dinesh ', 899950, 1000000, -100050);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE `purchaseitem` (
  `id` int(11) NOT NULL,
  `purid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `rprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchaseitem`
--

INSERT INTO `purchaseitem` (`id`, `purid`, `pid`, `rprice`, `qty`, `total`) VALUES
(1, 1, 111, 38, 100, 3800),
(2, 1, 101, 49, 100, 4900),
(3, 2, 111, 38, 100, 3800),
(4, 2, 101, 49, 100, 4900),
(5, 3, 111, 38, 100, 3800),
(6, 3, 101, 49, 100, 4900),
(7, 4, 102, 58, 100, 5800),
(8, 4, 1011, 49, 100, 4900),
(9, 5, 101, 49, 100, 4900),
(10, 6, 101, 49, 100, 4900),
(11, 7, 101, 49, 100, 4900),
(12, 7, 1, 39, 1000, 39000),
(13, 8, 102, 58, 10, 580),
(14, 8, 101, 49, 49, 2401),
(15, 8, 1, 39, 126, 4914),
(16, 9, 101, 49, 10, 490),
(17, 10, 3, 11999, 50, 599950),
(18, 10, 2, 13499, 50, 674950),
(19, 11, 111, 38, 500, 19000),
(20, 11, 2, 13499, 100, 1349900),
(21, 12, 4, 47000, 100, 4700000),
(22, 12, 3, 11999, 100, 1199900),
(23, 13, 3, 11999, 100, 1199900),
(24, 13, 2, 13499, 100, 1349900),
(25, 14, 101, 49, 12, 588),
(26, 14, 102, 58, 10, 580),
(27, 15, 101, 49, 10, 490),
(28, 15, 102, 58, 11, 638),
(29, 16, 101, 49, 15, 735),
(30, 16, 103, 75, 30, 2250),
(31, 17, 5, 17999, 50, 899950);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `bal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `bal`) VALUES
(1, '2022-01-28', 8700, 10000, 1300),
(2, '2022-01-28', 8700, 10000, 1300),
(3, '2022-01-28', 8700, 10000, 1300),
(4, '2022-01-28', 8700, 10000, 1300),
(5, '2022-01-28', 14500, 10000, -4500),
(6, '2022-01-28', 134990, 150000, 15010),
(7, '2022-02-02', 1274900, 0, -1274900),
(8, '2022-02-02', 794935, 1000000, 205065),
(9, '2022-02-02', 120029, 120030, 1),
(10, '2022-02-02', 389970, 400000, 10030),
(11, '2022-02-02', 30976, 40000, 9024),
(12, '2022-02-02', 67495, 70000, 2505),
(13, '2022-02-02', 13889, 15000, 1111),
(14, '2022-02-02', 589990, 600000, 10010),
(15, '2022-02-04', 2419960, 2500000, 80040),
(16, '2022-03-07', 1070, 1200, 130),
(17, '2022-03-29', 899950, 100000, -799950);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `pid`, `price`, `qty`, `total`) VALUES
(1, 1, 101, 49, 100, 4900),
(2, 1, 111, 38, 100, 3800),
(3, 2, 101, 49, 100, 4900),
(4, 2, 111, 38, 100, 3800),
(5, 3, 101, 49, 100, 4900),
(6, 3, 111, 38, 100, 3800),
(7, 4, 101, 49, 100, 4900),
(8, 4, 111, 38, 100, 3800),
(9, 5, 101, 49, 100, 4900),
(10, 5, 111, 38, 100, 3800),
(11, 5, 102, 58, 100, 5800),
(12, 6, 2, 13499, 10, 134990),
(13, 7, 3, 11999, 50, 599950),
(14, 7, 2, 13499, 50, 674950),
(15, 8, 2, 13499, 10, 134990),
(16, 8, 3, 11999, 55, 659945),
(17, 9, 1, 39, 1, 39),
(18, 9, 3, 11999, 10, 119990),
(19, 10, 3, 11999, 10, 119990),
(20, 10, 2, 13499, 20, 269980),
(21, 11, 1, 39, 102, 3978),
(22, 11, 2, 13499, 2, 26998),
(23, 12, 2, 13499, 5, 67495),
(24, 13, 1, 39, 10, 390),
(25, 13, 2, 13499, 1, 13499),
(26, 14, 4, 47000, 10, 470000),
(27, 14, 3, 11999, 10, 119990),
(28, 15, 2, 13499, 40, 539960),
(29, 15, 4, 47000, 40, 1880000),
(30, 16, 101, 49, 10, 490),
(31, 16, 102, 58, 10, 580),
(32, 17, 5, 17999, 50, 899950);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_fname` varchar(25) NOT NULL,
  `u_lname` varchar(25) NOT NULL,
  `u_uname` varchar(25) NOT NULL,
  `u_pass` varchar(25) NOT NULL,
  `u_bdate` date NOT NULL,
  `u_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_fname`, `u_lname`, `u_uname`, `u_pass`, `u_bdate`, `u_address`) VALUES
(1, '', '', 'admin', 'admin', '0000-00-00', ''),
(2, '', '', 'dinesh', 'dinesh', '0000-00-00', ''),
(3, 'Dinesh', 'Suryavanshi', 'dinesh123', 'dinesh', '2001-08-18', 'vikhroli'),
(4, 'asdfff', 'd', 'asd', 'aaa', '2017-03-03', 'lop'),
(5, 'Manohar', 'Suryavanshi', 'Man123', 'Man123', '1973-05-25', 'Vikhroli mumbai-400079'),
(6, 'admin', 'admin', 'admin123', 'admin', '2018-03-02', 'goa'),
(7, 'dinesh', 'suryavanshi', 'dinesh1234', 'dinesh', '2001-08-18', 'thane'),
(8, 'Dinesh', 'Suryavanshi', 'dineshs12', '123456', '2001-08-18', 'thane'),
(9, 'jayesh', 'bramhankar', 'jayaa', '123', '2001-01-24', 'thane west');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(12) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `phone`, `email`, `address`) VALUES
(1, 'dinesh ', 90823627, 'dinesh@gmail.com', 'mumbai'),
(2, 'dinesh suryavanshi', 703992484, 'dinesh123@gmail.com', 'thane west'),
(3, 'jayesh', 1542369515, 'jayesh@gmail.com', 'thane west');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
