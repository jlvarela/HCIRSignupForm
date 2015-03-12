CREATE DATABASE  IF NOT EXISTS `coagmento_study` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `coagmento_study`;
-- MySQL dump 10.13  Distrib 5.6.10, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coagmento_study
-- ------------------------------------------------------
-- Server version	5.6.10-log

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
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slots` (
  `slotID` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '1',
  `week` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`slotID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (83,'2012-06-11','Monday','18:00',18,0,'Jun 11th'),(82,'2012-06-11','Monday','16:00',16,0,'Jun 11th'),(81,'2012-06-11','Monday','14:00',14,0,'Jun 11th'),(80,'2012-06-11','Monday','12:00',12,0,'Jun 11th'),(79,'2012-06-11','Monday','10:00',10,0,'Jun 11th'),(78,'2012-06-11','Monday','08:00',8,0,'Jun 11th'),(77,'2012-06-08','Friday','20:00',20,0,'Jun 4th'),(76,'2012-06-08','Friday','18:00',18,0,'Jun 4th'),(75,'2012-06-08','Friday','16:00',16,0,'Jun 4th'),(74,'2012-06-08','Friday','14:00',14,0,'Jun 4th'),(73,'2012-06-08','Friday','12:00',12,0,'Jun 4th'),(72,'2012-06-08','Friday','10:00',10,0,'Jun 4th'),(71,'2012-06-08','Friday','08:00',8,0,'Jun 4th'),(70,'2012-06-07','Thursday','20:00',20,0,'Jun 4th'),(69,'2012-06-07','Thursday','18:00',18,0,'Jun 4th'),(68,'2012-06-07','Thursday','16:00',16,0,'Jun 4th'),(67,'2012-06-07','Thursday','14:00',14,0,'Jun 4th'),(66,'2012-06-07','Thursday','12:00',12,0,'Jun 4th'),(65,'2012-06-07','Thursday','10:00',10,0,'Jun 4th'),(64,'2012-06-07','Thursday','08:00',8,0,'Jun 4th'),(63,'2012-06-06','Wednesday','20:00',20,0,'Jun 4th'),(62,'2012-06-06','Wednesday','18:00',18,0,'Jun 4th'),(61,'2012-06-06','Wednesday','16:00',16,0,'Jun 4th'),(60,'2012-06-06','Wednesday','14:00',14,0,'Jun 4th'),(59,'2012-06-06','Wednesday','12:00',12,0,'Jun 4th'),(58,'2012-06-06','Wednesday','10:00',10,0,'Jun 4th'),(57,'2012-06-06','Wednesday','08:00',8,0,'Jun 4th'),(56,'2012-06-05','Tuesday','20:00',20,0,'Jun 4th'),(55,'2012-06-05','Tuesday','18:00',18,0,'Jun 4th'),(54,'2012-06-05','Tuesday','16:00',16,0,'Jun 4th'),(53,'2012-06-05','Tuesday','14:00',14,0,'Jun 4th'),(52,'2012-06-05','Tuesday','12:00',12,0,'Jun 4th'),(51,'2012-06-05','Tuesday','10:00',10,0,'Jun 4th'),(50,'2012-06-05','Tuesday','08:00',8,0,'Jun 4th'),(49,'2012-06-04','Monday','20:00',20,0,'Jun 4th'),(48,'2012-06-04','Monday','18:00',18,0,'Jun 4th'),(47,'2012-06-04','Monday','16:00',16,0,'Jun 4th'),(46,'2012-06-04','Monday','14:00',14,0,'Jun 4th'),(45,'2012-06-04','Monday','12:00',12,0,'Jun 4th'),(44,'2012-06-04','Monday','10:00',10,0,'Jun 4th'),(43,'2012-06-04','Monday','08:00',8,0,'Jun 4th'),(42,'2012-06-03','Sunday','20:00',20,0,'May 28th'),(41,'2012-06-03','Sunday','18:00',18,0,'May 28th'),(40,'2012-06-03','Sunday','16:00',16,0,'May 28th'),(39,'2012-06-03','Sunday','14:00',14,0,'May 28th'),(38,'2012-06-03','Sunday','12:00',12,0,'May 28th'),(37,'2012-06-03','Sunday','10:00',10,0,'May 28th'),(36,'2012-06-03','Sunday','08:00',8,0,'May 28th'),(35,'2012-06-02','Saturday','20:00',20,0,'May 28th'),(34,'2012-06-02','Saturday','18:00',18,0,'May 28th'),(33,'2012-06-02','Saturday','16:00',16,0,'May 28th'),(32,'2012-06-02','Saturday','14:00',14,0,'May 28th'),(31,'2012-06-02','Saturday','12:00',12,0,'May 28th'),(30,'2012-06-02','Saturday','10:00',10,0,'May 28th'),(29,'2012-06-02','Saturday','08:00',8,0,'May 28th'),(28,'2012-06-01','Friday','20:00',20,0,'May 28th'),(27,'2012-06-01','Friday','18:00',18,0,'May 28th'),(26,'2012-06-01','Friday','16:00',16,0,'May 28th'),(25,'2012-06-01','Friday','14:00',14,0,'May 28th'),(24,'2012-06-01','Friday','12:00',12,0,'May 28th'),(23,'2012-06-01','Friday','10:00',10,0,'May 28th'),(22,'2012-06-01','Friday','08:00',8,0,'May 28th'),(21,'2012-05-31','Thursday','20:00',20,0,'May 28th'),(20,'2012-05-31','Thursday','18:00',18,0,'May 28th'),(19,'2012-05-31','Thursday','16:00',16,0,'May 28th'),(18,'2012-05-31','Thursday','14:00',14,0,'May 28th'),(17,'2012-05-31','Thursday','12:00',12,0,'May 28th'),(16,'2012-05-31','Thursday','10:00',10,0,'May 28th'),(15,'2012-05-31','Thursday','08:00',8,0,'May 28th'),(14,'2012-05-30','Wednesday','20:00',20,0,'May 28th'),(13,'2012-05-30','Wednesday','18:00',18,0,'May 28th'),(12,'2012-05-30','Wednesday','16:00',16,0,'May 28th'),(11,'2012-05-30','Wednesday','14:00',14,0,'May 28th'),(10,'2012-05-30','Wednesday','12:00',12,0,'May 28th'),(9,'2012-05-30','Wednesday','10:00',10,0,'May 28th'),(8,'2012-05-30','Wednesday','08:00',8,0,'May 28th'),(7,'2012-05-29','Tuesday','20:00',20,0,'May 28th'),(6,'2012-05-29','Tuesday','18:00',18,0,'May 28th'),(5,'2012-05-29','Tuesday','16:00',16,0,'May 28th'),(4,'2012-05-29','Tuesday','14:00',14,0,'May 28th'),(3,'2012-05-29','Tuesday','12:00',12,0,'May 28th'),(2,'2012-05-29','Tuesday','10:00',10,0,'May 28th'),(1,'2012-05-29','Tuesday','08:00',8,0,'May 28th'),(84,'2012-06-11','Monday','20:00',20,0,'Jun 11th'),(85,'2012-06-14','Thursday','08:00',8,0,'Jun 11th'),(86,'2012-06-14','Thursday','10:00',10,0,'Jun 11th'),(87,'2012-06-14','Thursday','12:00',12,0,'Jun 11th'),(88,'2012-06-14','Thursday','14:00',14,0,'Jun 11th'),(89,'2012-06-14','Thursday','16:00',16,0,'Jun 11th'),(90,'2012-06-14','Thursday','18:00',18,0,'Jun 11th'),(91,'2012-06-14','Thursday','20:00',20,0,'Jun 11th'),(92,'2012-06-15','Friday','08:00',8,0,'Jun 11th'),(93,'2012-06-15','Friday','10:00',10,0,'Jun 11th'),(94,'2012-06-15','Friday','12:00',12,0,'Jun 11th'),(95,'2012-06-15','Friday','14:00',14,0,'Jun 11th'),(96,'2012-06-15','Friday','16:00',16,0,'Jun 11th'),(97,'2012-06-15','Friday','18:00',18,0,'Jun 11th'),(98,'2012-06-15','Friday','20:00',20,0,'Jun 11th'),(99,'2012-06-18','Monday','08:00',8,0,'Jun 18th'),(100,'2012-06-18','Monday','10:00',10,0,'Jun 18th'),(101,'2012-06-18','Monday','12:00',12,0,'Jun 18th'),(102,'2012-06-18','Monday','14:00',14,0,'Jun 18th'),(103,'2012-06-18','Monday','16:00',16,0,'Jun 18th'),(104,'2012-06-18','Monday','18:00',18,0,'Jun 18th'),(105,'2012-06-18','Monday','20:00',20,0,'Jun 18th'),(106,'2012-06-19','Tuesday','08:00',8,0,'Jun 18th'),(107,'2012-06-19','Tuesday','10:00',10,0,'Jun 18th'),(108,'2012-06-12','Tuesday','08:00',8,0,'Jun 11th'),(109,'2012-06-20','Wednesday','08:00',8,0,'Jun 18th'),(110,'2012-06-20','Wednesday','10:00',10,0,'Jun 18th'),(111,'2012-06-20','Wednesday','12:00',12,0,'Jun 18th'),(112,'2012-06-20','Wednesday','14:00',14,0,'Jun 18th'),(113,'2012-06-20','Wednesday','16:00',16,0,'Jun 18th'),(114,'2012-06-20','Wednesday','18:00',18,0,'Jun 18th'),(115,'2012-06-20','Wednesday','20:00',20,0,'Jun 18th'),(116,'2012-06-21','Thursday','08:00',8,0,'Jun 18th'),(117,'2012-06-21','Thursday','10:00',10,0,'Jun 18th'),(118,'2012-06-21','Thursday','12:00',12,0,'Jun 18th'),(119,'2012-06-21','Thursday','14:00',14,0,'Jun 18th'),(120,'2012-06-21','Thursday','16:00',16,0,'Jun 18th'),(121,'2012-06-21','Thursday','18:00',18,0,'Jun 18th'),(122,'2012-06-21','Thursday','20:00',20,0,'Jun 18th'),(123,'2012-06-22','Friday','08:00',8,0,'Jun 18th'),(124,'2012-06-22','Friday','10:00',10,0,'Jun 18th'),(125,'2012-06-22','Friday','12:00',12,0,'Jun 18th'),(126,'2012-06-22','Friday','14:00',14,0,'Jun 18th'),(127,'2012-06-22','Friday','16:00',16,0,'Jun 18th'),(128,'2012-06-22','Friday','18:00',18,0,'Jun 18th'),(129,'2012-06-22','Friday','20:00',20,0,'Jun 18th'),(130,'2012-06-23','Saturday','08:00',8,0,'Jun 18th'),(131,'2012-06-23','Saturday','10:00',10,0,'Jun 18th'),(132,'2012-06-23','Saturday','12:00',12,0,'Jun 18th'),(133,'2012-06-23','Saturday','14:00',14,0,'Jun 18th'),(134,'2012-06-23','Saturday','16:00',16,0,'Jun 18th'),(135,'2012-06-23','Saturday','18:00',18,0,'Jun 18th'),(136,'2012-06-23','Saturday','20:00',20,0,'Jun 18th'),(137,'2012-06-24','Sunday','08:00',8,0,'Jun 18th'),(138,'2012-06-24','Sunday','10:00',10,0,'Jun 18th'),(139,'2012-06-24','Sunday','12:00',12,0,'Jun 18th'),(140,'2012-06-24','Sunday','14:00',14,0,'Jun 18th'),(141,'2012-06-24','Sunday','16:00',16,0,'Jun 18th'),(142,'2012-06-24','Sunday','18:00',18,0,'Jun 18th'),(143,'2012-06-24','Sunday','20:00',20,0,'Jun 18th'),(144,'2012-06-25','Monday','08:00',8,0,'Jun 25th'),(145,'2012-06-25','Monday','10:00',10,0,'Jun 25th'),(146,'2012-06-25','Monday','12:00',12,0,'Jun 25th'),(147,'2012-06-25','Monday','14:00',14,0,'Jun 25th'),(148,'2012-06-25','Monday','16:00',16,0,'Jun 25th'),(149,'2012-06-25','Monday','18:00',18,0,'Jun 25th'),(150,'2012-06-25','Monday','20:00',20,0,'Jun 25th'),(151,'2012-06-26','Tuesday','08:00',8,0,'Jun 25th'),(152,'2012-06-26','Tuesday','10:00',10,0,'Jun 25th'),(153,'2012-06-26','Tuesday','12:00',12,0,'Jun 25th'),(154,'2012-06-26','Tuesday','14:00',14,0,'Jun 25th'),(155,'2012-06-26','Tuesday','16:00',16,0,'Jun 25th'),(156,'2012-06-26','Tuesday','18:00',18,0,'Jun 25th'),(157,'2012-06-26','Tuesday','20:00',20,0,'Jun 25th'),(158,'2012-06-27','Wednesday','08:00',8,0,'Jun 25th'),(159,'2012-06-27','Wednesday','10:00',10,0,'Jun 25th'),(160,'2012-06-27','Wednesday','12:00',12,0,'Jun 25th'),(161,'2012-06-27','Wednesday','14:00',14,0,'Jun 25th'),(162,'2012-06-27','Wednesday','16:00',16,0,'Jun 25th'),(163,'2012-06-27','Wednesday','18:00',18,0,'Jun 25th'),(164,'2012-06-27','Wednesday','20:00',20,0,'Jun 25th'),(165,'2012-06-28','Thursday','08:00',8,0,'Jun 25th'),(166,'2012-06-28','Thursday','10:00',10,0,'Jun 25th'),(167,'2012-06-28','Thursday','12:00',12,0,'Jun 25th'),(168,'2012-06-28','Thursday','14:00',14,0,'Jun 25th'),(169,'2012-06-28','Thursday','16:00',16,0,'Jun 25th'),(170,'2012-06-28','Thursday','18:00',18,0,'Jun 25th'),(171,'2012-06-28','Thursday','20:00',20,0,'Jun 25th'),(172,'2012-06-29','Friday','08:00',8,0,'Jun 25th'),(173,'2012-06-29','Friday','10:00',10,0,'Jun 25th'),(174,'2012-06-29','Friday','12:00',12,0,'Jun 25th'),(175,'2012-06-29','Friday','14:00',14,0,'Jun 25th'),(176,'2012-06-29','Friday','16:00',16,0,'Jun 25th'),(177,'2012-06-29','Friday','18:00',18,0,'Jun 25th'),(178,'2012-06-29','Friday','20:00',20,0,'Jun 25th'),(179,'2012-06-30','Saturday','08:00',8,0,'Jun 25th'),(180,'2012-06-30','Saturday','10:00',10,0,'Jun 25th'),(181,'2012-06-30','Saturday','12:00',12,0,'Jun 25th'),(182,'2012-06-30','Saturday','14:00',14,0,'Jun 25th'),(183,'2012-06-30','Saturday','16:00',16,0,'Jun 25th'),(184,'2012-06-30','Saturday','18:00',18,0,'Jun 25th'),(185,'2012-06-30','Saturday','20:00',20,0,'Jun 25th'),(186,'2012-07-01','Sunday','08:00',8,0,'Jun 25th'),(187,'2012-07-01','Sunday','10:00',10,0,'Jun 25th'),(188,'2012-07-01','Sunday','12:00',12,0,'Jun 25th'),(189,'2012-07-01','Sunday','14:00',14,0,'Jun 25th'),(190,'2012-07-01','Sunday','16:00',16,0,'Jun 25th'),(191,'2012-07-01','Sunday','18:00',18,0,'Jun 25th'),(192,'2012-07-01','Sunday','20:00',20,0,'Jun 25th'),(193,'2012-07-02','Monday','08:00',8,0,'Jul 2nd'),(194,'2012-07-02','Monday','10:00',10,0,'Jul 2nd'),(195,'2012-07-02','Monday','12:00',12,0,'Jul 2nd'),(196,'2012-07-02','Monday','14:00',14,0,'Jul 2nd'),(197,'2012-07-02','Monday','16:00',16,0,'Jul 2nd'),(198,'2012-07-02','Monday','18:00',18,0,'Jul 2nd'),(199,'2012-07-02','Monday','20:00',20,0,'Jul 2nd'),(200,'2012-07-03','Tuesday','08:00',8,0,'Jul 2nd'),(201,'2012-07-03','Tuesday','10:00',10,0,'Jul 2nd'),(202,'2012-07-03','Tuesday','12:00',12,0,'Jul 2nd'),(203,'2012-07-03','Tuesday','14:00',14,0,'Jul 2nd'),(204,'2012-07-03','Tuesday','16:00',16,0,'Jul 2nd'),(205,'2012-07-03','Tuesday','18:00',18,0,'Jul 2nd'),(206,'2012-07-03','Tuesday','20:00',20,0,'Jul 2nd'),(207,'2012-07-05','Thursday','08:00',8,0,'Jul 2nd'),(208,'2012-07-05','Thursday','10:00',10,0,'Jul 2nd'),(209,'2012-07-05','Thursday','12:00',12,0,'Jul 2nd'),(210,'2012-07-05','Thursday','14:00',14,0,'Jul 2nd'),(211,'2012-07-05','Thursday','16:00',16,0,'Jul 2nd'),(212,'2012-07-05','Thursday','18:00',18,0,'Jul 2nd'),(213,'2012-07-05','Thursday','20:00',20,0,'Jul 2nd'),(214,'2012-07-06','Friday','08:00',8,0,'Jul 2nd'),(215,'2012-07-06','Friday','10:00',10,0,'Jul 2nd'),(216,'2012-07-06','Friday','12:00',12,0,'Jul 2nd'),(217,'2012-07-06','Friday','14:00',14,0,'Jul 2nd'),(218,'2012-07-06','Friday','16:00',16,0,'Jul 2nd'),(219,'2012-07-06','Friday','18:00',18,0,'Jul 2nd'),(220,'2012-07-06','Friday','20:00',20,0,'Jul 2nd'),(221,'2012-07-07','Saturday','08:00',8,0,'Jul 2nd'),(222,'2012-07-07','Saturday','10:00',10,0,'Jul 2nd'),(223,'2012-07-07','Saturday','12:00',12,0,'Jul 2nd'),(224,'2012-07-07','Saturday','14:00',14,0,'Jul 2nd'),(225,'2012-07-07','Saturday','16:00',16,0,'Jul 2nd'),(226,'2012-07-07','Saturday','18:00',18,0,'Jul 2nd'),(227,'2012-07-07','Saturday','20:00',20,0,'Jul 2nd'),(228,'2012-07-09','Monday','08:00',8,0,'Jul 9th'),(229,'2012-07-09','Monday','10:00',10,0,'Jul 9th'),(231,'2012-07-09','Monday','12:00',12,0,'Jul 9th'),(232,'2012-07-09','Monday','14:00',14,0,'Jul 9th'),(233,'2012-07-09','Monday','16:00',16,0,'Jul 9th'),(234,'2012-07-09','Monday','18:00',18,0,'Jul 9th'),(235,'2012-07-09','Monday','20:00',20,0,'Jul 9th'),(236,'2012-07-10','Tuesday','08:00',8,0,'Jul 9th'),(237,'2012-07-10','Tuesday','10:00',10,0,'Jul 9th'),(238,'2012-07-10','Tuesday','12:00',12,0,'Jul 9th'),(239,'2012-07-10','Tuesday','14:00',14,0,'Jul 9th'),(240,'2012-07-10','Tuesday','16:00',16,0,'Jul 9th'),(241,'2012-07-10','Tuesday','18:00',18,0,'Jul 9th'),(242,'2012-07-10','Tuesday','20:00',20,0,'Jul 9th'),(243,'2012-07-11','Wednesday','08:00',8,0,'Jul 9th'),(244,'2012-07-11','Wednesday','10:00',10,0,'Jul 9th'),(245,'2012-07-11','Wednesday','12:00',12,0,'Jul 9th'),(246,'2012-07-11','Wednesday','14:00',14,0,'Jul 9th'),(247,'2012-07-11','Wednesday','16:00',16,0,'Jul 9th'),(248,'2012-07-11','Wednesday','18:00',18,0,'Jul 9th'),(249,'2012-07-11','Wednesday','20:00',20,0,'Jul 9th'),(250,'2012-07-12','Thursday','08:00',8,0,'Jul 9th'),(251,'2012-07-12','Thursday','10:00',10,0,'Jul 9th'),(252,'2012-07-12','Thursday','12:00',12,0,'Jul 9th'),(253,'2012-07-12','Thursday','14:00',14,0,'Jul 9th'),(254,'2012-07-12','Thursday','16:00',16,0,'Jul 9th'),(255,'2012-07-12','Thursday','18:00',18,0,'Jul 9th'),(256,'2012-07-12','Thursday','20:00',20,0,'Jul 9th'),(257,'2012-07-13','Friday','08:00',8,0,'Jul 9th'),(258,'2012-07-13','Friday','10:00',10,0,'Jul 9th'),(259,'2012-07-13','Friday','12:00',12,0,'Jul 9th'),(260,'2012-07-13','Friday','14:00',14,0,'Jul 9th'),(261,'2012-07-13','Friday','16:00',16,0,'Jul 9th'),(262,'2012-07-13','Friday','18:00',18,0,'Jul 9th'),(263,'2012-07-13','Friday','20:00',20,0,'Jul 9th'),(264,'2012-07-14','Saturday','08:00',8,0,'Jul 9th'),(265,'2012-07-14','Saturday','10:00',10,0,'Jul 9th'),(266,'2012-07-14','Saturday','12:00',12,0,'Jul 9th'),(267,'2012-07-14','Saturday','14:00',14,0,'Jul 9th'),(268,'2012-07-14','Saturday','16:00',16,0,'Jul 9th'),(269,'2012-07-14','Saturday','18:00',18,0,'Jul 9th'),(270,'2012-07-14','Saturday','20:00',20,0,'Jul 9th'),(271,'2012-07-15','Sunday','08:00',8,0,'Jul 9th'),(272,'2012-07-15','Sunday','10:00',10,0,'Jul 9th'),(273,'2012-07-15','Sunday','12:00',12,0,'Jul 9th'),(274,'2012-07-15','Sunday','14:00',14,0,'Jul 9th'),(275,'2012-07-15','Sunday','16:00',16,0,'Jul 9th'),(276,'2012-07-15','Sunday','18:00',18,0,'Jul 9th'),(277,'2012-07-15','Sunday','20:00',20,0,'Jul 9th'),(305,'2012-07-23','Monday','20:00',20,0,'Jul 23rd'),(304,'2012-07-23','Monday','18:00',18,0,'Jul 23rd'),(303,'2012-07-23','Monday','16:00',16,0,'Jul 23rd'),(302,'2012-07-23','Monday','14:00',14,0,'Jul 23rd'),(279,'2012-07-18','Wednesday','10:00',10,0,'Jul 16th'),(278,'2012-07-18','Wednesday','08:00',8,0,'Jul 16th'),(301,'2012-07-23','Monday','12:00',12,0,'Jul 23rd'),(300,'2012-07-23','Monday','10:00',10,0,'Jul 23rd'),(299,'2012-07-23','Monday','08:00',8,0,'Jul 23rd'),(280,'2012-07-18','Wednesday','12:00',12,0,'Jul 16th'),(281,'2012-07-18','Wednesday','14:00',14,0,'Jul 16th'),(282,'2012-07-18','Wednesday','16:00',16,0,'Jul 16th'),(283,'2012-07-18','Wednesday','18:00',18,0,'Jul 16th'),(284,'2012-07-18','Wednesday','20:00',20,0,'Jul 16th'),(285,'2012-07-19','Thursday','08:00',8,0,'Jul 16th'),(286,'2012-07-19','Thursday','10:00',10,0,'Jul 16th'),(287,'2012-07-19','Thursday','12:00',12,0,'Jul 16th'),(288,'2012-07-19','Thursday','14:00',14,0,'Jul 16th'),(289,'2012-07-19','Thursday','16:00',16,0,'Jul 16th'),(290,'2012-07-19','Thursday','18:00',18,0,'Jul 16th'),(291,'2012-07-19','Thursday','20:00',20,0,'Jul 16th'),(292,'2012-07-20','Friday','08:00',8,0,'Jul 16th'),(293,'2012-07-20','Friday','10:00',10,0,'Jul 16th'),(294,'2012-07-20','Friday','12:00',12,0,'Jul 16th'),(295,'2012-07-20','Friday','14:00',14,0,'Jul 16th'),(296,'2012-07-20','Friday','16:00',16,0,'Jul 16th'),(297,'2012-07-20','Friday','18:00',18,0,'Jul 16th'),(298,'2012-07-20','Friday','20:00',20,0,'Jul 16th'),(306,'2012-07-24','Tuesday','08:00',8,0,'Jul 23rd'),(307,'2012-07-24','Tuesday','10:00',10,0,'Jul 23rd'),(308,'2012-07-24','Tuesday','12:00',12,0,'Jul 23rd'),(309,'2012-07-24','Tuesday','14:00',14,0,'Jul 23rd'),(310,'2012-07-26','Thursday','08:00',8,0,'Jul 23rd'),(311,'2012-07-26','Thursday','10:00',10,0,'Jul 23rd'),(312,'2012-07-26','Thursday','12:00',12,0,'Jul 23rd'),(313,'2012-07-26','Thursday','14:00',14,0,'Jul 23rd'),(314,'2012-07-27','Friday','08:00',8,0,'Jul 23rd'),(315,'2012-07-27','Friday','10:00',10,0,'Jul 23rd'),(316,'2012-07-27','Friday','12:00',12,0,'Jul 23rd'),(317,'2012-07-27','Friday','14:00',14,0,'Jul 23rd'),(318,'2012-07-24','Tuesday','16:00',16,0,'Jul 23rd'),(319,'2012-07-24','Tuesday','18:00',18,0,'Jul 23rd'),(320,'2012-07-24','Tuesday','20:00',20,0,'Jul 23rd'),(321,'2012-07-23','Monday','08:00',8,0,'Jul 23rd'),(322,'2012-07-23','Monday','10:00',10,0,'Jul 23rd'),(323,'2012-07-23','Monday','12:00',12,0,'Jul 23rd'),(324,'2012-07-23','Monday','14:00',14,0,'Jul 23rd'),(325,'2012-07-23','Monday','16:00',16,0,'Jul 23rd'),(326,'2012-07-23','Monday','18:00',18,0,'Jul 23rd'),(327,'2012-07-23','Monday','20:00',20,0,'Jul 23rd'),(328,'2012-08-01','Wednesday','12:00',12,0,'Jul 30th'),(329,'2012-08-01','Wednesday','14:00',14,0,'Jul 30th'),(330,'2012-08-01','Wednesday','16:00',16,0,'Jul 30th'),(331,'2012-08-01','Wednesday','18:00',18,0,'Jul 30th'),(332,'2012-08-01','Wednesday','20:00',20,0,'Jul 30th'),(333,'2012-08-02','Thursday','08:00',8,0,'Jul 30th'),(334,'2012-08-02','Thursday','10:00',10,0,'Jul 30th'),(335,'2012-08-02','Thursday','12:00',12,0,'Jul 30th'),(336,'2012-08-02','Thursday','14:00',14,0,'Jul 30th'),(337,'2012-08-02','Thursday','16:00',16,0,'Jul 30th'),(338,'2012-08-02','Thursday','18:00',18,0,'Jul 30th'),(339,'2012-08-02','Thursday','20:00',20,0,'Jul 30th'),(340,'2012-08-03','Friday','08:00',8,0,'Jul 30th'),(341,'2012-08-03','Friday','10:00',10,0,'Jul 30th'),(342,'2012-08-03','Friday','12:00',12,0,'Jul 30th'),(343,'2012-08-03','Friday','14:00',14,0,'Jul 30th'),(344,'2012-08-03','Friday','16:00',16,0,'Jul 30th'),(345,'2012-08-03','Friday','18:00',18,0,'Jul 30th'),(346,'2012-08-03','Friday','20:00',20,0,'Jul 30th'),(347,'2012-08-06','Monday','08:00',8,0,'Aug 6th'),(348,'2012-08-06','Monday','10:00',10,0,'Aug 6th'),(349,'2012-08-06','Monday','12:00',12,0,'Aug 6th'),(350,'2012-08-06','Monday','14:00',14,0,'Aug 6th'),(351,'2012-08-06','Monday','16:00',16,0,'Aug 6th'),(352,'2012-08-06','Monday','18:00',18,0,'Aug 6th'),(353,'2012-08-06','Monday','20:00',20,0,'Aug 6th'),(354,'2012-08-07','Tuesday','08:00',8,0,'Aug 6th'),(355,'2012-08-07','Tuesday','10:00',10,0,'Aug 6th'),(356,'2012-08-07','Tuesday','12:00',12,0,'Aug 6th'),(357,'2012-08-07','Tuesday','14:00',14,0,'Aug 6th'),(358,'2012-08-07','Tuesday','16:00',16,0,'Aug 6th'),(359,'2012-08-07','Tuesday','18:00',18,0,'Aug 6th'),(360,'2012-08-07','Tuesday','20:00',20,0,'Aug 6th'),(361,'2012-08-08','Wednesday','08:00',8,0,'Aug 6th'),(362,'2012-08-08','Wednesday','10:00',10,0,'Aug 6th'),(363,'2012-08-08','Wednesday','12:00',12,0,'Aug 6th'),(364,'2012-08-08','Wednesday','14:00',14,0,'Aug 6th'),(365,'2012-08-08','Wednesday','16:00',16,0,'Aug 6th'),(366,'2012-08-08','Wednesday','18:00',18,0,'Aug 6th'),(367,'2012-08-08','Wednesday','20:00',20,0,'Aug 6th'),(368,'2012-08-09','Thursday','08:00',8,0,'Aug 6th'),(369,'2012-08-09','Thursday','10:00',10,0,'Aug 6th'),(370,'2012-08-09','Thursday','12:00',12,0,'Aug 6th'),(371,'2012-08-09','Thursday','14:00',14,0,'Aug 6th'),(372,'2012-08-09','Thursday','16:00',16,0,'Aug 6th'),(373,'2012-08-09','Thursday','18:00',18,0,'Aug 6th'),(374,'2012-08-09','Thursday','20:00',20,0,'Aug 6th'),(375,'2012-08-10','Friday','08:00',8,0,'Aug 6th'),(376,'2012-08-10','Friday','10:00',10,0,'Aug 6th'),(377,'2012-08-10','Friday','12:00',12,0,'Aug 6th'),(378,'2012-08-10','Friday','14:00',14,0,'Aug 6th'),(379,'2012-08-10','Friday','16:00',16,0,'Aug 6th'),(380,'2012-08-10','Friday','18:00',18,0,'Aug 6th'),(381,'2012-08-10','Friday','20:00',20,0,'Aug 6th'),(473,'2012-08-27','Monday','8:00',8,0,'Aug 27th'),(382,'2012-08-13','Monday','08:00',8,0,'Aug 13th'),(383,'2012-08-13','Monday','10:00',10,0,'Aug 13th'),(384,'2012-08-13','Monday','12:00',12,0,'Aug 13th'),(385,'2012-08-13','Monday','14:00',14,0,'Aug 13th'),(386,'2012-08-13','Monday','16:00',16,0,'Aug 13th'),(387,'2012-08-13','Monday','18:00',18,0,'Aug 13th'),(388,'2012-08-13','Monday','20:00',20,0,'Aug 13th'),(389,'2012-08-14','Tuesday','08:00',8,0,'Aug 13th'),(390,'2012-08-14','Tuesday','10:00',10,0,'Aug 13th'),(391,'2012-08-14','Tuesday','12:00',12,0,'Aug 13th'),(392,'2012-08-14','Tuesday','14:00',14,0,'Aug 13th'),(393,'2012-08-14','Tuesday','16:00',16,0,'Aug 13th'),(394,'2012-08-14','Tuesday','18:00',18,0,'Aug 13th'),(395,'2012-08-14','Tuesday','20:00',20,0,'Aug 13th'),(396,'2012-08-15','Wednesday','08:00',8,0,'Aug 13th'),(397,'2012-08-15','Wednesday','10:00',10,0,'Aug 13th'),(398,'2012-08-15','Wednesday','12:00',12,0,'Aug 13th'),(399,'2012-08-15','Wednesday','14:00',14,0,'Aug 13th'),(400,'2012-08-15','Wednesday','16:00',16,0,'Aug 13th'),(401,'2012-08-15','Wednesday','18:00',18,0,'Aug 13th'),(402,'2012-08-15','Wednesday','20:00',20,0,'Aug 13th'),(403,'2012-08-17','Friday','08:00',8,0,'Aug 13th'),(404,'2012-08-17','Friday','10:00',10,0,'Aug 13th'),(405,'2012-08-17','Friday','12:00',12,0,'Aug 13th'),(406,'2012-08-17','Friday','14:00',14,0,'Aug 13th'),(407,'2012-08-17','Friday','16:00',16,0,'Aug 13th'),(408,'2012-08-17','Friday','18:00',18,0,'Aug 13th'),(409,'2012-08-17','Friday','20:00',20,0,'Aug 13th'),(410,'2012-08-18','Saturday','08:00',8,0,'Aug 13th'),(411,'2012-08-18','Saturday','10:00',10,0,'Aug 13th'),(412,'2012-08-18','Saturday','12:00',12,0,'Aug 13th'),(413,'2012-08-18','Saturday','14:00',14,0,'Aug 13th'),(414,'2012-08-18','Saturday','16:00',16,0,'Aug 13th'),(415,'2012-08-18','Saturday','18:00',18,0,'Aug 13th'),(416,'2012-08-18','Saturday','20:00',20,0,'Aug 13th'),(417,'2012-08-19','Sunday','08:00',8,0,'Aug 13th'),(418,'2012-08-19','Sunday','10:00',10,0,'Aug 13th'),(419,'2012-08-19','Sunday','12:00',12,0,'Aug 13th'),(420,'2012-08-19','Sunday','14:00',14,0,'Aug 13th'),(421,'2012-08-19','Sunday','16:00',16,0,'Aug 13th'),(422,'2012-08-19','Sunday','18:00',18,0,'Aug 13th'),(423,'2012-08-19','Sunday','20:00',20,0,'Aug 13th'),(424,'2012-08-20','Monday','8:00',8,0,'Aug 20th'),(425,'2012-08-20','Monday','10:00',10,0,'Aug 20th'),(426,'2012-08-20','Monday','12:00',12,0,'Aug 20th'),(427,'2012-08-20','Monday','14:00',14,0,'Aug 20th'),(428,'2012-08-20','Monday','16:00',16,0,'Aug 20th'),(429,'2012-08-20','Monday','18:00',18,0,'Aug 20th'),(430,'2012-08-20','Monday','20:00',20,0,'Aug 20th'),(431,'2012-08-21','Tuesday','8:00',8,0,'Aug 20th'),(432,'2012-08-21','Tuesday','10:00',10,0,'Aug 20th'),(433,'2012-08-21','Tuesday','12:00',12,0,'Aug 20th'),(434,'2012-08-21','Tuesday','14:00',14,0,'Aug 20th'),(435,'2012-08-21','Tuesday','16:00',16,0,'Aug 20th'),(436,'2012-08-21','Tuesday','18:00',18,0,'Aug 20th'),(437,'2012-08-21','Tuesday','20:00',20,0,'Aug 20th'),(438,'2012-08-22','Wednesday','8:00',8,0,'Aug 20th'),(439,'2012-08-22','Wednesday','10:00',10,0,'Aug 20th'),(440,'2012-08-22','Wednesday','12:00',12,0,'Aug 20th'),(441,'2012-08-22','Wednesday','14:00',14,0,'Aug 20th'),(442,'2012-08-22','Wednesday','16:00',16,0,'Aug 20th'),(443,'2012-08-22','Wednesday','18:00',18,0,'Aug 20th'),(444,'2012-08-22','Wednesday','20:00',20,0,'Aug 20th'),(445,'2012-08-23','Thursday','8:00',8,0,'Aug 20th'),(446,'2012-08-23','Thursday','10:00',10,0,'Aug 20th'),(447,'2012-08-23','Thursday','12:00',12,0,'Aug 20th'),(448,'2012-08-23','Thursday','14:00',14,0,'Aug 20th'),(449,'2012-08-23','Thursday','16:00',16,0,'Aug 20th'),(450,'2012-08-23','Thursday','18:00',18,0,'Aug 20th'),(451,'2012-08-23','Thursday','20:00',20,0,'Aug 20th'),(452,'2012-08-24','Friday','8:00',8,0,'Aug 20th'),(453,'2012-08-24','Friday','10:00',10,0,'Aug 20th'),(454,'2012-08-24','Friday','12:00',12,0,'Aug 20th'),(455,'2012-08-24','Friday','14:00',14,0,'Aug 20th'),(456,'2012-08-24','Friday','16:00',16,0,'Aug 20th'),(457,'2012-08-24','Friday','18:00',18,0,'Aug 20th'),(458,'2012-08-24','Friday','20:00',20,0,'Aug 20th'),(459,'2012-08-25','Saturday','8:00',8,0,'Aug 20th'),(460,'2012-08-25','Saturday','10:00',10,0,'Aug 20th'),(461,'2012-08-25','Saturday','12:00',12,0,'Aug 20th'),(462,'2012-08-25','Saturday','14:00',14,0,'Aug 20th'),(463,'2012-08-25','Saturday','16:00',16,0,'Aug 20th'),(464,'2012-08-25','Saturday','18:00',18,0,'Aug 20th'),(465,'2012-08-25','Saturday','20:00',20,0,'Aug 20th'),(466,'2012-08-26','Sunday','8:00',8,0,'Aug 20th'),(467,'2012-08-26','Sunday','10:00',10,0,'Aug 20th'),(468,'2012-08-26','Sunday','12:00',12,0,'Aug 20th'),(469,'2012-08-26','Sunday','14:00',14,0,'Aug 20th'),(470,'2012-08-26','Sunday','16:00',16,0,'Aug 20th'),(471,'2012-08-26','Sunday','18:00',18,0,'Aug 20th'),(472,'2012-08-26','Sunday','20:00',20,0,'Aug 20th'),(0,'2012-05-28','Monday','14:00',14,0,'May 28th'),(619,'2012-09-17','Monday','08:00',8,1,'Sep 17th'),(620,'2012-09-17','Monday','10:00',10,0,'Sep 17th'),(621,'2012-09-17','Monday','12:00',12,0,'Sep 17th'),(622,'2012-09-17','Monday','14:00',14,0,'Sep 17th'),(474,'2012-08-27','Monday','10:00',10,0,'Aug 27th'),(475,'2012-08-27','Monday','12:00',12,0,'Aug 27th'),(476,'2012-08-27','Monday','14:00',14,0,'Aug 27th'),(477,'2012-08-27','Monday','16:00',16,0,'Aug 27th'),(478,'2012-08-27','Monday','18:00',18,0,'Aug 27th'),(479,'2012-08-27','Monday','20:00',20,0,'Aug 27th'),(480,'2012-08-28','Tuesday','8:00',8,0,'Aug 27th'),(481,'2012-08-28','Tuesday','10:00',10,0,'Aug 27th'),(482,'2012-08-28','Tuesday','12:00',12,0,'Aug 27th'),(483,'2012-08-28','Tuesday','14:00',14,0,'Aug 27th'),(484,'2012-08-28','Tuesday','16:00',16,0,'Aug 27th'),(485,'2012-08-28','Tuesday','18:00',18,0,'Aug 27th'),(486,'2012-08-28','Tuesday','20:00',20,0,'Aug 27th'),(487,'2012-08-29','Wednesday','8:00',8,0,'Aug 27th'),(488,'2012-08-29','Wednesday','10:00',10,0,'Aug 27th'),(489,'2012-08-29','Wednesday','12:00',12,0,'Aug 27th'),(490,'2012-08-29','Wednesday','14:00',14,0,'Aug 27th'),(491,'2012-08-29','Wednesday','16:00',16,0,'Aug 27th'),(492,'2012-08-29','Wednesday','18:00',18,0,'Aug 27th'),(493,'2012-08-29','Wednesday','20:00',20,0,'Aug 27th'),(494,'2012-08-30','Thursday','8:00',8,0,'Aug 27th'),(495,'2012-08-30','Thursday','10:00',10,0,'Aug 27th'),(496,'2012-08-30','Thursday','12:00',12,0,'Aug 27th'),(497,'2012-08-30','Thursday','14:00',14,0,'Aug 27th'),(498,'2012-08-30','Thursday','16:00',16,0,'Aug 27th'),(499,'2012-08-30','Thursday','18:00',18,0,'Aug 27th'),(500,'2012-08-30','Thursday','20:00',20,0,'Aug 27th'),(501,'2012-08-31','Friday','8:00',8,0,'Aug 27th'),(502,'2012-08-31','Friday','10:00',10,0,'Aug 27th'),(503,'2012-08-31','Friday','12:00',12,0,'Aug 27th'),(504,'2012-08-31','Friday','14:00',14,0,'Aug 27th'),(505,'2012-08-31','Friday','16:00',16,0,'Aug 27th'),(506,'2012-08-31','Friday','18:00',18,0,'Aug 27th'),(507,'2012-08-31','Friday','20:00',20,0,'Aug 27th'),(508,'2012-09-01','Saturday','8:00',8,0,'Aug 27th'),(509,'2012-09-01','Saturday','10:00',10,0,'Aug 27th'),(510,'2012-09-01','Saturday','12:00',12,0,'Aug 27th'),(511,'2012-09-01','Saturday','14:00',14,0,'Aug 27th'),(512,'2012-09-01','Saturday','16:00',16,0,'Aug 27th'),(513,'2012-09-01','Saturday','18:00',18,0,'Aug 27th'),(514,'2012-09-01','Saturday','20:00',20,0,'Aug 27th'),(515,'2012-09-02','Sunday','8:00',8,0,'Aug 27th'),(516,'2012-09-02','Sunday','10:00',10,0,'Aug 27th'),(517,'2012-09-02','Sunday','12:00',12,0,'Aug 27th'),(518,'2012-09-02','Sunday','14:00',14,0,'Aug 27th'),(519,'2012-09-02','Sunday','16:00',16,0,'Aug 27th'),(520,'2012-09-02','Sunday','18:00',18,0,'Aug 27th'),(521,'2012-09-02','Sunday','20:00',20,0,'Aug 27th'),(522,'2012-09-03','Monday','10:00',10,0,'Sep 3rd'),(523,'2012-09-03','Monday','12:00',12,0,'Sep 3rd'),(524,'2012-09-03','Monday','14:00',14,0,'Sep 3rd'),(525,'2012-09-03','Monday','16:00',16,0,'Sep 3rd'),(526,'2012-09-03','Monday','18:00',18,0,'Sep 3rd'),(527,'2012-09-03','Monday','20:00',20,0,'Sep 3rd'),(528,'2012-09-04','Tuesday','8:00',8,0,'Sep 3rd'),(529,'2012-09-04','Tuesday','10:00',10,0,'Sep 3rd'),(530,'2012-09-04','Tuesday','12:00',12,0,'Sep 3rd'),(531,'2012-09-04','Tuesday','14:00',14,0,'Sep 3rd'),(532,'2012-09-04','Tuesday','16:00',16,0,'Sep 3rd'),(533,'2012-09-04','Tuesday','18:00',18,0,'Sep 3rd'),(534,'2012-09-04','Tuesday','20:00',20,0,'Sep 3rd'),(535,'2012-09-05','Wednesday','8:00',8,0,'Sep 3rd'),(536,'2012-09-05','Wednesday','10:00',10,0,'Sep 3rd'),(537,'2012-09-05','Wednesday','12:00',12,0,'Sep 3rd'),(538,'2012-09-05','Wednesday','14:00',14,0,'Sep 3rd'),(539,'2012-09-05','Wednesday','16:00',16,0,'Sep 3rd'),(540,'2012-09-05','Wednesday','18:00',18,0,'Sep 3rd'),(541,'2012-09-05','Wednesday','20:00',20,0,'Sep 3rd'),(542,'2012-09-06','Thursday','8:00',8,0,'Sep 3rd'),(543,'2012-09-06','Thursday','10:00',10,0,'Sep 3rd'),(544,'2012-09-06','Thursday','12:00',12,0,'Sep 3rd'),(545,'2012-09-06','Thursday','14:00',14,0,'Sep 3rd'),(546,'2012-09-06','Thursday','16:00',16,0,'Sep 3rd'),(547,'2012-09-06','Thursday','18:00',18,0,'Sep 3rd'),(548,'2012-09-06','Thursday','20:00',20,0,'Sep 3rd'),(549,'2012-09-07','Friday','8:00',8,0,'Sep 3rd'),(550,'2012-09-07','Friday','10:00',10,0,'Sep 3rd'),(551,'2012-09-07','Friday','12:00',12,0,'Sep 3rd'),(552,'2012-09-07','Friday','14:00',14,0,'Sep 3rd'),(553,'2012-09-07','Friday','16:00',16,0,'Sep 3rd'),(554,'2012-09-07','Friday','18:00',18,0,'Sep 3rd'),(555,'2012-09-07','Friday','20:00',20,0,'Sep 3rd'),(556,'2012-09-08','Saturday','8:00',8,0,'Sep 3rd'),(557,'2012-09-08','Saturday','10:00',10,0,'Sep 3rd'),(558,'2012-09-08','Saturday','12:00',12,0,'Sep 3rd'),(559,'2012-09-08','Saturday','14:00',14,0,'Sep 3rd'),(560,'2012-09-08','Saturday','16:00',16,0,'Sep 3rd'),(561,'2012-09-08','Saturday','18:00',18,0,'Sep 3rd'),(562,'2012-09-08','Saturday','20:00',20,0,'Sep 3rd'),(563,'2012-09-09','Sunday','8:00',8,0,'Sep 3rd'),(564,'2012-09-09','Sunday','10:00',10,0,'Sep 3rd'),(565,'2012-09-09','Sunday','12:00',12,0,'Sep 3rd'),(566,'2012-09-09','Sunday','14:00',14,0,'Sep 3rd'),(567,'2012-09-09','Sunday','16:00',16,0,'Sep 3rd'),(568,'2012-09-09','Sunday','18:00',18,0,'Sep 3rd'),(569,'2012-09-09','Sunday','20:00',20,0,'Sep 3rd'),(570,'2012-09-10','Monday','10:00',10,1,'Sep 10th'),(571,'2012-09-10','Monday','12:00',12,0,'Sep 10th'),(572,'2012-09-10','Monday','14:00',14,0,'Sep 10th'),(573,'2012-09-10','Monday','16:00',16,0,'Sep 10th'),(574,'2012-09-10','Monday','18:00',18,1,'Sep 10th'),(575,'2012-09-10','Monday','20:00',20,1,'Sep 10th'),(576,'2012-09-11','Tuesday','8:00',8,0,'Sep 10th'),(577,'2012-09-11','Tuesday','10:00',10,0,'Sep 10th'),(578,'2012-09-11','Tuesday','12:00',12,0,'Sep 10th'),(579,'2012-09-11','Tuesday','14:00',14,0,'Sep 10th'),(580,'2012-09-11','Tuesday','16:00',16,0,'Sep 10th'),(581,'2012-09-11','Tuesday','18:00',18,0,'Sep 10th'),(582,'2012-09-11','Tuesday','20:00',20,0,'Sep 10th'),(583,'2012-09-12','Wednesday','8:00',8,1,'Sep 10th'),(584,'2012-09-12','Wednesday','10:00',10,1,'Sep 10th'),(585,'2012-09-12','Wednesday','12:00',12,0,'Sep 10th'),(586,'2012-09-12','Wednesday','14:00',14,1,'Sep 10th'),(587,'2012-09-12','Wednesday','16:00',16,1,'Sep 10th'),(588,'2012-09-12','Wednesday','18:00',18,1,'Sep 10th'),(589,'2012-09-12','Wednesday','20:00',20,1,'Sep 10th'),(590,'2012-09-13','Thursday','8:00',8,1,'Sep 10th'),(591,'2012-09-13','Thursday','10:00',10,1,'Sep 10th'),(592,'2012-09-13','Thursday','12:00',12,0,'Sep 10th'),(593,'2012-09-13','Thursday','14:00',14,0,'Sep 10th'),(594,'2012-09-13','Thursday','16:00',16,0,'Sep 10th'),(595,'2012-09-13','Thursday','18:00',18,0,'Sep 10th'),(596,'2012-09-13','Thursday','20:00',20,0,'Sep 10th'),(597,'2012-09-14','Friday','8:00',8,1,'Sep 10th'),(598,'2012-09-14','Friday','10:00',10,1,'Sep 10th'),(599,'2012-09-14','Friday','12:00',12,0,'Sep 10th'),(600,'2012-09-14','Friday','14:00',14,1,'Sep 10th'),(601,'2012-09-14','Friday','16:00',16,0,'Sep 10th'),(602,'2012-09-14','Friday','18:00',18,0,'Sep 10th'),(603,'2012-09-14','Friday','20:00',20,0,'Sep 10th'),(604,'2012-09-15','Saturday','8:00',8,1,'Sep 10th'),(605,'2012-09-15','Saturday','10:00',10,1,'Sep 10th'),(606,'2012-09-15','Saturday','12:00',12,1,'Sep 10th'),(607,'2012-09-15','Saturday','14:00',14,0,'Sep 10th'),(608,'2012-09-15','Saturday','16:00',16,0,'Sep 10th'),(609,'2012-09-15','Saturday','18:00',18,0,'Sep 10th'),(610,'2012-09-15','Saturday','20:00',20,0,'Sep 10th'),(611,'2012-09-16','Sunday','8:00',8,1,'Sep 10th'),(612,'2012-09-16','Sunday','10:00',10,1,'Sep 10th'),(613,'2012-09-16','Sunday','12:00',12,0,'Sep 10th'),(614,'2012-09-16','Sunday','14:00',14,0,'Sep 10th'),(615,'2012-09-16','Sunday','16:00',16,0,'Sep 10th'),(616,'2012-09-16','Sunday','18:00',18,0,'Sep 10th'),(617,'2012-09-16','Sunday','20:00',20,1,'Sep 10th'),(618,'2012-09-10','Monday','08:00',8,1,'Sep 10th'),(623,'2012-09-17','Monday','16:00',16,1,'Sep 17th'),(624,'2012-09-17','Monday','18:00',18,1,'Sep 17th'),(625,'2012-09-17','Monday','20:00',20,0,'Sep 17th'),(626,'2012-09-18','Tuesday','8:00',8,0,'Sep 17th'),(627,'2012-09-18','Tuesday','10:00',10,0,'Sep 17th'),(628,'2012-09-18','Tuesday','12:00',12,0,'Sep 17th'),(629,'2012-09-18','Tuesday','14:00',14,0,'Sep 17th'),(630,'2012-09-18','Tuesday','16:00',16,0,'Sep 17th'),(631,'2012-09-18','Tuesday','18:00',18,0,'Sep 17th'),(632,'2012-09-18','Tuesday','20:00',20,0,'Sep 17th'),(633,'2012-09-19','Wednesday','8:00',8,1,'Sep 17th'),(634,'2012-09-19','Wednesday','10:00',10,1,'Sep 17th'),(635,'2012-09-19','Wednesday','12:00',12,0,'Sep 17th'),(636,'2012-09-19','Wednesday','14:00',14,1,'Sep 17th'),(637,'2012-09-19','Wednesday','16:00',16,1,'Sep 17th'),(638,'2012-09-19','Wednesday','18:00',18,0,'Sep 17th'),(639,'2012-09-19','Wednesday','20:00',20,0,'Sep 17th'),(640,'2012-09-20','Thursday','8:00',8,0,'Sep 17th'),(641,'2012-09-20','Thursday','10:00',10,1,'Sep 17th'),(642,'2012-09-20','Thursday','12:00',12,0,'Sep 17th'),(643,'2012-09-20','Thursday','14:00',14,0,'Sep 17th'),(644,'2012-09-20','Thursday','16:00',16,0,'Sep 17th'),(645,'2012-09-20','Thursday','18:00',18,1,'Sep 17th'),(646,'2012-09-20','Thursday','20:00',20,1,'Sep 17th'),(647,'2012-09-21','Friday','8:00',8,1,'Sep 17th'),(648,'2012-09-21','Friday','10:00',10,1,'Sep 17th'),(649,'2012-09-21','Friday','12:00',12,1,'Sep 17th'),(650,'2012-09-21','Friday','14:00',14,0,'Sep 17th'),(651,'2012-09-21','Friday','16:00',16,1,'Sep 17th'),(652,'2012-09-21','Friday','18:00',18,0,'Sep 17th'),(653,'2012-09-21','Friday','20:00',20,1,'Sep 17th'),(654,'2012-09-22','Saturday','8:00',8,1,'Sep 17th'),(655,'2012-09-22','Saturday','10:00',10,1,'Sep 17th'),(656,'2012-09-22','Saturday','12:00',12,0,'Sep 17th'),(657,'2012-09-22','Saturday','14:00',14,0,'Sep 17th'),(658,'2012-09-22','Saturday','16:00',16,0,'Sep 17th'),(659,'2012-09-22','Saturday','18:00',18,0,'Sep 17th'),(660,'2012-09-22','Saturday','20:00',20,0,'Sep 17th'),(661,'2012-09-23','Sunday','8:00',8,0,'Sep 17th'),(662,'2012-09-23','Sunday','10:00',10,0,'Sep 17th'),(663,'2012-09-23','Sunday','12:00',12,0,'Sep 17th'),(664,'2012-09-23','Sunday','14:00',14,0,'Sep 17th'),(665,'2012-09-23','Sunday','16:00',16,0,'Sep 17th'),(666,'2012-09-23','Sunday','18:00',18,0,'Sep 17th'),(667,'2012-09-23','Sunday','20:00',20,0,'Sep 17th'),(668,'2012-09-24','Monday','08:00',8,1,'Sep 24th'),(669,'2012-09-24','Monday','10:00',10,1,'Sep 24th'),(670,'2012-09-24','Monday','12:00',12,1,'Sep 24th'),(671,'2012-09-24','Monday','18:00',18,1,'Sep 24th'),(672,'2012-09-24','Monday','20:00',20,1,'Sep 24th'),(673,'2012-09-25','Tuesday','10:00',10,0,'Sep 24th'),(674,'2012-09-25','Tuesday','12:00',12,0,'Sep 24th'),(675,'2012-09-25','Tuesday','14:00',14,0,'Sep 24th'),(676,'2012-09-25','Tuesday','16:00',16,0,'Sep 24th'),(677,'2012-09-25','Tuesday','18:00',18,0,'Sep 24th'),(678,'2012-09-25','Tuesday','20:00',20,0,'Sep 24th'),(679,'2012-09-26','Wednesday','8:00',8,1,'Sep 24th'),(680,'2012-09-26','Wednesday','10:00',10,1,'Sep 24th'),(681,'2012-09-26','Wednesday','12:00',12,1,'Sep 24th'),(682,'2012-09-26','Wednesday','14:00',14,1,'Sep 24th'),(683,'2012-09-26','Wednesday','16:00',16,1,'Sep 24th'),(684,'2012-09-26','Wednesday','18:00',18,1,'Sep 24th'),(685,'2012-09-26','Wednesday','20:00',20,1,'Sep 24th'),(686,'2012-09-27','Thursday','8:00',8,1,'Sep 24th'),(687,'2012-09-27','Thursday','10:00',10,1,'Sep 24th'),(688,'2012-09-27','Thursday','12:00',12,0,'Sep 24th'),(689,'2012-09-27','Thursday','14:00',14,0,'Sep 24th'),(690,'2012-09-27','Thursday','16:00',16,0,'Sep 24th'),(691,'2012-09-27','Thursday','18:00',18,1,'Sep 24th'),(692,'2012-09-27','Thursday','20:00',20,1,'Sep 24th'),(693,'2012-09-28','Friday','8:00',8,1,'Sep 24th'),(694,'2012-09-28','Friday','10:00',10,1,'Sep 24th'),(695,'2012-09-28','Friday','12:00',12,1,'Sep 24th'),(696,'2012-09-28','Friday','14:00',14,1,'Sep 24th'),(697,'2012-09-28','Friday','16:00',16,1,'Sep 24th'),(698,'2012-09-28','Friday','18:00',18,1,'Sep 24th'),(699,'2012-09-28','Friday','20:00',20,1,'Sep 24th'),(700,'2012-09-29','Saturday','8:00',8,1,'Sep 24th'),(701,'2012-09-29','Saturday','10:00',10,1,'Sep 24th'),(702,'2012-09-29','Saturday','12:00',12,1,'Sep 24th'),(703,'2012-09-29','Saturday','14:00',14,1,'Sep 24th'),(704,'2012-09-29','Saturday','16:00',16,1,'Sep 24th'),(705,'2012-09-29','Saturday','18:00',18,1,'Sep 24th'),(706,'2012-09-29','Saturday','20:00',20,1,'Sep 24th'),(707,'2012-09-30','Sunday','8:00',8,1,'Sep 24th'),(708,'2012-09-30','Sunday','10:00',10,1,'Sep 24th'),(709,'2012-09-30','Sunday','12:00',12,1,'Sep 24th'),(710,'2012-09-30','Sunday','14:00',14,1,'Sep 24th'),(711,'2012-09-30','Sunday','16:00',16,1,'Sep 24th'),(712,'2012-09-30','Sunday','18:00',18,1,'Sep 24th'),(713,'2012-09-30','Sunday','20:00',20,1,'Sep 24th');
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-16  1:09:21
