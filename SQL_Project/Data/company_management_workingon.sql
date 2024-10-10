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
-- Table structure for table `workingon`
--

DROP TABLE IF EXISTS `workingon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workingon` (
  `EmployeeID` int NOT NULL,
  `SIN` int NOT NULL,
  `AssignmentNo` int NOT NULL,
  `AssignmentName` varchar(50) NOT NULL,
  PRIMARY KEY (`EmployeeID`,`SIN`,`AssignmentNo`,`AssignmentName`),
  KEY `AssignmentNo` (`AssignmentNo`,`AssignmentName`),
  CONSTRAINT `workingon_ibfk_1` FOREIGN KEY (`EmployeeID`, `SIN`) REFERENCES `employee` (`EmployeeID`, `SIN`),
  CONSTRAINT `workingon_ibfk_2` FOREIGN KEY (`AssignmentNo`, `AssignmentName`) REFERENCES `assignment` (`AssignmentNo`, `AssignmentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workingon`
--

LOCK TABLES `workingon` WRITE;
/*!40000 ALTER TABLE `workingon` DISABLE KEYS */;
INSERT INTO `workingon` VALUES (34567,572873619,1,'Data pull'),(29473,874835802,2,'Data analyze'),(19723,902367280,3,'Data pipeline'),(98424,673231619,4,'Excel Extraction'),(23480,931341482,5,'SAP Extraction'),(34567,572873619,6,'Invoice pull'),(29473,874835802,7,'Invoice analyze'),(19723,902367280,8,'Invoice pipeline'),(98424,673231619,9,'Invoice Extraction'),(23480,931341482,10,'Invoice Segmentation');
/*!40000 ALTER TABLE `workingon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-10  4:18:55
