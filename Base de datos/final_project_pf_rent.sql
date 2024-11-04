-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: final_project
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `pf_rent`
--

DROP TABLE IF EXISTS `pf_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pf_rent` (
  `id_rent` int NOT NULL AUTO_INCREMENT,
  `id_client` int NOT NULL,
  `id_vehicle` int NOT NULL,
  `rental_init_date` datetime NOT NULL,
  `rental_end_date` datetime DEFAULT NULL,
  `init_milieage` int NOT NULL COMMENT 'Kilometraje Inicial',
  `end_milieage` int DEFAULT NULL COMMENT 'Kilometraje Final',
  `total_rate` decimal(10,2) NOT NULL COMMENT 'Total renta',
  `rental_status` int DEFAULT '0' COMMENT '{0:Creado, 1: En Curso, 2: Finalizado, 3: Cancelado}',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_rent`),
  KEY `fk_client_rent_idx` (`id_client`),
  KEY `fk_vehicle_rent_idx` (`id_vehicle`),
  CONSTRAINT `fk_client_rent` FOREIGN KEY (`id_client`) REFERENCES `pf_client` (`id_client`),
  CONSTRAINT `fk_vehicle_rent` FOREIGN KEY (`id_vehicle`) REFERENCES `pf_vehicle` (`id_vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_rent`
--

LOCK TABLES `pf_rent` WRITE;
/*!40000 ALTER TABLE `pf_rent` DISABLE KEYS */;
INSERT INTO `pf_rent` VALUES (3,1,1,'2023-10-11 00:00:00','2023-10-16 00:00:00',15000,21000,37000.00,2,'2023-10-10 20:11:49','2023-10-11 12:38:54'),(4,2,2,'2023-10-15 00:00:00','2023-10-23 00:00:00',10000,NULL,24800.00,3,'2023-10-10 20:38:39','2023-10-11 12:42:39'),(5,3,3,'2023-10-14 00:00:00','2023-10-18 00:00:00',7600,NULL,6000.00,0,'2023-10-11 12:48:10',NULL);
/*!40000 ALTER TABLE `pf_rent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-11 17:39:48
