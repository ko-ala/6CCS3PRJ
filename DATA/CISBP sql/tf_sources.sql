-- phpMyAdmin SQL Dump
-- version 3.4.3.1
-- http://www.phpmyadmin.net
--
-- Host: funspec.ccbr.utoronto.ca
-- Generation Time: Jun 12, 2015 at 02:46 PM
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
-- Table structure for table `tf_sources`
--

CREATE TABLE IF NOT EXISTS `tf_sources` (
  `TSource_ID` varchar(10) NOT NULL,
  `TfSource_Name` varchar(40) DEFAULT NULL,
  `TfSource_URL` text,
  `TfSource_Year` int(11) DEFAULT NULL,
  `TfSource_Month` varchar(3) DEFAULT NULL,
  `TfSource_Day` int(11) DEFAULT NULL,
  PRIMARY KEY (`TSource_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tf_sources`
--

INSERT INTO `tf_sources` (`TSource_ID`, `TfSource_Name`, `TfSource_URL`, `TfSource_Year`, `TfSource_Month`, `TfSource_Day`) VALUES
('TS01_0.6', 'Broad', 'http://www.broadinstitute.org/', 2010, 'Dec', 7),
('TS02_0.6', 'Broad', 'http://www.broadinstitute.org/', 2010, 'Oct', 20),
('TS03_0.6', 'Broad', 'http://www.broadinstitute.org/', 2010, 'Oct', 27),
('TS04_0.6', 'Broad', 'http://www.broadinstitute.org/', 2011, 'Nov', 22),
('TS05_0.6', 'Broad', 'http://www.broadinstitute.org/', 2011, 'Oct', 20),
('TS06_0.6', 'Broad', 'http://www.broadinstitute.org/', 2011, 'Oct', 22),
('TS07_0.6', 'Broad', 'http://www.broadinstitute.org/', 2011, 'Oct', 27),
('TS08_0.6', 'Cannabis sativa genome', 'http://genome.ccbr.utoronto.ca/', 2012, 'Feb', 20),
('TS09_0.6', 'Cyanidioschyzon merolae Genome Project', 'http://merolae.biol.s.u-tokyo.ac.jp/', 2008, 'Jan', 18),
('TS10_0.6', 'DroSpeGe', 'http://insects.eugenes.org/', 2008, 'Aug', 12),
('TS11_0.6', 'DroSpeGe', 'http://insects.eugenes.org/', 2008, 'Aug', 8),
('TS12_0.6', 'DroSpeGe', 'http://insects.eugenes.org/', 2008, 'Jul', 18),
('TS13_0.6', 'Ensembl', 'http://www.ensembl.org/', 2010, 'Aug', 24),
('TS14_0.6', 'Ensembl', 'http://www.ensembl.org/', 2010, 'Aug', 26),
('TS15_0.6', 'Ensembl', 'http://www.ensembl.org/', 2010, 'Aug', 27),
('TS16_0.6', 'Ensembl', 'http://www.ensembl.org/', 2010, 'Jul', 29),
('TS17_0.6', 'Ensembl', 'http://www.ensembl.org/', 2010, 'Mar', 3),
('TS18_0.6', 'Ensembl', 'http://www.ensembl.org/', 2011, 'Oct', 13),
('TS19_0.6', 'Ensembl', 'http://www.ensembl.org/', 2011, 'Oct', 26),
('TS20_0.6', 'EuPathDB', 'http://eupathdb.org/', 2010, 'Aug', 1),
('TS21_0.6', 'EuPathDB', 'http://eupathdb.org/', 2010, 'Aug', 30),
('TS22_0.6', 'EuPathDB', 'http://eupathdb.org/', 2010, 'Aug', 6),
('TS23_0.6', 'EuPathDB', 'http://eupathdb.org/', 2010, 'Jan', 4),
('TS24_0.6', 'EuPathDB', 'http://eupathdb.org/', 2010, 'Jul', 26),
('TS25_0.6', 'EuPathDB', 'http://eupathdb.org/', 2010, 'Jul', 31),
('TS26_0.6', 'EuPathDB', 'http://eupathdb.org/', 2010, 'Sep', 1),
('TS27_0.6', 'EuPathDB', 'http://eupathdb.org/', 2010, 'Sep', 21),
('TS28_0.6', 'Genoscope', 'http://www.genoscope.cns.fr/', 2008, 'Mar', 26),
('TS29_0.6', 'Genoscope', 'http://www.genoscope.cns.fr/', 2013, 'Jan', 11),
('TS30_0.6', 'Hughes Lab', 'https://hugheslab.ccbr.utoronto.ca/', 2012, 'Nov', 13),
('TS31_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2005, 'Dec', 8),
('TS32_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2005, 'May', 31),
('TS33_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2006, 'Aug', 29),
('TS34_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2006, 'Dec', 22),
('TS35_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2006, 'Dec', 5),
('TS36_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2006, 'Mar', 2),
('TS37_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2006, 'Nov', 28),
('TS38_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2006, 'Oct', 20),
('TS39_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Apr', 24),
('TS40_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Aug', 18),
('TS41_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Dec', 17),
('TS42_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Dec', 21),
('TS43_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Feb', 8),
('TS44_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Jan', 17),
('TS45_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Jan', 22),
('TS46_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Jul', 12),
('TS47_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Jul', 5),
('TS48_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Jun', 18),
('TS49_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'May', 31),
('TS50_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2007, 'Sep', 24),
('TS51_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Apr', 18),
('TS52_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Aug', 6),
('TS53_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Dec', 19),
('TS54_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Feb', 27),
('TS55_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Jun', 26),
('TS56_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Jun', 9),
('TS57_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Mar', 10),
('TS58_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Mar', 19),
('TS59_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Mar', 20),
('TS60_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'May', 22),
('TS61_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Nov', 7),
('TS62_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2008, 'Sep', 10),
('TS63_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'Apr', 10),
('TS64_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'Apr', 7),
('TS65_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'Apr', 9),
('TS66_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'Dec', 7),
('TS67_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'Feb', 27),
('TS68_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'Jan', 30),
('TS69_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'Mar', 24),
('TS70_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'Mar', 6),
('TS71_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'May', 22),
('TS72_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'May', 8),
('TS73_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'Nov', 19),
('TS74_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2009, 'Oct', 6),
('TS75_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2010, 'Aug', 5),
('TS76_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2010, 'Feb', 23),
('TS77_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2010, 'Feb', 24),
('TS78_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2010, 'Jan', 20),
('TS79_0.6', 'JGI', 'http://genome.jgi-psf.org/', 2010, 'Jan', 8),
('TS80_0.6', 'MaizeSequence', 'http://maizesequence.org/', 2009, 'Oct', 16),
('TS81_0.6', 'NCBI', 'http://www.ncbi.nlm.nih.gov/guide/proteins/', 2010, 'Oct', 26),
('TS82_0.6', 'NCBI', 'http://www.ncbi.nlm.nih.gov/guide/proteins/', 2011, 'Jan', 10),
('TS83_0.6', 'NCBI', 'http://www.ncbi.nlm.nih.gov/guide/proteins/', 2013, 'Jan', 11),
('TS84_0.6', 'PlantGDB', 'http://www.plantgdb.org/', 2010, 'Oct', 15),
('TS85_0.6', 'Pneumocystis Genome Project', 'http://pgp.cchmc.org/', 2010, 'Oct', 5),
('TS86_0.6', 'SDSPB', 'http://lifecenter.sgst.cn/main/en/index.do/', 2008, 'Sep', 5),
('TS87_0.6', 'SGD', 'http://yeastgenome.org/', 2003, 'Oct', 3),
('TS88_0.6', 'SilkDB', 'http://www.silkdb.org/silkdb/', 2008, 'Apr', 11),
('TS89_0.6', 'Superfamily', 'http://supfam.cs.bris.ac.uk/SUPERFAMILY/', 2011, 'Oct', 25),
('TS90_0.6', 'Superfamily', 'http://supfam.cs.bris.ac.uk/SUPERFAMILY/', 2011, 'Oct', 26),
('TS91_0.6', 'UniProt', 'http://www.uniprot.org/', 2013, 'Jan', 11),
('TS92_0.6', 'Xenbase', 'http://www.xenbase.org/common/', 2010, 'Oct', 22);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
