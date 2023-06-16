-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: e-commerce
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `ID` int NOT NULL,
  `DESCRICAO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'PADARIA'),(2,'CARNES'),(3,'MERCEARIA'),(4,'PETSHOP'),(5,'HIGIENE'),(6,'LIMPEZA'),(7,'HORTIFRUTI'),(8,'FRIOS'),(9,'BEBIDAS'),(10,'PAPELARIA');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `ID` int NOT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'TUBARAO','SC'),(2,'CASCAVEL','PR'),(3,'JAGUARUNA','SC'),(4,'FLORIANOPOLIS','SC'),(5,'PORTO ALEGRE','RS'),(6,'SAO PAULO','SP'),(7,'SANGAO','SC');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID` int NOT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `DATA_NASC` date DEFAULT NULL,
  `ENDERECO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ENDERECO` (`ENDERECO`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ENDERECO`) REFERENCES `endereco` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Maria Souza','F','2000-02-11',1),(2,'Pedro Santos','M','1998-03-27',2);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `ID` int NOT NULL,
  `RUA` varchar(50) DEFAULT NULL,
  `BAIRRO` varchar(20) DEFAULT NULL,
  `CIDADE` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CIDADE` (`CIDADE`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`CIDADE`) REFERENCES `cidade` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'RUA 1','CENTRO',2),(2,'RUA 2','CENTRO',3);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `ID` int NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  `VALOR` decimal(10,2) DEFAULT NULL,
  `QTDE` int DEFAULT NULL,
  `CATEGORIA` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CATEGORIA` (`CATEGORIA`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`CATEGORIA`) REFERENCES `categoria` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'MACARRAO',4.72,10,3),(2,'RACAO',12.99,6,4),(3,'ALFACE',2.99,6,7),(4,'CANETA BIC',5.50,2,10),(5,'PEPSI',8.99,10,9),(6,'FRANGO',25.99,10,2);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `ID` int NOT NULL,
  `NUMERO` varchar(20) DEFAULT NULL,
  `CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CLIENTE` (`CLIENTE`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`CLIENTE`) REFERENCES `cliente` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'48999923654',1),(2,'48999825653',1),(3,'43992365478',2);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `ID` int NOT NULL,
  `DATA_VENDA` date DEFAULT NULL,
  `CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CLIENTE` (`CLIENTE`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`CLIENTE`) REFERENCES `cliente` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'2023-06-12',1),(2,'2023-06-11',2),(3,'2023-06-12',1),(4,'2023-06-11',2),(5,'2023-06-12',1),(6,'2023-06-12',1);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_prod`
--

DROP TABLE IF EXISTS `venda_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda_prod` (
  `ID` int NOT NULL,
  `VENDA` int DEFAULT NULL,
  `PRODUTO` int DEFAULT NULL,
  `QTDE` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `VENDA` (`VENDA`),
  KEY `PRODUTO` (`PRODUTO`),
  CONSTRAINT `venda_prod_ibfk_1` FOREIGN KEY (`VENDA`) REFERENCES `venda` (`ID`),
  CONSTRAINT `venda_prod_ibfk_2` FOREIGN KEY (`PRODUTO`) REFERENCES `produto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_prod`
--

LOCK TABLES `venda_prod` WRITE;
/*!40000 ALTER TABLE `venda_prod` DISABLE KEYS */;
INSERT INTO `venda_prod` VALUES (1,1,1,2),(2,1,3,1),(3,1,6,1),(4,1,5,2),(5,2,2,1),(6,2,4,2);
/*!40000 ALTER TABLE `venda_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'e-commerce'
--

--
-- Dumping routines for database 'e-commerce'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-13 21:50:47
