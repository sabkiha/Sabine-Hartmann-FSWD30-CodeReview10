-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2018 at 03:33 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_sabine_hartmann_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id_author` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `author`:
--

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id_author`, `first_name`, `surname`) VALUES
(1, 'David', 'Walliams'),
(2, 'Marc', 'Sleen'),
(3, 'W.', 'Vandersteen'),
(4, '', 'Wirel'),
(5, 'Alex', 'Garland'),
(6, 'Pedro', 'Almodovar'),
(7, 'Godfrey', 'Reggio'),
(8, 'Michael', 'Nyman'),
(9, '', 'Olla Vogala'),
(10, 'Wim', 'Mertens');

-- --------------------------------------------------------

--
-- Table structure for table `available`
--

CREATE TABLE `available` (
  `id_avail` int(11) NOT NULL,
  `avail_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `available`:
--

--
-- Dumping data for table `available`
--

INSERT INTO `available` (`id_avail`, `avail_name`) VALUES
(1, 'available'),
(2, 'reserved');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `genre_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `genre`:
--

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id_genre`, `genre_name`) VALUES
(1, 'Children\'s Book'),
(2, 'Comic Book'),
(3, 'Science Fiction'),
(4, 'Drama'),
(5, 'Documentary'),
(6, 'Live Recording'),
(7, 'Minimal Music');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id_media` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `publish_date` int(11) NOT NULL,
  `publisher` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `imageURL` varchar(255) NOT NULL,
  `availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `media`:
--   `author`
--       `author` -> `id_author`
--   `availability`
--       `available` -> `id_avail`
--   `genre`
--       `genre` -> `id_genre`
--   `publisher`
--       `publisher` -> `id_publisher`
--   `type`
--       `media_type` -> `id_media_type`
--

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id_media`, `title`, `author`, `short_description`, `publish_date`, `publisher`, `isbn`, `type`, `genre`, `imageURL`, `availability`) VALUES
(1, 'The World\'s Worst Children', 1, 'Ten cautionary tales and a delightfully dreadful cast of characters; all in a gorgeously gifty FULL COLOUR format! Are you ready to meet the World\'s Worst Children? Five beastly boys and five gruesome girls! * Like Sofia Sofa - a TV super-fan so stuck to the sofa that she\'s turning into one! * Or Dribbling Drew - a boy whose drool gets him into trouble on a school trip! * And not forgetting Blubbering Bertha - a girl who bawls and tells terrible tales! Also featuring a special appearance from fan-favourite Raj!', 2016, 10, '9780008197049', 1, 1, 'img/book01.jpg', 1),
(2, 'The World\'s Worst Children 2', 1, 'The brilliant follow-up to David Walliams\' bestseller The World\'s Worst Children! Ten more stories about a brand new gang of hilariously horrible kids from everyone\'s favourite children\'s author, illustrated in glorious full colour by Tony Ross. If you thought you had read about the World\'s Worst Children already, you\'re in for a rather nasty shock. The beastly boys and gruesome girls in this book are even ruder, even more disgusting and WORSE than you could ever imagine! This gorgeous collection of ten stories from the master himself, David Walliams, will make you snort with laughter and thank your lucky stars that you don\'t know anyone like Gruesome Griselda or Fussy Frankie in real life. It also features a special appearance from fan-favourite Raj! Gloriously illustrated in full colour throughout by artistic genius Tony Ross, The World\'s Worst Children 2 is a side-splitting companion to David\'s blockbuster hit, The World\'s Worst Children, and the perfect gift for kids aged 9 and up.', 2017, 10, '9780008259679', 1, 1, 'img/book02.jpg', 1),
(3, 'Mr. Stink', 1, 'It all starts when Chloe makes friends with Mr Stink, the local tramp. Yes, he smells a bit. But when it looks like he might be driven out of town, Chloe decides to hide him in the garden shed.\r\n\r\nNow Chloe\'s got to make sure no one finds out her secret. And speaking of secrets, there just might be more to Mr Stink than meets the eye... or the nose.', 2010, 10, '9780007279067', 1, 1, 'img/book03.jpg', 2),
(4, 'De Avonturen van Nero en Co: Beo De Verschrikkelijke', 2, 'Nero loopt rond met een gebroken arm. Hij is echter niet echt gekwetst. De avond ervoor was hij zo dronken dat hij zich niets meer kon herinneren van de avond voorheen. Madam Nero legde een stuk verband om zijn arm zodat hij een aantal weken niet meer op cafe zal gaan. Via zijn ongevallenverzekering krijgt Nero echter 250 fr., wat hem op het idee brengt een nog groter ongeluk te krijgen zodat hij meer geld kan opstrijken.', 1955, 2, '1234567890123', 1, 2, 'img/bd01.jpg', 2),
(5, 'Suske en Wiske: De Schat van Beersel', 3, 'Een groene vleermuis zaait paniek tijdens een toneelvoorstelling in het kasteel van Beersel. Isidoor, de gids van Beersel, beweert da de vleermuis een spook is en verliest na zijn verhaal een perkament. Als Wiske het wil nemen duikt plots de vleermuis op die het perkament ook te pakken wil krijgen. De vleermuis is geen spook maar een schattengraver die pottenkijkers op afstand moet houden voor Isidoor en zijn broer. Krijgen onze vrienden de schat van Beersel te pakken voor die twee schurken hem vinden?', 1952, 3, '1234567890123', 1, 2, 'img/bd02.jpg', 1),
(6, 'De Avonturen van Bessy: De Angst van Bessy', 4, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. ', 1955, 3, '1234567890123', 1, 2, 'img/bd03.jpg', 1),
(7, 'Ex_Machina', 5, 'In the mountain retreat of a gifted internet billionaire, a young man takes part in a strange experiment: testing an artificial intelligence, housed in the body of a beautiful robot girl. But the experiment twists into a dark psychological battle, where loyalties are torn between man and machine.', 2014, 4, '1234567890123', 3, 3, 'img/dvd01.jpg', 2),
(8, 'Volver', 6, 'After her death, a mother returns to her home town in order to fix the situations she couldn\'t resolve during her life.', 2006, 5, '1234567890123', 3, 4, 'img/dvd02.jpg', 2),
(9, 'Koyaanisqatsi', 7, 'This experimental film looks at the world and more specifically the effect man has had on the landscape and the environment. Without narration, the film shows the world in a pristine condition and untouched: blue skies, beautiful landscapes and endless vistas. The man-made world is much less appealing. Essentially a montage using a variety of film techniques to provide a visually stunning montage of images.', 1982, 6, '1234567890123', 3, 5, 'img/dvd03.jpg', 1),
(10, 'Michael Nyman Live', 8, 'Live is a 1994 album by Michael Nyman and the Michael Nyman Band. It is Nyman\'s 24th release and the fifteenth with the Band. It is the first commercial live album by the band, which had previously performed live on the magazine release, \'The Masterwork\' Award Winning Fish-Knife. It is also known as \"The Upside-Down Violin\", the only new composition on the album, and the working title, Breaking the Rules, made it into many computer sales systems. The album\'s cover and booklet were designed by Dave McKean. Liner notes are by David Toop. Early printings of the album cover listed the first three tracks erroneously as \"Queen of the Night\", \"An Eye for Optical Theory\", and \"Chasing Sheep Is Best Left to Shepherds\"', 1994, 7, '1234567890123', 2, 6, 'img/cd01.jpg', 1),
(11, 'Olla Vogala Live', 9, 'Live recording CD Sint Baafsabdij Ghent (June 2012)', 2013, 8, '1234567890123', 2, 6, 'img/cd02.jpg', 1),
(12, 'The Belly of an Architect', 10, 'Belly Of An Architect Is A 1987 British-italian Film Directed By Peter Greenaway. Its Soundtrack Is A Result Of The Collaboration Between Wim Mertens And Glenn Branca. Greenaway Is Known For His Cynical Comedies With A Minimal Plot, Augmented By Lush And Surreal Photography. The Mertens Soundtrack Fits The Story And Visuals Like A Glove With Its Minimal, Neo Classical Repetitive Themes.', 1986, 7, '1234567890123', 2, 7, 'img/cd03.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `media_type`
--

CREATE TABLE `media_type` (
  `id_media_type` int(11) NOT NULL,
  `media_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `media_type`:
--

--
-- Dumping data for table `media_type`
--

INSERT INTO `media_type` (`id_media_type`, `media_name`) VALUES
(1, 'book'),
(2, 'CD'),
(3, 'DVD');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id_publisher` int(11) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `publisher`:
--   `size`
--       `publisher_size` -> `id_publisher_size`
--

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id_publisher`, `publisher_name`, `address`, `size`) VALUES
(2, 'Het Volk', 'Street, City, Country', 3),
(3, 'Standaard Uitgevery', 'Street, City, Country', 3),
(4, 'Universal', 'Street, City, Country', 1),
(5, 'Pathe', 'Street, City, Country', 2),
(6, 'MGM', 'Street, City, Country', 1),
(7, 'Virgin Records', 'Street, City, Country', 1),
(8, 'MAP Records', 'Street, City, Country', 3),
(9, 'Normal', 'Street, City, Country', 2),
(10, 'Harper Collins', 'Street, City, Country', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher_size`
--

CREATE TABLE `publisher_size` (
  `id_publisher_size` int(11) NOT NULL,
  `pub_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `publisher_size`:
--

--
-- Dumping data for table `publisher_size`
--

INSERT INTO `publisher_size` (`id_publisher_size`, `pub_name`) VALUES
(1, 'big'),
(2, 'medium'),
(3, 'small');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(1, 'Sabine Hartmann', 'sabine@hartmann.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(2, 'Lotte Elise', 'lotte@home.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(3, 'Mark', 'mark@home.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(4, 'Jane Austen', 'jane@austen.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id_author`);

--
-- Indexes for table `available`
--
ALTER TABLE `available`
  ADD PRIMARY KEY (`id_avail`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id_media`);

--
-- Indexes for table `media_type`
--
ALTER TABLE `media_type`
  ADD PRIMARY KEY (`id_media_type`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id_publisher`);

--
-- Indexes for table `publisher_size`
--
ALTER TABLE `publisher_size`
  ADD PRIMARY KEY (`id_publisher_size`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `available`
--
ALTER TABLE `available`
  MODIFY `id_avail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `media_type`
--
ALTER TABLE `media_type`
  MODIFY `id_media_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id_publisher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `publisher_size`
--
ALTER TABLE `publisher_size`
  MODIFY `id_publisher_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
