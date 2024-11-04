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
-- Table structure for table `pf_vehicle`
--

DROP TABLE IF EXISTS `pf_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pf_vehicle` (
  `id_vehicle` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) NOT NULL COMMENT 'marca',
  `model` varchar(45) NOT NULL,
  `year` int NOT NULL,
  `type_vehicle` int NOT NULL COMMENT '{0: automóvil, 1: camioneta, 2: motocicleta, 3:etc}',
  `color` varchar(45) NOT NULL,
  `plate` varchar(45) NOT NULL COMMENT 'placa',
  `milieage` int NOT NULL COMMENT 'kilometraje',
  `status` int NOT NULL DEFAULT '1' COMMENT '{0: No disponible, 1: Disponible, 2: Mantenimiento}',
  `image` varchar(256) DEFAULT NULL,
  `rental_fee` decimal(10,0) NOT NULL COMMENT 'Tarifa de alquiler',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_vehicle`
--

LOCK TABLES `pf_vehicle` WRITE;
/*!40000 ALTER TABLE `pf_vehicle` DISABLE KEYS */;
INSERT INTO `pf_vehicle` VALUES (1,'Mazda','Mazda 3 Sport',2015,0,'Negro','869HCQ',21000,1,'/images/mazda3.png',7400,'2023-10-09 19:54:45'),(2,'Toyota','Celica',2009,0,'Blanco','435GHV',10000,1,'/images/toyotacelica.png',3100,'2023-10-10 20:03:59'),(3,'Nissan','Altima',2003,0,'Gris','786THR',7600,0,'/images/nissanaltima.png',1500,'2023-10-11 12:46:51'),(4,'Volkswagen','Golf TSI',2017,0,'Blanco','AA777',15300,2,'/images/volkswagengolf.png',7800,'2023-10-11 14:34:37'),(5,'Toyota','4Runner',2018,0,'Negro','ABC003',12300,2,'/images/toyota4runner.png',6500,'2023-10-11 14:40:51'),(6,'Mercedes','AMG GT',2019,0,'Gris','ANX035',17300,1,'/images/mercedesamggt.png',9400,'2023-10-11 14:44:15');
/*!40000 ALTER TABLE `pf_vehicle` ENABLE KEYS */;
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
