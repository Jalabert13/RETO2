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

--
-- Volcado de datos para la tabla `gen_clasifica`
--

INSERT INTO `gen_clasifica` (`nom_jugador`, `puesto`, `jug_torneo`) VALUES
('Aadith R', 10, 'B'),
('Achuthan, Dylan', 47, 'A'),
('Aird, Ian', 53, 'B'),
('Ajay Karthikeyan', 3, 'A'),
('Albuixech Sanz, Jorge', 89, 'B'),
('Albuixech Soler, Sergi', 92, 'B'),
('Arjun C Krishnamachari', 32, 'A'),
('Arribas Lopez, Sara', 69, 'B'),
('Assylov, Miras', 13, 'A'),
('Ballina Amandi, Casimiro', 58, 'B'),
('Bergara Ede, Josu', 59, 'B'),
('Cabezas Ayala, Ivan', 36, 'A'),
('Camison Zornoza, Cesar', 27, 'B'),
('Casadevall Mainau, Iraida', 87, 'B'),
('Cherniack, Alex', 61, 'A'),
('Chernikov, Vladimir', 14, 'A'),
('Christiansen, Johan-Sebas', 10, 'A'),
('Clemente Llamero, Roberto', 42, 'A'),
('Cluyts, Marc', 52, 'B'),
('Conde Negro, Francisco Ja', 28, 'B'),
('Contreras Valle, Juan Car', 99, 'B'),
('Cruz Lledo, Pablo', 51, 'A'),
('Dawson, Alastair', 63, 'B'),
('De Luna Butz, Alberto', 55, 'B'),
('Deiana, Giacomo', 77, 'B'),
('Diez Viera, Oscar', 31, 'B'),
('Docx, Stefan', 40, 'A'),
('Draghici Flutur, Gavril', 56, 'A'),
('Dumanskyi, Matvii', 106, 'B'),
('Embuena Molina, Miguel An', 85, 'B'),
('Engelaer, Maurice', 51, 'B'),
('Escartin Lacasa, Jose', 9, 'A'),
('Espejo Montagut, Jose Mar', 66, 'B'),
('Falcon Ibanez, Alicia', 105, 'B'),
('Fernandez Garcia, Gumersi', 21, 'A'),
('Fernandez Guillen, Ernest', 6, 'A'),
('Fuster Aguilo, Joan', 25, 'B'),
('Galletero Monsalve, Juan ', 107, 'B'),
('Garcia Bueno, Juan Pablo', 21, 'B'),
('Garcia Callejo, Jesus', 44, 'A'),
('Garcia Diaz, Jose', 104, 'B'),
('Garcia Lorenzo, Jaime', 98, 'B'),
('Gavarrete, Nahun', 18, 'A'),
('Genis Traveria, Ferran', 95, 'B'),
('Gerona Maura, Jesus', 80, 'B'),
('Gil Lopez, Alejandro', 49, 'A'),
('Goktepe, Derin', 1, 'B'),
('Gomez Fernandez, Fulgenci', 43, 'B'),
('Gomez Real, Maria Del Pil', 96, 'B'),
('Goossens, Hanne', 37, 'A'),
('Grabuzova, Tatiana', 26, 'A'),
('Grindbakken, Erik', 82, 'B'),
('Gugan G', 29, 'A'),
('Gukasov, Artem', 37, 'B'),
('Harshad S', 12, 'A'),
('Hassomal Daswani, Birjkum', 74, 'B'),
('Hellmann, Thomas', 81, 'B'),
('Henning Lubberding, Hans', 75, 'B'),
('Hiren K G', 46, 'A'),
('Horcajada Reales, Guiller', 45, 'A'),
('Hushpit, Lukian', 36, 'B'),
('Hushpit, Yaroslav', 66, 'A'),
('Ibanez Aullana, Ramon', 31, 'A'),
('Ilamparthi A R', 7, 'A'),
('Ilinca Ilinca, Felix Anto', 25, 'A'),
('Ingham, H William', 47, 'B'),
('Ionita, Emilian-Paul', 16, 'B'),
('Izagirre Alsua, Aritz', 67, 'B'),
('Izquierdo Arruferia, Jose', 78, 'B'),
('Izquierdo Carbellido, Pablo', 22, 'B'),
('Jimenez Mahillo, David', 110, 'B'),
('Kane, Robert', 54, 'B'),
('Kearsley, Raymond J', 101, 'B'),
('Kocak, Ediz', 48, 'A'),
('Kuipers, Eelco', 22, 'A'),
('Ledesma Ledesma, Jose Ign', 111, 'B'),
('Leelajai Krishna N', 5, 'B'),
('Levi, Netanel', 30, 'A'),
('Lohia, Sohum', 38, 'A'),
('Lopez de Turiso, Jose Angel', 11, 'B'),
('Lopez Heras, Arturo', 64, 'B'),
('Lopez Palomar, Jose', 13, 'B'),
('Mabras Lloret, Monserrat', 88, 'B'),
('Mallevaey, Armand', 57, 'B'),
('Mallevaey, Guillaume', 3, 'B'),
('Mannion, Stephen R', 8, 'A'),
('Martin Martin, Luis Vicen', 46, 'B'),
('Martinez Dourado, Daniel', 7, 'B'),
('Martinez Torres, Jose Man', 76, 'B'),
('Mateev, Kaloyan Mateev', 26, 'B'),
('Mateeva, Yana', 83, 'B'),
('Medina Sanchez, Gines', 41, 'B'),
('Mena Lena, Antonio', 94, 'B'),
('Millward, Kevin P', 35, 'B'),
('Milner, Romi', 113, 'B'),
('Minana Menor, Antonio', 57, 'A'),
('Minguela Munoz, Bienvenid', 45, 'B'),
('Minnican, Alan', 52, 'A'),
('Morata Perez, Jose', 68, 'B'),
('Munoz Gonzalez, Martin', 84, 'B'),
('Muratova, Anel', 39, 'B'),
('Nandhidhaa, P V', 60, 'A'),
('Nawin J J', 64, 'A'),
('Nechifor, David', 44, 'B'),
('Nieto Foresti, Julian', 19, 'B'),
('Nurgaliyev, Sauat', 24, 'A'),
('Nurmanova, Alua', 65, 'A'),
('Nwachukwu, Chino', 17, 'B'),
('Ojas Kulkarni', 16, 'A'),
('Ojassvini Thiagarajan', 61, 'B'),
('Ortega Moya, Juan Francis', 108, 'B'),
('O`Neill Y Daneiko, Jose A', 54, 'A'),
('Pajuelo Morales, Raul', 6, 'B'),
('Palao, Adriana', 9, 'B'),
('Palomo Teruel, Xavier', 50, 'A'),
('Panjer, Sidney', 39, 'A'),
('Parramon Ros, Francesc', 62, 'A'),
('Pedraza Fernandez, Miguel', 32, 'B'),
('Perez Candelario, Matias', 55, 'A'),
('Perez Ruiz, Santiago', 63, 'A'),
('Perez Solanas, Hugo', 103, 'B'),
('Pesochinskiy, Stepan', 70, 'B'),
('Place, Nicholas', 24, 'B'),
('Plaskett, H James', 34, 'A'),
('Prieto Matias, Manuel', 62, 'B'),
('Prieto Rol, Esther', 72, 'B'),
('Prieto, Alberto', 8, 'B'),
('Priyanka, K', 28, 'A'),
('Quintana Ruiz, David', 91, 'B'),
('Rajarishi Karthi', 15, 'A'),
('Rakshitta Ravi', 19, 'A'),
('Ram Aravind L N', 20, 'A'),
('Rico Garcia, Carlos', 93, 'B'),
('Riera Mestres, Josep', 102, 'B'),
('Rincon Martin, Santiago', 40, 'B'),
('Rios Garcia, Miguel', 49, 'B'),
('Roca Cruz, Rafael', 23, 'B'),
('Rodriguez Dogmoch, Kyran', 112, 'B'),
('Rodriguez Garcia, Manuel ', 43, 'A'),
('Rodriguez Gomez, Vicente', 18, 'B'),
('Rodriguez Melendez, Juan ', 33, 'A'),
('Roe, Simon J', 41, 'A'),
('Ruiz Ureta, Ernesto', 56, 'B'),
('Rumsey, Victor B', 79, 'B'),
('Saber, Anas', 14, 'B'),
('Saez Gabikagogeaskoa, Oscar', 20, 'B'),
('Sai Hrushikesh Simhdri', 2, 'B'),
('Sanabria Taskila, Jenny Maria', 12, 'B'),
('Sanchez Manzanares, Jorge', 53, 'A'),
('Sanchez-Laulhe Garcia-Mer', 29, 'B'),
('Sanroman Costas, Mauro', 35, 'A'),
('Sarkar, Justin', 4, 'A'),
('Sarveshwaran V', 27, 'A'),
('Sattarov, Bobir', 2, 'A'),
('Saydaliev, Saidakbar', 1, 'A'),
('Selva Salvador, Antonio', 15, 'B'),
('Skielnik, Joseph J', 33, 'B'),
('Slagboom, Leandro', 23, 'A'),
('Spanton, Tim R', 48, 'B'),
('Stokes, Paul C', 90, 'B'),
('Such Palacios, Jose Migue', 73, 'B'),
('Sudharsan Gurukrishnan', 42, 'B'),
('Suriya S V', 30, 'B'),
('Swapna C N', 38, 'B'),
('Troffiguer, Olivier', 58, 'A'),
('Tsiapko, Andrii', 4, 'B'),
('Ulla Centelles, Llorens', 109, 'B'),
('Unciti Juan, Javier', 59, 'A'),
('Urena Casacuberta, Lluis', 34, 'B'),
('Valenzuela Garcia, Albert', 60, 'B'),
('Van Delft, Merijn', 11, 'A'),
('Van Foreest, Machteld', 5, 'A'),
('Vander Voort, Patrick', 97, 'B'),
('Vegara Gallego, Pere', 86, 'B'),
('Verhoeven, Rudiger', 100, 'B'),
('Vicente Soriano, Josep', 65, 'B'),
('Vignesh B', 17, 'A'),
('Voronaya, Eva', 71, 'B'),
('Williams, Duncan', 50, 'B');

-- --------------------------------------------------------

--
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
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`idfide`, `nom_jugador`, `elo`, `club`, `huesped`, `jug_torneo`) VALUES
('1002937', 'Kuipers, Eelco', 2317, '', 0, 'A'),
('1004670', 'Van Delft, Merijn', 2363, '', 1, 'A'),
('1051563', 'Van Foreest, Machteld', 2309, '', 0, 'A'),
('1057847', 'Achuthan, Dylan', 2081, '', 1, 'A'),
('1065882', 'Slagboom, Leandro', 2177, '', 0, 'A'),
('1206508', 'Draghici Flutur, Gavril', 2004, 'FEDC - Cataluña', 1, 'A'),
('1214381', 'Ionita, Emilian-Paul', 1919, '', 0, 'B'),
('13707205', 'Muratova, Anel', 1669, '', 1, 'B'),
('13726285', 'Nurgaliyev, Sauat', 2150, '', 0, 'A'),
('13728873', 'Assylov, Miras', 2044, '', 1, 'A'),
('13729390', 'Nurmanova, Alua', 2191, '', 0, 'A'),
('14105462', 'Hushpit, Yaroslav', 2176, '', 1, 'A'),
('14112914', 'Chernikov, Vladimir', 2211, 'Comunidad Valen', 0, 'A'),
('14189208', 'Hushpit, Lukian', 1717, '', 0, 'B'),
('14203081', 'Sattarov, Bobir', 2389, '', 1, 'A'),
('14203693', 'Saydaliev, Saidakbar', 2419, '', 0, 'A'),
('1512668', 'Christiansen, Johan-Sebas', 2578, '', 1, 'A'),
('1526170', 'Grindbakken, Erik', 1606, '', 1, 'B'),
('16207041', 'Panjer, Sidney', 2100, '', 0, 'A'),
('16219481', 'Kocak, Ediz', 2115, '', 1, 'A'),
('1805592', 'Williams, Duncan', 1838, '', 0, 'B'),
('200468', 'Goossens, Hanne', 2204, '', 0, 'A'),
('2007606', 'Cherniack, Alex', 2188, '', 1, 'A'),
('200778', 'Docx, Stefan', 2448, '', 0, 'A'),
('2010011', 'Sarkar, Justin', 2343, '', 1, 'A'),
('205230', 'Vander Voort, Patrick', 1488, '', 1, 'B'),
('205257', 'Cluyts, Marc', 1923, '', 0, 'B'),
('2083426', 'Prieto, Alberto', 1886, '', 1, 'B'),
('209708', 'Engelaer, Maurice', 1790, '', 0, 'B'),
('2200724', 'Garcia Callejo, Jesus', 2138, 'Madrid', 0, 'A'),
('2202999', 'Palomo Teruel, Xavier', 2038, 'Cataluña', 1, 'A'),
('2207532', 'Ibanez Aullana, Ramon', 2270, 'Comunidad Valen', 0, 'A'),
('2207680', 'Lopez de Turiso, Jose Angel', 1909, 'Madrid', 1, 'B'),
('2207710', 'Cabezas Ayala, Ivan', 2259, 'Extremadura', 1, 'A'),
('2213079', 'Garcia Bueno, Juan Pablo', 1788, 'Aragón', 0, 'B'),
('2216027', 'Unciti Juan, Javier', 1999, 'Madrid', 0, 'A'),
('2218178', 'Rodriguez Garcia, Manuel ', 2135, 'Extremadura', 1, 'A'),
('2218640', 'Minana Menor, Antonio', 2102, 'Comunidad Valen', 0, 'A'),
('2219000', 'Rios Garcia, Miguel', 1829, 'Comunidad Valen', 1, 'B'),
('2219387', 'Saez Gabikagogeaskoa, Oscar', 1960, 'FEDC', 0, 'B'),
('22201882', 'Diez Viera, Oscar', 1858, 'País Vasco', 1, 'B'),
('22202668', 'Rodriguez Gomez, Vicente', 1854, 'Madrid', 0, 'B'),
('22202722', 'Izquierdo Arruferia, Jose', 1887, 'País Vasco', 1, 'B'),
('2220300', 'Martin Martin, Luis Vicen', 1886, 'Madrid', 0, 'B'),
('22205748', 'Arribas Lopez, Sara', 1602, 'Madrid', 1, 'B'),
('22207600', 'Gomez Real, Maria Del Pil', 1185, 'Comunidad Valen', 0, 'B'),
('22208151', 'Jimenez Mahillo, David', 1304, 'FEDC Madrid', 1, 'B'),
('22209115', 'Munoz Gonzalez, Martin', 1352, 'FEDC', 0, 'B'),
('2221470', 'Horcajada Reales, Guiller', 2084, 'Madrid', 1, 'A'),
('22218149', 'Albuixech Sanz, Jorge', 1690, 'Comunidad Valen', 1, 'B'),
('22228225', 'Perez Ruiz, Santiago', 1966, 'Castilla y León', 0, 'A'),
('22229833', 'Ruiz Ureta, Ernesto', 1929, 'Castilla y León', 0, 'B'),
('2223821', 'Selva Salvador, Antonio', 1954, 'Comunidad Valen', 1, 'B'),
('2224356', 'Hassomal Daswani, Birjkum', 1715, 'Comunidad Valen', 0, 'B'),
('22244026', 'Urena Casacuberta, Lluis', 1917, 'Cataluña', 1, 'B'),
('2225433', 'Lopez Heras, Arturo', 1715, 'Madrid', 0, 'B'),
('22256709', 'Riera Mestres, Josep', 1484, 'Cataluña', 1, 'B'),
('22273700', 'Gomez Fernandez, Fulgenci', 1727, 'País Vasco', 0, 'B'),
('22281398', 'Galletero Monsalve, Juan ', 1077, 'FEDC', 1, 'B'),
('22287965', 'Bergara Ede, Josu', 1713, 'País Vasco', 0, 'B'),
('2231050', 'Pajuelo Morales, Raul', 1890, 'Madrid', 1, 'B'),
('2237733', 'O`Neill Y Daneiko, Jose A', 1952, 'Comunidad Valen', 1, 'A'),
('2245213', 'Valenzuela Garcia, Albert', 1503, 'Comunidad Valen', 0, 'B'),
('2246660', 'Martinez Torres, Jose Man', 1496, 'FEDC', 1, 'B'),
('2251485', 'Such Palacios, Jose Migue', 1465, 'Comunidad Valen', 0, 'B'),
('2252643', 'Parramon Ros, Francesc', 2003, 'Cataluña', 0, 'A'),
('2257696', 'Clemente Llamero, Roberto', 1953, 'FEDC - Castilla', 1, 'A'),
('2260034', 'Perez Candelario, Matias', 2009, 'Extremadura', 0, 'A'),
('2261790', 'Conde Negro, Francisco Ja', 1479, 'Castilla y León', 1, 'B'),
('2269007', 'De Luna Butz, Alberto', 1685, 'Madrid', 0, 'B'),
('2270978', 'Vicente Soriano, Josep', 1713, 'Cataluña', 1, 'B'),
('2271303', 'Gerona Maura, Jesus', 1690, 'Comunidad Valen', 0, 'B'),
('2271770', 'Vegara Gallego, Pere', 1573, 'Cataluña', 1, 'B'),
('2275376', 'Pedraza Fernandez, Miguel', 1785, 'Comunidad Valen', 0, 'B'),
('2278723', 'Ballina Amandi, Casimiro', 1748, '', 1, 'B'),
('2279100', 'Medina Sanchez, Gines', 1556, 'Canarias', 0, 'B'),
('2281619', 'Espejo Montagut, Jose Mar', 1678, 'Andalucía', 1, 'B'),
('2282143', 'Minguela Munoz, Bienvenid', 1683, 'Madrid', 0, 'B'),
('2286548', 'Fuster Aguilo, Joan', 1772, 'FEDC Baleares', 1, 'B'),
('2286890', 'Rincon Martin, Santiago', 1454, 'FEDC', 0, 'B'),
('2294001', 'Izagirre Alsua, Aritz', 1835, 'País Vasco', 1, 'B'),
('2297361', 'Cruz Lledo, Pablo', 2404, 'Comunidad Valen', 1, 'A'),
('2400111', 'Mannion, Stephen R', 2229, '', 0, 'A'),
('2400987', 'Minnican, Alan', 2049, '', 1, 'A'),
('2401347', 'Aird, Ian', 1698, '', 0, 'B'),
('24510297', 'Izquierdo Carbellido, Pablo', 1900, 'Comunidad Valen', 1, 'B'),
('24515132', 'Rico Garcia, Carlos', 1649, 'Comunidad Valen', 0, 'B'),
('24516740', 'Fernandez Garcia, Gumersi', 2172, 'Castilla y León', 0, 'A'),
('24519707', 'Genis Traveria, Ferran', 1293, 'Cataluña', 1, 'B'),
('24521612', 'Morata Perez, Jose', 1371, 'Andalucía', 0, 'B'),
('24522678', 'Albuixech Soler, Sergi', 1437, 'Comunidad Valen', 1, 'B'),
('24538329', 'Garcia Diaz, Jose', 1443, 'FEDC', 0, 'B'),
('24541087', 'Ulla Centelles, Llorens', 1205, 'Comunidad Valen', 1, 'B'),
('24563013', 'Verhoeven, Rudiger', 1454, 'Andalucía', 0, 'B'),
('24580112', 'Gukasov, Artem', 1788, 'Comunidad Valen', 1, 'B'),
('24580376', 'Camison Zornoza, Cesar', 1874, 'Comunidad Valen', 0, 'B'),
('24595349', 'Sanroman Costas, Mauro', 2123, 'Galicia', 1, 'A'),
('24647640', 'Hellmann, Thomas', 1771, '', 1, 'B'),
('25033760', 'Ram Aravind L N', 2272, '', 0, 'A'),
('25040073', 'Ojas Kulkarni', 2196, '', 1, 'A'),
('25073230', 'Rakshitta Ravi', 2242, '', 0, 'A'),
('25130536', 'Leelajai Krishna N', 1491, '', 0, 'B'),
('2518066', 'Henning Lubberding, Hans', 0, '', 1, 'B'),
('25699016', 'Sarveshwaran V', 2040, '', 1, 'A'),
('26026120', 'Mallevaey, Guillaume', 1761, '', 0, 'B'),
('2815400', 'Levi, Netanel', 2179, '', 0, 'A'),
('2935600', 'Mateeva, Yana', 1329, '', 1, 'B'),
('2936690', 'Mateev, Kaloyan Mateev', 1735, '', 0, 'B'),
('30951747', 'Goktepe, Derin', 1895, '', 1, 'B'),
('30969603', 'Place, Nicholas', 1967, '', 0, 'B'),
('30997690', 'Milner, Romi', 1469, '', 1, 'B'),
('32000138', 'Garcia Lorenzo, Jaime', 1210, 'FEDC', 0, 'B'),
('32000669', 'Martinez Dourado, Daniel', 1837, 'Galicia', 1, 'B'),
('32010176', 'Lopez Palomar, Jose', 1913, 'Comunidad Valen', 0, 'B'),
('32010583', 'Mena Lena, Antonio', 1226, 'FEDC Extremadur', 1, 'B'),
('32018347', 'Mabras Lloret, Monserrat', 1202, 'Comunidad Valen', 0, 'B'),
('32022450', 'Roca Cruz, Rafael', 1894, 'Comunidad Valen', 1, 'B'),
('32065795', 'Gil Lopez, Alejandro', 2041, 'Comunidad Valen', 1, 'A'),
('32066139', 'Sanabria Taskila, Jenny Maria', 1852, 'Canarias', 0, 'B'),
('32072317', 'Contreras Valle, Juan Car', 1629, 'Andalucía', 1, 'B'),
('32080042', 'Escartin Lacasa, Jose', 2284, 'Aragón', 0, 'A'),
('33381291', 'Ojassvini Thiagarajan', 0, '', 0, 'B'),
('34105298', 'Tsiapko, Andrii', 1633, '', 1, 'B'),
('34159177', 'Dumanskyi, Matvii', 0, '', 0, 'B'),
('34254978', 'Voronaya, Eva', 1379, '', 1, 'B'),
('35011685', 'Ajay Karthikeyan', 2430, '', 1, 'A'),
('35050362', 'Aadith R', 1714, '', 0, 'B'),
('35051555', 'Vignesh B', 2032, '', 0, 'A'),
('35053400', 'Hiren K G', 1965, '', 1, 'A'),
('3512428', 'Fernandez Guillen, Ernest', 2462, '', 0, 'A'),
('36041424', 'Mallevaey, Armand', 1780, '', 1, 'B'),
('3805204', 'Palao, Adriana', 1978, 'Comunidad Valen', 0, 'B'),
('3812448', 'Rodriguez Melendez, Juan ', 2149, 'Madrid', 1, 'A'),
('400238', 'Plaskett, H James', 2365, 'Comunidad Valen', 0, 'A'),
('401471', 'Roe, Simon J', 2146, '', 1, 'A'),
('404721', 'Millward, Kevin P', 1911, '', 1, 'B'),
('404802', 'Spanton, Tim R', 1895, '', 0, 'B'),
('4108752', 'Grabuzova, Tatiana', 2228, 'Comunidad Valen', 0, 'A'),
('412651', 'Dawson, Alastair', 1842, '', 1, 'B'),
('419010', 'Stokes, Paul C', 1791, '', 0, 'B'),
('420468', 'Kane, Robert', 1773, '', 1, 'B'),
('423807', 'Skielnik, Joseph J', 1797, '', 0, 'B'),
('432873', 'Rumsey, Victor B', 1758, '', 1, 'B'),
('45015775', 'Ilamparthi A R', 2336, '', 1, 'A'),
('45031231', 'Nawin J J', 2351, '', 0, 'A'),
('45050449', 'Swapna C N', 1481, '', 0, 'B'),
('45058105', 'Sai Hrushikesh Simhdri', 1460, '', 1, 'B'),
('45092931', 'Gugan G', 2126, '', 1, 'A'),
('451096', 'Ingham, H William', 1833, '', 0, 'B'),
('46614753', 'Sudharsan Gurukrishnan', 1586, '', 1, 'B'),
('46616551', 'Harshad S', 2202, '', 0, 'A'),
('46653252', 'Arjun C Krishnamachari', 2241, '', 1, 'A'),
('46681604', 'Suriya S V', 1455, '', 0, 'B'),
('470562', 'Kearsley, Raymond J', 1548, '', 1, 'B'),
('5050847', 'Nandhidhaa, P V', 2358, '', 0, 'A'),
('5082986', 'Priyanka, K', 2146, '', 1, 'A'),
('5092523', 'Rajarishi Karthi', 2239, '', 0, 'A'),
('54509971', 'Nieto Foresti, Julian', 1709, 'Baleares', 0, 'B'),
('54543142', 'Casadevall Mainau, Iraida', 1212, 'FEDC Cataluña', 1, 'B'),
('54546281', 'Ledesma Ledesma, Jose Ign', 1049, 'FEDC País Vasco', 0, 'B'),
('54593123', 'Falcon Ibanez, Alicia', 0, 'La Rioja', 1, 'B'),
('54596270', 'Prieto Matias, Manuel', 1560, 'Extremadura', 0, 'B'),
('54596289', 'Prieto Rol, Esther', 1299, 'Extremadura', 1, 'B'),
('54599083', 'Quintana Ruiz, David', 1460, 'Comunidad Valen', 0, 'B'),
('54599091', 'Sanchez-Laulhe Garcia-Mer', 0, 'Comunidad Valen', 1, 'B'),
('54718210', 'Ortega Moya, Juan Francis', 1290, 'Comunidad Valen', 0, 'B'),
('54745128', 'Embuena Molina, Miguel An', 0, 'Comunidad Valen', 1, 'B'),
('54758017', 'Rodriguez Dogmoch, Kyran', 1437, 'Andalucía', 0, 'B'),
('54764998', 'Ilinca Ilinca, Felix Anto', 2233, 'Comunidad Valen', 1, 'A'),
('54767997', 'Pesochinskiy, Stepan', 1508, 'Madrid', 1, 'B'),
('54783526', 'Perez Solanas, Hugo', 1424, 'Extremadura', 0, 'B'),
('54788455', 'Nechifor, David', 1613, 'Comunidad Valen', 1, 'B'),
('5819369', 'Lohia, Sohum', 2096, '', 0, 'A'),
('607835', 'Troffiguer, Olivier', 2016, '', 1, 'A'),
('6600280', 'Sanchez Manzanares, Jorge', 2095, '', 0, 'A'),
('8400709', 'Gavarrete, Nahun', 2325, 'Comunidad Valen', 1, 'A'),
('843750', 'Deiana, Giacomo', 1498, '', 0, 'B'),
('8500770', 'Nwachukwu, Chino', 1885, '', 1, 'B'),
('9000810', 'Saber, Anas', 1920, '', 0, 'B');

-- --------------------------------------------------------

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

--
-- Volcado de datos para la tabla `premios`
--

INSERT INTO `premios` (`puesto_premio`, `nom_torneo`, `tipo`, `valor`, `nom_jugador`) VALUES
(1, 'A', 'GENERAL', 5000, 'Saydaliev, Saidakbar'),
(1, 'A', 'SUB2400', 225, NULL),
(1, 'A', 'SUB2200', 225, NULL),
(1, 'A', 'C.VALENCIANA', 500, 'Chernikov, Vladimir'),
(1, 'B', 'GENERAL', 3000, 'Goktepe, Derin'),
(1, 'B', 'C.VALENCIANA', 500, 'Palao, Adriana'),
(1, 'B', 'SUB1800', 225, NULL),
(1, 'B', 'SUB1600', 225, NULL),
(1, 'B', 'SUB1400', 225, NULL),
(2, 'A', 'GENERAL', 3000, 'Sattarov, Bobir'),
(2, 'A', 'SUB2400', 150, NULL),
(2, 'A', 'SUB2200', 150, NULL),
(2, 'A', 'C.VALENCIANA', 400, 'Gavarrete, Nahun'),
(2, 'B', 'GENERAL', 1500, 'Sai Hrushikesh Simhdri'),
(2, 'B', 'C.VALENCIANA', 400, 'Lopez Palomar, Jose'),
(2, 'B', 'SUB1800', 150, NULL),
(2, 'B', 'SUB1600', 150, NULL),
(2, 'B', 'SUB1400', 150, NULL),
(3, 'A', 'GENERAL', 1200, 'Ajay Karthikeyan'),
(3, 'A', 'SUB2400', 120, NULL),
(3, 'A', 'SUB2200', 120, NULL),
(3, 'A', 'C.VALENCIANA', 300, 'Ilinca Ilinca, Felix Anto'),
(3, 'B', 'GENERAL', 1200, 'Mallevaey, Guillaume'),
(3, 'B', 'C.VALENCIANA', 300, 'Selva Salvador, Antonio'),
(3, 'B', 'SUB1800', 120, NULL),
(3, 'B', 'SUB1600', 120, NULL),
(3, 'B', 'SUB1400', 120, NULL),
(4, 'A', 'GENERAL', 800, 'Sarkar, Justin'),
(4, 'A', 'SUB2400', 100, NULL),
(4, 'A', 'SUB2200', 100, NULL),
(4, 'A', 'C.VALENCIANA', 250, 'Grabuzova, Tatiana'),
(4, 'B', 'GENERAL', 1000, 'Tsiapko, Andrii'),
(4, 'B', 'C.VALENCIANA', 250, 'Izquierdo Carbellido, Pablo'),
(4, 'B', 'SUB1800', 100, NULL),
(4, 'B', 'SUB1600', 100, NULL),
(4, 'B', 'SUB1400', 100, NULL),
(5, 'A', 'GENERAL', 700, 'Van Foreest, Machteld'),
(5, 'A', 'SUB2400', 80, NULL),
(5, 'A', 'SUB2200', 80, NULL),
(5, 'A', 'C.VALENCIANA', 200, 'Ibanez Aullana, Ramon'),
(5, 'B', 'GENERAL', 800, 'Leelajai Krishna N'),
(5, 'B', 'C.VALENCIANA', 200, 'Roca Cruz, Rafael'),
(5, 'B', 'SUB1800', 80, NULL),
(5, 'B', 'SUB1600', 80, NULL),
(5, 'B', 'SUB1400', 80, NULL),
(6, 'A', 'GENERAL', 600, 'Fernandez Guillen, Ernest'),
(6, 'A', 'C.VALENCIANA', 150, 'Plaskett, H James'),
(6, 'B', 'GENERAL', 700, 'Pajuelo Morales, Raul'),
(6, 'B', 'C.VALENCIANA', 150, 'Camison Zornoza, Cesar'),
(7, 'A', 'GENERAL', 500, 'Ilamparthi A R'),
(7, 'A', 'C.VALENCIANA', 100, 'Gil Lopez, Alejandro'),
(7, 'B', 'GENERAL', 600, 'Martinez Dourado, Daniel'),
(7, 'B', 'C.VALENCIANA', 100, 'Sanchez-Laulhe Garcia-Mer'),
(8, 'A', 'GENERAL', 400, 'Mannion, Stephen R'),
(8, 'A', 'C.VALENCIANA', 80, 'Cruz Lledo, Pablo'),
(8, 'B', 'GENERAL', 500, 'Prieto, Alberto'),
(8, 'B', 'C.VALENCIANA', 80, 'Pedraza Fernandez, Miguel'),
(9, 'A', 'GENERAL', 300, 'Escartin Lacasa, Jose'),
(9, 'B', 'GENERAL', 400, 'Palao, Adriana'),
(10, 'A', 'GENERAL', 200, 'Christiansen, Johan-Sebas'),
(10, 'B', 'GENERAL', 300, 'Aadith R'),
(11, 'A', 'GENERAL', 200, 'Van Delft, Merijn'),
(11, 'B', 'GENERAL', 250, 'Lopez de Turiso, Jose Angel'),
(12, 'A', 'GENERAL', 200, 'Harshad S'),
(12, 'B', 'GENERAL', 200, 'Sanabria Taskila, Jenny Maria'),
(13, 'A', 'GENERAL', 150, 'Assylov, Miras'),
(13, 'B', 'GENERAL', 150, 'Lopez Palomar, Jose'),
(14, 'A', 'GENERAL', 150, 'Chernikov, Vladimir'),
(14, 'B', 'GENERAL', 150, 'Saber, Anas'),
(15, 'A', 'GENERAL', 150, 'Rajarishi Karthi'),
(15, 'B', 'GENERAL', 150, 'Selva Salvador, Antonio'),
(16, 'A', 'GENERAL', 100, 'Ojas Kulkarni'),
(16, 'B', 'GENERAL', 100, 'Ionita, Emilian-Paul'),
(17, 'A', 'GENERAL', 100, 'Vignesh B'),
(17, 'B', 'GENERAL', 100, 'Nwachukwu, Chino'),
(18, 'A', 'GENERAL', 100, 'Gavarrete, Nahun'),
(18, 'B', 'GENERAL', 100, 'Rodriguez Gomez, Vicente'),
(19, 'A', 'GENERAL', 100, 'Rakshitta Ravi'),
(19, 'B', 'GENERAL', 100, 'Nieto Foresti, Julian'),
(20, 'A', 'GENERAL', 100, 'Ram Aravind L N'),
(20, 'B', 'GENERAL', 100, 'Saez Gabikagogeaskoa, Oscar'),
(21, 'A', 'GENERAL', 80, 'Fernandez Garcia, Gumersi'),
(21, 'B', 'GENERAL', 80, 'Garcia Bueno, Juan Pablo'),
(22, 'A', 'GENERAL', 80, 'Kuipers, Eelco'),
(22, 'B', 'GENERAL', 80, 'Izquierdo Carbellido, Pablo'),
(23, 'A', 'GENERAL', 80, 'Slagboom, Leandro'),
(23, 'B', 'GENERAL', 80, 'Roca Cruz, Rafael'),
(24, 'A', 'GENERAL', 80, 'Nurgaliyev, Sauat'),
(24, 'B', 'GENERAL', 80, 'Place, Nicholas'),
(25, 'A', 'GENERAL', 80, 'Ilinca Ilinca, Felix Anto'),
(25, 'B', 'GENERAL', 80, 'Fuster Aguilo, Joan');

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
