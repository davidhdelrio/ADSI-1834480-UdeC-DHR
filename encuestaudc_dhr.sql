-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2020 a las 16:45:50
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `encuestaudc_dhr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadeducativa_dhr`
--

CREATE TABLE `actividadeducativa_dhr` (
  `id` int(11) NOT NULL,
  `actividaddelpapa` varchar(38) NOT NULL,
  `actividaddelamama` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actividadeducativa_dhr`
--

INSERT INTO `actividadeducativa_dhr` (`id`, `actividaddelpapa`, `actividaddelamama`) VALUES
(42, 'Oficios varios', 'Ama de casa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administracion_dhr`
--

CREATE TABLE `administracion_dhr` (
  `id` int(11) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificatucarrera_dhr`
--

CREATE TABLE `calificatucarrera_dhr` (
  `id` int(11) NOT NULL,
  `calificatucarrera` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calificatucarrera_dhr`
--

INSERT INTO `calificatucarrera_dhr` (`id`, `calificatucarrera`) VALUES
(1, 'Excelente'),
(2, 'Satisfecho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_dhr`
--

CREATE TABLE `encuesta_dhr` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(31) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefono` varchar(13) NOT NULL,
  `direccion` varchar(35) NOT NULL,
  `actividaddelpapa` varchar(20) NOT NULL,
  `actividaddelamama` varchar(20) NOT NULL,
  `id_estadocivil` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `nacimiento` date NOT NULL,
  `id_nivelacademicoPapa` int(11) NOT NULL,
  `id_nivelacademicoMama` int(11) NOT NULL,
  `tipodeinstitucion` varchar(9) NOT NULL,
  `id_tipodevivienda` int(11) NOT NULL,
  `id_region` int(50) NOT NULL,
  `carrera` varchar(26) NOT NULL,
  `tiempo_de_graduado` int(11) NOT NULL,
  `id_ingresoeconomico` int(11) NOT NULL,
  `calificatucarrera` varchar(10) NOT NULL,
  `asignaturas_matriculadas` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `encuesta_dhr`
--

INSERT INTO `encuesta_dhr` (`id`, `nombre`, `apellido`, `identificacion`, `email`, `telefono`, `direccion`, `actividaddelpapa`, `actividaddelamama`, `id_estadocivil`, `id_genero`, `nacimiento`, `id_nivelacademicoPapa`, `id_nivelacademicoMama`, `tipodeinstitucion`, `id_tipodevivienda`, `id_region`, `carrera`, `tiempo_de_graduado`, `id_ingresoeconomico`, `calificatucarrera`, `asignaturas_matriculadas`) VALUES
(4, 'Sebastian Javier', ' Blanquicett Acosta', 123456789, 'sebastianjavier12@hotmail.com', '6619529', 'san fernando, cll 13 80 d, cll 13 8', 'Oficios varios', 'Ama de casa', 1, 1, '2001-07-12', 4, 3, '3', 1, 3, 'TECNICO EN SEGURIDAD INDUS', 2, 700, '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadocivil_dhr`
--

CREATE TABLE `estadocivil_dhr` (
  `id` int(11) NOT NULL,
  `estadocivil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadocivil_dhr`
--

INSERT INTO `estadocivil_dhr` (`id`, `estadocivil`) VALUES
(1, 'Soltero(a)'),
(2, 'Casado(a)'),
(3, 'Union Libre'),
(4, 'Divorciado(a)'),
(5, 'Viudo(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes_dhr`
--

CREATE TABLE `estudiantes_dhr` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(31) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefono` varchar(13) NOT NULL,
  `direccion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero_dhr`
--

CREATE TABLE `genero_dhr` (
  `id` int(11) NOT NULL,
  `genero` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero_dhr`
--

INSERT INTO `genero_dhr` (`id`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresoeconomico_dhr`
--

CREATE TABLE `ingresoeconomico_dhr` (
  `id` int(11) NOT NULL,
  `ingresoeconomico` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginadmi_dhr`
--

CREATE TABLE `loginadmi_dhr` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `inputPassword` varchar(15) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `loginadmi_dhr`
--

INSERT INTO `loginadmi_dhr` (`id`, `usuario`, `inputPassword`, `nombre`) VALUES
(1, 4514739, '12', 'luz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_dhr`
--

CREATE TABLE `login_dhr` (
  `id` int(11) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `inputPassword` varchar(35) NOT NULL,
  `nombre` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login_dhr`
--

INSERT INTO `login_dhr` (`id`, `identificacion`, `usuario`, `inputPassword`, `nombre`) VALUES
(3, 123456789, 1007740012, '1201', 'Sebastian Javier'),
(5, 1007740011, 1234, '12', 'Juan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacimiento_dhr`
--

CREATE TABLE `nacimiento_dhr` (
  `id` int(11) NOT NULL,
  `nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelacademicomama_dhr`
--

CREATE TABLE `nivelacademicomama_dhr` (
  `id` int(11) NOT NULL,
  `nivelacademico_mama` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nivelacademicomama_dhr`
--

INSERT INTO `nivelacademicomama_dhr` (`id`, `nivelacademico_mama`) VALUES
(1, 'Analfabeta'),
(2, 'Basica Primaria'),
(3, 'Basica Secundaria'),
(4, 'Bachiller'),
(5, 'Tecnico'),
(6, 'Tecnologo'),
(7, 'Universitario'),
(8, 'Posgrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelacademicopapa_dhr`
--

CREATE TABLE `nivelacademicopapa_dhr` (
  `id` int(11) NOT NULL,
  `nivelacademico_papa` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nivelacademicopapa_dhr`
--

INSERT INTO `nivelacademicopapa_dhr` (`id`, `nivelacademico_papa`) VALUES
(1, ' Analfabeta'),
(2, 'Basica Primaria'),
(3, 'Basica Secundaria'),
(4, 'Bachiller'),
(5, 'Tecnico'),
(6, 'Tecnologo'),
(7, 'Universitario'),
(8, 'Posgrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros_datos_dhr`
--

CREATE TABLE `otros_datos_dhr` (
  `id` int(11) NOT NULL,
  `carrera` varchar(15) NOT NULL,
  `asignaturas_matriculadas` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `otros_datos_dhr`
--

INSERT INTO `otros_datos_dhr` (`id`, `carrera`, `asignaturas_matriculadas`) VALUES
(1, 'ADSI', 1),
(2, 'ADSI', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region_dhr`
--

CREATE TABLE `region_dhr` (
  `id` int(11) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `region_dhr`
--

INSERT INTO `region_dhr` (`id`, `region`) VALUES
(1, 'LOCALIDAD 1 - HISTORICA Y DEL CARIBE NORTE'),
(2, 'LOCALIDAD 2 - VIRGEN Y TURISTICA'),
(3, 'LOCALIDAD 3 - INDUSTRIAL DE LA BAHIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo_de_graduado_dhr`
--

CREATE TABLE `tiempo_de_graduado_dhr` (
  `id` int(11) NOT NULL,
  `tiempo_de_graduado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiempo_de_graduado_dhr`
--

INSERT INTO `tiempo_de_graduado_dhr` (`id`, `tiempo_de_graduado`) VALUES
(1, 2019),
(2, 2018),
(3, 2017),
(4, 2016),
(5, 2015),
(6, 2014),
(7, 2013),
(8, 2012),
(9, 2011),
(10, 2010),
(11, 2009),
(12, 2008),
(13, 2007),
(14, 2006),
(15, 2005),
(16, 2004),
(17, 2003);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodeinstitucion_dhr`
--

CREATE TABLE `tipodeinstitucion_dhr` (
  `id` int(11) NOT NULL,
  `tipodeinstitucion` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipodeinstitucion_dhr`
--

INSERT INTO `tipodeinstitucion_dhr` (`id`, `tipodeinstitucion`) VALUES
(1, 'Privada'),
(2, 'Mixta'),
(3, 'Publica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodevivienda_dhr`
--

CREATE TABLE `tipodevivienda_dhr` (
  `id` int(11) NOT NULL,
  `tipodevivienda` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipodevivienda_dhr`
--

INSERT INTO `tipodevivienda_dhr` (`id`, `tipodevivienda`) VALUES
(1, 'Propia'),
(2, 'Alquilada'),
(3, 'Familiar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividadeducativa_dhr`
--
ALTER TABLE `actividadeducativa_dhr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administracion_dhr`
--
ALTER TABLE `administracion_dhr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calificatucarrera_dhr`
--
ALTER TABLE `calificatucarrera_dhr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `encuesta_dhr`
--
ALTER TABLE `encuesta_dhr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ingresoeconomico` (`id_ingresoeconomico`),
  ADD KEY `id_estadocivil` (`id_estadocivil`),
  ADD KEY `id_tipodevivienda` (`id_tipodevivienda`),
  ADD KEY `id_genero` (`id_genero`),
  ADD KEY `id_region` (`id_region`),
  ADD KEY `id_nivelacademico` (`id_nivelacademicoPapa`),
  ADD KEY `id_nivelacademicoMama` (`id_nivelacademicoMama`),
  ADD KEY `identificacion` (`identificacion`);

--
-- Indices de la tabla `estadocivil_dhr`
--
ALTER TABLE `estadocivil_dhr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes_dhr`
--
ALTER TABLE `estudiantes_dhr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genero_dhr`
--
ALTER TABLE `genero_dhr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingresoeconomico_dhr`
--
ALTER TABLE `ingresoeconomico_dhr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `loginadmi_dhr`
--
ALTER TABLE `loginadmi_dhr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_dhr`
--
ALTER TABLE `login_dhr`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identificacion` (`identificacion`);

--
-- Indices de la tabla `nacimiento_dhr`
--
ALTER TABLE `nacimiento_dhr`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
