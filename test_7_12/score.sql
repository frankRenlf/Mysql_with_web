/*
 Navicat Premium Data Transfer

 Source Server         : SpringBoot
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : test_7_12

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 24/07/2022 13:37:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `score` decimal(3, 1) NULL DEFAULT NULL,
  `student_id` int NULL DEFAULT NULL,
  `course_id` int NULL DEFAULT NULL,
  INDEX `fk_score_stu`(`student_id`) USING BTREE,
  INDEX `fk_score_course`(`course_id`) USING BTREE,
  CONSTRAINT `fk_score_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_score_stu` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (70.5, 1, 1);
INSERT INTO `score` VALUES (98.5, 1, 3);
INSERT INTO `score` VALUES (33.0, 1, 5);
INSERT INTO `score` VALUES (98.0, 1, 6);
INSERT INTO `score` VALUES (60.0, 2, 1);
INSERT INTO `score` VALUES (59.5, 2, 5);
INSERT INTO `score` VALUES (33.0, 3, 1);
INSERT INTO `score` VALUES (68.0, 3, 3);
INSERT INTO `score` VALUES (99.0, 3, 5);
INSERT INTO `score` VALUES (67.0, 4, 1);
INSERT INTO `score` VALUES (23.0, 4, 3);
INSERT INTO `score` VALUES (56.0, 4, 5);
INSERT INTO `score` VALUES (72.0, 4, 6);
INSERT INTO `score` VALUES (81.0, 5, 1);
INSERT INTO `score` VALUES (37.0, 5, 5);
INSERT INTO `score` VALUES (56.0, 6, 2);
INSERT INTO `score` VALUES (43.0, 6, 4);
INSERT INTO `score` VALUES (79.0, 6, 6);
INSERT INTO `score` VALUES (80.0, 7, 2);
INSERT INTO `score` VALUES (92.0, 7, 6);

SET FOREIGN_KEY_CHECKS = 1;
