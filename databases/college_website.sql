-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2021 at 01:27 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

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
(1, 'INTI International College', '3.0', 'MAYBE INTI MAYBE WQORKS', ''),
(2, 'KDU College', '4.0', 'UOW Malaysia KDU is a part of the University of Wollongong Australia\'s global network and is one of the top universities in the world.\r\n', ''),
(3, 'DISTED College', '3.0', 'DISTED College, one of the best private colleges in Penang Malaysia, offering higher education courses and programmes including pre-university and diploma', ''),
(4, 'Sentral College', '', 'SENTRAL College Penang serves to provide excellent and honest tertiary education to students through our various programmes.', ''),
(5, 'SEGi College', '4.0', 'SEGi University and Colleges first opened its doors as Systematic College in 1977 in the heart of Kuala Lumpur’s commercial district, offering globally recognised professional qualifications. Since then, SEGi has experienced significant growth by adapting and catering to an increasing demand for tertiary education and professional qualifications in Malaysia. Known as one of the largest private higher education providers in Malaysia, SEGi now serves 25,000 students in five major campuses located in Kota Damansara, Kuala Lumpur, Subang Jaya, Penang and Sarawak. Today, the significance of climbing the career ladder in the industry is highly competitive, therefore SEGi now offers a new breakthrough method known as PACE or Professional and Continuing Education. SEGi PACE enables working adults to upgrade their qualification level whilst accommodating their work schedule, hence fulfilling work-life balance.\r\n\r\n', ''),
(6, 'MSU College', '', 'Through its ten branches across the country, MSU College emphasis in two main areas which are School of Science & Technology (SST) and School of Hospitality', ''),
(11, 'KDU KPU', '4', 'HIHFDGIFDIOG', ''),
(37, 'Hopefully Last Test', '0', 'Horororororororororsho', '');

-- --------------------------------------------------------

--
-- Table structure for table `collegesandsubjects`
--

CREATE TABLE `collegesandsubjects` (
  `college_id` int(100) NOT NULL,
  `subject_id` int(100) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collegesandsubjects`
--

INSERT INTO `collegesandsubjects` (`college_id`, `subject_id`, `price`) VALUES
(1, 1, 38000),
(1, 2, 43000),
(1, 3, 28800),
(5, 1, 36000),
(5, 2, 41000),
(5, 3, 30800),
(37, 1, 1500),
(37, 3, 1100),
(37, 4, 2500);

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
(24, 1, 1, 1, 'Daniel', 'This college is great!', 5, '2021-10-17 15:06:33'),
(25, 1, 1, 1, 'Not Daniel', 'This college is not great.', 1, '2021-10-17 15:06:37'),
(26, 2, 1, 1, 'Student', '345-34jffd dfg', 4, '2021-10-17 15:06:39'),
(27, 1, 1, 1, 'tset', 'fgvbhnmryh', 3, '2021-10-17 15:06:41'),
(28, 3, 1, 1, 'Student', 'sdf', 4, '2021-10-17 15:06:43'),
(31, 3, 1, 1, 'kek', 'This college is not great.', 3, '2021-10-17 17:31:22'),
(32, 3, 1, 1, 'Kek2', 'This code is annoying', 2, '2021-10-17 17:36:44'),
(33, 3, 1, 1, 'Akali', 'Where is ma crits', 1, '2021-10-17 17:40:56'),
(34, 3, 1, 1, 'Akali2', 'INSERT INTO college_website.reviews (college_id ,page_id, name, content, rating, submit_date) VALUES (3, 1, \"Kek2\", \"This code is annoying\", 2, CURRENT_TIME)', 3, '2021-10-17 17:55:20'),
(35, 3, 1, 1, 'kek_last', 'IS it working?', 5, '2021-10-17 18:02:37'),
(36, 5, 1, 1, 'Kek_Segi', 'Testing this stuff', 3, '2021-10-17 18:03:06'),
(37, 5, 3, 1, 'Another Tester', 'THatn is fdore sure ais intereing review\r\n\r\nI want ot go an slkeep but this song has been stuck on repeat for 5203hours already.\r\n\r\n', 4, '2021-10-19 14:12:22'),
(38, 5, 2, 1, 'Last test of the functions I hope ', 'THat was a cold fall evening when I decided to try that ominous cake that was lying in our fridge for year like dragon in wait. \r\n\r\nIts icing was black and hard like scales. Its smell was eerie and contagious, covering everything around it in a nauseating aura.', 5, '2021-10-19 14:31:10');

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
(5, 'Diploma In Finance');

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
  MODIFY `college_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
