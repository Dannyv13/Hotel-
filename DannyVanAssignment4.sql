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
  `city` varchar(90) NOT NULL,
  `state` char(2) NOT NULL,
  `zipCode` char(10) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  `idProof` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (51,'Yvonne','Goodman','12 Creekside St','Nashville','TN','37205','2025550109','ygoodman@isp.com','Driver\'s License'),(52,'Dante','Mackenzie','137 Wall St','Nashville','TN','37205','2025550112','dmackenzie@isp.com','Driver\'s License'),(53,'Alysha','Rollins','411 Shirley St','Nashville','TN','37205','2025550115','arollins@isp.com','Driver\'s License'),(54,'Avaya','Gonzalez','7771 Border Court','Nashville','TN','37205','2025550119','agonzalez@isp.com','Driver\'s License'),(55,'Haniya','Kelly','6 South Sulphur Springs Stree','Nashvill','TN','7205','2025550121','hkelly@isp.com','Driver\'s License'),(56,' Nathalie','Chambers','942 New Saddle Drive','Clover','SC','29710','2025550122','nchambers@isp.com','Driver\'s License'),(57,'Dante','Rollins','9 Wrangler Ave','Clover','SC','29710','2025550124','drollins@isp.com','Passport'),(58,'Beverley','Mckee','7319 S. Greenview Drive','Clover','SC','29710','2025550125','bmckee@isp.com','Passport'),(59,'Paris','Lindsey','763 West Mulberry St','Clover','SC','29710','2025550132','plindsey@isp.com','Passport'),(60,'Umaiza','Melia','545 Ohio Ave','Clover','SC','29710','2025550135','umelia@isp.com','Passport'),(61,'Nico','Prince','20 Middle River Street','Willoughby','OH','44094','2025550137','nprince@isp.com','Passport'),(62,'Javan','Rennie','8112 North Country St',' Willoughby','OH','44094','2025550139','jrennie@isp.com',' Passport'),(63,'Ali','Waters','83 Rockland Lane','Willoughby','OH','44094','2025550144','awaters@isp.com','Passport'),(64,'JohnPaul','Clarke','1 Riverside Lane','Willoughby','OH','44094','2025550153','jpcClarke@isp.com','Passport'),(65,'Dane','Kaiser','694 Wall Road','Willoughby','OH','44094','2025550155','kdaiser@isp.com','Passport'),(66,'Hammad','Newman','9970 State Court','Duluth','GA','30096','2025550157','hnewman@isp.com','Student ID Card'),(67,'Maha','Guthrie',' 54 Woodsman Drive','Duluth','GA','30096','2025550161','mguthrie@isp.com',' Student ID Card'),(68,' Tulisa','Roberts','7174 Studebaker Street','Duluth','GA','30096','2025550163','troberts@isp.com','Student ID Card'),(69,'Robin','Solis','8474 Wentworth Street','Duluth','GA','30096','2025550164','rsolis@isp.com','Student ID Card'),(70,'Kavita','Heath','796 Hartford St','Duluth','GA','30096','2025550165','kheath@isp.com','Student ID Card'),(71,'Meera','White','484 Bridge St','Piscataway','NJ','08854','2025550166','mwhite@isp.com','Student ID Card'),(72,'Bradlee','Esparza','7031 Gainsway St','Piscataway','NJ','08854','2025550173','besparza@isp.com','Student ID Card'),(73,'Leilani','Leonard','37 Monroe Street','Piscataway','NJ','08854','2025550175','lleonard@isp.com','Employee ID Card'),(74,'Stefanie','Brook','7990 West Surrey St','Piscataway','NJ','08854','2025550179','sbrook@isp.com','Employee ID Card'),(75,'Grover','Squires','7618 Madison Court','Piscataway','NJ','08854','2025550180','gsquires@isp.com','Employee ID Card');
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
  `empType` varchar(25) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Yvonne','Prince','yprince','Parrots12!@','General Manager','yprince@ucfhotel.com'),(2,'Dante','Rennie','drennie','Birbs12!@','Front Office Manager','drennie@ucfhotel.com'),(3,'Alysha','Waters','awaters','Doggo12!@','Concierge','awaters@ucfhotel.com'),(4,'Avaya','Clarke','aclarke','MurderMittens12!@','Concierge','aclarke@ucfhotel.com'),(5,'Haniya','Kaiser','hkaiser','BlazingCruise12!@','Guest Service Agent','hkaiser@ucfhotel.com'),(6,'Nathalie','Newman','nnewman','CruisingBlaze12!@','Guest Service Agent','nnewman@ucfhotel.com'),(7,'Dante','Guthrie','dguthrie','Smokey12!@','Guest Service Agent','dguthrie@ucfhotel.com'),(8,'Beverley','Roberts','broberts','Ocho8*','Guest Service Agent','broberts@ucfhotel.com'),(9,'Paris','Solis','psolis','Samster12!@','Van Driver','psolis@ucfhotel.com'),(10,'Umaiza','Heath','uheath','NattyPants12!@','Van Driver','uheath@ucfhotel.com'),(11,'Jonathan','Kumar','jkumar','Keystonia12!@','Security','jkumar@ucfhotel.com'),(12,'Angus','Neville','aneville','StormyCat12!@','Security','aneville@ucfhotel.com'),(13,'Uzair','Sparrow','usparrow','OrangeMuffin12!@','Sales Director','usparrow@ucfhotel.com'),(14,'Amari','Currie','acurrie','TessaDog12!@','Sales Manager','acurrie@ucfhotel.com'),(15,'Imaani','Wallace','iwallace','IvyBug12!@','Catering Assistant','iwallace@ucfhotel.com'),(16,'Efe','House','ehouse','AussieBird12!@',' Executive Housekeeper','ehouse@ucfhotel.com'),(17,'Atticus','Atkinson','aatkinson','Eclectus12!@','Houseperson','aatkinson@ucfhotel.com'),(18,'Michelle','Ramirez','mramirez','Horse12!@','Houseperson','mramirez@ucfhotel.com'),(19,'Remy','Hassan','rhassan',' Equines12!@','Houseperson','rhassan@ucfhotel.com'),(20,'Jordana','Beck','jbeck','AllAnimals12!@','Houseperson','jbeck@ucfhotel.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
  KEY `roomTypeId` (`roomTypeId`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`roomTypeId`) REFERENCES `roomtype` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
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
  `roomNumber` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `cost` float(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
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

-- Dump completed on 2021-10-01 22:12:10
