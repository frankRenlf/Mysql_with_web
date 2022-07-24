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

 Date: 24/07/2022 13:38:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq_mail` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classes_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_stu_class`(`classes_id`) USING BTREE,
  CONSTRAINT `fk_stu_class` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '09982', '黑旋风李逵', 'xuanfeng@qq.com', 1);
INSERT INTO `student` VALUES (2, '00835', '菩提老祖', NULL, 1);
INSERT INTO `student` VALUES (3, '00391', '白素贞', NULL, 1);
INSERT INTO `student` VALUES (4, '00031', '许仙', 'xuxian@qq.com', 1);
INSERT INTO `student` VALUES (5, '00054', '不想毕业', NULL, 1);
INSERT INTO `student` VALUES (6, '51234', '好好说话', 'say@qq.com', 2);
INSERT INTO `student` VALUES (7, '83223', 'tellme', NULL, 2);
INSERT INTO `student` VALUES (8, '09527', '老外学中文', 'foreigner@qq.com', 2);

SET FOREIGN_KEY_CHECKS = 1;
