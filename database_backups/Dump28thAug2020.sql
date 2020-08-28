/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.1.39-MariaDB : Database - caring_lead
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`caring_lead` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `caring_lead`;

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hospital_id` bigint(20) DEFAULT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `department` */

/*Table structure for table `hospital` */

DROP TABLE IF EXISTS `hospital`;

CREATE TABLE `hospital` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(50) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hospital` */

/*Table structure for table `team_leaders` */

DROP TABLE IF EXISTS `team_leaders`;

CREATE TABLE `team_leaders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hospital_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `team_id` bigint(20) DEFAULT NULL,
  `leader_name` varchar(50) DEFAULT NULL,
  `team_size` bigint(20) DEFAULT NULL,
  `user_role_id` bigint(20) DEFAULT NULL,
  `user_role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `team_leaders` */

/*Table structure for table `team_members` */

DROP TABLE IF EXISTS `team_members`;

CREATE TABLE `team_members` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hospital_id` bigint(20) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `team_id` bigint(20) DEFAULT NULL,
  `team_leader_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `user_role_id` bigint(20) DEFAULT NULL,
  `user_role_name` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `team_members` */

/*Table structure for table `teams` */

DROP TABLE IF EXISTS `teams`;

CREATE TABLE `teams` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hospital_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `team_name` varchar(50) DEFAULT NULL,
  `description` tinytext,
  `size_of_team` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teams` */

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hospital_id` bigint(20) DEFAULT NULL,
  `deparment_id` bigint(20) DEFAULT NULL,
  `team_id` bigint(20) DEFAULT NULL,
  `role_name` varchar(20) DEFAULT NULL,
  `role_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_roles` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `team_leader_id` int(11) DEFAULT NULL,
  `username` varchar(64) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `user_role_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `ix_users_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`hospital_id`,`department_id`,`team_id`,`team_leader_id`,`username`,`name`,`user_role_id`,`user_role_name`,`email`,`password`,`created_at`) values 
(1,NULL,NULL,NULL,NULL,'saad',NULL,NULL,NULL,'saad@demo.com',NULL,'2020-08-21 21:45:00'),
(3,NULL,NULL,NULL,NULL,'saads',NULL,NULL,NULL,'saads@demo.com',NULL,'2020-08-21 23:08:45'),
(4,NULL,NULL,NULL,NULL,'bilal',NULL,NULL,NULL,'bilal@demo.com',NULL,'2020-08-28 21:58:54'),
(5,1,1,1,1,'SaadAhmed','Saad',1,'Chief Service Line','saadahmed@demo.com','CL123','2020-08-28 22:00:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
