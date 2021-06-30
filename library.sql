-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2020 at 02:33 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `authorid` int(11) NOT NULL,
  `name` char(15) NOT NULL,
  `surname` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`authorid`, `name`, `surname`) VALUES
(1, 'Roberto', 'Zicari'),
(2, 'Paul', 'Davies'),
(3, 'George', 'Thomas'),
(4, 'Thomas', 'Mikosch'),
(5, 'Alan', 'Tucker'),
(6, 'Lars', 'Arge'),
(7, 'Allan', 'Bluman');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `year` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `edition` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `publisherid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookid`, `title`, `year`, `pages`, `edition`, `authorid`, `publisherid`) VALUES
(11, 'XML Data Management', 2003, 688, 3, 1, 65),
(12, 'Database Systems', 2003, 616, 2, 2, 67),
(13, 'Thomas Calculus', 2004, 1057, 4, 3, 65),
(14, 'Elementary Stochastic Calculus', 1998, 226, 1, 4, 66),
(15, 'Applied Combinatorics', 1995, 472, 11, 5, 63),
(16, 'MySql', 2004, 983, 6, 1, 65),
(17, 'Math Skills', 2007, 951, 5, 3, 63),
(18, 'Elementary Statistics', 2008, 897, 4, 7, 67),
(19, 'Probability Demystifield', 2005, 267, 8, 7, 67);

-- --------------------------------------------------------

--
-- Table structure for table `book_customer`
--

CREATE TABLE `book_customer` (
  `bookid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_customer`
--

INSERT INTO `book_customer` (`bookid`, `customerid`) VALUES
(11, 23),
(11, 24),
(13, 25),
(16, 26),
(17, 22),
(19, 25);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `name` char(15) NOT NULL,
  `surname` char(15) NOT NULL,
  `username` char(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `town` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `name`, `surname`, `username`, `email`, `town`) VALUES
(22, 'Paul', 'Scholes', 'pauly', 'pscholes@gmail.com', 'Manchester'),
(23, 'Emir', 'Spahic', 'spaha4', 'espahic@gmail.com', 'Gacko'),
(24, 'Bruno', 'Fernandes', 'bruno18', 'bfernandes@gmail.com', 'Lisabon'),
(25, 'Asmir', 'Begovic', 'bega1', 'abegovic@gmail.com', 'Trebinje'),
(26, 'Elvir', 'Rahimic', 'general', 'erahimic@gmail.com', 'Moscow');

-- --------------------------------------------------------

--
-- Table structure for table `paper`
--

CREATE TABLE `paper` (
  `paperid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `authorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper`
--

INSERT INTO `paper` (`paperid`, `name`, `authorid`) VALUES
(31, 'Native XML', 1),
(32, 'XML-Enabled Database Systems', 1),
(33, 'Finance in View', 4),
(34, 'Applied Combinatorics on words', 6),
(35, 'Graph theory', 6);

-- --------------------------------------------------------

--
-- Table structure for table `periodical`
--

CREATE TABLE `periodical` (
  `periodicalid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `year` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `publisherid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periodical`
--

INSERT INTO `periodical` (`periodicalid`, `title`, `year`, `type`, `publisherid`) VALUES
(51, 'American Historical Review', 2002, 'research journal', 61),
(52, 'Atlantic', 1999, 'commentary', 62),
(53, 'Agriculture', 2004, 'industry', 61),
(54, 'New Republic', 1994, 'commentary', 68);

-- --------------------------------------------------------

--
-- Table structure for table `periodical_customer`
--

CREATE TABLE `periodical_customer` (
  `periodicalid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periodical_customer`
--

INSERT INTO `periodical_customer` (`periodicalid`, `customerid`) VALUES
(51, 26),
(52, 26),
(53, 22),
(53, 24),
(54, 23),
(54, 25);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `name`) VALUES
(61, 'New York Times'),
(62, 'Washington Post'),
(63, 'Wiley and Sons'),
(64, 'Society for Industrial'),
(65, 'Addison Wesley'),
(66, 'World Scientific Publ'),
(67, 'Palgrave Macmillan'),
(68, 'Wall Street Journal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `authorid` (`authorid`),
  ADD KEY `publisherid` (`publisherid`);

--
-- Indexes for table `book_customer`
--
ALTER TABLE `book_customer`
  ADD PRIMARY KEY (`bookid`,`customerid`),
  ADD KEY `customerid` (`customerid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`paperid`),
  ADD KEY `authorid` (`authorid`);

--
-- Indexes for table `periodical`
--
ALTER TABLE `periodical`
  ADD PRIMARY KEY (`periodicalid`),
  ADD KEY `publisherid` (`publisherid`);

--
-- Indexes for table `periodical_customer`
--
ALTER TABLE `periodical_customer`
  ADD PRIMARY KEY (`periodicalid`,`customerid`),
  ADD KEY `customerid` (`customerid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`authorid`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`publisherid`) REFERENCES `publisher` (`publisherid`);

--
-- Constraints for table `book_customer`
--
ALTER TABLE `book_customer`
  ADD CONSTRAINT `book_customer_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `book` (`bookid`),
  ADD CONSTRAINT `book_customer_ibfk_2` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`);

--
-- Constraints for table `paper`
--
ALTER TABLE `paper`
  ADD CONSTRAINT `paper_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`authorid`);

--
-- Constraints for table `periodical`
--
ALTER TABLE `periodical`
  ADD CONSTRAINT `periodical_ibfk_1` FOREIGN KEY (`publisherid`) REFERENCES `publisher` (`publisherid`);

--
-- Constraints for table `periodical_customer`
--
ALTER TABLE `periodical_customer`
  ADD CONSTRAINT `periodical_customer_ibfk_1` FOREIGN KEY (`periodicalid`) REFERENCES `periodical` (`periodicalid`),
  ADD CONSTRAINT `periodical_customer_ibfk_2` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
