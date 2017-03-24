-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 24, 2017 at 12:46 PM
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
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`id`, `name`, `contact`, `email`, `address`, `location`) VALUES
(1, 'National Highways Authority of India', '25093503', ' chairman@nhai.org', 'Plot No. G-5 & 6, Sector-10, Dwarka, New Delhi-75', 'delhi'),
(4, 'Regional Office, Bhopal', ' 0755-2551329', 'romorthbhoal@gmail.com', 'MP PWD - D Wing, Satpura Bhawan, Bhopal', 'bhopal'),
(5, 'Regional Office Chandigarh', '0172-2743228', ' mostchd@chd.nic.in', 'Kendriya Sadan, e Floor, Sector 9A, Chandigarh', 'chandigarh'),
(6, 'Regional Office. Gandhinagar', '079-23240091 ', 'rogandhinagar@yahoo.in', 'New Sachivalaya, Block No.14, 2na Floor, Gandhinagar', 'gandhinagar'),
(7, 'Regional Office, Kolkata', ' 033-23586940', 'rocmorth@gmail.com', 'Room No. 106, Block C, 1stFloor, Salt Lake, Kolkata', 'kolkata'),
(8, 'Regional Office (Civil) Bangalore', ' 080-22105765', 'robengaluru@gmail.com', 'Annexe Building, PWD Office, K.R Circle, Bengaluru', 'bangalore'),
(9, 'Regional Office Chennai', '044-24919341', ' rochennaimorth@gmail.com', 'C-1A, Rajaji Bhawan, Besant Nagar, Chennai', 'chennai'),
(10, 'Regional Office, Lucknow', ' 0522- 27388800', 'rolkorth@gmail.com', ' NH Bhawan, Biotech Chowk,Vikas Nagar, Lucknow', 'lucknow'),
(11, 'Regional Office, Patna', '0612-2525501\r\n', ' ropatnamorth@gmail.com 17', ' Aniket Housing Cooperative Society, lAS Colony Kidwaipuri, S.K Nagar, Patna\r\n', 'patna'),
(12, 'Regional Office, Guwahati', ' 0361-2526943', ' roghy2007@gmail.com', ' H.No. 7, Near Mahavidyamandir School, Rajgarh Main', 'guwahati'),
(13, 'Regional Office Hyderabad', ' 040-23373549', ' sehyderabad@gmail.com', ' 2ndFloor, Quality Control Building, Errum Manzil Colony Hydrabad', 'hyderabad'),
(14, 'Regional Office,Thiruvanthapuram ', ' 0471-23356306', ' rokeralamorth@gmail.com', ' CE(NH), Public Office Building,Thiruvanthapuram', 'thiruvananthapuram'),
(15, 'ELO Raipur', ' 0771-2436637 ', 'eloraipur@rediffmail.com', ' NH Campus, Pensionbada, Raipur', 'raipur'),
(16, 'Regional Office Mumbai', ' 022-25288470 ', 'romumbai@rediffmail.com', ' 95, New Admn. Buidling No.2 Ground Floor, PWO Compound, RC Marg, Chembur, Mumbai', 'mumbai'),
(17, 'Regional Office Bhubaneshwar', ' 0674-2564546', ' robbsr.morth@gmail.com', ' C/o World Bank Project, 184, Infront of CRPF Stadium Baramunda, Bubaneshwar', 'bhubaneshwar'),
(18, 'Regional Office (Civil) Ranchi', ' 06512550301', 'roranchi03@gmail.com', ' Engineers Hostel, Ground floor, Suit No.3 HECCampus, PO Ohurwa, Ranchi', 'ranchi'),
(20, 'RO Dehradun', ' 035-2531125', ' romorthddn@gmail.com ', 'C/o CE Level 1, PWO, Uttranchal Camp Office DEhradun', 'dehradun'),
(21, 'Regional Office, Jaipur', ' 0141-2811776', ' ro.jaipur.morth@gmail.com ', 'OCM Ajmer Road, P.O. Shyam Nagar, Jaipur', 'jaipur'),
(2, 'Indian Academy of Highway Engineers', '0120- 2400085 - 86 2405006 - 09', ' director.iahe@gmail.com', ' A-5, Institutional Area, Sector 62, NOIDA, UP', 'noida'),
(3, 'National Highways and Infrastructure Development Corporation, N. Delhi\r\n', '·23461600 ', 'info@nhidcl.com ', '3rd Floor, PTI Building, 4 Parliament Street,\r\nNew Delhi - 110001\r\n', ''),
(19, 'ELO Shimla', ' ', 'eloshimla@gmail.com', 'Nirman Bhawan, Simla-II, Himachal Pradesh', 'himachal'),
(22, 'Regional Office, Itanagar', ' ', 'ashwani.kmr@nic.in', 'House No. 522, Ground Floor, Millan Nagar, Gutlung Tezpur-784001, Assam', 'itanagar'),
(23, ' Regional Office, Vijaywada', ' ', 'shrawan.k@nic.in', 'Regional Office Vijaywada, Mlo Road Transport &Highways, Gorle DalappanaVeedhi, Near American Hospit', 'vijaywada');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
