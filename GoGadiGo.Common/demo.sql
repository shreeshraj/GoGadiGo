-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 10:33 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `loguserprofile`
--

CREATE TABLE `loguserprofile` (
  `Id` int(11) NOT NULL,
  `ProfileId` int(11) DEFAULT NULL,
  `FirstName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MobileNumber` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProfileImagePath` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `District` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Block` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Temp1` int(11) DEFAULT NULL,
  `Temp2` int(11) DEFAULT NULL,
  `Temp3` int(11) DEFAULT NULL,
  `Temp4` int(11) DEFAULT NULL,
  `EntryHash` varchar(50) GENERATED ALWAYS AS (md5(concat_ws(_utf8mb4'',`FirstName`,`LastName`,`ProfileId`,`MobileNumber`,`Email`,`District`,`Block`))) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loguserprofile`
--

INSERT INTO `loguserprofile` (`Id`, `ProfileId`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `ProfileImagePath`, `Address`, `District`, `Block`, `Temp1`, `Temp2`, `Temp3`, `Temp4`) VALUES
(1, 9, 'amit', 'Kumar', '9910926192', 'shreesh92@gmal.com', '5320b845e5da4e7cab8ac8f255522f54.jpg', 'bhagalpur', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbblock`
--

CREATE TABLE `tblbblock` (
  `BlockId` int(11) NOT NULL,
  `DistrictName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BlockName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DistrictCode` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DistrictNumber` int(11) NOT NULL,
  `Temp1` int(11) DEFAULT NULL,
  `Temp2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblbblock`
--

INSERT INTO `tblbblock` (`BlockId`, `DistrictName`, `BlockName`, `DistrictCode`, `DistrictNumber`, `Temp1`, `Temp2`) VALUES
(1, 'Araria/अररिया', 'Araria/अररिया', 'AR', 1, NULL, NULL),
(2, 'Araria/अररिया', 'Bharganwan/भरगामा', 'AR', 1, NULL, NULL),
(3, 'Araria/अररिया', 'Farbisganj/फारबिसगंज', 'AR', 1, NULL, NULL),
(4, 'Araria/अररिया', 'Jokihat/जोकीहाट', 'AR', 1, NULL, NULL),
(5, 'Araria/अररिया', 'Kursakata/कुरसाकांटा', 'AR', 1, NULL, NULL),
(6, 'Araria/अररिया', 'Narpatganj/नरपतगंज', 'AR', 1, NULL, NULL),
(7, 'Araria/अररिया', 'Palasi/पलासी', 'AR', 1, NULL, NULL),
(8, 'Araria/अररिया', 'Raniganj/रानीगंज', 'AR', 1, NULL, NULL),
(9, 'Araria/अररिया', 'Sikti/सिकटी', 'AR', 1, NULL, NULL),
(10, 'Arwal/अरवल', 'Arwal/अरवल', 'AW', 2, NULL, NULL),
(11, 'Arwal/अरवल', 'Kaler/कलेर', 'AW', 2, NULL, NULL),
(12, 'Arwal/अरवल', 'Karpi/करपी', 'AW', 2, NULL, NULL),
(13, 'Arwal/अरवल', 'Kurtha/कुर्था', 'AW', 2, NULL, NULL),
(14, 'Arwal/अरवल', 'Sonebhadra Bansi Surjpur/सोनभद्र बंशी सुर्यपुर', 'AW', 2, NULL, NULL),
(15, 'Aurangabad/औरंगाबाद', 'Aurangabad/औरंगाबाद', 'AU', 3, NULL, NULL),
(16, 'Aurangabad/औरंगाबाद', 'Barun/बारुन', 'AU', 3, NULL, NULL),
(17, 'Aurangabad/औरंगाबाद', 'Daudnagar/दाउदनगर', 'AU', 3, NULL, NULL),
(18, 'Aurangabad/औरंगाबाद', 'Dev/देव', 'AU', 3, NULL, NULL),
(19, 'Aurangabad/औरंगाबाद', 'Goh/गोह', 'AU', 3, NULL, NULL),
(20, 'Aurangabad/औरंगाबाद', 'Haspura/हसपुरा', 'AU', 3, NULL, NULL),
(21, 'Aurangabad/औरंगाबाद', 'Kutumbba/कुटुम्बा', 'AU', 3, NULL, NULL),
(22, 'Aurangabad/औरंगाबाद', 'Madanpur/मदनपुर', 'AU', 3, NULL, NULL),
(23, 'Aurangabad/औरंगाबाद', 'Nabinagar/नबीनगर', 'AU', 3, NULL, NULL),
(24, 'Aurangabad/औरंगाबाद', 'Obra/ओबरा', 'AU', 3, NULL, NULL),
(25, 'Aurangabad/औरंगाबाद', 'Rafiganj/रफीगंज', 'AU', 3, NULL, NULL),
(26, 'Banka/बांका', 'Amarpur/अमरपुर', 'BA', 4, NULL, NULL),
(27, 'Banka/बांका', 'Banka/बांका', 'BA', 4, NULL, NULL),
(28, 'Banka/बांका', 'Barahat/बाराहाट', 'BA', 4, NULL, NULL),
(29, 'Banka/बांका', 'Bausi/बौंसी', 'BA', 4, NULL, NULL),
(30, 'Banka/बांका', 'Belhar/बेलहर', 'BA', 4, NULL, NULL),
(31, 'Banka/बांका', 'Chandan/चान्दन', 'BA', 4, NULL, NULL),
(32, 'Banka/बांका', 'Dhoraiya/धोरैया', 'BA', 4, NULL, NULL),
(33, 'Banka/बांका', 'Katoria/कटोरिया', 'BA', 4, NULL, NULL),
(34, 'Banka/बांका', 'Phulidumar/फुल्लीडूमर', 'BA', 4, NULL, NULL),
(35, 'Banka/बांका', 'Rajon/रजौन', 'BA', 4, NULL, NULL),
(36, 'Banka/बांका', 'Shambhuganj/शम्भूगंज', 'BA', 4, NULL, NULL),
(37, 'Begusarai/बेगुसराय', 'Bachwara/बछवारा', 'BE', 5, NULL, NULL),
(38, 'Begusarai/बेगुसराय', 'Bakhri/बखारी', 'BE', 5, NULL, NULL),
(39, 'Begusarai/बेगुसराय', 'Balia/बलिया', 'BE', 5, NULL, NULL),
(40, 'Begusarai/बेगुसराय', 'Barauni/बरौनी', 'BE', 5, NULL, NULL),
(41, 'Begusarai/बेगुसराय', 'Begusarai/बेगूसराय', 'BE', 5, NULL, NULL),
(42, 'Begusarai/बेगुसराय', 'Bhagawanpur/भगवानपुर', 'BE', 5, NULL, NULL),
(43, 'Begusarai/बेगुसराय', 'Birpur/बीरपुर ', 'BE', 5, NULL, NULL),
(44, 'Begusarai/बेगुसराय', 'Cheria Bariyarpur/चेरिया बरियारपुर', 'BE', 5, NULL, NULL),
(45, 'Begusarai/बेगुसराय', 'Chhourahi/छोडाही', 'BE', 5, NULL, NULL),
(46, 'Begusarai/बेगुसराय', 'Dandari/डंडारी', 'BE', 5, NULL, NULL),
(47, 'Begusarai/बेगुसराय', 'Garhpura/गढ़पुरा', 'BE', 5, NULL, NULL),
(48, 'Begusarai/बेगुसराय', 'Khodabandpur/खुदाबंदपुर', 'BE', 5, NULL, NULL),
(49, 'Begusarai/बेगुसराय', 'Mansurchak/मंसूरचक', 'BE', 5, NULL, NULL),
(50, 'Begusarai/बेगुसराय', 'Matihani/मातिहानी', 'BE', 5, NULL, NULL),
(51, 'Begusarai/बेगुसराय', 'Navkothi/नावकोठी', 'BE', 5, NULL, NULL),
(52, 'Begusarai/बेगुसराय', 'Sahebpur Kamal/साहेबपुर कमल', 'BE', 5, NULL, NULL),
(53, 'Begusarai/बेगुसराय', 'Samho-Akaha-Kurha/समहो आखा कुढ़ा', 'BE', 5, NULL, NULL),
(54, 'Begusarai/बेगुसराय', 'Teghra/तेघरा', 'BE', 5, NULL, NULL),
(55, 'Bhagalpur/भागलपुर', 'Bihpur/बिहपुर', 'BG', 6, NULL, NULL),
(56, 'Bhagalpur/भागलपुर', 'Gauradih/गोरडीह', 'BG', 6, NULL, NULL),
(57, 'Bhagalpur/भागलपुर', 'Gopalpur/गोपालपुर', 'BG', 6, NULL, NULL),
(58, 'Bhagalpur/भागलपुर', 'Ismailpur/इसमाइलपुर', 'BG', 6, NULL, NULL),
(59, 'Bhagalpur/भागलपुर', 'Jagdishpur/जगदीशपुर', 'BG', 6, NULL, NULL),
(60, 'Bhagalpur/भागलपुर', 'Kahalgoan/कहलगांव', 'BG', 6, NULL, NULL),
(61, 'Bhagalpur/भागलपुर', 'Kharik/खरीक', 'BG', 6, NULL, NULL),
(62, 'Bhagalpur/भागलपुर', 'Narayanpur/नारायणपुर ', 'BG', 6, NULL, NULL),
(63, 'Bhagalpur/भागलपुर', 'Nathnagar/नाथनगर', 'BG', 6, NULL, NULL),
(64, 'Bhagalpur/भागलपुर', 'Navgachia/नवगछिया', 'BG', 6, NULL, NULL),
(65, 'Bhagalpur/भागलपुर', 'Pirpainti/पिरपैंती', 'BG', 6, NULL, NULL),
(66, 'Bhagalpur/भागलपुर', 'Rangrachowk/रंगर चौक', 'BG', 6, NULL, NULL),
(67, 'Bhagalpur/भागलपुर', 'Sabour/सबौर', 'BG', 6, NULL, NULL),
(68, 'Bhagalpur/भागलपुर', 'Sahkund/शाहकुंड', 'BG', 6, NULL, NULL),
(69, 'Bhagalpur/भागलपुर', 'Sanhaula/सनहोला', 'BG', 6, NULL, NULL),
(70, 'Bhagalpur/भागलपुर', 'Sultanganj/सुल्तानगंज', 'BG', 6, NULL, NULL),
(71, 'Bhojpur/भोजपुर', 'Agiawon/अगिआँव', 'BJ', 7, NULL, NULL),
(72, 'Bhojpur/भोजपुर', 'Ara Sadar/आरा सदर', 'BJ', 7, NULL, NULL),
(73, 'Bhojpur/भोजपुर', 'Barhara/बड़हरा', 'BJ', 7, NULL, NULL),
(74, 'Bhojpur/भोजपुर', 'Bihia/बिहिया', 'BJ', 7, NULL, NULL),
(75, 'Bhojpur/भोजपुर', 'Charpokhari/चरपोखरी', 'BJ', 7, NULL, NULL),
(76, 'Bhojpur/भोजपुर', 'Garhani/गड़हनी', 'BJ', 7, NULL, NULL),
(77, 'Bhojpur/भोजपुर', 'Jagdishpur/जगदीशपुर', 'BJ', 7, NULL, NULL),
(78, 'Bhojpur/भोजपुर', 'Koilwar/कोईलवर', 'BJ', 7, NULL, NULL),
(79, 'Bhojpur/भोजपुर', 'Piro/पीरो', 'BJ', 7, NULL, NULL),
(80, 'Bhojpur/भोजपुर', 'Sahar/सहार', 'BJ', 7, NULL, NULL),
(81, 'Bhojpur/भोजपुर', 'Sandesh/सन्देश', 'BJ', 7, NULL, NULL),
(82, 'Bhojpur/भोजपुर', 'Shahpur/शाहपुर', 'BJ', 7, NULL, NULL),
(83, 'Bhojpur/भोजपुर', 'Tarari/तरारी', 'BJ', 7, NULL, NULL),
(84, 'Bhojpur/भोजपुर', 'Udwantnagar/उदवंतनगर', 'BJ', 7, NULL, NULL),
(85, 'Buxar/बक्सर', 'Brahmpur/ब्रहमपुर', 'BU', 8, NULL, NULL),
(86, 'Buxar/बक्सर', 'Buxar/बक्सर', 'BU', 8, NULL, NULL),
(87, 'Buxar/बक्सर', 'Chakki/चक्की', 'BU', 8, NULL, NULL),
(88, 'Buxar/बक्सर', 'Chaungain/चौगाई', 'BU', 8, NULL, NULL),
(89, 'Buxar/बक्सर', 'Chausa/चौसा', 'BU', 8, NULL, NULL),
(90, 'Buxar/बक्सर', 'Dumraon/डुमराव', 'BU', 8, NULL, NULL),
(91, 'Buxar/बक्सर', 'Itarhi/इटाढ़ी', 'BU', 8, NULL, NULL),
(92, 'Buxar/बक्सर', 'Kesath/केसठ', 'BU', 8, NULL, NULL),
(93, 'Buxar/बक्सर', 'Nawanagar/नावानगर', 'BU', 8, NULL, NULL),
(94, 'Buxar/बक्सर', 'Rajpur/राजपूर', 'BU', 8, NULL, NULL),
(95, 'Buxar/बक्सर', 'Simari/सिमरी', 'BU', 8, NULL, NULL),
(96, 'Darbhanga/दरभंगा', 'Alinagar/अलीनगर', 'DA', 9, NULL, NULL),
(97, 'Darbhanga/दरभंगा', 'Bahadurpur/बहादुरपुर', 'DA', 9, NULL, NULL),
(98, 'Darbhanga/दरभंगा', 'Baheri/बहेरी', 'DA', 9, NULL, NULL),
(99, 'Darbhanga/दरभंगा', 'Benipur/बेनीपुर', 'DA', 9, NULL, NULL),
(100, 'Darbhanga/दरभंगा', 'Biraul/बिरौल', 'DA', 9, NULL, NULL),
(101, 'Darbhanga/दरभंगा', 'Darbhanga sadar/दरभंगा सदर', 'DA', 9, NULL, NULL),
(102, 'Darbhanga/दरभंगा', 'Gaura Vauram/गौराबौरम', 'DA', 9, NULL, NULL),
(103, 'Darbhanga/दरभंगा', 'Ghanshyampur/घनश्यामपुर ', 'DA', 9, NULL, NULL),
(104, 'Darbhanga/दरभंगा', 'HanumanNagar/हनुमाननगर', 'DA', 9, NULL, NULL),
(105, 'Darbhanga/दरभंगा', 'Hayaghat/हायाघाट', 'DA', 9, NULL, NULL),
(106, 'Darbhanga/दरभंगा', 'Jale/जाले', 'DA', 9, NULL, NULL),
(107, 'Darbhanga/दरभंगा', 'Kewati/केवटी', 'DA', 9, NULL, NULL),
(108, 'Darbhanga/दरभंगा', 'Kiratpur/किरतपुर', 'DA', 9, NULL, NULL),
(109, 'Darbhanga/दरभंगा', 'Kusheswarsthan East/कुशेश्वरस्थान पूर्वी', 'DA', 9, NULL, NULL),
(110, 'Darbhanga/दरभंगा', 'Kusheswarsthan/कुशेश्वरस्थान', 'DA', 9, NULL, NULL),
(111, 'Darbhanga/दरभंगा', 'Manigachhi/मनिगाछी', 'DA', 9, NULL, NULL),
(112, 'Darbhanga/दरभंगा', 'Singhwara/सिघंवाड़ा', 'DA', 9, NULL, NULL),
(113, 'Darbhanga/दरभंगा', 'Tardih/तारडीह', 'DA', 9, NULL, NULL),
(114, 'East Champaran/पूर्वी चम्पारण', 'Adapur/आदापुर', 'EC', 10, NULL, NULL),
(115, 'East Champaran/पूर्वी चम्पारण', 'Areraj/अरेराज', 'EC', 10, NULL, NULL),
(116, 'East Champaran/पूर्वी चम्पारण', 'Banjaria/बंजरिया', 'EC', 10, NULL, NULL),
(117, 'East Champaran/पूर्वी चम्पारण', 'Chakia/चकिया', 'EC', 10, NULL, NULL),
(118, 'East Champaran/पूर्वी चम्पारण', 'Chhauradano/छौड़ादानो', 'EC', 10, NULL, NULL),
(119, 'East Champaran/पूर्वी चम्पारण', 'Chiraian/चिरैया', 'EC', 10, NULL, NULL),
(120, 'East Champaran/पूर्वी चम्पारण', 'Dhakha/ढाका', 'EC', 10, NULL, NULL),
(121, 'East Champaran/पूर्वी चम्पारण', 'Ghorasahan/घोड़ासहन', 'EC', 10, NULL, NULL),
(122, 'East Champaran/पूर्वी चम्पारण', 'Harsiddhi/हरसिद्धी', 'EC', 10, NULL, NULL),
(123, 'East Champaran/पूर्वी चम्पारण', 'Kalyanpur/कल्याणपुर', 'EC', 10, NULL, NULL),
(124, 'East Champaran/पूर्वी चम्पारण', 'Kesharia/केशरिया', 'EC', 10, NULL, NULL),
(125, 'East Champaran/पूर्वी चम्पारण', 'Kotwa/कोटवा', 'EC', 10, NULL, NULL),
(126, 'East Champaran/पूर्वी चम्पारण', 'Madhuban/मधुबन', 'EC', 10, NULL, NULL),
(127, 'East Champaran/पूर्वी चम्पारण', 'Maheshi/मेहसी', 'EC', 10, NULL, NULL),
(128, 'East Champaran/पूर्वी चम्पारण', 'Motihari/मोतिहारी', 'EC', 10, NULL, NULL),
(129, 'East Champaran/पूर्वी चम्पारण', 'Paharpur/पहाड़पुर', 'EC', 10, NULL, NULL),
(130, 'East Champaran/पूर्वी चम्पारण', 'Pakridayal/पकड़ीदयाल', 'EC', 10, NULL, NULL),
(131, 'East Champaran/पूर्वी चम्पारण', 'Patahi/पताही', 'EC', 10, NULL, NULL),
(132, 'East Champaran/पूर्वी चम्पारण', 'Phenhara/फेनहारा', 'EC', 10, NULL, NULL),
(133, 'East Champaran/पूर्वी चम्पारण', 'Piprakothi/पीपराकोठी', 'EC', 10, NULL, NULL),
(134, 'East Champaran/पूर्वी चम्पारण', 'Ramgarhwa/रामगढवा', 'EC', 10, NULL, NULL),
(135, 'East Champaran/पूर्वी चम्पारण', 'Raxaul/रक्सौल', 'EC', 10, NULL, NULL),
(136, 'East Champaran/पूर्वी चम्पारण', 'Sangrampur/संग्रामपुर', 'EC', 10, NULL, NULL),
(137, 'East Champaran/पूर्वी चम्पारण', 'Sugauli/सुगौली', 'EC', 10, NULL, NULL),
(138, 'East Champaran/पूर्वी चम्पारण', 'Tetaria/तेतरिया', 'EC', 10, NULL, NULL),
(139, 'East Champaran/पूर्वी चम्पारण', 'Turkaulia/तुरकौलिया', 'EC', 10, NULL, NULL),
(140, 'East Champaran/पूर्वी चम्पारण', 'Vankatwa/बनकटवा', 'EC', 10, NULL, NULL),
(141, 'Gaya/गया', 'Amas/आमस', 'GA', 11, NULL, NULL),
(142, 'Gaya/गया', 'Atri/अत्तरी', 'GA', 11, NULL, NULL),
(143, 'Gaya/गया', 'Bankey Bazar/बांके बाज़ार', 'GA', 11, NULL, NULL),
(144, 'Gaya/गया', 'Barachatti/बाराचट्टी', 'GA', 11, NULL, NULL),
(145, 'Gaya/गया', 'Belaganj/बेलागंज', 'GA', 11, NULL, NULL),
(146, 'Gaya/गया', 'Bodh Gaya/बोधगया', 'GA', 11, NULL, NULL),
(147, 'Gaya/गया', 'Dobhi/डोभी', 'GA', 11, NULL, NULL),
(148, 'Gaya/गया', 'Dumaria/डुमरिया', 'GA', 11, NULL, NULL),
(149, 'Gaya/गया', 'Fatehpur/फतेहपुर', 'GA', 11, NULL, NULL),
(150, 'Gaya/गया', 'Gaya Sadar/गया सदर', 'GA', 11, NULL, NULL),
(151, 'Gaya/गया', 'Guraru/गुरारू', 'GA', 11, NULL, NULL),
(152, 'Gaya/गया', 'Gurua/गुरुआ', 'GA', 11, NULL, NULL),
(153, 'Gaya/गया', 'Imamganj/इमामगंज', 'GA', 11, NULL, NULL),
(154, 'Gaya/गया', 'Khizarsarai/खिजरसराय', 'GA', 11, NULL, NULL),
(155, 'Gaya/गया', 'Konch/कोंच', 'GA', 11, NULL, NULL),
(156, 'Gaya/गया', 'Manpur/मानपुर', 'GA', 11, NULL, NULL),
(157, 'Gaya/गया', 'Mohanpur/मोहनपुर', 'GA', 11, NULL, NULL),
(158, 'Gaya/गया', 'Muhra/मोहड़ा', 'GA', 11, NULL, NULL),
(159, 'Gaya/गया', 'Nimchakbathani/नीमचक बथानी', 'GA', 11, NULL, NULL),
(160, 'Gaya/गया', 'Paraiya/परैया', 'GA', 11, NULL, NULL),
(161, 'Gaya/गया', 'Sherghati/शेरघाटी', 'GA', 11, NULL, NULL),
(162, 'Gaya/गया', 'Tankuppa/टनकुप्पा', 'GA', 11, NULL, NULL),
(163, 'Gaya/गया', 'Tekari/टेकारी', 'GA', 11, NULL, NULL),
(164, 'Gaya/गया', 'Wazirganj/वजीरगंज', 'GA', 11, NULL, NULL),
(165, 'Gopalganj/गोपालगंज', 'Baikunthpur/बैकुंठपुर', 'GO', 12, NULL, NULL),
(166, 'Gopalganj/गोपालगंज', 'Barauli/बरौली', 'GO', 12, NULL, NULL),
(167, 'Gopalganj/गोपालगंज', 'Bhore/भोरे', 'GO', 12, NULL, NULL),
(168, 'Gopalganj/गोपालगंज', 'Gopalganj/गोपालगंज', 'GO', 12, NULL, NULL),
(169, 'Gopalganj/गोपालगंज', 'Hathua/हथुआ', 'GO', 12, NULL, NULL),
(170, 'Gopalganj/गोपालगंज', 'Kateya/कटेया', 'GO', 12, NULL, NULL),
(171, 'Gopalganj/गोपालगंज', 'Kuchaikot/कुचायकोट', 'GO', 12, NULL, NULL),
(172, 'Gopalganj/गोपालगंज', 'Manjha/मांझा', 'GO', 12, NULL, NULL),
(173, 'Gopalganj/गोपालगंज', 'Panchdevari/पंचदेवरी', 'GO', 12, NULL, NULL),
(174, 'Gopalganj/गोपालगंज', 'Phulwaria/फुलवरिया ', 'GO', 12, NULL, NULL),
(175, 'Gopalganj/गोपालगंज', 'Sindhwalia/सिधवलिया', 'GO', 12, NULL, NULL),
(176, 'Gopalganj/गोपालगंज', 'Thawe/थावे', 'GO', 12, NULL, NULL),
(177, 'Gopalganj/गोपालगंज', 'Uchakagaon/उचकागांव', 'GO', 12, NULL, NULL),
(178, 'Gopalganj/गोपालगंज', 'Vijayeepur/विजयीपुर', 'GO', 12, NULL, NULL),
(179, 'Jamui/जमुई', 'Asalmanagar Aliganj/इस्लामनगर अलीगंज', 'JA', 13, NULL, NULL),
(180, 'Jamui/जमुई', 'Barhat/बरहट', 'JA', 13, NULL, NULL),
(181, 'Jamui/जमुई', 'Chakai/चकाई', 'JA', 13, NULL, NULL),
(182, 'Jamui/जमुई', 'Gidhaur/गिधौर', 'JA', 13, NULL, NULL),
(183, 'Jamui/जमुई', 'Jamui/जमुई', 'JA', 13, NULL, NULL),
(184, 'Jamui/जमुई', 'Jhajha/झाझा', 'JA', 13, NULL, NULL),
(185, 'Jamui/जमुई', 'Khaira/खैरा', 'JA', 13, NULL, NULL),
(186, 'Jamui/जमुई', 'Laxmipur/लक्ष्मीपुर', 'JA', 13, NULL, NULL),
(187, 'Jamui/जमुई', 'Sikandra/सिकंदरा', 'JA', 13, NULL, NULL),
(188, 'Jamui/जमुई', 'Sono/सोनो', 'JA', 13, NULL, NULL),
(189, 'Jehanabad/जहानाबाद', 'Ghosi/घोसी', 'JE', 14, NULL, NULL),
(190, 'Jehanabad/जहानाबाद', 'Jehanabad/जहानाबाद', 'JE', 14, NULL, NULL),
(191, 'Jehanabad/जहानाबाद', 'Makhdumpur/मखदुमपुर', 'JE', 14, NULL, NULL),
(192, 'Jehanabad/जहानाबाद', 'Kako/काको', 'JE', 14, NULL, NULL),
(193, 'Jehanabad/जहानाबाद', 'Ratnifridpur/रतनी फरीदपुर', 'JE', 14, NULL, NULL),
(194, 'Jehanabad/जहानाबाद', 'Hulasganj/हुलासगंज', 'JE', 14, NULL, NULL),
(195, 'Jehanabad/जहानाबाद', 'Modanganj/मोदनगंज', 'JE', 14, NULL, NULL),
(196, 'Kaimur/कैमूर', 'Adhaura/अधौरा', 'KM', 15, NULL, NULL),
(197, 'Kaimur/कैमूर', 'Bhabhua/भभुआ ', 'KM', 15, NULL, NULL),
(198, 'Kaimur/कैमूर', 'Bhagwanpur/भगवानपुर ', 'KM', 15, NULL, NULL),
(199, 'Kaimur/कैमूर', 'Chainpur/चैनपुर ', 'KM', 15, NULL, NULL),
(200, 'Kaimur/कैमूर', 'Chand/चाँद ', 'KM', 15, NULL, NULL),
(201, 'Kaimur/कैमूर', 'Durgawati/दुर्गावती ', 'KM', 15, NULL, NULL),
(202, 'Kaimur/कैमूर', 'Kudra/कुदरा ', 'KM', 15, NULL, NULL),
(203, 'Kaimur/कैमूर', 'Mohania/मोहनिया ', 'KM', 15, NULL, NULL),
(204, 'Kaimur/कैमूर', 'Nuawon/नुआंव', 'KM', 15, NULL, NULL),
(205, 'Kaimur/कैमूर', 'Ramgarh/रामगढ ', 'KM', 15, NULL, NULL),
(206, 'Kaimur/कैमूर', 'Rampur/रामपुर ', 'KM', 15, NULL, NULL),
(207, 'Katihar/कटिहार', 'Amdabad/अमदाबाद', 'KT', 16, NULL, NULL),
(208, 'Katihar/कटिहार', 'Azamnagar/आजमनगर ', 'KT', 16, NULL, NULL),
(209, 'Katihar/कटिहार', 'Balrampur/बलरामपुर', 'KT', 16, NULL, NULL),
(210, 'Katihar/कटिहार', 'Barari/बरारी', 'KT', 16, NULL, NULL),
(211, 'Katihar/कटिहार', 'Barsoi/बारसोई', 'KT', 16, NULL, NULL),
(212, 'Katihar/कटिहार', 'Dandkhora/डंडखोरा', 'KT', 16, NULL, NULL),
(213, 'Katihar/कटिहार', 'Falka/फलका', 'KT', 16, NULL, NULL),
(214, 'Katihar/कटिहार', 'Hasanganj/हसनगंज', 'KT', 16, NULL, NULL),
(215, 'Katihar/कटिहार', 'Kadwa/कदवा ', 'KT', 16, NULL, NULL),
(216, 'Katihar/कटिहार', 'Katihar/कटिहार', 'KT', 16, NULL, NULL),
(217, 'Katihar/कटिहार', 'Korha/कोढ़ा', 'KT', 16, NULL, NULL),
(218, 'Katihar/कटिहार', 'Kursaila/कुर्सेला', 'KT', 16, NULL, NULL),
(219, 'Katihar/कटिहार', 'Manihari/मनिहारी', 'KT', 16, NULL, NULL),
(220, 'Katihar/कटिहार', 'Mansahi/मनसाही ', 'KT', 16, NULL, NULL),
(221, 'Katihar/कटिहार', 'Pranpur/प्राणपुर', 'KT', 16, NULL, NULL),
(222, 'Katihar/कटिहार', 'Samaili/समेली', 'KT', 16, NULL, NULL),
(223, 'Khagaria/खगड़िया', 'Alauli/अलौली', 'KH', 17, NULL, NULL),
(224, 'Khagaria/खगड़िया', 'Beldaur/बेलदौर', 'KH', 17, NULL, NULL),
(225, 'Khagaria/खगड़िया', 'Chautham/चौथम', 'KH', 17, NULL, NULL),
(226, 'Khagaria/खगड़िया', 'Gogari/गोगरी', 'KH', 17, NULL, NULL),
(227, 'Khagaria/खगड़िया', 'Khagaria/खगड़िया', 'KH', 17, NULL, NULL),
(228, 'Khagaria/खगड़िया', 'Mansi/मानसी', 'KH', 17, NULL, NULL),
(229, 'Khagaria/खगड़िया', 'Parwatta/परबत्ता', 'KH', 17, NULL, NULL),
(230, 'Kishanganj/किशनगंज', 'Bahadurganj/बहादुरगंज', 'KI', 18, NULL, NULL),
(231, 'Kishanganj/किशनगंज', 'Dighalbank/दिघलबैंक', 'KI', 18, NULL, NULL),
(232, 'Kishanganj/किशनगंज', 'Kishanganj/किशनगंज', 'KI', 18, NULL, NULL),
(233, 'Kishanganj/किशनगंज', 'Kochadhaman/कोचाधामन', 'KI', 18, NULL, NULL),
(234, 'Kishanganj/किशनगंज', 'Pothia/पोठिया', 'KI', 18, NULL, NULL),
(235, 'Kishanganj/किशनगंज', 'Terhagachh/टेढ़ागाछ', 'KI', 18, NULL, NULL),
(236, 'Kishanganj/किशनगंज', 'Thakurganj/ठाकुरगंज', 'KI', 18, NULL, NULL),
(237, 'Lakhisarai/लखीसराय', 'Barahia/बड़हिया', 'LA', 19, NULL, NULL),
(238, 'Lakhisarai/लखीसराय', 'Chanan Banu Bagicha/चानन बानु बगीचा', 'LA', 19, NULL, NULL),
(239, 'Lakhisarai/लखीसराय', 'Halsi/हलसी', 'LA', 19, NULL, NULL),
(240, 'Lakhisarai/लखीसराय', 'Lakhisarai/लखीसराय', 'LA', 19, NULL, NULL),
(241, 'Lakhisarai/लखीसराय', 'Piparia/पिपरिया', 'LA', 19, NULL, NULL),
(242, 'Lakhisarai/लखीसराय', 'Ramgarh Chowk/रामगढ़ चौक', 'LA', 19, NULL, NULL),
(243, 'Lakhisarai/लखीसराय', 'Suryagarha/सूर्यगढ़ा', 'LA', 19, NULL, NULL),
(244, 'Madhepura/मधेपुरा', 'Alamnagar/आलमनगर', 'MP', 20, NULL, NULL),
(245, 'Madhepura/मधेपुरा', 'Bihariganj/बिहारीगंज ', 'MP', 20, NULL, NULL),
(246, 'Madhepura/मधेपुरा', 'Chausa/चौसा', 'MP', 20, NULL, NULL),
(247, 'Madhepura/मधेपुरा', 'Dhelarh/घैलाढ़', 'MP', 20, NULL, NULL),
(248, 'Madhepura/मधेपुरा', 'Gamharia/गम्हरिया', 'MP', 20, NULL, NULL),
(249, 'Madhepura/मधेपुरा', 'Gwalpara/ग्वालपाड़ा', 'MP', 20, NULL, NULL),
(250, 'Madhepura/मधेपुरा', 'Kumarkhand/कुमारखंड', 'MP', 20, NULL, NULL),
(251, 'Madhepura/मधेपुरा', 'Madhepura/मधेपुरा', 'MP', 20, NULL, NULL),
(252, 'Madhepura/मधेपुरा', 'Murliganj/मुरलीगंज', 'MP', 20, NULL, NULL),
(253, 'Madhepura/मधेपुरा', 'Puraini/पुरैनी', 'MP', 20, NULL, NULL),
(254, 'Madhepura/मधेपुरा', 'Shankarpur/शंकरपुर', 'MP', 20, NULL, NULL),
(255, 'Madhepura/मधेपुरा', 'Sigheshwarsthan/सिंघेश्वरस्थान', 'MP', 20, NULL, NULL),
(256, 'Madhepura/मधेपुरा', 'Udakishanganj/उदाकिशुनगंज', 'MP', 20, NULL, NULL),
(257, 'Madhubani/मधुबनी', 'Andharatharhi/अंधराठाढ़ी', 'MB', 21, NULL, NULL),
(258, 'Madhubani/मधुबनी', 'Babubarhi/बाबूबरही', 'MB', 21, NULL, NULL),
(259, 'Madhubani/मधुबनी', 'Basopatti/बासोपट्टी', 'MB', 21, NULL, NULL),
(260, 'Madhubani/मधुबनी', 'Benipatti/बेनीपट्टी', 'MB', 21, NULL, NULL),
(261, 'Madhubani/मधुबनी', 'Bisfi/बिस्फी', 'MB', 21, NULL, NULL),
(262, 'Madhubani/मधुबनी', 'Ghoghardiha/घोघरडीहा', 'MB', 21, NULL, NULL),
(263, 'Madhubani/मधुबनी', 'Harlakhi/हरलाखी', 'MB', 21, NULL, NULL),
(264, 'Madhubani/मधुबनी', 'Jainagar/जयनगर', 'MB', 21, NULL, NULL),
(265, 'Madhubani/मधुबनी', 'Jhanjharpur/झंझारपुर', 'MB', 21, NULL, NULL),
(266, 'Madhubani/मधुबनी', 'Kaluahi/कलुआही', 'MB', 21, NULL, NULL),
(267, 'Madhubani/मधुबनी', 'Khajauli/खजौली', 'MB', 21, NULL, NULL),
(268, 'Madhubani/मधुबनी', 'Khutauna/खुटौना', 'MB', 21, NULL, NULL),
(269, 'Madhubani/मधुबनी', 'Ladania/लदनिया', 'MB', 21, NULL, NULL),
(270, 'Madhubani/मधुबनी', 'Lakhnaur/लखनौर', 'MB', 21, NULL, NULL),
(271, 'Madhubani/मधुबनी', 'Laukahi/लौकही', 'MB', 21, NULL, NULL),
(272, 'Madhubani/मधुबनी', 'Madhepur/मधेपुर', 'MB', 21, NULL, NULL),
(273, 'Madhubani/मधुबनी', 'Madhwapur/मधवापुर', 'MB', 21, NULL, NULL),
(274, 'Madhubani/मधुबनी', 'Pandaul/पंडौल', 'MB', 21, NULL, NULL),
(275, 'Madhubani/मधुबनी', 'Phulparas/फुलपरास', 'MB', 21, NULL, NULL),
(276, 'Madhubani/मधुबनी', 'Rahika/रहिका', 'MB', 21, NULL, NULL),
(277, 'Madhubani/मधुबनी', 'Rajnagar/राजनगर', 'MB', 21, NULL, NULL),
(278, 'Munger/मुंगेर', 'Asarganj/असरगंज', 'MG', 22, NULL, NULL),
(279, 'Munger/मुंगेर', 'Bariarpur/बरियारपुर', 'MG', 22, NULL, NULL),
(280, 'Munger/मुंगेर', 'Dharhara/धरहरा', 'MG', 22, NULL, NULL),
(281, 'Munger/मुंगेर', 'Haveli kharagpur/हवेली खड़गपुर', 'MG', 22, NULL, NULL),
(282, 'Munger/मुंगेर', 'Jamalpur/जमालपुर', 'MG', 22, NULL, NULL),
(283, 'Munger/मुंगेर', 'Munger/मुंगेर', 'MG', 22, NULL, NULL),
(284, 'Munger/मुंगेर', 'Sangrampur/संग्रामपुर', 'MG', 22, NULL, NULL),
(285, 'Munger/मुंगेर', 'Tarapur/तारापुर', 'MG', 22, NULL, NULL),
(286, 'Munger/मुंगेर', 'Tetiabamber/टेटिया बम्बर', 'MG', 22, NULL, NULL),
(287, 'Muzaffarpur/मुज़फ्फरपुर', 'Aurai/औराई', 'MZ', 23, NULL, NULL),
(288, 'Muzaffarpur/मुज़फ्फरपुर', 'Bandra/बंदरा', 'MZ', 23, NULL, NULL),
(289, 'Muzaffarpur/मुज़फ्फरपुर', 'Bochaha/बोचहाँ', 'MZ', 23, NULL, NULL),
(290, 'Muzaffarpur/मुज़फ्फरपुर', 'Gayghat/गायघाट', 'MZ', 23, NULL, NULL),
(291, 'Muzaffarpur/मुज़फ्फरपुर', 'Kanti/काँटी', 'MZ', 23, NULL, NULL),
(292, 'Muzaffarpur/मुज़फ्फरपुर', 'Katra/कटरा', 'MZ', 23, NULL, NULL),
(293, 'Muzaffarpur/मुज़फ्फरपुर', 'Kurahni/कुढनी', 'MZ', 23, NULL, NULL),
(294, 'Muzaffarpur/मुज़फ्फरपुर', 'Marawan/मरवन', 'MZ', 23, NULL, NULL),
(295, 'Muzaffarpur/मुज़फ्फरपुर', 'Minapur/मीनापुर', 'MZ', 23, NULL, NULL),
(296, 'Muzaffarpur/मुज़फ्फरपुर', 'Motipur/मोतीपुर', 'MZ', 23, NULL, NULL),
(297, 'Muzaffarpur/मुज़फ्फरपुर', 'Muraul/मुरौल', 'MZ', 23, NULL, NULL),
(298, 'Muzaffarpur/मुज़फ्फरपुर', 'Musahari/मुशहरी', 'MZ', 23, NULL, NULL),
(299, 'Muzaffarpur/मुज़फ्फरपुर', 'Paru/पारू', 'MZ', 23, NULL, NULL),
(300, 'Muzaffarpur/मुज़फ्फरपुर', 'Sahebganj/साहेबगंज', 'MZ', 23, NULL, NULL),
(301, 'Muzaffarpur/मुज़फ्फरपुर', 'Sakra/सकरा', 'MZ', 23, NULL, NULL),
(302, 'Muzaffarpur/मुज़फ्फरपुर', 'Saraiya/सरैया', 'MZ', 23, NULL, NULL),
(303, 'Nalanda/नालन्दा', 'Asthawan/अस्थावां', 'NL', 24, NULL, NULL),
(304, 'Nalanda/नालन्दा', 'Ben/बेन', 'NL', 24, NULL, NULL),
(305, 'Nalanda/नालन्दा', 'Biharsharif/बिहारशरीफ', 'NL', 24, NULL, NULL),
(306, 'Nalanda/नालन्दा', 'Bind/बिन्द', 'NL', 24, NULL, NULL),
(307, 'Nalanda/नालन्दा', 'Chandi/चंडी', 'NL', 24, NULL, NULL),
(308, 'Nalanda/नालन्दा', 'Ekangarsarai/एकंगरसराय', 'NL', 24, NULL, NULL),
(309, 'Nalanda/नालन्दा', 'Giriyak/गिरियक', 'NL', 24, NULL, NULL),
(310, 'Nalanda/नालन्दा', 'Harnaut/हरनौत', 'NL', 24, NULL, NULL),
(311, 'Nalanda/नालन्दा', 'Hilsa/हिलसा', 'NL', 24, NULL, NULL),
(312, 'Nalanda/नालन्दा', 'Islampur/इसलामपुर', 'NL', 24, NULL, NULL),
(313, 'Nalanda/नालन्दा', 'Karaiparsurai/करायपरसुराय', 'NL', 24, NULL, NULL),
(314, 'Nalanda/नालन्दा', 'Katrisarai/कतरीसराय', 'NL', 24, NULL, NULL),
(315, 'Nalanda/नालन्दा', 'Nagarnausa/नगरनौसा', 'NL', 24, NULL, NULL),
(316, 'Nalanda/नालन्दा', 'Nursarai/नुरसराय', 'NL', 24, NULL, NULL),
(317, 'Nalanda/नालन्दा', 'Parwalpur/परवलपुर', 'NL', 24, NULL, NULL),
(318, 'Nalanda/नालन्दा', 'Rahui/रहुई', 'NL', 24, NULL, NULL),
(319, 'Nalanda/नालन्दा', 'Rajgir/राजगीर', 'NL', 24, NULL, NULL),
(320, 'Nalanda/नालन्दा', 'Sarmera/सरमेरा', 'NL', 24, NULL, NULL),
(321, 'Nalanda/नालन्दा', 'Silao/सिलाव', 'NL', 24, NULL, NULL),
(322, 'Nalanda/नालन्दा', 'Tharthari/थरथरी', 'NL', 24, NULL, NULL),
(323, 'Nawada/नवादा', 'Akbarpur/अकबरपुर', 'NW', 25, NULL, NULL),
(324, 'Nawada/नवादा', 'Govindpur/गोविंदपुर', 'NW', 25, NULL, NULL),
(325, 'Nawada/नवादा', 'Hisua/हिसुआ', 'NW', 25, NULL, NULL),
(326, 'Nawada/नवादा', 'Kasichak/काशीचक', 'NW', 25, NULL, NULL),
(327, 'Nawada/नवादा', 'Kauakol/कौआकोल', 'NW', 25, NULL, NULL),
(328, 'Nawada/नवादा', 'Meskaur/मेसकौर', 'NW', 25, NULL, NULL),
(329, 'Nawada/नवादा', 'Nardiganj/नारदीगंज', 'NW', 25, NULL, NULL),
(330, 'Nawada/नवादा', 'Narhat/नरहट', 'NW', 25, NULL, NULL),
(331, 'Nawada/नवादा', 'Nawada/नवादा', 'NW', 25, NULL, NULL),
(332, 'Nawada/नवादा', 'Pakribarawan/पकरीबरावां', 'NW', 25, NULL, NULL),
(333, 'Nawada/नवादा', 'Rajouli/रजौली', 'NW', 25, NULL, NULL),
(334, 'Nawada/नवादा', 'Roh/रोह', 'NW', 25, NULL, NULL),
(335, 'Nawada/नवादा', 'Sirdalla/सिरदला', 'NW', 25, NULL, NULL),
(336, 'Nawada/नवादा', 'Varsaliganj/वारिसलीगंज', 'NW', 25, NULL, NULL),
(337, 'Patna/पटना', 'Athmalgola/अथमलगोला', 'PA', 26, NULL, NULL),
(338, 'Patna/पटना', 'Bakhtiyarpur/बख्तियारपुर', 'PA', 26, NULL, NULL),
(339, 'Patna/पटना', 'Barh/बाढ़', 'PA', 26, NULL, NULL),
(340, 'Patna/पटना', 'Belchhi/बेलछी', 'PA', 26, NULL, NULL),
(341, 'Patna/पटना', 'Bihta/बिहटा', 'PA', 26, NULL, NULL),
(342, 'Patna/पटना', 'Bikram/बिक्रम', 'PA', 26, NULL, NULL),
(343, 'Patna/पटना', 'Danapur/दानापुर', 'PA', 26, NULL, NULL),
(344, 'Patna/पटना', 'Daniawan/दनियावां', 'PA', 26, NULL, NULL),
(345, 'Patna/पटना', 'Dhanarua/धनरुआ', 'PA', 26, NULL, NULL),
(346, 'Patna/पटना', 'Dulhinbazar/दुल्हिनबाजार', 'PA', 26, NULL, NULL),
(347, 'Patna/पटना', 'Fatuha/फतुहा', 'PA', 26, NULL, NULL),
(348, 'Patna/पटना', 'Ghoswari/घोसवरी', 'PA', 26, NULL, NULL),
(349, 'Patna/पटना', 'Khusrupur/खुसरूपुर', 'PA', 26, NULL, NULL),
(350, 'Patna/पटना', 'Maner/मनेर', 'PA', 26, NULL, NULL),
(351, 'Patna/पटना', 'Masaurhi/मसौढी', 'PA', 26, NULL, NULL),
(352, 'Patna/पटना', 'Mokama/मोकामा', 'PA', 26, NULL, NULL),
(353, 'Patna/पटना', 'Naubatpur/नौबतपुर', 'PA', 26, NULL, NULL),
(354, 'Patna/पटना', 'Paliganj/पालीगंज', 'PA', 26, NULL, NULL),
(355, 'Patna/पटना', 'Pandarak/पंडारक', 'PA', 26, NULL, NULL),
(356, 'Patna/पटना', 'Patna sadar/पटना सदर', 'PA', 26, NULL, NULL),
(357, 'Patna/पटना', 'Phulwarisharif/फुलवारी शरीफ', 'PA', 26, NULL, NULL),
(358, 'Patna/पटना', 'Punpun/पुनपुन', 'PA', 26, NULL, NULL),
(359, 'Patna/पटना', 'Sampatchak/सम्पतचक', 'PA', 26, NULL, NULL),
(360, 'Purnia/पूर्णिया', 'Amour/अमौर', 'PU', 27, NULL, NULL),
(361, 'Purnia/पूर्णिया', 'Baisa/बैसा', 'PU', 27, NULL, NULL),
(362, 'Purnia/पूर्णिया', 'Baisi/बैसि', 'PU', 27, NULL, NULL),
(363, 'Purnia/पूर्णिया', 'Banmankhi/बनमनखी', 'PU', 27, NULL, NULL),
(364, 'Purnia/पूर्णिया', 'Barhara/बरहरा', 'PU', 27, NULL, NULL),
(365, 'Purnia/पूर्णिया', 'Bhawanipur/भवानीपुर', 'PU', 27, NULL, NULL),
(366, 'Purnia/पूर्णिया', 'Dagarua/डगरुआ', 'PU', 27, NULL, NULL),
(367, 'Purnia/पूर्णिया', 'Dhamdaha/धमदाहा', 'PU', 27, NULL, NULL),
(368, 'Purnia/पूर्णिया', 'Jalalgarh/जलालगढ़', 'PU', 27, NULL, NULL),
(369, 'Purnia/पूर्णिया', 'kasba/क़स्बा', 'PU', 27, NULL, NULL),
(370, 'Purnia/पूर्णिया', 'Krityanand Nagar/कृत्यानंद नगर', 'PU', 27, NULL, NULL),
(371, 'Purnia/पूर्णिया', 'Purnea east/पूर्णिया ईस्ट', 'PU', 27, NULL, NULL),
(372, 'Purnia/पूर्णिया', 'Rupauli/रुपौली', 'PU', 27, NULL, NULL),
(373, 'Purnia/पूर्णिया', 'Srinagar/श्रीनगर', 'PU', 27, NULL, NULL),
(374, 'Rohtas/रोह्तास', 'Akorhigola/अकोढ़ीगोला', 'RO', 28, NULL, NULL),
(375, 'Rohtas/रोह्तास', 'Chenari/चेनारी', 'RO', 28, NULL, NULL),
(376, 'Rohtas/रोह्तास', 'Dawath/दावथ', 'RO', 28, NULL, NULL),
(377, 'Rohtas/रोह्तास', 'Dihri/डेहरी', 'RO', 28, NULL, NULL),
(378, 'Rohtas/रोह्तास', 'Dinara/दिनारा', 'RO', 28, NULL, NULL),
(379, 'Rohtas/रोह्तास', 'Karakat/काराकाट', 'RO', 28, NULL, NULL),
(380, 'Rohtas/रोह्तास', 'Kargahar/करगहर', 'RO', 28, NULL, NULL),
(381, 'Rohtas/रोह्तास', 'Kochas/कोचस', 'RO', 28, NULL, NULL),
(382, 'Rohtas/रोह्तास', 'Nasriganj/नासरीगंज', 'RO', 28, NULL, NULL),
(383, 'Rohtas/रोह्तास', 'Nauhatta/नौहट्टा', 'RO', 28, NULL, NULL),
(384, 'Rohtas/रोह्तास', 'Nokha/नोखा', 'RO', 28, NULL, NULL),
(385, 'Rohtas/रोह्तास', 'Rajpur/राजपुर ', 'RO', 28, NULL, NULL),
(386, 'Rohtas/रोह्तास', 'Rohtas/रोहतास', 'RO', 28, NULL, NULL),
(387, 'Rohtas/रोह्तास', 'Sanjhauli/संझौली', 'RO', 28, NULL, NULL),
(388, 'Rohtas/रोह्तास', 'Sasaram/सासाराम', 'RO', 28, NULL, NULL),
(389, 'Rohtas/रोह्तास', 'Shivsagar/शिवसागर', 'RO', 28, NULL, NULL),
(390, 'Rohtas/रोह्तास', 'Suryapura/सूर्यपुरा', 'RO', 28, NULL, NULL),
(391, 'Rohtas/रोह्तास', 'Tilauthu/तिलौथु', 'RO', 28, NULL, NULL),
(392, 'Rohtas/रोह्तास', 'Vikramganj/बिक्रमगंज', 'RO', 28, NULL, NULL),
(393, 'Saharsa/सहरसा', 'Banma Itahari/बनमा इटहरी', 'SH', 29, NULL, NULL),
(394, 'Saharsa/सहरसा', 'Kahra/कहरा', 'SH', 29, NULL, NULL),
(395, 'Saharsa/सहरसा', 'Mahishi/महिषी', 'SH', 29, NULL, NULL),
(396, 'Saharsa/सहरसा', 'Nauhatta/नौहट्टा', 'SH', 29, NULL, NULL),
(397, 'Saharsa/सहरसा', 'Patarghat/पतरघट', 'SH', 29, NULL, NULL),
(398, 'Saharsa/सहरसा', 'Salkhua/सलखुआ', 'SH', 29, NULL, NULL),
(399, 'Saharsa/सहरसा', 'Sattar Kateya/सत्तर कटैया', 'SH', 29, NULL, NULL),
(400, 'Saharsa/सहरसा', 'Saurbazar/सौर बाजार', 'SH', 29, NULL, NULL),
(401, 'Saharsa/सहरसा', 'Simari bakhatiyarpur/सिमरी बख्तियारपुर', 'SH', 29, NULL, NULL),
(402, 'Saharsa/सहरसा', 'Sonbarsa/सोनबरसा', 'SH', 29, NULL, NULL),
(403, 'Samastipur/समस्तीपुर', 'Bibhutipur/बिभूतिपुर', 'SM', 30, NULL, NULL),
(404, 'Samastipur/समस्तीपुर', 'Bithan/बिथान', 'SM', 30, NULL, NULL),
(405, 'Samastipur/समस्तीपुर', 'Dalsinghsarai/दलसिंहसराय', 'SM', 30, NULL, NULL),
(406, 'Samastipur/समस्तीपुर', 'Hasanpur/हसनपुर', 'SM', 30, NULL, NULL),
(407, 'Samastipur/समस्तीपुर', 'Jitwarpur samastipur/जितवारपुर समस्तीपुर', 'SM', 30, NULL, NULL),
(408, 'Samastipur/समस्तीपुर', 'Kalyanpur/कल्याणपुर', 'SM', 30, NULL, NULL),
(409, 'Samastipur/समस्तीपुर', 'Khanpur/खानपुर', 'SM', 30, NULL, NULL),
(410, 'Samastipur/समस्तीपुर', 'Mohanpur/मोहनपुर', 'SM', 30, NULL, NULL),
(411, 'Samastipur/समस्तीपुर', 'Mohiuddinnagar/मोहिउद्दीननगर', 'SM', 30, NULL, NULL),
(412, 'Samastipur/समस्तीपुर', 'Patori/पटोरी', 'SM', 30, NULL, NULL),
(413, 'Samastipur/समस्तीपुर', 'Pusa/पूसा', 'SM', 30, NULL, NULL),
(414, 'Samastipur/समस्तीपुर', 'Rosara/रोसड़ा', 'SM', 30, NULL, NULL),
(415, 'Samastipur/समस्तीपुर', 'Sarairanjan/सरायरंजन', 'SM', 30, NULL, NULL),
(416, 'Samastipur/समस्तीपुर', 'Shivajinagar/शिवाजीनगर', 'SM', 30, NULL, NULL),
(417, 'Samastipur/समस्तीपुर', 'Singhia/सिंघिया', 'SM', 30, NULL, NULL),
(418, 'Samastipur/समस्तीपुर', 'Tajpur Morwa/ताजपुर मोरवा', 'SM', 30, NULL, NULL),
(419, 'Samastipur/समस्तीपुर', 'Tajpur/ताजपुर', 'SM', 30, NULL, NULL),
(420, 'Samastipur/समस्तीपुर', 'Ujiyarpur/उजियारपुर', 'SM', 30, NULL, NULL),
(421, 'Samastipur/समस्तीपुर', 'Vidyapatinagar/विद्यापतिनगर', 'SM', 30, NULL, NULL),
(422, 'Samastipur/समस्तीपुर', 'Warisnagar/वारिसनगर', 'SM', 30, NULL, NULL),
(423, 'Saran/सारण', 'Amnaur/अमनौर', 'SR', 31, NULL, NULL),
(424, 'Saran/सारण', 'Baniapur/बनियापुर', 'SR', 31, NULL, NULL),
(425, 'Saran/सारण', 'Chapra/छपरा', 'SR', 31, NULL, NULL),
(426, 'Saran/सारण', 'Dariyapur/दरियापुर', 'SR', 31, NULL, NULL),
(427, 'Saran/सारण', 'Dighwara/दिघवारा', 'SR', 31, NULL, NULL),
(428, 'Saran/सारण', 'Ekma/एकमा', 'SR', 31, NULL, NULL),
(429, 'Saran/सारण', 'Garkha/गरखा', 'SR', 31, NULL, NULL),
(430, 'Saran/सारण', 'isuapur/इसुआपुर', 'SR', 31, NULL, NULL),
(431, 'Saran/सारण', 'Jalalpur/जलालपुर', 'SR', 31, NULL, NULL),
(432, 'Saran/सारण', 'Lahladpur/लहलादपुर', 'SR', 31, NULL, NULL),
(433, 'Saran/सारण', 'Maker/मकेर', 'SR', 31, NULL, NULL),
(434, 'Saran/सारण', 'Manjhi/मांझी', 'SR', 31, NULL, NULL),
(435, 'Saran/सारण', 'Marhaura/मढौरा', 'SR', 31, NULL, NULL),
(436, 'Saran/सारण', 'Masarakh/मशरक', 'SR', 31, NULL, NULL),
(437, 'Saran/सारण', 'Nagra/नगरा', 'SR', 31, NULL, NULL),
(438, 'Saran/सारण', 'Panapur/पानापुर', 'SR', 31, NULL, NULL),
(439, 'Saran/सारण', 'Parsa/परसा', 'SR', 31, NULL, NULL),
(440, 'Saran/सारण', 'Rivilganj/रिविलगंज', 'SR', 31, NULL, NULL),
(441, 'Saran/सारण', 'Sonepur/सोनपुर', 'SR', 31, NULL, NULL),
(442, 'Saran/सारण', 'Taraiya/तरैया', 'SR', 31, NULL, NULL),
(443, 'Sheikhpura/शेखपुरा', 'Ariari/अरियरी', 'SP', 32, NULL, NULL),
(444, 'Sheikhpura/शेखपुरा', 'Barbigha/बरबीघा', 'SP', 32, NULL, NULL),
(445, 'Sheikhpura/शेखपुरा', 'Chebara/चेवाड़ा', 'SP', 32, NULL, NULL),
(446, 'Sheikhpura/शेखपुरा', 'Ghatkusumba/घाटकुसुम्भा', 'SP', 32, NULL, NULL),
(447, 'Sheikhpura/शेखपुरा', 'Sheikpura/शेखपुरा', 'SP', 32, NULL, NULL),
(448, 'Sheikhpura/शेखपुरा', 'Shekhopur Sarai/शेखोपुर सराय', 'SP', 32, NULL, NULL),
(449, 'Sheohar/शिवहर', 'Dumrikatsari/डुमरी कटसरी', 'SO', 33, NULL, NULL),
(450, 'Sheohar/शिवहर', 'Piprahi/पिपराही', 'SO', 33, NULL, NULL),
(451, 'Sheohar/शिवहर', 'Puranhia/पुरनहिया', 'SO', 33, NULL, NULL),
(452, 'Sheohar/शिवहर', 'Sheohar/शिवहर', 'SO', 33, NULL, NULL),
(453, 'Sheohar/शिवहर', 'Tariyani/तरियानी', 'SO', 33, NULL, NULL),
(454, 'Sitamarhi/सीतामढ़ी', 'Bairgania/बैरगनियाँ', 'ST', 34, NULL, NULL),
(455, 'Sitamarhi/सीतामढ़ी', 'Bathnaha/बथनाहा', 'ST', 34, NULL, NULL),
(456, 'Sitamarhi/सीतामढ़ी', 'Bazpatti/बाजपट्टी', 'ST', 34, NULL, NULL),
(457, 'Sitamarhi/सीतामढ़ी', 'Belsand/बेल्सण्ड', 'ST', 34, NULL, NULL),
(458, 'Sitamarhi/सीतामढ़ी', 'Bokhra/बोखड़ा', 'ST', 34, NULL, NULL),
(459, 'Sitamarhi/सीतामढ़ी', 'Chorout/चोरौत', 'ST', 34, NULL, NULL),
(460, 'Sitamarhi/सीतामढ़ी', 'Dumra/डुमरा', 'ST', 34, NULL, NULL),
(461, 'Sitamarhi/सीतामढ़ी', 'Majorganj/मेजरगंज', 'ST', 34, NULL, NULL),
(462, 'Sitamarhi/सीतामढ़ी', 'Nanpur/नानपुर', 'ST', 34, NULL, NULL),
(463, 'Sitamarhi/सीतामढ़ी', 'Parihar/परिहार', 'ST', 34, NULL, NULL),
(464, 'Sitamarhi/सीतामढ़ी', 'Parsauni/परसौनी', 'ST', 34, NULL, NULL),
(465, 'Sitamarhi/सीतामढ़ी', 'Pupri/पुपरी', 'ST', 34, NULL, NULL),
(466, 'Sitamarhi/सीतामढ़ी', 'Riga/रीगा', 'ST', 34, NULL, NULL),
(467, 'Sitamarhi/सीतामढ़ी', 'Runni saidpur/रुन्नीसैदपुर', 'ST', 34, NULL, NULL),
(468, 'Sitamarhi/सीतामढ़ी', 'Sonbarsa/सोनबरसा', 'ST', 34, NULL, NULL),
(469, 'Sitamarhi/सीतामढ़ी', 'Suppi/सुप्पी', 'ST', 34, NULL, NULL),
(470, 'Sitamarhi/सीतामढ़ी', 'Sursand/सुरसंड', 'ST', 34, NULL, NULL),
(471, 'Siwan/सिवान', 'Aandar/आंदर', 'SW', 35, NULL, NULL),
(472, 'Siwan/सिवान', 'Baraharia/बरहरिया', 'SW', 35, NULL, NULL),
(473, 'Siwan/सिवान', 'Basantpur/बसंतपुर', 'SW', 35, NULL, NULL),
(474, 'Siwan/सिवान', 'Bhagwanpur Hat/भगवानपुर हाट', 'SW', 35, NULL, NULL),
(475, 'Siwan/सिवान', 'Darauli/दारौली', 'SW', 35, NULL, NULL),
(476, 'Siwan/सिवान', 'Daraunda/दरौंधा', 'SW', 35, NULL, NULL),
(477, 'Siwan/सिवान', 'Goriyakothi/गोरेयाकोठी', 'SW', 35, NULL, NULL),
(478, 'Siwan/सिवान', 'Guthani/गुठनी', 'SW', 35, NULL, NULL),
(479, 'Siwan/सिवान', 'Hasanpura/हसनपुरा ', 'SW', 35, NULL, NULL),
(480, 'Siwan/सिवान', 'Husainaganj/हुसैनगंज', 'SW', 35, NULL, NULL),
(481, 'Siwan/सिवान', 'Jiradei/ज़िरादई', 'SW', 35, NULL, NULL),
(482, 'Siwan/सिवान', 'Lakari Nabiganj/लकरी नबीगंज', 'SW', 35, NULL, NULL),
(483, 'Siwan/सिवान', 'Maharajganj/महाराजगंज', 'SW', 35, NULL, NULL),
(484, 'Siwan/सिवान', 'Mairwan/मैरवा', 'SW', 35, NULL, NULL),
(485, 'Siwan/सिवान', 'Nautan/नौतन', 'SW', 35, NULL, NULL),
(486, 'Siwan/सिवान', 'Pachrukhi/पचरुखी', 'SW', 35, NULL, NULL),
(487, 'Siwan/सिवान', 'Raghunathpur/रघुनाथपुर', 'SW', 35, NULL, NULL),
(488, 'Siwan/सिवान', 'Siswan/सिसवन', 'SW', 35, NULL, NULL),
(489, 'Siwan/सिवान', 'Siwan Sadar/सिवान सदर', 'SW', 35, NULL, NULL),
(490, 'Supaul/सुपौल', 'Basantpur/बसंतपुर', 'SU', 36, NULL, NULL),
(491, 'Supaul/सुपौल', 'Chhatapur/छातापुर', 'SU', 36, NULL, NULL),
(492, 'Supaul/सुपौल', 'Kishunpur/किशनपुर', 'SU', 36, NULL, NULL),
(493, 'Supaul/सुपौल', 'Marauna/मरौना', 'SU', 36, NULL, NULL),
(494, 'Supaul/सुपौल', 'Nirmali/निर्मली', 'SU', 36, NULL, NULL),
(495, 'Supaul/सुपौल', 'Pipara/पिपरा', 'SU', 36, NULL, NULL),
(496, 'Supaul/सुपौल', 'Pratapganj/प्रतापगंज', 'SU', 36, NULL, NULL),
(497, 'Supaul/सुपौल', 'Raghopur/राघोपुर', 'SU', 36, NULL, NULL),
(498, 'Supaul/सुपौल', 'Saraigarh Bhaptiyahi/सरायगढ़ -भपटियाही', 'SU', 36, NULL, NULL),
(499, 'Supaul/सुपौल', 'Supaul/सुपौल', 'SU', 36, NULL, NULL),
(500, 'Supaul/सुपौल', 'Triveniganj/त्रिवेणीगंज', 'SU', 36, NULL, NULL),
(501, 'Vaishali/वैशाली', 'Bhagwanpur/भगवानपुर ', 'VA', 37, NULL, NULL),
(502, 'Vaishali/वैशाली', 'Bidupur/बिदुपुर', 'VA', 37, NULL, NULL),
(503, 'Vaishali/वैशाली', 'Chehrakala/चेहराकलां', 'VA', 37, NULL, NULL),
(504, 'Vaishali/वैशाली', 'Desari/देसरी', 'VA', 37, NULL, NULL),
(505, 'Vaishali/वैशाली', 'Goraul/गोरौल', 'VA', 37, NULL, NULL),
(506, 'Vaishali/वैशाली', 'Hazipur/हाजीपुर', 'VA', 37, NULL, NULL),
(507, 'Vaishali/वैशाली', 'Jandaha/जन्दाहा', 'VA', 37, NULL, NULL),
(508, 'Vaishali/वैशाली', 'Lalganj/लालगंज', 'VA', 37, NULL, NULL),
(509, 'Vaishali/वैशाली', 'Mahnar/महनार', 'VA', 37, NULL, NULL),
(510, 'Vaishali/वैशाली', 'Mahua/महुआ', 'VA', 37, NULL, NULL),
(511, 'Vaishali/वैशाली', 'Patedhi-Belsar/पटेढ़ी बेलसर', 'VA', 37, NULL, NULL),
(512, 'Vaishali/वैशाली', 'Patepur/पातेपुर', 'VA', 37, NULL, NULL),
(513, 'Vaishali/वैशाली', 'Raghopur/राघोपुर', 'VA', 37, NULL, NULL),
(514, 'Vaishali/वैशाली', 'Razapakar/राजापाकर', 'VA', 37, NULL, NULL),
(515, 'Vaishali/वैशाली', 'Sahdeibuzurg/सहदेई बुज़ुर्ग ', 'VA', 37, NULL, NULL),
(516, 'Vaishali/वैशाली', 'Vaishali/वैशाली', 'VA', 37, NULL, NULL),
(517, 'West Champaran/पश्चिमी चंपारण', 'Bagaha-1/बगहा-१', 'WC', 38, NULL, NULL),
(518, 'West Champaran/पश्चिमी चंपारण', 'Bagaha-2/बगहा-२', 'WC', 38, NULL, NULL),
(519, 'West Champaran/पश्चिमी चंपारण', 'Bairia/बैरिया', 'WC', 38, NULL, NULL),
(520, 'West Champaran/पश्चिमी चंपारण', 'Bettiah/बेतिया', 'WC', 38, NULL, NULL),
(521, 'West Champaran/पश्चिमी चंपारण', 'Bhitaha/भितहा', 'WC', 38, NULL, NULL),
(522, 'West Champaran/पश्चिमी चंपारण', 'Chanpattia/चनपटिया', 'WC', 38, NULL, NULL),
(523, 'West Champaran/पश्चिमी चंपारण', 'Gaunaha/गौनहा', 'WC', 38, NULL, NULL),
(524, 'West Champaran/पश्चिमी चंपारण', 'Jogapatti/जोगापट्टी', 'WC', 38, NULL, NULL),
(525, 'West Champaran/पश्चिमी चंपारण', 'Lauria/लौरिया', 'WC', 38, NULL, NULL),
(526, 'West Champaran/पश्चिमी चंपारण', 'Madhubani/मधुबनी', 'WC', 38, NULL, NULL),
(527, 'West Champaran/पश्चिमी चंपारण', 'Mainatand/मैनाटांड', 'WC', 38, NULL, NULL),
(528, 'West Champaran/पश्चिमी चंपारण', 'Manjhaulia/मझौलिया', 'WC', 38, NULL, NULL),
(529, 'West Champaran/पश्चिमी चंपारण', 'Narkatiaganj/नरकटियागंज', 'WC', 38, NULL, NULL),
(530, 'West Champaran/पश्चिमी चंपारण', 'Nautan/नौतन', 'WC', 38, NULL, NULL),
(531, 'West Champaran/पश्चिमी चंपारण', 'Piprasiपिपरासी', 'WC', 38, NULL, NULL),
(532, 'West Champaran/पश्चिमी चंपारण', 'Ramnagar/रामनगर', 'WC', 38, NULL, NULL),
(533, 'West Champaran/पश्चिमी चंपारण', 'Sikta/सिकटा', 'WC', 38, NULL, NULL),
(534, 'West Champaran/पश्चिमी चंपारण', 'Thakraha/ठकराहा', 'WC', 38, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbldistrict`
--

CREATE TABLE `tbldistrict` (
  `DistrictId` int(11) NOT NULL,
  `DistrictName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DistrictCode` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DistrictNumber` int(11) NOT NULL,
  `StateName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Temp1` int(11) DEFAULT NULL,
  `Temp2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbldistrict`
--

INSERT INTO `tbldistrict` (`DistrictId`, `DistrictName`, `DistrictCode`, `DistrictNumber`, `StateName`, `Temp1`, `Temp2`) VALUES
(1, 'Araria/अररिया', 'AR', 1, 'Bihar/बिहार', NULL, NULL),
(2, 'Arwal/अरवल', 'AW', 2, 'Bihar/बिहार', NULL, NULL),
(3, 'Aurangabad/औरंगाबाद', 'AU', 3, 'Bihar/बिहार', NULL, NULL),
(4, 'Banka/बांका', 'BA', 4, 'Bihar/बिहार', NULL, NULL),
(5, 'Begusarai/बेगुसराय', 'BE', 5, 'Bihar/बिहार', NULL, NULL),
(6, 'Bhagalpur/भागलपुर', 'BG', 6, 'Bihar/बिहार', NULL, NULL),
(7, 'Bhojpur/भोजपुर', 'BJ', 7, 'Bihar/बिहार', NULL, NULL),
(8, 'Buxar/बक्सर', 'BU', 8, 'Bihar/बिहार', NULL, NULL),
(9, 'Darbhanga/दरभंगा', 'DA', 9, 'Bihar/बिहार', NULL, NULL),
(10, 'East Champaran/पूर्वी चम्पारण', 'EC', 10, 'Bihar/बिहार', NULL, NULL),
(11, 'Gaya/गया', 'GA', 11, 'Bihar/बिहार', NULL, NULL),
(12, 'Gopalganj/गोपालगंज', 'GO', 12, 'Bihar/बिहार', NULL, NULL),
(13, 'Jamui/जमुई', 'JA', 13, 'Bihar/बिहार', NULL, NULL),
(14, 'Jehanabad/जहानाबाद', 'JE', 14, 'Bihar/बिहार', NULL, NULL),
(15, 'Kaimur/कैमूर', 'KM', 15, 'Bihar/बिहार', NULL, NULL),
(16, 'Katihar/कटिहार', 'KT', 16, 'Bihar/बिहार', NULL, NULL),
(17, 'Khagaria/खगड़िया', 'KH', 17, 'Bihar/बिहार', NULL, NULL),
(18, 'Kishanganj/किशनगंज', 'KI', 18, 'Bihar/बिहार', NULL, NULL),
(19, 'Lakhisarai/लखीसराय', 'LA', 19, 'Bihar/बिहार', NULL, NULL),
(20, 'Madhepura/मधेपुरा', 'MP', 20, 'Bihar/बिहार', NULL, NULL),
(21, 'Madhubani/मधुबनी', 'MB', 21, 'Bihar/बिहार', NULL, NULL),
(22, 'Munger/मुंगेर', 'MG', 22, 'Bihar/बिहार', NULL, NULL),
(23, 'Muzaffarpur/मुज़फ्फरपुर', 'MZ', 23, 'Bihar/बिहार', NULL, NULL),
(24, 'Nalanda/नालन्दा', 'NL', 24, 'Bihar/बिहार', NULL, NULL),
(25, 'Nawada/नवादा', 'NW', 25, 'Bihar/बिहार', NULL, NULL),
(26, 'Patna/पटना', 'PA', 26, 'Bihar/बिहार', NULL, NULL),
(27, 'Purnia/पूर्णिया', 'PU', 27, 'Bihar/बिहार', NULL, NULL),
(28, 'Rohtas/रोह्तास', 'RO', 28, 'Bihar/बिहार', NULL, NULL),
(29, 'Saharsa/सहरसा', 'SH', 29, 'Bihar/बिहार', NULL, NULL),
(30, 'Samastipur/समस्तीपुर', 'SM', 30, 'Bihar/बिहार', NULL, NULL),
(31, 'Saran/सारण', 'SR', 31, 'Bihar/बिहार', NULL, NULL),
(32, 'Sheikhpura/शेखपुरा', 'SP', 32, 'Bihar/बिहार', NULL, NULL),
(33, 'Sheohar/शिवहर', 'SO', 33, 'Bihar/बिहार', NULL, NULL),
(34, 'Sitamarhi/सीतामढ़ी', 'ST', 34, 'Bihar/बिहार', NULL, NULL),
(35, 'Siwan/सिवान', 'SW', 35, 'Bihar/बिहार', NULL, NULL),
(36, 'Supaul/सुपौल', 'SU', 36, 'Bihar/बिहार', NULL, NULL),
(37, 'Vaishali/वैशाली', 'VA', 37, 'Bihar/बिहार', NULL, NULL),
(38, 'West Champaran/पश्चिमी चंपारण', 'WC', 38, 'Bihar/बिहार', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluserprofile`
--

CREATE TABLE `tbluserprofile` (
  `ProfileId` int(11) NOT NULL,
  `FirstName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MobileNumber` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProfileImagePath` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `District` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Block` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `Temp1` int(11) DEFAULT NULL,
  `Temp2` int(11) DEFAULT NULL,
  `Temp3` int(11) DEFAULT NULL,
  `Temp4` int(11) DEFAULT NULL,
  `EntryHash` varchar(50) GENERATED ALWAYS AS (md5(concat_ws(_utf8mb4'',`FirstName`,`LastName`,`MobileNumber`,`Email`,`District`,`Block`))) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbluserprofile`
--

INSERT INTO `tbluserprofile` (`ProfileId`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `ProfileImagePath`, `Address`, `District`, `Block`, `UserId`, `Temp1`, `Temp2`, `Temp3`, `Temp4`) VALUES
(1, 'a', 'byt', '9876543210', 'abcdefg@gmail.com', 'agdhdgsfg/hjsagfjh/hjhfgh/kjkj', 'gghj: jhjdshfjh; ps:hghjgjh, pin:78768975', 'tahora', 'gojjkhgjh/hjhgjhgjh', 0, NULL, NULL, NULL, NULL),
(3, 'a', 'br', '99876543210', 'qqqqabcdefg@gmail.com', 'bvjrtthjhf', 'hggjghfjh', 'hfghfghg', 'jhgjghjgh', 0, NULL, NULL, NULL, NULL),
(4, 'tim', 'work', '9876543210', 'timwork@gmail.com', 'asfdsfd', 'dgfdhgfh', 'raat', 'baat', 0, NULL, NULL, NULL, NULL),
(6, 'timk', 'work', '9876543210', 'limwork@gmail.com', 'asfdsfd', 'dgfdhgfh', 'raat', 'baat', 0, NULL, NULL, NULL, NULL),
(7, 'tash', 'kash', '99999999999', 'erereabcdefg@gmail.com', 'fgerg hefgd', 'hjkhhjhjhjk', 'tuyio', 'BHjkty', 0, NULL, NULL, NULL, NULL),
(9, 'amit', 'Kumar', '9910926192', 'shreesh92@gmal.com', '7c9236e55dcc46be8da21e2ff490645a.jpg', 'Sunderpur, Pirpainti , Bhagalpur-Bihar-913209', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(10, 'Lokesh', 'Kid', '9910926192', 'shreesh92@gmal.com', 'b4c08f4395b44fb4b2988a1acbeb0fc9.jpg', 'Sunderpur, Pirpainti , Bhagalpur-Bihar-913209', NULL, NULL, 6, NULL, NULL, NULL, NULL);

--
-- Triggers `tbluserprofile`
--
DELIMITER $$
CREATE TRIGGER `After_UserProfile_Update` BEFORE UPDATE ON `tbluserprofile` FOR EACH ROW BEGIN
INSERT IGNORE INTO `logUserProfile`(`ProfileId`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `ProfileImagePath`, `Address`, `District`, `Block`, `Temp1`, `Temp2`, `Temp3`, `Temp4`)
SELECT `ProfileId`,`FirstName`, `LastName`, `MobileNumber`, `Email`, `ProfileImagePath`, `Address`, `District`, `Block`, `Temp1`, `Temp2`, `Temp3`, `Temp4` FROM `tblUserProfile` WHERE ProfileId=OLD.ProfileId;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbluserregistration`
--

CREATE TABLE `tbluserregistration` (
  `UserId` int(11) NOT NULL,
  `MobileNumber` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PasswordHash` blob NOT NULL,
  `PasswordSalt` blob NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 0,
  `Type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastLogin` int(11) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Temp1` int(11) DEFAULT NULL,
  `Temp2` int(11) DEFAULT NULL,
  `Temp3` int(11) DEFAULT NULL,
  `Temp4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbluserregistration`
--

INSERT INTO `tbluserregistration` (`UserId`, `MobileNumber`, `PasswordHash`, `PasswordSalt`, `IsActive`, `Type`, `LastLogin`, `CreatedDate`, `Temp1`, `Temp2`, `Temp3`, `Temp4`) VALUES
(1, 'admin', 0x5e61ff75a739b510088140315294b3afa5db192e3486ba7f0d9cfb8d228ef3f6959e1fb35ce383a62bc0992498d1e274626bc7823237da0aba971e13a7ff13d1000000000000000000000000000000000000000000000000000000000000000000000000, 0x42c1f797fd061c18efd00bb0f7f8a335aebe17d8a7a78bea3de3c90a845dd35cca9714a1d861243922805cc519b39b61431c8906a9e5abcdfb47349912f59d59a17f1f1426f82916999e8bacaab7446ea09eecc658ed6cbeaf2b4bb91d1ebc2b669b099b, 0, NULL, NULL, '2021-07-24 11:30:41', NULL, NULL, NULL, NULL),
(2, 'aa', 0x89b89a6637ad8149b3005eed1ce06c632418b7d0812517691f02bd8ffd72c3ef04e4c1f10b9bdc15beb86e97a0df974acd30e4e5d4961022e81480debc7cab6b, 0xc077f8fcce96c2c826bba3b6b93694dcf78e89a8b58665ce71dd2945e38af41be2a66ad2bda85c04bec6a3a355cda30e9fc7f656a14db0deb09103adc20d0ffa255952ff2dbad5230e31f6bc3626ec59ab6ad4ab06aebb27e944cbb8740aa2216d1f7e34d7118b5b609e64e6494e801a12bf09af87ba9d2593182656fca9072a, 0, NULL, NULL, '2021-07-24 11:47:52', NULL, NULL, NULL, NULL),
(3, 'a', 0xafc939269f48e5b3e57dda24782866a20fee6532faa1552ca820e0ffeeec80826afcaff410891af06a467aeffc692839be8bbefcc2755a17ef600a1eef426437, 0xfafa25ff86ecaf0f9232f85cc28d3e64015d8b49313c9736bfa9201e81be8e3499db73eca4d6c892a86c7985233fc1235d2a771786dfa08b1ff6ee781fbc4bd1485d0a88b34319431df1b28db57eab975e93dc05ce564cdb66863ddea6599f579500e8e23bd7cd91500d5668d1b2d1907e31f44521e54956065f24f7391e11ea, 0, NULL, NULL, '2021-07-24 11:56:30', NULL, NULL, NULL, NULL),
(4, 'bb', 0xf71ea81afd07ba739e4cace37a420010c4014b23129162164b3572e1e9b6b9e4c3ad04316d9c3fd4848b9fb405f349d0e02e6f2556baacc8fa01953cae3186b9, 0xca34c87b74169be8a44b1b281e740a3b2aaf0feb09c1619d9aba0ee6cc146cffd069873f44a136aa229271fe521d90d2e9080dd90500bde72c5622aa6e2ae2b884ac45a9e38705523b2efe386ec58cad8ddd95dafe9689436a5196cbc4210bbe6db7610d68aa6adf9d999a0c3578c13bca62d06cdc25ec2412ce3769d5c523f2, 0, NULL, NULL, '2021-07-24 12:13:14', NULL, NULL, NULL, NULL),
(5, 'qq', 0x04483e880ecfd31aae3225c6c22c9059f48d16f83201f944bfc9df2f552b688977117f3ab4692b3696f521f0926393ff6b490120d5382d1139d28084a65854bc, 0x105736f1aaccd27e98d93c9daf902758f8172f74ecdf786248de1fb18b95ddec885e840b8ea0a82e519edb660fc630315e8f6046f3d317dd882685e51ce2c6de8d3c27e4800b2da0a4fbbbec1a4792adce7cfb81df44dcbf2f88a90b227e464044c894fb6d48ed7d198e1d8ee385ed639017eaa05439816f93d6ba97110d3172, 0, NULL, NULL, '2021-07-24 12:48:40', NULL, NULL, NULL, NULL),
(6, 'lokesh', 0xd8e0f6b5553b0632e898851d4ed0c540711a792e82e9715d850f70a98075e8f381926a16e364176f39b29bf6454a7780ba166f56861118733799d668e4457f9c, 0x8403bafd5a8f82ee95ed1e1aa6c923a4497ec178642f947ec973f346339b56c8c0c89d78f378df91a4c082e03b8f0e569df40adf1ce8d2c3fe6829899cb508b50fa0fb698d895718c6f6423f89dfc7ffd6f8f8c451dc682142324de4ab9b8ea0f24b2ba58267c4a28bf2330dde006cc2e7a621a9de89d4587bc26c8d70b81470, 0, NULL, NULL, '2021-07-31 06:45:58', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

CREATE TABLE `tblvehicle` (
  `VehicleId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `VehicleOwnerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleDescription` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsDL` tinyint(1) NOT NULL,
  `VehicleOwnerType` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleType` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleNumber` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleLocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `District` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Block` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleContactNumber` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AlternativeContactNumber` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VehicleImagePath` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 0,
  `Temp2` int(11) DEFAULT NULL,
  `Temp3` int(11) DEFAULT NULL,
  `Temp4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`VehicleId`, `UserId`, `VehicleOwnerName`, `VehicleDescription`, `IsDL`, `VehicleOwnerType`, `VehicleType`, `VehicleNumber`, `VehicleLocation`, `District`, `Block`, `VehicleContactNumber`, `AlternativeContactNumber`, `VehicleImagePath`, `IsActive`, `Temp2`, `Temp3`, `Temp4`) VALUES
(1, 2, 'Ankur Singh', NULL, 1, '', 'Car', 'BR-11-H2022', 'At-Sunderpur, Po+Ps- Pirpainti', 'East Champaran/पूर्वी चम्पारण', 'Paharpur/पहाड़पुर', '9952687545', '9985425785', 'a949460a48904810907743830ec77af6.jpg', 0, NULL, NULL, NULL),
(2, 6, 'igfjk', NULL, 1, '', 'Bus', 'gfh', 'ghh', 'Jehanabad/जहानाबाद', 'Makhdumpur/मखदुमपुर', 'jkbkjb', 'fhdfh', '6ae80fbcd64748d996eafc9db10b81e0.png', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicletype`
--

CREATE TABLE `tblvehicletype` (
  `VId` int(11) NOT NULL,
  `VehicleTypes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblvehicletype`
--

INSERT INTO `tblvehicletype` (`VId`, `VehicleTypes`) VALUES
(1, 'Car'),
(2, 'Bus'),
(3, 'Auto'),
(4, 'Trackter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loguserprofile`
--
ALTER TABLE `loguserprofile`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `EntryHash` (`EntryHash`),
  ADD KEY `logUserProfile_ProfileIdfk_1` (`ProfileId`);

--
-- Indexes for table `tblbblock`
--
ALTER TABLE `tblbblock`
  ADD PRIMARY KEY (`BlockId`),
  ADD KEY `DistrictNumber` (`DistrictNumber`);

--
-- Indexes for table `tbldistrict`
--
ALTER TABLE `tbldistrict`
  ADD PRIMARY KEY (`DistrictId`),
  ADD UNIQUE KEY `DistrictNumber` (`DistrictNumber`);

--
-- Indexes for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  ADD PRIMARY KEY (`ProfileId`),
  ADD UNIQUE KEY `EntryHash` (`EntryHash`);

--
-- Indexes for table `tbluserregistration`
--
ALTER TABLE `tbluserregistration`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  ADD PRIMARY KEY (`VehicleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loguserprofile`
--
ALTER TABLE `loguserprofile`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblbblock`
--
ALTER TABLE `tblbblock`
  MODIFY `BlockId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT for table `tbldistrict`
--
ALTER TABLE `tbldistrict`
  MODIFY `DistrictId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  MODIFY `ProfileId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluserregistration`
--
ALTER TABLE `tbluserregistration`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  MODIFY `VehicleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loguserprofile`
--
ALTER TABLE `loguserprofile`
  ADD CONSTRAINT `logUserProfile_ProfileIdfk_1` FOREIGN KEY (`ProfileId`) REFERENCES `tbluserprofile` (`ProfileId`);

--
-- Constraints for table `tblbblock`
--
ALTER TABLE `tblbblock`
  ADD CONSTRAINT `bBlock_DistNo_IDFK1` FOREIGN KEY (`DistrictNumber`) REFERENCES `tbldistrict` (`DistrictNumber`);

--
-- Constraints for table `tbldistrict`
--
ALTER TABLE `tbldistrict`
  ADD CONSTRAINT `distNo_Block_IDFK1` FOREIGN KEY (`DistrictNumber`) REFERENCES `tblbblock` (`DistrictNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
