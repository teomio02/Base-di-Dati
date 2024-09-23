-- MySQL dump 10.13  Distrib 9.0.1, for macos14.4 (x86_64)
--
-- Host: localhost    Database: Farmacia
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Current Database: `Farmacia`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Farmacia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Farmacia`;

--
-- Table structure for table `Cassetti`
--

DROP TABLE IF EXISTS `Cassetti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cassetti` (
  `Scaf_num` int NOT NULL,
  `Cas_num` int NOT NULL,
  PRIMARY KEY (`Scaf_num`,`Cas_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cassetti`
--

LOCK TABLES `Cassetti` WRITE;
/*!40000 ALTER TABLE `Cassetti` DISABLE KEYS */;
INSERT INTO `Cassetti` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(5,13),(5,14),(5,15),(5,16),(5,17),(5,18),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(7,13),(7,14),(7,15),(7,16),(7,17),(7,18),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,9),(8,10),(8,11),(8,12),(8,13),(8,14),(8,15),(8,16),(8,17),(8,18),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(9,8),(9,9),(9,10),(9,11),(9,12),(9,13),(9,14),(9,15),(9,16),(9,17),(9,18),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,9),(10,10),(10,11),(10,12),(10,13),(10,14),(10,15),(10,16),(10,17),(10,18),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(11,8),(11,9),(11,10),(11,11),(11,12),(11,13),(11,14),(11,15),(11,16),(11,17),(11,18),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7),(12,8),(12,9),(12,10),(12,11),(12,12),(12,13),(12,14),(12,15),(12,16),(12,17),(12,18),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(13,7),(13,8),(13,9),(13,10),(13,11),(13,12),(13,13),(13,14),(13,15),(13,16),(13,17),(13,18),(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(14,7),(14,8),(14,9),(14,10),(14,11),(14,12),(14,13),(14,14),(14,15),(14,16),(14,17),(14,18),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(15,7),(15,8),(15,9),(15,10),(15,11),(15,12),(15,13),(15,14),(15,15),(15,16),(15,17),(15,18),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(16,7),(16,8),(16,9),(16,10),(16,11),(16,12),(16,13),(16,14),(16,15),(16,16),(16,17),(16,18),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(17,7),(17,8),(17,9),(17,10),(17,11),(17,12),(17,13),(17,14),(17,15),(17,16),(17,17),(17,18),(18,1),(18,2),(18,3),(18,4),(18,5),(18,6),(18,7),(18,8),(18,9),(18,10),(18,11),(18,12),(18,13),(18,14),(18,15),(18,16),(18,17),(18,18),(19,1),(19,2),(19,3),(19,4),(19,5),(19,6),(19,7),(19,8),(19,9),(19,10),(19,11),(19,12),(19,13),(19,14),(19,15),(19,16),(19,17),(19,18),(20,1),(20,2),(20,3),(20,4),(20,5),(20,6),(20,7),(20,8),(20,9),(20,10),(20,11),(20,12),(20,13),(20,14),(20,15),(20,16),(20,17),(20,18);
/*!40000 ALTER TABLE `Cassetti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fornitori`
--

DROP TABLE IF EXISTS `Fornitori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fornitori` (
  `FName` varchar(45) NOT NULL,
  PRIMARY KEY (`FName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fornitori`
--

LOCK TABLES `Fornitori` WRITE;
/*!40000 ALTER TABLE `Fornitori` DISABLE KEYS */;
INSERT INTO `Fornitori` VALUES ('GSK'),('Haleon'),('MSD'),('Pensa'),('Tachipirina');
/*!40000 ALTER TABLE `Fornitori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Indirizzi`
--

DROP TABLE IF EXISTS `Indirizzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Indirizzi` (
  `Nazione` varchar(45) NOT NULL,
  `Citta` varchar(45) NOT NULL,
  `CAP` char(5) NOT NULL,
  `Via` varchar(45) NOT NULL,
  `Civico` varchar(45) NOT NULL,
  `Fornitore` varchar(45) NOT NULL,
  `Preferenza` int NOT NULL,
  PRIMARY KEY (`Via`,`Nazione`,`Citta`,`CAP`,`Civico`,`Fornitore`),
  KEY `fk_fornitore_idx_ind` (`Fornitore`),
  CONSTRAINT `fk_fornitore_ind` FOREIGN KEY (`Fornitore`) REFERENCES `Fornitori` (`FName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Indirizzi`
--

LOCK TABLES `Indirizzi` WRITE;
/*!40000 ALTER TABLE `Indirizzi` DISABLE KEYS */;
INSERT INTO `Indirizzi` VALUES ('Italy','Rome','00126','Via del Corso','12','Tachipirina',1),('Italy','Rome','00147','Via del Corso','47','Pensa',1),('Italy','Milan','20149','Via Monte Rosa','91','Haleon',1),('Italy','Rome','00129','Via Novara','13b','Haleon',0),('Italy','Torin','10293','Via Verdi','33','GSK',0),('Italy','Rome','00189','Via Vitorchiano','151','MSD',1),('Italy','Milan','20918','Via Zambeletti','3b','GSK',1),('Italy','Naples','00389','Viale Ungheria','21','Pensa',0);
/*!40000 ALTER TABLE `Indirizzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Locazioni`
--

DROP TABLE IF EXISTS `Locazioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Locazioni` (
  `Prodotto` varchar(45) NOT NULL,
  `Fornitore` varchar(45) NOT NULL,
  `Scaffale` int NOT NULL,
  `Cassetto` int NOT NULL,
  PRIMARY KEY (`Prodotto`,`Fornitore`),
  KEY `fk_numero_idx` (`Scaffale`,`Cassetto`),
  KEY `fk_cassetto_idx` (`Cassetto`),
  CONSTRAINT `fk_cassetto` FOREIGN KEY (`Scaffale`, `Cassetto`) REFERENCES `Cassetti` (`Scaf_num`, `Cas_num`),
  CONSTRAINT `fk_prodotto` FOREIGN KEY (`Prodotto`, `Fornitore`) REFERENCES `Prodotti` (`PName`, `Fornitore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Locazioni`
--

LOCK TABLES `Locazioni` WRITE;
/*!40000 ALTER TABLE `Locazioni` DISABLE KEYS */;
INSERT INTO `Locazioni` VALUES ('Gentalyn','MSD',3,2),('Paracetamolo','MSD',3,2),('Rinazina','Haleon',4,2),('Omeprazolo','Pensa',12,1),('Paracetamolo','Tachipirina',12,16),('Voltaren','GSK',18,17);
/*!40000 ALTER TABLE `Locazioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prodotti`
--

DROP TABLE IF EXISTS `Prodotti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Prodotti` (
  `PName` varchar(45) NOT NULL,
  `Fornitore` varchar(45) NOT NULL,
  `Ricetta` int NOT NULL,
  `Quantita` int NOT NULL,
  `Prezzo` float NOT NULL,
  `Mutuabilita` int NOT NULL,
  PRIMARY KEY (`PName`,`Fornitore`),
  KEY `fk_fonritore_idx` (`Fornitore`),
  CONSTRAINT `fk_fonritore` FOREIGN KEY (`Fornitore`) REFERENCES `Fornitori` (`FName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prodotti`
--

LOCK TABLES `Prodotti` WRITE;
/*!40000 ALTER TABLE `Prodotti` DISABLE KEYS */;
INSERT INTO `Prodotti` VALUES ('Gentalyn','MSD',0,2,8.9,1),('Omeprazolo','Pensa',1,0,7.9,1),('Paracetamolo','MSD',0,1,10.9,0),('Paracetamolo','Tachipirina',0,1,11.9,0),('Rinazina','Haleon',0,1,10.9,0),('Voltaren','GSK',0,1,4.6,0);
/*!40000 ALTER TABLE `Prodotti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recapiti`
--

DROP TABLE IF EXISTS `Recapiti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recapiti` (
  `Recapito` varchar(45) NOT NULL,
  `Fornitore` varchar(45) NOT NULL,
  `Preferenza` int NOT NULL,
  `Tipologia` enum('Mail','Fax','Tel') NOT NULL,
  PRIMARY KEY (`Recapito`,`Fornitore`),
  KEY `fk_fornitore_idx_rec` (`Fornitore`),
  CONSTRAINT `fk_fornitore_rec` FOREIGN KEY (`Fornitore`) REFERENCES `Fornitori` (`FName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recapiti`
--

LOCK TABLES `Recapiti` WRITE;
/*!40000 ALTER TABLE `Recapiti` DISABLE KEYS */;
INSERT INTO `Recapiti` VALUES ('+39 02 8743290','Haleon',0,'Fax'),('+39 02 8743299','Haleon',0,'Tel'),('+39 03 8274655','GSK',0,'Tel'),('+39 06 2304756','Tachipirina',1,'Tel'),('+39 06 8277820','MSD',1,'Tel'),('+39 333 7583391','GSK',0,'Tel'),('gsk@outlook.com','GSK',1,'Mail'),('haleon@gmail.com','Haleon',1,'Mail'),('msd@gmail.com','MSD',0,'Mail'),('pensa@gmail.com','Pensa',1,'Mail'),('tachipirina@outlook.it','Tachipirina',0,'Mail');
/*!40000 ALTER TABLE `Recapiti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ScatoleMedicinaleDisponibili`
--

DROP TABLE IF EXISTS `ScatoleMedicinaleDisponibili`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ScatoleMedicinaleDisponibili` (
  `idScatola` int NOT NULL,
  `Prodotto` varchar(45) NOT NULL,
  `Fornitore` varchar(45) NOT NULL,
  `Scadenza` date NOT NULL,
  PRIMARY KEY (`idScatola`,`Prodotto`,`Fornitore`),
  KEY `fk_prodotto_sm_idx` (`Prodotto`,`Fornitore`),
  CONSTRAINT `fk_prodotto_sm` FOREIGN KEY (`Prodotto`, `Fornitore`) REFERENCES `Prodotti` (`PName`, `Fornitore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ScatoleMedicinaleDisponibili`
--

LOCK TABLES `ScatoleMedicinaleDisponibili` WRITE;
/*!40000 ALTER TABLE `ScatoleMedicinaleDisponibili` DISABLE KEYS */;
INSERT INTO `ScatoleMedicinaleDisponibili` VALUES (34,'Paracetamolo','Tachipirina','2025-12-26'),(99,'Voltaren','GSK','2025-03-22'),(111,'Paracetamolo','MSD','2026-02-25'),(121,'Gentalyn','MSD','2024-09-20'),(124,'Rinazina','Haleon','2024-09-19'),(230,'Gentalyn','MSD','2026-02-28');
/*!40000 ALTER TABLE `ScatoleMedicinaleDisponibili` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ScatoleMedicinaleVendute`
--

DROP TABLE IF EXISTS `ScatoleMedicinaleVendute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ScatoleMedicinaleVendute` (
  `idScatola` int NOT NULL,
  `Prodotto` varchar(45) NOT NULL,
  `Fornitore` varchar(45) NOT NULL,
  `CF` char(16) NOT NULL,
  `Importo` float NOT NULL,
  `Data` date NOT NULL,
  PRIMARY KEY (`Prodotto`,`Fornitore`,`idScatola`),
  CONSTRAINT `fk_prodotto_smv` FOREIGN KEY (`Prodotto`, `Fornitore`) REFERENCES `Prodotti` (`PName`, `Fornitore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ScatoleMedicinaleVendute`
--

LOCK TABLES `ScatoleMedicinaleVendute` WRITE;
/*!40000 ALTER TABLE `ScatoleMedicinaleVendute` DISABLE KEYS */;
INSERT INTO `ScatoleMedicinaleVendute` VALUES (20,'Gentalyn','MSD','MZZTEO02L02H501K',3,'2024-09-11'),(21,'Gentalyn','MSD','MZZTEO02L02H501K',3,'2024-09-11'),(25,'Gentalyn','MSD','MZZTEO02L02H501K',3,'2024-09-11'),(129,'Gentalyn','MSD','MZZTEO02L02H501K',7.9,'2024-09-11'),(130,'Gentalyn','MSD','MZZTEO03L02H501K',6,'2024-09-11'),(199,'Gentalyn','MSD','MZZTEO02L02H501K',3,'2024-09-11'),(200,'Gentalyn','MSD','MZZTEO02L02H501K',3,'2024-09-11'),(304,'Gentalyn','MSD','MZZTEO02L02H501K',3,'2024-09-11'),(1111,'Gentalyn','MSD','MZZTEO02L02H501K',3,'2024-09-11'),(99999,'Gentalyn','MSD','MZZTEO02L02H501K',3,'2024-09-11');
/*!40000 ALTER TABLE `ScatoleMedicinaleVendute` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Check_SaleAmount` BEFORE INSERT ON `scatolemedicinalevendute` FOR EACH ROW BEGIN
	declare var_Prezzo float;
    
	select `Prezzo` 
    from Prodotti
    where `Prodotti`.`Fornitore`=new.`Fornitore` and `Prodotti`.`PName`=new.`Prodotto`
	into var_Prezzo;
	if var_Prezzo < new.`Importo` then
		signal sqlstate '45001' set message_text = 'Importo ridotto maggiore del prezzo effettivo';
	end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `UsiPossibili`
--

DROP TABLE IF EXISTS `UsiPossibili`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsiPossibili` (
  `Fornitore` varchar(45) NOT NULL,
  `Prodotto` varchar(45) NOT NULL,
  `Utilizzo` varchar(45) NOT NULL,
  PRIMARY KEY (`Fornitore`,`Prodotto`,`Utilizzo`),
  KEY `fk_prodotti_u_idx` (`Prodotto`,`Fornitore`),
  KEY `fk_utilizzi_idx` (`Utilizzo`),
  CONSTRAINT `fk_prodotti_u` FOREIGN KEY (`Prodotto`, `Fornitore`) REFERENCES `Prodotti` (`PName`, `Fornitore`),
  CONSTRAINT `fk_utilizzi` FOREIGN KEY (`Utilizzo`) REFERENCES `Utilizzi` (`UName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsiPossibili`
--

LOCK TABLES `UsiPossibili` WRITE;
/*!40000 ALTER TABLE `UsiPossibili` DISABLE KEYS */;
INSERT INTO `UsiPossibili` VALUES ('MSD','Paracetamolo','Antinfiammatorio'),('Tachipirina','Paracetamolo','Antinfiammatorio'),('MSD','Paracetamolo','Febbre'),('Tachipirina','Paracetamolo','Febbre'),('GSK','Voltaren','Infiammazione Articolare'),('MSD','Gentalyn','Infiammazione Cutanea'),('Haleon','Rinazina','Infiammazione della gola'),('GSK','Voltaren','Infiammazione Muscolare'),('MSD','Gentalyn','Irritazione Cutanea'),('Pensa','Omeprazolo','Protettore Gastrico'),('Haleon','Rinazina','Raffreddore');
/*!40000 ALTER TABLE `UsiPossibili` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Utenti`
--

DROP TABLE IF EXISTS `Utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Utenti` (
  `Username` varchar(45) NOT NULL,
  `pswrd` char(32) NOT NULL,
  `Ruolo` enum('PA','PM') NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Utenti`
--

LOCK TABLES `Utenti` WRITE;
/*!40000 ALTER TABLE `Utenti` DISABLE KEYS */;
INSERT INTO `Utenti` VALUES ('leo','0f759dd1ea6c4c76cedc299039ca4f23','PA'),('teo','e827aa1ed78e96a113182dce12143f9f','PM');
/*!40000 ALTER TABLE `Utenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Utilizzi`
--

DROP TABLE IF EXISTS `Utilizzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Utilizzi` (
  `UName` varchar(45) NOT NULL,
  PRIMARY KEY (`UName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Utilizzi`
--

LOCK TABLES `Utilizzi` WRITE;
/*!40000 ALTER TABLE `Utilizzi` DISABLE KEYS */;
INSERT INTO `Utilizzi` VALUES ('Antinfiammatorio'),('Febbre'),('Infiammazione Articolare'),('Infiammazione Cutanea'),('Infiammazione della gola'),('Infiammazione Muscolare'),('Irritazione Cutanea'),('Nausea'),('Protettore Gastrico'),('Raffreddore');
/*!40000 ALTER TABLE `Utilizzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Farmacia'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `cleanup` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `cleanup` ON SCHEDULE EVERY 1 MONTH STARTS '2024-09-10 16:44:16' ON COMPLETION NOT PRESERVE ENABLE DO delete from ScatoleMedicinaleVendute where datediff(current_date(),date(Data))>3650 */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'Farmacia'
--
/*!50003 DROP PROCEDURE IF EXISTS `AggiungiFornitore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AggiungiFornitore`(in var_FName varchar(45))
BEGIN
		declare exit handler for sqlexception
	begin	
		rollback;
		resignal;
	end;
		set transaction isolation level read uncommitted;
	start transaction;
        insert into `Farmacia`.`Fornitori` (`FName`) values (`var_FName`);
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AggiungiIndirizzo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AggiungiIndirizzo`(in var_Nazione varchar(45), in var_Citta varchar(45), in var_CAP char(5), in var_Via varchar(45), in var_Civico varchar(45), in var_Fornitore varchar(45), in var_Preferenza int)
BEGIN
		declare exit handler for sqlexception
	begin	
		rollback;
		resignal;
	end;
		set transaction isolation level read uncommitted;
	start transaction;
		insert into `Farmacia`.`Indirizzi`(`Nazione`,`Citta`,`CAP`,`Via`,`Civico`,`Fornitore`,`Preferenza`) values (`var_Nazione`,`var_Citta`,`var_CAP`,`var_Via`,`var_Civico`,`var_Fornitore`,`var_Preferenza`);
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AggiungiProdotto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AggiungiProdotto`(in var_PName varchar(45), in var_Fornitore varchar(45), in var_Ricetta bool, in var_Prezzo float, in var_Mutuabilita bool, in var_Scaffale integer, in var_Cassetto integer )
BEGIN
		declare exit handler for sqlexception
	begin	
		rollback;
		resignal;
	end;
		set transaction isolation level read uncommitted;
	start transaction;
        insert into `Farmacia`.`Prodotti` (`PName`, `Fornitore`, `Ricetta`, `Quantita`, `Prezzo`, `Mutuabilita`) values (`var_PName`, `var_Fornitore`, `var_Ricetta`, 0, `var_Prezzo`, `var_Mutuabilita`);
        insert into `Farmacia`.`Locazioni` (`Prodotto`,`Fornitore`,`Scaffale`,`Cassetto`) values (`var_PName`,`var_Fornitore`,`var_Scaffale`,`var_Cassetto`);
        commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AggiungiRecapito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AggiungiRecapito`(in var_Recapito varchar(45), in var_Fornitore varchar(45), in var_Preferenza int, in var_Tipologia enum('Mail','Fax','Tel'))
BEGIN
		declare exit handler for sqlexception
	begin	
		rollback;
		resignal;
	end;
		set transaction isolation level read uncommitted;
	start transaction;
		insert into `Farmacia`.`Recapiti`(`Recapito`,`Fornitore`,`Preferenza`,`Tipologia`) values (`var_Recapito`,`var_Fornitore`,`var_Preferenza`,`var_Tipologia`);
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AggiungiScatolaMedicinale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AggiungiScatolaMedicinale`(in var_idScatola integer, in var_Prodotto varchar(45), in var_Fornitore varchar(45), in var_Scadenza date)
BEGIN
		declare exit handler for sqlexception
	begin	
		rollback;
		resignal;
	end;
		set transaction isolation level read committed;
	start transaction;
		insert into `Farmacia`.`ScatoleMedicinaleDisponibili` (`idScatola`, `Prodotto`, `Fornitore`, `Scadenza`) values (`var_idScatola`, `var_Prodotto`, `var_Fornitore`, `var_Scadenza`);
        update `Farmacia`.`Prodotti` set Quantita=Quantita+1 where PName=`var_Prodotto` and Fornitore=`var_Fornitore`; 
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AggiungiUtilizzo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AggiungiUtilizzo`(in var_Fornitore varchar(45), in var_Prodotto varchar(45), in var_Utilizzo varchar(45))
BEGIN
		declare exit handler for sqlexception
	begin	
		rollback;
		resignal;
	end;
		set transaction isolation level read committed;
	start transaction;
		if (select `UName` from `Farmacia`.`Utilizzi` where `UName`=`var_Utilizzo`) is not null then
			insert into `Farmacia`.`UsiPossibili` (`Fornitore`, `Prodotto`, `Utilizzo`) values (`var_Fornitore`, `var_Prodotto`, `var_Utilizzo`);
        else
			insert into `Farmacia`.`Utilizzi` (`UName`) values (`var_Utilizzo`);
			insert into `Farmacia`.`UsiPossibili` (`Fornitore`, `Prodotto`, `Utilizzo`) values (`var_Fornitore`, `var_Prodotto`, `var_Utilizzo`);
		end if;
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DismissioneScatole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DismissioneScatole`(in var_idScatola int, in var_Prodotto varchar(45), in var_Fornitore varchar(45))
BEGIN
	declare exit handler for sqlexception
	begin	
		rollback;
		resignal;
	end;
		set transaction isolation level read committed;
	start transaction;
		delete from ScatoleMedicinaleDisponibili where idScatola=var_idScatola and Prodotto=var_Prodotto and Fornitore=var_Fornitore;
        if (select row_count()=0) then
			signal sqlstate '45001' set message_text = 'Scatola non presente';
		end if;
        update `Farmacia`.`Prodotti` set Quantita=Quantita-1 where PName=`var_Prodotto` and Fornitore=`var_Fornitore`; 
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(in var_username varchar(30), in var_pass varchar(32), out var_role int)
BEGIN
    declare var_user_role enum('PA', 'PM');
    
    select Ruolo into var_user_role 
    from Utenti 
    where Username = var_username and pswrd = MD5(var_pass);
    
    if var_user_role = 'PA' then
        set var_role = 1;
    elseif var_user_role = 'PM' then
        set var_role = 2;
    else
        set var_role = 3;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportGiacenza` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ReportGiacenza`()
BEGIN
		declare exit handler for sqlexception
	begin
		rollback;
		resignal;
	end;
		set transaction isolation level read committed;
    start transaction;
		select PName, Prodotti.Fornitore, Scaffale, Cassetto, Quantita 
        from Prodotti, Locazioni
        where Prodotti.PName=Locazioni.Prodotto and Prodotti.Fornitore=Locazioni.Fornitore;
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportScadenze` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ReportScadenze`()
BEGIN
	declare week_start date;
    declare exit handler for sqlexception
	begin	
		rollback;
		resignal;
	end;
		set transaction isolation level read committed;
	start transaction;
		set week_start=CURDATE();
		select idScatola, ScatoleMedicinaleDisponibili.Prodotto, ScatoleMedicinaleDisponibili.Fornitore, Scadenza, Scaffale, Cassetto
		from Locazioni join ScatoleMedicinaleDisponibili
		where Locazioni.Prodotto=ScatoleMedicinaleDisponibili.Prodotto and Locazioni.Fornitore=ScatoleMedicinaleDisponibili.Fornitore and DATEDIFF(Scadenza,week_start)<=7;
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Vendita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Vendita`(in var_idScatola int, in var_Prodotto varchar(45), in var_Fornitore varchar(45), in var_CF char(16), in var_Importo float, in var_Data date)
BEGIN
		declare var_count int;
		declare exit handler for sqlexception
	begin	
		rollback;
		resignal;
	end;
		set transaction isolation level repeatable read;
	start transaction;
		delete from ScatoleMedicinaleDisponibili where idScatola=`var_idScatola` and Prodotto=`var_Prodotto` and Fornitore=`var_Fornitore`;
		if (select row_count()=0) then
			signal sqlstate '45001' set message_text = 'Scatola non presente';
		end if;
		if (select mutuabilita from Prodotti where PName=`var_Prodotto` and Fornitore=`var_Fornitore`)=1 and var_CF is not null then
			insert into `Farmacia`.`ScatoleMedicinaleVendute` (`idScatola`,`Prodotto`,`Fornitore`,`CF`,`Importo`,`Data`) values (`var_idScatola`,`var_Prodotto`,`var_Fornitore`,`var_CF`,`var_Importo`,`var_Data`);
		end if;
			update `Farmacia`.`Prodotti` set Quantita=Quantita-1 where PName=`var_Prodotto` and Fornitore=`var_Fornitore`;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 18:22:18
