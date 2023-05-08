-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-05-2023 a las 10:46:00
-- Versión del servidor: 10.1.48-MariaDB-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Ajedrez`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gen_clasifica`
--

CREATE TABLE `gen_clasifica` (
  `idfide` varchar(15) NOT NULL,
  `puesto` int(11) DEFAULT NULL,
  `jug_torneo` enum('A','B') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gen_clasifica`
--

INSERT INTO `gen_clasifica` (`idfide`, `puesto`, `jug_torneo`) VALUES
('1002937', 15, 'A'),
('1004670', 9, 'A'),
('1051563', 16, 'A'),
('1057847', 51, 'A'),
('1065882', 34, 'A'),
('1206508', 60, 'A'),
('1214381', 8, 'B'),
('13707205', 60, 'B'),
('13726285', 37, 'A'),
('13728873', 53, 'A'),
('13729390', 31, 'A'),
('14105462', 35, 'A'),
('14112914', 27, 'A'),
('14189208', 47, 'B'),
('14203081', 7, 'A'),
('14203693', 5, 'A'),
('1512668', 1, 'A'),
('1526170', 65, 'B'),
('16207041', 47, 'A'),
('16219481', 45, 'A'),
('1805592', 27, 'B'),
('200468', 28, 'A'),
('2007606', 32, 'A'),
('200778', 3, 'A'),
('2010011', 12, 'A'),
('205230', 77, 'B'),
('205257', 6, 'B'),
('2083426', 20, 'B'),
('209708', 34, 'B'),
('2200724', 41, 'A'),
('2202999', 56, 'A'),
('2207532', 19, 'A'),
('2207680', 12, 'B'),
('2207710', 20, 'A'),
('2213079', 35, 'B'),
('2216027', 62, 'A'),
('2218178', 42, 'A'),
('2218640', 46, 'A'),
('2219000', 31, 'B'),
('2219387', 3, 'B'),
('22201882', 23, 'B'),
('22202668', 24, 'B'),
('22202722', 18, 'B'),
('2220300', 19, 'B'),
('22205748', 66, 'B'),
('22207600', 105, 'B'),
('22208151', 96, 'B'),
('22209115', 94, 'B'),
('2221470', 50, 'A'),
('22218149', 56, 'B'),
('22228225', 63, 'A'),
('22229833', 5, 'B'),
('2223821', 4, 'B'),
('2224356', 49, 'B'),
('22244026', 9, 'B'),
('2225433', 48, 'B'),
('22256709', 78, 'B'),
('22273700', 46, 'B'),
('22281398', 106, 'B'),
('22287965', 51, 'B'),
('2231050', 17, 'B'),
('2237733', 66, 'A'),
('2245213', 73, 'B'),
('2246660', 75, 'B'),
('2251485', 82, 'B'),
('2252643', 61, 'A'),
('2257696', 65, 'A'),
('2260034', 59, 'A'),
('2261790', 80, 'B'),
('2269007', 57, 'B'),
('2270978', 52, 'B'),
('2271303', 55, 'B'),
('2271770', 68, 'B'),
('2275376', 37, 'B'),
('2278723', 44, 'B'),
('2279100', 70, 'B'),
('2281619', 59, 'B'),
('2282143', 58, 'B'),
('2286548', 40, 'B'),
('2286890', 86, 'B'),
('2294001', 29, 'B'),
('2297361', 6, 'A'),
('2400111', 25, 'A'),
('2400987', 52, 'A'),
('2401347', 54, 'B'),
('24510297', 13, 'B'),
('24515132', 61, 'B'),
('24516740', 36, 'A'),
('24519707', 98, 'B'),
('24521612', 93, 'B'),
('24522678', 89, 'B'),
('24538329', 88, 'B'),
('24541087', 103, 'B'),
('24563013', 87, 'B'),
('24580112', 36, 'B'),
('24580376', 22, 'B'),
('24595349', 44, 'A'),
('24647640', 41, 'B'),
('25033760', 18, 'A'),
('25040073', 30, 'A'),
('25073230', 21, 'A'),
('25130536', 76, 'B'),
('2518066', 111, 'B'),
('25699016', 55, 'A'),
('26026120', 42, 'B'),
('2815400', 33, 'A'),
('2935600', 95, 'B'),
('2936690', 45, 'B'),
('30951747', 14, 'B'),
('30969603', 2, 'B'),
('30997690', 81, 'B'),
('32000138', 102, 'B'),
('32000669', 28, 'B'),
('32010176', 10, 'B'),
('32010583', 100, 'B'),
('32018347', 104, 'B'),
('32022450', 16, 'B'),
('32065795', 54, 'A'),
('32066139', 25, 'B'),
('32072317', 63, 'B'),
('32080042', 17, 'A'),
('33381291', 112, 'B'),
('34105298', 62, 'B'),
('34159177', 109, 'B'),
('34254978', 92, 'B'),
('35011685', 4, 'A'),
('35050362', 50, 'B'),
('35051555', 57, 'A'),
('35053400', 64, 'A'),
('3512428', 2, 'A'),
('36041424', 38, 'B'),
('3805204', 1, 'B'),
('3812448', 38, 'A'),
('400238', 8, 'A'),
('401471', 40, 'A'),
('404721', 11, 'B'),
('404802', 15, 'B'),
('4108752', 26, 'A'),
('412651', 26, 'B'),
('419010', 33, 'B'),
('420468', 39, 'B'),
('423807', 32, 'B'),
('432873', 43, 'B'),
('45015775', 13, 'A'),
('45031231', 11, 'A'),
('45050449', 79, 'B'),
('45058105', 84, 'B'),
('45092931', 43, 'A'),
('451096', 30, 'B'),
('46614753', 67, 'B'),
('46616551', 29, 'A'),
('46653252', 22, 'A'),
('46681604', 85, 'B'),
('470562', 71, 'B'),
('5050847', 10, 'A'),
('5082986', 39, 'A'),
('5092523', 23, 'A'),
('54509971', 53, 'B'),
('54543142', 101, 'B'),
('54546281', 107, 'B'),
('54593123', 108, 'B'),
('54596270', 69, 'B'),
('54596289', 97, 'B'),
('54599083', 83, 'B'),
('54599091', 113, 'B'),
('54718210', 99, 'B'),
('54745128', 110, 'B'),
('54758017', 90, 'B'),
('54764998', 24, 'A'),
('54767997', 72, 'B'),
('54783526', 91, 'B'),
('54788455', 64, 'B'),
('5819369', 48, 'A'),
('607835', 58, 'A'),
('6600280', 49, 'A'),
('8400709', 14, 'A'),
('843750', 74, 'B'),
('8500770', 21, 'B'),
('9000810', 7, 'B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `idfide` varchar(15) NOT NULL,
  `nom_jugador` varchar(25) DEFAULT NULL,
  `elo` int(5) DEFAULT NULL,
  `club` varchar(15) DEFAULT NULL,
  `huesped` tinyint(1) DEFAULT NULL,
  `jug_torneo` enum('A','B') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`idfide`, `nom_jugador`, `elo`, `club`, `huesped`, `jug_torneo`) VALUES
('1002937', 'Kuipers, Eelco', 2317, '', NULL, 'A'),
('1004670', 'Van Delft, Merijn', 2363, '', NULL, 'A'),
('1051563', 'Van Foreest, Machteld', 2309, '', NULL, 'A'),
('1057847', 'Achuthan, Dylan', 2081, '', NULL, 'A'),
('1065882', 'Slagboom, Leandro', 2177, '', NULL, 'A'),
('1206508', 'Draghici Flutur, Gavril', 2004, 'FEDC - Cataluña', NULL, 'A'),
('1214381', 'Ionita, Emilian-Paul', 1919, '', NULL, 'B'),
('13707205', 'Muratova, Anel', 1669, '', NULL, 'B'),
('13726285', 'Nurgaliyev, Sauat', 2150, '', NULL, 'A'),
('13728873', 'Assylov, Miras', 2044, '', NULL, 'A'),
('13729390', 'Nurmanova, Alua', 2191, '', NULL, 'A'),
('14105462', 'Hushpit, Yaroslav', 2176, '', NULL, 'A'),
('14112914', 'Chernikov, Vladimir', 2211, 'Comunidad Valen', NULL, 'A'),
('14189208', 'Hushpit, Lukian', 1717, '', NULL, 'B'),
('14203081', 'Sattarov, Bobir', 2389, '', NULL, 'A'),
('14203693', 'Saydaliev, Saidakbar', 2419, '', NULL, 'A'),
('1512668', 'Christiansen, Johan-Sebas', 2578, '', NULL, 'A'),
('1526170', 'Grindbakken, Erik', 1606, '', NULL, 'B'),
('16207041', 'Panjer, Sidney', 2100, '', NULL, 'A'),
('16219481', 'Kocak, Ediz', 2115, '', NULL, 'A'),
('1805592', 'Williams, Duncan', 1838, '', NULL, 'B'),
('200468', 'Goossens, Hanne', 2204, '', NULL, 'A'),
('2007606', 'Cherniack, Alex', 2188, '', NULL, 'A'),
('200778', 'Docx, Stefan', 2448, '', NULL, 'A'),
('2010011', 'Sarkar, Justin', 2343, '', NULL, 'A'),
('205230', 'Vander Voort, Patrick', 1488, '', NULL, 'B'),
('205257', 'Cluyts, Marc', 1923, '', NULL, 'B'),
('2083426', 'Prieto, Alberto', 1886, '', NULL, 'B'),
('209708', 'Engelaer, Maurice', 1790, '', NULL, 'B'),
('2200724', 'Garcia Callejo, Jesus', 2138, 'Madrid', NULL, 'A'),
('2202999', 'Palomo Teruel, Xavier', 2038, 'Cataluña', NULL, 'A'),
('2207532', 'Ibanez Aullana, Ramon', 2270, 'Comunidad Valen', NULL, 'A'),
('2207680', 'Lopez de Turiso, Jose Ang', 1909, 'Madrid', NULL, 'B'),
('2207710', 'Cabezas Ayala, Ivan', 2259, 'Extremadura', NULL, 'A'),
('2213079', 'Garcia Bueno, Juan Pablo', 1788, 'Aragón', NULL, 'B'),
('2216027', 'Unciti Juan, Javier', 1999, 'Madrid', NULL, 'A'),
('2218178', 'Rodriguez Garcia, Manuel ', 2135, 'Extremadura', NULL, 'A'),
('2218640', 'Minana Menor, Antonio', 2102, 'Comunidad Valen', NULL, 'A'),
('2219000', 'Rios Garcia, Miguel', 1829, 'Comunidad Valen', NULL, 'B'),
('2219387', 'Saez Gabikagogeaskoa, Osc', 1960, 'FEDC', NULL, 'B'),
('22201882', 'Diez Viera, Oscar', 1858, 'País Vasco', NULL, 'B'),
('22202668', 'Rodriguez Gomez, Vicente', 1854, 'Madrid', NULL, 'B'),
('22202722', 'Izquierdo Arruferia, Jose', 1887, 'País Vasco', NULL, 'B'),
('2220300', 'Martin Martin, Luis Vicen', 1886, 'Madrid', NULL, 'B'),
('22205748', 'Arribas Lopez, Sara', 1602, 'Madrid', NULL, 'B'),
('22207600', 'Gomez Real, Maria Del Pil', 1185, 'Comunidad Valen', NULL, 'B'),
('22208151', 'Jimenez Mahillo, David', 1304, 'FEDC Madrid', NULL, 'B'),
('22209115', 'Munoz Gonzalez, Martin', 1352, 'FEDC', NULL, 'B'),
('2221470', 'Horcajada Reales, Guiller', 2084, 'Madrid', NULL, 'A'),
('22218149', 'Albuixech Sanz, Jorge', 1690, 'Comunidad Valen', NULL, 'B'),
('22228225', 'Perez Ruiz, Santiago', 1966, 'Castilla y León', NULL, 'A'),
('22229833', 'Ruiz Ureta, Ernesto', 1929, 'Castilla y León', NULL, 'B'),
('2223821', 'Selva Salvador, Antonio', 1954, 'Comunidad Valen', NULL, 'B'),
('2224356', 'Hassomal Daswani, Birjkum', 1715, 'Comunidad Valen', NULL, 'B'),
('22244026', 'Urena Casacuberta, Lluis', 1917, 'Cataluña', NULL, 'B'),
('2225433', 'Lopez Heras, Arturo', 1715, 'Madrid', NULL, 'B'),
('22256709', 'Riera Mestres, Josep', 1484, 'Cataluña', NULL, 'B'),
('22273700', 'Gomez Fernandez, Fulgenci', 1727, 'País Vasco', NULL, 'B'),
('22281398', 'Galletero Monsalve, Juan ', 1077, 'FEDC', NULL, 'B'),
('22287965', 'Bergara Ede, Josu', 1713, 'País Vasco', NULL, 'B'),
('2231050', 'Pajuelo Morales, Raul', 1890, 'Madrid', NULL, 'B'),
('2237733', 'O`Neill Y Daneiko, Jose A', 1952, 'Comunidad Valen', NULL, 'A'),
('2245213', 'Valenzuela Garcia, Albert', 1503, 'Comunidad Valen', NULL, 'B'),
('2246660', 'Martinez Torres, Jose Man', 1496, 'FEDC', NULL, 'B'),
('2251485', 'Such Palacios, Jose Migue', 1465, 'Comunidad Valen', NULL, 'B'),
('2252643', 'Parramon Ros, Francesc', 2003, 'Cataluña', NULL, 'A'),
('2257696', 'Clemente Llamero, Roberto', 1953, 'FEDC - Castilla', NULL, 'A'),
('2260034', 'Perez Candelario, Matias', 2009, 'Extremadura', NULL, 'A'),
('2261790', 'Conde Negro, Francisco Ja', 1479, 'Castilla y León', NULL, 'B'),
('2269007', 'De Luna Butz, Alberto', 1685, 'Madrid', NULL, 'B'),
('2270978', 'Vicente Soriano, Josep', 1713, 'Cataluña', NULL, 'B'),
('2271303', 'Gerona Maura, Jesus', 1690, 'Comunidad Valen', NULL, 'B'),
('2271770', 'Vegara Gallego, Pere', 1573, 'Cataluña', NULL, 'B'),
('2275376', 'Pedraza Fernandez, Miguel', 1785, 'Comunidad Valen', NULL, 'B'),
('2278723', 'Ballina Amandi, Casimiro', 1748, '', NULL, 'B'),
('2279100', 'Medina Sanchez, Gines', 1556, 'Canarias', NULL, 'B'),
('2281619', 'Espejo Montagut, Jose Mar', 1678, 'Andalucía', NULL, 'B'),
('2282143', 'Minguela Munoz, Bienvenid', 1683, 'Madrid', NULL, 'B'),
('2286548', 'Fuster Aguilo, Joan', 1772, 'FEDC Baleares', NULL, 'B'),
('2286890', 'Rincon Martin, Santiago', 1454, 'FEDC', NULL, 'B'),
('2294001', 'Izagirre Alsua, Aritz', 1835, 'País Vasco', NULL, 'B'),
('2297361', 'Cruz Lledo, Pablo', 2404, 'Comunidad Valen', NULL, 'A'),
('2400111', 'Mannion, Stephen R', 2229, '', NULL, 'A'),
('2400987', 'Minnican, Alan', 2049, '', NULL, 'A'),
('2401347', 'Aird, Ian', 1698, '', NULL, 'B'),
('24510297', 'Izquierdo Carbellido, Pab', 1900, 'Comunidad Valen', NULL, 'B'),
('24515132', 'Rico Garcia, Carlos', 1649, 'Comunidad Valen', NULL, 'B'),
('24516740', 'Fernandez Garcia, Gumersi', 2172, 'Castilla y León', NULL, 'A'),
('24519707', 'Genis Traveria, Ferran', 1293, 'Cataluña', NULL, 'B'),
('24521612', 'Morata Perez, Jose', 1371, 'Andalucía', NULL, 'B'),
('24522678', 'Albuixech Soler, Sergi', 1437, 'Comunidad Valen', NULL, 'B'),
('24538329', 'Garcia Diaz, Jose', 1443, 'FEDC', NULL, 'B'),
('24541087', 'Ulla Centelles, Llorens', 1205, 'Comunidad Valen', NULL, 'B'),
('24563013', 'Verhoeven, Rudiger', 1454, 'Andalucía', NULL, 'B'),
('24580112', 'Gukasov, Artem', 1788, 'Comunidad Valen', NULL, 'B'),
('24580376', 'Camison Zornoza, Cesar', 1874, 'Comunidad Valen', NULL, 'B'),
('24595349', 'Sanroman Costas, Mauro', 2123, 'Galicia', NULL, 'A'),
('24647640', 'Hellmann, Thomas', 1771, '', NULL, 'B'),
('25033760', 'Ram Aravind L N', 2272, '', NULL, 'A'),
('25040073', 'Ojas Kulkarni', 2196, '', NULL, 'A'),
('25073230', 'Rakshitta Ravi', 2242, '', NULL, 'A'),
('25130536', 'Leelajai Krishna N', 1491, '', NULL, 'B'),
('2518066', 'Henning Lubberding, Hans', 0, '', NULL, 'B'),
('25699016', 'Sarveshwaran V', 2040, '', NULL, 'A'),
('26026120', 'Mallevaey, Guillaume', 1761, '', NULL, 'B'),
('2815400', 'Levi, Netanel', 2179, '', NULL, 'A'),
('2935600', 'Mateeva, Yana', 1329, '', NULL, 'B'),
('2936690', 'Mateev, Kaloyan Mateev', 1735, '', NULL, 'B'),
('30951747', 'Goktepe, Derin', 1895, '', NULL, 'B'),
('30969603', 'Place, Nicholas', 1967, '', NULL, 'B'),
('30997690', 'Milner, Romi', 1469, '', NULL, 'B'),
('32000138', 'Garcia Lorenzo, Jaime', 1210, 'FEDC', NULL, 'B'),
('32000669', 'Martinez Dourado, Daniel', 1837, 'Galicia', NULL, 'B'),
('32010176', 'Lopez Palomar, Jose', 1913, 'Comunidad Valen', NULL, 'B'),
('32010583', 'Mena Lena, Antonio', 1226, 'FEDC Extremadur', NULL, 'B'),
('32018347', 'Mabras Lloret, Monserrat', 1202, 'Comunidad Valen', NULL, 'B'),
('32022450', 'Roca Cruz, Rafael', 1894, 'Comunidad Valen', NULL, 'B'),
('32065795', 'Gil Lopez, Alejandro', 2041, 'Comunidad Valen', NULL, 'A'),
('32066139', 'Sanabria Taskila, Jenny M', 1852, 'Canarias', NULL, 'B'),
('32072317', 'Contreras Valle, Juan Car', 1629, 'Andalucía', NULL, 'B'),
('32080042', 'Escartin Lacasa, Jose', 2284, 'Aragón', NULL, 'A'),
('33381291', 'Ojassvini Thiagarajan', 0, '', NULL, 'B'),
('34105298', 'Tsiapko, Andrii', 1633, '', NULL, 'B'),
('34159177', 'Dumanskyi, Matvii', 0, '', NULL, 'B'),
('34254978', 'Voronaya, Eva', 1379, '', NULL, 'B'),
('35011685', 'Ajay Karthikeyan', 2430, '', NULL, 'A'),
('35050362', 'Aadith R', 1714, '', NULL, 'B'),
('35051555', 'Vignesh B', 2032, '', NULL, 'A'),
('35053400', 'Hiren K G', 1965, '', NULL, 'A'),
('3512428', 'Fernandez Guillen, Ernest', 2462, '', NULL, 'A'),
('36041424', 'Mallevaey, Armand', 1780, '', NULL, 'B'),
('3805204', 'Palao, Adriana', 1978, 'Comunidad Valen', NULL, 'B'),
('3812448', 'Rodriguez Melendez, Juan ', 2149, 'Madrid', NULL, 'A'),
('400238', 'Plaskett, H James', 2365, 'Comunidad Valen', NULL, 'A'),
('401471', 'Roe, Simon J', 2146, '', NULL, 'A'),
('404721', 'Millward, Kevin P', 1911, '', NULL, 'B'),
('404802', 'Spanton, Tim R', 1895, '', NULL, 'B'),
('4108752', 'Grabuzova, Tatiana', 2228, 'Comunidad Valen', NULL, 'A'),
('412651', 'Dawson, Alastair', 1842, '', NULL, 'B'),
('419010', 'Stokes, Paul C', 1791, '', NULL, 'B'),
('420468', 'Kane, Robert', 1773, '', NULL, 'B'),
('423807', 'Skielnik, Joseph J', 1797, '', NULL, 'B'),
('432873', 'Rumsey, Victor B', 1758, '', NULL, 'B'),
('45015775', 'Ilamparthi A R', 2336, '', NULL, 'A'),
('45031231', 'Nawin J J', 2351, '', NULL, 'A'),
('45050449', 'Swapna C N', 1481, '', NULL, 'B'),
('45058105', 'Sai Hrushikesh Simhdri', 1460, '', NULL, 'B'),
('45092931', 'Gugan G', 2126, '', NULL, 'A'),
('451096', 'Ingham, H William', 1833, '', NULL, 'B'),
('46614753', 'Sudharsan Gurukrishnan', 1586, '', NULL, 'B'),
('46616551', 'Harshad S', 2202, '', NULL, 'A'),
('46653252', 'Arjun C Krishnamachari', 2241, '', NULL, 'A'),
('46681604', 'Suriya S V', 1455, '', NULL, 'B'),
('470562', 'Kearsley, Raymond J', 1548, '', NULL, 'B'),
('5050847', 'Nandhidhaa, P V', 2358, '', NULL, 'A'),
('5082986', 'Priyanka, K', 2146, '', NULL, 'A'),
('5092523', 'Rajarishi Karthi', 2239, '', NULL, 'A'),
('54509971', 'Nieto Foresti, Julian', 1709, 'Baleares', NULL, 'B'),
('54543142', 'Casadevall Mainau, Iraida', 1212, 'FEDC Cataluña', NULL, 'B'),
('54546281', 'Ledesma Ledesma, Jose Ign', 1049, 'FEDC País Vasco', NULL, 'B'),
('54593123', 'Falcon Ibanez, Alicia', 0, 'La Rioja', NULL, 'B'),
('54596270', 'Prieto Matias, Manuel', 1560, 'Extremadura', NULL, 'B'),
('54596289', 'Prieto Rol, Esther', 1299, 'Extremadura', NULL, 'B'),
('54599083', 'Quintana Ruiz, David', 1460, 'Comunidad Valen', NULL, 'B'),
('54599091', 'Sanchez-Laulhe Garcia-Mer', 0, 'Comunidad Valen', NULL, 'B'),
('54718210', 'Ortega Moya, Juan Francis', 1290, 'Comunidad Valen', NULL, 'B'),
('54745128', 'Embuena Molina, Miguel An', 0, 'Comunidad Valen', NULL, 'B'),
('54758017', 'Rodriguez Dogmoch, Kyran', 1437, 'Andalucía', NULL, 'B'),
('54764998', 'Ilinca Ilinca, Felix Anto', 2233, 'Comunidad Valen', NULL, 'A'),
('54767997', 'Pesochinskiy, Stepan', 1508, 'Madrid', NULL, 'B'),
('54783526', 'Perez Solanas, Hugo', 1424, 'Extremadura', NULL, 'B'),
('54788455', 'Nechifor, David', 1613, 'Comunidad Valen', NULL, 'B'),
('5819369', 'Lohia, Sohum', 2096, '', NULL, 'A'),
('607835', 'Troffiguer, Olivier', 2016, '', NULL, 'A'),
('6600280', 'Sanchez Manzanares, Jorge', 2095, '', NULL, 'A'),
('8400709', 'Gavarrete, Nahun', 2325, 'Comunidad Valen', NULL, 'A'),
('843750', 'Deiana, Giacomo', 1498, '', NULL, 'B'),
('8500770', 'Nwachukwu, Chino', 1885, '', NULL, 'B'),
('9000810', 'Saber, Anas', 1920, '', NULL, 'B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneo`
--

CREATE TABLE `torneo` (
  `nom_torneo` enum('A','B') NOT NULL,
  `categoria` varchar(15) DEFAULT NULL,
  `fec_ini` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `torneo`
--

INSERT INTO `torneo` (`nom_torneo`, `categoria`, `fec_ini`) VALUES
('A', 'SUPRA 2000', '2022-12-03'),
('B', 'SUB 2000', '2022-12-03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gen_clasifica`
--
ALTER TABLE `gen_clasifica`
  ADD PRIMARY KEY (`idfide`),
  ADD KEY `fk_torn_clas` (`jug_torneo`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`idfide`),
  ADD KEY `fk_tor_jug` (`jug_torneo`);

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
  ADD CONSTRAINT `fk_jug_clas` FOREIGN KEY (`idfide`) REFERENCES `jugador` (`idfide`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_torn_clas` FOREIGN KEY (`jug_torneo`) REFERENCES `jugador` (`jug_torneo`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `fk_tor_jug` FOREIGN KEY (`jug_torneo`) REFERENCES `torneo` (`nom_torneo`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
