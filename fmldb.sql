-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2014 at 12:31 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fmldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `oa_accounts`
--

CREATE TABLE IF NOT EXISTS `oa_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accounts_person_id` int(11) NOT NULL,
  `accounts_type_id` int(11) NOT NULL,
  `accounts_value` varchar(300) NOT NULL,
  `accounts_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `oa_accounts`
--

INSERT INTO `oa_accounts` (`id`, `accounts_person_id`, `accounts_type_id`, `accounts_value`, `accounts_valid`) VALUES
(1, 1, 1, 'umair3', 1),
(2, 1, 3, 'umair.anwr@gmail.com', 1),
(3, 1, 3, 'umair.anwr@gmail.com', 1),
(4, 2, 1, '@itsaadee', 1),
(5, 3, 1, '@fbhutto', 1),
(6, 4, 1, '@AzharMahmood11', 1),
(7, 5, 1, '@husainhaqqani', 1),
(8, 6, 1, '@MaryamNSharif', 1),
(9, 7, 1, '@SenRehmanMalik', 1),
(10, 8, 1, '@REALsaeedajmal', 1),
(11, 9, 1, '@sharmeenochinoy', 1),
(12, 10, 1, '@realshoaibmalik', 1),
(13, 11, 1, '@SrBachchan', 1),
(14, 12, 1, '@priyankachopra', 1),
(15, 13, 1, '@BeingSalmanKhan', 1),
(16, 14, 1, '@LeoDiCaprio', 1),
(17, 15, 1, '@BillGates', 1),
(18, 16, 1, '@AwaisAnwar47', 1),
(19, 17, 1, '@Jemima_Khan', 1),
(20, 18, 1, '@piersmorgan', 1),
(21, 19, 1, '@WilliamJHague', 1),
(22, 20, 1, '@tomfriedman', 1),
(23, 21, 1, '@aamir_khan', 1),
(24, 22, 1, '@HalaGorani', 1),
(25, 23, 1, '@AfridiOriginal', 1),
(26, 23, 1, '', 1),
(27, 23, 1, '', 1),
(28, 24, 1, '@hwinkler4real', 1),
(29, 25, 1, '@AfridiOriginal', 1),
(30, 25, 1, '', 1),
(31, 25, 1, '', 1),
(32, 26, 1, '', 1),
(33, 27, 1, '@AfridiOriginal', 1),
(34, 27, 1, '', 1),
(35, 27, 1, '', 1),
(36, 28, 1, '@EmWatson', 1),
(37, 29, 1, '@HackedOffHugh', 1),
(38, 30, 1, '@imVkohli', 1),
(39, 31, 1, '@sachin_rt', 1),
(40, 32, 1, '@YUVSTRONG12', 1),
(41, 33, 1, '@amlahash', 1),
(42, 34, 1, '@msdhoni', 1),
(43, 35, 1, '@GautamGambhir', 1),
(44, 36, 1, '@harbhajan_singh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oa_account_types`
--

CREATE TABLE IF NOT EXISTS `oa_account_types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_title` varchar(100) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oa_account_types`
--

INSERT INTO `oa_account_types` (`type_id`, `type_title`) VALUES
(1, 'Twitter'),
(2, 'Facebook'),
(3, 'Email'),
(4, 'LinkedIn');

-- --------------------------------------------------------

--
-- Table structure for table `oa_activities`
--

CREATE TABLE IF NOT EXISTS `oa_activities` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `activity` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `deleted` tinyint(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `oa_activities`
--

INSERT INTO `oa_activities` (`activity_id`, `user_id`, `activity`, `module`, `created_on`, `deleted`) VALUES
(1, 1, 'logged in from: 108.162.222.205', 'users', '2013-07-05 22:34:21', 0),
(2, 1, 'updated their profile: Umair', 'users', '2013-07-05 22:36:11', 0),
(3, 1, 'App settings saved from: 108.162.222.205', 'core', '2013-07-05 22:44:50', 0),
(4, 1, 'App settings saved from: 108.162.222.205', 'core', '2013-07-05 22:45:15', 0),
(5, 1, 'App settings saved from: 108.162.222.205', 'core', '2013-07-05 22:46:22', 0),
(6, 1, 'logged out from: 108.162.222.205', 'users', '2013-07-05 22:48:55', 0),
(7, 1, 'logged in from: 108.162.222.205', 'users', '2013-07-05 22:49:41', 0),
(8, 1, 'logged in from: 103.22.201.70', 'users', '2013-07-06 22:34:58', 0),
(9, 1, 'Created Module: persons : 103.22.201.70', 'modulebuilder', '2013-07-06 22:45:19', 0),
(10, 1, 'logged out from: 103.22.201.70', 'users', '2013-07-06 22:54:56', 0),
(11, 1, 'logged in from: 103.22.201.70', 'users', '2013-07-06 22:55:16', 0),
(12, 1, 'logged in from: 108.162.222.205', 'users', '2013-07-08 12:12:55', 0),
(13, 1, 'Created Module: countries : 108.162.222.205', 'modulebuilder', '2013-07-08 12:35:39', 0),
(14, 1, 'Deleted Module: countries : 108.162.222.205', 'builder', '2013-07-08 12:37:56', 0),
(15, 1, 'Created Module: continents : 108.162.222.205', 'modulebuilder', '2013-07-08 12:40:07', 0),
(16, 1, 'Created Module: countries : 108.162.222.205', 'modulebuilder', '2013-07-08 13:04:49', 0),
(17, 1, 'logged in from: 108.162.222.205', 'users', '2013-07-08 21:45:57', 0),
(18, 1, 'logged out from: 108.162.222.205', 'users', '2013-07-08 22:49:08', 0),
(19, 1, 'logged in from: 108.162.222.45', 'users', '2013-07-09 08:45:33', 0),
(20, 1, 'logged out from: 108.162.222.45', 'users', '2013-07-09 08:47:39', 0),
(21, 1, 'logged in from: 108.162.222.6', 'users', '2013-07-11 06:11:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oa_continents`
--

CREATE TABLE IF NOT EXISTS `oa_continents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `continents_code` char(2) NOT NULL,
  `continents_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `oa_continents`
--

INSERT INTO `oa_continents` (`id`, `continents_code`, `continents_name`) VALUES
(1, 'AF', 'Africa'),
(2, 'AS', 'Asia'),
(3, 'EU', 'Europe'),
(4, 'NA', 'North America'),
(5, 'SA', 'South America'),
(6, 'OC', 'Oceania'),
(7, 'AN', 'Antarctica');

-- --------------------------------------------------------

--
-- Table structure for table `oa_countries`
--

CREATE TABLE IF NOT EXISTS `oa_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countries_code` char(2) NOT NULL,
  `countries_name` varchar(255) NOT NULL,
  `countries_full_name` varchar(255) NOT NULL,
  `countries_iso3` char(3) NOT NULL,
  `countries_number` smallint(3) NOT NULL,
  `countries_continent_code` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=250 ;

--
-- Dumping data for table `oa_countries`
--

INSERT INTO `oa_countries` (`id`, `countries_code`, `countries_name`, `countries_full_name`, `countries_iso3`, `countries_number`, `countries_continent_code`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', 4, 'AS'),
(2, 'AX', 'Åland Islands', 'Åland Islands', 'ALA', 248, 'EU'),
(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', 8, 'EU'),
(4, 'DZ', 'Algeria', 'People''s Democratic Republic of Algeria', 'DZA', 12, 'AF'),
(5, 'AS', 'American Samoa', 'American Samoa', 'ASM', 16, 'OC'),
(6, 'AD', 'Andorra', 'Principality of Andorra', 'AND', 20, 'EU'),
(7, 'AO', 'Angola', 'Republic of Angola', 'AGO', 24, 'AF'),
(8, 'AI', 'Anguilla', 'Anguilla', 'AIA', 660, 'NA'),
(9, 'AQ', 'Antarctica', 'Antarctica (the territory South of 60 deg S)', 'ATA', 10, 'AN'),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', 28, 'NA'),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', 32, 'SA'),
(12, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', 51, 'AS'),
(13, 'AW', 'Aruba', 'Aruba', 'ABW', 533, 'NA'),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', 36, 'OC'),
(15, 'AT', 'Austria', 'Republic of Austria', 'AUT', 40, 'EU'),
(16, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', 31, 'AS'),
(17, 'BS', 'Bahamas', 'Commonwealth of the Bahamas', 'BHS', 44, 'NA'),
(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', 48, 'AS'),
(19, 'BD', 'Bangladesh', 'People''s Republic of Bangladesh', 'BGD', 50, 'AS'),
(20, 'BB', 'Barbados', 'Barbados', 'BRB', 52, 'NA'),
(21, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', 112, 'EU'),
(22, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', 56, 'EU'),
(23, 'BZ', 'Belize', 'Belize', 'BLZ', 84, 'NA'),
(24, 'BJ', 'Benin', 'Republic of Benin', 'BEN', 204, 'AF'),
(25, 'BM', 'Bermuda', 'Bermuda', 'BMU', 60, 'NA'),
(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', 64, 'AS'),
(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', 68, 'SA'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 'NA'),
(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', 70, 'EU'),
(30, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', 72, 'AF'),
(31, 'BV', 'Bouvet Island (Bouvetoya)', 'Bouvet Island (Bouvetoya)', 'BVT', 74, 'AN'),
(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', 76, 'SA'),
(33, 'IO', 'British Indian Ocean Territory (Chagos Archipelago)', 'British Indian Ocean Territory (Chagos Archipelago)', 'IOT', 86, 'AS'),
(34, 'VG', 'British Virgin Islands', 'British Virgin Islands', 'VGB', 92, 'NA'),
(35, 'BN', 'Brunei Darussalam', 'Brunei Darussalam', 'BRN', 96, 'AS'),
(36, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', 100, 'EU'),
(37, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', 854, 'AF'),
(38, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', 108, 'AF'),
(39, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', 116, 'AS'),
(40, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', 120, 'AF'),
(41, 'CA', 'Canada', 'Canada', 'CAN', 124, 'NA'),
(42, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', 132, 'AF'),
(43, 'KY', 'Cayman Islands', 'Cayman Islands', 'CYM', 136, 'NA'),
(44, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', 140, 'AF'),
(45, 'TD', 'Chad', 'Republic of Chad', 'TCD', 148, 'AF'),
(46, 'CL', 'Chile', 'Republic of Chile', 'CHL', 152, 'SA'),
(47, 'CN', 'China', 'People''s Republic of China', 'CHN', 156, 'AS'),
(48, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', 162, 'AS'),
(49, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', 166, 'AS'),
(50, 'CO', 'Colombia', 'Republic of Colombia', 'COL', 170, 'SA'),
(51, 'KM', 'Comoros', 'Union of the Comoros', 'COM', 174, 'AF'),
(52, 'CD', 'Congo', 'Democratic Republic of the Congo', 'COD', 180, 'AF'),
(53, 'CG', 'Congo', 'Republic of the Congo', 'COG', 178, 'AF'),
(54, 'CK', 'Cook Islands', 'Cook Islands', 'COK', 184, 'OC'),
(55, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', 188, 'NA'),
(56, 'CI', 'Cote d''Ivoire', 'Republic of Cote d''Ivoire', 'CIV', 384, 'AF'),
(57, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', 191, 'EU'),
(58, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', 192, 'NA'),
(59, 'CW', 'Curaçao', 'Curaçao', 'CUW', 531, 'NA'),
(60, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', 196, 'AS'),
(61, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', 203, 'EU'),
(62, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', 208, 'EU'),
(63, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', 262, 'AF'),
(64, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', 212, 'NA'),
(65, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', 214, 'NA'),
(66, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', 218, 'SA'),
(67, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', 818, 'AF'),
(68, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', 222, 'NA'),
(69, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', 226, 'AF'),
(70, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', 232, 'AF'),
(71, 'EE', 'Estonia', 'Republic of Estonia', 'EST', 233, 'EU'),
(72, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', 231, 'AF'),
(73, 'FO', 'Faroe Islands', 'Faroe Islands', 'FRO', 234, 'EU'),
(74, 'FK', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'FLK', 238, 'SA'),
(75, 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', 242, 'OC'),
(76, 'FI', 'Finland', 'Republic of Finland', 'FIN', 246, 'EU'),
(77, 'FR', 'France', 'French Republic', 'FRA', 250, 'EU'),
(78, 'GF', 'French Guiana', 'French Guiana', 'GUF', 254, 'SA'),
(79, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', 258, 'OC'),
(80, 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', 260, 'AN'),
(81, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', 266, 'AF'),
(82, 'GM', 'Gambia', 'Republic of the Gambia', 'GMB', 270, 'AF'),
(83, 'GE', 'Georgia', 'Georgia', 'GEO', 268, 'AS'),
(84, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', 276, 'EU'),
(85, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', 288, 'AF'),
(86, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', 292, 'EU'),
(87, 'GR', 'Greece', 'Hellenic Republic Greece', 'GRC', 300, 'EU'),
(88, 'GL', 'Greenland', 'Greenland', 'GRL', 304, 'NA'),
(89, 'GD', 'Grenada', 'Grenada', 'GRD', 308, 'NA'),
(90, 'GP', 'Guadeloupe', 'Guadeloupe', 'GLP', 312, 'NA'),
(91, 'GU', 'Guam', 'Guam', 'GUM', 316, 'OC'),
(92, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', 320, 'NA'),
(93, 'GG', 'Guernsey', 'Bailiwick of Guernsey', 'GGY', 831, 'EU'),
(94, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', 324, 'AF'),
(95, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', 624, 'AF'),
(96, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', 328, 'SA'),
(97, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', 332, 'NA'),
(98, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', 334, 'AN'),
(99, 'VA', 'Holy See (Vatican City State)', 'Holy See (Vatican City State)', 'VAT', 336, 'EU'),
(100, 'HN', 'Honduras', 'Republic of Honduras', 'HND', 340, 'NA'),
(101, 'HK', 'Hong Kong', 'Hong Kong Special Administrative Region of China', 'HKG', 344, 'AS'),
(102, 'HU', 'Hungary', 'Hungary', 'HUN', 348, 'EU'),
(103, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', 352, 'EU'),
(104, 'IN', 'India', 'Republic of India', 'IND', 356, 'AS'),
(105, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', 360, 'AS'),
(106, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', 364, 'AS'),
(107, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', 368, 'AS'),
(108, 'IE', 'Ireland', 'Ireland', 'IRL', 372, 'EU'),
(109, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', 833, 'EU'),
(110, 'IL', 'Israel', 'State of Israel', 'ISR', 376, 'AS'),
(111, 'IT', 'Italy', 'Italian Republic', 'ITA', 380, 'EU'),
(112, 'JM', 'Jamaica', 'Jamaica', 'JAM', 388, 'NA'),
(113, 'JP', 'Japan', 'Japan', 'JPN', 392, 'AS'),
(114, 'JE', 'Jersey', 'Bailiwick of Jersey', 'JEY', 832, 'EU'),
(115, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', 400, 'AS'),
(116, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', 398, 'AS'),
(117, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', 404, 'AF'),
(118, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', 296, 'OC'),
(119, 'KP', 'Korea', 'Democratic People''s Republic of Korea', 'PRK', 408, 'AS'),
(120, 'KR', 'Korea', 'Republic of Korea', 'KOR', 410, 'AS'),
(121, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', 414, 'AS'),
(122, 'KG', 'Kyrgyz Republic', 'Kyrgyz Republic', 'KGZ', 417, 'AS'),
(123, 'LA', 'Lao People''s Democratic Republic', 'Lao People''s Democratic Republic', 'LAO', 418, 'AS'),
(124, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', 428, 'EU'),
(125, 'LB', 'Lebanon', 'Lebanese Republic', 'LBN', 422, 'AS'),
(126, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', 426, 'AF'),
(127, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', 430, 'AF'),
(128, 'LY', 'Libya', 'Libya', 'LBY', 434, 'AF'),
(129, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', 438, 'EU'),
(130, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', 440, 'EU'),
(131, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', 442, 'EU'),
(132, 'MO', 'Macao', 'Macao Special Administrative Region of China', 'MAC', 446, 'AS'),
(133, 'MK', 'Macedonia', 'Republic of Macedonia', 'MKD', 807, 'EU'),
(134, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', 450, 'AF'),
(135, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', 454, 'AF'),
(136, 'MY', 'Malaysia', 'Malaysia', 'MYS', 458, 'AS'),
(137, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', 462, 'AS'),
(138, 'ML', 'Mali', 'Republic of Mali', 'MLI', 466, 'AF'),
(139, 'MT', 'Malta', 'Republic of Malta', 'MLT', 470, 'EU'),
(140, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', 584, 'OC'),
(141, 'MQ', 'Martinique', 'Martinique', 'MTQ', 474, 'NA'),
(142, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', 478, 'AF'),
(143, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', 480, 'AF'),
(144, 'YT', 'Mayotte', 'Mayotte', 'MYT', 175, 'AF'),
(145, 'MX', 'Mexico', 'United Mexican States', 'MEX', 484, 'NA'),
(146, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', 583, 'OC'),
(147, 'MD', 'Moldova', 'Republic of Moldova', 'MDA', 498, 'EU'),
(148, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', 492, 'EU'),
(149, 'MN', 'Mongolia', 'Mongolia', 'MNG', 496, 'AS'),
(150, 'ME', 'Montenegro', 'Montenegro', 'MNE', 499, 'EU'),
(151, 'MS', 'Montserrat', 'Montserrat', 'MSR', 500, 'NA'),
(152, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', 504, 'AF'),
(153, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', 508, 'AF'),
(154, 'MM', 'Myanmar', 'Republic of the Union of Myanmar', 'MMR', 104, 'AS'),
(155, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', 516, 'AF'),
(156, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', 520, 'OC'),
(157, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', 524, 'AS'),
(158, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', 528, 'EU'),
(159, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', 540, 'OC'),
(160, 'NZ', 'New Zealand', 'New Zealand', 'NZL', 554, 'OC'),
(161, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', 558, 'NA'),
(162, 'NE', 'Niger', 'Republic of Niger', 'NER', 562, 'AF'),
(163, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', 566, 'AF'),
(164, 'NU', 'Niue', 'Niue', 'NIU', 570, 'OC'),
(165, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', 574, 'OC'),
(166, 'MP', 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'MNP', 580, 'OC'),
(167, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', 578, 'EU'),
(168, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', 512, 'AS'),
(169, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', 586, 'AS'),
(170, 'PW', 'Palau', 'Republic of Palau', 'PLW', 585, 'OC'),
(171, 'PS', 'Palestine', 'State of Palestine', 'PSE', 275, 'AS'),
(172, 'PA', 'Panama', 'Republic of Panama', 'PAN', 591, 'NA'),
(173, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', 598, 'OC'),
(174, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', 600, 'SA'),
(175, 'PE', 'Peru', 'Republic of Peru', 'PER', 604, 'SA'),
(176, 'PH', 'Philippines', 'Republic of the Philippines', 'PHL', 608, 'AS'),
(177, 'PN', 'Pitcairn Islands', 'Pitcairn Islands', 'PCN', 612, 'OC'),
(178, 'PL', 'Poland', 'Republic of Poland', 'POL', 616, 'EU'),
(179, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', 620, 'EU'),
(180, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', 630, 'NA'),
(181, 'QA', 'Qatar', 'State of Qatar', 'QAT', 634, 'AS'),
(182, 'RE', 'Réunion', 'Réunion', 'REU', 638, 'AF'),
(183, 'RO', 'Romania', 'Romania', 'ROU', 642, 'EU'),
(184, 'RU', 'Russian Federation', 'Russian Federation', 'RUS', 643, 'EU'),
(185, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', 646, 'AF'),
(186, 'BL', 'Saint Barthélemy', 'Saint Barthélemy', 'BLM', 652, 'NA'),
(187, 'SH', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', 654, 'AF'),
(188, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Kitts and Nevis', 'KNA', 659, 'NA'),
(189, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', 662, 'NA'),
(190, 'MF', 'Saint Martin', 'Saint Martin (French part)', 'MAF', 663, 'NA'),
(191, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', 666, 'NA'),
(192, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', 670, 'NA'),
(193, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', 882, 'OC'),
(194, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', 674, 'EU'),
(195, 'ST', 'Sao Tome and Principe', 'Democratic Republic of Sao Tome and Principe', 'STP', 678, 'AF'),
(196, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', 682, 'AS'),
(197, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', 686, 'AF'),
(198, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', 688, 'EU'),
(199, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', 690, 'AF'),
(200, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', 694, 'AF'),
(201, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', 702, 'AS'),
(202, 'SX', 'Sint Maarten (Dutch part)', 'Sint Maarten (Dutch part)', 'SXM', 534, 'NA'),
(203, 'SK', 'Slovakia (Slovak Republic)', 'Slovakia (Slovak Republic)', 'SVK', 703, 'EU'),
(204, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', 705, 'EU'),
(205, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', 90, 'OC'),
(206, 'SO', 'Somalia', 'Somali Republic', 'SOM', 706, 'AF'),
(207, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', 710, 'AF'),
(208, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', 239, 'AN'),
(209, 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', 728, 'AF'),
(210, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', 724, 'EU'),
(211, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', 144, 'AS'),
(212, 'SD', 'Sudan', 'Republic of Sudan', 'SDN', 729, 'AF'),
(213, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', 740, 'SA'),
(214, 'SJ', 'Svalbard & Jan Mayen Islands', 'Svalbard & Jan Mayen Islands', 'SJM', 744, 'EU'),
(215, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', 748, 'AF'),
(216, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', 752, 'EU'),
(217, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', 756, 'EU'),
(218, 'SY', 'Syrian Arab Republic', 'Syrian Arab Republic', 'SYR', 760, 'AS'),
(219, 'TW', 'Taiwan', 'Taiwan, Province of China', 'TWN', 158, 'AS'),
(220, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', 762, 'AS'),
(221, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', 834, 'AF'),
(222, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', 764, 'AS'),
(223, 'TL', 'Timor-Leste', 'Democratic Republic of Timor-Leste', 'TLS', 626, 'AS'),
(224, 'TG', 'Togo', 'Togolese Republic', 'TGO', 768, 'AF'),
(225, 'TK', 'Tokelau', 'Tokelau', 'TKL', 772, 'OC'),
(226, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', 776, 'OC'),
(227, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', 780, 'NA'),
(228, 'TN', 'Tunisia', 'Tunisian Republic', 'TUN', 788, 'AF'),
(229, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', 792, 'AS'),
(230, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', 795, 'AS'),
(231, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', 796, 'NA'),
(232, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', 798, 'OC'),
(233, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', 800, 'AF'),
(234, 'UA', 'Ukraine', 'Ukraine', 'UKR', 804, 'EU'),
(235, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', 784, 'AS'),
(236, 'GB', 'United Kingdom of Great Britain & Northern Ireland', 'United Kingdom of Great Britain & Northern Ireland', 'GBR', 826, 'EU'),
(237, 'US', 'United States of America', 'United States of America', 'USA', 840, 'NA'),
(238, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', 581, 'OC'),
(239, 'VI', 'United States Virgin Islands', 'United States Virgin Islands', 'VIR', 850, 'NA'),
(240, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', 858, 'SA'),
(241, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', 860, 'AS'),
(242, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', 548, 'OC'),
(243, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', 862, 'SA'),
(244, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', 704, 'AS'),
(245, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', 876, 'OC'),
(246, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', 732, 'AF'),
(247, 'YE', 'Yemen', 'Yemen', 'YEM', 887, 'AS'),
(248, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', 894, 'AF'),
(249, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', 716, 'AF');

-- --------------------------------------------------------

--
-- Table structure for table `oa_email_queue`
--

CREATE TABLE IF NOT EXISTS `oa_email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_email` varchar(128) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `alt_message` text,
  `max_attempts` int(11) NOT NULL DEFAULT '3',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `success` tinyint(1) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `last_attempt` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oa_embeds`
--

CREATE TABLE IF NOT EXISTS `oa_embeds` (
  `id_emb` int(11) NOT NULL AUTO_INCREMENT,
  `title_emb` varchar(200) NOT NULL,
  `embed_code_emb` text NOT NULL,
  `thumbnail_emb` char(32) NOT NULL,
  `thumbnail_url_emb` text NOT NULL,
  `img_width_emb` int(3) NOT NULL,
  `img_height_emb` int(3) NOT NULL,
  `video_url_emb` text NOT NULL,
  `content_id_emb` int(11) NOT NULL,
  `country_emb` char(2) NOT NULL,
  `desc_emb` text,
  `timestamp_emb` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_emb`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oa_embeds`
--

INSERT INTO `oa_embeds` (`id_emb`, `title_emb`, `embed_code_emb`, `thumbnail_emb`, `thumbnail_url_emb`, `img_width_emb`, `img_height_emb`, `video_url_emb`, `content_id_emb`, `country_emb`, `desc_emb`, `timestamp_emb`) VALUES
(1, 'I am Agha', '64320975', '', 'http://cdn.imgbox.com/H9Mqbhu0.png', 100, 100, 'http://player.vimeo.com/video/64320975', 0, 'PK', NULL, '2014-04-09 19:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `oa_login_attempts`
--

CREATE TABLE IF NOT EXISTS `oa_login_attempts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) NOT NULL,
  `login` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oa_permissions`
--

CREATE TABLE IF NOT EXISTS `oa_permissions` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `status` enum('active','inactive','deleted') DEFAULT 'active',
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `oa_permissions`
--

INSERT INTO `oa_permissions` (`permission_id`, `name`, `description`, `status`) VALUES
(1, 'Site.Signin.Allow', 'Allow users to login to the site', 'active'),
(2, 'Site.Content.View', 'Allow users to view the Content Context', 'active'),
(3, 'Site.Reports.View', 'Allow users to view the Reports Context', 'active'),
(4, 'Site.Settings.View', 'Allow users to view the Settings Context', 'active'),
(5, 'Site.Developer.View', 'Allow users to view the Developer Context', 'active'),
(6, 'Bonfire.Roles.Manage', 'Allow users to manage the user Roles', 'active'),
(7, 'Bonfire.Users.Manage', 'Allow users to manage the site Users', 'active'),
(8, 'Bonfire.Users.View', 'Allow users access to the User Settings', 'active'),
(9, 'Bonfire.Users.Add', 'Allow users to add new Users', 'active'),
(10, 'Bonfire.Database.Manage', 'Allow users to manage the Database settings', 'active'),
(11, 'Bonfire.Emailer.Manage', 'Allow users to manage the Emailer settings', 'active'),
(12, 'Bonfire.Logs.View', 'Allow users access to the Log details', 'active'),
(13, 'Bonfire.Logs.Manage', 'Allow users to manage the Log files', 'active'),
(14, 'Bonfire.Emailer.View', 'Allow users access to the Emailer settings', 'active'),
(15, 'Site.Signin.Offline', 'Allow users to login to the site when the site is offline', 'active'),
(16, 'Bonfire.Permissions.View', 'Allow access to view the Permissions menu unders Settings Context', 'active'),
(17, 'Bonfire.Permissions.Manage', 'Allow access to manage the Permissions in the system', 'active'),
(18, 'Bonfire.Roles.Delete', 'Allow users to delete user Roles', 'active'),
(19, 'Bonfire.Modules.Add', 'Allow creation of modules with the builder.', 'active'),
(20, 'Bonfire.Modules.Delete', 'Allow deletion of modules.', 'active'),
(21, 'Permissions.Administrator.Manage', 'To manage the access control permissions for the Administrator role.', 'active'),
(22, 'Permissions.Editor.Manage', 'To manage the access control permissions for the Editor role.', 'active'),
(50, 'Bonfire.Roles.Add', 'To add New Roles', 'active'),
(24, 'Permissions.User.Manage', 'To manage the access control permissions for the User role.', 'active'),
(25, 'Permissions.Developer.Manage', 'To manage the access control permissions for the Developer role.', 'active'),
(49, 'Bonfire.Profiler.View', 'To view the Console Profiler Bar.', 'active'),
(27, 'Activities.Own.View', 'To view the users own activity logs', 'active'),
(28, 'Activities.Own.Delete', 'To delete the users own activity logs', 'active'),
(29, 'Activities.User.View', 'To view the user activity logs', 'active'),
(30, 'Activities.User.Delete', 'To delete the user activity logs, except own', 'active'),
(31, 'Activities.Module.View', 'To view the module activity logs', 'active'),
(32, 'Activities.Module.Delete', 'To delete the module activity logs', 'active'),
(33, 'Activities.Date.View', 'To view the users own activity logs', 'active'),
(34, 'Activities.Date.Delete', 'To delete the dated activity logs', 'active'),
(35, 'Bonfire.UI.Manage', 'Manage the Bonfire UI settings', 'active'),
(36, 'Bonfire.Settings.View', 'To view the site settings page.', 'active'),
(37, 'Bonfire.Settings.Manage', 'To manage the site settings.', 'active'),
(38, 'Bonfire.Activities.View', 'To view the Activities menu.', 'active'),
(39, 'Bonfire.Database.View', 'To view the Database menu.', 'active'),
(40, 'Bonfire.Migrations.View', 'To view the Migrations menu.', 'active'),
(41, 'Bonfire.Builder.View', 'To view the Modulebuilder menu.', 'active'),
(42, 'Bonfire.Roles.View', 'To view the Roles menu.', 'active'),
(43, 'Bonfire.Sysinfo.View', 'To view the System Information page.', 'active'),
(44, 'Bonfire.Translate.Manage', 'To manage the Language Translation.', 'active'),
(45, 'Bonfire.Translate.View', 'To view the Language Translate menu.', 'active'),
(46, 'Bonfire.UI.View', 'To view the UI/Keyboard Shortcut menu.', 'active'),
(47, 'Bonfire.Update.Manage', 'To manage the Bonfire Update.', 'active'),
(48, 'Bonfire.Update.View', 'To view the Developer Update menu.', 'active'),
(51, 'Persons.Content.View', '', 'active'),
(52, 'Persons.Content.Create', '', 'active'),
(53, 'Persons.Content.Edit', '', 'active'),
(54, 'Persons.Content.Delete', '', 'active'),
(55, 'Persons.Reports.View', '', 'active'),
(56, 'Persons.Reports.Create', '', 'active'),
(57, 'Persons.Reports.Edit', '', 'active'),
(58, 'Persons.Reports.Delete', '', 'active'),
(59, 'Persons.Settings.View', '', 'active'),
(60, 'Persons.Settings.Create', '', 'active'),
(61, 'Persons.Settings.Edit', '', 'active'),
(62, 'Persons.Settings.Delete', '', 'active'),
(63, 'Persons.Developer.View', '', 'active'),
(64, 'Persons.Developer.Create', '', 'active'),
(65, 'Persons.Developer.Edit', '', 'active'),
(66, 'Persons.Developer.Delete', '', 'active'),
(94, 'Continents.Settings.Delete', '', 'active'),
(93, 'Continents.Settings.Edit', '', 'active'),
(92, 'Continents.Settings.Create', '', 'active'),
(91, 'Continents.Settings.View', '', 'active'),
(90, 'Continents.Reports.Delete', '', 'active'),
(89, 'Continents.Reports.Edit', '', 'active'),
(88, 'Continents.Reports.Create', '', 'active'),
(87, 'Continents.Reports.View', '', 'active'),
(86, 'Continents.Content.Delete', '', 'active'),
(85, 'Continents.Content.Edit', '', 'active'),
(84, 'Continents.Content.Create', '', 'active'),
(83, 'Continents.Content.View', '', 'active'),
(95, 'Continents.Developer.View', '', 'active'),
(96, 'Continents.Developer.Create', '', 'active'),
(97, 'Continents.Developer.Edit', '', 'active'),
(98, 'Continents.Developer.Delete', '', 'active'),
(99, 'Countries.Content.View', '', 'active'),
(100, 'Countries.Content.Create', '', 'active'),
(101, 'Countries.Content.Edit', '', 'active'),
(102, 'Countries.Content.Delete', '', 'active'),
(103, 'Countries.Reports.View', '', 'active'),
(104, 'Countries.Reports.Create', '', 'active'),
(105, 'Countries.Reports.Edit', '', 'active'),
(106, 'Countries.Reports.Delete', '', 'active'),
(107, 'Countries.Settings.View', '', 'active'),
(108, 'Countries.Settings.Create', '', 'active'),
(109, 'Countries.Settings.Edit', '', 'active'),
(110, 'Countries.Settings.Delete', '', 'active'),
(111, 'Countries.Developer.View', '', 'active'),
(112, 'Countries.Developer.Create', '', 'active'),
(113, 'Countries.Developer.Edit', '', 'active'),
(114, 'Countries.Developer.Delete', '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `oa_persons`
--

CREATE TABLE IF NOT EXISTS `oa_persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persons_first_name` varchar(100) NOT NULL,
  `persons_middle_name` varchar(100) NOT NULL,
  `persons_last_name` varchar(100) NOT NULL,
  `persons_image` varchar(100) NOT NULL,
  `persons_thumbnail` varchar(100) NOT NULL,
  `persons_width` int(11) NOT NULL,
  `persons_height` int(11) NOT NULL,
  `persons_video` text NOT NULL,
  `persons_user_id` int(11) NOT NULL,
  `persons_country` char(2) NOT NULL,
  `persons_desc` text NOT NULL,
  `persons_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `oa_persons`
--

INSERT INTO `oa_persons` (`id`, `persons_first_name`, `persons_middle_name`, `persons_last_name`, `persons_image`, `persons_thumbnail`, `persons_width`, `persons_height`, `persons_video`, `persons_user_id`, `persons_country`, `persons_desc`, `persons_timestamp`) VALUES
(1, 'Umair', '', 'Anwar', 'umair2.jpg', 'umair2_thumb.jpg', 260, 293, '', 0, 'PK', 'Web developer.', '2013-07-15 19:38:27'),
(2, 'Atif', '', 'Aslam', 'Atif_Aslam_New_Pictures_11_12.jpg', 'Atif_Aslam_New_Pictures_11_12_thumb.jpg', 400, 600, '', 0, 'PK', 'Singer', '2013-07-15 19:46:36'),
(3, 'Fatima', '', 'Bhutto', 'fatima_bhutto.jpg', 'fatima_bhutto_thumb.jpg', 320, 463, '', 0, 'PK', 'Journalist', '2013-07-16 20:32:24'),
(4, 'Azhar', '', 'Mehmood', 'azhar_mehmood.jpg', 'azhar_mehmood_thumb.jpg', 640, 360, '', 0, 'PK', 'Cricketer', '2013-07-16 20:37:43'),
(5, 'Hussain', '', 'Haqqani', 'Hussain-Haqqani.jpg', 'Hussain-Haqqani_thumb.jpg', 640, 360, '', 0, 'PK', 'Former Pakistan Ambassador to the US 2008-2011.', '2013-07-17 15:17:42'),
(6, 'Maryam', 'Nawaz', 'Sharif', 'Maryamns.jpg', 'Maryamns_thumb.jpg', 250, 340, '', 0, 'PK', 'Politician', '2013-07-17 15:29:01'),
(7, 'Rehman', '', 'Malik', 'Rehman-malik.jpg', 'Rehman-malik_thumb.jpg', 218, 300, '', 0, 'PK', 'Vice president PPP', '2013-07-17 15:42:01'),
(8, 'Saeed', '', 'Ajmal', 'saeed_ajmal.jpg', 'saeed_ajmal_thumb.jpg', 250, 250, '', 0, 'PK', 'Cricketer', '2013-07-17 15:50:14'),
(9, 'Sharmeen', 'Obaid', 'Chinoy', 'Sharmeen-Obaid-Chinoy.jpg', 'Sharmeen-Obaid-Chinoy_thumb.jpg', 600, 399, '', 0, 'PK', 'Documentary Filmaker', '2013-07-17 15:56:13'),
(10, 'Shoaib', '', 'Malik', 'shoib-malik.jpg', 'shoib-malik_thumb.jpg', 485, 610, '', 0, 'PK', 'Cricketer', '2013-07-17 16:03:36'),
(11, 'Amitabh', '', 'Bachchan', 'amitabh-bachchan.jpg', 'amitabh-bachchan_thumb.jpg', 400, 361, '', 0, 'PK', 'Actor', '2013-07-17 16:18:22'),
(12, 'Priyanka', '', 'Chopra', 'Priyanka_Chopra.jpg', 'Priyanka_Chopra_thumb.jpg', 220, 319, '', 0, 'IN', 'Actress', '2013-07-17 16:27:58'),
(13, 'Salman', '', 'Khan', 'Salman-Khan.jpg', 'Salman-Khan_thumb.jpg', 500, 538, '', 0, 'IN', 'Actor', '2013-07-17 16:36:12'),
(14, 'Leonardo', '', 'DiCaprio', 'LD_TwitterPic[1].jpg', 'LD_TwitterPic[1]_thumb.jpg', 276, 276, '', 0, 'US', 'Actor and Environmentalist', '2013-07-19 17:15:12'),
(15, 'Bill', '', 'Gates', '182px-BillGates2012[1].jpg', '182px-BillGates2012[1]_thumb.jpg', 182, 239, '', 0, 'US', 'Co-founder and Chairman of Microsoft\nCo-Chair of the Bill & Melinda Gates Foundation\nCEO of Cascade Investment\nChairman of Corbis', '2013-07-19 17:25:58'),
(16, 'Awais', '', 'Anwar', '302151_239790999416045_100001554398437_672942_1957867291_n[1].jpg', '302151_239790999416045_100001554398437_672942_1957867291_n[1]_thumb.jpg', 500, 413, '', 0, 'PK', 'Doctor of Pharmacy\nDHMS', '2013-07-19 17:30:56'),
(17, 'Jemima', '', 'Khan', '20111225225149[1].jpg', '20111225225149[1]_thumb.jpg', 450, 419, '', 0, 'US', 'Writer, Editor, campaigner', '2013-07-19 17:34:54'),
(18, 'Pierce', '', 'Morgan', 'piers_morgan[1].jpg', 'piers_morgan[1]_thumb.jpg', 296, 369, '', 0, 'GB', 'Broadcaster, panellist, journalist, talk show host', '2013-07-19 17:37:55'),
(19, 'William', '', 'Hague', 'william-hague-fco-370x229[1].jpg', 'william-hague-fco-370x229[1]_thumb.jpg', 370, 229, '', 0, 'GB', 'British Foreign Secretary. MP for Richmond, author on British political history', '2013-07-19 17:43:52'),
(20, 'Thomas', '', 'Friedman', '3q5awcdv2zy1ahk8k98l[1].png', '3q5awcdv2zy1ahk8k98l[1]_thumb.png', 200, 200, '', 0, 'US', 'NY Times columnist and Pulitzer Prize winning author of Lexus and the Olive Tree and From Beirut to Jerusalem.', '2013-07-19 17:46:49'),
(21, 'Amir', '', 'Khan', 'amir-khan-1[1].jpg', 'amir-khan-1[1]_thumb.jpg', 300, 443, '', 0, 'IN', 'Actor', '2013-07-19 17:49:51'),
(22, 'Hala', '', 'Gorani', 'HG_16967_0096_R[1].jpg', 'HG_16967_0096_R[1]_thumb.jpg', 338, 450, '', 0, 'US', 'Anchor, CNN''s International Desk', '2013-07-19 17:52:44'),
(23, 'Shahid', 'Khan', 'Afridi', 'afridi-shahid-afridi-24329492-500-348.jpg', 'afridi-shahid-afridi-24329492-500-348_thumb.jpg', 500, 348, '', 0, 'PK', 'Cricketer (Pakistani)', '2013-07-19 17:54:57'),
(24, 'Henry', '', 'Winkler', '250px-HenryWinklerFeb11[1].jpg', '250px-HenryWinklerFeb11[1]_thumb.jpg', 250, 187, '', 0, 'US', 'Actor, producer and author.', '2013-07-19 17:55:17'),
(25, 'Shahid', 'Khan', 'Afridi', 'afridi-shahid-afridi-24329492-500-3481.jpg', 'afridi-shahid-afridi-24329492-500-3481_thumb.jpg', 500, 348, '', 0, 'PK', 'Cricketer (Pakistani)', '2013-07-19 17:55:19'),
(26, 'Paulo', '', 'Coelho', 'paulo_coelho_guerrerodelaluz[1].jpg', 'paulo_coelho_guerrerodelaluz[1]_thumb.jpg', 400, 400, '', 0, 'BR', 'Writer', '2013-07-19 17:58:19'),
(27, 'Shahid', 'Khan', 'Afridi', 'afridi-shahid-afridi-24329492-500-3482.jpg', 'afridi-shahid-afridi-24329492-500-3482_thumb.jpg', 500, 348, '', 0, 'PK', 'Cricketer (Pakistani)', '2013-07-19 17:59:28'),
(28, 'Emma', '', 'Watson', '85405d1320386004-emma-watson-emma-watson-photos[1].jpg', '85405d1320386004-emma-watson-emma-watson-photos[1]_thumb.jpg', 400, 400, '', 0, 'GB', 'Actress', '2013-07-19 18:01:48'),
(29, 'Hugh', '', 'Grant', 'HughGrant-7[1].JPG', 'HughGrant-7[1]_thumb.JPG', 338, 400, '', 0, 'GB', 'Actor, film producer', '2013-07-19 18:03:44'),
(30, 'Virat', '', 'Kohli', 'Virat-Kohli-1-Wallpapers-Sports-Images-NiceFun.jpg', 'Virat-Kohli-1-Wallpapers-Sports-Images-NiceFun_thumb.jpg', 800, 584, '', 0, 'IN', 'Cricketer (Indian)', '2013-07-19 18:06:39'),
(31, 'Sachin', '', 'Tendulkar', 'sachin_tendulkar-.jpg', 'sachin_tendulkar-_thumb.jpg', 600, 450, '', 0, 'IN', 'Cricketer (Indian)', '2013-07-19 18:16:20'),
(32, 'Yuvraj', '', 'Singh', 'cricketer-yuvraj-singh.jpg', 'cricketer-yuvraj-singh_thumb.jpg', 396, 594, '', 0, 'IN', 'Cricketer (Indian)', '2013-07-19 18:20:40'),
(33, 'Hashim', '', 'Amla', '22amla.jpg', '22amla_thumb.jpg', 500, 466, '', 0, 'ZA', 'Cricketer (South Africa)', '2013-07-19 18:26:05'),
(34, 'Mahendra', 'Singh', 'Dhoni', '20120825045535PR_Mahendra_Singh_Dhoni.jpg', '20120825045535PR_Mahendra_Singh_Dhoni_thumb.jpg', 636, 546, '', 0, 'IN', 'Cricketer (Indian)', '2013-07-19 18:31:32'),
(35, 'Gautam', '', 'Gambhir', 'Gautam+Gambhir+2011+ICC+World+Cup+India+Portrait+o09Lyjomifnl.jpg', 'Gautam+Gambhir+2011+ICC+World+Cup+India+Portrait+o09Lyjomifnl_thumb.jpg', 397, 594, '', 0, 'IN', 'Cricketer (Indian)', '2013-07-19 18:43:34'),
(36, 'Harbhajan', '', 'Singh', 'Harbhajan_Singh_Photo_(1).jpg', 'Harbhajan_Singh_Photo_(1)_thumb.jpg', 424, 594, '', 0, 'IN', 'Cricketer (Indian)', '2013-07-19 18:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `oa_roles`
--

CREATE TABLE IF NOT EXISTS `oa_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  `login_destination` varchar(255) NOT NULL DEFAULT '/',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `default_context` varchar(255) NOT NULL DEFAULT 'content',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oa_roles`
--

INSERT INTO `oa_roles` (`role_id`, `role_name`, `description`, `default`, `can_delete`, `login_destination`, `deleted`, `default_context`) VALUES
(1, 'Administrator', 'Has full control over every aspect of the site.', 0, 0, '', 0, 'content'),
(2, 'Editor', 'Can handle day-to-day management, but does not have full power.', 0, 1, '', 0, 'content'),
(4, 'User', 'This is the default user with access to login.', 1, 0, '', 0, 'content'),
(6, 'Developer', 'Developers typically are the only ones that can access the developer tools. Otherwise identical to Administrators, at least until the site is handed off.', 0, 1, '', 0, 'content');

-- --------------------------------------------------------

--
-- Table structure for table `oa_role_permissions`
--

CREATE TABLE IF NOT EXISTS `oa_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oa_role_permissions`
--

INSERT INTO `oa_role_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 24),
(1, 25),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(2, 1),
(2, 2),
(2, 3),
(4, 1),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 49);

-- --------------------------------------------------------

--
-- Table structure for table `oa_schema_version`
--

CREATE TABLE IF NOT EXISTS `oa_schema_version` (
  `type` varchar(40) NOT NULL,
  `version` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oa_schema_version`
--

INSERT INTO `oa_schema_version` (`type`, `version`) VALUES
('core', 34),
('app_', 0),
('persons_', 2),
('continents_', 2),
('countries_', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oa_sessions`
--

CREATE TABLE IF NOT EXISTS `oa_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oa_settings`
--

CREATE TABLE IF NOT EXISTS `oa_settings` (
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `unique - name` (`name`),
  KEY `index - name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oa_settings`
--

INSERT INTO `oa_settings` (`name`, `module`, `value`) VALUES
('site.title', 'core', 'Original Accounts'),
('site.system_email', 'core', 'umair.anwr@gmail.com'),
('site.status', 'core', '1'),
('site.list_limit', 'core', '25'),
('site.show_profiler', 'core', '1'),
('site.show_front_profiler', 'core', '1'),
('updates.do_check', 'core', '1'),
('updates.bleeding_edge', 'core', '1'),
('auth.allow_register', 'core', '0'),
('auth.login_type', 'core', 'email'),
('auth.use_usernames', 'core', '1'),
('auth.allow_remember', 'core', '1'),
('auth.remember_length', 'core', '1209600'),
('auth.do_login_redirect', 'core', '1'),
('auth.use_extended_profile', 'core', '0'),
('sender_email', 'email', 'umair.anwr@gmail.com'),
('protocol', 'email', 'mail'),
('mailpath', 'email', '/usr/sbin/sendmail'),
('smtp_host', 'email', ''),
('smtp_user', 'email', ''),
('smtp_pass', 'email', ''),
('smtp_port', 'email', ''),
('smtp_timeout', 'email', ''),
('mailtype', 'email', 'text'),
('site.languages', 'core', 'a:1:{i:0;s:7:"english";}'),
('auth.allow_name_change', 'core', '1'),
('auth.name_change_frequency', 'core', '1'),
('auth.name_change_limit', 'core', '1'),
('auth.password_min_length', 'core', '8'),
('auth.password_force_numbers', 'core', '0'),
('auth.password_force_symbols', 'core', '0'),
('auth.password_force_mixed_case', 'core', '0'),
('form_save', 'core.ui', 'ctrl+s/⌘+s'),
('goto_content', 'core.ui', 'alt+c'),
('auth.user_activation_method', 'core', '0'),
('auth.password_show_labels', 'core', '0');

-- --------------------------------------------------------

--
-- Table structure for table `oa_users`
--

CREATE TABLE IF NOT EXISTS `oa_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '4',
  `email` varchar(120) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password_hash` varchar(40) NOT NULL,
  `reset_hash` varchar(40) DEFAULT NULL,
  `salt` varchar(7) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_message` varchar(255) DEFAULT NULL,
  `reset_by` int(10) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT '',
  `display_name_changed` date DEFAULT NULL,
  `timezone` char(4) NOT NULL DEFAULT 'UM6',
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activate_hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oa_users`
--

INSERT INTO `oa_users` (`id`, `role_id`, `email`, `username`, `password_hash`, `reset_hash`, `salt`, `last_login`, `last_ip`, `created_on`, `deleted`, `banned`, `ban_message`, `reset_by`, `display_name`, `display_name_changed`, `timezone`, `language`, `active`, `activate_hash`) VALUES
(1, 1, 'umair.anwr@gmail.com', 'Umair', 'afbcd66aa434ecbebe0675902f1f7c38812ca4ac', NULL, 'G2N82Rv', '2013-07-11 06:11:18', '108.162.222.6', '0000-00-00 00:00:00', 0, 0, NULL, NULL, 'Umair', NULL, 'UTC', 'english', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `oa_user_cookies`
--

CREATE TABLE IF NOT EXISTS `oa_user_cookies` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(128) NOT NULL,
  `created_on` datetime NOT NULL,
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oa_user_cookies`
--

INSERT INTO `oa_user_cookies` (`user_id`, `token`, `created_on`) VALUES
(1, 'CdQipRBTL8tv79uILrEBmvgYaZZ48w2zfKEnGoqgdBHg4T1RdKb27XSKTdI3uOeMVl4AnSAt6gNkn2Dkpk4AUZpbzRuFdz6C3uscXR011dKNNW5TZfqX4iJNCrhQzn3q', '2013-07-06 02:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `oa_user_meta`
--

CREATE TABLE IF NOT EXISTS `oa_user_meta` (
  `meta_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text,
  PRIMARY KEY (`meta_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oa_user_meta`
--

INSERT INTO `oa_user_meta` (`meta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'state', 'WY'),
(2, 1, 'country', 'PK');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
