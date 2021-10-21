-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: ashu
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `approve`
--

DROP TABLE IF EXISTS `approve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `approve` (
  `candidate_id` int NOT NULL,
  PRIMARY KEY (`candidate_id`),
  CONSTRAINT `approve_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approve`
--

LOCK TABLES `approve` WRITE;
/*!40000 ALTER TABLE `approve` DISABLE KEYS */;
INSERT INTO `approve` VALUES (116);
/*!40000 ALTER TABLE `approve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `candidate_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `party_name` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_no` bigint DEFAULT NULL,
  `pin_code` bigint DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirmpassword` varchar(50) DEFAULT NULL,
  `election_region` varchar(100) DEFAULT NULL,
  `securityQuestion` varchar(500) DEFAULT NULL,
  `securityAnswer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`candidate_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (114,'Santosh','Kumar','Panchanand Choudhary','2021-09-23','Bihar','Purnia','BJP','Mahakal Chowk','ashu@gmail.com',9931358763,12345,'Ashu','M','178766','12345','Bihar','What is your favorite movie?','Sole'),(116,'Narendra','Modi','Mahesh','2021-05-25','Gujrat','Gandhinagar','BJP','Gujrat','narendramodi@gmail.com',9876543210,453289,'Narendr12','Male','123','123','Gujrat','What was your first car?','Audi'),(120,'Aman','Thakur','Rajak','2021-10-27','West Bengal','Durgapur','AAP','Durgapur','aman@gmail.com',5653425251,12345,'AMAN','Male','987','987','West Bengal','What is your favorite movie?','Durgapur'),(121,'Saurabh','Kumar','Ramanad kumar','2021-10-13','West Bengal','Durgapur','HUM','Durgapur','saurabh@gmail.com',9876543210,12345,'SAURABH12','Male','123','123','West Benagl','What was your first car?','Nano'),(122,'Aman','Raj','Amit','2021-10-21','Bihar','Purnia','CON','Bihar','aman@gmail.com',5653425243,565656,'Aman12','Male','123','123','Bihar','What was your favorite school teachers name?','Anil'),(123,'Manitosh','Paul','Rakesh','2021-10-20','Jharkhand','Jharkhand','CONG','Jharkhand','manitosh@gmail.com',7519982567,896552,'manitosh','Male','123','123','Jharkhand','What was your first car?','Nano'),(124,'Amit','Thakur','Rohan','2021-10-26','Bihar','Purnia','AAK','Gaya','amit@gmail.com',1234567890,343536,'Amit','Male','123','123','GAYA','What was your first car?','Nano');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_message`
--

DROP TABLE IF EXISTS `candidate_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_message` (
  `candiadte_id` bigint NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`candiadte_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_message`
--

LOCK TABLES `candidate_message` WRITE;
/*!40000 ALTER TABLE `candidate_message` DISABLE KEYS */;
INSERT INTO `candidate_message` VALUES (3,' ssfds'),(114,' What is place of metting'),(120,' What is the date of election?'),(121,' what is revised date of election?'),(123,' What is my sign?'),(124,' GAGGHSGS  JHSHHA');
/*!40000 ALTER TABLE `candidate_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promise`
--

DROP TABLE IF EXISTS `promise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promise` (
  `candidate_id` bigint NOT NULL,
  `promises` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promise`
--

LOCK TABLES `promise` WRITE;
/*!40000 ALTER TABLE `promise` DISABLE KEYS */;
INSERT INTO `promise` VALUES (3,' Free water'),(4,' 1.Free Electricity \r\n2.Youth Job\r\n3.Free wifi (Life time tik tok dekho or dance karo)'),(114,' Free electricity'),(120,' Free water Supply'),(121,' Free electricity\r\nWater supply'),(123,' Free wifi in whole city'),(124,' Free land for poor');
/*!40000 ALTER TABLE `promise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `voter_id` bigint NOT NULL,
  `candidate_id` bigint DEFAULT NULL,
  PRIMARY KEY (`voter_id`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`voter_id`) REFERENCES `voter` (`voter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,114),(2,114),(4,114),(13,116);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup` (
  `First_name` varchar(30) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `D_O_B` varchar(20) DEFAULT NULL,
  `M_o_b` bigint DEFAULT NULL,
  `Fathers_name` varchar(30) DEFAULT NULL,
  `Gender` varchar(2) DEFAULT NULL,
  `Blood_group` varchar(2) DEFAULT NULL,
  `Board10` varchar(5) DEFAULT NULL,
  `Marks10` int DEFAULT NULL,
  `Year10` int DEFAULT NULL,
  `Board12` varchar(5) DEFAULT NULL,
  `Marks12` int DEFAULT NULL,
  `Year12` int DEFAULT NULL,
  `Courses` varchar(20) DEFAULT NULL,
  `College_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobileNumber` bigint DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `adddress` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Ashutosh Kumar choudhary','ashutoshpurnea4@gmail.com',7519982575,'What was your first car?','delhi','123456789','','','',''),('Manitosh Paul','manitosh@gmail.com',7862187781,'What city were you born in?','jamshedpur','98765','','','',''),('Randhir Kumar','randhir@gmail.com',7519982575,'What was your first car?','audi','98765','','','',''),('Santosh Kumar','san@gmail.com',8051444189,'What','amit','Santosh','','','',''),('Saurabh Choudhary','saurabh@gmail.com',7519982575,'What was your favorite movie?','sole','12345','','','','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voter` (
  `voter_id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL,
  `pin_code` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirmpassword` varchar(50) DEFAULT NULL,
  `securityQuestion` varchar(500) DEFAULT NULL,
  `securityAnswer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`voter_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
INSERT INTO `voter` VALUES (1,'aaa','asas','Panchanand Choudhary','2021-09-17','asa','fveer','Gandhinagar Madhubani','ashutoshpurnea4@gmail.com','7519982575','1212','sasa','M','12345','asas','What was your favorite school teachers name?','Biharsda'),(2,'aaa','asas','purnia','','asa','fveer','dasdac','ashutoshpurnea4@gmail.com','7519982575','1212','alll','M','123','345','What was your favorite school teachers name?','asas'),(4,'aaa','asas','fgfgfg','2021-09-08','asa','fveer','dasdac','ashutoshpurnea4@gmail.com','7519982575','1212','Ak','M','1234','0987','What was your first car?','56325'),(5,'aaa','asas','asa','','asa','fveer','dasdac','ashutoshpurnea4@gmail.com','7519982575','1212','new','M','123','123','What is your date of birth?','as'),(6,'Ram','Jha','Shayama','2021-10-22','Bihar','Purnia','Noida','ram@gmail.com','1234567890','12345','KKKK','Female','321','321','What is your favorite movie?','Patna'),(7,'Raju','Kumar','Raman','2021-10-22','Bihar','Purnia','New Town','ram@gmail.com','9931358761234567890','12345','Ram1234','Male','12345','12345','What was your first car?','Audi'),(8,'Rahul','Rajak','Ram Das','2021-10-14','Bihar','Gaya','New Town','rahul@gmail.com','1234565433','987654','RAHUL','Male','123','123','What was your first car?','nano'),(9,'Raju','Kumar','Raman Jha','2021-10-28','Bihar','Gaya','Hall town','raju@gamil.com','1234567890','805433','RAJU12','Male','123','123','What was your first car?','AUDI'),(10,'Amit','Raj','Rohan ','2021-10-26','West Bengal','Durgapur','Durgapur','amit@gmail.com','1234567890','12345','AMIT','Male','123','123','What is your favorite movie?','Sole'),(11,'Rakesh ','Kumar','Ramesh','2021-10-11','Bihar','Purnia','Bihar','rakesh@gmail.com','1234567890','343456','RAKESH12','Male','123','123','What was your first car?','Nano'),(12,'Rohan','Das','Rakesh','2021-10-26','Goa','Goa','Goa','Rohan@gmail.com','987654908','89765','rohan','Male','123','123','What is your favorite movie?','goa'),(13,'Randhir','Kumar','Rakesh','2021-10-18','Bihar','Gaya','Gaya','randhir@gmail.com','123456789','345678','Randhir','Male','123','123','What was your first car?','Nano');
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter_message`
--

DROP TABLE IF EXISTS `voter_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voter_message` (
  `voter_id` bigint NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`voter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter_message`
--

LOCK TABLES `voter_message` WRITE;
/*!40000 ALTER TABLE `voter_message` DISABLE KEYS */;
INSERT INTO `voter_message` VALUES (1,' What is my name'),(2,' What is your name'),(3,' sdsdsd'),(4,' Ashutosh'),(8,' Which is date of election?'),(9,' WHAT IS DATE OF ELLECTION'),(10,'  What is region of election?'),(11,'jasbjbs'),(12,' What is name of upcoming election?'),(13,' What is name of elction????'),(114,' Ashutosh Kumar Choudhary'),(121,' What is my name');
/*!40000 ALTER TABLE `voter_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-21 19:45:50
