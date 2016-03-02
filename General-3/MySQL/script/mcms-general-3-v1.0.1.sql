/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : db-mcms-open

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2016-02-04 17:37:38
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
INSERT INTO `app` VALUES ('1549', 'MCMS', 'http://10.0.0.34:8080', '/upload/app/1549/1454574030447.png', '', 'support by yihuonet', 'general-3', '50', '', null, 'm', null, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='基础表';

-- ----------------------------
-- Records of basic
-- ----------------------------
INSERT INTO `basic` VALUES ('9', '脚部', '', '', '0', '0', '2016-01-27 10:39:02', '2016-02-04 17:33:48', '0', '9', '1549', '8');
INSERT INTO `basic` VALUES ('10', '广告1', '', '/upload/article/1549/1454574506595.png', '0', '0', '2016-01-27 10:39:56', '2016-02-04 16:28:31', '0', '8', '1549', '8');
INSERT INTO `basic` VALUES ('11', '0元建站', '性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成', '/upload/article/1549/1454574611743.png', '0', '2', '2016-01-27 10:40:20', '2016-02-04 16:43:05', '0', '2', '1549', '8');
INSERT INTO `basic` VALUES ('12', '软件开发', '性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成', '/upload/article/1549/1454574620682.png', '0', '1', '2016-01-27 10:40:31', '2016-02-04 16:49:14', '0', '2', '1549', '8');
INSERT INTO `basic` VALUES ('13', '网站托管', '性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成', '/upload/article/1549/1454574630010.png', '0', '3', '2016-01-27 10:40:47', '2016-02-04 16:49:10', '0', '2', '1549', '8');
INSERT INTO `basic` VALUES ('14', '设计服务', '性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成', '/upload/article/1549/1454574638017.png', '0', '4', '2016-01-27 10:40:56', '2016-02-04 16:49:05', '0', '2', '1549', '8');
INSERT INTO `basic` VALUES ('22', '企业', '', '', '0', '0', '2016-01-27 16:29:27', '2016-02-04 17:20:17', '0', '5', '1549', '8');
INSERT INTO `basic` VALUES ('23', '售后', '', '', '0', '0', '2016-01-27 16:32:48', '2016-02-04 17:17:04', '0', '6', '1549', '8');
INSERT INTO `basic` VALUES ('24', '联系我们', '', '', '0', '0', '2016-01-27 16:51:37', '2016-02-04 17:32:40', '0', '7', '1549', '8');
INSERT INTO `basic` VALUES ('25', '广告2', '', '/upload/article/1549/1454574522808.png', '0', '0', '2016-01-28 14:27:49', '2016-02-04 16:28:43', '0', '8', '1549', '8');
INSERT INTO `basic` VALUES ('26', '公司简介', '', '', '0', '0', '2016-01-28 15:34:01', '2016-02-04 16:59:53', '0', '1', '1549', '8');
INSERT INTO `basic` VALUES ('27', '电话热线', '', '', '0', '0', '2016-01-28 15:40:42', '2016-02-04 17:33:19', '0', '13', '1549', '8');
INSERT INTO `basic` VALUES ('41', '网站标题logo', '', '/upload/article/1549/1454578245804.ico', '0', '0', '2016-02-02 16:02:21', '2016-02-04 17:30:46', '0', '14', '1549', '8');
INSERT INTO `basic` VALUES ('45', '广告3', '', '/upload/article/1549/1454574533524.png', '0', '0', '2016-02-04 16:21:32', '2016-02-04 16:28:55', '0', '8', '1549', '8');
INSERT INTO `basic` VALUES ('46', '域名', '性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成', '/upload/article/1549/1454575344086.png', '0', '0', '2016-02-04 16:42:31', '2016-02-04 16:57:03', '0', '2', '1549', '8');
INSERT INTO `basic` VALUES ('47', '主机', '性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成', '/upload/article/1549/1454575364618.png', '0', '0', '2016-02-04 16:42:46', '2016-02-04 16:48:54', '0', '2', '1549', '8');
INSERT INTO `basic` VALUES ('48', '中央气象台发布春节重要天气预报：放心出去玩', '', '', '0', '0', '2016-02-04 17:01:58', '2016-02-04 17:03:06', '0', '3', '1549', '8');
INSERT INTO `basic` VALUES ('49', '容量小不用怕：Apple Music安卓版新增外置存储卡支持', '', '', '0', '0', '2016-02-04 17:05:28', '2016-02-04 17:05:28', '0', '3', '1549', '8');
INSERT INTO `basic` VALUES ('50', '特斯拉还不够，马斯克欲开发垂直起降纯电动飞机', '', '', '0', '0', '2016-02-04 17:05:49', '2016-02-04 17:05:49', '0', '3', '1549', '8');
INSERT INTO `basic` VALUES ('51', '从“40后”到“10后”，压岁钱翻了5000倍', '', '', '0', '0', '2016-02-04 17:06:46', '2016-02-04 17:06:46', '0', '3', '1549', '8');
INSERT INTO `basic` VALUES ('52', '什么情况？“笔记本电脑”乱入古希腊雕像', '', '', '0', '0', '2016-02-04 17:07:11', '2016-02-04 17:07:11', '0', '3', '1549', '8');
INSERT INTO `basic` VALUES ('53', '峰回路转：夏普正考虑接受鸿海收购', '', '', '0', '0', '2016-02-04 17:07:32', '2016-02-04 17:07:32', '0', '3', '1549', '8');
INSERT INTO `basic` VALUES ('54', '扫地大妈公司群内卧底抢6000元红包，可信？', '', '', '0', '0', '2016-02-04 17:11:18', '2016-02-04 17:11:18', '0', '4', '1549', '8');
INSERT INTO `basic` VALUES ('55', '互联网创业是一种病：易传染，难治愈', '', '', '0', '0', '2016-02-04 17:11:37', '2016-02-04 17:11:37', '0', '4', '1549', '8');
INSERT INTO `basic` VALUES ('56', '淘宝购物给差评，女子三天接近5000骚扰电话', '', '', '0', '0', '2016-02-04 17:11:57', '2016-02-04 17:11:57', '0', '4', '1549', '8');
INSERT INTO `basic` VALUES ('57', '沉迷穿越火线，少年携CF手斧坐火车被查', '', '', '0', '0', '2016-02-04 17:12:20', '2016-02-04 17:12:20', '0', '4', '1549', '8');
INSERT INTO `basic` VALUES ('58', '微信推“一年朋友圈回顾”：看时光匆匆跌宕起伏', '', '', '0', '0', '2016-02-04 17:12:38', '2016-02-04 17:12:38', '0', '4', '1549', '8');
INSERT INTO `basic` VALUES ('59', '有一天，苹果家的产品不再流行…', '', '', '0', '0', '2016-02-04 17:12:57', '2016-02-04 17:12:57', '0', '4', '1549', '8');
INSERT INTO `basic` VALUES ('60', '莫博士：苹果设备的原生应用实在太难用！', '', '', '0', '0', '2016-02-04 17:13:19', '2016-02-04 17:13:19', '0', '4', '1549', '8');
INSERT INTO `basic` VALUES ('61', '腾讯：3月1日彻底关闭微信服务市场', '', '', '0', '0', '2016-02-04 17:13:46', '2016-02-04 17:13:46', '0', '4', '1549', '8');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '公司介绍', '0', '2016-01-26 14:31:26', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('2', '产品中心', '0', '2016-01-26 14:32:37', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('3', '行业新闻', '0', '2016-01-26 14:33:13', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('4', '技术知识', '0', '2016-01-26 14:33:50', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('5', '企业文化', '0', '2016-01-26 14:34:42', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('6', '售后服务', '0', '2016-01-26 14:35:14', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('7', '联系我们', '0', '2016-01-26 14:35:35', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('8', '广告位', '0', '2016-01-27 09:25:31', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('9', '脚部', '0', '2016-01-27 09:38:36', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('13', '电话热线', '0', '2016-01-28 15:39:54', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('14', '网站标题logo', '0', '2016-02-02 16:01:29', '50', '7', '0', null, '1549', null);

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
INSERT INTO `cms_article` VALUES ('9', '', '<p style=\"white-space: normal;\">客服电话：0553-3833117 | E-mail:beifen.ni@yihuonet.com</p><p style=\"white-space: normal;\">© 2014-2016 安徽易活网络技术有限公司（Anhui YiHuo Network Co.,Ltd.）</p><p style=\"white-space: normal;\">&nbsp;All Rights Reserved. | 网站备案：皖ICP备14007008号-2</p>', '', '', '/9\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('10', '', null, 'c,', '', '/8\\10.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('11', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\">性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成</span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\"></span></p><p><img src=\"/../../upload/editor/1549//20160204/97651454575381979.png\" style=\"float:none;\" title=\"0元建ç«?1.png\"/></p><p><img src=\"/../../upload/editor/1549//20160204/26691454575382637.png\" style=\"float:none;\" title=\"0元建ç«?2.png\"/></p><p><img src=\"/../../upload/editor/1549//20160204/98521454575383142.png\" style=\"float:none;\" title=\"0元建ç«?3.png\"/></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 'c,', '', '/10\\11.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('12', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\">性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成</span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\"></span></p><p><img src=\"/../../upload/editor/1549//20160204/26411454575403003.png\" style=\"float:none;\" title=\"0元建ç«?1.png\"/></p><p><img src=\"/../../upload/editor/1549//20160204/77261454575403954.png\" style=\"float:none;\" title=\"0元建ç«?2.png\"/></p><p><img src=\"/../../upload/editor/1549//20160204/52071454575404413.png\" style=\"float:none;\" title=\"0元建ç«?3.png\"/></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 'c,', '', '/10\\12.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('13', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\">性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成</span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\"></span></p><p><img src=\"/../../upload/editor/1549//20160204/27071454575426430.png\" style=\"float:none;\" title=\"0元建ç«?1.png\"/></p><p><img src=\"/../../upload/editor/1549//20160204/90691454575427145.png\" style=\"float:none;\" title=\"0元建ç«?2.png\"/></p><p><img src=\"/../../upload/editor/1549//20160204/48431454575427563.png\" style=\"float:none;\" title=\"0元建ç«?3.png\"/></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 'c,', '', '/10\\13.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('14', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\">性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成</span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\"></span></p><p><img src=\"/../../upload/editor/1549//20160204/88341454575448736.png\" style=\"float:none;\" title=\"0元建ç«?1.png\"/></p><p><img src=\"/../../upload/editor/1549//20160204/68851454575449794.png\" style=\"float:none;\" title=\"0元建ç«?2.png\"/></p><p><img src=\"/../../upload/editor/1549//20160204/46441454575450203.png\" style=\"float:none;\" title=\"0元建ç«?3.png\"/></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 'c,', '', '/10\\14.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('22', '', '<p style=\"text-align:center\">2015年1月活动</p><p style=\"text-align:center\"><img src=\"/../../upload/editor/1549//20160204/41551454577308253.png\" title=\"团队活动1.png\"/></p><p style=\"text-align: center;\"><span style=\"text-align: center;\">2015年2月活动</span></p><p style=\"text-align:center\"><img src=\"/../../upload/editor/1549//20160204/85821454577308953.png\" title=\"团队活动2.png\"/></p><p style=\"text-align: center;\"><span style=\"text-align: center;\">2015年3月活动</span></p><p style=\"text-align:center\"><img src=\"/../../upload/editor/1549//20160204/16441454577309549.png\" title=\"团队活动3.png\"/></p><p style=\"text-align: center;\"><span style=\"text-align: center;\">2015年4月活动</span></p><p style=\"text-align:center\"><img src=\"/../../upload/editor/1549//20160204/42921454577310013.png\" title=\"团队活动4.png\"/></p><p style=\"text-align: center;\"><span style=\"text-align: center;\">2015年5月活动</span><span style=\"text-align: center;\"></span></p><p style=\"text-align:center\"><img src=\"/../../upload/editor/1549//20160204/68951454577310701.png\" title=\"团队活动5.png\"/></p><p style=\"text-align: center;\"><span style=\"text-align: center;\">2015年6月活动</span><span style=\"text-align: center;\"></span></p><p style=\"text-align: center;\"><img src=\"/../../upload/editor/1549//20160204/36371454577311780.png\" title=\"团队活动6.png\"/></p>', '', '', '/5\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('23', '', '<p>Unify is an incredibly beautiful responsive Bootstrap Template for corporate and creative professionals. It works on all major web browsers, tablets and phone. Lorem sequat ipsum dolor lorem sit amet, consectetur adipiscing dolor elit. Unify is an incredibly beautiful responsive Bootstrap Template for It works on all major web.</p><p>关心：站在客户角度，把握客户的心情和需求；</p><p>诚心： 发自内心的视客户为胥城人的衣食父母；</p><p>细心： 细致入微体贴客户，一丝不苟追求完美；</p><p>用心： 用心极致的对待和完成每项工作和服务；</p><p>恒心： 视服务为事业质量为生命，持之以恒。<img src=\"/../../upload/editor/1549//20160204/3421454577399304.png\" title=\"新闻快报1.png\"/><br/></p>', '', '', '/6\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('24', '', '<p><img src=\"/../../upload/editor/1549//20160204/32161454578356169.png\" title=\"地图2.png\"/></p>', '', '', '/7\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('25', '', null, '', '', '/8\\25.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('26', '', '<h5>&nbsp; &nbsp; &nbsp; &nbsp; 易食客”是由它的创始人臧云龙、陆超先生带领一批来自全国的大学生创始的互联网电商平台，是芜湖市政府“大学生创业重点孵化项目”。</h5><p>“易食客”是由它的创始人臧云龙、陆超先生带领一批来自全国的大学生创始的互联网电商平台，是芜湖市政府“大学生创业重点孵化项目”。易食客核心领导层都有着海外留学背景，凭借更为广阔的视野和敢拼敢创的精神，公司从最初的2名创始成员发展到30人的规模，且平均年龄不到25岁，是一支极具生命力和挑战力的年轻团队。</p><p><img src=\"/../../upload/editor/1549//20160204/55021454576302365.png\" title=\"安徽易活.png\"/></p><p><br/></p>', '', '', '/1\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('27', '', '<p><span style=\"color: rgb(255, 0, 0);\"><strong>0553-3833117</strong></span></p>', '', '', '/13\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('41', '', '', '', '', '/14\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('48', '', '<p><span style=\"color: rgb(136, 136, 136); font-size: 1pc; line-height: 30px;\">2月4日消息 &nbsp;一年一度的春节长假即将到来，除了除夕阖家团圆，其余几天假期想必大家早就安排好活动了吧，其中必然少不了走亲访友出门旅游啥的，天气怎么样就是让人颇为关心的问题了。今天，@中央气象台 官方微博正式发布了春节假日期间重要天气新闻通稿，来的正及时，那就让我们看看春节期间全国各地的天气概况吧。</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px;\">中央气象台首先表明，<span style=\"font-weight: 700;\">春节假日期间（7日-13日），我国无大范围寒潮、持续低温雨雪冰冻和严重雾霾天气，气象条件总体适宜外出活动。所以，有出门安排的大可放心了。</span>不过，仍然是要备好雨具啥的，因为北方部分地区有小到中雪、气温变化幅度大且降温明显，南方地区有小到中雨、局地有大到暴雨天气，华北、黄淮等地有轻到中度霾和局地大雾天气，部分公路路段可能受雨雪或大雾天气影响。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px;\"><img src=\"/../../upload/editor/1549//1454576497681.jpg\" alt=\"中央气象台发布春节重要天气预报：放心出去玩\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px;\">具体来看，除夕至初二（7日至9日），<span style=\"font-weight: 700;\">全国大部以晴到多云为主，气温明显回升</span>。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px;\">初三至初六（10日至13日），新疆、内蒙古、河北、吉林等北方地区先后有降温及分散性雨雪，并有4～6级偏北风，气温下降4～8℃、局地可达10℃；南方地区有小到中雨，其中安徽南部、江西北部、江苏南部等局地有大到暴雨（见图1），局地伴有雷电。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px;\">9日至11日，华北中南部、黄淮中西部、四川盆地、江汉、江淮中西部等地有轻至中度霾，其中河北中南部、河南北部局地重度霾，初四早晨局地有大雾。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px;\">7日至9日，巴士海峡、南海大部海域将有6～8级、阵风9～10级的东北风，其中南海西南部部分海域的风力将有9级、阵风10～11级。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px;\"><span style=\"font-weight: 700;\">春节假日期间铁路、航空及水运交通基本不受影响，</span>初三（10日）以后雨雪和大雾将影响中东部地区部分公路路段<span style=\"font-weight: 700;\">。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px;\">此外，中央气象局还特别提醒，请有出行需求的公众做好出行安排，注意防范雨雪、道路结冰和低能见度天气的不利影响，司机朋友们应谨慎慢行，注意交通安全。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px;\"><span style=\"font-weight: 700;\">想要了解更为详细的气象信息，可以参考2016春节假日期间天气及影响预报新闻通稿全文：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px;\"><img class=\"lazy\" src=\"/../../upload/editor/1549//1454576499203.jpg\" alt=\"中央气象台发布春节重要天气预报：放心出去玩\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_163920_984.jpg\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p><br/></p>', '', '', '/3\\48.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('54', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">2月4日消息，春节临近，网络红包也是越来越多了，在这种背景下，不少公司也通过去发红包的形式给员工带来意外惊喜。然而令人意外的是，近日网友曝出其公司红包群里收获最多的竟是一位保洁阿姨，她3天抢了近6000元的“战绩”让大家惊讶不已。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_092737_229.jpg\" alt=\"扫地大妈公司群内卧底抢6000元红包，可信？\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">据《新快报》报道，这位大家称为“虹姐”的保洁阿姨，在打扫卫生的时候，偶然看到公司红包群的公告，就抱着试试看的心态，扫描上面的二维码进了群。就这样，每次群里发红包她几乎都能抢到，这让她成了群里的“抢红包达人”。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在虹姐保洁阿姨的身份被人事部门曝光后，这还在公司引起了一场争论。随后虹姐感觉自己像是惹了麻烦，于是就主动退群。但领导认为虹姐也是公司一员，而且辛苦一年也不容易，所以又把她加回群里继续抢红包。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">对于“可以永远留在公司群里抢红包”的待遇，虹姐感到非常幸福。本来要提前回老家的虹姐，在经历了这件事之后，决定留下来陪大家到今年的最后一个工作日。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">至于虹姐为何能够抢到这么多红包，记者了解发现是因为她无意中安装了一款抢红包插件，能够自动抢红包，所以大家就不要怀疑虹姐工作时间开小差了。</p><p><br/></p>', '', '', '/4\\54.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('45', '', null, '', '', '/8\\45.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('46', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\">性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成</span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\"></span></p><p><img src=\"/../../upload/editor/1549//20160204/63621454576216986.png\" style=\"float:none;\" title=\"0元建ç«?1.png\"/></p><p><img src=\"/../../upload/editor/1549//20160204/16521454576218130.png\" style=\"float:none;\" title=\"0元建ç«?2.png\"/></p><p><img src=\"/../../upload/editor/1549//20160204/55511454576218868.png\" style=\"float:none;\" title=\"0元建ç«?3.png\"/></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', '', '', '/2\\46.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('47', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);\">性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成</span></p>', '', '', '/2\\47.html', '性价比最高的建站风暴，一站式解决方案，一条龙的服务，您本来就应该坐享其成', '0', '1549');
INSERT INTO `cms_article` VALUES ('49', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">2月4日消息，苹果今天更新了旗下Apple Music<a class=\"s_tag\" href=\"http://android.ithome.com/\" target=\"_blank\" style=\"outline: 0px; color: rgb(39, 42, 48); text-decoration: none; -webkit-tap-highlight-color: rgba(255, 255, 255, 0); cursor: text;\">安卓</a>版应用（0.9.5），新版本支持将音乐保存至外置SD存储卡中，对于小容量机型的用户来说可谓福音。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/../../upload/editor/1549//1454576723845.jpg\" alt=\"容量小不用怕：Apple Music安卓版新增外置存储卡支持\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">不像<a class=\"s_tag\" href=\"http://ios.ithome.com/\" target=\"_blank\" style=\"outline: 0px; color: rgb(39, 42, 48); text-decoration: none; -webkit-tap-highlight-color: rgba(255, 255, 255, 0); cursor: text;\">iOS</a>设备，不少安卓机型支持外置存储卡扩展功能，可以用较少的成本来扩展容量，虽然外置存储卡在速度上跟内置存储还有些差距，但对于保存音乐、视频、图片来说是比较合适的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">除此之外，新版安卓Apple Music应用已经完全支持Beats 1，现在用户可以通过作曲者和歌单来浏览音乐，之前这些功能只有iOS版拥有。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">尽管安卓版Apple Music现在变得已经更加完善，但目前该应用仍然处于Beta版，意味着可能存在不少问题。</p><p><br/></p>', '', '', '/3\\49.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('50', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">北京时间2月4日消息，特斯拉CEO马斯克（Elon Musk）在公开场合表示，他“很想”开发电动飞机。几天前，“超级高铁”车舱设计颁奖典礼在德州A&amp;M大学举行，马斯克作为特殊嘉宾参加，在典礼上他回答了来宾的提问。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">当时有人问马斯克，他的下一个大创意是什么。马斯克回答说：“我一直在考虑可以垂直起飞和降落的电动喷气式飞机……我很想开发这种类型的产品。”马斯克的回答引起阵阵掌声。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_153252_364.jpg\" alt=\"特斯拉还不够，马斯克欲开发垂直起降纯电动飞机\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">还有人问马斯克，如何让大家相信他的创意不疯狂呢？马斯克回答说：“那只是别人的想法。当我创立SpaceX时，他们认为我疯了。我的一位朋友编辑了一段很长的视频，里面全是火箭坠毁的场景，他让我好好看看。还有一些朋友曾经涉足过火箭创业公司的工作，他们认为我的想法太糟糕了，不管怎样，我还是认为我们有一点点成功的机会的。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“我们离成功非常近了，要知道SpaceX才发射4次火箭。”马斯克补充说，“我认为，最终我们完全有希望开发出实用的产品让大家信服。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">实际上，这并不是马斯克第一次谈到电动垂直起降喷气式飞机的概念。去年他曾经提到过，他当时说如果自己不是特斯拉和SpaceX的老板，他会去创办一家电动飞机公司。马斯克的想法离现实还有很远的距离，从他的讲话我们倒是可以看出一点：马斯克对电动飞机考虑得越来越多了。</p><p><br/></p>', '', '', '/3\\50.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('51', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">每逢春节，长辈们都会准备好压岁钱发给晚辈，以寄托对晚辈美好的祝愿。随着大家生活水平的提高，压岁钱已经从“40后”、“50后”记忆中的1分钱、2分钱，变成了“00后”、“10后”收到几百元甚至上千元。几十年间压岁钱足足翻了上千倍。对于数额不等的压岁钱最终去了哪儿，每代人都有不同的回忆。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_151710_959.jpg\" alt=\"从“40后”到“10后”，压岁钱翻了5000倍\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">说起压岁钱，恐怕是孩子们对春节最大的憧憬之一。而在眼下“00后”、“10后”们收到的压岁钱比起“40后”、“50后”早已发生了巨大的改变。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“40后”许女士：“我是40后，一般都没收过压岁钱，那时候家里没有那些条件，顶多吃个核桃、枣。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">50后唐女士：“我是50后，每次就是舅舅给5分、2分、1分，最多就是5分了。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">60后张女士：“我是60后的，当时过年也没有啥压岁钱，都少得很，家庭条件好的可能给一点儿，一毛钱两毛钱五毛钱的。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">70后关女士：“我是70后，我小时候家里孩子比较多，压岁钱一般也就是5块10块。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">80后聂女士：“我是80后，小时候的压岁钱基本上就是20左右吧。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">90后邱先生：“我是90后，我小时候的压岁钱一般都是100块钱。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">00后若若：“我是00后，平时收到的压岁钱基本上都是200多。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">10后果果：“我是10后，我奶奶去年给了我500块钱。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">看来，从上世纪40年代到如今，压岁钱从无到有，从一两分到500元，足足翻了5000倍。但采访中记者发现，老一辈人记忆中的压岁钱虽然数额小，但大都能自己支配。可从80后开始虽然每年过年都能收到一笔数额可观的压岁钱，但似乎这些钱都装不到自己的口袋里。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">50后吕先生：“小时候基本上就是买炮、买糖果之类的。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">60后沈女士：“我们那时候压岁钱很少，但是我们都自己花了，买个甘蔗买个糖，自己就过年了。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">70后关女士：“压岁钱一般买一些零食，自己喜欢的小人书这些东西。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">80后聂女士：“一般都是父母说收起来交学费。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">90后邱先生：“压岁钱在包里揣着，估计一天不到就被父母拿走了。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">90后陈先生：“压岁钱爸爸妈妈存着，说是长大了娶媳妇，那现在没给我了。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">00后津津：“有的时候爸爸妈妈会以工作或者家里的名义借走，有时候会还有时候不还。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">10后果果：“我的压岁钱妈妈给我存着呢，上幼儿园。”</p><p><br/></p>', '', '', '/3\\51.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('52', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">据英国《每日邮报》2月3日报道，阴谋论理论家“StillSpeakingOut”在其2014年公布的视频中宣称，他找到了时间旅行的“证据”。在距今2000多年的古希腊雕塑“一位坐在王座上的女人与仆人”中，他发现了现代笔记本电脑的身影。但是有专家认为，这个雕塑中类似电脑的物体只是个小箱子。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_151402_535.jpg\" alt=\"什么情况？“笔记本电脑”乱入古希腊雕像\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">传说与德尔斐圣谕有关的祭司拥有超自然力量，可以将先进技术传回去。阴谋论者宣称，现代笔记本电脑出现在古希腊雕像中。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img class=\"lazy\" src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_151403_498.jpg\" alt=\"什么情况？“笔记本电脑”乱入古希腊雕像\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_151403_498.jpg\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">StillSpeakingOut解释称，这个雕像中的物体看起来非常像现代笔记本电脑，甚至还有USB接口。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img class=\"lazy\" src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_151404_262.jpg\" alt=\"什么情况？“笔记本电脑”乱入古希腊雕像\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_151404_262.jpg\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">这个浮雕正在美国加州博物馆展出，不相信外星人或时间旅行的人认为，他只是古希腊人用来书写的蜡板。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">这个雕塑现正在美国加州马里布J. Paul Getty博物馆展出。StillSpeakingOut说：“我并非说这是古代的笔记本电脑。但当我看到这个雕塑时，禁不住想到德尔斐神谕（Oracle of Delphi），它允许能与神明、外星人或时间旅行者沟通的祭司获得先进信息和其他高科技设备。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">这个雕塑中描述的场景是希腊数百年来丧葬艺术的一部分，最有可能的是死者希望来世能有同样的尘世乐趣。雕塑中有一个物体与现代笔记本电脑非常像，上面有类似的USB接口。一名游客拍摄的照片也显示，这个物体的宽度结构太窄，根本不足以充当珠宝箱，与神秘的潘多拉盒子也不匹配。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">但是那些不相信外星人或时间旅行的人认为，这个物体就是蜡板，古希腊人利用笔在上面书写记录。可是研究人员认为，这个丧葬浮雕中的蜡板与其他希腊艺术中所看到的截然不同。此外，StillSpeakingOut表示，雕塑中的物体比蜡板薄很多。</p><p><br/></p>', '', '', '/3\\52.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('53', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">2月4日消息，夏普今日召开理事会，将会讨论鸿海提出的收购方案。日本共同社报道称，夏普将基于鸿海的援助方案推进谈判；夏普将继续与日本产业革新机构(INCJ)进行谈判。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/../../upload/editor/1549//1454576851749.jpg\" alt=\"峰回路转：夏普正考虑接受鸿海收购\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">同时，NHK（日本放送协会）援引知情人士称，在报价提高后，夏普将选择鸿海的逾7000亿日元援助计划。夏普股价午后涨幅扩大至26%。但随后夏普发言人对其决定选择鸿海援助方案的报道予以否认。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">据悉，之前夏普曾决定接受日本产业革新机构的出资，日本产业革新机构提出的重建方案是向夏普主体出资3000亿日元左右，同时剥离液晶业务。但1月底鸿海董事长郭台铭直接向夏普方面说明了增加出资额的方案。夏普开始讨论接受鸿海的提案。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">夏普称，将设法在一个月内达成最后协议。候选人已经减少到鸿海和INCJ。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">中午时分，东京证交所就夏普的不明信息向投资者发布预警。</p><p><br/></p>', '', '', '/3\\53.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('55', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">如今在科技圈有一种常见的病，叫“创业”。这是一种无法用语言形容，也无法根治的病，至今没有药方能有效医治，而且传播性非常广，一旦被感染，将无法回头。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_100103_161.png\" alt=\"互联网创业是一种病：易传染，难治愈\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">“创业”这个病是怎么传播的？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img class=\"lazy\" src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_100046_852.png\" alt=\"互联网创业是一种病：易传染，难治愈\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_100046_852.png\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">名人效应传播</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">市值1600亿美金的阿里巴巴集团的总裁马云曾经说过这么一句话：“梦想是要有的，万一实现了呢？”，我们姑且不谈论这是否为随口说说的，但就这么一句话，让无数的少男少女染上“创业”这个病，义无反顾的提出离职，然后带上自己的梦想，走上了实现梦想的道路。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">媒体传播</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">如今不论是新兴的科技媒体还是传统媒体，都充斥“创业”这个病的味道，就连腾讯前段时间也都开通的腾讯创业。如今各个媒体的头条已经被“90后创业者”这个标签刷屏，当然还有70后、80后了，不过最不可思的还是那些00后创业者。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">“创业者”本身传播</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">如今不论是在微信群还是咖啡厅，都能看到一群号称自己为“创业者”的人，这些人往往是流窜于大街小巷和各个微信群，不管碰到熟与不熟的朋友都是塞张某科技公司创始人的名片，然后开始介绍自己的项目。对于很多大学生来说，毕业后再努力也都是从小员工做起，(除非有个和王思聪一样的爹)，没个三到五年很难升到总监，VP，不仅工资少，和朋友介绍一点面子都没有，还不如去创业，虽然苦点累点，但至少名气好听啊！</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">“创业”这个病有什么特征？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img class=\"lazy\" src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_100047_618.png\" alt=\"互联网创业是一种病：易传染，难治愈\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_100047_618.png\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">其实很多人认为“创业”和“做生意”是一样的，创业就是做生意，做生意就是创业，其实这是一种错误的理解。正确的理解是：“创业”和“做生意”是不一样的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">我为什么说“创业”和“做生意”不一样呢！因为生意人做生意讲究的是理性判断，讲究利益，只求赚钱，而创业讲究的：用户，融资，烧钱三部曲。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">一名有“创业”病的互联网创业者，会通过各种“无节操”的方法获取用户，然后通过各种“吹牛逼”的方法忽悠投资人，最后再通过各种“脑残”的方法把从投资人那边忽悠来的钱“分发”给前期通过“无节操”获取来的用户，在互联网中简称：“烧钱”。即使用户数量达到上千万还会一直持续保持这种“烧钱”的方法，因为在还没有将市场统一的情况下，一旦盈利，便会认为这将会失去市场的份额。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">公司稳定后会经常去参加各种所谓的互联网高峰论坛以及创业成功人士分享交流会，游走在创投圈和IT圈进行刷脸可谓是家常便饭，开口闭口就是：产品创新，用户体验，大数据整合等，然后不经意说又有XX资本公司的合伙人看中了我的项目，要进行X轮融资。吹牛逼是“创业”病最大的特征。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“创业”病的特征除了吹牛逼以外还有就是情怀，当某一天项目没钱烧了，公司倒闭了，然后写一篇满怀泪水和回忆的文章总结这次的创业，而且还在会在文章中说这次失败主要是因为自己的某些错误，类似忘记初心之类的，之后就去各大网站投稿，这类文章正是这些媒体所需的，文章一出，立马上头条，然后坐等投资人找上门，之后这类患有“创业”的创业者便会给自己贴个非常吸引人的标签，那就是：连续创业者。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">“创业”这个病有什么功效？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img class=\"lazy\" src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_100047_980.png\" alt=\"互联网创业是一种病：易传染，难治愈\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_100047_980.png\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">创业这个病的功效可是太强了，不管是装逼，还是吹牛逼，还是忽悠，这些可谓是样样都行。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">有时候总感觉像是被上天选中的一样，天生就是来拯救世界的。这让我想起了小时候读书的时候，老师经常会问我们长大后的梦想是什么，那时候很傻很天真，总是幻想长大后要成超人，然后拯救世界，虽然如今没有成为超人，但至少如今我能拯救世界。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">好吧，我刚才其实是在吹牛逼。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">“创业”这个病的副作用是什么？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img class=\"lazy\" src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_100048_409.png\" alt=\"互联网创业是一种病：易传染，难治愈\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_100048_409.png\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“创业”这个病的副作用非常多，如果早期发现已经患有“创业”病，我建议你能回头就回头，别想那么多。因为到了后期你就会发现“创业”这个病会让你间歇性脑残，不定期失眠，喜欢上吹牛逼，爱喝咖啡，idea丰富，逢人就互联网思维，盈利模式都是坑爹，烧钱才是硬道理，工资都是浮云，股权才是王道，数据都是小意思，能融到资才是牛逼。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">大到公务员，小到大学生，都被“创业”这个病给感染，不管家境是好是坏，不管家人同意或反对，都毅然选择来创业这条路上试试看。因为：“梦想是要有的，万一实现了呢?”就连现在的00后口中，也都已经没有好好读书，将来考取一所好的大学的说法，只有：“身为00后的我们，将来不去创业，那就是个loser，应该说对不起自己身为00后”。有这种想法的人已经是晚期了。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">患有“创业”这个病的人就别想了，没的治，如果能治的话我早就把自己治好了。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">说了这么多，当然也不乏创业成功，不但后来身体无恙，而且愈发健康强壮了。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">当然这种人是极少数，如果你不幸患上创业病，希望你能是这其中一个，加油！</p><p><br/></p>', '', '', '/4\\55.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('56', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">就因为在淘宝上购物给了卖家一个差评，南京市民汪女士此后就开始了一段噩梦：三天三夜时间里，她的手机一直被来自全国各地的陌生号码骚扰，她的手机无法用别人也无法联系到她，导致她无法正常生活和工作。当汪女士向警方报警时，她粗略算了一下，三天三夜时间里她接到了近5000个恶意骚扰电话。而在骚扰电话中，暗示她只要取消了差评，电话骚扰自然就会停止。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/../../upload/editor/1549//1454577116075.jpg\" alt=\"淘宝购物给差评，女子三天接近5000骚扰电话\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">淘宝购物后不满意给店家差评</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">据汪女士称，前几天她在淘宝某店家花300多元买了件衣服。1月25日，汪女士满心欢喜地收到衣服，却发现衣服上有一块很明显的污渍，怎么也弄不干净。汪女士和店家客服沟通，没想到对方态度非常强硬，称已经售出的衣服概不退换。汪女士感觉上当受骗，一气之下给了这个淘宝店家一个差评。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">本以为此事就此了结，自己也自认倒霉了，可让汪女士怎么也没想到的是，噩梦才刚刚开始，此后的三天三夜她都被恶意骚扰。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">一天24小时不断接到陌生来电骚扰</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">汪女士说，自从1月25日她给了淘宝店家差评后不久，自己的手机就不断接到各种来自全国各地的陌生来电，“这些打来的电话都是响一下就挂，根本来不及接。”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">一开始，汪女士也怀疑这是淘宝店家因为自己给了差评而恶意报复。但通过电脑上网与该店家客服联系，对方矢口否认。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">但是，类似这样的骚扰电话却一直都没停。“不仅有电话，还有各种乱七八糟的短信”，汪女士说，即使偶尔能接到几个陌生电话，也都是询问：“你是不是××网站？”汪女士推测，自己的手机号码被人恶意注册成某网站的联系电话了。汪女士说，“<span style=\"color: rgb(255, 0, 0);\">一天24小时，都没有间断过，连晚上睡觉都不安生。</span>”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">三天三夜接了近5000个骚扰电话</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">直到1月28日，一个来自广东的陌生号码打了两秒钟，汪女士快速地接了。打电话的人操着一口广东口音，对方在电话里暗示汪女士，只要撤销了淘宝上的差评，电话骚扰自然就会停止。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">而这一个电话让汪女士终于确定，这一切的根源就在那个淘宝差评上。因为手机用不了，汪女士通过电脑与这个淘宝店家客服联系，而对方也隐约承认了这件事，并表示让汪女士将差评取消掉。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 0, 0);\">而此时，</span><span style=\"color: rgb(255, 0, 0);\">汪女士已经被骚扰了三天三夜时间</span>。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">汪女士无奈之下，向建邺公安分局江东警务服务站报警，“明明就是他们给我发了脏衣服，还不给退，我才给了差评，没想到，现在居然还电话骚扰我，太气人了”。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">汪女士说，她也不知道这几天来到底接到了多少个骚扰电话，但她调取了一下记录，粗略算了一下接近5000个。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">目前，此事正在进一步调查处理中。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">民警支招</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">设置“白名单”拦截陌生号码</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">南京建邺区公安分局滨江派出所姚警官说，市民在遇到类似电话恶意骚扰的时候，应该要第一时间报警，向警方寻求帮助。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">此外，市民也可以在手机上下载安装一些手机软件，对特定的号码设定为“黑名单”。如果恶意骚扰者使用不同的号码打来，也可以通过手机软件设定“白名单”，仅限自己手机上保存的联系人能够打进来，而陌生号码则打不进来。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在向警方报警后，市民可以到营业厅打印通话记录，保存好恶意骚扰的证据，而对于短信骚扰则可以截屏保存。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">警方提醒</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">恶意骚扰违法行为将受处罚</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">姚警官提醒，针对打电话、发短信等形式恶意骚扰的行为，警方将会依法打击。如果行为违反了“治安处罚法”的规定，警方将对其进行治安处罚，构成犯罪的，警方也将按照刑事案件进行处理。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">如今淘宝购物越发便利，但由于监管漏洞，助长了许多不良商家的不法行为，民警表示今后将重点放在网络购物方面，完善管理机制，保证市民的合法权益。</p><p><br/></p>', '', '', '/4\\56.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('57', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">2月1日上午，一名少年携带“穿越火线”真实版手斧道具，在海口火车站过安检时被查。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">2月1日11时40分许，正值春运旅客出行高峰期，海口火车站进站安检口，旅客正有序排队过安检进站候车，值勤民警按要求在安检口带班盯岗。安检员在对旅客行李进行检查时，发现一名少年黑色的双肩背包中有一把奇异形状的斧子，并且已开刃，随即向民警报告。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_111816_739.jpg\" alt=\"沉迷穿越火线，少年携CF手斧坐火车被查\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">经现场询问，该少年名叫张某铭，男，河南省禹州市人，未满18周岁，平时沉迷目前十分火爆的网络游戏——穿越火线(CF)，喜欢在虚拟世界里射击拼杀，与其他玩家进行械斗，由于入戏太深，小张不但在虚拟世界里购买了手斧道具，还上淘宝网购买了这把真实版手斧，并视为心头之爱珍藏，准备带着一起回老家过年，却不知管制器具是不能进站上车的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">民警于是对小张进行耐心教育，网游是一个虚拟世界，形形色色骗局比较多，年轻人不要投入太深，影响学业和生活，更不能将网游中的真实道具刀、斧、弓弩等管制器具带到公共场所。经教育，该少年明白自己的行为是违法的，对民警的治安处罚表示无异议。</p><p><br/></p>', '', '', '/4\\57.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('58', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">2月4日消息，临近春节，想必不少人开始闷头回顾自己这过去的一年中做了什么，有什么进步，写出来好让述职报告好看一些。当我们在冥思苦想的时候，微信也悄悄的为大家的朋友圈做了一次“年终总结”。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_112148_872.jpg\" alt=\"微信推“一年朋友圈回顾”：看时光匆匆跌宕起伏\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">近日，微信悄然推出了查看“一年朋友圈回顾”、“一周热门朋友圈”、“朋友圈分享的音乐”功能，不过，由于这项功能有点隐秘，一般人几乎不会注意到。这些新功能到底在哪呢？打开微信后，点击右上角“搜索”，进入“朋友圈”，你就可以看到这三项功能啦。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img class=\"lazy\" src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_112155_637.jpg\" alt=\"微信推“一年朋友圈回顾”：看时光匆匆跌宕起伏\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_112155_637.jpg\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">三项功能中，“一年朋友圈回顾”给网友留下了深刻的印象。有网友称“好感慨！时光飞逝，日子每天都在过不觉得，当时光机一下回到一年前，发现好多变化。”也有网友感叹“时光匆匆如流水，一边回忆一边伤感”。小编也忍不住查看了下，顿时感觉时光匆匆，跌宕起伏……</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">感兴趣的朋友可以亲自去体验一下，看看那年那月的我们，都在干些啥？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img class=\"lazy\" src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_112201_767.jpg\" alt=\"微信推“一年朋友圈回顾”：看时光匆匆跌宕起伏\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_112201_767.jpg\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p><br/></p>', '', '', '/4\\58.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('59', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">日前，库克在微博上晒出了多张Apple Store在华开设新店的图片，并表示“开年第一个月令人难忘!我们在沈阳和南京开设了新店，广州、厦门和青岛也迎来了第一家Apple Store。感谢成千上万与我们一同欢庆的消费者!祝大家猴年吉祥!”诚然，<span style=\"font-weight: 700;\">库克真应该多多感谢中国用户，因为中国用户对于苹果的追捧帮助苹果公司换来丰厚的回报，这份回报无疑也是支撑苹果高市值的支柱之一</span>。库克率领苹果的最大成就之一或许就是在中国市场不断地“开疆拓土”，抢占线下资源。不过，当我们曾经看到的那么多“山寨”的苹果专卖店开始销声匿迹的时候，苹果自身的Apple Store还能火爆多久?如果有一天Apple Store开始门前鞍马稀的时候，估计也是IT市场“改朝换代”的一个新转折点。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_114903_814.jpg\" alt=\"有一天，苹果家的产品不再流行…\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，虽然目前谷歌市值已经开始超越苹果我们可以漠不关心，也可以不去在意谷歌市值的超越有多大的意义或者是价值。仅仅是苹果自身的发展从巅峰开始沉寂的时候，其实将来或许会有更多的IT公司的市值会超越苹果。<span style=\"font-weight: 700;\">当新兴市场对苹果产品的热情不再的时候，当中国市场对苹果的追捧热度不再的时候，那么也是苹果陷入“困顿”之时</span>。当然，对于太多的果粉来说，还一直期待着苹果能有更多的优秀产品问世，不过相对于中国Apple Store不断扩展的时候，苹果在美国市场的零售店境遇却大相径庭。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">据美国最顶尖的购物中心运营商之一GeneralGrowth Properties表示，苹果零售店的业绩下滑拖累了整体零售业的增长，甚至可能失去美国零售店的王者宝座。General Growth Properties经营着美国的许多购物中心，而全美的268家苹果零售店有46家位于这些购物中心里。那么为何会出现这种情况呢?要知道苹果的产品在美国并不是很贵，作为一款或者几款电子消费产品来说，苹果在美国的价格还是很亲民的。不过，人们的购买欲望显然已经开始下滑了不少。而中国市场如今是苹果最重要的市场之一，用户的追捧热度以及参与热度还非常高涨，这也支撑了苹果的良好业绩。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img class=\"lazy\" src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_114904_325.jpg\" alt=\"有一天，苹果家的产品不再流行…\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_114904_325.jpg\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">有意思的是，在美国市场，有人表示“整个国家的零售业都在上涨。”“几乎所有的零售领域都在增长，只有电子行业例外，主要是因为苹果。”很显然苹果的产品受到的关注度在下滑，毕竟对于大多数苹果的用户来说，已经拥有了相当多的苹果产品，在智能手机的迭代如此快捷的时代，真的有必要反复地更换那些看起来并没有多少新突破的产品吗?很显然更多的用户选择了拒绝参与。这恐怕也是苹果在美国零售市场下滑的原因所在。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">当然，或许GeneralGrowth Properties仅代表17%的苹果美国零售店，不过，我们也确实看到，苹果不久前也预计其3月季度营收可能出现十多年来的首次下滑。其中的原因是担心iPhone、iPad和Mac销量增长停滞。而Apple Watch也并没有成为轰动性产品引领一次新的潮流，事实上在<a class=\"s_tag\" href=\"http://ipad.ithome.com/\" target=\"_blank\" style=\"outline: 0px; color: rgb(39, 42, 48); text-decoration: none; -webkit-tap-highlight-color: rgba(255, 255, 255, 0); cursor: text;\">iPad</a>之后，苹果已经没有惊艳了，<span style=\"font-weight: 700;\">虽然推出了Apple Watch曾被市场寄予厚望，苹果也进行了大量的宣传和造势，但远没有iPhone和iPad成功之初的那种市场影响力。这不能不说是一次失败的过程</span>。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">当然，因为苹果本身的销售渠道是多样的，零售店只是其中之一，但我们也可以管中窥豹，从一个小小的“边缘”市场来判断苹果产品的受欢迎程度，当某个环节出现滞涨的时候，那么对于整个苹果的盘子或许都是一次推进中的困顿。这显然是难以令人满意的。当然，库克可以赖以自信的是，在中国市场，苹果的零售店的开店速度，以及在中国市场的用户参与热情还是令人激情澎湃的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img class=\"lazy\" src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_114904_807.jpg\" alt=\"有一天，苹果家的产品不再流行…\" data-original=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_114904_807.jpg\" style=\"border: 0px; vertical-align: bottom; max-width: 728px; display: inline;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">中国市场可以说是库克的一块“福地”，当然造成这种情况的因素也有很多。<span style=\"font-weight: 700;\">苹果在中国彻底打开了市场，并且也攫取了丰厚的利润回报，这曾经让很多海外科技公司为之眼热，但财富效应却无法仿效，最终只能看苹果一枝独秀</span>。不过，随着中国手机军团的逐渐崛起，苹果受到的挑战也越来越大，中国市场和中国用户的忠诚度并不是牢不可破的，事实上，我们看到周围已经有很多用户开始使用本土品牌的产品，而不再像以前那么热衷于苹果产品，几乎到了“卖肾”的地步，这显然都不是正常的。当中国本土厂商的产品摒弃了以前山寨的痕迹，越来越重视产品研发和质量，创新性应用和对中国本土用户的需求掌控，都让国产手机厂商也找到了一些开辟市场的诀窍，并且也在和国际手机巨头的竞争中丝毫不落下风，这显然是令人可喜可贺的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">一旦苹果在中国市场的零售店出现门前鞍马稀的时候，或许也是苹果走下神坛的时候了。而国产手机厂商的崛起，在我们不断鼓励“双创”的情况下，也在寻找着各自的发展途径，并且不断地加大研发力度，这都将是立足市场的一个有力基石。毕竟，花无百日红，新的业态出现淘汰旧的盟主也是发展的必然结果。</p><p><br/></p>', '', '', '/4\\59.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('60', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">导语：美国科技博客The Verge周三刊登了知名科技媒体人莫博士(Walter Mossberg)的评论文章。莫博士认为，iTunes、邮件、照片和iCloud等苹果核心应用的质量正在下降，而这将给苹果产品的整体体验带来风险。<br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/../../upload/editor/1549//1454577198763.jpg\" alt=\"莫博士：苹果设备的原生应用实在太难用！\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">以下为文章全文：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在外界看来，苹果是一家很棒的硬件开发商。例如，许多评测者都认为，苹果设备是市面上能买到的最佳产品。我也曾做出推荐称，苹果最重要的产品iPhone是市场上的最佳智能手机。在The Verge，所有人都持同样观点。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">然而，开发这些产品需要的不仅是金属、玻璃和硅。苹果内置的软件是整体体验的重要一部分，自1984年首款Mac电脑推出以来一直如此。无论是操作系统还是核心应用，用户和评测者青睐苹果产品的重要一点都在于软件。苹果软件功能强大，可靠性很好，且易于使用。正如史蒂夫·乔布斯(Steve Jobs)的一句名言所说：“就这么有效！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">然而过去几年，我已注意到，<span style=\"font-weight: 700;\">无论是在iOS移动平台还是OS X桌面平台，苹果核心应用的质量和可靠性正在下降</span>。苹果的关注重点似乎正逐步离开核心的软件产品，更多地专注于新的梦想，例如智能手表和电动汽车。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">需要澄清一点：<span style=\"font-weight: 700;\">在大部分情况，苹果的核心应用仍足够好。否则，我不可能推荐苹果的硬件</span>。我喜欢iMessage、新的Notes应用、Apple Pay支付、Touch ID指纹认证、Safari浏览器和AirPlay等许多苹果产品。从核心应用来看，竞争对手与苹果仍有差距。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">然而，例外情况正越来越多。苹果的口号是“就这么有效”，而乔布斯及其继任者蒂姆·库克(Tim Cook)一直宣称，苹果的业务是开发“优秀的产品”。因此，我们也常常基于高标准去评判苹果。苹果的优势在于，该公司的软硬件整合度很高。因此，如果软件不再出色，那么硬件也会受到拖累。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">对于我提出的问题，苹果表示：“我们拥有覆盖多个平台的专门软件团队。我们在这方面的工作仍像以往一样强大。”苹果表示，这些团队每年都在优化核心应用，但每年的关注点都各有侧重。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在软件领域，苹果也曾遭遇过一些失败，例如MobileMe、iTunes Ping，以及第一代的苹果地图。根据我的看法，到目前为止Apple News的表现也很一般。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">不过我现在要说的是用户更熟悉的应用，例如邮件、照片、iTunes，以及iCould。从某些方面来看，这些软件不符合苹果的高标准。问题有时出现在iOS，有时出现在OS X，有时则同时涉及这两大平台。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">以下是几个典型。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">1.桌面端iTunes</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">苹果iTunes曾是全球好评最多的产品。iTunes整合了数字音乐商店和播放器，能够与iPod同步，同时支持Mac和Windows系统，速度很快，性能稳定。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">苹果于2012年对iTunes进行了彻底改版。在一段时间内，这确实让iTunes变得更好。然而随后，iTunes重新变得更臃肿、更复杂、更难用。在近期整合Apple Music流媒体音乐服务后，情况进一步恶化。某天，我试图将两台iPad与iTunes同步，但iTunes对iPad的识别速度很慢。在我的3台Mac电脑上，iTunes运行几乎所有任务的速度都很慢。这些电脑的出厂时间为2013年至2015年。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">苹果需要将iTunes进行拆解。在iOS平台上，苹果已经这样做。在iOS上，iTunes只是一个数字和内容商店，而每一种内容，例如音乐、视频和播客，都有单独的播放应用</span>。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">苹果承认，该公司已在讨论这一问题。然而到目前为止，苹果仍然维持着桌面端臃肿的iTunes，仅仅试图通过优化使其速度更快、问题更少。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">2.邮件</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">苹果在桌面端和移动端的邮件应用曾非常领先，然而近期，尽管加入了一些不错的功能，但我发现这些应用的速度开始变慢，可靠性也在变差。对Gmail邮箱而言，这一点尤为明显。根据我的实际体验，在两大平台上，无论是个人帐号还是企业帐号，苹果邮件收发Gmail邮件的速度都比较慢。一些邮件甚至会丢失，而通过搜索也找不到这些邮件。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">与许多其他Gmail用户一样，我被迫转向谷歌的Gmail应用或网页版服务。苹果表示，这不是该公司，以及其他电子邮件应用厂商能控制的问题。Gmail使用了非标准技术，使谷歌的应用和网站能获得速度优势。(但谷歌以往曾给出过不同的解释。)</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">问题不仅在于Gmail。在iOS和OS X中，你可以找到许多其他邮件应用。这些应用能帮助分类邮件，或是智能过滤出某些类型的邮件。苹果并未涉足这样的技术，而所做的改进仅仅只是手势功能。苹果的垃圾邮件过滤系统以往要胜过竞争对手，但近期也开始出现问题</span>。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">移动版的苹果邮件应用仍无法发送群组邮件，但你可以通过苹果的通讯录应用做到这一点。(苹果表示，这是有意为之，因为iPhone中的群组并非提供给邮件应用使用。)</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">3.照片</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">去年，Mac平台的照片应用获得了重大升级。当时，苹果宣布退役过时的iPhoto，代之以新的照片应用。新应用速度更快、界面更清爽。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">然而根据我的使用体验，<span style=\"font-weight: 700;\">在Mac平台上，可选的iCloud照片库服务能明显优化体验。在我的iPhone和iPad上，照片应用速度很快、显示很准确，然而在桌面平台上，应用的速度很慢</span>。有5万到10万张照片的人并不少见，但在Mac电脑上，查找较老的照片很困难，而一些照片的预览图甚至是一片空白。这不应该是苹果的质量。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">更糟糕的是，苹果在照片应用中集成了iCloud照片库功能，但照片库常常无法在iOS和Mac电脑之间完成正确的同步。(苹果表示，这类问题并不常见。)</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">4.iCloud</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">我认为，苹果软件最严重的问题存在于云计算平台。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">苹果生态系统中的某些应用，例如通讯录和iMessage，能很好地与云端同步。<span style=\"font-weight: 700;\">然而，照片和用户自己的音乐(并非苹果的流媒体音乐)在同步时会出现问题，例如专辑封面同步出错。Safari浏览器的收藏夹只能间断地在苹果设备间同步</span>。与苹果产品上的Kindle应用不同，苹果iBooks无法记忆阅读进度，除非我手动设置标签。通过苹果Pages应用的合作编辑也要比通过谷歌Docs更困难。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">最近，最简单的iOS备份功能也开始出错，而我的两台iPad都出现过问题。其中一台在连续5周时间里都未能成功备份。(这也是我要将iPad与iTunes同步的原因。)</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">设备之间的配合使用是苹果的优势。例如，<span style=\"font-weight: 700;\">苹果提供了Continuity和Handoff功能，帮助用户在Mac电脑上接听电话，或是从手机延续电脑上的任务。苹果表示，我遇到的一些问题，例如iPad备份问题，只在我的特定配置下才会出现</span>。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">情况或许确实如此，但云计算的问题有着更大的模式。实际上，这原本不应出现问题。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">这些问题也并非不可解决。苹果的说法或许是对的，即漏洞不可能被全部发现并解决，而我遇到的问题只在我自己的配置中存在。但我认为，这些问题的出现预示着一些更重要的趋势。小问题往往会积累成大问题，这将使苹果的硬件体验面临风险。</p><p><br/></p>', '', '', '/4\\60.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('61', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">2月4日消息，腾讯云今天给用户发出通知，由于腾讯云平台业务范围调整，将不再维护微信建站服务第三方平台，计划于2016年3月1日彻底关闭微信服务市场。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">对于仍需要继续使用微信建站服务的用户，腾讯表示可直接与其购买的微信建站服务商联系，进行后续的服务沟通。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img.ithome.com/newsuploadfiles/2016/2/20160204_125037_840.jpg\" alt=\"腾讯：3月1日彻底关闭微信服务市场\" style=\"border: 0px; vertical-align: bottom; max-width: 728px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; font-size: 1pc; line-height: 30px; color: rgb(39, 42, 48); font-family: &#39;Microsoft Yahei&#39;; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">资料显示，微信服务市场也被称为微信云，是腾讯提供的安全、高效、优质的微信公众平台服务商托管平台。目前微云通、有赞、微部落等服务商均有入驻。</p><p><br/></p>', '', '', '/4\\61.html', '', '0', '1549');

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
INSERT INTO `cms_column` VALUES ('1', '', '', '2', 'companyProfile.htm', 'companyProfile.htm', null, '1549', '/1', '0');
INSERT INTO `cms_column` VALUES ('2', '', '', '1', 'prodetailsmermaid.htm', 'productCenter.htm', null, '1549', '/2', '0');
INSERT INTO `cms_column` VALUES ('3', '', '', '1', 'newsdetails.htm', 'industryNews.htm', null, '1549', '/3', '5');
INSERT INTO `cms_column` VALUES ('4', '', '', '1', 'technicaldetails.htm', 'technicalKnowledge.htm', null, '1549', '/4', '5');
INSERT INTO `cms_column` VALUES ('5', '', '', '2', 'corporateCulture.htm', 'corporateCulture.htm', null, '1549', '/5', '0');
INSERT INTO `cms_column` VALUES ('6', '', '', '2', 'afterService.htm', 'afterService.htm', null, '1549', '/6', '0');
INSERT INTO `cms_column` VALUES ('7', '', '', '2', 'contactUs.htm', 'contactUs.htm', null, '1549', '/7', '3');
INSERT INTO `cms_column` VALUES ('8', '', '', '1', 'index.htm', 'index.htm', null, '1549', '/8', '0');
INSERT INTO `cms_column` VALUES ('9', '', '', '2', 'foot.htm', null, null, '1549', '/9', '0');
INSERT INTO `cms_column` VALUES ('13', '', '', '2', 'head.htm', null, null, '1549', '/13', '0');
INSERT INTO `cms_column` VALUES ('14', '', '', '2', 'head.htm', null, null, '1549', '/14', '0');

-- ----------------------------
-- Table structure for `cms_contact_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_contact_50`;
CREATE TABLE `cms_contact_50` (
  `basicId` int(11) NOT NULL,
  `contacts` varchar(220) default NULL,
  `tel` varchar(220) default NULL,
  `fax` varchar(220) default NULL,
  `mob` varchar(220) default NULL,
  `qq` varchar(220) default NULL,
  `email` varchar(220) default NULL,
  `postcode` varchar(220) default NULL,
  `url` varchar(220) default NULL,
  `address` varchar(220) default NULL,
  `code` varchar(1000) default NULL,
  PRIMARY KEY  (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_contact_50
-- ----------------------------
INSERT INTO `cms_contact_50` VALUES ('24', '倪经理', '0553-3833117', '0553-3833117', '18715325230', '714633931', 'beifen.ni@yihuonet.com', '241000', 'www.yihuonet.com', '安徽省芜湖市镜湖区观澜路1号滨江商务楼2406室', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义内容模型关联字段表';

-- ----------------------------
-- Records of cms_content_mode_field
-- ----------------------------
INSERT INTO `cms_content_mode_field` VALUES ('4', 'logo-url', 'logourl', '3', '', '1', '2', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('5', '联系人', 'contacts', '1', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('6', '电话', 'tel', '1', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('7', '传真', 'fax', '1', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('8', '手机', 'mob', '1', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('9', 'QQ', 'qq', '1', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('10', '邮箱', 'email', '1', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('11', '邮编', 'postcode', '1', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('12', '网址', 'url', '1', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('13', '地址', 'address', '1', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('14', '二维码', 'code', '7', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('15', '推荐产品', 'recommend', '9', '推荐产品,普通产品', '1', '4', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('16', '发布日期', 'date', '6', '', '1', '5', null, '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义模型表';

-- ----------------------------
-- Records of cms_content_model
-- ----------------------------
INSERT INTO `cms_content_model` VALUES ('3', '联系我们', 'cms_contact_50', '50');
INSERT INTO `cms_content_model` VALUES ('5', '新闻技术', 'cms_newstec_50', '50');

-- ----------------------------
-- Table structure for `cms_newstec_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_newstec_50`;
CREATE TABLE `cms_newstec_50` (
  `basicId` int(11) NOT NULL,
  `date` varchar(40) default NULL,
  PRIMARY KEY  (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_newstec_50
-- ----------------------------
INSERT INTO `cms_newstec_50` VALUES ('20', '2016-01-28');
INSERT INTO `cms_newstec_50` VALUES ('21', '2016-01-05');
INSERT INTO `cms_newstec_50` VALUES ('28', '2016-01-28');
INSERT INTO `cms_newstec_50` VALUES ('29', '2016-01-07');
INSERT INTO `cms_newstec_50` VALUES ('30', '2016-01-28');
INSERT INTO `cms_newstec_50` VALUES ('31', '2016-01-29');
INSERT INTO `cms_newstec_50` VALUES ('32', '2016-01-29');
INSERT INTO `cms_newstec_50` VALUES ('33', '2016-01-29');
INSERT INTO `cms_newstec_50` VALUES ('34', '2016-01-29');
INSERT INTO `cms_newstec_50` VALUES ('35', '2016-01-29');
INSERT INTO `cms_newstec_50` VALUES ('36', '2016-01-29');
INSERT INTO `cms_newstec_50` VALUES ('37', '2016-01-29');
INSERT INTO `cms_newstec_50` VALUES ('38', '2016-01-29');
INSERT INTO `cms_newstec_50` VALUES ('39', '2016-01-29');
INSERT INTO `cms_newstec_50` VALUES ('40', '2016-01-29');
INSERT INTO `cms_newstec_50` VALUES ('42', '2016-02-03');
INSERT INTO `cms_newstec_50` VALUES ('43', '2016-02-03');
INSERT INTO `cms_newstec_50` VALUES ('44', '2016-02-03');
INSERT INTO `cms_newstec_50` VALUES ('48', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('49', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('50', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('51', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('52', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('53', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('54', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('55', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('56', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('57', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('58', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('59', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('60', '2016-02-04');
INSERT INTO `cms_newstec_50` VALUES ('61', '2016-02-04');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义表单字段表';

-- ----------------------------
-- Records of diy_form_field
-- ----------------------------

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
