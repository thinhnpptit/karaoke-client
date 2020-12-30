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
-- Table structure for table `tblphongdat`
--

DROP TABLE IF EXISTS `tblphongdat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblphongdat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `giobatdau` time DEFAULT NULL,
  `gioketthuc` time DEFAULT NULL,
  `tblPhonghatid` int DEFAULT NULL,
  `tblHoadonid` int DEFAULT NULL,
  `tblLichdatid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_phongdat_idx` (`tblPhonghatid`),
  KEY `FK_hoadon_idx` (`tblHoadonid`),
  KEY `FK_lichdat_idx` (`tblLichdatid`),
  CONSTRAINT `FK_hoadon` FOREIGN KEY (`tblHoadonid`) REFERENCES `tblhoadon` (`id`),
  CONSTRAINT `FK_lichdat` FOREIGN KEY (`tblLichdatid`) REFERENCES `tbllichdat` (`id`),
  CONSTRAINT `FK_phongdat` FOREIGN KEY (`tblPhonghatid`) REFERENCES `tblphongdat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblphongdat`
--

LOCK TABLES `tblphongdat` WRITE;
/*!40000 ALTER TABLE `tblphongdat` DISABLE KEYS */;
INSERT INTO `tblphongdat` VALUES (1,'10:00:00','12:00:00',1,1,1),(2,'10:30:00','11:30:00',2,2,2),(3,'02:00:00',NULL,1,NULL,4),(4,'02:00:00',NULL,1,NULL,4),(5,'02:00:00',NULL,1,NULL,4),(6,'02:00:00',NULL,1,NULL,4),(7,'02:00:00',NULL,1,NULL,4),(8,'00:00:00',NULL,1,NULL,4),(9,'00:00:00',NULL,1,NULL,4),(10,'00:00:00',NULL,1,NULL,4),(11,'00:00:00',NULL,2,NULL,4),(12,'02:00:00',NULL,3,NULL,21);
/*!40000 ALTER TABLE `tblphongdat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-30  9:35:03
