/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : javacms

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2016-03-02 16:38:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `app`
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `APP_ID` int(22) NOT NULL auto_increment COMMENT '站点ID，关联基础表BasicId',
  `APP_NAME` varchar(60) NOT NULL COMMENT '站点名称',
  `APP_URL` varchar(200) NOT NULL COMMENT '站点域名',
  `APP_LOGO` varchar(120) default NULL COMMENT '站点LOGO',
  `APP_KEYWORD` varchar(1000) default NULL COMMENT '站点关键字',
  `APP_COPYRIGHT` varchar(1000) default NULL COMMENT '站点版权信息',
  `APP_STYLE` varchar(50) default NULL COMMENT '站点风格',
  `APP_MANAGERID` int(11) default NULL COMMENT '站点管理员ID',
  `APP_DESCRIPTION` varchar(1000) default NULL COMMENT '站点描述',
  `APP_DATETIME` datetime default NULL COMMENT '应用发布日期',
  `APP_MOBILE_STYLE` varchar(11) default NULL COMMENT '应用移动端风格',
  `APP_PAY_DATE` datetime default NULL COMMENT '应用续费时间',
  `APP_PAY` varchar(45) default NULL COMMENT '费用清单',
  PRIMARY KEY  (`APP_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1550 DEFAULT CHARSET=utf8 COMMENT='应用表';

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('1549', '安徽易活网络', 'http://10.0.0.219:8080', '/upload/app/1549/1456476272983.ico', '', 'support by yihuonet', 'catering-1', '50', '', null, 'm', null, '');

-- ----------------------------
-- Table structure for `basic`
-- ----------------------------
DROP TABLE IF EXISTS `basic`;
CREATE TABLE `basic` (
  `BASIC_ID` int(11) NOT NULL auto_increment COMMENT '自增长ID',
  `BASIC_TITLE` varchar(300) default NULL COMMENT '标题',
  `BASIC_DESCRIPTION` text COMMENT '描述',
  `BASIC_THUMBNAILS` varchar(1000) default NULL COMMENT '缩略图',
  `BASIC_HIT` bigint(22) default NULL COMMENT '点击次数',
  `BASIC_SORT` int(11) default NULL COMMENT '排序',
  `BASIC_DATETIME` datetime default NULL COMMENT ' 发布时间',
  `BASIC_UPDATETIME` datetime default NULL COMMENT '更新时间',
  `BASIC_PEOPLEID` int(22) default NULL COMMENT '用户编号',
  `BASIC_CATEGORYID` int(22) default NULL COMMENT '所属分类编号',
  `BASIC_APPID` int(11) default NULL COMMENT '应用编号',
  `BASIC_MODELID` int(11) default NULL COMMENT '模块编号',
  PRIMARY KEY  (`BASIC_ID`),
  UNIQUE KEY `SYS_C009068` (`BASIC_ID`),
  KEY `BASIC_TITLE` (`BASIC_TITLE`(255)),
  KEY `BASIC_APPID` USING BTREE (`BASIC_APPID`),
  KEY `BASIC_MODELID` USING BTREE (`BASIC_MODELID`),
  KEY `BASIC_CATEGORYID` USING BTREE (`BASIC_CATEGORYID`),
  KEY `BASIC_DATETIME` USING BTREE (`BASIC_DATETIME`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COMMENT='基础表';

-- ----------------------------
-- Records of basic
-- ----------------------------
INSERT INTO `basic` VALUES ('52', '1', '', '/upload/article/1549/1456476071666.png', '0', '0', '2016-02-25 09:49:09', '2016-02-26 16:41:12', '0', '69', '1549', '8');
INSERT INTO `basic` VALUES ('53', '2', '', '/upload/article/1549/1456476079002.png', '0', '0', '2016-02-25 09:49:39', '2016-02-26 16:41:20', '0', '69', '1549', '8');
INSERT INTO `basic` VALUES ('54', '3', '', '/upload/article/1549/1456476087219.png', '0', '0', '2016-02-25 09:49:58', '2016-02-26 16:41:28', '0', '69', '1549', '8');
INSERT INTO `basic` VALUES ('59', '舌尖上的中国—三文鱼', '', '/upload/article/1549/1456365655052.jpg', '0', '0', '2016-02-25 10:00:57', '2016-02-26 15:44:25', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('60', '舌尖上的中国—三文鱼', '', '/upload/article/1549/1456365692639.jpg', '0', '0', '2016-02-25 10:01:37', '2016-02-26 15:44:09', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('61', '舌尖上的中国——三文鱼', '', '/upload/article/1549/1456365703563.jpg', '0', '0', '2016-02-25 10:01:48', '2016-02-26 15:43:51', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('62', '舌尖上的中国-三文鱼', '', '/upload/article/1549/1456365715690.jpg', '0', '0', '2016-02-25 10:02:04', '2016-02-26 15:43:37', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('63', '舌尖上的中国=三文鱼', '', '/upload/article/1549/1456365737193.jpg', '0', '0', '2016-02-25 10:02:24', '2016-02-26 15:43:20', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('64', '舌尖上的中国-三文鱼', '', '/upload/article/1549/1456365754586.jpg', '0', '0', '2016-02-25 10:02:39', '2016-02-26 15:43:03', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('65', '文化', '', '', '0', '0', '2016-02-25 10:12:41', '2016-02-29 10:31:52', '0', '72', '1549', '8');
INSERT INTO `basic` VALUES ('66', '营业时间', '全年无休，欢迎致电和来访', '', '0', '0', '2016-02-25 10:55:29', '2016-02-29 10:32:52', '0', '73', '1549', '8');
INSERT INTO `basic` VALUES ('67', '芜湖镜湖区', '', '/upload/article/1549/1456371967451.png', '0', '0', '2016-02-25 11:05:30', '2016-02-25 11:57:38', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('68', '上海店', '', '/upload/article/1549/1456371960865.png', '0', '0', '2016-02-25 11:05:41', '2016-02-25 11:57:32', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('69', '重庆店', '', '/upload/article/1549/1456371954282.png', '0', '0', '2016-02-25 11:05:49', '2016-02-25 11:57:22', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('70', '四川店', '', '/upload/article/1549/1456371944873.png', '0', '0', '2016-02-25 11:05:56', '2016-02-25 11:57:14', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('71', '推广图片', '', '', '0', '0', '2016-02-25 11:08:48', '2016-02-29 10:34:29', '0', '75', '1549', '8');
INSERT INTO `basic` VALUES ('72', '美国店', '', '/upload/article/1549/1456378211729.png', '0', '0', '2016-02-25 13:30:16', '2016-02-26 16:09:48', '0', '74', '1549', '8');
INSERT INTO `basic` VALUES ('74', '公司版权', '', '', '0', '0', '2016-02-25 13:36:23', '2016-02-29 10:31:35', '0', '76', '1549', '8');
INSERT INTO `basic` VALUES ('76', '欢迎来到试吃食品', '', '', '0', '0', '2016-02-25 14:07:26', '2016-03-02 16:35:05', '0', '81', '1549', '8');
INSERT INTO `basic` VALUES ('78', '关于我', '', '', '0', '0', '2016-02-25 14:12:58', '2016-02-25 17:30:43', '0', '84', '1549', '8');
INSERT INTO `basic` VALUES ('85', '联系我们', '', '', '0', '0', '2016-02-25 17:33:29', '2016-02-29 10:37:17', '0', '89', '1549', '8');
INSERT INTO `basic` VALUES ('98', 'logo', '', '/upload/article/1549/1456476173607.png', '0', '0', '2016-02-26 15:26:27', '2016-02-26 16:42:54', '0', '90', '1549', '8');
INSERT INTO `basic` VALUES ('99', '舌尖上的中国—三文鱼', '', '/upload/article/1549/1456472762140.png', '0', '0', '2016-02-26 15:46:04', '2016-02-26 15:46:04', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('100', '舌尖上的中国+三文鱼', '', '/upload/article/1549/1456472779765.png', '0', '0', '2016-02-26 15:46:21', '2016-02-26 15:46:21', '0', '71', '1549', '8');
INSERT INTO `basic` VALUES ('101', '朔州一餐厅称长得好看免费吃饭', '', '/upload/article/1549/1456476766881.png', '0', '0', '2016-02-26 16:53:59', '2016-02-26 16:53:59', '0', '82', '1549', '8');
INSERT INTO `basic` VALUES ('102', '春季食物中毒频发 餐饮讲究多', '', '/upload/article/1549/1456476899624.png', '0', '0', '2016-02-26 16:55:38', '2016-02-26 16:55:38', '0', '82', '1549', '8');
INSERT INTO `basic` VALUES ('103', '瓦罐煨出的岁月之美', '', '/upload/article/1549/1456476998643.png', '0', '0', '2016-02-26 16:57:48', '2016-02-26 16:57:48', '0', '82', '1549', '8');
INSERT INTO `basic` VALUES ('104', '吃着包子，就着大蒜，喝着咖啡会是一种什么样的体验？', '', '/upload/article/1549/1456477143257.png', '0', '0', '2016-02-26 17:00:57', '2016-02-26 17:00:57', '0', '82', '1549', '8');
INSERT INTO `basic` VALUES ('105', '快手早餐 -- 吐司太阳蛋 ', '', '/upload/article/1549/1456478717324.png', '0', '0', '2016-02-26 17:25:18', '2016-02-29 10:29:41', '0', '85', '1549', '8');
INSERT INTO `basic` VALUES ('106', '香甜燕麦糊 ', '', '/upload/article/1549/1456478767873.png', '0', '0', '2016-02-26 17:26:09', '2016-02-29 10:29:27', '0', '85', '1549', '8');
INSERT INTO `basic` VALUES ('107', '正宗蛋烘糕【中式松饼】', '', '/upload/article/1549/1456478808869.png', '0', '0', '2016-02-26 17:26:50', '2016-02-29 10:29:19', '0', '85', '1549', '8');
INSERT INTO `basic` VALUES ('108', '牛油果脑残粉的10分钟早餐', '', '/upload/article/1549/1456710717688.png', '0', '0', '2016-02-29 09:51:58', '2016-02-29 10:29:14', '0', '85', '1549', '8');
INSERT INTO `basic` VALUES ('109', '十分钟就做好的懒人双皮奶 ', '', '/upload/article/1549/1456710765487.png', '0', '0', '2016-02-29 09:52:46', '2016-02-29 10:29:08', '0', '85', '1549', '8');
INSERT INTO `basic` VALUES ('110', '早餐燕麦饼', '', '/upload/article/1549/1456710817310.png', '0', '0', '2016-02-29 09:53:38', '2016-02-29 10:29:03', '0', '85', '1549', '8');
INSERT INTO `basic` VALUES ('111', '英式早餐 Full English Breakfast ', '', '/upload/article/1549/1456710864324.png', '0', '0', '2016-02-29 09:54:25', '2016-02-29 10:28:58', '0', '85', '1549', '8');
INSERT INTO `basic` VALUES ('112', '【健康能量早餐】流黄荷包蛋牛油果酱配全麦面包', '', '/upload/article/1549/1456710910647.png', '0', '0', '2016-02-29 09:55:11', '2016-02-29 10:28:52', '0', '85', '1549', '8');
INSERT INTO `basic` VALUES ('113', '鸡蛋米饼', '', '/upload/article/1549/1456710961281.png', '0', '0', '2016-02-29 09:56:02', '2016-02-29 10:28:46', '0', '85', '1549', '8');
INSERT INTO `basic` VALUES ('114', '奶油泡芙', '', '/upload/article/1549/1456711471809.png', '0', '0', '2016-02-29 10:04:32', '2016-02-29 10:27:53', '0', '86', '1549', '8');
INSERT INTO `basic` VALUES ('115', '牛奶布丁', '', '/upload/article/1549/1456711523580.png', '0', '0', '2016-02-29 10:05:36', '2016-02-29 10:27:47', '0', '86', '1549', '8');
INSERT INTO `basic` VALUES ('116', '蜜桃少女心（渐变气泡酒）', '', '/upload/article/1549/1456711579094.png', '0', '0', '2016-02-29 10:06:29', '2016-02-29 10:27:41', '0', '86', '1549', '8');
INSERT INTO `basic` VALUES ('117', '奶茶', '', '/upload/article/1549/1456711640530.png', '0', '0', '2016-02-29 10:07:30', '2016-02-29 10:27:34', '0', '86', '1549', '8');
INSERT INTO `basic` VALUES ('118', '上班族的午餐便当', '', '/upload/article/1549/1456712337762.png', '0', '0', '2016-02-29 10:18:59', '2016-02-29 10:18:59', '0', '87', '1549', '8');
INSERT INTO `basic` VALUES ('119', '日式便当 ', '', '/upload/article/1549/1456712373239.png', '0', '0', '2016-02-29 10:19:33', '2016-02-29 10:19:33', '0', '87', '1549', '8');
INSERT INTO `basic` VALUES ('120', '小狮子便当', '', '/upload/article/1549/1456712403560.png', '0', '0', '2016-02-29 10:20:04', '2016-02-29 10:27:59', '0', '87', '1549', '8');
INSERT INTO `basic` VALUES ('121', '花开富贵虾', '', '/upload/article/1549/1456712578044.png', '0', '0', '2016-02-29 10:22:59', '2016-02-29 10:22:59', '0', '88', '1549', '8');

-- ----------------------------
-- Table structure for `basic_attention`
-- ----------------------------
DROP TABLE IF EXISTS `basic_attention`;
CREATE TABLE `basic_attention` (
  `ba_id` int(11) NOT NULL auto_increment COMMENT '自增长ID',
  `ba_peopleID` int(11) default NULL COMMENT '用户id',
  `ba_appID` int(11) default NULL COMMENT '用户应用id',
  `ba_basicID` int(11) default NULL COMMENT '用户收藏关联的基础id',
  `ba_type` int(11) default NULL COMMENT '收藏类型 1： 收藏  2：顶',
  `ba_datetime` datetime default NULL COMMENT '用户收藏文章，帖子或商品时的时间',
  `ba_url` varchar(200) default NULL COMMENT '收藏的文章,帖子，商品的链接地址',
  PRIMARY KEY  (`ba_id`),
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
  `CATEGORY_ID` int(22) NOT NULL auto_increment COMMENT '类别ID',
  `CATEGORY_TITLE` varchar(50) default NULL COMMENT '类别标题',
  `CATEGORY_SORT` int(10) default NULL COMMENT '类别排序',
  `CATEGORY_DATETIME` datetime default NULL COMMENT '类别发布时间',
  `CATEGORY_MANAGERID` int(22) default NULL COMMENT '发布用户ID',
  `CATEGORY_MODELID` int(11) default NULL COMMENT '所属模块ID',
  `CATEGORY_CATEGORYID` int(22) default NULL COMMENT '父类别编号',
  `CATEGORY_SMALLIMG` varchar(120) default NULL COMMENT '缩略图',
  `CATEGORY_APPID` int(11) default NULL COMMENT '应用编号',
  `CATEGORY_DESCRIPTION` varchar(45) default NULL COMMENT '栏目描述',
  PRIMARY KEY  (`CATEGORY_ID`),
  KEY `CATEGORY_APPID` (`CATEGORY_APPID`),
  KEY `CATEGORY_MANAGERID` (`CATEGORY_MANAGERID`),
  KEY `CATEGORY_MODELID` (`CATEGORY_MODELID`),
  KEY `CATEGORY_CATEGORYID` (`CATEGORY_CATEGORYID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('68', '首页', '0', '2016-02-25 09:46:24', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('69', '幻灯片', '0', '2016-02-25 09:46:36', '50', '7', '68', null, '1549', null);
INSERT INTO `category` VALUES ('72', '企业文化', '0', '2016-02-25 10:06:36', '50', '7', '68', null, '1549', null);
INSERT INTO `category` VALUES ('73', '营业信息', '0', '2016-02-25 10:40:20', '50', '7', '68', null, '1549', null);
INSERT INTO `category` VALUES ('74', '店面展示', '4', '2016-02-25 11:01:11', '50', '7', '78', null, '1549', null);
INSERT INTO `category` VALUES ('75', '推广', '0', '2016-02-25 11:07:48', '50', '7', '68', null, '1549', null);
INSERT INTO `category` VALUES ('76', '公司版权', '0', '2016-02-25 13:35:28', '50', '7', '68', null, '1549', null);
INSERT INTO `category` VALUES ('78', 'head头部', '0', '2016-02-25 13:55:36', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('80', '产品中心', '2', '2016-02-25 13:56:05', '50', '7', '78', null, '1549', null);
INSERT INTO `category` VALUES ('81', '关于我们', '1', '2016-02-25 13:56:34', '50', '7', '78', null, '1549', null);
INSERT INTO `category` VALUES ('82', '最新动态', '3', '2016-02-25 13:56:56', '50', '7', '78', null, '1549', null);
INSERT INTO `category` VALUES ('85', '早餐', '1', '2016-02-25 15:16:52', '50', '7', '80', null, '1549', null);
INSERT INTO `category` VALUES ('86', '下午茶', '2', '2016-02-25 15:17:11', '50', '7', '80', null, '1549', null);
INSERT INTO `category` VALUES ('87', '便当', '3', '2016-02-25 15:17:26', '50', '7', '80', null, '1549', null);
INSERT INTO `category` VALUES ('88', '年夜饭', '4', '2016-02-25 15:17:43', '50', '7', '80', null, '1549', null);
INSERT INTO `category` VALUES ('89', '联系我们', '5', '2016-02-25 17:31:16', '50', '7', '78', null, '1549', null);
INSERT INTO `category` VALUES ('90', '公司logo', '0', '2016-02-26 15:23:10', '50', '7', '68', null, '1549', null);

-- ----------------------------
-- Table structure for `cms_999_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_999_50`;
CREATE TABLE `cms_999_50` (
  `basicId` int(11) NOT NULL,
  PRIMARY KEY  (`basicId`)
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
  `banner` varchar(1000) default NULL,
  `picture` varchar(1000) default NULL,
  PRIMARY KEY  (`basicId`)
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
  `dizhi` varchar(220) default NULL,
  PRIMARY KEY  (`basicId`)
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
  `url` varchar(220) default NULL,
  `phone` varchar(220) default NULL,
  PRIMARY KEY  (`basicId`)
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
  `ARTICLE_BASICID` int(20) default NULL COMMENT '文章ID',
  `ARTICLE_AUTHOR` varchar(20) default NULL COMMENT '文章作者',
  `ARTICLE_CONTENT` longtext COMMENT '文章内容',
  `ARTICLE_TYPE` varchar(100) default NULL COMMENT '文章类型',
  `ARTICLE_SOURCE` varchar(300) default NULL COMMENT '文章来源',
  `ARTICLE_URL` varchar(200) default NULL COMMENT '文章跳转链接地址',
  `ARTICLE_KEYWORD` varchar(300) default NULL COMMENT '文章关键字',
  `ARTICLE_FREEORDER` int(255) default NULL COMMENT '文章自定义显示顺序',
  `ARTICLE_WEBID` int(11) default NULL COMMENT '文章管理的应用id',
  UNIQUE KEY `ARTICLE_BASICID` (`ARTICLE_BASICID`),
  KEY `ARTICLE_WEBID` (`ARTICLE_WEBID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('54', '', null, '', '', '/68/69\\54.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('53', '', null, '', '', '/68/69\\53.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('52', '', null, '', '', '/68/69\\52.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('59', '', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">据美国《侨报》报道，罕见暴风雪22日晚间如期来到纽约，23日，华埠被茫茫大雪覆盖，街头寂寥，绝大部分商店关门，除了个别超市和一些经营外卖的小餐馆。 虽然华埠大多数餐馆关门，但开业的茶楼仍末见客满。而小餐馆业主表示，当天外卖生意十分火爆。</p><p><img src=\"http://10.0.0.219:8080/ueditor1_3_6/themes/default/images/spacer.gif\" style=\"background:url(http://10.0.0.219:8080/ueditor1_3_6/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd\" word_img=\"file:///C:/Users/dev04/Desktop/catering-1/assets/img/u6.png\"/><span style=\"color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.8px; text-align: center; background-color: rgb(245, 249, 250);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">由于正逢周末，市政府又向民众发出了恶劣天气尽量呆在家中的警示，23日，华埠街头显得非常冷清。当市长发出下午2：30分之后，除了救护车外，私家车不可上路的禁令后，华埠街头更是空旷，冒着狂风的路人直接在马路中央行走。绝大多数商店都关门歇业，但一些小餐馆仍坚持开张。 东百老汇上的张家兴老板表示：“今天外卖生意特别好，我们送东百老汇附近楼宇的订餐都忙不过来。”</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">大雪中，最不甘寂寞的是孩子，有的孩子带着滑雪用的头盔和护目镜在街上打雪仗，有的套上滑雪板，被父母牵着在路上走，在勿街和茂比利街之间的MOSCO，一群年轻人更利用自然坡度，在那里玩起了滑雪，大街把偌大的华埠当成滑雪场。</p><p><br/></p>', '', '', '/68/71\\59.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('60', '', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">据美国《侨报》报道，罕见暴风雪22日晚间如期来到纽约，23日，华埠被茫茫大雪覆盖，街头寂寥，绝大部分商店关门，除了个别超市和一些经营外卖的小餐馆。 虽然华埠大多数餐馆关门，但开业的茶楼仍末见客满。而小餐馆业主表示，当天外卖生意十分火爆。</p><p><img src=\"http://10.0.0.219:8080/ueditor1_3_6/themes/default/images/spacer.gif\" style=\"background:url(http://10.0.0.219:8080/ueditor1_3_6/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd\" word_img=\"file:///C:/Users/dev04/Desktop/catering-1/assets/img/u6.png\"/><span style=\"color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.8px; text-align: center; background-color: rgb(245, 249, 250);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">由于正逢周末，市政府又向民众发出了恶劣天气尽量呆在家中的警示，23日，华埠街头显得非常冷清。当市长发出下午2：30分之后，除了救护车外，私家车不可上路的禁令后，华埠街头更是空旷，冒着狂风的路人直接在马路中央行走。绝大多数商店都关门歇业，但一些小餐馆仍坚持开张。 东百老汇上的张家兴老板表示：“今天外卖生意特别好，我们送东百老汇附近楼宇的订餐都忙不过来。”</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">大雪中，最不甘寂寞的是孩子，有的孩子带着滑雪用的头盔和护目镜在街上打雪仗，有的套上滑雪板，被父母牵着在路上走，在勿街和茂比利街之间的MOSCO，一群年轻人更利用自然坡度，在那里玩起了滑雪，大街把偌大的华埠当成滑雪场。</p><p><br/></p>', '', '', '/68/71\\60.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('61', '', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">据美国《侨报》报道，罕见暴风雪22日晚间如期来到纽约，23日，华埠被茫茫大雪覆盖，街头寂寥，绝大部分商店关门，除了个别超市和一些经营外卖的小餐馆。 虽然华埠大多数餐馆关门，但开业的茶楼仍末见客满。而小餐馆业主表示，当天外卖生意十分火爆。</p><p><img src=\"http://10.0.0.219:8080/ueditor1_3_6/themes/default/images/spacer.gif\" style=\"background:url(http://10.0.0.219:8080/ueditor1_3_6/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd\" word_img=\"file:///C:/Users/dev04/Desktop/catering-1/assets/img/u6.png\"/><span style=\"color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.8px; text-align: center; background-color: rgb(245, 249, 250);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">由于正逢周末，市政府又向民众发出了恶劣天气尽量呆在家中的警示，23日，华埠街头显得非常冷清。当市长发出下午2：30分之后，除了救护车外，私家车不可上路的禁令后，华埠街头更是空旷，冒着狂风的路人直接在马路中央行走。绝大多数商店都关门歇业，但一些小餐馆仍坚持开张。 东百老汇上的张家兴老板表示：“今天外卖生意特别好，我们送东百老汇附近楼宇的订餐都忙不过来。”</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">大雪中，最不甘寂寞的是孩子，有的孩子带着滑雪用的头盔和护目镜在街上打雪仗，有的套上滑雪板，被父母牵着在路上走，在勿街和茂比利街之间的MOSCO，一群年轻人更利用自然坡度，在那里玩起了滑雪，大街把偌大的华埠当成滑雪场。</p><p><br/></p>', '', '', '/68/71\\61.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('62', '', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">据美国《侨报》报道，罕见暴风雪22日晚间如期来到纽约，23日，华埠被茫茫大雪覆盖，街头寂寥，绝大部分商店关门，除了个别超市和一些经营外卖的小餐馆。 虽然华埠大多数餐馆关门，但开业的茶楼仍末见客满。而小餐馆业主表示，当天外卖生意十分火爆。</p><p><img src=\"http://10.0.0.219:8080/ueditor1_3_6/themes/default/images/spacer.gif\" style=\"background:url(http://10.0.0.219:8080/ueditor1_3_6/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd\" word_img=\"file:///C:/Users/dev04/Desktop/catering-1/assets/img/u6.png\"/><span style=\"color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.8px; text-align: center; background-color: rgb(245, 249, 250);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">由于正逢周末，市政府又向民众发出了恶劣天气尽量呆在家中的警示，23日，华埠街头显得非常冷清。当市长发出下午2：30分之后，除了救护车外，私家车不可上路的禁令后，华埠街头更是空旷，冒着狂风的路人直接在马路中央行走。绝大多数商店都关门歇业，但一些小餐馆仍坚持开张。 东百老汇上的张家兴老板表示：“今天外卖生意特别好，我们送东百老汇附近楼宇的订餐都忙不过来。”</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">大雪中，最不甘寂寞的是孩子，有的孩子带着滑雪用的头盔和护目镜在街上打雪仗，有的套上滑雪板，被父母牵着在路上走，在勿街和茂比利街之间的MOSCO，一群年轻人更利用自然坡度，在那里玩起了滑雪，大街把偌大的华埠当成滑雪场。</p><p><br/></p>', '', '', '/68/71\\62.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('63', '', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">据美国《侨报》报道，罕见暴风雪22日晚间如期来到纽约，23日，华埠被茫茫大雪覆盖，街头寂寥，绝大部分商店关门，除了个别超市和一些经营外卖的小餐馆。 虽然华埠大多数餐馆关门，但开业的茶楼仍末见客满。而小餐馆业主表示，当天外卖生意十分火爆。</p><p><img src=\"http://10.0.0.219:8080/ueditor1_3_6/themes/default/images/spacer.gif\" style=\"background:url(http://10.0.0.219:8080/ueditor1_3_6/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd\" word_img=\"file:///C:/Users/dev04/Desktop/catering-1/assets/img/u6.png\"/><span style=\"color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.8px; text-align: center; background-color: rgb(245, 249, 250);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">由于正逢周末，市政府又向民众发出了恶劣天气尽量呆在家中的警示，23日，华埠街头显得非常冷清。当市长发出下午2：30分之后，除了救护车外，私家车不可上路的禁令后，华埠街头更是空旷，冒着狂风的路人直接在马路中央行走。绝大多数商店都关门歇业，但一些小餐馆仍坚持开张。 东百老汇上的张家兴老板表示：“今天外卖生意特别好，我们送东百老汇附近楼宇的订餐都忙不过来。”</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">大雪中，最不甘寂寞的是孩子，有的孩子带着滑雪用的头盔和护目镜在街上打雪仗，有的套上滑雪板，被父母牵着在路上走，在勿街和茂比利街之间的MOSCO，一群年轻人更利用自然坡度，在那里玩起了滑雪，大街把偌大的华埠当成滑雪场。</p><p><br/></p>', '', '', '/68/71\\63.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('64', '', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">据美国《侨报》报道，罕见暴风雪22日晚间如期来到纽约，23日，华埠被茫茫大雪覆盖，街头寂寥，绝大部分商店关门，除了个别超市和一些经营外卖的小餐馆。 虽然华埠大多数餐馆关门，但开业的茶楼仍末见客满。而小餐馆业主表示，当天外卖生意十分火爆。</p><p><img src=\"http://10.0.0.219:8080/ueditor1_3_6/themes/default/images/spacer.gif\" style=\"background:url(http://10.0.0.219:8080/ueditor1_3_6/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd\" word_img=\"file:///C:/Users/dev04/Desktop/catering-1/assets/img/u6.png\"/><span style=\"color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.8px; text-align: center; background-color: rgb(245, 249, 250);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">由于正逢周末，市政府又向民众发出了恶劣天气尽量呆在家中的警示，23日，华埠街头显得非常冷清。当市长发出下午2：30分之后，除了救护车外，私家车不可上路的禁令后，华埠街头更是空旷，冒着狂风的路人直接在马路中央行走。绝大多数商店都关门歇业，但一些小餐馆仍坚持开张。 东百老汇上的张家兴老板表示：“今天外卖生意特别好，我们送东百老汇附近楼宇的订餐都忙不过来。”</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">大雪中，最不甘寂寞的是孩子，有的孩子带着滑雪用的头盔和护目镜在街上打雪仗，有的套上滑雪板，被父母牵着在路上走，在勿街和茂比利街之间的MOSCO，一群年轻人更利用自然坡度，在那里玩起了滑雪，大街把偌大的华埠当成滑雪场。</p><p><br/></p>', '', '', '/68/71\\64.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('65', '', '<p>我们的发展理念：我们用创新超出专业用专业提高品质用品质发展品牌我们深信并承诺5年内做到全市30家20年内做到全国300家50年内做到全球3000家。</p><p>我们对员工的承诺：我们会给所有员工一个工号,我们感谢每一个员工为餐厅所做出的每一秒奉献,我们承诺,餐厅的未来,就是员工的未来,你们今天为餐厅做出的所有的付出,都将有一个最终的回报</p><p>我们对伙伴的承诺：</p><ol class=\"corpcult list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>相互信任:我们相互信任,相信所有的人都出于好的动机</p></li><li><p>肯定鼓励:我们为身边同事的优秀而发自内心的认同</p></li><li><p>相互扶持:我们坚信1+1=3的团队精神</p></li><li><p>承担责任:敢说敢做,敢做敢为</p></li></ol><p><br/></p>', '', '', '/68/72\\65.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('103', '', '<p>时光把一个小伙儿变成了一个老炮儿，也让他的瓦罐美食煨出了与众不同的味道。</p><p style=\"text-indent: 2em;\"><span style=\"text-indent: 2em;\">1988年，他还是一个时髦文艺小青年。爱刘文正、高凌风的歌，穿喇叭裤，骑一辆喷着五颜六色油漆的炫酷大二八，斜挎个军用背包，两只鼓槌从包里探出头来——那是他刚打完架子鼓回来，要去汽车修理厂上班。</span></p><p style=\"text-indent: 2em;\">少年来到修理厂，却没有去换工作服，而是径直走到一台录音机前，扒拉着纸盒里的磁带，找了一会儿，便将一盘磁带放入录音机，摁下播放键。整个修理厂响起了王杰的《一场游戏一场梦》。</p><p style=\"text-indent: 2em;\">少年一边晃着脑袋，一边晃着自创的舞步去换工作服。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/78241456477028862.png\"/></p><p style=\"text-indent: 0em; text-align: center;\">曾经的摇滚小鲜肉</p><p style=\"text-indent: 2em;\">工友们和师傅都笑眯眯地看他，其中一个工友打趣：“小东，你这么爱听港台歌，见过真人没?”</p><p style=\"text-indent: 2em;\">少年也笑了一下，没有说话。</p><p style=\"text-indent: 2em;\">那时的他绝没想到，在未来的日子里，他居然会和高凌风，刘嘉玲坐在一起喝茶聊天。</p><p style=\"text-indent: 2em;\">少年更没想到，有一天，自己会进军餐饮业;而且，他的菜肴，竟是郑州的独一份儿。</p><p style=\"text-indent: 2em;\">周卫东，男，70后，蜀香瓦罐的品牌创始人。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/42491456477038240.png\"/></p><p style=\"text-indent: 0em; text-align: center;\">周卫东和高凌风的合影，彼时还留着很潮的发型</p><p style=\"text-indent: 2em;\">喜欢音乐的人，大多很文艺，所以一进周卫东的店里，就看见墙壁上有这么一句话：唯有爱与瓦罐，不可辜负。</p><p style=\"text-indent: 2em;\">白字黑底，字体如舞蹈一般，极富美感;另外，墙壁上还画着一棵记事树，枝干上写着分店的开业时间。</p><p style=\"text-indent: 2em;\">正对店门的墙壁上，有道横幅：专注瓦罐二十年。</p><p style=\"text-indent: 2em;\">二楼摆放着不少书柜，堆满了书，磁带和CD，墙上还贴着港台及外国明星的海报，一股上世纪八九十年代的怀旧风瞬间吹来。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/77621456477046308.png\"/></p><p style=\"text-indent: 0em; text-align: center;\">店里的墙壁上，到处可见旧唱片的封面</p><p style=\"text-indent: 2em;\">周卫东是郑州人，1986年参加工作，先后去过公交公司和汽车修理厂。由于喜欢音乐，周卫东后来离开修理厂，开了家音像店，专门卖些港台的磁带。“现在店里的磁带CD什么的，都是开音像店时留下来的。”</p><p style=\"text-indent: 2em;\">1990年时，周卫东和朋友们一起去郑州四川天府吃饭，一道鱼香肉丝让周卫东眼前一亮，吃后大呼过瘾。饭毕，他到后厨去找做这道菜的师傅。</p><p style=\"text-indent: 2em;\">周卫东没想到，这个叫做刘清泉的四川师傅，竟然才24岁。两人年纪相仿，恰巧刘清泉也喜欢音乐，两人有了共同爱好，顿时熟络起来。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/60791456477054146.png\"/></p><p style=\"text-indent: 0em; text-align: center;\">瓦罐丸子，如周卫东一样，带着文艺范儿</p><p style=\"text-indent: 2em;\">1996年，周卫东在花园路集贸市场开了第一家“蜀香瓦罐”。周卫东请刘清泉过来主厨，刘清泉想也没想就辞了工作，跑了过来。</p><p style=\"text-indent: 2em;\">当时郑州卖砂锅的很多，卖瓦罐的却还没有，加上他的瓦罐味道好，分量足，价格不贵，吃过的食客大多都会回头。</p><p style=\"text-indent: 2em;\">卖砂锅的一般都会有莲夹酥肉这道菜，即两片莲菜夹住一片酥肉在砂锅里煨;客人们多少对肉的安全有顾虑。考虑到这一点，周卫东把莲夹酥肉改成莲节酥肉，即莲菜和酥肉分开。这么一来，莲节酥肉这道菜的点击率就上去了。</p><p style=\"text-indent: 2em;\">至今这道菜仍是蜀香瓦罐的招牌菜。</p><p style=\"text-indent: 2em;\">当时生意很火爆，加盟的也多。1998年，周卫东乘热打铁，在路寨和红旗路又开两家。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/61501456477065752.png\"/></p><p style=\"text-indent: 0em; text-align: center;\">瓦罐猪手</p><p style=\"text-indent: 2em;\">2005年，当蜀香瓦罐风头正健的时候，周卫东做出一个让所有人有吃惊的决定：关闭所有店铺。</p><p style=\"text-indent: 2em;\">周卫东说：“那时候我觉得我走得太快了，少年得志并不是好事，我欠缺很多东西，所以我就跟着别人打工，从底层做起。我老是在上面飘着，不脚踏实地，迟早会出问题。”</p><p style=\"text-indent: 2em;\">2014年，周卫东经过几年的考察，决定重新开业。当时刘清泉在四川老家正经营着自己的小馆子，周卫东打来电话时，刘清泉想也没想就关了餐馆，奔他而来。</p><p style=\"text-indent: 2em;\">同年，“蜀香瓦罐”在黄河路与卫生路交叉口开业。</p><p style=\"text-indent: 2em;\">多年的积淀，周卫东成熟不少，刘清泉的烹饪技术也提高很多。</p><p style=\"text-indent: 2em;\">瓦丝们(蜀香瓦罐的粉丝)虽多年不见瓦罐，进得店来，闻见的，却还是熟悉的味道。</p><p style=\"text-indent: 2em;\">周卫东的瓦罐是特制的，陶土烧制，不刷釉。“刷釉之后美观一些，看起来也更光滑一些，但是釉加热后，会产生对人身有害的物质，我们肯定不能用。”</p><p style=\"text-indent: 2em;\">所以他的瓦罐摸起来手感比较粗糙，甚至能看见烧出的纹理，但这么一来，反倒更有质感了。</p><p style=\"text-indent: 2em;\">蜀香瓦罐有十几种之多，莲节酥肉，丸子，牛肉，羊肉，排骨……一道道瓦罐在桌上摆开，气势甚是惊人。点击率最高的，要数莲节酥肉瓦罐。</p><p style=\"text-indent: 2em;\">这道菜的工序并不简单。</p><p style=\"text-indent: 2em;\">精选猪后腿肉，漂水去血丝，然后拿姜、葱、胡椒、盐等调料腌制，然后切成长条，将面粉、生粉，鸡蛋调好味，打成糊状，把切好的肉挂上面糊，入油锅炸，炸至金黄，沥干油，待用。</p><p style=\"text-indent: 2em;\">将莲菜切片，挂面糊，入锅炸，炸好之后沥干油。将熬制好的骨棒汤兑入瓦罐，大火煮开，将炸好的酥肉和莲菜放入瓦罐，小火慢煨。</p><p style=\"text-indent: 2em;\">再放入嫩豆腐，海带，粉条，青菜等配菜，煮熟即可。出锅时，放入由三十多种大料炸成的油，撒些香菜香葱即可上桌。</p><p style=\"text-indent: 2em;\">瓦罐端上桌时，汤水依旧沸腾着，丝丝香气随之扑面而来。</p><p style=\"text-indent: 2em;\">汤汁很鲜，也很浓，咸淡适中，酥肉很柔嫩，不肥不柴，汤汁的浸润，让酥肉更口感更鲜;莲菜的味道稍淡，由于挂着炸锅的面粉，变得有了层次感，配着海带、粉条、青菜和豆腐，让这道菜的口感更为丰富。</p><p style=\"text-indent: 2em;\">羊肉，牛肉，排骨的做法大体和莲节酥肉类似，但是感觉却完全不同，至于怎么个不同法，还要您亲自去店里品尝才知晓。</p><p style=\"text-indent: 2em;\">另外，周卫东选用的大米来自延边。“延边大米口感好，米香味儿重，不黏牙。”</p><p style=\"text-indent: 2em;\">盛上一碗米饭，米粒晶莹剔透，个个饱满，米香诱人，扒上一口米饭，吃上一口瓦罐菜，实在是一种难得的享受!</p><p style=\"text-indent: 2em;\">瓦罐的外形很憨厚，看起来还有些笨拙，至少，它不像瓷器玉器那般讨巧可人。</p><p style=\"text-indent: 2em;\">然而，一个物件，有什么样的特质，就得看它在谁的手里。</p><p style=\"text-indent: 2em;\">一个至情至性的老板，加上一个至情至性的厨师，于是，就有了这道至情至性的瓦罐美食。</p><p style=\"text-indent: 2em;\">空，不是没有;瓦罐有用，正是在于它的空。</p><p style=\"text-indent: 2em;\">只有空，才能装下整个人生。</p><p style=\"text-indent: 2em;\">周卫东明白这个道理。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\">作者：张冬冬</p><p style=\"text-indent: 2em;\">来源：好食记</p><p><br/></p>', '', '', '/78/82\\103.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('102', '', '<p>春季来临，气温逐渐升高且湿度大，正是细菌性食物中毒或食源性疾病高发期，且市民外出踏青时喜爱采摘些野菜，对此，市市场监督管理局发布春季餐饮消费警示，提醒广大消费者注意餐饮消费安全。</p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(192, 0, 0);\"><strong>防止马铃薯(土豆)和腌制品中毒</strong></span></p><p style=\"text-indent: 2em;\">发芽或黑绿色皮的马铃薯(土豆)会产生大量的龙葵素，食用后易引起食物中毒。随着春季气温的升高，冬季腌制的肉、鱼、咸菜中的亚硝酸盐含量会增加，一次性食用过多颜色过深、已变黏的腌制食品，容易引起亚硝酸盐中毒。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/32961456476926479.png\"/></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(192, 0, 0);\"><strong>谨慎食用冷冻海产品</strong></span></p><p style=\"text-indent: 2em;\">春季是海产品的产出淡季，如冷冻海产品存放时间过长或存放不当，就容易腐败变质，所含蛋白质会分解并产生胺类、可溶性毒蛋白等有毒害的物质。且这些有毒害的物质经煮、熬也不能彻底破坏其毒性。因此，春季应慎食冷冻海产品，变质的海产品切不可食用。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(192, 0, 0);\"><strong>不要食用不认识的野菜</strong></span></p><p style=\"text-indent: 2em;\">随着天气转暖，各种山野菜陆续生长，如果采食有毒植物或者加工不当的山野菜，容易引起中毒，严重的将危及生命。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(192, 0, 0);\"><strong>不要自行采摘野蘑菇食用，也不要在移动商贩处购买干蘑菇或新鲜蘑菇</strong></span></p><p style=\"text-indent: 2em;\">毒蘑菇外观与食用菇外观相似，一般方法难以辨别。毒蘑菇所含毒素非常复杂，经烹调加工或者晒干均不能消除。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/46251456476936618.png\"/></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(192, 0, 0);\"><strong>谨防食用扁豆、四季豆中毒</strong></span></p><p style=\"text-indent: 2em;\">扁豆、四季豆是人们普遍食用的蔬菜，生的扁豆和四季豆中含皂甙和红细胞凝集素，对消化道有强烈刺激性，可引起出血性炎症，并对红细胞有溶解作用;扁豆、四季豆彻底加热可破坏有毒物质，加热不彻底可因毒素留存而导致食物中毒。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(192, 0, 0);\"><strong>外出踏青需注意</strong></span></p><p style=\"text-indent: 2em;\">用于野餐或路途中食用的食物要原料新鲜、加工透彻。各种荤食最好是真空包装的，耐贮存又便于携带，自制食品要烧熟煮透;干粮类食品，以烘烤、油炸类比较保险，包子、夹心蛋糕等水分含量高的食品容易变质，要注意保存。</p><p><br/></p>', '', '', '/78/82\\102.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('101', '', '<p style=\"text-indent: 2em;\">如果食客乐意，这家快餐厅会用颜值APP对食客颜值进行打分。他们将颜值指数划分成5个级数，从最低送饮料开始，到享受八折、七折、五折，直至免单，许多年轻人趋之若鹜。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/59631456476823203.png\"/></p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\">今\r\n天记者途经朔州市北关路华宝小吃市场时，发现一家名叫NO.2的快餐厅橱窗玻璃上有“长得好看免费吃饭”的海报。蔡姓老板告诉记者，这是他们推出的“新\r\n政”，根据颜值测试结果，颜值指数在3000以上的，送饮料一份;颜值指数5000以上的，享受八折;颜值指数6000以上，享受7折;颜值指数8000\r\n以上，享受5折;颜值指数10000以上，免单。许多年轻人乐意享受呢。</p><p style=\"text-indent: 2em;\">一名叫张岩\r\n的小伙子带着女朋友进店。听了老板的介绍后，他大方地站在收银台前让服务员用手机给他测颜值，拍照、测试，几秒钟后弹出了颜值：6622。这个指数让他很\r\n开心，他爽朗地笑着说：“咱倒不是为了真的省钱，快餐能花几个钱?关键是咱有自信心!”他的女朋友就没他那么大方了，鼓动半天才拢了拢秀发。当服务员拍照\r\n时，她一会儿仰脸，一会儿低头，急得服务员一头汗：“你不能老动，咱这相机抓拍出来不好看。”张岩从服务员手里拿过相机，给女朋友拍了一张，结果颜值是\r\n8621，两个人都很满意。张岩笑着问老板：“我们这怎么打折?”蔡老板痛快地说：“就高不就低，五折!你随便点吧。”</p><p style=\"text-indent: 2em;\">但\r\n也有闹笑话的事情。轮到一位30多岁的女性测颜值了，立定，面对相机，服务员按下快门。而页面上弹出：性别，男，年龄32岁，颜值6866等字样。女士的\r\n脸一下子就红了：“我怎么成男的了?”服务员赶紧解释说：“这就是娱乐，不算数啊，不算数。”女士倒也开明，摆了摆手说：“没关系，没关系。”嘴里虽然这\r\n样说，但饭都没有吃，扭头走了。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/26191456476835784.png\"/></p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\">蔡老板说，他们这项活动仅限晚餐时进行，“因为中午人太多，咱们忙不过来。”</p><p style=\"text-indent: 2em;\">○记者手记</p><p style=\"text-indent: 2em;\">营销永远只是“锦上添花”</p><p style=\"text-indent: 2em;\">“刷\r\n脸”吃饭，在朔州是第一家，但在其他城市并不鲜见。看起来是让利食客，实际上是一种招徕食客的营销手段。老餐饮人都明白，营销永远只是锦上添花的项目，并\r\n不是餐饮的根本。根本在哪里?在沉下心来做好菜品和服务。朔州这家快餐店的口号是：“因为用心，所以有味”。希望店家在这个“用心”上多用心，让营销效果\r\n更佳。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\">来源：中国青年网</p><p><br/></p>', '', '', '/78/82\\101.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('66', '', '', '', '', '/68/73\\66.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('67', '', null, '', '', '/68/74\\67.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('68', '', null, '', '', '/68/74\\68.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('69', '', null, '', '', '/68/74\\69.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('70', '', null, '', '', '/68/74\\70.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('71', '', null, '', '', '/68/75\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('72', '', null, '', '', '/68/74\\72.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('74', '', '<p>© 2014-2017 安徽易活网络技术有限公司（Anhui YiHuo Network Co.,Ltd.） All Rights Reserved.</p>', '', '', '/68/76\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('78', '', null, '', '', '/78/84\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('76', '', '<p>卷耳食品是2008年第一批通过中国商务部备案的餐饮连锁品牌、是中国连锁经营协会会员、上海连锁经营协会会员、中国烹饪协会会员。卷耳食品是超级女声麻辣评委柯以敏作为品牌形象大使的西式快餐品牌，企业注重品牌建设的同时亦不断提升自身文化建设，开设汉堡大学，赞助公益事业，使几百名贫困山区的孩子有肉可吃、有鞋可穿、有学可上。在餐厅装饰设计方面，简约而不简单，低调而不低档。在有效控制成本的的同时亦获得鲜明的品牌形象传播和气质内涵锤炼</p><p><img src=\"/../../upload/editor/1549//20160302/10881456907693614.png\" title=\"84861456717444220.png\"/></p><p><br/></p>', '', '', '/78/81\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('85', '', null, '', '', '/78/89\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('118', '', null, '', '', '/78/80/87\\118.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('119', '', null, '', '', '/78/80/87\\119.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('120', '', '<p>暂未维护</p>', '', '', '/78/80/87\\120.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('121', '', null, '', '', '/78/80/88\\121.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('98', '', null, '', '', '/68/90\\98.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('99', '', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">据美国《侨报》报道，罕见暴风雪22日晚间如期来到纽约，23日，华埠被茫茫大雪覆盖，街头寂寥，绝大部分商店关门，除了个别超市和一些经营外卖的小餐馆。 虽然华埠大多数餐馆关门，但开业的茶楼仍末见客满。而小餐馆业主表示，当天外卖生意十分火爆。</p><p><img src=\"http://10.0.0.219:8080/ueditor1_3_6/themes/default/images/spacer.gif\" style=\"background:url(http://10.0.0.219:8080/ueditor1_3_6/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd\" word_img=\"file:///C:/Users/dev04/Desktop/catering-1/assets/img/u6.png\"/><span style=\"color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.8px; text-align: center; background-color: rgb(245, 249, 250);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">由于正逢周末，市政府又向民众发出了恶劣天气尽量呆在家中的警示，23日，华埠街头显得非常冷清。当市长发出下午2：30分之后，除了救护车外，私家车不可上路的禁令后，华埠街头更是空旷，冒着狂风的路人直接在马路中央行走。绝大多数商店都关门歇业，但一些小餐馆仍坚持开张。 东百老汇上的张家兴老板表示：“今天外卖生意特别好，我们送东百老汇附近楼宇的订餐都忙不过来。”</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">大雪中，最不甘寂寞的是孩子，有的孩子带着滑雪用的头盔和护目镜在街上打雪仗，有的套上滑雪板，被父母牵着在路上走，在勿街和茂比利街之间的MOSCO，一群年轻人更利用自然坡度，在那里玩起了滑雪，大街把偌大的华埠当成滑雪场。</p><p><br/></p>', '', '', '/68/71\\99.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('100', '', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">据美国《侨报》报道，罕见暴风雪22日晚间如期来到纽约，23日，华埠被茫茫大雪覆盖，街头寂寥，绝大部分商店关门，除了个别超市和一些经营外卖的小餐馆。 虽然华埠大多数餐馆关门，但开业的茶楼仍末见客满。而小餐馆业主表示，当天外卖生意十分火爆。</p><p><img src=\"http://10.0.0.219:8080/ueditor1_3_6/themes/default/images/spacer.gif\" style=\"background:url(http://10.0.0.219:8080/ueditor1_3_6/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd\" word_img=\"file:///C:/Users/dev04/Desktop/catering-1/assets/img/u6.png\"/><span style=\"color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.8px; text-align: center; background-color: rgb(245, 249, 250);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">由于正逢周末，市政府又向民众发出了恶劣天气尽量呆在家中的警示，23日，华埠街头显得非常冷清。当市长发出下午2：30分之后，除了救护车外，私家车不可上路的禁令后，华埠街头更是空旷，冒着狂风的路人直接在马路中央行走。绝大多数商店都关门歇业，但一些小餐馆仍坚持开张。 东百老汇上的张家兴老板表示：“今天外卖生意特别好，我们送东百老汇附近楼宇的订餐都忙不过来。”</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; list-style-type: none; color: rgb(85, 85, 85); line-height: 20.8px; text-indent: 2em; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; border-radius: 0px !important;\">大雪中，最不甘寂寞的是孩子，有的孩子带着滑雪用的头盔和护目镜在街上打雪仗，有的套上滑雪板，被父母牵着在路上走，在勿街和茂比利街之间的MOSCO，一群年轻人更利用自然坡度，在那里玩起了滑雪，大街把偌大的华埠当成滑雪场。</p><p><br/></p>', '', '', '/68/71\\100.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('104', '', '<p>关于餐厅附加值的话题已经提了很多，有的卖原生态农产品、有的和其他产业合作，打包服务项目、有的卖餐具… …</p><p style=\"text-indent: 2em;\">还记得那家开在书房的面馆吗?</p><p style=\"text-indent: 2em;\">而今天要说的这家包子店，则是把场景作为包子的附加值。</p><p style=\"text-indent: 2em;\">“丑陋”的包子拼不了摆盘，拼不了“意境菜”，但照样可以能演绎现代生活方式。这，可以说是给更多传统LOW美食的一个启示。</p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(192, 0, 0);\"><strong>1<span style=\"text-indent: 2em;\">土包子 + 洋咖啡 = ?</span></strong></span></p><p style=\"text-indent: 2em;\">前两天内参听说，</p><p style=\"text-indent: 2em;\">杭州一家包子店面铺升级了。</p><p style=\"text-indent: 2em;\">而且是窜天猴式的升</p><p style=\"text-indent: 2em;\">——空间上完全变成了一家咖啡馆。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/51571456477181371.png\"/></p><p style=\"text-indent: 2em;\">这是一家叫做“甘其食BAOBAO”的包子铺，</p><p style=\"text-indent: 2em;\">新近推出的3.0版本的新店。</p><p style=\"text-indent: 2em;\">如果不看菜单，</p><p style=\"text-indent: 2em;\">你完全会觉得走进了一家咖啡馆。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/90791456477189739.png\"/></p><p style=\"text-indent: 2em;\">咖啡馆门口常用来推荐新品的小黑板，</p><p style=\"text-indent: 2em;\">它有;</p><p style=\"text-indent: 2em;\">咖啡馆里“原木+绿色植物+通透落地窗”的</p><p style=\"text-indent: 2em;\">文艺小清新风格，它有;</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/22881456477199709.png\"/></p><p style=\"text-indent: 2em;\">咖啡馆标配：</p><p style=\"text-indent: 2em;\">Wifi网络、吧台桌椅，它有;</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/2581456477208532.png\"/></p><p style=\"text-indent: 2em;\">甚至，它还出售咖啡。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/8411456477218055.png\"/></p><p style=\"text-indent: 2em;\">以及精酿啤酒、红茶等饮料。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/67531456477225943.png\"/></p><p style=\"text-indent: 2em;\">所以，</p><p style=\"text-indent: 2em;\">你觉得这是在包子铺里卖咖啡，</p><p style=\"text-indent: 2em;\">还是咖啡馆里卖包子?</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/70841456477234793.png\"/></p><p style=\"text-indent: 2em;\">吃着包子，就着大蒜，喝着咖啡......</p><p style=\"text-indent: 2em;\">周立波和郭德纲的粉丝们，</p><p style=\"text-indent: 2em;\">终于可以友好的在一起了。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(192, 0, 0);\"><strong>2<span style=\"text-indent: 2em;\">卖包子，为什么要用咖啡馆?</span></strong></span></p><p style=\"text-indent: 2em;\">午后，坐在宁静的咖啡馆里心绪万千，不远处飘来一阵猪肉大葱包子的香气.....</p><p style=\"text-indent: 2em;\">有人要说这是“对襟汗衫打领带”，不搭嘎。</p><p style=\"text-indent: 2em;\">毕竟，包子和咖啡，代表的中西文化不同、气质不同、消费群体也不同。</p><p style=\"text-indent: 2em;\">——当年的狗不理包子卖咖啡，已经吓了中国消费者一跳了。好在最终二者产品没有混搭出售。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/6991456477245513.png\"/></p><p style=\"text-indent: 0em; text-align: center;\">这家包子卖到了美国哈佛大学广场</p><p style=\"text-indent: 2em;\">但这家包子铺，咖啡和包子已经在光天化日之下强行搂抱在一起了。</p><p style=\"text-indent: 2em;\">这看上去，既无消费场景的契合，也没有品类嫁接的优势。</p><p style=\"text-indent: 2em;\">但这或许正是这家包子铺营销的高明之处。</p><p style=\"text-indent: 2em;\">这个成立于2009年的包子品牌，每天在上海、杭州能卖掉20万只包子，年营收3亿。</p><p style=\"text-indent: 2em;\">他家老板的野心是，重新定义包子，实现这个街头食物“非凡的商业潜质”。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(192, 0, 0);\"><strong>3咖啡馆里的场景革命</strong></span></p><p style=\"text-indent: 2em;\"><span style=\"text-indent: 2em;\">内参君要说，“咖啡”真的浑身是宝：</span></p><p style=\"text-indent: 2em;\">它的豆儿，可以磨来喝;它代表的文化符号，可以当做引流IP;用它开馆子，则是最理想的营销场景。</p><p style=\"text-indent: 2em;\">有人说，中国没有咖啡文化，只有咖啡馆文化。</p><p style=\"text-indent: 2em;\">简单说，就是体验式消费。</p><p style=\"text-indent: 2em;\">我可以不懂咖啡的水果酸，但我享受在咖啡馆里呆着的感觉。</p><p style=\"text-indent: 2em;\">聪明的商家很快发现了这个秘密。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/../../upload/editor//20160226/15901456477255218.png\"/></p><p style=\"text-indent: 0em; text-align: center;\">3W咖啡</p><p style=\"text-indent: 2em;\">于是，咖啡馆里卖书，咖啡馆里卖安利，咖啡馆里卖创业服务......</p><p style=\"text-indent: 2em;\">甚至我们喝了上千年的中国茶，也不得不低头钻进咖啡馆的壳子，以期吸引更多年轻人。</p><p style=\"text-indent: 2em;\">所谓的“场景革命”，正在咖啡馆里发生。强大的咖啡馆文化，一次又一次被当做营销大杀器。</p><p style=\"text-indent: 2em;\">终于，咖啡馆里卖起了包子。</p><p style=\"text-indent: 2em;\">所以，你想好在包子铺里卖什么了吗?</p><p><br/></p><p style=\"text-indent: 2em;\">来源：餐饮老板内参&nbsp;</p><p style=\"text-indent: 2em;\">作者：路文兵&nbsp;</p><p><br/></p>', '', '', '/78/82\\104.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('105', '', '<p>暂未维护</p>', 'c,', '', '/78/80/85\\105.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('106', '', '<p>暂未维护</p>', 'c,', '', '/78/80/85\\106.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('107', '', '<p>暂未维护</p>', 'c,', '', '/78/80/85\\107.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('108', '', '<p>暂未维护</p>', 'c,', '', '/78/80/85\\108.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('109', '', '<p>暂未维护</p>', 'c,', '', '/78/80/85\\109.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('110', '', '<p>暂未维护</p>', 'c,', '', '/78/80/85\\110.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('111', '', '<p>暂未维护</p>', 'c,', '', '/78/80/85\\111.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('112', '', '<p>暂未维护</p>', 'c,', '', '/78/80/85\\112.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('113', '', '<p>暂未维护</p>', 'c,', '', '/78/80/85\\113.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('114', '', '<p>暂未维护</p>', '', '', '/78/80/86\\114.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('115', '', '<p>暂未维护</p>', '', '', '/78/80/86\\115.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('116', '', '<p>暂未维护</p>', '', '', '/78/80/86\\116.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('117', '', '<p>暂未维护</p>', '', '', '/78/80/86\\117.html', '', '0', '1549');

-- ----------------------------
-- Table structure for `cms_class_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_class_50`;
CREATE TABLE `cms_class_50` (
  `basicId` int(11) NOT NULL,
  `school` varchar(220) default NULL,
  `platform` varchar(220) default NULL,
  PRIMARY KEY  (`basicId`)
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
  `COLUMN_CATEGORYID` int(22) NOT NULL default '0' COMMENT '关联category表（类别表ID）',
  `COLUMN_KEYWORD` varchar(300) default NULL COMMENT '栏目简介',
  `COLUMN_DESCRIP` varchar(500) default NULL COMMENT '栏目关键字描述',
  `COLUMN_TYPE` int(2) default NULL COMMENT '1,代表列表栏目。2，代表缩单篇。',
  `COLUMN_URL` varchar(50) default NULL COMMENT '如果是外部链接，则保持外部链接地址。如果为最终列表栏目，就保存文章显示列表',
  `COLUMN_LISTURL` varchar(50) default NULL COMMENT '最终列表栏目的列表模板地址',
  `COLUMN_TENTMODELID` int(22) default NULL COMMENT '栏目类型,直接影响栏目发布的表单样式',
  `COLUMN_WEBSITEID` int(22) default NULL COMMENT '栏目所属站点ID',
  `COLUMN_PATH` varchar(150) default NULL COMMENT '栏目路径',
  `COLUMN_CONTENTMODELID` int(11) default '0' COMMENT '栏目管理的内容模型id',
  PRIMARY KEY  (`COLUMN_CATEGORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of cms_column
-- ----------------------------
INSERT INTO `cms_column` VALUES ('68', '', '', '1', 'index.htm', 'index.htm', null, '1549', '/68', '0');
INSERT INTO `cms_column` VALUES ('69', '', '', '1', 'index.htm', 'index.htm', null, '1549', '/68/69', '0');
INSERT INTO `cms_column` VALUES ('72', '', '', '1', 'index.htm', 'index.htm', null, '1549', '/68/72', '0');
INSERT INTO `cms_column` VALUES ('73', '', '', '1', 'index.htm', 'index.htm', null, '1549', '/68/73', '2');
INSERT INTO `cms_column` VALUES ('74', '', '', '1', 'storedisplay.htm', 'storedisplay.htm', null, '1549', '/78/74', '4');
INSERT INTO `cms_column` VALUES ('75', '', '', '2', 'index.htm', 'index.htm', null, '1549', '/68/75', '3');
INSERT INTO `cms_column` VALUES ('76', '', '', '2', 'index.htm', null, null, '1549', '/68/76', '0');
INSERT INTO `cms_column` VALUES ('78', '', '', '1', 'index.htm', 'index.htm', null, '1549', '/78', '0');
INSERT INTO `cms_column` VALUES ('80', '', '', '1', 'productCenter.htm', 'productCenter.htm', null, '1549', '/78/80', '0');
INSERT INTO `cms_column` VALUES ('81', '', '', '2', 'about.htm', null, null, '1549', '/78/81', '0');
INSERT INTO `cms_column` VALUES ('82', '', '', '1', 'dynamicDetails.htm', 'latestDevelopment.htm', null, '1549', '/78/82', '0');
INSERT INTO `cms_column` VALUES ('85', '', '', '1', 'productDetails.htm', 'productCenter.htm', null, '1549', '/78/80/85', '0');
INSERT INTO `cms_column` VALUES ('86', '', '', '1', 'productDetails.htm', 'productCenter.htm', null, '1549', '/78/80/86', '0');
INSERT INTO `cms_column` VALUES ('87', '', '', '1', 'productDetails.htm', 'productCenter.htm', null, '1549', '/78/80/87', '0');
INSERT INTO `cms_column` VALUES ('88', '', '', '1', 'productDetails.htm', 'productCenter.htm', null, '1549', '/78/80/88', '0');
INSERT INTO `cms_column` VALUES ('89', '', '', '2', 'contactUs.htm', null, null, '1549', '/78/89', '6');
INSERT INTO `cms_column` VALUES ('90', '', '', '1', 'index.htm', 'index.htm', null, '1549', '/68/90', '0');

-- ----------------------------
-- Table structure for `cms_company_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_company_50`;
CREATE TABLE `cms_company_50` (
  `basicId` int(11) NOT NULL,
  `gongsidizhi` varchar(220) default NULL,
  `lianxi` varchar(220) default NULL,
  `youxiang` varchar(220) default NULL,
  PRIMARY KEY  (`basicId`)
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
  `address` varchar(500) default NULL,
  `email` varchar(220) default NULL,
  `phone` varchar(220) default NULL,
  `website` varchar(220) default NULL,
  `hours` varchar(500) default NULL,
  PRIMARY KEY  (`basicId`)
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
  `FIELD_ID` int(11) NOT NULL auto_increment COMMENT '字段自增长id',
  `FIELD_TIPSNAME` varchar(30) default NULL COMMENT '字段提示文字',
  `FIELD_FIELDNAME` varchar(20) default NULL COMMENT '字段名称',
  `FIELD_TYPE` int(11) default NULL COMMENT '字段类型（如1.单行，2.多行，3.图片，等）',
  `FIELD_DEFAULT` varchar(250) default NULL COMMENT '字段默认值',
  `FIELD_ISNULL` int(11) default NULL COMMENT '字段是否为空 0:必填 1:可选',
  `FIELD_CMID` int(11) default NULL COMMENT '关联内容模型表id',
  `FIELD_SORT` int(11) default NULL COMMENT '字段排序',
  `FIELD_ISSEARCH` int(255) default NULL COMMENT '字段是否支持后台搜索0：不支持，1：支持',
  PRIMARY KEY  (`FIELD_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义内容模型关联字段表';

-- ----------------------------
-- Records of cms_content_mode_field
-- ----------------------------
INSERT INTO `cms_content_mode_field` VALUES ('4', '营业时间', 'hours', '1', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('5', '联系方式', 'phone', '1', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('6', '店里展示', 'address', '2', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('7', '推广', 'generalize', '7', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('8', '推广', 'tuiguang', '7', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('9', '店面地址', 'dizhi', '1', '', '1', '4', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('10', 'banner图片', 'banner', '7', '', '1', '5', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('11', '展示图片', 'picture', '7', '', '1', '5', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('12', '地址', 'gongsidizhi', '1', '', '1', '6', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('13', '联系方式', 'lianxi', '1', '', '1', '6', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('14', '邮箱', 'youxiang', '1', '', '1', '6', null, '1');

-- ----------------------------
-- Table structure for `cms_content_model`
-- ----------------------------
DROP TABLE IF EXISTS `cms_content_model`;
CREATE TABLE `cms_content_model` (
  `CM_ID` int(11) NOT NULL auto_increment COMMENT '自增长id',
  `CM_TIPSNAME` varchar(30) NOT NULL COMMENT '表单提示文字',
  `CM_TABLENAME` varchar(20) NOT NULL COMMENT '表单名称',
  `CM_MANAGERID` int(11) NOT NULL COMMENT '表单管理员ID',
  PRIMARY KEY  (`CM_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义模型表';

-- ----------------------------
-- Records of cms_content_model
-- ----------------------------
INSERT INTO `cms_content_model` VALUES ('2', '营业信息', 'cms_hours_50', '50');
INSERT INTO `cms_content_model` VALUES ('3', '推广', 'cms_generalize_50', '50');
INSERT INTO `cms_content_model` VALUES ('4', '地址', 'cms_address_50', '50');
INSERT INTO `cms_content_model` VALUES ('5', '关于我们', 'cms_abuout_50', '50');
INSERT INTO `cms_content_model` VALUES ('6', '公司信息', 'cms_company_50', '50');

-- ----------------------------
-- Table structure for `cms_generalize_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_generalize_50`;
CREATE TABLE `cms_generalize_50` (
  `basicId` int(11) NOT NULL,
  `tuiguang` varchar(1000) default NULL,
  PRIMARY KEY  (`basicId`)
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
  `hours` varchar(220) default NULL,
  `phone` varchar(220) default NULL,
  `address` varchar(500) default NULL,
  `generalize` varchar(1000) default NULL,
  PRIMARY KEY  (`basicId`)
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
  `picture` varchar(1000) default NULL,
  PRIMARY KEY  (`basicId`)
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
  `SEARCH_ID` int(11) NOT NULL auto_increment COMMENT '自增长ID',
  `SEARCH_NAME` varchar(20) NOT NULL COMMENT '搜索名称',
  `SEARCH_TEMPLETS` varchar(50) NOT NULL COMMENT '搜索结果模版',
  `SEARCH_WEBSITEID` int(11) NOT NULL COMMENT '搜索管理的应用id',
  PRIMARY KEY  (`SEARCH_ID`)
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
  PRIMARY KEY  (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_tetle_50
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `COMMENT_ID` int(11) NOT NULL auto_increment COMMENT '评论ID（主键）',
  `COMMENT_COMMENTID` int(11) NOT NULL COMMENT '父评论ID',
  `COMMENT_CONTENT` text NOT NULL COMMENT '评论的内容',
  `COMMENT_PICTURE` varchar(300) default NULL COMMENT '评论时发布的图片，可上传多张图片',
  `COMMENT_TIME` datetime NOT NULL COMMENT '评论时间',
  `COMMENT_TYPE` int(11) NOT NULL default '2' COMMENT '评论的类型：1 匿名，2 公开，默认为公开',
  `COMMENT_PEOPLEID` int(11) default '0' COMMENT '评论者ID，默认为非会员用户（即游客）',
  `COMMENT_POINTS` int(11) default '0' COMMENT '评价打分（-1至5分）',
  `COMMENT_BASICID` int(11) NOT NULL COMMENT '（文章、商品...）绑定basicId（外键）',
  `COMMENT_APPID` int(11) default NULL COMMENT '(文章、商品）绑定的应用编号',
  PRIMARY KEY  (`COMMENT_ID`),
  KEY `index2` USING BTREE (`COMMENT_BASICID`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `diy_50_message`
-- ----------------------------
DROP TABLE IF EXISTS `diy_50_message`;
CREATE TABLE `diy_50_message` (
  `Id` int(11) NOT NULL auto_increment,
  `date` timestamp NULL default NULL COMMENT 'CURRENT_TIMESTAMP',
  `fromID` int(11) default NULL,
  `useName` varchar(220) default NULL,
  `Emai` varchar(220) default NULL,
  `details` varchar(220) default NULL,
  PRIMARY KEY  (`Id`)
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
  `Id` int(11) NOT NULL auto_increment,
  `date` timestamp NULL default NULL COMMENT 'CURRENT_TIMESTAMP',
  `fromID` int(11) default NULL,
  `name` varchar(220) default NULL,
  `content` text,
  PRIMARY KEY  (`Id`)
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
  `Id` int(11) NOT NULL auto_increment,
  `date` timestamp NULL default NULL COMMENT 'CURRENT_TIMESTAMP',
  `fromID` int(11) default NULL,
  `yourname` text,
  `mail` varchar(220) default NULL,
  `userphone` varchar(220) default NULL,
  PRIMARY KEY  (`Id`)
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
  `DF_ID` int(11) NOT NULL auto_increment COMMENT '自增长id',
  `DF_TIPSNAME` varchar(30) NOT NULL COMMENT '自定义表单提示文字',
  `DF_TABLENAME` varchar(20) NOT NULL COMMENT '自定义表单表名',
  `DF_MANAGERID` int(11) NOT NULL COMMENT '自定义表单关联的关联员id',
  `DF_APPID` int(11) default NULL COMMENT '自定义表单关联的应用编号',
  PRIMARY KEY  (`DF_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义表单表';

-- ----------------------------
-- Records of diy_form
-- ----------------------------
INSERT INTO `diy_form` VALUES ('2', '用户信息', 'diy_50_user', '50', '1549');

-- ----------------------------
-- Table structure for `diy_form_field`
-- ----------------------------
DROP TABLE IF EXISTS `diy_form_field`;
CREATE TABLE `diy_form_field` (
  `DFF_ID` int(11) NOT NULL auto_increment COMMENT '字段自增长id',
  `DFF_TIPSNAME` varchar(30) default NULL COMMENT '字段提示文字',
  `DFF_FIELDNAME` varchar(20) default NULL COMMENT '字段名称',
  `DFF_TYPE` int(11) default NULL COMMENT '字段类型（如1.单行，2.多行，3.图片，等）',
  `DFF_DEFAULT` varchar(250) default NULL COMMENT '字段的默认值',
  `DFF_ISNULL` int(11) default NULL COMMENT '字段是否为空',
  `DFF_SORT` int(11) default NULL COMMENT '自定义表单的排序',
  `DFF_FORMID` int(11) default NULL COMMENT '字段管理的表单id',
  PRIMARY KEY  (`DFF_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义表单字段表';

-- ----------------------------
-- Records of diy_form_field
-- ----------------------------
INSERT INTO `diy_form_field` VALUES ('3', '姓名', 'yourname', '3', '', '1', '0', '2');
INSERT INTO `diy_form_field` VALUES ('4', '邮箱', 'mail', '1', '', '1', '0', '2');
INSERT INTO `diy_form_field` VALUES ('5', '电话', 'userphone', '1', '', '1', '0', '2');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `MANAGER_ID` bigint(22) NOT NULL auto_increment COMMENT '管理员ID(主键)',
  `MANAGER_NAME` varchar(15) default NULL COMMENT '管理员用户名',
  `MANAGER_NICKNAME` varchar(15) default NULL COMMENT '管理员昵称',
  `MANAGER_PASSWORD` varchar(45) default NULL COMMENT '管理员密码',
  `MANAGER_ROLEID` bigint(22) default NULL COMMENT '角色编号',
  `MANAGER_PEOPLEID` bigint(22) default '0' COMMENT '用户编号即商家编号',
  `MANAGER_TIME` datetime default NULL COMMENT '管理员创建时间',
  PRIMARY KEY  (`MANAGER_ID`)
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
  `mmp_managerID` int(11) default NULL COMMENT '自增长id',
  `mmp_modelID` int(11) default NULL COMMENT '模块编号',
  `mmp_url` varchar(255) default NULL COMMENT '默认后台显示的主界面'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台主界面管理表';

-- ----------------------------
-- Records of manager_model_page
-- ----------------------------

-- ----------------------------
-- Table structure for `model`
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `MODEL_ID` int(22) NOT NULL auto_increment COMMENT '模块自增长id',
  `MODEL_TITLE` varchar(150) default NULL COMMENT '模块标题',
  `MODEL_CODE` varchar(255) default NULL COMMENT '模块编码',
  `MODEL_MODELID` int(22) default NULL COMMENT '模块的父模块id',
  `MODEL_URL` varchar(255) default NULL COMMENT '模块连接地址',
  `MODEL_DATETIME` datetime default NULL,
  `MODEL_ICON` varchar(120) default NULL COMMENT '模块图标',
  `MODEL_MODELMANAGERID` int(11) default NULL COMMENT '模块关联的关联员id',
  `MODEL_SORT` int(11) default NULL COMMENT '模块的排序',
  `MODEL_ISMENU` int(1) default NULL COMMENT '模块是否是菜单',
  PRIMARY KEY  (`MODEL_ID`),
  UNIQUE KEY `SYS_C009201` (`MODEL_ID`),
  KEY `MODEL_MODELID` (`MODEL_MODELID`),
  KEY `model_code` USING BTREE (`MODEL_CODE`)
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
  `mt_id` int(11) NOT NULL auto_increment COMMENT '自增长id',
  `mt_modelID` int(11) default NULL COMMENT '模块id',
  `mt_appID` int(11) default NULL COMMENT '应用id',
  `mt_path` varchar(255) default NULL COMMENT '自定义页面绑定模板的路径',
  `mt_title` varchar(255) default NULL COMMENT '自定义页面标题',
  `mt_key` varchar(255) default NULL COMMENT '自定义页面访问路径',
  PRIMARY KEY  (`mt_id`),
  KEY `mt_key` USING BTREE (`mt_key`),
  KEY `mt_appID` (`mt_appID`),
  KEY `mt_modelID` USING BTREE (`mt_modelID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='自定义页面表';

-- ----------------------------
-- Records of model_template
-- ----------------------------

-- ----------------------------
-- Table structure for `people`
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `PEOPLE_ID` int(11) NOT NULL auto_increment COMMENT '增长自ID',
  `PEOPLE_PHONE` varchar(30) default NULL COMMENT '手机号码',
  `PEOPLE_NAME` varchar(30) default NULL COMMENT '陆登账号',
  `PEOPLE_PASSWORD` varchar(50) default NULL COMMENT '陆登密码',
  `PEOPLE_DATETIME` datetime NOT NULL COMMENT '注册时间',
  `PEOPLE_APP_ID` int(11) NOT NULL COMMENT '用户所属用户ID',
  `PEOPLE_MAIL` varchar(120) default NULL COMMENT '用户邮箱',
  `PEOPLE_STATE` int(2) default '0' COMMENT '用户状态',
  `PEOPLE_CODE` varchar(15) default NULL COMMENT '随机验证码',
  `PEOPLE_CODESENDDATE` datetime default NULL,
  `PEOPLE_PHONECHECK` int(1) default NULL,
  `PEOPLE_MAILLCHECK` int(1) default NULL,
  PRIMARY KEY  (`PEOPLE_ID`)
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
  `PU_REAL_NAME` varchar(50) default NULL COMMENT '用户真实名称',
  `PU_ADDRESS` varchar(200) default NULL COMMENT '用户地址',
  `PU_ICON` varchar(120) default NULL COMMENT '用户头像图标地址',
  `PU_NICKNAME` varchar(50) default NULL COMMENT '用户昵称',
  `PU_SEX` int(2) default NULL COMMENT '用户性别(0.未知、1.男、2.女)',
  `PU_BIRTHDAY` date default NULL COMMENT '用户出生年月日',
  `PU_CARD` varchar(255) default NULL COMMENT '身份证',
  `PU_APP_ID` int(11) NOT NULL COMMENT '用户所属应用ID',
  PRIMARY KEY  (`PU_PEOPLE_ID`),
  KEY `PU_PEOPLE_ID` USING BTREE (`PU_PEOPLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基础信息表';

-- ----------------------------
-- Records of people_user
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ROLE_ID` bigint(22) NOT NULL auto_increment COMMENT '角色ID，自增长',
  `ROLE_NAME` varchar(30) default NULL COMMENT '角色名',
  `ROLE_MANAGERID` bigint(22) default '0' COMMENT '角色管理员编号',
  PRIMARY KEY  (`ROLE_ID`)
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
  `RM_MODELID` int(22) default NULL COMMENT '模块编号',
  `RM_ROLEID` int(22) default NULL COMMENT '角色编号',
  UNIQUE KEY `index` (`RM_MODELID`,`RM_ROLEID`),
  KEY `RM_MODELID` USING BTREE (`RM_MODELID`),
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
  `smp_appID` int(11) default NULL COMMENT '自增长ID',
  `smp_url` varchar(255) default NULL COMMENT '默认后台显示的主界面',
  `smp_modelID` int(11) default NULL COMMENT '模块编号',
  `smp_managerID` int(11) default NULL COMMENT '管理员编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台主界面管理界面';

-- ----------------------------
-- Records of system_main_page
-- ----------------------------

-- ----------------------------
-- Table structure for `system_skin`
-- ----------------------------
DROP TABLE IF EXISTS `system_skin`;
CREATE TABLE `system_skin` (
  `ss_id` int(11) NOT NULL auto_increment COMMENT '自增长ID',
  `ss_loginpage` varchar(255) default NULL COMMENT '登陆页面',
  `ss_backgroundimg` varchar(255) default NULL COMMENT '背景图片',
  `ss_color` varchar(255) default NULL COMMENT '字体颜色',
  `ss_css` varchar(255) default NULL COMMENT '样式',
  `ss_datetime` datetime default NULL COMMENT '生成时间',
  `ss_appID` int(11) default NULL COMMENT '0后台发布大于０表示是应用自定义',
  `ss_categoryID` int(11) default NULL COMMENT '主题分类',
  PRIMARY KEY  (`ss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台皮肤管理表';

-- ----------------------------
-- Records of system_skin
-- ----------------------------

-- ----------------------------
-- Table structure for `system_skin_manager`
-- ----------------------------
DROP TABLE IF EXISTS `system_skin_manager`;
CREATE TABLE `system_skin_manager` (
  `ssm_managerID` int(11) NOT NULL default '0' COMMENT '系统管理员编号',
  `ssm_system_skin_ID` int(11) default NULL COMMENT '系统皮肤管理员编号',
  PRIMARY KEY  (`ssm_managerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统皮肤与管理员关联表';

-- ----------------------------
-- Records of system_skin_manager
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_menu`
-- ----------------------------
DROP TABLE IF EXISTS `wx_menu`;
CREATE TABLE `wx_menu` (
  `MENU_ID` int(22) NOT NULL auto_increment COMMENT '菜单自增长编号',
  `MENU_APP_ID` int(22) default NULL COMMENT '菜单所属商家编号',
  `MENU_TITLE` varchar(15) default NULL COMMENT '单菜名称',
  `MENU_URL` text COMMENT '单菜链接地址',
  `MENU_STATUS` int(1) default NULL COMMENT '菜单状态 0：不启用 1：启用',
  `MENU_MENU_ID` int(22) default NULL COMMENT '父菜单编号',
  `MENU_TYPE` int(2) default NULL COMMENT '菜单属性 0:链接 1:回复',
  `MENU_SORT` int(11) default NULL,
  `MENU_STYLE` int(11) default NULL,
  `MENU_OAUTH_ID` int(11) NOT NULL COMMENT '授权数据编号',
  `MENU_WEIXIN_ID` int(11) default NULL COMMENT '微信编号',
  PRIMARY KEY  (`MENU_ID`,`MENU_OAUTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信菜单';

-- ----------------------------
-- Records of wx_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_news`
-- ----------------------------
DROP TABLE IF EXISTS `wx_news`;
CREATE TABLE `wx_news` (
  `news_id` int(11) NOT NULL auto_increment,
  `news_type` int(11) default '2' COMMENT '素材类型　1.图文 2.文本 3.图片',
  `news_master_article_id` int(11) default '0' COMMENT '图文素材时有效,主图文id',
  `news_child_article_ids` varchar(255) default NULL COMMENT '图文素材有效',
  `news_datetime` datetime default NULL,
  `news_App_Id` int(11) default '0',
  `news_content` text,
  `news_category_ID` int(11) default NULL,
  `news_weixin_ID` int(11) default NULL COMMENT '微信编号',
  PRIMARY KEY  (`news_id`)
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
  `PM_ID` int(22) NOT NULL auto_increment COMMENT '自增长ID',
  `PM_EVENT_ID` int(22) NOT NULL COMMENT '该回复属于的分类中的事件ID,1新关注2二维码扫描5未关注扫描二维码6点击事件4文本消息3二维码扫描&提示框',
  `PM_NEWS_ID` int(22) default '0' COMMENT '回复的素材ID',
  `PM_MESSAGE_ID` int(11) NOT NULL COMMENT '对应自定义模板回复消息id,与PM_NEWS_ID只能同时存在一个',
  `PM_APP_ID` int(22) NOT NULL COMMENT '该回复所属的应用ID',
  `PM_REPLY_NUM` int(22) default '0' COMMENT '被动回复的次数;为1时表示用户第一次被动响应消息,依次递增,当超出时取值为0的进行回复',
  `PM_KEY` varchar(300) default NULL COMMENT '事件关键字',
  `PM_TYPE` int(2) NOT NULL COMMENT '回复属性:1.最终回复;达到迭代次数之后的回复消息,2.拓展回复迭代回复(优先迭代回复)',
  `PM_TAG` varchar(30) default NULL,
  PRIMARY KEY  (`PM_ID`)
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
  `PML_ID` int(22) NOT NULL auto_increment COMMENT '自增长ID',
  `PML_APP_ID` int(22) NOT NULL COMMENT '关键的应用ID',
  `PML_PEOPLE_ID` int(22) NOT NULL COMMENT '关联用户ID',
  `PML_PASSIVE_MESSAGE_ID` int(22) NOT NULL COMMENT '关联被动回复消息ID',
  `PML_EVENT_ID` int(22) NOT NULL COMMENT '关联事件分类ID',
  `PML_TIME` datetime NOT NULL COMMENT '日志生成时间',
  `PML_KEY` varchar(300) default NULL COMMENT '关键字',
  PRIMARY KEY  (`PML_ID`)
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
  `PW_PEOPLE_ID` int(22) NOT NULL default '0' COMMENT '关联用户基本信息ID',
  `PW_APP_ID` int(22) default NULL COMMENT '用户所关注微信号的ID',
  `PW_OPEN_ID` varchar(100) default NULL COMMENT '户用在微信中的唯一标识',
  `PW_PEOPLE_STATE` int(2) default NULL,
  `PW_PROVINCE` varchar(50) default NULL COMMENT '用户所在省份',
  `PW_CITY` varchar(50) default NULL COMMENT '户用所在城市',
  `PW_HEADIMG_URL` varchar(500) default NULL COMMENT '户用头像链接地址',
  PRIMARY KEY  (`PW_PEOPLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_people
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_weixin`
-- ----------------------------
DROP TABLE IF EXISTS `wx_weixin`;
CREATE TABLE `wx_weixin` (
  `WEIXIN_ID` int(11) NOT NULL auto_increment,
  `APP_ID` int(22) NOT NULL COMMENT '微信公众号所属用户编号',
  `WEIXIN_NO` varchar(30) default NULL COMMENT '信号号',
  `WEIXIN_ORIGIN_ID` varchar(30) default NULL COMMENT '微信原始ID',
  `WEIXIN_NAME` varchar(30) NOT NULL COMMENT '众号公名称',
  `WEIXIN_TYPE` int(1) NOT NULL default '0' COMMENT '信微号类型 0：服务号 1：订阅号',
  `WEIXIN_TOKEN` varchar(30) default NULL COMMENT '信微token',
  `WEIXIN_IMAGE` varchar(100) default NULL COMMENT '信微二维码图片',
  `WEIXIN_APPID` varchar(150) NOT NULL COMMENT '用应编号',
  `WEIXIN_APPSECRET` varchar(150) NOT NULL COMMENT '用应授权码',
  `WEIXIN_HEADIMG` varchar(150) default NULL COMMENT '信微帐号头像',
  `WEIXIN_MCHID` varchar(255) default NULL COMMENT '微信支付商户号',
  `WEIXIN_PAYKEY` varchar(255) default NULL COMMENT '支付key',
  `WEIXIN_RROXY_URL` varchar(500) default NULL COMMENT '微信内网测试地址',
  `WEIXIN_OAUTH_URL` varchar(200) default NULL COMMENT '网页2.0授权地址,需要加http',
  PRIMARY KEY  (`WEIXIN_ID`)
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
DELIMITER ;;
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
END;;
DELIMITER ;
