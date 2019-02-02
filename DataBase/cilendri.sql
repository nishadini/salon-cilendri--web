-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 03:31 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cilendri`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `username` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `a_type` varchar(255) NOT NULL,
  `sino` int(255) NOT NULL,
  `status` int(255) NOT NULL,
  `view` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`username`, `date`, `time`, `a_type`, `sino`, `status`, `view`) VALUES
('rasheema', '2018-09-08', '10:20', 'hairdressing', 11, 1, 1),
('rasheema', '2018-10-08', '08:00', 'haircolor', 12, 0, 0),
('rasheema', '2018-12-10', '15:20', 'treatment', 13, 0, 0),
('rasheema', '2018-08-03', '12:30', 'hairdressing', 14, 2, 1),
('sithara', '2018-08-15', '13:30', 'treatment', 15, 1, 0),
('rasheema', '2018-08-09', '10:50', 'hairdressing', 16, 1, 0),
('rasheema', '2018-10-10', '09:10', 'treatment', 17, 2, 0),
('chami', '2018-12-10', '08:20', 'treatment', 18, 1, 0),
('pramod', '2018-09-06', '10:00', 'hairdressing', 19, 1, 0),
('pramod', '2018-12-08', '10:20', 'treatment', 20, 2, 0),
('Thisali', '2018-08-07', '20:22', 'hairdressing', 21, 1, 0),
('sithara', '2018-09-06', '12:30', 'treatment', 22, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sino` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`username`, `firstname`, `lastname`, `id`, `mobileno`, `email`, `password`, `sino`) VALUES
('deshan', 'deshan', 'koshala', '952760386v', '8137027213', 'deshankoshala@gmail.com', '123', 3),
('sithara', 'sithara', 'nishadini', '957522246', '0719801636', 'sitharanishadini001@gmail.com', 'sithara', 5),
('kulasiri', 'kulasiri', 'de silva', '957522245', '0713057672', 'sitharanishadini001@gmail.com', 'kulasiri', 10),
('rasheema', 'rasheema', 'sandeepani', '977522246', '0712051464', 'sitharanishadini001@gmail.com', 'rush', 11),
('chami', 'chami', 'praveena', '957522246', '0719801636', 'sitharanishadini001@gmail.com', 'chami', 12),
('pramod', 'pramod', 'shehan', '922490031', '0719801636', 'sitharanishadini001@gmail.com', 'pramod', 13),
('Thisali', 'Thisali', 'Devindi', '957483267', '0719760184', 't.devindi95@gmail.com', 'thisali', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`sino`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`sino`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `sino` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `sino` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
