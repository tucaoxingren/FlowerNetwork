/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50552
Source Host           : 127.0.0.1:3306
Source Database       : db_flower

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-06-27 06:36:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_flower
-- ----------------------------
DROP TABLE IF EXISTS `tb_flower`;
CREATE TABLE `tb_flower` (
  `fl_no` varchar(50) NOT NULL COMMENT '鲜花编号',
  `fl_name` varchar(50) NOT NULL COMMENT '鲜花名称',
  `fl_price` float(20,2) NOT NULL DEFAULT '100.00' COMMENT '鲜花价格',
  `num` int(11) NOT NULL DEFAULT '10' COMMENT '鲜花库存',
  `pic` varchar(50) NOT NULL COMMENT '鲜花图片',
  `descri` varchar(500) DEFAULT NULL COMMENT '鲜花描述',
  `tp_id` int(11) NOT NULL COMMENT '鲜花类型，外键',
  `remark` varchar(500) DEFAULT NULL COMMENT '鲜花备注',
  PRIMARY KEY (`fl_no`),
  KEY `tp_id` (`tp_id`),
  CONSTRAINT `tb_flower_ibfk_1` FOREIGN KEY (`tp_id`) REFERENCES `tb_type` (`tp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_flower
-- ----------------------------
INSERT INTO `tb_flower` VALUES ('aq52001', '携手一生', '169.00', '10', 'aq52001.jpg', '11枝优质红玫瑰搭配绿叶，满天星，随机赠送2只小熊.卡其色报纸圆形包装，白色网纱束腰，搭配精美蝴蝶结。', '1', '放慢速度才恍然顿悟，最亮演出是你投入。你一举一动我都在乎，无论爱出现何出我义无反顾，用时间换你微薄的幸福，直到真心刻骨。520，只想说“我爱你”!');
INSERT INTO `tb_flower` VALUES ('aq52002', '微微一笑很倾城', '306.00', '10', 'aq52002.jpg', '33枝香槟玫瑰，黄莺、石竹梅外围.复古英文报纸扇形包装，白色麻片束腰，白色与咖啡色缎带扎束.', '1', '我想将对你的感情 化作暖暖的阳光 期待那洒落的光明能温暖你的心房.');
INSERT INTO `tb_flower` VALUES ('aq52003', '比翼双飞', '199.00', '10', 'aq52003.jpg', '11枝极品红玫瑰，搭配桔梗，黄莺，丝带草.深咖色艺术纸，手握处系粉色丝带，礼盒装.', '1', '记得你每一个微笑，记得你每一滴眼泪，手牵手，微笑着肩并肩往前走，你遇见我，我遇见你，然而，遇见你，是此生最美的风景.');
INSERT INTO `tb_flower` VALUES ('aq52004', '南国相思', '283.00', '10', 'aq52004.jpg', '33枝顶级红玫瑰，相思梅点缀。黑色特种纸圆形包装，红色蝴蝶结束扎。', '1', '把无数的思念化做心中无限的祝福，默默的为你祈祷。');
INSERT INTO `tb_flower` VALUES ('aq52005', '520我爱你', '239.00', '10', 'aq52005.jpg', '9枝红玫瑰，搭配黄莺，满天星（或者小雏菊）拼出数字520.心形礼盒包装', '1', '我最美好的愿望是能，执子之手，与子偕老。亲爱的，我爱你。');
INSERT INTO `tb_flower` VALUES ('aq52006', '思美人', '185.00', '10', 'aq52006.jpg', '11枝粉玫瑰，满天星，黄莺点缀。白色网纱内裹，白色卷边纸内衬，粉色卷边纸双层包装，粉色缎带蝴蝶结扎束。', '1', '爱你，就在每天的思念里，好美！爱你，就在每天的问候里，好暖！爱你，就在每天的短信里，好浪漫！想告诉你：有你在，我很快乐！');
INSERT INTO `tb_flower` VALUES ('aq52007', '盛世情歌', '258.00', '10', 'aq52007.jpg', '19朵极品红玫瑰，搭配尤加利叶点缀.精品礼盒包装', '1', '无论我们相距多么遥远，我的思念总在你的身边。想你！');
INSERT INTO `tb_flower` VALUES ('aq52008', '你是我的璀璨星光', '278.00', '10', 'aq52008.jpg', '昆明空运33枝顶级红玫瑰，搭配黄莺、石竹梅（或相思梅）.粉色卷边纸内衬，红色卷边纸精美圆形包装，搭配粉色蝴蝶结.', '1', '在我心中任何时刻都只有\'\'想你!爱你!\" ，你是我的璀璨星光！');
INSERT INTO `tb_flower` VALUES ('aq52009', '此生幸福', '218.00', '10', 'aq52009.kpg', '11朵顶级红玫瑰，2枝香水百合，黄莺、满天星间插.内衬白色瓦楞纸，外层双层紫色波点卷边纸圆形包装，紫色丝带扎束.', '1', '恋一个美丽善良的你，说一席永不离弃的话，走一生风雨携手的路，守一段天长地久的情，开一朵地老天荒的花，愿我们从此幸福一生！');
INSERT INTO `tb_flower` VALUES ('aq52010', '浪漫的梦', '321.00', '10', 'aq52010.jpg', '36枝顶级红玫瑰做成心形，满天星围边，绿叶点缀，一对可爱公仔。内衬白色卷边纸，粉色软纱包裹，外层粉色卷边纸双层圆形包装，粉色缎带扎束.', '1', '这束花代表我对你坚定地爱，及对我们爱情坚定的信心.');
INSERT INTO `tb_flower` VALUES ('qh52001', '美好的恋情', '269.00', '10', 'qh52001.jpg', '19枝粉玫瑰，搭配绿叶.长形礼盒精美包装.', '2', '最最爱你，最最想你，今生今世，只愿与你携手。');
INSERT INTO `tb_flower` VALUES ('qh52002', '无法不爱你', '179.00', '10', 'qh52002.jpg', '精选11朵精品红玫瑰，2只可爱的小熊，搭配满天星，绿叶.精选网状包装纸镶嵌，黑色外围包装纸遥相呼应，红色彩带扎束.', '2', '一生一世一心一意只为爱你而存在。');
INSERT INTO `tb_flower` VALUES ('qh52003', '非你不可', '299.00', '10', 'qh52003.jpg', '33朵极品红玫瑰.精美包装纸包装，银色蝴蝶结束扎，精装长方形礼盒装。', '2', '    花儿忍不住清香，鸟儿忍不住飞翔，我忍不住对你的思念。微风忍不住吹拂，火焰忍不住燃烧，我忍不住思念你.');
INSERT INTO `tb_flower` VALUES ('qh52004', '花开月正圆', '229.00', '10', 'qh52004.jpg', '19朵顶级红玫瑰，搭配石竹梅，相思梅点缀.淡黄色硬纸圆形包装。', '2', '自从认识你之后，才真正体会到付出的幸福...');
INSERT INTO `tb_flower` VALUES ('qh52005', '爱你到地老天荒', '168.00', '10', 'qh52005.jpg', '11枝红玫瑰，满天星，黄莺，点缀，随机赠送一对小熊。粉色卷边纸包装，搭配紫色美丽蝴蝶结。', '2', '爱你到地老天荒。');
INSERT INTO `tb_flower` VALUES ('qh52006', '爱的诺言', '299.00', '10', 'qh52006.jpg', '33朵极品昆明香槟，粉玫瑰混搭，搭配石竹梅（或相思梅）。高档韩式包装，花结束扎。', '2', '花儿说，为了你我不愿随风而去；花儿说，珍藏我们的感情就是珍藏记忆；花儿说，珍藏我们的记忆就是珍藏甜蜜！');
INSERT INTO `tb_flower` VALUES ('qh52007', '天长地久', '379.00', '10', 'qh52007.jpg', '    19朵蓝色妖姬，栀子叶间插,随机赠送一只公仔.白色软纱内衬，白色和蓝色卷边纸圆形包装，金色和白色蝴蝶结束扎.', '2', '我们的爱情是天长地久的，我愿意用我的一生去呵护你！');
INSERT INTO `tb_flower` VALUES ('qh52008', '初恋的感觉', '182.00', '10', 'qh52008.jpg', '11朵极品粉玫瑰，黄莺搭配。网格子精美包装，蝴蝶结束扎，长方形礼盒装。', '2', '有些爱，在不经意中，刻骨；有些人，在不经意时，相遇；有些事，在不经意间，开始；有句话，三个字，在不经意里，想要脱口而出！我的爱，你懂得！');
INSERT INTO `tb_flower` VALUES ('qh52009', '美丽心情', '209.00', '10', 'qh52009.jpg', '    6枝优质白色香水百合，黄莺绿叶间插点缀。内衬英文雾面纸，外层蓝色珠光纸扇形包装，咖啡色麻片束腰，蓝色缎带扎束', '2', '    十足祝福送给你，愿你天天拥有美丽心情！');
INSERT INTO `tb_flower` VALUES ('qh52010', '克拉恋人', '499.00', '10', 'qh52010', '99朵红玫瑰，搭配黄莺，满天星，2只小熊.粉色褶皱纸，圆形包扎.', '2', '望着情人眼，浪漫在眼前。摸着情人脸，柔情比蜜甜。怜着情人心，爱意心连心。想着情人好，情网无可逃。牵着情人手，这就跟我走.');
INSERT INTO `tb_flower` VALUES ('sr52001', '温馨祝福', '219.00', '10', 'sr52001.jpg', '11朵红色康乃馨，2枝香水百合，搭配绿叶.白色纱布包装.', '3', '白百合纯白的颜色，柔美的花冠，让人联想美丽纯洁的少女，白百合的花语是纯洁，庄严，百年好合，持久的爱。');
INSERT INTO `tb_flower` VALUES ('sr52002', '光阴的故事', '199.00', '10', 'sr52002.jpg', '精选红色康乃馨12朵，搭配黄莺绿叶.精美包装纸叠纸包装，粉色丝带束扎.', '3', '走遍千山万水，看过潮起潮落，历经风吹雨打，尝尽酸甜苦辣，始终觉得您的怀抱最温暖!不论我走多远，心中永远眷恋。');
INSERT INTO `tb_flower` VALUES ('sr52003', '深深的祝福', '219.00', '10', 'sr52003.jpg', '6枝顶级香水百合，搭配满天星、黄莺、外围勿忘我点缀。紫色精美包装纸包装，紫色蝴蝶结点缀。', '3', '爱，需要一点一滴的积累；情，需要每分每秒的坚持……');
INSERT INTO `tb_flower` VALUES ('sr52004', '欢乐颂', '268.00', '10', 'sr52004.jpg', '外围高档粉色古典纸，内衬格纹雾面纸，系金色丝带蝴蝶结束扎。精选33朵极品香槟玫瑰，外围叶上黄金点缀。', '3', '    真情就象四季盛开的花，无论要经历怎样的风雪骄阳，也无法停止我对你一如既往的倾慕！');
INSERT INTO `tb_flower` VALUES ('sr52005', '风的光阴', '189.00', '10', 'sr52005.jpg', '11枝极品香槟玫瑰，搭配桔梗，黄莺，丝带草.浅蓝色艺术纸，手握处系粉色丝带，米白色礼盒.', '3', '如今的时代，爱情在电波里穿越千山万水，在思念里直抒情怀，可于刹那传递给心爱的人。我要把爱写在贺卡里，放飞在电波中，传递到你的心上，伴你美丽到永远。亲爱的，我爱你。');

-- ----------------------------
-- Table structure for tb_manager
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `loginname` varchar(20) NOT NULL COMMENT '管理员帐号',
  `pwd` varchar(20) NOT NULL DEFAULT '123456' COMMENT '管理员登录密码',
  PRIMARY KEY (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO `tb_manager` VALUES ('admin001', '123456');
INSERT INTO `tb_manager` VALUES ('admin002', '123456');
INSERT INTO `tb_manager` VALUES ('admin003', '12345678');

-- ----------------------------
-- Table structure for tb_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `tb_orderitem`;
CREATE TABLE `tb_orderitem` (
  `oi_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `ord_no` varchar(20) NOT NULL COMMENT '所属订单',
  `fl_no` varchar(50) NOT NULL COMMENT '商品项',
  `oi_count` int(11) NOT NULL DEFAULT '1' COMMENT '购买数量',
  PRIMARY KEY (`oi_id`),
  KEY `ord_no` (`ord_no`),
  KEY `fl_no` (`fl_no`),
  CONSTRAINT `tb_orderitem_ibfk_1` FOREIGN KEY (`ord_no`) REFERENCES `tb_orders` (`ord_no`),
  CONSTRAINT `tb_orderitem_ibfk_2` FOREIGN KEY (`fl_no`) REFERENCES `tb_flower` (`fl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_orderitem
-- ----------------------------
INSERT INTO `tb_orderitem` VALUES ('1', '1', 'sr52005', '3');
INSERT INTO `tb_orderitem` VALUES ('2', '3', 'aq52001', '1');
INSERT INTO `tb_orderitem` VALUES ('3', '2', 'aq52002', '2');
INSERT INTO `tb_orderitem` VALUES ('4', '1', 'aq52001', '1');
INSERT INTO `tb_orderitem` VALUES ('5', '2', 'aq52004', '1');
INSERT INTO `tb_orderitem` VALUES ('6', '3', 'qh52003', '2');
INSERT INTO `tb_orderitem` VALUES ('7', '4', 'qh52002', '1');
INSERT INTO `tb_orderitem` VALUES ('8', '5', 'qh52006', '1');
INSERT INTO `tb_orderitem` VALUES ('9', '6', 'sr52005', '1');
INSERT INTO `tb_orderitem` VALUES ('11', '20170626025626213', 'aq52001', '2');
INSERT INTO `tb_orderitem` VALUES ('12', '20170626031122017', 'aq52002', '1');
INSERT INTO `tb_orderitem` VALUES ('13', '20170626055312928', 'aq52004', '1');
INSERT INTO `tb_orderitem` VALUES ('14', '20170626055312928', 'aq52006', '1');

-- ----------------------------
-- Table structure for tb_orders
-- ----------------------------
DROP TABLE IF EXISTS `tb_orders`;
CREATE TABLE `tb_orders` (
  `ord_no` varchar(50) NOT NULL COMMENT '订单号',
  `ord_date` date NOT NULL COMMENT '下单日期',
  `us_loginname` varchar(20) NOT NULL COMMENT '下单用户',
  `address` varchar(100) NOT NULL COMMENT '收件人地址',
  `phone` varchar(20) NOT NULL COMMENT '收件人电话',
  `ord_name` varchar(50) NOT NULL COMMENT '收件人姓名',
  `ord_price` float(10,2) NOT NULL COMMENT '订单总价',
  PRIMARY KEY (`ord_no`),
  KEY `us_loginname` (`us_loginname`),
  CONSTRAINT `tb_orders_ibfk_1` FOREIGN KEY (`us_loginname`) REFERENCES `tb_users` (`us_loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_orders
-- ----------------------------
INSERT INTO `tb_orders` VALUES ('1', '2017-06-22', 'zs0004', '云南省昆明市五华区', '13888888888', '张三三', '0.00');
INSERT INTO `tb_orders` VALUES ('2', '2017-06-22', 'zs0003', '云南省昆明市官渡区', '13333333333', '李思思', '0.00');
INSERT INTO `tb_orders` VALUES ('20170626025626213', '2017-06-26', 'zs0004', '云南省昆明市五华区教场西路8号', '13888888888', '张三', '338.00');
INSERT INTO `tb_orders` VALUES ('20170626031122017', '2017-06-26', 'zs0004', '云南省昆明市五华区教场西路8号', '13888888888', '张三', '306.00');
INSERT INTO `tb_orders` VALUES ('20170626055312928', '2017-06-26', 'zs0004', '云南省昆明市五华区教场西路8号', '13888888888', '张三', '468.00');
INSERT INTO `tb_orders` VALUES ('3', '2017-06-22', 'zs0001', '云南省昆明市五华区教程路', '138333333333', '王维', '0.00');
INSERT INTO `tb_orders` VALUES ('4', '2017-06-22', 'zs0001', '教程西路', '152222222222', '王五', '0.00');
INSERT INTO `tb_orders` VALUES ('5', '2017-06-22', 'zs0003', '教场西路', '15288888888', '王铭', '0.00');
INSERT INTO `tb_orders` VALUES ('6', '2017-06-22', 'zs0002', '莲花池', '13808888888', '张鹏', '0.00');

-- ----------------------------
-- Table structure for tb_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `tp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `tp_name` varchar(20) NOT NULL COMMENT '类型名称',
  `remark` varchar(500) DEFAULT NULL COMMENT '类型备注',
  PRIMARY KEY (`tp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
INSERT INTO `tb_type` VALUES ('1', '爱情鲜花', null);
INSERT INTO `tb_type` VALUES ('2', '求婚鲜花', null);
INSERT INTO `tb_type` VALUES ('3', '生日鲜花', null);
INSERT INTO `tb_type` VALUES ('4', '商业用花', null);
INSERT INTO `tb_type` VALUES ('5', '节日鲜花', null);
INSERT INTO `tb_type` VALUES ('6', '友情鲜花', null);
INSERT INTO `tb_type` VALUES ('7', '长辈鲜花', null);
INSERT INTO `tb_type` VALUES ('8', '慰问鲜花', null);

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `us_loginname` varchar(20) NOT NULL COMMENT '用户名',
  `pwd` varchar(20) NOT NULL DEFAULT '123456' COMMENT '密码',
  `phone` varchar(20) DEFAULT '13888888888' COMMENT '电话',
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`us_loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('zs0001', '123456', '13888888888', null, null, null);
INSERT INTO `tb_users` VALUES ('zs0002', '123456', '13888888888', null, null, null);
INSERT INTO `tb_users` VALUES ('zs0003', '123456', '13888888888', null, null, null);
INSERT INTO `tb_users` VALUES ('zs0004', '12345678', '13888888888', '张三', '1633481941@qq.com', null);
