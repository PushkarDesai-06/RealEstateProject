-- Table structure for table `agencies`
--

DROP TABLE IF EXISTS `agencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agencies` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `registered_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencies`
--

LOCK TABLES `agencies` WRITE;
/*!40000 ALTER TABLE `agencies` DISABLE KEYS */;
INSERT INTO `agencies` VALUES ('27b632db-590f-11f0-9690-b81ea430f6c6','Dream Realty','2025-07-05 01:13:27'),('27b65ae7-590f-11f0-9690-b81ea430f6c6','Urban Nest','2025-07-05 01:13:27'),('27b65e4d-590f-11f0-9690-b81ea430f6c6','Prime Estates','2025-07-05 01:13:27'),('27b66087-590f-11f0-9690-b81ea430f6c6','Sunshine Homes','2025-07-05 01:13:27'),('27b66131-590f-11f0-9690-b81ea430f6c6','Skyline Realty','2025-07-05 01:13:27'),('27b661df-590f-11f0-9690-b81ea430f6c6','Elite Spaces','2025-07-05 01:13:27'),('27b6629c-590f-11f0-9690-b81ea430f6c6','Green Leaf Realty','2025-07-05 01:13:27'),('27b66340-590f-11f0-9690-b81ea430f6c6','Metro Properties','2025-07-05 01:13:27'),('27b663e6-590f-11f0-9690-b81ea430f6c6','Horizon Realty','2025-07-05 01:13:27'),('27b66484-590f-11f0-9690-b81ea430f6c6','Estate Hub','2025-07-05 01:13:27'),('37c12345-680f-22g1-8790-c12ea440f7d7','Blue Horizon Realty','2025-07-10 12:00:00'),('47d23456-770f-33h2-9891-d23fb551g8e8','Peak Property Group','2025-07-11 09:30:00'),('57e34567-880f-44i3-a992-e34gc662h9f9','Crest Homes','2025-07-12 11:15:00'),('67f45678-990f-55j4-b993-f45hd773i0a0','Urban Edge Brokers','2025-07-13 14:45:00'),('78g56789-101f-66k5-c994-g56ie884j1b1','Golden Gate Properties','2025-07-14 16:20:00');
/*!40000 ALTER TABLE `agencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `id` char(36) NOT NULL,
  `agency_id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `hire_date` date DEFAULT NULL,
  `properties_sold` bigint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agency_id` (`agency_id`),
  CONSTRAINT `agents_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES ('27b7db3a-590f-11f0-9690-b81ea430f6c6','27b66484-590f-11f0-9690-b81ea430f6c6','Agent_766','+917769124424','password123','2025-07-05',10),('27b7dffb-590f-11f0-9690-b81ea430f6c6','27b65e4d-590f-11f0-9690-b81ea430f6c6','Agent_381','+917494263932','password123','2025-07-05',6),('27b7e1b0-590f-11f0-9690-b81ea430f6c6','27b66087-590f-11f0-9690-b81ea430f6c6','Agent_816','+917597381433','password123','2025-07-05',10),('27b7e2eb-590f-11f0-9690-b81ea430f6c6','27b663e6-590f-11f0-9690-b81ea430f6c6','Agent_854','+917400789107','password123','2025-07-05',8),('27b7e3b9-590f-11f0-9690-b81ea430f6c6','27b661df-590f-11f0-9690-b81ea430f6c6','Agent_739','+917808247175','password123','2025-07-05',16),('27b7e485-590f-11f0-9690-b81ea430f6c6','27b65ae7-590f-11f0-9690-b81ea430f6c6','Agent_356','+917567100684','password123','2025-07-05',15),('27b7e536-590f-11f0-9690-b81ea430f6c6','27b66340-590f-11f0-9690-b81ea430f6c6','Agent_357','+917119772191','password123','2025-07-05',10),('27b7e5ef-590f-11f0-9690-b81ea430f6c6','27b6629c-590f-11f0-9690-b81ea430f6c6','Agent_30','+917045445438','password123','2025-07-05',2),('27b7e6b3-590f-11f0-9690-b81ea430f6c6','27b66131-590f-11f0-9690-b81ea430f6c6','Agent_918','+917866461035','password123','2025-07-05',11),('27b7e770-590f-11f0-9690-b81ea430f6c6','27b632db-590f-11f0-9690-b81ea430f6c6','Agent_874','+917568163937','password123','2025-07-05',4),('37c23456-680f-22g1-8790-c12ea440f7d8','27b661df-590f-11f0-9690-b81ea430f6c6','Agent_912','+917600111222','password123','2025-07-10',7),('47d34567-770f-33h2-9891-d23fb551g8e9','27b65ae7-590f-11f0-9690-b81ea430f6c6','Agent_993','+917611333444','password123','2025-07-12',12),('57e45678-880f-44i3-a992-e34gc662h9f0','27b66340-590f-11f0-9690-b81ea430f6c6','Agent_624','+917622555666','password123','2025-07-15',9),('67f56789-990f-55j4-b993-f45hd773i0a1','27b632db-590f-11f0-9690-b81ea430f6c6','Agent_705','+917633777888','password123','2025-07-17',11),('78g67890-101f-66k5-c994-g56ie884j1b2','27b66484-590f-11f0-9690-b81ea430f6c6','Agent_818','+917644999000','password123','2025-07-19',14);
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agents_properties`
--

DROP TABLE IF EXISTS `agents_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents_properties` (
  `agent_id` char(36) NOT NULL,
  `property_id` char(36) NOT NULL,
  PRIMARY KEY (`agent_id`,`property_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `agents_properties_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`),
  CONSTRAINT `agents_properties_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents_properties`
--

LOCK TABLES `agents_properties` WRITE;
/*!40000 ALTER TABLE `agents_properties` DISABLE KEYS */;
INSERT INTO `agents_properties` VALUES ('27b7e5ef-590f-11f0-9690-b81ea430f6c6','27b97f2b-590f-11f0-9690-b81ea430f6c6'),('27b7e536-590f-11f0-9690-b81ea430f6c6','27b9876a-590f-11f0-9690-b81ea430f6c6'),('27b7e536-590f-11f0-9690-b81ea430f6c6','27b98d53-590f-11f0-9690-b81ea430f6c6'),('27b7e770-590f-11f0-9690-b81ea430f6c6','27b98d53-590f-11f0-9690-b81ea430f6c6'),('27b7db3a-590f-11f0-9690-b81ea430f6c6','27b98fe3-590f-11f0-9690-b81ea430f6c6'),('27b7e1b0-590f-11f0-9690-b81ea430f6c6','27b98fe3-590f-11f0-9690-b81ea430f6c6'),('27b7e3b9-590f-11f0-9690-b81ea430f6c6','27b9924f-590f-11f0-9690-b81ea430f6c6'),('27b7e485-590f-11f0-9690-b81ea430f6c6','27b9937b-590f-11f0-9690-b81ea430f6c6'),('27b7e536-590f-11f0-9690-b81ea430f6c6','27b994cb-590f-11f0-9690-b81ea430f6c6'),('27b7e5ef-590f-11f0-9690-b81ea430f6c6','27b994cb-590f-11f0-9690-b81ea430f6c6');
/*!40000 ALTER TABLE `agents_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyers` (
  `id` char(36) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES ('27b8a7a3-590f-11f0-9690-b81ea430f6c6','buyer1@email.com','+919876543210','buyerpass','2025-07-05 01:13:27'),('27b8ab53-590f-11f0-9690-b81ea430f6c6','buyer2@email.com','+919876543211','buyerpass','2025-07-05 01:13:27'),('27b8ac9f-590f-11f0-9690-b81ea430f6c6','buyer3@email.com','+919876543212','buyerpass','2025-07-05 01:13:27'),('27b8ad5d-590f-11f0-9690-b81ea430f6c6','buyer4@email.com','+919876543213','buyerpass','2025-07-05 01:13:27'),('27b8adfe-590f-11f0-9690-b81ea430f6c6','buyer5@email.com','+919876543214','buyerpass','2025-07-05 01:13:27'),('27b8aea4-590f-11f0-9690-b81ea430f6c6','buyer6@email.com','+919876543215','buyerpass','2025-07-05 01:13:27'),('27b8af38-590f-11f0-9690-b81ea430f6c6','buyer7@email.com','+919876543216','buyerpass','2025-07-05 01:13:27'),('27b8afcf-590f-11f0-9690-b81ea430f6c6','buyer8@email.com','+919876543217','buyerpass','2025-07-05 01:13:27'),('27b8b06a-590f-11f0-9690-b81ea430f6c6','buyer9@email.com','+919876543218','buyerpass','2025-07-05 01:13:27'),('27b8b108-590f-11f0-9690-b81ea430f6c6','buyer10@email.com','+919876543219','buyerpass','2025-07-05 01:13:27'),('37c45678-680f-22g1-8790-c12ea440f7da','buyer11@email.com','+919812345670','buyerpass','2025-07-10 12:05:00'),('47d56789-770f-33h2-9891-d23fb551g8eb','buyer12@email.com','+919823456781','buyerpass','2025-07-11 13:40:00'),('57e67890-880f-44i3-a992-e34gc662h9f2','buyer13@email.com','+919834567892','buyerpass','2025-07-12 08:15:00'),('67f78901-990f-55j4-b993-f45hd773i0a3','buyer14@email.com','+919845678903','buyerpass','2025-07-13 14:45:00'),('78g89012-101f-66k5-c994-g56ie884j1b4','buyer15@email.com','+919856789014','buyerpass','2025-07-14 16:30:00');
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES ('27bb8b46-590f-11f0-9690-b81ea430f6c6','Swimming Pool'),('27bb8ed7-590f-11f0-9690-b81ea430f6c6','Garden'),('27bb8f8d-590f-11f0-9690-b81ea430f6c6','Balcony'),('27bb8ff5-590f-11f0-9690-b81ea430f6c6','Garage'),('27bb904f-590f-11f0-9690-b81ea430f6c6','Gym Access'),('27bb948d-590f-11f0-9690-b81ea430f6c6','Play Area'),('27bb95c6-590f-11f0-9690-b81ea430f6c6','Security'),('27bb9670-590f-11f0-9690-b81ea430f6c6','Lift'),('27bb96f8-590f-11f0-9690-b81ea430f6c6','Sea View'),('27bb9779-590f-11f0-9690-b81ea430f6c6','Clubhouse'),('37c56789-680f-22g1-8790-c12ea440f7db','Solar Panels'),('47d67890-770f-33h2-9891-d23fb551g8ec','Home Office'),('57e78901-880f-44i3-a992-e34gc662h9f3','Fireplace'),('67f89012-990f-55j4-b993-f45hd773i0a4','Hardwood Floors'),('78g90123-101f-66k5-c994-g56ie884j1b5','Smart Home System');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiries`
--

DROP TABLE IF EXISTS `inquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiries` (
  `id` char(36) NOT NULL,
  `agent_id` char(36) NOT NULL,
  `buyer_id` char(36) NOT NULL,
  `property_id` char(36) NOT NULL,
  `message` text,
  `status` enum('new','responded','closed') NOT NULL DEFAULT 'new',
  `created_at` datetime NOT NULL,
  `responded_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buyer_id` (`buyer_id`),
  KEY `property_id` (`property_id`),
  KEY `Inquiries_agent_status_idx` (`agent_id`,`status`),
  KEY `Inquiries_created_property_idx` (`created_at`,`property_id`),
  CONSTRAINT `inquiries_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`),
  CONSTRAINT `inquiries_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`),
  CONSTRAINT `inquiries_ibfk_3` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiries`
--

LOCK TABLES `inquiries` WRITE;
/*!40000 ALTER TABLE `inquiries` DISABLE KEYS */;
INSERT INTO `inquiries` VALUES ('27be173b-590f-11f0-9690-b81ea430f6c6','27b7e1b0-590f-11f0-9690-b81ea430f6c6','27b8b108-590f-11f0-9690-b81ea430f6c6','27b97f2b-590f-11f0-9690-b81ea430f6c6','Interested in Modern Apartment','new','2025-07-05 01:13:27','2025-07-05 01:34:27'),('27be1b68-590f-11f0-9690-b81ea430f6c6','27b7e5ef-590f-11f0-9690-b81ea430f6c6','27b8a7a3-590f-11f0-9690-b81ea430f6c6','27b98d53-590f-11f0-9690-b81ea430f6c6','Interested in Elegant House','new','2025-07-05 01:13:27','2025-07-05 09:20:27'),('27be1d5d-590f-11f0-9690-b81ea430f6c6','27b7e1b0-590f-11f0-9690-b81ea430f6c6','27b8afcf-590f-11f0-9690-b81ea430f6c6','27b9937b-590f-11f0-9690-b81ea430f6c6','Interested in Penthouse','new','2025-07-05 01:13:27','2025-07-05 07:19:27'),('27be1ffa-590f-11f0-9690-b81ea430f6c6','27b7e770-590f-11f0-9690-b81ea430f6c6','27b8aea4-590f-11f0-9690-b81ea430f6c6','27b9924f-590f-11f0-9690-b81ea430f6c6','Interested in Family House','new','2025-07-05 01:13:27','2025-07-05 07:18:27'),('27be21bb-590f-11f0-9690-b81ea430f6c6','27b7e770-590f-11f0-9690-b81ea430f6c6','27b8b06a-590f-11f0-9690-b81ea430f6c6','27b98ba8-590f-11f0-9690-b81ea430f6c6','Interested in Commercial Shop','new','2025-07-05 01:13:27','2025-07-05 04:56:27'),('27be2375-590f-11f0-9690-b81ea430f6c6','27b7db3a-590f-11f0-9690-b81ea430f6c6','27b8adfe-590f-11f0-9690-b81ea430f6c6','27b9913c-590f-11f0-9690-b81ea430f6c6','Interested in Budget Apartment','new','2025-07-05 01:13:27','2025-07-05 01:27:27'),('27be2545-590f-11f0-9690-b81ea430f6c6','27b7dffb-590f-11f0-9690-b81ea430f6c6','27b8ac9f-590f-11f0-9690-b81ea430f6c6','27b9876a-590f-11f0-9690-b81ea430f6c6','Interested in Luxury Villa','new','2025-07-05 01:13:27','2025-07-05 07:49:27'),('27be269d-590f-11f0-9690-b81ea430f6c6','27b7e1b0-590f-11f0-9690-b81ea430f6c6','27b8b108-590f-11f0-9690-b81ea430f6c6','27b994cb-590f-11f0-9690-b81ea430f6c6','Interested in Commercial Warehouse','new','2025-07-05 01:13:27','2025-07-05 08:27:27'),('27be2885-590f-11f0-9690-b81ea430f6c6','27b7e6b3-590f-11f0-9690-b81ea430f6c6','27b8afcf-590f-11f0-9690-b81ea430f6c6','27b98eb2-590f-11f0-9690-b81ea430f6c6','Interested in Office Space','new','2025-07-05 01:13:27','2025-07-05 09:12:27'),('27be2a3e-590f-11f0-9690-b81ea430f6c6','27b7dffb-590f-11f0-9690-b81ea430f6c6','27b8ab53-590f-11f0-9690-b81ea430f6c6','27b98fe3-590f-11f0-9690-b81ea430f6c6','Interested in Seaside Villa','new','2025-07-05 01:13:27','2025-07-05 02:40:27'),('37c67890-680f-22g1-8790-c12ea440f7dc','37c23456-680f-22g1-8790-c12ea440f7d8','37c45678-680f-22g1-8790-c12ea440f7da','37c34567-680f-22g1-8790-c12ea440f7d9','Looking for more photos and info','new','2025-07-10 12:30:00',NULL),('47d78901-770f-33h2-9891-d23fb551g8ed','47d34567-770f-33h2-9891-d23fb551g8e9','47d56789-770f-33h2-9891-d23fb551g8eb','47d45678-770f-33h2-9891-d23fb551g8ea','Is the price negotiable?','new','2025-07-11 14:00:00','2025-07-11 15:00:00'),('57e89012-880f-44i3-a992-e34gc662h9f4','57e45678-880f-44i3-a992-e34gc662h9f0','57e67890-880f-44i3-a992-e34gc662h9f2','57e56789-880f-44i3-a992-e34gc662h9f1','Does it come furnished?','responded','2025-07-12 09:00:00','2025-07-12 12:30:00'),('67f90123-990f-55j4-b993-f45hd773i0a5','67f56789-990f-55j4-b993-f45hd773i0a1','67f78901-990f-55j4-b993-f45hd773i0a3','67f67890-990f-55j4-b993-f45hd773i0a2','Can I schedule a visit?','new','2025-07-13 16:00:00',NULL),('78g01234-101f-66k5-c994-g56ie884j1b6','78g67890-101f-66k5-c994-g56ie884j1b2','78g89012-101f-66k5-c994-g56ie884j1b4','78g78901-101f-66k5-c994-g56ie884j1b3','Is financing available?','new','2025-07-14 17:45:00',NULL);
/*!40000 ALTER TABLE `inquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `id` char(36) NOT NULL,
  `buyer_id` char(36) NOT NULL,
  `agent_id` char(36) NOT NULL,
  `property_id` char(36) NOT NULL,
  `offered_by_buyer` tinyint(1) NOT NULL,
  `status` enum('closed','pending_response','pending_transaction','rejected') NOT NULL DEFAULT 'pending_response',
  `price` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `final_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buyer_id` (`buyer_id`),
  KEY `agent_id` (`agent_id`),
  KEY `property_id` (`property_id`),
  KEY `Offers_status_idx` (`id`,`status`),
  CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`),
  CONSTRAINT `offers_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`),
  CONSTRAINT `offers_ibfk_3` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES ('27bf2bb4-590f-11f0-9690-b81ea430f6c6','27b8ad5d-590f-11f0-9690-b81ea430f6c6','27b7e6b3-590f-11f0-9690-b81ea430f6c6','27b98ba8-590f-11f0-9690-b81ea430f6c6',1,'pending_response',12433765,'2025-07-05 01:13:27',NULL),('27bf31bf-590f-11f0-9690-b81ea430f6c6','27b8ab53-590f-11f0-9690-b81ea430f6c6','27b7db3a-590f-11f0-9690-b81ea430f6c6','27b9876a-590f-11f0-9690-b81ea430f6c6',1,'pending_response',24779011,'2025-07-05 01:13:27',NULL),('27bf33e4-590f-11f0-9690-b81ea430f6c6','27b8afcf-590f-11f0-9690-b81ea430f6c6','27b7e6b3-590f-11f0-9690-b81ea430f6c6','27b994cb-590f-11f0-9690-b81ea430f6c6',1,'pending_response',9537353,'2025-07-05 01:13:27',NULL),('27bf35b7-590f-11f0-9690-b81ea430f6c6','27b8ac9f-590f-11f0-9690-b81ea430f6c6','27b7e6b3-590f-11f0-9690-b81ea430f6c6','27b98fe3-590f-11f0-9690-b81ea430f6c6',1,'pending_response',29914967,'2025-07-05 01:13:27',NULL),('27bf3772-590f-11f0-9690-b81ea430f6c6','27b8af38-590f-11f0-9690-b81ea430f6c6','27b7e536-590f-11f0-9690-b81ea430f6c6','27b98d53-590f-11f0-9690-b81ea430f6c6',1,'pending_response',9292121,'2025-07-05 01:13:27',NULL),('27bf3906-590f-11f0-9690-b81ea430f6c6','27b8adfe-590f-11f0-9690-b81ea430f6c6','27b7e770-590f-11f0-9690-b81ea430f6c6','27b98eb2-590f-11f0-9690-b81ea430f6c6',1,'pending_response',14726689,'2025-07-05 01:13:27',NULL),('27bf3a50-590f-11f0-9690-b81ea430f6c6','27b8ab53-590f-11f0-9690-b81ea430f6c6','27b7dffb-590f-11f0-9690-b81ea430f6c6','27b9913c-590f-11f0-9690-b81ea430f6c6',1,'pending_response',5070020,'2025-07-05 01:13:27',NULL),('27bf3c2d-590f-11f0-9690-b81ea430f6c6','27b8afcf-590f-11f0-9690-b81ea430f6c6','27b7e3b9-590f-11f0-9690-b81ea430f6c6','27b9924f-590f-11f0-9690-b81ea430f6c6',1,'pending_response',11947244,'2025-07-05 01:13:27',NULL),('27bf3da2-590f-11f0-9690-b81ea430f6c6','27b8b06a-590f-11f0-9690-b81ea430f6c6','27b7e485-590f-11f0-9690-b81ea430f6c6','27b9937b-590f-11f0-9690-b81ea430f6c6',1,'pending_response',39904157,'2025-07-05 01:13:27',NULL),('27bf3f0b-590f-11f0-9690-b81ea430f6c6','27b8b06a-590f-11f0-9690-b81ea430f6c6','27b7e536-590f-11f0-9690-b81ea430f6c6','27b97f2b-590f-11f0-9690-b81ea430f6c6',1,'pending_response',7283623,'2025-07-05 01:13:27',NULL),('37c78901-680f-22g1-8790-c12ea440f7dd','37c45678-680f-22g1-8790-c12ea440f7da','37c23456-680f-22g1-8790-c12ea440f7d8','37c34567-680f-22g1-8790-c12ea440f7d9',1,'pending_response',8600000,'2025-07-10 12:45:00',NULL),('47d89012-770f-33h2-9891-d23fb551g8ee','47d56789-770f-33h2-9891-d23fb551g8eb','47d34567-770f-33h2-9891-d23fb551g8e9','47d45678-770f-33h2-9891-d23fb551g8ea',1,'pending_transaction',4300000,'2025-07-11 14:15:00','2025-07-13 10:00:00'),('57e90123-880f-44i3-a992-e34gc662h9f5','57e67890-880f-44i3-a992-e34gc662h9f2','57e45678-880f-44i3-a992-e34gc662h9f0','57e56789-880f-44i3-a992-e34gc662h9f1',1,'rejected',17500000,'2025-07-12 09:30:00',NULL),('67f01234-990f-55j4-b993-f45hd773i0a6','67f78901-990f-55j4-b993-f45hd773i0a3','67f56789-990f-55j4-b993-f45hd773i0a1','67f67890-990f-55j4-b993-f45hd773i0a2',1,'pending_response',49500000,'2025-07-13 16:30:00',NULL),('78g12345-101f-66k5-c994-g56ie884j1b7','78g89012-101f-66k5-c994-g56ie884j1b4','78g67890-101f-66k5-c994-g56ie884j1b2','78g78901-101f-66k5-c994-g56ie884j1b3',1,'pending_response',13100000,'2025-07-14 18:00:00',NULL),('b1d20101-2222-5555-bbbb-000000000101','27b8a7a3-590f-11f0-9690-b81ea430f6c6','27b7e1b0-590f-11f0-9690-b81ea430f6c6','a1d10101-1111-4444-aaaa-000000000001',1,'closed',5400000,'2025-05-10 10:00:00','2025-06-01 09:00:00'),('b1d20102-2222-5555-bbbb-000000000102','27b8ab53-590f-11f0-9690-b81ea430f6c6','27b7dffb-590f-11f0-9690-b81ea430f6c6','a1d10102-1111-4444-aaaa-000000000002',1,'closed',7150000,'2025-05-12 12:30:00','2025-06-05 13:20:00'),('b1d20103-2222-5555-bbbb-000000000103','27b8ac9f-590f-11f0-9690-b81ea430f6c6','27b7e2eb-590f-11f0-9690-b81ea430f6c6','a1d10103-1111-4444-aaaa-000000000003',1,'closed',34500000,'2025-05-15 15:00:00','2025-06-10 14:10:00'),('b1d20104-2222-5555-bbbb-000000000104','27b8ad5d-590f-11f0-9690-b81ea430f6c6','27b7e3b9-590f-11f0-9690-b81ea430f6c6','a1d10104-1111-4444-aaaa-000000000004',1,'closed',8800000,'2025-05-18 09:45:00','2025-06-15 11:30:00'),('b1d20105-2222-5555-bbbb-000000000105','27b8aea4-590f-11f0-9690-b81ea430f6c6','27b7e485-590f-11f0-9690-b81ea430f6c6','a1d10105-1111-4444-aaaa-000000000005',1,'closed',6700000,'2025-05-20 14:20:00','2025-06-20 09:45:00'),('b1d20106-2222-5555-bbbb-000000000106','27b8af38-590f-11f0-9690-b81ea430f6c6','27b7e536-590f-11f0-9690-b81ea430f6c6','a1d10106-1111-4444-aaaa-000000000006',1,'closed',47500000,'2025-05-22 10:00:00','2025-06-25 10:30:00'),('b1d20107-2222-5555-bbbb-000000000107','27b8afcf-590f-11f0-9690-b81ea430f6c6','27b7e5ef-590f-11f0-9690-b81ea430f6c6','a1d10107-1111-4444-aaaa-000000000007',1,'closed',12400000,'2025-05-25 11:30:00','2025-06-30 15:00:00'),('b1d20108-2222-5555-bbbb-000000000108','27b8b06a-590f-11f0-9690-b81ea430f6c6','27b7e770-590f-11f0-9690-b81ea430f6c6','a1d10108-1111-4444-aaaa-000000000008',1,'closed',3150000,'2025-05-28 09:15:00','2025-07-02 09:50:00'),('b1d20109-2222-5555-bbbb-000000000109','27b8b108-590f-11f0-9690-b81ea430f6c6','27b7db3a-590f-11f0-9690-b81ea430f6c6','a1d10109-1111-4444-aaaa-000000000009',1,'closed',29500000,'2025-05-30 14:00:00','2025-07-05 14:20:00'),('b1d2010a-2222-5555-bbbb-00000000010a','27b8adfe-590f-11f0-9690-b81ea430f6c6','27b7dffb-590f-11f0-9690-b81ea430f6c6','a1d1010a-1111-4444-aaaa-00000000000a',1,'closed',9400000,'2025-06-02 10:40:00','2025-07-08 15:00:00'),('b1d2010b-2222-5555-bbbb-00000000010b','27b8aea4-590f-11f0-9690-b81ea430f6c6','27b7e1b0-590f-11f0-9690-b81ea430f6c6','a1d1010b-1111-4444-aaaa-00000000000b',1,'closed',11300000,'2025-06-05 11:30:00','2025-07-10 09:45:00'),('b1d2010c-2222-5555-bbbb-00000000010c','27b8af38-590f-11f0-9690-b81ea430f6c6','27b7e2eb-590f-11f0-9690-b81ea430f6c6','a1d1010c-1111-4444-aaaa-00000000000c',1,'closed',7150000,'2025-06-07 09:50:00','2025-07-12 15:00:00'),('b1d2010d-2222-5555-bbbb-00000000010d','27b8afcf-590f-11f0-9690-b81ea430f6c6','27b7e3b9-590f-11f0-9690-b81ea430f6c6','a1d1010d-1111-4444-aaaa-00000000000d',1,'closed',5400000,'2025-06-10 14:20:00','2025-07-14 15:15:00'),('b1d2010e-2222-5555-bbbb-00000000010e','27b8b06a-590f-11f0-9690-b81ea430f6c6','27b7e485-590f-11f0-9690-b81ea430f6c6','a1d1010e-1111-4444-aaaa-00000000000e',1,'closed',9900000,'2025-06-12 08:50:00','2025-07-16 10:45:00'),('b1d2010f-2222-5555-bbbb-00000000010f','27b8b108-590f-11f0-9690-b81ea430f6c6','27b7e770-590f-11f0-9690-b81ea430f6c6','a1d1010f-1111-4444-aaaa-00000000000f',1,'closed',45500000,'2025-06-15 12:30:00','2025-07-18 16:30:00'),('b1d20110-2222-5555-bbbb-000000001010','27b8adfe-590f-11f0-9690-b81ea430f6c6','27b7dffb-590f-11f0-9690-b81ea430f6c6','a1d10110-1111-4444-aaaa-000000000010',1,'closed',5900000,'2025-06-17 10:30:00','2025-07-20 12:50:00'),('b1d20111-2222-5555-bbbb-000000001011','27b8aea4-590f-11f0-9690-b81ea430f6c6','27b7e1b0-590f-11f0-9690-b81ea430f6c6','a1d10111-1111-4444-aaaa-000000000011',1,'closed',11800000,'2025-06-19 09:05:00','2025-07-22 13:30:00'),('b1d20112-2222-5555-bbbb-000000001012','27b8af38-590f-11f0-9690-b81ea430f6c6','27b7e2eb-590f-11f0-9690-b81ea430f6c6','a1d10112-1111-4444-aaaa-000000000012',1,'closed',23500000,'2025-06-21 15:00:00','2025-07-24 14:45:00'),('b1d20113-2222-5555-bbbb-000000001013','27b8afcf-590f-11f0-9690-b81ea430f6c6','27b7e3b9-590f-11f0-9690-b81ea430f6c6','a1d10113-1111-4444-aaaa-000000000013',1,'closed',6900000,'2025-06-23 11:20:00','2025-07-26 13:00:00'),('b1d20114-2222-5555-bbbb-000000001014','27b8b06a-590f-11f0-9690-b81ea430f6c6','27b7e485-590f-11f0-9690-b81ea430f6c6','a1d10114-1111-4444-aaaa-000000000014',1,'closed',4700000,'2025-06-25 10:15:00','2025-07-28 10:05:00'),('b1d20115-2222-5555-bbbb-000000001015','27b8b108-590f-11f0-9690-b81ea430f6c6','27b7e770-590f-11f0-9690-b81ea430f6c6','a1d10115-1111-4444-aaaa-000000000015',1,'closed',15800000,'2025-06-27 15:50:00','2025-07-30 16:00:00'),('b1d20116-2222-5555-bbbb-000000001016','27b8adfe-590f-11f0-9690-b81ea430f6c6','27b7db3a-590f-11f0-9690-b81ea430f6c6','a1d10116-1111-4444-aaaa-000000000016',1,'closed',74000000,'2025-06-29 14:10:00','2025-08-01 16:10:00'),('b1d20117-2222-5555-bbbb-000000001017','27b8aea4-590f-11f0-9690-b81ea430f6c6','27b7dffb-590f-11f0-9690-b81ea430f6c6','a1d10117-1111-4444-aaaa-000000000017',1,'closed',17800000,'2025-07-01 09:20:00','2025-08-03 09:45:00'),('b1d20118-2222-5555-bbbb-000000001018','27b8af38-590f-11f0-9690-b81ea430f6c6','27b7e1b0-590f-11f0-9690-b81ea430f6c6','a1d10118-1111-4444-aaaa-000000000018',1,'closed',49500000,'2025-07-03 11:15:00','2025-08-05 12:30:00'),('b1d20119-2222-5555-bbbb-000000001019','27b8afcf-590f-11f0-9690-b81ea430f6c6','27b7e2eb-590f-11f0-9690-b81ea430f6c6','a1d10119-1111-4444-aaaa-000000000019',1,'closed',6750000,'2025-07-05 09:45:00','2025-08-07 10:30:00'),('b1d2011a-2222-5555-bbbb-00000000101a','27b8b06a-590f-11f0-9690-b81ea430f6c6','27b7e3b9-590f-11f0-9690-b81ea430f6c6','a1d1011a-1111-4444-aaaa-00000000001a',1,'closed',8900000,'2025-07-07 09:15:00','2025-08-09 13:40:00'),('b1d2011b-2222-5555-bbbb-00000000101b','27b8b108-590f-11f0-9690-b81ea430f6c6','27b7e5ef-590f-11f0-9690-b81ea430f6c6','a1d1011b-1111-4444-aaaa-00000000001b',1,'closed',44800000,'2025-07-09 14:30:00','2025-08-11 16:00:00'),('b1d2011c-2222-5555-bbbb-00000000101c','27b8adfe-590f-11f0-9690-b81ea430f6c6','27b7db3a-590f-11f0-9690-b81ea430f6c6','a1d1011c-1111-4444-aaaa-00000000001c',1,'closed',10900000,'2025-07-11 10:30:00','2025-08-13 11:10:00');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_logs`
--

DROP TABLE IF EXISTS `price_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_logs` (
  `id` char(36) NOT NULL,
  `property_id` char(36) NOT NULL,
  `updated_at` datetime NOT NULL,
  `price` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `price_logs_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_logs`
--

LOCK TABLES `price_logs` WRITE;
/*!40000 ALTER TABLE `price_logs` DISABLE KEYS */;
INSERT INTO `price_logs` VALUES ('27bd3c15-590f-11f0-9690-b81ea430f6c6','27b97f2b-590f-11f0-9690-b81ea430f6c6','2025-07-05 01:13:27',7500000),('27bd435b-590f-11f0-9690-b81ea430f6c6','27b9876a-590f-11f0-9690-b81ea430f6c6','2025-07-05 01:13:27',25000000),('27bd4512-590f-11f0-9690-b81ea430f6c6','27b98ba8-590f-11f0-9690-b81ea430f6c6','2025-07-05 01:13:27',12500000),('27bd4610-590f-11f0-9690-b81ea430f6c6','27b98d53-590f-11f0-9690-b81ea430f6c6','2025-07-05 01:13:27',9500000),('27bd46d9-590f-11f0-9690-b81ea430f6c6','27b98eb2-590f-11f0-9690-b81ea430f6c6','2025-07-05 01:13:27',15000000),('27bd476d-590f-11f0-9690-b81ea430f6c6','27b98fe3-590f-11f0-9690-b81ea430f6c6','2025-07-05 01:13:27',30000000),('27bd47fb-590f-11f0-9690-b81ea430f6c6','27b9913c-590f-11f0-9690-b81ea430f6c6','2025-07-05 01:13:27',5500000),('27bd488b-590f-11f0-9690-b81ea430f6c6','27b9924f-590f-11f0-9690-b81ea430f6c6','2025-07-05 01:13:27',12000000),('27bd491d-590f-11f0-9690-b81ea430f6c6','27b9937b-590f-11f0-9690-b81ea430f6c6','2025-07-05 01:13:27',40000000),('27bd49b7-590f-11f0-9690-b81ea430f6c6','27b994cb-590f-11f0-9690-b81ea430f6c6','2025-07-05 01:13:27',10000000),('37c89012-680f-22g1-8790-c12ea440f7de','37c34567-680f-22g1-8790-c12ea440f7d9','2025-07-10 12:00:00',8500000),('47d90123-770f-33h2-9891-d23fb551g8ef','47d45678-770f-33h2-9891-d23fb551g8ea','2025-07-11 11:00:00',4200000),('57e01234-880f-44i3-a992-e34gc662h9f6','57e56789-880f-44i3-a992-e34gc662h9f1','2025-07-12 09:15:00',18000000),('67f12345-990f-55j4-b993-f45hd773i0a7','67f67890-990f-55j4-b993-f45hd773i0a2','2025-07-13 15:30:00',49000000),('78g23456-101f-66k5-c994-g56ie884j1b8','78g78901-101f-66k5-c994-g56ie884j1b3','2025-07-14 17:00:00',13000000);
/*!40000 ALTER TABLE `price_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `id` char(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `address` text,
  `neighborhood` varchar(255) DEFAULT NULL,
  `listing_price` bigint NOT NULL,
  `type` enum('apartment','house','villa','commercial') NOT NULL,
  `status` enum('available','under_offer','sold') NOT NULL DEFAULT 'available',
  `created_at` datetime NOT NULL,
  `sold_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Properties_neighborhood_idx` (`neighborhood`),
  KEY `Properties_type_idx` (`type`),
  KEY `Properties_description_idx` (`description`(255)),
  KEY `Properties_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES ('27b97f2b-590f-11f0-9690-b81ea430f6c6','Modern Apartment','2 BHK apartment in city center','123 Street A','Downtown',7500000,'apartment','available','2025-07-05 01:13:27',NULL),('27b9876a-590f-11f0-9690-b81ea430f6c6','Luxury Villa','Spacious villa with pool','456 Avenue B','Uptown',25000000,'villa','available','2025-07-05 01:13:27',NULL),('27b98ba8-590f-11f0-9690-b81ea430f6c6','Commercial Shop','Prime location commercial property','789 Road C','Business Bay',12500000,'commercial','available','2025-07-05 01:13:27',NULL),('27b98d53-590f-11f0-9690-b81ea430f6c6','Elegant House','3 BHK with garden','321 Street D','Suburbia',9500000,'house','available','2025-07-05 01:13:27',NULL),('27b98eb2-590f-11f0-9690-b81ea430f6c6','Office Space','Modern office space','654 Avenue E','Business Bay',15000000,'commercial','available','2025-07-05 01:13:27',NULL),('27b98fe3-590f-11f0-9690-b81ea430f6c6','Seaside Villa','Luxury sea-facing villa','101 Beach Road','Seaview',30000000,'villa','available','2025-07-05 01:13:27',NULL),('27b9913c-590f-11f0-9690-b81ea430f6c6','Budget Apartment','1 BHK affordable apartment','213 Lane F','Downtown',5500000,'apartment','available','2025-07-05 01:13:27',NULL),('27b9924f-590f-11f0-9690-b81ea430f6c6','Family House','4 BHK house with backyard','421 Lane G','Suburbia',12000000,'house','available','2025-07-05 01:13:27',NULL),('27b9937b-590f-11f0-9690-b81ea430f6c6','Penthouse','Exclusive top floor penthouse','789 Highrise','Downtown',40000000,'apartment','available','2025-07-05 01:13:27',NULL),('27b994cb-590f-11f0-9690-b81ea430f6c6','Commercial Warehouse','Large storage warehouse','987 Industrial Area','Outskirts',10000000,'commercial','available','2025-07-05 01:13:27',NULL),('37c34567-680f-22g1-8790-c12ea440f7d9','Downtown Loft','Stylish loft with city views','987 Central Blvd','Downtown',8500000,'apartment','available','2025-07-10 10:00:00',NULL),('47d45678-770f-33h2-9891-d23fb551g8ea','Country Cottage','Cozy 2-bedroom cottage','123 Country Lane','Countryside',4200000,'house','sold','2025-07-11 11:20:00','2025-07-15 13:45:00'),('57e56789-880f-44i3-a992-e34gc662h9f1','Industrial Warehouse','Large warehouse space','456 Industrial Rd','Industrial Area',18000000,'commercial','under_offer','2025-07-12 09:10:00',NULL),('67f67890-990f-55j4-b993-f45hd773i0a2','Luxury Penthouse','Exclusive penthouse with rooftop pool','789 Skyline Dr','Downtown',49000000,'apartment','available','2025-07-13 15:30:00',NULL),('78g78901-101f-66k5-c994-g56ie884j1b3','Suburban Family Home','Spacious 5-bedroom home','321 Maple St','Suburbia',13000000,'house','available','2025-07-14 17:25:00',NULL),('a1d10101-1111-4444-aaaa-000000000001','Cozy Bungalow','Charming bungalow with garden','101 Oak St','Suburbia',5500000,'house','sold','2025-03-10 09:00:00','2025-06-01 10:30:00'),('a1d10102-1111-4444-aaaa-000000000002','Modern Condo','2 Bedroom condo downtown','202 Pine St','Downtown',7200000,'apartment','sold','2025-03-15 11:20:00','2025-06-05 13:00:00'),('a1d10103-1111-4444-aaaa-000000000003','Beachside Villa','Beach villa with sea view','303 Beachside Ave','Seaview',35000000,'villa','sold','2025-03-18 15:45:00','2025-06-10 14:50:00'),('a1d10104-1111-4444-aaaa-000000000004','Urban Loft','Open plan loft','404 Central Ave','Downtown',9000000,'apartment','sold','2025-03-20 10:00:00','2025-06-15 12:00:00'),('a1d10105-1111-4444-aaaa-000000000005','Country House','Spacious country house','505 Country Rd','Countryside',6800000,'house','sold','2025-03-22 08:30:00','2025-06-20 09:30:00'),('a1d10106-1111-4444-aaaa-000000000006','Luxury Penthouse','Top-floor penthouse with terrace','606 Skyline Blvd','Downtown',48000000,'apartment','sold','2025-03-25 14:00:00','2025-06-25 11:00:00'),('a1d10107-1111-4444-aaaa-000000000007','Suburban Family Home','4 BHK family home','707 Maple St','Suburbia',12500000,'house','sold','2025-03-27 13:15:00','2025-06-30 16:10:00'),('a1d10108-1111-4444-aaaa-000000000008','Downtown Studio','Compact studio apartment','808 5th Ave','Downtown',3200000,'apartment','sold','2025-03-29 09:45:00','2025-07-02 10:00:00'),('a1d10109-1111-4444-aaaa-000000000009','Luxury Villa','Villa with private pool','909 Palm Dr','Seaview',30000000,'villa','sold','2025-04-01 15:30:00','2025-07-05 14:00:00'),('a1d1010a-1111-4444-aaaa-00000000000a','Commercial Retail Space','Retail shop in prime location','1001 Market St','Business Bay',9500000,'commercial','sold','2025-04-03 10:00:00','2025-07-08 15:20:00'),('a1d1010b-1111-4444-aaaa-00000000000b','Modern House','Minimalist design 3 BHK','1102 River Rd','Suburbia',11500000,'house','sold','2025-04-05 11:00:00','2025-07-10 09:40:00'),('a1d1010c-1111-4444-aaaa-00000000000c','Seaside Apartment','Apartment with sea breeze','1203 Ocean Blvd','Seaview',7200000,'apartment','sold','2025-04-07 09:30:00','2025-07-12 14:55:00'),('a1d1010d-1111-4444-aaaa-00000000000d','Cozy Office Space','Small office in business district','1304 Corporate Ln','Business Bay',5500000,'commercial','sold','2025-04-09 14:10:00','2025-07-14 15:10:00'),('a1d1010e-1111-4444-aaaa-00000000000e','Family House','3 BHK with large garden','1405 Cedar St','Suburbia',10000000,'house','sold','2025-04-11 08:45:00','2025-07-16 10:30:00'),('a1d1010f-1111-4444-aaaa-00000000000f','Penthouse Suite','Luxury top-level suite','1506 Skyline Rd','Downtown',46000000,'apartment','sold','2025-04-13 12:00:00','2025-07-18 16:45:00'),('a1d10110-1111-4444-aaaa-000000000010','Suburban Condo','2 BHK condo near park','1607 Park Ln','Suburbia',6000000,'apartment','sold','2025-04-15 10:20:00','2025-07-20 13:00:00'),('a1d10111-1111-4444-aaaa-000000000011','Downtown Office','Modern office space','1708 Business Ave','Business Bay',12000000,'commercial','sold','2025-04-17 09:00:00','2025-07-22 11:15:00'),('a1d10112-1111-4444-aaaa-000000000012','Beach House','House near beach','1809 Beach Ave','Seaview',24000000,'villa','sold','2025-04-19 13:40:00','2025-07-24 14:30:00'),('a1d10113-1111-4444-aaaa-000000000013','Modern Apartment','Ideal for young professionals','1910 Elm St','Downtown',7000000,'apartment','sold','2025-04-21 11:10:00','2025-07-26 12:45:00'),('a1d10114-1111-4444-aaaa-000000000014','Cozy Shop','Retail space in suburb','2011 Oakwood Dr','Suburbia',4800000,'commercial','sold','2025-04-23 10:00:00','2025-07-28 09:50:00'),('a1d10115-1111-4444-aaaa-000000000015','Luxury Family Home','5 BHK, landscaped garden','2112 Pine St','Suburbia',16000000,'house','sold','2025-04-25 15:20:00','2025-07-30 15:30:00'),('a1d10116-1111-4444-aaaa-000000000016','Downtown Mansion','Sprawling property','2213 Grand Ave','Downtown',75000000,'villa','sold','2025-04-27 14:00:00','2025-08-01 16:00:00'),('a1d10117-1111-4444-aaaa-000000000017','Commercial Warehouse','Storage and distribution center','2314 Industrial Pkwy','Business Bay',18000000,'commercial','sold','2025-04-29 09:30:00','2025-08-03 09:30:00'),('a1d10118-1111-4444-aaaa-000000000018','Elegant Estate','Estate with private lake','2415 Lakeview Rd','Countryside',50000000,'villa','sold','2025-05-01 11:00:00','2025-08-05 11:45:00'),('a1d10119-1111-4444-aaaa-000000000019','Charming Apartment','Ideal starter home','2516 Willow St','Downtown',6800000,'apartment','sold','2025-05-03 08:35:00','2025-08-07 10:10:00'),('a1d1011a-1111-4444-aaaa-00000000001a','Family Townhouse','3-level townhouse','2617 Maplewood Ln','Suburbia',9000000,'house','sold','2025-05-05 09:50:00','2025-08-09 14:00:00'),('a1d1011b-1111-4444-aaaa-00000000001b','Seaside Penthouse','Penthouse overlooking ocean','2718 Coastal Rd','Seaview',45000000,'apartment','sold','2025-05-07 13:30:00','2025-08-11 15:30:00'),('a1d1011c-1111-4444-aaaa-00000000001c','Downtown Retail Store','Prominent retail space','2819 Commerce St','Business Bay',11000000,'commercial','sold','2025-05-09 10:00:00','2025-08-13 11:00:00');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_features`
--

DROP TABLE IF EXISTS `property_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_features` (
  `property_id` char(36) NOT NULL,
  `feature_id` char(36) NOT NULL,
  PRIMARY KEY (`property_id`,`feature_id`),
  KEY `feature_id` (`feature_id`),
  CONSTRAINT `property_features_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`),
  CONSTRAINT `property_features_ibfk_2` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_features`
--

LOCK TABLES `property_features` WRITE;
/*!40000 ALTER TABLE `property_features` DISABLE KEYS */;
INSERT INTO `property_features` VALUES ('27b98eb2-590f-11f0-9690-b81ea430f6c6','27bb8b46-590f-11f0-9690-b81ea430f6c6'),('27b9913c-590f-11f0-9690-b81ea430f6c6','27bb8b46-590f-11f0-9690-b81ea430f6c6'),('27b9924f-590f-11f0-9690-b81ea430f6c6','27bb8b46-590f-11f0-9690-b81ea430f6c6'),('27b97f2b-590f-11f0-9690-b81ea430f6c6','27bb8ed7-590f-11f0-9690-b81ea430f6c6'),('27b98ba8-590f-11f0-9690-b81ea430f6c6','27bb8ed7-590f-11f0-9690-b81ea430f6c6'),('27b98d53-590f-11f0-9690-b81ea430f6c6','27bb8ed7-590f-11f0-9690-b81ea430f6c6'),('27b9913c-590f-11f0-9690-b81ea430f6c6','27bb8ed7-590f-11f0-9690-b81ea430f6c6'),('27b97f2b-590f-11f0-9690-b81ea430f6c6','27bb8ff5-590f-11f0-9690-b81ea430f6c6'),('27b9937b-590f-11f0-9690-b81ea430f6c6','27bb8ff5-590f-11f0-9690-b81ea430f6c6'),('27b98ba8-590f-11f0-9690-b81ea430f6c6','27bb904f-590f-11f0-9690-b81ea430f6c6'),('27b9913c-590f-11f0-9690-b81ea430f6c6','27bb904f-590f-11f0-9690-b81ea430f6c6'),('27b98ba8-590f-11f0-9690-b81ea430f6c6','27bb948d-590f-11f0-9690-b81ea430f6c6'),('27b98fe3-590f-11f0-9690-b81ea430f6c6','27bb948d-590f-11f0-9690-b81ea430f6c6'),('27b97f2b-590f-11f0-9690-b81ea430f6c6','27bb95c6-590f-11f0-9690-b81ea430f6c6'),('27b98eb2-590f-11f0-9690-b81ea430f6c6','27bb96f8-590f-11f0-9690-b81ea430f6c6'),('27b9913c-590f-11f0-9690-b81ea430f6c6','27bb96f8-590f-11f0-9690-b81ea430f6c6'),('27b9924f-590f-11f0-9690-b81ea430f6c6','27bb96f8-590f-11f0-9690-b81ea430f6c6'),('27b98d53-590f-11f0-9690-b81ea430f6c6','27bb9779-590f-11f0-9690-b81ea430f6c6'),('27b98eb2-590f-11f0-9690-b81ea430f6c6','27bb9779-590f-11f0-9690-b81ea430f6c6'),('27b994cb-590f-11f0-9690-b81ea430f6c6','27bb9779-590f-11f0-9690-b81ea430f6c6'),('37c34567-680f-22g1-8790-c12ea440f7d9','37c56789-680f-22g1-8790-c12ea440f7db'),('47d45678-770f-33h2-9891-d23fb551g8ea','47d67890-770f-33h2-9891-d23fb551g8ec'),('57e56789-880f-44i3-a992-e34gc662h9f1','57e78901-880f-44i3-a992-e34gc662h9f3'),('67f67890-990f-55j4-b993-f45hd773i0a2','67f89012-990f-55j4-b993-f45hd773i0a4'),('78g78901-101f-66k5-c994-g56ie884j1b3','78g90123-101f-66k5-c994-g56ie884j1b5');
/*!40000 ALTER TABLE `property_features` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-27 21:39:11
