CREATE DATABASE  IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `roomId` int NOT NULL,
  `customerId` int NOT NULL,
  `bookingDate` date NOT NULL,
  `checkIn` datetime NOT NULL,
  `checkOut` datetime NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `roomId` (`roomId`),
  KEY `customerId` (`customerId`),
  KEY `status` (`status`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `room` (`ID`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`ID`),
  CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`status`) REFERENCES `status` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,49,126,'2021-09-12','2021-10-12 00:00:00','2021-10-15 00:00:00',1),(2,51,126,'2021-09-12','2021-10-12 00:00:00','2021-10-15 00:00:00',1),(3,53,127,'2021-09-14','2021-10-14 00:00:00','2021-10-18 00:00:00',3),(4,55,127,'2021-09-14','2021-10-14 00:00:00','2021-10-18 00:00:00',3),(5,57,129,'2021-09-14','2021-10-14 00:00:00','2021-10-18 00:00:00',4),(6,59,130,'2021-09-18','2021-10-18 00:00:00','2021-10-21 00:00:00',1),(7,61,130,'2021-09-18','2021-10-18 00:00:00','2021-10-21 00:00:00',1),(8,63,131,'2021-09-14','2021-10-14 00:00:00','2021-10-20 00:00:00',4),(9,65,133,'2021-09-18','2021-10-18 00:00:00','2021-10-24 00:00:00',10),(10,67,133,'2021-09-18','2021-10-18 00:00:00','2021-10-24 00:00:00',10),(11,69,134,'2021-09-20','2021-10-15 00:00:00','2021-10-24 00:00:00',10),(12,71,135,'2021-09-21','2021-10-29 00:00:00','2021-10-31 00:00:00',5),(13,73,136,'2021-10-15','2021-11-24 00:00:00','2021-11-28 00:00:00',8),(14,75,136,'2021-10-15','2021-11-24 00:00:00','2021-11-28 00:00:00',8),(15,77,138,'2021-10-15','2021-11-24 00:00:00','2021-11-28 00:00:00',8),(16,79,138,'2021-10-15','2021-11-24 00:00:00','2021-11-28 00:00:00',8),(17,81,138,'2021-10-15','2021-11-24 00:00:00','2021-11-28 00:00:00',8),(18,83,140,'2021-09-30','2021-10-29 00:00:00','2021-10-31 00:00:00',5),(19,85,142,'2021-10-18','2021-11-26 00:00:00','2021-11-29 00:00:00',3),(20,87,144,'2021-10-20','2021-12-23 00:00:00','2021-11-28 00:00:00',1),(21,89,146,'2021-10-20','2021-12-23 00:00:00','2021-11-28 00:00:00',1),(22,91,147,'2021-10-20','2021-12-23 00:00:00','2021-11-28 00:00:00',1),(23,93,150,'2021-10-15','2021-11-24 00:00:00','2021-11-28 00:00:00',8),(24,95,150,'2021-10-15','2021-11-24 00:00:00','2021-11-28 00:00:00',8);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bookingview`
--

DROP TABLE IF EXISTS `bookingview`;
/*!50001 DROP VIEW IF EXISTS `bookingview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bookingview` AS SELECT 
 1 AS `Customer`,
 1 AS `Room Number`,
 1 AS `Check In Date`,
 1 AS `Check Out Date`,
 1 AS `Reservation Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `citystate`
--

DROP TABLE IF EXISTS `citystate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citystate` (
  `city` varchar(90) NOT NULL,
  `state` char(2) NOT NULL,
  `zipCode` char(5) NOT NULL,
  PRIMARY KEY (`zipCode`),
  UNIQUE KEY `zipCode` (`zipCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citystate`
--

LOCK TABLES `citystate` WRITE;
/*!40000 ALTER TABLE `citystate` DISABLE KEYS */;
INSERT INTO `citystate` VALUES ('Piscataway','NJ','08854'),('Clover','SC','29710'),('Duluth','GA','30096'),('Nashville','TN','37205'),('Willoughby','OH','44094');
/*!40000 ALTER TABLE `citystate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastNaME` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(10) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  `idProof` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `zipCode` (`zipCode`),
  KEY `idProof` (`idProof`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `citystate` (`zipCode`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`idProof`) REFERENCES `idproof` (`ID`),
  CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`idProof`) REFERENCES `idproof` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (126,'Yvonne','Goodman','12 Creekside St','37205','2025550109','ygoodman@isp.com',2),(127,'Dante','Mackenzie','137 Wall St','37205','2025550112','dmackenzie@isp.com',2),(128,'Alysha','Rollins','411 Shirley St','37205','2025550115','arollins@isp.com',2),(129,'Avaya','Gonzalez','7771 Border Court','37205','2025550119','agonzalez@isp.com',2),(130,'Haniya','Kelly','6 South Sulphur Springs Stree','37205','2025550121','hkelly@isp.com',2),(131,' Nathalie','Chambers','942 New Saddle Drive','29710','2025550122','nchambers@isp.com',2),(132,'Dante','Rollins','9 Wrangler Ave','29710','2025550124','drollins@isp.com',2),(133,'Beverley','Mckee','7319 S. Greenview Drive','29710','2025550125','bmckee@isp.com',2),(134,'Paris','Lindsey','763 West Mulberry St','29710','2025550132','plindsey@isp.com',2),(135,'Umaiza','Melia','545 Ohio Ave','29710','2025550135','umelia@isp.com',2),(136,'Nico','Prince','20 Middle River Street','44094','2025550137','nprince@isp.com',2),(138,'Ali','Waters','83 Rockland Lane','44094','2025550144','awaters@isp.com',2),(139,'JohnPaul','Clarke','1 Riverside Lane','44094','2025550153','jpcClarke@isp.com',2),(140,'Dane','Kaiser','694 Wall Road','44094','2025550155','kdaiser@isp.com',2),(141,'Hammad','Newman','9970 State Court','30096','2025550157','hnewman@isp.com',3),(142,'Maha','Guthrie',' 54 Woodsman Drive','30096','2025550161','mguthrie@isp.com',3),(143,' Tulisa','Roberts','7174 Studebaker Street','30096','2025550163','troberts@isp.com',3),(144,'Robin','Solis','8474 Wentworth Street','30096','2025550164','rsolis@isp.com',3),(145,'Kavita','Heath','796 Hartford St','30096','2025550165','kheath@isp.com',3),(146,'Meera','White','484 Bridge St','08854','2025550166','mwhite@isp.com',3),(147,'Bradlee','Esparza','7031 Gainsway St','08854','2025550173','besparza@isp.com',3),(148,'Leilani','Leonard','37 Monroe Street','08854','2025550175','lleonard@isp.com',4),(149,'Stefanie','Brook','7990 West Surrey St','08854','2025550179','sbrook@isp.com',4),(150,'Grover','Squires','7618 Madison Court','08854','2025550180','gsquires@isp.com',4);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customeremail`
--

DROP TABLE IF EXISTS `customeremail`;
/*!50001 DROP VIEW IF EXISTS `customeremail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customeremail` AS SELECT 
 1 AS `Customer`,
 1 AS `Email Address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customermail`
--

DROP TABLE IF EXISTS `customermail`;
/*!50001 DROP VIEW IF EXISTS `customermail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customermail` AS SELECT 
 1 AS `Customer`,
 1 AS `Address`,
 1 AS `City`,
 1 AS `state`,
 1 AS `Zip`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(10) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `login` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `empType` int NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `empType` (`empType`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`empType`) REFERENCES `employeetype` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Yvonne','Prince','yprince','Parrots12!@',1,'yprince@ucfhotel.com'),(2,'Dante','Rennie','drennie','Birbs12!@',2,'drennie@ucfhotel.com'),(3,'Alysha','Waters','awaters','Doggo12!@',3,'awaters@ucfhotel.com'),(4,'Avaya','Clarke','aclarke','MurderMittens12!@',3,'aclarke@ucfhotel.com'),(5,'Haniya','Kaiser','hkaiser','BlazingCruise12!@',4,'hkaiser@ucfhotel.com'),(6,'Nathalie','Newman','nnewman','CruisingBlaze12!@',4,'nnewman@ucfhotel.com'),(7,'Dante','Guthrie','dguthrie','Smokey12!@',4,'dguthrie@ucfhotel.com'),(8,'Beverley','Roberts','broberts','Ocho8*',4,'broberts@ucfhotel.com'),(9,'Paris','Solis','psolis','Samster12!@',5,'psolis@ucfhotel.com'),(10,'Umaiza','Heath','uheath','NattyPants12!@',5,'uheath@ucfhotel.com'),(11,'Jonathan','Kumar','jkumar','Keystonia12!@',6,'jkumar@ucfhotel.com'),(12,'Angus','Neville','aneville','StormyCat12!@',6,'aneville@ucfhotel.com'),(13,'Uzair','Sparrow','usparrow','OrangeMuffin12!@',7,'usparrow@ucfhotel.com'),(14,'Amari','Currie','acurrie','TessaDog12!@',8,'acurrie@ucfhotel.com'),(15,'Imaani','Wallace','iwallace','IvyBug12!@',9,'iwallace@ucfhotel.com'),(16,'Efe','House','ehouse','AussieBird12!@',10,'ehouse@ucfhotel.com'),(17,'Atticus','Atkinson','aatkinson','Eclectus12!@',11,'aatkinson@ucfhotel.com'),(18,'Michelle','Ramirez','mramirez','Horse12!@',11,'mramirez@ucfhotel.com'),(19,'Remy','Hassan','rhassan',' Equines12!@',11,'rhassan@ucfhotel.com'),(20,'Jordana','Beck','jbeck','AllAnimals12!@',11,'jbeck@ucfhotel.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employeeemail`
--

DROP TABLE IF EXISTS `employeeemail`;
/*!50001 DROP VIEW IF EXISTS `employeeemail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeeemail` AS SELECT 
 1 AS `Employee`,
 1 AS `Email Address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employeelist`
--

DROP TABLE IF EXISTS `employeelist`;
/*!50001 DROP VIEW IF EXISTS `employeelist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeelist` AS SELECT 
 1 AS `Employee`,
 1 AS `Department`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employeetype`
--

DROP TABLE IF EXISTS `employeetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeetype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeetype`
--

LOCK TABLES `employeetype` WRITE;
/*!40000 ALTER TABLE `employeetype` DISABLE KEYS */;
INSERT INTO `employeetype` VALUES (10,' Executive Housekeeper'),(9,'Catering Assistant'),(3,'Concierge'),(2,'Front Office Manager'),(1,'General Manager'),(4,'Guest Service Agent'),(11,'Houseperson'),(7,'Sales Director'),(8,'Sales Manager'),(6,'Security'),(5,'Van Driver');
/*!40000 ALTER TABLE `employeetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `employeeId` int NOT NULL,
  `expenseType` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `expenseAmount` float(10,2) NOT NULL,
  `expenseDate` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `employeeId` (`employeeId`),
  CONSTRAINT `expense_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idproof`
--

DROP TABLE IF EXISTS `idproof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idproof` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idproof`
--

LOCK TABLES `idproof` WRITE;
/*!40000 ALTER TABLE `idproof` DISABLE KEYS */;
INSERT INTO `idproof` VALUES (1,'Driver\'s License'),(5,'Employee ID Card'),(2,'Passport'),(3,'Student ID Card');
/*!40000 ALTER TABLE `idproof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `itemType` int NOT NULL,
  `itemName` text NOT NULL,
  `itemCost` float(10,2) NOT NULL,
  `itemDetails` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `itemType` (`itemType`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`itemType`) REFERENCES `itemtype` (`ID`),
  CONSTRAINT `item_ibfk_2` FOREIGN KEY (`itemType`) REFERENCES `itemtype` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,1,'Bar soap',1.99,'Novo Essentials 0.4 oz. Wrapped Facial Soap Bar'),(2,1,'Bar soap',2.99,'Novo Essentials 0.8 oz. Wrapped Bath Soap Bar'),(3,1,'Body loation',3.99,'Novo Essentials 0.75 oz. Body Lotion'),(4,1,'Body lotion',3.99,'Basic Earth Botanicals Refreshing Body Lotion 1 oz.'),(5,1,'Body wash',2.99,'Basic Earth Botanicals Reviving Body Wash 1 oz.'),(6,1,'Body wash',2.99,'Ecossential Naturals Body Wash 0.5 oz.'),(7,1,'Conditioner',3.99,'Novo Essentials 0.75 oz. Conditioner'),(8,1,'Conditioner',3.99,'Basic Earth Botanicals Restoring Conditioner 1 oz.'),(9,1,'Shampoo',3.99,'Novo Essentials 0.75 oz. Shampoo'),(10,1,'Shampoo',3.99,'Eco Novo Natura 0.5 oz. Shampoo'),(11,1,'Toothbrush',1.99,'Novo Essentials 6\" Travel Toothbrush'),(12,1,'Toothpaste',2.99,'Colgate Total Clean Mint Toothpaste 0.88 oz.'),(13,1,'Mouth wash',3.99,'Judith Jackson Spa Alcohol Free Mint Mouthwash 1 oz.'),(14,1,'Comb',0.99,'Novo Essentials 4 5/8\" Black Comb'),(15,1,'Razor',1.59,'Novo Essentials Blue Twin Blade Disposable Razor'),(16,1,'Vanity Kit',4.59,'Novo Essentials Personal Vanity Kit'),(17,1,'Deoderant',4.99,'Arm & Hammer Essentials 1 oz. Rosemary and Lavender Scent Deodorant'),(18,4,'Candy',1.59,'Hersheys Chocolate Bar'),(19,4,'Candy',1.59,'Kit Kat'),(20,4,'Candy',1.59,'Reeses Peanut Butter Cups'),(21,4,'Snacks',1.89,'Doritos 1.75 oz. Bag of Nacho Cheese Flavored Tortilla Chips'),(22,4,'Snacks',1.89,'Route 11 Chips 2 oz. Lightly Salted Potato Chips'),(23,4,'Snacks',1.89,'Fresh Gourmet Tri-Color Tortilla Strips 2 oz. Bag'),(24,4,'Snacks',2.89,'General Mills 3 oz. Traditional Chex Mix'),(25,4,'Snacks',3.29,'Fiesta Sunshine Snack Mix 4 oz. Bag '),(26,5,'Energy drink',2.99,'5-Hour Energy Regular Strength 1.93 fl. oz. Grape Energy Drink'),(27,5,'Energy drink',2.99,'Red Bull 8.4 fl. oz. Can Original Energy Drink'),(28,5,'Soda',1.39,'Coca-cola'),(29,5,'Soda',1.39,'Sprite'),(30,5,'Soda',1.39,'Dr. Pepper'),(31,5,'Soda',1.39,'Diet Coca-cola'),(32,5,'Soda',1.39,'Mountain Dew'),(33,5,'Soda',2.39,'Pepsi'),(34,5,'Soda',2.39,'Canada Dry Ginger Ale'),(35,6,'Laundry bag',9.99,'25\" x 36\" Mesh Laundry Bag with Drawstring'),(36,6,'Dryer sheets',4.99,'2 Count Snuggle Blue Sparkle Dryer Sheet Fabric Softener'),(37,6,'Laundry detergent',4.99,'2 oz. ALL Stainlifter Powder Laundry Detergent'),(38,6,'Laundry detergent',4.99,'1.5 oz. Snuggle Blue Sparkle Liquid Fabric Softener');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemtype`
--

DROP TABLE IF EXISTS `itemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemtype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemtype`
--

LOCK TABLES `itemtype` WRITE;
/*!40000 ALTER TABLE `itemtype` DISABLE KEYS */;
INSERT INTO `itemtype` VALUES (5,'Beverage'),(3,'Clothing'),(4,'Food'),(1,'Health and Beauty'),(6,'Laundry'),(2,'Travel');
/*!40000 ALTER TABLE `itemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `roomTypeId` int NOT NULL,
  `roomNumber` varchar(10) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `roomNumber` (`roomNumber`),
  KEY `roomTypeId` (`roomTypeId`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`roomTypeId`) REFERENCES `roomtype` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (49,1,'100','Standard room'),(50,2,'101','Standard room'),(51,3,'102','Standard room'),(52,4,'103','Standard room'),(53,5,'104','Standard room'),(54,1,'105','Standard room'),(55,1,'106','Accessible room'),(56,2,'107','Accessible room'),(57,3,'108','Accessible room'),(58,4,'109','Accessible room'),(59,5,'110','Accessible room'),(60,1,'111','Accessible room'),(61,2,'112','Accessible room'),(62,3,'113','Accessible room'),(63,4,'114','Accessible room'),(64,5,'115','Accessible room'),(65,1,'200','Connecting room'),(66,2,'201','Connecting room'),(67,3,'202','Connecting room'),(68,4,'203','Connecting room'),(69,5,'204','Connecting room'),(70,1,'205','Connecting room'),(71,2,'206','Deluxe room'),(72,3,'207','Deluxe room'),(73,4,'208','Deluxe room'),(74,5,'209','Deluxe room'),(75,5,'210','Deluxe room'),(76,1,'211','Suite room'),(77,2,'212','Suite room'),(78,3,'213','Suite room'),(79,4,'214','Suite room'),(80,5,'215','Suite room'),(81,1,'300','Standard room'),(82,2,'301','Standard room'),(83,3,'302','Standard room'),(84,4,'303','Connecting room'),(85,5,'304','Connecting room'),(86,1,'305','Connecting room'),(87,3,'306','Deluxe room'),(88,2,'307','Deluxe room'),(89,3,'308','Deluxe room'),(90,4,'309','Deluxe room'),(91,5,'310','Deluxe room'),(92,1,'311','Suite room'),(93,2,'312','Suite room'),(94,3,'313','Suite room'),(95,4,'314','Suite room'),(96,3,'315','Suite room');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtype`
--

DROP TABLE IF EXISTS `roomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomtype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `roomType` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `cost` float(10,2) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `roomType` (`roomType`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
INSERT INTO `roomtype` VALUES (1,'Queen','A room with a queen-sized bed',145.00),(2,'King','A room with a king-sized bed',165.00),(3,'Twin','A room with two twin-sized beds',130.00),(4,'Double','A room with two double beds',150.00),(5,'Studio','A room with a studio bed with small kitchenette',155.00);
/*!40000 ALTER TABLE `roomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `roomview`
--

DROP TABLE IF EXISTS `roomview`;
/*!50001 DROP VIEW IF EXISTS `roomview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `roomview` AS SELECT 
 1 AS `roomNumber`,
 1 AS `Room Description`,
 1 AS `Daily Rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (2,'6 PM Release'),(6,'Cancelled'),(10,'CC Guaranteed'),(1,'Confirmed'),(8,'Group Confirmed'),(9,'Group Waitlist'),(7,'No Show'),(3,'Tentative'),(5,'Turn away'),(4,'Waitlist');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `bookingview`
--

/*!50001 DROP VIEW IF EXISTS `bookingview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bookingview` AS select concat(`c`.`firstName`,' ',`c`.`lastNaME`) AS `Customer`,`r`.`roomNumber` AS `Room Number`,`b`.`checkIn` AS `Check In Date`,`b`.`checkOut` AS `Check Out Date`,`b`.`status` AS `Reservation Status` from ((`customer` `c` join `booking` `b`) join `room` `r`) where ((`b`.`customerId` = `c`.`ID`) and (`b`.`roomId` = `r`.`ID`)) order by `c`.`lastNaME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customeremail`
--

/*!50001 DROP VIEW IF EXISTS `customeremail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customeremail` AS select concat(`c`.`firstName`,' ',`c`.`lastNaME`) AS `Customer`,`c`.`email` AS `Email Address` from `customer` `c` order by `c`.`lastNaME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customermail`
--

/*!50001 DROP VIEW IF EXISTS `customermail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customermail` AS select concat(`c`.`firstName`,' ',`c`.`lastNaME`) AS `Customer`,`c`.`address` AS `Address`,`cs`.`city` AS `City`,`cs`.`state` AS `state`,`c`.`zipCode` AS `Zip` from (`customer` `c` join `citystate` `cs`) where (`c`.`zipCode` = `cs`.`zipCode`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeeemail`
--

/*!50001 DROP VIEW IF EXISTS `employeeemail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeeemail` AS select concat(`e`.`firstName`,' ',`e`.`lastName`) AS `Employee`,`e`.`email` AS `Email Address` from `employee` `e` order by `e`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeelist`
--

/*!50001 DROP VIEW IF EXISTS `employeelist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeelist` AS select concat(`e`.`firstName`,' ',`e`.`lastName`) AS `Employee`,`et`.`type` AS `Department` from (`employee` `e` join `employeetype` `et`) where (`e`.`empType` = `et`.`ID`) order by `e`.`empType`,`e`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `roomview`
--

/*!50001 DROP VIEW IF EXISTS `roomview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `roomview` AS select `r`.`roomNumber` AS `roomNumber`,concat(`rt`.`roomType`,' ',`r`.`description`,' ',`rt`.`description`) AS `Room Description`,`rt`.`cost` AS `Daily Rate` from (`roomtype` `rt` join `room` `r`) where (`r`.`roomTypeId` = `rt`.`ID`) order by `r`.`roomNumber` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-20 21:23:40
