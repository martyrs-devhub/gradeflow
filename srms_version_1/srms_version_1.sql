-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: srms_version_1
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.22.04.1

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
-- Table structure for table `CourseUnits`
--

DROP TABLE IF EXISTS `CourseUnits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CourseUnits` (
  `CourseUnitId` int NOT NULL AUTO_INCREMENT,
  `CourseUnitName` varchar(100) NOT NULL,
  `CourseUnitCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LecturerID` int DEFAULT NULL,
  PRIMARY KEY (`CourseUnitId`),
  UNIQUE KEY `unique_courseunit_name` (`CourseUnitName`),
  UNIQUE KEY `unique_courseunit_Code` (`CourseUnitCode`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseUnits`
--

LOCK TABLES `CourseUnits` WRITE;
/*!40000 ALTER TABLE `CourseUnits` DISABLE KEYS */;
INSERT INTO `CourseUnits` (`CourseUnitId`, `CourseUnitName`, `CourseUnitCode`, `Creationdate`, `UpdationDate`, `LecturerID`) VALUES (4,'Computer Science','CS111','2024-04-25 10:30:57',NULL,NULL),(5,'Fundamentals Of Networking','CISCO201','2024-04-25 10:30:57',NULL,NULL),(12,'Programming Methodologies','PG129','2024-11-06 17:35:17',NULL,NULL),(14,'Seminar Series','SEMS6518','2024-11-06 19:05:28',NULL,NULL),(15,'Research Methodologies','REM2919','2024-11-07 09:46:59',NULL,NULL),(17,'Research Methodologies 3','REM301','2024-11-11 13:02:08','2024-11-14 13:22:24',31),(18,'Web Authoring ','WEBA5691','2024-11-12 09:06:55','2024-11-12 09:36:27',31),(20,'Principles Of Marketting','POM2024','2024-11-17 17:25:50','2024-11-17 17:25:50',33),(21,'Intermediate Accounting','IA2024','2024-11-17 17:26:28','2024-11-17 17:26:28',1),(22,'Programming in PHP','MTH011','2024-11-21 15:12:08','2024-11-21 15:12:08',1),(23,'Development Research Project','DRP','2025-01-14 15:47:40','2025-01-14 15:47:40',33);
/*!40000 ALTER TABLE `CourseUnits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `StudentId` int NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) DEFAULT NULL,
  `RegistrationNumber` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `CourseId` int DEFAULT NULL,
  `RegistrationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`StudentId`),
  UNIQUE KEY `unique_registration_number` (`RegistrationNumber`),
  UNIQUE KEY `unique_student_email` (`StudentEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` (`StudentId`, `StudentName`, `RegistrationNumber`, `StudentEmail`, `Gender`, `DOB`, `CourseId`, `RegistrationDate`, `UpdationDate`, `Status`) VALUES (1,'Sarita Joan Anita','2023-D011-14011','sarita@stud.umu.ac.ug','Female','1995-03-03',1,'2024-04-20 10:30:57',NULL,1),(2,'Anuj kumar','2023-BSIT-10000','anujkumar@stud.umu.ac.ug','Male','1995-02-02',2,'2024-04-24 10:30:57',NULL,0),(7,'Bamusubire James','2021-BSIT-10101','james.bamusubire@stud.umu.ac.ug','Male','1999-10-01',2,'2024-11-06 15:55:13',NULL,1),(8,'Amanyire Josua Muhinda','2023-D011-10121','amanyire.joshua@stud.umu.ac.ug','Male','2000-09-19',1,'2024-11-06 17:28:02',NULL,1),(9,'Namukasa Gloria','2023-D011-11111','gloria.namukasa@stud.umu.ac.ug','Female','2000-01-27',1,'2024-11-07 11:39:43',NULL,1),(10,'Nakalema Mildred','2023-D011-10324','nakalema.mildred@stud.umu.ac.ug','Female','2000-12-25',1,'2024-11-07 18:12:34',NULL,1),(12,'Rukundo Francis','2023-BSIT-10010','rukundo.francis@stud.umu.ac.ug','Female','',11,'2024-11-12 08:46:49','2025-01-27 08:28:04',NULL),(13,'Ankunda Rebecca','2023-B021-12180','ankunda.rebecca@stud.umu.ac.ug','Female','2003-03-19',16,'2024-11-17 17:23:40','2024-11-17 17:23:40',1),(14,'Mulumba Moses','2023-D011-13742','mulumba.moses@stud.umu.ac.ug','Male','1999-10-18',11,'2024-11-17 19:40:51','2024-11-17 19:40:51',1),(15,'Murungi Daniel','2023-BSS01-10123','murungi.daniel@stud.umu.ac.ug','Male','1999-01-12',14,'2024-11-20 09:56:09','2024-11-20 09:56:09',1),(16,'Nalubega Maria Gonzaga','2023-BBAM-10205','nalubega.maria@stud.umu.ac.ug','Female','1999-02-27',16,'2024-12-18 18:11:38','2024-12-18 18:11:38',1);
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `adminEmail` varchar(100) NOT NULL,
  `role` varchar(25) DEFAULT NULL,
  `contacts` varchar(15) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_username` (`UserName`),
  UNIQUE KEY `unique_admin_email` (`adminEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `UserName`, `Password`, `adminEmail`, `role`, `contacts`, `updationDate`) VALUES (1,'Kalema Peter','202cb962ac59075b964b07152d234b70','pkalema@umu.ac.ug','Administrator','+256-705722053','2024-11-12 11:12:51'),(2,'Mugabi Ivan','b91e5e5a62bf7fa4a5cafb77d6f36f0c','ivanm@umu.ac.ug','Administrator','+256-701453678','2024-11-12 11:00:45'),(31,'Nakawesi Esther','202cb962ac59075b964b07152d234b70','nesther@umu.ac.ug','Head of Department','+256-768472820',NULL),(33,'Moses Mulumba','202cb962ac59075b964b07152d234b70','mulumbam@umu.ac.ug','Research Assistant','+256-764082235',NULL),(34,'Amanyire Joshua','202cb962ac59075b964b07152d234b70','amanyirej@umu.ac.ug','Research Assistant','+256-709978678',NULL),(35,'nambuusi judith','202cb962ac59075b964b07152d234b70','nambuusijudith@umu.ac.ug','Dean','0774354566','2024-11-21 15:17:32');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course&courseunit_combination`
--

DROP TABLE IF EXISTS `course&courseunit_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course&courseunit_combination` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CourseId` int DEFAULT NULL,
  `CourseUnitId` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course&courseunit_combination`
--

LOCK TABLES `course&courseunit_combination` WRITE;
/*!40000 ALTER TABLE `course&courseunit_combination` DISABLE KEYS */;
INSERT INTO `course&courseunit_combination` (`id`, `CourseId`, `CourseUnitId`, `status`, `CreationDate`, `Updationdate`) VALUES (1,1,1,1,'2024-05-01 10:30:57','2024-11-07 09:45:13'),(2,2,2,1,'2024-05-01 10:30:57','2024-06-07 04:28:00'),(32,1,1,1,'2024-11-07 08:58:36',NULL),(33,2,1,1,'2024-11-07 08:58:51',NULL),(34,2,15,1,'2024-11-07 11:41:55',NULL),(35,2,14,1,'2024-11-07 15:15:22',NULL),(36,14,15,1,'2024-11-11 13:26:33',NULL),(37,16,20,1,'2024-11-17 17:29:15','2024-11-17 17:29:15'),(38,16,21,1,'2024-11-17 19:03:52','2024-11-17 19:03:52'),(39,11,1,1,'2024-11-17 19:41:07','2024-11-17 19:41:07'),(40,11,5,1,'2024-11-17 21:58:47','2024-11-17 21:58:47'),(41,11,4,1,'2024-12-02 20:28:01','2024-12-02 20:28:01');
/*!40000 ALTER TABLE `course&courseunit_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(80) DEFAULT NULL,
  `CourseCode` varchar(10) DEFAULT NULL,
  `Faculty` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` (`id`, `CourseName`, `CourseCode`, `Faculty`, `CreationDate`, `UpdationDate`) VALUES (11,'Bachelors In Computer Science','BSCS1','1','2024-11-08 11:26:48','2025-02-22 13:06:38'),(13,'Bachelors In Social Work','BSSW','7','2024-11-08 11:57:59','2024-11-12 10:56:22'),(14,'Bachelors In Statistics','BSIS','1','2024-11-08 12:03:24','2024-11-12 10:55:45'),(15,'Bachelor of Nursing Sciences','BSNS322','10','2024-11-12 10:03:31','2024-11-12 10:03:31'),(16,'Bachelors Of Business Administration And Management','BAM','5 ','2024-11-17 17:21:21','2024-11-17 17:21:21');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculties` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` (`faculty_id`, `faculty_name`, `created_at`, `updated_at`) VALUES (1,'Faculty of Science','2024-11-12 09:58:32','2024-11-12 09:58:32'),(2,'Faculty of Law','2024-11-12 09:58:32','2024-11-12 09:58:32'),(3,'Faculty of Education','2024-11-12 09:58:32','2024-11-12 09:58:32'),(4,'Faculty of Agriculture','2024-11-12 09:58:32','2024-11-12 09:58:32'),(5,'Faculty of Business Administration and Management','2024-11-12 09:58:32','2024-11-12 09:58:32'),(6,'Institute of Languages and Communication Studies','2024-11-12 09:58:32','2024-11-12 09:58:32'),(7,'School of Arts and Social Studies','2024-11-12 09:58:32','2024-11-12 09:58:32'),(8,'Faculty of Built Environment','2024-11-12 09:58:32','2024-11-12 09:58:32'),(9,'Directorate of Postgraduate Studies, Research and Enterprise','2024-11-12 09:58:32','2024-11-12 09:58:32'),(10,'Faculty of Health Science','2024-11-12 09:58:32','2024-11-12 09:58:32'),(11,'Faculty of Engineering and Applied Sciences','2024-11-12 09:58:32','2024-11-12 09:58:32');
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noticeTitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `noticeDetails` mediumtext COLLATE utf8mb4_general_ci,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES (2,'Notice regarding result Delearation','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit ut aliquam purus. Vel risus commodo viverra maecenas. Et netus et malesuada fames ac turpis egestas sed. Cursus eget nunc scelerisque viverra mauris in aliquam sem fringilla. Ornare arcu odio ut sem nulla pharetra diam. Vel pharetra vel turpis nunc eget lorem dolor sed. Velit ut tortor pretium viverra suspendisse. In ornare quam viverra orci sagittis eu. Viverra tellus in hac habitasse. Donec massa sapien faucibus et molestie. Libero justo laoreet sit amet cursus sit amet dictum. Dignissim diam quis enim lobortis scelerisque fermentum dui.\r\n\r\nEget nulla facilisi etiam dignissim. Quisque non tellus orci ac. Amet cursus sit amet dictum sit amet justo donec. Interdum velit euismod in pellentesque massa. Condimentum lacinia quis vel eros donec ac odio. Magna eget est lorem ipsum dolor. Bibendum at varius vel pharetra vel turpis nunc eget lorem. Pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Massa tincidunt dui ut ornare lectus sit amet est placerat. Nisi quis eleifend quam adipiscing vitae.','2024-05-01 14:34:58'),(3,'Test Notice','This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  ','2024-05-02 14:48:32'),(7,'management','management meeting starts at 2pm','2025-02-25 14:02:46');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `RegistrationNumber` varchar(100) DEFAULT NULL,
  `CourseId` int DEFAULT NULL,
  `CourseunitId` int DEFAULT NULL,
  `CourseWorkmarks` int DEFAULT NULL,
  `FinalAssesmentmarks` int DEFAULT NULL,
  `Year` int DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TotalMarks` int DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` (`id`, `RegistrationNumber`, `CourseId`, `CourseunitId`, `CourseWorkmarks`, `FinalAssesmentmarks`, `Year`, `PostingDate`, `UpdationDate`, `TotalMarks`, `Grade`) VALUES (1,'12',11,5,30,32,2,'2024-11-17 21:59:14','2024-11-17 21:59:14',62,NULL),(2,'12',11,5,30,32,2,'2024-11-20 09:51:46','2024-11-20 09:51:46',62,NULL),(3,'14',11,5,45,50,2,'2024-11-20 09:53:26','2024-11-20 09:53:26',95,NULL),(4,'15',14,15,35,40,1,'2024-11-20 09:56:51','2024-11-20 09:56:51',75,NULL),(5,'16',16,21,45,43,2,'2024-12-18 18:13:16','2024-12-18 18:13:16',88,NULL),(6,'15',14,15,40,40,1,'2025-01-16 07:50:11','2025-01-16 07:50:11',80,NULL),(7,'13',16,21,25,30,2,'2025-01-18 07:02:23','2025-01-18 07:04:49',55,NULL),(8,'12',11,5,67,67,1,'2025-02-25 14:00:01','2025-02-25 14:00:01',134,NULL);
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(100) NOT NULL,
  `faculty` varchar(100) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `role`, `faculty`, `created_date`) VALUES (1,'Administrator','Engineering','2024-11-06 14:51:43'),(2,'Lecturer','Business','2024-11-06 14:51:43'),(3,'Dean','Science','2024-11-06 14:51:43'),(4,'Head of Department','Law','2024-11-06 14:51:43'),(5,'Assistant Lecturer','Engineering','2024-11-06 14:51:43'),(6,'Lab Technician','Science','2024-11-06 14:51:43'),(7,'Counselor','Humanities','2024-11-06 14:51:43'),(8,'Registrar','Business','2024-11-06 14:51:43'),(9,'Student','Law','2024-11-06 14:51:43'),(10,'Research Assistant','Science','2024-11-06 14:51:43');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'srms_version_1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-02 22:25:10
