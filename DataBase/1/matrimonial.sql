-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2023 at 07:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrimonial`
--

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `sn` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `tcode` varchar(255) NOT NULL,
  `temail` varchar(255) NOT NULL,
  `fcode` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `dt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`sn`, `code`, `tcode`, `temail`, `fcode`, `femail`, `msg`, `dt`) VALUES
(1, 'mqZR3J_1', 'I1cTC7_2', 'suman@gmail.com', 'QG8exU_3', 'Riya@gmail.com', 'Hye Suma', 'Tue Aug 01 21:57:42 PDT 2023'),
(2, '7WpBxE_2', 'QG8exU_3', 'Riya@gmail.com', 'I1cTC7_2', 'suman@gmail.com', 'hye buddy how u', 'Tue Aug 01 21:59:23 PDT 2023');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `sn` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `caste` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`sn`, `code`, `email`, `password`, `fname`, `lname`, `gender`, `caste`, `religion`, `state`, `country`, `dob`) VALUES
(1, 'uy9TeG_1', 'pramod@gmail.com', '123', 'Pramod', 'Saini', 'male', 'Saini', 'Hindu', 'Rajsthan', 'India', '2000-06-25'),
(2, 'I1cTC7_2', 'suman@gmail.com', '123', 'Suman', 'Sharma', 'female', 'Khan', 'Hindu', 'Rajsthan', 'India', '2000-12-12'),
(3, 'QG8exU_3', 'Riya@gmail.com', '1234', 'Riya', 'Kumari', 'female', 'Khan', 'Hindu', 'Asam', 'India', '1990-05-02'),
(4, 'doVXbB_4', 'Krishan@gmail.com', '123', 'Krishan', 'Singh', 'male', 'Singh', 'Hindu', 'Rajsthan', 'India', '2002-07-25'),
(5, '2P908b_5', 'Sharad@gmail.com', '123', 'Sharad', 'Dudi', 'male', 'Khan', 'Hindu', 'Rajsthan', 'India', '2002-01-01'),
(6, 'w2FPYJ_6', 'priya@gmail.com', '123', 'Priya', 'kumari', 'female', 'Goyal', 'Hindu', 'Rajsthan', 'India', '1975-05-12'),
(7, '6kZCDj_7', 'Siya@gmail.com', '123', 'Siya', 'Singh', 'female', 'Singh', 'Hindu', 'Rajsthan', 'India', '2009-07-23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
