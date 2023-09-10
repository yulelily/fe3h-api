-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: fe3h_api
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `base_skill_levels`
--

DROP TABLE IF EXISTS `base_skill_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_skill_levels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `sword` varchar(4) DEFAULT NULL,
  `lance` varchar(4) DEFAULT NULL,
  `axe` varchar(4) DEFAULT NULL,
  `bow` varchar(4) DEFAULT NULL,
  `brawl` varchar(4) DEFAULT NULL,
  `reason` varchar(4) DEFAULT NULL,
  `faith` varchar(4) DEFAULT NULL,
  `authority` varchar(4) DEFAULT NULL,
  `heavyArmor` varchar(4) DEFAULT NULL,
  `riding` varchar(4) DEFAULT NULL,
  `flying` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `base_skill_levels_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_skill_levels`
--

LOCK TABLES `base_skill_levels` WRITE;
/*!40000 ALTER TABLE `base_skill_levels` DISABLE KEYS */;
INSERT INTO `base_skill_levels` VALUES (1,1,'E+','E','E','D','E','E','E','D','E','E+','E+'),(2,2,'E','E+','D','E','E','E','E','E','E','E','E'),(3,3,'E','D','E','E','E','E+','E','E','E','D','E'),(4,4,'E','E','E+','E','D','E','E','E','D','E','E'),(5,5,'E+','E','E','D','E','E','E','E+','E','E','E'),(6,6,'E','E','E','E','E','D','E+','E+','E','E','E'),(7,7,'E+','E','E','E','E','E','D+','E','E','E','E'),(8,8,'E','D+','E','E+','E','E','E','E','E','E+','E'),(9,9,'E+','D+','E','E','E','E','E','D','E','D+','E'),(10,10,'E','E+','D+','E','E+','E','E','E','D','E','E'),(11,11,'D','E','E','E+','E+','E','E','E','E','E','E'),(12,12,'E','E','E+','D','E','E','E','E','E','E','E'),(13,13,'E','D','D','E','E','E','E','E','E','D','E'),(14,14,'E','E','E','E','E','E+','D','E','E','E','E'),(15,15,'E','E','E+','E','E','D+','E','E+','E','E','E'),(16,16,'E+','D','E','E','E','E','E','E','E','D','D'),(17,17,'E+','E','D','E','E','E','E','D','D','E','E'),(18,18,'E','E','E','E+','E','D','E','E+','E','E','E'),(19,19,'E+','D','E+','E','E','E','E','E','E','D','E'),(20,20,'E','E','E','E','E','E+','D+','E','E','E','E'),(21,21,'E','E','D','E','E+','E','E','E','E','E','E'),(22,22,'E','E+','E','D','E','E','E','E','E','E','E'),(23,23,'E+','E','E','E','E','D','E','E','E','E','E'),(24,24,'D+','E','E+','E+','E','E','E','E','E','E','D'),(25,25,'B','A','E','E','D+','E','E','B','E','B','E'),(26,26,'D+','E','E','E','E+','E','E','D','E','E','E'),(27,27,'D+','C','C','E','E','E','E','C','E','E','C'),(28,28,'E','E+','E','E','E','E','D+','E','E','E','D'),(29,29,'E','E','E','D','E','C','E','D','E','D','E'),(30,30,'D','E','E','E','E','E','C','E','E','E','D'),(31,31,'E','C','C','E','E','E','E','D+','D','C','E'),(32,32,'E','E','C','E','D+','E','E','C','C','E','E'),(33,33,'B','E','E','E','D+','E','E','D','E','E','E'),(34,34,'E','D+','E','B','E','E','E','D','E','E','E'),(35,35,'E','E','D+','D','E','E','E','E','E','E','E'),(36,36,'D','E','E+','E+','E','E','E+','E','E','E','E'),(37,37,'D','E','E','E','E','E+','D','D','E','E','E'),(38,38,'E+','E','D','E','D+','E','E','E+','E','E','E'),(39,39,'E+','E','E','E','E','D','E','E','E','E','D'),(40,40,'E+','E','E','E','E','D','E','E','E','D','E');
/*!40000 ALTER TABLE `base_skill_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_stats`
--

DROP TABLE IF EXISTS `base_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `health` int DEFAULT NULL,
  `strength` int DEFAULT NULL,
  `magic` int DEFAULT NULL,
  `dexterity` int DEFAULT NULL,
  `speed` int DEFAULT NULL,
  `luck` int DEFAULT NULL,
  `defense` int DEFAULT NULL,
  `resistance` int DEFAULT NULL,
  `charm` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `base_stats_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_stats`
--

LOCK TABLES `base_stats` WRITE;
/*!40000 ALTER TABLE `base_stats` DISABLE KEYS */;
INSERT INTO `base_stats` VALUES (1,1,26,11,5,8,8,7,6,4,8),(2,2,29,10,5,5,8,6,6,3,7),(3,3,28,8,7,6,7,5,6,6,3),(4,4,30,11,3,5,6,6,7,1,4),(5,5,25,8,5,7,8,8,4,6,4),(6,6,22,4,11,7,7,4,3,4,5),(7,7,23,5,11,6,7,6,4,8,7),(8,8,26,9,5,8,9,6,7,2,7),(9,9,28,12,4,7,7,5,7,4,9),(10,10,30,12,2,5,7,5,8,1,4),(11,11,26,10,5,6,9,5,5,3,5),(12,12,23,8,5,8,9,6,5,6,5),(13,13,27,9,5,5,8,6,6,2,7),(14,14,25,6,10,6,8,5,5,9,8),(15,15,23,6,11,7,7,6,5,4,6),(16,16,27,8,6,6,8,6,5,8,8),(17,17,29,13,6,5,8,5,6,4,10),(18,18,22,6,12,6,7,6,4,7,6),(19,19,28,8,5,6,8,6,6,2,7),(20,20,24,5,10,6,5,7,5,9,3),(21,21,26,9,3,5,6,8,6,2,4),(22,22,25,8,5,7,7,5,4,2,6),(23,23,24,5,11,6,7,6,4,7,8),(24,24,25,9,3,7,10,7,5,2,6),(25,25,30,8,6,6,8,4,7,5,3),(26,26,27,13,6,9,8,8,6,6,7),(27,27,27,9,8,8,5,6,6,4,9),(28,28,24,6,9,6,5,4,5,10,9),(29,29,25,6,10,6,6,4,5,7,5),(30,30,26,10,8,6,8,6,5,4,7),(31,31,30,9,4,6,5,4,5,2,6),(32,32,28,9,4,5,6,5,5,2,7),(33,33,27,8,5,6,7,6,5,2,4),(34,34,26,8,4,7,6,8,5,2,6),(35,35,24,7,4,6,6,6,5,2,4),(36,36,26,7,7,7,7,7,5,7,7),(37,37,24,10,6,7,9,7,5,7,8),(38,38,28,11,5,4,7,3,7,4,4),(39,39,23,5,11,6,6,4,3,4,6),(40,40,26,6,11,8,6,4,4,7,4);
/*!40000 ALTER TABLE `base_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_stats_seq`
--

DROP TABLE IF EXISTS `base_stats_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_stats_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_stats_seq`
--

LOCK TABLES `base_stats_seq` WRITE;
/*!40000 ALTER TABLE `base_stats_seq` DISABLE KEYS */;
INSERT INTO `base_stats_seq` VALUES (1);
/*!40000 ALTER TABLE `base_stats_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boons_banes`
--

DROP TABLE IF EXISTS `boons_banes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boons_banes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `sword` varchar(4) DEFAULT NULL,
  `lance` varchar(4) DEFAULT NULL,
  `axe` varchar(4) DEFAULT NULL,
  `bow` varchar(4) DEFAULT NULL,
  `brawl` varchar(4) DEFAULT NULL,
  `reason` varchar(4) DEFAULT NULL,
  `faith` varchar(4) DEFAULT NULL,
  `authority` varchar(4) DEFAULT NULL,
  `heavyArmor` varchar(4) DEFAULT NULL,
  `riding` varchar(4) DEFAULT NULL,
  `flying` varchar(4) DEFAULT NULL,
  `budding` varchar(10) DEFAULT NULL,
  `budding_talent` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `boons_banes_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boons_banes`
--

LOCK TABLES `boons_banes` WRITE;
/*!40000 ALTER TABLE `boons_banes` DISABLE KEYS */;
INSERT INTO `boons_banes` VALUES (1,1,'Boon','Bane','None','Boon','None','None','Bane','Boon','None','None','Boon','Axe','Diamond Axe'),(2,2,'None','Boon','Boon','None','None','None','Bane','Bane','None','None','None','HeavyArmor','Seal Speed'),(3,3,'None','Boon','None','None','Bane','Boon','None','None','None','Boon','None','None','None'),(4,4,'None','None','Boon','Bane','Boon','Bane','None','None','Boon','Bane','None','None','None'),(5,5,'Boon','None','None','Boon','None','None','None','Boon','None','None','Bane','Reason','Seal Strength'),(6,6,'Bane','Bane','Bane','None','None','Boon','Boon','Boon','Bane','None','None','Sword','Soulblade'),(7,7,'Boon','None','None','None','Bane','None','Boon','None','Bane','Boon','Boon','Lance','Frozen Lance'),(8,8,'None','Boon','None','Boon','None','None','None','None','None','Boon','None','None','None'),(9,9,'Boon','Boon','Bane','None','None','Bane','None','Boon','None','None','None','Riding','Seal Movement'),(10,10,'None','Boon','Boon','None','Boon','None','Bane','None','Boon','Bane','Bane','None','None'),(11,11,'Boon','None','None','Boon','Boon','Bane','None','Bane','None','None','None','Reason','Black Magic Crit +10'),(12,12,'None','None','Boon','Boon','None','Bane','None','None','None','None','None','Lance','Shatter Smash'),(13,13,'None','Boon','Boon','Bane','None','None','None','None','None','Boon','None','Reason','Black Magic Avoid +20'),(14,14,'Bane','Bane','Bane','None','None','Boon','Boon','None','Bane','None','None','Bow','Waning Shot'),(15,15,'None','None','Boon','Bane','None','Boon','None','Boon','Bane','None','None','None','None'),(16,16,'Boon','Boon','None','None','None','None','None','None','None','Boon','Boon','None','None'),(17,17,'Boon','None','Boon','Bane','None','None','Bane','Boon','Boon','None','None','Reason','Black Magic Crit +10'),(18,18,'None','None','Bane','Boon','None','Boon','Bane','Boon','None','None','Bane','Lance','Frozen Lance'),(19,19,'Boon','Boon','Boon','None','None','None','None','None','None','Boon','None','HeavyArmor','Seal Speed'),(20,20,'None','None','Bane','None','Bane','Boon','Boon','None','None','None','None','None','None'),(21,21,'None','None','Boon','Bane','Boon','Bane','None','Bane','None','None','None','None','None'),(22,22,'Bane','Boon','Bane','Boon','Bane','None','None','None','Bane','None','None','Riding','Pass'),(23,23,'Boon','None','None','None','None','Boon','Bane','None','None','Bane','Bane','Faith','White Magic Avoid +20'),(24,24,'Boon','None','Boon','Boon','None','Bane','Bane','None','None','None','Boon','None','None'),(25,25,'Boon','Boon','None','None','Boon','None','Bane','Bane','None','Boon','None','Flying','Darting Blow'),(26,26,'Boon','None','None','None','Boon','None','None','Boon','None','None','None','Faith','White Magic Avoid +20'),(27,27,'Boon','Boon','Boon','None','None','None','None','Boon','None','Bane','Boon','None','None'),(28,28,'None','Boon','None','None','None','None','Boon','None','Bane','Bane','None','Reason','Seal Magic'),(29,29,'None','None','None','Boon','None','Boon','None','None','Bane','Boon','Bane','None','None'),(30,30,'Boon','None','None','None','None','Bane','Boon','None','Bane','None','Boon','None','None'),(31,31,'None','Boon','Boon','None','None','None','None','None','Boon','Boon','None','None','None'),(32,32,'None','None','Boon','None','Boon','Bane','None','None','Boon','None','Bane','None','None'),(33,33,'Boon','None','None','None','Boon','Bane','None','None','None','None','None','None','None'),(34,34,'None','Boon','None','Boon','None','None','Bane','None','None','None','None','None','None'),(35,35,'None','Boon','Boon','Boon','None','Bane','Bane','None','None','Boon','Boon','None','None'),(36,36,'Boon','None','Boon','Boon','None','Bane','Boon','Bane','None','None','None','Riding','Pass'),(37,37,'Boon','Bane','Bane','None','None','Boon','Boon','Boon','None','Bane','Bane','Bow','Deadeye'),(38,38,'Boon','Bane','Boon','Bane','Boon','None','Boon','None','Boon','None','Bane','Reason','Black Magic Crit +10'),(39,39,'Boon','None','Bane','None','None','Boon','None','Boon','Bane','None','Boon','Brawl','Mystic Blow'),(40,40,'None','None','None','None','Bane','Boon','None','Bane','Bane','Boon','Boon','Axe','Exhaustive Strike');
/*!40000 ALTER TABLE `boons_banes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_classes`
--

DROP TABLE IF EXISTS `default_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_classes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `starting_class` varchar(20) DEFAULT NULL,
  `beginner_class` varchar(20) DEFAULT NULL,
  `intermediate_class` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `default_classes_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_classes`
--

LOCK TABLES `default_classes` WRITE;
/*!40000 ALTER TABLE `default_classes` DISABLE KEYS */;
INSERT INTO `default_classes` VALUES (1,1,'Noble','Noble','Noble'),(2,2,'Noble','Fighter','Brigand'),(3,3,'Noble','Soldier','Cavalier'),(4,4,'Commoner','Fighter','Brawler'),(5,5,'Commoner','Fighter','Archer'),(6,6,'Noble','Monk','Mage'),(7,7,'Noble','Monk','Priest'),(8,8,'Commoner','Soldier','Cavalier'),(9,9,'Noble','Noble','Noble'),(10,10,'Commoner','Fighter','Armored Knight'),(11,11,'Noble','Myrmidon','Mercenary'),(12,12,'Commoner','Fighter','Archer'),(13,13,'Noble','Soldier','Cavalier'),(14,14,'Commoner','Monk','Priest'),(15,15,'Noble','Monk','Mage'),(16,16,'Noble','Soldier','Pegasus Knight'),(17,17,'Noble','Noble','Noble'),(18,18,'Noble','Monk','Mage'),(19,19,'Noble','Soldier','Cavalier'),(20,20,'Noble','Monk','Priest'),(21,21,'Noble','Fighter','Brigand'),(22,22,'Noble','Fighter','Archer'),(23,23,'Commoner','Monk','Mage'),(24,24,'Commoner','Myrmidon','Thief'),(25,25,'Death Knight','Death Knight','Death Knight'),(26,26,'Commoner','Commoner','Commoner'),(27,27,'Wyvern Rider','Wyvern Rider','Wyvern Rider'),(28,28,'Priest','Priest','Priest'),(29,29,'Mage','Mage','Mage'),(30,30,'Priest','Priest','Priest'),(31,31,'Fortress Knight','Fortress Knight','Fortress Knight'),(32,32,'Warrior','Warrior','Warrior'),(33,33,'Swordmaster','Swordmaster','Swordmaster'),(34,34,'Sniper','Sniper','Sniper'),(35,35,'Commoner','Commoner','Commoner'),(36,36,'Commoner','Myrmidon','Thief'),(37,37,'Commoner','Myrmidon','Thief'),(38,38,'Noble','Fighter','Brawler'),(39,39,'Noble','Monk','Mage'),(40,40,'Commoner','Monk','Mage');
/*!40000 ALTER TABLE `default_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependent_abilities`
--

DROP TABLE IF EXISTS `dependent_abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependent_abilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `ability_1` varchar(25) DEFAULT NULL,
  `req_1` varchar(2) DEFAULT NULL,
  `ability_2` varchar(25) DEFAULT NULL,
  `req_2` varchar(2) DEFAULT NULL,
  `ability_3` varchar(25) DEFAULT NULL,
  `req_3` varchar(2) DEFAULT NULL,
  `ability_4` varchar(25) DEFAULT NULL,
  `req_4` varchar(2) DEFAULT NULL,
  `ability_5` varchar(25) DEFAULT NULL,
  `req_5` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  KEY `ability_1_index` (`ability_1`),
  KEY `ability_2_index` (`ability_2`),
  KEY `ability_3_index` (`ability_3`),
  KEY `ability_4_index` (`ability_4`),
  KEY `ability_5_index` (`ability_5`),
  CONSTRAINT `dependent_abilities_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependent_abilities`
--

LOCK TABLES `dependent_abilities` WRITE;
/*!40000 ALTER TABLE `dependent_abilities` DISABLE KEYS */;
INSERT INTO `dependent_abilities` VALUES (1,1,'Battalion Desperation','C','Model Leader','C+','Battalion Wrath','A','Rally Charm','S','NA','NA'),(2,2,'Battalion Wrath','C','NA','NA','NA','NA','NA','NA','NA','NA'),(3,3,'Battalion Vantage','C','NA','NA','NA','NA','NA','NA','NA','NA'),(4,4,'Rally Strength','D','Battalion Wrath','C','NA','NA','NA','NA','NA','NA'),(5,5,'Rally Speed','D','Battalion Desperation','C','Rally Dexterity','C+','Battalion Vantage','A','Rally Strength','S'),(6,6,'Battalion Desperation','C','NA','NA','NA','NA','NA','NA','NA','NA'),(7,7,'Battalion Renewal','C','NA','NA','NA','NA','NA','NA','NA','NA'),(8,8,'Battalion Desperation','C','NA','NA','NA','NA','NA','NA','NA','NA'),(9,9,'Battalion Wrath','C','Model Leader','C+','Battalion Vantage','A','Rally Charm','S','NA','NA'),(10,10,'Battalion Wrath','C','NA','NA','NA','NA','NA','NA','NA','NA'),(11,11,'Battalion Vantage','C','NA','NA','NA','NA','NA','NA','NA','NA'),(12,12,'Battalion Desperation','C','NA','NA','NA','NA','NA','NA','NA','NA'),(13,13,'Battalion Vantage','C','NA','NA','NA','NA','NA','NA','NA','NA'),(14,14,'Battalion Renewal','C','NA','NA','NA','NA','NA','NA','NA','NA'),(15,15,'Rally Resistance','D','Battalion Renewal','C','Rally Speed','C+','Battalion Wrath','A','Rally Movement','S'),(16,16,'Rally Magic','D','Battalion Desperation','C','NA','NA','NA','NA','NA','NA'),(17,17,'Battalion Vantage','C','Model Leader','C+','Battalion Renewal','A','Rally Charm','S','NA','NA'),(18,18,'Rally Magic','D','Battalion Wrath','C','Rally Resistance','C+','Battalion Desperation','A','Rally Speed','S'),(19,19,'Rally Dexterity','D','Battalion Desperation','C','NA','NA','NA','NA','NA','NA'),(20,20,'Battalion Renewal','C','NA','NA','NA','NA','NA','NA','NA','NA'),(21,21,'Battalion Wrath','C','NA','NA','NA','NA','NA','NA','NA','NA'),(22,22,'Battalion Wrath','C','NA','NA','NA','NA','NA','NA','NA','NA'),(23,23,'Rally Charm','D','Battalion Desperation','C','NA','NA','NA','NA','NA','NA'),(24,24,'Battalion Wrath','C','NA','NA','NA','NA','NA','NA','NA','NA'),(25,25,'Battalion Wrath','C','Battalion Desperation','C','Mastermind','E+','NA','NA','NA','NA'),(26,26,'Battalion Vantage','C','Model Leader','C+','Battalion Desperation','A','Rally Movement','S','NA','NA'),(27,27,'Rally Defense','D','Battalion Wrath','C','Model Leader','C+','Battalion Desperation','A','Rally Resistance','S'),(28,28,'Rally Luck','D','Battalion Renewal','C','NA','NA','NA','NA','NA','NA'),(29,29,'Battalion Desperation','C','NA','NA','NA','NA','NA','NA','NA','NA'),(30,30,'Rally Charm','D','Battalion Renewal','C','NA','NA','NA','NA','NA','NA'),(31,31,'Rally Defense','D','Battalion Wrath','C','NA','NA','NA','NA','NA','NA'),(32,32,'Rally Strength','D','Battalion Wrath','C','NA','NA','NA','NA','NA','NA'),(33,33,'Battalion Vantage','C','NA','NA','NA','NA','NA','NA','NA','NA'),(34,34,'Battalion Desperation','C','NA','NA','NA','NA','NA','NA','NA','NA'),(35,35,'Battalion Desperation','C','NA','NA','NA','NA','NA','NA','NA','NA'),(36,36,'Rally Luck','D','Battalion Vantage','C','NA','NA','NA','NA','NA','NA'),(37,37,'Battalion Vantage','C','Model Leader','C+','NA','NA','NA','NA','NA','NA'),(38,38,'Rally Strength','D','Battalion Desperation','B','NA','NA','NA','NA','NA','NA'),(39,39,'Rally Magic','D','Rally Resistance','C','NA','NA','NA','NA','NA','NA'),(40,40,'Rally Dexterity','D','Battalion Wrath','C','NA','NA','NA','NA','NA','NA');
/*!40000 ALTER TABLE `dependent_abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependent_combat_arts`
--

DROP TABLE IF EXISTS `dependent_combat_arts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependent_combat_arts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `art_1` varchar(25) DEFAULT NULL,
  `req_1` varchar(2) DEFAULT NULL,
  `art_2` varchar(25) DEFAULT NULL,
  `req_2` varchar(2) DEFAULT NULL,
  `art_3` varchar(25) DEFAULT NULL,
  `req_3` varchar(2) DEFAULT NULL,
  `art_4` varchar(25) DEFAULT NULL,
  `req_4` varchar(2) DEFAULT NULL,
  `art_5` varchar(25) DEFAULT NULL,
  `req_5` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  KEY `art_1_index` (`art_1`),
  KEY `art_2_index` (`art_2`),
  KEY `art_3_index` (`art_3`),
  KEY `art_4_index` (`art_4`),
  KEY `art_5_index` (`art_5`),
  CONSTRAINT `dependent_combat_arts_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependent_combat_arts`
--

LOCK TABLES `dependent_combat_arts` WRITE;
/*!40000 ALTER TABLE `dependent_combat_arts` DISABLE KEYS */;
INSERT INTO `dependent_combat_arts` VALUES (1,1,'Bane of Monsters','C+','Finesse Blade','A','Monster Blast','C+','Encloser','A','NA','NA'),(2,2,'Shatter Slash','C+','Spike','C+','Diamond Axe','A','NA','NA','NA','NA'),(3,3,'Frozen Lance','C+','NA','NA','NA','NA','NA','NA','NA','NA'),(4,4,'Wild Abandon','C+','Monster Crusher','C+','Draining Blow','A','NA','NA','NA','NA'),(5,5,'Haze Slice','C+','Break Shot','C+','Ward Arrow','A','NA','NA','NA','NA'),(6,6,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA'),(7,7,'Soulblade','C+','NA','NA','NA','NA','NA','NA','NA','NA'),(8,8,'Monster Piercer','C+','Lance Jab','A','Break Shot','C+','Point-Blank Volley','A','NA','NA'),(9,9,'Sunder','C+','Windsweep','A','Monster Piercer','C+','Glowing Ember','A','NA','NA'),(10,10,'Vengeance','C+','Monster Breaker','C+','Armored Strike','A','One-Two Punch','C+','Mighty Blow','A'),(11,11,'Sunder','C+','Finesse Blade','A','Heavy Draw','C+','Nimble Combo','C+','Mystic Blow','A'),(12,12,'Focused Strike','C+','Deadeye','C+','Waning Shot','A','NA','NA','NA','NA'),(13,13,'Monster Piercer','C+','Swift Strikes','A','Spike','C+','Lightning Axe','A','NA','NA'),(14,14,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA'),(15,15,'Lightning Axe','C+','NA','NA','NA','NA','NA','NA','NA','NA'),(16,16,'Hexblade','A','Hit and Run','C','Frozen Lance','A','NA','NA','NA','NA'),(17,17,'Haze Strike','C+','Hexblade','A','Monster Breaker','C+','Lightning Axe','A','NA','NA'),(18,18,'Heavy Draw','C+','Schism Shot','A','NA','NA','NA','NA','NA','NA'),(19,19,'Sunder','C+','Shatter Slash','C+','Swift Strikes','A','Focused Strike','C+','Armored Strike','A'),(20,20,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA'),(21,21,'Wild Abandon','C+','Exhaustive Strike','A','Bombard','C+','Mighty Blow','A','NA','NA'),(22,22,'Vengeance','C+','Deadeye','C+','Encloser','A','NA','NA','NA','NA'),(23,23,'Hexblade','C+','NA','NA','NA','NA','NA','NA','NA','NA'),(24,24,'Bane of Monsters','C+','Finesse Blade','A','Wild Abandon','C+','Diamond Axe','A','Waning Shot','C+'),(25,25,'Haze Slice','C+','Windsweep','A','Nimble Combo','C+','Shatter Slash','C+','Glowing Ember','A'),(26,26,'Bane of Monsters','C+','Windsweep','A','Draining Blow','C+','Mystic Blow','A','NA','NA'),(27,27,'Haze Slice','C+','Focused Strike','C+','Diamond Axe','A','Monster Piercer','C+','Swift Strikes','A'),(28,28,'Hit and Run','C+','Frozen Lance','A','NA','NA','NA','NA','NA','NA'),(29,29,'Schism Shot','C+','Ward Arrow','A','NA','NA','NA','NA','NA','NA'),(30,30,'Hexblade','C+','NA','NA','NA','NA','NA','NA','NA','NA'),(31,31,'Shatter Slash','C+','Glowing Ember','A','Spike','C+','NA','NA','NA','NA'),(32,32,'Spike','C+','Exhaustive Strike','A','One-Two Punch','C+','Might Blow','A','NA','NA'),(33,33,'Bane of Monsters','C+','Finesse Blade','A','Nimble Combo','C+','Bombard','A','NA','NA'),(34,34,'Hit and Run','C+','Lance Jab','A','Heavy Draw','C+','Monster Blast','A','NA','NA'),(35,35,'Vengeance','C+','Lance Jab','A','Monster Breaker','C+','Armored Strike','A','Point-Blank Volley','C+'),(36,36,'Soulblade','C+','Hexblade','A','Break Shot','C+','Spike','C+','Armored Strike','A'),(37,37,'Windsweep','C+','Finesse Blade','A','NA','NA','NA','NA','NA','NA'),(38,38,'Bane of Monsters','C+','Diamond Axe','C+','Armored Strike','A','Draining Blow','C+','Mighty Blow','A'),(39,39,'Soulblade','C+','Hexblade','A','NA','NA','NA','NA','NA','NA'),(40,40,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA');
/*!40000 ALTER TABLE `dependent_combat_arts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faith_spells`
--

DROP TABLE IF EXISTS `faith_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faith_spells` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `spell_1` varchar(20) DEFAULT NULL,
  `req_1` varchar(2) DEFAULT NULL,
  `spell_2` varchar(20) DEFAULT NULL,
  `req_2` varchar(2) DEFAULT NULL,
  `spell_3` varchar(20) DEFAULT NULL,
  `req_3` varchar(2) DEFAULT NULL,
  `spell_4` varchar(20) DEFAULT NULL,
  `req_4` varchar(2) DEFAULT NULL,
  `spell_5` varchar(20) DEFAULT NULL,
  `req_5` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  KEY `spell_1_index` (`spell_1`),
  KEY `spell_2_index` (`spell_2`),
  KEY `spell_3_index` (`spell_3`),
  KEY `spell_4_index` (`spell_4`),
  KEY `spell_5_index` (`spell_5`),
  CONSTRAINT `faith_spells_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faith_spells`
--

LOCK TABLES `faith_spells` WRITE;
/*!40000 ALTER TABLE `faith_spells` DISABLE KEYS */;
INSERT INTO `faith_spells` VALUES (1,1,'Heal','D','Nosferatu','D+','Recover','C','Silence','A','NA','NA'),(2,2,'Heal','D','Nosferatu','D+','Recover','C','NA','NA','NA','NA'),(3,3,'Heal','D','Nosferatu','D+','Recover','C','Ward','B','NA','NA'),(4,4,'Heal','D','Nosferatu','D+','Recover','C','NA','NA','NA','NA'),(5,5,'Heal','D','Nosferatu','D+','Physic','C','Ward','B','NA','NA'),(6,6,'Heal','D','Nosferatu','D+','Seraphim','C','Warp','B','Abraxas','A'),(7,7,'Heal','D','Nosferatu','D+','Physic','C','Silence','B','Aura','A'),(8,8,'Heal','D','Nosferatu','D+','Physic','C','Restore','B','NA','NA'),(9,9,'Heal','D','Nosferatu','D+','Recover','C','Aura','A','NA','NA'),(10,10,'Heal','D','Nosferatu','D+','Recover','C','NA','NA','NA','NA'),(11,11,'Heal','D','Nosferatu','D+','Recover','C','Restore','B','NA','NA'),(12,12,'Heal','D','Nosferatu','D+','Physic','C','NA','NA','NA','NA'),(13,13,'Heal','D','Nosferatu','D+','Physic','C','Seraphim','B','NA','NA'),(14,14,'Heal','D','Nosferatu','D+','Physic','C','Restore','B','Fortify','A'),(15,15,'Heal','D','Nosferatu','D+','Recover','C','Abraxas','A','NA','NA'),(16,16,'Heal','D','Nosferatu','D+','Physic','C','Seraphim','B','NA','NA'),(17,17,'Heal','D','Nosferatu','D+','Recover','C','Seraphim','B','NA','NA'),(18,18,'Heal','D','Nosferatu','D+','Recover','C','NA','NA','NA','NA'),(19,19,'Heal','D','Nosferatu','D+','Ward','C','Restore','B','NA','NA'),(20,20,'Heal','D','Nosferatu','D+','Physic','C','Restore','B','Warp','A'),(21,21,'Heal','D','Nosferatu','D+','Recover','C','NA','NA','NA','NA'),(22,22,'Heal','D','Nosferatu','D+','Physic','C','Rescue','A','NA','NA'),(23,23,'Heal','D','Nosferatu','D+','Physic','C','NA','NA','NA','NA'),(24,24,'Heal','D','Nosferatu','D+','Restore','C','NA','NA','NA','NA'),(25,25,'Heal','D','Nosferatu','D+','Restore','C','NA','NA','NA','NA'),(26,26,'Heal','D','Nosferatu','D+','Recover','C','Aura','A','NA','NA'),(27,27,'Heal','D','Nosferatu','D+','Recover','C','NA','NA','NA','NA'),(28,28,'Heal','D','Nosferatu','D+','Restore','C','Rescue','B','Fortify','A'),(29,29,'Heal','D','Nosferatu','D+','Recover','C','Ward','B','NA','NA'),(30,30,'Heal','D','Nosferatu','D+','Ward','C','Silence','B','Warp','A'),(31,31,'Heal','D','Nosferatu','D+','Ward','C','NA','NA','NA','NA'),(32,32,'Heal','D','Nosferatu','D+','Recover','C','NA','NA','NA','NA'),(33,33,'Heal','D','Nosferatu','D+','Recover','C','NA','NA','NA','NA'),(34,34,'Heal','D','Nosferatu','D+','Physic','C','NA','NA','NA','NA'),(35,35,'Heal','D','Nosferatu','D+','Recover','C','NA','NA','NA','NA'),(36,36,'Heal','D','Nosferatu','D+','Ward','C','Rescue','B','NA','NA'),(37,37,'Heal','D','Nosferatu','D+','Recover','C','Silence','B','Aura','A'),(38,38,'Heal','D','Nosferatu','D+','Seraphim','B','Restore','A','NA','NA'),(39,39,'Heal','D','Nosferatu','D+','Ward','C','Rescue','B','Abraxas','A'),(40,40,'Heal','D','Nosferatu','D+','Physic','C','Seraphim','B','Warp','A');
/*!40000 ALTER TABLE `faith_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reason_spells`
--

DROP TABLE IF EXISTS `reason_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reason_spells` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `spell_1` varchar(20) DEFAULT NULL,
  `req_1` varchar(2) DEFAULT NULL,
  `spell_2` varchar(20) DEFAULT NULL,
  `req_2` varchar(2) DEFAULT NULL,
  `spell_3` varchar(20) DEFAULT NULL,
  `req_3` varchar(2) DEFAULT NULL,
  `spell_4` varchar(20) DEFAULT NULL,
  `req_4` varchar(2) DEFAULT NULL,
  `spell_5` varchar(20) DEFAULT NULL,
  `req_5` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  KEY `spell_1_index` (`spell_1`),
  KEY `spell_2_index` (`spell_2`),
  KEY `spell_3_index` (`spell_3`),
  KEY `spell_4_index` (`spell_4`),
  KEY `spell_5_index` (`spell_5`),
  CONSTRAINT `reason_spells_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reason_spells`
--

LOCK TABLES `reason_spells` WRITE;
/*!40000 ALTER TABLE `reason_spells` DISABLE KEYS */;
INSERT INTO `reason_spells` VALUES (1,1,'Wind','D','Sagittae','C','Cutting Gale','B','Excalibur','A','NA','NA'),(2,2,'Thunder','D','Thoron','C','Bolting','A','NA','NA','NA','NA'),(3,3,'Fire','D','Sagittae','C','Ragnarok','B','Agnea\'s Arrow','A','NA','NA'),(4,4,'Fire','D','Bolganone','C','NA','NA','NA','NA','NA','NA'),(5,5,'Blizzard','D','Cutting Gale','C','Fimbulvetr','A','NA','NA','NA','NA'),(6,6,'Miasma','D','Swarm','D+','Luna','C','Dark Spikes','B','Hades','A'),(7,7,'Blizzard','D','Thoron','C','Cutting Gale','B','Fimbulvetr','A','NA','NA'),(8,8,'Fire','D','Bolganone','C','Ragnarok','A','NA','NA','NA','NA'),(9,9,'Thunder','D','Thoron','C','NA','NA','NA','NA','NA','NA'),(10,10,'Fire','D','Bolganone','C','Ragnarok','A','NA','NA','NA','NA'),(11,11,'Thunder','D','Thoron','C','NA','NA','NA','NA','NA','NA'),(12,12,'Wind','D','Cutting Gale','C','NA','NA','NA','NA','NA','NA'),(13,13,'Fire','D','Bolganone','C','Sagittae','B','Ragnarok','A','NA','NA'),(14,14,'Fire','D','Thunder','D+','Bolganone','C','Ragnarok','A','NA','NA'),(15,15,'Wind','D','Cutting Gale','C','Sagittae','B','Excalibur','A','NA','NA'),(16,16,'Blizzard','D','Thoron','C','Fimbulvetr','A','NA','NA','NA','NA'),(17,17,'Fire','D','Bolganone','C','Luna','B','Hades','A','NA','NA'),(18,18,'Miasma','D','Mire','D+','Banshee','C','Death','B','Dark Spikes','A'),(19,19,'Thunder','D','Fire','D+','Thoron','C','Bolganone','B','NA','NA'),(20,20,'Wind','D','Fire','D+','Cutting Gale','C','Bolganone','B','Excalibur','A'),(21,21,'Fire','D','Bolganone','C','NA','NA','NA','NA','NA','NA'),(22,22,'Blizzard','D','Thunder','D+','Thoron','C','Fimbulvetr','A','NA','NA'),(23,23,'Thunder','D','Thoron','C','Sagittae','B','Meteor','A','Agnea\'s Arrow','A+'),(24,24,'Wind','D','Sagittae','C','NA','NA','NA','NA','NA','NA'),(25,25,'Thunder','D','Thoron','C','Death','B','NA','NA','NA','NA'),(26,26,'Fire','D','Thunder','D+','Bolganone','C','Ragnarok','A','NA','NA'),(27,27,'Wind','D','Cutting Gale','C','Bolganone','B','Excalibur','A','NA','NA'),(28,28,'Wind','D','Fire','D+','Cutting Gale','C','Excalibur','A','NA','NA'),(29,29,'Wind','D','Sagittae','C','Thoron','B','Ragnarok','A','Meteor','A+'),(30,30,'Thunder','D','Bolganone','C','Bolting','A','NA','NA','NA','NA'),(31,31,'Thunder','D','Thoron','C','NA','NA','NA','NA','NA','NA'),(32,32,'Fire','D','Bolganone','C','NA','NA','NA','NA','NA','NA'),(33,33,'Fire','D','Bolganone','C','Ragnarok','A','NA','NA','NA','NA'),(34,34,'Blizzard','D','Wind','D+','Sagittae','C','Fimbulvetr','A','NA','NA'),(35,35,'Wind','D','Cutting Gale','C','NA','NA','NA','NA','NA','NA'),(36,36,'Fire','D','Thunder','D+','Meteor','A','NA','NA','NA','NA'),(37,37,'Wind','D','Cutting Gale','C','Sagittae','B','Excalibur','A','NA','NA'),(38,38,'Fire','D','Bolganone','C','Ragnarok','A','NA','NA','NA','NA'),(39,39,'Fire','D','Sagittae','C','Fimbulvetr','B','Bolting','A','Agnea\'s Arrow','A+'),(40,40,'Miasma','D','Swarm','D+','Banshee','C','Death','B','Hades','A');
/*!40000 ALTER TABLE `reason_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `birthday` varchar(5) DEFAULT NULL,
  `first_crest` varchar(255) DEFAULT NULL,
  `second_crest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'Claude','Claude von Riegan','Golden Deer','7/24','Minor Crest of Riegan','None'),(2,'Hilda','Hilda Valentine Goneril','Golden Deer','2/3','Minor Crest of Goneril','None'),(3,'Lorenz','Lorenz Hellman Gloucester','Golden Deer','6/13','Minor Crest of Gloucester','None'),(4,'Raphael','Raphael Kirsten','Golden Deer','5/18','None','None'),(5,'Ignatz','Ignatz Victor','Golden Deer','3/14','None','None'),(6,'Lysithea','Lysithea von Ordelia','Golden Deer','2/28','Minor Crest of Charon','Major Crest of Gloucester'),(7,'Marianne','Marianne von Edmund','Golden Deer','11/23','Minor Crest of the Beast','None'),(8,'Leonie','Leonie Pinelli','Golden Deer','8/21','None','None'),(9,'Dimitri','Dimitri Alexandre Blaiddyd','Blue Lions','12/20','Minor Crest of Blaiddyd','None'),(10,'Dedue','Dedue Molinaro','Blue Lions','8/31','None','None'),(11,'Felix','Felix Hugo Fraldarius','Blue Lions','2/20','Major Crest of Fraldarius','None'),(12,'Ashe','Ashe Ubert','Blue Lions','10/17','None','None'),(13,'Sylvain','Sylvain Jose Gautier','Blue Lions','6/5','Minor Crest of Gautier','None'),(14,'Mercedes','Mercedes von Martritz','Blue Lions','5/27','Minor Crest of Lamine','None'),(15,'Annette','Annette Fantine Dominic','Blue Lions','5/9','Minor Crest of Dominic','None'),(16,'Ingrid','Ingrid Brandl Galatea','Blue Lions','1/4','Minor Crest of Daphnel','None'),(17,'Edelgard','Edelgard von Hresvelg','Black Eagles','6/22','Minor Crest of Seiros','Major Crest of Flames'),(18,'Hubert','Hubert von Vestra','Black Eagles','4/17','None','None'),(19,'Ferdinand','Ferdinand von Aegir','Black Eagles','4/30','Minor Crest of Cichol','None'),(20,'Linhardt','Linhardt von Hevring','Black Eagles','11/7','Minor Crest of Cethleann','None'),(21,'Caspar','Caspar von Bergliez','Black Eagles','7/1','None','None'),(22,'Bernadetta','Bernadetta von Varley','Black Eagles','12/12','Minor Crest of Indech','None'),(23,'Dorothea','Dorothea Arnault','Black Eagles','9/29','None','None'),(24,'Petra','Petra Macneary','Black Eagles','9/7','None','None'),(25,'Jeritza','Jeritza von Hrym','Church of Seiros','3/4','Minor Crest of Lamine','None'),(26,'Byleth','Byleth Eisner','Church of Seiros','n/a','Major Crest of Flames','None'),(27,'Seteth','Seteth','Church of Seiros','12/27','Major Crest of Cichol','None'),(28,'Flayn','Flayn','Church of Seiros','7/12','Major Crest of Cethleann','None'),(29,'Hanneman','Hanneman von Essar','Church of Seiros','2/8','Minor Crest of Indech','None'),(30,'Manuela','Manuela Casagranda','Church of Seiros','8/3','None','None'),(31,'Gilbert','Gilbert Pronislav','Church of Seiros','1/26','None','None'),(32,'Alois','Alois Rangeld','Church of Seiros','12/1','None','None'),(33,'Catherine','Catherine','Church of Seiros','9/15','Major Crest of Charon','None'),(34,'Shamir','Shamir Nevrand','Church of Seiros','3/27','None','None'),(35,'Cyril','Cyril','Church of Seiros','10/25','None','None'),(36,'Anna','Anna','Church of Seiros','6/9','Major Crest of Ernest','None'),(37,'Yuri','Yuri Leclerc','Ashen Wolves','8/12','Major Crest of Aubin','None'),(38,'Balthus','Balthus von Albrecht','Ashen Wolves','7/9','Major Crest of Chevalier','None'),(39,'Constance','Constance von Nuvelle','Ashen Wolves','3/20','Major Crest of Noa','None'),(40,'Hapi','Hapi','Ashen Wolves','1/15','Major Crest of Timotheos','None');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_full_json`
--

DROP TABLE IF EXISTS `unit_full_json`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_full_json` (
  `id` int NOT NULL,
  `base_cha` int NOT NULL,
  `base_def` int NOT NULL,
  `base_dex` int NOT NULL,
  `base_hp` int NOT NULL,
  `base_lck` int NOT NULL,
  `base_mag` int NOT NULL,
  `base_res` int NOT NULL,
  `base_spd` int NOT NULL,
  `base_str` int NOT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `first_crest` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `second_crest` varchar(255) DEFAULT NULL,
  `unit_growth_rate_cha` int NOT NULL,
  `unit_growth_rate_def` int NOT NULL,
  `unit_growth_rate_dex` int NOT NULL,
  `unit_growth_rate_hp` int NOT NULL,
  `unit_growth_rate_lck` int NOT NULL,
  `unit_growth_rate_mag` int NOT NULL,
  `unit_growth_rate_res` int NOT NULL,
  `unit_growth_rate_spd` int NOT NULL,
  `unit_growth_rate_str` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_full_json`
--

LOCK TABLES `unit_full_json` WRITE;
/*!40000 ALTER TABLE `unit_full_json` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit_full_json` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_full_json_seq`
--

DROP TABLE IF EXISTS `unit_full_json_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_full_json_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_full_json_seq`
--

LOCK TABLES `unit_full_json_seq` WRITE;
/*!40000 ALTER TABLE `unit_full_json_seq` DISABLE KEYS */;
INSERT INTO `unit_full_json_seq` VALUES (1);
/*!40000 ALTER TABLE `unit_full_json_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_growth_rates`
--

DROP TABLE IF EXISTS `unit_growth_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_growth_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `health` int DEFAULT NULL,
  `strength` int DEFAULT NULL,
  `magic` int DEFAULT NULL,
  `dexterity` int DEFAULT NULL,
  `speed` int DEFAULT NULL,
  `luck` int DEFAULT NULL,
  `defense` int DEFAULT NULL,
  `resistance` int DEFAULT NULL,
  `charm` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `unit_growth_rates_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_growth_rates`
--

LOCK TABLES `unit_growth_rates` WRITE;
/*!40000 ALTER TABLE `unit_growth_rates` DISABLE KEYS */;
INSERT INTO `unit_growth_rates` VALUES (1,1,35,40,25,60,55,45,30,25,55),(2,2,50,45,25,30,50,35,35,20,50),(3,3,55,40,40,45,40,25,30,40,35),(4,4,65,50,15,35,15,35,45,10,25),(5,5,35,35,30,50,50,55,25,35,25),(6,6,20,15,60,60,50,15,10,25,25),(7,7,35,20,50,40,40,35,15,45,40),(8,8,40,40,20,55,60,40,40,15,40),(9,9,55,60,20,50,50,25,40,20,55),(10,10,60,50,15,30,20,25,50,10,30),(11,11,45,55,30,45,55,40,30,20,30),(12,12,35,35,25,55,50,40,20,35,25),(13,13,55,45,30,35,50,35,40,25,40),(14,14,30,25,50,45,40,30,25,45,40),(15,15,25,30,50,50,35,35,20,30,35),(16,16,40,35,35,40,60,45,30,40,45),(17,17,40,55,45,45,40,30,35,35,60),(18,18,35,30,55,45,45,35,25,40,35),(19,19,50,45,20,40,50,40,35,20,40),(20,20,30,30,45,40,40,45,30,45,20),(21,21,55,45,25,45,45,40,30,20,25),(22,22,35,35,20,55,50,25,20,30,35),(23,23,40,20,40,45,40,35,15,35,40),(24,24,45,40,25,50,60,45,30,15,35),(25,25,50,50,35,35,60,30,40,25,25),(26,26,45,45,35,45,45,45,35,30,45),(27,27,50,45,35,50,50,25,30,25,45),(28,28,25,25,55,45,35,15,25,50,45),(29,29,40,30,55,45,20,35,25,40,35),(30,30,50,35,35,40,60,35,30,25,50),(31,31,55,45,20,45,30,15,45,10,35),(32,32,45,45,20,35,40,30,40,20,40),(33,33,50,50,25,40,55,30,30,20,25),(34,34,35,40,20,55,40,55,20,15,30),(35,35,35,20,15,40,40,30,10,10,15),(36,36,35,35,35,45,55,45,30,40,50),(37,37,30,40,35,40,65,45,30,35,50),(38,38,50,50,30,25,30,20,45,30,30),(39,39,20,20,60,30,35,15,15,30,25),(40,40,35,35,45,45,40,20,15,45,25);
/*!40000 ALTER TABLE `unit_growth_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_seq`
--

DROP TABLE IF EXISTS `unit_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_seq`
--

LOCK TABLES `unit_seq` WRITE;
/*!40000 ALTER TABLE `unit_seq` DISABLE KEYS */;
INSERT INTO `unit_seq` VALUES (101);
/*!40000 ALTER TABLE `unit_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fe3h_api'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-09 19:30:36
