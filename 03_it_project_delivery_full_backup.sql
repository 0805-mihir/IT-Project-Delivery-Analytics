-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: it_project_delivery
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `Client_ID` varchar(10) NOT NULL,
  `Client_Name` varchar(100) DEFAULT NULL,
  `Industry` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Contact_Person` varchar(100) DEFAULT NULL,
  `Project_Count` int DEFAULT NULL,
  `Contract_Value` decimal(12,2) DEFAULT NULL,
  `Client_Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Client_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('CL001','TechNova Solutions','IT Services','Ahmedabad','Rahul Shah',1,65000.00,'Active'),('CL002','GreenLeaf Industries','Manufacturing','Vadodara','Priya Patel',1,125000.00,'Active'),('CL003','ShopEase Retail','Retail','Surat','Amit Desai',1,95000.00,'Active'),('CL004','FinEdge Consultants','Finance','Gandhinagar','Neha Mehta',1,150000.00,'Active'),('CL005','PrimeStock Traders','Trading','Rajkot','Karan Joshi',1,85000.00,'Active'),('CL006','Bright Future Academy','Education','Ahmedabad','Sonal Trivedi',1,110000.00,'Active'),('CL007','BlueSky Enterprises','IT Services','Vadodara','Rohan Shah',1,50000.00,'Active'),('CL008','QuickBook Services','Travel','Surat','Anjali Patel',1,90000.00,'Active'),('CL009','HelpDesk Pro','IT Services','Ahmedabad','Vikas Parmar',1,85000.00,'Active'),('CL010','PayRight Solutions','Finance','Mumbai','Riya Shah',1,75000.00,'Active'),('CL011','StayComfort Hotels','Hospitality','Ahmedabad','Manish Patel',1,135000.00,'Active'),('CL012','HealthFirst Group','Healthcare','Vadodara','Dr. Kavita Shah',1,180000.00,'Active'),('CL013','LearnSphere Institute','Education','Surat','Hemal Desai',1,105000.00,'Active'),('CL014','FoodServe Restaurant','Hospitality','Ahmedabad','Dev Joshi',1,70000.00,'Active'),('CL015','PropertyLink Realty','Real Estate','Gandhinagar','Pooja Mehta',1,145000.00,'Active'),('CL016','TravelMate Agency','Travel','Mumbai','Nirav Shah',1,120000.00,'Active'),('CL017','FreshCart Market','Retail','Ahmedabad','Krupa Patel',1,130000.00,'Active'),('CL018','PeopleFirst HR','HR Services','Vadodara','Jay Mehta',1,100000.00,'Active'),('CL019','TrackWise Logistics','Logistics','Surat','Hardik Shah',1,80000.00,'Active'),('CL020','DigiGrowth Media','Digital Marketing','Ahmedabad','Mitali Joshi',1,95000.00,'Active');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `Project_ID` varchar(10) NOT NULL,
  `Project_Name` varchar(100) DEFAULT NULL,
  `Client_ID` varchar(10) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Project_Budget` decimal(12,2) DEFAULT NULL,
  `Actual_Cost` decimal(12,2) DEFAULT NULL,
  `Project_Status` varchar(30) DEFAULT NULL,
  `Priority` varchar(20) DEFAULT NULL,
  `Budget_Difference` decimal(12,2) DEFAULT NULL,
  `Budget_Status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Project_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('PRJ001','Website Development','CL001','2026-08-05','2026-09-20',65000.00,62000.00,'Completed','High',-3000.00,'Under Budget'),('PRJ002','Mobile Application Development','CL002','2026-08-12','2026-10-15',125000.00,118000.00,'Completed','High',-7000.00,'Under Budget'),('PRJ003','E-commerce Website','CL003','2026-08-20','2026-10-10',95000.00,102000.00,'Delayed','High',7000.00,'Over Budget'),('PRJ004','CRM Software Development','CL004','2026-09-01','2026-10-25',150000.00,145000.00,'Completed','Medium',-5000.00,'Under Budget'),('PRJ005','Inventory Management System','CL005','2026-09-10','2026-10-30',85000.00,92000.00,'Delayed','Medium',7000.00,'Over Budget'),('PRJ006','School Management Software','CL006','2026-09-15','2026-10-28',110000.00,105000.00,'Completed','High',-5000.00,'Under Budget'),('PRJ007','Business Website Redesign','CL007','2026-10-01','2026-10-31',50000.00,48000.00,'Completed','Low',-2000.00,'Under Budget'),('PRJ008','Online Booking System','CL008','2026-10-05','2026-10-31',90000.00,94000.00,'Delayed','Medium',4000.00,'Over Budget'),('PRJ009','Customer Support Portal','CL009','2026-11-01','2026-12-15',85000.00,25000.00,'In Progress','High',-60000.00,'Under Budget'),('PRJ010','Payroll Management Software','CL010','2026-11-03','2026-12-20',75000.00,18000.00,'In Progress','Medium',-57000.00,'Under Budget'),('PRJ011','Hotel Management System','CL011','2026-11-04','2027-01-10',135000.00,35000.00,'In Progress','High',-100000.00,'Under Budget'),('PRJ012','Healthcare Management Platform','CL012','2026-11-05','2027-01-20',180000.00,45000.00,'In Progress','High',-135000.00,'Under Budget'),('PRJ013','Online Learning Platform','CL013','2026-11-07','2026-12-30',105000.00,30000.00,'In Progress','Medium',-75000.00,'Under Budget'),('PRJ014','Restaurant Billing Software','CL014','2026-11-10','2026-12-25',70000.00,12000.00,'In Progress','Low',-58000.00,'Under Budget'),('PRJ015','Real Estate Management Portal','CL015','2026-11-12','2027-01-25',145000.00,20000.00,'In Progress','High',-125000.00,'Under Budget'),('PRJ016','Travel Booking Application','CL016','2026-11-15','2027-01-15',120000.00,10000.00,'In Progress','Medium',-110000.00,'Under Budget'),('PRJ017','Online Grocery Platform','CL017','2026-12-01','2027-02-28',130000.00,0.00,'Planned','High',-130000.00,'Under Budget'),('PRJ018','Employee Management System','CL018','2026-12-10','2027-03-10',100000.00,0.00,'Planned','Medium',-100000.00,'Under Budget'),('PRJ019','Inventory Tracking Software','CL019','2027-01-05','2027-03-20',80000.00,0.00,'Planned','Low',-80000.00,'Under Budget'),('PRJ020','Digital Marketing Analytics Tool','CL020','2027-01-15','2027-03-31',95000.00,0.00,'Planned','High',-95000.00,'Under Budget');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `Task_ID` varchar(10) NOT NULL,
  `Project_ID` varchar(10) DEFAULT NULL,
  `Task_Name` varchar(150) DEFAULT NULL,
  `Assigned_To` varchar(100) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Task_Status` varchar(30) DEFAULT NULL,
  `Priority` varchar(20) DEFAULT NULL,
  `Estimated_Hours` int DEFAULT NULL,
  `Actual_Hours` int DEFAULT NULL,
  `Hours_Difference` int DEFAULT NULL,
  `Efficiency_Status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Task_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES ('TSK001','PRJ001','Requirement Gathering','Rahul Mehta','2026-08-05','2026-08-07','Completed','High',8,7,-1,'Under Time'),('TSK002','PRJ002','UI/UX Design','Priya Shah','2026-08-12','2026-08-18','Completed','High',16,15,-1,'Under Time'),('TSK003','PRJ003','Frontend Development','Amit Patel','2026-08-20','2026-09-05','Delayed','High',30,38,8,'Over Time'),('TSK004','PRJ004','Database Design','Neha Joshi','2026-09-01','2026-09-08','Completed','Medium',12,11,-1,'Under Time'),('TSK005','PRJ005','Backend Development','Karan Shah','2026-09-10','2026-09-25','Delayed','High',35,42,7,'Over Time'),('TSK006','PRJ006','Software Testing','Sonal Patel','2026-09-15','2026-09-25','Completed','Medium',20,18,-2,'Under Time'),('TSK007','PRJ007','Website Redesign','Rohan Mehta','2026-10-01','2026-10-15','Completed','Low',18,16,-2,'Under Time'),('TSK008','PRJ008','Payment Integration','Anjali Shah','2026-10-05','2026-10-20','Delayed','High',24,30,6,'Over Time'),('TSK009','PRJ009','API Development','Vikas Patel','2026-11-01','2026-11-15','In Progress','High',30,12,-18,'Under Time'),('TSK010','PRJ010','Payroll Module','Riya Mehta','2026-11-03','2026-11-18','In Progress','Medium',25,8,-17,'Under Time'),('TSK011','PRJ011','Booking Module','Manish Shah','2026-11-04','2026-11-20','In Progress','High',32,15,-17,'Under Time'),('TSK012','PRJ012','Patient Management','Kavita Patel','2026-11-05','2026-11-25','In Progress','High',40,18,-22,'Under Time'),('TSK013','PRJ013','Course Management','Hemal Shah','2026-11-07','2026-11-22','In Progress','Medium',28,10,-18,'Under Time'),('TSK014','PRJ014','Billing Module','Dev Mehta','2026-11-10','2026-11-25','In Progress','Low',20,5,-15,'Under Time'),('TSK015','PRJ015','Property Listing Module','Pooja Shah','2026-11-12','2026-11-28','In Progress','High',35,7,-28,'Under Time'),('TSK016','PRJ016','Travel Search Module','Nirav Patel','2026-11-15','2026-11-30','In Progress','Medium',30,4,-26,'Under Time'),('TSK017','PRJ017','Grocery Catalog','Jay Shah','2026-12-01','2026-12-15','Pending','High',25,0,-25,'Under Time'),('TSK018','PRJ018','Employee Records','Hardik Mehta','2026-12-10','2026-12-20','Pending','Medium',20,0,-20,'Under Time'),('TSK019','PRJ019','Inventory Tracking','Mitali Patel','2027-01-05','2027-01-20','Pending','Low',18,0,-18,'Under Time'),('TSK020','PRJ020','Analytics Dashboard','Rahul Shah','2027-01-15','2027-01-30','Pending','High',30,0,-30,'Under Time');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-20 20:05:44
