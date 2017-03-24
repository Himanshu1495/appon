-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2017 at 09:55 AM
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
-- Table structure for table `minister_db`
--

CREATE TABLE `minister_db` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(90) NOT NULL,
  `department` text NOT NULL,
  `rating` int(10) NOT NULL,
  `position` text NOT NULL,
  `total` int(20) NOT NULL,
  `resolved` int(20) NOT NULL,
  `pending` int(20) NOT NULL,
  `uuid` varchar(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minister_db`
--

INSERT INTO `minister_db` (`id`, `name`, `email`, `password`, `department`, `rating`, `position`, `total`, `resolved`, `pending`, `uuid`, `photo`, `location`) VALUES
(1, 'Shri S.N.Das', 'das.sn@nic.in', '', 'Road Development', 0, 'Director Genera', 0, 0, 0, '', '', ''),
(2, 'Shri Sudip Chaudhury', 'sudipch2009@gmail.com', '', 'Planning', 0, 'CE', 0, 0, 0, '', '', ''),
(3, 'Ms.Leena Nandan', 'js-morth@gov.in', '', 'LA', 0, 'Secretary', 0, 0, 0, '', '', ''),
(4, 'Shri S.K.Verma', 'sunilkumar.verma@nic.in', '', '(S&R)Roads', 0, 'CE', 0, 0, 0, '', '', ''),
(5, 'Ms. Dakshita Das', 'dakshita.das@nic.in', '', '(T&C,GAP)', 0, 'Joint Secretary', 0, 0, 0, '', '', ''),
(6, 'Shri Ameesh Aggrawal', 'ameesh.agg@gmail.com', '', 'Accounts', 0, 'Controller', 0, 0, 0, '', '', ''),
(7, 'Shri Rohit Kumar Singh', 'singhrk@nic.in', '', 'Highway', 0, 'Joint Secretary', 0, 0, 0, '', '', ''),
(8, 'Shri Abhay Damle', 'abhay.damle.gov.in', '', 'Transport', 0, 'joint Secretary', 0, 0, 0, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `minister_db`
--
ALTER TABLE `minister_db`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
