-- phpMyAdmin SQL Dump
-- version 3.4.3.1
-- http://www.phpmyadmin.net
--
-- Host: funspec.ccbr.utoronto.ca
-- Generation Time: Jun 12, 2015 at 02:44 PM
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
-- Table structure for table `stats_by_data_type`
--

CREATE TABLE IF NOT EXISTS `stats_by_data_type` (
  `StatsType_ID` varchar(9) NOT NULL,
  `Data_type` varchar(20) DEFAULT NULL,
  `Num_TFs` int(11) DEFAULT NULL,
  `Pct_TFs` float DEFAULT NULL,
  PRIMARY KEY (`StatsType_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stats_by_data_type`
--

INSERT INTO `stats_by_data_type` (`StatsType_ID`, `Data_type`, `Num_TFs`, `Pct_TFs`) VALUES
('ST1_0.6', 'RNAcompete', 207, 0.3),
('ST2_0.6', 'SELEX', 43, 0.1),
('ST3_0.6', 'RIP-chip', 16, 0),
('ST4_0.6', 'PAR-clip', 5, 0),
('ST5_0.6', 'CLIP-seq', 2, 0),
('ST6_0.6', 'yeast_three-hybrid_s', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
