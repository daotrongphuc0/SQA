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
-- Table structure for table `tbl_cau_hinh`
--

DROP TABLE IF EXISTS `tbl_cau_hinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cau_hinh` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `giam_tru_gia_canh` float DEFAULT NULL,
  `giam_tru_nguoi_phu_thuoc` float DEFAULT NULL,
  `muc_dongbhtn` float DEFAULT NULL,
  `muc_dongbhxh` float DEFAULT NULL,
  `muc_dongbhyt` float DEFAULT NULL,
  `muc_luong_toi_dabhtn` float DEFAULT NULL,
  `muc_luong_toi_dabhxh` float DEFAULT NULL,
  `muc_luong_toi_dabhyt` float DEFAULT NULL,
  `nho_hon_bang5` float DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tren80` float DEFAULT NULL,
  `tu10den18` float DEFAULT NULL,
  `tu18den32` float DEFAULT NULL,
  `tu32den52` float DEFAULT NULL,
  `tu52den80` float DEFAULT NULL,
  `tu5den10` float DEFAULT NULL,
  `vung1` float DEFAULT NULL,
  `vung2` float DEFAULT NULL,
  `vung3` float DEFAULT NULL,
  `vung4` float DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK31dg7x7h2g486cgjisxde7slw` (`admin_id`),
  CONSTRAINT `FK31dg7x7h2g486cgjisxde7slw` FOREIGN KEY (`admin_id`) REFERENCES `tbl_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cau_hinh`
--

LOCK TABLES `tbl_cau_hinh` WRITE;
/*!40000 ALTER TABLE `tbl_cau_hinh` DISABLE KEYS */;
INSERT INTO `tbl_cau_hinh` VALUES (1,NULL,'2023-04-26 01:55:05',NULL,'2023-04-26 01:55:05',11000000,4400000,0.01,0.08,0.015,85172000,29800000,29800000,0.05,'active',0.35,0.15,0.2,0.25,0.3,0.1,4680000,4160000,3640000,3250000,NULL);
/*!40000 ALTER TABLE `tbl_cau_hinh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-20 11:48:24
