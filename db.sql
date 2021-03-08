-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 30 2019 г., 22:34
-- Версия сервера: 10.3.14-MariaDB-100.cba
-- Версия PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sportsn`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `pass` text NOT NULL,
  `token` text NOT NULL,
  `fio` text NOT NULL,
  `friends` text NOT NULL,
  `yers` varchar(255) NOT NULL,
  `pol` text NOT NULL,
  `str` varchar(255) NOT NULL,
  `userid` text NOT NULL,
  `ip` text NOT NULL,
  `fromsp` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `acceskey` text NOT NULL,
  `login` text NOT NULL,
  `tarif` int(11) NOT NULL,
  `pursesavail` text NOT NULL,
  `minwith` int(11) NOT NULL,
  `url` text NOT NULL,
  `textob` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `acceskey`, `login`, `tarif`, `pursesavail`, `minwith`, `url`, `textob`) VALUES
(1, 'adm', 'adm', 7, 'QIWI', 50, 'url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `slito`
--

CREATE TABLE `slito` (
  `id` int(11) NOT NULL,
  `spamer` text NOT NULL,
  `pass` text NOT NULL,
  `inviteusers` int(11) NOT NULL,
  `purse` text NOT NULL,
  `wantwith` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slito`
--

INSERT INTO `slito` (`id`, `spamer`, `pass`, `inviteusers`, `purse`, `wantwith`) VALUES
(19, 'spam', '123', 1, '123', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slito`
--
ALTER TABLE `slito`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `slito`
--
ALTER TABLE `slito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
