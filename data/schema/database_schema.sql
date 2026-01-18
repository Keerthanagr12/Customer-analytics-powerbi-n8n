-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_analytics
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `online_retail_raw`
--

DROP TABLE IF EXISTS `online_retail_raw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_retail_raw` (
  `InvoiceNo` varchar(20) DEFAULT NULL,
  `StockCode` varchar(50) DEFAULT NULL,
  `Description` text,
  `Quantity` int DEFAULT NULL,
  `InvoiceDate` varchar(30) DEFAULT NULL,
  `UnitPrice` decimal(10,2) DEFAULT NULL,
  `CustomerID` varchar(20) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rfm_final`
--

DROP TABLE IF EXISTS `rfm_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rfm_final` (
  `CustomerID` varchar(20) DEFAULT NULL,
  `recency` int DEFAULT NULL,
  `frequency` bigint NOT NULL DEFAULT '0',
  `monetary` decimal(42,2) DEFAULT NULL,
  `r_score` bigint unsigned NOT NULL DEFAULT '0',
  `f_score` bigint unsigned NOT NULL DEFAULT '0',
  `m_score` bigint unsigned NOT NULL DEFAULT '0',
  `rfm_code` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rfm_scores`
--

DROP TABLE IF EXISTS `rfm_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rfm_scores` (
  `CustomerID` varchar(20) DEFAULT NULL,
  `recency` int DEFAULT NULL,
  `frequency` bigint NOT NULL DEFAULT '0',
  `monetary` decimal(42,2) DEFAULT NULL,
  `r_score` bigint unsigned NOT NULL DEFAULT '0',
  `f_score` bigint unsigned NOT NULL DEFAULT '0',
  `m_score` bigint unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rfm_segment_daily_snapshot`
--

DROP TABLE IF EXISTS `rfm_segment_daily_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rfm_segment_daily_snapshot` (
  `snapshot_date` date DEFAULT NULL,
  `rfm_segment` varchar(50) DEFAULT NULL,
  `customer_count` int DEFAULT NULL,
  `alert_sent` tinyint(1) DEFAULT '0',
  `last_alerted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rfm_segments_final`
--

DROP TABLE IF EXISTS `rfm_segments_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rfm_segments_final` (
  `CustomerID` varchar(20) DEFAULT NULL,
  `recency` int DEFAULT NULL,
  `frequency` bigint NOT NULL DEFAULT '0',
  `monetary` decimal(42,2) DEFAULT NULL,
  `r_score` bigint unsigned NOT NULL DEFAULT '0',
  `f_score` bigint unsigned NOT NULL DEFAULT '0',
  `m_score` bigint unsigned NOT NULL DEFAULT '0',
  `rfm_code` varchar(63) DEFAULT NULL,
  `rfm_segment` varchar(18) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-18 15:10:05
