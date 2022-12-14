-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 26, 2022 alle 12:06
-- Versione del server: 10.4.24-MariaDB
-- Versione PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `negoziami`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cars`
--

CREATE TABLE `cars` (
  `id_car` int(11) NOT NULL,
  `model` varchar(40) DEFAULT NULL,
  `brand` varchar(40) DEFAULT NULL,
  `category` varchar(15) DEFAULT NULL,
  `power_supply` varchar(20) DEFAULT NULL,
  `displacement` varchar(10) DEFAULT NULL,
  `number_doors` varchar(1) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `daily_price` double(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `cars`
--

INSERT INTO `cars` (`id_car`, `model`, `brand`, `category`, `power_supply`, `displacement`, `number_doors`, `color`, `daily_price`) VALUES
(1, '159', 'Alfa Romeo', 'Berlina', 'Benzina', '3.2 Jts', '5', 'Nero', 150.00),
(2, 'Micra', 'Nissan', 'Berlina', 'Diesel', '1.5 Mt', '5', 'Bianco', 110.00),
(3, 'Bravo', 'Fiat', 'Berlina', 'Benzina', '1.4', '5', 'Rosso scuro', 90.00),
(4, 'Tipo', 'Fiat', 'Berlina', 'Diesel', '1.4 Mjt', '5', 'Grigio', 115.00),
(5, 'A4', 'Audi', 'Berlina', 'Benzina', '3.5 Tfsi', '5', 'Argento', 350.00),
(6, 'Classe E', 'Mercedes', 'Berlina', 'Diesel', '4.0 V8', '5', 'Argento', 530.00),
(7, 'Sandero', 'Dacia', 'Utilitaria', 'Benzina', '1.2', '5', 'Blu', 105.00),
(8, 'C1', 'Citroen', 'Utilitaria', 'Diesel', '1.4 Hdi', '5', 'Grigio scuro', 85.00),
(9, 'Picanto', 'Kia', 'Utilitaria', 'Benzina', '1.2', '5', 'Bianco', 135.00),
(10, 'i10', 'Hyundai', 'Utilitaria', 'Gpl', '1.0', '5', 'Marrone', 97.00),
(11, 'Space Star', 'Mitsubishi', 'Utilitaria', 'Bi-Fuel Gpl', '1.0', '5', 'Giallo', 120.00),
(12, 'Twingo', 'Renault', 'Utilitaria', 'Benzina', '1.0', '5', 'Rosso', 110.00),
(13, 'Transit', 'Ford', 'Furgone', 'Diesel', '2.0', '3', 'Grigio', 200.00),
(14, 'Expert', 'Peugeot', 'Furgone', 'Diesel', '1.5', '3', 'Argento', 210.00),
(15, 'Master', 'Renault', 'Furgone', 'Diesel', '2.3', '3', 'Grigio Scuro', 180.00),
(16, 'Proace', 'Toyota', 'Furgone', 'Diesel', '1.5', '3', 'Bianco', 185.00),
(17, 'Vivaro', 'Opel', 'Furgone', 'Diesel', '2.0', '3', 'Rosso', 175.00),
(18, 'Daily', 'Iveco', 'Furgone', 'Diesel', '3.0', '3', 'Blu', 209.00),
(19, 'X1', 'Bmw', 'Suv', 'Ibrida', '2.0', '5', 'Azzurro', 295.00),
(20, 'Ateca', 'Cupra', 'Suv', 'Benzina', '2.0', '5', 'Grigio Scuro', 309.00),
(21, 'HR-V', 'Honda', 'Suv', 'Full Hybrid', '1.6', '5', 'Bianco', 305.00),
(22, 'Puma', 'Ford', 'Suv', 'Ibrida', '1.0', '5', 'Blu celeste', 315.00),
(23, 'Kamiq', 'Skoda', 'Suv', 'Diesel', '1.6 Tdi', '5', 'Bianco', 329.00),
(24, 'Cayenne', 'Porsche', 'Suv', 'Benzina', '3.0', '5', 'Nero', 405.00),
(25, '0', '0', '0', '0', '0', '0', '0', 0.00);

-- --------------------------------------------------------

--
-- Struttura della tabella `rental_cars`
--

CREATE TABLE `rental_cars` (
  `id_rental` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_car` int(11) DEFAULT NULL,
  `rental_start` date DEFAULT NULL,
  `rental_end` date DEFAULT NULL,
  `total_price` double(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `rental_cars`
--

INSERT INTO `rental_cars` (`id_rental`, `id_user`, `id_car`, `rental_start`, `rental_end`, `total_price`) VALUES
(2, 1, 1, '2022-09-30', '2022-10-03', 20.00),
(10, 2, 25, '1990-01-01', '2100-01-01', 0.00),
(15, 10, 25, '2022-09-25', '2022-09-25', 0.00),
(17, NULL, 1, '2022-11-03', '2022-11-04', 0.00),
(18, NULL, 5, '2022-09-25', '2022-09-25', 0.00),
(19, NULL, 7, '2022-09-25', '2022-09-25', 0.00),
(20, NULL, 11, '2022-09-25', '2022-09-25', 0.00),
(22, 11, 25, '2022-09-26', '2022-09-26', 0.00),
(26, 11, 5, '2022-09-26', '2022-09-27', 700.00),
(27, 12, 25, '2022-09-26', '2022-09-26', 0.00),
(29, 13, 25, '2022-09-26', '2022-09-26', 0.00);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `fiscal_code` varchar(16) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `province` varchar(2) DEFAULT NULL,
  `postal_code` varchar(5) DEFAULT NULL,
  `business_name` varchar(50) DEFAULT NULL,
  `vat_number` varchar(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id_user`, `first_name`, `last_name`, `fiscal_code`, `telephone`, `mail`, `address`, `locality`, `province`, `postal_code`, `business_name`, `vat_number`, `username`, `password`) VALUES
(1, 'Francesco', 'Verdi', 'VRDFNC94E22F839U', '3206491043', NULL, 'Via Giardino dei Fiori, 19', 'Bari', 'BA', '70129', NULL, NULL, NULL, NULL),
(2, 'Giuseppe', 'Bianchi', 'BNCGPP00D22F839B', '3210457698', NULL, 'Via dei Colombi, 78', 'Napoli', 'NA', '80100', NULL, NULL, 'Peppe33', 'password00'),
(3, 'Carla', 'Neri', 'NRECRL70P28H501Y', '3784569803', NULL, 'Via dei Partigiani, 18', 'Roma', 'RM', '00010', 'CarServ S.r.l', '07643520567', NULL, NULL),
(4, 'Paola', 'Gialli', 'GLLPLA83M41C352I', '3215648795', NULL, 'Via dei Serpenti, 65', 'Bari', 'BA', '70126', NULL, NULL, NULL, NULL),
(5, 'Gennaro', 'Savastano', 'SVSGNR76M09F839Q', '3485760917', NULL, 'Via Furiosi, 65', 'Napoli', 'NA', '80100', NULL, NULL, NULL, NULL),
(6, 'Marco', 'Alzetta2', 'jkfldm45lcvk4', '3465215462', 'maildiprova@gmail.com', 'asd', 'asd', 'as', '45512', '', '', 'userAlz', 'pwAlz'),
(7, 'Marco', 'Alzetta', 'jkfldm45lcvk4', 'asdd', 'maildiprova@gmail.com', 'asd', 'asd', 'as', '45512', '', '', 'sd', 'dddd'),
(8, 'Prova', 'ProvaC', 'jkfldm45lcvhh', '3dsfksldk', 'mail@mail', 'asd', 'asd', 'as', '45512', '', '', 'useruser', 'pwpw'),
(9, 'Prova', 'ProvaC', 'jkfldm45lcvhh', 'asdd', 'maildiprova@gmail.com', 'asd', 'asd', 'as', '45512', '', '', 'zz', 'zz'),
(10, 'Prova', 'ProvaC', 'jkfldm45lcvk4', '3465215462', 'dd', 'asd', 'asd', 'dd', 'dd', '', '', 'dd', 'dd'),
(11, 'Marco', 'Alzetta', 'jkfldm45lcvk4', '3465215462', 'maildiprova@gmail.com', 'Via', 'Rossini', 'TV', '31551', '', '', 'userDemo', 'passwordDemo'),
(12, 'Marco', 'Alzetta', 'jkfldm45lcvk4', '3465215462', 'maildiprova@gmail.com', 'Via', 'Rossini', 'TV', '45512', '', '', 'userDemo1', 'pwDemo1'),
(13, 'Marco', 'Alzetta', 'jkfldm45lcvk4', '3465215462', 'maildiprova@gmail.com', 'Via', 'Rossini', 'TV', '45512', '', '', 'userDemo', 'pwDemo1');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id_car`);

--
-- Indici per le tabelle `rental_cars`
--
ALTER TABLE `rental_cars`
  ADD PRIMARY KEY (`id_rental`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_car` (`id_car`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `cars`
--
ALTER TABLE `cars`
  MODIFY `id_car` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT per la tabella `rental_cars`
--
ALTER TABLE `rental_cars`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `rental_cars`
--
ALTER TABLE `rental_cars`
  ADD CONSTRAINT `id_car` FOREIGN KEY (`id_car`) REFERENCES `cars` (`id_car`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
