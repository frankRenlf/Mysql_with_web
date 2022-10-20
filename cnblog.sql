/*
 Navicat Premium Data Transfer

 Source Server         : SpringBoot
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : mycnblog

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 20/10/2022 17:24:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articleinfo
-- ----------------------------
DROP TABLE IF EXISTS `articleinfo`;
CREATE TABLE `articleinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int NOT NULL,
  `rcount` int NOT NULL DEFAULT 1,
  `state` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articleinfo
-- ----------------------------
INSERT INTO `articleinfo` VALUES (1, 'Java', 'Java正⽂', '2022-10-05 15:24:49', '2022-10-05 15:24:49', 1, 1, 1);
INSERT INTO `articleinfo` VALUES (2, 'test2', '123', '2022-10-06 16:43:51', '2022-10-06 16:43:51', 2, 1, 1);
INSERT INTO `articleinfo` VALUES (3, 'test3', 'frank111', '2022-10-07 15:14:24', '2022-10-07 15:14:24', 2, 1, 1);
INSERT INTO `articleinfo` VALUES (4, 'editortest', 'content1.valueOf()', '2022-10-20 16:59:59', '2022-10-20 16:59:59', 1, 1, 1);
INSERT INTO `articleinfo` VALUES (5, 'lily\'s edit', '# 在这里写下一篇博客\nlily test\n', '2022-10-20 17:10:14', '2022-10-20 17:10:14', 2, 1, 1);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'frank', '123', '', '2021-12-06 17:10:48', '2021-12-06 17:10:48', 1);
INSERT INTO `userinfo` VALUES (2, 'lily', '123', '', '2021-12-06 17:10:48', '2021-12-06 17:10:48', 1);
INSERT INTO `userinfo` VALUES (4, 'testadd', '123', '', '2022-10-06 11:36:28', '2022-10-06 11:36:28', 1);
INSERT INTO `userinfo` VALUES (10, 'qwe', '123', NULL, '2022-10-15 17:19:21', '2022-10-15 17:19:21', 1);
INSERT INTO `userinfo` VALUES (11, 'cost', '22', NULL, '2022-10-20 16:21:54', '2022-10-20 16:21:54', 1);
INSERT INTO `userinfo` VALUES (12, 'frank', '666', '', '2022-10-20 17:16:46', '2022-10-20 17:16:46', 1);

SET FOREIGN_KEY_CHECKS = 1;
