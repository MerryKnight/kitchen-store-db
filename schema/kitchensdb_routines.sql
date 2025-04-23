-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kitchensdb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Temporary view structure for view `kitchendetailssuppliers`
--

DROP TABLE IF EXISTS `kitchendetailssuppliers`;
/*!50001 DROP VIEW IF EXISTS `kitchendetailssuppliers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kitchendetailssuppliers` AS SELECT 
 1 AS `Kitchen_ID`,
 1 AS `Name_Kitchen`,
 1 AS `Name_Detail`,
 1 AS `Detail_Price`,
 1 AS `Name_Supplier`,
 1 AS `Contact_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `kitchendetailssuppliers`
--

/*!50001 DROP VIEW IF EXISTS `kitchendetailssuppliers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kitchendetailssuppliers` AS select `k`.`Kitchen_ID` AS `Kitchen_ID`,`k`.`Name_Kitchen` AS `Name_Kitchen`,`d`.`Name_Detail` AS `Name_Detail`,`d`.`Price` AS `Detail_Price`,`s`.`Name_Supplier` AS `Name_Supplier`,`s`.`Contact_ID` AS `Contact_ID` from (((`kitchen` `k` join `kitchendetail` `kd` on((`k`.`Kitchen_ID` = `kd`.`Kitchen_ID`))) join `detail` `d` on((`kd`.`Detail_ID` = `d`.`Detail_ID`))) join `supplier` `s` on((`d`.`Supplier_ID` = `s`.`Supplier_ID`))) */;
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

-- Dump completed on 2025-04-23 20:14:14
