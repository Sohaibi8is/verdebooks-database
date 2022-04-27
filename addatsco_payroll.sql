-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2022 at 01:03 AM
-- Server version: 5.7.38
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `addatsco_payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `cheques`
--

CREATE TABLE `cheques` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `regularPayHours` varchar(100) DEFAULT NULL,
  `employeeId` varchar(100) DEFAULT NULL,
  `varcationPayHours` varchar(100) DEFAULT NULL,
  `stayHolidayPayHours` varchar(100) DEFAULT NULL,
  `bonus` varchar(100) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `totalHours` varchar(100) DEFAULT NULL,
  `totalPay` varchar(100) DEFAULT NULL,
  `payDate` varchar(100) DEFAULT NULL,
  `netPay` varchar(100) DEFAULT NULL,
  `otHours` varchar(100) DEFAULT NULL,
  `cheque_number` varchar(100) DEFAULT 'null',
  `bank` varchar(1600) DEFAULT NULL,
  `weekStart` varchar(100) DEFAULT NULL,
  `weekEnd` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `statHolidayPayHours` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cheques`
--

INSERT INTO `cheques` (`id`, `name`, `paymentMethod`, `regularPayHours`, `employeeId`, `varcationPayHours`, `stayHolidayPayHours`, `bonus`, `memo`, `totalHours`, `totalPay`, `payDate`, `netPay`, `otHours`, `cheque_number`, `bank`, `weekStart`, `weekEnd`, `year`, `statHolidayPayHours`) VALUES
(13, 'Sohaib', 'cheque', '5', '1', '1.0', NULL, '0', '0', '35', '175', '2022-3-1', '175', '0', 'null', NULL, '2022-01-01', '2022-01-07', '2022', '0'),
(14, 'muslim', 'cheque', '5', '2', '2.4', NULL, '0', '0', '35', '420', '2022-3-1', '420', '0', 'null', NULL, '2022-01-01', '2022-01-07', '2022', '0'),
(15, 'Sohaib', 'cheque', '5', '1', '1.0', NULL, '0', '0', '35', '175', '2022-3-1', '175', '0', 'null', NULL, '2022-01-01', '2022-01-07', '2022', '0'),
(16, 'muslim', 'cheque', '2', '2', '0.96', NULL, '0', '0', '14', '168', '2022-3-1', '168', '0', 'null', NULL, '2022-01-01', '2022-01-07', '2022', '0'),
(17, 'Sohaib', 'cheque', '5', '1', '1.0', NULL, '0', '0', '35', '175', '2022-3-1', '175', '0', 'null', NULL, '2017-12-30', '2018-01-05', '2018', '0'),
(18, 'muslim', 'cheque', '2', '2', '0.96', NULL, '0', '0', '14', '168', '2022-3-1', '168', '0', 'null', NULL, '2017-12-30', '2018-01-05', '2018', '0'),
(19, 'Sohaib', 'cheque', '5', '1', '1.0', NULL, '0', '0', '35', '175', '2022-3-2', '175', '0', 'null', NULL, '2022-01-01', '2022-01-07', '2022', '0');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT 'null',
  `lastName` varchar(100) DEFAULT 'null',
  `payrate` varchar(100) DEFAULT 'null',
  `paymentMethod` varchar(100) DEFAULT 'null',
  `availableVacations` varchar(1600) DEFAULT 'null',
  `status` varchar(100) DEFAULT 'null',
  `address` varchar(1000) DEFAULT 'null',
  `birthDate` varchar(1000) DEFAULT 'null',
  `gender` varchar(1600) DEFAULT 'null',
  `note` varchar(1600) DEFAULT 'null',
  `taxes` varchar(1600) DEFAULT 'null',
  `sin` varchar(1000) DEFAULT 'null',
  `additionalPay` varchar(100) DEFAULT 'null',
  `paySchedule` varchar(1000) DEFAULT 'null',
  `hiredDate` varchar(100) DEFAULT 'null',
  `workLocation` varchar(1000) DEFAULT 'null',
  `jobTitle` varchar(1000) DEFAULT 'null',
  `mi` varchar(100) DEFAULT 'null',
  `hours` varchar(100) DEFAULT 'null',
  `payPer` varchar(100) DEFAULT 'null',
  `vacPolicy` varchar(100) DEFAULT 'null',
  `email` varchar(100) DEFAULT 'null',
  `company` varchar(100) DEFAULT 'null',
  `contribution` varchar(100) DEFAULT 'null',
  `deduction` varchar(100) DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `lastName`, `payrate`, `paymentMethod`, `availableVacations`, `status`, `address`, `birthDate`, `gender`, `note`, `taxes`, `sin`, `additionalPay`, `paySchedule`, `hiredDate`, `workLocation`, `jobTitle`, `mi`, `hours`, `payPer`, `vacPolicy`, `email`, `company`, `contribution`, `deduction`) VALUES
(1, 'Sohaib', 'Akram', '5', 'cheque', 'null', 'null', 'null', 'null', 'null', 'null', '0', 'null', 'null', '2022-02-28', '2022-02-28', 'null', 'null', 'no', '5', 'hourly', '12', 'sohaib@i8is.com', 'null', 'null', 'null'),
(2, 'muslim', 'ansari', '12', 'cheque', 'null', 'null', 'null', 'null', 'null', 'null', '0', 'null', 'null', '2022-02-28', '2022-02-28', 'null', 'null', '12', '10', 'hourly', '15', 'muslim@i8is.com', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `currentYear` varchar(100) DEFAULT NULL,
  `weekStarting` varchar(100) DEFAULT NULL,
  `weekEnd` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `payDate` varchar(100) DEFAULT NULL,
  `payRate` varchar(100) DEFAULT NULL,
  `regHours` varchar(100) DEFAULT NULL,
  `OTHours` varchar(100) DEFAULT NULL,
  `stat` varchar(100) DEFAULT NULL,
  `regCurrent` varchar(100) DEFAULT NULL,
  `YTD` varchar(100) DEFAULT NULL,
  `OThour` varchar(100) DEFAULT NULL,
  `OTrate` varchar(100) DEFAULT NULL,
  `OTCurrent` varchar(100) DEFAULT NULL,
  `OTYTD` varchar(100) DEFAULT NULL,
  `VACCurrent` varchar(100) DEFAULT NULL,
  `VACYTD` varchar(100) DEFAULT NULL,
  `statHours` varchar(100) DEFAULT NULL,
  `statYTD` varchar(100) DEFAULT NULL,
  `statRate` varchar(100) DEFAULT NULL,
  `incomeTax` varchar(100) DEFAULT NULL,
  `incomeTaxYTD` varchar(100) DEFAULT NULL,
  `EI` varchar(100) DEFAULT NULL,
  `EIYTD` varchar(100) DEFAULT NULL,
  `CPP` varchar(100) DEFAULT NULL,
  `CPPYTD` varchar(100) DEFAULT NULL,
  `totalPayCurrent` varchar(100) DEFAULT NULL,
  `totalPayYTD` varchar(100) DEFAULT NULL,
  `totalTaxCurrent` varchar(100) DEFAULT NULL,
  `totalTaxYTD` varchar(100) DEFAULT NULL,
  `netPay` varchar(100) DEFAULT NULL,
  `username` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slipdetails`
--

CREATE TABLE `slipdetails` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `mi` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `homeAddress` varchar(1600) DEFAULT NULL,
  `country` varchar(500) DEFAULT NULL,
  `sin` varchar(500) DEFAULT NULL,
  `town` varchar(500) DEFAULT NULL,
  `province` varchar(500) DEFAULT NULL,
  `postalCode` varchar(100) DEFAULT NULL,
  `tdi` varchar(500) DEFAULT NULL,
  `additionalTax` varchar(100) DEFAULT NULL,
  `provinceTax` varchar(100) DEFAULT NULL,
  `taxExemptions` varchar(1000) DEFAULT NULL,
  `hiredDate` varchar(100) DEFAULT NULL,
  `employeeNumber` varchar(100) DEFAULT NULL,
  `employeeId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slipdetails`
--

INSERT INTO `slipdetails` (`id`, `firstName`, `lastName`, `mi`, `dob`, `homeAddress`, `country`, `sin`, `town`, `province`, `postalCode`, `tdi`, `additionalTax`, `provinceTax`, `taxExemptions`, `hiredDate`, `employeeNumber`, `employeeId`) VALUES
(1, 'Sohaib', 'Akram', 'no', '2022-02-28', 'Woodbridge', 'Canada', '123465789', 'Woodbridge', 'Ontario', 'L4H 0E8', '12', '13', 'Ontario', '0', '2022-02-28', '1', '1'),
(2, 'muslim', '12', 'ansari', '2022-02-28', 'Woodbridge', 'sad', 'asd', 'Woodbridge', 'Ontario', 'L4H 0E8', '0', '0', 'Ontario', '0', '2022-02-28', '9233332140546', '2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `status` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cheques`
--
ALTER TABLE `cheques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slipdetails`
--
ALTER TABLE `slipdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cheques`
--
ALTER TABLE `cheques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slipdetails`
--
ALTER TABLE `slipdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
