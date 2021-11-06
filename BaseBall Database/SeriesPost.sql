--
-- Table structure for table `seriespost`
--

DROP TABLE IF EXISTS `seriespost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seriespost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `yearID` smallint(6) NOT NULL,
  `round` varchar(5) NOT NULL,
  `teamIDwinner` varchar(3) DEFAULT NULL,
  `lgIDwinner` varchar(2) DEFAULT NULL,
  `team_IDwinner` int(11) DEFAULT NULL,
  `teamIDloser` varchar(3) DEFAULT NULL,
  `team_IDloser` int(11) DEFAULT NULL,
  `lgIDloser` varchar(2) DEFAULT NULL,
  `wins` smallint(6) DEFAULT NULL,
  `losses` smallint(6) DEFAULT NULL,
  `ties` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `yearID` (`yearID`,`round`),
  KEY `lgIDwinner` (`lgIDwinner`),
  KEY `lgIDloser` (`lgIDloser`),
  KEY `team_IDwinner` (`team_IDwinner`),
  KEY `team_IDloser` (`team_IDloser`),
  CONSTRAINT `seriespost_ibfk_1` FOREIGN KEY (`lgIDwinner`) REFERENCES `leagues` (`lgID`),
  CONSTRAINT `seriespost_ibfk_2` FOREIGN KEY (`lgIDloser`) REFERENCES `leagues` (`lgID`),
  CONSTRAINT `seriespost_ibfk_3` FOREIGN KEY (`team_IDwinner`) REFERENCES `teams` (`ID`),
  CONSTRAINT `seriespost_ibfk_4` FOREIGN KEY (`team_IDloser`) REFERENCES `teams` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seriespost`
--

LOCK TABLES `seriespost` WRITE;
/*!40000 ALTER TABLE `seriespost` DISABLE KEYS */;
INSERT INTO `seriespost` VALUES (1,1884,'WS','PRO','NL',NULL,'NY4',NULL,'AA',3,0,0),(2,1885,'WS','CHN','NL',NULL,'SL4',NULL,'AA',3,3,1),(3,1886,'WS','SL4','AA',NULL,'CHN',NULL,'NL',4,2,0),(4,1887,'WS','DTN','NL',NULL,'SL4',NULL,'AA',10,5,0),(5,1888,'WS','NY1','NL',NULL,'SL4',NULL,'AA',6,4,0),(6,1889,'WS','NY1','NL',NULL,'BR3',NULL,'AA',6,3,0),(7,1890,'WS','BRO','NL',NULL,'LS2',NULL,'AA',3,3,1),(8,1892,'CS','BSN','NL',NULL,'CL4',NULL,'NL',5,0,1),(9,1903,'WS','BOS','AL',NULL,'PIT',NULL,'NL',5,3,0),(10,1905,'WS','NY1','NL',NULL,'PHA',NULL,'AL',4,1,0),(11,1906,'WS','CHA','AL',NULL,'CHN',NULL,'NL',4,2,0),(12,1907,'WS','CHN','NL',NULL,'DET',NULL,'AL',4,0,0),(13,1908,'WS','CHN','NL',NULL,'DET',NULL,'AL',4,1,0),(14,1909,'WS','PIT','NL',NULL,'DET',NULL,'AL',4,3,0),(15,1910,'WS','PHA','AL',NULL,'CHN',NULL,'NL',4,1,0),(16,1911,'WS','PHA','AL',NULL,'NY1',NULL,'NL',4,2,0),(17,1912,'WS','BOS','AL',NULL,'NY1',NULL,'NL',4,3,0),(18,1913,'WS','PHA','AL',NULL,'NY1',NULL,'NL',4,1,0),(19,1914,'WS','BSN','NL',NULL,'PHA',NULL,'AL',4,0,0),(20,1915,'WS','BOS','AL',NULL,'PHI',NULL,'NL',4,1,0),(21,1916,'WS','BOS','AL',NULL,'BRO',NULL,'NL',4,1,0),(22,1917,'WS','CHA','AL',NULL,'NY1',NULL,'NL',4,2,0),(23,1918,'WS','BOS','AL',NULL,'CHN',NULL,'NL',4,2,0),(24,1919,'WS','CIN','NL',NULL,'CHA',NULL,'AL',5,3,0),(25,1920,'WS','CLE','AL',NULL,'BRO',NULL,'NL',5,2,0),(26,1921,'WS','NY1','NL',NULL,'NYA',NULL,'AL',5,3,0),(27,1922,'WS','NY1','NL',NULL,'NYA',NULL,'AL',4,0,0),(28,1923,'WS','NYA','AL',NULL,'NY1',NULL,'NL',4,2,0),(29,1924,'WS','WS1','AL',NULL,'NY1',NULL,'NL',4,3,0),(30,1925,'WS','PIT','NL',NULL,'WS1',NULL,'AL',4,3,0),(31,1926,'WS','SLN','NL',NULL,'NYA',NULL,'AL',4,3,0),(32,1927,'WS','NYA','AL',NULL,'PIT',NULL,'NL',4,0,0),(33,1928,'WS','NYA','AL',NULL,'SLN',NULL,'NL',4,0,0),(34,1929,'WS','PHA','AL',NULL,'CHN',NULL,'NL',4,1,0),(35,1930,'WS','PHA','AL',NULL,'SLN',NULL,'NL',4,2,0),(36,1931,'WS','SLN','NL',NULL,'PHA',NULL,'AL',4,3,0),(37,1932,'WS','NYA','AL',NULL,'CHN',NULL,'NL',4,0,0),(38,1933,'WS','NY1','NL',NULL,'WS1',NULL,'AL',4,1,0),(39,1934,'WS','SLN','NL',NULL,'DET',NULL,'AL',4,3,0),(40,1935,'WS','DET','AL',NULL,'CHN',NULL,'NL',4,2,0),(41,1936,'WS','NYA','AL',NULL,'NY1',NULL,'NL',4,2,0),(42,1937,'WS','NYA','AL',NULL,'NY1',NULL,'NL',4,1,0),(43,1938,'WS','NYA','AL',NULL,'CHN',NULL,'NL',4,0,0),(44,1939,'WS','NYA','AL',NULL,'CIN',NULL,'NL',4,0,0),(45,1940,'WS','CIN','NL',NULL,'DET',NULL,'AL',4,3,0),(46,1941,'WS','NYA','AL',NULL,'BRO',NULL,'NL',4,1,0),(47,1942,'WS','SLN','NL',NULL,'NYA',NULL,'AL',4,1,0),(48,1943,'WS','NYA','AL',NULL,'SLN',NULL,'NL',4,1,0),(49,1944,'WS','SLN','NL',NULL,'SLA',NULL,'AL',4,2,0),(50,1945,'WS','DET','AL',NULL,'CHN',NULL,'NL',4,3,0),(51,1946,'WS','SLN','NL',NULL,'BOS',NULL,'AL',4,3,0),(52,1947,'WS','NYA','AL',NULL,'BRO',NULL,'NL',4,3,0),(53,1948,'WS','CLE','AL',NULL,'BSN',NULL,'NL',4,2,0),(54,1949,'WS','NYA','AL',NULL,'BRO',NULL,'NL',4,1,0),(55,1950,'WS','NYA','AL',NULL,'PHI',NULL,'NL',4,0,0),(56,1951,'WS','NYA','AL',NULL,'NY1',NULL,'NL',4,2,0),(57,1952,'WS','NYA','AL',NULL,'BRO',NULL,'NL',4,3,0),(58,1953,'WS','NYA','AL',NULL,'BRO',NULL,'NL',4,2,0),(59,1954,'WS','NY1','NL',NULL,'CLE',NULL,'AL',4,0,0),(60,1955,'WS','BRO','NL',NULL,'NYA',NULL,'AL',4,3,0),(61,1956,'WS','NYA','AL',NULL,'BRO',NULL,'NL',4,3,0),(62,1957,'WS','ML1','NL',NULL,'NYA',NULL,'AL',4,3,0),(63,1958,'WS','NYA','AL',NULL,'ML1',NULL,'NL',4,3,0),(64,1959,'WS','LAN','NL',NULL,'CHA',NULL,'AL',4,2,0),(65,1960,'WS','PIT','NL',NULL,'NYA',NULL,'AL',4,3,0),(66,1961,'WS','NYA','AL',NULL,'CIN',NULL,'NL',4,1,0),(67,1962,'WS','NYA','AL',NULL,'SFN',NULL,'NL',4,3,0),(68,1963,'WS','LAN','NL',NULL,'NYA',NULL,'AL',4,0,0),(69,1964,'WS','SLN','NL',NULL,'NYA',NULL,'AL',4,3,0),(70,1965,'WS','LAN','NL',NULL,'MIN',NULL,'AL',4,3,0),(71,1966,'WS','BAL','AL',NULL,'LAN',NULL,'NL',4,0,0),(72,1967,'WS','SLN','NL',NULL,'BOS',NULL,'AL',4,3,0),(73,1968,'WS','DET','AL',NULL,'SLN',NULL,'NL',4,3,0),(74,1969,'ALCS','BAL','AL',NULL,'MIN',NULL,'AL',3,0,0),(75,1969,'NLCS','NYN','NL',NULL,'ATL',NULL,'NL',3,0,0),(76,1969,'WS','NYN','NL',NULL,'BAL',NULL,'AL',4,1,0),(77,1970,'ALCS','BAL','AL',NULL,'MIN',NULL,'AL',3,0,0),(78,1970,'NLCS','CIN','NL',NULL,'PIT',NULL,'NL',3,0,0),(79,1970,'WS','BAL','AL',NULL,'CIN',NULL,'NL',4,1,0),(80,1971,'ALCS','BAL','AL',NULL,'OAK',NULL,'AL',3,0,0),(81,1971,'NLCS','PIT','NL',NULL,'SFN',NULL,'NL',3,1,0),(82,1971,'WS','PIT','NL',NULL,'BAL',NULL,'AL',4,3,0),(83,1972,'ALCS','OAK','AL',NULL,'DET',NULL,'AL',3,2,0),(84,1972,'NLCS','CIN','NL',NULL,'PIT',NULL,'NL',3,2,0),(85,1972,'WS','OAK','AL',NULL,'CIN',NULL,'NL',4,3,0),(86,1973,'ALCS','OAK','AL',NULL,'BAL',NULL,'AL',3,2,0),(87,1973,'NLCS','NYN','NL',NULL,'CIN',NULL,'NL',3,2,0),(88,1973,'WS','OAK','AL',NULL,'NYN',NULL,'NL',4,3,0),(89,1974,'ALCS','OAK','AL',NULL,'BAL',NULL,'AL',3,1,0),(90,1974,'NLCS','LAN','NL',NULL,'PIT',NULL,'NL',3,1,0),(91,1974,'WS','OAK','AL',NULL,'LAN',NULL,'NL',4,1,0),(92,1975,'ALCS','BOS','AL',NULL,'OAK',NULL,'AL',3,0,0),(93,1975,'NLCS','CIN','NL',NULL,'PIT',NULL,'NL',3,0,0),(94,1975,'WS','CIN','NL',NULL,'BOS',NULL,'AL',4,3,0),(95,1976,'ALCS','NYA','AL',NULL,'KCA',NULL,'AL',3,2,0),(96,1976,'NLCS','CIN','NL',NULL,'PHI',NULL,'NL',3,0,0),(97,1976,'WS','CIN','NL',NULL,'NYA',NULL,'AL',4,0,0),(98,1977,'ALCS','NYA','AL',NULL,'KCA',NULL,'AL',3,2,0),(99,1977,'NLCS','LAN','NL',NULL,'PHI',NULL,'NL',3,1,0),(100,1977,'WS','NYA','AL',NULL,'LAN',NULL,'NL',4,2,0),(101,1978,'ALCS','NYA','AL',NULL,'KCA',NULL,'AL',3,1,0),(102,1978,'NLCS','LAN','NL',NULL,'PHI',NULL,'NL',3,1,0),(103,1978,'WS','NYA','AL',NULL,'LAN',NULL,'NL',4,2,0),(104,1979,'ALCS','BAL','AL',NULL,'CAL',NULL,'AL',3,1,0),(105,1979,'NLCS','PIT','NL',NULL,'CIN',NULL,'NL',3,0,0),(106,1979,'WS','PIT','NL',NULL,'BAL',NULL,'AL',4,3,0),(107,1980,'ALCS','KCA','AL',NULL,'NYA',NULL,'AL',3,0,0),(108,1980,'NLCS','PHI','NL',NULL,'HOU',NULL,'NL',3,2,0),(109,1980,'WS','PHI','NL',NULL,'KCA',NULL,'AL',4,2,0),(110,1981,'AEDIV','NYA','AL',NULL,'ML4',NULL,'AL',3,2,0),(111,1981,'ALCS','NYA','AL',NULL,'OAK',NULL,'AL',3,0,0),(112,1981,'AWDIV','OAK','AL',NULL,'KCA',NULL,'AL',3,0,0),(113,1981,'NEDIV','MON','NL',NULL,'PHI',NULL,'NL',3,2,0),(114,1981,'NLCS','LAN','NL',NULL,'MON',NULL,'NL',3,2,0),(115,1981,'NWDIV','LAN','NL',NULL,'HOU',NULL,'NL',3,2,0),(116,1981,'WS','LAN','NL',NULL,'NYA',NULL,'AL',4,2,0),(117,1982,'ALCS','ML4','AL',NULL,'CAL',NULL,'AL',3,2,0),(118,1982,'NLCS','SLN','NL',NULL,'ATL',NULL,'NL',3,0,0),(119,1982,'WS','SLN','NL',NULL,'ML4',NULL,'AL',4,3,0),(120,1983,'ALCS','BAL','AL',NULL,'CHA',NULL,'AL',3,1,0),(121,1983,'NLCS','PHI','NL',NULL,'LAN',NULL,'NL',3,1,0),(122,1983,'WS','BAL','AL',NULL,'PHI',NULL,'NL',4,1,0),(123,1984,'ALCS','DET','AL',NULL,'KCA',NULL,'AL',3,0,0),(124,1984,'NLCS','SDN','NL',NULL,'CHN',NULL,'NL',3,2,0),(125,1984,'WS','DET','AL',NULL,'SDN',NULL,'NL',4,1,0),(126,1985,'ALCS','KCA','AL',NULL,'TOR',NULL,'AL',4,3,0),(127,1985,'NLCS','SLN','NL',NULL,'LAN',NULL,'NL',4,2,0),(128,1985,'WS','KCA','AL',NULL,'SLN',NULL,'NL',4,3,0),(129,1986,'ALCS','BOS','AL',NULL,'CAL',NULL,'AL',4,3,0),(130,1986,'NLCS','NYN','NL',NULL,'HOU',NULL,'NL',4,2,0),(131,1986,'WS','NYN','NL',NULL,'BOS',NULL,'AL',4,3,0),(132,1987,'ALCS','MIN','AL',NULL,'DET',NULL,'AL',4,1,0),(133,1987,'NLCS','SLN','NL',NULL,'SFN',NULL,'NL',4,3,0),(134,1987,'WS','MIN','AL',NULL,'SLN',NULL,'NL',4,3,0),(135,1988,'ALCS','OAK','AL',NULL,'BOS',NULL,'AL',4,0,0),(136,1988,'NLCS','LAN','NL',NULL,'NYN',NULL,'NL',4,3,0),(137,1988,'WS','LAN','NL',NULL,'OAK',NULL,'AL',4,1,0),(138,1989,'ALCS','OAK','AL',NULL,'TOR',NULL,'AL',4,1,0),(139,1989,'NLCS','SFN','NL',NULL,'CHN',NULL,'NL',4,1,0),(140,1989,'WS','OAK','AL',NULL,'SFN',NULL,'NL',4,0,0),(141,1990,'ALCS','OAK','AL',NULL,'BOS',NULL,'AL',4,0,0),(142,1990,'NLCS','CIN','NL',NULL,'PIT',NULL,'NL',4,2,0),(143,1990,'WS','CIN','NL',NULL,'OAK',NULL,'AL',4,0,0),(144,1991,'ALCS','MIN','AL',NULL,'TOR',NULL,'AL',4,1,0),(145,1991,'NLCS','ATL','NL',NULL,'PIT',NULL,'NL',4,3,0),(146,1991,'WS','MIN','AL',NULL,'ATL',NULL,'NL',4,3,0),(147,1992,'ALCS','TOR','AL',NULL,'OAK',NULL,'AL',4,2,0),(148,1992,'NLCS','ATL','NL',NULL,'PIT',NULL,'NL',4,3,0),(149,1992,'WS','TOR','AL',NULL,'ATL',NULL,'NL',4,2,0),(150,1993,'ALCS','TOR','AL',NULL,'CHA',NULL,'AL',4,2,0),(151,1993,'NLCS','PHI','NL',NULL,'ATL',NULL,'NL',4,2,0),(152,1993,'WS','TOR','AL',NULL,'PHI',NULL,'NL',4,2,0),(153,1995,'ALCS','CLE','AL',NULL,'SEA',NULL,'AL',4,2,0),(154,1995,'ALDS1','CLE','AL',NULL,'BOS',NULL,'AL',3,0,0),(155,1995,'ALDS2','SEA','AL',NULL,'NYA',NULL,'AL',3,2,0),(156,1995,'NLCS','ATL','NL',NULL,'CIN',NULL,'NL',4,0,0),(157,1995,'NLDS1','ATL','NL',NULL,'COL',NULL,'NL',3,1,0),(158,1995,'NLDS2','CIN','NL',NULL,'LAN',NULL,'NL',3,0,0),(159,1995,'WS','ATL','NL',NULL,'CLE',NULL,'AL',4,2,0),(160,1996,'ALCS','NYA','AL',NULL,'BAL',NULL,'AL',4,1,0),(161,1996,'ALDS1','BAL','AL',NULL,'CLE',NULL,'AL',3,1,0),(162,1996,'ALDS2','NYA','AL',NULL,'TEX',NULL,'AL',3,1,0),(163,1996,'NLCS','ATL','NL',NULL,'SLN',NULL,'NL',4,3,0),(164,1996,'NLDS1','ATL','NL',NULL,'LAN',NULL,'NL',3,0,0),(165,1996,'NLDS2','SLN','NL',NULL,'SDN',NULL,'NL',3,0,0),(166,1996,'WS','NYA','AL',NULL,'ATL',NULL,'NL',4,2,0),(167,1997,'ALCS','CLE','AL',NULL,'BAL',NULL,'AL',4,2,0),(168,1997,'ALDS1','CLE','AL',NULL,'NYA',NULL,'AL',3,2,0),(169,1997,'ALDS2','BAL','AL',NULL,'SEA',NULL,'AL',3,1,0),(170,1997,'NLCS','FLO','NL',NULL,'ATL',NULL,'NL',4,2,0),(171,1997,'NLDS1','FLO','NL',NULL,'SFN',NULL,'NL',3,0,0),(172,1997,'NLDS2','ATL','NL',NULL,'HOU',NULL,'NL',3,0,0),(173,1997,'WS','FLO','NL',NULL,'CLE',NULL,'AL',4,3,0),(174,1998,'ALCS','NYA','AL',NULL,'CLE',NULL,'AL',4,2,0),(175,1998,'ALDS1','CLE','AL',NULL,'BOS',NULL,'AL',3,1,0),(176,1998,'ALDS2','NYA','AL',NULL,'TEX',NULL,'AL',3,0,0),(177,1998,'NLCS','SDN','NL',NULL,'ATL',NULL,'NL',4,2,0),(178,1998,'NLDS1','ATL','NL',NULL,'CHN',NULL,'NL',3,0,0),(179,1998,'NLDS2','SDN','NL',NULL,'HOU',NULL,'NL',3,1,0),(180,1998,'WS','NYA','AL',NULL,'SDN',NULL,'NL',4,0,0),(181,1999,'ALCS','NYA','AL',NULL,'BOS',NULL,'AL',4,1,0),(182,1999,'ALDS1','BOS','AL',NULL,'CLE',NULL,'AL',3,2,0),(183,1999,'ALDS2','NYA','AL',NULL,'TEX',NULL,'AL',3,0,0),(184,1999,'NLCS','ATL','NL',NULL,'NYN',NULL,'NL',4,2,0),(185,1999,'NLDS1','ATL','NL',NULL,'HOU',NULL,'NL',3,1,0),(186,1999,'NLDS2','NYN','NL',NULL,'ARI',NULL,'NL',3,1,0),(187,1999,'WS','NYA','AL',NULL,'ATL',NULL,'NL',4,0,0),(188,2000,'ALCS','NYA','AL',NULL,'SEA',NULL,'AL',4,2,0),(189,2000,'ALDS1','NYA','AL',NULL,'OAK',NULL,'AL',3,2,0),(190,2000,'ALDS2','SEA','AL',NULL,'CHA',NULL,'AL',3,0,0),(191,2000,'NLCS','NYN','NL',NULL,'SLN',NULL,'NL',4,1,0),(192,2000,'NLDS1','SLN','NL',NULL,'ATL',NULL,'NL',3,0,0),(193,2000,'NLDS2','NYN','NL',NULL,'SFN',NULL,'NL',3,1,0),(194,2000,'WS','NYA','AL',NULL,'NYN',NULL,'NL',4,1,0),(195,2001,'ALCS','NYA','AL',NULL,'SEA',NULL,'AL',4,1,0),(196,2001,'ALDS1','SEA','AL',NULL,'CLE',NULL,'AL',3,2,0),(197,2001,'ALDS2','NYA','AL',NULL,'OAK',NULL,'AL',3,2,0),(198,2001,'NLCS','ARI','NL',NULL,'ATL',NULL,'NL',4,1,0),(199,2001,'NLDS1','ATL','NL',NULL,'HOU',NULL,'NL',3,0,0),(200,2001,'NLDS2','ARI','NL',NULL,'SLN',NULL,'NL',3,2,0),(201,2001,'WS','ARI','NL',NULL,'NYA',NULL,'AL',4,3,0),(202,2002,'ALCS','ANA','AL',NULL,'MIN',NULL,'AL',4,1,0),(203,2002,'ALDS1','ANA','AL',NULL,'NYA',NULL,'AL',3,1,0),(204,2002,'ALDS2','MIN','AL',NULL,'OAK',NULL,'AL',3,2,0),(205,2002,'NLCS','SFN','NL',NULL,'SLN',NULL,'NL',4,1,0),(206,2002,'NLDS1','SFN','NL',NULL,'ATL',NULL,'NL',3,2,0),(207,2002,'NLDS2','SLN','NL',NULL,'ARI',NULL,'NL',3,0,0),(208,2002,'WS','ANA','AL',NULL,'SFN',NULL,'NL',4,3,0),(209,2003,'ALCS','NYA','AL',NULL,'BOS',NULL,'AL',4,3,0),(210,2003,'ALDS1','NYA','AL',NULL,'MIN',NULL,'AL',3,1,0),(211,2003,'ALDS2','BOS','AL',NULL,'OAK',NULL,'AL',3,2,0),(212,2003,'NLCS','FLO','NL',NULL,'CHN',NULL,'NL',4,3,0),(213,2003,'NLDS1','FLO','NL',NULL,'SFN',NULL,'NL',3,1,0),(214,2003,'NLDS2','CHN','NL',NULL,'ATL',NULL,'NL',3,2,0),(215,2003,'WS','FLO','NL',NULL,'NYA',NULL,'AL',4,2,0),(216,2004,'ALCS','BOS','AL',NULL,'NYA',NULL,'AL',4,3,0),(217,2004,'ALDS1','BOS','AL',NULL,'ANA',NULL,'AL',3,0,0),(218,2004,'ALDS2','NYA','AL',NULL,'MIN',NULL,'AL',3,1,0),(219,2004,'NLCS','SLN','NL',NULL,'HOU',NULL,'NL',4,3,0),(220,2004,'NLDS1','SLN','NL',NULL,'LAN',NULL,'NL',3,1,0),(221,2004,'NLDS2','HOU','NL',NULL,'ATL',NULL,'NL',3,2,0),(222,2004,'WS','BOS','AL',NULL,'SLN',NULL,'NL',4,0,0),(223,2005,'ALCS','CHA','AL',NULL,'LAA',NULL,'AL',4,1,0),(224,2005,'ALDS1','CHA','AL',NULL,'BOS',NULL,'AL',3,0,0),(225,2005,'ALDS2','LAA','AL',NULL,'NYA',NULL,'AL',3,2,0),(226,2005,'NLCS','HOU','NL',NULL,'SLN',NULL,'NL',4,2,0),(227,2005,'NLDS1','SLN','NL',NULL,'SDN',NULL,'NL',3,0,0),(228,2005,'NLDS2','HOU','NL',NULL,'ATL',NULL,'NL',3,1,0),(229,2005,'WS','CHA','AL',NULL,'HOU',NULL,'NL',4,0,0),(230,2006,'ALCS','DET','AL',NULL,'OAK',NULL,'AL',4,0,0),(231,2006,'ALDS1','DET','AL',NULL,'NYA',NULL,'AL',3,1,0),(232,2006,'ALDS2','OAK','AL',NULL,'MIN',NULL,'AL',3,0,0),(233,2006,'NLCS','SLN','NL',NULL,'NYN',NULL,'NL',4,3,0),(234,2006,'NLDS1','NYN','NL',NULL,'LAN',NULL,'NL',3,0,0),(235,2006,'NLDS2','SLN','NL',NULL,'SDN',NULL,'NL',3,1,0),(236,2006,'WS','SLN','NL',NULL,'DET',NULL,'AL',4,1,0),(237,2007,'ALCS','BOS','AL',NULL,'CLE',NULL,'AL',4,3,0),(238,2007,'ALDS1','BOS','AL',NULL,'LAA',NULL,'AL',3,0,0),(239,2007,'ALDS2','CLE','AL',NULL,'NYA',NULL,'AL',3,1,0),(240,2007,'NLCS','COL','NL',NULL,'ARI',NULL,'NL',4,0,0),(241,2007,'NLDS1','ARI','NL',NULL,'CHN',NULL,'NL',3,0,0),(242,2007,'NLDS2','COL','NL',NULL,'PHI',NULL,'NL',3,0,0),(243,2007,'WS','BOS','AL',NULL,'COL',NULL,'NL',4,0,0),(244,2008,'ALCS','TBA','AL',NULL,'BOS',NULL,'AL',4,3,0),(245,2008,'ALDS1','BOS','AL',NULL,'LAA',NULL,'AL',3,1,0),(246,2008,'ALDS2','TBA','AL',NULL,'CHA',NULL,'AL',3,1,0),(247,2008,'NLCS','PHI','NL',NULL,'LAN',NULL,'NL',4,1,0),(248,2008,'NLDS1','LAN','NL',NULL,'CHN',NULL,'NL',3,0,0),(249,2008,'NLDS2','PHI','NL',NULL,'MIL',NULL,'NL',3,1,0),(250,2008,'WS','PHI','NL',NULL,'TBA',NULL,'AL',4,1,0),(251,2009,'ALCS','NYA','AL',NULL,'LAA',NULL,'AL',4,2,0),(252,2009,'ALDS1','NYA','AL',NULL,'MIN',NULL,'AL',3,0,0),(253,2009,'ALDS2','LAA','AL',NULL,'BOS',NULL,'AL',3,0,0),(254,2009,'NLCS','PHI','NL',NULL,'LAN',NULL,'NL',4,1,0),(255,2009,'NLDS1','LAN','NL',NULL,'SLN',NULL,'NL',3,0,0),(256,2009,'NLDS2','PHI','NL',NULL,'COL',NULL,'NL',3,1,0),(257,2009,'WS','NYA','AL',NULL,'PHI',NULL,'NL',4,2,0),(258,2010,'ALCS','TEX','AL',NULL,'NYA',NULL,'AL',4,2,0),(259,2010,'ALDS1','TEX','AL',NULL,'TBA',NULL,'AL',3,2,0),(260,2010,'ALDS2','NYA','AL',NULL,'MIN',NULL,'AL',3,0,0),(261,2010,'NLCS','SFN','NL',NULL,'PHI',NULL,'NL',4,2,0),(262,2010,'NLDS1','PHI','NL',NULL,'CIN',NULL,'NL',3,0,0),(263,2010,'NLDS2','SFN','NL',NULL,'ATL',NULL,'NL',3,1,0),(264,2010,'WS','SFN','NL',NULL,'TEX',NULL,'AL',4,1,0),(265,2011,'ALCS','TEX','AL',NULL,'DET',NULL,'AL',4,2,0),(266,2011,'ALDS1','DET','AL',NULL,'NYA',NULL,'AL',3,2,0),(267,2011,'ALDS2','TEX','AL',NULL,'TBA',NULL,'AL',3,1,0),(268,2011,'NLCS','SLN','NL',NULL,'MIL',NULL,'NL',4,2,0),(269,2011,'NLDS1','SLN','NL',NULL,'PHI',NULL,'NL',3,2,0),(270,2011,'NLDS2','MIL','NL',NULL,'ARI',NULL,'NL',3,2,0),(271,2011,'WS','SLN','NL',NULL,'TEX',NULL,'AL',4,3,0),(272,2012,'ALWC','BAL','AL',NULL,'TEX',NULL,'AL',1,0,0),(273,2012,'ALCS','DET','AL',NULL,'NYA',NULL,'AL',4,0,0),(274,2012,'ALDS1','NYA','AL',NULL,'BAL',NULL,'AL',3,2,0),(275,2012,'ALDS2','DET','AL',NULL,'OAK',NULL,'AL',3,2,0),(276,2012,'NLWC','SLN','NL',NULL,'ATL',NULL,'NL',1,0,0),(277,2012,'NLCS','SFN','NL',NULL,'SLN',NULL,'NL',4,3,0),(278,2012,'NLDS1','SLN','NL',NULL,'WAS',NULL,'NL',3,2,0),(279,2012,'NLDS2','SFN','NL',NULL,'CIN',NULL,'NL',3,2,0),(280,2012,'WS','SFN','NL',NULL,'DET',NULL,'AL',4,0,0),(281,2013,'ALWC','TBA','AL',NULL,'CLE',NULL,'AL',1,0,0),(282,2013,'ALCS','BOS','AL',NULL,'DET',NULL,'AL',4,2,0),(283,2013,'ALDS1','BOS','AL',NULL,'TBA',NULL,'AL',3,1,0),(284,2013,'ALDS2','DET','AL',NULL,'OAK',NULL,'AL',3,2,0),(285,2013,'NLWC','PIT','NL',NULL,'CIN',NULL,'NL',1,0,0),(286,2013,'NLCS','SLN','NL',NULL,'LAN',NULL,'NL',4,2,0),(287,2013,'NLDS1','SLN','NL',NULL,'PIT',NULL,'NL',3,2,0),(288,2013,'NLDS2','LAN','NL',NULL,'ATL',NULL,'NL',3,1,0),(289,2013,'WS','BOS','AL',NULL,'SLN',NULL,'NL',4,3,0),(290,2014,'ALWC','KCA','AL',NULL,'OAK',NULL,'AL',1,0,0),(291,2014,'ALCS','KCA','AL',NULL,'BAL',NULL,'AL',4,0,0),(292,2014,'ALDS1','KCA','AL',NULL,'LAA',NULL,'AL',3,0,0),(293,2014,'ALDS2','BAL','AL',NULL,'DET',NULL,'AL',3,0,0),(294,2014,'NLWC','SFN','NL',NULL,'PIT',NULL,'NL',1,0,0),(295,2014,'NLCS','SFN','NL',NULL,'SLN',NULL,'NL',4,1,0),(296,2014,'NLDS1','SFN','NL',NULL,'WAS',NULL,'NL',3,1,0),(297,2014,'NLDS2','SLN','NL',NULL,'LAN',NULL,'NL',3,1,0),(298,2014,'WS','SFN','NL',NULL,'KCA',NULL,'AL',4,3,0),(299,2015,'ALWC','HOU','AL',NULL,'NYA',NULL,'AL',1,0,0),(300,2015,'ALCS','KCA','AL',NULL,'TOR',NULL,'AL',4,2,0),(301,2015,'ALDS1','KCA','AL',NULL,'HOU',NULL,'AL',3,2,0),(302,2015,'ALDS2','TOR','AL',NULL,'TEX',NULL,'AL',3,2,0),(303,2015,'NLWC','CHN','NL',NULL,'PIT',NULL,'NL',1,0,0),(304,2015,'NLCS','NYN','NL',NULL,'CHN',NULL,'NL',4,0,0),(305,2015,'NLDS1','CHN','NL',NULL,'SLN',NULL,'NL',3,1,0),(306,2015,'NLDS2','NYN','NL',NULL,'LAN',NULL,'NL',3,2,0),(307,2015,'WS','KCA','AL',NULL,'NYN',NULL,'NL',4,1,0),(308,2016,'ALWC','TOR','AL',NULL,'BAL',NULL,'AL',1,0,0),(309,2016,'ALCS','CLE','AL',NULL,'TOR',NULL,'AL',4,1,0),(310,2016,'ALDS1','TOR','AL',NULL,'TEX',NULL,'AL',3,0,0),(311,2016,'ALDS2','CLE','AL',NULL,'BOS',NULL,'AL',3,0,0),(312,2016,'NLWC','SFN','NL',NULL,'NYN',NULL,'NL',1,0,0),(313,2016,'NLCS','CHN','NL',NULL,'LAN',NULL,'NL',4,2,0),(314,2016,'NLDS1','CHN','NL',NULL,'SFN',NULL,'NL',3,1,0),(315,2016,'NLDS2','LAN','NL',NULL,'WAS',NULL,'NL',3,2,0),(316,2016,'WS','CHN','NL',NULL,'CLE',NULL,'AL',4,3,0),(317,2017,'ALWC','NYA','AL',NULL,'MIN',NULL,'AL',1,0,0),(318,2017,'ALCS','HOU','AL',NULL,'NYA',NULL,'AL',4,3,0),(319,2017,'ALDS1','NYA','AL',NULL,'CLE',NULL,'AL',3,2,0),(320,2017,'ALDS2','HOU','AL',NULL,'BOS',NULL,'AL',3,1,0),(321,2017,'NLWC','ARI','NL',NULL,'COL',NULL,'NL',1,0,0),(322,2017,'NLCS','LAN','NL',NULL,'CHN',NULL,'NL',4,1,0),(323,2017,'NLDS1','LAN','NL',NULL,'ARI',NULL,'NL',3,0,0),(324,2017,'NLDS2','CHN','NL',NULL,'WAS',NULL,'NL',3,2,0),(325,2017,'WS','HOU','AL',NULL,'LAN',NULL,'NL',4,3,0),(326,2018,'ALWC','NYA','AL',NULL,'OAK',NULL,'AL',1,0,0),(327,2018,'ALCS','BOS','AL',NULL,'HOU',NULL,'AL',4,1,0),(328,2018,'ALDS1','BOS','AL',NULL,'NYA',NULL,'AL',3,1,0),(329,2018,'ALDS2','HOU','AL',NULL,'CLE',NULL,'AL',3,0,0),(330,2018,'NLWC','COL','NL',NULL,'CHN',NULL,'NL',1,0,0),(331,2018,'NLCS','LAN','NL',NULL,'MIL',NULL,'NL',4,3,0),(332,2018,'NLDS1','MIL','NL',NULL,'COL',NULL,'NL',3,0,0),(333,2018,'NLDS2','LAN','NL',NULL,'ATL',NULL,'NL',3,1,0),(334,2018,'WS','BOS','AL',NULL,'LAN',NULL,'NL',4,1,0),(335,2019,'ALWC','TBA','AL',NULL,'OAK',NULL,'AL',1,0,0),(336,2019,'ALCS','HOU','AL',NULL,'NYA',NULL,'AL',4,2,0),(337,2019,'ALDS1','HOU','AL',NULL,'TBA',NULL,'AL',3,2,0),(338,2019,'ALDS2','NYA','AL',NULL,'MIN',NULL,'AL',3,0,0),(339,2019,'NLWC','WAS','NL',NULL,'MIL',NULL,'NL',1,0,0),(340,2019,'NLCS','WAS','NL',NULL,'SLN',NULL,'NL',4,0,0),(341,2019,'NLDS1','WAS','NL',NULL,'LAN',NULL,'NL',3,2,0),(342,2019,'NLDS2','SLN','NL',NULL,'ATL',NULL,'NL',3,2,0),(343,2019,'WS','WAS','NL',NULL,'HOU',NULL,'AL',4,3,0);
/*!40000 ALTER TABLE `seriespost` ENABLE KEYS */;
UNLOCK TABLES;


