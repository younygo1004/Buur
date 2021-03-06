-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: j6b102.p.ssafy.io    Database: buur
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `drink_beer`
--

DROP TABLE IF EXISTS `drink_beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drink_beer` (
  `record_id` bigint NOT NULL AUTO_INCREMENT,
  `record_dt` date DEFAULT NULL,
  `beer_id` bigint DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `FK2ykmbem6jkawti28ias9htbhg` (`beer_id`),
  KEY `FKli2c8xa4jn474xv2mmdc55qx7` (`id`),
  CONSTRAINT `FK2ykmbem6jkawti28ias9htbhg` FOREIGN KEY (`beer_id`) REFERENCES `beer` (`beer_id`),
  CONSTRAINT `FKli2c8xa4jn474xv2mmdc55qx7` FOREIGN KEY (`id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink_beer`
--

LOCK TABLES `drink_beer` WRITE;
/*!40000 ALTER TABLE `drink_beer` DISABLE KEYS */;
INSERT INTO `drink_beer` VALUES (1,'2022-04-05',11,1),(2,'2022-04-05',55,1),(3,'2022-04-05',21,1),(4,'2022-04-05',19,1),(5,'2022-04-05',1,1),(6,'2022-04-05',5,1),(7,'2022-04-05',61,1),(8,'2022-04-05',109,1),(9,'2022-04-05',14,1),(10,'2022-04-05',53,1),(11,'2022-04-05',15,1),(12,'2022-04-05',100,1),(13,'2022-04-05',42,1),(14,'2022-04-05',9,1),(15,'2022-04-05',73,1),(16,'2022-04-05',1,1),(17,'2022-04-05',8,1),(18,'2022-04-05',25,1),(19,'2022-04-05',83,1),(20,'2022-04-05',19,1),(21,'2022-04-05',65,1),(22,'2022-04-05',17,1),(23,'2022-04-05',93,1),(24,'2022-04-05',83,1),(25,'2022-04-05',100,1),(26,'2022-04-05',24,1),(27,'2022-04-05',9,1),(28,'2022-04-05',66,1),(29,'2022-04-05',15,179),(30,'2022-04-05',24,179),(31,'2022-04-05',9,179),(32,'2022-04-05',6,179),(33,'2022-04-05',12,179),(34,'2022-04-05',53,179),(35,'2022-04-05',66,179),(36,'2022-04-05',73,179),(37,'2022-04-05',5,1),(38,'2022-04-05',5,1),(39,'2022-04-05',7,1),(40,'2022-04-05',10,1),(41,'2022-04-05',1,1),(42,'2022-04-05',1,1),(43,'2022-04-05',1,1),(44,'2022-04-05',1,1),(45,'2022-04-06',4,1),(46,'2022-04-06',4,1),(47,'2022-04-06',4,1),(48,'2022-04-06',4,1),(49,'2022-04-06',32,1),(50,'2022-04-06',6,1),(51,'2022-04-06',6,1),(52,'2022-04-06',6,1),(53,'2022-04-06',46,1),(54,'2022-04-06',46,1),(55,'2022-04-06',46,1),(56,'2022-04-06',46,1),(57,'2022-04-06',96,1),(58,'2022-04-06',56,1),(59,'2022-04-06',37,1),(60,'2022-04-06',37,1),(61,'2022-04-06',34,1),(62,'2022-04-06',34,1),(63,'2022-04-06',34,1),(64,'2022-04-06',34,1),(65,'2022-04-06',1,1),(66,'2022-04-06',1,1),(67,'2022-04-06',1,1),(68,'2022-04-06',1,1),(69,'2022-04-06',1,1),(70,'2022-04-06',1,1),(71,'2022-04-06',1,1),(72,'2022-04-06',1,1),(73,'2022-04-06',28,1),(74,'2022-04-06',28,1),(75,'2022-04-06',28,1),(76,'2022-04-06',28,1),(77,'2022-04-06',28,1),(78,'2022-04-06',28,1),(79,'2022-04-06',28,1),(80,'2022-04-06',28,1),(81,'2022-04-06',30,1),(82,'2022-04-06',30,1),(83,'2022-04-06',30,1),(84,'2022-04-06',30,1),(85,'2022-04-06',12,1),(86,'2022-04-06',53,1),(87,'2022-04-06',66,1),(88,'2022-04-06',73,1),(89,'2022-04-06',12,1),(90,'2022-04-06',53,1),(91,'2022-04-06',66,1),(92,'2022-04-06',73,1),(93,'2022-04-06',12,1),(94,'2022-04-06',53,1),(95,'2022-04-06',66,1),(96,'2022-04-06',73,1),(97,'2022-04-06',12,1),(98,'2022-04-06',53,1),(99,'2022-04-06',66,1),(100,'2022-04-06',73,1),(101,'2022-04-06',12,1),(102,'2022-04-06',53,1),(103,'2022-04-06',66,1),(104,'2022-04-06',73,1),(105,'2022-04-06',14,1),(106,'2022-04-06',72,1),(107,'2022-04-06',15,1),(108,'2022-04-06',100,1),(109,'2022-04-06',23,1),(110,'2022-04-06',23,1),(111,'2022-04-06',23,1),(112,'2022-04-06',23,1),(113,'2022-04-06',22,425),(114,'2022-04-06',96,425),(115,'2022-04-06',43,425),(116,'2022-04-06',10,425),(117,'2022-04-07',4,1),(118,'2022-04-07',4,1),(119,'2022-04-07',4,1),(120,'2022-04-07',4,1),(121,'2022-04-07',4,1),(122,'2022-04-07',4,1),(123,'2022-04-07',4,1),(124,'2022-04-07',4,1),(125,'2022-04-07',1,1),(126,'2022-04-07',1,1),(127,'2022-04-07',1,1),(128,'2022-04-07',1,1),(129,'2022-04-07',67,1),(130,'2022-04-07',20,1),(131,'2022-04-07',51,1),(132,'2022-04-07',102,1),(133,'2022-04-07',105,1),(134,'2022-04-07',105,1),(135,'2022-04-07',7,1),(136,'2022-04-07',7,1),(137,'2022-04-07',32,1),(138,'2022-04-07',32,1),(139,'2022-04-07',62,1),(140,'2022-04-07',84,1),(141,'2022-04-07',4,1),(142,'2022-04-07',4,1),(143,'2022-04-07',4,1),(144,'2022-04-07',4,1),(145,'2022-04-07',1,432),(146,'2022-04-07',72,432),(147,'2022-04-07',55,432),(148,'2022-04-07',102,432),(149,'2022-04-07',9,427),(150,'2022-04-07',85,427),(151,'2022-04-07',82,427),(152,'2022-04-07',58,427),(153,'2022-04-07',7,427),(154,'2022-04-07',7,427),(155,'2022-04-07',5,427),(156,'2022-04-07',52,427),(157,'2022-04-07',4,434),(158,'2022-04-07',26,434),(159,'2022-04-07',109,434),(160,'2022-04-07',95,434),(161,'2022-04-07',24,1),(162,'2022-04-07',39,1),(163,'2022-04-07',56,1),(164,'2022-04-07',96,1),(165,'2022-04-07',7,1),(166,'2022-04-07',61,1),(167,'2022-04-07',5,1),(168,'2022-04-07',54,1),(169,'2022-04-07',28,1),(170,'2022-04-07',108,1),(171,'2022-04-07',53,1),(172,'2022-04-07',63,1),(173,'2022-04-07',29,1),(174,'2022-04-07',29,1),(175,'2022-04-07',50,1),(176,'2022-04-07',15,1),(177,'2022-04-07',39,1),(178,'2022-04-07',39,1),(179,'2022-04-07',36,1),(180,'2022-04-07',25,1),(181,'2022-04-07',79,1),(182,'2022-04-07',79,1),(183,'2022-04-07',11,1),(184,'2022-04-07',11,1),(185,'2022-04-07',25,1),(186,'2022-04-07',25,1),(187,'2022-04-07',25,1),(188,'2022-04-07',25,1),(189,'2022-04-07',30,1),(190,'2022-04-07',108,1),(191,'2022-04-07',100,1),(192,'2022-04-07',46,1),(193,'2022-04-07',22,1),(194,'2022-04-07',21,1),(195,'2022-04-07',13,1),(196,'2022-04-07',93,1),(197,'2022-04-07',105,1),(198,'2022-04-07',30,1),(199,'2022-04-07',53,1),(200,'2022-04-07',28,1),(201,'2022-04-07',9,427),(202,'2022-04-07',9,427),(203,'2022-04-07',9,427),(204,'2022-04-07',9,427),(205,'2022-04-07',64,436),(206,'2022-04-07',30,436),(207,'2022-04-07',109,436),(208,'2022-04-07',21,436),(209,'2022-04-07',30,436),(210,'2022-04-07',30,436),(211,'2022-04-07',30,436),(212,'2022-04-07',30,436),(213,'2022-04-07',12,1),(214,'2022-04-07',12,1),(215,'2022-04-07',21,1),(216,'2022-04-07',77,1),(217,'2022-04-07',9,434),(218,'2022-04-07',4,434),(219,'2022-04-07',42,434),(220,'2022-04-07',87,434);
/*!40000 ALTER TABLE `drink_beer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-07 22:52:34
