-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: adise2021Quarto
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0+deb10u1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Accounts`
--

DROP TABLE IF EXISTS `Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surnname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts`
--

LOCK TABLES `Accounts` WRITE;
/*!40000 ALTER TABLE `Accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `posX` tinyint(4) NOT NULL,
  `posY` tinyint(4) NOT NULL,
  `piece` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`posX`,`posY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,1,NULL),(1,2,NULL),(1,3,NULL),(1,4,NULL),(2,1,NULL),(2,2,NULL),(2,3,NULL),(2,4,NULL),(3,1,NULL),(3,2,NULL),(3,3,NULL),(3,4,NULL),(4,1,NULL),(4,2,NULL),(4,3,NULL),(4,4,NULL);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_empty`
--

DROP TABLE IF EXISTS `board_empty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_empty` (
  `posX` tinyint(4) NOT NULL,
  `posY` tinyint(4) NOT NULL,
  `piece` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`posX`,`posY`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_empty`
--

LOCK TABLES `board_empty` WRITE;
/*!40000 ALTER TABLE `board_empty` DISABLE KEYS */;
INSERT INTO `board_empty` VALUES (1,1,NULL),(1,2,NULL),(1,3,NULL),(1,4,NULL),(2,1,NULL),(2,2,NULL),(2,3,NULL),(2,4,NULL),(3,1,NULL),(3,2,NULL),(3,3,NULL),(3,4,NULL),(4,1,NULL),(4,2,NULL),(4,3,NULL),(4,4,NULL);
/*!40000 ALTER TABLE `board_empty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_status`
--

DROP TABLE IF EXISTS `game_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_status` (
  `status` enum('not active','initialized','started','ended','aborded') NOT NULL DEFAULT 'not active',
  `result` enum('Player 1','Player 2','Draw') DEFAULT NULL,
  `player_turn` enum('Player 1','Player 2') DEFAULT NULL,
  `last_change` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_status`
--

LOCK TABLES `game_status` WRITE;
/*!40000 ALTER TABLE `game_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pieces`
--

DROP TABLE IF EXISTS `pieces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pieces` (
  `piece_id` varchar(50) NOT NULL,
  `piece_color` enum('White','Brown') NOT NULL DEFAULT 'White',
  `piece_height` enum('Tall','Short') NOT NULL DEFAULT 'Tall',
  `piece_shape` enum('Square','Circle') NOT NULL DEFAULT 'Circle',
  `piece_depth` enum('Hollow','Flat','nothing') NOT NULL DEFAULT 'nothing',
  `played` enum('False','True') NOT NULL DEFAULT 'False',
  PRIMARY KEY (`piece_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pieces`
--

LOCK TABLES `pieces` WRITE;
/*!40000 ALTER TABLE `pieces` DISABLE KEYS */;
INSERT INTO `pieces` VALUES ('BSCF','Brown','Short','Circle','Flat','False'),('BSCH','Brown','Short','Circle','Hollow','False'),('BSSF','Brown','Short','Square','Flat','False'),('BSSH','Brown','Short','Square','Hollow','False'),('BTCF','Brown','Tall','Circle','Flat','False'),('BTCH','Brown','Tall','Circle','Hollow','False'),('BTSF','Brown','Tall','Square','Flat','False'),('BTSH','Brown','Tall','Square','Hollow','False'),('WSCF','White','Short','Circle','Flat','False'),('WSCH','White','Short','Circle','Hollow','False'),('WSSF','White','Short','Square','Flat','False'),('WSSH','White','Short','Square','Hollow','False'),('WTCF','White','Tall','Circle','Flat','False'),('WTCH','White','Tall','Circle','Hollow','False'),('WTSF','White','Tall','Square','Flat','False'),('WTSH','White','Tall','Square','Hollow','False');
/*!40000 ALTER TABLE `pieces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pieces_reload`
--

DROP TABLE IF EXISTS `pieces_reload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pieces_reload` (
  `piece_id` varchar(50) NOT NULL,
  `piece_color` enum('White','Brown') NOT NULL DEFAULT 'White',
  `piece_height` enum('Tall','Short') NOT NULL DEFAULT 'Tall',
  `piece_shape` enum('Square','Circle') NOT NULL DEFAULT 'Circle',
  `piece_depth` enum('Hollow','Flat','nothing') NOT NULL DEFAULT 'nothing',
  `played` enum('False','True') NOT NULL DEFAULT 'False',
  PRIMARY KEY (`piece_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pieces_reload`
--

LOCK TABLES `pieces_reload` WRITE;
/*!40000 ALTER TABLE `pieces_reload` DISABLE KEYS */;
INSERT INTO `pieces_reload` VALUES ('BSCF','Brown','Short','Circle','Flat','False'),('BSCH','Brown','Short','Circle','Hollow','False'),('BSSF','Brown','Short','Square','Flat','False'),('BSSH','Brown','Short','Square','Hollow','False'),('BTCF','Brown','Tall','Circle','Flat','False'),('BTCH','Brown','Tall','Circle','Hollow','False'),('BTSF','Brown','Tall','Square','Flat','False'),('BTSH','Brown','Tall','Square','Hollow','False'),('WSCF','White','Short','Circle','Flat','False'),('WSCH','White','Short','Circle','Hollow','False'),('WSSF','White','Short','Square','Flat','False'),('WSSH','White','Short','Square','Hollow','False'),('WTCF','White','Tall','Circle','Flat','False'),('WTCH','White','Tall','Circle','Hollow','False'),('WTSF','White','Tall','Square','Flat','False'),('WTSH','White','Tall','Square','Hollow','False');
/*!40000 ALTER TABLE `pieces_reload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'adise2021Quarto'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-06 17:39:07