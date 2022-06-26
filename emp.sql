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

 Date: 26/06/2022 16:31:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `dep_id` int NULL DEFAULT NULL,
  `job_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_emp_dept`(`dep_id`) USING BTREE,
  INDEX `fk_emp_job`(`job_id`) USING BTREE,
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`dep_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_emp_job` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, 'frank', 21, 1, 2);
INSERT INTO `emp` VALUES (2, 'lily', 22, 2, 3);
INSERT INTO `emp` VALUES (5, 'john', 15, 3, 2);
INSERT INTO `emp` VALUES (6, 'bob', 25, 1, 4);
INSERT INTO `emp` VALUES (7, 'hadson', 20, NULL, 2);
INSERT INTO `emp` VALUES (8, 'thanks', 11, 2, 1);
INSERT INTO `emp` VALUES (11, 'test', 20, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
