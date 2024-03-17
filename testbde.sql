-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 17 2024 г., 17:59
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testbde`
--

-- --------------------------------------------------------

--
-- Структура таблицы `polzovatel`
--

CREATE TABLE `polzovatel` (
  `id` int(11) NOT NULL,
  `Familia` varchar(150) NOT NULL,
  `Ima` varchar(150) NOT NULL,
  `Otchestvo` varchar(150) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Parol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `polzovatel`
--

INSERT INTO `polzovatel` (`id`, `Familia`, `Ima`, `Otchestvo`, `Login`, `Parol`) VALUES
(1, 'Куряатов', 'А', 'А', 'kURCHATOV@MAIL.ru', 'perKuleks'),
(2, '', '', '', '', ''),
(3, '1', '1', '1', '1', '1'),
(4, '1', '1', '1', '1', '1'),
(5, '2', '2', '2', '2', '2'),
(6, '1', '1', '2', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `id_Tovara` int(11) NOT NULL,
  `Nazvanie` varchar(50) NOT NULL,
  `Opisanie` text NOT NULL,
  `Chena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id_Tovara`, `Nazvanie`, `Opisanie`, `Chena`) VALUES
(1, 'Часы', 'описание 1. 1. 1.1. 1.1', 123);

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz`
--

CREATE TABLE `zakaz` (
  `id_zakaza` int(11) NOT NULL,
  `id_Tovar` int(11) NOT NULL,
  `id_Polzovatela` int(11) NOT NULL,
  `Chena` int(11) NOT NULL,
  `Kol-vo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `zakaz`
--

INSERT INTO `zakaz` (`id_zakaza`, `id_Tovar`, `id_Polzovatela`, `Chena`, `Kol-vo`) VALUES
(1, 1, 1, 123, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `polzovatel`
--
ALTER TABLE `polzovatel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`id_Tovara`);

--
-- Индексы таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id_zakaza`),
  ADD KEY `id_Polzovatela` (`id_Polzovatela`),
  ADD KEY `id_Tovar` (`id_Tovar`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `polzovatel`
--
ALTER TABLE `polzovatel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tovar`
--
ALTER TABLE `tovar`
  MODIFY `id_Tovara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id_zakaza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD CONSTRAINT `zakaz_ibfk_1` FOREIGN KEY (`id_Polzovatela`) REFERENCES `polzovatel` (`id`),
  ADD CONSTRAINT `zakaz_ibfk_2` FOREIGN KEY (`id_Tovar`) REFERENCES `tovar` (`id_Tovara`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
