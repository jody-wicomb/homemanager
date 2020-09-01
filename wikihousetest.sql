-- MySQL dump 10.13  Distrib 8.0.21, for osx10.15 (x86_64)
--
-- Host: localhost    Database: wikihouse
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class_tbl`
--

DROP TABLE IF EXISTS `class_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_tbl` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(250) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_tbl`
--

LOCK TABLES `class_tbl` WRITE;
/*!40000 ALTER TABLE `class_tbl` DISABLE KEYS */;
INSERT INTO `class_tbl` VALUES (11,'Housing'),(12,'Transportation'),(13,'Food'),(14,'Utilities'),(15,'Insurance'),(16,'SavingInvestments'),(17,'Entertainment'),(18,'Uncategorized');
/*!40000 ALTER TABLE `class_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_form`
--

DROP TABLE IF EXISTS `expense_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storename` varchar(250) NOT NULL,
  `item` varchar(250) NOT NULL,
  `price` float NOT NULL,
  `txndate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_form`
--

LOCK TABLES `expense_form` WRITE;
/*!40000 ALTER TABLE `expense_form` DISABLE KEYS */;
INSERT INTO `expense_form` VALUES (20,'Toyota','Sun Visor',410.62,'2020-08-25 12:17:37'),(21,'Telkom','Adsl',523.34,'2020-08-25 13:25:46'),(22,'Coct','Water',800,'2020-08-25 13:29:26'),(23,'Priscilla','Cleaning',1250,'2020-08-25 13:31:16'),(24,'WebAfrica','Fibre',399,'2020-08-25 13:32:40'),(25,'Father','Father Living Expense',1000,'2020-08-25 14:42:15'),(26,'Entertainment','Netflix',170,'2020-08-26 12:39:10'),(27,'Adobe','Software Suite',1108,'2020-08-26 12:58:46'),(28,'Wix','Wix Websites',515,'2020-08-26 13:44:16'),(29,'Rain','Rain Simcard',250,'2020-08-26 13:45:40'),(30,'Dropbox','Dropbox Subscription',237,'2020-08-26 13:49:41'),(31,'Smugmug','ccsa subscription',187,'2020-08-26 13:52:41'),(32,'Spotify','Spotify Subscription',59,'2020-08-26 13:54:05'),(33,'Only Fans','OnlyFans Subscription',172,'2020-08-26 13:56:26'),(34,'Prospur Kwikspar','Groceries',269.97,'2020-08-28 18:16:45'),(35,'Pnp Clothing','Charleigh Clothing',239.97,'2020-08-29 11:38:50'),(36,'Wimpy','TakeOut',220,'2020-08-29 11:39:25'),(37,'Checkers BlueRoute','Groceries',2049.41,'2020-08-29 11:41:55'),(38,'Parking BlueRoute','Parking',10,'2020-08-29 12:12:58'),(39,'Bianca','Birthday Present',570,'2020-08-29 12:29:12');
/*!40000 ALTER TABLE `expense_form` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `HousePositionUpd` AFTER INSERT ON `expense_form` FOR EACH ROW call getHousePosition() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `HousePositionDel` AFTER DELETE ON `expense_form` FOR EACH ROW call getHousePosition() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `grocery_tracker`
--

DROP TABLE IF EXISTS `grocery_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_tracker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storename` varchar(250) NOT NULL,
  `item` varchar(250) NOT NULL,
  `price` float NOT NULL,
  `slipnumber` varchar(250) NOT NULL,
  `txndate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_tracker`
--

LOCK TABLES `grocery_tracker` WRITE;
/*!40000 ALTER TABLE `grocery_tracker` DISABLE KEYS */;
INSERT INTO `grocery_tracker` VALUES (3,'Prospur Kwikspar','Spar Carrier bag',0.75,'0491','2020-08-28 18:17:43'),(4,'Prospur Kwikspar','Brown Sandwitch Bag',12.49,'0491','2020-08-28 18:18:09'),(5,'Prospur Kwikspar','Petleys Oxtail',28.99,'0491','2020-08-28 18:18:50'),(6,'Prospur Kwikspar','Petleys Oxtail',28.99,'0491','2020-08-28 18:19:04'),(7,'Prospur Kwikspar','Petleys Chicken Veg',28.99,'0491','2020-08-28 18:19:32'),(8,'Prospur Kwikspar','Nutripick Tomato 4s',17.99,'0491','2020-08-28 18:21:04'),(9,'Prospur Kwikspar','Cadbury Slab',17.99,'0491','2020-08-28 18:21:33'),(10,'Prospur Kwikspar','Shirwood Snastix Biltong',119.18,'0491','2020-08-28 18:22:11'),(11,'Prospur Kwikspar','Long Rolls',13.8,'0491','2020-08-28 18:23:28'),(12,'Checkers BlueRoute','Ms Balls Chutney',29.99,'S006551','2020-08-29 11:43:35'),(13,'Checkers BlueRoute','Balsamic Glaze',69.99,'S006551','2020-08-29 11:44:13'),(14,'Checkers BlueRoute','Banana Bulk 1kg',29.99,'S006551','2020-08-29 11:44:48'),(15,'Checkers BlueRoute','Bby Soft Toilet Rolls 18',109.99,'S006551','2020-08-29 11:45:51'),(16,'Checkers BlueRoute','Butternut Cube 500g',19.99,'S006551','2020-08-29 11:46:25'),(17,'Checkers BlueRoute','Bread Dough',14.99,'S006551','2020-08-29 11:47:44'),(18,'Checkers BlueRoute','Carrier Bag',3.75,'S006551','2020-08-29 11:49:16'),(19,'Checkers BlueRoute','Chicken',153.31,'S006551','2020-08-29 11:50:38'),(20,'Checkers BlueRoute','Chicken',72.7,'S006551','2020-08-29 11:51:20'),(21,'Checkers BlueRoute','Chicken',136.06,'S006551','2020-08-29 11:52:01'),(22,'Checkers BlueRoute','Chicken',36.59,'S006551','2020-08-29 11:52:23'),(23,'Checkers BlueRoute','Chicken',40.19,'S006551','2020-08-29 11:52:49'),(24,'Checkers BlueRoute','Cheese',37.99,'S006551','2020-08-29 11:53:09'),(25,'Checkers BlueRoute','Milk 6',74.99,'S006551','2020-08-29 11:53:29'),(26,'Checkers BlueRoute','Foil 10m',44.99,'S006551','2020-08-29 11:53:47'),(27,'Checkers BlueRoute','Hinds breadcrumbs',19.99,'S006551','2020-08-29 11:54:55'),(28,'Checkers BlueRoute','Hug Mug',49.99,'S006551','2020-08-29 11:55:14'),(29,'Checkers BlueRoute','Sugar 2.5',45.99,'S006551','2020-08-29 11:55:29'),(30,'Checkers BlueRoute','Beef Mince 500g',62.17,'S006551','2020-08-29 11:56:41'),(31,'Checkers BlueRoute','Naartjies 1kg',16.99,'S006551','2020-08-29 11:56:56'),(32,'Checkers BlueRoute','Mushroom 400g',29.99,'S006551','2020-08-29 11:57:11'),(33,'Checkers BlueRoute','Nivea BodyWash 500ml',59.99,'S006551','2020-08-29 11:57:34'),(34,'Checkers BlueRoute','Washing Powder 2kg',49.99,'S006551','2020-08-29 11:57:59'),(35,'Checkers BlueRoute','Green Pepper',36.99,'S006551','2020-08-29 11:58:21'),(36,'Checkers BlueRoute','Dog Food Tins',83.97,'S006551','2020-08-29 11:59:09'),(37,'Checkers BlueRoute','Potatos 3kg',36.99,'S006551','2020-08-29 11:59:25'),(38,'Checkers BlueRoute','Pumpkin Cubes 500g',19.99,'S006551','2020-08-29 11:59:50'),(39,'Checkers BlueRoute','Juice 3lt',39.99,'S006551','2020-08-29 12:00:04'),(40,'Checkers BlueRoute','HandWash 500ml',31.99,'S006551','2020-08-29 12:01:27'),(41,'Checkers BlueRoute','Sunlight Liquid 750ml',24.99,'S006551','2020-08-29 12:01:41'),(42,'Checkers BlueRoute','Butter 1kg',56.99,'S006551','2020-08-29 12:02:11'),(43,'Checkers BlueRoute','StaySoft 1.5lt',79.99,'S006551','2020-08-29 12:02:32'),(44,'Checkers BlueRoute','STS BodyWash 500ml',42.99,'S006551','2020-08-29 12:04:17'),(45,'Checkers BlueRoute','Biscuits Tennis 200g',18.99,'S006551','2020-08-29 12:05:48'),(46,'Checkers BlueRoute','Tins Tomato Onion x2',43.98,'S006551','2020-08-29 12:06:40'),(47,'Checkers BlueRoute','Sugar Treacle 750g',32.99,'S006551','2020-08-29 12:06:55'),(48,'Checkers BlueRoute','Roller Towel',39.99,'S006551','2020-08-29 12:07:15'),(49,'Checkers BlueRoute','Olive Oil',174.99,'S006551','2020-08-29 12:07:39'),(50,'Checkers BlueRoute','Dog Treats',54.99,'S006551','2020-08-29 12:07:52'),(51,'Checkers BlueRoute','SuperBrite Toilet',17.99,'S006551','2020-08-29 12:08:23');
/*!40000 ALTER TABLE `grocery_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_account`
--

DROP TABLE IF EXISTS `home_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_account` (
  `timestamp` datetime DEFAULT NULL,
  `ploss` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_account`
--

LOCK TABLES `home_account` WRITE;
/*!40000 ALTER TABLE `home_account` DISABLE KEYS */;
INSERT INTO `home_account` VALUES ('2020-08-25 12:39:27',54637.1),('2020-08-25 12:58:18',69156.3),('2020-08-25 13:25:46',68632.9),('2020-08-25 13:29:26',67832.9),('2020-08-25 13:31:16',66582.9),('2020-08-25 13:32:40',66183.9),('2020-08-25 14:42:15',65183.9),('2020-08-26 12:55:45',65013.9),('2020-08-26 12:58:46',68288.9),('2020-08-26 13:01:37',63905.9),('2020-08-26 13:44:16',63390.9),('2020-08-26 13:45:40',63140.9),('2020-08-26 13:49:41',62903.9),('2020-08-26 13:52:41',62716.9),('2020-08-26 13:54:05',62657.9),('2020-08-26 13:56:26',62485.9),('2020-08-28 18:16:45',62216),('2020-08-29 11:38:50',61976),('2020-08-29 11:39:25',61756),('2020-08-29 11:41:55',59706.6),('2020-08-29 12:12:58',59696.6),('2020-08-29 12:29:12',59126.6);
/*!40000 ALTER TABLE `home_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_form`
--

DROP TABLE IF EXISTS `income_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storename` varchar(250) NOT NULL,
  `value` float NOT NULL,
  `txndate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_form`
--

LOCK TABLES `income_form` WRITE;
/*!40000 ALTER TABLE `income_form` DISABLE KEYS */;
INSERT INTO `income_form` VALUES (17,'Globee',55047.7,'2020-08-25 12:17:07'),(18,'RedPanda',14519.2,'2020-08-25 12:58:18');
/*!40000 ALTER TABLE `income_form` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IncomePositionUpd` AFTER INSERT ON `income_form` FOR EACH ROW call getHousePosition() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IncomePositionDel` AFTER DELETE ON `income_form` FOR EACH ROW call getHousePosition() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `utility_tracker`
--

DROP TABLE IF EXISTS `utility_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility_tracker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `utility` varchar(250) NOT NULL,
  `units` float NOT NULL,
  `txndate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_tracker`
--

LOCK TABLES `utility_tracker` WRITE;
/*!40000 ALTER TABLE `utility_tracker` DISABLE KEYS */;
INSERT INTO `utility_tracker` VALUES (4,'Electricity',204.57,'2020-08-25 07:22:29'),(5,'Electricity',196.44,'2020-08-25 15:01:40'),(6,'Electricity',193.43,'2020-08-25 18:31:11'),(8,'Electricity',175.86,'2020-08-26 07:33:34'),(9,'Electricity',172.57,'2020-08-26 11:45:06'),(10,'Electricity',162.89,'2020-08-26 18:45:35'),(11,'Electricity',150.22,'2020-08-27 07:27:51'),(12,'Electricity',145.36,'2020-08-27 14:41:36'),(13,'Electricity',141.21,'2020-08-27 18:32:23'),(14,'Electricity',122.88,'2020-08-28 07:44:21'),(15,'Electricity',113.1,'2020-08-28 12:54:08'),(16,'Electricity',103.57,'2020-08-28 16:33:51'),(17,'Electricity',100.57,'2020-08-28 18:51:35'),(18,'Electricity',85.16,'2020-08-29 08:27:18'),(19,'Electricity',82.95,'2020-08-29 12:08:36'),(20,'Electricity',76.27,'2020-08-29 16:09:45');
/*!40000 ALTER TABLE `utility_tracker` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Utilusage` AFTER INSERT ON `utility_tracker` FOR EACH ROW call UtilusageUpdate() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `utility_usage`
--

DROP TABLE IF EXISTS `utility_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility_usage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `utilityname` varchar(250) NOT NULL,
  `units_usage` float NOT NULL,
  `txndate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_usage`
--

LOCK TABLES `utility_usage` WRITE;
/*!40000 ALTER TABLE `utility_usage` DISABLE KEYS */;
INSERT INTO `utility_usage` VALUES (1,'Electricity',9.68001,'2020-08-26 22:16:30'),(3,'Electricity',12.67,'2020-08-27 08:04:25'),(4,'Electricity',4.86,'2020-08-27 14:41:36'),(5,'Electricity',4.14999,'2020-08-27 18:32:23'),(6,'Electricity',18.33,'2020-08-28 07:44:21'),(7,'Electricity',9.78,'2020-08-28 12:54:08'),(8,'Electricity',9.53,'2020-08-28 16:33:51'),(9,'Electricity',3,'2020-08-28 18:51:35'),(10,'Electricity',15.41,'2020-08-29 08:27:18'),(11,'Electricity',2.21001,'2020-08-29 12:08:36'),(12,'Electricity',6.68,'2020-08-29 16:09:45');
/*!40000 ALTER TABLE `utility_usage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-31 21:31:17
