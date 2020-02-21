-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 21 2020 г., 17:04
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `мышцы`
--

-- --------------------------------------------------------

--
-- Структура таблицы `arm`
--

CREATE TABLE `arm` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fun` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(3) DEFAULT NULL,
  `second_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `arm`
--

INSERT INTO `arm` (`id`, `name`, `fun`, `priority`, `second_name`, `deposit`) VALUES
(1, 'Бицепс', 'Позволяет поворачивать и перемещать ладони вверх, сгибает плечо, позволяет поднимать руки вперед и вверх', 3, 'Двуглавая мышца руки', NULL),
(2, 'Трицепс', 'Позволяет выпрямлять руку, выполнять приведение руки вниз, по направлению к телу', 3, 'Трехглавая мышца руки', NULL),
(3, 'Брахиалис', 'Отвечает за процесс сгибание локтя в любом положении кисти', 2, 'Плоская веретенообразная мышца', NULL),
(4, 'Брахирадиалис', 'Позволяет сгибать локоть и способствует вращению предплечьями вверх и вниз', 2, 'Передняя веретенообраз. мышца', NULL),
(5, 'Лучевой разгибатель запястья', 'Обеспечение процесса движения запястья', 2, NULL, NULL),
(6, 'Клювовидно', 'Позволяет приводить руку к туловищу при согнутом локте', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `back`
--

CREATE TABLE `back` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fun` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(3) DEFAULT NULL,
  `second_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `back`
--

INSERT INTO `back` (`id`, `name`, `fun`, `priority`, `second_name`, `deposit`) VALUES
(1, 'Широчайшие ', 'Позволяет вытягивать руку в направлении вниз и назад, когда рука располагается над головой', 3, 'Kрылья', 'Поверхностные'),
(2, 'Трапециевидные ', 'Поднятие рук вверх, движение лопаток – подъем/опускание, сближение, наклоны головы в стороны', 3, NULL, 'Поверхностные'),
(3, 'Длинная мышца спины', 'Поддерживает правильную осанку, а также позволяет осуществлять движение в направлении прямо, помогает удерживать равновесие, сгибать и разгибать туловище при двустороннем сокращении', 2, NULL, 'Поверхностные'),
(4, 'Ромбовидные ', 'Притяжение лопатки к позвоночнику и одновременное перемещение ее к верху，фиксация медиального края лопатки к грудине', 2, '', 'Поверхностные, второй слой');

-- --------------------------------------------------------

--
-- Структура таблицы `belly`
--

CREATE TABLE `belly` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fun` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(3) DEFAULT NULL,
  `second_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `breast`
--

CREATE TABLE `breast` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fun` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(3) DEFAULT NULL,
  `second_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `exercises`
--

CREATE TABLE `exercises` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `training_apparatus` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_muscles` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complexity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `legs`
--

CREATE TABLE `legs` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fun` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(3) DEFAULT NULL,
  `second_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `shoulder`
--

CREATE TABLE `shoulder` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fun` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(3) DEFAULT NULL,
  `second_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `arm`
--
ALTER TABLE `arm`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `back`
--
ALTER TABLE `back`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `belly`
--
ALTER TABLE `belly`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `breast`
--
ALTER TABLE `breast`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `legs`
--
ALTER TABLE `legs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shoulder`
--
ALTER TABLE `shoulder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `arm`
--
ALTER TABLE `arm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `back`
--
ALTER TABLE `back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `belly`
--
ALTER TABLE `belly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `breast`
--
ALTER TABLE `breast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `legs`
--
ALTER TABLE `legs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shoulder`
--
ALTER TABLE `shoulder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
