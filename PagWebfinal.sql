-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: deportes
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basket` (
  `idBasket` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(75) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Direc_Principal` varchar(100) NOT NULL,
  `Direc_Secundaria` varchar(100) NOT NULL,
  PRIMARY KEY (`idBasket`),
  UNIQUE KEY `idBasket_UNIQUE` (`idBasket`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
INSERT INTO `basket` VALUES (1,'Canchas De Baske Ciud. Victoria','Canchas de Tierra','Transito magueña','Calle Oswaldo Guayasamin'),(2,'Canchas de Basket Parque Infatil','Canchas de Semento','Calle Gozales Suarez','Calle Andres Bello'),(3,'Canhas San Pedro','Canchas de Semento','Calle España','Calle Paraguay'),(4,'Canchas De Basket Colinas del Pucara','Canchs De Semento',' Calle Gonzales Suares','Calle Via A El Carmen'),(5,'Canchas De Basket La  Pradera','Canchs De Semento','Calle Pinos','Calle Arupos'),(6,'Canchas De Baske Parque Lineal','Canchas De Semento','Avd. Pio Jaramillo Alvarado','Avd. Manuel Agustin Aguirre');
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_poblacion`
--

DROP TABLE IF EXISTS `datos_poblacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_poblacion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Tipo_cancha` varchar(45) DEFAULT NULL,
  `Sector` varchar(45) DEFAULT NULL,
  `Direc_Principal` varchar(45) DEFAULT NULL,
  `Direc_Secundaria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_poblacion`
--

LOCK TABLES `datos_poblacion` WRITE;
/*!40000 ALTER TABLE `datos_poblacion` DISABLE KEYS */;
INSERT INTO `datos_poblacion` VALUES (1,'La Pradera','Multiples','La Pradera','1','2'),(3,'aaa','','','aa','aa'),(4,'Jose Alexis Car4','','','Juan de Salinas 15-35 y Sucre','Juan de Salinas 15-35 y Sucre');
/*!40000 ALTER TABLE `datos_poblacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `futbol`
--

DROP TABLE IF EXISTS `futbol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `futbol` (
  `idFutbol` int(11) NOT NULL AUTO_INCREMENT,
  `Complejo` varchar(100) DEFAULT NULL,
  `Nombre_Cancha` varchar(100) DEFAULT NULL,
  `Sector` varchar(45) DEFAULT NULL,
  `Direc_Principal` varchar(70) DEFAULT NULL,
  `Direc_Secundaria` varchar(70) DEFAULT NULL,
  `Horario` varchar(50) DEFAULT NULL,
  `Telefonos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFutbol`),
  UNIQUE KEY `idnew_table_UNIQUE` (`idFutbol`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futbol`
--

LOCK TABLES `futbol` WRITE;
/*!40000 ALTER TABLE `futbol` DISABLE KEYS */;
INSERT INTO `futbol` VALUES (1,'Planeta Futbol','Cancha Sintetica De Futbol','Amable Maria','Avd. Salvador Bustamante Celi','Calle Isla Baltra','Abierto 24 h',NULL),(2,'El fortin','Cancha Sintetica De Futbol Sala',NULL,'Luis Vlencia','M.Vaca','7:00 a 00:00',NULL),(3,'Max Futbol','Cancha Sintetica De Futbol','Las Pitas','Avd. 8 De Diciembre','Jaime Roldós Aguilera','Abierto 24 h',NULL),(4,'Don Rafa','Canchas Sintetica De Futbol','Las Pitas','Eduardo Mora Moreno','Victor Manuel Encalada','15:00 a 00:00','099 945 7417'),(5,'La Pampita','Cancha Sintetica De Futbol','','Av. Orillas de Río Zamora','Calle Santa Rosa','Abierto 24 h','(07) 261-3117'),(6,'Los Almendros','Cancha Sintetica De Futbol',NULL,'Avd. Salvador Bustamante Celi',NULL,'8:00 a 22:00','(07) 606-0834'),(7,'Canchas De Borja','Canchas Sintetica De Futbol','Belen','Calle Charity','Calle Cumanda','Abierto 24h',NULL),(8,'Shushuhuaico','Cancha Sinteica De Futbol',NULL,'Calle La Cruz ','Calle San Carlo','Abierto 24h',NULL),(9,'Gol De Oro','Canchas Sinteticas De Futbol',NULL,'Bolivar','Cariamanga','7:00 a 23:00','098 077 1455'),(10,'Colinas Del Pucara','Canchas Sinteticas','Colinas del Pucara','Gonzales Suares','Via El Carmen','Abierto 24h','099 664 0636'),(11,'Parque La Pradera','Canchas De Tierra ','La Pradera','Calle Nogalles','Calle Arupos','Abierto 24h',NULL),(12,'Parque Lineal','Cancha De Terra y Semento','Argelia','Avd. Pio Jaramillo','Avd. Manuel Agustin Aguirre','Abierto 24h',NULL),(13,'Los Geraneos','Cancha Sintetica','Argelia','18 De Noviembre','Calle Chaveles','Abierto 24h',NULL),(14,'Calva y Calva','Cancha Sinntetica','Argelia','Avd. Pio Jaramillo Alvarado','Avd. Heroes Del Cenepa','8:00 a 20:00','(07) 254-6951'),(15,'Los Operadores','Cancha De Tierra','Colinas Lojanas','Avd. Manuel Benjamin Carrion','Cornelio Saveedra','Abierto 24h',NULL);
/*!40000 ALTER TABLE `futbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parque`
--

DROP TABLE IF EXISTS `parque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parque` (
  `idParque` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Direc_Principal` varchar(45) NOT NULL,
  `Direc_Secunadaria` varchar(45) NOT NULL,
  `Horario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idParque`),
  UNIQUE KEY `idParque_UNIQUE` (`idParque`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parque`
--

LOCK TABLES `parque` WRITE;
/*!40000 ALTER TABLE `parque` DISABLE KEYS */;
INSERT INTO `parque` VALUES (1,'Parque Simon Bolivar','Avd. Universitaria','Imbabura','Abierto 24 h'),(2,'Parque Plaza De San Francisco','Bolivar','Colon','Abierto 24 h'),(3,'Parque Central','Bolivar','Jose Antonio Eguiguren','Abierto 24 h'),(4,'Parque Cristobal Ojeda Davila','24 De Mayo','Avd. Emiliano Ortega','Abierto 24 h'),(5,'Plazoleta Manuel De Jesus Lozano','Avd. Emiliano Ortega','Matilde Hidalgo De Procel',NULL),(6,'Parque Julio Hidalgo Gonzales','Avd. Manuel Agustin Aguirre','Brazil',NULL),(7,'San Pedro Parque De La Musica','Calle España','Calle Paraguay',NULL),(8,'Sendero Zamora Huayco','Avd. Rio Marañon','Calle Rio Orinico',NULL),(9,'Colinas Del Pucara','Gonzales Suares','Via A El Carmen',NULL),(10,'Parque La Pradera','Calle Nogales','Calle Arupos','Abierto 24 h'),(11,'Parque Lineal La Tebaida','Avd. Manuel Agustin Aguirre','Avd. Gobernacion De Mainas',NULL);
/*!40000 ALTER TABLE `parque` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-07  9:18:10
