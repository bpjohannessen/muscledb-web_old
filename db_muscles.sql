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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='Muscle groups (Mm. capitis, Mm. collie, etc)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscle_groups`
--

LOCK TABLES `tbl_muscle_groups` WRITE;
/*!40000 ALTER TABLE `tbl_muscle_groups` DISABLE KEYS */;
INSERT INTO `tbl_muscle_groups` (`id`, `lat_name`, `name`, `explanation`) VALUES (1,'Mm. capitis','Muscles of the head','Includes masticatoy and mimetic muscles, 1st and 2nd visceral arch'),(2,'Mm. colli','Muscles of the neck','Muscles of the neck'),(3,'Mm. thoracis','Muscles of the thorax','NULL'),(4,'Upper limb','Upper limb','NULL'),(5,'Lower limb','Lower limb','NULL'),(9,'Mm. abdominis','Muscles of the abdomen','');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COMMENT='Muscle subgroups (i.e. M. masticatorii, M. faciei)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscle_subgroups`
--

LOCK TABLES `tbl_muscle_subgroups` WRITE;
/*!40000 ALTER TABLE `tbl_muscle_subgroups` DISABLE KEYS */;
INSERT INTO `tbl_muscle_subgroups` (`id`, `lat_name`, `name`, `muscle_group`, `explanation`) VALUES (1,'M. masticatorii','Masticatory muscles',1,'Derivates of the 1st visceral arch'),(2,'M. faciei','Facial (mimetic muscles)',1,'Derivates of the 2nd visceral arch'),(3,'Derivates of the 1st visceral arch','Derivates of the 1st visceral arch',2,''),(4,'Derivates of the 2nd visceral arch','Derivates of the 2nd visceral arch',2,''),(5,'Craniothoracal muscles','Craniothoracal muscles',2,''),(6,'Straight muscles of the neck','Straight muscles of the neck',2,''),(7,'Lateral muscles of the neck','Lateral muscles of the neck',2,''),(8,'Deep muscles of neck','Deep muscles of neck',2,''),(9,'Diaphragma','Diaphragma',2,''),(10,'Superficial muscles of thorax','Superficial muscles of thorax',3,''),(11,'Deep muscles of thorax','Deep muscles of thorax',3,'');
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
INSERT INTO `tbl_muscle_subsubgroups` (`id`, `lat_name`, `name`, `muscle_group`, `muscle_subgroup`, `explanation`) VALUES (1,'0','Muscles of the scalp and around the eye opening','1','2','NULL'),(2,'0','Muscles of the nose opening','1','2','NULL'),(3,'0','Muscles of the mouth opening','1','2','NULL'),(4,'0','Muscles of the ear opening','1','2','NULL'),(5,'0','Muscles of the ear opening','1','2','');
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
  `image` text NOT NULL COMMENT 'Image path for muscle',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscles`
--

LOCK TABLES `tbl_muscles` WRITE;
/*!40000 ALTER TABLE `tbl_muscles` DISABLE KEYS */;
INSERT INTO `tbl_muscles` (`id`, `lat_name`, `name`, `muscle_group`, `muscle_subgroup`, `muscle_subsubgroup`, `origo`, `insertio`, `functio`, `nerve`, `image`, `comment`) VALUES (1,'M. temporalis','Temporal muscle',1,1,0,'Planum temporale, fascia temporalis','Processus coronoideus mandibulae','Elevation of the mandible; posterior fibers pulls the mandible backward','1','mtemporalis.png',''),(2,'M. masseter','Masseter muscle',1,1,0,'Arcus zygomaticus','Tuberositas masseterica mandibulae','Elevation of the mandible','2','mmasseter.png',''),(3,'M. pterygoideus lateralis','Lateral pterygoid muscle',1,1,0,'Facies infratemporalis alae majoris ossis sphenoidalis, lamina lateralis processus pterygoidei','Fovea pterygoidea mandibulae','Bilateral contractions pulls the mandible forward; unilateral contractions pushes the mandible laterally.','3','mpterygoideuslateralis.png',''),(4,'M. pterygoideus medialis','Medial pterygoid muscle',1,1,0,'Fossa pterygoidea ossis sphenoidalis','Tuberositas pterygoidea mandibulae','Bilateral contractions pulls the mandible forward; unilateral contractions pushes the mandible laterally.','2','mpterygoideusmedialis.png',''),(5,'Venter occipitalis m. occipitofrontalis','Occpitalis muscle',1,2,1,'Linea nuchalis superior','Galea aponeurotica','Lifting of the eyebrows and the upper eyelids; produces horizontal wrinkles of the forehead; facial expression of astonishment','4','venteroccpitalismoccipitofrontalis.png',''),(6,'Venter frontalis m. occipitofrontalis','Frontalis muscle',1,2,1,'Galea aponeurotica','Skin of the eyebrow','Lifting of the eyebrows and the upper eyelids; produces horizontal wrinkles of the forehead; facial expression of astonishment','5','venterfrontalismoccipitofrontalis.png',''),(7,'M. corrugator supercilii','Corrugator supercilii muscle',1,2,1,'Glabella, margo supraorbitalis','Skin of the eyebrow','Pulls the skin of the eyebrows downward and medially; produces vertical wrinkles of the forehead; expression of the \"thinker\"','5','mcorrugatorsupercilii.png',''),(8,'Pars orbitalis m. orbicularis oculi','Pars orbitalis',1,2,1,'Lig. palpebrale mediale','Lig. palpebrale mediale','Acts as sphincter','5','morbicularisoculi.png',''),(9,'Pars palpebralis m. orbicularis oculi','Pars palpebralis',1,2,1,'Lig. palpebrale mediale','Lig. palpebrale laterale','Closes the eyelid','5','morbicularisoculi.png',''),(10,'Pars lacrimalis m. orbicularis oculi','Pars lacrimalis',1,2,1,'Os lacrimale','Lacrimal sac','Expands the lacrimal sac','5','morbicularisoculi.png',''),(11,'M. nasalis','Nasal muscle',1,2,2,'Processus alveolaris maxillae','Cartilages of the external nose','Pulls the nasal wing downward; reduces the size of the nostrils','6','mnasalis.png',''),(12,'M. levator labii superioris alaeque nasi','Levator labii superioris alaeque nasi muscle',1,2,2,'Processus frontalis maxillae','Skin of the upper lip and nasal wing','Elevates the nasal wing and upper lip upward, enlarges the size of the nostrils.','6','mlevatorlabiisuperiorisalaequenasi.png','This muscle has the longest name of a muscle in animal'),(13,'M. orbicularis oris','Orbicularis oculi muscle',1,2,3,'Fibres arranged circulary','Fibres arranged circulary','Closes the lips; protrudes them forward\r\n(sucking shape).','6','morbicularisoris.png',''),(14,'M. levator anguli oris','Levator anguli oris muscle',1,2,3,'Fossa canina','Skin at the angle of the mouth','Lifts the angle of the mouth','6','mlevatorangulioris.png',''),(15,'M. levator labii superioris','Levator labii superioris muscle',1,2,3,'Margo infraorbitalis maxillae','Skin of the upper lip','Lifts the upper lip.','7','mlevatorlabiisuperioris.png',''),(16,'M. zygomaticus major','Zygomaticus major muscle',1,2,3,'Os zygomaticum','Skin at the angle of the mouth','Lifts the angle of mouth upward and laterally&mdash;expression of pleasure&mdash;laughing muscle.','6|7','mzygomaticusmajor.png',''),(17,'M. zygomaticus minor','Zygomaticus minor muscle',1,2,3,'Os zygomaticum','Skin at the angle of the mouth','Lifts the angle of mouth upward and laterally&mdash;expression of pleasure&mdash;laughing muscle','6','mzygomaticusminor.png',''),(18,'M. risorius ','Risorius muscle',1,2,3,'Fascia masseterica','Skin at the angle of the mouth ','Pulls the angle of mouth laterally; produces the nasolabial folds&mdash;expression of pleasure&mdash;laughing muscle','6','mrisorius.png',''),(19,'M. buccinator ','Buccinator muscle',1,2,3,'Processus alveolaris maxillae et mandibulae, raphe pterygomandibularis ','Skin at the angle of the mouth','Pulls the angle of mouth laterally; compresses the cheeks&mdash;expression of satisfaction','6','mbuccinator.png',''),(20,'M. depressor anguli oris','Depressor anguli oris muscle',1,2,3,'Basis mandibulae ','Skin at the angle of the mouth','Pulls the angle of the mouth downward&mdash;expression of sadness','8','mdepressorangulioris.png',''),(21,'M. depressor labii inferioris ','Depressor labii inferioris muscle',1,2,3,'Basis mandibulae ','Skin of the lower lip','Pulls the angle of the mouth and lower lip downward&mdash;expression of preserverance','8','mdepressorlabiiinferioris.png',''),(22,'M. mentalis ','Mentalis muscle',1,2,3,'Processus alveolaris mandibulae','Skin of the chin','Produses small dimples in the chin&mdash;expression of doubt','8','mmentalis.png',''),(23,'M. auricularis anterior','Anterior auricularis muscle',1,2,4,'Fascia temporalis','Helix (ear)','Pulls ear forward','9','mauricularisanterior.png',''),(24,'M. auricularis superior','Superior auricularis muscle',1,2,4,'Fascia temporalis','Above the ear','Pulls ear upward','9','mauricularissuperior.png',''),(25,'M. auricularis posterior','Posterior auricularis muscle',1,2,4,'Processus mastoideus','Posterior ear','Pulls ear backward','4','mauricularisposterior.png','');
/*!40000 ALTER TABLE `tbl_muscles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nerves`
--

DROP TABLE IF EXISTS `tbl_nerves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_nerves` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `lat_name` text NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nerves`
--

LOCK TABLES `tbl_nerves` WRITE;
/*!40000 ALTER TABLE `tbl_nerves` DISABLE KEYS */;
INSERT INTO `tbl_nerves` (`id`, `lat_name`, `name`) VALUES (1,'Nn. temporales profundi','Deep temporal nerves'),(2,'N. mandibularis','Mandibular nerve'),(3,'N. pterygoideus lateralis','Lateral pterygoid nerve'),(4,'N. auricularis posterior','Posterior auricular nerve'),(5,'N. facialis','Facial nerve'),(6,'Rr. buccales n. facialis','Buccal branch of the facial nerve'),(7,'Rr. zygomatici n. facialis','Zygomatic branches of the facial nerve'),(8,'R. marginalis mandibularis n. facialis','Marginal mandibular branch of the facial nerve'),(9,'Rr. temporales n. facialis','Temporal branches of the facial nerve');
/*!40000 ALTER TABLE `tbl_nerves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-07 22:47:19
