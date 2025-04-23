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
-- Table structure for table `kitchendetail`
--

DROP TABLE IF EXISTS `kitchendetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kitchendetail` (
  `Kitchen_ID` int NOT NULL,
  `Detail_ID` int NOT NULL,
  PRIMARY KEY (`Kitchen_ID`,`Detail_ID`),
  KEY `Detail_ID` (`Detail_ID`),
  CONSTRAINT `kitchendetail_ibfk_1` FOREIGN KEY (`Kitchen_ID`) REFERENCES `kitchen` (`Kitchen_ID`),
  CONSTRAINT `kitchendetail_ibfk_2` FOREIGN KEY (`Detail_ID`) REFERENCES `detail` (`Detail_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchendetail`
--

LOCK TABLES `kitchendetail` WRITE;
/*!40000 ALTER TABLE `kitchendetail` DISABLE KEYS */;
INSERT INTO `kitchendetail` VALUES (2,1),(3,1),(4,1),(5,1),(2,2),(3,2),(4,2),(5,2),(2,3),(3,3),(4,3),(5,3),(2,4),(3,4),(4,4),(5,4),(2,5),(3,5),(4,5),(5,5);
/*!40000 ALTER TABLE `kitchendetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23 20:14:11
