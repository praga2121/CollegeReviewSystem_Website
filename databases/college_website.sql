-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2021 at 02:48 PM
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
-- Table structure for table `collegeandreviews`
--

CREATE TABLE `collegeandreviews` (
  `college_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `college_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `overall` varchar(100) NOT NULL,
  `teachingperformance` varchar(100) NOT NULL,
  `facilities` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `academicreputation` varchar(100) NOT NULL,
  `college_description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`college_id`, `name`, `overall`, `teachingperformance`, `facilities`, `price`, `academicreputation`, `college_description`) VALUES
(1, 'INTI International College', '3', '8', '9', '3', '8', 'MAYBE INTI MAYBE WQORKS'),
(2, 'KDU College', '7', '7', '6', '7', '8', 'UOW Malaysia KDU is a part of the University of Wollongong Australia\'s global network and is one of the top universities in the world.\r\n'),
(3, 'DISTED College', '8', '8', '7', '8', '7', 'DISTED College, one of the best private colleges in Penang Malaysia, offering higher education courses and programmes including pre-university and diploma'),
(4, 'Sentral College', '7', '7', '7', '7', '8', 'SENTRAL College Penang serves to provide excellent and honest tertiary education to students through our various programmes.'),
(5, 'SEGi College', '9', '9', '9', '9', '10', 'SEGi University and Colleges first opened its doors as Systematic College in 1977 in the heart of Kuala Lumpur’s commercial district, offering globally recognised professional qualifications. Since then, SEGi has experienced significant growth by adapting and catering to an increasing demand for tertiary education and professional qualifications in Malaysia. Known as one of the largest private higher education providers in Malaysia, SEGi now serves 25,000 students in five major campuses located in Kota Damansara, Kuala Lumpur, Subang Jaya, Penang and Sarawak. Today, the significance of climbing the career ladder in the industry is highly competitive, therefore SEGi now offers a new breakthrough method known as PACE or Professional and Continuing Education. SEGi PACE enables working adults to upgrade their qualification level whilst accommodating their work schedule, hence fulfilling work-life balance.\r\n\r\n'),
(6, 'MSU College', '8', '9', '8', '8', '8', 'Through its ten branches across the country, MSU College emphasis in two main areas which are School of Science & Technology (SST) and School of Hospitality'),
(11, 'KDU KPU', '4', '6', '3', '3', '4', 'HIHFDGIFDIOG'),
(12, 'A New College', '8', '6', '9', '6', '6', '');

-- --------------------------------------------------------

--
-- Table structure for table `collegesandsubjects`
--

CREATE TABLE `collegesandsubjects` (
  `college_id` int(100) NOT NULL,
  `subject_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collegesandsubjects`
--

INSERT INTO `collegesandsubjects` (`college_id`, `subject_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 13),
(5, 14),
(5, 15),
(6, 16),
(6, 17),
(6, 18);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `page_id`, `name`, `content`, `rating`, `submit_date`) VALUES
(24, 1, 'Daniel', 'This college is great!', 5, '2021-10-11 11:03:49'),
(25, 1, 'Not Daniel', 'This college is not great.', 1, '2021-10-11 11:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` int(15) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `internship_duration` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `name`, `price`, `duration`, `internship_duration`) VALUES
(1, 'IT', 45000, '2 Years', '3 Months'),
(2, 'Business', 45000, '2 Years', '3 Months'),
(3, 'Engineering', 45000, '2 Years', '3 Months'),
(4, 'IT', 45000, '2 Years', '3 Months'),
(5, 'Business', 45000, '2 Years', '3 Months'),
(6, 'Engineering', 45000, '2 Years', ' 3 Months'),
(7, 'IT', 45000, '2 Years', '3 Months'),
(8, 'Business', 45000, '2 Years', '3 Months'),
(9, 'Engineering', 45000, '2 Years', '3 Months'),
(10, 'IT', 45000, '2 Years', '3 Months'),
(11, 'Business', 45000, '2 Years', '3 Months'),
(12, 'Engineering', 45000, '2 Years', '3 Months'),
(13, 'IT', 45000, '2 Years', '3 Months'),
(14, 'Business', 45000, '2 Years', '3 Months'),
(15, 'Engineering', 45000, '2 Years', '3 Months'),
(16, 'IT', 45000, '2 Years', '3 Months'),
(17, 'Business', 45000, '2 Years', '3 Months'),
(18, 'Engineering', 45000, '2 Years', '3 Months');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `collegeandreviews`
--
ALTER TABLE `collegeandreviews`
  ADD PRIMARY KEY (`college_id`,`review_id`),
  ADD KEY `review_id` (`review_id`);

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
  ADD PRIMARY KEY (`review_id`);

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
  MODIFY `college_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collegeandreviews`
--
ALTER TABLE `collegeandreviews`
  ADD CONSTRAINT `collegeandreviews_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `collegeandreviews_ibfk_2` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `collegesandsubjects`
--
ALTER TABLE `collegesandsubjects`
  ADD CONSTRAINT `collegesandsubjects_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `collegesandsubjects_ibfk_2` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`college_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
