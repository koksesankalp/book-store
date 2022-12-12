-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 09:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookchain`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'prerana.kokane20@vit.edu', 'prerana'),
(2, 'himani.malani20@vit.edu', 'himani'),
(3, 'kush.agarwal20@vit.edu', 'kushagarwal');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(120) NOT NULL,
  `confirm_password` varchar(120) NOT NULL,
  `address` varchar(128) NOT NULL,
  `phone_number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `email`, `password`, `confirm_password`, `address`, `phone_number`) VALUES
('Himani', 'himani@vit.edu', '1234', '1234', '', '0'),
('kush', 'kush.agarwal@vit.edu', '12345', '12345', 'model colony,pune', '8637765154'),
('Prerana', 'prerana.kokane20@vit.edu', '123', '123', '', '0'),
('sankalp', 'rana@vit.edi', '1234', '1234', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `id` int(8) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(55) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `registered_users`
--
ALTER TABLE `registered_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registered_users`
--
ALTER TABLE `registered_users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
