-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2018 a las 04:31:43
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `attendance_status` varchar(32) NOT NULL DEFAULT 'registered' COMMENT '[registered, checked_in]',
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
(1, '2018-01-09 08:06:37', '2018-01-16 09:15:00', '2018-01-16 11:45:00', 'Laborum velit repellendus Esse ea ipsa in nisi omnis molestias ut fugiat labore mollitia possimus', '9d25d2bde16313414338addab2762953', 'registered', 0, 3, 4, 1, NULL),
(2, '2018-01-09 08:10:39', '2018-01-15 08:09:00', '2018-01-15 14:00:00', 'otra cita', 'c40ef12f1ca7130bc340dd81e647ceda', 'registered', 0, 3, 4, 1, NULL),
(3, '2018-01-09 18:22:54', '2018-01-09 12:00:00', '2018-01-09 14:00:00', '', '33a5616775c0d3c63cc630c014a0e1a0', 'checked_in', 0, 2, 5, 1, NULL),
(5, '2018-01-10 02:02:51', '2018-01-11 03:30:00', '2018-01-11 05:00:00', '', '5b62394a69d9b29e953fcd99dcbf436d', 'checked_in', 0, 2, 8, 1, NULL),
(6, '2018-01-10 02:22:40', '2018-01-10 12:00:00', '2018-01-10 13:30:00', '', 'dd17073590f6d9e745520fc82c2d9787', 'checked_in', 0, 2, 4, 1, NULL),
(7, '2018-01-10 04:37:17', '2018-01-17 12:00:00', '2018-01-17 13:30:00', '', '95112b9a880d30c65c5f2b7684dcce12', 'registered', 0, 2, 8, 1, NULL),
(8, '2018-01-10 07:24:27', '2018-01-10 09:00:00', '2018-01-10 09:45:00', '', '4cf3cd2d0a25406bb20516f4a3fcdbb2', 'registered', 0, 3, 10, 1, NULL),
(9, '2018-01-10 07:30:31', '2018-01-19 12:00:00', '2018-01-19 12:45:00', 'wwwwwwwwwqeq', '9663647c810773bf50f07e8660ddf6a0', 'checked_in', 0, 2, 10, 1, NULL),
(10, '2018-01-10 07:32:03', '2018-01-11 09:45:00', '2018-01-11 10:45:00', '', NULL, 'registered', 1, 2, NULL, NULL, NULL),
(11, '2018-01-10 07:37:23', '2018-01-10 02:45:00', '2018-01-10 03:45:00', '', NULL, 'registered', 1, 2, NULL, NULL, NULL),
(12, '2018-01-11 04:49:16', '2018-01-11 00:00:00', '2018-01-11 00:45:00', '', 'dc566163ca472aefb57d0557a1058a1d', 'registered', 0, 2, 9, 1, NULL),
(13, '2018-01-11 10:59:19', '2018-01-25 12:00:00', '2018-01-25 12:45:00', '', 'dda9954cd033f2e105fc5ae2e63a3174', 'checked_in', 0, 2, 5, 1, NULL),
(14, '2018-01-11 11:01:06', '2018-01-12 09:30:00', '2018-01-12 11:30:00', '', '575acfcde2e3d9e8c6dd8518cc2b5d1d', 'registered', 0, 3, 11, 1, NULL),
(15, '2018-01-12 21:46:13', '2018-01-10 16:00:00', '2018-01-10 16:45:00', '', '359e6f570f2a6b7214ecbbdec5f6bcdd', 'registered', 0, 3, 8, 2, NULL),
(17, '2018-01-12 21:49:31', '2018-01-13 09:01:00', '2018-01-13 12:30:00', '', NULL, 'registered', 1, 2, NULL, NULL, NULL),
(18, '2018-01-12 22:07:00', '2018-01-12 09:30:00', '2018-01-12 10:15:00', '', '85304c229d750d31bab3bceee976eec7', 'registered', 0, 2, 5, 2, NULL),
(19, '2018-02-12 20:22:51', '2018-02-14 12:30:00', '2018-02-14 13:15:00', '', '879ea67a9d6a9cccc9f9652128c6e934', 'registered', 0, 3, 13, 4, NULL),
(20, '2018-02-12 22:21:15', '2018-02-21 10:00:00', '2018-02-21 10:45:00', '', 'faa165e116d5a5d1f8e9ad62984c13b9', 'registered', 0, 3, 13, 3, NULL),
(21, '2018-02-12 23:37:52', '2018-02-14 08:00:00', '2018-02-14 08:45:00', '', 'add6bb899a437127f9e5dfe04acd4601', 'registered', 0, 2, 13, 4, NULL),
(22, '2018-02-13 02:25:51', '2018-02-01 09:00:00', '2018-02-01 09:45:00', '', 'c2e3f2aaabd08e1c790b98d2f5b3d888', 'registered', 0, 2, 13, 3, NULL),
(23, '2018-02-13 02:29:00', '2018-02-16 10:30:00', '2018-02-16 11:15:00', '', 'ebbc24225b3559ed7d4570c49c69d3ad', 'registered', 0, 2, 13, 4, NULL),
(24, '2018-02-13 02:58:57', '2018-02-12 07:30:00', '2018-02-12 08:15:00', '', '24d6cb057ac88084e32da69290f53b65', 'registered', 0, 12, 4, 2, NULL),
(25, '2018-02-13 17:32:56', '2018-02-15 08:00:00', '2018-02-15 10:00:00', '', '6a7f68b76df6186c1734876428b07cf9', 'registered', 0, 2, 4, 1, NULL),
(26, '2018-02-13 17:34:10', '2018-02-21 09:00:00', '2018-02-21 09:30:00', '', '2925a77879d88fb59272b535b11fa86d', 'registered', 0, 2, 8, 1, NULL),
(27, '2018-02-13 17:40:46', '2018-02-09 09:00:00', '2018-02-09 12:00:00', '', '24282220b5d1de4147cea6934dda95c3', 'registered', 0, 2, 8, 1, NULL),
(28, '2018-02-13 22:11:40', '2018-02-15 01:00:00', '2018-02-15 23:53:00', '', NULL, 'registered', 1, 12, NULL, NULL, NULL),
(29, '2018-02-14 03:34:48', '2018-02-14 14:00:00', '2018-02-14 15:30:00', '', '0fb47f404127e44711f1a0b07907fb52', 'registered', 0, 2, 15, 1, NULL),
(30, '2018-02-14 15:58:33', '2018-02-14 16:15:00', '2018-02-14 17:00:00', 'A ex et laborum consequatur atque aut repellendus Consequat Sunt fugiat esse temporibus rerum', 'ba54e59427579459267a2f2237080a72', 'registered', 0, 2, 16, 5, NULL),
(31, '2018-02-14 16:35:03', '2018-02-15 16:15:00', '2018-02-15 17:00:00', 'Labore nihil dolorem voluptate aut enim assumenda laboriosam qui tenetur fugiat', '6b462f348a8eb689bc98ab865f32af9c', 'registered', 0, 3, 17, 2, NULL),
(32, '2018-02-14 16:40:39', '2018-02-16 09:30:00', '2018-02-16 11:00:00', 'Aut beatae porro dolore aperiam perspiciatis nobis', '098b858b4ae4b58b193f577389889d4e', 'registered', 0, 12, 18, 1, NULL),
(33, '2018-02-14 16:44:57', '2018-02-15 08:30:00', '2018-02-15 09:15:00', 'Aperiam sed qui consectetur libero explicabo Aut', '9d69b2ca47799902d9595ab496bcbb2b', 'registered', 0, 3, 19, 2, NULL),
(34, '2018-02-14 16:49:01', '2018-02-15 14:00:00', '2018-02-15 15:30:00', 'Inventore quia accusamus porro molestias a reprehenderit', 'f047cde7e6fdde900843afdb3827c1c9', 'registered', 0, 2, 20, 1, NULL),
(35, '2018-02-15 01:31:45', '2018-02-16 07:30:00', '2018-02-16 10:00:00', '', 'e6a80aa5c27bd49e296777e32d7fcabd', 'checked_in', 0, 2, 21, 1, NULL);

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
  `user_settings` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ea_roles`
--

INSERT INTO `ea_roles` (`id`, `name`, `slug`, `is_admin`, `appointments`, `customers`, `services`, `users`, `system_settings`, `user_settings`) VALUES
(1, 'Administrator', 'admin', 1, 15, 15, 15, 15, 15, 15),
(2, 'Provider', 'provider', 0, 15, 15, 0, 0, 0, 15),
(3, 'Customer', 'customer', 0, 0, 0, 0, 0, 0, 0),
(4, 'Secretary', 'secretary', 0, 15, 15, 0, 0, 0, 15);

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
(1, 'alquiler consultorio 1', 90, '120000.00', 'Bs', 'consultorio 1 terapia', 'flexible', 2, 1),
(2, 'alquiler consultorio 2', 45, '60000.00', 'Bs.', 'fisioterapia', 'fixed', 1, 1),
(3, 'Alquiler consultorio 3', 45, '60000.00', 'Bs.', '', 'flexible', 1, 1),
(4, 'Alquiler Consultorio 4', 45, '60000.00', 'Bs.', 'Juegos grupos', 'flexible', 1, 1),
(5, 'consulta psicologia', 45, '60000.00', 'Bs', '', 'fixed', 10, NULL);

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
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(12, 1),
(12, 2);

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
(1, 'alquiler por tiempo', 'alquiler por tiempo');

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
(1, 'company_working_plan', '{"sunday":{"start":"09:00","end":"18:00","breaks":[]},"monday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"tuesday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"wednesday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"thursday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"friday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"saturday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]}}'),
(2, 'book_advance_timeout', '15'),
(3, 'google_analytics_code', ''),
(4, 'customer_notifications', '0'),
(5, 'date_format', 'DMY'),
(6, 'require_captcha', '0'),
(7, 'company_name', 'CIAN Centro Integral de Ayuda al Niño'),
(8, 'company_email', 'cian@gmail.com'),
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
(2, 'Juan', 'Rodríguez', 'juan@doe.com', '3224', '0123456789', '', '', '', 'ghhgh', '#000080', 2),
(3, 'Raul', 'Ward', 'daxy@hotmail.com', '591', '+752-81-3474786', 'Exercitationem autem cum at dicta', 'Hic voluptatem In exercitationem at', 'Perferendis dicta voluptas quia enim ducimus in sit atque anim veniam aut est', 'Pariatur Exercitation quia tempora fugit cillum', '#850115', 2),
(4, 'Cherokee', 'Love', 'qaqo@yahoo.com', NULL, '+668-31-7315991', 'Dignissimos numquam nobis officia qui temporibus saepe rerum nemo doloribus necessitatibus', 'Minima omnis duis eum quia dolores eum nihil quasi dolore non laboriosam', NULL, NULL, '#378006', 3),
(5, 'Justina', 'Dejesus', 'qorufem@yahoo.com', NULL, '+535-79-1364124', 'Reprehenderit laborum ad libero quasi quia enim illum quia ullamco eius', 'Saepe excepturi aute deserunt aute eos', NULL, 'Deleniti sit voluptatum qui ad qui perferendis neque ipsa quod ea dolore do ut et laboriosam soluta', '#378006', 3),
(6, 'Ali', 'Cortez', 'galewyn@hotmail.com', '806', '+532-70-3610975', 'Sit culpa maxime labore velit dolorum aliquip ea officiis fuga Vero dolore', 'Cupiditate non est cupiditate magna dolor velit', 'Nesciunt rem enim proident ut repudiandae qui est officia dolore distinctio Eos', 'Fugiat quo assumenda odio accusantium qui et dolor', '#378006', 4),
(7, 'Gay', 'Burris', 'zazykimeq@gmail.com', '721', '+159-52-7042976', 'Mollit a consectetur est ad elit possimus est modi nihil accusantium quibusdam omnis voluptatibus placeat optio voluptatem ipsa', 'Ut voluptatem qui ex et repellendus Voluptatem amet rerum commodo molestiae voluptatem', 'Et enim perspiciatis ut commodi fuga Non dolor voluptates dolor voluptatem', 'Voluptatum elit quia deleniti labore perspiciatis aut quis nulla quo molestiae accusantium quam adipisci eum magna nostrum delectus sit duis', '#378006', 4),
(8, 'Mercedes', 'Cox', 'tifuwu@gmail.com', NULL, '+935-33-7261364', 'Sit voluptatibus quaerat fugit dignissimos qui proident voluptas corporis fugiat sed', 'Distinctio Proident iure sit ipsa quo omnis labore cum quaerat ut ducimus in', NULL, 'Est quidem sequi dolores quos ea quaerat occaecat minima aliquip', '#378006', 3),
(9, 'nombre1', 'apellido1', 'hjhj@gmail.com', NULL, '12312313', '2323', '123', NULL, NULL, '#378006', 3),
(10, 'we', 'qeqe', 'qweq@gmail.com', NULL, '434234242', '', '', NULL, NULL, '#378006', 3),
(11, 'uyuyii', 'uiuouio', 'jhh@gg.com', NULL, '4345354353', 'ytyututu', 'hhjk', NULL, '', '#378006', 3),
(12, 'pedro', 'perez', 'wewqwe@ve.com', '123123', '123133', '345345', '4535', '435', '', '#ffff00', 2),
(13, 'jose', 'cadenas', 'jdcadenas@gmail.com', NULL, '04266115101', 'caracas', 'caracas', NULL, NULL, '#378006', 3),
(14, 'Blossom', 'Quinn', 'wusazer@yahoo.com', NULL, '+298-34-5773298', 'Ut amet nisi sint cillum nisi dolorem fugit ea dolor aliquid perspiciatis fugit neque quia iste id cum', 'Distinctio Culpa sint consequatur Aliquid molestias rerum voluptatibus atque magni iure', NULL, 'Deserunt nulla maiores quia enim vero aut minus proident laboris dicta adipisci id', '#378006', 3),
(15, 'jose2', 'cadenas2', 'jdcadenas2@gmail.com', NULL, '04266115101', '', '', NULL, NULL, '#378006', 3),
(16, 'Lionel', 'Barton', 'nixylo@yahoo.com', NULL, '+972-60-8725513', 'Debitis aperiam earum velit rem temporibus', 'Omnis anim quia aut odit voluptas voluptas fugit tempore voluptate dicta eligendi anim alias', NULL, NULL, '#378006', 3),
(17, 'Leonard', 'Harrell', 'wimadago@gmail.com', NULL, '+357-14-5851189', 'Molestiae consectetur fugiat deserunt assumenda qui velit nihil suscipit quas ipsa sunt eu fugit est suscipit duis', 'Quia aut corporis non deserunt facilis anim fugiat irure molestiae eaque laboris', NULL, NULL, '#378006', 3),
(18, 'Allen', 'Perry', 'zefo@hotmail.com', NULL, '+339-39-9710347', 'Veritatis a dolor delectus quo nulla dolore alias dolor ut quibusdam omnis irure', 'Cupidatat itaque et quis in sint accusamus nulla reprehenderit minus temporibus itaque nostrum velit quam in', NULL, NULL, '#378006', 3),
(19, 'Kalia', 'Elliott', 'nobudazu@gmail.com', NULL, '+966-61-5705687', 'Dolore blanditiis eaque modi ut qui qui magnam amet voluptatum quia eligendi', 'Veritatis in est mollit elit hic ut ipsam quaerat in voluptatem et excepteur hic excepteur mollitia eum', NULL, NULL, '#378006', 3),
(20, 'Seth', 'Maddox', 'gemi@hotmail.com', NULL, '+238-63-1360227', 'Vel voluptatem Ipsum ratione temporibus eiusmod et voluptas architecto eiusmod', 'Voluptatibus labore mollit ut esse in magnam autem quis in duis hic irure quo rerum eos', NULL, NULL, '#378006', 3),
(21, 'jose', 'cadenas', 'qff@gmail.com', NULL, '04266115101', '', '', NULL, NULL, '#378006', 3);

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
(2, 'juan', '4b06c192f55cc32134a8a772435ce755eaae1c6b0ec8e752faeed3eaa6b99f09', '027fc13dcf20afdb60fc72f42bccad44853fe203e310fa8ee8a472ceec25e2b2', '{"sunday":null,"monday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"tuesday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"wednesday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"thursday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"friday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"saturday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]}}', 0, 0, NULL, NULL, 5, 5, 'default', '#378006'),
(3, 'raul', '3e45dd5a94665a1216c0c78202a30e21f24293cf055ad1f7a054ee501fa170e5', '9309181c3182b140e354825e778b5d6174a5e7e63a2d1fc38c0a8de89cc5a234', '{"sunday":null,"monday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"tuesday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"wednesday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"thursday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"friday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"saturday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]}}', 0, 0, NULL, NULL, 5, 5, 'default', '#378006'),
(6, 'secretaria', 'f692cc5c1f58163e29ba70cf5ba8498f7faef1ba723b22df9065a8dd839e121d', '0a303e709556b9abfde44245cedc5aa4e1d75fb2c9506ce9f0da67a3f94e5b67', NULL, 0, 0, NULL, NULL, 5, 5, 'default', '#378006'),
(7, 'secre2', '3c3070deab0500857c7ee568939947efa2a2ff4a4e3325774cf1d452a299f680', '9fb9dc98c89a89c7bf0796853dafef2ec51527c5de30d05239430a7c59b39d82', NULL, 0, 0, NULL, NULL, 5, 5, 'table', '#378006'),
(12, 'pedro', '88a113f6325d3cc626ab63b28ebe03602a28505c27a1bde872f46271e375834b', '9028e0a93284ebe3a7777678dc68dc028cb2fae13d0893b47b5f8b053ccc7723', '{"sunday":null,"monday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"tuesday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"wednesday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"thursday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"friday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]},"saturday":{"start":"07:00","end":"18:00","breaks":[{"start":"12:00","end":"14:00"}]}}', 0, 0, NULL, NULL, 5, 5, 'default', '#378006');

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
  ADD KEY `id_service_categories` (`id_service_categories`);

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
  ADD KEY `id_roles` (`id_roles`);

--
-- Indices de la tabla `ea_user_settings`
--
ALTER TABLE `ea_user_settings`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ea_appointments`
--
ALTER TABLE `ea_appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `ea_roles`
--
ALTER TABLE `ea_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ea_services`
--
ALTER TABLE `ea_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ea_service_categories`
--
ALTER TABLE `ea_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ea_settings`
--
ALTER TABLE `ea_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `ea_users`
--
ALTER TABLE `ea_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
