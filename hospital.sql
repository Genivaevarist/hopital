-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2019 at 09:43 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `id` int(4) NOT NULL,
  `channelNo` varchar(20) NOT NULL,
  `doctorName` varchar(50) NOT NULL,
  `patientName` varchar(50) NOT NULL,
  `roomNo` int(20) NOT NULL,
  `channelDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `creaye_items`
--

CREATE TABLE `creaye_items` (
  `id` int(10) NOT NULL,
  `itemNo` varchar(20) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `desciption` varchar(50) NOT NULL,
  `sales` varchar(20) NOT NULL,
  `buyprice` varchar(50) NOT NULL,
  `qty` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creaye_items`
--

INSERT INTO `creaye_items` (`id`, `itemNo`, `itemName`, `desciption`, `sales`, `buyprice`, `qty`) VALUES
(1, '100s', 'panadols', '1*2', '200', '100', '30'),
(2, '100', 'panadol', '4', '2346', '878', '3');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(4) NOT NULL,
  `doctorNo` varchar(20) NOT NULL,
  `doctorName` varchar(20) NOT NULL,
  `specilization` varchar(20) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `phone` int(20) NOT NULL,
  `room` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `doctorNo`, `doctorName`, `specilization`, `channel`, `phone`, `room`) VALUES
(1, '1003', 'adrian sebastian', 'women', '34', 768234510, 3),
(2, '100', 'raja khurun', 'women', '34', 768234510, 30),
(3, 'DS004', 'tunu luvanda', 'md', 'rose', 12345678, 3);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(4) NOT NULL,
  `patientNo` varchar(20) NOT NULL,
  `patientName` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `patientNo`, `patientName`, `phone`, `address`) VALUES
(6, 'PS007', 'dora', '123456', '23456');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(7) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`) VALUES
(1, 'geniva Evarist', '123', 'PHARMACIST'),
(2, 'tunu luvanda', '123', 'DOCTOR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creaye_items`
--
ALTER TABLE `creaye_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `creaye_items`
--
ALTER TABLE `creaye_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
