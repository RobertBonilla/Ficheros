-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2015 a las 00:14:57
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `visitasinstitucionales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspirantes`
--

CREATE TABLE IF NOT EXISTS `aspirantes` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `fechaIngreso` datetime DEFAULT NULL,
  `carrera1` varchar(20) DEFAULT NULL,
  `carrera2` varchar(20) DEFAULT NULL,
  `institucion` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_aspirantes_instituciones` (`institucion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelas`
--

CREATE TABLE IF NOT EXISTS `escuelas` (
  `facultad` int(2) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `id` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_escuelas_facultad` (`facultad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `escuelas`
--

INSERT INTO `escuelas` (`facultad`, `nombre`, `id`) VALUES
(1, 'Tecnico en Sistemas', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE IF NOT EXISTS `facultad` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id`, `nombre`) VALUES
(1, 'Ingenieria'),
(2, 'Licenciatura'),
(8, 'Tecnico'),
(9, 'Tecnologica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituciones`
--

CREATE TABLE IF NOT EXISTS `instituciones` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `contacto1` varchar(20) DEFAULT NULL,
  `telefono1` varchar(20) DEFAULT NULL,
  `contacto2` varchar(20) DEFAULT NULL,
  `telefono2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`) VALUES
(1, 'Admin'),
(2, 'profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `rol` int(2) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `contrasena` varchar(20) DEFAULT NULL,
  `escuela` int(2) DEFAULT NULL,
  `tiempoCompleto` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuarios_roles` (`rol`),
  KEY `fk_usuarios_escuelas` (`escuela`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `usuario`, `rol`, `telefono`, `contrasena`, `escuela`, `tiempoCompleto`) VALUES
(4, 'ROberto', 'Bonilla', 'correo@gmail.com', 'Robert', 1, '2222', '123', 0, b'1'),
(6, 'Roberto', 'Bonilla', 'correo@hotmail.com', 'rb1', 1, '2.2723489E7', '123.0', 0, b'1'),
(7, 'Carlos', 'Soriano', 'correo@hotmail.com', 'cs2', 1, '2.2436578E7', '123.0', 0, b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE IF NOT EXISTS `visitas` (
  `usuario` int(2) NOT NULL,
  `institucion` int(2) NOT NULL,
  `usuarioAsigno` int(2) NOT NULL,
  `fechaInicio` datetime NOT NULL,
  `fechaFin` datetime NOT NULL,
  `visitaRealizada` bit(1) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `comentarios` varchar(150) DEFAULT NULL,
  `comentariosVisita` varchar(150) DEFAULT NULL,
  KEY `fk_visita_usuarios` (`usuario`),
  KEY `fk_visita_instituciones` (`institucion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aspirantes`
--
ALTER TABLE `aspirantes`
  ADD CONSTRAINT `fk_aspirantes_instituciones` FOREIGN KEY (`institucion`) REFERENCES `instituciones` (`id`);

--
-- Filtros para la tabla `escuelas`
--
ALTER TABLE `escuelas`
  ADD CONSTRAINT `fk_escuelas_facultad` FOREIGN KEY (`facultad`) REFERENCES `facultad` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_escuelas` FOREIGN KEY (`escuela`) REFERENCES `escuelas` (`id`),
  ADD CONSTRAINT `fk_usuarios_roles` FOREIGN KEY (`rol`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD CONSTRAINT `fk_visita_instituciones` FOREIGN KEY (`institucion`) REFERENCES `instituciones` (`id`),
  ADD CONSTRAINT `fk_visita_usuarios` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
