/*
Navicat MySQL Data Transfer

Source Server         : general-2
Source Server Version : 50154
Source Host           : localhost:3309
Source Database       : wedding-1

Target Server Type    : MYSQL
Target Server Version : 50154
File Encoding         : 65001

Date: 2016-03-14 14:11:21
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
INSERT INTO `app` VALUES ('1549', '婚纱摄影网站', 'http://localhost:8181', '/upload/app/1549/1456801727952.jpg', '摄影网站', 'support by yihuonet', 'wedding', '50', '摄影网站', null, 'm', null, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='基础表';

-- ----------------------------
-- Records of basic
-- ----------------------------
INSERT INTO `basic` VALUES ('47', '1', '', '/upload/article/1549/1456991918660.png', '0', '0', '2016-02-24 17:09:08', '2016-03-03 15:58:40', '0', '65', '1549', '8');
INSERT INTO `basic` VALUES ('48', '2', '', '/upload/article/1549/1456991926848.png', '0', '0', '2016-02-24 17:10:00', '2016-03-03 15:58:47', '0', '65', '1549', '8');
INSERT INTO `basic` VALUES ('49', '公司介绍', '', '/upload/article/1549/1456801523815.png', '0', '0', '2016-02-24 17:46:37', '2016-03-01 11:05:28', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('51', '最新推荐婚纱照', '', '/upload/article/1549/1456801547774.jpg', '0', '0', '2016-02-25 09:34:25', '2016-03-01 11:05:48', '0', '67', '1549', '8');
INSERT INTO `basic` VALUES ('64', '关于我们', '', '', '0', '0', '2016-02-29 15:50:41', '2016-03-14 14:02:10', '0', '63', '1549', '8');
INSERT INTO `basic` VALUES ('77', '9.999公斤赛菲尔万足金婚纱亮相深圳国际珠宝展', '', '', '0', '0', '2016-03-01 10:24:02', '2016-03-14 11:00:23', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('78', '拓片', '', '/upload/article/1549/1457922640567.png', '0', '0', '2016-03-01 13:32:44', '2016-03-14 10:30:41', '0', '75', '1549', '8');
INSERT INTO `basic` VALUES ('79', '版权信息请在描述里填写', '© 2014-2016 安徽易活网络技术有限公司（Anhui YiHuo Network Co.,Ltd.）  All Rights Reserved.', '', '0', '0', '2016-03-02 09:38:18', '2016-03-14 13:47:56', '0', '76', '1549', '8');
INSERT INTO `basic` VALUES ('80', '3', '', '/upload/article/1549/1456991934146.png', '0', '0', '2016-03-02 15:05:20', '2016-03-03 15:58:54', '0', '65', '1549', '8');
INSERT INTO `basic` VALUES ('81', '海景', '', '/upload/article/1549/1456993483045.png', '0', '0', '2016-03-03 16:17:57', '2016-03-03 16:24:43', '0', '70', '1549', '8');
INSERT INTO `basic` VALUES ('82', '沙滩', '', '/upload/article/1549/1456993576638.png', '0', '0', '2016-03-03 16:26:17', '2016-03-03 16:26:17', '0', '70', '1549', '8');
INSERT INTO `basic` VALUES ('83', '拥抱', '', '/upload/article/1549/1456993670585.png', '0', '0', '2016-03-03 16:27:53', '2016-03-03 16:27:53', '0', '70', '1549', '8');
INSERT INTO `basic` VALUES ('84', '亲吻', '', '/upload/article/1549/1456993681049.png', '0', '0', '2016-03-03 16:28:04', '2016-03-03 16:28:04', '0', '70', '1549', '8');
INSERT INTO `basic` VALUES ('85', '游艇', '', '/upload/article/1549/1456993689977.png', '0', '0', '2016-03-03 16:28:13', '2016-03-03 16:28:13', '0', '70', '1549', '8');
INSERT INTO `basic` VALUES ('86', '海鸥', '', '/upload/article/1549/1456993879577.png', '0', '0', '2016-03-03 16:31:23', '2016-03-03 16:31:23', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('87', '纯真', '', '/upload/article/1549/1456993890417.png', '0', '0', '2016-03-03 16:31:47', '2016-03-03 16:31:47', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('88', '欢乐', '', '/upload/article/1549/1456993935849.png', '0', '0', '2016-03-03 16:32:20', '2016-03-03 16:32:20', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('89', '戏水', '', '/upload/article/1549/1456993946482.png', '0', '0', '2016-03-03 16:32:30', '2016-03-03 16:32:30', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('90', '尊贵', '', '/upload/article/1549/1456993955847.png', '0', '0', '2016-03-03 16:32:39', '2016-03-04 09:50:17', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('91', '玲玲1', '', '/upload/article/1549/1456996183357.png', '0', '0', '2016-03-03 17:09:44', '2016-03-03 17:09:44', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('92', '玲玲2', '', '/upload/article/1549/1456996197632.png', '0', '0', '2016-03-03 17:09:58', '2016-03-03 17:09:58', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('93', '玲玲3', '', '/upload/article/1549/1456996209078.png', '0', '0', '2016-03-03 17:10:10', '2016-03-03 17:10:10', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('94', '玲玲4', '', '/upload/article/1549/1456996223903.png', '0', '0', '2016-03-03 17:10:24', '2016-03-03 17:10:24', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('95', '发展历程介绍', '', '', '0', '0', '2016-03-04 10:41:04', '2016-03-14 14:06:02', '0', '77', '1549', '8');
INSERT INTO `basic` VALUES ('96', '杜若溪婚纱写真曝光，东方雅典娜高贵复古', '', '/upload/article/1549/1457926671973.png', '0', '0', '2016-03-10 12:35:57', '2016-03-14 11:37:52', '0', '73', '0', '8');
INSERT INTO `basic` VALUES ('97', '韩国国民初恋裴秀智拍摄韩式婚纱写真，演绎唯美新娘', '', '/upload/article/1549/1457926678359.png', '0', '0', '2016-03-10 12:36:12', '2016-03-14 11:37:59', '0', '73', '0', '8');
INSERT INTO `basic` VALUES ('98', '玲玲5', '', '/upload/article/1549/1457922899321.png', '0', '0', '2016-03-14 10:35:00', '2016-03-14 10:35:00', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('99', '大连最美新娘，穿婚纱抢救溺水男子', '', '/upload/article/1549/1457926684636.png', '0', '0', '2016-03-14 10:56:09', '2016-03-14 11:38:05', '0', '73', '1549', '8');
INSERT INTO `basic` VALUES ('100', '张馨予威尼斯电影节拍摄写真大片，鱼尾礼服尽显俏皮可爱一面', '', '/upload/article/1549/1457926690707.png', '0', '0', '2016-03-14 10:56:31', '2016-03-14 11:38:12', '0', '73', '1549', '8');
INSERT INTO `basic` VALUES ('101', '2015 MTV音乐录影带大奖颁奖典礼火热举行，女星性感造型火辣吸睛', '', '/upload/article/1549/1457926697156.png', '0', '0', '2016-03-14 10:56:59', '2016-03-14 11:38:17', '0', '73', '1549', '8');
INSERT INTO `basic` VALUES ('102', '小马哥Marc Jacobs的另类奢华派对，令观众头疼不已 ', '', '/upload/article/1549/1457926706158.png', '0', '0', '2016-03-14 10:57:22', '2016-03-14 11:38:27', '0', '73', '1549', '8');
INSERT INTO `basic` VALUES ('103', '新锐女星屈菁菁婚纱写真曝光，唯美演绎新娘造型 ', '', '/upload/article/1549/1457926712979.png', '0', '0', '2016-03-14 10:57:44', '2016-03-14 11:38:34', '0', '73', '1549', '8');
INSERT INTO `basic` VALUES ('104', '莫文蔚晒幸福骑马婚纱照，专门前往南非拍摄 ', '', '/upload/article/1549/1457926719383.png', '0', '0', '2016-03-14 10:59:44', '2016-03-14 11:38:40', '0', '73', '1549', '8');
INSERT INTO `basic` VALUES ('105', '2016年纺织行业春季联展规模又将扩大', '', '', '0', '0', '2016-03-14 11:00:42', '2016-03-14 11:00:42', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('106', '香港婚纱展昨日隆重举行，名模Jessica C多款婚纱造型担任模特', '', '', '0', '0', '2016-03-14 11:01:06', '2016-03-14 11:01:06', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('107', '深圳夏季婚博会赞助乞丐穿婚纱，是真善举还是真炒作？', '', '', '0', '0', '2016-03-14 11:01:40', '2016-03-14 11:01:40', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('108', '南京上演“寻香记”婚纱秀，靓丽模特身着绚丽婚纱尽显华丽气质', '', '', '0', '0', '2016-03-14 11:01:58', '2016-03-14 11:01:58', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('109', '第28届上海国际婚纱摄影器材展上演华丽婚纱秀，众多品牌参展', '', '', '0', '0', '2016-03-14 11:02:18', '2016-03-14 11:02:25', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('110', '玲玲6', '', '/upload/article/1549/1457927777628.png', '0', '0', '2016-03-14 11:56:19', '2016-03-14 11:56:19', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('111', '玲玲7', '', '/upload/article/1549/1457927786761.png', '0', '0', '2016-03-14 11:56:27', '2016-03-14 11:56:27', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('112', '玲玲8', '', '/upload/article/1549/1457927795129.png', '0', '0', '2016-03-14 11:56:35', '2016-03-14 11:56:35', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('113', '玲玲9', '', '/upload/article/1549/1457927803420.png', '0', '0', '2016-03-14 11:56:44', '2016-03-14 11:56:44', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('114', '玲玲10', '', '/upload/article/1549/1457927811033.png', '0', '0', '2016-03-14 11:56:51', '2016-03-14 11:56:51', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('115', '玲玲11', '', '/upload/article/1549/1457927818297.png', '0', '0', '2016-03-14 11:56:58', '2016-03-14 11:56:58', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('116', '玲玲12', '', '/upload/article/1549/1457927826286.png', '0', '0', '2016-03-14 11:57:06', '2016-03-14 11:57:06', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('117', '玲玲14', '', '/upload/article/1549/1457927835705.png', '0', '0', '2016-03-14 11:57:16', '2016-03-14 11:57:16', '0', '72', '1549', '8');

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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('63', '关于我们', '0', '2016-02-24 16:56:21', '50', '7', '69', null, '1549', null);
INSERT INTO `category` VALUES ('64', '首页', '0', '2016-02-24 17:06:02', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('65', '幻灯片', '0', '2016-02-24 17:06:40', '50', '7', '64', null, '1549', null);
INSERT INTO `category` VALUES ('68', '作品展示', '0', '2016-02-29 14:48:26', '50', '7', '69', null, '1549', null);
INSERT INTO `category` VALUES ('69', 'head', '0', '2016-02-29 14:48:46', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('70', '内景', '0', '2016-02-29 14:49:40', '50', '7', '68', null, '1549', null);
INSERT INTO `category` VALUES ('71', '外景', '0', '2016-02-29 14:49:54', '50', '7', '68', null, '1549', null);
INSERT INTO `category` VALUES ('72', '客片展示', '0', '2016-02-29 15:21:33', '50', '7', '69', null, '1549', null);
INSERT INTO `category` VALUES ('73', '优惠活动', '0', '2016-02-29 16:01:37', '50', '7', '69', null, '1549', null);
INSERT INTO `category` VALUES ('74', '婚嫁百科', '0', '2016-02-29 16:01:58', '50', '7', '69', null, '1549', null);
INSERT INTO `category` VALUES ('75', '网站logo', '0', '2016-03-01 13:32:08', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('76', '版权', '0', '2016-03-02 09:37:22', '50', '7', '64', null, '1549', null);
INSERT INTO `category` VALUES ('77', '发展历程', '0', '2016-03-04 10:38:10', '50', '7', '0', null, '1549', null);

-- ----------------------------
-- Table structure for `cms_999_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_999_50`;
CREATE TABLE `cms_999_50` (
  `basicId` int(11) NOT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_999_50
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_abuout_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_abuout_50`;
CREATE TABLE `cms_abuout_50` (
  `basicId` int(11) NOT NULL,
  `banner` varchar(1000) DEFAULT NULL,
  `picture` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_abuout_50
-- ----------------------------
INSERT INTO `cms_abuout_50` VALUES ('76', null, null);
INSERT INTO `cms_abuout_50` VALUES ('77', '/upload/article/1549/1456380774140.png', '/upload/article/1549/1456380764946.png|/upload/article/1549/1456380765139.png');
INSERT INTO `cms_abuout_50` VALUES ('78', '/upload/article/1549/1456380774140.png', '/upload/article/1549/1456380764946.png|/upload/article/1549/1456380765139.png');

-- ----------------------------
-- Table structure for `cms_address_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_address_50`;
CREATE TABLE `cms_address_50` (
  `basicId` int(11) NOT NULL,
  `dizhi` varchar(220) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_address_50
-- ----------------------------
INSERT INTO `cms_address_50` VALUES ('67', '安徽省芜湖市镜湖区摩根100写字楼2403室');
INSERT INTO `cms_address_50` VALUES ('68', '安徽省芜湖市镜湖区摩根100写字楼2403室');
INSERT INTO `cms_address_50` VALUES ('69', '安徽省芜湖市镜湖区摩根100写字楼2403室');
INSERT INTO `cms_address_50` VALUES ('70', '安徽省芜湖市镜湖区摩根100写字楼2403室');
INSERT INTO `cms_address_50` VALUES ('72', '安徽省芜湖市镜湖区摩根100写字楼2403室');

-- ----------------------------
-- Table structure for `cms_ah_area_url_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_ah_area_url_50`;
CREATE TABLE `cms_ah_area_url_50` (
  `basicId` int(11) NOT NULL,
  `url` varchar(220) DEFAULT NULL,
  `phone` varchar(220) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_ah_area_url_50
-- ----------------------------
INSERT INTO `cms_ah_area_url_50` VALUES ('34', 'http://www.baidu.com', null);
INSERT INTO `cms_ah_area_url_50` VALUES ('35', 'http://www.baidu.com', null);
INSERT INTO `cms_ah_area_url_50` VALUES ('36', null, null);
INSERT INTO `cms_ah_area_url_50` VALUES ('37', null, null);
INSERT INTO `cms_ah_area_url_50` VALUES ('38', null, null);
INSERT INTO `cms_ah_area_url_50` VALUES ('39', null, null);
INSERT INTO `cms_ah_area_url_50` VALUES ('40', null, null);
INSERT INTO `cms_ah_area_url_50` VALUES ('41', null, null);
INSERT INTO `cms_ah_area_url_50` VALUES ('56', null, null);
INSERT INTO `cms_ah_area_url_50` VALUES ('57', null, null);

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
INSERT INTO `cms_article` VALUES ('51', '', null, 'c,', '', '/64/67\\51.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('49', '', null, '', '', '/64/66\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('47', '', null, 'f,', '', '/64/65\\47.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('48', '', null, 'f,', '', '/64/65\\48.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('83', '', null, '', '', '/69/68/70\\83.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('84', '', null, '', '', '/69/68/70\\84.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('85', '', null, '', '', '/69/68/70\\85.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('82', '', null, '', '', '/69/68/70\\82.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('81', '', null, '', '', '/69/68/70\\81.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('86', '', null, '', '', '/69/68/71\\86.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('87', '', null, '', '', '/69/68/71\\87.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('88', '', null, '', '', '/69/68/71\\88.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('89', '', null, '', '', '/69/68/71\\89.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('90', '', '<p><br/><img src=\"/../../upload/editor/1549//20160303/66201456995683405.png\" title=\"详情2.png\" style=\"float: left;\"/><img src=\"/../../upload/editor/1549//20160303/77271456995683983.png\" title=\"详情3.png\" style=\"float: left;\"/></p><p><img src=\"/../../upload/editor/1549//20160303/70141456995684501.png\" title=\"详情4.png\" style=\"float: left;\"/></p>', '', '', '/69/68/71\\90.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('94', '', null, '', '', '/69/72\\94.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('93', '', null, '', '', '/69/72\\93.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('92', '', null, '', '', '/69/72\\92.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('91', '', null, '', '', '/69/72\\91.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('64', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: ΢���ź�; line-height: 30px;\">某某摄影工作室是由摄影化妆行业多名技术领军人物合力创办！我们不拘泥于色彩或黑白.不拘泥于你笑或不笑.不拘泥于清晰或模糊.我们要为你留下的是稍纵即逝的0.018秒.我们只传递真实.幸福与感动！</span><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: ΢���ź�; line-height: 30px; white-space: normal;\"/><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: ΢���ź�; line-height: 30px; white-space: normal;\"/></p><p>安徽易活网络技术有限公司 &nbsp; &nbsp; &nbsp;</p><p>联系电话：0553-3833117 &nbsp;18715325230</p><p>QQ：714633931</p><p>官网：www.yihuonet.com &nbsp;&nbsp;</p><p>地址：安徽省芜湖市镜湖区观澜路1号滨江商务楼2406室</p><p><img src=\"/../../upload/editor/1549//20160314/52621457935328863.png\" title=\"关于我们.png\"/></p><p></p><p>&nbsp;</p><p>&nbsp;</p><p><br/></p>', '', '', '/69/63\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('77', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">深圳赛菲尔<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%8F%A0%E5%AE%9D/\" title=\"珠宝\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">珠宝</a>首饰有限公司总经理王卓宣布“万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>寻找最美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>·第二季”活动正式启动，赛菲尔9.999公斤万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>惊艳亮相。原国土资源部副 部长、中国<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%8F%A0%E5%AE%9D/\" title=\"珠宝\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">珠宝</a>玉石首饰行业<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%8D%8F%E4%BC%9A/\" title=\"协会\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">协会</a>会长徐德明先生，中国<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%8F%A0%E5%AE%9D/\" title=\"珠宝\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">珠宝</a>玉石首饰行业<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%8D%8F%E4%BC%9A/\" title=\"协会\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">协会</a>常务副会长兼秘书长孙凤民先生，深圳市黄金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%8F%A0%E5%AE%9D/\" title=\"珠宝\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">珠宝</a>首饰行业<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%8D%8F%E4%BC%9A/\" title=\"协会\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">协会</a>会长杨绍武先生莅临 发布会。聚光灯下，7位身着至纯万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>的模特闪耀全场。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"赛菲尔\" title=\"赛菲尔\" src=\"http://uploadnews.hsw365.com/20159/cc201509121125406417.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">赛菲尔万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>寻找最美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>·第二季活动正式启动</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"赛菲尔\" title=\"赛菲尔\" src=\"http://uploadnews.hsw365.com/20159/cc201509121126014117.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>寻找最美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>·第二季　　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 据介绍，这件耗时半年之久、集30余位顶级<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%8F%A0%E5%AE%9D/\" title=\"珠宝\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">珠宝</a>匠师心血而成的万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>，包括头冠在内，共耗费9.999公斤万足金，通过无焊料焊接技术让整件<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>纯度高达999.9‰，因为更纯所以更有价值，其工艺及收藏价值不可估量。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"赛菲尔\" title=\"赛菲尔\" src=\"http://uploadnews.hsw365.com/20159/cc201509121126279114.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">9.999公斤万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>一经亮相即引起极大轰动　　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9.999公斤万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>一经亮相即引起极大轰动，王卓总经理说：“能拥有一套完美的<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>是很多<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>的梦想，承载着她们对爱情、婚姻的无尽希望，赛菲尔万足金将万足金的至纯与<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>的美好寓意结合起来，精心<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E8%AE%BE%E8%AE%A1/\" title=\"设计\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">设计</a>打造出“万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>”，让黄金更纯更有价值，让婚姻更美更为长久，赛菲尔借助万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>发布誓将爱情进行到底。”</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"赛菲尔\" title=\"赛菲尔\" src=\"http://uploadnews.hsw365.com/20159/cc201509121126449723.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">将“纯粹”淋漓尽致的展现　　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 据悉，赛菲尔万足金“菲常喜事”、“花绘”系列也在深圳国际<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%8F%A0%E5%AE%9D/\" title=\"珠宝\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">珠宝</a>展隆重登场，寄托美好、至纯祝福的赛菲尔万足金系列，传递出的正是一种对待爱情、婚姻的态度，体现的也是一种纯粹。一直以来，因为耀眼、温暖，人们将拥有与人类文字历史一样悠久的黄金比作太阳，也因此黄金作为货币、作为饰品备受尊崇。开创无焊料焊接技术，赛菲尔打造出的是999.9‰含金量的万足金，赋予黄金更纯的标准。赛菲尔的<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E8%AE%BE%E8%AE%A1%E5%B8%88/\" title=\"设计师\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">设计师</a>精心打造9.999公斤万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>，就是希望将太阳的耀眼、温暖印刻在精美的赛菲尔万足金饰品上，让每一位佩戴者都能触摸到太阳的温暖，将“纯粹”淋漓尽致的展现，也感受至纯万足金的祝福。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"赛菲尔\" title=\"赛菲尔\" src=\"http://uploadnews.hsw365.com/20159/cc201509121127003735.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">细腻的<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E8%AE%BE%E8%AE%A1/\" title=\"设计\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">设计</a>风格、至纯的万足品质　　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 赛菲尔2014年9月启动第一季“万足金<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>寻找最美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>”活动，全国1500多家<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">品牌</a>专卖店同步启动，参加人数众多，“赛菲尔万足金”也因此成为年轻人结婚三金、五金的必选<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">品牌</a>。细腻的<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E8%AE%BE%E8%AE%A1/\" title=\"设计\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">设计</a>风格、至纯的万足品质以及其产品极具温暖的寓意，让每一个年轻人都渴望拥有一件赛菲尔万足金饰。2014年10月，赛菲尔万足金<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">品牌</a>盛典上，COCO李玟更亲自为评选出的最美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>颁发万足金饰。</p><p><br/></p>', '', '', '/69/74\\77.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('78', '', null, '', '', '/75\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('79', '', '<p>© 2014-2016 安徽易活网络技术有限公司（Anhui YiHuo Network Co.,Ltd.） &nbsp;All Rights Reserved. | 网站备案：皖ICP备14007008号-2</p><p>客服电话：4008-553-758 | E-mail:helpdesk@yihuonet.com</p>', '', '', '/64/76\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('80', '', null, '', '', '/64/65\\80.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('95', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: ΢���ź�; line-height: 30px;\">某某摄影工作室是由摄影化妆行业多名技术领军人物合力创办！我们不拘泥于色彩或黑白.不拘泥于你笑或不笑.不拘泥于清晰或模糊.我们要为你留下的是稍纵即逝的0.018秒.我们只传递真实.幸福与感动。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: ΢���ź�; line-height: 30px;\"><br/></span></p><p><img src=\"/../../upload/editor/1549//20160314/71011457935548450.png\" title=\"历程.png\"/></p>', '', '', '/77\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('96', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">日前，演员杜若溪为某杂志拍摄的一组<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A4%8D%E5%8F%A4/\" title=\"复古\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">复古</a>大片曝光网络，<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>中杜若溪姣好的身材与高贵大方的气质引人瞩目。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"杜若溪\" title=\"杜若溪\" src=\"http://uploadnews.hsw365.com/20160304/14570793654235303.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">杜若溪<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>曝光，东方雅典娜高贵<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A4%8D%E5%8F%A4/\" title=\"复古\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">复古</a></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"杜若溪婚纱\" title=\"杜若溪婚纱\" src=\"http://uploadnews.hsw365.com/20160304/14570793657039564.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">杜若溪<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>曝光，东方雅典娜高贵<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A4%8D%E5%8F%A4/\" title=\"复古\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">复古</a></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"婚纱写真\" title=\"婚纱写真\" src=\"http://uploadnews.hsw365.com/20160304/14570793679520277.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">杜若溪<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>曝光，东方雅典娜高贵<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A4%8D%E5%8F%A4/\" title=\"复古\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">复古</a></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"杜若溪\" title=\"杜若溪\" src=\"http://uploadnews.hsw365.com/20160304/14570793714863172.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">杜若溪<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>曝光，东方雅典娜高贵<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A4%8D%E5%8F%A4/\" title=\"复古\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">复古</a></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"杜若溪婚纱\" title=\"杜若溪婚纱\" src=\"http://uploadnews.hsw365.com/20160304/14570793768216200.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p><br/></p>', '', '', '/69/73\\96.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('97', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">韩国国民初恋裴秀智韩式<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>，演绎唯美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>。这组画报中秀智身穿<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E4%BC%98%E9%9B%85/\" title=\"优雅\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">优雅</a>的韩服，浓淡相宜的妆容映衬出秀智的古典美。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"韩国婚纱\" title=\"韩国婚纱\" src=\"http://uploadnews.hsw365.com/20151124/14483434341226011.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">韩国国民初恋裴秀智拍摄韩式<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>，演绎唯美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"韩式婚纱\" title=\"韩式婚纱\" src=\"http://uploadnews.hsw365.com/20151124/14483434356458250.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">韩国国民初恋裴秀智拍摄韩式<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>，演绎唯美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"裴秀智\" title=\"裴秀智\" src=\"http://uploadnews.hsw365.com/20151124/14483434374399412.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">韩国国民初恋裴秀智拍摄韩式<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>，演绎唯美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"裴秀智婚纱\" title=\"裴秀智婚纱\" src=\"http://uploadnews.hsw365.com/20151124/14483434373838560.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">韩国国民初恋裴秀智拍摄韩式<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>，演绎唯美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a></p><p><br/></p>', '', '', '/69/73\\97.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('98', '', null, '', '', '/69/72\\98.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('99', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px;\">&nbsp;9月21日上午，在大连石槽一海水浴场，一名男子在游泳时突发心脏病不幸溺水，被救上岸时已没有呼吸心跳，在附近拍<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1%E7%85%A7/\" title=\"婚纱照\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱照</a>的一位<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>见状，跪地抢救了20多分钟。</span></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px;\"></span>&nbsp;</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"最美新娘\" title=\"最美新娘\" src=\"http://uploadnews.hsw365.com/20150922/14428901636246351.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 据了解，<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>子名叫郭嫄嫄，是大连市中心医院心胸乳腺外二科的护士。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"新娘抢救溺水男子\" title=\"新娘抢救溺水男子\" src=\"http://uploadnews.hsw365.com/20150922/14428901641277784.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 虽然男子最后不幸身亡，但<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>的行为还是获得了在场的市民好评，大伙儿称赞她“最美<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>”。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"新娘穿婚纱救溺水男子\" title=\"新娘穿婚纱救溺水男子\" src=\"http://uploadnews.hsw365.com/20150922/14428901664880201.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 给这位“护士<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>”点赞。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"最美新娘\" title=\"最美新娘\" src=\"http://uploadnews.hsw365.com/20150922/14428901721634839.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">给这位“护士<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>”点赞。</p><p><br/></p>', '', '', '/69/73\\99.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('100', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">近日，张馨予曝光了一组在威尼斯电影节期间拍摄的<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>大片。身着鱼尾<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%A4%BC%E6%9C%8D/\" title=\"礼服\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">礼服</a>的张馨予大秀<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E4%BC%98%E9%9B%85/\" title=\"优雅\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">优雅</a>简洁赫本风，梳着麻花辫嘟嘴卖萌，让其显得格外俏皮可爱。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"张馨予\" title=\"张馨予\" src=\"http://uploadnews.hsw365.com/20159/cc201509071350419172.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">张馨予威尼斯电影节拍摄<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>大片，鱼尾<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%A4%BC%E6%9C%8D/\" title=\"礼服\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">礼服</a>尽显俏皮可爱一面</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"威尼斯电影节\" title=\"威尼斯电影节\" src=\"http://uploadnews.hsw365.com/20159/cc201509071351183534.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">张馨予威尼斯电影节拍摄<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>大片，鱼尾<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%A4%BC%E6%9C%8D/\" title=\"礼服\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">礼服</a>尽显俏皮可爱一面</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"张馨予写真\" title=\"张馨予写真\" src=\"http://uploadnews.hsw365.com/20159/cc201509071351248035.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">张馨予威尼斯电影节拍摄<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>大片，鱼尾<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%A4%BC%E6%9C%8D/\" title=\"礼服\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">礼服</a>尽显俏皮可爱一面</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"鱼尾礼服\" title=\"鱼尾礼服\" src=\"http://uploadnews.hsw365.com/20159/cc201509071351355317.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">张馨予威尼斯电影节拍摄<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>大片，鱼尾<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%A4%BC%E6%9C%8D/\" title=\"礼服\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">礼服</a>尽显俏皮可爱一面</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"礼服\" title=\"礼服\" src=\"http://uploadnews.hsw365.com/20159/cc201509071351412579.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">张馨予威尼斯电影节拍摄<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>大片，鱼尾<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%A4%BC%E6%9C%8D/\" title=\"礼服\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">礼服</a>尽显俏皮可爱一面</p><p><br/></p>', '', '', '/69/73\\100.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('101', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;2015 MTV音乐录影带大奖（VMA）颁奖礼于美国洛杉矶微软剧院举行，此次颁奖典礼可谓是星光熠熠、大腕云集。每年VMA最有看点的除了明星表演之外，<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%BA%A2%E6%AF%AF/\" title=\"红毯\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">红毯</a>也是吸睛无数。女星们的开胸造型性感火辣，秒杀了无数菲林。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"MTV音乐录影带大奖\" title=\"MTV音乐录影带大奖\" src=\"http://uploadnews.hsw365.com/20159/cc201509011035356727.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">MTV音乐录影带大奖群星云集</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"MTV颁奖典礼\" title=\"MTV颁奖典礼\" src=\"http://uploadnews.hsw365.com/20159/cc201509011035542707.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">Miley Cyrus</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"女星造型\" title=\"女星造型\" src=\"http://uploadnews.hsw365.com/20159/cc201509011036109993.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">Miley Cyrus</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"MTV音乐录影带大奖\" title=\"MTV音乐录影带大奖\" src=\"http://uploadnews.hsw365.com/20159/cc201509011036185784.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">Miley Cyrus</p><p><br/></p>', '', '', '/69/73\\101.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('102', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2016年春秋纽约<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%97%B6%E8%A3%85%E5%91%A8/\" title=\"时装周\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">时装周</a>已经慢慢逼近，就在这几天，在<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%97%B6%E5%B0%9A/\" title=\"时尚\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">时尚</a>圈有好人缘的“小马哥”马克·雅可布(Marc Jacobs)公布了纽约<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%97%B6%E5%B0%9A/\" title=\"时尚\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">时尚</a>周以后的派对着装要求。88个大写单词让看官们都感到头痛，毕竟一群身穿内衣外罩皮草，有着闪唇、万人迷发型和贵妇金包头发饰，踩着恨天高还要骑着白马的人出现在派对上，很难想象到时是怎样一种场景。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"小马哥\" title=\"小马哥\" src=\"http://uploadnews.hsw365.com/20158/cc201508311555186427.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 今年Marc Jacobs对外公布派对的着装具体完整要求是：内衣外罩皮草、闪唇、万人迷发型、闪亮珠片、贵妇金包头发饰、派翠西亚·赫斯特(Patty Hearst)共生解放军式装束、X战警罗刹女Rogue、阿拉伯灯笼裤、迷你裙配肌肉腿、漂眉、恨天高(严禁平底鞋)、镜面墨镜、骑白马入内。面对这些词汇，似乎无法想象到底应该穿着什么样的衣服进去Marc Jacobs的After Party才比较合适。这么一想不禁想到范冰冰2011年出席<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%B7%B4%E9%BB%8E/\" title=\"巴黎\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">巴黎</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%97%B6%E8%A3%85%E5%91%A8/\" title=\"时装周\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">时装周</a>的造型，似乎和Marc Jacobs本次提出的要求有相似之处。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"MarcJacobs\" title=\"MarcJacobs\" src=\"http://uploadnews.hsw365.com/20158/cc201508311555367189.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">Marc Jacobs的After Party也曾停办</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 对于每年的纽约<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%97%B6%E8%A3%85%E5%91%A8/\" title=\"时装周\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">时装周</a>来说，每个参加的<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">品牌</a>大部分都会举行一个狂欢派对，就像今年第一次参加的梅西百货，也在第一时间宣布将在纽约<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%97%B6%E8%A3%85%E5%91%A8/\" title=\"时装周\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">时装周</a>结束后举行相关的庆祝派对。而由Marc Jacobs举办的After Party，更是让那些<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%97%B6%E5%B0%9A/\" title=\"时尚\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">时尚</a>名流们趋之若鹜。但是，即使是这个最火的派对，在2008年由于受到金融风暴的波及效应，在不缺钱的情况下被迫停办。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"派对\" title=\"派对\" height=\"311\" width=\"550\" src=\"http://uploadnews.hsw365.com/20158/cc201508311556008262.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">Marc Jacobs的After Party也会拒绝人</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别以为Marc Jacobs的派对想进就能进，这一切还要看小马哥Marc Jacobs本人的意愿。2011年，美国著名女星林赛·罗韩就曾被小马哥拒之门外。事情源于那一年的林赛·罗韩刚刚出狱，但她并没有吸取教训，负面新闻依然环绕在她身上。于是在那一年的位于纽约曼哈顿奢华酒店Dream Downtown举办的<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%97%B6%E5%B0%9A/\" title=\"时尚\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">时尚</a>派对上，组委会正式发出指令禁止林赛参加。据说当时林赛·罗韩都已经去到排队门口了，但是门卫都不让她进去。最后林赛·罗韩甚至出动酒店老板Vikram Chatwal出来交涉，但还是没用。这么看来小马哥也是极具<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E4%B8%AA%E6%80%A7/\" title=\"个性\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">个性</a>。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"奢华派对\" title=\"奢华派对\" height=\"338\" width=\"550\" src=\"http://uploadnews.hsw365.com/20158/cc201508311556199669.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">Marc Jacobs是谁</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 马克·雅可布(Marc Jacobs)1963年4月9日出生于美国纽约，是美国知名服装<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E8%AE%BE%E8%AE%A1%E5%B8%88/\" title=\"设计师\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">设计师</a>。他的个人<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">品牌</a>Marc Jacobs和Marc by Marc Jacobs以及<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E8%AE%BE%E8%AE%A1/\" title=\"设计\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">设计</a>作品在时装界享有美誉。曾受到LV，&nbsp;<a target=\"_blank\" href=\"http://www.hsw365.com/article/Chanel/\" title=\"Chanel\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">Chanel</a>等众多<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">品牌</a>的邀请出任<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E8%AE%BE%E8%AE%A1/\" title=\"设计\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">设计</a>总监。2007年，在其个人网站上声明出柜。2013年，在经历了长达16年与LV的合作后，Jacobs正式离职。　　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 今年的纽约<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%97%B6%E8%A3%85%E5%91%A8/\" title=\"时装周\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">时装周</a>即将来临，而Marc Jacobs的After Party也即将掀开神秘的面纱，届时各路人马会如何演绎Marc Jacobs提出的88字要求，而Marc Jacobs本人又会如何演绎，我们不妨一起期待一下。</p><p><br/></p>', '', '', '/69/73\\102.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('103', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">日前，新锐女星屈菁菁为某杂志拍摄的一组<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>曝光。屈菁菁身着白色<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>披戴同色头纱，融合了镁光灯下的冷艳性感与生活中的阳光活泼，唯美演绎<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>造型。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"婚纱\" title=\"婚纱\" src=\"http://uploadnews.hsw365.com/20158/cc201508221016293416.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">新锐女星屈菁菁<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>曝光，唯美演绎<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>造型</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"屈菁菁\" title=\"屈菁菁\" src=\"http://uploadnews.hsw365.com/20158/cc201508221016425377.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">新锐女星屈菁菁<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>曝光，唯美演绎<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>造型</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"婚纱写真\" title=\"婚纱写真\" src=\"http://uploadnews.hsw365.com/20158/cc201508221016526374.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">新锐女星屈菁菁<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>曝光，唯美演绎<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>造型</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"唯美婚纱\" title=\"唯美婚纱\" src=\"http://uploadnews.hsw365.com/20158/cc201508221017052662.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">新锐女星屈菁菁<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>曝光，唯美演绎<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>造型</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"新娘婚纱\" title=\"新娘婚纱\" src=\"http://uploadnews.hsw365.com/20158/cc201508221017179049.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">新锐女星屈菁菁<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>曝光，唯美演绎<a target=\"_blank\" href=\"http://www.hsw365.com/dress/\" title=\"新娘\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">新娘</a>造型</p><p><br/></p>', '', '', '/69/73\\103.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('104', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">当下新人结婚流行拍马上<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>，莫文蔚结婚时曾前往南非拍摄一组马上<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%86%99%E7%9C%9F/\" title=\"写真\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">写真</a>，一起来看下！</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"莫文蔚婚纱照\" title=\"莫文蔚婚纱照\" src=\"http://uploadnews.hsw365.com/20158/cc201508211040225718.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">莫文蔚晒幸福骑马<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1%E7%85%A7/\" title=\"婚纱照\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱照</a>，专门前往南非拍摄</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"莫文蔚\" title=\"莫文蔚\" src=\"http://uploadnews.hsw365.com/20158/cc201508211040496889.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">莫文蔚晒幸福骑马<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1%E7%85%A7/\" title=\"婚纱照\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱照</a>，专门前往南非拍摄</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"骑马婚纱照\" title=\"骑马婚纱照\" src=\"http://uploadnews.hsw365.com/20158/cc201508211041022647.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">莫文蔚晒幸福骑马<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1%E7%85%A7/\" title=\"婚纱照\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱照</a>，专门前往南非拍摄</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"幸福婚纱照\" title=\"幸福婚纱照\" src=\"http://uploadnews.hsw365.com/20158/cc201508211041193348.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">莫文蔚晒幸福骑马<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1%E7%85%A7/\" title=\"婚纱照\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱照</a>，专门前往南非拍摄</p><p><br/></p>', '', '', '/69/73\\104.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('105', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;2016年3月，纺织行业<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%98%A5%E5%AD%A3/\" title=\"春季\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">春季</a>联展规模又将扩大，再添中国纺织工业联合会旗下的又一<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">品牌</a>展会——中国国际家用纺织品及辅料(春夏)博览会。这是中国家纺行业<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%8D%8F%E4%BC%9A/\" title=\"协会\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">协会</a>会长杨兆华8月26日在上海透露的消息。届时纺织行业五展联动、横纵联合，超大的展览规模，超强的展出阵容，将为中国纺织产业的转型发展提供坚实的基础。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"纺织行业\" title=\"纺织行业\" src=\"/../../upload/editor/1549//1457924441015.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 今年3月18日，伴随2015中国纺织工业联合会<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%98%A5%E5%AD%A3/\" title=\"春季\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">春季</a>联展大幕的开启，中国国际服装服饰博览会、中国国际纺织面料及辅料(春夏)博览会、中国国际纺织纱线(春夏)展览会和中国国际针织博览会，在新落成的国家会展中心(上海)实现了真正意义上的同期同地举办。杨兆华表示，2016年<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%98%A5%E5%AD%A3/\" title=\"春季\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">春季</a>家纺展加入纺织行业<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%98%A5%E5%AD%A3/\" title=\"春季\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">春季</a>大联展，对家纺行业发展意义重大，有利于引领家纺行业变中求进。杨兆华分析称，让<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E4%BA%A7%E4%B8%9A%E9%93%BE/\" title=\"产业链\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">产业链</a>上下游企业聚集于同一时空的展会是行业诉求，也是企业的切实需求。2016中国国际家用纺织品及辅料(春夏)博览会的重新启动，其本身就是调整与升级之后的再出发。　　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 杨兆华表示，<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%98%A5%E5%AD%A3/\" title=\"春季\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">春季</a>家纺展的重启首先是应对家纺产品不同采购季需求的需要。对于家纺产品来说，成品家纺与家居布艺的采购时机并不相同，<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%98%A5%E5%AD%A3/\" title=\"春季\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">春季</a>是成品家居的订货季，秋季则是家居布艺的订货季。因此，春秋两季的家纺展都为行业所需，但按采购定位不同各有侧重。今后，3月家纺展将以成品类为主，而8月将以布艺类为主。<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%98%A5%E5%AD%A3/\" title=\"春季\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">春季</a>展和秋季展实现定位区分后，不仅能满足不同时期的采购需求，还能进一步实现领域细分，针对性更强，使参展企业和采购商的商贸行为更加顺畅。　　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 杨兆华认为，<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%98%A5%E5%AD%A3/\" title=\"春季\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">春季</a>家纺展的重启，既是机遇，也是一次积极的探索和尝试，将更好地满足不同采购商的需求，承担不同细分市场的贸易桥梁，更集中地展现行业发展的最新成果。当前，纺织产业已形成明显的趋势性特征，从市场规模、渠道规模的扩张，演变为供应链、价值链的优化与完善。　　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 越来越多的企业正认识到，随着<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E4%BA%A7%E4%B8%9A%E9%93%BE/\" title=\"产业链\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">产业链</a>整体竞争时代的到来，<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E4%BA%A7%E4%B8%9A%E9%93%BE/\" title=\"产业链\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">产业链</a>上下游的互联互通和集成创新能力成为企业乃至整个行业能否在竞争中胜出的关键。从纤维、纱线到面料，再到服装、家纺，<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E4%BA%A7%E4%B8%9A%E9%93%BE/\" title=\"产业链\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">产业链</a>上下游企业寻求精准对接、携手共赢的需求正日益旺盛。中国国际家用纺织品及辅料(春夏)博览会重启并加入中纺联<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%98%A5%E5%AD%A3/\" title=\"春季\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">春季</a>联展，这不仅顺应了企业发展的需求，也契合了当前行业发展的阶段性特质。　　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 家纺展加入<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%98%A5%E5%AD%A3/\" title=\"春季\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">春季</a>联展，不仅可以让家纺企业向上下游寻求更好的联盟者，与服装、针织企业谋求跨界、研讨、合作与面料、纱线企业对接寻找最新、最能满足消费者需求的纺织原料，还能使展会产品进一步丰富，使商超、买手等综合采购群体更加便捷地采购，吸引更多<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%94%B5%E5%95%86/\" title=\"电商\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">电商</a>、贸易平台及媒体的关注与聚集。　　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 杨兆华表示，未来家纺展将进一步做好战略布局，定位愈加清晰，营销实现数字化，管理实现精细化，服务实现<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E4%B8%AA%E6%80%A7/\" title=\"个性\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">个性</a>化，集中有效资源，搭好平台，扎扎实实为企业服务，为行业转型注入活力。</p><p><br/></p>', '', '', '/69/74\\105.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('106', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">昨日第80届香港结婚节暨秋日<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>展会议展览中心隆重举行，香港名模Jessica C为<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>展担任模特儿，穿上多款<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>以<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E4%BC%98%E9%9B%85/\" title=\"优雅\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">优雅</a>等多个造型示人。<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>展期间，Jessica C在台上走秀时发生小意外疑被绊倒。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"香港婚纱展\" title=\"香港婚纱展\" src=\"http://uploadnews.hsw365.com/20158/cc201508311002571698.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">香港<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>展昨日隆重举行，名模Jessica C多款<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>造型担任模特</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"香港婚纱展\" title=\"香港婚纱展\" src=\"http://uploadnews.hsw365.com/20158/cc201508311003053151.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">香港<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>展昨日隆重举行，名模Jessica C多款<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>造型担任模特</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"香港婚纱展\" title=\"香港婚纱展\" src=\"http://uploadnews.hsw365.com/20158/cc201508311003132307.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">香港<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>展昨日隆重举行，名模Jessica C多款<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>造型担任模特</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"香港婚纱展\" title=\"香港婚纱展\" src=\"http://uploadnews.hsw365.com/20158/cc201508311003209797.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">香港<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>展昨日隆重举行，名模Jessica C多款<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>造型担任模特</p><p><br/></p>', '', '', '/69/74\\106.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('107', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">8月15日，深圳夏季<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E5%8D%9A%E4%BC%9A/\" title=\"婚博会\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚博会</a>正式拉开帷幕，鲜花、爱情、幸福是<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E5%8D%9A%E4%BC%9A/\" title=\"婚博会\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚博会</a>一贯的基调。几个衣着褴褛的乞丐突然出现，上演史上最虐心大战，显然让现场一对对衣着靓丽的年轻男女感到意外。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当记者接到爆料热线赶到现场，几个乞丐已经进入到<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E5%8D%9A%E4%BC%9A/\" title=\"婚博会\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚博会</a>场内。据爆料人告诉记者，上午11点半左右几个衣着褴褛，头发蓬松，身上脏兮兮的乞丐突然出现在<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E5%8D%9A%E4%BC%9A/\" title=\"婚博会\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚博会</a>购票队伍中，时不时向周围的人群讨钱，大部分人都躲得远远的，轮到他们买票时，明显感到不安，结果他们从破袋子里掏出一堆有点脏的硬币，售票员看了一眼脸都绿了，全是一毛、五毛的，双方引发争吵，最后售票员道歉并有好心商家免费赠送进场门票。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 听说他们还在里面，现场记者便快速进入寻找。刚进去就看到他们正与一家<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>机构工作人员在发生争执，商家以其形象不好，没有购买力拒绝为其服务，其中身材稍高说话带口吃的乞丐，情绪显得十分激动，争论不休，还时不时掏出一些硬币散落地上大声喊道：“我、有、钱!”。现场记者看到他们去了几家<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>机构都不让进去，他们显然失望了，女乞丐一直想离开。就在这时，在旁边看了许久的一个“包公”人物形象站了出来，询问乞丐男女，了解到原来是男乞丐想帮“乞丐女友”实现拍<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>的愿望所以才到<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E5%8D%9A%E4%BC%9A/\" title=\"婚博会\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚博会</a>上来。“包公”现场决定要为他们讨说法，并赞助这对“乞丐恋人”拍<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1%E7%85%A7/\" title=\"婚纱照\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱照</a>，如果商家再拒绝为他们提供服务，将会投诉他们。　</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"婚博会\" title=\"婚博会\" src=\"http://uploadnews.hsw365.com/20158/cc201508201427467727.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style=\"padding: 0px; margin: 0px;\">正义“包公”挺身讨说法!</strong></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “包公”现场掏出现金为这对“乞丐恋人”选的<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1%E7%85%A7/\" title=\"婚纱照\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱照</a>交钱，并提出现场为这对乞丐恋人证婚，围观人群也纷纷表示赞许。由于围观的人群越来越多，<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>商家也决定免费为这对“深圳最感人乞丐恋人”免费拍摄<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>，获得周围人群阵阵掌声。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"婚博会\" title=\"婚博会\" src=\"http://uploadnews.hsw365.com/20158/cc201508201428077128.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “渴望爱情是每个人的权利，即使乞丐也一样，不用得到所有人的祝福，能陪伴走过春夏秋冬的人才值得珍惜。”话语未落，乞丐恋人不禁潸然泪下，站在旁边的乞丐朋友也是泪眼汪汪，不时手抹眼角。现场的观众难免也深受感动，为他们送上祝福的掌声。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"婚博会\" title=\"婚博会\" src=\"http://uploadnews.hsw365.com/20158/cc201508201428211238.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 后来，记者现场采访了 “包公”，了解到“包公” 原是深圳一家叫华枫教育投资机构的负责人，此次扮包公活动本来只是打算做一次行为艺术，目的是为了向社会传递正确的婚姻观，反对拜金主义，反对婚外情。偶遇乞丐恋人为他们讨说法，赞助他们拍摄<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>，深知不能改变他们的生活和命运，带给他们的或许只是一个心愿的完成，或许只是以后想起这一刻时，觉得世界还未完全把他们遗弃。在此，记者也呼吁社会更多关注这一弱势群体，他们每天也有24小时，每年也受冬寒夏暑，人生也有四季，他们和我们一样，渴望爱情、渴望幸福。</p><p><br/></p>', '', '', '/69/74\\107.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('108', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;7月12日，一场主题为“寻香记”的<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%A4%BC/\" title=\"婚礼\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚礼</a>秀在南京香格里拉大酒店举行，身材高挑的中外靓丽模特身着数十款绚丽<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>惊艳亮相，在时下先进的氛围灯光渲染技术装扮的舞台上，尽情展现华丽与浪漫的气质。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"婚纱\" title=\"婚纱\" src=\"http://uploadnews.hsw365.com/20157/cc201507131135069501.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">南京上演“寻香记”<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>秀，靓丽模特身着绚丽<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>尽显华丽气质</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"婚纱\" title=\"婚纱\" src=\"http://uploadnews.hsw365.com/20157/cc201507131135204264.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">南京上演“寻香记”<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>秀，靓丽模特身着绚丽<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>尽显华丽气质</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"婚纱\" title=\"婚纱\" src=\"http://uploadnews.hsw365.com/20157/cc201507131135281284.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">南京上演“寻香记”<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>秀，靓丽模特身着绚丽<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>尽显华丽气质</p><p><br/></p>', '', '', '/69/74\\108.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('109', '', '<p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">3月2日，2015中国·上海国际<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%91%84%E5%BD%B1/\" title=\"摄影\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">摄影</a>器材展在上海开幕。中外知名<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"婚纱品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱品牌</a>纷纷前来参展，华丽典雅的<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E7%A4%BC%E6%9C%8D/\" title=\"礼服\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">礼服</a>吸引了众多观众的目光。</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"上海国际婚纱摄影器材展\" title=\"上海国际婚纱摄影器材展\" src=\"http://uploadnews.hsw365.com/20157/cc201507040958324507.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">第28届上海国际<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%91%84%E5%BD%B1/\" title=\"摄影\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">摄影</a>器材展上演华丽<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>秀，众多<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">品牌</a>参展</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"上海国际婚纱摄影器材展\" title=\"上海国际婚纱摄影器材展\" src=\"http://uploadnews.hsw365.com/20157/cc201507040958494686.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">第28届上海国际<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%91%84%E5%BD%B1/\" title=\"摄影\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">摄影</a>器材展上演华丽<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>秀，众多<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">品牌</a>参展</p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img alt=\"上海国际婚纱摄影器材展\" title=\"上海国际婚纱摄影器材展\" src=\"http://uploadnews.hsw365.com/20157/cc201507040959088389.jpg\" data-tag=\"img_1\" data-bd-imgshare-binded=\"1\" style=\"padding: 0px; margin: 0px; border-width: 0px;\"/></p><p style=\"padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 21px; font-family: Arial, 宋体; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\">第28届上海国际<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a><a target=\"_blank\" href=\"http://www.hsw365.com/article/%E6%91%84%E5%BD%B1/\" title=\"摄影\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">摄影</a>器材展上演华丽<a target=\"_blank\" href=\"http://www.hsw365.com/article/%E5%A9%9A%E7%BA%B1/\" title=\"婚纱\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">婚纱</a>秀，众多<a target=\"_blank\" href=\"http://brand.hsw365.com/\" title=\"品牌\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); text-decoration: none;\">品牌</a>参展</p><p><br/></p>', '', '', '/69/74\\109.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('110', '', null, '', '', '/69/72\\110.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('111', '', null, '', '', '/69/72\\111.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('112', '', null, '', '', '/69/72\\112.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('113', '', null, '', '', '/69/72\\113.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('114', '', null, '', '', '/69/72\\114.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('115', '', null, '', '', '/69/72\\115.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('116', '', null, '', '', '/69/72\\116.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('117', '', null, '', '', '/69/72\\117.html', '', '0', '1549');

-- ----------------------------
-- Table structure for `cms_class_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_class_50`;
CREATE TABLE `cms_class_50` (
  `basicId` int(11) NOT NULL,
  `school` varchar(220) DEFAULT NULL,
  `platform` varchar(220) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_class_50
-- ----------------------------
INSERT INTO `cms_class_50` VALUES ('2', '1', '2');
INSERT INTO `cms_class_50` VALUES ('3', '3', '2');
INSERT INTO `cms_class_50` VALUES ('4', '1', '4');
INSERT INTO `cms_class_50` VALUES ('5', '2', '1');
INSERT INTO `cms_class_50` VALUES ('6', '2', '1');
INSERT INTO `cms_class_50` VALUES ('7', '1', '1');

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
INSERT INTO `cms_column` VALUES ('63', '', 'about us', '2', 'about.htm', null, null, '1549', '/69/63', '0');
INSERT INTO `cms_column` VALUES ('64', '', '', '1', 'index.htm', 'index.htm', null, '1549', '/64', '0');
INSERT INTO `cms_column` VALUES ('65', '', '', '1', 'index.htm', 'index.htm', null, '1549', '/64/65', '0');
INSERT INTO `cms_column` VALUES ('68', '', 'showcase', '1', 'imageDetails.htm', 'show.htm', null, '1549', '/69/68', '0');
INSERT INTO `cms_column` VALUES ('69', '', '', '1', 'index.htm', 'index.htm', null, '1549', '/69', '0');
INSERT INTO `cms_column` VALUES ('70', '', '', '1', 'imageDetails.htm', 'show.htm', null, '1549', '/69/68/70', '0');
INSERT INTO `cms_column` VALUES ('71', '', '', '1', 'imageDetails.htm', 'show.htm', null, '1549', '/69/68/71', '0');
INSERT INTO `cms_column` VALUES ('72', '', 'guest', '1', 'imageDetails.htm', 'client.htm', null, '1549', '/69/72', '0');
INSERT INTO `cms_column` VALUES ('73', '', 'youhui', '1', 'details.htm', 'youtui.htm', null, '1549', '/69/73', '0');
INSERT INTO `cms_column` VALUES ('74', '', 'baike', '1', 'details.htm', 'book.htm', null, '1549', '/69/74', '0');
INSERT INTO `cms_column` VALUES ('75', '', '', '2', 'index.htm', null, null, '1549', '/75', '0');
INSERT INTO `cms_column` VALUES ('76', '', '', '2', 'foot.htm', null, null, '1549', '/64/76', '0');
INSERT INTO `cms_column` VALUES ('77', '', '', '2', 'development.htm', null, null, '1549', '/77', '0');

-- ----------------------------
-- Table structure for `cms_company_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_company_50`;
CREATE TABLE `cms_company_50` (
  `basicId` int(11) NOT NULL,
  `gongsidizhi` varchar(220) DEFAULT NULL,
  `lianxi` varchar(220) DEFAULT NULL,
  `youxiang` varchar(220) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_company_50
-- ----------------------------
INSERT INTO `cms_company_50` VALUES ('78', '我我的我的', null, null);
INSERT INTO `cms_company_50` VALUES ('85', '安徽省芜湖市镜湖区滨江商务楼2406室', '0553-3833517', 'beifen.ni@yihuonet.com');

-- ----------------------------
-- Table structure for `cms_contactus_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_contactus_50`;
CREATE TABLE `cms_contactus_50` (
  `basicId` int(11) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `email` varchar(220) DEFAULT NULL,
  `phone` varchar(220) DEFAULT NULL,
  `website` varchar(220) DEFAULT NULL,
  `hours` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_contactus_50
-- ----------------------------
INSERT INTO `cms_contactus_50` VALUES ('198', '安徽省芜湖市镜湖区观澜路一号\r\n滨江商务楼2406室', '714633931@qq.com', '18715325230', 'http：//www.yihuonet.com', '9：00~18：00\r\n全年无休，欢迎光临');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义内容模型关联字段表';

-- ----------------------------
-- Records of cms_content_mode_field
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义模型表';

-- ----------------------------
-- Records of cms_content_model
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_generalize_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_generalize_50`;
CREATE TABLE `cms_generalize_50` (
  `basicId` int(11) NOT NULL,
  `tuiguang` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_generalize_50
-- ----------------------------
INSERT INTO `cms_generalize_50` VALUES ('67', null);
INSERT INTO `cms_generalize_50` VALUES ('68', null);
INSERT INTO `cms_generalize_50` VALUES ('69', null);
INSERT INTO `cms_generalize_50` VALUES ('70', null);
INSERT INTO `cms_generalize_50` VALUES ('71', '/upload/article/1549/1456713266886.png');

-- ----------------------------
-- Table structure for `cms_hours_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_hours_50`;
CREATE TABLE `cms_hours_50` (
  `basicId` int(11) NOT NULL,
  `hours` varchar(220) DEFAULT NULL,
  `phone` varchar(220) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `generalize` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_hours_50
-- ----------------------------
INSERT INTO `cms_hours_50` VALUES ('66', '9：00-24：00', '0553-3833517', null, null);

-- ----------------------------
-- Table structure for `cms_picture_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_picture_50`;
CREATE TABLE `cms_picture_50` (
  `basicId` int(11) NOT NULL,
  `picture` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_picture_50
-- ----------------------------
INSERT INTO `cms_picture_50` VALUES ('116', '/upload/article/1549/1452763369811.jpg');
INSERT INTO `cms_picture_50` VALUES ('117', '/upload/article/1549/1452763361929.jpg');
INSERT INTO `cms_picture_50` VALUES ('118', '/upload/article/1549/1452763354094.jpg');
INSERT INTO `cms_picture_50` VALUES ('119', '/upload/article/1549/1452763345695.jpg');
INSERT INTO `cms_picture_50` VALUES ('120', '/upload/article/1549/1452759887048.jpg|/upload/article/1549/1452759887110.jpg|/upload/article/1549/1452759887198.jpg');
INSERT INTO `cms_picture_50` VALUES ('121', null);
INSERT INTO `cms_picture_50` VALUES ('122', '/upload/article/1549/1453090255221.jpg|/upload/article/1549/1453090260738.jpg');
INSERT INTO `cms_picture_50` VALUES ('123', '/upload/article/1549/1452763312400.jpg');
INSERT INTO `cms_picture_50` VALUES ('124', '/upload/article/1549/1453102589158.jpg|/upload/article/1549/1453102593191.jpg|/upload/article/1549/1453102593369.jpg');
INSERT INTO `cms_picture_50` VALUES ('185', null);
INSERT INTO `cms_picture_50` VALUES ('186', '/upload/article/1549/1453261566084.jpg|/upload/article/1549/1453261566178.jpg|/upload/article/1549/1453261566269.jpg');
INSERT INTO `cms_picture_50` VALUES ('187', null);
INSERT INTO `cms_picture_50` VALUES ('188', null);
INSERT INTO `cms_picture_50` VALUES ('201', '/upload/article/1549/1454486895201.png|/upload/article/1549/1454486899162.png|/upload/article/1549/1454486899213.png');
INSERT INTO `cms_picture_50` VALUES ('202', null);
INSERT INTO `cms_picture_50` VALUES ('203', null);
INSERT INTO `cms_picture_50` VALUES ('204', null);
INSERT INTO `cms_picture_50` VALUES ('205', null);
INSERT INTO `cms_picture_50` VALUES ('206', null);
INSERT INTO `cms_picture_50` VALUES ('207', null);

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
-- Table structure for `cms_tetle_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_tetle_50`;
CREATE TABLE `cms_tetle_50` (
  `basicId` int(11) NOT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_tetle_50
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
-- Table structure for `diy_50_message`
-- ----------------------------
DROP TABLE IF EXISTS `diy_50_message`;
CREATE TABLE `diy_50_message` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT NULL COMMENT 'CURRENT_TIMESTAMP',
  `fromID` int(11) DEFAULT NULL,
  `useName` varchar(220) DEFAULT NULL,
  `Emai` varchar(220) DEFAULT NULL,
  `details` varchar(220) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diy_50_message
-- ----------------------------
INSERT INTO `diy_50_message` VALUES ('1', '2016-01-14 09:26:20', '2', '我们', '5452', '3333');
INSERT INTO `diy_50_message` VALUES ('2', '2016-01-14 09:26:24', '2', null, null, null);
INSERT INTO `diy_50_message` VALUES ('3', '2016-01-14 09:26:26', '2', null, null, null);
INSERT INTO `diy_50_message` VALUES ('4', '2016-01-14 09:26:28', '2', null, null, null);
INSERT INTO `diy_50_message` VALUES ('5', '2016-01-14 09:27:46', '2', '我', '我', '我');
INSERT INTO `diy_50_message` VALUES ('6', '2016-01-14 09:27:50', '2', null, null, null);
INSERT INTO `diy_50_message` VALUES ('7', '2016-01-14 09:29:59', '2', null, null, null);
INSERT INTO `diy_50_message` VALUES ('8', '2016-01-14 09:36:32', '2', '我', '我', '我');
INSERT INTO `diy_50_message` VALUES ('9', '2016-01-14 09:36:35', '2', null, null, null);
INSERT INTO `diy_50_message` VALUES ('10', '2016-01-14 09:36:47', '2', null, null, null);
INSERT INTO `diy_50_message` VALUES ('11', '2016-01-14 09:36:51', '2', null, null, null);
INSERT INTO `diy_50_message` VALUES ('12', '2016-01-14 09:37:07', '2', '我', '我', '我');
INSERT INTO `diy_50_message` VALUES ('13', '2016-01-14 09:37:21', '2', '你', '你', '你');
INSERT INTO `diy_50_message` VALUES ('14', '2016-01-14 09:41:00', '2', '他', '他', '啊');
INSERT INTO `diy_50_message` VALUES ('15', '2016-01-14 09:41:23', '2', '0', '0', '0');
INSERT INTO `diy_50_message` VALUES ('16', '2016-01-14 09:44:35', '2', '3', '3', '3');
INSERT INTO `diy_50_message` VALUES ('17', '2016-01-14 09:45:51', '2', '5', '5', '5');
INSERT INTO `diy_50_message` VALUES ('18', '2016-01-14 09:46:03', '2', '5', '5', '5');
INSERT INTO `diy_50_message` VALUES ('19', '2016-01-14 09:47:03', '2', '6', '6', '6');
INSERT INTO `diy_50_message` VALUES ('20', '2016-01-14 09:49:41', '2', '7', '7', '7');
INSERT INTO `diy_50_message` VALUES ('21', '2016-01-14 09:58:13', '2', '55', '55', '22');
INSERT INTO `diy_50_message` VALUES ('22', '2016-01-14 09:59:28', '2', '2', '2', '2');
INSERT INTO `diy_50_message` VALUES ('23', '2016-01-14 10:00:58', '2', '撒旦撒', 'ffd', '订单数');
INSERT INTO `diy_50_message` VALUES ('24', '2016-01-14 10:05:59', '2', 'ds', 'dsss', '但事实生生世世');
INSERT INTO `diy_50_message` VALUES ('25', '2016-01-14 10:06:31', '2', '第三方的手', '撒打发士大夫', '斯蒂芬森大幅杀跌 ');
INSERT INTO `diy_50_message` VALUES ('26', '2016-01-14 18:03:05', '2', null, null, null);
INSERT INTO `diy_50_message` VALUES ('27', '2016-01-15 11:33:20', '2', 'w', '问问', '我');
INSERT INTO `diy_50_message` VALUES ('28', '2016-01-18 10:42:47', '2', '21332', '3232', '3232');
INSERT INTO `diy_50_message` VALUES ('29', '2016-01-18 10:44:30', '2', '倪贝芬', '714633931@qq.com', '你好，我是倪贝芬，');

-- ----------------------------
-- Table structure for `diy_50_msg`
-- ----------------------------
DROP TABLE IF EXISTS `diy_50_msg`;
CREATE TABLE `diy_50_msg` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT NULL COMMENT 'CURRENT_TIMESTAMP',
  `fromID` int(11) DEFAULT NULL,
  `name` varchar(220) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diy_50_msg
-- ----------------------------
INSERT INTO `diy_50_msg` VALUES ('1', '2015-10-30 10:02:03', '1', '淡淡的', '得到放松放松地方');

-- ----------------------------
-- Table structure for `diy_50_user`
-- ----------------------------
DROP TABLE IF EXISTS `diy_50_user`;
CREATE TABLE `diy_50_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT NULL COMMENT 'CURRENT_TIMESTAMP',
  `fromID` int(11) DEFAULT NULL,
  `yourname` text,
  `mail` varchar(220) DEFAULT NULL,
  `userphone` varchar(220) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diy_50_user
-- ----------------------------
INSERT INTO `diy_50_user` VALUES ('1', '2016-02-25 16:51:36', '2', null, null, null);
INSERT INTO `diy_50_user` VALUES ('2', '2016-02-25 16:51:49', '2', null, '545290234', '532656');
INSERT INTO `diy_50_user` VALUES ('3', '2016-02-29 10:30:55', '2', null, '单色恶的的的', '18715325230');
INSERT INTO `diy_50_user` VALUES ('4', '2016-02-29 10:31:02', '2', null, '阿二位', '热热热舞');

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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_article` AS select `cms_article`.`ARTICLE_BASICID` AS `ARTICLE_BASICID`,`basic`.`BASIC_ID` AS `BASIC_ID`,`basic`.`BASIC_CATEGORYID` AS `BASIC_CATEGORYID`,`basic`.`BASIC_TITLE` AS `BASIC_TITLE`,`basic`.`BASIC_DESCRIPTION` AS `BASIC_DESCRIPTION`,`basic`.`BASIC_THUMBNAILS` AS `BASIC_THUMBNAILS`,`basic`.`BASIC_HIT` AS `BASIC_HIT`,`basic`.`BASIC_DATETIME` AS `BASIC_DATETIME`,`basic`.`BASIC_UPDATETIME` AS `BASIC_UPDATETIME`,`basic`.`BASIC_PEOPLEID` AS `BASIC_PEOPLEID`,`cms_article`.`ARTICLE_AUTHOR` AS `ARTICLE_AUTHOR`,`cms_article`.`ARTICLE_CONTENT` AS `ARTICLE_CONTENT`,`cms_article`.`ARTICLE_TYPE` AS `ARTICLE_TYPE`,`cms_article`.`ARTICLE_SOURCE` AS `ARTICLE_SOURCE`,`cms_article`.`ARTICLE_URL` AS `ARTICLE_URL`,`cms_article`.`ARTICLE_KEYWORD` AS `ARTICLE_KEYWORD`,`cms_article`.`ARTICLE_FREEORDER` AS `ARTICLE_FREEORDER`,`cms_article`.`ARTICLE_WEBID` AS `ARTICLE_WEBID`,`cms_column`.`COLUMN_KEYWORD` AS `COLUMN_KEYWORD`,`cms_column`.`COLUMN_DESCRIP` AS `COLUMN_DESCRIP`,`cms_column`.`COLUMN_TYPE` AS `COLUMN_TYPE`,`cms_column`.`COLUMN_URL` AS `COLUMN_URL`,`cms_column`.`COLUMN_LISTURL` AS `COLUMN_LISTURL`,`cms_column`.`COLUMN_TENTMODELID` AS `COLUMN_TENTMODELID`,`cms_column`.`COLUMN_WEBSITEID` AS `COLUMN_WEBSITEID`,`cms_column`.`COLUMN_PATH` AS `column_path`,`cms_column`.`COLUMN_CONTENTMODELID` AS `COLUMN_CONTENTMODELID`,`category`.`CATEGORY_TITLE` AS `CATEGORY_TITLE`,`category`.`CATEGORY_APPID` AS `CATEGORY_APPID`,`cms_column`.`COLUMN_CATEGORYID` AS `COLUMN_CATEGORYID`,`category`.`CATEGORY_ID` AS `CATEGORY_ID`,`basic`.`BASIC_SORT` AS `BASIC_SORT` from (((`basic` join `cms_article` on((`basic`.`BASIC_ID` = `cms_article`.`ARTICLE_BASICID`))) join `cms_column` on((`basic`.`BASIC_CATEGORYID` = `cms_column`.`COLUMN_CATEGORYID`))) join `category` on((`cms_column`.`COLUMN_CATEGORYID` = `category`.`CATEGORY_ID`)));

-- ----------------------------
-- View structure for `v_people_user`
-- ----------------------------
DROP VIEW IF EXISTS `v_people_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_people_user` AS select `people`.`PEOPLE_ID` AS `PEOPLE_ID`,`people`.`PEOPLE_PHONE` AS `PEOPLE_PHONE`,`people`.`PEOPLE_NAME` AS `PEOPLE_NAME`,`people`.`PEOPLE_PASSWORD` AS `PEOPLE_PASSWORD`,`people`.`PEOPLE_DATETIME` AS `PEOPLE_DATETIME`,`people`.`PEOPLE_APP_ID` AS `PEOPLE_APP_ID`,`people`.`PEOPLE_MAIL` AS `PEOPLE_MAIL`,`people`.`PEOPLE_STATE` AS `PEOPLE_STATE`,`people`.`PEOPLE_CODE` AS `PEOPLE_CODE`,`people`.`PEOPLE_CODESENDDATE` AS `PEOPLE_CODESENDDATE`,`people`.`PEOPLE_PHONECHECK` AS `PEOPLE_PHONECHECK`,`people`.`PEOPLE_MAILLCHECK` AS `PEOPLE_MAILLCHECK`,`people_user`.`PU_PEOPLE_ID` AS `PU_PEOPLE_ID`,`people_user`.`PU_REAL_NAME` AS `PU_REAL_NAME`,`people_user`.`PU_ADDRESS` AS `PU_ADDRESS`,`people_user`.`PU_ICON` AS `PU_ICON`,`people_user`.`PU_NICKNAME` AS `PU_NICKNAME`,`people_user`.`PU_SEX` AS `PU_SEX`,`people_user`.`PU_BIRTHDAY` AS `PU_BIRTHDAY`,`people_user`.`PU_CARD` AS `PU_CARD`,`people_user`.`PU_APP_ID` AS `PU_APP_ID` from (`people` left join `people_user` on((`people`.`PEOPLE_ID` = `people_user`.`PU_PEOPLE_ID`)));

-- ----------------------------
-- Procedure structure for `p_getAllChildren`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getAllChildren`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_getAllChildren`(`pId` int,`appId`int,`modelId` int)
BEGIN
	
   declare lev int;
   set lev=1;
   drop TEMPORARY table if exists tmp_category;    
   drop TEMPORARY table if exists tmp_category_child;    
   CREATE  TEMPORARY TABLE  tmp_category(category_id int(40),category_title varchar(50),category_categoryid varchar(40) ,lev INT) engine=memory;    
   CREATE  TEMPORARY TABLE  tmp_category_child(category_id int(40),category_title varchar(50),category_categoryid varchar(40) ,lev INT) engine=memory;    
   INSERT tmp_category SELECT category_id,category_title,category_categoryid,1 FROM `category` WHERE category_categoryid=pid and category_appid=appId and category_modelId=modelId;    
   INSERT tmp_category_child SELECT category_id,category_title,category_categoryid,1 FROM `category` WHERE category_categoryid=pid and category_appid=appId and category_modelId=modelId;   
  while ROW_COUNT()>0 
    do     set lev=lev+1; 
     INSERT tmp_category SELECT c.category_id,c.category_title,c.category_categoryid,lev  from category c  join tmp_category_child a on c.category_categoryid = a.category_id AND a.lev=lev-1 and c.category_appid=appId and c.category_modelId=modelId;
     INSERT tmp_category_child SELECT c.category_id,c.category_title,c.category_categoryid,lev  from category c  join tmp_category a on c.category_categoryid = a.category_id AND a.lev=lev-1 and c.category_appid=appId and c.category_modelId=modelId;
  end while ;    
  INSERT tmp_category SELECT c.category_id,c.category_title,c.category_categoryid,0 FROM category  c WHERE c.category_id=pid and c.category_appid=appId and c.category_modelId=modelId;   
  SELECT * FROM tmp_category;
END
//
DELIMITER ;
