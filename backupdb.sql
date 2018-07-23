-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: transparencia
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

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
-- Table structure for table `administrativo_orgao`
--

DROP TABLE IF EXISTS `administrativo_orgao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrativo_orgao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `cnpj` int(11) NOT NULL,
  `rua` varchar(80) NOT NULL,
  `numero` int(10) unsigned NOT NULL,
  `bairro` varchar(80) NOT NULL,
  `cidade` varchar(80) NOT NULL,
  `cep` int(10) unsigned NOT NULL,
  `telefone` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrativo_orgao`
--

LOCK TABLES `administrativo_orgao` WRITE;
/*!40000 ALTER TABLE `administrativo_orgao` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrativo_orgao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Licitação');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (12,1,22),(13,1,23),(14,1,24),(15,1,25),(16,1,26),(17,1,27),(18,1,28),(19,1,29),(20,1,30),(21,1,31),(1,1,32),(2,1,33),(3,1,34),(4,1,35),(5,1,36),(6,1,37),(7,1,38),(8,1,39),(9,1,40),(10,1,41),(11,1,42);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add orgao',7,'add_orgao'),(20,'Can change orgao',7,'change_orgao'),(21,'Can delete orgao',7,'delete_orgao'),(22,'Can add tipo',8,'add_tipo'),(23,'Can change tipo',8,'change_tipo'),(24,'Can delete tipo',8,'delete_tipo'),(25,'Can add ano',9,'add_ano'),(26,'Can change ano',9,'change_ano'),(27,'Can delete ano',9,'delete_ano'),(28,'Can add processo',10,'add_processo'),(29,'Can change processo',10,'change_processo'),(30,'Can delete processo',10,'delete_processo'),(31,'Can add contrato',11,'add_contrato'),(32,'Can change contrato',11,'change_contrato'),(33,'Can delete contrato',11,'delete_contrato'),(34,'Can add situacao',12,'add_situacao'),(35,'Can change situacao',12,'change_situacao'),(36,'Can delete situacao',12,'delete_situacao'),(37,'Can add arquivo',13,'add_arquivo'),(38,'Can change arquivo',13,'change_arquivo'),(39,'Can delete arquivo',13,'delete_arquivo'),(40,'Can add modalidade',14,'add_modalidade'),(41,'Can change modalidade',14,'change_modalidade'),(42,'Can delete modalidade',14,'delete_modalidade'),(43,'Can add arquivos',15,'add_arquivos'),(44,'Can change arquivos',15,'change_arquivos'),(45,'Can delete arquivos',15,'delete_arquivos'),(46,'Can add Arquivo',16,'add_arquivo'),(47,'Can change Arquivo',16,'change_arquivo'),(48,'Can delete Arquivo',16,'delete_arquivo'),(49,'Can add pessoa',17,'add_pessoa'),(50,'Can change pessoa',17,'change_pessoa'),(51,'Can delete pessoa',17,'delete_pessoa');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$KoBaPsm01Qzg$jQm4qSOyUFqqQlwFjkjL8XcE40LdJFc3c6smm8Ky450=','2018-07-13 13:42:49.974816',1,'danilo','','','danilorodrigues@camarajaboatao.pe.gov.br',1,1,'2018-05-15 03:48:57.449041'),(2,'pbkdf2_sha256$100000$bVCl9PcbOBbk$LcMdpaEZghLI6mRSAWRwS510Ijy+Oos+lVzj3CuiOHQ=','2018-05-16 10:16:36.551519',0,'carlosbrandt','CARLOS','BRANDT','cbrandt55@hotmail.com',1,1,'2018-05-15 11:08:45.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-05-15 03:53:31.350397','1','Em andamento',1,'[{\"added\": {}}]',12,1),(2,'2018-05-15 03:53:36.676085','2','Finalizado',1,'[{\"added\": {}}]',12,1),(3,'2018-05-15 03:53:40.385259','3','Cancelado',1,'[{\"added\": {}}]',12,1),(4,'2018-05-15 03:53:44.144458','4','Suspenso',1,'[{\"added\": {}}]',12,1),(5,'2018-05-15 03:54:35.603655','1','Concorrência',1,'[{\"added\": {}}]',8,1),(6,'2018-05-15 03:54:41.093959','2','Tomada de Preços',1,'[{\"added\": {}}]',8,1),(7,'2018-05-15 03:54:44.538087','3','Convite',1,'[{\"added\": {}}]',8,1),(8,'2018-05-15 03:54:47.952847','4','Concurso',1,'[{\"added\": {}}]',8,1),(9,'2018-05-15 03:54:53.915503','5','Leilão',1,'[{\"added\": {}}]',8,1),(10,'2018-05-15 03:54:57.732689','6','Pregão',1,'[{\"added\": {}}]',8,1),(11,'2018-05-15 03:55:27.319968','1','Concorrência - 1/2018',1,'[{\"added\": {}}]',14,1),(12,'2018-05-15 03:55:44.177531','2','Concorrência - 2/2018',1,'[{\"added\": {}}]',14,1),(13,'2018-05-15 11:08:45.288485','2','carlosbrandt',1,'[{\"added\": {}}]',3,1),(14,'2018-05-15 11:09:14.472373','2','carlosbrandt',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',3,1),(15,'2018-05-15 11:09:39.198400','1','Licitação',1,'[{\"added\": {}}]',2,1),(16,'2018-05-15 11:09:51.541475','2','carlosbrandt',2,'[{\"changed\": {\"fields\": [\"groups\"]}}]',3,1),(17,'2018-05-15 11:11:22.415308','2','carlosbrandt',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',3,1),(18,'2018-05-15 11:11:46.918022','2','Concorrência - 2/2018',3,'',14,2),(19,'2018-05-15 11:11:46.920941','1','Concorrência - 1/2018',3,'',14,2),(20,'2018-05-15 11:12:46.283130','7','Dispensa',1,'[{\"added\": {}}]',8,2),(21,'2018-05-15 11:15:11.510807','1','Processo 1/2018',1,'[{\"added\": {}}]',10,2),(22,'2018-05-15 11:17:36.495005','1','RATIFICA__DISPENSA_01.18__PINTURA_LONGARINAS.pdf',1,'[{\"added\": {}}]',13,2),(23,'2018-05-15 11:18:04.360777','3','Dispensa - 1/2018',1,'[{\"added\": {}}]',14,2),(24,'2018-05-15 11:20:31.349613','2','CONTRATO_Nº_01.2018_REPAROS_E_PINTURA_LONGARINAS.pdf',1,'[{\"added\": {}}]',13,2),(25,'2018-05-15 11:20:53.912760','3','Dispensa - 1/2018',2,'[{\"changed\": {\"fields\": [\"arquivos\"]}}]',14,2),(26,'2018-05-15 11:24:42.074117','2','Processo 2/2018',1,'[{\"added\": {}}]',10,2),(27,'2018-05-15 11:27:11.316513','3','contrato_n.002.18_ENCADERNAÇÃO.pdf',1,'[{\"added\": {}}]',13,2),(28,'2018-05-15 11:28:11.022792','4','Convite_Nº_001.18_contratação_de_empresa_para_prestação_de_serviços_de_fotocopias_e_encadernação.pdf',1,'[{\"added\": {}}]',13,2),(29,'2018-05-15 11:28:12.491832','5','Convite_Nº_001.18_contratação_de_empresa_para_prestação_de_serviços_de_fotocopias_e_enca_WqOBuKo.pdf',1,'[{\"added\": {}}]',13,2),(30,'2018-05-15 11:28:38.797124','6','ATA_DO_CONVITE_01.2018.pdf',1,'[{\"added\": {}}]',13,2),(31,'2018-05-15 11:28:53.529414','4','Convite - 1/2018',1,'[{\"added\": {}}]',14,2),(32,'2018-05-15 11:35:48.511535','3','Processo 3/2018',1,'[{\"added\": {}}]',10,2),(33,'2018-05-15 11:37:20.190202','7','RATIFICA__DISPENSA_02.18_placas_de_titulos_de_ciddao_e_certificados.pdf',1,'[{\"added\": {}}]',13,2),(34,'2018-05-15 11:38:03.872484','8','CONTRATO_Nº_03.2018_METAL_PLACAS.pdf',1,'[{\"added\": {}}]',13,2),(35,'2018-05-15 11:38:09.110145','5','Dispensa - 2/2018',1,'[{\"added\": {}}]',14,2),(36,'2018-05-15 11:42:08.597292','4','Processo 4/2018',1,'[{\"added\": {}}]',10,2),(37,'2018-05-15 11:44:15.978154','9','Convite_Nº_002.18__fornecimento_de_material_de_expediente.pdf',1,'[{\"added\": {}}]',13,2),(38,'2018-05-15 11:45:21.721836','10','ATA_DO_CONVITE_02.2018.pdf',1,'[{\"added\": {}}]',13,2),(39,'2018-05-15 11:46:24.249857','11','contrato_n.004.2018_EXPEDIENTE.pdf',1,'[{\"added\": {}}]',13,2),(40,'2018-05-15 11:46:31.000104','6','Convite - 2/2018',1,'[{\"added\": {}}]',14,2),(41,'2018-05-15 11:54:00.155483','12','Convite_Nº_003.18__fornecimento_de_material_de_limpeza.pdf',1,'[{\"added\": {}}]',13,2),(42,'2018-05-15 11:54:19.062298','13','ATA_DO_CONVITE_03.2018.pdf',1,'[{\"added\": {}}]',13,2),(43,'2018-05-15 11:55:08.342674','14','contrato_n.005.2018_LIMPEZA.pdf',1,'[{\"added\": {}}]',13,2),(44,'2018-05-15 11:55:17.118472','7','Convite - 3/2018',1,'[{\"added\": {}}]',14,2),(45,'2018-05-15 11:58:36.215186','5','Processo 5/2018',1,'[{\"added\": {}}]',10,2),(46,'2018-05-15 11:58:40.635428','7','Convite - 3/2018',2,'[{\"changed\": {\"fields\": [\"processo\"]}}]',14,2),(47,'2018-05-15 13:05:55.545275','6','Processo 6/2018',1,'[{\"added\": {}}]',10,2),(48,'2018-05-15 13:07:06.614811','15','RATIFICA__DISPENSA_03.18_CONFECÇÃO_DE_FARDAMENTOS.pdf',1,'[{\"added\": {}}]',13,2),(49,'2018-05-15 13:07:38.618938','16','CONTRATO_Nº_06.2018_FARDAMENTO.pdf',1,'[{\"added\": {}}]',13,2),(50,'2018-05-15 13:07:44.684110','8','Dispensa - 3/2018',1,'[{\"added\": {}}]',14,2),(51,'2018-05-15 13:10:36.950113','7','Processo 7/2018',1,'[{\"added\": {}}]',10,2),(52,'2018-05-15 13:11:45.909806','9','Dispensa - 4/2018',1,'[{\"added\": {}}]',14,2),(53,'2018-05-15 13:15:48.893050','8','Processo 8/2018',1,'[{\"added\": {}}]',10,2),(54,'2018-05-15 13:17:21.705606','17','Convite_Nº_004.18__fornecimento_de_material_de_informatica.pdf',1,'[{\"added\": {}}]',13,2),(55,'2018-05-15 13:17:47.248485','18','ATA_DO_CONVITE_04.2018.pdf',1,'[{\"added\": {}}]',13,2),(56,'2018-05-15 13:18:33.926855','19','CONTRATO_Nº_07.2018_AGUA_NATURAL.pdf',1,'[{\"added\": {}}]',13,2),(57,'2018-05-15 13:18:41.578007','10','Convite - 4/2018',1,'[{\"added\": {}}]',14,2),(58,'2018-05-15 13:22:41.979031','9','Processo 9/2018',1,'[{\"added\": {}}]',10,2),(59,'2018-05-15 13:24:16.288550','20','Convite_Nº_005.18__fornecimento_parcelado__de_material_de_construção_equipamentos_e_diversos.pdf',1,'[{\"added\": {}}]',13,2),(60,'2018-05-15 13:24:55.826253','21','ATA_DO_CONVITE_05.2018.pdf',1,'[{\"added\": {}}]',13,2),(61,'2018-05-15 13:25:57.951997','22','contrato_n.009.2018_MATERIAL_DE_CONSTRUÇÃOEQUIPAMENTOS_E_DIVERSOS.pdf',1,'[{\"added\": {}}]',13,2),(62,'2018-05-15 13:26:03.438617','11','Convite - 5/2018',1,'[{\"added\": {}}]',14,2),(63,'2018-05-15 13:45:41.247089','10','Processo 10/2018',1,'[{\"added\": {}}]',10,2),(64,'2018-05-15 13:47:04.496211','23','Convite_Nº_006.18__fornecimento_parcelado_de_café_e_açucar..pdf',1,'[{\"added\": {}}]',13,2),(65,'2018-05-15 13:47:46.626581','24','ATA_DO_CONVITE_06.2018.pdf',1,'[{\"added\": {}}]',13,2),(66,'2018-05-15 13:49:09.735633','25','contrato_n.010.2018_Café_e_Açúcar_generos_alimenticios..pdf',1,'[{\"added\": {}}]',13,2),(67,'2018-05-15 13:49:30.367951','12','Convite - 6/2018',1,'[{\"added\": {}}]',14,2),(68,'2018-05-15 13:53:47.911028','11','Processo 11/2018',1,'[{\"added\": {}}]',10,2),(69,'2018-05-15 13:55:09.949704','26','RATIFICA__DISPENSA_05.18_SERVIÇOS_DE_RESTAURAÇAO_DE_FOTOS_ETC..pdf',1,'[{\"added\": {}}]',13,2),(70,'2018-05-15 13:55:52.159741','27','CONTRATO_Nº_011.2018_PRESTACAO_DE_SERVICOS_DE_RESTAURACAO_DE_FOTOS_ETC..pdf',1,'[{\"added\": {}}]',13,2),(71,'2018-05-15 13:56:25.746181','13','Dispensa - 5/2018',1,'[{\"added\": {}}]',14,2),(72,'2018-05-15 14:25:39.845717','12','Processo 12/2018',1,'[{\"added\": {}}]',10,2),(73,'2018-05-15 14:34:23.348202','13','Processo 13/2018',1,'[{\"added\": {}}]',10,2),(74,'2018-05-15 14:36:57.319895','14','Processo 14/2018',1,'[{\"added\": {}}]',10,2),(75,'2018-05-15 14:37:05.867101','14','Processo 14/2018',2,'[{\"changed\": {\"fields\": [\"ano\"]}}]',10,2),(76,'2018-05-15 14:37:27.159124','14','Processo 14/2017',2,'[{\"changed\": {\"fields\": [\"ano\", \"criado_em\"]}}]',10,2),(77,'2018-05-15 14:37:47.351531','14','Processo 14/2016',2,'[{\"changed\": {\"fields\": [\"criado_em\"]}}]',10,2),(78,'2018-05-15 14:38:17.553199','14','Processo 15/2017',2,'[{\"changed\": {\"fields\": [\"numero\", \"ano\", \"criado_em\"]}}]',10,2),(79,'2018-05-15 14:38:52.248226','12','Processo 12/2018',3,'',10,1),(80,'2018-05-15 14:38:52.251989','13','Processo 13/2018',3,'',10,1),(81,'2018-05-15 14:38:52.254522','14','Processo 15/2017',3,'',10,1),(82,'2018-05-15 14:39:54.152770','15','Processo 12/2017',1,'[{\"added\": {}}]',10,2),(83,'2018-05-15 14:40:08.135665','15','Processo 1/2017',2,'[{\"changed\": {\"fields\": [\"numero\"]}}]',10,2),(84,'2018-05-15 14:40:57.540126','14','Convite - 1/2017',1,'[{\"added\": {}}]',14,2),(85,'2018-05-15 14:41:30.005129','28','Convite_Nº_001.17_contratação_de_locação_de_motociclista.pdf',1,'[{\"added\": {}}]',13,2),(86,'2018-05-15 14:41:49.773666','29','ata_de_reunião_do_convite_001_locação_de_moto.pdf',1,'[{\"added\": {}}]',13,2),(87,'2018-05-15 14:41:59.207752','30','CONTRATO_001.2017_MOTOCICLISTA.pdf',1,'[{\"added\": {}}]',13,2),(88,'2018-05-15 14:42:00.374556','14','Convite - 1/2017',2,'[{\"changed\": {\"fields\": [\"arquivos\"]}}]',14,2),(89,'2018-05-15 14:43:33.182367','14','Convite - 1/2017',2,'[]',14,2),(90,'2018-05-15 14:46:53.796445','16','Processo 12/2017',1,'[{\"added\": {}}]',10,2),(91,'2018-05-15 14:49:14.345855','16','Processo 2/2017',2,'[{\"changed\": {\"fields\": [\"numero\"]}}]',10,2),(92,'2018-05-15 14:53:08.623590','31','RATIFICA__DISPENSA_01.17_agua_mineral.pdf',1,'[{\"added\": {}}]',13,2),(93,'2018-05-15 14:53:57.462087','32','CONTRATO_Nº_02.2017_AGUA_NATURAL.pdf',1,'[{\"added\": {}}]',13,2),(94,'2018-05-15 14:54:00.194155','15','Dispensa - 1/2017',1,'[{\"added\": {}}]',14,2),(95,'2018-05-15 15:03:33.945814','21','Processo 3/2017',1,'[{\"added\": {}}]',10,2),(96,'2018-05-15 15:05:33.624976','33','_ATA_DO_CONVITE_02.2017.pdf',1,'[{\"added\": {}}]',13,2),(97,'2018-05-15 15:06:30.170504','34','Convite_Nº_002.17__fornecimento_de_material_de_expediente.pdf',1,'[{\"added\": {}}]',13,2),(98,'2018-05-15 15:07:20.531301','35','contrato_n.003.2017_EXPEDIENTE.pdf',1,'[{\"added\": {}}]',13,2),(99,'2018-05-15 15:07:26.878999','16','Convite - 2/2017',1,'[{\"added\": {}}]',14,2),(100,'2018-05-15 15:10:45.182657','22','Processo 4/2017',1,'[{\"added\": {}}]',10,2),(101,'2018-05-15 15:12:10.088016','36','Convite_Nº_003.17__fornecimento_de_material_de_limpeza.pdf',1,'[{\"added\": {}}]',13,2),(102,'2018-05-15 15:12:41.563093','37','_ATA_DO_CONVITE_03.2017.pdf',1,'[{\"added\": {}}]',13,2),(103,'2018-05-15 15:13:19.734855','38','contrato_n.004.2017_LIMPEZA.pdf',1,'[{\"added\": {}}]',13,2),(104,'2018-05-15 15:13:25.725982','17','Convite - 3/2017',1,'[{\"added\": {}}]',14,2),(105,'2018-05-15 15:15:36.827359','23','Processo 5/2017',1,'[{\"added\": {}}]',10,2),(106,'2018-05-15 15:19:49.644274','39','RATIFICA__DISPENSA_02.17_cafe_e_açucar.pdf',1,'[{\"added\": {}}]',13,2),(107,'2018-05-15 15:21:00.460209','40','CONTRATO_Nº_05.2017_AÇUCAR_E_CAFÉ.pdf',1,'[{\"added\": {}}]',13,2),(108,'2018-05-15 15:21:13.192982','18','Dispensa - 2/2017',1,'[{\"added\": {}}]',14,2),(109,'2018-05-15 15:27:18.877037','24','Processo 6/2017',1,'[{\"added\": {}}]',10,2),(110,'2018-05-15 15:28:49.944939','41','Convite_Nº_004.17__fornecimento_parcelado__de_material_de_construção_e_diversos.pdf',1,'[{\"added\": {}}]',13,2),(111,'2018-05-15 15:29:37.577012','42','_ATA_DO_CONVITE_04.2017.pdf',1,'[{\"added\": {}}]',13,2),(112,'2018-05-15 15:30:06.980695','43','contrato_n.006.2017_MATERIAL_DE_CONSTRUÇÃO_E_DIVERSOS.pdf',1,'[{\"added\": {}}]',13,2),(113,'2018-05-15 15:30:10.817720','19','Convite - 4/2017',1,'[{\"added\": {}}]',14,2),(114,'2018-05-15 15:32:28.828251','25','Processo 7/2017',1,'[{\"added\": {}}]',10,2),(115,'2018-05-15 15:34:03.680388','44','Convite_Nº_005.17__fornecimento_de_material_bens_moveis.pdf',1,'[{\"added\": {}}]',13,2),(116,'2018-05-15 15:34:30.847783','45','_ATA_DO_CONVITE_05.2017.pdf',1,'[{\"added\": {}}]',13,2),(117,'2018-05-15 15:35:25.909944','46','Contrato_nº__07.2017para_aquisição_de_material_de_bens_móveis.pdf',1,'[{\"added\": {}}]',13,2),(118,'2018-05-15 15:35:32.638336','20','Convite - 5/2017',1,'[{\"added\": {}}]',14,2),(119,'2018-05-15 15:38:49.629633','26','Processo 8/2017',1,'[{\"added\": {}}]',10,2),(120,'2018-05-15 15:40:05.402210','47','Convite_06.2017serviços_contabeis..pdf',1,'[{\"added\": {}}]',13,2),(121,'2018-05-15 15:40:37.811724','48','ATA_DO_CONVITE_06.2017.pdf',1,'[{\"added\": {}}]',13,2),(122,'2018-05-15 15:47:24.070229','49','CONTRATO_Nº_08.2017_CHAVES_ASSESSORIA_CONTABIL.pdf',1,'[{\"added\": {}}]',13,2),(123,'2018-05-15 15:47:29.788734','21','Convite - 6/2017',1,'[{\"added\": {}}]',14,2),(124,'2018-05-15 15:50:08.156128','27','Processo 9/2017',1,'[{\"added\": {}}]',10,2),(125,'2018-05-15 15:51:40.012345','50','Convite_Nº_007.17__aquisição_de_equipamentos_de_informatica.pdf',1,'[{\"added\": {}}]',13,2),(126,'2018-05-15 15:52:15.234316','51','ATA_DO_CONVITE_07.2017.pdf',1,'[{\"added\": {}}]',13,2),(127,'2018-05-15 15:52:44.897048','52','contrato_n.09.17_COMPUTADORES.pdf',1,'[{\"added\": {}}]',13,2),(128,'2018-05-15 15:52:48.024920','22','Convite - 7/2017',1,'[{\"added\": {}}]',14,2),(129,'2018-05-15 15:58:36.801896','28','Processo 10/2017',1,'[{\"added\": {}}]',10,2),(130,'2018-05-15 16:00:17.035723','53','Convite_08.2017serviço_de_digitalizaçao.pdf',1,'[{\"added\": {}}]',13,2),(131,'2018-05-15 16:00:44.109294','54','ATA_DO_CONVITE_008.2017_PL_10_2017.pdf',1,'[{\"added\": {}}]',13,2),(132,'2018-05-15 16:01:45.020713','55','contrato_nº_010.17__DIGITALIZACAO.pdf',1,'[{\"added\": {}}]',13,2),(133,'2018-05-15 16:01:49.067621','23','Convite - 8/2017',1,'[{\"added\": {}}]',14,2),(134,'2018-05-15 16:06:03.081087','29','Processo 11/2017',1,'[{\"added\": {}}]',10,2),(135,'2018-05-15 16:07:23.417723','56','Convite_009.2017_serviçosde_pintura_etc..pdf',1,'[{\"added\": {}}]',13,2),(136,'2018-05-15 16:08:00.302410','57','ATA_DO_CONVITE_09.2017_CONTRATAÇÃO_DE_SERVIÇOS_DE_PINTURA_E_OUTROS..pdf',1,'[{\"added\": {}}]',13,2),(137,'2018-05-15 16:08:31.270256','58','contrato_n.011.17_serviço_de_pintura_demolicao_recuperação_etc.pdf',1,'[{\"added\": {}}]',13,2),(138,'2018-05-15 16:08:35.186307','24','Convite - 9/2017',1,'[{\"added\": {}}]',14,2),(139,'2018-05-15 16:14:17.899793','17','Convite - 3/2017',2,'[]',14,1),(140,'2018-05-15 16:15:09.095745','17','Convite - 3/2017',2,'[]',14,1),(141,'2018-05-15 16:15:42.588872','16','Convite - 2/2017',2,'[]',14,1),(142,'2018-05-15 16:16:10.202527','17','Convite - 3/2017',2,'[{\"changed\": {\"fields\": [\"criado_em\"]}}]',14,1),(143,'2018-05-15 16:16:26.405410','17','Convite - 3/2017',2,'[{\"changed\": {\"fields\": [\"criado_em\"]}}]',14,1),(144,'2018-05-15 16:16:48.268598','16','Convite - 2/2017',2,'[{\"changed\": {\"fields\": [\"criado_em\"]}}]',14,1),(145,'2018-05-15 16:17:03.296858','16','Convite - 2/2017',2,'[{\"changed\": {\"fields\": [\"criado_em\"]}}]',14,1),(146,'2018-05-15 16:17:13.452481','17','Convite - 3/2017',2,'[{\"changed\": {\"fields\": [\"criado_em\"]}}]',14,1),(147,'2018-05-15 16:17:53.813016','17','Convite - 3/2017',2,'[{\"changed\": {\"fields\": [\"criado_em\"]}}]',14,1),(148,'2018-05-16 10:21:34.790841','30','Processo 12/2017',1,'[{\"added\": {}}]',10,2),(149,'2018-05-16 10:23:56.496856','59','Convite_010.2017_serviços_d_reparos_manutenção_adaptação_etc..pdf',1,'[{\"added\": {}}]',13,2),(150,'2018-05-16 10:30:06.959002','60','ATA_DO_CONVITE_010.2017.pdf',1,'[{\"added\": {}}]',13,2),(151,'2018-05-16 10:30:46.193440','61','contrato_n.012.17_serviço_de_rede_de_telefonia_e_computador_etc.pdf',1,'[{\"added\": {}}]',13,2),(152,'2018-05-16 10:30:51.812965','25','Convite - 10/2017',1,'[{\"added\": {}}]',14,2),(153,'2018-05-16 10:46:22.219534','31','Processo 1/2016',1,'[{\"added\": {}}]',10,2),(154,'2018-05-16 10:48:00.681731','62','RATIFICA__DISPENSA_01.16_suporte.pdf',1,'[{\"added\": {}}]',13,2),(155,'2018-05-16 10:48:33.811569','63','contrato_nº_001.16_SEQUENCE.pdf',1,'[{\"added\": {}}]',13,2),(156,'2018-05-16 10:48:41.304823','26','Dispensa - 1/2016',1,'[{\"added\": {}}]',14,2),(157,'2018-05-16 11:12:04.409290','32','Processo 2/2016',1,'[{\"added\": {}}]',10,2),(158,'2018-05-16 11:13:42.787548','64','Convite_Nº_001.16__fornecimento_de_material_de_expediente.pdf',1,'[{\"added\": {}}]',13,2),(159,'2018-05-16 11:14:09.377303','65','_ATA_DO_CONVITE_01.2016.pdf',1,'[{\"added\": {}}]',13,2),(160,'2018-05-16 11:14:42.357413','66','contrato_n.002.16_EXPEDIENTE.pdf',1,'[{\"added\": {}}]',13,2),(161,'2018-05-16 11:15:10.856745','27','Convite - 1/2016',1,'[{\"added\": {}}]',14,2),(162,'2018-05-16 11:18:01.140518','33','Processo 3/2016',1,'[{\"added\": {}}]',10,2),(163,'2018-05-16 11:19:12.955550','67','Convite_Nº_002.16_contratação_de_empresa_para_prestação_de_serviços_de_fotocopias_e_encadernação.pdf',1,'[{\"added\": {}}]',13,2),(164,'2018-05-16 11:19:40.876781','68','_ATA_DO_CONVITE_02.2016.pdf',1,'[{\"added\": {}}]',13,2),(165,'2018-05-16 11:20:07.700217','69','contrato_n.003.16_ENCADERNAÇÃO.pdf',1,'[{\"added\": {}}]',13,2),(166,'2018-05-16 11:20:15.031086','28','Convite - 2/2016',1,'[{\"added\": {}}]',14,2),(167,'2018-05-16 11:22:03.657125','34','Processo 4/2016',1,'[{\"added\": {}}]',10,2),(168,'2018-05-16 11:23:12.662605','70','Convite_Nº_003.16__fornecimento_de_material_de_limpeza.pdf',1,'[{\"added\": {}}]',13,2),(169,'2018-05-16 11:23:38.499453','71','_ATA_DO_CONVITE_03.2016.pdf',1,'[{\"added\": {}}]',13,2),(170,'2018-05-16 11:24:18.825245','72','contrato_n.004.16_LIMPEZA.pdf',1,'[{\"added\": {}}]',13,2),(171,'2018-05-16 11:24:24.808516','29','Convite - 3/2016',1,'[{\"added\": {}}]',14,2),(172,'2018-05-16 11:26:33.944353','35','Processo 5/2016',1,'[{\"added\": {}}]',10,2),(173,'2018-05-16 11:27:42.453443','73','Convite_Nº_004.16__fornecimento_de_material_de_informatica.pdf',1,'[{\"added\": {}}]',13,2),(174,'2018-05-16 11:28:05.597979','74','_ATA_DO_CONVITE_04.2016.pdf',1,'[{\"added\": {}}]',13,2),(175,'2018-05-16 11:28:34.386677','75','contrato_n.005.16_INFORMATICA.pdf',1,'[{\"added\": {}}]',13,2),(176,'2018-05-16 11:28:38.110021','30','Convite - 4/2016',1,'[{\"added\": {}}]',14,2),(177,'2018-05-16 11:30:21.167376','36','Processo 6/2016',1,'[{\"added\": {}}]',10,2),(178,'2018-05-16 11:31:29.636870','76','RATIFICA__DISPENSA_02.16_agua_mineral.pdf',1,'[{\"added\": {}}]',13,2),(179,'2018-05-16 11:31:58.402592','77','CONTRATO_Nº_06.2016_AGUA_NATURAL.pdf',1,'[{\"added\": {}}]',13,2),(180,'2018-05-16 11:32:06.165575','31','Dispensa - 2/2016',1,'[{\"added\": {}}]',14,2),(181,'2018-05-16 11:35:48.440673','37','Processo 7/2016',1,'[{\"added\": {}}]',10,2),(182,'2018-05-16 11:39:43.161494','78','Pregao_Presencial_n._001_16_Arcondicionado.pdf',1,'[{\"added\": {}}]',13,2),(183,'2018-05-16 11:40:12.848654','79','ata_pregão_001.2016_arcndicionado.pdf',1,'[{\"added\": {}}]',13,2),(184,'2018-05-16 11:40:45.534245','80','contrato_nº_007.16_AR_CONDICIONADOS.pdf',1,'[{\"added\": {}}]',13,2),(185,'2018-05-16 11:40:51.328167','32','Pregão - 1/2016',1,'[{\"added\": {}}]',14,2),(186,'2018-05-16 11:48:09.981429','38','Processo 8/2016',1,'[{\"added\": {}}]',10,2),(187,'2018-05-16 11:50:50.775826','81','RATIFICA__DISPENSA_03.16_suporte_ponto.pdf',1,'[{\"added\": {}}]',13,2),(188,'2018-05-16 11:52:04.388556','82','contrato_nº_008.16_SEQUENCE.pdf',1,'[{\"added\": {}}]',13,2),(189,'2018-05-16 11:52:12.936048','33','Dispensa - 3/2016',1,'[{\"added\": {}}]',14,2),(190,'2018-05-16 11:54:21.514499','39','Processo 9/2016',1,'[{\"added\": {}}]',10,2),(191,'2018-05-16 11:59:29.323669','83','RATIFICA__DISPENSA_04.16_relogio.pdf',1,'[{\"added\": {}}]',13,2),(192,'2018-05-16 12:01:03.785129','34','Dispensa - 4/2016',1,'[{\"added\": {}}]',14,2),(193,'2018-07-10 12:20:30.230841','9','Dados de 8/2018',1,'[{\"added\": {}}]',16,1),(194,'2018-07-13 13:42:59.936475','9','Dados de 8/2018',3,'',16,1),(195,'2018-07-13 13:43:38.242055','10','Dados de 12/2018',1,'[{\"added\": {}}]',16,1),(196,'2018-07-13 15:49:21.847920','253','ZILMARIO JOSE DA SILVA JUNIOR',3,'',17,1),(197,'2018-07-13 15:49:21.901620','252','WOLLACE LUIZ DOS SANTOS DA SIL',3,'',17,1),(198,'2018-07-13 15:49:21.946156','251','WILMA CAMPOS BEZERRA',3,'',17,1),(199,'2018-07-13 15:49:21.990732','250','WILLIAM SILVA DE OLIVEIRA',3,'',17,1),(200,'2018-07-13 15:49:22.035297','249','WENDELL GILBERTO PEREIRA ALVES',3,'',17,1),(201,'2018-07-13 15:49:22.079519','248','WELTON CARLOS DA SILVA',3,'',17,1),(202,'2018-07-13 15:49:22.124485','247','WALTER ILTON DE SOUZA PINHEIRO',3,'',17,1),(203,'2018-07-13 15:49:22.169054','246','WALQUIRIA SOARES DE AZEVEDO SI',3,'',17,1),(204,'2018-07-13 15:49:22.213566','245','VIVIANE SARAIVA DO NASCIMENTO',3,'',17,1),(205,'2018-07-13 15:49:22.258096','244','VICTOR PEREIRA CABRAL',3,'',17,1),(206,'2018-07-13 15:49:22.302656','243','VERIDIANA SOARES OLIVEIRA DA S',3,'',17,1),(207,'2018-07-13 15:49:22.347166','242','VALERIA VANDA GOMES',3,'',17,1),(208,'2018-07-13 15:49:22.391776','241','UBIRAJARA FERREIRA DA SILVA',3,'',17,1),(209,'2018-07-13 15:49:22.436356','240','THAISE DO NASCIMENTO MARQUES',3,'',17,1),(210,'2018-07-13 15:49:22.480912','239','TATIANE OLIVEIRA DA SILVA',3,'',17,1),(211,'2018-07-13 15:49:22.563728','238','TANIA BRUNO LOPES',3,'',17,1),(212,'2018-07-13 15:49:22.603239','237','TAMARA SANTOS DE OLIVEIRA',3,'',17,1),(213,'2018-07-13 15:49:22.647870','236','TADEU CESAR BARBOSA CAVALCANTI',3,'',17,1),(214,'2018-07-13 15:49:22.692518','235','SUZI DAYANE SANTANA XAVIER',3,'',17,1),(215,'2018-07-13 15:49:22.736999','234','SUZANA OLIVEIRA CALADO',3,'',17,1),(216,'2018-07-13 15:49:22.781580','233','STHEFANY PAULA MOURA DOS SANTO',3,'',17,1),(217,'2018-07-13 15:49:22.881343','232','SONIA MARIA FERREIRA DA SILVA',3,'',17,1),(218,'2018-07-13 15:49:22.961698','231','SIZENANDO TRAJANO DE ARRUDA FI',3,'',17,1),(219,'2018-07-13 15:49:23.017032','230','SINIEL COSTA DE LIMA',3,'',17,1),(220,'2018-07-13 15:49:23.072616','229','SILVIANE PITANCO DE LIMA',3,'',17,1),(221,'2018-07-13 15:49:23.228951','228','SILVANA CRISTINA COSTA DOS SAN',3,'',17,1),(222,'2018-07-13 15:49:23.284955','227','SEVERINO SARAIVA DE ARRUDA',3,'',17,1),(223,'2018-07-13 15:49:23.340219','226','SEVERINO BORGES DOS SANTOS FIL',3,'',17,1),(224,'2018-07-13 15:49:23.395934','225','SEVERINA SOARES DA SILVA',3,'',17,1),(225,'2018-07-13 15:49:23.451549','224','SEVERINA FERREIRA SANTOS LOPES',3,'',17,1),(226,'2018-07-13 15:49:23.507369','223','SEBASTIAO VIRGILIO VIEIRA',3,'',17,1),(227,'2018-07-13 15:49:23.562910','222','SANDRO RAIMUNDO DE ANDRADE',3,'',17,1),(228,'2018-07-13 15:49:23.618570','221','SANDRA VICENTE DE FREITAS',3,'',17,1),(229,'2018-07-13 15:49:23.674115','220','SANDRA DUARTE DA SILVA ALVES',3,'',17,1),(230,'2018-07-13 15:49:23.729716','219','RUANITA MARIA BARBOSA DOS RAMO',3,'',17,1),(231,'2018-07-13 15:49:23.785543','218','ROSINEIDE MARIA DA SILVA',3,'',17,1),(232,'2018-07-13 15:49:23.841079','217','ROSIETE VIANA GOMES FREITAS',3,'',17,1),(233,'2018-07-13 15:49:23.896768','216','ROSECLEIDE PEREIRA DA SILVA AL',3,'',17,1),(234,'2018-07-13 15:49:23.952461','215','ROSANGELA FERREIRA DA SILVA',3,'',17,1),(235,'2018-07-13 15:49:24.008274','214','ROGERIO FRANCISCO DE BARROS',3,'',17,1),(236,'2018-07-13 15:49:24.063551','213','ROBERTO MAURO DE OLIVEIRA GOME',3,'',17,1),(237,'2018-07-13 15:49:24.174991','212','RIVONIA JOSE DE LIMA AMORIM',3,'',17,1),(238,'2018-07-13 15:49:24.230447','211','RIVALDO CARLOS DOS SANTOS',3,'',17,1),(239,'2018-07-13 15:49:24.286117','210','RITA DE CASSIA DA SILVA MOREIR',3,'',17,1),(240,'2018-07-13 15:49:24.341770','209','RISLANE CRISTINA DE SANTANA GL',3,'',17,1),(241,'2018-07-13 15:49:24.386310','208','RINALDO MARCOS DE SANTANA',3,'',17,1),(242,'2018-07-13 15:49:24.430871','207','RICARDO JOSE FERREIRA',3,'',17,1),(243,'2018-07-13 15:49:24.475429','206','RENATA KARINE DA SILVA CORDEIR',3,'',17,1),(244,'2018-07-13 15:49:24.520147','205','RENAN CARDEAL PACHECO DA SILVA',3,'',17,1),(245,'2018-07-13 15:49:24.564526','204','REINILDO BILAR DA SILVA',3,'',17,1),(246,'2018-07-13 15:49:24.609067','203','REGINALDO RIBEIRO DE ALMEIDA F',3,'',17,1),(247,'2018-07-13 15:49:24.653668','202','REGINALDO GOMES DE MELO',3,'',17,1),(248,'2018-07-13 15:49:24.698363','201','RAUL MAGNO GAIAO',3,'',17,1),(249,'2018-07-13 15:49:24.742873','200','RAQUEL FERREIRA DA SILVA',3,'',17,1),(250,'2018-07-13 15:49:24.787369','199','RANNIERLY LAIS OLIVEIRA DE LIM',3,'',17,1),(251,'2018-07-13 15:49:24.831835','198','RAISSA ARA ARANTES DE SALES',3,'',17,1),(252,'2018-07-13 15:49:24.876432','197','PEDRO ROMULO DA ROCHA BARROS N',3,'',17,1),(253,'2018-07-13 15:49:24.921224','196','PEDRO BARBOSA TINOCO NETO',3,'',17,1),(254,'2018-07-13 15:49:24.965497','195','PAULO THIAGO BEZERRA RIBEIRO V',3,'',17,1),(255,'2018-07-13 15:49:25.010061','194','PATRICIA MARIA DORNELAS DO NAS',3,'',17,1),(256,'2018-07-13 15:49:25.054606','193','OSIAS FERREIRA DE LIMA JUNIOR',3,'',17,1),(257,'2018-07-13 15:49:25.121524','192','OSEIA BEZERRA DE LIMA',3,'',17,1),(258,'2018-07-13 15:49:25.221565','191','ONASSIS MORENO SOARES',3,'',17,1),(259,'2018-07-13 15:49:25.299749','190','NIVALDO MONTEIRO DA SILVA',3,'',17,1),(260,'2018-07-13 15:49:25.400264','189','NIVALDO ANASTACIO DE SOUZA JUN',3,'',17,1),(261,'2018-07-13 15:49:25.444746','188','NILZA CANDIDA NUNES NETA',3,'',17,1),(262,'2018-07-13 15:49:25.489378','187','NILTON CLEMENTINO DA SILVA',3,'',17,1),(263,'2018-07-13 15:49:25.533945','186','NEWTON DA SILVA BRASILEIRO NET',3,'',17,1),(264,'2018-07-13 15:49:25.578583','185','NEWTON CARLOS LINS CRUZ',3,'',17,1),(265,'2018-07-13 15:49:25.623022','184','NELSON JOSE DA SILVA',3,'',17,1),(266,'2018-07-13 15:49:25.667397','183','NADLY KAROLA GOMES FERNANDES',3,'',17,1),(267,'2018-07-13 15:49:25.711722','182','NADJA ALVES DA SILVA',3,'',17,1),(268,'2018-07-13 15:49:25.756477','181','MOISES CARNEIRO GONCALVES JUNI',3,'',17,1),(269,'2018-07-13 15:49:25.800815','180','MOACIR OLIVEIRA MELO',3,'',17,1),(270,'2018-07-13 15:49:25.845719','179','MICHELE MARIA DA SILVA',3,'',17,1),(271,'2018-07-13 15:49:25.890459','178','MELQUEZEDEQUE LIMA DE ALMEIDA',3,'',17,1),(272,'2018-07-13 15:49:25.934937','177','MARLUS DE ARAUJO COSTA',3,'',17,1),(273,'2018-07-13 15:49:25.979458','176','MARLEIDE ARAUJO DO NASCIMENTO',3,'',17,1),(274,'2018-07-13 15:49:26.023772','175','MARIZA HENRIQUE DA SILVA SANTO',3,'',17,1),(275,'2018-07-13 15:49:26.068317','174','MARIO ALVES DE OLIVEIRA FILHO',3,'',17,1),(276,'2018-07-13 15:49:26.190722','173','MARIA MONICA DO NASCIMENTO',3,'',17,1),(277,'2018-07-13 15:49:26.268638','172','MARIA ELIZANDRA SANTOS DE OLIV',3,'',17,1),(278,'2018-07-13 15:49:26.313199','171','MARIA DE FATIMA GOMES',3,'',17,1),(279,'2018-07-13 15:49:26.358126','170','MARIA CRISTINA LIMA DA SILVA',3,'',17,1),(280,'2018-07-13 15:49:26.402267','169','MARIA APARECIDA DO NASCIMENTO',3,'',17,1),(281,'2018-07-13 15:49:26.446805','168','MARIA APARECIDA DE ANDRADE',3,'',17,1),(282,'2018-07-13 15:49:26.491452','167','MARCIO HENRIQUE DE OLIVEIRA SI',3,'',17,1),(283,'2018-07-13 15:49:26.536145','166','MARCIO HENRIQUE BARBOSA MACIEL',3,'',17,1),(284,'2018-07-13 15:49:26.580822','165','MAGDA HILARIO CORREA DA SILVA',3,'',17,1),(285,'2018-07-13 15:49:26.625394','164','LUIZ PEREIRA DE LIMA',3,'',17,1),(286,'2018-07-13 15:49:26.669858','163','LUIS VICTOR DO REGO FERREIRA',3,'',17,1),(287,'2018-07-13 15:49:26.714028','162','LUCINEIDE MARIA DA CUNHA',3,'',17,1),(288,'2018-07-13 15:49:26.758632','161','LUCAS ANDRE VERCOSA BRAINER',3,'',17,1),(289,'2018-07-13 15:49:26.803132','160','LEONARDO ROBERTO DOS SANTOS',3,'',17,1),(290,'2018-07-13 15:49:26.847988','159','LEONARDO DIAS RAMALHO',3,'',17,1),(291,'2018-07-13 15:49:26.892658','158','LENILDO DE OLIVEIRA BRITO',3,'',17,1),(292,'2018-07-13 15:49:26.937292','157','LENIDICE CAVALCANTI DE ALMEIDA',3,'',17,1),(293,'2018-07-13 15:49:26.981796','156','LEANDRO ANTONIO SANTOS DO NASC',3,'',17,1),(294,'2018-07-13 15:49:27.026010','155','LAUDICEA LOPES BASTOS DA SILVA',3,'',17,1),(295,'2018-07-13 15:49:27.092928','154','LAIZA PATRICIA LINS DE MELO',3,'',17,1),(296,'2018-07-13 15:49:53.176550','153','KAROLAYNE ALESSANDRA ALMEIDA S',3,'',17,1),(297,'2018-07-13 15:49:53.280923','152','JULIANA RIBEIRO DA SILVA',3,'',17,1),(298,'2018-07-13 15:49:53.325744','151','JULIANA GOMES DE MIRANDA',3,'',17,1),(299,'2018-07-13 15:49:53.369939','150','JULHA MARIANA FLORA DA SILVA P',3,'',17,1),(300,'2018-07-13 15:49:53.414562','149','JOSUEL FRANCISCO DOS SANTOS',3,'',17,1),(301,'2018-07-13 15:49:53.459422','148','JOSUE DA SILVA',3,'',17,1),(302,'2018-07-13 15:49:53.503523','147','JOSIVALDO JOAO CABRAL',3,'',17,1),(303,'2018-07-13 15:49:53.548114','146','JOSELITO NUNES',3,'',17,1),(304,'2018-07-13 15:49:53.592804','145','JOSE VILMAR CAVALCANTI DE MELO',3,'',17,1),(305,'2018-07-13 15:49:53.637293','144','JOSE ROSIVALDO HENRIQUE DA SIL',3,'',17,1),(306,'2018-07-13 15:49:53.682141','143','JOSE PEREIRA DE MENEZES',3,'',17,1),(307,'2018-07-13 15:49:53.726320','142','JOSE LEONARDO DINIZ',3,'',17,1),(308,'2018-07-13 15:49:53.770991','141','JOSE IRTON ALVES DOS SANTOS',3,'',17,1),(309,'2018-07-13 15:49:53.815936','140','JOSE GEZIEL LIRA DE ARAUJO',3,'',17,1),(310,'2018-07-13 15:49:53.860309','139','JOSE DA SILVA FELIX',3,'',17,1),(311,'2018-07-13 15:49:53.904624','138','JOSE CARLOS PEREIRA DO ESPIRIT',3,'',17,1),(312,'2018-07-13 15:49:53.949285','137','JOSE CARLOS DOS SANTOS',3,'',17,1),(313,'2018-07-13 15:49:53.993850','136','JOSE BARTOLOMEU DOS SANTOS',3,'',17,1),(314,'2018-07-13 15:49:54.038134','135','JOSE ANTONIO DA SILVA',3,'',17,1),(315,'2018-07-13 15:49:54.082743','134','JOSABETE MARIA DA SILVA',3,'',17,1),(316,'2018-07-13 15:49:54.227891','133','JORGE JOSE DA SILVA MELO',3,'',17,1),(317,'2018-07-13 15:49:54.272394','132','JOCEMAR FERREIRA NOBERTO',3,'',17,1),(318,'2018-07-13 15:49:54.316613','131','JOAO MIGUEL RIBEIRO',3,'',17,1),(319,'2018-07-13 15:49:54.361213','130','JOAO JUSTINO DA SILVA',3,'',17,1),(320,'2018-07-13 15:49:54.406286','129','JOAO DA SILVA AMORIM FILHO',3,'',17,1),(321,'2018-07-13 15:49:54.461884','128','JOAO BATISTA CAMPELO',3,'',17,1),(322,'2018-07-13 15:49:54.506500','127','JOAO ANTONIO PEREIRA DA SILVA',3,'',17,1),(323,'2018-07-13 15:49:54.561568','126','JOANA DARC FELIPE',3,'',17,1),(324,'2018-07-13 15:49:54.606171','125','JOABE CELIO DE ALBUQUERQUE',3,'',17,1),(325,'2018-07-13 15:49:54.650713','124','JECIANE STEFANE FERREIRA GAMEN',3,'',17,1),(326,'2018-07-13 15:49:54.695781','123','JAIMARIO DA SILVA',3,'',17,1),(327,'2018-07-13 15:49:54.751390','122','JAILTON HERCILIO DA SILVA',3,'',17,1),(328,'2018-07-13 15:49:54.806982','121','JAILSON GOMES DE FREITAS',3,'',17,1),(329,'2018-07-13 15:49:54.862603','120','JACIRA DE ALMEIDA PORTELA',3,'',17,1),(330,'2018-07-13 15:49:54.918361','119','JACELY DO VALE SILVA',3,'',17,1),(331,'2018-07-13 15:49:54.973983','118','ITALO LINS CORREIA DE QUEIROZ',3,'',17,1),(332,'2018-07-13 15:49:55.029338','117','ISIS SOARES LEAO',3,'',17,1),(333,'2018-07-13 15:49:55.073971','116','ISABELA FERREIRA DO NASCIMENTO',3,'',17,1),(334,'2018-07-13 15:49:55.219102','115','IGOR AFONSO CARVALHO DO AMARAL',3,'',17,1),(335,'2018-07-13 15:49:55.274636','114','HOZANA MARIA DA SILVA',3,'',17,1),(336,'2018-07-13 15:49:55.330230','113','HILDEBRANDO FERNANDO NOVO',3,'',17,1),(337,'2018-07-13 15:49:55.385800','112','HELIO VIRAES',3,'',17,1),(338,'2018-07-13 15:49:55.441731','111','HELIO MANOEL DA SILVA',3,'',17,1),(339,'2018-07-13 15:49:55.552937','110','HARYS RAFAEL LIRA LIMA',3,'',17,1),(340,'2018-07-13 15:49:55.608606','109','GUTEMBERG FELIPE ANDRADE DE SO',3,'',17,1),(341,'2018-07-13 15:49:55.664268','108','GIVANILDO PEDRO DA SILVA',3,'',17,1),(342,'2018-07-13 15:49:55.719789','107','GISELLE LAIS OLIVEIRA SOUZA LE',3,'',17,1),(343,'2018-07-13 15:49:55.775708','106','GILVANO JOSE DE OLIVEIRA MORAE',3,'',17,1),(344,'2018-07-13 15:49:55.831321','105','GILVAN BARBOSA DA SILVA JUNIOR',3,'',17,1),(345,'2018-07-13 15:49:55.886878','104','GILMAR LUIZ VITORINO',3,'',17,1),(346,'2018-07-13 15:49:55.942605','103','GILBERTO FLORENCIO DE ALBUQUER',3,'',17,1),(347,'2018-07-13 15:49:55.998171','102','GEYVES CHARLES ANTONIO DE SOUZ',3,'',17,1),(348,'2018-07-13 15:49:56.053622','101','GERALDO JOSE DA SILVA JUNIOR',3,'',17,1),(349,'2018-07-13 15:49:56.131724','100','GEDIANE PEREIRA DOS SANTOS',3,'',17,1),(350,'2018-07-13 15:49:56.256093','99','GEANE ALVES FERREIRA BARBOSA',3,'',17,1),(351,'2018-07-13 15:49:56.334134','98','GEAN CARLOS DE LIMA MOURA',3,'',17,1),(352,'2018-07-13 15:49:56.378732','97','GABRIELLA ALVES PESSOA',3,'',17,1),(353,'2018-07-13 15:49:56.423372','96','FERNANDO SERGIO DE ARAUJO PINH',3,'',17,1),(354,'2018-07-13 15:49:56.467734','95','FERNANDO GOMES DA SILVA JUNIOR',3,'',17,1),(355,'2018-07-13 15:49:56.512254','94','FERNANDO CESAR SILVA MENDES',3,'',17,1),(356,'2018-07-13 15:49:56.557001','93','FABIO MONTEIRO DE SOUZA',3,'',17,1),(357,'2018-07-13 15:49:56.601402','92','FABIO JOSE DA SILVA',3,'',17,1),(358,'2018-07-13 15:49:56.645968','91','FABIO HIGINO DOS SANTOS',3,'',17,1),(359,'2018-07-13 15:49:56.690612','90','EVANICE DAFNE PEREIRA DA SILVA',3,'',17,1),(360,'2018-07-13 15:49:56.735032','89','ERIVALDO JOSE DOS SANTOS',3,'',17,1),(361,'2018-07-13 15:49:56.779737','88','ERINALVA MARIA FERREIRA',3,'',17,1),(362,'2018-07-13 15:49:56.824187','87','ERICKSON DANGELIS DE SOUZA',3,'',17,1),(363,'2018-07-13 15:49:56.868795','86','EMERSON DE SOUZA BARBOSA',3,'',17,1),(364,'2018-07-13 15:49:56.913651','85','EMANUEL SOARES DA GAMA',3,'',17,1),(365,'2018-07-13 15:49:56.957863','84','ELZANETE BEZERRA DANTAS',3,'',17,1),(366,'2018-07-13 15:49:57.002293','83','ELIZAMA MARIA DE CARVALHO ALVE',3,'',17,1),(367,'2018-07-13 15:49:57.046514','82','ELIUD CORREIA NERY',3,'',17,1),(368,'2018-07-13 15:49:57.113407','81','ELISABETE VANIA DA SILVA',3,'',17,1),(369,'2018-07-13 15:49:57.225337','80','EDVALDO PAZ DE LIRA',3,'',17,1),(370,'2018-07-13 15:49:57.303061','79','EDUARDO GOMES DO NASCIMENTO',3,'',17,1),(371,'2018-07-13 15:49:57.347500','78','EDSON TOMAZ DE AQUINO',3,'',17,1),(372,'2018-07-13 15:49:57.414806','77','EDNA BEZERRA CRUZ DA SILVA',3,'',17,1),(373,'2018-07-13 15:49:57.503681','76','EDMILSON BARRETO DA SILVA',3,'',17,1),(374,'2018-07-13 15:49:57.559733','75','EDILMA MARIA DA SILVA',3,'',17,1),(375,'2018-07-13 15:49:57.604150','74','EDILEUZA MINERVINO DA SILVA',3,'',17,1),(376,'2018-07-13 15:49:57.648798','73','EDGLEBSON LOPES DA SILVA',3,'',17,1),(377,'2018-07-13 15:49:57.693404','72','EDCLECIO JOSE DOS SANTOS',3,'',17,1),(378,'2018-07-13 15:49:57.737987','71','DOUGGLAS FERNANDES DA SILVA PE',3,'',17,1),(379,'2018-07-13 15:49:57.782540','70','DIVA MARIA QUEIROZ DE ANDRADE',3,'',17,1),(380,'2018-07-13 15:49:57.826982','69','DIEGO BARBOSA DA SILVA',3,'',17,1),(381,'2018-07-13 15:49:57.871243','68','DIEGO ALEXANDRE DE JESUS DAMAS',3,'',17,1),(382,'2018-07-13 15:49:57.916298','67','DANILO DE ARAUJO RODRIGUES',3,'',17,1),(383,'2018-07-13 15:49:57.960703','66','DANILLO DE LIMA ARAUJO',3,'',17,1),(384,'2018-07-13 15:49:58.005152','65','DANIELA BARBOZA DA SILVA',3,'',17,1),(385,'2018-07-13 15:49:58.049333','64','DANIEL ALVES BEZERRA',3,'',17,1),(386,'2018-07-13 15:49:58.116211','63','CRISTIANE DE LIMA MENEZES',3,'',17,1),(387,'2018-07-13 15:49:58.239250','62','CLEITON MOISES RAMOS DOS SANTO',3,'',17,1),(388,'2018-07-13 15:49:58.317145','61','CLEISON DE MORAIS',3,'',17,1),(389,'2018-07-13 15:49:58.361611','60','CLECIA SIQUEIRA SILVA',3,'',17,1),(390,'2018-07-13 15:49:58.406334','59','CLAUDICEA BARBOSA DA SILVA',3,'',17,1),(391,'2018-07-13 15:49:58.450763','58','CHARLES DARKS RODRIGUES DE AGU',3,'',17,1),(392,'2018-07-13 15:49:58.495426','57','CASSANDRA KELLY DA COSTA MENDE',3,'',17,1),(393,'2018-07-13 15:49:58.550781','56','CARMEM JOHNSON PACHECO SILVA',3,'',17,1),(394,'2018-07-13 15:49:58.640077','55','CARLOS VICENTE FERREIRA',3,'',17,1),(395,'2018-07-13 15:49:58.695760','54','CARLOS SOARES DA SILVA',3,'',17,1),(396,'2018-07-13 15:49:58.740484','53','CARLOS EUGENIO BATISTA DA SILV',3,'',17,1),(397,'2018-07-13 15:49:58.796083','52','CARLOS EDUARDO SILVESTRE',3,'',17,1),(398,'2018-07-13 15:49:58.851664','51','CARLOS ANDRE DA SILVA',3,'',17,1),(399,'2018-07-13 15:49:58.907229','50','CARLOS ALBERTO MENDES DE BARRO',3,'',17,1),(400,'2018-07-13 15:49:58.962776','49','CARLOS ALBERTO HERMINIO DA SIL',3,'',17,1),(401,'2018-07-13 15:49:59.007537','48','CARLOS ALBERTO GUEDES DA SILVA',3,'',17,1),(402,'2018-07-13 15:49:59.062836','47','CARLOS ALBERTO DO NASCIMENTO',3,'',17,1),(403,'2018-07-13 15:49:59.185680','46','CARLOS ALBERTO DA SILVA',3,'',17,1),(404,'2018-07-13 15:49:59.252371','45','CARLOS ALBERTO BEZERRA',3,'',17,1),(405,'2018-07-13 15:49:59.308001','44','CARLA TATIANE DA SILVA',3,'',17,1),(406,'2018-07-13 15:49:59.363646','43','BRUNO RAFAEL FERREIRA DOS SANT',3,'',17,1),(407,'2018-07-13 15:49:59.419261','42','BRUNO COELHO VALENCA',3,'',17,1),(408,'2018-07-13 15:49:59.475119','41','BISMARK  JOSE DA SILVA',3,'',17,1),(409,'2018-07-13 15:49:59.530839','40','BIANCA SIMONELLE MENDES DA SIL',3,'',17,1),(410,'2018-07-13 15:49:59.586329','39','AZENAITE MARIA DOS SANTOS',3,'',17,1),(411,'2018-07-13 15:49:59.641992','38','AWANNA BARBARA DA SILVA RAMOS',3,'',17,1),(412,'2018-07-13 15:49:59.697681','37','AURINO JOAO DOS SANTOS JUNIOR',3,'',17,1),(413,'2018-07-13 15:49:59.753311','36','ARLINDO DO NASCIMENTO DIAS',3,'',17,1),(414,'2018-07-13 15:49:59.809113','35','ARAO FRANCISCO DE SALES',3,'',17,1),(415,'2018-07-13 15:49:59.864758','34','ANTONIO PEREIRA DA SILVA',3,'',17,1),(416,'2018-07-13 15:49:59.920058','33','ANTONIO PEDRO DA SILVA',3,'',17,1),(417,'2018-07-13 15:49:59.975755','32','ANTONIO MARCIONILO DOS SANTOS',3,'',17,1),(418,'2018-07-13 15:50:00.031312','31','ANTONIO CORREIA DE LIRA',3,'',17,1),(419,'2018-07-13 15:50:00.109645','30','ANTONIO CARLOS DE LIMA',3,'',17,1),(420,'2018-07-13 15:50:00.220853','29','ANDREZA KELLY SILVA DE SOUZA',3,'',17,1),(421,'2018-07-13 15:50:00.298611','28','ANDREA LEANDRO MAGNO',3,'',17,1),(422,'2018-07-13 15:50:00.354845','27','ANDRE LUIZ DA SILVA',3,'',17,1),(423,'2018-07-13 15:50:00.409955','26','ANDERSON DE LIMA NEPOMUCENO',3,'',17,1),(424,'2018-07-13 15:50:00.465709','25','ANA REGINA FELIX DOS SANTOS AN',3,'',17,1),(425,'2018-07-13 15:50:00.521252','24','ANA PAULA SOUSA DE OLIVEIRA',3,'',17,1),(426,'2018-07-13 15:50:00.576887','23','ANA PAULA MIGUEL LIMA',3,'',17,1),(427,'2018-07-13 15:50:00.632634','22','ANA PAULA DE LIMA',3,'',17,1),(428,'2018-07-13 15:50:00.688357','21','ANA PAULA DA SILVA',3,'',17,1),(429,'2018-07-13 15:50:00.744036','20','ANA PAULA BRANDAO RODRIGUES DA',3,'',17,1),(430,'2018-07-13 15:50:00.799553','19','ANA MARIA DE SIQUEIRA VIEIRA',3,'',17,1),(431,'2018-07-13 15:50:00.855297','18','ANA LUCIA SANTOS FERNANDES',3,'',17,1),(432,'2018-07-13 15:50:00.911342','17','ANA CLAUDIA FARIAS DE BARROS',3,'',17,1),(433,'2018-07-13 15:50:00.967006','16','ALMIR CRISTIANO DE SENA',3,'',17,1),(434,'2018-07-13 15:50:01.022343','15','ALMIR CAMILO DA SILVA',3,'',17,1),(435,'2018-07-13 15:50:01.066802','14','ALLYSON DE SOUZA CHAVES',3,'',17,1),(436,'2018-07-13 15:50:01.200648','13','ALINE LIMA COSTA',3,'',17,1),(437,'2018-07-13 15:50:01.269192','12','ALINE CRISTINA DA SILVA',3,'',17,1),(438,'2018-07-13 15:50:01.313758','11','ALEXSANDRA DE SOUZA SANTOS',3,'',17,1),(439,'2018-07-13 15:50:01.358231','10','ALEX FERREIRA DE SOUZA',3,'',17,1),(440,'2018-07-13 15:50:01.402771','9','ALDO ALVES MONTEIRO DA COSTA',3,'',17,1),(441,'2018-07-13 15:50:01.447360','8','ALDIR FRANCISCO DA SILVA',3,'',17,1),(442,'2018-07-13 15:50:01.491810','7','ALDINEIDE FERREIRA DE SANTANA',3,'',17,1),(443,'2018-07-13 15:50:01.536395','6','AERIVALDO EDUARDO DOS SANTOS F',3,'',17,1),(444,'2018-07-13 15:50:01.581023','5','ADRIANO JOSE DA SILVA',3,'',17,1),(445,'2018-07-13 15:50:01.625793','4','ADEILSON FERRAZ DE ASSIS',3,'',17,1),(446,'2018-07-13 15:50:01.849916','3','ADEILDO PEREIRA LINS',3,'',17,1),(447,'2018-07-13 15:50:01.948154','2','ABNER GALINDO DE SIQUEIRA LIMA',3,'',17,1),(448,'2018-07-13 15:50:01.992609','1','ABEL SIQUEIRA PADUA',3,'',17,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'administrativo','orgao'),(2,'auth','group'),(4,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(9,'licitacao','ano'),(13,'licitacao','arquivo'),(11,'licitacao','contrato'),(14,'licitacao','modalidade'),(10,'licitacao','processo'),(12,'licitacao','situacao'),(8,'licitacao','tipo'),(16,'pessoal','arquivo'),(15,'pessoal','arquivos'),(17,'pessoal','pessoa'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-05-15 03:48:25.199820'),(2,'auth','0001_initial','2018-05-15 03:48:25.506400'),(3,'admin','0001_initial','2018-05-15 03:48:25.584437'),(4,'admin','0002_logentry_remove_auto_add','2018-05-15 03:48:25.597215'),(5,'administrativo','0001_initial','2018-05-15 03:48:25.616867'),(6,'contenttypes','0002_remove_content_type_name','2018-05-15 03:48:25.682669'),(7,'auth','0002_alter_permission_name_max_length','2018-05-15 03:48:25.718180'),(8,'auth','0003_alter_user_email_max_length','2018-05-15 03:48:25.755632'),(9,'auth','0004_alter_user_username_opts','2018-05-15 03:48:25.768319'),(10,'auth','0005_alter_user_last_login_null','2018-05-15 03:48:25.800170'),(11,'auth','0006_require_contenttypes_0002','2018-05-15 03:48:25.803760'),(12,'auth','0007_alter_validators_add_error_messages','2018-05-15 03:48:25.816225'),(13,'auth','0008_alter_user_username_max_length','2018-05-15 03:48:25.881477'),(14,'auth','0009_alter_user_last_name_max_length','2018-05-15 03:48:25.919262'),(15,'sessions','0001_initial','2018-05-15 03:48:25.946383'),(16,'licitacao','0001_initial','2018-05-15 03:52:58.619024'),(17,'licitacao','0002_auto_20180515_0057','2018-05-15 03:57:32.713549'),(18,'licitacao','0002_auto_20180515_0031','2018-07-10 11:41:51.762901'),(19,'licitacao','0003_auto_20180515_0031','2018-07-10 11:41:51.889384'),(20,'licitacao','0004_auto_20180710_0841','2018-07-10 11:41:52.086465'),(21,'pessoal','0001_initial','2018-07-10 11:41:52.463991'),(22,'licitacao','0005_auto_20180710_0854','2018-07-10 11:54:21.242480'),(23,'pessoal','0002_auto_20180710_0854','2018-07-10 11:54:22.076592'),(24,'licitacao','0006_auto_20180710_0903','2018-07-10 12:03:32.943352'),(25,'pessoal','0003_arquivo_identificacao','2018-07-10 12:03:33.661788'),(26,'licitacao','0007_auto_20180710_0904','2018-07-10 12:04:08.387736'),(27,'pessoal','0004_auto_20180710_0904','2018-07-10 12:04:10.706669'),(28,'licitacao','0008_auto_20180710_0904','2018-07-10 12:04:31.375816'),(29,'pessoal','0005_auto_20180710_0904','2018-07-10 12:04:33.082918'),(30,'licitacao','0009_auto_20180710_0914','2018-07-10 12:14:48.775106'),(31,'licitacao','0010_auto_20180710_0918','2018-07-10 12:18:56.733074'),(32,'pessoal','0006_auto_20180710_0918','2018-07-10 12:18:57.488611'),(33,'licitacao','0011_auto_20180713_1237','2018-07-13 15:37:21.349958'),(34,'pessoal','0007_auto_20180713_1237','2018-07-13 15:37:21.807070'),(35,'licitacao','0012_auto_20180713_1238','2018-07-13 15:38:56.904607'),(36,'pessoal','0008_auto_20180713_1238','2018-07-13 15:38:57.839218'),(37,'licitacao','0013_auto_20180713_1240','2018-07-13 15:40:10.538885'),(38,'pessoal','0009_auto_20180713_1240','2018-07-13 15:40:13.916617');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('amlys3d1e58ujzxfzxixc8tjrxvb8lkf','MDI5Yjk5OGQzMGFlZDRmZGViYmY5OGU1OGJiNTZjOWRmNGRiYjM0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3Y2Y0MzU0ZWM5MWQ1OTc1YmZmZDRmNWZiZGQ5OTQ4OGJhNjk3ODEwIn0=','2018-07-27 13:42:50.052723'),('bzbrfwxiucgyqtoms3w12ld89mm5mlt6','MDI5Yjk5OGQzMGFlZDRmZGViYmY5OGU1OGJiNTZjOWRmNGRiYjM0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3Y2Y0MzU0ZWM5MWQ1OTc1YmZmZDRmNWZiZGQ5OTQ4OGJhNjk3ODEwIn0=','2018-07-24 11:35:26.981780'),('evff4v88wez58jcyrl0qbquldxnpq9p1','MzJlNDgzNDJkMDJhZWQ3OTUwYzBlYWY0MWE4ZTk3MGJiOThhMzY2MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3Y2Y0MzU0ZWM5MWQ1OTc1YmZmZDRmNWZiZGQ5OTQ4OGJhNjk3ODEwIn0=','2018-05-29 14:04:54.357899'),('j1lvmawzl0nwrr34zkyindl1jauih0yw','MDI5Yjk5OGQzMGFlZDRmZGViYmY5OGU1OGJiNTZjOWRmNGRiYjM0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3Y2Y0MzU0ZWM5MWQ1OTc1YmZmZDRmNWZiZGQ5OTQ4OGJhNjk3ODEwIn0=','2018-07-26 00:34:06.368403'),('nk0hotl011yzmhr9auj8tt6oteyja7ax','MzJlNDgzNDJkMDJhZWQ3OTUwYzBlYWY0MWE4ZTk3MGJiOThhMzY2MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3Y2Y0MzU0ZWM5MWQ1OTc1YmZmZDRmNWZiZGQ5OTQ4OGJhNjk3ODEwIn0=','2018-05-29 14:38:40.297921'),('zjol2gjqlzbddlgezw093q7latsfw3fv','N2RmYTIxMTY1NmQxMDVhYjA3NTAyZDlmMjJkY2JhNmFmZDk2ZDI0Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2NmNDM1NGVjOTFkNTk3NWJmZmQ0ZjVmYmRkOTk0ODhiYTY5NzgxMCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-05-29 03:49:14.001229');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licitacao_ano`
--

DROP TABLE IF EXISTS `licitacao_ano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licitacao_ano` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ano` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licitacao_ano`
--

LOCK TABLES `licitacao_ano` WRITE;
/*!40000 ALTER TABLE `licitacao_ano` DISABLE KEYS */;
/*!40000 ALTER TABLE `licitacao_ano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licitacao_arquivo`
--

DROP TABLE IF EXISTS `licitacao_arquivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licitacao_arquivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(100) DEFAULT NULL,
  `nome` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licitacao_arquivo`
--

LOCK TABLES `licitacao_arquivo` WRITE;
/*!40000 ALTER TABLE `licitacao_arquivo` DISABLE KEYS */;
INSERT INTO `licitacao_arquivo` VALUES (1,'RATIFICA__DISPENSA_01.18__PINTURA_LONGARINAS.pdf','RATIFICA  DISPENSA 01.18  PINTURA LONGARINAS.pdf'),(2,'CONTRATO_Nº_01.2018_REPAROS_E_PINTURA_LONGARINAS.pdf','CONTRATO Nº 01.2018 REPAROS E PINTURA LONGARINAS.pdf'),(3,'contrato_n.002.18_ENCADERNAÇÃO.pdf','contrato n.002.18 ENCADERNAÇÃO.pdf'),(4,'Convite_Nº_001.18_contratação_de_empresa_para_prestação_de_serviços_de_fotocopias_e_encadernação.pdf','Convite Nº 001.18 contratação de empresa para prestação de serviços de fotocopias e encadernação.pdf'),(5,'Convite_Nº_001.18_contratação_de_empresa_para_prestação_de_serviços_de_fotocopias_e_enca_WqOBuKo.pdf','Convite Nº 001.18 contratação de empresa para prestação de serviços de fotocopias e encadernação.pdf'),(6,'ATA_DO_CONVITE_01.2018.pdf','ATA DO CONVITE 01.2018.pdf'),(7,'RATIFICA__DISPENSA_02.18_placas_de_titulos_de_ciddao_e_certificados.pdf','RATIFICA  DISPENSA 02.18 placas de titulos de ciddao e certificados.pdf'),(8,'CONTRATO_Nº_03.2018_METAL_PLACAS.pdf','CONTRATO Nº 03.2018 METAL PLACAS.pdf'),(9,'Convite_Nº_002.18__fornecimento_de_material_de_expediente.pdf','Convite Nº 002.18  fornecimento de material de expediente.pdf'),(10,'ATA_DO_CONVITE_02.2018.pdf','ATA DO CONVITE 02.2018.pdf'),(11,'contrato_n.004.2018_EXPEDIENTE.pdf','contrato n.004.2018 EXPEDIENTE.pdf'),(12,'Convite_Nº_003.18__fornecimento_de_material_de_limpeza.pdf','Convite Nº 003.18  fornecimento de material de limpeza.pdf'),(13,'ATA_DO_CONVITE_03.2018.pdf','ATA DO CONVITE 03.2018.pdf'),(14,'contrato_n.005.2018_LIMPEZA.pdf','contrato n.005.2018 LIMPEZA.pdf'),(15,'RATIFICA__DISPENSA_03.18_CONFECÇÃO_DE_FARDAMENTOS.pdf','RATIFICA  DISPENSA 03.18 CONFECÇÃO DE FARDAMENTOS.pdf'),(16,'CONTRATO_Nº_06.2018_FARDAMENTO.pdf','CONTRATO Nº 06.2018 FARDAMENTO.pdf'),(17,'Convite_Nº_004.18__fornecimento_de_material_de_informatica.pdf','Convite Nº 004.18  fornecimento de material de informatica.pdf'),(18,'ATA_DO_CONVITE_04.2018.pdf','ATA DO CONVITE 04.2018.pdf'),(19,'CONTRATO_Nº_07.2018_AGUA_NATURAL.pdf','CONTRATO Nº 07.2018 AGUA NATURAL.pdf'),(20,'Convite_Nº_005.18__fornecimento_parcelado__de_material_de_construção_equipamentos_e_diversos.pdf','Convite Nº 005.18  fornecimento parcelado  de material de construção, equipamentos e diversos.pdf'),(21,'ATA_DO_CONVITE_05.2018.pdf','ATA DO CONVITE 05.2018.pdf'),(22,'contrato_n.009.2018_MATERIAL_DE_CONSTRUÇÃOEQUIPAMENTOS_E_DIVERSOS.pdf','contrato n.009.2018 MATERIAL DE CONSTRUÇÃO,EQUIPAMENTOS E DIVERSOS.pdf'),(23,'Convite_Nº_006.18__fornecimento_parcelado_de_café_e_açucar..pdf','Convite Nº 006.18  fornecimento parcelado de café e açucar..pdf'),(24,'ATA_DO_CONVITE_06.2018.pdf','ATA DO CONVITE 06.2018.pdf'),(25,'contrato_n.010.2018_Café_e_Açúcar_generos_alimenticios..pdf','contrato n.010.2018 Café e Açúcar (generos alimenticios)..pdf'),(26,'RATIFICA__DISPENSA_05.18_SERVIÇOS_DE_RESTAURAÇAO_DE_FOTOS_ETC..pdf','RATIFICA  DISPENSA 05.18 SERVIÇOS DE RESTAURAÇAO DE FOTOS ETC..pdf'),(27,'CONTRATO_Nº_011.2018_PRESTACAO_DE_SERVICOS_DE_RESTAURACAO_DE_FOTOS_ETC..pdf','CONTRATO Nº 011.2018 PRESTACAO DE SERVICOS DE RESTAURACAO DE FOTOS ETC..pdf'),(28,'Convite_Nº_001.17_contratação_de_locação_de_motociclista.pdf','Convite Nº 001.17 contratação de locação de motociclista.pdf'),(29,'ata_de_reunião_do_convite_001_locação_de_moto.pdf','ata de reunião do convite 001 locação de moto.pdf'),(30,'CONTRATO_001.2017_MOTOCICLISTA.pdf','CONTRATO 001.2017 MOTOCICLISTA.pdf'),(31,'RATIFICA__DISPENSA_01.17_agua_mineral.pdf','RATIFICA  DISPENSA 01.17 agua mineral.pdf'),(32,'CONTRATO_Nº_02.2017_AGUA_NATURAL.pdf','CONTRATO Nº 02.2017 AGUA NATURAL.pdf'),(33,'_ATA_DO_CONVITE_02.2017.pdf','_ATA DO CONVITE 02.2017.pdf'),(34,'Convite_Nº_002.17__fornecimento_de_material_de_expediente.pdf','Convite Nº 002.17  fornecimento de material de expediente.pdf'),(35,'contrato_n.003.2017_EXPEDIENTE.pdf','contrato n.003.2017 EXPEDIENTE.pdf'),(36,'Convite_Nº_003.17__fornecimento_de_material_de_limpeza.pdf','Convite Nº 003.17  fornecimento de material de limpeza.pdf'),(37,'_ATA_DO_CONVITE_03.2017.pdf','_ATA DO CONVITE 03.2017.pdf'),(38,'contrato_n.004.2017_LIMPEZA.pdf','contrato n.004.2017 LIMPEZA.pdf'),(39,'RATIFICA__DISPENSA_02.17_cafe_e_açucar.pdf','RATIFICA  DISPENSA 02.17 cafe e açucar.pdf'),(40,'CONTRATO_Nº_05.2017_AÇUCAR_E_CAFÉ.pdf','CONTRATO Nº 05.2017 AÇUCAR E CAFÉ.pdf'),(41,'Convite_Nº_004.17__fornecimento_parcelado__de_material_de_construção_e_diversos.pdf','Convite Nº 004.17  fornecimento parcelado  de material de construção e diversos.pdf'),(42,'_ATA_DO_CONVITE_04.2017.pdf','_ATA DO CONVITE 04.2017.pdf'),(43,'contrato_n.006.2017_MATERIAL_DE_CONSTRUÇÃO_E_DIVERSOS.pdf','contrato n.006.2017 MATERIAL DE CONSTRUÇÃO E DIVERSOS.pdf'),(44,'Convite_Nº_005.17__fornecimento_de_material_bens_moveis.pdf','Convite Nº 005.17  fornecimento de material bens moveis.pdf'),(45,'_ATA_DO_CONVITE_05.2017.pdf','_ATA DO CONVITE 05.2017.pdf'),(46,'Contrato_nº__07.2017para_aquisição_de_material_de_bens_móveis.pdf','Contrato nº  07.2017para aquisição de material de bens móveis.pdf'),(47,'Convite_06.2017serviços_contabeis..pdf','Convite 06.2017serviços contabeis..pdf'),(48,'ATA_DO_CONVITE_06.2017.pdf','ATA DO CONVITE 06.2017.pdf'),(49,'CONTRATO_Nº_08.2017_CHAVES_ASSESSORIA_CONTABIL.pdf','CONTRATO Nº 08.2017 CHAVES ASSESSORIA CONTABIL.pdf'),(50,'Convite_Nº_007.17__aquisição_de_equipamentos_de_informatica.pdf','Convite Nº 007.17  aquisição de equipamentos de informatica.pdf'),(51,'ATA_DO_CONVITE_07.2017.pdf','ATA DO CONVITE 07.2017.pdf'),(52,'contrato_n.09.17_COMPUTADORES.pdf','contrato n.09.17 COMPUTADORES.pdf'),(53,'Convite_08.2017serviço_de_digitalizaçao.pdf','Convite 08.2017serviço de digitalizaçao.pdf'),(54,'ATA_DO_CONVITE_008.2017_PL_10_2017.pdf','ATA DO CONVITE 008.2017 PL 10 2017.pdf'),(55,'contrato_nº_010.17__DIGITALIZACAO.pdf','contrato nº 010.17  DIGITALIZACAO.pdf'),(56,'Convite_009.2017_serviçosde_pintura_etc..pdf','Convite 009.2017 serviçosde pintura etc..pdf'),(57,'ATA_DO_CONVITE_09.2017_CONTRATAÇÃO_DE_SERVIÇOS_DE_PINTURA_E_OUTROS..pdf','ATA DO CONVITE 09.2017 CONTRATAÇÃO DE SERVIÇOS DE PINTURA E OUTROS..pdf'),(58,'contrato_n.011.17_serviço_de_pintura_demolicao_recuperação_etc.pdf','contrato n.011.17 serviço de pintura, demolicao, recuperação etc.pdf'),(59,'Convite_010.2017_serviços_d_reparos_manutenção_adaptação_etc..pdf','Convite 010.2017 serviços d reparos manutenção adaptação etc..pdf'),(60,'ATA_DO_CONVITE_010.2017.pdf','ATA DO CONVITE 010.2017.pdf'),(61,'contrato_n.012.17_serviço_de_rede_de_telefonia_e_computador_etc.pdf','contrato n.012.17 serviço de rede de telefonia e computador etc.pdf'),(62,'RATIFICA__DISPENSA_01.16_suporte.pdf','RATIFICA  DISPENSA 01.16 suporte.pdf'),(63,'contrato_nº_001.16_SEQUENCE.pdf','contrato nº 001.16 SEQUENCE.pdf'),(64,'Convite_Nº_001.16__fornecimento_de_material_de_expediente.pdf','Convite Nº 001.16  fornecimento de material de expediente.pdf'),(65,'_ATA_DO_CONVITE_01.2016.pdf','_ATA DO CONVITE 01.2016.pdf'),(66,'contrato_n.002.16_EXPEDIENTE.pdf','contrato n.002.16 EXPEDIENTE.pdf'),(67,'Convite_Nº_002.16_contratação_de_empresa_para_prestação_de_serviços_de_fotocopias_e_encadernação.pdf','Convite Nº 002.16 contratação de empresa para prestação de serviços de fotocopias e encadernação.pdf'),(68,'_ATA_DO_CONVITE_02.2016.pdf','_ATA DO CONVITE 02.2016.pdf'),(69,'contrato_n.003.16_ENCADERNAÇÃO.pdf','contrato n.003.16 ENCADERNAÇÃO.pdf'),(70,'Convite_Nº_003.16__fornecimento_de_material_de_limpeza.pdf','Convite Nº 003.16  fornecimento de material de limpeza.pdf'),(71,'_ATA_DO_CONVITE_03.2016.pdf','_ATA DO CONVITE 03.2016.pdf'),(72,'contrato_n.004.16_LIMPEZA.pdf','contrato n.004.16 LIMPEZA.pdf'),(73,'Convite_Nº_004.16__fornecimento_de_material_de_informatica.pdf','Convite Nº 004.16  fornecimento de material de informatica.pdf'),(74,'_ATA_DO_CONVITE_04.2016.pdf','_ATA DO CONVITE 04.2016.pdf'),(75,'contrato_n.005.16_INFORMATICA.pdf','contrato n.005.16 INFORMATICA.pdf'),(76,'RATIFICA__DISPENSA_02.16_agua_mineral.pdf','RATIFICA  DISPENSA 02.16 agua mineral.pdf'),(77,'CONTRATO_Nº_06.2016_AGUA_NATURAL.pdf','CONTRATO Nº 06.2016 AGUA NATURAL.pdf'),(78,'Pregao_Presencial_n._001_16_Arcondicionado.pdf','Pregao Presencial n. 001 16 Arcondicionado.pdf'),(79,'ata_pregão_001.2016_arcndicionado.pdf','ata pregão 001.2016 arcndicionado.pdf'),(80,'contrato_nº_007.16_AR_CONDICIONADOS.pdf','contrato nº 007.16 AR CONDICIONADOS.pdf'),(81,'RATIFICA__DISPENSA_03.16_suporte_ponto.pdf','RATIFICA  DISPENSA 03.16 suporte ponto.pdf'),(82,'contrato_nº_008.16_SEQUENCE.pdf','contrato nº 008.16 SEQUENCE.pdf'),(83,'RATIFICA__DISPENSA_04.16_relogio.pdf','RATIFICA  DISPENSA 04.16 relogio.pdf');
/*!40000 ALTER TABLE `licitacao_arquivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licitacao_contrato`
--

DROP TABLE IF EXISTS `licitacao_contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licitacao_contrato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(10) unsigned DEFAULT NULL,
  `inicio_data` date NOT NULL,
  `fim_data` date NOT NULL,
  `ano` int(10) unsigned DEFAULT NULL,
  `criado_em` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `licitacao_contrato_ano_numero_7f3b33a2_uniq` (`ano`,`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licitacao_contrato`
--

LOCK TABLES `licitacao_contrato` WRITE;
/*!40000 ALTER TABLE `licitacao_contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `licitacao_contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licitacao_modalidade`
--

DROP TABLE IF EXISTS `licitacao_modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licitacao_modalidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identificacao` varchar(10) DEFAULT NULL,
  `numero` int(10) unsigned DEFAULT NULL,
  `contrato` varchar(10) DEFAULT NULL,
  `objeto` longtext NOT NULL,
  `ano` int(10) unsigned DEFAULT NULL,
  `criado_em` date NOT NULL,
  `processo_id` int(11) DEFAULT NULL,
  `situacao_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `licitacao_modalidade_ano_tipo_id_numero_6621db30_uniq` (`ano`,`tipo_id`,`numero`),
  KEY `licitacao_modalidade_processo_id_04d3eadd_fk_licitacao` (`processo_id`),
  KEY `licitacao_modalidade_situacao_id_17d2a7f2_fk_licitacao` (`situacao_id`),
  KEY `licitacao_modalidade_tipo_id_fedccf6e_fk_licitacao_tipo_id` (`tipo_id`),
  CONSTRAINT `licitacao_modalidade_processo_id_04d3eadd_fk_licitacao` FOREIGN KEY (`processo_id`) REFERENCES `licitacao_processo` (`id`),
  CONSTRAINT `licitacao_modalidade_situacao_id_17d2a7f2_fk_licitacao` FOREIGN KEY (`situacao_id`) REFERENCES `licitacao_situacao` (`id`),
  CONSTRAINT `licitacao_modalidade_tipo_id_fedccf6e_fk_licitacao_tipo_id` FOREIGN KEY (`tipo_id`) REFERENCES `licitacao_tipo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licitacao_modalidade`
--

LOCK TABLES `licitacao_modalidade` WRITE;
/*!40000 ALTER TABLE `licitacao_modalidade` DISABLE KEYS */;
INSERT INTO `licitacao_modalidade` VALUES (3,'1/2018',1,'001/2018','CONTRATAÇÃO DE EMPRESA PARA PRESTAÇÃO DE SERVIÇOS DE REPAROS E PINTURAS NAS LONGARINAS(CADEIRAS) EXISTENTES NA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2018,'2018-01-25',1,2,7),(4,'1/2018',1,'002/2018','CONTRATAÇÃO DE EMPRESA PARA PRESTAÇÃO DE SERVIÇOS DE FOTOCÓPIAS E ENCADERNAÇÕES PARA ATENDER OS SETORES DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2018,'2018-02-22',2,2,3),(5,'2/2018',2,'003/2018','CONTRATAÇÃO DE EMPRESA PARA PRESTAÇÃO DE SERVIÇOS NA CONFECÇÃO DE PLACAS INOX MEDINDO 30 X 40 NA CONCESSÃO DE TÍTULOS DE CIDADÃO E MOLDURAS SANDUÍCHE FORMATO A/4, NA ENTREGA DE CERTIFICADOS, NO ÂMBITO  DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2018,'2018-03-05',3,2,7),(6,'2/2018',2,'004/2018','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE MATERIAL DE EXPEDIENTE PARA ATENDER AS NECESSIDADES DA C^MARA MUNICIPAL DO JABOATÃO DOS GUARARAPES',2018,'2018-03-12',4,2,3),(7,'3/2018',3,'005/2018','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE MATERIAL DE LIMPEZA PARA A CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2018,'2018-03-15',5,2,3),(8,'3/2018',3,'006/2018','CONTRATAÇÃO DE EMPRESA PARA PRESTAÇÃO DE SERVIÇOS NA CONFECÇÃO DE FARDAMENTOS DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2018,'2018-03-16',6,2,7),(9,'4/2018',4,'007/2018','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE ÁGUA MINERAL PARA ATENDER AS NECESSIDADES DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2018,'2018-03-28',7,2,7),(10,'4/2018',4,'008/2018','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE MATERIAL DE INFORMÁTICA PARA ATENDER AS NECESSIDADES DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2018,'2018-04-10',8,2,3),(11,'5/2018',5,'009/2018','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE MATERIAL DE CONSTRUÇÃO, EQUIPAMENTOS E DIVERSOS, PARA ATENDER AS NECESSIDADES DOS DEPARTAMENTOS NOS PRÉDIOS: ANEXOS I, II E III DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2018,'2018-04-18',9,2,3),(12,'6/2018',6,'010/2018','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE CAFÉ E AÇÚCAR (GÊNEROS ALIMENTÍCIOS), PARA SUPRIR AS NECESSIDADES DA CÂMARA MUNICIPAL DE JABOATÃO DOS GUARARAPES.',2018,'2018-04-27',10,2,3),(13,'5/2018',5,'011/2018','CONTRATAÇÃO DE EMPRESA NA PRESTAÇÃO DE SERVIÇOS DE RESTAURAÇÃO DE FOTOS, TRATAMENTO DE IMAGENS, REDESENHO COM MOLDURAS COLONIAL DESENHADAS, COM APLICAÇÃO DE GEL 3M TOTAL COBERTURA NA GALERIA DE FOTOS DOS EX-VEREADORES PRESIDENTES DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2018,'2018-04-27',11,2,7),(14,'1/2017',1,'001/2017','CONTRATAÇÃO DE EMPRESA OU PESSOA FÍSICA PARA PRESTAÇÃO DE SERVIÇOS DE LOCAÇÃO DE MOTOCICLETA TIPO PASSEIO, COM MOTORISTA E COMBUSTÍVEL, KILOMETRAGEM LIVRE, DE SEGUNDA A SEXTA FEIRA, NO HORÁRIO DAS 07:30 ÁS 13:30, COM O OBJETIVO DE EXECUTAR SERVIÇOS DE ENTREGA DE DOCUMENTOS DE EXPEDIENTES, DISTRIBUIÇÃO INTERNA E EXTERNA DE CORRESPONDÊNCIAS, ENCOMENDAS, SERVIÇOS BANCÁRIOS DENTRO E FORA DO MUNICÍPIO, NO ÂMBITO DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2017,'2017-01-30',15,2,3),(15,'1/2017',1,'002/2017','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO  PARCELADO DE ÁGUA MINERAL PARA A  CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2017,'2017-02-21',16,2,7),(16,'2/2017',2,'003/2017','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE MATERIAL DE EXPEDIENTE PARA  A CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2017,'2017-03-03',21,2,3),(17,'3/2017',3,NULL,'CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE MATERIAL DE LIMPEZA PARA A CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2017,'2017-03-03',22,2,3),(18,'2/2017',2,'005/2017','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE AÇÚCAR E CAFÉ PARA CÂMARA MUNICIPAL DE JABOATÃO DOS GUARARAPES.',2017,'2017-04-26',23,2,7),(19,'4/2017',4,'006/2017','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE MATERIAL DE CONSTRUÇÃO E DIVERSOS PARA ATENDER AS NECESSIDADES NOS DIVERSOS DEPARTAMENTOS DOS PRÉDIOS: ANEXOS I, II E III DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2017,'2017-05-11',24,2,3),(20,'5/2017',5,'007/2017','CONTRATAÇÃO DE EMPRESA PARA AQUISIÇÃO DE MATERIAL BENS MÓVEIS (ELETRODOMÉSTICOS), PARA SUPRIR AS NECESSIDADES DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2017,'2017-06-22',25,2,3),(21,'6/2017',6,'008/2017','CONTRATAÇÃO DE EMPRESA ESPECIALIZADA PARA PRESTAÇÃO DE SERVIÇOS DE CONSULTORIA CONTÁBIL PARA A CÂMARA, CONSOANTE AS NORMAS BRASILEIRAS DE CONTABILIDADE APLICADAS AO SETOR PÚBLICO E A LEGISLAÇÃO ESPECIFICA NO QUE FOR PERTINENTE.',2017,'2017-06-30',26,2,3),(22,'7/2017',7,'009/2017','CONTRATAÇÃO DE EMPRESA PARA AQUISIÇÃO DE COMPUTADORES, MULTIFUNCIONAIS E SCANNER PARA A CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2017,'2017-07-10',27,2,3),(23,'8/2017',8,'010/2017','CONTRATAÇÃO DE EMPRESA PARA PRESTAÇÃO DE SERVIÇOS ESPECIALIZADOS EM DESENVOLVIMENTO DE INSTRUMENTOS DE GESTÃO ARQUIVÍSTICAS PARA ELABORAÇÃO DO CODIGO DE CLASSIFICAÇÃO DE DOCUMENTOS DE ARQUIVO E DA TABELA DE TEMPORALIDADE DE DOCUMENTOS, TRATAMENTO DO ACERVO DOCUMENTAL ARQUIVÍSTICO E DIGITALIZAÇÃO ELETRÔNICA PARA OS DOCUMENTOS EXISTENTES NOS ARQUIVOS DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2017,'2017-07-11',28,2,3),(24,'9/2017',9,'011/2017','CONTRATAÇÃO DE EMPRESA ESPECIALIZADA EM SERVIÇOS DE PINTURA, INSTALAÇÃO HIDRÁULICA, MONTAGEM E DESMONTAGEM DE DIVISÓRIA, DEMOLIÇÃO, CONSERTO, REPARAÇÃO E RETIRADA DOS SERVIÇOS PRELIMINARES NOS PRÉDIOS SEDE E ANEXOS I E II DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2017,'2017-07-18',29,2,3),(25,'10/2017',10,'012/2017','CONTRATAÇÃO DE EMPRESA ESPECIALIZADA E EXECUÇÃO DE SERVIÇOS DE MANUTENÇÃO, REPAROS E ADAPTAÇÃO, COM FORNECIMENTO DE MATERIAL NA REDE DE TELEFONIA E COMPUTADORES NOS PRÉDIOS SEDE E ANEXOS I E II DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2017,'2017-08-25',30,2,3),(26,'1/2016',1,'001/2016','CONTRATAÇÃO DE EMPRESA PARA PRESTAÇÃO DE SERVIÇOS DE SUPORTE E MANUTENÇÃO DE PROGRAMAS DE COMPUTADOR EXCLUSIVAMENTE DURANTE SUA VIGÊNCIA, AS CÓPIAS DE VERSÕES NOVAS(MANUTENÇÃO DE CESSÃO DE USO SOFTWARE, ENTENDENDO COMO TAL O SISTEMA DE FOLHA DE PAGAMENTO SIAI DO BANCO DO BRASIL), PARA ATENDER AS NECESSIDADES DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2016,'2016-01-04',31,2,7),(27,'1/2016',1,'002/2016','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE MATERIAL DE EXPEDIENTE PARA ATENDER AS NECESSIDADES DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2016,'2016-03-17',32,2,3),(28,'2/2016',2,'003/2016','CONTRATAÇÃO DE EMPRESA PARA PRESTAÇÃO DE SERVIÇOS DE FOTOCÓPIAS E ENCADERNAÇÕES PARA ATENDER AS NECESSIDADES DOS SETORES DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2016,'2016-03-18',33,2,3),(29,'3/2016',3,'004/2016','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE MATERIAL DE LIMPEZA PARA ATENDER AS NECESSIDADES DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2016,'2016-03-18',34,2,3),(30,'4/2016',4,'005/2016','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE MATERIAL DE INFORMÁTICA PARA A CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2016,'2016-03-21',35,2,3),(31,'2/2016',2,'006/2016','CONTRATAÇÃO DE EMPRESA PARA FORNECIMENTO PARCELADO DE ÁGUA MINERAL NATURAL PARA A CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2016,'2016-03-30',36,2,7),(32,'1/2016',1,'007/2016','PREGÃO PRESENCIAL  PARA CONTRATAÇÃO DE EMPRESA PARA PRESTAÇÃO DE SERVIÇOS DE LOCAÇÃO DE APARELHOS DE AR CONDICIONADOS DO TIPO JANELA E SPLIT, COM INSTALAÇÃO E MANUTENÇÃO PARA OS DIVERSOS DEPARTAMENTOS DO PRÉDIO DA PRESIDÊNCIA E ANEXOS I E II DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2016,'2016-07-04',37,2,6),(33,'3/2016',3,'008/2016','CONTRATAÇÃO DE  EMPRESA NA PRESTAÇÃO DE SERVIÇOS TÉCNICOS ESPECIALIZADOS EM PROGRAMAS DE SISTEMAS DE COMPUTADORES(CESSÃO DE USO DE SOFTWARE PONTO ELETRÔNICO), INCLUINDO IMPLANTAÇÃO, MANUTENÇÃO, TREINAMENTO E SUPORTE TÉCNICO PAR ATENDER AS NECESSIDADES DA CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2016,'2016-11-30',38,2,7),(34,'4/2016',4,NULL,'CONTRATAÇÃO DE EMPRESA PARA AQUISIÇÃO, COM INSTALAÇÃO DE 02 (DOIS) RELÓGIOS DE PONTO ELETRÔNICO PARA A CÂMARA MUNICIPAL DO JABOATÃO DOS GUARARAPES.',2016,'2016-11-30',39,2,7);
/*!40000 ALTER TABLE `licitacao_modalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licitacao_modalidade_arquivos`
--

DROP TABLE IF EXISTS `licitacao_modalidade_arquivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licitacao_modalidade_arquivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modalidade_id` int(11) NOT NULL,
  `arquivo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `licitacao_modalidade_arq_modalidade_id_arquivo_id_51cb4d96_uniq` (`modalidade_id`,`arquivo_id`),
  KEY `licitacao_modalidade_arquivo_id_020be4a7_fk_licitacao` (`arquivo_id`),
  CONSTRAINT `licitacao_modalidade_arquivo_id_020be4a7_fk_licitacao` FOREIGN KEY (`arquivo_id`) REFERENCES `licitacao_arquivo` (`id`),
  CONSTRAINT `licitacao_modalidade_modalidade_id_068a2cc7_fk_licitacao` FOREIGN KEY (`modalidade_id`) REFERENCES `licitacao_modalidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licitacao_modalidade_arquivos`
--

LOCK TABLES `licitacao_modalidade_arquivos` WRITE;
/*!40000 ALTER TABLE `licitacao_modalidade_arquivos` DISABLE KEYS */;
INSERT INTO `licitacao_modalidade_arquivos` VALUES (1,3,1),(2,3,2),(3,4,3),(4,4,5),(5,4,6),(7,5,7),(6,5,8),(8,6,9),(9,6,10),(10,6,11),(11,7,12),(12,7,13),(13,7,14),(15,8,15),(14,8,16),(16,10,17),(17,10,18),(18,10,19),(19,11,20),(20,11,21),(21,11,22),(24,12,23),(22,12,24),(23,12,25),(25,13,26),(26,13,27),(27,14,28),(28,14,29),(29,14,30),(31,15,31),(30,15,32),(32,16,33),(33,16,34),(34,16,35),(35,17,36),(36,17,37),(37,17,38),(39,18,39),(38,18,40),(40,19,41),(41,19,42),(42,19,43),(43,20,44),(44,20,45),(45,20,46),(48,21,47),(46,21,48),(47,21,49),(49,22,50),(50,22,51),(51,22,52),(52,23,53),(53,23,54),(54,23,55),(55,24,56),(56,24,57),(57,24,58),(58,25,59),(59,25,60),(60,25,61),(61,26,62),(62,26,63),(63,27,64),(64,27,65),(65,27,66),(66,28,67),(67,28,68),(68,28,69),(70,29,70),(71,29,71),(69,29,72),(72,30,73),(73,30,74),(74,30,75),(75,31,76),(76,31,77),(78,32,78),(79,32,79),(77,32,80),(80,33,81),(81,33,82),(82,34,83);
/*!40000 ALTER TABLE `licitacao_modalidade_arquivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licitacao_processo`
--

DROP TABLE IF EXISTS `licitacao_processo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licitacao_processo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(10) unsigned DEFAULT NULL,
  `ano` int(10) unsigned DEFAULT NULL,
  `criado_em` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `licitacao_processo_ano_numero_b8562d02_uniq` (`ano`,`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licitacao_processo`
--

LOCK TABLES `licitacao_processo` WRITE;
/*!40000 ALTER TABLE `licitacao_processo` DISABLE KEYS */;
INSERT INTO `licitacao_processo` VALUES (1,1,2018,'2018-05-15'),(2,2,2018,'2018-05-15'),(3,3,2018,'2018-05-15'),(4,4,2018,'2018-05-15'),(5,5,2018,'2018-05-15'),(6,6,2018,'2018-05-15'),(7,7,2018,'2018-05-15'),(8,8,2018,'2018-05-15'),(9,9,2018,'2018-05-15'),(10,10,2018,'2018-05-15'),(11,11,2018,'2018-05-15'),(15,1,2017,'2017-01-30'),(16,2,2017,'2017-01-30'),(21,3,2017,'2017-05-15'),(22,4,2017,'2017-05-15'),(23,5,2017,'2017-05-15'),(24,6,2017,'2017-05-15'),(25,7,2017,'2017-05-15'),(26,8,2017,'2017-05-15'),(27,9,2017,'2017-05-15'),(28,10,2017,'2017-05-15'),(29,11,2017,'2017-05-15'),(30,12,2017,'2017-05-15'),(31,1,2016,'2016-05-15'),(32,2,2016,'2016-05-15'),(33,3,2016,'2016-05-15'),(34,4,2016,'2016-05-15'),(35,5,2016,'2016-05-15'),(36,6,2016,'2016-05-15'),(37,7,2016,'2016-05-15'),(38,8,2016,'2016-05-15'),(39,9,2016,'2016-05-15');
/*!40000 ALTER TABLE `licitacao_processo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licitacao_situacao`
--

DROP TABLE IF EXISTS `licitacao_situacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licitacao_situacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licitacao_situacao`
--

LOCK TABLES `licitacao_situacao` WRITE;
/*!40000 ALTER TABLE `licitacao_situacao` DISABLE KEYS */;
INSERT INTO `licitacao_situacao` VALUES (1,'Em andamento'),(2,'Finalizado'),(3,'Cancelado'),(4,'Suspenso');
/*!40000 ALTER TABLE `licitacao_situacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licitacao_tipo`
--

DROP TABLE IF EXISTS `licitacao_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licitacao_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `criado_em` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licitacao_tipo`
--

LOCK TABLES `licitacao_tipo` WRITE;
/*!40000 ALTER TABLE `licitacao_tipo` DISABLE KEYS */;
INSERT INTO `licitacao_tipo` VALUES (1,'Concorrência','2018-05-15'),(2,'Tomada de Preços','2018-05-15'),(3,'Convite','2018-05-15'),(4,'Concurso','2018-05-15'),(5,'Leilão','2018-05-15'),(6,'Pregão','2018-05-15'),(7,'Dispensa','2018-05-15');
/*!40000 ALTER TABLE `licitacao_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoal_arquivo`
--

DROP TABLE IF EXISTS `pessoal_arquivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoal_arquivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mes` int(10) unsigned NOT NULL,
  `ano` int(10) unsigned NOT NULL,
  `arquivo_csv` varchar(100) DEFAULT NULL,
  `identificacao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pessoal_arquivo_mes_ano_ccf92c90_uniq` (`mes`,`ano`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoal_arquivo`
--

LOCK TABLES `pessoal_arquivo` WRITE;
/*!40000 ALTER TABLE `pessoal_arquivo` DISABLE KEYS */;
INSERT INTO `pessoal_arquivo` VALUES (10,12,2018,'CC_JUNHO.csv','Dados de 12/2018');
/*!40000 ALTER TABLE `pessoal_arquivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoal_pessoa`
--

DROP TABLE IF EXISTS `pessoal_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoal_pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) NOT NULL,
  `funcionario` varchar(100) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `data_admissao` varchar(10) NOT NULL,
  `salario_fixo` varchar(15) NOT NULL,
  `tota_bruto` varchar(15) NOT NULL,
  `total_desconto` varchar(15) NOT NULL,
  `liquido` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoal_pessoa`
--

LOCK TABLES `pessoal_pessoa` WRITE;
/*!40000 ALTER TABLE `pessoal_pessoa` DISABLE KEYS */;
INSERT INTO `pessoal_pessoa` VALUES (254,305525,'ABEL SIQUEIRA PADUA','ASSESSOR ESPECIAL','1/4/2018','5.000,00','7.025,00','883,31','6.141,69'),(255,305409,'ABNER GALINDO DE SIQUEIRA LIMA','ASSESSOR PARLAMEN','1/5/2017','3.500,00','6.650,00','479,71','6.170,29'),(256,303935,'ADEILDO PEREIRA LINS','VEREADOR','1/1/2013','15.031,76','23.947,64','10.743,48','13.204,16'),(257,305318,'ADEILSON FERRAZ DE ASSIS','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(258,305386,'ADRIANO JOSE DA SILVA','ASSESSOR TEMATICO','1/1/2017','5.000,00','6.400,00','883,31','5.516,69'),(259,304759,'AERIVALDO EDUARDO DOS SANTOS F','ASSESSOR ESPECIAL','1/1/2014','5.000,00','6.400,00','883,31','5.516,69'),(260,305418,'ALDINEIDE FERREIRA DE SANTANA','ASSESSOR ESPECIAL','1/6/2017','5.000,00','8.900,00','883,31','8.016,69'),(261,305332,'ALDIR FRANCISCO DA SILVA','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','731,2','8.168,80'),(262,305541,'ALDO ALVES MONTEIRO DA COSTA','ASSESSOR PARLAMEN','1/5/2018','2.000,00','3.400,00','180','3.220,00'),(263,305465,'ALEX FERREIRA DE SOUZA','ASSESSOR TECNICO','1/8/2017','3.000,00','5.900,00','380,31','5.519,69'),(264,305339,'ALEXSANDRA DE SOUZA SANTOS','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(265,305537,'ALINE CRISTINA DA SILVA','ASSESSOR PARLAMEN','1/5/2018','2.000,00','3.566,67','180','3.386,67'),(266,304933,'ALINE LIMA COSTA','ASSESSOR TECNICO','1/4/2014','3.000,00','5.900,00','402,81','5.497,19'),(267,305478,'ALLYSON DE SOUZA CHAVES','ASSESSOR ESPECIAL','1/1/2018','5.000,00','8.900,00','883,31','8.016,69'),(268,305389,'ALMIR CAMILO DA SILVA','ASSESSOR PARLAMEN','1/2/2017','3.500,00','6.650,00','479,71','6.170,29'),(269,305540,'ALMIR CRISTIANO DE SENA','ASSESSOR ESPECIAL','1/5/2018','5.000,00','6.816,67','883,31','5.933,36'),(270,304535,'ANA CLAUDIA FARIAS DE BARROS','ASSESSOR TECNICO','1/1/2014','3.000,00','5.900,00','481,61','5.418,39'),(271,305089,'ANA LUCIA SANTOS FERNANDES','SECRETARIO DE FIN','1/3/2015','7.800,00','15.350,00','2.094,91','13.255,09'),(272,305457,'ANA MARIA DE SIQUEIRA VIEIRA','ASSESSOR ESPECIAL','1/8/2017','5.000,00','6.400,00','883,31','5.516,69'),(273,305312,'ANA PAULA BRANDAO RODRIGUES DA','ASSESSOR PARLAMEN','1/1/2017','2.000,00','4.400,00','180','4.220,00'),(274,304549,'ANA PAULA DA SILVA','ASSESSOR PARLAMEN','1/1/2014','2.000,00','3.400,00','180','3.220,00'),(275,305487,'ANA PAULA DE LIMA','ASSESSOR TEMATICO','1/2/2018','2.000,00','2.000,00','180','1.820,00'),(276,305309,'ANA PAULA MIGUEL LIMA','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','797,99','8.102,01'),(277,305320,'ANA PAULA SOUSA DE OLIVEIRA','ASSESSOR PARLAMEN','1/1/2017','3.500,00','6.650,00','454,46','6.195,54'),(278,305410,'ANA REGINA FELIX DOS SANTOS AN','ASSESSOR ESPECIAL','1/6/2017','5.000,00','8.900,00','840,65','8.059,35'),(279,305378,'ANDERSON DE LIMA NEPOMUCENO','ASSESSOR PARLAMEN','1/1/2017','3.500,00','6.650,00','479,71','6.170,29'),(280,305442,'ANDRE LUIZ DA SILVA','ASSESSOR TECNICO','1/6/2017','3.000,00','5.900,00','380,31','5.519,69'),(281,305464,'ANDREA LEANDRO MAGNO','CHEFE DE GABINETE','1/8/2017','6.000,00','10.400,00','1.187,41','9.212,59'),(282,305494,'ANDREZA KELLY SILVA DE SOUZA','ASSESSOR ESPECIAL','1/2/2018','5.000,00','7.441,67','883,31','6.558,36'),(283,305360,'ANTONIO CARLOS DE LIMA','ASSESSOR TEMATICO','1/1/2017','2.000,00','3.400,00','180','3.220,00'),(284,305344,'ANTONIO CORREIA DE LIRA','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(285,305483,'ANTONIO MARCIONILO DOS SANTOS','ASSESSOR ESPECIAL','1/2/2018','5.000,00','7.441,67','883,31','6.558,36'),(286,305417,'ANTONIO PEDRO DA SILVA','CHEFE DE GABINETE','1/6/2017','6.000,00','10.400,00','1.187,41','9.212,59'),(287,305377,'ANTONIO PEREIRA DA SILVA','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(288,304539,'ARAO FRANCISCO DE SALES','ASSESSOR ESPECIAL','1/1/2014','5.000,00','6.400,00','883,31','5.516,69'),(289,305476,'ARLINDO DO NASCIMENTO DIAS','ASSESSOR PARLAMEN','1/1/2018','2.000,00','4.400,00','180','4.220,00'),(290,305265,'AURINO JOAO DOS SANTOS JUNIOR','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(291,305545,'AWANNA BARBARA DA SILVA RAMOS','ASSESSOR ESPECIAL','1/6/2018','5.000,00','6.608,33','883,31','5.725,02'),(292,304775,'AZENAITE MARIA DOS SANTOS','ASSESSOR PARLAMEN','1/1/2014','3.500,00','6.650,00','479,71','6.170,29'),(293,305435,'BIANCA SIMONELLE MENDES DA SIL','ASSESSOR EXECUTIV','1/6/2017','5.000,00','8.900,00','840,65','8.059,35'),(294,304558,'BISMARK  JOSE DA SILVA','ASSESSOR ESPECIAL','1/1/2014','5.000,00','6.400,00','883,31','5.516,69'),(295,305341,'BRUNO COELHO VALENCA','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.187,41','9.212,59'),(296,305509,'BRUNO RAFAEL FERREIRA DOS SANT','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(297,305440,'CARLA TATIANE DA SILVA','ASSESSOR EXECUTIV','1/6/2017','5.000,00','6.400,00','797,99','5.602,01'),(298,304066,'CARLOS ALBERTO BEZERRA','VEREADOR','1/1/2013','15.031,76','23.947,64','8.410,59','15.537,05'),(299,305530,'CARLOS ALBERTO DA SILVA','ASSESSOR ESPECIAL','1/4/2018','5.000,00','6.400,00','883,31','5.516,69'),(300,305263,'CARLOS ALBERTO DO NASCIMENTO','VEREADOR','1/1/2017','15.031,76','23.947,64','7.027,29','16.920,35'),(301,305301,'CARLOS ALBERTO GUEDES DA SILVA','ASSESSOR ESPECIAL','1/1/2017','5.000,00','6.400,00','840,65','5.559,35'),(302,305489,'CARLOS ALBERTO HERMINIO DA SIL','ASSESSOR ESPECIAL','1/2/2018','5.000,00','7.441,67','883,31','6.558,36'),(303,305269,'CARLOS ALBERTO MENDES DE BARRO','SECRETARIO GERAL-','1/1/2017','13.000,00','20.900,00','3.112,41','17.787,59'),(304,305252,'CARLOS ANDRE DA SILVA','VEREADOR','1/1/2017','15.031,76','23.947,64','7.006,40','16.941,24'),(305,305336,'CARLOS EDUARDO SILVESTRE','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.135,27','9.264,73'),(306,305281,'CARLOS EUGENIO BATISTA DA SILV','VEREADOR','1/1/2017','15.031,76','23.947,64','5.174,32','18.773,32'),(307,304514,'CARLOS SOARES DA SILVA','ASSESSOR TECNICO','1/1/2014','5.000,00','14.900,00','1.856,00','13.044,00'),(308,304755,'CARLOS VICENTE FERREIRA','ASSESSOR ESPECIAL','1/1/2014','5.000,00','6.400,00','883,31','5.516,69'),(309,304521,'CARMEM JOHNSON PACHECO SILVA','ASSESSOR TECNICO','1/1/2014','4.000,00','7.400,00','641,46','6.758,54'),(310,304655,'CASSANDRA KELLY DA COSTA MENDE','ASSESSOR EXECUTIV','1/1/2014','5.000,00','9.350,00','883,31','8.466,69'),(311,303975,'CHARLES DARKS RODRIGUES DE AGU','VEREADOR','1/1/2013','15.031,76','23.947,64','3.619,01','20.328,63'),(312,305270,'CLAUDICEA BARBOSA DA SILVA','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.187,41','9.212,59'),(313,305261,'CLECIA SIQUEIRA SILVA','SECRETARIO DE ADM','1/1/2017','7.800,00','15.350,00','2.094,91','13.255,09'),(314,305387,'CLEISON DE MORAIS','ASSESSOR TECNICO','1/1/2017','3.000,00','4.400,00','380,31','4.019,69'),(315,305361,'CLEITON MOISES RAMOS DOS SANTO','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','759,64','8.140,36'),(316,305333,'CRISTIANE DE LIMA MENEZES','ASSESSOR ESPECIAL','1/1/2017','5.000,00','6.400,00','797,99','5.602,01'),(317,305282,'DANIEL ALVES BEZERRA','VEREADOR','1/1/2017','15.031,76','23.947,64','3.566,87','20.380,77'),(318,305274,'DANIELA BARBOZA DA SILVA','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(319,305342,'DANILLO DE LIMA ARAUJO','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(320,305058,'DANILO DE ARAUJO RODRIGUES','ASSESSOR TECNICO','1/1/2015','4.000,00','7.400,00','601,46','6.798,54'),(321,305345,'DIEGO ALEXANDRE DE JESUS DAMAS','ASSESSOR PARLAMEN','1/1/2017','3.500,00','6.650,00','454,46','6.195,54'),(322,305391,'DIEGO BARBOSA DA SILVA','ASSESSOR ESPECIAL','1/2/2017','5.000,00','8.900,00','840,65','8.059,35'),(323,305532,'DIVA MARIA QUEIROZ DE ANDRADE','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.400,00','180','3.220,00'),(324,305125,'DOUGGLAS FERNANDES DA SILVA PE','ASSESSOR EXECUTIV','1/5/2015','5.000,00','8.900,00','883,31','8.016,69'),(325,305011,'EDCLECIO JOSE DOS SANTOS','ASSESSOR TECNICO','1/1/2015','3.000,00','5.900,00','351,87','5.548,13'),(326,305497,'EDGLEBSON LOPES DA SILVA','ASSESSOR ESPECIAL','1/3/2018','5.000,00','7.233,33','797,99','6.435,34'),(327,305508,'EDILEUZA MINERVINO DA SILVA','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(328,305511,'EDILMA MARIA DA SILVA','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.400,00','180','3.220,00'),(329,305470,'EDMILSON BARRETO DA SILVA','ASSESSOR TECNICO','1/10/2017','3.000,00','4.400,00','337,65','4.062,35'),(330,305294,'EDNA BEZERRA CRUZ DA SILVA','ASSESSOR TECNICO','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(331,305504,'EDSON TOMAZ DE AQUINO','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.400,00','180','3.220,00'),(332,204064,'EDUARDO GOMES DO NASCIMENTO','VEREADOR','1/1/2013','15.031,76','16.431,76','6.969,84','9.461,92'),(333,305472,'EDVALDO PAZ DE LIRA','ASSESSOR PARLAMEN','1/10/2017','3.500,00','6.650,00','479,71','6.170,29'),(334,305319,'ELISABETE VANIA DA SILVA','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(335,305479,'ELIUD CORREIA NERY','ASSESSOR TEMATICO','1/1/2018','2.000,00','2.800,00','180','2.620,00'),(336,305321,'ELIZAMA MARIA DE CARVALHO ALVE','ASSESSOR PARLAMEN','1/1/2017','2.000,00','4.400,00','180','4.220,00'),(337,305547,'ELZANETE BEZERRA DANTAS','ASSESSOR PARLAMEN','1/6/2018','2.000,00','3.483,33','180','3.303,33'),(338,305295,'EMANUEL SOARES DA GAMA','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.187,41','9.212,59'),(339,305258,'EMERSON DE SOUZA BARBOSA','VEREADOR','1/1/2017','15.031,76','23.947,64','7.054,89','16.892,75'),(340,305299,'ERICKSON DANGELIS DE SOUZA','ASSESSOR PARLAMEN','1/1/2017','2.000,00','4.400,00','180','4.220,00'),(341,304530,'ERINALVA MARIA FERREIRA','ASSESSOR TEMATICO','1/1/2014','2.000,00','4.400,00','180','4.220,00'),(342,305306,'ERIVALDO JOSE DOS SANTOS','VEREADOR','1/1/2017','15.031,76','23.947,64','8.285,15','15.662,49'),(343,305433,'EVANICE DAFNE PEREIRA DA SILVA','ASSESSOR EXECUTIV','1/6/2017','5.000,00','6.400,00','883,31','5.516,69'),(344,305438,'FABIO HIGINO DOS SANTOS','CHEFE DE GABINETE','1/6/2017','6.000,00','7.400,00','1.035,38','6.364,62'),(345,305283,'FABIO JOSE DA SILVA','VEREADOR','1/1/2017','15.031,76','23.947,64','4.667,35','19.280,29'),(346,305546,'FABIO MONTEIRO DE SOUZA','ASSESSOR PARLAMEN','1/6/2018','2.000,00','3.483,33','180','3.303,33'),(347,305215,'FERNANDO CESAR SILVA MENDES','CHEFE DE GABINETE','1/5/2016','6.000,00','10.400,00','1.187,41','9.212,59'),(348,305527,'FERNANDO GOMES DA SILVA JUNIOR','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(349,305307,'FERNANDO SERGIO DE ARAUJO PINH','VEREADOR','1/1/2017','15.031,76','16.431,76','3.514,73','12.917,03'),(350,305390,'GABRIELLA ALVES PESSOA','ASSESSOR ESPECIAL','1/2/2017','5.000,00','8.900,00','840,65','8.059,35'),(351,305322,'GEAN CARLOS DE LIMA MOURA','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.187,41','9.212,59'),(352,305484,'GEANE ALVES FERREIRA BARBOSA','ASSESSOR PARLAMEN','1/2/2018','2.000,00','3.816,67','180','3.636,67'),(353,305401,'GEDIANE PEREIRA DOS SANTOS','CHEFE DE GABINETE','1/4/2017','6.000,00','10.400,00','1.083,14','9.316,86'),(354,305359,'GERALDO JOSE DA SILVA JUNIOR','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.187,41','9.212,59'),(355,304523,'GEYVES CHARLES ANTONIO DE SOUZ','ASSESSOR TECNICO','1/1/2014','3.000,00','5.900,00','967,02','4.932,98'),(356,305255,'GILBERTO FLORENCIO DE ALBUQUER','VEREADOR','1/1/2017','15.031,76','23.947,64','3.514,73','20.432,91'),(357,305512,'GILMAR LUIZ VITORINO','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(358,305346,'GILVAN BARBOSA DA SILVA JUNIOR','ASSESSOR PARLAMEN','1/1/2017','2.000,00','4.400,00','180','4.220,00'),(359,305505,'GILVANO JOSE DE OLIVEIRA MORAE','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(360,305453,'GISELLE LAIS OLIVEIRA SOUZA LE','ASSESSOR EXECUTIV','1/8/2017','5.000,00','8.900,00','883,31','8.016,69'),(361,305330,'GIVANILDO PEDRO DA SILVA','ASSESSOR PARLAMEN','1/1/2017','3.500,00','6.650,00','479,71','6.170,29'),(362,305543,'GUTEMBERG FELIPE ANDRADE DE SO','ASSESSOR TECNICO','1/6/2018','4.000,00','5.566,67','601,46','4.965,21'),(363,305542,'HARYS RAFAEL LIRA LIMA','ASSESSOR ESPECIAL','1/6/2018','5.000,00','6.608,33','883,31','5.725,02'),(364,305414,'HELIO MANOEL DA SILVA','ASSESSOR PARLAMEN','1/6/2017','2.000,00','4.400,00','180','4.220,00'),(365,305517,'HELIO VIRAES','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(366,305415,'HILDEBRANDO FERNANDO NOVO','ASSESSOR PARLAMEN','1/6/2017','3.500,00','6.650,00','454,46','6.195,54'),(367,305398,'HOZANA MARIA DA SILVA','ASSESSOR TECNICO','1/3/2017','3.000,00','4.400,00','461,91','3.938,09'),(368,305314,'IGOR AFONSO CARVALHO DO AMARAL','ASSESSOR ESPECIAL','1/1/2017','5.000,00','6.400,00','883,31','5.516,69'),(369,305420,'ISABELA FERREIRA DO NASCIMENTO','ASSESSOR PARLAMEN','1/6/2017','3.500,00','4.900,00','479,71','4.420,29'),(370,305302,'ISIS SOARES LEAO','ASSESSOR ESPECIAL','1/1/2017','5.000,00','6.400,00','883,31','5.516,69'),(371,305313,'ITALO LINS CORREIA DE QUEIROZ','CHEFE DE GABINETE','1/1/2017','6.000,00','7.400,00','1.187,41','6.212,59'),(372,305480,'JACELY DO VALE SILVA','ASSESSOR PARLAMEN','1/1/2018','2.000,00','3.400,00','180','3.220,00'),(373,305539,'JACIRA DE ALMEIDA PORTELA','ASSESSOR TECNICO','1/5/2018','4.000,00','5.733,33','601,46','5.131,87'),(374,305352,'JAILSON GOMES DE FREITAS','CHEFE DE GABINETE','1/1/2017','6.000,00','7.400,00','1.083,14','6.316,86'),(375,305528,'JAILTON HERCILIO DA SILVA','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(376,305502,'JAIMARIO DA SILVA','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(377,305421,'JECIANE STEFANE FERREIRA GAMEN','CHEFE DE GABINETE','1/6/2017','6.000,00','10.400,00','1.187,41','9.212,59'),(378,305253,'JOABE CELIO DE ALBUQUERQUE','VEREADOR','1/1/2017','15.031,76','23.947,64','7.062,24','16.885,40'),(379,305154,'JOANA DARC FELIPE','ASSESSOR EXECUTIV','1/1/2016','5.000,00','6.400,00','883,31','5.516,69'),(380,305367,'JOAO ANTONIO PEREIRA DA SILVA','ASSESSOR PARLAMEN','1/1/2017','3.500,00','4.900,00','479,71','4.420,29'),(381,305514,'JOAO BATISTA CAMPELO','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(382,305436,'JOAO DA SILVA AMORIM FILHO','ASSESSOR EXECUTIV','1/6/2017','5.000,00','8.900,00','883,31','8.016,69'),(383,305459,'JOAO JUSTINO DA SILVA','ASSESSOR ESPECIAL','1/8/2017','5.000,00','8.900,00','883,31','8.016,69'),(384,304967,'JOAO MIGUEL RIBEIRO','ASSESSOR TEMATICO','1/7/2014','2.000,00','3.400,00','180','3.220,00'),(385,305297,'JOCEMAR FERREIRA NOBERTO','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(386,305529,'JORGE JOSE DA SILVA MELO','ASSESSOR PARLAMEN','1/4/2018','3.500,00','5.337,50','479,71','4.857,79'),(387,305293,'JOSABETE MARIA DA SILVA','VEREADOR','1/1/2017','15.031,76','23.947,64','3.671,15','20.276,49'),(388,305327,'JOSE ANTONIO DA SILVA','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.187,41','9.212,59'),(389,305513,'JOSE BARTOLOMEU DOS SANTOS','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(390,305534,'JOSE CARLOS DOS SANTOS','ASSESSOR TECNICO','1/4/2018','3.000,00','4.400,00','380,31','4.019,69'),(391,304531,'JOSE CARLOS PEREIRA DO ESPIRIT','ASSESSOR TEMATICO','1/1/2014','2.000,00','4.400,00','180','4.220,00'),(392,305288,'JOSE DA SILVA FELIX','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.135,27','9.264,73'),(393,305323,'JOSE GEZIEL LIRA DE ARAUJO','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','840,65','8.059,35'),(394,305443,'JOSE IRTON ALVES DOS SANTOS','ASSESSOR TECNICO','1/6/2017','3.000,00','5.900,00','590,31','5.309,69'),(395,303977,'JOSE LEONARDO DINIZ','VEREADOR','1/1/2013','15.031,76','23.947,64','3.960,10','19.987,54'),(396,305257,'JOSE PEREIRA DE MENEZES','VEREADOR','1/1/2017','15.031,76','23.947,64','7.072,47','16.875,17'),(397,305524,'JOSE ROSIVALDO HENRIQUE DA SIL','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.400,00','180','3.220,00'),(398,305305,'JOSE VILMAR CAVALCANTI DE MELO','VEREADOR','1/1/2017','15.031,76','23.947,64','3.619,01','20.328,63'),(399,305397,'JOSELITO NUNES','VEREADOR','1/3/2017','15.031,76','23.947,64','3.671,15','20.276,49'),(400,305350,'JOSIVALDO JOAO CABRAL','ASSESSOR PARLAMEN','1/1/2017','3.500,00','6.650,00','440,24','6.209,76'),(401,305262,'JOSUE DA SILVA','VEREADOR','1/1/2017','15.031,76','23.947,64','6.693,09','17.254,55'),(402,305447,'JOSUEL FRANCISCO DOS SANTOS','ASSESSOR PARLAMEN','1/7/2017','3.500,00','6.650,00','440,24','6.209,76'),(403,305491,'JULHA MARIANA FLORA DA SILVA P','ASSESSOR PARLAMEN','1/2/2018','2.000,00','3.816,67','180','3.636,67'),(404,305522,'JULIANA GOMES DE MIRANDA','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(405,305490,'JULIANA RIBEIRO DA SILVA','ASSESSOR PARLAMEN','1/2/2018','2.000,00','3.816,67','180','3.636,67'),(406,305486,'KAROLAYNE ALESSANDRA ALMEIDA S','ASSESSOR ESPECIAL','1/2/2018','5.000,00','7.441,67','883,31','6.558,36'),(407,305501,'LAIZA PATRICIA LINS DE MELO','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(408,305520,'LAUDICEA LOPES BASTOS DA SILVA','ASSESSOR TEMATICO','1/4/2018','2.000,00','2.000,00','180','1.820,00'),(409,305272,'LEANDRO ANTONIO SANTOS DO NASC','ASSESSOR PARLAMEN','1/1/2017','3.500,00','6.650,00','479,71','6.170,29'),(410,305538,'LENIDICE CAVALCANTI DE ALMEIDA','ASSESSOR PARLAMEN','1/5/2018','3.500,00','4.900,00','479,71','4.420,29'),(411,305468,'LENILDO DE OLIVEIRA BRITO','ASSESSOR PARLAMEN','1/9/2017','2.000,00','3.400,00','180','3.220,00'),(412,305289,'LEONARDO DIAS RAMALHO','ASSESSOR ESPECIAL','1/1/2014','5.000,00','8.900,00','883,31','8.016,69'),(413,304968,'LEONARDO ROBERTO DOS SANTOS','ASSESSOR TEMATICO','1/7/2014','2.000,00','3.800,00','241,9','3.558,10'),(414,305461,'LUCAS ANDRE VERCOSA BRAINER','ASSESSOR PARLAMEN','1/8/2017','2.000,00','4.400,00','180','4.220,00'),(415,305452,'LUCINEIDE MARIA DA CUNHA','ASSESSOR ESPECIAL','1/8/2017','5.000,00','8.900,00','841,24','8.058,76'),(416,305544,'LUIS VICTOR DO REGO FERREIRA','ASSESSOR PARLAMEN','1/6/2018','3.500,00','5.045,83','479,71','4.566,12'),(417,305474,'LUIZ PEREIRA DE LIMA','ASSESSOR ESPECIAL','1/11/2017','5.000,00','8.900,00','883,31','8.016,69'),(418,305426,'MAGDA HILARIO CORREA DA SILVA','CHEFE DE GABINETE','1/6/2017','6.000,00','7.400,00','1.187,41','6.212,59'),(419,305395,'MARCIO HENRIQUE BARBOSA MACIEL','COORD DO CONTROLE','10/2/2017','7.800,00','16.850,00','2.369,91','14.480,09'),(420,305284,'MARCIO HENRIQUE DE OLIVEIRA SI','VEREADOR','1/1/2017','15.031,76','23.947,64','6.837,66','17.109,98'),(421,305340,'MARIA APARECIDA DE ANDRADE','ASSESSOR PARLAMEN','1/1/2017','2.000,00','4.400,00','180','4.220,00'),(422,305535,'MARIA APARECIDA DO NASCIMENTO','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(423,305507,'MARIA CRISTINA LIMA DA SILVA','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(424,305475,'MARIA DE FATIMA GOMES','ASSESSOR TECNICO','1/11/2017','3.000,00','4.400,00','380,31','4.019,69'),(425,305477,'MARIA ELIZANDRA SANTOS DE OLIV','ASSESSOR PARLAMEN','1/1/2018','3.500,00','6.650,00','479,71','6.170,29'),(426,305334,'MARIA MONICA DO NASCIMENTO','ASSESSOR PARLAMEN','1/1/2017','3.500,00','4.900,00','479,71','4.420,29'),(427,305208,'MARIO ALVES DE OLIVEIRA FILHO','ASSESSOR PARLAMEN','1/4/2016','3.500,00','4.900,00','479,71','4.420,29'),(428,305515,'MARIZA HENRIQUE DA SILVA SANTO','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.400,00','180','3.220,00'),(429,305373,'MARLEIDE ARAUJO DO NASCIMENTO','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(430,305259,'MARLUS DE ARAUJO COSTA','VEREADOR','1/1/2017','15.031,76','23.947,64','3.671,15','20.276,49'),(431,304065,'MELQUEZEDEQUE LIMA DE ALMEIDA','VEREADOR','1/1/2013','15.031,76','16.431,76','4.059,90','12.371,86'),(432,305500,'MICHELE MARIA DA SILVA','ASSESSOR EXECUTIV','1/4/2018','5.000,00','6.400,00','883,31','5.516,69'),(433,305493,'MOACIR OLIVEIRA MELO','ASSESSOR EXECUTIV','1/2/2018','5.000,00','7.441,67','883,31','6.558,36'),(434,305499,'MOISES CARNEIRO GONCALVES JUNI','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(435,304565,'NADJA ALVES DA SILVA','ASSESSOR EXECUTIV','1/1/2014','5.000,00','8.900,00','840,65','8.059,35'),(436,305506,'NADLY KAROLA GOMES FERNANDES','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.400,00','180','3.220,00'),(437,305277,'NELSON JOSE DA SILVA','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','759,64','8.140,36'),(438,305362,'NEWTON CARLOS LINS CRUZ','ASSESSOR PARLAMEN','1/1/2017','3.500,00','6.650,00','426,02','6.223,98'),(439,305481,'NEWTON DA SILVA BRASILEIRO NET','ASSESSOR EXECUTIV','1/1/2018','5.000,00','6.400,00','883,31','5.516,69'),(440,305455,'NILTON CLEMENTINO DA SILVA','ASSESSOR EXECUTIV','1/8/2017','5.000,00','6.400,00','883,31','5.516,69'),(441,305317,'NILZA CANDIDA NUNES NETA','ASSESSOR PARLAMEN','1/1/2017','2.000,00','3.400,00','180','3.220,00'),(442,305276,'NIVALDO ANASTACIO DE SOUZA JUN','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.135,27','9.264,73'),(443,305516,'NIVALDO MONTEIRO DA SILVA','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(444,305357,'ONASSIS MORENO SOARES','ASSESSOR PARLAMEN','1/1/2017','2.000,00','3.400,00','180','3.220,00'),(445,305444,'OSEIA BEZERRA DE LIMA','ASSESSOR TEMATICO','1/6/2017','2.000,00','4.400,00','180','4.220,00'),(446,305396,'OSIAS FERREIRA DE LIMA JUNIOR','PROCURADOR GERAL-','13/2/2017','13.000,00','21.650,00','3.112,41','18.537,59'),(447,305388,'PATRICIA MARIA DORNELAS DO NAS','ASSESSOR TECNICO','1/2/2017','3.000,00','4.400,00','380,31','4.019,69'),(448,305432,'PAULO THIAGO BEZERRA RIBEIRO V','ASSESSOR JURIDICO','1/6/2017','5.000,00','8.900,00','883,31','8.016,69'),(449,304516,'PEDRO BARBOSA TINOCO NETO','ASSESSOR TECNICO','1/1/2014','4.000,00','7.400,00','601,46','6.798,54'),(450,305485,'PEDRO ROMULO DA ROCHA BARROS N','ASSESSOR PARLAMEN','1/2/2018','3.500,00','4.900,00','479,71','4.420,29'),(451,305366,'RAISSA ARA ARANTES DE SALES','CHEFE DE GABINETE','1/1/2017','6.000,00','7.400,00','1.187,41','6.212,59'),(452,305521,'RANNIERLY LAIS OLIVEIRA DE LIM','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(453,305353,'RAQUEL FERREIRA DA SILVA','ASSESSOR ESPECIAL','1/1/2017','5.000,00','6.400,00','797,99','5.602,01'),(454,305469,'RAUL MAGNO GAIAO','ASSESSOR ESPECIAL','1/9/2017','5.000,00','8.900,00','759,64','8.140,36'),(455,305310,'REGINALDO GOMES DE MELO','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','759,64','8.140,36'),(456,305427,'REGINALDO RIBEIRO DE ALMEIDA F','ASSESSOR ESPECIAL','1/6/2017','5.000,00','6.400,00','883,31','5.516,69'),(457,305351,'REINILDO BILAR DA SILVA','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.083,14','9.316,86'),(458,305496,'RENAN CARDEAL PACHECO DA SILVA','ASSESSOR PARLAMEN','1/3/2018','2.000,00','3.733,33','180','3.553,33'),(459,305451,'RENATA KARINE DA SILVA CORDEIR','ASSESSOR TECNICO','1/8/2017','3.000,00','5.900,00','380,31','5.519,69'),(460,305450,'RICARDO JOSE FERREIRA','ASSESSOR EXECUTIV','1/7/2017','5.000,00','6.400,00','883,31','5.516,69'),(461,305280,'RINALDO MARCOS DE SANTANA','ASSESSOR PARLAMEN','1/1/2017','2.000,00','4.400,00','261,6','4.138,40'),(462,305441,'RISLANE CRISTINA DE SANTANA GL','ASSESSOR EXECUTIV','1/6/2017','5.000,00','6.400,00','883,31','5.516,69'),(463,305431,'RITA DE CASSIA DA SILVA MOREIR','ASSESSOR PARLAMEN','1/6/2017','2.000,00','4.400,00','180','4.220,00'),(464,305428,'RIVALDO CARLOS DOS SANTOS','ASSESSOR PARLAMEN','1/6/2017','2.000,00','3.400,00','180','3.220,00'),(465,305013,'RIVONIA JOSE DE LIMA AMORIM','CHEFE DE GABINETE','1/1/2015','6.000,00','7.400,00','1.187,41','6.212,59'),(466,304555,'ROBERTO MAURO DE OLIVEIRA GOME','CHEFE DE GABINETE','1/1/2014','6.000,00','7.400,00','1.187,41','6.212,59'),(467,305298,'ROGERIO FRANCISCO DE BARROS','ASSESSOR PARLAMEN','1/1/2017','3.500,00','6.650,00','479,71','6.170,29'),(468,305456,'ROSANGELA FERREIRA DA SILVA','ASSESSOR TECNICO','1/8/2017','3.000,00','4.400,00','380,31','4.019,69'),(469,305264,'ROSECLEIDE PEREIRA DA SILVA AL','CHEFE DE GABINETE','1/1/2017','6.000,00','10.400,00','1.083,14','9.316,86'),(470,305300,'ROSIETE VIANA GOMES FREITAS','CHEFE DE GABINETE','1/1/2017','6.000,00','7.400,00','1.135,27','6.264,73'),(471,305375,'ROSINEIDE MARIA DA SILVA','ASSESSOR PARLAMEN','1/1/2017','2.000,00','3.000,00','180','2.820,00'),(472,305548,'RUANITA MARIA BARBOSA DOS RAMO','ASSESSOR TECNICO','1/6/2018','3.000,00','3.125,00','380,31','2.744,69'),(473,305519,'SANDRA DUARTE DA SILVA ALVES','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.400,00','180','3.220,00'),(474,305462,'SANDRA VICENTE DE FREITAS','ASSESSOR TECNICO','1/8/2017','3.000,00','4.400,00','380,31','4.019,69'),(475,305254,'SANDRO RAIMUNDO DE ANDRADE','VEREADOR','1/1/2017','15.031,76','23.947,64','3.671,15','20.276,49'),(476,304037,'SEBASTIAO VIRGILIO VIEIRA','VEREADOR','1/1/2013','15.031,76','23.947,64','3.410,46','20.537,18'),(477,304519,'SEVERINA FERREIRA SANTOS LOPES','ASSESSOR TECNICO','1/1/2014','4.000,00','7.700,00','601,46','7.098,54'),(478,305400,'SEVERINA SOARES DA SILVA','ASSESSOR ESPECIAL','1/4/2017','5.000,00','8.900,00','883,31','8.016,69'),(479,305268,'SEVERINO BORGES DOS SANTOS FIL','ASSESSOR PARLAMEN','1/1/2017','2.000,00','4.400,00','180','4.220,00'),(480,305130,'SEVERINO SARAIVA DE ARRUDA','ASSESSOR TEMATICO','17/8/2015','2.000,00','3.000,00','300','2.700,00'),(481,305406,'SILVANA CRISTINA COSTA DOS SAN','ASSESSOR ESPECIAL','1/5/2017','5.000,00','6.400,00','797,99','5.602,01'),(482,304821,'SILVIANE PITANCO DE LIMA','ASSESSOR PARLAMEN','1/1/2014','2.000,00','4.400,00','180','4.220,00'),(483,304564,'SINIEL COSTA DE LIMA','CHEFE DE GABINETE','1/1/2014','6.000,00','10.400,00','1.035,38','9.364,62'),(484,305291,'SIZENANDO TRAJANO DE ARRUDA FI','ASSESSOR PARLAMEN','1/1/2017','3.500,00','6.650,00','479,71','6.170,29'),(485,305466,'SONIA MARIA FERREIRA DA SILVA','ASSESSOR ESPECIAL','1/8/2017','5.000,00','8.900,00','883,31','8.016,69'),(486,305278,'STHEFANY PAULA MOURA DOS SANTO','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','883,31','8.016,69'),(487,305463,'SUZANA OLIVEIRA CALADO','ASSESSOR TEMATICO','1/8/2017','2.000,00','3.400,00','180','3.220,00'),(488,305379,'SUZI DAYANE SANTANA XAVIER','ASSESSOR ESPECIAL','1/1/2017','5.000,00','8.900,00','925,51','7.974,49'),(489,305285,'TADEU CESAR BARBOSA CAVALCANTI','VEREADOR','1/1/2017','15.031,76','16.431,76','3.671,15','12.760,61'),(490,305454,'TAMARA SANTOS DE OLIVEIRA','ASSESSOR TECNICO','1/8/2017','3.000,00','4.400,00','380,31','4.019,69'),(491,305404,'TANIA BRUNO LOPES','CHEFE DE GABINETE','1/4/2017','6.000,00','12.400,00','1.737,41','10.662,59'),(492,305429,'TATIANE OLIVEIRA DA SILVA','ASSESSOR PARLAMEN','1/6/2017','3.500,00','6.650,00','479,71','6.170,29'),(493,305531,'THAISE DO NASCIMENTO MARQUES','ASSESSOR TEMATICO','1/4/2018','2.000,00','2.000,00','180','1.820,00'),(494,305260,'UBIRAJARA FERREIRA DA SILVA','VEREADOR','1/1/2017','15.031,76','16.431,76','3.671,15','12.760,61'),(495,305335,'VALERIA VANDA GOMES','ASSESSOR PARLAMEN','1/1/2017','2.000,00','3.400,00','180','3.220,00'),(496,305446,'VERIDIANA SOARES OLIVEIRA DA S','ASSESSOR EXECUTIV','1/7/2017','5.000,00','6.400,00','797,99','5.602,01'),(497,305275,'VICTOR PEREIRA CABRAL','ASSESSOR TECNICO','1/1/2017','4.000,00','5.400,00','601,46','4.798,54'),(498,305467,'VIVIANE SARAIVA DO NASCIMENTO','ASSESSOR ESPECIAL','1/8/2017','5.000,00','6.400,00','797,99','5.602,01'),(499,305488,'WALQUIRIA SOARES DE AZEVEDO SI','CHEFE DE GABINETE','1/2/2018','6.000,00','8.650,00','1.187,41','7.462,59'),(500,305536,'WALTER ILTON DE SOUZA PINHEIRO','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(501,305316,'WELTON CARLOS DA SILVA','ASSESSOR PARLAMEN','1/1/2017','3.500,00','4.900,00','479,71','4.420,29'),(502,305503,'WENDELL GILBERTO PEREIRA ALVES','ASSESSOR PARLAMEN','1/4/2018','2.000,00','3.650,00','180','3.470,00'),(503,304817,'WILLIAM SILVA DE OLIVEIRA','ASSESSOR ESPECIAL','1/1/2014','5.000,00','8.900,00','883,31','8.016,69'),(504,304518,'WILMA CAMPOS BEZERRA','ASSESSOR TECNICO','1/1/2014','5.000,00','8.900,00','883,31','8.016,69'),(505,305498,'WOLLACE LUIZ DOS SANTOS DA SIL','ASSESSOR PARLAMEN','1/3/2018','3.500,00','4.900,00','479,71','4.420,29'),(506,305416,'ZILMARIO JOSE DA SILVA JUNIOR','ASSESSOR PARLAMEN','1/6/2017','2.000,00','3.400,00','180','3.220,00');
/*!40000 ALTER TABLE `pessoal_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'transparencia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-23  7:59:26
