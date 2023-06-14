-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopdb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
                            `category_id` bigint NOT NULL,
                            `name` varchar(255) DEFAULT NULL,
                            PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (13,'Chocolate bouquets'),(26,'Fruit bouquet'),(28,'Patriotic Style'),(30,'Baskets'),(33,'Meat bouquets'),(34,'Flowers and Chocolate');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
    `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (37);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
                           `id` bigint NOT NULL,
                           `description` varchar(500) DEFAULT NULL,
                           `image_name` varchar(255) DEFAULT NULL,
                           `name` varchar(255) DEFAULT NULL,
                           `price` double NOT NULL,
                           `weight` double NOT NULL,
                           `category_id` bigint DEFAULT NULL,
                           PRIMARY KEY (`id`),
                           KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
                           CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (25,'Gifts - are we a way to show feelings?!\r\nTherefore, when we give sumi to our loved ones a sweet bouquet - we speak without words.\r\nWith such a gift, we show our care for them and express our concern.\r\n⠀Each shade of chocolate, each petal of eucalyptus leaves - fills the composition with the necessary emotions. What makes our gift enchanting ','315531622_562512185881386_2279686442370230163_n.jpg','Cholckate Gift',650,2500,13),(27,'Each fruit bouquet is skill and creativity in one. Using a variety of fresh fruits, such as sweet and juicy apples, tasty pears, juicy oranges, sweet kiwis and others, the craftsmen create a real masterpiece.','315472768_561585822640689_4081952506351418191_n.jpg','Fruity Joy',570,5000,26),(29,'Ukraine\'s glory and will have not died yet.\r\nThe first known mention of the slogan \"Glory to Ukraine!\" and answers \"Glory to all the earth!\" is connected with the environment of the Kharkiv Ukrainian student community of the late 19th and early 20th centuries','286418290_731256228321077_6580040275105675966_n.jpg','Patriotic',475,500,28),(31,'Homemade pâtés made from natural products always taste better than store-bought pâtés\r\nIt is not difficult to prepare them, you just need patience and accuracy. What you will see for yourself, you just need to try','273211058_653091279470906_5808657783298025926_n.jpg','Meat Baskets',1500,7000,30),(32,'From childhood, we are familiar with stories about pirates and treasures. We imagined stories of treasure hunts, pirate battles, desert island secrets, treachery, conspiracies and true friendship...\r\nHow about a chest with delicious dried fruits and candies','273538198_655975355849165_2939800346550080725_n.jpg','Fruit Basket',1200,5000,30),(35,'Everyone knows that the beautiful half of humanity adores gifts, but men also love not only signs of attention, but also gifts\r\nYou always want to give your loved one an unforgettable gift that will bring him only positive emotions.','272029815_641792020600832_7788017930549108738_n.jpg','The best for a loved one',980,3500,33),(36,'Our sweet and dear, the best in the world,\r\nWe wish happiness, give flowers,\r\nSo that the sun and stars nurture warmth\r\nMay you always have good health!\r\nSo that sadness does not know, we ask fate,\r\nGood for you and joy, dear, enough.\r\nBecause people don\'t need a lot to be happy -\r\nFamily comfort and a peaceful sky!','159375569_444951433618226_4884280585496898835_n.jpg','Happy mother\'s day',1600,5500,34);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
                         `id` bigint NOT NULL,
                         `name` varchar(255) NOT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
                             `user_id` bigint NOT NULL,
                             `role_id` bigint NOT NULL,
                             KEY `FKt7e7djp752sqn6w22i6ocqy6q` (`role_id`),
                             KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`),
                             CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
                             CONSTRAINT `FKt7e7djp752sqn6w22i6ocqy6q` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(1,2),(12,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
                         `id` bigint NOT NULL,
                         `email` varchar(255) NOT NULL,
                         `first_name` varchar(255) NOT NULL,
                         `last_name` varchar(255) DEFAULT NULL,
                         `password` varchar(255) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Table structure for table `checkout`
DROP TABLE IF EXISTS 'checkout';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE checkout (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          FirstName VARCHAR(255),
                          LastName VARCHAR(255),
                          Address VARCHAR(255),
                          ApartmentNumber INT,
                          Postcode INT,
                          City VARCHAR(255),
                          PhoneNumber INT,
                          Email VARCHAR(255),
                          Information VARCHAR(255)
);
--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@gmail.com','Admin','oleg','$2a$10$moTjfAVBJzNS32q7NPPVh.iAGDbZSkjZJBkdxT5ZLKQ3R1Vh/y9Fi'),(3,'oloolo@gmail.com','sherry','lab','$2a$10$G/tB2vL1Nvz7xGabzVMG.e8e9QkRdidoGDvHqBN7awmbEoz7SsLmi'),(4,'olegbrogina@gmail.com','Олег','Брожина',NULL),(12,'doma@gmail.com','qw','olegov','$2a$10$XfwM0EHX0DWanmfliWVFK.9FjfTNj/v/RR6DfQifYfmQcSpSPHTem');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29 19:05:50
