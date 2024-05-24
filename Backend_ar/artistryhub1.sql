-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 10:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artistryhub1`
--

-- --------------------------------------------------------

--
-- Table structure for table `artworks`
--

CREATE TABLE `artworks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `artist` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sold` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artworks`
--

INSERT INTO `artworks` (`id`, `title`, `price`, `description`, `category`, `artist`, `image`, `sold`, `createdAt`, `updatedAt`) VALUES
(1, 'Srijana', 50000, 'hiii', 1, 1, '1708775494336srijana.jpg', 'not', '2024-02-24 11:51:34', '2024-02-24 11:51:34'),
(2, 'srijana', 40000, 'Mona- lisa', 1, 1, '1708775536648srijana.jpg', 'not', '2024-02-24 11:52:17', '2024-02-24 11:52:17'),
(3, 'King', 5000, 'hiiiiii', 1, 1, '1708776681441king.png', 'not', '2024-02-24 12:11:21', '2024-02-24 12:11:21'),
(4, 'Horse image', 100000, 'nice painting', 1, 4, '1708785988736horse-image.jpg', 'not', '2024-02-24 14:46:28', '2024-02-24 14:46:28'),
(18, 'Freedom', 200000, '\"Unbounded Horizons\" is not merely a painting; it is a testament to the human spirit\'s innate longing for freedom. It invites the viewer to immerse themselves in its boundless expanse, to find solace in the freedom of expression, and to revel in the infin', 2, 8, '1708847593608freedom.png', 'not', '2024-02-25 07:53:13', '2024-02-25 08:24:41'),
(20, 'ad', 20000, 'djfd', 3, 1, '1708883977857ad.jpg', 'not', '2024-02-25 17:59:37', '2024-02-25 17:59:37'),
(21, 'Flight of Colors', 45000, '\"Flight of Colors\" captures the exhilarating beauty of birds in flight, inviting viewers to experience the joy and wonder of nature\'s most graceful creatures through the language of abstract art.\r\n\r\n\r\n\r\n\r\n\r\n\"Flight of Colors\" captures the exhilarating bea', 3, 1, '1708921577518flight-of-colors.png', 'not', '2024-02-26 04:26:17', '2024-02-26 04:26:17'),
(22, 'Fluttering Dreams', 50000, '\"Fluttering Dreams\" is a celebration of the ephemeral beauty of butterflies, inviting viewers to lose themselves in a world of enchantment and possibility.', 3, 1, '1708921709787fluttering-dreams.png', 'not', '2024-02-26 04:28:29', '2024-02-26 04:31:51'),
(23, 'Whispers of Innocence', 6000, '\"Whispers of Innocence\" is a celebration of the beauty and purity of childhood, inviting viewers to reconnect with their inner sense of wonder and curiosity. It is a reminder of the importance of cherishing the fleeting moments of innocence and embracing ', 3, 1, '1708921854348whispers-of-innocence.png', 'not', '2024-02-26 04:30:54', '2024-02-26 04:30:54'),
(24, 'A Symphony of Nature', 45000, '\"Eternal Reverie: A Symphony of Nature\" is a testament to the timeless beauty and boundless wonder of the natural world.', 5, 10, '1708922650962a-symphony-of-nature.png', 'not', '2024-02-26 04:44:10', '2024-02-26 04:44:10'),
(25, 'Rhythms of the River', 45000, '\"Rhythms of the River: A Serene Journey\" captures the essence of the river\'s timeless allure, inviting viewers to embark on a peaceful journey of reflection and discovery along its meandering course.', 5, 10, '1708922793889rhythms-of-the-river.png', 'not', '2024-02-26 04:46:33', '2024-02-26 04:46:33'),
(26, 'Ethereal Heights', 6000, '\"Ethereal Heights: Embracing the Hills\" captures the timeless allure of the natural world, inviting viewers to lose themselves in the quiet majesty of the landscape. ', 5, 10, '1708922889208ethereal-heights.png', 'not', '2024-02-26 04:48:09', '2024-02-26 04:48:09'),
(27, 'The Battle of San Romano', 4500, 'The Battle of San Romano, fought in 1432, was a significant conflict during the Italian Wars, a series of conflicts that ravaged the Italian peninsula during the late medieval and early Renaissance periods. ', 6, 11, '1708923232662the-battle-of-san-romano.jpg', 'not', '2024-02-26 04:53:52', '2024-02-26 04:53:52'),
(28, 'The Meeting of Leo the Great and Attila by Raphael and his workshop', 5000, '\"The Meeting of Leo the Great and Attila\" is a remarkable painting attributed to the workshop of Raphael, the renowned Italian Renaissance artist. ', 6, 11, '1708923349458the-meeting-of-leo-the-great-and-attila-by-raphael-and-his-workshop.png', 'not', '2024-02-26 04:55:49', '2024-02-26 04:55:49'),
(29, ' Jacques-Louis David\'s Oath of the Horatii', 6000, '\"The Oath of the Horatii\" remains one of Jacques-Louis David\'s most celebrated works and a masterpiece of neoclassical art. Its timeless themes of duty, honor, and sacrifice continue to resonate with audiences around the world, reminding us of the endurin', 6, 11, '1708923561439-jacques-louis-david\'s-oath-of-the-horatii.jpg', 'not', '2024-02-26 04:59:21', '2024-02-26 04:59:21'),
(30, 'The Certainty Of Mortality', 500, 'Made famous by Dutch and Flemish artists of the sixteenth and seventeenth centuries, vanitas still-life paintings express the transience of life and the futility of materialism.', 8, 12, '1708924242510the-certainty-of-mortality.png', 'not', '2024-02-26 05:10:42', '2024-02-26 05:10:42'),
(31, 'Varying Symbolism', 6000, 'Fruit bowl with flowers by Jan Davidsz. de Heem, first half of 17th century, in the National Museum in Poznan, Poland', 8, 12, '1708924346727varying-symbolism.png', 'not', '2024-02-26 05:12:26', '2024-02-26 05:12:26'),
(32, 'Detail of Still Life', 5000, 'Detail of Still Life with Silver by Alexandre François Desportes, c. 1715-23\r\n', 8, 12, '1708924445799detail-of-still-life.png', 'not', '2024-02-26 05:14:05', '2024-02-26 05:14:05'),
(33, 'Still life', 6000, ' Location: Thyssen-Bornemisza Museum Madrid Spain. An influential art movement by Raoul Dufy , 1909  was characterized by its bold use of color, simplified forms, and expressive brushwork.', 10, 13, '1708925190095still-life.png', 'not', '2024-02-26 05:26:30', '2024-02-26 05:26:30'),
(34, 'A Forest Floor', 60000, '\"Forest Reverie: Still Life on the Forest Floor\" is a testament to the beauty and biodiversity of the natural world, inviting viewers to pause and contemplate the intricate interplay of life and decay that sustains the forest ecosystem. ', 8, 13, '1708925355324a-forest-floor.jpg', 'not', '2024-02-26 05:29:15', '2024-02-26 05:29:15'),
(35, 'Landscape of the Four  Seasons', 70000, 'A landscape painting depicting the four seasons showcases the ever-changing beauty of nature, from the vibrant blooms of spring to the lush greenery of summer, the fiery hues of autumn, and the serene tranquility of winter.\r\n\r\n\r\n\r\n\r\n\r\nA landscape painting', 5, 1, '1708982916958landscape-of-the-four-seasons.jpg', 'not', '2024-02-26 21:28:37', '2024-02-26 21:28:37'),
(36, 'Leaf', 5000, 'Chen Hongshou\'s \"Leaf Album\" painting, rendered in an abstract style, embodies a kaleidoscope of colors and shapes, evoking a sense of organic movement and fluidity reminiscent of autumn leaves dancing in the wind.', 3, 14, '1708983163073leaf.jpg', 'not', '2024-02-26 21:32:43', '2024-02-26 21:32:43'),
(37, 'Horse', 70000, 'Layers of paint are applied with a sense of spontaneity and rhythm, creating a visual symphony that captures the spirit and vitality of the animal. ', 3, 14, '1708983274170horse.jpg', 'not', '2024-02-26 21:34:34', '2024-02-26 21:34:34'),
(38, 'Bird', 70000, 'Using only black ink on rice paper, the strokes are fluid and expressive, creating a sense of movement and life within the composition. ', 11, 8, '1708984400368bird.png', 'not', '2024-02-26 21:53:20', '2024-02-26 21:53:20'),
(39, 'Color', 70600, 'Bold strokes of ink blend seamlessly with washes of rich hues, creating a dynamic interplay of light and shadow.', 11, 8, '1708984484133color.png', 'not', '2024-02-26 21:54:44', '2024-02-26 21:54:44'),
(40, 'Nature', 50000, ' Swirling patterns and fluid lines suggest the movement of wind through trees, while bold splashes of green, blue, and earth tones evoke the lushness of a forest canopy. ', 3, 8, '1708984591330nature.png', 'not', '2024-02-26 21:56:31', '2024-02-26 21:56:31'),
(41, 'Parrot', 70000, ' Perched upon a wooden branch or within a lush tropical setting, the parrot\'s feathers shimmer with an array of bold hues, from emerald green and sapphire blue to fiery red and golden yellow. ', 8, 8, '1708984671255parrot.png', 'not', '2024-02-26 21:57:51', '2024-02-26 21:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(3, 'Abstract painting', '2024-02-25 17:58:54', '2024-02-25 17:58:54'),
(5, 'Landscape Painting', '2024-02-26 04:11:33', '2024-02-26 04:11:33'),
(6, 'Historical Painting', '2024-02-26 04:11:55', '2024-02-26 04:11:55'),
(7, 'Religious Painting', '2024-02-26 04:12:17', '2024-02-26 04:12:17'),
(8, 'Still Life Painting', '2024-02-26 04:13:02', '2024-02-26 04:13:02'),
(9, 'Cubism', '2024-02-26 04:13:44', '2024-02-26 04:13:44'),
(10, 'Fauvism', '2024-02-26 04:14:05', '2024-02-26 04:14:05'),
(11, 'Ink Painting', '2024-02-26 04:14:21', '2024-02-26 04:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `artwork_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `order_id`, `artwork_id`, `createdAt`, `updatedAt`) VALUES
(1, 2, 2, '2024-02-24 11:56:27', '2024-02-24 11:56:27'),
(2, 2, 1, '2024-02-24 11:56:27', '2024-02-24 11:56:27'),
(4, 4, 4, '2024-02-24 14:51:48', '2024-02-24 14:51:48'),
(6, 6, 18, '2024-02-25 08:32:25', '2024-02-25 08:32:25'),
(7, 7, 35, '2024-03-04 11:03:08', '2024-03-04 11:03:08'),
(8, 8, 33, '2024-03-04 11:15:46', '2024-03-04 11:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `address`, `phone`, `createdAt`, `updatedAt`) VALUES
(1, 2, 90000, 'Balkhu', '9804525204', '2024-02-24 11:54:56', '2024-02-24 11:54:56'),
(2, 2, 90000, 'balkhu', '9804525204', '2024-02-24 11:56:27', '2024-02-24 11:56:27'),
(4, 5, 100000, 'balkhu', '9842633330', '2024-02-24 14:51:48', '2024-02-24 14:51:48'),
(6, 9, 200000, 'ktm', '9823456712', '2024-02-25 08:32:25', '2024-02-25 08:32:25'),
(7, 16, 70000, 'Balaju', '9825974333', '2024-03-04 11:03:07', '2024-03-04 11:03:07'),
(8, 17, 6000, 'Kathmandu', '9842699483', '2024-03-04 11:15:46', '2024-03-04 11:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `artwork_id` int(11) NOT NULL,
  `review` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `artwork_id`, `review`, `createdAt`, `updatedAt`) VALUES
(1, 3, 3, 'nice painting', '2024-02-24 12:21:03', '2024-02-24 12:21:03'),
(2, 5, 4, 'thus is the nice painting', '2024-02-24 14:50:37', '2024-02-24 14:50:37'),
(3, 9, 31, 'Wow ', '2024-02-26 05:32:24', '2024-02-26 05:32:24'),
(4, 9, 23, 'Beautiful', '2024-02-26 05:32:48', '2024-02-26 05:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'srijana', 'srijanachaudhari@gmail.com', '$2b$10$5htCihjkq9qTk.JZH6TFNOOwqj2wa/jJBiM3lnUVdW9BjG8RO941e', 'artist', '2024-02-24 11:50:08', '2024-02-24 11:50:08'),
(2, 'ujjwal', 'ujj@gmail.com', '$2b$10$1hp1P19uRizRl75k4QEUD.mKY9m2WlYZFE3E6HWp4OmO59Uoc2WtO', 'customer', '2024-02-24 11:54:20', '2024-02-24 11:54:20'),
(3, 'ujjwal', 'ujjwall@gmail.com', '$2b$10$7WSLt3dhCl4t8HbYMYLtiuIfCpK4wrt5xGzbqSsPKd/CtmvV0efNW', 'customer', '2024-02-24 12:19:47', '2024-02-24 12:19:47'),
(4, 'smita rajbanshi', 'smitaraj@gmail.com', '$2b$10$wTCE4z4HAs6Wtij.bLrYXeMK0sozaUe1t265pSDhUihSRV/ZpnyXy', 'artist', '2024-02-24 14:44:50', '2024-02-24 14:44:50'),
(5, 'isha raj', 'isha@gmail.com', '$2b$10$WFTbsr92LpJlQ74sMYHMTud8.uhY9Num6CaN9nKVvPaAIBtIA1WvO', 'customer', '2024-02-24 14:49:13', '2024-02-24 14:49:13'),
(6, 'ujjwal', 'u@gmail.com', '$2b$10$xpugM7Wx9aVbbxEipcVZLu6fX1pg94ofBl6T8lMzanu9S.t5FnLNa', 'customer', '2024-02-24 18:30:03', '2024-02-24 18:30:03'),
(7, 'smita', 'smita@gmail.com', '$2b$10$Auak/LBSDb0/MxTiHa/rf.WdB...N6gZR1LJJ88dpql946hexsB..', 'customer', '2024-02-25 05:48:05', '2024-02-25 05:48:05'),
(8, 'Jharana', 'jharanachaudhari@gmail.com', '$2b$10$sLvu01h0U9gIyrTb2YubEumBWEiO7LKjwGF12NtjX/3R.CvFemNo6', 'artist', '2024-02-25 07:43:46', '2024-02-25 07:43:46'),
(9, 'ujjwal', 'dhh@gmail.com', '$2b$10$BEwWlLEnf0aSpXr00YaaoeJTWLHH7RdF/d17vzqBgZROFEBU7Hqti', 'customer', '2024-02-25 07:56:19', '2024-02-25 07:56:19'),
(10, 'Asmita', 'asm@gmail.com', '$2b$10$7v.Wn1wkYWtmY94WZ2HICeLWBLwjJXHkDTl.2y16im5U/W.c.nTbi', 'artist', '2024-02-26 04:35:01', '2024-02-26 04:35:01'),
(11, 'Jharana', 'jharu@gmail.com', '$2b$10$0DRxjMn9uBJSsjaccN6.zeZxeb61wD.UasLuAk0jUr0HBPryR17.W', 'artist', '2024-02-26 04:49:06', '2024-02-26 04:49:06'),
(12, 'Ujjwal', 'uk@gmail.com', '$2b$10$o8m/DP3FgktZsuuNT5PFGuED/vBAqp9IjPSdU/F7IUnOWxTV9Qbji', 'artist', '2024-02-26 05:00:10', '2024-02-26 05:00:10'),
(13, 'Bishwa', 'Bishwa@gmail.com', '$2b$10$ZfFr5lVZcskgUsE04678s.IjxC5TkKT.cpX.EOx7juh88uY59GVKa', 'artist', '2024-02-26 05:15:43', '2024-02-26 05:15:43'),
(14, 'RajKumar', 'rajkumar@gmail.com', '$2b$10$4bnngz4lxE.LHd1.XviHzOCwz9FMDeHiUl0nLA89QQjimKepD3lZq', 'artist', '2024-02-26 21:30:00', '2024-02-26 21:30:00'),
(15, 'Srijana', 'Srijana@gmail.com', '$2b$10$q.XXlCOmEhjI8P0zfyEbne1Zf6oEZAf8wcjAo9dkItWZ4RxoTXvXS', 'artist', '2024-03-03 14:17:06', '2024-03-03 14:17:06'),
(16, 'Susmita', 'smitarajbanshi71@gmail.com', '$2b$10$fuOT7CVB0TXF1ibrEwV2QOdxMl0ceJ3iYh2ai9bZOHBFz0rlFzddi', 'customer', '2024-03-04 11:00:44', '2024-03-04 11:00:44'),
(17, 'Isha', 'isha12@gmail.com', '$2b$10$CS8GZzsL1n0vaKtwPFbRUesu111D6uwXP6zY1XnTvvowjTD2l0HN6', 'customer', '2024-03-04 11:14:20', '2024-03-04 11:14:20'),
(18, 'Ram Shrestha', 'asm123@gmail.com', '$2b$10$7MktKYnKg5uftdKykljIReqY8EQGIq83Z8/B0.Sv9n6BBjkwnyHpa', 'customer', '2024-03-05 07:27:27', '2024-03-05 07:27:27'),
(19, 'rangabir', 'y@gmail.com', '$2b$10$6NTKXZ.2ZSphXUvl7BDEme5.bTATtiFVx1Pvl3SiXympDwQZfbSNC', 'me', '2024-03-05 17:22:52', '2024-03-05 17:22:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artworks`
--
ALTER TABLE `artworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artworks`
--
ALTER TABLE `artworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
