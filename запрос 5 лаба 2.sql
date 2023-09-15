-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 15 2023 г., 20:14
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cities`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `population` int UNSIGNED DEFAULT NULL,
  `region` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `population`, `region`) VALUES
(50, 'Конотоп', 92000, 'E'),
(49, 'Кадіївка', 92132, 'E'),
(48, 'Дрогобич', 98015, 'W'),
(46, 'Кам\'янець-Подільський', 101590, 'W'),
(45, 'Лисичанськ', 103459, 'E'),
(43, 'Павлоград', 110144, 'E'),
(42, 'Алчевськ', 111360, 'E'),
(41, 'Ужгород', 115195, 'W'),
(40, 'Слов\'янськ', 115421, 'E'),
(37, 'Хрустальний', 124000, 'E'),
(36, 'Сєвєродонецьк', 130000, 'E'),
(33, 'Краматорськ', 160895, 'E'),
(31, 'Луцьк', 217082, 'W'),
(30, 'Тернопіль', 217950, 'W'),
(28, 'Івано-Франківськ', 229447, 'W'),
(25, 'Рівне', 249477, 'W'),
(24, 'Горлівка', 250991, 'E'),
(23, 'Чернівці', 264427, 'W'),
(22, 'Хмельницький', 267891, 'W'),
(20, 'Суми', 268409, 'E'),
(17, 'Полтава', 294695, 'E'),
(14, 'Макіївка', 348173, 'E'),
(13, 'Вінниця', 372432, 'W'),
(11, 'Луганськ', 417990, 'E'),
(7, 'Львів', 728545, 'W'),
(6, 'Запоріжжя', 758011, 'E'),
(5, 'Донецьк', 932562, 'E'),
(2, 'Харків', 1444540, 'E');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
