-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 01, 2014 at 01:51 PM
-- Server version: 5.5.31-0ubuntu0.12.04.1
-- PHP Version: 5.3.10-1ubuntu3.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_muscles`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_muscles`
--

CREATE TABLE IF NOT EXISTS `tbl_muscles` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'ID for muscle',
  `lat_name` text NOT NULL COMMENT 'Latin name',
  `name` text NOT NULL COMMENT 'Name (English) for muscle',
  `muscle_group` int(3) NOT NULL,
  `muscle_subgroup` int(3) NOT NULL,
  `muscle_subsubgroup` int(3) NOT NULL,
  `origo` text NOT NULL,
  `insertio` text NOT NULL,
  `functio` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_muscles`
--

INSERT INTO `tbl_muscles` (`id`, `lat_name`, `name`, `muscle_group`, `muscle_subgroup`, `muscle_subsubgroup`, `origo`, `insertio`, `functio`, `comment`) VALUES
(1, 'M. temporalis', '', 1, 1, 0, 'Planum temporale, fascia temporalis', 'Processus coronoideus mandibulae', 'Elevation of the mandible; posterior fibers pull the mandible backward', ''),
(2, 'M. masseter', '', 1, 1, 0, 'Arcus zygomaticus', 'Tuberositas masseterica mandibulae', 'Elevation of the mandible', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_muscle_groups`
--

CREATE TABLE IF NOT EXISTS `tbl_muscle_groups` (
  `id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'ID, auto increment, unique',
  `lat_name` text NOT NULL COMMENT 'Latin name for muscle group',
  `name` text NOT NULL COMMENT 'Name (English) for muscle group',
  `explanation` text NOT NULL COMMENT 'Explanation for muscle group',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Muscle groups (Mm. capitis, Mm. collie, etc)' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_muscle_groups`
--

INSERT INTO `tbl_muscle_groups` (`id`, `lat_name`, `name`, `explanation`) VALUES
(1, 'Mm. capitis', 'Muscles of the head', 'Includes masticatoy and mimetic muscles, 1st and 2nd visceral arch'),
(2, 'Mm. colli', 'Muscles of the neck', 'Muscles of the neck'),
(3, 'Mm. thoracis', 'Muscles of the thorax', 'NULL'),
(4, 'Upper limb', 'Upper limb', 'NULL'),
(5, 'Lower limp', 'Lower limb', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_muscle_subgroups`
--

CREATE TABLE IF NOT EXISTS `tbl_muscle_subgroups` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `lat_name` text NOT NULL COMMENT 'Latin name for muscle subgroup',
  `name` text NOT NULL COMMENT 'Name (English) for muscle subgroup',
  `muscle_group` int(3) NOT NULL COMMENT 'Indicates which muscle group the subgroup is attached to',
  `explanation` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Muscle subgroups (i.e. M. masticatorii, M. faciei)' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_muscle_subgroups`
--

INSERT INTO `tbl_muscle_subgroups` (`id`, `lat_name`, `name`, `muscle_group`, `explanation`) VALUES
(1, 'M. masticatorii', 'Masticatory muscles', 1, 'Derivates of the 1st visceral arch'),
(2, 'M. faciei', 'Facial (mimetic muscles)', 1, 'Derivates of the 2nd visceral arch');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_muscle_subsubgroups`
--

CREATE TABLE IF NOT EXISTS `tbl_muscle_subsubgroups` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `lat_name` text NOT NULL,
  `name` text NOT NULL,
  `muscle_group` text NOT NULL,
  `muscle_subgroup` text NOT NULL,
  `explanation` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_muscle_subsubgroups`
--

INSERT INTO `tbl_muscle_subsubgroups` (`id`, `lat_name`, `name`, `muscle_group`, `muscle_subgroup`, `explanation`) VALUES
(1, 'Muscles of the scalp and around the eye opening', '', '1', '2', 'NULL'),
(2, 'Muscles of the nose opening', '', '1', '2', 'NULL'),
(3, 'Muscles of the mouth opening', '', '1', '2', 'NULL'),
(4, 'Muscles of the nose opening', '', '1', '2', 'NULL'),
(5, 'Muscles of the ear opening', '', '1', '2', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
