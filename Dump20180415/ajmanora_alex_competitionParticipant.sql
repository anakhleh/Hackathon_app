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
-- Table structure for table `competitionParticipant`
--

DROP TABLE IF EXISTS `competitionParticipant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitionParticipant` (
  `email` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `employmentField` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `zipcode` varchar(6) DEFAULT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`email`),
  CONSTRAINT `competitionParticipant_ibfk_1` FOREIGN KEY (`email`) REFERENCES `db_user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitionParticipant`
--

LOCK TABLES `competitionParticipant` WRITE;
/*!40000 ALTER TABLE `competitionParticipant` DISABLE KEYS */;
INSERT INTO `competitionParticipant` VALUES ('root','root','root','professionaldev','root','99999','8675309'),('testgeneraluser','testfirstname','testlastname','professionaldev','0000000000','',''),('testparticipant','testfirstname','testlastname','testemployment','testadress','000','0000000000'),('testparticipant2','testfirstname2','testlastname2','testemployment2','testadress2','222','2222222222'),('testparticipant3','testfirstname3','testlastname3','testemployment3','testadress2','333','3333333333'),('testparticipant4','testfirstname4','testlastname4','testemployment4','testadress4','444','4444444444');
/*!40000 ALTER TABLE `competitionParticipant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-15 18:12:29
