-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2020 a las 19:50:39
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbdchallenge`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `idEmployee` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fullName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idFunction` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_function`
--

CREATE TABLE `tbl_function` (
  `idFunction` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `functionValue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `functionDesc` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_function`
--

INSERT INTO `tbl_function` (`idFunction`, `functionValue`, `functionDesc`) VALUES
('E', 'Employed', 'Persona con cargo de empleado normal'),
('B', 'Boss', 'Persona con cargo de jefe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
