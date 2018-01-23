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
-- Table structure for table `tf_families`
--

CREATE TABLE IF NOT EXISTS `tf_families` (
  `Family_ID` varchar(9) NOT NULL,
  `Family_Name` varchar(200) DEFAULT NULL,
  `DBDs` varchar(200) DEFAULT NULL,
  `DBD_Count` int(11) DEFAULT NULL,
  `Cutoff` float DEFAULT NULL,
  PRIMARY KEY (`Family_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tf_families`
--

INSERT INTO `tf_families` (`Family_ID`, `Family_Name`, `DBDs`, `DBD_Count`, `Cutoff`) VALUES
('F01_0.6', 'C2H2 ZF,CCCH ZF', 'zf-C2H2,zf-CCCH', 2, 0.7),
('F02_0.6', 'C2H2 ZF,CCHC ZF', 'zf-C2H2,zf-CCHC', 2, 0.7),
('F03_0.6', 'C2H2 ZF,KH', 'zf-C2H2,KH_1', 2, 0.7),
('F04_0.6', 'C2H2 ZF,RanBP ZF,RRM', 'zf-C2H2,zf-RanBP,RRM_1', 3, 0.7),
('F05_0.6', 'C2H2 ZF,RRM', 'zf-C2H2,RRM_1', 2, 0.7),
('F06_0.6', 'C2H2 ZF', 'zf-C2H2', 1, 0.7),
('F07_0.6', 'CCCH ZF,CCHC ZF,RanBP ZF', 'zf-CCCH,zf-CCHC,zf-RanBP', 3, 0.7),
('F08_0.6', 'CCCH ZF,CCHC ZF,RRM', 'zf-CCCH,zf-CCHC,RRM_1', 3, 0.7),
('F09_0.6', 'CCCH ZF,CCHC ZF', 'zf-CCCH,zf-CCHC', 2, 0.7),
('F10_0.6', 'CCCH ZF,CSD', 'zf-CCCH,CSD', 2, 0.7),
('F11_0.6', 'CCCH ZF,KH', 'zf-CCCH,KH_1', 2, 0.7),
('F12_0.6', 'CCCH ZF,PUF', 'zf-CCCH,PUF', 2, 0.7),
('F13_0.6', 'CCCH ZF,RanBP ZF,RRM', 'zf-CCCH,zf-RanBP,RRM_1', 3, 0.7),
('F14_0.6', 'CCCH ZF,RanBP ZF', 'zf-CCCH,zf-RanBP', 2, 0.7),
('F15_0.6', 'CCCH ZF,RRM', 'zf-CCCH,RRM_1', 2, 0.7),
('F16_0.6', 'CCCH ZF,YTH', 'zf-CCCH,YTH', 2, 0.7),
('F17_0.6', 'CCCH ZF', 'zf-CCCH', 1, 0.7),
('F18_0.6', 'CCHC ZF,CSD,RRM', 'zf-CCHC,CSD,RRM_1', 3, 0.7),
('F19_0.6', 'CCHC ZF,CSD,S1', 'zf-CCHC,CSD,S1', 3, 0.7),
('F20_0.6', 'CCHC ZF,CSD', 'zf-CCHC,CSD', 2, 0.7),
('F21_0.6', 'CCHC ZF,KH,RanBP ZF', 'zf-CCHC,KH_1,zf-RanBP', 3, 0.7),
('F22_0.6', 'CCHC ZF,KH,RRM', 'zf-CCHC,KH_1,RRM_1', 3, 0.7),
('F23_0.6', 'CCHC ZF,KH', 'zf-CCHC,KH_1', 2, 0.7),
('F24_0.6', 'CCHC ZF,RanBP ZF', 'zf-CCHC,zf-RanBP', 2, 0.7),
('F25_0.6', 'CCHC ZF,RRM', 'zf-CCHC,RRM_1', 2, 0.7),
('F26_0.6', 'CCHC ZF,S1', 'zf-CCHC,S1', 2, 0.7),
('F27_0.6', 'CCHC ZF,SAM', 'zf-CCHC,SAM_1', 2, 0.7),
('F28_0.6', 'CCHC ZF', 'zf-CCHC', 1, 0.7),
('F29_0.6', 'CCHH ZF', 'zf-CCHH', 1, 0.7),
('F30_0.6', 'CSD', 'CSD', 1, 0.7),
('F31_0.6', 'CSD,KH,S1', 'CSD,KH_1,S1', 3, 0.7),
('F32_0.6', 'CSD,RRM', 'CSD,RRM_1', 2, 0.7),
('F33_0.6', 'CSD,S1', 'CSD,S1', 2, 0.7),
('F34_0.6', 'CSD,SAM', 'CSD,SAM_1', 2, 0.7),
('F35_0.6', 'KH', 'KH_1', 1, 0.7),
('F36_0.6', 'KH,RanBP ZF', 'KH_1,zf-RanBP', 2, 0.7),
('F37_0.6', 'KH,RanBP ZF,RRM', 'KH_1,zf-RanBP,RRM_1', 3, 0.7),
('F38_0.6', 'KH,RRM', 'KH_1,RRM_1', 2, 0.7),
('F39_0.6', 'KH,S1', 'KH_1,S1', 2, 0.7),
('F40_0.6', 'KH,SAM', 'KH_1,SAM_1', 2, 0.7),
('F41_0.6', 'La', 'La', 1, 0.7),
('F42_0.6', 'La,RRM', 'La,RRM_1', 2, 0.7),
('F43_0.6', 'La,SAM', 'La,SAM_1', 2, 0.7),
('F44_0.6', 'PUF', 'PUF', 1, 0.7),
('F45_0.6', 'PUF,RRM', 'PUF,RRM_1', 2, 0.7),
('F46_0.6', 'RanBP ZF,RRM', 'zf-RanBP,RRM_1', 2, 0.7),
('F47_0.6', 'RanBP ZF,SAM', 'zf-RanBP,SAM_1', 2, 0.7),
('F48_0.6', 'RanBP ZF', 'zf-RanBP', 1, 0.7),
('F49_0.6', 'RRM', 'RRM_1', 1, 0.7),
('F50_0.6', 'RRM,SAM', 'RRM_1,SAM_1', 2, 0.7),
('F51_0.6', 'RRM,YTH', 'RRM_1,YTH', 2, 0.7),
('F52_0.6', 'S1', 'S1', 1, 0.7),
('F53_0.6', 'SAM', 'SAM_1', 1, 0.7),
('F54_0.6', 'Unknown', 'UNKNOWN', 1, 0.7),
('F55_0.6', 'YTH', 'YTH', 1, 0.7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
