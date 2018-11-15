-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-11-2018 a las 16:14:24
-- Versión del servidor: 5.5.61
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `ccuuaem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contadores`
--

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
COMMIT;
