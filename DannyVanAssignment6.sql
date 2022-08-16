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
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `roomId` (`roomId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `room` (`ID`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

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
  `idProof` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `citystate` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (126,'Yvonne','Goodman','12 Creekside St','37205','2025550109','ygoodman@isp.com','Driver\'s License'),(127,'Dante','Mackenzie','137 Wall St','37205','2025550112','dmackenzie@isp.com','Driver\'s License'),(128,'Alysha','Rollins','411 Shirley St','37205','2025550115','arollins@isp.com','Driver\'s License'),(129,'Avaya','Gonzalez','7771 Border Court','37205','2025550119','agonzalez@isp.com','Driver\'s License'),(130,'Haniya','Kelly','6 South Sulphur Springs Stree','37205','2025550121','hkelly@isp.com','Driver\'s License'),(131,' Nathalie','Chambers','942 New Saddle Drive','29710','2025550122','nchambers@isp.com','Driver\'s License'),(132,'Dante','Rollins','9 Wrangler Ave','29710','2025550124','drollins@isp.com','Passport'),(133,'Beverley','Mckee','7319 S. Greenview Drive','29710','2025550125','bmckee@isp.com','Passport'),(134,'Paris','Lindsey','763 West Mulberry St','29710','2025550132','plindsey@isp.com','Passport'),(135,'Umaiza','Melia','545 Ohio Ave','29710','2025550135','umelia@isp.com','Passport'),(136,'Nico','Prince','20 Middle River Street','44094','2025550137','nprince@isp.com','Passport'),(138,'Ali','Waters','83 Rockland Lane','44094','2025550144','awaters@isp.com','Passport'),(139,'JohnPaul','Clarke','1 Riverside Lane','44094','2025550153','jpcClarke@isp.com','Passport'),(140,'Dane','Kaiser','694 Wall Road','44094','2025550155','kdaiser@isp.com','Passport'),(141,'Hammad','Newman','9970 State Court','30096','2025550157','hnewman@isp.com','Student ID Card'),(142,'Maha','Guthrie',' 54 Woodsman Drive','30096','2025550161','mguthrie@isp.com',' Student ID Card'),(143,' Tulisa','Roberts','7174 Studebaker Street','30096','2025550163','troberts@isp.com','Student ID Card'),(144,'Robin','Solis','8474 Wentworth Street','30096','2025550164','rsolis@isp.com','Student ID Card'),(145,'Kavita','Heath','796 Hartford St','30096','2025550165','kheath@isp.com','Student ID Card'),(146,'Meera','White','484 Bridge St','08854','2025550166','mwhite@isp.com','Student ID Card'),(147,'Bradlee','Esparza','7031 Gainsway St','08854','2025550173','besparza@isp.com','Student ID Card'),(148,'Leilani','Leonard','37 Monroe Street','08854','2025550175','lleonard@isp.com','Employee ID Card'),(149,'Stefanie','Brook','7990 West Surrey St','08854','2025550179','sbrook@isp.com','Employee ID Card'),(150,'Grover','Squires','7618 Madison Court','08854','2025550180','gsquires@isp.com','Employee ID Card');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `itemType` varchar(25) NOT NULL,
  `itemName` text NOT NULL,
  `itemCost` float(10,2) NOT NULL,
  `itemDetails` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-22 22:50:52
