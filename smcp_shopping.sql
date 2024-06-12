/*
 Navicat Premium Data Transfer

 Source Server         : nysql
 Source Server Type    : MySQL
 Source Server Version : 50016
 Source Host           : localhost:3308
 Source Schema         : smcp_shopping

 Target Server Type    : MySQL
 Target Server Version : 50016
 File Encoding         : 65001

 Date: 27/04/2024 10:54:20
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES (1, '<span style=\"color:#3E4D5C;font-family:&quot;font-size:14px;background-color:#FFFFFF;\"> \n<p style=\"color:#3E4D5C;font-family:&quot;font-size:13px;\">\n	<span style=\"color:#3E4D5C;font-family:&quot;font-size:13px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\"> </span></span> \n</p>\n<p style=\"text-indent:2em;color:#333333;font-family:PingFangSC-Regular, &quot;background-color:#FFFFFF;\">\n	<span style=\"color:#222222;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">欢迎访问进<a class=\"site-logo\" href=\"http://192.168.1.108:8089/smcp_shopping/index.html\">声逸商城</a>！我们以本隐私声明对访问者隐私保护许诺。以下文字公开我站对信息收集和使用的情况。本站的隐私申明正在不断改进中，随着我站服务范围的扩大，我们会随时更新我们的隐私声明。</span> \n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:14px;\">\n	在同意<a class=\"site-logo\" href=\"http://192.168.1.108:8089/smcp_shopping/index.html\">声逸商城</a>服务协议之时，你已经同意我们按照本隐私申明来使用和披露您的个人信息。本隐私申明的全部条款属于该协议的一部份。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:14px;\">\n	未成年人的特别注意事项\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:14px;\">\n	如果您未满18周岁，您无权使用公司服务，因此我们希望您不要向我们提供任何个人信息。如果您未满18周岁，您只能在父母或监护人的陪同下才可以使用公司服务。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:14px;\">\n	用户名和密码\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:14px;\">\n	当您打算注册成用户后，我们要求您选择一个用户名和密码，还要提供密码提示问题及其答案以便在您丢失密码后我们可以确认您的身份。您只能通过您的密码来使用您的帐号。如果您泄漏了密码，您可能丢失了您的个人识别信息，并且有可能导致对您不利的司法行为。\n</p>\n<p>\n	<br />\n</p>\n</span> \n<p>\n	<br />\n</p>');
INSERT INTO `about` VALUES (2, '<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\"> \n<p style=\"text-indent:2em;color:#333333;font-family:PingFangSC-Regular, &quot;background-color:#FFFFFF;\">\n	<br />\n</p>\n<p style=\"color:#333333;font-family:宋体, arial;background-color:#FFFFFF;\">\n	<span style=\"font-size:18px;\">一、 为促进开放、透明、分享、诚信经营，保障<span style=\"color:#222222;font-family:&quot;font-size:14px;background-color:#FFFFFF;\"><a class=\"site-logo\" href=\"http://192.168.1.108:8089/smcp_shopping/index.html\">声逸商城</a></span>的合法权益，创建、维护和谐的网络商业环境，制订本规则。</span> \n</p>\n<p style=\"color:#333333;font-family:宋体, arial;background-color:#FFFFFF;\">\n	<span style=\"font-size:18px;\">二、本规则适用于使用本平台任何产品或服务的用户。</span> \n</p>\n<p style=\"color:#333333;font-family:宋体, arial;background-color:#FFFFFF;\">\n	<span style=\"font-size:18px;\">三、用户在适用规则上一律平等。</span> \n</p>\n<p style=\"color:#333333;font-family:宋体, arial;background-color:#FFFFFF;\">\n	<span style=\"font-size:18px;\">四、用户应遵守国家法律、行政法规、部门规章等规范性文件以及与本平台签署的协议、相关服务条款、网站规则。</span> \n</p>\n<p style=\"color:#333333;font-family:宋体, arial;background-color:#FFFFFF;\">\n	<span style=\"font-size:18px;\">五、本平台通有权视需要对本规则做修订，对本规则的修订在<span style=\"color:#222222;font-family:&quot;font-size:14px;background-color:#FFFFFF;\"><a class=\"site-logo\" href=\"http://192.168.1.108:8089/smcp_shopping/index.html\">声逸商城</a></span>上公告后生效。</span> \n</p>\n<p>\n	<br />\n</p>\n</span><br />');

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL,
  `ddno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productid` int(11) NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `fk_apply_member` USING BTREE(`memberid`),
  INDEX `fk_apply_product` USING BTREE(`productid`),
  CONSTRAINT `fk_apply_member` FOREIGN KEY (`memberid`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_apply_product` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB; (`memberid`) REFER `salessiteboot_db/' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES (3, 28, '2024042710511087', 19, '换货', '11', '2024-04-27 10:51:49', '已处理');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (14, '索尼');
INSERT INTO `brand` VALUES (15, '哈曼卡顿');
INSERT INTO `brand` VALUES (16, '漫步者');
INSERT INTO `brand` VALUES (17, '小米');
INSERT INTO `brand` VALUES (18, '华为');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL,
  `productid` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `fk_cart_member_memberid` USING BTREE(`memberid`),
  INDEX `fk_cart_product` USING BTREE(`productid`),
  CONSTRAINT `fk_cart_member_memberid` FOREIGN KEY (`memberid`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cart_product` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB; (`memberid`) REFER `salessiteboot_db/' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fatherid` int(11) NULL DEFAULT NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `fatherid` USING BTREE(`fatherid`)
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (39, '其他', 0, '0');
INSERT INTO `category` VALUES (40, '音响', 0, '0');
INSERT INTO `category` VALUES (41, '耳机', 0, '0');
INSERT INTO `category` VALUES (55, '蓝牙音响', 40, '0');
INSERT INTO `category` VALUES (56, '环绕声音响', 40, '0');
INSERT INTO `category` VALUES (57, '立体声音响', 40, '0');
INSERT INTO `category` VALUES (59, '入耳式', 41, '0');
INSERT INTO `category` VALUES (60, '后挂式', 41, '0');
INSERT INTO `category` VALUES (61, '头戴式', 41, '0');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hfcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `fk_chat_member` USING BTREE(`memberid`),
  CONSTRAINT `fk_chat_member` FOREIGN KEY (`memberid`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB; (`memberid`) REFER `salessiteboot_db/' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (2, 28, '111', '2024-04-27 10:52:15', '222');

-- ----------------------------
-- Table structure for fav
-- ----------------------------
DROP TABLE IF EXISTS `fav`;
CREATE TABLE `fav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL,
  `productid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `fk_fav_member` USING BTREE(`memberid`),
  INDEX `fk_fav-product` USING BTREE(`productid`),
  CONSTRAINT `fk_fav-product` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_fav_member` FOREIGN KEY (`memberid`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB; (`productid`) REFER `salessiteboot_db' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of fav
-- ----------------------------
INSERT INTO `fav` VALUES (1, 28, 20);
INSERT INTO `fav` VALUES (2, 28, 19);

-- ----------------------------
-- Table structure for imgadv
-- ----------------------------
DROP TABLE IF EXISTS `imgadv`;
CREATE TABLE `imgadv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of imgadv
-- ----------------------------
INSERT INTO `imgadv` VALUES (4, '56c9a6c1-980f-4483-8ca1-63e430dc989a.jpg', 'xxx');
INSERT INTO `imgadv` VALUES (6, '65d9d1d7-4e1f-401e-958a-89a75a58c07f.jpg', 'xxx');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (35, 11, 50, 'in');
INSERT INTO `inventory` VALUES (36, 12, 50, 'in');
INSERT INTO `inventory` VALUES (37, 13, 30, 'in');
INSERT INTO `inventory` VALUES (38, 14, 55, 'in');
INSERT INTO `inventory` VALUES (39, 15, 30, 'in');
INSERT INTO `inventory` VALUES (40, 16, 30, 'in');
INSERT INTO `inventory` VALUES (41, 17, 500, 'in');
INSERT INTO `inventory` VALUES (42, 15, 1, 'out');
INSERT INTO `inventory` VALUES (43, 17, 1, 'out');
INSERT INTO `inventory` VALUES (44, 18, 2, 'in');
INSERT INTO `inventory` VALUES (45, 18, 33, 'in');
INSERT INTO `inventory` VALUES (46, 18, 2, 'out');
INSERT INTO `inventory` VALUES (47, 18, 1, 'out');
INSERT INTO `inventory` VALUES (48, 16, 1, 'out');
INSERT INTO `inventory` VALUES (49, 18, 1, 'in');
INSERT INTO `inventory` VALUES (50, 19, 1, 'in');
INSERT INTO `inventory` VALUES (51, 20, 1, 'in');
INSERT INTO `inventory` VALUES (52, 21, 1, 'in');
INSERT INTO `inventory` VALUES (53, 22, 1, 'in');
INSERT INTO `inventory` VALUES (54, 21, 1, 'out');
INSERT INTO `inventory` VALUES (55, 21, 100, 'in');
INSERT INTO `inventory` VALUES (56, 20, 66, 'in');
INSERT INTO `inventory` VALUES (57, 19, 44, 'in');
INSERT INTO `inventory` VALUES (58, 21, 1, 'in');
INSERT INTO `inventory` VALUES (59, 20, 1, 'out');
INSERT INTO `inventory` VALUES (60, 22, 11, 'in');
INSERT INTO `inventory` VALUES (61, 20, 1, 'out');
INSERT INTO `inventory` VALUES (62, 22, 1, 'out');
INSERT INTO `inventory` VALUES (63, 22, 10, 'in');
INSERT INTO `inventory` VALUES (64, 20, 1, 'out');
INSERT INTO `inventory` VALUES (65, 19, 1, 'out');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (23, 'H002', '123', 'H002', '男', '2024-03-16', '13877665512', 'H002@126.com', '0', '933b3561-3521-4fa9-9982-80e13e47ee88.jpg', '正常', '422429198302012222');
INSERT INTO `member` VALUES (24, 'H003', '123', 'H003', '女', '2024-03-16', '13678093322', 'H003@126.com', '0', 'd580d4dd-d876-4eec-ab64-db05410ee66d.jpg', '正常', '422429198502013322');
INSERT INTO `member` VALUES (25, 'H004', '123', 'H004', '男', '2024-03-16', '13809765544', 'H004@126.com', '0', 'c1182aa5-b51f-444f-a06a-fefa02845766.jpg', '正常', '422429198502013321');
INSERT INTO `member` VALUES (26, 'admin1', '123', '111', '男', '2024-01-18', '13654219854', '11258465@qq.com', '0', 'noimg.jpg', '正常', NULL);
INSERT INTO `member` VALUES (27, 'kobe', '123', '测试2', '男', '2024-03-25', '13897567788', '1134555@qq.com', '0', '927e5d7a-e1e8-46c3-b21f-235f2a28e44e.jpg', '正常', NULL);
INSERT INTO `member` VALUES (28, '111', '111', '111', '女', '2024-03-29', '15898578587', '569858569@qq.com', '0', 'noimg.jpg', '正常', NULL);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL,
  `productid` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hfcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `fk_message_member-memberid` USING BTREE(`memberid`),
  INDEX `fk_message_product` USING BTREE(`productid`),
  CONSTRAINT `fk_message_member-memberid` FOREIGN KEY (`memberid`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_message_product` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB; (`memberid`) REFER `salessiteboot_db/' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (3, 28, 19, '111', '2024-04-27 10:52:10', '222');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (3, '漫步者W830NB头戴式耳机开售：45dB降噪', '76f6104f-8791-4bfb-8ab9-7fa3598b536d.jpg', '快科技4月22日消息，漫步者W830NB头戴式主动降噪蓝牙耳机目前已经开售，首发469元。\n\n\n	据悉，W830NB耳机重265g，采用可折叠收纳设计，有星辉蓝、云影灰、晨曦白三种颜色。\n\n\n	\n		声音方面，其内置40mm镀钛单元，降噪深至-45dB，相比前代提升18%，支持多种降噪模式（深度降噪、舒适降噪、宽频降噪、防风噪模式），可在App中切换。\n	\n	\n		连接上，W830NB耳机搭载LHDC5.0高清编解码，支持192kHz/24bit无损音质传输，通过Hi-Res双金标认证，采用蓝牙5.4技术，抗干扰能力提升。', '2024-04-16 21:27:16');
INSERT INTO `news` VALUES (4, '悠达智能背景音乐系统：豪宅至轻奢，全面满足不同家庭音乐需求', 'c15f1fa4-77e8-4dac-a2cd-361f3f1e8fb1.jpg', '悠达智能背景音乐系统凭借其创新技术和多样化的产品线，已成为市场上的实力品牌。我们提供三大主要系列产品——中央型、一体机和分体机，旨在满足从豪华别墅到高档小区以及现代时尚家庭的各种音乐需求。每一系列都设计有独特的功能，确保能够为不同空间和用户偏好提供最佳的音乐播放解决方案。\n\n\n	\n\n\n\n	\n	\n		对于居住在别墅、高端洋房或超大平层等豪华住宅的业主而言，选择中央型背景音乐系统是一种自然而然的选择。这不仅仅因为中央机的高端定位符合他们的社会地位，更重要的是，中央机强大的输出功率和卓越的音质完全能够满足一家三代对音乐的热爱和需求。一套系统便可覆盖全宅多个房间，实现音乐的全屋共享。\n	\n	\n		 \n	\n	\n		悠达中央机特别设计用于同时满足4至8个房间的音乐播放，每个房间都可以独立控制，选择不同的歌曲播放而互不干扰。家庭成员可以方便地通过音乐控制屏或手机APP进行操作，甚至可以利用AI语音控制系统，实现懒人模式，而当外出时，也可以通过手机进行远程控制。', '2024-04-16 21:56:58');
INSERT INTO `news` VALUES (5, '1', '8b62668f-c9e4-4672-b417-1c2addea207f.jpg', '1', '2024-04-27 10:50:00');

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memberid` int(11) NULL DEFAULT NULL,
  `productid` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `fk_orderdetails_product` USING BTREE(`productid`),
  INDEX `fk_orderdetails_ordermsg` USING BTREE(`ddno`),
  CONSTRAINT `fk_orderdetails_product` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB; (`productid`) REFER `salessiteboot_db' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------
INSERT INTO `orderdetails` VALUES (5, '572382', 28, 20, 1, '交易完成');
INSERT INTO `orderdetails` VALUES (6, '530452', 28, 20, 1, '交易完成');
INSERT INTO `orderdetails` VALUES (9, '2024042710511087', 28, 19, 1, '交易完成');

-- ----------------------------
-- Table structure for ordermsg
-- ----------------------------
DROP TABLE IF EXISTS `ordermsg`;
CREATE TABLE `ordermsg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memberid` int(11) NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wlinfo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `fk_ordermsg_member_memberid` USING BTREE(`memberid`),
  INDEX `ddno` USING BTREE(`ddno`),
  CONSTRAINT `fk_ordermsg_member_memberid` FOREIGN KEY (`memberid`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB; (`memberid`) REFER `salessiteboot_db/' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ordermsg
-- ----------------------------
INSERT INTO `ordermsg` VALUES (3, '2024042710511087', 28, 798.00, '11&nbsp;&nbsp;1&nbsp;&nbsp;15874569856', '交易完成', '2024-04-27 10:51:05', '运单号:1    顺丰快递');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categoryid` int(11) NULL DEFAULT NULL,
  `childid` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `issj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `istj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brandid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `fk_product_category` USING BTREE(`categoryid`),
  INDEX `fk_product_categorychild` USING BTREE(`childid`),
  INDEX `fk_product_brand` USING BTREE(`brandid`),
  CONSTRAINT `fk_product_brand` FOREIGN KEY (`brandid`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_category` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_categorychild` FOREIGN KEY (`childid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB; (`brandid`) REFER `salessiteboot_db/b' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (19, '漫步者（EDIFIER）EDIFIER漫步者lipro2真无线蓝牙耳机', '57166af9-5dc3-4578-9475-0145416b073a.jpg', 41, 59, 798.00, '<ul class=\"parameter2 p-parameter-list\">\n	<li>\n		<ul id=\"parameter-brand\" class=\"p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, &quot;background-color:#FFFFFF;\">\n			<li>\n				品牌：&nbsp;<a href=\"https://list.jd.hk/list.html?cat=652,829,30703&amp;ev=exbrand_12286\" target=\"_blank\">漫步者（EDIFIER）</a>\n			</li>\n		</ul>\n		<ul class=\"parameter2 p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, &quot;background-color:#FFFFFF;\">\n			<li>\n				商品名称：漫步者（EDIFIER）EDIFIER漫步者lipro2真无线蓝牙耳机主动降噪运动适用华为苹果 冰川白 主动降噪金标音质入 官方标配\n			</li>\n			<li>\n				商品编号：10096976545339\n			</li>\n			<li>\n				店铺：&nbsp;<a href=\"https://mall.jd.com/index-13371277.html?from=pc\" target=\"_blank\">ZHENGBAI海外专营店</a>\n			</li>\n			<li>\n				商品毛重：1.0kg\n			</li>\n			<li>\n				货号：483156\n			</li>\n			<li>\n				材质：牛津布\n			</li>\n			<li>\n				适用型号：其他\n			</li>\n			<li>\n				类型：耳机保护套\n			</li>\n			<li>\n				风格：潮酷\n			</li>\n		</ul>\n	</li>\n	<li>\n	</li>\n</ul>', '0', 'yes', 'yes', 16);
INSERT INTO `product` VALUES (20, '哈曼卡顿音乐琉璃四代 家用音响 蓝牙音箱', '6cccd0ca-3e31-409c-a782-0dfe3f41eb8e.jpg', 40, 55, 1899.00, '<ul class=\"parameter2 p-parameter-list\">\n	<li>\n		<ul id=\"parameter-brand\" class=\"p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, &quot;background-color:#FFFFFF;\">\n			<li>\n				品牌：&nbsp;<a href=\"https://list.jd.hk/list.html?cat=652,828,841&amp;ev=exbrand_7752\" target=\"_blank\">哈曼卡顿（Harman/Kardon）</a>\n			</li>\n		</ul>\n		<ul class=\"parameter2 p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, &quot;background-color:#FFFFFF;\">\n			<li>\n				商品名称：哈曼卡顿Aura Studio 4\n			</li>\n			<li>\n				商品编号：100057072838\n			</li>\n			<li>\n				商品毛重：4.94kg\n			</li>\n			<li>\n				商品产地：中国大陆\n			</li>\n			<li>\n				自带滑轮：无\n			</li>\n			<li>\n				类别：家居艺术音箱\n			</li>\n			<li>\n				语音交互：不支持\n			</li>\n			<li>\n				内置电池：无\n			</li>\n			<li>\n				是否支持通话：不支持\n			</li>\n			<li>\n				外置存储设备读取：不支持\n			</li>\n		</ul>\n	</li>\n	<li>\n	</li>\n</ul>', '0', 'yes', 'yes', 15);

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usertype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 31744 kB' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES (16, 'admin', '123', '管理员', 'admin', 'c30cf070-d0a0-4969-9a3d-38074fbddc8d.jpg', '男', '18777665511', '422429198502013322', '0', '通过审核', -489985.80);
INSERT INTO `sysuser` VALUES (17, 'admin12', '123', '商家', '商家', 'c30cf070-d0a0-4969-9a3d-38074fbddc8d.jpg', '男', '18777665511', '422429198502013322', '0', '通过审核', NULL);
INSERT INTO `sysuser` VALUES (18, 'test', '123', '商家', '11', 'noimg.jpg', '男', '13698745632', '111', '0', '通过审核', NULL);
INSERT INTO `sysuser` VALUES (19, '112', '123', '商家', '11', 'noimg.jpg', '男', '13265412369', '11', '0', '通过审核', NULL);

SET FOREIGN_KEY_CHECKS = 1;
