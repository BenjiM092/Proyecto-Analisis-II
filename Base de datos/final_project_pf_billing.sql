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
-- Table structure for table `pf_billing`
--

DROP TABLE IF EXISTS `pf_billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pf_billing` (
  `id_billing` int NOT NULL AUTO_INCREMENT,
  `id_rent` int NOT NULL,
  `payment_method` int NOT NULL COMMENT '{0: Efectivo, 1: Tarjeta de Débito o Crédito, 2: Depósito o Transferencia}',
  `total_invoice` decimal(10,2) NOT NULL,
  `rental_details` varchar(256) DEFAULT NULL,
  `taxes` decimal(10,2) DEFAULT NULL,
  `total_to_pay` decimal(10,2) NOT NULL,
  `status` int DEFAULT '0' COMMENT '{0: No pagado, 1: Pagado, 2: Cancelado}',
  `invoice_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_billing`),
  KEY `fk_rent_billing_idx` (`id_rent`),
  CONSTRAINT `fk_rent_billing` FOREIGN KEY (`id_rent`) REFERENCES `pf_rent` (`id_rent`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_billing`
--

LOCK TABLES `pf_billing` WRITE;
/*!40000 ALTER TABLE `pf_billing` DISABLE KEYS */;
INSERT INTO `pf_billing` VALUES (1,3,1,37000.00,'Renta de auto',0.05,38850.00,1,'2023-10-10 12:14:47','2023-10-11 12:36:27'),(2,4,2,24800.00,'Renta Cancelada',0.05,26040.00,2,'2023-10-11 12:43:40','2023-10-11 12:44:15'),(3,5,1,6000.00,'Renta de auto para uso en la ciudad',0.05,6300.00,0,'2023-10-11 12:50:01',NULL);
/*!40000 ALTER TABLE `pf_billing` ENABLE KEYS */;
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
