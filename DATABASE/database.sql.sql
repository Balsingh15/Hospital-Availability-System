/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - govt_hsp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`govt_hsp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `govt_hsp`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('Admin','Admin');

/*Table structure for table `beds` */

DROP TABLE IF EXISTS `beds`;

CREATE TABLE `beds` (
  `id` int(11) NOT NULL auto_increment,
  `hspname` varchar(1000) default NULL,
  `total_beds` varchar(1000) default NULL,
  `availabile` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `beds` */

insert  into `beds`(`id`,`hspname`,`total_beds`,`availabile`) values (1,'Gandhi','100','14');

/*Table structure for table `bookslot` */

DROP TABLE IF EXISTS `bookslot`;

CREATE TABLE `bookslot` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(1000) default NULL,
  `did` varchar(1000) default NULL,
  `availabledays` varchar(100) default NULL,
  `availabletime` varchar(100) default NULL,
  `timeslot` varchar(100) default NULL,
  `date` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `bookslot` */

insert  into `bookslot`(`id`,`username`,`did`,`availabledays`,`availabletime`,`timeslot`,`date`) values (1,'kishan','2','M,T,W','10Am-12Pm','11Am','2023-02-07 17:44:28'),(2,'kishan','4','m','m','11Am','2024-02-20 11:29:16');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL auto_increment,
  `hospital` varchar(1000) default NULL,
  `speciality` varchar(1000) default NULL,
  `name` varchar(1000) default NULL,
  `experience` varchar(1000) default NULL,
  `days` varchar(1000) default NULL,
  `time` varchar(1000) default NULL,
  `contact` varchar(1000) default NULL,
  `availability` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert  into `doctor`(`id`,`hospital`,`speciality`,`name`,`experience`,`days`,`time`,`contact`,`availability`) values (4,'Gandhi','abc','abc','2','m','m','m','m');

/*Table structure for table `hsp` */

DROP TABLE IF EXISTS `hsp`;

CREATE TABLE `hsp` (
  `id` int(11) NOT NULL auto_increment,
  `hsp_name` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `location` varchar(1000) default NULL,
  `description` varchar(1000) default NULL,
  `uname` varchar(1000) default NULL,
  `pass` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `hsp` */

insert  into `hsp`(`id`,`hsp_name`,`mobile`,`location`,`description`,`uname`,`pass`,`status`) values (2,'Gandhi','1234567890','secuderabad','it is the govt hsp','gandhi','123','Authorized');

/*Table structure for table `medicine` */

DROP TABLE IF EXISTS `medicine`;

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL auto_increment,
  `hspname` text,
  `medicine` text,
  `availability` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `medicine` */

insert  into `medicine`(`id`,`hspname`,`medicine`,`availability`) values (1,'Gandhi','paracetomol','250');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `mobile` text,
  `address` text,
  `username` text,
  `password` text,
  `date` text,
  `status` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`mobile`,`address`,`username`,`password`,`date`,`status`) values (1,'kishan','1234567890','hyd','kishan','123','2021-04-15 18:31:32','Authorized'),(2,'venkat','1234567890','hyd','venkat','123','2023-02-07 18:06:55','waiting');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
