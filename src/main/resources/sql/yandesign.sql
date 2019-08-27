/*
 Navicat Premium Data Transfer

 Source Server         : 94.191.18.52
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : 94.191.18.52:3306
 Source Schema         : yandesign

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : 65001

 Date: 27/08/2019 14:22:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片id',
  `file_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件地址',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('21829b38b67607fe49cbe5bcae6cbb60', 'http://94.191.18.52/upload/video/21829b38b67607fe49cbe5bcae6cbb60.mp4', '2019-08-21 09:13:59');
INSERT INTO `file` VALUES ('48', 'http://94.191.18.52/upload/video/48.mp4', '2019-08-20 09:59:30');
INSERT INTO `file` VALUES ('49', 'http://94.191.18.52/upload/video/49.mp4', '2019-08-20 14:21:39');
INSERT INTO `file` VALUES ('50', 'http://94.191.18.52/upload/video/50.mp4', '2019-08-20 14:23:31');
INSERT INTO `file` VALUES ('51', 'http://94.191.18.52/upload/video/51.mp4', '2019-08-21 09:02:38');
INSERT INTO `file` VALUES ('52', 'http://94.191.18.52/upload/video/52.mp4', '2019-08-21 10:25:23');
INSERT INTO `file` VALUES ('53', 'http://94.191.18.52/upload/video/53.mp4', '2019-08-21 10:25:38');
INSERT INTO `file` VALUES ('54', 'http://94.191.18.52/upload/video/54.mp4', '2019-08-21 10:26:47');
INSERT INTO `file` VALUES ('55', 'http://94.191.18.52/upload/video/55.mp4', '2019-08-21 09:19:12');
INSERT INTO `file` VALUES ('56', 'http://94.191.18.52/upload/video/56.mp4', '2019-08-21 10:24:46');
INSERT INTO `file` VALUES ('60', 'http://94.191.18.52/upload/video/60.mp4', '2019-08-20 14:23:43');
INSERT INTO `file` VALUES ('61', 'http://94.191.18.52/upload/video/61.mp4', '2019-08-20 14:24:08');
INSERT INTO `file` VALUES ('62', 'http://94.191.18.52/upload/video/62.mp4', '2019-08-21 10:27:03');
INSERT INTO `file` VALUES ('63', 'http://94.191.18.52/upload/video/63.mp4', '2019-08-21 10:12:16');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `px` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '观', 1);
INSERT INTO `menu` VALUES (2, '筑', 2);
INSERT INTO `menu` VALUES (3, '物', 3);
INSERT INTO `menu` VALUES (4, '艺', 4);
INSERT INTO `menu` VALUES (5, '辑', 5);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imgurl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `videourl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件',
  `serial` int(5) DEFAULT NULL,
  `type_id` int(5) NOT NULL,
  `year` int(10) DEFAULT NULL,
  `roundurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (46, '石说', 'http://94.191.18.52/upload/img/20190815091600821.jpg', '', NULL, 3, 5, 2019, NULL);
INSERT INTO `product` VALUES (47, '日本考察之旅', 'http://94.191.18.52/upload/img/20190815091609792.jpg', '', NULL, 2, 5, 2019, NULL);
INSERT INTO `product` VALUES (50, '广州酒家', 'http://94.191.18.52/upload/img/20190821100843831.jpg', '', 'http://94.191.18.52/upload/video/50.mp4', 3, 2, NULL, 'http://94.191.18.52/upload/img/20190821110855754.jpg');
INSERT INTO `product` VALUES (52, 'w酒店', 'http://94.191.18.52/upload/img/20190821100835107.jpg', '', 'http://94.191.18.52/upload/video/52.mp4', 1, 3, NULL, 'http://94.191.18.52/upload/img/20190821110804707.jpg');
INSERT INTO `product` VALUES (53, '香格里拉酒店', 'http://94.191.18.52/upload/img/20190821100820701.jpg', '', 'http://94.191.18.52/upload/video/53.mp4', 2, 3, NULL, 'http://94.191.18.52/upload/img/20190820181857842.jpg');
INSERT INTO `product` VALUES (54, '威斯汀酒店', 'http://94.191.18.52/upload/img/2019082110081198.jpg', '', 'http://94.191.18.52/upload/video/54.mp4', 3, 3, NULL, 'http://94.191.18.52/upload/img/20190821110818429.jpg');
INSERT INTO `product` VALUES (55, '点都德', 'http://94.191.18.52/upload/img/2019082110084991.jpg', '', NULL, 2, 4, NULL, 'http://94.191.18.52/upload/img/2019082111081552.jpg');
INSERT INTO `product` VALUES (56, '喜鹊茶餐厅', 'http://94.191.18.52/upload/img/20190821100859139.jpg', '', 'http://94.191.18.52/upload/video/56.mp4', 1, 4, NULL, 'http://94.191.18.52/upload/img/20190821110839109.jpg');
INSERT INTO `product` VALUES (57, '石说', 'http://94.191.18.52/upload/img/20190819172541837.jpg', '', NULL, 1, 6, NULL, NULL);
INSERT INTO `product` VALUES (58, '旅游', 'http://94.191.18.52/upload/img/20190819172603852.jpg', '', NULL, 2, 6, NULL, NULL);
INSERT INTO `product` VALUES (59, '智慧', 'http://94.191.18.52/upload/img/20190819172629182.jpg', '', NULL, 1, 6, NULL, NULL);
INSERT INTO `product` VALUES (60, '从化酒家', 'http://94.191.18.52/upload/img/20190821100831797.jpg', '', 'http://94.191.18.52/upload/video/60.mp4', 5, 2, NULL, 'http://94.191.18.52/upload/img/20190820182403239.jpg');
INSERT INTO `product` VALUES (61, '增城酒家', 'http://94.191.18.52/upload/img/20190821100820103.jpg', '', 'http://94.191.18.52/upload/video/61.mp4', 6, 2, NULL, 'http://94.191.18.52/upload/img/20190821110805725.jpg');
INSERT INTO `product` VALUES (62, '希尔顿酒店', 'http://94.191.18.52/upload/img/20190821100801834.jpg', '', 'http://94.191.18.52/upload/video/62.mp4', 4, 3, NULL, 'http://94.191.18.52/upload/img/20190820182116516.jpg');
INSERT INTO `product` VALUES (63, '越秀酒家', 'http://94.191.18.52/upload/img/20190821100811702.jpg', '', 'http://94.191.18.52/upload/video/63.mp4', 7, 2, NULL, 'http://94.191.18.52/upload/img/20190821090834491.jpg');

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image`  (
  `product_id` int(11) DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163113542.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163117148.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163119336.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163121449.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163124417.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163126786.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/2019081716312834.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163131332.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163133756.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163135309.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/2019081716313844.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163140906.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163142145.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163145363.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163148557.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163151492.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163154884.jpg');
INSERT INTO `product_image` VALUES (47, 'http://94.191.18.52/upload/img/20190817163159313.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627244.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627251.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627922.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627661.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/2019082009062791.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627324.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627749.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627417.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627958.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627362.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627221.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627756.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627970.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627956.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627555.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627416.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090627135.jpg');
INSERT INTO `product_image` VALUES (46, 'http://94.191.18.52/upload/img/20190820090628112.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638915.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/2019082009063824.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638199.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638584.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638587.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638507.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638557.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638993.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638262.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638698.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638987.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/2019082009063859.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638818.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090638776.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090639315.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090639769.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090639970.jpg');
INSERT INTO `product_image` VALUES (58, 'http://94.191.18.52/upload/img/20190820090639716.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646935.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646398.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646729.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646379.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646546.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646807.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646907.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646571.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646773.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646705.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646993.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/2019082009064649.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646393.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646529.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646746.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646712.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/20190820090646827.jpg');
INSERT INTO `product_image` VALUES (57, 'http://94.191.18.52/upload/img/2019082009064677.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090653715.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090653461.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090653102.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090653996.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090653591.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090653752.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090653869.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/2019082009065472.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090654759.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090654226.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090654304.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090654970.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090654119.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090654970.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090654375.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090654795.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090654997.jpg');
INSERT INTO `product_image` VALUES (59, 'http://94.191.18.52/upload/img/20190820090654264.jpg');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090016651.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090016918.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090016441.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090016305.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090016699.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090016641.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090016265.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090016510.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090016580.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090016573.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017744.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/2019082009001739.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017314.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017576.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/2019082009001789.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017935.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017356.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017772.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017191.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017392.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017869.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017871.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017791.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090017298.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090018841.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090018967.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090018988.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090018161.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090018603.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090018424.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090018800.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090018118.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090018511.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090029145.gif');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090029536.gif');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090040995.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090040606.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090040155.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090040199.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090041246.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090041482.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090041990.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090041319.png');
INSERT INTO `product_image` VALUES (51, 'http://94.191.18.52/upload/img/20190820090041313.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171745836.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171748425.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171750350.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171752403.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171754793.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171756200.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171758283.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171800254.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171841981.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171843842.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171845198.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171847834.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171849164.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171851814.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171855948.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171859308.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171901508.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171904494.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/2019081917190643.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171908540.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171911755.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/2019081917191568.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171918923.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171923730.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/2019081917192651.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171928696.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171930447.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/2019081917193359.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171936794.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171941563.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171944544.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171947265.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819171951766.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819172000107.gif');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819172000139.gif');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819172008638.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/2019081917201377.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819172017972.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819172020751.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/2019081917202379.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819172026169.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819172030453.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819172033303.png');
INSERT INTO `product_image` VALUES (49, 'http://94.191.18.52/upload/img/20190819172036848.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160317748.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160320449.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160322484.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160324832.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160327200.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160329192.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160331305.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/2019081916033348.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160335211.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160337213.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160340654.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160342266.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160344709.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160346189.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160349332.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160352455.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160355768.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160357475.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160359771.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160402394.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160404224.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160407740.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160409171.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160411120.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160414844.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160417513.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160419943.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/201908191604210.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160424625.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160426835.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160431850.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160435296.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160446131.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160605434.gif');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/2019081916060530.gif');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160621289.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160629968.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160634837.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160637806.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160639737.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160643297.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160647460.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160650508.png');
INSERT INTO `product_image` VALUES (48, 'http://94.191.18.52/upload/img/20190819160653324.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090837822.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838451.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/201908210908386.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838938.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838620.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838374.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/2019082109083832.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838872.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838382.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838869.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838980.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838687.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838483.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838698.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838454.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090838872.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/2019082109083873.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/2019082109083954.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839430.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839114.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839363.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839219.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839622.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839722.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839411.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839541.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839452.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839288.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090839516.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090840153.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090840919.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090840914.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090840727.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090815639.gif');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090815354.gif');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090822474.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090822992.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090822999.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090822417.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090822301.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090822764.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090822374.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/2019082109082228.png');
INSERT INTO `product_image` VALUES (63, 'http://94.191.18.52/upload/img/20190821090822292.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090913114.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090913903.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090913132.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090913596.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090913728.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090913727.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090913373.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090913725.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090913194.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090913131.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914760.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914163.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914901.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914219.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914768.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914299.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914942.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914108.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914160.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914909.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914613.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914619.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914548.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090914654.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090915955.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090915676.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090915253.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090915186.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090915211.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090915938.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090915406.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090915225.png');
INSERT INTO `product_image` VALUES (60, 'http://94.191.18.52/upload/img/20190820090915290.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091117535.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091117511.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091117378.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091117616.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091117578.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091117629.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091117509.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091117249.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091117496.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118235.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118702.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118660.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118702.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/2019082009111876.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118650.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118658.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118185.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/2019082009111853.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118343.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118799.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118781.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118882.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091118428.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091119721.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091119116.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091119920.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091119709.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091119361.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091119313.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/2019082009111970.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091119607.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091119609.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/2019082009111931.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091152380.gif');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091152425.gif');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091200360.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091200318.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091200560.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091200169.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091200809.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/2019082009120045.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091200311.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091200478.png');
INSERT INTO `product_image` VALUES (62, 'http://94.191.18.52/upload/img/20190820091200323.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218953.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218137.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218332.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218653.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218319.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218339.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218310.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/201908200902182.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218404.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218274.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218272.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090218656.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090219575.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090219515.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090219860.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090219773.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090219470.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090219894.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090219845.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090219554.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090219350.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/2019082009021917.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/201908200902195.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090219566.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090220928.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/2019082009022020.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/2019082009022022.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090220926.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090220840.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090220113.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090220679.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090220684.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/2019082009022035.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090226874.gif');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090229858.gif');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090238145.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090239345.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090239877.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090239989.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090239927.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/2019082009023942.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090239565.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090239835.png');
INSERT INTO `product_image` VALUES (53, 'http://94.191.18.52/upload/img/20190820090239887.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090115670.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/2019082009011586.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090115900.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090115529.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/2019082009011544.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090115943.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/2019082009011544.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090115836.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090115370.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090115704.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090115340.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116377.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/2019082009011616.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116498.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116669.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116818.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116798.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116990.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116661.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116427.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116675.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116779.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116768.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090116713.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090117176.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090117213.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090117624.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090117475.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090117856.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090117170.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090117753.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090117313.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090117927.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090141408.gif');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090141476.gif');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090151211.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090151342.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090151287.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090151484.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090151962.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/201908200901517.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090151642.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090151786.png');
INSERT INTO `product_image` VALUES (52, 'http://94.191.18.52/upload/img/20190820090151670.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/2019082009030222.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090302300.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090302365.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090302667.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090302766.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/2019082009030233.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090302249.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090302482.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090302690.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090302569.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090302630.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090302795.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303995.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303992.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303385.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303167.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303683.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303251.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303298.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303316.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303753.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303346.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303215.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303662.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/2019082009030318.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090303763.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090304948.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090304749.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090304783.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/2019082009030445.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090304335.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/2019082009030475.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090304180.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090411605.gif');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090411866.gif');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090419977.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090419976.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090419591.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090419203.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090419876.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090419214.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090419809.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/20190820090419811.png');
INSERT INTO `product_image` VALUES (54, 'http://94.191.18.52/upload/img/2019082009041999.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085739530.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085741376.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085749780.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085749847.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085749824.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/2019082008580061.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085800532.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085800233.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085826338.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085826766.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/2019082008582687.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085833209.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085833754.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085833799.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085833810.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085833700.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085843689.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085844995.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085844343.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085844499.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/2019082008584473.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085844973.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085844614.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085844975.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085853484.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085853451.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085853322.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085853829.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085853512.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085853161.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085853498.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/2019082008585387.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085927157.gif');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085927414.gif');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/2019082008594351.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085943115.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085943558.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085943858.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085943233.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085943369.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085943133.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085943722.png');
INSERT INTO `product_image` VALUES (50, 'http://94.191.18.52/upload/img/20190820085943431.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091018642.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091018472.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091018154.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091018447.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019710.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019712.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019490.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019170.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/2019082009101930.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019774.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019842.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019165.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019663.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019585.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/2019082009101998.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019862.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091019366.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020392.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020489.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020275.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020637.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/2019082009102023.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020616.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020468.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020116.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020868.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020126.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020999.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020712.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091020753.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091021864.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091021751.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091021415.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091034120.gif');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091034205.gif');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091041213.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091041926.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091041254.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091041809.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091041880.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091041120.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091041910.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/2019082009104159.png');
INSERT INTO `product_image` VALUES (61, 'http://94.191.18.52/upload/img/20190820091041185.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442955.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/2019082009044244.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442150.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/2019082009044279.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442756.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442547.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442848.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442656.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442962.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/2019082009044234.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442545.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442533.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442510.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442968.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090442853.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443321.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443654.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443392.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443515.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443915.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443964.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443456.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443689.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443255.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443402.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443501.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090443183.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090444298.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090444296.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090444749.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090444665.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090444814.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090444237.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090448464.gif');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090448352.gif');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090455868.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090455718.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090455981.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090455358.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090455195.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090455234.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090455303.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090455764.png');
INSERT INTO `product_image` VALUES (55, 'http://94.191.18.52/upload/img/20190820090456187.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090525765.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090525120.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090525191.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090525407.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090525884.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090526152.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090526641.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090526738.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090526824.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090526900.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090526881.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090526875.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090526624.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/2019082009052681.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090526540.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090526167.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527852.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527603.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527318.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527957.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527872.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/2019082009052737.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527842.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527964.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527155.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527985.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527134.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527522.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527899.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090527204.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/2019082009052876.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090528606.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090528430.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090528497.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090528137.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090528806.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090536922.gif');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090539723.gif');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/2019082009055089.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090550549.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090550183.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090550901.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090550594.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090550350.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090550717.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/201908200905507.png');
INSERT INTO `product_image` VALUES (56, 'http://94.191.18.52/upload/img/20190820090550685.png');

-- ----------------------------
-- Table structure for product_picture
-- ----------------------------
DROP TABLE IF EXISTS `product_picture`;
CREATE TABLE `product_picture`  (
  `product_id` int(5) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order` int(5) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `px` int(12) DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `menuId` int(11) DEFAULT NULL,
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cover` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '观', 'http://94.191.18.52/upload/img/20190819172759964.jpg', 1, '观首页', 1, '', 'http://94.191.18.52/upload/img/20190819172807605.jpg');
INSERT INTO `type` VALUES (2, '筑', 'http://94.191.18.52/upload/img/20190821110807472.jpg', 2, '筑首页', 2, '', NULL);
INSERT INTO `type` VALUES (3, '物', 'http://94.191.18.52/upload/img/20190820141251921.jpg', 3, '物首页', 3, '', NULL);
INSERT INTO `type` VALUES (4, '艺', 'http://94.191.18.52/upload/img/20190820141333830.jpg', 2, '艺首页', 4, '', NULL);
INSERT INTO `type` VALUES (5, '集', 'http://94.191.18.52/upload/img/20190819172724239.jpg', 6, '集首页', 5, '', NULL);
INSERT INTO `type` VALUES (6, '辑', 'http://94.191.18.52/upload/img/20190819172732363.jpg', 5, '辑首页', 5, '', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '管理员', 'admin', '0192023a7bbd73250516f069df18b500');

-- ----------------------------
-- Table structure for welcome
-- ----------------------------
DROP TABLE IF EXISTS `welcome`;
CREATE TABLE `welcome`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `order` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
