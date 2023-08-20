-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tinh_thue
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tbl_account`
--

DROP TABLE IF EXISTS `tbl_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_account` (
  `dtype` varchar(31) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `ma_so_thue` varchar(255) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjf56l4qfqutptyaq1f70sxhxr` (`role_id`),
  CONSTRAINT `FKjf56l4qfqutptyaq1f70sxhxr` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_account`
--

LOCK TABLES `tbl_account` WRITE;
/*!40000 ALTER TABLE `tbl_account` DISABLE KEYS */;
INSERT INTO `tbl_account` VALUES ('NguoiDungEntity',1,NULL,'2023-04-26 01:54:39',NULL,'2023-04-26 01:54:39','dtp','P@ss1234','Admin','Thai Binh','dtp@gmail.com','01233456','000000001',1),('NguoiDungEntity',2,NULL,'2023-04-26 02:38:15',NULL,'2023-04-26 02:38:15','dtp','12345678','dtpClient111','Thai Binh','dtp@gmail.com','01233456','000000001',7),('NguoiDungEntity',3,NULL,'2023-04-26 02:28:25',NULL,'2023-04-26 02:28:25','dtp','12345678','dtpClient1','Thai Binh','dtp@gmail.com','01233456','000000001',3),('NguoiDungEntity',4,NULL,'2023-04-26 02:30:54',NULL,'2023-04-26 02:30:54','Mai Văn B','12345678','MaiB','Xóm b, xã Xuân Kiên, huyện Xuân Trường, tỉnh Nam Định','maivb@gmail.com','083838456','MST12345679',4),('NguoiDungEntity',5,NULL,'2023-04-26 02:31:33',NULL,'2023-04-26 02:31:33','Mai Văn C','12345678','MaiC','Xóm b, xã Xuân Kiên, huyện Xuân Trường, tỉnh Nam Định','maivc@gmail.com','083838458','MST12345689',5);
/*!40000 ALTER TABLE `tbl_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-20 11:48:25
