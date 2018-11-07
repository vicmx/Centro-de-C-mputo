-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-11-2018 a las 16:54:26
-- Versión del servidor: 5.5.62
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--
-- Creación: 06-11-2018 a las 20:49:59
--

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE IF NOT EXISTS `alumnos` (
  `Aid` int(11) NOT NULL AUTO_INCREMENT,
  `Matricula` varchar(20) NOT NULL,
  `Nombre` varchar(300) NOT NULL,
  `Hora_entrada` datetime NOT NULL,
  `Hora_Salida` datetime NOT NULL,
  `Asunto` enum('consulta','clase') NOT NULL,
  `Carrera` int(11) NOT NULL,
  `Observaciones` text NOT NULL,
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--
-- Creación: 06-11-2018 a las 20:53:16
--

DROP TABLE IF EXISTS `carreras`;
CREATE TABLE IF NOT EXISTS `carreras` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_carrera` varchar(300) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`cid`, `nombre_carrera`) VALUES
(1, 'Informática'),
(2, 'Administración'),
(3, 'Contaduria'),
(4, 'Mercadotecnia y Medios digitales'),
(5, 'Derecho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta_alumnos`
--
-- Creación: 06-11-2018 a las 21:16:16
--

DROP TABLE IF EXISTS `consulta_alumnos`;
CREATE TABLE IF NOT EXISTS `consulta_alumnos` (
  `Conid` int(11) NOT NULL AUTO_INCREMENT,
  `Matricula` varchar(20) NOT NULL,
  `Nombre` varchar(300) NOT NULL,
  `carrera_id` int(11) NOT NULL,
  `semestre` enum('1','2','3','4','5','6','7','8','9','10') NOT NULL,
  `grupo` enum('A','B','U') NOT NULL,
  `sexo` enum('Masculino','Femenino') NOT NULL,
  PRIMARY KEY (`Conid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consulta_alumnos`
--

INSERT INTO `consulta_alumnos` (`Conid`, `Matricula`, `Nombre`, `carrera_id`, `semestre`, `grupo`, `sexo`) VALUES
(1, '20154001518', 'CARMONA PULIDO ANA CATHERINE', 1, '7', 'U', 'Femenino'),
(2, '20154002103', 'CASTAÑEDA VEGA LUIS FERNANDO', 1, '7', 'U', 'Masculino'),
(3, '20154003374', 'CASTREJON FLORES FREDY ISMAEL', 1, '7', 'U', 'Masculino'),
(4, '20154001161', 'CASTRO DIAZ KAIN ENCARNACION', 1, '7', 'U', 'Masculino'),
(5, '20154001161', 'COTERO VELAZQUEZ SEBASTIAN', 1, '7', 'U', 'Masculino'),
(6, '20154007522', 'GOMEZ MARTINEZ LUCERO', 1, '7', 'U', 'Femenino'),
(7, '20154005334', 'GONZALEZ JUAREZ JUAN FERNANDO', 1, '7', 'U', 'Masculino'),
(8, '20154004298', 'HERNANDEZ FLORES BRANDON NEFTALI', 1, '7', 'U', 'Masculino'),
(9, '20154010796', 'MEJIA BUSTOS KEVIN SINUHE', 1, '7', 'U', 'Masculino'),
(10, '20154009942', 'MEJIA TOLEDO GUADALUPE ESTEFANIA', 1, '7', 'U', 'Femenino'),
(11, '20154009447', 'PEREIRA PANTALEON DAVID', 1, '7', 'U', 'Masculino'),
(12, '20154013262', 'SANCHEZ ESCOBAR MACAULY', 1, '7', 'U', 'Masculino'),
(13, '20154007093', 'SANTAMARIA SANDOVAL SELENE', 1, '7', 'U', 'Femenino');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
