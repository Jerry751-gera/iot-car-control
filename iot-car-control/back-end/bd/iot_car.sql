-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2024 a las 19:47:28
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iot_car`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`admin`@`%` PROCEDURE `InsertarDatos` (IN `valorEstatus` VARCHAR(1))   BEGIN
    INSERT INTO carstatus (estatus) VALUES (valorEstatus);
END$$

CREATE DEFINER=`admin`@`%` PROCEDURE `obtieneEstatus` ()   SELECT estatus FROM carstatus ORDER BY id DESC LIMIT 1$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carstatus`
--

CREATE TABLE `carstatus` (
  `id` int(11) NOT NULL,
  `estatus` varchar(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carstatus`
--

INSERT INTO `carstatus` (`id`, `estatus`, `date`) VALUES
(1, 'f', '2024-04-23 17:28:18'),
(2, 'b', '2024-04-23 17:28:18'),
(3, 'l', '2024-04-23 17:28:38'),
(4, 'r', '2024-04-23 17:28:38'),
(5, 's', '2024-04-23 17:37:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carstatus`
--
ALTER TABLE `carstatus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carstatus`
--
ALTER TABLE `carstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
