-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2018 at 09:17 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobandfairs`
--

CREATE TABLE `jobandfairs` (
  `n` int(11) NOT NULL,
  `text` varchar(5000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobandfairs`
--

INSERT INTO `jobandfairs` (`n`, `text`, `image`, `date`, `time`, `userid`) VALUES
(1, 'Test Post', 'c57bf7a738.jpg', 'Wednesday, Jul 18 2018', '09:08:30pm', '130123'),
(2, 'Test', 'a9a55c0d89.jpg', 'Wednesday, Aug 01 2018', '10:45:26pm', '130123'),
(3, 'Test 2', 'f5b5b73c2d.png', 'Wednesday, Aug 01 2018', '10:50:29pm', '130123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobandfairs`
--
ALTER TABLE `jobandfairs`
  ADD PRIMARY KEY (`n`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobandfairs`
--
ALTER TABLE `jobandfairs`
  MODIFY `n` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
