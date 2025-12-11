-- phpMyAdmin SQL Dump
-- version 5.2.2deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2025 at 05:04 PM
-- Wersja serwera: 8.4.7-0ubuntu0.25.04.2
-- Wersja PHP: 8.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ryby`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przynety`
--

CREATE TABLE `przynety` (
  `id` int NOT NULL,
  `nazwa` varchar(128) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` varchar(1024) COLLATE utf8mb4_polish_ci NOT NULL,
  `zdjecie` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rybki`
--

CREATE TABLE `rybki` (
  `id` int NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `zdjecie` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby_przynety`
--

CREATE TABLE `ryby_przynety` (
  `id` int NOT NULL,
  `rybka_id` int NOT NULL,
  `przyneta_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby_zanety`
--

CREATE TABLE `ryby_zanety` (
  `id` int NOT NULL,
  `rybka_id` int NOT NULL,
  `zaneta_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zanety`
--

CREATE TABLE `zanety` (
  `id` int NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `zdjecie` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `przynety`
--
ALTER TABLE `przynety`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rybki`
--
ALTER TABLE `rybki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby_przynety`
--
ALTER TABLE `ryby_przynety`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby_zanety`
--
ALTER TABLE `ryby_zanety`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zanety`
--
ALTER TABLE `zanety`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `przynety`
--
ALTER TABLE `przynety`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `rybki`
--
ALTER TABLE `rybki`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ryby_przynety`
--
ALTER TABLE `ryby_przynety`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ryby_zanety`
--
ALTER TABLE `ryby_zanety`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `zanety`
--
ALTER TABLE `zanety`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
