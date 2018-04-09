-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2018 at 12:58 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poolit`
--

-- --------------------------------------------------------

--
-- Table structure for table `carowner`
--

CREATE TABLE `carowner` (
  `cid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `carid` int(11) NOT NULL,
  `lisno` varchar(10) NOT NULL,
  `authorised` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `carid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `no` varchar(8) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`carid`, `name`, `no`, `seats`) VALUES
(1, 'Camry', 'MH 02 AA', 3),
(3, 'Swift', 'AH 01 PP', 3),
(4, 'Innova', 'MH 01 QQ', 5),
(6, 'Accent', 'MH 01 WW', 3),
(9, 'City', 'DL 11 RR', 3),
(11, 'Ritz', 'JK 01 TT', 2),
(13, 'Santro', 'RJ 77 PK', 3),
(15, 'Innova', 'MH 88 FF', 2),
(17, 'Wagon R', 'MH 78 PP', 3),
(19, 'Jaguar', 'JK 88 FF', 2),
(21, 'Porche', 'UP 12 TY', 3),
(24, 'Verito', 'MH 02 AV', 2),
(26, 'Pajero', 'MH 04 VG', 3),
(27, 'Camry', 'MH 01 KK', 1),
(29, 'Corola', 'MH 88 JJ', 3),
(30, 'Camry', 'MH 19 PO', 3);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `pid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`pid`, `name`, `source`, `destination`, `email`, `password`) VALUES
(1, 'aar', '', '', 'a@b.com', 'Asdfg1'),
(2, 'aaarish', '', '', 'a@c.com', 'Asdfg1'),
(3, 'welisa', '', '', 'w@c.com', 'Asdfg1');

-- --------------------------------------------------------

--
-- Table structure for table `rides`
--

CREATE TABLE `rides` (
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `seats` int(11) NOT NULL,
  `date` date NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carowner`
--
ALTER TABLE `carowner`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`carid`),
  ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `rides`
--
ALTER TABLE `rides`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carowner`
--
ALTER TABLE `carowner`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `carid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rides`
--
ALTER TABLE `rides`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
