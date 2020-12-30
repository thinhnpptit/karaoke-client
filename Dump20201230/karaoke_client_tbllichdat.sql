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
-- Table structure for table `tbllichdat`
--

DROP TABLE IF EXISTS `tbllichdat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbllichdat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngaydat` date DEFAULT NULL,
  `giodat` time DEFAULT NULL,
  `nhanvienQLid` int DEFAULT NULL,
  `khachhangid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lichdat_idx` (`nhanvienQLid`),
  KEY `FK_kh_idx` (`khachhangid`),
  CONSTRAINT `FK_khachhang` FOREIGN KEY (`khachhangid`) REFERENCES `tblthanhvien` (`id`),
  CONSTRAINT `FK_nhanvienQL` FOREIGN KEY (`nhanvienQLid`) REFERENCES `tblnhanvien` (`tblThanhvienid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllichdat`
--

LOCK TABLES `tbllichdat` WRITE;
/*!40000 ALTER TABLE `tbllichdat` DISABLE KEYS */;
INSERT INTO `tbllichdat` VALUES (1,'2020-12-14','10:00:00',1,2),(2,'2020-12-15','10:30:00',1,3),(3,'2020-12-04',NULL,1,2),(4,'2020-12-01','07:00:00',1,2),(5,'2020-12-02','07:00:00',1,2),(6,'2020-12-02','07:00:00',1,2),(7,'2020-12-02','07:00:00',1,2),(8,'2020-12-02','07:00:00',1,2),(9,'2020-12-02','07:00:00',1,2),(10,'2020-12-02','07:00:00',1,2),(11,'2020-12-02','07:00:00',1,2),(12,'2020-12-02','07:00:00',1,2),(13,'2020-12-02','07:00:00',1,2),(14,'2020-12-02','07:00:00',1,2),(15,'2020-12-16','06:00:00',1,2),(16,'2020-12-16','06:00:00',1,2),(17,'2020-12-17','02:00:00',1,2),(18,'2020-12-10','00:00:00',1,2),(19,'2020-12-10','00:00:00',1,2),(20,'2020-12-05','02:00:00',1,2),(21,'2020-12-18','02:00:00',1,2),(22,'2020-12-18','02:00:00',1,2),(23,'2020-12-26','09:00:00',1,2),(24,'2020-12-26','09:00:00',1,2),(25,'2020-12-10','02:00:00',1,2),(26,'2020-12-10','02:15:00',1,2);
/*!40000 ALTER TABLE `tbllichdat` ENABLE KEYS */;
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
