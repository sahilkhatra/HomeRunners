--
-- Table structure for table `teamshalf`
--

DROP TABLE IF EXISTS `teamshalf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teamshalf` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `yearID` smallint(6) NOT NULL,
  `lgID` char(2) NOT NULL,
  `teamID` char(3) NOT NULL,
  `team_ID` int(11) DEFAULT NULL,
  `Half` varchar(1) NOT NULL,
  `divID` char(1) DEFAULT NULL,
  `div_ID` int(11) DEFAULT NULL,
  `DivWin` varchar(1) DEFAULT NULL,
  `teamRank` smallint(6) DEFAULT NULL,
  `G` smallint(6) DEFAULT NULL,
  `W` smallint(6) DEFAULT NULL,
  `L` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `yearID` (`yearID`,`lgID`,`teamID`,`Half`),
  KEY `lgID` (`lgID`),
  KEY `div_ID` (`div_ID`),
  KEY `team_ID` (`team_ID`),
  CONSTRAINT `teamshalf_ibfk_1` FOREIGN KEY (`lgID`) REFERENCES `leagues` (`lgID`),
  CONSTRAINT `teamshalf_ibfk_2` FOREIGN KEY (`div_ID`) REFERENCES `divisions` (`ID`),
  CONSTRAINT `teamshalf_ibfk_3` FOREIGN KEY (`team_ID`) REFERENCES `teams` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamshalf`
--

LOCK TABLES `teamshalf` WRITE;
/*!40000 ALTER TABLE `teamshalf` DISABLE KEYS */;
INSERT INTO `teamshalf` VALUES (1,1981,'NL','ATL',1814,'1','W',5,'N',4,54,25,29),(2,1981,'NL','ATL',1814,'2','W',5,'N',5,52,25,27),(3,1981,'AL','BAL',1815,'1','E',1,'N',2,54,31,23),(4,1981,'AL','BAL',1815,'2','E',1,'N',4,51,28,23),(5,1981,'AL','BOS',1816,'1','E',1,'N',5,56,30,26),(6,1981,'AL','BOS',1816,'2','E',1,'N',2,52,29,23),(7,1981,'AL','CAL',1817,'1','W',2,'N',4,60,31,29),(8,1981,'AL','CAL',1817,'2','W',2,'N',6,50,20,30),(9,1981,'AL','CHA',1818,'1','W',2,'N',3,53,31,22),(10,1981,'AL','CHA',1818,'2','W',2,'N',6,53,23,30),(11,1981,'NL','CHN',1819,'1','E',4,'N',6,52,15,37),(12,1981,'NL','CHN',1819,'2','E',4,'N',5,51,23,28),(13,1981,'NL','CIN',1820,'1','W',5,'N',2,56,35,21),(14,1981,'NL','CIN',1820,'2','W',5,'N',2,52,31,21),(15,1981,'AL','CLE',1821,'1','E',1,'N',6,50,26,24),(16,1981,'AL','CLE',1821,'2','E',1,'N',5,53,26,27),(17,1981,'AL','DET',1822,'1','E',1,'N',4,57,31,26),(18,1981,'AL','DET',1822,'2','E',1,'N',2,52,29,23),(19,1981,'NL','HOU',1823,'1','W',5,'N',3,57,28,29),(20,1981,'NL','HOU',1823,'2','W',5,'N',1,53,33,20),(21,1981,'AL','KCA',1824,'1','W',2,'N',5,50,20,30),(22,1981,'AL','KCA',1824,'2','W',2,'N',1,53,30,23),(23,1981,'NL','LAN',1825,'1','W',5,'N',1,57,36,21),(24,1981,'NL','LAN',1825,'2','W',5,'N',4,53,27,26),(25,1981,'AL','MIN',1826,'1','W',2,'N',7,56,17,39),(26,1981,'AL','MIN',1826,'2','W',2,'N',4,53,24,29),(27,1981,'AL','ML4',1827,'1','E',1,'N',3,56,31,25),(28,1981,'AL','ML4',1827,'2','E',1,'N',1,53,31,22),(29,1981,'NL','MON',1828,'1','E',4,'N',3,55,30,25),(30,1981,'NL','MON',1828,'2','E',4,'N',1,53,30,23),(31,1981,'AL','NYA',1829,'1','E',1,'N',1,56,34,22),(32,1981,'AL','NYA',1829,'2','E',1,'N',5,51,25,26),(33,1981,'NL','NYN',1830,'1','E',4,'N',5,51,17,34),(34,1981,'NL','NYN',1830,'2','E',4,'N',4,52,24,28),(35,1981,'AL','OAK',1831,'1','W',2,'N',1,60,37,23),(36,1981,'AL','OAK',1831,'2','W',2,'N',2,49,27,22),(37,1981,'NL','PHI',1832,'1','E',4,'N',1,55,34,21),(38,1981,'NL','PHI',1832,'2','E',4,'N',3,52,25,27),(39,1981,'NL','PIT',1833,'1','E',4,'N',4,48,25,23),(40,1981,'NL','PIT',1833,'2','E',4,'N',6,54,21,33),(41,1981,'NL','SDN',1834,'1','W',5,'N',6,56,23,33),(42,1981,'NL','SDN',1834,'2','W',5,'N',6,54,18,36),(43,1981,'AL','SEA',1835,'1','W',2,'N',6,57,21,36),(44,1981,'AL','SEA',1835,'2','W',2,'N',5,52,23,29),(45,1981,'NL','SFN',1836,'1','W',5,'N',5,59,27,32),(46,1981,'NL','SFN',1836,'2','W',5,'N',3,52,29,23),(47,1981,'NL','SLN',1837,'1','E',4,'N',2,50,30,20),(48,1981,'NL','SLN',1837,'2','E',4,'N',2,52,29,23),(49,1981,'AL','TEX',1838,'1','W',2,'N',2,55,33,22),(50,1981,'AL','TEX',1838,'2','W',2,'N',3,50,24,26),(51,1981,'AL','TOR',1839,'1','E',1,'N',7,58,16,42),(52,1981,'AL','TOR',1839,'2','E',1,'N',6,48,21,27);
/*!40000 ALTER TABLE `teamshalf` ENABLE KEYS */;
UNLOCK TABLES;