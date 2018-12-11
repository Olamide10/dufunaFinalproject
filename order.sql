-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 05:05 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mohfoods`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`order_id` int(11) NOT NULL,
  `menu` varchar(150) NOT NULL,
  `customername` varchar(150) NOT NULL,
  `phone_num` int(50) NOT NULL,
  `quantity_item` int(50) NOT NULL,
  `total_item` int(50) NOT NULL,
  `address_cust` varchar(300) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `menu`, `customername`, `phone_num`, `quantity_item`, `total_item`, `address_cust`, `admin_id`, `created_at`) VALUES
(14, 'beans based', 'root', 2147483647, 2, 1200, 'No 3 Alhaji Muritala Atunrase Estate, Gbagada', NULL, '2018-12-11'),
(15, 'rice based', 'root', 2147483647, 5, 1600, 'Challenge olorunshogo, obalende', NULL, '2018-12-11'),
(16, 'yam based', 'Oladeji Olamide', 2147483647, 4, 800, '43b olorunlogbon street Anthony', NULL, '2018-12-11'),
(17, 'yam based', 'Kehinde Ifedayo', 2147483647, 4, 800, 'No 1 olufemi pedro way Parkview Ikoyi lagos', NULL, '2018-12-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`order_id`), ADD KEY `order_ibfk_1` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
