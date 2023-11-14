-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 20:36:05
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `confbsas23563`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `temas` varchar(200) NOT NULL,
  `fotoPerfil` varchar(100) DEFAULT NULL,
  `dni` int(11) NOT NULL,
  `tel` int(11) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id`, `nombre`, `apellido`, `etiquetas`, `temas`, `fotoPerfil`, `dni`, `tel`, `email`) VALUES
(3, 'María', 'Betham', 'Transcof', 'Tampflex', 'http://dummyimage.com/175x100.png/dddddd/000000', 88, NULL, 'ff@gmail.com'),
(4, 'Estrella', 'Roman', 'Hatity', 'Vagram', 'http://dummyimage.com/147x100.png/dddddd/000000', 85, NULL, 'ekubec3@vinaora.com'),
(6, 'Korella', 'Rogans', 'Keylex', 'Aerified', 'http://dummyimage.com/220x100.png/dddddd/000000', 40, NULL, 'krogans5@webnode.com'),
(8, 'Greta', 'Leebeter', 'Latlux', 'Ronstring', 'http://dummyimage.com/155x100.png/dddddd/000000', 59, NULL, 'gleebeter7@blinklist.com'),
(9, 'Waylen', 'Twelvetrees', 'Matsoft', 'Tres-Zap', 'http://dummyimage.com/170x100.png/dddddd/000000', 87, NULL, 'wtwelvetrees0@sakura.ne.jp'),
(11, 'Ossie', 'Sibbet', 'Prodder', 'Regrant', 'http://dummyimage.com/208x100.png/cc0000/ffffff', 21, NULL, 'osibbet2@huffingtonpost.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`) VALUES
(1, 'jperez@gmail.com', '1234'),
(2, 'lsuarez@gmail.com', '1234'),
(3, 'jenderson0', 'nC0=9nXb#opy0JcD'),
(4, 'dmacaulay1', 'gM2$7!=5H'),
(5, 'mswalough2', 'yM3>)!<V'),
(6, 'jblaske3', 'kV4|~VHB#?koRa'),
(7, 'eotson4', 'hH6(xFN<_,>hI#HI'),
(8, 'phannabus5', 'tC5`is\"!,cZzY\"h'),
(9, 'ehanmore6', 'oW7&!hv{'),
(10, 'kroarty7', 'tH0,iY$7j'),
(11, 'cfrere8', 'fD7.>(b$'),
(12, 'cortes9', 'pT1`c8sa!z#7');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_dni` (`dni`),
  ADD KEY `idx_ap` (`apellido`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
