-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2018 at 02:20 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tripkaro`
--

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `lid` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `address` text,
  `trip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`lid`, `name`, `gender`, `dob`, `email`, `pass`, `phno`, `address`, `trip`) VALUES
(4, 'Mayank Gupta', 'Male', '1998-12-10', 'mayankgbrc@gmail.com', '1811', 9831491321, 'bla bla bla', 'null'),
(5, 'Maya', 'Male', '2001-11-10', 'mayankgbrc2@gmail.com', '1811', 9876543210, 'khjhghgf', NULL),
(6, 'Amod Kumar', 'Male', '1998-02-25', 'amodkumar@gmail.com', '1234', 9887655432, 'Bata More, Tekari Road,, Dulhinganj', NULL),
(7, 'Amod Kumar', 'Male', '1998-02-25', 'amodkumar@gmail.com', '1234', 9887655432, 'Bata More, Tekari Road,, Dulhinganj', NULL),
(8, 'Anusmita', 'Female', '2018-03-31', 'mitra12anusmita@gmail.com', '123', 8017685524, 'garia', NULL),
(9, 'Reetika gautam', 'Female', '1995-07-12', 'reekar1217@gmail.com', '1234', 8013413379, 'blah blah blah blah..', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `tripid` int(3) NOT NULL,
  `tripname` varchar(100) NOT NULL,
  `tripsdate` date NOT NULL,
  `lid` int(100) NOT NULL,
  `noperson` varchar(10) NOT NULL,
  `phno2` varchar(10) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`tripid`, `tripname`, `tripsdate`, `lid`, `noperson`, `phno2`, `email2`, `price`) VALUES
(105, 'Andaman and Nicobar Island', '2018-04-05', 4, '3', '9831491321', 'mayankgbrc@gmail.com', '60000'),
(106, 'Andaman and Nicobar Island', '2018-04-02', 5, '5', '9876543210', 'mayankgbrc2@gmail.com', '100000'),
(107, 'Andaman and Nicobar Island', '2018-04-15', 4, '3', '9831491321', 'mayankgbrc@gmail.com', '60000'),
(108, 'Andaman and Nicobar Island', '2018-04-24', 4, '8', '9831491321', 'mayankgbrc@gmail.com', '160000'),
(109, 'Andaman and Nicobar Island', '2018-04-24', 4, '8', '9831491321', 'mayankgbrc@gmail.com', '160000'),
(110, 'Andaman and Nicobar Island', '2018-04-10', 4, '4', '9831491321', 'mayankgbrc@gmail.com', '80000'),
(111, 'Exotic Andaman with Neil Island Stay - (5 Nights)', '2018-04-02', 4, '3', '9831491321', 'mayankgbrc@gmail.com', '83970'),
(112, 'Kerala Holiday - (4 Nights)', '2018-04-01', 4, '2', '9831491321', 'mayankgbrc@gmail.com', '39980'),
(113, 'Exotic Andaman with Neil Island Stay - (5 Nights)', '2018-04-01', 4, '2', '9831491321', 'mayankgbrc@gmail.com', '55980'),
(114, 'Charismatic Kashmir - (5 Nights)', '2018-04-01', 4, '2', '9831491321', 'mayankgbrc@gmail.com', '35980'),
(115, 'Specticular Darjeeling & Shillong - 5nights', '2018-04-04', 4, '2', '9831491321', 'mayankgbrc@gmail.com', '27980'),
(116, 'Magical South with Mysore, Ooty and Kodaikanal - 5 Nights', '2018-04-04', 4, '2', '9831491321', 'mayankgbrc@gmail.com', '43980'),
(117, 'Sizzling Goa - (5 Nights)', '2018-04-04', 4, '02', '9831491321', 'mayankgbrc@gmail.com', '23980'),
(118, 'Exotic Andaman with Neil Island Stay - (5 Nights)', '2018-04-10', 4, '6', '9831491321', 'mayankgbrc@gmail.com', '167940'),
(119, 'Kerala Holiday - (4 Nights)', '2018-04-04', 4, '6', '9831491321', 'mayankgbrc@gmail.com', '119940'),
(120, 'Kerala Holiday - (4 Nights)', '2018-04-04', 4, '6', '9831491321', 'mayankgbrc@gmail.com', '119940'),
(121, 'Kerala Holiday - (4 Nights)', '2018-04-04', 4, '6', '9831491321', 'mayankgbrc@gmail.com', '119940'),
(122, 'Exotic Andaman with Neil Island Stay - (5 Nights)', '2018-03-22', 8, '10', '8017685524', 'mitra12anusmita@gmail.com', '279900'),
(123, 'Charismatic Kashmir - (5 Nights)', '2018-03-29', 4, '8', '9831491321', 'mayankgbrc@gmail.com', '143920'),
(124, 'Exotic Andaman with Neil Island Stay - (5 Nights)', '2018-04-12', 4, '5', '9831491321', 'mayankgbrc@gmail.com', '139950'),
(125, 'Charismatic Kashmir - (5 Nights)', '2018-04-24', 9, '6', '8013413379', 'reekar1217@gmail.com', '107940');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`tripid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `lid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `tripid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
