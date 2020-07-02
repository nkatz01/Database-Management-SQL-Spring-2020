-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: mysqlsrv.dcs.bbk.ac.uk    Database: nkatz01dbm
-- ------------------------------------------------------
-- Server version	5.7.27-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `isbn` varchar(14) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `catagory` varchar(50) NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('978-0091906818','How to Win Friends and Influence People','Dale Carnegie','Vermilion',1936,'Self-help'),('978-0099470465','Catch-22','Joseph Heller','Vintage Classics',1961,'Fiction'),('978-0099549482','To Kill a Mockingbird','Harper Lee','Arrow',1960,'Bildungsroman'),('978-0141393049','Nineteen Eighty-Four','George Orwell','Penguin',1949,'Dystopian'),('978-0241318270','Down to Earth','Monty Don','Dorling Kindersley',2017,'Gardening'),('978-0241950432','The Catcher in the Rye','J. D. Salinger','Penguin',1951,'Fiction'),('978-0340733509','The Power of Now','Eckhart Tolle','Yellow Kite',1997,'Self-help'),('978-0712601450','Radical Acceptance','Tara Brach','Rider',2003,'Self-help'),('978-0722532935','The Alchemist','Paulo Coelho ','HarperCollins',1995,'Fiction'),('978-0761123699','The Introvert Advantage','Marti Olsen Lany','Workman Publishing Company',2002,'Self-help'),('978-1408824856','The Kite Runner','Khaled Hosseini','A&C Black Advantage',2003,'Fiction'),('978-1451673319','Fahrenheit 451','Ray Bradbury','Simon & Schuster',1953,'Dystopian'),('978-1509809950','Solve For Happy','Mo Gawdat','Pan Macmillan',2019,'Self-help'),('978-1572244863','Introvert and Extrovert in Love','Marti Olsen Laney','New Harbinger',2007,'Self-help'),('978-1782397670','Railways and The Raj','Christian Wolmar ','Atlantic books',2017,'History'),('978-1786492814','A Dominant Character','Samanth Subramanian','Atlantic books',2020,'Biography'),('978-1853260001','Pride and Prejudice','Jane Austen','Wordsworth Editions',1813,'Romance'),('978-1853260414','The Great Gatsby','F. Scott Fitzgerald','Wordsworth Editions',1925,'Tragedy'),('978-1853260629','War and Peace','Leo Tolstoy','Wordsworth Editions',1869,'Fiction'),('978-1976590429','Ulysses','James Joyce','CreateSpace',1922,'Fiction'),('978-8176212106','Animal Farm','George Orwell','Full Circle Publishing',1945,'Fiction');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowed`
--

DROP TABLE IF EXISTS `borrowed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrowed` (
  `isbn` varchar(14) NOT NULL,
  `memberNo` varchar(50) NOT NULL,
  `borrowed_date` date NOT NULL,
  `due_date` date NOT NULL,
  PRIMARY KEY (`isbn`,`memberNo`,`borrowed_date`),
  KEY `fsdf_idx` (`memberNo`),
  CONSTRAINT `borrowed_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `book` (`isbn`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `borrowed_ibfk_2` FOREIGN KEY (`memberNo`) REFERENCES `member` (`memberNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowed`
--

LOCK TABLES `borrowed` WRITE;
/*!40000 ALTER TABLE `borrowed` DISABLE KEYS */;
INSERT INTO `borrowed` VALUES ('978-0091906818','009','2012-03-13','2012-05-02'),('978-0091906818','020','2019-01-12','2019-05-16'),('978-0099470465','005','2005-06-30','2005-07-30'),('978-0241318270','006','2017-01-13','2017-02-15'),('978-0241318270','008','2017-05-07','2017-05-17'),('978-0241318270','011','2018-09-21','2018-12-09'),('978-0241950432','005','2004-05-05','2004-06-05'),('978-0340733509','009','2012-03-31','2012-05-20'),('978-0712601450','009','2009-09-30','2010-10-31'),('978-0722532935','005','2006-12-07','2007-01-17'),('978-0761123699','009','2007-06-12','2008-07-24'),('978-1408824856','005','2003-04-10','2003-05-10'),('978-1408824856','010','2013-12-22','2014-01-22'),('978-1408824856','010','2014-01-07','2014-02-07'),('978-1451673319','019','2011-01-10','2012-01-01'),('978-1451673319','019','2012-01-01','2013-02-15'),('978-1451673319','020','2018-06-12','2018-06-25'),('978-1509809950','006','2019-08-18','2019-11-05'),('978-1509809950','008','2019-09-09','2019-10-09'),('978-1509809950','009','2019-04-18','2019-06-07'),('978-1509809950','019','2019-02-10','2019-03-01'),('978-1572244863','009','2008-08-29','2008-08-30'),('978-1782397670','004','2017-03-09','2018-01-11'),('978-1782397670','019','2017-03-01','2017-06-15'),('978-1786492814','005','2020-02-10','2020-03-16'),('978-1853260414','003','2019-01-08','2019-02-10'),('978-1853260629','002','2019-11-21','2019-12-31'),('978-1853260629','005','2002-03-15','2002-04-15'),('978-1976590429','001','2019-05-18','2019-09-29'),('978-1976590429','005','2001-02-20','2001-03-20');
/*!40000 ALTER TABLE `borrowed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memberNo` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`memberNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('001','Mario Speedwagon',20),('002','Petey Cruiser',30),('003','Anna Sthesia',40),('004','Paul Molive',50),('005','Anna Mull',60),('006','Gail Forcewind',65),('007','Paige Turner',25),('008','Bob Frapples',35),('009','Walter Melon',18),('010','Nick R. Bocker',67),('011','Barb Ackue',48),('012','Buck Kinnear',55),('013','Greta Life',35),('014','Ira Membrit',23),('015','Shonda Leer',38),('016','Brock Lee',61),('017','Maya Didas',29),('018','Rick O\'Shea',43),('019','Pete Sariya',53),('020','Jane Doe',22),('021','Mike Habber',20),('022','Jacob Rees',35);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-13 14:01:25
