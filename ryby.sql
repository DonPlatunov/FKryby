-- phpMyAdmin SQL Dump
-- version 5.2.2deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sty 29, 2026 at 10:54 AM
-- Wersja serwera: 8.4.7-0ubuntu0.25.10.3
-- Wersja PHP: 8.4.11

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

--
-- Zrzut danych tabeli `rybki`
--

INSERT INTO `rybki` (`id`, `nazwa`, `opis`, `zdjecie`) VALUES
(1, 'Sum', 'Sum (Silurus glanis)\r\n\r\nOpis:\r\nSum to największa ryba słodkowodna Europy. Ma długie ciało bez łusek, szeroką głowę i charakterystyczne wąsy. Prowadzi głównie nocny tryb życia.\r\n\r\nOdżywianie:\r\nJest drapieżnikiem – zjada ryby, raki, żaby, a czasem drobne ptaki lub gryzonie.\r\n\r\nWystępowanie:\r\nŻyje w dużych rzekach i jeziorach. Najczęściej przebywa w głębokich dołach, przy zatopionych drzewach i stromych brzegach.\r\n\r\nCiekawostki:\r\nMoże żyć kilkadziesiąt lat i osiągać ponad 2 metry długości. Dzięki wąsom dobrze orientuje się w mętnej wodzie.\r\n', 'sum.jpeg'),
(2, 'Szczupak', 'Szczupak (Esox lucius)\r\n\r\nOpis:\r\nSzczupak to drapieżna ryba słodkowodna o wydłużonym ciele i dużym pysku z ostrymi zębami. Jest bardzo szybki i zwinny.\r\n\r\nOdżywianie:\r\nŻywi się głównie rybami, ale zjada też żaby, drobne ptaki i małe ssaki.\r\n\r\nWystępowanie:\r\nWystępuje w jeziorach, rzekach i stawach. Najczęściej przebywa wśród roślin wodnych, gdzie czai się na ofiarę.\r\n\r\nCiekawostki:\r\nSzczupak potrafi atakować ofiary prawie swojej wielkości i jest jednym z najskuteczniejszych drapieżników w wodach słodkich.\r\n', 'szczupak.jpg'),
(3, 'Śliz', 'Śliz (Barbatula barbatula)\r\n\r\nOpis:\r\nŚliz to niewielka ryba słodkowodna o wydłużonym ciele i małych wąsikach przy pysku. Prowadzi skryty, denny tryb życia.\r\n\r\nOdżywianie:\r\nŻywi się drobnymi bezkręgowcami, larwami owadów i resztkami organicznymi.\r\n\r\nWystępowanie:\r\nWystępuje w czystych, chłodnych rzekach i strumieniach o piaszczystym lub kamienistym dnie.\r\n\r\nCiekawostki:\r\nŚliz jest bardzo odporny na silny prąd wody i najaktywniejszy jest nocą.', 'sliz.webp'),
(4, 'Świnka', 'Świnka (Chondrostoma nasus)\r\n\r\nOpis:\r\nŚwinka to ryba słodkowodna o wydłużonym ciele i charakterystycznym, dolnym pysku przystosowanym do skubania dna.\r\n\r\nOdżywianie:\r\nŻywi się głównie glonami, nalotami roślinnymi oraz drobnymi bezkręgowcami.\r\n\r\nWystępowanie:\r\nWystępuje w rzekach o czystej, dobrze natlenionej wodzie i kamienistym dnie.\r\n\r\nCiekawostki:\r\nŚwinka często tworzy stada i jest uznawana za wskaźnik czystości wód.', 'swinka.jpg'),
(5, 'Tołpyga', 'Tołpyga (Hypophthalmichthys)\r\n\r\nOpis:\r\nTołpyga to duża ryba słodkowodna o wysokim, bocznie spłaszczonym ciele i małych oczach osadzonych nisko na głowie.\r\n\r\nOdżywianie:\r\nŻywi się głównie planktonem – fitoplanktonem i zooplanktonem, które filtruje z wody.\r\n\r\nWystępowanie:\r\nWystępuje w jeziorach, stawach i zbiornikach zaporowych o ciepłej, spokojnej wodzie.\r\n\r\nCiekawostki:\r\nTołpyga rośnie bardzo szybko i bywa wykorzystywana do biologicznego oczyszczania wód.\r\n', 'tolpyga.jpg'),
(6, 'Ukleja', 'Ukleja (Alburnus alburnus)\r\n\r\nOpis:\r\nUkleja to niewielka, smukła ryba słodkowodna o srebrzystych bokach. Jest bardzo ruchliwa i często pływa tuż pod powierzchnią wody.\r\n\r\nOdżywianie:\r\nŻywi się owadami, larwami oraz drobnym planktonem.\r\n\r\nWystępowanie:\r\nWystępuje w rzekach, jeziorach i zbiornikach zaporowych, głównie w górnych warstwach wody.\r\n\r\nCiekawostki:\r\nUkleja była dawniej wykorzystywana do produkcji sztucznej masy perłowej.\r\n', 'ukleja.jpg'),
(7, 'Węgorz', 'Węgorz (Anguilla anguilla)\r\n\r\nOpis:\r\nWęgorz to ryba o długim, wężowatym ciele i śliskiej skórze. Prowadzi głównie nocny, skryty tryb życia.\r\n\r\nOdżywianie:\r\nJest drapieżnikiem – zjada ryby, skorupiaki, owady wodne i mięczaki.\r\n\r\nWystępowanie:\r\nŻyje w rzekach, jeziorach i stawach, kryjąc się w mule, pod kamieniami i korzeniami.\r\n\r\nCiekawostki:\r\nWęgorz odbywa tarło w Morzu Sargassowym, pokonując tysiące kilometrów.', 'węgorz.jpg'),
(8, 'Wzdręga', 'Wzdręga to ryba słodkowodna o bocznie spłaszczonym ciele i czerwonych płetwach. Często przebywa blisko powierzchni wody.\r\n\r\nOdżywianie:\r\nŻywi się roślinami wodnymi, glonami oraz drobnymi bezkręgowcami.\r\n\r\nWystępowanie:\r\nWystępuje w jeziorach, wolno płynących rzekach i stawach z dużą ilością roślinności.\r\n\r\nCiekawostki:\r\nWzdręga bywa mylona z płocią, ale ma bardziej czerwone płetwy i złociste ubarwienie.', 'wzdręga.jpg'),
(9, 'Amur', 'Amur Biały\r\nAmur biały to duża ryba karpiowata pochodząca z Azji, introdukowana do europejskich wód głównie w celu ograniczania nadmiernego rozwoju roślinności wodnej. Jest bardzo silna, ostrożna i podczas holu potrafi stawiać długi, wyczerpujący opór.\r\nŻywi się niemal wyłącznie roślinnością wodną, taką jak trzciny, rdestnice, moczarka czy ramienice. Czasami zjada również glony oraz miękkie części roślin lądowych, które wpadną do wody.\r\nNajczęściej występuje w jeziorach, zbiornikach zaporowych oraz wolno płynących rzekach, szczególnie tam, gdzie występuje gęsta roślinność podwodna i przybrzeżna.\r\nCiekawostką jest fakt, że dorosły amur potrafi w ciągu jednego dnia zjeść ilość roślinności zbliżoną do masy własnego ciała.\r\n', 'Amur.webp'),
(10, 'Boleń', 'Boleń\r\nBoleń to drapieżna ryba karpiowata, wyróżniająca się smukłą sylwetką i ogromną dynamiką ataku. Jest jednym z najszybszych drapieżników w polskich wodach i często poluje tuż pod powierzchnią.\r\nPodstawą jego diety są drobne ryby, przede wszystkim ukleje, kiełbie i młode płocie. Okazjonalnie zjada również owady, które spadną do wody.\r\nZamieszkuje głównie duże rzeki, zbiorniki zaporowe oraz odcinki z silnym nurtem, takie jak główki, przelewy i opaski brzegowe.\r\nCharakterystyczną cechą bolenia są widowiskowe ataki na stada drobnicy, którym towarzyszą głośne pluski i rozbryzgi wody.\r\n', 'Bolen.jpg'),
(11, 'Brzana', 'Brzana\r\nBrzana to typowa ryba rzeczna, silnie związana z szybkim nurtem i twardym dnem. Jej znakiem rozpoznawczym są cztery wąsy czuciowe, które pomagają jej w poszukiwaniu pokarmu.\r\nOdżywia się głównie organizmami dennymi, takimi jak larwy owadów, skorupiaki, ślimaki oraz ikra innych ryb. Pokarm wyszukuje, ryjąc pysk w żwirze i kamieniach.\r\nNajlepiej czuje się w rzekach o czystej, dobrze natlenionej wodzie, na odcinkach żwirowych, kamienistych oraz w pobliżu bystrzy i rynien.\r\nMało znaną ciekawostką jest to, że ikra brzany jest trująca dla człowieka i nie nadaje się do spożycia.\r\n', 'Brzana.webp'),
(12, 'Certa', 'Certa\r\nCerta to stadna ryba karpiowata o wędrownym trybie życia, ściśle związana z większymi rzekami oraz wodami przybrzeżnymi Bałtyku. Największą aktywność wykazuje w okresie wiosennym.\r\nJej dieta składa się głównie z bezkręgowców dennych, takich jak larwy owadów, małże i drobne skorupiaki, które zbiera z dna rzeki.\r\nNajczęściej spotykana jest w dolnych i środkowych odcinkach dużych rzek, w ujściach oraz w strefach przybrzeżnych morza, skąd wyrusza na tarło w górę rzek.\r\nCerta potrafi podczas wędrówek tarłowych pokonywać bardzo długie dystanse, często setki kilometrów.\r\n', 'Certa.webp'),
(13, 'Głowacica', 'Głowacica\r\nGłowacica to największy przedstawiciel ryb łososiowatych w Europie i jeden z najbardziej majestatycznych drapieżników rzecznych. Charakteryzuje się masywną głową, potężnym ciałem i ogromną siłą.\r\nŻywi się głównie innymi rybami, takimi jak pstrągi, lipienie i świnki, a większe osobniki potrafią atakować również płazy oraz drobne ssaki.\r\nZamieszkuje duże, górskie i podgórskie rzeki o czystej, chłodnej i dobrze natlenionej wodzie, z głębokimi dołami i kryjówkami przy dnie.\r\nCiekawostką jest fakt, że głowacica jest rybą bardzo długowieczną i może dożywać kilkudziesięciu lat.\r\n', 'głowacica.png'),
(14, 'Jaź', 'Jaź\r\nJaź to ryba karpiowata o bardzo szerokich możliwościach adaptacyjnych, spotykana zarówno w rzekach, jak i wodach stojących. Jest ostrożna, ale jednocześnie bardzo żarłoczna.\r\nJego dieta jest bardzo zróżnicowana i obejmuje owady, larwy, skorupiaki, drobne ryby, a także pokarm roślinny, nasiona i owoce wpadające do wody.\r\nNajczęściej przebywa w wolniejszych odcinkach rzek, przy brzegach porośniętych roślinnością, a także w jeziorach i zbiornikach zaporowych.\r\nCiekawostką jest to, że jaź potrafi żerować również przy powierzchni, zbierając owady z tafli wody.\r\n', 'Jaź.jpg'),
(15, 'Karaś', 'Karaś\r\nKaraś to niezwykle wytrzymała ryba karpiowata, znana ze swojej zdolności przetrwania w bardzo trudnych warunkach środowiskowych. W Polsce występuje głównie karaś pospolity i karaś srebrzysty.\r\nOdżywia się drobnymi organizmami dennymi, larwami owadów, resztkami organicznymi oraz pokarmem roślinnym, który znajduje w mule.\r\nNajczęściej spotykany jest w płytkich stawach, starorzeczach, małych jeziorach i zbiornikach o mulistym dnie i ubogiej zawartości tlenu.\r\nCiekawostką jest fakt, że karaś potrafi przetrwać zimę zagrzebany w mule, w stanie znacznie obniżonej aktywności życiowej.', 'Karaś.jpg');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
