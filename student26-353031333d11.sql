-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: sdb-56.hosting.stackcp.net
-- Generation Time: Apr 06, 2023 at 02:10 AM
-- Server version: 10.4.28-MariaDB-log
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student26-353031333d11`
--

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE `Classes` (
  `ClassesID` int(100) NOT NULL,
  `Year_Group` int(100) NOT NULL,
  `ClassName` varchar(100) NOT NULL,
  `Capacity` varchar(100) NOT NULL,
  `TeacherID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Enrol`
--

CREATE TABLE `Enrol` (
  `PupilsID` int(200) NOT NULL,
  `ClassesID` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Parents`
--

CREATE TABLE `Parents` (
  `ParentsID` int(200) NOT NULL,
  `ParentName` varchar(250) NOT NULL,
  `Par_Address` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Telephone` varchar(250) NOT NULL,
  `PupilsID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pupils`
--

CREATE TABLE `Pupils` (
  `PupilsID` int(11) NOT NULL,
  `StudentName` varchar(250) NOT NULL,
  `Stu_Address` varchar(250) NOT NULL,
  `Medical_Info` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Teachers`
--

CREATE TABLE `Teachers` (
  `TeachersID` int(250) NOT NULL,
  `TeachersName` varchar(250) NOT NULL,
  `Teach_Address` varchar(250) NOT NULL,
  `Teach_MedInfo` varchar(250) NOT NULL,
  `Teach_Phone` int(250) NOT NULL,
  `AnnualSalary` varchar(250) NOT NULL,
  `BackgroundCheck` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Classes`
--
ALTER TABLE `Classes`
  ADD PRIMARY KEY (`ClassesID`),
  ADD KEY `TeacherID` (`TeacherID`);

--
-- Indexes for table `Enrol`
--
ALTER TABLE `Enrol`
  ADD KEY `ClassesID` (`ClassesID`),
  ADD KEY `Enrol_ibfk_2` (`PupilsID`);

--
-- Indexes for table `Parents`
--
ALTER TABLE `Parents`
  ADD PRIMARY KEY (`ParentsID`),
  ADD KEY `PupilsID` (`PupilsID`);

--
-- Indexes for table `Pupils`
--
ALTER TABLE `Pupils`
  ADD PRIMARY KEY (`PupilsID`);

--
-- Indexes for table `Teachers`
--
ALTER TABLE `Teachers`
  ADD PRIMARY KEY (`TeachersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Classes`
--
ALTER TABLE `Classes`
  MODIFY `ClassesID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Parents`
--
ALTER TABLE `Parents`
  MODIFY `ParentsID` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Pupils`
--
ALTER TABLE `Pupils`
  MODIFY `PupilsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Teachers`
--
ALTER TABLE `Teachers`
  MODIFY `TeachersID` int(250) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Classes`
--
ALTER TABLE `Classes`
  ADD CONSTRAINT `Classes_ibfk_1` FOREIGN KEY (`TeacherID`) REFERENCES `Teachers` (`TeachersID`);

--
-- Constraints for table `Enrol`
--
ALTER TABLE `Enrol`
  ADD CONSTRAINT `Enrol_ibfk_1` FOREIGN KEY (`ClassesID`) REFERENCES `Classes` (`ClassesID`),
  ADD CONSTRAINT `Enrol_ibfk_2` FOREIGN KEY (`PupilsID`) REFERENCES `Pupils` (`PupilsID`);

--
-- Constraints for table `Parents`
--
ALTER TABLE `Parents`
  ADD CONSTRAINT `Parents_ibfk_1` FOREIGN KEY (`PupilsID`) REFERENCES `Pupils` (`PupilsID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
