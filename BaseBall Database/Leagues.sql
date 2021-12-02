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