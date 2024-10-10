-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: company_management
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `performanceevaluation`
--

DROP TABLE IF EXISTS `performanceevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performanceevaluation` (
  `WorkingHours` int DEFAULT NULL,
  `Assessment` varchar(3) NOT NULL,
  `Bonus` int DEFAULT NULL,
  `EmployerID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `SIN` int DEFAULT NULL,
  PRIMARY KEY (`Assessment`),
  KEY `EmployerID` (`EmployerID`),
  KEY `EmployeeID` (`EmployeeID`,`SIN`),
  CONSTRAINT `performanceevaluation_ibfk_1` FOREIGN KEY (`EmployerID`) REFERENCES `employer` (`EmployerID`),
  CONSTRAINT `performanceevaluation_ibfk_2` FOREIGN KEY (`EmployeeID`, `SIN`) REFERENCES `employee` (`EmployeeID`, `SIN`),
  CONSTRAINT `performanceevaluation_chk_1` CHECK ((`WorkingHours` between 1 and 100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performanceevaluation`
--

LOCK TABLES `performanceevaluation` WRITE;
/*!40000 ALTER TABLE `performanceevaluation` DISABLE KEYS */;
INSERT INTO `performanceevaluation` VALUES (27,'66',660,NULL,23480,931341482),(50,'72',720,345678,34567,572873619),(20,'76',760,123456,29473,874835802),(10,'79',790,345678,19723,902367280),(80,'81',810,768532,98424,673231619),(30,'82',820,768532,98424,673231619),(30,'86',860,123456,29473,874835802),(90,'96',960,345678,34567,572873619),(32,'98',980,345678,19723,902367280),(90,'99',990,NULL,23480,931341482);
/*!40000 ALTER TABLE `performanceevaluation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-10  4:18:56
