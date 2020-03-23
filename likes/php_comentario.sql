-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 23, 2020 at 04:49 AM
-- Server version: 5.7.24
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_comentario`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
CREATE TABLE IF NOT EXISTS `comentario` (
  `comentario_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_comentario_id` int(11) DEFAULT NULL,
  `comment` varchar(200) CHARACTER SET latin1 NOT NULL,
  `comment_sender_name` varchar(40) CHARACTER SET latin1 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comentario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Tabla Comentarios';

--
-- Dumping data for table `comentario`
--

INSERT INTO `comentario` (`comentario_id`, `parent_comentario_id`, `comment`, `comment_sender_name`, `date`) VALUES
(4, 0, 'Me fascina la programacion, muy interesante.', 'Luisa Maron', '2018-03-23 04:50:37'),
(5, 0, 'Los lenguajes de programacion nos ayudan a crear plataformas de todo tipo', 'Claudia Guillen', '2018-03-23 05:09:48'),
(6, 4, '  ToÃ±in es el mas cahqueto del mundo', 'Hugo Hernandez', '2020-03-11 09:04:57'),
(7, 4, 'El profe Lucero nos sacara 10 siiiiiiiiiiiii', 'Marcos Yen', '2020-03-11 09:05:21'),
(8, 5, 'Hola esto es una prueba  ', 'Pastor Cisneros', '2020-03-23 09:18:55'),
(9, 5, 'Hola a todos', 'Abraham Sanchez', '2020-03-23 09:19:25'),
(10, 4, '  Tengo coronavirus F', 'Dybala', '2020-03-23 10:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `megusta_nomegusta`
--

DROP TABLE IF EXISTS `megusta_nomegusta`;
CREATE TABLE IF NOT EXISTS `megusta_nomegusta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `comentario_id` int(11) NOT NULL,
  `like_unlike` int(2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `megusta_nomegusta`
--

INSERT INTO `megusta_nomegusta` (`id`, `member_id`, `comentario_id`, `like_unlike`, `date`) VALUES
(2, 1, 3, 1, '2018-03-22 23:09:56'),
(3, 1, 5, 0, '2020-03-21 03:20:09'),
(4, 1, 4, 0, '2020-03-23 04:26:21'),
(5, 1, 6, 0, '2020-03-21 03:19:01'),
(6, 1, 7, 1, '2020-03-22 23:52:03'),
(7, 1, 8, 1, '2020-03-23 03:19:28'),
(8, 1, 10, 1, '2020-03-23 04:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `usuarioAdministrador` varchar(20) NOT NULL,
  `claveAdministrador` varchar(20) NOT NULL,
  `administrador` int(1) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuarioAdministrador`, `claveAdministrador`, `administrador`, `nombre`) VALUES
(1, 'Pastor', '123', 1, 'Pastor Cisneros Armenta'),
(2, 'hugol', '123', 0, 'Hugo Hernandez Gonzalez'),
(3, 'luis', '123', 0, 'Luis Gerardo Ramirez'),
(4, 'marcosyen', '123', 0, 'Marcos Perez'),
(5, 'josuepl', '123', 0, 'Josue Perez Lucero');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
