/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jkyymenzhanzaixiangh
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jkyymenzhanzaixiangh` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jkyymenzhanzaixiangh`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(2,3,'收货人2','17703786902','地址2',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(3,2,'收货人3','17703786903','地址3',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(4,1,'收货人4','17703786904','地址4',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(5,1,'收货人5','17703786905','地址5',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(6,1,'收货人6','17703786906','地址6',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(7,3,'收货人7','17703786907','地址7',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(8,2,'收货人8','17703786908','地址8',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(9,2,'收货人9','17703786909','地址9',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(10,3,'收货人10','17703786910','地址10',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(11,2,'收货人11','17703786911','地址11',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(12,2,'收货人12','17703786912','地址12',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(13,1,'收货人13','17703786913','地址13',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(14,3,'收货人14','17703786914','地址14',1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `yaopin_id` int(11) DEFAULT NULL COMMENT '药品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-07 16:30:45'),(2,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-07 16:30:45'),(3,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-07 16:30:45'),(4,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-07 16:30:45'),(5,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-07 16:30:45'),(6,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-07 16:30:45'),(7,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-07 16:30:45'),(8,'yaopin_types','药品类型',1,'药品类型1',NULL,NULL,'2023-04-07 16:30:45'),(9,'yaopin_types','药品类型',2,'药品类型2',NULL,NULL,'2023-04-07 16:30:45'),(10,'yaopin_types','药品类型',3,'药品类型3',NULL,NULL,'2023-04-07 16:30:45'),(11,'yaopin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-07 16:30:45'),(12,'yaopin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-07 16:30:45'),(13,'yaopin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-07 16:30:45'),(14,'yaopin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-07 16:30:45'),(15,'yaopin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-07 16:30:45'),(16,'yaopin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-07 16:30:45'),(17,'yaopin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-07 16:30:45'),(18,'yaopin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-07 16:30:45'),(19,'yaopin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-07 16:30:45'),(20,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-07 16:30:45'),(21,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-07 16:30:45'),(22,'yisheng_types','科室',1,'科室1',NULL,NULL,'2023-04-07 16:30:45'),(23,'yisheng_types','科室',2,'科室2',NULL,NULL,'2023-04-07 16:30:45'),(24,'zhiwei_types','职位',1,'职位1',NULL,NULL,'2023-04-07 16:30:45'),(25,'zhiwei_types','职位',2,'职位2',NULL,NULL,'2023-04-07 16:30:45'),(26,'yisheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-07 16:30:46'),(27,'yisheng_yuyue_types','挂号状态',101,'已挂号',NULL,NULL,'2023-04-07 16:30:46'),(28,'yisheng_yuyue_types','挂号状态',102,'已取消',NULL,NULL,'2023-04-07 16:30:46'),(29,'yisheng_yuyue_types','挂号状态',103,'已完成',NULL,NULL,'2023-04-07 16:30:46'),(30,'yisheng_yuyue_types','挂号状态',105,'已评论',NULL,NULL,'2023-04-07 16:30:46'),(31,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-07 16:30:46'),(32,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-07 16:30:46');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`yisheng_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',85,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',295,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',160,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',329,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',221,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(6,'帖子标题6',2,NULL,NULL,'发布内容6',392,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',94,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(8,'帖子标题8',3,NULL,NULL,'发布内容8',192,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(9,'帖子标题9',1,NULL,NULL,'发布内容9',420,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',303,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',79,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',37,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',239,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(14,'帖子标题14',3,NULL,NULL,'发布内容14',33,1,'2023-04-07 16:31:20','2023-04-07 16:31:20','2023-04-07 16:31:20'),(15,NULL,1,NULL,NULL,'123',14,2,'2023-04-07 17:14:45',NULL,'2023-04-07 17:14:45'),(16,NULL,NULL,1,NULL,'321',14,2,'2023-04-07 17:15:46',NULL,'2023-04-07 17:15:46'),(17,NULL,NULL,NULL,1,'213',14,2,'2023-04-07 17:16:47',NULL,'2023-04-07 17:16:47');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-04-07 16:31:20','公告详情1','2023-04-07 16:31:20'),(2,'公告标题2',1,'upload/news2.jpg','2023-04-07 16:31:20','公告详情2','2023-04-07 16:31:20'),(3,'公告标题3',1,'upload/news3.jpg','2023-04-07 16:31:20','公告详情3','2023-04-07 16:31:20'),(4,'公告标题4',3,'upload/news4.jpg','2023-04-07 16:31:20','公告详情4','2023-04-07 16:31:20'),(5,'公告标题5',2,'upload/news5.jpg','2023-04-07 16:31:20','公告详情5','2023-04-07 16:31:20'),(6,'公告标题6',1,'upload/news6.jpg','2023-04-07 16:31:20','公告详情6','2023-04-07 16:31:20'),(7,'公告标题7',3,'upload/news7.jpg','2023-04-07 16:31:20','公告详情7','2023-04-07 16:31:20'),(8,'公告标题8',1,'upload/news8.jpg','2023-04-07 16:31:20','公告详情8','2023-04-07 16:31:20'),(9,'公告标题9',3,'upload/news9.jpg','2023-04-07 16:31:20','公告详情9','2023-04-07 16:31:20'),(10,'公告标题10',1,'upload/news10.jpg','2023-04-07 16:31:20','公告详情10','2023-04-07 16:31:20'),(11,'公告标题11',3,'upload/news11.jpg','2023-04-07 16:31:20','公告详情11','2023-04-07 16:31:20'),(12,'公告标题12',2,'upload/news12.jpg','2023-04-07 16:31:20','公告详情12','2023-04-07 16:31:20'),(13,'公告标题13',3,'upload/news13.jpg','2023-04-07 16:31:20','公告详情13','2023-04-07 16:31:20'),(14,'公告标题14',2,'upload/news14.jpg','2023-04-07 16:31:20','公告详情14','2023-04-07 16:31:20');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','o0mfshcyem0ax9jei9dg93xlxnauxjva','2023-04-07 17:00:52','2023-04-07 18:13:35'),(2,2,'a2','yonghu','用户','mn0thg5wgawxkjnuzuyg2mrd3fn3v25m','2023-04-07 17:01:50','2023-04-07 18:01:50'),(3,1,'a1','yisheng','医生','11mjjn0oirhk1kxyq2n70znknw39eyu0','2023-04-07 17:04:46','2023-04-07 18:15:17'),(4,1,'admin','users','管理员','g5rteu3ybgq8prx48xi700y08ufi5fuz','2023-04-07 17:15:54','2023-04-07 18:18:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-07 16:30:45');

/*Table structure for table `yaopin` */

DROP TABLE IF EXISTS `yaopin`;

CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `yaopin_types` int(11) DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_kucun_number` int(11) DEFAULT NULL COMMENT '药品库存',
  `yaopin_old_money` decimal(10,2) DEFAULT NULL COMMENT '药品原价 ',
  `yaopin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `yaopin_clicknum` int(11) DEFAULT NULL COMMENT '药品热度',
  `yaopin_content` longtext COMMENT '药品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `yaopin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='药品';

/*Data for the table `yaopin` */

insert  into `yaopin`(`id`,`yaopin_name`,`yaopin_uuid_number`,`yaopin_photo`,`zan_number`,`cai_number`,`yaopin_types`,`yaopin_kucun_number`,`yaopin_old_money`,`yaopin_new_money`,`yaopin_clicknum`,`yaopin_content`,`shangxia_types`,`yaopin_delete`,`insert_time`,`create_time`) values (1,'药品名称1','1680856280213','upload/yaopin1.jpg',319,242,1,101,'865.34','220.26',451,'药品介绍1',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(2,'药品名称2','1680856280189','upload/yaopin2.jpg',337,281,3,102,'644.19','117.67',323,'药品介绍2',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(3,'药品名称3','1680856280194','upload/yaopin3.jpg',209,241,1,103,'623.88','40.11',84,'药品介绍3',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(4,'药品名称4','1680856280116','upload/yaopin4.jpg',447,342,2,104,'891.55','234.52',141,'药品介绍4',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(5,'药品名称5','1680856280212','upload/yaopin5.jpg',86,336,2,105,'983.72','495.70',239,'药品介绍5',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(6,'药品名称6','1680856280179','upload/yaopin6.jpg',140,287,1,106,'631.05','168.57',146,'药品介绍6',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(7,'药品名称7','1680856280159','upload/yaopin7.jpg',98,188,1,106,'981.11','359.43',431,'药品介绍7',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(8,'药品名称8','1680856280135','upload/yaopin8.jpg',491,399,3,108,'741.94','258.58',62,'药品介绍8',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(9,'药品名称9','1680856280205','upload/yaopin9.jpg',191,492,1,109,'603.21','308.71',217,'药品介绍9',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(10,'药品名称10','1680856280177','upload/yaopin10.jpg',56,380,2,1010,'604.36','210.57',278,'药品介绍10',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(11,'药品名称11','1680856280211','upload/yaopin11.jpg',41,280,2,1011,'886.14','276.50',352,'药品介绍11',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(12,'药品名称12','1680856280160','upload/yaopin12.jpg',364,225,2,1012,'774.92','158.97',107,'药品介绍12',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(13,'药品名称13','1680856280211','upload/yaopin13.jpg',232,118,1,1013,'654.46','82.65',211,'药品介绍13',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(14,'药品名称14','1680856280138','upload/yaopin14.jpg',361,170,1,1014,'928.92','81.81',94,'药品介绍14',1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20');

/*Table structure for table `yaopin_collection` */

DROP TABLE IF EXISTS `yaopin_collection`;

CREATE TABLE `yaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_id` int(11) DEFAULT NULL COMMENT '药品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yaopin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='药品收藏';

/*Data for the table `yaopin_collection` */

insert  into `yaopin_collection`(`id`,`yaopin_id`,`yonghu_id`,`yaopin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(2,2,3,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(3,3,3,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(4,4,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(5,5,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(6,6,3,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(7,7,3,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(8,8,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(9,9,3,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(10,10,1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(11,11,3,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(12,12,3,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(13,13,1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(14,14,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(15,7,1,3,'2023-04-07 17:14:26','2023-04-07 17:14:26'),(16,11,1,1,'2023-04-07 17:14:31','2023-04-07 17:14:31'),(17,11,1,2,'2023-04-07 17:14:35','2023-04-07 17:14:35');

/*Table structure for table `yaopin_commentback` */

DROP TABLE IF EXISTS `yaopin_commentback`;

CREATE TABLE `yaopin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_id` int(11) DEFAULT NULL COMMENT '药品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yaopin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='药品评价';

/*Data for the table `yaopin_commentback` */

insert  into `yaopin_commentback`(`id`,`yaopin_id`,`yonghu_id`,`yaopin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-04-07 16:31:20','回复信息1','2023-04-07 16:31:20','2023-04-07 16:31:20'),(2,2,3,'评价内容2','2023-04-07 16:31:20','回复信息2','2023-04-07 16:31:20','2023-04-07 16:31:20'),(3,3,2,'评价内容3','2023-04-07 16:31:20','回复信息3','2023-04-07 16:31:20','2023-04-07 16:31:20'),(4,4,1,'评价内容4','2023-04-07 16:31:20','回复信息4','2023-04-07 16:31:20','2023-04-07 16:31:20'),(5,5,1,'评价内容5','2023-04-07 16:31:20','回复信息5','2023-04-07 16:31:20','2023-04-07 16:31:20'),(6,6,2,'评价内容6','2023-04-07 16:31:20','回复信息6','2023-04-07 16:31:20','2023-04-07 16:31:20'),(7,7,3,'评价内容7','2023-04-07 16:31:20','回复信息7','2023-04-07 16:31:20','2023-04-07 16:31:20'),(8,8,1,'评价内容8','2023-04-07 16:31:20','回复信息8','2023-04-07 16:31:20','2023-04-07 16:31:20'),(9,9,2,'评价内容9','2023-04-07 16:31:20','回复信息9','2023-04-07 16:31:20','2023-04-07 16:31:20'),(10,10,2,'评价内容10','2023-04-07 16:31:20','回复信息10','2023-04-07 16:31:20','2023-04-07 16:31:20'),(11,11,2,'评价内容11','2023-04-07 16:31:20','回复信息11','2023-04-07 16:31:20','2023-04-07 16:31:20'),(12,12,1,'评价内容12','2023-04-07 16:31:20','回复信息12','2023-04-07 16:31:20','2023-04-07 16:31:20'),(13,13,3,'评价内容13','2023-04-07 16:31:20','回复信息13','2023-04-07 16:31:20','2023-04-07 16:31:20'),(14,14,1,'评价内容14','2023-04-07 16:31:20','回复信息14','2023-04-07 16:31:20','2023-04-07 16:31:20');

/*Table structure for table `yaopin_order` */

DROP TABLE IF EXISTS `yaopin_order`;

CREATE TABLE `yaopin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `yaopin_id` int(11) DEFAULT NULL COMMENT '药品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `yaopin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `yaopin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `yaopin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `yaopin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `yaopin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='药品订单';

/*Data for the table `yaopin_order` */

insert  into `yaopin_order`(`id`,`yaopin_order_uuid_number`,`address_id`,`yaopin_id`,`yonghu_id`,`buy_number`,`yaopin_order_true_price`,`yaopin_order_courier_name`,`yaopin_order_courier_number`,`yaopin_order_types`,`yaopin_order_payment_types`,`insert_time`,`create_time`) values (1,'1680858907073',6,11,1,2,'553.00',NULL,NULL,102,1,'2023-04-07 17:15:07','2023-04-07 17:15:07'),(2,'1680858907073',6,7,1,1,'359.43','JD','123131231313536456',103,1,'2023-04-07 17:15:07','2023-04-07 17:15:07');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生名称 Search111',
  `yisheng_types` int(11) DEFAULT NULL COMMENT '科室 Search111',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111',
  `yisheng_zhichneg` varchar(200) DEFAULT NULL COMMENT '职称',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yisheng_yisheng_yuyue` varchar(200) DEFAULT NULL COMMENT '挂号须知',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yisheng_new_money` decimal(10,2) DEFAULT NULL COMMENT '挂号价格',
  `yisheng_content` longtext COMMENT '履历介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`yisheng_uuid_number`,`username`,`password`,`yisheng_name`,`yisheng_types`,`zhiwei_types`,`yisheng_zhichneg`,`yisheng_photo`,`yisheng_phone`,`yisheng_yisheng_yuyue`,`yisheng_email`,`yisheng_new_money`,`yisheng_content`,`create_time`) values (1,'1680856280130','a1','123456','医生名称1',1,1,'职称1','upload/yisheng1.jpg','17703786901','挂号须知1','1@qq.com','187.57','履历介绍1','2023-04-07 16:31:20'),(2,'1680856280195','a2','123456','医生名称2',2,2,'职称2','upload/yisheng2.jpg','17703786902','挂号须知2','2@qq.com','60.59','履历介绍2','2023-04-07 16:31:20'),(3,'1680856280198','a3','123456','医生名称3',2,2,'职称3','upload/yisheng3.jpg','17703786903','挂号须知3','3@qq.com','91.87','履历介绍3','2023-04-07 16:31:20');

/*Table structure for table `yisheng_collection` */

DROP TABLE IF EXISTS `yisheng_collection`;

CREATE TABLE `yisheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yisheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='医生收藏';

/*Data for the table `yisheng_collection` */

insert  into `yisheng_collection`(`id`,`yisheng_id`,`yonghu_id`,`yisheng_collection_types`,`insert_time`,`create_time`) values (1,3,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(2,1,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(4,3,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(6,3,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(7,2,1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(8,1,3,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(9,3,3,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(10,3,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(11,2,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(13,1,1,1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(14,3,2,1,'2023-04-07 16:31:20','2023-04-07 16:31:20');

/*Table structure for table `yisheng_commentback` */

DROP TABLE IF EXISTS `yisheng_commentback`;

CREATE TABLE `yisheng_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yisheng_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='医生评价';

/*Data for the table `yisheng_commentback` */

insert  into `yisheng_commentback`(`id`,`yisheng_id`,`yonghu_id`,`yisheng_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-04-07 16:31:20','回复信息1','2023-04-07 16:31:20','2023-04-07 16:31:20'),(2,1,2,'评价内容2','2023-04-07 16:31:20','回复信息2','2023-04-07 16:31:20','2023-04-07 16:31:20'),(3,2,1,'评价内容3','2023-04-07 16:31:20','回复信息3','2023-04-07 16:31:20','2023-04-07 16:31:20'),(4,3,3,'评价内容4','2023-04-07 16:31:20','回复信息4','2023-04-07 16:31:20','2023-04-07 16:31:20'),(5,3,3,'评价内容5','2023-04-07 16:31:20','回复信息5','2023-04-07 16:31:20','2023-04-07 16:31:20'),(6,1,1,'评价内容6','2023-04-07 16:31:20','回复信息6','2023-04-07 16:31:20','2023-04-07 16:31:20'),(7,3,3,'评价内容7','2023-04-07 16:31:20','回复信息7','2023-04-07 16:31:20','2023-04-07 16:31:20'),(8,3,3,'评价内容8','2023-04-07 16:31:20','回复信息8','2023-04-07 16:31:20','2023-04-07 16:31:20'),(9,3,1,'评价内容9','2023-04-07 16:31:20','回复信息9','2023-04-07 16:31:20','2023-04-07 16:31:20'),(10,3,3,'评价内容10','2023-04-07 16:31:20','回复信息10','2023-04-07 16:31:20','2023-04-07 16:31:20'),(11,1,2,'评价内容11','2023-04-07 16:31:20','回复信息11','2023-04-07 16:31:20','2023-04-07 16:31:20'),(12,3,3,'评价内容12','2023-04-07 16:31:20','回复信息12','2023-04-07 16:31:20','2023-04-07 16:31:20'),(13,3,1,'评价内容13','2023-04-07 16:31:20','回复信息13','2023-04-07 16:31:20','2023-04-07 16:31:20'),(14,2,1,'评价内容14','2023-04-07 16:31:20','回复信息14','2023-04-07 16:31:20','2023-04-07 16:31:20'),(15,1,1,'12312','2023-04-07 17:15:34','123','2023-04-07 17:16:02','2023-04-07 17:15:34');

/*Table structure for table `yisheng_yuyue` */

DROP TABLE IF EXISTS `yisheng_yuyue`;

CREATE TABLE `yisheng_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yisheng_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '挂号时间 Search111',
  `yisheng_yuyue_text` longtext COMMENT '备注',
  `yisheng_yuyue_types` int(11) DEFAULT NULL COMMENT '挂号状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='挂号';

/*Data for the table `yisheng_yuyue` */

insert  into `yisheng_yuyue`(`id`,`yisheng_id`,`yonghu_id`,`yisheng_yuyue_time`,`yisheng_yuyue_text`,`yisheng_yuyue_types`,`insert_time`,`create_time`) values (1,2,3,'2023-04-07 16:31:20','备注1',101,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(2,2,3,'2023-04-07 16:31:20','备注2',102,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(3,2,3,'2023-04-07 16:31:20','备注3',103,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(4,1,3,'2023-04-07 16:31:20','备注4',102,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(5,1,3,'2023-04-07 16:31:20','备注5',102,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(6,3,1,'2023-04-07 16:31:20','备注6',101,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(7,1,2,'2023-04-07 16:31:20','备注7',102,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(8,3,1,'2023-04-07 16:31:20','备注8',102,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(9,1,3,'2023-04-07 16:31:20','备注9',101,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(10,2,1,'2023-04-07 16:31:20','备注10',101,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(11,2,2,'2023-04-07 16:31:20','备注11',105,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(12,1,1,'2023-04-07 16:31:20','备注12',105,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(13,1,2,'2023-04-07 16:31:20','备注13',105,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(14,3,3,'2023-04-07 16:31:20','备注14',103,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(18,1,1,'2023-04-08 17:13:35','登录后才可以进行访问数据详情页的操作',105,'2023-04-07 17:13:54','2023-04-07 17:13:54');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','9652.66',1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','264.53',1,'2023-04-07 16:31:20','2023-04-07 16:31:20'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','184.52',1,'2023-04-07 16:31:20','2023-04-07 16:31:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
