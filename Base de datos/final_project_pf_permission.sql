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
-- Table structure for table `pf_permission`
--

DROP TABLE IF EXISTS `pf_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pf_permission` (
  `id_permission` varchar(45) NOT NULL,
  `parent` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order` int NOT NULL,
  `level` int NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `route` varchar(45) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_permission`
--

LOCK TABLES `pf_permission` WRITE;
/*!40000 ALTER TABLE `pf_permission` DISABLE KEYS */;
INSERT INTO `pf_permission` VALUES ('ADMINISTRATION',NULL,'Admininistración','typcn-coffee',NULL,5,1,1,NULL,'2023-10-07 20:29:32'),('A_ROLE','ADMINISTRATION','Roles',NULL,NULL,1,2,1,'admin/role','2023-10-07 20:29:32'),('A_USER','ADMINISTRATION','Usuarios',NULL,NULL,2,2,1,'admin/user','2023-10-07 20:29:32'),('A_USER_DETAIL','ADMINISTRATION','Usuarios / Detalle',NULL,NULL,3,2,1,NULL,'2023-10-07 20:29:32'),('CLIENT',NULL,'Clientes','typcn-clients',NULL,3,1,1,'client','2023-10-07 20:29:32'),('DASHBOARD',NULL,'Inicio','typcn-clipboard',NULL,1,1,1,'dashboard','2023-10-07 20:29:32'),('PROFILE',NULL,'Perfil','typcn-user-outline',NULL,0,1,1,'','2023-10-07 20:29:32'),('RENTAL',NULL,'Rentas','typcn-rentals',NULL,4,1,1,NULL,'2023-10-07 20:29:32'),('R_INVOICE','RENTAL','Facturas de renta',NULL,NULL,3,2,1,'rental/invoice','2023-10-07 20:39:04'),('R_LIST','RENTAL','Lista de rentas',NULL,NULL,1,2,1,'rental','2023-10-07 20:29:32'),('R_LIST_DETAIL','RENTAL','Lista de rentas / Detalle',NULL,NULL,2,2,1,NULL,'2023-10-07 20:29:32'),('VEHICLE',NULL,'Vehículos','typcn-vehicle',NULL,2,1,1,'','2023-10-07 20:29:32'),('V_LIST','VEHICLE','Lista de vehículos',NULL,NULL,1,2,1,'vehicle','2023-10-07 20:29:32'),('V_LIST_DETAIL','VEHICLE','Lista de vehículos / Detalle',NULL,NULL,2,2,1,NULL,'2023-10-07 20:29:32');
/*!40000 ALTER TABLE `pf_permission` ENABLE KEYS */;
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
