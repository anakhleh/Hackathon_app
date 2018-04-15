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
-- Table structure for table `reviewedBy`
--

DROP TABLE IF EXISTS `reviewedBy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewedBy` (
  `reviewerEmail` varchar(255) NOT NULL DEFAULT '',
  `formid` int(11) NOT NULL DEFAULT '0',
  `isRecommended` bit(1) DEFAULT NULL,
  PRIMARY KEY (`reviewerEmail`,`formid`),
  KEY `formid` (`formid`),
  CONSTRAINT `reviewedBy_ibfk_1` FOREIGN KEY (`reviewerEmail`) REFERENCES `hOrgSubmissionReviewer` (`email`),
  CONSTRAINT `reviewedBy_ibfk_2` FOREIGN KEY (`formid`) REFERENCES `competitionRegistrationForm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewedBy`
--

LOCK TABLES `reviewedBy` WRITE;
/*!40000 ALTER TABLE `reviewedBy` DISABLE KEYS */;
INSERT INTO `reviewedBy` VALUES ('testreviewer',0,''),('testreviewer2',0,'');
/*!40000 ALTER TABLE `reviewedBy` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ajmanora_alex`@`%`*/ /*!50003 trigger tworeviews after insert on reviewedBy for each row
begin
	if 2 = (select count(*) from reviewedBy as R where R.formid=new.formid and R.isRecommended=1)
    then 
		call tworeviewsproc(new.formid);
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-15 18:12:39
