-- MySQL dump 10.16  Distrib 10.1.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gazelle
-- ------------------------------------------------------
-- Server version	10.1.17-MariaDB-1~jessie

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `requests`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `requests` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserID` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeAdded` datetime NOT NULL,
  `LastVote` datetime DEFAULT NULL,
  `CategoryID` int(3) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Description` text NOT NULL,
  `ReleaseType` tinyint(2) DEFAULT NULL,
  `FillerID` int(10) unsigned NOT NULL DEFAULT '0',
  `UploaderID` int(10) unsigned NOT NULL DEFAULT '0',
  `TorrentID` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeFilled` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Visible` binary(1) NOT NULL DEFAULT '1',
  `GroupID` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Userid` (`UserID`),
  KEY `Name` (`Title`),
  KEY `Filled` (`TorrentID`),
  KEY `FillerID` (`FillerID`),
  KEY `TimeAdded` (`TimeAdded`),
  KEY `TimeFilled` (`TimeFilled`),
  KEY `LastVote` (`LastVote`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-30 15:02:59