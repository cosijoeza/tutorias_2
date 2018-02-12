-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: sistema_development
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alum_mats`
--

DROP TABLE IF EXISTS `alum_mats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alum_mats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alum_id` bigint(20) DEFAULT NULL,
  `mat_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alum_mats_on_alum_id` (`alum_id`),
  KEY `index_alum_mats_on_mat_id` (`mat_id`),
  CONSTRAINT `fk_rails_27ff7531b7` FOREIGN KEY (`mat_id`) REFERENCES `mats` (`id`),
  CONSTRAINT `fk_rails_dc1c8b80b3` FOREIGN KEY (`alum_id`) REFERENCES `alums` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alum_mats`
--

LOCK TABLES `alum_mats` WRITE;
/*!40000 ALTER TABLE `alum_mats` DISABLE KEYS */;
INSERT INTO `alum_mats` VALUES (1,1,1,'2018-02-12 04:44:38','2018-02-12 04:44:38');
/*!40000 ALTER TABLE `alum_mats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alums`
--

DROP TABLE IF EXISTS `alums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alums` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `idiom_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alums_on_prof_id` (`prof_id`),
  KEY `index_alums_on_idiom_id` (`idiom_id`),
  CONSTRAINT `fk_rails_e8f473fb08` FOREIGN KEY (`idiom_id`) REFERENCES `idioms` (`id`),
  CONSTRAINT `fk_rails_ea2f3ae33b` FOREIGN KEY (`prof_id`) REFERENCES `profs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alums`
--

LOCK TABLES `alums` WRITE;
/*!40000 ALTER TABLE `alums` DISABLE KEYS */;
INSERT INTO `alums` VALUES (1,2014020423,'Cosijoeza','Melchor Nolasco','estudiante_30.jpg','cosi.melchor@gmail.com',1,1,'2018-02-09 00:24:14','2018-02-09 00:24:14'),(2,20120202,'Juan Luis','Martinez Aguilar','estudiante_32.jpg','juan@hotmail.com',1,1,'2018-02-09 00:33:16','2018-02-09 00:33:16'),(3,2014020826,'Dua','Lipa','#<ActionDispatch::Http::UploadedFile:0x00007fd3d1053618>','dua_lipa@gmail.com',1,1,'2018-02-12 09:41:31','2018-02-12 09:41:31'),(4,2014032458,'Jaime','Melchor Aguilar',NULL,'jaimelchor@gmail.com',1,1,'2018-02-12 10:01:12','2018-02-12 10:01:12');
/*!40000 ALTER TABLE `alums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2018-02-08 23:47:19','2018-02-08 23:47:19');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ents`
--

DROP TABLE IF EXISTS `ents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `notas` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ents_on_prof_id` (`prof_id`),
  CONSTRAINT `fk_rails_c693108f00` FOREIGN KEY (`prof_id`) REFERENCES `profs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ents`
--

LOCK TABLES `ents` WRITE;
/*!40000 ALTER TABLE `ents` DISABLE KEYS */;
/*!40000 ALTER TABLE `ents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historials`
--

DROP TABLE IF EXISTS `historials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historials` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alum_id` bigint(20) DEFAULT NULL,
  `mat_id` bigint(20) DEFAULT NULL,
  `calif_1` float DEFAULT NULL,
  `calif_2` float DEFAULT NULL,
  `calif_3` float DEFAULT NULL,
  `final` float DEFAULT NULL,
  `ext_1` float DEFAULT NULL,
  `ext_2` float DEFAULT NULL,
  `esp` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_historials_on_alum_id` (`alum_id`),
  KEY `index_historials_on_mat_id` (`mat_id`),
  CONSTRAINT `fk_rails_691d5e3f11` FOREIGN KEY (`alum_id`) REFERENCES `alums` (`id`),
  CONSTRAINT `fk_rails_8c71aaa28c` FOREIGN KEY (`mat_id`) REFERENCES `mats` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historials`
--

LOCK TABLES `historials` WRITE;
/*!40000 ALTER TABLE `historials` DISABLE KEYS */;
/*!40000 ALTER TABLE `historials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioms`
--

DROP TABLE IF EXISTS `idioms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idioms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(255) DEFAULT NULL,
  `semestre` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioms`
--

LOCK TABLES `idioms` WRITE;
/*!40000 ALTER TABLE `idioms` DISABLE KEYS */;
INSERT INTO `idioms` VALUES (1,'PET-1','1','Cursando','2018-02-09 00:23:33','2018-02-09 00:23:33');
/*!40000 ALTER TABLE `idioms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mats`
--

DROP TABLE IF EXISTS `mats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `semestre` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mats`
--

LOCK TABLES `mats` WRITE;
/*!40000 ALTER TABLE `mats` DISABLE KEYS */;
INSERT INTO `mats` VALUES (1,'Ecuaciones diferenciales','3','2018-02-12 04:37:52','2018-02-12 04:37:52'),(2,'Calculo integral','0','2018-02-12 04:38:10','2018-02-12 04:38:10'),(3,'Matematicas discretas','2018','2018-02-12 06:34:02','2018-02-12 06:34:02');
/*!40000 ALTER TABLE `mats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profs`
--

DROP TABLE IF EXISTS `profs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `instituto` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profs`
--

LOCK TABLES `profs` WRITE;
/*!40000 ALTER TABLE `profs` DISABLE KEYS */;
INSERT INTO `profs` VALUES (1,'Arturo de labarrera','arturo','arturito@gmail.com','computacion','2018-02-09 00:23:08','2018-02-09 00:23:08');
/*!40000 ALTER TABLE `profs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pruebas`
--

DROP TABLE IF EXISTS `pruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pruebas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pruebas`
--

LOCK TABLES `pruebas` WRITE;
/*!40000 ALTER TABLE `pruebas` DISABLE KEYS */;
INSERT INTO `pruebas` VALUES (1,'primera','2018-02-12 07:15:30','2018-02-12 07:15:30'),(2,'Hola cra','2018-02-12 10:42:32','2018-02-12 10:42:32'),(3,'Mi mama','2018-02-12 10:42:42','2018-02-12 10:42:42');
/*!40000 ALTER TABLE `pruebas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prus`
--

DROP TABLE IF EXISTS `prus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prus`
--

LOCK TABLES `prus` WRITE;
/*!40000 ALTER TABLE `prus` DISABLE KEYS */;
/*!40000 ALTER TABLE `prus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20180208235006'),('20180208235023'),('20180208235106'),('20180208235122'),('20180208235154'),('20180208235212'),('20180208235234'),('20180209001532'),('20180212094534'),('20180212101208'),('20180212101546');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutors`
--

DROP TABLE IF EXISTS `tutors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prof_id` bigint(20) DEFAULT NULL,
  `alum_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tutors_on_prof_id` (`prof_id`),
  KEY `index_tutors_on_alum_id` (`alum_id`),
  CONSTRAINT `fk_rails_185fb6469d` FOREIGN KEY (`alum_id`) REFERENCES `alums` (`id`),
  CONSTRAINT `fk_rails_5a66f64822` FOREIGN KEY (`prof_id`) REFERENCES `profs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutors`
--

LOCK TABLES `tutors` WRITE;
/*!40000 ALTER TABLE `tutors` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-12 11:09:50
