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
-- Temporary view structure for view `femaleemployees`
--

DROP TABLE IF EXISTS `femaleemployees`;
/*!50001 DROP VIEW IF EXISTS `femaleemployees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `femaleemployees` AS SELECT 
 1 AS `EmployeeFirstName`,
 1 AS `EmployeeLastName`,
 1 AS `Age`,
 1 AS `AssignmentName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `topperformance`
--

DROP TABLE IF EXISTS `topperformance`;
/*!50001 DROP VIEW IF EXISTS `topperformance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `topperformance` AS SELECT 
 1 AS `EmployeeFirstName`,
 1 AS `EmployeeLastName`,
 1 AS `WorkingHours`,
 1 AS `Bonus`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `femaleemployees`
--

/*!50001 DROP VIEW IF EXISTS `femaleemployees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `femaleemployees` AS select `employee`.`EmployeeFirstName` AS `EmployeeFirstName`,`employee`.`EmployeeLastName` AS `EmployeeLastName`,`employee`.`Age` AS `Age`,`workingon`.`AssignmentName` AS `AssignmentName` from (`employee` left join `workingon` on((`employee`.`EmployeeID` = `workingon`.`EmployeeID`))) where (`employee`.`Gender` = 'Female') union all select `employee`.`EmployeeFirstName` AS `EmployeeFirstName`,`employee`.`EmployeeLastName` AS `EmployeeLastName`,`employee`.`Age` AS `Age`,`workingon`.`AssignmentName` AS `AssignmentName` from (`workingon` left join `employee` on((`employee`.`EmployeeID` = `workingon`.`EmployeeID`))) where (`employee`.`Gender` = 'Female') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `topperformance`
--

/*!50001 DROP VIEW IF EXISTS `topperformance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `topperformance` AS select `employee`.`EmployeeFirstName` AS `EmployeeFirstName`,`employee`.`EmployeeLastName` AS `EmployeeLastName`,`performanceevaluation`.`WorkingHours` AS `WorkingHours`,`performanceevaluation`.`Bonus` AS `Bonus` from (`performanceevaluation` join `employee` on((`employee`.`EmployeeID` = `performanceevaluation`.`EmployeeID`))) where (`performanceevaluation`.`Assessment` > 5) */;
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

-- Dump completed on 2024-10-10  4:18:56
