/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : networkdisk

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 18/10/2024 17:46:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for friendinfo
-- ----------------------------
DROP TABLE IF EXISTS `friendinfo`;
CREATE TABLE `friendinfo`  (
  `id` int NOT NULL,
  `friendId` int NOT NULL,
  PRIMARY KEY (`id`, `friendId`) USING BTREE,
  INDEX `friendId`(`friendId` ASC) USING BTREE,
  CONSTRAINT `friendId` FOREIGN KEY (`friendId`) REFERENCES `userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `userId` FOREIGN KEY (`id`) REFERENCES `userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of friendinfo
-- ----------------------------
INSERT INTO `friendinfo` VALUES (55, 54);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pwd` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `online` int NOT NULL DEFAULT 0 COMMENT '是否在线，1表示在线，0不在线（默认）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_unique`(`name` ASC) USING BTREE COMMENT 'name唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (54, 't', '123', 0);
INSERT INTO `userinfo` VALUES (55, 'a', '123', 0);

SET FOREIGN_KEY_CHECKS = 1;
