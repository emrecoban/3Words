-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 26, 2021 at 07:59 PM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emrecob3_emrecob2_3kelime`
--

-- --------------------------------------------------------

--
-- Table structure for table `3kelime`
--

CREATE TABLE `3kelime` (
  `kelimeID` int(50) NOT NULL,
  `kimden` int(50) NOT NULL,
  `kime` int(50) NOT NULL,
  `kelime1` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `kelime2` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `kelime3` varchar(25) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `3kelime`
--

INSERT INTO `3kelime` (`kelimeID`, `kimden`, `kime`, `kelime1`, `kelime2`, `kelime3`) VALUES
(5, 10, 9, 'kadim dost', 'mangal ustası', 'rakip'),
(26, 17, 1, 'good person', 'clever', 'samsun'),
(10, 5, 1, 'yazılımcı', 'öğrenci', 'blogger'),
(11, 7, 1, 'korsancı', 'öğrenci', 'sıradan'),
(17, 1, 5, 'Yönetici', 'Deneme Tahtası', 'Şanslı'),
(14, 9, 8, 'üstad', 'bilge', 'sevecen'),
(15, 1, 11, 'böte öğrencisi', '3. sınıf', 'birisi'),
(16, 11, 1, 'yardımsever', 'bilgili', 'öğrenci'),
(21, 14, 1, 'yardımsever', 'kodcu', 'adamm'),
(24, 5, 14, 'hjhgfj', 'ghjghjg', 'jkytjy'),
(25, 5, 1, 'tebrikler', 'işe yarar', 'paraya dönüştür');

-- --------------------------------------------------------

--
-- Table structure for table `userlist`
--

CREATE TABLE `userlist` (
  `userID` int(50) NOT NULL,
  `kontrol` int(5) NOT NULL DEFAULT '0',
  `reelname` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `img` varchar(50) COLLATE utf8_turkish_ci DEFAULT 'user.png',
  `bio` varchar(300) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `userlist`
--

INSERT INTO `userlist` (`userID`, `kontrol`, `reelname`, `mail`, `pass`, `img`, `bio`) VALUES
(1, 1, 'Emre ÇOBAN', 'fbdarktole@gmail.com', '123456', '688213037.png', 'Student'),
(18, 0, '', '', '', 'user.png', NULL),
(5, 1, 'Test Kullanıcı', 'test@test.com', '123456', '446127381.png', 'Ben test bir kullanıcıyım. Her şeyi benim üzerimde denerler.'),
(7, 0, 'Bill Gates', 'bill.gates@microsoft.com', '123456', '257949588.png', 'Korsan yazılım kullandığınızdan haberim var.'),
(8, 0, 'Larry Page', 'larry@google.com', '123456', '397149109.jpeg', 'Google biz kurduk. Kurmasaydık ne yapardınız acaba?'),
(9, 0, 'Jack Dorsey', 'jack@twitter.com', '123456', '246733640.png', 'Twitterı kurduğumdan beri yüzüm gülmedi. Girmediğim mahkeme salonu kalmadı.'),
(10, 0, 'Mark Zuckerberg', 'mark@facebook.com', '123456', '324321003.jpg', 'Fesbük hesabı hackleyemem.'),
(11, 0, 'farukenes', 'farukenes10825@gmail.com', '123456789', 'user.png', NULL),
(15, 0, 'Böte', 'bote@mail.com', '123456', 'user.png', 'Test Kullanıcı'),
(14, 1, 'Ali Tufan Aktaş', 'aktastufan1@gmail.com', '123456', '127589647.jpg', 'Öğrenci'),
(17, 1, 'Captan', 'captan@mail.com', '123456', 'user.png', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `3kelime`
--
ALTER TABLE `3kelime`
  ADD PRIMARY KEY (`kelimeID`);

--
-- Indexes for table `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userID` (`userID`),
  ADD UNIQUE KEY `userID_2` (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `3kelime`
--
ALTER TABLE `3kelime`
  MODIFY `kelimeID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `userlist`
--
ALTER TABLE `userlist`
  MODIFY `userID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
