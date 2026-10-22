
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--

CREATE TABLE `compradores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `dirección` varchar(200) NOT NULL,
  `fecha_registo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compradores`
--

INSERT INTO `compradores` (`id`, `nombre`, `apellido`, `email`, `telefono`, `fecha_nacimiento`, `ciudad`, `dirección`, `fecha_registo`) VALUES
(1, 'alexis', 'salazar', 'ejemplo@gmai', '65235765434', '2025-08-06', 'choco', 'Morrillo', '2025-09-04 18:48:22'),
(2, 'alexis', 'salazar', 'ejemplo@gmai', '65235765434', '2025-08-06', 'choco', 'Morrillo', '2025-09-04 18:50:13'),
(3, 'alexis', 'salazar', 'ejemplo@gmai', '65235765434', '2025-08-06', 'choco', 'Morrillo', '2025-09-04 18:54:48'),
(4, 'alexis', 'salazar', 'ejemplo@gmai', '65235765434', '2025-08-06', 'choco', 'Morrillo', '2025-09-04 18:54:53'),
(5, 'alexis', 'salazar', 'ejemplo@gmai', '65235765434', '2025-08-06', 'choco', 'Morrillo', '2025-09-04 19:09:43'),
(6, 'alexis', 'salazar', 'ejemplo@gmai', '65235765434', '2025-08-06', 'choco', 'Morrillo', '2025-09-04 19:10:43'),
(7, '', '', '', '', '0000-00-00', '', '', '2025-09-04 19:40:49'),
(8, 'alexis', 'salazar', 'ejemplo@gmai', '65235765434', '2025-09-02', 'choco', 'Morrillo', '2025-09-04 19:41:50'),
(9, '', '', '', '', '0000-00-00', '', '', '2025-09-04 19:42:11'),
(10, 'id', 'salazar', 'ejemplo@gmai', '65235765434', '2025-09-10', 'choco', 'Morrillo', '2025-09-04 19:42:21'),
(11, '', '', '', '', '0000-00-00', '', '', '2025-09-04 20:17:10'),
(12, '', '', '', '', '0000-00-00', '', '', '2025-09-04 20:41:56'),
(13, 'Johny', 'Bravo', 'swdefs@gmail.com', '65235765434', '2025-09-16', 'choco', 'Morrillo', '2025-09-04 20:42:29'),
(14, '', '', '', '', '0000-00-00', '', '', '2025-09-16 19:33:26'),
(15, '', '', '', '', '0000-00-00', '', '', '2025-09-16 19:33:41'),
(16, '', '', '', '', '0000-00-00', '', '', '2025-09-16 19:40:04'),
(17, '', '', '', '', '0000-00-00', '', '', '2025-09-16 19:40:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `comprador_id` int(11) NOT NULL,
  `productos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`productos`)),
  `total` decimal(10,2) NOT NULL,
  `fecha_compra` timestamp NOT NULL DEFAULT current_timestamp(),
  `cantidad` varchar(200) NOT NULL,
  `precio` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compradores`
--
ALTER TABLE `compradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comprador_id` (`comprador_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compradores`
--
ALTER TABLE `compradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`comprador_id`) REFERENCES `compradores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE `usuario` (
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  Nombre varchar(20) NOT NULL,
  Apellidos varchar(30) NOT NULL,
  correo varchar(70) NOT NULL,
  clave varchar(80) NOT NULL,
  Pais varchar(30) NOT NULL,) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;
  