-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-04-2018 a las 11:10:24
-- Versión del servidor: 5.7.21-log
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lasgemelas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aperitivo_caliente`
--

DROP TABLE IF EXISTS `aperitivo_caliente`;
CREATE TABLE IF NOT EXISTS `aperitivo_caliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aperitivo_caliente`
--

INSERT INTO `aperitivo_caliente` (`id`, `nombre`) VALUES
(1, 'CROQUETAS CASERAS'),
(2, 'REVUELTO DE WAKAME Y LANGOSTINOS'),
(3, 'BACALAO AL FALSO PILPIL'),
(4, 'CUSCUS A LA HIERBABUENA CON BROCHETA DE PRESA TERIYAKI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aperitivo_frio`
--

DROP TABLE IF EXISTS `aperitivo_frio`;
CREATE TABLE IF NOT EXISTS `aperitivo_frio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aperitivo_frio`
--

INSERT INTO `aperitivo_frio` (`id`, `nombre`) VALUES
(1, 'TARTA DE REMOLACHA CON AGUACATE'),
(2, 'BLINIS DE MANGO, ALIOLI Y ANCHOAS'),
(3, 'CONOS DE FRESA Y NATA'),
(4, 'MOUSSE DE FOIE, PX, POLVO DE PISTACHO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bebida`
--

DROP TABLE IF EXISTS `bebida`;
CREATE TABLE IF NOT EXISTS `bebida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `contiene_alcohol` tinyint(1) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bebida`
--

INSERT INTO `bebida` (`id`, `nombre`, `contiene_alcohol`, `precio`) VALUES
(1, 'Coca-cola', 0, 1),
(3, 'Cerveza', 1, 1.2),
(4, 'Agua mineral', 0, 0.96);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cazuelita`
--

DROP TABLE IF EXISTS `cazuelita`;
CREATE TABLE IF NOT EXISTS `cazuelita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cazuelita`
--

INSERT INTO `cazuelita` (`id`, `nombre`) VALUES
(1, 'CREMA DE CALABAZA ANISADA CON CRUJIENTE DE JAMÓN'),
(2, 'RISSOTTO DE BOLETUS'),
(3, 'SOLOMILLO RELLENO CON SALSA AL AMONTILLADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desplazamiento`
--

DROP TABLE IF EXISTS `desplazamiento`;
CREATE TABLE IF NOT EXISTS `desplazamiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_evento` int(11) NOT NULL,
  `lugar` varchar(128) DEFAULT NULL,
  `distancia` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

DROP TABLE IF EXISTS `evento`;
CREATE TABLE IF NOT EXISTS `evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(128) DEFAULT NULL,
  `descripcion` varchar(128) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `lugar` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

DROP TABLE IF EXISTS `foto`;
CREATE TABLE IF NOT EXISTS `foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  `ruta` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instruccion`
--

DROP TABLE IF EXISTS `instruccion`;
CREATE TABLE IF NOT EXISTS `instruccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_receta` int(11) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `paso` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_receta` (`id_receta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`id`, `nombre`, `cantidad`, `precio`) VALUES
(1, 'Plato', 100, 4.5),
(2, 'Cuchara', 150, 2.2),
(4, 'Mesa', 50, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_evento`
--

DROP TABLE IF EXISTS `material_evento`;
CREATE TABLE IF NOT EXISTS `material_evento` (
  `id_material` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  KEY `id_material` (`id_material`),
  KEY `id_evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  `descripcion` varchar(128) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `nombre`, `descripcion`, `precio`) VALUES
(1, 'Cocktel 1', '(Local)', 35),
(2, 'Menu2', 'Prueba', 288);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_aperitivo_caliente`
--

DROP TABLE IF EXISTS `menu_aperitivo_caliente`;
CREATE TABLE IF NOT EXISTS `menu_aperitivo_caliente` (
  `id_menu` int(11) NOT NULL,
  `id_aperitivo_caliente` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_aperitivo_caliente` (`id_aperitivo_caliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu_aperitivo_caliente`
--

INSERT INTO `menu_aperitivo_caliente` (`id_menu`, `id_aperitivo_caliente`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_aperitivo_frio`
--

DROP TABLE IF EXISTS `menu_aperitivo_frio`;
CREATE TABLE IF NOT EXISTS `menu_aperitivo_frio` (
  `id_menu` int(11) NOT NULL,
  `id_aperitivo_frio` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_aperitivo_frio` (`id_aperitivo_frio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu_aperitivo_frio`
--

INSERT INTO `menu_aperitivo_frio` (`id_menu`, `id_aperitivo_frio`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_bebida`
--

DROP TABLE IF EXISTS `menu_bebida`;
CREATE TABLE IF NOT EXISTS `menu_bebida` (
  `id_menu` int(11) NOT NULL,
  `id_bebida` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_bebida` (`id_bebida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_cazuelita`
--

DROP TABLE IF EXISTS `menu_cazuelita`;
CREATE TABLE IF NOT EXISTS `menu_cazuelita` (
  `id_menu` int(11) NOT NULL,
  `id_cazuelita` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_cazuelita` (`id_cazuelita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu_cazuelita`
--

INSERT INTO `menu_cazuelita` (`id_menu`, `id_cazuelita`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_evento`
--

DROP TABLE IF EXISTS `menu_evento`;
CREATE TABLE IF NOT EXISTS `menu_evento` (
  `id_menu` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_postre`
--

DROP TABLE IF EXISTS `menu_postre`;
CREATE TABLE IF NOT EXISTS `menu_postre` (
  `id_menu` int(11) NOT NULL,
  `id_postre` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_postre` (`id_postre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu_postre`
--

INSERT INTO `menu_postre` (`id_menu`, `id_postre`) VALUES
(1, 1),
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_receta`
--

DROP TABLE IF EXISTS `menu_receta`;
CREATE TABLE IF NOT EXISTS `menu_receta` (
  `id_menu` int(11) NOT NULL,
  `id_receta` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_receta` (`id_receta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_tipomenu`
--

DROP TABLE IF EXISTS `menu_tipomenu`;
CREATE TABLE IF NOT EXISTS `menu_tipomenu` (
  `id_menu` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_tipo` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu_tipomenu`
--

INSERT INTO `menu_tipomenu` (`id_menu`, `id_tipo`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

DROP TABLE IF EXISTS `noticia`;
CREATE TABLE IF NOT EXISTS `noticia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_evento` int(11) DEFAULT NULL,
  `titulo` varchar(128) DEFAULT NULL,
  `contenido` text,
  `descripcion` text,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia_foto`
--

DROP TABLE IF EXISTS `noticia_foto`;
CREATE TABLE IF NOT EXISTS `noticia_foto` (
  `id_noticia` int(11) NOT NULL,
  `id_foto` int(11) NOT NULL,
  KEY `id_noticia` (`id_noticia`),
  KEY `id_foto` (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postre`
--

DROP TABLE IF EXISTS `postre`;
CREATE TABLE IF NOT EXISTS `postre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `postre`
--

INSERT INTO `postre` (`id`, `nombre`) VALUES
(1, 'TOCINO DE CIELO CON CREMA DE CITRICOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `peso_bruto` float DEFAULT NULL,
  `peso_neto` float DEFAULT NULL,
  `merma` float DEFAULT NULL,
  `precio_unitario` float DEFAULT NULL,
  `precio_total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

DROP TABLE IF EXISTS `receta`;
CREATE TABLE IF NOT EXISTS `receta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  `descripcion` varchar(128) DEFAULT NULL,
  `nota` varchar(128) DEFAULT NULL,
  `tiempo` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `valoracion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta_foto`
--

DROP TABLE IF EXISTS `receta_foto`;
CREATE TABLE IF NOT EXISTS `receta_foto` (
  `id_receta` int(11) NOT NULL,
  `id_foto` int(11) NOT NULL,
  KEY `id_receta` (`id_receta`),
  KEY `id_foto` (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta_producto`
--

DROP TABLE IF EXISTS `receta_producto`;
CREATE TABLE IF NOT EXISTS `receta_producto` (
  `id_receta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `unidad` varchar(128) DEFAULT NULL,
  KEY `id_receta` (`id_receta`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta_tiporeceta`
--

DROP TABLE IF EXISTS `receta_tiporeceta`;
CREATE TABLE IF NOT EXISTS `receta_tiporeceta` (
  `id_receta` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  KEY `id_receta` (`id_receta`),
  KEY `id_tipo` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomenu`
--

DROP TABLE IF EXISTS `tipomenu`;
CREATE TABLE IF NOT EXISTS `tipomenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipomenu`
--

INSERT INTO `tipomenu` (`id`, `nombre`) VALUES
(1, 'Boda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiporeceta`
--

DROP TABLE IF EXISTS `tiporeceta`;
CREATE TABLE IF NOT EXISTS `tiporeceta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  `pass` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `desplazamiento`
--
ALTER TABLE `desplazamiento`
  ADD CONSTRAINT `desplazamiento_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`);

--
-- Filtros para la tabla `instruccion`
--
ALTER TABLE `instruccion`
  ADD CONSTRAINT `instruccion_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`);

--
-- Filtros para la tabla `material_evento`
--
ALTER TABLE `material_evento`
  ADD CONSTRAINT `material_evento_ibfk_1` FOREIGN KEY (`id_material`) REFERENCES `material` (`id`),
  ADD CONSTRAINT `material_evento_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`);

--
-- Filtros para la tabla `menu_aperitivo_caliente`
--
ALTER TABLE `menu_aperitivo_caliente`
  ADD CONSTRAINT `menu_aperitivo_caliente_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `menu_aperitivo_caliente_ibfk_2` FOREIGN KEY (`id_aperitivo_caliente`) REFERENCES `aperitivo_caliente` (`id`);

--
-- Filtros para la tabla `menu_aperitivo_frio`
--
ALTER TABLE `menu_aperitivo_frio`
  ADD CONSTRAINT `menu_aperitivo_frio_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `menu_aperitivo_frio_ibfk_2` FOREIGN KEY (`id_aperitivo_frio`) REFERENCES `aperitivo_frio` (`id`);

--
-- Filtros para la tabla `menu_bebida`
--
ALTER TABLE `menu_bebida`
  ADD CONSTRAINT `menu_bebida_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `menu_bebida_ibfk_2` FOREIGN KEY (`id_bebida`) REFERENCES `bebida` (`id`);

--
-- Filtros para la tabla `menu_cazuelita`
--
ALTER TABLE `menu_cazuelita`
  ADD CONSTRAINT `menu_cazuelita_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `menu_cazuelita_ibfk_2` FOREIGN KEY (`id_cazuelita`) REFERENCES `aperitivo_frio` (`id`);

--
-- Filtros para la tabla `menu_evento`
--
ALTER TABLE `menu_evento`
  ADD CONSTRAINT `menu_evento_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `menu_evento_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`);

--
-- Filtros para la tabla `menu_postre`
--
ALTER TABLE `menu_postre`
  ADD CONSTRAINT `menu_postre_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `menu_postre_ibfk_2` FOREIGN KEY (`id_postre`) REFERENCES `postre` (`id`);

--
-- Filtros para la tabla `menu_receta`
--
ALTER TABLE `menu_receta`
  ADD CONSTRAINT `menu_receta_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `menu_receta_ibfk_2` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`);

--
-- Filtros para la tabla `menu_tipomenu`
--
ALTER TABLE `menu_tipomenu`
  ADD CONSTRAINT `menu_tipomenu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `menu_tipomenu_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tipomenu` (`id`);

--
-- Filtros para la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`);

--
-- Filtros para la tabla `noticia_foto`
--
ALTER TABLE `noticia_foto`
  ADD CONSTRAINT `noticia_foto_ibfk_1` FOREIGN KEY (`id_noticia`) REFERENCES `noticia` (`id`),
  ADD CONSTRAINT `noticia_foto_ibfk_2` FOREIGN KEY (`id_foto`) REFERENCES `foto` (`id`);

--
-- Filtros para la tabla `receta_foto`
--
ALTER TABLE `receta_foto`
  ADD CONSTRAINT `receta_foto_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`),
  ADD CONSTRAINT `receta_foto_ibfk_2` FOREIGN KEY (`id_foto`) REFERENCES `foto` (`id`);

--
-- Filtros para la tabla `receta_producto`
--
ALTER TABLE `receta_producto`
  ADD CONSTRAINT `receta_producto_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`),
  ADD CONSTRAINT `receta_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `receta_tiporeceta`
--
ALTER TABLE `receta_tiporeceta`
  ADD CONSTRAINT `receta_tiporeceta_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`),
  ADD CONSTRAINT `receta_tiporeceta_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tiporeceta` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
