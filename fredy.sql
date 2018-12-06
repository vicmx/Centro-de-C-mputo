-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-12-2018 a las 11:51:37
-- Versión del servidor: 5.5.61
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ccuuaem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--
-- Creación: 10-11-2018 a las 18:46:32
-- Última actualización: 10-11-2018 a las 18:46:36
-- Última revisión: 10-11-2018 a las 18:46:43
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tabla de Administradores';

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`aid`, `username`, `password`, `email`) VALUES
(1, 'vicmx', 'ddd3234e44323e60b08f247e61d07040', 'vicmx@uaem.mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contadores`
--
-- Creación: 10-11-2018 a las 18:46:32
-- Última actualización: 06-12-2018 a las 16:11:39
-- Última revisión: 06-12-2018 a las 17:50:35
--

DROP TABLE IF EXISTS `contadores`;
CREATE TABLE IF NOT EXISTS `contadores` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `aniodia` varchar(10) NOT NULL,
  `anio` varchar(5) NOT NULL,
  `mes` varchar(5) NOT NULL,
  `female` int(11) NOT NULL DEFAULT '0',
  `male` int(11) NOT NULL DEFAULT '0',
  `lic1` int(11) NOT NULL DEFAULT '0',
  `lic2` int(11) NOT NULL DEFAULT '0',
  `lic3` int(11) NOT NULL DEFAULT '0',
  `lic4` int(11) NOT NULL DEFAULT '0',
  `lic5` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `infor` (`female`,`male`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tabla contadores para estadísticas';

--
-- Volcado de datos para la tabla `contadores`
--

INSERT INTO `contadores` (`cid`, `aniodia`, `anio`, `mes`, `female`, `male`, `lic1`, `lic2`, `lic3`, `lic4`, `lic5`) VALUES
(1, '2018-22', '2018', '11', 0, 1, 0, 1, 0, 0, 0),
(2, '2018-06', '2018', '12', 12, 7, 4, 3, 6, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licenciaturas`
--
-- Creación: 10-11-2018 a las 18:46:32
-- Última actualización: 10-11-2018 a las 18:46:36
-- Última revisión: 10-11-2018 a las 18:46:43
--

DROP TABLE IF EXISTS `licenciaturas`;
CREATE TABLE IF NOT EXISTS `licenciaturas` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `licenciatura` varchar(500) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tabla de Licenciaturas';

--
-- Volcado de datos para la tabla `licenciaturas`
--

INSERT INTO `licenciaturas` (`lid`, `licenciatura`) VALUES
(1, 'Lic. en Informática'),
(2, 'Lic. en Educación Física'),
(3, 'Lic. en Psicología'),
(4, 'Lic. en Arquitectura'),
(5, 'Lic. en Contaduría Pública');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--
-- Creación: 10-11-2018 a las 18:46:32
-- Última actualización: 10-11-2018 a las 18:46:43
-- Última revisión: 10-11-2018 a las 18:46:43
--

DROP TABLE IF EXISTS `matriculas`;
CREATE TABLE IF NOT EXISTS `matriculas` (
  `mid` bigint(20) NOT NULL AUTO_INCREMENT,
  `clave` varchar(15) NOT NULL,
  `nombre` text NOT NULL,
  `lid` int(11) NOT NULL,
  `genero` enum('male','female') NOT NULL DEFAULT 'male',
  `generacion` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL DEFAULT 'blank.jpg',
  `obsv` varchar(500) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tabla de matriculas de alumno';

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`mid`, `clave`, `nombre`, `lid`, `genero`, `generacion`, `foto`, `obsv`) VALUES
(1, 'S120114002266', 'Aranda Paniagua Ivvan', 2, 'male', '2011', 'blank.jpg', '\r'),
(2, 'S120114005808', 'Bahena Jiménez Lucero', 2, 'female', '2011', 'blank.jpg', '\r'),
(3, 'S120114005439', 'Cárdenas Gama José Eduardo', 2, 'male', '2011', 'blank.jpg', '\r'),
(4, 'S120114001698', 'Castillo Montes De Oca Geovanny', 2, 'male', '2011', 'blank.jpg', '\r'),
(5, 'S120114009902', 'Díaz Jacobo Alejandra', 2, 'female', '2011', 'blank.jpg', '\r'),
(6, 'S120114002000', 'Eguiluz Ruiz Itzel Ofir', 2, 'female', '2011', 'blank.jpg', '\r'),
(7, 'S120114001703', 'Enciso García Anahí', 2, 'female', '2011', 'blank.jpg', '\r'),
(8, 'S120114005795', 'Fuentes López Jorge Alejandro', 2, 'male', '2011', 'blank.jpg', '\r'),
(9, 'S120114004859', 'Jiménez Ortiz Yanet', 2, 'female', '2011', 'blank.jpg', '\r'),
(10, 'S120114002703', 'López Estrada Fermín', 2, 'male', '2011', 'blank.jpg', '\r'),
(11, 'S120114004190', 'Macedonio Manjarrez María Magdalena', 2, 'female', '2011', 'blank.jpg', '\r'),
(12, 'S120114006529', 'Macedonio Nabor Adán', 2, 'male', '2011', 'blank.jpg', '\r'),
(13, 'S120114006331', 'Mejía Juárez Juan Manuel Ghandi', 2, 'male', '2011', 'blank.jpg', '\r'),
(14, 'S120114007638', 'Ocampo Astudillo Bertín', 2, 'male', '2011', 'blank.jpg', '\r'),
(15, 'S120114010375', 'Ocampo Pichardo Elizabeth', 2, 'female', '2011', 'blank.jpg', '\r'),
(16, 'S120114008582', 'Ramírez Barrera José Marcelo', 2, 'male', '2011', 'blank.jpg', '\r'),
(17, 'S120114008020', 'Real Ávila Erick', 2, 'male', '2011', 'blank.jpg', '\r'),
(18, 'S120114007922', 'Rodríguez García Manuel Alejandro', 2, 'male', '2011', 'blank.jpg', '\r'),
(19, 'S120114002898', 'Rodríguez Mondragón Caterine', 2, 'female', '2011', 'blank.jpg', '\r'),
(20, 'S120114008084', 'Rojas Casarrubias Francisco  Javier', 2, 'male', '2011', 'blank.jpg', '\r'),
(21, 'S120114003843', 'Rojas Tafolla Eduardo', 2, 'male', '2011', 'blank.jpg', '\r'),
(22, 'S120114009324', 'Salazar González Irving', 2, 'male', '2011', 'blank.jpg', '\r'),
(23, 'S120114002100', 'Salgado Pedroza Bertha Monserrat', 2, 'female', '2011', 'blank.jpg', '\r'),
(24, 'S120114005973', 'Sánchez Carpanta Nadia Itzel', 2, 'female', '2011', 'blank.jpg', '\r'),
(25, 'S120114003650', 'Urbina Cabrera Mayra Patricia', 2, 'female', '2011', 'blank.jpg', '\r'),
(26, 'S120114010384', 'Velázquez Pedraza Oswaldo', 2, 'male', '2011', 'blank.jpg', '\r'),
(27, 'S120114006077', 'Velázquez Salgado José Antonio', 2, 'male', '2011', 'blank.jpg', '\r'),
(28, 'S120114010380', 'Villalobos Cruz Karla Johana', 2, 'female', '2011', 'blank.jpg', '\r'),
(29, 'S120114010023', 'Viveros Millán Carlos Alberto', 2, 'male', '2011', 'blank.jpg', '\r'),
(30, 'S120114002216', 'Aguilar Vásquez Karen Gabriela', 2, 'female', '2011', 'blank.jpg', '\r'),
(31, 'S120114002226', 'Aguilar Vásquez Karla Daniela', 2, 'female', '2011', 'blank.jpg', '\r'),
(32, 'S120114005970', 'Arizmendi Brito Susana Inés', 2, 'female', '2011', 'blank.jpg', '\r'),
(33, 'S120114002200', 'Barrios Castro Marco Polo', 2, 'male', '2011', 'blank.jpg', '\r'),
(34, 'S120114002124', 'Beltrán González Francisco Andrés', 2, 'male', '2011', 'blank.jpg', '\r'),
(35, 'S120114010484', 'Carrión Hernández Engelth Ramón', 2, 'male', '2011', 'blank.jpg', '\r'),
(36, 'S120114002786', 'Castañeda Urbina Yuliana Grisel', 2, 'female', '2011', 'blank.jpg', '\r'),
(37, 'S120114002508', 'Ceballos Alva Cesar Augusto', 2, 'male', '2011', 'blank.jpg', '\r'),
(38, 'S120114001755', 'Estrada Bahena Jonathan Alejandro', 2, 'male', '2011', 'blank.jpg', '\r'),
(39, 'S120114006579', 'Flores Corona Danny Ashley', 2, 'female', '2011', 'blank.jpg', '\r'),
(40, 'S120114002163', 'Flores Herrera Eric', 2, 'male', '2011', 'blank.jpg', '\r'),
(41, 'S120114002664', 'Gabino Corona Daniel', 2, 'male', '2011', 'blank.jpg', '\r'),
(42, 'S120114004086', 'García Evangelio Julissa', 2, 'female', '2011', 'blank.jpg', '\r'),
(43, 'S120114006004', 'González Carpanta Ana Gabriela', 2, 'female', '2011', 'blank.jpg', '\r'),
(44, 'S120114004288', 'González Martínez Loreto', 2, 'male', '2011', 'blank.jpg', '\r'),
(45, 'S120114005765', 'Hernández Astudillo Carlos', 2, 'male', '2011', 'blank.jpg', '\r'),
(46, 'S120114002590', 'Hernández Palomo Alonso', 2, 'male', '2011', 'blank.jpg', '\r'),
(47, 'S120114003837', 'Iturbide Leal Francisco Javier', 2, 'male', '2011', 'blank.jpg', '\r'),
(48, 'S120114006706', 'Jiménez Campos Marco Antonio', 2, 'male', '2011', 'blank.jpg', '\r'),
(49, 'S120114003334', 'Jiménez Flores Mirsa Lizbeth', 2, 'female', '2011', 'blank.jpg', '\r'),
(50, 'S120114003393', 'Lázaro Pérez José Augusto', 2, 'male', '2011', 'blank.jpg', '\r'),
(51, 'S120114007344', 'Melgar Salinas Marlene', 2, 'female', '2011', 'blank.jpg', '\r'),
(52, 'S120114005975', 'Mondragón Abarca Esmeralda', 2, 'female', '2011', 'blank.jpg', '\r'),
(53, 'S120114010201', 'Moran Tapia Antonio', 2, 'male', '2011', 'blank.jpg', '\r'),
(54, 'S120114004507', 'Ocampo Morales Iris Gianinna', 2, 'female', '2011', 'blank.jpg', '\r'),
(55, 'S120114002021', 'Ortiz López Ana Yanett', 2, 'female', '2011', 'blank.jpg', '\r'),
(56, 'S120114003730', 'Pedroza Mejía Sergio Alberto', 2, 'male', '2011', 'blank.jpg', '\r'),
(57, 'S120114002027', 'Pina Arizmendi Jesús Alfredo', 2, 'male', '2011', 'blank.jpg', '\r'),
(58, 'S120114006150', 'Ramírez Corona Eduardo', 2, 'male', '2011', 'blank.jpg', '\r'),
(59, 'S120114003717', 'Ramos Reyes Ericka Guadalupe', 2, 'female', '2011', 'blank.jpg', '\r'),
(60, 'S120114003704', 'Reyes Rivera Iván Ricardo', 2, 'male', '2011', 'blank.jpg', '\r'),
(61, 'S120114002550', 'Salgado Hernández Javier', 2, 'male', '2011', 'blank.jpg', '\r'),
(62, 'S120114003362', 'Tapia Ochoa Iván', 2, 'male', '2011', 'blank.jpg', '\r'),
(63, 'S120114006160', 'Vázquez Díaz Roberto Carlos', 2, 'male', '2011', 'blank.jpg', '\r'),
(64, 'S120114002573', 'Vázquez Fuentes Mauricio', 2, 'male', '2011', 'blank.jpg', '\r'),
(65, 'S120114010214', 'Velázquez Carpanta María Fernanda', 2, 'female', '2011', 'blank.jpg', '\r'),
(66, 'S120104000017', 'Acacio López Gerardo', 2, 'male', '2010', 'blank.jpg', '\r'),
(67, 'S120104000278', 'Aguilar Nava Abilene Jazmín', 2, 'female', '2010', 'blank.jpg', '\r'),
(68, 'S120104000302', 'Alvarado Jiménez Alfonso', 2, 'male', '2010', 'blank.jpg', '\r'),
(69, 'S120104000018', 'Aranda Mena Olgamar Yanin', 2, 'female', '2010', 'blank.jpg', '\r'),
(70, 'S120104000985', 'Armenta Ferrer Luz María', 2, 'female', '2010', 'blank.jpg', '\r'),
(71, 'S120104000220', 'Ávila Vega Samuel', 2, 'male', '2010', 'blank.jpg', '\r'),
(72, 'S120104001961', 'Beltrán Estrada Noé', 2, 'male', '2010', 'blank.jpg', '\r'),
(73, 'S120104003392', 'Beltrán Navarrete Luis Omar', 2, 'male', '2010', 'blank.jpg', '\r'),
(74, 'S120104000664', 'Bernal Díaz Mariela', 2, 'female', '2010', 'blank.jpg', '\r'),
(75, 'S120104009018', 'Carpanta Castañeda Gabriel', 2, 'male', '2010', 'blank.jpg', '\r'),
(76, 'S120104008756', 'Cruz Lara  Alexis', 2, 'male', '2010', 'blank.jpg', '\r'),
(77, 'S120104001793', 'Delgado Ayala Gabriela', 2, 'female', '2010', 'blank.jpg', '\r'),
(78, 'S120104001900', 'Estrada Fuerte José Hazel', 2, 'male', '2010', 'blank.jpg', '\r'),
(79, 'S120104004827', 'Flores Ortiz Edgar', 2, 'male', '2010', 'blank.jpg', '\r'),
(80, 'S120104005215', 'García Corona Jesús Emmanuel', 2, 'male', '2010', 'blank.jpg', '\r'),
(81, 'S120104002650', 'González Saucedo Dulce Olivia', 2, 'female', '2010', 'blank.jpg', '\r'),
(82, 'S120104008636', 'Hernández Flores Luis Felipe', 2, 'male', '2010', 'blank.jpg', '\r'),
(83, 'S120104008758', 'Hernández Nápoles Soledad', 2, 'female', '2010', 'blank.jpg', '\r'),
(84, 'S120104007965', 'Hernández Gutierres Irving', 2, 'male', '2010', 'blank.jpg', '\r'),
(85, 'S120104007962', 'Hernández Gutiérrez Mitchel Alberto', 2, 'male', '2010', 'blank.jpg', '\r'),
(86, 'S120104001789', 'Jacobo Leguizamo Arturo', 2, 'male', '2010', 'blank.jpg', '\r'),
(87, 'S120104001813', 'Moctezuma Nolasco Saúl', 2, 'male', '2010', 'blank.jpg', '\r'),
(88, 'S120104004385', 'Montes De Oca Rodríguez Marco Antonio', 2, 'male', '2010', 'blank.jpg', '\r'),
(89, 'S120104002769', 'Morales Iturbe Jesús', 2, 'male', '2010', 'blank.jpg', '\r'),
(90, 'S120104002139', 'Morales Pérez Maribel', 2, 'female', '2010', 'blank.jpg', '\r'),
(91, 'S120104002588', 'Mozo Cázales Emmanuel', 2, 'male', '2010', 'blank.jpg', '\r'),
(92, 'S120104006266', 'Navarrete Ocampo Gustavo', 2, 'male', '2010', 'blank.jpg', '\r'),
(93, 'S120104002535', 'Ortega Gutiérrez Esmeralda', 2, 'female', '2010', 'blank.jpg', '\r'),
(94, 'S120104006257', 'Ortiz Díaz Cristina', 2, 'female', '2010', 'blank.jpg', '\r'),
(95, 'S120104002250', 'Pedroza Ocampo Juan Alberto', 2, 'male', '2010', 'blank.jpg', '\r'),
(96, 'S120104008133', 'Rodríguez Hernández Catalino', 2, 'male', '2010', 'blank.jpg', '\r'),
(97, 'S120104001837', 'Sánchez Manzo Irving', 2, 'male', '2010', 'blank.jpg', '\r'),
(98, 'S120104009562', 'Sotelo Moyano Nidia Ketzali', 2, 'female', '2010', 'blank.jpg', '\r'),
(99, 'S120104001992', 'Valdez Toledo Pedro Alberto', 2, 'male', '2010', 'blank.jpg', '\r'),
(100, 'S120104006543', 'Vázquez Hernández Alexis Amín', 2, 'male', '2010', 'blank.jpg', '\r'),
(101, 'S120104008452', 'Velázquez López Aldair', 2, 'male', '2010', 'blank.jpg', '\r'),
(102, 'S120104008986', 'Acosta Villegas Flor  Marlen', 5, 'female', '2010', 'blank.jpg', '\r'),
(103, 'S120104000121', 'Arias Ocampo Judith', 5, 'female', '2010', 'blank.jpg', '\r'),
(104, 'S120104001973', 'Cadenas Ocampo  Eliseo', 5, 'male', '2010', 'blank.jpg', '\r'),
(105, 'S120104002263', 'Gómez Hurtado Giovani', 5, 'male', '2010', 'blank.jpg', '\r'),
(106, 'S120104002213', 'González Coria Cipatli', 5, 'male', '2010', 'blank.jpg', '\r'),
(107, 'S120104003792', 'Jiménez Camaños Nancy Yazmin', 5, 'female', '2010', 'blank.jpg', '\r'),
(108, 'S120104006279', 'Macías Andrade Ana Fernanda', 5, 'female', '2010', 'blank.jpg', '\r'),
(109, 'S120104004806', 'Palacios  Domínguez José Luis', 5, 'male', '2010', 'blank.jpg', '\r'),
(110, 'S120104005195', 'Pina Estrada Lidia', 5, 'female', '2010', 'blank.jpg', '\r'),
(111, 'S120104001853', 'Rojas Alonso Dulce Carolina', 5, 'female', '2010', 'blank.jpg', '\r'),
(112, 'S120104005598', 'Salgado Muciño Eduardo', 5, 'male', '2010', 'blank.jpg', '\r'),
(113, 'S120104005389', 'Sánchez Procopio Vanessa', 5, 'female', '2010', 'blank.jpg', '\r'),
(114, 'S120104002891', 'Toledo Benítez Daniel', 5, 'male', '2010', 'blank.jpg', '\r'),
(115, 'S120104007696', 'Toledo González Víctor Manuel', 5, 'male', '2010', 'blank.jpg', '\r'),
(116, 'S120104002008', 'Vázquez Chirinos Lizette', 5, 'female', '2010', 'blank.jpg', '\r'),
(117, 'S12009403940', 'Abad González Diego', 1, 'male', '2009', 'blank.jpg', '\r'),
(118, 'S12009403948', 'Abad González Viridiana', 1, 'female', '2009', 'blank.jpg', '\r'),
(119, 'S12009403937', 'Arpiza Luna Ana Laura', 1, 'female', '2009', 'blank.jpg', '\r'),
(120, 'S12009400748', 'Casas Ortega Josué Andrés', 1, 'male', '2009', 'blank.jpg', '\r'),
(121, 'S12009400517', 'Chimal Carlos Blanca Estela', 1, 'female', '2009', 'blank.jpg', '\r'),
(122, 'S12009402244', 'Cruz Mateos Miguel Ángel', 1, 'male', '2009', 'blank.jpg', '\r'),
(123, 'S12009403972', 'García Catalán Perla', 1, 'female', '2009', 'blank.jpg', '\r'),
(124, 'S12009403404', 'Gómez Ortiz Edgar', 1, 'male', '2009', 'blank.jpg', '\r'),
(125, 'S12009403962', 'Hilario Reyes Néstor Alfredo', 1, 'male', '2009', 'blank.jpg', '\r'),
(126, 'S12009404322', 'Labra De La Rosa Sergio', 1, 'male', '2009', 'blank.jpg', '\r'),
(127, 'S12009405702', 'Mercado Marquina Iván Eduardo', 1, 'male', '2009', 'blank.jpg', '\r'),
(128, 'S12009406761', 'Román Román Irving', 1, 'male', '2009', 'blank.jpg', '\r'),
(129, 'S120114005845', 'Álvarez Mota Leticia', 1, 'female', '2011', 'blank.jpg', '\r'),
(130, 'S120114001333', 'Bustos Cuevas Erika', 1, 'female', '2011', 'blank.jpg', '\r'),
(131, 'S120114002147', 'Carrillo Mérida Efrén', 1, 'male', '2011', 'blank.jpg', '\r'),
(132, 'S120114005302', 'Cuenca Arce Sandy Vianey', 1, 'female', '2011', 'blank.jpg', '\r'),
(133, 'S120114002796', 'Flores Trujillo María Del Carmen', 1, 'female', '2011', 'blank.jpg', '\r'),
(134, 'S120114003957', 'García Ávila Luis Brandon', 1, 'male', '2011', 'blank.jpg', '\r'),
(135, 'S120114002065', 'Gómez Bahena Alba', 1, 'female', '2011', 'blank.jpg', '\r'),
(136, 'S120114002861', 'Huerta Carmen Cecilia', 1, 'female', '2011', 'blank.jpg', '\r'),
(137, 'S120114005658', 'López Martínez Magdalena', 1, 'female', '2011', 'blank.jpg', '\r'),
(138, 'S120114007886', 'Mendoza Hernández Daniel ', 1, 'male', '2011', 'blank.jpg', '\r'),
(139, 'S120114008351', 'Rentería Morales Juan', 1, 'male', '2011', 'blank.jpg', '\r'),
(140, 'S120114007921', 'Rojas Alonso Perla Del Rosario', 1, 'female', '2011', 'blank.jpg', '\r'),
(141, 'S120114008246', 'Rosas Leyte José Ignacio', 1, 'male', '2011', 'blank.jpg', '\r'),
(142, 'S120114008974', 'Solís Pioquinto Fabiola Michell', 1, 'female', '2011', 'blank.jpg', '\r'),
(143, 'S120104003754', 'Ascacio Cabañas Alina Sarai', 4, 'female', '2010', 'blank.jpg', '\r'),
(144, 'S120104000561', 'Cabrera Hernández Luis Alfredo', 4, 'male', '2010', 'blank.jpg', '\r'),
(145, 'S120104001237', 'Casique Rodríguez Erwin Alann', 4, 'male', '2010', 'blank.jpg', '\r'),
(146, 'S120104002965', 'Gómez Moctezuma José Manuel', 4, 'male', '2010', 'blank.jpg', '\r'),
(147, 'S120104003751', 'Iturbide Valencia Saith Enrique', 4, 'male', '2010', 'blank.jpg', '\r'),
(148, 'S120104001760', 'Muñoz Estrada María Peregrina', 4, 'female', '2010', 'blank.jpg', '\r'),
(149, 'S120104002314', 'Ortiz Coria Fernando', 4, 'male', '2010', 'blank.jpg', '\r'),
(150, 'S120104005952', 'Patricio Espiridion Ismael', 4, 'male', '2010', 'blank.jpg', '\r'),
(151, 'S120104008841', 'Peña Castillo Oscar Iván', 4, 'male', '2010', 'blank.jpg', '\r'),
(152, 'S120104007822', 'Tambonero Alonso Oscar', 4, 'male', '2010', 'blank.jpg', '\r'),
(153, 'S120104008608', 'Valdez Zacarías Amada Yazmín', 4, 'female', '2010', 'blank.jpg', '\r'),
(154, 'S120104009331', 'Valencia  Cárdenas Paloma Yolice', 4, 'female', '2010', 'blank.jpg', '\r'),
(155, 'S120114006115', 'Aguilar Mondragón José Alejandro', 4, 'male', '2011', 'blank.jpg', '\r'),
(156, 'S120114003594', 'Batalla González Misael', 4, 'male', '2011', 'blank.jpg', '\r'),
(157, 'S120114001261', 'Beltrán Becerra Christian Alberto', 4, 'male', '2011', 'blank.jpg', '\r'),
(158, 'S120114005323', 'Cárdenas Dorantes Emmanuel', 4, 'male', '2011', 'blank.jpg', '\r'),
(159, 'S120114000942', 'Corona Atrisco Nancy Anahí', 4, 'female', '2011', 'blank.jpg', '\r'),
(160, 'S120114003542', 'Corrales Brito José Ángel', 4, 'male', '2011', 'blank.jpg', '\r'),
(161, 'S120114003611', 'Corrales Villegas David', 4, 'male', '2011', 'blank.jpg', '\r'),
(162, 'S120114001225', 'Cotero Bahena Daniel Alejandro', 4, 'male', '2011', 'blank.jpg', '\r'),
(163, '201200006', 'García Cruz Carlos Jesús', 4, 'male', '2011', 'blank.jpg', 'Revalidando\r'),
(164, 'S120114003346', 'García García Carlos', 4, 'male', '2011', 'blank.jpg', '\r'),
(165, 'S120114004401', 'González Díaz Sandra', 4, 'female', '2011', 'blank.jpg', '\r'),
(166, 'S120114009772', 'Juárez García Dafne', 4, 'female', '2011', 'blank.jpg', '\r'),
(167, 'S120114005126', 'Luis Millán Jocelyn', 4, 'female', '2011', 'blank.jpg', '\r'),
(168, 'S120114006297', 'Marcial Hernández Denisse Anahí', 4, 'female', '2011', 'blank.jpg', '\r'),
(169, 'S120104005143', 'Millán Flores José Alberto', 4, 'male', '2010', 'blank.jpg', 'Recursando\r'),
(170, 'S120114006119', 'Millán Ramírez Luis Giovanni', 4, 'male', '2011', 'blank.jpg', '\r'),
(171, 'S120114004218', 'Montiel Romero Misael', 4, 'male', '2011', 'blank.jpg', '\r'),
(172, 'S120114003401', 'Morelos Rodríguez Luis Alberto', 4, 'male', '2011', 'blank.jpg', '\r'),
(173, 'S120114008310', 'Ramírez Flores Carlos Alan', 4, 'male', '2011', 'blank.jpg', '\r'),
(174, 'S120104005592', 'Román Hernández Misael', 4, 'male', '2010', 'blank.jpg', 'Recursando\r'),
(175, 'S120114008469', 'Rosalino Lagunas Eder', 4, 'male', '2011', 'blank.jpg', '\r'),
(176, 'S120114003746', 'Salcido Arce Héctor Iván', 4, 'male', '2011', 'blank.jpg', '\r'),
(177, 'S120104000075', 'Alcántara Aguirre Elibeth', 3, 'female', '2010', 'blank.jpg', '\r'),
(178, 'S120104000140', 'Alvarado Robledo Karen Magnolia', 3, 'female', '2010', 'blank.jpg', '\r'),
(179, 'S120104009062', 'Arce Ocampo Maricela Noemí', 3, 'female', '2010', 'blank.jpg', '\r'),
(180, 'S120104003290', 'Ávila Sotelo Yesenia', 3, 'female', '2010', 'blank.jpg', '\r'),
(181, 'S120104003114', 'Campuzano Flores Ana Karen Nataly', 3, 'female', '2010', 'blank.jpg', '\r'),
(182, 'S120104000965', 'Castañeda Sánchez Emmanuel', 3, 'male', '2010', 'blank.jpg', '\r'),
(183, 'S120104001442', 'Díaz Valladares Giovana', 3, 'female', '2010', 'blank.jpg', '\r'),
(184, 'S120104002396', 'Domínguez Estrada Paola Lizbeth', 3, 'female', '2010', 'blank.jpg', '\r'),
(185, 'S120104003460', 'González Castañeda Perla Judith', 3, 'female', '2010', 'blank.jpg', '\r'),
(186, 'S120104004325', 'Mendoza Diamano Yoselin', 3, 'female', '2010', 'blank.jpg', '\r'),
(187, 'S120104003264', 'Morales Martínez Evelin', 3, 'female', '2010', 'blank.jpg', '\r'),
(188, 'S120104006009', 'Núñez Vázquez Rosa Elena', 3, 'female', '2010', 'blank.jpg', '\r'),
(189, 'S120104005845', 'Peñaloza Yáñez María Guadalupe', 3, 'female', '2010', 'blank.jpg', '\r'),
(190, 'S120104006106', 'Pérez García Perla Ivette', 3, 'female', '2010', 'blank.jpg', '\r'),
(191, 'S120104003765', 'Pizaña Tello Dulce Elena', 3, 'female', '2010', 'blank.jpg', '\r'),
(192, 'S120104006079', 'Popoca Heredia Sergio Renee', 3, 'male', '2010', 'blank.jpg', '\r'),
(193, 'S120104001930', 'Rea Genis Sandra Giovana', 3, 'female', '2010', 'blank.jpg', '\r'),
(194, 'S120104003408', 'Rivera Delgado Abigail', 3, 'female', '2010', 'blank.jpg', '\r'),
(195, 'S120104003373', 'Rodríguez Castro Luis Carlos', 3, 'male', '2010', 'blank.jpg', '\r'),
(196, 'S120104004596', 'Ruiz Adame Mikey', 3, 'male', '2010', 'blank.jpg', '\r'),
(197, 'S120104003943', 'Sánchez Avelar Andrea Patricia', 3, 'female', '2010', 'blank.jpg', '\r'),
(198, 'S120104007640', 'Sánchez Bustos Cheyla', 3, 'female', '2010', 'blank.jpg', '\r'),
(199, 'S120104008589', 'Vaca Pineda Julio Cesar', 3, 'male', '2010', 'blank.jpg', '\r'),
(200, 'S120104003783', 'Valladares Arismendi Yuritzy Anahí', 3, 'female', '2010', 'blank.jpg', '\r'),
(201, 'S120104004680', 'Viveros Mateos Alma Antonia', 3, 'female', '2010', 'blank.jpg', '\r'),
(202, 'S120114003820', 'Abarca Armenta Miguel Ángel', 3, 'male', '2011', 'blank.jpg', '\r'),
(203, 'S120114000281', 'Álvarez Pastor Andrea', 3, 'female', '2011', 'blank.jpg', '\r'),
(204, 'S120114000420', 'Alviar Nieto Alejandra', 3, 'female', '2011', 'blank.jpg', '\r'),
(205, 'S120114000373', 'Anonales Arce Norma Angélica', 3, 'female', '2011', 'blank.jpg', '\r'),
(206, 'S120114000430', 'Aparicio Pérez Paula Marcela', 3, 'female', '2011', 'blank.jpg', '\r'),
(207, 'S120114002913', 'Basave Reyes José Daniel', 3, 'male', '2011', 'blank.jpg', '\r'),
(208, 'S120114004232', 'Camacho Morales Janeth', 3, 'female', '2011', 'blank.jpg', '\r'),
(209, 'S120114002815', 'Castro Guadarrama Alma Yadira', 3, 'female', '2011', 'blank.jpg', '\r'),
(210, 'S120114006124', 'Cruz Torres Mariana', 3, 'female', '2011', 'blank.jpg', '\r'),
(211, 'S120114002633', 'Chávez Vanegas Carlos Alberto', 3, 'male', '2011', 'blank.jpg', '\r'),
(212, 'S120114006063', 'Domínguez Jiménez Eva Lizbeth', 3, 'female', '2011', 'blank.jpg', '\r'),
(213, 'S120114002908', 'Estrada Gutiérrez James', 3, 'male', '2011', 'blank.jpg', '\r'),
(214, 'S120114003349', 'Estrada Macedo José Eduardo', 3, 'male', '2011', 'blank.jpg', '\r'),
(215, 'S120114002817', 'Estudillo Cruz Ulisses Gilberto', 3, 'male', '2011', 'blank.jpg', '\r'),
(216, 'S120114002468', 'Franco González Miriam', 3, 'female', '2011', 'blank.jpg', '\r'),
(217, 'S120114002041', 'García Muñoz Anahí', 3, 'female', '2011', 'blank.jpg', '\r'),
(218, 'S120114004832', 'García Santibáñez María Idana', 3, 'female', '2011', 'blank.jpg', '\r'),
(219, 'S120114002119', 'Gómez Luna Diana', 3, 'female', '2011', 'blank.jpg', '\r'),
(220, 'S120114002911', 'González Catalán José Ramsés', 3, 'male', '2011', 'blank.jpg', '\r'),
(221, 'S120114004337', 'Gutiérrez Beltrán Rosalinda', 3, 'female', '2011', 'blank.jpg', '\r'),
(222, 'S120114003406', 'Guzmán Quintana Sarahi', 3, 'female', '2011', 'blank.jpg', '\r'),
(223, 'S120114004301', 'Hernández Diéguez Ana Lidia', 3, 'female', '2011', 'blank.jpg', '\r'),
(224, 'S120114002107', 'Hernández Fitz Karla Elena', 3, 'female', '2011', 'blank.jpg', '\r'),
(225, 'S120114002581', 'Hernández Palomo Karina', 3, 'female', '2011', 'blank.jpg', '\r'),
(226, 'S120114003875', 'Irazoque Castañeda Madeleine', 3, 'female', '2011', 'blank.jpg', '\r'),
(227, 'S120114003891', 'Labra López Diana Reyna', 3, 'female', '2011', 'blank.jpg', '\r'),
(228, 'S120114006168', 'Martínez Garcés Lucero', 3, 'female', '2011', 'blank.jpg', '\r'),
(229, 'S120114006371', 'Martínez Olascoaga Evelin Jovana', 3, 'female', '2011', 'blank.jpg', '\r'),
(230, 'S120114005611', 'Mendoza Jiménez Guadalupe', 3, 'female', '2011', 'blank.jpg', '\r'),
(231, 'S120114007405', 'Mejía Ocampo Zulimi', 3, 'female', '2011', 'blank.jpg', '\r'),
(232, 'S120114008125', 'Rodríguez Luna Jorge Arturo', 3, 'male', '2011', 'blank.jpg', '\r'),
(233, 'S120114002033', 'Román Hernández Paloma Arigail', 3, 'female', '2011', 'blank.jpg', '\r'),
(234, 'S120114009272', 'Sámano Vargas Mariela', 3, 'female', '2011', 'blank.jpg', '\r'),
(235, 'S120114010699', 'Vázquez Huicochea Nizi Alejandra', 3, 'female', '2011', 'blank.jpg', '\r'),
(236, 'S120114000057', 'Álvarez Palapa Karen Gabriela', 3, 'female', '2011', 'blank.jpg', '\r'),
(237, 'S120114000437', 'Avelar Reza Katherine', 3, 'female', '2011', 'blank.jpg', '\r'),
(238, 'S120114001226', 'Barrera Colín Nancy Yadira', 3, 'female', '2011', 'blank.jpg', '\r'),
(239, 'S120114001272', 'Barrera Sámano Martha Melissa', 3, 'female', '2011', 'blank.jpg', '\r'),
(240, 'S120114000880', 'Campos De La Sancha Isis Magnolia', 3, 'female', '2011', 'blank.jpg', '\r'),
(241, 'S120114000792', 'Casorla Pérez Ana Karen', 3, 'female', '2011', 'blank.jpg', '\r'),
(242, 'S120114001167', 'Castillo López Maritza', 3, 'female', '2011', 'blank.jpg', '\r'),
(243, 'S120114001510', 'Catalán Leal Mitzi Abilene', 3, 'female', '2011', 'blank.jpg', '\r'),
(244, 'S120114004351', 'Catalán Torres Karen Yoshie', 3, 'female', '2011', 'blank.jpg', '\r'),
(245, 'S120114002952', 'Diego López Areli', 3, 'female', '2011', 'blank.jpg', '\r'),
(246, 'S120114002699', 'Espinoza Tapia Rebeca Esther', 3, 'female', '2011', 'blank.jpg', '\r'),
(247, 'S120114002391', 'Figueroa Mendoza Claudia Itzel', 3, 'female', '2011', 'blank.jpg', '\r'),
(248, 'S120114001831', 'Flores Castañeda Arturo', 3, 'male', '2011', 'blank.jpg', '\r'),
(249, 'S120114003867', 'Gómez Jaimes Nelida Itzel', 3, 'female', '2011', 'blank.jpg', '\r'),
(250, 'S120114004731', 'Islas González Stephany', 3, 'female', '2011', 'blank.jpg', '\r'),
(251, 'S120114005045', 'Llanos Morales Brian Yonathan', 3, 'male', '2011', 'blank.jpg', '\r'),
(252, 'S120114005183', 'Martínez Núñez Daniela Alejandra', 3, 'female', '2011', 'blank.jpg', '\r'),
(253, 'S120114006726', 'Molina Martínez Liliana', 3, 'female', '2011', 'blank.jpg', '\r'),
(254, 'S120114005172', 'Moreno Olivares Claudia Angélica', 3, 'female', '2011', 'blank.jpg', '\r'),
(255, 'S120114010139', 'Ocampo Ocampo Víctor Hugo', 3, 'male', '2011', 'blank.jpg', '\r'),
(256, 'S120114006677', 'Peralta Mallida Jessica', 3, 'female', '2011', 'blank.jpg', '\r'),
(257, 'S120114009717', 'Perete López Lizbeth', 3, 'female', '2011', 'blank.jpg', '\r'),
(258, 'S120114007888', 'Pérez Hernández Ana Silvia', 3, 'female', '2011', 'blank.jpg', '\r'),
(259, 'S120114007896', 'Ricardo Martínez Pedro', 3, 'male', '2011', 'blank.jpg', '\r'),
(260, 'S120114008695', 'Rojas Torres María Magdalena', 3, 'female', '2011', 'blank.jpg', '\r'),
(261, 'S120114006567', 'Tablas Rosas Itzel Karely', 3, 'female', '2011', 'blank.jpg', '\r'),
(262, 'S120114010269', 'Uriostegui Uriostegui Elizabeth', 3, 'female', '2011', 'blank.jpg', '\r'),
(263, 'S120114006520', 'Urquiza Ríos Lluvia Gianina', 3, 'female', '2011', 'blank.jpg', '\r'),
(264, 'S120114010046', 'Vences Galindo Elda Patricia', 3, 'female', '2011', 'blank.jpg', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--
-- Creación: 10-11-2018 a las 18:46:33
-- Última actualización: 06-12-2018 a las 16:11:39
-- Última revisión: 06-12-2018 a las 17:50:35
--

DROP TABLE IF EXISTS `registros`;
CREATE TABLE IF NOT EXISTS `registros` (
  `rid` bigint(20) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `licenciatura` varchar(500) NOT NULL,
  `clave` varchar(15) NOT NULL,
  `nombre` text NOT NULL,
  `genero` enum('male','female') NOT NULL DEFAULT 'male',
  `generacion` varchar(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entrada` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `salida` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tabla de alumnos registrados';

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`rid`, `lid`, `licenciatura`, `clave`, `nombre`, `genero`, `generacion`, `fecha`, `entrada`, `salida`, `foto`) VALUES
(1, 2, 'Lic. en Educación Física', 'S120114001698', 'Castillo Montes De Oca Geovanny', 'male', '2011', '2018-11-22 14:04:47', '2018-11-22 14:04:47', '0000-00-00 00:00:00', 'blank.jpg'),
(2, 2, 'Lic. en Educación Física', 'S120114009902', 'Díaz Jacobo Alejandra', 'female', '2011', '2018-12-06 10:06:41', '2018-12-06 10:06:41', '0000-00-00 00:00:00', 'blank.jpg'),
(3, 2, 'Lic. en Educación Física', 'S120114005795', 'Fuentes López Jorge Alejandro', 'male', '2011', '2018-12-06 10:06:52', '2018-12-06 10:06:52', '0000-00-00 00:00:00', 'blank.jpg'),
(4, 2, 'Lic. en Educación Física', 'S120114010375', 'Ocampo Pichardo Elizabeth', 'female', '2011', '2018-12-06 10:07:02', '2018-12-06 10:07:02', '0000-00-00 00:00:00', 'blank.jpg'),
(5, 5, 'Lic. en Contaduría Pública', 'S120104001853', 'Rojas Alonso Dulce Carolina', 'female', '2010', '2018-12-06 10:07:34', '2018-12-06 10:07:34', '0000-00-00 00:00:00', 'blank.jpg'),
(6, 5, 'Lic. en Contaduría Pública', 'S120104000121', 'Arias Ocampo Judith', 'female', '2010', '2018-12-06 10:07:47', '2018-12-06 10:07:47', '0000-00-00 00:00:00', 'blank.jpg'),
(7, 5, 'Lic. en Contaduría Pública', 'S120104002008', 'Vázquez Chirinos Lizette', 'female', '2010', '2018-12-06 10:07:56', '2018-12-06 10:07:56', '0000-00-00 00:00:00', 'blank.jpg'),
(8, 1, 'Lic. en Informática', 'S12009403937', 'Arpiza Luna Ana Laura', 'female', '2009', '2018-12-06 10:08:04', '2018-12-06 10:08:04', '0000-00-00 00:00:00', 'blank.jpg'),
(9, 1, 'Lic. en Informática', 'S12009402244', 'Cruz Mateos Miguel Ángel', 'male', '2009', '2018-12-06 10:08:13', '2018-12-06 10:08:13', '0000-00-00 00:00:00', 'blank.jpg'),
(10, 1, 'Lic. en Informática', 'S12009403404', 'Gómez Ortiz Edgar', 'male', '2009', '2018-12-06 10:08:21', '2018-12-06 10:08:21', '0000-00-00 00:00:00', 'blank.jpg'),
(11, 1, 'Lic. en Informática', 'S120114008246', 'Rosas Leyte José Ignacio', 'male', '2011', '2018-12-06 10:08:35', '2018-12-06 10:08:35', '0000-00-00 00:00:00', 'blank.jpg'),
(12, 4, 'Lic. en Arquitectura', 'S120114005126', 'Luis Millán Jocelyn', 'female', '2011', '2018-12-06 10:08:45', '2018-12-06 10:08:45', '0000-00-00 00:00:00', 'blank.jpg'),
(13, 4, 'Lic. en Arquitectura', 'S120114003401', 'Morelos Rodríguez Luis Alberto', 'male', '2011', '2018-12-06 10:08:54', '2018-12-06 10:08:54', '0000-00-00 00:00:00', 'blank.jpg'),
(14, 4, 'Lic. en Arquitectura', 'S120114008469', 'Rosalino Lagunas Eder', 'male', '2011', '2018-12-06 10:09:03', '2018-12-06 10:09:03', '0000-00-00 00:00:00', 'blank.jpg'),
(15, 3, 'Lic. en Psicología', 'S120104003408', 'Rivera Delgado Abigail', 'female', '2010', '2018-12-06 10:10:30', '2018-12-06 10:10:30', '0000-00-00 00:00:00', 'blank.jpg'),
(16, 3, 'Lic. en Psicología', 'S120104003943', 'Sánchez Avelar Andrea Patricia', 'female', '2010', '2018-12-06 10:10:39', '2018-12-06 10:10:39', '0000-00-00 00:00:00', 'blank.jpg'),
(17, 3, 'Lic. en Psicología', 'S120104000965', 'Castañeda Sánchez Emmanuel', 'male', '2010', '2018-12-06 10:10:50', '2018-12-06 10:10:50', '0000-00-00 00:00:00', 'blank.jpg'),
(18, 3, 'Lic. en Psicología', 'S120114006124', 'Cruz Torres Mariana', 'female', '2011', '2018-12-06 10:11:04', '2018-12-06 10:11:04', '0000-00-00 00:00:00', 'blank.jpg'),
(19, 3, 'Lic. en Psicología', 'S120114004832', 'García Santibáñez María Idana', 'female', '2011', '2018-12-06 10:11:13', '2018-12-06 10:11:13', '0000-00-00 00:00:00', 'blank.jpg'),
(20, 3, 'Lic. en Psicología', 'S120114006567', 'Tablas Rosas Itzel Karely', 'female', '2011', '2018-12-06 10:11:37', '2018-12-06 10:11:37', '0000-00-00 00:00:00', 'blank.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
