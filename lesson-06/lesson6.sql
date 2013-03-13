use rcarter;
-- MySQL dump 10.13  Distrib 5.1.34, for apple-darwin9.5.0 (i386)
--
-- Host: student.santarosa.edu    Database: rcarter
-- ------------------------------------------------------
-- Server version	5.0.95

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracks` (
  `idtracks` int(11) NOT NULL auto_increment,
  `albums_idalbums` int(11) NOT NULL,
  `track` varchar(45) default NULL,
  PRIMARY KEY  (`idtracks`),
  KEY `fk_tracks_albums1` (`albums_idalbums`),
  CONSTRAINT `fk_tracks_albums1` FOREIGN KEY (`albums_idalbums`) REFERENCES `albums` (`idalbums`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
INSERT INTO `tracks` VALUES (1,1,'So What'),(2,1,'Freddie Freeloader'),(3,1,'Blue in Green'),(4,1,'All Blues'),(5,1,'Flamenco Sketches'),(6,2,'Giant Steps'),(7,2,'Cousin Mary'),(8,2,'Countdown'),(9,2,'Spiral'),(10,2,'Syeeda\'s Song Flute'),(11,2,'Naima'),(12,2,'Mr P.C.'),(13,3,'Magical Mystery Tour'),(14,3,'The Fool on the Hill'),(15,3,'Flying'),(16,3,'Blue Jay Way'),(17,3,'Your Mother Should Know'),(18,3,'I Am The Walrus'),(19,3,'Hello, Goodbye'),(20,3,'Strawberry Fields Forever'),(21,4,'With a Little Help From my Friends'),(22,4,'Lucy in the Sky with Diamonds'),(23,4,'When I\'m Sixty-Four'),(24,4,'A Day in the Life'),(25,6,'Trumpet Overture'),(26,6,'The Hebrides'),(27,6,'Overture for Wind Instruments'),(28,7,'Stop That Train'),(29,7,'Stir It Up'),(30,7,'All Day All Night');
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `idartists` int(11) NOT NULL auto_increment,
  `genres_idgenres` int(11) NOT NULL,
  `artist` varchar(45) default NULL,
  PRIMARY KEY  (`idartists`),
  KEY `fk_artists_genres1` (`genres_idgenres`),
  CONSTRAINT `fk_artists_genres1` FOREIGN KEY (`genres_idgenres`) REFERENCES `genres` (`idgenres`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,1,'Miles Davis'),(2,1,'John Coltrane'),(3,2,'The Beatles'),(4,3,'London Symphony Orchestra'),(5,4,'Bob Marley');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `idalbums` int(11) NOT NULL auto_increment,
  `artists_idartists` int(11) NOT NULL,
  `album` varchar(45) default NULL,
  PRIMARY KEY  (`idalbums`),
  KEY `fk_albums_artists` (`artists_idartists`),
  CONSTRAINT `fk_albums_artists` FOREIGN KEY (`artists_idartists`) REFERENCES `artists` (`idartists`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,1,'Kind of Blue'),(2,2,'Giant Steps'),(3,3,'Magical Mystery Tour'),(4,3,'Sgt. Pepper'),(5,3,'Abbey Road'),(6,4,'Overtures'),(7,5,'Catch A Fire'),(8,5,'Exodus');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `idgenres` int(11) NOT NULL auto_increment,
  `genre` varchar(45) NOT NULL,
  PRIMARY KEY  (`idgenres`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--albumsalbumsalbumsalbumsalbumsalbums

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Jazz'),(2,'Rock'),(3,'Classical'),(4,'World');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-06 20:56:45