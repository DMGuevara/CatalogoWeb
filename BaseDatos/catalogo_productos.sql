-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2022 a las 03:53:32
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catalogo_productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(10) NOT NULL,
  `categoria_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_estado` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_descripcion`, `categoria_estado`) VALUES
(6, 'Smartphone', 'Telefonos inteligentes', 'Habilitada'),
(8, 'SmartWatch', 'Relojes inteligentes', 'Habilitada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `imagen_id` int(30) NOT NULL,
  `imagen_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`imagen_id`, `imagen_nombre`, `producto_id`) VALUES
(12, 'B0G5Y6S3T9-7-1.jpg', 7),
(13, 'Q4R7X4C3P6-7-2.jpg', 7),
(14, 'D3C9J1F7F2-7-3.jpg', 7),
(15, 'H8T0Q8H3D4-7-4.jpg', 7),
(16, 'O4T4C1T3D7-7-5.jpg', 7),
(17, 'C4W8Q4G4P5-8-1.jpg', 8),
(18, 'M8Z1M8V5I2-8-2.jpg', 8),
(19, 'D3N5G8U5V0-8-3.jpg', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(20) NOT NULL,
  `producto_codigo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_sku` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_descripcion` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_stock` int(10) NOT NULL,
  `producto_stock_minimo` int(10) NOT NULL,
  `producto_precio_compra` decimal(30,2) NOT NULL,
  `producto_precio_venta` decimal(30,2) NOT NULL,
  `producto_descuento` int(3) NOT NULL,
  `producto_tipo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_presentacion` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_marca` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_modelo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_estado` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_portada` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_sku`, `producto_nombre`, `producto_descripcion`, `producto_stock`, `producto_stock_minimo`, `producto_precio_compra`, `producto_precio_venta`, `producto_descuento`, `producto_tipo`, `producto_presentacion`, `producto_marca`, `producto_modelo`, `producto_estado`, `producto_portada`, `categoria_id`) VALUES
(7, '0123456789', '0123456789', 'Huawei GT 3 Smartwatch 2022 nuevo GPS Reloj inteligente de pista de oxígeno en la sangre', 'Reloj inteligente Xiaomi Huawei GT 3\r\nPista GPS, registra tu pista GPS, después de abrir la aplicación.\r\nPresión arterial, oxígeno en sangre, curva de frecuencia cardíaca dinámica.\r\nPodómetro calorías, monitorización del sueño, motor de vibración, recordatorio de despertador, rechazo de llamadas.\r\nContestación de llamadas, llamadas por Bluetooth, reproducción de música, levantar la mano para iluminar la pantalla.', 100, 10, '69.90', '80.99', 10, 'Fisico', 'Unidad', 'Huawei', 'GT 3', 'Habilitado', 'O6U2P0L8D4-1.jpg', 8),
(8, '9876543210', '9876543210', 'XIAOMI REDMI 10 Pro 128GB Doble Sim NOTE Desbloqueado de fábrica', 'Todos los teléfonos son nuevos. A veces, abrimos teléfonos de alto valor para tomar fotografías antes de enviarlos debido a las estafas que ocurren en eBay. Los teléfonos vienen con frecuencias 4g LTE. Sin embargo, también depende de su operador que lo admitan o no. Infórmate con tu operador\r\nTrabaja solo con gsm. Clientes de cdma, verifiquen la compatibilidad con su proveedor antes de comprar. Todos los servicios de prepago gsm, comuníquese con su proveedor de servicios para conocer la compatibilidad.', 100, 10, '245.99', '300.00', 10, 'Fisico', 'Unidad', 'XIAOMI', 'REDMI 10 Pro', 'Habilitado', 'O2T7C4D3L3-2.jpg', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(10) NOT NULL,
  `usuario_nombre` varchar(37) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_apellido` varchar(37) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_telefono` varchar(22) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_genero` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_cargo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_usuario` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_clave` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_cuenta_estado` varchar(17) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_foto` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_telefono`, `usuario_genero`, `usuario_cargo`, `usuario_usuario`, `usuario_email`, `usuario_clave`, `usuario_cuenta_estado`, `usuario_foto`) VALUES
(1, 'Administrador', 'Principal', '78622523', 'Femenino', 'Administrador', 'Administrador', 'admin@admin.com', 'K1hvdkhOR2hvQ1pzK2V1STJPaGlwQT09', 'Activa', 'Avatar_default_male.png'),
(2, 'David', 'Guevara', '79632443', 'Masculino', 'Administrador', 'DavidG', 'david@gmail.com', 'OEcyTVdDUUFhdWlYY1FBSFF2VEFHZz09', 'Activa', 'Avatar_default_male.png'),
(3, 'Romel', 'Gonzalez', '8941224354', 'Masculino', 'Cajero', 'Rommel', 'romel@gmail.com', 'KzJydTJZQ2toMUdLSHgyM3gxQmU5dz09', 'Activa', 'Avatar_Male_4.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`imagen_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `imagen_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
