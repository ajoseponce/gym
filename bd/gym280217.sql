-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2017 a las 19:43:34
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gym`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenido` text COLLATE utf8_unicode_ci NOT NULL,
  `categorias_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `descripcion`, `contenido`, `categorias_id`, `created_at`, `updated_at`) VALUES
(1, 'si bueno ', 'trivago', 1, '2016-10-04 03:00:00', '2016-10-04 03:00:00'),
(2, 'pelota', 'beuno no lo', 1, '2016-10-04 03:00:00', '2016-10-04 03:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_img`
--

CREATE TABLE `articulos_img` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `articulos_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_tag`
--

CREATE TABLE `articulos_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `articulo_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` enum('A','B') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'ppreuba de', 'A', '2016-10-03 03:00:00', '2016-10-03 03:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_10_03_142149_categorias', 1),
('2016_10_03_142824_articulos', 2),
('2016_10_03_160700_articulos_img', 2),
('2016_10_03_162559_tags', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `monto` double DEFAULT NULL,
  `dias_retraso` float DEFAULT NULL,
  `monto_incremento` float DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `nota` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `id_cliente`, `periodo`, `id_producto`, `monto`, `dias_retraso`, `monto_incremento`, `fecha_hora`, `usuario`, `nota`) VALUES
(1, 30, 2, 3, 600, NULL, NULL, '2017-02-03 22:33:10', 2, NULL),
(2, 49, 2, 3, 600, NULL, NULL, '2017-02-03 22:39:18', 2, NULL),
(3, 48, 2, 3, 600, NULL, NULL, '2017-02-03 22:43:26', 2, NULL),
(4, 47, 2, 1, 500, NULL, NULL, '2017-02-03 22:43:44', 2, NULL),
(5, 46, 2, 3, 600, NULL, NULL, '2017-02-03 22:43:58', 2, NULL),
(6, 25, 2, 3, 600, NULL, NULL, '2017-02-03 22:47:58', 2, NULL),
(7, 44, 2, 9, 500, NULL, NULL, '2017-02-03 22:49:11', 2, NULL),
(8, 15, 2, 27, 600, NULL, NULL, '2017-02-03 22:50:20', 2, NULL),
(9, 11, 2, 3, 600, NULL, NULL, '2017-02-03 22:53:00', 2, NULL),
(10, 19, 2, 3, 600, NULL, NULL, '2017-02-03 22:53:22', 2, NULL),
(11, 51, 2, 3, 600, NULL, NULL, '2017-02-03 22:57:51', 2, NULL),
(12, 52, 2, 3, 600, NULL, NULL, '2017-02-03 23:01:48', 2, NULL),
(13, 53, 2, 9, 500, NULL, NULL, '2017-02-03 23:09:48', 2, NULL),
(14, 54, 2, 9, 500, NULL, NULL, '2017-02-03 23:14:56', 2, NULL),
(15, 55, 2, 21, 800, NULL, NULL, '2017-02-03 23:21:43', 2, NULL),
(16, 56, 2, 7, 800, NULL, NULL, '2017-02-03 23:24:25', 2, NULL),
(17, 57, 2, 7, 800, NULL, NULL, '2017-02-03 23:25:50', 2, NULL),
(18, 58, 2, 3, 800, NULL, NULL, '2017-02-03 23:28:24', 2, NULL),
(19, 59, 2, 4, 800, NULL, NULL, '2017-02-03 23:38:17', 2, NULL),
(21, 32, 2, 3, 600, NULL, NULL, '2017-02-04 00:08:50', 2, NULL),
(22, 61, 1, 7, 400, NULL, NULL, '2017-02-04 00:16:59', 2, NULL),
(23, 62, 1, 7, 400, NULL, NULL, '2017-02-04 00:17:56', 2, NULL),
(24, 63, 1, 21, 800, NULL, NULL, '2017-02-04 00:20:57', 2, NULL),
(25, 64, 2, 27, 600, NULL, NULL, '2017-02-04 00:30:22', 2, NULL),
(26, 65, 1, 21, 800, NULL, NULL, '2017-02-04 00:32:07', 2, NULL),
(27, 66, 1, 3, 600, NULL, NULL, '2017-02-04 00:33:42', 2, NULL),
(28, 67, 1, 3, 600, NULL, NULL, '2017-02-04 00:34:46', 2, NULL),
(29, 68, 1, 3, 350, NULL, NULL, '2017-02-04 00:36:38', 2, NULL),
(30, 21, 1, 3, 350, NULL, NULL, '2017-02-04 00:37:23', 2, NULL),
(31, 10, 1, 1, 350, NULL, NULL, '2017-02-04 00:38:00', 2, NULL),
(32, 69, 1, 33, 1350, NULL, NULL, '2017-02-04 00:41:42', 2, NULL),
(33, 41, 1, 1, 350, NULL, NULL, '2017-02-04 00:42:21', 2, NULL),
(34, 70, 1, 29, 300, NULL, NULL, '2017-02-04 00:45:22', 2, NULL),
(35, 38, 1, 9, 500, NULL, NULL, '2017-02-04 00:46:34', 2, NULL),
(36, 71, 1, 3, 600, NULL, NULL, '2017-02-04 00:48:21', 2, NULL),
(37, 6, 1, 7, 350, NULL, NULL, '2017-02-04 00:49:22', 2, NULL),
(38, 75, 2, 3, 500, NULL, NULL, '2017-02-06 20:13:06', 2, NULL),
(39, 78, 2, 3, 600, NULL, NULL, '2017-02-06 20:27:00', 2, NULL),
(40, 80, 2, 27, 600, NULL, NULL, '2017-02-06 20:30:47', 2, NULL),
(41, 81, 2, 4, 700, NULL, NULL, '2017-02-06 20:31:50', 2, NULL),
(42, 82, 2, 4, 700, NULL, NULL, '2017-02-06 20:32:32', 2, NULL),
(43, 83, 2, 3, 600, NULL, NULL, '2017-02-06 20:33:28', 2, NULL),
(44, 84, 2, 3, 600, NULL, NULL, '2017-02-06 20:34:38', 2, NULL),
(45, 85, 2, 27, 600, NULL, NULL, '2017-02-06 20:35:35', 2, NULL),
(46, 86, 2, 1, 500, NULL, NULL, '2017-02-06 20:36:21', 2, NULL),
(47, 87, 2, 27, 600, NULL, NULL, '2017-02-06 20:37:14', 2, NULL),
(48, 88, 2, 3, 600, NULL, NULL, '2017-02-06 20:38:10', 2, NULL),
(49, 89, 2, 3, 600, NULL, NULL, '2017-02-06 20:39:01', 2, NULL),
(50, 90, 2, 3, 600, NULL, NULL, '2017-02-06 20:40:29', 2, '--'),
(51, 91, 2, 3, 600, NULL, NULL, '2017-02-06 20:42:03', 2, '--'),
(52, 92, 2, 3, 600, NULL, NULL, '2017-02-06 20:42:33', 2, '--'),
(53, 93, 2, 1, 500, NULL, NULL, '2017-02-06 20:43:30', 2, '--'),
(54, 94, 2, 7, 700, NULL, NULL, '2017-02-06 20:44:22', 2, '--'),
(55, 7, 2, 5, 700, NULL, NULL, '2017-02-06 20:46:54', 2, '--'),
(56, 96, 2, 27, 500, NULL, NULL, '2017-02-06 20:58:36', 2, 'promo familia monstenger'),
(57, 74, 2, 3, 500, NULL, NULL, '2017-02-06 20:59:59', 2, 'PROMO'),
(58, 76, 2, 3, 600, NULL, NULL, '2017-02-06 21:09:01', 2, NULL),
(59, 98, 2, 3, 600, NULL, NULL, '2017-02-06 21:19:11', 2, '-'),
(60, 99, 2, 3, 600, NULL, NULL, '2017-02-06 21:19:56', 2, '--'),
(61, 100, 2, 9, 500, NULL, NULL, '2017-02-07 15:21:43', 2, 'promo 2x1 mes de febrero'),
(62, 101, 2, 9, 500, NULL, NULL, '2017-02-07 15:22:27', 2, 'promo 2x1'),
(63, 102, 2, 9, 500, NULL, NULL, '2017-02-07 15:23:03', 2, 'promo 2x1'),
(64, 40, 2, 1, 500, NULL, NULL, '2017-02-07 17:56:35', 2, '18hs'),
(65, 105, 2, 1, 100, NULL, NULL, '2017-02-07 19:09:45', 2, 'promo dos por uno '),
(66, 106, 2, 1, 250, NULL, NULL, '2017-02-07 19:11:05', 2, 'promo 2x1'),
(67, 108, 2, 1, 400, NULL, NULL, '2017-02-07 19:52:41', 2, 'completa pago de prueba'),
(68, 107, 2, 1, 400, NULL, NULL, '2017-02-07 19:58:25', 2, 'parte del pago de la seña'),
(69, 110, 2, 8, 800, NULL, NULL, '2017-02-07 20:14:06', 2, NULL),
(70, 111, 2, 18, 500, NULL, NULL, '2017-02-07 21:01:08', 2, 'viene con la hija a zumba'),
(71, 112, 2, 3, 600, NULL, NULL, '2017-02-08 15:25:58', 2, NULL),
(72, 114, 2, 4, 700, NULL, NULL, '2017-02-08 15:29:29', 2, NULL),
(73, 115, 2, 31, 1275, NULL, NULL, '2017-02-08 15:55:56', 2, 'grupo yaguarete alumna de ale'),
(74, 120, 2, 3, 500, NULL, NULL, '2017-02-08 16:15:46', 2, 'promo familiar con ricotti beatris y vanina deloreti'),
(75, 119, 2, 3, 500, NULL, NULL, '2017-02-08 16:16:27', 2, 'promo familiar con beatriz rocoti y lara loretti'),
(76, 118, 2, 3, 500, NULL, NULL, '2017-02-08 16:16:50', 2, 'promo familiar'),
(77, 122, 2, 3, 600, NULL, NULL, '2017-02-08 17:57:13', 2, NULL),
(78, 123, 2, 3, 600, NULL, NULL, '2017-02-08 19:02:36', 2, NULL),
(79, 113, 2, 4, 800, NULL, NULL, '2017-02-08 19:04:10', 2, NULL),
(80, 124, 2, 3, 600, NULL, NULL, '2017-02-08 19:04:56', 2, NULL),
(81, 121, 2, 3, 600, NULL, NULL, '2017-02-08 20:16:29', 2, NULL),
(82, 128, 2, 3, 600, NULL, NULL, '2017-02-08 20:19:24', 2, NULL),
(83, 127, 2, 3, 600, NULL, NULL, '2017-02-08 20:21:30', 2, NULL),
(84, 129, 2, 3, 600, NULL, NULL, '2017-02-08 20:22:45', 2, NULL),
(85, 130, 2, 1, 500, NULL, NULL, '2017-02-08 20:25:29', 2, NULL),
(86, 131, 2, 10, 600, NULL, NULL, '2017-02-08 21:01:53', 2, NULL),
(87, 132, 2, 10, 600, NULL, NULL, '2017-02-08 21:03:40', 2, NULL),
(88, 133, 2, 3, 600, NULL, NULL, '2017-02-08 21:08:23', 2, NULL),
(89, 134, 2, 1, 500, NULL, NULL, '2017-02-08 21:12:53', 2, NULL),
(90, 135, 2, 1, 500, NULL, NULL, '2017-02-08 21:16:36', 2, NULL),
(91, 137, 2, 9, 250, NULL, NULL, '2017-02-09 15:12:21', 2, 'promo con maldonado'),
(92, 138, 2, 9, 250, NULL, NULL, '2017-02-09 15:15:13', 2, 'promo dos por uno con perie nelida'),
(93, 105, 2, 1, 400, NULL, NULL, '2017-02-09 17:25:11', 2, 'parte de pago de la seña'),
(94, 106, 2, 1, 250, NULL, NULL, '2017-02-09 18:02:12', 2, NULL),
(95, 13, 2, 5, 700, NULL, NULL, '2017-02-09 19:11:45', 2, NULL),
(96, 139, 2, 3, 600, NULL, NULL, '2017-02-09 19:13:02', 2, NULL),
(97, 140, 2, 9, 250, NULL, NULL, '2017-02-09 20:21:13', 2, 'promo 2x1'),
(98, 141, 2, 9, 250, NULL, NULL, '2017-02-09 20:21:32', 2, 'promo 2x1'),
(99, 142, 2, 10, 700, NULL, NULL, '2017-02-09 20:24:23', 2, 'cardio jump todos los dias'),
(100, 143, 2, 10, 700, NULL, NULL, '2017-02-09 20:25:35', 2, 'cardio jump todos los dias'),
(101, 144, 2, 9, 250, NULL, NULL, '2017-02-09 20:27:12', 2, 'promo 2x1'),
(102, 145, 2, 9, 250, NULL, NULL, '2017-02-09 20:28:52', 2, 'promo 2x1'),
(103, 146, 2, 18, 250, NULL, NULL, '2017-02-09 21:08:14', 2, 'promo 2x1'),
(104, 147, 2, 18, 250, NULL, NULL, '2017-02-09 21:09:19', 2, 'promo2x1'),
(105, 38, 2, 9, 500, NULL, NULL, '2017-02-09 21:27:02', 2, NULL),
(106, 148, 2, 9, 500, NULL, NULL, '2017-02-09 21:29:59', 2, NULL),
(107, 149, 2, 9, 500, NULL, NULL, '2017-02-09 22:14:06', 2, 'pedir dni y datos'),
(108, 150, 2, 4, 800, NULL, NULL, '2017-02-10 15:54:58', 2, NULL),
(109, 151, 2, 3, 100, NULL, NULL, '2017-02-10 15:56:29', 2, 'paga prueba funcional '),
(110, 159, 2, 33, 630, NULL, NULL, '2017-02-10 18:49:47', 2, 'yaguarete'),
(111, 160, 2, 32, 540, NULL, NULL, '2017-02-10 18:50:13', 2, 'yaguarete'),
(112, 161, 2, 3, 540, NULL, NULL, '2017-02-10 18:51:27', 2, 'yaguarete'),
(113, 162, 2, 5, 1350, NULL, NULL, '2017-02-10 18:52:13', 2, 'yaguarete'),
(114, 163, 2, 8, 1350, NULL, NULL, '2017-02-10 18:52:38', 2, 'yaguarete'),
(115, 164, 2, 1, 775, NULL, NULL, '2017-02-10 18:53:04', 2, 'yaguarete'),
(116, 28, 2, 3, 600, NULL, NULL, '2017-02-13 14:04:51', 65, NULL),
(117, 151, 2, 3, 500, NULL, NULL, '2017-02-13 14:05:51', 65, 'completo la cuota de prueba'),
(118, 152, 2, 5, 800, NULL, NULL, '2017-02-13 14:12:10', 65, NULL),
(119, 166, 2, 3, 600, NULL, NULL, '2017-02-13 16:09:55', 65, 'FUNCIONAL 16HS'),
(120, 167, 2, 3, 600, NULL, NULL, '2017-02-13 16:11:13', 65, 'FUNCIONAL 16HS'),
(121, 126, 2, 3, 600, NULL, NULL, '2017-02-13 18:06:58', 65, NULL),
(122, 168, 2, 3, 600, NULL, NULL, '2017-02-13 18:08:05', 65, NULL),
(123, 169, 2, 3, 600, NULL, NULL, '2017-02-13 18:08:56', 65, NULL),
(124, 170, 2, 3, 600, NULL, NULL, '2017-02-13 19:29:06', 65, NULL),
(125, 39, 2, 3, 600, NULL, NULL, '2017-02-13 19:29:40', 65, NULL),
(126, 125, 2, 3, 600, NULL, NULL, '2017-02-13 19:30:01', 65, NULL),
(127, 24, 2, 13, 1500, NULL, NULL, '2017-02-13 20:02:03', 65, NULL),
(128, 171, 2, 3, 600, NULL, NULL, '2017-02-13 21:06:39', 65, NULL),
(129, 172, 2, 3, 600, NULL, NULL, '2017-02-13 21:07:37', 65, NULL),
(130, 173, 2, 7, 700, NULL, NULL, '2017-02-14 15:59:04', 2, 'entrena turno mañana con profe jorge'),
(131, 174, 2, 3, 600, NULL, NULL, '2017-02-14 18:32:02', 2, '19 hs'),
(132, 175, 2, 1, 250, NULL, NULL, '2017-02-14 18:55:04', 2, NULL),
(133, 176, 2, 5, 500, NULL, NULL, '2017-02-14 18:59:09', 2, 'este mes viene martes y jueves'),
(134, 26, 2, 3, 600, NULL, NULL, '2017-02-14 19:07:09', 2, NULL),
(135, 8, 2, 9, 500, NULL, NULL, '2017-02-14 19:52:54', 2, NULL),
(136, 177, 2, 28, 250, NULL, NULL, '2017-02-14 21:03:01', 2, 'promocion 2x1'),
(137, 178, 2, 28, 250, NULL, NULL, '2017-02-14 21:05:35', 2, 'promo2x1'),
(138, 179, 2, 3, 600, NULL, NULL, '2017-02-15 15:11:04', 2, NULL),
(139, 180, 2, 7, 800, NULL, NULL, '2017-02-15 15:12:41', 2, 'DEPORTIVO TURNO MAÑANA'),
(140, 181, 2, 7, 800, NULL, NULL, '2017-02-15 15:13:33', 2, 'Deportivo turno mañana'),
(141, 182, 2, 3, 600, NULL, NULL, '2017-02-15 16:35:06', 2, NULL),
(142, 183, 2, 3, 600, NULL, NULL, '2017-02-15 20:07:26', 2, NULL),
(143, 184, 2, 10, 600, NULL, NULL, '2017-02-15 20:59:38', 2, NULL),
(144, 185, 2, 9, 500, NULL, NULL, '2017-02-16 19:55:58', 2, NULL),
(145, 186, 2, 3, 100, NULL, NULL, '2017-02-17 15:43:10', 65, 'clase de prueba 14hs con luciana'),
(146, 187, 2, 3, 300, NULL, NULL, '2017-02-17 15:44:04', 65, 'medios mes'),
(147, 188, 2, 3, 600, NULL, NULL, '2017-02-17 20:07:23', 65, NULL),
(148, 58, 2, 3, 100, NULL, NULL, '2017-02-17 21:04:08', 65, 'completa 100 de socio cekym 2 actividades\n'),
(149, 186, 2, 3, 500, NULL, NULL, '2017-02-20 15:12:03', 65, ' COMPLETA PAGO DE PRUEBA'),
(150, 189, 2, 7, 800, NULL, NULL, '2017-02-20 15:13:21', 65, NULL),
(151, 190, 2, 19, 550, NULL, NULL, '2017-02-20 16:26:55', 65, 'GAP 15HS'),
(152, 191, 2, 7, 700, NULL, NULL, '2017-02-20 21:08:33', 65, 'con ale 18hs'),
(153, 192, 2, 10, 300, NULL, NULL, '2017-02-20 21:09:29', 65, 'medio mes'),
(154, 193, 2, 17, 550, NULL, NULL, '2017-02-20 21:12:47', 65, NULL),
(155, 194, 2, 1, 500, NULL, NULL, '2017-02-21 19:15:55', 2, NULL),
(156, 196, 2, 17, 550, NULL, NULL, '2017-02-22 15:06:37', 2, NULL),
(157, 197, 2, 3, 100, NULL, NULL, '2017-02-22 17:08:51', 2, 'clase de prueba 17hs'),
(158, 198, 2, 3, 100, NULL, NULL, '2017-02-22 17:12:32', 2, 'clase de prueba 17hs'),
(159, 199, 2, 3, 100, NULL, NULL, '2017-02-22 17:13:47', 2, 'clase de prueba 17hs'),
(160, 200, 2, 16, 480, NULL, NULL, '2017-02-22 20:02:47', 2, 'dos veces por semana'),
(161, 201, 2, 13, 400, NULL, NULL, '2017-02-22 20:04:42', 2, 'personalizado de ale ortiz'),
(162, 202, 2, 16, 300, NULL, NULL, '2017-02-22 21:05:00', 2, 'parte de pago gap'),
(163, 204, 2, 3, 300, NULL, NULL, '2017-02-24 17:18:40', 2, 'promo 2x1'),
(164, 203, 2, 3, 300, NULL, NULL, '2017-02-24 17:19:00', 2, 'promo 2x1'),
(165, 205, 2, 3, 600, NULL, NULL, '2017-02-24 20:05:01', 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(10) NOT NULL COMMENT 'Identificador de la persona en el dominio.',
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '' COMMENT 'Primer nombre de la persona.',
  `onombre` varchar(30) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Otros nombres de la persona.',
  `apellido` varchar(40) CHARACTER SET latin1 NOT NULL DEFAULT '' COMMENT 'Apellido de soltero de la persona.',
  `oapellido` varchar(25) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Otros apellidos de la persona.',
  `dni` varchar(10) DEFAULT NULL,
  `cuil` varchar(100) DEFAULT NULL,
  `localidad` varchar(100) DEFAULT NULL,
  `art` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT '0000-00-00' COMMENT 'Fecha de nacimiento de la persona.',
  `sexo` char(1) CHARACTER SET latin1 DEFAULT '' COMMENT 'Codigo, sera seleccionado de la tabla persona_sexo.',
  `domicilio` varchar(80) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Calle donde vive la persona.',
  `domicilio_dni` varchar(100) DEFAULT NULL,
  `ocupacion` varchar(100) DEFAULT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `pais_nacimiento` char(2) CHARACTER SET latin1 DEFAULT '' COMMENT 'Id pais. Sera seleccionado de la tabla pais.',
  `telefono_particular` varchar(30) CHARACTER SET latin1 DEFAULT '0' COMMENT 'Numero telefonico particular de la persona.',
  `telefono_celular` varchar(30) CHARACTER SET latin1 DEFAULT '0' COMMENT 'Numero telefonico del celular de la persona.',
  `telefono_celular2` int(20) DEFAULT NULL,
  `mail` varchar(250) DEFAULT NULL,
  `jornada` text,
  `antiguedad` text,
  `cod_estado` char(5) CHARACTER SET latin1 NOT NULL DEFAULT 'A' COMMENT 'Id estado. Sera seleccionado de la tabla persona_estado.',
  `usuario` int(10) UNSIGNED ZEROFILL NOT NULL DEFAULT '0000000000' COMMENT 'Identificador del usuario que efectua el alta, la modificacion o la baja del registro. Ref. tabla, usuario_datos_generales.',
  `fecha_alta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Guarda la fecha en la que se produjo el alta del registro.',
  `fecha_ultima_modificacion` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'Guarda la fecha en la que se produjo la ultima modificacion sobre el registro.',
  `id_dominio` int(11) DEFAULT '1',
  `id_proviene` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='personas.; InnoDB free: 11264 kB; (`cod_estado`) REFE' ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `nombre`, `onombre`, `apellido`, `oapellido`, `dni`, `cuil`, `localidad`, `art`, `fecha_nacimiento`, `sexo`, `domicilio`, `domicilio_dni`, `ocupacion`, `empresa`, `rol`, `pais_nacimiento`, `telefono_particular`, `telefono_celular`, `telefono_celular2`, `mail`, `jornada`, `antiguedad`, `cod_estado`, `usuario`, `fecha_alta`, `fecha_ultima_modificacion`, `id_dominio`, `id_proviene`) VALUES
(3, 'jose', NULL, 'Ponce', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(4, 'Yanina', NULL, 'Terreni', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(5, 'Loriana', NULL, 'Morgenstern', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 210527', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(6, 'Marcelo', NULL, ' Zembruski', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154-560926', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(8, 'Tamara', NULL, 'Acosta', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 680946', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(9, 'Maria  Clara', NULL, 'Acuña', NULL, '13732498', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(10, 'Maria de rosario', NULL, 'Acuña', NULL, '44226674', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 621006', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(11, 'Lucrecia', NULL, 'Pernigotti', NULL, '34826330', NULL, NULL, NULL, '1991-06-26', NULL, NULL, 'FELIX DE AZARA 1663', NULL, NULL, NULL, NULL, NULL, '154 206215', NULL, 'LUCRECIA.PERNIGOTTI@GMEIL.COM', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(12, 'Daniela', NULL, 'Aguilar', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(13, 'Gabriela', NULL, 'Alonso', NULL, '27981971', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764821372', NULL, 'administracion@ecomadera.com.ar', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(14, 'Mariela', NULL, 'Alvarenga', NULL, '26286082', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 281094', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(15, 'Sofia', NULL, 'Gonzales', NULL, '33687870', NULL, NULL, NULL, '1988-07-05', NULL, NULL, 'CHACRA 107 CASA 71', NULL, NULL, NULL, NULL, NULL, '154 646322', NULL, 'SOFIA0588@HOTMAIL.COM', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(16, 'Veronica', NULL, 'Arotcharen', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000001, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(17, 'Ricardo', NULL, 'Rodriguez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000001, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(18, 'Susana', NULL, 'Amarilla', NULL, '20815253', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154397568', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(19, 'Valeria', NULL, 'Andrusyzsyn  ', NULL, '30790419', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 169818', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(20, 'Cecilia', NULL, 'Aquino', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(21, 'Monica', NULL, 'Barrera', NULL, '17441610', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 634688', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(23, ' Daniela', NULL, 'Barrionuevo', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(24, 'Manuel', NULL, 'Beltrami', NULL, '32329747', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764636965', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(25, 'Florencia', NULL, 'Defilippi', NULL, '33735212', NULL, NULL, NULL, '1988-05-13', NULL, NULL, 'ROQUE SAENZ PEÑA 2506', NULL, NULL, NULL, NULL, NULL, '154 140245', NULL, 'FLORENCIA DEFILIPPI@GMEIL.COM', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(26, ' Mariana', NULL, 'Barrio', NULL, '27488182', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(27, 'Mariela', NULL, 'Bertoni', NULL, '27488182', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154634745', NULL, 'marbertoni@hotmail.com', NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(28, 'Florencia', NULL, 'Caceres', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(29, ' Adriana', NULL, 'Campos', NULL, '95177528', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3794895616', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(30, 'Kiara', NULL, 'Canteros', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(31, ' Dario', NULL, 'Caranbri', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(32, 'Laura', NULL, 'Cibils', NULL, '28169382', NULL, NULL, NULL, '1980-05-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154695075', NULL, 'mlcibils@yahoo.com.ar', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(33, 'Mirian', NULL, 'Comparin', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(34, ' Mariana', NULL, 'Compes', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(35, 'Viviana', NULL, 'Conde', NULL, '17039611', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764224496', NULL, NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(36, 'Dora', NULL, 'Dominguez', NULL, '24509105', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 323239', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(37, 'Romina', NULL, 'Coronel', NULL, '27918984', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 674975', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(38, 'Sabrina', NULL, 'Correa', NULL, '34829257', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764906951', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(39, 'Josefina', NULL, 'Escalada', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(40, 'Martita', NULL, 'Escalada', NULL, '5163691', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4424977', NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(41, 'Nadia', NULL, 'Estaciuk', NULL, '44072764', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 785049', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(42, 'Patricia', NULL, 'Fernandez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4544815', '154311913', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(43, 'Maria alejandra', NULL, 'Olexen', NULL, '27800009', NULL, NULL, NULL, '1979-11-14', NULL, NULL, 'BENAVIDES 1120', NULL, NULL, NULL, NULL, NULL, '154 671417', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(44, 'Vanesa', NULL, 'Florentin', NULL, '29658683', NULL, NULL, NULL, '1982-11-29', NULL, NULL, 'URUGUAY', NULL, NULL, NULL, NULL, NULL, '154 904134', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(45, ' Fanny', NULL, 'Figari', NULL, '32330014', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 252780', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(46, 'Silvia', NULL, 'Gonzales', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(47, 'Yenhy', NULL, 'Diaz', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(48, 'Laura', NULL, 'Ostachu', NULL, '20460754', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 626346', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(49, 'Rita', NULL, 'Figueredo', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(50, 'Cristian', NULL, 'Pedersen', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(51, 'Carla', NULL, 'Lopez', NULL, '31911644', NULL, NULL, NULL, '1985-12-11', NULL, NULL, 'BLAS PARERA 2579 2b', NULL, NULL, NULL, NULL, NULL, '3764867241', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(52, 'Catalina', NULL, 'Spaciuk', NULL, '35487104', NULL, NULL, NULL, '1992-10-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764685020', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(53, 'Silvana', NULL, 'Kruk', NULL, '24174783', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 662536', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(54, 'Gabriela', NULL, 'Karaben', NULL, '30165051', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 293397', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(55, 'Sebastian', NULL, 'Lampertti', NULL, '25236786', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 437636', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(56, 'Sebastian', NULL, 'Gonzales Molina', NULL, '24600087', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 684104', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(57, 'Mariano', NULL, 'Kitegroski', NULL, '32036053', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 600374', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(58, 'Sandra', NULL, 'Boyesuk', NULL, '27841986', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764701563', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(59, 'Doris', NULL, 'Manfredini', NULL, '5818603', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4425805', '154-549771 ', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(60, 'Carolina', NULL, 'Repeto', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(61, 'Hernan', NULL, 'Gimenez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(62, 'Jorge', NULL, 'Rodriguez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(63, 'Carolina', NULL, 'Kohen', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(64, 'Natalia', NULL, 'Llamosa', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(65, 'Lourdes', NULL, 'Siller', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(66, 'Debora', NULL, 'Rocha', NULL, '24398754', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 509900', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(67, 'Maria', NULL, 'Saggin', NULL, '26871921', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 284927', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(68, 'Cecilia', NULL, 'Torresi', NULL, '14893620', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 290331', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(69, 'Fabian', NULL, 'Benitez', NULL, '28403899', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 698822', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(70, 'Valentina', NULL, 'Gonzales', NULL, '43339985', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154 224496', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(71, 'Mariana', NULL, 'Matin', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(73, 'Celene', NULL, 'Morgenstern', NULL, '44011794', NULL, NULL, NULL, '0000-00-00', NULL, NULL, 'Las azaleas  y san cayetano garupa misiones', NULL, NULL, NULL, NULL, NULL, '3764730958', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(74, 'Paola', NULL, 'Morgenstern', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, 'Las azaleas  y san cayetano garupa misiones', NULL, NULL, NULL, NULL, NULL, '3764730958', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(75, 'Milena', NULL, 'Morgenstern', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, 'Las azaleas  y san cayetano garupa misiones', NULL, NULL, NULL, NULL, NULL, '3764730958', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(76, 'Cristina', NULL, 'Larumbe ', NULL, '34018402', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764950842', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(77, 'Jessica', NULL, 'Duarte Kunrath', NULL, '30845245', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764684849', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(78, 'Andrea', NULL, 'Gimenez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(79, 'Laura', NULL, 'Jara', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(80, 'FLORENCIA', NULL, 'preguntar vero', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(81, 'Sanchez', NULL, 'Delia', NULL, '6382679', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764696401', NULL, 'deliasanchez1945@hotmail.com', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(82, 'Cibils', NULL, 'Delia', NULL, '22488533', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764696401', NULL, 'deliacibils@gmail.com', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(83, 'Alejandra', NULL, 'Samuel', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(84, 'Analia', NULL, 'Martinez', NULL, '10476173', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '376423001', NULL, 'analiasmartinez@kive.com.ar', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(85, 'Romina', NULL, 'Canteros', NULL, '27488217', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154676797', NULL, 'rominacantero@gmail.com', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(86, 'Micaela', NULL, 'Tesoreiro', NULL, '30790310', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154251053', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(87, 'Maira', NULL, 'Cambas', NULL, '24509245', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764641113', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(88, 'Monica', NULL, 'Pereira', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(89, 'Cecilia', NULL, 'Carreci', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(90, 'Belen', NULL, 'Briñocoli', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(91, 'Marcelo', NULL, 'Mercado', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(92, 'Karina', NULL, 'Ortiz', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(93, 'Vanesa', NULL, 'Krawczuck', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(94, 'Federico', NULL, 'Dominguez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(95, 'Carolina', NULL, 'Abrazian', NULL, '18245281', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764203072', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(96, 'Micaela', NULL, 'Martinez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(97, 'Paola', NULL, 'Martinez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, 'Las azaleas  y san cayetano garupa misiones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(98, 'Violeta', NULL, 'Nestor', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(99, 'Soledad', NULL, 'Roa', NULL, '33687846', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154-871361', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(100, 'Mariela', NULL, 'Galarza', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(101, 'Liliana', NULL, 'Rodriguez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(102, 'Fabiana', NULL, 'Perie', NULL, '13444859', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764681687', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(103, 'Claudio', NULL, 'Kang', NULL, '92748223', NULL, NULL, NULL, '0000-00-00', NULL, NULL, 'córdoba 2035', NULL, NULL, NULL, NULL, NULL, '01167906854', NULL, 'klaudio85@hotmail.com', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(104, 'Sonia', NULL, 'Velazque', NULL, '31573054', NULL, NULL, NULL, '1985-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154211439', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(105, 'Marieanela', NULL, 'Zdanowiz', NULL, '32851399', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3758154', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(106, 'Claudia', NULL, 'Marelli', NULL, '14826519', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764572636', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(107, 'Graciela', NULL, 'Cardozo', NULL, '16839309', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764332649', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(108, 'Viviana', NULL, 'Veler', NULL, '24721190', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764336891', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(109, 'Agustina', NULL, 'Pezuk', NULL, '37220498', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3751418750', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(110, 'Barbara', NULL, 'Rojas', NULL, '31110036', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154699868', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(111, 'Gina', NULL, 'Susini', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(112, 'Andrea', NULL, 'Libutti', NULL, '18308631', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764131467', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(113, 'Enrique', NULL, 'Parra', NULL, '31110036', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764652855', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(114, 'Vilma', NULL, 'Gomez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(115, 'Clarice', NULL, 'Cardozo', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(116, 'Fernanda', NULL, 'Rodriguez', NULL, '26754848', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764104747', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(117, 'Carla', NULL, 'Rodriguez', NULL, '30935239', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764115341', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(118, 'Beatriz', NULL, 'Ricuti', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(119, 'Vanina', NULL, 'Diloteri', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(120, 'Lara', NULL, 'Loretto', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(121, 'Agustin', NULL, 'Coent', NULL, '34367153', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764890008', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(122, 'Eugenia', NULL, 'Venialgo', NULL, '33377264', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764288835', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(123, 'Cecilia', NULL, 'Canela', NULL, '30725892', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764256943', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(124, 'Maria jose', NULL, 'Dachary', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(125, 'Natalia', NULL, 'Geisser ', NULL, '26984305', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764876457', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(126, 'Irupe', NULL, 'Ros ', NULL, '32329779', NULL, NULL, NULL, '0000-00-00', NULL, NULL, 'ROQUE SAENZ PEÑA 2214 8A', NULL, NULL, NULL, NULL, NULL, '3764699146', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(127, 'Florencia', NULL, 'Saucedo', NULL, '30005332', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764233105', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(128, 'Veronica', NULL, 'Gonzales', NULL, '24573597', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764600080', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(129, 'Joana', NULL, 'Schenkel ', NULL, '34149149', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764100794', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(130, 'Maria', NULL, 'Tibowa', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(131, 'Guillermina', NULL, 'Arrizabalga', NULL, '38265947', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '221153045039', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(132, 'Agustina', NULL, 'Arrizabalga', NULL, '36649373', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764358206', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(133, 'Daiana', NULL, 'Pozzi', NULL, '30959150', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764578062', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(134, 'Belen', NULL, 'Vedoya', NULL, '34447344', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764672612', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(135, 'Florencia', NULL, 'Eskinazi', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(136, 'Laura', NULL, 'Baldasino', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(137, 'Nelida', NULL, 'Perie', NULL, '16897901', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764607979', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(138, 'Natalia', NULL, 'Maldonado', NULL, '31786721', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764250307', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(139, 'Maria Jose', NULL, 'Aire ', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(140, 'Sofia', NULL, 'Hrenessen ', NULL, '37473334', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764628073', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(141, 'Rocio', NULL, 'Iurinic', NULL, '38187861', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3755448496', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(142, 'Graciela', NULL, 'Santia', NULL, '29441895', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764231177', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(143, 'Daiana', NULL, 'Santia', NULL, '32228109', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764246623', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(144, 'Anabella', NULL, 'Telechea', NULL, '41017739', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764658439', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(145, 'Selene', NULL, 'Carbonell', NULL, '38325309', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764686138', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(146, 'Vanesa', NULL, 'Galeano', NULL, '28017681', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764681555', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(147, 'Nora', NULL, 'Estigambia', NULL, '13005857', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764628579', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(148, 'Veronica', NULL, 'Sosa', NULL, '33727249', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764727249', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(149, 'Teresa', NULL, 'Centurion', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 8),
(150, 'Vanesa', NULL, 'Benitez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(151, 'Salome', NULL, 'Monzon', NULL, '33687893', NULL, NULL, NULL, '0000-00-00', NULL, NULL, 'av roque saenz peña 1572', NULL, NULL, NULL, NULL, NULL, '3764365939', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3),
(152, 'Makarena', NULL, 'Piarschi', NULL, '38137758', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3743414363', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(153, 'Sergio', NULL, 'Velazquez ', NULL, '22427780', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764729553', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(154, 'Mirian', NULL, 'Comparin', NULL, '16123077', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764649748', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(155, 'Lurdes', NULL, 'Aguado', NULL, '23675181', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764677817', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(156, 'Liliana', NULL, 'Pereira', NULL, '23545949', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01133982991', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(157, 'Fernando', NULL, 'Benitez', NULL, '35005784', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764620584', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(158, 'Adriana', NULL, 'preguntar a katy', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3786451888', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(159, 'Graciela', NULL, 'Gimenez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(160, 'Antonella', NULL, 'Gimenez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(161, 'Lionela', NULL, 'Zacharuk', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(162, 'Pedro', NULL, 'Zacharuk', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(163, 'Elizabeth', NULL, 'Gimenez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(164, 'Maria jose', NULL, 'Hadad', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(165, 'Florencia', NULL, 'Caceres', NULL, '31377711', NULL, NULL, NULL, '0000-00-00', NULL, NULL, 'bolivar 1450 11A', NULL, NULL, NULL, NULL, NULL, '3764384741', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3),
(166, 'Vanella', NULL, 'Laszlo', NULL, '46729698', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764661151', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(167, 'Valeria', NULL, 'Rivero Rey', NULL, '46300797', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764194703', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(168, 'Evelyng', NULL, 'Elias', NULL, '25207054', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764379886', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(169, 'Vanella', NULL, 'Lazlo ', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(170, 'Agustina', NULL, 'Gimenez', NULL, '35825564', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3794407048', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(171, 'Lara', NULL, 'Martinez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(172, 'Suyen', NULL, 'Martinez', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(173, 'Martin', NULL, 'Choi', NULL, '32536465', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '111530158420', NULL, 'wisexist@gmail.com', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(174, 'Silva', NULL, 'Figueredo', NULL, '28162713', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764521637', NULL, 'carofigueredo@hotmail.com', NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(175, 'Viviana', NULL, 'Brazda', NULL, '29813832', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764818993', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(176, 'Vanesa', NULL, 'Molina', NULL, '24143379', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764323746', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(177, 'Juan Cruz', NULL, 'Almiron', NULL, '39042526', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764149080', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(178, 'Alexis', NULL, 'Hiranda', NULL, '34447703', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764210478', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(179, 'Maria jose', NULL, 'Fenacchio', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(180, 'Daniel', NULL, 'Robles', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(181, 'mama....', NULL, 'Robles', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(182, 'Valeria', NULL, 'Balbi', NULL, '30255009', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764608736', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(183, 'Carolina', NULL, 'Isaac', NULL, '26564156', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764270022', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(184, 'Sofia', NULL, 'Valenzuela', NULL, '39252980', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764677039', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(185, 'Valeria', NULL, 'Ferreyra', NULL, '29241897', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764928085', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(186, 'Patricia', NULL, 'Vila', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764563005', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(187, 'Yamil', NULL, 'Vitale', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(188, 'Cintia', NULL, 'Gutlember', NULL, '31110567', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764716705', NULL, NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(189, 'Lautaro', NULL, 'Maroni', NULL, '40378966', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764389879', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(190, 'Jessica', NULL, 'Gauna', NULL, '35004595', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764124143', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(191, 'Horacio', NULL, 'Caballero', NULL, '24509093', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764156441', NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(192, 'Liliana', NULL, 'Pasecznik', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(193, 'Paula', NULL, 'Del puerto', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000065, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(194, 'Elvira', NULL, 'Fleitas', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764801241', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(195, 'Hernan', NULL, 'Gonzales', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3765086744', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(196, 'Nabila', NULL, 'Robin', NULL, '3559054', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764390996', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(197, 'Camila', NULL, 'Lezcano', NULL, '12668180', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764802826', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(198, 'Ana Paula', NULL, 'Ayala', NULL, '37584009', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764177600', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(199, 'Carla', NULL, 'Lezcano', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(200, 'Laura', NULL, 'Leiva', NULL, '29210946', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764323843', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(201, 'Maria', NULL, 'Barrios', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764664046', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(202, 'Maria', NULL, 'Vicenti', NULL, '34478283', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764679290', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(203, 'Liliana', NULL, 'Yakubur ', NULL, '27526883', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764857829', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(204, 'Karina', NULL, 'Galeano', NULL, '27847202', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764657303', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(205, 'Leticia', NULL, 'Novau', NULL, '30220070', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764608560', NULL, NULL, NULL, NULL, 'A', 0000000002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_dias`
--

CREATE TABLE `personas_dias` (
  `id_persona_dias` int(5) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `lunes` enum('S','N') DEFAULT 'N',
  `martes` enum('S','N') DEFAULT 'N',
  `miercoles` enum('S','N') DEFAULT 'N',
  `jueves` enum('S','N') DEFAULT 'N',
  `viernes` enum('S','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas_dias`
--

INSERT INTO `personas_dias` (`id_persona_dias`, `id_persona`, `lunes`, `martes`, `miercoles`, `jueves`, `viernes`) VALUES
(1, 3, 'S', 'S', NULL, NULL, NULL),
(2, 4, NULL, NULL, 'S', NULL, NULL),
(3, 5, NULL, 'S', NULL, 'S', NULL),
(4, 6, 'S', NULL, 'S', NULL, 'S'),
(6, 8, NULL, 'S', NULL, 'S', NULL),
(7, 9, NULL, NULL, 'S', NULL, 'S'),
(8, 10, 'S', NULL, 'S', NULL, NULL),
(9, 11, 'S', NULL, 'S', NULL, 'S'),
(10, 12, 'S', 'S', 'S', 'S', 'S'),
(11, 13, 'S', 'S', 'S', 'S', 'S'),
(12, 14, 'S', NULL, 'S', NULL, 'S'),
(13, 15, 'S', NULL, 'S', NULL, 'S'),
(14, 16, NULL, NULL, NULL, NULL, NULL),
(15, 17, 'S', 'S', NULL, NULL, NULL),
(16, 18, 'S', NULL, 'S', NULL, 'S'),
(17, 19, 'S', NULL, 'S', NULL, 'S'),
(18, 20, 'S', NULL, 'S', NULL, 'S'),
(19, 21, 'S', NULL, 'S', NULL, 'S'),
(20, 22, 'S', NULL, NULL, 'S', 'S'),
(21, 23, NULL, 'S', NULL, 'S', NULL),
(22, 24, 'S', NULL, 'S', NULL, 'S'),
(23, 25, 'S', NULL, 'S', NULL, 'S'),
(24, 26, 'S', NULL, NULL, 'S', 'S'),
(25, 27, 'S', NULL, 'S', NULL, 'S'),
(26, 28, 'S', NULL, 'S', NULL, 'S'),
(27, 29, 'S', NULL, 'S', NULL, 'S'),
(28, 30, 'S', NULL, 'S', NULL, 'S'),
(29, 31, 'S', NULL, 'S', NULL, 'S'),
(30, 32, 'S', NULL, NULL, 'S', 'S'),
(31, 33, 'S', NULL, 'S', NULL, 'S'),
(32, 34, 'S', NULL, 'S', NULL, 'S'),
(33, 35, 'S', NULL, 'S', NULL, 'S'),
(34, 36, NULL, 'S', NULL, 'S', NULL),
(35, 37, NULL, 'S', NULL, 'S', NULL),
(36, 38, NULL, 'S', NULL, 'S', NULL),
(37, 39, 'S', NULL, 'S', NULL, 'S'),
(38, 40, NULL, 'S', NULL, 'S', NULL),
(39, 41, NULL, 'S', NULL, 'S', NULL),
(40, 42, 'S', NULL, 'S', NULL, 'S'),
(41, 43, NULL, 'S', NULL, 'S', NULL),
(42, 44, NULL, 'S', NULL, 'S', NULL),
(43, 45, 'S', NULL, 'S', NULL, 'S'),
(44, 46, 'S', NULL, 'S', NULL, 'S'),
(45, 47, NULL, 'S', NULL, 'S', NULL),
(46, 48, 'S', NULL, 'S', NULL, 'S'),
(47, 49, 'S', NULL, 'S', NULL, 'S'),
(48, 50, NULL, NULL, NULL, NULL, NULL),
(49, 51, 'S', NULL, 'S', NULL, 'S'),
(50, 52, 'S', NULL, 'S', NULL, 'S'),
(51, 53, NULL, 'S', NULL, 'S', NULL),
(52, 54, NULL, 'S', NULL, 'S', NULL),
(53, 55, 'S', NULL, 'S', NULL, 'S'),
(54, 56, 'S', NULL, 'S', NULL, 'S'),
(55, 57, 'S', NULL, 'S', NULL, 'S'),
(56, 58, 'S', 'S', 'S', 'S', 'S'),
(57, 59, 'S', NULL, 'S', NULL, 'S'),
(58, 60, 'S', NULL, 'S', NULL, 'S'),
(59, 61, 'S', NULL, 'S', NULL, 'S'),
(60, 62, 'S', NULL, 'S', NULL, 'S'),
(61, 63, 'S', NULL, 'S', NULL, 'S'),
(62, 64, 'S', NULL, 'S', NULL, 'S'),
(63, 65, 'S', NULL, 'S', NULL, 'S'),
(64, 66, 'S', NULL, 'S', NULL, 'S'),
(65, 67, 'S', NULL, 'S', NULL, 'S'),
(66, 68, 'S', NULL, 'S', NULL, 'S'),
(67, 69, NULL, 'S', 'S', NULL, 'S'),
(68, 70, 'S', NULL, 'S', NULL, 'S'),
(69, 71, 'S', NULL, 'S', NULL, 'S'),
(70, 72, 'S', NULL, 'S', NULL, 'S'),
(71, 73, 'S', NULL, 'S', NULL, 'S'),
(72, 74, 'S', NULL, 'S', NULL, 'S'),
(73, 75, 'S', NULL, 'S', NULL, 'S'),
(74, 76, 'S', NULL, 'S', NULL, 'S'),
(75, 77, 'S', NULL, 'S', NULL, 'S'),
(76, 78, 'S', NULL, 'S', NULL, 'S'),
(77, 79, 'S', NULL, 'S', NULL, 'S'),
(78, 80, 'S', NULL, 'S', NULL, 'S'),
(79, 81, 'S', NULL, 'S', NULL, 'S'),
(80, 82, NULL, 'S', 'S', NULL, 'S'),
(81, 83, 'S', NULL, 'S', NULL, 'S'),
(82, 84, 'S', NULL, 'S', NULL, 'S'),
(83, 85, 'S', NULL, 'S', NULL, 'S'),
(84, 86, 'S', NULL, 'S', NULL, NULL),
(85, 87, 'S', NULL, 'S', NULL, 'S'),
(86, 88, 'S', NULL, 'S', NULL, 'S'),
(87, 89, 'S', NULL, 'S', NULL, 'S'),
(88, 90, 'S', NULL, 'S', NULL, 'S'),
(89, 91, 'S', NULL, 'S', NULL, 'S'),
(90, 92, 'S', NULL, 'S', NULL, 'S'),
(91, 93, 'S', NULL, 'S', NULL, NULL),
(92, 94, 'S', NULL, 'S', NULL, 'S'),
(93, 95, 'S', 'S', 'S', 'S', 'S'),
(94, 96, 'S', NULL, 'S', NULL, 'S'),
(95, 97, 'S', NULL, 'S', NULL, 'S'),
(96, 98, 'S', NULL, 'S', NULL, 'S'),
(97, 99, 'S', NULL, 'S', NULL, 'S'),
(98, 100, NULL, 'S', NULL, 'S', NULL),
(99, 101, NULL, 'S', NULL, 'S', NULL),
(100, 102, NULL, 'S', NULL, 'S', NULL),
(101, 103, 'S', NULL, 'S', NULL, 'S'),
(102, 104, NULL, 'S', NULL, 'S', NULL),
(103, 105, NULL, 'S', NULL, 'S', NULL),
(104, 106, NULL, 'S', NULL, 'S', NULL),
(105, 107, NULL, 'S', NULL, 'S', NULL),
(106, 108, NULL, 'S', NULL, 'S', NULL),
(107, 109, 'S', 'S', 'S', NULL, NULL),
(108, 110, NULL, NULL, NULL, NULL, NULL),
(109, 111, NULL, 'S', NULL, 'S', NULL),
(110, 112, 'S', NULL, 'S', NULL, 'S'),
(111, 113, 'S', NULL, 'S', NULL, 'S'),
(112, 114, NULL, 'S', NULL, 'S', NULL),
(113, 115, NULL, NULL, NULL, NULL, NULL),
(114, 116, NULL, 'S', NULL, 'S', NULL),
(115, 117, NULL, 'S', NULL, 'S', NULL),
(116, 118, 'S', NULL, 'S', NULL, 'S'),
(117, 119, 'S', NULL, 'S', NULL, 'S'),
(118, 120, 'S', NULL, 'S', NULL, 'S'),
(119, 121, 'S', NULL, 'S', NULL, 'S'),
(120, 122, 'S', NULL, 'S', NULL, 'S'),
(121, 123, 'S', NULL, 'S', NULL, 'S'),
(122, 124, 'S', NULL, 'S', NULL, 'S'),
(123, 125, 'S', NULL, 'S', NULL, 'S'),
(124, 126, 'S', NULL, 'S', NULL, 'S'),
(125, 127, 'S', NULL, 'S', NULL, 'S'),
(126, 128, 'S', NULL, 'S', NULL, 'S'),
(127, 129, 'S', NULL, 'S', NULL, 'S'),
(128, 130, NULL, 'S', NULL, 'S', NULL),
(129, 131, 'S', NULL, 'S', NULL, 'S'),
(130, 132, 'S', NULL, 'S', NULL, 'S'),
(131, 133, 'S', NULL, 'S', NULL, 'S'),
(132, 134, NULL, NULL, 'S', NULL, 'S'),
(133, 135, NULL, NULL, 'S', NULL, 'S'),
(134, 136, NULL, NULL, NULL, NULL, NULL),
(135, 137, NULL, 'S', NULL, 'S', NULL),
(136, 138, NULL, 'S', NULL, 'S', NULL),
(137, 139, 'S', NULL, 'S', NULL, 'S'),
(138, 140, NULL, 'S', NULL, 'S', NULL),
(139, 141, NULL, 'S', NULL, 'S', NULL),
(140, 142, 'S', 'S', 'S', 'S', 'S'),
(141, 143, 'S', 'S', 'S', 'S', 'S'),
(142, 144, NULL, 'S', NULL, 'S', NULL),
(143, 145, NULL, 'S', NULL, 'S', NULL),
(144, 146, NULL, 'S', NULL, 'S', NULL),
(145, 147, NULL, 'S', NULL, 'S', NULL),
(146, 148, NULL, 'S', NULL, 'S', NULL),
(147, 149, NULL, 'S', NULL, 'S', NULL),
(148, 150, 'S', NULL, 'S', NULL, 'S'),
(149, 151, 'S', NULL, 'S', NULL, 'S'),
(150, 152, 'S', 'S', 'S', 'S', 'S'),
(151, 153, NULL, 'S', NULL, 'S', NULL),
(152, 154, NULL, 'S', NULL, 'S', NULL),
(153, 155, NULL, 'S', NULL, 'S', NULL),
(154, 156, NULL, 'S', NULL, 'S', NULL),
(155, 157, NULL, 'S', NULL, 'S', NULL),
(156, 158, NULL, 'S', NULL, 'S', NULL),
(157, 159, 'S', NULL, 'S', NULL, 'S'),
(158, 160, 'S', NULL, 'S', NULL, 'S'),
(159, 161, 'S', NULL, 'S', NULL, 'S'),
(160, 162, 'S', 'S', 'S', 'S', 'S'),
(161, 163, 'S', 'S', 'S', 'S', 'S'),
(162, 164, NULL, 'S', NULL, 'S', NULL),
(163, 165, 'S', NULL, 'S', NULL, 'S'),
(164, 166, 'S', NULL, 'S', NULL, 'S'),
(165, 167, 'S', NULL, 'S', NULL, 'S'),
(166, 168, 'S', NULL, 'S', NULL, 'S'),
(167, 169, 'S', NULL, 'S', NULL, 'S'),
(168, 170, 'S', NULL, 'S', NULL, 'S'),
(169, 171, 'S', NULL, 'S', NULL, 'S'),
(170, 172, 'S', NULL, 'S', NULL, 'S'),
(171, 173, 'S', NULL, 'S', NULL, 'S'),
(172, 174, 'S', NULL, 'S', NULL, 'S'),
(173, 175, NULL, 'S', NULL, 'S', NULL),
(174, 176, 'S', 'S', 'S', 'S', 'S'),
(175, 177, NULL, 'S', NULL, 'S', NULL),
(176, 178, NULL, 'S', NULL, 'S', NULL),
(177, 179, 'S', NULL, 'S', NULL, 'S'),
(178, 180, 'S', NULL, 'S', NULL, 'S'),
(179, 181, 'S', NULL, 'S', NULL, 'S'),
(180, 182, 'S', NULL, 'S', NULL, 'S'),
(181, 183, 'S', NULL, 'S', NULL, 'S'),
(182, 184, 'S', NULL, 'S', NULL, 'S'),
(183, 185, NULL, 'S', NULL, 'S', NULL),
(184, 186, 'S', NULL, 'S', NULL, 'S'),
(185, 187, 'S', NULL, 'S', NULL, 'S'),
(186, 188, 'S', NULL, 'S', NULL, 'S'),
(187, 189, 'S', NULL, 'S', NULL, 'S'),
(188, 190, 'S', NULL, 'S', NULL, 'S'),
(189, 191, 'S', NULL, 'S', NULL, 'S'),
(190, 192, 'S', NULL, 'S', NULL, 'S'),
(191, 193, 'S', NULL, 'S', NULL, 'S'),
(192, 194, NULL, 'S', NULL, 'S', NULL),
(193, 195, NULL, 'S', NULL, 'S', NULL),
(194, 196, 'S', NULL, 'S', NULL, 'S'),
(195, 197, 'S', NULL, 'S', NULL, 'S'),
(196, 198, 'S', NULL, 'S', NULL, 'S'),
(197, 199, 'S', NULL, 'S', NULL, 'S'),
(198, 200, 'S', NULL, 'S', NULL, NULL),
(199, 201, 'S', NULL, 'S', NULL, 'S'),
(200, 202, 'S', NULL, 'S', NULL, NULL),
(201, 203, 'S', NULL, 'S', NULL, 'S'),
(202, 204, 'S', NULL, 'S', NULL, 'S'),
(203, 205, 'S', NULL, 'S', NULL, 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presente_cliente`
--

CREATE TABLE `presente_cliente` (
  `id_presente` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `presente_cliente`
--

INSERT INTO `presente_cliente` (`id_presente`, `id_cliente`, `fecha_hora`) VALUES
(1, 10, '2017-02-08 21:04:19'),
(2, 19, '2017-02-08 22:06:53'),
(3, 85, '2017-02-08 22:08:04'),
(4, 52, '2017-02-13 18:54:49'),
(5, 133, '2017-02-13 20:55:33'),
(6, 121, '2017-02-13 22:13:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(5) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `ingreso10_15` int(5) DEFAULT NULL,
  `ingreso15_20` int(5) DEFAULT NULL,
  `ingreso20_25` int(5) DEFAULT NULL,
  `ingreso25_30` int(5) DEFAULT NULL,
  `incremento_dia` float DEFAULT NULL,
  `estado` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `descripcion`, `precio`, `ingreso10_15`, `ingreso15_20`, `ingreso20_25`, `ingreso25_30`, `incremento_dia`, `estado`) VALUES
(1, 'Entrenamiento Funcional 2 x semana ', 500, NULL, NULL, NULL, NULL, NULL, 'A'),
(2, 'Salud y Calidad de Vida 2 x semana', 600, NULL, NULL, NULL, NULL, NULL, 'A'),
(3, 'Entrenamiento Funcional 3 x semana', 600, NULL, NULL, NULL, NULL, NULL, 'A'),
(4, 'Salud y Calidad de Vida 3 x semana', 700, NULL, NULL, NULL, NULL, NULL, 'A'),
(5, 'Entrenamiento Funcional TODOS LOS DIAS', 700, NULL, NULL, NULL, NULL, NULL, 'A'),
(6, 'Entrenamiento Deportivo 2 x semana', 600, NULL, NULL, NULL, NULL, NULL, 'A'),
(7, 'Entrenamiento Deportivo 3 x semana', 700, NULL, NULL, NULL, NULL, NULL, 'A'),
(8, 'Entrenamiento Deportivo TODOS LOS DIAS', 1000, NULL, NULL, NULL, NULL, NULL, 'A'),
(9, 'Cardio Jump 2 x semana', 500, NULL, NULL, NULL, NULL, NULL, 'A'),
(10, 'Cardio Jump 3 x semana', 600, NULL, NULL, NULL, NULL, NULL, 'A'),
(11, 'Zumba 2 x semana', 500, NULL, NULL, NULL, NULL, NULL, 'A'),
(12, 'Entrenamiento Personalizado 2 x semana', 1300, NULL, NULL, NULL, NULL, NULL, 'A'),
(13, 'Entrenamiento Personalizado 3 x semana', 1500, NULL, NULL, NULL, NULL, NULL, 'A'),
(14, 'Rehabilitacion Funcional 2 x semana', 600, NULL, NULL, NULL, NULL, NULL, 'A'),
(15, 'Rehabilitacion Funcional 3 x semana', 700, NULL, NULL, NULL, NULL, NULL, 'A'),
(16, 'GAP 2 x semana', 450, NULL, NULL, NULL, NULL, NULL, 'A'),
(17, 'GAP 3 x semana', 550, NULL, NULL, NULL, NULL, NULL, 'A'),
(18, 'Baile 2 x semana', 500, NULL, NULL, NULL, NULL, NULL, 'A'),
(19, 'Baile 3 x semana', 600, NULL, NULL, NULL, NULL, NULL, 'A'),
(20, 'Salud y Rehabilitacion 2 x semana', 700, NULL, NULL, NULL, NULL, NULL, 'A'),
(21, 'Salud y Rehabilitacion 3 x semana', 800, NULL, NULL, NULL, NULL, NULL, 'A'),
(22, 'Entrenamiento de Alto Rendimiento 2 x semana', 3000, NULL, NULL, NULL, NULL, NULL, 'A'),
(23, 'Entrenamiento de Alto Rendimiento 3 x semana', 3500, NULL, NULL, NULL, NULL, NULL, 'A'),
(24, 'Entrenamiento de Alto Rendimiento TODOS LOS DIAS', 4000, NULL, NULL, NULL, NULL, NULL, 'A'),
(25, 'Yoga Deportiva 2 x semana', 600, NULL, NULL, NULL, NULL, NULL, 'A'),
(26, 'Entrenamiento Funcional Principiante 2 x semana', 500, NULL, NULL, NULL, NULL, NULL, 'A'),
(27, 'Entrenamiento Funcional Principiante 3 x semana', 600, NULL, NULL, NULL, NULL, NULL, 'A'),
(28, 'Cardio Jump 2x1 ENERO', 250, NULL, NULL, NULL, NULL, NULL, 'A'),
(29, 'Funcional -%50 familiares 3 x semana', 300, NULL, NULL, NULL, NULL, NULL, 'A'),
(30, 'GRUPO YAGUARETE 1/2 MES ENERO- DEPORTIVO', 450, NULL, NULL, NULL, NULL, NULL, 'A'),
(31, 'ENTRENAMIENTO DEPORTIVO X3 -GRUPO YAGUARETE -10% DESC.', 720, NULL, NULL, NULL, NULL, NULL, 'A'),
(32, 'ENTRENAMIENTO DEPORTIVO X2 -GPO. YAGUARETE -10% DESC', 630, NULL, NULL, NULL, NULL, NULL, 'A'),
(33, 'Entrenamiento Personalizado x3- GPO YAGUARETE -10%DESC', 1350, NULL, NULL, NULL, NULL, NULL, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_dias`
--

CREATE TABLE `productos_dias` (
  `id_producto_dias` int(5) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `lunes` enum('S','N') DEFAULT 'N',
  `martes` enum('S','N') DEFAULT 'N',
  `miercoles` enum('S','N') DEFAULT 'N',
  `jueves` enum('S','N') DEFAULT 'N',
  `viernes` enum('S','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_dias`
--

INSERT INTO `productos_dias` (`id_producto_dias`, `id_producto`, `lunes`, `martes`, `miercoles`, `jueves`, `viernes`) VALUES
(1, 1, 'S', NULL, 'S', NULL, 'S'),
(5, 3, NULL, 'S', NULL, 'S', NULL),
(6, 1, NULL, NULL, NULL, NULL, NULL),
(7, 2, 'S', NULL, 'S', NULL, 'S'),
(8, 3, NULL, NULL, NULL, NULL, NULL),
(9, 4, 'S', NULL, 'S', NULL, 'S'),
(10, 5, 'S', 'S', 'S', 'S', 'S'),
(11, 6, NULL, NULL, NULL, NULL, NULL),
(12, 7, NULL, NULL, NULL, NULL, NULL),
(13, 8, NULL, NULL, NULL, NULL, NULL),
(14, 9, 'S', 'S', 'S', 'S', 'S'),
(15, 10, 'S', 'S', 'S', 'S', 'S'),
(16, 11, NULL, 'S', NULL, 'S', NULL),
(17, 12, NULL, NULL, NULL, NULL, NULL),
(18, 13, NULL, NULL, NULL, NULL, NULL),
(19, 14, 'S', NULL, 'S', NULL, 'S'),
(20, 15, 'S', NULL, 'S', NULL, 'S'),
(21, 16, 'S', NULL, 'S', NULL, 'S'),
(22, 17, 'S', NULL, 'S', NULL, 'S'),
(23, 18, 'S', NULL, 'S', NULL, 'S'),
(24, 19, 'S', NULL, 'S', NULL, 'S'),
(25, 20, 'S', NULL, 'S', NULL, 'S'),
(26, 21, 'S', NULL, 'S', NULL, 'S'),
(27, 22, NULL, NULL, NULL, NULL, NULL),
(28, 23, NULL, NULL, NULL, NULL, NULL),
(29, 24, NULL, NULL, NULL, NULL, NULL),
(30, 25, NULL, 'S', NULL, 'S', NULL),
(31, 26, 'S', NULL, 'S', NULL, 'S'),
(32, 27, 'S', NULL, 'S', NULL, 'S'),
(33, 28, NULL, NULL, NULL, NULL, NULL),
(34, 29, 'S', NULL, 'S', NULL, 'S'),
(35, 30, 'S', NULL, 'S', NULL, 'S'),
(36, 31, 'S', NULL, 'S', NULL, 'S'),
(37, 32, NULL, 'S', NULL, 'S', NULL),
(38, 33, NULL, 'S', 'S', NULL, 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proviene`
--

CREATE TABLE `proviene` (
  `id_registro` int(5) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `estado` enum('A','B') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proviene`
--

INSERT INTO `proviene` (`id_registro`, `descripcion`, `estado`) VALUES
(1, 'Cekym Deportes', 'A'),
(2, 'Munareto Natalia', 'A'),
(3, 'Arotcharen Veronica', 'A'),
(4, 'Viera Christian', 'A'),
(5, 'Galarza Federico', 'A'),
(6, 'Ortiz Alejandro', 'A'),
(7, 'Cubas Jorge', 'A'),
(8, 'Blanco Gonzalo', 'A'),
(9, 'Barbieri Katherine', 'A'),
(10, 'Romero Javier', 'A'),
(11, 'Lopez Luciana', 'A'),
(12, 'Retamar Laura', 'A'),
(13, 'FanPage', 'A'),
(14, 'Eventos', 'A'),
(15, 'Folleteria', 'A'),
(16, 'Recomendados Grupos', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relaciones`
--

CREATE TABLE `relaciones` (
  `id_relacion` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_carga` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `relaciones`
--

INSERT INTO `relaciones` (`id_relacion`, `id_persona`, `id_producto`, `fecha_carga`, `fecha_inicio`) VALUES
(1, 5, 9, NULL, '2017-01-09'),
(2, 6, 7, NULL, '2017-01-18'),
(3, 7, 5, NULL, '2017-01-10'),
(4, 8, 9, NULL, '2017-01-05'),
(5, 9, 1, NULL, '2017-02-02'),
(6, 10, 1, NULL, '2017-01-23'),
(7, 11, 3, NULL, '2017-02-02'),
(8, 12, 5, NULL, '2017-01-16'),
(9, 13, 5, NULL, '2017-01-04'),
(10, 14, 13, NULL, '2017-01-16'),
(11, 15, 27, NULL, '2017-02-02'),
(12, 4, 17, NULL, '2017-02-02'),
(13, 4, 16, NULL, '2017-02-02'),
(14, 18, 3, NULL, '2017-01-09'),
(15, 19, 3, NULL, '2017-02-01'),
(16, 20, 3, NULL, '2017-01-09'),
(17, 21, 3, NULL, '2017-01-23'),
(18, 22, 3, NULL, '2017-01-02'),
(19, 23, 28, NULL, '2017-01-03'),
(20, 24, 13, NULL, '2017-01-13'),
(21, 25, 3, NULL, '2017-02-02'),
(22, 26, 3, NULL, '2017-01-02'),
(23, 27, 3, NULL, '2017-01-04'),
(24, 28, 3, NULL, '2017-01-04'),
(25, 29, 3, NULL, '2017-01-11'),
(26, 30, 3, NULL, '2017-01-13'),
(27, 31, 21, NULL, '2017-01-06'),
(28, 32, 3, NULL, '2017-01-03'),
(29, 32, 28, NULL, '2017-01-12'),
(30, 33, 21, NULL, '2017-01-11'),
(31, 34, 3, NULL, '2017-01-11'),
(32, 35, 29, NULL, '2017-01-18'),
(33, 36, 28, NULL, '2017-01-10'),
(34, 37, 28, NULL, '2017-01-10'),
(35, 38, 9, NULL, '2017-01-19'),
(36, 39, 3, NULL, '2017-01-04'),
(37, 40, 1, NULL, '2017-01-03'),
(38, 41, 1, NULL, '2017-01-19'),
(39, 42, 21, NULL, '2017-02-02'),
(40, 43, 9, NULL, '2017-02-02'),
(41, 44, 9, NULL, '2017-02-02'),
(42, 45, 3, NULL, '2017-01-09'),
(43, 46, 3, NULL, '2017-02-03'),
(44, 47, 1, NULL, '2017-02-03'),
(45, 48, 3, NULL, '2017-02-03'),
(46, 49, 3, NULL, '2017-01-02'),
(47, 51, 3, NULL, '2017-01-18'),
(48, 52, 3, NULL, '2017-02-03'),
(49, 53, 9, NULL, '2017-02-03'),
(50, 54, 9, NULL, '2017-02-03'),
(51, 54, 9, NULL, '2017-02-03'),
(52, 55, 21, NULL, '2017-02-03'),
(53, 56, 7, NULL, '2017-02-03'),
(54, 57, 7, NULL, '2017-02-03'),
(55, 58, 3, NULL, '2017-02-03'),
(56, 59, 4, NULL, '2017-02-03'),
(57, 60, 4, NULL, '2017-01-27'),
(58, 61, 7, NULL, '2017-01-26'),
(59, 62, 7, NULL, '2017-01-26'),
(60, 63, 21, NULL, '2017-01-26'),
(61, 64, 27, NULL, '2017-02-03'),
(62, 65, 21, NULL, '2017-01-26'),
(63, 66, 3, NULL, '2017-01-25'),
(64, 67, 3, NULL, '2017-01-25'),
(65, 68, 3, NULL, '2017-01-23'),
(66, 69, 33, NULL, '2017-01-20'),
(67, 70, 29, NULL, '2017-01-19'),
(68, 71, 3, NULL, '2017-01-18'),
(69, 72, 7, NULL, '2017-01-18'),
(70, 73, 3, NULL, '2017-02-06'),
(71, 74, 3, NULL, '2017-02-06'),
(72, 75, 3, NULL, '2017-02-06'),
(73, 76, 3, NULL, '2017-02-06'),
(74, 77, 3, NULL, '2017-02-06'),
(75, 78, 3, NULL, '2017-02-06'),
(76, 79, 3, NULL, '2017-02-06'),
(77, 80, 27, NULL, '2017-02-06'),
(78, 81, 4, NULL, '2017-02-06'),
(79, 82, 4, NULL, '2017-02-06'),
(80, 83, 3, NULL, '2017-02-06'),
(81, 84, 3, NULL, '2017-02-06'),
(82, 85, 27, NULL, '2017-02-06'),
(83, 86, 1, NULL, '2017-02-06'),
(84, 87, 27, NULL, '2017-02-06'),
(85, 88, 3, NULL, '2017-02-06'),
(86, 89, 3, NULL, '2017-02-06'),
(87, 90, 3, NULL, '2017-02-06'),
(88, 91, 3, NULL, '2017-02-06'),
(89, 92, 3, NULL, '2017-02-06'),
(90, 93, 1, NULL, '2017-02-06'),
(91, 94, 7, NULL, '2017-02-06'),
(92, 95, 5, NULL, '2017-02-06'),
(93, 96, 27, NULL, '2017-02-06'),
(94, 97, 3, NULL, '2017-02-06'),
(95, 98, 3, NULL, '2017-02-06'),
(96, 99, 3, NULL, '2017-02-06'),
(97, 100, 9, NULL, '2017-02-07'),
(98, 101, 9, NULL, '2017-02-07'),
(99, 102, 9, NULL, '2017-02-07'),
(100, 103, 7, NULL, '2017-02-07'),
(101, 104, 9, NULL, '2017-02-07'),
(102, 105, 1, NULL, '2017-02-07'),
(103, 106, 1, NULL, '2017-02-07'),
(104, 107, 1, NULL, '2017-02-07'),
(105, 108, 1, NULL, '2017-02-07'),
(106, 109, 3, NULL, '2017-02-07'),
(107, 110, 8, NULL, '2017-02-07'),
(108, 111, 18, NULL, '2017-02-07'),
(109, 112, 3, NULL, '2017-02-08'),
(110, 113, 4, NULL, '2017-02-08'),
(111, 114, 4, NULL, '2017-02-08'),
(112, 115, 31, NULL, '2017-02-08'),
(113, 116, 9, NULL, '2017-02-08'),
(114, 117, 9, NULL, '2017-02-08'),
(115, 118, 3, NULL, '2017-02-08'),
(116, 119, 3, NULL, '2017-02-08'),
(117, 120, 3, NULL, '2017-02-08'),
(118, 122, 3, NULL, '2017-02-08'),
(119, 123, 3, NULL, '2017-02-08'),
(120, 124, 3, NULL, '2017-02-08'),
(121, 125, 3, NULL, '2017-02-08'),
(122, 126, 3, NULL, '2017-02-08'),
(123, 127, 3, NULL, '2017-02-08'),
(124, 121, 3, NULL, '2017-02-08'),
(125, 128, 3, NULL, '2017-02-08'),
(126, 129, 3, NULL, '2017-02-08'),
(127, 130, 1, NULL, '2017-02-08'),
(128, 131, 10, NULL, '2017-02-08'),
(129, 132, 10, NULL, '2017-02-08'),
(130, 133, 3, NULL, '2017-02-08'),
(131, 134, 1, NULL, '2017-02-08'),
(132, 135, 1, NULL, '2017-02-08'),
(133, 136, 18, NULL, '2017-02-08'),
(134, 137, 9, NULL, '2017-02-09'),
(135, 138, 9, NULL, '2017-02-09'),
(136, 139, 3, NULL, '2017-02-09'),
(137, 140, 1, NULL, '2017-02-09'),
(138, 141, 9, NULL, '2017-02-09'),
(139, 140, 9, NULL, '2017-02-09'),
(140, 142, 10, NULL, '2017-02-09'),
(141, 143, 10, NULL, '2017-02-09'),
(142, 144, 9, NULL, '2017-02-09'),
(143, 145, 9, NULL, '2017-02-09'),
(144, 121, 10, NULL, '2017-02-09'),
(145, 146, 18, NULL, '2017-02-09'),
(146, 147, 18, NULL, '2017-02-09'),
(147, 148, 9, NULL, '2017-02-09'),
(148, 149, 9, NULL, '2017-02-09'),
(149, 150, 4, NULL, '2017-02-10'),
(150, 151, 3, NULL, '2017-02-10'),
(151, 152, 5, NULL, '2017-02-10'),
(152, 153, 1, NULL, '2017-02-10'),
(153, 154, 1, NULL, '2017-02-10'),
(154, 155, 1, NULL, '2017-02-10'),
(155, 156, 1, NULL, '2017-02-10'),
(156, 157, 1, NULL, '2017-02-10'),
(157, 158, 1, NULL, '2017-02-10'),
(158, 159, 33, NULL, '2017-02-10'),
(159, 160, 32, NULL, '2017-02-10'),
(160, 162, 5, NULL, '2017-02-10'),
(161, 163, 8, NULL, '2017-02-10'),
(162, 164, 1, NULL, '2017-02-10'),
(163, 161, 3, NULL, '2017-02-10'),
(164, 165, 3, NULL, '2017-02-13'),
(165, 166, 3, NULL, '2017-02-13'),
(166, 167, 3, NULL, '2017-02-13'),
(167, 168, 3, NULL, '2017-02-13'),
(168, 169, 3, NULL, '2017-02-13'),
(169, 170, 3, NULL, '2017-02-13'),
(170, 171, 3, NULL, '2017-02-13'),
(171, 172, 3, NULL, '2017-02-13'),
(172, 173, 7, NULL, '2017-02-14'),
(173, 174, 3, NULL, '2017-02-14'),
(174, 175, 1, NULL, '2017-02-14'),
(175, 176, 5, NULL, '2017-02-14'),
(176, 177, 28, NULL, '2017-02-14'),
(177, 178, 28, NULL, '2017-02-14'),
(178, 179, 3, NULL, '2017-02-15'),
(179, 180, 7, NULL, '2017-02-15'),
(180, 181, 7, NULL, '2017-02-15'),
(181, 182, 3, NULL, '2017-02-15'),
(182, 183, 3, NULL, '2017-02-15'),
(183, 184, 10, NULL, '2017-02-15'),
(184, 185, 9, NULL, '2017-02-16'),
(185, 186, 3, NULL, '2017-02-17'),
(186, 187, 3, NULL, '2017-02-17'),
(187, 188, 3, NULL, '2017-02-17'),
(188, 189, 7, NULL, '2017-02-20'),
(189, 190, 19, NULL, '2017-02-20'),
(190, 191, 7, NULL, '2017-02-20'),
(191, 192, 10, NULL, '2017-02-20'),
(192, 193, 17, NULL, '2017-02-20'),
(193, 194, 1, NULL, '2017-02-21'),
(194, 195, 9, NULL, '2017-02-21'),
(195, 196, 17, NULL, '2017-02-22'),
(196, 197, 3, NULL, '2017-02-22'),
(197, 198, 3, NULL, '2017-02-22'),
(198, 199, 3, NULL, '2017-02-22'),
(199, 200, 16, NULL, '2017-02-22'),
(200, 201, 13, NULL, '2017-02-22'),
(201, 202, 16, NULL, '2017-02-22'),
(202, 203, 3, NULL, '2017-02-24'),
(203, 204, 3, NULL, '2017-02-24'),
(204, 205, 3, NULL, '2017-02-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` enum('comun','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'comun',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `tipo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jose Fonde', 'albertojoseponce@gmail.com', '$2y$10$sbk/axlKR3fJixBpQEXAVuhSK26n3R0IQ32aUggdnykSZffWTpVw2', 'comun', NULL, '2016-10-03 19:57:17', '2016-10-03 19:57:17'),
(3, 'prueba de jose', 'jose@josepone', 'prueba de jose', 'comun', NULL, '2016-10-05 03:21:38', '2016-10-05 03:21:38'),
(5, 'sadsad', 'sandratamburini@tinosalud.com.ar', '$2y$10$hsVnFBBn3ziTVpbLTGAk2.UXysGlTUBuGKvYFS3dIguB/DkZXSiYO', 'comun', NULL, '2016-10-05 06:33:59', '2016-10-05 06:33:59'),
(6, 'pelado', 'paldao@pela', '$2y$10$lhnsfztn47q0/tva1VUfM.kilMeUUAwn9e4.fP2.WinsJx3/O5EiS', 'comun', NULL, '2016-10-05 16:10:21', '2016-10-05 16:10:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'Identificador de usuario.',
  `clave` varchar(50) NOT NULL COMMENT 'Clave que usara el usuario en conjunto con su id.',
  `nombre` varchar(50) NOT NULL DEFAULT '' COMMENT 'Nombre de usuario. (cuenta).',
  `id_persona` int(10) UNSIGNED ZEROFILL NOT NULL DEFAULT '0000000000' COMMENT 'Id de la persona federada. Ref. tabla persona_federacion.',
  `estado` enum('A','B') NOT NULL DEFAULT 'A' COMMENT 'Admite solamente valores A=activo; B=baja.',
  `fecha_baja` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha en la que se dio de baja el registro.',
  `fecha_ultima_modificacion` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha en la que se realizo la ultima modificacion del registro.',
  `usuario` int(10) UNSIGNED ZEROFILL NOT NULL DEFAULT '0000000000' COMMENT 'Id del usuario que modifico por ultima vez el registro.'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Usuarios.' ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `clave`, `nombre`, `id_persona`, `estado`, `fecha_baja`, `fecha_ultima_modificacion`, `usuario`) VALUES
(0000000001, 'jponce', 'jponce', 0000000001, 'A', '0000-00-00 00:00:00', '2014-08-04 00:00:00', 0000000001),
(0000000002, 'cekymsrl', 'administracion', 0000000002, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0000000001),
(0000000064, 'cekym', 'veronica', 0000000016, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0000000000),
(0000000065, 'mia2014', 'ricardo', 0000000017, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0000000000),
(0000000066, 'shanya30', 'lbaldas', 0000000136, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0000000000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articulos_categorias_id_foreign` (`categorias_id`);

--
-- Indices de la tabla `articulos_img`
--
ALTER TABLE `articulos_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articulos_img_articulos_id_foreign` (`articulos_id`);

--
-- Indices de la tabla `articulos_tag`
--
ALTER TABLE `articulos_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articulos_tag_articulo_id_foreign` (`articulo_id`),
  ADD KEY `articulos_tag_tag_id_foreign` (`tag_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `sexo` (`sexo`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `personas_dias`
--
ALTER TABLE `personas_dias`
  ADD PRIMARY KEY (`id_persona_dias`);

--
-- Indices de la tabla `presente_cliente`
--
ALTER TABLE `presente_cliente`
  ADD PRIMARY KEY (`id_presente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productos_dias`
--
ALTER TABLE `productos_dias`
  ADD PRIMARY KEY (`id_producto_dias`);

--
-- Indices de la tabla `proviene`
--
ALTER TABLE `proviene`
  ADD PRIMARY KEY (`id_registro`);

--
-- Indices de la tabla `relaciones`
--
ALTER TABLE `relaciones`
  ADD PRIMARY KEY (`id_relacion`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `id_persona_federada` (`id_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `articulos_img`
--
ALTER TABLE `articulos_img`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `articulos_tag`
--
ALTER TABLE `articulos_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_persona` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la persona en el dominio.', AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT de la tabla `personas_dias`
--
ALTER TABLE `personas_dias`
  MODIFY `id_persona_dias` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT de la tabla `presente_cliente`
--
ALTER TABLE `presente_cliente`
  MODIFY `id_presente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `productos_dias`
--
ALTER TABLE `productos_dias`
  MODIFY `id_producto_dias` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `proviene`
--
ALTER TABLE `proviene`
  MODIFY `id_registro` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `relaciones`
--
ALTER TABLE `relaciones`
  MODIFY `id_relacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'Identificador de usuario.', AUTO_INCREMENT=67;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_categorias_id_foreign` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `articulos_img`
--
ALTER TABLE `articulos_img`
  ADD CONSTRAINT `articulos_img_articulos_id_foreign` FOREIGN KEY (`articulos_id`) REFERENCES `articulos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `articulos_tag`
--
ALTER TABLE `articulos_tag`
  ADD CONSTRAINT `articulos_tag_articulo_id_foreign` FOREIGN KEY (`articulo_id`) REFERENCES `articulos` (`id`),
  ADD CONSTRAINT `articulos_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
