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
-- Table structure for table `hackathonOrgEventWorker`
--

DROP TABLE IF EXISTS `hackathonOrgEventWorker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hackathonOrgEventWorker` (
  `email` varchar(255) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `zipcode` varchar(6) DEFAULT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hackathonOrgEventWorker`
--

LOCK TABLES `hackathonOrgEventWorker` WRITE;
/*!40000 ALTER TABLE `hackathonOrgEventWorker` DISABLE KEYS */;
INSERT INTO `hackathonOrgEventWorker` VALUES ('createdfirst1','createdfirst1','createdlast1','address1','11111','1111111111'),('root','root','root','root','99999','8675309'),('testcheckoutworker','joe','smith','checkoutworkeradress','99999','5555555555'),('testreviewer','a','a','3','444','2'),('testreviewer2','b','b','684 street','555','3433434433'),('testreviewer3','c','c','934 street','38485','9876543210'),('testworkshopleader','testworkshopleaderfirst','testworkshopleaderlast','testworkshopleaderaddress','3435','3333333333');
/*!40000 ALTER TABLE `hackathonOrgEventWorker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-15 18:12:06
