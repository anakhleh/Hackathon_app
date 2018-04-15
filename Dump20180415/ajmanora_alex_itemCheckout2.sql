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
-- Table structure for table `itemCheckout2`
--

DROP TABLE IF EXISTS `itemCheckout2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemCheckout2` (
  `partid` int(11) NOT NULL DEFAULT '0',
  `workerEmail` varchar(255) NOT NULL DEFAULT '',
  `participantEmail` varchar(255) NOT NULL DEFAULT '',
  `checkouttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`partid`,`workerEmail`,`participantEmail`,`checkouttime`),
  KEY `workerEmail` (`workerEmail`),
  KEY `participantEmail` (`participantEmail`),
  CONSTRAINT `itemCheckout2_ibfk_1` FOREIGN KEY (`partid`) REFERENCES `LendingItem` (`id`),
  CONSTRAINT `itemCheckout2_ibfk_2` FOREIGN KEY (`workerEmail`) REFERENCES `hOrgCheckoutWorker` (`email`),
  CONSTRAINT `itemCheckout2_ibfk_3` FOREIGN KEY (`participantEmail`) REFERENCES `competitionParticipant` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemCheckout2`
--

LOCK TABLES `itemCheckout2` WRITE;
/*!40000 ALTER TABLE `itemCheckout2` DISABLE KEYS */;
INSERT INTO `itemCheckout2` VALUES (1,'testcheckoutworker','testparticipant','2018-04-10 01:56:46'),(1,'testcheckoutworker','testparticipant','2018-04-10 02:04:39'),(1,'testcheckoutworker','testparticipant','2018-04-10 02:08:20'),(3,'testcheckoutworker','testparticipant','2018-04-10 03:00:49'),(3,'testcheckoutworker','testparticipant2','2018-04-12 17:42:55'),(3,'testcheckoutworker','testparticipant2','2018-04-12 17:43:03');
/*!40000 ALTER TABLE `itemCheckout2` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`ajmanora_alex`@`%`*/ /*!50003 trigger onlyOneSystemCanBeCheckoutOutByParticipantAtAGivenTime
before insert on itemCheckout2
for each row
begin
if exists (select * from LendingItem as L where new.partid=L.id and L.itemCategory='system')
then
	if (select count(*) from itemCheckout2 as C, LendingItem as L
				  where C.partid = L.id
					  and C.participantEmail = new.participantEmail
					  and L.itemCategory = 'system')
		>= 1 + 
			(select count(*) from itemReturn as R, LendingItem as L
				  where R.partid = L.id
                      and R.participantEmail = new.participantEmail
					  and L.itemCategory = 'system')
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: Cannot have more than one system checked out at a given time.';
	end if;
elseif exists (select * from LendingItem as L where new.partid=L.id and L.itemCategory='sensor')
then
	if (select count(*) from itemCheckout2 as C, LendingItem as L
				  where C.partid = L.id
					  and C.participantEmail = new.participantEmail
					  and L.itemCategory = 'sensor')
		>= 4 + 
				(select count(*) from itemReturn as R, LendingItem as L
				  where R.partid = L.id
                      and R.participantEmail = new.participantEmail
					  and L.itemCategory = 'sensor')
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: Cannot have more than 4 sensors checked out at a given time.';
	end if;
elseif exists(select * from LendingItem as L where new.partid=L.id and L.itemCategory='system')
then
	if (select count(*) from itemCheckout2 as C, LendingItem as L
				  where C.partid = L.id
					  and C.participantEmail = new.participantEmail
					  and L.itemCategory = 'peripheral')
		>= 1 + 
				  (select count(*) from itemReturn as R, LendingItem as L
				  where R.partid = L.id
                      and R.participantEmail = new.participantEmail
					  and L.itemCategory = 'peripheral')
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: Cannot have more than one peripheral checked out at a given time.';
	end if;
elseif exists(select * from LendingItem as L where new.partid=L.id and L.replacementCost=0.00)
then
	if exists( select * from itemCheckout2 as C, LendingItem as L
				   where C.partid = L.id
                       and C.participantEmail = new.participantEmail
					   and L.replacementCost = 0.00
				   group by checkouttime
				   having count(new.partid) > 8)
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: Cannot check out eight disposables at a given time.';
	end if;
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

-- Dump completed on 2018-04-15 18:12:38
