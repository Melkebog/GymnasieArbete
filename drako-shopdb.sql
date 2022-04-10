-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 09 apr 2022 kl 15:16
-- Serverversion: 10.4.21-MariaDB
-- PHP-version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `drako-shopdb`
--
	 CREATE DATABASE `drako-shopdb`;
-- --------------------------------------------------------

--
-- Tabellstruktur `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(11) NOT NULL,
  `Admin_uid` tinytext NOT NULL,
  `Admin_pwd` longtext NOT NULL,
  `Admin_email` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `admin`
--

INSERT INTO `admin` (`Admin_id`, `Admin_uid`, `Admin_pwd`, `Admin_email`) VALUES
(1, 'Sara', 'Sara123', 'Sara.jackob@gmail.com'),
(2, 'Jackob', 'Jackob145', 'Jackob@gmail.com'),
(4, 'Ada', '$2y$10$YzeC6D9VfKHkaQTbtu3qh.eObi2hGAbYZuCp0muVYxUYNcN8aPPbG', 'Ada@gmail.com'),
(5, 'Melke', '$2y$10$AMe/4e2i9DDGB2LXnDW3o.QENsLL.o.ZyP47ocVqSEicPQIAl4vr.', 'Melke@gmail.com');

-- --------------------------------------------------------

--
-- Tabellstruktur `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `prodID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellstruktur `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `paymentMode` varchar(20) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `paymentMode`, `products`, `amount_paid`) VALUES
(2, 'Melke', 'gghamgg19@gmail.com', '0734-6931910 ', 'Lugnets', 'Cash', 'Produkt5(1), Produkt6(1), Produkt7(1), Produkt3(1)', '11280'),
(3, 'Melke', 'gghamgg19@gmail.com', '0734-6931910 ', 'Lugnets', 'Cash', 'Produkt8(2), Produkt9(1)', '96875');

-- --------------------------------------------------------

--
-- Tabellstruktur `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `bild` varchar(255) NOT NULL,
  `prodID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `bild`, `prodID`) VALUES
(1, 'T-shirt', 200, 'Röd T-shirt', '623aece32f9a30.46416301.jpg', 'Produkt1'),
(4, 'Produkt2', 300, 'Produkt2', '623af30ae80821.18591666.jpg', 'Produkt2'),
(5, 'Produkt3', 1000, 'Produkt3', '623af31bde40e3.98034952.jpg', 'Produkt3'),
(6, 'Produkt4', 800, 'Produkt4', '623af333054216.73999865.jpg', 'Produkt4'),
(9, 'Produkt6', 890, 'Produkt6', '623af3a3922612.79817597.jpeg', 'Produkt6'),
(10, 'Produkt5', 9090, 'Produkt5', '623af3ccc63a09.50152875.jpg', 'Produkt5'),
(11, 'Produkt7', 300, 'Produkt7', '623af3db60f885.44365359.jpg', 'Produkt7'),
(12, 'Produkt8', 2983, 'Produkt8', '623af4051bb489.75583382.jpg', 'Produkt8'),
(13, 'Produkt9', 90909, 'Produkt9', '623af49d4bcee5.54219049.jpg', 'Produkt9'),
(14, 'Produkt10', 92, 'Produkt10', '624c89df523fa0.79294582.jpg', 'Produkt10');

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `users_id` int(255) NOT NULL,
  `users_uid` tinytext NOT NULL,
  `users_pwd` longtext NOT NULL,
  `users_email` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`users_id`, `users_uid`, `users_pwd`, `users_email`) VALUES
(1, 'Sara', '$2y$10$QG7kBZTf2wjJNj73oIn.q.568mXudWFcS/9Iyz.PVlrVnHJzU2FR6', 'Sara@gmail.com'),
(2, 'Loka', '$2y$10$qmacxnRjk2qztyOTmhWhsuJzxYXU4XyPG51eK97YS/CqfSyEe8EPC', 'Loka@gmail.com'),
(3, 'Melke', '$2y$10$LSmfZK3YWFKRbeXYI4p6Ou.r/47MGY5O5dLQ27vbOdfzIpfh1Lrmu', 'gghamgg19@gmail.com'),
(4, 'Mattias145', '$2y$10$NdsF5sNDbz.MccG.tbtl9efW/aGNNvz/3NgsXl0ujzDPyfT.BOT0q', 'm.m@gmail.com'),
(5, 'Erkki', '$2y$10$mDmXylMrimZw5c8VTGfEUOgukAirvZTlAaoGjiPtaLSeoa4uOTpx2', 'e@se.se'),
(6, 'Chamiram', '$2y$10$WtxDJGOFTLy4NSmEw5iFN..5m.skZcfcz9Nk4As3Pux8fIXxccMbG', 'Chamiram@gmail.com'),
(7, 'Gab', '$2y$10$iyEY9QG5j5rbNVLGgNhUWOb3XHova3pltZE2IoqxKAruDknsUDMOq', 'gab@gmail.com'),
(8, 'Joan', '$2y$10$iSZii4oLJjmXEdwGIClY/.5I9zBVrw9AwIy0/CCa8VbYkoL3QZynO', 'joan.m@gmail.com'),
(9, 'Hej', '$2y$10$XjaKovDQC16GSZjHUdNO5e6CepXHY/Mh6C.5zgiZTQ.CuA9C4s4za', 'fgergfuiefg.fuegf@gmail.com'),
(10, 'Martin', '$2y$10$iacvm9Ec0uIcxidaT/DcyORU5GC4GQ0pn92.ZvidIuihJ7IVz27Jm', 'Martin@gmail.com');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Index för tabell `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT för tabell `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT för tabell `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT för tabell `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
