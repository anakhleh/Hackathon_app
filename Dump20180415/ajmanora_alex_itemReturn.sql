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
-- Table structure for table `itemReturn`
--

DROP TABLE IF EXISTS `itemReturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemReturn` (
  `partid` int(11) NOT NULL DEFAULT '0',
  `workerEmail` varchar(255) NOT NULL DEFAULT '',
  `participantEmail` varchar(255) NOT NULL DEFAULT '',
  `returntime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`partid`,`workerEmail`,`participantEmail`,`returntime`),
  KEY `workerEmail` (`workerEmail`),
  KEY `participantEmail` (`participantEmail`),
  CONSTRAINT `itemReturn_ibfk_1` FOREIGN KEY (`partid`) REFERENCES `LendingItem` (`id`),
  CONSTRAINT `itemReturn_ibfk_2` FOREIGN KEY (`workerEmail`) REFERENCES `hOrgCheckoutWorker` (`email`),
  CONSTRAINT `itemReturn_ibfk_3` FOREIGN KEY (`participantEmail`) REFERENCES `competitionParticipant` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemReturn`
--

LOCK TABLES `itemReturn` WRITE;
/*!40000 ALTER TABLE `itemReturn` DISABLE KEYS */;
INSERT INTO `itemReturn` VALUES (1,'testcheckoutworker','testparticipant','2018-04-10 02:02:11'),(1,'testcheckoutworker','testparticipant','2018-04-10 02:07:37'),(1,'testcheckoutworker','testparticipant','2018-04-10 14:13:26'),(1,'testcheckoutworker','testparticipant','2018-04-12 17:42:10'),(3,'testcheckoutworker','testparticipant','2018-04-10 12:59:00'),(3,'testcheckoutworker','testparticipant2','2018-04-12 17:43:30'),(3,'testcheckoutworker','testparticipant2','2018-04-12 17:45:54');
/*!40000 ALTER TABLE `itemReturn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-15 18:12:07
