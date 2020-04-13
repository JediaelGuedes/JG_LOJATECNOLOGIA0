-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: JG_LOJATECNOLOGIA
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `idade` int(5) NOT NULL,
  `CPF` varchar(30) NOT NULL,
  `CEP` int(12) NOT NULL,
  `endereço` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  UNIQUE KEY `CPF` (`CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Jediael Gadelha',18,'67854329010',678543190,'Rua dos Cavalos'),(2,'Mario de Andrade',20,'78932406537',987321785,'Rua dos Pássaros'),(3,'Maria Eduarda',18,'76521890653',543876490,'Rua dos Anjos'),(4,'Yasmim Silva',19,'65478943218',564327652,'Rua das Gatas'),(5,'Luiz Henrique',18,'65437865258',876432178,'Rua dos Amigos');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `produto` varchar(10) NOT NULL,
  `armazenadas` int(10) NOT NULL,
  `perdidas` int(10) NOT NULL,
  `avarias` int(10) NOT NULL,
  `código` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `código` (`código`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,'Playstatio',10300,2,5,'765489'),(2,'Televisão',20300,130,3,'234907'),(3,'Celular',40300,100,7,'345897'),(4,'desktop',60300,30,1,'145902'),(5,'impressora',80300,2,4,'109654');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionário`
--

DROP TABLE IF EXISTS `funcionário`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionário` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `meses_trabalhados` int(6) NOT NULL,
  `horas_trabalhadas` int(10) NOT NULL,
  `horas_extras` int(10) NOT NULL,
  `custo_hora` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionário`
--

LOCK TABLES `funcionário` WRITE;
/*!40000 ALTER TABLE `funcionário` DISABLE KEYS */;
INSERT INTO `funcionário` VALUES (1,'Jordana mira',12,1200,300,7.5000),(2,'Elisandro silva',24,2400,600,8.5000),(3,'Mateus dias',36,3600,4800,9.3000),(4,'Carlos Silva',48,4800,6000,10.2000),(5,'Ezequiel Carlos',60,6000,7200,15.3000);
/*!40000 ALTER TABLE `funcionário` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerente`
--

DROP TABLE IF EXISTS `gerente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerente` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `usuário` varchar(15) NOT NULL,
  `senha` int(22) NOT NULL,
  `setor` varchar(20) NOT NULL,
  `salário` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuário` (`usuário`),
  UNIQUE KEY `setor` (`setor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerente`
--

LOCK TABLES `gerente` WRITE;
/*!40000 ALTER TABLE `gerente` DISABLE KEYS */;
INSERT INTO `gerente` VALUES (1,'Daniel Silva','@daniel20',102030407,'TI',10000.0000),(2,'Mateus Guedes','@mateus30',10203040,'RH',8549.2000),(3,'José Alencar','@jose80',78543267,'Vendas',7200.1000),(4,'Neymar Silva','@neymar1',87654389,'Almoxarifado',6480.3400),(5,'Ronaldo Carvalho','@ronaldo2',9832467,'logística',6785.6700);
/*!40000 ALTER TABLE `gerente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MÊS` varchar(20) NOT NULL,
  `vendas_realizadas` int(6) NOT NULL,
  `vendas_não_realizadas` int(6) NOT NULL,
  `prejuízo` decimal(10,4) NOT NULL,
  `lucro` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MÊS` (`MÊS`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,'Janeiro',102000,50000,30537.3400,70320.2200),(2,'Fevereiro',105000,40340,10000.2300,90000.2400),(3,'Março',20500,80340,203000.1200,118000.2300),(4,'Abril',40500,81600,394200.1300,139000.4300),(5,'Maio',80200,61500,403200.1500,340000.2300);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-12 23:34:28
