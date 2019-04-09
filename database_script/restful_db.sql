-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2019 at 09:18 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.8

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `created_at`) VALUES
(1, 'Product 1', 2000, '2019-04-09 15:45:31'),
(2, 'Product 2', 5000, '2019-04-09 15:45:31'),
(3, 'Product 3', 4000, '2019-04-09 15:45:31'),
(4, 'Product 4', 6000, '2019-04-09 15:45:31'),
(5, 'Product 5', 7000, '2019-04-09 15:45:31'),
(6, NULL, NULL, '2019-04-09 15:45:31'),
(7, 'Product 6 Added', 6000, '2019-04-09 15:45:31'),
(9, 'Product 7 Added', 6000, '2019-04-09 15:45:31'),
(10, 'Product 7 Added', 6000, '2019-04-09 15:45:31'),
(11, 'Product 7 Added', 6000, '2019-04-09 15:45:31'),
(12, 'Product 7 Added', 6000, '2019-04-09 15:45:31'),
(13, 'Product 31 Added', 6000, '2019-04-09 15:45:31'),
(14, NULL, NULL, '2019-04-09 15:54:00'),
(15, 'Product 31 Added', 6000, '2019-04-09 15:57:17'),
(16, 'Product 41 Added', 589, '2019-04-09 16:15:26');

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
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
