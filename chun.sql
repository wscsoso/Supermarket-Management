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
INSERT INTO `sys_fast` VALUES ('9', '方便面', '5', '老谭酸菜', '12个月', '好吃', '2022-04-19 20:51:55');
INSERT INTO `sys_fast` VALUES ('10', '方便面', '5', '老谭酸菜', '12个月', '好吃', '2022-04-19 20:51:55');
INSERT INTO `sys_fast` VALUES ('11', '方便面', '5', '老谭酸菜', '12个月', '不好吃', '2022-04-19 21:21:34');
INSERT INTO `sys_fast` VALUES ('12', '方便面', '5', '白象', '12个月', '好吃', '2022-04-19 21:21:27');
INSERT INTO `sys_fast` VALUES ('13', '方便面', '5', '老谭酸菜', '12个月', '好吃', '2022-04-19 20:51:56');
INSERT INTO `sys_fast` VALUES ('16', '方便面', '545', '老谭酸菜', '12个月', '好吃', '2022-04-19 21:16:25');
INSERT INTO `sys_fast` VALUES ('17', '方便面', '53', '老谭酸菜', '12个月', '好吃', '2022-04-19 21:16:19');
INSERT INTO `sys_fast` VALUES ('18', '方便面', '5', '老谭酸菜', '12个月', '好吃', '2022-04-19 20:51:56');
INSERT INTO `sys_fast` VALUES ('19', '方便面', '123', '老谭酸菜', '12个月', '好吃', '2022-04-19 21:16:12');
INSERT INTO `sys_fast` VALUES ('20', '方便面', '5', '老谭酸菜', '12个月', '好吃', '2022-04-19 20:51:57');
INSERT INTO `sys_fast` VALUES ('21', '方便面', '23', '老谭酸菜', '12个月', '好吃', '2022-04-19 21:16:15');
INSERT INTO `sys_fast` VALUES ('22', '方便面', '5', '老谭酸菜', '12个月', '好吃', '2022-04-19 20:51:57');
INSERT INTO `sys_fast` VALUES ('30', '方便面', '5', '老谭酸菜', '12个月', '好吃', '2022-04-19 20:51:59');
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
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-09 21:58:02');
INSERT INTO `sys_user` VALUES ('2', 'admin', '123456', '吴守椿', '22556418938@qq.com', '123', '13', '2022-04-19 16:38:04');
INSERT INTO `sys_user` VALUES ('3', 'sun', '123456', '孙悟空', '123', '175564156145', '打发', '2022-04-11 21:39:42');
INSERT INTO `sys_user` VALUES ('5', 'wsc', null, '吴守椿', '2556418938@qq.com', '2322341234123', '123', '2022-04-11 22:11:46');
INSERT INTO `sys_user` VALUES ('6', '甄姬', null, '谁', '2556418938@qq.com', '1546465', '打发 ', '2022-04-11 22:11:26');
INSERT INTO `sys_user` VALUES ('10', '韩立', null, '厉飞雨', '2556418938@qq.com', '17750867621', '韩峰谷', '2022-04-11 22:10:50');
INSERT INTO `sys_user` VALUES ('25', '吴守椿', null, '吴守椿', '256168', '4686865', '闽南理工', '2022-04-11 22:23:53');
INSERT INTO `sys_user` VALUES ('26', 'wsc', null, 'wsc', '255641893.8', null, null, '2022-04-11 22:30:51');
INSERT INTO `sys_user` VALUES ('27', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:38');
INSERT INTO `sys_user` VALUES ('28', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:39');
INSERT INTO `sys_user` VALUES ('29', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:40');
INSERT INTO `sys_user` VALUES ('30', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:40');
INSERT INTO `sys_user` VALUES ('31', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:40');
INSERT INTO `sys_user` VALUES ('32', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:40');
INSERT INTO `sys_user` VALUES ('33', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:40');
INSERT INTO `sys_user` VALUES ('34', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:41');
INSERT INTO `sys_user` VALUES ('35', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:41');
INSERT INTO `sys_user` VALUES ('36', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:41');
INSERT INTO `sys_user` VALUES ('37', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:41');
INSERT INTO `sys_user` VALUES ('38', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:41');
INSERT INTO `sys_user` VALUES ('39', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:41');
INSERT INTO `sys_user` VALUES ('40', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:42');
INSERT INTO `sys_user` VALUES ('41', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:42');
INSERT INTO `sys_user` VALUES ('42', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:42');
INSERT INTO `sys_user` VALUES ('43', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:43');
INSERT INTO `sys_user` VALUES ('44', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:43');
INSERT INTO `sys_user` VALUES ('45', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:43');
INSERT INTO `sys_user` VALUES ('46', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:44');
INSERT INTO `sys_user` VALUES ('47', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:44');
INSERT INTO `sys_user` VALUES ('48', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:44');
INSERT INTO `sys_user` VALUES ('49', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:44');
INSERT INTO `sys_user` VALUES ('50', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:44');
INSERT INTO `sys_user` VALUES ('51', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:44');
INSERT INTO `sys_user` VALUES ('52', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:45');
INSERT INTO `sys_user` VALUES ('53', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:45');
INSERT INTO `sys_user` VALUES ('54', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:45');
INSERT INTO `sys_user` VALUES ('55', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:45');
INSERT INTO `sys_user` VALUES ('56', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:45');
INSERT INTO `sys_user` VALUES ('57', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:45');
INSERT INTO `sys_user` VALUES ('58', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:46');
INSERT INTO `sys_user` VALUES ('59', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:46');
INSERT INTO `sys_user` VALUES ('60', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:46');
INSERT INTO `sys_user` VALUES ('61', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:47');
INSERT INTO `sys_user` VALUES ('62', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:47');
INSERT INTO `sys_user` VALUES ('63', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:32:47');
INSERT INTO `sys_user` VALUES ('64', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:08');
INSERT INTO `sys_user` VALUES ('65', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:08');
INSERT INTO `sys_user` VALUES ('66', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:08');
INSERT INTO `sys_user` VALUES ('67', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:08');
INSERT INTO `sys_user` VALUES ('68', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:08');
INSERT INTO `sys_user` VALUES ('69', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:09');
INSERT INTO `sys_user` VALUES ('70', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:13');
INSERT INTO `sys_user` VALUES ('71', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:13');
INSERT INTO `sys_user` VALUES ('72', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:13');
INSERT INTO `sys_user` VALUES ('73', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:13');
INSERT INTO `sys_user` VALUES ('74', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:13');
INSERT INTO `sys_user` VALUES ('75', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:14');
INSERT INTO `sys_user` VALUES ('76', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:14');
INSERT INTO `sys_user` VALUES ('77', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:14');
INSERT INTO `sys_user` VALUES ('78', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:14');
INSERT INTO `sys_user` VALUES ('79', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:15');
INSERT INTO `sys_user` VALUES ('80', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:15');
INSERT INTO `sys_user` VALUES ('81', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:15');
INSERT INTO `sys_user` VALUES ('82', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:15');
INSERT INTO `sys_user` VALUES ('83', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:16');
INSERT INTO `sys_user` VALUES ('84', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:16');
INSERT INTO `sys_user` VALUES ('85', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:16');
INSERT INTO `sys_user` VALUES ('86', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:17');
INSERT INTO `sys_user` VALUES ('87', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:17');
INSERT INTO `sys_user` VALUES ('88', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:17');
INSERT INTO `sys_user` VALUES ('89', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:17');
INSERT INTO `sys_user` VALUES ('90', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:18');
INSERT INTO `sys_user` VALUES ('91', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:18');
INSERT INTO `sys_user` VALUES ('92', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:18');
INSERT INTO `sys_user` VALUES ('93', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:18');
INSERT INTO `sys_user` VALUES ('94', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:18');
INSERT INTO `sys_user` VALUES ('95', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:19');
INSERT INTO `sys_user` VALUES ('96', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:19');
INSERT INTO `sys_user` VALUES ('97', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:19');
INSERT INTO `sys_user` VALUES ('98', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:19');
INSERT INTO `sys_user` VALUES ('99', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:19');
INSERT INTO `sys_user` VALUES ('100', 'admin', 'admin', '吴守椿', '22556418938@qq.com', '17750867621', 'mnlg', '2022-04-11 22:33:19');
INSERT INTO `sys_user` VALUES ('112', 'wsc', 'wsc', 'wsc', '255', '17750867621', 'mnlg', '2022-04-20 13:20:55');
INSERT INTO `sys_user` VALUES ('113', 'wsc', null, 'admin', '2644545', '146465', '福建', '2022-04-20 13:21:31');
