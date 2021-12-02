--
-- Table structure for table `appearances`
--

DROP TABLE IF EXISTS `appearances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `appearances` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `yearID` smallint(6) NOT NULL,
  `teamID` char(3) NOT NULL,
  `team_ID` int(11) DEFAULT NULL,
  `lgID` char(2) DEFAULT NULL,
  `playerID` varchar(9) NOT NULL,
  `G_all` smallint(6) DEFAULT NULL,
  `GS` smallint(6) DEFAULT NULL,
  `G_batting` smallint(6) DEFAULT NULL,
  `G_defense` smallint(6) DEFAULT NULL,
  `G_p` smallint(6) DEFAULT NULL,
  `G_c` smallint(6) DEFAULT NULL,
  `G_1b` smallint(6) DEFAULT NULL,
  `G_2b` smallint(6) DEFAULT NULL,
  `G_3b` smallint(6) DEFAULT NULL,
  `G_ss` smallint(6) DEFAULT NULL,
  `G_lf` smallint(6) DEFAULT NULL,
  `G_cf` smallint(6) DEFAULT NULL,
  `G_rf` smallint(6) DEFAULT NULL,
  `G_of` smallint(6) DEFAULT NULL,
  `G_dh` smallint(6) DEFAULT NULL,
  `G_ph` smallint(6) DEFAULT NULL,
  `G_pr` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `yearID` (`yearID`,`teamID`,`playerID`),
  KEY `lgID` (`lgID`),
  KEY `team_ID` (`team_ID`),
  KEY `playerID` (`playerID`),
  CONSTRAINT `appearances_ibfk_1` FOREIGN KEY (`lgID`) REFERENCES `leagues` (`lgID`),
  CONSTRAINT `appearances_ibfk_2` FOREIGN KEY (`team_ID`) REFERENCES `teams` (`ID`),
  CONSTRAINT `appearances_ibfk_3` FOREIGN KEY (`playerID`) REFERENCES `people` (`playerID`)
) ENGINE=InnoDB AUTO_INCREMENT=107358 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

