CREATE DATABASE  IF NOT EXISTS `hcir` /*!40100 DEFAULT CHARACTER SET utf32 */;
USE `hcir`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: hcir
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `recruits`
--

DROP TABLE IF EXISTS `recruits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruits` (
  `recruitsID` int(11) NOT NULL AUTO_INCREMENT,
  `study` int(11) DEFAULT NULL,
  `firstName1` varchar(100) DEFAULT NULL,
  `lastName1` varchar(100) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `english1` tinyint(1) DEFAULT NULL,
  `sex1` char(1) DEFAULT NULL,
  `glasses1` smallint(6) DEFAULT NULL,
  `firstName2` varchar(100) DEFAULT NULL,
  `lastName2` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `english2` smallint(6) DEFAULT NULL,
  `sex2` char(1) DEFAULT NULL,
  `glasses2` varchar(45) DEFAULT NULL,
  `pastCollab` text,
  `comments` text,
  `approved` tinyint(1) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `slotID` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `compensation` text,
  PRIMARY KEY (`recruitsID`),
  KEY `FK_RECRUIT_STUDY_idx` (`study`),
  CONSTRAINT `FK_RECRUIT_STUDY` FOREIGN KEY (`study`) REFERENCES `study` (`studyID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruits`
--

LOCK TABLES `recruits` WRITE;
/*!40000 ALTER TABLE `recruits` DISABLE KEYS */;
INSERT INTO `recruits` VALUES (309,1,'Pedro','Rojas','carlos.barrerap@usach.cl',1,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hola!',1,NULL,18,'2015-03-12','20:35:40',1426188940,NULL),(310,3,'Hola','Chao','carlos.barrerap@usach.cl',1,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Soy el Víctor',1,NULL,20,'2015-03-12','20:37:36',1426189056,NULL),(311,3,'Pedro','Rojas','carlos.barrerap@usach.cl',1,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Soy el Víctor',1,NULL,21,'2015-03-12','20:38:29',1426189109,NULL),(312,2,'Pedrito','Rojas','carlos.barrerap@usach.cl',1,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Soy el Víctor!',1,NULL,19,'2015-03-12','20:39:39',1426189179,NULL),(313,1,'Pedro','Rojas','gary.fuenzalida@usach.cl',1,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asjkhfjksafa',1,NULL,18,'2015-03-12','20:44:00',1426189440,NULL),(314,3,'Hola','Chao','gary.fuenzalida@usach.cl',1,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asbjkfbasbfjsjbksa',1,NULL,21,'2015-03-12','20:47:21',1426189641,NULL),(315,2,'Pedro','Rojas','gary.fuenzalida@usach.cl',1,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'akjshfjksah',1,NULL,19,'2015-03-12','20:52:17',1426189937,NULL),(316,3,'A','A','gary.fuenzalida@usach.cl',1,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hsadhjgasfj',1,NULL,20,'2015-03-12','20:54:37',1426190077,NULL),(317,3,'A','A','felipe.bello@gmail.com',1,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'safhsa',1,NULL,20,'2015-03-12','21:03:48',1426190628,NULL),(318,2,'A','A','gary.fuenzalida@usach.cl',1,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jagsdhjasf',1,NULL,19,'2015-03-12','21:05:11',1426190711,NULL);
/*!40000 ALTER TABLE `recruits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slots` (
  `slotID` int(11) NOT NULL AUTO_INCREMENT,
  `study` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '1',
  `week` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`slotID`),
  KEY `FK_STUDY_SLOT_idx` (`study`),
  CONSTRAINT `FK_STUDY_SLOT` FOREIGN KEY (`study`) REFERENCES `study` (`studyID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (18,1,'2015-03-23','1','08:00',8,1,'1'),(19,2,'2015-03-24','1','09:00',9,1,'1'),(20,3,'2015-03-25','1','10:00',10,1,'1'),(21,3,'2015-03-26','1','10:00',11,1,'1');
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study`
--

DROP TABLE IF EXISTS `study`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `study` (
  `studyID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studyID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study`
--

LOCK TABLES `study` WRITE;
/*!40000 ALTER TABLE `study` DISABLE KEYS */;
INSERT INTO `study` VALUES (1,'JOSE LUIS','VARELA'),(2,'CARLOS','BARRERA'),(3,'GARY','FUENZALIDA');
/*!40000 ALTER TABLE `study` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `projectID` int(11) DEFAULT NULL,
  `condition` varchar(2) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `study` tinyint(1) DEFAULT NULL,
  `conditionCode` tinyint(1) DEFAULT NULL,
  `observations` text,
  `sentEmail` tinyint(1) DEFAULT NULL,
  `sentEmailFinalResults` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,309,NULL,'pedro309','fc6fea5b0c058716683a5ec0cf63833ba7a72bca',0,2,NULL,NULL,NULL,0),(9,310,NULL,'hola310','7541be01877451da3923f28c4a2bf379fc4b0591',0,2,NULL,NULL,NULL,0),(10,311,NULL,'pedro311','fc6fea5b0c058716683a5ec0cf63833ba7a72bca',0,2,NULL,NULL,NULL,0),(11,312,NULL,'pedrito312','fc6fea5b0c058716683a5ec0cf63833ba7a72bca',0,2,NULL,NULL,NULL,0),(12,313,NULL,'pedro313','fc6fea5b0c058716683a5ec0cf63833ba7a72bca',0,2,NULL,NULL,NULL,0),(13,314,NULL,'hola314','7541be01877451da3923f28c4a2bf379fc4b0591',0,2,NULL,NULL,NULL,0),(14,315,NULL,'pedro315','fc6fea5b0c058716683a5ec0cf63833ba7a72bca',0,2,NULL,NULL,NULL,0),(15,316,NULL,'a316','86f7e437faa5a7fce15d1ddcb9eaeaea377667b8',0,2,NULL,NULL,NULL,0),(16,317,NULL,'a317','86f7e437faa5a7fce15d1ddcb9eaeaea377667b8',0,2,NULL,NULL,NULL,0),(17,318,NULL,'a318','86f7e437faa5a7fce15d1ddcb9eaeaea377667b8',0,2,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-12 17:11:36
