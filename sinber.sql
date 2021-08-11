-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 08 2021 г., 16:17
-- Версия сервера: 10.3.29-MariaDB-100+deb10u1-log
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sinber`
--

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `code` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `links`
--

INSERT INTO `links` (`id`, `url`, `code`) VALUES
(1, 'https://www.youtube.com/', '1'),
(2, 'https://www.youtube.com/watch?v=hPvxfx8g8kQ', '2'),
(3, 'https://www.php.net/manual/ru/mysqli.construct.php', '3'),
(4, 'https://yandex.ru/pogoda/novosibirsk?utm_content=main_informer&utm_source=home&utm_medium=web&utm_campaign=informer&utm_term=title', '4'),
(5, 'https://rizzoma.com/topic/d5c429337bcaa70548fb5aeedee6d92b/0_b_8ndo_avs9h/', '5'),
(6, 'https://translate.google.com/?hl=ru&sl=en&tl=ru&text=path&op=translate', '6'),
(7, 'https://mail.ru/', 'p3gs8'),
(8, 'https://www.twitch.tv/', 'd2af8'),
(12, 'https://yandex.ru/pogoda/region/11316?via=brd', 'b7af8'),
(49, 'https://www.google.com/search?q=%D0%BA%D0%BE%D0%B4&source=lmns&tbm=vid&bih=912&biw=1903&hl=ru&sa=X&ved=2ahUKEwi5panrgpryAhVGGXcKHXagAdsQ_AUoAnoECAEQAg', 'otff'),
(14, 'https://vk.com/feed', 'z9af8'),
(47, 'https://vk.com/audios89247059', '27df'),
(48, 'https://www.google.com/search?q=%D0%BA%D0%BE%D0%B4&sxsrf=ALeKk039gJkxFaVYbweNh8Jf36_7hjVekA:1628171137487&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiA0qGSgpryAhU9i8MKHTGKCvMQ_AUoAXoECAIQAw&biw=1920&bih=912', 'm0df'),
(18, 'https://translate.google.com/?hl=ru&sl=ru&tl=en&text=%D0%BF%D1%80%D0%BE%D0%B2%D0%B5%D1%80%D0%BA%D0%B0&op=translate', '0usf'),
(19, 'https://vk.com/im', 'pksf'),
(42, 'https://vk.com/friends', 'b5df'),
(43, 'https://www.google.com/search?q=%D1%8F%D0%BD%D0%B4%D0%B5%D0%BA%D1%81&oq=&aqs=chrome.1.35i39i362l7j69i59i450...7.33131477j0j15&sourceid=chrome&ie=UTF-8', 'c5df'),
(22, 'https://trial-sport.ru', 'b2sf'),
(23, 'https://travel.yandex.ru/avia/?utm_source=distribution&utm_medium=bookmark&utm_campaign=ru', 'x0sf'),
(24, 'https://travel.yandex.ru/avia/search/result/?adult_seats=1&children_seats=0&fromId=c65&infant_seats=0&klass=economy&oneway=2&return_date=2021-08-20&toId=c239&utm_campaign=ru&utm_medium=bookmark&utm_source=distribution&when=2021-08-11', 'gqdf'),
(25, 'https://yandex.ru/images/search?utm_source=main_stripe_big&text=%D0%90%D1%82%D0%BB%D0%B0%D0%BD%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9%20%D0%9E%D0%BA%D0%B5%D0%B0%D0%BD&nl=1&source=morda', '6qdf'),
(26, 'https://yandex.ru/search/?text=%D0%B0&lr=65', 'kwdf'),
(27, 'https://yandex.ru/search/?text=%D0%BF%D0%BE%D0%B8%D1%81%D0%BA&lr=65', '2wdf'),
(32, 'https://snipp.ru/jquery/ajax-jquery#link-post-zaprosy', '9tdf'),
(33, 'https://yandex.ru/search/?text=%D0%B3%D1%83%D0%B3%D0%BB&lr=65', 'kydf'),
(36, 'https://yandex.ru/search/?text=%D1%82%D1%83%D1%82&lr=65', '5odf'),
(37, 'https://www.google.ru/', 'lpdf'),
(38, 'https://www.google.com/doodles', '7pdf'),
(39, 'https://www.google.com/doodles/101st-anniversary-of-the-first-electric-traffic-signal-system', 'zadf'),
(55, 'https://www.facebook.com/joelitogamarra/', 'gicg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
