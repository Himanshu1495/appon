-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 24, 2017 at 12:47 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minister`
--

-- --------------------------------------------------------

--
-- Table structure for table `minister_pass`
--

CREATE TABLE `minister_pass` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minister_pass`
--

INSERT INTO `minister_pass` (`id`, `email`, `password`) VALUES
(1, 'das.sn@nic.in', 1001),
(2, 'sudipch2009@gmail.com', 1002),
(3, 'js-morth@gov.in', 1003),
(4, 'sunilkumar.verma@nic.in', 1004),
(5, 'dakshita.das@nic.in', 1005),
(6, 'ameesh.agg@gmail.com', 1006),
(7, 'singhrk@nic.in', 1007),
(8, 'abhay.damle.gov.in', 1008);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `minister_pass`
--
ALTER TABLE `minister_pass`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `minister_pass`
--
ALTER TABLE `minister_pass`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
