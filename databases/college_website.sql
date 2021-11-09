-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 06:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`) VALUES
(1, 'Tara Evergreen', 'admin@mail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `college_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `overall_rating` varchar(6) NOT NULL DEFAULT '0',
  `college_description` varchar(5000) NOT NULL,
  `url` varchar(2083) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`college_id`, `name`, `overall_rating`, `college_description`, `url`) VALUES
(56, 'INTI International College Penang', '5.0', 'Located in the Bukit Jambul neighborhood of Penang, INTI International College Penang offers world-class programmes delivered by passionate teaching staff. At INTI International College Penang, students can discover the true balance between academics and the arts.', 'https://newinti.edu.my/campuses/inti-international-college-penang/'),
(57, 'INTI International College Subang', '0', 'INTI\'s Subang campus provides students with a truly internationally valued skillset. INTI International College Subang is complete with cutting-edge facilities that enhance the higher education experiences of their students', 'https://newinti.edu.my/campuses/inti-international-college-subang/'),
(58, 'INTI College Sabah', '0', 'INTI College Sabah nurtures academic excellence and provides the relevant experience with the aim to enhance the employability of their students. The campus offers a well rounded student experience with facilities such as a library and hostels with gym facilities.', 'https://newinti.edu.my/campuses/inti-college-sabah/'),
(60, 'UOW Malaysia KDU Penang University College', '0', 'UOW Malaysia KDU Penang first opened its doors to students in 1991. Since then, the college has grown to be the most popular private tertiary education provider in the northern region of Malaysia. ', 'https://www.uowmkdu.edu.my/campuses/about-the-campus/kdu-penang-university-college-georgetown-campus/'),
(61, 'UOW Malaysia KDU Penang University College Batu Kawan', '0', 'UOW Malaysia KDU Penang\'s Batu Kawan campus brings an Australian higher education experience to mainland Penang. It is conceptualized as a green campus in a park environment, with the design being inspired by the Internet of Things. The campus spans 10 acres and houses facilities that support programs from 3 faculties.', 'https://www.uowmkdu.edu.my/campuses/about-the-campus/kdu-penang-university-college-batu-kawan/'),
(62, 'UOW Malaysia KDU University College Glenmarie Campus', '0', 'The Glenmarie Campus of the UOW Malaysia KDU group boasts state-of-the-art facilities and a contemporary teaching and learning environment for students. Students are able to enjoy an international style campus experience, locally. There are various learning spaces, a library and also culinary and hospitality facilities.', 'https://www.uowmkdu.edu.my/campuses/about-the-campus/uow-malaysia-kdu-college'),
(63, 'DISTED College', '5.0', 'DISTED is a private college in George Town, Penang. It was first established in the year 1987 as the first private tertiary education institution in Penang. The current campus is located on Macalister Road, which is in close vicinity to downtown George Town, a UNESCO World Heritage Site', 'https://www.disted.edu.my/'),
(64, 'SENTRAL College Penang', '3.0', 'First established in January 2002, SENTRAL College Penang is committed to the pursuit of educational excellence in the context of respect, caring and justice. It is currently located at an intersection between Penang Street and Bishop Street', 'https://www.sentral.edu.my/'),
(65, 'Taylor\'s College', '0', 'Taylor\'s College was established in 1969 by George Archibald Taylor and his son, George Leighton Taylor. The current campus is located in Subang Jaya, Selangor. Along Taylor\'s Road.', 'https://college.taylors.edu.my/en.html');

-- --------------------------------------------------------

--
-- Table structure for table `collegesandsubjects`
--

CREATE TABLE `collegesandsubjects` (
  `college_id` int(100) NOT NULL,
  `subject_id` int(100) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collegesandsubjects`
--

INSERT INTO `collegesandsubjects` (`college_id`, `subject_id`, `price`, `duration`) VALUES
(56, 1, 36440, '2'),
(56, 2, 34900, '2.5'),
(56, 3, 34340, '2.5'),
(56, 4, 32498, '2'),
(56, 5, 32199, '2'),
(56, 6, 34332, '2'),
(56, 7, 32199, '2'),
(56, 8, 42745, '2'),
(56, 9, 34482, '2'),
(57, 1, 41100, '2'),
(57, 2, 35990, '2.5'),
(57, 4, 35787, '2'),
(57, 6, 39498, '2'),
(57, 7, 35787, '2'),
(57, 8, 43480, '2'),
(57, 9, 39190, '2'),
(57, 10, 33998, '2.5'),
(58, 4, 21481, '2'),
(58, 11, 21500, '2'),
(60, 4, 33620, '2'),
(60, 6, 38090, '2.5'),
(60, 9, 37660, '2.5'),
(60, 11, 33950, '2'),
(60, 12, 35690, '2.5'),
(60, 13, 38980, '2'),
(60, 14, 46130, '2.5'),
(60, 15, 45525, '3'),
(61, 4, 33620, '2'),
(61, 6, 38090, '2.5'),
(61, 16, 48180, '2.6'),
(61, 17, 47180, '2.5'),
(62, 2, 45670, '2'),
(62, 3, 45670, '2'),
(62, 8, 52005, '2'),
(62, 13, 49005, '2'),
(62, 18, 40710, '2'),
(62, 19, 40710, '2'),
(62, 20, 44270, '2'),
(62, 21, 43490, '2'),
(62, 22, 25640, '2'),
(63, 1, 26120, '2'),
(63, 3, 26120, '2'),
(63, 4, 26120, '2'),
(63, 11, 26120, '2'),
(63, 23, 26120, '2'),
(63, 24, 26120, '2'),
(63, 25, 26120, '2'),
(64, 4, 22410, '2.5'),
(64, 11, 21890, '2.5'),
(64, 22, 21890, '2.5'),
(64, 27, 21890, '2.5'),
(65, 4, 48980, '2'),
(65, 6, 48980, '2'),
(65, 11, 48980, '2'),
(65, 28, 48980, '2');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `college_id` int(10) NOT NULL,
  `subject_id` int(11) NOT NULL DEFAULT 1,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `college_id`, `subject_id`, `page_id`, `name`, `content`, `rating`, `submit_date`) VALUES
(42, 56, 2, 1, 'kyler', 'epic school', 5, '2021-10-28 20:29:00'),
(43, 63, 4, 1, 'Sara', 'Disted has a awesome bakery store. ????????', 5, '2021-10-28 20:46:03'),
(44, 63, 4, 1, 'Sara', 'Disted has a awesome bakery store. ????????', 5, '2021-10-28 20:46:04'),
(45, 56, 3, 1, 'H\'ng Yan Shan', 'The lecture are very kind easy to approach them, they gave lots of notes and easy to understand. i like the convenience store, best.', 5, '2021-10-28 20:58:27'),
(46, 56, 1, 1, 'Padmessh', 'The lecture is helpful and provides resources for students. Vending machines are my favourite on campus', 5, '2021-10-28 21:32:49'),
(47, 56, 1, 1, 'Jason Lee', 'The best bang for ur buck.', 5, '2021-10-29 10:01:11'),
(48, 64, 27, 1, 'Sasha', 'The area does not have much parking Slots so do be awared on traffic issues when coming early.', 3, '2021-10-29 11:34:36'),
(49, 56, 2, 1, 'John Doe ', 'Best lectures ever!', 5, '2021-10-29 11:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `name`) VALUES
(1, 'Diploma in Computer Science'),
(2, 'Diploma in Mechanical Engineering'),
(3, 'Diploma in Electrical Engineering'),
(4, 'Diploma in Business'),
(5, 'Diploma In Finance'),
(6, 'Diploma in Information Technology'),
(7, 'Diploma in Marketing'),
(8, 'Diploma in Culinary Arts'),
(9, 'Diploma in Mass Communication'),
(10, 'Diploma in Quantity Surveying'),
(11, 'Diploma in Accounting'),
(12, 'Diploma in Mechatronics Engineering'),
(13, 'Diploma in International Hotel Management'),
(14, 'Diploma in Professional Chef Training'),
(15, 'Diploma in Nursing'),
(16, 'Diploma in Interior Design'),
(17, 'Diploma in Digital Animation\r\n'),
(18, 'Diploma in Business Administration'),
(19, 'Diploma in Accountancy'),
(20, 'Diploma in Communication and Media\r\n'),
(21, 'Diploma in Computer Studies'),
(22, 'Diploma in Early Childhood Education'),
(23, 'Diploma in Business Information Technology'),
(24, 'Diploma in Creative Multimedia Production'),
(25, 'Diploma in Hotel Management'),
(26, 'Diploma in Computer Systems Technology'),
(27, 'Diploma in Tourism Management'),
(28, 'Diploma in Communication');

-- --------------------------------------------------------

--
-- Table structure for table `subject_enum`
--

CREATE TABLE `subject_enum` (
  `subject` enum('Diploma in Computer Science','Diploma in Mechanical Engineering','Diploma in Electrical Engineering','Diploma in Business','Diploma In Finance') NOT NULL DEFAULT 'Diploma in Computer Science'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_enum`
--

INSERT INTO `subject_enum` (`subject`) VALUES
('Diploma in Computer Science'),
('Diploma in Mechanical Engineering'),
('Diploma in Electrical Engineering'),
('Diploma in Business'),
('Diploma In Finance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `collegesandsubjects`
--
ALTER TABLE `collegesandsubjects`
  ADD PRIMARY KEY (`college_id`,`subject_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `reviews_ibfk_1` (`college_id`),
  ADD KEY `reviews_ibfk_2` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `college_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collegesandsubjects`
--
ALTER TABLE `collegesandsubjects`
  ADD CONSTRAINT `collegesandsubjects_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `collegesandsubjects_ibfk_2` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
