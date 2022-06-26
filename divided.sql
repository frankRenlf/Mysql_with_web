/*
 Navicat Premium Data Transfer

 Source Server         : SpringBoot
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : mysqllearning

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 26/06/2022 16:31:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for divided
-- ----------------------------
DROP TABLE IF EXISTS `divided`;
CREATE TABLE `divided`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `degree` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `low` int NULL DEFAULT NULL,
  `high` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of divided
-- ----------------------------
INSERT INTO `divided` VALUES (1, 'young', 10, 16);
INSERT INTO `divided` VALUES (2, 'middle', 17, 20);
INSERT INTO `divided` VALUES (3, 'old', 21, 50);

SET FOREIGN_KEY_CHECKS = 1;
