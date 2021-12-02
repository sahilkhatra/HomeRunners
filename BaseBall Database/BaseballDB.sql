CREATE DATABASE  IF NOT EXISTS `lahmansbaseballdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `lahmansbaseballdb`;

/* DROP TABLES */
DROP TABLE IF EXISTS seriespost;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS pitchingpost;
DROP TABLE IF EXISTS pitching;
DROP TABLE IF EXISTS managershalf;
DROP TABLE IF EXISTS managers;
DROP TABLE IF EXISTS homegames;
DROP TABLE IF EXISTS parks;
DROP TABLE IF EXISTS halloffame;
DROP TABLE IF EXISTS fieldingpost;
DROP TABLE IF EXISTS fieldingofsplit;
DROP TABLE IF EXISTS fieldingof;
DROP TABLE IF EXISTS fielding;
DROP TABLE IF EXISTS collegeplaying;
DROP TABLE IF EXISTS schools;
DROP TABLE IF EXISTS battingpost;
DROP TABLE IF EXISTS batting;
DROP TABLE IF EXISTS awardsshareplayers;
DROP TABLE IF EXISTS awardssharemanagers;
DROP TABLE IF EXISTS awardsplayers;
DROP TABLE IF EXISTS awardsmanagers;
DROP TABLE IF EXISTS appearances;
DROP TABLE IF EXISTS allstarfull;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS teamshalf;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS teamsfranchises;
DROP TABLE IF EXISTS divisions;
DROP TABLE IF EXISTS leagues;

 SET NAMES utf8 ;
 
 --
-- Table structure for table `allstarfull`
--

DROP TABLE IF EXISTS `leagues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `leagues` (
  `lgID` char(2) NOT NULL,
  `league` varchar(50) NOT NULL,
  `active` char(1) NOT NULL,
  PRIMARY KEY (`lgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leagues`
--

LOCK TABLES `leagues` WRITE;
/*!40000 ALTER TABLE `leagues` DISABLE KEYS */;
INSERT INTO `leagues` VALUES ('AA','American Association','N'),('AL','American League','Y'),('FL','Federal League','N'),('ML','Major League','Y'),('NA','National Association','N'),('NL','National League','Y'),('PL','Players\' League','N'),('UA','Union Association','N');
/*!40000 ALTER TABLE `leagues` ENABLE KEYS */;
UNLOCK TABLES;

select * from leagues

