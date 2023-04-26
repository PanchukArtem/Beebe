-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 14, 2022 at 12:04 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bees`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `his_id` int(10) NOT NULL,
  `date_time` date NOT NULL,
  `date_of_start` varchar(255) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `birthYear` double DEFAULT NULL,
  `power` double DEFAULT NULL,
  `honey` double DEFAULT NULL,
  `wax` double DEFAULT NULL,
  `comb` int(100) DEFAULT NULL,
  `vosh` int(100) DEFAULT NULL,
  `frame` int(100) DEFAULT NULL,
  `thermal` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `locName` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `hive_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`his_id`, `date_time`, `date_of_start`, `birth`, `birthYear`, `power`, `honey`, `wax`, `comb`, `vosh`, `frame`, `thermal`, `description`, `locName`, `status`, `hive_id`) VALUES
(1, '2022-06-29', '2', '2', 2, 2, 2, 2, 2, 2, 2, '2', '2', 'GoloseevskyForest', 'Редаговано', 1),
(2, '2022-06-29', '24.06.2022', 'Селянська', 2017, 25, 20, 17.4, 12, 12, 6, '24.06.2022', 'Хворi пчоли', 'NulesFarm', 'Редаговано', 1),
(30, '2022-06-29', NULL, NULL, NULL, 20, 10, NULL, NULL, NULL, 7, '29.06.2022', NULL, NULL, 'Редаговано', 2),
(31, '2022-06-29', NULL, NULL, NULL, 15, 5, NULL, NULL, NULL, NULL, '29.06.2022', 'Щось з пчолами', NULL, 'Редаговано', 2),
(33, '2022-07-03', NULL, NULL, NULL, 30, 20, NULL, NULL, NULL, NULL, '03.07.2022', '17', NULL, 'Редаговано', 1),
(34, '2022-07-03', NULL, NULL, NULL, 30, 20, NULL, NULL, NULL, NULL, '03.07.2022', 'Бджiл не сильно багато', NULL, 'Редаговано', 1),
(35, '2022-07-03', NULL, NULL, NULL, 15, 20, NULL, NULL, NULL, NULL, '03.07.2022', 'Хворi бджоли', NULL, 'Редаговано', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hive`
--

CREATE TABLE `hive` (
  `id` int(10) NOT NULL,
  `date_of_start` varchar(255) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `birthYear` double DEFAULT NULL,
  `power` double DEFAULT NULL,
  `honey` double DEFAULT NULL,
  `wax` double DEFAULT NULL,
  `comb` int(100) DEFAULT NULL,
  `vosh` int(100) DEFAULT NULL,
  `frame` int(100) DEFAULT NULL,
  `thermal` varchar(255) DEFAULT NULL,
  `pict` varchar(1500) DEFAULT NULL,
  `description` varchar(1500) DEFAULT NULL,
  `locName` varchar(255) DEFAULT NULL,
  `loc_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hive`
--

INSERT INTO `hive` (`id`, `date_of_start`, `birth`, `birthYear`, `power`, `honey`, `wax`, `comb`, `vosh`, `frame`, `thermal`, `pict`, `description`, `locName`, `loc_id`) VALUES
(1, '24.06.2022', 'Селянська', 2017, 30, 20, 17, 12, 12, 6, '03.07.2022', 'https://agrostory.com/upload/resize_cache/iblock/b46/300_300_1/b463bb858b061ec31196b953af7244b7.jpg', 'Бджiл не сильно багато', 'NulesFarm', 1),
(2, '14.06.2022', 'Чукотська', 2018, 15, 20, 2, 15, 10, 7, '03.07.2022', 'https://static.tildacdn.com/tild3731-6161-4039-a231-636466383566/1421240171_uley.jpg', 'Хворi бджоли', 'NulesFarm', 1),
(3, '20.06.2022', 'Житомирська', 2019, 17.5, 15, 7, 11, 15, 10, '20.06.2022', 'https://i.pinimg.com/originals/b8/21/4e/b8214e1e080cd38e6b31a2ae9a28eea4.jpg', 'Якась примiточка', 'GoloseevskyForest', 2),
(5, '07.06.2022', 'Австралiйська', 2022, 10, 8, 6, 10, 8, 5, '29.06.2022', 'https://pravilniymed.com/media/wysiwyg/__viber_2020-01-19_22-08-08.jpg', 'Тут примiтка', 'NulesFarm', 1),
(6, '29.06.2022', 'Марсiанська', 2021, 50, 100, 45, 20, 20, 20, '29.06.2022', 'https://fermer.blog/media/res/7/0/1/4/8/70148.pqk4p0.850.jpg', 'Пчоли з марсу', 'Снiтинка', 3),
(7, '30.06.2022', 'Лiсна', 2017, 17.5, 12, 14, 15, 12, 17, '29.06.2022', 'https://euro-uley.com/wp-content/uploads/2018/05/post-02.jpg', 'Бджола бжбж', 'Снiтинка', 3);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `locName` varchar(255) DEFAULT NULL,
  `pict` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `locName`, `pict`) VALUES
(1, 'NulesFarm', 'https://latifundist.com/storage/HidroTur/Chipsu%20Lux.jpg'),
(2, 'GoloseevskyForest', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/%D0%93%D0%BE%D0%BB%D0%BE%D1%81%D1%96%D1%97%D0%B2%D1%81%D1%8C%D0%BA%D0%B8%D0%B9_%D0%BB%D1%96%D1%81_011.jpg/1280px-%D0%93%D0%BE%D0%BB%D0%BE%D1%81%D1%96%D1%97%D0%B2%D1%81%D1%8C%D0%BA%D0%B8%D0%B9_%D0%BB%D1%96%D1%81_011.jpg'),
(3, 'Снiтинка', 'http://forum.zamki-kreposti.com.ua/uploads/monthly_2018_05/01-2.jpg.0d15f68bbb662b4b43b7c15fca616289.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `username`, `password`) VALUES
(1, 'Maksik', 'Максос', '4321'),
(9, 'admin', 'admin', '4321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`his_id`);

--
-- Indexes for table `hive`
--
ALTER TABLE `hive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `his_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `hive`
--
ALTER TABLE `hive`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
