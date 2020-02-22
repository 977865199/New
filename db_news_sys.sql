/*
Navicat MySQL Data Transfer

Source Server         : 阿里雲
Source Server Version : 50564
Source Host           : 59.110.154.237:3306
Source Database       : db_news_sys

Target Server Type    : MYSQL
Target Server Version : 50564
File Encoding         : 65001

Date: 2020-02-22 15:06:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`),
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('148', '2', '35');
INSERT INTO `authority` VALUES ('149', '2', '36');
INSERT INTO `authority` VALUES ('150', '2', '25');
INSERT INTO `authority` VALUES ('151', '2', '1');
INSERT INTO `authority` VALUES ('152', '2', '14');
INSERT INTO `authority` VALUES ('153', '2', '15');
INSERT INTO `authority` VALUES ('210', '1', '1');
INSERT INTO `authority` VALUES ('211', '1', '5');
INSERT INTO `authority` VALUES ('212', '1', '17');
INSERT INTO `authority` VALUES ('213', '1', '18');
INSERT INTO `authority` VALUES ('214', '1', '19');
INSERT INTO `authority` VALUES ('215', '1', '20');
INSERT INTO `authority` VALUES ('216', '1', '13');
INSERT INTO `authority` VALUES ('217', '1', '21');
INSERT INTO `authority` VALUES ('218', '1', '22');
INSERT INTO `authority` VALUES ('219', '1', '23');
INSERT INTO `authority` VALUES ('220', '1', '35');
INSERT INTO `authority` VALUES ('221', '1', '36');
INSERT INTO `authority` VALUES ('222', '1', '14');
INSERT INTO `authority` VALUES ('223', '1', '15');
INSERT INTO `authority` VALUES ('224', '1', '24');
INSERT INTO `authority` VALUES ('225', '1', '25');
INSERT INTO `authority` VALUES ('226', '1', '26');
INSERT INTO `authority` VALUES ('227', '1', '31');
INSERT INTO `authority` VALUES ('228', '1', '32');
INSERT INTO `authority` VALUES ('229', '1', '33');
INSERT INTO `authority` VALUES ('230', '1', '34');
INSERT INTO `authority` VALUES ('231', '1', '37');
INSERT INTO `authority` VALUES ('232', '1', '38');
INSERT INTO `authority` VALUES ('233', '1', '39');
INSERT INTO `authority` VALUES ('234', '1', '40');
INSERT INTO `authority` VALUES ('235', '1', '41');
INSERT INTO `authority` VALUES ('236', '1', '42');
INSERT INTO `authority` VALUES ('237', '1', '43');
INSERT INTO `authority` VALUES ('238', '1', '44');
INSERT INTO `authority` VALUES ('239', '1', '45');
INSERT INTO `authority` VALUES ('240', '1', '46');
INSERT INTO `authority` VALUES ('241', '1', '47');
INSERT INTO `authority` VALUES ('242', '1', '48');
INSERT INTO `authority` VALUES ('243', '1', '49');

-- ----------------------------
-- Table structure for `c3p0testtable`
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for `c3p0TestTable`
-- ----------------------------
DROP TABLE IF EXISTS `c3p0TestTable`;
CREATE TABLE `c3p0TestTable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c3p0TestTable
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsId` int(11) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `content` varchar(512) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `newsId` (`newsId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`newsId`) REFERENCES `news` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------


-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES ('5', '1', '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES ('13', '1', '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES ('14', '0', '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES ('15', '14', '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES ('17', '5', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('18', '5', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('19', '5', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('20', '5', '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES ('21', '13', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('22', '13', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('23', '13', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('24', '15', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('25', '15', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('26', '15', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('31', '0', '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES ('32', '31', '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES ('33', '32', '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES ('34', '32', '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('35', '1', '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('36', '35', '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('37', '0', '新闻管理', '', 'icon-feed');
INSERT INTO `menu` VALUES ('38', '37', '分类管理', '../admin/news_category/list', 'icon-feed-star');
INSERT INTO `menu` VALUES ('39', '38', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('40', '38', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('41', '38', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('42', '37', '新闻管理', '../admin/news/list', 'icon-feed-edit');
INSERT INTO `menu` VALUES ('43', '42', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('44', '42', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('45', '42', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('46', '37', '评论管理', '../admin/comment/list', 'icon-comment');
INSERT INTO `menu` VALUES ('47', '46', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('48', '46', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('49', '46', '删除', 'remove()', 'icon-cross');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `abstrs` varchar(512) NOT NULL,
  `tags` varchar(128) NOT NULL,
  `photo` varchar(64) NOT NULL,
  `author` varchar(32) NOT NULL,
  `content` longtext NOT NULL,
  `viewNumber` int(8) NOT NULL DEFAULT '0',
  `commentNumber` int(5) NOT NULL DEFAULT '0',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `news_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `news_category`
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `sort` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_category
-- ----------------------------
INSERT INTO `news_category` VALUES ('5', '学校官方信息发布', '0');
INSERT INTO `news_category` VALUES ('10', '校外信息浏览', '1');
INSERT INTO `news_category` VALUES ('14', '失物招领', '2');
INSERT INTO `news_category` VALUES ('15', '表白墙', '3');
INSERT INTO `news_category` VALUES ('16', '二手平台售卖', '4');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES ('2', '普通用户', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1', '/News/resources/upload/1545572488494.jpg', '1', '1', '上海市浦东新区浦东南路1835号');
