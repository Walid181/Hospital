-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2016 at 08:03 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appt`
--

CREATE TABLE IF NOT EXISTS `appt` (
  `ano` int(11) NOT NULL AUTO_INCREMENT,
  `adoctor` int(11) NOT NULL,
  `apatient` int(11) NOT NULL,
  `atime` varchar(11) NOT NULL,
  `ashow` varchar(1) NOT NULL DEFAULT 'Y',
  `adate` date NOT NULL,
  PRIMARY KEY (`ano`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `appt`
--

INSERT INTO `appt` (`ano`, `adoctor`, `apatient`, `atime`, `ashow`, `adate`) VALUES
(1, 1, 1, '12:12', 'Y', '2021-04-12'),
(2, 3, 2, '12:40', 'N', '2021-04-22'),
(3, 4, 3, '12:10', 'Y', '2021-04-05'),
(4, 4, 4, '12:10', 'Y', '2021-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `doct`
--

CREATE TABLE IF NOT EXISTS `doct` (
  `dno` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(30) NOT NULL,
  `dspec` varchar(30) NOT NULL,
  `dshow` varchar(1) NOT NULL DEFAULT 'Y',
  `image` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`dno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `doct`
--

INSERT INTO `doct` (`dno`, `dname`, `dspec`, `dshow`,`image`) VALUES
(1, 'Dr. Mohammad Ripon', 'heart', 'Y',''),
(2, 'Dr. Sheikh Anwarul Karim', 'brain', 'Y',''),
(3, 'Dr. Mohammad Shahin', 'Kidneyy', 'N',''),
(4, 'Dr. Kamrun Nahar Luna', 'Homeopath', 'Y',''),
(5, 'Dr. A M Shafayet Hossain', 'Dentist', 'Y',''),
(6, 'Dr. Muhammad Mukit Osman Chowdhury', 'General Physician', 'Y',''),
(7, 'Anuj kumar', 'Dermatologist', 'Y',''),
(8, 'Test Doctor', 'fdfdfd', 'Y','');

CREATE TABLE IF NOT EXISTS `photos` (
  `photo_id` int(100) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`photo_id`, `location`, `admin_id`, `date_added`) VALUES
(1, 'upload/143025260_2740451426271473_5158167721526842890_n.jpg', '1', '2020-10-13 01:11:07'),
(2, 'upload/143025260_2740451426271473_5158167721526842890_n.jpg', '1', '2020-10-14 18:53:51');

-- --------------------------------------------------------
--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `pno` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(30) NOT NULL,
  `paddr` varchar(30) NOT NULL,
  `psex` varchar(1) NOT NULL,
  `pshow` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pno`, `pname`, `paddr`, `psex`, `pshow`) VALUES
(1, 'Rakib Hasan', 'Narayangong,Chasara', 'Male', 'Y'),
(2, 'Rabeya Begum', 'Mohammadpur,Dhaka', 'Female', 'Y'),
(3, 'Mohin', 'Old Dhaka', 'Male', 'Y'),
(4, 'Jahanara Begum', 'Dhanmondi-32,Dhaka', 'Female', 'Y'),
(5, 'Rasel Mia', 'Narayangong', 'Male', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE IF NOT EXISTS `slot` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `stime` varchar(15) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
