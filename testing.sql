-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 11:40 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `id` bigint(255) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `results` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`id`, `url`, `date`, `results`) VALUES
(8, 'http://yashrajbasan.com', '2020-03-09', 'success'),
(9, 'http://portfolioyashrajbasan.com', '2020-03-10', 'failed'),
(10, 'qxf2.com', '2020-03-10', 'failed'),
(11, 'website.com', '2020-03-11', 'success'),
(12, 'hell.com', '2020-03-10', 'not ran'),
(13, 'hello.com', '2020-03-10', 'not ran'),
(14, 'testinf.dashboard.com', '2020-03-10', 'not ran'),
(15, 'http://jbl.com', '2020-03-01', 'failed'),
(16, 'http://awesomewebsite.com', '2020-03-02', 'success'),
(17, 'http://hello.com', '2020-03-03', 'success'),
(18, 'http://portfolio.com', '2020-03-04', 'success'),
(19, 'http://boringwebsite.com', '2020-03-05', 'failed'),
(20, 'http://rog.com', '2020-03-06', 'failed'),
(21, 'http://asus.com', '2020-03-07', 'success'),
(22, 'http://damnbro.com', '2020-03-08', 'failed'),
(23, 'http://website.com', '2020-03-09', 'success'),
(24, 'http://asus.predator.com', '2020-03-10', 'success'),
(25, 'http://boat.com', '2020-03-11', 'failed'),
(26, 'hell.com', '2020-03-20', 'not ran'),
(27, 'hell.com', '2020-03-20', 'not ran'),
(28, 'hello.com', '2020-03-23', 'not ran'),
(29, 'hello.com', '2020-03-16', 'not ran'),
(30, 'hello.com', '2020-03-18', 'not ran');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
