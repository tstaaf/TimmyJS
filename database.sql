CREATE DATABASE  IF NOT EXISTS `timmyjs` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `timmyjs`;
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
INSERT INTO `actors` VALUES (1,'Emily','Blunt'),(2,'Noah','Jupe'),(3,'Tom','Hanks'),(4,'Matt','Damon'),(5,'Mark','Hamil'),(6,'Harrison','Ford'),(7,'Carrie','Fisher'),(8,'Liam','Neeson'),(9,'Jeremy','Irvine'),(10,'Emily','Watson'),(11,'Adrien','Brody'),(12,'Thomas','Kretschmann'),(13,'François','Cluzet'),(14,'Omar','Sy'),(15,'Tom','Hanks'),(16,'Robin','Wright');
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
-- Temporary view structure for view `listadventuregenre`
--

DROP TABLE IF EXISTS `listadventuregenre`;
/*!50001 DROP VIEW IF EXISTS `listadventuregenre`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listadventuregenre` AS SELECT 
 1 AS `movieName`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listallemployees`
--

DROP TABLE IF EXISTS `listallemployees`;
/*!50001 DROP VIEW IF EXISTS `listallemployees`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listallemployees` AS SELECT 
 1 AS `employeeID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Movies_rented`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listallmovies`
--

DROP TABLE IF EXISTS `listallmovies`;
/*!50001 DROP VIEW IF EXISTS `listallmovies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listallmovies` AS SELECT 
 1 AS `movieID`,
 1 AS `movieName`,
 1 AS `Year`,
 1 AS `Director`,
 1 AS `Actors`,
 1 AS `Genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listspecificgenre`
--

DROP TABLE IF EXISTS `listspecificgenre`;
/*!50001 DROP VIEW IF EXISTS `listspecificgenre`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listspecificgenre` AS SELECT 
 1 AS `movieName`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `movieoverdue`
--

DROP TABLE IF EXISTS `movieoverdue`;
/*!50001 DROP VIEW IF EXISTS `movieoverdue`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `movieoverdue` AS SELECT 
 1 AS `movieID`,
 1 AS `movieName`,
 1 AS `Customer`*/;
SET character_set_client = @saved_cs_client;

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
  `rented` tinyint(1) DEFAULT '0',
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
INSERT INTO `movies` VALUES (1,'A Quiet Place',2018,5,2,1,'2018-04-05','2018-04-09',1),(2,'Saving Private Ryan',1998,1,1,2,'2018-04-01','2018-04-05',1),(3,'Star Wars: Episode IV - A New Hope',1977,3,1,3,'2018-04-02','2018-04-06',1),(4,'Star Wars: Episode V - The Empire Strikes Back',1980,3,1,4,'2018-04-02','2018-04-06',1),(5,'Star Wars: Episode VI - Return of the Jedi',1983,NULL,1,5,NULL,NULL,0),(6,'Raiders of the Lost Ark',1981,2,2,2,'2018-03-30','2018-04-03',1),(7,'Indiana Jones and the Temple of Doom',1984,2,2,2,'2018-03-30','2018-04-03',1),(8,'Indiana Jones and the Last Crusade',1989,2,2,2,'2018-03-30','2018-04-03',1),(9,'Schindler\'s List',1993,8,2,2,'2018-04-05','2018-04-08',1),(10,'War Horse',2011,3,1,2,'2018-04-02','2018-04-06',1),(11,'The Pianist',2002,7,3,6,'2018-04-03','2018-04-07',1),(12,'Intouchables',2011,8,2,7,'2018-04-03','2018-04-07',1),(13,'Forest Gump',1994,6,3,8,'2018-04-03','2018-04-07',1);
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

--
-- Temporary view structure for view `rentalstatus`
--

DROP TABLE IF EXISTS `rentalstatus`;
/*!50001 DROP VIEW IF EXISTS `rentalstatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rentalstatus` AS SELECT 
 1 AS `movieName`,
 1 AS `employeeID`,
 1 AS `Renter`,
 1 AS `rented`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'timmyjs'
--
/*!50003 DROP PROCEDURE IF EXISTS `rent_out_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rent_out_movie`(
r_movieID INT,
r_customerID INT,
r_employeeID INT)
BEGIN

UPDATE movies m
SET m.customerID = r_customerID, m.employeeID = r_employeeID, m.rented = 1, rentDate = curdate(), returnDate = curdate() + 3
WHERE r_movieID = m.movieID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `listadventuregenre`
--

/*!50001 DROP VIEW IF EXISTS `listadventuregenre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listadventuregenre` AS select `m`.`movieName` AS `movieName`,`g`.`Name` AS `Name` from ((`movies` `m` join `movies_has_genre` `mhg` on((`m`.`movieID` = `mhg`.`movieID`))) join `genre` `g` on((`mhg`.`GenreID` = `g`.`GenreID`))) where (`g`.`Name` = 'Adventure') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listallemployees`
--

/*!50001 DROP VIEW IF EXISTS `listallemployees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listallemployees` AS select `e`.`employeeID` AS `employeeID`,`e`.`FirstName` AS `FirstName`,`e`.`LastName` AS `LastName`,count(`m`.`employeeID`) AS `Movies_rented` from (`employees` `e` left join `movies` `m` on((`m`.`employeeID` = `e`.`employeeID`))) group by `e`.`employeeID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listallmovies`
--

/*!50001 DROP VIEW IF EXISTS `listallmovies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listallmovies` AS select `m`.`movieID` AS `movieID`,`m`.`movieName` AS `movieName`,`m`.`Year` AS `Year`,group_concat(distinct `d`.`FirstName`,' ',`d`.`LastName` separator ',') AS `Director`,group_concat(distinct `a`.`FirstName`,' ',`a`.`LastName` separator ',') AS `Actors`,`g`.`Name` AS `Genre` from (((((`movies` `m` join `movies_has_actors` `mah` on((`m`.`movieID` = `mah`.`movieID`))) join `actors` `a` on((`mah`.`ActorsID` = `a`.`ActorsID`))) join `movies_has_genre` `mhg` on((`m`.`movieID` = `mhg`.`movieID`))) join `genre` `g` on((`mhg`.`GenreID` = `g`.`GenreID`))) join `directors` `d` on((`m`.`directorsID` = `d`.`DirectorsID`))) group by `m`.`movieID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listspecificgenre`
--

/*!50001 DROP VIEW IF EXISTS `listspecificgenre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listspecificgenre` AS select `m`.`movieName` AS `movieName`,`g`.`Name` AS `Name` from ((`movies` `m` join `movies_has_genre` `mhg` on((`m`.`movieID` = `mhg`.`movieID`))) join `genre` `g` on((`mhg`.`GenreID` = `g`.`GenreID`))) where (`g`.`Name` = 'Adventure') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `movieoverdue`
--

/*!50001 DROP VIEW IF EXISTS `movieoverdue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `movieoverdue` AS select `m`.`movieID` AS `movieID`,`m`.`movieName` AS `movieName`,group_concat(distinct `c`.`FirstName`,' ',`c`.`LastName` separator ',') AS `Customer` from (`movies` `m` join `customers` `c` on((`m`.`customerID` = `c`.`customerID`))) where (curdate() > `m`.`returnDate`) group by `m`.`movieID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rentalstatus`
--

/*!50001 DROP VIEW IF EXISTS `rentalstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rentalstatus` AS select `m`.`movieName` AS `movieName`,`e`.`employeeID` AS `employeeID`, `e`.`FirstName` AS `Employee`,group_concat(`c`.`FirstName`,' ',`c`.`LastName` separator ',') AS `Renter`,`m`.`rented` AS `rented` from ((`movies` `m` join `customers` `c` on((`c`.`customerID` = `m`.`customerID`))) join `employees` `e` on((`e`.`employeeID` = `m`.`employeeID`))) group by `m`.`movieName` having (`m`.`rented` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-05 14:12:33
