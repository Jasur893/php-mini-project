-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 20 2022 г., 19:42
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `php`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` enum('m','f') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `name`, `photo`, `gender`) VALUES
(1, 'adD', 'ADASD', 'DFf', 'EDFSfDSF', 'm'),
(2, '17_b', 'abdulaziz9097', 'abdulaziz', 'img', 'm'),
(36, '17_bs', 'abdulaziz9097s', 'abdulazizs', 'imgs', 'm'),
(38, 'abbb', 'ajds', 'skjda', 'skdh', 'm'),
(54, 'abbdb', '$2y$10$2sR0nPtm7IuQvbK9Jy3MnezGbRqzOPjLgQdyicTaeRuI0Bl929mqe', 'skjdasda', 'skasddh', 'm'),
(56, 'salom', '$2y$10$GN51XyvJhyd852EI.Q8ryeF36EaekoGAX3mDik0eigJcrqCpYFNha', 'skjdasda', 'skasddh', 'm'),
(83, 'abdulaziz', '$2y$10$9aacAzpVeiUQ6vyuMOWJNuKFEMxEGMY3txhK14qz4/.pXDp5or/t6', 'abdulaziz', 'rasm bor', 'm'),
(87, 'abdulaziz000000', '$2y$10$eZq6rv9YqbMSzr2Z6SqLk.eFWLF.uj.VDrDmvkThsQpP0b7nhIS3W', 'abdulaziz000000', 'rasm bor', 'm'),
(89, 'ADASD', '$2y$10$ahi8p2.ERK5S/06zNN//z.ITF5AWW.zVBztOJGR6vlGkYLuLmYmlW', '	 ADASD', 'rasm bor', 'm'),
(91, '	 ADASD', '$2y$10$ZEh24YYOMCVd8u77SQZZLe8QZAXeZO0Lm2xlyofeYE6Peg3YjSRIa', '	 ADASD', 'rasm bor', 'm'),
(94, ' ADASD', '$2y$10$JuF9dtoWfMzheVylAlHGMO77Kni2LBre8RcT1YIySTcAtUGehNCLu', '	 ADASD', 'rasm bor', 'm'),
(97, ' ADASDsdasd', '$2y$10$MYfBTKtSyPnMooscNDqu1O7qsreJ2YsyzbK6JtLCcUNcdFG/KuFSq', '	 ADASD', 'rasm bor', 'm'),
(99, 'adasdawsd', '$2y$10$sYD8QsSFijTjizWxmo.uW.D7Mr3dRwlTYg/Vflk4dik4eRNbt.4FG', 'adasdawsd', 'rasm bor', 'm'),
(101, 'sDasd', '$2y$10$Ri/uMGSY1bHKcXSTYcOv4.8RFvI1OZkBt/z0H8vntfUbhgRACDwGm', 'adasdawsd', 'rasm bor', 'm'),
(105, '	 abdulaziz9097', '$2y$10$QMy5kk4GbSvoWzWsTWbJYu43lxdYsPXP5W.3LxzUtZua3gDksjLuq', '	 abdulaziz9097', 'rasm bor', 'm'),
(110, '	 abdulaziz9097s', '$2y$10$KRUuWtbY9A8znUizQsI8UeFJDcbqacbszGYcnOn0HFbvlGAYlmw/6', '	 abdulaziz9097s', 'rasm bor', 'm'),
(112, 'abdulaziz9097ssas', '$2y$10$eU9OOvX4.XSnJHGh3k0BBOkXw2.9fjoWubDvt/ffZFKYln6Qup.XS', 'abdulaziz9097s', 'rasm bor', 'm'),
(116, 'asssasasa', '$2y$10$l.To/n1cCzX7lyGlXpLkOuQByygvT2Oaeqx3ZmiOGRaByyGYk5vfS', 'asssasasa', 'rasm', 'm'),
(126, 'asdsada', '$2y$10$IqktFT5WWw6al/V04jr1qeBoX/Ud2jwJXoZj8F4LA2oV07Bq7cUJ.', 'dasdsdasd', 'rasm', 'm'),
(128, 'assa', '$2y$10$6NoeaRWYhfAO/Vp4X9fsoeFcWeta/tP4eKSeE1b1wkTG1Ri.5GOYy', 'sasa', 'rasm', 'm'),
(130, 'aaaa', '$2y$10$wjYoXgEGwauyvTPF4pI.geN6NnfsJAWmmfMPGVL1vNu0ktRV1oLlK', 'aaaa', 'rasm', 'm'),
(137, 'zfsdgf', '$2y$10$vfwNYEVHIr9UmFLeLW9gMuex0DB2wR1.k/CfosUlH6cnRe7KHqnJy', 'zfsdgf', 'rasm', 'm'),
(139, 'sadfafaF', '$2y$10$BN3yxf6ZF/hfGtr1qVbPtumXRh1DqQaz.YEuNK3ajztQCOqEGuDNG', 'sadfafaF', 'rasm', 'm'),
(147, 'dasdsadasd', '$2y$10$SS4YtJqtLMnIkIGNO.3X9uBZiYlcoWyrBM0GJHdqLAc90liyj4c/a', 'dasdsadasd', 'rasm', 'm'),
(149, 'adasdasdasd', '$2y$10$SlaTjoqobGnDvC7w6.qhVOun.gwF9e9P44jAti/HBA3pjqvqb/53S', 'adasdasdasd', '../img/avatar/adasdasdasd.png', 'm'),
(151, 'sfdafasdf', '$2y$10$.CgVSU7myw5bmzeQ7T4tg.ymmx3kv2nVRd04BoH2DA.VQJmxMaLd2', 'sfdafasdf', '../img/avatar/defoult.webp', 'm'),
(153, 'sdgsRgtfsG', '$2y$10$nzSxt/MSoGJUwo.0LZOqm.ekkSa.0czfV1I8tqCRG3ojgnPUNncBi', 'sdgsRgtfsG', '../img/avatar/defoult.webp', 'm'),
(155, 'fdwsaefaf', '$2y$10$/TxA9N6BhHle1cQKpQiKZuza1Rvo.nJTuCEOHZm82NVHyVu0uXJ.6', 'sfasfasf', '../img/avatar/aa2a640c2af4f0ac981c5ab4fbca2dd2.png', 'm'),
(157, 'sjkdjkhsdjk', '$2y$10$syP/boWbkPN.LIz.xuEEzunZSNql6bxu6OD993OosFWZL3ad0yt3m', 'sjkdjkhsdjk', '../img/avatar/defoult.webp', 'm'),
(159, ';lk;afjulksdfj', '$2y$10$zilEsUUA2ikYjIEEfA7fQ.vFnz10111eWlkx2ratI/zIeRTo/wvH2', '<h2>;lk;afjulksdfj</h2>', '../img/avatar/defoult.webp', 'm'),
(160, 'fgsDFsd', '$2y$10$BBkrJnkUoJr9B4f37QSjsubTTMk296/POtaVojo/zuiBn.38ZS0J6', 'fgsDFsd', '../img/avatar/defoult.webp', 'm'),
(161, 'abdulaziz0987654321', '$2y$10$PSfa3GvY7T/NzwsAw0buxuSJAwK8n/srMWEvbOXcTWIXBV3fE9zK.', 'abdulaziz0987654321', '../img/avatar/defoult.webp', 'm'),
(163, 'sadasdasdasd', '$2y$10$haNGAu4x.UrK4lCV0BsJ/uPsx20vNQsJ9jEVX7Lh9DTS2i4O.rUle', 'sadasdasdasd', '../img/avatar/efa0bf84cb475de3e47f2b760bd80e7a.jpg', 'm'),
(165, 'asdddddd', '$2y$10$4L3PioxUAnIxasqVgUrjseLapB70Q6gUPC2gfASPAmwhytbwCAnia', 'asdddddd', '../img/avatar/40543643136edc3af25eaf63643055f8.jpg', 'm'),
(167, 'aaaaaaaa', '$2y$10$78w8n6CVeqV1s5qVOfYEkuDmN6FeLg07Sj8K8vz4Yh.ogtY0uJH7W', 'aaaaaaaa', '../img/avatar/defoult.webp', 'm'),
(170, 'regreg', '$2y$10$J9kjCNHuGMeePppP.sI1muhcicn37YF.mLIR1Nju0XZYoJIZutaTi', 'regreg', '', 'm'),
(171, 'regregregreg', '$2y$10$vkzHjtHMX0nl6WK4vyrQ7eAJ7pQQGFZsjCeRsIDenfVQtRx4wRZW6', 'regregregreg', '', 'm'),
(172, 'regregreg', '$2y$10$wjU80jz6J0C8t9iS8Dh4PeAj9ien5D.hRhHXRNxIoOTuAbL.Lju4O', 'regregreg', '', 'm'),
(173, '$gender', '$2y$10$j0NTjbDAN9ylQR4CYRFDKOwBy1kiPJW3RZxbsfyUMXmbjzfrs8S4W', '$gender', '', 'm'),
(174, 'sdasdawsdsa', '$2y$10$62NMvUt/7rwb5LazuHhn/.sLh2H2N8KsT4Evts5qg1/SpNtpafSRK', 'sdasdawsdsa', '', 'f'),
(177, 'dfsdfsadfafd', '$2y$10$/a//zLl8HQqUgOJG5Yc1j.Q3kXMs8HMjSbDh4gqggZi3F/ipnPASG', 'dfsdfsadfafd', '', 'm'),
(178, 'sdfasd', '$2y$10$yntUp2pnuNYFCch/7omWW.6eIO9XK97PBpSkyrcyij1I.4Zfw2DIG', 'sdfasd', '', 'm'),
(182, 'aaaaaaaaffff', '$2y$10$wNnPEDDAwdUzNWuAyA.1DuZGH48cqhSWaeSkuDrdgpF84RWzdJLjO', 'aaaaaaaaffff', '../img/avatar/defoult.webp', 'm'),
(183, 'sdfsdfsdffsdfsdfsd', '$2y$10$Fid4Vr2BiWr0h1CGRxJ3DevGgQIErvC1coXBPuD2KdymDd1xN2l2e', 'sdfsdfsdffsdfsdfsd', '../img/avatar/ahri.jpg', 'f'),
(184, 'fefefefew', '$2y$10$thKwrGmT2qyoC9KNZ.7yC.gKVuHbSWUOqzVGMJpxFQiIytJFRZuc2', 'fefefefew', '', 'f'),
(185, 'sfdfsdfsdf', '$2y$10$Qfn194ALz8Ia.GjpAQCI8OhWV5y3FGKYW4UCKUSCX9Fkh9WZOhQqO', 'sfdfsdfsdf', '', 'm'),
(186, 'sdsadasd', '$2y$10$0EqUS6yR16MRKSFdohFmxuODn.H10rjFuBrdIeSEPALow7JIHjq1W', 'sdsadasdsdsadasd', '', 'm'),
(187, 'dfafafdesfasf', '$2y$10$uG97dta9ldj0elq95/LNEuYa3b8wB1mEcxiCbgtDC4pgw4HdvVA0S', 'dfafafdesfasf', '../img/avatar/defoult.webp', 'm'),
(188, 'fedddsfsdfsdf', '$2y$10$QYNjtv1hMAlSv0V1gK1C1uev9w2/bb/89NihG2vRV5yYr0YyHOdwe', 'fedddsfsdfsdf', '../img/avatar/defoult.webp', 'm'),
(189, 'ahri', '$2y$10$NTxHMUSf9pJ.9pP9E.7f../i0R8TPywD0UIDK486UC9rzHoFsAyaK', 'ahri', '../img/avatar/ahri.jpg', 'f'),
(190, 'woman', '$2y$10$qKcRv0dI0IujoRXpqEu4x./4wMp.MId0O/ujpwBpfZs0fsKEayoHa', 'woman', '../img/avatar/woman.jpg', 'f'),
(191, 'gfdgsfgs', '$2y$10$Kt8TwNF5GolKn.Wye2i1C.Vp1iTmdY2uHYPyxnI.zYxKsmzDhrSte', 'gfdgsfgs', '../img/avatar/46952375df64c4b3e3097528d5e595cb.jpg', 'm'),
(192, 'abdulaziz7777', '$2y$10$n4trnzdNqJqlCFEvI54oAuDQe1jUiEYJlElLHNXLXVPxnCgdUC7hS', 'abdulaziz7777', '../img/avatar/defoult.webp', 'm'),
(193, ',dlkasjdljsd', '$2y$10$x8qLGBnkclJ6cjel73Z.je5cXgEM.pAHG70yhQA2uQuJ89YtbxJPy', ',dlkasjdljsd', '../img/avatar/defoult.webp', 'm'),
(194, 'abdulaziz8888', '$2y$10$PlxCGKPPW8Z79vmAUJPhR.KR23P6K6tqVcxXdqOGSHwVMuHtZVe/y', 'abdulaziz8888', '../img/avatar/defoult.webp', 'm'),
(195, 'abdulaziz666', '$2y$10$e0K/7RdWADi2F0SkabLcR.1VwBr1XQbcRo.EUMhu9wZIiu.PY3Y3K', 'abdulaziz666', '../img/avatar/woman.jpg', 'f'),
(196, 'abdulaziz6666', '$2y$10$0SWQobAvRw.9uoJmtUWf7ON3lZfFY7XZQI0AFoY4o0a6HasoVbxpu', 'abdulaziz6666', '../img/avatar/defoult.webp', 'm'),
(197, 'abdulaziz66666', '$2y$10$QqC4uIOwXKYn3oLQNfEQYedJC8JZnic8Jwrhf2bnDSElzuIM5ZF9i', 'abdulaziz6666', '../img/avatar/defoult.webp', 'm'),
(198, 'abdulaziz66668', '$2y$10$yc7g0ogrKzC4hdEp.iZw0.DotO16lDm6wcTZu2fdX1qA50ZSf0JMO', 'abdulaziz6666', '../img/avatar/woman.jpg', 'f'),
(199, 'dsadsadsad', '$2y$10$epM1XugdsWlLKCHT1C.uUe9NNJxVJMzbdqUlU.RuHQyIzi4Gz2jUy', 'dsadsadsad', '../img/avatar/woman.jpg', 'f'),
(200, 'ayol', '$2y$10$iliOQ8vO7ouNlCt0nb96juxHym5FW19pIk75cBMnrXGNG6Y3Wlzc.', 'ayol', '../img/avatar/woman.jpg', 'f'),
(201, 'erkak', '$2y$10$PUInW.rfa.uShKNWz2suhuv.4ski3B5SsTl.5dmNSfxjKRwTIHzPa', 'erkak', '../img/avatar/defoult.webp', 'm');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
