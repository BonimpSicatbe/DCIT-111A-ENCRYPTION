-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2025 at 03:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itec106`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `award_id` int(11) NOT NULL,
  `show_id` int(11) DEFAULT NULL,
  `award_name` varchar(255) DEFAULT NULL,
  `award_year` year(4) DEFAULT NULL,
  `award_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`award_id`, `show_id`, `award_name`, `award_year`, `award_category`) VALUES
(1, 1, 'Tony Awards', '2014', 'Best Performance by a Featured Actor in a Musical'),
(2, 1, 'Tony Awards', '2014', 'Best Musical'),
(3, 2, 'Tony Awards', '2004', 'Best Actress in a Musical'),
(4, 2, 'Tony Awards', '2004', 'Best Scenic Design'),
(5, 3, 'Tony Awards', '2018', 'Best Play'),
(6, 3, 'Tony Awards', '2018', 'Best Scenic Design of a Play'),
(7, 4, 'Tony Awards', '2011', 'Best Musical'),
(8, 4, 'Tony Awards', '2011', 'Best Book of a Musical'),
(9, 4, 'Tony Awards', '2011', 'Best Original Score'),
(10, 5, 'Tony Awards', '2019', 'Best Musical'),
(11, 5, 'Tony Awards', '2019', 'Best Original Score'),
(12, 5, 'Tony Awards', '2019', 'Best Performance by a Featured Actor in a Musical'),
(13, 6, 'Tony Award', '1976', 'Best Musical'),
(14, 6, 'Drama Desk Award', '1976', 'Outstanding Choreography'),
(15, 7, 'Tony Award', '1998', 'Best Musical'),
(16, 7, 'Tony Award', '1998', 'Best Costume Design'),
(17, 7, 'Tony Award', '1998', 'Best Lighting Design'),
(18, 7, 'Tony Award', '1998', 'Best Scenic Design'),
(19, 7, 'Drama Desk Award', '1998', 'Outstanding Musical'),
(20, 8, 'Tony Award', '1983', 'Best Musical'),
(21, 8, 'Drama Desk Award', '1983', 'Outstanding Music'),
(22, 9, 'Tony Award', '1987', 'Best Musical'),
(23, 9, 'Drama Desk Award', '1987', 'Outstanding Musical'),
(24, 9, 'Olivier Award', '1985', 'Best New Musical'),
(25, 10, 'Tony Award', '1976', 'Best Musical'),
(26, 10, 'Pulitzer Prize for Drama', '1976', 'Pulitzer Prize for Drama'),
(27, 11, 'No Major Awards', '1970', 'N/A'),
(28, 12, 'No Major Awards', '2002', 'N/A'),
(29, 13, 'Tony Award', '1994', 'Best Costume Design'),
(30, 14, 'Tony Award', '1996', 'Best Musical'),
(31, 14, 'Pulitzer Prize for Drama', '1996', 'Pulitzer Prize for Drama'),
(32, 15, 'Tony Award', '2006', 'Best Musical'),
(33, 15, 'Drama Desk Award', '2006', 'Outstanding Musical'),
(34, 16, 'Tony Award', '1991', 'Best Musical'),
(35, 16, 'Drama Desk Award', '1991', 'Outstanding Music'),
(36, 17, 'Tony Award', '1981', 'Best Musical'),
(37, 18, 'No Major Awards', '1972', 'N/A'),
(38, 19, 'Tony Award', '1965', 'Best Musical'),
(39, 19, 'Drama Desk Award', '1965', 'Outstanding Music'),
(40, 20, 'No Major Awards', '1939', 'N/A'),
(41, 21, 'No Major Awards', '1933', 'N/A'),
(42, 22, 'Tony Award', '1964', 'Best Musical'),
(43, 22, 'Drama Desk Award', '1964', 'Outstanding Music'),
(44, 23, 'Tony Award', '1957', 'Best Musical'),
(45, 23, 'Drama Desk Award', '1957', 'Outstanding Musical'),
(46, 24, 'Tony Award', '2003', 'Best Musical'),
(47, 25, 'Tony Award', '2007', 'Best Musical'),
(48, 25, 'Drama Desk Award', '2007', 'Outstanding Music'),
(49, 26, 'Tony Award', '2004', 'Best Musical'),
(50, 27, 'Tony Award', '2013', 'Best Musical'),
(51, 28, 'Tony Award', '2001', 'Best Musical'),
(52, 28, 'Drama Desk Award', '2001', 'Outstanding Musical'),
(53, 29, 'Tony Award', '2014', 'Best Sound Design of a Musical'),
(54, 30, 'Tony Award', '1977', 'Best Revival of a Musical'),
(55, 31, 'Tony Award', '1967', 'Best Musical'),
(56, 31, 'Drama Desk Award', '1967', 'Outstanding Music'),
(57, 32, 'Tony Award', '1966', 'Best Musical'),
(58, 32, 'Drama Desk Award', '1966', 'Outstanding Music');

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `cast_id` int(11) NOT NULL,
  `show_id` int(11) DEFAULT NULL,
  `actor_name` varchar(255) DEFAULT NULL,
  `character_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`cast_id`, `show_id`, `actor_name`, `character_name`) VALUES
(1, 1, 'Adam Jacobs', 'Aladdin'),
(2, 1, 'Courtney Reed', 'Jasmine'),
(3, 1, 'James Monroe Iglehart', 'Genie'),
(4, 2, 'Idina Menzel', 'Elphaba'),
(5, 2, 'Kristin Chenoweth', 'Glinda'),
(6, 3, 'Jamie Parker', 'Harry Potter'),
(7, 3, 'Noma Dumezweni', 'Hermione Granger'),
(8, 3, 'Paul Thornley', 'Ron Weasley'),
(9, 4, 'Andrew Rannells', 'Elder Price'),
(10, 4, 'Josh Gad', 'Elder Cunningham'),
(11, 5, 'Reeve Carney', 'Orpheus'),
(12, 5, 'Eva Noblezada', 'Eurydice'),
(13, 6, 'Gwen Verdon', 'Roxie Hart'),
(14, 6, 'Chita Rivera', 'Velma Kelly'),
(15, 6, 'Jerry Orbach', 'Billy Flynn'),
(16, 7, 'Jason Raize', 'Simba'),
(17, 7, 'Heather Headley', 'Nala'),
(18, 7, 'Geoff Hoyle', 'Zazu'),
(19, 8, 'Elaine Paige', 'Grizabella'),
(20, 8, 'Ken Page', 'Old Deuteronomy'),
(21, 8, 'John Mills', 'Gus the Theatre Cat'),
(22, 9, 'Colm Wilkinson', 'Jean Valjean'),
(23, 9, 'Frances Ruffelle', 'Éponine'),
(24, 9, 'Michael Ball', 'Marius'),
(25, 10, 'Donna McKechnie', 'Cassie'),
(26, 10, 'Wayne Cilento', 'Mike'),
(27, 10, 'Kay Cole', 'Maggie'),
(28, 11, 'Bill Macy', 'Various'),
(29, 11, 'George S. Irving', 'Various'),
(30, 12, 'Meryl Streep', 'Donna Sheridan'),
(31, 12, 'Amanda Seyfried', 'Sophie Sheridan'),
(32, 12, 'Pierce Brosnan', 'Sam Carmichael'),
(33, 13, 'Susan Egan', 'Belle'),
(34, 13, 'Terrence Mann', 'Beast'),
(35, 13, 'Gary Beach', 'Lumière'),
(36, 14, 'Adam Pascal', 'Roger Davis'),
(37, 14, 'Daphne Rubin-Vega', 'Mimi Marquez'),
(38, 14, 'Jesse L. Martin', 'Tom Collins'),
(39, 15, 'John Lloyd Young', 'Frankie Valli'),
(40, 15, 'Christian Hoff', 'Tommy DeVito'),
(41, 15, 'Daniel Reichard', 'Bob Gaudio'),
(42, 16, 'Lea Salonga', 'Kim'),
(43, 16, 'Simon Bowman', 'Chris'),
(44, 16, 'Jonathan Pryce', 'Engineer'),
(45, 17, 'Jerry Orbach', 'Julian Marsh'),
(46, 17, 'Tammy Grimes', 'Dorothy Brock'),
(47, 18, 'Barry Bostwick', 'Danny Zuko'),
(48, 18, 'Carole Demas', 'Sandy Dumbrowski'),
(49, 19, 'Zero Mostel', 'Tevye'),
(50, 19, 'Maria Karnilova', 'Golde'),
(51, 20, 'Howard Lindsay', 'Clarence Day'),
(52, 20, 'Dorothy Stickney', 'Vinnie Day'),
(53, 21, 'Henry Hull', 'Jeeter Lester'),
(54, 21, 'Margaret Wycherly', 'Ada Lester'),
(55, 22, 'Carol Channing', 'Dolly Levi'),
(56, 22, 'David Burns', 'Horace Vandergelder'),
(57, 23, 'Rex Harrison', 'Henry Higgins'),
(58, 23, 'Julie Andrews', 'Eliza Doolittle'),
(59, 24, 'Marissa Jaret Winokur', 'Tracy Turnblad'),
(60, 24, 'Harvey Fierstein', 'Edna Turnblad'),
(61, 25, 'Ashley Brown', 'Mary Poppins'),
(62, 25, 'Gavin Lee', 'Bert'),
(63, 26, 'John Tartaglia', 'Princeton'),
(64, 26, 'Stephanie D\'Abruzzo', 'Kate Monster'),
(65, 27, 'Stark Sands', 'Charlie Price'),
(66, 27, 'Billy Porter', 'Lola'),
(67, 28, 'Nathan Lane', 'Max Bialystock'),
(68, 28, 'Matthew Broderick', 'Leo Bloom'),
(69, 29, 'Jessie Mueller', 'Carole King'),
(70, 29, 'Jake Epstein', 'Gerry Goffin'),
(71, 30, 'Andrea McArdle', 'Annie'),
(72, 30, 'Dorothy Loudon', 'Miss Hannigan'),
(73, 31, 'Joel Grey', 'Emcee'),
(74, 31, 'Liza Minnelli', 'Sally Bowles'),
(75, 32, 'Richard Kiley', 'Don Quixote'),
(76, 32, 'Joan Diener', 'Aldonza'),
(77, 36, 'Josephine Hull', 'Abby Brewster'),
(78, 36, 'Jean Adair', 'Martha Brewster'),
(79, 36, 'Boris Karloff', 'Jonathan Brewster'),
(80, 37, 'Robert Redford', 'Paul Bratter'),
(81, 37, 'Jane Fonda', 'Corie Bratter'),
(82, 38, 'Judy Holliday', 'Billie Dawn'),
(83, 38, 'Paul Douglas', 'Harry Brock'),
(84, 39, 'Ann Reinking', 'Self'),
(85, 40, 'Marian Seldes', 'Myra Bruhl'),
(86, 40, 'Victor Garber', 'Sidney Bruhl'),
(87, 41, 'Jamie Parker', 'Harry Potter'),
(88, 41, 'Noma Dumezweni', 'Hermione Granger'),
(89, 41, 'Paul Thornley', 'Ron Weasley'),
(90, 42, 'Debbie Reynolds', 'Mary'),
(91, 42, 'Barry Nelson', 'Bob'),
(92, 43, 'Ellen Burstyn', 'Doris'),
(93, 43, 'Charles Grodin', 'George'),
(94, 44, 'Margaret Sullavan', 'Sally Middleton'),
(95, 44, 'Elliott Nugent', 'Bill Page'),
(96, 45, 'Bernhard Paul', 'Mime'),
(97, 46, 'Nell Carter', 'Performer'),
(98, 47, 'Micki Grant', 'Performer'),
(99, 48, 'James Stewart', 'Elwood P. Dowd'),
(100, 49, 'Ole Olsen', 'Performer'),
(101, 50, 'Harold Rome', 'Performer'),
(102, 51, 'Ken Ard', 'Performer'),
(103, 52, 'Ann Miller', 'Performer'),
(104, 36, 'Josephine Hull', 'Abby Brewster'),
(105, 36, 'Jean Adair', 'Martha Brewster'),
(106, 36, 'Boris Karloff', 'Jonathan Brewster'),
(107, 37, 'Robert Redford', 'Paul Bratter'),
(108, 37, 'Jane Fonda', 'Corie Bratter'),
(109, 38, 'Judy Holliday', 'Billie Dawn'),
(110, 38, 'Paul Douglas', 'Harry Brock'),
(111, 39, 'Ann Reinking', 'Self'),
(112, 40, 'Marian Seldes', 'Myra Bruhl'),
(113, 40, 'Victor Garber', 'Sidney Bruhl'),
(114, 41, 'Jamie Parker', 'Harry Potter'),
(115, 41, 'Noma Dumezweni', 'Hermione Granger'),
(116, 41, 'Paul Thornley', 'Ron Weasley'),
(117, 42, 'Debbie Reynolds', 'Mary'),
(118, 42, 'Barry Nelson', 'Bob'),
(119, 43, 'Ellen Burstyn', 'Doris'),
(120, 43, 'Charles Grodin', 'George'),
(121, 44, 'Margaret Sullavan', 'Sally Middleton'),
(122, 44, 'Elliott Nugent', 'Bill Page'),
(123, 45, 'Bernhard Paul', 'Mime'),
(124, 46, 'Nell Carter', 'Performer'),
(125, 47, 'Micki Grant', 'Performer'),
(126, 48, 'James Stewart', 'Elwood P. Dowd'),
(127, 49, 'Ole Olsen', 'Performer'),
(128, 50, 'Harold Rome', 'Performer'),
(129, 51, 'Ken Ard', 'Performer'),
(130, 52, 'Ann Miller', 'Performer');

-- --------------------------------------------------------

--
-- Table structure for table `creative`
--

CREATE TABLE `creative` (
  `creative_id` int(11) NOT NULL,
  `show_id` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites_show`
--

CREATE TABLE `favorites_show` (
  `favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featuredshows`
--

CREATE TABLE `featuredshows` (
  `featured_show_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featuredshows`
--

INSERT INTO `featuredshows` (`featured_show_id`, `show_id`, `start_date`, `end_date`) VALUES
(1, 1, '2024-06-01', '2024-06-07'),
(2, 2, '2024-06-08', '2024-06-14'),
(3, 3, '2024-06-15', '2024-06-21'),
(4, 4, '2024-06-22', '2024-06-28'),
(5, 5, '2024-06-29', '2024-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `musicalnumbers`
--

CREATE TABLE `musicalnumbers` (
  `number_id` int(11) NOT NULL,
  `show_id` int(11) DEFAULT NULL,
  `act` varchar(255) NOT NULL,
  `song_title` varchar(255) DEFAULT NULL,
  `performers` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `musicalnumbers`
--

INSERT INTO `musicalnumbers` (`number_id`, `show_id`, `act`, `song_title`, `performers`) VALUES
(1, 1, 'Act 1', 'Arabian Nights', 'Babkak, Omar, Kassim, and Company'),
(2, 1, 'Act 1', 'One Jump Ahead', 'Aladdin and Company'),
(3, 1, 'Act 1', 'Proud of Your Boy', 'Aladdin'),
(4, 1, 'Act 1', 'These Palace Walls', 'Jasmine, Attendants'),
(5, 1, 'Act 1', 'Friend Like Me', 'Genie, Aladdin, and Company'),
(6, 1, 'Act 2', 'Prince Ali', 'Genie, Aladdin, and Company'),
(7, 1, 'Act 2', 'A Whole New World', 'Aladdin and Jasmine'),
(8, 1, 'Act 2', 'High Adventure', 'Babkak, Omar, Kassim, and Aladdin'),
(9, 1, 'Act 2', 'Somebody’s Got Your Back', 'Aladdin and Genie'),
(10, 1, 'Act 2', 'Prince Ali (Reprise)', 'Jafar, Iago, and Company'),
(11, 1, 'Act 2', 'Finale Ultimo', 'Aladdin, Jasmine, and Company'),
(12, 2, 'Act 1', 'No One Mourns the Wicked', 'Glinda and Citizens of Oz'),
(13, 2, 'Act 1', 'Dear Old Shiz', 'Students'),
(14, 2, 'Act 1', 'The Wizard and I', 'Elphaba'),
(15, 2, 'Act 1', 'What is this Feeling?', 'Glinda, Elphaba, and Students'),
(16, 2, 'Act 1', 'Dancing Through Life', 'Fiyero, Glinda, Elphaba, Boq, Nessarose, and Students'),
(17, 2, 'Act 1', 'Popular', 'Glinda'),
(18, 2, 'Act 1', 'I’m Not that Girl', 'Elphaba'),
(19, 2, 'Act 1', 'One Short Day', 'Elphaba, Glinda, and Citizens of the Emerald City'),
(20, 2, 'Act 1', 'A Sentimental Man', 'The Wizard'),
(21, 2, 'Act 1', 'Defying Gravity', 'Elphaba, Glinda, and Guards'),
(22, 2, 'Act 2', 'Thank Goodness', 'Glinda, Madame Morrible, and Citizens of Oz'),
(23, 2, 'Act 2', 'The Wicked Witch of the East', 'Elphaba, Nessarose, and Boq'),
(24, 2, 'Act 2', 'Wonderful', 'The Wizard and Elphaba'),
(25, 2, 'Act 2', 'I’m Not that Girl (Reprise)', 'Glinda'),
(26, 2, 'Act 2', 'As Long as You’re Mine', 'Elphaba and Fiyero'),
(27, 2, 'Act 2', 'No Good Deed', 'Elphaba'),
(28, 2, 'Act 2', 'March of the Witch Hunters', 'Boq and Citizens of Oz'),
(29, 2, 'Act 2', 'For Good', 'Elphaba and Glinda'),
(30, 2, 'Act 2', 'Finale', 'Glinda, Elphaba, and Citizens of Oz'),
(31, 3, 'Part 1', 'Prologue', 'Company'),
(32, 3, 'Part 1', 'The Hogwarts Express', 'Company'),
(33, 3, 'Part 1', 'Welcome to Hogwarts', 'Company'),
(34, 3, 'Part 1', 'Sorting Hat Ceremony', 'Company'),
(35, 3, 'Part 1', 'The Triwizard Tournament', 'Company'),
(36, 3, 'Part 1', 'Whatever the Spell', 'Albus Potter and Scorpius Malfoy'),
(37, 3, 'Part 2', 'Staircase Ballet', 'Company'),
(38, 3, 'Part 2', 'The Forbidden Forest', 'Company'),
(39, 3, 'Part 2', 'The Battle of Hogwarts', 'Company'),
(40, 3, 'Part 2', 'Finale', 'Company'),
(41, 4, 'Act 1', 'Hello!', 'Elder Price, Elder Cunningham, and Company'),
(42, 4, 'Act 1', 'Two by Two', 'Price, Cunningham, and Missionaries'),
(43, 4, 'Act 1', 'Hasa Diga Eebowai', 'Mafala, Price, Cunningham, and Ugandans'),
(44, 4, 'Act 1', 'Turn It Off', 'Elders McKinley, Price, Cunningham, and Missionaries'),
(45, 4, 'Act 1', 'I Am Here for You', 'Cunningham and Price'),
(46, 4, 'Act 1', 'All-American Prophet', 'Price, Cunningham, Joseph Smith, and Company'),
(47, 4, 'Act 1', 'Sal Tlay Ka Siti', 'Nabulungi'),
(48, 4, 'Act 1', 'Man Up', 'Cunningham, Price, and Company'),
(49, 4, 'Act 2', 'Making Things Up Again', 'Cunningham and Ugandans'),
(50, 4, 'Act 2', 'Spooky Mormon Hell Dream', 'Price, and Ensemble'),
(51, 4, 'Act 2', 'I Believe', 'Elder Price'),
(52, 4, 'Act 2', 'Baptize Me', 'Cunningham and Nabulungi'),
(53, 4, 'Act 2', 'I Am Africa', 'McKinley and Missionaries'),
(54, 4, 'Act 2', 'Joseph Smith American Moses', 'Nabulungi and Ugandans'),
(55, 4, 'Act 2', 'Tomorrow Is a Latter Day', 'Company'),
(56, 5, 'Act 1', 'Road to Hell', 'Hermes and Company'),
(57, 5, 'Act 1', 'Any Way the Wind Blows', 'The Fates'),
(58, 5, 'Act 1', 'Come Home With Me', 'Orpheus and Eurydice'),
(59, 5, 'Act 1', 'Wedding Song', 'Orpheus and Eurydice'),
(60, 5, 'Act 1', 'Epic I', 'Orpheus'),
(61, 5, 'Act 1', 'Livin’ it Up on Top', 'Hermes, Persephone, Orpheus, and Company'),
(62, 5, 'Act 1', 'All I’ve Ever Known', 'Eurydice and Orpheus'),
(63, 5, 'Act 1', 'Way Down Hadestown', 'Hermes and Company'),
(64, 5, 'Act 1', 'Epic II', 'Orpheus and Company'),
(65, 5, 'Act 1', 'Chant', 'Orpheus, Hades, Persephone, Eurydice, Hermes, and Company'),
(66, 5, 'Act 1', 'Hey, Little Songbird', 'Hades and Eurydice'),
(67, 5, 'Act 1', 'When the Chips are Down', 'The Fates, Eurydice, and Company'),
(68, 5, 'Act 1', 'Gone, I’m Gone', 'Eurydice and The Fates'),
(69, 5, 'Act 1', 'Wait for Me', 'Orpheus, Hermes, and Company'),
(70, 5, 'Act 1', 'Why We Build the Wall', 'Hades and Company'),
(71, 5, 'Act 2', 'Our Lady of the Underground', 'Persephone and Company'),
(72, 5, 'Act 2', 'Way Down Hadestown (Reprise)', 'Hermes and Company'),
(73, 5, 'Act 2', 'Flowers', 'Eurydice'),
(74, 5, 'Act 2', 'Come Home With Me (Reprise)', 'Orpheus'),
(75, 5, 'Act 2', 'Papers', 'Hades, Hermes, and Eurydice'),
(76, 5, 'Act 2', 'Nothing Changes', 'Hades'),
(77, 5, 'Act 2', 'If It’s True', 'Orpheus and Company'),
(78, 5, 'Act 2', 'How Long?', 'Hades and Persephone'),
(79, 5, 'Act 2', 'Chant (Reprise)', 'Company'),
(80, 5, 'Act 2', 'Epic III', 'Orpheus and Company'),
(81, 5, 'Act 2', 'Promises', 'Company'),
(82, 5, 'Act 2', 'Word to the Wise', 'The Fates'),
(83, 5, 'Act 2', 'His Kiss, the Riot', 'Company'),
(84, 5, 'Act 2', 'Wait for Me (Reprise)', 'Orpheus, Eurydice, Hermes, and Company'),
(85, 5, 'Act 2', 'Doubt Comes In', 'Company'),
(86, 5, 'Act 2', 'Road to Hell (Reprise)', 'Hermes and Company'),
(87, 5, 'Act 2', 'We Raise Our Cups', 'Company'),
(88, 6, 'Act 1', 'Overture', 'Orchestra'),
(89, 6, 'Act 1', 'All That Jazz', 'Velma Kelly and Company'),
(90, 6, 'Act 1', 'Funny Honey', 'Roxie Hart'),
(91, 6, 'Act 1', 'Cell Block Tango', 'Velma Kelly and the Girls'),
(92, 6, 'Act 1', 'When You’re Good to Mama', 'Matron \"Mama\" Morton'),
(93, 6, 'Act 1', 'All I Care About', 'Billy Flynn and the Girls'),
(94, 6, 'Act 1', 'A Little Bit of Good', 'Mary Sunshine'),
(95, 6, 'Act 1', 'We Both Reached for the Gun', 'Billy Flynn, Roxie Hart, Mary Sunshine, and Company'),
(96, 6, 'Act 1', 'Roxie', 'Roxie Hart and Boys'),
(97, 6, 'Act 1', 'I Can’t Do It Alone', 'Velma Kelly'),
(98, 6, 'Act 1', 'My Own Best Friend', 'Roxie Hart and Velma Kelly'),
(99, 6, 'Act 1', 'Finale Act I: All That Jazz (Reprise)', 'Company'),
(100, 6, 'Act 2', 'Entr’acte', 'Orchestra'),
(101, 6, 'Act 2', 'I Know a Girl', 'Velma Kelly'),
(102, 6, 'Act 2', 'Me and My Baby', 'Roxie Hart and Company'),
(103, 6, 'Act 2', 'Mister Cellophane', 'Amos Hart'),
(104, 6, 'Act 2', 'When Velma Takes the Stand', 'Velma Kelly and Boys'),
(105, 6, 'Act 2', 'Razzle Dazzle', 'Billy Flynn and Company'),
(106, 6, 'Act 2', 'Class', 'Velma Kelly and Mama Morton'),
(107, 6, 'Act 2', 'Nowadays', 'Roxie Hart and Velma Kelly'),
(108, 6, 'Act 2', 'Hot Honey Rag', 'Roxie Hart and Velma Kelly'),
(109, 6, 'Act 2', 'Finale', 'Company'),
(110, 7, 'Act 1', 'Circle of Life', 'Rafiki and the Ensemble'),
(111, 7, 'Act 1', 'Grasslands Chant', 'Ensemble'),
(112, 7, 'Act 1', 'The Morning Report', 'Zazu, Young Simba, Mufasa'),
(113, 7, 'Act 1', 'The Lioness Hunt', 'Lionesses'),
(114, 7, 'Act 1', 'I Just Can’t Wait to Be King', 'Young Simba, Young Nala, Zazu'),
(115, 7, 'Act 1', 'Chow Down', 'Shenzi, Banzai, Ed'),
(116, 7, 'Act 1', 'They Live in You', 'Mufasa'),
(117, 7, 'Act 1', 'Be Prepared', 'Scar, Shenzi, Banzai, Ed'),
(118, 7, 'Act 1', 'The Stampede', 'Ensemble'),
(119, 7, 'Act 1', 'Rafiki Mourns', 'Rafiki'),
(120, 7, 'Act 1', 'Hakuna Matata', 'Timon, Pumbaa, Young Simba, Simba'),
(121, 7, 'Act 2', 'One by One', 'Ensemble'),
(122, 7, 'Act 2', 'The Madness of King Scar', 'Scar, Zazu, Banzai, Shenzi, Ed, Nala'),
(123, 7, 'Act 2', 'Shadowland', 'Nala, Rafiki, Lionesses'),
(124, 7, 'Act 2', 'The Lion Sleeps Tonight', 'Timon, Pumbaa'),
(125, 7, 'Act 2', 'Endless Night', 'Simba'),
(126, 7, 'Act 2', 'Can You Feel the Love Tonight', 'Simba, Nala, Timon, Pumbaa'),
(127, 7, 'Act 2', 'He Lives in You (Reprise)', 'Rafiki, Simba, Ensemble'),
(128, 7, 'Act 2', 'Simba Confronts Scar', 'Ensemble'),
(129, 7, 'Act 2', 'King of Pride Rock/Circle of Life (Reprise)', 'Ensemble'),
(130, 8, 'Act 1', 'Overture', 'Orchestra'),
(131, 8, 'Act 1', 'Prologue: Jellicle Songs for Jellicle Cats', 'The Company'),
(132, 8, 'Act 1', 'The Naming of Cats', 'The Company'),
(133, 8, 'Act 1', 'The Invitation to the Jellicle Ball', 'Victoria, The Company'),
(134, 8, 'Act 1', 'The Old Gumbie Cat', 'Jennyanydots, Munkustrap, Bombalurina, Jellylorum, The Company'),
(135, 8, 'Act 1', 'The Rum Tum Tugger', 'Rum Tum Tugger, The Company'),
(136, 8, 'Act 1', 'Grizabella: The Glamour Cat', 'Grizabella, Demeter, Bombalurina'),
(137, 8, 'Act 1', 'Bustopher Jones: The Cat About Town', 'Bustopher Jones, Jennyanydots, Jellylorum, Bombalurina, The Company'),
(138, 8, 'Act 1', 'Mungojerrie and Rumpleteazer', 'Mungojerrie, Rumpleteazer'),
(139, 8, 'Act 1', 'Old Deuteronomy', 'Munkustrap, Rum Tum Tugger, The Company'),
(140, 8, 'Act 1', 'The Awefull Battle of the Pekes and the Pollicles', 'Munkustrap, Rumpus Cat, The Company'),
(141, 8, 'Act 1', 'The Song of the Jellicles', 'The Company'),
(142, 8, 'Act 1', 'The Jellicle Ball', 'Orchestra, The Company'),
(143, 8, 'Act 1', 'Memory', 'Grizabella'),
(144, 8, 'Act 2', 'The Moments of Happiness', 'Old Deuteronomy, Jemima, The Company'),
(145, 8, 'Act 2', 'Gus: The Theatre Cat', 'Asparagus (\"Gus\"), Jellylorum'),
(146, 8, 'Act 2', 'Growltiger’s Last Stand', 'Growltiger, Griddlebone, Genghis, The Company'),
(147, 8, 'Act 2', 'Skimbleshanks: The Railway Cat', 'Skimbleshanks, The Company'),
(148, 8, 'Act 2', 'Macavity: The Mystery Cat', 'Demeter, Bombalurina, The Company'),
(149, 8, 'Act 2', 'Macavity Fight', 'Macavity, Munkustrap, Alonzo, The Company'),
(150, 8, 'Act 2', 'Mr. Mistoffelees', 'Mr. Mistoffelees, Rum Tum Tugger, The Company'),
(151, 8, 'Act 2', 'Memory', 'Grizabella'),
(152, 8, 'Act 2', 'Journey to the Heaviside Layer', 'The Company'),
(153, 8, 'Act 2', 'The Ad-Dressing of Cats', 'Old Deuteronomy, The Company'),
(154, 9, 'Act 1', 'Prologue: Work Song', 'Convicts'),
(155, 9, 'Act 1', 'Valjean Arrested/Valjean Forgiven', 'Valjean, Javert, Bishop'),
(156, 9, 'Act 1', 'What Have I Done?', 'Valjean'),
(157, 9, 'Act 1', 'At the End of the Day', 'Poor, Factory Workers, Foreman, Fantine'),
(158, 9, 'Act 1', 'I Dreamed a Dream', 'Fantine'),
(159, 9, 'Act 1', 'Lovely Ladies', 'Sailors, Whores, Fantine'),
(160, 9, 'Act 1', 'Fantine’s Arrest', 'Bamatabois, Javert, Fantine, Valjean'),
(161, 9, 'Act 1', 'The Runaway Cart', 'Valjean, Javert, Bystanders'),
(162, 9, 'Act 1', 'Who Am I? – The Trial', 'Valjean'),
(163, 9, 'Act 1', 'Fantine’s Death', 'Fantine, Valjean'),
(164, 9, 'Act 1', 'The Confrontation', 'Javert, Valjean'),
(165, 9, 'Act 1', 'Castle on a Cloud', 'Young Cosette'),
(166, 9, 'Act 1', 'Master of the House', 'Thenardier, Madame Thenardier, Customers'),
(167, 9, 'Act 1', 'The Bargain – Waltz of Treachery', 'Valjean, Thenardier, Madame Thenardier'),
(168, 9, 'Act 1', 'Look Down', 'Gavroche, Beggars'),
(169, 9, 'Act 1', 'The Robbery', 'Thenardier, Madame Thenardier, Eponine, Marius, Valjean, Javert'),
(170, 9, 'Act 1', 'Stars', 'Javert'),
(171, 9, 'Act 1', 'Eponine’s Errand', 'Marius, Eponine'),
(172, 9, 'Act 1', 'ABC Café/Red and Black', 'Enjolras, Students, Grantaire, Marius'),
(173, 9, 'Act 1', 'Do You Hear the People Sing?', 'Enjolras, Students, Citizens'),
(174, 9, 'Act 1', 'Rue Plumet – In My Life', 'Cosette, Valjean, Marius, Eponine'),
(175, 9, 'Act 1', 'A Heart Full of Love', 'Marius, Cosette, Eponine'),
(176, 9, 'Act 1', 'The Attack on Rue Plumet', 'Eponine, Thenardier, Brujon, Babet, Claquesous, Montparnasse, Marius, Cosette'),
(177, 9, 'Act 1', 'One Day More', 'Valjean, Javert, Cosette, Marius, Eponine, Enjolras, Thenardier, Madame Thenardier, Company'),
(178, 9, 'Act 2', 'Building the Barricade (Upon These Stones)', 'Enjolras, Javert, Students, Citizens'),
(179, 9, 'Act 2', 'On My Own', 'Eponine'),
(180, 9, 'Act 2', 'Javert at the Barricade – Little People', 'Javert, Enjolras, Gavroche'),
(181, 9, 'Act 2', 'A Little Fall of Rain', 'Eponine, Marius'),
(182, 9, 'Act 2', 'Night of Anguish', 'Valjean, Enjolras, Marius, Students'),
(183, 9, 'Act 2', 'First Attack', 'Enjolras, Valjean, Javert, Students'),
(184, 9, 'Act 2', 'Drink with Me', 'Grantaire, Students, Women'),
(185, 9, 'Act 2', 'Bring Him Home', 'Valjean'),
(186, 9, 'Act 2', 'Dawn of Anguish', 'Enjolras, Marius, Students'),
(187, 9, 'Act 2', 'The Second Attack (Death of Gavroche)', 'Enjolras, Marius, Gavroche, Students'),
(188, 9, 'Act 2', 'The Final Battle', 'Enjolras, Valjean, Students'),
(189, 9, 'Act 2', 'The Sewers – Dog Eats Dog', 'Thenardier'),
(190, 9, 'Act 2', 'Javert’s Suicide', 'Javert'),
(191, 9, 'Act 2', 'Turning', 'Women'),
(192, 9, 'Act 2', 'Empty Chairs at Empty Tables', 'Marius'),
(193, 9, 'Act 2', 'Every Day – A Heart Full of Love (Reprise)', 'Cosette, Marius, Valjean'),
(194, 9, 'Act 2', 'Valjean’s Confession', 'Valjean, Marius'),
(195, 9, 'Act 2', 'Wedding Chorale', 'Guests'),
(196, 9, 'Act 2', 'Beggars at the Feast', 'Thenardier, Madame Thenardier'),
(197, 9, 'Act 2', 'Epilogue', 'Valjean, Fantine, Eponine, Marius, Cosette, Thenardier, Company'),
(198, 10, 'Act 1', 'Opening: I Hope I Get It', 'Company'),
(199, 10, 'Act 1', 'I Can Do That', 'Mike'),
(200, 10, 'Act 1', 'And...', 'Bobby, Mark, Richie'),
(201, 10, 'Act 1', 'At the Ballet', 'Sheila, Bebe, Maggie'),
(202, 10, 'Act 1', 'Sing!', 'Kristine, Al'),
(203, 10, 'Act 1', 'Montage, Part 1: Hello Twelve, Hello Thirteen, Hello Love', 'Company'),
(204, 10, 'Act 1', 'Montage, Part 2: Mother', 'Company'),
(205, 10, 'Act 1', 'Montage, Part 3: Gimme the Ball', 'Company'),
(206, 10, 'Act 1', 'Nothing', 'Diana'),
(207, 10, 'Act 1', 'Dance: Ten; Looks: Three', 'Val'),
(208, 10, 'Act 1', 'The Music and the Mirror', 'Cassie'),
(209, 10, 'Act 1', 'One', 'Company'),
(210, 10, 'Act 1', 'Tap Combination', 'Company'),
(211, 10, 'Act 1', 'Finale: Let Me Dance for You', 'Cassie'),
(212, 10, 'Act 2', 'What I Did for Love', 'Diana and Company'),
(213, 10, 'Act 2', 'One (Reprise)/Finale', 'Company'),
(214, 11, 'Act 1', 'Opening Number', 'Company'),
(215, 11, 'Act 1', 'Suite for Variety Orchestra', 'Company'),
(216, 11, 'Act 1', 'World’s Fair', 'Company'),
(217, 11, 'Act 1', 'The Rich Man’s Frug', 'Company'),
(218, 11, 'Act 1', 'The Wedding Banquet', 'Company'),
(219, 11, 'Act 1', 'The Revolution', 'Company'),
(220, 11, 'Act 1', 'Morning Becomes Electric', 'Company'),
(221, 11, 'Act 1', 'Madison Time', 'Company'),
(222, 11, 'Act 2', 'The Picnic', 'Company'),
(223, 11, 'Act 2', 'The Afternoon of a Faun', 'Company'),
(224, 11, 'Act 2', 'The Follies', 'Company'),
(225, 11, 'Act 2', 'The Rhythm of Life', 'Company'),
(226, 11, 'Act 2', 'The Climax', 'Company'),
(227, 12, 'Act 1', 'Overture/Prologue', 'Orchestra'),
(228, 12, 'Act 1', 'Honey, Honey', 'Sophie, Ali, Lisa'),
(229, 12, 'Act 1', 'Money, Money, Money', 'Donna, Tanya, Rosie, Pepper, Ensemble'),
(230, 12, 'Act 1', 'Thank You for the Music', 'Sophie, Bill, Harry, Sam'),
(231, 12, 'Act 1', 'Mamma Mia', 'Donna, Ensemble'),
(232, 12, 'Act 1', 'Chiquitita', 'Tanya, Rosie, Donna'),
(233, 12, 'Act 1', 'Dancing Queen', 'Donna, Tanya, Rosie'),
(234, 12, 'Act 1', 'Lay All Your Love on Me', 'Sky, Sophie, Pepper, Ensemble'),
(235, 12, 'Act 1', 'Super Trouper', 'Donna, Tanya, Rosie'),
(236, 12, 'Act 1', 'Gimme! Gimme! Gimme! (A Man After Midnight)', 'Sophie, Ali, Lisa, Ensemble'),
(237, 12, 'Act 1', 'The Name of the Game', 'Sophie, Bill'),
(238, 12, 'Act 1', 'Voulez-Vous', 'Company'),
(239, 12, 'Act 2', 'Entr’acte', 'Orchestra'),
(240, 12, 'Act 2', 'Under Attack', 'Sophie, Ensemble'),
(241, 12, 'Act 2', 'One of Us', 'Donna'),
(242, 12, 'Act 2', 'SOS', 'Donna, Sam'),
(243, 12, 'Act 2', 'Does Your Mother Know', 'Tanya, Pepper, Ensemble'),
(244, 12, 'Act 2', 'Knowing Me, Knowing You', 'Sam'),
(245, 12, 'Act 2', 'Our Last Summer', 'Harry, Donna'),
(246, 12, 'Act 2', 'Slipping Through My Fingers', 'Donna, Sophie'),
(247, 12, 'Act 2', 'The Winner Takes It All', 'Donna'),
(248, 12, 'Act 2', 'Take a Chance on Me', 'Rosie, Bill'),
(249, 12, 'Act 2', 'I Do, I Do, I Do, I Do, I Do', 'Sam, Donna, Company'),
(250, 12, 'Act 2', 'I Have a Dream', 'Sophie'),
(251, 12, 'Encore', 'Mamma Mia', 'Company'),
(252, 12, 'Encore', 'Dancing Queen', 'Company'),
(253, 12, 'Encore', 'Waterloo', 'Company'),
(254, 13, 'Act 1', 'Prologue', 'Orchestra'),
(255, 13, 'Act 1', 'Belle', 'Belle, Gaston, Villagers'),
(256, 13, 'Act 1', 'No Matter What', 'Maurice, Belle'),
(257, 13, 'Act 1', 'No Matter What (Reprise)', 'Maurice'),
(258, 13, 'Act 1', 'Me', 'Gaston, Belle'),
(259, 13, 'Act 1', 'Belle (Reprise)', 'Belle'),
(260, 13, 'Act 1', 'Home', 'Belle'),
(261, 13, 'Act 1', 'Home (Reprise)', 'Madame de la Grande Bouche'),
(262, 13, 'Act 1', 'Gaston', 'Gaston, Lefou, Villagers'),
(263, 13, 'Act 1', 'Gaston (Reprise)', 'Gaston, Lefou'),
(264, 13, 'Act 1', 'How Long Must This Go On?', 'Beast'),
(265, 13, 'Act 1', 'Be Our Guest', 'Lumière, Mrs. Potts, Chip, Company'),
(266, 13, 'Act 1', 'If I Can’t Love Her', 'Beast'),
(267, 13, 'Act 2', 'Entr’acte', 'Orchestra'),
(268, 13, 'Act 2', 'Something There', 'Belle, Beast, Lumière, Mrs. Potts, Cogsworth'),
(269, 13, 'Act 2', 'Human Again', 'Lumière, Cogsworth, Mrs. Potts, Babette, Madame de la Grande Bouche, Chip, Enchanted Objects'),
(270, 13, 'Act 2', 'Maison Des Lunes', 'Gaston, Lefou, Monsieur D’Arque'),
(271, 13, 'Act 2', 'Beauty and the Beast', 'Mrs. Potts'),
(272, 13, 'Act 2', 'If I Can’t Love Her (Reprise)', 'Beast'),
(273, 13, 'Act 2', 'A Change in Me', 'Belle'),
(274, 13, 'Act 2', 'The Mob Song', 'Gaston, Villagers'),
(275, 13, 'Act 2', 'Battle on the Tower', 'Beast, Gaston'),
(276, 13, 'Act 2', 'Transformation', 'Beast, Enchantress'),
(277, 13, 'Act 2', 'Beauty and the Beast (Reprise)', 'Company'),
(278, 14, 'Act 1', 'Tune Up #1', 'Mark, Roger'),
(279, 14, 'Act 1', 'Voice Mail #1', 'Mr. and Mrs. Cohen, Mark'),
(280, 14, 'Act 1', 'Tune Up #2', 'Mark, Roger'),
(281, 14, 'Act 1', 'Rent', 'Mark, Roger, Collins, Benny, Company'),
(282, 14, 'Act 1', 'You Okay Honey?', 'Angel, Collins'),
(283, 14, 'Act 1', 'Tune Up #3', 'Mark, Roger, Angel, Collins'),
(284, 14, 'Act 1', 'One Song Glory', 'Roger'),
(285, 14, 'Act 1', 'Light My Candle', 'Mimi, Roger'),
(286, 14, 'Act 1', 'Voice Mail #2', 'Mr. Jefferson, Roger'),
(287, 14, 'Act 1', 'Today 4 U', 'Angel, Collins, Mark, Roger'),
(288, 14, 'Act 1', 'You’ll See', 'Benny, Mark, Roger, Collins'),
(289, 14, 'Act 1', 'Tango: Maureen', 'Mark, Joanne'),
(290, 14, 'Act 1', 'Life Support', 'Gordon, Steve, Pam, Ali, Mark, Roger, Angel'),
(291, 14, 'Act 1', 'Out Tonight', 'Mimi'),
(292, 14, 'Act 1', 'Another Day', 'Roger, Mimi, Collins, Angel, Company'),
(293, 14, 'Act 1', 'Will I?', 'Steve, Company'),
(294, 14, 'Act 1', 'On the Street', 'Company'),
(295, 14, 'Act 1', 'Santa Fe', 'Angel, Collins, Mark, Company'),
(296, 14, 'Act 1', 'I’ll Cover You', 'Angel, Collins'),
(297, 14, 'Act 1', 'We’re Okay', 'Joanne'),
(298, 14, 'Act 1', 'Christmas Bells', 'Company'),
(299, 14, 'Act 1', 'Over the Moon', 'Maureen'),
(300, 14, 'Act 1', 'La Vie Bohème A', 'Mark, Roger, Maureen, Joanne, Collins, Angel, Mimi, Company'),
(301, 14, 'Act 1', 'I Should Tell You', 'Roger, Mimi'),
(302, 14, 'Act 1', 'La Vie Bohème B', 'Mark, Roger, Maureen, Joanne, Collins, Angel, Mimi, Company'),
(303, 14, 'Act 2', 'Seasons of Love', 'Company'),
(304, 14, 'Act 2', 'Happy New Year', 'Company'),
(305, 14, 'Act 2', 'Voice Mail #3', 'Mr. and Mrs. Jefferson, Mark, Collins'),
(306, 14, 'Act 2', 'Happy New Year B', 'Company'),
(307, 14, 'Act 2', 'Take Me or Leave Me', 'Maureen, Joanne'),
(308, 14, 'Act 2', 'Seasons of Love B', 'Company'),
(309, 14, 'Act 2', 'Without You', 'Roger, Mimi, Collins'),
(310, 14, 'Act 2', 'Voice Mail #4', 'Roger’s Mother, Mimi’s Mother, Collins, Mark'),
(311, 14, 'Act 2', 'Contact', 'Company'),
(312, 14, 'Act 2', 'I’ll Cover You (Reprise)', 'Collins, Company'),
(313, 14, 'Act 2', 'Halloween', 'Mark'),
(314, 14, 'Act 2', 'Goodbye Love', 'Company'),
(315, 14, 'Act 2', 'What You Own', 'Roger, Mark'),
(316, 14, 'Act 2', 'Voice Mail #5', 'Alexi Darling, Roger, Mark'),
(317, 14, 'Act 2', 'Finale', 'Company'),
(318, 14, 'Act 2', 'Your Eyes', 'Roger'),
(319, 14, 'Act 2', 'Finale B', 'Company'),
(320, 15, 'Act 1', 'Ces soirées-là', 'Parisian Frankie Valli'),
(321, 15, 'Act 1', 'Silhouettes', 'Tommy DeVito, Nick Massi'),
(322, 15, 'Act 1', 'You’re the Apple of My Eye', 'The Four Lovers'),
(323, 15, 'Act 1', 'I Can’t Give You Anything But Love', 'Frankie Valli'),
(324, 15, 'Act 1', 'Earth Angel', 'Frankie Valli'),
(325, 15, 'Act 1', 'A Sunday Kind of Love', 'Frankie Valli'),
(326, 15, 'Act 1', 'My Mother’s Eyes', 'Frankie Valli'),
(327, 15, 'Act 1', 'I Go Ape', 'Young Fans'),
(328, 15, 'Act 1', '(Who Wears) Short Shorts', 'Young Fans'),
(329, 15, 'Act 1', 'I’m in the Mood for Love/Moody’s Mood for Love', 'Frankie Valli and The Four Seasons'),
(330, 15, 'Act 1', 'Cry for Me', 'Bob Gaudio'),
(331, 15, 'Act 1', 'An Angel Cried', 'Frankie Valli and The Four Seasons'),
(332, 15, 'Act 1', 'Big Girls Don’t Cry', 'Frankie Valli and The Four Seasons'),
(333, 15, 'Act 1', 'Walk Like a Man', 'Frankie Valli and The Four Seasons'),
(334, 15, 'Act 1', 'December, 1963 (Oh, What a Night)', 'Frankie Valli and The Four Seasons'),
(335, 15, 'Act 2', 'My Boyfriend’s Back', 'The Angels'),
(336, 15, 'Act 2', 'My Eyes Adored You', 'Frankie Valli and The Four Seasons'),
(337, 15, 'Act 2', 'Dawn (Go Away)', 'Frankie Valli and The Four Seasons'),
(338, 15, 'Act 2', 'Big Man in Town', 'Frankie Valli and The Four Seasons'),
(339, 15, 'Act 2', 'Beggin’', 'Frankie Valli and The Four Seasons'),
(340, 15, 'Act 2', 'Medley: Stay/Let’s Hang On!/Opus 17 (Don’t You Worry ‘Bout Me’)/Bye, Bye, Baby (Baby Goodbye)', 'Frankie Valli and The Four Seasons'),
(341, 15, 'Act 2', 'C’mon Marianne', 'Frankie Valli and The Four Seasons'),
(342, 15, 'Act 2', 'Can’t Take My Eyes Off You', 'Frankie Valli and The Four Seasons'),
(343, 15, 'Act 2', 'Working My Way Back to You', 'Frankie Valli and The Four Seasons'),
(344, 15, 'Act 2', 'Fallen Angel', 'Frankie Valli and The Four Seasons'),
(345, 15, 'Act 2', 'Rag Doll', 'Frankie Valli and The Four Seasons'),
(346, 15, 'Act 2', 'Who Loves You', 'Frankie Valli and The Four Seasons'),
(347, 16, 'Act 1', 'Overture', 'Orchestra'),
(348, 16, 'Act 1', 'The Heat is on in Saigon', 'Engineer and Company'),
(349, 16, 'Act 1', 'The Movie in My Mind', 'Gigi, Kim, Bar Girls'),
(350, 16, 'Act 1', 'The Transaction', 'John, Engineer, Soldiers'),
(351, 16, 'Act 1', 'The Dance', 'Kim, Chris, Gigi, Bar Girls'),
(352, 16, 'Act 1', 'Why God Why?', 'Chris'),
(353, 16, 'Act 1', 'This Money’s Yours', 'Chris, Kim'),
(354, 16, 'Act 1', 'Sun and Moon', 'Chris, Kim'),
(355, 16, 'Act 1', 'The Telephone Song', 'Engineer, Soldiers'),
(356, 16, 'Act 1', 'The Deal', 'Thuy, Kim, Engineer, Chris'),
(357, 16, 'Act 1', 'The Wedding Ceremony', 'Chris, Kim, Gigi, Bar Girls'),
(358, 16, 'Act 1', 'Thuy’s Arrival', 'Thuy, Chris, Kim'),
(359, 16, 'Act 1', 'Last Night of the World', 'Chris, Kim'),
(360, 16, 'Act 1', 'The Morning of the Dragon', 'Thuy, Soldiers'),
(361, 16, 'Act 1', 'I Still Believe', 'Ellen, Kim'),
(362, 16, 'Act 1', 'Back in Town', 'Engineer, Kim'),
(363, 16, 'Act 2', 'Thuy’s Death/The Revelation', 'Thuy, Kim, Engineer'),
(364, 16, 'Act 2', 'If You Want to Die in Bed', 'Engineer, Soldiers'),
(365, 16, 'Act 2', 'Let Me See His Western Nose', 'Kim, Engineer'),
(366, 16, 'Act 2', 'I’d Give My Life for You', 'Kim'),
(367, 16, 'Act 2', 'Bui Doi', 'John, Soldiers'),
(368, 16, 'Act 2', 'The Revelation', 'John, Engineer, Kim'),
(369, 16, 'Act 2', 'What a Waste', 'Engineer'),
(370, 16, 'Act 2', 'Please', 'John, Kim, Chris'),
(371, 16, 'Act 2', 'Chris’s Nightmare', 'Chris, John, Soldiers'),
(372, 16, 'Act 2', 'Kim’s Nightmare', 'Kim, Thuy, Engineer, Soldiers'),
(373, 16, 'Act 2', 'Little God of My Heart', 'Kim'),
(374, 16, 'Act 2', 'This Is the Hour', 'Engineer, Company'),
(375, 16, 'Act 2', 'If You Want to Die in Bed', 'Engineer, Soldiers'),
(376, 16, 'Act 2', 'Let Me See His Western Nose', 'Kim, Engineer'),
(377, 16, 'Act 2', 'I’d Give My Life for You', 'Kim'),
(378, 16, 'Act 2', 'Bui Doi', 'John, Company'),
(379, 16, 'Act 2', 'The Revelation', 'John, Kim, Engineer'),
(380, 16, 'Act 2', 'What a Waste', 'Engineer'),
(381, 16, 'Act 2', 'Please', 'John, Kim, Chris'),
(382, 16, 'Act 2', 'Chris’s Nightmare', 'Chris'),
(383, 16, 'Act 2', 'Kim’s Nightmare', 'Kim, Thuy, Engineer, Soldiers'),
(384, 16, 'Act 2', 'Little God of My Heart', 'Kim'),
(385, 16, 'Act 2', 'This Is the Hour', 'Engineer, Company'),
(386, 16, 'Act 2', 'If You Want to Die in Bed', 'Engineer, Soldiers'),
(387, 16, 'Act 2', 'Let Me See His Western Nose', 'Kim, Engineer'),
(388, 16, 'Act 2', 'I’d Give My Life for You', 'Kim'),
(389, 16, 'Act 2', 'Bui Doi', 'John, Company'),
(390, 16, 'Act 2', 'The Revelation', 'John, Kim, Engineer'),
(391, 16, 'Act 2', 'What a Waste', 'Engineer'),
(392, 16, 'Act 2', 'Please', 'John, Kim, Chris'),
(393, 16, 'Act 2', 'Chris’s Nightmare', 'Chris'),
(394, 16, 'Act 2', 'Kim’s Nightmare', 'Kim, Thuy, Engineer, Soldiers'),
(395, 16, 'Act 2', 'Little God of My Heart', 'Kim'),
(396, 16, 'Act 2', 'This Is the Hour', 'Engineer, Company'),
(397, 17, 'Act 1', 'Overture', 'Orchestra'),
(398, 17, 'Act 1', 'Audition', 'Orchestra'),
(399, 17, 'Act 1', 'Young and Healthy', 'Billy and Ensemble'),
(400, 17, 'Act 1', 'Shadow Waltz', 'Ensemble'),
(401, 17, 'Act 1', 'Go Into Your Dance', 'Billy, Peggy, and Ensemble'),
(402, 17, 'Act 1', 'You’re Getting to Be a Habit with Me', 'Dorothy and Ensemble'),
(403, 17, 'Act 1', 'Getting Out of Town', 'Company'),
(404, 17, 'Act 1', 'Dames', 'Company'),
(405, 17, 'Act 1', 'Keep Young and Beautiful', 'Company'),
(406, 17, 'Act 1', 'We’re in the Money', 'Company'),
(407, 17, 'Act 1', 'There’s a Sunny Side to Every Situation', 'Company'),
(408, 17, 'Act 1', 'Lullaby of Broadway', 'Company'),
(409, 17, 'Act 1', 'About a Quarter to Nine', 'Dorothy and Peggy'),
(410, 17, 'Act 1', 'Shuffle Off to Buffalo', 'Company'),
(411, 17, 'Act 1', '42nd Street', 'Company'),
(412, 17, 'Act 2', 'Entr’acte', 'Orchestra'),
(413, 17, 'Act 2', 'Opening Act Two', 'Company'),
(414, 17, 'Act 2', 'I Only Have Eyes for You', 'Billy and Peggy'),
(415, 17, 'Act 2', 'Lullaby of Broadway (Reprise)', 'Company'),
(416, 17, 'Act 2', 'Quarter to Nine', 'Company'),
(417, 17, 'Act 2', 'Shuffle Off to Buffalo (Reprise)', 'Company'),
(418, 17, 'Act 2', '42nd Street (Reprise)', 'Company'),
(419, 17, 'Act 2', 'Finale', 'Company'),
(420, 18, 'Act 1', 'Grease', 'Company'),
(421, 18, 'Act 1', 'Summer Nights', 'Danny, Sandy, and Company'),
(422, 18, 'Act 1', 'Freddy, My Love', 'Marty and the Pink Ladies'),
(423, 18, 'Act 1', 'Those Magic Changes', 'Doody and the Burger Palace Boys'),
(424, 18, 'Act 1', 'Greased Lightnin’', 'Kenickie and the Burger Palace Boys'),
(425, 18, 'Act 1', 'Mooning', 'Roger and Jan'),
(426, 18, 'Act 1', 'Look at Me, I’m Sandra Dee', 'Rizzo and the Pink Ladies'),
(427, 18, 'Act 1', 'We Go Together', 'Company'),
(428, 18, 'Act 2', 'Shakin’ at the High School Hop', 'Company'),
(429, 18, 'Act 2', 'It’s Raining on Prom Night', 'Company'),
(430, 18, 'Act 2', 'Born to Hand Jive', 'Company'),
(431, 18, 'Act 2', 'Beauty School Dropout', 'Teen Angel and Frenchy'),
(432, 18, 'Act 2', 'Alone at a Drive-in Movie', 'Danny'),
(433, 18, 'Act 2', 'Rock ‘N’ Roll Party Queen', 'Doody and Roger'),
(434, 18, 'Act 2', 'There Are Worse Things I Could Do', 'Rizzo'),
(435, 18, 'Act 2', 'Look at Me, I’m Sandra Dee (Reprise)', 'Sandy'),
(436, 18, 'Act 2', 'You’re the One That I Want', 'Danny, Sandy, and Company'),
(437, 18, 'Act 2', 'We Go Together (Reprise)', 'Company'),
(438, 19, 'Act 1', 'Prologue: Tradition', 'Tevye, Golde, Company'),
(439, 19, 'Act 1', 'Matchmaker, Matchmaker', 'Tzeitel, Hodel, Chava'),
(440, 19, 'Act 1', 'If I Were a Rich Man', 'Tevye'),
(441, 19, 'Act 1', 'Sabbath Prayer', 'Tevye, Golde, Company'),
(442, 19, 'Act 1', 'To Life', 'Tevye, Lazar Wolf, Company'),
(443, 19, 'Act 1', 'Tevye’s Monologue', 'Tevye'),
(444, 19, 'Act 1', 'Miracle of Miracles', 'Motel'),
(445, 19, 'Act 1', 'Tevye’s Dream', 'Tevye, Golde, Grandma Tzeitel, Fruma-Sarah, Company'),
(446, 19, 'Act 1', 'Sunrise, Sunset', 'Tevye, Golde, Perchik, Hodel, Company'),
(447, 19, 'Act 1', 'The Bottle Dance', 'Company'),
(448, 19, 'Act 2', 'Entr’acte', 'Orchestra'),
(449, 19, 'Act 2', 'Now I Have Everything', 'Perchik, Hodel'),
(450, 19, 'Act 2', 'Tevye’s Rebuttal', 'Tevye'),
(451, 19, 'Act 2', 'Do You Love Me?', 'Tevye, Golde'),
(452, 19, 'Act 2', 'The Rumor/I Just Heard', 'Yente, Mendel, Avram, Yussel, Company'),
(453, 19, 'Act 2', 'Far From the Home I Love', 'Hodel'),
(454, 19, 'Act 2', 'Chavaleh (Little Bird)', 'Tevye'),
(455, 19, 'Act 2', 'Anatevka', 'Tevye, Golde, Lazar Wolf, Yente, Mendel, Avram, Nachum, Villagers'),
(456, 19, 'Act 2', 'Epilogue: Anatevka', 'Company'),
(457, 20, 'Act 1', 'Opening Scene', 'Clarence Day and Family'),
(458, 20, 'Act 1', 'Family Gathering', 'Clarence Day and Family'),
(459, 20, 'Act 2', 'Holiday Celebration', 'Clarence Day and Family'),
(460, 21, 'Act 1', 'Opening Scene', 'Jeeter Lester and Family'),
(461, 21, 'Act 1', 'Family Struggles', 'Jeeter Lester and Family'),
(462, 21, 'Act 2', 'Hard Times', 'Jeeter Lester and Family'),
(463, 22, 'Act 1', 'Call on Dolly', 'Dolly and Company'),
(464, 22, 'Act 1', 'It Takes a Woman', 'Horace Vandergelder, Cornelius, Barnaby, Company'),
(465, 22, 'Act 1', 'Put on Your Sunday Clothes', 'Dolly, Cornelius, Barnaby, Ambrose, Ermengarde, Company'),
(466, 22, 'Act 1', 'Ribbons Down My Back', 'Irene Molloy'),
(467, 22, 'Act 1', 'Motherhood', 'Dolly, Irene, Minnie'),
(468, 22, 'Act 1', 'Dancing', 'Cornelius, Barnaby, Irene, Minnie, Company'),
(469, 22, 'Act 1', 'Before the Parade Passes By', 'Dolly and Company'),
(470, 22, 'Act 2', 'Elegance', 'Irene, Cornelius, Barnaby, Minnie'),
(471, 22, 'Act 2', 'The Waiters’ Gallop', 'Waiters'),
(472, 22, 'Act 2', 'Hello, Dolly!', 'Dolly, Waiters'),
(473, 22, 'Act 2', 'It Only Takes a Moment', 'Cornelius, Irene, Company'),
(474, 22, 'Act 2', 'So Long, Dearie', 'Dolly'),
(475, 22, 'Act 2', 'Finale', 'Dolly, Company'),
(476, 23, 'Act 1', 'Overture', 'Orchestra'),
(477, 23, 'Act 1', 'Why Can’t the English?', 'Henry Higgins, Colonel Pickering'),
(478, 23, 'Act 1', 'Wouldn’t It Be Loverly?', 'Eliza Doolittle, Cockneys'),
(479, 23, 'Act 1', 'With a Little Bit of Luck', 'Alfred P. Doolittle, Harry, Jamie, Company'),
(480, 23, 'Act 1', 'I’m an Ordinary Man', 'Henry Higgins'),
(481, 23, 'Act 1', 'Just You Wait', 'Eliza Doolittle'),
(482, 23, 'Act 1', 'The Servants’ Chorus (Poor Professor Higgins)', 'Mrs. Pearce, Servants'),
(483, 23, 'Act 1', 'The Rain in Spain', 'Henry Higgins, Eliza Doolittle, Colonel Pickering'),
(484, 23, 'Act 1', 'I Could Have Danced All Night', 'Eliza Doolittle, Mrs. Pearce, Servants'),
(485, 23, 'Act 1', 'Ascot Gavotte', 'Company'),
(486, 23, 'Act 1', 'On the Street Where You Live', 'Freddy Eynsford-Hill'),
(487, 23, 'Act 1', 'Eliza’s Entrance/Embassy Waltz', 'Company'),
(488, 23, 'Act 2', 'Entr’acte', 'Orchestra'),
(489, 23, 'Act 2', 'You Did It', 'Henry Higgins, Colonel Pickering, Servants'),
(490, 23, 'Act 2', 'Just You Wait (Reprise)', 'Eliza Doolittle'),
(491, 23, 'Act 2', 'On the Street Where You Live (Reprise)', 'Freddy Eynsford-Hill'),
(492, 23, 'Act 2', 'Show Me', 'Eliza Doolittle, Freddy Eynsford-Hill'),
(493, 23, 'Act 2', 'The Flower Market/Wouldn’t It Be Loverly? (Reprise)', 'Eliza Doolittle'),
(494, 23, 'Act 2', 'Get Me to the Church on Time', 'Alfred P. Doolittle, Cockneys, Company'),
(495, 23, 'Act 2', 'A Hymn to Him', 'Henry Higgins, Colonel Pickering'),
(496, 23, 'Act 2', 'Without You', 'Eliza Doolittle, Henry Higgins'),
(497, 23, 'Act 2', 'I’ve Grown Accustomed to Her Face', 'Henry Higgins'),
(498, 24, 'Act 1', 'Good Morning Baltimore', 'Tracy Turnblad, Company'),
(499, 24, 'Act 1', 'The Nicest Kids in Town', 'Corny Collins, Council Members'),
(500, 24, 'Act 1', 'Mama, I’m a Big Girl Now', 'Tracy, Penny, Amber, Edna, Prudy, Velma'),
(501, 24, 'Act 1', 'I Can Hear the Bells', 'Tracy'),
(502, 24, 'Act 1', 'The Madison', 'Council Members'),
(503, 24, 'Act 1', 'It Takes Two', 'Link, Tracy'),
(504, 24, 'Act 1', 'Velma’s Revenge', 'Velma'),
(505, 24, 'Act 1', 'Welcome to the 60’s', 'Tracy, Edna, Company'),
(506, 24, 'Act 1', 'Run and Tell That!', 'Seaweed, Little Inez, Company'),
(507, 24, 'Act 1', 'Big, Blonde and Beautiful', 'Motormouth Maybelle, Tracy, Edna, Company'),
(508, 24, 'Act 2', 'The Big Dollhouse', 'Women in Prison'),
(509, 24, 'Act 2', 'Good Morning Baltimore (Reprise)', 'Tracy, Company'),
(510, 24, 'Act 2', '(You’re) Timeless to Me', 'Wilbur, Edna'),
(511, 24, 'Act 2', 'Without Love', 'Link, Tracy, Seaweed, Penny'),
(512, 24, 'Act 2', 'I Know Where I’ve Been', 'Motormouth Maybelle, Company'),
(513, 24, 'Act 2', '(It’s) Hairspray', 'Corny Collins, Council Members'),
(514, 24, 'Act 2', 'Cooties', 'Amber, Council Members'),
(515, 24, 'Act 2', 'You Can’t Stop the Beat', 'Tracy, Link, Penny, Seaweed, Edna, Velma, Motormouth Maybelle, Company'),
(516, 25, 'Act 1', 'Chim Chim Cher-ee', 'Bert, Ensemble'),
(517, 25, 'Act 1', 'Cherry Tree Lane', 'George Banks, Winifred Banks, Mrs. Brill, Robertson Ay'),
(518, 25, 'Act 1', 'The Perfect Nanny', 'Jane Banks, Michael Banks'),
(519, 25, 'Act 1', 'Practically Perfect', 'Mary Poppins'),
(520, 25, 'Act 1', 'Jolly Holiday', 'Bert, Mary Poppins, Ensemble'),
(521, 25, 'Act 1', 'Let’s Hope She Will Stay', 'George Banks, Winifred Banks'),
(522, 25, 'Act 1', 'A Spoonful of Sugar', 'Mary Poppins, Jane Banks, Michael Banks, Robertson Ay, Mrs. Brill'),
(523, 25, 'Act 1', 'Precision and Order', 'Bank Chairman, George Banks, Ensemble'),
(524, 25, 'Act 1', 'Feed the Birds', 'Bird Woman, Mary Poppins'),
(525, 25, 'Act 1', 'Supercalifragilisticexpialidocious', 'Mary Poppins, Mrs. Corry, Bert, Ensemble'),
(526, 25, 'Act 1', 'Playing the Game', 'Mary Poppins, Jane Banks, Michael Banks, Toys'),
(527, 25, 'Act 1', 'Chim Chim Cher-ee (Reprise)', 'Bert'),
(528, 25, 'Act 1', 'Cherry Tree Lane (Reprise)', 'Winifred Banks, Jane Banks, Michael Banks'),
(529, 25, 'Act 2', 'Brimstone and Treacle Part 1', 'Miss Andrew'),
(530, 25, 'Act 2', 'Let’s Go Fly a Kite', 'Bert, Park Keeper, Jane Banks, Michael Banks, Ensemble'),
(531, 25, 'Act 2', 'Good for Nothing', 'George Banks'),
(532, 25, 'Act 2', 'Being Mrs. Banks (Reprise)', 'Winifred Banks'),
(533, 25, 'Act 2', 'Brimstone and Treacle Part 2', 'Mary Poppins, Miss Andrew'),
(534, 25, 'Act 2', 'Practically Perfect (Reprise)', 'Mary Poppins, Jane Banks, Michael Banks'),
(535, 25, 'Act 2', 'A Spoonful of Sugar (Reprise)', 'Mary Poppins, Robertson Ay, Mrs. Brill'),
(536, 25, 'Act 2', 'Anything Can Happen', 'Mary Poppins, Ensemble'),
(537, 25, 'Act 2', 'Give Us the Word', 'Bank Chairman, George Banks, Ensemble'),
(538, 25, 'Act 2', 'Step in Time', 'Bert, Mary Poppins, Jane Banks, Michael Banks, Ensemble'),
(539, 25, 'Act 2', 'A Man Has Dreams', 'George Banks'),
(540, 25, 'Act 2', 'A Spoonful of Sugar (Reprise)', 'Mary Poppins'),
(541, 25, 'Act 2', 'Anything Can Happen (Finale)', 'Mary Poppins, Ensemble'),
(542, 26, 'Act 1', 'The Avenue Q Theme', 'Princeton, Brian, Kate Monster, Rod, Nicky, Gary Coleman, Christmas Eve'),
(543, 26, 'Act 1', 'What Do You Do with a B.A. in English?', 'Princeton'),
(544, 26, 'Act 1', 'It Sucks to Be Me', 'Brian, Kate Monster, Rod, Nicky, Gary Coleman, Christmas Eve, Princeton'),
(545, 26, 'Act 1', 'If You Were Gay', 'Nicky, Rod'),
(546, 26, 'Act 1', 'Purpose', 'Princeton, Bad Idea Bears'),
(547, 26, 'Act 1', 'Everyone’s a Little Bit Racist', 'Princeton, Kate Monster, Gary Coleman, Brian, Christmas Eve'),
(548, 26, 'Act 1', 'The Internet Is for Porn', 'Kate Monster, Trekkie Monster, Brian, Gary Coleman, Princeton, Rod'),
(549, 26, 'Act 1', 'Mix Tape', 'Kate Monster, Princeton'),
(550, 26, 'Act 1', 'I’m Not Wearing Underwear Today', 'Brian'),
(551, 26, 'Act 1', 'Special', 'Lucy the Slut'),
(552, 26, 'Act 1', 'You Can Be as Loud as the Hell You Want (When You’re Makin’ Love)', 'Gary Coleman, Princeton, Kate Monster, Brian, Christmas Eve, Trekkie Monster'),
(553, 26, 'Act 1', 'Fantasies Come True', 'Rod, Princeton, Kate Monster'),
(554, 26, 'Act 1', 'My Girlfriend, Who Lives in Canada', 'Rod'),
(555, 26, 'Act 1', 'There’s a Fine, Fine Line', 'Kate Monster'),
(556, 26, 'Act 2', 'There is Life Outside Your Apartment', 'Brian, Princeton, Kate Monster, Gary Coleman, Christmas Eve, Nicky, Trekkie Monster, Lucy the Slut'),
(557, 26, 'Act 2', 'The More You Ruv Someone', 'Christmas Eve, Kate Monster'),
(558, 26, 'Act 2', 'Schadenfreude', 'Gary Coleman, Nicky'),
(559, 26, 'Act 2', 'I Wish I Could Go Back to College', 'Kate Monster, Princeton, Nicky'),
(560, 26, 'Act 2', 'The Money Song', 'Princeton, Nicky, Gary Coleman, Brian, Christmas Eve'),
(561, 26, 'Act 2', 'School for Monsters/The Money Song (Reprise)', 'Trekkie Monster, Company'),
(562, 26, 'Act 2', 'There’s a Fine, Fine Line (Reprise)', 'Princeton'),
(563, 26, 'Act 2', 'What Do You Do with a B.A. in English? (Reprise)', 'Princeton'),
(564, 26, 'Act 2', 'For Now', 'Company'),
(565, 27, 'Act 1', 'Price and Son Theme/The Most Beautiful Thing in the World', 'Company'),
(566, 27, 'Act 1', 'Take What You Got', 'Charlie, Harry, Factory Workers'),
(567, 27, 'Act 1', 'Land of Lola', 'Lola, Angels'),
(568, 27, 'Act 1', 'Charlie’s Soliloquy', 'Charlie'),
(569, 27, 'Act 1', 'Step One', 'Charlie'),
(570, 27, 'Act 1', 'Sex Is in the Heel', 'Lola, Pat, Angels, Factory Workers'),
(571, 27, 'Act 1', 'The History of Wrong Guys', 'Lauren'),
(572, 27, 'Act 1', 'Not My Father’s Son', 'Lola, Charlie'),
(573, 27, 'Act 1', 'Everybody Say Yeah', 'Charlie, Lola, Angels, Factory Workers'),
(574, 27, 'Act 2', 'Entr’acte/Lola’s Entrance', 'Company'),
(575, 27, 'Act 2', 'What a Woman Wants', 'Lola, Pat, Don, Factory Workers'),
(576, 27, 'Act 2', 'In This Corner', 'Lola, Don, Pat, Trish, Angels, Factory Workers'),
(577, 27, 'Act 2', 'Charlie’s Soliloquy (Reprise)', 'Charlie'),
(578, 27, 'Act 2', 'Soul of a Man', 'Charlie'),
(579, 27, 'Act 2', 'Hold Me in Your Heart', 'Lola'),
(580, 27, 'Act 2', 'Raise You Up/Just Be', 'Company'),
(581, 28, 'Act 1', 'Opening Night', 'Company'),
(582, 28, 'Act 1', 'The King of Broadway', 'Max Bialystock, Accountants'),
(583, 28, 'Act 1', 'We Can Do It', 'Max Bialystock, Leo Bloom'),
(584, 28, 'Act 1', 'I Wanna Be a Producer', 'Leo Bloom, Showgirls'),
(585, 28, 'Act 1', 'We Can Do It (Reprise)', 'Max Bialystock, Leo Bloom'),
(586, 28, 'Act 1', 'In Old Bavaria', 'Franz Liebkind'),
(587, 28, 'Act 1', 'Der Guten Tag Hop-Clop', 'Franz Liebkind, Max Bialystock, Leo Bloom'),
(588, 28, 'Act 1', 'Keep It Gay', 'Roger De Bris, Carmen Ghia, Max Bialystock, Leo Bloom, Sabu, Bryan, Kevin, Shirley, Company'),
(589, 28, 'Act 1', 'When You Got It, Flaunt It', 'Ulla'),
(590, 28, 'Act 1', 'Along Came Bialy', 'Max Bialystock, Little Old Ladies'),
(591, 28, 'Act 1', 'That Face', 'Leo Bloom, Ulla'),
(592, 28, 'Act 2', 'Opening Night (Reprise)', 'Company'),
(593, 28, 'Act 2', 'Haben Sie Gehört Das Deutsche Band?', 'Franz Liebkind'),
(594, 28, 'Act 2', 'You Never Say Good Luck on Opening Night', 'Roger De Bris, Carmen Ghia, Franz Liebkind, Max Bialystock, Leo Bloom'),
(595, 28, 'Act 2', 'Springtime for Hitler', 'Roger De Bris, Carmen Ghia, Stormtroopers, Company'),
(596, 28, 'Act 2', 'Where Did We Go Right?', 'Max Bialystock, Leo Bloom'),
(597, 28, 'Act 2', 'Betrayed', 'Max Bialystock'),
(598, 28, 'Act 2', '\'Til Him', 'Leo Bloom, Max Bialystock'),
(599, 28, 'Act 2', 'Prisoners of Love', 'Company'),
(600, 28, 'Act 2', 'Leo and Max', 'Leo Bloom, Max Bialystock, Little Old Ladies'),
(601, 28, 'Act 2', 'Goodbye!', 'Company'),
(602, 29, 'Act 1', 'So Far Away', 'Carole King'),
(603, 29, 'Act 1', '1650 Broadway Medley', 'Ensemble'),
(604, 29, 'Act 1', 'It Might as Well Rain Until September', 'Carole King'),
(605, 29, 'Act 1', 'Some Kind of Wonderful', 'The Drifters'),
(606, 29, 'Act 1', 'Happy Days Are Here Again', 'Carole King, Ensemble'),
(607, 29, 'Act 1', 'Take Good Care of My Baby', 'The Shirelles'),
(608, 29, 'Act 1', 'Who Put the Bomp', 'Barry Mann'),
(609, 29, 'Act 1', 'Will You Love Me Tomorrow', 'The Shirelles'),
(610, 29, 'Act 1', 'Up on the Roof', 'The Drifters'),
(611, 29, 'Act 1', 'On Broadway', 'The Drifters'),
(612, 29, 'Act 1', 'The Locomotion', 'Little Eva'),
(613, 29, 'Act 1', 'You’ve Lost That Lovin’ Feelin’', 'The Righteous Brothers'),
(614, 29, 'Act 1', 'One Fine Day', 'Janelle Woods'),
(615, 29, 'Act 1', 'Chains', 'The Cookies'),
(616, 29, 'Act 1', 'Walking in the Rain', 'Barry Mann'),
(617, 29, 'Act 2', 'Pleasant Valley Sunday', 'The Monkees'),
(618, 29, 'Act 2', 'We Gotta Get Out of This Place', 'The Animals'),
(619, 29, 'Act 2', 'Will You Love Me Tomorrow (Reprise)', 'Carole King'),
(620, 29, 'Act 2', 'Uptown', 'The Drifters'),
(621, 29, 'Act 2', 'It’s Too Late', 'Carole King'),
(622, 29, 'Act 2', 'You’ve Got a Friend', 'Carole King'),
(623, 29, 'Act 2', '(You Make Me Feel Like) A Natural Woman', 'Carole King'),
(624, 29, 'Act 2', 'Beautiful', 'Carole King'),
(625, 29, 'Act 2', 'I Feel the Earth Move', 'Company'),
(626, 30, 'Act 1', 'Maybe', 'Annie'),
(627, 30, 'Act 1', 'It’s the Hard Knock Life', 'Orphans'),
(628, 30, 'Act 1', 'Tomorrow', 'Annie'),
(629, 30, 'Act 1', 'We’d Like to Thank You, Herbert Hoover', 'Ensemble'),
(630, 30, 'Act 1', 'Little Girls', 'Miss Hannigan'),
(631, 30, 'Act 1', 'I Think I’m Gonna Like It Here', 'Grace Farrell, Annie, Ensemble'),
(632, 30, 'Act 1', 'N.Y.C.', 'Warbucks, Grace Farrell, Annie, Ensemble'),
(633, 30, 'Act 1', 'Easy Street', 'Miss Hannigan, Rooster, Lily'),
(634, 30, 'Act 1', 'You Won’t Be an Orphan for Long', 'Grace Farrell, Warbucks, Annie, Ensemble'),
(635, 30, 'Act 2', 'Maybe (Reprise)', 'Annie, Orphans'),
(636, 30, 'Act 2', 'You’re Never Fully Dressed Without a Smile', 'Bert Healy, Boylan Sisters'),
(637, 30, 'Act 2', 'Easy Street (Reprise)', 'Miss Hannigan, Rooster, Lily'),
(638, 30, 'Act 2', 'Tomorrow (Reprise)', 'Warbucks, Annie'),
(639, 30, 'Act 2', 'Something Was Missing', 'Warbucks'),
(640, 30, 'Act 2', 'Annie', 'Warbucks, Grace Farrell, Annie'),
(641, 30, 'Act 2', 'I Don’t Need Anything But You', 'Warbucks, Annie'),
(642, 30, 'Act 2', 'A New Deal for Christmas', 'Company'),
(643, 30, 'Act 2', 'Tomorrow (Reprise)', 'Company'),
(644, 31, 'Act 1', 'Willkommen', 'Emcee, Company'),
(645, 31, 'Act 1', 'So What?', 'Fräulein Schneider'),
(646, 31, 'Act 1', 'Don’t Tell Mama', 'Sally Bowles, Kit Kat Club Girls'),
(647, 31, 'Act 1', 'Mein Herr', 'Sally Bowles, Kit Kat Club Girls'),
(648, 31, 'Act 1', 'Perfectly Marvelous', 'Sally Bowles, Cliff Bradshaw'),
(649, 31, 'Act 1', 'Two Ladies', 'Emcee, Bobby, Lulu'),
(650, 31, 'Act 1', 'It Couldn’t Please Me More (Pineapple Song)', 'Fräulein Schneider, Herr Schultz'),
(651, 31, 'Act 1', 'Tomorrow Belongs to Me', 'Waiters, Customers'),
(652, 31, 'Act 1', 'Maybe This Time', 'Sally Bowles'),
(653, 31, 'Act 1', 'Money', 'Emcee, Kit Kat Club Company'),
(654, 31, 'Act 1', 'Married', 'Herr Schultz, Fräulein Schneider'),
(655, 31, 'Act 1', 'Meeskite', 'Herr Schultz'),
(656, 31, 'Act 1', 'Tomorrow Belongs to Me (Reprise)', 'Waiters, Customers'),
(657, 31, 'Act 2', 'Entr’acte', 'Orchestra'),
(658, 31, 'Act 2', 'Married (Reprise)', 'Herr Schultz, Fräulein Schneider'),
(659, 31, 'Act 2', 'If You Could See Her (The Gorilla Song)', 'Emcee'),
(660, 31, 'Act 2', 'What Would You Do?', 'Fräulein Schneider'),
(661, 31, 'Act 2', 'I Don’t Care Much', 'Emcee'),
(662, 31, 'Act 2', 'Cabaret', 'Sally Bowles'),
(663, 31, 'Act 2', 'Finale', 'Company'),
(664, 32, 'Act 1', 'Man of La Mancha (I, Don Quixote)', 'Cervantes, Sancho, Company'),
(665, 32, 'Act 1', 'It’s All the Same', 'Aldonza, Muleteers'),
(666, 32, 'Act 1', 'Dulcinea', 'Don Quixote'),
(667, 32, 'Act 1', 'I’m Only Thinking of Him', 'Antonia, Padre, Housekeeper'),
(668, 32, 'Act 1', 'We’re Only Thinking of Him', 'Padre, Antonia, Housekeeper, Dr. Carrasco'),
(669, 32, 'Act 1', 'I Really Like Him', 'Sancho'),
(670, 32, 'Act 1', 'What Does He Want of Me?', 'Aldonza'),
(671, 32, 'Act 1', 'Little Bird, Little Bird', 'Muleteers'),
(672, 32, 'Act 1', 'Barber’s Song', 'Barber'),
(673, 32, 'Act 1', 'Golden Helmet of Mambrino', 'Don Quixote, Barber, Sancho'),
(674, 32, 'Act 1', 'To Each His Dulcinea', 'Padre'),
(675, 32, 'Act 1', 'The Impossible Dream (The Quest)', 'Don Quixote'),
(676, 32, 'Act 1', 'The Combat', 'Company'),
(677, 32, 'Act 2', 'Entr’acte', 'Orchestra'),
(678, 32, 'Act 2', 'Knight of the Woeful Countenance', 'Don Quixote, Sancho, Muleteers'),
(679, 32, 'Act 2', 'Little Bird, Little Bird (Reprise)', 'Muleteers'),
(680, 32, 'Act 2', 'The Abduction', 'Muleteers'),
(681, 32, 'Act 2', 'Aldonza', 'Aldonza'),
(682, 32, 'Act 2', 'Moorish Dance', 'Orchestra'),
(683, 32, 'Act 2', 'I Dons Prepares', 'Don Quixote'),
(684, 32, 'Act 2', 'A Little Gossip', 'Sancho'),
(685, 32, 'Act 2', 'Dulcinea (Reprise)', 'Aldonza'),
(686, 32, 'Act 2', 'The Impossible Dream (Reprise)', 'Don Quixote'),
(687, 32, 'Act 2', 'Man of La Mancha (I, Don Quixote) (Reprise)', 'Company'),
(688, 32, 'Act 2', 'Finale Ultimo', 'Company'),
(689, 36, 'Act 1', 'Arsenic and Old Lace Opening', 'Full Cast'),
(690, 37, 'Act 1', 'Barefoot in the Park Opening', 'Full Cast'),
(691, 38, 'Act 1', 'Born Yesterday Opening', 'Full Cast'),
(692, 39, 'Act 1', 'Dancin\' Opening', 'Full Cast'),
(693, 40, 'Act 1', 'Death Trap Opening', 'Full Cast'),
(694, 41, 'Act 1', 'Harry Potter and the Cursed Child Opening', 'Full Cast'),
(695, 42, 'Act 1', 'Mary Mary Opening', 'Full Cast'),
(696, 43, 'Act 1', 'Same Time, Next Year Opening', 'Full Cast'),
(697, 44, 'Act 1', 'The Voice of the Turtle Opening', 'Full Cast'),
(698, 45, 'Act 1', 'Mummenschanz Opening', 'Full Cast'),
(699, 46, 'Act 1', 'Ain\'t Misbehavin\' Opening', 'Full Cast'),
(700, 47, 'Act 1', 'Don\'t Bother Me, I Can\'t Cope Opening', 'Full Cast'),
(701, 48, 'Act 1', 'Harvey Opening', 'Full Cast'),
(702, 49, 'Act 1', 'Hellzapoppin Opening', 'Full Cast'),
(703, 50, 'Act 1', 'Pins and Needles Opening', 'Full Cast'),
(704, 51, 'Act 1', 'Smokey Joe\'s Cafe Opening', 'Full Cast'),
(705, 52, 'Act 1', 'Sugar Babies Opening', 'Full Cast'),
(706, 36, 'Act 1', 'Arsenic and Old Lace Opening', 'Full Cast'),
(707, 37, 'Act 1', 'Barefoot in the Park Opening', 'Full Cast'),
(708, 38, 'Act 1', 'Born Yesterday Opening', 'Full Cast'),
(709, 39, 'Act 1', 'Dancin\' Opening', 'Full Cast'),
(710, 40, 'Act 1', 'Death Trap Opening', 'Full Cast'),
(711, 41, 'Act 1', 'Harry Potter and the Cursed Child Opening', 'Full Cast'),
(712, 42, 'Act 1', 'Mary Mary Opening', 'Full Cast'),
(713, 43, 'Act 1', 'Same Time, Next Year Opening', 'Full Cast'),
(714, 44, 'Act 1', 'The Voice of the Turtle Opening', 'Full Cast'),
(715, 45, 'Act 1', 'Mummenschanz Opening', 'Full Cast'),
(716, 46, 'Act 1', 'Ain\'t Misbehavin\' Opening', 'Full Cast'),
(717, 47, 'Act 1', 'Don\'t Bother Me, I Can\'t Cope Opening', 'Full Cast'),
(718, 48, 'Act 1', 'Harvey Opening', 'Full Cast'),
(719, 49, 'Act 1', 'Hellzapoppin Opening', 'Full Cast'),
(720, 50, 'Act 1', 'Pins and Needles Opening', 'Full Cast'),
(721, 51, 'Act 1', 'Smokey Joe\'s Cafe Opening', 'Full Cast'),
(722, 52, 'Act 1', 'Sugar Babies Opening', 'Full Cast');

-- --------------------------------------------------------

--
-- Table structure for table `newsfeatures`
--

CREATE TABLE `newsfeatures` (
  `news_feature_id` int(11) NOT NULL,
  `show_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `publish_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `production_id` int(11) NOT NULL,
  `show_id` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `show_id` int(11) DEFAULT NULL,
  `reviewer_name` varchar(255) DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `show_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(1) NOT NULL,
  `about` text DEFAULT NULL,
  `poster_portrait` text NOT NULL,
  `poster_landscape` text NOT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `story` text DEFAULT NULL,
  `ratings` varchar(10) DEFAULT NULL,
  `ticket_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`show_id`, `title`, `type`, `about`, `poster_portrait`, `poster_landscape`, `venue_id`, `story`, `ratings`, `ticket_price`) VALUES
(1, 'Aladdin', 'M', 'Aladdin, a street thief in Agrabah, finds a magical lamp with a genie. He becomes a prince to woo Princess Jasmine, but must outwit the villain Jafar. Magic, romance, and friendship prevail.', 'aladdin-poster.png', 'aladdin-poster.jpg', 1, 'In the bustling marketplace of Agrabah, a street urchin named Aladdin dreams of a better life beyond his humble existence. One day, he encounters Princess Jasmine, who has disguised herself to explore the city and escape the confines of the palace. Instantly smitten, Aladdin promises to show her the wonders of Agrabah.\r\n\r\nMeanwhile, the power-hungry Royal Vizier, Jafar, seeks a magical lamp hidden within the Cave of Wonders. Legend has it that only a \"diamond in the rough\" can enter the cave and retrieve the lamp. Jafar tricks Aladdin into entering the cave, hoping he\'ll be the one to secure the lamp for him.\r\n\r\nInside the cave, Aladdin finds the lamp but is trapped. He rubs it in desperation, unleashing a flamboyant Genie who grants him three wishes. Aladdin\'s first wish is to be transformed into a prince to win Jasmine\'s heart. As \"Prince Ali,\" he arrives in Agrabah with an extravagant procession, hoping to impress the princess and her father, the Sultan.\r\n\r\nDespite Aladdin\'s initial success, Jasmine remains unimpressed by his royal facade, yearning for someone who truly understands her. Aladdin, still enchanted by Jasmine\'s spirit, struggles with his deception but ultimately decides to be himself.\r\n\r\nMeanwhile, Jafar discovers Aladdin\'s true identity and steals the lamp, using his wishes to become the ruler of Agrabah. With the kingdom in chaos, Aladdin and his friends devise a plan to stop Jafar and reclaim the lamp.\r\n\r\nIn a climactic battle, Aladdin outwits Jafar and saves Agrabah. He uses his final wish to set the Genie free, proving that friendship and love are worth more than any treasure. With Jafar defeated and the Genie liberated, Aladdin and Jasmine are free to pursue their love openly, and Agrabah celebrates their newfound freedom and happiness.', '4.50', 100.00),
(2, 'Wicked', 'M', '\"Wicked\" tells the story of the friendship between Elphaba, the Wicked Witch, and Glinda, the Good Witch, offering a fresh take on \"The Wizard of Oz\" with themes of identity and good vs. evil.', 'wicked-poster.jpg', 'wicked-poster.jpeg', 2, '\"Wicked\" delves into the untold backstory of the Land of Oz, focusing on the unlikely friendship between two young women: Elphaba, the green-skinned and misunderstood Wicked Witch of the West, and Glinda, the popular and privileged Good Witch of the North.\n\nThe story begins with the birth of Elphaba, whose unusual appearance and magical abilities make her an outcast from society. At university, she meets Glinda, and despite their initial animosity, they form a deep bond. However, their friendship is tested by their contrasting personalities and the pressures of their society, which is governed by the corrupt Wizard of Oz.\n\nAs Elphaba discovers the truth behind the Wizard\'s rule and his oppressive regime against talking animals, she becomes a symbol of resistance and rebellion. Meanwhile, Glinda is torn between her loyalty to her friend and her desire for acceptance and power.\n\nThroughout their journey, the two women encounter other iconic characters from the Oz universe, including the Cowardly Lion, the Tin Man, and the Scarecrow. They also confront personal challenges, romantic entanglements, and moral dilemmas that force them to question their beliefs and values.\n\nUltimately, \"Wicked\" explores themes of friendship, acceptance, and the complexities of good and evil. It offers a fresh perspective on familiar characters and challenges audiences to reconsider their preconceptions about morality and identity. As the story unfolds, Elphaba and Glinda\'s friendship proves to be the heart of the narrative, showcasing the transformative power of empathy, compassion, and forgiveness.', '4.70', 120.00),
(3, 'Harry Potter and the Cursed Child', 'P', 'Set 19 years after the original series, Harry Potter and his son Albus navigate legacy and challenges. Themes of family and choice are central in this critically acclaimed play.', 'cursed-child.jpeg', 'cursed-child.jpeg', 3, '\"Harry Potter and the Cursed Child\" picks up the story nineteen years after the climactic events of \"Harry Potter and the Deathly Hallows.\" Harry Potter, now a Ministry of Magic employee, struggles with the weight of his past and the challenges of parenthood. His youngest son, Albus Severus Potter, grapples with the burden of living up to his father\'s legendary reputation while struggling to find his own identity.\n\nAs Albus begins his first year at Hogwarts School of Witchcraft and Wizardry, he forms an unexpected friendship with Scorpius Malfoy, the son of Draco Malfoy. Together, they embark on a journey that will test their friendship, challenge their beliefs, and uncover dark secrets from the past.\n\nWhen an illegal Time-Turner falls into their hands, Albus and Scorpius embark on a daring mission to rewrite history and save Cedric Diggory, a casualty of the Triwizard Tournament. However, their actions have unforeseen consequences, leading to a fractured reality where Voldemort reigns supreme and the fate of the wizarding world hangs in the balance.\n\nAs father and son struggle to reconcile their differences and confront their deepest fears, they must unite with old friends and face new enemies in a race against time to set things right and restore balance to the wizarding world.\n\nThrough twists and turns, \"Harry Potter and the Cursed Child\" explores themes of family, friendship, and the power of choice, inviting audiences to rediscover the magic of the wizarding world in a new and exciting way.', '4.60', 150.00),
(4, 'The Book of Mormon', 'M', 'This satirical musical follows two Mormon missionaries in Uganda. With humor and catchy songs, it explores faith, culture clash, and belief, known for its wit and success.', 'The_Book_of_Mormon_poster.jpg', 'The_Book_of_Mormon_poster.jpg', 4, '\"The Book of Mormon\" follows the misadventures of two young Mormon missionaries, Elder Kevin Price and Elder Arnold Cunningham, who are sent to Uganda to spread the teachings of the Church of Jesus Christ of Latter-day Saints.\r\n\r\nElder Price, a devout and ambitious missionary, dreams of being assigned to his ideal location for his mission, Orlando, Florida. However, he is instead paired with the socially awkward and bumbling Elder Cunningham, much to his disappointment.\r\n\r\nUpon arriving in Uganda, Price and Cunningham quickly realize that their mission will be far from the idealistic experience they had imagined. The villagers are preoccupied with issues such as poverty, disease, and violence, and have little interest in the teachings of Mormonism.\r\n\r\nAs they attempt to connect with the locals and share their faith, Price and Cunningham encounter various challenges, including hostile warlords, skeptical villagers, and their own personal doubts. Along the way, they learn valuable lessons about faith, friendship, and the true meaning of their mission.\r\n\r\nDespite their initial struggles, Elder Cunningham finds unexpected success by incorporating elements of science fiction and pop culture into his teachings, which resonate with the villagers in a way that traditional Mormon doctrine does not. Meanwhile, Elder Price confronts his own insecurities and comes to understand the importance of genuine compassion and humility.\r\n\r\nUltimately, \"The Book of Mormon\" is a satirical and irreverent exploration of religious beliefs, cultural differences, and the power of human connection. Through its humor, wit, and memorable musical numbers, the musical challenges audiences to question their own beliefs while celebrating the universal themes of love, acceptance, and self-discovery.', '4.40', 110.00),
(5, 'Hadestown', 'M', 'A retelling of the ancient Greek myth of Orpheus and Eurydice.', 'Hadestown_musical_poster.png', 'Hadestown_musical_poster.jpg', 5, 'The musical begins with Hermes, the narrator, introducing the audience to the tale of Orpheus and Eurydice. Orpheus is a poor but talented musician who believes his music can bring back the spring and restore balance to the world. Eurydice, struggling with hunger and poverty, falls in love with Orpheus but worries about their future.\r\n\r\nAs Orpheus works on a song to bring back the spring, Eurydice is tempted by Hades, the ruler of the underworld, who promises her security and comfort. Desperate and cold, Eurydice accepts Hades\' offer and descends to Hadestown, a dystopian industrial underworld where the workers toil endlessly.\r\n\r\nOrpheus, heartbroken by Eurydice\'s departure, resolves to rescue her from Hadestown. He journeys to the underworld, where he confronts Hades and Persephone. Moved by Orpheus\'s music and love for Eurydice, Persephone convinces Hades to allow the couple to return to the surface on one condition: Orpheus must lead Eurydice out without looking back at her until they are both safely out of the underworld.\r\n\r\nAs Orpheus and Eurydice make their perilous journey back to the surface, doubt and fear creep into Orpheus\'s mind. Just before they reach the exit, Orpheus succumbs to his doubt and turns to look at Eurydice, condemning her to stay in the underworld forever.\r\n\r\nThe musical ends with a poignant reminder of the cyclical nature of the story and the enduring power of love and hope, despite the inevitable pain and loss.', '4.80', 130.00),
(6, 'Chicago', 'M', 'Chicago is an American musical with music by John Kander, lyrics by Fred Ebb, and book by Ebb and Bob Fosse. Set in Jazz-age Chicago, the musical is based on a 1926 play of the same name by reporter Maurine Dallas Watkins about actual criminals and crimes she reported on.', 'Chicago.jpg', 'Chicago.jpeg ', 6, 'The story is a satire on corruption in the administration of criminal justice and the concept of the \"celebrity criminal\".', '4.30', 90.00),
(7, 'The Lion King', 'M', 'The Lion King is a musical based on the 1994 Disney animated film of the same name with music by Elton John, lyrics by Tim Rice, and book by Roger Allers and Irene Mecchi.', 'The_Lion_King_Musical.png', 'Lion King.jpeg', 7, 'The story follows the adventures of the young lion Simba, the heir of his father, Mufasa. Simba\'s wicked uncle, Scar, plots to usurp Mufasa\'s throne by luring father and son into a stampede of wildebeests.', '4.90', 140.00),
(8, 'Cats', 'M', 'Cats is a sung-through musical composed by Andrew Lloyd Webber, based on Old Possum\'s Book of Practical Cats by T. S. Eliot.', 'Cats.jpg', 'Cats.jpeg', 8, 'The musical tells the story of a tribe of cats called the Jellicles and the night they make the \"Jellicle choice\" and decide which cat will ascend to the Heaviside Layer and come back to a new life.', '4.20', 95.00),
(9, 'Les Misérables', 'M', 'Les Misérables, colloquially known as Les Mis or Les Miz, is a sung-through musical adapted from Victor Hugo\'s 1862 novel of the same name, with music by Claude-Michel Schönberg and original French lyrics by Alain Boublil and Jean-Marc Natel.', 'Les miserables.jpeg', 'Les miserables.jpg', 9, 'The story is set in early 19th-century France and follows the struggles of ex-convict Jean Valjean and his experience of redemption.', '4.75', 160.00),
(10, 'A Chorus Line', 'M', 'A Chorus Line is a musical with music by Marvin Hamlisch, lyrics by Edward Kleban, and a book by James Kirkwood Jr. and Nicholas Dante.', 'A chorus line.jpeg', '', 10, 'The story provides a glimpse into the personalities of the performers and the choreographer as they describe the events that have shaped their lives and their decisions to become dancers.', '4.50', 80.00),
(11, 'Oh! Calcutta!', 'R', 'Oh! Calcutta! is an avant-garde theatrical revue created by British drama critic Kenneth Tynan.', 'Oh calcutta.jpeg', 'Oh calcutta.jpeg ', 11, 'The show featured various sketches on themes of sex, including the infamous \"Will Success Spoil Rock Hunter?\".', '4.10', 70.00),
(12, 'Mamma Mia!', 'M', 'Mamma Mia! is a jukebox musical written by British playwright Catherine Johnson, based on the songs of ABBA composed by Benny Andersson and Björn Ulvaeus.', 'Mamma mia.jpg', 'Mamma mia.jpeg ', 12, 'The story revolves around a young bride-to-be who, on the eve of her wedding, invites three men to the wedding venue, each one of whom could potentially be her father.', '4.70', 120.00),
(13, 'Beauty and the Beast', 'M', 'Beauty and the Beast is a musical with music by Alan Menken, lyrics by Howard Ashman and Tim Rice, and a book by Linda Woolverton.', 'Beauty and the beast.jpg', 'beauty and the beast.jpeg ', 13, 'The musical is based on the 1991 Disney film of the same name and tells the story of a prince who is transformed into a hideous beast and the young woman, Belle, whom he imprisons in his castle.', '4.80', 110.00),
(14, 'Rent', 'M', 'Rent is a rock musical with music, lyrics, and book by Jonathan Larson.', 'Rent.jpg', 'rent.jpg', 14, 'The story centers on a group of impoverished young artists struggling to survive and create a life in Lower Manhattan\'s East Village in the thriving days of Bohemian Alphabet City, under the shadow of HIV/AIDS.', '4.60', 100.00),
(15, 'Jersey Boys', 'M', 'Jersey Boys is a jukebox musical with music by Bob Gaudio, lyrics by Bob Crewe, and book by Marshall Brickman and Rick Elice.', 'Jersey Boys.png', 'Jersey.jpeg ', 15, 'The musical is a documentary-style narrative of the rise, the tough times, and personal clashes, and the ultimate triumph of a group of friends whose music became symbolic of a generation.', '4.40', 130.00),
(16, 'Miss Saigon', 'M', 'Miss Saigon is a musical by Claude-Michel Schönberg and Alain Boublil, with lyrics by Boublil and Richard Maltby Jr.', 'Miss Saigon.jpeg', 'Saigon.png', 16, 'The story is based on Giacomo Puccini\'s opera Madame Butterfly, and similarly tells the tragic tale of a doomed romance involving an Asian woman abandoned by her American lover.', '4.50', 125.00),
(17, '42nd Street', 'M', '42nd Street is a musical with a book by Michael Stewart and Mark Bramble, lyrics by Al Dubin and Johnny Mercer, and music by Harry Warren.', '42nd Street.jpeg', '42nd.jpeg ', 17, 'The story is a backstage musical about a young, naive actress named Peggy Sawyer who arrives in New York City from Allentown, Pennsylvania, armed with her tap shoes and big dreams.', '4.30', 115.00),
(18, 'Grease', 'M', 'Grease is a musical with music, lyrics, and book by Jim Jacobs and Warren Casey.', 'grease.jpg', 'Grease.jpeg ', 18, 'The musical is set in 1959 at fictional Rydell High School and follows ten working-class teenagers as they navigate the complexities of peer pressure, politics, personal core values, and love.', '4.20', 105.00),
(19, 'Fiddler on the Roof', 'M', 'Fiddler on the Roof is a musical with music by Jerry Bock, lyrics by Sheldon Harnick, and book by Joseph Stein.', 'Fiddler on the roof.png', 'Fiddler.png ', 19, 'The story centers on Tevye, the father of five daughters, and his attempts to maintain his Jewish religious and cultural traditions as outside influences encroach upon the family\'s lives.', '4.70', 135.00),
(20, 'Life With Father', 'P', 'Life with Father is a comedic play by Howard Lindsay and Russel Crouse, based on the autobiographical book of the same name by Clarence Day.', 'Life with father.png', 'Life with Father.png', 20, 'The story revolves around the Day family, particularly the father, Clarence Day Sr., and his attempts to run his family as efficiently as he runs his business.', '4.60', 85.00),
(21, 'Tobacco Road', 'P', 'Tobacco Road is a play by Jack Kirkland, based on the novel of the same name by Erskine Caldwell.', 'Tobacco Road.png', 'Tobacco Road .jpeg', 21, 'The story is set during the Great Depression and focuses on a family of poor white tenant farmers as they struggle to survive amidst economic hardship.', '4.10', 90.00),
(22, 'Hello, Dolly!', 'M', 'Hello, Dolly! is a musical with lyrics and music by Jerry Herman and a book by Michael Stewart.', 'Hello Dolly.png', 'Hello Dolly.png ', 22, 'The musical follows the story of Dolly Gallagher Levi, a strong-willed matchmaker, as she travels to Yonkers, New York, to find a match for the miserly \"half-a-millionaire\" Horace Vandergelder.', '4.40', 125.00),
(23, 'My Fair Lady', 'M', 'My Fair Lady is a musical based on George Bernard Shaw\'s play Pygmalion, with book and lyrics by Alan Jay Lerner and music by Frederick Loewe.', 'My fair lady.jpeg', 'Fair lady.jpeg ', 23, 'The story concerns Eliza Doolittle, a Cockney flower girl who takes speech lessons from professor Henry Higgins, a phoneticist, so that she may pass as a lady.', '4.80', 115.00),
(24, 'Hairspray', 'M', 'Hairspray is a musical with music by Marc Shaiman, lyrics by Scott Wittman and Shaiman, and a book by Mark O\'Donnell and Thomas Meehan, based on the 1988 John Waters film Hairspray.', 'hairspray.jpeg', 'hair spray.jpeg ', 24, 'The story is set in 1962 Baltimore and follows Tracy Turnblad, a teenager with big hair and an even bigger heart, as she sets out to dance her way onto TV\'s most popular show.', '4.50', 95.00),
(25, 'Mary Poppins', 'M', 'Mary Poppins is a musical based on the similarly titled Mary Poppins children\'s books by P. L. Travers and the 1964 Disney film, with music and lyrics by the Sherman Brothers.', 'Mary Poppins.jpg', 'marry poppins.jpg ', 25, 'The story is about a magical nanny who visits a dysfunctional family in London and employs her unique brand of lifestyle to improve the family\'s dynamic.', '4.70', 130.00),
(26, 'Avenue Q', 'M', 'Avenue Q is a musical conceived by Robert Lopez and Jeff Marx, who wrote the music and lyrics, and Jeff Whitty, who wrote the book.', 'Avenue Q.jpeg', 'avenue.jpeg ', 26, 'The show addresses and satirizes the issues and anxieties associated with entering adulthood, such as lack of employment, romantic relationships, and finding one\'s purpose in life.', '4.30', 105.00),
(27, 'Kinky Boots', 'M', 'Kinky Boots is a musical with music and lyrics by Cyndi Lauper and a book by Harvey Fierstein.', 'Kinky Boots.jpeg', 'Kinky.jpg ', 27, 'The story is based on the true story of a struggling shoe factory that reinvented itself by producing footwear for drag queens.', '4.60', 110.00),
(28, 'The Producers', 'M', 'The Producers is a musical with music and lyrics by Mel Brooks, and a book by Brooks and Thomas Meehan.', 'The Producers.jpeg', 'The Producers.jpeg ', 28, 'The story concerns two theatrical producers who scheme to get rich by fraudulently overselling interests in a Broadway flop.', '4.80', 135.00),
(29, 'Beautiful: The Carole King Musical', 'M', 'Beautiful: The Carole King Musical is a jukebox musical with a book by Douglas McGrath that tells the story of the early life and career of Carole King.', 'Beautiful_Carole_King.jpg', 'The Carole.jpeg ', 29, 'The story follows Carole King from her beginnings as a teenage songwriter to her success as one of the most successful solo acts in popular music history.', '4.90', 140.00),
(30, 'Annie', 'M', 'Annie is a Broadway musical based upon the popular Harold Gray comic strip Little Orphan Annie, with music by Charles Strouse, lyrics by Martin Charnin, and book by Thomas Meehan.', 'Annie.png', 'annie.jpeg ', 30, 'The story is set during the Great Depression and follows the adventures of an 11-year-old orphan named Annie as she tries to find her parents.', '4.70', 95.00),
(31, 'Cabaret', 'M', 'Cabaret is a musical with music by John Kander, lyrics by Fred Ebb, and book by Joe Masteroff, based on John Van Druten\'s play I Am a Camera, which in turn was based on the novel Goodbye to Berlin by Christopher Isherwood.', 'Cabaret.jpeg', 'Cabaret.jpeg ', 31, 'The story is set in 1931 Berlin as the Nazis are rising to power, centering on the nightlife at the seedy Kit Kat Klub and revolving around the American writer Cliff Bradshaw and his relationship with English cabaret performer Sally Bowles.', '4.50', 110.00),
(32, 'Man of La Mancha', 'M', 'Man of La Mancha is a musical with a book by Dale Wasserman, lyrics by Joe Darion, and music by Mitch Leigh.', 'Man of La Mancha.jpeg', 'La mancha.jpeg ', 32, 'The story is based on Miguel de Cervantes\'s novel Don Quixote and follows \"mad\" knight Don Quixote and his faithful servant Sancho Panza as they set out to right the wrongs of the world.', '4.80', 125.00),
(33, 'Contact', 'D', 'A dance play that tells three separate stories through movement.', 'contact.jpeg', 'contact.jpeg', 33, 'Three interconnected stories told through dance.', '4.5', 100.00),
(34, 'Fosse', 'D', 'A musical revue showcasing Bob Fosse\'s choreography.', 'fosse.jpg', 'fosse.jpeg', 34, 'A celebration of the unique dance style of Bob Fosse.', '4.6', 120.00),
(35, 'Movin\' Out', 'D', 'A dance musical featuring the songs of Billy Joel.', 'movin-out.jpeg', 'movin-out.jpeg', 35, 'A dance musical featuring the songs of Billy Joel.', '4.7', 115.00),
(36, 'Arsenic and Old Lace', 'P', 'A dark comedy about two elderly women who poison lonely old men.', 'arsenic-and-old-lace.jpeg', 'arsenic-and-old-lace.jpeg', 36, 'A comedy involving two elderly women who kill old men with poisoned wine.', '4.5', 105.00),
(37, 'Barefoot in the Park', 'P', 'A romantic comedy about a newlywed couple.', 'barefoot-in-the-park.jpeg', 'barefoot-in-the-park.jpeg', 37, 'The story of newlyweds adjusting to married life in a tiny apartment.', '4.4', 95.00),
(38, 'Born Yesterday', 'P', 'A comedy about a corrupt businessman and his girlfriend.', 'born-yesterday.jpeg', 'born-yesterday.jpeg', 38, 'A corrupt tycoon and his uneducated girlfriend arrive in Washington.', '4.3', 100.00),
(39, 'Dancin\'', 'P', 'A dance musical showcasing Bob Fosse\'s choreography.', 'dancin.jpeg', 'dancin.jpeg', 39, 'A collection of dance pieces choreographed by Bob Fosse.', '4.6', 115.00),
(40, 'Death Trap', 'P', 'A thriller about a playwright who plots to kill a student.', 'death-trap.jpeg', 'death-trap.jpeg', 40, 'A suspenseful play about a playwright who plans to murder his student.', '4.7', 125.00),
(41, 'Harry Potter and the Cursed Child', 'P', 'A continuation of the Harry Potter series in play form.', 'cursed-child.jpeg', 'cursed-child.jpeg', 3, 'The next generation of wizards face new challenges.', '4.8', 140.00),
(42, 'Mary Mary', 'P', 'A romantic comedy about a divorced couple reuniting.', 'mary-mary.jpg', 'mary-mary.jpeg', 36, 'A story about a divorced couple who are forced to reunite.', '4.1', 85.00),
(43, 'Same Time, Next Year', 'P', 'A romantic comedy about an extramarital affair.', 'same-time-next-year.jpeg', 'same-time-next-year.jpeg', 24, 'Two people meet once a year for an extramarital affair.', '4.5', 90.00),
(44, 'The Voice of the Turtle', 'P', 'A romantic comedy set during World War II.', 'voice-of-the-turtle.jpeg', 'voice-of-the-turtle.jpeg', 37, 'A love story set in wartime Manhattan.', '4.3', 110.00),
(45, 'Mummenschanz', 'S', 'A unique performance art show using mime and masks.', 'mummenschanz.jpeg', 'mummenschanz.jpeg', 22, 'A creative performance using masks and props to create stories.', '4.6', 130.00),
(46, 'Ain\'t Misbehavin\'', 'R', 'A musical revue showcasing the music of Fats Waller.', 'aint-misbehavin.jpeg', 'aint-misbehavin.jpeg', 41, 'A celebration of the music of Fats Waller.', '4.3', 120.00),
(47, 'Don\'t Bother Me, I Can\'t Cope', 'R', 'A musical revue about African-American life.', 'dont-bother-me.jpeg', 'dont-bother-me.jpeg', 42, 'A lively musical revue that explores social issues.', '4.5', 115.00),
(48, 'Harvey', 'R', 'A comedy play about a man and his invisible rabbit friend.', 'harvey.jpg', 'harvey.jpg', 43, 'The story of Elwood P. Dowd and his friend, a six-foot-tall rabbit.', '4.2', 105.00),
(49, 'Hellzapoppin', 'R', 'A musical revue with a variety of acts.', 'hellzapoppin.jpeg', 'hellzapoppin.jpeg', 17, 'An anarchic revue featuring a series of comedy sketches.', '4.1', 100.00),
(50, 'Pins and Needles', 'R', 'A musical revue with a political theme.', 'pins-and-needles.jpeg', 'pins-and-needles.jpeg', 44, 'A lighthearted look at young workers in a changing society.', '4.0', 130.00),
(51, 'Smokey Joe\'s Cafe', 'R', 'A musical revue featuring the songs of Leiber and Stoller.', 'smokey-joes-cafe.jpeg', 'smokey-joes-cafe.jpeg', 45, 'A vibrant revue showcasing classic rock and roll songs.', '4.7', 110.00),
(52, 'Sugar Babies', 'R', 'A musical revue paying homage to the burlesque era.', 'sugar-babies.jpeg', 'sugar-babies.jpeg', 23, 'A tribute to the old burlesque shows of the early 20th century.', '4.4', 95.00);

-- --------------------------------------------------------

--
-- Table structure for table `showtimes`
--

CREATE TABLE `showtimes` (
  `show_time_id` int(9) NOT NULL,
  `show_id` int(9) NOT NULL,
  `date` date NOT NULL,
  `weekdays` varchar(25) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `showtimes`
--

INSERT INTO `showtimes` (`show_time_id`, `show_id`, `date`, `weekdays`, `time`) VALUES
(1, 1, '2024-06-24', 'Monday', '19:00:00'),
(2, 1, '2024-06-25', 'Tuesday', '19:00:00'),
(3, 1, '2024-06-26', 'Wednesday', '19:00:00'),
(4, 1, '2024-06-27', 'Thursday', '19:00:00'),
(5, 1, '2024-06-28', 'Friday', '19:00:00'),
(6, 1, '2024-06-29', 'Saturday', '19:00:00'),
(7, 1, '2024-06-30', 'Sunday', '19:00:00'),
(8, 2, '2024-06-24', 'Monday', '20:00:00'),
(9, 2, '2024-06-25', 'Tuesday', '20:00:00'),
(10, 2, '2024-06-26', 'Wednesday', '20:00:00'),
(11, 2, '2024-06-27', 'Thursday', '20:00:00'),
(12, 2, '2024-06-28', 'Friday', '20:00:00'),
(13, 2, '2024-06-29', 'Saturday', '20:00:00'),
(14, 2, '2024-06-30', 'Sunday', '20:00:00'),
(15, 3, '2024-06-24', 'Monday', '13:00:00'),
(16, 3, '2024-06-24', 'Monday', '18:00:00'),
(17, 3, '2024-06-25', 'Tuesday', '13:00:00'),
(18, 3, '2024-06-25', 'Tuesday', '18:00:00'),
(19, 3, '2024-06-26', 'Wednesday', '13:00:00'),
(20, 3, '2024-06-26', 'Wednesday', '18:00:00'),
(21, 3, '2024-06-27', 'Thursday', '13:00:00'),
(22, 3, '2024-06-27', 'Thursday', '18:00:00'),
(23, 3, '2024-06-28', 'Friday', '13:00:00'),
(24, 3, '2024-06-28', 'Friday', '18:00:00'),
(25, 3, '2024-06-29', 'Saturday', '13:00:00'),
(26, 3, '2024-06-29', 'Saturday', '18:00:00'),
(27, 3, '2024-06-30', 'Sunday', '13:00:00'),
(28, 3, '2024-06-30', 'Sunday', '18:00:00'),
(29, 4, '2024-06-24', 'Monday', '19:30:00'),
(30, 4, '2024-06-25', 'Tuesday', '19:30:00'),
(31, 4, '2024-06-26', 'Wednesday', '19:30:00'),
(32, 4, '2024-06-27', 'Thursday', '19:30:00'),
(33, 4, '2024-06-28', 'Friday', '19:30:00'),
(34, 4, '2024-06-29', 'Saturday', '19:30:00'),
(35, 4, '2024-06-30', 'Sunday', '19:30:00'),
(36, 5, '2024-06-24', 'Monday', '20:00:00'),
(37, 5, '2024-06-25', 'Tuesday', '20:00:00'),
(38, 5, '2024-06-26', 'Wednesday', '20:00:00'),
(39, 5, '2024-06-27', 'Thursday', '20:00:00'),
(40, 5, '2024-06-28', 'Friday', '20:00:00'),
(41, 5, '2024-06-29', 'Saturday', '20:00:00'),
(42, 5, '2024-06-30', 'Sunday', '20:00:00'),
(43, 6, '2024-06-24', 'Monday', '19:00:00'),
(44, 6, '2024-06-25', 'Tuesday', '19:00:00'),
(45, 6, '2024-06-26', 'Wednesday', '19:00:00'),
(46, 6, '2024-06-27', 'Thursday', '19:00:00'),
(47, 6, '2024-06-28', 'Friday', '19:00:00'),
(48, 6, '2024-06-29', 'Saturday', '19:00:00'),
(49, 6, '2024-06-30', 'Sunday', '19:00:00'),
(50, 7, '2024-06-24', 'Monday', '20:00:00'),
(51, 7, '2024-06-25', 'Tuesday', '20:00:00'),
(52, 7, '2024-06-26', 'Wednesday', '20:00:00'),
(53, 7, '2024-06-27', 'Thursday', '20:00:00'),
(54, 7, '2024-06-28', 'Friday', '20:00:00'),
(55, 7, '2024-06-29', 'Saturday', '20:00:00'),
(56, 7, '2024-06-30', 'Sunday', '20:00:00'),
(57, 8, '2024-06-24', 'Monday', '19:00:00'),
(58, 8, '2024-06-25', 'Tuesday', '19:00:00'),
(59, 8, '2024-06-26', 'Wednesday', '19:00:00'),
(60, 8, '2024-06-27', 'Thursday', '19:00:00'),
(61, 8, '2024-06-28', 'Friday', '19:00:00'),
(62, 8, '2024-06-29', 'Saturday', '19:00:00'),
(63, 8, '2024-06-30', 'Sunday', '19:00:00'),
(64, 9, '2024-06-24', 'Monday', '19:30:00'),
(65, 9, '2024-06-25', 'Tuesday', '19:30:00'),
(66, 9, '2024-06-26', 'Wednesday', '19:30:00'),
(67, 9, '2024-06-27', 'Thursday', '19:30:00'),
(68, 9, '2024-06-28', 'Friday', '19:30:00'),
(69, 9, '2024-06-29', 'Saturday', '19:30:00'),
(70, 9, '2024-06-30', 'Sunday', '19:30:00'),
(71, 10, '2024-06-24', 'Monday', '20:00:00'),
(72, 10, '2024-06-25', 'Tuesday', '20:00:00'),
(73, 10, '2024-06-26', 'Wednesday', '20:00:00'),
(74, 10, '2024-06-27', 'Thursday', '20:00:00'),
(75, 10, '2024-06-28', 'Friday', '20:00:00'),
(76, 10, '2024-06-29', 'Saturday', '20:00:00'),
(77, 10, '2024-06-30', 'Sunday', '20:00:00'),
(78, 11, '2024-06-24', 'Monday', '19:00:00'),
(79, 11, '2024-06-25', 'Tuesday', '19:00:00'),
(80, 11, '2024-06-26', 'Wednesday', '19:00:00'),
(81, 11, '2024-06-27', 'Thursday', '19:00:00'),
(82, 11, '2024-06-28', 'Friday', '19:00:00'),
(83, 11, '2024-06-29', 'Saturday', '19:00:00'),
(84, 11, '2024-06-30', 'Sunday', '19:00:00'),
(85, 12, '2024-06-24', 'Monday', '20:00:00'),
(86, 12, '2024-06-25', 'Tuesday', '20:00:00'),
(87, 12, '2024-06-26', 'Wednesday', '20:00:00'),
(88, 12, '2024-06-27', 'Thursday', '20:00:00'),
(89, 12, '2024-06-28', 'Friday', '20:00:00'),
(90, 12, '2024-06-29', 'Saturday', '20:00:00'),
(91, 12, '2024-06-30', 'Sunday', '20:00:00'),
(92, 13, '2024-06-24', 'Monday', '19:30:00'),
(93, 13, '2024-06-25', 'Tuesday', '19:30:00'),
(94, 13, '2024-06-26', 'Wednesday', '19:30:00'),
(95, 13, '2024-06-27', 'Thursday', '19:30:00'),
(96, 13, '2024-06-28', 'Friday', '19:30:00'),
(97, 13, '2024-06-29', 'Saturday', '19:30:00'),
(98, 13, '2024-06-30', 'Sunday', '19:30:00'),
(99, 14, '2024-06-24', 'Monday', '20:00:00'),
(100, 14, '2024-06-25', 'Tuesday', '20:00:00'),
(101, 14, '2024-06-26', 'Wednesday', '20:00:00'),
(102, 14, '2024-06-27', 'Thursday', '20:00:00'),
(103, 14, '2024-06-28', 'Friday', '20:00:00'),
(104, 14, '2024-06-29', 'Saturday', '20:00:00'),
(105, 14, '2024-06-30', 'Sunday', '20:00:00'),
(106, 15, '2024-06-24', 'Monday', '19:00:00'),
(107, 15, '2024-06-25', 'Tuesday', '19:00:00'),
(108, 15, '2024-06-26', 'Wednesday', '19:00:00'),
(109, 15, '2024-06-27', 'Thursday', '19:00:00'),
(110, 15, '2024-06-28', 'Friday', '19:00:00'),
(111, 15, '2024-06-29', 'Saturday', '19:00:00'),
(112, 15, '2024-06-30', 'Sunday', '19:00:00'),
(113, 16, '2024-06-24', 'Monday', '20:00:00'),
(114, 16, '2024-06-25', 'Tuesday', '20:00:00'),
(115, 16, '2024-06-26', 'Wednesday', '20:00:00'),
(116, 16, '2024-06-27', 'Thursday', '20:00:00'),
(117, 16, '2024-06-28', 'Friday', '20:00:00'),
(118, 16, '2024-06-29', 'Saturday', '20:00:00'),
(119, 16, '2024-06-30', 'Sunday', '20:00:00'),
(120, 17, '2024-06-24', 'Monday', '19:00:00'),
(121, 17, '2024-06-25', 'Tuesday', '19:00:00'),
(122, 17, '2024-06-26', 'Wednesday', '19:00:00'),
(123, 17, '2024-06-27', 'Thursday', '19:00:00'),
(124, 17, '2024-06-28', 'Friday', '19:00:00'),
(125, 17, '2024-06-29', 'Saturday', '19:00:00'),
(126, 17, '2024-06-30', 'Sunday', '19:00:00'),
(127, 18, '2024-06-24', 'Monday', '20:00:00'),
(128, 18, '2024-06-25', 'Tuesday', '20:00:00'),
(129, 18, '2024-06-26', 'Wednesday', '20:00:00'),
(130, 18, '2024-06-27', 'Thursday', '20:00:00'),
(131, 18, '2024-06-28', 'Friday', '20:00:00'),
(132, 18, '2024-06-29', 'Saturday', '20:00:00'),
(133, 18, '2024-06-30', 'Sunday', '20:00:00'),
(134, 19, '2024-06-24', 'Monday', '19:00:00'),
(135, 19, '2024-06-25', 'Tuesday', '19:00:00'),
(136, 19, '2024-06-26', 'Wednesday', '19:00:00'),
(137, 19, '2024-06-27', 'Thursday', '19:00:00'),
(138, 19, '2024-06-28', 'Friday', '19:00:00'),
(139, 19, '2024-06-29', 'Saturday', '19:00:00'),
(140, 19, '2024-06-30', 'Sunday', '19:00:00'),
(141, 20, '2024-06-24', 'Monday', '20:00:00'),
(142, 20, '2024-06-25', 'Tuesday', '20:00:00'),
(143, 20, '2024-06-26', 'Wednesday', '20:00:00'),
(144, 20, '2024-06-27', 'Thursday', '20:00:00'),
(145, 20, '2024-06-28', 'Friday', '20:00:00'),
(146, 20, '2024-06-29', 'Saturday', '20:00:00'),
(147, 20, '2024-06-30', 'Sunday', '20:00:00'),
(148, 21, '2024-06-24', 'Monday', '19:30:00'),
(149, 21, '2024-06-25', 'Tuesday', '19:30:00'),
(150, 21, '2024-06-26', 'Wednesday', '19:30:00'),
(151, 21, '2024-06-27', 'Thursday', '19:30:00'),
(152, 21, '2024-06-28', 'Friday', '19:30:00'),
(153, 21, '2024-06-29', 'Saturday', '19:30:00'),
(154, 21, '2024-06-30', 'Sunday', '19:30:00'),
(155, 22, '2024-06-24', 'Monday', '20:00:00'),
(156, 22, '2024-06-25', 'Tuesday', '20:00:00'),
(157, 22, '2024-06-26', 'Wednesday', '20:00:00'),
(158, 22, '2024-06-27', 'Thursday', '20:00:00'),
(159, 22, '2024-06-28', 'Friday', '20:00:00'),
(160, 22, '2024-06-29', 'Saturday', '20:00:00'),
(161, 22, '2024-06-30', 'Sunday', '20:00:00'),
(162, 23, '2024-06-24', 'Monday', '19:00:00'),
(163, 23, '2024-06-25', 'Tuesday', '19:00:00'),
(164, 23, '2024-06-26', 'Wednesday', '19:00:00'),
(165, 23, '2024-06-27', 'Thursday', '19:00:00'),
(166, 23, '2024-06-28', 'Friday', '19:00:00'),
(167, 23, '2024-06-29', 'Saturday', '19:00:00'),
(168, 23, '2024-06-30', 'Sunday', '19:00:00'),
(169, 24, '2024-06-24', 'Monday', '20:00:00'),
(170, 24, '2024-06-25', 'Tuesday', '20:00:00'),
(171, 24, '2024-06-26', 'Wednesday', '20:00:00'),
(172, 24, '2024-06-27', 'Thursday', '20:00:00'),
(173, 24, '2024-06-28', 'Friday', '20:00:00'),
(174, 24, '2024-06-29', 'Saturday', '20:00:00'),
(175, 24, '2024-06-30', 'Sunday', '20:00:00'),
(176, 25, '2024-06-24', 'Monday', '19:00:00'),
(177, 25, '2024-06-25', 'Tuesday', '19:00:00'),
(178, 25, '2024-06-26', 'Wednesday', '19:00:00'),
(179, 25, '2024-06-27', 'Thursday', '19:00:00'),
(180, 25, '2024-06-28', 'Friday', '19:00:00'),
(181, 25, '2024-06-29', 'Saturday', '19:00:00'),
(182, 25, '2024-06-30', 'Sunday', '19:00:00'),
(183, 26, '2024-06-24', 'Monday', '20:00:00'),
(184, 26, '2024-06-25', 'Tuesday', '20:00:00'),
(185, 26, '2024-06-26', 'Wednesday', '20:00:00'),
(186, 26, '2024-06-27', 'Thursday', '20:00:00'),
(187, 26, '2024-06-28', 'Friday', '20:00:00'),
(188, 26, '2024-06-29', 'Saturday', '20:00:00'),
(189, 26, '2024-06-30', 'Sunday', '20:00:00'),
(190, 27, '2024-06-24', 'Monday', '19:00:00'),
(191, 27, '2024-06-25', 'Tuesday', '19:00:00'),
(192, 27, '2024-06-26', 'Wednesday', '19:00:00'),
(193, 27, '2024-06-27', 'Thursday', '19:00:00'),
(194, 27, '2024-06-28', 'Friday', '19:00:00'),
(195, 27, '2024-06-29', 'Saturday', '19:00:00'),
(196, 27, '2024-06-30', 'Sunday', '19:00:00'),
(197, 28, '2024-06-24', 'Monday', '20:00:00'),
(198, 28, '2024-06-25', 'Tuesday', '20:00:00'),
(199, 28, '2024-06-26', 'Wednesday', '20:00:00'),
(200, 28, '2024-06-27', 'Thursday', '20:00:00'),
(201, 28, '2024-06-28', 'Friday', '20:00:00'),
(202, 28, '2024-06-29', 'Saturday', '20:00:00'),
(203, 28, '2024-06-30', 'Sunday', '20:00:00'),
(204, 29, '2024-06-24', 'Monday', '19:30:00'),
(205, 29, '2024-06-25', 'Tuesday', '19:30:00'),
(206, 29, '2024-06-26', 'Wednesday', '19:30:00'),
(207, 29, '2024-06-27', 'Thursday', '19:30:00'),
(208, 29, '2024-06-28', 'Friday', '19:30:00'),
(209, 29, '2024-06-29', 'Saturday', '19:30:00'),
(210, 29, '2024-06-30', 'Sunday', '19:30:00'),
(211, 30, '2024-06-24', 'Monday', '20:00:00'),
(212, 30, '2024-06-25', 'Tuesday', '20:00:00'),
(213, 30, '2024-06-26', 'Wednesday', '20:00:00'),
(214, 30, '2024-06-27', 'Thursday', '20:00:00'),
(215, 30, '2024-06-28', 'Friday', '20:00:00'),
(216, 30, '2024-06-29', 'Saturday', '20:00:00'),
(217, 30, '2024-06-30', 'Sunday', '20:00:00'),
(218, 31, '2024-06-24', 'Monday', '19:00:00'),
(219, 31, '2024-06-25', 'Tuesday', '19:00:00'),
(220, 31, '2024-06-26', 'Wednesday', '19:00:00'),
(221, 31, '2024-06-27', 'Thursday', '19:00:00'),
(222, 31, '2024-06-28', 'Friday', '19:00:00'),
(223, 31, '2024-06-29', 'Saturday', '19:00:00'),
(224, 31, '2024-06-30', 'Sunday', '19:00:00'),
(225, 32, '2024-06-24', 'Monday', '20:00:00'),
(226, 32, '2024-06-25', 'Tuesday', '20:00:00'),
(227, 32, '2024-06-26', 'Wednesday', '20:00:00'),
(228, 32, '2024-06-27', 'Thursday', '20:00:00'),
(229, 32, '2024-06-28', 'Friday', '20:00:00'),
(230, 32, '2024-06-29', 'Saturday', '20:00:00'),
(231, 32, '2024-06-30', 'Sunday', '20:00:00'),
(232, 33, '2024-06-24', 'Monday', '19:00:00'),
(233, 33, '2024-06-25', 'Tuesday', '19:00:00'),
(234, 33, '2024-06-26', 'Wednesday', '19:00:00'),
(235, 33, '2024-06-27', 'Thursday', '19:00:00'),
(236, 33, '2024-06-28', 'Friday', '19:00:00'),
(237, 33, '2024-06-29', 'Saturday', '19:00:00'),
(238, 33, '2024-06-30', 'Sunday', '19:00:00'),
(239, 34, '2024-06-24', 'Monday', '20:00:00'),
(240, 34, '2024-06-25', 'Tuesday', '20:00:00'),
(241, 34, '2024-06-26', 'Wednesday', '20:00:00'),
(242, 34, '2024-06-27', 'Thursday', '20:00:00'),
(243, 34, '2024-06-28', 'Friday', '20:00:00'),
(244, 34, '2024-06-29', 'Saturday', '20:00:00'),
(245, 34, '2024-06-30', 'Sunday', '20:00:00'),
(246, 35, '2024-06-24', 'Monday', '19:30:00'),
(247, 35, '2024-06-25', 'Tuesday', '19:30:00'),
(248, 35, '2024-06-26', 'Wednesday', '19:30:00'),
(249, 35, '2024-06-27', 'Thursday', '19:30:00'),
(250, 35, '2024-06-28', 'Friday', '19:30:00'),
(251, 35, '2024-06-29', 'Saturday', '19:30:00'),
(252, 35, '2024-06-30', 'Sunday', '19:30:00'),
(253, 36, '2024-06-24', 'Monday', '19:00:00'),
(254, 36, '2024-06-25', 'Tuesday', '19:00:00'),
(255, 36, '2024-06-26', 'Wednesday', '19:00:00'),
(256, 36, '2024-06-27', 'Thursday', '19:00:00'),
(257, 36, '2024-06-28', 'Friday', '19:00:00'),
(258, 36, '2024-06-29', 'Saturday', '19:00:00'),
(259, 36, '2024-06-30', 'Sunday', '19:00:00'),
(260, 37, '2024-06-24', 'Monday', '20:00:00'),
(261, 37, '2024-06-25', 'Tuesday', '20:00:00'),
(262, 37, '2024-06-26', 'Wednesday', '20:00:00'),
(263, 37, '2024-06-27', 'Thursday', '20:00:00'),
(264, 37, '2024-06-28', 'Friday', '20:00:00'),
(265, 37, '2024-06-29', 'Saturday', '20:00:00'),
(266, 37, '2024-06-30', 'Sunday', '20:00:00'),
(267, 38, '2024-06-24', 'Monday', '19:30:00'),
(268, 38, '2024-06-25', 'Tuesday', '19:30:00'),
(269, 38, '2024-06-26', 'Wednesday', '19:30:00'),
(270, 38, '2024-06-27', 'Thursday', '19:30:00'),
(271, 38, '2024-06-28', 'Friday', '19:30:00'),
(272, 38, '2024-06-29', 'Saturday', '19:30:00'),
(273, 38, '2024-06-30', 'Sunday', '19:30:00'),
(274, 39, '2024-06-24', 'Monday', '20:00:00'),
(275, 39, '2024-06-25', 'Tuesday', '20:00:00'),
(276, 39, '2024-06-26', 'Wednesday', '20:00:00'),
(277, 39, '2024-06-27', 'Thursday', '20:00:00'),
(278, 39, '2024-06-28', 'Friday', '20:00:00'),
(279, 39, '2024-06-29', 'Saturday', '20:00:00'),
(280, 39, '2024-06-30', 'Sunday', '20:00:00'),
(281, 40, '2024-06-24', 'Monday', '19:00:00'),
(282, 40, '2024-06-25', 'Tuesday', '19:00:00'),
(283, 40, '2024-06-26', 'Wednesday', '19:00:00'),
(284, 40, '2024-06-27', 'Thursday', '19:00:00'),
(285, 40, '2024-06-28', 'Friday', '19:00:00'),
(286, 40, '2024-06-29', 'Saturday', '19:00:00'),
(287, 40, '2024-06-30', 'Sunday', '19:00:00'),
(288, 41, '2024-06-24', 'Monday', '13:00:00'),
(289, 41, '2024-06-24', 'Monday', '18:00:00'),
(290, 41, '2024-06-25', 'Tuesday', '13:00:00'),
(291, 41, '2024-06-25', 'Tuesday', '18:00:00'),
(292, 41, '2024-06-26', 'Wednesday', '13:00:00'),
(293, 41, '2024-06-26', 'Wednesday', '18:00:00'),
(294, 41, '2024-06-27', 'Thursday', '13:00:00'),
(295, 41, '2024-06-27', 'Thursday', '18:00:00'),
(296, 41, '2024-06-28', 'Friday', '13:00:00'),
(297, 41, '2024-06-28', 'Friday', '18:00:00'),
(298, 41, '2024-06-29', 'Saturday', '13:00:00'),
(299, 41, '2024-06-29', 'Saturday', '18:00:00'),
(300, 41, '2024-06-30', 'Sunday', '13:00:00'),
(301, 41, '2024-06-30', 'Sunday', '18:00:00'),
(302, 42, '2024-06-24', 'Monday', '19:30:00'),
(303, 42, '2024-06-25', 'Tuesday', '19:30:00'),
(304, 42, '2024-06-26', 'Wednesday', '19:30:00'),
(305, 42, '2024-06-27', 'Thursday', '19:30:00'),
(306, 42, '2024-06-28', 'Friday', '19:30:00'),
(307, 42, '2024-06-29', 'Saturday', '19:30:00'),
(308, 42, '2024-06-30', 'Sunday', '19:30:00'),
(309, 43, '2024-06-24', 'Monday', '20:00:00'),
(310, 43, '2024-06-25', 'Tuesday', '20:00:00'),
(311, 43, '2024-06-26', 'Wednesday', '20:00:00'),
(312, 43, '2024-06-27', 'Thursday', '20:00:00'),
(313, 43, '2024-06-28', 'Friday', '20:00:00'),
(314, 43, '2024-06-29', 'Saturday', '20:00:00'),
(315, 43, '2024-06-30', 'Sunday', '20:00:00'),
(316, 44, '2024-06-24', 'Monday', '19:00:00'),
(317, 44, '2024-06-25', 'Tuesday', '19:00:00'),
(318, 44, '2024-06-26', 'Wednesday', '19:00:00'),
(319, 44, '2024-06-27', 'Thursday', '19:00:00'),
(320, 44, '2024-06-28', 'Friday', '19:00:00'),
(321, 44, '2024-06-29', 'Saturday', '19:00:00'),
(322, 44, '2024-06-30', 'Sunday', '19:00:00'),
(323, 45, '2024-06-24', 'Monday', '19:00:00'),
(324, 45, '2024-06-25', 'Tuesday', '19:00:00'),
(325, 45, '2024-06-26', 'Wednesday', '19:00:00'),
(326, 45, '2024-06-27', 'Thursday', '19:00:00'),
(327, 45, '2024-06-28', 'Friday', '19:00:00'),
(328, 45, '2024-06-29', 'Saturday', '19:00:00'),
(329, 45, '2024-06-30', 'Sunday', '19:00:00'),
(330, 46, '2024-06-24', 'Monday', '20:00:00'),
(331, 46, '2024-06-25', 'Tuesday', '20:00:00'),
(332, 46, '2024-06-26', 'Wednesday', '20:00:00'),
(333, 46, '2024-06-27', 'Thursday', '20:00:00'),
(334, 46, '2024-06-28', 'Friday', '20:00:00'),
(335, 46, '2024-06-29', 'Saturday', '20:00:00'),
(336, 46, '2024-06-30', 'Sunday', '20:00:00'),
(337, 47, '2024-06-24', 'Monday', '19:00:00'),
(338, 47, '2024-06-25', 'Tuesday', '19:00:00'),
(339, 47, '2024-06-26', 'Wednesday', '19:00:00'),
(340, 47, '2024-06-27', 'Thursday', '19:00:00'),
(341, 47, '2024-06-28', 'Friday', '19:00:00'),
(342, 47, '2024-06-29', 'Saturday', '19:00:00'),
(343, 47, '2024-06-30', 'Sunday', '19:00:00'),
(344, 48, '2024-06-24', 'Monday', '19:30:00'),
(345, 48, '2024-06-25', 'Tuesday', '19:30:00'),
(346, 48, '2024-06-26', 'Wednesday', '19:30:00'),
(347, 48, '2024-06-27', 'Thursday', '19:30:00'),
(348, 48, '2024-06-28', 'Friday', '19:30:00'),
(349, 48, '2024-06-29', 'Saturday', '19:30:00'),
(350, 48, '2024-06-30', 'Sunday', '19:30:00'),
(351, 49, '2024-06-24', 'Monday', '20:00:00'),
(352, 49, '2024-06-25', 'Tuesday', '20:00:00'),
(353, 49, '2024-06-26', 'Wednesday', '20:00:00'),
(354, 49, '2024-06-27', 'Thursday', '20:00:00'),
(355, 49, '2024-06-28', 'Friday', '20:00:00'),
(356, 49, '2024-06-29', 'Saturday', '20:00:00'),
(357, 49, '2024-06-30', 'Sunday', '20:00:00'),
(358, 50, '2024-06-24', 'Monday', '19:00:00'),
(359, 50, '2024-06-25', 'Tuesday', '19:00:00'),
(360, 50, '2024-06-26', 'Wednesday', '19:00:00'),
(361, 50, '2024-06-27', 'Thursday', '19:00:00'),
(362, 50, '2024-06-28', 'Friday', '19:00:00'),
(363, 50, '2024-06-29', 'Saturday', '19:00:00'),
(364, 50, '2024-06-30', 'Sunday', '19:00:00'),
(365, 51, '2024-06-24', 'Monday', '20:00:00'),
(366, 51, '2024-06-25', 'Tuesday', '20:00:00'),
(367, 51, '2024-06-26', 'Wednesday', '20:00:00'),
(368, 51, '2024-06-27', 'Thursday', '20:00:00'),
(369, 51, '2024-06-28', 'Friday', '20:00:00'),
(370, 51, '2024-06-29', 'Saturday', '20:00:00'),
(371, 51, '2024-06-30', 'Sunday', '20:00:00'),
(372, 52, '2024-06-24', 'Monday', '19:30:00'),
(373, 52, '2024-06-25', 'Tuesday', '19:30:00'),
(374, 52, '2024-06-26', 'Wednesday', '19:30:00'),
(375, 52, '2024-06-27', 'Thursday', '19:30:00'),
(376, 52, '2024-06-28', 'Friday', '19:30:00'),
(377, 52, '2024-06-29', 'Saturday', '19:30:00'),
(378, 52, '2024-06-30', 'Sunday', '19:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `show_id` int(9) NOT NULL,
  `user_id` int(11) NOT NULL,
  `show_title` varchar(255) NOT NULL,
  `show_day` varchar(50) NOT NULL,
  `show_date` varchar(100) NOT NULL,
  `show_time` varchar(50) NOT NULL,
  `ticket_price` decimal(10,2) NOT NULL,
  `ticket_quantity` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE `useraccount` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `joined_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`user_id`, `firstname`, `middlename`, `lastname`, `username`, `email`, `password`, `joined_date`) VALUES
(2, 'Doming', 'Hilapo', 'Ricalde', 'Doming Ricalde', 'domingricalde@gmail.com', '$2y$10$eOPE6NDKknLA80DgWS.yaOrFXD4hPvE6vYHk6chG2KYfb.9U1Bh7.', NULL),
(4, 'Neil', '', 'Mojica', 'Neil Mojica', 'neil@gmail.com', '$2y$10$dqwDNICElNoOJzZmMoBBou4Saj.ceeZe6K9GJ.WdSclkNQTY4SqSS', NULL),
(5, 'Mojica', '', 'Neil', 'Neil123 Mojica1', 'neil1234@gmail.com', '$2y$10$nk/OyMyoMnTntuLtEojHk.89JFbU9U6axXyzQ09RwrbjKOB7X72cC', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_tokens`
--

CREATE TABLE `user_tokens` (
  `id` int(11) NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashed_validator` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `venue_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`venue_id`, `name`, `address`, `city`, `state`, `zip_code`, `country`) VALUES
(1, 'New Amsterdam Theatre', '214 West 42nd Street', 'New York', 'NY', '10036', 'USA'),
(2, 'Gershwin Theatre', '222 West 51st Street', 'New York', 'NY', '10019', 'USA'),
(3, 'Lyric Theatre', '214 West 43rd Street', 'New York', 'NY', '10036', 'USA'),
(4, 'Eugene O\'Neill Theatre', '230 West 49th Street', 'New York', 'NY', '10019', 'USA'),
(5, 'Walter Kerr Theatre', '219 West 48th Street', 'New York', 'NY', '10036', 'USA'),
(6, 'Ambassador Theatre', '219 West 49th Street', 'New York', 'NY', '10019', 'USA'),
(7, 'Minskoff Theatre', '200 West 45th Street', 'New York', 'NY', '10036', 'USA'),
(8, 'New London Theatre', '166 Drury Lane', 'London', '', 'WC2B 5PW', 'UK'),
(9, 'Palace Theatre', '109-113 Shaftesbury Avenue', 'London', '', 'W1D 5AY', 'UK'),
(10, 'Shubert Theatre', '225 West 44th Street', 'New York', 'NY', '10036', 'USA'),
(11, 'Eden Theatre', '215 West 47th Street', 'New York', 'NY', '10036', 'USA'),
(12, 'Winter Garden Theatre', '1634 Broadway', 'New York', 'NY', '10019', 'USA'),
(13, 'Palace Theatre', '1564 Broadway', 'New York', 'NY', '10036', 'USA'),
(14, 'Nederlander Theatre', '208 West 41st Street', 'New York', 'NY', '10036', 'USA'),
(15, 'August Wilson Theatre', '245 West 52nd Street', 'New York', 'NY', '10019', 'USA'),
(16, 'Theatre Royal, Drury Lane', 'Catherine Street', 'London', '', 'WC2B 5JF', 'UK'),
(17, 'Winter Garden Theatre', '1634 Broadway', 'New York', 'NY', '10019', 'USA'),
(18, 'Broadhurst Theatre', '235 West 44th Street', 'New York', 'NY', '10036', 'USA'),
(19, 'Imperial Theatre', '249 West 45th Street', 'New York', 'NY', '10036', 'USA'),
(20, 'Empire Theatre', '1430 Broadway', 'New York', 'NY', '10018', 'USA'),
(21, 'Masque Theatre', '169 West 45th Street', 'New York', 'NY', '10036', 'USA'),
(22, 'St. James Theatre', '246 West 44th Street', 'New York', 'NY', '10036', 'USA'),
(23, 'Mark Hellinger Theatre', '237 West 51st Street', 'New York', 'NY', '10019', 'USA'),
(24, 'Neil Simon Theatre', '250 West 52nd Street', 'New York', 'NY', '10019', 'USA'),
(25, 'New Amsterdam Theatre', '214 West 42nd Street', 'New York', 'NY', '10036', 'USA'),
(26, 'John Golden Theatre', '252 West 45th Street', 'New York', 'NY', '10036', 'USA'),
(27, 'Al Hirschfeld Theatre', '302 West 45th Street', 'New York', 'NY', '10036', 'USA'),
(28, 'St. James Theatre', '246 West 44th Street', 'New York', 'NY', '10036', 'USA'),
(29, 'Stephen Sondheim Theatre', '124 West 43rd Street', 'New York', 'NY', '10036', 'USA'),
(30, 'Alvin Theatre', '250 West 52nd Street', 'New York', 'NY', '10019', 'USA'),
(31, 'Broadhurst Theatre', '235 West 44th Street', 'New York', 'NY', '10036', 'USA'),
(32, 'ANTA Washington Square Theatre', '404 West 44th Street', 'New York', 'NY', '10036', 'USA'),
(33, 'Vivian Beaumont Theatre', '150 West 65th Street', 'New York', 'NY', '10023', 'USA'),
(34, 'Richard Rodgers Theatre', '226 West 46th Street', 'New York', 'NY', '10036', 'USA'),
(35, 'Fulton Theatre', '210 West 46th Street', 'New York', 'NY', '10036', 'USA'),
(36, 'Biltmore Theatre', '261 West 47th Street', 'New York', 'NY', '10036', 'USA'),
(37, 'Lyceum Theatre', '149 West 45th Street', 'New York', 'NY', '10036', 'USA'),
(38, 'Music Box Theatre', '239 West 45th Street', 'New York', 'NY', '10036', 'USA'),
(39, 'Morosco Theatre', '217 West 45th Street', 'New York', 'NY', '10036', 'USA'),
(40, 'Bijou Theatre', '1239 Broadway', 'New York', 'NY', '10001', 'USA'),
(41, 'Longacre Theatre', '220 West 48th Street', 'New York', 'NY', '10036', 'USA'),
(42, 'Playhouse Theatre', '137 West 48th Street', 'New York', 'NY', '10036', 'USA'),
(43, '48th Street Theatre', '254 West 48th Street', 'New York', 'NY', '10036', 'USA'),
(44, 'Labor Stage Theatre', '131 West 41st Street', 'New York', 'NY', '10036', 'USA'),
(45, 'Virginia Theatre', '245 West 52nd Street', 'New York', 'NY', '10019', 'USA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`award_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`cast_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `creative`
--
ALTER TABLE `creative`
  ADD PRIMARY KEY (`creative_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `favorites_show`
--
ALTER TABLE `favorites_show`
  ADD PRIMARY KEY (`favorite_id`);

--
-- Indexes for table `featuredshows`
--
ALTER TABLE `featuredshows`
  ADD PRIMARY KEY (`featured_show_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `musicalnumbers`
--
ALTER TABLE `musicalnumbers`
  ADD PRIMARY KEY (`number_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `newsfeatures`
--
ALTER TABLE `newsfeatures`
  ADD PRIMARY KEY (`news_feature_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`production_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`show_id`),
  ADD KEY `venue_id` (`venue_id`);

--
-- Indexes for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD PRIMARY KEY (`show_time_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `fk_user` (`user_id`),
  ADD KEY `fk_show` (`show_id`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`venue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `cast`
--
ALTER TABLE `cast`
  MODIFY `cast_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `creative`
--
ALTER TABLE `creative`
  MODIFY `creative_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites_show`
--
ALTER TABLE `favorites_show`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featuredshows`
--
ALTER TABLE `featuredshows`
  MODIFY `featured_show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `musicalnumbers`
--
ALTER TABLE `musicalnumbers`
  MODIFY `number_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=723;

--
-- AUTO_INCREMENT for table `newsfeatures`
--
ALTER TABLE `newsfeatures`
  MODIFY `news_feature_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `production_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `showtimes`
--
ALTER TABLE `showtimes`
  MODIFY `show_time_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `useraccount`
--
ALTER TABLE `useraccount`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `venue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `creative`
--
ALTER TABLE `creative`
  ADD CONSTRAINT `creative_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `featuredshows`
--
ALTER TABLE `featuredshows`
  ADD CONSTRAINT `featuredshows_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `musicalnumbers`
--
ALTER TABLE `musicalnumbers`
  ADD CONSTRAINT `musicalnumbers_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `newsfeatures`
--
ALTER TABLE `newsfeatures`
  ADD CONSTRAINT `newsfeatures_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `production`
--
ALTER TABLE `production`
  ADD CONSTRAINT `production_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`venue_id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `fk_show` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `useraccount` (`user_id`),
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `useraccount` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `useraccount` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
