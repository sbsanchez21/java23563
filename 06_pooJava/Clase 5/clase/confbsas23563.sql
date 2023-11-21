-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2023 a las 20:28:55
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
  `fotoPerfil` varchar(300) DEFAULT NULL,
  `dni` int(11) NOT NULL,
  `tel` int(11) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id`, `nombre`, `apellido`, `etiquetas`, `temas`, `fotoPerfil`, `dni`, `tel`, `email`) VALUES
(3, 'Steve', 'Jobs', 'Transcof', 'Inicios de Apple, tecnologías utilizadas en las Mac', 'https://imgdb.net/storage/uploads/80eee944aad1ca133afd5f64e95069ef411ea60d845497dbc9f5bf2916524ad8.png', 88, NULL, 'ff@gmail.com'),
(4, 'Bill', 'Gates', 'Hatity', 'Nacimiento de Windows,  historia', 'https://imgdb.net/storage/uploads/1d81e66905ab291ce139feedfdedbcbf06dfabf61aa0ad0b5ae96c45cc6f06a4.png', 85, NULL, 'ekubec3@vinaora.com'),
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
  `pass` varchar(50) DEFAULT NULL,
  `fotoPerfil` varchar(200) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`, `fotoPerfil`, `nombre`, `apellido`) VALUES
(1, 'ada@gmail.com', '1234', 'https://imgdb.net/storage/uploads/6e421ff4a337f905c5cbac6a3b7f47556031dea129f8340a51307b5ccdac9f15.png', 'Ada', 'Lovel'),
(2, 'jperez@gmail.com', '1234', 'https://imgdb.net/storage/uploads/1d81e66905ab291ce139feedfdedbcbf06dfabf61aa0ad0b5ae96c45cc6f06a4.png', 'Juan', 'Perez'),
(3, 'jenderson0', 'nC0=9nXb#opy0JcD', NULL, NULL, NULL),
(4, 'dmacaulay1', 'gM2$7!=5H', NULL, NULL, NULL),
(5, 'mswalough2', 'yM3>)!<V', NULL, NULL, NULL),
(6, 'jblaske3', 'kV4|~VHB#?koRa', NULL, NULL, NULL),
(7, 'eotson4', 'hH6(xFN<_,>hI#HI', NULL, NULL, NULL),
(8, 'phannabus5', 'tC5`is\"!,cZzY\"h', NULL, NULL, NULL),
(9, 'ehanmore6', 'oW7&!hv{', NULL, NULL, NULL),
(10, 'kroarty7', 'tH0,iY$7j', NULL, NULL, NULL),
(11, 'cfrere8', 'fD7.>(b$', NULL, NULL, NULL),
(12, 'cortes9', 'pT1`c8sa!z#7', NULL, NULL, NULL),
(13, 'admin@gmail.com', 'admin', NULL, NULL, NULL);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
