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
-- Table structure for table `stats_by_study`
--

CREATE TABLE IF NOT EXISTS `stats_by_study` (
  `StatsStudy_ID` varchar(9) NOT NULL,
  `Study` varchar(30) DEFAULT NULL,
  `Num_motifs` int(11) DEFAULT NULL,
  `Pct_TFs` float DEFAULT NULL,
  PRIMARY KEY (`StatsStudy_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stats_by_study`
--

INSERT INTO `stats_by_study` (`StatsStudy_ID`, `Study`, `Num_motifs`, `Pct_TFs`) VALUES
('SS1_0.6', 'RNA Zoo', 207, 0.3),
('SS2_0.6', 'RBPDB', 64, 0.1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
