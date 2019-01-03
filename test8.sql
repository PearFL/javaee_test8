-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2019-01-03 06:13:14
-- 服务器版本： 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test8`
--

-- --------------------------------------------------------

--
-- 表的结构 `ceshi`
--

DROP TABLE IF EXISTS `ceshi`;
CREATE TABLE IF NOT EXISTS `ceshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `val` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ceshi`
--

INSERT INTO `ceshi` (`id`, `val`) VALUES
(1, 2),
(2, 4),
(3, 10);

-- --------------------------------------------------------

--
-- 表的结构 `tb_card`
--

DROP TABLE IF EXISTS `tb_card`;
CREATE TABLE IF NOT EXISTS `tb_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(30) NOT NULL,
  `card_date` varchar(30) NOT NULL,
  `card_balance` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tb_customer`
--

DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE IF NOT EXISTS `tb_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(20) NOT NULL,
  `customer_sex` varchar(5) NOT NULL,
  `customer_birth` varchar(16) NOT NULL,
  `customer_userid` varchar(30) NOT NULL,
  `customer_mobile` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_customer`
--

DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE IF NOT EXISTS `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `jobs` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_customer`
--

INSERT INTO `t_customer` (`id`, `username`, `jobs`, `phone`) VALUES
(1, '123', '123', '123');

--
-- 限制导出的表
--

--
-- 限制表 `tb_card`
--
ALTER TABLE `tb_card`
  ADD CONSTRAINT `tb_card_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tb_customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
