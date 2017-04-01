-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2017 at 08:25 AM
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
-- Table structure for table `bank_holidays`
--

CREATE TABLE `bank_holidays` (
  `day` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_holidays`
--

INSERT INTO `bank_holidays` (`day`, `date`, `remark`) VALUES
('Thursday', '2017-01-26', 'Republic Holiday'),
('Sunday', '2017-02-09', 'Chatrapai Shivaji Maharaj Jayanti'),
('Tuesday', '2017-02-21', 'NEFT HOLIDAY IN INDIA'),
('Tuesday', '2017-02-21', 'Maha Shivratri'),
('Monday', '2017-03-13', 'Holi'),
('Tuesday', '2017-03-28', 'Gudi Padwa'),
('Tuesday', '2017-04-04', 'Shree Ram Navmi'),
('Sunday', '2017-04-09', 'Mahavir Jayanti'),
('Friday', '2017-04-14', 'DR BABA SAHEB AMBEDKAR BIRTHDAY/ GOOD FRIDAY'),
('Monday', '2017-05-01', 'MAY DAY / LABOUR DAY'),
('Wednesday', '2017-05-10', 'BUDDHA PURNIMA'),
('Monday', '2017-06-26', 'RAMZAN (IDUL-FITR)'),
('Tuesday', '2017-08-15', 'INDEPENDENCE DAY'),
('Thursday', '2017-08-17', 'PARSI NEW YEAR'),
('Friday', '2017-08-17', 'GANESH CHATHURTHI'),
('Saturday', '2017-09-01', 'BAKRID / ID-UD-JOJA / EID-UL-AZHA'),
('Saturday', '2017-09-30', 'DUSSEHRA / VIJAYA DASAMI'),
('Sunday', '2017-10-01', 'MOHARRUM'),
('Monday', '2017-10-02', 'MAHATMA GANDHI JAYANTI'),
('Thursday', '2017-10-19', 'DIWALI'),
('Friday', '2017-10-20', 'VIKRAM SAMVAT NEW YEAR DAY / DIWALI'),
('Saturday', '2017-11-04', 'GURU NANAK BIRTHDAY'),
('Friday', '2017-12-01', 'MILAD I SHERIF'),
('Monday', '2017-12-25', 'CHRISTMAS DAY');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
