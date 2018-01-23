-- phpMyAdmin SQL Dump
-- version 3.4.3.1
-- http://www.phpmyadmin.net
--
-- Host: funspec.ccbr.utoronto.ca
-- Generation Time: Jun 12, 2015 at 02:43 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.2-1ubuntu4.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cisbp-rna_0.6`
--

-- --------------------------------------------------------

--
-- Table structure for table `motif_sources`
--

CREATE TABLE IF NOT EXISTS `motif_sources` (
  `MSource_ID` varchar(9) NOT NULL,
  `MSource_Identifier` varchar(20) DEFAULT NULL,
  `MSource_Type` varchar(10) DEFAULT NULL,
  `MSource_Author` varchar(20) DEFAULT NULL,
  `MSource_Year` int(11) DEFAULT NULL,
  `PMID` mediumtext,
  `MSource_Version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MSource_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motif_sources`
--

INSERT INTO `motif_sources` (`MSource_ID`, `MSource_Identifier`, `MSource_Type`, `MSource_Author`, `MSource_Year`, `PMID`, `MSource_Version`) VALUES
('MS1_0.6', 'RBPDB', 'RBPDB', 'Cook', 2011, '21036867', 'v1.2.1'),
('MS2_0.6', 'RNA_Zoo', 'RNAcompete', 'Ray', 2013, 'NULL', 'NULL');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
