-- MySQL dump 10.13  Distrib 5.7.26, for osx10.10 (x86_64)
--
-- Host: localhost    Database: craft_test
-- ------------------------------------------------------
-- Server version	5.7.26

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

--
-- Table structure for table `assetindexdata`
--

DROP TABLE IF EXISTS `assetindexdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) unsigned DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  KEY `assetindexdata_volumeId_idx` (`volumeId`),
  CONSTRAINT `assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetindexdata`
--

LOCK TABLES `assetindexdata` WRITE;
/*!40000 ALTER TABLE `assetindexdata` DISABLE KEYS */;
INSERT INTO `assetindexdata` VALUES (1,'4415d480-4347-4de8-b7b0-6d2d93a54925',1,'martin-spencer/Martin-Spencer.png',47152,'2020-08-29 15:46:48',17,0,1,'2020-08-29 16:11:45','2020-08-29 16:11:46','de1a52fc-9ced-4645-8e97-9d0ee0dc4aee'),(2,'4415d480-4347-4de8-b7b0-6d2d93a54925',1,'lewys-kramer/Lewys-Kramer.png',46920,'2020-08-29 15:50:10',16,0,1,'2020-08-29 16:11:45','2020-08-29 16:11:46','7d327307-c6a5-4dac-9684-dedfe698e48f'),(3,'4415d480-4347-4de8-b7b0-6d2d93a54925',1,'issa-atkinson/Issa-Atkinson.png',45061,'2020-08-29 15:48:21',13,0,1,'2020-08-29 16:11:45','2020-08-29 16:11:46','c1c31573-e32e-484f-a6be-d1e63d936ceb'),(4,'4415d480-4347-4de8-b7b0-6d2d93a54925',1,'leland-whyte/Leland-Whyte.png',42388,'2020-08-29 15:54:34',15,0,1,'2020-08-29 16:11:45','2020-08-29 16:11:46','8677fb8f-095a-46c1-8940-1da1b9b777a6'),(5,'4415d480-4347-4de8-b7b0-6d2d93a54925',1,'jonah-adams/Jonah-Adams.png',48676,'2020-08-29 15:54:23',14,0,1,'2020-08-29 16:11:45','2020-08-29 16:11:47','7316abe2-d61e-4d8b-8e10-92d523ee7274'),(6,'4415d480-4347-4de8-b7b0-6d2d93a54925',1,'gerard-soto/Gerard-Soto.png',49077,'2020-08-29 15:55:57',12,0,1,'2020-08-29 16:11:45','2020-08-29 16:11:47','ba1ac953-4bec-49e9-b920-78988a69cbe7'),(7,'4415d480-4347-4de8-b7b0-6d2d93a54925',1,'ernie-chavez/Ernie-Chavez.png',48516,'2020-08-29 15:58:23',11,0,1,'2020-08-29 16:11:45','2020-08-29 16:11:47','37d0d68b-8e06-44a4-9ae0-d24b539c9c0e'),(8,'4415d480-4347-4de8-b7b0-6d2d93a54925',1,'dollie-rossi/Dollie-Rossi.png',42048,'2020-08-29 15:45:46',10,0,1,'2020-08-29 16:11:45','2020-08-29 16:11:47','f96b60cd-d515-42be-8375-a39420f46174'),(9,'4415d480-4347-4de8-b7b0-6d2d93a54925',1,'blake-hartman/blake-hartman.png',45139,'2020-08-29 15:58:55',9,0,1,'2020-08-29 16:11:45','2020-08-29 16:11:48','9b0b4166-622b-4fb8-ba66-1f5639cd6dc2'),(10,'4415d480-4347-4de8-b7b0-6d2d93a54925',1,'nancy-hope/Nancy-Hope.png',60550,'2020-08-29 15:57:03',18,0,1,'2020-08-29 16:11:45','2020-08-29 16:11:48','ad8cc3d9-05fe-413c-a056-8f9568076867');
/*!40000 ALTER TABLE `assetindexdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `assets_filename_folderId_idx` (`filename`,`folderId`),
  KEY `assets_folderId_idx` (`folderId`),
  KEY `assets_volumeId_idx` (`volumeId`),
  KEY `assets_uploaderId_fk` (`uploaderId`),
  CONSTRAINT `assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assets_uploaderId_fk` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (9,1,16,1,'blake-hartman.png','image',528,560,45139,NULL,NULL,NULL,'2020-08-29 15:58:55','2020-08-29 15:43:48','2020-08-29 15:58:55','073bd95a-e910-48c8-a29b-be3aa34e1a18'),(10,1,9,1,'Dollie-Rossi.png','image',528,560,42048,NULL,NULL,NULL,'2020-08-29 15:45:46','2020-08-29 15:43:49','2020-08-29 15:50:45','ce82ce97-c061-421d-9467-a9291e2bc6e8'),(11,1,15,1,'Ernie-Chavez.png','image',528,560,48516,NULL,NULL,NULL,'2020-08-29 15:58:23','2020-08-29 15:43:50','2020-08-29 15:58:23','c84b30a9-cfe4-4397-8131-d04aef5ffa52'),(12,1,13,1,'Gerard-Soto.png','image',528,560,49077,NULL,NULL,NULL,'2020-08-29 15:55:57','2020-08-29 15:43:51','2020-08-29 15:55:57','1fe6698a-2770-4208-b1e4-462f94488b3b'),(13,1,10,1,'Issa-Atkinson.png','image',528,560,45061,NULL,NULL,NULL,'2020-08-29 15:48:21','2020-08-29 15:43:51','2020-08-29 15:51:02','d40759f9-2b40-47a4-86bd-001b63691c1a'),(14,1,11,1,'Jonah-Adams.png','image',528,560,48676,NULL,NULL,NULL,'2020-08-29 15:54:23','2020-08-29 15:43:52','2020-08-29 15:54:23','01be0b18-25d0-4860-a0b3-77db285e7aea'),(15,1,12,1,'Leland-Whyte.png','image',528,560,42388,NULL,NULL,NULL,'2020-08-29 15:54:34','2020-08-29 15:43:53','2020-08-29 15:54:34','43143d3b-f76f-4d66-939d-0397538be08f'),(16,1,7,1,'Lewys-Kramer.png','image',528,560,46920,NULL,NULL,NULL,'2020-08-29 15:50:10','2020-08-29 15:43:54','2020-08-29 15:50:10','52b6ac37-7bc0-453b-9509-e2d36b2a5ff1'),(17,1,8,1,'Martin-Spencer.png','image',528,560,47152,NULL,NULL,NULL,'2020-08-29 15:46:48','2020-08-29 15:43:54','2020-08-29 15:50:37','9a854359-1f81-4666-bd3a-9c3770a372ad'),(18,1,14,1,'Nancy-Hope.png','image',528,560,60550,NULL,NULL,NULL,'2020-08-29 15:57:03','2020-08-29 15:43:55','2020-08-29 15:57:03','eadbee23-c41f-40f7-9094-10d91ddbf734'),(58,1,17,1,'Brady-Fopma.png','image',528,560,34272,NULL,NULL,NULL,'2020-08-29 18:36:26','2020-08-29 18:35:27','2020-08-29 18:36:26','39d82af9-2359-4eaa-a162-b455c02c20c4'),(59,1,18,1,'Carissa-Schoffelman.png','image',528,560,51129,NULL,NULL,NULL,'2020-08-29 18:37:46','2020-08-29 18:35:27','2020-08-29 18:37:46','0ac89b7e-47a9-4d96-9835-27e4dffa618f');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettransformindex`
--

DROP TABLE IF EXISTS `assettransformindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettransformindex`
--

LOCK TABLES `assettransformindex` WRITE;
/*!40000 ALTER TABLE `assettransformindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettransformindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettransforms`
--

DROP TABLE IF EXISTS `assettransforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `assettransforms_name_idx` (`name`),
  KEY `assettransforms_handle_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettransforms`
--

LOCK TABLES `assettransforms` WRITE;
/*!40000 ALTER TABLE `assettransforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettransforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `categories_groupId_idx` (`groupId`),
  KEY `categories_parentId_fk` (`parentId`),
  CONSTRAINT `categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categories_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorygroups`
--

DROP TABLE IF EXISTS `categorygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `categorygroups_name_idx` (`name`),
  KEY `categorygroups_handle_idx` (`handle`),
  KEY `categorygroups_structureId_idx` (`structureId`),
  KEY `categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `categorygroups_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorygroups`
--

LOCK TABLES `categorygroups` WRITE;
/*!40000 ALTER TABLE `categorygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorygroups_sites`
--

DROP TABLE IF EXISTS `categorygroups_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  KEY `categorygroups_sites_siteId_idx` (`siteId`),
  CONSTRAINT `categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorygroups_sites`
--

LOCK TABLES `categorygroups_sites` WRITE;
/*!40000 ALTER TABLE `categorygroups_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorygroups_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changedattributes`
--

DROP TABLE IF EXISTS `changedattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  KEY `changedattributes_elementId_siteId_dateUpdated_idx` (`elementId`,`siteId`,`dateUpdated`),
  KEY `changedattributes_siteId_fk` (`siteId`),
  KEY `changedattributes_userId_fk` (`userId`),
  CONSTRAINT `changedattributes_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `changedattributes_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `changedattributes_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changedattributes`
--

LOCK TABLES `changedattributes` WRITE;
/*!40000 ALTER TABLE `changedattributes` DISABLE KEYS */;
INSERT INTO `changedattributes` VALUES (19,1,'slug','2020-08-29 15:50:45',0,1),(19,1,'title','2020-08-29 15:50:45',0,1),(19,1,'uri','2020-08-29 15:50:45',0,1),(22,1,'slug','2020-08-29 15:50:38',0,1),(22,1,'title','2020-08-29 15:50:28',0,1),(22,1,'uri','2020-08-29 15:50:38',0,1),(25,1,'slug','2020-08-29 15:51:02',0,1),(25,1,'title','2020-08-29 15:50:17',0,1),(25,1,'uri','2020-08-29 15:51:02',0,1);
/*!40000 ALTER TABLE `changedattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changedfields`
--

DROP TABLE IF EXISTS `changedfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  KEY `changedfields_elementId_siteId_dateUpdated_idx` (`elementId`,`siteId`,`dateUpdated`),
  KEY `changedfields_siteId_fk` (`siteId`),
  KEY `changedfields_fieldId_fk` (`fieldId`),
  KEY `changedfields_userId_fk` (`userId`),
  CONSTRAINT `changedfields_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `changedfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `changedfields_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `changedfields_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changedfields`
--

LOCK TABLES `changedfields` WRITE;
/*!40000 ALTER TABLE `changedfields` DISABLE KEYS */;
INSERT INTO `changedfields` VALUES (19,1,2,'2020-08-29 15:48:36',0,1),(22,1,2,'2020-08-29 15:48:44',0,1),(38,1,4,'2020-08-29 15:54:34',0,1);
/*!40000 ALTER TABLE `changedfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_positionTitle` text,
  `field_emailAddress` text,
  `field_phoneNumber` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `content_siteId_idx` (`siteId`),
  KEY `content_title_idx` (`title`),
  CONSTRAINT `content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,1,1,NULL,'2020-08-29 14:35:55','2020-08-29 14:35:55','b6c32d0e-ac28-4616-9347-748f64977380',NULL,NULL,NULL),(2,2,1,NULL,'2020-08-29 15:23:04','2020-08-29 15:23:04','afdb2e2b-1f1d-4796-9460-5a6311fe0ae3',NULL,NULL,NULL),(3,3,1,'Dollie Rossi Profile','2020-08-29 15:27:55','2020-08-29 15:28:34','75fb4475-d077-4337-83c3-5f39aa2a7445',NULL,NULL,NULL),(4,4,1,NULL,'2020-08-29 15:34:54','2020-08-29 15:34:54','118534ab-8d91-4bb1-93e4-c9b2535a731b',NULL,NULL,NULL),(5,5,1,NULL,'2020-08-29 15:37:04','2020-08-29 15:37:04','024ffffc-806e-4d27-8c51-eb673973e588',NULL,NULL,NULL),(6,6,1,NULL,'2020-08-29 15:37:39','2020-08-29 15:37:39','5bc8e991-8747-4c5f-baa6-88b13329d747',NULL,NULL,NULL),(7,7,1,NULL,'2020-08-29 15:42:37','2020-08-29 15:42:37','fb78a2a6-1041-4c93-a38b-82bf866fe6cf',NULL,NULL,NULL),(9,9,1,'Blake hartman','2020-08-29 15:43:48','2020-08-29 16:11:48','49c9bfe8-e396-43eb-9bdf-cc72d6397c27',NULL,NULL,NULL),(10,10,1,'Dollie Rossi','2020-08-29 15:43:49','2020-08-29 16:11:47','63b6858d-e81e-484a-be64-ff9af4ac9ce2',NULL,NULL,NULL),(11,11,1,'Ernie Chavez','2020-08-29 15:43:49','2020-08-29 16:11:47','b316ab21-327a-4688-b2fd-48c350d50219',NULL,NULL,NULL),(12,12,1,'Gerard Soto','2020-08-29 15:43:50','2020-08-29 16:11:47','44c6e6c6-892c-41c7-9e62-e1073334a64f',NULL,NULL,NULL),(13,13,1,'Issa Atkinson','2020-08-29 15:43:51','2020-08-29 16:11:46','ebfd1e81-6b6d-49f0-a362-76597867ece9',NULL,NULL,NULL),(14,14,1,'Jonah Adams','2020-08-29 15:43:52','2020-08-29 16:11:47','787f9bf5-4804-4590-a75d-9b17a195e458',NULL,NULL,NULL),(15,15,1,'Leland Whyte','2020-08-29 15:43:52','2020-08-29 16:11:46','bbbdeaec-131e-4476-a92b-7dd3e32bcb97',NULL,NULL,NULL),(16,16,1,'Lewys Kramer','2020-08-29 15:43:53','2020-08-29 16:11:46','6a413f3b-3611-4c2d-82aa-e8ae854c338d',NULL,NULL,NULL),(17,17,1,'Martin Spencer','2020-08-29 15:43:54','2020-08-29 16:11:46','cfe7042a-fb98-4a95-bc10-98821e037b2d',NULL,NULL,NULL),(18,18,1,'Nancy Hope','2020-08-29 15:43:55','2020-08-29 16:11:48','baeac1d6-3bf9-4d49-a2ed-3318f4d84b59',NULL,NULL,NULL),(19,19,1,'Dollie Rossi','2020-08-29 15:45:46','2020-08-29 15:50:45','deb5d95a-9553-4527-8f46-594a000e196a','Director of SEO operations','Dollie@clickrain.com','555-555-1111'),(20,20,1,'Dollie Rossi Profile','2020-08-29 15:45:46','2020-08-29 15:45:46','4dde990f-356a-4497-9c44-1977349e60aa','Director of SEO operations','dollie@clickrain.com','555-555-1111'),(22,22,1,'Martin Spencer','2020-08-29 15:46:48','2020-08-29 15:50:37','f7f5282f-d0de-4031-8e05-a2f379caabe9','Digital Strategist','Martin@clickrain.com','555-555-2222'),(23,23,1,'Martin Spencer Profile','2020-08-29 15:46:49','2020-08-29 15:46:49','b6f778e6-afbb-474a-b681-cef7791ed42f','Digital Strategist','martin@clickrain.com','555-555-2222'),(25,25,1,'Issa Atkinson','2020-08-29 15:48:21','2020-08-29 15:51:02','082b0129-f6dc-48c7-8fcb-e88610099452','Director of Brand Strategy','Issa@clickrain.com','555-555-3333'),(26,26,1,'Issa Atkinson Profile','2020-08-29 15:48:21','2020-08-29 15:48:21','3204163d-c8fb-454d-83a3-5b634beaaed4','Director of Brand Strategy','Issa@clickrain.com','555-555-3333'),(27,27,1,'Dollie Rossi Profile','2020-08-29 15:48:36','2020-08-29 15:48:36','d4fdbd15-957f-4a89-86e2-d4e4b368ac73','Director of SEO operations','Dollie@clickrain.com','555-555-1111'),(28,28,1,'Martin Spencer Profile','2020-08-29 15:48:44','2020-08-29 15:48:44','83e02eba-97ac-4e6f-a6d9-7e64ccc2974b','Digital Strategist','Martin@clickrain.com','555-555-2222'),(30,30,1,'Lewys Kramer','2020-08-29 15:50:10','2020-08-29 15:50:10','a6a6f9df-dd17-4b2b-80b1-af2b7ecf98df','Media Relations Coordinator','Lewys@clickrain.com','555-555-4444'),(31,31,1,'Lewys Kramer','2020-08-29 15:50:10','2020-08-29 15:50:10','fc5a67c4-93c6-435b-b081-0acaf3028e7a','Media Relations Coordinator','Lewys@clickrain.com','555-555-4444'),(32,32,1,'Issa Atkinson','2020-08-29 15:50:17','2020-08-29 15:50:17','51e9fc68-082b-4fb1-89e6-e3ace4ef9321','Director of Brand Strategy','Issa@clickrain.com','555-555-3333'),(33,33,1,'Martin Spencer','2020-08-29 15:50:28','2020-08-29 15:50:28','7b657af3-b9f9-4c7e-a33d-514867ecc2da','Digital Strategist','Martin@clickrain.com','555-555-2222'),(34,34,1,'Martin Spencer','2020-08-29 15:50:37','2020-08-29 15:50:37','789f6495-d534-4ae1-864d-23d43d7b901e','Digital Strategist','Martin@clickrain.com','555-555-2222'),(35,35,1,'Dollie Rossi','2020-08-29 15:50:45','2020-08-29 15:50:45','d2c59ede-065c-47ba-9db8-10123d2e4880','Director of SEO operations','Dollie@clickrain.com','555-555-1111'),(36,36,1,'Issa Atkinson','2020-08-29 15:51:02','2020-08-29 15:51:02','10b28d96-a82f-40ce-b109-e4ec13e81c28','Director of Brand Strategy','Issa@clickrain.com','555-555-3333'),(38,38,1,'Leland Whyte','2020-08-29 15:53:36','2020-08-29 15:54:34','8bf2e258-06a4-4567-b4a5-f4b0d359368a','Ecommerce Marketing Analyst','Leland@clickrain.com','555-555-5555'),(39,39,1,'Leland Whyte','2020-08-29 15:53:36','2020-08-29 15:53:36','da27afb0-f1ec-4df5-a045-a96fcc83bf89','Ecommerce Marketing Analyst','Leland@clickrain.com','555-555-5555'),(41,41,1,'Jonah Adams','2020-08-29 15:54:23','2020-08-29 15:54:23','0e8ddaa6-9fdf-40d6-82fd-a290331608e2','Director of Market Research','Jonah@clickrain.com','555-555-6666'),(42,42,1,'Jonah Adams','2020-08-29 15:54:23','2020-08-29 15:54:23','40621305-ac12-4a0e-978f-7ce17bb66f8d','Director of Market Research','Jonah@clickrain.com','555-555-6666'),(43,43,1,'Leland Whyte','2020-08-29 15:54:34','2020-08-29 15:54:34','b5ce2c93-f0b0-42ba-b56d-770230abed6d','Ecommerce Marketing Analyst','Leland@clickrain.com','555-555-5555'),(45,45,1,'Gerard Soto','2020-08-29 15:55:57','2020-08-29 15:55:57','8d0628f0-ce34-4b22-897d-d2697dde20c9','Social Media Strategist','Gerard@clickrain.com','555-555-7777'),(46,46,1,'Gerard Soto','2020-08-29 15:55:57','2020-08-29 15:55:57','5caeb48f-d3b3-406e-80a2-53bf1f37585c','Social Media Strategist','Gerard@clickrain.com','555-555-7777'),(48,48,1,'Nancy Hope','2020-08-29 15:57:03','2020-08-29 15:57:03','18797c81-26a1-453c-8067-aa23da19b5ad','Digital Product Marketing Manager','Nancy@clickrain.com','555-555-8888'),(49,49,1,'Nancy Hope','2020-08-29 15:57:03','2020-08-29 15:57:03','4000f712-c5e2-4d9a-83f3-a72bd9ca7bb1','Digital Product Marketing Manager','Nancy@clickrain.com','555-555-8888'),(51,51,1,'Ernie Chavez','2020-08-29 15:58:23','2020-08-29 15:58:23','20b190a2-8571-422d-8c9a-a1c3f8fe19d5','Insights Analyst','Ernie@clickrain.com','555-555-9999'),(52,52,1,'Ernie Chavez','2020-08-29 15:58:23','2020-08-29 15:58:23','78530dfe-d457-4e20-a3c4-6b30a89d4c19','Insights Analyst','Ernie@clickrain.com','555-555-9999'),(54,54,1,'Blake Hartman','2020-08-29 15:58:55','2020-08-29 18:10:42','b16ff05e-c210-468e-af18-ddbb1100c812','Web Developer','Blake@clickrain.com','555-555-0000'),(55,55,1,'Blake Hartman','2020-08-29 15:58:55','2020-08-29 15:58:55','944ab4a0-545c-4235-9b2b-d8d89fbe8f22','Web Developer','Blake@clickrain.com','555-555-0000'),(56,56,1,'Blake Hartman','2020-08-29 18:10:42','2020-08-29 18:10:42','3ad2c45a-043e-4a50-8e2e-fad797447bb8','Web Developer','Blake@clickrain.com','555-555-0000'),(58,58,1,'Brady Fopma','2020-08-29 18:35:26','2020-08-29 18:36:26','a90998c9-4a9f-4f50-afb2-69a6444e749f',NULL,NULL,NULL),(59,59,1,'Carissa Schoffelman','2020-08-29 18:35:27','2020-08-29 18:37:46','3c284227-ff39-41bc-a93b-ff199a8a3a8b',NULL,NULL,NULL),(60,60,1,'Brady Fopma','2020-08-29 18:36:26','2020-08-29 18:36:26','830b0f53-d4ed-4356-8aa7-233ec8b8d28b','Director of Web Technologies','brady@clickrain.com','555-555-1212'),(61,61,1,'Brady Fopma','2020-08-29 18:36:26','2020-08-29 18:36:26','a128afb9-accf-4a86-808a-6130d822da8b','Director of Web Technologies','brady@clickrain.com','555-555-1212'),(63,63,1,'Carissa Schoffelman','2020-08-29 18:37:46','2020-08-29 18:37:46','da37ad40-37a3-4796-9480-ed9a80f871a7','VP of Administration','carissa@clickrain.com','555-555-2323'),(64,64,1,'Carissa Schoffelman','2020-08-29 18:37:46','2020-08-29 18:37:46','46e6a0a0-ef33-493c-bbf1-ea55ef5f2567','VP of Administration','carissa@clickrain.com','555-555-2323');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craftidtokens`
--

DROP TABLE IF EXISTS `craftidtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craftidtokens_userId_fk` (`userId`),
  CONSTRAINT `craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craftidtokens`
--

LOCK TABLES `craftidtokens` WRITE;
/*!40000 ALTER TABLE `craftidtokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `craftidtokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deprecationerrors`
--

DROP TABLE IF EXISTS `deprecationerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) unsigned DEFAULT NULL,
  `message` text,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deprecationerrors`
--

LOCK TABLES `deprecationerrors` WRITE;
/*!40000 ALTER TABLE `deprecationerrors` DISABLE KEYS */;
/*!40000 ALTER TABLE `deprecationerrors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drafts`
--

DROP TABLE IF EXISTS `drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `drafts_creatorId_fk` (`creatorId`),
  KEY `drafts_sourceId_fk` (`sourceId`),
  CONSTRAINT `drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drafts`
--

LOCK TABLES `drafts` WRITE;
/*!40000 ALTER TABLE `drafts` DISABLE KEYS */;
INSERT INTO `drafts` VALUES (1,NULL,1,'First draft',NULL,0,NULL),(2,NULL,1,'First draft','',0,NULL),(3,NULL,1,'First draft',NULL,0,NULL),(4,NULL,1,'First draft',NULL,0,NULL),(5,NULL,1,'First draft',NULL,0,NULL),(6,NULL,1,'First draft',NULL,0,NULL);
/*!40000 ALTER TABLE `drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elementindexsettings`
--

DROP TABLE IF EXISTS `elementindexsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementindexsettings`
--

LOCK TABLES `elementindexsettings` WRITE;
/*!40000 ALTER TABLE `elementindexsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `elementindexsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `elements_dateDeleted_idx` (`dateDeleted`),
  KEY `elements_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `elements_type_idx` (`type`),
  KEY `elements_enabled_idx` (`enabled`),
  KEY `elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  KEY `elements_archived_dateDeleted_draftId_revisionId_idx` (`archived`,`dateDeleted`,`draftId`,`revisionId`),
  KEY `elements_draftId_fk` (`draftId`),
  KEY `elements_revisionId_fk` (`revisionId`),
  CONSTRAINT `elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements`
--

LOCK TABLES `elements` WRITE;
/*!40000 ALTER TABLE `elements` DISABLE KEYS */;
INSERT INTO `elements` VALUES (1,NULL,NULL,NULL,'craft\\elements\\User',1,0,'2020-08-29 14:35:55','2020-08-29 14:35:55',NULL,'0ba30593-7ea4-4dd6-b5cb-727283384998'),(2,1,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:23:04','2020-08-29 15:23:04',NULL,'6dfd1635-38be-459b-8bf4-6cd137f138b7'),(3,2,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:27:55','2020-08-29 15:28:34',NULL,'040aa896-daee-4a9a-8291-f03d93dbed75'),(4,3,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:34:54','2020-08-29 15:34:54',NULL,'3527df32-1655-4005-8464-7a5b4cfe1449'),(5,4,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:37:04','2020-08-29 15:37:04',NULL,'8126d6fe-4e43-41cd-832d-ccf998b39c7a'),(6,5,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:37:39','2020-08-29 15:37:39',NULL,'1776f081-16e5-4ff5-b9f8-6f260f28885a'),(7,6,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:42:37','2020-08-29 15:42:37',NULL,'b4bfe8c4-3525-46fc-9bc1-4df74e992e85'),(9,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 15:43:48','2020-08-29 16:11:48',NULL,'8b98b2c0-ad1b-4233-a01f-57bb7c5991e3'),(10,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 15:43:49','2020-08-29 16:11:47',NULL,'5b7c6755-fe13-40bb-b43c-22c0301833a7'),(11,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 15:43:49','2020-08-29 16:11:47',NULL,'32679c42-1710-4e7d-9cf6-d7d530652ca1'),(12,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 15:43:50','2020-08-29 16:11:47',NULL,'aec94ab9-98c7-42ab-af1e-781b7a857c00'),(13,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 15:43:51','2020-08-29 16:11:46',NULL,'ba0b1e84-cfa3-4b42-b90d-5f621cfe0ff1'),(14,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 15:43:52','2020-08-29 16:11:47',NULL,'68dda9c5-7bb1-4fe9-90a1-610e8d3d4848'),(15,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 15:43:52','2020-08-29 16:11:46',NULL,'9b004a26-da29-4dd2-933f-f87703e552d6'),(16,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 15:43:53','2020-08-29 16:11:46',NULL,'556d77ac-a2ea-424c-82e2-87a5c8dd7610'),(17,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 15:43:54','2020-08-29 16:11:46',NULL,'75c84114-96bd-43e1-adbb-8bcd2e3f7ef1'),(18,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 15:43:55','2020-08-29 16:11:48',NULL,'21794fa0-76c3-4d38-8cc5-ea3f8b553a35'),(19,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:45:46','2020-08-29 15:50:45',NULL,'d2af667e-cb1f-4de9-8c5b-f48260993f81'),(20,NULL,1,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:45:46','2020-08-29 15:45:46',NULL,'f92bbb78-8b98-4193-9e8b-dcd23492d22e'),(22,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:46:48','2020-08-29 15:50:37',NULL,'6057abf0-f314-4799-a8ba-98c06eb0ce19'),(23,NULL,2,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:46:48','2020-08-29 15:46:48',NULL,'935769b8-520e-4210-93aa-1347c4d2056c'),(25,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:48:21','2020-08-29 15:51:02',NULL,'bbaf26c1-7796-4156-a97b-575b358be848'),(26,NULL,3,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:48:21','2020-08-29 15:48:21',NULL,'bbd97a6e-6816-4160-a228-ba7419b9dad3'),(27,NULL,4,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:48:36','2020-08-29 15:48:36',NULL,'22c57bf5-54c2-437a-8d42-240de1964822'),(28,NULL,5,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:48:44','2020-08-29 15:48:44',NULL,'ffe8ca16-3945-49b4-aa5d-d4207c9567e9'),(30,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:50:10','2020-08-29 15:50:10',NULL,'c109b210-27fe-4f37-bb59-e6cfe14978f8'),(31,NULL,6,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:50:10','2020-08-29 15:50:10',NULL,'d3f1d53f-ca39-4b97-bc67-2e3800aede3b'),(32,NULL,7,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:50:17','2020-08-29 15:50:17',NULL,'b0ec2fd5-8703-4d79-9abf-4f42a9de5ba9'),(33,NULL,8,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:50:28','2020-08-29 15:50:28',NULL,'ded19381-2107-4065-8bdf-dee3e97e7c79'),(34,NULL,9,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:50:37','2020-08-29 15:50:37',NULL,'1acd4bc7-f86a-487d-818b-9e06f39d732d'),(35,NULL,10,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:50:45','2020-08-29 15:50:45',NULL,'eadbce15-7521-4172-820e-1459712a9591'),(36,NULL,11,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:51:02','2020-08-29 15:51:02',NULL,'d524284e-664e-4192-a286-823e535e8b6a'),(38,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:53:36','2020-08-29 15:54:34',NULL,'cc849778-5d44-4293-bc37-ed6e92171697'),(39,NULL,12,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:53:36','2020-08-29 15:53:36',NULL,'bc225b76-6e64-4102-8b22-561bf4ae36e4'),(41,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:54:23','2020-08-29 15:54:23',NULL,'a766a6e1-2da8-4579-87be-d1c7de9a47d6'),(42,NULL,13,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:54:23','2020-08-29 15:54:23',NULL,'08e3c38e-5896-46b9-8dd2-15d60e2a0d71'),(43,NULL,14,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:54:34','2020-08-29 15:54:34',NULL,'9d11169f-2b6a-4b5b-a537-eca001930f4f'),(45,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:55:57','2020-08-29 15:55:57',NULL,'6e835180-a2e8-4c45-b658-a5c030cf41c7'),(46,NULL,15,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:55:57','2020-08-29 15:55:57',NULL,'eeebd33e-a9f2-45fd-b6e4-0f65f516214f'),(48,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:57:03','2020-08-29 15:57:03',NULL,'dd5d1e55-aabb-4f24-bf65-e015e63f3848'),(49,NULL,16,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:57:03','2020-08-29 15:57:03',NULL,'c472aa1a-15be-4d27-867c-82d0c613fe49'),(51,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:58:23','2020-08-29 15:58:23',NULL,'aebe56ab-c66b-48e8-af37-8d1d6232b9cd'),(52,NULL,17,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:58:23','2020-08-29 15:58:23',NULL,'15e4a950-d444-4597-b6f9-f882eb30f8f8'),(54,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:58:55','2020-08-29 18:10:42',NULL,'624a5d1b-d2a8-429d-bc57-0a09df41d31d'),(55,NULL,18,1,'craft\\elements\\Entry',1,0,'2020-08-29 15:58:55','2020-08-29 15:58:55',NULL,'8f6cd1b3-7939-48c1-97f0-c3871a4d2f49'),(56,NULL,19,1,'craft\\elements\\Entry',1,0,'2020-08-29 18:10:42','2020-08-29 18:10:42',NULL,'4b169121-d6a0-45be-b4c2-14d232aa4ae2'),(58,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 18:35:26','2020-08-29 18:36:26',NULL,'0ec1e752-2eac-493c-882a-da0b46482794'),(59,NULL,NULL,3,'craft\\elements\\Asset',1,0,'2020-08-29 18:35:27','2020-08-29 18:37:46',NULL,'04b3be96-bea6-430e-ab31-656068c992dc'),(60,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 18:36:26','2020-08-29 18:36:26',NULL,'c30344c8-d2c5-42cc-bb18-cf65ed509d44'),(61,NULL,20,1,'craft\\elements\\Entry',1,0,'2020-08-29 18:36:26','2020-08-29 18:36:26',NULL,'47e5e6f7-c289-4d6e-b652-43dfb765f7b8'),(63,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2020-08-29 18:37:46','2020-08-29 18:37:46',NULL,'18d4fc0e-1da9-4900-a195-eda06ddc8ea6'),(64,NULL,21,1,'craft\\elements\\Entry',1,0,'2020-08-29 18:37:46','2020-08-29 18:37:46',NULL,'d7bfb8ea-5746-455c-8a14-78697a5cdb64');
/*!40000 ALTER TABLE `elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elements_sites`
--

DROP TABLE IF EXISTS `elements_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `elements_sites_siteId_idx` (`siteId`),
  KEY `elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  KEY `elements_sites_enabled_idx` (`enabled`),
  KEY `elements_sites_uri_siteId_idx` (`uri`,`siteId`),
  CONSTRAINT `elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements_sites`
--

LOCK TABLES `elements_sites` WRITE;
/*!40000 ALTER TABLE `elements_sites` DISABLE KEYS */;
INSERT INTO `elements_sites` VALUES (1,1,1,NULL,NULL,1,'2020-08-29 14:35:55','2020-08-29 14:35:55','1c438201-7394-4700-9313-9606f2721ffe'),(2,2,1,'__temp_dzqqoozbauammggfyqndxgyhqrolxlnhavfp','team-members/__temp_dzqqoozbauammggfyqndxgyhqrolxlnhavfp',1,'2020-08-29 15:23:04','2020-08-29 15:23:04','03cf0ab9-4328-4fca-a226-80ed149530e2'),(3,3,1,'dollie-rossi-profile','team-members/dollie-rossi-profile',1,'2020-08-29 15:27:55','2020-08-29 15:28:34','b350dc53-9c91-4a6c-aed4-fa5fef000e87'),(4,4,1,'__temp_fmqagqbshkenujjlwqhfawzahfhblccawqmk','team-members/__temp_fmqagqbshkenujjlwqhfawzahfhblccawqmk',1,'2020-08-29 15:34:54','2020-08-29 15:34:54','90d10813-6117-493f-a4fa-c6389f01a4d2'),(5,5,1,'__temp_mxdptnjpmwapisjtbabppkpxqyktywtjqfbj','team-members/__temp_mxdptnjpmwapisjtbabppkpxqyktywtjqfbj',1,'2020-08-29 15:37:04','2020-08-29 15:37:04','ab01ea07-6b66-462a-ad1a-3aff7578dc27'),(6,6,1,'__temp_lscphdtccrfagtttollkvuukyyqaephinbzu','team-members/__temp_lscphdtccrfagtttollkvuukyyqaephinbzu',1,'2020-08-29 15:37:39','2020-08-29 15:37:39','b23501a7-fbb5-4f8d-9eb1-cc36d6cfc1e8'),(7,7,1,'__temp_adajtvdglevawfvzwaiizksnvgdyhjptripi','team-members/__temp_adajtvdglevawfvzwaiizksnvgdyhjptripi',1,'2020-08-29 15:42:37','2020-08-29 15:42:37','2bf881d4-b099-4a7f-9c54-0611486bafd7'),(9,9,1,NULL,NULL,1,'2020-08-29 15:43:48','2020-08-29 15:43:48','443d13dd-2763-4aa7-9e31-4e6f78808d89'),(10,10,1,NULL,NULL,1,'2020-08-29 15:43:49','2020-08-29 15:43:49','a395c303-2595-4585-bfaa-2419dd0dad39'),(11,11,1,NULL,NULL,1,'2020-08-29 15:43:49','2020-08-29 15:43:49','197c5ac7-2915-4d2b-934a-a3ae5b2a5478'),(12,12,1,NULL,NULL,1,'2020-08-29 15:43:50','2020-08-29 15:43:50','baca3e6f-65f2-4fdd-951e-559f8538a100'),(13,13,1,NULL,NULL,1,'2020-08-29 15:43:51','2020-08-29 15:43:51','54590fc7-78db-4b48-9671-cab3ef23261d'),(14,14,1,NULL,NULL,1,'2020-08-29 15:43:52','2020-08-29 15:43:52','ade0fcb7-7fcf-4fb2-bb32-b7e5757d0bfb'),(15,15,1,NULL,NULL,1,'2020-08-29 15:43:52','2020-08-29 15:43:52','bd37143a-8920-44ad-845a-ee124b5b9ec7'),(16,16,1,NULL,NULL,1,'2020-08-29 15:43:53','2020-08-29 15:43:53','31f75890-ef92-4984-b293-203385af3186'),(17,17,1,NULL,NULL,1,'2020-08-29 15:43:54','2020-08-29 15:43:54','d266ba8d-d14a-4dbb-a106-197dc9e95ffa'),(18,18,1,NULL,NULL,1,'2020-08-29 15:43:55','2020-08-29 15:43:55','68698128-37c3-47cf-a00d-b10285cb513c'),(19,19,1,'dollie-rossi','team-members/dollie-rossi',1,'2020-08-29 15:45:46','2020-08-29 15:50:45','4b3d003d-6d03-4145-aee4-ca94903ecc7f'),(20,20,1,'dollie-rossi-profile','team-members/dollie-rossi-profile',1,'2020-08-29 15:45:46','2020-08-29 15:45:46','e8b0e4eb-5344-40ac-a350-9eb58e34be0d'),(22,22,1,'martin-spencer','team-members/martin-spencer',1,'2020-08-29 15:46:48','2020-08-29 15:50:37','aa73cba7-7d6c-4012-8793-b94da380e081'),(23,23,1,'martin-spencer-profile','team-members/martin-spencer-profile',1,'2020-08-29 15:46:49','2020-08-29 15:46:49','b3c48264-29f6-4f9f-9551-3b99d6ed6bd2'),(25,25,1,'issa-atkinson','team-members/issa-atkinson',1,'2020-08-29 15:48:21','2020-08-29 15:51:02','c2d02bd6-cb7b-4d86-86ac-5d3ba75aa3a2'),(26,26,1,'issa-atkinson-profile','team-members/issa-atkinson-profile',1,'2020-08-29 15:48:21','2020-08-29 15:48:21','4b531d13-c26f-4598-acc8-0fbd1f074134'),(27,27,1,'dollie-rossi-profile','team-members/dollie-rossi-profile',1,'2020-08-29 15:48:36','2020-08-29 15:48:36','eb796aa6-8288-46b1-8821-b456d3cf4e11'),(28,28,1,'martin-spencer-profile','team-members/martin-spencer-profile',1,'2020-08-29 15:48:44','2020-08-29 15:48:44','b324b3a3-6cdf-40e6-b7de-9a2a8935f068'),(30,30,1,'lewys-kramer','team-members/lewys-kramer',1,'2020-08-29 15:50:10','2020-08-29 15:50:10','140528d3-1075-46a3-af00-87ace5075a1e'),(31,31,1,'lewys-kramer','team-members/lewys-kramer',1,'2020-08-29 15:50:10','2020-08-29 15:50:10','70205c80-d21d-4665-a0a0-32d28c63a317'),(32,32,1,'issa-atkinson-profile','team-members/issa-atkinson-profile',1,'2020-08-29 15:50:17','2020-08-29 15:50:17','247452c9-fdc3-42ef-bb94-d4c5c29ee2f0'),(33,33,1,'martin-spencer-profile','team-members/martin-spencer-profile',1,'2020-08-29 15:50:28','2020-08-29 15:50:28','a7478c84-c5b9-4b6a-b356-455ca8657a09'),(34,34,1,'martin-spencer','team-members/martin-spencer',1,'2020-08-29 15:50:37','2020-08-29 15:50:37','0564b389-6775-4b2b-860f-df48c86390e1'),(35,35,1,'dollie-rossi','team-members/dollie-rossi',1,'2020-08-29 15:50:45','2020-08-29 15:50:45','84f19002-6a1c-4151-8010-c76aad43b93e'),(36,36,1,'issa-atkinson','team-members/issa-atkinson',1,'2020-08-29 15:51:02','2020-08-29 15:51:02','152ea061-cae3-4693-924c-f4993e66d827'),(38,38,1,'leland-whyte','team-members/leland-whyte',1,'2020-08-29 15:53:36','2020-08-29 15:53:36','b119ebee-23b7-474c-adbc-7a48e5e6e8a7'),(39,39,1,'leland-whyte','team-members/leland-whyte',1,'2020-08-29 15:53:36','2020-08-29 15:53:36','85d06f32-7a5f-441f-a66c-7518d4a17c6b'),(41,41,1,'jonah-adams','team-members/jonah-adams',1,'2020-08-29 15:54:23','2020-08-29 15:54:23','4fb83bb0-3e82-49d7-827c-5e04aa2c4143'),(42,42,1,'jonah-adams','team-members/jonah-adams',1,'2020-08-29 15:54:23','2020-08-29 15:54:23','5ac49093-52ad-48c2-856c-bd4ee2bf7333'),(43,43,1,'leland-whyte','team-members/leland-whyte',1,'2020-08-29 15:54:34','2020-08-29 15:54:34','f285378d-e0bd-4a7e-9a38-1ff78c47202d'),(45,45,1,'gerard-soto','team-members/gerard-soto',1,'2020-08-29 15:55:57','2020-08-29 15:55:57','9041bb83-7014-45d0-9fcf-7f0a6585dab9'),(46,46,1,'gerard-soto','team-members/gerard-soto',1,'2020-08-29 15:55:57','2020-08-29 15:55:57','7b7eeb11-504a-453f-ac8c-39b866809eb2'),(48,48,1,'nancy-hope','team-members/nancy-hope',1,'2020-08-29 15:57:03','2020-08-29 15:57:03','ca7dba65-2f19-49b6-9b20-09137000307e'),(49,49,1,'nancy-hope','team-members/nancy-hope',1,'2020-08-29 15:57:03','2020-08-29 15:57:03','d696adf6-1486-44c4-bb44-ba0556e6a3b4'),(51,51,1,'ernie-chavez','team-members/ernie-chavez',1,'2020-08-29 15:58:23','2020-08-29 15:58:23','f37c40be-958f-4108-b0ff-86fe9e99c246'),(52,52,1,'ernie-chavez','team-members/ernie-chavez',1,'2020-08-29 15:58:23','2020-08-29 15:58:23','7ed674a1-5921-488b-9207-65c554918dc9'),(54,54,1,'blake-hartman','team-members/blake-hartman',1,'2020-08-29 15:58:55','2020-08-29 15:58:55','b2295deb-e419-4b9c-a53b-7e6630b8bfe3'),(55,55,1,'blake-hartman','team-members/blake-hartman',1,'2020-08-29 15:58:55','2020-08-29 15:58:55','868ed177-278e-4f18-bf4b-f54dd20d1e93'),(56,56,1,'blake-hartman','team-members/blake-hartman',1,'2020-08-29 18:10:42','2020-08-29 18:10:42','f1949b73-0165-4114-8f1c-ea7e7ac61fc3'),(58,58,1,NULL,NULL,1,'2020-08-29 18:35:26','2020-08-29 18:35:26','0cd63f89-6c51-46fd-8ae9-87e7ac6ee129'),(59,59,1,NULL,NULL,1,'2020-08-29 18:35:27','2020-08-29 18:35:27','b5955dc8-ec52-471f-89ba-8a225370e2df'),(60,60,1,'brady-fopma','team-members/brady-fopma',1,'2020-08-29 18:36:26','2020-08-29 18:36:26','eea6e1c2-da8c-4cae-baa3-1d908be2b2c6'),(61,61,1,'brady-fopma','team-members/brady-fopma',1,'2020-08-29 18:36:26','2020-08-29 18:36:26','f2ac74e2-cfe0-4b03-9ddb-2c5e27ef2e78'),(63,63,1,'carissa-schoffelman','team-members/carissa-schoffelman',1,'2020-08-29 18:37:46','2020-08-29 18:37:46','03022233-9ffa-46ca-9f3e-5ff9260e9748'),(64,64,1,'carissa-schoffelman','team-members/carissa-schoffelman',1,'2020-08-29 18:37:46','2020-08-29 18:37:46','b6d7a939-8852-4ab7-815e-13c6d511fdf2');
/*!40000 ALTER TABLE `elements_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entries_postDate_idx` (`postDate`),
  KEY `entries_expiryDate_idx` (`expiryDate`),
  KEY `entries_authorId_idx` (`authorId`),
  KEY `entries_sectionId_idx` (`sectionId`),
  KEY `entries_typeId_idx` (`typeId`),
  KEY `entries_parentId_fk` (`parentId`),
  CONSTRAINT `entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `entries_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  CONSTRAINT `entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (2,1,NULL,1,1,'2020-08-29 15:23:00',NULL,NULL,'2020-08-29 15:23:04','2020-08-29 15:23:04','b43edc72-d444-4610-8a9b-aafae9397691'),(3,1,NULL,1,1,'2020-08-29 15:27:00',NULL,NULL,'2020-08-29 15:27:55','2020-08-29 15:27:55','905ef3c9-b53f-4545-8ad0-91861ff3bf39'),(4,1,NULL,1,1,'2020-08-29 15:34:00',NULL,NULL,'2020-08-29 15:34:54','2020-08-29 15:34:54','b6157cd0-656b-4cf7-bafc-813140b2905c'),(5,1,NULL,1,1,'2020-08-29 15:37:00',NULL,NULL,'2020-08-29 15:37:04','2020-08-29 15:37:04','784f74e2-6e6c-40e6-8ae9-0c10ce7a93f7'),(6,1,NULL,1,1,'2020-08-29 15:37:00',NULL,NULL,'2020-08-29 15:37:39','2020-08-29 15:37:39','7713a086-ca08-4a05-a1f0-2c95e76c51fc'),(7,1,NULL,1,1,'2020-08-29 15:42:00',NULL,NULL,'2020-08-29 15:42:37','2020-08-29 15:42:37','0cf8b1d2-f3df-471a-ae9d-22bc59f0f9d1'),(19,1,NULL,1,1,'2020-08-29 15:43:00',NULL,NULL,'2020-08-29 15:45:46','2020-08-29 15:45:46','c9074859-ed9f-48a2-9564-7795a9bdfd4b'),(20,1,NULL,1,1,'2020-08-29 15:43:00',NULL,NULL,'2020-08-29 15:45:46','2020-08-29 15:45:46','cd61be58-c363-49e2-8c30-9bfd8a0a1931'),(22,1,NULL,1,1,'2020-08-29 15:45:00',NULL,NULL,'2020-08-29 15:46:48','2020-08-29 15:46:48','2cb2c33e-beb1-43dc-b5bd-d5fa8c8244c8'),(23,1,NULL,1,1,'2020-08-29 15:45:00',NULL,NULL,'2020-08-29 15:46:49','2020-08-29 15:46:49','8144fd0c-c2d5-4953-bfc1-cd49f67db797'),(25,1,NULL,1,1,'2020-08-29 15:46:00',NULL,NULL,'2020-08-29 15:48:21','2020-08-29 15:48:21','e522810a-157b-43fe-9cad-562977254c99'),(26,1,NULL,1,1,'2020-08-29 15:46:00',NULL,NULL,'2020-08-29 15:48:21','2020-08-29 15:48:21','5b9f8368-c04f-47fa-a2c4-7c6f332abfdc'),(27,1,NULL,1,1,'2020-08-29 15:43:00',NULL,NULL,'2020-08-29 15:48:36','2020-08-29 15:48:36','9c414a41-6f02-4502-9983-267b796039ea'),(28,1,NULL,1,1,'2020-08-29 15:45:00',NULL,NULL,'2020-08-29 15:48:44','2020-08-29 15:48:44','64b32a37-d2d8-4eec-88fe-419b717145c9'),(30,1,NULL,1,1,'2020-08-29 15:48:00',NULL,NULL,'2020-08-29 15:50:10','2020-08-29 15:50:10','23a540be-4054-498d-8099-10b819396f6e'),(31,1,NULL,1,1,'2020-08-29 15:48:00',NULL,NULL,'2020-08-29 15:50:10','2020-08-29 15:50:10','435b77a1-0ffc-47bf-9786-28c1c960853f'),(32,1,NULL,1,1,'2020-08-29 15:46:00',NULL,NULL,'2020-08-29 15:50:17','2020-08-29 15:50:17','db4dec26-76a8-461c-9a02-ba6df38f3a04'),(33,1,NULL,1,1,'2020-08-29 15:45:00',NULL,NULL,'2020-08-29 15:50:28','2020-08-29 15:50:28','cd7b4153-4f72-47ec-808a-a75c3e3f4fd3'),(34,1,NULL,1,1,'2020-08-29 15:45:00',NULL,NULL,'2020-08-29 15:50:37','2020-08-29 15:50:37','2be24075-df5e-4d81-bf6a-510ace0f045d'),(35,1,NULL,1,1,'2020-08-29 15:43:00',NULL,NULL,'2020-08-29 15:50:45','2020-08-29 15:50:45','d3ac1bcf-9aa9-4d66-92f6-9da7d7bbe06e'),(36,1,NULL,1,1,'2020-08-29 15:46:00',NULL,NULL,'2020-08-29 15:51:02','2020-08-29 15:51:02','686ece9c-9ee0-49de-8f5c-809051fc26c8'),(38,1,NULL,1,1,'2020-08-29 15:52:00',NULL,NULL,'2020-08-29 15:53:36','2020-08-29 15:53:36','a6cc2f9d-dce0-4cab-979d-18909cad2b8f'),(39,1,NULL,1,1,'2020-08-29 15:52:00',NULL,NULL,'2020-08-29 15:53:36','2020-08-29 15:53:36','629b93d1-37d5-435b-b788-e4bb277b0473'),(41,1,NULL,1,1,'2020-08-29 15:53:00',NULL,NULL,'2020-08-29 15:54:23','2020-08-29 15:54:23','d6c0ec7f-450d-4474-8c87-ce2315105e6a'),(42,1,NULL,1,1,'2020-08-29 15:53:00',NULL,NULL,'2020-08-29 15:54:23','2020-08-29 15:54:23','e7a2684a-27f6-4221-9c8a-3cbfd48c81e5'),(43,1,NULL,1,1,'2020-08-29 15:52:00',NULL,NULL,'2020-08-29 15:54:34','2020-08-29 15:54:34','7ad5d45f-c670-438b-958a-4f3cb625b5a3'),(45,1,NULL,1,1,'2020-08-29 15:54:00',NULL,NULL,'2020-08-29 15:55:57','2020-08-29 15:55:57','77831843-4a29-441b-87f2-4e40124a2f61'),(46,1,NULL,1,1,'2020-08-29 15:54:00',NULL,NULL,'2020-08-29 15:55:57','2020-08-29 15:55:57','1065ad38-080b-4e49-937d-394a111e94cd'),(48,1,NULL,1,1,'2020-08-29 15:56:00',NULL,NULL,'2020-08-29 15:57:03','2020-08-29 15:57:03','a9012d6c-cce4-4a0e-9c62-8a346f8543b3'),(49,1,NULL,1,1,'2020-08-29 15:56:00',NULL,NULL,'2020-08-29 15:57:03','2020-08-29 15:57:03','2c4f7076-4c1f-4036-abb0-b3c5695e8111'),(51,1,NULL,1,1,'2020-08-29 15:57:00',NULL,NULL,'2020-08-29 15:58:23','2020-08-29 15:58:23','b5124847-7dc0-49d3-be79-e0a07bca517d'),(52,1,NULL,1,1,'2020-08-29 15:57:00',NULL,NULL,'2020-08-29 15:58:23','2020-08-29 15:58:23','f4132876-c8a8-41c2-be8b-9c164c3eaef1'),(54,1,NULL,1,1,'2020-08-29 15:58:00',NULL,NULL,'2020-08-29 15:58:55','2020-08-29 15:58:55','766e41a7-4de3-4495-b80f-09aeadd26d3c'),(55,1,NULL,1,1,'2020-08-29 15:58:00',NULL,NULL,'2020-08-29 15:58:55','2020-08-29 15:58:55','a098076f-286e-4e94-8a7f-6ca54ae32325'),(56,1,NULL,1,1,'2020-08-29 15:58:00',NULL,NULL,'2020-08-29 18:10:42','2020-08-29 18:10:42','521ba13a-7d00-4f5e-96ed-74ae83da3ceb'),(60,1,NULL,1,1,'2020-08-29 18:34:00',NULL,NULL,'2020-08-29 18:36:26','2020-08-29 18:36:26','bf1aa7f6-129e-42c5-b44e-df754f4f55ae'),(61,1,NULL,1,1,'2020-08-29 18:34:00',NULL,NULL,'2020-08-29 18:36:26','2020-08-29 18:36:26','ba5c063d-733c-4305-a971-b402d881a0da'),(63,1,NULL,1,1,'2020-08-29 18:36:00',NULL,NULL,'2020-08-29 18:37:46','2020-08-29 18:37:46','768c5695-9bff-44e7-9003-58df27e0d089'),(64,1,NULL,1,1,'2020-08-29 18:36:00',NULL,NULL,'2020-08-29 18:37:46','2020-08-29 18:37:46','2538ded9-01ca-470f-8898-bce7ef30ce47');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrytypes`
--

DROP TABLE IF EXISTS `entrytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  KEY `entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  KEY `entrytypes_sectionId_idx` (`sectionId`),
  KEY `entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `entrytypes_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrytypes`
--

LOCK TABLES `entrytypes` WRITE;
/*!40000 ALTER TABLE `entrytypes` DISABLE KEYS */;
INSERT INTO `entrytypes` VALUES (1,1,1,'Team Members','teamMembers',1,'site',NULL,NULL,1,'2020-08-29 14:40:40','2020-08-29 14:40:40',NULL,'3a773fd2-1bd1-42ba-8dc1-932dbd417b7e'),(2,1,2,'Default Team Members','defaultTeamMembers',1,'site',NULL,NULL,2,'2020-08-29 15:26:42','2020-08-29 15:26:42','2020-08-29 15:27:07','ee5384b5-0147-4f3d-b590-101aeba4aa7b');
/*!40000 ALTER TABLE `entrytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fieldgroups_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups`
--

LOCK TABLES `fieldgroups` WRITE;
/*!40000 ALTER TABLE `fieldgroups` DISABLE KEYS */;
INSERT INTO `fieldgroups` VALUES (1,'Common','2020-08-29 14:35:54','2020-08-29 14:35:54','22a4cb8c-09d7-4561-adf3-5b4ad79ba412');
/*!40000 ALTER TABLE `fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayoutfields`
--

DROP TABLE IF EXISTS `fieldlayoutfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `fieldlayoutfields_tabId_idx` (`tabId`),
  KEY `fieldlayoutfields_fieldId_idx` (`fieldId`),
  CONSTRAINT `fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutfields`
--

LOCK TABLES `fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `fieldlayoutfields` DISABLE KEYS */;
INSERT INTO `fieldlayoutfields` VALUES (1,2,2,4,0,1,'2020-08-29 15:26:42','2020-08-29 15:26:42','4b317731-5d80-458e-a640-bbd4b13c56c1'),(2,2,2,1,0,2,'2020-08-29 15:26:42','2020-08-29 15:26:42','2d2690fd-4f17-422b-b005-b45894fa1e54'),(3,2,2,2,0,3,'2020-08-29 15:26:42','2020-08-29 15:26:42','fd2c4c36-2294-4155-af81-fc24319472b3'),(4,2,2,3,0,4,'2020-08-29 15:26:42','2020-08-29 15:26:42','0b901a21-20c5-4039-bcec-71296fc81756'),(5,1,3,4,0,1,'2020-08-29 15:27:48','2020-08-29 15:27:48','ca3e3110-ed4d-44b0-883d-c7c613fe1475'),(6,1,3,1,0,2,'2020-08-29 15:27:48','2020-08-29 15:27:48','e5ac88c3-6fa9-402d-adde-132bb8bb1fa6'),(7,1,3,2,0,3,'2020-08-29 15:27:48','2020-08-29 15:27:48','f5e7ed49-d25a-4b02-8f95-07746a9fa5bd'),(8,1,3,3,0,4,'2020-08-29 15:27:48','2020-08-29 15:27:48','02adf9f0-ac46-4431-bd06-189d73900ba7'),(17,3,12,4,0,1,'2020-08-29 18:17:42','2020-08-29 18:17:42','235e69a9-a0ee-4f72-9a02-6fe3c00811dd');
/*!40000 ALTER TABLE `fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayouts`
--

DROP TABLE IF EXISTS `fieldlayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  KEY `fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayouts`
--

LOCK TABLES `fieldlayouts` WRITE;
/*!40000 ALTER TABLE `fieldlayouts` DISABLE KEYS */;
INSERT INTO `fieldlayouts` VALUES (1,'craft\\elements\\Entry','2020-08-29 14:40:40','2020-08-29 14:40:40',NULL,'54babd43-a61a-4097-a2a6-06b0f12c9c16'),(2,'craft\\elements\\Entry','2020-08-29 15:26:42','2020-08-29 15:26:42','2020-08-29 15:27:07','1b52d630-3e97-4c03-a7e5-26c29dd995c0'),(3,'craft\\elements\\Asset','2020-08-29 15:42:30','2020-08-29 15:42:30',NULL,'f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a');
/*!40000 ALTER TABLE `fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayouttabs`
--

DROP TABLE IF EXISTS `fieldlayouttabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `elements` text,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `fieldlayouttabs_layoutId_idx` (`layoutId`),
  CONSTRAINT `fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayouttabs`
--

LOCK TABLES `fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `fieldlayouttabs` DISABLE KEYS */;
INSERT INTO `fieldlayouttabs` VALUES (2,2,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":\"__blank__\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":false,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"930e2736-e1e4-4a3b-b229-61dddb2f7825\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5c733a92-f0a5-4484-ace7-963ecd4891ff\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f2212641-ad5e-4e1b-80cb-89d73b257eb6\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"2b0bef58-70d6-4e10-9e23-e6d706b15d60\"}]',1,'2020-08-29 15:26:42','2020-08-29 15:26:42','ef4442ec-c8ff-4854-93c5-a3759793bb52'),(3,1,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"930e2736-e1e4-4a3b-b229-61dddb2f7825\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5c733a92-f0a5-4484-ace7-963ecd4891ff\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f2212641-ad5e-4e1b-80cb-89d73b257eb6\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"2b0bef58-70d6-4e10-9e23-e6d706b15d60\"}]',1,'2020-08-29 15:27:48','2020-08-29 15:27:48','282e130a-5a49-4d5a-aa31-cc54673a31b0'),(12,3,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"930e2736-e1e4-4a3b-b229-61dddb2f7825\"}]',1,'2020-08-29 18:17:42','2020-08-29 18:17:42','6e49eb12-446c-4d24-b470-4a52c021e6e8');
/*!40000 ALTER TABLE `fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fields_handle_context_idx` (`handle`,`context`),
  KEY `fields_groupId_idx` (`groupId`),
  KEY `fields_context_idx` (`context`),
  CONSTRAINT `fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,1,'Position Title','positionTitle','global','Enter your professional title',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"e.g. Co-Chair, Party Planning Committee\",\"uiMode\":\"normal\"}','2020-08-29 14:45:10','2020-08-29 14:45:10','5c733a92-f0a5-4484-ace7-963ecd4891ff'),(2,1,'Email Address','emailAddress','global','Your work email address',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"e.g. - m.scott@dundermifflin.co\",\"uiMode\":\"normal\"}','2020-08-29 14:46:47','2020-08-29 14:46:47','f2212641-ad5e-4e1b-80cb-89d73b257eb6'),(3,1,'Phone Number','phoneNumber','global','Your office phone number',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"e.g. 555-555-6789\",\"uiMode\":\"normal\"}','2020-08-29 14:47:35','2020-08-29 14:47:35','2b0bef58-70d6-4e10-9e23-e6d706b15d60'),(4,1,'Featured Image','featuredImage','global','Showoff the best photo of yourself here',0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc\",\"defaultUploadLocationSubpath\":\"/assets/images\",\"limit\":\"1\",\"localizeRelations\":false,\"restrictFiles\":\"\",\"selectionLabel\":\"Add your photo here\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc\",\"singleUploadLocationSubpath\":\"{slug}\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":true,\"validateRelatedElements\":false,\"viewMode\":\"large\"}','2020-08-29 14:49:27','2020-08-29 15:43:09','930e2736-e1e4-4a3b-b229-61dddb2f7825');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globalsets`
--

DROP TABLE IF EXISTS `globalsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `globalsets_name_idx` (`name`),
  KEY `globalsets_handle_idx` (`handle`),
  KEY `globalsets_fieldLayoutId_idx` (`fieldLayoutId`),
  CONSTRAINT `globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globalsets`
--

LOCK TABLES `globalsets` WRITE;
/*!40000 ALTER TABLE `globalsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `globalsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gqlschemas`
--

DROP TABLE IF EXISTS `gqlschemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `scope` text,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gqlschemas`
--

LOCK TABLES `gqlschemas` WRITE;
/*!40000 ALTER TABLE `gqlschemas` DISABLE KEYS */;
INSERT INTO `gqlschemas` VALUES (1,'Public Schema','[\"sections.104a1fa0-78ee-41b8-9acf-a63f50312e02:read\",\"entrytypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e:read\",\"volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc:read\",\"usergroups.everyone:read\",\"sections.104a1fa0-78ee-41b8-9acf-a63f50312e02:edit\",\"entrytypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e:edit\",\"entrytypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e:create\",\"entrytypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e:save\",\"entrytypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e:delete\",\"volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc:edit\",\"volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc:create\",\"volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc:save\",\"volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc:delete\"]',1,'2020-08-29 15:12:07','2020-08-29 16:02:31','f3ce7df7-105c-44d8-9092-b38244c356d1');
/*!40000 ALTER TABLE `gqlschemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gqltokens`
--

DROP TABLE IF EXISTS `gqltokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gqltokens_accessToken_unq_idx` (`accessToken`),
  UNIQUE KEY `gqltokens_name_unq_idx` (`name`),
  KEY `gqltokens_schemaId_fk` (`schemaId`),
  CONSTRAINT `gqltokens_schemaId_fk` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gqltokens`
--

LOCK TABLES `gqltokens` WRITE;
/*!40000 ALTER TABLE `gqltokens` DISABLE KEYS */;
INSERT INTO `gqltokens` VALUES (1,'Public Token','__PUBLIC__',1,NULL,NULL,1,'2020-08-29 15:12:07','2020-08-29 15:12:07','299dad54-845d-4e33-b2c2-f5baf28bf0dd');
/*!40000 ALTER TABLE `gqltokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'3.5.7','3.5.13',0,'vdfqibqcpnyt','brevfkzrwgkx','2020-08-29 14:35:54','2020-08-29 18:14:52','83885515-a845-4214-a818-174e6b3e27fe');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrixblocks`
--

DROP TABLE IF EXISTS `matrixblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `matrixblocks_ownerId_idx` (`ownerId`),
  KEY `matrixblocks_fieldId_idx` (`fieldId`),
  KEY `matrixblocks_typeId_idx` (`typeId`),
  KEY `matrixblocks_sortOrder_idx` (`sortOrder`),
  CONSTRAINT `matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrixblocks`
--

LOCK TABLES `matrixblocks` WRITE;
/*!40000 ALTER TABLE `matrixblocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrixblocktypes`
--

DROP TABLE IF EXISTS `matrixblocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `matrixblocktypes_name_fieldId_idx` (`name`,`fieldId`),
  KEY `matrixblocktypes_handle_fieldId_idx` (`handle`,`fieldId`),
  KEY `matrixblocktypes_fieldId_idx` (`fieldId`),
  KEY `matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`),
  CONSTRAINT `matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrixblocktypes`
--

LOCK TABLES `matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `matrixblocktypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `migrations_track_name_unq_idx` (`track`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'craft','Install','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f374edd3-b252-4753-8e7d-32b143da5299'),(2,'craft','m150403_183908_migrations_table_changes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','0502024b-ea92-40da-b784-6d49f7f70131'),(3,'craft','m150403_184247_plugins_table_changes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','33c7525d-79ee-410c-9c78-6d0af95ed8f4'),(4,'craft','m150403_184533_field_version','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','284cbf57-2039-4c2c-93cc-8ec9321d3337'),(5,'craft','m150403_184729_type_columns','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','921dba3f-8c20-471d-8ac0-b058952bdc53'),(6,'craft','m150403_185142_volumes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','b060792d-6262-4d85-b764-6b8c20e6125d'),(7,'craft','m150428_231346_userpreferences','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','c76cc987-b8cb-4d4c-af8f-5066ac0f5ffd'),(8,'craft','m150519_150900_fieldversion_conversion','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','2687d1c5-17ed-4787-be1d-c2898acf6c8a'),(9,'craft','m150617_213829_update_email_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','02c31e9e-99ea-475c-88fd-614bb5658bcc'),(10,'craft','m150721_124739_templatecachequeries','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','7d504c01-0f29-4280-8248-569be8a152f0'),(11,'craft','m150724_140822_adjust_quality_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','48ebb351-e7a9-4862-9095-5a35b122e322'),(12,'craft','m150815_133521_last_login_attempt_ip','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','99b4f5d1-4bd1-4d96-88e0-f451ef689028'),(13,'craft','m151002_095935_volume_cache_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','c9179305-fdde-4f2e-b8d2-865c36cca20f'),(14,'craft','m151005_142750_volume_s3_storage_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','4417149e-9f68-480c-85f6-3af174ada403'),(15,'craft','m151016_133600_delete_asset_thumbnails','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f8ac5f2a-d7f5-48b5-9207-4d9e70264390'),(16,'craft','m151209_000000_move_logo','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','d8198282-aab7-4caa-94c8-43b15002492c'),(17,'craft','m151211_000000_rename_fileId_to_assetId','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','448bd09b-ade6-474f-872e-3022c3c3496c'),(18,'craft','m151215_000000_rename_asset_permissions','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','1202a064-e876-4223-9a2d-43f873c0746e'),(19,'craft','m160707_000001_rename_richtext_assetsource_setting','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','746c047b-02fc-4275-bd1f-c7a073c512d9'),(20,'craft','m160708_185142_volume_hasUrls_setting','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','a8515c09-976c-4521-b0ea-4defe63041f5'),(21,'craft','m160714_000000_increase_max_asset_filesize','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','8c78ebeb-fe7a-4c1c-9dd0-c4785218be7d'),(22,'craft','m160727_194637_column_cleanup','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','5a329c1c-cb2a-4597-99bb-4d33f3efb13b'),(23,'craft','m160804_110002_userphotos_to_assets','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','9cc90d57-5bb9-48bc-bd16-ce9d3ebb81f3'),(24,'craft','m160807_144858_sites','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','e6b2e685-3ae1-48bd-b983-e152545ec6a5'),(25,'craft','m160829_000000_pending_user_content_cleanup','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','5a73edb8-2aeb-4480-bb6f-912f776ff78f'),(26,'craft','m160830_000000_asset_index_uri_increase','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','36f6897a-8ae6-4a80-8204-f1754fb51ca6'),(27,'craft','m160912_230520_require_entry_type_id','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','cd51684a-728c-4281-a3a2-1514574095bd'),(28,'craft','m160913_134730_require_matrix_block_type_id','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','3216bfbb-72c6-437f-ba36-16aef0fd02d0'),(29,'craft','m160920_174553_matrixblocks_owner_site_id_nullable','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','c1bb00e7-e255-4fe4-a432-26580d2de87b'),(30,'craft','m160920_231045_usergroup_handle_title_unique','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','9f9db5bc-d3e5-46d3-a3c7-92aeed652467'),(31,'craft','m160925_113941_route_uri_parts','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f65147db-ec6a-4016-abe9-195629a9f279'),(32,'craft','m161006_205918_schemaVersion_not_null','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','601e40e1-bb26-4344-be9b-6fcc1b2d2f39'),(33,'craft','m161007_130653_update_email_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','cd778262-eea9-4fed-8fd4-d613acf7cf0f'),(34,'craft','m161013_175052_newParentId','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','8e487d13-2dd7-42d4-9033-da4d3166f326'),(35,'craft','m161021_102916_fix_recent_entries_widgets','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','b3ac15d3-709a-4f3c-a6be-0d464200af91'),(36,'craft','m161021_182140_rename_get_help_widget','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','ed8a25a3-f8ab-4794-9b54-85a1c08075e9'),(37,'craft','m161025_000000_fix_char_columns','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','97f000df-1f38-4de2-95bc-1c3fdcf1e0cd'),(38,'craft','m161029_124145_email_message_languages','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','c252f78d-d570-4975-8e8a-07d6dd79b88f'),(39,'craft','m161108_000000_new_version_format','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','330c85af-f7dd-4cf8-a12a-8d03bc51d6d6'),(40,'craft','m161109_000000_index_shuffle','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f6053c8a-7546-4714-b9fd-63f46a745e95'),(41,'craft','m161122_185500_no_craft_app','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','fccc39d3-f723-4fc5-8804-066958da062c'),(42,'craft','m161125_150752_clear_urlmanager_cache','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','0a31e4e9-8e07-4ade-a310-9fe3470cdab7'),(43,'craft','m161220_000000_volumes_hasurl_notnull','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','92e8f27c-9878-44c0-b39c-ca958e32cba6'),(44,'craft','m170114_161144_udates_permission','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','336f0255-4b5b-4816-b2a2-93afa3e880f6'),(45,'craft','m170120_000000_schema_cleanup','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','a9858575-4beb-4204-bedc-53f08992743c'),(46,'craft','m170126_000000_assets_focal_point','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','e1316b0d-b25c-4c11-a36b-b73572abca39'),(47,'craft','m170206_142126_system_name','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','2c96c2ab-619e-44d9-b3ef-8e1b8504d55c'),(48,'craft','m170217_044740_category_branch_limits','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','bdfc8cc5-f3f9-487e-ae3b-6cc3ea6261b7'),(49,'craft','m170217_120224_asset_indexing_columns','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','43ed3b8a-f7bf-40bc-a58b-a5c27bd996eb'),(50,'craft','m170223_224012_plain_text_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','34985887-81d0-43d1-a7ab-d9f96db9d04f'),(51,'craft','m170227_120814_focal_point_percentage','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','91e28b00-d713-492f-b83b-968466b08a61'),(52,'craft','m170228_171113_system_messages','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','2a02c305-8ad5-4b6a-93f4-f16c1e12918b'),(53,'craft','m170303_140500_asset_field_source_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','9ed02745-d235-402a-a61a-2f0eae75111d'),(54,'craft','m170306_150500_asset_temporary_uploads','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','6f4c34ec-1421-48d5-a6c1-4ea09294361d'),(55,'craft','m170523_190652_element_field_layout_ids','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','544c654e-ff8e-44c4-a6c8-50e96e919e1b'),(56,'craft','m170612_000000_route_index_shuffle','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','60f37c37-cfe1-462c-97aa-b4ba858834a2'),(57,'craft','m170621_195237_format_plugin_handles','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','e0e8506d-cc04-44ef-bca0-80f71cbe6d4d'),(58,'craft','m170630_161027_deprecation_line_nullable','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','0f8539d1-f671-416b-8e5c-8e334c0a3bd2'),(59,'craft','m170630_161028_deprecation_changes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','01371a83-f30c-431e-a62c-ffcdec763e09'),(60,'craft','m170703_181539_plugins_table_tweaks','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','fc4e0336-0456-4825-be1b-32777700c91d'),(61,'craft','m170704_134916_sites_tables','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','1a776249-854d-472c-8aed-423e8502156d'),(62,'craft','m170706_183216_rename_sequences','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','4154ec09-439e-40fb-824e-a7e135456f7b'),(63,'craft','m170707_094758_delete_compiled_traits','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','4db48743-2245-4211-b606-ed289d3928e7'),(64,'craft','m170731_190138_drop_asset_packagist','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','240c55bf-d09b-4690-b3d3-2c44a71ecef7'),(65,'craft','m170810_201318_create_queue_table','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','b9c52036-5d3b-4561-bbdf-78f48d067a5b'),(66,'craft','m170903_192801_longblob_for_queue_jobs','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','d4666818-13c1-4e60-b76e-d40ba0ebe0e0'),(67,'craft','m170914_204621_asset_cache_shuffle','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','edfb2b5e-1329-409b-9cca-be2f6261daad'),(68,'craft','m171011_214115_site_groups','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','223dc5c1-673a-4562-8571-9aacdea1db14'),(69,'craft','m171012_151440_primary_site','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','34cf1677-3849-4890-911b-d6eb85a76f76'),(70,'craft','m171013_142500_transform_interlace','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','986629d8-ec24-41d6-9d33-060b32e80f78'),(71,'craft','m171016_092553_drop_position_select','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','c67459aa-b2f3-4bd6-a8f0-6a955875705d'),(72,'craft','m171016_221244_less_strict_translation_method','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','52c7c9fc-a9c3-4275-9a57-3a189eef4d8f'),(73,'craft','m171107_000000_assign_group_permissions','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','7a45e1ca-6761-4a06-8af2-e7a0c5706bbb'),(74,'craft','m171117_000001_templatecache_index_tune','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','78c12ffa-8558-4330-b5aa-af320edb940f'),(75,'craft','m171126_105927_disabled_plugins','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','154b8676-bb78-4ea2-b557-833cdb203d2f'),(76,'craft','m171130_214407_craftidtokens_table','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f51aec03-e4c9-4d5d-add6-30e4fa0dc4c4'),(77,'craft','m171202_004225_update_email_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','51e3729d-9870-4220-9d61-81d9d25fff69'),(78,'craft','m171204_000001_templatecache_index_tune_deux','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f8909720-add6-40e4-9a93-2393a3e2b405'),(79,'craft','m171205_130908_remove_craftidtokens_refreshtoken_column','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','42ed62cb-4c34-4f59-bbaa-da7d5ee069b5'),(80,'craft','m171218_143135_longtext_query_column','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','b0f5c4df-2e7d-49c7-818d-1ceef4dff09b'),(81,'craft','m171231_055546_environment_variables_to_aliases','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','3543aeca-a0ba-468d-81a9-8edc58533e44'),(82,'craft','m180113_153740_drop_users_archived_column','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','8c32e39d-9c53-486a-9bc9-88c2ac3dabad'),(83,'craft','m180122_213433_propagate_entries_setting','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','1f8c3e83-3013-495d-9ad9-e16ce2a9f68a'),(84,'craft','m180124_230459_fix_propagate_entries_values','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','5eaf1883-8a35-4aef-b426-2022b4efbc1e'),(85,'craft','m180128_235202_set_tag_slugs','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','0d61fc82-5ffb-489d-ac7c-e6c337aa429f'),(86,'craft','m180202_185551_fix_focal_points','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','60a6275d-ae45-4843-855d-0543cd5fdea6'),(87,'craft','m180217_172123_tiny_ints','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','1fab826b-e8c4-4c80-9cc9-c7da8515bc1e'),(88,'craft','m180321_233505_small_ints','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','585942f3-20b0-4467-b6d9-477d8282ab36'),(89,'craft','m180328_115523_new_license_key_statuses','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','47c64031-ce39-4342-b1fc-6d457e89d153'),(90,'craft','m180404_182320_edition_changes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','c4c450d0-f171-4bb7-a7a9-171072b54be4'),(91,'craft','m180411_102218_fix_db_routes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','bc1b7860-35e0-403a-8f3d-42cdccddccc8'),(92,'craft','m180416_205628_resourcepaths_table','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','138228bd-ee20-420a-bcee-48adc6c9f768'),(93,'craft','m180418_205713_widget_cleanup','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','02ee3ae3-6254-4fec-819c-6b0bea1c1224'),(94,'craft','m180425_203349_searchable_fields','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','ac1580ff-b08b-43a8-94f3-f97964f277bb'),(95,'craft','m180516_153000_uids_in_field_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','7cd7fba0-54e0-40c5-b613-1d41c35a120d'),(96,'craft','m180517_173000_user_photo_volume_to_uid','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','bcc3c8e3-7248-460d-92cb-066219c68f45'),(97,'craft','m180518_173000_permissions_to_uid','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','b69003d8-2250-4f06-85f8-d086f94526ce'),(98,'craft','m180520_173000_matrix_context_to_uids','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','d813cb13-3d73-4390-8c4d-5da1d32fef3b'),(99,'craft','m180521_172900_project_config_table','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','de6d0548-cba8-432e-b1e7-4801b7f446df'),(100,'craft','m180521_173000_initial_yml_and_snapshot','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','e26d6ad4-d003-4919-a29b-715acb327018'),(101,'craft','m180731_162030_soft_delete_sites','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','3c28c2db-55b8-4e2a-9083-bd82f47d4f87'),(102,'craft','m180810_214427_soft_delete_field_layouts','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f8b7125a-9a0d-4e93-a9b0-051e842c2222'),(103,'craft','m180810_214439_soft_delete_elements','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','0fe02d5b-3f05-4454-8175-fc98bd29cd15'),(104,'craft','m180824_193422_case_sensitivity_fixes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','9e5d78e6-9788-40c7-ad5e-3bf02bbd6ef8'),(105,'craft','m180901_151639_fix_matrixcontent_tables','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','d093442b-d13a-4abe-8d80-c02cd5bf7db5'),(106,'craft','m180904_112109_permission_changes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f28955f2-78ea-4159-b6d8-ea216f8a7bca'),(107,'craft','m180910_142030_soft_delete_sitegroups','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','a2dd9479-a6ed-484c-bcc1-5f424b39dabe'),(108,'craft','m181011_160000_soft_delete_asset_support','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','7a7f7cfc-6c9c-4044-9a0a-876638632f1f'),(109,'craft','m181016_183648_set_default_user_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','d8836f0f-9308-4270-895b-7a98cd580fd4'),(110,'craft','m181017_225222_system_config_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','a5df46ea-f9ea-493c-8d33-d6c012e046b2'),(111,'craft','m181018_222343_drop_userpermissions_from_config','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f5e398fb-d85c-410b-8697-78c2532866ad'),(112,'craft','m181029_130000_add_transforms_routes_to_config','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','96e0f6ee-7a6c-4fa5-a54e-ab4ba4937c75'),(113,'craft','m181112_203955_sequences_table','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','df66ccec-1204-4fd4-88c0-2b763e843096'),(114,'craft','m181121_001712_cleanup_field_configs','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','62655ab1-bda9-410d-ab31-5ddf433b4412'),(115,'craft','m181128_193942_fix_project_config','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','1a458353-79b3-45c2-85e0-9676ba950680'),(116,'craft','m181130_143040_fix_schema_version','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','a5322b3e-9c18-43a3-b656-4264741c2bea'),(117,'craft','m181211_143040_fix_entry_type_uids','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','7bb81970-2ecf-46dd-a640-1899cef15cd5'),(118,'craft','m181217_153000_fix_structure_uids','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','3fff28bb-86af-47ed-8eb2-52dffa1a03f1'),(119,'craft','m190104_152725_store_licensed_plugin_editions','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','e0386cb7-6de3-46bc-acb3-cbc5ad5944cb'),(120,'craft','m190108_110000_cleanup_project_config','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','8de693e4-8614-4312-a156-c5c77a294560'),(121,'craft','m190108_113000_asset_field_setting_change','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','6d7641e4-ea37-4181-82ea-ec06f8692b3c'),(122,'craft','m190109_172845_fix_colspan','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','7993c7e7-9e92-4567-8474-c47323fe3963'),(123,'craft','m190110_150000_prune_nonexisting_sites','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','c6178ee4-2b01-4e2b-95de-7cd5eebfd8c3'),(124,'craft','m190110_214819_soft_delete_volumes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','3811351a-ff08-4291-8098-3a7d0de57549'),(125,'craft','m190112_124737_fix_user_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','b09dfcd2-d66a-480b-836c-d7977998a7ef'),(126,'craft','m190112_131225_fix_field_layouts','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','11f9bde3-6a3e-450d-ad81-f8bd7afa752f'),(127,'craft','m190112_201010_more_soft_deletes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','b87b728c-3706-43e7-bebe-b1471235ad4c'),(128,'craft','m190114_143000_more_asset_field_setting_changes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','cd9fd323-1b63-4b88-80a1-c9c970e99a52'),(129,'craft','m190121_120000_rich_text_config_setting','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','8307cc07-1696-4628-98a9-c5b837026391'),(130,'craft','m190125_191628_fix_email_transport_password','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','fb61ec79-846a-4fa8-84ea-4633d1cb708f'),(131,'craft','m190128_181422_cleanup_volume_folders','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','c1968ef1-a05e-458b-98c3-c9374e09e401'),(132,'craft','m190205_140000_fix_asset_soft_delete_index','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','6ca6f1f5-14e0-43d6-8570-65eb229feec9'),(133,'craft','m190218_143000_element_index_settings_uid','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','c44789a9-84c3-4811-a510-d5125b269a72'),(134,'craft','m190312_152740_element_revisions','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','5f92aee9-12cf-47ec-9370-d0e6f672f20e'),(135,'craft','m190327_235137_propagation_method','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f1c760e5-8c89-4d4e-88ea-940d080ac764'),(136,'craft','m190401_223843_drop_old_indexes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','2b579b73-366b-46b8-be93-a95b9aa66c66'),(137,'craft','m190416_014525_drop_unique_global_indexes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','d6b523bd-1a6d-4dab-ab5c-cac98194fc9c'),(138,'craft','m190417_085010_add_image_editor_permissions','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','8164699b-77f1-4e11-8364-153812433545'),(139,'craft','m190502_122019_store_default_user_group_uid','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','7d42b3fe-8b70-4f9e-8597-5da5c770a090'),(140,'craft','m190504_150349_preview_targets','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','9f458969-9eed-4ee0-8d37-7385cb807476'),(141,'craft','m190516_184711_job_progress_label','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','8bd3e4c4-781a-49c9-a083-f2d6c4dee987'),(142,'craft','m190523_190303_optional_revision_creators','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','a239c40d-8eda-4533-b58c-20e5f7fd9676'),(143,'craft','m190529_204501_fix_duplicate_uids','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','bb69b6ed-0a3a-4d54-b757-69b9a925395c'),(144,'craft','m190605_223807_unsaved_drafts','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','42dee249-1c5d-4f32-8ee8-15b50f2e3a86'),(145,'craft','m190607_230042_entry_revision_error_tables','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','789378f4-1555-4ae8-86bc-561b8ae20f57'),(146,'craft','m190608_033429_drop_elements_uid_idx','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','f8fd4230-2160-4278-aabc-f68eb9de1c04'),(147,'craft','m190617_164400_add_gqlschemas_table','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','2c59f26e-4ecc-49d1-a723-9025f9576fca'),(148,'craft','m190624_234204_matrix_propagation_method','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','7933d8d9-b8a8-48d4-b2e7-4bba338234ae'),(149,'craft','m190711_153020_drop_snapshots','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','823fa049-2d3e-4cab-9ef5-472b8eabbd54'),(150,'craft','m190712_195914_no_draft_revisions','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','e021bd95-6487-401c-bac2-567e9dda7e3c'),(151,'craft','m190723_140314_fix_preview_targets_column','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','402ac384-a69d-4d4a-8062-b927f379264f'),(152,'craft','m190820_003519_flush_compiled_templates','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','df03f686-100f-4087-b070-42dc643eec3b'),(153,'craft','m190823_020339_optional_draft_creators','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','5e88db89-3b97-4446-bd9b-fecb6d40943e'),(154,'craft','m190913_152146_update_preview_targets','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','23747d03-4d44-4875-b7fa-fcc77bb8a9a4'),(155,'craft','m191107_122000_add_gql_project_config_support','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','9d66c390-2195-4ce5-ae75-b73a596aca78'),(156,'craft','m191204_085100_pack_savable_component_settings','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','e29d0aaa-a124-45b5-8f1c-4bb3aa1e91f0'),(157,'craft','m191206_001148_change_tracking','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','eb728aa3-49c7-432f-90a0-8c816028a7a8'),(158,'craft','m191216_191635_asset_upload_tracking','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','84fdd028-ac94-4971-981a-c0dc4ac43f9a'),(159,'craft','m191222_002848_peer_asset_permissions','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','53a2eab0-108f-481a-b2e6-96512380a4b5'),(160,'craft','m200127_172522_queue_channels','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','cdcd4e0f-873d-409a-a373-485ac0e19ad2'),(161,'craft','m200211_175048_truncate_element_query_cache','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','992a1ac4-65ec-46f0-a413-a7be3697d8cb'),(162,'craft','m200213_172522_new_elements_index','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','76202e5b-d6b1-4fe8-a70f-475e3535fe9f'),(163,'craft','m200228_195211_long_deprecation_messages','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','e1745ac8-d9d2-479d-a686-6a8ef0dcb08a'),(164,'craft','m200306_054652_disabled_sites','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','04253724-eec9-45a1-98a4-28c0cbc4ed91'),(165,'craft','m200522_191453_clear_template_caches','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','b9c8e2f6-c0d7-4500-9af5-cb756f4c905a'),(166,'craft','m200606_231117_migration_tracks','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','b4aa2674-4159-4e8a-aa05-4fdd1c0cc03d'),(167,'craft','m200619_215137_title_translation_method','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','ed12d93c-bfe0-4b36-9297-ff8fab49b0f1'),(168,'craft','m200620_005028_user_group_descriptions','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','336b2fdf-c470-442e-89ae-c34b6a92c83b'),(169,'craft','m200620_230205_field_layout_changes','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','ea6d617c-b95f-4452-bdcb-c2c2d7499128'),(170,'craft','m200625_131100_move_entrytypes_to_top_project_config','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','052fd68f-aae6-4999-b444-1fa1ab8d9b1a'),(171,'craft','m200629_112700_remove_project_config_legacy_files','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','fcfe6cf8-6c26-4ec2-a561-5f46e5067303'),(172,'craft','m200630_183000_drop_configmap','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','972e1ccf-4897-4f30-9f4c-981dbfb8738b'),(173,'craft','m200715_113400_transform_index_error_flag','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','809842c4-b14d-43d7-b241-c993269275c1'),(174,'craft','m200716_110900_replace_file_asset_permissions','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','664ccd66-530f-41da-b45b-306d6b0bd4bf'),(175,'craft','m200716_153800_public_token_settings_in_project_config','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','ae7f3686-c066-4fa8-896c-0896b0213229'),(176,'craft','m200720_175543_drop_unique_constraints','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','74036f6c-ecc8-4703-b285-42925dbff623'),(177,'craft','m200825_051217_project_config_version','2020-08-29 14:35:58','2020-08-29 14:35:58','2020-08-29 14:35:58','0cad1cf1-be00-49df-9370-b61386ca6a2e');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugins_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectconfig`
--

DROP TABLE IF EXISTS `projectconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectconfig`
--

LOCK TABLES `projectconfig` WRITE;
/*!40000 ALTER TABLE `projectconfig` DISABLE KEYS */;
INSERT INTO `projectconfig` VALUES ('dateModified','1598724892'),('email.fromEmail','\"blakeha94@gmail.com\"'),('email.fromName','\"Craft-Assignment\"'),('email.transportType','\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.autocapitalize','true'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.autocomplete','false'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.autocorrect','true'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.class','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.disabled','false'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.id','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.instructions','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.label','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.max','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.min','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.name','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.orientation','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.placeholder','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.readonly','false'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.requirable','false'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.required','false'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.size','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.step','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.tip','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.title','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.warning','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.0.width','100'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.1.fieldUid','\"930e2736-e1e4-4a3b-b229-61dddb2f7825\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.1.instructions','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.1.label','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.1.required','false'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.1.tip','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.1.warning','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.1.width','100'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.2.fieldUid','\"5c733a92-f0a5-4484-ace7-963ecd4891ff\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.2.instructions','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.2.label','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.2.required','false'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.2.tip','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.2.warning','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.2.width','100'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.3.fieldUid','\"f2212641-ad5e-4e1b-80cb-89d73b257eb6\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.3.instructions','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.3.label','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.3.required','false'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.3.tip','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.3.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.3.warning','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.3.width','100'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.4.fieldUid','\"2b0bef58-70d6-4e10-9e23-e6d706b15d60\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.4.instructions','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.4.label','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.4.required','false'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.4.tip','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.4.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.4.warning','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.elements.4.width','100'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.name','\"Content\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.fieldLayouts.54babd43-a61a-4097-a2a6-06b0f12c9c16.tabs.0.sortOrder','1'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.handle','\"teamMembers\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.hasTitleField','true'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.name','\"Team Members\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.section','\"104a1fa0-78ee-41b8-9acf-a63f50312e02\"'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.sortOrder','1'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.titleFormat','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.titleTranslationKeyFormat','null'),('entryTypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e.titleTranslationMethod','\"site\"'),('fieldGroups.22a4cb8c-09d7-4561-adf3-5b4ad79ba412.name','\"Common\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.contentColumnType','\"text\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.fieldGroup','\"22a4cb8c-09d7-4561-adf3-5b4ad79ba412\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.handle','\"phoneNumber\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.instructions','\"Your office phone number\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.name','\"Phone Number\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.searchable','false'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.settings.byteLimit','null'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.settings.charLimit','null'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.settings.code','\"\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.settings.columnType','null'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.settings.initialRows','\"4\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.settings.multiline','\"\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.settings.placeholder','\"e.g. 555-555-6789\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.settings.uiMode','\"normal\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.translationKeyFormat','null'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.translationMethod','\"none\"'),('fields.2b0bef58-70d6-4e10-9e23-e6d706b15d60.type','\"craft\\\\fields\\\\PlainText\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.contentColumnType','\"text\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.fieldGroup','\"22a4cb8c-09d7-4561-adf3-5b4ad79ba412\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.handle','\"positionTitle\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.instructions','\"Enter your professional title\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.name','\"Position Title\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.searchable','false'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.settings.byteLimit','null'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.settings.charLimit','null'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.settings.code','\"\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.settings.columnType','null'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.settings.initialRows','\"4\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.settings.multiline','\"\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.settings.placeholder','\"e.g. Co-Chair, Party Planning Committee\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.settings.uiMode','\"normal\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.translationKeyFormat','null'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.translationMethod','\"none\"'),('fields.5c733a92-f0a5-4484-ace7-963ecd4891ff.type','\"craft\\\\fields\\\\PlainText\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.contentColumnType','\"string\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.fieldGroup','\"22a4cb8c-09d7-4561-adf3-5b4ad79ba412\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.handle','\"featuredImage\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.instructions','\"Showoff the best photo of yourself here\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.name','\"Featured Image\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.searchable','false'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.allowedKinds','null'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.allowSelfRelations','false'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.defaultUploadLocationSource','\"volume:a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.defaultUploadLocationSubpath','\"/assets/images\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.limit','\"1\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.localizeRelations','false'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.restrictFiles','\"\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.selectionLabel','\"Add your photo here\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.showSiteMenu','true'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.showUnpermittedFiles','false'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.showUnpermittedVolumes','false'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.singleUploadLocationSource','\"volume:a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.singleUploadLocationSubpath','\"{slug}\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.source','null'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.sources','\"*\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.targetSiteId','null'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.useSingleFolder','true'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.validateRelatedElements','false'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.settings.viewMode','\"large\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.translationKeyFormat','null'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.translationMethod','\"site\"'),('fields.930e2736-e1e4-4a3b-b229-61dddb2f7825.type','\"craft\\\\fields\\\\Assets\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.contentColumnType','\"text\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.fieldGroup','\"22a4cb8c-09d7-4561-adf3-5b4ad79ba412\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.handle','\"emailAddress\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.instructions','\"Your work email address\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.name','\"Email Address\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.searchable','false'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.settings.byteLimit','null'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.settings.charLimit','null'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.settings.code','\"\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.settings.columnType','null'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.settings.initialRows','\"4\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.settings.multiline','\"\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.settings.placeholder','\"e.g. - m.scott@dundermifflin.co\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.settings.uiMode','\"normal\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.translationKeyFormat','null'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.translationMethod','\"none\"'),('fields.f2212641-ad5e-4e1b-80cb-89d73b257eb6.type','\"craft\\\\fields\\\\PlainText\"'),('graphql.publicToken.enabled','true'),('graphql.publicToken.expiryDate','null'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.isPublic','true'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.name','\"Public Schema\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.0','\"sections.104a1fa0-78ee-41b8-9acf-a63f50312e02:read\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.1','\"entrytypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e:read\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.10','\"volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc:create\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.11','\"volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc:save\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.12','\"volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc:delete\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.2','\"volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc:read\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.3','\"usergroups.everyone:read\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.4','\"sections.104a1fa0-78ee-41b8-9acf-a63f50312e02:edit\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.5','\"entrytypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e:edit\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.6','\"entrytypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e:create\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.7','\"entrytypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e:save\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.8','\"entrytypes.3a773fd2-1bd1-42ba-8dc1-932dbd417b7e:delete\"'),('graphql.schemas.f3ce7df7-105c-44d8-9092-b38244c356d1.scope.9','\"volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc:edit\"'),('sections.104a1fa0-78ee-41b8-9acf-a63f50312e02.enableVersioning','true'),('sections.104a1fa0-78ee-41b8-9acf-a63f50312e02.handle','\"teamMembers\"'),('sections.104a1fa0-78ee-41b8-9acf-a63f50312e02.name','\"Team Members\"'),('sections.104a1fa0-78ee-41b8-9acf-a63f50312e02.propagationMethod','\"all\"'),('sections.104a1fa0-78ee-41b8-9acf-a63f50312e02.siteSettings.22f88c31-2127-426d-903e-4bbe1b4cf9c6.enabledByDefault','true'),('sections.104a1fa0-78ee-41b8-9acf-a63f50312e02.siteSettings.22f88c31-2127-426d-903e-4bbe1b4cf9c6.hasUrls','true'),('sections.104a1fa0-78ee-41b8-9acf-a63f50312e02.siteSettings.22f88c31-2127-426d-903e-4bbe1b4cf9c6.template','null'),('sections.104a1fa0-78ee-41b8-9acf-a63f50312e02.siteSettings.22f88c31-2127-426d-903e-4bbe1b4cf9c6.uriFormat','\"team-members/{slug}\"'),('sections.104a1fa0-78ee-41b8-9acf-a63f50312e02.type','\"channel\"'),('siteGroups.5d90099e-323d-440e-9838-22bcc2cbfe8b.name','\"Craft-Assignment\"'),('sites.22f88c31-2127-426d-903e-4bbe1b4cf9c6.baseUrl','\"$PRIMARY_SITE_URL\"'),('sites.22f88c31-2127-426d-903e-4bbe1b4cf9c6.handle','\"default\"'),('sites.22f88c31-2127-426d-903e-4bbe1b4cf9c6.hasUrls','true'),('sites.22f88c31-2127-426d-903e-4bbe1b4cf9c6.language','\"en-US\"'),('sites.22f88c31-2127-426d-903e-4bbe1b4cf9c6.name','\"Craft-Assignment\"'),('sites.22f88c31-2127-426d-903e-4bbe1b4cf9c6.primary','true'),('sites.22f88c31-2127-426d-903e-4bbe1b4cf9c6.siteGroup','\"5d90099e-323d-440e-9838-22bcc2cbfe8b\"'),('sites.22f88c31-2127-426d-903e-4bbe1b4cf9c6.sortOrder','1'),('system.edition','\"pro\"'),('system.live','true'),('system.name','\"Craft-Assignment\"'),('system.schemaVersion','\"3.5.13\"'),('system.timeZone','\"America/Los_Angeles\"'),('users.allowPublicRegistration','false'),('users.defaultGroup','null'),('users.photoSubpath','null'),('users.photoVolumeUid','null'),('users.requireEmailVerification','true'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.autocapitalize','true'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.autocomplete','false'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.autocorrect','true'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.class','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.disabled','false'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.id','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.instructions','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.label','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.max','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.min','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.name','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.orientation','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.placeholder','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.readonly','false'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.requirable','false'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.required','false'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.size','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.step','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.tip','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.title','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\TitleField\"'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.warning','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.0.width','100'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.1.fieldUid','\"930e2736-e1e4-4a3b-b229-61dddb2f7825\"'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.1.instructions','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.1.label','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.1.required','false'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.1.tip','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.1.warning','null'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.elements.1.width','100'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.name','\"Content\"'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.fieldLayouts.f3f0bbd1-0a80-4e16-82d6-a1dc48ab977a.tabs.0.sortOrder','1'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.handle','\"team\"'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.hasUrls','true'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.name','\"Team\"'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.settings.path','\"$PRIMARY_SITE_URL/assets/images\"'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.sortOrder','1'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.type','\"craft\\\\volumes\\\\Local\"'),('volumes.a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc.url','\"$PRIMARY_SITE_URL/assets/images\"');
/*!40000 ALTER TABLE `projectconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue`
--

DROP TABLE IF EXISTS `queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) unsigned NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text,
  PRIMARY KEY (`id`),
  KEY `queue_channel_fail_timeUpdated_timePushed_idx` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  KEY `queue_channel_fail_timeUpdated_delay_idx` (`channel`,`fail`,`timeUpdated`,`delay`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue`
--

LOCK TABLES `queue` WRITE;
/*!40000 ALTER TABLE `queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  KEY `relations_sourceId_idx` (`sourceId`),
  KEY `relations_targetId_idx` (`targetId`),
  KEY `relations_sourceSiteId_idx` (`sourceSiteId`),
  CONSTRAINT `relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
INSERT INTO `relations` VALUES (2,4,19,NULL,10,1,'2020-08-29 15:45:46','2020-08-29 15:45:46','e4c9cd22-0d83-408b-a295-92abc515528b'),(3,4,20,NULL,10,1,'2020-08-29 15:45:46','2020-08-29 15:45:46','45cfbd34-7a0f-40a4-ab80-16ee91ada0cd'),(5,4,22,NULL,17,1,'2020-08-29 15:46:49','2020-08-29 15:46:49','54f5eaad-2d0b-493b-bc7d-6536ca696511'),(6,4,23,NULL,17,1,'2020-08-29 15:46:49','2020-08-29 15:46:49','45886dfc-acf7-4bcb-83b2-800531adc3a2'),(8,4,25,NULL,13,1,'2020-08-29 15:48:21','2020-08-29 15:48:21','be505956-1e2d-422a-9779-917044cbd720'),(9,4,26,NULL,13,1,'2020-08-29 15:48:21','2020-08-29 15:48:21','debc437a-44a4-465a-98a9-f77a7ea2297a'),(10,4,27,NULL,10,1,'2020-08-29 15:48:36','2020-08-29 15:48:36','bfa193ee-697a-4a61-87c0-00a3b498746b'),(11,4,28,NULL,17,1,'2020-08-29 15:48:44','2020-08-29 15:48:44','f11bc66d-919b-424e-8f4e-927956ffdc5b'),(13,4,30,NULL,16,1,'2020-08-29 15:50:10','2020-08-29 15:50:10','dc8c980d-f9c0-4c1c-a6bd-0ed946210387'),(14,4,31,NULL,16,1,'2020-08-29 15:50:10','2020-08-29 15:50:10','53ac6371-9254-477e-8344-e8949d44a169'),(15,4,32,NULL,13,1,'2020-08-29 15:50:17','2020-08-29 15:50:17','a776c6ed-5e3b-4ef8-9111-9b9202f620e3'),(16,4,33,NULL,17,1,'2020-08-29 15:50:28','2020-08-29 15:50:28','f675deb3-2ee2-4b3d-a211-e2dc0c43816b'),(17,4,34,NULL,17,1,'2020-08-29 15:50:38','2020-08-29 15:50:38','dfdca0b1-75f0-41fb-9797-30a0a8c1a0cc'),(18,4,35,NULL,10,1,'2020-08-29 15:50:45','2020-08-29 15:50:45','4ad1f50a-6e9c-4156-9f56-3ad97355dab7'),(19,4,36,NULL,13,1,'2020-08-29 15:51:02','2020-08-29 15:51:02','267a91d5-29c3-4eec-9467-dbcdfe5cc0b6'),(21,4,41,NULL,14,1,'2020-08-29 15:54:23','2020-08-29 15:54:23','e3dd9ba7-f7e2-4dff-a904-20d17325d819'),(22,4,42,NULL,14,1,'2020-08-29 15:54:23','2020-08-29 15:54:23','93b1206b-ea68-4108-abfc-1cb654344aed'),(23,4,38,NULL,15,1,'2020-08-29 15:54:34','2020-08-29 15:54:34','91992939-1b3b-4395-b615-677e4ce91695'),(24,4,43,NULL,15,1,'2020-08-29 15:54:34','2020-08-29 15:54:34','99eb8825-4a37-45c0-8cd0-242d1e700f35'),(26,4,45,NULL,12,1,'2020-08-29 15:55:57','2020-08-29 15:55:57','b1b54082-e0c3-40d9-92ff-e40813d85ae4'),(27,4,46,NULL,12,1,'2020-08-29 15:55:57','2020-08-29 15:55:57','573a45ab-e2b5-4858-93ae-73ccb9d7474a'),(29,4,48,NULL,18,1,'2020-08-29 15:57:03','2020-08-29 15:57:03','e4e69085-19fe-44f0-8bb4-1fc5c2208a0c'),(30,4,49,NULL,18,1,'2020-08-29 15:57:03','2020-08-29 15:57:03','f94a88ca-a374-4170-8613-ac24c20a609c'),(32,4,51,NULL,11,1,'2020-08-29 15:58:23','2020-08-29 15:58:23','cf40b3e4-d5fa-4a9d-8182-e71b9fd30517'),(33,4,52,NULL,11,1,'2020-08-29 15:58:23','2020-08-29 15:58:23','e5a272b2-721f-473f-8fb4-0140ae316872'),(35,4,54,NULL,9,1,'2020-08-29 15:58:55','2020-08-29 15:58:55','d436eaa2-73cf-4046-ba7a-a514787772de'),(36,4,55,NULL,9,1,'2020-08-29 15:58:55','2020-08-29 15:58:55','52897ec0-cc47-47c7-b922-41c80802b13a'),(37,4,56,NULL,9,1,'2020-08-29 18:10:42','2020-08-29 18:10:42','3660844d-17fc-4fce-94c5-322535161858'),(39,4,60,NULL,58,1,'2020-08-29 18:36:26','2020-08-29 18:36:26','17594b01-c00a-4030-b474-094c0fbe1cd0'),(40,4,61,NULL,58,1,'2020-08-29 18:36:26','2020-08-29 18:36:26','948075c2-ac00-453f-9397-0302b72b7c7e'),(42,4,63,NULL,59,1,'2020-08-29 18:37:46','2020-08-29 18:37:46','f803174d-617c-4a1d-8e8b-9b85c03c3227'),(43,4,64,NULL,59,1,'2020-08-29 18:37:46','2020-08-29 18:37:46','af387f77-4dc4-4681-8544-df583057bc44');
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcepaths`
--

DROP TABLE IF EXISTS `resourcepaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcepaths`
--

LOCK TABLES `resourcepaths` WRITE;
/*!40000 ALTER TABLE `resourcepaths` DISABLE KEYS */;
INSERT INTO `resourcepaths` VALUES ('102dfad7','@app/web/assets/utilities/dist'),('12608a97','@lib/element-resize-detector'),('2060a03b','@app/web/assets/feed/dist'),('25e4813d','@app/web/assets/userpermissions/dist'),('2c7fd61f','@lib/velocity'),('305879f7','@lib/jquery.payment'),('3df02162','@bower/jquery/dist'),('4243a6ae','@app/web/assets/pluginstore/dist'),('43bf7212','@app/web/assets/graphiql/dist'),('45eaae86','@lib/vue'),('5b937105','@app/web/assets/systemmessages/dist'),('6080c6de','@app/web/assets/assetindexes/dist'),('62d64dba','@lib/jquery-ui'),('68010df3','@lib/axios'),('6c8eca08','@app/web/assets/installer/dist'),('6f1b9fcb','@app/web/assets/recententries/dist'),('7256b846','@app/web/assets/cp/dist'),('741e22a7','@app/web/assets/craftsupport/dist'),('77cfad3f','@app/web/assets/fieldsettings/dist'),('7a8c8e66','@app/web/assets/updateswidget/dist'),('8c422a32','@lib/garnishjs'),('9904fe0c','@lib/fabric'),('a511230c','@lib/iframe-resizer'),('a9b21c1b','@lib/fileupload'),('b15a1de5','@lib/picturefill'),('b15bf60a','@app/web/assets/dashboard/dist'),('b4782bae','@lib/prismjs'),('b63cd844','@app/web/assets/fields/dist'),('b6fe2127','@lib/jquery-touch-events'),('bad067c9','@app/web/assets/editentry/dist'),('bfff3db4','@lib/d3'),('c4b36199','@app/web/assets/admintable/dist'),('d0b72c9e','@lib/timepicker'),('e5243061','@lib/selectize'),('ef4874eb','@lib/xregexp'),('f9af7021','@app/web/assets/editsection/dist');
/*!40000 ALTER TABLE `resourcepaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  KEY `revisions_creatorId_fk` (`creatorId`),
  CONSTRAINT `revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,19,1,1,NULL),(2,22,1,1,NULL),(3,25,1,1,NULL),(4,19,1,2,NULL),(5,22,1,2,NULL),(6,30,1,1,NULL),(7,25,1,2,NULL),(8,22,1,3,NULL),(9,22,1,4,NULL),(10,19,1,3,NULL),(11,25,1,3,NULL),(12,38,1,1,NULL),(13,41,1,1,NULL),(14,38,1,2,NULL),(15,45,1,1,NULL),(16,48,1,1,NULL),(17,51,1,1,NULL),(18,54,1,1,NULL),(19,54,1,2,NULL),(20,60,1,1,NULL),(21,63,1,1,NULL);
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchindex`
--

DROP TABLE IF EXISTS `searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`),
  FULLTEXT KEY `searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchindex`
--

LOCK TABLES `searchindex` WRITE;
/*!40000 ALTER TABLE `searchindex` DISABLE KEYS */;
INSERT INTO `searchindex` VALUES (1,'username',0,1,' admin '),(1,'firstname',0,1,''),(1,'lastname',0,1,''),(1,'fullname',0,1,''),(1,'email',0,1,' blakeha94 gmail com '),(1,'slug',0,1,''),(9,'title',0,1,' blake hartman '),(9,'extension',0,1,' png '),(9,'kind',0,1,' image '),(9,'slug',0,1,''),(10,'extension',0,1,' png '),(10,'kind',0,1,' image '),(10,'slug',0,1,''),(11,'title',0,1,' ernie chavez '),(11,'extension',0,1,' png '),(11,'kind',0,1,' image '),(11,'slug',0,1,''),(12,'slug',0,1,''),(12,'extension',0,1,' png '),(12,'kind',0,1,' image '),(13,'kind',0,1,' image '),(13,'extension',0,1,' png '),(14,'slug',0,1,''),(14,'extension',0,1,' png '),(14,'kind',0,1,' image '),(15,'title',0,1,' leland whyte '),(15,'extension',0,1,' png '),(15,'kind',0,1,' image '),(15,'slug',0,1,''),(16,'title',0,1,' lewys kramer '),(16,'extension',0,1,' png '),(16,'kind',0,1,' image '),(16,'slug',0,1,''),(17,'kind',0,1,' image '),(17,'extension',0,1,' png '),(18,'slug',0,1,''),(18,'extension',0,1,' png '),(18,'kind',0,1,' image '),(10,'title',0,1,' dollie rossi '),(19,'slug',0,1,' dollie rossi '),(19,'title',0,1,' dollie rossi '),(17,'slug',0,1,''),(22,'title',0,1,' martin spencer '),(10,'filename',0,1,' dollie rossi png '),(13,'slug',0,1,''),(25,'slug',0,1,' issa atkinson '),(25,'title',0,1,' issa atkinson '),(16,'filename',0,1,' lewys kramer png '),(30,'slug',0,1,' lewys kramer '),(30,'title',0,1,' lewys kramer '),(22,'slug',0,1,' martin spencer '),(17,'filename',0,1,' martin spencer png '),(13,'filename',0,1,' issa atkinson png '),(38,'title',0,1,' leland whyte '),(38,'slug',0,1,' leland whyte '),(14,'filename',0,1,' jonah adams png '),(41,'slug',0,1,' jonah adams '),(41,'title',0,1,' jonah adams '),(15,'filename',0,1,' leland whyte png '),(12,'filename',0,1,' gerard soto png '),(45,'slug',0,1,' gerard soto '),(45,'title',0,1,' gerard soto '),(18,'filename',0,1,' nancy hope png '),(48,'slug',0,1,' nancy hope '),(48,'title',0,1,' nancy hope '),(11,'filename',0,1,' ernie chavez png '),(51,'slug',0,1,' ernie chavez '),(51,'title',0,1,' ernie chavez '),(9,'filename',0,1,' blake hartman png '),(54,'title',0,1,' blake hartman '),(54,'slug',0,1,' blake hartman '),(17,'title',0,1,' martin spencer '),(13,'title',0,1,' issa atkinson '),(14,'title',0,1,' jonah adams '),(12,'title',0,1,' gerard soto '),(18,'title',0,1,' nancy hope '),(58,'kind',0,1,' image '),(58,'extension',0,1,' png '),(58,'filename',0,1,' brady fopma png '),(59,'kind',0,1,' image '),(59,'extension',0,1,' png '),(59,'filename',0,1,' carissa schoffelman png '),(58,'slug',0,1,''),(58,'title',0,1,' brady fopma '),(60,'slug',0,1,' brady fopma '),(60,'title',0,1,' brady fopma '),(59,'slug',0,1,''),(59,'title',0,1,' carissa schoffelman '),(63,'slug',0,1,' carissa schoffelman '),(63,'title',0,1,' carissa schoffelman ');
/*!40000 ALTER TABLE `searchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sections_handle_idx` (`handle`),
  KEY `sections_name_idx` (`name`),
  KEY `sections_structureId_idx` (`structureId`),
  KEY `sections_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,NULL,'Team Members','teamMembers','channel',1,'all',NULL,'2020-08-29 14:40:40','2020-08-29 14:40:40',NULL,'104a1fa0-78ee-41b8-9acf-a63f50312e02');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_sites`
--

DROP TABLE IF EXISTS `sections_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  KEY `sections_sites_siteId_idx` (`siteId`),
  CONSTRAINT `sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_sites`
--

LOCK TABLES `sections_sites` WRITE;
/*!40000 ALTER TABLE `sections_sites` DISABLE KEYS */;
INSERT INTO `sections_sites` VALUES (1,1,1,1,'team-members/{slug}',NULL,1,'2020-08-29 14:40:40','2020-08-29 14:40:40','6b3ff1c2-37ce-490d-ad36-5fb2a2a19628');
/*!40000 ALTER TABLE `sections_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequences`
--

DROP TABLE IF EXISTS `sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequences`
--

LOCK TABLES `sequences` WRITE;
/*!40000 ALTER TABLE `sequences` DISABLE KEYS */;
/*!40000 ALTER TABLE `sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sessions_uid_idx` (`uid`),
  KEY `sessions_token_idx` (`token`),
  KEY `sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `sessions_userId_idx` (`userId`),
  CONSTRAINT `sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,'0c2OW--fC-AnTurdsuMvEc5uYOwWYjr288KSRCwjjAVFuXzpTbf371WjFzegbY2IxmLAtWtGb71no5U8eT6kC9UQ9yPngcXsBvrl','2020-08-29 14:35:58','2020-08-29 18:56:25','f814b124-be0c-4da7-896f-40dbf245442e');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shunnedmessages`
--

DROP TABLE IF EXISTS `shunnedmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shunnedmessages_userId_message_unq_idx` (`userId`,`message`),
  CONSTRAINT `shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shunnedmessages`
--

LOCK TABLES `shunnedmessages` WRITE;
/*!40000 ALTER TABLE `shunnedmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `shunnedmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitegroups`
--

DROP TABLE IF EXISTS `sitegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sitegroups_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitegroups`
--

LOCK TABLES `sitegroups` WRITE;
/*!40000 ALTER TABLE `sitegroups` DISABLE KEYS */;
INSERT INTO `sitegroups` VALUES (1,'Craft-Assignment','2020-08-29 14:35:54','2020-08-29 14:35:54',NULL,'5d90099e-323d-440e-9838-22bcc2cbfe8b');
/*!40000 ALTER TABLE `sitegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sites_dateDeleted_idx` (`dateDeleted`),
  KEY `sites_handle_idx` (`handle`),
  KEY `sites_sortOrder_idx` (`sortOrder`),
  KEY `sites_groupId_fk` (`groupId`),
  CONSTRAINT `sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,1,1,1,'Craft-Assignment','default','en-US',1,'$PRIMARY_SITE_URL',1,'2020-08-29 14:35:54','2020-08-29 14:35:54',NULL,'22f88c31-2127-426d-903e-4bbe1b4cf9c6');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structureelements`
--

DROP TABLE IF EXISTS `structureelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `structureelements_root_idx` (`root`),
  KEY `structureelements_lft_idx` (`lft`),
  KEY `structureelements_rgt_idx` (`rgt`),
  KEY `structureelements_level_idx` (`level`),
  KEY `structureelements_elementId_idx` (`elementId`),
  CONSTRAINT `structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structureelements`
--

LOCK TABLES `structureelements` WRITE;
/*!40000 ALTER TABLE `structureelements` DISABLE KEYS */;
/*!40000 ALTER TABLE `structureelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structures`
--

DROP TABLE IF EXISTS `structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `structures_dateDeleted_idx` (`dateDeleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structures`
--

LOCK TABLES `structures` WRITE;
/*!40000 ALTER TABLE `structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemmessages`
--

DROP TABLE IF EXISTS `systemmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `systemmessages_key_language_unq_idx` (`key`,`language`),
  KEY `systemmessages_language_idx` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemmessages`
--

LOCK TABLES `systemmessages` WRITE;
/*!40000 ALTER TABLE `systemmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggroups`
--

DROP TABLE IF EXISTS `taggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `taggroups_name_idx` (`name`),
  KEY `taggroups_handle_idx` (`handle`),
  KEY `taggroups_dateDeleted_idx` (`dateDeleted`),
  KEY `taggroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggroups`
--

LOCK TABLES `taggroups` WRITE;
/*!40000 ALTER TABLE `taggroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tags_groupId_idx` (`groupId`),
  CONSTRAINT `tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tags_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatecacheelements`
--

DROP TABLE IF EXISTS `templatecacheelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatecacheelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `templatecacheelements_cacheId_idx` (`cacheId`),
  KEY `templatecacheelements_elementId_idx` (`elementId`),
  CONSTRAINT `templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatecacheelements`
--

LOCK TABLES `templatecacheelements` WRITE;
/*!40000 ALTER TABLE `templatecacheelements` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatecacheelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatecachequeries`
--

DROP TABLE IF EXISTS `templatecachequeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatecachequeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `templatecachequeries_cacheId_idx` (`cacheId`),
  KEY `templatecachequeries_type_idx` (`type`),
  CONSTRAINT `templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatecachequeries`
--

LOCK TABLES `templatecachequeries` WRITE;
/*!40000 ALTER TABLE `templatecachequeries` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatecachequeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatecaches`
--

DROP TABLE IF EXISTS `templatecaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  KEY `templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  KEY `templatecaches_siteId_idx` (`siteId`),
  CONSTRAINT `templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatecaches`
--

LOCK TABLES `templatecaches` WRITE;
/*!40000 ALTER TABLE `templatecaches` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatecaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unq_idx` (`token`),
  KEY `tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `usergroups_handle_idx` (`handle`),
  KEY `usergroups_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups`
--

LOCK TABLES `usergroups` WRITE;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups_users`
--

DROP TABLE IF EXISTS `usergroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `usergroups_users_userId_idx` (`userId`),
  CONSTRAINT `usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups_users`
--

LOCK TABLES `usergroups_users` WRITE;
/*!40000 ALTER TABLE `usergroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissions`
--

DROP TABLE IF EXISTS `userpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissions`
--

LOCK TABLES `userpermissions` WRITE;
/*!40000 ALTER TABLE `userpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissions_usergroups`
--

DROP TABLE IF EXISTS `userpermissions_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `userpermissions_usergroups_groupId_idx` (`groupId`),
  CONSTRAINT `userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissions_usergroups`
--

LOCK TABLES `userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `userpermissions_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissions_users`
--

DROP TABLE IF EXISTS `userpermissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `userpermissions_users_userId_idx` (`userId`),
  CONSTRAINT `userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissions_users`
--

LOCK TABLES `userpermissions_users` WRITE;
/*!40000 ALTER TABLE `userpermissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpreferences`
--

DROP TABLE IF EXISTS `userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `preferences` text,
  PRIMARY KEY (`userId`),
  CONSTRAINT `userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpreferences`
--

LOCK TABLES `userpreferences` WRITE;
/*!40000 ALTER TABLE `userpreferences` DISABLE KEYS */;
INSERT INTO `userpreferences` VALUES (1,'{\"language\":\"en-US\"}');
/*!40000 ALTER TABLE `userpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `users_uid_idx` (`uid`),
  KEY `users_verificationCode_idx` (`verificationCode`),
  KEY `users_email_idx` (`email`),
  KEY `users_username_idx` (`username`),
  KEY `users_photoId_fk` (`photoId`),
  CONSTRAINT `users_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin',NULL,NULL,NULL,'blakeha94@gmail.com','$2y$13$psTKY0DaJbatopgUIxmKY.kPnCUC7/PJypgerFMcXnk65b5CZ2uci',1,0,0,0,'2020-08-29 14:35:58',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'2020-08-29 14:35:57','2020-08-29 14:35:57','2020-08-29 14:35:59','2b23acae-e605-45a4-b8a6-a12e9b47c041');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volumefolders`
--

DROP TABLE IF EXISTS `volumefolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  KEY `volumefolders_parentId_idx` (`parentId`),
  KEY `volumefolders_volumeId_idx` (`volumeId`),
  CONSTRAINT `volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volumefolders`
--

LOCK TABLES `volumefolders` WRITE;
/*!40000 ALTER TABLE `volumefolders` DISABLE KEYS */;
INSERT INTO `volumefolders` VALUES (1,NULL,1,'Team','','2020-08-29 15:42:30','2020-08-29 16:13:15','6aaa25ae-a448-436a-8b05-086192a5749e'),(2,NULL,NULL,'Temporary source',NULL,'2020-08-29 15:43:14','2020-08-29 15:43:14','2bb6961e-05b8-4bed-bbc8-016be36a34d6'),(3,2,NULL,'user_1','user_1/','2020-08-29 15:43:14','2020-08-29 15:43:14','d0aa8644-1045-4774-b5b1-cee23f2b6d6b'),(4,1,1,'dollie-rossi-profile','dollie-rossi-profile/','2020-08-29 15:45:46','2020-08-29 15:45:46','9db4a5ee-543f-4872-8d32-5a435d6c104b'),(5,1,1,'martin-spencer-profile','martin-spencer-profile/','2020-08-29 15:46:48','2020-08-29 15:46:48','888cab91-2978-4594-a79b-eff780857a99'),(6,1,1,'issa-atkinson-profile','issa-atkinson-profile/','2020-08-29 15:48:21','2020-08-29 15:48:21','becbd41d-071b-4dcf-86b7-efc4d14102f5'),(7,1,1,'lewys-kramer','lewys-kramer/','2020-08-29 15:50:10','2020-08-29 15:50:10','bb26fb7c-4175-44e9-95c1-7f8afe7e3714'),(8,1,1,'martin-spencer','martin-spencer/','2020-08-29 15:50:37','2020-08-29 15:50:37','63af6d57-2a58-4474-b539-ec8cc0290af8'),(9,1,1,'dollie-rossi','dollie-rossi/','2020-08-29 15:50:45','2020-08-29 15:50:45','f59706f6-6df3-43e3-8ef8-5dfbd8529ac7'),(10,1,1,'issa-atkinson','issa-atkinson/','2020-08-29 15:51:02','2020-08-29 15:51:02','20f78cd5-deff-4e28-b5ae-e99a8b55fa21'),(11,1,1,'jonah-adams','jonah-adams/','2020-08-29 15:54:23','2020-08-29 15:54:23','06fc8d52-4936-4147-8ee6-4fde85094e00'),(12,1,1,'leland-whyte','leland-whyte/','2020-08-29 15:54:34','2020-08-29 15:54:34','c328c4bc-fe48-47cf-81aa-9c925a07db61'),(13,1,1,'gerard-soto','gerard-soto/','2020-08-29 15:55:57','2020-08-29 15:55:57','a96fab73-0a4e-4520-987a-5e4bfe79d32b'),(14,1,1,'nancy-hope','nancy-hope/','2020-08-29 15:57:03','2020-08-29 15:57:03','29ba3c68-ccfc-40e9-a357-33c72a431f25'),(15,1,1,'ernie-chavez','ernie-chavez/','2020-08-29 15:58:23','2020-08-29 15:58:23','fe95a849-9d8a-47e2-80aa-55c217093200'),(16,1,1,'blake-hartman','blake-hartman/','2020-08-29 15:58:55','2020-08-29 15:58:55','8aaa57cd-bb83-49ad-9c4c-8ffacff1d0bb'),(17,1,1,'brady-fopma','brady-fopma/','2020-08-29 18:36:26','2020-08-29 18:36:26','ca296a1e-aa3d-4776-b184-45c5e1e2c12a'),(18,1,1,'carissa-schoffelman','carissa-schoffelman/','2020-08-29 18:37:46','2020-08-29 18:37:46','5203096a-ba5d-43d1-a662-c0244fad74bc');
/*!40000 ALTER TABLE `volumefolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volumes`
--

DROP TABLE IF EXISTS `volumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `volumes_name_idx` (`name`),
  KEY `volumes_handle_idx` (`handle`),
  KEY `volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `volumes_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volumes`
--

LOCK TABLES `volumes` WRITE;
/*!40000 ALTER TABLE `volumes` DISABLE KEYS */;
INSERT INTO `volumes` VALUES (1,3,'Team','team','craft\\volumes\\Local',1,'$PRIMARY_SITE_URL/assets/images','{\"path\":\"$PRIMARY_SITE_URL/assets/images\"}',1,'2020-08-29 15:42:30','2020-08-29 18:17:42',NULL,'a64f316c-5b0e-43c1-b6ef-a5cd1fb197dc');
/*!40000 ALTER TABLE `volumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `widgets_userId_idx` (`userId`),
  CONSTRAINT `widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,1,'craft\\widgets\\RecentEntries',1,NULL,'{\"siteId\":1,\"section\":\"*\",\"limit\":10}',1,'2020-08-29 14:35:59','2020-08-29 14:35:59','7f246483-1df9-45e2-90ea-c999251516ab'),(2,1,'craft\\widgets\\CraftSupport',2,NULL,'[]',1,'2020-08-29 14:35:59','2020-08-29 14:35:59','be7eabe1-ab21-4d49-9740-698a1562b17d'),(3,1,'craft\\widgets\\Updates',3,NULL,'[]',1,'2020-08-29 14:35:59','2020-08-29 14:35:59','5be7c2fc-1535-4b48-b6a4-a53b1b65503f'),(4,1,'craft\\widgets\\Feed',4,NULL,'{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}',1,'2020-08-29 14:35:59','2020-08-29 14:35:59','0582765c-0603-4b49-8eaa-a5067e0ea71a');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-29 13:01:13
