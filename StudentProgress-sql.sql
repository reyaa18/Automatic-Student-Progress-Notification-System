-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 26, 2024 at 04:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `StudentProgress`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `EmailID` varchar(20) NOT NULL,
  `Password` mediumtext NOT NULL,
  `Role` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `UserName`, `EmailID`, `Password`, `Role`) VALUES
(1, 'Srinath', 'sri@gmail.com', '$2y$10$rNhBiwmE6l9ny06ngfABueclonMcRn2xawzRZlGZNjM.XKIVGp/Uq', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `MarkDetails`
--

CREATE TABLE `MarkDetails` (
  `id` int(11) NOT NULL,
  `PaperMonth` varchar(10) NOT NULL,
  `PaperClass` varchar(10) NOT NULL,
  `PaperSection` varchar(10) NOT NULL,
  `PaperName` varchar(50) NOT NULL,
  `PaperMark` varchar(50) NOT NULL,
  `PaperStatus` varchar(5) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `MarkDetails`
--

INSERT INTO `MarkDetails` (`id`, `PaperMonth`, `PaperClass`, `PaperSection`, `PaperName`, `PaperMark`, `PaperStatus`) VALUES
(14, 'January', 'BECS', 'A', 'JAVA', '50', 'Y'),
(15, 'January', 'BECS', 'A', 'C++', '50', 'Y'),
(16, 'January', 'BECS', 'A', 'Python', '50', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `SendMail`
--

CREATE TABLE `SendMail` (
  `id` int(11) NOT NULL,
  `StuMonth` varchar(10) NOT NULL,
  `StuClass` varchar(10) NOT NULL,
  `StuSection` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `SendMail`
--

INSERT INTO `SendMail` (`id`, `StuMonth`, `StuClass`, `StuSection`) VALUES
(5, 'January', 'BECS', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `StudentMark`
--

CREATE TABLE `StudentMark` (
  `id` int(11) NOT NULL,
  `ExamMonth` varchar(10) NOT NULL,
  `ExamClass` varchar(10) NOT NULL,
  `ExamSection` varchar(10) NOT NULL,
  `StudentAdmnisison` varchar(15) NOT NULL,
  `StudentName` varchar(30) NOT NULL,
  `ExamPaperName` varchar(30) NOT NULL,
  `ExamMark` varchar(30) NOT NULL,
  `ExamRequiredMark` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `StudentMark`
--

INSERT INTO `StudentMark` (`id`, `ExamMonth`, `ExamClass`, `ExamSection`, `StudentAdmnisison`, `StudentName`, `ExamPaperName`, `ExamMark`, `ExamRequiredMark`) VALUES
(2, 'January', 'BECS', 'A', '002', 'Srinath', 'JAVA', '4', '50'),
(6, 'January', 'BECS', 'A', '002', 'Srinath', 'C++', '4', '50'),
(14, 'January', 'BECS', 'A', '002', 'Srinath', 'Python', '50', '50');

-- --------------------------------------------------------

--
-- Table structure for table `StudentMaster`
--

CREATE TABLE `StudentMaster` (
  `id` int(11) NOT NULL,
  `StudentAdmno` varchar(15) NOT NULL,
  `StudentName` varchar(50) NOT NULL,
  `StudentClass` varchar(10) NOT NULL,
  `StudentSection` varchar(5) NOT NULL,
  `StudentGender` varchar(5) NOT NULL,
  `FatherName` varchar(50) NOT NULL,
  `MotherName` varchar(50) NOT NULL,
  `StudentMail` varchar(50) DEFAULT NULL,
  `FatherMail` varchar(50) NOT NULL,
  `MotherMail` varchar(50) NOT NULL,
  `StudentNumber` varchar(15) NOT NULL,
  `FatherNumber` varchar(15) NOT NULL,
  `MotherNumber` varchar(15) NOT NULL,
  `StudentStatus` varchar(5) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `StudentMaster`
--

INSERT INTO `StudentMaster` (`id`, `StudentAdmno`, `StudentName`, `StudentClass`, `StudentSection`, `StudentGender`, `FatherName`, `MotherName`, `StudentMail`, `FatherMail`, `MotherMail`, `StudentNumber`, `FatherNumber`, `MotherNumber`, `StudentStatus`) VALUES
(3, '4545', 'sfsdf', 'BECS', 'A', 'M', 'sdsff', 'sddfsdf', '', 'sddfdsf@sdfdsdf.gfgfd', 'ffg@fsd.fgfdfg', '1234567895', '1234567895', '1234567895', 'N'),
(5, '454533232', 'SHRINATH B', 'BECS', 'A', 'M', 'sdsff', 'sddfsdf', NULL, 'sddfdsf@sdfdsdf.gfgfd3434', 'ffg@fsd.fgfdfg3434', '1234367895', '1234367895', '1234367895', 'N'),
(6, '5454', 'sfsdf', '', 'A', 'M', 'sdfsdf', 'sddfsdf', NULL, 'aasdsak@asdad.asdad', 'aasdsak@asdad.asdad', '7339124924', '7339124924', '7339124924', 'N'),
(8, '001', 'Srinath', 'BECS', 'A', 'M', 'ABC', 'ABC', NULL, 'shribsccs@gmail.com', 'shribsccs@gmail.com', '7339124924', '7339124924', '7339124924', 'Y'),
(9, '002', 'Srinath', 'BECS', 'A', 'M', 'ABC', 'ABC', NULL, 'shribsccs@gmail.com', 'shribsccs@gmail.com', '7339124927', '7339124927', '7339124927', 'Y'),
(10, '003', 'Sri', 'BECS', 'A', 'M', 'ABC', 'ABC', NULL, 'shribsccs@gmail.com', 'shribsccs@gmail.com', '7339124921', '7339124921', '7339124921', 'Y'),
(11, '004', 'Shri', 'BECS', 'A', 'M', 'ABC', 'ABC', NULL, 'shribsccs@gmail.com', 'shribsccs@gmail.com', '7339124922', '7339124922', '7339124922', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MarkDetails`
--
ALTER TABLE `MarkDetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SendMail`
--
ALTER TABLE `SendMail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `StudentMark`
--
ALTER TABLE `StudentMark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `StudentMaster`
--
ALTER TABLE `StudentMaster`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `MarkDetails`
--
ALTER TABLE `MarkDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `SendMail`
--
ALTER TABLE `SendMail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `StudentMark`
--
ALTER TABLE `StudentMark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `StudentMaster`
--
ALTER TABLE `StudentMaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
