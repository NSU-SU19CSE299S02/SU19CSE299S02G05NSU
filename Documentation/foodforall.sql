-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 07:59 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodforall`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `c_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `subj` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`c_id`, `name`, `email`, `mobile`, `subj`) VALUES
(1, 'Anik', 'anik@gmail.com', '01934567891', 'Good'),
(2, 'sumi', 'sumi@gmail.com', '017345678910', 'Good work'),
(3, 'akib', 'ak@gmail.com', '01759421030', 'Good job');

-- --------------------------------------------------------

--
-- Table structure for table `donated`
--

CREATE TABLE `donated` (
  `donated_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `req_id` int(100) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donated`
--

INSERT INTO `donated` (`donated_id`, `name`, `mobile`, `email`, `req_id`, `amount`) VALUES
(1, 'ali', '01756378514', 'ali@gmail.com', 1, 10),
(2, 'MD hasan', '01341200751', 'hasan@gmail.com', 2, 10),
(3, 'ani', '01521326152', 'd@h.com', 5, 10),
(9, 'karim', '01368547201', 'k@gmail.com', 4, 13);

-- --------------------------------------------------------

--
-- Table structure for table `donate_us`
--

CREATE TABLE `donate_us` (
  `d_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `t_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donate_us`
--

INSERT INTO `donate_us` (`d_id`, `name`, `mobile`, `amount`, `t_id`) VALUES
(1, 'ali', 1934567891, 100, '11215cdcd21'),
(2, 'Animesh', 1521326152, 500, 'as1254kkhdjjcha');

-- --------------------------------------------------------

--
-- Table structure for table `donorregistration`
--

CREATE TABLE `donorregistration` (
  `donor_id` int(100) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `m_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donorregistration`
--

INSERT INTO `donorregistration` (`donor_id`, `f_name`, `m_name`, `l_name`, `mobile`, `address`, `email`, `pwd`) VALUES
(1, 'aa', 'bb', 'cc', '123456789', '12/1/c', 'add@hotmail.com', 12345),
(5, 'MD ', 'ali', 'haque', '01785523104', '12/88/c , Mirpur,dhaka', 'ali@gmail.com', 12345),
(7, 'Animesh', ' ', 'Mondol', '01521326152', '27/1/c shymoli ,dhaka', 'ani@gmail.com', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(100) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `description` varchar(200) NOT NULL,
  `location_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `req_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `location` varchar(500) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`req_id`, `name`, `mobile`, `email`, `location`, `quantity`) VALUES
(1, 'ahanf', '01785421047', 'ahnaf@gmail.com', 'd/1/c,kathalbagan,dhaka', 20),
(2, 'Nymul haque', '01536642178', 'dj@hotmail.com', 'd/15, road no 8 , Kallyanpur, dhaka', 55),
(4, 'Rahat', '01516259555', 'ra@hotmail.com', 'ff/88d kolabagan, dhaka', 25),
(9, 'rahim', '01477852254', 'a@f.com', 'dhaka', 12),
(10, 'Animesh', '01521326152', 'ani@gmail.com', 'Khilkhet ,dhaka', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pwd`) VALUES
('a', '12345'),
('animesh', '123'),
('sumi', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `donated`
--
ALTER TABLE `donated`
  ADD PRIMARY KEY (`donated_id`);

--
-- Indexes for table `donate_us`
--
ALTER TABLE `donate_us`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `donorregistration`
--
ALTER TABLE `donorregistration`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`req_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donated`
--
ALTER TABLE `donated`
  MODIFY `donated_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `donate_us`
--
ALTER TABLE `donate_us`
  MODIFY `d_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donorregistration`
--
ALTER TABLE `donorregistration`
  MODIFY `donor_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `req_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
