
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE DATABASE Ajedrez_A;
USE Ajedrez_A;


CREATE TABLE `cuadro_premios` (
  `tipo_premio` enum('GENERAL','C.VALENCIANA','SUB2400','SUB2200','HOSPEDAJE') NOT NULL,
  `puesto` int(3) NOT NULL,
  `valor` int(11) NOT NULL,
  `ganador` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `gen_clasifica` (
  `posicion` int(3) NOT NULL,
  `nom_jugador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




CREATE TABLE `jugador` (
  `idfide` varchar(15) NOT NULL,
  `nom_jugador` varchar(50) NOT NULL,
  `elo` int(5) NOT NULL,
  `huesped` tinyint(1) NOT NULL,
  `club` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;





CREATE TABLE `optar` (
  `idfide` varchar(15) NOT NULL,
  `nom_jugador` varchar(50) NOT NULL,
  `tipo_premio` enum('GENERAL','C.VALENCIANA','SUB2400','SUB2200','HOSPEDAJE') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




CREATE TABLE `Premio` (
  `tipo` enum('GENERAL','C.VALENCIANA','SUB2400','SUB2200','HOSPEDAJE') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



--
-- Indices de la tabla `cuadro_premios`
--
ALTER TABLE `cuadro_premios`
  ADD PRIMARY KEY (`tipo_premio`,`puesto`);

--
-- Indices de la tabla `gen_clasifica`
--
ALTER TABLE `gen_clasifica`
  ADD PRIMARY KEY (`posicion`),
  ADD KEY `fk_clas_jug` (`nom_jugador`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`idfide`),
  ADD UNIQUE KEY `nom_jugador` (`nom_jugador`);

--
-- Indices de la tabla `optar`
--
ALTER TABLE `optar`
  ADD PRIMARY KEY (`idfide`,`nom_jugador`,`tipo_premio`),
  ADD KEY `fk_opt_premio` (`tipo_premio`);

--
-- Indices de la tabla `Premio`
--
ALTER TABLE `Premio`
  ADD PRIMARY KEY (`tipo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuadro_premios`
--
ALTER TABLE `cuadro_premios`
  ADD CONSTRAINT `fk_cuad_premio` FOREIGN KEY (`tipo_premio`) REFERENCES `Premio` (`tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `gen_clasifica`
--
ALTER TABLE `gen_clasifica`
  ADD CONSTRAINT `fk_clas_jug` FOREIGN KEY (`nom_jugador`) REFERENCES `jugador` (`nom_jugador`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `optar`
--
ALTER TABLE `optar`
  ADD CONSTRAINT `fk_opt_idfide` FOREIGN KEY (`idfide`) REFERENCES `jugador` (`idfide`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_opt_premio` FOREIGN KEY (`tipo_premio`) REFERENCES `Premio` (`tipo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
