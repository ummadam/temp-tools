-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3307
-- Время создания: Янв 09 2020 г., 11:05
-- Версия сервера: 10.1.40-MariaDB-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `temptools`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-12-11 01:13:09', '2019-12-11 01:13:09'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-12-11 01:13:09', '2019-12-11 01:13:09');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(9, 'Насосы', 'nasosy', NULL, '2019-12-18 18:00:00', NULL),
(18, 'Компрессоры', 'compressory', NULL, NULL, NULL),
(19, 'Сварки', 'svarki', NULL, NULL, NULL),
(20, 'Генераторы', 'generatory', NULL, NULL, NULL),
(21, 'Регуляторы напряжения', 'regulyatory-napryajeniya', NULL, NULL, NULL),
(22, 'Мойки высокого давления', 'moiky-visokogo-urovnya', NULL, NULL, NULL),
(23, 'Сварочные аппараты', 'svarocniye-apparaty', NULL, NULL, NULL),
(24, 'Трансформаторы', 'transformatory', NULL, NULL, NULL),
(25, 'Перемалыватели', 'peremalivately', NULL, NULL, NULL),
(26, 'Регуляторы температуры', 'regulyatory-temperatury', NULL, NULL, NULL),
(60, 'Наружние насосы', 'naruzhnie-nasosy', 9, NULL, NULL),
(61, 'Погружные насосы', 'pogruzhnye-nasosy', 9, NULL, NULL),
(62, 'Насосы для бассейна', 'nasosy-dlya-basseyna', 9, NULL, NULL),
(63, 'Погружные фекальные насосы', 'pogruzhnye-fekal-nye-nasosy', 9, NULL, NULL),
(64, 'Скважинные насосы', 'skvazhinnye-nasosy', 9, NULL, NULL),
(65, 'Вибрационные насосы', 'vibracionnye-nasosy', 9, NULL, NULL),
(66, 'Бензиновые насосы', 'benzinovye-nasosy', 9, NULL, NULL),
(67, 'Вакуумные насосы', 'vakuumnye-nasosy', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 164, 61, NULL, NULL),
(2, 165, 61, NULL, NULL),
(3, 166, 62, NULL, NULL),
(4, 167, 62, NULL, NULL),
(5, 168, 62, NULL, NULL),
(6, 169, 63, NULL, NULL),
(7, 170, 63, NULL, NULL),
(8, 171, 60, NULL, NULL),
(9, 172, 64, NULL, NULL),
(10, 173, 64, NULL, NULL),
(11, 174, 64, NULL, NULL),
(12, 175, 64, NULL, NULL),
(13, 176, 64, NULL, NULL),
(14, 177, 64, NULL, NULL),
(15, 178, 64, NULL, NULL),
(16, 179, 64, NULL, NULL),
(17, 180, 64, NULL, NULL),
(18, 181, 64, NULL, NULL),
(19, 182, 64, NULL, NULL),
(20, 183, 64, NULL, NULL),
(21, 184, 60, NULL, NULL),
(22, 185, 65, NULL, NULL),
(23, 186, 65, NULL, NULL),
(24, 187, 65, NULL, NULL),
(25, 188, 61, NULL, NULL),
(26, 189, 61, NULL, NULL),
(27, 190, 61, NULL, NULL),
(28, 191, 61, NULL, NULL),
(29, 192, 61, NULL, NULL),
(30, 193, 61, NULL, NULL),
(31, 194, 61, NULL, NULL),
(32, 195, 66, NULL, NULL),
(33, 196, 66, NULL, NULL),
(34, 197, 66, NULL, NULL),
(35, 198, 67, NULL, NULL),
(36, 199, 67, NULL, NULL),
(37, 200, 67, NULL, NULL),
(38, 201, 67, NULL, NULL),
(39, 202, 67, NULL, NULL),
(40, 203, 60, NULL, NULL),
(41, 204, 60, NULL, NULL),
(42, 205, 60, NULL, NULL),
(43, 206, 60, NULL, NULL),
(44, 207, 67, NULL, NULL),
(46, 163, 60, '2020-01-08 22:38:20', '2020-01-08 22:38:20');

-- --------------------------------------------------------

--
-- Структура таблицы `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Доллар', 420, '2019-12-11 01:12:55', '2019-12-26 10:07:40');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_bin,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(2, 1, 'author_id', 'text', 'Автор', 1, 0, 1, 1, 0, 1, '\"\"', 2),
(3, 1, 'category_id', 'text', 'Категория', 1, 0, 1, 1, 1, 0, '\"\"', 3),
(4, 1, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '\"\"', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '\"\"', 6),
(7, 1, 'image', 'image', 'Рисунок публикации', 0, 1, 1, 1, 1, 1, '\"{\\\"resize\\\":{\\\"width\\\":\\\"1000\\\",\\\"height\\\":\\\"null\\\"},\\\"quality\\\":\\\"70%\\\",\\\"upsize\\\":true,\\\"thumbnails\\\":[{\\\"name\\\":\\\"medium\\\",\\\"scale\\\":\\\"50%\\\"},{\\\"name\\\":\\\"small\\\",\\\"scale\\\":\\\"25%\\\"},{\\\"name\\\":\\\"cropped\\\",\\\"crop\\\":{\\\"width\\\":\\\"300\\\",\\\"height\\\":\\\"250\\\"}}]}\"', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '\"{\\\"slugify\\\":{\\\"origin\\\":\\\"title\\\",\\\"forceUpdate\\\":true}}\"', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '\"\"', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '\"\"', 10),
(11, 1, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"DRAFT\\\",\\\"options\\\":{\\\"PUBLISHED\\\":\\\"published\\\",\\\"DRAFT\\\":\\\"draft\\\",\\\"PENDING\\\":\\\"pending\\\"}}\"', 11),
(12, 1, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 0, 0, 0, '\"\"', 12),
(13, 1, 'updated_at', 'timestamp', 'Дата изменения', 0, 0, 0, 0, 0, 0, '\"\"', 13),
(14, 2, 'id', 'number', 'id', 1, 1, 1, 1, 1, 1, '\"\"', 1),
(16, 2, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(26, 3, 'id', 'number', 'id', 1, 1, 1, 1, 1, 1, '\"\"', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '\"\"', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '\"\"', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '\"\"', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"\\\",\\\"null\\\":\\\"\\\",\\\"options\\\":{\\\"\\\":\\\"-- None --\\\"},\\\"relationship\\\":{\\\"key\\\":\\\"id\\\",\\\"label\\\":\\\"name\\\"}}\"', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":1}\"', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '\"{\\\"slugify\\\":{\\\"origin\\\":\\\"name\\\"}}\"', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '\"\"', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '\"\"', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '\"\"', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '\"\"', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '\"\"', 9),
(54, 3, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(55, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '\"\"', 1),
(56, 7, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"{\\\"validation\\\":{\\\"rule\\\":\\\"max:100\\\"}}\"', 2),
(57, 7, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(58, 7, 'details', 'text', 'Details', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(59, 7, 'price', 'number', 'price', 0, 1, 1, 1, 1, 1, '\"{\\\"validation\\\":{\\\"rule\\\":\\\"required|regex:\\/^\\\\\\\\d*(\\\\\\\\.\\\\\\\\d{1,2})?$\\/\\\"}}\"', 5),
(60, 7, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '\"\"', 6),
(61, 7, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '\"{\\\"on\\\":\\\"Yes\\\",\\\"off\\\":\\\"No\\\"}\"', 7),
(62, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '\"{\\\"quality\\\":\\\"70%\\\",\\\"thumbnails\\\":[{\\\"name\\\":\\\"medium\\\",\\\"scale\\\":\\\"50%\\\"},{\\\"name\\\":\\\"small\\\",\\\"scale\\\":\\\"25%\\\"},{\\\"name\\\":\\\"cropped\\\",\\\"crop\\\":{\\\"width\\\":\\\"300\\\",\\\"height\\\":\\\"250\\\"}}]}\"', 8),
(63, 7, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '\"\"', 9),
(64, 7, 'created_at', 'timestamp', 'Created At', 1, 0, 1, 1, 1, 1, '\"\"', 10),
(65, 7, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 1, 1, '\"\"', 11),
(66, 7, 'quantity', 'number', 'Quantity', 0, 1, 1, 1, 1, 1, '\"\"', 8),
(67, 8, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '\"\"', 1),
(69, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 3),
(70, 8, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, '\"{\\\"null\\\":\\\"\\\"}\"', 4),
(72, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '\"\"', 6),
(73, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '\"\"', 7),
(74, 9, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '\"\"', 1),
(75, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(76, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(77, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(78, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(79, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(80, 10, 'product_id', 'number', 'Product Id', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(81, 10, 'category_id', 'number', 'Category Id', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(82, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(83, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(84, 11, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '\"\"', 1),
(85, 11, 'user_id', 'number', 'User Id', 1, 1, 1, 0, 0, 0, '\"\"', 2),
(86, 11, 'billing_email', 'text', 'Billing Email', 1, 1, 1, 1, 1, 0, '\"\"', 3),
(87, 11, 'billing_name', 'text', 'Billing Name', 1, 1, 1, 1, 1, 0, '\"\"', 4),
(88, 11, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 0, '\"\"', 5),
(89, 11, 'billing_city', 'text', 'Billing City', 1, 1, 1, 1, 1, 0, '\"\"', 6),
(92, 11, 'billing_phone', 'text', 'Billing Phone', 1, 0, 1, 1, 1, 0, '\"\"', 9),
(98, 11, 'billing_total', 'number', 'Total', 1, 1, 1, 0, 0, 0, '\"\"', 15),
(100, 11, 'shipped', 'checkbox', 'Shipped', 1, 1, 1, 1, 0, 0, '\"{\\\"on\\\":\\\"Yes\\\",\\\"off\\\":\\\"No\\\"}\"', 17),
(101, 11, 'error', 'text', 'Error', 0, 1, 1, 0, 0, 0, '\"\"', 18),
(102, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 19),
(103, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 20),
(107, 2, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 1, 1, NULL, 4),
(108, 2, 'updated_at', 'timestamp', 'Дата обновления', 0, 1, 1, 1, 1, 1, NULL, 5),
(109, 14, 'product_id', 'number', 'Product_id', 1, 1, 1, 1, 1, 1, NULL, 1),
(110, 14, 'specification_id', 'number', 'Specification_id', 1, 1, 1, 1, 1, 1, NULL, 2),
(111, 14, 'value', 'text', 'Значение', 1, 1, 1, 1, 1, 1, NULL, 3),
(112, 14, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 1, 1, NULL, 4),
(113, 14, 'updated_at', 'timestamp', 'Дата обновления', 0, 1, 1, 1, 1, 1, NULL, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_bin NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_bin NOT NULL,
  `icon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-12-11 01:12:56', '2019-12-11 01:12:56'),
(2, 'specifications', 'specifications', 'Характеристика', 'Характеристики', 'voyager-file-text', 'App\\Specification', NULL, '', '', 1, 1, NULL, '2019-12-11 01:12:56', '2019-12-11 01:12:56'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\UsersController', '', 1, 0, NULL, '2019-12-11 01:12:56', '2019-12-11 01:12:56'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-12-11 01:12:56', '2019-12-11 01:12:56'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-11 01:12:56', '2019-12-11 01:12:56'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-12-11 01:12:56', '2019-12-11 01:12:56'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, '\\App\\Http\\Controllers\\Voyager\\ProductsController', '', 1, 1, NULL, '2019-12-11 01:13:13', '2019-12-11 01:13:13'),
(8, 'currency', 'currency', 'Валюта', 'Валюты', 'voyager-dollar', 'App\\Currency', NULL, '', '', 1, 0, NULL, '2019-12-11 01:13:13', '2019-12-11 01:13:13'),
(9, 'category', 'category', 'Category', 'Categories', 'voyager-tag', 'App\\Category', NULL, '', '', 1, 0, NULL, '2019-12-11 01:13:13', '2019-12-11 01:13:13'),
(10, 'category-product', 'category-product', 'Category Product', 'Category Products', 'voyager-categories', 'App\\CategoryProduct', NULL, '', '', 1, 0, NULL, '2019-12-11 01:13:13', '2019-12-11 01:13:13'),
(11, 'orders', 'orders', 'Заказ', 'Заказы', 'voyager-documentation', 'App\\Order', NULL, '\\App\\Http\\Controllers\\Voyager\\OrdersController', '', 1, 0, NULL, '2019-12-11 01:13:13', '2019-12-11 01:13:13'),
(13, 'pages', 'pages', 'Page', 'Pages', NULL, 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(14, 'product-specifications', 'product-specifications', 'Характеристика товара', 'Характеристики товаров', NULL, 'App\\Product_Specs', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-11 01:12:59', '2019-12-11 01:12:59'),
(2, 'main', '2019-12-11 01:13:18', '2019-12-11 01:13:18'),
(3, 'footer', '2019-12-11 01:13:18', '2019-12-11 01:13:18');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `target` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parameters` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-12-11 01:13:00', '2019-12-11 01:13:00', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2019-12-11 01:13:00', '2019-12-11 01:13:19', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 10, '2019-12-11 01:13:00', '2019-12-11 01:13:19', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2019-12-11 01:13:00', '2019-12-11 01:13:19', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 13, '2019-12-11 01:13:00', '2019-12-24 00:45:25', 'voyager.categories.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2019-12-11 01:13:00', '2019-12-11 01:13:19', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2019-12-11 01:13:00', '2019-12-24 00:45:25', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2019-12-11 01:13:01', '2019-12-11 01:13:19', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2019-12-11 01:13:01', '2019-12-11 01:13:19', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2019-12-11 01:13:01', '2019-12-11 01:13:19', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2019-12-11 01:13:01', '2019-12-24 00:45:25', 'voyager.settings.index', NULL),
(13, 1, 'Orders', '/admin/orders', '_self', 'voyager-documentation', NULL, NULL, 2, '2019-12-11 01:13:18', '2019-12-11 01:13:18', NULL, NULL),
(14, 1, 'Products', '/admin/products', '_self', 'voyager-bag', NULL, NULL, 3, '2019-12-11 01:13:18', '2019-12-11 01:13:18', NULL, NULL),
(15, 1, 'Categories', '/admin/category', '_self', 'voyager-tag', NULL, NULL, 4, '2019-12-11 01:13:18', '2019-12-11 01:13:18', NULL, NULL),
(16, 1, 'Валюта', '/admin/currency', '_self', 'voyager-dollar', '#000000', NULL, 5, '2019-12-11 01:13:19', '2019-12-26 09:43:00', NULL, ''),
(17, 1, 'Category Products', '/admin/category-product', '_self', 'voyager-categories', NULL, NULL, 6, '2019-12-11 01:13:19', '2019-12-11 01:13:19', NULL, NULL),
(18, 2, 'Каталог', '', '_self', NULL, NULL, NULL, 1, '2019-12-11 01:13:19', '2019-12-11 01:13:19', 'shop.index', NULL),
(19, 2, 'О компании', '#', '_self', NULL, NULL, NULL, 2, '2019-12-11 01:13:19', '2019-12-11 01:13:19', NULL, NULL),
(20, 2, 'Блог', '#', '_self', NULL, NULL, NULL, 2, '2019-12-11 01:13:19', '2019-12-11 01:13:19', NULL, NULL),
(21, 3, 'Follow Me:', '', '_self', NULL, NULL, NULL, 1, '2019-12-11 01:13:19', '2019-12-11 01:13:19', NULL, NULL),
(22, 3, 'fa-globe', 'http://andremadarang.com', '_self', NULL, NULL, NULL, 2, '2019-12-11 01:13:19', '2019-12-11 01:13:19', NULL, NULL),
(23, 3, 'fa-youtube', 'http://youtube.com/drehimself', '_self', NULL, NULL, NULL, 2, '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL, NULL),
(24, 3, 'fa-github', 'http://github.com/drehimself', '_self', NULL, NULL, NULL, 2, '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL, NULL),
(25, 3, 'fa-twitter', 'http://twitter.com/drehimself', '_self', NULL, NULL, NULL, 2, '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL, NULL),
(29, 1, 'Харктеристики', '/admin/specifications', '_self', 'voyager-file-text', '#000000', NULL, 14, '2019-12-24 01:03:37', '2019-12-25 01:36:10', NULL, ''),
(30, 1, 'Харктеристики товаров', '/admin/product-specifications', '_self', 'voyager-settings', '#000000', NULL, 15, '2019-12-24 04:57:31', '2019-12-25 01:37:23', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_bin NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2017_11_26_013050_add_user_role_relationship', 1),
(25, '2017_11_26_015000_create_user_roles_table', 1),
(26, '2017_12_11_054653_create_products_table', 1),
(27, '2018_01_11_060124_create_category_table', 1),
(28, '2018_01_11_060548_create_category_product_table', 1),
(29, '2018_01_14_215535_create_coupons_table', 1),
(30, '2018_02_08_021546_add_image_to_products_table', 1),
(31, '2018_02_08_032544_add_images_to_products_table', 1),
(32, '2018_02_25_005243_create_orders_table', 1),
(33, '2018_02_25_010522_create_order_product_table', 1),
(34, '2018_03_11_000000_add_user_settings', 1),
(35, '2018_03_14_000000_add_details_to_data_types_table', 1),
(36, '2018_03_16_000000_make_settings_value_nullable', 1),
(37, '2018_04_23_011947_add_user_role_relationship_fix', 1),
(38, '2018_04_23_012009_create_user_roles_table_fix', 1),
(39, '2018_06_29_032914_add_quantity_to_products_table', 1),
(40, '2019_12_17_100811_alter_category_table', 2),
(41, '2019_12_19_145916_alter_category_table', 3),
(42, '2019_12_24_075252_create_specs_table', 4),
(43, '2019_12_24_111711_create_product_product_spec_table', 5),
(44, '2019_12_24_112343_create_product_spec_table', 6),
(45, '2019_12_24_114544_create_product_spec_table', 7),
(46, '2019_12_23_143748_create_specifications_table', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `billing_total` int(11) NOT NULL,
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `error` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_phone`, `billing_total`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(19, 2, 'alimzhanova_dinara90@mail.ru', 'sdfdsf', 'sdfsdf', 'sdfdf', '+7(705)1810445', 71, 0, NULL, '2019-12-27 03:50:17', '2019-12-27 03:50:17');

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, '2019-12-11 01:12:55', '2019-12-11 01:12:55'),
(2, NULL, NULL, 1, '2019-12-11 01:12:55', '2019-12-11 01:12:55'),
(3, NULL, NULL, 1, '2019-12-11 01:12:56', '2019-12-11 01:12:56'),
(4, NULL, NULL, 1, '2019-12-11 01:12:56', '2019-12-11 01:12:56'),
(5, NULL, NULL, 1, '2019-12-11 01:12:56', '2019-12-11 01:12:56'),
(6, NULL, NULL, 1, '2019-12-11 01:12:56', '2019-12-11 01:12:56'),
(7, NULL, 163, 3, '2019-12-26 11:43:48', '2019-12-26 11:43:48'),
(8, NULL, 163, 3, '2019-12-26 11:44:27', '2019-12-26 11:44:27'),
(9, NULL, 163, 2, '2019-12-26 22:35:10', '2019-12-26 22:35:10'),
(10, NULL, 163, 2, '2019-12-26 23:04:12', '2019-12-26 23:04:12'),
(11, NULL, 163, 2, '2019-12-26 23:04:29', '2019-12-26 23:04:29'),
(12, NULL, 163, 2, '2019-12-26 23:15:01', '2019-12-26 23:15:01'),
(13, NULL, 163, 2, '2019-12-26 23:51:52', '2019-12-26 23:51:52'),
(14, NULL, 164, 1, '2019-12-26 23:55:41', '2019-12-26 23:55:41'),
(15, NULL, 164, 1, '2019-12-26 23:59:28', '2019-12-26 23:59:28'),
(16, NULL, 164, 1, '2019-12-27 00:09:58', '2019-12-27 00:09:58'),
(17, NULL, 164, 1, '2019-12-27 00:19:14', '2019-12-27 00:19:14'),
(18, NULL, 164, 1, '2019-12-27 00:23:02', '2019-12-27 00:23:02'),
(19, NULL, 164, 2, '2019-12-27 00:39:26', '2019-12-27 00:39:26'),
(20, NULL, 164, 1, '2019-12-27 00:49:19', '2019-12-27 00:49:19'),
(21, NULL, 164, 1, '2019-12-27 01:08:39', '2019-12-27 01:08:39'),
(22, 19, 164, 1, '2019-12-27 03:50:17', '2019-12-27 03:50:17');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `excerpt` text COLLATE utf8_bin,
  `body` text COLLATE utf8_bin,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_description` text COLLATE utf8_bin,
  `meta_keywords` text COLLATE utf8_bin,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_bin NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-12-11 01:13:10', '2019-12-11 01:13:10');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `token` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2019-12-11 01:13:01', '2019-12-11 01:13:01', NULL),
(2, 'browse_bread', NULL, '2019-12-11 01:13:01', '2019-12-11 01:13:01', NULL),
(3, 'browse_database', NULL, '2019-12-11 01:13:02', '2019-12-11 01:13:02', NULL),
(4, 'browse_media', NULL, '2019-12-11 01:13:02', '2019-12-11 01:13:02', NULL),
(5, 'browse_compass', NULL, '2019-12-11 01:13:02', '2019-12-11 01:13:02', NULL),
(6, 'browse_menus', 'menus', '2019-12-11 01:13:02', '2019-12-11 01:13:02', NULL),
(7, 'read_menus', 'menus', '2019-12-11 01:13:02', '2019-12-11 01:13:02', NULL),
(8, 'edit_menus', 'menus', '2019-12-11 01:13:02', '2019-12-11 01:13:02', NULL),
(9, 'add_menus', 'menus', '2019-12-11 01:13:03', '2019-12-11 01:13:03', NULL),
(10, 'delete_menus', 'menus', '2019-12-11 01:13:03', '2019-12-11 01:13:03', NULL),
(11, 'browse_pages', 'pages', '2019-12-11 01:13:03', '2019-12-11 01:13:03', NULL),
(12, 'read_pages', 'pages', '2019-12-11 01:13:03', '2019-12-11 01:13:03', NULL),
(13, 'edit_pages', 'pages', '2019-12-11 01:13:03', '2019-12-11 01:13:03', NULL),
(14, 'add_pages', 'pages', '2019-12-11 01:13:03', '2019-12-11 01:13:03', NULL),
(15, 'delete_pages', 'pages', '2019-12-11 01:13:03', '2019-12-11 01:13:03', NULL),
(16, 'browse_roles', 'roles', '2019-12-11 01:13:03', '2019-12-11 01:13:03', NULL),
(17, 'read_roles', 'roles', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(18, 'edit_roles', 'roles', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(19, 'add_roles', 'roles', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(20, 'delete_roles', 'roles', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(21, 'browse_users', 'users', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(22, 'read_users', 'users', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(23, 'edit_users', 'users', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(24, 'add_users', 'users', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(25, 'delete_users', 'users', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(26, 'browse_posts', 'posts', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(27, 'read_posts', 'posts', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(28, 'edit_posts', 'posts', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(29, 'add_posts', 'posts', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(30, 'delete_posts', 'posts', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(31, 'browse_categories', 'categories', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(32, 'read_categories', 'categories', '2019-12-11 01:13:04', '2019-12-11 01:13:04', NULL),
(33, 'edit_categories', 'categories', '2019-12-11 01:13:05', '2019-12-11 01:13:05', NULL),
(34, 'add_categories', 'categories', '2019-12-11 01:13:05', '2019-12-11 01:13:05', NULL),
(35, 'delete_categories', 'categories', '2019-12-11 01:13:05', '2019-12-11 01:13:05', NULL),
(36, 'browse_settings', 'settings', '2019-12-11 01:13:05', '2019-12-11 01:13:05', NULL),
(37, 'read_settings', 'settings', '2019-12-11 01:13:05', '2019-12-11 01:13:05', NULL),
(38, 'edit_settings', 'settings', '2019-12-11 01:13:05', '2019-12-11 01:13:05', NULL),
(39, 'add_settings', 'settings', '2019-12-11 01:13:05', '2019-12-11 01:13:05', NULL),
(40, 'delete_settings', 'settings', '2019-12-11 01:13:05', '2019-12-11 01:13:05', NULL),
(41, 'browse_products', 'products', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(42, 'read_products', 'products', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(43, 'edit_products', 'products', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(44, 'add_products', 'products', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(45, 'delete_products', 'products', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(46, 'browse_currency', 'coupons', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(47, 'read_currency', 'coupons', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(48, 'edit_currency', 'coupons', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(49, 'add_currency', 'coupons', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(50, 'delete_currency', 'coupons', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(51, 'browse_category', 'category', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(52, 'read_category', 'category', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(53, 'edit_category', 'category', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(54, 'add_category', 'category', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(55, 'delete_category', 'category', '2019-12-11 01:13:20', '2019-12-11 01:13:20', NULL),
(56, 'browse_category-product', 'category-product', '2019-12-11 01:13:21', '2019-12-11 01:13:21', NULL),
(57, 'read_category-product', 'category-product', '2019-12-11 01:13:21', '2019-12-11 01:13:21', NULL),
(58, 'edit_category-product', 'category-product', '2019-12-11 01:13:21', '2019-12-11 01:13:21', NULL),
(59, 'add_category-product', 'category-product', '2019-12-11 01:13:21', '2019-12-11 01:13:21', NULL),
(60, 'delete_category-product', 'category-product', '2019-12-11 01:13:21', '2019-12-11 01:13:21', NULL),
(61, 'browse_orders', 'orders', '2019-12-11 01:13:21', '2019-12-11 01:13:21', NULL),
(62, 'read_orders', 'orders', '2019-12-11 01:13:21', '2019-12-11 01:13:21', NULL),
(63, 'edit_orders', 'orders', '2019-12-11 01:13:21', '2019-12-11 01:13:21', NULL),
(64, 'add_orders', 'orders', '2019-12-11 01:13:21', '2019-12-11 01:13:21', NULL),
(65, 'delete_orders', 'orders', '2019-12-11 01:13:21', '2019-12-11 01:13:21', NULL),
(66, 'browse_specifications', 'specifications', NULL, NULL, NULL),
(67, 'read_specifications', 'specifications', NULL, NULL, NULL),
(68, 'edit_specifications', 'specifications', NULL, NULL, NULL),
(69, 'add_specifications', 'specifications', NULL, NULL, NULL),
(70, 'delete_specifications', 'specifications', NULL, NULL, NULL),
(71, 'browse_product-specifications', 'product_specification', NULL, NULL, NULL),
(72, 'read_product-specifications', 'product_specification', NULL, NULL, NULL),
(73, 'delete_product-specifications', 'product_specification', NULL, NULL, NULL),
(74, 'edit_product-specifications', 'product_specification', NULL, NULL, NULL),
(75, 'add_product-specifications', 'product_specification', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(22, 3),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `excerpt` text COLLATE utf8_bin,
  `body` text COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_description` text COLLATE utf8_bin,
  `meta_keywords` text COLLATE utf8_bin,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_bin NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-11 01:13:10', '2019-12-11 01:13:10'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-11 01:13:10', '2019-12-11 01:13:10'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-11 01:13:10', '2019-12-11 01:13:10'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-11 01:13:10', '2019-12-11 01:13:10');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `details` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `images` text COLLATE utf8_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `featured`, `quantity`, `image`, `images`, `created_at`, `updated_at`) VALUES
(163, 'Наружний насос Seakoo 370Вт - JET60A', 'naruzhniy-nasos-seakoo-370vt---jet60a', 'JET60A', 53, '<p>Чистая вода без абразивных частиц. Бытовое использование, орошение садов и участков. Высокий напор. Подходит для подъёма/распределения воды с малыми/средними системами поддержания давления.</p>', 1, 0, 'products/January2020/FEONHH6Xnhu8yq9UHDEA.jpg', '[\"products\\/January2020\\/vrYFpIlD6oZHGsMCJcmW.jpg\"]', '2020-01-15 08:19:00', '2019-12-26 23:51:00'),
(164, ' Погружной насос Seakoo 250Вт - SPV250F  ', 'pogruzhnoy-nasos-seakoo-250vt---spv250f', 'SPV250F  ', 71, 'Бытовое/коммерческое/промышленное использование.  Дренаж сточных вод из подвалов зданий, гостиниц. Промышленные стоки с заводов.  Насосная поверхность и осушение воды из гаражей и    спринклерных систем. Оснащена колесом насоса с двойным каналом. Большой поток, средний-низкий уровень насадки', 1, 7, 'products/dummy/SPV180F250F.jpg', NULL, NULL, '2019-12-27 00:19:14'),
(165, ' Погружной насос Seakoo 550Вт - SPV550F ', 'pogruzhnoy-nasos-seakoo-550vt---spv550f', 'SPV550F', 105, 'Бытовое/коммерческое/промышленное использование.  Дренаж сточных вод из подвалов зданий, гостиниц. Промышленные стоки с заводов.  Насосная поверхность и осушение воды из гаражей и    спринклерных систем. Оснащена колесом насоса с двойным каналом. Большой поток, средний-низкий уровень насадки', 0, 10, 'products/dummy/SPV450 550F.jpg', NULL, NULL, NULL),
(166, 'Насос для бассейна Seakoo 550Вт - STP75 ', 'nasos-dlya-basseyna-seakoo-550vt---stp75', 'STP75 ', 99, 'Усиление давления в средних или больших спа-бассейнах и си стемах очистки массажных ванн, спа-бассейнов.  Водный об в рыбном промысле.  Декоративный бассейн, вид воды, обработка воды.  Слабая коррозионная жидкость (слабая кислота и слабая щело чь) без твердых блоков. Температура жидкости: +5-60°C.\n', 0, 10, 'products/dummy/STP25-120.jpg', NULL, NULL, NULL),
(167, ' Насос для бассейна Seakoo 750Вт - STP100', 'nasos-dlya-basseyna-seakoo-750vt---stp100', 'STP100', 102, 'Усиление давления в средних или больших спа-бассейнах и си стемах очистки массажных ванн, спа-бассейнов.  Водный об в рыбном промысле.  Декоративный бассейн, вид воды, обработка воды.  Слабая коррозионная жидкость (слабая кислота и слабая щело чь) без твердых блоков. Температура жидкости: +5-60°C.\n', 0, 10, 'products/dummy/STP25-120.jpg', NULL, NULL, NULL),
(168, ' Насос для бассейна Seakoo 1500Вт - STP200 ', 'nasos-dlya-basseyna-seakoo-1500vt---stp200', 'STP200 ', 178, 'Усиление давления в средних или больших спа-бассейнах и си стемах очистки массажных ванн, спа-бассейнов.  Водный об в рыбном промысле.  Декоративный бассейн, вид воды, обработка воды.  Слабая коррозионная жидкость (слабая кислота и слабая щело чь) без твердых блоков. Температура жидкости: +5-60°C.\n', 0, 10, 'products/dummy/STP150-300.jpg', NULL, NULL, NULL),
(169, ' Погружной фекальный насос Seakoo 750Вт - WQD6-16-0.75L1 ', 'pogruzhnoy-fekal-nyy-nasos-seakoo-750vt---wqd6-16-0-75l1', ' WQD6-16-0.75L1 ', 92, 'Бытовое/коммерческое/промышленное использование.  Дренаж сточных вод из подвалов зданий, гостиниц.  Промышленные стоки с заводов.  Насосная поверхность и осушение воды из гаражей и    спринклерных систем.  Оснащена колесом насоса с двойным каналом.  Большой поток, средний-низкий уровень насадки.', 0, 10, 'products/dummy/WQD.jpg', NULL, NULL, NULL),
(170, 'Погружной фекальный насос Seakoo 1100Вт - WQD15-9-1.1L1', 'pogruzhnoy-fekal-nyy-nasos-seakoo-1100vt---wqd15-9-1-1l1', 'WQD15-9-1.1L1', 116, 'Бытовое/коммерческое/промышленное использование.  Дренаж сточных вод из подвалов зданий, гостиниц.  Промышленные стоки с заводов.  Насосная поверхность и осушение воды из гаражей и    спринклерных систем.  Оснащена колесом насоса с двойным каналом.  Большой поток, средний-низкий уровень насадки.', 0, 10, 'products/dummy/WQD.jpg', NULL, NULL, NULL),
(171, 'Наружний насос Seakoo 1100Вт - SHFm5BM ', 'naruzhniy-nasos-seakoo-1100vt---shfm5bm', 'SHFm5BM ', 96, ' Чистая вода с небольшим количеством примесей, жидкость, не    вызывающий коррозии.  Бытовое, сельскохозяйственное и промышленное использование.  Большой расход, средний-низкий напор.', 0, 10, 'products/dummy/SHFm5AM.jpg', NULL, NULL, NULL),
(172, 'Скважинный насос Seakoo 180Вт - 3SAm2-6 ', 'skvazhinnyy-nasos-seakoo-180vt---3sam2-6', '3SAm2-6 ', 71, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(173, ' Скважинный насос Seakoo 250Вт - 3SAm2-8', 'skvazhinnyy-nasos-seakoo-250vt---3sam2-8', '3SAm2-8', 76, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(174, 'Скважинный насос  Seakoo 370Вт - 3SAm2-11', 'skvazhinnyy-nasos-seakoo-370vt---3sam2-11', '3SAm2-11', 79, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(175, 'Скважинный насос Seakoo 750Вт -  3SAm2-17', 'skvazhinnyy-nasos-seakoo-750vt---3sam2-17', '3SAm2-17', 93, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(176, 'Скважинный насос Seakoo 750Вт - 3SAm2-24', 'skvazhinnyy-nasos-seakoo-750vt---3sam2-24', '3SAm2-24', 110, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(177, ' Скважинный насос Seakoo 1100Вт - 3SAm2-33', 'skvazhinnyy-nasos-seakoo-1100vt---3sam2-33', ' 3SAm2-33', 130, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(178, 'Скважинный насос Seakoo 1500Вт - 3SAm2-40', 'skvazhinnyy-nasos-seakoo-1500vt---3sam2-40', '3SAm2-40', 150, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(179, 'Скважинный насос Seakoo 250Вт - 3.5SAm2-5 ', 'skvazhinnyy-nasos-seakoo-250vt---3-5sam2-5', '3.5SAm2-5 ', 75, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(180, ' Скважинный насос Seakoo 370Вт - 3.5SAm2-7', 'skvazhinnyy-nasos-seakoo-370vt---3-5sam2-7', '3.5SAm2-7', 79, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(181, ' Скважинный насос Seakoo 550Вт - 3.5SAm2-10 ', 'skvazhinnyy-nasos-seakoo-550vt---3-5sam2-10', '3.5SAm2-10 ', 86, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(182, ' Скважинный насос Seakoo 750Вт - 3.5SAm2-13', 'skvazhinnyy-nasos-seakoo-750vt---3-5sam2-13', '3.5SAm2-13', 96, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(183, ' Скважинный насос Seakoo 1100Вт - 3.5SAm2-17', 'skvazhinnyy-nasos-seakoo-1100vt---3-5sam2-17', '3.5SAm2-17', 124, ' Применение в область насосов из колодца, речного насоса, орошения ферм, водонабжения, горнодобывающей и дренажа в индустрии разведения животных', 0, 10, 'products/dummy/Sam3.5SGM3-8.jpg', NULL, NULL, NULL),
(184, 'Наружний насос Seakoo 750Вт - JET100A', 'naruzhniy-nasos-seakoo-750vt---jet100a', 'JET100A', 71, 'Чистая вода без абразивных частиц.  Бытовое использование, орошение садов и участков.  Высокий напор.  Подходит для подъёма/распределения воды с малыми/средними    системами поддержания давления.', 0, 10, 'products/dummy/jet-80 и 100.jpg', NULL, NULL, NULL),
(185, ' Вибрационный насос Seakoo 180Вт - VMP50', 'vibracionnyy-nasos-seakoo-180vt---vmp50', 'VMP50', 17, 'Чистая вода без абразивных частей.  В основном используется для откачки скважин, рек, пр отекающего сбора дождевой воды. Выкачивает воду и з погребов, гаражей, подвалов.  Водоснабжение, канализация в индустрии разведения', 0, 10, 'products/dummy/mvp.jpg', NULL, NULL, NULL),
(186, 'Вибрационный насос Seakoo 280Вт - VMP60 ', 'vibracionnyy-nasos-seakoo-280vt---vmp60', 'VMP60 ', 18, 'Чистая вода без абразивных частей.  В основном используется для откачки скважин, рек, пр отекающего сбора дождевой воды. Выкачивает воду и з погребов, гаражей, подвалов.  Водоснабжение, канализация в индустрии разведения', 0, 10, 'products/dummy/mvp.jpg', NULL, NULL, NULL),
(187, ' Вибрационный насос Seakoo 300Вт - VMP60-8 ', 'vibracionnyy-nasos-seakoo-300vt---vmp60-8', 'VMP60-8 ', 22, 'Чистая вода без абразивных частей.  В основном используется для откачки скважин, рек, пр отекающего сбора дождевой воды. Выкачивает воду и з погребов, гаражей, подвалов.  Водоснабжение, канализация в индустрии разведения', 0, 10, 'products/dummy/mvp.jpg', NULL, NULL, NULL),
(188, 'Погружной насос Seakoo 250Вт - SP250W', 'pogruzhnoy-nasos-seakoo-250vt---sp250w', 'SP250 ', 34, 'Характеризуется высоким напором, компактными размерами,    малым весом и удобством использования.  В большей степени используется для подачи воды в высокие    точки, промывки и в местах строительных площадок.', 0, 10, 'products/dummy/SP250.jpg', NULL, NULL, NULL),
(189, ' Погружной насос Seakoo 550Вт - SP550W ', 'pogruzhnoy-nasos-seakoo-550vt---sp550w', 'SP550W ', 38, 'Характеризуется высоким напором, компактными размерами,    малым весом и удобством использования.  В большей степени используется для подачи воды в высокие    точки, промывки и в местах строительных площадок.', 0, 10, 'products/dummy/SP250.jpg', NULL, NULL, NULL),
(190, 'Погружной насос Seakoo 900Вт - SP900W ', 'pogruzhnoy-nasos-seakoo-900vt---sp900w', 'SP900W ', 41, 'Характеризуется высоким напором, компактными размерами,    малым весом и удобством использования.  В большей степени используется для подачи воды в высокие    точки, промывки и в местах строительных площадок.', 0, 10, 'products/dummy/SP250.jpg', NULL, NULL, NULL),
(191, 'Погружной насос Seakoo 400Вт - SPI400C ', 'pogruzhnoy-nasos-seakoo-400vt---spi400c', ' SPI400C ', 48, ' Погружной для бесшумной работы.  Удобно используется для бытового назначения.  Мобильный и легкий циркуляционный насос, который можно    взять с собой повсюду. Безмасляные двигатели экологически безопасны. Предназначены для длительной непрерывной работы.  Глубина погружения под зеркало воды до 5 м.  Температура перекачиваемой жидкости до +40°C.  Значение рН в воде в пределах от 6,5-8,5.  Прохождение взвешенных твердых веществ до 2 мм.', 0, 10, 'products/dummy/SPI(C).jpg', NULL, NULL, NULL),
(192, 'Погружной насос Seakoo 550Вт - SPI550C', 'pogruzhnoy-nasos-seakoo-550vt---spi550c', 'SPI550C', 52, ' Погружной для бесшумной работы.  Удобно используется для бытового назначения.  Мобильный и легкий циркуляционный насос, который можно    взять с собой повсюду. Безмасляные двигатели экологически безопасны. Предназначены для длительной непрерывной работы.  Глубина погружения под зеркало воды до 5 м.  Температура перекачиваемой жидкости до +40°C.  Значение рН в воде в пределах от 6,5-8,5.  Прохождение взвешенных твердых веществ до 2 мм.', 0, 10, 'products/dummy/SPI(C).jpg', NULL, NULL, NULL),
(193, 'Погружной насос Seakoo 750Вт - SPI750C ', 'pogruzhnoy-nasos-seakoo-750vt---spi750c', ' SPI750C', 62, ' Погружной для бесшумной работы.  Удобно используется для бытового назначения.  Мобильный и легкий циркуляционный насос, который можно    взять с собой повсюду. Безмасляные двигатели экологически безопасны. Предназначены для длительной непрерывной работы.  Глубина погружения под зеркало воды до 5 м.  Температура перекачиваемой жидкости до +40°C.  Значение рН в воде в пределах от 6,5-8,5.  Прохождение взвешенных твердых веществ до 2 мм.', 0, 10, 'products/dummy/SPI(C).jpg', NULL, NULL, NULL),
(194, ' Погружной насос Seakoo 1100Вт - SPI1100C ', 'pogruzhnoy-nasos-seakoo-1100vt---spi1100c', 'SPI1100C ', 59, ' Погружной для бесшумной работы.  Удобно используется для бытового назначения.  Мобильный и легкий циркуляционный насос, который можно    взять с собой повсюду. Безмасляные двигатели экологически безопасны. Предназначены для длительной непрерывной работы.  Глубина погружения под зеркало воды до 5 м.  Температура перекачиваемой жидкости до +40°C.  Значение рН в воде в пределах от 6,5-8,5.  Прохождение взвешенных твердых веществ до 2 мм.', 0, 10, 'products/dummy/SPI(C).jpg', NULL, NULL, NULL),
(195, ' Бензиновая помпа Seakoo - WP15 ', 'benzinovaya-pompa-seakoo---wp15', 'WP15 ', 115, 'Перекачивание горюче-смазочных материалов для их дальнейшего хранения или транспортировки.\nОрганизация полива растений на приусадебном участке.\nОбеспечение функционирования систем автономного водоснабжения.\nОткачивание скопившейся воды из подвальных помещений и погребов.\nОткачивание воды из строительных котлованов и траншей, а также из мест приусадебного участка, расположенных в низине.\n', 0, 10, 'products/dummy/WP.jpg', NULL, NULL, NULL),
(196, 'Бензиновая помпа Seakoo - WP20', 'benzinovaya-pompa-seakoo---wp20', 'WP20', 117, 'Перекачивание горюче-смазочных материалов для их дальнейшего хранения или транспортировки.\nОрганизация полива растений на приусадебном участке.\nОбеспечение функционирования систем автономного водоснабжения.\nОткачивание скопившейся воды из подвальных помещений и погребов.\nОткачивание воды из строительных котлованов и траншей, а также из мест приусадебного участка, расположенных в низине.\n', 0, 10, 'products/dummy/WP.jpg', NULL, NULL, NULL),
(197, ' Бензиновая помпа Seakoo - WP30', 'benzinovaya-pompa-seakoo---wp30', ' WP30', 131, 'Перекачивание горюче-смазочных материалов для их дальнейшего хранения или транспортировки.\nОрганизация полива растений на приусадебном участке.\nОбеспечение функционирования систем автономного водоснабжения.\nОткачивание скопившейся воды из подвальных помещений и погребов.\nОткачивание воды из строительных котлованов и траншей, а также из мест приусадебного участка, расположенных в низине.\n', 0, 10, 'products/dummy/WP.jpg', NULL, NULL, NULL),
(198, 'Вакуумный насос давления Seakoo 125Вт - ASP125', 'vakuumnyy-nasos-davleniya-seakoo-125vt---asp125', ' ASP125', 53, 'Подходящий чистой воды без шлифовального зерна или другой жидкости Широко применять в бытовой воде, Самовсасывающие ， снабжение водонапорной башни，колодезной воде， солнечной водонагревательной системе', 0, 10, 'products/dummy/ASP250.jpg', NULL, NULL, NULL),
(199, 'Вакуумный насос давления Seakoo 250Вт - ASP250', 'vakuumnyy-nasos-davleniya-seakoo-250vt---asp250', ' ASP250', 57, 'Подходящий чистой воды без шлифовального зерна или другой жидкости Широко применять в бытовой воде, Самовсасывающие ， снабжение водонапорной башни，колодезной воде， солнечной водонагревательной системе', 0, 10, 'products/dummy/ASP250.jpg', NULL, NULL, NULL),
(200, ' Вакуумный насос давления Seakoo 370Вт - ASP370', 'vakuumnyy-nasos-davleniya-seakoo-370vt---asp370', ' ASP370', 59, 'Подходящий чистой воды без шлифовального зерна или другой жидкости Широко применять в бытовой воде, Самовсасывающие ， снабжение водонапорной башни，колодезной воде， солнечной водонагревательной системе', 0, 10, 'products/dummy/ASP370Z.jpg', NULL, NULL, NULL),
(201, ' Вакуумный насос давления Seakoo 550Вт - ASP550 ', 'vakuumnyy-nasos-davleniya-seakoo-550vt---asp550', ' ASP550 ', 69, 'Подходящий чистой воды без шлифовального зерна или другой жидкости Широко применять в бытовой воде, Самовсасывающие ， снабжение водонапорной башни，колодезной воде， солнечной водонагревательной системе', 0, 10, 'products/dummy/ASP370Z.jpg', NULL, NULL, NULL),
(202, 'Вакуумный насос давления Seakoo 750Вт - ASP750 ', 'vakuumnyy-nasos-davleniya-seakoo-750vt---asp750', 'ASP750 ', 77, 'Подходящий чистой воды без шлифовального зерна или другой жидкости Широко применять в бытовой воде, Самовсасывающие ， снабжение водонапорной башни，колодезной воде， солнечной водонагревательной системе', 0, 10, 'products/dummy/ASP750.jpg', NULL, NULL, NULL),
(203, 'Наружний насос Seakoo 370Вт - QB60', 'naruzhniy-nasos-seakoo-370vt---qb60', 'QB60', 28, 'Чистая вода без абразивных частиц / неагрессивная жидкость. В частности, для подачи воды в сочетании с небольшими систе мами поддержания давления и для орошения.  Устанавливается в закрытых помещениях или, по крайней мер е, защищенных от ненастной погоды.', 0, 10, 'products/dummy/QB60.jpg', NULL, NULL, NULL),
(204, 'Наружний насос Seakoo 370Вт - CPm130', 'naruzhniy-nasos-seakoo-370vt---cpm130', ' CPm130', 47, 'Чистая вода с небольшим количеством примесей, жидкость,    не вызывающий коррозии.  Бытовое использование, сельское хозяйство и орошение', 0, 10, 'products/dummy/CPM130.jpg', NULL, NULL, NULL),
(205, ' Наружний насос Seakoo 550Вт - CPm146 ', 'naruzhniy-nasos-seakoo-550vt---cpm146', 'CPm146 ', 57, 'Чистая вода с небольшим количеством примесей, жидкость,    не вызывающий коррозии.  Бытовое использование, сельское хозяйство и орошение', 0, 10, 'products/dummy/CPM130.jpg', NULL, NULL, NULL),
(206, 'Наружний насос Seakoo 750Вт - SGJS800', 'naruzhniy-nasos-seakoo-750vt---sgjs800', 'SGJS800', 68, ' Чистая вода без абразивных частиц.  Бытовое использование, орошение садов и участков.  Высокий напор.  Подходит для подъёма, распределения воды с малыми или    средними системами поддержания давления.  Устанавливается в закрытых помещениях или, по крайней   мере, защищенных от ненастной погоды.', 0, 10, 'products/dummy/SGJS800.jpg', NULL, NULL, NULL),
(207, ' Вакуумный насос давления Seakoo 750Вт - JET100+24L', 'vakuumnyy-nasos-davleniya-seakoo-750vt---jet100-24l', 'JET100+24L', 124, ' Чистая вода без абразивных частиц. Бытовое использование, орошение садов и участков. Высокий напор.  Подходит для подъёма/распределения воды с малыми/средними    системами поддержания давления.', 0, 10, 'products/dummy/JET-24L  3.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product_specification`
--

CREATE TABLE `product_specification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `specification_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `product_specification`
--

INSERT INTO `product_specification` (`id`, `product_id`, `specification_id`, `value`, `created_at`, `updated_at`) VALUES
(7, 164, 1, '370 Вт 0,5 лс', NULL, NULL),
(8, 163, 1, '370 Вт 0,5 лс', '2020-01-08 22:38:20', '2020-01-08 22:38:20'),
(9, 163, 2, '2,5 м³/ч', '2020-01-08 22:38:21', '2020-01-08 22:38:21'),
(10, 163, 3, '32 м', '2020-01-08 22:38:21', '2020-01-08 22:38:21'),
(11, 163, 4, '9 м', '2020-01-08 22:38:21', '2020-01-08 22:38:21'),
(12, 163, 5, '11,3кг', '2020-01-08 22:38:21', '2020-01-08 22:38:21');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-12-11 01:13:01', '2019-12-11 01:13:01'),
(2, 'user', 'Normal User', '2019-12-11 01:13:01', '2019-12-11 01:13:01'),
(3, 'adminweb', 'Admin Web', '2019-12-11 01:13:20', '2019-12-11 01:13:20');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin,
  `details` text COLLATE utf8_bin,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Админ панель', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Добро пожаловать! Страница управления сайтом', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'site.stock_threshold', 'Stock Threshold', '5', '', 'text', 6, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `specifications`
--

CREATE TABLE `specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `specifications`
--

INSERT INTO `specifications` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Мощность', NULL, NULL),
(2, 'Макс. Пропускная способность', NULL, NULL),
(3, 'Макс. Напор', NULL, NULL),
(4, 'Макс. Высота всасывания', NULL, NULL),
(5, 'Вес', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `column_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2019-12-11 01:13:10', '2019-12-11 01:13:10'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2019-12-11 01:13:10', '2019-12-11 01:13:10'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-12-11 01:13:11', '2019-12-11 01:13:11'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-12-11 01:13:12', '2019-12-11 01:13:12'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-12-11 01:13:12', '2019-12-11 01:13:12'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2019-12-11 01:13:12', '2019-12-11 01:13:12'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2019-12-11 01:13:12', '2019-12-11 01:13:12'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2019-12-11 01:13:12', '2019-12-11 01:13:12'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2019-12-11 01:13:12', '2019-12-11 01:13:12'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2019-12-11 01:13:12', '2019-12-11 01:13:12'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2019-12-11 01:13:12', '2019-12-11 01:13:12'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2019-12-11 01:13:12', '2019-12-11 01:13:12'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2019-12-11 01:13:13', '2019-12-11 01:13:13'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2019-12-11 01:13:13', '2019-12-11 01:13:13'),
(33, 'menu_items', 'title', 29, 'en', 'Pages', '2019-12-24 01:09:27', '2019-12-24 01:09:27'),
(34, 'menu_items', 'title', 30, 'en', 'Харкт', '2019-12-24 05:00:22', '2019-12-24 05:00:22'),
(35, 'menu_items', 'title', 16, 'en', 'Coupons', '2019-12-25 01:35:48', '2019-12-25 01:35:48');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `settings` text COLLATE utf8_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$q6/IJD7K0GHG02Ei3/Muau5rUeDPvFcLw4fa4zyzAGOirMc.MIXmq', 'B98f0daFsLoeGThHo5BhijL8avj7ICooAajMLLNOyPyqj6ZVRzdez1b2B5tT', '{\"locale\":\"ru\"}', '2019-12-11 01:13:09', '2019-12-17 02:29:41'),
(2, 3, 'Admin Web', 'adminweb@adminweb.com', 'users/default.png', '$2y$10$V/ab6gaA3AENIikBmi7N/elZgj9DYs2DaXwBoTNcGDkSsFR.p9F.6', 'R3deHIUyMDtuKDAnizOHIsj6wuQUjVZVeZK8pjiN924zHO0yBTqZptus1l1I', NULL, '2019-12-11 01:13:24', '2019-12-11 01:13:24');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Индексы таблицы `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Индексы таблицы `product_specification`
--
ALTER TABLE `product_specification`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT для таблицы `product_specification`
--
ALTER TABLE `product_specification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
