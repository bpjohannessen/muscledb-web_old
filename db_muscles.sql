-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_muscles
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `lat_name` text NOT NULL,
  `parent` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `lat_name`, `parent`) VALUES (1,'Hodemuskler','','0'),(2,'Ansiktsmuskler','','1'),(3,'Nesemuskler','','2');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_arteries`
--

DROP TABLE IF EXISTS `tbl_arteries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_arteries` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `lat_name` text NOT NULL,
  `name` text NOT NULL,
  `parent` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_arteries`
--

LOCK TABLES `tbl_arteries` WRITE;
/*!40000 ALTER TABLE `tbl_arteries` DISABLE KEYS */;
INSERT INTO `tbl_arteries` (`id`, `lat_name`, `name`, `parent`) VALUES (1,'Aa. temporales profundae','Deep temporal arteries','A. maxillaris, pars infratemporalis');
/*!40000 ALTER TABLE `tbl_arteries` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='Muscle groups (Mm. capitis, Mm. collie, etc)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscle_groups`
--

LOCK TABLES `tbl_muscle_groups` WRITE;
/*!40000 ALTER TABLE `tbl_muscle_groups` DISABLE KEYS */;
INSERT INTO `tbl_muscle_groups` (`id`, `lat_name`, `name`, `explanation`) VALUES (1,'Mm. capitis','Muscles of the head','Includes masticatoy and mimetic muscles, 1st and 2nd visceral arch'),(2,'Mm. colli','Muscles of the neck','Muscles of the neck'),(3,'Mm. thoracis','Muscles of the thorax','NULL'),(4,'Muscles of the upper limb','Muscles of the upper limb','NULL'),(5,'Muscles of the lower limb','Muscles of the lower limb','NULL'),(6,'Mm. abdominis','Muscles of the abdomen','');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COMMENT='Muscle subgroups (i.e. M. masticatorii, M. faciei)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscle_subgroups`
--

LOCK TABLES `tbl_muscle_subgroups` WRITE;
/*!40000 ALTER TABLE `tbl_muscle_subgroups` DISABLE KEYS */;
INSERT INTO `tbl_muscle_subgroups` (`id`, `lat_name`, `name`, `muscle_group`, `explanation`) VALUES (1,'Mm. masticatorii','Masticatory muscles',1,'Derivates of the 1st visceral arch'),(2,'Mm. faciei','Facial (mimetic muscles)',1,'Derivates of the 2nd visceral arch'),(3,'Derivates of the 1st visceral arch','Derivates of the 1st visceral arch',2,''),(4,'Derivates of the 2nd visceral arch','Derivates of the 2nd visceral arch',2,''),(5,'Craniothoracal muscles','Craniothoracal muscles',2,''),(6,'Straight muscles of the neck','Straight muscles of the neck',2,''),(7,'Lateral muscles of the neck','Lateral muscles of the neck',2,''),(8,'Deep muscles of neck','Deep muscles of neck',2,''),(9,'Diaphragma','Diaphragma',2,''),(10,'Superficial muscles of thorax','Superficial muscles of thorax',3,''),(11,'Deep muscles of thorax','Deep muscles of thorax',3,''),(12,'Muscles of the shoulder girdle','Muscles of the shoulder girdle',4,''),(13,'Mm. brachii','Muscles of the arm',4,''),(14,'Mm. antebrachii','Muscles of the forearm',4,''),(15,'Mm. manus','Muscles of the hand',4,''),(16,'','Superficial muscles of the back',3,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscle_subsubgroups`
--

LOCK TABLES `tbl_muscle_subsubgroups` WRITE;
/*!40000 ALTER TABLE `tbl_muscle_subsubgroups` DISABLE KEYS */;
INSERT INTO `tbl_muscle_subsubgroups` (`id`, `lat_name`, `name`, `muscle_group`, `muscle_subgroup`, `explanation`) VALUES (1,'0','Muscles of the scalp and around the eye opening','1','2','NULL'),(2,'0','Muscles of the nose opening','1','2','NULL'),(3,'0','Mimetic muscles in the region of the mouth','1','2','NULL'),(4,'0','Muscles of the ear opening','1','2','NULL'),(5,'0','1st layer','3','10',''),(6,'0','2nd layer','3','10',''),(7,'0','3rd layer','3','10',''),(8,'Compartimentum brachii anterius','Anterior compartment','4','13',''),(9,'Compartimentum brachii posterius','Posterior compartment','4','13',''),(10,'Compartimentum antebrachii anterius','Anterior compartment','4','14',''),(11,'Compartimentum antebrachii posterius, pars lateralis','Lateral (radial) part of the posterior compartment','4','14',''),(12,'Compartimentum antebrachii posterius','Posterior compartment','4','14','');
/*!40000 ALTER TABLE `tbl_muscle_subsubgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_muscle_subsubsubgroups`
--

DROP TABLE IF EXISTS `tbl_muscle_subsubsubgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_muscle_subsubsubgroups` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `lat_name` text NOT NULL COMMENT 'Latin name for muscle subgroup',
  `name` text NOT NULL COMMENT 'Name (English) for muscle subgroup',
  `muscle_group` int(3) NOT NULL COMMENT 'Indicates which muscle group the subgroup is attached to',
  `muscle_subgroup` int(3) NOT NULL,
  `muscle_subsubgroup` int(3) NOT NULL,
  `explanation` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='Muscle subsubsubgroups (i.e. 1st layer, 2nd layer, etc)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscle_subsubsubgroups`
--

LOCK TABLES `tbl_muscle_subsubsubgroups` WRITE;
/*!40000 ALTER TABLE `tbl_muscle_subsubsubgroups` DISABLE KEYS */;
INSERT INTO `tbl_muscle_subsubsubgroups` (`id`, `lat_name`, `name`, `muscle_group`, `muscle_subgroup`, `muscle_subsubgroup`, `explanation`) VALUES (1,'','1st layer',4,14,10,''),(2,'','2nd layer',4,14,10,''),(3,'','3st layer',4,14,10,''),(4,'','4th layer',4,14,10,''),(5,'','1st layer',4,14,12,''),(6,'','2nd layer',4,14,12,'');
/*!40000 ALTER TABLE `tbl_muscle_subsubsubgroups` ENABLE KEYS */;
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
  `muscle_subsubsubgroup` int(3) NOT NULL,
  `origo` text NOT NULL,
  `insertio` text NOT NULL,
  `functio` text NOT NULL,
  `nerve` text NOT NULL,
  `artery` int(4) NOT NULL,
  `vein` int(4) NOT NULL,
  `image` text NOT NULL COMMENT 'Image path for muscle',
  `comment` text NOT NULL,
  `image_color` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_muscles`
--

LOCK TABLES `tbl_muscles` WRITE;
/*!40000 ALTER TABLE `tbl_muscles` DISABLE KEYS */;
INSERT INTO `tbl_muscles` (`id`, `lat_name`, `name`, `muscle_group`, `muscle_subgroup`, `muscle_subsubgroup`, `muscle_subsubsubgroup`, `origo`, `insertio`, `functio`, `nerve`, `artery`, `vein`, `image`, `comment`, `image_color`) VALUES (1,'M. temporalis','Temporal muscle',1,1,0,0,'Planum temporale, fascia temporalis','Processus coronoideus mandibulae','Elevation of the mandible; posterior fibers pulls the mandible backward','1',1,2,'mtemporalis.png','',''),(2,'M. masseter','Masseter muscle',1,1,0,0,'Arcus zygomaticus','Tuberositas masseterica mandibulae','Elevation of the mandible','2',0,0,'mmasseter.png','',''),(3,'M. pterygoideus lateralis','Lateral pterygoid muscle',1,1,0,0,'Facies infratemporalis alae majoris ossis sphenoidalis, lamina lateralis processus pterygoidei','Fovea pterygoidea mandibulae','Bilateral contractions pulls the mandible forward; unilateral contractions pushes the mandible laterally.','3',0,0,'mpterygoideuslateralis.png','',''),(4,'M. pterygoideus medialis','Medial pterygoid muscle',1,1,0,0,'Fossa pterygoidea ossis sphenoidalis','Tuberositas pterygoidea mandibulae','Bilateral contractions pulls the mandible forward; unilateral contractions pushes the mandible laterally.','2',0,0,'mpterygoideusmedialis.png','',''),(5,'Venter occipitalis m. occipitofrontalis','Occpitalis muscle',1,2,1,0,'Linea nuchalis superior','Galea aponeurotica','Lifting of the eyebrows and the upper eyelids; produces horizontal wrinkles of the forehead; facial expression of astonishment','4',0,0,'venteroccpitalismoccipitofrontalis.png','',''),(6,'Venter frontalis m. occipitofrontalis','Frontalis muscle',1,2,1,0,'Galea aponeurotica','Skin of the eyebrow','Lifting of the eyebrows and the upper eyelids; produces horizontal wrinkles of the forehead; facial expression of astonishment','5',0,0,'venterfrontalismoccipitofrontalis.png','',''),(7,'M. corrugator supercilii','Corrugator supercilii muscle',1,2,1,0,'Glabella, margo supraorbitalis','Skin of the eyebrow','Pulls the skin of the eyebrows downward and medially; produces vertical wrinkles of the forehead; expression of the \"thinker\"','5',0,0,'mcorrugatorsupercilii.png','',''),(8,'Pars orbitalis m. orbicularis oculi','Pars orbitalis',1,2,1,0,'Lig. palpebrale mediale','Lig. palpebrale mediale','Acts as sphincter','5',0,0,'morbicularisoculi.png','',''),(9,'Pars palpebralis m. orbicularis oculi','Pars palpebralis',1,2,1,0,'Lig. palpebrale mediale','Lig. palpebrale laterale','Closes the eyelid','5',0,0,'morbicularisoculi.png','',''),(10,'Pars lacrimalis m. orbicularis oculi','Pars lacrimalis',1,2,1,0,'Os lacrimale','Lacrimal sac','Expands the lacrimal sac','5',0,0,'morbicularisoculi.png','',''),(11,'M. nasalis','Nasal muscle',1,2,2,0,'Processus alveolaris maxillae','Cartilages of the external nose','Pulls the nasal wing downward; reduces the size of the nostrils','6',0,0,'mnasalis.png','',''),(12,'M. levator labii superioris alaeque nasi','Levator labii superioris alaeque nasi muscle',1,2,2,0,'Processus frontalis maxillae','Skin of the upper lip and nasal wing','Elevates the nasal wing and upper lip upward, enlarges the size of the nostrils.','6',0,0,'mlevatorlabiisuperiorisalaequenasi.png','This muscle has the longest name of a muscle in animal',''),(13,'M. orbicularis oris','Orbicularis oculi muscle',1,2,3,0,'Fibres arranged circulary','Fibres arranged circulary','Closes the lips; protrudes them forward\r\n(sucking shape).','6',0,0,'morbicularisoris.png','',''),(14,'M. levator anguli oris','Levator anguli oris muscle',1,2,3,0,'Fossa canina','Skin at the angle of the mouth','Lifts the angle of the mouth','6',0,0,'mlevatorangulioris.png','',''),(15,'M. levator labii superioris','Levator labii superioris muscle',1,2,3,0,'Margo infraorbitalis maxillae','Skin of the upper lip','Lifts the upper lip.','7',0,0,'mlevatorlabiisuperioris.png','',''),(16,'M. zygomaticus major','Zygomaticus major muscle',1,2,3,0,'Os zygomaticum','Skin at the angle of the mouth','Lifts the angle of mouth upward and laterally&mdash;expression of pleasure&mdash;laughing muscle.','6|7',0,0,'mzygomaticusmajor.png','',''),(17,'M. zygomaticus minor','Zygomaticus minor muscle',1,2,3,0,'Os zygomaticum','Skin at the angle of the mouth','Lifts the angle of mouth upward and laterally&mdash;expression of pleasure&mdash;laughing muscle','6',0,0,'mzygomaticusminor.png','',''),(18,'M. risorius ','Risorius muscle',1,2,3,0,'Fascia masseterica','Skin at the angle of the mouth ','Pulls the angle of mouth laterally; produces the nasolabial folds&mdash;expression of pleasure&mdash;laughing muscle','6',0,0,'mrisorius.png','',''),(19,'M. buccinator ','Buccinator muscle',1,2,3,0,'Processus alveolaris maxillae et mandibulae, raphe pterygomandibularis ','Skin at the angle of the mouth','Pulls the angle of mouth laterally; compresses the cheeks&mdash;expression of satisfaction','6',0,0,'mbuccinator.png','',''),(20,'M. depressor anguli oris','Depressor anguli oris muscle',1,2,3,0,'Basis mandibulae ','Skin at the angle of the mouth','Pulls the angle of the mouth downward&mdash;expression of sadness','8',0,0,'mdepressorangulioris.png','',''),(21,'M. depressor labii inferioris ','Depressor labii inferioris muscle',1,2,3,0,'Basis mandibulae ','Skin of the lower lip','Pulls the angle of the mouth and lower lip downward&mdash;expression of preserverance','8',0,0,'mdepressorlabiiinferioris.png','',''),(22,'M. mentalis ','Mentalis muscle',1,2,3,0,'Processus alveolaris mandibulae','Skin of the chin','Produses small dimples in the chin&mdash;expression of doubt','8',0,0,'mmentalis.png','',''),(23,'M. auricularis anterior','Anterior auricularis muscle',1,2,4,0,'Fascia temporalis','Helix (ear)','Pulls ear forward','9',0,0,'mauricularisanterior.png','',''),(24,'M. auricularis superior','Superior auricularis muscle',1,2,4,0,'Fascia temporalis','Above the ear','Pulls ear upward','9',0,0,'mauricularissuperior.png','',''),(25,'M. auricularis posterior','Posterior auricularis muscle',1,2,4,0,'Processus mastoideus','Posterior ear','Pulls ear backward','4',0,0,'mauricularisposterior.png','',''),(26,'M. mylohyoideus','Mylohyodeus muscle',2,3,0,0,'Linea mylohyoidea','Os hyoideum','Pulls the mandible downward; elevates os hyoideum.','10',0,0,'mmylohyoideus.png','',''),(27,'Venter anterior m. digastrici','Anterior belly of the digastric muscle',2,3,0,0,'Fossa digastrica','Os hyoideum','Pulls the mandible downward; elevates os hyoideum','2',0,0,'mdigastricus.png','',''),(28,'Venter posterior m. digastrici','Posterior belly of the digastricus muscle',2,4,0,0,'Incisura mastoidea','Os hyoideum','Pulls os hyoideum upward and backward','11',0,0,'mdigastricus.png','',''),(29,'M. stylohyoideus','Stylohyoideus muscle',2,4,0,0,'Processus styloideus','Os hyoideum','Pulls os hyoideum upward and backward','11',0,0,'mstylohyoideus.png','',''),(30,'Platysma','Platysma muscle',2,4,0,0,'Fascia pectoralis - region of the 2nd rib','Basis mandibulae','Pulls the mandible downward; produces slight wrinkling of the skin','12',0,0,'platysma.png','\"Sobo 1909 267\" by Dr. Johannes Sobotta - Sobotta\'s Atlas and Text-book of Human Anatomy 1909. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Sobo_1909_267.png#mediaviewer/File:Sobo_1909_267.png',''),(31,'M. sternocleidomastoideus','Sternocleidomastoid muscle',2,5,0,0,'Extremitas sternalis claviculae, manubrium sterni','Processus styloideus, linea nuchalis superior','Bilateral contraction lifts the head backward; unilateral contraction bends the head to the same side and turns the face to opposite side; acts in forced inspiration.','13',0,0,'msternocleidomastoideus.png','\"Sternocleidomastoideus\" by Image:Gray385.png modified by Uwe Gille - Image:Gray385.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Sternocleidomastoideus.png#mediaviewer/File:Sternocleidomastoideus.png',''),(32,'M. trapezius','Trapezius muscle',2,5,0,0,'Protuberantia occipitalis externa, linea nuchalis superior, log. nuchae, processus spinosi vertebrarum thoraciae','Spina scapulae, acromion, extremitas acromialis claviculae','Pulls the scapula toward the vertebral column; upper part elevates the shoulder; lower part pulls the shoulder downward.','13',0,0,'mtrapezius.png','\"Trapezius Gray409\" by Mikael Häggström.When using this image in external works, it may be cited as follows:Häggström, Mikael. \"Medical gallery of Mikael Häggström 2014\". Wikiversity Journal of Medicine 1 (2). DOI:10.15347/wjm/2014.008. ISSN 20018762. - Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Trapezius_Gray409.PNG#mediaviewer/File:Trapezius_Gray409.PNG',''),(33,'M. sternohyoideus','Sternohyoid muscle',2,6,0,0,'Manubrium sterni','Os hyoideum','Pulls os hyoideum downward.','14',0,0,'msternohyoideus.png','',''),(34,'M. sternothyreoideus','Sternothyroid muscle',2,6,0,0,'Manubrium sterni','Cartilago thyreoidea','Pulls larynx downward.','14',0,0,'msternothyroideus.png','',''),(35,'M. thyreohyoideus','Thyrohyoid muscle',2,6,0,0,'Cartilago thyreoidea','Os hyoideum','Pulls os hyoideum downward or elevates larynx.','14',0,0,'mthyreohyoideus.png','',''),(36,'M. geniohyoideus','Geniohyoid muscle',2,6,0,0,'Spina mentalis','Os hyoideum','Pulls the mandible downward or elevates os hyoideum.','15',0,0,'mgeniohyoideus.png','',''),(37,'Venter superior m. omohyodei','Superior belly of the omohyoid muscle',2,6,0,0,'Os hyoideum','Continues into tendon','Pulls os hyoideum downward or elevates scapula','14',0,0,'momohyoideus.png','',''),(38,'Venter inferior m. omohyoidei','Inferior belly of the omohyoid muscle',2,6,0,0,'Margo superior scapulae','Continues into tendon','Pulls os hyoideum downward or elevates scapula','14',0,0,'momohyoideus.png','',''),(39,'M. scalenus anterior','Scalenus anterior',2,7,0,0,'Processus transversus vertebrae cervicalis III–IV','Tuberculum m. scaleni anterioris costae I','Bilateral contraction bends the neck forward; unilateral contraction bends the neck to the same side; acts in inspiration.','15',0,0,'mscalenus.png','',''),(40,'M. scalenus medius','Scalenus medius',2,7,0,0,'Processus transversus vertebrae cervicalis II–VII','Facies superior costae I, behind sulcus a. subclaviae','Bilateral contraction bends the neck forward; unilateral contraction bends the neck to the same side; acts in inspiration.','15',0,0,'mscalenus.png','',''),(41,'M. scalenus posterior','Scalenus posterior',2,7,0,0,'Processus transversus vertebrae cervicalis V–VII','Costae II','Bilateral contraction bends the neck forward; unilateral contraction bends the neck to the same side; acts in inspiration.','15',0,0,'mscalenus.png','',''),(42,'M. longus capitis','Longus capitis muscle',2,8,0,0,'Processus transversus vertebrae cervicalis III-VI','Pars basilaris ossis occipitalis','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.','16',0,0,'mlonguscapitis.png','',''),(43,'M. longus colli','Longus colli muscle',2,8,0,0,'Corpus vertebrae cervicalis V - vertebrae thoracicae III, processus transversus vertebrae cervicalis II–V','Tuberculum anterius atlantis, corpus vertebrae cervicalis II–IV, processus transversus vertebrae cervicalis VI','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.','16',0,0,'mlonguscolli.png','',''),(44,'M. rectus capitis anterior','Rectus capitis anterior muscle',2,8,0,0,'Massa lateralis atlantis','Pars basilaris ossis occipitalis','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.','17',0,0,'mrectuscapitisanterior.png','',''),(45,'M. rectus capitis lateralis','Rectus capitis lateralis muscle',2,8,0,0,'Processus transversus atlantis','Pars lateralis ossis occipitalis','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.','17',0,0,'mrectuscapitislateralis.png','',''),(46,'Pars clavicularis m. pectoralis majoris','Clavicular head of the pectoralis major muscle',3,9,0,0,'Extremitas sternalis claviculae','Crista tuberculi majoris humeri','Flexio brachii','18',0,0,'mpectoralismajor.png','',''),(47,'Pars sternocostalis m. pectoralis majoris','Sterocostal head of the pectoralis major muscle',3,9,0,0,'Facies anterior sterni, cartilagines costarum II-VII','Crista tuberculi majoris humeri','Adductio brachii, rotatio interna brachii','18',0,0,'mpectoralismajor.png','',''),(48,'Pars abdominalis m. pectoralis majoris','Abdominal part of the pectoralis major muscle',3,9,0,0,'Lamina anterior vaginae m. Recti abdominis','Crista tuberculi majoris humeri','Adductio brachii, rotatio interna brachii','18',0,0,'mpectoralismajor.png','',''),(52,'M. pectoralis minor','Pectoralis minor muscle',3,9,0,0,'Facies externae costarum II-V','Processus coracoideus scapulae','Pulls shoulder forward and downward. Acts as inspiration muscle.','18',0,0,'mpectoralisminor.png','',''),(53,'M. subclavius','Subclavius muscle',3,9,0,0,'Facies superior costae I','Facies inferior claviculae','Elevates the 1st rib or pulls clavicula downward. Acts as inspiration muscle.','19',0,0,'msubclavius.png','',''),(54,'M. serratus anterior','Serratus anterior muscle',3,9,0,0,'Facies externa costae I-IX','Margo medialis et angulus inferior scapulae','Rotatio scapulae et elevatio brachii. Acts as inspiration muscle.','20',0,0,'mserratusanterior.png','',''),(55,'M. trapezius','Trapezius muscle',3,16,5,0,'Protuberantia occipitalis externa, linea nuchalis superior, log. nuchae, processus spinosi vertebrarum thoraciae','Spina scapulae, acromion, extremitas acromialis claviculae','Pulls the scapula toward the vertebral column; upper part elevates the shoulder; lower part pulls the shoulder downward.','13',0,0,'mtrapezius.png','Trapezius Gray409 by Mikael Häggström.When using this image in external works, it may be cited as follows:Häggström, Mikael. \"Medical gallery of Mikael Häggström 2014\". Wikiversity Journal of Medicine 1 (2). DOI:10.15347/wjm/2014.008. ISSN 20018762. - Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Trapezius_Gray409.PNG#mediaviewer/File:Trapezius_Gray409.PNG',''),(56,'M. latissimus dorsi','Latissimus dorsi muscle',3,16,5,0,'Crista iliaca, fascia thoracolumbalis, processus spinosus vertebrae thoracicae VII-XII, facies externae costae IX-XII','Crista tuberculi minoris humeri','Adductio brachii, extensio brachii, rotatio interna brachii. Acts as inspiration muscle.','21',0,0,'mlatissumusdorsi.png','Latissimus dorsi by User:Mikael Häggström - Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Latissimus_dorsi.PNG#mediaviewer/File:Latissimus_dorsi.PNG',''),(57,'M. rhomboideus major','Rhomboideus major muscle',3,16,6,0,'Processus spinosus vertebrae thoracicae I-IV','Margo medialis scapulae','Elevates the scapula and pulls the scapula toward the vertebral column.','22',0,0,'mrhomboideusmajor.png','Rhomboideus major by modified by Uwe Gille - Gray Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Rhomboideus_major.png#mediaviewer/File:Rhomboideus_major.png',''),(58,'M. rhomboideus minor','Rhomboideus minor muscle',3,16,6,0,'Processus spinosus vertebrae cervicalis VI-VII, vertebrae thoracicae I, lig. nuchae','Margo medialis scapulae','Elevates the scapula and pulls the scapula toward the vertebral column.','22',0,0,'mrhomboideusminor.png','Rhomboideus minor by modified by Uwe Gille - Gray Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Rhomboideus_minor.png#mediaviewer/File:Rhomboideus_minor.png',''),(59,'M. levator scapulae','Levator scapulae muscle',3,16,6,0,'Processus tranversus vertebrae cervicalis I-IV','Angulus superior scapulae','Elevates the scapula.','22',0,0,'mlevatorscapulae.png','Levator scapulae by modified by Uwe Gille - Gray Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Levator_scapulae.png#mediaviewer/File:Levator_scapulae.png',''),(60,'M. serratus posterior superior','Serratus posterior superior muscle',3,16,7,0,'Processus spinosus vertebrae cervicalis VI-VII, vertebrae thoracicae I-II','Facies externae costae II-V','Elevates the ribs; acts as inspiration muscle.','23',0,0,'mserratusposteriorsuperior.png','By Anatomography (en:Anatomography (setting page of this image)) [CC-BY-SA-2.1-jp (http://creativecommons.org/licenses/by-sa/2.1/jp/deed.en)], via Wikimedia Commons',''),(61,'M. serratus posterior inferior','Serratus posterior inferior muscle',3,16,7,0,'Processus spinosus vertebrae thoracicae XI-XII, vertebrae lumbales I-II','Facies externae costae IX-XII','Pulls the ribs downward; acts as expiration muscle.','23',0,0,'mserratusposteriorinferior.png','Serratus posterior by User:Mikael Häggström - Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Serratus_posterior.PNG#mediaviewer/File:Serratus_posterior.PNG',''),(62,'Pars clavicularis m. deltoidei','Clavicular part of the deltoid muscle',4,12,0,0,'Extremitas acromialis claviculae','Tuberositas deltoidea','Adductio brachii, flexio brachii, rotatio interna brachii','24',0,0,'mdeltoideus.png','\"Deltoid muscle top10\" by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Deltoid_muscle_top10.png#mediaviewer/File:Deltoid_muscle_top10.png',''),(63,'Pars acromialis m. deltoidei','Acromial part of the deltoid muscle',4,12,0,0,'Acromion','Tuberositas deltoidea','Abduction brachii, flexio brachii, extensio brachii','24',0,0,'mdeltoideus.png','\"Deltoid muscle top10\" by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Deltoid_muscle_top10.png#mediaviewer/File:Deltoid_muscle_top10.png',''),(64,'Pars spinalis m. deltoidei','Spinal part of the deltoid muscle',4,12,0,0,'Spina scapulae','Tuberositas deltoidea','Adductio brachii, extensio brachii, rotatio externa brachii','24',0,0,'mdeltoideus.png','\"Deltoid muscle top10\" by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Deltoid_muscle_top10.png#mediaviewer/File:Deltoid_muscle_top10.png',''),(65,'M. supraspinatus','Supraspinatus muscle',4,12,0,0,'Fossa supraspinata','Tuberculum majus humeri','Abductio brachii','25',0,0,'msupraspinatus.png','Supraspinatus muscle back4 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Supraspinatus_muscle_back4.png#mediaviewer/File:Supraspinatus_muscle_back4.png',''),(66,'M. infraspinatus','Infraspinatus muscle',4,12,0,0,'Fossa infraspinata','Tuberculum majus humeri','Rotatio externa brachii','25',0,0,'minfraspinatus.png','Infraspinatus by Mikael Häggström.When using this image in external works, it may be cited as follows:Häggström, Mikael. \"Medical gallery of Mikael Häggström 2014\". Wikiversity Journal of Medicine 1 (2). DOI:10.15347/wjm/2014.008. ISSN 20018762. - Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Infraspinatus.PNG#mediaviewer/File:Infraspinatus.PNG',''),(67,'M. teres major','Teres major muscle',4,12,0,0,'Angulus inferior scapulae','Crista tuberculi minoris humeri','Adductio brachii, extensio brachii, rotatio interna brachii','26',0,0,'mteresmajor.png','Teres major muscle back by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Teres_major_muscle_back.png#mediaviewer/File:Teres_major_muscle_back.png',''),(68,'M. teres minor','Teres minor muscle',4,12,0,0,'Margo lateralis scapulae','Tuberculum majus humeri','Rotatio externa brachii, extensio brachii','24',0,0,'mteresminor.png','Teres minor muscle back3 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Teres_minor_muscle_back3.png#mediaviewer/File:Teres_minor_muscle_back3.png',''),(69,'M. subscapularis','Subscapularis muscle',4,12,0,0,'Fossa subscapularis','Tuberculum minus humeri, crista tuberculi minoris','Adductio brachii, rotatio interna brachii','26',0,0,'msubscapularis.png','Subscapularis muscle frontal by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Subscapularis_muscle_frontal.png#mediaviewer/File:Subscapularis_muscle_frontal.png',''),(70,'M. coracobrachialis','Coracobrachalis muscle',4,13,8,0,'Processus coracoideus scapulae','Corpus humeri','Flexio brachii, adductio brachii, rotatio interna brachii','27',0,0,'mcoracobrachalis.png','Biceps brachii muscle06 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Biceps_brachii_muscle06.png#mediaviewer/File:Biceps_brachii_muscle06.png',''),(71,'Caput longum m. biceptis brachii','Long head of the biceps muscle',4,13,8,0,'Tuberculum supraglenoidale scapulae','Tuberositas radii','Flexio antebrachii, suptionatio antebrachii, abductio brachii','27',0,0,'mbicepsbrachii.png','Biceps brachii muscle06 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Biceps_brachii_muscle06.png#mediaviewer/File:Biceps_brachii_muscle06.png',''),(72,'Caput breve m. biceptis brachii','Short head of the biceps muscle',4,13,8,0,'Processus coracoideus scapulae','Tuberositas radii','Flexio antebrachii, suptionatio antebrachii, flexio brachii','27',0,0,'mbicepsbrachii.png','Brachialis muscle11 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Brachialis_muscle11.png#mediaviewer/File:Brachialis_muscle11.png',''),(73,'M. brachialis','Brachialis muscle',4,13,8,0,'Humerus, lower part of facies anterior','Tuberositas ulnae','Flexio antebrachii','27',0,0,'mbrachialis.png','\"Brachialis muscle11\" by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Brachialis_muscle11.png#mediaviewer/File:Brachialis_muscle11.png',''),(74,'Caput longum m. triceptis brachii','Long head of the triceps muscle',4,13,9,0,'Tuberculum infraglenoidale scapulae','Olecranon ulnae','Extensio antebrachii, extensio brachii, adductio brachii','28',0,0,'mtricepsbrachii.png','Triceps brachii muscle06 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Triceps_brachii_muscle06.png#mediaviewer/File:Triceps_brachii_muscle06.png','Red'),(75,'Caput laterale m. triceptis brachii','Lateral head of the triceps muscle',4,13,9,0,'Humerus, above sulcus n. radialis','Olecranon ulnae','Extensio antebrachii','28',0,0,'mtricepsbrachii.png','Triceps brachii muscle06 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Triceps_brachii_muscle06.png#mediaviewer/File:Triceps_brachii_muscle06.png','Yellow'),(76,'Caput mediale m. triceptis brachii','Medial head of the triceps muscle',4,13,9,0,'Humerus, below sulcus n. radialis','Olecranon ulnae','Extensio antebrachii','28',0,0,'mtricepsbrachii.png','Triceps brachii muscle06 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Triceps_brachii_muscle06.png#mediaviewer/File:Triceps_brachii_muscle06.png','Green'),(77,'M. anconeus','Anconeus muscle',4,13,9,0,'Epicondylus lateralis humeri','Epiphysis proximalis ulnae','Extensio antebrachii','28',0,0,'manconeus.png','Musculusanconeus2 by ???????? - Own work. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Musculusanconeus2.png#mediaviewer/File:Musculusanconeus2.png',''),(78,'M. pronator teres','Pronator teres muscle',4,14,10,1,'Epicondylus medialis humeri, processus coronoideus ulnae','Facies posterior et lateralis radii','Flexi antebrachii, pronatio antebrachii','29',0,0,'mpronatorteres.png','',''),(80,'M. flexor carpi radialis','Epicondylus medialis humeri, fascia antebrachii',4,14,10,1,'Epicondylus medialis humeri, processus coronoideus ulnae','Basis ossis metacarpalis II et III','Flexio manus, abductio manus','29',0,0,'mflexorcarpiradialis.png','',''),(81,'M. palmaris longus','Palmaris longus muscle',4,14,10,1,'Epicondylus medalis humeri','Aponeurosis palmaris','Flexio manus','29',0,0,'mpalmarislongus.png','',''),(82,'M. flexor carpi ulnaris','Flexor carpi ulnaris muscle',4,14,10,1,'Epicondylus medialis humeri, olecranon, margo posterior ulnae','Os pisiforme, os hamatum, os metacarpale V','Flexio manus, adductio manus','30',0,0,'mflexorcarpriulnaris.png','',''),(83,'M. flexor digitorum superficialis','Flexor digitorum superficialis',4,14,10,2,'Epicondylus medalis humeri','Basis phalangis mediae II-V','Flexio phalangis mediae, flexio phalangis proximalis, flexio manus','0',0,0,'mflexordigitorumsuperficialis.png','',''),(84,'M. flexor digitorum profundus','Flexor digitorum profundus',4,14,10,3,'Facies anterior ulnae, membrana interossea antebrachii','Basis phalangis distalis II-V','Flexio phalangis distalis, flexio phalangis mediae, flexio phalangis proximalis, flexio manus','0',0,0,'mflexordigitorumprofundus.png','',''),(85,'M. flexor pollicis longus','Flexor pollicis longus muscle',4,14,10,3,'Facies anterior radii, membrana interossea antebrachii','Basis phalangis distalis pollicis','Flaxio phalangis distalis et proximalis pollicis, flexio poliicis, flexio manus','0',0,0,'mflexorpollicislongus.png','',''),(86,'M. pronator quadratus','Pronator quadratus muscle',4,14,10,4,'Facies anterior ulnae','Facies anterior radii','Pronatio antebrachii','0',0,0,'mpronatorquadratus.png','',''),(87,'M. brachioradialis','Brachioradialis muscle',4,14,11,0,'Margo lateralis humeri, septum intermusculare laterale','Processus styloideus radii','Flexio antebrachii, position between supinatio et pronatio antebrachii','0',0,0,'mbrachioradialis.png','',''),(88,'M. extensor carpi radialis longus','Margo et epicondylus lateralis humeri, septum intermusculare laterale',4,14,11,0,'Margo lateralis humeri, septum intermusculare laterale','Basis ossis metacarpalis II','Extensio manus, abductio manus','0',0,0,'mextensorcarpiradialislongus.png','',''),(89,'M. extensor carpi radialis brevis','Extensor carpi radialis brevis muscle',4,14,11,0,'Epicondylus lateralis humeri','Basis ossis metacarpalis III','Extensio manus, abductio manus','0',0,0,'mextensorcarpiradialisbrevis.png','',''),(90,'M. extensor digitorum','Extensor digitorum muscle',4,14,12,5,'Epicondylus lateralis humeri','Basis phalangis mediae, basis phalangis distalis (II - V fingers) ','Extensio digitorum, extensio manus ','0',0,0,'mextensordigitorum.png','',''),(91,'M. extensor digiti minimi','Epicondylus lateralis humeri ',4,14,12,5,'Epicondylus lateralis humeri','Basis phalangis mediae, basis phalangis distalis (V finger)','Extensio digiti minimi ','0',0,0,'mextensordigitiminimi.png','',''),(92,'M. extensor carpi ulnaris','Extenosr carpi ulnaris muscle',4,14,12,5,'Epicondylus lateralis humeri, olecranon, facies posterior ulnae','Basis ossis metacarpalis V ','Extensio manus, adductio manus ','0',0,0,'mextensorcarpiulnaris.png','',''),(93,'M. abductor pollicis longus','Abductor pollicis longus muscle',4,14,12,6,'Facies posterior ulnae et radii, membrana interossea antebrachii ','Basis ossis metacarpalis I ','Abductio pollicis ','0',0,0,'mabductorpollicislongus.png','',''),(94,'M. extensor pollicis brevis','Extensor pollicis brevis muscle',4,14,12,6,'Facies posterior radii et membrana interossea antebrachii ','Basis phalangis proximalis pollicis ','Extensio phalangis proximalis pollicis ','0',0,0,'mextensorpollicisbrevis.png','',''),(95,'M. extensor pollicis longus','Extensor pollicis longus muscle',4,14,12,6,'Facies posterior ulnae, membrana interossea antebrachii ','Basis phalangis distalis pollicis ','Extensio pollicis','0',0,0,'mextensorpollicislongus.png','',''),(96,'M. extensor indicis','Extensor indicis muscle',4,14,12,6,'Facies posterior ulnae, membrana interossea antebrachii ','Basis phalangis mediae, basis phalangis distalis indicis ','Extensio indicis ','0',0,0,'mextensorindicis.png','',''),(97,'M. supinator','Supinator muscle',4,14,12,6,'Epicondylus lateralis humeri, ulna, lig. collaterale radiale ','Facies lateralis radii ','Supinatio antebrachii ','0',0,0,'msupinator.png','','');
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
  `parent_nerve` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nerves`
--

LOCK TABLES `tbl_nerves` WRITE;
/*!40000 ALTER TABLE `tbl_nerves` DISABLE KEYS */;
INSERT INTO `tbl_nerves` (`id`, `lat_name`, `name`, `parent_nerve`) VALUES (1,'Nn. temporales profundi','Deep temporal nerves','N. mandibularis'),(2,'N. mandibularis','Mandibular nerve','N. trigeminus'),(3,'N. pterygoideus lateralis','Lateral pterygoid nerve','0'),(4,'N. auricularis posterior','Posterior auricular nerve','0'),(5,'N. facialis','Facial nerve','0'),(6,'Rr. buccales n. facialis','Buccal branch of the facial nerve','0'),(7,'Rr. zygomatici n. facialis','Zygomatic branches of the facial nerve','0'),(8,'R. marginalis mandibularis n. facialis','Marginal mandibular branch of the facial nerve','0'),(9,'Rr. temporales n. facialis','Temporal branches of the facial nerve','0'),(10,'N. alveolaris inferior','Inferior alveolar nerve',''),(11,'R. digastricus n. facialis','Digastric branch of the facial nerve','N. facialis'),(12,'R. colli n. facialis','Cervical branch of the facial nerve','N. facialis'),(13,'R. externus n. accessorii','External branch of accessory nerve','N. accessorius'),(14,'Ansa cervicalis','Ansa cervicalis',''),(15,'Plexus cervicalis et brachalis C3-6','Cervical and brachial plexus C3-6',''),(16,'Plexus cervicalis','Cervical plexus',''),(17,'R. ventralis C1','Ventral branch of C1',''),(18,'Nn. pectorales (lateralis et medialis)','Lateral and medial pectoral nerve',''),(19,'N. subclavius','Subclavian nerve',''),(20,'N. thoracicus longus','Long thoracic nerve',''),(21,'N. thoracodorsalis','Thoracodorsal nerve',''),(22,'N. dorsalis scapulae','Dorsal scapular nerve',''),(23,'Nn. intercostales','Intercostal nerves',''),(24,'N. axillaris','Axillary nerve',''),(25,'N. suprascapularis','Suprascapular nerve',''),(26,'N. subscapularis','Subscapular nerve',''),(27,'N. musculocutaneus','Musculocutaneous nerve',''),(28,'Rr. musculares n. radialis','Muscular branches of the radial nerve',''),(29,'Rr. musculares n. mediani','Muscular branches of the median nerve',''),(30,'Rr. musculares n. ulnaris','Muscular branches of the ulnar nerve','');
/*!40000 ALTER TABLE `tbl_nerves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_veins`
--

DROP TABLE IF EXISTS `tbl_veins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_veins` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `lat_name` text NOT NULL,
  `name` text NOT NULL,
  `parent` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_veins`
--

LOCK TABLES `tbl_veins` WRITE;
/*!40000 ALTER TABLE `tbl_veins` DISABLE KEYS */;
INSERT INTO `tbl_veins` (`id`, `lat_name`, `name`, `parent`) VALUES (1,'V. temporalis superficialis','Superficial temporal vein','V. retromandibularis'),(2,'Plexus pterygoideus','Pterygoid plexus','');
/*!40000 ALTER TABLE `tbl_veins` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-15 19:39:01
