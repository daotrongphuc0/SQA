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
-- Table structure for table `tbl_thue_duoc_khai`
--

DROP TABLE IF EXISTS `tbl_thue_duoc_khai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_thue_duoc_khai` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `muc_luong_dongbh` float DEFAULT NULL,
  `nam_khai` bigint DEFAULT NULL,
  `nguoi_dung_id` bigint DEFAULT NULL,
  `nguoi_phu_thuoc` bigint DEFAULT NULL,
  `thang_khai` bigint DEFAULT NULL,
  `thu_nhap` float DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `vung` bigint DEFAULT NULL,
  `cau_hinh_entity_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfn2nkovxcnk8isln63l6ab2m5` (`cau_hinh_entity_id`),
  CONSTRAINT `FKfn2nkovxcnk8isln63l6ab2m5` FOREIGN KEY (`cau_hinh_entity_id`) REFERENCES `tbl_cau_hinh` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_thue_duoc_khai`
--

LOCK TABLES `tbl_thue_duoc_khai` WRITE;
/*!40000 ALTER TABLE `tbl_thue_duoc_khai` DISABLE KEYS */;
INSERT INTO `tbl_thue_duoc_khai` VALUES (1,NULL,'2023-04-26 01:55:14',NULL,'2023-04-26 01:55:14',100000000,2023,2,2,1,100000000,'0',1,1),(2,NULL,'2023-04-26 01:55:15',NULL,'2023-04-26 01:55:15',100000000,2023,3,2,1,100000000,'0',1,1),(3,NULL,'2023-04-26 01:55:16',NULL,'2023-04-26 01:55:16',100000000,2023,4,2,1,100000000,'0',1,1),(4,NULL,'2023-04-26 02:15:00',NULL,'2023-04-26 02:15:00',1,1,2,1,1,10000000,'1',1,1),(5,NULL,'2023-04-26 02:32:16',NULL,'2023-04-26 02:32:16',1,1,4,1,1,10000000,'0',1,1),(6,NULL,'2023-04-26 02:32:27',NULL,'2023-04-26 02:32:27',1,1,5,1,1,10000000,'0',1,1),(7,NULL,'2023-04-26 18:27:52',NULL,'2023-04-26 18:27:52',100000000,2023,2,2,1,100000000,'1',1,1),(8,NULL,'2023-04-26 18:27:58',NULL,'2023-04-26 18:27:58',100000000,2023,3,2,1,100000000,'1',1,1),(9,NULL,'2023-04-26 18:34:39',NULL,'2023-04-26 18:34:39',100000000,2023,5,2,1,100000000,'1',1,1);
/*!40000 ALTER TABLE `tbl_thue_duoc_khai` ENABLE KEYS */;
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
