-- MySQL dump 10.13  Distrib 5.1.69, for redhat-linux-gnu (x86_64)
--
-- Host: 192.237.246.191    Database: bndr_s001
-- ------------------------------------------------------
-- Server version	5.1.69

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
-- Table structure for table `bom`
--

DROP TABLE IF EXISTS `bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bom` (
  `item` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `part` varchar(16) DEFAULT NULL,
  `parent` int(10) unsigned DEFAULT NULL,
  `parent_pn` varchar(16) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `qty` int(10) unsigned DEFAULT NULL,
  `unit` varchar(4) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `manufacturer` varchar(64) DEFAULT NULL,
  `manufacturer_pn` varchar(64) DEFAULT NULL,
  `supplier` varchar(64) DEFAULT NULL,
  `supplier_pn` varchar(64) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `cost_u` float DEFAULT NULL,
  `cost_e` float DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  `tuples` varchar(255) DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL,
  `chksum` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`item`),
  KEY `item` (`item`),
  KEY `part` (`part`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom`
--

LOCK TABLES `bom` WRITE;
/*!40000 ALTER TABLE `bom` DISABLE KEYS */;
INSERT INTO `bom` VALUES (1,'BED01',NULL,NULL,'Long Beam',2,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/9geigro8cfmd05f/LONG.PDF',NULL,NULL,NULL,NULL,NULL,NULL,1,'1274b5a56d6477ed9d15b59910633dbbc9febe13');
INSERT INTO `bom` VALUES (2,'BED02',NULL,NULL,'Left Leg Assy',2,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/hh36iguiu3y5s3q/LEFT%20LEG%20ASSY.PDF',NULL,NULL,NULL,NULL,NULL,NULL,1,'4f3defe9d091c03b4af053d8e17e666816f0ef9d');
INSERT INTO `bom` VALUES (3,'BED03',NULL,NULL,'Right Leg Assy',2,'each',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'deb1564f7273f39e287500bdd577f9092f7f5824');
INSERT INTO `bom` VALUES (4,'BED04',NULL,NULL,'Slat',12,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/16vuqgflfk2ftck/SLAT.PDF',NULL,NULL,NULL,NULL,NULL,NULL,1,'6fde21773eefa229f62c32e1a4a19acdb9e0c525');
INSERT INTO `bom` VALUES (5,'BED05',2,NULL,'Long Leg',1,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/23j9sy87o6le82z/LEG%20LONG.PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ea438766b69a90aeac092f9076eb332331f3185b');
INSERT INTO `bom` VALUES (6,'BED05',3,NULL,'Long Leg',1,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/23j9sy87o6le82z/LEG%20LONG.PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4f23f0ca82b9ca0e584b83c2436b281183f80ea4');
INSERT INTO `bom` VALUES (7,'BED06',2,NULL,'Short Leg',1,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/tclyhijbtpskr9l/LEG%20SHORT.PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9719fd0cfb0be6484ca7439aebccfdd2ab72f985');
INSERT INTO `bom` VALUES (8,'BED06',3,NULL,'Short Leg',1,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/tclyhijbtpskr9l/LEG%20SHORT.PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'041f1b3b00cd8bead07fbab5f488357101450df2');
INSERT INTO `bom` VALUES (9,NULL,2,NULL,'Wood Screw',5,'each',NULL,'McMaster-Carr','90610A253','McMaster-Carr','90610A253','http://www.mcmaster.com/#90610a253/=qhaher',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4ac04dbb440db97b70e1b933b4090ca1af917bb8');
INSERT INTO `bom` VALUES (10,NULL,3,NULL,'Wood Screw',5,'each',NULL,'McMaster-Carr','90610A253','McMaster-Carr','90610A253','http://www.mcmaster.com/#90610a253/=qhaher',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'57f3e36fc3fc573854d2ab440d55ddeaaada62ce');
INSERT INTO `bom` VALUES (11,'BED07',2,NULL,'Bolt Assy',1,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/1qgnv731rdhvoqu/BOLT%20ASSY.PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'77944062940c2408e993a6e062078233b592c546');
INSERT INTO `bom` VALUES (12,'BED07',3,NULL,'Bolt Assy',1,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/1qgnv731rdhvoqu/BOLT%20ASSY.PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'f7738468021b3c86b9ec2fbddfd3e2f987b95ba9');
/*!40000 ALTER TABLE `bom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-30 16:18:24
