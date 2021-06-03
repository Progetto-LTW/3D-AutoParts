-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 03, 2021 alle 19:06
-- Versione del server: 10.4.18-MariaDB
-- Versione PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registrazione`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti_reg`
--

CREATE TABLE `utenti_reg` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `utenti_reg`
--

INSERT INTO `utenti_reg` (`id`, `username`, `email`, `password`) VALUES
(1, 'federicax99', 'ciaoatutti@gmail.com', 'ciao'),
(3, 'kevin22', 'ciaoatutti@gmail.com', 'ciao'),
(4, 'gabriella@68', 'aaaa@hotmail.com', 'oiii'),
(5, 'francesca', 'aaaa@hotmail.com', 'ciaooo'),
(7, 'daniele34', 'daniele@gmail.com', '1234'),
(8, 'gino', 'gino@alice.it', '1234');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `utenti_reg`
--
ALTER TABLE `utenti_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `utenti_reg`
--
ALTER TABLE `utenti_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
