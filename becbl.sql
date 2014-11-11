/*
Navicat MySQL Data Transfer

Source Server         : TOPARMA
Source Server Version : 50619
Source Host           : 10.0.0.230:3306
Source Database       : becbl

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2014-11-10 23:34:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bans
-- ----------------------------
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GUID` varchar(128) NOT NULL,
  `Time` int(11) NOT NULL,
  `Message` varchar(128) NOT NULL,
  `Reason` varchar(48) NOT NULL,
  `GroupID` int(10) NOT NULL,
  `AdminID` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ban_history
-- ----------------------------
DROP TABLE IF EXISTS `ban_history`;
CREATE TABLE `ban_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GUID` varchar(128) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(128) NOT NULL,
  `AdminID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for reasons
-- ----------------------------
DROP TABLE IF EXISTS `reasons`;
CREATE TABLE `reasons` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL,
  `Reason` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
