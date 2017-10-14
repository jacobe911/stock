-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2017 at 09:38 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a1stocks`
--
CREATE DATABASE IF NOT EXISTS `a1stocks` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `a1stocks`;

-- --------------------------------------------------------

--
-- Table structure for table `banned`
--

DROP TABLE IF EXISTS `banned`;
CREATE TABLE IF NOT EXISTS `banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banned`
--

INSERT INTO `banned` (`id`, `ip`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(2, '100.10.25.40', '2015-05-19 16:37:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(3, '91.220.13.30', '2015-05-19 16:38:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('c362e1eabc071461decdd79d98a79badbdf130f6', '::1', 1446021078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363032313037383b),
('14faea629a3076ecbff0ac9224629ff9221cc052', '::1', 1446032854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363033323835313b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343436303332383234223b),
('f5f39ed08c6491a5b28185e4788bac1ce92a91f1', '::1', 1446033192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363033333138353b617574685f6572726f72737c733a32323a223c703e496e636f7272656374204c6f67696e3c2f703e223b),
('9b2e45e65c210a3a41bfaa0bd04d3cba65706837', '::1', 1446821279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363832313230323b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343436383035333738223b67726176617461727c733a33323a223634653162386433346634323564313965316565326561373233366433303238223b706f7374616c7c613a303a7b7d),
('m5dpqfnbdui9b7ferpm90vktit412a75', '::1', 1506801609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830313332323b),
('su7eu5qqivgugj4mj5gl63hskajs0942', '::1', 1506801883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830313636353b),
('so8sdonqbnrlblanv4m6pguefu2thr57', '::1', 1506802267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830313936393b),
('47inhci89nu6oevjj893o9bcig70bmdl', '::1', 1506802282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830323238323b),
('s66ua5lovemffm2knjfqtkvpt3kifmvn', '::1', 1506804220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830343036363b),
('d1tkusk89ju84n9lkn2kl9h4rkvonvsv', '::1', 1506804744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830343536333b),
('i4f1kc08f5vj7ccgrnfjlng0bu58iaqr', '::1', 1506804891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830343838393b),
('obqaqpu6qohs0hre5j6oohvmqrojpmqk', '::1', 1506805424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830353432333b),
('eufn8520mdo290m3a633e4818kf3gnj1', '::1', 1506806040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830353738383b),
('ebl65a0un0ilsm39l3cien54t7u23v2a', '::1', 1506806415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830363131393b),
('kbgdl8ocgm8dulcn005hf8meh2iv35vj', '::1', 1506807329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830373038323b),
('06khgr0l0p340p6u3tjd7e87fql12f34', '::1', 1506807877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830373630383b),
('a31b9r1b67060b99ljfdgi26vvh3pkhl', '::1', 1506808663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830383432393b),
('f7tdgdb583s8he9p357f9m5viuako25e', '::1', 1506809378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830393139353b),
('n2nnl962ediou9aq3gfgank42m4pk6fr', '::1', 1506809797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830393737393b),
('mpg2a9pp3tico22vp2080uh4pedjmgpa', '::1', 1506967490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363936373439303b),
('fq2hd1sodujqqjrnus7h2b693v5u86ea', '::1', 1506973276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363937333138333b),
('mt094fcv108c2ffnrko5fpkju0kj6ll6', '::1', 1507056302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530373035363230383b),
('miaos8532mvmd1ojas6bdq75eo79rktm', '::1', 1507056655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530373035363633353b),
('r8kgssouo8gi0bqbbnackb365l75r8ap', '::1', 1507058926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530373035383830313b),
('a2tnfanhaddqrm5kmvhbr4icv88hs86l', '::1', 1507150721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530373135303732313b),
('uds9891q49u7edo0sto4l4j3p5hmkfcs', '127.0.0.1', 1507489915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530373438393931353b),
('qd8cj5l19n3304fu796o8e2p8buls9sm', '127.0.0.1', 1507500214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530373530303231333b),
('qu5d6nfcp1p53esangn7svj9l0c76bhm', '127.0.0.1', 1507972897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530373937323537313b),
('mtvg6qsqvbkdbjh2pq7bp83agah28k59', '127.0.0.1', 1507973038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530373937333033383b),
('6h1ahr9pgrv0e1oiq77n2t1sdcpk8alo', '127.0.0.1', 1507973557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530373937333334393b);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rat`
--

DROP TABLE IF EXISTS `rat`;
CREATE TABLE IF NOT EXISTS `rat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rat`
--

INSERT INTO `rat` (`id`, `user_id`, `date_time`, `code`, `message`) VALUES
(1, 1, '2015-11-06 13:47:34', 0, 'User logged out'),
(2, 1, '2015-11-06 13:47:38', 1, 'User logged in');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(20) NOT NULL,
  `ticker` varchar(8) NOT NULL,
  `buy_price` float NOT NULL,
  `stop_loss` float NOT NULL,
  `target_price` float NOT NULL,
  `low` float DEFAULT NULL,
  `current` float DEFAULT NULL,
  `high` float DEFAULT NULL,
  `low_pl` float DEFAULT NULL,
  `current_pl` float DEFAULT NULL,
  `high_pl` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `date`, `ticker`, `buy_price`, `stop_loss`, `target_price`, `low`, `current`, `high`, `low_pl`, `current_pl`, `high_pl`) VALUES
(1, 1501560000, 'VLRS', 13.7, 11, 15, 11.27, 11.33, 13.75, -17.74, -17.3, 0.36),
(2, 1501646400, 'TISI', 14.6, 11.7, 16, 10.5, 12.6, 14.43, -7.89, 10.53, 26.58),
(3, 1501732800, 'SONC', 23.78, 19, 26, 22.11, 24.38, 26.17, -7.02, 2.52, 10.05),
(4, 1501819200, 'DWT', 27.38, 21.6, 29.7, 21.58, 23.01, 32.84, -21.18, -15.96, 19.94),
(5, 1502078400, 'ANW', 4.75, 3.76, 5.17, 4, 4.4, 5.35, -15.79, -7.37, 12.63),
(6, 1502164800, 'GGAL', 37.35, 30, 41, 36.14, 54.66, 54.81, -3.24, 46.35, 46.75),
(7, 1502251200, 'MD', 44.3, 35.44, 48.73, 40.78, 42.17, 45.05, -7.95, -4.81, 1.69),
(8, 1502337600, 'EGRX', 49.15, 38.5, 52.9, 50, 51.55, 61.99, 1.73, 4.88, 26.12),
(9, 1502424000, 'RRC', 16.92, 13.53, 18.61, 16, 19.44, 20.65, -5.44, 14.89, 22.04),
(10, 1502683200, 'SAVE', 38.25, 30.4, 41.8, 30.32, 33.8, 38.69, -20.73, -11.63, 1.15),
(11, 1502769600, 'TISI', 11.4, 9, 12.37, 10.5, 12.6, 14.43, -7.89, 10.53, 26.58),
(12, 1502856000, 'TEVA', 17.97, 14.1, 19.36, 14.3, 14.98, 20.1, -20.42, -16.64, 11.85),
(13, 1502942400, 'MAT', 17.42, 13.93, 19.16, 14.35, 15.74, 17.16, -17.62, -9.64, -1.49),
(14, 1503028800, 'SLCA', 25.8, 20.64, 28.38, 24.85, 28.36, 33.72, -3.68, 9.92, 30.7),
(15, 1503288000, 'QEP', 7.44, 5.95, 8.18, 7.08, 8.91, 9.27, -4.84, 19.76, 24.6),
(16, 1503374400, 'PAA', 19.4, 15.52, 21.34, 19.44, 21.01, 22.53, 0.21, 8.3, 16.13),
(17, 1503460800, 'NGL', 9.5, 7.44, 10.45, 8.57, 11.9, 12.5, -9.79, 25.26, 31.58),
(18, 1503547200, 'HP', 44.52, 35.44, 48.73, 42.16, 52.2, 53.74, -5.3, 17.25, 20.71),
(19, 1503633600, 'EEP', 14.32, 11.45, 15.75, 14.17, 15.7, 16.34, -1.05, 9.64, 14.11),
(20, 1503892800, 'SPN', 8.36, 6.56, 9, 7.91, 10.17, 11.08, -5.38, 21.65, 32.54),
(21, 1503979200, 'LKSD', 15.83, 12.6, 17.32, 15.05, 16.41, 18, -4.93, 3.66, 13.71),
(22, 1504065600, 'FET', 10.95, 8.6, 11.82, 11.18, 14.2, 16, 2.1, 29.68, 46.12),
(23, 1504152000, 'DRQ', 37.3, 29.84, 41, 37.2, 43.05, 45.1, -0.27, 15.42, 20.91),
(24, 1504238400, 'RH', 46.79, 37.43, 51.46, 47.5, 80.08, 80.87, 1.52, 71.15, 72.84),
(25, 1504584000, 'BAS', 15.22, 12.17, 16.74, 14.8, 18.41, 20.27, -2.76, 20.96, 33.18),
(26, 1504670400, 'LABD', 5.1, 4.1, 5.6, 4.22, 4.56, 5.31, -17.25, -10.59, 4.12),
(27, 1504756800, 'FTK', 5.23, 418, 5.75, 4.48, 4.73, 5.82, -14.34, -9.56, 11.28),
(28, 1504843200, 'DF', 11.2, 8.96, 12.32, 10.3, 10.66, 11.38, -8.04, -4.82, 1.61),
(29, 1505102400, 'BNED', 5.59, 4.32, 5.94, 5.51, 6.19, 6.85, -1.43, 10.73, 22.54),
(30, 1505188800, 'AFSI', 12.11, 9.56, 13.14, 12.3, 13.57, 14.35, 1.57, 12.06, 18.5),
(31, 1505275200, 'BJRI', 29.15, 23, 30.8, 28.58, 30.05, 31.05, -1.96, 3.09, 6.52),
(32, 1505361600, 'AAOI', 59.69, 47.2, 64.9, 46, 47.01, 71.29, -22.94, -21.24, 19.43),
(33, 1505448000, 'GHL', 14.2, 11.36, 15.62, 14.05, 17.05, 17.3, -1.06, 20.07, 21.83),
(34, 1505707200, 'VRA', 8.61, 6.84, 9.4, 7.71, 7.81, 8.9, -10.45, -9.29, 3.37),
(35, 1505793600, 'MDCO', 34.61, 27.2, 37.4, 34.66, 34.71, 39.44, 0.14, 0.29, 13.96),
(36, 1505880000, 'RDUS', 33.99, 27.5, 37.38, 34.25, 37.5, 40.788, 0.76, 10.33, 20),
(37, 1505966400, 'MNK', 34.49, 27.6, 37.9, 33.19, 33.29, 39.05, -3.77, -3.48, 13.22),
(38, 1506052800, 'KT', 14.31, 11.45, 15.74, 13.77, 14.57, 14.65, -3.77, 1.82, 2.38),
(39, 1506312000, 'DKS', 26.87, 21.5, 29, 24.6, 24.85, 28.04, -8.45, -7.52, 4.35),
(40, 1506398400, 'FTR', 12.28, 9.82, 13.5, 11.68, 11.89, 13, -4.89, -3.18, 5.86),
(41, 1506484800, 'AKAO', 16.04, 12.85, 17.64, 13.05, 13.25, 16.49, -18.64, -17.39, 2.81),
(42, 1506571200, 'NWL', 41.58, 33.5, 45.5, 41.77, 43.1, 43.99, 0.46, 3.66, 5.8),
(43, 1506657600, 'TRUE', 15.04, 12, 16.39, 15.07, 15.35, 16.375, 0.2, 2.06, 8.88),
(47, 1506988800, 'ICPT', 59.55, 48, 65.5, 59.7, 65.49, 75.8, 0.25, 9.97, 27.29),
(46, 1506902400, 'SNCR', 9.33, 7.46, 10.26, 10.36, 14.15, 14.67, 11.04, 51.66, 57.23),
(48, 1507075200, 'UAA', 16.71, 13.36, 18.38, 16.05, 16.19, 17.14, -3.95, -3.11, 2.57),
(49, 1507161600, 'DRIP', 17.04, 13.63, 18.74, 16.36, 17.72, 18.36, -3.99, 3.99, 7.75),
(50, 1507248000, 'CATM', 24.35, 19.2, 26.4, 24.01, 24.18, 25.76, -1.4, -0.7, 5.79),
(51, 1507507200, 'MOMO', 31.97, 26, 35, 31.31, 32.83, 33.285, -2.06, 2.69, 4.11),
(52, 1507593600, 'VXX', 37.89, 30, 41.36, 35.03, 35.34, 37.89, -7.55, -6.73, 0),
(53, 1507680000, 'VIPS', 8.28, 6.62, 9.1, 7.8, 7.88, 8.48, -5.8, -4.83, 2.42),
(54, 1507766400, 'SCG', 49.58, 39.7, 54.5, 49.3, 49.85, 50.22, -0.56, 0.54, 1.29),
(55, 1507852800, 'WOR', 44.13, 34.5, 47.3, 44.16, 44.71, 45, 0.07, 1.31, 1.97);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'gtbuLmffMbIAevpNfUYwfe', 1268889823, 1446810458, 1, 'Admin', 'istrator', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
