/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2016-04-18 00:03:35
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
-- Records of cart
-- ----------------------------

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
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', 'nike1', 'nike', '688', '/001.png', '12345', '/001.png', 'Shoes');

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `user_id` int(11) unsigned NOT NULL,
  `nid` int(11) NOT NULL,
  `content` text,
  `status` set('1','0') DEFAULT NULL,
  PRIMARY KEY (`user_id`,`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification
-- ----------------------------

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
-- Records of orderitem
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for rating
-- ----------------------------
DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `user_id` int(11) NOT NULL,
  `poNum` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `stars` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`poNum`,`itemid`),
  KEY `poNum` (`poNum`),
  KEY `itemid` (`itemid`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`),
  CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`poNum`) REFERENCES `orders` (`poNum`),
  CONSTRAINT `rating_ibfk_3` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rating
-- ----------------------------

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `user_id` int(11) NOT NULL,
  `poNum` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `comment` text,
  PRIMARY KEY (`user_id`,`poNum`,`itemid`),
  KEY `poNum` (`poNum`),
  KEY `itemid` (`itemid`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`poNum`) REFERENCES `orders` (`poNum`),
  CONSTRAINT `review_ibfk_3` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------

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

-- ----------------------------
-- Records of user
-- ----------------------------
