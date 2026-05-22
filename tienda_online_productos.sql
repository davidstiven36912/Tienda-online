-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: tienda_online
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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Aceite de Lavanda','El aceite de lavanda es conocido por sus propiedades relajantes, ayuda a reducir el estrés y favorece un sueño reparador.',19.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/lavender_brxelo.jpg'),(2,'Aceite de Eucalipto','El aceite de eucalipto despeja las vías respiratorias, aporta frescura y mejora la concentración.',20.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/eucalipto_zaf4ks.jpg'),(3,'Marjoram','El aceite de mejorana alivia la tensión muscular y calma la mente, ideal para relajarse después de un día intenso.',15.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/marjoram_ro2vfa.jpg'),(4,'Lemon','El aceite de limón revitaliza, aporta energía y claridad mental, perfecto para estudiar o trabajar.',18.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/lemon_kz8umg.jpg'),(5,'Llervabuena','Ideal para relajarse después de un día de trabajo. Perfecta para calmar la mente y descansar mejor.',15.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/llervabuena_gf6lz8.jpg'),(6,'Caléndula','Recomendada para estudiar o trabajar, aporta serenidad y claridad mental.',16.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/calendula_tstphi.jpg'),(7,'Flor Violeta','Especial para la meditación, ayuda a conectar con la tranquilidad interior.',18.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/florvioleta_dek4dz.jpg'),(8,'Mandarina','Fragancia alegre y fresca, excelente para reducir el estrés y elevar el ánimo.',14.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/mandarina_ux9bjh.jpg'),(9,'Orquídea','Un aroma delicado que favorece el equilibrio y la armonía en el hogar.',20.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/orquidea_qglezs.jpg'),(10,'Flor Silvestre','Perfecta para acompañar momentos de concentración y creatividad.',17.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/florsilvestre_gafej9.jpg'),(11,'Lovely','Aroma envolvente y suave, recomendado para dormir plácidamente.',19.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/lovely_gt1jmr.jpg'),(12,'Llervabuena','Ideal para relajarse después de un día de trabajo. Perfecta para calmar la mente y descansar mejor.',15.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/llervabuena_gf6lz8.jpg'),(13,'Caléndula','Recomendada para estudiar o trabajar, aporta serenidad y claridad mental.',16.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/calendula_tstphi.jpg'),(14,'Flor Violeta','Especial para la meditación, ayuda a conectar con la tranquilidad interior.',18.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/florvioleta_dek4dz.jpg'),(15,'Mandarina','Fragancia alegre y fresca, excelente para reducir el estrés y elevar el ánimo.',14.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/mandarina_ux9bjh.jpg'),(16,'Orquídea','Un aroma delicado que favorece el equilibrio y la armonía en el hogar.',20.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/orquidea_qglezs.jpg'),(18,'Lovely','Aroma envolvente y suave, recomendado para dormir plácidamente.',19.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/lovely_gt1jmr.jpg'),(19,'Sábila','El aceite de sábila hidrata, calma la piel y ayuda a la regeneración natural. Ideal para revitalizar cuerpo y mente.',21.00,'https://res.cloudinary.com/dvhbhzcoy/image/upload/savila_dopprr.jpg');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-21 20:28:31
