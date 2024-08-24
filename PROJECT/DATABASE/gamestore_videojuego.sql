-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: gamestore
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
-- Table structure for table `videojuego`
--

DROP TABLE IF EXISTS `videojuego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videojuego` (
  `IDVI` char(5) NOT NULL,
  `NOMBREVI` varchar(50) NOT NULL,
  `PRECIOVI` decimal(6,2) NOT NULL,
  `IMAGENVI` varchar(100) NOT NULL,
  `DESCRIPCIONVI` varchar(100) NOT NULL,
  `STOCKVI` int NOT NULL,
  PRIMARY KEY (`IDVI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videojuego`
--

LOCK TABLES `videojuego` WRITE;
/*!40000 ALTER TABLE `videojuego` DISABLE KEYS */;
INSERT INTO `videojuego` VALUES ('V001','Grand Theft Auto V',59.99,'https://i.ibb.co/2NrZPJb/gtaV.jpg','Únete a la vida delictiva en una ciudad llena de acción y crimen.',10),('V002','Minecraft',29.99,'https://i.ibb.co/JzmygPy/minecraft.png','Construye y explora un mundo infinito lleno de aventuras y creatividad.',5),('V003','Call of Duty',49.99,'https://i.ibb.co/rkkpd2K/callofduty.jpg','Enfréntate a combates intensos en el campo de batalla más realista.',8),('V004','The Legend of Zelda',59.99,'https://i.ibb.co/x5j7gcw/zelda.jpg','Embárcate en una épica aventura llena de misterio y valentía.',15),('V005','FIFA 22',49.99,'https://i.ibb.co/WWQdryp/fifa22.jpg','Vive la emoción del fútbol con gráficos impresionantes y jugabilidad realista.',20),('V006','Assassins Creed Valhalla',59.99,'https://i.ibb.co/th0Qn1R/assasinscreed.jpg','Explora el mundo vikingo y desata tu furia en emocionantes batallas.',12),('V007','Red Dead Redemption 2',49.99,'https://i.ibb.co/0XH21Fy/red-dead-redemption-II.jpg','Sumérgete en el Salvaje Oeste y vive una historia de forajidos y venganza.',7),('V008','Overwatch',39.99,'https://i.ibb.co/Zf37tD4/overwatch.png','Únete a un equipo de héroes y lucha en batallas llenas de acción y estrategia.',25),('V009','The Witcher 3: Wild Hunt',39.99,'https://i.ibb.co/f8fBzs0/the-witcher-3.jpg','Explora un vasto mundo lleno de monstruos y toma decisiones que cambiarán su destino.',3),('V010','Super Mario Odyssey',49.99,'https://i.ibb.co/bmJdGXJ/odyssey.png','Acompaña a Mario en una emocionante aventura por diferentes reinos en busca de la princesa Peach.',18);
/*!40000 ALTER TABLE `videojuego` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05  9:22:35
