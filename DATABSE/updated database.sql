/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 11.2.0-MariaDB : Database - cloud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`cloud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `cloud`;

/*Table structure for table `dataowners` */

DROP TABLE IF EXISTS `dataowners`;

CREATE TABLE `dataowners` (
  `slno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Number` varchar(200) DEFAULT NULL,
  `Gender` varchar(30) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Otp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `dataowners` */

insert  into `dataowners`(`slno`,`Name`,`Email`,`Number`,`Gender`,`Address`,`Otp`) values (1,'preeti','preeti@gmail.com','06589745632','Female','bangalore','55108');

/*Table structure for table `datausers` */

DROP TABLE IF EXISTS `datausers`;

CREATE TABLE `datausers` (
  `Slno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Number` varchar(200) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Otp` varchar(20) DEFAULT NULL,
  `fileid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Slno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `datausers` */

insert  into `datausers`(`Slno`,`Name`,`Email`,`Number`,`Gender`,`Address`,`Otp`,`fileid`) values (1,'kumar','kumar@gmail.com','09848251256','Male','Nellore','779230512',NULL);

/*Table structure for table `filesupload` */

DROP TABLE IF EXISTS `filesupload`;

CREATE TABLE `filesupload` (
  `Sl_No` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owneremail` varchar(100) DEFAULT NULL,
  `FileName` varchar(100) DEFAULT NULL,
  `Keywords` varchar(100) DEFAULT NULL,
  `Files` longblob DEFAULT NULL,
  `execution_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Sl_No`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `filesupload` */

insert  into `filesupload`(`Sl_No`,`owneremail`,`FileName`,`Keywords`,`Files`,`execution_time`) values (1,'preeti@gmail.com','text.txt','1234','/bxx0bXK7XFhA+zDZG/LWZh7UsBKbjQHQdGiG2+HgagbuRApbzv+G7D4ZS9NgZbX','0.005018711090087891'),(2,'preeti@gmail.com','text.txt','345','YRXr3sybOOp1kgw/mkUjdL4syJi9TT9Z0mmCh6vWghPMZqZxumBJF1X7K5Rqfk0bf3I/GHcMakkOqD/yD1nfXuhm/t3eFYiEe+IHXDrvMUFFlSIaocsuGFqHXSlCMHTRKWvUMvsM0XcxshGwZ2J2Fl4OeHpgR+D+kunUTSpZBdv5WSRqCKQ215ooWxY0aZudKqPphKK4HEokBqUp2avdYAhW2J44xYStGIeRAQX2s6b6fSl10/Zmrht11v3PHOwP4txrKjkC3c21igc0u5Sik35XpMJdketROcpuf4R9qIC6BACv+w9oxKCg9bP9EWFNq9AYnqkg4bFbe4hjUQv51Q==','2.2819581031799316');

/*Table structure for table `ownership` */

DROP TABLE IF EXISTS `ownership`;

CREATE TABLE `ownership` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `omail` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'waiting',
  `Sl_No` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ownership` */

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `Sl_No` int(10) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  `pkey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `request` */

insert  into `request`(`id`,`email`,`fname`,`Sl_No`,`status`,`pkey`) values (1,'kumar@gmail.com','text.txt',1,'Accepted','219812400'),(2,'kumar@gmail.com','text.txt',2,'Accepted','237642446');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
