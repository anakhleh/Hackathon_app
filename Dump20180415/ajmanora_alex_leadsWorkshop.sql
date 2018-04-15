CREATE DATABASE  IF NOT EXISTS `ajmanora_alex` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ajmanora_alex`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: alexmanor.com    Database: ajmanora_alex
-- ------------------------------------------------------
-- Server version	5.6.23-cll-lve

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
-- Table structure for table `leadsWorkshop`
--

DROP TABLE IF EXISTS `leadsWorkshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leadsWorkshop` (
  `leaderEmail` varchar(255) NOT NULL DEFAULT '',
  `starttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `room` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`leaderEmail`,`starttime`,`endtime`,`room`),
  KEY `starttime` (`starttime`,`endtime`,`room`),
  CONSTRAINT `leadsWorkshop_ibfk_1` FOREIGN KEY (`starttime`, `endtime`, `room`) REFERENCES `workshop` (`starttime`, `endtime`, `room`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leadsWorkshop`
--

LOCK TABLES `leadsWorkshop` WRITE;
/*!40000 ALTER TABLE `leadsWorkshop` DISABLE KEYS */;
INSERT INTO `leadsWorkshop` VALUES ('testworkshopleader','2018-04-09 13:57:15','2018-04-09 14:57:15',0);
/*!40000 ALTER TABLE `leadsWorkshop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-15 18:12:35
