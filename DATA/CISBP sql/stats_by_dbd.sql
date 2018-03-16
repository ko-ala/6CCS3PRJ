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
-- Table structure for table `stats_by_dbd`
--

CREATE TABLE IF NOT EXISTS `stats_by_dbd` (
  `StatsDBD_ID` varchar(10) NOT NULL,
  `Family_Name` varchar(30) DEFAULT NULL,
  `Num_motifs` int(11) DEFAULT NULL,
  `Total_direct` int(11) DEFAULT NULL,
  `Total_inferred` int(11) DEFAULT NULL,
  `Total_RBPs` int(11) DEFAULT NULL,
  `Pct_RBPs` float DEFAULT NULL,
  `Pfam_ID` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`StatsDBD_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stats_by_dbd`
--

INSERT INTO `stats_by_dbd` (`StatsDBD_ID`, `Family_Name`, `Num_motifs`, `Total_direct`, `Total_inferred`, `Total_RBPs`, `Pct_RBPs`, `Pfam_ID`) VALUES
('SD01_0.6', 'C2H2 ZF', 4, 1, 3, 4, 100, 'zf-C2H2'),
('SD02_0.6', 'CCCH ZF', 280, 7, 273, 5561, 5, 'zf-CCCH'),
('SD03_0.6', 'CCHC ZF', 0, 0, 0, 8668, 0, 'zf-CCHC'),
('SD04_0.6', 'CCHH ZF', 2, 2, 0, 195, 1, 'zf-CCHH'),
('SD05_0.6', 'CSD', 224, 3, 221, 776, 28.9, 'CSD'),
('SD06_0.6', 'KH', 1026, 29, 997, 4687, 21.9, 'KH_1'),
('SD07_0.6', 'La', 0, 0, 0, 666, 0, 'La'),
('SD08_0.6', 'La+RRM', 0, 0, 0, 515, 0, 'La,RRM_1'),
('SD09_0.6', 'KH_1,zf-RanBP,RRM_1', 0, 0, 0, 1, 0, 'KH_1,zf-RanBP,RRM_1'),
('SD10_0.6', 'La,SAM_1', 0, 0, 0, 1, 0, 'La,SAM_1'),
('SD11_0.6', 'RRM_1,SAM_1', 0, 0, 0, 1, 0, 'RRM_1,SAM_1'),
('SD12_0.6', 'zf-C2H2,KH_1', 0, 0, 0, 1, 0, 'zf-C2H2,KH_1'),
('SD13_0.6', 'zf-C2H2,zf-RanBP,RRM_1', 0, 0, 0, 1, 0, 'zf-C2H2,zf-RanBP,RRM_1'),
('SD14_0.6', 'zf-CCCH,zf-CCHC,zf-RanBP', 0, 0, 0, 1, 0, 'zf-CCCH,zf-CCHC,zf-RanBP'),
('SD15_0.6', 'zf-CCHC,CSD,RRM_1', 0, 0, 0, 1, 0, 'zf-CCHC,CSD,RRM_1'),
('SD16_0.6', 'zf-CCHC,KH_1,zf-RanBP', 0, 0, 0, 1, 0, 'zf-CCHC,KH_1,zf-RanBP'),
('SD17_0.6', 'zf-RanBP,SAM_1', 0, 0, 0, 1, 0, 'zf-RanBP,SAM_1'),
('SD18_0.6', 'KH_1,SAM_1', 0, 0, 0, 104, 0, 'KH_1,SAM_1'),
('SD19_0.6', 'KH_1,S1', 0, 0, 0, 115, 0, 'KH_1,S1'),
('SD20_0.6', 'PUF,RRM_1', 0, 0, 0, 116, 0, 'PUF,RRM_1'),
('SD21_0.6', 'zf-CCCH,zf-CCHC', 0, 0, 0, 123, 0, 'zf-CCCH,zf-CCHC'),
('SD22_0.6', 'zf-CCCH,PUF', 0, 0, 0, 16, 0, 'zf-CCCH,PUF'),
('SD23_0.6', 'zf-CCHC,S1', 0, 0, 0, 16, 0, 'zf-CCHC,S1'),
('SD24_0.6', 'zf-CCHC,KH_1', 0, 0, 0, 170, 0, 'zf-CCHC,KH_1'),
('SD25_0.6', 'CSD,S1', 0, 0, 0, 17, 0, 'CSD,S1'),
('SD26_0.6', 'zf-CCCH,YTH', 0, 0, 0, 18, 0, 'zf-CCCH,YTH'),
('SD27_0.6', 'CSD,SAM_1', 0, 0, 0, 2, 0, 'CSD,SAM_1'),
('SD28_0.6', 'KH_1,zf-RanBP', 0, 0, 0, 2, 0, 'KH_1,zf-RanBP'),
('SD29_0.6', 'zf-CCCH,zf-RanBP,RRM_1', 0, 0, 0, 2, 0, 'zf-CCCH,zf-RanBP,RRM_1'),
('SD30_0.6', 'CSD,RRM_1', 0, 0, 0, 21, 0, 'CSD,RRM_1'),
('SD31_0.6', 'CSD,KH_1,S1', 0, 0, 0, 3, 0, 'CSD,KH_1,S1'),
('SD32_0.6', 'zf-C2H2,RRM_1', 0, 0, 0, 3, 0, 'zf-C2H2,RRM_1'),
('SD33_0.6', 'zf-C2H2,zf-CCHC', 0, 0, 0, 3, 0, 'zf-C2H2,zf-CCHC'),
('SD34_0.6', 'zf-CCCH,zf-CCHC,RRM_1', 0, 0, 0, 3, 0, 'zf-CCCH,zf-CCHC,RRM_1'),
('SD35_0.6', 'zf-CCCH,zf-RanBP', 0, 0, 0, 3, 0, 'zf-CCCH,zf-RanBP'),
('SD36_0.6', 'zf-CCHC,zf-RanBP', 0, 0, 0, 3, 0, 'zf-CCHC,zf-RanBP'),
('SD37_0.6', 'zf-CCHC,SAM_1', 0, 0, 0, 38, 0, 'zf-CCHC,SAM_1'),
('SD38_0.6', 'RRM_1,YTH', 0, 0, 0, 44, 0, 'RRM_1,YTH'),
('SD39_0.6', 'zf-CCCH,CSD', 0, 0, 0, 5, 0, 'zf-CCCH,CSD'),
('SD40_0.6', 'zf-CCHC,CSD,S1', 0, 0, 0, 5, 0, 'zf-CCHC,CSD,S1'),
('SD41_0.6', 'zf-CCHC,KH_1,RRM_1', 0, 0, 0, 5, 0, 'zf-CCHC,KH_1,RRM_1'),
('SD42_0.6', 'zf-CCCH,KH_1', 0, 0, 0, 78, 0, 'zf-CCCH,KH_1'),
('SD43_0.6', 'zf-C2H2,zf-CCCH', 0, 0, 0, 8, 0, 'zf-C2H2,zf-CCCH'),
('SD44_0.6', 'zf-CCCH,RRM_1', 0, 0, 0, 904, 0, 'zf-CCCH,RRM_1'),
('SD45_0.6', 'zf-RanBP,RRM_1', 109, 2, 107, 515, 21.2, 'zf-RanBP,RRM_1'),
('SD46_0.6', 'zf-CCHC,RRM_1', 189, 3, 186, 641, 29.5, 'zf-CCHC,RRM_1'),
('SD47_0.6', 'KH_1,RRM_1', 73, 3, 70, 177, 41.2, 'KH_1,RRM_1'),
('SD48_0.6', 'zf-CCHC,CSD', 76, 1, 75, 177, 42.9, 'zf-CCHC,CSD'),
('SD49_0.6', 'PUF', 124, 11, 113, 1551, 8, 'PUF'),
('SD50_0.6', 'RanBP ZF', 49, 1, 48, 2024, 2.4, 'zf-RanBP'),
('SD51_0.6', 'RRM', 5497, 182, 5315, 31819, 17.3, 'RRM_1'),
('SD52_0.6', 'S1', 257, 1, 256, 1950, 13.2, 'S1'),
('SD53_0.6', 'SAM', 97, 2, 95, 97, 100, 'SAM_1'),
('SD54_0.6', 'Unknown', 1, 1, 0, 1, 100, 'UNKNOWN'),
('SD55_0.6', 'YTH', 48, 1, 47, 727, 6.6, 'YTH');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
