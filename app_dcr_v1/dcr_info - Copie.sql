-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 29 août 2018 à 11:25
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dcr_info`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES
(1, 'test', '$1$zlnYwMy4$XJXe7it14YoWwr0lrK3M4.', 'test@test.com'),
(2, 'dado', '$2y$10$bdF455i7iOBF4O9PIYp4OuDpr3Z7G.VbPUKlVAg6TUsXWgX2Feuz2', 'dadoprso76@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `bom`
--

CREATE TABLE `bom` (
  `Codification` text COLLATE utf8_bin NOT NULL,
  `Immatriculation` text COLLATE utf8_bin NOT NULL,
  `Chassis_equip` text COLLATE utf8_bin NOT NULL,
  `Secteur` text COLLATE utf8_bin NOT NULL,
  `Cubage` text COLLATE utf8_bin NOT NULL,
  `Type_benne` text COLLATE utf8_bin NOT NULL,
  `Num_benne` text COLLATE utf8_bin NOT NULL,
  `Chassis` text COLLATE utf8_bin NOT NULL,
  `PF` text COLLATE utf8_bin NOT NULL,
  `MEC` text COLLATE utf8_bin NOT NULL,
  `BOM_remplacer` text COLLATE utf8_bin NOT NULL,
  `PTAC` text COLLATE utf8_bin NOT NULL,
  `PV` text COLLATE utf8_bin NOT NULL,
  `CU` text COLLATE utf8_bin NOT NULL,
  `CU_reel` text COLLATE utf8_bin NOT NULL,
  `Empattement` text COLLATE utf8_bin NOT NULL,
  `LONGEUR` text COLLATE utf8_bin NOT NULL,
  `longu` text COLLATE utf8_bin NOT NULL,
  `larg_retro` text COLLATE utf8_bin NOT NULL,
  `haut_ech` text COLLATE utf8_bin NOT NULL,
  `Type` text COLLATE utf8_bin NOT NULL,
  `N_BASC` text COLLATE utf8_bin NOT NULL,
  `marque_LC` text COLLATE utf8_bin NOT NULL,
  `Pesee` text COLLATE utf8_bin NOT NULL,
  `RFID` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `bom`
--

INSERT INTO `bom` (`Codification`, `Immatriculation`, `Chassis_equip`, `Secteur`, `Cubage`, `Type_benne`, `Num_benne`, `Chassis`, `PF`, `MEC`, `BOM_remplacer`, `PTAC`, `PV`, `CU`, `CU_reel`, `Empattement`, `LONGEUR`, `longu`, `larg_retro`, `haut_ech`, `Type`, `N_BASC`, `marque_LC`, `Pesee`, `RFID`) VALUES
('N212', '9494YB', 'MULTICAR-PB', 'ROT', '4M3', '?', '', '26231AHK26', '9CV', '14/12/05', '', '3500', '2700', '800', '', '2100', '4950', '1590', '2830', 'MP', '', 'LABOR HAKO', '9361', 'non', 'non'),
('N221', '7808 ZW', 'RENAULT-PB', 'SAT', '4,5M3', 'M50TB', '38111', 'MAXITY', '8CV', '01/02/08', 'N180', '4500', '2880', '1620', '', '2500', '4860', '1850', '2710', 'SAD-MP', '', 'PB', '9484', 'non', 'non'),
('N222', '7793 ZX', 'RENAULT-MANJOT GRUE', 'PAV', '18M3', '', '', 'PR280-26', '19CV', '20/02/08', 'CS82', '26000', '16910', '9090', '', '', '9640', '2520', '3900', '', '', '', '9763', 'oui', 'non'),
('N227', 'BD 835 GY', 'RENAULT-OMB', 'D4', '20M3', 'C337', '14581', 'PR280-26', '19CV', '06/10/08', 'N193', '25500', '14180', '11320', '', '', '9400', '2500', '3750', 'TCH-OEL', '806200645', '\"\"\"semi auto\"\"\"', '9363', 'oui', 'oui'),
('N228', '938 AEX 76', 'RENAULT-OMB', 'ROT', '14M3', 'C333', '', 'PR280-19', '19CV', '21/10/08', 'N192', '19000', '12380', '6620', '', '', '', '2500', '3650', 'TCA-DEL', '', '', '9128', 'oui', 'oui'),
('N229', '947 AEX', 'RENAULT-OMB', 'ROT', '8M3', 'C112', '', 'MIDLUM 240-12', '13CV', '21/10/08', 'N190', '11990', '8320', '3670', '', '3070', '7050', '2280', '3650', 'LC maxi', '', 'OMB LC maxi', '9330', 'oui', 'oui'),
('N230', '160 AFD', 'RENAULT-MANJOT GRUE', 'PAV', '18M3', '', '', 'PR280-26', '19CV', '29/10/08', '', '26000', '16910', '9090', '', '', '', '2500', '3890', '', '', '', '8155', 'oui', 'non'),
('N231', 'AW-705-DJ', 'RENAULT PB', 'PAV', '4,5', '?', '', 'MAXITY', '10CV', '02/07/10', 'N198', '3500', '2455', '1045', '', '2450', '4960', '1850', '2400', 'PB', '', '', '9785', 'non', 'non'),
('N232', 'BA-649-XD', 'IVECO-SEMAT', 'D1', '20M3', 'C338.06', '141553', 'STRALIS 310 E5', '16CV', '30/09/10', 'N195', '26000', '14500', '11500', '', 'F=3800 F\'1395', '9330', '2500', '3600', 'TCH-OEL TMID TMDM', '1009100538', '\"TERBERG \"\"RFID\"\"\"', '9264', 'oui', 'oui'),
('N233', 'BB-073-KY', 'IVECO-SEMAT', 'ROT', '14M3', 'C225', '141509', 'EUROCARGO 190-EL-30', '16CV', '12/10/10', 'N199', '18600', '11580', '7020', '', '3690', '8040', '2390', '3540', 'TCH-OEL', '141509', '\"TERBERG \"\"manuel\"\"\"', '4118', 'oui', 'oui'),
('N234', 'BB-487-KY', 'IVECO-SEMAT', 'B3', '14M3', 'C225', '141543', 'EUROCARGO 190-EL-30', '16CV', '12/10/10', '', '18500', '11580', '6920', '', '3690', '8043', '2390', '3380', 'TCA-DEL', '141543', '\"TERBERG \"\"semi auto\"\"\"', '9253', 'oui', 'oui'),
('N235', 'BD-689-BZ', 'IVECO-SEMAT', 'ROT', '20M3', 'C338.06', '', 'STRALIS 310 E5', '21CV', '15/11/10', '', '26000', '14360', '11640', '', 'F=5195 F\' 3800', '9390', '2500', '3720', 'LC maxi 33', '3144', 'SEMAT', '9337', 'oui', 'oui'),
('N236', 'BD-260-LX', 'IVECO-SEMAT', 'SAT', '20M3', 'C338.06', '141582', 'STRALIS 310 E5', '21CV', '22/11/10', '', '26000', '14360', '11640', '', 'F=5195 F\' 3800', '9390', '2500', '3720', 'LC maxi 33', '', 'SEMAT', '9406', 'oui', 'oui'),
('N237', 'BE-554-JP', 'IVECO-SEMAT', 'ROT', '12M3', 'C214.06', '141628', 'EUROCARGO 160E28', '16CV', '08/12/10', 'N200', '16000', '9960', '6040', '', '3690', '7760', '2360', '3350', 'TCH-OEL', '1004280392', '\"TERBERG \"\"manuel\"\"\"', '9370', 'oui', 'oui'),
('N238', 'BE-680-ND', 'IVECO-SEMAT', 'D2', '14M3', 'C225.06', '141620', 'EUROCARGO 190-EL-30', '16CV', '10/12/10', 'N202', '18600', '11580', '7020', '', '3690', '8040', '2390', '3400', 'TCH-OEL I-M', '1009030537', '\"TERBERG \"\"RFID\"\"\"', '9651', 'oui', 'oui'),
('N239', 'BK-807-KG', 'PIAGGIO', 'COUR', '3,5M3', '?', '', 'PORTER TIPPER', '7CV', '16/03/11', '', '2200', '1416', '784', '', '2180', '3700', '1460', '2200', '', '', '', '4212', 'non', 'non'),
('N240', 'BK-795-KG', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER TIPPER', '7CV', '16/03/11', '', '2200', '1416', '784', '', '2180', '4100', '1560', '2200', '', '', '', '9082', 'non', 'non'),
('N241', 'BL-909-MY', 'IVECO-SEMAT', 'C4', '12M3', 'C214.06', '141490', 'EUROCARGO 160E28', '16CV', '05/04/11', 'N196', '16000', '10035', '5965', '', '3690', '8043', '2390', '3350', 'TCH-OEL I-TM', '1005070394', '\"TERBERG \"\"manuel\"\"\"', '3895', 'oui', 'oui'),
('N242', 'CH-437-NX', 'IVECO-SEMAT', 'A1', '20M3', 'C338.06', '142358', 'STRALIS 310 E5', '21CV', '11/07/12', '', '26000', '14920', '11080', '', 'F=3800 F\'1395', '9730', '2500', '3750', '', '1204060365', '\"TERBERG RFID \"\"automatique\"\"\"', '4034', 'oui', 'oui'),
('N243', 'CH-590-MX', 'IVECO-SEMAT', 'A2', '14M3', 'C225.06', '142378', 'EUROCARGO 160E28', '16CV', '10/07/12', '', '18600', '12020', '6580', '', '4180', '8050', '2420', '3650', '', '1204060367', '\"TERBERG RFID \"\" manuel\"\"\"', '4036', 'oui', 'oui'),
('N244', 'CH-729-NX', 'IVECO-SEMAT', 'B1', '14M3', 'C225.06', '142388', 'EUROCARGO 160E28', '16CV', '11/07/12', '', '18500', '12340', '6160', '', '4180', '8410', '2420', '3800', '', '1204060364', '\"TERBERG RFID \"\"automatique\"\"\"', '', 'oui', 'oui'),
('N245', 'CK-733-GE', 'PIAGGIO', 'SAT 1', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', '2200', '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '3207', 'non', 'non'),
('N246', 'CK-749-GE', 'PIAGGIO', 'SAT 2', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', '2200', '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '8185', 'non', 'non'),
('N248', 'CK-713-GE', 'PIAGGIO', 'ROT', '3,5M2', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', '2200', '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '8495', 'non', 'non'),
('N247', 'CK-246-LE', 'PIAGGIO', 'SAT 3', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '06/09/12', '', '2200', '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '8486', 'non', 'non'),
('N249', 'CK-769-GE', 'PIAGGIO', 'CS PAP', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', '2200', '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '9428', 'non', 'non'),
('N250', 'CP-842-KF', 'IVECO-SEMAT', 'A3', '10M3', 'C222.05', '14253', 'EUROCARGO 160E25', '16CV', '31/12/12', 'N220', '15400', '10040', '5360', '', '3105', '7250', '2360', '3400', 'TCH-OEL I- TM', '1207060754', '\"TERBERG RFID \"\"manuel\"\"\"', '4086', 'oui', 'oui'),
('N251', 'CQ-623-LB', 'IVECO-PB', 'C5', '7M3', '?', '1537', 'EUROCARGO 90E22', '16CV', '04/02/13', '', '9000', '5450', '3550', '', '3105', '6170', '2200', '2700', 'PB', '', '', '3767', 'oui', 'oui'),
('N252', 'CT-822-VK', 'IVECO-SEMAT', 'D5', '14M3', 'C225', '142799', 'EUROCARGO ML190', '16CV', '16/05/13', '', '18500', '12280', '6220', '', '3800', '8390', '2420', '', 'TCA-DEL-TDMI-DM', '1211301090', 'TERBERG OMNIDEL', '20121709', 'oui', 'oui'),
('N253', 'CT-034-VL', 'IVECO-SEMAT', 'B2', '14M3', 'C225', '142812', 'EUROCARGO ML190', '16CV', '16/05/13', '', '18500', '12280', '6220', '', '3800', '8390', '2420', '', 'TCA-DEL-TDMI-DM', '1211301091', 'TERBERG OMNIDEL', '20121711', 'oui', 'oui'),
('N254', 'CT-293-VL', 'IVECO-SEMAT', 'ROT', '14M3', 'C225', '', 'EUROCARGO ML190', '16CV', '16/05/13', '', '18500', '12280', '6220', '', '3800', '8390', '2420', '3600', 'THC-OEL I-TM', '', '\"TERBERG \"\"manuel\"\"\"', '4110', 'oui', 'oui'),
('N255', 'CV-259-KT', 'IVECO-SEMAT', 'C1', '20M3', 'C338', '142786', 'STRALIS 310 E5', '21CV', '04/06/13', '', '26000', '14800', '11200', '', 'F=3805 F\' 1395', '9710', '2500', '', 'TCA-DEL-TDMI-DM', '1211231089', 'TERBERG OMNIDEL', '4001', 'oui', 'oui'),
('N256', 'CV-993-KS', 'IVECO-SEMAT', 'B1/C3', '20M3', 'C338', '142756', 'STRALIS 310 E5', '21CV', '04/06/13', '', '26000', '14800', '11200', '', 'F=3805 F\' 1395', '9710', '2500', '', 'TCA-DEL-TDMI-DM', '1211231088', 'TERBERG OMNIDEL', '20121719', 'oui', 'oui'),
('N257', 'DD-819-MA', 'IVECO-SEMAT', 'C2', '20M3', 'C338', '143121', 'STRALIS 310 E6', '21CV', '27/02/14', 'N218', '26000', '15000', '11000', '', 'F=3805 F\' 1395', '9660', '2500', '3600', 'TCA-DEL-TDMI-DM', '1310110993', 'TERBERG OMNIDEL', '9058', 'oui', 'oui'),
('N258', 'DD-780-MA', 'IVECO-SEMAT', 'D3', '14M3', 'C225', '143119', 'EUROCARGO ML190', '16CV', '27/02/14', 'N219', '18500', '12280', '6220', '', '3805', '8400', '2420', '3700', 'TCA-DEL-TDMI-DM', '1310180994', 'TERBERG OMNIDEL', '9241', 'oui', 'oui'),
('N259', 'DD-799-MA', 'IVECO-SEMAT', 'B4', '14M3', 'C225', '143088', 'EUROCARGO ML190', '16CV', '27/02/14', 'N223', '18500', '12280', '6220', '', '3805', '8400', '2420', '3700', 'TCA-DEL-TDMI-DM', '1310110992', 'TERBERG OMNIDEL', '9540', 'oui', 'oui'),
('N260', 'DD-836-MA', 'IVECO-SEMAT', 'A1', '20M3', 'C338', '143028', 'STRALIS 310 E5', '21CV', '27/02/14', 'N224', '26000', '15000', '11000', '', 'F=3805 F\' 1395', '9660', '2500', '3600', 'TCA-DEL-TDMI-DM', '1310180995', 'TERBERG OMNIDEL', '9805', 'oui', 'oui'),
('N261', 'DE-169-AZ', 'IVECO-MANJOT GRUE', '', '18M3', '', '', '', '21CV', '19/03/14', '', '2600', '', '', '', '', '', '', '', '', '', '', '9736', '', ''),
('N262', 'DH-622-PB', 'IVECO-ZOELLER', 'C5', '8M3', '', '', '', '16CV', '11/07/14', 'N220', '11990', '7140', '4850', '4300', '3300', '7100', '2200', '2800', 'ZOELLER', '', 'LIFTER 202', '4149', 'oui', ''),
('N263', 'DN-896-XY', 'PIAGGIO', 'CS06', '3,5M3', '?', '', 'PORTER MAXXI', '7CV', '10/02/15', '', '2200', '1405', '795', '', '2180', '4100', '1500', '', 'CONCEPT COLLECTI', '', '', '4170', 'non', 'non'),
('N264', 'DN-711-XY', 'PIAGGIO', 'S2', '3,5 M3', '?', '', 'PORTER MAXXI', '7CV', '10/02/15', '', '2200', '1405', '795', '', '2180', '4100', '1500', '', 'CONCEPT COLLECTI', '', '', '4171', 'non', 'non'),
('N265', 'DT-706-NW', 'IVECO-SEMAT', 'D4', '20M3', 'C338', '143804', 'STRALIS 310 E6', '23CV', '24/07/15', '', '26000', '15050', '10950', '', '', '9700', '2500', '3600', 'TCA-DEL-TDMI-DM', '1505080347', 'TERBERG OMNIDEL', '4195', 'oui', 'oui'),
('N266', 'DW-906-JF', 'IVECO-SEMAT', 'B3', '14M3', 'C224,06', '143857', 'EUROCARGO 190-EL-30', '18CV', '07/10/15', '', '18700', '12020', '6680', '', '', '8200', '2380', '3600', 'TCA-DEL-TDMI-DM', '', '', '3040', 'oui', 'oui'),
('N267', 'DW-773-MR', 'IVECO-SEMAT', 'D2', '14M3', 'C224,06', '143865', 'EUROCARGO 190-EL-30', '18CV', '13/10/15', '', '18700', '12020', '6680', '', '3690', '8200', '238', '3600', 'TCA-DEL-TDMI-DM', '1506260624', '', '', 'oui', 'oui'),
('N268', 'DW-893-JE', 'IVECO-SEMAT', 'D1', '20M3', ' ', '', 'STRALIS 310 E6', '23CV', '07/10/15', '', '26000', '15050', '10950', '', '', '9700', '2500', '', 'TCA-DEL3-TDMI-DM', '1505080348', '', '3936', 'oui', 'oui'),
('N269', 'DW-178-JG', 'IVECO-SEMAT', 'ROT', '14M3', '', '', 'EUROCARGO 190-EL-30', '18CV', '07/10/15', '', '19000', '11785', '7215', '', '', '', '', '', 'THC-OEL I-TM', '', '\"TERBERG \"\"manuel\"\"\"', '3795', 'oui', 'oui'),
('N270', 'DW-913-JC', 'IVECO-ZOELLER', 'ROT', '8M3', 'XL8', '35193', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', '11990', '7100', '4890', '', '3330', '7100', '2270', '2800', 'ZOELLER', '', 'LIFTER 202', '8442', 'oui', 'oui'),
('N271', 'DW-162-ZA', 'IVECO-ZOELLER', 'CSPAP', '8M3', 'XL8', '35200', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', '11990', '7100', '4890', '', '3330', '7100', '2270', '2800', 'ZOELLER', '', 'LIFTER 202', '4214', 'oui', 'oui'),
('N272', 'DW-911-YZ', 'IVECO-ZOELLER', 'A3', '8M3', 'XL8', '35199', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', '11990', '7100', '4890', '', '3330', '7100', '2270', '2800', 'ZOELLER', '', 'LIFTER 202', '4215', 'oui', 'oui'),
('N273', 'EE-940-QG', 'IVECO-ZOELLER', 'A2', '14M3', 'C224,06', '144276', 'EUROCARGO 190-EL-30', '18CV', '17/08/16', '', '18700', '11860', '6840', '', '', '8290', '2430', '3650', 'TCA-DEL-TDMI-DM', '1603180295', 'TERBERG OMNIDEL', '8607', 'oui', 'oui'),
('N274', 'EF-879-WW', 'IRIDE', 'D6OM', '5M3', 'VRR', '', 'RENAULT MAXITY', '7CV', '07/10/16', 'N221', '4500', '3140', '1360', '', '2500', '5140', '1930', '2500', '', '', '', '18758', 'non', 'non'),
('N275', 'EJ-003-WY', 'IVECO-ZOELLER', 'B1/C3', '14M3', 'C224,06', '144453', 'EUROCARGO 190-EL-28P', '18CV', '07/02/17', 'N244', '18550', '12080', '6470', '', '3700', '8270', '2400', '', 'TCA-DEL3-TDMI-DM', '160905000873', 'TERBERG OMNIDEL', '41590', 'oui', 'oui'),
('N276', 'EQ-667-CV', 'IVECO-ZOELLER', 'C4', '8M3', 'MICROPAC8', '35272', 'EUROCARGO 120-EL-10', '12CV', '30/08/17', 'N237', '11990', '7140', '4850', '', '', '7280', '2300', '2995', 'ZOELLER', '', 'LIFTER 202', '', 'oui', 'oui'),
('N277', 'ES-056-GY', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER MULTITECH E6', '7CV', '28/11/17', 'N239', '2200', '1448', '752', '', '2180', '4300', '1560', '', 'CONCEPT COLLECTI', '', '', '8080', 'non', 'non,'),
('N278', 'ET-851-HX', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER  MUL TITECHE6', '7CV', '12/01/18', 'N240', '2200', '1448', '752', '', '2180', '4300', '1560', '', 'CONCEPT COLLECTI', '', '', '4233', 'non', 'non'),
('N283', 'EV-898-BM', 'IVECO-SEMAT', 'A1', '20M3', '?', '?', '?', '?', '?', 'N242', '14980', '26000', '11020', '', '', '', '', '', 'TCA-DEL3-TDMI-DM', '', 'TERBERG OMNIDEL', '9621', 'oui', 'non'),
('N284', 'EV-001-BY', 'IVECO-SEMAT', 'D5', '14M3', 'C224', '144958', 'EUROCARGO 190-280L', '18CV', '16/02/18', 'N252', '18550', '11900', '6650', '', '3800', '', '', '3600', 'TCA-DEL3-TDMI-DM', '', 'TERBERG OMNIDEL', '8420', 'oui', 'non'),
('N285', 'EV-092-LZ', 'IVECO-ZOELLER', '?', '8M3', 'C224', '35291', 'EUROCARGO 120-EL-10', '12CV', '05/03/18', '', '11990', '7045', '4945', '', '', '7280', '2250', '2800', 'ZOELLER', '', 'LIFTER 202', '8430', 'oui', 'non');

-- --------------------------------------------------------

--
-- Structure de la table `carte_sims`
--

CREATE TABLE `carte_sims` (
  `ID` int(11) NOT NULL,
  `Codification` text COLLATE utf8_bin NOT NULL,
  `sim` text COLLATE utf8_bin NOT NULL,
  `balise` text COLLATE utf8_bin NOT NULL,
  `telephone` text COLLATE utf8_bin NOT NULL,
  `IDPORT` text COLLATE utf8_bin NOT NULL,
  `immatriculation` text COLLATE utf8_bin NOT NULL,
  `statut` text COLLATE utf8_bin NOT NULL,
  `probleme` text COLLATE utf8_bin NOT NULL,
  `navigation` text COLLATE utf8_bin NOT NULL,
  `LC` text COLLATE utf8_bin NOT NULL,
  `pesee` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `carte_sims`
--

INSERT INTO `carte_sims` (`ID`, `Codification`, `sim`, `balise`, `telephone`, `IDPORT`, `immatriculation`, `statut`, `probleme`, `navigation`, `LC`, `pesee`) VALUES
(1, 'N227', '89331013070784713167', 'A05TN62', '06 17 92 22 12', 'ID : 895380 Port : 2516', '303-AEQ-76', 'REFORME', 'CARTE SIMS DISPO', 'REFORME', 'X', 'PME Flux continu'),
(2, 'N241', '89331013070784720162', 'A05M0W1', '06 17 92 21 49', 'ID : 71 Port : 2825', 'BL-909-MY', 'REFORME', 'CARTE SIMS DISPO', 'REFORME', 'X', 'PME Flux continu'),
(5, 'CS118', '89331013070784699168', 'H4207239', '06 18 54 37 27', 'ID : 118 Port : 2522', 'AM-974-HF', 'EN SERVICE', '0', 'NON', 'X', 'PME Flux continu'),
(6, 'CS125', '89331042120317979507', 'H4207241', '06 18 54 37 89', 'ID : 125 Port : 2534', 'CJ-182-KE', 'EN SERVICE', 'NA', 'NON', 'X', 'PME Flux continu'),
(7, 'CS133', '89331042120317958501', 'AO5PWV1(2)', '06 18 54 38 72', 'ID : 68 Port : XXXX', 'AE-775-XD', 'EN SERVICE', '', 'NON', 'X', 'PME Flux continu'),
(8, 'N222', '89331013070784713167', 'H4207277', '06 18 54 37 49', 'ID : 222 Port : 2529', '7793-ZK-76', 'EN SERVICE', '', 'NON', 'X', 'PME Flux continu'),
(9, 'N228', '89331042120317952504', 'A05PHZ1', '06 18 54 38 94', 'ID : 73 Port : 2555', '938-AEX-76', 'EN SERVICE', '', '1', 'TERBERG', 'PME Flux continu'),
(10, 'N230', '89331042120317982501', 'H4207243', '06 18 54 37 77', 'ID : 230 Port : 2500', '160-AFD-76', 'EN SERVICE', '', '2', 'TERBERG', 'PME Flux continu'),
(11, 'N232', '89331042120317968500', 'A05TMU1', '06 18 54 38 28', 'ID : 102 Port : 2572', 'BA-649-XD', 'EN SERVICE', '', '3', 'TERBERG', 'PME Flux continu'),
(12, 'N233', '89331042120317964509', 'A05LVJ1', '06 18 54 38 34', 'ID : 233 Port : 2527', 'BB-073-KY', 'EN SERVICE', '', '4', 'TERBERG', 'PME Flux continu'),
(13, 'N234', '89331013070784660160', 'A05PGV1', '06 18 54 36 98', 'ID : 69 Port : 2509', 'BB-787-KY', 'EN SERVICE', 'CARTE SIMS DISPO', 'REFORME', 'X', 'PME Flux continu'),
(14, 'N235', '89331013070784696164', 'A05TMQ1', '06 18 54 37 16', 'ID : 103 Port : 2524', 'BD-689-BZ', 'EN SERVICE', '', '6', 'TERBERG', 'PME Flux continu'),
(15, 'N236', '89331042120317954500', 'A05PGY1', '06 18 54 38 86', 'ID : 243987 Port : 2569', 'BD-260-LX', 'EN SERVICE', '', '7', 'TERBERG', 'PME Flux continu'),
(16, 'N242', '89331042120317953502', 'AO4ZTH1', '06 18 54 38 93', 'ID : 1 Port : 2501', 'CH-437-NX', 'EN SERVICE', '', '8', 'TERBERG', 'PME Flux continu'),
(17, 'N243', '89331042120317961505', 'AO51SL1', '06 18 54 38 37', 'ID : 2 Port : 2510', 'CH-590-NX', 'EN SERVICE', '', '9', 'TERBERG', 'PME Flux continu'),
(18, 'N244', '89331042120317960507', 'AO51631', '06 18 54 38 54', 'ID : 3 Port : 2512', 'CH-729-NX', 'EN SERVICE', '', '10', 'TERBERG', 'PME Flux continu'),
(19, 'N245', '89331013070784704166', 'A04ZTG1', '06 18 54 37 45', 'ID : 63 Port : 2543', 'CK-733-GE', 'EN SERVICE', '', '11', 'TERBERG', 'PME Flux continu'),
(20, 'N246', '89331042120317976503', 'AO51TO', '06 18 54 37 96', 'ID : 5 Port : 2544', 'CK-749-GR', 'REFORME', 'CARTE SIMS DISPO', 'REFORME', 'X', 'PME Flux continu'),
(21, 'N247', '89331042120317955507', 'A04ZT81', '06 18 54 38 82', 'ID : 8 Port : 2547', 'CK-769-GE', 'EN SERVICE', '', '12', 'TERBERG', 'PME Flux continu'),
(22, 'N248', '89331042120317975505', 'A051661', '06 18 54 38 04', 'ID : 7 Port : 2546', 'CK-713-GE', 'EN SERVICE', 'EX', '13', 'TERBERG', 'PME Flux continu'),
(23, 'N249', '89331042120317962503', 'A042TE1', '06 18 54 38 36', 'ID : 6 Port : 2545', 'CK-769-GE', 'EN SERVICE', '', '14', 'TERBERG', 'PME Flux continu'),
(24, 'N250', '89331042120317970506', 'AO51SI1', '06 18 54 38 22', 'ID : 9 Port : 2518', 'CP-842-KF', 'EN SERVICE', 'COMPTAGE OK', '15', 'TERBERG', 'PME Flux continu'),
(25, 'N251', '89331042120317957503', 'A055MN2', '06 18 54 38 73', 'ID : 11 Port : 2572', 'CQ-623-BD', 'EN SERVICE', '', '16', 'TERBERG', 'PME Flux continu'),
(26, 'N252', '89331013070784723166', 'A051SM1', '06 18 54 37 05', 'ID : 10 Port : 2523', 'CT-822-VK', 'EN SERVICE', '', '17', 'TERBERG', 'PME Flux continu'),
(27, 'N253', '89331042120317959509', 'QO55N2', '06 18 54 38 67', 'ID : 13 Port : 2513', 'CT-034-VL', 'EN SERVICE', '', '18', 'TERBERG', 'PME Flux continu'),
(28, 'N254', '89331013070784715162', 'A05PH41(2)', '06 18 54 36 99', 'ID : 19 Port : 2505', 'CT-293-VL', 'EN SERVICE', '', '19', 'TERBERG', 'PME Flux continu'),
(29, 'N255', '89331042120317951506', 'A053PI1', '06 18 54 36 79', 'ID : 15 Port : 2538', 'CV-259-KT', 'EN SERVICE', '', '20', 'TERBERG', 'PME Flux continu'),
(30, 'N256', '89331042120317965506', 'A055KW1(2)', '06 18 54 38 33', 'ID : 12 Port : 2542', 'CV-993-KS', 'EN SERVICE', '', '21', 'TERBERG', 'PME Flux continu'),
(31, 'N257', '89331013070784698160', 'A056ZU2', '06 18 54 37 31', 'ID : 16 Port : 2502', 'DD-819-MA', 'EN SERVICE', '', '22', 'TERBERG', 'PME Flux continu'),
(32, 'N258', '89331013070784717168', 'A053SI2', '06 18 54 37 13', 'ID : 17 Port : 2503', 'AG-751-GE', 'EN SERVICE', '', '23', 'TERBERG', 'PME Flux continu'),
(33, 'N259', '89331042120317973500', 'AO56ZK2', '06 18 54 38 12', 'ID : 21 Port : 2519', 'DD-799-MA', 'EN SERVICE', '', '24', 'TERBERG', 'PME Flux continu'),
(34, 'N260', '89331042120317956505', 'A055LO2', '06 18 54 38 76', 'ID : 18 Port : 2505', 'DD-836-MA', 'EN SERVICE', '', '25', 'TERBERG', 'PME Flux continu'),
(35, 'N261', '89331042120317980505', 'A05TNC1(2)', '06 18 54 37 81', 'ID : 105 Port : 2520', 'DE-169-AZ', 'EN SERVICE', '', '26', 'X', 'PME Flux continu'),
(36, 'N262', '89331042120317974508', 'AO55K32', '06 18 54 38 06', 'ID : 20 Port : 2508', 'DH-622-PB', 'EN SERVICE', '', '27', 'TERBERG', 'PME Flux continu'),
(37, 'N263', '89331013070784722168', 'A05GXC1', '06 18 54 37 07', 'ID : 23 Port : 2532', 'DN-896-XY', 'EN SERVICE', '', '28', 'TERBERG', 'PME Flux continu'),
(38, 'N264', '89331013070784716160', 'A05GVW1', '06 18 54 37 06', 'ID : 24 Port : 2553', 'DN-911-YY', 'EN SERVICE', '', '29', 'TERBERG', 'PME Flux continu'),
(39, 'N265', '89331042120317966504', 'AO5KDR1', '06 18 54 38 32', 'ID : 67 Port : 2517', 'DT-706-NW', 'EN SERVICE', '', '30', 'TERBERG', 'PME Flux continu'),
(40, 'N266', '89331042120317983509', 'AO5MOS2', '06 18 54 37 72', 'ID : 996591 Port : 2526', 'DW-906-JF', 'EN SERVICE', '', '31', 'TERBERG', 'PME Flux continu'),
(41, 'N267', '89331013070784695166', 'A05PH82', '06 18 54 37 22', 'ID : 70 Port : 2506', 'DW-773-MR', 'EN SERVICE', '', '32', 'TERBERG', 'PME Flux continu'),
(42, 'N268', '89331013070784702160', 'A05PH02', '06 18 54 36 93', 'ID : 74 Port : 2535', 'DW-893-JE', 'EN SERVICE', '', '33', 'TERBERG', 'PME Flux continu'),
(43, 'N269', '89331042120317967502', 'AO5LUP2', '06 18 54 38 30', 'ID : 62 Port : 2536', 'DW-178-JG', 'EN SERVICE', '', '34', 'TERBERG', 'PME Flux continu'),
(44, 'N270', '89331042120317984507', 'AO5LWC2', '06 18 54 37 69', 'ID : 64 Port : 2540', 'DW-913-JC', 'EN SERVICE', 'PB RFID PAS D INFO', '35', 'TERBERG', 'PME Flux continu'),
(45, 'N271', '89331042120317972502', 'AO5MOT1', '06 18 54 38 17', 'ID : 65 Port : 2505', 'DW-162-ZA', 'EN SERVICE', '', '36', 'TERBERG', 'PME Flux continu'),
(46, 'N272', '89331042120317985504', 'AO5LV52', '06 18 54 37 67', 'ID : 65 Port : 2560', 'DW-911-YZ', 'EN SERVICE', 'PB RFID PAS D INFO', '37', 'TERBERG', 'PME Flux continu'),
(47, 'N273', '89331042120317981503', 'A05XD51', '06 18 54 37 51', 'ID : XX Port : 2520', 'EE-940-QG', 'EN SERVICE', '', '38', 'TERBERG', 'PME Flux continu'),
(48, 'N274', '89331042150318313505', 'A05TN91', '06 18 54 38 35', 'ID : XX Port : 2520', 'EF-879-WN', 'EN SERVICE', 'Pas de systéme RFID', '39', 'IRIDE', 'PME Flux continu'),
(49, 'N275', '89331042120311051501', 'A05XV42', '06 27 40 15 56', 'ID : XX Port : 2520', 'EJ-003-WY', 'EN SERVICE', '', '40', 'TERBERG', 'PME Flux continu'),
(50, 'N276', '89331042120317978509', 'A05XT11', '06 18 54 37 92', 'ID : XX Port : 2520', 'EQ-667-CV', 'EN SERVICE', '', '41', 'TERBERG', 'PME Flux continu'),
(51, 'N277', '89331042120317971504', 'A05XT51', '06 18 54 38 18', 'ID : XX Port : 2520', 'ES-056-GY', 'EN SERVICE', '', '42', 'TERBERG', 'PME Flux continu'),
(52, 'N278', '89331042307078472116', 'A060251', '06 17 92 21 91', 'ID : XX Port : 2520', 'ET-851-HX', 'EN SERVICE', '', '43', 'TERBERG', 'PME Flux continu'),
(53, 'N283', '89333101307078413167', 'A05TN62', '06 17 92 22 12', 'ID : 895380 Port : 2516', 'N227 EV-098-BM', 'EN SERVICE', 'PB RFID DEPUIS RECEP', '44', 'TERBERG', 'PME Flux continu'),
(54, 'N285', '89331042120317977501', 'A067Q02', '06 18 54 37 95', 'ID : 154 Port : 2520', 'N281 EV-092-LZ', 'EN SERVICE', 'PB RFID DEPUIS RECEP', '45', 'TERBERG', 'PME Flux continu'),
(55, 'N284', '89333101307078400164', 'A067PS2', '06 18 54 37 26', 'ID : 155 Port : 2520', 'N282 EV-011-BY', 'EN SERVICE', 'PB RFID DEPUIS RECEP', '46', 'TERBERG', 'PME Flux continu'),
(56, 'N286', '89331042120317979507', 'En attente reception', '06 18 54 37 89', 'ID : 152 Port : 2520', 'N279', 'EN SERVICE', '', '47', 'TERBERG', 'PME Flux continu'),
(57, 'N287', '89331042120317962501', 'En attente reception', '06 18 54 37 77', 'ID : 153 Port : 2520', 'N280', 'EN SERVICE', '', '48', 'TERBERG', 'PME Flux continu');

-- --------------------------------------------------------

--
-- Structure de la table `depart`
--

CREATE TABLE `depart` (
  `ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Codification` text COLLATE utf8_bin NOT NULL,
  `Gabarit` text COLLATE utf8_bin NOT NULL,
  `Heure_D` time NOT NULL,
  `Heure_A` time NOT NULL,
  `Km_D` text COLLATE utf8_bin NOT NULL,
  `Km_A` text COLLATE utf8_bin NOT NULL,
  `Conducteur` text COLLATE utf8_bin NOT NULL,
  `Secteur` text COLLATE utf8_bin NOT NULL,
  `Code2` text COLLATE utf8_bin NOT NULL,
  `Vol2` text COLLATE utf8_bin NOT NULL,
  `Obsevation` text COLLATE utf8_bin NOT NULL,
  `Anomalies` text COLLATE utf8_bin NOT NULL,
  `Par` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `depart`
--

INSERT INTO `depart` (`ID`, `Date`, `Codification`, `Gabarit`, `Heure_D`, `Heure_A`, `Km_D`, `Km_A`, `Conducteur`, `Secteur`, `Code2`, `Vol2`, `Obsevation`, `Anomalies`, `Par`) VALUES
(1, '2018-08-07', 'N255', '', '00:00:00', '00:00:00', '1000', '2500', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `ID` int(11) NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `pass` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_enregistrement` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `radio`
--

CREATE TABLE `radio` (
  `Num` text COLLATE utf8_bin NOT NULL,
  `Codification` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `radio`
--

INSERT INTO `radio` (`Num`, `Codification`) VALUES
('5428', 'N228'),
('5736', 'N231'),
('5418', 'N232'),
('5649', 'N233'),
('5674', 'N234'),
('5669', 'N235'),
('5650', 'N236'),
('5416', 'N242'),
('5420', 'N243'),
('5893', 'N244'),
('5983', 'N250'),
('5984', 'N251'),
('5422', 'N252'),
('5671', 'N253'),
('5897', 'N254'),
('5663', 'N255'),
('5665', 'N256'),
('5892', 'N257'),
('5658', 'N258'),
('5891', 'N259'),
('5672', 'N260'),
('5982', 'N262'),
('5656', 'N265'),
('5734', 'N266'),
('5896', 'N267'),
('5633', 'N268'),
('5624', 'N269'),
('5419', 'N270'),
('5898', 'N271'),
('5894', 'N272'),
('5668', 'N273'),
('5421', 'N274'),
('5415', 'N275'),
('5664', 'N276'),
('5730', 'N283'),
('5430', 'N284'),
('5625', 'N285'),
('5939', 'N286'),
('5643', 'N287'),
('5629', 'N212'),
('5970', 'N245'),
('5972', 'N247'),
('5847', 'N248'),
('5974', 'N249'),
('5895', 'N263'),
('5889', 'N264'),
('5725', 'N277'),
('5741', 'N278'),
('5625', 'rotation 1'),
('5328', 'rotation 2'),
('5629', 'rotation 3'),
('5670', 'N222'),
('5417', 'N230'),
('5980', 'N261'),
('5641', 'CS112'),
('5639', 'CS110'),
('5643', 'CS114'),
('5631', 'CS116'),
('5642', 'CS117'),
('5726', 'CS118'),
('5979', 'CS133'),
('5431', 'CS138'),
('5414', 'CS143'),
('5971', 'CS144'),
('5899', 'BAUDY C'),
('5626', 'HORENT V'),
('5737', 'DUVIEU A'),
('5888', 'BUREL M'),
('5887', 'GOFFART B '),
('5975', 'FOUQUAY V'),
('5652', 'RASSE C '),
('5329', 'LECROQ PH'),
('5846', 'DUMENIL L'),
('5330', 'LOPES/RECHER'),
('5820', 'IVECO'),
('5850', 'EMO G'),
('5738', 'BLANCHARD L'),
('5977', 'PERMANENCE CDR'),
('5632', 'CORAILLER Y'),
('5976', 'MARIETTE PH'),
('5732', 'TOUTAIN F'),
('5803', 'VASSEUR F'),
('5646', 'LERIBLER M'),
('5742', 'DEVARIEUX JL'),
('5733', 'LEROUX D'),
('5731', 'Astreinte S‚curit‚'),
('5978', 'Permanence D‚chŠterie');

-- --------------------------------------------------------

--
-- Structure de la table `table 9`
--

CREATE TABLE `table 9` (
  `COL 1` varchar(4) DEFAULT NULL,
  `COL 2` varchar(10) DEFAULT NULL,
  `COL 3` varchar(19) DEFAULT NULL,
  `COL 4` varchar(6) DEFAULT NULL,
  `COL 5` varchar(6) DEFAULT NULL,
  `COL 6` varchar(9) DEFAULT NULL,
  `COL 7` varchar(6) DEFAULT NULL,
  `COL 8` varchar(20) DEFAULT NULL,
  `COL 9` varchar(4) DEFAULT NULL,
  `COL 10` varchar(8) DEFAULT NULL,
  `COL 11` varchar(4) DEFAULT NULL,
  `COL 12` int(5) DEFAULT NULL,
  `COL 13` varchar(5) DEFAULT NULL,
  `COL 14` varchar(5) DEFAULT NULL,
  `COL 15` varchar(4) DEFAULT NULL,
  `COL 16` varchar(14) DEFAULT NULL,
  `COL 17` varchar(4) DEFAULT NULL,
  `COL 18` varchar(4) DEFAULT NULL,
  `COL 19` varchar(4) DEFAULT NULL,
  `COL 20` varchar(17) DEFAULT NULL,
  `COL 21` varchar(12) DEFAULT NULL,
  `COL 22` varchar(30) DEFAULT NULL,
  `COL 23` varchar(8) DEFAULT NULL,
  `COL 24` varchar(3) DEFAULT NULL,
  `COL 25` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `table 9`
--

INSERT INTO `table 9` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`) VALUES
('N212', '9494YB', 'MULTICAR-PB', 'ROT', '4M3', '?', '', '26231AHK26', '9CV', '14/12/05', '', 3500, '2700', '800', '', '2100', '4950', '1590', '2830', 'MP', '', 'LABOR HAKO', '9361', 'non', 'non'),
('N221', '7808 ZW', 'RENAULT-PB', 'SAT', '4,5M3', 'M50TB', '38111', 'MAXITY', '8CV', '01/02/08', 'N180', 4500, '2880', '1620', '', '2500', '4860', '1850', '2710', 'SAD-MP', '', 'PB', '9484', 'non', 'non'),
('N222', '7793 ZX', 'RENAULT-MANJOT GRUE', 'PAV', '18M3', '', '', 'PR280-26', '19CV', '20/02/08', 'CS82', 26000, '16910', '9090', '', '', '9640', '2520', '3900', '', '', '', '9763', 'oui', 'non'),
('N227', 'BD 835 GY', 'RENAULT-OMB', 'D4', '20M3', 'C337', '14581', 'PR280-26', '19CV', '06/10/08', 'N193', 25500, '14180', '11320', '', '', '9400', '2500', '3750', 'TCH-OEL', '806200645', '\"\"\"semi auto\"\"\"', '9363', 'oui', 'oui'),
('N228', '938 AEX 76', 'RENAULT-OMB', 'ROT', '14M3', 'C333', '', 'PR280-19', '19CV', '21/10/08', 'N192', 19000, '12380', '6620', '', '', '', '2500', '3650', 'TCA-DEL', '', '', '9128', 'oui', 'oui'),
('N229', '947 AEX', 'RENAULT-OMB', 'ROT', '8M3', 'C112', '', 'MIDLUM 240-12', '13CV', '21/10/08', 'N190', 11990, '8320', '3670', '', '3070', '7050', '2280', '3650', 'LC maxi', '', 'OMB LC maxi', '9330', 'oui', 'oui'),
('N230', '160 AFD', 'RENAULT-MANJOT GRUE', 'PAV', '18M3', '', '', 'PR280-26', '19CV', '29/10/08', '', 26000, '16910', '9090', '', '', '', '2500', '3890', '', '', '', '8155', 'oui', 'non'),
('N231', 'AW-705-DJ', 'RENAULT PB', 'PAV', '4,5', '?', '', 'MAXITY', '10CV', '02/07/10', 'N198', 3500, '2455', '1045', '', '2450', '4960', '1850', '2400', 'PB', '', '', '9785', 'non', 'non'),
('N232', 'BA-649-XD', 'IVECO-SEMAT', 'D1', '20M3', 'C338.06', '141553', 'STRALIS 310 E5', '16CV', '30/09/10', 'N195', 26000, '14500', '11500', '', 'F=3800 F\'1395', '9330', '2500', '3600', 'TCH-OEL TMID TMDM', '1009100538', '\"TERBERG \"\"RFID\"\"\"', '9264', 'oui', 'oui'),
('N233', 'BB-073-KY', 'IVECO-SEMAT', 'ROT', '14M3', 'C225', '141509', 'EUROCARGO 190-EL-30', '16CV', '12/10/10', 'N199', 18600, '11580', '7020', '', '3690', '8040', '2390', '3540', 'TCH-OEL', '141509', '\"TERBERG \"\"manuel\"\"\"', '4118', 'oui', 'oui'),
('N234', 'BB-487-KY', 'IVECO-SEMAT', 'B3', '14M3', 'C225', '141543', 'EUROCARGO 190-EL-30', '16CV', '12/10/10', '', 18500, '11580', '6920', '', '3690', '8043', '2390', '3380', 'TCA-DEL', '141543', '\"TERBERG \"\"semi auto\"\"\"', '9253', 'oui', 'oui'),
('N235', 'BD-689-BZ', 'IVECO-SEMAT', 'ROT', '20M3', 'C338.06', '', 'STRALIS 310 E5', '21CV', '15/11/10', '', 26000, '14360', '11640', '', 'F=5195 F\' 3800', '9390', '2500', '3720', 'LC maxi 33', '3144', 'SEMAT', '9337', 'oui', 'oui'),
('N236', 'BD-260-LX', 'IVECO-SEMAT', 'SAT', '20M3', 'C338.06', '141582', 'STRALIS 310 E5', '21CV', '22/11/10', '', 26000, '14360', '11640', '', 'F=5195 F\' 3800', '9390', '2500', '3720', 'LC maxi 33', '', 'SEMAT', '9406', 'oui', 'oui'),
('N237', 'BE-554-JP', 'IVECO-SEMAT', 'ROT', '12M3', 'C214.06', '141628', 'EUROCARGO 160E28', '16CV', '08/12/10', 'N200', 16000, '9960', '6040', '', '3690', '7760', '2360', '3350', 'TCH-OEL', '1004280392', '\"TERBERG \"\"manuel\"\"\"', '9370', 'oui', 'oui'),
('N238', 'BE-680-ND', 'IVECO-SEMAT', 'D2', '14M3', 'C225.06', '141620', 'EUROCARGO 190-EL-30', '16CV', '10/12/10', 'N202', 18600, '11580', '7020', '', '3690', '8040', '2390', '3400', 'TCH-OEL I-M', '1009030537', '\"TERBERG \"\"RFID\"\"\"', '9651', 'oui', 'oui'),
('N239', 'BK-807-KG', 'PIAGGIO', 'COUR', '3,5M3', '?', '', 'PORTER TIPPER', '7CV', '16/03/11', '', 2200, '1416', '784', '', '2180', '3700', '1460', '2200', '', '', '', '4212', 'non', 'non'),
('N240', 'BK-795-KG', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER TIPPER', '7CV', '16/03/11', '', 2200, '1416', '784', '', '2180', '4100', '1560', '2200', '', '', '', '9082', 'non', 'non'),
('N241', 'BL-909-MY', 'IVECO-SEMAT', 'C4', '12M3', 'C214.06', '141490', 'EUROCARGO 160E28', '16CV', '05/04/11', 'N196', 16000, '10035', '5965', '', '3690', '8043', '2390', '3350', 'TCH-OEL I-TM', '1005070394', '\"TERBERG \"\"manuel\"\"\"', '3895', 'oui', 'oui'),
('N242', 'CH-437-NX', 'IVECO-SEMAT', 'A1', '20M3', 'C338.06', '142358', 'STRALIS 310 E5', '21CV', '11/07/12', '', 26000, '14920', '11080', '', 'F=3800 F\'1395', '9730', '2500', '3750', '', '1204060365', '\"TERBERG RFID \"\"automatique\"\"\"', '4034', 'oui', 'oui'),
('N243', 'CH-590-MX', 'IVECO-SEMAT', 'A2', '14M3', 'C225.06', '142378', 'EUROCARGO 160E28', '16CV', '10/07/12', '', 18600, '12020', '6580', '', '4180', '8050', '2420', '3650', '', '1204060367', '\"TERBERG RFID \"\" manuel\"\"\"', '4036', 'oui', 'oui'),
('N244', 'CH-729-NX', 'IVECO-SEMAT', 'B1', '14M3', 'C225.06', '142388', 'EUROCARGO 160E28', '16CV', '11/07/12', '', 18500, '12340', '6160', '', '4180', '8410', '2420', '3800', '', '1204060364', '\"TERBERG RFID \"\"automatique\"\"\"', '', 'oui', 'oui'),
('N245', 'CK-733-GE', 'PIAGGIO', 'SAT 1', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', 2200, '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '3207', 'non', 'non'),
('N246', 'CK-749-GE', 'PIAGGIO', 'SAT 2', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', 2200, '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '8185', 'non', 'non'),
('N248', 'CK-713-GE', 'PIAGGIO', 'ROT', '3,5M2', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', 2200, '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '8495', 'non', 'non'),
('N247', 'CK-246-LE', 'PIAGGIO', 'SAT 3', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '06/09/12', '', 2200, '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '8486', 'non', 'non'),
('N249', 'CK-769-GE', 'PIAGGIO', 'CS PAP', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', 2200, '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '9428', 'non', 'non'),
('N250', 'CP-842-KF', 'IVECO-SEMAT', 'A3', '10M3', 'C222.05', '14253', 'EUROCARGO 160E25', '16CV', '31/12/12', 'N220', 15400, '10040', '5360', '', '3105', '7250', '2360', '3400', 'TCH-OEL I- TM', '1207060754', '\"TERBERG RFID \"\"manuel\"\"\"', '4086', 'oui', 'oui'),
('N251', 'CQ-623-LB', 'IVECO-PB', 'C5', '7M3', '?', '1537', 'EUROCARGO 90E22', '16CV', '04/02/13', '', 9000, '5450', '3550', '', '3105', '6170', '2200', '2700', 'PB', '', '', '3767', 'oui', 'oui'),
('N252', 'CT-822-VK', 'IVECO-SEMAT', 'D5', '14M3', 'C225', '142799', 'EUROCARGO ML190', '16CV', '16/05/13', '', 18500, '12280', '6220', '', '3800', '8390', '2420', '', 'TCA-DEL-TDMI-DM', '1211301090', 'TERBERG OMNIDEL', '20121709', 'oui', 'oui'),
('N253', 'CT-034-VL', 'IVECO-SEMAT', 'B2', '14M3', 'C225', '142812', 'EUROCARGO ML190', '16CV', '16/05/13', '', 18500, '12280', '6220', '', '3800', '8390', '2420', '', 'TCA-DEL-TDMI-DM', '1211301091', 'TERBERG OMNIDEL', '20121711', 'oui', 'oui'),
('N254', 'CT-293-VL', 'IVECO-SEMAT', 'ROT', '14M3', 'C225', '', 'EUROCARGO ML190', '16CV', '16/05/13', '', 18500, '12280', '6220', '', '3800', '8390', '2420', '3600', 'THC-OEL I-TM', '', '\"TERBERG \"\"manuel\"\"\"', '4110', 'oui', 'oui'),
('N255', 'CV-259-KT', 'IVECO-SEMAT', 'C1', '20M3', 'C338', '142786', 'STRALIS 310 E5', '21CV', '04/06/13', '', 26000, '14800', '11200', '', 'F=3805 F\' 1395', '9710', '2500', '', 'TCA-DEL-TDMI-DM', '1211231089', 'TERBERG OMNIDEL', '4001', 'oui', 'oui'),
('N256', 'CV-993-KS', 'IVECO-SEMAT', 'B1/C3', '20M3', 'C338', '142756', 'STRALIS 310 E5', '21CV', '04/06/13', '', 26000, '14800', '11200', '', 'F=3805 F\' 1395', '9710', '2500', '', 'TCA-DEL-TDMI-DM', '1211231088', 'TERBERG OMNIDEL', '20121719', 'oui', 'oui'),
('N257', 'DD-819-MA', 'IVECO-SEMAT', 'C2', '20M3', 'C338', '143121', 'STRALIS 310 E6', '21CV', '27/02/14', 'N218', 26000, '15000', '11000', '', 'F=3805 F\' 1395', '9660', '2500', '3600', 'TCA-DEL-TDMI-DM', '1310110993', 'TERBERG OMNIDEL', '9058', 'oui', 'oui'),
('N258', 'DD-780-MA', 'IVECO-SEMAT', 'D3', '14M3', 'C225', '143119', 'EUROCARGO ML190', '16CV', '27/02/14', 'N219', 18500, '12280', '6220', '', '3805', '8400', '2420', '3700', 'TCA-DEL-TDMI-DM', '1310180994', 'TERBERG OMNIDEL', '9241', 'oui', 'oui'),
('N259', 'DD-799-MA', 'IVECO-SEMAT', 'B4', '14M3', 'C225', '143088', 'EUROCARGO ML190', '16CV', '27/02/14', 'N223', 18500, '12280', '6220', '', '3805', '8400', '2420', '3700', 'TCA-DEL-TDMI-DM', '1310110992', 'TERBERG OMNIDEL', '9540', 'oui', 'oui'),
('N260', 'DD-836-MA', 'IVECO-SEMAT', 'A1', '20M3', 'C338', '143028', 'STRALIS 310 E5', '21CV', '27/02/14', 'N224', 26000, '15000', '11000', '', 'F=3805 F\' 1395', '9660', '2500', '3600', 'TCA-DEL-TDMI-DM', '1310180995', 'TERBERG OMNIDEL', '9805', 'oui', 'oui'),
('N261', 'DE-169-AZ', 'IVECO-MANJOT GRUE', '', '18M3', '', '', '', '21CV', '19/03/14', '', 2600, '', '', '', '', '', '', '', '', '', '', '9736', '', ''),
('N262', 'DH-622-PB', 'IVECO-ZOELLER', 'C5', '8M3', '', '', '', '16CV', '11/07/14', 'N220', 11990, '7140', '4850', '4300', '3300', '7100', '2200', '2800', 'ZOELLER', '', 'LIFTER 202', '4149', 'oui', ''),
('N263', 'DN-896-XY', 'PIAGGIO', 'CS06', '3,5M3', '?', '', 'PORTER MAXXI', '7CV', '10/02/15', '', 2200, '1405', '795', '', '2180', '4100', '1500', '', 'CONCEPT COLLECTI', '', '', '4170', 'non', 'non'),
('N264', 'DN-711-XY', 'PIAGGIO', 'S2', '3,5 M3', '?', '', 'PORTER MAXXI', '7CV', '10/02/15', '', 2200, '1405', '795', '', '2180', '4100', '1500', '', 'CONCEPT COLLECTI', '', '', '4171', 'non', 'non'),
('N265', 'DT-706-NW', 'IVECO-SEMAT', 'D4', '20M3', 'C338', '143804', 'STRALIS 310 E6', '23CV', '24/07/15', '', 26000, '15050', '10950', '', '', '9700', '2500', '3600', 'TCA-DEL-TDMI-DM', '1505080347', 'TERBERG OMNIDEL', '4195', 'oui', 'oui'),
('N266', 'DW-906-JF', 'IVECO-SEMAT', 'B3', '14M3', 'C224,06', '143857', 'EUROCARGO 190-EL-30', '18CV', '07/10/15', '', 18700, '12020', '6680', '', '', '8200', '2380', '3600', 'TCA-DEL-TDMI-DM', '', '', '3040', 'oui', 'oui'),
('N267', 'DW-773-MR', 'IVECO-SEMAT', 'D2', '14M3', 'C224,06', '143865', 'EUROCARGO 190-EL-30', '18CV', '13/10/15', '', 18700, '12020', '6680', '', '3690', '8200', '238', '3600', 'TCA-DEL-TDMI-DM', '1506260624', '', '', 'oui', 'oui'),
('N268', 'DW-893-JE', 'IVECO-SEMAT', 'D1', '20M3', ' ', '', 'STRALIS 310 E6', '23CV', '07/10/15', '', 26000, '15050', '10950', '', '', '9700', '2500', '', 'TCA-DEL3-TDMI-DM', '1505080348', '', '3936', 'oui', 'oui'),
('N269', 'DW-178-JG', 'IVECO-SEMAT', 'ROT', '14M3', '', '', 'EUROCARGO 190-EL-30', '18CV', '07/10/15', '', 19000, '11785', '7215', '', '', '', '', '', 'THC-OEL I-TM', '', '\"TERBERG \"\"manuel\"\"\"', '3795', 'oui', 'oui'),
('N270', 'DW-913-JC', 'IVECO-ZOELLER', 'ROT', '8M3', 'XL8', '35193', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', 11990, '7100', '4890', '', '3330', '7100', '2270', '2800', 'ZOELLER', '', 'LIFTER 202', '8442', 'oui', 'oui'),
('N271', 'DW-162-ZA', 'IVECO-ZOELLER', 'CSPAP', '8M3', 'XL8', '35200', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', 11990, '7100', '4890', '', '3330', '7100', '2270', '2800', 'ZOELLER', '', 'LIFTER 202', '4214', 'oui', 'oui'),
('N272', 'DW-911-YZ', 'IVECO-ZOELLER', 'A3', '8M3', 'XL8', '35199', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', 11990, '7100', '4890', '', '3330', '7100', '2270', '2800', 'ZOELLER', '', 'LIFTER 202', '4215', 'oui', 'oui'),
('N273', 'EE-940-QG', 'IVECO-ZOELLER', 'A2', '14M3', 'C224,06', '144276', 'EUROCARGO 190-EL-30', '18CV', '17/08/16', '', 18700, '11860', '6840', '', '', '8290', '2430', '3650', 'TCA-DEL-TDMI-DM', '1603180295', 'TERBERG OMNIDEL', '8607', 'oui', 'oui'),
('N274', 'EF-879-WW', 'IRIDE', 'D6OM', '5M3', 'VRR', '', 'RENAULT MAXITY', '7CV', '07/10/16', 'N221', 4500, '3140', '1360', '', '2500', '5140', '1930', '2500', '', '', '', '18758', 'non', 'non'),
('N275', 'EJ-003-WY', 'IVECO-ZOELLER', 'B1/C3', '14M3', 'C224,06', '144453', 'EUROCARGO 190-EL-28P', '18CV', '07/02/17', 'N244', 18550, '12080', '6470', '', '3700', '8270', '2400', '', 'TCA-DEL3-TDMI-DM', '160905000873', 'TERBERG OMNIDEL', '41590', 'oui', 'oui'),
('N276', 'EQ-667-CV', 'IVECO-ZOELLER', 'C4', '8M3', 'MICROPAC8', '35272', 'EUROCARGO 120-EL-10', '12CV', '30/08/17', 'N237', 11990, '7140', '4850', '', '', '7280', '2300', '2995', 'ZOELLER', '', 'LIFTER 202', '', 'oui', 'oui'),
('N277', 'ES-056-GY', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER MULTITECH E6', '7CV', '28/11/17', 'N239', 2200, '1448', '752', '', '2180', '4300', '1560', '', 'CONCEPT COLLECTI', '', '', '8080', 'non', 'non,'),
('N278', 'ET-851-HX', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER  MUL TITECHE6', '7CV', '12/01/18', 'N240', 2200, '1448', '752', '', '2180', '4300', '1560', '', 'CONCEPT COLLECTI', '', '', '4233', 'non', 'non'),
('N283', 'EV-898-BM', 'IVECO-SEMAT', 'A1', '20M3', '?', '?', '?', '?', '?', 'N242', 14980, '26000', '11020', '', '', '', '', '', 'TCA-DEL3-TDMI-DM', '', 'TERBERG OMNIDEL', '9621', 'oui', 'non'),
('N284', 'EV-001-BY', 'IVECO-SEMAT', 'D5', '14M3', 'C224', '144958', 'EUROCARGO 190-280L', '18CV', '16/02/18', 'N252', 18550, '11900', '6650', '', '3800', '', '', '3600', 'TCA-DEL3-TDMI-DM', '', 'TERBERG OMNIDEL', '8420', 'oui', 'non'),
('N285', 'EV-092-LZ', 'IVECO-ZOELLER', '?', '8M3', 'C224', '35291', 'EUROCARGO 120-EL-10', '12CV', '05/03/18', '', 11990, '7045', '4945', '', '', '7280', '2250', '2800', 'ZOELLER', '', 'LIFTER 202', '8430', 'oui', 'non');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(72) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`) VALUES
(1, 'dado', 'ocbslim');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(3, 'GLPI', 'vbourel76@gmail.com', 'd6b840d789224a9b8af9267d142c2d21', '2018-08-12 23:06:09'),
(4, 'guido', 'dadoprso76@gmail.com', 'd6b840d789224a9b8af9267d142c2d21', '2018-08-24 10:20:57'),
(8, 'lefebvre-l', 'loic.lefebvre@codah.fr', '317ef2c946b513be84b366239ba7e9ca', '2018-08-29 11:22:33');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `carte_sims`
--
ALTER TABLE `carte_sims`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `depart`
--
ALTER TABLE `depart`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);

--
-- Index pour la table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `carte_sims`
--
ALTER TABLE `carte_sims`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `depart`
--
ALTER TABLE `depart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
