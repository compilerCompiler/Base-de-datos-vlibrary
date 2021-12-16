CREATE DATABASE  IF NOT EXISTS `vlibrary` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vlibrary`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: vlibrary
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `Id_admi` int NOT NULL AUTO_INCREMENT,
  `Id_persona` int NOT NULL,
  `Codigo_admi` varchar(30) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Updated` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_admi`),
  KEY `Id_persona` (`Id_persona`),
  CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Id_persona`) REFERENCES `persona` (`Id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (27,35,'7878','2021-12-16 08:57:12','2021-12-16 08:57:12');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletareservacion`
--

DROP TABLE IF EXISTS `boletareservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boletareservacion` (
  `Id_num_reservacion` int NOT NULL AUTO_INCREMENT,
  `Id_usuario` int NOT NULL,
  `Id_libro` int NOT NULL,
  `Fecha_reservacion` date DEFAULT NULL,
  `Fecha_devolucion` date DEFAULT NULL,
  `Created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id_num_reservacion`),
  KEY `Id_usuario` (`Id_usuario`),
  KEY `Id_libro` (`Id_libro`),
  CONSTRAINT `boletareservacion_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`),
  CONSTRAINT `boletareservacion_ibfk_2` FOREIGN KEY (`Id_libro`) REFERENCES `libro` (`Id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletareservacion`
--

LOCK TABLES `boletareservacion` WRITE;
/*!40000 ALTER TABLE `boletareservacion` DISABLE KEYS */;
INSERT INTO `boletareservacion` VALUES (24,111,20,'2021-12-17','2021-12-19','2021-12-16 09:00:19',NULL);
/*!40000 ALTER TABLE `boletareservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `Id_libro` int NOT NULL AUTO_INCREMENT,
  `Titulo` text,
  `Autor` varchar(90) DEFAULT NULL,
  `Sinopsis` mediumtext,
  `Foto_url` text,
  `Estado` int DEFAULT NULL,
  `Reservado` tinyint(1) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Updated` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (4,'Harry Potter y la piedra filosofal','J.K Rowoling','saga literaria','https://cdn.culturagenial.com/es/imagenes/harry-potter-libros-1-cke.jpg',6,0,'2021-12-05 00:00:00','2021-12-05 00:00:00'),(5,'El Principito','Atoine de Saint Exuspery','permite reflexionar sobre la amistad, el amor o el sentido de la vida.','https://cdn.culturagenial.com/es/imagenes/el-principito-portada-0-cke.jpg',1,0,'2021-12-05 00:00:00','2021-12-05 00:00:00'),(6,'La Ladrona de Libros','Markus Zusak','contextualizado en la Segunda Guerra Mundial y gira en torno a la joven Liesel Mimeger','https://cdn.culturagenial.com/es/imagenes/la-ladrona-de-libros-cke.jpg',2,0,'2021-12-05 00:00:00','2021-12-05 00:00:00'),(7,'Persepolis','Marjane Satrapi','La historia se centra en la vida de Marjane Satrapi','https://cdn.culturagenial.com/es/imagenes/persepolis-libro-cke.jpg',9,0,'2018-03-05 00:00:00','2018-05-08 00:00:00'),(8,'El extranjero','Albert Camus','Meursault es un hombre que vive ajeno a los desafortunados acontecimientos que le ocurren','https://cdn.culturagenial.com/es/imagenes/el-extranjero-portada-0-cke.jpg',3,0,'2021-12-05 00:00:00','2021-12-05 00:00:00'),(9,'Metodología de la investigación','Roberto Hernández Sampieri, Pilar Baptista Lucio, Carlos Fernández Collado','Similitudes y diferencias entre los enfoques cuantitativo y cualitativo','https://images.cdn3.buscalibre.com/fit-in/360x360/d9/75/d975135ac68d1d4a03972dc5a7214741.jpg',5,0,'2020-02-15 00:00:00','2021-01-17 00:00:00'),(10,'Álgebra de Baldor','Aurelio Baldor','El Álgebra de Baldor contiene un total de 5790 ejercicios, que equivalen a 19 ejercicios en cada prueba en promedio','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Baldor.jpg/420px-Baldor.jpg',4,0,'2019-05-25 00:00:00','2020-05-27 00:00:00'),(11,'Estadística descriptiva y probabilidad','Concepción Valero Franco, Inmaculada Espejo Miranda','El objetivo principal de este libro es ofrecer a los alumnos un manual estadístico básico que, proporcione una visión práctica e intuitiva de la materia','https://images-na.ssl-images-amazon.com/images/I/51wviPY-paL._SX354_BO1,204,203,200_.jpg',5,0,'2021-01-10 00:00:00','2021-02-12 00:00:00'),(12,'Introducción a la psicología','Albert Maisto, Charles Morris','Capturar los hallazgos más recientes en psicología es un desafío extraordinario que se han propuesto los autores de esta obra, en la cual, los temas se analizan de manera científica y equilibrada, ya que se incorporan tanto estudios clásicos como hallazgos recientes.','https://images-na.ssl-images-amazon.com/images/I/61S5F-rPOnL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg',5,0,'2018-03-05 00:00:00','2018-05-08 00:00:00'),(13,'Raza de bronce','Alcides Arguedas','Alcides Arguedas es quien ha descripto con mayor belleza y ha plasmado el horror de la realidad social del indio en la cordillera, y lo hace a traves de Raza de bronce','https://ir.ebaystatic.com/pictures/aw/pics/es/co/viewitem/imgEndedCvi_96x96.png',6,0,'2020-02-15 00:00:00','2021-01-17 00:00:00'),(14,'Borracho estaba, pero me acuerdo','Hugo Viscarra ','Esta obra es una pequeña biografía del autor, el señor Víctor Hugo Viscarra y de sus amigos que compartieron muchas cosas con el a lo largo de su vida','http://3.bp.blogspot.com/-YPHA4HHzRzY/UhuvQ2i6T3I/AAAAAAAAA8o/oGsN6TgAO3k/s400/borracho+estaba+pero+me+acuerdo.jpg',7,0,'2019-05-25 00:00:00','2020-05-27 00:00:00'),(15,'Aluvión de fuego','Óscar Cerruto',' Se realiza una crítica aguda del sistema político que fue la causa de una guerra absurda y de las injusticias que sufren las capas más desfavorecidas de la población boliviana.','https://libreriaslectura.com/wp-content/uploads/2020/12/9789995414689-277x416.jpg',5,0,'2021-01-10 00:00:00','2021-02-12 00:00:00'),(16,'Historia de Bolivia','Carlos Mesa, José de Mesa, Teresa Gisbert','Un texto básico, a la vez que completo sobre la historia boliviana, de fácil acceso, con mucha información de nombres, datos y fechas, a la vez que con análisis conceptuales serios de carácter político, económico y social','https://carlosdmesa.files.wordpress.com/2019/09/image-1.jpg',5,0,'2018-03-05 00:00:00','2018-05-08 00:00:00'),(17,'Así habló Zaratustra','Friedrich Nietzsche',' Desarrolla los cuatro grandes temas que integran el legado del filósofo persa, mediante una trama de elementos narrativos, conceptuales y líricos: el superhombre, la muerte de Dios, la voluntad de poder y el eterno retorno de lo idéntico','https://upload.wikimedia.org/wikipedia/commons/9/90/Also_sprach_Zarathustra.GIF',4,0,'2021-06-08 00:00:00','2021-07-20 00:00:00'),(18,'República','Platón','El tema central de La República es la reflexión sobre qué es la justicia y cómo se expresa en el hombre, lo que lleva a Platón a abordar la organización de la ciudad-estado ideal','https://images.cdn1.buscalibre.com/fit-in/360x360/1d/cd/1dcd43008ef09b1acb48d1d91c2bab93.jpg',5,0,'2020-02-15 00:00:00','2020-05-27 00:00:00'),(19,'La riqueza de las naciones','Adam Smith','Una investigación sobre la naturaleza y causas de la riqueza de las naciones, o sencillamente','https://www.elejandria.com/covers/La_riqueza_de_las_naciones-Adam_Smith-md.png',6,0,'2019-05-25 00:00:00','2021-02-12 00:00:00'),(20,'El capital','Karl Marx','Crítica de la economía política es un texto teórico fundamental en la filosofía, economía y política de Karl Marx','https://images-na.ssl-images-amazon.com/images/I/41LmlYsLujL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',6,1,'2021-01-10 00:00:00','2018-05-08 00:00:00'),(21,'Fundamentos de Marketing','Philip Kotler','Esta obra introduce el pensamiento en marketing más actual que es el valor al cliente, y que es la fuerza de conducción detrás de cada estrategia de mercado','https://images-na.ssl-images-amazon.com/images/I/51Zt5gU7uHL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg',7,0,'2018-03-05 00:00:00','2021-07-20 00:00:00'),(22,'Breve historia del tiempo','Stephen Hawking','Del Big Bang a los agujeros negros es un libro de divulgación científica publicado en 1988 por el físico teórico, astrofísico, cosmólogo y divulgador científico británico Stephen Hawking y prologado por Carl Sagan','https://images-na.ssl-images-amazon.com/images/I/41BxDoPBktL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',4,0,'2021-06-08 00:00:00','2021-01-17 00:00:00'),(23,'Física para Dummies',' Steven Holzner','Tanto si te mueves por las ciencias como pez en el agua, como si no guardas muy buen recuerdo de tu contacto con la física en el instituto, con este libro disfrutarás de los secretos de esta fascinante disciplina','https://images-na.ssl-images-amazon.com/images/I/51AB7LZYKGL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',6,0,'2020-02-15 00:00:00','2020-05-27 00:00:00'),(24,'Fundamentos de química orgánica','Paula Yurkanis Bruice','Para desterrar la impresión de que el estudio de la Química Orgánica consiste en la memorización de una enorme colección de moléculas y reacciones, este libro está organizado alrededor de características compartidas y conceptos unificados, resaltando los principios que se pueden aplicar una y otra vez','https://image.cdn1.buscalibre.com/3674317.__RS360x360__.jpg',8,0,'2019-05-25 00:00:00','2021-02-12 00:00:00'),(25,'Breve historia del mundo','Ernst Gombrich','Una auténtica reflexión sobre el devenir de la historia y su imbricación en nuestras vidas, contiene una serie de observaciones que, aunque escritas en 1935, adquieren pleno sentido a la luz del presente, desde la globalización de la economía y la cultura hasta el consumismo materialista','https://m.media-amazon.com/images/I/51CJL5It0bL.jpg',4,0,'2021-01-10 00:00:00','2018-05-08 00:00:00'),(26,'Homo deus','Yuval Noah Harari','Presenta una visión del futuro, un futuro en el que la tecnología crece exponencialmente e impacta en las estructuras sociales, revolucionando la vida. La biotecnología, la inteligencia artificial y la nanotecnología permitirán extender la vida humana','https://lh5.googleusercontent.com/XofrAr2QLcxX4hfn7_ZaMKVa9y7B3M2h0SWdspb48dkpGmsNiHbwm8t4MFFIW0t165-_kbxRF9gkOnaTD6YAHwY0gmYtIwelQs-qZ_19Xpf5Vqo_9Q6nCM0pk3rw4sr3xgNTkPbg',6,0,'2018-03-05 00:00:00','2021-07-20 00:00:00'),(27,'Cumbres borrascosas','Emily Brontë','Una de las novelas inglesas más relevantes del siglo XIX, narra la épica historia de Catherine y Heathcliff. Situada en los sombríos y desolados páramos de Yorkshire, constituye una asombrosa visión metafísica del destino, la obsesión, la pasión y la venganza','https://imagessl1.casadellibro.com/a/l/t5/51/9788467765151.jpg',5,0,'2021-06-08 00:00:00','2021-01-17 00:00:00'),(38,'Harry Potter y la camara de los secretos','J.K Rowling','Harry Potter y la cámara secreta, el segundo volumen de la ya clásica serie de novelas fantásticas de la autora británica J.K. Rowling.','https://images-na.ssl-images-amazon.com/images/I/51vyPHnXqoL._SX303_BO1,204,203,200_.jpg',9,0,'2021-12-06 17:24:04','2021-12-06 17:24:04'),(40,'Harry Potter y el caliz de fuego','J.K Rowling','Harry Potter y el caliz de fuego, el cuarto volumen de la ya clásica serie de novelas fantásticas de la autora británica J.K. Rowling.','https://images-na.ssl-images-amazon.com/images/I/41lm0iHAvuL._SX303_BO1,204,203,200_.jpg',9,0,'2021-12-08 08:49:47','2021-12-08 08:49:47');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `Id_persona` int NOT NULL AUTO_INCREMENT,
  `Id_usuario` int NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Profesion` varchar(30) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Updated` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_persona`),
  KEY `Id_usuario` (`Id_usuario`),
  CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (35,110,'Manuel Valenzuela','Estudiante','2021-12-16 08:57:12','2021-12-16 08:57:12'),(36,111,'Rodrigo Viladegut','Estudiante','2021-12-16 08:57:44','2021-12-16 08:57:44');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `Id_usuario` int NOT NULL AUTO_INCREMENT,
  `Nombre_usuario` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Correo` varchar(20) NOT NULL,
  `Ultimo_inicio` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Updated` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (110,'Manu2001','manu123','manli2001@hotmail.es','2021-12-16 08:58:34','2021-12-16 08:57:12','2021-12-16 08:57:12'),(111,'rotis','rotis123','rodri@gmail.com','2021-12-16 08:59:29','2021-12-16 08:57:44','2021-12-16 08:57:44');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `Id_video` int NOT NULL AUTO_INCREMENT,
  `Duracion` time DEFAULT NULL,
  `Enlace` varchar(45) DEFAULT NULL,
  `Calidad` varchar(10) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Updated` datetime DEFAULT NULL,
  `Miniatura` varchar(90) DEFAULT NULL,
  `Titulo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'01:09:13','8JJ101D3knE','HD','2021-12-15 22:22:30','2021-12-15 22:22:30','https://i3.ytimg.com/vi/8JJ101D3knE/maxresdefault.jpg','Git Tutorial for Beginners: Learn Git in 1 Hour'),(2,'00:48:16','W6NZfCO5SIk','HD+','2021-12-15 22:24:07','2021-12-15 22:24:07','https://i3.ytimg.com/vi/W6NZfCO5SIk/maxresdefault.jpg','JavaScript Tutorial for Beginners: Learn JavaScript in 1 Hour'),(3,'00:14:44','xtCmFEaQENc','HD','2021-12-15 22:26:01','2021-12-15 22:26:01','https://i3.ytimg.com/vi/xtCmFEaQENc/maxresdefault.jpg','#13 Retrofit Android Tutorial - Sign Up using Retrofit POST Request'),(4,'03:16:04','zIY87vU33aA','UHD','2021-12-15 22:27:11','2021-12-15 22:27:11','https://i3.ytimg.com/vi/zIY87vU33aA/maxresdefault.jpg','Reactjs, Curso Práctico para Principiantes (React 16)'),(5,'00:09:21','0KrdRZVr-q4','HD+','2021-12-15 22:29:21','2021-12-15 22:29:21','https://i3.ytimg.com/vi/zIY87vU33aA/maxresdefault.jpg','¿Qué es un NFT?'),(6,'00:29:06','SM_NXr0mPTg','4k','2021-12-15 22:30:16','2021-12-15 22:30:16','https://i3.ytimg.com/vi/SM_NXr0mPTg/maxresdefault.jpg','¿Por qué Apple haría un producto así...? | iPad Pro M1 Review');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videousuario`
--

DROP TABLE IF EXISTS `videousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videousuario` (
  `Id_video_usuario` int NOT NULL AUTO_INCREMENT,
  `Id_video` int NOT NULL,
  `Id_usuario` int NOT NULL,
  `Contador_vistas` int DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Updated` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_video_usuario`),
  KEY `Id_video` (`Id_video`),
  KEY `Id_usuario` (`Id_usuario`),
  CONSTRAINT `videousuario_ibfk_1` FOREIGN KEY (`Id_video`) REFERENCES `videos` (`Id_video`),
  CONSTRAINT `videousuario_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videousuario`
--

LOCK TABLES `videousuario` WRITE;
/*!40000 ALTER TABLE `videousuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `videousuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16  9:11:50
