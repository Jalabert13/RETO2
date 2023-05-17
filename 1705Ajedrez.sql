-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-05-2023 a las 08:31:44
-- Versión del servidor: 10.1.48-MariaDB-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Ajedrez`
CREATE DATABASE Ajedrez;
USE Ajedrez;
--
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `gen_clasifica`
--

CREATE TABLE `gen_clasifica` (
  `nom_jugador` varchar(50) NOT NULL,
  `puesto` int(11) DEFAULT NULL,
  `jug_torneo` enum('A','B') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `idfide` varchar(15) NOT NULL,
  `nom_jugador` varchar(50) DEFAULT NULL,
  `elo` int(5) DEFAULT NULL,
  `club` varchar(15) DEFAULT NULL,
  `huesped` tinyint(1) DEFAULT NULL,
  `jug_torneo` enum('A','B') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Estructura de tabla para la tabla `premios`
--

CREATE TABLE `premios` (
  `puesto_premio` int(3) NOT NULL DEFAULT '0',
  `nom_torneo` enum('A','B') NOT NULL,
  `tipo` enum('GENERAL','SUB2400','SUB2200','C.VALENCIANA','SUB1800','SUB1600','SUB1400','HOSPEDAJE') NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `nom_jugador` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `torneo` (
  `nom_torneo` enum('A','B') NOT NULL,
  `categoria` varchar(15) DEFAULT NULL,
  `fec_ini` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gen_clasifica`
--
ALTER TABLE `gen_clasifica`
  ADD PRIMARY KEY (`nom_jugador`),
  ADD KEY `fk_clas_jugtorn` (`jug_torneo`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`idfide`),
  ADD UNIQUE KEY `nom_jugador` (`nom_jugador`),
  ADD KEY `fk_tor_jug` (`jug_torneo`);

--
-- Indices de la tabla `premios`
--
ALTER TABLE `premios`
  ADD PRIMARY KEY (`puesto_premio`,`nom_torneo`,`tipo`),
  ADD KEY `fk_premio_torneo` (`nom_torneo`),
  ADD KEY `fk_premio_jugador` (`nom_jugador`);

--
-- Indices de la tabla `torneo`
--
ALTER TABLE `torneo`
  ADD PRIMARY KEY (`nom_torneo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gen_clasifica`
--
ALTER TABLE `gen_clasifica`
  ADD CONSTRAINT `fk_clas_jug` FOREIGN KEY (`nom_jugador`) REFERENCES `jugador` (`nom_jugador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_clas_jugtorn` FOREIGN KEY (`jug_torneo`) REFERENCES `jugador` (`jug_torneo`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `fk_tor_jug` FOREIGN KEY (`jug_torneo`) REFERENCES `torneo` (`nom_torneo`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `premios`
--
ALTER TABLE `premios`
  ADD CONSTRAINT `fk_premio_jugador` FOREIGN KEY (`nom_jugador`) REFERENCES `gen_clasifica` (`nom_jugador`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_premio_torneo` FOREIGN KEY (`nom_torneo`) REFERENCES `torneo` (`nom_torneo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
