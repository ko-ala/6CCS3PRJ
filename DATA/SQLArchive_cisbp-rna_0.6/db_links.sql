-- phpMyAdmin SQL Dump
-- version 3.4.3.1
-- http://www.phpmyadmin.net
--
-- Host: funspec.ccbr.utoronto.ca
-- Generation Time: Jun 12, 2015 at 02:40 PM
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
-- Table structure for table `db_links`
--

CREATE TABLE IF NOT EXISTS `db_links` (
  `DDLink_ID` varchar(11) NOT NULL,
  `Species` varchar(40) DEFAULT NULL,
  `URL` varchar(300) DEFAULT NULL,
  `Field` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DDLink_ID`),
  KEY `Species` (`Species`),
  KEY `URL` (`URL`),
  KEY `Field` (`Field`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_links`
--

INSERT INTO `db_links` (`DDLink_ID`, `Species`, `URL`, `Field`) VALUES
('DB01_0.6', 'Ailuropoda_melanoleuca', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Panda&db=ailMel1&position=VALUE', 'DBID'),
('DB02_0.6', 'Arabidopsis_thaliana', 'http://www.arabidopsis.org/servlets/Search?type=general&search_action=detail&name=QUERY&sub_type=gene', 'TF_Name'),
('DB03_0.6', 'Bos_Taurus', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Cow&db=bosTau4&position=VALUE', 'DBID'),
('DB04_0.6', 'Caenorhabditis_elegans', 'http://wormbase.org/db/gene/gene?name=VALUE;class=Gene', 'DBID'),
('DB05_0.6', 'Callithrix_jacchus', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Marmoset&db=calJac3&position=VALUE', 'DBID'),
('DB06_0.6', 'Candida_albicans', 'http://www.candidagenome.org/cgi-bin/locus.pl?locus=VALUE&organism=C_albicans_SC5314', 'DBID'),
('DB07_0.6', 'Candida_glabrata', 'http://www.candidagenome.org/cgi-bin/locus.pl?locus=VALUE&organism=C_glabrata_CBS138', 'DBID'),
('DB08_0.6', 'Canis_familiaris', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Dog&db=canFam2&position=VALUE', 'DBID'),
('DB09_0.6', 'Cavia_porcellus', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Guinea&db=cavPor3&position=VALUE', 'DBID'),
('DB10_0.6', 'Cryptosporidium_hominis', 'http://cryptodb.org/cryptodb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=CryptoDB', 'DBID'),
('DB11_0.6', 'Cryptosporidium_muris', 'http://cryptodb.org/cryptodb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=CryptoDB', 'DBID'),
('DB12_0.6', 'Cryptosporidium_parvum', 'http://cryptodb.org/cryptodb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=CryptoDB', 'DBID'),
('DB13_0.6', 'Dictyostelium_discoideum', 'http://dictybase.org/gene/VALUE', 'DBID'),
('DB14_0.6', 'Drosophila_ananassae', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB15_0.6', 'Drosophila_erecta', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB16_0.6', 'Drosophila_grimshawi', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB17_0.6', 'Drosophila_melanogaster', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB18_0.6', 'Drosophila_mojavensis', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB19_0.6', 'Drosophila_persimilis', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB20_0.6', 'Drosophila_pseudoobscura', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB21_0.6', 'Drosophila_sechellia', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB22_0.6', 'Drosophila_simulans', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB23_0.6', 'Drosophila_virilis', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB24_0.6', 'Drosophila_willistoni', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB25_0.6', 'Drosophila_yakuba', 'http://flybase.org/reports/VALUE.html', 'DBID'),
('DB26_0.6', 'Encephalitozoon_cuniculi', 'http://microsporidiadb.org/micro/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUEi&project_id=MicrosporidiaDB', 'DBID'),
('DB27_0.6', 'Encephalitozoon_intestinalis', 'http://microsporidiadb.org/micro/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUEi&project_id=MicrosporidiaDB', 'DBID'),
('DB28_0.6', 'Entamoeba_dispar', 'http://amoebadb.org/amoeba/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=AmoebaDB', 'DBID'),
('DB29_0.6', 'Entamoeba_histolytica', 'http://amoebadb.org/amoeba/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=AmoebaDB', 'DBID'),
('DB30_0.6', 'Entamoeba_invadens', 'http://amoebadb.org/amoeba/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=AmoebaDB', 'DBID'),
('DB31_0.6', 'Enterocytozoon_bieneusi', 'http://microsporidiadb.org/micro/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUEi&project_id=MicrosporidiaDB', 'DBID'),
('DB32_0.6', 'Equus_caballus', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Horse&db=equCab2&position=VALUE', 'DBID'),
('DB33_0.6', 'Felis_catus', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Cat&db=felCat4&position=VALUE', 'DBID'),
('DB34_0.6', 'Gallus_gallus', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Chicken&db=galGal3&position=VALUE', 'DBID'),
('DB35_0.6', 'Giardia_lamblia', 'http://giardiadb.org/giardiadb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=GiardiaDB', 'DBID'),
('DB36_0.6', 'Homo_sapiens', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Human&db=hg19&position=VALUE', 'DBID'),
('DB37_0.6', 'Leishmania_braziliensis', 'http://tritrypdb.org/tritrypdb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=TriTrypDB', 'DBID'),
('DB38_0.6', 'Leishmania_infantum', 'http://tritrypdb.org/tritrypdb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=TriTrypDB', 'DBID'),
('DB39_0.6', 'Leishmania_major', 'http://tritrypdb.org/tritrypdb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=TriTrypDB', 'DBID'),
('DB40_0.6', 'Leishmania_mexicana', 'http://tritrypdb.org/tritrypdb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=TriTrypDB', 'DBID'),
('DB41_0.6', 'Loxodonta_africana', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Elephant&db=loxAfr3&position=VALUE', 'DBID'),
('DB42_0.6', 'Macaca_mulatta', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Rhesus&db=rheMac2&position=VALUE', 'DBID'),
('DB43_0.6', 'Monodelphis_domestica', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Opossum&db=monDom5&position=VALUE', 'DBID'),
('DB44_0.6', 'Mus_musculus', 'http://www.informatics.jax.org/searchtool/Search.do?query=VALUE', 'DBID'),
('DB45_0.6', 'Neospora_caninum', 'http://toxodb.org/toxo/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=ToxoDB', 'DBID'),
('DB46_0.6', 'Ornithorhynchus_anatinus', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Platypus&db=ornAna1&position=VALUE', 'DBID'),
('DB47_0.6', 'Oryctolagus_cuniculus', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Rabbit&db=oryCun2&position=VALUE', 'DBID'),
('DB48_0.6', 'Ovis_aries', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Sheep&db=oviAri1&position=VALUE', 'DBID'),
('DB49_0.6', 'Pan_troglodytes', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Chimp&db=panTro3&position=VALUE', 'DBID'),
('DB50_0.6', 'Plasmodium_berghei', 'http://plasmodb.org/plasmo/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=PlasmoDB', 'DBID'),
('DB51_0.6', 'Plasmodium_chabaudi', 'http://plasmodb.org/plasmo/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=PlasmoDB', 'DBID'),
('DB52_0.6', 'Plasmodium_falciparum', 'http://plasmodb.org/plasmo/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=PlasmoDB', 'DBID'),
('DB53_0.6', 'Plasmodium_knowlesi', 'http://plasmodb.org/plasmo/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=PlasmoDB', 'DBID'),
('DB54_0.6', 'Plasmodium_vivax', 'http://plasmodb.org/plasmo/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=PlasmoDB', 'DBID'),
('DB55_0.6', 'Plasmodium_yoelii', 'http://plasmodb.org/plasmo/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=PlasmoDB', 'DBID'),
('DB56_0.6', 'Pongo_pygmaeus', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Orangutan&db=ponAbe2&position=VALUE', 'DBID'),
('DB57_0.6', 'Rattus_norvegicus', 'http://rgd.mcw.edu/rgdweb/search/genes.html?term=VALUE&speciesType=3', 'DBID'),
('DB58_0.6', 'Saccharomyces_cerevisiae', 'http://www.yeastgenome.org/cgi-bin/locus.fpl?locus=VALUE', 'DBID'),
('DB59_0.6', 'Schizosaccharomyces_pombe', 'http://old.genedb.org/genedb/Search?submit=Search+for&name=VALUE&organism=pombe&desc=yes&wildcard=yes', 'DBID'),
('DB60_0.6', 'Sus_scrofa', 'http://genome.ucsc.edu/cgi-bin/hgTracks?clade=mammal&org=Pig&db=susScr2&position=VALUE', 'DBID'),
('DB61_0.6', 'Theileria_annulata', 'http://beta.piroplasmadb.org/piro.b11/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=VALUE&project_id=PiroplasmaDB', 'DBID'),
('DB62_0.6', 'Toxoplasma_gondii', 'http://toxodb.org/toxo/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=ToxoDB', 'DBID'),
('DB63_0.6', 'Trichomonas_vaginalis', 'http://trichdb.org/trichdb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=TrichDB', 'DBID'),
('DB64_0.6', 'Trypanosoma_brucei', 'http://tritrypdb.org/tritrypdb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=TriTrypDB', 'DBID'),
('DB65_0.6', 'Trypanosoma_congolense', 'http://tritrypdb.org/tritrypdb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=TriTrypDB', 'DBID'),
('DB66_0.6', 'Trypanosoma_cruzi', 'http://tritrypdb.org/tritrypdb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=TriTrypDB', 'DBID'),
('DB67_0.6', 'Trypanosoma_vivax', 'http://tritrypdb.org/tritrypdb/showRecord.do?name=GeneRecordClasses.GeneRecordClass&source_id=QUERY&project_id=TriTrypDB', 'DBID');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
