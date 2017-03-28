-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2017 at 09:22 AM
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
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `day` text NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`day`, `date`, `remark`) VALUES
('sunday', '2017-01-01', 'new years day'),
('tuesday', '2017-01-03', 'prakash parva of guru gobind singh'),
('wednesday', '2017-01-04', 'prakash parva of guru gobind singh'),
('thursday', '2017-01-05', 'guru gobind singh jayanti'),
('thursday', '2017-01-12', 'birthday of swami vivekanand'),
('friday', '2017-01-13', 'bhogi'),
('saturday', '2017-01-14', 'pongal'),
('sunday', '2017-01-15', 'thiruvalluvar day'),
('monday', '2017-01-16', 'uzhavar tirunal'),
('tuesday', '2017-01-17', 'public holiday'),
('monday', '2017-01-23', 'netaji subhash chandra bose jayanti'),
('wednesday', '2017-01-25', 'statehood day'),
('thursday', '2017-01-26', 'repubic day'),
('saturday', '2017-01-18', 'losar'),
('tuesday', '2017-01-31', 'me-dam-me-phi'),
('wednesday', '2017-02-01', 'vasant panchami'),
('friday', '2017-02-10', 'guru ravidas birthday'),
('sunday', '2017-02-19', 'chatrapati shivaji maharaj jayanti'),
('tuesday', '2017-02-21', 'maharshi dayanand saraswati jayanti'),
('friday', '2017-02-24', 'maha shivratri'),
('saturday', '2017-02-25', 'maha shivratri'),
('sunday', '2017-03-05', 'panchayati raj divas'),
('sunday', '2017-03-12', 'doljatara'),
('monday', '2017-03-13', 'holi'),
('tuesday', '2017-03-21', 'nauroz'),
('tuesday', '2017-03-28', 'gudi padwa'),
('tuesday', '2017-03-28', 'cheti chand'),
('thursday', '2017-03-23', 'shaheed diwas of bhagat singh,rajguru & sukhdev'),
('wednesday', '2017-03-29', 'ugadi'),
('wednesday', '2017-03-29', 'telugu new year'),
('saturday', '2017-04-01', 'odisha day'),
('saturday', '2017-04-01', 'bank holiday'),
('tuesday', '2017-04-04', 'ramnavmi'),
('wednesday', '2017-04-05', 'ramnavmi'),
('wednesday', '2017-04-05', 'babu jagjivan ram birthday'),
('sunday', '2017-04-09', 'mahavir jayanti'),
('sunday', '2017-04-16', 'hazrat alis birthday'),
('thursday', '2017-04-13', 'vaishakhi'),
('friday', '2017-04-14', 'good friday'),
('friday', '2017-04-14', 'tamil new year'),
('friday', '2017-04-14', 'vishu'),
('friday', '2017-04-14', 'bohag bihu'),
('friday', '2017-04-14', 'biju festival'),
('saturday', '2017-04-15', 'bengali new year'),
('saturday', '2017-04-15', 'himachal day'),
('saturday', '2017-04-15', 'bhog bihu holiday'),
('sunday', '2017-04-16', 'bhoh bihu holiday'),
('friday', '2017-04-21', 'garia puja'),
('monday', '2017-04-24', 'shab-I-mirja'),
('friday', '2017-04-28', 'parashuram jayanti'),
('saturday', '2017-04-29', 'basava jayanti'),
('saturday', '2017-04-29', 'lord parshuram jayanti'),
('monday', '2017-05-01', 'maharashtra day'),
('monday', '2017-05-01', 'may day'),
('tuesday', '2017-05-09', 'birthday of rabindra nath tagore'),
('wednesday', '2017-05-10', ' buddha purnima'),
('tuesday', '2017-05-16', 'state day'),
('friday', '2017-05-26', 'birthday of kazi nasrul islam'),
('sunday', '2017-05-28', 'maharana pratap jayanti'),
('monday', '2017-05-29', 'guru arjun dev martyrdom day'),
('friday', '2017-06-16', 'sant guru kabir jayanti'),
('wednesday', '2017-06-14', 'pahili raja'),
('thursday', '2017-06-15', 'raja sankranthi'),
('friday', '0000-00-00', 'jummat-ul-wida'),
('sunday', '2017-06-25', 'ratha yatra'),
('sunday', '2017-06-25', 'idul fitr'),
('monday', '2017-06-26', 'idul fitr'),
('tuesday', '2017-06-27', 'idul fitr holiday'),
('sunday', '2017-07-01', 'karachi puja'),
('monday', '2017-07-10', 'bonalu'),
('saturday', '2017-07-15', 'ker puja'),
('wednesday', '2017-07-26', 'teej'),
('monday', '2017-07-31', 'martyrdom day of shaheed udham singh'),
('monday', '2017-08-07', 'raksha bandhan'),
('monday', '2017-08-14', 'janmashtami'),
('tuesday', '2017-08-15', 'independance day'),
('tuesday', '2017-08-15', 'janmashtami'),
('thursday', '2017-08-17', 'parsi new year'),
('tuesday', '2017-08-22', 'prakash utsav shri guru granth sahib ji'),
('friday', '2017-08-25', 'ganesh chaturthi'),
('saturday', '2017-08-26', 'nuakhai'),
('wednesday', '2017-08-30', 'birthday of baba shri chand ji'),
('friday', '2017-09-01', 'idul-ad\"ha'),
('saturday', '2017-09-02', 'idul-juha'),
('sunday', '2017-09-03', 'first onam'),
('monday', '2017-09-04', 'thiruvonam'),
('wednesday', '2017-09-06', 'shree narayan guru jayanti'),
('tuesday', '2017-09-19', 'mahalaya'),
('wednesday', '2017-09-20', 'bathukamma starting day'),
('thursday', '2017-09-21', 'muharram'),
('thursday', '2017-09-21', 'maharaj agrasen jayanti'),
('thursday', '2017-09-21', 'shri narayan guru samadhi'),
('saturday', '2017-09-23', 'harnayas heroes martyrdom day'),
('wednesday', '2017-09-27', 'saptamo of durgapuja'),
('thursday', '2017-09-28', 'durgapuja'),
('thursday', '2017-09-28', 'ayudha puja'),
('thursday', '2017-09-28', 'durgastami'),
('friday', '2017-09-29', 'mahanavmi'),
('friday', '2017-09-29', 'dussehra'),
('saturday', '2017-09-30', 'dussehra'),
('saturday', '2017-09-30', 'vijaya dashami'),
('sunday', '2017-10-01', 'muharram(10th day)'),
('monday', '2017-10-02', 'mahatama gandhi birthday'),
('tuesday', '2017-10-03', 'puja holiday(additional)'),
('wednesday', '2017-10-04', 'puja holiday(additional)'),
('thursday', '2017-10-05', 'maharishi valmiki birthday'),
('thursday', '2017-10-05', 'lakshmi puja'),
('saturday', '2017-10-07', 'prakash gurpurab of shri guru ram dass ji'),
('wednesday', '2017-10-18', 'deewali'),
('wednesday', '2017-10-18', 'kati bihu'),
('wednesday', '2017-10-18', 'narak chaturdashi'),
('thursday', '2017-10-19', 'kali puja'),
('thursday', '2017-10-19', 'deewali'),
('friday', '2017-10-20', 'vishavkarma day'),
('friday', '2017-10-20', 'deepavali'),
('friday', '2017-10-20', 'vikram samvat new year'),
('friday', '2017-10-20', 'govardhan puja'),
('saturday', '2017-10-21', 'bhai bij'),
('tuesday', '2017-10-31', 'public holiday'),
('wednesday', '2017-11-01', 'haryana day'),
('wednesday', '2017-11-01', 'kannada rajyotsava'),
('saturday', '2017-11-04', 'guru nanak birthday'),
('saturday', '2017-11-04', 'rasa purnima'),
('monday', '2017-11-06', 'kanakadasa jayanti'),
('thursday', '2017-11-23', 'martyrdom day of shri gutu teg bahadur ji'),
('friday', '2017-12-01', 'milad-un-nabi'),
('saturday', '2017-12-02', 'milad-un-nabi'),
('sunday', '2017-12-03', 'feast of st francis xaviers'),
('monday', '2017-12-18', 'guru ghasidas jayanti'),
('tuesday', '2017-12-19', 'goa liberation day'),
('monday', '2017-12-25', 'christmas day'),
('monday', '2017-12-25', 'guru gobind singh jayanti'),
('tuesday', '2017-12-26', 'shaheed udham singh birthday'),
('tuesday', '2017-12-26', 'boxing day');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
