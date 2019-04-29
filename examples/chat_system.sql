use chat_system;
-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 29, 2019 at 12:35 AM
-- Server version: 5.6.40-84.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c4geeksa_mysql_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `CHAT_TIMELINE`
--

CREATE TABLE `CHAT_TIMELINE` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `CHAT_TYPE` enum('chat_group','chat_team','private') NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHAT_TIMELINE`
--

INSERT INTO `CHAT_TIMELINE` (`ID`, `NAME`, `CHAT_TYPE`, `CREATION_DATE`) VALUES
(3, 'General', 'chat_group', '2017-04-05 00:10:19'),
(4, 'Coding Sessions', 'chat_group', '2017-04-05 00:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `MESSAGE`
--

CREATE TABLE `MESSAGE` (
  `ID` bigint(20) NOT NULL,
  `USER_ID` bigint(20) NOT NULL,
  `CONTENT` text NOT NULL,
  `CHAT_TIMELINE_ID` bigint(20) NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MESSAGE`
--

INSERT INTO `MESSAGE` (`ID`, `USER_ID`, `CONTENT`, `CHAT_TIMELINE_ID`, `CREATION_DATE`) VALUES
(1, 1, 'Hello how are you', 3, '2017-04-05 00:24:44'),
(2, 1, 'Anyone there?', 3, '2017-04-05 00:24:44'),
(3, 4, 'He man man how are you?', 0, '2017-04-05 00:25:56'),
(4, 5, 'We are here', 3, '2017-04-05 00:25:56'),
(5, 3, 'Everybody good?', 3, '2017-04-05 00:27:25'),
(6, 3, 'sdsadfsdfa', 3, '2017-04-05 00:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `ID` bigint(20) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `EMAIL` varchar(48) NOT NULL,
  `PASSWORD` varchar(64) NOT NULL,
  `ROLE` enum('admin','member') NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`ID`, `USERNAME`, `EMAIL`, `PASSWORD`, `ROLE`, `CREATION_DATE`) VALUES
(1, 'david', 'david@whateveryouwhant.com', '1234', 'admin', '2017-04-04 23:50:26'),
(2, 'cesco', 'cesco@whateveryouwhant.com', '1234', 'member', '2017-04-04 23:57:51'),
(3, 'shawn', 'shawn@whateveryouwhant.com', '1234', 'member', '2017-04-04 23:57:51'),
(4, 'fernando', 'fernando@whateveryouwhant.com', '1234', 'member', '2017-04-04 23:57:51'),
(5, 'marcelo', 'marcelo@whateveryouwhant.com', '1234', 'member', '2017-04-04 23:57:51'),
(6, 'jorge', 'jorge@whateveryouwhant.com', '1234', 'member', '2017-04-04 23:57:51'),
(7, 'alejandro', 'alejandro@whateveryouwhant.com', '1234', 'member', '2017-04-04 23:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `USER_CHAT_TIMELINE`
--

CREATE TABLE `USER_CHAT_TIMELINE` (
  `USER_ID` bigint(20) NOT NULL,
  `CHAT_TIMELINE_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_CHAT_TIMELINE`
--

INSERT INTO `USER_CHAT_TIMELINE` (`USER_ID`, `CHAT_TIMELINE_ID`) VALUES
(1, 3),
(2, 3),
(4, 3),
(6, 3),
(7, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CHAT_TIMELINE`
--
ALTER TABLE `CHAT_TIMELINE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `MESSAGE`
--
ALTER TABLE `MESSAGE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`,`EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CHAT_TIMELINE`
--
ALTER TABLE `CHAT_TIMELINE`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `MESSAGE`
--
ALTER TABLE `MESSAGE`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `USER`
--
ALTER TABLE `USER`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
