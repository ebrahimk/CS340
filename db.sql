CREATE DATABASE  IF NOT EXISTS `typetest_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `typetest_db`;
-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: typetester2-db.mysql.database.azure.com    Database: typetest_db
-- ------------------------------------------------------
-- Server version	5.6.39.0

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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `login_ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`login_ID`),
  KEY `FK_login_user_idx` (`user_ID`),
  CONSTRAINT `FK_login_user` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,1,'2018-06-13 04:12:40'),(2,2,'2018-03-16 01:30:01'),(3,2,'2018-02-08 03:31:16'),(4,3,'2017-01-05 03:26:30'),(5,4,'2018-02-11 02:31:04'),(6,4,'2017-02-04 01:30:10'),(7,5,'2018-01-16 01:10:01'),(8,5,'2018-01-13 09:40:09'),(9,6,'2018-06-13 03:50:10'),(10,6,'2018-09-09 08:50:08'),(11,7,'2018-06-13 01:32:10'),(12,8,'2018-01-01 01:22:20'),(13,9,'2018-06-13 01:10:10'),(14,10,'2016-06-13 10:16:19'),(15,11,'2018-01-01 01:52:20'),(16,2,'2018-11-27 21:02:08'),(17,12,'2018-11-27 21:11:40'),(18,12,'2018-11-27 21:13:07'),(19,12,'2018-11-27 21:19:42'),(20,13,'2018-11-28 05:42:19'),(21,12,'2018-11-27 21:47:03'),(22,13,'2018-11-28 05:47:17'),(23,13,'2018-11-28 05:50:17'),(24,1,'2018-11-27 21:53:17'),(25,13,'2018-11-28 06:02:06'),(26,14,'2018-11-27 22:03:04'),(27,13,'2018-11-27 22:03:19'),(28,14,'2018-11-27 22:12:45'),(29,13,'2018-11-27 22:20:11'),(30,13,'2018-11-27 22:28:06');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `results` (
  `result_ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_ID` int(11) NOT NULL,
  `date_taken` datetime NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`result_ID`),
  KEY `FK_results_user_idx` (`user_ID`),
  CONSTRAINT `FK_results_user` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (22,1,'2018-06-13 03:56:10',56),(23,1,'2018-06-13 05:12:40',60),(24,1,'2018-06-12 12:14:08',45),(25,2,'2018-03-16 01:40:01',23),(26,2,'2018-02-08 03:51:16',10),(27,3,'2017-01-05 04:26:30',56),(28,4,'2017-02-04 01:36:10',72),(29,4,'2018-02-11 02:51:04',70),(30,5,'2018-01-16 01:16:01',25),(31,5,'2018-01-13 09:46:09',22),(32,5,'2018-05-07 10:56:00',32),(33,6,'2018-06-13 03:56:10',56),(34,6,'2018-09-09 08:58:08',51),(35,7,'2018-06-13 01:36:10',26),(36,8,'2017-07-02 02:07:01',32),(37,8,'2018-01-01 01:26:20',33),(38,9,'2018-06-13 01:16:10',43),(39,10,'2016-06-13 10:16:19',100),(40,10,'2018-06-12 09:26:02',96),(41,11,'2018-01-01 01:52:20',81),(42,11,'2017-12-13 03:56:10',75),(43,12,'2018-11-27 21:13:20',5),(44,12,'2018-11-27 21:19:58',2),(45,12,'2018-11-27 21:47:17',5),(46,13,'2018-11-28 05:47:32',6),(47,12,'2018-11-27 21:47:47',4),(48,12,'2018-11-27 21:48:50',3),(49,1,'2018-11-27 21:53:37',1),(50,1,'2018-11-27 21:55:37',1),(51,1,'2018-11-27 21:56:27',1),(52,1,'2018-11-27 21:58:27',1),(53,13,'2018-11-28 06:02:20',7),(54,13,'2018-11-27 22:04:23',44),(55,14,'2018-01-13 09:46:09',67),(56,14,'2018-05-07 10:56:00',70),(57,14,'2018-06-13 03:56:10',56),(58,13,'2018-11-27 22:29:12',22);
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_misspelled`
--

DROP TABLE IF EXISTS `top_misspelled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_misspelled` (
  `user_ID` int(11) NOT NULL,
  `word_ID` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`user_ID`,`word_ID`),
  KEY `FK_mis_word_idx` (`word_ID`),
  CONSTRAINT `FK_mis_user` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_mis_word` FOREIGN KEY (`word_ID`) REFERENCES `word` (`word_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_misspelled`
--

LOCK TABLES `top_misspelled` WRITE;
/*!40000 ALTER TABLE `top_misspelled` DISABLE KEYS */;
INSERT INTO `top_misspelled` VALUES (1,1,5),(1,7,3),(1,8,5),(1,10,4),(1,12,14),(1,14,1),(1,19,12),(1,21,5),(1,23,8),(1,24,9),(1,34,6),(1,42,12),(1,47,8),(1,48,5),(1,53,10),(1,54,11),(1,59,6),(1,61,7),(1,62,5),(1,65,7),(1,70,8),(1,71,4),(1,73,2),(1,76,13),(1,77,13),(1,82,11),(1,84,1),(1,85,8),(1,88,8),(1,96,8),(2,2,3),(2,9,7),(2,13,16),(2,20,11),(2,22,8),(2,25,10),(2,35,7),(2,43,13),(2,49,5),(2,55,12),(2,60,7),(2,63,5),(2,66,8),(2,72,2),(2,74,6),(2,78,14),(2,83,12),(2,86,7),(2,89,9),(2,97,9),(3,3,6),(3,10,5),(3,14,9),(3,21,13),(3,26,8),(3,36,8),(3,43,9),(3,44,1),(3,50,3),(3,56,15),(3,61,5),(3,64,9),(3,67,8),(3,73,3),(3,75,7),(3,79,14),(3,84,13),(3,87,9),(3,90,10),(3,98,10),(4,4,7),(4,15,5),(4,22,5),(4,27,7),(4,34,10),(4,37,8),(4,45,5),(4,51,3),(4,57,5),(4,62,9),(4,65,10),(4,68,9),(4,74,1),(4,76,8),(4,80,15),(4,85,5),(4,88,6),(4,91,10),(4,99,11),(5,1,2),(5,5,5),(5,12,8),(5,16,9),(5,23,9),(5,28,6),(5,35,11),(5,38,9),(5,46,5),(5,52,2),(5,58,7),(5,63,5),(5,66,11),(5,69,9),(5,75,3),(5,77,9),(5,81,15),(5,86,6),(5,89,4),(5,92,11),(6,1,1),(6,6,5),(6,13,9),(6,17,5),(6,24,10),(6,29,7),(6,36,5),(6,39,11),(6,47,5),(6,53,1),(6,59,8),(6,64,6),(6,67,12),(6,70,10),(6,76,4),(6,78,9),(6,82,16),(6,87,8),(6,90,6),(6,93,11),(7,2,7),(7,7,4),(7,14,10),(7,18,1),(7,25,14),(7,30,7),(7,37,20),(7,40,12),(7,48,4),(7,54,2),(7,60,9),(7,65,3),(7,68,13),(7,71,10),(7,77,5),(7,79,10),(7,83,17),(7,88,3),(7,91,7),(7,93,4),(8,3,8),(8,8,5),(8,15,11),(8,19,5),(8,26,3),(8,31,7),(8,38,18),(8,41,13),(8,49,3),(8,55,6),(8,61,10),(8,66,2),(8,69,14),(8,72,11),(8,78,7),(8,80,11),(8,84,2),(8,89,5),(8,92,8),(8,94,4),(9,4,9),(9,9,6),(9,16,12),(9,20,5),(9,27,2),(9,31,2),(9,39,19),(9,42,15),(9,50,7),(9,56,1),(9,62,5),(9,67,6),(9,70,16),(9,73,11),(9,79,8),(9,81,13),(9,85,1),(9,90,18),(9,93,9),(9,95,7),(10,5,9),(10,10,10),(10,17,5),(10,21,3),(10,24,1),(10,32,1),(10,40,10),(10,43,16),(10,51,8),(10,57,9),(10,63,5),(10,68,7),(10,71,4),(10,74,12),(10,80,9),(10,82,4),(10,86,4),(10,91,5),(10,94,2),(10,96,7),(11,6,2),(11,11,12),(11,18,5),(11,22,2),(11,33,5),(11,41,11),(11,44,7),(11,52,9),(11,58,7),(11,64,7),(11,69,5),(11,72,3),(11,75,12),(11,81,10),(11,83,2),(11,87,7),(11,92,6),(11,95,1),(11,97,5),(14,1,5),(14,2,3),(14,3,6),(14,4,7),(14,5,5),(14,6,5),(14,7,4),(14,8,5),(14,9,6);
/*!40000 ALTER TABLE `top_misspelled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`user_ID`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Jimmy13','abcd1234go'),(2,'Zachary17','123123123123'),(3,'Jimbo13','hellothere12'),(4,'Dallas113','Ilovedatabases12'),(5,'Tucker334','computersAreCool!'),(6,'Dale45','FixItAgainTony'),(7,'Hank9090','ThatsMyBoy!'),(8,'Boomhauer56','herbyderbyder'),(9,'Bill45','ILikeMeSomeFood'),(10,'Micheal45','paperPlanes12'),(11,'Tucker1212','myNameIsTucker12'),(12,'Kamron','123123123123'),(13,'Amedee','aaaaaaaaaa'),(14,'TAgrader14','ilovedatabases12!');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word` (
  `word_ID` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  PRIMARY KEY (`word_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` VALUES (1,'mask'),(2,'duck'),(3,'mountian'),(4,'align'),(5,'microphone'),(6,'monitor'),(7,'speak'),(8,'guitar'),(9,'trap'),(10,'olive'),(11,'return'),(12,'operate'),(13,'append'),(14,'terminate'),(15,'love'),(16,'marker'),(17,'treasure'),(18,'soil'),(19,'sensor'),(20,'electrical'),(21,'computer'),(22,'harp'),(23,'mouse'),(24,'giraffe'),(25,'bird'),(26,'mini'),(27,'blind'),(28,'continent'),(29,'ocean'),(30,'vile'),(31,'pound'),(32,'portal'),(33,'lambda'),(34,'quiet'),(35,'zero'),(36,'daze'),(37,'dazzle'),(38,'apple'),(39,'gravity'),(40,'yawn'),(41,'knew'),(42,'morose'),(43,'edible'),(44,'dance'),(45,'theatre'),(46,'acting'),(47,'market'),(48,'location'),(49,'prestige'),(50,'mellow'),(51,'mundane'),(52,'forgot'),(53,'foreman'),(54,'whip'),(55,'stone'),(56,'masonry'),(57,'brick'),(58,'aluminum'),(59,'magnetism'),(60,'drinks'),(61,'club'),(62,'concert'),(63,'leather'),(64,'jargon'),(65,'jumble'),(66,'happy'),(67,'sunshine'),(68,'shoulder'),(69,'knee'),(70,'elbow'),(71,'follicle'),(72,'rabid'),(73,'badger'),(74,'newt'),(75,'fire'),(76,'arm'),(77,'tree'),(78,'rescue'),(79,'bored'),(80,'lonely'),(81,'overwhelmed'),(82,'tired'),(83,'call'),(84,'lazy'),(85,'get'),(86,'post'),(87,'delete'),(88,'put'),(89,'heuristic'),(90,'scream'),(91,'smile'),(92,'frown'),(93,'emotion'),(94,'kinetic'),(95,'energy'),(96,'engine'),(97,'capacitor'),(98,'resistor'),(99,'program'),(100,'inductive'),(101,'hypothesis'),(102,'proof'),(103,'theory'),(104,'current'),(105,'power'),(106,'torque'),(107,'lever'),(108,'handle'),(109,'wire'),(110,'serial'),(111,'peripheral'),(112,'interface'),(113,'sync'),(114,'forrest'),(115,'ancient'),(116,'beast'),(117,'enormous'),(118,'because'),(119,'insane'),(120,'demon'),(121,'angel'),(122,'heaven'),(123,'abyss'),(124,'tunnel'),(125,'empty'),(126,'docile'),(127,'sheep'),(128,'cane'),(129,'lack'),(130,'bag'),(131,'never'),(132,'end'),(133,'income'),(134,'effort'),(135,'wooden'),(136,'objective'),(137,'cigar'),(138,'dulcimer'),(139,'snare'),(140,'fedora'),(141,'arch'),(142,'beaver'),(143,'soccer'),(144,'baseball'),(145,'lord'),(146,'kingdom'),(147,'empire'),(148,'construct'),(149,'wealth'),(150,'vast'),(151,'expansive'),(152,'metro'),(153,'train'),(154,'redemption'),(155,'bandit'),(156,'outlaw'),(157,'country'),(158,'duke'),(159,'baron');
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-27 22:30:21
