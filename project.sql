-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2017 at 11:06 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'him', '123');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
`id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `disc` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `code`, `disc`) VALUES
(1, 'c45683437', 20),
(5, 'h45683437', 50),
(6, 'Free20', 20),
(7, 'my', 99);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `feedback` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `uid`, `oid`, `feedback`) VALUES
(1, 3, 18, 'Hello'),
(2, 3, 19, 'bye bye thankw'),
(4, 3, 22, 'i like it'),
(5, 3, 23, 'Yea nice product'),
(6, 3, 24, 'nice'),
(7, 3, 28, 'himanshu makkar'),
(8, 3, 29, 'good'),
(9, 3, 31, 'f');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`id` int(10) NOT NULL,
  `status` int(5) NOT NULL,
  `price` int(10) NOT NULL,
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `shipping` varchar(100) NOT NULL,
  `billing` varchar(100) NOT NULL,
  `userid` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `status`, `price`, `first`, `last`, `contact`, `email`, `shipping`, `billing`, `userid`) VALUES
(1, 2, 350, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(2, 2, 350, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(3, 2, 350, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(4, 2, 1800, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(5, 2, 1000, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(6, 2, 1000, 'a', 'a', 123, 'a@a', 'a', 'a', 0),
(7, 2, 4299, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(8, 2, 1000, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(9, 2, 1000, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(10, 2, 2400, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(11, 2, 1000, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(12, 2, 500, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(13, 2, 500, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(14, 2, 1840, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(15, 2, 1360, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(16, 2, 1360, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(17, 2, 640, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(18, 0, 1199, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(19, 0, 640, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(20, 0, 1999, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(21, 0, 1999, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(22, 0, 500, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(23, 0, 250, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(24, 0, 799, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(25, 0, 640, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(26, 1, 150, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(27, 0, 400, 'dhruv', 'ahuj', 999, 'hhh', 'hhh', 'hhh', 0),
(28, 0, 640, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(29, 0, 1600, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(30, 0, 1600, 'AYU', 'AYU', 9898989898, 'ayu@ayu.com', 'roorkee', 'roorkee', 0),
(31, 1, 1999, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(32, 0, 23, 'himanshu', 'makkar', 9991271776, 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product1`
--

CREATE TABLE IF NOT EXISTS `product1` (
`id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product1`
--

INSERT INTO `product1` (`id`, `name`, `price`, `sex`, `description`, `brand`, `type`, `category`, `stock`) VALUES
(1, 'Adidas Men Shirts', '500', 'male', 'It''s polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'celebrity', 'Shirt', 0),
(2, 'Adidas Men Shirt', '1500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'style', 'Shirt', 0),
(3, 'Adidas Men Shirt', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '============', 'Shirt', 0),
(4, 'Adidas Men Tshirt', '500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'celebrity', 'tshirt', 0),
(5, 'Adidas Men Tshirt', '500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'celebrity', 'Tshirt', 0),
(6, 'Adidas Men Tshirt', '900', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Tshirt', 0),
(7, 'Adidas Men Tshirt', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Tshirt', 1),
(8, 'Adidas Men Tshirt', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Tshirt', 0),
(9, 'Adidas Men Tshirt', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Tshirt', 0),
(10, 'Adidas Men Tshirt', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Tshirt', 1),
(11, 'Adidas Men Tshirt', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'style', 'Tshirt', 0),
(12, 'Adidas Men Tshirt', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'style', 'Tshirt', 0),
(13, 'Adidas Men Tshirt', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'style', 'Tshirt', 0),
(14, 'Adidas Men Tshirt', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'style', 'Tshirt', 0),
(15, 'Adidas Men Tshirt', '299', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Tshirt', 1),
(16, 'Puma Men Shirt', '299', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Shirt', 0),
(17, 'Puma Men Shirt', '699', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Shirt', 1),
(18, 'Puma Men Shirt', '699', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Shirt', 1),
(19, 'Puma Men Shirt', '699', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Shirt', 1),
(20, 'Puma Men Shirt', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Shirt', 0),
(21, 'Puma Men Shirt', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Shirt', 0),
(22, 'Puma Men Shirt', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Shirt', 1),
(23, 'Puma Men Shirt', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Shirt', 1),
(24, 'Puma Men Shirt', '699', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Shirt', 1),
(25, 'Puma Men Shirt', '699', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Shirt', 1),
(26, 'Puma Girls Top', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '=====', 'Top', 0),
(27, 'Puma Girls Top', '799', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '==', 'top', 0),
(28, 'Puma Girls Top', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '=====', 'Top', 0),
(29, 'Puma Girls Top', '799', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '==', 'top', 0),
(30, 'Puma Girls Top', '799', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '==', 'top', 0),
(31, 'Puma Girls Top', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '=====', 'Top', 1),
(32, 'Puma Girls Top', '599', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'celebrity', 'Top', 1),
(33, 'Puma Girls Top', '599', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'celebrity', 'Top', 1),
(34, 'Puma Girls Top', '599', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'celebrity', 'Top', 1),
(35, 'Puma Men Tshirt', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Tshirt', 1),
(36, 'Puma Men Tshirt', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Tshirt', 1),
(37, 'Puma Men Tshirt', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Tshirt', 1),
(38, 'Puma Men Tshirt', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Tshirt', 1),
(39, 'Puma Men Tshirt', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Tshirt', 1),
(40, 'Puma Men Tshirt', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Tshirt', 1),
(41, 'Puma Men Tshirt', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Tshirt', 1),
(42, 'Puma Men Tshirt', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Tshirt', 1),
(43, 'Puma Men Tshirt', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Tshirt', 1),
(44, 'Puma Men Tshirt', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', '================', 'Tshirt', 1),
(45, 'Reebok Men Tshirt', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', '================', 'Tshirt', 1),
(46, 'Reebok Men Tshirt', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', '================', 'Tshirt', 1),
(47, 'Reebok Men Tshirt', '809', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', '================', 'Tshirt', 1),
(48, 'Reebok Girls Tshirt', '609', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', '================', 'Tshirt', 1),
(49, 'Reebok Girls Tshirt', '609', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', '================', 'Tshirt', 1),
(50, 'Reebok Girls Tshirt', '609', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', '================', 'Tshirt', 1),
(51, 'Reebok Girls Trouser', '2000', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', 'style', 'Trouser', 1),
(52, 'Reebok Girls Trouser', '2000', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', 'style', 'Trouser', 0),
(53, 'Reebok Girls Trouser', '2000', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', 'style', 'Trouser', 1),
(54, 'Puma Girls Trouser', '1699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'style', 'Trouser', 1),
(55, 'Puma Girls Trouser', '1699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'style', 'Trouser', 1),
(56, 'Adidas Girls Trouser', '1999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'style', 'Trouser', 1),
(57, 'Adidas Girls Trouser', '1999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'style', 'Trouser', 1),
(58, 'Adidas Male Trouser', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'style', 'Trouser', 1),
(59, 'Adidas Male Trouser', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'style', 'Trouser', 1),
(60, 'Adidas Male Trouser', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'style', 'Trouser', 1),
(61, 'Puma Male Trouser', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'style', 'Trouser', 1),
(62, 'Puma Male Trouser', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'style', 'Trouser', 1),
(63, 'Puma Male Trouser', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'style', 'Trouser', 1),
(64, 'Puma Male Trouser', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'style', 'Trouser', 1),
(65, 'Reebok Male Trouser', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', 'style', 'Trouser', 1),
(66, 'Reebok Male Trouser', '1700', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', 'style', 'Trouser', 1),
(67, 'Reebok Male Trouser', '1700', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'reebok', 'style', 'Trouser', 1),
(68, 'Puma Male Trouser', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'style', 'Trouser', 1),
(69, 'Puma Male Trouser', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'puma', 'style', 'Trouser', 1),
(70, 'Adidas Girls Tshirt', '999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Tshirt', 1),
(71, 'Adidas Girls Tshirt', '999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Tshirt', 1),
(72, 'Adidas Girls Tshirt', '999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Tshirt', 1),
(73, 'Adidas Girls Tshirt', '999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Tshirt', 1),
(74, 'Adidas Girls Top', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Top', 1),
(75, 'Adidas Girls Top', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Top', 1),
(76, 'Adidas Girls Top', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', '================', 'Top', 0),
(77, 'Adidas Girls Top', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'adidas', 'celebrity', 'Top', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
`id` int(10) NOT NULL,
  `orderid` int(10) NOT NULL,
  `productid` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `orderid`, `productid`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 4, 3),
(6, 5, 1),
(7, 6, 1),
(8, 7, 1),
(9, 7, 3),
(10, 7, 1),
(11, 7, 9),
(12, 7, 26),
(13, 8, 1),
(14, 9, 1),
(15, 10, 6),
(16, 10, 2),
(17, 11, 1),
(18, 12, 4),
(19, 13, 4),
(20, 14, 3),
(21, 14, 2),
(22, 15, 7),
(23, 15, 6),
(24, 16, 26),
(25, 17, 9),
(26, 18, 28),
(27, 18, 1),
(28, 19, 10),
(29, 20, 11),
(30, 21, 12),
(31, 22, 20),
(32, 23, 1),
(33, 24, 27),
(34, 25, 29),
(35, 26, 15),
(36, 27, 4),
(37, 28, 3),
(38, 29, 11),
(39, 30, 12),
(40, 31, 13),
(41, 32, 52),
(42, 32, 16);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(10) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `billingAddress` varchar(100) NOT NULL,
  `ShippingAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `contact`, `sex`, `dateofbirth`, `username`, `password`, `emailid`, `billingAddress`, `ShippingAddress`) VALUES
(3, 'himanshu', 'makkar', 9991271776, 'Male', '17/01/1995', 'himanshu40makkar', 'himandanshu', 'himanshu40makkar@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana'),
(4, 'a', 'a', 123, 'Male', '2015-09-17', 'a', 'a', 'a@a', 'a', 'a'),
(5, 'a', 'a', 8888888888, 'Male', '2015-10-10', 'as', 'as', 's@a', 'a', 'a'),
(6, 'pooja', 'singh', 8765544, 'Female', '2016-04-05', 'him', '123', 'ab@gmail.com', 'ggg', 'ggg'),
(7, 'himanshu', 'makkar', 999127177, 'Male', '2016-04-17', 'himanshu', '123', 'himanshu40makkar@gmail.com', '77/20 kaithal', '77/20 kaithal'),
(8, 'jatin', 'ahuja', 999127, 'Male', '2016-04-07', 'jatin', '123', 'jatin@ahuja.com', 'h.no 88 sector 20', 'h.no 88 sector 20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product1`
--
ALTER TABLE `product1`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `product1`
--
ALTER TABLE `product1`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
