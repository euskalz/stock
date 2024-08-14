CREATE DATABASE  IF NOT EXISTS `stock` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `stock`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: stock
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `mercaderia`
--

DROP TABLE IF EXISTS `mercaderia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mercaderia` (
  `idmercaderia` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(45) NOT NULL,
  `fecha` date DEFAULT NULL,
  `preciocompra` double NOT NULL,
  `stock` int NOT NULL,
  `idproveedor` int NOT NULL,
  PRIMARY KEY (`idmercaderia`),
  KEY `idproveedor` (`idproveedor`),
  CONSTRAINT `mercaderia_ibfk_1` FOREIGN KEY (`idproveedor`) REFERENCES `proveedor` (`idproveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercaderia`
--

LOCK TABLES `mercaderia` WRITE;
/*!40000 ALTER TABLE `mercaderia` DISABLE KEYS */;
INSERT INTO `mercaderia` VALUES (1,'Cacerola 15 lts.','2022-10-05',3548,7,3),(2,'Jabon liquido Skip','2023-05-15',2250.8,24,2),(3,'Jabon liquido Ala','2023-05-15',2548.75,36,2),(4,'Perfume 212 CH hombre','2023-04-10',36540,6,1),(5,'Perfume Acqua Di Gio hombre','2023-05-12',38600,5,4),(6,'Bolsa de residuos x30 Asurin','2022-12-12',332.25,30,2),(7,'Set cuchilos Tramontina x 3','2023-02-22',2100,10,7),(8,'Set tenedores Tramontina x 3','2023-02-22',1830.5,10,7),(9,'Rollo de cocina Sussex x 200','2023-06-18',445,50,2),(10,'Plato playo labrado Durax','2022-11-28',214.9,48,3);
/*!40000 ALTER TABLE `mercaderia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-14 18:26:55
