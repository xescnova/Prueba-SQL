-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: vols
-- ------------------------------------------------------
-- Server version	5.1.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aeroport`
--

DROP TABLE IF EXISTS `aeroport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aeroport` (
  `NomAeroport` char(15) NOT NULL,
  `Ciutat` char(15) DEFAULT NULL,
  PRIMARY KEY (`NomAeroport`),
  KEY `Ciutat` (`Ciutat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeroport`
--

LOCK TABLES `aeroport` WRITE;
/*!40000 ALTER TABLE `aeroport` DISABLE KEYS */;
INSERT INTO `aeroport` VALUES ('Son Sant Joan','Palma'),('Gatwick','Londres'),('Heathrow','Londres'),('Halle-Leipzig','Leipzig'),('El Prat','Barcelona');
/*!40000 ALTER TABLE `aeroport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciutat`
--

DROP TABLE IF EXISTS `ciutat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciutat` (
  `Ciutat` char(15) NOT NULL,
  `Pais` char(2) DEFAULT NULL,
  PRIMARY KEY (`Ciutat`),
  KEY `Pais` (`Pais`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciutat`
--

LOCK TABLES `ciutat` WRITE;
/*!40000 ALTER TABLE `ciutat` DISABLE KEYS */;
INSERT INTO `ciutat` VALUES ('Palma','SP'),('Londres','UK'),('Leipzig','DE'),('Barcelona','SP'),('Roma','IT');
/*!40000 ALTER TABLE `ciutat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companyia`
--

DROP TABLE IF EXISTS `companyia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companyia` (
  `NomCo` char(15) NOT NULL,
  `Pais` char(2) DEFAULT NULL,
  PRIMARY KEY (`NomCo`),
  KEY `Pais` (`Pais`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companyia`
--

LOCK TABLES `companyia` WRITE;
/*!40000 ALTER TABLE `companyia` DISABLE KEYS */;
INSERT INTO `companyia` VALUES ('Iberia','SP'),('British Airways','UK'),('Air France','FR'),('AirBerlin','DE'),('Spanair','SP');
/*!40000 ALTER TABLE `companyia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `Codi` char(2) NOT NULL,
  `NomPa` char(20) DEFAULT NULL,
  PRIMARY KEY (`Codi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES ('SP','Espanya'),('UK','Regne Unit'),('FR','Franca'),('DE','Alemanya'),('IT','Italia');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passatger`
--

DROP TABLE IF EXISTS `passatger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passatger` (
  `NomPass` char(25) NOT NULL,
  `TipusID` char(3) NOT NULL,
  `ID` char(9) NOT NULL,
  `Sexe` char(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passatger`
--

LOCK TABLES `passatger` WRITE;
/*!40000 ALTER TABLE `passatger` DISABLE KEYS */;
INSERT INTO `passatger` VALUES ('Miquela Santacana','NIF','12121212A','D'),('Pep Perez','NIF','34567439C','H'),('Eugenio Ballester','Pas','Z23456K','H');
/*!40000 ALTER TABLE `passatger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_reserva`
--

DROP TABLE IF EXISTS `r_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_reserva` (
  `NumVol` int(11) NOT NULL DEFAULT '0',
  `ID` char(9) NOT NULL DEFAULT '',
  `Data` date NOT NULL,
  `Places` int(11) DEFAULT '1',
  PRIMARY KEY (`NumVol`,`ID`,`Data`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_reserva`
--

LOCK TABLES `r_reserva` WRITE;
/*!40000 ALTER TABLE `r_reserva` DISABLE KEYS */;
INSERT INTO `r_reserva` VALUES (777,'Z23456K','2009-10-26',1),(333,'34567439C','2009-11-01',2),(222,'12121212A','2009-10-16',1),(111,'12121212A','2009-10-12',3),(999,'34567439C','2009-10-15',1);
/*!40000 ALTER TABLE `r_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vol`
--

DROP TABLE IF EXISTS `vol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vol` (
  `Numvol` int(11) NOT NULL,
  `Dia` date NOT NULL,
  `Hora` time NOT NULL,
  `Capacitat` int(11) DEFAULT NULL,
  `NomCo` char(15) DEFAULT NULL,
  `NomAerOrigen` char(15) DEFAULT NULL,
  `NomAerDesti` char(15) DEFAULT NULL,
  PRIMARY KEY (`Numvol`),
  KEY `NomCo` (`NomCo`),
  KEY `NomAerOrigen` (`NomAerOrigen`),
  KEY `NomAerDesti` (`NomAerDesti`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vol`
--

LOCK TABLES `vol` WRITE;
/*!40000 ALTER TABLE `vol` DISABLE KEYS */;
INSERT INTO `vol` VALUES (999,'2009-12-10','09:00:00',99,'Spanair','El Prat','Son Sant Joan'),(888,'2009-10-10','07:30:00',123,'AirBerlin','Halle-Leipzig','Son Sant Joan'),(777,'2009-10-26','06:22:00',145,'AirBerlin','Son Sant Joan','Halle-Leipzig'),(666,'2009-10-31','09:00:00',206,'AirBerlin','Halle-Leipzig','Heathrow'),(555,'2009-10-22','07:30:00',145,'Iberia','El Prat','Gatwick'),(444,'2009-10-10','21:20:00',100,'British Airways','Gatwick','Son Sant Joan'),(333,'2009-10-14','10:00:00',220,'Iberia','Heathrow','El Prat'),(222,'2009-10-12','06:22:00',130,'Iberia','El Prat','Heathrow'),(111,'2009-10-10','05:30:00',100,'British Airways','Son Sant Joan','Gatwick');
/*!40000 ALTER TABLE `vol` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-10 15:52:36