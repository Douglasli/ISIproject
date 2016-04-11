/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : isi

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2016-04-10 12:19:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `itemid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`,`uid`),
  KEY `uid` (`uid`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`User_id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` double(10,0) DEFAULT NULL,
  `thumbnailimage` varchar(255) DEFAULT NULL,
  `description` text,
  `detailphoto` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `poNum` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(10,0) DEFAULT NULL,
  PRIMARY KEY (`poNum`,`itemid`),
  KEY `itemid` (`itemid`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`poNum`) REFERENCES `orders` (`poNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `poNum` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseDate` date DEFAULT NULL,
  `canDate` date DEFAULT NULL,
  `canType` varchar(255) DEFAULT NULL,
  `shipDate` date DEFAULT NULL,
  `shipAddress` varchar(255) DEFAULT NULL,
  `status` set('pending','hold','shipped','canceled') DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`poNum`),
  KEY `uid` (`uid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rating
-- ----------------------------
DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `user_id` int(11) NOT NULL,
  `poNum` int(11) NOT NULL,
  `itemid` int(11) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`poNum`),
  KEY `poNum` (`poNum`),
  KEY `itemid` (`itemid`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`),
  CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`poNum`) REFERENCES `orders` (`poNum`),
  CONSTRAINT `rating_ibfk_3` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `First_name` varchar(127) DEFAULT NULL,
  `Last_name` varchar(127) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `address` varchar(254) DEFAULT NULL,
  `password` varchar(254) DEFAULT NULL,
  `Type` set('vender','customer') DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
