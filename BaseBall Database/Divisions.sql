--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `divisions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `divID` char(2) NOT NULL,
  `lgID` char(2) NOT NULL,
  `division` varchar(50) NOT NULL,
  `active` char(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `divID` (`divID`,`lgID`),
  KEY `lgID` (`lgID`),
  CONSTRAINT `divisions_ibfk_1` FOREIGN KEY (`lgID`) REFERENCES `leagues` (`lgID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisions`
--

LOCK TABLES `divisions` WRITE;
/*!40000 ALTER TABLE `divisions` DISABLE KEYS */;
INSERT INTO `divisions` VALUES (1,'E','AL','AL East','Y'),(2,'W','AL','AL West','Y'),(3,'C','AL','AL Central','Y'),(4,'E','NL','NL East','Y'),(5,'W','NL','NL West','Y'),(6,'C','NL','NL Central','Y'),(7,'A','AA','Sole Division','N'),(8,'F','FL','Sole Division','N'),(9,'N','NA','Sole Division','N'),(10,'P','PL','Sole Division','N'),(11,'U','UA','Sole Division','N');
/*!40000 ALTER TABLE `divisions` ENABLE KEYS */;
UNLOCK TABLES;