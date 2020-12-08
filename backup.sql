-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: lib
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `book_register`
--

DROP TABLE IF EXISTS `book_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_register` (
  `ACC_NO` varchar(30) DEFAULT NULL,
  `ISBN_NO` varchar(20) NOT NULL,
  `BOOK_TITLE` varchar(50) DEFAULT NULL,
  `BOOK_TYPE` varchar(20) DEFAULT NULL,
  `AUTHOR_NAME` varchar(50) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `PUR_DATE` date DEFAULT NULL,
  `EDITION` varchar(10) NOT NULL,
  `BILL_NO` varchar(25) NOT NULL,
  `PUB_NAME` varchar(35) NOT NULL,
  `PUB_ADRESS` varchar(65) DEFAULT NULL,
  `EMAIL_ID` varchar(25) DEFAULT NULL,
  `CONTACT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ISBN_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_register`
--

LOCK TABLES `book_register` WRITE;
/*!40000 ALTER TABLE `book_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_form`
--

DROP TABLE IF EXISTS `cd_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_form` (
  `TITLE` varchar(50) NOT NULL,
  `CATEGORY` varchar(20) NOT NULL,
  `LANGUAGE` varchar(25) NOT NULL,
  `NO_DISC` int(11) NOT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `DATE_OF_RECEIPT` date NOT NULL,
  `PUB_DATE` date DEFAULT NULL,
  `EDITION` varchar(10) DEFAULT NULL,
  `BILL_NO` varchar(50) NOT NULL,
  `PUB_NAME` varchar(65) DEFAULT NULL,
  `EMAIL_ID` varchar(25) DEFAULT NULL,
  `CONTACT_NO` int(11) DEFAULT NULL,
  `pub_address` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_form`
--

LOCK TABLES `cd_form` WRITE;
/*!40000 ALTER TABLE `cd_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_paper`
--

DROP TABLE IF EXISTS `exam_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_paper` (
  `SUBJECT` varchar(20) NOT NULL,
  `CLASS` varchar(20) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `NO_PAGES` int(11) DEFAULT NULL,
  `PUBLISHERS` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_paper`
--

LOCK TABLES `exam_paper` WRITE;
/*!40000 ALTER TABLE `exam_paper` DISABLE KEYS */;
INSERT INTO `exam_paper` VALUES ('MATHS','Class 12 Sc',2015,100,'CBSE'),('IP','Class 12 Sc',2016,35,'CBSE');
/*!40000 ALTER TABLE `exam_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_master`
--

DROP TABLE IF EXISTS `issue_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_master` (
  `STUDENT_ID` int(11) DEFAULT NULL,
  `STUDENT_NAME` varchar(50) NOT NULL,
  `CLASS` varchar(25) NOT NULL,
  `BOOK_NO` varchar(15) NOT NULL,
  `BOOK_TITLE` varchar(50) NOT NULL,
  `ISSUE_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_master`
--

LOCK TABLES `issue_master` WRITE;
/*!40000 ALTER TABLE `issue_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pass`
--

DROP TABLE IF EXISTS `pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pass` (
  `uname` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `sq` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pass`
--

LOCK TABLES `pass` WRITE;
/*!40000 ALTER TABLE `pass` DISABLE KEYS */;
INSERT INTO `pass` VALUES ('TRISHANT','TRI','PHYSICS'),('RISHABH','1234','MATHS');
/*!40000 ALTER TABLE `pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_master`
--

DROP TABLE IF EXISTS `return_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_master` (
  `BOOK_NO` int(11) DEFAULT NULL,
  `BOOK_TITLE` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(25) NOT NULL,
  `ISSUE_DATE` date NOT NULL,
  `DUE_DATE` date NOT NULL,
  `RETURN_DATE` date NOT NULL,
  `FINE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_master`
--

LOCK TABLES `return_master` WRITE;
/*!40000 ALTER TABLE `return_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_register`
--

DROP TABLE IF EXISTS `staff_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_register` (
  `STAFF_ID` varchar(35) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESIGNATION` varchar(35) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_register`
--

LOCK TABLES `staff_register` WRITE;
/*!40000 ALTER TABLE `staff_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_register`
--

DROP TABLE IF EXISTS `student_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_register` (
  `STUDENT_ID` varchar(35) NOT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `CLASS` varchar(25) NOT NULL,
  `ROLL_NO` varchar(25) NOT NULL,
  `ADDRESS` varchar(56) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_register`
--

LOCK TABLES `student_register` WRITE;
/*!40000 ALTER TABLE `student_register` DISABLE KEYS */;
INSERT INTO `student_register` VALUES ('01','MALE','RISAHBH SINGHAL','Class 12','27','NEW DELHI'),('02','MALE','TRISHANT SHARMA','Class 12','35','NEW DELHI'),('03','MALE','TRISHANT','Class 12','35','NEW DELHI');
/*!40000 ALTER TABLE `student_register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-29 14:16:19
