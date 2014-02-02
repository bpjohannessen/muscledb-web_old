-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: db_muscles
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.1

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
-- Table structure for table `tbl_muscle_groups`
--

DROP TABLE IF EXISTS `tbl_muscle_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_muscle_groups` (
  `id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'ID, auto increment, unique',
  `lat_name` text NOT NULL COMMENT 'Latin name for muscle group',
  `name` text NOT NULL COMMENT 'Name (English) for muscle group',
  `explanation` text NOT NULL COMMENT 'Explanation for muscle group',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='Muscle groups (Mm. capitis, Mm. collie, etc)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscle_groups`
--

LOCK TABLES `tbl_muscle_groups` WRITE;
/*!40000 ALTER TABLE `tbl_muscle_groups` DISABLE KEYS */;
INSERT INTO `tbl_muscle_groups` (`id`, `lat_name`, `name`, `explanation`) VALUES (1,'Mm. capitis','Muscles of the head','Includes masticatoy and mimetic muscles, 1st and 2nd visceral arch'),(2,'Mm. colli','Muscles of the neck','Muscles of the neck'),(3,'Mm. thoracis','Muscles of the thorax','NULL'),(4,'Upper limb','Upper limb','NULL'),(5,'Lower limp','Lower limb','NULL');
/*!40000 ALTER TABLE `tbl_muscle_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_muscle_subgroups`
--

DROP TABLE IF EXISTS `tbl_muscle_subgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_muscle_subgroups` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `lat_name` text NOT NULL COMMENT 'Latin name for muscle subgroup',
  `name` text NOT NULL COMMENT 'Name (English) for muscle subgroup',
  `muscle_group` int(3) NOT NULL COMMENT 'Indicates which muscle group the subgroup is attached to',
  `explanation` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Muscle subgroups (i.e. M. masticatorii, M. faciei)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscle_subgroups`
--

LOCK TABLES `tbl_muscle_subgroups` WRITE;
/*!40000 ALTER TABLE `tbl_muscle_subgroups` DISABLE KEYS */;
INSERT INTO `tbl_muscle_subgroups` (`id`, `lat_name`, `name`, `muscle_group`, `explanation`) VALUES (1,'M. masticatorii','Masticatory muscles',1,'Derivates of the 1st visceral arch'),(2,'M. faciei','Facial (mimetic muscles)',1,'Derivates of the 2nd visceral arch');
/*!40000 ALTER TABLE `tbl_muscle_subgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_muscle_subsubgroups`
--

DROP TABLE IF EXISTS `tbl_muscle_subsubgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_muscle_subsubgroups` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `lat_name` text NOT NULL,
  `name` text NOT NULL,
  `muscle_group` text NOT NULL,
  `muscle_subgroup` text NOT NULL,
  `explanation` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscle_subsubgroups`
--

LOCK TABLES `tbl_muscle_subsubgroups` WRITE;
/*!40000 ALTER TABLE `tbl_muscle_subsubgroups` DISABLE KEYS */;
INSERT INTO `tbl_muscle_subsubgroups` (`id`, `lat_name`, `name`, `muscle_group`, `muscle_subgroup`, `explanation`) VALUES (1,'Muscles of the scalp and around the eye opening','','1','2','NULL'),(2,'Muscles of the nose opening','','1','2','NULL'),(3,'Muscles of the mouth opening','','1','2','NULL'),(4,'Muscles of the nose opening','','1','2','NULL'),(5,'Muscles of the ear opening','','1','2','');
/*!40000 ALTER TABLE `tbl_muscle_subsubgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_muscles`
--

DROP TABLE IF EXISTS `tbl_muscles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_muscles` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'ID for muscle',
  `lat_name` text NOT NULL COMMENT 'Latin name',
  `name` text NOT NULL COMMENT 'Name (English) for muscle',
  `muscle_group` int(3) NOT NULL,
  `muscle_subgroup` int(3) NOT NULL,
  `muscle_subsubgroup` int(3) NOT NULL,
  `origo` text NOT NULL,
  `insertio` text NOT NULL,
  `functio` text NOT NULL,
  `nerve` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscles`
--

LOCK TABLES `tbl_muscles` WRITE;
/*!40000 ALTER TABLE `tbl_muscles` DISABLE KEYS */;
INSERT INTO `tbl_muscles` (`id`, `lat_name`, `name`, `muscle_group`, `muscle_subgroup`, `muscle_subsubgroup`, `origo`, `insertio`, `functio`, `nerve`, `comment`) VALUES (1,'M. temporalis','Temporal muscle',1,1,0,'Planum temporale, fascia temporalis','Processus coronoideus mandibulae','Elevation of the mandible; posterior fibers pulls the mandible backward','Nn. temporales profundi',''),(2,'M. masseter','Masseter muscle',1,1,0,'Arcus zygomaticus','Tuberositas masseterica mandibulae','Elevation of the mandible','N. mandibularis',''),(3,'M. pterygoideus lateralis','Lateral pterygoid muscle',1,1,0,'Facies infratemporalis alae majoris ossis sphenoidalis, lamina lateralis processus pterygoidei','Fovea pterygoidea mandibulae','Bilateral contractions pulls the mandible forward; unilateral contractions pushes the mandible laterally.','N. pterygoideus lateralis',''),(4,'M. pterygoideus medialis','Medial pterygoid muscle',1,1,0,'Fossa pterygoidea ossis sphenoidalis','Tuberositas pterygoidea mandibulae','Bilateral contractions pulls the mandible forward; unilateral contractions pushes the mandible laterally.','N. mandibularis','');
/*!40000 ALTER TABLE `tbl_muscles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-02 22:56:58
