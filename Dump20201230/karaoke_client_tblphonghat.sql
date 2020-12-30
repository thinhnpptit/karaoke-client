-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: karaoke_client
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `tblphonghat`
--

DROP TABLE IF EXISTS `tblphonghat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblphonghat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) DEFAULT NULL,
  `loai` varchar(45) DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `tblNhahangid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nhahang_idx` (`tblNhahangid`),
  CONSTRAINT `FK_nhahang` FOREIGN KEY (`tblNhahangid`) REFERENCES `tblnhahang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblphonghat`
--

LOCK TABLES `tblphonghat` WRITE;
/*!40000 ALTER TABLE `tblphonghat` DISABLE KEYS */;
INSERT INTO `tblphonghat` VALUES (1,'p307','thuong',100,NULL,1),(2,'p308','vip',200,NULL,1),(3,'p309','thuong',100,NULL,1),(4,'p310','thuong',100,NULL,1),(5,'p311','vip',200,NULL,1),(6,'p312','vip',200,NULL,1),(7,'p313','vip',200,NULL,1),(8,'p314','thuong',100,NULL,1),(9,'p315','vip',200,NULL,1),(10,'p316','thuong',150,NULL,1);
/*!40000 ALTER TABLE `tblphonghat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-30  9:35:04
