-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2017 at 07:53 PM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `news_smarty`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `msg`, `created_at`, `phone`) VALUES
(1, 'tesfdasdf', 'hosseinzade2731@gmail.com', 'asdasd', '2017-02-03 10:54:26', '2154'),
(2, 'tesfdasdf', 'hosseinzade2731@gmail.com', 'asdasd', '2017-02-03 11:05:30', '2154');

-- --------------------------------------------------------

--
-- Table structure for table `like_ip`
--

CREATE TABLE IF NOT EXISTS `like_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_note` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `auther_id` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `slider` int(11) DEFAULT NULL,
  `pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `like_count` int(11) DEFAULT '0',
  `visit` int(11) DEFAULT '0',
  `cat_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `short_note`, `note`, `auther_id`, `active`, `slider`, `pic_url`, `like_count`, `visit`, `cat_id`, `created_at`) VALUES
(1, 'تست ۱', 'این یک تست است', 'این یک تست است', 1, 1, 0, NULL, 1, 1, 1, NULL),
(2, 'تست ۱', 'این یک تست است خالی مینده', '<p>این یک تست است&nbsp;</p>\r\n', 1, 1, 1, 'man-back.jpg', 1, 1, 2, NULL),
(4, 'TEst', 'این یک تست است که برای اسلایدر مورد استفاده قرار گرفته است', '<p>test</p>\r\n', NULL, NULL, 1, 'sparklers.jpg', 0, 0, 4, '2017-02-27 00:00:00'),
(5, 'Test add', 'test', '', NULL, NULL, 0, 'photo_2016-09-23_10-07-36.jpg', 0, 0, 2, '2017-02-14 00:00:00'),
(6, 'Test', 'test short note', '<p>hgg</p>\r\n', NULL, NULL, 0, 'photo_2016-09-23_10-07-36.jpg', 0, 0, 1, '2017-02-06 00:00:00'),
(8, 'Test', 'شسی', '<p>hgg</p>\r\n', NULL, NULL, 0, 'photo_2016-09-23_10-07-36.jpg', 0, 0, 3, '2017-02-07 00:00:00'),
(9, 'TEst', 'dssdf', '<p>sdfsdf</p>\r\n', NULL, NULL, 0, '', 0, 0, 6, '2017-02-03 09:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describtion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`id`, `name`, `describtion`, `active`) VALUES
(1, 'سیاسی', 'دسته بندی اخبار سیاسی', 1),
(2, 'اقتصادی', 'دسته بندی اخبار اقتصادی', 0),
(3, 'سیاسی', 'دسته بندی اخبار سیاسی', 0),
(4, 'اقتصادی', 'دسته بندی اخبار اقتصادی', 0),
(6, 'MrMostafa', 'test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_at`) VALUES
(2, 'test2', 'test2@test.test', '098f6bcd4621d373cade4e832627b4f6', NULL),
(6, 'test 12', 'test123@test.com', '098f6bcd4621d373cade4e832627b4f6', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `like_ip`
--
ALTER TABLE `like_ip`
  ADD CONSTRAINT `like_ip_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `news_category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
