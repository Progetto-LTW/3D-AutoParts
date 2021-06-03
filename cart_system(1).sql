-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 03, 2021 alle 19:02
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
-- Database: `cart_system`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(12, 'gianni', 'gianni@alice.it', '339402992919', 'via casal del marmo 32', 'cod', 'Ammortizzatori(3), Tergicristalli(1)', '280'),
(13, 'francesco ', 'francesco@gmail.com', '3039401394', 'via xxxxxx 45', 'cards', 'Kit-frizione(1), Pastiglie freno\r\n(1)', '85'),
(15, 'arianna', 'arianna99@hotmail.com', '239429048482', 'via aodivioeo 3', 'paypal', 'Ammortizzatori(1), Tergicristalli(1), Kit-frizione(3)', '250'),
(16, 'massimo', 'massimo@alice.it', '2193945893', 'via ciaociaociao 47', 'carta di credito', 'Ammortizzatori(1), Tergicristalli(15), Pastiglie freno\r\n(1), Dischi freno(1)', '412'),
(17, 'gianluca', 'gianlu@hotmail.it', '193949294', 'via dofpwrgvwp 34', 'carta di credito', 'Tergicristalli(1)', '10'),
(18, 'riccardo', 'ric@alice.it', '1032440134', 'oeorgw', 'paypal', 'Tergicristalli(1)', '10'),
(19, 'riccardo', 'ric@alice.it', '1032440134', 'oeorgw', 'paypal', 'Tergicristalli(1)', '10');

-- --------------------------------------------------------

--
-- Struttura della tabella `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_auto` varchar(20) NOT NULL,
  `product_3d` varchar(10) NOT NULL,
  `product_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`, `product_auto`, `product_3d`, `product_desc`) VALUES
(1, 'Ammortizzatori', '90', 1, 'image/ammortizzatori.jpg', 'p1000', 'FIAT PUNTO (188) 1.2', 'Si!', 'COMPATIBILE CON FIAT PUNTO (188) 1.2 16V FIAT PUNTO (188) 1.2 60 FIAT PUNTO (188) 1.2 Bifuel FIAT PUNTO (188) 1.2 Natural Power FIAT PUNTO (188) 1.3 JTD 16V FIAT PUNTO (188) 1.4 FIAT PUNTO Van (188AX) 1.2 60 FIAT PUNTO Van (188AX) 1.3 JTD '),
(2, 'Tergicristalli', '10', 1, 'image/tergicristalli.jpg', 'p1001', 'Fiat 500', 'Si!', 'COMPATIBILITA\': UNIVERSALE'),
(3, 'Kit-frizione', '50', 1, 'image/kit-frizione.jpg', 'p1002', 'FORD FOCUS C-MAX 2.0', 'No', 'KIT COMPATIBILE CON: FORD FOCUS C-MAX 2.0 TDCi FORD FOCUS II (DA_) 2.0 TDCi FORD FOCUS II Station wagon (DA_) 2.0 TDCi FORD FOCUS II Tre volumi (DA_) 2.0 TDCi FORD GALAXY (WA6) 2.0 TDCi FORD GALAXY (WA6) 2.0 TDCi FORD S-MAX (WA6) 2.0 TDCi FORD S-MAX (WA6)'),
(4, 'Pastiglie freno\r\n', '35', 1, 'image/pastiglie-freno.jpg', 'p1003', 'Nissan Micra ', 'Si!', 'COMPATIBILITA\' - Ricambistica compatibile con DACIA / DACIA LCV / LADA / LADA LCV / NISSAN / RENAULT / RENAULT LCV per i modelli Captur (J5_, H5_) : 0.9 Tce;0.9 TCe 90 / Clio II (BB_, CB_)/ Lutecia : 1.2 16V;1.5 dCi (B/C2J);1.5 dCi (B/CB3M).'),
(5, ' Supporto cambio ', '36', 1, 'image/support.png', 'p1004', ' VW Golf Mk1 1.6 1.8', 'Si!', 'Adatto Per: 1977-1983 Per VW Golf Mk1 1.6 1.8 Gti, 1980-1992 Per VW Golf Cabriolet Mk1 1.6 1.8 Gti, 1984-1992 Pickup Caddy Per VW 1.6 1.8 Gti, 1978-1992 Per VW Scirocco 1.6 1.8 Gti '),
(6, 'Dischi freno', '137', 1, 'image/dischi-freno.jpg', 'p1005', 'Audi: A1 (8X)', 'No', 'Adatto per: Audi: Audi: A1 (8X), A1 quattro (8X), A3 (8L), A3 quattro (8L); Seat: Cordoba (6L), Ibiza IV (6L), Ibiza V (6J), Ibiza V (6P), Leon (1M), Toledo II (1M), Toledo IV (KG); Fabia I (6Y), Fabia II (54), Fabia II (57), Fabia II (58), Octavia I (1U)'),
(7, 'Pinza freno', '65', 1, 'image/pinza-freno.jpg', 'p1006', 'SEAT ALTEA MPV (04-1', 'Si!', 'Compatibile per: Audi A3 (03-13)-SEAT ALTEA MPV (04-15)-Seat Leon Hatchback (05-13)-SEAT TOLEDO Berlina (99-05)-SEAT TOLEDO HATCHBACK (04-10)-Skoda Octavia Hatchback (1Z) (04-13)-Skoda Octavia Estate (1Z) (04-13)-Skoda YETI SUV (09-)-VOLKSWAGEN BEETLE HAT'),
(9, 'Cerchioni', '350', 1, 'image/cerchioni.jpg', 'p1007', 'Jeep Wrangler', 'No', ' Dimensioni prodotto : 42 x 41 x 20 cm; 2 Kg ');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT per la tabella `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT per la tabella `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
