-- MySQL dump 10.13  Distrib 5.7.26, for osx10.10 (x86_64)
--
-- Host: 127.0.0.1    Database: avogest
-- ------------------------------------------------------
-- Server version	5.6.51

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
-- Table structure for table `back_ref_poste`
--

DROP TABLE IF EXISTS `back_ref_poste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `back_ref_poste` (
  `id_poste` int(2) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(10) NOT NULL DEFAULT 'AVOTEST',
  `ref_poste` varchar(30) NOT NULL DEFAULT '',
  `user_upd` varchar(10) NOT NULL,
  `date_upd` datetime NOT NULL,
  `is_frais_procedure` tinyint(4) NOT NULL DEFAULT '0',
  `is_honoraires` tinyint(4) NOT NULL DEFAULT '0',
  `is_frais_collaboration` tinyint(4) NOT NULL DEFAULT '0',
  `is_facturable` tinyint(4) NOT NULL DEFAULT '0',
  `transaction_dir` varchar(3) NOT NULL,
  `is_archived` int(1) NOT NULL,
  PRIMARY KEY (`id_poste`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back_ref_poste`
--

LOCK TABLES `back_ref_poste` WRITE;
/*!40000 ALTER TABLE `back_ref_poste` DISABLE KEYS */;
/*!40000 ALTER TABLE `back_ref_poste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_ref_compte`
--

DROP TABLE IF EXISTS `hist_ref_compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_ref_compte` (
  `id_compte` smallint(6) NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `compte_num` varchar(50) CHARACTER SET latin1 NOT NULL,
  `compte_ref` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_upd` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date_upd` datetime NOT NULL,
  `is_countable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_archived` tinyint(4) NOT NULL DEFAULT '0',
  `account_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_ref_compte`
--

LOCK TABLES `hist_ref_compte` WRITE;
/*!40000 ALTER TABLE `hist_ref_compte` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_ref_compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_ref_poste`
--

DROP TABLE IF EXISTS `hist_ref_poste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_ref_poste` (
  `id_poste` int(2) NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ref_poste` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_upd` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date_upd` datetime NOT NULL,
  `is_frais_procedure` tinyint(4) NOT NULL DEFAULT '0',
  `is_honoraires` tinyint(4) NOT NULL DEFAULT '0',
  `is_frais_collaboration` tinyint(4) NOT NULL DEFAULT '0',
  `is_facturable` tinyint(4) NOT NULL DEFAULT '0',
  `is_archived` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_ref_poste`
--

LOCK TABLES `hist_ref_poste` WRITE;
/*!40000 ALTER TABLE `hist_ref_poste` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_ref_poste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_t_clients`
--

DROP TABLE IF EXISTS `hist_t_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_t_clients` (
  `id_client` bigint(20) NOT NULL DEFAULT '0',
  `id_user` varchar(10) NOT NULL DEFAULT 'AVOTEST',
  `id_lg` varchar(2) NOT NULL,
  `id_title` char(1) NOT NULL DEFAULT '',
  `f_nom` varchar(50) NOT NULL DEFAULT '',
  `f_prenom` varchar(50) NOT NULL DEFAULT '',
  `f_rue` varchar(100) NOT NULL DEFAULT '',
  `f_num` varchar(10) NOT NULL DEFAULT '',
  `f_ville` varchar(50) NOT NULL DEFAULT '',
  `f_cp` varchar(10) NOT NULL DEFAULT '',
  `f_tel` varchar(30) NOT NULL DEFAULT '',
  `f_gsm` varchar(30) NOT NULL DEFAULT '',
  `f_fax` varchar(30) NOT NULL DEFAULT '',
  `f_email` varchar(50) NOT NULL DEFAULT '',
  `f_nn` varchar(30) NOT NULL DEFAULT '',
  `f_noe` varchar(30) NOT NULL DEFAULT '',
  `f_tva` varchar(20) NOT NULL,
  `user_upd` varchar(50) NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_type` smallint(6) NOT NULL,
  `f_company` varchar(50) NOT NULL,
  `id_country_alpha3` varchar(3) NOT NULL DEFAULT 'BEL',
  `user_id` bigint(20) DEFAULT NULL,
  `user_act` varchar(50) NOT NULL DEFAULT '',
  `date_act` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_t_clients`
--

LOCK TABLES `hist_t_clients` WRITE;
/*!40000 ALTER TABLE `hist_t_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_t_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_t_debour`
--

DROP TABLE IF EXISTS `hist_t_debour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_t_debour` (
  `id_debour` int(11) NOT NULL,
  `id_doss` bigint(20) NOT NULL,
  `id_debour_type` smallint(6) NOT NULL,
  `unit` tinyint(4) NOT NULL,
  `price_per_unit` double NOT NULL,
  `id_mesure_type` tinyint(4) NOT NULL,
  `comment` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `date_action` date NOT NULL,
  `user_upd` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `date_upd` datetime NOT NULL,
  `user_act` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `date_act` datetime NOT NULL,
  PRIMARY KEY (`id_debour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_t_debour`
--

LOCK TABLES `hist_t_debour` WRITE;
/*!40000 ALTER TABLE `hist_t_debour` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_t_debour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_t_debour_type`
--

DROP TABLE IF EXISTS `hist_t_debour_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_t_debour_type` (
  `id_debour_type` tinyint(4) NOT NULL,
  `id_mesure_type` tinyint(4) NOT NULL,
  `price_per_unit` double NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user_upd` varchar(50) NOT NULL,
  `date_upd` datetime NOT NULL,
  `archived` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_t_debour_type`
--

LOCK TABLES `hist_t_debour_type` WRITE;
/*!40000 ALTER TABLE `hist_t_debour_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_t_debour_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_t_dossiers`
--

DROP TABLE IF EXISTS `hist_t_dossiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_t_dossiers` (
  `id_doss` bigint(20) NOT NULL DEFAULT '0',
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `year_doss` varchar(4) NOT NULL DEFAULT '',
  `num_doss` int(4) NOT NULL DEFAULT '0',
  `doss_type` char(2) NOT NULL DEFAULT '',
  `client_cab` bigint(20) NOT NULL DEFAULT '0',
  `client_adv` bigint(20) NOT NULL DEFAULT '0',
  `date_open` date NOT NULL DEFAULT '0000-00-00',
  `date_close` date DEFAULT NULL,
  `id_matiere_rubrique` smallint(6) NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(200) NOT NULL,
  `memo` text NOT NULL,
  `success_fee_perc` tinyint(4) NOT NULL,
  `success_fee_montant` int(11) NOT NULL,
  `user_upd` varchar(50) NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `couthoraire` int(4) NOT NULL DEFAULT '0',
  `id_user_resp` varchar(20) NOT NULL,
  `user_act` varchar(50) NOT NULL DEFAULT '',
  `date_act` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `opposing_counsel` bigint(20) DEFAULT NULL,
  `client_quality` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_t_dossiers`
--

LOCK TABLES `hist_t_dossiers` WRITE;
/*!40000 ALTER TABLE `hist_t_dossiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_t_dossiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_t_echeancier`
--

DROP TABLE IF EXISTS `hist_t_echeancier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_t_echeancier` (
  `id_echeance` bigint(20) NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_doss` bigint(20) NOT NULL DEFAULT '0',
  `date_rappel` date NOT NULL DEFAULT '0000-00-00',
  `hour_rappel` time NOT NULL DEFAULT '00:00:00',
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_upd` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_assignee` bigint(20) NOT NULL,
  `id_owner` bigint(20) NOT NULL DEFAULT '0',
  `mode` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = Public 1 = Private',
  `user_act` varchar(50) NOT NULL,
  `date_act` datetime NOT NULL,
  PRIMARY KEY (`id_echeance`),
  KEY `id_doss` (`id_doss`),
  KEY `date_rappel` (`date_rappel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_t_echeancier`
--

LOCK TABLES `hist_t_echeancier` WRITE;
/*!40000 ALTER TABLE `hist_t_echeancier` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_t_echeancier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_t_frais`
--

DROP TABLE IF EXISTS `hist_t_frais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_t_frais` (
  `id_frais` bigint(20) NOT NULL DEFAULT '0',
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_client` bigint(20) NOT NULL,
  `id_compte` smallint(6) NOT NULL,
  `id_doss` bigint(20) NOT NULL DEFAULT '0',
  `id_facture` bigint(20) NOT NULL,
  `id_type` int(1) NOT NULL DEFAULT '0',
  `id_poste` int(2) NOT NULL DEFAULT '0',
  `id_transaction` int(1) NOT NULL DEFAULT '0',
  `montant` float NOT NULL DEFAULT '0',
  `ref` varchar(140) NOT NULL,
  `ratio` decimal(5,2) NOT NULL DEFAULT '100.00',
  `grid_id` int(11) DEFAULT NULL,
  `date_value` date NOT NULL DEFAULT '0000-00-00',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `user_upd` varchar(50) NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tva` smallint(2) NOT NULL,
  `montantht` decimal(10,2) NOT NULL,
  `user_act` varchar(50) NOT NULL DEFAULT '',
  `date_act` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_t_frais`
--

LOCK TABLES `hist_t_frais` WRITE;
/*!40000 ALTER TABLE `hist_t_frais` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_t_frais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_t_timesheet`
--

DROP TABLE IF EXISTS `hist_t_timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_t_timesheet` (
  `id_ts` bigint(20) NOT NULL DEFAULT '0',
  `id_doss` bigint(20) NOT NULL DEFAULT '0',
  `id_gest` varchar(10) NOT NULL,
  `ts_type` smallint(2) NOT NULL DEFAULT '0',
  `couthoraire` int(4) unsigned DEFAULT '0',
  `date_action` date NOT NULL,
  `dh` char(2) NOT NULL DEFAULT '',
  `dm` char(2) NOT NULL DEFAULT '',
  `comment` varchar(50) NOT NULL DEFAULT '',
  `user_upd` varchar(50) NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL,
  `is_forfait` int(1) DEFAULT NULL,
  `forfait_ht` decimal(15,2) DEFAULT NULL,
  `user_act` varchar(10) NOT NULL DEFAULT '',
  `date_act` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_t_timesheet`
--

LOCK TABLES `hist_t_timesheet` WRITE;
/*!40000 ALTER TABLE `hist_t_timesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_t_timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_t_timesheet_type`
--

DROP TABLE IF EXISTS `hist_t_timesheet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_t_timesheet_type` (
  `id_ts` smallint(2) NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(50) NOT NULL DEFAULT '',
  `user_upd` varchar(10) NOT NULL,
  `date_upd` datetime NOT NULL,
  `archived` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_t_timesheet_type`
--

LOCK TABLES `hist_t_timesheet_type` WRITE;
/*!40000 ALTER TABLE `hist_t_timesheet_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_t_timesheet_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_compte`
--

DROP TABLE IF EXISTS `ref_compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_compte` (
  `id_compte` smallint(6) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `compte_num` varchar(50) CHARACTER SET latin1 NOT NULL,
  `compte_ref` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_upd` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date_upd` datetime NOT NULL,
  `is_countable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_archived` tinyint(4) NOT NULL DEFAULT '0',
  `account_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id_compte`),
  UNIQUE KEY `user_compte` (`vc_key`,`compte_num`),
  KEY `fk_t_ref_compte_t_account_type` (`account_type_id`),
  CONSTRAINT `fk_t_ref_compte_t_account_type` FOREIGN KEY (`account_type_id`) REFERENCES `t_account_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_compte`
--

LOCK TABLES `ref_compte` WRITE;
/*!40000 ALTER TABLE `ref_compte` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_compte_delegate`
--

DROP TABLE IF EXISTS `ref_compte_delegate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_compte_delegate` (
  `id_delegation` smallint(6) NOT NULL AUTO_INCREMENT,
  `id_compte` smallint(6) NOT NULL,
  `id_user_delegate` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_delegation`),
  UNIQUE KEY `id_compte` (`id_compte`,`id_user_delegate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_compte_delegate`
--

LOCK TABLES `ref_compte_delegate` WRITE;
/*!40000 ALTER TABLE `ref_compte_delegate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_compte_delegate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_poste`
--

DROP TABLE IF EXISTS `ref_poste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_poste` (
  `id_poste` int(2) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ref_poste` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_upd` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date_upd` datetime NOT NULL,
  `is_frais_procedure` tinyint(4) NOT NULL DEFAULT '0',
  `is_honoraires` tinyint(4) NOT NULL DEFAULT '0',
  `is_frais_collaboration` tinyint(4) NOT NULL DEFAULT '0',
  `is_facturable` tinyint(4) NOT NULL DEFAULT '0',
  `is_archived` int(1) NOT NULL DEFAULT '0',
  `mapping_migration` text,
  PRIMARY KEY (`id_poste`),
  KEY `id_user` (`vc_key`)
) ENGINE=InnoDB AUTO_INCREMENT=5546 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_poste`
--

LOCK TABLES `ref_poste` WRITE;
/*!40000 ALTER TABLE `ref_poste` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_poste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_transaction`
--

DROP TABLE IF EXISTS `ref_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_transaction` (
  `id_transaction` int(1) NOT NULL DEFAULT '0',
  `ref_transaction` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_transaction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_transaction`
--

LOCK TABLES `ref_transaction` WRITE;
/*!40000 ALTER TABLE `ref_transaction` DISABLE KEYS */;
INSERT INTO `ref_transaction` VALUES (1,'Virement'),(2,'Carte de crédit'),(3,'Espèce'),(4,'Bancontact'),(5,'Chèque'),(6,'NA');
/*!40000 ALTER TABLE `ref_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_account_type`
--

DROP TABLE IF EXISTS `t_account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account_type` (
  `id` int(11) NOT NULL,
  `description` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_account_type`
--

LOCK TABLES `t_account_type` WRITE;
/*!40000 ALTER TABLE `t_account_type` DISABLE KEYS */;
INSERT INTO `t_account_type` VALUES (1,'Compte professionnel'),(2,'Compte tiers / CARPA'),(3,'Espèces');
/*!40000 ALTER TABLE `t_account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_calendar`
--

DROP TABLE IF EXISTS `t_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_calendar` (
  `ID_CALENDAR` int(11) NOT NULL AUTO_INCREMENT,
  `EVENT_DESCRIPTION` varchar(120) NOT NULL,
  `VALID_FROM` datetime NOT NULL,
  `VALID_TO` datetime NOT NULL,
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPD_DATE` datetime DEFAULT NULL,
  `UPD_USER` varchar(45) DEFAULT NULL,
  `IS_SENT` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_CALENDAR`),
  UNIQUE KEY `ID_EVENT_UNIQUE` (`ID_CALENDAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_calendar`
--

LOCK TABLES `t_calendar` WRITE;
/*!40000 ALTER TABLE `t_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_calendar_doss_subscribers`
--

DROP TABLE IF EXISTS `t_calendar_doss_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_calendar_doss_subscribers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOSSIER_ID` int(11) DEFAULT NULL,
  `USER_ID` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `CRE_USER` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `id_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_calendar_doss_subscribers`
--

LOCK TABLES `t_calendar_doss_subscribers` WRITE;
/*!40000 ALTER TABLE `t_calendar_doss_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_calendar_doss_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_calendar_dossiers`
--

DROP TABLE IF EXISTS `t_calendar_dossiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_calendar_dossiers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CALENDAR_ID` int(11) NOT NULL,
  `DOSSIER_ID` int(11) DEFAULT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `CRE_USER` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_calendar_dossiers`
--

LOCK TABLES `t_calendar_dossiers` WRITE;
/*!40000 ALTER TABLE `t_calendar_dossiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_calendar_dossiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_calendar_event`
--

DROP TABLE IF EXISTS `t_calendar_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_calendar_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dossier_id` bigint(20) DEFAULT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `vc_key` varchar(50) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `note` varchar(20000) DEFAULT NULL,
  `type` varchar(6) NOT NULL,
  `approved` int(11) DEFAULT '0',
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `path_file` varchar(50) DEFAULT NULL,
  `micro_text` mediumtext,
  `audio_text` mediumtext,
  `speech_to_text_activated` tinyint(1) NOT NULL DEFAULT '0',
  `room_name` varchar(20) DEFAULT NULL,
  `cre_user` varchar(45) NOT NULL,
  `cre_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `upd_user` varchar(45) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_calendar_event`
--

LOCK TABLES `t_calendar_event` WRITE;
/*!40000 ALTER TABLE `t_calendar_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_calendar_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_calendar_participants`
--

DROP TABLE IF EXISTS `t_calendar_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_calendar_participants` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CALENDAR_ID` bigint(20) NOT NULL,
  `USER_EMAIL` varchar(50) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `CRE_USER` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_CAL_US_UNIQUE` (`CALENDAR_ID`,`USER_EMAIL`),
  CONSTRAINT `t_calendar_participants_ibfk_1` FOREIGN KEY (`CALENDAR_ID`) REFERENCES `t_calendar_event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_calendar_participants`
--

LOCK TABLES `t_calendar_participants` WRITE;
/*!40000 ALTER TABLE `t_calendar_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_calendar_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_calendar_vc_subscribers`
--

DROP TABLE IF EXISTS `t_calendar_vc_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_calendar_vc_subscribers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VC_KEY` varchar(50) NOT NULL,
  `USER_ID` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `CRE_USER` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `id_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_calendar_vc_subscribers`
--

LOCK TABLES `t_calendar_vc_subscribers` WRITE;
/*!40000 ALTER TABLE `t_calendar_vc_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_calendar_vc_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_calendar_virtuel_cab`
--

DROP TABLE IF EXISTS `t_calendar_virtuel_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_calendar_virtuel_cab` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CALENDAR_ID` int(11) NOT NULL,
  `VC_KEY` varchar(50) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `CRE_USER` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_calendar_virtuel_cab`
--

LOCK TABLES `t_calendar_virtuel_cab` WRITE;
/*!40000 ALTER TABLE `t_calendar_virtuel_cab` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_calendar_virtuel_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_clients`
--

DROP TABLE IF EXISTS `t_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_clients` (
  `id_client` bigint(20) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) DEFAULT NULL,
  `id_lg` varchar(2) CHARACTER SET latin1 NOT NULL,
  `id_title` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'F',
  `f_nom` varchar(200) DEFAULT NULL,
  `f_prenom` varchar(200) DEFAULT NULL,
  `f_rue` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_num` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_ville` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_cp` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_tel` text,
  `f_gsm` text,
  `f_fax` text,
  `f_email` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `f_nn` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_noe` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_tva` text,
  `user_upd` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_type` smallint(6) NOT NULL DEFAULT '1',
  `f_company` varchar(200) DEFAULT NULL,
  `id_country_alpha3` varchar(3) NOT NULL DEFAULT 'BEL',
  `user_id` bigint(20) DEFAULT NULL,
  `iban` varchar(34) DEFAULT NULL,
  `bic` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_client`),
  KEY `f_nom` (`f_nom`),
  KEY `f_ville` (`f_ville`),
  KEY `f_prenom` (`f_prenom`),
  KEY `f_company` (`f_company`)
) ENGINE=InnoDB AUTO_INCREMENT=16212 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_clients`
--

LOCK TABLES `t_clients` WRITE;
/*!40000 ALTER TABLE `t_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_clients_type`
--

DROP TABLE IF EXISTS `t_clients_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_clients_type` (
  `id_ct` varchar(2) NOT NULL DEFAULT '',
  `ref_ct` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_clients_type`
--

LOCK TABLES `t_clients_type` WRITE;
/*!40000 ALTER TABLE `t_clients_type` DISABLE KEYS */;
INSERT INTO `t_clients_type` VALUES ('CC','Client cabinet'),('ND','Non défini'),('PA','Partie adverse');
/*!40000 ALTER TABLE `t_clients_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cloud_files`
--

DROP TABLE IF EXISTS `t_cloud_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cloud_files` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user_created` bigint(20) NOT NULL,
  `id_doss` bigint(20) NOT NULL,
  `filename` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `creation_date` datetime NOT NULL,
  `downloaded_date` datetime NOT NULL,
  `downloaded_ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cloud_files`
--

LOCK TABLES `t_cloud_files` WRITE;
/*!40000 ALTER TABLE `t_cloud_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cloud_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_countries`
--

DROP TABLE IF EXISTS `t_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(3) NOT NULL,
  `alpha2` varchar(2) NOT NULL,
  `alpha3` varchar(3) NOT NULL,
  `nom_en_gb` varchar(45) NOT NULL,
  `nom_fr_fr` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alpha2` (`alpha2`),
  UNIQUE KEY `alpha3` (`alpha3`),
  UNIQUE KEY `code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_countries`
--

LOCK TABLES `t_countries` WRITE;
/*!40000 ALTER TABLE `t_countries` DISABLE KEYS */;
INSERT INTO `t_countries` VALUES (1,4,'AF','AFG','Afghanistan','Afghanistan'),(2,8,'AL','ALB','Albania','Albanie'),(3,10,'AQ','ATA','Antarctica','Antarctique'),(4,12,'DZ','DZA','Algeria','Algérie'),(5,16,'AS','ASM','American Samoa','Samoa Américaines'),(6,20,'AD','AND','Andorra','Andorre'),(7,24,'AO','AGO','Angola','Angola'),(8,28,'AG','ATG','Antigua and Barbuda','Antigua-et-Barbuda'),(9,31,'AZ','AZE','Azerbaijan','Azerbaïdjan'),(10,32,'AR','ARG','Argentina','Argentine'),(11,36,'AU','AUS','Australia','Australie'),(12,40,'AT','AUT','Austria','Autriche'),(13,44,'BS','BHS','Bahamas','Bahamas'),(14,48,'BH','BHR','Bahrain','Bahreïn'),(15,50,'BD','BGD','Bangladesh','Bangladesh'),(16,51,'AM','ARM','Armenia','Arménie'),(17,52,'BB','BRB','Barbados','Barbade'),(18,56,'BE','BEL','Belgium','Belgique'),(19,60,'BM','BMU','Bermuda','Bermudes'),(20,64,'BT','BTN','Bhutan','Bhoutan'),(21,68,'BO','BOL','Bolivia','Bolivie'),(22,70,'BA','BIH','Bosnia and Herzegovina','Bosnie-Herzégovine'),(23,72,'BW','BWA','Botswana','Botswana'),(24,74,'BV','BVT','Bouvet Island','Île Bouvet'),(25,76,'BR','BRA','Brazil','Brésil'),(26,84,'BZ','BLZ','Belize','Belize'),(27,86,'IO','IOT','British Indian Ocean Territory','Territoire Britannique de l\'Océan Indien'),(28,90,'SB','SLB','Solomon Islands','Îles Salomon'),(29,92,'VG','VGB','British Virgin Islands','Îles Vierges Britanniques'),(30,96,'BN','BRN','Brunei Darussalam','Brunéi Darussalam'),(31,100,'BG','BGR','Bulgaria','Bulgarie'),(32,104,'MM','MMR','Myanmar','Myanmar'),(33,108,'BI','BDI','Burundi','Burundi'),(34,112,'BY','BLR','Belarus','Bélarus'),(35,116,'KH','KHM','Cambodia','Cambodge'),(36,120,'CM','CMR','Cameroon','Cameroun'),(37,124,'CA','CAN','Canada','Canada'),(38,132,'CV','CPV','Cape Verde','Cap-vert'),(39,136,'KY','CYM','Cayman Islands','Îles Caïmanes'),(40,140,'CF','CAF','Central African','République Centrafricaine'),(41,144,'LK','LKA','Sri Lanka','Sri Lanka'),(42,148,'TD','TCD','Chad','Tchad'),(43,152,'CL','CHL','Chile','Chili'),(44,156,'CN','CHN','China','Chine'),(45,158,'TW','TWN','Taiwan','Taïwan'),(46,162,'CX','CXR','Christmas Island','Île Christmas'),(47,166,'CC','CCK','Cocos (Keeling) Islands','Îles Cocos (Keeling)'),(48,170,'CO','COL','Colombia','Colombie'),(49,174,'KM','COM','Comoros','Comores'),(50,175,'YT','MYT','Mayotte','Mayotte'),(51,178,'CG','COG','Republic of the Congo','République du Congo'),(52,180,'CD','COD','The Democratic Republic Of The Congo','République Démocratique du Congo'),(53,184,'CK','COK','Cook Islands','Îles Cook'),(54,188,'CR','CRI','Costa Rica','Costa Rica'),(55,191,'HR','HRV','Croatia','Croatie'),(56,192,'CU','CUB','Cuba','Cuba'),(57,196,'CY','CYP','Cyprus','Chypre'),(58,203,'CZ','CZE','Czech Republic','République Tchèque'),(59,204,'BJ','BEN','Benin','Bénin'),(60,208,'DK','DNK','Denmark','Danemark'),(61,212,'DM','DMA','Dominica','Dominique'),(62,214,'DO','DOM','Dominican Republic','République Dominicaine'),(63,218,'EC','ECU','Ecuador','Équateur'),(64,222,'SV','SLV','El Salvador','El Salvador'),(65,226,'GQ','GNQ','Equatorial Guinea','Guinée Équatoriale'),(66,231,'ET','ETH','Ethiopia','Éthiopie'),(67,232,'ER','ERI','Eritrea','Érythrée'),(68,233,'EE','EST','Estonia','Estonie'),(69,234,'FO','FRO','Faroe Islands','Îles Féroé'),(70,238,'FK','FLK','Falkland Islands','Îles (malvinas) Falkland'),(71,239,'GS','SGS','South Georgia and the South Sandwich Islands','Géorgie du Sud et les Îles Sandwich du Sud'),(72,242,'FJ','FJI','Fiji','Fidji'),(73,246,'FI','FIN','Finland','Finlande'),(74,248,'AX','ALA','Åland Islands','Îles Åland'),(75,250,'FR','FRA','France','France'),(76,254,'GF','GUF','French Guiana','Guyane Française'),(77,258,'PF','PYF','French Polynesia','Polynésie Française'),(78,260,'TF','ATF','French Southern Territories','Terres Australes Françaises'),(79,262,'DJ','DJI','Djibouti','Djibouti'),(80,266,'GA','GAB','Gabon','Gabon'),(81,268,'GE','GEO','Georgia','Géorgie'),(82,270,'GM','GMB','Gambia','Gambie'),(83,275,'PS','PSE','Occupied Palestinian Territory','Territoire Palestinien Occupé'),(84,276,'DE','DEU','Germany','Allemagne'),(85,288,'GH','GHA','Ghana','Ghana'),(86,292,'GI','GIB','Gibraltar','Gibraltar'),(87,296,'KI','KIR','Kiribati','Kiribati'),(88,300,'GR','GRC','Greece','Grèce'),(89,304,'GL','GRL','Greenland','Groenland'),(90,308,'GD','GRD','Grenada','Grenade'),(91,312,'GP','GLP','Guadeloupe','Guadeloupe'),(92,316,'GU','GUM','Guam','Guam'),(93,320,'GT','GTM','Guatemala','Guatemala'),(94,324,'GN','GIN','Guinea','Guinée'),(95,328,'GY','GUY','Guyana','Guyana'),(96,332,'HT','HTI','Haiti','Haïti'),(97,334,'HM','HMD','Heard Island and McDonald Islands','Îles Heard et Mcdonald'),(98,336,'VA','VAT','Vatican City State','Saint-Siège (état de la Cité du Vatican)'),(99,340,'HN','HND','Honduras','Honduras'),(100,344,'HK','HKG','Hong Kong','Hong-Kong'),(101,348,'HU','HUN','Hungary','Hongrie'),(102,352,'IS','ISL','Iceland','Islande'),(103,356,'IN','IND','India','Inde'),(104,360,'ID','IDN','Indonesia','Indonésie'),(105,364,'IR','IRN','Islamic Republic of Iran','République Islamique d\'Iran'),(106,368,'IQ','IRQ','Iraq','Iraq'),(107,372,'IE','IRL','Ireland','Irlande'),(108,376,'IL','ISR','Israel','Israël'),(109,380,'IT','ITA','Italy','Italie'),(110,384,'CI','CIV','Côte d\'Ivoire','Côte d\'Ivoire'),(111,388,'JM','JAM','Jamaica','Jamaïque'),(112,392,'JP','JPN','Japan','Japon'),(113,398,'KZ','KAZ','Kazakhstan','Kazakhstan'),(114,400,'JO','JOR','Jordan','Jordanie'),(115,404,'KE','KEN','Kenya','Kenya'),(116,408,'KP','PRK','Democratic People\'s Republic of Korea','République Populaire Démocratique de Corée'),(117,410,'KR','KOR','Republic of Korea','République de Corée'),(118,414,'KW','KWT','Kuwait','Koweït'),(119,417,'KG','KGZ','Kyrgyzstan','Kirghizistan'),(120,418,'LA','LAO','Lao People\'s Democratic Republic','République Démocratique Populaire Lao'),(121,422,'LB','LBN','Lebanon','Liban'),(122,426,'LS','LSO','Lesotho','Lesotho'),(123,428,'LV','LVA','Latvia','Lettonie'),(124,430,'LR','LBR','Liberia','Libéria'),(125,434,'LY','LBY','Libyan Arab Jamahiriya','Jamahiriya Arabe Libyenne'),(126,438,'LI','LIE','Liechtenstein','Liechtenstein'),(127,440,'LT','LTU','Lithuania','Lituanie'),(128,442,'LU','LUX','Luxembourg','Luxembourg'),(129,446,'MO','MAC','Macao','Macao'),(130,450,'MG','MDG','Madagascar','Madagascar'),(131,454,'MW','MWI','Malawi','Malawi'),(132,458,'MY','MYS','Malaysia','Malaisie'),(133,462,'MV','MDV','Maldives','Maldives'),(134,466,'ML','MLI','Mali','Mali'),(135,470,'MT','MLT','Malta','Malte'),(136,474,'MQ','MTQ','Martinique','Martinique'),(137,478,'MR','MRT','Mauritania','Mauritanie'),(138,480,'MU','MUS','Mauritius','Maurice'),(139,484,'MX','MEX','Mexico','Mexique'),(140,492,'MC','MCO','Monaco','Monaco'),(141,496,'MN','MNG','Mongolia','Mongolie'),(142,498,'MD','MDA','Republic of Moldova','République de Moldova'),(143,500,'MS','MSR','Montserrat','Montserrat'),(144,504,'MA','MAR','Morocco','Maroc'),(145,508,'MZ','MOZ','Mozambique','Mozambique'),(146,512,'OM','OMN','Oman','Oman'),(147,516,'NA','NAM','Namibia','Namibie'),(148,520,'NR','NRU','Nauru','Nauru'),(149,524,'NP','NPL','Nepal','Népal'),(150,528,'NL','NLD','Netherlands','Pays-Bas'),(151,530,'AN','ANT','Netherlands Antilles','Antilles Néerlandaises'),(152,533,'AW','ABW','Aruba','Aruba'),(153,540,'NC','NCL','New Caledonia','Nouvelle-Calédonie'),(154,548,'VU','VUT','Vanuatu','Vanuatu'),(155,554,'NZ','NZL','New Zealand','Nouvelle-Zélande'),(156,558,'NI','NIC','Nicaragua','Nicaragua'),(157,562,'NE','NER','Niger','Niger'),(158,566,'NG','NGA','Nigeria','Nigéria'),(159,570,'NU','NIU','Niue','Niué'),(160,574,'NF','NFK','Norfolk Island','Île Norfolk'),(161,578,'NO','NOR','Norway','Norvège'),(162,580,'MP','MNP','Northern Mariana Islands','Îles Mariannes du Nord'),(163,581,'UM','UMI','United States Minor Outlying Islands','Îles Mineures Éloignées des États-Unis'),(164,583,'FM','FSM','Federated States of Micronesia','États Fédérés de Micronésie'),(165,584,'MH','MHL','Marshall Islands','Îles Marshall'),(166,585,'PW','PLW','Palau','Palaos'),(167,586,'PK','PAK','Pakistan','Pakistan'),(168,591,'PA','PAN','Panama','Panama'),(169,598,'PG','PNG','Papua New Guinea','Papouasie-Nouvelle-Guinée'),(170,600,'PY','PRY','Paraguay','Paraguay'),(171,604,'PE','PER','Peru','Pérou'),(172,608,'PH','PHL','Philippines','Philippines'),(173,612,'PN','PCN','Pitcairn','Pitcairn'),(174,616,'PL','POL','Poland','Pologne'),(175,620,'PT','PRT','Portugal','Portugal'),(176,624,'GW','GNB','Guinea-Bissau','Guinée-Bissau'),(177,626,'TL','TLS','Timor-Leste','Timor-Leste'),(178,630,'PR','PRI','Puerto Rico','Porto Rico'),(179,634,'QA','QAT','Qatar','Qatar'),(180,638,'RE','REU','Réunion','Réunion'),(181,642,'RO','ROU','Romania','Roumanie'),(182,643,'RU','RUS','Russian Federation','Fédération de Russie'),(183,646,'RW','RWA','Rwanda','Rwanda'),(184,654,'SH','SHN','Saint Helena','Sainte-Hélène'),(185,659,'KN','KNA','Saint Kitts and Nevis','Saint-Kitts-et-Nevis'),(186,660,'AI','AIA','Anguilla','Anguilla'),(187,662,'LC','LCA','Saint Lucia','Sainte-Lucie'),(188,666,'PM','SPM','Saint-Pierre and Miquelon','Saint-Pierre-et-Miquelon'),(189,670,'VC','VCT','Saint Vincent and the Grenadines','Saint-Vincent-et-les Grenadines'),(190,674,'SM','SMR','San Marino','Saint-Marin'),(191,678,'ST','STP','Sao Tome and Principe','Sao Tomé-et-Principe'),(192,682,'SA','SAU','Saudi Arabia','Arabie Saoudite'),(193,686,'SN','SEN','Senegal','Sénégal'),(194,690,'SC','SYC','Seychelles','Seychelles'),(195,694,'SL','SLE','Sierra Leone','Sierra Leone'),(196,702,'SG','SGP','Singapore','Singapour'),(197,703,'SK','SVK','Slovakia','Slovaquie'),(198,704,'VN','VNM','Vietnam','Viet Nam'),(199,705,'SI','SVN','Slovenia','Slovénie'),(200,706,'SO','SOM','Somalia','Somalie'),(201,710,'ZA','ZAF','South Africa','Afrique du Sud'),(202,716,'ZW','ZWE','Zimbabwe','Zimbabwe'),(203,724,'ES','ESP','Spain','Espagne'),(204,732,'EH','ESH','Western Sahara','Sahara Occidental'),(205,736,'SD','SDN','Sudan','Soudan'),(206,740,'SR','SUR','Suriname','Suriname'),(207,744,'SJ','SJM','Svalbard and Jan Mayen','Svalbard etÎle Jan Mayen'),(208,748,'SZ','SWZ','Swaziland','Swaziland'),(209,752,'SE','SWE','Sweden','Suède'),(210,756,'CH','CHE','Switzerland','Suisse'),(211,760,'SY','SYR','Syrian Arab Republic','République Arabe Syrienne'),(212,762,'TJ','TJK','Tajikistan','Tadjikistan'),(213,764,'TH','THA','Thailand','Thaïlande'),(214,768,'TG','TGO','Togo','Togo'),(215,772,'TK','TKL','Tokelau','Tokelau'),(216,776,'TO','TON','Tonga','Tonga'),(217,780,'TT','TTO','Trinidad and Tobago','Trinité-et-Tobago'),(218,784,'AE','ARE','United Arab Emirates','Émirats Arabes Unis'),(219,788,'TN','TUN','Tunisia','Tunisie'),(220,792,'TR','TUR','Turkey','Turquie'),(221,795,'TM','TKM','Turkmenistan','Turkménistan'),(222,796,'TC','TCA','Turks and Caicos Islands','Îles Turks et Caïques'),(223,798,'TV','TUV','Tuvalu','Tuvalu'),(224,800,'UG','UGA','Uganda','Ouganda'),(225,804,'UA','UKR','Ukraine','Ukraine'),(226,807,'MK','MKD','The Former Yugoslav Republic of Macedonia','L\'ex-République Yougoslave de Macédoine'),(227,818,'EG','EGY','Egypt','Égypte'),(228,826,'GB','GBR','United Kingdom','Royaume-Uni'),(229,833,'IM','IMN','Isle of Man','Île de Man'),(230,834,'TZ','TZA','United Republic Of Tanzania','République-Unie de Tanzanie'),(231,840,'US','USA','United States','États-Unis'),(232,850,'VI','VIR','U.S. Virgin Islands','Îles Vierges des États-Unis'),(233,854,'BF','BFA','Burkina Faso','Burkina Faso'),(234,858,'UY','URY','Uruguay','Uruguay'),(235,860,'UZ','UZB','Uzbekistan','Ouzbékistan'),(236,862,'VE','VEN','Venezuela','Venezuela'),(237,876,'WF','WLF','Wallis and Futuna','Wallis et Futuna'),(238,882,'WS','WSM','Samoa','Samoa'),(239,887,'YE','YEM','Yemen','Yémen'),(240,891,'CS','SCG','Serbia and Montenegro','Serbie-et-Monténégro'),(241,894,'ZM','ZMB','Zambia','Zambie');
/*!40000 ALTER TABLE `t_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_debour`
--

DROP TABLE IF EXISTS `t_debour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_debour` (
  `id_debour` int(11) NOT NULL AUTO_INCREMENT,
  `id_doss` bigint(20) NOT NULL,
  `id_debour_type` smallint(6) NOT NULL,
  `unit` smallint(6) NOT NULL,
  `price_per_unit` double NOT NULL,
  `id_mesure_type` tinyint(4) NOT NULL,
  `comment` text,
  `date_action` date NOT NULL,
  `user_upd` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date_upd` datetime NOT NULL,
  `mapping_migration` text,
  PRIMARY KEY (`id_debour`)
) ENGINE=InnoDB AUTO_INCREMENT=8142 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_debour`
--

LOCK TABLES `t_debour` WRITE;
/*!40000 ALTER TABLE `t_debour` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_debour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_debour_type`
--

DROP TABLE IF EXISTS `t_debour_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_debour_type` (
  `id_debour_type` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_mesure_type` tinyint(4) NOT NULL,
  `price_per_unit` double NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user_upd` varchar(50) NOT NULL,
  `date_upd` datetime NOT NULL,
  `archived` tinyint(4) NOT NULL DEFAULT '0',
  `mapping_migration` text,
  PRIMARY KEY (`id_debour_type`),
  KEY `id_user` (`vc_key`)
) ENGINE=InnoDB AUTO_INCREMENT=1276 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_debour_type`
--

LOCK TABLES `t_debour_type` WRITE;
/*!40000 ALTER TABLE `t_debour_type` DISABLE KEYS */;
INSERT INTO `t_debour_type` VALUES (8,2,0.58,'trainer','Frais de déplacement','trainer','2012-10-07 14:54:00',0,NULL),(9,1,0.2,'trainer','Photocopie(s)','trainer','2012-10-07 14:56:25',0,NULL),(53,2,0.7,'FINAUXA','Frais de déplacement hors Bruxelles','avogest','2016-06-21 09:52:00',0,NULL),(54,1,0.2,'FINAUXA','Photocopie(s)','avogest','2016-06-21 09:52:00',0,NULL),(55,3,50,'FINAUXA','Ouverture et archivage dossier','avogest','2016-06-21 09:52:00',0,NULL),(56,1,10,'FINAUXA','Page dactylographiée','avogest','2016-06-21 09:52:00',0,NULL),(57,1,10,'FINAUXA','Lettre dactylographiée','avogest','2016-06-21 09:52:00',0,NULL),(58,3,15,'FINAUXA','déplacement dans Bxl','avogest','2016-06-21 09:52:00',0,NULL),(59,1,8,'FINAUXA','courriels','avogest','2016-06-21 09:52:00',0,NULL),(60,1,25,'FINAUXA','courrier recommandé','#avousr48','2021-11-24 13:00:57',1,NULL),(85,2,0.7,'TESTERINO','Frais de déplacement hors Bruxelles','avogest','2016-09-23 11:27:47',0,NULL),(86,1,0.2,'TESTERINO','Photocopie(s)','avogest','2016-09-23 11:27:47',0,NULL),(87,3,50,'TESTERINO','Ouverture et archivage dossier','avogest','2016-09-23 11:27:47',0,NULL),(88,1,10,'TESTERINO','Page dactylographiée','avogest','2016-09-23 11:27:47',0,NULL),(89,1,10,'TESTERINO','Lettre dactylographiée','avogest','2016-09-23 11:27:47',0,NULL),(90,3,15,'TESTERINO','déplacement dans Bxl','avogest','2016-09-23 11:27:47',0,NULL),(91,1,8,'TESTERINO','courriels','avogest','2016-09-23 11:27:47',0,NULL),(92,1,25,'TESTERINO','courrier recommandé','avogest','2016-09-23 11:27:47',0,NULL),(109,2,0.7,'TESTTIME','Frais de déplacement hors Bruxelles','avogest','2016-10-05 11:35:04',0,NULL),(110,1,0.2,'TESTTIME','Photocopie(s)','avogest','2016-10-05 11:35:04',0,NULL),(111,3,50,'TESTTIME','Ouverture et archivage dossier','avogest','2016-10-05 11:35:04',0,NULL),(112,1,10,'TESTTIME','Page dactylographiée','avogest','2016-10-05 11:35:04',0,NULL),(113,1,10,'TESTTIME','Lettre dactylographiée','avogest','2016-10-05 11:35:04',0,NULL),(114,3,15,'TESTTIME','déplacement dans Bxl','avogest','2016-10-05 11:35:04',0,NULL),(115,1,8,'TESTTIME','courriels','avogest','2016-10-05 11:35:04',0,NULL),(116,1,25,'TESTTIME','courrier recommandé','avogest','2016-10-05 11:35:04',0,NULL),(125,2,0.7,'TESTFAX','Frais de déplacement hors Bruxelles','avogest','2016-10-07 10:39:50',0,NULL),(126,1,0.2,'TESTFAX','Photocopie(s)','avogest','2016-10-07 10:39:50',0,NULL),(127,3,50,'TESTFAX','Ouverture et archivage dossier','avogest','2016-10-07 10:39:50',0,NULL),(128,1,10,'TESTFAX','Page dactylographiée','avogest','2016-10-07 10:39:50',0,NULL),(129,1,10,'TESTFAX','Lettre dactylographiée','avogest','2016-10-07 10:39:50',0,NULL),(130,3,15,'TESTFAX','déplacement dans Bxl','avogest','2016-10-07 10:39:50',0,NULL),(131,1,8,'TESTFAX','courriels','avogest','2016-10-07 10:39:50',0,NULL),(132,1,25,'TESTFAX','courrier recommandé','avogest','2016-10-07 10:39:50',0,NULL),(252,2,0.7,'TESTTEMPLATEAVO','Frais de déplacement hors Bruxelles','avogest','2016-11-14 11:38:40',0,NULL),(253,1,0.2,'TESTTEMPLATEAVO','Photocopie(s)','avogest','2016-11-14 11:38:40',0,NULL),(254,3,50,'TESTTEMPLATEAVO','Ouverture et archivage dossier','avogest','2016-11-14 11:38:40',0,NULL),(255,1,10,'TESTTEMPLATEAVO','Page dactylographiée','avogest','2016-11-14 11:38:40',0,NULL),(256,1,10,'TESTTEMPLATEAVO','Lettre dactylographiée','avogest','2016-11-14 11:38:40',0,NULL),(257,3,15,'TESTTEMPLATEAVO','déplacement dans Bxl','avogest','2016-11-14 11:38:40',0,NULL),(258,1,8,'TESTTEMPLATEAVO','courriels','avogest','2016-11-14 11:38:40',0,NULL),(259,1,25,'TESTTEMPLATEAVO','courrier recommandé','avogest','2016-11-14 11:38:40',0,NULL),(268,2,0.7,'TESTEUR','Frais de déplacement hors Bruxelles','avogest','2016-11-30 16:03:54',0,NULL),(269,1,0.2,'TESTEUR','Photocopie(s)','avogest','2016-11-30 16:03:54',0,NULL),(270,3,50,'TESTEUR','Ouverture et archivage dossier','avogest','2016-11-30 16:03:54',0,NULL),(271,1,10,'TESTEUR','Page dactylographiée','avogest','2016-11-30 16:03:54',0,NULL),(272,1,10,'TESTEUR','Lettre dactylographiée','avogest','2016-11-30 16:03:54',0,NULL),(273,3,15,'TESTEUR','déplacement dans Bxl','avogest','2016-11-30 16:03:54',0,NULL),(274,1,8,'TESTEUR','courriels','avogest','2016-11-30 16:03:54',0,NULL),(275,1,25,'TESTEUR','courrier recommandé','avogest','2016-11-30 16:03:54',0,NULL),(330,2,0.7,'AVOTEST','Frais de déplacement hors Bruxelles','avogest','2017-06-19 21:09:37',0,NULL),(331,1,0.2,'AVOTEST','Photocopie(s)','avogest','2017-06-19 21:09:37',0,NULL),(332,3,50,'AVOTEST','Ouverture et archivage dossier','avogest','2017-06-19 21:09:37',0,NULL),(333,1,10,'AVOTEST','Page dactylographiée','avogest','2017-06-19 21:09:37',0,NULL),(334,1,10,'AVOTEST','Lettre dactylographiée','avogest','2017-06-19 21:09:37',0,NULL),(335,3,15,'AVOTEST','déplacement dans Bxl','avogest','2017-06-19 21:09:37',0,NULL),(336,1,8,'AVOTEST','courriels','avogest','2017-06-19 21:09:37',0,NULL),(337,1,25,'AVOTEST','courrier recommandé','avogest','2017-06-19 21:09:37',0,NULL),(354,2,0.7,'TESTTEST','Frais de déplacement hors Bruxelles','avogest','2017-08-25 17:25:25',0,NULL),(355,1,0.2,'TESTTEST','Photocopie(s)','avogest','2017-08-25 17:25:25',0,NULL),(356,3,50,'TESTTEST','Ouverture et archivage dossier','avogest','2017-08-25 17:25:25',0,NULL),(357,1,10,'TESTTEST','Page dactylographiée','avogest','2017-08-25 17:25:25',0,NULL),(358,1,10,'TESTTEST','Lettre dactylographiée','avogest','2017-08-25 17:25:25',0,NULL),(359,3,15,'TESTTEST','déplacement dans Bxl','avogest','2017-08-25 17:25:25',0,NULL),(360,1,8,'TESTTEST','courriels','avogest','2017-08-25 17:25:25',0,NULL),(361,1,25,'TESTTEST','courrier recommandé','avogest','2017-08-25 17:25:25',0,NULL),(362,2,0.7,'JFTESTEST','Frais de déplacement hors Bruxelles','avogest','2017-08-27 11:51:22',0,NULL),(363,1,0.2,'JFTESTEST','Photocopie(s)','avogest','2017-08-27 11:51:22',0,NULL),(364,3,50,'JFTESTEST','Ouverture et archivage dossier','avogest','2017-08-27 11:51:22',0,NULL),(365,1,10,'JFTESTEST','Page dactylographiée','avogest','2017-08-27 11:51:22',0,NULL),(366,1,10,'JFTESTEST','Lettre dactylographiée','avogest','2017-08-27 11:51:22',0,NULL),(367,3,15,'JFTESTEST','déplacement dans Bxl','avogest','2017-08-27 11:51:22',0,NULL),(368,1,8,'JFTESTEST','courriels','avogest','2017-08-27 11:51:22',0,NULL),(369,1,25,'JFTESTEST','courrier recommandé','avogest','2017-08-27 11:51:22',0,NULL),(370,2,0.7,'JFTESTTEST','Frais de déplacement hors Bruxelles','avogest','2017-08-27 11:56:42',0,NULL),(371,1,0.2,'JFTESTTEST','Photocopie(s)','avogest','2017-08-27 11:56:42',0,NULL),(372,3,50,'JFTESTTEST','Ouverture et archivage dossier','avogest','2017-08-27 11:56:42',0,NULL),(373,1,10,'JFTESTTEST','Page dactylographiée','avogest','2017-08-27 11:56:42',0,NULL),(374,1,10,'JFTESTTEST','Lettre dactylographiée','avogest','2017-08-27 11:56:42',0,NULL),(375,3,15,'JFTESTTEST','déplacement dans Bxl','avogest','2017-08-27 11:56:42',0,NULL),(376,1,8,'JFTESTTEST','courriels','avogest','2017-08-27 11:56:42',0,NULL),(377,1,25,'JFTESTTEST','courrier recommandé','avogest','2017-08-27 11:56:42',0,NULL),(507,2,0.7,'SEVERINE','Frais de déplacement hors Bruxelles','ulegalize','2018-03-04 15:27:29',0,NULL),(508,1,0.2,'SEVERINE','Photocopie(s)','ulegalize','2018-03-04 15:27:29',0,NULL),(509,3,50,'SEVERINE','Ouverture et archivage dossier','ulegalize','2018-03-04 15:27:29',0,NULL),(510,1,10,'SEVERINE','Page dactylographiée','ulegalize','2018-03-04 15:27:29',0,NULL),(511,1,10,'SEVERINE','Lettre dactylographiée','ulegalize','2018-03-04 15:27:29',0,NULL),(512,3,15,'SEVERINE','déplacement dans Bxl','ulegalize','2018-03-04 15:27:29',0,NULL),(513,1,8,'SEVERINE','courriels','ulegalize','2018-03-04 15:27:29',0,NULL),(514,1,25,'SEVERINE','courrier recommandé','ulegalize','2018-03-04 15:27:29',0,NULL),(611,2,0.7,'MOBILITY','Frais de déplacement hors Bruxelles','ulegalize','2019-03-03 18:50:35',0,NULL),(612,1,0.2,'MOBILITY','Photocopie(s)','ulegalize','2019-03-03 18:50:35',0,NULL),(613,3,50,'MOBILITY','Ouverture et archivage dossier','ulegalize','2019-03-03 18:50:35',0,NULL),(614,1,10,'MOBILITY','Page dactylographiée','ulegalize','2019-03-03 18:50:35',0,NULL),(615,1,10,'MOBILITY','Lettre dactylographiée','ulegalize','2019-03-03 18:50:35',0,NULL),(616,3,15,'MOBILITY','déplacement dans Bxl','ulegalize','2019-03-03 18:50:35',0,NULL),(617,1,8,'MOBILITY','courriels','ulegalize','2019-03-03 18:50:35',0,NULL),(618,1,25,'MOBILITY','courrier recommandé','ulegalize','2019-03-03 18:50:35',0,NULL),(854,2,0.7,'SEDAEMS','Frais de déplacement hors Bruxelles','ulegalize','2020-03-25 14:07:33',0,NULL),(855,1,0.2,'SEDAEMS','Photocopie(s)','ulegalize','2020-03-25 14:07:33',0,NULL),(856,3,50,'SEDAEMS','Ouverture et archivage dossier','ulegalize','2020-03-25 14:07:33',0,NULL),(857,1,10,'SEDAEMS','Page dactylographiée','ulegalize','2020-03-25 14:07:33',0,NULL),(858,1,10,'SEDAEMS','Lettre dactylographiée','ulegalize','2020-03-25 14:07:33',0,NULL),(859,3,15,'SEDAEMS','déplacement dans Bxl','ulegalize','2020-03-25 14:07:33',0,NULL),(860,1,8,'SEDAEMS','courriels','ulegalize','2020-03-25 14:07:33',0,NULL),(861,1,25,'SEDAEMS','courrier recommandé','ulegalize','2020-03-25 14:07:33',0,NULL),(1040,2,0.7,'ODEKERKEN','Frais de déplacement hors Bruxelles','ulegalize','2021-01-08 13:29:52',0,NULL),(1041,1,0.2,'ODEKERKEN','Photocopie(s)','ulegalize','2021-01-08 13:29:52',0,NULL),(1042,3,50,'ODEKERKEN','Ouverture et archivage dossier','ulegalize','2021-01-08 13:29:52',0,NULL),(1043,1,10,'ODEKERKEN','Page dactylographiée','ulegalize','2021-01-08 13:29:52',0,NULL),(1044,1,10,'ODEKERKEN','Lettre dactylographiée','ulegalize','2021-01-08 13:29:52',0,NULL),(1045,3,15,'ODEKERKEN','déplacement dans Bxl','ulegalize','2021-01-08 13:29:52',0,NULL),(1046,1,8,'ODEKERKEN','courriels','ulegalize','2021-01-08 13:29:52',0,NULL),(1047,1,25,'ODEKERKEN','courrier recommandé','ulegalize','2021-01-08 13:29:52',0,NULL),(1274,3,35,'FINAUXA','Dossier Digital','#avousr48','2021-10-04 16:08:43',0,NULL),(1275,3,5,'FINAUXA','email Recommandé','#avousr48','2021-10-04 16:09:35',0,NULL);
/*!40000 ALTER TABLE `t_debour_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_delegate`
--

DROP TABLE IF EXISTS `t_delegate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_delegate` (
  `id_user` bigint(20) NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `order` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_user`,`vc_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_delegate`
--

LOCK TABLES `t_delegate` WRITE;
/*!40000 ALTER TABLE `t_delegate` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_delegate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dossier_contact`
--

DROP TABLE IF EXISTS `t_dossier_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dossier_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dossier_id` bigint(2) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `contact_type_id` int(2) NOT NULL,
  `cre_user` varchar(45) NOT NULL,
  `cre_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_user` varchar(45) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dossier_id` (`dossier_id`),
  KEY `client_id` (`client_id`),
  KEY `contact_type_id` (`contact_type_id`),
  CONSTRAINT `t_dossier_contact_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `t_dossiers` (`id_doss`),
  CONSTRAINT `t_dossier_contact_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `t_clients` (`id_client`),
  CONSTRAINT `t_dossier_contact_ibfk_3` FOREIGN KEY (`contact_type_id`) REFERENCES `t_dossier_contact_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dossier_contact`
--

LOCK TABLES `t_dossier_contact` WRITE;
/*!40000 ALTER TABLE `t_dossier_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_dossier_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dossier_contact_type`
--

DROP TABLE IF EXISTS `t_dossier_contact_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dossier_contact_type` (
  `id` int(2) NOT NULL,
  `label` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_DOSS_CON_UNIQUE` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dossier_contact_type`
--

LOCK TABLES `t_dossier_contact_type` WRITE;
/*!40000 ALTER TABLE `t_dossier_contact_type` DISABLE KEYS */;
INSERT INTO `t_dossier_contact_type` VALUES (1,'CLIENT'),(2,'OPPOSING'),(3,'PARTY');
/*!40000 ALTER TABLE `t_dossier_contact_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dossier_gestionnaires`
--

DROP TABLE IF EXISTS `t_dossier_gestionnaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dossier_gestionnaires` (
  `id_doss` bigint(20) unsigned NOT NULL,
  `id_user` varchar(50) NOT NULL,
  PRIMARY KEY (`id_doss`,`id_user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dossier_gestionnaires`
--

LOCK TABLES `t_dossier_gestionnaires` WRITE;
/*!40000 ALTER TABLE `t_dossier_gestionnaires` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_dossier_gestionnaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dossier_rights`
--

DROP TABLE IF EXISTS `t_dossier_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dossier_rights` (
  `DOSSIER_ID` bigint(20) NOT NULL,
  `VC_USER_ID` bigint(20) NOT NULL,
  `RIGHTS` varchar(10) NOT NULL,
  `VC_OWNER` int(1) NOT NULL DEFAULT '0' COMMENT '0: not in the same vc , 1: owner of vc, 2 not owner but same vc',
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPD_DATE` datetime DEFAULT NULL,
  `UPD_USER` varchar(45) DEFAULT NULL,
  `LAST_ACCESS_DATE` datetime NOT NULL,
  PRIMARY KEY (`DOSSIER_ID`,`VC_USER_ID`),
  KEY `VC_USER_ID` (`VC_USER_ID`),
  KEY `ind_doss_right` (`DOSSIER_ID`,`VC_USER_ID`,`VC_OWNER`),
  KEY `t_dossier_rights_VC_OWNER_index` (`VC_OWNER`),
  KEY `idx_dossierri_last_access_date` (`LAST_ACCESS_DATE`),
  CONSTRAINT `t_dossier_rights_ibfk_1` FOREIGN KEY (`VC_USER_ID`) REFERENCES `t_virtualcab_users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dossier_rights`
--

LOCK TABLES `t_dossier_rights` WRITE;
/*!40000 ALTER TABLE `t_dossier_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_dossier_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dossiers`
--

DROP TABLE IF EXISTS `t_dossiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dossiers` (
  `id_doss` bigint(20) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `year_doss` varchar(4) NOT NULL DEFAULT '',
  `num_doss` int(4) NOT NULL DEFAULT '0',
  `doss_type` char(2) NOT NULL DEFAULT '',
  `client_cab` bigint(20) DEFAULT NULL,
  `client_adv` bigint(20) DEFAULT NULL,
  `date_open` date NOT NULL DEFAULT '0000-00-00',
  `date_close` date DEFAULT NULL,
  `id_matiere_rubrique` smallint(6) NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(200) NOT NULL,
  `memo` text NOT NULL,
  `success_fee_perc` tinyint(4) NOT NULL DEFAULT '0',
  `success_fee_montant` int(11) NOT NULL DEFAULT '0',
  `user_upd` varchar(10) NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `couthoraire` int(4) NOT NULL DEFAULT '0',
  `id_user_resp` bigint(20) NOT NULL,
  `opposing_counsel` bigint(20) DEFAULT NULL,
  `client_quality` varchar(200) DEFAULT NULL,
  `is_digital` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_doss`),
  UNIQUE KEY `uniq_doss` (`vc_key`,`year_doss`,`num_doss`),
  KEY `doss_type` (`doss_type`),
  KEY `client_cab` (`client_cab`),
  KEY `client_adv` (`client_adv`),
  KEY `year_doss` (`year_doss`),
  KEY `num_doss` (`num_doss`),
  KEY `id_user_resp` (`id_user_resp`),
  KEY `date_close` (`date_close`)
) ENGINE=InnoDB AUTO_INCREMENT=5669 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dossiers`
--

LOCK TABLES `t_dossiers` WRITE;
/*!40000 ALTER TABLE `t_dossiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_dossiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dossiers_type`
--

DROP TABLE IF EXISTS `t_dossiers_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dossiers_type` (
  `doss_type` char(2) NOT NULL DEFAULT '',
  `type_desc` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`doss_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dossiers_type`
--

LOCK TABLES `t_dossiers_type` WRITE;
/*!40000 ALTER TABLE `t_dossiers_type` DISABLE KEYS */;
INSERT INTO `t_dossiers_type` VALUES ('BA','BAJ'),('DC','Cabinet'),('DF','Droit collaboratif'),('MD','Mediation');
/*!40000 ALTER TABLE `t_dossiers_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_echeancier`
--

DROP TABLE IF EXISTS `t_echeancier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_echeancier` (
  `id_echeance` bigint(20) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_doss` bigint(20) NOT NULL DEFAULT '0',
  `date_rappel` date NOT NULL DEFAULT '0000-00-00',
  `hour_rappel` time NOT NULL DEFAULT '00:00:00',
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_upd` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_assignee` bigint(20) NOT NULL,
  `id_owner` bigint(20) NOT NULL DEFAULT '0',
  `mode` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = Public 1 = Private',
  PRIMARY KEY (`id_echeance`),
  KEY `id_doss` (`id_doss`),
  KEY `date_rappel` (`date_rappel`),
  KEY `ech_vc` (`vc_key`),
  KEY `IDX_ECH_ID_OWNER` (`id_owner`),
  KEY `IDX_ECH_ID_ASSIGNEE` (`id_assignee`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_echeancier`
--

LOCK TABLES `t_echeancier` WRITE;
/*!40000 ALTER TABLE `t_echeancier` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_echeancier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_facture_details`
--

DROP TABLE IF EXISTS `t_facture_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_facture_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_facture` int(11) NOT NULL,
  `description` text NOT NULL,
  `htva` decimal(20,2) NOT NULL,
  `tva` decimal(4,2) NOT NULL,
  `ttc` decimal(20,2) NOT NULL,
  `user_upd` varchar(50) NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_facture_details`
--

LOCK TABLES `t_facture_details` WRITE;
/*!40000 ALTER TABLE `t_facture_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_facture_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_facture_echeance`
--

DROP TABLE IF EXISTS `t_facture_echeance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_facture_echeance` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_facture_echeance`
--

LOCK TABLES `t_facture_echeance` WRITE;
/*!40000 ALTER TABLE `t_facture_echeance` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_facture_echeance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_facture_frais_admin`
--

DROP TABLE IF EXISTS `t_facture_frais_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_facture_frais_admin` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FACTURE_ID` bigint(20) NOT NULL,
  `DEBOURS_ID` int(11) NOT NULL,
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPD_DATE` datetime DEFAULT NULL,
  `UPD_USER` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_FAC_FRAIS_ADM_UNIQUE` (`FACTURE_ID`,`DEBOURS_ID`),
  KEY `DEBOURS_ID` (`DEBOURS_ID`),
  CONSTRAINT `t_facture_frais_admin_ibfk_1` FOREIGN KEY (`FACTURE_ID`) REFERENCES `t_factures` (`id_facture`),
  CONSTRAINT `t_facture_frais_admin_ibfk_2` FOREIGN KEY (`DEBOURS_ID`) REFERENCES `t_debour` (`id_debour`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_facture_frais_admin`
--

LOCK TABLES `t_facture_frais_admin` WRITE;
/*!40000 ALTER TABLE `t_facture_frais_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_facture_frais_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_facture_frais_collaboration`
--

DROP TABLE IF EXISTS `t_facture_frais_collaboration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_facture_frais_collaboration` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FACTURE_ID` bigint(20) NOT NULL,
  `FRAIS_ID` bigint(20) NOT NULL,
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPD_DATE` datetime DEFAULT NULL,
  `UPD_USER` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_FAC_COL_FRAIS_UNIQUE` (`FACTURE_ID`,`FRAIS_ID`),
  KEY `FRAIS_ID` (`FRAIS_ID`),
  CONSTRAINT `t_facture_frais_collaboration_ibfk_1` FOREIGN KEY (`FACTURE_ID`) REFERENCES `t_factures` (`id_facture`),
  CONSTRAINT `t_facture_frais_collaboration_ibfk_2` FOREIGN KEY (`FRAIS_ID`) REFERENCES `t_frais` (`id_frais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_facture_frais_collaboration`
--

LOCK TABLES `t_facture_frais_collaboration` WRITE;
/*!40000 ALTER TABLE `t_facture_frais_collaboration` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_facture_frais_collaboration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_facture_frais_debours`
--

DROP TABLE IF EXISTS `t_facture_frais_debours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_facture_frais_debours` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FACTURE_ID` bigint(20) NOT NULL,
  `FRAIS_ID` bigint(20) NOT NULL,
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPD_DATE` datetime DEFAULT NULL,
  `UPD_USER` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_FAC_DEB_FRAIS_UNIQUE` (`FACTURE_ID`,`FRAIS_ID`),
  KEY `FRAIS_ID` (`FRAIS_ID`),
  CONSTRAINT `t_facture_frais_debours_ibfk_1` FOREIGN KEY (`FACTURE_ID`) REFERENCES `t_factures` (`id_facture`),
  CONSTRAINT `t_facture_frais_debours_ibfk_2` FOREIGN KEY (`FRAIS_ID`) REFERENCES `t_frais` (`id_frais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_facture_frais_debours`
--

LOCK TABLES `t_facture_frais_debours` WRITE;
/*!40000 ALTER TABLE `t_facture_frais_debours` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_facture_frais_debours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_facture_statut`
--

DROP TABLE IF EXISTS `t_facture_statut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_facture_statut` (
  `id_facture_statut` tinyint(4) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id_facture_statut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_facture_statut`
--

LOCK TABLES `t_facture_statut` WRITE;
/*!40000 ALTER TABLE `t_facture_statut` DISABLE KEYS */;
INSERT INTO `t_facture_statut` VALUES (1,'Brouillon'),(2,'Finale');
/*!40000 ALTER TABLE `t_facture_statut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_facture_timesheet`
--

DROP TABLE IF EXISTS `t_facture_timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_facture_timesheet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FACTURE_ID` int(11) NOT NULL,
  `TS_ID` int(11) NOT NULL,
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPD_DATE` datetime DEFAULT NULL,
  `UPD_USER` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_FAC_TS_UNIQUE` (`FACTURE_ID`,`TS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_facture_timesheet`
--

LOCK TABLES `t_facture_timesheet` WRITE;
/*!40000 ALTER TABLE `t_facture_timesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_facture_timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_facture_type`
--

DROP TABLE IF EXISTS `t_facture_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_facture_type` (
  `id_facture_type` tinyint(4) NOT NULL,
  `description` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `acronyme` varchar(2) NOT NULL,
  PRIMARY KEY (`id_facture_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_facture_type`
--

LOCK TABLES `t_facture_type` WRITE;
/*!40000 ALTER TABLE `t_facture_type` DISABLE KEYS */;
INSERT INTO `t_facture_type` VALUES (1,'Facture vente','FV'),(2,'Note de crédit','NC'),(3,'Facture Temporaire','FT');
/*!40000 ALTER TABLE `t_facture_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_factures`
--

DROP TABLE IF EXISTS `t_factures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_factures` (
  `id_facture` bigint(20) NOT NULL AUTO_INCREMENT,
  `year_facture` smallint(6) NOT NULL,
  `num_facture` smallint(6) NOT NULL,
  `facture_ref` varchar(15) NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_tiers` bigint(20) NOT NULL,
  `id_doss` bigint(20) DEFAULT NULL,
  `id_facture_type` tinyint(4) NOT NULL,
  `id_poste` smallint(6) NOT NULL,
  `is_valid` tinyint(4) NOT NULL DEFAULT '0',
  `montant` decimal(20,2) NOT NULL DEFAULT '0.00',
  `ref` varchar(140) NOT NULL,
  `date_value` date NOT NULL DEFAULT '0000-00-00',
  `date_echeance` date NOT NULL DEFAULT '0000-00-00',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `user_upd` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_echeance` int(11) NOT NULL DEFAULT '3',
  `num_fact_temp` smallint(6) DEFAULT NULL,
  `second_tax` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id_facture`),
  UNIQUE KEY `idx_unique_fac` (`year_facture`,`num_facture`,`id_facture_type`,`vc_key`,`facture_ref`),
  KEY `date_value` (`date_value`),
  KEY `id_doss` (`id_doss`),
  KEY `id_user` (`vc_key`),
  KEY `montant` (`montant`),
  KEY `id_client` (`id_tiers`),
  KEY `id_facture_type` (`id_facture_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3654 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_factures`
--

LOCK TABLES `t_factures` WRITE;
/*!40000 ALTER TABLE `t_factures` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_factures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_first_time`
--

DROP TABLE IF EXISTS `t_first_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_first_time` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(45) NOT NULL,
  `ACTIVATED` int(11) NOT NULL,
  `COUNT_CLICK` int(11) NOT NULL DEFAULT '0',
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPD_DATE` datetime DEFAULT NULL,
  `UPD_USER` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_first_time`
--

LOCK TABLES `t_first_time` WRITE;
/*!40000 ALTER TABLE `t_first_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_first_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_frais`
--

DROP TABLE IF EXISTS `t_frais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_frais` (
  `id_frais` bigint(20) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_client` bigint(20) DEFAULT NULL,
  `id_compte` smallint(6) NOT NULL,
  `id_doss` bigint(20) DEFAULT NULL,
  `id_facture` bigint(20) DEFAULT NULL,
  `id_type` int(1) NOT NULL DEFAULT '1',
  `id_poste` int(2) NOT NULL DEFAULT '0',
  `id_transaction` int(1) NOT NULL DEFAULT '0',
  `montant` decimal(20,2) NOT NULL DEFAULT '0.00',
  `ref` varchar(140) NOT NULL,
  `ratio` decimal(5,2) NOT NULL DEFAULT '100.00',
  `grid_id` int(11) DEFAULT NULL,
  `date_value` date NOT NULL DEFAULT '0000-00-00',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `user_upd` varchar(50) NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tva` smallint(2) DEFAULT '0' COMMENT 'deprecated',
  `montantht` decimal(20,2) NOT NULL DEFAULT '0.00',
  `mapping_migration` text,
  PRIMARY KEY (`id_frais`),
  KEY `id_type` (`id_type`),
  KEY `id_poste` (`id_poste`),
  KEY `date_value` (`date_value`),
  KEY `id_doss` (`id_doss`),
  KEY `id_user` (`vc_key`),
  KEY `id_compte` (`id_compte`),
  KEY `montant` (`montant`),
  KEY `id_transaction` (`id_transaction`),
  KEY `id_client` (`id_client`),
  KEY `grid_id` (`grid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14386 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_frais`
--

LOCK TABLES `t_frais` WRITE;
/*!40000 ALTER TABLE `t_frais` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_frais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_grid`
--

DROP TABLE IF EXISTS `t_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_grid` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(256) NOT NULL,
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPD_DATE` datetime DEFAULT NULL,
  `UPD_USER` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_grid`
--

LOCK TABLES `t_grid` WRITE;
/*!40000 ALTER TABLE `t_grid` DISABLE KEYS */;
INSERT INTO `t_grid` VALUES (0,'opérations soumises à un régime particulier','fumanju','2018-04-27 07:35:20',NULL,NULL),(1,'opérations pour lesquelles la T.V.A. est due par le déclarant au taux de 6%','fumanju','2018-04-27 07:35:20',NULL,NULL),(2,'opérations pour lesquelles la T.V.A. est due par le déclarant au taux de 12%','fumanju','2018-04-27 07:35:20',NULL,NULL),(3,'opérations pour lesquelles la T.V.A. est due par le déclarant au taux de 21%','fumanju','2018-04-27 07:35:20',NULL,NULL),(44,'services pour lesquels la T.V.A. étrangère est due par le cocontractant','fumanju','2018-04-27 07:35:20',NULL,NULL),(45,'opérations pour lesquelles la T.V.A. est due par le cocontractant','fumanju','2018-04-27 07:35:20',NULL,NULL),(46,'livraisons intracommunautaires exemptées effectuées en Belgique et ventes ABC','fumanju','2018-04-27 07:35:20',NULL,NULL),(47,'autres opérations exemptées et autres opérations effectuées à l\'étranger','fumanju','2018-04-27 07:35:20',NULL,NULL),(48,'Montant des notes de crédit délivrées et des corrections négatives relatif aux opérations inscrites en grilles 44 et 46','fumanju','2018-04-27 07:35:20',NULL,NULL),(49,'Montant des notes de crédit délivrées et des corrections négatives relatif aux autres opérations du cadre II','fumanju','2018-04-27 07:35:20',NULL,NULL),(54,'T.V.A. relative aux opérations déclarées en grilles 01, 02 et 03','fumanju','2018-04-27 07:35:20',NULL,NULL),(55,'T.V.A. relative aux opérations déclarées en grilles 86 et 88','fumanju','2018-04-27 07:35:21',NULL,NULL),(56,'T.V.A. relative aux opérations déclarées en grille 87, à l\'exception des importations avec report de perception','fumanju','2018-04-27 07:35:21',NULL,NULL),(57,'T.V.A. relative aux importations avec report de perception','fumanju','2018-04-27 07:35:21',NULL,NULL),(59,'T.V.A. déductible','fumanju','2018-04-27 07:35:21',NULL,NULL),(61,'diverses régularisations T.V.A. en faveur de l\'Etat','fumanju','2018-04-27 07:35:21',NULL,NULL),(62,'diverses régularisations T.V.A. en faveur du déclarant','fumanju','2018-04-27 07:35:21',NULL,NULL),(63,'T.V.A. à reverser mentionnée sur les notes de crédit reçues','fumanju','2018-04-27 07:35:21',NULL,NULL),(64,'T.V.A. à récupérer mentionnée sur les notes de crédit délivrées','fumanju','2018-04-27 07:35:21',NULL,NULL),(71,'taxe due à l\'Etat','fumanju','2018-04-27 07:35:21',NULL,NULL),(72,'sommes dues par l\'Etat','fumanju','2018-04-27 07:35:21',NULL,NULL),(81,'Montant des opérations à l\'entrée compte tenu des notes de crédit reçues et autres corrections : marchandises, matières premières et matières auxiliaires','fumanju','2018-04-27 07:35:21',NULL,NULL),(82,'Montant des opérations à l\'entrée compte tenu des notes de crédit reçues et autres corrections :services et biens divers','fumanju','2018-04-27 07:35:21',NULL,NULL),(83,'Montant des opérations à l\'entrée compte tenu des notes de crédit reçues et autres corrections : biens d\'investissement','fumanju','2018-04-27 07:35:21',NULL,NULL),(84,'Montant des notes de crédit reçues et des corrections négatives relatif aux opérations inscrites en grilles 86 et 88','fumanju','2018-04-27 07:35:22',NULL,NULL),(85,'Montant des notes de crédit reçues et des corrections négatives : relatif aux autres opérations du cadre III','fumanju','2018-04-27 07:35:22',NULL,NULL),(86,'acquisitions intracommunautaires effectuées en Belgique et vente ABC','fumanju','2018-04-27 07:35:22',NULL,NULL),(87,'autres opérations à l\'entrée pour lesquelles la T.V.A. est due par le déclarant','fumanju','2018-04-27 07:35:22',NULL,NULL),(88,'services intracommunautaires avec report de perception','fumanju','2018-04-27 07:35:22',NULL,NULL),(91,'Concerne uniquement la déclaration mensuelle de décembre: T.V.A. réellement due pour la période du 1er au 20 décembre','fumanju','2018-04-27 07:35:55',NULL,NULL);
/*!40000 ALTER TABLE `t_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_jobs`
--

DROP TABLE IF EXISTS `t_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_jobs` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) COLLATE utf8_bin NOT NULL,
  `STATUS` tinyint(4) NOT NULL COMMENT '0= failed 1=success',
  `DATE_START` datetime NOT NULL,
  `DATE_END` datetime NOT NULL,
  `LOG` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_jobs`
--

LOCK TABLES `t_jobs` WRITE;
/*!40000 ALTER TABLE `t_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_langues`
--

DROP TABLE IF EXISTS `t_langues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_langues` (
  `id_lg` varchar(2) NOT NULL,
  `lg_desc` varchar(50) NOT NULL,
  PRIMARY KEY (`id_lg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_langues`
--

LOCK TABLES `t_langues` WRITE;
/*!40000 ALTER TABLE `t_langues` DISABLE KEYS */;
INSERT INTO `t_langues` VALUES ('aa','afar'),('ab','abkhase'),('af','africaans'),('am','amharique'),('ar','arabe'),('as','assamais'),('ay','aymara'),('az','azéri'),('ba','bachkir'),('be','biélorusse'),('bg','bulgare'),('bh','bihari'),('bi','bêche-de-mer'),('bn','bengali'),('bo','tibétain'),('br','breton'),('ca','catalan'),('cs','tchèque'),('cy','gallois'),('da','danois'),('de','allemand'),('dz','boutani'),('el','grec'),('en','anglais'),('eo','espéranto'),('es','espagnol'),('et','estonien'),('eu','basque'),('fa','persan'),('fi','finnois'),('fj','fidjien'),('fo','féroien'),('fr','français'),('fy','frison'),('ga','irlandais'),('gd','gaélique'),('gl','galicien'),('gn','garani'),('gu','goudjarati'),('ha','haoussa'),('hi','hindi'),('hr','croate'),('hu','hongrois '),('hy','arménien'),('ia','interlingua'),('ie','interlingue'),('ik','inupiak'),('in','indonésien'),('is','islandais'),('it','italien'),('iw','hébreu'),('ja','japonais'),('ji','yidich'),('jw','javanais'),('ka','géorgien'),('kk','kazakh'),('kl','groenlandais'),('km','cambodgien'),('kn','kannada'),('ko','coréen'),('ks','cachemiri'),('ku','kurde'),('ky','kirghiz'),('la','latin'),('ln','lingala'),('lo','lao'),('lt','lithuanien'),('lv','letton'),('mg','malgache'),('mi','maori'),('mk','macédonien'),('ml','malayalam'),('mn','mongol'),('mo','moldave'),('mr','marathe'),('ms','malais'),('mt','maltais'),('my','birman'),('na','nauri'),('ne','népalais'),('nl','néerlandais'),('no','norvégien'),('oc','occitan'),('om','oromo'),('or','oriya'),('pa','pendjabi'),('pl','polonais'),('ps','pachto'),('pt','potugais'),('qu','quechua'),('rm','rhééto-roman'),('rn','roundi'),('ro','roumain'),('ru','russe'),('rw','rouanda'),('sa','sanscrit'),('sd','sindhi'),('sg','sango'),('sh','serbo-croate'),('si','cingalais'),('sk','slovaque'),('sl','slovène'),('sm','samoan'),('sn','chona'),('so','somali'),('sq','albanais'),('sr','serbe'),('ss','siswati'),('st','sotho du Sud'),('su','soudanais'),('sv','suédois'),('sw','souahéli'),('ta','tamoul'),('te','télougou'),('tg','tadjik'),('th','thai'),('ti','tigrigna'),('tk','turkmène'),('tl','tagal'),('tn','setchwana'),('to','kitonga'),('tr','turc'),('ts','tsonga'),('tt','tatar'),('tw','tchi'),('uk','ukrainien'),('ur','ourdou'),('uz','ouzbek'),('vi','vietnamien'),('vo','volapuk'),('wo','ouolof'),('xh','xhosa'),('yo','yorouba'),('zh','chinois'),('zu','zoulou');
/*!40000 ALTER TABLE `t_langues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_matiere_rubriques`
--

DROP TABLE IF EXISTS `t_matiere_rubriques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_matiere_rubriques` (
  `id_matiere_rubrique` smallint(6) NOT NULL AUTO_INCREMENT,
  `id_matiere` smallint(6) NOT NULL,
  `matiere_rubrique_desc` varchar(75) NOT NULL,
  PRIMARY KEY (`id_matiere_rubrique`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_matiere_rubriques`
--

LOCK TABLES `t_matiere_rubriques` WRITE;
/*!40000 ALTER TABLE `t_matiere_rubriques` DISABLE KEYS */;
INSERT INTO `t_matiere_rubriques` VALUES (1,1,'Droit de la famille (mariage, divorce, filiation, adoption)'),(2,1,'Droit patrimonial de la famille (régimes matrimoniaux, donation, succession'),(3,1,'Protection des mineurs - droit de le jeunesse'),(4,1,'Droit de l enfant'),(5,1,'Protection de la personne et des biens des malades mentaux'),(6,1,'Administration provisoire'),(7,1,'Protection de la vie privée'),(8,2,'Propriété, copropriété, servitudes et autres droits réels immobiliers'),(9,2,'Privilèges et hypothèques'),(10,2,'Expropriation'),(11,2,'Baux à loyer et baux commerciaux'),(12,2,'Baux à ferme et droit rural'),(13,3,'Responsabilité'),(14,3,'Assurances'),(15,3,'Réparation du dommage'),(16,5,'Droit des saisies'),(17,5,'Arbitrage national et international'),(18,5,'Réglement collectif de dettes (y compris médiation de dettes)'),(19,6,'Droit des sociétés'),(20,6,'Entreprises en difficulté, liquidations, faillites et concordats'),(21,6,'Asbl'),(22,7,'Contrats commerciaux et distribution commerciale (agence, concession de ven'),(23,7,'Droit de la concurrence, pratiques du commerce, droit de la consom., respon'),(24,7,'Droit bancaire et du crédit'),(25,8,'Transports terrestres'),(26,8,'Transports fluviaux'),(27,8,'Transports aériens'),(28,8,'Droit maritime'),(29,9,'Droits d\'auteur, propriété littéraire et artistique'),(30,9,'Brevets, marques, modèles'),(31,10,'Droit du travail'),(32,10,'Droit de la sécurité sociale'),(33,11,'Impôts directs (des personnes physiques, des sociétés et des personnes mora'),(34,11,'Impôts indirects (T.V.A., droit d\'enregistrement, droit de succession, doua'),(35,12,'Droit pénal général'),(36,12,'Droit pénal des affaires'),(37,13,'Droit constitutionnel'),(38,13,'Administratif'),(39,13,'Droit de l urbanisme et de l environnement'),(40,13,'Droit des marchés publics'),(41,13,'Droit des agents de l\'Etat, des parastataux et de l\'enseignement'),(42,13,'Droit des étrangers'),(43,15,'Droit international privé'),(44,15,'Droit international public'),(45,16,'Droit de la concurrence'),(46,16,'Libre circulation des marchandises et autres libertés'),(47,16,'Fonction publique européenne'),(48,17,'Droit de l informatique'),(49,17,'Droit des communications électroniques'),(50,18,'Médiation familiale'),(51,18,'Médiation en matière sociale'),(52,18,'Médiation civile et commerciale'),(53,18,'Médiation pénale (voir droit pénal)'),(54,18,'Médiation de dettes (voir droit judiciaire)'),(55,19,'Droit de la responsabilité médicale'),(56,19,'Droit hospitalier'),(57,19,'Droit pharmaceutique'),(58,20,''),(59,21,''),(60,14,''),(61,22,'');
/*!40000 ALTER TABLE `t_matiere_rubriques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_matieres`
--

DROP TABLE IF EXISTS `t_matieres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_matieres` (
  `id_matiere` smallint(6) NOT NULL,
  `matiere_desc` varchar(75) NOT NULL,
  PRIMARY KEY (`id_matiere`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_matieres`
--

LOCK TABLES `t_matieres` WRITE;
/*!40000 ALTER TABLE `t_matieres` DISABLE KEYS */;
INSERT INTO `t_matieres` VALUES (1,'Droit de la famille et des personnes'),(2,'Droit des biens'),(3,'Responsabilité civile, assurances, circulation routière'),(4,'Droit de la construction'),(5,'Droit judiciaire'),(6,'Sociétés'),(7,'Droit commercial'),(8,'Droit des transports (terrestres, fluviaux et aériens) et droits maritimes'),(9,'Droits intellectuels (droits d auteurs, brevets, marques, modèles)'),(10,'Droit social'),(11,'Droit fiscal'),(12,'Droit pénal'),(13,'Droit public'),(14,'Droit humanitaire'),(15,'Droit international'),(16,'Droit européen'),(17,'Droit des technologies de l\'information et de la communication'),(18,'Médiation'),(19,'Droit médical'),(20,'Droit des médias'),(21,'Droit du sport'),(22,'A spécifier');
/*!40000 ALTER TABLE `t_matieres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_message_user`
--

DROP TABLE IF EXISTS `t_message_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_message_user` (
  `user_id` varchar(45) NOT NULL,
  `IS_VALID` varchar(50) NOT NULL,
  `DATE_TO` date NOT NULL,
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message_user`
--

LOCK TABLES `t_message_user` WRITE;
/*!40000 ALTER TABLE `t_message_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_message_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mesure_type`
--

DROP TABLE IF EXISTS `t_mesure_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mesure_type` (
  `id_mesure_type` tinyint(4) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mesure_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mesure_type`
--

LOCK TABLES `t_mesure_type` WRITE;
/*!40000 ALTER TABLE `t_mesure_type` DISABLE KEYS */;
INSERT INTO `t_mesure_type` VALUES (1,'Page'),(2,'Km'),(3,'Forfait');
/*!40000 ALTER TABLE `t_mesure_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_notecredit`
--

DROP TABLE IF EXISTS `t_notecredit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_notecredit` (
  `id_notecredit` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_facture` bigint(20) NOT NULL,
  `year_nc` smallint(6) NOT NULL,
  `num_nc` smallint(6) NOT NULL,
  `is_valid` tinyint(4) NOT NULL DEFAULT '0',
  `montant` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ref` varchar(140) NOT NULL,
  `date_value` date NOT NULL DEFAULT '0000-00-00',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `user_upd` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_notecredit`),
  UNIQUE KEY `idx_unique_fac` (`year_nc`,`num_nc`),
  KEY `date_value` (`date_value`),
  KEY `montant` (`montant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_notecredit`
--

LOCK TABLES `t_notecredit` WRITE;
/*!40000 ALTER TABLE `t_notecredit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_notecredit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_obj_shared`
--

DROP TABLE IF EXISTS `t_obj_shared`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_obj_shared` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obj` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_upd` varchar(50) NOT NULL,
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `size` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_obj_vc_key` (`obj`,`vc_key`) COMMENT 'unique pair',
  KEY `idx_tos_obj` (`obj`),
  KEY `idx_tos_vckey` (`vc_key`),
  CONSTRAINT `fk_tos_vckey` FOREIGN KEY (`vc_key`) REFERENCES `t_virtualcab` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_obj_shared`
--

LOCK TABLES `t_obj_shared` WRITE;
/*!40000 ALTER TABLE `t_obj_shared` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_obj_shared` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_obj_shared_with`
--

DROP TABLE IF EXISTS `t_obj_shared_with`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_obj_shared_with` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obj_id` bigint(20) NOT NULL,
  `from_userid` bigint(20) NOT NULL,
  `to_userid` bigint(20) NOT NULL,
  `user_right` int(2) NOT NULL,
  `msg` text NOT NULL,
  `user_upd` varchar(50) NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remote_addr` varchar(50) DEFAULT NULL COMMENT 'IP address of the client which triggered the action',
  PRIMARY KEY (`id`),
  KEY `fk_t_obj_shared` (`obj_id`),
  KEY `fk_t_rights` (`user_right`),
  KEY `fk_t_fromu_tu` (`from_userid`),
  KEY `fk_t_tou_tu` (`to_userid`),
  CONSTRAINT `fk_t_fromu_tu` FOREIGN KEY (`from_userid`) REFERENCES `t_users` (`id`),
  CONSTRAINT `fk_t_obj_shared` FOREIGN KEY (`obj_id`) REFERENCES `t_obj_shared` (`id`),
  CONSTRAINT `fk_t_rights` FOREIGN KEY (`user_right`) REFERENCES `t_rights` (`id_right`),
  CONSTRAINT `fk_t_tou_tu` FOREIGN KEY (`to_userid`) REFERENCES `t_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_obj_shared_with`
--

LOCK TABLES `t_obj_shared_with` WRITE;
/*!40000 ALTER TABLE `t_obj_shared_with` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_obj_shared_with` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_procedures`
--

DROP TABLE IF EXISTS `t_procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_procedures` (
  `id_proc` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_doss` bigint(20) NOT NULL DEFAULT '0',
  `proc_type` smallint(2) NOT NULL DEFAULT '0',
  `date_open` date NOT NULL DEFAULT '0000-00-00',
  `date_close` date NOT NULL DEFAULT '0000-00-00',
  `user_upd` varchar(50) NOT NULL DEFAULT '',
  `date_upd` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id_proc`),
  KEY `id_doss` (`id_doss`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_procedures`
--

LOCK TABLES `t_procedures` WRITE;
/*!40000 ALTER TABLE `t_procedures` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_procedures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_procedures_type`
--

DROP TABLE IF EXISTS `t_procedures_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_procedures_type` (
  `proc_type` smallint(2) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type_desc` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`proc_type`),
  KEY `id_user` (`vc_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_procedures_type`
--

LOCK TABLES `t_procedures_type` WRITE;
/*!40000 ALTER TABLE `t_procedures_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_procedures_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ref_currency`
--

DROP TABLE IF EXISTS `t_ref_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ref_currency` (
  `code` varchar(3) NOT NULL,
  `symbol` varchar(5) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ref_currency`
--

LOCK TABLES `t_ref_currency` WRITE;
/*!40000 ALTER TABLE `t_ref_currency` DISABLE KEYS */;
INSERT INTO `t_ref_currency` VALUES ('CFA','CFA'),('CHF','CHF'),('CLP','$'),('CNY','¥'),('COP','$'),('CUC','$'),('CVE','$'),('DJF','Fdj'),('DKK','kr'),('DOP','RD$'),('EEK','kr'),('EGP','£'),('ERN','Nfk'),('ETB','Br'),('EUR','€'),('FJD','$'),('FKP','£'),('GBP','£'),('USD','$');
/*!40000 ALTER TABLE `t_ref_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_rights`
--

DROP TABLE IF EXISTS `t_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_rights` (
  `id_right` int(2) NOT NULL DEFAULT '0',
  `right_desc` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_right`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_rights`
--

LOCK TABLES `t_rights` WRITE;
/*!40000 ALTER TABLE `t_rights` DISABLE KEYS */;
INSERT INTO `t_rights` VALUES (0,'Administrateur'),(1,'Tiers - lecture'),(2,'Dossiers - lecture'),(3,'Comptabilité - lecture'),(4,'Echéancier - lecture'),(6,'Comptabilité - impression de rapports'),(7,'Dossiers -  voir aspects financiers'),(13,'Dossiers - voir note avocat'),(15,'Comptabilité - écriture'),(17,'Dossiers - Financier'),(18,'Timesheet - écriture'),(20,'Dossiers - Documents'),(21,'Dossiers - écriture'),(22,'Tiers - écriture'),(23,'Tableau de bord'),(24,'Echéancier - écriture'),(25,'Timesheet - lecture'),(26,'Facture - lecture'),(27,'Facture - écriture'),(28,'Facture - validation'),(29,'Facture - configuration'),(30,'Avodrive - Lecture'),(31,'Avodrive - Ecriture'),(32,'Avodrive - Partage'),(33,'Gestion du courrier entrant'),(34,'Calendar - lecture'),(35,'Calendar - ecriture'),(36,'Justiciable - ecriture'),(37,'Justiciable - admin');
/*!40000 ALTER TABLE `t_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_roles`
--

DROP TABLE IF EXISTS `t_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_roles` (
  `id_role` int(2) NOT NULL DEFAULT '0',
  `role_desc` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_roles`
--

LOCK TABLES `t_roles` WRITE;
/*!40000 ALTER TABLE `t_roles` DISABLE KEYS */;
INSERT INTO `t_roles` VALUES (1,'Avocat'),(2,'Stagiaire'),(3,'Assistant'),(4,'Secrétaire juridique'),(5,'Collaborateur'),(6,'Médiateur'),(7,'Avocat conseil client'),(8,'Avocat partie adverse'),(9,'Justiciable partie adverse');
/*!40000 ALTER TABLE `t_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_schema_version`
--

DROP TABLE IF EXISTS `t_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_schema_version` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `patch_number` varchar(50) COLLATE utf8_bin NOT NULL,
  `description` varchar(100) COLLATE utf8_bin NOT NULL,
  `date_applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_schema_version`
--

LOCK TABLES `t_schema_version` WRITE;
/*!40000 ALTER TABLE `t_schema_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_security_app_group_rights`
--

DROP TABLE IF EXISTS `t_security_app_group_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_security_app_group_rights` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `t_sec_app_groups_id` int(11) NOT NULL,
  `id_right` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_sec_app_groups_id_id_right` (`t_sec_app_groups_id`,`id_right`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_security_app_group_rights`
--

LOCK TABLES `t_security_app_group_rights` WRITE;
/*!40000 ALTER TABLE `t_security_app_group_rights` DISABLE KEYS */;
INSERT INTO `t_security_app_group_rights` VALUES (1,1,0),(7,2,1),(8,2,2),(9,2,3),(10,2,4),(11,2,6),(12,2,17),(13,2,18),(14,2,19),(15,2,20),(16,2,21),(17,2,22);
/*!40000 ALTER TABLE `t_security_app_group_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_security_app_groups`
--

DROP TABLE IF EXISTS `t_security_app_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_security_app_groups` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Predefined application security groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_security_app_groups`
--

LOCK TABLES `t_security_app_groups` WRITE;
/*!40000 ALTER TABLE `t_security_app_groups` DISABLE KEYS */;
INSERT INTO `t_security_app_groups` VALUES (1,'ulegalize-administrateurs'),(2,'ulegalize-utilisateurs'),(3,'super admin');
/*!40000 ALTER TABLE `t_security_app_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_security_group_rights`
--

DROP TABLE IF EXISTS `t_security_group_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_security_group_rights` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_right` int(2) NOT NULL,
  `t_sec_groups_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_right` (`id_right`),
  KEY `t_sec_groups_id` (`t_sec_groups_id`),
  CONSTRAINT `fk_t_sec_g_r_t_rights` FOREIGN KEY (`id_right`) REFERENCES `t_rights` (`id_right`),
  CONSTRAINT `fk_t_sec_g_r_t_sec_g` FOREIGN KEY (`t_sec_groups_id`) REFERENCES `t_security_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_security_group_rights`
--

LOCK TABLES `t_security_group_rights` WRITE;
/*!40000 ALTER TABLE `t_security_group_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_security_group_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_security_group_users`
--

DROP TABLE IF EXISTS `t_security_group_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_security_group_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL,
  `t_sec_groups_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_id_user_t_sec_group` (`id`,`id_user`),
  KEY `fk_t_sec_g_ud_t_users` (`id_user`),
  KEY `fk_t_sg` (`t_sec_groups_id`),
  CONSTRAINT `fk_t_sec_g_ud_t_users` FOREIGN KEY (`id_user`) REFERENCES `t_users` (`id`),
  CONSTRAINT `fk_t_sg` FOREIGN KEY (`t_sec_groups_id`) REFERENCES `t_security_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_security_group_users`
--

LOCK TABLES `t_security_group_users` WRITE;
/*!40000 ALTER TABLE `t_security_group_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_security_group_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_security_groups`
--

DROP TABLE IF EXISTS `t_security_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_security_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `t_sec_app_group_id` int(4) NOT NULL COMMENT 'when is set the group is an application predefined group and cannot be modified',
  `user_upd` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_desc_cab` (`vc_key`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1 COMMENT='Unique description per VC';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_security_groups`
--

LOCK TABLES `t_security_groups` WRITE;
/*!40000 ALTER TABLE `t_security_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_security_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sequences`
--

DROP TABLE IF EXISTS `t_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sequences` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sequence_number` bigint(20) DEFAULT NULL,
  `sequence_type` varchar(12) DEFAULT NULL,
  `upd_user` varchar(45) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sequences`
--

LOCK TABLES `t_sequences` WRITE;
/*!40000 ALTER TABLE `t_sequences` DISABLE KEYS */;
INSERT INTO `t_sequences` VALUES (1,87,'TEMP_VC','ulegal','2022-01-05 12:34:28');
/*!40000 ALTER TABLE `t_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_stripe_subscribers`
--

DROP TABLE IF EXISTS `t_stripe_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_stripe_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL,
  `plan` varchar(50) NOT NULL,
  `activesub` tinyint(1) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `date_upd` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_user_UNIQUE` (`id_user`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `fk_tstrsub_id` FOREIGN KEY (`id_user`) REFERENCES `t_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_stripe_subscribers`
--

LOCK TABLES `t_stripe_subscribers` WRITE;
/*!40000 ALTER TABLE `t_stripe_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_stripe_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_templates`
--

DROP TABLE IF EXISTS `t_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_templates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'U' COMMENT 'S=system U=user',
  `format` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'D=Doc M=Mail',
  `context` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `subcontext` varchar(80) NOT NULL DEFAULT '' COMMENT '(mail title)',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '(mail libelle)',
  `template` blob NOT NULL COMMENT '(body/message)',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT 'sujet',
  `description` varchar(200) NOT NULL DEFAULT ' ',
  `is_archived` tinyint(4) NOT NULL DEFAULT '0',
  `user_upd` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_upd` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_t_templ_vc` (`vc_key`),
  CONSTRAINT `fk_t_templ_vc` FOREIGN KEY (`vc_key`) REFERENCES `t_virtualcab` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_templates`
--

LOCK TABLES `t_templates` WRITE;
/*!40000 ALTER TABLE `t_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_timesheet`
--

DROP TABLE IF EXISTS `t_timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_timesheet` (
  `id_ts` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_doss` bigint(20) NOT NULL DEFAULT '0',
  `id_gest` bigint(20) NOT NULL,
  `ts_type` smallint(2) NOT NULL DEFAULT '0',
  `couthoraire` int(4) unsigned DEFAULT '0',
  `date_action` date NOT NULL DEFAULT '0000-00-00',
  `dh` char(2) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dm` char(2) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `comment` text,
  `user_upd` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `date_upd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mapping_migration` text,
  `vat` decimal(4,2) NOT NULL,
  `is_forfait` int(1) NOT NULL DEFAULT '0',
  `forfait_ht` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_ts`),
  KEY `id_doss` (`id_doss`),
  KEY `id_gest` (`id_gest`),
  KEY `id_gest_2` (`id_gest`),
  CONSTRAINT `fk_t_ts_id_gest` FOREIGN KEY (`id_gest`) REFERENCES `t_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_timesheet`
--

LOCK TABLES `t_timesheet` WRITE;
/*!40000 ALTER TABLE `t_timesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_timesheet_type`
--

DROP TABLE IF EXISTS `t_timesheet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_timesheet_type` (
  `id_ts` smallint(2) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text,
  `user_upd` varchar(10) NOT NULL,
  `date_upd` datetime DEFAULT NULL,
  `archived` int(11) NOT NULL DEFAULT '0',
  `mapping_migration` text,
  PRIMARY KEY (`id_ts`),
  KEY `id_user` (`vc_key`),
  KEY `archived` (`archived`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_timesheet_type`
--

LOCK TABLES `t_timesheet_type` WRITE;
/*!40000 ALTER TABLE `t_timesheet_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_timesheet_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_title`
--

DROP TABLE IF EXISTS `t_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_title` (
  `id_title` char(1) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `title` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`id_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_title`
--

LOCK TABLES `t_title` WRITE;
/*!40000 ALTER TABLE `t_title` DISABLE KEYS */;
INSERT INTO `t_title` VALUES ('F','Madame'),('L','Mademoiselle'),('M','Monsieur');
/*!40000 ALTER TABLE `t_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_type`
--

DROP TABLE IF EXISTS `t_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_type` (
  `id_type` int(11) NOT NULL DEFAULT '0',
  `ref_type` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_type`
--

LOCK TABLES `t_type` WRITE;
/*!40000 ALTER TABLE `t_type` DISABLE KEYS */;
INSERT INTO `t_type` VALUES (1,'Sortie'),(2,'Entrée');
/*!40000 ALTER TABLE `t_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_preference`
--

DROP TABLE IF EXISTS `t_user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_preference` (
  `id_user` bigint(20) NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_preference` varchar(3) NOT NULL,
  `id_object_ref` bigint(20) NOT NULL,
  `validity` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `id_object_ref` (`id_object_ref`),
  KEY `id_preference` (`id_preference`),
  KEY `id_user` (`id_user`),
  KEY `id_virtual_cab` (`vc_key`),
  KEY `validity` (`validity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_preference`
--

LOCK TABLES `t_user_preference` WRITE;
/*!40000 ALTER TABLE `t_user_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `userpass` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `hashkey` varchar(50) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `initiales` varchar(5) NOT NULL,
  `date_upd` datetime NOT NULL,
  `is_valid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `avatar` longblob NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_count` bigint(20) NOT NULL,
  `id_valid` int(11) NOT NULL,
  `busystatus` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_id` varchar(50) DEFAULT NULL,
  `stripe_email` varchar(50) DEFAULT NULL,
  `parrainage` varchar(100) DEFAULT NULL,
  `mon_lien_parrainage` varchar(100) DEFAULT NULL,
  `language` varchar(3) NOT NULL DEFAULT 'fr',
  `UPD_USER` varchar(10) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `biography` longtext,
  `specialities` longtext,
  `alias_public` varchar(55) DEFAULT NULL,
  `is_notification` tinyint(1) DEFAULT '1',
  `client_from` varchar(25) DEFAULT 'Ulegalize Workspace',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_vc_email` (`email`),
  UNIQUE KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users`
--

LOCK TABLES `t_users` WRITE;
/*!40000 ALTER TABLE `t_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_users_roles`
--

DROP TABLE IF EXISTS `t_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_users_roles` (
  `id_user` varchar(10) NOT NULL,
  `vc_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_role` smallint(6) NOT NULL,
  PRIMARY KEY (`id_user`,`vc_key`,`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users_roles`
--

LOCK TABLES `t_users_roles` WRITE;
/*!40000 ALTER TABLE `t_users_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_vat_country`
--

DROP TABLE IF EXISTS `t_vat_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_vat_country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vat` decimal(4,2) NOT NULL,
  `id_country_alpha2` varchar(4) NOT NULL,
  `is_default` int(1) NOT NULL,
  `upd_user` varchar(45) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_vat_country`
--

LOCK TABLES `t_vat_country` WRITE;
/*!40000 ALTER TABLE `t_vat_country` DISABLE KEYS */;
INSERT INTO `t_vat_country` VALUES (1,0.00,'BE',0,'ulegalize','2021-08-06 12:26:02'),(2,6.00,'BE',0,'ulegalize','2021-08-06 12:26:02'),(3,12.00,'BE',0,'ulegalize','2021-08-06 12:26:02'),(4,21.00,'BE',1,'ulegalize','2021-08-06 12:26:03'),(5,0.00,'FR',0,'ulegalize','2021-08-06 12:26:03'),(6,5.50,'FR',0,'ulegalize','2021-08-06 12:26:03'),(7,10.00,'FR',0,'ulegalize','2021-08-06 12:26:04'),(8,20.00,'FR',1,'ulegalize','2021-08-06 12:26:04');
/*!40000 ALTER TABLE `t_vat_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_vc_groupment`
--

DROP TABLE IF EXISTS `t_vc_groupment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_vc_groupment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VC_KEY` varchar(45) NOT NULL,
  `GROUPMENT_ID` int(11) NOT NULL,
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPD_DATE` datetime DEFAULT NULL,
  `UPD_USER` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `VC_GROUPMENT_UNIQUE` (`VC_KEY`,`GROUPMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_vc_groupment`
--

LOCK TABLES `t_vc_groupment` WRITE;
/*!40000 ALTER TABLE `t_vc_groupment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_vc_groupment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_virtualcab`
--

DROP TABLE IF EXISTS `t_virtualcab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_virtualcab` (
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `abbreviation` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(30) DEFAULT NULL,
  `doc_path` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_upd` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date_upd` datetime NOT NULL,
  `license_id` bigint(20) NOT NULL,
  `couthoraire` int(4) NOT NULL DEFAULT '0',
  `start_invoice_number` int(11) NOT NULL DEFAULT '1',
  `objetsocial` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `street` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cp` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_country_alpha2` varchar(2) DEFAULT NULL,
  `telephone` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `website` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `numentreprise` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `logo` longblob,
  `name_admin` varchar(100) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `pass_admin` varchar(50) NOT NULL,
  `temporary_vc` int(1) DEFAULT '1',
  `driveType` varchar(50) NOT NULL DEFAULT 'openstack',
  `dropbox_token` varchar(200) NOT NULL,
  `onedrive_token` varchar(1100) DEFAULT NULL,
  `refresh_token` varchar(1100) DEFAULT NULL,
  `expire_token` datetime DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'EUR',
  `is_notification` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`key`),
  KEY `email_admin` (`email_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_virtualcab`
--

LOCK TABLES `t_virtualcab` WRITE;
/*!40000 ALTER TABLE `t_virtualcab` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_virtualcab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_virtualcab_client`
--

DROP TABLE IF EXISTS `t_virtualcab_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_virtualcab_client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `cre_user` varchar(45) NOT NULL,
  `cre_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_user` varchar(45) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_virtualcab_client_vc_key_client_id_uindex` (`vc_key`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_virtualcab_client`
--

LOCK TABLES `t_virtualcab_client` WRITE;
/*!40000 ALTER TABLE `t_virtualcab_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_virtualcab_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_virtualcab_config`
--

DROP TABLE IF EXISTS `t_virtualcab_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_virtualcab_config` (
  `vc_key` varchar(50) COLLATE utf8_bin NOT NULL,
  `parameter` varchar(10) COLLATE utf8_bin NOT NULL,
  `description` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`vc_key`,`parameter`,`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_virtualcab_config`
--

LOCK TABLES `t_virtualcab_config` WRITE;
/*!40000 ALTER TABLE `t_virtualcab_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_virtualcab_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_virtualcab_users`
--

DROP TABLE IF EXISTS `t_virtualcab_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_virtualcab_users` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `vc_key` varchar(50) COLLATE utf8_bin NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `is_selected` int(1) DEFAULT '0',
  `id_role` int(2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_public` int(11) NOT NULL DEFAULT '0',
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `is_prestataire` tinyint(1) NOT NULL DEFAULT '0',
  `couthoraire` int(4) NOT NULL DEFAULT '0',
  `use_self_couthoraire` tinyint(1) NOT NULL DEFAULT '0',
  `user_upd` varchar(50) COLLATE utf8_bin NOT NULL,
  `date_upd` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_VC_USER` (`vc_key`,`id_user`),
  KEY `fk_t_vcu_t_roles` (`id_role`),
  KEY `fk_t_vcu_t_users` (`id_user`),
  CONSTRAINT `t_virtualcab_users_ibfk_1` FOREIGN KEY (`vc_key`) REFERENCES `t_virtualcab` (`key`),
  CONSTRAINT `t_virtualcab_users_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `t_users` (`id`),
  CONSTRAINT `t_virtualcab_users_ibfk_3` FOREIGN KEY (`id_role`) REFERENCES `t_roles` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_virtualcab_users`
--

LOCK TABLES `t_virtualcab_users` WRITE;
/*!40000 ALTER TABLE `t_virtualcab_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_virtualcab_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_virtualcab_vat`
--

DROP TABLE IF EXISTS `t_virtualcab_vat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_virtualcab_vat` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VC_KEY` varchar(50) NOT NULL,
  `VAT` decimal(4,2) DEFAULT NULL,
  `SECOND_TAX` decimal(4,2) DEFAULT NULL,
  `SECOND_TAX_LABEL` varchar(20) DEFAULT NULL,
  `CRE_USER` varchar(45) NOT NULL,
  `CRE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPD_DATE` datetime DEFAULT NULL,
  `UPD_USER` varchar(45) DEFAULT NULL,
  `is_default` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `VC_VAT` (`VC_KEY`,`VAT`),
  KEY `VC_SECOND_TAX` (`VC_KEY`,`SECOND_TAX`,`SECOND_TAX_LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_virtualcab_vat`
--

LOCK TABLES `t_virtualcab_vat` WRITE;
/*!40000 ALTER TABLE `t_virtualcab_vat` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_virtualcab_vat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_virtualcab_website`
--

DROP TABLE IF EXISTS `t_virtualcab_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_virtualcab_website` (
  `vc_key` varchar(50) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `intro` varchar(200) DEFAULT NULL,
  `philosophy` longtext,
  `about` longtext,
  `active` int(11) NOT NULL DEFAULT '0',
  `accept_appointment` int(11) NOT NULL DEFAULT '0',
  `upd_user` varchar(45) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`vc_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_virtualcab_website`
--

LOCK TABLES `t_virtualcab_website` WRITE;
/*!40000 ALTER TABLE `t_virtualcab_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_virtualcab_website` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-06 15:33:08
