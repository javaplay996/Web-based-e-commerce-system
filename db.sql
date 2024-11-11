/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dianzhishangcheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dianzhishangcheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dianzhishangcheng`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620025471318 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-01 11:42:19',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-05-01 11:42:19',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-05-01 11:42:19',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-05-01 11:42:19',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-05-01 11:42:19',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-05-01 11:42:19',6,'宇宙银河系月球1号','月某','13823888886','是'),(1611546786896,'2021-05-01 11:53:06',1611546730956,'广东省梅州市梅县区新城街道丽景湾(嘉应西二巷)','1','12312312312','是'),(1614566611576,'2021-03-01 10:43:31',11,'陕西省西安市蓝田县葛牌镇五凤山','123','12312312311','否'),(1620025471317,'2021-05-03 15:04:30',1620025259318,'重庆市巴南区界石镇公平成功水库','132','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620025410923 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620025551718 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-05-01 11:42:19',1,1,'提问1','回复1',1),(62,'2021-05-01 11:42:19',2,2,'提问2','回复2',2),(63,'2021-05-01 11:42:19',3,3,'提问3','回复3',3),(64,'2021-05-01 11:42:19',4,4,'提问4','回复4',4),(65,'2021-05-01 11:42:19',5,5,'提问5','回复5',5),(66,'2021-05-01 11:42:19',6,6,'提问6','回复6',6),(1611546951493,'2021-05-01 11:55:51',1611546730956,NULL,'在吗',NULL,0),(1611546961573,'2021-05-01 11:56:01',1611546730956,NULL,'优惠券怎么领',NULL,0),(1611547021004,'2021-05-01 11:57:00',1611546730956,1,NULL,'HJRTRY',NULL),(1614570630596,'2021-03-01 11:50:30',11,NULL,'1321323122',NULL,0),(1614570669178,'2021-03-01 11:51:08',11,1,NULL,'huifu',0),(1616499754378,'2021-03-23 19:42:33',11,NULL,'aaaaaaaaaaa',NULL,0),(1616499755663,'2021-03-23 19:42:35',11,NULL,'aaaaaaaaaaa',NULL,0),(1616499756823,'2021-03-23 19:42:36',11,NULL,'aaaaaaaaaaa',NULL,0),(1616499757344,'2021-03-23 19:42:36',11,NULL,'aaaaaaaaaaa',NULL,0),(1616499786274,'2021-03-23 19:43:05',11,1,NULL,'123123132',0),(1616499810684,'2021-03-23 19:43:30',11,1,NULL,'123123',0),(1616499819644,'2021-03-23 19:43:39',11,1,NULL,'421123rrq221 sdfwet ',0),(1616499820019,'2021-03-23 19:43:39',11,1,NULL,'421123rrq221 sdfwet ',0),(1616499821168,'2021-03-23 19:43:40',11,1,NULL,'421123rrq221 sdfwet ',0),(1616499821187,'2021-03-23 19:43:40',11,1,NULL,'421123rrq221 sdfwet ',NULL),(1620025551717,'2021-05-03 15:05:51',1620025259318,NULL,'111111111',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/dianzhishangcheng/upload/1614565768022.jpg'),(2,'picture2','http://localhost:8080/dianzhishangcheng/upload/1614565776564.jpg'),(3,'picture3','http://localhost:8080/dianzhishangcheng/upload/1614565783678.jpg'),(6,'picture4','http://localhost:8080/dianzhishangcheng/upload/1614565801742.jpg'),(7,'picture5','http://localhost:8080/dianzhishangcheng/upload/1614565817751.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618975984416 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-05-01 11:42:20',1,1,'评论内容1','回复内容1'),(122,'2021-05-01 11:42:20',2,2,'评论内容2','回复内容2'),(123,'2021-05-01 11:42:20',3,3,'评论内容3','回复内容3'),(124,'2021-05-01 11:42:20',4,4,'评论内容4','回复内容4'),(125,'2021-05-01 11:42:20',5,5,'评论内容5','回复内容5'),(126,'2021-05-01 11:42:20',6,6,'评论内容6','回复内容6'),(1611547054320,'2021-05-01 11:57:34',1611546568410,1611546730956,'很不错的花',NULL),(1618975984415,'2021-05-01 11:33:04',1618975813461,11,'好可爱啊',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-05-01 11:42:19','标题1','简介1','http://localhost:8080/dianzhishangcheng/upload/1618974675851.jpg','<p><span style=\"color: rgb(96, 98, 102);\">内容1</span></p>'),(112,'2021-05-01 11:42:19','标题2','简介2','http://localhost:8080/dianzhishangcheng/upload/1614566011372.jpg','<p>内容2</p>'),(113,'2021-05-01 11:42:19','标题3','简介3','http://localhost:8080/dianzhishangcheng/upload/1614566021050.jpg','<p>内容3</p>'),(114,'2021-05-01 11:42:19','标题4','简介4','http://localhost:8080/dianzhishangcheng/upload/1614566031144.jpg','<p>内容4</p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1620025534264 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1620025488008,'2021-05-03 15:04:47','2021531544732654412','shangpinxinxi',1620025259318,1620025320533,'菜狗','http://localhost:8080/dianzhishangcheng/upload/1620025297592.jpg',8,1000,1000,8000,8000,1,'未支付','重庆市巴南区界石镇公平成功水库'),(1620025519212,'2021-05-03 15:05:18','2021531551895152259','shangpinxinxi',1620025259318,1620025320533,'菜狗','http://localhost:8080/dianzhishangcheng/upload/1620025297592.jpg',8,1000,1000,8000,8000,1,'已完成','重庆市巴南区界石镇公平成功水库'),(1620025534263,'2021-05-03 15:05:33','2021531553383035135','shangpinxinxi',1620025259318,1620025320533,'菜狗','http://localhost:8080/dianzhishangcheng/upload/1620025297592.jpg',1,1000,1000,1000,1000,1,'已支付','重庆市巴南区界石镇公平成功水库');

/*Table structure for table `shangpinchuku` */

DROP TABLE IF EXISTS `shangpinchuku`;

CREATE TABLE `shangpinchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620025358883 DEFAULT CHARSET=utf8 COMMENT='商品出库';

/*Data for the table `shangpinchuku` */

insert  into `shangpinchuku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`dengjishijian`,`beizhu`) values (51,'2021-05-01 11:42:19','商品名称1','商品分类1',1,'2021-05-01','备注1'),(52,'2021-05-01 11:42:19','商品名称2','商品分类2',2,'2021-05-01','备注2'),(53,'2021-05-01 11:42:19','商品名称3','商品分类3',3,'2021-05-01','备注3'),(54,'2021-05-01 11:42:19','商品名称4','商品分类4',4,'2021-05-01','备注4'),(55,'2021-05-01 11:42:19','商品名称5','商品分类5',5,'2021-05-01','备注5'),(56,'2021-05-01 11:42:19','商品名称6','商品分类6',6,'2021-05-01','备注6');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1620025275291 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-05-01 11:42:19','商品分类1'),(22,'2021-05-01 11:42:19','商品分类2'),(23,'2021-05-01 11:42:19','商品分类3'),(24,'2021-05-01 11:42:19','商品分类4'),(1618975729749,'2021-05-01 11:28:49','商品分类5'),(1618975733521,'2021-05-01 11:28:53','商品分类6'),(1620025275290,'2021-05-03 15:01:14','食物');

/*Table structure for table `shangpinruku` */

DROP TABLE IF EXISTS `shangpinruku`;

CREATE TABLE `shangpinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620025333510 DEFAULT CHARSET=utf8 COMMENT='商品入库';

/*Data for the table `shangpinruku` */

insert  into `shangpinruku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`dengjishijian`,`beizhu`) values (41,'2021-05-01 11:42:19','商品名称1','商品分类1',1,'2021-05-01','备注1'),(42,'2021-05-01 11:42:19','商品名称2','商品分类2',2,'2021-05-01','备注2'),(43,'2021-05-01 11:42:19','商品名称3','商品分类3',3,'2021-05-01','备注3'),(44,'2021-05-01 11:42:19','商品名称4','商品分类4',4,'2021-05-01','备注4'),(45,'2021-05-01 11:42:19','商品名称5','商品分类5',5,'2021-05-01','备注5'),(46,'2021-05-01 11:42:19','商品名称6','商品分类6',6,'2021-05-01','备注6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chima` varchar(200) DEFAULT NULL COMMENT '规格',
  `yanshe` varchar(200) DEFAULT NULL COMMENT '颜色',
  `shangpinyongtu` varchar(200) DEFAULT NULL COMMENT '商品用途',
  `zengsongduixiang` varchar(200) DEFAULT NULL COMMENT '赠送对象',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620025320534 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`chima`,`yanshe`,`shangpinyongtu`,`zengsongduixiang`,`shuliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (31,'2021-05-01 11:42:19','商品名称1','商品分类1','http://localhost:8080/dianzhishangcheng/upload/1618974603190.webp','规格1','颜色1','爱情','恋人',1,'<p>商品详情1</p>','2021-05-03 15:04:02',9,99.9),(32,'2021-05-01 11:42:19','商品名称2','商品分类2','http://localhost:8080/dianzhishangcheng/upload/1618974618773.jpg','规格2','颜色2','爱情','恋人',2,'<p>商品详情2</p>','2021-05-01 11:32:24',15,99.9),(33,'2021-05-01 11:42:19','商品名称3','商品分类3','http://localhost:8080/dianzhishangcheng/upload/1618974629148.jpg','规格3','颜色3','爱情','恋人',3,'<p>商品详情3</p>','2021-05-01 11:10:22',10,99.9),(34,'2021-05-01 11:42:19','商品名称4','商品分类4','http://localhost:8080/dianzhishangcheng/upload/1618974639853.jpg','规格4','颜色4','爱情','恋人',4,'<p>商品详情4</p>','2021-05-01 11:10:32',9,99.9),(35,'2021-05-01 11:42:19','商品名称5','商品分类5','http://localhost:8080/dianzhishangcheng/upload/1618974651901.jpg','规格5','颜色5','爱情','恋人',5,'<p><br></p><p><img src=\"http://localhost:8080/dianzhishangcheng/upload/1614566510015.webp\"></p><p>商品详情5</p>','2021-05-03 15:03:34',32,99.9),(36,'2021-05-01 11:42:19','商品名称6','商品分类6','http://localhost:8080/dianzhishangcheng/upload/1618974663175.jpg','规格6','颜色6','爱情','恋人',6,'<p>商品详情6</p>','2021-05-01 11:32:33',16,99.9),(1620025320533,'2021-05-03 15:01:59','菜狗','食物','http://localhost:8080/dianzhishangcheng/upload/1620025297592.jpg','规格1','绿白相间',NULL,'',50,'<p><span style=\"color: rgb(96, 98, 102);\">商品详情1</span></p>','2021-05-03 15:05:33',12,1000);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618975992494 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1611546871926,'2021-05-01 11:54:31',1611546730956,1611546568410,'shangpinxinxi','白玫瑰花束','http://localhost:8080/dianzhishangcheng/upload/1611546536278.jpg'),(1611546915118,'2021-05-01 11:55:14',1611546730956,36,'shangpinxinxi','商品名称6','http://localhost:8080/dianzhishangcheng/upload/1611546364108.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','lmkt8gkswfkh1t01eeabe6t2eai3n3lg','2021-05-01 11:44:06','2021-05-03 16:07:38'),(2,1611546730956,'1','yonghu','用户','ccbp71gdyn9y2unb0yj8338zspj3duqk','2021-05-01 11:52:16','2021-05-01 12:57:10'),(3,11,'111','yonghu','用户','zykacp60ofa36idnlsf86psg8vhsh11g','2021-02-27 21:35:59','2021-05-03 15:53:47'),(4,1620025259318,'123','yonghu','用户','2rie5z5w07uil1l1srzhnh5efckdnrxe','2021-05-03 15:03:15','2021-05-03 16:06:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-05-01 11:42:20');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620025259319 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`dizhi`,`money`) values (11,'2021-05-01 11:42:19','111','111','姓名1','男','http://localhost:8080/dianzhishangcheng/upload/1618974862745.jpg','13823888881','地址1',118041),(12,'2021-05-01 11:42:19','用户2','123456','姓名2','男','http://localhost:8080/dianzhishangcheng/upload/1618974869882.jpg','13823888882','地址2',100),(13,'2021-05-01 11:42:19','用户3','123456','姓名3','男','http://localhost:8080/dianzhishangcheng/upload/1618974895783.jpg','13823888883','地址3',100),(14,'2021-05-01 11:42:19','用户4','123456','姓名4','男','http://localhost:8080/dianzhishangcheng/upload/1618974902108.jpg','13823888884','地址4',100),(15,'2021-05-01 11:42:19','用户5','123456','姓名5','男','http://localhost:8080/dianzhishangcheng/upload/1618974908979.jpg','13823888885','地址5',100),(16,'2021-05-01 11:42:19','用户6','123456','姓名6','男','http://localhost:8080/dianzhishangcheng/upload/1618974916623.jpg','13823888886','地址6',100),(1620025259318,'2021-05-03 15:00:59','123','123','123','男','http://localhost:8080/dianzhishangcheng/upload/1620025252722.jpg','12312312312','地址123',1000000000000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
