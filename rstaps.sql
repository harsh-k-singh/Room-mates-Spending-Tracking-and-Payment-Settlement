-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 07:04 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rstaps`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` varchar(20) NOT NULL,
  `pass_wd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `user_name` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`user_name`, `name`, `email`, `phone`, `message`, `time`) VALUES
('karren', 'harsh', 'harshkumarsinghpawar@gmail.com', '1212121212', 'message', '2021-10-22 20:17:17'),
('karren', 'R-STAPS', 'sumravi@gmail.com', '1212121212', 'hello', '2021-10-23 07:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `user_name` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`user_name`, `phone`, `amount`, `reason`, `datetime`) VALUES
('sai', '1234567890', 500, 'lunch', '2021-10-02 17:28:48'),
('harsh', '1234567890', 333, 'dinner', '2021-10-02 17:31:23'),
('harsh', '1231231231', 333, 'dinner', '2021-10-02 17:31:23'),
('harsh', '1234567890', 333334, 'trip', '2021-10-02 20:34:40'),
('harsh', '1231231231', 333334, 'trip', '2021-10-02 20:34:40'),
('joshi', '1234567890', 500, 'trip', '2021-10-02 22:13:44'),
('abc', '1234567890', 500, 'rent', '2021-10-06 19:02:00'),
('kukuyd', '1212121212', 167, 'ball', '2021-10-19 10:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `regform`
--

CREATE TABLE `regform` (
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `pass_wd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regform`
--

INSERT INTO `regform` (`first_name`, `last_name`, `email`, `dob`, `gender`, `phone`, `user_name`, `pass_wd`) VALUES
('abc', 'abc', 'abcd@gmail.com', '2021-10-15', 'm', '1236547892', 'abc', '123'),
('harsh', 'king', 'harshkumarsinghpawar@gmail.com', '2021-09-07', 'm', '1212121212', 'harsh', '12345678'),
('joshi', 'abc', 'joshi@gmail.com', '2021-10-06', 'm', '1471471471', 'joshi', '123'),
('karren', 'king', 'karrenk@gmail.com', '2021-09-18', 'm', '1234567890', 'karren', '123456'),
('sai ', 'kumar', 'sai@gmail.com', '2021-10-19', 'm', '1231231231', 'sai', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `settle_up`
--

CREATE TABLE `settle_up` (
  `from_whom` varchar(20) NOT NULL,
  `why` varchar(60) DEFAULT NULL,
  `amount` int(8) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settle_up`
--

INSERT INTO `settle_up` (`from_whom`, `why`, `amount`, `phone`, `time`) VALUES
('harsh', 'rent', 1000, '1212121212', '2021-09-25 14:54:05'),
('harsh', 'rent', 1000, '1212121212', '2021-10-02 08:11:12'),
('sai', 'lunch', 500, '1234567890', '2021-10-02 10:15:33'),
('sai', 'apple', 500, '1234567890', '2021-10-02 11:48:31'),
('harsh', 'dinner', 1000, '1234567890', '2021-10-02 15:03:54'),
('joshi', 'rent', 333, '1234567890', '2021-10-02 16:42:59'),
('kukuyd', 'rent', 333, '1212121212', '2021-10-19 05:26:55'),
('karren', 'rent', 333, '1212121212', '2021-11-16 08:24:07'),
('karren', 'lunch', 500, '1212121212', '2021-11-16 09:40:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `regform`
--
ALTER TABLE `regform`
  ADD PRIMARY KEY (`user_name`) USING BTREE,
  ADD UNIQUE KEY `phone` (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
