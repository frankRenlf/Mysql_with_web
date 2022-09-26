/*
 Navicat Premium Data Transfer

 Source Server         : SpringBoot
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : demo_o5_mybatis

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 26/09/2022 16:48:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'frank', '666');
INSERT INTO `tbl_user` VALUES (34, 'test', 'welldone');
INSERT INTO `tbl_user` VALUES (55, 'frank', '666');
INSERT INTO `tbl_user` VALUES (56, 'lily', '123');
INSERT INTO `tbl_user` VALUES (60, 'son2', '666');
INSERT INTO `tbl_user` VALUES (62, 'son4', '666');
INSERT INTO `tbl_user` VALUES (63, 'frank', '111');
INSERT INTO `tbl_user` VALUES (64, 'Frank', '222');

SET FOREIGN_KEY_CHECKS = 1;
