-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 18, 2020 at 05:40 PM
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
-- Database: `appweb`
--
CREATE DATABASE IF NOT EXISTS `appweb` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `appweb`;

-- --------------------------------------------------------

--
-- Table structure for table `chismes`
--

DROP TABLE IF EXISTS `chismes`;
CREATE TABLE IF NOT EXISTS `chismes` (
  `id_pastel` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_pastel` varchar(100) CHARACTER SET latin1 NOT NULL,
  `caracteristicas` varchar(100) CHARACTER SET latin1 NOT NULL,
  `costo_unitario` varchar(500) CHARACTER SET latin1 NOT NULL,
  `cantidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_pastel`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `chismes`
--

INSERT INTO `chismes` (`id_pastel`, `tipo_pastel`, `caracteristicas`, `costo_unitario`, `cantidad`) VALUES
(1, 'Los Geeks de Compu', 'FCC', 'Se rumora que los estos individuos sólo se la pasan jugando tanto en el mural como en las palapas, así que la pregunta es ¿Realmente están estudiando una carrera de computación?', 1),
(2, 'Toñito el más chaqueto del mundo!', 'FCC', 'Tras varios intentos y esfuerzos Toñito con tan solo 22 años se convierte el joven más chaqueto del mundo y de la facultad, todo este esfuerzo dice él que lo dedica a sus amigos', 1),
(3, 'No acabé mi servicio web!', 'Maestros', 'El profe Abraham deja una práctica de servicios web que nadie entendió... Él cree que es culpa del plan cuatrimestral y de los ingenieros. ', 1),
(4, 'Marquitos, Pastor y Hugo toman App Web', 'Alumnos', 'Estos 3 valientes  jóvenes toman una de las materias más difíciles en computación, aparte de ser brillantes y guapos están apunto de terminar la carrera de Ingeniería en Tecnologías de la Información', 1),
(5, 'Cholula el mejor lugar para Alumnos de la BUAP', 'Alumnos', 'No hablamos de las pirámides para el lugar perfecto de los universitarios, sino, hablamos de los antros y clubes de Cholula. Muchos jóvenes de la benemérita son alcoholizados en este lugar, aunque unos prefieren hacerlo en los departamentos de los foráneos.', 1),
(6, 'chisme alumnos no aprobado', 'Alumnos', 'si aparece en la página tiene un 1 en aprobado xD', 1),
(7, 'chisme para maestros', 'Maestros', 'este chisme no se puede ver almenos que tenga un campo 1 en el atributo aprobado', 1),
(8, 'Bigotes Esparza gana el avión presidencial!', 'Esparza', 'Se dice que nuestro querido rector ha ganado el avión presidencial que rifó  nuestro queridísimo AMLO y por ese mismo hecho Esparza piensa ocupar el estadio BUAP para estacionar su nueva nave.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `temas`
--

DROP TABLE IF EXISTS `temas`;
CREATE TABLE IF NOT EXISTS `temas` (
  `nombre` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temas`
--

INSERT INTO `temas` (`nombre`) VALUES
('Maestros'),
('Alumnos'),
('FCC'),
('Esparza');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `correo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `nombre`, `clave`, `tipo`) VALUES
(1, 'pas_ada@hotmail.com', 'Pastor Cisneros', '123', 'normal'),
(2, 'plucero@gmail.com', 'Josue', '123', 'moderador'),
(4, 'hugol@gmail.com', 'Hugo Hernandez', '123', 'moderador'),
(5, 'admon@gmail.com', 'Benito Martinez', '123', 'administrador');
--
-- Database: `bicicu`
--
CREATE DATABASE IF NOT EXISTS `bicicu` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `bicicu`;

-- --------------------------------------------------------

--
-- Table structure for table `accesos`
--

DROP TABLE IF EXISTS `accesos`;
CREATE TABLE IF NOT EXISTS `accesos` (
  `NumAcceso` int(11) NOT NULL,
  `NombreAcceso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NumAcceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accesos`
--

INSERT INTO `accesos` (`NumAcceso`, `NombreAcceso`) VALUES
(1, 'AccesoA'),
(2, 'AccesoB'),
(3, 'AccesoC'),
(4, 'AccesoD'),
(5, 'AccesoE'),
(6, 'AccesoF'),
(7, 'AccesoG'),
(8, 'AccesoH'),
(9, 'AccesoI'),
(10, 'AccesoJ'),
(11, 'AccesoK');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) NOT NULL,
  `contrasena` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `usuario`, `contrasena`) VALUES
(1, 'admin', 'admin7');

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE IF NOT EXISTS `alumnos` (
  `Matricula` varchar(20) DEFAULT NULL,
  `stringQR` varchar(150) NOT NULL,
  `Facultad` varchar(45) DEFAULT NULL,
  KEY `Matricula_idx` (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`Matricula`, `stringQR`, `Facultad`) VALUES
('9087654321', '', 'Veterinaria'),
('1098765243', '', 'Biología');

-- --------------------------------------------------------

--
-- Table structure for table `alumnosbuap`
--

DROP TABLE IF EXISTS `alumnosbuap`;
CREATE TABLE IF NOT EXISTS `alumnosbuap` (
  `matricula` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `alumnosbuap`
--

INSERT INTO `alumnosbuap` (`matricula`, `contrasena`) VALUES
('201515198', 'pastorc'),
('201501589', 'javiera');

-- --------------------------------------------------------

--
-- Table structure for table `bicicletas`
--

DROP TABLE IF EXISTS `bicicletas`;
CREATE TABLE IF NOT EXISTS `bicicletas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Marca` varchar(45) NOT NULL,
  `Rodada` varchar(45) NOT NULL,
  `Color` varchar(45) NOT NULL,
  `Caracteristicas` varchar(45) NOT NULL,
  `NoSerie` varchar(45) DEFAULT NULL,
  `Fotografia1` varchar(100) NOT NULL,
  `Fotografia2` varchar(100) DEFAULT NULL,
  `Fotografia3` varchar(100) DEFAULT NULL,
  `Fotografia4` varchar(100) DEFAULT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `QRString` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `QRString_UNIQUE` (`QRString`),
  KEY `UsuarioID_idx` (`UsuarioID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bicicletas`
--

INSERT INTO `bicicletas` (`ID`, `Marca`, `Rodada`, `Color`, `Caracteristicas`, `NoSerie`, `Fotografia1`, `Fotografia2`, `Fotografia3`, `Fotografia4`, `UsuarioID`, `QRString`) VALUES
(1, 'Benoto', '1', 'Negro', 'Casual', '123456789', 'q', 'q', 'q', 'q', 18, 'q'),
(2, 'Trek', '2', 'Azul', 'Deportiva', '875678904', 'a', 'a', 'a', 'a', 24, 'a'),
(3, 'Giant', '3', 'Gris', 'Calle', '237658978', 'ab', 'b', 'b', 'b', 25, 'b');

-- --------------------------------------------------------

--
-- Table structure for table `compartidacon`
--

DROP TABLE IF EXISTS `compartidacon`;
CREATE TABLE IF NOT EXISTS `compartidacon` (
  `BiciID` int(11) DEFAULT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  KEY `BiciID_idx` (`BiciID`),
  KEY `MembresiaID_idx` (`UsuarioID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `datosbicicu`
--

DROP TABLE IF EXISTS `datosbicicu`;
CREATE TABLE IF NOT EXISTS `datosbicicu` (
  `BicicletasEnCU` int(11) NOT NULL,
  PRIMARY KEY (`BicicletasEnCU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datosbicicu`
--

INSERT INTO `datosbicicu` (`BicicletasEnCU`) VALUES
(92);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Entrada` datetime NOT NULL,
  `Salida` datetime DEFAULT NULL,
  `VigilanteIDEntrada` int(11) DEFAULT NULL,
  `VigilanteIDSalida` int(11) DEFAULT NULL,
  `BiciID` int(11) DEFAULT NULL,
  `UsuarioEntradaID` int(11) DEFAULT NULL,
  `UsuarioSalidaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BID_idx` (`BiciID`),
  KEY `VIDE_idx` (`VigilanteIDEntrada`),
  KEY `VIDS_idx` (`VigilanteIDSalida`),
  KEY `UEID_idx` (`UsuarioEntradaID`),
  KEY `USID_idx` (`UsuarioSalidaID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`ID`, `Entrada`, `Salida`, `VigilanteIDEntrada`, `VigilanteIDSalida`, `BiciID`, `UsuarioEntradaID`, `UsuarioSalidaID`) VALUES
(1, '2019-11-01 07:10:00', '2019-11-01 15:30:00', 28, 28, 1, 24, 24);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
CREATE TABLE IF NOT EXISTS `logins` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PasswordHash` varchar(100) DEFAULT NULL,
  `RelUsuarioID` int(11) DEFAULT NULL,
  `FechaLogin` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `RelIDusuario_idx` (`RelUsuarioID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`ID`, `PasswordHash`, `RelUsuarioID`, `FechaLogin`) VALUES
(9, '$2b$10$E/BB2cl6JOrthoXU6FE16u7UySkp.fxbjeawiC/FskYmi1a.ue4TG', 18, '2019-04-13 13:31:28'),
(10, '$2b$10$dnfmYa5hzKu4Oud5PPY06uaS50LewnBUuJTq.r/XJwV1l.vsBUITK', 19, '2019-04-13 13:33:56'),
(15, '$2b$10$7kMJzGcHsiCP1E8CbuqNx.kdpGQK.oWU0OYBSdeDLdbOXiuf9WKlq', 24, '2019-05-04 13:02:48'),
(16, '$2b$10$O2M/2/OqVlDeTmHLJXtk9e5AoprTbjLrtX2m.hvU31IU11AixTts.', 25, '2019-05-04 13:11:12'),
(17, '$2b$10$6OQHkIThIUb8NYLGVw0/vuU1RNmuiGfR3JrUSj7HYPGRO01s8IyY.', 26, '2019-11-13 10:45:36'),
(18, '$2b$10$lAh7Rzz2qiF1DaPILoRPLuvwvkjVDYKzS/ESISdkJ4lUZTwo6iXhm', 27, '2019-11-13 10:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `NumRol` int(11) NOT NULL,
  `TipoUsuario` varchar(45) NOT NULL,
  PRIMARY KEY (`NumRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`NumRol`, `TipoUsuario`) VALUES
(1, 'Administrador'),
(2, 'Vigilante'),
(3, 'Alumno');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NombresUsr` varchar(45) NOT NULL,
  `ApePatUsr` varchar(45) NOT NULL,
  `ApeMatUsr` varchar(45) DEFAULT NULL,
  `RelRolID` int(11) DEFAULT NULL,
  `Matricula` varchar(20) NOT NULL,
  `Fotografia` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Usuarioscol` varchar(45) DEFAULT NULL,
  `EmailCuenta` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`,`Matricula`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `EmailCuenta_UNIQUE` (`EmailCuenta`),
  UNIQUE KEY `Matricula_UNIQUE` (`Matricula`),
  KEY `relRolID_idx` (`RelRolID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 PACK_KEYS=0;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`ID`, `NombresUsr`, `ApePatUsr`, `ApeMatUsr`, `RelRolID`, `Matricula`, `Fotografia`, `Telefono`, `Usuarioscol`, `EmailCuenta`) VALUES
(18, 'Marcos Yen', 'Perez', 'Camberos', 2, '1234567890', 'http://localhost:8080/admin/img/marcos.jpg', '1234567890', 'prueba', 'comandante@comandante.com'),
(19, 'Pastor Adahir', 'Cisneros', 'Armenta', 2, '0987654321', 'http://localhost:8080/admin/img/pastor.jpg', '0987654321', 'prueba', 'vigilante@delaula.com'),
(24, 'Alumnillo', 'alumnillo', 'alumnillo', 3, '9087654321', 'http://localhost:3001/images/9087654321-1556992968125.jpg', '1234567890', 'prueba', 'alumno@alumno.com'),
(25, 'Alumnillo2', 'alumnillo2', 'alumnillo2', 3, '1098765243', 'http://localhost:3001/images/1098765243-1556993471678.jpg', '89898989898', 'prueba', 'alumnillo2@alumnillo2.com'),
(26, 'Valeria', 'Vera', 'Lagos', 2, '0974645888', 'http://localhost:8080/admin/img/valeria.jpeg', '0974645888', 'prueba', 'valeria@valeria.com'),
(27, 'alumnovalery', 'alumnovalery', 'alumnovalery', 3, '0009878967', 'http://localhost:3001/images/logo.png-1573663839295.png', '0009878967', 'prueba', 'valeria@val.com'),
(28, 'Javier', 'Amador', 'Lagunes', 2, '201501589', 'http://localhost/bicicu/img/javier.jpeg', '2212090107', 'prueba', 'javieramadorlag@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vigilantes`
--

DROP TABLE IF EXISTS `vigilantes`;
CREATE TABLE IF NOT EXISTS `vigilantes` (
  `Matricula` varchar(20) DEFAULT NULL,
  `Acceso` int(11) DEFAULT NULL,
  `Clave` varchar(45) DEFAULT NULL,
  UNIQUE KEY `Clave_UNIQUE` (`Clave`),
  KEY `Acceso_idx` (`Acceso`),
  KEY `MatriculaVigilantes_idx` (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vigilantes`
--

INSERT INTO `vigilantes` (`Matricula`, `Acceso`, `Clave`) VALUES
('1234567890', 5, '1234567890'),
('0987654321', 6, '0987654321'),
('0974645888', 2, '0974645888'),
('201501589', 1, '1234567897'),
('201501589', 3, '1293567899'),
('201501589', 4, '1234567899'),
('201501589', 7, '1245467899'),
('201501589', 8, '1234567892'),
('201501589', 9, '1235567899'),
('201501589', 10, '1245567899'),
('201501589', 11, '1424567899');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `Matricula` FOREIGN KEY (`Matricula`) REFERENCES `usuarios` (`Matricula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bicicletas`
--
ALTER TABLE `bicicletas`
  ADD CONSTRAINT `UsuarioID` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `compartidacon`
--
ALTER TABLE `compartidacon`
  ADD CONSTRAINT `BiciID` FOREIGN KEY (`BiciID`) REFERENCES `bicicletas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `MembresiaID` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `BID` FOREIGN KEY (`BiciID`) REFERENCES `bicicletas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UEID` FOREIGN KEY (`UsuarioEntradaID`) REFERENCES `usuarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `USID` FOREIGN KEY (`UsuarioSalidaID`) REFERENCES `usuarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `VIDE` FOREIGN KEY (`VigilanteIDEntrada`) REFERENCES `usuarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `VIDS` FOREIGN KEY (`VigilanteIDSalida`) REFERENCES `usuarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `logins`
--
ALTER TABLE `logins`
  ADD CONSTRAINT `RelIDusuario` FOREIGN KEY (`RelUsuarioID`) REFERENCES `usuarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `relRolID` FOREIGN KEY (`RelRolID`) REFERENCES `rol` (`NumRol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vigilantes`
--
ALTER TABLE `vigilantes`
  ADD CONSTRAINT `Acceso` FOREIGN KEY (`Acceso`) REFERENCES `accesos` (`NumAcceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `MatriculaVigilantes` FOREIGN KEY (`Matricula`) REFERENCES `usuarios` (`Matricula`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `correo`, `clave`) VALUES
(4, 'Antonio', 'tono', '123'),
(6, 'Luis', 'luis@gmail.com', '123'),
(8, 'Hugo', 'hugol@gmail.com', '123'),
(15, 'Josue1', 'luceropl@gmail.com', '123');
--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Table structure for table `datosusuario`
--

DROP TABLE IF EXISTS `datosusuario`;
CREATE TABLE IF NOT EXISTS `datosusuario` (
  `idusuario` varchar(30) COLLATE utf8_bin NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(30) COLLATE utf8_bin NOT NULL,
  `sangre` varchar(30) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(30) COLLATE utf8_bin NOT NULL,
  `correo` varchar(30) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(30) COLLATE utf8_bin NOT NULL,
  `fecha` varchar(30) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(30) COLLATE utf8_bin NOT NULL,
  `regimensubsidiario` varchar(30) COLLATE utf8_bin NOT NULL,
  `cita` int(11) NOT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `datosusuario`
--

INSERT INTO `datosusuario` (`idusuario`, `cedula`, `nombre`, `apellido`, `sangre`, `direccion`, `correo`, `telefono`, `fecha`, `sexo`, `regimensubsidiario`, `cita`) VALUES
('ana', 10, 'ana', 'leal', 'A', '22', '1@h.com', '1@h.com', '0001-01-01', 'Femenino', 'IPS', 29),
('alonso', 12, 'alonso', 'gutierrez', 'A+', '1', '1@h.com', '1@h.com', '0001-01-01', 'Femenino', 'IPS', 19),
('silvestre', 1015, 'silvestre', 'vela', 'O-', 'calle 1', 'correo@hotmail.com', '222 222 2222', '1', 'masculino', 'sisben', 0),
('sharifa', 1035, 'sharifa', 'geissler', 'O+', 'calle 1', 'correo@hotmail.com', '222 222 2222', '1', 'femenino', 'sisben', 0),
('arne', 1045, 'arne', 'denman', 'A', 'calle 1', 'correo@hotmail.com', '222 222 2222', '1', 'masculino', 'ips', 0),
('haylie', 1065, 'naylie', 'saller', 'A-', '11', 'correo@hotmail.com', '222 222 2222', '1', 'femenino', 'sisben', 24),
('manli', 1066, 'manli', 'oppenheimer', 'B+', 'calle 1', 'correo@hotmail.com', '222 222 2222', '1', 'masculino', 'ips', 0),
('latif', 1067, 'latif', 'aaldenberg', 'B-', 'calle 1', 'correo@hotmail.com', '222 222 2222', '1', 'masculino', 'ips', 0),
('josepe', 1068, 'josepe', 'sands', 'AB+', 'calle 1', 'correo@hotmail.com', '222 222 2222', '1', 'masculino', 'sisben', 0),
('sigmund', 1069, 'sigmund', 'langlois', 'AB-', 'calle 1', 'correo@hotmail.com', '222 222 2222', '1', 'masculino', 'ips', 0),
('juan', 1065627877, 'juan', 'blomgren', 'A+', 'calle 1', 'correo@hotmail.com', '222 222 2222', '1', 'masculino', 'ips', 0);

-- --------------------------------------------------------

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
CREATE TABLE IF NOT EXISTS `horarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `horas` varchar(20) COLLATE utf8_bin NOT NULL,
  `paciente` varchar(30) COLLATE utf8_bin NOT NULL,
  `doctor` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `horarios`
--

INSERT INTO `horarios` (`id`, `horas`, `paciente`, `doctor`) VALUES
(1, '7:00 A.M-7:20 A.M', '', 'maria'),
(2, '7:20 A.M-7:40 A.M', '', 'maria'),
(3, '7:40 A.M-8:00 A.M', '', 'maria'),
(4, '8:00 A.M-8:20 A.M', '', 'maria'),
(5, '8:20 A.M-8:40 A.M', 'paco', 'maria'),
(6, '8:40 A.M-9:00 A.M', '', 'Pastor'),
(7, '9:00 A.M-9:20 A.M', '', 'maria'),
(8, '9:20 A.M-9:40 A.M', '', 'maria'),
(9, '9:40 A.M-10:00 A.M', '', 'maria'),
(10, '10:00 A.M-10:20 A.M', '', 'maria'),
(11, '10:20 A.M-10:40 A.M', '', 'maria'),
(12, '10:40 A.M-11:00 A.M', '', 'maria'),
(13, '11:00 A.M-11:20 A.M', '', 'maria'),
(14, '11:20 A.M-11:40 A.M', '', 'maria'),
(15, '11:40 A.M-12:00 P.M', '', 'maria'),
(16, '12:00 P.M-12:20 P.M', '', 'maria'),
(17, '12:20 P.M-12:40 P.M', '', 'maria'),
(18, '12:40 P.M-1:00 P.M', '', 'maria'),
(19, '1:00 P.M-1:20 P.M', 'alonso', 'pepe'),
(20, '1:20 P.M-1:40 P.M', '', 'pepe'),
(21, '1:40 P.M-2:00 P.M', '', 'pepe'),
(22, '2:00 P.M-2:20 P.M', '', 'pepe'),
(23, '2:20 P.M-2:40 P.M', '', 'pepe'),
(24, '2:40 P.M-3:00 P.M', 'haylie', 'pepe'),
(25, '3:00 P.M-3:20 P.M', '', 'pepe'),
(26, '3:20 P.M-3:40 P.M', '', 'pepe'),
(27, '3:40 P.M-4:00 P.M', '', 'pepe'),
(28, '4:20 P.M-4:40 P.M', '', 'pepe'),
(29, '4:40 P.M-5:00 P.M', 'ana', 'pepe'),
(30, '5:00 P.M-5:20 P.M', '', 'pepe'),
(31, '5:20 P.M-5:40 P.M', '', 'pepe'),
(32, '5:40 P.M-6:00 P.M', '', 'pepe'),
(33, '6:20 P.M-6:40 P.M', '', 'pepe'),
(34, '6:40 P.M-7:00 P.M', '', 'pepe');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(30) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `password`, `tipo`) VALUES
('Gerardo', 'prueba', 'usuario'),
('Gerardo1', 'prueba', 'usuario'),
('Pastor', '1234567890', 'doctor'),
('alonso', '123', 'usuario'),
('ana', '123', 'usuario'),
('arne', '123', 'usuario'),
('frank', '123', 'admin'),
('haylie', '123', 'usuario'),
('josepe', '123', 'usuario'),
('latif', '123', 'usuario'),
('lori', '1', 'admin'),
('manli', '123', 'usuario'),
('maria', '123', 'doctor'),
('pedro', '1', 'admin'),
('pepe', '123', 'doctor'),
('sharifa', '123', 'usuario'),
('sigmund', '123', 'usuario'),
('silvestre', '123', 'usuario'),
('tata', '1', 'doctor');
--
-- Database: `pasteleria`
--
CREATE DATABASE IF NOT EXISTS `pasteleria` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `pasteleria`;

-- --------------------------------------------------------

--
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE IF NOT EXISTS `administradores` (
  `idAdministrador` int(3) NOT NULL AUTO_INCREMENT,
  `usuarioAdministrador` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `claveAdministrador` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `dueno` int(2) NOT NULL,
  PRIMARY KEY (`idAdministrador`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `administradores`
--

INSERT INTO `administradores` (`idAdministrador`, `usuarioAdministrador`, `claveAdministrador`, `dueno`) VALUES
(1, 'Pastor', '123', 0),
(2, 'Jesus Garcia', '123', 1),
(3, 'Luis_Angel', '123', 0),
(4, 'Alicia_Arm', '123', 0),
(5, 'Domin_Arx', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_pedido` int(3) NOT NULL AUTO_INCREMENT,
  `fecha_entrega` date NOT NULL,
  `tipo_pastel` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_cliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(6) NOT NULL,
  `costo_unitario` int(6) NOT NULL,
  `subtotal` int(6) NOT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `fecha_entrega`, `tipo_pastel`, `nombre_cliente`, `cantidad`, `costo_unitario`, `subtotal`) VALUES
(1, '2020-02-20', 'Chocolate', 'Hugo Hernandez', 2, 100, 200),
(23, '2020-02-22', 'Coco', 'Raymundo Hernandez', 3, 225, 675),
(41, '2020-03-14', 'PiÃ±on', 'Sharon Mantos', 5, 250, 1125),
(27, '2020-02-28', 'Cereza', 'Leonardo Ramos', 3, 500, 1350),
(45, '2020-03-28', 'PiÃ±on', 'Camilo Tamariz', 2, 250, 500),
(47, '2020-03-22', 'Cereza', 'Said Juarez', 1, 150, 150),
(38, '2020-03-28', 'Chocolate', 'Gabriela Santos', 2, 420, 840);

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `id_venta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `rfc` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_pastel` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(6) NOT NULL,
  `costo_unitario` int(6) NOT NULL,
  `subtotal` int(6) NOT NULL,
  `iva` int(6) DEFAULT NULL,
  `total` int(6) NOT NULL,
  `tipo_pago` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_venta` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `estatus_impresion` int(2) NOT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`id_venta`, `nombre_cliente`, `rfc`, `direccion`, `tipo_pastel`, `cantidad`, `costo_unitario`, `subtotal`, `iva`, `total`, `tipo_pago`, `tipo_venta`, `estatus_impresion`) VALUES
(20, 'Lucia Hernandez', NULL, NULL, 'Coco', 1, 100, 100, NULL, 100, '', 'Ticket', 1),
(7, 'Luis Garcia', 'LUSCJ880326', 'granjas puebla', 'PiÃ±on', 3, 225, 675, 65, 4012, '', 'Factura', 1),
(8, 'Manuel', NULL, NULL, 'Cereza', 2, 100, 200, NULL, 200, '', 'Ticket', 1),
(11, 'Said Juarez', NULL, NULL, 'cereza', 10, 500, 500, NULL, 2349, '', 'Ticket', 1),
(12, 'Raymundo Hernandez', NULL, NULL, 'Cereza', 21, 200, 3780, NULL, 3780, '', 'Ticket', 1),
(13, 'Marcos Yen', NULL, NULL, 'Chocolate', 10, 150, 1350, NULL, 1350, '', 'Ticket', 1),
(14, 'Fernando Diaz', 'VECJ880326', 'San Agustin Ex Hacienda', 'Chocolate', 48, 100, 4320, 65, 4012, '', 'Factura', 1),
(15, 'Abraham', 'ABRJ880326', 'San Agustin Ex Hacienda', 'coco', 3, 200, 300, 22, 322, '', 'Factura', 1),
(16, 'Jorge', NULL, NULL, 'coco', 7, 100, 700, NULL, 700, '', 'Ticket', 1),
(17, 'Eduardo', 'LUSCJ880326', 'San Agustin Ex Hacienda', 'cereza', 4, 500, 300, 324, 500, '', 'Factura', 1),
(18, 'Luis Hernandez', 'VECJ880326', 'IGNACIO ZARAGOZA 10', 'Chocolate', 1, 234, 234, 22, 333, '', 'Factura', 1),
(19, 'Javier Amador', NULL, NULL, 'Coco', 4, 150, 600, NULL, 600, '', 'Ticket', 1),
(21, 'Felipe Carrasco', 'FEPCJ880326', 'San Agustin Ex Hacienda', 'Fresa', 4, 200, 800, 128, 928, '', 'Factura', 1),
(22, 'Jose Domiguez', 'LUSCJ880326', 'San Agustin Ex Hacienda', 'PiÃ±on', 7, 200, 1260, 202, 1462, '', 'Factura', 1),
(23, 'Miguel Herrera', 'MISCJ812326', 'IGNACIO ZARAGOZA 10', 'Chocolate', 2, 150, 300, 48, 348, '', 'Factura', 1),
(24, 'Miguel Herrera', 'VECJ880326', 'IGNACIO ZARAGOZA 10', 'Chocolate', 2, 150, 300, 48, 348, '', 'Factura', 1),
(25, 'Miguel Herrera', 'VECJ880326', 'IGNACIO ZARAGOZA 10', 'Chocolate', 2, 150, 300, 48, 348, '', 'Factura', 1),
(26, 'fernando alberto', NULL, 'granjas puebla', 'Chocolate', 2, 200, 400, NULL, 400, NULL, 'Ticket', 0),
(27, 'Juan', NULL, NULL, 'Nuez', 2, 200, 400, NULL, 400, NULL, 'Ticket', 1),
(28, 'Said Juarez', NULL, NULL, 'PiÃ±on', 3, 255, 765, NULL, 765, NULL, 'Ticket', 1),
(29, 'Julio Montes', 'JULM243839', 'IGNACIO ZARAGOZA 10', 'Nuez', 2, 250, 500, 80, 580, NULL, 'Factura', 1),
(30, 'Luis Angel Minutti', 'LASD34567', 'IGNACIO ZARAGOZA 10', 'PiÃ±on', 10, 225, 2025, 324, 2349, NULL, 'Factura', 1),
(31, 'Cristiano Ronaldo', NULL, NULL, 'PiÃ±on', 2, 250, 500, NULL, 500, NULL, 'Ticket', 0),
(32, 'Valeria Luna', NULL, NULL, 'PiÃ±on', 1, 250, 250, NULL, 250, NULL, 'Ticket', 0),
(33, 'Marcos Madrid', NULL, NULL, 'Fresa', 1, 300, 300, NULL, 300, NULL, 'Ticket', 1),
(34, 'Benito Martinez', 'BENE122344', 'IGNACIO ZARAGOZA 10', 'Fresa', 1, 360, 360, 58, 418, NULL, 'Factura', 1),
(35, 'Guillermo Velzaquez', NULL, NULL, 'Cereza', 1, 400, 400, NULL, 400, NULL, 'Ticket', 1),
(36, 'Jesus Olivas', 'JES01837493', '203 whittaker Rd, Arugath habosem', 'Chocolate', 5, 300, 1350, 216, 1566, NULL, 'Factura', 1),
(37, 'Lalo Gutierrez', 'LALGU735693', 'Valladolid 47 Colonia Tepeyac', 'Fresa', 1, 300, 300, 48, 348, NULL, 'Factura', 0),
(38, 'Jose Luis Peralta', NULL, NULL, 'Cereza', 3, 400, 1080, NULL, 1080, NULL, 'Ticket', 1),
(39, 'Carlos Benitez', 'VECJ880326', '203 whittaker Rd, Arugath habosem', 'Nuez', 2, 234, 468, 75, 543, NULL, 'Factura', 0),
(40, 'Damian Larios', 'BENE122344', '1A 8 Sur #10', 'Chocolate', 2, 420, 840, 134, 974, NULL, 'Factura', 1),
(41, 'Jelipe Nantes', NULL, NULL, 'PiÃ±on', 2, 250, 500, NULL, 500, NULL, 'Ticket', 1),
(42, ' Abraham Sanchez', 'VECJ880326', 'IGNACIO ZARAGOZA 10', 'Limon', 5, 235, 1058, 169, 1227, NULL, 'Factura', 1);
--
-- Database: `php_comentario`
--
CREATE DATABASE IF NOT EXISTS `php_comentario` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `php_comentario`;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Tabla Comentarios';

--
-- Dumping data for table `comentario`
--

INSERT INTO `comentario` (`comentario_id`, `parent_comentario_id`, `comment`, `comment_sender_name`, `date`) VALUES
(4, 0, 'Me fascina la programacion, muy interesante.', 'Luisa Maron', '2018-03-23 04:50:37'),
(5, 0, 'Los lenguajes de programacion nos ayudan a crear plataformas de todo tipo', 'Claudia Guillen', '2018-03-23 05:09:48'),
(6, 4, '  ToÃ±in es el mas cahqueto del mundo', 'Hugo Hernandez', '2020-03-11 09:04:57'),
(7, 4, 'El profe Lucero nos sacara 10 siiiiiiiiiiiii', 'Marcos Yen', '2020-03-11 09:05:21');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `megusta_nomegusta`
--

INSERT INTO `megusta_nomegusta` (`id`, `member_id`, `comentario_id`, `like_unlike`, `date`) VALUES
(2, 1, 3, 1, '2018-03-22 23:09:56'),
(3, 1, 5, 1, '2018-03-22 23:09:52'),
(4, 1, 4, 0, '2020-03-18 17:39:23'),
(5, 1, 6, 0, '2020-03-11 03:06:12');
--
-- Database: `veterinaria`
--
CREATE DATABASE IF NOT EXISTS `veterinaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `veterinaria`;

-- --------------------------------------------------------

--
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE IF NOT EXISTS `administradores` (
  `idAdministrador` int(11) NOT NULL AUTO_INCREMENT,
  `usuarioAdministrador` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `claveAdministrador` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idAdministrador`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administradores`
--

INSERT INTO `administradores` (`idAdministrador`, `usuarioAdministrador`, `claveAdministrador`) VALUES
(1, 'Pastor', 'prueba'),
(2, 'Gerardo', 'pruebagerardo');

-- --------------------------------------------------------

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
CREATE TABLE IF NOT EXISTS `citas` (
  `numeroCita` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCita` datetime NOT NULL,
  `codigoEmpleado` int(11) NOT NULL,
  `numeroCliente` int(11) NOT NULL,
  `nombreMascota` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `estadoMascota` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`numeroCita`),
  KEY `codigoEmpleado` (`codigoEmpleado`),
  KEY `numeroCliente` (`numeroCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `citas`
--

INSERT INTO `citas` (`numeroCita`, `fechaCita`, `codigoEmpleado`, `numeroCliente`, `nombreMascota`, `estadoMascota`) VALUES
(23, '2019-11-06 07:08:00', 8, 25, 'Scooby', 'ciega'),
(24, '2019-11-24 07:06:00', 7, 26, 'Minaj', 'Ala rota'),
(27, '2019-11-19 06:06:00', 4, 27, 'Lali', 'Investigar enfermedad'),
(28, '2019-11-12 23:00:00', 5, 25, 'Stup', 'Riñon perforado'),
(29, '2019-11-08 05:13:00', 7, 27, 'panki', 'necesita operar'),
(33, '2019-11-22 00:00:00', 6, 26, 'pro', 'Cortar cabello'),
(34, '2019-11-21 04:00:00', 7, 26, 'Lupe', 'se muere'),
(35, '2019-11-01 10:00:00', 8, 23, 'lalin', 'ciega'),
(36, '2019-11-22 21:17:00', 7, 23, 'trinir', 'atropellado');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `numeroCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidoCliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `sexoCliente` enum('Mujer','Hombre') COLLATE utf8_spanish_ci NOT NULL,
  `direccionCliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `telefonoCliente` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `codigoTipoCliente` int(11) NOT NULL,
  `usuarioCliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `claveCliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`numeroCliente`),
  KEY `codigoTipoCliente` (`codigoTipoCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`numeroCliente`, `nombreCliente`, `apellidoCliente`, `sexoCliente`, `direccionCliente`, `telefonoCliente`, `codigoTipoCliente`, `usuarioCliente`, `claveCliente`) VALUES
(23, 'Javier', 'Amador', 'Hombre', 'Veracruz', '76522424', 1, 'javis', '123'),
(24, 'Salma', 'Huerta', 'Mujer', 'Cholula', '275475', 1, 'salmiux', '123'),
(25, 'Hugo', 'Hernandez', 'Hombre', 'Cholula', '2352345', 1, 'hugol', '123'),
(26, 'David', 'Lopez', 'Hombre', 'Atlixco', '1232\'2349', 2, 'david12', '123'),
(27, 'Jazmin', 'Huerta', 'Mujer', 'Atlixco', '12490285', 1, 'jaz', '123');

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `codigoEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombreEmpleado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidoEmpleado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `sexoEmpleado` enum('Mujer','Hombre') COLLATE utf8_spanish_ci NOT NULL,
  `direccionEmpleado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `telefonoEmpleado` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `usuarioEmpleado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `claveEmpleado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `codigoTipoEmpleado` int(11) NOT NULL,
  PRIMARY KEY (`codigoEmpleado`),
  KEY `codigoTipoEmpleado` (`codigoTipoEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`codigoEmpleado`, `nombreEmpleado`, `apellidoEmpleado`, `sexoEmpleado`, `direccionEmpleado`, `telefonoEmpleado`, `usuarioEmpleado`, `claveEmpleado`, `codigoTipoEmpleado`) VALUES
(2, 'Fernando', 'Diaz', 'Hombre', 'Puebla', '29121487', 'ferhalo', '123', 2),
(3, 'Alicia', 'Cisneros Armenta', 'Mujer', 'Metepec', '23423478', 'alis', '123', 1),
(4, 'Jose Luis', 'Perales', 'Hombre', 'Chihuahua', '13213424', 'josy', '123', 3),
(5, 'Brenda', 'Cortes', 'Mujer', 'Irapuato', '23874374', 'brendis', '123', 6),
(6, 'Genaro', 'Martinez', 'Hombre', 'New York', '23847234', 'genarus', '123', 4),
(7, 'Josue', 'Perez Lucero', 'Hombre', 'Puebla', '234242134', 'plucero', '123', 5),
(8, 'Said', 'Vera', 'Hombre', 'Acatzingo', '1231324', 'saidelpapi', '123', 1),
(9, 'Alexis', 'Rodriguez', 'Hombre', 'Metepec', '129349843', 'ale', '123', 1),
(10, 'Marcos', 'Camberos', 'Mujer', 'marin', '12234243', 'marquitos', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loginempleados`
--

DROP TABLE IF EXISTS `loginempleados`;
CREATE TABLE IF NOT EXISTS `loginempleados` (
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `codigoTipoEmpleado` int(11) NOT NULL,
  `codigoEmpleado` int(2) NOT NULL,
  UNIQUE KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginempleados`
--

INSERT INTO `loginempleados` (`user`, `contrasena`, `codigoTipoEmpleado`, `codigoEmpleado`) VALUES
('ferhalo', '123', 2, 2),
('josy', '123', 3, 4),
('ale', '123', 1, 9),
('marquitos', '123', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
CREATE TABLE IF NOT EXISTS `reportes` (
  `numeroReporte` int(11) NOT NULL AUTO_INCREMENT,
  `numeroCita` int(11) NOT NULL,
  `total` double NOT NULL,
  `recomendaciones` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`numeroReporte`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reportes`
--

INSERT INTO `reportes` (`numeroReporte`, `numeroCita`, `total`, `recomendaciones`) VALUES
(10, 13, 23487, 'ciega'),
(2, 17, 1001, 'uy'),
(3, 15, 4011.2, 'Tapelo bien'),
(4, 18, 1234, 'cuidela mucho'),
(6, 9, 2341, 'traigala mas a consulta porfi'),
(7, 19, 101, 'echar cal'),
(8, 21, 8342, 'se muere'),
(9, 31, 7324, 'se mucho');

-- --------------------------------------------------------

--
-- Table structure for table `tipoclientes`
--

DROP TABLE IF EXISTS `tipoclientes`;
CREATE TABLE IF NOT EXISTS `tipoclientes` (
  `codigoTipoCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombreTipoCliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigoTipoCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tipoclientes`
--

INSERT INTO `tipoclientes` (`codigoTipoCliente`, `nombreTipoCliente`) VALUES
(1, 'Básico'),
(2, 'VIP');

-- --------------------------------------------------------

--
-- Table structure for table `tipoempleados`
--

DROP TABLE IF EXISTS `tipoempleados`;
CREATE TABLE IF NOT EXISTS `tipoempleados` (
  `codigoTipoEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombreTipoEmpleado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigoTipoEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tipoempleados`
--

INSERT INTO `tipoempleados` (`codigoTipoEmpleado`, `nombreTipoEmpleado`) VALUES
(1, 'Veterinario Domestico'),
(2, 'Veterinario Animales exóticos'),
(3, 'Veterinario Rural'),
(4, 'Veterinario Investigador'),
(5, 'Veterinario Silvestre'),
(6, 'Veterinario Especialista');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`numeroCliente`) REFERENCES `clientes` (`numeroCliente`),
  ADD CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`codigoEmpleado`) REFERENCES `empleados` (`codigoEmpleado`);

--
-- Constraints for table `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`codigoTipoCliente`) REFERENCES `tipoclientes` (`codigoTipoCliente`);

--
-- Constraints for table `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`codigoTipoEmpleado`) REFERENCES `tipoempleados` (`codigoTipoEmpleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
