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
-- Table structure for table `stats_by_species`
--

CREATE TABLE IF NOT EXISTS `stats_by_species` (
  `StatsSpec_ID` varchar(10) NOT NULL,
  `Species` varchar(50) DEFAULT NULL,
  `Num_motifs` int(11) DEFAULT NULL,
  `Total_direct` int(11) DEFAULT NULL,
  `Total_indirect` int(11) DEFAULT NULL,
  `Total_TFs` int(11) DEFAULT NULL,
  `Pct_TFs` float DEFAULT NULL,
  `Species_Name` varchar(70) DEFAULT NULL,
  `Kingdom` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StatsSpec_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stats_by_species`
--

INSERT INTO `stats_by_species` (`StatsSpec_ID`, `Species`, `Num_motifs`, `Total_direct`, `Total_indirect`, `Total_TFs`, `Pct_TFs`, `Species_Name`, `Kingdom`) VALUES
('SS001_0.6', 'Acyrtosiphon_pisum', 33, 0, 33, 379, 8.7, 'Pea aphid', 'Metazoa'),
('SS002_0.6', 'Aedes_aegypti', 42, 0, 42, 248, 16.9, 'Yellowfever mosquito', 'Metazoa'),
('SS003_0.6', 'Agaricus_bisporus', 3, 0, 3, 188, 1.6, 'Common (button) mushroom', 'Fungi'),
('SS004_0.6', 'Ailuropoda_melanoleuca', 126, 0, 126, 347, 36.3, 'Panda', 'Metazoa'),
('SS005_0.6', 'Allomyces_macrogynus', 4, 0, 4, 249, 1.6, 'Zoosporic fungus', 'Fungi'),
('SS006_0.6', 'Alternaria_brassicicola', 4, 0, 4, 105, 3.8, 'Plant pathogen (brassica dark leaf spot)', 'Fungi'),
('SS007_0.6', 'Amphimedon_queenslandica', 14, 0, 14, 329, 4.3, 'Sponge', 'Metazoa'),
('SS008_0.6', 'Anolis_carolinensis', 111, 0, 111, 334, 33.2, 'Green anole', 'Metazoa'),
('SS009_0.6', 'Anopheles_gambiae', 36, 0, 36, 209, 17.2, 'Mosquito (seven types)', 'Metazoa'),
('SS010_0.6', 'Apis_mellifera', 45, 0, 45, 203, 22.2, 'Honey bee', 'Metazoa'),
('SS011_0.6', 'Arabidopsis_lyrata', 14, 0, 14, 519, 2.7, 'Mustard', 'Plants'),
('SS012_0.6', 'Arabidopsis_thaliana', 13, 1, 12, 559, 2.3, 'Mouse-ear cress', 'Plants'),
('SS013_0.6', 'Arthroderma_benhamiae', 3, 0, 3, 95, 3.2, 'Ringworm', 'Fungi'),
('SS014_0.6', 'Ashbya_gossypii', 5, 0, 5, 84, 6, 'Plant pathogen (fungus)', 'Fungi'),
('SS015_0.6', 'Aspergillus_carbonarius', 4, 0, 4, 100, 4, 'Black spore mold', 'Fungi'),
('SS016_0.6', 'Aspergillus_clavatus', 4, 0, 4, 109, 3.7, 'Aspergillus', 'Fungi'),
('SS017_0.6', 'Aspergillus_flavus', 3, 0, 3, 97, 3.1, 'Aspergillus', 'Fungi'),
('SS018_0.6', 'Aspergillus_fumigatus', 4, 0, 4, 99, 4, 'Cause of aspergillosis', 'Fungi'),
('SS019_0.6', 'Aspergillus_nidulans', 4, 2, 2, 107, 3.7, 'Aspergillus', 'Fungi'),
('SS020_0.6', 'Aspergillus_niger', 2, 0, 2, 105, 1.9, 'Aspergillus (black mold)', 'Fungi'),
('SS021_0.6', 'Aspergillus_oryzae', 2, 0, 2, 107, 1.9, 'Koji mold (makes sake)', 'Fungi'),
('SS022_0.6', 'Aspergillus_terreus', 3, 0, 3, 101, 3, 'Aspergillus terreus', 'Fungi'),
('SS023_0.6', 'Aureococcus_anophagefferens', 3, 0, 3, 135, 2.2, 'Brown tide blooms', 'Alga'),
('SS024_0.6', 'Babesia_bovis', 0, 0, 0, 88, 0, 'Cattle Parasite', 'Protists'),
('SS025_0.6', 'Batrachochytrium_dendrobatidis', 2, 0, 2, 122, 1.6, 'Chytrid targetting amphibians', 'Fungi'),
('SS026_0.6', 'Bigelowiella_natans', 0, 0, 0, 6, 0, 'Chlorarachniophyte algal symbiont', 'Alga'),
('SS027_0.6', 'Blastomyces_dermatitidis', 5, 0, 5, 112, 4.5, 'Causes blastomycosis', 'Fungi'),
('SS028_0.6', 'Bombyx_mori', 26, 0, 26, 203, 12.8, 'Silk moth', 'Metazoa'),
('SS029_0.6', 'Bos_taurus', 142, 0, 142, 371, 38.3, 'Bovine', 'Metazoa'),
('SS030_0.6', 'Botrytis_cinerea', 3, 0, 3, 125, 2.4, 'Botrytis cinerea', 'Fungi'),
('SS031_0.6', 'Brachypodium_distachyon', 13, 0, 13, 440, 3, 'Purple false brome (grass)', 'Plants'),
('SS032_0.6', 'Branchiostoma_floridae', 58, 0, 58, 413, 14, 'Florida lancelet (fish)', 'Metazoa'),
('SS033_0.6', 'Brugia_malayi', 11, 0, 11, 182, 6, 'B. malayi (nematode)', 'Metazoa'),
('SS034_0.6', 'Caenorhabditis_brenneri', 30, 0, 30, 232, 12.9, 'C. brenneri (nematode)', 'Metazoa'),
('SS035_0.6', 'Caenorhabditis_briggsae', 24, 0, 24, 258, 9.3, 'C. briggsae', 'Metazoa'),
('SS036_0.6', 'Caenorhabditis_elegans', 28, 15, 13, 211, 13.3, 'C. elegans', 'Metazoa'),
('SS037_0.6', 'Caenorhabditis_japonica', 19, 0, 19, 357, 5.3, 'C. japonica (nematode)', 'Metazoa'),
('SS038_0.6', 'Caenorhabditis_remanei', 23, 0, 23, 357, 6.4, 'C. remanei (nematode)', 'Metazoa'),
('SS039_0.6', 'Callithrix_jacchus', 221, 0, 221, 470, 47, 'Common marmoset', 'Metazoa'),
('SS040_0.6', 'Candida_albicans', 1, 0, 1, 93, 1.1, 'Yeast', 'Fungi'),
('SS041_0.6', 'Candida_dubliniensis', 1, 0, 1, 92, 1.1, 'Fungal pathogen', 'Fungi'),
('SS042_0.6', 'Candida_glabrata', 9, 0, 9, 87, 10.3, 'Human pathogen (fungus)', 'Fungi'),
('SS043_0.6', 'Candida_guilliermondii', 1, 0, 1, 82, 1.2, 'Yeast', 'Fungi'),
('SS044_0.6', 'Candida_lusitaniae', 1, 0, 1, 82, 1.2, 'Yeast', 'Fungi'),
('SS045_0.6', 'Candida_parapsilosis', 1, 0, 1, 85, 1.2, 'Yeast', 'Fungi'),
('SS046_0.6', 'Candida_tropicalis', 1, 0, 1, 90, 1.1, 'Yeast', 'Fungi'),
('SS047_0.6', 'Canis_familiaris', 202, 0, 202, 431, 46.9, 'Dog', 'Metazoa'),
('SS048_0.6', 'Cannabis_sativa', 14, 0, 14, 383, 3.7, 'Marijuana', 'Plants'),
('SS049_0.6', 'Capitella_teleta', 46, 0, 46, 348, 13.2, 'Segmented worm', 'Metazoa'),
('SS050_0.6', 'Capsaspora_owczarzaki', 2, 0, 2, 131, 1.5, 'Protist (snail symbiont)', 'Protists'),
('SS051_0.6', 'Cavia_porcellus', 133, 0, 133, 350, 38, 'Guinea pig', 'Metazoa'),
('SS052_0.6', 'Chaetomium_globosum', 5, 0, 5, 124, 4, 'Mold allergen', 'Fungi'),
('SS053_0.6', 'Chlamydomonas_reinhardtii', 2, 0, 2, 145, 1.4, 'Chlamydomonas', 'Alga'),
('SS054_0.6', 'Chlorella_NC64A', 3, 0, 3, 166, 1.8, 'Microalgae', 'Alga'),
('SS055_0.6', 'Chlorella_vulgaris', 3, 0, 3, 139, 2.2, 'Green algae', 'Alga'),
('SS056_0.6', 'Choloepus_hoffmanni', 58, 0, 58, 232, 25, 'Hoffmanns two-fingered sloth', 'Metazoa'),
('SS057_0.6', 'Ciona_intestinalis', 21, 0, 21, 180, 11.7, 'Transparent sea squirt', 'Metazoa'),
('SS058_0.6', 'Ciona_savignyi', 20, 0, 20, 158, 12.7, 'Pacific transparent sea squirt', 'Metazoa'),
('SS059_0.6', 'Coccidioides_immitis', 4, 0, 4, 104, 3.8, 'Cause of Valley Fever', 'Fungi'),
('SS060_0.6', 'Coccidioides_posadasii', 3, 0, 3, 113, 2.7, 'Cause of Valley Fever', 'Fungi'),
('SS061_0.6', 'Coccomyxa_C_169', 2, 0, 2, 144, 1.4, 'Green algae', 'Alga'),
('SS062_0.6', 'Cochliobolus_heterostrophus_C5', 4, 0, 4, 114, 3.5, 'Southern Corn Leaf Blight', 'Fungi'),
('SS063_0.6', 'Colletotrichum_graminicola', 5, 0, 5, 103, 4.9, 'Glomerella graminicola, causes plant cankers (anthracnose) on maize an', 'Fungi'),
('SS064_0.6', 'Coprinopsis_cinerea', 2, 0, 2, 138, 1.4, 'Inky cap mushroom', 'Fungi'),
('SS065_0.6', 'Cryphonectria_parasitica', 5, 0, 5, 99, 5.1, 'Chestnut blight fungus', 'Fungi'),
('SS066_0.6', 'Cryptococcus_neoformans', 0, 0, 0, 107, 0, 'Cryptococcus neoformans', 'Fungi'),
('SS067_0.6', 'Cryptosporidium_hominis', 1, 0, 1, 67, 1.5, 'Protist (human parasite)', 'Protists'),
('SS068_0.6', 'Cryptosporidium_muris', 0, 0, 0, 85, 0, 'Protist (human parasite)', 'Protists'),
('SS069_0.6', 'Cryptosporidium_parvum', 1, 0, 1, 77, 1.3, 'Cryptosporidium parvum', 'Protists'),
('SS070_0.6', 'Cucumis_sativus', 17, 0, 17, 319, 5.3, 'Cucumber', 'Plants'),
('SS071_0.6', 'Culex_pipiens', 34, 0, 34, 322, 10.6, 'C. pipiens (mosquito)', 'Metazoa'),
('SS072_0.6', 'Culex_quinquefasciatus', 35, 0, 35, 261, 13.4, 'C. quinquefasciatus (mosquito)', 'Metazoa'),
('SS073_0.6', 'Cyanidioschyzon_merolae', 0, 0, 0, 52, 0, 'Red alga', 'Alga'),
('SS074_0.6', 'Danio_rerio', 145, 5, 140, 434, 33.4, 'Zebrafish', 'Metazoa'),
('SS075_0.6', 'Daphnia_pulex', 32, 0, 32, 468, 6.8, 'Water flea', 'Metazoa'),
('SS076_0.6', 'Dasypus_novemcinctus', 67, 0, 67, 240, 27.9, 'Nine-banded armadillo', 'Metazoa'),
('SS077_0.6', 'Debaryomyces_hansenii', 1, 0, 1, 96, 1, 'Salt loving yeast', 'Fungi'),
('SS078_0.6', 'Dictyostelium_discoideum', 2, 0, 2, 138, 1.4, 'Slime mold', 'Protists'),
('SS079_0.6', 'Dictyostelium_purpureum', 2, 0, 2, 135, 1.5, 'Slime mold', 'Protists'),
('SS080_0.6', 'Dipodomys_ordii', 85, 0, 85, 270, 31.5, 'Ords kangaroo rat', 'Metazoa'),
('SS081_0.6', 'Drosophila_ananassae', 50, 0, 50, 196, 25.5, 'D. ananassae (fruit fly)', 'Metazoa'),
('SS082_0.6', 'Drosophila_erecta', 48, 0, 48, 201, 23.9, 'D. erecta (fruit fly)', 'Metazoa'),
('SS083_0.6', 'Drosophila_grimshawi', 46, 0, 46, 198, 23.2, 'D. grimshawi (fruit fly)', 'Metazoa'),
('SS084_0.6', 'Drosophila_melanogaster', 60, 52, 8, 224, 26.8, 'Fruit fly', 'Metazoa'),
('SS085_0.6', 'Drosophila_mojavensis', 51, 0, 51, 195, 26.2, 'D. mojavensis (fruit fly)', 'Metazoa'),
('SS086_0.6', 'Drosophila_persimilis', 40, 0, 40, 179, 22.3, 'D. persimilis (fruit fly)', 'Metazoa'),
('SS087_0.6', 'Drosophila_pseudoobscura', 46, 0, 46, 209, 22, 'Fruit fly', 'Metazoa'),
('SS088_0.6', 'Drosophila_sechellia', 50, 0, 50, 207, 24.2, 'D. sechellia  (fruit fly)', 'Metazoa'),
('SS089_0.6', 'Drosophila_simulans', 42, 0, 42, 190, 22.1, 'D. simulans  (fruit fly)', 'Metazoa'),
('SS090_0.6', 'Drosophila_virilis', 47, 0, 47, 196, 24, 'D. virilis  (fruit fly)', 'Metazoa'),
('SS091_0.6', 'Drosophila_willistoni', 49, 0, 49, 213, 23, 'D. willistoni  (fruit fly)', 'Metazoa'),
('SS092_0.6', 'Drosophila_yakuba', 52, 0, 52, 203, 25.6, 'D. yakuba  (fruit fly)', 'Metazoa'),
('SS093_0.6', 'Echinops_telfairi', 83, 0, 83, 300, 27.7, 'Lesser hedgehog tenrec', 'Metazoa'),
('SS094_0.6', 'Emiliania_huxleyi', 2, 0, 2, 391, 0.5, 'EHUX', 'Alga'),
('SS095_0.6', 'Encephalitozoon_cuniculi', 0, 0, 0, 41, 0, 'Encephalitozoon cuniculi', 'Fungi'),
('SS096_0.6', 'Encephalitozoon_intestinalis', 0, 0, 0, 41, 0, 'Protist (human parasite); smallest known genome', 'Fungi'),
('SS097_0.6', 'Entamoeba_dispar', 0, 0, 0, 120, 0, 'Entamoeba (animal parasite)', 'Protists'),
('SS098_0.6', 'Entamoeba_histolytica', 0, 0, 0, 116, 0, 'Entamoeba (animal parasite)', 'Protists'),
('SS099_0.6', 'Entamoeba_invadens', 0, 0, 0, 148, 0, 'Entamoeba (animal parasite)', 'Protists'),
('SS100_0.6', 'Enterocytozoon_bieneusi', 0, 0, 0, 58, 0, 'Microsporidia', 'Fungi'),
('SS101_0.6', 'Equus_caballus', 124, 0, 124, 320, 38.8, 'Horse', 'Metazoa'),
('SS102_0.6', 'Erinaceus_europaeus', 68, 0, 68, 240, 28.3, 'Western European hedgehog', 'Metazoa'),
('SS103_0.6', 'Felis_catus', 50, 0, 50, 228, 21.9, 'Cat', 'Metazoa'),
('SS104_0.6', 'Fragilariopsis_cylindrus', 1, 0, 1, 157, 0.6, 'Planktonic diatom, grows on ice', 'Alga'),
('SS105_0.6', 'Fusarium_graminearum', 3, 0, 3, 111, 2.7, 'Gibberella zeae, cause of wheat headblight', 'Fungi'),
('SS106_0.6', 'Fusarium_oxysporum', 4, 0, 4, 104, 3.8, 'Need subspecies, but soil microbe digesting lignin', 'Fungi'),
('SS107_0.6', 'Fusarium_verticillioides', 4, 0, 4, 101, 4, 'Gibberella fujikuroi, cause of bakanae disease in rice', 'Fungi'),
('SS108_0.6', 'Gallus_gallus', 93, 3, 90, 275, 33.8, 'Chicken', 'Metazoa'),
('SS109_0.6', 'Gasterosteus_aculeatus', 141, 0, 141, 394, 35.8, 'Three-spined stickleback', 'Metazoa'),
('SS110_0.6', 'Giardia_lamblia', 0, 0, 0, 36, 0, 'Giardia lamblia', 'Protists'),
('SS111_0.6', 'Glycine_max', 41, 0, 41, 818, 5, 'Soybean', 'Plants'),
('SS112_0.6', 'Gorilla_gorilla', 153, 0, 153, 371, 41.2, 'Gorilla', 'Metazoa'),
('SS113_0.6', 'Guillardia_theta', 0, 0, 0, 7, 0, 'Cryptomonad', 'Protists'),
('SS114_0.6', 'Helobdella_robusta', 27, 0, 27, 401, 6.7, 'Leech', 'Metazoa'),
('SS115_0.6', 'Hemiselmis_andersenii', 0, 0, 0, 7, 0, 'Nucleomorph (remnant of an algal sybiont)', 'Alga'),
('SS116_0.6', 'Heterobasidion_annosum', 1, 0, 1, 169, 0.6, 'Annosum root rot', 'Fungi'),
('SS117_0.6', 'Histoplasma_capsulatum', 4, 0, 4, 106, 3.8, 'Histoplasma capsulatum', 'Fungi'),
('SS118_0.6', 'Homo_sapiens', 167, 100, 67, 392, 42.6, 'Human', 'Metazoa'),
('SS119_0.6', 'Hydra_magnipapillata', 12, 0, 12, 277, 4.3, 'Fresh water polp', 'Metazoa'),
('SS120_0.6', 'Ixodes_scapularis', 21, 0, 21, 202, 10.4, 'Deer tick', 'Metazoa'),
('SS121_0.6', 'Kluyveromyces_lactis', 6, 0, 6, 77, 7.8, 'Yeast', 'Fungi'),
('SS122_0.6', 'Kluyveromyces_thermotolerans', 6, 0, 6, 89, 6.7, 'K. thermotolerans', 'Fungi'),
('SS123_0.6', 'Kluyveromyces_waltii', 5, 0, 5, 92, 5.4, 'K. waltii (yeast)', 'Fungi'),
('SS124_0.6', 'Laccaria_bicolor', 3, 0, 3, 147, 2, 'Deceiver (small tan colored mushroom)', 'Fungi'),
('SS125_0.6', 'Lachancea_kluyveri', 7, 0, 7, 89, 7.9, 'L. kluyveri (budding yeast)', 'Fungi'),
('SS126_0.6', 'Leishmania_braziliensis', 7, 0, 7, 146, 4.8, 'Protist (human parasite)', 'Protists'),
('SS127_0.6', 'Leishmania_infantum', 6, 0, 6, 148, 4.1, 'Protist (human parasite)', 'Protists'),
('SS128_0.6', 'Leishmania_major', 7, 4, 3, 149, 4.7, 'Leishmania major', 'Protists'),
('SS129_0.6', 'Leishmania_mexicana', 7, 0, 7, 145, 4.8, 'Protist (human parasite)', 'Protists'),
('SS130_0.6', 'Loa_loa', 13, 0, 13, 198, 6.6, 'L. loa (nematode)', 'Metazoa'),
('SS131_0.6', 'Lodderomyces_elongisporus', 1, 0, 1, 92, 1.1, 'Yeast', 'Fungi'),
('SS132_0.6', 'Lottia_gigantea', 28, 0, 28, 300, 9.3, 'Owl limpet (sea snail)', 'Metazoa'),
('SS133_0.6', 'Lotus_japonicus', 10, 0, 10, 552, 1.8, 'Wild legume', 'Plants'),
('SS134_0.6', 'Loxodonta_africana', 131, 0, 131, 344, 38.1, 'African elephant', 'Metazoa'),
('SS135_0.6', 'Macaca_mulatta', 157, 0, 157, 387, 40.6, 'Rhesus macaque', 'Metazoa'),
('SS136_0.6', 'Macropus_eugenii', 78, 0, 78, 266, 29.3, 'Tammar wallaby', 'Metazoa'),
('SS137_0.6', 'Magnaporthe_oryzae', 5, 0, 5, 100, 5, 'Magnaporthe grisea, rice blast fungus, many others', 'Fungi'),
('SS138_0.6', 'Malassezia_globosa', 1, 0, 1, 85, 1.2, 'Yeast (human symbiont)', 'Fungi'),
('SS139_0.6', 'Malus_x_domestica', 25, 0, 25, 938, 2.7, 'Domesticated apple', 'Plants'),
('SS140_0.6', 'Manihot_esculenta', 42, 0, 42, 874, 4.8, 'Cassava (woody shrub)', 'Plants'),
('SS141_0.6', 'Medicago_truncatula', 15, 0, 15, 398, 3.8, 'Barrel Clover (legume)', 'Plants'),
('SS142_0.6', 'Melampsora_laricis_populina', 2, 0, 2, 152, 1.3, 'Leaf rust fungus', 'Fungi'),
('SS143_0.6', 'Meleagris_gallopavo', 80, 0, 80, 274, 29.2, 'Turkey', 'Metazoa'),
('SS144_0.6', 'Meloidogyne_incognita', 15, 0, 15, 316, 4.7, 'Southern root-knot nematode', 'Metazoa'),
('SS145_0.6', 'Microcebus_murinus', 82, 0, 82, 262, 31.3, 'Lesser mouse lemur', 'Metazoa'),
('SS146_0.6', 'Micromonas_pusilla', 2, 0, 2, 182, 1.1, 'Flagellar marine algae', 'Alga'),
('SS147_0.6', 'Microsporum_canis', 3, 0, 3, 102, 2.9, 'Cause of Tinea capitis (scalp ringworm)', 'Fungi'),
('SS148_0.6', 'Microsporum_gypseum', 3, 0, 3, 105, 2.9, 'Mold, may cause ringworm', 'Fungi'),
('SS149_0.6', 'Mimulus_guttatus', 14, 0, 14, 484, 2.9, 'Common monkey flower', 'Plants'),
('SS150_0.6', 'Moniliophthora_perniciosa', 0, 0, 0, 82, 0, 'Plant pathogen', 'Fungi'),
('SS151_0.6', 'Monodelphis_domestica', 147, 0, 147, 373, 39.4, 'Short-tailed gray opossum', 'Metazoa'),
('SS152_0.6', 'Monosiga_brevicollis', 2, 0, 2, 126, 1.6, 'Choanoflagellate', 'Protists'),
('SS153_0.6', 'Mucor_circinelloides', 4, 0, 4, 184, 2.2, 'Cause of zygomycosis', 'Fungi'),
('SS154_0.6', 'Mus_musculus', 154, 7, 147, 373, 41.3, 'Mouse', 'Metazoa'),
('SS155_0.6', 'Myceliophthora_thermophila', 5, 0, 5, 106, 4.7, 'Thielavia heterothallica', 'Fungi'),
('SS156_0.6', 'Mycosphaerella_fijiensis', 3, 0, 3, 94, 3.2, 'Black sigatoka', 'Fungi'),
('SS157_0.6', 'Mycosphaerella_graminicola', 3, 0, 3, 98, 3.1, 'Wheat pathogen', 'Fungi'),
('SS158_0.6', 'Myotis_lucifugus', 91, 0, 91, 327, 27.8, 'Little brown bat', 'Metazoa'),
('SS159_0.6', 'Naegleria_gruberi', 1, 1, 0, 101, 1, 'Amoeba', 'Protists'),
('SS160_0.6', 'Nasonia_vitripennis', 37, 0, 37, 558, 6.6, 'Parasitoid wasp', 'Metazoa'),
('SS161_0.6', 'Nectria_haematococca', 5, 0, 5, 101, 5, 'Fusarium solani ', 'Fungi'),
('SS162_0.6', 'Nematostella_vectensis', 23, 1, 22, 283, 8.1, 'Starlet sea anemone', 'Metazoa'),
('SS163_0.6', 'Neosartorya_fischeri', 4, 0, 4, 104, 3.8, 'Fungal pathogen (related to Aspergillus)', 'Fungi'),
('SS164_0.6', 'Neospora_caninum', 1, 0, 1, 138, 0.7, 'Protist (animal parasite)', 'Protists'),
('SS165_0.6', 'Neurospora_crassa', 5, 2, 3, 115, 4.3, 'Neurospora crassa', 'Fungi'),
('SS166_0.6', 'Neurospora_discreta', 4, 0, 4, 106, 3.8, 'Mold', 'Fungi'),
('SS167_0.6', 'Neurospora_tetrasperma', 5, 0, 5, 109, 4.6, 'Mold', 'Fungi'),
('SS168_0.6', 'Ochotona_princeps', 84, 0, 84, 272, 30.9, 'Southern American pika', 'Metazoa'),
('SS169_0.6', 'Oikopleura_dioica', 10, 0, 10, 298, 3.4, 'Tunicate', 'Metazoa'),
('SS170_0.6', 'Ornithorhynchus_anatinus', 82, 0, 82, 261, 31.4, 'Duckbill platypus', 'Metazoa'),
('SS171_0.6', 'Oryctolagus_cuniculus', 156, 0, 156, 388, 40.2, 'Rabbit', 'Metazoa'),
('SS172_0.6', 'Oryza_indica', 10, 0, 10, 481, 2.1, 'Rice', 'Plants'),
('SS173_0.6', 'Oryza_sativa', 17, 0, 17, 2420, 0.7, 'Rice', 'Plants'),
('SS174_0.6', 'Oryzias_latipes', 127, 0, 127, 366, 34.7, 'Medaka fish', 'Metazoa'),
('SS175_0.6', 'Ostreococcus_lucimarinus', 3, 0, 3, 130, 2.3, 'Single-celled alga', 'Alga'),
('SS176_0.6', 'Ostreococcus_RCC809', 4, 0, 4, 137, 2.9, 'Single-celled alga', 'Alga'),
('SS177_0.6', 'Ostreococcus_tauri', 5, 2, 3, 125, 4, 'Green algae', 'Alga'),
('SS178_0.6', 'Otolemur_garnettii', 63, 0, 63, 233, 27, 'Small-eared galago', 'Metazoa'),
('SS179_0.6', 'Pan_troglodytes', 156, 0, 156, 357, 43.7, 'Chimpanzee', 'Metazoa'),
('SS180_0.6', 'Paracoccidioides_brasiliensis', 2, 0, 2, 102, 2, 'Cause of paracoccidioidomycosis', 'Fungi'),
('SS181_0.6', 'Paramecium_tetraurelia', 0, 0, 0, 424, 0, 'Ciliate', 'Protists'),
('SS182_0.6', 'Pediculus_humanus', 34, 0, 34, 180, 18.9, 'Head louse', 'Metazoa'),
('SS183_0.6', 'Penicillium_chrysogenum', 2, 0, 2, 110, 1.8, 'Mold', 'Fungi'),
('SS184_0.6', 'Penicillium_marneffei', 4, 0, 4, 119, 3.4, 'Mold- cause of penicilliosis ', 'Fungi'),
('SS185_0.6', 'Phaeodactylum_tricornutum', 1, 0, 1, 119, 0.8, 'Diatom', 'Alga'),
('SS186_0.6', 'Phaeosphaeria_nodorum', 3, 0, 3, 108, 2.8, 'Glume blotch fungus', 'Fungi'),
('SS187_0.6', 'Phanerochaete_chrysosporium', 3, 0, 3, 163, 1.8, '"White rot", crust fungus', 'Fungi'),
('SS188_0.6', 'Phoenix_dactylifera', 4, 0, 4, 388, 1, 'True date palm', 'Plants'),
('SS189_0.6', 'Phycomyces_blakesleeanus', 4, 0, 4, 203, 2, 'Algal fungi', 'Fungi'),
('SS190_0.6', 'Physcomitrella_patens', 13, 3, 10, 345, 3.8, 'Moss', 'Plants'),
('SS191_0.6', 'Phytophthora_capsici', 2, 0, 2, 157, 1.3, 'Plant pathogen', 'Protists'),
('SS192_0.6', 'Phytophthora_infestans', 2, 0, 2, 175, 1.1, 'Potato blight water mold', 'Protists'),
('SS193_0.6', 'Phytophthora_ramorum', 2, 1, 1, 265, 0.8, 'Sudden Oak Death', 'Protists'),
('SS194_0.6', 'Phytophthora_sojae', 1, 0, 1, 341, 0.3, 'Soybean stem and root rot', 'Protists'),
('SS195_0.6', 'Pichia_pastoris', 1, 0, 1, 84, 1.2, 'Yeast', 'Fungi'),
('SS196_0.6', 'Pichia_stipitis', 1, 0, 1, 85, 1.2, 'Yeast related to cerevisiae', 'Fungi'),
('SS197_0.6', 'Plasmodium_berghei', 7, 0, 7, 100, 7, 'Protist (animal parasite)', 'Protists'),
('SS198_0.6', 'Plasmodium_chabaudi', 8, 0, 8, 102, 7.8, 'Protist (animal parasite)', 'Protists'),
('SS199_0.6', 'Plasmodium_falciparum', 8, 8, 0, 103, 7.8, 'Malaria', 'Protists'),
('SS200_0.6', 'Plasmodium_knowlesi', 7, 0, 7, 108, 6.5, 'Protist (animal parasite)', 'Protists'),
('SS201_0.6', 'Plasmodium_vivax', 7, 0, 7, 104, 6.7, 'Protist (animal parasite)', 'Protists'),
('SS202_0.6', 'Plasmodium_yoelii', 5, 0, 5, 96, 5.2, 'Protist (animal parasite)', 'Protists'),
('SS203_0.6', 'Pleurotus_ostreatus', 3, 0, 3, 140, 2.1, 'Oyster mushroom', 'Fungi'),
('SS204_0.6', 'Pneumocystis_carinii', 3, 0, 3, 205, 1.5, 'Form of pneumonia', 'Fungi'),
('SS205_0.6', 'Podospora_anserina', 5, 0, 5, 108, 4.6, 'Filamentous fungus', 'Fungi'),
('SS206_0.6', 'Polysphondylium_pallidum', 3, 0, 3, 151, 2, 'Cellular slime mold', 'Protists'),
('SS207_0.6', 'Pongo_pygmaeus', 140, 0, 140, 348, 40.2, 'Bornean orangutan', 'Metazoa'),
('SS208_0.6', 'Populus_trichocarpa', 27, 0, 27, 651, 4.1, 'Black cottonwood/california poplar', 'Plants'),
('SS209_0.6', 'Postia_placenta', 3, 0, 3, 261, 1.1, 'Brown rot fungus', 'Fungi'),
('SS210_0.6', 'Pristionchus_pacificus', 8, 0, 8, 245, 3.3, 'P. pacificus (nematode)', 'Metazoa'),
('SS211_0.6', 'Procavia_capensis', 81, 0, 81, 277, 29.2, 'Cape hyrax', 'Metazoa'),
('SS212_0.6', 'Prunus_persica', 20, 0, 20, 479, 4.2, 'Peach tree', 'Plants'),
('SS213_0.6', 'Pteropus_vampyrus', 117, 0, 117, 308, 38, 'Large flying fox', 'Metazoa'),
('SS214_0.6', 'Puccinia_graminis', 0, 0, 0, 262, 0, 'Stem rust', 'Fungi'),
('SS215_0.6', 'Puccinia_triticina', 0, 0, 0, 303, 0, 'Wheat leaf rust', 'Fungi'),
('SS216_0.6', 'Pyrenophora_tritici_repentis', 4, 0, 4, 132, 3, 'Cause of tan spot', 'Fungi'),
('SS217_0.6', 'Rattus_norvegicus', 206, 0, 206, 443, 46.5, 'Rat', 'Metazoa'),
('SS218_0.6', 'Rhizopus_oryzae', 6, 1, 5, 275, 2.2, 'Rhizopus oryzae', 'Fungi'),
('SS219_0.6', 'Ricinus_communis', 17, 0, 17, 353, 4.8, 'Castor oil plant', 'Plants'),
('SS220_0.6', 'RNAcompete_CONSTRUCTS', 13, 13, 0, 13, 100, '_ERR_', ''),
('SS221_0.6', 'Saccharomyces_bayanus', 7, 0, 7, 91, 7.7, 'S. bayanus (yeast)', 'Fungi'),
('SS222_0.6', 'Saccharomyces_castellii', 8, 0, 8, 75, 10.7, 'S. castellii', 'Fungi'),
('SS223_0.6', 'Saccharomyces_cerevisiae', 9, 8, 1, 95, 9.5, 'Bakers yeast', 'Fungi'),
('SS224_0.6', 'Saccharomyces_kudriavzevii', 2, 0, 2, 58, 3.4, 'S. kudriavzevii', 'Fungi'),
('SS225_0.6', 'Saccharomyces_mikatae', 7, 0, 7, 92, 7.6, 'S. mikatae (yeast)', 'Fungi'),
('SS226_0.6', 'Saccharomyces_paradoxus', 7, 0, 7, 89, 7.9, 'S. paradoxus (yeast)', 'Fungi'),
('SS227_0.6', 'Salpingoeca_rosetta', 3, 0, 3, 143, 2.1, 'Choanoflagellate', 'Protists'),
('SS228_0.6', 'Saprolegnia_parasitica', 1, 0, 1, 174, 0.6, 'Water mold', 'Protists'),
('SS229_0.6', 'Schistosoma_japonicum', 7, 0, 7, 211, 3.3, 'Blood fluke', 'Metazoa'),
('SS230_0.6', 'Schistosoma_mansoni', 13, 1, 12, 210, 6.2, 'Blood fluke', 'Metazoa'),
('SS231_0.6', 'Schizophyllum_commune', 4, 0, 4, 144, 2.8, 'Split Gill ', 'Fungi'),
('SS232_0.6', 'Schizosaccharomyces_cryophilus', 1, 0, 1, 112, 0.9, 'Fission yeast', 'Fungi'),
('SS233_0.6', 'Schizosaccharomyces_japonicus', 1, 0, 1, 116, 0.9, 'Fission yeast', 'Fungi'),
('SS234_0.6', 'Schizosaccharomyces_octosporus', 2, 0, 2, 110, 1.8, 'Fission yeast', 'Fungi'),
('SS235_0.6', 'Schizosaccharomyces_pombe', 1, 0, 1, 113, 0.9, 'Fission yeast', 'Fungi'),
('SS236_0.6', 'Sclerotinia_sclerotiorum', 3, 0, 3, 152, 2, 'Pathogenic fungus, causes fuzzy growths on plants', 'Fungi'),
('SS237_0.6', 'Selaginella_moellendorfii', 9, 0, 9, 284, 3.2, 'Spikemoss', 'Plants'),
('SS238_0.6', 'Serpula_lacrymans', 3, 0, 3, 266, 1.1, 'Fungus (cause of dry rot)', 'Fungi'),
('SS239_0.6', 'Sorex_araneus', 69, 0, 69, 239, 28.9, 'Eurasian common shrew', 'Metazoa'),
('SS240_0.6', 'Sorghum_bicolor', 12, 0, 12, 538, 2.2, 'Sorghum (drought-tolerant African grass)', 'Plants'),
('SS241_0.6', 'Spermophilus_tridecemlineatus', 64, 0, 64, 245, 26.1, 'Thirteen-lined ground squirrel', 'Metazoa'),
('SS242_0.6', 'Spizellomyces_punctatus', 4, 0, 4, 164, 2.4, 'Fungus with weird mitochondrial genome', 'Fungi'),
('SS243_0.6', 'Sporobolomyces_roseus', 1, 0, 1, 90, 1.1, 'Red yeast, related to rusts and smuts', 'Fungi'),
('SS244_0.6', 'Stagonospora_nodorum', 4, 0, 4, 115, 3.5, 'Septoria nodorum, pathogen of wheat and related cereals, cause of glum', 'Fungi'),
('SS245_0.6', 'Strongylocentrotus_purpuratus', 50, 0, 50, 553, 9, 'Sea urchin', 'Metazoa'),
('SS246_0.6', 'Sus_scrofa', 108, 0, 108, 289, 37.4, 'Pig', 'Metazoa'),
('SS247_0.6', 'Taeniopygia_guttata', 96, 0, 96, 294, 32.7, 'Zebra finch', 'Metazoa'),
('SS248_0.6', 'Takifugu_rubripes', 137, 0, 137, 368, 37.2, 'Pufferfish', 'Metazoa'),
('SS249_0.6', 'Tarsius_syrichta', 73, 0, 73, 243, 30, 'Philippine tarsier', 'Metazoa'),
('SS250_0.6', 'Tetrahymena_thermophila', 0, 0, 0, 213, 0, 'Ciliate', 'Protists'),
('SS251_0.6', 'Tetraodon_nigroviridis', 125, 2, 123, 362, 34.5, 'Green puffer', 'Metazoa'),
('SS252_0.6', 'Thalassiosira_pseudonana', 2, 1, 1, 142, 1.4, 'Marine diatom', 'Alga'),
('SS253_0.6', 'Thecamonas_trahens', 1, 0, 1, 129, 0.8, 'Gliding zooflagellate', 'Protists'),
('SS254_0.6', 'Theileria_annulata', 0, 0, 0, 86, 0, 'Cattle Parasite', 'Protists'),
('SS255_0.6', 'Theileria_parva', 0, 0, 0, 82, 0, 'Cattle Parasite', 'Protists'),
('SS256_0.6', 'Thielavia_terrestris', 5, 0, 5, 110, 4.5, 'Thermophilic fungus related to Nerospora', 'Fungi'),
('SS257_0.6', 'Toxoplasma_gondii', 3, 0, 3, 393, 0.8, 'Toxoplasma gondii', 'Protists'),
('SS258_0.6', 'Tremella_mesenterica', 2, 0, 2, 232, 0.9, 'Golden jelly fungus', 'Fungi'),
('SS259_0.6', 'Tribolium_castaneum', 3, 0, 3, 26, 11.5, 'Beetle', 'Metazoa'),
('SS260_0.6', 'Trichoderma_atroviride', 4, 0, 4, 101, 4, 'Cold tollerant, hyperparasite', 'Fungi'),
('SS261_0.6', 'Trichoderma_reesei', 5, 0, 5, 98, 5.1, 'Hypocrea jecorina', 'Fungi'),
('SS262_0.6', 'Trichoderma_virens', 5, 0, 5, 101, 5, 'Plant beneficial fungus', 'Fungi'),
('SS263_0.6', 'Trichomonas_vaginalis', 5, 5, 0, 208, 2.4, 'Trichomonas vaginalis', 'Protists'),
('SS264_0.6', 'Trichophyton_equinum', 3, 0, 3, 100, 3, 'Horse ringworm', 'Fungi'),
('SS265_0.6', 'Trichophyton_rubrum', 3, 0, 3, 106, 2.8, 'Athletes foot, jock itch, ringworm', 'Fungi'),
('SS266_0.6', 'Trichophyton_tonsurans', 4, 0, 4, 98, 4.1, 'Cause of Tinea capitis (scalp ringworm)', 'Fungi'),
('SS267_0.6', 'Trichophyton_verrucosum', 3, 0, 3, 90, 3.3, 'Cow ringworm', 'Fungi'),
('SS268_0.6', 'Trichoplax_adhaerens', 14, 0, 14, 162, 8.6, 'Placozoan (simple animal)', 'Metazoa'),
('SS269_0.6', 'Trypanosoma_brucei', 13, 6, 7, 138, 9.4, 'Trypanosoma brucei', 'Protists'),
('SS270_0.6', 'Trypanosoma_congolense', 8, 0, 8, 147, 5.4, 'Protist (animal parasite)', 'Protists'),
('SS271_0.6', 'Trypanosoma_cruzi', 5, 0, 5, 133, 3.8, 'Trypanosoma cruzi', 'Protists'),
('SS272_0.6', 'Trypanosoma_vivax', 5, 0, 5, 133, 3.8, 'Protist (animal parasite)', 'Protists'),
('SS273_0.6', 'Tuber_melanosporum', 3, 0, 3, 125, 2.4, 'Black truffle', 'Fungi'),
('SS274_0.6', 'Tupaia_belangeri', 71, 0, 71, 260, 27.3, 'Northern treeshrew', 'Metazoa'),
('SS275_0.6', 'Tursiops_truncatus', 117, 0, 117, 309, 37.9, 'Atlantic bottle-nosed dolphin', 'Metazoa'),
('SS276_0.6', 'Uncinocarpus_reesii', 4, 0, 4, 97, 4.1, 'Related to Coccidioides, the cause of Coccidiomycosis', 'Fungi'),
('SS277_0.6', 'Ustilago_maydis', 2, 0, 2, 107, 1.9, 'Corn smut', 'Fungi'),
('SS278_0.6', 'Vanderwaltozyma_polyspora', 8, 0, 8, 95, 8.4, 'Yeast: post-WGD lineage most divergent from cerevisiae', 'Fungi'),
('SS279_0.6', 'Verticillium_albo_atrum', 2, 0, 2, 87, 2.3, 'Plant pathogen targeting: hops, alfalfa, cotton', 'Fungi'),
('SS280_0.6', 'Verticillium_dahliae', 4, 0, 4, 95, 4.2, 'Causes verticillium wilt', 'Fungi'),
('SS281_0.6', 'Vicugna_pacos', 75, 0, 75, 228, 32.9, 'Alpaca', 'Metazoa'),
('SS282_0.6', 'Vitis_vinifera', 16, 0, 16, 386, 4.1, 'Common Grape Vine', 'Plants'),
('SS283_0.6', 'Volvox_carteri', 1, 0, 1, 178, 0.6, 'Volvox', 'Alga'),
('SS284_0.6', 'Wuchereria_bancrofti', 11, 0, 11, 225, 4.9, 'W. bancrofti (nematode)', 'Metazoa'),
('SS285_0.6', 'Xenopus_laevis', 300, 2, 298, 622, 48.2, 'African clawed frog', 'Metazoa'),
('SS286_0.6', 'Xenopus_tropicalis', 103, 4, 99, 317, 32.5, 'Western clawed frog', 'Metazoa'),
('SS287_0.6', 'Yarrowia_lipolytica', 1, 0, 1, 102, 1, 'Yeast', 'Fungi'),
('SS288_0.6', 'Zea_mays', 19, 0, 19, 553, 3.4, 'Maize', 'Plants'),
('SS289_0.6', 'Zygosaccharomyces_rouxii', 8, 0, 8, 83, 9.6, 'Z. rouxii', 'Fungi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
