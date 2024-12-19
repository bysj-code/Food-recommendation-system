/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - meishituijianxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`meishituijianxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `meishituijianxitong`;

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

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(2,3,'收货人2','17703786902','地址2',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(3,2,'收货人3','17703786903','地址3',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(4,1,'收货人4','17703786904','地址4',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(5,1,'收货人5','17703786905','地址5',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(6,2,'收货人6','17703786906','地址6',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(7,1,'收货人7','17703786907','地址7',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(8,1,'收货人8','17703786908','地址8',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(9,1,'收货人9','17703786909','地址9',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(10,1,'收货人10','17703786910','地址10',2,'2023-04-26 09:20:30','2023-04-26 10:04:21','2023-04-26 09:20:30'),(11,1,'收货人11','17703786911','地址11',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(12,3,'收货人12','17703786912','地址12',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(13,3,'收货人13','17703786913','地址13',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(14,1,'收货人14','17703786914','地址14',1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `meishi_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='反馈与建议';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'111111111111','2023-04-26 10:01:22',NULL,NULL,2,1,'2023-04-26 10:01:23'),(2,1,NULL,NULL,'回复22222222222222222222222222','2023-04-26 10:02:08',NULL,2,'2023-04-26 10:02:08'),(3,1,'1111111','2023-04-26 10:02:47',NULL,NULL,1,1,'2023-04-26 10:02:48');

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-26 09:20:17'),(39,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-26 09:20:17'),(40,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-26 09:20:17'),(41,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-26 09:20:17'),(42,'shangjia_types','餐厅类型',1,'餐厅类型1',NULL,NULL,'2023-04-26 09:20:17'),(43,'shangjia_types','餐厅类型',2,'餐厅类型2',NULL,NULL,'2023-04-26 09:20:17'),(44,'shangjia_types','餐厅类型',3,'餐厅类型3',NULL,NULL,'2023-04-26 09:20:17'),(45,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-26 09:20:17'),(46,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-26 09:20:17'),(47,'meishi_types','商品类型',1,'商品类型1',NULL,NULL,'2023-04-26 09:20:17'),(48,'meishi_types','商品类型',2,'商品类型2',NULL,NULL,'2023-04-26 09:20:17'),(49,'meishi_types','商品类型',3,'商品类型3',NULL,NULL,'2023-04-26 09:20:17'),(50,'meishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-26 09:20:17'),(51,'meishi_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-26 09:20:18'),(52,'meishi_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-26 09:20:18'),(53,'meishi_order_types','订单类型',103,'已出餐',NULL,NULL,'2023-04-26 09:20:18'),(54,'meishi_order_types','订单类型',104,'已取餐',NULL,NULL,'2023-04-26 09:20:18'),(55,'meishi_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-26 09:20:18'),(56,'meishi_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-26 09:20:18'),(57,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-26 09:20:18'),(58,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-26 09:20:18'),(59,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-26 09:20:18'),(60,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-26 09:20:18'),(61,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-26 09:20:18'),(62,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-26 09:20:18'),(63,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-26 09:20:18'),(64,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-26 09:20:18');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '餐厅',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',377,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',118,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',305,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',458,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',461,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(6,'帖子标题6',3,NULL,NULL,'发布内容6',162,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',422,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(8,'帖子标题8',2,NULL,NULL,'发布内容8',384,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',221,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',63,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(11,'帖子标题11',2,NULL,NULL,'发布内容11',76,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',169,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',325,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(14,'帖子标题14',2,NULL,NULL,'发布内容14',480,1,'2023-04-26 09:20:30','2023-04-26 09:20:30','2023-04-26 09:20:30'),(15,NULL,NULL,1,NULL,'1111111111111',14,2,'2023-04-26 10:00:44',NULL,'2023-04-26 10:00:44'),(16,NULL,NULL,2,NULL,'222222222',14,2,'2023-04-26 10:01:05',NULL,'2023-04-26 10:01:05'),(17,NULL,NULL,NULL,1,'3333333333333',14,2,'2023-04-26 10:02:17',NULL,'2023-04-26 10:02:17'),(18,NULL,1,NULL,NULL,'44444444444444444444444',14,2,'2023-04-26 10:04:56',NULL,'2023-04-26 10:04:56');

/*Table structure for table `meishi` */

DROP TABLE IF EXISTS `meishi`;

CREATE TABLE `meishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '餐厅',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `meishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `meishi_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `meishi_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `meishi_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `meishi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `meishi_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `meishi_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `meishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `meishi` */

insert  into `meishi`(`id`,`shangjia_id`,`meishi_name`,`meishi_uuid_number`,`meishi_photo`,`meishi_types`,`meishi_kucun_number`,`meishi_old_money`,`meishi_new_money`,`meishi_clicknum`,`meishi_content`,`shangxia_types`,`meishi_delete`,`insert_time`,`create_time`) values (1,2,'商品名称1','1682472030230','upload/meishi1.jpg',3,101,'893.56','365.87',195,'商品介绍1',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(2,2,'商品名称2','1682472030291','upload/meishi2.jpg',3,102,'569.18','216.44',87,'商品介绍2',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(3,2,'商品名称3','1682472030294','upload/meishi3.jpg',2,103,'730.87','446.31',222,'商品介绍3',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(4,1,'商品名称4','1682472030272','upload/meishi4.jpg',3,104,'971.71','451.00',143,'商品介绍4',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(5,2,'商品名称5','1682472030292','upload/meishi5.jpg',3,105,'529.41','54.20',91,'商品介绍5',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(6,1,'商品名称6','1682472030301','upload/meishi6.jpg',2,106,'988.09','102.37',89,'商品介绍6',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(7,3,'商品名称7','1682472030296','upload/meishi7.jpg',1,107,'588.70','276.82',428,'商品介绍7',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(8,1,'商品名称8','1682472030290','upload/meishi8.jpg',2,108,'833.26','148.22',442,'商品介绍8',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(9,3,'商品名称9','1682472030326','upload/meishi9.jpg',2,109,'828.22','167.84',20,'商品介绍9',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(10,2,'商品名称10','1682472030307','upload/meishi10.jpg',1,1009,'920.67','293.44',62,'商品介绍10',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(11,1,'商品名称11','1682472030282','upload/meishi11.jpg',3,1011,'633.75','103.20',284,'商品介绍11',2,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(12,2,'商品名称12','1682472030326','upload/meishi12.jpg',2,1011,'831.33','361.18',52,'商品介绍12',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(13,2,'商品名称13','1682472030321','upload/meishi13.jpg',2,1013,'574.99','171.43',212,'商品介绍13',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(14,2,'商品名称14','1682472030284','upload/meishi14.jpg',2,1012,'890.14','42.75',432,'商品介绍14',1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30');

/*Table structure for table `meishi_collection` */

DROP TABLE IF EXISTS `meishi_collection`;

CREATE TABLE `meishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `meishi_collection` */

insert  into `meishi_collection`(`id`,`meishi_id`,`yonghu_id`,`meishi_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(2,2,3,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(3,3,1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(4,4,3,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(5,5,2,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(6,6,2,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(7,7,3,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(8,8,3,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(9,9,2,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(10,10,1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(11,11,3,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(12,12,2,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(13,13,1,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(14,14,3,1,'2023-04-26 09:20:30','2023-04-26 09:20:30'),(15,14,1,1,'2023-04-26 10:02:58','2023-04-26 10:02:58');

/*Table structure for table `meishi_commentback` */

DROP TABLE IF EXISTS `meishi_commentback`;

CREATE TABLE `meishi_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meishi_commentback_text` longtext COMMENT '评价内容',
  `meishi_commentback_pingfen_number` int(11) DEFAULT NULL COMMENT '评分',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `meishi_commentback` */

insert  into `meishi_commentback`(`id`,`meishi_id`,`yonghu_id`,`meishi_commentback_text`,`meishi_commentback_pingfen_number`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1',4,'2023-04-26 09:20:30','回复信息1','2023-04-26 09:20:30','2023-04-26 09:20:30'),(2,2,1,'评价内容2',0,'2023-04-26 09:20:30','回复信息2','2023-04-26 09:20:30','2023-04-26 09:20:30'),(3,3,2,'评价内容3',3,'2023-04-26 09:20:30','回复信息3','2023-04-26 09:20:30','2023-04-26 09:20:30'),(4,4,2,'评价内容4',3,'2023-04-26 09:20:30','回复信息4','2023-04-26 09:20:30','2023-04-26 09:20:30'),(5,5,1,'评价内容5',0,'2023-04-26 09:20:30','回复信息5','2023-04-26 09:20:30','2023-04-26 09:20:30'),(6,6,1,'评价内容6',0,'2023-04-26 09:20:30','回复信息6','2023-04-26 09:20:30','2023-04-26 09:20:30'),(7,7,2,'评价内容7',5,'2023-04-26 09:20:30','回复信息7','2023-04-26 09:20:30','2023-04-26 09:20:30'),(8,8,2,'评价内容8',2,'2023-04-26 09:20:30','回复信息8','2023-04-26 09:20:30','2023-04-26 09:20:30'),(9,9,1,'评价内容9',0,'2023-04-26 09:20:30','回复信息9','2023-04-26 09:20:30','2023-04-26 09:20:30'),(10,10,2,'评价内容10',4,'2023-04-26 09:20:30','回复信息10','2023-04-26 09:20:30','2023-04-26 09:20:30'),(11,11,2,'评价内容11',1,'2023-04-26 09:20:30','回复信息11','2023-04-26 09:20:30','2023-04-26 09:20:30'),(12,12,3,'评价内容12',3,'2023-04-26 09:20:30','回复信息12','2023-04-26 09:20:30','2023-04-26 09:20:30'),(13,13,1,'评价内容13',1,'2023-04-26 09:20:30','回复信息13','2023-04-26 09:20:30','2023-04-26 09:20:30'),(14,14,1,'评价内容14',3,'2023-04-26 09:20:30','回复信息14','2023-04-26 09:20:30','2023-04-26 09:20:30'),(15,14,1,'123123',5,'2023-04-26 09:41:59',NULL,NULL,'2023-04-26 09:41:59'),(16,12,1,'123123',5,'2023-04-26 10:04:39',NULL,NULL,'2023-04-26 10:04:39');

/*Table structure for table `meishi_order` */

DROP TABLE IF EXISTS `meishi_order`;

CREATE TABLE `meishi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `meishi_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `meishi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `meishi_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `meishi_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `meishi_order` */

insert  into `meishi_order`(`id`,`meishi_order_uuid_number`,`address_id`,`meishi_id`,`yonghu_id`,`buy_number`,`meishi_order_true_price`,`meishi_order_types`,`meishi_order_payment_types`,`insert_time`,`create_time`) values (1,'1682473276222',10,14,1,1,'42.75',105,1,'2023-04-26 09:41:16','2023-04-26 09:41:16'),(2,'1682474284224',9,12,1,1,'361.18',105,1,'2023-04-26 09:58:04','2023-04-26 09:58:04'),(3,'1682474668243',10,6,1,1,'102.37',102,1,'2023-04-26 10:04:28','2023-04-26 10:04:28'),(4,'1682474668243',10,10,1,1,'293.44',101,1,'2023-04-26 10:04:28','2023-04-26 10:04:28'),(5,'1682474668243',10,14,1,1,'42.75',101,1,'2023-04-26 10:04:28','2023-04-26 10:04:28');

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

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-04-26 09:20:30','公告详情1','2023-04-26 09:20:30'),(2,'公告标题2',2,'upload/news2.jpg','2023-04-26 09:20:30','公告详情2','2023-04-26 09:20:30'),(3,'公告标题3',2,'upload/news3.jpg','2023-04-26 09:20:30','公告详情3','2023-04-26 09:20:30'),(4,'公告标题4',2,'upload/news4.jpg','2023-04-26 09:20:30','公告详情4','2023-04-26 09:20:30'),(5,'公告标题5',1,'upload/news5.jpg','2023-04-26 09:20:30','公告详情5','2023-04-26 09:20:30'),(6,'公告标题6',1,'upload/news6.jpg','2023-04-26 09:20:30','公告详情6','2023-04-26 09:20:30'),(7,'公告标题7',1,'upload/news7.jpg','2023-04-26 09:20:30','公告详情7','2023-04-26 09:20:30'),(8,'公告标题8',1,'upload/news8.jpg','2023-04-26 09:20:30','公告详情8','2023-04-26 09:20:30'),(9,'公告标题9',2,'upload/news9.jpg','2023-04-26 09:20:30','公告详情9','2023-04-26 09:20:30'),(10,'公告标题10',2,'upload/news10.jpg','2023-04-26 09:20:30','公告详情10','2023-04-26 09:20:30'),(11,'公告标题11',2,'upload/news11.jpg','2023-04-26 09:20:30','公告详情11','2023-04-26 09:20:30'),(12,'公告标题12',1,'upload/news12.jpg','2023-04-26 09:20:30','公告详情12','2023-04-26 09:20:30'),(13,'公告标题13',1,'upload/news13.jpg','2023-04-26 09:20:30','公告详情13','2023-04-26 09:20:30'),(14,'公告标题14',2,'upload/news14.jpg','2023-04-26 09:20:30','公告详情14','2023-04-26 09:20:30');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '餐厅名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_address` varchar(200) DEFAULT NULL COMMENT '餐厅地址 ',
  `shangjia_types` int(11) DEFAULT NULL COMMENT '餐厅类型 Search111',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` longtext COMMENT '餐厅介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='餐厅';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_address`,`shangjia_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','餐厅名称1','17703786901','1@qq.com','upload/shangjia1.jpg','餐厅地址1',1,'643.77','餐厅介绍1',1,'2023-04-26 09:20:30'),(2,'a2','123456','餐厅名称2','17703786902','2@qq.com','upload/shangjia2.jpg','餐厅地址2',3,'822.53','餐厅介绍2',1,'2023-04-26 09:20:30'),(3,'a3','123456','餐厅名称3','17703786903','3@qq.com','upload/shangjia3.jpg','餐厅地址3',2,'908.73','餐厅介绍3',1,'2023-04-26 09:20:30');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','z9d49nfyjkgn5n5bqbuw9o6xqiqfwuj5','2023-04-26 09:40:19','2023-04-26 11:06:20'),(2,1,'a1','shangjia','餐厅','ncvvt9scp6qvqg6hfamlvkvk7r3lyem9','2023-04-26 09:41:27','2023-04-26 11:00:23'),(3,2,'a2','shangjia','餐厅','98rm7pianuha2a5hcvhjjzywta52rh6p','2023-04-26 09:41:36','2023-04-26 11:00:52'),(4,1,'admin','users','管理员','95h55j241hp2y10a2on308601d21m3yj','2023-04-26 10:01:11','2023-04-26 11:07:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-26 09:20:17');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '昵称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_time` date DEFAULT NULL COMMENT '生日',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_time`,`new_money`,`create_time`) values (1,'a1','123456','昵称1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-04-26','100001.66','2023-04-26 09:20:30'),(2,'a2','123456','昵称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-04-26','569.31','2023-04-26 09:20:30'),(3,'a3','123456','昵称3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-04-26','651.81','2023-04-26 09:20:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
