-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2016 at 08:54 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collaboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `roomlist_tbl`
--

CREATE TABLE IF NOT EXISTS `roomlist_tbl` (
  `room_email` varchar(50) NOT NULL,
  `room_name` varchar(50) NOT NULL,
  `room_pass` varchar(50) NOT NULL,
  `room_port` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomlist_tbl`
--

INSERT INTO `roomlist_tbl` (`room_email`, `room_name`, `room_pass`, `room_port`) VALUES
('m.fajar.adianto@gmail.com', 'server1', '123', 9300);

-- --------------------------------------------------------

--
-- Table structure for table `userlist_tbl`
--

CREATE TABLE IF NOT EXISTS `userlist_tbl` (
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_lname` varchar(50) NOT NULL,
  `user_gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlist_tbl`
--

INSERT INTO `userlist_tbl` (`user_email`, `user_password`, `user_fname`, `user_lname`, `user_gender`) VALUES
('1@yahoo.com', '1', 'xyz', 'fusion', 'Male'),
('7conservation@gmail.com', 'palapa', 'Arief', 'Miharja', 'Male'),
('luki@luki.com', 'luki1234', 'luki', 'bs', 'Male'),
('m.fajar.adianto@gmail.com', '12345', 'Fajar', 'Adianto', 'Male'),
('putrisenvia@gmail.com', 'putri', 'Putri', 'Senvia', 'Female'),
('ryanbobbyandikaandika@yahoo.com', 'ryan', 'Ryan', 'Andika', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `roomlist_tbl`
--
ALTER TABLE `roomlist_tbl`
  ADD PRIMARY KEY (`room_email`,`room_name`),
  ADD UNIQUE KEY `port` (`room_port`),
  ADD KEY `room_port` (`room_port`);

--
-- Indexes for table `userlist_tbl`
--
ALTER TABLE `userlist_tbl`
  ADD PRIMARY KEY (`user_email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
