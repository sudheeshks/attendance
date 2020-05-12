-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2020 at 04:07 AM
-- Server version: 5.7.30-0ubuntu0.16.04.1
-- PHP Version: 7.2.28-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(9) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `staff_number` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `first_name`, `last_name`, `staff_number`) VALUES
(1, 'Nithin', 'Kumar', 'KA01'),
(2, 'Raju', 'K', 'KA02'),
(3, 'Rahul', 'B', 'KA03'),
(4, 'Prasad', 'K', 'KA04'),
(5, 'Thomas', 'K', 'KA05'),
(6, 'Naresh', 'J', 'KA06'),
(7, 'Simi', 'Jose', 'KA07'),
(8, 'Lalitha', 'K', 'KA08'),
(9, 'Payal', 'Kumari', 'KA09'),
(10, 'Shahid', 'Khan', 'KA10'),
(11, 'Muhammed', 'Ali', 'KA11'),
(12, 'Rajeev', 'Kumar', 'KA12'),
(13, 'Raji', 'D', 'KA13'),
(14, 'Harani', 'Das', 'KA14'),
(15, 'Sharan', 'Das', 'KA15'),
(16, 'Manu', 'Kumar', 'KA16'),
(17, 'Manesh', 'D', 'KA17'),
(18, 'Shravan', 'H', 'KA18'),
(19, 'Chithra', 'D', 'KA19'),
(20, 'Manitha', 'H', 'KA20');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(9) NOT NULL,
  `date` date NOT NULL,
  `staff_id` int(9) NOT NULL,
  `marked` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_attendance`
--

INSERT INTO `staff_attendance` (`id`, `date`, `staff_id`, `marked`) VALUES
(2, '2020-05-18', 1, 1),
(3, '2020-05-18', 3, 1),
(4, '2020-05-20', 2, 1),
(5, '2020-05-20', 3, 1),
(8, '2020-05-19', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
