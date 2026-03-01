-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2026 at 10:58 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ryby`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przynety`
--

CREATE TABLE `przynety` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(128) NOT NULL,
  `opis` varchar(1024) NOT NULL,
  `zdjecie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `przynety`
--

INSERT INTO `przynety` (`id`, `nazwa`, `opis`, `zdjecie`) VALUES
(1, 'Biały robak', 'Najbardziej uniwersalna przynęta wędkarska. Dzięki ruchowi i zapachowi skutecznie wabi płoć, leszcza i karasia. Może być stosowany pojedynczo lub w zestawie kilku sztuk.', 'Biały robak.jpg'),
(2, 'Boilies', 'Kulki proteinowe stosowane głównie przy połowie dużych karpi i amurów. Bardzo selektywne.', 'Boilies.jpg'),
(3, 'Błystka obrotowa', 'Metalowa przynęta generująca drgania i błysk. Skuteczna na okonia i klenia.', 'Błystka obrotowa.jpg'),
(4, 'Błystka wahadłowa', 'Cięższa błystka do połowu większych drapieżników, takich jak szczupak i sandacz.', 'Błystka wahadłowa.jpg'),
(5, 'Chleb', 'Naturalna przynęta unosząca się w toni lub przy powierzchni. Szczególnie skuteczna na wzdręgi i karasie.', 'Chleb.jpg'),
(6, 'Ciasto wędkarskie', 'Miękka przynęta o różnych aromatach, idealna na karasie i płocie. Dobrze pracuje na spławiku.', 'Ciasto wędkarskie.jpg'),
(7, 'Czerwony robak', 'Przynęta o intensywnym kolorze i zapachu, szczególnie skuteczna na leszcze, liny i karasie. Działa dobrze na dnie i w wolno płynącej wodzie.', 'Czerwony robak.jpg'),
(8, 'Filet rybny', 'Naturalna, intensywnie pachnąca przynęta na sandacza i suma. Bardzo skuteczna przy połowie gruntowej.', 'Filet rybny.jpg'),
(9, 'Gumy (twistery, rippery)', 'Sztuczne przynęty imitujące rybki lub larwy. Bardzo skuteczne na okonia i sandacza.', 'Gumy (twistery, rippery).jpg'),
(10, 'Kukurydza', 'Słodka i dobrze widoczna przynęta, bardzo odporna na drobnicę. Najczęściej stosowana na karpia, amura i większe leszcze.', 'Kukurydza.jpg'),
(11, 'Martwa rybka', 'Naturalna przynęta drapieżna, używana do połowu sandacza i szczupaka. Działa dzięki zapachowi i wyglądowi.', 'Martwa rybka.jpg'),
(12, 'Ochotka', 'Delikatna, naturalna przynęta używana głównie do połowu płoci i leszczy. Sprawdza się w trudnych warunkach i przy słabym żerowaniu ryb.', 'Ochotka.jpg'),
(13, 'Pellet', 'Twarda, selektywna przynęta o wysokiej wartości odżywczej. Skuteczna na karpie i leszcze.', 'Pellet.jpg'),
(14, 'Rosówka', 'Duży robak o silnym zapachu, skuteczny na liny, leszcze oraz drapieżniki, takie jak sandacz.', 'Rosówka.jpg'),
(15, 'Wobler', 'Twarda przynęta imitująca żywą rybkę. Stosowana na szczupaka i bolenia.', 'Wobler.jpg'),
(16, 'Sucha mucha', 'Sztuczna mucha imitująca owada na powierzchni wody', 'sucha_mucha.jpg'),
(17, 'Mokra mucha', 'Mucha pracująca pod powierzchnią wody', 'mokra_mucha.jpg'),
(18, 'Nimfa', 'Imitacja larwy owada wodnego', 'nimfa.jpg'),
(19, 'Małe nimfy', 'Drobne nimfy stosowane w metodzie muchowej', 'male_nimfy.jpg'),
(20, 'Streamer', 'Sztuczna przynęta imitująca małą rybkę', 'streamer.jpg'),
(21, 'Spinnerbait', 'Obrotowa przynęta drapieżna', 'spinnerbait.jpg'),
(22, 'Plankton', 'Przynęta stosowana przy połowie tołpygi', 'plankton.jpg'),
(23, 'Drobne mięso rybne', 'Małe kawałki ryby', 'mieso_rybne.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rybki`
--

CREATE TABLE `rybki` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `opis` text NOT NULL,
  `zdjecie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `rybki`
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
(15, 'Karaś', 'Karaś\r\nKaraś to niezwykle wytrzymała ryba karpiowata, znana ze swojej zdolności przetrwania w bardzo trudnych warunkach środowiskowych. W Polsce występuje głównie karaś pospolity i karaś srebrzysty.\r\nOdżywia się drobnymi organizmami dennymi, larwami owadów, resztkami organicznymi oraz pokarmem roślinnym, który znajduje w mule.\r\nNajczęściej spotykany jest w płytkich stawach, starorzeczach, małych jeziorach i zbiornikach o mulistym dnie i ubogiej zawartości tlenu.\r\nCiekawostką jest fakt, że karaś potrafi przetrwać zimę zagrzebany w mule, w stanie znacznie obniżonej aktywności życiowej.', 'Karaś.jpg'),
(16, 'Jelec', 'Jelec\r\n\r\nSmukła ryby z srebrzystym ciałem. Osiąga zazwyczaj 20-30cm długości.\r\n\r\nOdżywia się planktonem, owadami, ślimakami, robakami.\r\n\r\nWystępuje przeważnie w szybko płynących ciekach wodnych o piaszczystym i żwirowatym podłożu.\r\n\r\nlekka pospolita ryba, za młodu żyje w stadzie, starsze osobniki przebywają przeważnie samotnie, Jelec jest rybą płochliwą.', 'Jelec.webp'),
(17, 'Karp królewski', 'Karp królewski - Lustrzeń\r\n\r\nPosiada wąsy. Ma nieliczne, duże łuski rozmieszczone nieregularnie na ciele. Osiąga od 40-80cm długości, w warunkach sprzyjających może osiągnąć 1 metr \r\n\r\nOdżywia się roślinami, planktonem zwierzęcym, organizmami dennymi\r\n\r\nWystępuje głównie w stawach i wodach stojących.\r\n\r\nJest w stanie dożyć nawet 50 lat w sprzyjających warunkach, jedna z najstarszych ryb hodowlanych w Europie', 'karpkrolewski.jpg'),
(18, 'Karp pełnołuski', 'Karp pełnołuski - Sazan\r\n\r\nodmiana karpia pospolitego, całe ciało ma równomiernie pokryte drobnymi łuskami. Jest odporny i dobrze przystosowany do różnych warunków środowiska.\r\n\r\nosiąga zwykle 60–100 cm długości, a w sprzyjających warunkach może dorastać nawet do 120 cm.\r\n\r\nWystępuje głównie w stawach, jeziorach i wolno płynących rzekach\r\n\r\nŻywi się larwami owadów i innymi bezkręgowcami dennymi, robakami i mięczakami, zooplanktonem, roślinami wodnymi i glonami oraz nasionami i resztkami organicznymi.\r\n\r\nJest jedną z najstarszych ryb hodowlanych w Europie – hodowany od ponad tysiąca lat, a w sprzyjających warunkach może dożyć nawet 50 lat.', 'sazan.jpg'),
(19, 'Kiełb', 'Kiełb\r\n\r\nmała słodkowodna ryba o wydłużonym ciele i wąsikach przy pysku. Osiąga zazwyczaj od 8-14cm, maksymalnie 20cm\r\n\r\nOdżywia się robakami, larwami owadów oraz ikrą ryb\r\n\r\nWystępuje w dobrze natlenionych rzekach i strumieniach o piaszczystym lub żwirowatym dnie.\r\n\r\nJest ważna dla wędkarzy, gdyż robi za dobrą żywą przynętę. Jej mięso jest bardzo smaczne', 'kielb.jpg'),
(20, 'Kleń', 'Kleń\r\nŚredniej wielkości słodkowodna ryba z rodziny karpiowatych, o wrzecionowatym, srebrzystym ciele i dużych ustach skierowanych ku górze. Jest aktywny i szybki, często spotykany w umiarkowanie szybkim nurcie rzek i dopływów.\r\n\r\nOsiąga zwykle 30–50 cm długości, maksymalnie do około 70 cm.\r\n\r\nWystępuje w rzekach i większych strumieniach Europy, także w Polsce, w wodach dobrze natlenionych, z kamienistym lub żwirowym dnem.\r\n\r\nŻywi się larwami owadów i innymi bezkręgowcami, małymi rybami i ikrą, roślinami wodnymi, nasionami oraz owocami spadającymi do wody.\r\n\r\nJest bardzo czujny i szybki – potrafi gwałtownie skakać nad powierzchnią wody, uciekając przed drapieżnikami, co czyni go trudnym do złowienia dla wędkarzy.', 'klen.jpeg'),
(21, 'Koza', 'Koza\r\nMała słodkowodna ryba z rodziny karpiowatych, o wydłużonym, bocznie spłaszczonym ciele i charakterystycznych wąsikach przy pysku. Występuje w czystych, dobrze natlenionych rzekach i strumieniach o piaszczysto-żwirowym dnie.\r\n\r\nOsiąga zwykle 15–25 cm długości, rzadko do 30 cm.\r\n\r\nWystępuje w rzekach i strumieniach Europy, także w Polsce. Preferuje wody o umiarkowanym nurcie, dobrze natlenione, z piaszczystym lub żwirowym dnem.\r\n\r\nŻywi się drobnymi bezkręgowcami dennymi, larwami owadów, robakami i planktonem.\r\n\r\nJest czujna i ruchliwa, łatwo reaguje na zagrożenie – szybko ucieka do kryjówek wśród roślinności lub kamieni.', 'koza.jpg'),
(22, 'Krąp', 'Krąp\r\nMała słodkowodna ryba z rodziny karpiowatych, o krępym, bocznie spłaszczonym ciele i niewielkich wąsikach przy pysku. Występuje w rzekach, jeziorach i stawach o umiarkowanym nurcie oraz piaszczysto-żwirowym lub mulistym dnie.\r\n\r\nOsiąga zwykle 12–20 cm długości, rzadko do 25 cm.\r\n\r\nWystępuje w wodach Europy, w tym w Polsce. Preferuje wody dobrze natlenione, o umiarkowanym przepływie, często przebywa w pobliżu roślinności podwodnej lub przy dnie.\r\n\r\nŻywi się larwami owadów, małymi skorupiakami, robakami i planktonem.\r\n\r\nJest czujny i ruchliwy, szybko reaguje na zagrożenie – ucieka w roślinność lub do głębszych partii wody.', 'krap.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby_przynety`
--

CREATE TABLE `ryby_przynety` (
  `id` int(11) NOT NULL,
  `rybka_id` int(11) NOT NULL,
  `przyneta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ryby_przynety`
--

INSERT INTO `ryby_przynety` (`id`, `rybka_id`, `przyneta_id`) VALUES
(1, 1, 14),
(2, 1, 8),
(3, 2, 15),
(4, 2, 4),
(5, 2, 11),
(6, 3, 12),
(7, 3, 7),
(8, 4, 7),
(9, 4, 1),
(10, 4, 14),
(11, 5, 13),
(12, 6, 12),
(13, 6, 1),
(14, 7, 14),
(15, 7, 8),
(16, 7, 7),
(17, 8, 5),
(18, 8, 6),
(19, 9, 10),
(20, 9, 13),
(21, 9, 6),
(22, 10, 3),
(23, 10, 15),
(24, 11, 7),
(25, 11, 1),
(26, 11, 14),
(27, 12, 1),
(28, 12, 12),
(29, 12, 14),
(30, 13, 3),
(31, 14, 1),
(32, 14, 10),
(33, 14, 6),
(34, 15, 10),
(35, 15, 6),
(36, 15, 1),
(37, 16, 12),
(38, 16, 1),
(39, 16, 5),
(40, 17, 10),
(41, 17, 13),
(42, 17, 2),
(43, 18, 10),
(44, 18, 13),
(45, 18, 2),
(46, 19, 7),
(47, 19, 12),
(48, 19, 1),
(49, 20, 7),
(50, 20, 5),
(51, 20, 3),
(52, 21, 7),
(53, 21, 14),
(54, 21, 12),
(55, 22, 12),
(56, 22, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby_zanety`
--

CREATE TABLE `ryby_zanety` (
  `id` int(11) NOT NULL,
  `rybka_id` int(11) NOT NULL,
  `zaneta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zanety`
--

CREATE TABLE `zanety` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `opis` text NOT NULL,
  `zdjecie` varchar(255) NOT NULL
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `przynety`
--
ALTER TABLE `przynety`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rybki`
--
ALTER TABLE `rybki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ryby_przynety`
--
ALTER TABLE `ryby_przynety`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `ryby_zanety`
--
ALTER TABLE `ryby_zanety`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zanety`
--
ALTER TABLE `zanety`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
