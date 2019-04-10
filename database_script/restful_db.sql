-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 05:21 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restful_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 2000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(2, 'Product 2', 5000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(3, 'Product 3', 4000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(4, 'Product 4', 6000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(5, 'Product 5', 7000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(6, NULL, NULL, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(7, 'Product 6 Added', 6000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(9, 'Product 7 Added', 6000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(10, 'Product 7 Added', 6000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(11, 'Product 7 Added', 6000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(12, 'Product 7 Added', 6000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(13, 'Product 31 Added', 6000, '2019-04-09 15:45:31', '0000-00-00 00:00:00'),
(14, NULL, NULL, '2019-04-09 15:54:00', '0000-00-00 00:00:00'),
(15, 'Product 31 Added', 6000, '2019-04-09 15:57:17', '0000-00-00 00:00:00'),
(16, 'Product 41 Added', 589, '2019-04-09 16:15:26', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
