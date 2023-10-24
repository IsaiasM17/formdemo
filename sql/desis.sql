-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2023 a las 07:42:28
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `rut` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `comuna` varchar(255) NOT NULL,
  `candidato` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `tv` varchar(255) NOT NULL,
  `redes` varchar(255) NOT NULL,
  `amigo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `nombre`, `apellido`, `alias`, `rut`, `email`, `region`, `comuna`, `candidato`, `web`, `tv`, `redes`, `amigo`) VALUES
(1, 'Isaías', '', 'Martínez', '19.845.951-8', 'isaias.m.soto@gmail.com', 'Región Metropolitana', 'San Miguel', 'candidato1', 'true', 'false', 'false', 'false'),
(2, 'Isaías', 'Martínez', '', '9.168.954-5', 'isaias.m.soto@gmail.com', 'Región Metropolitana', 'San Miguel', 'candidato1', 'true', 'false', 'false', 'false'),
(3, 'Isaías', 'Martínez', 'Isa', '1234567888', 'isaias.m.soto@gmail.com', 'Región Metropolitana', 'San Miguel', 'candidato1', 'true', 'false', 'false', 'false'),
(4, 'Isaías', 'Martínez', '1kelwapo', '19.845.951-8', 'isaias.m.soto@gmail.com', 'Región Metropolitana', 'San Miguel', 'candidato1', 'true', 'false', 'false', 'false'),
(5, 'Isaías', 'Martínez', '1kelwapo', '19.845.951-8', 'isaias.m.soto@gmail.com', 'Región Metropolitana', 'San Miguel', 'candidato1', 'false', 'false', 'false', 'false'),
(6, 'Isaías', 'Martínez', '1kelwapo', '19.845.951-8', 'isaias.m.soto@gmail.com', 'Región Metropolitana', 'San Miguel', 'candidato1', 'true', 'false', 'false', 'false'),
(7, 'Isaías', 'Martínez', '1kelwapo', '19.845.951-8', 'isaias.m.soto@gmail.com', 'Región Metropolitana', 'San Miguel', 'candidato1', 'true', 'false', 'false', 'false'),
(8, 'Isaías', 'Martínez', '1kelwapo', '12.904.342-3', 'isaias.m.soto@gmail.com', 'Región Metropolitana', 'San Miguel', 'candidato1', 'true', 'false', 'false', 'false'),
(9, 'Isaías', 'Martínez', '1kelwapo', '20.191.247-4', 'isaias.m.soto@gmail.co', 'Región Metropolitana', 'San Miguel', 'candidato1', 'true', 'false', 'false', 'false');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
