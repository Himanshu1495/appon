-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2017 at 06:32 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

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
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`id`, `name`, `contact`, `email`, `address`) VALUES
(1, 'National Highways Authority of India', '25093503', ' chairman@nhai.org', 'Plot No. G-5 & 6, Sector-10, Dwarka, New Delhi-75'),
(2, 'Indian Academy of Highway Engineers', '0120- 2400085 - 86 2405006 - 09', ' director.iahe@gmail.com', ' A-5, Institutional Area, Sector 62, NOIDA, UP'),
(3, 'National Highways and Infrastructure Development Corporation, N. Delhi\r\n', '·23461600 ', 'info@nhidcl.com ', '3rd Floor, PTI Building, 4 Parliament Street,\r\nNew Delhi - 110001\r\n'),
(4, 'Regional Office, Bhopal', ' 0755-2551329', 'romorthbhoal@gmail.com', 'MP PWD - D Wing, Satpura Bhawan, Bhopal'),
(5, 'Regional Office Chandigarh', '0172-2743228', ' mostchd@chd.nic.in', 'Kendriya Sadan, e Floor, Sector 9A, Chandigarh'),
(6, 'Regional Office. Gandhinagar', '079-23240091 ', 'rogandhinagar@yahoo.in', 'New Sachivalaya, Block No.14, 2na Floor, Gandhinagar'),
(7, 'Regional Office, Kolkata', ' 033-23586940', 'rocmorth@gmail.com', 'Room No. 106, Block C, 1stFloor, Salt Lake, Kolkata'),
(8, 'Regional Office (Civil) Bangalore', ' 080-22105765', 'robengaluru@gmail.com', 'Annexe Building, PWD Office, K.R Circle, Bengaluru'),
(9, 'Regional Office Chennai', '044-24919341', ' rochennaimorth@gmail.com', 'C-1A, Rajaji Bhawan, Besant Nagar, Chennai'),
(10, 'Regional Office, Lucknow', ' 0522- 27388800', 'rolkorth@gmail.com', ' NH Bhawan, Biotech Chowk,Vikas Nagar, Lucknow'),
(11, 'Regional Office, Patna', '0612-2525501\r\n', ' ropatnamorth@gmail.com 17', ' Aniket Housing Cooperative Society, lAS Colony Kidwaipuri, S.K Nagar, Patna\r\n'),
(12, 'Regional Office, Guwahati', ' 0361-2526943', ' roghy2007@gmail.com', ' H.No. 7, Near Mahavidyamandir School, Rajgarh Main'),
(13, 'Regional Office Hyderabad', ' 040-23373549', ' sehyderabad@gmail.com', ' 2ndFloor, Quality Control Building, Errum Manzil Colony Hydrabad'),
(14, 'Regional Office,Thiruvanthapuram ', ' 0471-23356306', ' rokeralamorth@gmail.com', ' CE(NH), Public Office Building,Thiruvanthapuram'),
(15, 'ELO Raipur', ' 0771-2436637 ', 'eloraipur@rediffmail.com', ' NH Campus, Pensionbada, Raipur'),
(16, 'Regional Office Mumbai', ' 022-25288470 ', 'romumbai@rediffmail.com', ' 95, New Admn. Buidling No.2 Ground Floor, PWO Compound, RC Marg, Chembur, Mumbai'),
(17, 'Regional Office Bhubaneshwar', ' 0674-2564546', ' robbsr.morth@gmail.com', ' C/o World Bank Project, 184, Infront of CRPF Stadium Baramunda, Bubaneshwar'),
(18, 'Regional Office (Civil) Ranchi', ' 06512550301', 'roranchi03@gmail.com', ' Engineers Hostel, Ground floor, Suit No.3 HECCampus, PO Ohurwa, Ranchi'),
(19, 'ELO Shimla', ' ', 'eloshimla@gmail.com', 'Nirman Bhawan, Simla-II, Himachal Pradesh'),
(20, 'RO Oehradun', ' 035-2531125', ' romorthddn@gmail.com ', 'C/o CE Level 1, PWO, Uttranchal Camp Office DEhradun'),
(21, 'Regional Office, Jaipur', ' 0141-2811776', ' ro.jaipur.morth@gmail.com ', 'OCM Ajmer Road, P.O. Shyam Nagar, Jaipur'),
(22, 'Regional Office, Itanagar', ' ', 'ashwani.kmr@nic.in', 'House No. 522, Ground Floor, Millan Nagar, Gutlung Tezpur-784001, Assam'),
(23, ' Regional Office, Vijaywada', ' ', 'shrawan.k@nic.in', 'Regional Office Vijaywada, Mlo Road Transport &Highways, Gorle DalappanaVeedhi, Near American Hospit');

-- --------------------------------------------------------

--
-- Table structure for table `minister_db`
--

CREATE TABLE `minister_db` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
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

INSERT INTO `minister_db` (`id`, `name`, `email`, `department`, `rating`, `position`, `total`, `resolved`, `pending`, `uuid`, `photo`, `location`) VALUES
(1, 'Shri S.N.Das', 'das.sn@nic.in', 'Road Development', 0, 'Director Genera', 0, 0, 0, '', '', ''),
(2, 'Shri Sudip Chaudhury', 'sudipch2009@gmail.com', 'Planning', 0, 'CE', 0, 0, 0, '', '', ''),
(3, 'Ms.Leena Nandan', 'js-morth@gov.in', 'LA', 0, 'Secretary', 0, 0, 0, '', '', ''),
(4, 'Shri S.K.Verma', 'sunilkumar.verma@nic.in', '(S&R)Roads', 0, 'CE', 0, 0, 0, '', '', ''),
(5, 'Ms. Dakshita Das', 'dakshita.das@nic.in', '(T&C,GAP)', 0, 'Joint Secretary', 0, 0, 0, '', '', ''),
(6, 'Shri Ameesh Aggrawal', 'ameesh.agg@gmail.com', 'Accounts', 0, 'Controller', 0, 0, 0, '', '', ''),
(7, 'Shri Rohit Kumar Singh', 'singhrk@nic.in', 'Highway', 0, 'Joint Secretary', 0, 0, 0, '', '', ''),
(8, 'Shri Abhay Damle', 'abhay.damle.gov.in', 'Transport', 0, 'joint Secretary', 0, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `app_id` varchar(50) NOT NULL,
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `agenda` text NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `color` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`app_id`, `id`, `name`, `agenda`, `date`, `time`, `color`) VALUES
('1', 0, 'Yagnesh', 'toll', '2017-03-15', '04:14:18.391797', '#ffb128'),
('2', 0, 'Himanshu', 'Vehicle Overload', '2017-03-17', '19:21:50.484656', '#28cbff'),
('3', 0, 'Chintan', 'Highway safety', '2017-03-17', '15:30:00.000000', '#9cc370'),
('4', 0, 'Karan', 'Overcharged Penalties', '2017-04-05', '10:00:00.000000', '#9cc370');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minister_db`
--
ALTER TABLE `minister_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`app_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
