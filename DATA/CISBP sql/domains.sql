-- phpMyAdmin SQL Dump
-- version 3.4.3.1
-- http://www.phpmyadmin.net
--
-- Host: funspec.ccbr.utoronto.ca
-- Generation Time: Jun 12, 2015 at 02:41 PM
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
-- Table structure for table `domains`
--

CREATE TABLE IF NOT EXISTS `domains` (
  `Domain_ID` varchar(9) NOT NULL,
  `Domain_Name` varchar(20) DEFAULT NULL,
  `Pfam_Name` varchar(20) DEFAULT NULL,
  `Pfam_DBID` varchar(7) DEFAULT NULL,
  `Inter_DBID` varchar(10) DEFAULT NULL,
  `Domain_Type` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Domain_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`Domain_ID`, `Domain_Name`, `Pfam_Name`, `Pfam_DBID`, `Inter_DBID`, `Domain_Type`) VALUES
('D01_0.6', 'C2H2 ZF', 'zf-C2H2', 'PF00096', 'IPR007087', 'RBD'),
('D02_0.6', 'CCCH ZF', 'zf-CCCH', 'PF00642', 'IPR000571', 'RBD'),
('D03_0.6', 'CCHC ZF', 'zf-CCHC', 'PF00098', 'IPR001878', 'RBD'),
('D04_0.6', 'CCHH ZF', 'zf-CCHH', 'PF10283', 'IPR019406', 'RBD'),
('D05_0.6', 'CSD', 'CSD', 'PF00313', 'IPR002059', 'RBD'),
('D06_0.6', 'KH', 'KH_1', 'PF00013', 'IPR018111', 'RBD'),
('D07_0.6', 'La', 'La', 'PF05383', 'IPR006630', 'RBD'),
('D08_0.6', 'PUF', 'PUF', 'PF00806', 'IPR001313', 'RBD'),
('D09_0.6', 'RanBP ZF', 'zf-RanBP', 'PF00641', 'IPR001876', 'RBD'),
('D10_0.6', 'RRM', 'RRM_1', 'PF00076', 'IPR000504', 'RBD'),
('D11_0.6', 'S1', 'S1', 'PF00575', 'IPR003029', 'RBD'),
('D12_0.6', 'SAM', 'SAM_1', 'PF00536', 'IPR021129', 'RBD'),
('D13_0.6', 'Unknown', 'UNKNOWN', 'Unknown', 'Unknown', 'RBD'),
('D14_0.6', 'YTH', 'YTH', 'PF04146', 'IPR007275', 'RBD');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
