-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2024 at 03:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corememories`
--

-- --------------------------------------------------------

--
-- Table structure for table `islandcontents`
--

CREATE TABLE `islandcontents` (
  `islandContentID` int(4) NOT NULL,
  `islandOfPersonalityID` int(4) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `content` varchar(300) NOT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandcontents`
--

INSERT INTO `islandcontents` (`islandContentID`, `islandOfPersonalityID`, `image`, `content`, `color`) VALUES
(1, 1, 'Fam1.png', '\r\nA childhood memory from around age 3-4, visiting Fantasy World in Lemery with my three older brothers every Christmas. We’d take pictures, enjoy the festive atmosphere, and savor espasol, a sweet rice cake treat. A tradition filled with joy, family, and the spirit of the holiday season.', NULL),
(2, 2, 'Fam2.png', 'A family photo to celebrate our grandparents\' 75th anniversary. With my parents, brothers, and grandparents, this picture shows our love and togetherness. A special moment we’ll always remember.', NULL),
(3, 3, 'Fam3.jpg', 'Our family trip to Baguio was amazing. This photo shows a happy moment with my parents and brothers, enjoying the cool weather and beautiful views. Baguio\'s fresh air and green surroundings made the trip special. It’s a memory we’ll always treasure of having fun and spending time together.', NULL),
(4, 4, 'Game1.jpg', 'Valorant is a game I enjoy playing. It’s a team shooting game with unique abilities and exciting matches. Every round is a challenge, making it so fun. I also joined Sintafest with my classmates, and we worked hard together, earning 3rd place overall. It was an amazing experience!', NULL),
(5, 5, 'Game2.jpg', 'Left 4 Dead 2 brings back great memories of playing with my friends. We’d laugh out loud, getting scolded for being noisy late at night. One friend was the expert, another was the chill one, and the third was the always-dead-one. We had so much fun surviving together through the chaos!', NULL),
(6, 6, 'Game3,png', 'Omori is one of my top games, and it truly changed me. It took me on a roller coaster of emotions, from joy to sadness. After finishing all the endings, it became a mixed core memory, leaving a lasting impact on me. The story, characters, and themes will stay with me forever.', NULL),
(7, 7, 'Game4.jpg', 'Omori is one of my top games, and it truly changed me. It took me on a roller coaster of emotions, from joy to sadness. After finishing all the endings, it became a mixed core memory, leaving a lasting impact on me. The story, characters, and themes will stay with me forever.', NULL),
(8, 8, 'Music1.jpg', 'Classical music is something I deeply enjoy. Its beautiful melodies and intricate compositions have a way of calming my mind and sparking emotions. Whether it\'s a powerful symphony or a soft piano piece, classical music always brings a sense of peace and inspiration to my day.', NULL),
(9, 9, 'Music2.jpg', 'I mostly listen to instrumental classical music, especially when studying or relaxing. The calming melodies help me focus and create a peaceful atmosphere. It’s the perfect background for both productivity and chilling, allowing me to unwind or dive deep into work with a clear mind.', NULL),
(10, 10, 'Music3.jpg', 'Music is a part of my daily life. From pop to classical, it’s always there to set the tone. Whether I\'m studying, relaxing, or just enjoying the moment, music helps me stay focused, unwind, and adds a little brightness to my day with every rhythm and melody.', NULL),
(11, 11, 'Food1.jpg', 'Chami is a budget-friendly food I enjoy that fills me up every time. It’s simple yet satisfying, making it perfect for days when I want something tasty without spending much. Every bite leaves me feeling content and full, making it a go-to meal in my routine.', NULL),
(12, 12, 'Food2.jpg', 'Waffles and fries from Weekend Vibes are the perfect combination of sweet and salty. The waffles are a sweet delight, while the fries bring a satisfying hint of saltiness. It’s a delicious treat I love, offering the perfect balance of flavors for a satisfying snack on the weekend.', NULL),
(13, 13, 'Food3.jpg', 'Shanghai and Chaofan from Chowking are my go-to meals when I’m hungry but trying to save money. Chaofan is filling and affordable, while Shanghai adds a tasty bite. I always drink lots of water alongside it to stay refreshed and satisfied, making it a great budget-friendly meal.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `islandsofpersonality`
--

CREATE TABLE `islandsofpersonality` (
  `islandOfPersonalityID` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `shortDescription` varchar(300) DEFAULT NULL,
  `longDescription` varchar(900) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandsofpersonality`
--

INSERT INTO `islandsofpersonality` (`islandOfPersonalityID`, `name`, `shortDescription`, `longDescription`, `color`, `image`, `status`) VALUES
(1, 'Island of Family', 'The Island of Family is a place of warmth, love, and support. Built on loyalty and care, it’s where everyone feels valued and at home. With trust, laughter, and unconditional love, our bonds grow stronger every day, creating a deep sense of togetherness and belonging.', NULL, NULL, '1.jpg', NULL),
(2, 'Island of Games', '\nThe Island of Gaming is a vibrant world of endless adventure, where strategy, skill, and creativity come together. Explore vast virtual landscapes, battle fierce opponents, or team up with friends. It’s all about fun, competition, and finding your own game to shine in!', NULL, NULL, '2.png', NULL),
(3, 'Island of Melody', 'The Island of Melody reflects my personal taste, bringing favorite genres and sounds to life. It’s a world where soothing melodies, energetic rhythms, and powerful beats create a unique experience. Here, my musical style shines, making it a place to connect with what moves me most.\n\n\n\n', NULL, NULL, '3.png', NULL),
(4, 'Island of Delicacies ', 'The Island of Delicacies is where my favorite dishes come to life, filling me with joy and comfort. From go-to comfort foods to flavors that spark memories, this island celebrates the tastes that make me happiest. Whether savory meals, sweet treats, or new flavors, it’s my personal haven of flavor.', NULL, NULL, '4.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `islandcontents`
--
ALTER TABLE `islandcontents`
  ADD PRIMARY KEY (`islandContentID`);

--
-- Indexes for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  ADD PRIMARY KEY (`islandOfPersonalityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `islandcontents`
--
ALTER TABLE `islandcontents`
  MODIFY `islandContentID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  MODIFY `islandOfPersonalityID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
