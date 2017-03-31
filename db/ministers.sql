-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2017 at 04:42 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appon`
--

-- --------------------------------------------------------

--
-- Table structure for table `ministers`
--

CREATE TABLE `ministers` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `depatrtment` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `level` int(5) NOT NULL,
  `photo_link` varchar(100) NOT NULL,
  `total_cases` int(50) NOT NULL,
  `pending` int(50) NOT NULL,
  `cancel` int(50) NOT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ministers`
--

INSERT INTO `ministers` (`id`, `name`, `email`, `depatrtment`, `location`, `level`, `photo_link`, `total_cases`, `pending`, `cancel`, `rating`) VALUES
(1, 'Keval Morakhia', 'keval.morakhia@gmai.com', 'Road Management', 'Mumbai', 1, ' ', 0, 0, 0, 0),
(2, 'Chintan Popat', 'chintan.popat@gmai.com', 'Traffic', 'Mumbai', 1, ' ', 0, 0, 0, 0),
(3, 'Karan Botadra', 'karan.botadra@gmai.com', 'Road Management', 'Mumbai', 2, ' ', 0, 0, 0, 0),
(4, 'Himanshu Nachne', 'himanshi.n@gmail.com', 'Traffic', 'Mumbai', 2, ' ', 0, 0, 0, 0),
(7, 'Jackson Pais', 'jackson.p@gmai.com', 'Road Management', 'Chennai', 1, ' ', 0, 0, 0, 0),
(8, 'Joel Phillip', 'joel.phill@gmai.com', 'Traffic', 'Chennai', 1, ' ', 0, 0, 0, 0),
(9, 'Aditya Pillankar', 'adi.p@gmai.com', 'Road Management', 'Chennai', 2, ' ', 0, 0, 0, 0),
(10, 'Sanket Shah', 'sanket.shah@gmail.com', 'Traffic', 'Chennai', 2, ' ', 0, 0, 0, 0),
(13, 'Het Shah', 'het.shah@gmai.com', 'Road Management', 'Bhopal', 1, ' ', 0, 0, 0, 0),
(14, 'Shreyans Doshi', 'shreyansdoshi@gmai.com', 'Traffic', 'Bhopal', 1, ' ', 0, 0, 0, 0),
(15, 'Manan Sheth', 'manan.sheth@gmai.com', 'Road Management', 'Bhopal', 2, ' ', 0, 0, 0, 0),
(16, 'Kartik Rao', 'kartik.rao@gmail.com', 'Traffic', 'Bhopal', 2, ' ', 0, 0, 0, 0),
(19, 'Vats Patel', 'vats.patel@gmai.com', 'Road Management', 'Jaipur', 1, ' ', 0, 0, 0, 0),
(20, 'Yash Maniar', 'yash.mani@gmai.com', 'Traffic', 'Jaipur', 1, ' ', 0, 0, 0, 0),
(21, 'Karan Panchal', 'karan.panchal@gmai.com', 'Road Management', 'Jaipur', 2, ' ', 0, 0, 0, 0),
(22, 'prinkesh Shah', 'prinkesh.shah@gmail.com', 'Traffic', 'Jaipur', 2, ' ', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ministers`
--
ALTER TABLE `ministers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ministers`
--
ALTER TABLE `ministers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
