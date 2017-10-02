-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2017 at 05:53 PM
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
('n2nnl962ediou9aq3gfgank42m4pk6fr', '::1', 1506809797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363830393737393b);

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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `date`, `ticker`, `buy_price`, `stop_loss`, `target_price`, `low`, `current`, `high`, `low_pl`, `current_pl`, `high_pl`) VALUES
(1, 1501560000, 'VLRS', 13.7, 11, 15, 11.62, 11.87, 13.75, -15.18, -13.36, 0.36),
(2, 1501646400, 'TISI', 14.6, 11.7, 16, 10.5, 13.35, 14.43, -7.89, 17.11, 26.58),
(3, 1501732800, 'SONC', 23.78, 19, 26, 22.11, 25.45, 26.17, -7.02, 7.02, 10.05),
(4, 1501819200, 'DWT', 27.38, 21.6, 29.7, 21.58, 23.02, 32.84, -21.18, -15.92, 19.94),
(5, 1502078400, 'ANW', 4.75, 3.76, 5.17, 4, 4.95, 5.35, -15.79, 4.21, 12.63),
(6, 1502164800, 'GGAL', 37.35, 30, 41, 36.14, 51.54, 52.4, -3.24, 37.99, 40.29),
(7, 1502251200, 'MD', 44.3, 35.44, 48.73, 40.78, 43.12, 44.92, -7.95, -2.66, 1.4),
(8, 1502337600, 'EGRX', 49.15, 38.5, 52.9, 50, 59.64, 61.99, 1.73, 21.34, 26.12),
(9, 1502424000, 'RRC', 16.92, 13.53, 18.61, 16, 19.57, 20.42, -5.44, 15.66, 20.69),
(10, 1502683200, 'SAVE', 38.25, 30.4, 41.8, 30.32, 33.41, 38.69, -20.73, -12.65, 1.15),
(11, 1502769600, 'TISI', 11.4, 9, 12.37, 10.5, 13.35, 14.43, -7.89, 17.11, 26.58),
(12, 1502856000, 'TEVA', 17.97, 14.1, 19.36, 15.22, 17.6, 20.1, -15.3, -2.06, 11.85),
(13, 1502942400, 'MAT', 17.42, 13.93, 19.16, 14.35, 15.48, 17.16, -17.62, -11.14, -1.49),
(14, 1503028800, 'SLCA', 25.8, 20.64, 28.38, 24.85, 31.07, 33.72, -3.68, 20.43, 30.7),
(15, 1503288000, 'QEP', 7.44, 5.95, 8.18, 7.08, 8.57, 9.02, -4.84, 15.19, 21.24),
(16, 1503374400, 'PAA', 19.4, 15.52, 21.34, 19.44, 21.19, 22.53, 0.21, 9.23, 16.13),
(17, 1503460800, 'NGL', 9.5, 7.44, 10.45, 8.57, 11.55, 11.7, -9.79, 21.58, 23.16),
(18, 1503547200, 'HP', 44.52, 35.44, 48.73, 42.16, 52.11, 53.74, -5.3, 17.05, 20.71),
(19, 1503633600, 'EEP', 14.32, 11.45, 15.75, 14.17, 15.98, 16.17, -1.05, 11.59, 12.92),
(20, 1503892800, 'SPN', 8.36, 6.56, 9, 7.91, 10.68, 11.08, -5.38, 27.75, 32.54),
(21, 1503979200, 'LKSD', 15.83, 12.6, 17.32, 15.05, 16.51, 17.99, -4.93, 4.3, 13.64),
(22, 1504065600, 'FET', 10.95, 8.6, 11.82, 11.18, 15.9, 16, 2.1, 45.21, 46.12),
(23, 1504152000, 'DRQ', 37.3, 29.84, 41, 37.2, 44.15, 45.1, -0.27, 18.36, 20.91),
(24, 1504238400, 'RH', 46.79, 37.43, 51.46, 47.5, 70.32, 75.45, 1.52, 50.29, 61.25),
(25, 1504584000, 'BAS', 15.22, 12.17, 16.74, 14.8, 19.3, 19.62, -2.76, 26.81, 28.91),
(26, 1504670400, 'LABD', 5.1, 4.1, 5.6, 4.58, 4.6, 5.31, -10.2, -9.8, 4.12),
(27, 1504756800, 'FTK', 5.23, 418, 5.75, 4.48, 4.65, 5.82, -14.34, -11.09, 11.28),
(28, 1504843200, 'DF', 11.2, 8.96, 12.32, 10.3, 10.88, 11.38, -8.04, -2.86, 1.61),
(29, 1505102400, 'BNED', 5.59, 4.32, 5.94, 5.51, 6.51, 6.84, -1.43, 16.46, 22.36),
(30, 1505188800, 'AFSI', 12.11, 9.56, 13.14, 12.3, 13.46, 13.73, 1.57, 11.15, 13.38),
(31, 1505275200, 'BJRI', 29.15, 23, 30.8, 28.58, 30.45, 30.83, -1.96, 4.46, 5.76),
(32, 1505361600, 'AAOI', 59.69, 47.2, 64.9, 56.9, 64.67, 71.29, -4.67, 8.34, 19.43),
(33, 1505448000, 'GHL', 14.2, 11.36, 15.62, 14.05, 16.6, 17, -1.06, 16.9, 19.72),
(34, 1505707200, 'VRA', 8.61, 6.84, 9.4, 8.12, 8.81, 8.9, -5.69, 2.32, 3.37),
(35, 1505793600, 'MDCO', 34.61, 27.2, 37.4, 34.7, 37.04, 37.18, 0.26, 7.02, 7.43),
(36, 1505880000, 'RDUS', 33.99, 27.5, 37.38, 34.25, 38.55, 39.74, 0.76, 13.42, 16.92),
(37, 1505966400, 'MNK', 34.49, 27.6, 37.9, 34.52, 37.37, 37.56, 0.09, 8.35, 8.9),
(38, 1506052800, 'KT', 14.31, 11.45, 15.74, 13.84, 13.87, 14.33, -3.28, -3.07, 0.14),
(39, 1506312000, 'DKS', 26.87, 21.5, 29, 26.89, 27.01, 27.74, 0.07, 0.52, 3.24),
(40, 1506398400, 'FTR', 12.28, 9.82, 13.5, 11.74, 11.79, 13, -4.4, -3.99, 5.86),
(41, 1506484800, 'AKAO', 16.04, 12.85, 17.64, 15.72, 15.95, 16.49, -2, -0.56, 2.81),
(42, 1506571200, 'NWL', 41.58, 33.5, 45.5, 41.77, 42.67, 42.69, 0.46, 2.62, 2.67),
(43, 1506657600, 'TRUE', 15.04, 12, 16.39, 1000000000000, 15.79, 1, 6648940000000, 4.99, -93.35);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
