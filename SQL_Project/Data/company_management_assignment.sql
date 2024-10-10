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
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
  `AssignmentNo` int NOT NULL,
  `AssignmentName` varchar(50) NOT NULL,
  `AssignmentDescription` varchar(255) DEFAULT NULL,
  `StartDate` date NOT NULL,
  `EmployerID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `SIN` int DEFAULT NULL,
  PRIMARY KEY (`AssignmentNo`,`AssignmentName`),
  KEY `EmployeeID` (`EmployeeID`,`SIN`),
  KEY `EmployerID` (`EmployerID`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`EmployeeID`, `SIN`) REFERENCES `employee` (`EmployeeID`, `SIN`),
  CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`EmployerID`) REFERENCES `employer` (`EmployerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,'Data pull','Pulling data into Excel','2021-12-01',345678,34567,572873619),(2,'Data analyze','Analyze data in PBI','2021-12-02',123456,29473,874835802),(3,'Data pipeline','Build a data pipeline in Azure','2021-12-03',345678,19723,902367280),(4,'Excel extraction','Use automation scripts to extract data in Excel','2021-12-04',768532,98424,673231619),(5,'SAP extraction','Pull data from the SAP systems','2021-12-05',345678,23480,931341482),(6,'Invoice pull','Pulling invoice data into Excel','2021-12-06',345678,34567,572873619),(7,'Invoice analyze','Analyze invoice data in PBI','2021-12-07',123456,29473,874835802),(8,'Invoice pipeline','Build an invoice data pipeline in Azure','2021-12-08',345678,19723,902367280),(9,'Invoice extraction','Use automation scripts to extract invoice data in Excel','2021-12-09',768532,98424,673231619),(10,'Invoice segmentation','Segment invoice data','2021-12-10',345678,23480,931341482);
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
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
