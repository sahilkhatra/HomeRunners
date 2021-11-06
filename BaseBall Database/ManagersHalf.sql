--
-- Table structure for table `managershalf`
--

DROP TABLE IF EXISTS `managershalf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `managershalf` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` varchar(10) NOT NULL,
  `yearID` smallint(6) NOT NULL,
  `teamID` char(3) NOT NULL,
  `team_ID` int(11) DEFAULT NULL,
  `lgID` char(2) DEFAULT NULL,
  `inseason` smallint(6) DEFAULT NULL,
  `half` smallint(6) NOT NULL,
  `G` smallint(6) DEFAULT NULL,
  `W` smallint(6) DEFAULT NULL,
  `L` smallint(6) DEFAULT NULL,
  `teamRank` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `playerID` (`playerID`,`yearID`,`teamID`,`half`),
  KEY `lgID` (`lgID`),
  KEY `team_ID` (`team_ID`),
  CONSTRAINT `managershalf_ibfk_1` FOREIGN KEY (`lgID`) REFERENCES `leagues` (`lgID`),
  CONSTRAINT `managershalf_ibfk_2` FOREIGN KEY (`team_ID`) REFERENCES `teams` (`ID`),
  CONSTRAINT `managershalf_ibfk_3` FOREIGN KEY (`playerID`) REFERENCES `people` (`playerID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managershalf`
--

LOCK TABLES `managershalf` WRITE;
/*!40000 ALTER TABLE `managershalf` DISABLE KEYS */;
INSERT INTO `managershalf` VALUES (1,'hanlone01',1892,'BLN',280,'NL',3,1,56,17,39,12),(2,'hanlone01',1892,'BLN',280,'NL',3,2,77,26,46,10),(3,'vanhage01',1892,'BLN',280,'NL',1,1,11,1,10,12),(4,'waltzjo99',1892,'BLN',280,'NL',2,1,8,2,6,12),(5,'wardjo01',1892,'BRO',281,'NL',1,1,78,51,26,2),(6,'wardjo01',1892,'BRO',281,'NL',1,2,80,44,33,3),(7,'seleefr99',1892,'BSN',282,'NL',1,1,75,52,22,1),(8,'seleefr99',1892,'BSN',282,'NL',1,2,77,50,26,2),(9,'ansonca01',1892,'CHN',283,'NL',1,1,71,31,39,8),(10,'ansonca01',1892,'CHN',283,'NL',1,2,76,39,37,7),(11,'comisch01',1892,'CIN',284,'NL',1,1,77,44,31,4),(12,'comisch01',1892,'CIN',284,'NL',1,2,78,38,37,8),(13,'tebeapa01',1892,'CL4',285,'NL',1,1,74,40,33,5),(14,'tebeapa01',1892,'CL4',285,'NL',1,2,79,53,23,1),(15,'chapmja01',1892,'LS3',286,'NL',1,1,54,21,33,11),(16,'pfefffr01',1892,'LS3',286,'NL',2,1,23,9,14,11),(17,'pfefffr01',1892,'LS3',286,'NL',2,2,77,33,42,9),(18,'powerpa99',1892,'NY1',287,'NL',1,1,74,31,43,10),(19,'powerpa99',1892,'NY1',287,'NL',1,2,79,40,37,6),(20,'wrighha01',1892,'PHI',288,'NL',1,1,77,46,30,3),(21,'wrighha01',1892,'PHI',288,'NL',1,2,78,41,36,5),(22,'buckeal99',1892,'PIT',289,'NL',1,1,29,15,14,6),(23,'buckeal99',1892,'PIT',289,'NL',3,2,66,38,27,4),(24,'burnsto01',1892,'PIT',289,'NL',2,1,47,22,25,6),(25,'burnsto01',1892,'PIT',289,'NL',2,2,13,5,7,4),(26,'carutbo01',1892,'SLN',290,'NL',5,2,50,16,32,11),(27,'crookja01',1892,'SLN',290,'NL',3,1,47,24,22,9),(28,'crookja01',1892,'SLN',290,'NL',3,2,15,3,11,11),(29,'glassja01',1892,'SLN',290,'NL',1,1,4,1,3,9),(30,'gorege01',1892,'SLN',290,'NL',4,2,16,6,9,11),(31,'striccu01',1892,'SLN',290,'NL',2,1,23,6,17,9),(32,'barnibi01',1892,'WAS',291,'NL',1,1,2,0,2,7),(33,'irwinar01',1892,'WAS',291,'NL',2,1,74,35,39,7),(34,'irwinar01',1892,'WAS',291,'NL',2,2,34,11,21,12),(35,'richada01',1892,'WAS',291,'NL',3,2,43,12,31,12),(36,'coxbo01',1981,'ATL',1814,'NL',1,1,55,25,29,4),(37,'coxbo01',1981,'ATL',1814,'NL',1,2,52,25,27,5),(38,'weaveea99',1981,'BAL',1815,'AL',1,1,54,31,23,2),(39,'weaveea99',1981,'BAL',1815,'AL',1,2,51,28,23,4),(40,'houkra01',1981,'BOS',1816,'AL',1,1,56,30,26,5),(41,'houkra01',1981,'BOS',1816,'AL',1,2,52,29,23,2),(42,'fregoji01',1981,'CAL',1817,'AL',1,1,47,22,25,4),(43,'mauchge01',1981,'CAL',1817,'AL',2,1,13,9,4,4),(44,'mauchge01',1981,'CAL',1817,'AL',2,2,50,20,30,7),(45,'larusto01',1981,'CHA',1818,'AL',1,1,53,31,22,3),(46,'larusto01',1981,'CHA',1818,'AL',1,2,53,23,30,6),(47,'amalfjo01',1981,'CHN',1819,'NL',1,1,54,15,37,6),(48,'amalfjo01',1981,'CHN',1819,'NL',1,2,52,23,28,5),(49,'mcnamjo99',1981,'CIN',1820,'NL',1,1,56,35,21,2),(50,'mcnamjo99',1981,'CIN',1820,'NL',1,2,52,31,21,2),(51,'garcida99',1981,'CLE',1821,'AL',1,1,50,26,24,6),(52,'garcida99',1981,'CLE',1821,'AL',1,2,53,26,27,5),(53,'andersp01',1981,'DET',1822,'AL',1,1,57,31,26,4),(54,'andersp01',1981,'DET',1822,'AL',1,2,52,29,23,2),(55,'virdobi01',1981,'HOU',1823,'NL',1,1,57,28,29,3),(56,'virdobi01',1981,'HOU',1823,'NL',1,2,53,33,20,1),(57,'freyji99',1981,'KCA',1824,'AL',1,1,50,20,30,5),(58,'freyji99',1981,'KCA',1824,'AL',1,2,20,10,10,1),(59,'howsedi01',1981,'KCA',1824,'AL',2,2,33,20,13,1),(60,'lasorto01',1981,'LAN',1825,'NL',1,1,57,36,21,1),(61,'lasorto01',1981,'LAN',1825,'NL',1,2,53,27,26,4),(62,'gardnbi02',1981,'MIN',1826,'AL',2,1,20,6,14,7),(63,'gardnbi02',1981,'MIN',1826,'AL',2,2,53,24,29,4),(64,'goryljo01',1981,'MIN',1826,'AL',1,1,37,11,25,7),(65,'rodgebu01',1981,'ML4',1827,'AL',1,1,56,31,25,3),(66,'rodgebu01',1981,'ML4',1827,'AL',1,2,53,31,22,1),(67,'fanniji01',1981,'MON',1828,'NL',2,2,27,16,11,1),(68,'willidi02',1981,'MON',1828,'NL',1,1,55,30,25,3),(69,'willidi02',1981,'MON',1828,'NL',1,2,26,14,12,1),(70,'lemonbo01',1981,'NYA',1829,'AL',2,2,25,11,14,6),(71,'michage01',1981,'NYA',1829,'AL',1,1,56,34,22,1),(72,'michage01',1981,'NYA',1829,'AL',1,2,26,14,12,6),(73,'torrejo01',1981,'NYN',1830,'NL',1,1,52,17,34,5),(74,'torrejo01',1981,'NYN',1830,'NL',1,2,53,24,28,4),(75,'martibi02',1981,'OAK',1831,'AL',1,1,60,37,23,1),(76,'martibi02',1981,'OAK',1831,'AL',1,2,49,27,22,2),(77,'greenda02',1981,'PHI',1832,'NL',1,1,55,34,21,1),(78,'greenda02',1981,'PHI',1832,'NL',1,2,52,25,27,3),(79,'tannech01',1981,'PIT',1833,'NL',1,1,49,25,23,4),(80,'tannech01',1981,'PIT',1833,'NL',1,2,54,21,33,6),(81,'howarfr01',1981,'SDN',1834,'NL',1,1,56,23,33,6),(82,'howarfr01',1981,'SDN',1834,'NL',1,2,54,18,36,6),(83,'lachere01',1981,'SEA',1835,'AL',2,1,33,15,18,6),(84,'lachere01',1981,'SEA',1835,'AL',2,2,52,23,29,5),(85,'willsma01',1981,'SEA',1835,'AL',1,1,25,6,18,6),(86,'robinfr02',1981,'SFN',1836,'NL',1,1,59,27,32,5),(87,'robinfr02',1981,'SFN',1836,'NL',1,2,52,29,23,3),(88,'herzowh01',1981,'SLN',1837,'NL',1,1,51,30,20,2),(89,'herzowh01',1981,'SLN',1837,'NL',1,2,52,29,23,2),(90,'zimmedo01',1981,'TEX',1838,'AL',1,1,55,33,22,2),(91,'zimmedo01',1981,'TEX',1838,'AL',1,2,50,24,26,3),(92,'mattibo01',1981,'TOR',1839,'AL',1,1,58,16,42,7),(93,'mattibo01',1981,'TOR',1839,'AL',1,2,48,21,27,7);
/*!40000 ALTER TABLE `managershalf` ENABLE KEYS */;
UNLOCK TABLES;