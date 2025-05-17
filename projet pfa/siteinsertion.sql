-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: projetpfa
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add client',7,'add_client'),(26,'Can change client',7,'change_client'),(27,'Can delete client',7,'delete_client'),(28,'Can view client',7,'view_client'),(29,'Can add compagnie',8,'add_compagnie'),(30,'Can change compagnie',8,'change_compagnie'),(31,'Can delete compagnie',8,'delete_compagnie'),(32,'Can view compagnie',8,'view_compagnie'),(33,'Can add commande',9,'add_commande'),(34,'Can change commande',9,'change_commande'),(35,'Can delete commande',9,'delete_commande'),(36,'Can view commande',9,'view_commande'),(37,'Can add produit',10,'add_produit'),(38,'Can change produit',10,'change_produit'),(39,'Can delete produit',10,'delete_produit'),(40,'Can view produit',10,'view_produit');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$p6M7MRVZuB9U1hmLw32kI1$3ApsJtxjyewAu3xZRGmpA784yzOmqQuRA1fVFujUJZI=','2025-04-29 17:16:30.506584',1,'pfa','','','',1,1,'2025-04-24 12:07:10.895752'),(2,'pbkdf2_sha256$1000000$mlnDzWeqar4zTq20lpwKqw$195y8zN4QPNxaXgLMSNEUL/SVnakIHnHNQEr7Gu9jCY=',NULL,0,'pfaa','','','gg@gmail.com',0,1,'2025-04-24 12:45:53.744269'),(3,'pbkdf2_sha256$1000000$rUw1PWxDPld65dZJEA5NEG$l2l1Bwk97qPbZNbFGPr258FaMjQAHosQtSb8+aBNjuk=','2025-04-25 09:15:40.368498',0,'pfaaa','','','04@gmail.com',0,1,'2025-04-25 09:14:48.848106'),(4,'pbkdf2_sha256$1000000$dpjC1TWgM9lL35rBKHTW2l$r4lgPbz1TjWg1qqSVIq4l/eSYTvzgrIfgfk8lVp9YDQ=',NULL,0,'Pedro','','','04@gmail.com',0,1,'2025-04-25 09:16:09.632525'),(5,'pbkdf2_sha256$1000000$U968iJtB67pLVechCGN5ZR$y3zFaLPvxlhmIiKvORYz4x4clg8FACFIcO8Wt+26W+8=',NULL,0,'ibtihal123','','','jj@gmail.com',0,1,'2025-04-25 09:18:12.838194'),(6,'pbkdf2_sha256$1000000$2SIE2sYgYWgtRxdOV4mkQi$9h5J3gmAeoJL2QXQlg80OT8Vl0TiDC9Dkr7nLz1+zxM=','2025-04-25 09:20:02.109570',0,'pfa123','','','pfa@gmail.com',0,1,'2025-04-25 09:19:46.134576'),(7,'pbkdf2_sha256$1000000$56Yp8ZNcmhHMiTqqJm336N$+uXPQiRr+WFK6lVnvaeER6TiGi5dtGta37h7hEZF/7I=','2025-04-25 13:05:47.395524',0,'gg12','','','badre04@gmail.com',0,1,'2025-04-25 13:05:34.212152'),(8,'pbkdf2_sha256$1000000$rmmXF8Xahqb4Uk9IN5fqHR$PCAeoyn8Vk/4PW/2i6uyGCpffTqlm/QF15LDglny3Jo=','2025-04-25 19:58:39.607393',0,'pfa1234','','','pfa@gmail.com',0,1,'2025-04-25 19:57:02.682442'),(9,'pbkdf2_sha256$1000000$B8o9phHqYuqKxxJDhJMwvy$TWzgi+uDY4g1FZp/aU/1NfPXrZg8AlRCe+fUX6+AM3k=','2025-04-26 10:57:18.233893',0,'pfe','','','hh@gmail.com',0,1,'2025-04-26 10:57:04.939797'),(10,'pbkdf2_sha256$1000000$JusgolBlB0sh4kCCx3Avxg$nHLlM1eGyKEvUvW7DFMvYpQgd8XPrNrXtZcDmpJ6n6Y=','2025-04-26 16:25:18.831412',0,'badrelm','','','pedro@gmail.com',0,1,'2025-04-26 16:24:56.211422'),(11,'pbkdf2_sha256$1000000$nPIEdM9lbHdVBM43MiPCZl$DpI9mfAk5cH6fFxKO9c7alKI54uuBrU14N7c/ieEHZY=','2025-04-29 14:04:03.454111',0,'eshop','','','eshop@gmail.com',0,1,'2025-04-28 10:24:20.677435'),(12,'pbkdf2_sha256$1000000$0vQod1dRcYyuT5tJoC9ueo$zt+x1C6elNCzmT3QEZO3X52ubzZeqm/SfwwROrLPV+Q=','2025-04-29 14:10:11.743041',0,'pfaa123','','','elmoudenbadre04@gmail.com',1,1,'2025-04-29 14:03:06.921859'),(13,'pbkdf2_sha256$1000000$1Azy6OAEOLaT0hTtmfgF2F$H0QnxrgcRexbjd7qOLO1F6ki2ioVfYXxJ7fcCoKz8GE=','2025-04-29 17:14:36.426740',0,'pedro123456','','','e04@gmail.com',0,1,'2025-04-29 17:14:23.116014');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_client`
--

DROP TABLE IF EXISTS `base_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_client` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `telephone` (`telephone`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_client`
--

LOCK TABLES `base_client` WRITE;
/*!40000 ALTER TABLE `base_client` DISABLE KEYS */;
INSERT INTO `base_client` VALUES (1,'badre','dd','hay hassani','0684388341','elmoudenbadre04@gmail.com'),(2,'badre','elmouden','hay hassani','068438','adre04@gmail.com'),(3,'jk','elmouden','hay hassa','06843883','elmoude@gmail.com'),(4,'jk','elmouden','hay hassa','06843882','elmoud@gmail.com'),(5,'jk','lll','hay has','0688341','4@gmail.com'),(6,'klj','fzef','dzq','06843','elmoudenbddadre04@gmail.com'),(7,'Medicorp','dd','h','388341','e04@gmail.com'),(8,'kljkl','jgh','kugj','6513','kjbb@gmail.com'),(9,'kh','fzqsd','efsqf','5121','f04@gmail.com'),(10,'badre','elmouden','hay hassani','0641','elm04@gmail.com');
/*!40000 ALTER TABLE `base_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_commande`
--

DROP TABLE IF EXISTS `base_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_commande` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_commande` date NOT NULL,
  `statut` varchar(20) NOT NULL,
  `client_id` bigint NOT NULL,
  `compagnie_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_commande_client_id_9637122a` (`client_id`),
  KEY `base_commande_compagnie_id_77d72b06` (`compagnie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_commande`
--

LOCK TABLES `base_commande` WRITE;
/*!40000 ALTER TABLE `base_commande` DISABLE KEYS */;
INSERT INTO `base_commande` VALUES (1,'2025-04-29','En cours',9,4),(2,'2025-04-29','En cours',10,2),(3,'2025-04-29','En cours',2,2),(4,'2025-04-29','En cours',1,2),(5,'2025-04-29','En cours',1,3),(6,'2025-04-29','En cours',1,3),(7,'2025-04-29','En cours',1,2),(8,'2025-04-29','En cours',2,3),(9,'2025-04-29','En cours',1,4);
/*!40000 ALTER TABLE `base_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_compagnie`
--

DROP TABLE IF EXISTS `base_compagnie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_compagnie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `telephone` (`telephone`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_compagnie`
--

LOCK TABLES `base_compagnie` WRITE;
/*!40000 ALTER TABLE `base_compagnie` DISABLE KEYS */;
INSERT INTO `base_compagnie` VALUES (2,'Medicorp','royaume uni','0665622','medi@gmail.com','compagnie/medicorp.jpeg'),(3,'nextgen','usa','06853526','cc@gmail.com','compagnie/nextgen.jpeg'),(4,'Globaltech','kk@gmail.com','062222','glob@gmail.com','compagnie/globaltech.jpeg'),(5,'Smartbuild','australie','06572382','smart@gmail.com','compagnie/smartbuild.jpeg'),(6,'CleanEnergy','clean@gmail.com','065423552','Cl@gmail.com','compagnie/cleanenergy.jpeg'),(7,'Maple soft','canada','068852247','maple@gmail.com','compagnie/maplesoft.jpeg'),(8,'Techcorp','france','06853258','tech@gmail.com','compagnie/techcorp.jpeg'),(9,'NiponTech','japon','06585625','nipon@gmail.com','compagnie/nipontech.jpeg'),(10,'Softworks','usa','06853585','Soft@gmail.com','compagnie/softworks.jpeg'),(11,'inovatech','usa','0625956','inova@gmail.com','compagnie/inova.jpeg'),(12,'jj','zefezg','0655','zefrze@gmail.com',''),(13,'ff','xx','seee','eee@gmail.com','');
/*!40000 ALTER TABLE `base_compagnie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_produit`
--

DROP TABLE IF EXISTS `base_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_produit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `compagnie_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_produit_compagnie_id_98576821` (`compagnie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_produit`
--

LOCK TABLES `base_produit` WRITE;
/*!40000 ALTER TABLE `base_produit` DISABLE KEYS */;
INSERT INTO `base_produit` VALUES (3,'refrigerateur innox cool','Le réfrigérateur Innox Cool allie élégance et performance. Conçu en acier inoxydable haut de gamme, il apporte une touche moderne à votre cuisine tout en garantissant une durabilité exceptionnelle. Son système de refroidissement avancé assure une conservation optimale des aliments, en maintenant une température uniforme et en réduisant les variations d\'humidité. Avec son design épuré, ses rangements modulables, son éclairage LED et sa faible consommation énergétique',3000.00,15,'produits/gl1.jpeg',4),(4,'cuisiniere vitrociramique','La cuisinière vitrocéramique allie performance de cuisson et élégance moderne. Dotée d\'une plaque en verre vitrocéramique lisse et résistante, elle assure une montée rapide en température et une excellente répartition de la chaleur. Facile à nettoyer et à entretenir, sa surface plane offre également un design épuré qui s\'intègre parfaitement à toutes les cuisines.',4000.00,15,'produits/gl2.jpeg',4),(5,'climatiseur mobile','Le climatiseur mobile est la solution idéale pour rafraîchir efficacement vos espaces sans installation permanente. Compact, maniable et facile à déplacer grâce à ses roulettes intégrées, il vous permet d’apporter fraîcheur et confort exactement là où vous en avez besoin. Équipé de plusieurs modes (refroidissement, ventilation, déshumidification)',1500.00,12,'produits/gl3.jpeg',4),(6,'Aspirateur a main','L’aspirateur à main est l’outil parfait pour un nettoyage rapide et efficace au quotidien. Léger, compact et ergonomique, il est conçu pour atteindre les endroits difficiles d’accès et aspirer facilement miettes, poussières, poils d’animaux ou liquides (pour certains modèles). Idéal pour la maison, la voiture ou les petits espaces, il offre une grande maniabilité et une autonomie suffisante grâce à sa batterie rechargeable. Facile à vider et à entretenir',500.00,500,'produits/gl4.jpeg',4),(7,'appareil de cuisine multifonction','L’appareil de cuisine multifonction est le compagnon idéal pour gagner du temps et réussir toutes vos préparations. Robuste et polyvalent, il rassemble en un seul appareil de nombreuses fonctions : mixer, pétrir, hacher, râper, émincer, fouetter et parfois même cuire.',5000.00,20,'produits/sb1.jpeg',5),(8,'brosse à dent sonic clean','La brosse à dents Sonic Clean révolutionne votre routine d’hygiène bucco-dentaire grâce à sa technologie sonique avancée. Avec des milliers de vibrations par minute, elle élimine efficacement la plaque dentaire, même dans les zones difficiles d’accès, pour un nettoyage en profondeur tout en douceur.',500.00,16,'produits/sb2.jpeg',5),(9,'seche cheveux turbo dry','Le sèche-cheveux Turbo Dry est conçu pour un séchage ultra-rapide sans compromis sur la protection des cheveux. Grâce à son moteur puissant et sa technologie de diffusion de chaleur homogène, il réduit considérablement le temps de séchage tout en préservant la douceur et la brillance naturelle de votre chevelure. Léger, ergonomique et doté de plusieurs réglages de vitesse et de température',550.00,30,'produits/sb3.jpeg',5),(10,'gant de bixe pro fight','Les gants de boxe Pro Fight sont conçus pour offrir performance, protection et confort aux boxeurs exigeants. Fabriqués en cuir de haute qualité, ils garantissent une grande résistance à l’usure et une excellente durabilité, même lors des entraînements intensifs et des combats. Leur rembourrage haute densité absorbe efficacement les chocs',300.00,50,'produits/sb4.jpeg',5),(11,'table de ping pong','La table de ping-pong est idéale pour des parties dynamiques, que ce soit en intérieur ou en extérieur selon le modèle. Conçue pour offrir un rebond de balle optimal, elle dispose d’un plateau robuste et d’une structure stable qui résiste aux chocs et aux variations climatiques (pour les versions outdoor).',6500.00,10,'produits/ce.jpeg',6),(12,'chaussures de course speedrun','Les chaussures de course Speedrun sont conçues pour offrir des performances optimales lors de vos entraînements et compétitions. Grâce à leur technologie de pointe, elles assurent un excellent amorti, un maintien sécurisé et une traction supérieure pour des courses rapides et fluides.',499.00,11,'produits/ce2.jpeg',6),(13,'ecouteirs sans fils bitbuds','Les écouteurs sans fil Bitbuds offrent une expérience audio immersive et sans compromis sur la qualité. Grâce à leur connectivité Bluetooth avancée, ils se synchronisent instantanément avec vos appareils et offrent un son clair et dynamique, que ce soit pour écouter de la musique, prendre des appels ou regarder des vidéos',250.00,41,'produits/ce3.jpeg',6),(14,'ball de tennis','La balle de tennis est conçue pour offrir un rebond parfait et une durabilité exceptionnelle sur tous types de surfaces de jeu. Fabriquée avec un noyau en caoutchouc de haute qualité et recouverte de feutre résistant',49.00,52,'produits/ce4.jpeg',6),(15,'coffre fort  securisé safe lock','Le coffre-fort sécurisé Safe Lock offre une protection optimale pour vos objets de valeur. Conçu avec des matériaux résistants aux chocs et aux tentatives d\'effraction, il garantit une sécurité maximale pour vos documents importants',999.00,8,'produits/m1.jpeg',7),(16,'barre de son ultrasound','La barre de son Ultrasound transforme votre expérience audio à domicile en offrant un son clair, puissant et immersif. Grâce à sa technologie de pointe, elle offre un son haute définition et une répartition optimale du son dans toute la pièce. Conçue pour s’intégrer parfaitement à votre téléviseur, elle dispose de plusieurs modes de son adaptés à différents types de contenus (films, musique, jeux vidéo).',850.00,25,'produits/m2.jpeg',7),(17,'enceinte bluetooth boombox','L\'enceinte Bluetooth Boombox est l\'option idéale pour ceux qui recherchent une expérience audio puissante et portable',399.00,10,'produits/m3.jpeg',7),(18,'ordinateur portable x1','L\'ordinateur portable X1 combine performance, élégance et portabilité. Équipé des derniers processeurs haute performance, il est conçu pour répondre aux besoins des professionnels, étudiants et créateurs en déplacement.',6500.00,41,'produits/t1.jpeg',8),(19,'Smartphone galaxy','Le smartphone Galaxy offre une expérience mobile inégalée avec des performances puissantes et un design élégant. Équipé d’un écran Super AMOLED haute résolution, il garantit des couleurs vives et une clarté impressionnante pour tous vos contenus. Avec un processeur ultra-rapide et une batterie longue durée, le Galaxy est conçu pour répondre à vos besoins quotidiens, que ce soit pour travailler',5500.00,33,'produits/t2.jpeg',8),(20,'velo électrique city ride','Le vélo électrique City Ride est la solution parfaite pour des trajets urbains rapides et sans effort. Conçu pour offrir confort et performance, il combine un design moderne avec un moteur puissant qui vous aide à parcourir facilement les routes et les côtes.',3500.00,10,'produits/t3.jpeg',8),(21,'appareil photo reflex eos','L\'appareil photo reflex EOS offre une qualité d’image professionnelle, parfaite pour les photographes amateurs et confirmés. Grâce à son capteur haute résolution et à son système de mise au point rapide',2299.00,20,'produits/n.jpeg',9),(22,'Tablet tab pro 10','La tablette Tab Pro 10 offre une performance exceptionnelle dans un format compact et élégant. Équipée d’un écran haute résolution de 10 pouces, elle offre une expérience visuelle immersive pour regarder des vidéos',2000.00,9,'produits/n2.jpeg',9),(23,'Machine à Café EspressoMax','La machine à café EspressoMax est l\'outil idéal pour préparer un café riche et intense directement à la maison. Grâce à sa technologie de pression avancée',299.00,53,'produits/kilo.jpeg',9),(24,'Chaise Ergonomique','La chaise ergonomique ComfortPro est conçue pour offrir un confort optimal et un soutien supérieur pendant de longues heures d’assise. Grâce à son design ajustable et ses caractéristiques ergonomiques, elle s’adapte parfaitement à votre posture',699.00,6,'produits/chaise.jpeg',2),(25,'tapis de yoga relax','Le tapis de yoga Relax est conçu pour offrir un confort et une stabilité maximaux lors de vos séances de yoga, de méditation ou d\'étirements. Sa surface antidérapante assure une bonne adhérence, même pendant les postures les plus exigeantes, tandis que son rembourrage épais et doux protège vos articulations',299.00,15,'produits/tapi.jpeg',2),(26,'Serviette de Plage SunRelax','La serviette de plage SunRelax est l\'accessoire parfait pour vos moments de détente au bord de l\'eau. Confectionnée dans un tissu ultra-doux et absorbant, elle vous garantit confort et séchage rapide après une baignade. Son design vibrant et ses grandes dimensions offrent un espace généreux pour vous allonger',250.00,30,'produits/m6.jpeg',2),(27,'Appareil de Massage RelaxFit','L’appareil de massage RelaxFit est la solution idéale pour une relaxation profonde à la maison après une longue journée. Conçu pour offrir un soulagement efficace du stress et des tensions musculaires, il utilise des technologies avancées de massage par vibration et de chaleur pour détendre vos muscles en profondeur',199.00,16,'produits/wo1.jpeg',10),(28,'Lunettes de Soleil Polarize','Les lunettes de soleil Polarize offrent une protection optimale contre les rayons UV tout en réduisant les éblouissements grâce à leur technologie de polarisation avancée. Conçues pour un confort et une clarté visuelle exceptionnels',160.00,16,'produits/wo2.jpeg',10),(29,'Kit de Peinture ArtMaster','Le kit de peinture ArtMaster est conçu pour les artistes, qu\'ils soient débutants ou confirmés, à la recherche de qualité et de polyvalence.',500.00,5,'produits/wo3.jpeg',10),(30,'Console de Jeu GameBox4k','a GameBox4k est la console de jeu de nouvelle génération, offrant des performances exceptionnelles et une expérience de jeu immersive en 4K',200.00,35,'produits/ng.jpeg',3),(31,'Barbecue Gaz GrillePro','Le barbecue à gaz GrillePro est l\'outil parfait pour les amateurs de grillades à la recherche de performance, de praticité et de qualité',2600.00,4,'produits/ng2.jpeg',3),(32,'Casque VR Vision Pro','Le casque VR Vision Pro est la nouvelle référence en matière de réalité virtuelle, offrant une immersion totale dans des mondes numériques d\'une qualité inégalée.',2999.00,17,'produits/ng5.jpeg',3),(33,'Generateur electrique PowerGen','Le générateur électrique PowerGen est conçu pour fournir une source d\'énergie fiable et puissante, que ce soit à la maison, sur un chantier,',3500.00,10,'produits/inov.jpeg',11),(34,'Casque Audio ProSound','Le casque audio ProSound est conçu pour offrir une qualité sonore exceptionnelle, parfaite pour les audiophiles, les professionnels du son et les passionnés de musique. Avec ses haut-parleurs de haute précision',199.00,24,'produits/nv3.jpeg',11),(35,'Montre Connectée FitPro','La montre connectée FitPro est l\'accessoire idéal pour ceux qui souhaitent rester connectés tout en surveillant leur santé et leur bien-être',550.00,30,'produits/nv6.jpeg',11);
/*!40000 ALTER TABLE `base_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-04-25 08:16:31.369868','1','jk',1,'[{\"added\": {}}]',8,1),(2,'2025-04-25 09:44:51.300860','1','tomate (jk)',1,'[{\"added\": {}}]',10,1),(3,'2025-04-25 12:43:04.885847','1','tomate (jk)',3,'',10,1),(4,'2025-04-25 12:43:25.577282','2','tomate (jk)',1,'[{\"added\": {}}]',10,1),(5,'2025-04-28 08:27:39.772337','1','jk',3,'',8,1),(6,'2025-04-28 08:29:36.359979','2','Medicorp',1,'[{\"added\": {}}]',8,1),(7,'2025-04-28 08:30:25.315601','3','nextgen',1,'[{\"added\": {}}]',8,1),(8,'2025-04-28 08:34:45.792354','4','Globaltech',1,'[{\"added\": {}}]',8,1),(9,'2025-04-28 08:41:03.328446','3','refrigerateur innox cool (Globaltech)',1,'[{\"added\": {}}]',10,1),(10,'2025-04-28 08:44:51.615824','4','cuisiniere vitrociramique (Globaltech)',1,'[{\"added\": {}}]',10,1),(11,'2025-04-28 08:47:34.419832','5','climatiseur mobile (Globaltech)',1,'[{\"added\": {}}]',10,1),(12,'2025-04-28 08:49:46.226980','6','Aspirateur a main (Globaltech)',1,'[{\"added\": {}}]',10,1),(13,'2025-04-28 08:54:02.948811','5','Smartbuild',1,'[{\"added\": {}}]',8,1),(14,'2025-04-28 08:58:27.978840','7','appareil de cuisine multifonction (Smartbuild)',1,'[{\"added\": {}}]',10,1),(15,'2025-04-28 09:01:07.750926','8','brosse à dent sonic clean (Smartbuild)',1,'[{\"added\": {}}]',10,1),(16,'2025-04-28 09:04:56.951412','9','seche cheveux turbo dry (Smartbuild)',1,'[{\"added\": {}}]',10,1),(17,'2025-04-28 09:06:24.158405','10','gant de bixe pro fight (Smartbuild)',1,'[{\"added\": {}}]',10,1),(18,'2025-04-28 09:10:07.181961','6','CleanEnergy',1,'[{\"added\": {}}]',8,1),(19,'2025-04-28 09:12:21.048469','11','table de ping pong (CleanEnergy)',1,'[{\"added\": {}}]',10,1),(20,'2025-04-28 09:15:41.313610','12','chaussures de course speedrun (CleanEnergy)',1,'[{\"added\": {}}]',10,1),(21,'2025-04-28 09:17:38.618321','13','ecouteirs sans fils bitbuds (CleanEnergy)',1,'[{\"added\": {}}]',10,1),(22,'2025-04-28 09:21:51.496396','14','ball de tennis (CleanEnergy)',1,'[{\"added\": {}}]',10,1),(23,'2025-04-28 09:24:26.884564','7','Maple soft',1,'[{\"added\": {}}]',8,1),(24,'2025-04-28 09:25:46.366528','15','coffre fort  securisé safe lock (Maple soft)',1,'[{\"added\": {}}]',10,1),(25,'2025-04-28 09:27:24.993544','16','barre de son ultrasound (Maple soft)',1,'[{\"added\": {}}]',10,1),(26,'2025-04-28 09:28:47.480220','17','enceinte bluetooth boombox (Maple soft)',1,'[{\"added\": {}}]',10,1),(27,'2025-04-28 09:29:32.233270','8','Techcorp',1,'[{\"added\": {}}]',8,1),(28,'2025-04-28 09:30:48.214497','18','ordinateur portable x1 (Techcorp)',1,'[{\"added\": {}}]',10,1),(29,'2025-04-28 09:32:08.416638','19','Smartphone galaxy (Techcorp)',1,'[{\"added\": {}}]',10,1),(30,'2025-04-28 09:33:18.001483','20','velo électrique city ride (Techcorp)',1,'[{\"added\": {}}]',10,1),(31,'2025-04-28 09:36:05.897678','9','NiponTech',1,'[{\"added\": {}}]',8,1),(32,'2025-04-28 09:37:31.429689','21','appareil photo reflex eos (NiponTech)',1,'[{\"added\": {}}]',10,1),(33,'2025-04-28 09:39:22.270812','22','Tablet tab pro 10 (NiponTech)',1,'[{\"added\": {}}]',10,1),(34,'2025-04-28 09:42:06.684500','23','Machine à Café EspressoMax (NiponTech)',1,'[{\"added\": {}}]',10,1),(35,'2025-04-28 09:51:14.926949','24','Chaise Ergonomique (Medicorp)',1,'[{\"added\": {}}]',10,1),(36,'2025-04-28 09:52:27.306695','25','tapis de yoga relax (Medicorp)',1,'[{\"added\": {}}]',10,1),(37,'2025-04-28 09:53:58.771868','26','Serviette de Plage SunRelax (Medicorp)',1,'[{\"added\": {}}]',10,1),(38,'2025-04-28 10:01:57.013134','10','Softworks',1,'[{\"added\": {}}]',8,1),(39,'2025-04-28 10:03:54.205039','27','Appareil de Massage RelaxFit (Softworks)',1,'[{\"added\": {}}]',10,1),(40,'2025-04-28 10:05:00.999993','28','Lunettes de Soleil Polarize (Softworks)',1,'[{\"added\": {}}]',10,1),(41,'2025-04-28 10:06:12.979283','29','Kit de Peinture ArtMaster (Softworks)',1,'[{\"added\": {}}]',10,1),(42,'2025-04-28 10:29:30.185341','30','Console de Jeu GameBox4k (nextgen)',1,'[{\"added\": {}}]',10,1),(43,'2025-04-28 10:31:04.336188','31','Barbecue Gaz GrillePro (nextgen)',1,'[{\"added\": {}}]',10,1),(44,'2025-04-28 10:32:16.976121','32','Casque VR Vision Pro (nextgen)',1,'[{\"added\": {}}]',10,1),(45,'2025-04-28 10:38:20.805599','11','inovatech',1,'[{\"added\": {}}]',8,1),(46,'2025-04-28 10:39:54.070878','33','Generateur electrique PowerGen (inovatech)',1,'[{\"added\": {}}]',10,1),(47,'2025-04-28 10:42:37.227240','34','Casque Audio ProSound (inovatech)',1,'[{\"added\": {}}]',10,1),(48,'2025-04-28 10:44:20.464496','35','Montre Connectée FitPro (inovatech)',1,'[{\"added\": {}}]',10,1),(49,'2025-04-28 16:45:57.378656','40','jk (Medicorp)',1,'[{\"added\": {}}]',10,1),(50,'2025-04-28 20:01:09.511209','40','jk (Medicorp)',3,'',10,1),(51,'2025-04-28 20:01:09.511227','39','jk (Medicorp)',3,'',10,1),(52,'2025-04-28 20:01:09.511227','38','jk (Medicorp)',3,'',10,1),(53,'2025-04-28 20:01:09.511227','37','jk (Medicorp)',3,'',10,1),(54,'2025-04-28 20:01:09.511227','36','jk (Medicorp)',3,'',10,1),(55,'2025-04-29 12:05:23.411113','11','inovatech',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(56,'2025-04-29 12:06:05.772532','10','Softworks',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(57,'2025-04-29 12:06:38.009649','9','NiponTech',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(58,'2025-04-29 12:06:50.579170','8','Techcorp',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(59,'2025-04-29 12:07:03.128687','7','Maple soft',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(60,'2025-04-29 12:07:19.324641','6','CleanEnergy',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(61,'2025-04-29 12:07:31.220483','5','Smartbuild',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(62,'2025-04-29 12:07:43.347708','4','Globaltech',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(63,'2025-04-29 12:07:57.929478','3','nextgen',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(64,'2025-04-29 12:08:15.652297','2','Medicorp',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(65,'2025-04-29 12:38:25.639099','12','jj',1,'[{\"added\": {}}]',8,1),(66,'2025-04-29 20:13:41.296323','3','Commande #3 - badre - En cours',1,'[{\"added\": {}}]',9,1),(67,'2025-04-29 20:17:59.197977','4','Commande #4 - badre - En cours',1,'[{\"added\": {}}]',9,1),(68,'2025-04-29 20:21:01.047147','5','Commande #5 - badre - En cours',1,'[{\"added\": {}}]',9,1),(69,'2025-04-29 20:35:18.766841','6','Commande #6 - badre - En cours',1,'[{\"added\": {}}]',9,1),(70,'2025-04-29 20:39:52.184028','7','Commande #7 - badre - En cours',1,'[{\"added\": {}}]',9,1),(71,'2025-04-29 21:00:39.116551','8','Commande #8 - badre - En cours',1,'[{\"added\": {}}]',9,1),(72,'2025-04-29 21:15:20.004278','9','Commande #9 - badre - En cours',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'base','client'),(8,'base','compagnie'),(9,'base','commande'),(10,'base','produit');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-04-24 12:06:51.491302'),(2,'auth','0001_initial','2025-04-24 12:06:51.868324'),(3,'admin','0001_initial','2025-04-24 12:06:52.075744'),(4,'admin','0002_logentry_remove_auto_add','2025-04-24 12:06:52.084748'),(5,'admin','0003_logentry_add_action_flag_choices','2025-04-24 12:06:52.094770'),(6,'contenttypes','0002_remove_content_type_name','2025-04-24 12:06:52.167495'),(7,'auth','0002_alter_permission_name_max_length','2025-04-24 12:06:52.203402'),(8,'auth','0003_alter_user_email_max_length','2025-04-24 12:06:52.243295'),(9,'auth','0004_alter_user_username_opts','2025-04-24 12:06:52.253270'),(10,'auth','0005_alter_user_last_login_null','2025-04-24 12:06:52.294249'),(11,'auth','0006_require_contenttypes_0002','2025-04-24 12:06:52.296153'),(12,'auth','0007_alter_validators_add_error_messages','2025-04-24 12:06:52.307205'),(13,'auth','0008_alter_user_username_max_length','2025-04-24 12:06:52.350010'),(14,'auth','0009_alter_user_last_name_max_length','2025-04-24 12:06:52.387906'),(15,'auth','0010_alter_group_name_max_length','2025-04-24 12:06:52.428800'),(16,'auth','0011_update_proxy_permissions','2025-04-24 12:06:52.440805'),(17,'auth','0012_alter_user_first_name_max_length','2025-04-24 12:06:52.479659'),(18,'base','0001_initial','2025-04-24 12:06:52.761957'),(19,'sessions','0001_initial','2025-04-24 12:06:52.819792'),(20,'base','0002_compagnie_image','2025-04-29 12:04:04.115888');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('vk0jz2h1kla2zdzo7yhx5r39lybwt3dk','.eJxVjDsOwjAQBe_iGllr7_pHSc8ZLH9xADlSnFSIu0OkFNC-mXkv5sO2Nr-NsvgpszMT7PS7xZAepe8g30O_zTzNfV2myHeFH3Tw65zL83K4fwctjPatISptsUgBAUAjRIlVUU2RCHUGQYgxQCGTnErZGWO0tShLTaSqI83eH7fsNtw:1u8EEG:Pw-7zcK7OEQj1XBpKq9jcOXyslWyxY8EdMCAkG-Adhk','2025-05-09 08:16:12.940995'),('ccd177hd17i6xjqbwdyzgh5p2qubax8r','e30:1u8F9G:XcCoiO_473ac1hV1tZLagStbJHA4a8RY0D9co576fIs','2025-05-09 09:15:06.090327'),('u9gkcyqt88qdkkbgjv076f513247rih9','e30:1u8F9o:O6qMQGjGdf09Z1ZxhW3fJLG59xCC_vOCGCF4hnLBqFU','2025-05-09 09:15:40.366504'),('3nd17o6b63equ2m48socqwf26djjkf24','e30:1u8FE0:lMRUJmZN4ZA2CHnukeZs-XBmxGunKBQtvElN2jguAmk','2025-05-09 09:20:00.198206'),('rtznajb73zsce3gsk0tify97wejtvncg','e30:1u8FE2:1bTkizDXJShXnepkjIM2yc7KMS_UD6t246LYBjAMq-Y','2025-05-09 09:20:02.106577'),('14fmtc0dl1o37nek00im62pp6tn16jfq','e30:1u8IkV:xz5ylF0Znc976OJ5Olf6zl_xWRCXZvVWAbHteGFE17M','2025-05-09 13:05:47.394533'),('6oqfmoyaavdiylp5dw3v57dqqf2fo2uu','e30:1u8PAk:juygE3CVKxotSMAe99BflA-RId4suDQpDKCDcIr8aLY','2025-05-09 19:57:18.862749'),('aeq9qu2l8yk857tu03igobe2nm26avjg','.eJxVjDsOwjAQBe_iGlkb4y8lfc5g7dprHECOFCcV4u4QKQW0b2beS0Tc1hq3zkucsriIIE6_G2F6cNtBvmO7zTLNbV0mkrsiD9rlOGd-Xg_376Bir99aUXIERE6XULROBrznAhmYCiFkrwzaYIGz0x7PzKyYB2MVgBtUsOL9AQkoODM:1u8dDi:h7MeCGYiy7lTGad404qXCFW3kRnH4EsmN3YA6CJKnt8','2025-05-10 10:57:18.234889'),('h560nxdnlrrgn1vs14jfxmil3eyv882y','e30:1u9lYV:i1YsTpxB6Sm7fLa04JRkv6V7yJ_g6GW7IvAeN333bxs','2025-05-13 14:03:27.987468');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 17:46:43
