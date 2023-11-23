-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2023 a las 20:32:38
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
(4, 'Bill', 'Gates', 'Hatity', 'Nacimiento de Windows,  historia', 'https://imgdb.net/storage/uploads/1d81e66905ab291ce139feedfdedbcbf06dfabf61aa0ad0b5ae96c45cc6f06a4.png', 85, NULL, 'ekubec3@vinaora.com');

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
  `apellido` varchar(50) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`, `fotoPerfil`, `nombre`, `apellido`, `rol`) VALUES
(1, 'ada@gmail.com', '1234', 'https://imgdb.net/storage/uploads/6e421ff4a337f905c5cbac6a3b7f47556031dea129f8340a51307b5ccdac9f15.png', 'Ada', 'Lovel', 'user'),
(2, 'jperez@gmail.com', '1234', 'https://imgdb.net/storage/uploads/1d81e66905ab291ce139feedfdedbcbf06dfabf61aa0ad0b5ae96c45cc6f06a4.png', 'Juan', 'Perez', 'user'),
(3, 'jenderson0', 'nC0=9nXb#opy0JcD', NULL, NULL, NULL, 'user'),
(4, 'dmacaulay1', 'gM2$7!=5H', NULL, NULL, NULL, 'user'),
(5, 'mswalough2', 'yM3>)!<V', NULL, NULL, NULL, 'user'),
(6, 'jblaske3', 'kV4|~VHB#?koRa', NULL, NULL, NULL, 'user'),
(7, 'eotson4', 'hH6(xFN<_,>hI#HI', NULL, NULL, NULL, 'user'),
(8, 'phannabus5', 'tC5`is\"!,cZzY\"h', NULL, NULL, NULL, 'user'),
(9, 'ehanmore6', 'oW7&!hv{', NULL, NULL, NULL, 'user'),
(10, 'kroarty7', 'tH0,iY$7j', NULL, NULL, NULL, 'user'),
(11, 'cfrere8', 'fD7.>(b$', NULL, NULL, NULL, 'user'),
(12, 'cortes9', 'pT1`c8sa!z#7', NULL, NULL, NULL, 'user'),
(13, 'admin@gmail.com', 'admin', NULL, 'Admin', NULL, 'admin'),
(14, 'admin2@gmail.com', 'admin', NULL, NULL, NULL, 'admin'),
(15, 'hgomez@gmail.com', 'aA123456', NULL, NULL, NULL, 'user'),
(16, 'hgomez@codoacodo.edu.ar', 'aA123456', NULL, NULL, NULL, 'user'),
(20, 'hfernandez@codoacodo.edu.ar', 'aA123456', NULL, NULL, NULL, 'user');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
