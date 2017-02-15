DROP DATABASE if exists `skyMeal`;
CREATE DATABASE  IF NOT EXISTS `skyMeal` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `skyMeal`;

-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: newecommerce
-- ------------------------------------------------------
-- Server version 5.5.47
               
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- To see the query execution errors
SHOW ENGINE INNODB STATUS;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `customer_id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` text NOT NULL,
  `password` text DEFAULT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `system_password` VARCHAR(45) DEFAULT 0 NULL,
  `fb_customer` INT(11) DEFAULT NULL,
  `phone_number` text DEFAULT NULL,
  `created_at` DATETIME NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` VARCHAR(45) DEFAULT NULL,
  `updated_at` DATETIME NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` VARCHAR(45) DEFAULT NULL,
  `role` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES 
(30,'svidyarthi@drishticon.com','123','Suraksha','Vidyarthi',NULL,0,'','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL,'CUSTOMER'),
(31,'babu@drishticon.com','123','babu','test',NULL,0,NULL,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL,'ADMIN'),
(32,'manali@drishticon.com','','Manali','Nirhali',NULL,0,NULL,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL,'GUEST'),
(33,'paridhi@drishticon.com','test12#','Paridhi','Agarwal',NULL,0,'','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL,'CUSTOMER');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEAL`
--
DROP TABLE IF EXISTS `DEAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEAL` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `amount_type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date_time` bigint(20) DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `img_file` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `order_condition` decimal(19,2) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `singleuse` bit(1) DEFAULT NULL,
  `start_date_time` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `visible` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_qtj5uow6uqt0v2574h2ow4bes` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEAL`
--

LOCK TABLES `DEAL` WRITE;
/*!40000 ALTER TABLE `DEAL` DISABLE KEYS */;
INSERT INTO `DEAL` (`id`,`name`,`short_name`,`status`,`description`,`start_date_time`,`end_date_time`,`img_file`,`entity_type`,`amount_type`,`amount`,`order_condition`,`visible`) VALUES 
(1,'Cake Deals','CakeDeal 10%','A','10% off on all cake orders',1480551600,1520530200,'cake_deals.jpg','Category','Percentage',10, null, true),
(2,'Flowers Deals','FlowerDeal 10%','A','10% off on all flower orders',1480551600,1520530200,'flowers_deals.jpg','Category','Percentage',10, null, true),
(3,'Order Deals','5% Order above $100','A','5% off on all Orders above $100',1480551600,1520530200,'order_deals.jpg','Order','Percentage',10, 100.00, true),
(4,'Cake Deal','CakeDeal Flat 5','A','5% off on selected cake orders',1480551600,1520530200,'cake_deals.jpg','Product','Flat',5, null, true),
(5,'Toys Deals','ToyDeal 10%','A','10% off on all toys orders',1480551600,1520530200,'toy_deals.jpg','Category','Percentage',10, null, true),
(6,'Chocolates Deals','ChocolateDeal 10%','A','10% off on all choclates orders',1480551600,1520530200,'chocolate_deals.jpg','Category','Percentage',10, null, true),
(7,'Santa Fe Deal','Flat $10 off','A','Deals on all products of Santa Fe Catalog',1480551600,1520530200,'santaFe_deals.jpg','Catalog','Flat',10, null, true);
/*!40000 ALTER TABLE `DEAL` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `revinfo`
--
DROP TABLE IF EXISTS `REVINFO`;
CREATE TABLE `REVINFO` (
  `REV` int(11) NOT NULL AUTO_INCREMENT,
  `REVTSTMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`REV`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;



--
-- Table structure for table `PRODUCT_DEAL`
--
DROP TABLE IF EXISTS `PRODUCT_DEAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_DEAL` (
  `product_id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`deal_id`),
  KEY `deal_id` (`deal_id`),
  CONSTRAINT `PRODUCT_DEAL_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `PRODUCT` (`prod_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `PRODUCT_DEAL_ibfk_2` FOREIGN KEY (`deal_id`) REFERENCES `DEAL` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_DEAL`
--

LOCK TABLES `PRODUCT_DEAL` WRITE;
/*!40000 ALTER TABLE `PRODUCT_DEAL` DISABLE KEYS */;
INSERT INTO `PRODUCT_DEAL` (`product_id`,`deal_id`) VALUES (30,4);
INSERT INTO `PRODUCT_DEAL` (`product_id`,`deal_id`) VALUES (31,4);
INSERT INTO `PRODUCT_DEAL` (`product_id`,`deal_id`) VALUES (32,4);
INSERT INTO `PRODUCT_DEAL` (`product_id`,`deal_id`) VALUES (37,4);
INSERT INTO `PRODUCT_DEAL` (`product_id`,`deal_id`) VALUES (38,4);
/*!40000 ALTER TABLE `PRODUCT_DEAL` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `CATEGORY_DEAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CATEGORY_DEAL` (
  `category_id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`deal_id`),
  KEY `deal_id` (`deal_id`),
  CONSTRAINT `CATEGORY_DEAL_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `CATEGORY` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `CATEGORY_DEAL_ibfk_2` FOREIGN KEY (`deal_id`) REFERENCES `DEAL` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `CATEGORY_DEAL` WRITE;
/*!40000 ALTER TABLE `CATEGORY_DEAL` DISABLE KEYS */;
INSERT INTO `CATEGORY_DEAL` (`category_id`,`deal_id`) VALUES (1,1);
INSERT INTO `CATEGORY_DEAL` (`category_id`,`deal_id`) VALUES (2,2);
INSERT INTO `CATEGORY_DEAL` (`category_id`,`deal_id`) VALUES (5,5);
INSERT INTO `CATEGORY_DEAL` (`category_id`,`deal_id`) VALUES (4,6);
/*!40000 ALTER TABLE `CATEGORY_DEAL` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `CATALOG_DEAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CATALOG_DEAL` (
  `catalog_id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  PRIMARY KEY (`catalog_id`,`deal_id`),
  KEY `deal_id` (`deal_id`),
  CONSTRAINT `CATALOG_DEAL_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `CATALOG` (`catalog_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `CATALOG_DEAL_ibfk_2` FOREIGN KEY (`deal_id`) REFERENCES `DEAL` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `CATALOG_DEAL` WRITE;
/*!40000 ALTER TABLE `CATALOG_DEAL` DISABLE KEYS */;
INSERT INTO `CATALOG_DEAL` (`catalog_id`,`deal_id`) VALUES (3,7);
/*!40000 ALTER TABLE `CATALOG_DEAL` ENABLE KEYS */;
UNLOCK TABLES;




--
-- Table structure for table `ADDRESS`
--
DROP TABLE IF EXISTS `ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADDRESS` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address_line_1` varchar(300) NOT NULL,
  `address_line_2` varchar(300) DEFAULT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zip_code` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `address_type` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADDRESS`
--

LOCK TABLES `ADDRESS` WRITE;
/*!40000 ALTER TABLE `ADDRESS` DISABLE KEYS */;
INSERT INTO `ADDRESS` VALUES (71, 'S', 'Vidyarthi', '310 Carmelita Pl',NULL,'Fremont','CA','94539','USA','408-391-3063','Shipping','2016-01-01 00:00:00',NULL,'2016-05-02 13:54:53',NULL),(72,'S', 'Vidyarthi','310 Carmelita Pl',NULL,'Fremont','CA','94539','USA','408-391-3063','Billing','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APP_CONFIG`
--
DROP TABLE IF EXISTS `APP_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APP_CONFIG` (
  `id` int(11) NOT NULL,
  `app_config_json` longtext,
  `created_at` datetime DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APP_CONFIG`
--

LOCK TABLES `APP_CONFIG` WRITE;
/*!40000 ALTER TABLE `APP_CONFIG` DISABLE KEYS */;
INSERT INTO `APP_CONFIG` (`id`, `app_config_json`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1,'{\"paymentConfig\":{\"payPalClientID\":\"AVPTexBebiOtzWklqy9WBcpwxoXkKQYL-OW_XUfHwW_A7AL_0DRfoCdB6lG2\",\"payPalClientSecret\":\"EDXoORDsJFvGiXLL2D3ubSdWWi5yDzYmvpjez-hXUhfVVmc5U8Zsj8DBKOEY\",\"service.EndPoint\":\"https://api.sandbox.paypal.com\",\"payPalEpressCheckoutAPIUserName\":\"svidyarthi-facilitator_api1.kukuscorner.com\",\"payPalEpressCheckoutAPIPassword\":\"VWD44T8U6D9JEMGH\",\"payPalEpressCheckoutAPISignature\":\"ARYaIy-xVfkTcfmdYKZZ1.0GYuneA.kWsOaJlceDnhRB8iN7qSEQTNPC\",\"payPalEpressCheckoutAPIEndpoint\":\"https://api-3t.sandbox.paypal.com/nvp\",\"payPalEpressCheckoutAPIVersion\":\"93\",\"payPalEpressCheckoutReturnURL\":\"http://localhost:8080/kukuscorner-ecom-fe/#/place-order\",\"payPalEpressCheckoutCancelURL\":\"http://localhost:8080/kukuscorner-ecom-fe/#/place-order\"},\"productConfig\":{\"bestSelleingDaysCount\":90,\"newArrivalDaysCount\":90},\"orderConfig\":{\"orderCancellationDays\":1,\"currency\":null},\"dealConfig\":{\"dealPerrcentage\":75.0},\"appSecurityConfig\":{\"salt\":\"6ed7c5b28ec47cf9\",\"saltPassword\":\"osfTempPassword\"}}','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `APP_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ATTRIBUTE`
--
DROP TABLE IF EXISTS `ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATTRIBUTE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `measure` varchar(45) DEFAULT NULL,
  `data_type` varchar(45) DEFAULT NULL,
  `attr_value_type` int DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ATTRIBUTE`
--

LOCK TABLES `ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `ATTRIBUTE` VALUES (1,'Weight','lb','Integer',0,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),
(2,'Flavor',NULL,'String',0,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),
(3,'Type',NULL,'String', 0,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),
(4,'Occasion',NULL,'String', 1, '2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),
(5,'Sender Name',NULL,'String', 2, '2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),
(6,'Recipient Name',NULL,'String', 2, '2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),
(7,'Gift Message',NULL,'String', 2, '2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),
(8,'Recipient EmailId',NULL,'String', 2, '2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `CATEGORY_ATTRIBUTE`
--
DROP TABLE IF EXISTS `CATEGORY_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CATEGORY_ATTRIBUTE` (
  `category_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`,`ATTR_ID`),
  KEY `ATTR_ID_FK1_idx` (`attr_id`),
  KEY `CATEGORY_ID_FK_idx` (`category_id`),
  CONSTRAINT `ATTR_ID_FK1` FOREIGN KEY (`attr_id`) REFERENCES `ATTRIBUTE` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `CATEGORY_ID_FK` FOREIGN KEY (`category_id`) REFERENCES `CATEGORY` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATEGORY_ATTRIBUTE`
--

LOCK TABLES `CATEGORY_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `CATEGORY_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (1,1);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (3,1);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (4,1);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (5,1);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (1,2);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (2,3);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (4,3);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (5,3);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (2,4);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (3,4);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (6,5);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (6,6);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (6,7);
INSERT INTO `CATEGORY_ATTRIBUTE` (`category_id`,`attr_id`) VALUES (6,8);
/*!40000 ALTER TABLE `CATEGORY_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_ATTRIBUTE`
--
DROP TABLE IF EXISTS `PRODUCT_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_ATTRIBUTE` (
  `product_attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `attr_value` varchar(255) DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_attribute_id`),
  KEY `FK_db8h9expklwb92526ue59uo7i` (`attr_id`),
  KEY `FK_nvyc868nbfcangvayhf6r0onb` (`prod_id`),
  CONSTRAINT `FK_db8h9expklwb92526ue59uo7i` FOREIGN KEY (`attr_id`) REFERENCES `ATTRIBUTE` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_nvyc868nbfcangvayhf6r0onb` FOREIGN KEY (`prod_id`) REFERENCES `PRODUCT` (`prod_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_ATTRIBUTE`
--

LOCK TABLES `PRODUCT_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `PRODUCT_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `PRODUCT_ATTRIBUTE` (`prod_id`,`attr_id`,`attr_value`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES 
(30,1,'1','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL),
 (30,2,'Vanilla','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL),
 (31,1,'2','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL),
 (31,2,'Chocolate','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL),
 (32,1,'1.5','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL),
 (32,2,'Strawberry','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL), 
 (33,1,'1','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL),
 (33,2,'Marble','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL),
  (34,1,'1.5','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL),
 (34,2,'Dark Chocolate','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL),
  (35,1,'2','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL),
 (35,2,'Vanilla','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL),
  (36,1,'2.5','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL),
 (36,2,'White Chocolate','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL),
 (37,1,'2','2016-05-10 12:20:55',NULL,'2016-05-10 12:20:55',NULL),
 (37,2,'Chocolate','2016-05-10 12:20:55',NULL,'2016-05-10 12:20:55',NULL),
  (38,1,'1.5','2016-05-10 12:20:55',NULL,'2016-05-10 12:20:55',NULL),
 (38,2,'Red Velvet','2016-05-10 12:20:55',NULL,'2016-05-10 12:20:55',NULL),
(39,1,'2','2016-05-10 12:22:52',NULL,'2016-05-10 12:22:52',NULL),
(39,2,'Orange','2016-05-10 12:22:52',NULL,'2016-05-10 12:22:52',NULL),
(40,1,'2.5','2016-05-10 12:22:52',NULL,'2016-05-10 12:22:52',NULL),
(40,2,'Banana','2016-05-10 12:22:52',NULL,'2016-05-10 12:22:52',NULL),
(41,1,'2','2016-05-10 12:57:01',NULL,'2016-05-10 12:57:01',NULL),
(41,2,'Butter Pecan','2016-05-10 12:57:01',NULL,'2016-05-10 12:57:01',NULL),
(42,1,'1','2016-05-10 12:57:01',NULL,'2016-05-10 12:57:01',NULL),
(42,2,'Butter Walnut','2016-05-10 12:57:01',NULL,'2016-05-10 12:57:01',NULL),
(43,1,'1','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL),
 (43,2,'Vanilla','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL),
 (44,1,'1','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL),
 (44,2,'Vanilla','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL),
(35,1,'2','2016-05-10 12:59:16',NULL,'2016-05-10 12:59:16',NULL),
(35,2,'Banana','2016-05-10 12:59:16',NULL,'2016-05-10 12:59:16',NULL),
(35,1,'5','2016-05-10 12:59:16',NULL,'2016-05-10 12:59:16',NULL),
(35,2,'Mango','2016-05-10 12:59:16',NULL,'2016-05-10 12:59:16',NULL),
(45,1,'2','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL),
(45,2,'Strawberry','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL),
(46,1,'2.2','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL),
(46,2,'Vanilla','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL),
(47,1,'2.5','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL),
(47,2,'Chocolate','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL),
(48,1,'1','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL),
(48,2,'Mango','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL),
(49,1,'4','2016-05-10 13:02:47',NULL,'2016-05-10 13:02:47',NULL),
(49,2,'Blueberry','2016-05-10 13:02:47',NULL,'2016-05-10 13:02:47',NULL),
(50,1,'2','2016-05-10 13:06:14',NULL,'2016-05-10 13:06:14',NULL),
(50,2,'Banana Marble','2016-05-10 13:06:14',NULL,'2016-05-10 13:06:14',NULL),
(51,1,'3','2016-05-10 13:08:01',NULL,'2016-05-10 13:08:01',NULL),
(51,2,'Pistachio','2016-05-10 13:08:01',NULL,'2016-05-10 13:08:01',NULL),
(52,1,'3','2016-05-10 13:10:04',NULL,'2016-05-10 13:10:04',NULL),
(52,2,'Butter Pecan','2016-05-10 13:10:04',NULL,'2016-05-10 13:10:04',NULL),
(53,3,'Sunflower','2016-05-10 13:43:32',NULL,'2016-05-10 13:43:32',NULL),
(53,4,'Get Well','2016-05-10 13:43:32',NULL,'2016-05-10 13:43:32',NULL),
(54,3,'Rose','2016-05-10 13:43:32',NULL,'2016-05-10 13:43:32',NULL),
(54,4,'Anniversary','2016-05-10 13:43:32',NULL,'2016-05-10 13:43:32',NULL),
(55,3,'Rose','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL),
(55,4,'Anniversary','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL),
(56,3,'Lily','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL),
(56,4,'Wedding','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL),
(57,3,'Daisy','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL),
(57,4,'Get well','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL),
(58,3,'Angelonia','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL),
(58,4,'Congratulations','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL),
(59,3,'Tulip','2016-05-10 13:48:36',NULL,'2016-05-10 13:48:36',NULL),
(59,4,'Congratulations','2016-05-10 13:48:36',NULL,'2016-05-10 13:48:36',NULL),
(60,3,'Aster','2016-05-10 13:48:36',NULL,'2016-05-10 13:48:36',NULL),
(60,4,'Get well','2016-05-10 13:48:36',NULL,'2016-05-10 13:48:36',NULL),
(61,3,'Aubrieta','2016-05-10 13:48:36',NULL,'2016-05-10 13:48:36',NULL),
(61,4,'Wedding','2016-05-10 13:48:36',NULL,'2016-05-10 13:48:36',NULL),
(62,3,'Lily','2016-05-10 13:51:46',NULL,'2016-05-10 13:51:46',NULL),
(62,4,'Congratulations','2016-05-10 13:51:46',NULL,'2016-05-10 13:51:46',NULL),
(63,3,'Aubrieta','2016-05-10 13:51:46',NULL,'2016-05-10 13:51:46',NULL),
(63,4,'Wedding','2016-05-10 13:51:46',NULL,'2016-05-10 13:51:46',NULL),
(64,3,'Sunflower','2016-05-10 13:53:35',NULL,'2016-05-10 13:53:35',NULL),
(64,4,'Get Well','2016-05-10 13:53:35',NULL,'2016-05-10 13:53:35',NULL),
(65,3,'Rose','2016-05-10 13:55:29',NULL,'2016-05-10 13:55:29',NULL),
(65,4,'Anniversary','2016-05-10 13:55:29',NULL,'2016-05-10 13:55:29',NULL),
(66,3,'Rose','2016-05-10 13:58:01',NULL,'2016-05-10 13:58:01',NULL),
(66,4,'Get Well','2016-05-10 13:58:01',NULL,'2016-05-10 13:58:01',NULL),
(67,3,'Lily','2016-05-10 14:01:26',NULL,'2016-05-10 14:01:26',NULL),
(67,4,'Congratulations','2016-05-10 14:01:26',NULL,'2016-05-10 14:01:26',NULL),
(78,1,'1','2016-05-10 14:17:08',NULL,'2016-05-10 14:17:08',NULL),
(78,3,'Truffles','2016-05-10 14:17:08',NULL,'2016-05-10 14:17:08',NULL),
(79,1,'2','2016-05-10 14:18:46',NULL,'2016-05-10 14:18:46',NULL),
(79,3,'Truffles','2016-05-10 14:18:46',NULL,'2016-05-10 14:18:46',NULL),
(80,1,'1','2016-05-10 14:21:19',NULL,'2016-05-10 14:21:19',NULL),
(80,3,'Bar','2016-05-10 14:21:19',NULL,'2016-05-10 14:21:19',NULL),
(81,1,'2','2016-05-10 14:24:36',NULL,'2016-05-10 14:24:36',NULL),
(81,3,'Jelly beans','2016-05-10 14:24:36',NULL,'2016-05-10 14:24:36',NULL),
(82,1,'1','2016-05-10 14:26:01',NULL,'2016-05-10 14:26:01',NULL),
(82,3,'Licorice','2016-05-10 14:26:01',NULL,'2016-05-10 14:26:01',NULL),
(83,1,'3','2016-05-10 14:29:27',NULL,'2016-05-10 14:29:27',NULL),
(83,3,'Bar','2016-05-10 14:29:27',NULL,'2016-05-10 14:29:27',NULL),
(84,1,'2','2016-05-10 14:30:42',NULL,'2016-05-10 14:30:42',NULL),
(84,3,'Bar','2016-05-10 14:30:42',NULL,'2016-05-10 14:30:42',NULL),
(85,1,'2','2016-05-10 14:33:32',NULL,'2016-05-10 14:33:32',NULL),
(85,3,'Truffles','2016-05-10 14:33:32',NULL,'2016-05-10 14:33:32',NULL),
(86,1,'1','2016-05-10 14:55:37',NULL,'2016-05-10 14:55:37',NULL),
(86,3,'Doll','2016-05-10 14:55:37',NULL,'2016-05-10 14:55:37',NULL),
(87,1,'2','2016-05-10 14:57:33',NULL,'2016-05-10 14:57:33',NULL),
(87,3,'Vehicle','2016-05-10 14:57:33',NULL,'2016-05-10 14:57:33',NULL),
(88,1,'2','2016-05-10 15:03:30',NULL,'2016-05-10 15:03:30',NULL),
(88,3,'Construction','2016-05-10 15:03:30',NULL,'2016-05-10 15:03:30',NULL),
(89,1,'1','2016-05-10 15:04:36',NULL,'2016-05-10 15:04:36',NULL),
(89,3,'Puzzle','2016-05-10 15:04:36',NULL,'2016-05-10 15:04:36',NULL),
(90,1,'1','2016-05-10 15:09:01',NULL,'2016-05-10 15:09:01',NULL),
(90,3,'Doll','2016-05-10 15:09:01',NULL,'2016-05-10 15:09:01',NULL),
(91,1,'3','2016-05-10 15:10:45',NULL,'2016-05-10 15:10:45',NULL),
(91,3,'Vehicle','2016-05-10 15:10:45',NULL,'2016-05-10 15:10:45',NULL),
(92,1,'2','2016-05-10 15:13:53',NULL,'2016-05-10 15:13:53',NULL),
(92,3,'Vehicle','2016-05-10 15:13:53',NULL,'2016-05-10 15:13:53',NULL),
(68,1,'3','2016-05-10 15:48:32',NULL,'2016-05-10 15:48:32',NULL),
(68,4,'Birthday','2016-05-10 15:48:32',NULL,'2016-05-10 15:48:32',NULL),
(69,1,'2','2016-05-10 15:48:32',NULL,'2016-05-10 15:48:32',NULL),
(69,4,'Get Well','2016-05-10 15:48:32',NULL,'2016-05-10 15:48:32',NULL),
(70,1,'2.5','2016-05-10 15:48:32',NULL,'2016-05-10 15:48:32',NULL),
(70,4,'Wedding','2016-05-10 15:48:32',NULL,'2016-05-10 15:48:32',NULL),
(71,1,'3','2016-05-10 15:50:02',NULL,'2016-05-10 15:50:02',NULL),
(71,4,'Congratulations','2016-05-10 15:50:02',NULL,'2016-05-10 15:50:02',NULL),
(72,1,'2','2016-05-10 15:50:02',NULL,'2016-05-10 15:50:02',NULL),
(72,4,'Birthday','2016-05-10 15:50:02',NULL,'2016-05-10 15:50:02',NULL),
(73,1,'3','2016-05-10 15:50:53',NULL,'2016-05-10 15:50:53',NULL),
(73,4,'Get Well','2016-05-10 15:50:53',NULL,'2016-05-10 15:50:53',NULL),
(74,1,'3.5','2016-05-10 15:50:53',NULL,'2016-05-10 15:50:53',NULL),
(74,4,'Wedding','2016-05-10 15:50:53',NULL,'2016-05-10 15:50:53',NULL),
(75,1,'2','2016-05-10 15:50:53',NULL,'2016-05-10 15:50:53',NULL),
(75,4,'Birthday','2016-05-10 15:50:53',NULL,'2016-05-10 15:50:53',NULL),
(76,1,'2.5','2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL),
(76,4,'Birthday','2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL),
(77,1,'3.5','2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL),
(77,4,'Get Well','2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL),
(93,5,NULL,'2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL),
(93,6,NULL,'2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL),
(93,7,NULL,'2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL),
(93,8,NULL,'2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL);
/*!40000 ALTER TABLE `PRODUCT_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CART`
--
DROP TABLE IF EXISTS `CART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CART` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `billing_id` int(11) DEFAULT NULL,
  `deal_ids` varchar(100) DEFAULT NULL,
  `cart_date` datetime DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `handling_cost` decimal(10,2) DEFAULT NULL,
  `total_cost` decimal(19,2) DEFAULT NULL,
  `tax_total` decimal(19,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `gift_card_num` varchar(255) DEFAULT NULL,
  `gift_card_amt` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `UK_ea2fte30hhdwms8sws4ow9pg1` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CART`
--

LOCK TABLES `CART` WRITE;
/*!40000 ALTER TABLE `CART` DISABLE KEYS */;
/*!40000 ALTER TABLE `CART` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CART_ITEM`
--
DROP TABLE IF EXISTS `CART_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CART_ITEM` (
  `cart_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `discount` decimal(19,2) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `deal_ids` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  `handling_cost` decimal(19,2) DEFAULT NULL,
  `tax_cost` decimal(19,2) DEFAULT NULL,
  `total_cost` decimal(19,2) DEFAULT NULL,
  `before_tax_total` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`cart_item_id`),
  KEY `FK_rydjd7qnujlah37fm4vbdyqgv` (`order_id`),
  CONSTRAINT `FK_rydjd7qnujlah37fm4vbdyqgv` FOREIGN KEY (`order_id`) REFERENCES `CART` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CART_ITEM`
--

LOCK TABLES `CART_ITEM` WRITE;
/*!40000 ALTER TABLE `CART_ITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `CART_ITEM` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `CART_ITEM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `CART_ITEM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CART_ITEM_ATTRIBUTE` (
  `cart_item_attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `attr_value` varchar(255) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `cart_item_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_item_attribute_id`),
  KEY `FK_cxa48iu4vcs16iad0o7m9lio8` (`cart_item_id`),
  CONSTRAINT `FK_cxa48iu4vcs16iad0o7m9lio8` FOREIGN KEY (`cart_item_id`) REFERENCES `CART_ITEM` (`cart_item_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `CATEGORY`
--
DROP TABLE IF EXISTS `CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CATEGORY` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATEGORY`
--

LOCK TABLES `CATEGORY` WRITE;
/*!40000 ALTER TABLE `CATEGORY` DISABLE KEYS */;
INSERT INTO `CATEGORY` VALUES (1,'Cakes','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL,NULL,NULL),(2,'Flowers','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL,NULL,NULL),(3,'Special Gifts','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL,NULL,NULL),(4,'Chocolates','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL,NULL,NULL),
(5,'Toys','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL,NULL,NULL),(6,'E-GiftCards','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER_ADDRESS`
--
DROP TABLE IF EXISTS `CUSTOMER_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER_ADDRESS` (
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id_fk_idx` (`customer_id`),
  KEY `address_id_fk_idx` (`address_id`),
  CONSTRAINT `address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `ADDRESS` (`address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `CUSTOMER` (`customer_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER_ADDRESS`
--

LOCK TABLES `CUSTOMER_ADDRESS` WRITE;
/*!40000 ALTER TABLE `CUSTOMER_ADDRESS` DISABLE KEYS */;
INSERT INTO `CUSTOMER_ADDRESS` VALUES (30,71,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),(30,72,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `CUSTOMER_ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HANDLING`
--
DROP TABLE IF EXISTS `HANDLING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HANDLING` (
  `product_id` int(11) NOT NULL,
  `handling_rate` decimal(10,2) NULL DEFAULT NULL,
  `zip_code` varchar(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`zip_code`),
  KEY `product_id_fk1_idx` (`product_id`),
  CONSTRAINT `product_id_fk1` FOREIGN KEY (`product_id`) REFERENCES `PRODUCT` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HANDLING`
--

LOCK TABLES `HANDLING` WRITE;
/*!40000 ALTER TABLE `HANDLING` DISABLE KEYS */;
INSERT into HANDLING (`product_id`, `handling_rate`, `zip_code`, `created_at`, `created_by`, `updated_at`, `updated_by`) values ('30', '0.60', '94539', now(), 'Testing', now(), 'Testing');
INSERT into HANDLING (`product_id`, `handling_rate`, `zip_code`, `created_at`, `created_by`, `updated_at`, `updated_by`) values ('31', '0.50', '95050', now(), 'Testing', now(), 'Testing');
/*!40000 ALTER TABLE `HANDLING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ORDER_ITEM_DETAILS`
--
DROP TABLE IF EXISTS `ORDER_ITEM_DETAILS`;
/*!50001 DROP VIEW IF EXISTS `ORDER_ITEM_DETAILS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ORDER_ITEM_DETAILS` AS SELECT 
 1 AS `orderId`,
 1 AS `customerId`,
 1 AS `date`,
 1 AS `orderstatus`,
 1 AS `totalcost`,
 1 AS `billingId`,
 1 AS `shippingId`,
 1 AS `paymentType`,
 1 AS `transactionId`,
 1 AS `quantity`,
 1 AS `discount`,
 1 AS `unitprice`,
 1 AS `itemStatus`,
 1 AS `productName`,
 1 AS `imgPath`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ORDER_ITEM`
--
DROP TABLE IF EXISTS `ORDER_ITEM`;
DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDER_ITEM` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `discount` decimal(19,2) DEFAULT NULL,
  `handling_cost` decimal(19,2) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `deal_ids` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax_cost` decimal(19,2) DEFAULT NULL,
  `total_cost` decimal(19,2) DEFAULT NULL,
  `tracking_id` varchar(255) DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `FK_nruf6vk52g6s0v4309udjtsy0` (`order_id`),
  CONSTRAINT `FK_nruf6vk52g6s0v4309udjtsy0` FOREIGN KEY (`order_id`) REFERENCES `ORDERS` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDER_ITEM`
--

LOCK TABLES `ORDER_ITEM` WRITE;
/*!40000 ALTER TABLE `ORDER_ITEM` DISABLE KEYS */;
INSERT INTO `ORDER_ITEM` (`order_id`,`product_id`,`quantity`,`discount`,`unit_price`,`total_cost`,`order_status`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES (43,30,2,NULL,385.00,770.00,'ORDER_DELIVERED','2016-05-31 13:42:35',NULL,'2016-05-31 13:42:35',NULL);
INSERT INTO `ORDER_ITEM` (`order_id`,`product_id`,`quantity`,`discount`,`unit_price`,`total_cost`,`order_status`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES (43,67,1,NULL,40.00,40.00,'ORDER_DELIVERED','2016-05-31 13:42:35',NULL,'2016-05-31 13:42:35',NULL);
INSERT INTO `ORDER_ITEM` (`order_id`,`product_id`,`quantity`,`discount`,`unit_price`,`total_cost`,`order_status`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES (44,59,1,NULL,30.00,30.00,'ORDER_PLACED','2015-05-31 13:44:34',NULL,'2015-05-31 13:44:34',NULL);
INSERT INTO `ORDER_ITEM` (`order_id`,`product_id`,`quantity`,`discount`,`unit_price`,`total_cost`,`order_status`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES (44,67,1,NULL,40.00,40.00,'ORDER_PLACED','2015-05-31 13:44:33',NULL,'2015-05-31 13:44:33',NULL);
INSERT INTO `ORDER_ITEM` (`order_id`,`product_id`,`quantity`,`discount`,`unit_price`,`total_cost`,`order_status`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES (45,34,1,NULL,232.50,232.50,'ORDER_PLACED','2016-02-25 13:44:34',NULL,'2016-02-25 13:44:34',NULL);
INSERT INTO `ORDER_ITEM` (`order_id`,`product_id`,`quantity`,`discount`,`unit_price`,`total_cost`,`order_status`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES (45,43,2,NULL,54.99,109.98,'ORDER_PLACED','2016-02-25 13:44:33',NULL,'2016-02-25 13:44:33',NULL);
INSERT INTO `ORDER_ITEM` (`order_id`,`product_id`,`quantity`,`discount`,`unit_price`,`total_cost`,`order_status`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES (48,34,1,NULL,232.50,232.50,'ORDER_PLACED','2016-10-03 13:44:34',NULL,'2016-10-03 13:44:34',NULL);
INSERT INTO `ORDER_ITEM` (`order_id`,`product_id`,`quantity`,`discount`,`unit_price`,`total_cost`,`order_status`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES (48,67,2,NULL,40.00,80.00,'ORDER_PLACED','2016-6-23 13:44:33',NULL,'2016-06-23 13:44:33',NULL);
INSERT INTO `ORDER_ITEM` (`order_id`,`product_id`,`quantity`,`discount`,`unit_price`,`total_cost`,`order_status`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES (48,59,1,NULL,30.00,30.00,'ORDER_PLACED','2016-10-03 13:44:34',NULL,'2016-10-03 13:44:34',NULL);
INSERT INTO `ORDER_ITEM` (`order_id`,`product_id`,`quantity`,`discount`,`unit_price`,`total_cost`,`order_status`,`created_at`,`created_by`,`updated_at`,`updated_by`) VALUES (48,38,1,NULL,60.30,60.30,'ORDER_PLACED','2016-10-03 13:44:33',NULL,'2016-10-03 13:44:33',NULL);
INSERT INTO `ORDER_ITEM` VALUES (12,'2016-11-02 11:31:25','svidyarthi@drishticon.com','2016-11-02 11:31:31','svidyarthi@drishticon.com',8.50,1.25,49,'ORDER_PLACED',32,'1',1,0.58,78.33,NULL,76.50);
INSERT INTO `ORDER_ITEM` VALUES (13,'2016-11-02 11:47:25','svidyarthi@drishticon.com','2016-11-02 11:47:31','svidyarthi@drishticon.com',5.00,1.25,50,'ORDER_PLACED',41,'2',1,0.34,46.59,NULL,45.00);
INSERT INTO `ORDER_ITEM` VALUES (14,'2016-11-02 11:47:25','svidyarthi@drishticon.com','2016-11-02 11:47:31','svidyarthi@drishticon.com',1.50,1.25,50,'ORDER_PLACED',57,'3',1,0.11,14.85,NULL,13.49);
/*!40000 ALTER TABLE `ORDER_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDERS`
--
DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDERS` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `order_status` varchar(45) DEFAULT NULL,
  `payment_status` varchar(45) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `billing_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `deal_ids` varchar(100) DEFAULT NULL,
  `payment_type` varchar(45) DEFAULT NULL,
  `transaction_id` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  `tracking_id` varchar(45) DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `order_status_message` varchar(255) DEFAULT NULL,
  `gift_card_amt` decimal(19,2) DEFAULT NULL,
  `gift_card_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `ord_customer_id_fk_idx` (`customer_id`),
  CONSTRAINT `ord_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `CUSTOMER` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ord_shipping_id_fk` FOREIGN KEY (`shipping_id`) REFERENCES `ADDRESS` (`address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERS`
--

LOCK TABLES `ORDERS` WRITE;
/*!40000 ALTER TABLE `ORDERS` DISABLE KEYS */;
INSERT INTO `ORDERS` (`order_id`,`customer_id`,`order_date`,`order_status`,`total_cost`,`billing_id`,`shipping_id`,`payment_type`,`transaction_id`,`created_at`,`created_by`,`updated_at`,`updated_by`,`tracking_id`, `order_status_message`, `gift_card_amt`, `gift_card_number` ) VALUES (43,30,'2016-05-31 13:42:35','ORDER_DELIVERED',810.00,72,71,'visa','9YU36287SG487662F','2016-05-31 13:42:35','svidyarthi@drishticon.com','2016-05-31 13:42:35',NULL,'9',null ,0.0 ,'');
INSERT INTO `ORDERS` (`order_id`,`customer_id`,`order_date`,`order_status`,`total_cost`,`billing_id`,`shipping_id`,`payment_type`,`transaction_id`,`created_at`,`created_by`,`updated_at`,`updated_by`,`tracking_id`, `order_status_message`, `gift_card_amt`, `gift_card_number`) VALUES (44,30,'2015-05-31 13:44:33','ORDER_PLACED',70.00,72,71,'visacheckout','7317959877494409101','2015-05-31 13:44:33','svidyarthi@drishticon.com','2015-05-31 13:44:33',NULL,'10', null ,0.0 ,'');
INSERT INTO `ORDERS` (`order_id`,`customer_id`,`order_date`,`order_status`,`total_cost`,`billing_id`,`shipping_id`,`payment_type`,`transaction_id`,`created_at`,`created_by`,`updated_at`,`updated_by`,`tracking_id`, `order_status_message`, `gift_card_amt`, `gift_card_number`) VALUES (45,30,'2017-01-10 10:12:31','ORDER_PLACED',342.48,72,71,'visacheckout','7317959877494409999', NOW(),'svidyarthi@drishticon.com',NOW(),NULL,'13',
 null ,0.0 ,'' );
INSERT INTO `ORDERS` (`order_id`,`customer_id`,`order_date`,`order_status`,`total_cost`,`billing_id`,`shipping_id`,`payment_type`,`transaction_id`,`created_at`,`created_by`,`updated_at`,`updated_by`,`tracking_id`, `order_status_message`, `gift_card_amt`, `gift_card_number`) VALUES (48,30,'2016-10-03 13:44:34','ORDER_PLACED',402.80,72,71,'visa','9YU36287SG489992F','2016-10-03 13:44:34','svidyarthi@drishticon.com','2016-10-03 13:44:34',NULL,'13', null ,0.0 ,'');
INSERT INTO `ORDERS` VALUES
(49,30,'2016-11-02 11:31:24','ORDER_PLACED',NULL,NULL,NULL,80.78,NULL,72,71,NULL,'paypal','54M9533665316170M','2016-11-02 11:31:24','svidyarthi@drishticon.com','2016-11-02 11:31:31','svidyarthi@drishticon.com',14,NULL,NULL,0.0, 0);
INSERT INTO `ORDERS` VALUES (50,30,'2016-11-02 11:47:25','ORDER_PLACED',NULL,NULL,NULL,63.89,NULL,72,71,NULL,'paypal','1T9863322R243440D','2016-11-02 11:47:25','svidyarthi@drishticon.com','2016-11-02 11:47:31','svidyarthi@drishticon.com',15,NULL,NULL, 0.0 ,'');
/*!40000 ALTER TABLE `ORDERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CATALOG`
--
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `CATALOG`; SET FOREIGN_KEY_CHECKS=1;
CREATE TABLE `CATALOG` (
   `catalog_id` int(11) NOT NULL AUTO_INCREMENT,
   `created_at` datetime DEFAULT NULL,
   `created_by` varchar(255) DEFAULT NULL,
   `updated_at` datetime DEFAULT NULL,
   `updated_by` varchar(255) DEFAULT NULL,
   `product_desc` varchar(255) DEFAULT NULL,
   `product_name` varchar(255) DEFAULT NULL,
   `category_id` int(11) NOT NULL,
   `effective_date` datetime DEFAULT NULL,
    `visible` tinyint(1) DEFAULT '1',
   `product_status` char(1) DEFAULT NULL,
    `isGiftCard` tinyint(1) DEFAULT '0',
     `meta_keywords` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`catalog_id`),
   KEY `FK_e4fx1w7yk08pglb880yo9mojq` (`category_id`),
   CONSTRAINT `FK_e4fx1w7yk08pglb880yo9mojq` FOREIGN KEY (`category_id`) REFERENCES `CATEGORY` (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
 --
-- Dumping data for table `CATALOG`
--

LOCK TABLES `CATALOG` WRITE;
INSERT INTO `CATALOG`
(`catalog_id`,`product_desc`,`product_name`,`category_id`,`effective_date`,`visible`,`product_status`,`isGiftCard`)
VALUES
(1,'Test catalog temp','Test catalog',1,'2018-01-01 00:00:00',true,'A',false),
(3,'This cake is glamorous and fun!','Santa Fe',1,'2018-01-01 00:00:00',true,'A',false),
(2,'This cake is as contemporary.','Aloha',1,'2018-01-01 00:00:00',true,'A',false)
,(4,'Delicious, indulgent chocolate cake!','Chocolate Decadent',1,'2018-01-01 00:00:00',true,'A',false)
,(5,'Bright colors and bold design','Desire',1,'2018-01-01 00:00:00',true,'A',false)
,(6,'This is candy-inspired confection.','Gum Drops',1,'2018-01-01 00:00:00',true,'A',false)
,(7,'This cake has modern look','Sophisticated',1,'2018-01-01 00:00:00',true,'A',false)
,(8,'This cake features flowers','Magic Moments',1,'2018-01-01 00:00:00',true,'A',false)
,(9,'This is gorgeous centerpiece cake.','Simply Irresistable',1,'2018-01-01 00:00:00',true,'A',false)
,(10,'This is simple and clean design','Serenity',1,'2018-01-01 00:00:00',true,'A',false)
,(11,'This cake is the perfect complement!','Summer Radiance',1,'2018-01-01 00:00:00',true,'A',false)
,(12,'Ribbon and Pearls','Ribbon and Pearls',1,'2018-01-01 00:00:00',true,'A',false),
(13,'Blossoming with bright beauty and color','Sunlit Meadows',2,'2018-01-01 00:00:00',true,'A',false),
(14,'This is a blushing display of loving kindness','Precious Heart',2,'2018-01-01 00:00:00',true,'A',false),
(15,'Picked to bring brilliant color','Tulip Bouquet',2,'2018-01-01 00:00:00',true,'A',false),
(16,'Collection of pink vibrant blooms','Simple Perfection',2,'2018-01-01 00:00:00',true,'A',false),
(17,'Brings summers brilliant beauty','Endless Summer',2,'2018-01-01 00:00:00',true,'A',false),
(18,'Classic expression of love and affection','The Blooming Masterpiece',2,'2018-01-01 00:00:00',true,'A',false),
(19,'A wonderful wish for perfect happiness','Sweet Devotion',2,'2018-01-01 00:00:00',true,'A',false),
(20,'Orange Asiatic Lilies, fuchsia carnations','The Light of My Life',2,'2018-01-01 00:00:00',true,'A',false),
(21,'Goodies Basket','Goodies Basket',3,'2018-01-01 00:00:00',true,'A',false),
(22,'Snack Gift Basket','Snack Gift Basket',3,'2018-01-01 00:00:00',true,'A',false),
(23,'Fruit Gift Basket','Fruit Gift Basket',3,'2018-01-01 00:00:00',true,'A',false),
(24,'Chocolate Basket','Chocolate Basket',3,'2018-01-01 00:00:00',true,'A',false),
(25,'Godiva Chocolates','Godiva Chocolates',4,'2018-01-01 00:00:00',true,'A',false),
(26,'Ferrero Chocolates','Ferrero Chocolates',4,'2018-01-01 00:00:00',true,'A',false),
(27,'Hersheys Chocolates','Hersheys Chocolates',4,'2018-01-01 00:00:00',true,'A',false),
(28,'Signature Jelly Beans','Signature Jelly Beans',4,'2018-01-01 00:00:00',true,'A',false),
(29,'Twizzlers twist','Twizzlers twist',4,'2018-01-01 00:00:00',true,'A',false),
(30,'Ghirardelli Chocolate Intense Dark Bar','Ghirardelli Chocolate Intense Dark Bar',4,'2018-01-01 00:00:00',true,'A',false),
(31,'Twix Fun Size','Twix Fun Size',4,'2018-01-01 00:00:00',true,'A',false),
(32,'Lindt Dark chocklates','Lindt Dark chocklates',4,'2018-01-01 00:00:00',true,'A',false),
(33,'Barbie Doll','Barbie Doll',5,'2018-01-01 00:00:00',true,'A',false),
(34,'Beetle Car','Beetle Car',5,'2018-01-01 00:00:00',true,'A',false),
(35,'Lego Disney blocks','Lego Disney blocks',5,'2018-01-01 00:00:00',true,'A',false),
(36,'USA Map Puzzle','USA Map Puzzle',5,'2018-01-01 00:00:00',true,'A',false),
(37,'Batman','Batman',5,'2018-01-01 00:00:00',true,'A',false),
(38,'Land Rover Car','Land Rover Car',5,'2018-01-01 00:00:00',true,'A',false),
(39,'Fisher-Price train','Fisher-Price train',5,'2018-01-01 00:00:00',true,'A',false),
(40,'GiftCard $50','GiftCard $50',6,'2018-01-01 00:00:00',true,'A',true);
UNLOCK TABLES;
 

----
-- Table structure for table `PRODUCT`
--
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `PRODUCT`; SET FOREIGN_KEY_CHECKS=1;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
   `prod_id` int(11) NOT NULL AUTO_INCREMENT,
   `price` decimal(5,2) DEFAULT NULL,
   `availability_india` int(11) DEFAULT NULL,
   `availability_usa` int(11) DEFAULT NULL,
   `inventory_required` int(5) DEFAULT 0, 
   `img_path` varchar(45) DEFAULT NULL,
   `product_status` char(2) DEFAULT NULL,
   `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
   `created_by` varchar(45) DEFAULT NULL,
   `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
   `updated_by` varchar(45) DEFAULT NULL,
   `catalog_id` int(11) NOT NULL,
   PRIMARY KEY (`prod_id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;

INSERT INTO `PRODUCT` (`prod_id`,`price`,`availability_india`,`availability_usa`,`img_path`,`product_status`,`created_at`,`created_by`,`updated_at`,`updated_by`,catalog_id, inventory_required) VALUES
(31,150.00,0,0,'aloha-small.jpg','A','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL,2, 1),
(30,385.00,0,0,'aloha-small.jpg','A','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL,2, 1),
(32,85.00,0,0,'aloha-small.jpg','A','2016-05-10 11:55:37',NULL,'2016-05-10 12:12:42',NULL,2, 1),

(33,30.99,0,0,'santa-fe-small.jpg','A','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL,3, 1),
(34,60.99,0,0,'santa-fe-small.jpg','A','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL,3, 1),
(35,90.99,0,0,'santa-fe-small.jpg','A','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL,3, 1),
(36,130.99,0,0,'santa-fe-small.jpg','A','2016-05-10 12:02:01',NULL,'2016-05-10 12:13:24',NULL,3, 1),

(37,40.09,0,0,'chocolate-decadent-small.jpg','A','2016-05-10 12:20:55',NULL,'2016-05-10 12:20:55',NULL,4, 1),
(38,240.09,0,0,'chocolate-decadent-small.jpg','A','2016-05-10 12:20:55',NULL,'2016-05-10 12:20:55',NULL,4, 1),

(39,132.50,0,0,'desire-small.jpg','A','2016-05-10 12:22:52',NULL,'2016-05-10 12:22:52',NULL,5, 1),
(40,50,0,0,'desire-small.jpg','A','2016-05-10 12:22:52',NULL,'2016-05-10 12:22:52',NULL,5, 1),

(41,50,0,0,'gum-drops-small.jpg','A','2016-05-10 12:57:01',NULL,'2016-05-10 12:57:01',NULL,6, 1),
(42,232.50,0,0,'gum-drops-small.jpg','A','2016-05-10 12:57:01',NULL,'2016-05-10 12:57:01',NULL,6, 1),

(43,55.00,0,0,'sophisticated-small.jpg','A','2016-05-10 12:59:16',NULL,'2016-05-10 12:59:16',NULL,7, 1),
(44,155.00,0,0,'sophisticated-small.jpg','A','2016-05-10 12:59:16',NULL,'2016-05-10 12:59:16',NULL,7, 1),

(45,120.00,0,0,'magic-moments-small.jpg','A','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL,8, 1),
(46,12.00,0,0,'magic-moments-small.jpg','A','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL,8, 1),
(47,20.00,0,0,'magic-moments-small.jpg','A','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL,8, 1),
(48,100.00,0,0,'magic-moments-small.jpg','A','2016-05-10 13:00:48',NULL,'2016-05-10 13:00:48',NULL,8, 1),

(49,400.18,0,0,'simply-irresistable-small.jpg','A','2016-05-10 13:02:47',NULL,'2016-05-10 13:02:47',NULL,9, 1),
(50,60.30,0,0,'serenity-small.jpg','A','2016-05-10 13:06:13',NULL,'2016-05-10 13:06:13',NULL,10, 1),
(51,230.00,0,0,'summer-radiance-small.jpg','A','2016-05-10 13:08:01',NULL,'2016-05-10 13:08:01',NULL,11, 1),
(52,70.89,0,0,'ribbon-and-pearls-small.jpg','A','2016-05-10 13:10:04',NULL,'2016-05-10 13:10:04',NULL,12, 1),
(53,59.99,0,0,'Sunlit Meadows.jpg','A','2016-05-10 13:43:32',NULL,'2016-05-10 13:43:32',NULL,13, 1),
(54,99,0,0,'Sunlit Meadows.jpg','A','2016-05-10 13:43:32',NULL,'2016-05-10 13:43:32',NULL,13, 1),

 (55,114.99,0,0,'Precious Heart.jpg','A','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL,14, 1),
 (56,99,0,0,'Precious Heart.jpg','A','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL,14, 1),
 (57,14.99,0,0,'Precious Heart.jpg','A','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL,14, 1),
 (58,109,0,0,'Precious Heart.jpg','A','2016-05-10 13:45:40',NULL,'2016-05-10 13:45:40',NULL,14, 1),
 
 (59,54.99,0,0,'Tulip.jpg','A','2016-05-10 13:48:36',NULL,'2016-05-10 13:48:36',NULL,15, 1),
 (60,59,0,0,'Tulip.jpg','A','2016-05-10 13:48:36',NULL,'2016-05-10 13:48:36',NULL,15, 1),
 (61,199,0,0,'Tulip.jpg','A','2016-05-10 13:48:36',NULL,'2016-05-10 13:48:36',NULL,15, 1),
 
 (62,74.89,0,0,'Simple Perfection.jpg','A','2016-05-10 13:51:46',NULL,'2016-05-10 13:51:46',NULL,16, 1),
 (63,174.89,0,0,'Simple Perfection.jpg','A','2016-05-10 13:51:46',NULL,'2016-05-10 13:51:46',NULL,16, 1),
 
 (64,40.45,0,0,'Sunflower.jpg','A','2016-05-10 13:53:35',NULL,'2016-05-10 13:53:35',NULL,17, 1),
 (65,89.99,0,0,'Romantic.jpg','A','2016-05-10 13:55:29',NULL,'2016-05-10 13:55:29',NULL,18, 1),
 (66,50.89,0,0,'Lavander rose.jpg','A','2016-05-10 13:58:01',NULL,'2016-05-10 13:58:01',NULL,19, 1),
 (67,100.00,0,0,'Lily.jpg','A','2016-05-10 14:01:26',NULL,'2016-05-10 14:01:26',NULL,20, 1),
 
 (78,30.00,0,0,'Godiva Chocklate.jpg','A','2016-05-10 14:17:08',NULL,'2016-05-10 14:17:08',NULL,25, 1),
(79,15.00,0,0,'ferrero.jpg','A','2016-05-10 14:18:46',NULL,'2016-05-10 14:18:46',NULL,26, 1),
(80,10.00,0,0,'hersheys.jpg','A','2016-05-10 14:21:19',NULL,'2016-05-10 14:21:19',NULL,27, 1),
(81,20.10,0,0,'Jelly beans.jpg','A','2016-05-10 14:24:36',NULL,'2016-05-10 14:24:36',NULL,28, 1),
(82,5.00,0,0,'twizzlers.jpg','A','2016-05-10 14:26:01',NULL,'2016-05-10 14:26:01',NULL,29, 1),
(83,20.00,0,0,'Ghiradelli.jpg','A','2016-05-10 14:29:27',NULL,'2016-05-10 14:29:27',NULL,30, 1),
(84,20.00,0,0,'Twix.jpg','A','2016-05-10 14:30:42',NULL,'2016-05-10 14:30:42',NULL,31, 1),
(85,24.89,0,0,'Lindt Dark Chocklates.jpg','A','2016-05-10 14:33:32',NULL,'2016-05-10 14:33:32',NULL,32, 1),

(86,20.00,0,0,'Barbie.jpg','A','2016-05-10 14:55:37',NULL,'2016-05-10 14:55:37',NULL,33, 1),
(87,30.00,0,0,'Car.jpg','A','2016-05-10 14:57:33',NULL,'2016-05-10 14:57:33',NULL,34, 1),
(88,30.00,0,0,'Lego.jpg','A','2016-05-10 15:03:30',NULL,'2016-05-10 15:03:30',NULL,35, 1),
(89,50.78,0,0,'puzzle.jpg','A','2016-05-10 15:04:36',NULL,'2016-05-10 15:04:36',NULL,36, 1),
(90,30.00,0,0,'Batman.jpg','A','2016-05-10 15:09:01',NULL,'2016-05-10 15:09:01',NULL,37, 1),
(91,20.90,0,0,'LandRover.jpg','A','2016-05-10 15:10:45',NULL,'2016-05-10 15:10:45',NULL,38, 1),
(92,12.89,0,0,'train.jpg','A','2016-05-10 15:13:53',NULL,'2016-05-10 15:13:53',NULL,39, 1),

(68,70.00,0,0,'Goodies Basket.jpg','A','2016-05-10 15:48:32',NULL,'2016-05-10 15:48:32',NULL,21, 1),
(69,50.00,0,0,'Goodies Basket.jpg','A','2016-05-10 15:48:32',NULL,'2016-05-10 15:48:32',NULL,21, 1),
(70,40.00,0,0,'Goodies Basket.jpg','A','2016-05-10 15:48:32',NULL,'2016-05-10 15:48:32',NULL,21, 1),

(71,90.00,0,0,'Snack gift basket.jpg','A','2016-05-10 15:50:02',NULL,'2016-05-10 15:50:02',NULL,22, 0),
(72,190.00,0,0,'Snack gift basket.jpg','A','2016-05-10 15:50:02',NULL,'2016-05-10 15:50:02',NULL,22, 0),

(73,90.00,0,0,'fruit gift basket.jpg','A','2016-05-10 15:50:53',NULL,'2016-05-10 15:50:53',NULL,23, 0),
(74,40.00,0,0,'fruit gift basket.jpg','A','2016-05-10 15:50:53',NULL,'2016-05-10 15:50:53',NULL,23, 0),
(75,98.00,0,0,'fruit gift basket.jpg','A','2016-05-10 15:50:53',NULL,'2016-05-10 15:50:53',NULL,23, 0),

(76,40.00,0,0,'Chocklate Basket.jpg','A','2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL,24, 0),
(77,49.00,0,0,'Chocklate Basket.jpg','A','2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL,24, 0),

(93,50.00,0,0,'Chocklate Basket.jpg','A','2016-05-10 15:55:51',NULL,'2016-05-10 15:55:51',NULL,40, 0);
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_JSON`
--
DROP TABLE IF EXISTS `PRODUCT_JSON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_JSON` (
  `items_cakes_list` int(11) DEFAULT NULL,
  `items_cakes_list_category` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `items_cakes_list_description` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_cakes_list_id` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `items_cakes_list_image` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `items_cakes_list_ingredients` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_cakes_list_name` varchar(22) CHARACTER SET utf8 DEFAULT NULL,
  `items_cakes_list_nutrional_value` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_cakes_list_price` decimal(4,2) DEFAULT NULL,
  `items_chocolates_list` int(11) DEFAULT NULL,
  `items_chocolates_list_category` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `items_chocolates_list_description` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_chocolates_list_id` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `items_chocolates_list_image` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `items_chocolates_list_ingredients` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_chocolates_list_name` varchar(26) CHARACTER SET utf8 DEFAULT NULL,
  `items_chocolates_list_nutrional_value` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_chocolates_list_price` decimal(4,2) DEFAULT NULL,
  `items_cup_cake_deals_list` int(11) DEFAULT NULL,
  `items_cup_cake_deals_list_category` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `items_cup_cake_deals_list_deal_name` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `items_cup_cake_deals_list_description` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_cup_cake_deals_list_id` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `items_cup_cake_de ls_list_image` varchar(28) CHARACTER SET utf8 DEFAULT NULL,
  `items_cup_cake_deals_list_ingredients` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_cup_cake_deals_list_name` varchar(26) CHARACTER SET utf8 DEFAULT NULL,
  `items_cup_cake_deals_list_price` decimal(4,2) DEFAULT NULL,
  `items_flowers_list` int(11) DEFAULT NULL,
  `items_flowers_list_category` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `items_flowers_list_description` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_flowers_list_id` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `items_flowers_list_image` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `items_flowers_list_ingredients` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_flowers_list_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `items_flowers_list_price` decimal(4,2) DEFAULT NULL,
  `items_special_gifts_list` int(11) DEFAULT NULL,
  `items_special_gifts_list_category` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `items_special_gifts_list_description` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_special_gifts_list_id` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `items_special_gifts_list_image` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `items_special_gifts_list_ingredients` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_special_gifts_list_name` varchar(27) CHARACTER SET utf8 DEFAULT NULL,
  `items_special_gifts_list_price` decimal(4,2) DEFAULT NULL,
  `items_toys_list` int(11) DEFAULT NULL,
  `items_toys_list_category` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `items_toys_list_description` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_toys_list_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `items_toys_list_image` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `items_toys_list_ingredients` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `items_toys_list_name` varchar(17) CHARACTER SET utf8 DEFAULT NULL,
  `items_toys_list_price` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_JSON`
--

LOCK TABLES `PRODUCT_JSON` WRITE;
/*!40000 ALTER TABLE `PRODUCT_JSON` DISABLE KEYS */;
INSERT INTO `PRODUCT_JSON` VALUES (NULL,'Cakes','Strawberry, Wheat flour, Eggs, Chocolates.','cake1','img/product1.JPG','Strawberry, Wheat flour, Eggs, Chocolates.','STRAWBERRY CAKE','880 calories',10.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Dark cocoa Chocolate, Milk, Sugar, Salt, Eggs','choco1','img/product4.JPG','Dark cocoa Chocolate, Milk, Sugar, Salt, Eggs','DARK CHOCOLATE','200 calories',20.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Milk, Nuts, Cocoa, Caramel','choco2','img/product7.JPG','Milk, Nuts, Cocoa, Caramel','MILKY NUT CHOCO','390 calories',13.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'Toys','CUPCAKEDEALS','chocolate,milk,wheat','deal1','img/special-gifts/deal_1.jpg','chocolate,milk,wheat','Chocolate CupCakes',12.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'SpecialGifts','SPECIALGIFTS','Freshly picked red roses and Chocolate balls made up of cocoa,milk and nuts.','deal2','img/special-gifts/deal_2.jpg','Red roses,Wheat,eggs,caramal,milk,wheat,cocoa.','CHOCOLATE AND ROSES PACK',24.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'SpecialGifts','CHOCOLATE GIFTS','Variety of chocolates with chocolate fudge and dark chocolate chips.','deal3','img/special-gifts/deal_3.jpg','Cocoa beans, eggs,nuts,wheat','CHOCOLATE BASKET GIFT PACK',49.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Toys','Soft cotton, Threaded cloth','toy1','img/product2.JPG','Soft cotton, Threaded cloth','TEDDY BEAR',12.99),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'SpecialGifts','CHOCOLATE GIFTS','Variety of chocolates with chocolate fudge and dark chocolate chips.','deal3','img/special-gifts/deal_3.jpg','Cocoa beans, eggs,nuts,wheat','CHOCOLATE BASKET GIFT PACK',49.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SpecialGifts','Combination of roses,chocolates with teddy bear','combo1','img/special-gifts/allCombo1.jpg','Red roses,dark chocolates and Soft toy cotton','ROSE CHOCO TEDDY COMBO',39.99,NULL,'Toys','Rubber, Plastic','toy2','img/product8.JPG','Rubber, Plastic','TOM AND JERRY TOY',20.99),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'SpecialGifts','CHOCOLATE GIFTS','Variety of chocolates with chocolate fudge and dark chocolate chips.','deal3','img/special-gifts/deal_3.jpg','Cocoa beans, eggs,nuts,wheat','CHOCOLATE BASKET GIFT PACK',49.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SpecialGifts','Milk chocolates with nuts, daisy and red roses with teddy bear','combo2','img/special-gifts/allCombo2.PNG','Milk chocolates,daisy and red roses, Soft cotton','DAISY/ROSES CHOCO TOY COMBO',44.99,NULL,'Toys','Rubber, Plastic','toy2','img/product8.JPG','Rubber, Plastic','TOM AND JERRY TOY',20.99),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'SpecialGifts','CHOCOLATE GIFTS','Variety of chocolates with chocolate fudge and dark chocolate chips.','deal3','img/special-gifts/deal_3.jpg','Cocoa beans, eggs,nuts,wheat','CHOCOLATE BASKET GIFT PACK',49.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SpecialGifts','Combination of freshly picked Pink roses with Soft cotton teddy bear','combo3','img/special-gifts/allCombo3.jpg','Soft cotton, Threaded cloth, pink roses','FLOWER BOUQUET WITH TEDDY',24.99,NULL,'Toys','Rubber, Plastic','toy2','img/product8.JPG','Rubber, Plastic','TOM AND JERRY TOY',20.99),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'SpecialGifts','CHOCOLATE GIFTS','Variety of chocolates with chocolate fudge and dark chocolate chips.','deal3','img/special-gifts/deal_3.jpg','Cocoa beans, eggs,nuts,wheat','CHOCOLATE BASKET GIFT PACK',49.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SpecialGifts','Variety of chocolates with chocolate fudge and dark chocolate chips.','combo4','img/special-gifts/choclateCombo1.jpg','Cocoa beans, eggs,nuts,wheat','CHOCOLATE BASKET GIFT PACK',49.99,NULL,'Toys','Rubber, Plastic','toy2','img/product8.JPG','Rubber, Plastic','TOM AND JERRY TOY',20.99),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'SpecialGifts','CHOCOLATE GIFTS','Variety of chocolates with chocolate fudge and dark chocolate chips.','deal3','img/special-gifts/deal_3.jpg','Cocoa beans, eggs,nuts,wheat','CHOCOLATE BASKET GIFT PACK',49.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SpecialGifts','Varity of chocolates balls and chips with caramel,cocoa,milk and nuts','combo5','img/special-gifts/choclateCombo2.jpg','Wheat,eggs,caramal,milk,wheat,cocoa.','MIX CHOCOLATES GIFT PACK',20.99,NULL,'Toys','Rubber, Plastic','toy2','img/product8.JPG','Rubber, Plastic','TOM AND JERRY TOY',20.99),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'SpecialGifts','CHOCOLATE GIFTS','Variety of chocolates with chocolate fudge and dark chocolate chips.','deal3','img/special-gifts/deal_3.jpg','Cocoa beans, eggs,nuts,wheat','CHOCOLATE BASKET GIFT PACK',49.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SpecialGifts','Varity of various chocolates brand chocos with caramel,cocoa,milk and nuts','combo6','img/special-gifts/choclateCombo3.jpg','Wheat,eggs,caramal,milk,wheat,cocoa.','MIX BRAND CHOCOLATES PACK',39.99,NULL,'Toys','Rubber, Plastic','toy2','img/product8.JPG','Rubber, Plastic','TOM AND JERRY TOY',20.99),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'SpecialGifts','CHOCOLATE GIFTS','Variety of chocolates with chocolate fudge and dark chocolate chips.','deal3','img/special-gifts/deal_3.jpg','Cocoa beans, eggs,nuts,wheat','CHOCOLATE BASKET GIFT PACK',49.99,NULL,'Flowers','Pink Roses, Clematis, African Voilets, Crocuses, Tulips, Yellow Columbine','flower2','img/product6.JPG','Pink Roses, Clematis, African Voilets, Crocuses, Tulips, Yellow Columbine','ROSE FLOWER BOUQUET',19.99,NULL,'SpecialGifts','Freshly picked red roses and Chocolate balls made up of cocoa,milk and nuts.','combo7','img/special-gifts/choclateCombo4.jpg','Red roses,Wheat,eggs,caramal,milk,wheat,cocoa.','CHOCOLATE AND ROSES PACK',24.99,NULL,'Toys','Rubber, Plastic','toy2','img/product8.JPG','Rubber, Plastic','TOM AND JERRY TOY',20.99),(NULL,'Cakes','Dark Chocolate, Vanilla, Wheat Flour, Strawberry','cake2','img/product5.JPG','Dark Chocolate, Vanilla, Wheat Flour, Strawberry ','CHOCOLATE VANILLA CAKE','730 calories',16.99,NULL,'Chocolates','Muffins, Chocolates, Eggs, Dark Cocoa','choco3','img/product9.JPG','Muffins, Chocolates, Eggs, Dark Cocoa','COCOA BEANS DARK CHOCOLATE','300 calories',18.99,NULL,'SpecialGifts','CHOCOLATE GIFTS','Variety of chocolates with chocolate fudge and dark chocolate chips.','deal3','img/special-gifts/deal_3.jpg','Cocoa beans, eggs,nuts,wheat','CHOCOLATE BASKET GIFT PACK',49.99,NULL,'Flowers','Picked fresh from the farm to bring vibrant color and happy wishes to your special recipient, the Colorful World Gerbera Daisy Bouquet will lift their spirits with each sunlit bloom. Hand gathered in select floral farms and showcasing a rainbow of color, including red, yellow, pink, white, and orange.','flower1','img/product3.JPG','Yellow daisy, Clematis, Crocuses(purple)','DAISY FLOWER BOUQUET',10.99,NULL,'SpecialGifts','Freshly picked red roses and Chocolate balls made up of cocoa,milk and nuts.','combo7','img/special-gifts/choclateCombo4.jpg','Red roses,Wheat,eggs,caramal,milk,wheat,cocoa.','CHOCOLATE AND ROSES PACK',24.99,NULL,'Toys','Rubber, Plastic','toy2','img/product8.JPG','Rubber, Plastic','TOM AND JERRY TOY',20.99);
/*!40000 ALTER TABLE `PRODUCT_JSON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REFUND`
--
DROP TABLE IF EXISTS `REFUND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REFUND` (
  `refund_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(45) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NULL,
  `amount` decimal(10,2) NULL DEFAULT NULL,
  `amount_refunded` decimal(10,2) NULL,
  `case_id` int(25) NULL,
  `refund_status` varchar(45) NOT NULL,
  `failure_reason` varchar(45) DEFAULT NULL,
  `refund_type` varchar(10) NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`refund_id`),
   KEY `refund_orderIds_idx` (`order_id`),
  CONSTRAINT `refund_orderIds` FOREIGN KEY (`order_id`) REFERENCES `ORDERS` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REFUND`
--

LOCK TABLES `REFUND` WRITE;
/*!40000 ALTER TABLE `REFUND` DISABLE KEYS */;
INSERT INTO `REFUND` (`refund_id`, `transaction_id`, `order_id`, `product_id`, `amount`, `amount_refunded`, `refund_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES ('23', 'NMBVIVA891000', '48', '67', '30.00', '30.00', 'FLAT', '2016-11-18 15:00:01', 'Testing', '2016-11-18 15:00:01', 'Testing');
INSERT INTO `REFUND` (`refund_id`, `transaction_id`, `order_id`, `product_id`, `amount`, `amount_refunded`, `refund_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES ('24', 'AAASVA8921000', '43', '67', '10.00', '10.00', 'FULL', '2016-11-18 15:00:01', 'Testing', '2016-11-18 15:00:01', 'Testing');
INSERT INTO `REFUND` (`refund_id`, `transaction_id`, `order_id`, `product_id`, `amount`, `amount_refunded`, `refund_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES ('25', 'ZXCV567893330', '44', '67', '10.00', '10.00', 'FULL', '2016-12-19 15:00:01', 'Testing', '2016-12-19 15:00:01', 'Testing');
INSERT INTO `REFUND` (`refund_id`, `transaction_id`, `order_id`, `product_id`, `amount`, `amount_refunded`, `refund_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES ('26', 'QWERTY543210', '44', '59', '10.00', '10.00', 'FLAT', '2016-12-19 15:00:01', 'Testing', '2016-12-19 15:00:01', 'Testing');
INSERT INTO `REFUND` (`refund_id`, `transaction_id`, `order_id`, `product_id`, `amount`, `amount_refunded`, `refund_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES ('27', 'TUTRTY543210', '45', '34', '70.00', '70.00', 'FLAT', '2016-12-19 15:00:01', 'Testing', '2016-12-19 15:00:01', 'Testing');
/*!40000 ALTER TABLE `REFUND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE`
--
DROP TABLE IF EXISTS `ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLE` (
  `role_id` int(11) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE`
--

LOCK TABLES `ROLE` WRITE;
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */;
INSERT INTO `ROLE` VALUES (1,'Finance','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),(2,'Marketing','2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHIPPING`
--
DROP TABLE IF EXISTS `SHIPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHIPPING` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `zip_code` varchar(11) NOT NULL,
  `shipping_rate` decimal(10,2) NULL DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIPPING`
--

LOCK TABLES `SHIPPING` WRITE;
/*!40000 ALTER TABLE `SHIPPING` DISABLE KEYS */;
INSERT INTO `SHIPPING` VALUES (1,94539,2.53,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `SHIPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAX`
--
DROP TABLE IF EXISTS `TAX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAX` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `zip_code` varchar(11) NOT NULL,
  `tax_rate` decimal(10,2) NULL DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAX`
--

LOCK TABLES `TAX` WRITE;
/*!40000 ALTER TABLE `TAX` DISABLE KEYS */;
INSERT INTO `TAX` VALUES (1,94539,7.5,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `TAX` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `PRODUCT_INVENTORY`;
CREATE TABLE `PRODUCT_INVENTORY` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `available_quantity` int(11) DEFAULT NULL,
  `threshold` int(11) DEFAULT NULL,
  `mail_triggered` varchar(5) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `next_available_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pi_product_id_idx` (`product_id`),
  CONSTRAINT `pi_product_id` FOREIGN KEY (`product_id`) REFERENCES `PRODUCT` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_INVENTORY`
--

LOCK TABLES `PRODUCT_INVENTORY` WRITE;
/*!40000 ALTER TABLE `PRODUCT_INVENTORY` DISABLE KEYS */;
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('1', '30', '500', '500', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('2', '31', '500', '500', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('3', '32', '500', '500', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('4', '33', '500', '500', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('5', '34', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('6', '35', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('7', '36', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('8', '37', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('9', '38', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('10', '39', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('11', '40', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('12', '41', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('13', '42', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('14', '43', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('15', '44', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('16', '45', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('17', '46', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('18', '47', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('19', '48', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('20', '49', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('21', '50', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('22', '51', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('23', '52', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('24', '53', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('25', '54', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('26', '55', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('27', '56', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('28', '57', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('29', '58', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('30', '59', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('31', '60', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('32', '61', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('33', '62', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('34', '63', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES ('35', '64', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
INSERT INTO `PRODUCT_INVENTORY` (`id`, `product_id`, `quantity`, `available_quantity`, `threshold`, `country`, `created_by`, `created_at`, `updated_at`) VALUES 
('36', '65', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('37', '66', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('38', '67', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('39', '68', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('40', '69', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('41', '70', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('42', '71', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('43', '72', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('44', '73', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('45', '74', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('46', '75', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('47', '76', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('48', '77', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('49', '78', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('50', '79', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('51', '80', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('52', '81', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('53', '82', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('54', '83', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('55', '84', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('56', '85', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('57', '86', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('58', '87', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('59', '88', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('60', '89', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('61', '90', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),
('62', '91', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20'),('63', '92', '10', '10', '3', 'US', 'TEST', '2016-07-20', '2016-07-20');
/*!40000 ALTER TABLE `PRODUCT_INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `VENDOR`
--
SET FOREIGN_KEY_CHECKS=0; 
DROP TABLE IF EXISTS `VENDOR`; 
SET FOREIGN_KEY_CHECKS=1;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VENDOR` (
  `vendor_id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `company_name` VARCHAR(300) NOT NULL,
  `company_website` VARCHAR(300) DEFAULT NULL,
  `linkedin_page` VARCHAR(300) DEFAULT NULL,
  `facebook_page` VARCHAR(300) DEFAULT NULL,
  `twitter_page` VARCHAR(300) DEFAULT NULL,
  `google_plus` VARCHAR(300) DEFAULT NULL,
  `status` VARCHAR(10) DEFAULT NULL,
  `created_at` DATETIME NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` VARCHAR(45) DEFAULT NULL,
  `updated_at` DATETIME NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` VARCHAR(45) DEFAULT NULL,  
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR`
--

LOCK TABLES `VENDOR` WRITE;
/*!40000 ALTER TABLE `VENDOR` DISABLE KEYS */;
-- INSERT INTO `VENDOR` VALUES (1,94539,7.5,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `VENDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONTACT`
--
DROP TABLE IF EXISTS `CONTACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CONTACT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `contact_type` VARCHAR(20) NOT NULL,
  `fb_customer` VARCHAR(45) DEFAULT NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `alternate_phone_number` VARCHAR(45) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `c_vendor_id_fk_idx` (`vendor_id`),
  CONSTRAINT `c_vendor_id_fk` FOREIGN KEY (`vendor_id`) REFERENCES `VENDOR` (`vendor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR_ADDRESS`
--

LOCK TABLES `CONTACT` WRITE;
/*!40000 ALTER TABLE `CONTACT` DISABLE KEYS */;
-- 
/*!40000 ALTER TABLE `CONTACT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDOR_ADDRESS`
--
DROP TABLE IF EXISTS `VENDOR_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VENDOR_ADDRESS` (
  `vendor_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `vendor_id_fk_idx` (`vendor_id`),
  KEY `address_id_fk2_idx` (`address_id`),
  CONSTRAINT `address_id_fk2` FOREIGN KEY (`address_id`) REFERENCES `ADDRESS` (`address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `vendor_id_fk` FOREIGN KEY (`vendor_id`) REFERENCES `VENDOR` (`vendor_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR_ADDRESS`
--

LOCK TABLES `VENDOR_ADDRESS` WRITE;
/*!40000 ALTER TABLE `VENDOR_ADDRESS` DISABLE KEYS */;
-- INSERT INTO `VENDOR_ADDRESS` VALUES (30,71,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),(30,72,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `VENDOR_ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `PRODUCT_VENDOR`
--
DROP TABLE IF EXISTS `PRODUCT_VENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_VENDOR` (
  `vendor_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `availability` varchar(45) DEFAULT NULL,
  `unit_price` decimal(10,2) NULL DEFAULT NULL,
  `preferred_vendor` varchar(5) DEFAULT "N",
  `rating` int(5) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vendor_id`, `product_id`),
  KEY `pv_vendor_id_fk_idx` (`vendor_id`),
  KEY `pv_product_id_fk_idx` (`product_id`),
  CONSTRAINT `pv_vendor_id_fk` FOREIGN KEY (`vendor_id`) REFERENCES `VENDOR` (`vendor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pv_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `PRODUCT` (`prod_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_VENDOR`
--

LOCK TABLES `PRODUCT_VENDOR` WRITE;
/*!40000 ALTER TABLE `PRODUCT_VENDOR` DISABLE KEYS */;
-- INSERT INTO `PRODUCT_VENDOR` VALUES (30,71,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL),(30,72,'2016-01-01 00:00:00',NULL,'2016-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `PRODUCT_VENDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ATTRIBUTE`
--
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `TAG`; SET FOREIGN_KEY_CHECKS=1;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAG` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PRODUCT_TAG`
--
DROP TABLE IF EXISTS `PRODUCT_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_TAG` (
  `product_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `tag_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`product_tag_id`),
  KEY `FK_ProductTag` (`tag_id`),
  KEY `FK_ProductTagMap` (`product_id`),
  CONSTRAINT `FK_ProductTag` FOREIGN KEY (`tag_id`) REFERENCES `TAG` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_ProductTagMap` FOREIGN KEY (`product_id`) REFERENCES `PRODUCT` (`prod_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ORDER_ITEM_ATTRIBUTE`;
CREATE TABLE `ORDER_ITEM_ATTRIBUTE` (
  `order_item_attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `attr_value` varchar(255) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_item_attribute_id`),
  KEY `FK_oikeknhib3fcyrmqbnoa9fr40` (`order_item_id`),
  CONSTRAINT `FK_oikeknhib3fcyrmqbnoa9fr40` FOREIGN KEY (`order_item_id`) REFERENCES `ORDER_ITEM` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `SUPPORT_CASE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUPPORT_CASE` (
  `case_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `issue` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_item_ids` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`case_id`),
  KEY `FK_lwrqrxpj4sapa5mfop1m182uf` (`customer_id`),
  KEY `FK_84xuaka6ntwvfdxjnq4pdyx3r` (`order_id`),
  CONSTRAINT `FK_84xuaka6ntwvfdxjnq4pdyx3r` FOREIGN KEY (`order_id`) REFERENCES `ORDERS` (`order_id`),
  CONSTRAINT `FK_lwrqrxpj4sapa5mfop1m182uf` FOREIGN KEY (`customer_id`) REFERENCES `CUSTOMER` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Final view structure for view `ORDER_ITEM_DETAILS`
--

/*!50001 DROP VIEW IF EXISTS `ORDER_ITEM_DETAILS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ORDER_ITEM_DETAILS` AS select `ORDERS`.`order_id` AS `orderId`,`ORDERS`.`customer_id` AS `customerId`,`ORDERS`.`order_date` AS `date`,`ORDERS`.`order_status` AS `orderstatus`,`ORDERS`.`total_cost` AS `totalcost`,`ORDERS`.`billing_id` AS `billingId`,`ORDERS`.`shipping_id` AS `shippingId`,`ORDERS`.`payment_type` AS `paymentType`,`ORDERS`.`transaction_id` AS `transactionId`,`order_item`.`quantity` AS `quantity`,`order_item`.`discount` AS `discount`,`order_item`.`unit_price` AS `unitprice`,`order_item`.`order_status` AS `itemStatus`,`PRODUCT`.`img_path` AS `imgPath` from ((`ORDERS` join `PRODUCT`) join `ORDER_ITEM`) where ((`ORDER_ITEM`.`order_id` = `ORDERS`.`order_id`) and (`ORDER_ITEM`.`product_id` = `PRODUCT`.`prod_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

DROP TABLE IF EXISTS `GIFT_CARD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GIFT_CARD` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `balance` decimal(19,2) DEFAULT NULL,
  `end_date_time` bigint(20) DEFAULT NULL,
  `gift_card_number` varchar(50) NOT NULL,
  `intial_amt` decimal(19,2) DEFAULT NULL,
  `start_date_time` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sender_name` varchar(45) DEFAULT NULL,
  `recipient_name` varchar(45) DEFAULT NULL,
  `recipient_email` varchar(45) DEFAULT NULL,
  `gift_message` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `U_gift_card_number` (`gift_card_number`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `GIFT_CARD_TRANSACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GIFT_CARD_TRANSACTION` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gc_amount_applied` decimal(19,2) DEFAULT NULL,
  `balance` decimal(19,2) DEFAULT NULL,
  `gift_card_number` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `remaining_balance` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dump completed on 2016-05-05 13:58:27
