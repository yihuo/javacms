/*
Navicat MySQL Data Transfer

Source Server         : general-2
Source Server Version : 50154
Source Host           : localhost:3309
Source Database       : catering-2

Target Server Type    : MYSQL
Target Server Version : 50154
File Encoding         : 65001

Date: 2016-03-11 16:02:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `app`
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `APP_ID` int(22) NOT NULL AUTO_INCREMENT COMMENT '站点ID，关联基础表BasicId',
  `APP_NAME` varchar(60) NOT NULL COMMENT '站点名称',
  `APP_URL` varchar(200) NOT NULL COMMENT '站点域名',
  `APP_LOGO` varchar(120) DEFAULT NULL COMMENT '站点LOGO',
  `APP_KEYWORD` varchar(1000) DEFAULT NULL COMMENT '站点关键字',
  `APP_COPYRIGHT` varchar(1000) DEFAULT NULL COMMENT '站点版权信息',
  `APP_STYLE` varchar(50) DEFAULT NULL COMMENT '站点风格',
  `APP_MANAGERID` int(11) DEFAULT NULL COMMENT '站点管理员ID',
  `APP_DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT '站点描述',
  `APP_DATETIME` datetime DEFAULT NULL COMMENT '应用发布日期',
  `APP_MOBILE_STYLE` varchar(11) DEFAULT NULL COMMENT '应用移动端风格',
  `APP_PAY_DATE` datetime DEFAULT NULL COMMENT '应用续费时间',
  `APP_PAY` varchar(45) DEFAULT NULL COMMENT '费用清单',
  PRIMARY KEY (`APP_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1550 DEFAULT CHARSET=utf8 COMMENT='应用表';

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('1549', '安徽易活网络技术有限公司', 'http://localhost:8181', '/upload/app/1549/1456971147684.png', '', 'support by yihuonet', 'catering-2', '50', '', null, 'm', null, '');

-- ----------------------------
-- Table structure for `basic`
-- ----------------------------
DROP TABLE IF EXISTS `basic`;
CREATE TABLE `basic` (
  `BASIC_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `BASIC_TITLE` varchar(300) DEFAULT NULL COMMENT '标题',
  `BASIC_DESCRIPTION` text COMMENT '描述',
  `BASIC_THUMBNAILS` varchar(1000) DEFAULT NULL COMMENT '缩略图',
  `BASIC_HIT` bigint(22) DEFAULT NULL COMMENT '点击次数',
  `BASIC_SORT` int(11) DEFAULT NULL COMMENT '排序',
  `BASIC_DATETIME` datetime DEFAULT NULL COMMENT ' 发布时间',
  `BASIC_UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `BASIC_PEOPLEID` int(22) DEFAULT NULL COMMENT '用户编号',
  `BASIC_CATEGORYID` int(22) DEFAULT NULL COMMENT '所属分类编号',
  `BASIC_APPID` int(11) DEFAULT NULL COMMENT '应用编号',
  `BASIC_MODELID` int(11) DEFAULT NULL COMMENT '模块编号',
  PRIMARY KEY (`BASIC_ID`),
  UNIQUE KEY `SYS_C009068` (`BASIC_ID`),
  KEY `BASIC_TITLE` (`BASIC_TITLE`(255)),
  KEY `BASIC_APPID` (`BASIC_APPID`) USING BTREE,
  KEY `BASIC_MODELID` (`BASIC_MODELID`) USING BTREE,
  KEY `BASIC_CATEGORYID` (`BASIC_CATEGORYID`) USING BTREE,
  KEY `BASIC_DATETIME` (`BASIC_DATETIME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='基础表';

-- ----------------------------
-- Records of basic
-- ----------------------------
INSERT INTO `basic` VALUES ('1', '快捷方式图标', '', '/upload/article/1549/1456971320857.ico', '0', '0', '2016-03-03 10:15:23', '2016-03-03 10:15:23', '0', '1', '1549', '8');
INSERT INTO `basic` VALUES ('2', '版权所有', '', '', '0', '0', '2016-03-03 11:00:48', '2016-03-03 11:00:48', '0', '8', '1549', '8');
INSERT INTO `basic` VALUES ('3', '联系我们', '', '', '0', '0', '2016-03-03 13:56:06', '2016-03-11 15:45:48', '0', '7', '1549', '8');
INSERT INTO `basic` VALUES ('4', '餐饮人，8个关键词提升自我休养', '', '', '0', '0', '2016-03-03 14:29:16', '2016-03-11 15:33:47', '0', '5', '1549', '8');
INSERT INTO `basic` VALUES ('15', '二街金牌店', '芜湖市镜湖区二街中上路35号', '/upload/article/1549/1457683189970.png', '0', '0', '2016-03-03 15:22:36', '2016-03-11 15:59:50', '0', '6', '1549', '8');
INSERT INTO `basic` VALUES ('16', '三街金牌店', '芜湖市镜湖路68号', '/upload/article/1549/1457683196704.png', '0', '0', '2016-03-03 15:23:38', '2016-03-11 15:59:57', '0', '6', '1549', '8');
INSERT INTO `basic` VALUES ('17', '四街金牌店', '芜湖市长江中路86路', '/upload/article/1549/1457683203831.png', '0', '0', '2016-03-03 15:24:17', '2016-03-11 16:00:04', '0', '6', '1549', '8');
INSERT INTO `basic` VALUES ('18', '五街金牌店', '芜湖市银湖北路80号', '/upload/article/1549/1457683210045.png', '0', '0', '2016-03-03 15:25:13', '2016-03-11 16:00:15', '0', '6', '1549', '8');
INSERT INTO `basic` VALUES ('19', '六街金牌店', '芜湖市中山南路66号', '/upload/article/1549/1457683221504.png', '0', '0', '2016-03-03 15:25:58', '2016-03-11 16:00:21', '0', '6', '1549', '8');
INSERT INTO `basic` VALUES ('20', '七街金牌店', '芜湖市银湖南路55号', '/upload/article/1549/1457683228394.png', '0', '0', '2016-03-03 15:26:34', '2016-03-11 16:00:29', '0', '6', '1549', '8');
INSERT INTO `basic` VALUES ('21', '八街金牌店', '芜湖市镜湖路65号', '/upload/article/1549/1457683235138.png', '0', '0', '2016-03-03 15:27:19', '2016-03-11 16:00:35', '0', '6', '1549', '8');
INSERT INTO `basic` VALUES ('22', '招牌菜一', '', '/upload/article/1549/1456993368707.png', '0', '0', '2016-03-03 16:22:51', '2016-03-03 16:22:51', '0', '11', '1549', '8');
INSERT INTO `basic` VALUES ('23', '胡萝卜', '', '/upload/article/1549/1456993426069.png', '0', '0', '2016-03-03 16:23:47', '2016-03-03 16:23:47', '0', '11', '1549', '8');
INSERT INTO `basic` VALUES ('24', '炒青菜', '', '/upload/article/1549/1456993441286.png', '0', '0', '2016-03-03 16:24:02', '2016-03-03 16:24:02', '0', '11', '1549', '8');
INSERT INTO `basic` VALUES ('25', '炖鱼汤', '', '/upload/article/1549/1456993452417.png', '0', '0', '2016-03-03 16:24:14', '2016-03-03 16:24:14', '0', '11', '1549', '8');
INSERT INTO `basic` VALUES ('26', '红烧肉', '', '/upload/article/1549/1456993475636.png', '0', '0', '2016-03-03 16:24:36', '2016-03-03 16:24:36', '0', '11', '1549', '8');
INSERT INTO `basic` VALUES ('27', '烤香肠', '', '/upload/article/1549/1456993507206.png', '0', '0', '2016-03-03 16:25:08', '2016-03-03 16:25:08', '0', '11', '1549', '8');
INSERT INTO `basic` VALUES ('28', '炖粉丝', '', '/upload/article/1549/1456993542835.png', '0', '0', '2016-03-03 16:25:44', '2016-03-03 16:25:44', '0', '11', '1549', '8');
INSERT INTO `basic` VALUES ('29', '烤猪蹄', '', '/upload/article/1549/1456993571231.png', '0', '0', '2016-03-03 16:26:12', '2016-03-03 16:26:12', '0', '11', '1549', '8');
INSERT INTO `basic` VALUES ('30', '牛肉', '', '/upload/article/1549/1456993605324.png', '0', '0', '2016-03-03 16:26:46', '2016-03-03 16:26:46', '0', '11', '1549', '8');
INSERT INTO `basic` VALUES ('31', '烧鸡块', '', '/upload/article/1549/1456993634598.png', '0', '0', '2016-03-03 16:27:16', '2016-03-03 16:27:16', '0', '11', '1549', '8');
INSERT INTO `basic` VALUES ('32', '招牌菜二', '', '/upload/article/1549/1456995148441.png', '0', '0', '2016-03-03 16:53:00', '2016-03-03 16:53:00', '0', '12', '1549', '8');
INSERT INTO `basic` VALUES ('33', '青菜', '', '/upload/article/1549/1456995214553.png', '0', '0', '2016-03-03 16:53:35', '2016-03-03 16:53:35', '0', '12', '1549', '8');
INSERT INTO `basic` VALUES ('34', '胡萝卜', '', '/upload/article/1549/1456995233553.png', '0', '0', '2016-03-03 16:53:54', '2016-03-03 16:53:54', '0', '12', '1549', '8');
INSERT INTO `basic` VALUES ('35', '牛肉', '', '/upload/article/1549/1456995247455.png', '0', '0', '2016-03-03 16:54:09', '2016-03-03 16:54:09', '0', '12', '1549', '8');
INSERT INTO `basic` VALUES ('36', '猪头肉', '', '/upload/article/1549/1456995263424.png', '0', '0', '2016-03-03 16:54:24', '2016-03-03 16:54:24', '0', '12', '1549', '8');
INSERT INTO `basic` VALUES ('37', '猪蹄', '', '/upload/article/1549/1456995273910.png', '0', '0', '2016-03-03 16:54:35', '2016-03-03 16:54:35', '0', '12', '1549', '8');
INSERT INTO `basic` VALUES ('38', '猪耳朵', '', '/upload/article/1549/1456995287439.png', '0', '0', '2016-03-03 16:54:48', '2016-03-03 16:54:48', '0', '12', '1549', '8');
INSERT INTO `basic` VALUES ('39', '鸭腿', '', '/upload/article/1549/1456995314767.png', '0', '0', '2016-03-03 16:55:15', '2016-03-03 16:55:15', '0', '12', '1549', '8');
INSERT INTO `basic` VALUES ('40', '鸭脖', '', '/upload/article/1549/1456995322274.png', '0', '0', '2016-03-03 16:55:22', '2016-03-03 16:55:22', '0', '12', '1549', '8');
INSERT INTO `basic` VALUES ('41', '鸡腿', '', '/upload/article/1549/1456995339112.png', '0', '0', '2016-03-03 16:55:39', '2016-03-03 16:55:39', '0', '12', '1549', '8');
INSERT INTO `basic` VALUES ('42', '招牌菜三', '', '/upload/article/1549/1456995358830.png', '0', '0', '2016-03-03 16:56:00', '2016-03-03 16:56:00', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('43', '牛肉汤', '', '/upload/article/1549/1456995451263.png', '0', '0', '2016-03-03 16:57:33', '2016-03-03 16:57:33', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('44', '猪肉汤', '', '/upload/article/1549/1456995484662.png', '0', '0', '2016-03-03 16:58:06', '2016-03-03 16:58:06', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('45', '鸭血汤', '', '/upload/article/1549/1456995502870.png', '0', '0', '2016-03-03 16:58:24', '2016-03-03 16:58:24', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('46', '鸡汤', '', '/upload/article/1549/1456995529969.png', '0', '0', '2016-03-03 16:58:50', '2016-03-03 16:58:50', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('47', '青菜汤', '', '/upload/article/1549/1456995547310.png', '0', '0', '2016-03-03 16:59:07', '2016-03-03 16:59:07', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('48', '菠菜汤', '', '/upload/article/1549/1456995571333.png', '0', '0', '2016-03-03 16:59:32', '2016-03-03 16:59:32', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('49', '蛋汤', '', '/upload/article/1549/1456995591303.png', '0', '0', '2016-03-03 16:59:52', '2016-03-03 16:59:52', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('50', '蘑菇汤', '', '/upload/article/1549/1456995602670.png', '0', '0', '2016-03-03 17:00:11', '2016-03-03 17:00:11', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('51', '木耳汤', '', '/upload/article/1549/1456995625402.png', '0', '0', '2016-03-03 17:00:28', '2016-03-03 17:00:28', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('52', '招牌菜四', '', '/upload/article/1549/1456995657865.png', '0', '0', '2016-03-03 17:00:59', '2016-03-03 17:00:59', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('53', '馒头', '', '/upload/article/1549/1456995705320.png', '0', '0', '2016-03-03 17:01:48', '2016-03-03 17:01:48', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('54', '肉包', '', '/upload/article/1549/1456995720237.png', '0', '0', '2016-03-03 17:02:00', '2016-03-03 17:02:00', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('55', '青菜包', '', '/upload/article/1549/1456995728119.png', '0', '0', '2016-03-03 17:02:09', '2016-03-03 17:02:09', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('56', '雪菜包', '', '/upload/article/1549/1456995751263.png', '0', '0', '2016-03-03 17:02:32', '2016-03-03 17:02:32', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('57', '粉丝包', '', '/upload/article/1549/1456995761272.png', '0', '0', '2016-03-03 17:02:41', '2016-03-03 17:02:41', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('58', '豆沙包', '', '/upload/article/1549/1456995772878.png', '0', '0', '2016-03-03 17:02:55', '2016-03-03 17:02:55', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('59', '玉米包', '', '/upload/article/1549/1456995784820.png', '0', '0', '2016-03-03 17:03:06', '2016-03-03 17:03:06', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('60', '油条', '', '/upload/article/1549/1456995817525.png', '0', '0', '2016-03-03 17:03:38', '2016-03-03 17:03:38', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('61', '麻球', '', '/upload/article/1549/1456995832744.png', '0', '0', '2016-03-03 17:03:53', '2016-03-03 17:03:53', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('62', '招牌菜五', '', '/upload/article/1549/1456995864141.png', '0', '0', '2016-03-03 17:04:28', '2016-03-03 17:04:28', '0', '15', '1549', '8');
INSERT INTO `basic` VALUES ('63', '牛肉面', '', '/upload/article/1549/1456995876487.png', '0', '0', '2016-03-03 17:04:39', '2016-03-03 17:04:39', '0', '15', '1549', '8');
INSERT INTO `basic` VALUES ('64', '肉丝面', '', '/upload/article/1549/1456995906619.png', '0', '0', '2016-03-03 17:05:09', '2016-03-03 17:05:09', '0', '15', '1549', '8');
INSERT INTO `basic` VALUES ('65', '雪菜肉丝面', '', '/upload/article/1549/1456995946718.png', '0', '0', '2016-03-03 17:05:49', '2016-03-03 17:05:49', '0', '15', '1549', '8');
INSERT INTO `basic` VALUES ('66', '凉拌面', '', '/upload/article/1549/1456995975713.png', '0', '0', '2016-03-03 17:06:16', '2016-03-03 17:06:16', '0', '15', '1549', '8');
INSERT INTO `basic` VALUES ('67', '鸡蛋面', '', '/upload/article/1549/1456996041415.png', '0', '0', '2016-03-03 17:07:22', '2016-03-03 17:07:22', '0', '15', '1549', '8');
INSERT INTO `basic` VALUES ('68', '青菜面', '', '/upload/article/1549/1456996055742.png', '0', '0', '2016-03-03 17:07:37', '2016-03-03 17:07:37', '0', '15', '1549', '8');
INSERT INTO `basic` VALUES ('69', '大肉面', '', '/upload/article/1549/1456996069383.png', '0', '0', '2016-03-03 17:07:49', '2016-03-03 17:07:49', '0', '15', '1549', '8');
INSERT INTO `basic` VALUES ('70', '排骨面', '', '/upload/article/1549/1456996080849.png', '0', '0', '2016-03-03 17:08:01', '2016-03-03 17:08:01', '0', '15', '1549', '8');
INSERT INTO `basic` VALUES ('71', '鸡翅面', '', '/upload/article/1549/1456996101702.png', '0', '0', '2016-03-03 17:08:23', '2016-03-03 17:08:23', '0', '15', '1549', '8');
INSERT INTO `basic` VALUES ('72', '招牌菜六', '', '/upload/article/1549/1456996117878.png', '0', '0', '2016-03-03 17:08:58', '2016-03-03 17:08:58', '0', '16', '1549', '8');
INSERT INTO `basic` VALUES ('73', '火腿炒面', '', '/upload/article/1549/1456996155247.png', '0', '0', '2016-03-03 17:09:15', '2016-03-03 17:09:15', '0', '16', '1549', '8');
INSERT INTO `basic` VALUES ('74', '肉丝炒面', '', '/upload/article/1549/1456996166173.png', '0', '0', '2016-03-03 17:09:27', '2016-03-03 17:09:27', '0', '16', '1549', '8');
INSERT INTO `basic` VALUES ('75', '牛肉炒面', '', '/upload/article/1549/1456996186767.png', '0', '0', '2016-03-03 17:09:47', '2016-03-03 17:09:47', '0', '16', '1549', '8');
INSERT INTO `basic` VALUES ('76', '蛋炒面', '', '/upload/article/1549/1456996199738.png', '0', '0', '2016-03-03 17:10:11', '2016-03-03 17:10:11', '0', '16', '1549', '8');
INSERT INTO `basic` VALUES ('77', '香肠炒面', '', '/upload/article/1549/1456996238438.png', '0', '0', '2016-03-03 17:10:41', '2016-03-03 17:10:41', '0', '16', '1549', '8');
INSERT INTO `basic` VALUES ('78', '回锅肉', '', '/upload/article/1549/1456996259129.png', '0', '0', '2016-03-03 17:10:59', '2016-03-03 17:10:59', '0', '16', '1549', '8');
INSERT INTO `basic` VALUES ('79', '大肉炒饭', '', '/upload/article/1549/1456996296545.png', '0', '0', '2016-03-03 17:11:37', '2016-03-03 17:11:37', '0', '16', '1549', '8');
INSERT INTO `basic` VALUES ('80', '鸭腿炒饭', '', '/upload/article/1549/1456996325175.png', '0', '0', '2016-03-03 17:12:05', '2016-03-03 17:12:05', '0', '16', '1549', '8');
INSERT INTO `basic` VALUES ('81', '鸡腿炒饭', '', '/upload/article/1549/1456996336031.png', '0', '0', '2016-03-03 17:12:16', '2016-03-03 17:12:16', '0', '16', '1549', '8');
INSERT INTO `basic` VALUES ('82', '谷歌', 'https://www.baidu.com', '/upload/article/1549/1456998251769.png', '0', '0', '2016-03-03 17:45:13', '2016-03-04 09:22:29', '0', '9', '1549', '8');
INSERT INTO `basic` VALUES ('83', '茶日子', 'https://www.baidu.com', '/upload/article/1549/1456998407734.png', '0', '0', '2016-03-03 17:46:50', '2016-03-04 09:26:06', '0', '9', '1549', '8');
INSERT INTO `basic` VALUES ('84', '腾讯网', 'https://www.baidu.com', '/upload/article/1549/1456998429045.png', '0', '0', '2016-03-03 17:47:11', '2016-03-04 09:26:14', '0', '9', '1549', '8');
INSERT INTO `basic` VALUES ('85', '谷歌', 'https://www.baidu.com', '/upload/article/1549/1456998441657.png', '0', '0', '2016-03-03 17:47:24', '2016-03-04 09:26:23', '0', '9', '1549', '8');
INSERT INTO `basic` VALUES ('86', '谷歌', 'https://www.baidu.com', '/upload/article/1549/1456998455438.png', '0', '0', '2016-03-03 17:47:37', '2016-03-04 09:26:32', '0', '9', '1549', '8');
INSERT INTO `basic` VALUES ('87', '茶日子', 'https://www.baidu.com', '/upload/article/1549/1456998465873.png', '0', '0', '2016-03-03 17:47:49', '2016-03-04 09:26:41', '0', '9', '1549', '8');
INSERT INTO `basic` VALUES ('88', '腾讯网', 'https://www.baidu.com', '/upload/article/1549/1456998483807.png', '0', '0', '2016-03-03 17:48:05', '2016-03-04 09:26:48', '0', '9', '1549', '8');
INSERT INTO `basic` VALUES ('89', '谷歌', 'https://www.baidu.com', '/upload/article/1549/1456998492865.png', '0', '0', '2016-03-03 17:48:15', '2016-03-04 09:26:55', '0', '9', '1549', '8');
INSERT INTO `basic` VALUES ('90', '餐厅环境1', '', '/upload/article/1549/1457057013046.png', '0', '0', '2016-03-04 10:03:45', '2016-03-04 10:03:45', '0', '17', '1549', '8');
INSERT INTO `basic` VALUES ('91', '餐厅环境2', '', '/upload/article/1549/1457057035291.png', '0', '0', '2016-03-04 10:03:57', '2016-03-04 10:03:57', '0', '17', '1549', '8');
INSERT INTO `basic` VALUES ('92', '餐厅环境3', '', '/upload/article/1549/1457057099398.png', '0', '0', '2016-03-04 10:05:03', '2016-03-04 10:05:03', '0', '17', '1549', '8');
INSERT INTO `basic` VALUES ('99', '香辣烤肉', '', '/upload/article/1549/1457681482948.png', '0', '0', '2016-03-04 14:36:02', '2016-03-11 15:31:31', '0', '19', '1549', '8');
INSERT INTO `basic` VALUES ('100', '牛肉面', '', '/upload/article/1549/1457681498922.png', '0', '0', '2016-03-04 14:36:17', '2016-03-11 15:31:39', '0', '20', '1549', '8');
INSERT INTO `basic` VALUES ('101', '蛋炒饭', '', '/upload/article/1549/1457681506515.png', '0', '0', '2016-03-04 14:36:36', '2016-03-11 15:31:47', '0', '21', '1549', '8');
INSERT INTO `basic` VALUES ('102', '火腿肠炒面', '', '/upload/article/1549/1457681516029.png', '0', '0', '2016-03-04 14:37:01', '2016-03-11 15:31:56', '0', '22', '1549', '8');
INSERT INTO `basic` VALUES ('103', '香肠炒饭', '', '/upload/article/1549/1457681523710.png', '0', '0', '2016-03-04 14:43:13', '2016-03-11 15:32:04', '0', '23', '1549', '8');
INSERT INTO `basic` VALUES ('104', '广告一', '', '/upload/article/1549/1457075518266.png', '0', '0', '2016-03-04 15:12:42', '2016-03-04 15:19:58', '0', '24', '1549', '8');
INSERT INTO `basic` VALUES ('105', '广告二', '', '/upload/article/1549/1457076128688.jpg', '0', '0', '2016-03-04 15:22:12', '2016-03-04 15:22:12', '0', '24', '1549', '8');
INSERT INTO `basic` VALUES ('106', '广告三', '', '/upload/article/1549/1457682406184.png', '0', '0', '2016-03-04 15:22:32', '2016-03-11 15:46:47', '0', '24', '1549', '8');
INSERT INTO `basic` VALUES ('107', '关于我们', '', '/upload/article/1549/1457079421489.png', '0', '0', '2016-03-04 16:17:05', '2016-03-11 15:20:32', '0', '3', '1549', '8');
INSERT INTO `basic` VALUES ('108', '美食名称一', '', '/upload/article/1549/1457681401713.png', '0', '0', '2016-03-11 15:30:02', '2016-03-11 15:30:02', '0', '18', '1549', '8');
INSERT INTO `basic` VALUES ('109', '美食名称二', '', '/upload/article/1549/1457681411115.png', '0', '0', '2016-03-11 15:30:11', '2016-03-11 15:30:11', '0', '18', '1549', '8');
INSERT INTO `basic` VALUES ('110', '美食名称三', '', '/upload/article/1549/1457681420061.png', '0', '0', '2016-03-11 15:30:20', '2016-03-11 15:30:20', '0', '18', '1549', '8');
INSERT INTO `basic` VALUES ('111', '美食名称四', '', '/upload/article/1549/1457681429596.png', '0', '0', '2016-03-11 15:30:30', '2016-03-11 15:30:30', '0', '18', '1549', '8');
INSERT INTO `basic` VALUES ('112', '美食名称五', '', '/upload/article/1549/1457681438640.png', '0', '0', '2016-03-11 15:30:39', '2016-03-11 15:30:39', '0', '18', '1549', '8');
INSERT INTO `basic` VALUES ('113', '美食名称六', '', '/upload/article/1549/1457681447801.png', '0', '0', '2016-03-11 15:30:48', '2016-03-11 15:30:48', '0', '18', '1549', '8');
INSERT INTO `basic` VALUES ('114', '美食名称七', '', '/upload/article/1549/1457681455988.png', '0', '0', '2016-03-11 15:30:56', '2016-03-11 15:30:56', '0', '18', '1549', '8');
INSERT INTO `basic` VALUES ('115', '美食名称八', '', '/upload/article/1549/1457681462497.png', '0', '0', '2016-03-11 15:31:07', '2016-03-11 15:31:07', '0', '18', '1549', '8');
INSERT INTO `basic` VALUES ('116', '专治懒癌，一家面包店的崛起日记', '', '', '0', '0', '2016-03-11 15:34:43', '2016-03-11 15:36:04', '0', '5', '1549', '8');
INSERT INTO `basic` VALUES ('117', '餐饮界的排队神话：别人关店，它们却排队排疯了！', '', '', '0', '0', '2016-03-11 15:37:37', '2016-03-11 15:37:37', '0', '5', '1549', '8');
INSERT INTO `basic` VALUES ('118', '2016海底捞春季菜品创新带给我们什么启示？', '', '', '0', '0', '2016-03-11 15:38:27', '2016-03-11 15:38:27', '0', '5', '1549', '8');
INSERT INTO `basic` VALUES ('119', '总理发话餐饮业营改增,知道真相的我哭了！', '', '', '0', '0', '2016-03-11 15:38:54', '2016-03-11 15:38:54', '0', '5', '1549', '8');
INSERT INTO `basic` VALUES ('120', '又一家被钱撑死了，“钱多的先死”成餐饮业魔咒！', '', '', '0', '0', '2016-03-11 15:39:28', '2016-03-11 15:39:28', '0', '5', '1549', '8');
INSERT INTO `basic` VALUES ('121', '转型三年亏掉几百万，她才知道餐饮回归有三大难关', '', '', '0', '0', '2016-03-11 15:39:54', '2016-03-11 15:39:54', '0', '5', '1549', '8');
INSERT INTO `basic` VALUES ('122', '悉尼一餐厅推出环保不锈钢吸管 禁用塑料吸管', '', '', '0', '0', '2016-03-11 15:41:56', '2016-03-11 15:41:56', '0', '5', '1549', '8');
INSERT INTO `basic` VALUES ('123', '广告四', '', '/upload/article/1549/1457682421128.png', '0', '0', '2016-03-11 15:47:01', '2016-03-11 15:47:01', '0', '24', '1549', '8');

-- ----------------------------
-- Table structure for `basic_attention`
-- ----------------------------
DROP TABLE IF EXISTS `basic_attention`;
CREATE TABLE `basic_attention` (
  `ba_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `ba_peopleID` int(11) DEFAULT NULL COMMENT '用户id',
  `ba_appID` int(11) DEFAULT NULL COMMENT '用户应用id',
  `ba_basicID` int(11) DEFAULT NULL COMMENT '用户收藏关联的基础id',
  `ba_type` int(11) DEFAULT NULL COMMENT '收藏类型 1： 收藏  2：顶',
  `ba_datetime` datetime DEFAULT NULL COMMENT '用户收藏文章，帖子或商品时的时间',
  `ba_url` varchar(200) DEFAULT NULL COMMENT '收藏的文章,帖子，商品的链接地址',
  PRIMARY KEY (`ba_id`),
  KEY `BA_PEOPLEID` (`ba_peopleID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户收藏表';

-- ----------------------------
-- Records of basic_attention
-- ----------------------------

-- ----------------------------
-- Table structure for `basic_category`
-- ----------------------------
DROP TABLE IF EXISTS `basic_category`;
CREATE TABLE `basic_category` (
  `bc_basic_id` int(11) NOT NULL COMMENT '文章编号',
  `bc_category_id` int(11) NOT NULL COMMENT '分类编号',
  UNIQUE KEY `bc_basic_id` (`bc_basic_id`,`bc_category_id`),
  KEY `bc_category_id` (`bc_category_id`),
  KEY `bc_category_id_2` (`bc_category_id`),
  KEY `bc_category_id_3` (`bc_category_id`),
  CONSTRAINT `basic_category_ibfk_1` FOREIGN KEY (`bc_basic_id`) REFERENCES `basic` (`BASIC_ID`) ON DELETE CASCADE,
  CONSTRAINT `basic_category_ibfk_2` FOREIGN KEY (`bc_category_id`) REFERENCES `category` (`CATEGORY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章多分类表';

-- ----------------------------
-- Records of basic_category
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `CATEGORY_ID` int(22) NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `CATEGORY_TITLE` varchar(50) DEFAULT NULL COMMENT '类别标题',
  `CATEGORY_SORT` int(10) DEFAULT NULL COMMENT '类别排序',
  `CATEGORY_DATETIME` datetime DEFAULT NULL COMMENT '类别发布时间',
  `CATEGORY_MANAGERID` int(22) DEFAULT NULL COMMENT '发布用户ID',
  `CATEGORY_MODELID` int(11) DEFAULT NULL COMMENT '所属模块ID',
  `CATEGORY_CATEGORYID` int(22) DEFAULT NULL COMMENT '父类别编号',
  `CATEGORY_SMALLIMG` varchar(120) DEFAULT NULL COMMENT '缩略图',
  `CATEGORY_APPID` int(11) DEFAULT NULL COMMENT '应用编号',
  `CATEGORY_DESCRIPTION` varchar(45) DEFAULT NULL COMMENT '栏目描述',
  PRIMARY KEY (`CATEGORY_ID`),
  KEY `CATEGORY_APPID` (`CATEGORY_APPID`),
  KEY `CATEGORY_MANAGERID` (`CATEGORY_MANAGERID`),
  KEY `CATEGORY_MODELID` (`CATEGORY_MODELID`),
  KEY `CATEGORY_CATEGORYID` (`CATEGORY_CATEGORYID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'icon图标', '0', '2016-03-03 10:14:23', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('2', '导航栏目', '0', '2016-03-03 10:47:58', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('3', '关于我们', '0', '2016-03-03 10:49:07', '50', '7', '2', null, '1549', null);
INSERT INTO `category` VALUES ('4', '美食展示', '0', '2016-03-03 10:50:21', '50', '7', '2', null, '1549', null);
INSERT INTO `category` VALUES ('5', '新闻中心', '0', '2016-03-03 10:51:22', '50', '7', '2', null, '1549', null);
INSERT INTO `category` VALUES ('6', '分店信息', '0', '2016-03-03 10:52:06', '50', '7', '2', null, '1549', null);
INSERT INTO `category` VALUES ('7', '联系我们', '0', '2016-03-03 10:53:09', '50', '7', '2', null, '1549', null);
INSERT INTO `category` VALUES ('8', '版权所有', '0', '2016-03-03 11:00:20', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('9', '友情链接', '0', '2016-03-03 11:13:42', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('17', '餐厅环境', '0', '2016-03-04 10:03:07', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('18', '美食分类一', '0', '2016-03-04 14:23:45', '50', '7', '4', null, '1549', null);
INSERT INTO `category` VALUES ('19', '美食分类二', '0', '2016-03-04 14:24:21', '50', '7', '4', null, '1549', null);
INSERT INTO `category` VALUES ('20', '美食分类三', '0', '2016-03-04 14:24:40', '50', '7', '4', null, '1549', null);
INSERT INTO `category` VALUES ('21', '美食分类四', '0', '2016-03-04 14:25:02', '50', '7', '4', null, '1549', null);
INSERT INTO `category` VALUES ('22', '美食分类五', '0', '2016-03-04 14:25:45', '50', '7', '4', null, '1549', null);
INSERT INTO `category` VALUES ('23', '美食分类六', '0', '2016-03-04 14:26:08', '50', '7', '4', null, '1549', null);
INSERT INTO `category` VALUES ('24', '首页广告位', '0', '2016-03-04 15:11:25', '50', '7', '0', null, '1549', null);

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `ARTICLE_BASICID` int(20) DEFAULT NULL COMMENT '文章ID',
  `ARTICLE_AUTHOR` varchar(20) DEFAULT NULL COMMENT '文章作者',
  `ARTICLE_CONTENT` longtext COMMENT '文章内容',
  `ARTICLE_TYPE` varchar(100) DEFAULT NULL COMMENT '文章类型',
  `ARTICLE_SOURCE` varchar(300) DEFAULT NULL COMMENT '文章来源',
  `ARTICLE_URL` varchar(200) DEFAULT NULL COMMENT '文章跳转链接地址',
  `ARTICLE_KEYWORD` varchar(300) DEFAULT NULL COMMENT '文章关键字',
  `ARTICLE_FREEORDER` int(255) DEFAULT NULL COMMENT '文章自定义显示顺序',
  `ARTICLE_WEBID` int(11) DEFAULT NULL COMMENT '文章管理的应用id',
  UNIQUE KEY `ARTICLE_BASICID` (`ARTICLE_BASICID`),
  KEY `ARTICLE_WEBID` (`ARTICLE_WEBID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '', '', '', '', '/1\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('2', '', '<p>版权所有 Copyright© (C) 2009-2010 芜湖市某某某快餐公司123</p>', '', '', '/8\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('3', '', '<p><img src=\"/../../upload/editor//20160311/50971457682295712.png\"/></p>', '', '', '/2/7\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('4', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 22.3999996185303px; text-indent: 28px; background-color: rgb(255, 255, 255);\">我们常说做人要有修养，到底修养是什么呢？作为服务人员，作为常常被人误解为素质不高的餐饮人，我们应该如何提高自己的休养？2016年，做到这8个关键词，一定能提升自我休养！</span></p><p><br/></p>', '', '', '/2/5\\4.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('116', '', '<p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">2016年开始，尝试涉水O2O的餐饮项目大减，并不是因为餐饮互联网化的需求是个伪命题，而是因为经过2014年、2015年两年的试错之后，已被贴上死亡标签的道路不会有人再跑去交学费(比如大厨上门业务);被验证有利可寻的通路则完成了强强联合(大众点评&amp;饿了么);还有极少一部分“学霸”，尝试以巨大的责任命题来合理化自己的尝试(黄太吉从经营外卖变成了外卖资源整合者，行业改变者);而最后还有一类幸运儿，他们的成功是因为其经营品类的先天基因注定了它确实更适合走互联网贩售这条路，比如甜心摇滚沙拉、热血热狗，还有我今天要介绍的品牌：香送面包。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"/../../upload/editor//20160311/25531457681743087.png\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; text-indent: 0em; white-space: normal; text-align: center;\">(香送联合创始人王磊)</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">但是我却不想通过解释为何烘焙行业更适合走互联网贩售这条通路，来解释香送的一炮而红，因为经过了这么多年，成规模的互联网蛋糕品牌只有21cake，而完成了从0到1至关重要一步的互联网面包品牌也只有香送。隐含在成功背后的是创始团队所完成的无数选择，而决定决策取向的是整个团队对于“行业价值”的判断，所以今天，就和大家聊聊香送是如何靠正确的“价值观”实现其商务模式成功的。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">O2O的价值在于提高效率</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">O2O对于餐饮行业最大的意义是什么?我听到过很多回答：引流、加速品牌推广、为产品增添附加值等等，然而所有这些答案都很可惜的要被列入“本”与“末”之中的后者，O2O真正的意义是提高了餐饮行业的“效率”，或者说互联网能够顺利侵入很多传统领域都因为他能制造远高于传统行业本身的效率。而在这件事情上，香送团队的理解是足够深刻的，因为他们没用互联网干一件多余的事，只是改变了面包烘焙行业的效率模式。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">优化服务效率：餐饮业的服务效率重点体现在两个方面，等候时间和沟通效率。随着面包逐渐变成白领群体早餐和下午茶的选择，中国消费者对于面包的需求逐渐由零食变成了刚需，而这种硬性的、稳定的需求导致早上的面包店总是排满了等待面包出炉或者排队结账的顾客。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">香送面包的任务不仅是去掉了这种“损伤性”的等候——导致上班迟到，而且增加了“面包”这一品类的可通达性，顾客再也不必绕路去面包店，也不用因为自己喜欢的面包还没出炉而委曲求全选择其他口味。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"/../../upload/editor//20160311/66201457681754057.png\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; text-indent: 0em; white-space: normal; text-align: center;\">(法国面包师Samuel)</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">而就沟通效率而言，互联网看似拉远了供给两端的距离，实则恰恰相反，传统模式的面包店顾客虽然可以把自己对于口味的意见直接反馈给服务员，然而服务员的职责却不是产品研发或者监控，因而会使反馈得到呈现的几率大大降低。香送则通过组建微信粉丝群、客服团队的方式使顾客的意见直接反馈到相关负责部门，从而使产品研发真正围绕顾客的需求进行。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">提高成本投入效率：正如所有外卖行业一样，面包的O2O贩售模式节约了经营店面所需的庞大的租金成本和人力成本，仅需付出相比上述“划算”很多的配送成本，从而使资本效率得到有效的释放。并且香送团队选择与实力较强的第三方配送公司合作，而不是自营配送团队，也是资源整合的一种方式。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">餐饮行业的价值核心仍是“产品”</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">我一度被香送从来没有借互联网的旗号在餐饮界“抖机灵”的机智而折服，懂得餐饮业永恒的本质是“产品”，我想这是香送最正确的价值观选择。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">在香送长达四小时的新品发布会上，创始人王磊仅用了寥寥几句带过香送利用甩掉店铺租金和人力成本的方式，通过直通链条实现超高性价比，然后就开始了长达3小时50分钟对于产品“新鲜属性”、“健康属性”、“真材实料”、“口味高级”等全维度的“赘述”，席间我几度被王磊的“啰嗦”烦晕，但是看到在坐顾客和粉丝的痴迷表情，我顿时敬佩起香送团队的人气。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">打健康牌：我家的面包不仅新鲜、用料精良，而且热量还低。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">对于原料的精选，不使用添加剂和氢化植物油的宣传可谓贯穿了其品牌对外输出的各个细节，包括外卖平台中对于每个产品的介绍，大量试吃活动的传播以及各个渠道的媒体传播。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"/../../upload/editor//20160311/42321457681763157.png\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; text-indent: 0em; white-space: normal; text-align: center;\">(吃面包成了一件随心所欲的事)</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">而面对“配送环节会使面包的新鲜程度降低”的质疑，香送团队通过阐明其主营的“欧式软包”会在烘烤完后才能持续长尾发酵，因而用“刚刚烘烤之后并不是口味最佳之时”来解释最新鲜不等于最美味，而后又以对比的方式表明香送品牌不仅摒弃传统门店使用的“冷冻面团”，而且会将当日没有卖出的面包全部捐赠或销毁来完成“洗白质疑”的全垒打。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">打权威牌：我家的欧式软包是发明人指导完成的，就好像我请爱迪生来研发做灯泡。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">香送团队强调其研发经费是所有成本中占比最高的一项，很大程度上是因为其产品迭代速度极快，产品线种类丰富并且研发团队中有世界顶级专家，包括“软欧包”的发明者，面包“世界杯”比赛荣获第三名的烘焙大师等等。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">总结：消费观念的差异化趋势导致需求的多样化</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">香送面包到底想要塑造一个怎样的品牌形象?王磊说香送希望让面包爱好者们不再“将就”，那么我想这也就是香送企业的核心价值观之所在了。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">综观香送的整个商业模式，它其实只是完成了一个简单但却核心的命题——满足顾客逐渐多样化的需求，不让顾客“委曲求全”。顾客不想只是早上吃面包，下午也想吃，但却不能翘班去买;有的顾客想吃更多谷物的面包，有的顾客却想吃更多奶酪的面包;顾客不想只吃面包，他们还想配着咖啡、水果。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">所以香送先是帮懒癌顾客送货上门;还疯狂的扩展产品线，加速产品迭代(当然这一切都是建立在客观的数据分析上，香送自主研发了一套算法，会根据顾客在微信平台上的购买行为——评价、点击率、结算率、行为轨迹、页面跳转率等6-8个维度来分析每种面包获得的“热情度”)，未来还想通过互联网手段实现顾客“定制化的面包需求”;最后发展到扩展品类(饮料、水果)变成了以面包为主，但也能满足顾客多样化需求的复合配送平台。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">香送摸准了新消费群体的价值需求，利用了互联网的效率观，促使餐饮行业“产品主义”的达成，是外卖行业难得的“三观正”企业，它不火，谁火呢。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">来源：掌柜攻略</p><p><br/></p>', '', '', '/2/5\\116.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('15', '', '', '', '', '/2/6\\15.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('16', '', '', '', '', '/2/6\\16.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('17', '', '', '', '', '/2/6\\17.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('18', '', '', '', '', '/2/6\\18.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('19', '', '', '', '', '/2/6\\19.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('20', '', '', '', '', '/2/6\\20.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('21', '', '', '', '', '/2/6\\21.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('22', '', null, '', '', '/10/11\\22.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('23', '', null, '', '', '/10/11\\23.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('24', '', null, '', '', '/10/11\\24.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('25', '', null, '', '', '/10/11\\25.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('26', '', null, '', '', '/10/11\\26.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('27', '', null, '', '', '/10/11\\27.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('28', '', null, '', '', '/10/11\\28.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('29', '', null, '', '', '/10/11\\29.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('30', '', null, '', '', '/10/11\\30.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('31', '', null, '', '', '/10/11\\31.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('32', '', null, '', '', '/10/12\\32.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('33', '', null, '', '', '/10/12\\33.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('34', '', null, '', '', '/10/12\\34.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('35', '', null, '', '', '/10/12\\35.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('36', '', null, '', '', '/10/12\\36.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('37', '', null, '', '', '/10/12\\37.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('38', '', null, '', '', '/10/12\\38.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('39', '', null, '', '', '/10/12\\39.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('40', '', null, '', '', '/10/12\\40.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('41', '', null, '', '', '/10/12\\41.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('42', '', null, '', '', '/10/13\\42.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('43', '', null, '', '', '/10/13\\43.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('44', '', null, '', '', '/10/13\\44.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('45', '', null, '', '', '/10/13\\45.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('46', '', null, '', '', '/10/13\\46.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('47', '', null, '', '', '/10/13\\47.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('48', '', null, '', '', '/10/13\\48.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('49', '', null, '', '', '/10/13\\49.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('50', '', null, '', '', '/10/13\\50.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('51', '', null, '', '', '/10/13\\51.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('52', '', null, '', '', '/10/14\\52.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('53', '', null, '', '', '/10/14\\53.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('54', '', null, '', '', '/10/14\\54.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('55', '', null, '', '', '/10/14\\55.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('56', '', null, '', '', '/10/14\\56.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('57', '', null, '', '', '/10/14\\57.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('58', '', null, '', '', '/10/14\\58.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('59', '', null, '', '', '/10/14\\59.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('60', '', null, '', '', '/10/14\\60.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('61', '', null, '', '', '/10/14\\61.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('62', '', null, '', '', '/10/15\\62.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('63', '', null, '', '', '/10/15\\63.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('64', '', null, '', '', '/10/15\\64.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('65', '', null, '', '', '/10/15\\65.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('66', '', null, '', '', '/10/15\\66.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('67', '', null, '', '', '/10/15\\67.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('68', '', null, '', '', '/10/15\\68.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('69', '', null, '', '', '/10/15\\69.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('70', '', null, '', '', '/10/15\\70.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('71', '', null, '', '', '/10/15\\71.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('72', '', null, '', '', '/10/16\\72.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('73', '', null, '', '', '/10/16\\73.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('74', '', null, '', '', '/10/16\\74.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('75', '', null, '', '', '/10/16\\75.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('76', '', null, '', '', '/10/16\\76.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('77', '', null, '', '', '/10/16\\77.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('78', '', null, '', '', '/10/16\\78.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('79', '', null, '', '', '/10/16\\79.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('80', '', null, '', '', '/10/16\\80.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('81', '', null, '', '', '/10/16\\81.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('82', '', '', '', '', '/9\\82.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('83', '', '', '', '', '/9\\83.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('84', '', '', '', '', '/9\\84.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('85', '', '', '', '', '/9\\85.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('86', '', '', '', '', '/9\\86.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('87', '', '', '', '', '/9\\87.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('88', '', '', '', '', '/9\\88.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('89', '', '', '', '', '/9\\89.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('90', '', null, '', '', '/17\\90.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('91', '', null, '', '', '/17\\91.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('92', '', null, '', '', '/17\\92.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('108', '', null, '', '', '/2/4/18\\108.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('109', '', null, '', '', '/2/4/18\\109.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('110', '', null, '', '', '/2/4/18\\110.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('111', '', null, '', '', '/2/4/18\\111.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('112', '', null, '', '', '/2/4/18\\112.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('113', '', null, '', '', '/2/4/18\\113.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('114', '', null, '', '', '/2/4/18\\114.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('115', '', null, '', '', '/2/4/18\\115.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('99', '', '<p>好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃。</p>', '', '', '/2/4/19\\99.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('100', '', '<p>好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃。</p>', '', '', '/2/4/20\\100.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('101', '', '<p>好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃。</p>', '', '', '/2/4/21\\101.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('102', '', '<p>好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃。</p>', '', '', '/2/4/22\\102.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('103', '', '<p>好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃。</p>', '', '', '/2/4/23\\103.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('104', '', null, '', '', '/24\\104.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('105', '', null, '', '', '/24\\105.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('106', '', null, '', '', '/24\\106.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('107', '', '<p>&nbsp; &nbsp; &nbsp;感谢您进入某某饮食管理顾问有限公司如家的服务世界，我们相信，某某公司的餐饮管理服务能够给您带来全新的感受。<br style=\"color: rgb(133, 133, 133); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; white-space: normal;\"/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;某某公司及其下属的捷洁和麦芙等机构是为客户提供餐饮管理的专业机构。我们的服务包括：餐厅和厨房的设计、承包和管理；生鲜和安全的食品原材料配送； 宴会和大型活动的用餐和自助餐；餐厅工作人员食品安全卫生、5S、HSE（卫生、安全和健康）、礼仪等的培训服务。<br style=\"color: rgb(133, 133, 133); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; white-space: normal;\"/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;某某饮食管理顾问有限公司成立于2004年。目前已经为近百家大型知名或者小规模的客户、学校、企事业单位提供餐厅和食堂管理，公司稳定和持续的健康发展。<br style=\"color: rgb(133, 133, 133); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; white-space: normal;\"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 鉴于当下食品安全尤其是原材料采购和加工制作过程的高风险，某某公司一直为改变国内餐饮行业特别是食物的安全、卫生和健康而努力。某某公司的每一个工作现场和流程都需要符合泛美乐建立在ISO22000（食品安全管理系统）、ISO14001（环境管理系统）、OHSAS18001（职业安全管理系统）的国际标准管理系统。而在某某公司内部全员参与的TQM持续改进活动是泛美乐改善配餐质量和服务水平的重要工具。<br style=\"color: rgb(133, 133, 133); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; white-space: normal;\"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “保护客户的健康和安全，解除客户主营业务外的后顾之忧”任重道远，我们期待和客户一起持续努力 !</p><p><img src=\"/../../upload/editor/1549//20160311/44981457680780695.png\" title=\"关于我们.png\"/></p><p><br/></p>', '', '', '/2/3\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('117', '', '<p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">2015年，可谓餐饮业竞争激烈的一年。由于餐饮业进入门槛低、聚客力将强，甚至还成为了购物中心提升人气的救命稻草，因此吸引了很多人杀进餐饮业。有数据显示，仅一线城市，2015年下半年新开业的餐厅就超过20余万家，增幅超过50%。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">但是门槛低的同时，利润低、风险大也成为了餐饮业的共识。餐厅一开门，每天几千甚至几万的成本就逃不掉。据不完全统计，过去5年餐饮行业的运营成本快速攀升，达到惊人的127%左右。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">由于大部分没干过餐饮的盲目闯入餐饮行业，导致了大批餐厅寿命周期短暂，最终关门。这使餐饮业迎来了最大的寒冬。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">然而，在被公认形势严峻的餐饮业，有些品牌却能够保持盈利，甚至每天“疯狂”排队。下面小编为大家盘点2015年天天疯狂排队的餐厅，看看它们有什么魅力让顾客心甘情愿天天排队。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"/../../upload/editor//20160311/68291457681855005.png\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">Line Friends Cafe&amp;Store：<span style=\"padding: 0px; margin: 0px; text-indent: 2em;\">中国内地首家门店</span></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">天天排队，排到中暑排到商店考虑到大家安全不得不先关门几天是什么概念?这家来自韩国的少女心咖啡店完美地解释了这一现象。该店从去年7月开业以来，每天都吸引大量人流，即使开业半年仍需要排队才能进去购物与就餐。目前该品牌在上海、香港有门店。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">卖点：这家把可爱的卡通人物表情，包括馒头人、可妮兔和布朗熊统统搬进了店里的咖啡店是Line Friends在中国内地的第一家门店，不仅设有周边产品的展柜，也开设了中国首家LINE CAFé。LINE CAFé还专为中国消费者开发了中国限量版的3D布朗熊蛋糕，LINE FRIENDS主题刨冰等等。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">据了解，继Line上海店后，Line Café &amp; Store中国大陆第二家店铺将进驻成都远洋太孤立，而且这将是Line品牌旗下第八家常规店。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">已进驻购物中心：上海SOHO复兴广场</p><p><br/></p>', '', '', '/2/5\\117.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('118', '', '<p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; text-indent: 2em;\">服务再好，菜品不好吃也是白搭。</span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">本期餐饮好案例先带大家看看海底捞2016春季新菜品(图片来自海底捞官网)：</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"/../../upload/editor//20160311/29201457681896858.png\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; text-indent: 0em; white-space: normal; text-align: center;\">猪肚鸡火锅</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">春季要滋补，猪肚鸡属于粤菜系，温补又和胃。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">加上海底捞提供四宫格，猪肚鸡火锅成为必选汤底之一也是理所当然的了。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"/../../upload/editor//20160311/62741457681904484.png\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; text-indent: 0em; white-space: normal; text-align: center;\">黑豆腐竹</p><p><br/></p>', '', '', '/2/5\\118.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('119', '', '<p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">今年将采取三项举措，其中第一项就是全面实施营改增，从5月1日起，将试点范围扩大到建筑业、房地产业、金融业、生活服务业。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">餐饮业营改增终于来了。对于餐饮业来说，真的是利好吗?</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">不一定。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"http://www.canyin88.com/uploads/image/20160310/1457602131293430.jpg\" title=\"总理发话餐饮业营改增,知道真相的我哭了！\" alt=\"总理发话餐饮业营改增,知道真相的我哭了！\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border: none;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">什么是营改增?</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">营改增其实就是以前缴纳营业税的应税项目改成缴纳增值税，增值税就是对于产品或者服务的增值部分纳税，减少了重复纳税的环节。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">简单的说，对于餐饮业来说，某餐厅今天购买了1万元的食材，这些食材已经缴纳了相应的税金了的，餐厅通过对这些食材进行加工售卖，卖出了2万元，那么一万元的食材相应的税金可以抵减，餐厅只需要对增值的一万元计算缴纳相应的税金就可以。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">营改增对餐饮业真的是利好吗?</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">大家看出来了没有?</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">营改增，作为一般纳税人，名义上可用成本抵扣增值税，然而，由于餐企进货渠道无法提供增值税发票，导致税负将增加。尤其是有的餐饮企业的原料采购直接来源于农户，根本无法获得增值税专用发票。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">而我们很多的餐饮企业里面，小规模纳税人占比特别高，在85%~90%之间。换句话说，在这个行业中，纳税人以小微企业和个体工商户居多，国家目前是对月销售额3万元以下的小微企业和个体户免征营业税的。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">因此，全面实行“营改增”可能对业内一些大型正规的企业会是利好，但对于小型不太正规的企业来说，就很难判定是否是利好。因为“营改增”实施后，在抵扣的过程中需要很多的完税凭证，如果企业不能全部提供相关凭证，都不会抵扣。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">压在餐企身上的最后一根稻草，依然是房租</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">案例君发现，很多老牌餐饮企业倒闭或者迁址后生意变差，很多新兴的富有竞争力的餐企的倒闭，其中受房租的影响非常密切。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">比如这个案例：</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">2015年，济南第一大快餐连锁企业—金德利民连续关闭了两家门店，据金德利集团常务副总李女士说，关店并不是因为经营不好，主要是餐厅房租上涨太快了，很多店都是五年来上涨了50%，比如关闭的其中一间店，200平方米左右，5年前年租金只有16万元，一年之后涨到20万元，企业勉强还可以接受，后来合同到期，一下要涨到48万元，上涨两倍，靠卖包子、卖菜的快餐厅，根本承受不住这样的高成本，餐厅无疑是在给房东打工。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">餐饮老板们，你们的房租占餐厅成本的多少?</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">不过，营改增的目的就是减轻企业的税负，各行各业之间存在着千丝万缕的关系，我们唯有希望经济更好，房子房租回转到合理化水平，那样，才是最实际的。另外，我们也希望国家继续出台有利于实体行业的经济政策，缓解目前餐饮业面临的高租金、高成本、低效益的尴尬现状!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"http://www.canyin88.com/uploads/image/20160310/1457602140293887.jpg\" title=\"总理发话餐饮业营改增,知道真相的我哭了！\" alt=\"总理发话餐饮业营改增,知道真相的我哭了！\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border: none;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">餐饮行业期待减税，不如先自己减负</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">下面是节选自餐饮好案例之前推送的一篇原创。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">当下，餐饮市场中的佼佼者不一定是产品最丰富的那一个，反而常常是把一种产品一件事情做到最简单，最极致的那一个。尤其是在餐厅供大过于求，同质化日益严重的如今，在产品结构上做减法，可以让餐厅产品核心竞争力更为聚焦，在客户群体筛选上做减法，可以帮助餐厅更加明确经营方向和定位，在经营管理上做减法，可以让餐厅在最大程度地降低运营成本……</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><strong style=\"padding: 0px; margin: 0px;\">1、巴奴火锅做减法：减少产品种类，保留特色产品</strong></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">从2013年开始，巴奴火锅便往品牌根部发力，一方面精简菜谱，对菜谱就进行3次迭代，从最多时的200多种减少到100多种，后来又精简到30多种，主打产品是毛肚和菌汤锅底。另一方面又一口气将全国的加盟店压缩了50%，2014年再次砍掉剩余的2/3，而2016年七八月份前则准备把目前剩下的六七家加盟店全部取消，借以实现巴奴品牌全直营。上述举措令巴奴的产品更加聚焦，企业管理效率大幅提升，也加速了扩张步伐。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">用杜中兵的话来说就是“做品牌的心法是‘做好当下，照顾未来’，对未来没有帮助的，就必须坚定舍弃，否则就会成为你未来的负担，甚至把你拖入死亡的深渊。”</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><strong style=\"padding: 0px; margin: 0px;\">2、和合谷做减法：调整菜单，创新模式</strong></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">在面对餐饮业面临着房租、人工、食材、能源费用高，利润低的“四高一低”困境，从2014年年底开始，和合谷就着手调整菜单，只保留了六款经典，同时每月推出一款创新口味。努力做到“经典餐品，百吃不厌;创新餐品，常吃常新”，让“六加一”成为和合谷的新常态。此外，在革新菜单的同时，和合谷的开店模式也由过去的200-300平方米的主流模式被100平方米集约化的新模式所取代。而减小面积就意味着减轻租金压力，同样的位置，租金下降了，翻台率提高了，赚钱就更容易了。另外，据了解，这种多种功能被高度集约化的新模式餐厅还可以做到“一人多岗、一岗多能”，让人工效能得到充分发挥，大大节省了人力成本。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">和合谷董事长赵申是这么解释的“作为快餐业，过多品种不利于消费者快速抉择;同时，品种太多也不利于企业标准化。而别人的餐饮业照样能够生存，甚至价位也与国内相差无几，关键在于提高效能。”</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><strong style=\"padding: 0px; margin: 0px;\">3、望湘园做减法：优化结构，提升效率</strong></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">2015年，望湘园为了应对日益激烈的市场竞争，便开始着手工作减负，调整结构便是其中工作内容之一。2013年-2015年，望湘园产品总量由原来的120道经过两年6次菜谱更新之后，精减至72道。2015年11月份，望湘园又推出62道极简版菜谱，在上海、北京和南京的10余家分店试行。于此同时，望湘园旗下品牌旺池川菜也经过两年超过8次的菜谱更新，把菜品由原来的近110道精减至目前的69道。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">与此同时，望湘园紧跟时代发展，积极将互联网信息手段运用到餐厅运营过程中，ipad点餐节约人力成本，绩效考评体系提高人员产值，会员营销系统为会员管理工作提供方便……让顾客在信息化的时代，在望湘园体验到的不仅是美味，也同样能让顾客领略到“云餐厅”带来的便捷、轻松与享受。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">望湘园总经理刘慧认为“在充满了未知险阻的征途上走得动、走得远、走出去，就必须放下一切包袱，解除一切束缚。”</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">来源：餐饮好案例</p><p><br/></p>', '', '', '/2/5\\119.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('120', '', '<p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">很多“聪明”的企业家，因为擅于发现机会，又因以为拥有更多社会资源，总易于做出大跨度决策，而忘记市场风险。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">然而，顺风顺水时，高朋满座;陷入困境时，所谓资源却消失无踪。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">众生无情?社会世俗?其实，所有结果都来自你以前的选择!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">对于餐饮这个最忌冒进的特殊行业，尤其如此。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">从曾经市值50多亿的湘鄂情，到拿到几亿融资的俏江南、大嫂水饺，再到大手笔投资4个亿的唐都，无不在印证这个看似最简单的道理。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">以致很多人概叹：想让谁家饭店先死，就给它钱，给他更多的钱……</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">坏事年年有，近来特别多。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">经济增速下降的中国，不仅是财大气粗的房地产老板在十余年一路高歌中由盛转衰，制造业也哀鸿遍野，就连被视为赚辛苦钱的餐饮业也是噩耗连连。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">据媒体报道，“唐都‘出事’是因为新唐都与唐都大酒店两个项目总投资近4亿元，这么多钱投资出去一点回报都没有，资金链断裂所致”。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">罗马不是一天建成的，原本雄霸一方的唐都集团，肯定不是因为一两件事就身陷困局。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">对于现金流充足的餐饮业来讲，资金链断裂仅是一个结果，造成资金链断裂的一系列原因才值得我们关注和思考。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"http://www.canyin88.com/uploads/image/20160310/1457600487919832.jpg\" title=\"又一家企业被钱撑死了，“钱多的先死”成餐饮业最大魔咒！\" alt=\"又一家企业被钱撑死了，“钱多的先死”成餐饮业最大魔咒！\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border: none;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">大风起兮云飞扬</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">成功的企业家都曾相似，失败的企业家各有各的缺陷。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">刘燎原的成功，和其他的企业家一样——源自胆略。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">1988年，大家都以万元户为荣时，在省电影公司工作的刘燎原拍胸脯承包了单位的兴隆饭店，将其改名为一家村饭庄，开始了白手起家的创业历程。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">那时，商品粮是一个“金饭碗”，许多人削尖脑袋往里钻。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">刘燎原敢于丢下正式工作去开饭馆，足见其个人见识在当时是如何鹤立鸡群。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">果不其然，两年后，一家村饭庄的经营档次上了一个新台阶，更名为唐都。之后，唐都不断进取，事业逐渐走向新的高峰——创建“太原唐都大酒店”、率先建设餐饮生态园……</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">唐都的每一个动作都在本地餐饮业中赚足了关注的目光。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">唐都也凭借一流的厨品、一流的环境、一流的服务，声名鹊起，成为当地餐饮行业的一道风景，也成为山西省高档酒店的象征和代表。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">之后，在大同、阳泉、北京、海口、东北开疆拓土，建设酒楼、生态餐厅、商务酒店……</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">自有猛士拓四方</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">“机会来了，墙都挡不住。”2011年“唐都”正式命名二十周年，唐都集团与太原华龙泰签署综合性、功能性、实用性最强的五星级规格的“新唐都”项目。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">半年后，唐都集团又与安业集团签署了五星级规格“唐都会议中心”项目，配合餐饮、客房、康体娱乐等服务功能的综合功能型酒店。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">这两个项目投资近4亿。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">4个亿是个什么概念?</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">4万捆1万，一卡车根本拉不完!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">尽管一帆风顺的刘燎原一定不是靠自有资金，但这仍是一种豪赌，一次蛇吞象的豪赌!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">为什么?因为餐饮业的投资周期是15~18个月，而几年折旧时间一到，又要装修，这是客户喜新厌旧的规律所致。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">唐都集团投资4个亿，要多长时间收回成本?这些刘总不可能不清楚!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">到底是什么底气让刘燎原一掷千金，这么投向高端餐饮?暴利!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">赵丽蓉和巩汉林的小品《走四方》中，就高菜价有着形象的描绘。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">艺术来源于生活。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">许多大饭店对“高档”有着很深切的体会：“宫廷玉液酒，一百八一杯。”这种比军火利润都高的现象，自然催生出了许多“皇家”、“宫廷”、“贵族”饭店。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">马克思曾感慨过，有一倍的利润，资本家能铤而走险!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">在饭店行业摸爬滚打20余年的刘燎原，更是知道其中三昧，能掂量清楚大小多少!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">然而，苍狗白云，世事多变!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">2012年年底，中央八项规定的出台，使原来顾客盈门的高端餐饮生存艰难，市场环境发生了很大变化。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">刘燎原和他的团队始料不及，“唐都会议中心”和“新唐都”这两个原来被看好的项目，都未能按时完工，更不用说开始营业了。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">这使唐都集团的资金链日渐紧张，并陷入了进退维谷、举步维艰的处境。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"http://www.canyin88.com/uploads/image/20160310/1457600498341198.jpg\" title=\"又一家企业被钱撑死了，“钱多的先死”成餐饮业最大魔咒！\" alt=\"又一家企业被钱撑死了，“钱多的先死”成餐饮业最大魔咒！\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border: none;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">一朝落难亏故乡</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">“在‘新唐都’和‘唐都会议中心’两个项目上，唐都总投资近4亿元，这么多钱投资出去，一点回报都没有。”</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">银行虽然是资金融通的管道，但企业越是困难，银行就越靠不住……</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">桃南唐都大酒店的180多名员工催要薪资，接着唐都大酒店宣告关门。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">“拖欠员工的薪资有几百万元，与几亿元投资相比，并不是太大的数字却无力支出……”刘燎原的抱怨不是没有道理!关于中小企业因为银行断贷或抽贷而倒闭的话题，已经被炒无数遍了。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">问题是，</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">银行是什么?它为什么要这么做?回归到市场经济来说，银行是企业而不是慈善家，做的也是生意。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">市场的逐利本能注定了银行“嫌贫爱富”的本性。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">当企业形势好的时候，银行会主动甚至不惜公关为企业发放贷款，而当企业不好的时候，银行出于风险考虑，往往会想方设法抽贷。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">它讲究的是投入产出，明知道你没有偿还能力了，为什么还要贷给你呢!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">更重要的是，</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">一个原本蒸蒸日上的企业，怎么三两年时间就日薄西山到这个程度?一方面，银行和风险投资公司满世界找项目、找投资;另一方面，很多曾经辉煌一时的庞大企业因为“一杯水”被渴死在路上!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">为什么?</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">尤其是像唐都集团这样一个曾经掌握了数亿资本的人，怎么到了连几百万元工人工资都付不出的程度?</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">实际上，</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">世界上最值钱的是希望!资本的逐利性决定其风险性，如果连资本都退避三舍，可见这个项目的希望是多么的渺茫!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">同时，像唐都这种现金流很充足的大企业，落难时被几百万元困死浅滩，足见企业家本人平时的银行信用、朋友资源甚至是上下游产业透支有多严重!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">抛开企业管理与发展的细枝末节不谈，仅唐都集团董事长一人在山西企业家这个阶层里，活得有多孤独才会无人施以援手!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">沙场老将从头来?</strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">唐都的资金链紧张和断裂也许是投资战略的失败，也许是企业决策的失误。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">投资的风险，可能是合作方的选择出现了问题，可能是对宏观经济形势的判断出现失误，也可能是因为对自身把脉不准，或盲目扩张。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">但是，种种决策，有多大的诱饵，才会让一个久经沙场的老将失去投入产出的最基本常识?</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">答案或许只有一个，膨胀与暴利!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">“八项规定”出台之后，那么多高端餐饮应声落马，足以证明这个行业的现实运营已经背离行业规则到何种程度!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">吴晓波曾提到两种类型的企业，一种是狐狸型，一种是刺猬型。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">聪明的狐狸型企业总是擅于发现市场机会，并迅速进入，而稍显笨拙的刺猬型公司长期只专注做一件事，并以锋利的刺形成壁垒。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">聪明的企业家很难拒绝市场机会的诱惑，而易疏于风险的防范。这方面的例子在各行业都屡见不鲜。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">据媒体报道，唐都集团正在积极接触北京等地一些大集团和财团，寻求融资。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">同时，刘燎原也希望本省、全国有实力企业和机构能参与进来，让唐都能继续运营下去。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">“未来会还清所有管理人员和职工的欠薪，不会欠他们钱的。真要倒了，我们也会二次创业，从头再来。”刘燎原的承诺，大家都在拭目以待!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">来源：一块儿开餐厅</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">作者：潦寒</p><p><br/></p>', '', '', '/2/5\\120.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('121', '', '<p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">中国首家伊斯兰文化主题饭店、河南首家四星级旅游餐饮饭店……东方丹妮名气之大，远近皆知;好多年门庭若市，名士盈门，辉煌得让无数餐饮人艳羡。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">然而，有一天，当3000多平方米饭店的营业额一下降到2000元，并一直无好转迹象时，所有人都懵了。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">2013年起，这家最知名的清真餐厅开始踏上了转型之路。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">前面无路，左转撞墙，右转碰壁，三年几百万亏进去后，才发现餐饮回归须过三大难关……</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">2012年年底的一天，3000多平方米的东方丹妮大酒店营业额突然降到了2000元。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">当时，丹虹只是愣了一下，没有反应过来这意味着什么，以前酒店的日营业额都是好几万。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">然而，连亏半年后，丹虹终于回过神儿了。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">政府来真的了，“八项规定”不是一阵风，以政商宴请为主的高端餐饮重回往昔已经不可能。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">想要生存，必须转型。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">说干就干。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">调整菜价，把大包间改小，把高级石料门改成土垒木质门，咋接地气儿咋来。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">但花了80万整改，却没有达到预期效果。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">对高端大气上档次的东方丹妮自降身价，中低端消费者似乎并不领情。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"http://www.canyin88.com/uploads/image/20160310/1457599949986604.jpg\" title=\"转型三年亏掉几百万，她才知道餐饮回归有三大难关\" alt=\"转型三年亏掉几百万，她才知道餐饮回归有三大难关\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border: none;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">思<span style=\"padding: 0px; margin: 0px; text-indent: 2em;\">想的回归</span></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">人们对事物的认知由感觉、知觉、记忆、思维和想象等要素组成。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">以阿拉伯文化为背景的高档清真主题饭店、中国首家伊斯兰文化主题饭店、河南省首家四星级旅游餐饮饭店……这是人们认知中的东方丹妮。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">这样的标签，让大众顾客望而止步。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">要想重建人们的认知，必须由内而外地改变。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">管理学中常说“不换思想就换人”。但，对于老板来说，换思想比换人还难。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">这时，丹虹想起了多年前在北京一次茶话会上，一位92岁老先生对她说的话：“你们回族企业，不管做多大多强，都得服务回族老百姓，服务大众。”</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">是啊，很多回族老百姓找不到合适的家宴餐厅，而自己的餐厅一直让人觉得高高在上。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">还有很多年前，东方丹妮大酒店开业那天，当时的河南省省长李成玉(回族)对丹虹说：“清真没有小事，要当作大事来抓。”</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">当时，丹虹回答：“清真不是我的事业，是我的信仰。”</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">一切历历在目，过去盲目地服务于某一个群体，而忽视了大众的需求。丹虹意识到这与自己的初衷是相违背的。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">“回归初心!”方向有了，但已经向一个方向走得太远的东方丹妮大酒店，想转回来并不是那么容易。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">想了很多招，结果不尽人意。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"http://www.canyin88.com/uploads/image/20160310/1457599957663040.jpg\" title=\"转型三年亏掉几百万，她才知道餐饮回归有三大难关\" alt=\"转型三年亏掉几百万，她才知道餐饮回归有三大难关\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border: none;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">形<span style=\"padding: 0px; margin: 0px; text-indent: 2em;\">的回归</span></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">2014年下半年，苦撑一年多的东方丹妮，甚至想脱手不管，并找到了一位十分有大众餐饮经验的合作伙伴，全权交给他们打造清真家宴。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">然而，在磨合的过程中，合作方由于不擅长做回族餐，想改做非清真的家宴，这与丹虹的信仰大相径庭，合作终止。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">丹虹索性把东方丹妮关门停业。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">闭门造车，不如外出寻路。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">在停业的几个月里，丹虹到全国各地考察餐厅，爱斐堡、久久缘等著名喜宴餐厅给了她很大启发，细细一想，不但整个城市像东方丹妮这样档次的回族喜宴餐厅很少，身处回民区的东方丹妮周围几公里竟也没几个上档次的喜宴餐厅。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">市场就是这样，有时候精心准备的多方论证还抵不上灵光一闪，丹虹决定做喜宴，名字就叫“东方丹妮喜宴餐厅”。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">门头都做好了，丹虹又去天津宴宾楼、北京南来顺考察，并拜访了清真烹饪大师艾广富。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">艾广富听了东方丹妮遇到的困境，语重心长地说，他服务京剧大师马连良年代，那时回族餐饮之所以红火，主要根源就是朴实的原料和精湛的工艺。说到底，就是“讲究”。烹饪之奥妙就在于，地方菜才养地方人，东方丹妮必须挖掘河南清真传统菜。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">老人家随口又提到饭店名字的事，他说，以前周恩来总理请外宾一律到鸿宾楼，在大家意识中，办大事的地方应该叫楼，不能叫餐厅，改成喜宴楼多好。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">此话一出，众人皆叫好。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">于是，东方丹妮喜宴楼就此开始了。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">砸掉精美奢华的装修，一楼成了一个可容纳200人的多功能厅;二楼包间全部打掉，开放成可容纳300人的宴会大厅;三楼改装成小型宴会厅，仅留4个小包间。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">施工前，丹虹痛哭了一场。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">二楼的西米画穹顶、雕花的椅子都是从国外空运过来的，设计、布局、装修，所有的东西都承载了自己的多年情感。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">丹虹舍不得砸掉这些倾注心思的艺术品。但是她也清楚，正是这些东西阻碍了寻常顾客的脚步。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">过去来东方丹妮，从进门那一刻就享受到让人“受宠若惊”的服务。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">然而，对于大众而言，来餐厅吃饭的初衷仅仅是能在一个轻松的环境里品味美食。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">繁琐的服务反而从心理上给人造成紧张的情绪。服务之于就餐，就是一味作料，适量宜口，过量就会呛着。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">在保证顾客就餐服务质量的情况下，原来需要120人的大酒店，改成喜宴楼后40多人就够了，包括后厨、管理人员和服务人员。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-align: center;\"><img src=\"http://www.canyin88.com/uploads/image/20160310/1457599965577086.jpg\" title=\"转型三年亏掉几百万，她才知道餐饮回归有三大难关\" alt=\"转型三年亏掉几百万，她才知道餐饮回归有三大难关\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border: none;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; color: rgb(192, 0, 0);\"><strong style=\"padding: 0px; margin: 0px;\">质<span style=\"padding: 0px; margin: 0px; text-indent: 2em;\">的回归</span></strong></span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">形的回归远不足够，做了20多年餐饮的丹虹知道，产品才是喜宴楼的根本。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">什么产品才是喜宴楼需要的?</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">选用本真食材，烹饪洁净食物，给顾客最真实的饮食感受，是丹虹一直以来所理解的饮食的本质。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">但仅有这些，还是不够。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">“民族的才是世界的。”丹虹这次要回归得更彻底。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">几经打听，费尽周折，她想把开封一位做了几十年经堂席的回族老师傅请过来。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">很多人一听都愣了，在东方丹妮上这么土的经堂席，行吗?</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">丹虹说，她就是要顾客在最好的环境中，吃到最地道的回民菜!两者间看似互不相融的巨大反差，才会激发回族饮食文化的最大张力。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">好吧，老师傅请来了。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">然而，这位60多岁的倔师傅一看后厨没有煤火，不干了。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">丹虹当即拆了100多万的西点房设备，垒了个煤火灶。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">没有木质的蒸笼，开着车去开封乡下找。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">定做的陶瓷碗，深了不行，浅了不行，宽了也不行。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">就这样，准备工作做了一个多月。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">但是，开工后发现炉子不存气!</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">拆!光垒煤火灶就找了四拨人，垒了砸，砸了垒……</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">终于，一切就续，东方丹妮喜宴楼开业了。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">既然是服务大众，当然要有“大众价”，“包桌599元起”的平民价，土得不能再土的经堂席，一下子拉近了与顾客的距离。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">新门头、新装修、新定位，开业仅一个月，东方丹妮2016年的“好日子”就全部被预定。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">第二个月，东方丹妮开始盈利了</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">……</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">丹虹说，下一步她准备深挖回族传统文化，把回民的婚礼仪式、宴会习俗搬上舞台，让前来用餐、聚会的客人感受到不一样的民族风情;另外，还有百天、祝寿等家宴包桌，也有巨大的潜力可挖。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">从经营思想、装修风格到菜品，丹虹说东方丹妮的转型始终围绕“回归”二字。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">&quot;回归经营的初心、回归环境的朴实、回归食物的本真。&quot;</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">&quot;没有仪式的诚心，就没有对文化的敬畏。&quot;</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">&quot;没有本真的回归，就没有持续的生命力。无论搭载传统仪式还是民族文化，餐饮业的发展最终要走向回归。&quot;</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">从红红火火的知名回族餐厅，到瞬间跌至人生最低谷，丹虹猝不及防。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">但，这种炼狱式的磨炼，对东方丹妮来说，也许是一种新的重生……</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">经堂席</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">阿拉伯语称之为“尼叶提”，是一种穆斯林传统的宴客形式。原来多指回族人婚嫁宗教仪式后办的一种宴席——先由从清真寺请来的阿訇诵经，以求祈祷祝福之意，而后再与亲朋好友分享美味。“八大碗”是经堂席的必备菜品，也是几乎所有回族清真餐馆的特色佳肴。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; text-indent: 32px;\">作者：胡慧颖</span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; text-indent: 32px;\">来源：一块儿开餐厅</span></p><p><span style=\"padding: 0px; margin: 0px; text-indent: 32px;\"><br/></span></p><p><br/></p>', '', '', '/2/5\\121.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('122', '', '<p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\"><span style=\"padding: 0px; margin: 0px; text-indent: 2em;\">悉尼餐厅Hemingway’s的经理苏伯推出了可循环使用的不锈钢吸管，以取代不环保的塑料吸管。(澳洲网)</span></p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">作为一名环保人士，悉尼餐厅Hemingway’s的经理苏伯近日作出一个重大决定，推出可循环使用的不锈钢吸管，以取代不环保的塑料吸管。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">据澳洲网报道，Hemingway’s餐厅已禁止顾客使用塑料吸管。餐厅经理苏伯表示，他的餐厅现已拥有100支不锈钢吸管，可让顾客尽情享用果汁或鸡尾酒。</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">“这些不锈钢吸管全部购自网络，它们很好用，一点都不会影响酒水的口感。”他说，“虽然不锈钢吸管比塑料吸管贵很多，但它们可以循环使用。”他还开玩笑说，“目前还没有发现有顾客想要偷走这些吸管。”</p><p style=\"font-family: 微软雅黑, 黑体, 宋体; padding: 0px; margin-top: 0px; margin-bottom: 0px; border: 0px; color: rgb(102, 102, 102); font-size: 14px; line-height: 33px; white-space: normal; text-indent: 2em;\">据悉，苏伯是一名身体力行的环保主义者，每次与女朋友去海滩玩，回家时他们都会捡上至少3袋垃圾。他说，“如果每个人都能这样做，海滩一定会更加干净。”</p><p><br/></p>', '', '', '/2/5\\122.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('123', '', null, '', '', '/24\\123.html', '', '0', '1549');

-- ----------------------------
-- Table structure for `cms_column`
-- ----------------------------
DROP TABLE IF EXISTS `cms_column`;
CREATE TABLE `cms_column` (
  `COLUMN_CATEGORYID` int(22) NOT NULL DEFAULT '0' COMMENT '关联category表（类别表ID）',
  `COLUMN_KEYWORD` varchar(300) DEFAULT NULL COMMENT '栏目简介',
  `COLUMN_DESCRIP` varchar(500) DEFAULT NULL COMMENT '栏目关键字描述',
  `COLUMN_TYPE` int(2) DEFAULT NULL COMMENT '1,代表列表栏目。2，代表缩单篇。',
  `COLUMN_URL` varchar(50) DEFAULT NULL COMMENT '如果是外部链接，则保持外部链接地址。如果为最终列表栏目，就保存文章显示列表',
  `COLUMN_LISTURL` varchar(50) DEFAULT NULL COMMENT '最终列表栏目的列表模板地址',
  `COLUMN_TENTMODELID` int(22) DEFAULT NULL COMMENT '栏目类型,直接影响栏目发布的表单样式',
  `COLUMN_WEBSITEID` int(22) DEFAULT NULL COMMENT '栏目所属站点ID',
  `COLUMN_PATH` varchar(150) DEFAULT NULL COMMENT '栏目路径',
  `COLUMN_CONTENTMODELID` int(11) DEFAULT '0' COMMENT '栏目管理的内容模型id',
  PRIMARY KEY (`COLUMN_CATEGORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of cms_column
-- ----------------------------
INSERT INTO `cms_column` VALUES ('1', '', '', '2', 'head.htm', null, null, '1549', '/1', '0');
INSERT INTO `cms_column` VALUES ('2', '', '', '2', 'title.htm', null, null, '1549', '/2', '0');
INSERT INTO `cms_column` VALUES ('3', '', '', '2', 'about.htm', null, null, '1549', '/2/3', '0');
INSERT INTO `cms_column` VALUES ('4', '', '', '1', 'foodDetails.htm', 'fooddisplay.htm', null, '1549', '/2/4', '0');
INSERT INTO `cms_column` VALUES ('5', '', '', '1', 'newsDetails.htm', 'newscenter.htm', null, '1549', '/2/5', '0');
INSERT INTO `cms_column` VALUES ('6', '', '', '1', 'storeInformation.htm', 'storeInformation.htm', null, '1549', '/2/6', '0');
INSERT INTO `cms_column` VALUES ('7', '', '', '2', 'contact.htm', null, null, '1549', '/2/7', '2');
INSERT INTO `cms_column` VALUES ('8', '', '', '2', 'foot.htm', null, null, '1549', '/8', '0');
INSERT INTO `cms_column` VALUES ('9', '', '', '1', 'about.htm', 'friendlylink.htm', null, '1549', '/9', '0');
INSERT INTO `cms_column` VALUES ('17', '', '', '1', 'about.htm', 'about.htm', null, '1549', '/17', '0');
INSERT INTO `cms_column` VALUES ('18', '', '', '1', 'foodDetails.htm', 'fooddisplay.htm', null, '1549', '/2/4/18', '0');
INSERT INTO `cms_column` VALUES ('19', '', '', '1', 'foodDetails.htm', 'fooddisplay.htm', null, '1549', '/2/4/19', '0');
INSERT INTO `cms_column` VALUES ('20', '', '', '1', 'foodDetails.htm', 'fooddisplay.htm', null, '1549', '/2/4/20', '0');
INSERT INTO `cms_column` VALUES ('21', '', '', '1', 'foodDetails.htm', 'fooddisplay.htm', null, '1549', '/2/4/21', '0');
INSERT INTO `cms_column` VALUES ('22', '', '', '1', 'foodDetails.htm', 'fooddisplay.htm', null, '1549', '/2/4/22', '0');
INSERT INTO `cms_column` VALUES ('23', '', '', '1', 'foodDetails.htm', 'fooddisplay.htm', null, '1549', '/2/4/23', '0');
INSERT INTO `cms_column` VALUES ('24', '', '', '1', 'about.htm', 'about.htm', null, '1549', '/24', '3');

-- ----------------------------
-- Table structure for `cms_contact_us_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_contact_us_50`;
CREATE TABLE `cms_contact_us_50` (
  `basicId` int(11) NOT NULL,
  `address` varchar(220) DEFAULT NULL,
  `phone` varchar(220) DEFAULT NULL,
  `linkman` varchar(220) DEFAULT NULL,
  `mobile` varchar(220) DEFAULT NULL,
  `website` varchar(220) DEFAULT NULL,
  `email` varchar(220) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_contact_us_50
-- ----------------------------
INSERT INTO `cms_contact_us_50` VALUES ('3', '安徽省芜湖市滨江商务楼2406', '0553-3833517', '臧先生', '18715325230', 'www.yihuonet.com', 'beifen.ni@yihuonet.com');

-- ----------------------------
-- Table structure for `cms_content_mode_field`
-- ----------------------------
DROP TABLE IF EXISTS `cms_content_mode_field`;
CREATE TABLE `cms_content_mode_field` (
  `FIELD_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段自增长id',
  `FIELD_TIPSNAME` varchar(30) DEFAULT NULL COMMENT '字段提示文字',
  `FIELD_FIELDNAME` varchar(20) DEFAULT NULL COMMENT '字段名称',
  `FIELD_TYPE` int(11) DEFAULT NULL COMMENT '字段类型（如1.单行，2.多行，3.图片，等）',
  `FIELD_DEFAULT` varchar(250) DEFAULT NULL COMMENT '字段默认值',
  `FIELD_ISNULL` int(11) DEFAULT NULL COMMENT '字段是否为空 0:必填 1:可选',
  `FIELD_CMID` int(11) DEFAULT NULL COMMENT '关联内容模型表id',
  `FIELD_SORT` int(11) DEFAULT NULL COMMENT '字段排序',
  `FIELD_ISSEARCH` int(255) DEFAULT NULL COMMENT '字段是否支持后台搜索0：不支持，1：支持',
  PRIMARY KEY (`FIELD_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义内容模型关联字段表';

-- ----------------------------
-- Records of cms_content_mode_field
-- ----------------------------
INSERT INTO `cms_content_mode_field` VALUES ('4', '地址', 'address', '1', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('5', '电话', 'phone', '1', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('6', '联系人', 'linkman', '1', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('7', '手机', 'mobile', '1', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('8', '网址', 'website', '1', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('9', '邮箱', 'email', '1', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('10', '滚动图片', 'scrollpic', '7', '', '1', '3', null, '1');

-- ----------------------------
-- Table structure for `cms_content_model`
-- ----------------------------
DROP TABLE IF EXISTS `cms_content_model`;
CREATE TABLE `cms_content_model` (
  `CM_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `CM_TIPSNAME` varchar(30) NOT NULL COMMENT '表单提示文字',
  `CM_TABLENAME` varchar(20) NOT NULL COMMENT '表单名称',
  `CM_MANAGERID` int(11) NOT NULL COMMENT '表单管理员ID',
  PRIMARY KEY (`CM_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义模型表';

-- ----------------------------
-- Records of cms_content_model
-- ----------------------------
INSERT INTO `cms_content_model` VALUES ('2', 'contact', 'cms_contact_us_50', '50');
INSERT INTO `cms_content_model` VALUES ('3', '首页广告位', 'cms_first_ad_50', '50');

-- ----------------------------
-- Table structure for `cms_first_ad_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_first_ad_50`;
CREATE TABLE `cms_first_ad_50` (
  `basicId` int(11) NOT NULL,
  `scrollpic` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_first_ad_50
-- ----------------------------
INSERT INTO `cms_first_ad_50` VALUES ('104', '/upload/article/1549/1457075996955.png');
INSERT INTO `cms_first_ad_50` VALUES ('105', '/upload/article/1549/1457076131446.png');
INSERT INTO `cms_first_ad_50` VALUES ('106', '/upload/article/1549/1457076150869.png');
INSERT INTO `cms_first_ad_50` VALUES ('123', null);

-- ----------------------------
-- Table structure for `cms_search`
-- ----------------------------
DROP TABLE IF EXISTS `cms_search`;
CREATE TABLE `cms_search` (
  `SEARCH_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `SEARCH_NAME` varchar(20) NOT NULL COMMENT '搜索名称',
  `SEARCH_TEMPLETS` varchar(50) NOT NULL COMMENT '搜索结果模版',
  `SEARCH_WEBSITEID` int(11) NOT NULL COMMENT '搜索管理的应用id',
  PRIMARY KEY (`SEARCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自定义搜索表';

-- ----------------------------
-- Records of cms_search
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID（主键）',
  `COMMENT_COMMENTID` int(11) NOT NULL COMMENT '父评论ID',
  `COMMENT_CONTENT` text NOT NULL COMMENT '评论的内容',
  `COMMENT_PICTURE` varchar(300) DEFAULT NULL COMMENT '评论时发布的图片，可上传多张图片',
  `COMMENT_TIME` datetime NOT NULL COMMENT '评论时间',
  `COMMENT_TYPE` int(11) NOT NULL DEFAULT '2' COMMENT '评论的类型：1 匿名，2 公开，默认为公开',
  `COMMENT_PEOPLEID` int(11) DEFAULT '0' COMMENT '评论者ID，默认为非会员用户（即游客）',
  `COMMENT_POINTS` int(11) DEFAULT '0' COMMENT '评价打分（-1至5分）',
  `COMMENT_BASICID` int(11) NOT NULL COMMENT '（文章、商品...）绑定basicId（外键）',
  `COMMENT_APPID` int(11) DEFAULT NULL COMMENT '(文章、商品）绑定的应用编号',
  PRIMARY KEY (`COMMENT_ID`),
  KEY `index2` (`COMMENT_BASICID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `diy_form`
-- ----------------------------
DROP TABLE IF EXISTS `diy_form`;
CREATE TABLE `diy_form` (
  `DF_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `DF_TIPSNAME` varchar(30) NOT NULL COMMENT '自定义表单提示文字',
  `DF_TABLENAME` varchar(20) NOT NULL COMMENT '自定义表单表名',
  `DF_MANAGERID` int(11) NOT NULL COMMENT '自定义表单关联的关联员id',
  `DF_APPID` int(11) DEFAULT NULL COMMENT '自定义表单关联的应用编号',
  PRIMARY KEY (`DF_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义表单表';

-- ----------------------------
-- Records of diy_form
-- ----------------------------

-- ----------------------------
-- Table structure for `diy_form_field`
-- ----------------------------
DROP TABLE IF EXISTS `diy_form_field`;
CREATE TABLE `diy_form_field` (
  `DFF_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段自增长id',
  `DFF_TIPSNAME` varchar(30) DEFAULT NULL COMMENT '字段提示文字',
  `DFF_FIELDNAME` varchar(20) DEFAULT NULL COMMENT '字段名称',
  `DFF_TYPE` int(11) DEFAULT NULL COMMENT '字段类型（如1.单行，2.多行，3.图片，等）',
  `DFF_DEFAULT` varchar(250) DEFAULT NULL COMMENT '字段的默认值',
  `DFF_ISNULL` int(11) DEFAULT NULL COMMENT '字段是否为空',
  `DFF_SORT` int(11) DEFAULT NULL COMMENT '自定义表单的排序',
  `DFF_FORMID` int(11) DEFAULT NULL COMMENT '字段管理的表单id',
  PRIMARY KEY (`DFF_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义表单字段表';

-- ----------------------------
-- Records of diy_form_field
-- ----------------------------

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `MANAGER_ID` bigint(22) NOT NULL AUTO_INCREMENT COMMENT '管理员ID(主键)',
  `MANAGER_NAME` varchar(15) DEFAULT NULL COMMENT '管理员用户名',
  `MANAGER_NICKNAME` varchar(15) DEFAULT NULL COMMENT '管理员昵称',
  `MANAGER_PASSWORD` varchar(45) DEFAULT NULL COMMENT '管理员密码',
  `MANAGER_ROLEID` bigint(22) DEFAULT NULL COMMENT '角色编号',
  `MANAGER_PEOPLEID` bigint(22) DEFAULT '0' COMMENT '用户编号即商家编号',
  `MANAGER_TIME` datetime DEFAULT NULL COMMENT '管理员创建时间',
  PRIMARY KEY (`MANAGER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('50', 'msopen', 'msopen', '9d8622060de5f24937b60585c3f4d66b', '48', '0', '2015-09-18 11:54:36');

-- ----------------------------
-- Table structure for `manager_model_page`
-- ----------------------------
DROP TABLE IF EXISTS `manager_model_page`;
CREATE TABLE `manager_model_page` (
  `mmp_managerID` int(11) DEFAULT NULL COMMENT '自增长id',
  `mmp_modelID` int(11) DEFAULT NULL COMMENT '模块编号',
  `mmp_url` varchar(255) DEFAULT NULL COMMENT '默认后台显示的主界面'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台主界面管理表';

-- ----------------------------
-- Records of manager_model_page
-- ----------------------------

-- ----------------------------
-- Table structure for `model`
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `MODEL_ID` int(22) NOT NULL AUTO_INCREMENT COMMENT '模块自增长id',
  `MODEL_TITLE` varchar(150) DEFAULT NULL COMMENT '模块标题',
  `MODEL_CODE` varchar(255) DEFAULT NULL COMMENT '模块编码',
  `MODEL_MODELID` int(22) DEFAULT NULL COMMENT '模块的父模块id',
  `MODEL_URL` varchar(255) DEFAULT NULL COMMENT '模块连接地址',
  `MODEL_DATETIME` datetime DEFAULT NULL,
  `MODEL_ICON` varchar(120) DEFAULT NULL COMMENT '模块图标',
  `MODEL_MODELMANAGERID` int(11) DEFAULT NULL COMMENT '模块关联的关联员id',
  `MODEL_SORT` int(11) DEFAULT NULL COMMENT '模块的排序',
  `MODEL_ISMENU` int(1) DEFAULT NULL COMMENT '模块是否是菜单',
  PRIMARY KEY (`MODEL_ID`),
  UNIQUE KEY `SYS_C009201` (`MODEL_ID`),
  KEY `MODEL_MODELID` (`MODEL_MODELID`),
  KEY `model_code` (`MODEL_CODE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of model
-- ----------------------------
INSERT INTO `model` VALUES ('1', '内容管理', '02000000', '0', '', '2014-08-01 16:19:50', '&#xe77a;', '0', null, null);
INSERT INTO `model` VALUES ('4', '管理员管理', '01020000', '23', '/manager/manager/queryList.do', '2014-08-03 09:15:02', '', '0', null, null);
INSERT INTO `model` VALUES ('5', '角色管理', '01010000', '23', '/manager/role/queryList.do', '2014-08-03 09:15:14', '', '0', null, null);
INSERT INTO `model` VALUES ('7', '栏目管理', '02990000', '1', '/manager/cms/column/list.do', '2014-08-03 09:16:29', '', '0', null, null);
INSERT INTO `model` VALUES ('8', '文章管理', '02980000', '1', '/manager/cms/article/index.do', '2014-08-03 09:17:10', '', '0', null, null);
INSERT INTO `model` VALUES ('22', '会员中心', '07000000', '0', '', '2014-09-08 08:11:28', '&#xe6b6;', '0', null, '1');
INSERT INTO `model` VALUES ('23', '权限管理', '01000000', '0', '', '2014-09-08 08:12:22', '&#xe950;', '0', null, null);
INSERT INTO `model` VALUES ('33', '数据导入', '02090000', '0', '', '2014-10-07 11:32:07', '&#xe6e2;', '0', null, null);
INSERT INTO `model` VALUES ('34', '织梦数据导入', '02090100', '33', '/manager/cms/dede/dede.do', '2014-10-07 11:32:47', '', '0', null, null);
INSERT INTO `model` VALUES ('35', '自定义模型', '02060000', '84', '/manager/cms/contentModel/list.do', '2014-10-13 18:27:23', '', '0', null, null);
INSERT INTO `model` VALUES ('36', '自定义搜索', '02050000', '84', '/manager/cms/search/list.do', '2014-10-13 18:28:34', '', '0', null, null);
INSERT INTO `model` VALUES ('79', '生成器', '11000000', '0', '', '2014-12-18 11:36:16', '&#xe6cc;', '0', null, null);
INSERT INTO `model` VALUES ('80', '生成主页', '11010000', '79', '/manager/cms/generate/index.do', '2014-12-18 11:37:15', '', '0', null, null);
INSERT INTO `model` VALUES ('81', '生成栏目', '11020000', '79', '/manager/cms/generate/column.do', '2014-12-18 11:37:53', '', '0', null, null);
INSERT INTO `model` VALUES ('82', '生成文章', '11030000', '79', '/manager/cms/generate/article.do', '2014-12-18 11:38:38', '', '0', null, null);
INSERT INTO `model` VALUES ('84', '系统管理', '12000000', '0', '', '2014-12-18 18:30:24', '&#xe71f;', '0', null, null);
INSERT INTO `model` VALUES ('86', '应用设置', '12010000', '84', '/manager/app/-1/edit.do', '2014-12-18 18:31:59', '', '0', null, null);
INSERT INTO `model` VALUES ('88', '用户管理', '07020100', '22', '/manager/people/user/list.do', '2015-09-18 11:44:54', '', '0', null, '1');
INSERT INTO `model` VALUES ('89', '自定义页面', '12030100', '84', '/manager/modeltemplate/list.do', '2015-09-18 17:32:04', null, '0', null, null);
INSERT INTO `model` VALUES ('90', '自定义表单', '12050000', '84', '/manager/diy/form/list.do', '2015-09-18 22:06:02', null, null, null, null);
INSERT INTO `model` VALUES ('91', '模板管理', '12020000', '84', '/manager/cms/templet/queryTempletSkin.do', null, null, null, null, null);

-- ----------------------------
-- Table structure for `model_template`
-- ----------------------------
DROP TABLE IF EXISTS `model_template`;
CREATE TABLE `model_template` (
  `mt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `mt_modelID` int(11) DEFAULT NULL COMMENT '模块id',
  `mt_appID` int(11) DEFAULT NULL COMMENT '应用id',
  `mt_path` varchar(255) DEFAULT NULL COMMENT '自定义页面绑定模板的路径',
  `mt_title` varchar(255) DEFAULT NULL COMMENT '自定义页面标题',
  `mt_key` varchar(255) DEFAULT NULL COMMENT '自定义页面访问路径',
  PRIMARY KEY (`mt_id`),
  KEY `mt_key` (`mt_key`) USING BTREE,
  KEY `mt_appID` (`mt_appID`),
  KEY `mt_modelID` (`mt_modelID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='自定义页面表';

-- ----------------------------
-- Records of model_template
-- ----------------------------

-- ----------------------------
-- Table structure for `people`
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `PEOPLE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '增长自ID',
  `PEOPLE_PHONE` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `PEOPLE_NAME` varchar(30) DEFAULT NULL COMMENT '陆登账号',
  `PEOPLE_PASSWORD` varchar(50) DEFAULT NULL COMMENT '陆登密码',
  `PEOPLE_DATETIME` datetime NOT NULL COMMENT '注册时间',
  `PEOPLE_APP_ID` int(11) NOT NULL COMMENT '用户所属用户ID',
  `PEOPLE_MAIL` varchar(120) DEFAULT NULL COMMENT '用户邮箱',
  `PEOPLE_STATE` int(2) DEFAULT '0' COMMENT '用户状态',
  `PEOPLE_CODE` varchar(15) DEFAULT NULL COMMENT '随机验证码',
  `PEOPLE_CODESENDDATE` datetime DEFAULT NULL,
  `PEOPLE_PHONECHECK` int(1) DEFAULT NULL,
  `PEOPLE_MAILLCHECK` int(1) DEFAULT NULL,
  PRIMARY KEY (`PEOPLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='户用基础表';

-- ----------------------------
-- Records of people
-- ----------------------------

-- ----------------------------
-- Table structure for `people_user`
-- ----------------------------
DROP TABLE IF EXISTS `people_user`;
CREATE TABLE `people_user` (
  `PU_PEOPLE_ID` int(11) NOT NULL COMMENT '用户ID关联people表的（people_id）',
  `PU_REAL_NAME` varchar(50) DEFAULT NULL COMMENT '用户真实名称',
  `PU_ADDRESS` varchar(200) DEFAULT NULL COMMENT '用户地址',
  `PU_ICON` varchar(120) DEFAULT NULL COMMENT '用户头像图标地址',
  `PU_NICKNAME` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `PU_SEX` int(2) DEFAULT NULL COMMENT '用户性别(0.未知、1.男、2.女)',
  `PU_BIRTHDAY` date DEFAULT NULL COMMENT '用户出生年月日',
  `PU_CARD` varchar(255) DEFAULT NULL COMMENT '身份证',
  `PU_APP_ID` int(11) NOT NULL COMMENT '用户所属应用ID',
  PRIMARY KEY (`PU_PEOPLE_ID`),
  KEY `PU_PEOPLE_ID` (`PU_PEOPLE_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基础信息表';

-- ----------------------------
-- Records of people_user
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ROLE_ID` bigint(22) NOT NULL AUTO_INCREMENT COMMENT '角色ID，自增长',
  `ROLE_NAME` varchar(30) DEFAULT NULL COMMENT '角色名',
  `ROLE_MANAGERID` bigint(22) DEFAULT '0' COMMENT '角色管理员编号',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('48', 'msopen', '50');

-- ----------------------------
-- Table structure for `role_model`
-- ----------------------------
DROP TABLE IF EXISTS `role_model`;
CREATE TABLE `role_model` (
  `RM_MODELID` int(22) DEFAULT NULL COMMENT '模块编号',
  `RM_ROLEID` int(22) DEFAULT NULL COMMENT '角色编号',
  UNIQUE KEY `index` (`RM_MODELID`,`RM_ROLEID`),
  KEY `RM_MODELID` (`RM_MODELID`) USING BTREE,
  CONSTRAINT `role_model_ibfk_1` FOREIGN KEY (`RM_MODELID`) REFERENCES `model` (`MODEL_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色模块关联表';

-- ----------------------------
-- Records of role_model
-- ----------------------------
INSERT INTO `role_model` VALUES ('1', '48');
INSERT INTO `role_model` VALUES ('4', '48');
INSERT INTO `role_model` VALUES ('5', '48');
INSERT INTO `role_model` VALUES ('7', '48');
INSERT INTO `role_model` VALUES ('8', '48');
INSERT INTO `role_model` VALUES ('22', '48');
INSERT INTO `role_model` VALUES ('23', '48');
INSERT INTO `role_model` VALUES ('33', '48');
INSERT INTO `role_model` VALUES ('34', '48');
INSERT INTO `role_model` VALUES ('35', '48');
INSERT INTO `role_model` VALUES ('36', '48');
INSERT INTO `role_model` VALUES ('79', '48');
INSERT INTO `role_model` VALUES ('80', '48');
INSERT INTO `role_model` VALUES ('81', '48');
INSERT INTO `role_model` VALUES ('82', '48');
INSERT INTO `role_model` VALUES ('84', '48');
INSERT INTO `role_model` VALUES ('86', '48');
INSERT INTO `role_model` VALUES ('88', '48');
INSERT INTO `role_model` VALUES ('89', '48');
INSERT INTO `role_model` VALUES ('90', '48');
INSERT INTO `role_model` VALUES ('91', '48');

-- ----------------------------
-- Table structure for `system_main_page`
-- ----------------------------
DROP TABLE IF EXISTS `system_main_page`;
CREATE TABLE `system_main_page` (
  `smp_appID` int(11) DEFAULT NULL COMMENT '自增长ID',
  `smp_url` varchar(255) DEFAULT NULL COMMENT '默认后台显示的主界面',
  `smp_modelID` int(11) DEFAULT NULL COMMENT '模块编号',
  `smp_managerID` int(11) DEFAULT NULL COMMENT '管理员编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台主界面管理界面';

-- ----------------------------
-- Records of system_main_page
-- ----------------------------

-- ----------------------------
-- Table structure for `system_skin`
-- ----------------------------
DROP TABLE IF EXISTS `system_skin`;
CREATE TABLE `system_skin` (
  `ss_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `ss_loginpage` varchar(255) DEFAULT NULL COMMENT '登陆页面',
  `ss_backgroundimg` varchar(255) DEFAULT NULL COMMENT '背景图片',
  `ss_color` varchar(255) DEFAULT NULL COMMENT '字体颜色',
  `ss_css` varchar(255) DEFAULT NULL COMMENT '样式',
  `ss_datetime` datetime DEFAULT NULL COMMENT '生成时间',
  `ss_appID` int(11) DEFAULT NULL COMMENT '0后台发布大于０表示是应用自定义',
  `ss_categoryID` int(11) DEFAULT NULL COMMENT '主题分类',
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台皮肤管理表';

-- ----------------------------
-- Records of system_skin
-- ----------------------------

-- ----------------------------
-- Table structure for `system_skin_manager`
-- ----------------------------
DROP TABLE IF EXISTS `system_skin_manager`;
CREATE TABLE `system_skin_manager` (
  `ssm_managerID` int(11) NOT NULL DEFAULT '0' COMMENT '系统管理员编号',
  `ssm_system_skin_ID` int(11) DEFAULT NULL COMMENT '系统皮肤管理员编号',
  PRIMARY KEY (`ssm_managerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统皮肤与管理员关联表';

-- ----------------------------
-- Records of system_skin_manager
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_menu`
-- ----------------------------
DROP TABLE IF EXISTS `wx_menu`;
CREATE TABLE `wx_menu` (
  `MENU_ID` int(22) NOT NULL AUTO_INCREMENT COMMENT '菜单自增长编号',
  `MENU_APP_ID` int(22) DEFAULT NULL COMMENT '菜单所属商家编号',
  `MENU_TITLE` varchar(15) DEFAULT NULL COMMENT '单菜名称',
  `MENU_URL` text COMMENT '单菜链接地址',
  `MENU_STATUS` int(1) DEFAULT NULL COMMENT '菜单状态 0：不启用 1：启用',
  `MENU_MENU_ID` int(22) DEFAULT NULL COMMENT '父菜单编号',
  `MENU_TYPE` int(2) DEFAULT NULL COMMENT '菜单属性 0:链接 1:回复',
  `MENU_SORT` int(11) DEFAULT NULL,
  `MENU_STYLE` int(11) DEFAULT NULL,
  `MENU_OAUTH_ID` int(11) NOT NULL COMMENT '授权数据编号',
  `MENU_WEIXIN_ID` int(11) DEFAULT NULL COMMENT '微信编号',
  PRIMARY KEY (`MENU_ID`,`MENU_OAUTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信菜单';

-- ----------------------------
-- Records of wx_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_news`
-- ----------------------------
DROP TABLE IF EXISTS `wx_news`;
CREATE TABLE `wx_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_type` int(11) DEFAULT '2' COMMENT '素材类型　1.图文 2.文本 3.图片',
  `news_master_article_id` int(11) DEFAULT '0' COMMENT '图文素材时有效,主图文id',
  `news_child_article_ids` varchar(255) DEFAULT NULL COMMENT '图文素材有效',
  `news_datetime` datetime DEFAULT NULL,
  `news_App_Id` int(11) DEFAULT '0',
  `news_content` text,
  `news_category_ID` int(11) DEFAULT NULL,
  `news_weixin_ID` int(11) DEFAULT NULL COMMENT '微信编号',
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_news
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_passive_message`
-- ----------------------------
DROP TABLE IF EXISTS `wx_passive_message`;
CREATE TABLE `wx_passive_message` (
  `PM_WEIXIN_ID` int(11) NOT NULL COMMENT '微信编号',
  `PM_ID` int(22) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `PM_EVENT_ID` int(22) NOT NULL COMMENT '该回复属于的分类中的事件ID,1新关注2二维码扫描5未关注扫描二维码6点击事件4文本消息3二维码扫描&提示框',
  `PM_NEWS_ID` int(22) DEFAULT '0' COMMENT '回复的素材ID',
  `PM_MESSAGE_ID` int(11) NOT NULL COMMENT '对应自定义模板回复消息id,与PM_NEWS_ID只能同时存在一个',
  `PM_APP_ID` int(22) NOT NULL COMMENT '该回复所属的应用ID',
  `PM_REPLY_NUM` int(22) DEFAULT '0' COMMENT '被动回复的次数;为1时表示用户第一次被动响应消息,依次递增,当超出时取值为0的进行回复',
  `PM_KEY` varchar(300) DEFAULT NULL COMMENT '事件关键字',
  `PM_TYPE` int(2) NOT NULL COMMENT '回复属性:1.最终回复;达到迭代次数之后的回复消息,2.拓展回复迭代回复(优先迭代回复)',
  `PM_TAG` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信被动消息回复';

-- ----------------------------
-- Records of wx_passive_message
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_passive_message_log`
-- ----------------------------
DROP TABLE IF EXISTS `wx_passive_message_log`;
CREATE TABLE `wx_passive_message_log` (
  `PML_WEIXIN_ID` int(11) NOT NULL COMMENT '微信编号',
  `PML_ID` int(22) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `PML_APP_ID` int(22) NOT NULL COMMENT '关键的应用ID',
  `PML_PEOPLE_ID` int(22) NOT NULL COMMENT '关联用户ID',
  `PML_PASSIVE_MESSAGE_ID` int(22) NOT NULL COMMENT '关联被动回复消息ID',
  `PML_EVENT_ID` int(22) NOT NULL COMMENT '关联事件分类ID',
  `PML_TIME` datetime NOT NULL COMMENT '日志生成时间',
  `PML_KEY` varchar(300) DEFAULT NULL COMMENT '关键字',
  PRIMARY KEY (`PML_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1201 DEFAULT CHARSET=utf8 COMMENT='被动回复消息日志记录';

-- ----------------------------
-- Records of wx_passive_message_log
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_people`
-- ----------------------------
DROP TABLE IF EXISTS `wx_people`;
CREATE TABLE `wx_people` (
  `PW_WEIXIN_ID` int(11) NOT NULL,
  `PW_PEOPLE_ID` int(22) NOT NULL DEFAULT '0' COMMENT '关联用户基本信息ID',
  `PW_APP_ID` int(22) DEFAULT NULL COMMENT '用户所关注微信号的ID',
  `PW_OPEN_ID` varchar(100) DEFAULT NULL COMMENT '户用在微信中的唯一标识',
  `PW_PEOPLE_STATE` int(2) DEFAULT NULL,
  `PW_PROVINCE` varchar(50) DEFAULT NULL COMMENT '用户所在省份',
  `PW_CITY` varchar(50) DEFAULT NULL COMMENT '户用所在城市',
  `PW_HEADIMG_URL` varchar(500) DEFAULT NULL COMMENT '户用头像链接地址',
  PRIMARY KEY (`PW_PEOPLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_people
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_weixin`
-- ----------------------------
DROP TABLE IF EXISTS `wx_weixin`;
CREATE TABLE `wx_weixin` (
  `WEIXIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(22) NOT NULL COMMENT '微信公众号所属用户编号',
  `WEIXIN_NO` varchar(30) DEFAULT NULL COMMENT '信号号',
  `WEIXIN_ORIGIN_ID` varchar(30) DEFAULT NULL COMMENT '微信原始ID',
  `WEIXIN_NAME` varchar(30) NOT NULL COMMENT '众号公名称',
  `WEIXIN_TYPE` int(1) NOT NULL DEFAULT '0' COMMENT '信微号类型 0：服务号 1：订阅号',
  `WEIXIN_TOKEN` varchar(30) DEFAULT NULL COMMENT '信微token',
  `WEIXIN_IMAGE` varchar(100) DEFAULT NULL COMMENT '信微二维码图片',
  `WEIXIN_APPID` varchar(150) NOT NULL COMMENT '用应编号',
  `WEIXIN_APPSECRET` varchar(150) NOT NULL COMMENT '用应授权码',
  `WEIXIN_HEADIMG` varchar(150) DEFAULT NULL COMMENT '信微帐号头像',
  `WEIXIN_MCHID` varchar(255) DEFAULT NULL COMMENT '微信支付商户号',
  `WEIXIN_PAYKEY` varchar(255) DEFAULT NULL COMMENT '支付key',
  `WEIXIN_RROXY_URL` varchar(500) DEFAULT NULL COMMENT '微信内网测试地址',
  `WEIXIN_OAUTH_URL` varchar(200) DEFAULT NULL COMMENT '网页2.0授权地址,需要加http',
  PRIMARY KEY (`WEIXIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' 微信公众帐号';

-- ----------------------------
-- Records of wx_weixin
-- ----------------------------

-- ----------------------------
-- View structure for `v_article`
-- ----------------------------
DROP VIEW IF EXISTS `v_article`;
CREATE VIEW `v_article` AS select `cms_article`.`ARTICLE_BASICID` AS `ARTICLE_BASICID`,`basic`.`BASIC_ID` AS `BASIC_ID`,`basic`.`BASIC_CATEGORYID` AS `BASIC_CATEGORYID`,`basic`.`BASIC_TITLE` AS `BASIC_TITLE`,`basic`.`BASIC_DESCRIPTION` AS `BASIC_DESCRIPTION`,`basic`.`BASIC_THUMBNAILS` AS `BASIC_THUMBNAILS`,`basic`.`BASIC_HIT` AS `BASIC_HIT`,`basic`.`BASIC_DATETIME` AS `BASIC_DATETIME`,`basic`.`BASIC_UPDATETIME` AS `BASIC_UPDATETIME`,`basic`.`BASIC_PEOPLEID` AS `BASIC_PEOPLEID`,`cms_article`.`ARTICLE_AUTHOR` AS `ARTICLE_AUTHOR`,`cms_article`.`ARTICLE_CONTENT` AS `ARTICLE_CONTENT`,`cms_article`.`ARTICLE_TYPE` AS `ARTICLE_TYPE`,`cms_article`.`ARTICLE_SOURCE` AS `ARTICLE_SOURCE`,`cms_article`.`ARTICLE_URL` AS `ARTICLE_URL`,`cms_article`.`ARTICLE_KEYWORD` AS `ARTICLE_KEYWORD`,`cms_article`.`ARTICLE_FREEORDER` AS `ARTICLE_FREEORDER`,`cms_article`.`ARTICLE_WEBID` AS `ARTICLE_WEBID`,`cms_column`.`COLUMN_KEYWORD` AS `COLUMN_KEYWORD`,`cms_column`.`COLUMN_DESCRIP` AS `COLUMN_DESCRIP`,`cms_column`.`COLUMN_TYPE` AS `COLUMN_TYPE`,`cms_column`.`COLUMN_URL` AS `COLUMN_URL`,`cms_column`.`COLUMN_LISTURL` AS `COLUMN_LISTURL`,`cms_column`.`COLUMN_TENTMODELID` AS `COLUMN_TENTMODELID`,`cms_column`.`COLUMN_WEBSITEID` AS `COLUMN_WEBSITEID`,`cms_column`.`COLUMN_PATH` AS `column_path`,`cms_column`.`COLUMN_CONTENTMODELID` AS `COLUMN_CONTENTMODELID`,`category`.`CATEGORY_TITLE` AS `CATEGORY_TITLE`,`category`.`CATEGORY_APPID` AS `CATEGORY_APPID`,`cms_column`.`COLUMN_CATEGORYID` AS `COLUMN_CATEGORYID`,`category`.`CATEGORY_ID` AS `CATEGORY_ID`,`basic`.`BASIC_SORT` AS `BASIC_SORT` from (((`basic` join `cms_article` on((`basic`.`BASIC_ID` = `cms_article`.`ARTICLE_BASICID`))) join `cms_column` on((`basic`.`BASIC_CATEGORYID` = `cms_column`.`COLUMN_CATEGORYID`))) join `category` on((`cms_column`.`COLUMN_CATEGORYID` = `category`.`CATEGORY_ID`)));

-- ----------------------------
-- View structure for `v_people_user`
-- ----------------------------
DROP VIEW IF EXISTS `v_people_user`;
CREATE VIEW `v_people_user` AS select `people`.`PEOPLE_ID` AS `PEOPLE_ID`,`people`.`PEOPLE_PHONE` AS `PEOPLE_PHONE`,`people`.`PEOPLE_NAME` AS `PEOPLE_NAME`,`people`.`PEOPLE_PASSWORD` AS `PEOPLE_PASSWORD`,`people`.`PEOPLE_DATETIME` AS `PEOPLE_DATETIME`,`people`.`PEOPLE_APP_ID` AS `PEOPLE_APP_ID`,`people`.`PEOPLE_MAIL` AS `PEOPLE_MAIL`,`people`.`PEOPLE_STATE` AS `PEOPLE_STATE`,`people`.`PEOPLE_CODE` AS `PEOPLE_CODE`,`people`.`PEOPLE_CODESENDDATE` AS `PEOPLE_CODESENDDATE`,`people`.`PEOPLE_PHONECHECK` AS `PEOPLE_PHONECHECK`,`people`.`PEOPLE_MAILLCHECK` AS `PEOPLE_MAILLCHECK`,`people_user`.`PU_PEOPLE_ID` AS `PU_PEOPLE_ID`,`people_user`.`PU_REAL_NAME` AS `PU_REAL_NAME`,`people_user`.`PU_ADDRESS` AS `PU_ADDRESS`,`people_user`.`PU_ICON` AS `PU_ICON`,`people_user`.`PU_NICKNAME` AS `PU_NICKNAME`,`people_user`.`PU_SEX` AS `PU_SEX`,`people_user`.`PU_BIRTHDAY` AS `PU_BIRTHDAY`,`people_user`.`PU_CARD` AS `PU_CARD`,`people_user`.`PU_APP_ID` AS `PU_APP_ID` from (`people` left join `people_user` on((`people`.`PEOPLE_ID` = `people_user`.`PU_PEOPLE_ID`)));

-- ----------------------------
-- Procedure structure for `p_getAllChildren`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getAllChildren`;
DELIMITER //
CREATE PROCEDURE `p_getAllChildren`(`pId` int,`appId`int,`modelId` int)
BEGIN
	
   declare lev int;
   set lev=1;
   drop TEMPORARY table if exists tmp_category;    
   drop TEMPORARY table if exists tmp_category_child;    
   CREATE  TEMPORARY TABLE  tmp_category(category_id int(40),category_title varchar(50),category_categoryid varchar(40) ,lev INT);    
   CREATE  TEMPORARY TABLE  tmp_category_child(category_id int(40),category_title varchar(50),category_categoryid varchar(40) ,lev INT);    
   INSERT tmp_category SELECT category_id,category_title,category_categoryid,1 FROM `category` WHERE category_categoryid=pid and category_appid=appId and category_modelId=modelId;    
   INSERT tmp_category_child SELECT category_id,category_title,category_categoryid,1 FROM `category` WHERE category_categoryid=pid and category_appid=appId and category_modelId=modelId;   
  while ROW_COUNT()>0 
    do     set lev=lev+1; 
     INSERT tmp_category SELECT c.category_id,c.category_title,c.category_categoryid,lev  from category c  join tmp_category_child a on c.category_categoryid = a.category_id AND a.lev=lev-1 and c.category_appid=appId and c.category_modelId=modelId;
     INSERT tmp_category_child SELECT c.category_id,c.category_title,c.category_categoryid,lev  from category c  join tmp_category a on c.category_categoryid = a.category_id AND a.lev=lev-1 and c.category_appid=appId and c.category_modelId=modelId;
  end while ;    
  INSERT tmp_category SELECT c.category_id,c.category_title,c.category_categoryid,0 FROM category  c WHERE c.category_id=pid and c.category_appid=appId and c.category_modelId=modelId;   
  SELECT * FROM tmp_category;
END//
DELIMITER ;
