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
-- Temporary view structure for view `workshopAndLeader`
--

DROP TABLE IF EXISTS `workshopAndLeader`;
/*!50001 DROP VIEW IF EXISTS `workshopAndLeader`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `workshopAndLeader` AS SELECT 
 1 AS `getWorkshopLeaderName(L.leaderEmail)`,
 1 AS `title`,
 1 AS `leaderEmail`,
 1 AS `starttime`,
 1 AS `endtime`,
 1 AS `room`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `participantItemAvailibility`
--

DROP TABLE IF EXISTS `participantItemAvailibility`;
/*!50001 DROP VIEW IF EXISTS `participantItemAvailibility`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `participantItemAvailibility` AS SELECT 
 1 AS `name`,
 1 AS `itemCategory`,
 1 AS `description`,
 1 AS `count(id)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `checkoutIsAvailable`
--

DROP TABLE IF EXISTS `checkoutIsAvailable`;
/*!50001 DROP VIEW IF EXISTS `checkoutIsAvailable`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `checkoutIsAvailable` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `itemCategory`,
 1 AS `replacementCost`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `deletable`
--

DROP TABLE IF EXISTS `deletable`;
/*!50001 DROP VIEW IF EXISTS `deletable`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `deletable` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `itemCategory`,
 1 AS `replacementCost`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `notYetReturned`
--

DROP TABLE IF EXISTS `notYetReturned`;
/*!50001 DROP VIEW IF EXISTS `notYetReturned`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `notYetReturned` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `itemCategory`,
 1 AS `replacementCost`,
 1 AS `description`,
 1 AS `pemail`,
 1 AS `cemail`,
 1 AS `checkouttime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `eventschedule`
--

DROP TABLE IF EXISTS `eventschedule`;
/*!50001 DROP VIEW IF EXISTS `eventschedule`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `eventschedule` AS SELECT 
 1 AS `name`,
 1 AS `time`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sponsorRepPermissions`
--

DROP TABLE IF EXISTS `sponsorRepPermissions`;
/*!50001 DROP VIEW IF EXISTS `sponsorRepPermissions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `sponsorRepPermissions` AS SELECT 
 1 AS `email`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `title`,
 1 AS `isJudge(S.email)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `boothplan`
--

DROP TABLE IF EXISTS `boothplan`;
/*!50001 DROP VIEW IF EXISTS `boothplan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `boothplan` AS SELECT 
 1 AS `id`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processedNotYetReturned`
--

DROP TABLE IF EXISTS `processedNotYetReturned`;
/*!50001 DROP VIEW IF EXISTS `processedNotYetReturned`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `processedNotYetReturned` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `itemCategory`,
 1 AS `replacementCost`,
 1 AS `description`,
 1 AS `pemail`,
 1 AS `cemail`,
 1 AS `checkouttime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `workshopandleader`
--

DROP TABLE IF EXISTS `workshopandleader`;
/*!50001 DROP VIEW IF EXISTS `workshopandleader`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `workshopandleader` AS SELECT 
 1 AS `getWorkshopLeaderName(L.leaderEmail)`,
 1 AS `leaderEmail`,
 1 AS `starttime`,
 1 AS `endtime`,
 1 AS `room`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `hOrgPermissions`
--

DROP TABLE IF EXISTS `hOrgPermissions`;
/*!50001 DROP VIEW IF EXISTS `hOrgPermissions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `hOrgPermissions` AS SELECT 
 1 AS `email`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `address`,
 1 AS `zipcode`,
 1 AS `phonenumber`,
 1 AS `isCheckoutWorker(H.email)`,
 1 AS `isAdmin(H.email)`,
 1 AS `isJudge(H.email)`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `workshopAndLeader`
--

/*!50001 DROP VIEW IF EXISTS `workshopAndLeader`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `workshopAndLeader` AS (select `getWorkshopLeaderName`(`L`.`leaderEmail`) AS `getWorkshopLeaderName(L.leaderEmail)`,`W`.`title` AS `title`,`L`.`leaderEmail` AS `leaderEmail`,`L`.`starttime` AS `starttime`,`L`.`endtime` AS `endtime`,`L`.`room` AS `room` from (`leadsWorkshop` `L` join `workshop` `W`) where ((`W`.`starttime` = `L`.`starttime`) and (`W`.`endtime` = `L`.`endtime`) and (`W`.`room` = `L`.`room`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `participantItemAvailibility`
--

/*!50001 DROP VIEW IF EXISTS `participantItemAvailibility`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `participantItemAvailibility` AS (select `checkoutIsAvailable`.`name` AS `name`,`checkoutIsAvailable`.`itemCategory` AS `itemCategory`,`checkoutIsAvailable`.`description` AS `description`,count(`checkoutIsAvailable`.`id`) AS `count(id)` from `checkoutIsAvailable` group by `checkoutIsAvailable`.`name`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `checkoutIsAvailable`
--

/*!50001 DROP VIEW IF EXISTS `checkoutIsAvailable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `checkoutIsAvailable` AS (select `L`.`id` AS `id`,`L`.`name` AS `name`,`L`.`itemCategory` AS `itemCategory`,`L`.`replacementCost` AS `replacementCost`,`L`.`description` AS `description` from (`LendingItem` `L` left join `processedNotYetReturned` `P` on(((`L`.`id` = `P`.`id`) and (`L`.`name` = `P`.`name`) and (`L`.`itemCategory` = `P`.`itemCategory`) and (`L`.`replacementCost` = `P`.`replacementCost`) and (`L`.`description` = `P`.`description`)))) where isnull(`P`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `deletable`
--

/*!50001 DROP VIEW IF EXISTS `deletable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `deletable` AS (select `L`.`id` AS `id`,`L`.`name` AS `name`,`L`.`itemCategory` AS `itemCategory`,`L`.`replacementCost` AS `replacementCost`,`L`.`description` AS `description` from (`LendingItem` `L` join `processedNotYetReturned` `P`) where (`L`.`id` <> `P`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notYetReturned`
--

/*!50001 DROP VIEW IF EXISTS `notYetReturned`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `notYetReturned` AS (select `L`.`id` AS `id`,`L`.`name` AS `name`,`L`.`itemCategory` AS `itemCategory`,`L`.`replacementCost` AS `replacementCost`,`L`.`description` AS `description`,`P`.`email` AS `pemail`,`C`.`email` AS `cemail`,`T`.`checkouttime` AS `checkouttime` from (((`LendingItem` `L` join `itemCheckout2` `T`) join `competitionParticipant` `P`) join `hOrgCheckoutWorker` `C`) where ((`L`.`id` = `T`.`partid`) and (`P`.`email` = `T`.`participantEmail`) and (`C`.`email` = `T`.`workerEmail`) and ((select count(0) from `itemReturn` where (`itemReturn`.`partid` = `L`.`id`)) < (select count(0) from `itemCheckout2` where (`itemCheckout2`.`partid` = `L`.`id`)))) order by `T`.`checkouttime` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `eventschedule`
--

/*!50001 DROP VIEW IF EXISTS `eventschedule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `eventschedule` AS select `E`.`name` AS `name`,`E`.`time` AS `time` from `importantEventTime` `E` order by `E`.`time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sponsorRepPermissions`
--

/*!50001 DROP VIEW IF EXISTS `sponsorRepPermissions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sponsorRepPermissions` AS (select `S`.`email` AS `email`,`S`.`firstname` AS `firstname`,`S`.`lastname` AS `lastname`,`S`.`title` AS `title`,`isJudge`(`S`.`email`) AS `isJudge(S.email)` from `sponsorRep` `S`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `boothplan`
--

/*!50001 DROP VIEW IF EXISTS `boothplan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `boothplan` AS select `P`.`id` AS `id`,`S`.`name` AS `name` from ((`promotionalBooth` `P` join `runsBooth` `R`) join `sponsor` `S`) where ((`P`.`id` = `R`.`boothid`) and (`S`.`id` = `R`.`sponsorid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processedNotYetReturned`
--

/*!50001 DROP VIEW IF EXISTS `processedNotYetReturned`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `processedNotYetReturned` AS (select `A`.`id` AS `id`,`A`.`name` AS `name`,`A`.`itemCategory` AS `itemCategory`,`A`.`replacementCost` AS `replacementCost`,`A`.`description` AS `description`,`A`.`pemail` AS `pemail`,`A`.`cemail` AS `cemail`,`A`.`checkouttime` AS `checkouttime` from (`notYetReturned` `A` left join `notYetReturned` `B` on(((`A`.`id` = `B`.`id`) and (`A`.`checkouttime` < `B`.`checkouttime`)))) where isnull(`B`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `workshopandleader`
--

/*!50001 DROP VIEW IF EXISTS `workshopandleader`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `workshopandleader` AS (select `getWorkshopLeaderName`(`L`.`leaderEmail`) AS `getWorkshopLeaderName(L.leaderEmail)`,`L`.`leaderEmail` AS `leaderEmail`,`L`.`starttime` AS `starttime`,`L`.`endtime` AS `endtime`,`L`.`room` AS `room` from `leadsWorkshop` `L`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hOrgPermissions`
--

/*!50001 DROP VIEW IF EXISTS `hOrgPermissions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ajmanora_alex`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `hOrgPermissions` AS (select `H`.`email` AS `email`,`H`.`firstname` AS `firstname`,`H`.`lastname` AS `lastname`,`H`.`address` AS `address`,`H`.`zipcode` AS `zipcode`,`H`.`phonenumber` AS `phonenumber`,`isCheckoutWorker`(`H`.`email`) AS `isCheckoutWorker(H.email)`,`isAdmin`(`H`.`email`) AS `isAdmin(H.email)`,`isJudge`(`H`.`email`) AS `isJudge(H.email)` from `hackathonOrgEventWorker` `H`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'ajmanora_alex'
--

--
-- Dumping routines for database 'ajmanora_alex'
--
/*!50003 DROP FUNCTION IF EXISTS `addNewMealEventAndCaterer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `addNewMealEventAndCaterer`(eventTime datetime, 
										  eventName varchar (50),
										  eventDescription varchar(255),
										mealid integer,
										mealEntree varchar(50),
										mealAlternativeEntree varchar(50), 
										mealSides varchar(255),
										catererEmail varchar(255),
										catererName varchar(50),
										catererContactNumber varchar(15),
										catererWebsite varchar(255)) RETURNS int(11)
begin
	insert into importantEventTime(`time`, `name`, description)
		values (eventTime, eventName, eventDescription);
	insert into meal(id, entree, alternativeEntree, sides)
		values (mealid, mealEntree, mealAlternativeEntree, mealSides);
	insert into caterer(email, `name`, contactPhonenumber, website)
		values (catererEmail, catererName, catererContactNumber, catererWebsite);
	insert into cateredBy(mealid, catererEmail)
		values (mealid, catererEmail);
	insert into servedAt(timename, mealtime, mealid)
		values (eventName, eventTime, mealid);
	return 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `deleteItemFromCheckoutAndReturn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `deleteItemFromCheckoutAndReturn`(id int) RETURNS tinyint(1)
    DETERMINISTIC
begin
	if id in(select partid from itemCheckout2) then
		delete from itemCheckout2 where partid=id; 
        end if;
        
	if id in(select partid from itemReturn) then
		delete from itemReturn where partid=id; end if;
	
	return 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getWorkshopLeaderName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `getWorkshopLeaderName`(email text) RETURNS text CHARSET latin1
    DETERMINISTIC
begin
	if email in (select email from hackathonOrgEventWorker)
    then 
		return (select CONCAT(`firstname`, ' ', `lastname`) from hackathonOrgEventWorker as H where H.email = email);
	else
		return (select CONCAT(`firstname`, ' ', `lastname`) from sponsorRep as S where S.email = email LIMIT 1);
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insertHackathonOrgEventWorkerWithPermissions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `insertHackathonOrgEventWorkerWithPermissions`(
	hemail varchar(255),
    hfirstname varchar(50),
    hlastname varchar(50),
    haddress varchar(50),
    hzipcode varchar(15),
    hphonenumber varchar(15),
    ischeckoutworker bit,
    isadmin bit,
    isjudge bit
) RETURNS tinyint(1)
begin
	insert into `hackathonOrgEventWorker`(`email`,`firstname`,`lastname`,`address`,`zipcode`,`phonenumber`)
    values(hemail,hfirstname,hlastname,haddress,hzipcode,hphonenumber);
    if(ischeckoutworker) then insert into hOrgCheckoutWorker(email) values (hemail); end if;
    if(isadmin) then insert into hOrgAdmin(email) values (hemail); end if;
    if(isadmin) then insert into hOrgSubmissionReviewer(email) values (hemail); end if;
    if(isjudge) then insert into hOrgJudge(email) values (hemail); end if;
	return 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insertNewProjectSubmission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `insertNewProjectSubmission`(email1 varchar(255),
																		email2 varchar(255),
                                                                        email3 varchar(255),
                                                                        projectname varchar(50),
                                                                        projectdescription varchar(255),
                                                                        projectgithublink varchar(255),
                                                                        categoryname varchar(50)
                                                                        ) RETURNS varchar(255) CHARSET latin1
begin
declare newestid int;
declare newestsubmission int;

if email1='' and email2='' and email3=''
then
	return 'fail: A project must have at least one person on it.';
else
	if  (email1!='' and not exists(select * from competitionParticipant where email=email1))
    or (email2!='' and not exists(select * from competitionParticipant where email=email2))
    or (email3!='' and not exists(select * from competitionParticipant where email=email3)) then
		return 'fail: One of the emails is incorrect, or not that of a participant'; end if;
    
	insert into projectGroup(id) values (0);
    
    
    
    select max(id) into newestid from projectGroup;
    
    if email1!='' then insert into isGroupMemberOf(participantEmail, groupid) values (email1,newestid); end if;
	if email2!='' then insert into isGroupMemberOf(participantEmail, groupid) values (email2,newestid); end if;
	if email3!='' then insert into isGroupMemberOf(participantEmail, groupid) values (email3,newestid); end if;
    
    insert into projectSubmission(id,`name`,description,githublink,category,score) values
    (0, projectname,projectdescription, projectgithublink, categoryname,0);
    
    
    
    select max(id) into newestsubmission from projectSubmission;
    
    insert into projectSubmit(groupid,projectsubmissionid) values (newestid, newestSubmission);
    return 'success';
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insertNewRegistrationFormAndReviewer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `insertNewRegistrationFormAndReviewer`(submitterEmail varchar(255),
														cgfid integer,
														firstname varchar(255),
														lastname varchar(255),
														employmentField varchar(255),
														address varchar(255),
														zipcode varchar(15),
														phonenumber varchar(15),
														whywantstogo varchar(255),
														skill varchar(255)
														-- reviewerEmail varchar(255)
                                                        ) RETURNS int(11)
begin
	insert into competitionRegistrationForm(id, firstname, lastname, employementField,address, zipcode, phonenumber, whyWantsToAttend, skills)
		values(cgfid, firstname ,lastname, employmentField, address, zipcode, phonenumber, whywantstogo, skill);
    insert into submitsRegistration(submitterEmail, cgfid)
		values (submitterEmail, cgfid);
-- 	insert into reviewedBy(reviewerEmail, formid, isRecommended) values(reviewerEmail, cgfid, 0);
	return 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insertSponsorRepWithCompany` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `insertSponsorRepWithCompany`(
	remail varchar(255),
    rfirstname varchar(50),
    rlastname varchar(50),
    rtitle varchar(50),
	companyemail varchar(255)
) RETURNS tinyint(1)
begin
	declare companyid int;
	insert into sponsorRep(email,firstname,lastname,title) values (remail,rfirstname,rlastname,rtitle);
    select id into @companyid from sponsor where contactEmail=companyemail;
    insert into sendsRep(sponsorid,repEmail) values (@companyid, remail);
    return 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `isAdmin`(email varchar(255)) RETURNS tinyint(1)
begin return exists(select * from hOrgAdmin as H where H.email=email); end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isCheckoutWorker` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `isCheckoutWorker`(email varchar(255)) RETURNS tinyint(1)
begin return exists(select * from hOrgCheckoutWorker as H where H.email=email); end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isCompetitionParticipant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `isCompetitionParticipant`(email varchar(255)) RETURNS tinyint(1)
begin return exists(select * from competitionParticipant as P where P.email=email); end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isGeneralUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `isGeneralUser`(email varchar(255)) RETURNS tinyint(1)
begin return exists(select * from db_user as D where D.email=email)
					and not isCompetitionParticipant(email)
                    and not isHackathonOrgEventWorker(email)
                    and not isSponsor(email)
                    and not isSponsorRep(email); end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isHackathonOrgEventWorker` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `isHackathonOrgEventWorker`(email varchar(255)) RETURNS tinyint(1)
begin return exists(select * from hackathonOrgEventWorker as H where H.email=email); end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isJudge` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `isJudge`(email varchar(255)) RETURNS tinyint(1)
begin return exists(select * from projectSubmissionJudge as P where P.email=email); end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isSponsor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `isSponsor`(email varchar(255)) RETURNS tinyint(1)
begin return exists(select * from sponsor as S where S.contactEmail=email); end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isSponsorRep` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `isSponsorRep`(email varchar(255)) RETURNS tinyint(1)
begin return exists(select * from sponsorRep as S where S.email=email); end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `seed_database` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `seed_database`() RETURNS int(11)
BEGIN
			IF NOT EXISTS (SELECT * FROM test_users WHERE username='testusername')
			THEN 
				INSERT INTO test_users(`username`, `password`) 
					VALUES('testusername', 'testpassword');
			END IF;
			RETURN 1;
			END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SPLIT_STR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` FUNCTION `SPLIT_STR`(
  x VARCHAR(255),
  delim VARCHAR(12),
  pos INT
) RETURNS varchar(255) CHARSET latin1
    DETERMINISTIC
BEGIN 
    RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `raiseError` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` PROCEDURE `raiseError`(in errcode integer, in message varchar(255))
begin
	declare errtime datetime;
    set errtime = now();
    insert into customErr(errcode, message, errtime) values (errcode, message, errtime);
	insert into customErr(errcode, message, errtime) values (errcode, message, errtime);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tworeviewsproc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ajmanora_alex`@`%` PROCEDURE `tworeviewsproc`(formid int)
begin
declare email varchar(255);
declare address varchar(50);
declare phonenumber varchar(50);
declare zipcode varchar(15);
declare firstname varchar(50);
declare lastname varchar(50);
declare employementField varchar(50);

select S.submitterEmail into @email from reviewedBy as R, submitsRegistration as S where S.cgfid=R.formid and R.formid=formid limit 1;

select F.address into @address from competitionRegistrationForm as F where F.id=formid limit 1;
select  F.phonenumber into @phonenumber from competitionRegistrationForm as F where F.id=formid limit 1;
select  F.zipcode into @zipcode from competitionRegistrationForm as F where F.id=formid limit 1;
select  F.firstname into @firstname from  competitionRegistrationForm as F where F.id=formid limit 1;
select  F.lastname into @lastname from  competitionRegistrationForm as F where F.id=formid limit 1;
select  F.employementField  into @employementField from competitionRegistrationForm as F where F.id=formid limit 1;
insert into `ajmanora_alex`.`competitionParticipant`(`email`,`firstname`,`lastname`,`employmentField`,`address`,`zipcode`,`phonenumber`)
values (@email,@firstname,@lastname,@employementField,@address,@zipcode,@phonenumber);
end ;;
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

-- Dump completed on 2018-04-15 18:13:01
