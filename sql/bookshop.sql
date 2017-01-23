/*
Navicat MySQL Data Transfer

Source Server         : zhuhuishao
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : bookshop

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2014-05-14 09:16:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `booklist`
-- ----------------------------
DROP TABLE IF EXISTS `booklist`;
CREATE TABLE `booklist` (
  `id` int(11) NOT NULL auto_increment,
  `book_list_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of booklist
-- ----------------------------
INSERT INTO `booklist` VALUES ('12', '文学');
INSERT INTO `booklist` VALUES ('19', '教材教辅考试');
INSERT INTO `booklist` VALUES ('20', '科技');
INSERT INTO `booklist` VALUES ('23', '金融与投资');
INSERT INTO `booklist` VALUES ('24', '旅游/地图');
INSERT INTO `booklist` VALUES ('25', '烹饪/美食');
INSERT INTO `booklist` VALUES ('26', '艺术');
INSERT INTO `booklist` VALUES ('27', '动漫');

-- ----------------------------
-- Table structure for `booklistdetail`
-- ----------------------------
DROP TABLE IF EXISTS `booklistdetail`;
CREATE TABLE `booklistdetail` (
  `id` int(11) NOT NULL auto_increment,
  `list_detail_name` varchar(255) default NULL,
  `bookList_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKE57C8E5837D40D63` (`bookList_id`),
  CONSTRAINT `FKE57C8E5837D40D63` FOREIGN KEY (`bookList_id`) REFERENCES `booklist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of booklistdetail
-- ----------------------------
INSERT INTO `booklistdetail` VALUES ('20', '作品集', '12');
INSERT INTO `booklistdetail` VALUES ('21', '散文随笔', '12');
INSERT INTO `booklistdetail` VALUES ('22', '文学评论与鉴赏', '12');
INSERT INTO `booklistdetail` VALUES ('23', '诗歌词曲', '12');
INSERT INTO `booklistdetail` VALUES ('24', '名家作品', '12');
INSERT INTO `booklistdetail` VALUES ('25', '纪实文学', '12');
INSERT INTO `booklistdetail` VALUES ('26', '影视文学', '12');
INSERT INTO `booklistdetail` VALUES ('27', '民间文学', '12');
INSERT INTO `booklistdetail` VALUES ('28', '戏剧与曲艺', '12');
INSERT INTO `booklistdetail` VALUES ('29', '中小学教辅', '19');
INSERT INTO `booklistdetail` VALUES ('30', '竞赛/奥赛', '19');
INSERT INTO `booklistdetail` VALUES ('31', '公务员考试', '19');
INSERT INTO `booklistdetail` VALUES ('32', '语言类考试', '19');
INSERT INTO `booklistdetail` VALUES ('33', '司法考试', '19');
INSERT INTO `booklistdetail` VALUES ('34', '计算机考试', '19');
INSERT INTO `booklistdetail` VALUES ('35', '银行类考试', '19');
INSERT INTO `booklistdetail` VALUES ('36', '证券从业资格考试', '19');
INSERT INTO `booklistdetail` VALUES ('37', '编程语言与程序设计', '20');
INSERT INTO `booklistdetail` VALUES ('38', '软件工程及软件方法学', '20');
INSERT INTO `booklistdetail` VALUES ('39', '数据库', '20');
INSERT INTO `booklistdetail` VALUES ('40', '操作系统', '20');
INSERT INTO `booklistdetail` VALUES ('41', '网络与通信', '20');
INSERT INTO `booklistdetail` VALUES ('42', '办公软件', '20');
INSERT INTO `booklistdetail` VALUES ('43', '图形图像/视频', '20');
INSERT INTO `booklistdetail` VALUES ('44', '网页制作', '20');
INSERT INTO `booklistdetail` VALUES ('45', '电子商务', '20');
INSERT INTO `booklistdetail` VALUES ('46', 'IT服务管理', '20');
INSERT INTO `booklistdetail` VALUES ('47', '数码产品攻略', '20');
INSERT INTO `booklistdetail` VALUES ('48', '摄影', '26');
INSERT INTO `booklistdetail` VALUES ('49', '设计', '26');
INSERT INTO `booklistdetail` VALUES ('50', '绘画', '26');
INSERT INTO `booklistdetail` VALUES ('51', '书法与篆刻', '26');
INSERT INTO `booklistdetail` VALUES ('52', '连环画', '26');
INSERT INTO `booklistdetail` VALUES ('53', '动画', '26');
INSERT INTO `booklistdetail` VALUES ('54', '影视', '26');
INSERT INTO `booklistdetail` VALUES ('55', '音乐', '26');
INSERT INTO `booklistdetail` VALUES ('56', '鉴赏收藏', '26');
INSERT INTO `booklistdetail` VALUES ('57', '建筑', '26');
INSERT INTO `booklistdetail` VALUES ('58', '舞蹈', '26');
INSERT INTO `booklistdetail` VALUES ('59', '雕塑', '26');
INSERT INTO `booklistdetail` VALUES ('60', '投资', '23');
INSERT INTO `booklistdetail` VALUES ('61', '国际金融', '23');
INSERT INTO `booklistdetail` VALUES ('62', '期货', '23');
INSERT INTO `booklistdetail` VALUES ('63', '各国金融银行', '23');
INSERT INTO `booklistdetail` VALUES ('64', '股票', '23');
INSERT INTO `booklistdetail` VALUES ('65', '中国金融银行', '23');
INSERT INTO `booklistdetail` VALUES ('66', '证券', '23');
INSERT INTO `booklistdetail` VALUES ('67', '货币银行学', '23');
INSERT INTO `booklistdetail` VALUES ('68', '基金', '23');
INSERT INTO `booklistdetail` VALUES ('69', '信用管理与信贷', '23');
INSERT INTO `booklistdetail` VALUES ('70', '保险', '23');
INSERT INTO `booklistdetail` VALUES ('71', '金融市场与管理', '23');
INSERT INTO `booklistdetail` VALUES ('72', '个人理财', '23');
INSERT INTO `booklistdetail` VALUES ('73', '金融理论', '23');
INSERT INTO `booklistdetail` VALUES ('74', '企业并购', '23');
INSERT INTO `booklistdetail` VALUES ('75', '旅游随笔', '24');
INSERT INTO `booklistdetail` VALUES ('76', '旅游摄影', '24');
INSERT INTO `booklistdetail` VALUES ('77', '国内游', '24');
INSERT INTO `booklistdetail` VALUES ('79', '户外探险', '24');
INSERT INTO `booklistdetail` VALUES ('80', '国外游', '24');
INSERT INTO `booklistdetail` VALUES ('81', '旅游地图', '24');
INSERT INTO `booklistdetail` VALUES ('82', '自助游', '24');
INSERT INTO `booklistdetail` VALUES ('83', '导游必备', '24');
INSERT INTO `booklistdetail` VALUES ('84', '旅游指南', '24');
INSERT INTO `booklistdetail` VALUES ('85', '明信片', '24');
INSERT INTO `booklistdetail` VALUES ('86', '烘焙甜品', '25');
INSERT INTO `booklistdetail` VALUES ('87', '家常菜谱', '25');
INSERT INTO `booklistdetail` VALUES ('88', '茶酒饮品', '25');
INSERT INTO `booklistdetail` VALUES ('89', '养生食疗', '25');
INSERT INTO `booklistdetail` VALUES ('90', '糖尿病人食谱', '25');
INSERT INTO `booklistdetail` VALUES ('91', '“三高”人群食谱', '25');
INSERT INTO `booklistdetail` VALUES ('92', '饮食文化', '25');
INSERT INTO `booklistdetail` VALUES ('93', '地方美食', '25');
INSERT INTO `booklistdetail` VALUES ('94', '日韩料理', '25');
INSERT INTO `booklistdetail` VALUES ('95', '西餐', '25');
INSERT INTO `booklistdetail` VALUES ('96', '美食地图', '25');
INSERT INTO `booklistdetail` VALUES ('97', '厨师用书', '24');
INSERT INTO `booklistdetail` VALUES ('98', '日本动漫', '27');
INSERT INTO `booklistdetail` VALUES ('99', '大陆动漫', '27');
INSERT INTO `booklistdetail` VALUES ('100', '欧美动漫', '27');
INSERT INTO `booklistdetail` VALUES ('101', '港台动漫', '27');
INSERT INTO `booklistdetail` VALUES ('102', '其他国外动漫', '27');
INSERT INTO `booklistdetail` VALUES ('103', '连环画', '27');
INSERT INTO `booklistdetail` VALUES ('104', '绘本', '27');
INSERT INTO `booklistdetail` VALUES ('105', '轻小说', '27');
INSERT INTO `booklistdetail` VALUES ('106', '爆笑漫画', '27');

-- ----------------------------
-- Table structure for `books`
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL auto_increment,
  `book_num` int(11) default NULL,
  `author` varchar(255) default NULL,
  `book_name` varchar(255) default NULL,
  `single_price` double default NULL,
  `author_introduce` varchar(255) default NULL,
  `book_introduce` varchar(255) default NULL,
  `publish_message` varchar(255) default NULL,
  `publish_time` date default NULL,
  `img_name` varchar(255) default NULL,
  `click_num` int(11) default NULL,
  `sale_num` int(11) default NULL,
  `detail_introduce` text,
  `bookListDetail_id` int(11) default NULL,
  `classify` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK59922AAE863A923` (`bookListDetail_id`),
  CONSTRAINT `FK59922AAE863A923` FOREIGN KEY (`bookListDetail_id`) REFERENCES `booklistdetail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('17', '122', '1', '海豚1号', '10', '仅作演示', '仅作演示', '仅作演示', '2011-01-02', '17.jpg', '8', '0', null, '25', '2');
INSERT INTO `books` VALUES ('18', '2112', '海豚', '海豚2号', '20', '仅作演示', '仅作演示', '仅作演示', '2011-01-12', '18.jpg', '9', '0', null, '27', '1');
INSERT INTO `books` VALUES ('19', '3232', '海豚', '海豚3号', '30', '仅作演示', '仅作演示', '仅作演示', '2012-01-02', '19.jpg', '0', '0', null, '24', '1');
INSERT INTO `books` VALUES ('20', '4343', '海豚', '海豚4号', '40', '仅作演示', '仅作演示', '仅作演示', '2011-04-12', '20.jpg', '1', '0', null, '28', '2');
INSERT INTO `books` VALUES ('21', '545', '海豚', '海豚5号', '50', '仅作演示', '仅作演示', '仅作演示', '2013-01-12', '21.jpg', '0', '0', null, '26', '2');
INSERT INTO `books` VALUES ('22', '6561', '海豚', '海豚6号', '60', '仅作演示', '仅作演示', '仅作演示', '2014-01-02', '22.jpg', '36', '4', null, '22', '2');
INSERT INTO `books` VALUES ('23', '7887', '海豚', '海豚7号', '70', '仅作演示', '仅作演示', '仅作演示', '2011-06-12', '23.jpg', '1', '0', null, '23', '2');
INSERT INTO `books` VALUES ('24', '878', '海豚', '海豚8号', '80', '仅作演示', '仅作演示', '仅作演示', '2011-11-12', '24.jpg', '0', '0', null, '21', '2');
INSERT INTO `books` VALUES ('25', '5233', '海豚', '海豚9号', '90', '仅作演示', '仅作演示', '仅作演示', '2012-11-02', '25.jpg', '4', '1', null, '20', '2');
INSERT INTO `books` VALUES ('26', '128', '海豚', '海豚10号', '100', '仅作演示', '仅作演示', '仅作演示', '2012-11-12', '26.jpg', '0', '0', null, '35', '7');
INSERT INTO `books` VALUES ('27', '213', '海豚', '海豚11号', '110', '仅作演示', '仅作演示', '仅作演示', '2012-01-23', '27.jpg', '0', '0', null, '31', '7');
INSERT INTO `books` VALUES ('28', '2314', '海豚', '海豚12号', '120', '仅作演示', '仅作演示', '仅作演示', '1998-02-23', '28.jpg', '1', '0', null, '30', '7');
INSERT INTO `books` VALUES ('29', '4233', '海豚', '海豚13号', '130', '仅作演示', '仅作演示', '仅作演示', '2012-12-23', '29.jpg', '0', '0', null, '33', '7');
INSERT INTO `books` VALUES ('30', '2141', '海豚', '海豚14号', '140', '仅作演示', '仅作演示', '仅作演示', '2014-04-02', '30.jpg', '4', '0', null, '32', '7');
INSERT INTO `books` VALUES ('31', '5235', '海豚', '海豚15号', '150', '仅作演示', '仅作演示', '仅作演示', '2001-09-21', '31.jpg', '0', '0', null, '34', '7');
INSERT INTO `books` VALUES ('32', '2414', '海豚', '海豚16号', '160', '仅作演示', '仅作演示', '仅作演示', '2002-09-21', '32.jpg', '0', '0', null, '36', '7');
INSERT INTO `books` VALUES ('33', '352', '海豚', '海豚17号', '170', '仅作演示', '仅作演示', '仅作演示', '2003-09-21', '33.jpg', '1', '0', null, '29', '7');
INSERT INTO `books` VALUES ('34', '4407', '海豚', '海豚18号', '180', '仅作演示', '仅作演示', '仅作演示', '2004-09-21', '34.jpg', '11', '7', null, '41', '6');
INSERT INTO `books` VALUES ('35', '2141', '海豚', '海豚19号', '190', '仅作演示', '仅作演示', '仅作演示', '2005-05-21', '35.jpg', '0', '0', null, '47', '6');
INSERT INTO `books` VALUES ('36', '873', '海豚', '海豚20号', '200', '仅作演示', '仅作演示', '仅作演示', '2006-09-21', '36.jpg', '1', '0', null, '44', '6');
INSERT INTO `books` VALUES ('37', '4342', '海豚', '海豚21号', '210', '仅作演示', '仅作演示', '仅作演示', '2007-05-21', '37.jpg', '0', '0', null, '37', '6');
INSERT INTO `books` VALUES ('38', '221', '海豚', '海豚22号', '220', '仅作演示', '仅作演示', '仅作演示', '2008-05-21', '38.jpg', '0', '0', null, '38', '6');
INSERT INTO `books` VALUES ('39', '523', '海豚', '海豚23号', '230', '仅作演示', '仅作演示', '仅作演示', '2003-09-11', '39.jpg', '0', '0', null, '45', '6');
INSERT INTO `books` VALUES ('40', '42323', '海豚', '海豚24', '240', '仅作演示', '仅作演示', '仅作演示', '2001-09-23', '40.jpg', '0', '0', null, '40', '6');
INSERT INTO `books` VALUES ('41', '230', '海豚', '海豚25号', '250', '仅作演示', '仅作演示', '仅作演示', '2009-05-21', '41.jpg', '0', '0', null, '42', '6');
INSERT INTO `books` VALUES ('42', '4341', '海豚', '海豚26号', '260', '仅作演示', '仅作演示', '仅作演示', '2014-01-21', '42.jpg', '1', '0', null, '43', '6');
INSERT INTO `books` VALUES ('43', '235', '海豚', '海豚27号', '270', '仅作演示', '仅作演示', '仅作演示', '2011-09-23', '43.jpg', '0', '0', null, '46', '1');
INSERT INTO `books` VALUES ('44', '2342', '海豚', '海豚28号', '280', '仅作演示', '仅作演示', '仅作演示', '2008-09-23', '44.jpg', '0', '0', null, '39', '6');
INSERT INTO `books` VALUES ('45', '5322', '海豚', '海豚29号', '290', '仅作演示', '仅作演示', '仅作演示', '2014-09-22', '45.jpg', '4', '0', null, '74', '1');
INSERT INTO `books` VALUES ('46', '342', '海豚', '海豚30号', '300', '仅作演示', '仅作演示', '仅作演示', '2012-10-02', '46.jpg', '1', '0', null, '61', '5');
INSERT INTO `books` VALUES ('47', '634', '海豚', '海豚31号', '310', '仅作演示', '仅作演示', '仅作演示', '2012-09-11', '47.jpg', '0', '0', null, '67', '5');
INSERT INTO `books` VALUES ('48', '2834', '海豚', '海豚32号', '320', '仅作演示', '仅作演示', '仅作演示', '2013-09-21', '48.jpg', '0', '0', null, '68', '8');
INSERT INTO `books` VALUES ('49', '98765', '海豚', '海豚33号', '330', '仅作演示', '仅作演示', '仅作演示', '2013-09-14', '49.jpg', '0', '0', null, '63', '8');
INSERT INTO `books` VALUES ('50', '1231241', '海豚', '海豚34号', '340', '仅作演示', '仅作演示', '仅作演示', '2011-08-09', '50.jpg', '0', '0', null, '70', '8');
INSERT INTO `books` VALUES ('51', '7654', '海豚', '海豚35号', '350', '仅作演示', '仅作演示', '仅作演示', '2012-04-21', '51.jpg', '0', '0', null, '60', '1');
INSERT INTO `books` VALUES ('52', '78', '海豚', '海豚36号', '360', '仅作演示', '仅作演示', '仅作演示', '2001-09-24', '52.jpg', '0', '0', null, '69', '1');
INSERT INTO `books` VALUES ('53', '456', '海豚', '海豚37号', '370', '仅作演示', '仅作演示', '仅作演示', '2012-09-14', '53.jpg', '0', '0', null, '66', '1');
INSERT INTO `books` VALUES ('54', '5322', '海豚', '海豚38', '380', '仅作演示', '仅作演示', '仅作演示', '2013-09-23', '54.jpg', '13', '0', null, '71', '4');
INSERT INTO `books` VALUES ('55', '5322', '海豚', '海豚39号', '390', '仅作演示', '仅作演示', '仅作演示', '2012-11-21', '55.jpg', '0', '0', null, '65', '1');
INSERT INTO `books` VALUES ('56', '34252', '海豚', '海豚40号', '400', '仅作演示', '仅作演示', '仅作演示', '2001-09-13', '56.jpg', '0', '0', null, '62', '7');
INSERT INTO `books` VALUES ('57', '325325', '海豚', '海豚41号', '410', '仅作演示', '仅作演示', '仅作演示', '2011-09-24', '57.jpg', '0', '0', null, '73', '5');
INSERT INTO `books` VALUES ('58', '423', '海豚', '海豚42号', '420', '仅作演示', '仅作演示', '仅作演示', '2001-09-21', null, '3', '0', null, '64', '3');

-- ----------------------------
-- Table structure for `orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL auto_increment,
  `book_id` int(11) default NULL,
  `order_id` int(11) default NULL,
  `num` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1', '22', '1', '1', '1');
INSERT INTO `orderdetail` VALUES ('2', '25', '2', '1', '1');
INSERT INTO `orderdetail` VALUES ('3', '17', '3', '1', '1');
INSERT INTO `orderdetail` VALUES ('4', '22', '4', '1', '1');
INSERT INTO `orderdetail` VALUES ('5', '54', '4', '1', '1');
INSERT INTO `orderdetail` VALUES ('6', '34', '5', '5', '4');
INSERT INTO `orderdetail` VALUES ('7', '22', '6', '1', '751');
INSERT INTO `orderdetail` VALUES ('8', '22', '7', '1', '750');

-- ----------------------------
-- Table structure for `orderform`
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform` (
  `id` int(11) NOT NULL auto_increment,
  `order_form_no` varchar(255) default NULL,
  `order_time` date default NULL,
  `handle` int(11) default NULL,
  `pay_way` varchar(255) default NULL,
  `user_id` int(11) default NULL,
  `sum_price` double default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderform
-- ----------------------------
INSERT INTO `orderform` VALUES ('1', 'HTSC67109', '2014-05-13', '3', '货到付款', '1', '60');
INSERT INTO `orderform` VALUES ('2', 'HTSC80022', '2014-05-13', '2', '货到付款', '1', '90');
INSERT INTO `orderform` VALUES ('3', 'HTSC88713', '2014-05-13', '2', '货到付款', '1', '10');
INSERT INTO `orderform` VALUES ('4', 'HTSC85670', '2014-05-13', '2', '货到付款', '1', '440');
INSERT INTO `orderform` VALUES ('5', 'HTSC81167', '2014-05-14', '3', '货到付款', '4', '900');
INSERT INTO `orderform` VALUES ('6', 'HTSC44031', '2014-05-14', '1', null, '751', '60');
INSERT INTO `orderform` VALUES ('7', 'HTSC93127', '2014-05-14', '1', null, '750', '60');

-- ----------------------------
-- Table structure for `reviews`
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL auto_increment,
  `review_time` date default NULL,
  `message` varchar(255) default NULL,
  `review_or_answer` int(11) default NULL,
  `reviewed_id` int(11) default NULL,
  `users_id` int(11) default NULL,
  `books_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK418FF41BA889CC71` (`users_id`),
  KEY `FK418FF41B2EDAF131` (`books_id`),
  CONSTRAINT `FK418FF41B2EDAF131` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`),
  CONSTRAINT `FK418FF41BA889CC71` FOREIGN KEY (`users_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reviews
-- ----------------------------

-- ----------------------------
-- Table structure for `saleuser`
-- ----------------------------
DROP TABLE IF EXISTS `saleuser`;
CREATE TABLE `saleuser` (
  `id` int(11) NOT NULL auto_increment,
  `userNo` varchar(255) NOT NULL,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of saleuser
-- ----------------------------
INSERT INTO `saleuser` VALUES ('1', 'Ethan', '朱会韶', '123456');

-- ----------------------------
-- Table structure for `shopcar`
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` int(11) NOT NULL auto_increment,
  `book_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `num` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `userNo` varchar(255) NOT NULL,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `gender` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `user_img_name` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `youbian` varchar(255) default NULL,
  `reciever` varchar(255) default NULL,
  `pay_way` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Ethan', '朱会韶', '123456', '男', '852566@qq.com', 'asd.jpg', '213', 'adadada', '333', 'ddddd', '货到付款');
INSERT INTO `user` VALUES ('2', 'ddd', 'awe', 'dd', '男', 'asd', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', 'afa', 'asaadddd', '111', '男', 'asd', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('4', '张三丰', 'Tom', '123456', '男', '477638157@qq.com', null, '18825145444', '广州中医药大学', '510006', '张三丰', '货到付款');
INSERT INTO `user` VALUES ('5', '', '', '', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('7', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('8', 'John8212', 'echo str_repeat(\'sokdz\',5);', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('9', 'print \'sokdz\'*5', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('10', 'echo str_repeat(\'sokdz\',5);', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('11', 'echo str_repeat(\'sokdz\',5);', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('12', 'John8212', 'print \'sokdz\'x5', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('13', 'John8212', 'print \'sokdz\'*5', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('14', 'John8212', 'Response.Write(new String(\"sokdz\",5))', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('15', 'John8212', 'print \'sokdz\'x5', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('16', 'John8212', 'John8212', 'FrAmE30.', 'echo str_repeat(\'sokdz\',5);', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('17', 'John8212', 'John8212', 'FrAmE30.', 'print \'sokdz\'*5', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('18', 'John8212', 'John8212', 'echo str_repeat(\'sokdz\',5);', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('19', 'John8212', 'John8212', 'print \'sokdz\'*5', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('20', 'John8212', 'John8212', 'FrAmE30.', 'Response.Write(new String(\"sokdz\",5))', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('21', 'John8212', 'John8212', 'print \'sokdz\'x5', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('22', 'John8212', 'John8212', 'FrAmE30.', 'print \'sokdz\'x5', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('23', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('24', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('25', 'John8212', 'John8212', 'Response.Write(new String(\"sokdz\",5))', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('26', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('27', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('28', '32\" OR \"32\"=\"32', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('29', 'John8212', 'John8212', 'FrAmE30.', '', 'echo str_repeat(\'sokdz\',5);', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('30', 'John8212', 'John8212', 'FrAmE30.', '', 'print \'sokdz\'x5', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('31', '/bin/cat /etc/passwd', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('32', 'type %SYSTEMROOT%\\win.ini', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('33', 'John8212', 'John8212', 'FrAmE30.', '', 'Response.Write(new String(\"sokdz\",5))', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('34', '|/bin/cat /etc/passwd', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('35', '|type %SYSTEMROOT%\\win.ini', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('36', ';type %SYSTEMROOT%\\win.ini', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('37', 'John8212', 'John8212', 'FrAmE30.', '', 'print \'sokdz\'*5', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('38', '&&type %SYSTEMROOT%\\win.ini', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('39', 'John8212', '&&type %SYSTEMROOT%\\win.ini', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('40', ';/bin/cat /etc/passwd', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('41', 'John8212', '|type %SYSTEMROOT%\\win.ini', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('42', '`/bin/cat /etc/passwd`', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('43', 'John8212', '|/bin/cat /etc/passwd', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('44', 'John8212', '/bin/cat /etc/passwd', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('45', '&&/bin/cat /etc/passwd', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('46', 'John8212', '&&/bin/cat /etc/passwd', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('47', 'run type %SYSTEMROOT%\\win.ini', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('48', 'run type %SYSTEMROOT%\\win.ini', '&&/bin/cat /etc/passwd', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('49', 'F1OScLKZ', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('50', '32\" AND \"32\"=\"33', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('51', 'John8212', '`/bin/cat /etc/passwd`', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('52', 'John8212', 'John8212', 'FrAmE30.', '/bin/cat /etc/passwd', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('53', 'John8212', 'John8212', 'FrAmE30.', '&&/bin/cat /etc/passwd', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('54', 'John8212', 'John8212', 'FrAmE30.', 'type %SYSTEMROOT%\\win.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('55', 'John8212', 'John8212', 'FrAmE30.', '&&type %SYSTEMROOT%\\win.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('56', 'John8212', 'John8212', 'FrAmE30.', ';/bin/cat /etc/passwd', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('57', 'John8212', 'John8212', 'FrAmE30.', 'run type %SYSTEMROOT%\\win.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('58', 'John8212', 'John8212', 'FrAmE30.', '|type %SYSTEMROOT%\\win.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('59', 'John8212', 'John8212', 'FrAmE30.', '|type %SYSTEMROOT%\\win.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('60', 'John8212', 'John8212', 'FrAmE30.', ';type %SYSTEMROOT%\\win.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('61', 'John8212', 'John8212', '/bin/cat /etc/passwd', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('62', 'John8212', 'John8212', '/bin/cat /etc/passwd', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('63', 'John8212', 'John8212', '&&/bin/cat /etc/passwd', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('64', 'John8212', ';/bin/cat /etc/passwd', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('65', 'John8212', ';/bin/cat /etc/passwd', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('66', 'John8212', ';type %SYSTEMROOT%\\win.ini', 'FrAmE30.', '|/bin/cat /etc/passwd', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('67', 'John8212', 'John8212', 'FrAmE30.', '`/bin/cat /etc/passwd`', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('68', 'John8212', 'John8212', 'FrAmE30.', '`/bin/cat /etc/passwd`', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('69', 'John8212', 'John8212', 'FrAmE30.', '`/bin/cat /etc/passwd`', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('70', 'John8212', 'John8212', '|type %SYSTEMROOT%\\win.ini', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('71', 'd\'kc\"z\'gj\'\"**5*(((;-*`)', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('72', '32\' OR \'32\'=\'32', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('73', 'John8212', 'John8212', ';/bin/cat /etc/passwd', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('74', 'John8212', 'John8212', ';type %SYSTEMROOT%\\win.ini', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('75', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('76', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('77', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('78', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('79', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('80', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('81', 'John8212', 'John8212', '`/bin/cat /etc/passwd`', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('82', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('83', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('84', 'John8212', 'John8212', 'FrAmE30.', '', 'type %SYSTEMROOT%\\win.ini', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('85', 'John8212', 'John8212', 'FrAmE30.', '', 'type %SYSTEMROOT%\\win.ini', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('86', 'John8212', 'John8212', 'FrAmE30.', '', '&&/bin/cat /etc/passwd', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('87', 'John8212', 'John8212', 'FrAmE30.', '', '/bin/cat /etc/passwd', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('88', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('89', 'John8212', 'John8212', 'FrAmE30.', '', '&&type %SYSTEMROOT%\\win.ini', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('90', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('91', 'John8212', 'John8212', 'FrAmE30.', '', '|/bin/cat /etc/passwd', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('92', '32\' AND \'32\'=\'33', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('93', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('94', 'John8212', 'John8212', 'FrAmE30.', '', '|type %SYSTEMROOT%\\win.ini', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('95', 'John8212', 'a\'b\"c\'d\"', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('96', 'John8212', 'John8212', 'FrAmE30.', '', '`/bin/cat /etc/passwd`', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('97', 'John8212', 'John8212', 'FrAmE30.', '', ';/bin/cat /etc/passwd', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('98', 'a\'b\"c\'d\"', 'John8212', 'FrAmE30.', '', '`/bin/cat /etc/passwd`', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('99', 'John8212', 'John8212', 'FrAmE30.', '', 'run type %SYSTEMROOT%\\win.ini', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('100', 'John8212', 'John8212', 'FrAmE30.', '', ';type %SYSTEMROOT%\\win.ini', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('101', 'John8212', 'John8212', 'FrAmE30.', 'a\'b\"c\'d\"', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('102', 'John8212', 'John8212', 'FrAmE30.', '', 'a\'b\"c\'d\"', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('103', 'John8212', 'John8212', 'FrAmE30.', '', 'a\'b\"c\'d\"', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('104', 'John8212', 'John8212', 'a\'b\"c\'d\"', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('105', 'John8212', 'John8212', 'a\'b\"c\'d\"', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('106', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('107', 'John8212', '\"', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('108', 'John8212', 'John8212', 'FrAmE30.', '\"', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('109', 'John8212', 'John8212', 'FrAmE30.', 'iDontExist', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('110', 'iDontExist', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('111', 'iDontExist', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('112', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('113', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('114', 'John8212', 'John8212', '\"', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('115', '32 OR 32=32 ', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('116', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('117', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('118', 'John8212', 'John8212', 'iDontExist', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('119', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('120', 'John8212', 'OYHoO7Ne', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('121', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('122', 'zhuce', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('123', '../../../../../../../../../../../../../../../etc/passwd', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('124', '../../../../../../../../../../../../../../../etc/passwd', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('125', '../../../../../../../../../../../../../../../etc/passwd\0.html', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('126', 'John8212', 'John8212', 'FrAmE30.', '', '\"', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('127', '/etc/passwd', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('128', 'John8212', 'John8212', 'FrAmE30.', '', 'iDontExist', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('129', 'John8212', 'John8212', 'FrAmE30.', '', 'iDontExist', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('130', '../../../../../../../../../../../../../../../boot.ini', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('131', '../../../../../../../../../../../../../../../boot.ini\0.html', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('132', '/etc/passwd', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('133', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('134', '/etc/passwd\0.html', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('135', 'C:\\boot.ini', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('136', 'C:\\boot.ini\0.html', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('137', 'C:\\boot.ini', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('138', '%SYSTEMROOT%\\win.ini', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('139', '%SYSTEMROOT%\\win.ini', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('140', 'John8212', 'zhuce', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('141', 'John8212', 'd\'kc\"z\'gj\'\"**5*(((;-*`)', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('142', 'John8212', '../../../../../../../../../../../../../../../etc/passwd', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('143', '%SYSTEMROOT%\\win.ini\0.html', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('144', '%SYSTEMROOT%\\win.ini\0.html', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('145', '32 AND 32=33 ', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('146', '32 AND 32=33 ', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('147', '32 AND 32=33 ', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('148', 'John8212', '../../../../../../../../../../../../../../../etc/passwd\0.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('149', 'John8212', '/etc/passwd', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('150', 'John8212', '/etc/passwd\0.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('151', 'John8212', 'C:\\boot.ini', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('152', 'John8212', '../../../../../../../../../../../../../../../boot.ini\0.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('153', 'John8212', '../../../../../../../../../../../../../../../boot.ini\0.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('154', 'John8212', '/etc/passwd', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('155', 'John8212', 'John8212', 'FrAmE30.', '../../../../../../../../../../../../../../../etc/passwd', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('156', 'John8212', '%SYSTEMROOT%\\win.ini', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('157', 'John8212', '%SYSTEMROOT%\\win.ini', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('158', 'John8212', 'C:\\boot.ini\0.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('159', 'John8212', 'C:\\boot.ini\0.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('160', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('161', 'John8212', 'John8212', 'FrAmE30.', '../../../../../../../../../../../../../../../boot.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('162', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('163', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('164', 'John8212', '%SYSTEMROOT%\\win.ini\0.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('165', 'John8212', 'John8212', 'FrAmE30.', '../../../../../../../../../../../../../../../etc/passwd\0.html', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('166', 'John8212', 'John8212', 'FrAmE30.', '../../../../../../../../../../../../../../../etc/passwd', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('167', 'John8212', 'John8212', 'FrAmE30.', 'zhuce', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('168', 'John8212', 'John8212', 'FrAmE30.', '/etc/passwd', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('169', 'John8212', 'John8212', 'FrAmE30.', '/etc/passwd\0.html', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('170', 'John8212', 'John8212', 'FrAmE30.', '/etc/passwd', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('171', 'John8212', 'John8212', 'FrAmE30.', 'C:\\boot.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('172', 'John8212', 'John8212', 'FrAmE30.', '%SYSTEMROOT%\\win.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('173', 'John8212', 'John8212', 'FrAmE30.', '%SYSTEMROOT%\\win.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('174', 'John8212', 'John8212', 'FrAmE30.', '%SYSTEMROOT%\\win.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('175', 'John8212', 'John8212', 'zhuce', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('176', 'John8212', 'John8212', 'FrAmE30.', 'C:\\boot.ini', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('177', 'John8212', 'John8212', 'FrAmE30.', '../../../../../../../../../../../../../../../boot.ini\0.html', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('178', 'John8212', 'John8212', '../../../../../../../../../../../../../../../etc/passwd', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('179', 'John8212', 'John8212', '/etc/passwd', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('180', 'John8212', 'John8212', '../../../../../../../../../../../../../../../etc/passwd\0.html', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('181', 'John8212', 'John8212', '/etc/passwd', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('182', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('183', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('184', 'John8212', 'John8212', '../../../../../../../../../../../../../../../etc/passwd', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('185', 'John8212', 'John8212', 'C:\\boot.ini', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('186', 'John8212', 'John8212', '../../../../../../../../../../../../../../../boot.ini\0.html', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('187', 'John8212', 'John8212', '/etc/passwd\0.html', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('188', 'John8212', 'John8212', '../../../../../../../../../../../../../../../boot.ini', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('189', 'John8212', 'John8212', 'FrAmE30.', 'C:\\boot.ini\0.html', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('190', 'John8212', 'John8212', 'C:\\boot.ini\0.html', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('191', 'John8212', 'John8212', 'C:\\boot.ini', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('192', 'John8212', 'John8212', 'FrAmE30.', 'iGD3ahf4', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('193', 'John8212', 'John8212', '%SYSTEMROOT%\\win.ini', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('194', 'John8212', 'John8212', '%SYSTEMROOT%\\win.ini', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('195', 'John8212', 'John8212', '%SYSTEMROOT%\\win.ini\0.html', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('196', 'John8212', 'John8212', '%SYSTEMROOT%\\win.ini\0.html', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('197', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('198', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('199', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('200', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('201', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('202', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('203', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('204', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('205', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('206', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('207', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('208', 'John8212', 'John8212', 'FrAmE30.', '', 'zhuce', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('209', 'John8212', 'John8212', 'FrAmE30.', '', '../../../../../../../../../../../../../../../etc/passwd', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('210', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('211', 'John8212', 'John8212', 'FrAmE30.', '', '../../../../../../../../../../../../../../../etc/passwd\0.html', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('212', 'John8212', 'John8212', 'FrAmE30.', 'd\'kc\"z\'gj\'\"**5*(((;-*`)', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('213', 'John8212', 'John8212', 'FrAmE30.', '', '../../../../../../../../../../../../../../../etc/passwd', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('214', 'John8212', 'John8212', 'FrAmE30.', 'd\'kc\"z\'gj\'\"**5*(((;-*`)', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('215', 'John8212', 'John8212', 'FrAmE30.', '', '/etc/passwd', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('216', 'ping -n 4 localhost', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('217', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('218', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('219', 'John8212', 'John8212', 'FrAmE30.', '', '/etc/passwd\0.html', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('220', 'John8212', 'John8212', 'FrAmE30.', '', '/etc/passwd', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('221', 'John8212', 'John8212', 'FrAmE30.', '', 'C:\\boot.ini\0.html', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('222', 'John8212', 'John8212', 'FrAmE30.', '', 'C:\\boot.ini\0.html', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('223', 'John8212', 'John8212', 'FrAmE30.', '', 'C:\\boot.ini\0.html', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('224', '1;waitfor delay \'0:0:3\'--', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('225', 'John8212', 'John8212', 'FrAmE30.', '', '../../../../../../../../../../../../../../../boot.ini', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('226', 'John8212', 'John8212', 'FrAmE30.', '', '%SYSTEMROOT%\\win.ini', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('227', 'John8212', 'John8212', 'FrAmE30.', '', '../../../../../../../../../../../../../../../boot.ini\0.html', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('228', 'John8212', 'John8212', 'FrAmE30.', '', '%SYSTEMROOT%\\win.ini\0.html', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('229', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('230', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('231', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('232', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('233', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('234', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('235', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('236', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('237', 'John8212', '%n', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('238', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('239', '%n', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('240', '%n', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('241', '%n%n%n%n%n%n%n%n%n%n', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('242', 'John8212', '%n%n%n%n%n%n%n%n%n%n', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('243', '%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('244', 'John8212', '%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('245', 'John8212', '%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('246', 'John8212', 'John8212', 'FrAmE30.', '%n%n%n%n%n%n%n%n%n%n', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('247', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('248', 'John8212', 'John8212', 'FrAmE30.', '%n%n%n%n%n%n%n%n%n%n', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('249', 'John8212', 'John8212', 'FrAmE30.', '%n%n%n%n%n%n%n%n%n%n', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('250', 'John8212', 'John8212', '%n', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('251', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('252', 'John8212', 'John8212', '%n%n%n%n%n%n%n%n%n%n', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('253', 'John8212', 'John8212', 'FrAmE30.', '%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('254', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('255', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('256', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('257', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('258', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('259', 'John8212', 'John8212', 'JVGdWllt', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('260', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('261', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('262', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('263', 'John8212', 'John8212', '%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('264', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('265', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('266', 'John8212', 'John8212', '%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('267', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('268', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('269', 'John8212', 'John8212', 'FrAmE30.', '', '%n', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('270', 'John8212', 'John8212', 'FrAmE30.', '', '%n', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('271', 'John8212', 'John8212', 'FrAmE30.', '', '%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('272', 'John8212', 'John8212', 'FrAmE30.', '', '%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n%n', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('273', '^(#$!@#$)(()))******', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('274', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('275', 'John8212', '^(#$!@#$)(()))******', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('276', 'John8212', 'John8212', 'FrAmE30.', '^(#$!@#$)(()))******', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('277', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('278', 'John8212', 'John8212', '^(#$!@#$)(()))******', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('279', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('280', 'John8212', 'John8212', 'd\'kc\"z\'gj\'\"**5*(((;-*`)', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('281', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('282', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('283', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('284', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('285', 'John8212', 'John8212', 'FrAmE30.', '', '^(#$!@#$)(()))******', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('286', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('287', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('288', 'BgzuIqTBZTJzzohrdRVaFQDtMPeUCxuqNhaMbgqaxETZCGFiTsilXiKHyDqqqBQTE', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('289', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('290', 'John8212', 'BgzuIqTBZTJzzohrdRVaFQDtMPeUCxuqNhaMbgqaxETZCGFiTsilXiKHyDqqqBQTE', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('291', 'John8212', 'John8212', 'FrAmE30.', '', 'sleep(3);', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('292', 'John8212', 'John8212', 'sleep(3);', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('293', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('294', 'John8212', 'John8212', 'sleep(3);', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('295', 'John8212', 'sleep(3);', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('296', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('297', 'sleep(3);', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('298', 'John8212', 'John8212', 'BgzuIqTBZTJzzohrdRVaFQDtMPeUCxuqNhaMbgqaxETZCGFiTsilXiKHyDqqqBQTE', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('299', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('300', 'ping -c 4 localhost', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('301', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('302', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('303', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('304', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('305', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('306', '1);waitfor delay \'0:0:3\'--', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('307', 'John8212', 'John8212', 'FrAmE30.', '', 'BgzuIqTBZTJzzohrdRVaFQDtMPeUCxuqNhaMbgqaxETZCGFiTsilXiKHyDqqqBQTE', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('308', 'John8212', 'John8212', 'FrAmE30.', 'sleep(3);', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('309', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('310', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('311', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('312', '//w3af.org', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('313', 'John8212', 'http://www.w3af.org/', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('314', 'John8212', '//w3af.org', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('315', 'John8212', 'John8212', 'FrAmE30.', 'http://www.w3af.org/', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('316', 'John8212', 'John8212', 'FrAmE30.', '//w3af.org', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('317', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('318', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('319', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('320', 'John8212', 'John8212', 'http://www.w3af.org/', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('321', 'aaaaaaaaaaX!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('322', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('323', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('324', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('325', 'John8212', 'John8212', 'FrAmE30.', '', 'http://www.w3af.org/', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('326', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('327', 'John8212', 'John8212', '//w3af.org', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('328', 'John8212', 'John8212', 'FrAmE30.', '', '//w3af.org', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('329', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('330', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('331', '<!--', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('332', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('333', 'John8212', 'd\'z\"0', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('334', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('335', 'John8212', 'John8212', 'FrAmE30.', 'd\'z\"0', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('336', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('337', 'John8212', '<!--', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('338', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('339', 'John8212', 'John8212', 'd\'z\"0', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('340', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('341', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('342', 'John8212', 'John8212', 'FrAmE30.', '<!--', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('343', 'John8212', 'John8212', '<!--', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('344', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('345', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('346', 'aaaaaaaaaaaaaaaaaaaaX!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('347', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('348', 'John8212', 'John8212', 'FrAmE30.', '', '<!--', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('349', 'oeXZS</->oeXZS/*oeXZS\"oeXZSoeXZS\'oeXZSoeXZS`oeXZS =', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('350', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('351', 'John8212', 'John8212', 'FrAmE30.', '', 'd\'z\"0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('352', 'John8212', 'John8212', 'FrAmE30.', '', 'd\'z\"0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('353', 'John8212', 'John8212', 'JaDnV</->JaDnV/*JaDnV\"JaDnVJaDnV\'JaDnVJaDnV`JaDnV =', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('354', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('355', 'John8212', '8Y1jG</->8Y1jG/*8Y1jG\"8Y1jG8Y1jG\'8Y1jG8Y1jG`8Y1jG =', 'FrAmE30.', 'a18PS</->a18PS/*a18PS\"a18PSa18PS\'a18PSa18PS`a18PS =', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('356', 'John8212', 'John8212', 'FrAmE30.', 'a18PS</->a18PS/*a18PS\"a18PSa18PS\'a18PSa18PS`a18PS =', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('357', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('358', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('359', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('360', 'John8212', 'John8212', 'FrAmE30.', '', 'ppGlq</->ppGlq/*ppGlq\"ppGlqppGlq\'ppGlqppGlq`ppGlq =', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('361', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('362', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('363', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('364', '90YHd</->', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('365', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('366', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('367', 'Eb0aB\'Eb0aB', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('368', 'YItOW\"YItOW', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('369', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('370', '<!--#exec cmd=\"echo -n Werou;echo -n rTtGA\" -->', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('371', '', '', '', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('372', 'XCLwl`', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('373', 'TppGC/*', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('374', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('375', '3dmx3 =', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('376', 'John8212', 'John8212', 'rJmqJ</->', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('377', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('378', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('379', 'John8212', '__import__(\'time\').sleep(3)', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('380', '1));waitfor delay \'0:0:3\'--', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('381', '__import__(\'time\').sleep(3)', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('382', 'John8212', 'John8212', 'utGYg/*', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('383', '/usr/sbin/ping -s localhost 4', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('384', 'John8212', 'John8212', 'TdkEa\"TdkEa', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('385', 'John8212', 'John8212', '5aAGB\'5aAGB', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('386', 'John8212', 'John8212', 'FrAmE30.', 'SPHw2</->', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('387', 'John8212', 'John8212', 'FrAmE30.', 'SPHw2</->', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('388', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('389', 'John8212', 'John8212', 'hATu4 =', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('390', 'John8212', 'John8212', '__import__(\'time\').sleep(3)', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('391', 'John8212', 'John8212', '7iaD6`', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('392', 'John8212', 'John8212', 'FrAmE30.', '', 'F5tGRvoh', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('393', 'John8212', 'John8212', 'FrAmE30.', 'w36Ai/*', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('394', 'John8212', 'John8212', 'FrAmE30.', 'HObzw\"HObzw', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('395', 'John8212', 'John8212', 'FrAmE30.', '', '__import__(\'time\').sleep(3)', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('396', 'John8212', 'John8212', 'FrAmE30.', 'VEbzD\'VEbzD', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('397', 'John8212', 'John8212', 'FrAmE30.', '__import__(\'time\').sleep(3)', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('398', 'John8212', 'John8212', 'FrAmE30.', 'jMYWJ`', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('399', 'John8212', 'John8212', 'FrAmE30.', 'GiMT2 =', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('400', 'John8212', 'rLqng</->', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('401', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('402', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('403', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('404', 'John8212', 'CRlxq\"CRlxq', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('405', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('406', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('407', 'John8212', '91Fw5\'91Fw5', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('408', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('409', 'John8212', 'John8212', 'FrAmE30.', '', 'd\'kc\"z\'gj\'\"**5*(((;-*`)', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('410', 'John8212', 'uNHRh/*', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('411', 'John8212', 'ItRzs`', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('412', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('413', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('414', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('415', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('416', 'John8212', 'unH1Q =', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('417', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('418', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('419', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('420', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('421', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('422', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('423', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('424', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('425', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('426', 'John8212', 'John8212', 'FrAmE30.', '', '0QQOr\'0QQOr', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('427', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('428', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('429', 'John8212', 'John8212', 'FrAmE30.', '', 'eGqH6</->', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('430', 'John8212', 'a)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('431', 'John8212', 'John8212', 'FrAmE30.', '', 'wYGa0/*', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('432', 'a)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('433', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('434', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('435', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('436', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('437', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('438', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('439', 'John8212', 'John8212', 'FrAmE30.', 'a)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('440', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('441', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('442', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('443', 'John8212', 'John8212', 'FrAmE30.', '', 'a)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('444', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('445', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('446', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('447', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('448', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('449', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('450', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('451', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('452', 'John8212', 'htTps://w3af.org/', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('453', 'htTps://w3af.org/', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('454', 'John8212', 'John8212', 'FrAmE30.', 'fTp://w3af.org/', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('455', 'John8212', 'John8212', 'htTps://w3af.org/', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('456', 'John8212', 'John8212', 'hTtp://w3af.org/', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('457', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('458', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('459', 'John8212', 'John8212', 'FrAmE30.', 'htTps://w3af.org/', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('460', 'John8212', 'John8212', 'FrAmE30.', 'hTtp://w3af.org/', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('461', 'John8212', 'John8212', 'FrAmE30.', 'hTtp://w3af.org/', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('462', 'John8212', 'fTp://w3af.org/', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('463', 'Thread.sleep(3000);', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('464', 'John8212', 'John8212', 'fTp://w3af.org/', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('465', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('466', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('467', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('468', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('469', 'John8212', 'John8212', 'FrAmE30.', '', 'htTps://w3af.org/', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('470', '&&ping -n 4 localhost', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('471', 'John8212', 'Thread.sleep(3000);', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('472', 'John8212', 'John8212', 'FrAmE30.', '', 'Thread.sleep(3000);', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('473', 'John8212', 'John8212', 'FrAmE30.', '', 'Thread.sleep(3000);', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('474', 'John8212', 'John8212', 'FrAmE30.', '', 'hTtp://w3af.org/', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('475', 'John8212', 'John8212', 'FrAmE30.', '', 'fTp://w3af.org/', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('476', 'a@a.aaaaaaaaaaX!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('477', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('478', '1\';waitfor delay \'0:0:3\'--', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('479', 'John8212', 'John8212', 'Thread.sleep(3000);', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('480', 'w3af\r\nvulnerable073b: ae5cw3af', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('481', 'w3af\rvulnerable073b: ae5cw3af', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('482', 'John8212', 'w3af\rvulnerable073b: ae5cw3af', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('483', 'John8212', 'w3af\rvulnerable073b: ae5cw3af', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('484', 'John8212', 'John8212', 'FrAmE30.', 'w3af\rvulnerable073b: ae5cw3af', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('485', 'w3af\nvulnerable073b: ae5cw3af', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('486', 'John8212', 'John8212', 'FrAmE30.', 'Thread.sleep(3000);', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('487', 'John8212', 'John8212', 'FrAmE30.', 'w3af\r\nvulnerable073b: ae5cw3af', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('488', 'John8212', 'John8212', 'FrAmE30.', 'w3af\nvulnerable073b: ae5cw3af', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('489', 'John8212', 'w3af\r\nvulnerable073b: ae5cw3af', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('490', 'John8212', 'John8212', 'w3af\r\nvulnerable073b: ae5cw3af', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('491', 'John8212', 'John8212', 'w3af\rvulnerable073b: ae5cw3af', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('492', 'John8212', 'John8212', 'w3af\rvulnerable073b: ae5cw3af', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('493', 'John8212', 'John8212', 'w3af\nvulnerable073b: ae5cw3af', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('494', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('495', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('496', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('497', '', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('498', 'a@a.aaaaaaaaaaaaaaaaaaaaX!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('499', 'a@a.aaaaaaaaaaaaaaaaaaaaX!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('500', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('501', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('502', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('503', 'w3af.org/rfi.html', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('504', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af\nvulnerable073b: ae5cw3af', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('505', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('506', 'John8212', 'http://w3af.org/rfi.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('507', 'http://w3af.org/rfi.html', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('508', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af\r\nvulnerable073b: ae5cw3af', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('509', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('510', 'hTtP://w3af.org/rfi.html', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('511', 'John8212', 'http://w3af.org/rfi.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('512', 'John8212', 'w3af.org/rfi.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('513', 'John8212', 'hTtP://w3af.org/rfi.html', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('514', 'John8212', 'John8212', 'FrAmE30.', 'w3af.org/rfi.html', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('515', 'John8212', 'John8212', 'FrAmE30.', 'http://w3af.org/rfi.html', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('516', 'John8212', 'John8212', 'FrAmE30.', 'hTtP://w3af.org/rfi.html', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('517', 'John8212', 'John8212', 'http://w3af.org/rfi.html', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('518', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('519', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('520', 'a@a.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('521', 'John8212', 'John8212', 'w3af.org/rfi.html', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('522', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('523', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('524', 'John8212', 'John8212', 'hTtP://w3af.org/rfi.html', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('525', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('526', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('527', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('528', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('529', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('530', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('531', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('532', 'John8212', 'John8212', 'FrAmE30.', '', 'http://w3af.org/rfi.html', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('533', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af.org/rfi.html', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('534', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af.org/rfi.html', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('535', 'Thread.Sleep(3000);', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('536', 'Thread.Sleep(3000);', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('537', 'a@a.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('538', 'John8212', 'John8212', 'FrAmE30.', '', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('539', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('540', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('541', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('542', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('543', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('544', 'John8212', 'Thread.Sleep(3000);', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('545', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('546', 'John8212', 'John8212', 'FrAmE30.', '', 'Thread.Sleep(3000);', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('547', '&&ping -c 4 localhost', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('548', 'John8212', 'John8212', 'Thread.Sleep(3000);', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('549', 'John8212', 'John8212', 'FrAmE30.', 'Thread.Sleep(3000);', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('550', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('551', '1\');waitfor delay \'0:0:3\'--', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('552', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('553', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('554', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('555', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('556', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('557', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('558', '11111111119!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('559', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('560', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('561', '111111111111111111119!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('562', '&&/usr/sbin/ping -s localhost 4', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('563', '1\'));waitfor delay \'0:0:3\'--', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('564', '1111111111111111111111111111119!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('565', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('566', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('567', '11111111111111111111111111111111111111119!', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('568', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('569', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('570', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('571', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('572', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('573', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('574', '|ping -n 4 localhost', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('575', '1 or SLEEP(3)', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('576', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('577', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('578', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('579', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('580', 'John8212', 'aaaaaaaaaaX!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('581', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('582', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('583', 'John8212', 'aaaaaaaaaaaaaaaaaaaaX!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('584', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('585', '|ping -c 4 localhost', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('586', 'John8212', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('587', '1\' or SLEEP(3) and \'1\'=\'1', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('588', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('589', 'John8212', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('590', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('591', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('592', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('593', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('594', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('595', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('596', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('597', '|/usr/sbin/ping -s localhost 4', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('598', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('599', '1\" or SLEEP(3) and \"1\"=\"1', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('600', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('601', 'John8212', 'a@a.aaaaaaaaaaX!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('602', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('603', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('604', 'John8212', 'a@a.aaaaaaaaaaaaaaaaaaaaX!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('605', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('606', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('607', 'John8212', 'a@a.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('608', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('609', ';ping -n 4 localhost', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('610', 'John8212', 'a@a.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('611', '1 or pg_sleep(3)', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('612', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('613', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('614', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('615', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('616', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('617', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('618', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('619', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('620', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('621', ';ping -c 4 localhost', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('622', 'John8212', '11111111119!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('623', '1\' or pg_sleep(3) and \'1\'=\'1', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('624', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('625', 'John8212', '111111111111111111119!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('626', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('627', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('628', 'John8212', '1111111111111111111111111111119!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('629', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('630', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('631', 'John8212', '11111111111111111111111111111111111111119!', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('632', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('633', ';/usr/sbin/ping -s localhost 4', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('634', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('635', '1\" or pg_sleep(3) and \"1\"=\"1', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('636', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('637', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('638', 'John8212', '46\" OR \"46\"=\"46', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('639', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('640', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('641', 'John8212', '46\" AND \"46\"=\"47', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('642', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('643', 'John8212', 'John8212', 'FrAmE30.', 'aaaaaaaaaaX!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('644', 'John8212', '46\' OR \'46\'=\'46', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('645', '`ping -n 4 localhost`', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('646', 'John8212', 'John8212', 'FrAmE30.', 'aaaaaaaaaaaaaaaaaaaaX!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('647', 'John8212', '46\' AND \'46\'=\'47', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('648', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('649', 'John8212', '46 OR 46=46 ', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('650', 'John8212', 'John8212', 'FrAmE30.', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('651', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('652', 'John8212', '46 AND 46=47 ', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('653', 'John8212', 'John8212', 'FrAmE30.', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('654', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('655', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('656', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('657', '`ping -c 4 localhost`', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('658', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('659', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('660', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('661', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('662', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('663', 'John8212', '1;waitfor delay \'0:0:3\'--', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('664', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('665', 'John8212', 'John8212', 'FrAmE30.', 'a@a.aaaaaaaaaaX!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('666', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('667', 'John8212', 'John8212', 'FrAmE30.', 'a@a.aaaaaaaaaaaaaaaaaaaaX!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('668', '', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('669', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('670', 'John8212', 'John8212', 'FrAmE30.', 'a@a.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('671', 'run ping -n 4 localhost', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('672', 'John8212', 'John8212', 'FrAmE30.', 'a@a.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('673', 'John8212', 'John8212', 'FrAmE30.', 'a@a.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('674', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('675', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('676', 'John8212', '1);waitfor delay \'0:0:3\'--', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('677', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('678', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('679', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('680', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('681', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('682', 'John8212', 'ping -n 4 localhost', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('683', 'John8212', 'John8212', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('684', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('685', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('686', 'John8212', 'John8212', 'FrAmE30.', '11111111119!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('687', 'John8212', '1));waitfor delay \'0:0:3\'--', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('688', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('689', 'John8212', 'John8212', 'FrAmE30.', '111111111111111111119!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('690', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('691', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('692', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('693', 'John8212', 'John8212', 'FrAmE30.', '1111111111111111111111111111119!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('694', 'John8212', 'ping -c 4 localhost', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('695', 'John8212', 'John8212', 'FrAmE30.', '11111111111111111111111111111111111111119!', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('696', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('697', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('698', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('699', 'John8212', '1\';waitfor delay \'0:0:3\'--', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('700', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('701', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('702', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('703', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('704', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('705', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('706', 'John8212', '/usr/sbin/ping -s localhost 4', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('707', 'John8212', 'John8212', 'aaaaaaaaaaX!', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('708', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('709', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('710', 'John8212', 'John8212', 'aaaaaaaaaaaaaaaaaaaaX!', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('711', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('712', 'John8212', '1\');waitfor delay \'0:0:3\'--', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('713', 'John8212', 'John8212', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('714', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('715', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('716', 'John8212', 'John8212', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('717', 'John8212', '&&ping -n 4 localhost', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('718', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('719', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('720', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('721', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('722', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('723', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('724', 'John8212', '1\'));waitfor delay \'0:0:3\'--', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('725', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('726', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('727', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('728', 'John8212', '&&ping -c 4 localhost', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('729', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('730', 'John8212', 'John8212', 'a@a.aaaaaaaaaaX!', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('731', 'John8212', 'John8212', 'a@a.aaaaaaaaaaaaaaaaaaaaX!', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('732', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('733', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('734', 'John8212', 'John8212', 'a@a.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('735', 'John8212', '1 or SLEEP(3)', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('736', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('737', 'John8212', 'John8212', 'a@a.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaX!', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('738', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('739', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('740', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('741', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('742', 'John8212', '&&/usr/sbin/ping -s localhost 4', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('743', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('744', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('745', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('746', 'John8212', '', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('747', 'John8212', 'John8212', '', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('748', 'John8212', '1\' or SLEEP(3) and \'1\'=\'1', 'FrAmE30.', '', 'w3af@email.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('749', 'xxx', 'xxx', 'xxx', '男', 'xxxx@xxx.ccc', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('750', 'll', 'll', '123456', '女', '123@qq.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('751', '123', '123', '123', '男', '123', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('752', 'aa', 'dd', '123', '男', '', null, null, null, null, null, null);
