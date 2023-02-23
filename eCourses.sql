-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 06:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courses`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCourse` (IN `nameIN` VARCHAR(50), IN `priceIN` FLOAT(10), IN `descriptionIN` TEXT)   INSERT INTO `course`(`course`.`name`,`course`.`price`,`course`.`description`)  
VALUES (nameIN, priceIN, descriptionIN)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `addUser` (IN `usernameIN` VARCHAR(200), IN `nameIN` VARCHAR(200), IN `emailIN` VARCHAR(200), IN `ageIN` INT)   INSERT INTO `user`(`user`.`username`,`user`.`name`,`user`.`email`,`user`.`age`)  
VALUES (usernameIN, nameIN, emailIN, ageIN)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCourse` (IN `idIN` INT(10))   DELETE FROM `course` WHERE `course`.`id`= idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUser` (IN `idIN` INT)   DELETE FROM `user` WHERE `user`.`id`= idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `editCourse` (IN `idIN` INT(10), IN `nameIN` VARCHAR(50), IN `priceIN` FLOAT(10), IN `descriptionIN` TEXT)   UPDATE `course` SET `course`.`name` = nameIN,
`course`.`price` = priceIN, `course`.`description`= descriptionIN
WHERE `course`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `editUser` (IN `idIN` INT, IN `usernameIN` VARCHAR(255), IN `nameIN` VARCHAR(255), IN `emailIN` VARCHAR(255), IN `ageIN` INT)   UPDATE `user` SET `user`.`name` = nameIN,
`user`.`email`=emailIN,
`user`.`age` = ageIN,
`user`.`username` = usernameIN
WHERE `user`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `findCourseByName` (IN `nameIN` VARCHAR(50))   SELECT *FROM `course`
WHERE `course`.`name`= nameIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `findUserByEmail` (IN `emailIN` VARCHAR(200))   SELECT *FROM `user`
WHERE `user`.`email`= emailIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `findUserByUsername` (IN `usernameIN` VARCHAR(50))   SELECT *FROM `user`
WHERE `user`.`username`= usernameIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getCourse` ()   SELECT *FROM `course`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUser` ()   SELECT *FROM `user`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `orderByCheapest` ()   SELECT * FROM course
ORDER BY course.price$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `totalOfUsers` ()   SELECT Count(*) as NumberOFUsers FROM user$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `price`, `description`) VALUES
(4, 'PHP', 109, 'PHP Bootcamp'),
(6, 'C#', 99.99, 'C# BootCamp'),
(8, 'C++', 99.99, 'C++ BootCamp'),
(10, 'HTML/CSS', 100, 'Web Dev'),
(11, 'JavaScript', 139.99, 'JavaScript Ultimate Course'),
(12, 'Java/Kotlin/Android Studio', 299.99, 'Android BootCamp'),
(13, 'Microsoft SQL Server', 100, 'Microsoft SQL Server Bootcamp');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `email`, `age`) VALUES
(5, 'SofiaGarcia9', 'Sofia Garcia', 'sofiagarcia@gmail.com', 29),
(9, 'MarkRuffalo2019', 'Mark Ruffalo', 'markruffalo2026@gmail.com', 34),
(12, 'Jai7', 'Jai Khan', 'jaiat5@gmail.com', 41),
(13, 'Anase300', 'Anas El', 'Anase300@gmail.com', 21),
(15, 'Jack0', 'jackson', 'jackson94@gmail.com', 19),
(16, 'ZhangLiX9', 'Zhang', 'zhangli@gmail.com', 22),
(17, 'Martha8', 'Martha Smith', 'marthahello@gmail.com', 52);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
