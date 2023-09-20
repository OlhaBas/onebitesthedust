-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 20 2023 г., 14:07
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

INSERT INTO `cities` (`CONCAT(name, ' (', region, ')')`) VALUES
('Алчевськ (E)'),
('Бердянськ (S)'),
('Біла Церква (N)'),
('Бровари (N)'),
('Вінниця (W)'),
('Горлівка (E)'),
('Дніпро (C)'),
('Донецьк (E)'),
('Євпаторія (S)'),
('Житомир (N)'),
('Запоріжжя (E)'),
('Івано-Франківськ (W)'),
('Кам\'янець-Подільський (W)'),
('Кам\'янське (C)'),
('Керч (S)'),
('Київ (N)'),
('Краматорськ (E)'),
('Кременчук (C)'),
('Кривий Ріг (S)'),
('Кропивницький (C)'),
('Лисичанськ (E)'),
('Луганськ (E)'),
('Луцьк (W)'),
('Львів (W)'),
('Макіївка (E)'),
('Маріуполь (S)'),
('Мелітополь (S)'),
('Миколаїв (S)'),
('Нікополь (C)'),
('Одеса (S)'),
('Павлоград (E)'),
('Полтава (E)'),
('Рівне (W)'),
('Севастополь (S)'),
('Сєвєродонецьк (E)'),
('Сімферополь (S)'),
('Слов\'янськ (E)'),
('Суми (E)'),
('Тернопіль (W)'),
('Ужгород (W)'),
('Харків (E)'),
('Херсон (S)'),
('Хмельницький (W)'),
('Хрустальний (E)'),
('Черкаси (C)'),
('Чернівці (W)'),
('Чернігів (N)');

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
