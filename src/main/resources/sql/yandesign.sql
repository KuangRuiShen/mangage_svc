/*
Navicat MySQL Data Transfer

Source Server         : 94.191.18.52
Source Server Version : 50643
Source Host           : 94.191.18.52:3306
Source Database       : yandesign

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-07-30 23:09:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` varchar(50) NOT NULL COMMENT '图片id',
  `file_url` varchar(255) DEFAULT NULL COMMENT '文件地址',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('ec04ce3a98be132726c1654fd940ed16', 'http://94.191.18.52/upload/video/ec04ce3a98be132726c1654fd940ed16.wmv', '2019-07-30 19:52:54');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `imgurl` varchar(200) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `videourl` varchar(255) NOT NULL COMMENT '文件',
  `serial` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `product_id` int(11) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_image
-- ----------------------------

-- ----------------------------
-- Table structure for product_picture
-- ----------------------------
DROP TABLE IF EXISTS `product_picture`;
CREATE TABLE `product_picture` (
  `product_id` int(5) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `order` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_picture
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '管理员', 'admin', '0192023a7bbd73250516f069df18b500');

-- ----------------------------
-- Table structure for welcome
-- ----------------------------
DROP TABLE IF EXISTS `welcome`;
CREATE TABLE `welcome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `order` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welcome
-- ----------------------------
