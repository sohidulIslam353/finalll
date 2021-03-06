-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2017 at 09:10 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `adminid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fathersname` varchar(100) NOT NULL,
  `mothersname` varchar(100) NOT NULL,
  `permanentaddress` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `active` int(11) NOT NULL,
  `localaddress` varchar(200) NOT NULL,
  `country` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `facebook` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`adminid`, `username`, `fathersname`, `mothersname`, `permanentaddress`, `city`, `phone`, `email`, `password`, `gender`, `dob`, `active`, `localaddress`, `country`, `department`, `image`, `facebook`) VALUES
(1, 'Sohidul Islam', 'sahidul islam', 'Nurjahan begum', 'Dhaka gandaria sadhina', 'Dhaka', '01689325687', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '2017-08-23', 2, 'same', 'Bangladesh', 'Admin', '598950c8bf3352017-08-08-07-48-56IMG_3282.JPG', 'sohidulislam353');

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `date` date NOT NULL,
  `attend` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fathersname` varchar(100) NOT NULL,
  `mothersname` varchar(100) NOT NULL,
  `phone` varchar(110) NOT NULL,
  `dob` date NOT NULL,
  `City` varchar(100) NOT NULL,
  `localaddress` varchar(100) NOT NULL,
  `permanentaddress` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `department` varchar(111) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `active` int(3) NOT NULL DEFAULT '1',
  `image` varchar(255) NOT NULL,
  `gift` varchar(100) NOT NULL,
  `month` date NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `accountholder` varchar(150) NOT NULL,
  `accountnumber` int(11) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `pannumber` int(11) NOT NULL,
  `ifsc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeid`, `username`, `fathersname`, `mothersname`, `phone`, `dob`, `City`, `localaddress`, `permanentaddress`, `gender`, `department`, `email`, `password`, `active`, `image`, `gift`, `month`, `facebook`, `accountholder`, `accountnumber`, `bankname`, `pannumber`, `ifsc`) VALUES
(1, 'sohidul islam', 'Moklesur rahman', 'salma begum', '01961363543', '1994-08-01', '', 'Gandaria Dhaka bangladesh', 'same', '1', '1', 'sohidulislam353@gmail.com', 'Msohel1465', 1, '', 'Mobile', '2017-08-01', '', '', 0, '0', 0, ''),
(2, 'masud alam', 'khorshed alam', 'maleka begum', '01963542369', '1992-08-18', 'Dhaka', 'dasdsdsadas s dasdasd s dasdasdas d', 'dsd sd as sd asdasd sdsad asdsdasdsd', '1', '3', 'masud@gmail.com', '123456', 1, '', 'Laptop', '2017-08-06', '', '', 0, '0', 0, ''),
(3, 'samad khan', 'kamal jaman', 'salama begum', '019687455362', '1988-08-09', '', 'sd ds as as dsassa s', 'sad dss dasdasdas dsa', '1', '4', 'samad@gmail.com', '123456', 1, '', 'Computer', '2017-07-02', '', '', 0, '0', 0, ''),
(4, 'jwel', 'moklesur rahman', 'kamala begum', '01556986324', '1988-08-10', '', 'sd ds as as dsassa s', 'sad dss dasdasdas dsa', '1', '2', 'jwel@gmail.com', '123456', 1, '', 'Mobile', '2017-08-21', '', '', 0, '0', 0, ''),
(5, 'Zico sutar', 'samad ghosh', 'majan ghosh', '01689532155', '2000-08-25', '', 'sdasd sdsd sad sadsad', 'da dasda sdsad sad sa', '1', '3', 'zico@gmail.com', '123456', 1, '', 'cooker', '0000-00-00', '', '', 0, '0', 0, ''),
(6, 'sanjida megha', 'kuddus ali', 'samara khan', '01778963255', '1998-02-15', '', 'gandaria pukur par', 'same', '2', '2', 'sajida@gmail.com', '123456', 1, '', '5000tk', '2017-08-21', '', '', 0, '0', 0, ''),
(7, 'kulsum akter', 'Kamal Sheikh', 'Majida begum', '01865263783', '1998-08-11', '', 'jinaidhaha', 'dhaka mirpur', '2', '2', 'kulsum@gmail.com', '123456', 1, '', '', '0000-00-00', '', '', 0, '0', 0, ''),
(8, 'masuda khan', 'jamal sheikh', 'maliha hasan', '01558962256', '1994-08-01', '', ' sadsds d sad as dsad sad sasa a sdsad ssadfsad', 'dssa dsadas dsad sadsa asd sad sa dsdsad sadsad sadsa', '2', '2', 'masudakhan@gmail.com', '123456', 1, '', '', '0000-00-00', '', '', 0, '0', 0, ''),
(9, 'sohel', 'sdas', 'sdsdsa', '01686336555', '2017-08-11', '', 'sdssdsd sdsdsdsds ', 'dsd sdsdsd sadsads da', '1', '4', 'sohel@gmail.com', '123456', 1, '', '', '0000-00-00', '', '', 0, '0', 0, ''),
(10, 'kuddussu', 'sss', 'ssss', 'ssssss', '2017-08-11', '', 'sdsadsasadsdsdsdsadsadsa', 'sdsdsasadsdsadsasdsss', '1', '3', 'kuddusu@gmail.com', '236541', 1, 'img/', '', '0000-00-00', '', '', 0, '0', 0, ''),
(11, 'nazrul islam', 'samad khan', 'roksana begum', '01356985232', '1985-08-04', '', 'sdsds d sdsd', 'dsdsddsd dsd sd', '1', '3', 'nazrul@gmail.com', '123456', 1, '', '', '0000-00-00', '', '', 0, '0', 0, ''),
(12, 'sdsdsds', 'sdsdsds', 'sdsddsdsd', '012365458', '2017-08-10', '', 'sdsdsds', 'sdd sasdsdsd', '1', '1', 'mistivortasohel@gmail.com', '123456', 1, '', '', '0000-00-00', '', '', 0, '0', 0, ''),
(13, 'abdul hamid', 'majid khan', 'sumaia begum', '01961363543', '2017-08-18', '', 'dsdsd d', 'sdsdsdsds ', '1', '4', 'abdul@gmail.com', '123456', 1, '', '', '0000-00-00', '', '', 0, '0', 0, ''),
(14, 'masuda khatun', 'sdsdsdsdsds', 'dsdsdsdsdsd', '01356985232', '2017-08-18', '', 'sdasdsa', 'sdsdsdsds', '2', '1', 'masuda@gmail.com', '123456', 1, '', '', '0000-00-00', '', '', 0, '0', 0, ''),
(15, 'rumel', 'moktar hoassain', 'kamrun nahar', '01986325424', '2002-08-03', '', 'sdasdsa ', 'dsssd', '1', '4', 'rumel@gmail.com', '123456', 1, '', '', '0000-00-00', '', '', 0, '0', 0, ''),
(16, 'Ritu', 'dsdsas', 'dsdsd', 'ssdsdssd', '2017-08-10', '', 'sadsadsadsssda', 'sdsdsasadsdsadsasd', '2', '1', 'ritu@gmail.com', '123456', 1, '', '', '0000-00-00', '', '', 0, '0', 0, ''),
(18, 'milon', 'sdsdsds', 'ddssds', 'sdsdssdsdsd', '2017-08-10', '', 'sdsasadsa', 'sdsssd', '1', '1', 'milon@gmail.com', '123456', 1, '', '', '0000-00-00', '', '', 0, '0', 0, ''),
(19, 'ayman', 'sdsdsddsds', 'sdsddsdsd', 'sdsdssdsdsd', '2017-08-12', '', 'sdasdsa', 'sdd sasdsdsd', '2', '1', 'ayman@gmail.com', '123456', 1, 'img/IMG_20160920_225652.jpg', '', '0000-00-00', '', '', 0, '0', 0, ''),
(20, 'ummey', 'nazrul islam', 'nisha', '01236547896', '2017-08-15', '', 'ssssssssss', 'sssssssss', '2', '1', 'ummey@gmail.com', '123456', 1, 'img/IMG_20160912_183746.jpg', '', '0000-00-00', '', '', 0, '0', 0, ''),
(21, 'masud alam', 'bulbul khan', 'manuara begum', '03698521475', '2017-08-18', '', 'ssssssssssssss', 'dsdsdsdsdd', '1', '1', 'masudalam@gmail.com', 'masudalam', 1, 'img/IMG_20161106_184709.jpg', '', '0000-00-00', '', '', 0, '0', 0, ''),
(23, 'sanowar', 'molla hasan', 'roksana khatun', '0169853247963', '2017-08-18', '', 'sdsds d sdsdsd', 'sdssdasasadsda', '1', '1', 'sanowar@gmail.com', '123456987', 1, 'img/IMG_20160920_225639.jpg', '', '0000-00-00', '', '', 0, '0', 0, ''),
(24, 'Snigdha khan', 'jamal khan', 'roksana khatunn', '01961563586', '2017-08-03', '', 'sdsdsdsdsdsds', 'sdsdsdsdsdsdsds', '2', '4', 'snigdha@gmail.com', '123456', 1, 'img/IMG_4565.JPG', '', '0000-00-00', '', '', 0, '0', 0, ''),
(25, 'regan', 'maazharul islam', 'jinia khan', '01987456321', '1996-08-09', '', 'gandaria dhaka', 'same', '1', '3', 'regan@gmail.com', '123456', 1, 'img/IMG_20160924_230458.jpg', '', '0000-00-00', '', '', 0, '0', 0, ''),
(35, 'Sohel', 'jamal khan', 'dilara begum', '01559863255', '1993-02-02', '', 'dsadsdsddsd', 'sdsdsdssssssssssssssssssssss', '1', '1', 'sohelkhan@gmail.com', '123456', 1, 'img/598950c8bf3352017-08-08-07-48-56IMG_3282.JPG', '', '0000-00-00', '', '', 0, '0', 0, ''),
(333333, '333333333333', '3333333333333', '3333333333333', '333333333333', '1111-11-11', '', '111', '111111111111111111', '3', '2', 'asds@dsdasd', 'asdsda', 1, 'img/59885c9ea4f372017-08-07-14-27-10th.jpg', '', '0000-00-00', '', '', 0, '0', 0, ''),
(333333333, '33333333333333', '333333333333333', '33333333333', '33333333', '2222-11-22', '', '2222222222', '2222222222222222', '3', '2', 'saifulislam.rasel.9803@facebook.com', '111111111', 1, 'img/59885cf431ca32017-08-07-14-28-36th.jpg', '', '0000-00-00', '', '', 0, '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `noticedate` date NOT NULL,
  `subject` varchar(100) NOT NULL,
  `notice` varchar(1000) NOT NULL,
  `adminid` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`noticedate`, `subject`, `notice`, `adminid`) VALUES
('2017-08-16', 'sdsad', 'sad dsadsds ', 0),
('2017-08-08', 'adsdasd dasdsadsa', 'sdasd sads sdsa sadsa das sad as', 0),
('2017-08-08', 'adsdasd dasdsadsa', 'sdasd sads sdsa sadsa das sad as', 0),
('2017-08-08', 'adsdasd dasdsadsa', 'sdasd sads sdsa sadsa das sad as', 0),
('2017-08-17', 'asdsdsad', 'sdsadasdasdas', 0),
('2017-08-17', 'asdsdsad', 'sdsadasdasdas', 0),
('2017-08-01', 'ssss', 'sssss', 0),
('2017-08-01', 'ssss', 'sssss', 0),
('2017-08-29', 'journey by train', 'next friday we will arranged a picnic place rajshahi', 0),
('0000-00-00', '', '', 0),
('0000-00-00', '', '', 0),
('0000-00-00', '', '', 0),
('0000-00-00', '', '', 0),
('2017-08-25', 'dddddddd', 'ddddd', 0),
('2017-08-25', 'dddddddd', 'ddddd', 0),
('0000-00-00', '', '', 0),
('0000-00-00', '', '', 0),
('2017-08-11', 'off day', 'next day the company will off', 0),
('2017-08-11', 'off day', 'next day the company will off', 0),
('2017-08-04', 'sdsadsdsadsdsdsdsadsads', 'sssoohheell', 0),
('2017-08-27', 'Birthday Party', 'Tomorrow the company will off for chairman bithday party ', 0),
('2017-08-27', 'Birthday Party', 'Tomorrow the company will off for chairman bithday party ', 0),
('2017-08-16', 'dead', ' sdsadasd dd sdasdasdas ds d dasd asdasdas', 1),
('2017-01-01', 'Last day', 'tomorrow the class will be off...', 1),
('0000-00-00', '', '', 1),
('0000-00-00', '', '', 1),
('2017-08-09', 'Dinner Party', 'Tonight the company arranged a dinner party for all employee.so everyone must be come in at dhanmondi 18', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
