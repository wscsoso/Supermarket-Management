/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : chun

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-04-20 22:11:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_fast
-- ----------------------------
DROP TABLE IF EXISTS `sys_fast`;
CREATE TABLE `sys_fast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `company` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qgp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保质期',
  `comment` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sys_fast
-- ----------------------------
INSERT INTO `sys_fast` VALUES ('6', '方便面', '5', '老谭酸菜', '12个月', '好吃', '2022-04-19 20:51:54');
INSERT INTO `sys_fast` VALUES ('7', '方便面', '5', '老谭酸菜', '12个月', '好吃', '2022-04-19 20:51:55');
INSERT INTO `sys_fast` VALUES ('8', '方便面', '5', '红烧牛肉', '12个月', '好吃', '2022-04-19 21:21:44');
INSERT INTO `sys_fast` VALUES ('11', '方便面', '5', '老谭酸菜', '12个月', '不好吃', '2022-04-19 21:21:34');
INSERT INTO `sys_fast` VALUES ('12', '方便面', '5', '白象', '12个月', '好吃', '2022-04-19 21:21:27');
INSERT INTO `sys_fast` VALUES ('31', '饼干', '5', 'cookie', '12个月', '不好吃', '2022-04-19 21:14:46');
INSERT INTO `sys_fast` VALUES ('46', '面包', '65', '旺旺', '12个月', '香', '2022-04-19 21:14:23');

-- ----------------------------
-- Table structure for sys_fruit
-- ----------------------------
DROP TABLE IF EXISTS `sys_fruit`;
CREATE TABLE `sys_fruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `source` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taste` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sys_fruit
-- ----------------------------
INSERT INTO `sys_fruit` VALUES ('1', '香蕉', 'banana', '10', '福州', '好吃', '2022-04-19 16:04:09');
INSERT INTO `sys_fruit` VALUES ('2', '芒果', 'apple', '50', '广东', '好吃', '2022-04-19 16:04:13');
INSERT INTO `sys_fruit` VALUES ('4', '西瓜', 'apple', '30', '泉州', '甜', '2022-04-19 17:53:49');
INSERT INTO `sys_fruit` VALUES ('5', '西瓜', 'apple', '30', '泉州', '甜', '2022-04-19 17:53:49');
INSERT INTO `sys_fruit` VALUES ('6', '西瓜', 'apple', '30', '泉州', '甜', '2022-04-19 17:53:49');
INSERT INTO `sys_fruit` VALUES ('7', '西瓜', 'apple', '30', '泉州', '甜', '2022-04-19 17:53:50');
INSERT INTO `sys_fruit` VALUES ('8', '西瓜', 'apple', '30', '泉州', '甜', '2022-04-19 17:53:50');
INSERT INTO `sys_fruit` VALUES ('9', '西瓜', 'apple', '12324', '泉州', '甜', '2022-04-20 13:23:06');
INSERT INTO `sys_fruit` VALUES ('12', '西瓜', 'apple', '30', '泉州', '甜', '2022-04-19 17:53:51');
INSERT INTO `sys_fruit` VALUES ('13', '香蕉', 'banana', '65', '福建', '甜', '2022-04-20 13:22:49');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'wjy', '520', 'wsc', '520@qq.com', '520520', '我心里', '2022-04-09 21:58:02');
INSERT INTO `sys_user` VALUES ('3', 'wjy', '520', 'wjy', '520', '520520520', '我心里', '2022-04-11 21:39:42');
INSERT INTO `sys_user` VALUES ('113', 'wsc', 520, 'admin', '2644545', '146465', '福建', '2022-04-20 13:21:31');
