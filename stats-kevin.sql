SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `contadores` (
  `cid` int(11) NOT NULL,
  `aniodia` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anio` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mes` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Info` int(1) NOT NULL DEFAULT '0',
  `Admon` int(2) NOT NULL DEFAULT '0',
  `c_p` int(3) NOT NULL DEFAULT '0',
  `MMD` int(4) NOT NULL DEFAULT '0',
  `Der` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

