-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2014 at 11:38 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aac_fitl`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisor`
--

CREATE TABLE IF NOT EXISTS `advisor` (
  `adv_id` varchar(25) NOT NULL,
  `adv_fname` varchar(25) NOT NULL,
  `adv_lname` varchar(25) NOT NULL,
  `d_name` varchar(25) NOT NULL,
  `adv_email` varchar(25) NOT NULL,
  `adv_info` varchar(100) NOT NULL,
  PRIMARY KEY (`adv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `dname` varchar(25) NOT NULL,
  PRIMARY KEY (`dname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE IF NOT EXISTS `major` (
  `m_name` varchar(25) NOT NULL,
  `d_name` varchar(25) NOT NULL,
  PRIMARY KEY (`m_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` varchar(10) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `s_email` varchar(25) NOT NULL,
  `serialize_obj` blob NOT NULL,
  `comp_panel` int(11) NOT NULL,
  `ptime_1` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ptime_2` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ptime_3` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ptime_4` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ptime_5` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ptime_6` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ptime_7` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ptime_8` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ptime_9` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pquiz_scr_1` int(11) NOT NULL,
  `pquiz_scr_2` int(11) NOT NULL,
  `pquiz_scr_3` int(11) NOT NULL,
  `pquiz_scr_4` int(11) NOT NULL,
  `pquiz_scr_5` int(11) NOT NULL,
  `pquiz_scr_6` int(11) NOT NULL,
  `pquiz_scr_7` int(11) NOT NULL,
  `pquiz_scr_8` int(11) NOT NULL,
  `pquiz_scr_9` int(11) NOT NULL,
  `pquiz_atmpt_1` int(11) NOT NULL,
  `pquiz_atmpt_2` int(11) NOT NULL,
  `pquiz_atmpt_3` int(11) NOT NULL,
  `pquiz_atmpt_4` int(11) NOT NULL,
  `pquiz_atmpt_5` int(11) NOT NULL,
  `pquiz_atmpt_6` int(11) NOT NULL,
  `pquiz_atmpt_7` int(11) NOT NULL,
  `pquiz_atmpt_8` int(11) NOT NULL,
  `pquiz_atmpt_9` int(11) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `first_name`, `last_name`, `s_email`, `serialize_obj`, `comp_panel`, `ptime_1`, `ptime_2`, `ptime_3`, `ptime_4`, `ptime_5`, `ptime_6`, `ptime_7`, `ptime_8`, `ptime_9`, `pquiz_scr_1`, `pquiz_scr_2`, `pquiz_scr_3`, `pquiz_scr_4`, `pquiz_scr_5`, `pquiz_scr_6`, `pquiz_scr_7`, `pquiz_scr_8`, `pquiz_scr_9`, `pquiz_atmpt_1`, `pquiz_atmpt_2`, `pquiz_atmpt_3`, `pquiz_atmpt_4`, `pquiz_atmpt_5`, `pquiz_atmpt_6`, `pquiz_atmpt_7`, `pquiz_atmpt_8`, `pquiz_atmpt_9`) VALUES
('123', 'John', 'Mathew', 'jmathew@nyu.edu', 0xaced00057372001c636f6d2e6669746c4141432e617069732e53747564656e74496e666f9bee09a2bd8b07e502000949000b636f6d7050616e656c4e6f4c0005664e616d657400124c6a6176612f6c616e672f537472696e673b4c00056c4e616d6571007e00014c00056e6574494471007e00015b00156e6f4f6654696d6573566964656f576174636865647400025b495b001170616e656c54696d655370656e744172727400155b4c6a6176612f73716c2f54696d657374616d703b5b000b7175697a4174656d70747371007e00025b00097175697a53636f726571007e00024c000673456d61696c71007e00017870000000007400044a6f686e7400064d6174686577740003313233757200025b494dba602676eab2a5020000787000000008000000000000000000000000000000000000000000000000000000000000000070707074000f6a6d6174686577406e79752e656475, 0, '2014-05-08 15:02:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('NYU456', 'Bob', 'Gally', 'bgally@nyu.edu', 0xaced00057372001c636f6d2e6669746c4141432e617069732e53747564656e74496e666f9bee09a2bd8b07e502000949000b636f6d7050616e656c4e6f4c0005664e616d657400124c6a6176612f6c616e672f537472696e673b4c00056c4e616d6571007e00014c00056e6574494471007e00015b00156e6f4f6654696d6573566964656f576174636865647400025b495b001170616e656c54696d655370656e744172727400155b4c6a6176612f73716c2f54696d657374616d703b5b000b7175697a4174656d70747371007e00025b00097175697a53636f726571007e00024c000673456d61696c71007e0001787000000000740003426f6274000547616c6c797400064e5955343536757200025b494dba602676eab2a5020000787000000008000000000000000700000000000000000000000000000000000000000000000070707074000e6267616c6c79406e79752e656475, 0, '2014-05-08 15:24:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
