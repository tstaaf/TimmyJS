-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: timmyjs
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `ActorsID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ActorsID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Emily','Blunt'),(2,'Noah','Jupe'),(3,'Tom','Hanks'),(4,'Matt','Damon'),(5,'Mark','Hamil'),(6,'Harrison','Ford'),(7,'Carrie','Fisher'),(8,'Liam','Neeson'),(9,'Jeremy','Irvine'),(10,'Emily','Watson'),(11,'Adrien','Brody'),(12,'Thomas','Kretschmann'),(13,' François','Cluzet'),(14,'Omar','Sy'),(15,'Tom','Hanks'),(16,'Robin','Wright');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `LastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Address` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Tomas','Thorell','Björkekärr 14'),(2,'Greger','Vesterberg','Stuverum 4'),(3,'Sonny','Fält','Lundsbo 1'),(4,'Ronnie','Blomgren','Ljungsdal 3'),(5,'Rita','Stark','Smala gränd 23'),(6,'Ella','Stålnacke','Ålängesvägen 27'),(7,'Bengt-Olof','Ulander','Erstad Svansgård'),(8,'Charlotta','Sundberg','Hasslösa Rasegården'),(9,'Per','Hurtig','Krokslättsgatan 19'),(10,'Carita','Fredin','Josvägen 33');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `DirectorsID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DirectorsID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'John','Krasinski'),(2,'Steven','Spielberg'),(3,'George','Lucas'),(4,'Irvin','Kershner'),(5,'Richard','Marquand'),(6,'Roman','Polanski'),(7,'Olivier','Nakache'),(8,'Robert','Zemeckis');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `LastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Max','Nilsson'),(2,'Tom','Nilsson'),(3,'Julia','Lindell');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `GenreID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GenreID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Thriller'),(2,'Drama'),(3,'Adventure'),(4,'Comedy');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movieID` int(11) NOT NULL AUTO_INCREMENT,
  `movieName` varchar(50) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `employeeID` int(11) DEFAULT NULL,
  `directorsID` int(11) DEFAULT NULL,
  `rentDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `rented` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`movieID`),
  KEY `fk_movies_customers1_idx` (`customerID`),
  KEY `fk_movies_employees1_idx` (`employeeID`),
  KEY `fk_movies_Directors1_idx` (`directorsID`),
  CONSTRAINT `fk_movies_Directors1` FOREIGN KEY (`directorsID`) REFERENCES `directors` (`DirectorsID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_customers1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_employees1` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'A Quiet Place',2018,NULL,NULL,1,NULL,NULL,0),(2,'Saving Private Ryan',1998,NULL,NULL,2,NULL,NULL,0),(3,'Star Wars: Episode IV - A New Hope',1977,NULL,NULL,3,NULL,NULL,0),(4,'Star Wars: Episode V - The Empire Strikes Back',1980,NULL,NULL,4,NULL,NULL,0),(5,'Star Wars: Episode VI - Return of the Jedi',1983,NULL,NULL,5,NULL,NULL,0),(6,'Raiders of the Lost Ark',1981,NULL,NULL,2,NULL,NULL,0),(7,'Indiana Jones and the Temple of Doom',1984,NULL,NULL,2,NULL,NULL,0),(8,'Indiana Jones and the Last Crusade',1989,NULL,NULL,2,NULL,NULL,0),(9,'Schindler\'s List',1993,NULL,NULL,2,NULL,NULL,0),(10,'War Horse',2011,NULL,NULL,2,NULL,NULL,0),(11,'The Pianist',2002,NULL,NULL,6,NULL,NULL,0),(12,'Intouchables',2011,NULL,NULL,7,NULL,NULL,0),(13,'Forest Gump',1994,NULL,NULL,8,NULL,NULL,0);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_actors`
--

DROP TABLE IF EXISTS `movies_has_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_has_actors` (
  `movieID` int(11) NOT NULL,
  `ActorsID` int(11) NOT NULL,
  PRIMARY KEY (`movieID`,`ActorsID`),
  KEY `fk_movies_has_Actors_Actors1_idx` (`ActorsID`),
  KEY `fk_movies_has_Actors_movies1_idx` (`movieID`),
  CONSTRAINT `fk_movies_has_Actors_Actors1` FOREIGN KEY (`ActorsID`) REFERENCES `actors` (`ActorsID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_Actors_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_actors`
--

LOCK TABLES `movies_has_actors` WRITE;
/*!40000 ALTER TABLE `movies_has_actors` DISABLE KEYS */;
INSERT INTO `movies_has_actors` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(4,5),(5,5),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(3,7),(4,7),(5,7),(9,8),(10,9),(10,10),(11,11),(11,12),(12,13),(12,14),(13,15),(13,16);
/*!40000 ALTER TABLE `movies_has_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_genre`
--

DROP TABLE IF EXISTS `movies_has_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_has_genre` (
  `movieID` int(11) NOT NULL,
  `GenreID` int(11) NOT NULL,
  PRIMARY KEY (`movieID`,`GenreID`),
  KEY `fk_movies_has_Genre_Genre1_idx` (`GenreID`),
  KEY `fk_movies_has_Genre_movies1_idx` (`movieID`),
  CONSTRAINT `fk_movies_has_Genre_Genre1` FOREIGN KEY (`GenreID`) REFERENCES `genre` (`GenreID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_Genre_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_genre`
--

LOCK TABLES `movies_has_genre` WRITE;
/*!40000 ALTER TABLE `movies_has_genre` DISABLE KEYS */;
INSERT INTO `movies_has_genre` VALUES (1,1),(2,2),(9,2),(10,2),(11,2),(12,2),(13,2),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(12,4);
/*!40000 ALTER TABLE `movies_has_genre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-03 13:26:23
