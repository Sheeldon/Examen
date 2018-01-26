-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-01-2018 a las 08:04:48
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` smallint(6) NOT NULL,
  `nombre_libro` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `autor` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `nombre_libro`, `autor`, `calificacion`) VALUES
(1, 'Cien aÃ±os soledad', ' Gabriel GarcÃ­a MÃ¡rquez', 469),
(2, 'El seÃ±or los anillos (TrilogÃ­a)', ' J. R. R. Tolkien', 389),
(3, '1984', ' George Orwell', 382),
(4, 'Un mundo feliz', ' Aldous Huxley', 374),
(5, 'Orgullo y prejuicio', ' Jane Austen', 341),
(6, 'Crimen y castigo', ' FiÃ³dor Dostoyevski', 324),
(7, 'Lolita', ' Vladimir Nabokov', 318),
(8, 'Ulises', ' James Joyce', 311),
(9, 'Madame Bovary', ' Gustave Flaubert', 310),
(10, 'En buscal tiempo perdido', ' Marcel Proust', 304),
(11, 'Don Quijote la Mancha', ' Miguel Cervantes', 279),
(12, 'El retrato Dorian Gray', ' Oscar Wilde', 277),
(13, 'Ana Karenina', ' LeÃ³n TolstÃ³i', 261),
(14, 'El Principito', ' Antoine Saint-ExupÃ©ry', 253),
(15, 'El proceso', ' Franz Kafka', 247),
(16, 'El ruido y la furia', ' William Faulkner', 246),
(17, 'Hamlet', ' William Shakespeare', 246),
(18, 'Lo que el viento se llevÃ³', ' Margaret Mitchell', 238),
(19, 'La Odisea', ' Homero', 232),
(20, 'Las uvas la ira', ' John Steinbeck', 232),
(21, 'El guardiÃ¡n entre el centeno', ' J. D. Salinger', 228),
(22, 'Cumbres borrascosas', ' Emily BrontÃ«', 219),
(23, 'El gran Gatsby', ' F. Scott Fitzgerald', 213),
(24, 'Mil soles esplÃ©ndidos', ' Khaled Hosseini', 211),
(25, 'Alicia en el paÃ­s las maravillas', ' Lewis Carroll', 211),
(26, 'RebeliÃ³n en la granja', ' George Orwell', 209),
(27, 'Los pilares la tierra', ' Ken Follett', 206),
(28, 'Guerra y paz', ' LeÃ³n TolstÃ³i', 197),
(29, 'Memorias una geisha', ' Arthur Golden', 195),
(30, 'Frankenstein', ' Mary W. Shelley', 191),
(31, 'Los viajes Gulliver', ' Jonathan Swift', 186),
(32, 'La ladrona libros', ' Markus Zusak', 183),
(33, 'Matar a un ruiseÃ±or', ' Harper Lee', 183),
(34, 'El conde Montecristo', ' Alejandro Dumas', 183),
(35, 'Los juegosl hambre', ' Suzanne Collins', 181),
(36, 'Harry Potter y la piedra filosofal (Harry Potter 1 )', ' J. K. Rowling', 179),
(37, 'El seÃ±or las moscas', ' William Golding', 177),
(38, 'Moby Dick', ' Herman Melville', 174),
(39, 'Los miserables', ' Victor Hugo', 172),
(40, 'Las aventuras Huckleberry Finn', ' Mark Twain', 170),
(41, 'Tristam Shandy', ' Laurence Sterne', 168),
(42, 'DrÃ¡cula', ' Bram Stoker', 166),
(43, 'El nombre la rosa', ' Umberto Eco', 166),
(44, 'El extranjero', ' Albert Camus', 165),
(45, 'Los hermanos KaramÃ¡zov', ' FiÃ³dor Dostoyevski', 164),
(46, 'El amor en los tiemposl cÃ³lera', ' Gabriel GarcÃ­a MÃ¡rquez', 163),
(47, 'Harry Potter y las reliquias la muerte (Harry Potter 7 )', ' J. K. Rowling', 163),
(48, 'El cÃ³digo Da Vinci', ' Dan Brown', 162),
(49, 'Harry Potter y el prisionero Azkaban (Harry Potter 3 )', ' J. K. Rowling', 162),
(50, 'Cometas en el cielo', ' Khaled Hosseini', 161),
(51, 'Ensayo sobre la ceguera', ' JosÃ© Saramago', 159),
(52, 'Las crÃ³nicas Narnia', ' C. S. Lewis', 152),
(53, 'Los renglones torcidos Dios', ' Torcuato Luca Tena', 152),
(54, 'En llamas', ' Suzanne Collins', 151),
(55, 'Harry Potter y el cÃ¡liz fuego (Harry Potter 4 )', ' J. K. Rowling', 151),
(56, 'La sombral viento', ' Carlos Ruiz ZafÃ³n', 151),
(57, 'Viaje al fin la noche', ' Louis Ferdinand CÃ©line', 151),
(58, 'Harry Potter y el misteriol prÃ­ncipe ( Harry Potter 6 )', ' J. K. Rowling', 150),
(59, 'El juego Ender', ' Orson Scott Card', 149),
(60, 'La Biblia', ' Dios', 147),
(61, 'La montaÃ±a mÃ¡gica', ' Thomas Mann', 147),
(62, 'Harry Potter y la Ordenl FÃ©nix ( Harry Potter 5 )', ' J. K. Rowling', 144),
(63, 'El psicoanalista', ' John Katzenbach', 141),
(64, 'Trampa 22', ' Joseph Heller', 141),
(65, 'Por quiÃ©n doblan las campanas', ' Hernest Hemingway', 135),
(66, 'Dr. Jekyll y Mr. Hyde', ' Robert Louis Stevenson', 135),
(67, 'El mÃ©dico', ' Noah Gordon', 134),
(68, 'La metamorfosis', ' Franz Kafka', 134),
(69, 'La telaraÃ±a Carlota', ' E.B. White', 134),
(70, 'La divina comedia', ' Dante Alighieri', 132),
(71, 'La seÃ±ora Dalloway', ' Virginia Woolf', 132),
(72, 'CrepÃºsculo', ' Stephenie Meyer', 129),
(73, 'En el camino', ' Jack Kerouac', 129),
(74, 'La Iliada', ' Homero', 127),
(75, 'Jane Eyre', ' Charlotte BrontÃ«', 126),
(76, 'Diario', ' Ana Frank', 125),
(77, 'El retornol Rey', ' J.R.R. Tolkien', 125),
(78, 'El perfume', ' Patrick SÃ¼skind', 124),
(79, 'Fahrenheit 451', ' Ray Bradbury', 124),
(80, 'CrÃ³nica una muerte anunciada', ' Gabriel GarcÃ­a MÃ¡rquez', 122),
(81, 'La casa los espÃ­ritus', ' Isabel Allende', 121),
(82, 'Mientras agonizo', ' William Faulkner', 121),
(83, 'La islal tesoro', ' Robert Louis Stevenson', 119),
(84, 'Todo sesmorona', ' Chinua Achebe', 117),
(85, 'Emma', ' Jane Austen', 117),
(86, 'Pasaje a la India', ' E. M. Forster', 117),
(87, 'Ficciones', ' Jorge Luis Borges', 113),
(88, 'Harry Potter y la cÃ¡mara secreta (Harry Potter 2 )', ' J. K. Rowling', 113),
(89, 'A sangre frÃ­a', ' Truman Capote', 111),
(90, 'Rimas y leyendas', ' Gustavo Adolfo BÃ©cquer', 109),
(91, 'El corazÃ³n es un cazador solitario', ' Carson Mccullers', 104),
(92, 'El Rey Lear', ' William Shakespeare', 104),
(93, 'Tormenta espadas', ' George R.R. Martin', 100),
(94, 'Juego tronos', ' George R.R.Martin', 99),
(95, 'La catedrall mar', ' Ildefonso Falcones', 99),
(96, 'Progresol peregrino', ' John Bunyan', 99),
(97, 'El corazÃ³n las tinieblas', ' Joseph Conrad', 98),
(98, 'Robinson Crusoe', ' Danielfoe', 98),
(99, 'La isla los amores infinitos', ' DaÃ­na Chaviano', 97),
(100, 'David Copperfield', ' Charles Dickens', 97);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
