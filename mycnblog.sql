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

 Date: 22/01/2023 16:54:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articleinfo
-- ----------------------------
DROP TABLE IF EXISTS `articleinfo`;
CREATE TABLE `articleinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int NOT NULL,
  `rcount` int NOT NULL DEFAULT 1,
  `state` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articleinfo
-- ----------------------------
INSERT INTO `articleinfo` VALUES (1, 'JavaEE advanced', 'well done\n', '2023-01-19 09:35:50', '2023-01-21 16:55:07', 1, 18, 1);
INSERT INTO `articleinfo` VALUES (3, 'after', '111data.data.forEach(function (item) {\n                        let str = \'<div class=\"blog\">\' +\n                        \'<div class=\"title\">\' + item.title + \'</div>\' +\n                        \'<div class=\"date\">\' + item.createTime + \'</div>\' +\n                        \'<div class=\"desc\">\' + subContent(item.content) + \'</div>\' +\n                            \'<a href=\"blog_content.html?id=\' + item.uid + \'\" class=\"detail\">detail &gt;&gt;</a>\' +\n                            \'</div>\'\n                        html += str\n                        console.log(str)\n                    })', '2023-01-21 12:57:17', '2023-01-21 16:54:03', 2, 4, 1);
INSERT INTO `articleinfo` VALUES (5, 'aaacss', 'sdadsasdaacsadas', '2023-01-21 16:07:06', '2023-01-21 16:54:03', 1, 16, 1);
INSERT INTO `articleinfo` VALUES (7, 'new year2', '# write content here', '2023-01-22 09:56:25', '2023-01-22 16:11:10', 1, 9, 1);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `photo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'admin', 'admin', '', '2021-12-06 17:10:48', '2021-12-06 17:10:48', 1);
INSERT INTO `userinfo` VALUES (2, 'f', '1', '', '2023-01-19 13:32:10', '2023-01-19 13:32:10', 1);
INSERT INTO `userinfo` VALUES (3, 'aaa', '12', '', '2023-01-19 13:46:17', '2023-01-19 13:46:17', 1);
INSERT INTO `userinfo` VALUES (6, 'a', 'aas', '', '2023-01-19 13:58:46', '2023-01-19 13:58:46', 1);
INSERT INTO `userinfo` VALUES (7, 'admin2', '1', '', '2023-01-19 14:08:26', '2023-01-19 14:08:26', 1);
INSERT INTO `userinfo` VALUES (8, 'xxx', '11', '', '2023-01-19 14:09:05', '2023-01-19 14:09:05', 1);
INSERT INTO `userinfo` VALUES (9, 'admin3', 'aaa', '', '2023-01-19 14:11:58', '2023-01-19 14:11:58', 1);
INSERT INTO `userinfo` VALUES (10, 'frank', 'aaa', '', '2023-01-19 14:12:12', '2023-01-19 14:12:12', 1);
INSERT INTO `userinfo` VALUES (11, 'frank2', '123', '', '2023-01-19 14:13:19', '2023-01-19 14:13:19', 1);

SET FOREIGN_KEY_CHECKS = 1;
