-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2018 at 04:47 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clark_connor_videoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `mainmodel`
--

DROP TABLE IF EXISTS `mainmodel`;
CREATE TABLE IF NOT EXISTS `mainmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(10) NOT NULL,
  `movieName` varchar(20) NOT NULL,
  `year` varchar(8) NOT NULL,
  `movieDetails` text NOT NULL,
  `imgPath` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model` (`genre`),
  UNIQUE KEY `modelDesc` (`movieName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmodel`
--

INSERT INTO `mainmodel` (`id`, `genre`, `movieName`, `year`, `movieDetails`, `imgPath`) VALUES
(0, 'Comedy', 'Step Brothers', '2008', 'Brennan Huff (Will Ferrell) and Dale Doback (John C. Reilly) have one thing in common: they are both lazy, unemployed leeches who still live with their parents. When Brennan\'s mother and Dale\'s father marry and move in together, it turns the overgrown boys\' world upside down. Their insane rivalry and narcissism pull the new family apart, forcing them to work together to reunite their parents.', 'stepBrothers.jpg'),
(1, 'Drama', 'Shawshank Redemption', '1994', 'Andy Dufresne (Tim Robbins) is sentenced to two consecutive life terms in prison for the murders of his wife and her lover and is sentenced to a tough prison. However, only Andy knows he didn\'t commit the crimes. While there, he forms a friendship with Red (Morgan Freeman), experiences brutality of prison life, adapts, helps the warden, etc., all in 19 years.', 'shawshank.jpg'),
(2, 'Thriller', 'Get Out', '2017', 'Now that Chris (Daniel Kaluuya) and his girlfriend, Rose (Allison Williams), have reached the meet-the-parents milestone of dating, she invites him for a weekend getaway upstate with Missy and Dean. At first, Chris reads the family\'s overly accommodating behavior as nervous attempts to deal with their daughter\'s interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he never could have imagined.', 'getOut.jpg'),
(3, 'Fantasy', 'Black Panther', '2018', 'After the death of his father, T\'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T\'Challa\'s mettle as king -- and as Black Panther -- gets tested when he\'s drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.', 'blackPanther.jpg'),
(5, 'SciFi', 'Ex Machina', '2014', 'Caleb Smith (Domhnall Gleeson) a programmer at a huge Internet company, wins a contest that enables him to spend a week at the private estate of Nathan Bateman (Oscar Isaac), his firm\'s brilliant CEO. When he arrives, Caleb learns that he has been chosen to be the human component in a Turing test to determine the capabilities and consciousness of Ava (Alicia Vikander), a beautiful robot. However, it soon becomes evident that Ava is far more self-aware and deceptive than either man imagined.', 'exMachina.jpg'),
(9, 'Mystery', 'Holes', '2003', 'A boy and his friends question the motives of a woman (Sigourney Weaver) who forces them to dig holes at a detention camp.', 'holes.jpg'),
(10, 'Adventure', 'Toy Story', '1995', 'Woody (Tom Hanks), a good-hearted cowboy doll who belongs to a young boy named Andy (John Morris), sees his position as Andy\'s favorite toy jeopardized when his parents buy him a Buzz Lightyear (Tim Allen) action figure. Even worse, the arrogant Buzz thinks he\'s a real spaceman on a mission to return to his home planet. When Andy\'s family moves to a new house, Woody and Buzz must escape the clutches of maladjusted neighbor Sid Phillips (Erik von Detten) and reunite with their boy.', 'toyStory.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
