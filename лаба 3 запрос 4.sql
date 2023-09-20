-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 20 2023 г., 14:23
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

INSERT INTO `cities` (`CONCAT(name, ' - ', (population / 40000000.0) * 100, '%')`) VALUES
('Київ - 7.2212%'),
('Харків - 3.6114%'),
('Одеса - 2.5250%'),
('Дніпро - 2.4611%'),
('Донецьк - 2.3314%'),
('Запоріжжя - 1.8950%'),
('Львів - 1.8214%'),
('Кривий Ріг - 1.6169%'),
('Миколаїв - 1.2360%'),
('Маріуполь - 1.1463%'),
('Луганськ - 1.0450%'),
('Севастополь - 1.0316%'),
('Вінниця - 0.9311%'),
('Макіївка - 0.8704%'),
('Сімферополь - 0.8315%'),
('Херсон - 0.7404%'),
('Полтава - 0.7367%'),
('Чернігів - 0.7363%'),
('Черкаси - 0.7111%'),
('Суми - 0.6710%'),
('Житомир - 0.6700%'),
('Хмельницький - 0.6697%'),
('Чернівці - 0.6611%'),
('Горлівка - 0.6275%'),
('Рівне - 0.6237%'),
('Кам\'янське - 0.6012%'),
('Кропивницький - 0.5801%'),
('Івано-Франківськ - 0.5736%'),
('Кременчук - 0.5625%'),
('Тернопіль - 0.5449%'),
('Луцьк - 0.5427%'),
('Біла Церква - 0.5277%'),
('Краматорськ - 0.4022%'),
('Мелітополь - 0.3918%'),
('Керч - 0.3692%'),
('Сєвєродонецьк - 0.3250%'),
('Хрустальний - 0.3100%'),
('Нікополь - 0.2991%'),
('Бердянськ - 0.2887%'),
('Слов\'янськ - 0.2886%'),
('Ужгород - 0.2880%'),
('Алчевськ - 0.2784%'),
('Павлоград - 0.2754%'),
('Євпаторія - 0.2653%'),
('Лисичанськ - 0.2586%'),
('Кам\'янець-Подільський - 0.2540%'),
('Бровари - 0.2509%'),
('Дрогобич - 0.2450%'),
('Кадіївка - 0.2303%'),
('Конотоп - 0.2300%');

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
