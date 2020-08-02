-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2020 at 01:43 AM
-- Server version: 5.6.47
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
-- Database: `iliaal_OrderedTables`
--
CREATE DATABASE IF NOT EXISTS `iliaal_OrderedTables` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `iliaal_OrderedTables`;

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `breed` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`breed`) VALUES
('maine coon'),
('bengal'),
('munchkin');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `order_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(70) DEFAULT NULL,
  `cCardInfo` varchar(20) NOT NULL,
  `cCardNum` varchar(20) NOT NULL,
  `sits` int(2) NOT NULL,
  `tType` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`order_id`, `user_id`, `phone`, `gender`, `email`, `cCardInfo`, `cCardNum`, `sits`, `tType`, `date`, `time`) VALUES
(11, 13, '123456789', 'male', NULL, 'Mastercard', '123456789', 2, 't2', '2020-06-30', '11:53:00.000000'),
(12, 14, '123456789', 'male', NULL, 'Mastercard', '123456789', 3, 't4', '2020-06-30', '11:55:00.000000'),
(13, 15, '123456789', 'male', NULL, 'Mastercard', '123456789', 4, 't4', '2020-06-30', '11:04:00.000000'),
(15, 17, '123456789', 'male', '<script>alert(document.domain)</script>', 'Isracard', '123456789', 1, 't1w', '2020-06-22', '12:24:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstName`, `lastName`, `isAdmin`) VALUES
(12, 'admin', 'admin', 'admin', 'a', 1),
(13, 'b', 'b', 'user1', 'b', 0),
(14, 'c', 'c', 'user2', 'c', 0),
(15, 'd', 'd', 'user3', 'd', 0),
(16, 'e', '123', 'attacker', 'e', 0),
(17, 'f', 'f', 'malicious', 'user', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`user_id`,`order_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `order_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
