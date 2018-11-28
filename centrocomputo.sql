-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-11-2018 a las 10:15:39
-- Versión del servidor: 5.5.61
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `centrocomputo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admis`
--

DROP TABLE IF EXISTS `admis`;
CREATE TABLE IF NOT EXISTS `admis` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
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
(3, 'Contador Público'),
(4, 'Mercadotecnia y Medios Digitales'),
(5, 'Derecho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta_alumnos`
--

DROP TABLE IF EXISTS `consulta_alumnos`;
CREATE TABLE IF NOT EXISTS `consulta_alumnos` (
  `conid` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `carrera_id` int(11) NOT NULL,
  `generacion` varchar(4) NOT NULL DEFAULT '0',
  `semestre` enum('1','2','3','4','5','6','7','8','9','10') NOT NULL,
  `grupo` enum('A','B','U') NOT NULL,
  `sexo` enum('Masculino','Femenino') NOT NULL,
  PRIMARY KEY (`conid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consulta_alumnos`
--

INSERT INTO `consulta_alumnos` (`conid`, `matricula`, `nombre`, `foto`, `carrera_id`, `generacion`, `semestre`, `grupo`, `sexo`) VALUES
(1, '20154001518', 'CARMONA PULIDO ANA CATHERINE', '', 1, '2015', '7', 'U', 'Femenino'),
(2, '20154002103', 'CASTAÑEDA VEGA LUIS FERNANDO', '', 1, '2015', '7', 'U', 'Masculino'),
(3, '20154003374', 'CASTREJÓN FLORES FREDY ISMAEL', '', 1, '2015', '7', 'U', 'Masculino'),
(4, '20154001161', 'CASTRO DÍAZ KAIN ENCARNACIÓN', '', 1, '2015', '7', 'U', 'Masculino'),
(5, '20154001161', 'COTERO VELÁZQUEZ SEBASTIÁN', '', 1, '2015', '7', 'U', 'Masculino'),
(6, '20154007522', 'GÓMEZ MARTÍNEZ LUCERO', '', 1, '2015', '7', 'U', 'Femenino'),
(7, '20154005334', 'GONZÁLEZ JUÁREZ JUAN FERNANDO', '', 1, '2015', '7', 'U', 'Masculino'),
(8, '20154004298', 'HERNÁNDEZ FLORES BRANDON NEFTALÍ', '', 1, '2015', '7', 'U', 'Masculino'),
(9, '20154010796', 'MEJÍA BUSTOS KEVIN SINUHE', '', 1, '2015', '7', 'U', 'Masculino'),
(10, '20154009942', 'MEJÍA TOLEDO GUADALUPE ESTEFANIA', '', 1, '2015', '7', 'U', 'Femenino'),
(11, '20154009447', 'PEREIRA PANTALEÓN DAVID', '', 1, '2015', '7', 'U', 'Masculino'),
(12, '20154013262', 'SÁNCHEZ ESCOBAR MACAULY', '', 1, '2015', '7', 'U', 'Masculino'),
(13, '20154007093', 'SANTAMARIA SANDOVAL SELENE', '', 1, '2015', '7', 'U', 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contadores`
--

DROP TABLE IF EXISTS `contadores`;
CREATE TABLE IF NOT EXISTS `contadores` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `aniodia` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anio` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mes` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Info` int(1) NOT NULL DEFAULT '0',
  `Admon` int(2) NOT NULL DEFAULT '0',
  `c_p` int(3) NOT NULL DEFAULT '0',
  `MMD` int(4) NOT NULL DEFAULT '0',
  `Der` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

DROP TABLE IF EXISTS `registros`;
CREATE TABLE IF NOT EXISTS `registros` (
  `regid` bigint(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `carrera_id` bigint(20) NOT NULL DEFAULT '0',
  `carrera` varchar(300) NOT NULL,
  `hora_entrada` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hora_salida` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `asunto` enum('consulta','clase') NOT NULL DEFAULT 'consulta',
  `docente` varchar(350) NOT NULL,
  `asignatura` varchar(500) NOT NULL,
  `observaciones` text NOT NULL,
  PRIMARY KEY (`regid`),
  KEY `carrera_id` (`carrera_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;
