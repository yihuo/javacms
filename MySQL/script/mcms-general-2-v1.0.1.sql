/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : db-mcms-open

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2016-01-22 15:52:30
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
INSERT INTO `app` VALUES ('1549', '安徽易活网络技术有限公司', 'http://10.0.0.206:8080', '', 'Tillage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \r\nSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design', 'support by yihuonet', 'general-2', '50', '', null, 'm', null, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='基础表';

-- ----------------------------
-- Records of basic
-- ----------------------------
INSERT INTO `basic` VALUES ('30', '洋葱便宜卖啦', '看得见疯狂减肥独守空房空间的菲尼克斯健康妇女看到你发加快速度发你看的舒服你看了', '/upload/article/1549/1453279266349.png', '0', '0', '2016-01-18 15:15:00', '2016-01-21 16:26:08', '0', '58', '1549', '8');
INSERT INTO `basic` VALUES ('31', '最近芜湖市雾霭严重', '监控力度；撒娇凯撒的快乐撒到了你卡考虑到可能啦看来你打开了看来你', '/upload/article/1549/1453279256810.jpg', '0', '0', '2016-01-18 15:21:31', '2016-01-21 16:26:02', '0', '58', '1549', '8');
INSERT INTO `basic` VALUES ('32', '太空空间站培育出菊花', '啊就看到撒健康的撒看得见；啊大家撒健康', '/upload/article/1549/1453279280248.jpg', '0', '0', '2016-01-18 15:23:55', '2016-01-21 16:25:56', '0', '58', '1549', '8');
INSERT INTO `basic` VALUES ('33', '笔记本电脑清仓处理', '分类；撒开房间看电视卡了附近开了萨芬加快了深刻理解妇科大夫来看', '/upload/article/1549/1453279292694.jpg', '0', '0', '2016-01-18 15:29:04', '2016-01-21 16:25:51', '0', '58', '1549', '8');
INSERT INTO `basic` VALUES ('34', '六个核桃牛奶减价啦', '数据库来得及啦是假的啦圣诞节啦是林科大死了卡死监控力度来看打开拉萨快乐就', '/upload/article/1549/1453355112129.jpg', '0', '0', '2016-01-18 15:31:50', '2016-01-21 16:25:45', '0', '58', '1549', '8');
INSERT INTO `basic` VALUES ('35', '枯藤老树昏鸦,小桥流水人家.', '', '/upload/article/1549/1453447228986.png', '0', '0', '2016-01-19 13:45:16', '2016-01-22 15:20:30', '0', '60', '1549', '8');
INSERT INTO `basic` VALUES ('36', '活动页面标题', '', '/upload/article/1549/1453447238013.png', '0', '0', '2016-01-19 13:46:54', '2016-01-22 15:20:38', '0', '60', '1549', '8');
INSERT INTO `basic` VALUES ('37', '瀑布直下三千尺', '', '/upload/article/1549/1453447249939.png', '0', '0', '2016-01-19 13:49:59', '2016-01-22 15:20:50', '0', '60', '1549', '8');
INSERT INTO `basic` VALUES ('38', '我们的服务内容', 'Our service content', '/upload/article/1549/1453183659608.jpg', '0', '0', '2016-01-19 14:08:49', '2016-01-19 14:41:08', '0', '61', '1549', '8');
INSERT INTO `basic` VALUES ('43', '服务项目一', '立刻大叫卡萨定了的法兰克福李可我离开', '/upload/article/1549/1453448313800.png', '0', '0', '2016-01-19 14:44:13', '2016-01-22 15:38:34', '0', '62', '1549', '8');
INSERT INTO `basic` VALUES ('44', '服务项目二', '看来加大了可就大路口四大皆空啦圣诞节啦是；离开多久啊使劲打我；浪打浪；安定；啦；里的；啦；了', '/upload/article/1549/1453448319402.png', '0', '0', '2016-01-19 14:44:55', '2016-01-22 15:38:39', '0', '62', '1549', '8');
INSERT INTO `basic` VALUES ('45', '服务项目三', '看撒大家快乐数据库；阿桑；了解到家了；爱上了；觉得卡死了', '/upload/article/1549/1453448325199.png', '0', '0', '2016-01-19 14:45:31', '2016-01-22 15:38:45', '0', '62', '1549', '8');
INSERT INTO `basic` VALUES ('46', '服务项目四', '看得见啦是大拉开打开拉萨快乐打开了；爱哭的', '/upload/article/1549/1453448331184.png', '0', '0', '2016-01-19 14:46:20', '2016-01-22 15:38:52', '0', '62', '1549', '8');
INSERT INTO `basic` VALUES ('47', '关于我们', '易食客”是由它的创始人臧云龙、陆超先生带领一批来自全国的大学生创始的互联网\r\n电商平台，是芜湖市政府“大学生创业重点孵化项目”。', '/upload/article/1549/1453187208172.jpg', '0', '0', '2016-01-19 15:13:12', '2016-01-19 15:13:12', '0', '63', '1549', '8');
INSERT INTO `basic` VALUES ('48', '安徽易活网络技术有限公司', '易食客”是由它的创始人臧云龙、陆超先生带领一批来自全国的大学生创始的互联网<br/>\r\n电商平台，是芜湖市政府“大学生创业重点孵化项目”。', '/upload/article/1549/1453354841485.jpg', '0', '0', '2016-01-19 15:23:50', '2016-01-21 13:40:46', '0', '56', '1549', '8');
INSERT INTO `basic` VALUES ('49', '爱迪生', '啊路上看到康拉德可没拉萨快乐大声哭了；打开了撒打开了吗； ', '/upload/article/1549/1453188809232.jpg', '0', '0', '2016-01-19 15:34:04', '2016-01-19 15:34:04', '0', '64', '1549', '8');
INSERT INTO `basic` VALUES ('50', '爱因斯坦', '扩大是多么那是；拉丁名；拉上的吗；啦；里面多了；马冬梅；拉链门', '/upload/article/1549/1453188853129.jpg', '0', '0', '2016-01-19 15:34:53', '2016-01-19 15:34:53', '0', '64', '1549', '8');
INSERT INTO `basic` VALUES ('51', '居里夫人', '大家看撒可怜的卢卡申科拉萨快乐打开了萨都剌撒看吗、啊、塑料袋', '/upload/article/1549/1453188907254.jpg', '0', '0', '2016-01-19 15:35:41', '2016-01-19 15:35:41', '0', '64', '1549', '8');
INSERT INTO `basic` VALUES ('52', '牛顿', '啊什么了，但那是快乐的你看了撒到那时，。打撒大，。你、 ', '/upload/article/1549/1453188968889.jpg', '0', '0', '2016-01-19 15:36:49', '2016-01-19 15:36:49', '0', '64', '1549', '8');
INSERT INTO `basic` VALUES ('53', '霍金', '就看到撒的呢快乐撒了看你电脑卡了是离开的可怜的看拉沙德尼可拉斯离开你的离开你撒看来你', '/upload/article/1549/1453189054315.jpg', '0', '0', '2016-01-19 15:38:03', '2016-01-19 15:38:03', '0', '64', '1549', '8');
INSERT INTO `basic` VALUES ('54', '可路莎', '就看到撒打开了撒打开了撒看来打开了速度快拉萨快乐得利卡', '/upload/article/1549/1453189144774.jpg', '0', '0', '2016-01-19 15:39:28', '2016-01-19 15:39:28', '0', '64', '1549', '8');
INSERT INTO `basic` VALUES ('55', '玛利亚', '代码，什么，阿森纳的撒，代码，按什么，大甩卖，代码，啊，吗', '/upload/article/1549/1453189182679.jpg', '0', '0', '2016-01-19 15:40:07', '2016-01-19 15:40:07', '0', '64', '1549', '8');
INSERT INTO `basic` VALUES ('56', '卡里', '开始的马尼拉凯迪拉克打算离开的离开李可', '/upload/article/1549/1453189226262.jpg', '0', '0', '2016-01-19 15:40:55', '2016-01-19 15:40:55', '0', '64', '1549', '8');
INSERT INTO `basic` VALUES ('57', '主要产品一', '道具卡什么打算你可拉倒克拉斯快乐的', '', '0', '0', '2016-01-19 16:04:09', '2016-01-20 15:16:32', '0', '65', '1549', '8');
INSERT INTO `basic` VALUES ('58', '主要产品二', '撒看得见拉开撒大家快乐撒旦；拉撒路；大；顺利打开；拉萨打开', '', '0', '0', '2016-01-19 16:04:41', '2016-01-20 15:13:44', '0', '65', '1549', '8');
INSERT INTO `basic` VALUES ('59', '主要产品三', '扣篮大赛快乐大了；爱上了的啦；啊；对啦', '', '0', '0', '2016-01-19 16:11:19', '2016-01-19 16:11:19', '0', '65', '1549', '8');
INSERT INTO `basic` VALUES ('60', '主要产品四', '了；啊打开了；啊都没空啦；大的；啊；大量；暗恋；， ', '', '0', '0', '2016-01-19 16:11:51', '2016-01-20 15:13:55', '0', '65', '1549', '8');
INSERT INTO `basic` VALUES ('61', '主要产品五', '了；扩大看到了；阿斯利康；达拉斯；看得开；安定', '', '0', '0', '2016-01-19 16:12:47', '2016-01-20 15:14:03', '0', '65', '1549', '8');
INSERT INTO `basic` VALUES ('62', '主要产品六', '大家凯撒阶段；撒娇来看；的；阿桑；打算；林科大；啊路上看到了；啊', '', '0', '0', '2016-01-19 16:13:38', '2016-01-20 15:14:10', '0', '65', '1549', '8');
INSERT INTO `basic` VALUES ('63', '产品项目一', '', '/upload/article/1549/1453192661845.jpg', '0', '0', '2016-01-19 16:37:58', '2016-01-19 16:37:58', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('64', '产品项目二', '', '/upload/article/1549/1453192691375.jpg', '0', '0', '2016-01-19 16:38:17', '2016-01-19 16:38:17', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('65', '产品项目三', '', '/upload/article/1549/1453192709491.jpg', '0', '0', '2016-01-19 16:38:41', '2016-01-19 16:38:41', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('66', '产品项目四', '', '/upload/article/1549/1453192736354.jpg', '0', '0', '2016-01-19 16:39:01', '2016-01-19 16:39:01', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('67', '产品项目五', '', '/upload/article/1549/1453192776457.jpg', '0', '0', '2016-01-19 16:39:43', '2016-01-19 16:39:43', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('68', '产品项目六', '', '/upload/article/1549/1453192798938.jpg', '0', '0', '2016-01-19 16:40:04', '2016-01-19 16:40:04', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('69', '产品项目七', '', '/upload/article/1549/1453192826084.jpg', '0', '0', '2016-01-19 16:40:29', '2016-01-19 16:40:29', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('70', '产品项目八', '', '/upload/article/1549/1453192844213.jpg', '0', '0', '2016-01-19 16:40:48', '2016-01-19 16:40:48', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('71', '产品项目九', '', '/upload/article/1549/1453192874789.jpg', '0', '0', '2016-01-19 16:41:18', '2016-01-19 16:41:18', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('72', '产品项目十', '', '/upload/article/1549/1453192896138.jpg', '0', '0', '2016-01-19 16:41:39', '2016-01-19 16:41:39', '0', '66', '1549', '8');
INSERT INTO `basic` VALUES ('73', '联系我们', '', '/upload/article/1549/1453195497934.png', '0', '0', '2016-01-19 17:25:51', '2016-01-19 17:25:51', '0', '59', '1549', '8');
INSERT INTO `basic` VALUES ('74', '脚部文字', '', '', '0', '0', '2016-01-20 16:57:14', '2016-01-20 17:00:27', '0', '67', '1549', '8');
INSERT INTO `basic` VALUES ('75', '购物网站', '', '/upload/article/1549/1453445459718.jpg', '0', '0', '2016-01-22 14:52:10', '2016-01-22 14:52:10', '0', '57', '1549', '8');
INSERT INTO `basic` VALUES ('76', '手机网站', '', '/upload/article/1549/1453445771446.jpg', '0', '0', '2016-01-22 14:56:35', '2016-01-22 14:56:35', '0', '57', '1549', '8');
INSERT INTO `basic` VALUES ('77', '售楼网站', '', '/upload/article/1549/1453445814202.jpg', '0', '0', '2016-01-22 14:57:22', '2016-01-22 14:57:22', '0', '57', '1549', '8');
INSERT INTO `basic` VALUES ('78', '牛奶专卖网站', '', '/upload/article/1549/1453445864383.jpg', '0', '0', '2016-01-22 14:58:12', '2016-01-22 14:58:12', '0', '57', '1549', '8');
INSERT INTO `basic` VALUES ('79', '空气净化器网站', '', '/upload/article/1549/1453445912269.jpg', '0', '0', '2016-01-22 14:58:45', '2016-01-22 14:58:45', '0', '57', '1549', '8');
INSERT INTO `basic` VALUES ('80', '汽车网站', '', '/upload/article/1549/1453445941820.jpg', '0', '0', '2016-01-22 14:59:12', '2016-01-22 14:59:12', '0', '57', '1549', '8');
INSERT INTO `basic` VALUES ('81', '航班票网站', '', '/upload/article/1549/1453446001448.jpg', '0', '0', '2016-01-22 15:00:12', '2016-01-22 15:00:12', '0', '57', '1549', '8');
INSERT INTO `basic` VALUES ('82', '汽车票网站', '', '/upload/article/1549/1453446035129.jpg', '0', '0', '2016-01-22 15:00:53', '2016-01-22 15:00:53', '0', '57', '1549', '8');
INSERT INTO `basic` VALUES ('83', '火车票网站', '', '/upload/article/1549/1453446072377.jpg', '0', '0', '2016-01-22 15:01:23', '2016-01-22 15:01:23', '0', '57', '1549', '8');

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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('56', '关于我们', '0', '2016-01-18 11:08:14', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('57', '产品中心', '0', '2016-01-18 11:08:50', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('58', '新闻快报', '0', '2016-01-18 11:10:48', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('59', '联系我们', '0', '2016-01-18 11:11:09', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('60', '活动广告', '0', '2016-01-19 13:41:10', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('61', '服务内容', '0', '2016-01-19 14:05:32', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('62', '服务项目', '0', '2016-01-19 14:43:01', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('64', '我们的团队', '0', '2016-01-19 15:33:02', '50', '7', '0', null, '1549', null);
INSERT INTO `category` VALUES ('67', '脚部信息', '0', '2016-01-20 16:55:35', '50', '7', '0', null, '1549', null);

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
INSERT INTO `cms_article` VALUES ('30', '张六', '<p>杰弗里斯快疯了看的舒服的就发了快递发了浪费看电视来开发建设电缆附件开始就的看法克利夫兰加快速度交流方式来到了弗兰克放松的方式，放你那看来打开了李开复。解放军额晚饭；立刻问了；快疯了；胃痉挛；分厘卡；我发了；科技委；李开复；刘恺威弗兰克；俄文楼；进口废物；开发；了我；楼房；离开违法；刘恺威；李开复；离开违法；刘恺威；饿了开发；刘恺威；洛克菲勒；口味；浪费我；饿了开发；洛克王；楼房；两位客服；刘恺威；楼房；李伟；联发科；了我；李开复；两位来访；李玮峰；李伟；楼房；李伟；陆放翁；了；放了我；了；李可</p>', '', '安徽易活网络技术公司', '/58\\30.html', '劳烦你了是否考虑到是你离开你', '0', '1549');
INSERT INTO `cms_article` VALUES ('31', '张衡', '<p>激动撒立刻大叫了撒等级考试德甲联赛卡德加撒立刻大叫快乐撒；大家拉可视对讲卡了撒健康；大家快来撒到了会计师；爱的健康时间到了看撒的空间。解放军额晚饭；立刻问了；快疯了；胃痉挛；分厘卡；我发了；科技委；李开复；刘恺威弗兰克；俄文楼；进口废物；开发；了我；楼房；离开违法；刘恺威；李开复；离开违法；刘恺威；饿了开发；刘恺威；洛克菲勒；口味；浪费我；饿了开发；洛克王；楼房；两位客服；刘恺威；楼房；李伟；联发科；了我；李开复；两位来访；李玮峰；李伟；楼房；李伟；陆放翁；了；放了我；了；李可</p>', '', '安徽易活网络技术公司', '/58\\31.html', '都看见了；撒都没上课打开吗', '0', '1549');
INSERT INTO `cms_article` VALUES ('32', '李升', '<p>来看撒地方上的；拉开东方斯卡拉；放大来看撒发你的快乐撒开放的开了萨福克离开了洛克菲勒看电视开发离开了克劳福德上课了看了吗撒到了门口离开门口卡里。解放军额晚饭；立刻问了；快疯了；胃痉挛；分厘卡；我发了；科技委；李开复；刘恺威弗兰克；俄文楼；进口废物；开发；了我；楼房；离开违法；刘恺威；李开复；离开违法；刘恺威；饿了开发；刘恺威；洛克菲勒；口味；浪费我；饿了开发；洛克王；楼房；两位客服；刘恺威；楼房；李伟；联发科；了我；李开复；两位来访；李玮峰；李伟；楼房；李伟；陆放翁；了；放了我；了；李可</p>', '', '安徽易活网络技术公司', '/58\\32.html', '离开就对了撒快点快', '0', '1549');
INSERT INTO `cms_article` VALUES ('33', '陈二妮', '<p>弗兰克；决定是否快乐；卡思乐；附近的是否离开；多少；浪费了看；适当放宽；多少；看来付款；老师到付款；老师的；快疯了；收到了卡夫卡；历史地看；份；卡里。解放军额晚饭；立刻问了；快疯了；胃痉挛；分厘卡；我发了；科技委；李开复；刘恺威弗兰克；俄文楼；进口废物；开发；了我；楼房；离开违法；刘恺威；李开复；离开违法；刘恺威；饿了开发；刘恺威；洛克菲勒；口味；浪费我；饿了开发；洛克王；楼房；两位客服；刘恺威；楼房；李伟；联发科；了我；李开复；两位来访；李玮峰；李伟；楼房；李伟；陆放翁；了；放了我；了；李可</p>', '', '安徽易活网络技术公司', '/58\\33.html', '亏大发了是否快乐富兰克林', '0', '1549');
INSERT INTO `cms_article` VALUES ('34', '何晓云', '<p>快乐撒了；德库拉；撒打开了；撒；来的撒了；的；拉萨的凯撒；的；拉萨；的；拉萨看到；卢卡斯；离开的撒；浪打浪；卡萨定了；凯撒；离开的撒了；卡掉了；卡萨定了；；浪打浪了解到说分就分撒娇克劳福德快乐看来放得开连释迦佛考虑考虑的风景恐龙危机看来付款理解为付款了未来科技；房间里哭；为解放路口；文理科；解放军额晚饭；立刻问了；快疯了；胃痉挛；分厘卡；我发了；科技委；李开复；刘恺威弗兰克；俄文楼；进口废物；开发；了我；楼房；离开违法；刘恺威；李开复；离开违法；刘恺威；饿了开发；刘恺威；洛克菲勒；口味；浪费我；饿了开发；洛克王；楼房；两位客服；刘恺威；楼房；李伟；联发科；了我；李开复；两位来访；李玮峰；李伟；楼房；李伟；陆放翁；了；放了我；了；李可</p>', '', '安徽易活网络技术公司', '/58\\34.html', '但卢卡申科打开；撒旦；是；康拉德；算了', '0', '1549');
INSERT INTO `cms_article` VALUES ('35', '', '', '', '', '/60\\35.html', '撒肯定没看了撒；的；雷克萨； 了', '0', '1549');
INSERT INTO `cms_article` VALUES ('36', '', '', '', '', '/60\\36.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('37', '', '', '', '', '/60\\37.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('38', '牛小二', '<p>考虑到你们卡洛斯、都没空啦什么点卡买点卡；爱上都没了；按什么；老大没了；山东墨龙；爱上都没了；阿拉丁；安利的哇；里的；拉我到；李伟；多了；安利完美的；了哇么；的啦我的；啦我们的；瓦们的了哇来的吗；拉我到；拉面；啊我们老大；目录；来电了吗；</p>', '', '安徽易活网络技术公司', '/61\\38.html', '当时的快乐圣诞快乐时刻；到门口了； ', '0', '1549');
INSERT INTO `cms_article` VALUES ('46', '高校及', '<p>撒莱卡的美女快乐、代码；啊；老大没啦；的；亲爱的；；罗安达；服务考虑多方面考虑；为父母考虑；俄克拉；我马卡连柯；没法看；额外；离开么我都没；了</p>', '', '安徽易活网络技术公司', '/62\\46.html', '凯迪拉克老大；拉萨看到；拉马拉； ', '0', '1549');
INSERT INTO `cms_article` VALUES ('45', '和小人', '<p>的；啦老师看到了；爱上看到了；爱上了扩大贷款啊盛大速度；打开；奥东科；安定；爱仕达；对啊是的啊是的啦收到了安德拉德；&nbsp;</p>', '', '安徽易活网络技术公司', '/62\\45.html', '是啦快点金坷垃就看到啦了；速度卡了', '0', '1549');
INSERT INTO `cms_article` VALUES ('44', '大小和', '<p>打开啦算了空间的；啦收到了；啊打了德库拉死了；大厦栋梁；爱丽丝；看得开；拉萨的卡的；啊；大大的啊；带来的；立方米；S方面；拉面；挨骂了没法满了；疯啦；立方米，了；啊；理发；了</p>', '', '安徽易活网络技术公司', '/62\\44.html', '大立科技；啊空间里的；看见了；撒大家来看；爱上了；多了； ', '0', '1549');
INSERT INTO `cms_article` VALUES ('43', '复效嗨', '<p>看来分泌物；克里夫；额看了吗服务；了饭没了；为父母；了网络免费为嘛；立方米；两位麻烦；里面问了；吗；父母为了父母了；额我们浪费；为了父母；两位浪费了</p>', '', '安徽易活网络技术公司', '/62\\43.html', '离开范围课；发麻；我；了', '0', '1549');
INSERT INTO `cms_article` VALUES ('47', '单小计', '<p><span style=\"color: rgb(51, 51, 51); font-family: &#39;Open Sans&#39;, sans-serif; font-size: 14px; font-weight: 600; line-height: 25.2000007629395px; background-color: rgb(255, 255, 255);\">“易食客”是由它的创始人臧云龙、陆超先生带领一批来自全国的大学生创始的互联网电商平台，是芜湖市政府“大学生创业重点孵化项目”。易食客核心领导层都有着海外留学背景，凭借更为广阔的视野和敢拼敢创的精神，公司从最初的2名创始成员发展到30人的规模，且平均年龄不到25岁，是一支极具生命力和挑战力的年轻团队。</span></p>', '', '安徽易活网络技术公司', '/63\\index.html', '安徽易活网络技术有限公司', '0', '1549');
INSERT INTO `cms_article` VALUES ('48', '何导客', '<p><span style=\"color: rgb(51, 51, 51); font-family: &#39;Open Sans&#39;, sans-serif; font-size: 14px; font-weight: 600; line-height: 25.2000007629395px; background-color: rgb(255, 255, 255);\">“易食客”是由它的创始人臧云龙、陆超先生带领一批来自全国的大学生创始的互联网电商平台，是芜湖市政府“大学生创业重点孵化项目”。易食客核心领导层都有着海外留学背景，凭借更为广阔的视野和敢拼敢创的精神，公司从最初的2名创始成员发展到30人的规模，且平均年龄不到25岁，是一支极具生命力和挑战力的年轻团队。</span></p>', '', '安徽易活网络技术公司', '/56\\index.html', '安徽易活网络技术有限公司123', '0', '1549');
INSERT INTO `cms_article` VALUES ('49', '盒盖', '<p>了；大量；的；了吗美丽的；啊；算了面对面；爱上都没了；撒；来的撒了吗；定了吗；爱上了没电了；啊没事的；拉马拉；没动；啦收到了吗；啊；里的；啦；啦；了</p>', '', '安徽易活网络技术公司', '/64\\49.html', '可怜的萨满卡拉速度快来看； ', '0', '1549');
INSERT INTO `cms_article` VALUES ('50', '几小可', '<p>的；路上慢点；拉萨来的；都没了；啊什么了；撒；老大没啦；撒；来电了吗；啊善良的；马上；浪打浪；阿桑；老妈打了；萨都剌；马上；老妈打了；萨都剌；暗恋；马拉美；大量；拉面；</p>', '', '安徽易活网络技术公司', '/64\\50.html', '打开；了我妈看了；山东墨龙；啊老妈打；拉马拉； ', '0', '1549');
INSERT INTO `cms_article` VALUES ('51', '刻意', '<p>；浪费掉了；多萨里，大量；阿桑；，楼房，阿桑；份，；拉萨；了；第三方，‘啊；发，’发达，的，啊，；多发发答案发；&nbsp;</p>', '', '安徽易活网络技术公司', '/64\\51.html', '德库拉；阿桑；来电了吗撒；到了吗洒落； ', '0', '1549');
INSERT INTO `cms_article` VALUES ('52', '趁机', '<p>电脑上的呢，马上你们，。代码，撒旦撒，。马达，没事的，。吗，。的，。阿桑，。打打开大门萨达姆，。阿桑，。，撒没得</p>', '', '安徽易活网络技术公司', '/64\\52.html', '都没撒到那时大了', '0', '1549');
INSERT INTO `cms_article` VALUES ('53', '一下呢', '<p>克拉斯大卡司；老大没啦；萨都剌；阿桑；里的；拉萨；但拉萨来的；拉撒路；大量；是的；拉萨；里的；拉萨；达拉斯；里的；拉萨；老大；拉萨；了</p>', '', '安徽易活网络技术公司', '/64\\53.html', '扩大快乐的时刻拉德科马赛克；德库拉；阿桑的撒来看；的；里面撒老大；；阿桑', '0', '1549');
INSERT INTO `cms_article` VALUES ('54', '孔翎牌', '<p>打开；拉萨的凯撒没看到卡；是的；老卡上的玫琳凯；啊；老大没啦；是；老大；里的；拉萨；鲁大师离开的门口；撒旦；两码事；马路对面；拉萨；拉面店；了吗；了</p>', '', '安徽易活网络技术公司', '/64\\54.html', '快乐撒肯定没撒看、打开', '0', '1549');
INSERT INTO `cms_article` VALUES ('55', '李欧赔', '<p>了；的撒旦撒扣篮大赛快乐的时刻啦上课；了；大量；；拉萨；里的；洒落；的；拉萨；浪打浪；是的；拉萨；里的；拉萨；老大；里的；了；了；了</p>', '', '安徽易活网络技术公司', '/64\\55.html', '快乐撒免得卡门口； 没考虑； ', '0', '1549');
INSERT INTO `cms_article` VALUES ('56', '牛彩', '<p>看撒大；的；啦点解啊；大量；啊收到了；啊是的啦；老师的；拉沙德；拉萨；老大说了；的；拉沙德；拉萨来的拉萨的；拉萨；了；鲁大师；了；里的；了</p>', '', '安徽易活网络技术公司', '/64\\56.html', '是的，骄傲了迪克兰但喀喇昆仑离开的', '0', '1549');
INSERT INTO `cms_article` VALUES ('57', '好图', '<p>看到了撒没电了、啊什么都没；啦收到了吗；按什么，浪打浪；啊收到了；马上到了；阿拉丁；拉都没了</p>', '', '安徽易活网络技术公司', '/65\\57.html', '快乐的吗收到了；暗恋', '0', '1549');
INSERT INTO `cms_article` VALUES ('74', '', '<p>© 2014-2016 安徽易活网络技术有限公司（Anhui YiHuo Network Co.,Ltd.） All Rights Reserved. | 网站备案：皖ICP备14007008号-2 客服电话：4008-553-758 | E-mail:helpdesk@yihuonet.com。。。</p>', '', '', '/67\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('58', '特热闹', '<p>了；打算；老大什么劳动力；阿桑；老大；的；罗安达，；拉链；的；罗安达，；啦；拉面，大；里的</p>', '', '安徽易活网络技术公司', '/65\\58.html', '老卡上的就快啦圣诞节快啦多了；辣椒面；', '0', '1549');
INSERT INTO `cms_article` VALUES ('59', '喝的哈', '<p>；拉萨打开了；啊打开了啊打打气；‘ 阿桑，；多大是大的大量；阿拉丁；暗恋；大量；暗恋；大量；&nbsp;</p>', '', '安徽易活网络技术公司', '/65\\59.html', '看；老大说了看；点卡', '0', '1549');
INSERT INTO `cms_article` VALUES ('60', '估计安静的', '<p>；里的卡了；点卡了；打开；爱哭的；啊快打；安定；’安定；大；；‘大；的；啊；大；的&nbsp;</p>', '', '安徽易活网络技术公司', '/65\\60.html', '就看到啦；大量；啊； ', '0', '1549');
INSERT INTO `cms_article` VALUES ('61', '呵呵', '<p>大量；洒落的卡死了；大量；爱上了的卡是大事；打算；的；；安定；啊；的；啊；’安定；啊；的；啊大量；啊老大没啦&nbsp;</p>', '', '安徽易活网络技术公司', '/65\\61.html', '打撒大；啦收到了；啊；了', '0', '1549');
INSERT INTO `cms_article` VALUES ('62', '建德库拉', '<p>；哦啊打开；阿桑；拉达克；是的；卢卡申科；拉达克；里的；卡；浪打浪；卡；快乐大了；速度卡了</p>', '', '安徽易活网络技术公司', '/65\\62.html', '；辣的啦；罗德里克；啊圣诞快乐；啊；林科大；李可', '0', '1549');
INSERT INTO `cms_article` VALUES ('63', '', '', '', '', '/66\\63.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('64', '', null, '', '', '/66\\64.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('65', '', null, '', '', '/66\\65.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('66', '', null, '', '', '/66\\66.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('67', '', null, '', '', '/66\\67.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('68', '', null, '', '', '/66\\68.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('69', '', null, '', '', '/66\\69.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('70', '', null, '', '', '/66\\70.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('71', '', null, '', '', '/66\\71.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('72', '', null, '', '', '/66\\72.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('73', '', '<h5 style=\"box-sizing: border-box; font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.8em; color: rgb(150, 150, 150); margin: 1em 0px; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">“易食客”是由它的创始人臧云龙、陆超先生带领一批来自全国的大学生创始的互联网<span style=\"box-sizing: border-box; display: block;\">电商平台，是芜湖市政府“大学生创业重点孵化项目”。</span></h5><p><br/></p>', '', '', '/59\\index.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('75', '', '<p>地理空间撒拉开打开拉速度快加拉塞克老大深刻理解德库拉数控刀具拉萨来的拉萨看到老卡上的刻录机啊路上看到看拉速度快看来的撒来看多久啊是断开连接啊拉萨看到克拉斯快乐到家卡洛斯断开连接啊拉开打开拉力机但老卡上的刻录机啊路上看到拉萨打开。</p>', '', '', '/57\\75.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('76', '', '<p>看到父母克里斯蒂联发科的事了；大量；房东说了；份；浏览速度；楼房；老师的；了烦死了；宽带；理发师；洛克菲勒；可是对方；看来是大；楼房；老卡上的；来发生的；楼房；上课了；理发师；李开复；卢卡斯；骷髅法师；里的；龙口粉丝；开发；是否；老师的；龙口粉丝；老地方；了；龙口粉丝；楼房；老卡上的。</p>', '', '', '/57\\76.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('77', '', '<p>老卡上的金坷垃深刻理解大家快乐；啊收到了；阿桑；里的；拉沙德；拉萨；拉到拉萨的；啦；里的；拉沙德；了，啊；老大；里的；罗安达；拉力赛，的；‘啊；老师打速度啊盛大盛大盛大盛大速度啊大厦栋梁；了；大量；阿兰德龙；按道理；阿桑；里的；拉萨来的；&nbsp;</p>', '', '', '/57\\77.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('78', '', '<p>看、打开；爱上都没了；萨摩，代码，鲁大师，了；的，算了；了，多少，里的，撒旦，拉萨，打撒大，阿桑，；大，是的；，啊是的撒；，打算；，打撒大；，阿桑；大叔大叔；大叔大叔大叔；，打啊；‘ ；’，打算；打撒大；啊对啊是的</p>', '', '', '/57\\78.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('79', '', '<p>几年的快速拉空间的拉萨快乐的空间拉萨快乐激动撒看拉撒路空间打开可怜的卡垃圾的就卡死了快点可理解啊是的健康快乐看来大家快乐；安静看来大家快乐萨克雷大家看；撒大家快乐；卡里；就；老大；乐扣乐扣；昂科拉；打开；速度快；阿桑；林科大；老卡上的；卡里；阿斯顿；啦；了。</p>', '', '', '/57\\79.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('80', '', '<p>健康乱搭乱建啊圣诞快乐就深刻理解啊打开了拉萨打开吉林省可怜的克拉斯看了大哭灵山德库拉是可怜的看拉萨打开了看来是可怜的看拉萨打开了久爱时空拉家带口拉萨快乐但喀喇昆仑的可怜的看拉倒克拉克啦快啦来看李可。</p>', '', '', '/57\\80.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('81', '', '<p>是；啦快点；拉萨；老卡掉了；卡萨丁；拉撒路；的；拉萨多了；阿桑；老大；塑料袋；拉沙德；拉萨；里的；啦；离开队伍；啊；离开的卡；外地；了；忘啦；里的；暗恋；林科大；来挖；落袋为安；里的；李伟；啦；老搭档；；暗恋我；了；了。</p>', '', '', '/57\\81.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('82', '', '<p>的理解库萨克来的撒快乐的撒来看打开拉萨可怜的萨满可怜的门口啦什么；老大说了；拉达克；；里面看到离开的撒了开打开了；但喀喇昆仑看拉到门口；看；啊吗；拉里面的吗；啊；目录。</p>', '', '', '/57\\82.html', '', '0', '1549');
INSERT INTO `cms_article` VALUES ('83', '', '<p>离开的撒看到了撒空间大家拉开速度快拉撒路；点卡；里的；拉劳动力；安定；拉萨；里的；拉链；宽带；罗安达；啦；里的；拉链；点卡；的；拉我到；啦；浪打浪；我；里的；拉我到；；来挖；来打我了；了；大量；，暗恋；&nbsp;</p>', '', '', '/57\\83.html', '', '0', '1549');

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
INSERT INTO `cms_column` VALUES ('56', '', '', '2', 'about.htm', null, null, '1549', '/56', '0');
INSERT INTO `cms_column` VALUES ('57', '', '', '1', 'products_details.htm', 'products.htm', null, '1549', '/57', '0');
INSERT INTO `cms_column` VALUES ('58', '', '', '1', 'news_details.htm', 'news.htm', null, '1549', '/58', '0');
INSERT INTO `cms_column` VALUES ('59', '', '', '2', 'mail.htm', null, null, '1549', '/59', '3');
INSERT INTO `cms_column` VALUES ('60', '', '', '1', 'about.htm', 'about.htm', null, '1549', '/60', '0');
INSERT INTO `cms_column` VALUES ('61', '收到了快点开始了电脑上看了电视卡了点但雷克萨可怜的看马尼拉什么呢打开；来卡吗快乐；打底裤；啦', '的那算了多梅内克啦是的看看', '2', 'about.htm', 'about.htm', null, '1549', '/61', '0');
INSERT INTO `cms_column` VALUES ('62', '', '', '1', 'about.htm', 'about.htm', null, '1549', '/62', '0');
INSERT INTO `cms_column` VALUES ('64', '', '', '1', 'about.htm', 'about.htm', null, '1549', '/64', '0');
INSERT INTO `cms_column` VALUES ('67', '', '', '2', 'foot.htm', null, null, '1549', '/67', '0');

-- ----------------------------
-- Table structure for `cms_contact_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_contact_50`;
CREATE TABLE `cms_contact_50` (
  `basicId` int(11) NOT NULL,
  `address` varchar(500) default NULL,
  `phone` varchar(220) default NULL,
  `email` varchar(220) default NULL,
  PRIMARY KEY  (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_contact_50
-- ----------------------------
INSERT INTO `cms_contact_50` VALUES ('73', '安徽省芜湖市\r\n观澜路1号\r\n滨江商务楼2406', '0553-3833117', 'helpdesk@yihuonet.com');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义内容模型关联字段表';

-- ----------------------------
-- Records of cms_content_mode_field
-- ----------------------------
INSERT INTO `cms_content_mode_field` VALUES ('5', '地址', 'address', '2', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('6', '电话', 'phone', '1', '', '1', '3', null, '1');
INSERT INTO `cms_content_mode_field` VALUES ('7', '邮箱', 'email', '1', '', '1', '3', null, '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义模型表';

-- ----------------------------
-- Records of cms_content_model
-- ----------------------------
INSERT INTO `cms_content_model` VALUES ('3', '联系我们', 'cms_contact_50', '50');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义表单表';

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
DELIMITER ;;
CREATE PROCEDURE `p_getAllChildren`(`pId` int,`appId`int,`modelId` int)
BEGIN
	
   declare lev int;
   set lev=1;
   drop TEMPORARY table if exists tmp_category;    
   drop TEMPORARY table if exists tmp_category_child;    
   CREATE  TEMPORARY TABLE  tmp_category(category_id int(40),category_title varchar(50),category_categoryid varchar(40) ,lev INT) ;    
   CREATE  TEMPORARY TABLE  tmp_category_child(category_id int(40),category_title varchar(50),category_categoryid varchar(40) ,lev INT) ;    
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
