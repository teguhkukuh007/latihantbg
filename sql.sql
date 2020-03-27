/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 10.4.11-MariaDB : Database - latihantbg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`latihantbg` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `latihantbg`;

/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_assignment` */

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values 
('/mimin/route/*','',NULL),
('/user/*','',NULL),
('admin','1',1583005641);

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values 
('/benchmark/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/benchmark/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/benchmark/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/benchmark/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/benchmark/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/benchmark/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/calibration/*',2,NULL,NULL,NULL,1584784574,1584784574),
('/coalboundary/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/coalboundary/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/coalboundary/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/coalboundary/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/coalboundary/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/coalboundary/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/coalinterburden/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/coalinterburden/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/coalinterburden/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/coalinterburden/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/coalinterburden/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/coalinterburden/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/coalinventory/*',2,NULL,NULL,NULL,1585094204,1585094204),
('/coalstockpile/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/coalstockpile/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/coalstockpile/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/coalstockpile/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/coalstockpile/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/coalstockpile/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/debug/user/*',2,NULL,NULL,NULL,1584756989,1584756989),
('/diggerposition/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/diggerposition/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/diggerposition/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/diggerposition/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/diggerposition/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/diggerposition/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/dokumen/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/dokumen/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/dokumen/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/dokumen/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/dokumen/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/dokumen/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/dozingfile/*',2,NULL,NULL,NULL,1585104259,1585104259),
('/dozingperiode/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/dozingperiode/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/dozingperiode/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/dozingperiode/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/dozingperiode/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/dozingperiode/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/drillblast/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/drillblast/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/drillblast/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/drillblast/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/drillblast/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/drillblast/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/elibrary/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/elibrary/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/elibrary/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/elibrary/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/elibrary/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/elibrary/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/file/*',2,NULL,NULL,NULL,1584762764,1584762764),
('/floorcoal/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/floorcoal/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/floorcoal/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/floorcoal/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/floorcoal/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/floorcoal/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/folder/*',2,NULL,NULL,NULL,1584762702,1584762702),
('/gii/*',2,NULL,NULL,NULL,1583000584,1583000584),
('/gii/default/*',2,NULL,NULL,NULL,1583000585,1583000585),
('/gii/default/action',2,NULL,NULL,NULL,1583000592,1583000592),
('/gii/default/diff',2,NULL,NULL,NULL,1583000593,1583000593),
('/gii/default/index',2,NULL,NULL,NULL,1583000594,1583000594),
('/gii/default/preview',2,NULL,NULL,NULL,1583000596,1583000596),
('/gii/default/view',2,NULL,NULL,NULL,1583000597,1583000597),
('/gridview/*',2,NULL,NULL,NULL,1583000587,1583000587),
('/hauldistance/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/hauldistance/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/hauldistance/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/hauldistance/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/hauldistance/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/hauldistance/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/inventory//*',2,NULL,NULL,NULL,1584757162,1584757162),
('/mimin/role/*',2,NULL,NULL,NULL,1583000564,1583000564),
('/mimin/role/create',2,NULL,NULL,NULL,1583000569,1583000569),
('/mimin/role/delete',2,NULL,NULL,NULL,1583000570,1583000570),
('/mimin/role/index',2,NULL,NULL,NULL,1583000572,1583000572),
('/mimin/role/permission',2,NULL,NULL,NULL,1583000573,1583000573),
('/mimin/role/update',2,NULL,NULL,NULL,1583000574,1583000574),
('/mimin/role/view',2,NULL,NULL,NULL,1583000575,1583000575),
('/mimin/route/*',2,NULL,NULL,NULL,1583000604,1583000604),
('/mimin/route/create',2,NULL,NULL,NULL,1583002497,1583002497),
('/mimin/route/delete',2,NULL,NULL,NULL,1583002496,1583002496),
('/mimin/route/generate',2,NULL,NULL,NULL,1583002495,1583002495),
('/mimin/route/index',2,NULL,NULL,NULL,1583002494,1583002494),
('/mimin/route/update',2,NULL,NULL,NULL,1583002492,1583002492),
('/mimin/route/view',2,NULL,NULL,NULL,1583002491,1583002491),
('/mimin/user/*',2,NULL,NULL,NULL,1583000605,1583000605),
('/mimin/user/create',2,NULL,NULL,NULL,1583002502,1583002502),
('/mimin/user/delete',2,NULL,NULL,NULL,1583002503,1583002503),
('/mimin/user/index',2,NULL,NULL,NULL,1583002505,1583002505),
('/mimin/user/update',2,NULL,NULL,NULL,1583002507,1583002507),
('/mimin/user/view',2,NULL,NULL,NULL,1583002508,1583002508),
('/muddisposal/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/muddisposal/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/muddisposal/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/muddisposal/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/muddisposal/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/muddisposal/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/obdisposal/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/obdisposal/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/obdisposal/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/obdisposal/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/obdisposal/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/obdisposal/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/pobboundary/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/pobboundary/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/pobboundary/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/pobboundary/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/pobboundary/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/pobboundary/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/pobmud/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/pobmud/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/pobmud/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/pobmud/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/pobmud/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/pobmud/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/poboriginal/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/poboriginal/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/poboriginal/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/poboriginal/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/poboriginal/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/poboriginal/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/pobprogres/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/pobprogres/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/pobprogres/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/pobprogres/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/pobprogres/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/pobprogres/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/polygon/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/polygon/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/polygon/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/polygon/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/polygon/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/polygon/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/reconciliation/*',2,NULL,NULL,NULL,1585111875,1585111875),
('/reconsiliation/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/reconsiliation/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/reconsiliation/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/reconsiliation/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/reconsiliation/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/reconsiliation/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/role/*',2,NULL,NULL,NULL,1583000607,1583000607),
('/role/create',2,NULL,NULL,NULL,1583000637,1583000637),
('/role/delete',2,NULL,NULL,NULL,1583000638,1583000638),
('/role/index',2,NULL,NULL,NULL,1583000639,1583000639),
('/role/permission',2,NULL,NULL,NULL,1583000640,1583000640),
('/role/update',2,NULL,NULL,NULL,1583000642,1583000642),
('/role/view',2,NULL,NULL,NULL,1583000643,1583000643),
('/roofcoal/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/roofcoal/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/roofcoal/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/roofcoal/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/roofcoal/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/roofcoal/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/route/*',2,NULL,NULL,NULL,1583000608,1583000608),
('/route/create',2,NULL,NULL,NULL,1583000646,1583000646),
('/route/delete',2,NULL,NULL,NULL,1583000647,1583000647),
('/route/generate',2,NULL,NULL,NULL,1583000649,1583000649),
('/route/index',2,NULL,NULL,NULL,1583000650,1583000650),
('/route/update',2,NULL,NULL,NULL,1583000652,1583000652),
('/route/view',2,NULL,NULL,NULL,1583000654,1583000654),
('/site/*',2,NULL,NULL,NULL,1583000609,1583000609),
('/site/about',2,NULL,NULL,NULL,1583665790,1583665790),
('/site/captcha',2,NULL,NULL,NULL,1583665781,1583665781),
('/site/contact',2,NULL,NULL,NULL,1583665784,1583665784),
('/site/dash',2,NULL,NULL,NULL,1583254366,1583254366),
('/site/error',2,NULL,NULL,NULL,1583254367,1583254367),
('/site/index',2,NULL,NULL,NULL,1583254368,1583254368),
('/site/login',2,NULL,NULL,NULL,1583665777,1583665777),
('/site/logout',2,NULL,NULL,NULL,1583665779,1583665779),
('/site/request-password-reset',2,NULL,NULL,NULL,1583665782,1583665782),
('/site/reset-password',2,NULL,NULL,NULL,1583665783,1583665783),
('/site/signup',2,NULL,NULL,NULL,1583665785,1583665785),
('/situation/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/situation/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/situation/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/situation/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/situation/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/situation/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/soildisposal/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/soildisposal/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/soildisposal/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/soildisposal/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/soildisposal/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/soildisposal/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/survey/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/survey/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/survey/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/survey/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/survey/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/survey/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/surveyother/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/surveyother/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/surveyother/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/surveyother/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/surveyother/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/surveyother/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/surveyproj/*',2,NULL,NULL,NULL,1585115627,1585115627),
('/surveyproject/*',2,NULL,NULL,NULL,1585115773,1585115773),
('/surveyreport/*',2,NULL,NULL,NULL,1585112960,1585112960),
('/surveywater/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/surveywater/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/surveywater/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/surveywater/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/surveywater/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/surveywater/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/totalstation/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/totalstation/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/totalstation/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/totalstation/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/totalstation/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/totalstation/view',2,NULL,NULL,NULL,1583000627,1583000627),
('/user/*',2,NULL,NULL,NULL,1583000619,1583000619),
('/user/create',2,NULL,NULL,NULL,1583000621,1583000621),
('/user/delete',2,NULL,NULL,NULL,1583000622,1583000622),
('/user/index',2,NULL,NULL,NULL,1583000624,1583000624),
('/user/update',2,NULL,NULL,NULL,1583000626,1583000626),
('/user/view',2,NULL,NULL,NULL,1583000627,1583000627),
('admin',1,NULL,NULL,NULL,1582997439,1583000733);

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`) values 
('admin','/benchmark/*'),
('admin','/calibration/*'),
('admin','/coalboundary/*'),
('admin','/coalinterburden/*'),
('admin','/coalinventory/*'),
('admin','/coalstockpile/*'),
('admin','/debug/user/*'),
('admin','/diggerposition/*'),
('admin','/dokumen/*'),
('admin','/dozingfile/*'),
('admin','/dozingperiode/*'),
('admin','/drillblast/*'),
('admin','/elibrary/*'),
('admin','/file/*'),
('admin','/floorcoal/*'),
('admin','/folder/*'),
('admin','/gii/*'),
('admin','/gii/default/*'),
('admin','/gii/default/action'),
('admin','/gii/default/diff'),
('admin','/gii/default/index'),
('admin','/gii/default/preview'),
('admin','/gii/default/view'),
('admin','/gridview/*'),
('admin','/hauldistance/*'),
('admin','/inventory//*'),
('admin','/mimin/role/*'),
('admin','/mimin/role/create'),
('admin','/mimin/role/delete'),
('admin','/mimin/role/index'),
('admin','/mimin/role/permission'),
('admin','/mimin/role/update'),
('admin','/mimin/role/view'),
('admin','/mimin/route/*'),
('admin','/mimin/route/create'),
('admin','/mimin/route/delete'),
('admin','/mimin/route/generate'),
('admin','/mimin/route/index'),
('admin','/mimin/route/update'),
('admin','/mimin/route/view'),
('admin','/mimin/user/*'),
('admin','/mimin/user/create'),
('admin','/mimin/user/delete'),
('admin','/mimin/user/index'),
('admin','/mimin/user/update'),
('admin','/mimin/user/view'),
('admin','/muddisposal/*'),
('admin','/obdisposal/*'),
('admin','/pobboundary/*'),
('admin','/pobmud/*'),
('admin','/poboriginal/*'),
('admin','/pobprogres/*'),
('admin','/polygon/*'),
('admin','/reconciliation/*'),
('admin','/reconsiliation/*'),
('admin','/role/*'),
('admin','/role/create'),
('admin','/role/delete'),
('admin','/role/index'),
('admin','/role/permission'),
('admin','/role/update'),
('admin','/role/view'),
('admin','/roofcoal/*'),
('admin','/route/*'),
('admin','/route/create'),
('admin','/route/delete'),
('admin','/route/generate'),
('admin','/route/index'),
('admin','/route/update'),
('admin','/route/view'),
('admin','/site/*'),
('admin','/site/about'),
('admin','/site/captcha'),
('admin','/site/contact'),
('admin','/site/dash'),
('admin','/site/error'),
('admin','/site/index'),
('admin','/site/login'),
('admin','/site/logout'),
('admin','/site/request-password-reset'),
('admin','/site/reset-password'),
('admin','/site/signup'),
('admin','/situation/*'),
('admin','/soildisposal/*'),
('admin','/survey/*'),
('admin','/surveyother/*'),
('admin','/surveyproj/*'),
('admin','/surveyproject/*'),
('admin','/surveyreport/*'),
('admin','/surveywater/*'),
('admin','/totalstation/*'),
('admin','/user/*'),
('admin','/user/create'),
('admin','/user/delete'),
('admin','/user/index'),
('admin','/user/update'),
('admin','/user/view');

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_rule` */

insert  into `auth_rule`(`name`,`data`,`created_at`,`updated_at`) values 
('admin',NULL,NULL,NULL);

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `barang` */

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values 
('m000000_000000_base',1582093759),
('m130524_201442_init',1582093774),
('m170228_064223_rbac_create',1582093774),
('m170228_064635_mimin_init',1582093774),
('m190720_083956_createtablebarang',1582093774);

/*Table structure for table `route` */

DROP TABLE IF EXISTS `route`;

CREATE TABLE `route` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `route` */

insert  into `route`(`name`,`alias`,`type`,`status`) values 
('/*','*','',1),
('/benchmark/*','*','benchmark',1),
('/benchmark/create','create','benchmark',1),
('/benchmark/delete','delete','benchmark',1),
('/benchmark/index','index','benchmark',1),
('/benchmark/update','update','benchmark',1),
('/benchmark/view','view','benchmark',1),
('/calibration/*','*','calibration',1),
('/calibration/create','create','calibration',1),
('/calibration/delete','delete','calibration',1),
('/calibration/index','index','calibration',1),
('/calibration/update','update','calibration',1),
('/calibration/view','view','calibration',1),
('/coalboundary/*','*','coalboundary',1),
('/coalboundary/create','create','coalboundary',1),
('/coalboundary/delete','delete','coalboundary',1),
('/coalboundary/index','index','coalboundary',1),
('/coalboundary/update','update','coalboundary',1),
('/coalboundary/view','view','coalboundary',1),
('/coalinterburden/*','*','coalinterburden',1),
('/coalinterburden/create','create','coalinterburden',1),
('/coalinterburden/delete','delete','coalinterburden',1),
('/coalinterburden/index','index','coalinterburden',1),
('/coalinterburden/update','update','coalinterburden',1),
('/coalinterburden/view','view','coalinterburden',1),
('/coalinventory/*','*','coalinventory',1),
('/coalinventory/create','create','coalinventory',1),
('/coalinventory/delete','delete','coalinventory',1),
('/coalinventory/index','index','coalinventory',1),
('/coalinventory/update','update','coalinventory',1),
('/coalinventory/view','view','coalinventory',1),
('/coalstockpile/*','*','coalstockpile',1),
('/coalstockpile/create','create','coalstockpile',1),
('/coalstockpile/delete','delete','coalstockpile',1),
('/coalstockpile/index','index','coalstockpile',1),
('/coalstockpile/update','update','coalstockpile',1),
('/coalstockpile/view','view','coalstockpile',1),
('/datecontrol/*','*','datecontrol',1),
('/datecontrol/parse/*','*','datecontrol/parse',1),
('/datecontrol/parse/convert','convert','datecontrol/parse',1),
('/debug/*','*','debug',1),
('/debug/default/*','*','debug/default',1),
('/debug/default/db-explain','db-explain','debug/default',1),
('/debug/default/download-mail','download-mail','debug/default',1),
('/debug/default/index','index','debug/default',1),
('/debug/default/toolbar','toolbar','debug/default',1),
('/debug/default/view','view','debug/default',1),
('/debug/user/*','*','debug/user',1),
('/debug/user/reset-identity','reset-identity','debug/user',1),
('/debug/user/set-identity','set-identity','debug/user',1),
('/diggerposition/*','*','diggerposition',1),
('/diggerposition/create','create','diggerposition',1),
('/diggerposition/delete','delete','diggerposition',1),
('/diggerposition/index','index','diggerposition',1),
('/diggerposition/update','update','diggerposition',1),
('/diggerposition/view','view','diggerposition',1),
('/dokumen/*','*','dokumen',1),
('/dokumen/create','create','dokumen',1),
('/dokumen/delete','delete','dokumen',1),
('/dokumen/index','index','dokumen',1),
('/dokumen/update','update','dokumen',1),
('/dokumen/view','view','dokumen',1),
('/dozingfile/*','*','dozingfile',1),
('/dozingfile/create','create','dozingfile',1),
('/dozingfile/delete','delete','dozingfile',1),
('/dozingfile/index','index','dozingfile',1),
('/dozingfile/update','update','dozingfile',1),
('/dozingfile/view','view','dozingfile',1),
('/dozingperiode/*','*','dozingperiode',1),
('/dozingperiode/create','create','dozingperiode',1),
('/dozingperiode/delete','delete','dozingperiode',1),
('/dozingperiode/index','index','dozingperiode',1),
('/dozingperiode/update','update','dozingperiode',1),
('/dozingperiode/view','view','dozingperiode',1),
('/drillblast/*','*','drillblast',1),
('/drillblast/create','create','drillblast',1),
('/drillblast/delete','delete','drillblast',1),
('/drillblast/index','index','drillblast',1),
('/drillblast/update','update','drillblast',1),
('/drillblast/view','view','drillblast',1),
('/elibrary/*','*','elibrary',1),
('/elibrary/create','create','elibrary',1),
('/elibrary/delete','delete','elibrary',1),
('/elibrary/index','index','elibrary',1),
('/elibrary/update','update','elibrary',1),
('/elibrary/view','view','elibrary',1),
('/file/*','*','file',1),
('/file/create','create','file',1),
('/file/delete','delete','file',1),
('/file/index','index','file',1),
('/file/update','update','file',1),
('/file/view','view','file',1),
('/floorcoal/*','*','floorcoal',1),
('/floorcoal/create','create','floorcoal',1),
('/floorcoal/delete','delete','floorcoal',1),
('/floorcoal/index','index','floorcoal',1),
('/floorcoal/update','update','floorcoal',1),
('/floorcoal/view','view','floorcoal',1),
('/folder/*','*','folder',1),
('/folder/create','create','folder',1),
('/folder/delete','delete','folder',1),
('/folder/index','index','folder',1),
('/folder/update','update','folder',1),
('/folder/view','view','folder',1),
('/gii/*','*','gii',1),
('/gii/default/*','*','gii/default',1),
('/gii/default/action','action','gii/default',1),
('/gii/default/diff','diff','gii/default',1),
('/gii/default/index','index','gii/default',1),
('/gii/default/preview','preview','gii/default',1),
('/gii/default/view','view','gii/default',1),
('/gridview/*','*','gridview',1),
('/gridview/export/*','*','gridview/export',1),
('/gridview/export/download','download','gridview/export',1),
('/hauldistance/*','*','hauldistance',1),
('/hauldistance/create','create','hauldistance',1),
('/hauldistance/delete','delete','hauldistance',1),
('/hauldistance/index','index','hauldistance',1),
('/hauldistance/update','update','hauldistance',1),
('/hauldistance/view','view','hauldistance',1),
('/inventory//*','*','inventory/',1),
('/inventory//create','create','inventory/',1),
('/inventory//delete','delete','inventory/',1),
('/inventory//index','index','inventory/',1),
('/inventory//update','update','inventory/',1),
('/inventory//view','view','inventory/',1),
('/mimin/*','*','mimin',1),
('/mimin/role/*','*','mimin/role',1),
('/mimin/role/create','create','mimin/role',1),
('/mimin/role/delete','delete','mimin/role',1),
('/mimin/role/index','index','mimin/role',1),
('/mimin/role/permission','permission','mimin/role',1),
('/mimin/role/update','update','mimin/role',1),
('/mimin/role/view','view','mimin/role',1),
('/mimin/route/*','*','mimin/route',1),
('/mimin/route/create','create','mimin/route',1),
('/mimin/route/delete','delete','mimin/route',1),
('/mimin/route/generate','generate','mimin/route',1),
('/mimin/route/index','index','mimin/route',1),
('/mimin/route/update','update','mimin/route',1),
('/mimin/route/view','view','mimin/route',1),
('/mimin/user/*','*','mimin/user',1),
('/mimin/user/create','create','mimin/user',1),
('/mimin/user/delete','delete','mimin/user',1),
('/mimin/user/index','index','mimin/user',1),
('/mimin/user/update','update','mimin/user',1),
('/mimin/user/view','view','mimin/user',1),
('/muddisposal/*','*','muddisposal',1),
('/muddisposal/create','create','muddisposal',1),
('/muddisposal/delete','delete','muddisposal',1),
('/muddisposal/index','index','muddisposal',1),
('/muddisposal/update','update','muddisposal',1),
('/muddisposal/view','view','muddisposal',1),
('/obdisposal/*','*','obdisposal',1),
('/obdisposal/create','create','obdisposal',1),
('/obdisposal/delete','delete','obdisposal',1),
('/obdisposal/index','index','obdisposal',1),
('/obdisposal/update','update','obdisposal',1),
('/obdisposal/view','view','obdisposal',1),
('/pobboundary/*','*','pobboundary',1),
('/pobboundary/create','create','pobboundary',1),
('/pobboundary/delete','delete','pobboundary',1),
('/pobboundary/index','index','pobboundary',1),
('/pobboundary/update','update','pobboundary',1),
('/pobboundary/view','view','pobboundary',1),
('/pobmud/*','*','pobmud',1),
('/pobmud/create','create','pobmud',1),
('/pobmud/delete','delete','pobmud',1),
('/pobmud/index','index','pobmud',1),
('/pobmud/update','update','pobmud',1),
('/pobmud/view','view','pobmud',1),
('/poboriginal/*','*','poboriginal',1),
('/poboriginal/create','create','poboriginal',1),
('/poboriginal/delete','delete','poboriginal',1),
('/poboriginal/index','index','poboriginal',1),
('/poboriginal/update','update','poboriginal',1),
('/poboriginal/view','view','poboriginal',1),
('/pobprogres/*','*','pobprogres',1),
('/pobprogres/create','create','pobprogres',1),
('/pobprogres/delete','delete','pobprogres',1),
('/pobprogres/index','index','pobprogres',1),
('/pobprogres/update','update','pobprogres',1),
('/pobprogres/view','view','pobprogres',1),
('/polygon/*','*','polygon',1),
('/polygon/create','create','polygon',1),
('/polygon/delete','delete','polygon',1),
('/polygon/index','index','polygon',1),
('/polygon/update','update','polygon',1),
('/polygon/view','view','polygon',1),
('/reconciliation/*','*','reconciliation',1),
('/reconciliation/create','create','reconciliation',1),
('/reconciliation/delete','delete','reconciliation',1),
('/reconciliation/index','index','reconciliation',1),
('/reconciliation/update','update','reconciliation',1),
('/reconciliation/view','view','reconciliation',1),
('/role/*','*','role',1),
('/role/create','create','role',1),
('/role/delete','delete','role',1),
('/role/index','index','role',1),
('/role/permission','permission','role',1),
('/role/update','update','role',1),
('/role/view','view','role',1),
('/roofcoal/*','*','roofcoal',1),
('/roofcoal/create','create','roofcoal',1),
('/roofcoal/delete','delete','roofcoal',1),
('/roofcoal/index','index','roofcoal',1),
('/roofcoal/update','update','roofcoal',1),
('/roofcoal/view','view','roofcoal',1),
('/route/*','*','route',1),
('/route/create','create','route',1),
('/route/delete','delete','route',1),
('/route/generate','generate','route',1),
('/route/index','index','route',1),
('/route/update','update','route',1),
('/route/view','view','route',1),
('/site/*','*','site',1),
('/site/about','about','site',1),
('/site/captcha','captcha','site',1),
('/site/contact','contact','site',1),
('/site/dash','dash','site',1),
('/site/error','error','site',1),
('/site/index','index','site',1),
('/site/login','login','site',1),
('/site/logout','logout','site',1),
('/site/request-password-reset','request-password-reset','site',1),
('/site/reset-password','reset-password','site',1),
('/site/signup','signup','site',1),
('/situation/*','*','situation',1),
('/situation/create','create','situation',1),
('/situation/delete','delete','situation',1),
('/situation/index','index','situation',1),
('/situation/update','update','situation',1),
('/situation/view','view','situation',1),
('/soildisposal/*','*','soildisposal',1),
('/soildisposal/create','create','soildisposal',1),
('/soildisposal/delete','delete','soildisposal',1),
('/soildisposal/index','index','soildisposal',1),
('/soildisposal/update','update','soildisposal',1),
('/soildisposal/view','view','soildisposal',1),
('/survey/*','*','survey',1),
('/survey/create','create','survey',1),
('/survey/delete','delete','survey',1),
('/survey/index','index','survey',1),
('/survey/update','update','survey',1),
('/survey/view','view','survey',1),
('/surveyother/*','*','surveyother',1),
('/surveyother/create','create','surveyother',1),
('/surveyother/delete','delete','surveyother',1),
('/surveyother/index','index','surveyother',1),
('/surveyother/update','update','surveyother',1),
('/surveyother/view','view','surveyother',1),
('/surveyproject/*','*','surveyproject',1),
('/surveyproject/create','create','surveyproject',1),
('/surveyproject/delete','delete','surveyproject',1),
('/surveyproject/index','index','surveyproject',1),
('/surveyproject/update','update','surveyproject',1),
('/surveyproject/view','view','surveyproject',1),
('/surveyreport/*','*','surveyreport',1),
('/surveyreport/create','create','surveyreport',1),
('/surveyreport/delete','delete','surveyreport',1),
('/surveyreport/index','index','surveyreport',1),
('/surveyreport/update','update','surveyreport',1),
('/surveyreport/view','view','surveyreport',1),
('/surveywater/*','*','surveywater',1),
('/surveywater/create','create','surveywater',1),
('/surveywater/delete','delete','surveywater',1),
('/surveywater/index','index','surveywater',1),
('/surveywater/update','update','surveywater',1),
('/surveywater/view','view','surveywater',1),
('/totalstation/*','*','totalstation',1),
('/totalstation/create','create','totalstation',1),
('/totalstation/delete','delete','totalstation',1),
('/totalstation/index','index','totalstation',1),
('/totalstation/update','update','totalstation',1),
('/totalstation/view','view','totalstation',1),
('/user/*','*','user',1),
('/user/create','create','user',1),
('/user/delete','delete','user',1),
('/user/index','index','user',1),
('/user/update','update','user',1),
('/user/view','view','user',1);

/*Table structure for table `tbl_admcalib_rec` */

DROP TABLE IF EXISTS `tbl_admcalib_rec`;

CREATE TABLE `tbl_admcalib_rec` (
  `calibrec_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `calibrec_inv_id` bigint(20) NOT NULL,
  `calibrec_calib` date NOT NULL,
  `calibrec_calib_next` date DEFAULT NULL,
  `calibrec_status` varchar(100) DEFAULT NULL,
  `calibrec_cert` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`calibrec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_admcalib_rec` */

/*Table structure for table `tbl_admdocumen` */

DROP TABLE IF EXISTS `tbl_admdocumen`;

CREATE TABLE `tbl_admdocumen` (
  `admdocumen_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admdocumen_title` varchar(200) DEFAULT NULL,
  `admdocumen_date` datetime DEFAULT NULL,
  `admdocumen_type` varchar(50) DEFAULT NULL COMMENT 'master,dok',
  `admdocumen_desc` text DEFAULT NULL,
  `admdocumen_file` varchar(210) DEFAULT NULL,
  PRIMARY KEY (`admdocumen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_admdocumen` */

insert  into `tbl_admdocumen`(`admdocumen_id`,`admdocumen_title`,`admdocumen_date`,`admdocumen_type`,`admdocumen_desc`,`admdocumen_file`) values 
(6,'Form pekerjaan galian A','2020-03-09 10:28:05','master',NULL,'1583746085eeeee.txt'),
(7,'Form pekerjaan galian A','2002-09-09 00:00:00','dok','test',NULL);

/*Table structure for table `tbl_adminventory` */

DROP TABLE IF EXISTS `tbl_adminventory`;

CREATE TABLE `tbl_adminventory` (
  `inventlist_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inventlist_instrument` varchar(100) DEFAULT NULL,
  `inventlist_desc` text DEFAULT NULL,
  `inventlist_brand` varchar(100) DEFAULT NULL,
  `inventlist_sn` varchar(100) DEFAULT NULL,
  `inventlist_quantity` int(100) DEFAULT NULL,
  `inventlist_status` varchar(100) DEFAULT NULL,
  `inventlist_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`inventlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_adminventory` */

insert  into `tbl_adminventory`(`inventlist_id`,`inventlist_instrument`,`inventlist_desc`,`inventlist_brand`,`inventlist_sn`,`inventlist_quantity`,`inventlist_status`,`inventlist_img`) values 
(1,'Total Station','DS-101 AC Topcon JM0111 1 RFU\r\nGPT-7501 (La','Topcon','345fwe',1,'RFU',''),
(2,'Total Station','DS-101 AC Topcon JM0111 1 RFU\r\nGPT-7501 (La','Topcon','345fwe',1,'RFU','1584784002Salinan Corona - Dibuat dengan PosterMyWall.jpg');

/*Table structure for table `tbl_benchmark` */

DROP TABLE IF EXISTS `tbl_benchmark`;

CREATE TABLE `tbl_benchmark` (
  `benc_point` varchar(100) DEFAULT NULL,
  `benc_northing` varchar(100) DEFAULT NULL,
  `benc_easting` varchar(100) DEFAULT NULL,
  `benc_elevation` varchar(100) DEFAULT NULL,
  `benc_location` varchar(100) DEFAULT NULL,
  `benc_rmark` varchar(100) DEFAULT NULL,
  `benc_update` date DEFAULT NULL,
  `benc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`benc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_benchmark` */

insert  into `tbl_benchmark`(`benc_point`,`benc_northing`,`benc_easting`,`benc_elevation`,`benc_location`,`benc_rmark`,`benc_update`,`benc_id`) values 
('33434','2','3','4','5','5','2020-03-11',1);

/*Table structure for table `tbl_calibration` */

DROP TABLE IF EXISTS `tbl_calibration`;

CREATE TABLE `tbl_calibration` (
  `calib_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `calib_date` date DEFAULT NULL,
  `calib_next` date DEFAULT NULL,
  `calib_equip` text DEFAULT NULL,
  `calib_sn` varchar(200) DEFAULT NULL,
  `calib_status` varchar(50) DEFAULT NULL,
  `calib_certificate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`calib_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_calibration` */

insert  into `tbl_calibration`(`calib_id`,`calib_date`,`calib_next`,`calib_equip`,`calib_sn`,`calib_status`,`calib_certificate`) values 
(1,'2019-10-10','2020-10-10','Instrumen','334234','fku','');

/*Table structure for table `tbl_coalboundary` */

DROP TABLE IF EXISTS `tbl_coalboundary`;

CREATE TABLE `tbl_coalboundary` (
  `boundcoal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `boundrcoal_name` varchar(200) DEFAULT NULL,
  `boundrcoal_seam` varchar(200) DEFAULT NULL,
  `boundrcoal_remark` text DEFAULT NULL,
  `boundrcoal_date` date DEFAULT NULL,
  `boundrcoal_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`boundcoal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_coalboundary` */

insert  into `tbl_coalboundary`(`boundcoal_id`,`boundrcoal_name`,`boundrcoal_seam`,`boundrcoal_remark`,`boundrcoal_date`,`boundrcoal_file`) values 
(1,'name','seam','remark','2019-03-04','1585089522cert.png');

/*Table structure for table `tbl_coalinterburden` */

DROP TABLE IF EXISTS `tbl_coalinterburden`;

CREATE TABLE `tbl_coalinterburden` (
  `intercoal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `interrcoal_name` varchar(200) DEFAULT NULL,
  `interrcoal_seam` varchar(200) DEFAULT NULL,
  `interrcoal_remark` text DEFAULT NULL,
  `interrcoal_date` date DEFAULT NULL,
  `interrcoal_file` varchar(200) DEFAULT NULL,
  `interrcoal_type` enum('floor','roof') DEFAULT 'roof',
  PRIMARY KEY (`intercoal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_coalinterburden` */

insert  into `tbl_coalinterburden`(`intercoal_id`,`interrcoal_name`,`interrcoal_seam`,`interrcoal_remark`,`interrcoal_date`,`interrcoal_file`,`interrcoal_type`) values 
(1,'name','sema','emark','2019-09-09','1585091306benchmark.png','roof');

/*Table structure for table `tbl_coalinventory` */

DROP TABLE IF EXISTS `tbl_coalinventory`;

CREATE TABLE `tbl_coalinventory` (
  `coalinv_color` varchar(20) DEFAULT NULL,
  `coalinv_digable` varchar(200) DEFAULT NULL,
  `coalinv_nonedigable` varchar(200) DEFAULT NULL,
  `coalinv_remarks` text DEFAULT NULL,
  `coalinv_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`coalinv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_coalinventory` */

/*Table structure for table `tbl_coalstockpile` */

DROP TABLE IF EXISTS `tbl_coalstockpile`;

CREATE TABLE `tbl_coalstockpile` (
  `stockpcoal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stockpcoal_name` varchar(200) DEFAULT NULL,
  `stockpcoal_seam` varchar(200) DEFAULT NULL,
  `stockpcoal_remark` text DEFAULT NULL,
  `stockpcoal_date` date DEFAULT NULL,
  `stockpcoal_type` varchar(100) DEFAULT 'base',
  `stockpcoal_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`stockpcoal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_coalstockpile` */

insert  into `tbl_coalstockpile`(`stockpcoal_id`,`stockpcoal_name`,`stockpcoal_seam`,`stockpcoal_remark`,`stockpcoal_date`,`stockpcoal_type`,`stockpcoal_file`) values 
(1,'progress','seam','remark','2019-10-10','progress','1585092967dok create.png');

/*Table structure for table `tbl_diggerposition` */

DROP TABLE IF EXISTS `tbl_diggerposition`;

CREATE TABLE `tbl_diggerposition` (
  `dig_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dig_plt` varchar(200) DEFAULT NULL,
  `dig_eqid` varchar(200) DEFAULT NULL,
  `dig_actual` varchar(200) DEFAULT NULL,
  `dig_week` varchar(200) DEFAULT NULL,
  `dig_month` varchar(200) DEFAULT NULL,
  `dig_yearl` varchar(200) DEFAULT NULL,
  `dig_remark` varchar(200) DEFAULT NULL,
  `dig_location` varchar(200) DEFAULT NULL,
  `dig_plan` varchar(200) DEFAULT NULL,
  `dig_date` date DEFAULT NULL,
  PRIMARY KEY (`dig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_diggerposition` */

/*Table structure for table `tbl_dozingfile` */

DROP TABLE IF EXISTS `tbl_dozingfile`;

CREATE TABLE `tbl_dozingfile` (
  `doz_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doz_name` varchar(200) DEFAULT NULL,
  `doz_boundary` varchar(200) DEFAULT NULL,
  `doz_remark` text DEFAULT NULL,
  `doz_date` date DEFAULT NULL,
  `doz_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`doz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_dozingfile` */

insert  into `tbl_dozingfile`(`doz_id`,`doz_name`,`doz_boundary`,`doz_remark`,`doz_date`,`doz_file`) values 
(1,'roofcoal','seam','remark','2019-02-09','1585088443cert.png');

/*Table structure for table `tbl_dozingperiode` */

DROP TABLE IF EXISTS `tbl_dozingperiode`;

CREATE TABLE `tbl_dozingperiode` (
  `dosing_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dosing_name` varchar(200) DEFAULT NULL,
  `dosing_date` date DEFAULT NULL,
  `dosing_desc` text DEFAULT NULL,
  `dosing_primevol` float DEFAULT NULL,
  `dosing_revolume` float DEFAULT NULL,
  `dosing_voidvol` float DEFAULT NULL,
  `dosing_total` float DEFAULT NULL,
  `dosing_push` float DEFAULT NULL,
  PRIMARY KEY (`dosing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_dozingperiode` */

insert  into `tbl_dozingperiode`(`dosing_id`,`dosing_name`,`dosing_date`,`dosing_desc`,`dosing_primevol`,`dosing_revolume`,`dosing_voidvol`,`dosing_total`,`dosing_push`) values 
(1,NULL,'2019-10-10','r',9,9,9,9,9);

/*Table structure for table `tbl_drillblast` */

DROP TABLE IF EXISTS `tbl_drillblast`;

CREATE TABLE `tbl_drillblast` (
  `drill_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `drill_name` varchar(200) DEFAULT NULL,
  `drill_date` date DEFAULT NULL,
  `drill_desc` text DEFAULT NULL,
  `drill_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`drill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_drillblast` */

insert  into `tbl_drillblast`(`drill_id`,`drill_name`,`drill_date`,`drill_desc`,`drill_file`) values 
(1,'date','2019-10-10','des','1585112578benchmark.png');

/*Table structure for table `tbl_elibrary` */

DROP TABLE IF EXISTS `tbl_elibrary`;

CREATE TABLE `tbl_elibrary` (
  `elibrary_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `elibrary_title` varchar(200) DEFAULT NULL,
  `elibrary_date` date DEFAULT NULL,
  `elibrary_cat` varchar(100) DEFAULT NULL,
  `elibrary_desc` text DEFAULT NULL,
  `elibrary_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`elibrary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_elibrary` */

insert  into `tbl_elibrary`(`elibrary_id`,`elibrary_title`,`elibrary_date`,`elibrary_cat`,`elibrary_desc`,`elibrary_file`) values 
(1,'test','2020-03-09','pdf','testt',NULL),
(2,'test','2009-05-09','katerpfi','desc',''),
(3,'test','2009-05-09','katerpfi','desc','1584807965SE Pembatasan Maksimal Kampus UGM 2.pdf');

/*Table structure for table `tbl_file` */

DROP TABLE IF EXISTS `tbl_file`;

CREATE TABLE `tbl_file` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(200) DEFAULT NULL,
  `file_folder` varchar(250) DEFAULT NULL,
  `file_folder_id` bigint(20) DEFAULT NULL,
  `file_date` date DEFAULT NULL,
  `file_ket` text DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_file` */

insert  into `tbl_file`(`file_id`,`file_name`,`file_folder`,`file_folder_id`,`file_date`,`file_ket`) values 
(1,'1584774781alur sip online new.png','uploads/dok/',2,'2020-03-21','ket'),
(2,'1584787889192-337-2-PB.pdf','uploads/dok/',5,'2020-03-21','work'),
(3,'1584788193pojk 11-2020.pdf.pdf','uploads/dok/',6,'2020-03-21','live'),
(4,'1584789735alur sip online new.png','uploads/dok/',7,'2020-03-21','keterangan');

/*Table structure for table `tbl_floorcoal` */

DROP TABLE IF EXISTS `tbl_floorcoal`;

CREATE TABLE `tbl_floorcoal` (
  `fcoal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fcoal_name` varchar(200) DEFAULT NULL,
  `fcoal_seam` varchar(200) DEFAULT NULL,
  `fcoal_remark` text DEFAULT NULL,
  `fcoal_date` date DEFAULT NULL,
  `fcoal_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fcoal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_floorcoal` */

insert  into `tbl_floorcoal`(`fcoal_id`,`fcoal_name`,`fcoal_seam`,`fcoal_remark`,`fcoal_date`,`fcoal_file`) values 
(1,'fcoal','seam','remar','2019-10-10','1585089068cert.png');

/*Table structure for table `tbl_folder` */

DROP TABLE IF EXISTS `tbl_folder`;

CREATE TABLE `tbl_folder` (
  `folder_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `folder_name` varchar(200) DEFAULT NULL,
  `folder_user_id` bigint(20) DEFAULT NULL,
  `folder_tgl_create` date DEFAULT NULL,
  `folder_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`folder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_folder` */

insert  into `tbl_folder`(`folder_id`,`folder_name`,`folder_user_id`,`folder_tgl_create`,`folder_type`) values 
(1,'survey data',1,'2020-03-21','dokumen'),
(2,'survey 2019',1,'2020-03-21','dokumen'),
(4,'Timesheet',NULL,NULL,'time'),
(5,'Work Scedule',NULL,NULL,'work'),
(6,'Leave Record',NULL,NULL,'leave'),
(7,'data pribadi',1,'2020-03-21','personal'),
(8,'project kaltim2',1,'2020-03-22','poly');

/*Table structure for table `tbl_hauldistance` */

DROP TABLE IF EXISTS `tbl_hauldistance`;

CREATE TABLE `tbl_hauldistance` (
  `haul_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `haul_digger` varchar(100) DEFAULT NULL,
  `haul_topsoil` varchar(100) DEFAULT NULL,
  `haul_ob` varchar(100) DEFAULT NULL,
  `haul_mud` varchar(100) DEFAULT NULL,
  `haul_wedges` varchar(100) DEFAULT NULL,
  `haul_rom1` varchar(100) DEFAULT NULL,
  `haul_rom2` varchar(100) DEFAULT NULL,
  `haul_rom3` varchar(100) DEFAULT NULL,
  `haul_rom4` varchar(100) DEFAULT NULL,
  `haul_coalpad` varchar(100) DEFAULT NULL,
  `haul_date` date DEFAULT NULL,
  PRIMARY KEY (`haul_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_hauldistance` */

/*Table structure for table `tbl_muddisposal` */

DROP TABLE IF EXISTS `tbl_muddisposal`;

CREATE TABLE `tbl_muddisposal` (
  `obdmud_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obdmud_name` varchar(200) DEFAULT NULL,
  `obdmud_date` date DEFAULT NULL,
  `obdmud_desc` text DEFAULT NULL,
  `obdmud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`obdmud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_muddisposal` */

insert  into `tbl_muddisposal`(`obdmud_id`,`obdmud_name`,`obdmud_date`,`obdmud_desc`,`obdmud_file`) values 
(1,'mud disposal','2019-09-20','desc','1585101352cert.png');

/*Table structure for table `tbl_obdisposal` */

DROP TABLE IF EXISTS `tbl_obdisposal`;

CREATE TABLE `tbl_obdisposal` (
  `obd_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obd_name` varchar(200) DEFAULT NULL,
  `obd_date` date DEFAULT NULL,
  `obd_desc` text DEFAULT NULL,
  `obd_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`obd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_obdisposal` */

insert  into `tbl_obdisposal`(`obd_id`,`obd_name`,`obd_date`,`obd_desc`,`obd_file`) values 
(1,'name','2019-10-10','descr','1585100406benchmark.png');

/*Table structure for table `tbl_pob_boundary` */

DROP TABLE IF EXISTS `tbl_pob_boundary`;

CREATE TABLE `tbl_pob_boundary` (
  `pobbound_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pobbound_name` varchar(200) DEFAULT NULL,
  `pobbound_date` date DEFAULT NULL,
  `pobbound_desc` text DEFAULT NULL,
  `pobbound_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pobbound_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_pob_boundary` */

/*Table structure for table `tbl_pob_mud` */

DROP TABLE IF EXISTS `tbl_pob_mud`;

CREATE TABLE `tbl_pob_mud` (
  `pobmud_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pobmud_name` varchar(200) DEFAULT NULL,
  `pobmud_date` date DEFAULT NULL,
  `pobmud_desc` text DEFAULT NULL,
  `pobmud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pobmud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_pob_mud` */

insert  into `tbl_pob_mud`(`pobmud_id`,`pobmud_name`,`pobmud_date`,`pobmud_desc`,`pobmud_file`) values 
(1,'Pob Mud','2020-03-24','desc','1585084341cert.png');

/*Table structure for table `tbl_pob_original` */

DROP TABLE IF EXISTS `tbl_pob_original`;

CREATE TABLE `tbl_pob_original` (
  `pob_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pob_name` varchar(200) DEFAULT NULL,
  `pob_date` date DEFAULT NULL,
  `pob_desc` text DEFAULT NULL,
  `pob_data` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pob_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_pob_original` */

insert  into `tbl_pob_original`(`pob_id`,`pob_name`,`pob_date`,`pob_desc`,`pob_data`) values 
(1,'pob original','2019-05-08','des',''),
(2,'pob original','2019-05-08','des',''),
(3,'pob original','2019-05-08','des',''),
(4,'pob original','2019-05-08','des',''),
(5,'pob original','2019-05-08','des','1584936437cert.png');

/*Table structure for table `tbl_pob_progres` */

DROP TABLE IF EXISTS `tbl_pob_progres`;

CREATE TABLE `tbl_pob_progres` (
  `pobprog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pobprog_name` varchar(200) DEFAULT NULL,
  `pobprog_date` date DEFAULT NULL,
  `pobprog_desc` text DEFAULT NULL,
  `pobprog_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pobprog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_pob_progres` */

insert  into `tbl_pob_progres`(`pobprog_id`,`pobprog_name`,`pobprog_date`,`pobprog_desc`,`pobprog_file`) values 
(1,'Pob Progress','2020-03-25','desc','1585083123benchmark.png');

/*Table structure for table `tbl_polygon` */

DROP TABLE IF EXISTS `tbl_polygon`;

CREATE TABLE `tbl_polygon` (
  `poly_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `poly_no` varchar(200) DEFAULT NULL,
  `poly_name` varchar(200) DEFAULT NULL,
  `poly_date` date DEFAULT NULL,
  `poly_type` varchar(200) DEFAULT NULL,
  `poly_desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`poly_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_polygon` */

insert  into `tbl_polygon`(`poly_id`,`poly_no`,`poly_name`,`poly_date`,`poly_type`,`poly_desc`) values 
(1,'34','test polygon','2020-02-09','type','descr');

/*Table structure for table `tbl_reconciliation` */

DROP TABLE IF EXISTS `tbl_reconciliation`;

CREATE TABLE `tbl_reconciliation` (
  `recon_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `recon_name` varchar(200) DEFAULT NULL,
  `recon_date` date DEFAULT NULL,
  `recon_desc` text DEFAULT NULL,
  `recon_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`recon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_reconciliation` */

insert  into `tbl_reconciliation`(`recon_id`,`recon_name`,`recon_date`,`recon_desc`,`recon_file`) values 
(1,'dasd','2019-09-09','sd','1585113666benchmark.png');

/*Table structure for table `tbl_roofcoal` */

DROP TABLE IF EXISTS `tbl_roofcoal`;

CREATE TABLE `tbl_roofcoal` (
  `rcoal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rcoal_name` varchar(200) DEFAULT NULL,
  `rcoal_seam` varchar(200) DEFAULT NULL,
  `rcoal_remark` text DEFAULT NULL,
  `rcoal_date` date DEFAULT NULL,
  `rcoal_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rcoal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_roofcoal` */

insert  into `tbl_roofcoal`(`rcoal_id`,`rcoal_name`,`rcoal_seam`,`rcoal_remark`,`rcoal_date`,`rcoal_file`) values 
(1,'roofcoal','seam','remark','2019-02-09','1585088443cert.png');

/*Table structure for table `tbl_situation` */

DROP TABLE IF EXISTS `tbl_situation`;

CREATE TABLE `tbl_situation` (
  `situation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `situation_name` varchar(200) DEFAULT NULL,
  `situation_date` date DEFAULT NULL,
  `situation_desc` text DEFAULT NULL,
  `situation_boundary` varchar(200) DEFAULT NULL,
  `situation_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`situation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_situation` */

insert  into `tbl_situation`(`situation_id`,`situation_name`,`situation_date`,`situation_desc`,`situation_boundary`,`situation_file`) values 
(1,'situation','2019-10-10','desc','boundary','1585102062cert.png');

/*Table structure for table `tbl_soildisposal` */

DROP TABLE IF EXISTS `tbl_soildisposal`;

CREATE TABLE `tbl_soildisposal` (
  `obdsoil_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obdsoil_name` varchar(200) DEFAULT NULL,
  `obdsoil_date` date DEFAULT NULL,
  `obdsoil_desc` text DEFAULT NULL,
  `obdsoil_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`obdsoil_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_soildisposal` */

insert  into `tbl_soildisposal`(`obdsoil_id`,`obdsoil_name`,`obdsoil_date`,`obdsoil_desc`,`obdsoil_file`) values 
(1,'soil dips','2019-10-10','desc','1585100951benchmark.png');

/*Table structure for table `tbl_survey` */

DROP TABLE IF EXISTS `tbl_survey`;

CREATE TABLE `tbl_survey` (
  `surveyw_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `surveyw_loc` varchar(200) DEFAULT NULL,
  `surveyw_date` date DEFAULT NULL,
  `surveyw_desc` text DEFAULT NULL,
  `surveyw_elev` float DEFAULT NULL,
  `surveyw_elevdiff` float DEFAULT NULL,
  PRIMARY KEY (`surveyw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_survey` */

insert  into `tbl_survey`(`surveyw_id`,`surveyw_loc`,`surveyw_date`,`surveyw_desc`,`surveyw_elev`,`surveyw_elevdiff`) values 
(1,'barat','2019-10-10','DESC',20,-1);

/*Table structure for table `tbl_surveyother` */

DROP TABLE IF EXISTS `tbl_surveyother`;

CREATE TABLE `tbl_surveyother` (
  `surveyadd_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `surveyadd_loc` varchar(200) DEFAULT NULL,
  `surveyadd_date` date DEFAULT NULL,
  `surveyadd_desc` text DEFAULT NULL,
  `surveyadd_value` float DEFAULT NULL,
  `surveyadd_valuediff` float DEFAULT NULL,
  `surveyadd_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`surveyadd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_surveyother` */

insert  into `tbl_surveyother`(`surveyadd_id`,`surveyadd_loc`,`surveyadd_date`,`surveyadd_desc`,`surveyadd_value`,`surveyadd_valuediff`,`surveyadd_name`) values 
(1,'test',NULL,'test',3,3,'3');

/*Table structure for table `tbl_surveyproject` */

DROP TABLE IF EXISTS `tbl_surveyproject`;

CREATE TABLE `tbl_surveyproject` (
  `proj_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `proj_name` varchar(200) DEFAULT NULL,
  `proj_date` date DEFAULT NULL,
  `proj_desc` text DEFAULT NULL,
  `proj_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`proj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_surveyproject` */

insert  into `tbl_surveyproject`(`proj_id`,`proj_name`,`proj_date`,`proj_desc`,`proj_file`) values 
(1,'dasd','2019-09-09','sd','1585113666benchmark.png'),
(2,'f','2019-10-10','des',NULL);

/*Table structure for table `tbl_surveyreport` */

DROP TABLE IF EXISTS `tbl_surveyreport`;

CREATE TABLE `tbl_surveyreport` (
  `svr_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `svr_name` varchar(200) DEFAULT NULL,
  `svr_date` date DEFAULT NULL,
  `svr_desc` text DEFAULT NULL,
  `svr_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`svr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_surveyreport` */

insert  into `tbl_surveyreport`(`svr_id`,`svr_name`,`svr_date`,`svr_desc`,`svr_file`) values 
(1,'sdas','2019-03-03','desc',NULL);

/*Table structure for table `tbl_surveywater` */

DROP TABLE IF EXISTS `tbl_surveywater`;

CREATE TABLE `tbl_surveywater` (
  `survey_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `survey_name` varchar(200) DEFAULT NULL,
  `survey_date` date DEFAULT NULL,
  `survey_desc` text DEFAULT NULL,
  PRIMARY KEY (`survey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_surveywater` */

insert  into `tbl_surveywater`(`survey_id`,`survey_name`,`survey_date`,`survey_desc`) values 
(1,'sf','2019-10-10','desc');

/*Table structure for table `tbl_totalstation` */

DROP TABLE IF EXISTS `tbl_totalstation`;

CREATE TABLE `tbl_totalstation` (
  `total_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `total_year` year(4) DEFAULT NULL,
  `total_data` varchar(200) DEFAULT NULL,
  `total_folder` varchar(200) DEFAULT NULL,
  `total_date` date DEFAULT NULL,
  PRIMARY KEY (`total_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_totalstation` */

insert  into `tbl_totalstation`(`total_id`,`total_year`,`total_data`,`total_folder`,`total_date`) values 
(1,2002,'i','Totalstation','2020-03-22'),
(4,NULL,'1584840815Surat Edaran Antisipasi Penyebaran Infeksi Corona Virus Disease (COVID-19) di Lingkungan Pendidikan di Daerah Istimewa Yogyakarta.pdf','Totalstation','2019-04-08'),
(6,NULL,'1584863330SE Pembatasan Maksimal Kampus UGM 2.pdf','GPS','2019-04-08'),
(7,NULL,'1584863591192-337-2-PB.pdf','Laser Scanner','2019-04-08'),
(8,NULL,'1584863801Surat Edaran Antisipasi Penyebaran Infeksi Corona Virus Disease (COVID-19) di Lingkungan Pendidikan di Daerah Istimewa Yogyakarta.pdf','UAV','2019-04-08'),
(9,NULL,'1584863953Surat Edaran Antisipasi Penyebaran Infeksi Corona Virus Disease (COVID-19) di Lingkungan Pendidikan di Daerah Istimewa Yogyakarta.pdf','Client','2019-04-08');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values 
(1,'admin','Bj2xEpff-WmRLtY4TyHPHxRp6eAxsNZ0','$2y$13$lyzLwLoeBeCxjFtGgQVPquL0qaL6F1ygdBgqTnKE22Q2x.dwAaQ9S',NULL,'piant.grunger@gmail.com',10,1485769884,1488270381);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
