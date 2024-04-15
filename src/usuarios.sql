-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2024 a las 17:10:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lista_usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `apellido` varchar(500) NOT NULL,
  `direccion` varchar(500) NOT NULL,
  `correo electronico` varchar(1000) NOT NULL,
  `DNI` int(10) NOT NULL,
  `edad` int(3) NOT NULL,
  `fecha_creacion_usuario` date NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `direccion`, `correo electronico`, `DNI`, `edad`, `fecha_creacion_usuario`, `telefono`) VALUES
(1, 'Joel', 'rosero', 'cll. 25sur-7 #45', 'joel@gmail.com', 2015478893, 22, '0000-00-00', 958623054),
(2, 'Jorge', 'Hernandez', 'cll. 13-4 #31', 'jorge@gmail.com', 2147483647, 25, '0000-00-00', 958636247),
(3, 'Marisol', 'Merchan', 'cll. 20-11 #01', 'marisol@gmail.com', 1548759602, 18, '0000-00-00', 958462085),
(4, 'laura', 'Mercado', 'cll. 15-20 #09', 'laura@gmail.com', 24589237, 29, '0000-00-00', 945820033),
(5, 'Roger', 'Arellano', 'cll. 52-14 #32', 'roger@gmail.com', 1500298564, 42, '0000-00-00', 950258497);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
