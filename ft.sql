-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 26, 2016 at 01:46 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ft`
--

-- --------------------------------------------------------

--
-- Table structure for table `marriages`
--

CREATE TABLE `marriages` (
  `id` int(11) NOT NULL,
  `mid` varchar(200) NOT NULL,
  `male` varchar(200) NOT NULL,
  `female` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marriages`
--

INSERT INTO `marriages` (`id`, `mid`, `male`, `female`, `status`, `comment`) VALUES
(1, '1', '5', '4', '1', ''),
(3, '2', '1', '2', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `peoples`
--

CREATE TABLE `peoples` (
  `id` int(11) NOT NULL,
  `pid` varchar(200) NOT NULL,
  `fid` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `idc` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `island` varchar(200) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peoples`
--

INSERT INTO `peoples` (`id`, `pid`, `fid`, `fname`, `sex`, `dob`, `idc`, `address`, `island`, `picture`, `comment`) VALUES
(1, '1', '1', 'thoaha', 'm', '0000-00-00', '', '', '', 'http://f0.pepst.com/c/86EB8C/510139/ssc3/home/024/yhoena/albums/fucker...jpg_480_480_0_64000_0_1_0.jpg', ''),
(2, '2', '0', 'nafsa', 'f', '0000-00-00', '', '', '', '', ''),
(3, '5', '', 'usuf', 'm', '0000-00-00', '', '', '', '', ''),
(4, '4', '', 'khadeeja', 'f', '0000-00-00', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marriages`
--
ALTER TABLE `marriages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `mid` (`mid`);

--
-- Indexes for table `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marriages`
--
ALTER TABLE `marriages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `peoples`
--
ALTER TABLE `peoples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
