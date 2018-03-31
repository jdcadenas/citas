-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-03-2018 a las 15:48:26
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `citas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea_appointments`
--

CREATE TABLE `ea_appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_datetime` datetime DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `notes` text,
  `hash` text,
  `attendance_status` varchar(32) DEFAULT NULL COMMENT '[registered, checked_in]',
  `is_unavailable` tinyint(4) DEFAULT '0',
  `id_users_provider` bigint(20) UNSIGNED DEFAULT NULL,
  `id_users_customer` bigint(20) UNSIGNED DEFAULT NULL,
  `id_services` bigint(20) UNSIGNED DEFAULT NULL,
  `id_google_calendar` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_appointments`
--

INSERT INTO `ea_appointments` (`id`, `book_datetime`, `start_datetime`, `end_datetime`, `notes`, `hash`, `attendance_status`, `is_unavailable`, `id_users_provider`, `id_users_customer`, `id_services`, `id_google_calendar`) VALUES
(58, '2018-03-27 22:12:21', '2018-03-26 08:00:00', '2018-03-26 08:45:00', '', 'b86eb24f0e653a6e8b644b3dc4667040', 'registrado', 0, 12, 4, 10, NULL),
(59, '2018-03-27 22:13:02', '2018-03-26 09:00:00', '2018-03-26 09:45:00', '', 'fca5096d8f5d010b916fb557bbd7b3f4', '', 0, 2, 5, 10, NULL),
(60, '2018-03-27 22:14:31', '2018-03-28 08:30:00', '2018-03-28 09:15:00', '', '3b6b1a69eb935ef276b90810bb9e700d', 'registrado', 0, 3, 11, 10, NULL),
(61, '2018-03-28 10:22:35', '2018-03-28 07:00:00', '2018-03-28 07:45:00', '', '03c6dd0c8ab48c6ca0b58fc3a4382669', '', 0, 2, 5, 10, NULL),
(62, '2018-03-28 10:23:39', '2018-03-28 04:30:00', '2018-03-28 05:15:00', '', '03041d508b6e607f044d54c447c74f65', 'registrado', 0, 2, 10, 11, NULL),
(63, '2018-03-28 21:42:46', '2018-03-29 02:00:00', '2018-03-29 04:00:00', 'de viaje', NULL, 'registrado', 1, 12, NULL, NULL, NULL),
(65, '2018-03-29 05:13:02', '2018-03-30 10:45:00', '2018-03-30 11:30:00', 'Anim non est dignissimos possimus possimus voluptatem Ea quia doloremque quia cillum sed distinctio Maxime sed voluptate quo', '79526588f7686cabb44b5f8726a54854', 'registrado', 0, 2, 47, 6, NULL),
(66, '2018-03-29 05:16:39', '2018-05-04 07:00:00', '2018-05-04 07:45:00', 'Veniam eum sed quo blanditiis distinctio Est irure quia voluptatem', '671d70cb85aa5838ae13b99922f56d6c', '', 0, 2, 48, 6, NULL),
(67, '2018-03-29 05:17:00', '2018-03-30 08:30:00', '2018-03-30 09:15:00', 'Aut proident excepteur autem dolore qui ullamco ab', '372f746d9f6ff1cdf6d323c49dab31e8', 'registrado', 0, 2, 49, 6, NULL),
(68, '2018-03-29 05:17:26', '2018-03-30 09:15:00', '2018-03-30 10:00:00', 'Commodo dolorum reprehenderit officiis esse in tempora est natus sed sed dolor dolorum ut explicabo', '7e25fe143d926cae2fae0c8460d9c12d', '', 0, 2, 50, 6, NULL),
(69, '2018-03-29 05:22:59', '2018-03-28 14:00:00', '2018-03-28 14:45:00', '', 'bbbf143664a95b683da50a5258914340', 'registrado', 0, 2, 51, 6, NULL),
(70, '2018-03-29 05:23:26', '2018-03-30 15:00:00', '2018-03-30 15:45:00', '', '9b39860863ee5c83c86fda7b88b2fad7', '', 0, 2, 51, 6, NULL),
(71, '2018-03-29 05:32:12', '2018-03-30 14:00:00', '2018-03-30 14:45:00', 'Saepe occaecat cillum consequatur sapiente modi consequatur est nesciunt itaque quo', 'c740d0293878271ae84140788b9ae663', '', 0, 2, 52, 6, NULL),
(73, '2018-03-29 09:39:05', '2018-03-30 07:00:00', '2018-03-30 07:45:00', 'Eius ipsa cumque voluptatum sapiente sapiente esse est elit', 'c273a720bcf3e54ee3c03b5725d71a5a', 'registrado', 0, 2, 66, 12, NULL),
(74, '2018-03-29 09:40:46', '2018-03-31 08:30:00', '2018-03-31 09:15:00', 'Corrupti vero similique necessitatibus architecto est sed voluptatem minima hic', '16202f48d28a489b935056a232bea9d6', 'registrado', 0, 2, 67, 6, NULL),
(75, '2018-03-29 09:41:30', '2018-03-31 07:00:00', '2018-03-31 07:45:00', 'Tenetur et pariatur Autem in minim in ullamco quo consequatur quo nulla eligendi corrupti incidunt', '9828f7fd1bc26c3ae69cb98b4b5853ec', 'registrado', 0, 2, 68, 8, NULL),
(76, '2018-03-29 09:51:42', '2018-03-29 04:00:00', '2018-03-29 04:45:00', 'queda sujeto a modificacion', '5d19bc2ebff06b40e97fbf0261753a2c', 'registrado', 0, 2, 10, 10, NULL),
(77, '2018-03-29 09:52:19', '2018-03-29 04:00:00', '2018-03-29 05:30:00', '', '4c499ddead9e76b2d07f15359ba3620e', 'registrado', 0, 12, 10, 7, NULL),
(78, '2018-03-29 09:53:07', '2018-03-29 04:00:00', '2018-03-29 05:30:00', '', '7c8f9da1b9e446442ebfaa5fd2560b9c', 'registrado', 0, 3, 4, 7, NULL),
(79, '2018-03-29 09:54:30', '2018-03-29 04:00:00', '2018-03-29 04:45:00', '', '9c6e4bcd758ac6859b41a6fa1c2b960b', 'registrado', 0, 12, 5, 9, NULL),
(80, '2018-03-29 09:55:21', '2018-03-29 07:30:00', '2018-03-29 08:15:00', '', '49b99fb20c480d087359abefda07f9cf', '', 0, 2, 5, 11, NULL),
(81, '2018-03-30 08:49:45', '2018-03-30 14:30:00', '2018-03-30 15:45:00', '', 'a6aaf4d829f1db88afbbf38d26469219', '', 0, 12, 11, 6, NULL),
(82, '2018-03-30 10:26:20', '2018-03-29 07:00:00', '2018-03-29 21:00:00', 'viaje', NULL, NULL, 1, 12, NULL, NULL, NULL),
(84, '2018-03-30 11:28:59', '2018-03-29 14:00:00', '2018-03-29 15:15:00', '', 'f946b79b986ec053e20634ffefc40338', NULL, 0, 2, 13, 6, NULL),
(85, '2018-03-30 11:30:05', '2018-03-29 15:30:00', '2018-03-29 16:45:00', '', '83ef3da7a750ec940d55c7bea7893489', '', 0, 2, 13, 6, NULL),
(86, '2018-03-30 11:30:16', '2018-03-29 14:00:00', '2018-03-29 15:15:00', '', 'c34fd816bba7088e05e773838b76635c', '', 0, 2, 11, 6, NULL),
(87, '2018-03-30 11:30:55', '2018-03-30 06:00:00', '2018-03-30 07:30:00', '', 'd23f48cae89c40fa10b783dc13152e25', '', 0, 12, 5, 7, NULL),
(88, '2018-03-30 11:32:19', '2018-03-30 06:00:00', '2018-03-30 06:45:00', '', '280f3ca826d95ced6469bc28efe0d136', NULL, 0, 2, 5, 6, NULL),
(89, '2018-03-30 11:33:44', '2018-03-29 07:00:00', '2018-03-29 08:15:00', '', 'e7d618d5341e85a44e38ba9f8148daa2', '', 0, 3, 5, 12, NULL),
(91, '2018-03-30 11:41:41', '2018-03-28 08:30:00', '2018-03-28 09:15:00', '', '8a172e8d5d940309179b2f44c21174e4', '', 0, 12, 5, 6, NULL),
(92, '2018-03-30 11:53:14', '2018-03-27 07:30:00', '2018-03-27 08:45:00', '', '22cb982b6d9ff10f7412ac23e7779851', NULL, 0, 2, 5, 6, NULL),
(93, '2018-03-30 11:53:45', '2018-03-27 07:30:00', '2018-03-27 08:45:00', '', 'd07d6697ec75679604305843aee83dbc', NULL, 0, 2, 11, 6, NULL),
(94, '2018-03-30 11:56:30', '2018-03-28 08:00:00', '2018-03-28 09:15:00', '', '12f4f79f1d042e50cc94bcc51adef298', NULL, 0, 2, 11, 6, NULL),
(95, '2018-03-30 12:03:29', '2018-03-27 09:00:00', '2018-03-27 09:45:00', '', '5cfe576bc21fed3f159cc01b3798141c', '', 0, 2, 4, 6, NULL),
(96, '2018-03-30 12:14:04', '2018-03-31 10:00:00', '2018-03-31 10:45:00', '', '0b569562ad0a3591926811a9d21b074e', '', 0, 2, 13, 9, NULL),
(98, '2018-03-30 22:22:12', '2018-03-31 17:00:00', '2018-03-31 17:45:00', 'Deseo entrevista ', '06b090cf40d7b35732ac75892500b746', NULL, 0, 2, 69, 10, NULL),
(99, '2018-03-30 22:44:13', '2018-03-30 00:00:00', '2018-03-30 18:00:00', 'diligencias', NULL, NULL, 1, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea_migrations`
--

CREATE TABLE `ea_migrations` (
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_migrations`
--

INSERT INTO `ea_migrations` (`version`) VALUES
(8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea_roles`
--

CREATE TABLE `ea_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `appointments` int(4) DEFAULT NULL,
  `customers` int(4) DEFAULT NULL,
  `services` int(4) DEFAULT NULL,
  `users` int(4) DEFAULT NULL,
  `system_settings` int(4) DEFAULT NULL,
  `user_settings` int(11) DEFAULT NULL,
  `invoices` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_roles`
--

INSERT INTO `ea_roles` (`id`, `name`, `slug`, `is_admin`, `appointments`, `customers`, `services`, `users`, `system_settings`, `user_settings`, `invoices`) VALUES
(1, 'Administrator', 'admin', 1, 15, 15, 15, 15, 15, 15, 15),
(2, 'Provider', 'provider', 0, 15, 15, 0, 0, 0, 15, 0),
(3, 'Customer', 'customer', 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Secretary', 'secretary', 0, 15, 15, 0, 0, 0, 15, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea_secretaries_providers`
--

CREATE TABLE `ea_secretaries_providers` (
  `id_users_secretary` bigint(20) UNSIGNED NOT NULL,
  `id_users_provider` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_secretaries_providers`
--

INSERT INTO `ea_secretaries_providers` (`id_users_secretary`, `id_users_provider`) VALUES
(6, 2),
(6, 3),
(6, 12),
(7, 2),
(7, 3),
(7, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea_services`
--

CREATE TABLE `ea_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency` varchar(32) DEFAULT NULL,
  `description` text,
  `availabilities_type` varchar(32) DEFAULT 'flexible',
  `attendants_number` int(11) DEFAULT '1',
  `id_service_categories` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_services`
--

INSERT INTO `ea_services` (`id`, `name`, `duration`, `price`, `currency`, `description`, `availabilities_type`, `attendants_number`, `id_service_categories`) VALUES
(6, 'Psicología', 45, '400.00', 'Bs.', 'Servicio de Psicología ', 'fixed', 1, 2),
(7, 'Psicologia 2 sesiones', 90, '800.00', 'Bs.', 'Psicologia 2 sesiones', 'fixed', 1, 2),
(8, 'Psicopedagogía 1', 45, '400.00', 'Bs.', 'Psicopedagogia', 'fixed', 1, NULL),
(9, 'Terapia ocupacional', 45, '400.00', 'Bs.', 'Terapia ocupacional', 'fixed', 1, 2),
(10, 'Entrevistas Padres', 45, '400.00', 'Bs.', '', 'fixed', 1, 5),
(11, 'Ludoterapia', 45, '400.00', 'Bs.', '', 'fixed', 1, 3),
(12, 'Tareas Dirigidas', 45, '400.00', 'Bs.', '', 'fixed', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea_services_providers`
--

CREATE TABLE `ea_services_providers` (
  `id_users` bigint(20) UNSIGNED NOT NULL,
  `id_services` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_services_providers`
--

INSERT INTO `ea_services_providers` (`id_users`, `id_services`) VALUES
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(12, 6),
(12, 7),
(12, 8),
(12, 9),
(12, 10),
(12, 11),
(12, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea_service_categories`
--

CREATE TABLE `ea_service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_service_categories`
--

INSERT INTO `ea_service_categories` (`id`, `name`, `description`) VALUES
(2, 'Servicios', 'servicios normales'),
(3, 'Servicios opcionales', 'servicios adicionales'),
(4, 'Servicios Multiples', ''),
(5, 'Servicios de diagnósticos', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea_settings`
--

CREATE TABLE `ea_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(512) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_settings`
--

INSERT INTO `ea_settings` (`id`, `name`, `value`) VALUES
(1, 'company_working_plan', '{\"sunday\":null,\"monday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"tuesday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"wednesday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"thursday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"friday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"saturday\":null}'),
(2, 'book_advance_timeout', '30'),
(3, 'google_analytics_code', ''),
(4, 'customer_notifications', '1'),
(5, 'date_format', 'DMY'),
(6, 'require_captcha', '0'),
(7, 'company_name', 'CIAN Centro Integral de Ayuda al Niño'),
(8, 'company_email', 'jdcadenas@gmail.com'),
(9, 'company_link', 'cian.com.ve');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea_users`
--

CREATE TABLE `ea_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `mobile_number` varchar(128) DEFAULT NULL,
  `phone_number` varchar(128) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `notes` text,
  `color` varchar(7) NOT NULL DEFAULT '#378006',
  `id_roles` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_users`
--

INSERT INTO `ea_users` (`id`, `first_name`, `last_name`, `email`, `mobile_number`, `phone_number`, `address`, `city`, `state`, `notes`, `color`, `id_roles`) VALUES
(1, 'María Alejandra', 'Febles', 'male@gmail.com', NULL, '123456', NULL, NULL, NULL, NULL, '#378006', 1),
(2, 'Juan', 'Rodríguez', 'juan@doe.com', '3224', '0123456789', '', '', '', 'ghhgh', '#d4007b', 2),
(3, 'Raul', 'Ward', 'daxy@hotmail.com', '591', '+752-81-3474786', 'Exercitationem autem cum at dicta', 'Hic voluptatem In exercitationem at', 'Perferendis dicta voluptas quia enim ducimus in sit atque anim veniam aut est', 'Pariatur Exercitation quia tempora fugit cillum', '#850115', 2),
(4, 'Cherokee', 'Love', 'cotlaeb@gmail.com', NULL, '+668-31-7315991', 'Dignissimos numquam nobis officia qui temporibus saepe rerum nemo doloribus necessitatibus', 'Minima omnis duis eum quia dolores eum nihil quasi dolore non laboriosam', NULL, NULL, '#378006', 3),
(5, 'Justina', 'Dejesus', 'qorufem@yahoo.com', NULL, '+535-79-1364124', 'Reprehenderit laborum ad libero quasi quia enim illum quia ullamco eius', 'Saepe excepturi aute deserunt aute eos', NULL, 'Deleniti sit voluptatum qui ad qui perferendis neque ipsa quod ea dolore do ut et laboriosam soluta', '#378006', 3),
(6, 'Ali', 'Cortez', 'galewyn@hotmail.com', '806', '+532-70-3610975', 'Sit culpa maxime labore velit dolorum aliquip ea officiis fuga Vero dolore', 'Cupiditate non est cupiditate magna dolor velit', 'Nesciunt rem enim proident ut repudiandae qui est officia dolore distinctio Eos', 'Fugiat quo assumenda odio accusantium qui et dolor', '#378006', 4),
(7, 'Gay', 'Burris', 'zazykimeq@gmail.com', '721', '+159-52-7042976', 'Mollit a consectetur est ad elit possimus est modi nihil accusantium quibusdam omnis voluptatibus placeat optio voluptatem ipsa', 'Ut voluptatem qui ex et repellendus Voluptatem amet rerum commodo molestiae voluptatem', 'Et enim perspiciatis ut commodi fuga Non dolor voluptates dolor voluptatem', 'Voluptatum elit quia deleniti labore perspiciatis aut quis nulla quo molestiae accusantium quam adipisci eum magna nostrum delectus sit duis', '#378006', 4),
(8, 'Mercedes', 'Cox', 'tifuwu@gmail.com', NULL, '+935-33-7261364', 'Sit voluptatibus quaerat fugit dignissimos qui proident voluptas corporis fugiat sed', 'Distinctio Proident iure sit ipsa quo omnis labore cum quaerat ut ducimus in', NULL, 'Est quidem sequi dolores quos ea quaerat occaecat minima aliquip', '#378006', 3),
(9, 'nombre1', 'apellido1', 'hjhj@gmail.com', NULL, '12312313', '2323', '123', NULL, NULL, '#378006', 3),
(10, 'we', 'qeqe', 'qweq@gmail.com', NULL, '434234242', '', '', NULL, NULL, '#378006', 3),
(11, 'uyuyii', 'uiuouio', 'jhh@gg.com', NULL, '4345354353', 'ytyututu', 'hhjk', NULL, '', '#378006', 3),
(12, 'pedro', 'perez', 'wewqwe@ve.com', '123123', '123133', '345345', '4535', '435', '', '#ff8000', 2),
(13, 'jose', 'cadenas', 'jdcadenas@gmail.com', NULL, '02129854490', 'caracas', 'Caracas', NULL, NULL, '#378006', 3),
(14, 'Blossom', 'Quinn', 'wusazer@yahoo.com', NULL, '+298-34-5773298', 'Ut amet nisi sint cillum nisi dolorem fugit ea dolor aliquid perspiciatis fugit neque quia iste id cum', 'Distinctio Culpa sint consequatur Aliquid molestias rerum voluptatibus atque magni iure', NULL, 'Deserunt nulla maiores quia enim vero aut minus proident laboris dicta adipisci id', '#378006', 3),
(15, 'jose2', 'cadenas2', 'jdcadenas2@gmail.com', NULL, '04266115101', '', '', NULL, NULL, '#378006', 3),
(16, 'Lionel', 'Barton', 'nixylo@yahoo.com', NULL, '+972-60-8725513', 'Debitis aperiam earum velit rem temporibus', 'Omnis anim quia aut odit voluptas voluptas fugit tempore voluptate dicta eligendi anim alias', NULL, NULL, '#378006', 3),
(17, 'Leonard', 'Harrell', 'wimadago@gmail.com', NULL, '+357-14-5851189', 'Molestiae consectetur fugiat deserunt assumenda qui velit nihil suscipit quas ipsa sunt eu fugit est suscipit duis', 'Quia aut corporis non deserunt facilis anim fugiat irure molestiae eaque laboris', NULL, NULL, '#378006', 3),
(18, 'Allen', 'Perry', 'zefo@hotmail.com', NULL, '+339-39-9710347', 'Veritatis a dolor delectus quo nulla dolore alias dolor ut quibusdam omnis irure', 'Cupidatat itaque et quis in sint accusamus nulla reprehenderit minus temporibus itaque nostrum velit quam in', NULL, NULL, '#378006', 3),
(19, 'Kalia', 'Elliott', 'nobudazu@gmail.com', NULL, '+966-61-5705687', 'Dolore blanditiis eaque modi ut qui qui magnam amet voluptatum quia eligendi', 'Veritatis in est mollit elit hic ut ipsam quaerat in voluptatem et excepteur hic excepteur mollitia eum', NULL, NULL, '#378006', 3),
(20, 'Seth', 'Maddox', 'gemi@hotmail.com', NULL, '+238-63-1360227', 'Vel voluptatem Ipsum ratione temporibus eiusmod et voluptas architecto eiusmod', 'Voluptatibus labore mollit ut esse in magnam autem quis in duis hic irure quo rerum eos', NULL, NULL, '#378006', 3),
(21, 'jose', 'cadenas', 'qff@gmail.com', NULL, '04266115101', '', '', NULL, NULL, '#378006', 3),
(22, 'Carson', 'Pacheco', 'gihiqymuq@hotmail.com', NULL, '+111-45-2455171', 'Ex cumque ipsum duis velit', 'Laudantium est ipsum voluptas anim', NULL, NULL, '#378006', 3),
(23, 'Maris', 'Dawson', 'fuqawar@gmail.com', NULL, '+845-19-4342597', 'Deleniti aperiam incidunt et magna', 'In nobis inventore aliquid reprehenderit optio vel ab odio commodi qui tempor soluta', NULL, NULL, '#378006', 3),
(24, 'Edward', 'Weiss', 'putywi@hotmail.com', NULL, '+984-43-9136376', 'Sint nobis qui quidem quo natus dolores voluptatibus natus proident qui dolorem exercitation aut', 'Non quidem velit ex omnis rerum quasi magni est', NULL, NULL, '#378006', 3),
(25, 'Alden', 'Rivera', 'recelolo@yahoo.com', NULL, '+211-64-9038114', 'Inventore distinctio Consequatur Ratione perferendis quis officiis dolorem aut eos culpa nihil voluptatum provident Nam officia perferendis', 'Voluptatem aute veniam aperiam vel', NULL, NULL, '#378006', 3),
(26, 'Ira', 'Sloan', 'gafad@yahoo.com', NULL, '+814-38-4634775', 'Officia repellendus Dolor fugit anim temporibus autem aut dolorem omnis tempor', 'Atque omnis iusto provident ea est voluptatum alias voluptatem Neque deserunt reprehenderit laboris', NULL, NULL, '#378006', 3),
(27, 'Raja', 'Bird', 'pozomidoko@gmail.com', NULL, '+122-52-3062808', 'Ut id in ea et tempora omnis non quae fugiat non earum error odio', 'Nisi corporis aliquid incididunt dignissimos sunt fuga Doloremque velit magni doloremque doloribus corrupti quod elit', NULL, NULL, '#378006', 3),
(28, 'Wing', 'Butler', 'wapu@gmail.com', NULL, '+451-53-2205825', 'Sit repudiandae est ea ut officia vitae voluptas quia ad tempore consequuntur ullam', 'Pariatur Inventore ipsam est quisquam omnis officia', NULL, NULL, '#378006', 3),
(29, 'Isaiah', 'Kirk', 'tidoce@gmail.com', NULL, '+762-72-3835715', 'Laudantium eum rem in repudiandae sint sit esse exercitation ea eaque illo quisquam sint iste debitis aut labore et natus', 'Ipsam officiis autem do laborum Labore sed quia praesentium qui sit aut natus laborum Consequatur Sit proident enim', NULL, NULL, '#378006', 3),
(30, 'Kirby', 'Poole', 'mawuhufi@hotmail.com', NULL, '+273-64-3456986', 'Asperiores est natus ipsum nostrud aspernatur consequatur In iste ut aut quis quo in ut quis similique voluptas', 'Aliqua A accusamus porro asperiores dolore necessitatibus illo', NULL, NULL, '#378006', 3),
(31, 'jose', 'cadenas', 'jdcadenas@gmail.com', '04266115101', '04266115101', 'caracas', 'caracas', 'caracas', '', '#378006', 1),
(32, 'Walter', 'Collins', 'qanuw@hotmail.com', NULL, '+669-41-3591010', 'Suscipit provident enim ut molestiae dolorem eos est fugiat velit voluptatem Qui aut soluta rerum voluptatibus', 'Ad quos quia obcaecati et in rerum consequatur eos blanditiis exercitationem', NULL, NULL, '#378006', 3),
(33, 'Zena', 'Wells', 'dozedybij@gmail.com', NULL, '+119-20-6139788', 'Ut placeat esse vero obcaecati sit nostrum mollit neque laboris in doloribus fuga', 'In magni proident voluptatem nihil et quia incidunt repudiandae qui unde assumenda est est deserunt quo et qui', NULL, NULL, '#378006', 3),
(34, 'Noah', 'Cross', 'vajip@hotmail.com', NULL, '+717-67-1258107', 'Nostrum sit ut error non esse non reprehenderit aute itaque nihil dolore', 'Expedita aliquip quos molestias tempore voluptas quidem ex nihil id aperiam dolor aspernatur esse', NULL, NULL, '#378006', 3),
(35, 'mireya', 'Frye', 'pujybuduc@mailinator.com', NULL, '+237-58-9258035', 'Voluptatum laudantium neque sed dolores veritatis autem esse beatae dolore ipsum tempora sed est nisi', 'Molestias laudantium laborum Nobis accusamus laboris est duis velit exercitation quos aliquip sed sed totam', NULL, NULL, '#378006', 3),
(36, 'Miriam', 'Clemons', 'somihyb@mailinator.net', NULL, '+771-18-8851114', 'Ea magni ut velit fugiat praesentium unde quidem et voluptatum nostrud', 'Quas sit voluptatem enim explicabo Qui optio officia dicta ex dolorem saepe aspernatur sunt vel eum', NULL, NULL, '#378006', 3),
(37, 'Benjamin', 'Bates', 'caxehavo@mailinator.com', NULL, '+534-34-7767548', 'Pariatur Qui magnam pariatur Voluptates autem sed atque', 'Molestiae ut omnis recusandae Dolor consectetur necessitatibus ex quo voluptas sed illo ipsam voluptatem soluta', NULL, NULL, '#378006', 3),
(38, 'Isabella', 'Rush', 'nyrunobij@mailinator.com', NULL, '+892-41-6584700', 'Voluptatem Inventore maxime eu deserunt sit et incididunt odit porro sit sit', 'Ducimus aliqua Dolorum veniam sed dolor ullamco porro itaque fugit deserunt iste enim facilis doloribus ut est qui ', NULL, NULL, '#378006', 3),
(39, 'Shaine', 'Mack', 'qodigodu@mailinator.net', NULL, '+486-57-3797190', 'Dolorem labore aliquip repudiandae ut fuga Delectus cupiditate consectetur minima velit explicabo Necessitatibus voluptate earum officiis ea', 'Nostrud culpa molestias sint quasi recusandae Et quod hic voluptatem Sit possimus est sit qui dolor', NULL, NULL, '#378006', 3),
(40, 'Xaviera', 'Schwartz', 'fowyjygu@mailinator.net', NULL, '+752-74-3359102', 'Beatae cillum ea quia laborum Vel dignissimos sint dolore', 'Eos ad recusandae Sapiente quos assumenda nostrum', NULL, NULL, '#378006', 3),
(41, 'Penelope', 'Brock', 'xevymav@mailinator.com', NULL, '+811-87-7898103', 'Aut ad sint qui ipsa qui sint praesentium veritatis qui', 'Nemo quidem unde voluptas exercitation sequi nostrud tempor ea ut culpa dolor sunt ea sint eu in', NULL, NULL, '#378006', 3),
(42, 'Cheyenne', 'George', 'telebaze@mailinator.com', NULL, '+724-75-1428218', 'Dolorem amet sit voluptatem consequatur itaque beatae ea blanditiis velit non dolor voluptatem reprehenderit nostrum consequatur Et nihil', 'Quia voluptate ipsum nulla qui soluta eos aut facilis et unde sed cupiditate rerum dolores doloribus a', NULL, NULL, '#378006', 3),
(43, 'Jakeem', 'Robbins', 'danahuta@mailinator.com', NULL, '+245-85-1579599', 'Corporis ipsa distinctio Est eligendi et quia eos', 'Non molestias et animi incidunt vel perspiciatis', NULL, NULL, '#378006', 3),
(44, 'Chase', 'Williamson', 'zenejoby@mailinator.com', NULL, '+591-98-4368169', 'Similique aliquam ut in veritatis praesentium laborum quas velit laboriosam a velit et voluptatem blanditiis molestiae sint est', 'Corporis aut voluptate nesciunt autem voluptatem consequatur', NULL, NULL, '#378006', 3),
(45, 'Evangeline', 'Hobbs', 'quwyc@mailinator.com', NULL, '+631-71-3597673', 'Provident aut enim quasi provident consequat Dolorem voluptatem odit dolore voluptate nisi sit et', 'Quia commodi vel nisi ipsa aut ex quia consequuntur laboris cum excepteur quia vero consequatur hic ad dolore est', NULL, NULL, '#378006', 3),
(46, 'Adrienne', 'Perez', 'jyqolepyti@mailinator.com', NULL, '+215-62-8301204', 'Ea cumque ut quidem laudantium minus eveniet praesentium et ut tempor aliquip', 'Ad illum rerum et hic', NULL, NULL, '#378006', 3),
(47, 'Keiko', 'Waters', 'mujen@mailinator.com', NULL, '+526-43-3881984', 'Dicta id voluptatum ipsa omnis iusto repudiandae consequuntur ipsa aliquid et non laboriosam et inventore dicta eius delectus quidem ab', 'Corporis quo eum quam officia laborum Excepturi soluta esse qui necessitatibus', NULL, NULL, '#378006', 3),
(48, 'Pascale', 'Cameron', 'leby@mailinator.net', NULL, '+293-81-9305616', 'Non eiusmod sint sed eum distinctio Aperiam', 'Voluptatem Nobis consequatur quod quia laboriosam praesentium ut', NULL, NULL, '#378006', 3),
(49, 'Timon', 'Jackson', 'vele@mailinator.net', NULL, '+815-31-1193812', 'Commodo laboris qui exercitation nihil itaque accusantium et dolor cillum obcaecati', 'Officia ut sit ea deserunt vitae quisquam quia quae sed', NULL, NULL, '#378006', 3),
(50, 'Quynn', 'Yates', 'pezuq@mailinator.net', NULL, '+884-63-9464015', 'Expedita maxime in quia voluptas et aliqua Voluptatem blanditiis in', 'Ipsa pariatur Aut placeat aut voluptates neque recusandae Obcaecati totam ratione autem', NULL, NULL, '#378006', 3),
(51, 'mireya', 'lucero', 'mieveli@gmail.com', NULL, '02129854490', '', '', NULL, NULL, '#378006', 3),
(52, 'Joshua', 'White', 'hoboxumy@mailinator.net', NULL, '+481-81-3952494', 'Possimus ea at ullamco eius mollit in sit fuga Aperiam quis proident reprehenderit aut suscipit perferendis dicta cum obcaecati sed', 'Nam quaerat eius quidem omnis amet sed aut maxime incididunt est voluptatem facere', NULL, NULL, '#378006', 3),
(53, 'Jenna', 'George', 'kycedicemu@mailinator.com', NULL, '+178-86-2738572', 'Error eiusmod molestias aliqua Veniam sint sit non voluptate quia voluptatem', 'Laborum ex consequatur delectus nisi exercitationem voluptates possimus voluptas', NULL, NULL, '#378006', 3),
(54, 'Victor', 'Carr', 'fujunur@mailinator.com', NULL, '+341-64-8532845', 'Placeat voluptatem ipsum eum et cupiditate voluptatem', 'Non ut at asperiores non asperiores et in eaque aperiam doloremque', NULL, NULL, '#378006', 3),
(55, 'Odessa', 'Malone', 'fezygo@mailinator.com', NULL, '+137-43-8172800', 'Alias voluptatibus duis omnis atque officia minima ut impedit repellendus Qui nihil quia vel eos optio sunt totam qui perspiciatis', 'Rerum ullamco assumenda unde numquam debitis dolores et explicabo Consectetur non molestias adipisci eum enim cupiditat', NULL, NULL, '#378006', 3),
(56, 'Keane', 'Hayes', 'subakiqixu@mailinator.net', NULL, '+944-15-2256391', 'Vero sed eos ex voluptatem aut dolore et nihil ut voluptas ut magnam aute beatae non laborum Nisi earum', 'Aperiam eos sunt harum corporis impedit qui adipisicing maiores sed sit', NULL, NULL, '#378006', 3),
(57, 'Scott', 'Marsh', 'hucybyb@mailinator.net', NULL, '+478-38-8600907', 'Esse laboris rerum libero odio recusandae Veritatis quae a cumque iste aliquip cupidatat', 'Ea ex reprehenderit fugit dolore voluptas sapiente occaecat obcaecati temporibus', NULL, NULL, '#378006', 3),
(58, 'Charissa', 'Oconnor', 'hego@mailinator.net', NULL, '+173-51-6296289', 'Harum dolore consequuntur praesentium cum eius et sit cillum delectus ad ipsum et', 'Recusandae Sed ducimus adipisicing in aut lorem magni sit impedit dolores dolor corrupti ipsa voluptas sit', NULL, NULL, '#378006', 3),
(59, 'Ria', 'Acevedo', 'ziqih@mailinator.net', NULL, '+341-75-7870306', 'Iure expedita sunt quaerat voluptatem et aut reprehenderit praesentium et repellendus Natus corrupti impedit cum qui', 'Quis rem cupiditate sit saepe ullamco anim quisquam doloremque et sunt sit dolore corporis porro voluptatem dolor nihil', NULL, NULL, '#378006', 3),
(60, 'Lareina', 'Hatfield', 'wirasu@mailinator.com', NULL, '+341-92-3991259', 'Aliqua Voluptatum est adipisci neque saepe numquam odio nulla unde ut est quos est ab', 'Deserunt pariatur Iste quo aliquam quis in commodi quos ex laborum Quaerat itaque quis incidunt tempora dolore sit no', NULL, NULL, '#378006', 3),
(61, 'Suki', 'Solomon', 'jigunelazu@mailinator.com', NULL, '+912-51-5683377', 'Possimus vitae aliquam iusto numquam molestias at odit sit dolor fugiat eos voluptate beatae quidem et mollit cumque', 'Veniam vel iste eveniet praesentium aliquip esse', NULL, NULL, '#378006', 3),
(62, 'Molly', 'Nunez', 'gajyki@mailinator.net', NULL, '+397-72-9540835', 'Unde rerum molestiae pariatur Pariatur Recusandae Ad aut inventore laboriosam ex consequat Incididunt molestias amet eos esse cillum', 'Labore exercitation dolorum temporibus non hic quo omnis aliquam aliquid labore eum officia', NULL, NULL, '#378006', 3),
(63, 'Dana', 'Peterson', 'namevivone@mailinator.com', NULL, '+644-84-6741232', 'Voluptatem temporibus cupidatat labore et in suscipit esse consequatur distinctio Pariatur Labore iusto veniam dolores ullam beatae dolor', 'Nesciunt vel tenetur aut nulla qui id hic incididunt aliqua Iste placeat quasi', NULL, NULL, '#378006', 3),
(64, 'Joy', 'Mcintosh', 'hoxujonaso@mailinator.net', NULL, '+733-83-5736441', 'Esse et quis facere fugiat qui nihil', 'Laudantium at adipisci alias atque qui', NULL, NULL, '#378006', 3),
(65, 'Vernon', 'Holt', 'bywuqi@mailinator.net', NULL, '+353-11-4219530', 'Eveniet officiis nihil culpa fugiat dolores sit magnam sequi cupidatat aliqua Esse est qui minima asperiores labore', 'Amet facere consequatur Quasi mollit magnam consequatur in facere pariatur Quia et enim dolorum vero', NULL, NULL, '#378006', 3),
(66, 'Amelia', 'Rivas', 'larobe@mailinator.com', NULL, '+968-66-2172638', 'Quo ut et nulla in mollitia voluptates omnis aperiam sapiente', 'Qui illum autem quia quia exercitationem et aliquid', NULL, NULL, '#378006', 3),
(67, 'Iliana', 'Valencia', 'tyjovyjyky@mailinator.com', NULL, '+372-66-8723345', 'Obcaecati id doloribus rerum tempora enim voluptates dolor magnam neque amet ut perspiciatis', 'Sint ut porro consectetur aliquip anim accusantium reprehenderit aut asperiores iusto eum sint cupidatat nihil vero', NULL, NULL, '#378006', 3),
(68, 'Leighjose', 'Dillard', 'dilyjogos@mailinator.com', NULL, '+855-95-3081265', 'Id quisquam sint totam dolor et quae voluptatum et', 'Aut minus rerum qui rerum ut sed magnam consequatur autem repudiandae voluptate quae', NULL, NULL, '#378006', 3),
(69, 'maria', 'febles', 'malegio1@hotmail.com', NULL, '04143816504', 'caurimare', 'Caracas', NULL, NULL, '#378006', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea_user_settings`
--

CREATE TABLE `ea_user_settings` (
  `id_users` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(256) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `salt` varchar(512) DEFAULT NULL,
  `working_plan` text,
  `notifications` tinyint(4) DEFAULT '0',
  `google_sync` tinyint(4) DEFAULT '0',
  `google_token` text,
  `google_calendar` varchar(128) DEFAULT NULL,
  `sync_past_days` int(11) DEFAULT '5',
  `sync_future_days` int(11) DEFAULT '5',
  `calendar_view` varchar(32) DEFAULT 'default',
  `color` varchar(7) NOT NULL DEFAULT '#378006'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_user_settings`
--

INSERT INTO `ea_user_settings` (`id_users`, `username`, `password`, `salt`, `working_plan`, `notifications`, `google_sync`, `google_token`, `google_calendar`, `sync_past_days`, `sync_future_days`, `calendar_view`, `color`) VALUES
(1, 'male', '7b60a425def5025ce3f6a8b0520ce01997e4e23b90fb5c782c7289a0e09bfa4e', '74f810055006c667747179fe55538b6f2f0e1620afd6d344b59c3b65569207d0', NULL, 0, 0, NULL, NULL, 5, 5, 'default', '#378006'),
(2, 'juan', '4b06c192f55cc32134a8a772435ce755eaae1c6b0ec8e752faeed3eaa6b99f09', '027fc13dcf20afdb60fc72f42bccad44853fe203e310fa8ee8a472ceec25e2b2', '{\"monday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"tuesday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"wednesday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"thursday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"friday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"saturday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"sunday\":null}', 0, 0, NULL, NULL, 5, 5, 'default', '#378006'),
(3, 'raul', '3e45dd5a94665a1216c0c78202a30e21f24293cf055ad1f7a054ee501fa170e5', '9309181c3182b140e354825e778b5d6174a5e7e63a2d1fc38c0a8de89cc5a234', '{\"monday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"tuesday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"wednesday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"thursday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"friday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"saturday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"sunday\":null}', 0, 0, NULL, NULL, 5, 5, 'default', '#378006'),
(6, 'secretaria', 'f692cc5c1f58163e29ba70cf5ba8498f7faef1ba723b22df9065a8dd839e121d', '0a303e709556b9abfde44245cedc5aa4e1d75fb2c9506ce9f0da67a3f94e5b67', NULL, 0, 0, NULL, NULL, 5, 5, 'default', '#378006'),
(7, 'secre2', '3c3070deab0500857c7ee568939947efa2a2ff4a4e3325774cf1d452a299f680', '9fb9dc98c89a89c7bf0796853dafef2ec51527c5de30d05239430a7c59b39d82', NULL, 0, 0, NULL, NULL, 5, 5, 'table', '#378006'),
(12, 'pedro', '88a113f6325d3cc626ab63b28ebe03602a28505c27a1bde872f46271e375834b', '9028e0a93284ebe3a7777678dc68dc028cb2fae13d0893b47b5f8b053ccc7723', '{\"monday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"tuesday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"wednesday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"thursday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"friday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"saturday\":{\"start\":\"07:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"14:00\"}]},\"sunday\":null}', 0, 0, NULL, NULL, 5, 5, 'default', '#378006'),
(31, 'jdcadenas', '41a4ea6186fd895f372b185382ed016e954f0fd441eb1d3a5f934d6543e0dacc', '6694239a694a8d00ce71edf0547d625e50b66e0df4ff7a83d7fbe426f5678679', NULL, 1, 0, NULL, NULL, 5, 5, 'default', '#378006');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `id` int(10) NOT NULL,
  `id_facturaNo` int(9) UNSIGNED ZEROFILL NOT NULL,
  `razon_social` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'factura',
  `monto` decimal(13,2) NOT NULL,
  `fecha_emision` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_cancelacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo_pago` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `facturacion`
--

INSERT INTO `facturacion` (`id`, `id_facturaNo`, `razon_social`, `tipo_documento`, `monto`, `fecha_emision`, `fecha_cancelacion`, `tipo_pago`, `estado`) VALUES
(1, 000000001, 'mi empresa .ca', 'factura', '400.00', '2018-03-28 07:00:00', '2018-03-29 10:24:23', 'efectivo', 1),
(2, 000000002, 'Sr pedro perez', 'factura', '1200.00', '2018-03-28 20:54:36', '2018-03-28 20:54:36', 'transferencia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacionCompleta`
--

CREATE TABLE `facturacionCompleta` (
  `id` int(10) NOT NULL,
  `id_factura` int(9) UNSIGNED ZEROFILL NOT NULL,
  `id_cliente` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `razon_social` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `serie` int(3) UNSIGNED ZEROFILL NOT NULL,
  `correlativo` int(6) UNSIGNED ZEROFILL NOT NULL,
  `moneda` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `monto` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_emision` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_cancelacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_pago` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(1) NOT NULL,
  `igv` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(10) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `idcitas` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(4) NOT NULL,
  `precio` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `id_factura`, `idcitas`, `cantidad`, `precio`) VALUES
(1, 1, 58, 1, '400.00'),
(2, 1, 59, 1, '600.00'),
(3, 1, 60, 2, '800.00'),
(4, 2, 61, 1, '400.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ea_appointments`
--
ALTER TABLE `ea_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users_customer` (`id_users_customer`),
  ADD KEY `id_services` (`id_services`),
  ADD KEY `id_users_provider` (`id_users_provider`);

--
-- Indices de la tabla `ea_roles`
--
ALTER TABLE `ea_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ea_secretaries_providers`
--
ALTER TABLE `ea_secretaries_providers`
  ADD PRIMARY KEY (`id_users_secretary`,`id_users_provider`),
  ADD KEY `fk_ea_secretaries_providers_1` (`id_users_secretary`),
  ADD KEY `fk_ea_secretaries_providers_2` (`id_users_provider`);

--
-- Indices de la tabla `ea_services`
--
ALTER TABLE `ea_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_service_categories` (`id_service_categories`) USING BTREE;

--
-- Indices de la tabla `ea_services_providers`
--
ALTER TABLE `ea_services_providers`
  ADD PRIMARY KEY (`id_users`,`id_services`),
  ADD KEY `id_services` (`id_services`);

--
-- Indices de la tabla `ea_service_categories`
--
ALTER TABLE `ea_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ea_settings`
--
ALTER TABLE `ea_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ea_users`
--
ALTER TABLE `ea_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_roles` (`id_roles`) USING BTREE;

--
-- Indices de la tabla `ea_user_settings`
--
ALTER TABLE `ea_user_settings`
  ADD PRIMARY KEY (`id_users`);

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcitas_appointment2` (`id_factura`),
  ADD KEY `idcitasfk` (`idcitas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ea_appointments`
--
ALTER TABLE `ea_appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `ea_roles`
--
ALTER TABLE `ea_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ea_services`
--
ALTER TABLE `ea_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ea_service_categories`
--
ALTER TABLE `ea_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ea_settings`
--
ALTER TABLE `ea_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ea_users`
--
ALTER TABLE `ea_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ea_appointments`
--
ALTER TABLE `ea_appointments`
  ADD CONSTRAINT `ea_appointments_ibfk_2` FOREIGN KEY (`id_users_customer`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ea_appointments_ibfk_3` FOREIGN KEY (`id_services`) REFERENCES `ea_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ea_appointments_ibfk_4` FOREIGN KEY (`id_users_provider`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ea_secretaries_providers`
--
ALTER TABLE `ea_secretaries_providers`
  ADD CONSTRAINT `fk_ea_secretaries_providers_1` FOREIGN KEY (`id_users_secretary`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ea_secretaries_providers_2` FOREIGN KEY (`id_users_provider`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ea_services`
--
ALTER TABLE `ea_services`
  ADD CONSTRAINT `ea_services_ibfk_1` FOREIGN KEY (`id_service_categories`) REFERENCES `ea_service_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `ea_services_providers`
--
ALTER TABLE `ea_services_providers`
  ADD CONSTRAINT `ea_services_providers_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ea_services_providers_ibfk_2` FOREIGN KEY (`id_services`) REFERENCES `ea_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ea_users`
--
ALTER TABLE `ea_users`
  ADD CONSTRAINT `ea_users_ibfk_1` FOREIGN KEY (`id_roles`) REFERENCES `ea_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ea_user_settings`
--
ALTER TABLE `ea_user_settings`
  ADD CONSTRAINT `ea_user_settings_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `idcitas_appointment1` FOREIGN KEY (`idcitas`) REFERENCES `ea_appointments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idcitas_appointment2` FOREIGN KEY (`id_factura`) REFERENCES `facturacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
