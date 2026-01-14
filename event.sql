-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 09, 2025 at 06:40 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(256) NOT NULL,
  `answer` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `register_id` int(11) NOT NULL,
  `token` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `register_id`, `token`, `created_at`) VALUES
(1, 23, '12345', '2025-01-27 12:18:08'),
(2, 55, 'qrlrfcFx3k      ', '2025-01-28 09:49:40'),
(3, 55, 'omzRfPasQxU     ', '2025-01-28 09:50:06'),
(4, 55, 'mM7IOad9wKw     ', '2025-01-28 09:53:55'),
(5, 55, 'gEaw44YbmQw     ', '2025-01-28 09:54:09'),
(6, 55, 'rHfePCv86Q      ', '2025-01-28 09:54:15'),
(7, 55, 'Ext36yPpRTA00000', '2025-01-28 09:55:44'),
(8, 55, 'dPSGxYyDy5A00000', '2025-01-28 09:57:17'),
(9, 55, 'pLDtnZnr7gc00000', '2025-01-28 09:57:35'),
(10, 60, 'XnTxOahuiwE00000', '2025-01-28 09:58:46'),
(11, 60, 'aksmagNL3tM00000', '2025-01-28 09:59:35'),
(12, 60, 'RtAaWecKU8000000', '2025-01-28 10:05:57'),
(13, 60, '7zdZBi8fRmQ00000', '2025-01-28 11:14:00'),
(14, 60, 'eKN3GF9Htg000000', '2025-01-28 11:17:29'),
(15, 60, 'Anv01SsGtH800000', '2025-01-28 11:18:16'),
(16, 60, 'B2ac4CFYjWQ00000', '2025-01-28 11:18:19'),
(17, 60, 'iS0sO5Ivb7I00000', '2025-01-28 11:18:34'),
(18, 60, 'ZJwnWcPQT2800000', '2025-01-28 11:18:34'),
(19, 60, 'ITHoXQ807SY00000', '2025-01-28 11:18:58'),
(20, 60, 'mxMdWooDjwM00000', '2025-01-28 11:20:12'),
(21, 60, 'BgUxLFZhZ4000000', '2025-01-28 11:20:36'),
(22, 60, 'ZGsKFlVevdk00000', '2025-01-28 11:21:21'),
(23, 60, 'zTx8SSZx1X800000', '2025-01-28 11:21:31'),
(24, 60, 'PKZqycrrivM00000', '2025-01-28 11:22:10'),
(25, 60, 'A51GJneD7rE00000', '2025-01-28 11:27:28'),
(26, 60, 'mnechxzsPg000000', '2025-01-28 11:34:17'),
(27, 60, 'lt14ApLSBhw00000', '2025-01-28 11:34:29'),
(28, 60, '8lHOdSCbFs000000', '2025-01-29 08:00:42'),
(29, 60, 'LvjUTTX5c0000000', '2025-01-29 08:02:43'),
(30, 60, 'Oxo0cUQFXaY00000', '2025-01-29 08:10:39'),
(31, 60, 'eHevMCe6Qo000000', '2025-01-30 10:25:15'),
(32, 60, '1wNrC70g29c00000', '2025-01-30 10:33:58'),
(33, 55, 'cXjYAM6Bd4000000', '2025-01-30 10:34:14'),
(34, 55, 'Rh2flSzomy800000', '2025-01-30 10:35:21'),
(35, 55, 'l4t2irWyE0000000', '2025-01-30 10:35:25'),
(36, 55, 'ZJRN6E93xqI00000', '2025-01-30 10:35:26'),
(37, 55, '57ZPaLpZ0EA00000', '2025-01-30 10:40:33'),
(38, 55, 'EUPbNJ2njo400000', '2025-01-30 10:40:44'),
(39, 55, 'BBYyqSc7g5800000', '2025-01-30 10:40:47'),
(40, 55, '2vYoVArTqKE00000', '2025-01-30 10:40:48'),
(41, 55, 'kQ8tpB9w1s000000', '2025-01-30 10:40:48'),
(42, 55, 'raVqLh3tNWY00000', '2025-01-30 10:40:54'),
(43, 55, 'fC1c8oIy61g00000', '2025-01-30 10:41:10'),
(44, 55, '5NpjvVXYF8000000', '2025-01-30 10:41:14'),
(45, 55, 'aqjjpbfFqI000000', '2025-01-30 10:41:17'),
(46, 55, 'zzHVVzMX70A00000', '2025-01-30 10:59:57'),
(47, 55, '42C9G5GO2z800000', '2025-01-30 11:01:24'),
(48, 55, 'beWVqi8t7Jc00000', '2025-01-30 11:01:49'),
(49, 55, 'XfJpz1kCeRM00000', '2025-01-30 12:14:52'),
(50, 55, 'Mre7LfsqjeU00000', '2025-01-30 12:29:36'),
(51, 55, 'Zdm9AWrCJ9A00000', '2025-01-30 12:31:51'),
(52, 61, 'YUb4GYkzBw000000', '2025-02-11 11:44:21'),
(53, 60, 'x8rxaGsLYd800000', '2025-02-11 11:53:13'),
(54, 60, 'opaHGXDHOow00000', '2025-02-11 11:53:41'),
(55, 60, 'h37C1G39Cg000000', '2025-02-11 11:54:02'),
(56, 61, 'OOS7wxO9njw00000', '2025-02-11 11:58:10'),
(57, 61, 'fun8Z4JU14000000', '2025-02-11 11:58:19'),
(58, 61, 'oovZiat9OUE00000', '2025-02-11 11:58:29'),
(59, 61, 'khHeDETZEh400000', '2025-02-11 11:59:02'),
(60, 60, 'AKwK622M1EM00000', '2025-02-11 12:11:14'),
(61, 61, 'TTb4XyfHvw000000', '2025-02-11 12:18:23'),
(62, 60, 'z3xDoG2qb0Q00000', '2025-02-11 12:18:32'),
(63, 60, 'Xc1iiDkHDo000000', '2025-02-11 12:21:50'),
(64, 60, 'yW5rEfQlyI000000', '2025-02-13 11:11:00'),
(65, 60, 'mFQYCHxRE0000000', '2025-02-13 11:12:10'),
(66, 60, 'Taa1WOU9t4s00000', '2025-02-13 11:12:31'),
(67, 60, '5xPQrcxVqj000000', '2025-02-13 12:05:31'),
(68, 60, 'Nm1RKcKOxXY00000', '2025-02-13 12:14:59'),
(69, 60, 'CR95OF1zXQI00000', '2025-02-14 09:37:57'),
(70, 60, 'mbeLl4iEv7I00000', '2025-02-14 11:53:34'),
(71, 60, 'Yvas7c1Wk0000000', '2025-02-14 11:58:28'),
(72, 60, 'sm9YTD8tjPg00000', '2025-02-14 12:12:50'),
(73, 60, 'Uao30r1DWGg00000', '2025-02-28 10:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `username` varchar(254) DEFAULT NULL,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(254) DEFAULT NULL,
  `python_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `mobile`, `password`, `email`, `username`, `first_name`, `last_name`, `python_id`) VALUES
(1, '5053885986', 'abcd5053885986', 'email5053885986@gmail.com', 'usernameMXsWE', 'first_MXsWE', 'last_MXsWE', 27),
(2, '6277199448', 'abcd6277199448', 'email6277199448@gmail.com', 'usernameZBR7O', 'first_ZBR7O', 'last_ZBR7O', 28),
(3, '2782576197', 'abcd2782576197', 'email2782576197@gmail.com', 'usernameVotDU', 'first_VotDU', 'last_VotDU', 29),
(4, '9756682689', 'abcd9756682689', 'email9756682689@gmail.com', 'usernameSk6sj', 'first_Sk6sj', 'last_Sk6sj', 30),
(5, '4861277170', 'abcd4861277170', 'email4861277170@gmail.com', 'usernameMO7LI', 'first_MO7LI', 'last_MO7LI', 1),
(9, '3459863119', 'abcd3459863119', 'email3459863119@gmail.com', 'usernamefprS1', 'first_fprS1', 'last_fprS1', 2),
(10, '1175732435', 'abcd1175732435', 'email1175732435@gmail.com', 'usernametrgeB', 'first_trgeB', 'last_trgeB', 3),
(12, '6998020054', 'abcd6998020054', 'email6998020054@gmail.com', 'usernamefH9l9', 'first_fH9l9', 'last_fH9l9', 4),
(13, '4010048804', 'abcd4010048804', 'email4010048804@gmail.com', 'usernameP0Tm3', 'first_P0Tm3', 'last_P0Tm3', 31),
(14, '8949290529', 'abcd8949290529', 'email8949290529@gmail.com', 'usernameQCgx6', 'first_QCgx6', 'last_QCgx6', 32),
(15, '6084114790', 'abcd6084114790', 'email6084114790@gmail.com', 'username5b5C7', 'first_5b5C7', 'last_5b5C7', 33),
(16, '4887564991', 'abcd4887564991', 'email4887564991@gmail.com', 'usernamebD5CW', 'first_bD5CW', 'last_bD5CW', 34),
(17, '4730498681', 'abcd4730498681', 'email4730498681@gmail.com', 'usernameNkCgf', 'first_NkCgf', 'last_NkCgf', 35),
(18, '9871756121', 'abcd9871756121', 'email9871756121@gmail.com', 'usernameeCHUq', 'first_eCHUq', 'last_eCHUq', 36),
(19, '9820817368', 'abcd9820817368', 'email9820817368@gmail.com', 'usernamerJLpI', 'first_rJLpI', 'last_rJLpI', 37),
(20, '2950610749', 'abcd2950610749', 'email2950610749@gmail.com', 'usernamesdOGX', 'first_sdOGX', 'last_sdOGX', 38),
(21, '1059653256', 'abcd1059653256', 'email1059653256@gmail.com', 'usernameq6Wtn', 'first_q6Wtn', 'last_q6Wtn', 39),
(22, '3312068764', 'abcd3312068764', 'email3312068764@gmail.com', 'usernamexwjay', 'first_xwjay', 'last_xwjay', 40),
(23, '1003636395', 'abcd1003636395', 'email1003636395@gmail.com', 'username0bjOU', 'first_0bjOU', 'last_0bjOU', 41),
(24, '8347453035', 'abcd8347453035', 'email8347453035@gmail.com', 'username6MjUB', 'first_6MjUB', 'last_6MjUB', 42),
(25, '3089741747', 'abcd3089741747', 'email3089741747@gmail.com', 'usernameZEcPI', 'first_ZEcPI', 'last_ZEcPI', 43),
(26, '1269568404', 'abcd1269568404', 'email1269568404@gmail.com', 'username5FZs2', 'first_5FZs2', 'last_5FZs2', 44),
(27, '6939024626', 'abcd6939024626', 'email6939024626@gmail.com', 'usernamexZaZv', 'first_xZaZv', 'last_xZaZv', 45),
(28, '8092932882', 'abcd8092932882', 'email8092932882@gmail.com', 'usernameMWpmJ', 'first_MWpmJ', 'last_MWpmJ', 46),
(29, '2961899472', 'abcd2961899472', 'email2961899472@gmail.com', 'usernameUBlbr', 'first_UBlbr', 'last_UBlbr', 47),
(30, '4962062552', 'abcd4962062552', 'email4962062552@gmail.com', 'usernameXwiXB', 'first_XwiXB', 'last_XwiXB', 48),
(31, '5250293622', 'abcd5250293622', 'email5250293622@gmail.com', 'usernameALakQ', 'first_ALakQ', 'last_ALakQ', 49),
(32, '5476567116', 'abcd5476567116', 'email5476567116@gmail.com', 'usernameCwJ8B', 'first_CwJ8B', 'last_CwJ8B', 50),
(33, '5973369506', 'abcd5973369506', 'email5973369506@gmail.com', 'usernamekX7uk', 'first_kX7uk', 'last_kX7uk', 51),
(34, '4487543791', 'abcd4487543791', 'email4487543791@gmail.com', 'usernameKctOK', 'first_KctOK', 'last_KctOK', 52),
(35, '5235228803', 'abcd5235228803', 'email5235228803@gmail.com', 'usernameKtVht', 'first_KtVht', 'last_KtVht', 53),
(36, '1154992492', 'abcd1154992492', 'email1154992492@gmail.com', 'usernamedF32B', 'first_dF32B', 'last_dF32B', 54),
(37, '2964620958', 'abcd2964620958', 'email2964620958@gmail.com', 'usernameT5Rik', 'first_T5Rik', 'last_T5Rik', 55),
(38, '6830146761', 'abcd6830146761', 'email6830146761@gmail.com', 'usernameqZXlU', 'first_qZXlU', 'last_qZXlU', 56),
(39, '7694197572', 'abcd7694197572', 'email7694197572@gmail.com', 'usernamewx7OI', 'first_wx7OI', 'last_wx7OI', 57),
(40, '5567253023', 'abcd5567253023', 'email5567253023@gmail.com', 'usernameGW8f5', 'first_GW8f5', 'last_GW8f5', 58),
(41, '2746386982', 'abcd2746386982', 'email2746386982@gmail.com', 'usernameesjJM', 'first_esjJM', 'last_esjJM', 59),
(42, '1923203760', 'abcd1923203760', 'email1923203760@gmail.com', 'usernameQkTUv', 'first_QkTUv', 'last_QkTUv', 60),
(43, '9898989876', '123456', 'prasanna@gmail.ocm', 'PRasanna', 'null', 'null', 61),
(44, '9898987654', '123456', 'pprasanna@gmail.com', 'pprasanna', 'null', 'null', 62),
(45, '9999999999', '123456', 'sssssss@gmail.com', 'sssssss', 'null', 'null', 63),
(46, '1712957911', 'abcd1712957911', 'email1712957911@gmail.com', 'usernameGqDQ9', 'first_GqDQ9', 'last_GqDQ9', 64),
(47, '9999999998', '123123', 'ddsdswf@gmail.com', 'ssssss', 'null', 'null', 65),
(49, '7146474610', 'abcd7146474610', 'email7146474610@gmail.com', 'usernameWg1NX', 'first_Wg1NX', 'last_Wg1NX', 5),
(55, '8730809087', 'abcd8730809087', 'email8730809087@gmail.com', 'username9NlT2', 'first_9NlT2', 'last_9NlT2', 6),
(57, '9101911833', 'abcd9101911833', 'email9101911833@gmail.com', 'usernameYTDTP', 'first_YTDTP', 'last_YTDTP', 7),
(59, '1658645498', 'abcd1658645498', 'email1658645498@gmail.com', 'usernameCR9rb', 'first_CR9rb', 'last_CR9rb', 8),
(60, '2489759843', 'abcd2489759843', 'email2489759843@gmail.com', 'usernameH4eQ7', 'first_H4eQ7', 'last_H4eQ7', 66),
(61, '9877899876', 'sundhar', 'sundhar@gmail.com', 'sundhar', NULL, NULL, 67),
(62, '5402310499', 'abcd5402310499', 'email5402310499@gmail.com', 'usernameBkaJe', 'first_BkaJe', 'last_BkaJe', 68);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `register_id` (`register_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `python_id` (`python_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`register_id`) REFERENCES `register` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
