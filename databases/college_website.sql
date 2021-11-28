-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2021 at 11:47 AM
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
(56, 'INTI International College Penang', '5.0', 'Located in the Bukit Jambul neighborhood of Penang, INTI International College Penang offers world-class programmes delivered by passionate teaching staff. At INTI International College Penang, students can discover the true balance between academics and the arts.          ', 'https://newinti.edu.my/campuses/inti-international-college-penang/'),
(57, 'INTI International College Subang', '0', 'INTI\'s Subang campus provides students with a truly internationally valued skillset. INTI International College Subang is complete with cutting-edge facilities that enhance the higher education experiences of their students', 'https://newinti.edu.my/campuses/inti-international-college-subang/'),
(58, 'INTI College Sabah', '0', 'INTI College Sabah nurtures academic excellence and provides the relevant experience with the aim to enhance the employability of their students. The campus offers a well rounded student experience with facilities such as a library and hostels with gym facilities.', 'https://newinti.edu.my/campuses/inti-college-sabah/'),
(60, 'UOW Malaysia KDU Penang University College', '0', 'UOW Malaysia KDU Penang first opened its doors to students in 1991. Since then, the college has grown to be the most popular private tertiary education provider in the northern region of Malaysia. ', 'https://www.uowmkdu.edu.my/campuses/about-the-campus/kdu-penang-university-college-georgetown-campus/'),
(61, 'UOW Malaysia KDU Penang University College Batu Kawan', '0', 'UOW Malaysia KDU Penang\'s Batu Kawan campus brings an Australian higher education experience to mainland Penang. It is conceptualized as a green campus in a park environment, with the design being inspired by the Internet of Things. The campus spans 10 acres and houses facilities that support programs from 3 faculties.', 'https://www.uowmkdu.edu.my/campuses/about-the-campus/kdu-penang-university-college-batu-kawan/'),
(62, 'UOW Malaysia KDU University College Glenmarie Campus', '0', 'The Glenmarie Campus of the UOW Malaysia KDU group boasts state-of-the-art facilities and a contemporary teaching and learning environment for students. Students are able to enjoy an international style campus experience, locally. There are various learning spaces, a library and also culinary and hospitality facilities.', 'https://www.uowmkdu.edu.my/campuses/about-the-campus/uow-malaysia-kdu-college'),
(63, 'DISTED College', '5.0', 'DISTED is a private college in George Town, Penang. It was first established in the year 1987 as the first private tertiary education institution in Penang. The current campus is located on Macalister Road, which is in close vicinity to downtown George Town, a UNESCO World Heritage Site', 'https://www.disted.edu.my/'),
(64, 'SENTRAL College Penang', '3.0', 'First established in January 2002, SENTRAL College Penang is committed to the pursuit of educational excellence in the context of respect, caring and justice. It is currently located at an intersection between Penang Street and Bishop Street', 'https://www.sentral.edu.my/'),
(65, 'Taylor\'s College', '0', 'Taylor\'s College was established in 1969 by George Archibald Taylor and his son, George Leighton Taylor. The current campus is located in Subang Jaya, Selangor. Along Taylor\'s Road.\r\n         ', 'https://college.taylors.edu.my/en.html'),
(69, 'Ramsay Sime Darby Healthcare College', '0', 'Ramsay Sime Darby Healthcare College is one of the pioneers in healthcare education in Malaysia. Ramsay Sime Darby Healthcare College has a track record of academic excellence since its establishment in the year 1995. Ramsay Sime Darby Healthcare College is registered with the Ministry of Higher Education as a Higher Education Provider and the programmes offered by the College are accredited by the Malaysian Qualifications Agency', 'https://www.ramsaysimedarbycollege.edu.my/'),
(70, 'Asia Pacific Institute of Information Technology', '0', 'The Asia Pacific Institute of Information Technology was founded in the year 1993 as part of an initiative by the government of Malaysia to address the shortage of IT professionals in the country at that time. Since then, the curriculum has developed to have the institute being recognised as a Microsoft authorised training center in 1998', 'https://www.apu.edu.my/'),
(71, 'Southern University College', '0', 'Southern University College, often abbreviated as Southern UC was established to provide education channels at home for high school graduates who were unable to pursue higher education in foreign countries. The school offers diploma courses in various fields ranging from computer science to business administration', 'https://southern.edu.my/'),
(72, 'IMPERIA International College', '0', 'IMPERIA International College was founded in 1995 by a group of entrepreneurs to offer training courses to the public. The school can be considered a specialist institution as it offers niche courses in quantity surveying, estate management, and construction management. IMPERIA is the only private institution in Malaysia that offers a UK qualification in real estate management and quantity surveying.', 'https://imperia.edu.my/'),
(73, 'Methodist College Kuala Lumpur', '0', 'Methodist College specialises in teachers\' training through its diploma programme. The school was set up as a successor to the Methodist High School, which was set up as a school of second chance, the school took in dropouts from government schools and equipped them with knowledge for higher education and employment. Methodist College now provides a diploma in early childhood education.', 'https://mckl.edu.my/'),
(74, 'Putra Intelek International College', '0', 'Putra Intelek International College is one of the pioneering and most diverse colleges in Malaysia. Putra Intelek International College specialises in risk management and other futuristic courses. After its establishment in 2002, the college has been at the forefront of higher education in Malaysia.', 'https://putraintelek.edu.my/en/'),
(75, 'The Otomotif College', '0', 'Established in 2004, The Otomotif College is the pioneer in professional automotive education in Malaysia. Their passion is what drives them to provide the best learning experience in the automotive and motorsports industry. Located in Petaling Jaya, everything students need for their learning are right at their doorstep, with modern training vehicles and fully air-conditioned workshops', 'https://www.toc.edu.my/'),
(76, 'Erican College', '0', 'Erican College is a member of the Erican Education Group, which is an award-winning education provider. Since it\'s establishment in the year 1990, Erican has helped more than 200,000 students obtian tertiary qualifications and life skills. The campus is located in the center of Kuala Lumpur city and they are also an ISO 9002 certified college.', 'https://www.erican.edu.my/'),
(77, 'International Medical College @ Summit USJ', '0', 'The International Medical College, which was first established in 1993 has a long standing reputation being a nursing education provider in Malaysia. With a network of more than 30 hospitals around the world, students of the college can be assured of the best quality in training development and employment opportunities after graduation.                    ', 'https://www.imc.edu.my/'),
(79, 'UNIKOP Cyberjaya', '0', 'UNIKOP College is wholly owned by The Royal Malaysia Police Cooperation. It was first established in the year 1996 with the mission to develop and extend meaningful contributions to nation building and national development through the exploration of quality education and customer interests. The college currently has over 2000 students and aims to provide a conducive learning experience that emphasizes on reflection sessions and mentoring feedback.                    ', 'https://unikop.edu.my/'),
(80, 'Admal Aviation College', '0', 'Admal Aviation College was established in July 2011 as Malaysia\'s Aviation Engineering College. Admal Aviation College is dedicated to educating and providing training for prospective students in the field of aviation maintenance engineering. Admal Aviation is special as they are the only college which has its own hangar facility of live and operational aircraft to ensure that students are able to gain the best experiences and knowledge.', 'https://admal.edu.my/'),
(82, 'Dasien Academy of Art', '0', 'Dasein Academy of Art is a private art college which has its campus located in Kuala Lumpur, Malaysia. The diploma programmes offered by the college are accredited with the Malaysian Qualifications Agency and recognised by the Ministry of Higher Education. It\'s mission is to provide an academic platform for art and design to unite local and international academics and experts to enculture higher order thinking through personalised learning experiences. Dasein also aims to fulfill the ever changing needs in the creative industry by transforming students into adaptable, dynamic and flexible individuals.', 'https://www.dasein.edu.my/'),
(83, 'RENG College of Technology and Design', '0', 'RENG College was established to empower the next generation and transform lives through education. RENG merges traditional values with modern thinking to prepare their students for their next career. The vision of RENG is to be the center of excellence in education and to be a life transforming college for all.\r\n', 'https://www.rengcollege.edu.my/'),
(84, 'Mantissa College', '0', 'Since its inception in the year 1999, Mantissa College is an approved Institution of Higher Education by the Ministry of Higher Education. The campus is located in Taman Tun Dr. Ismail, Kuala Lumpur. With more than 22 years of experience, Mantissa college specialises in business programmes which has seen more than 15,000 students graduate from the college. Mantissa College aims to provide its students with global-perspectives through its work-study programmes. Which enable studnets to access higher education with well equipped facilities and virtual learning.', 'https://www.mantissa.edu.my/'),
(85, 'Aviation Management College', '0', 'Aviation Management College was set up with the main purpose to add value to the aviation industry in Malaysia.  Aviation Management College aims to be the focus of aviation management related knowledge and information in Malaysia. With the core values of Customer Satisfaction, Continuous Improvement, Professionalism and Teamwork, the satisfaction of students are their primary concern.\r\n', 'https://aviation.edu.my/'),
(86, 'Famous Chef Professional Baking Culinary Academy', '0', 'Famous Chef Professional Baking and Culinary academy was established in 2009. It has since flourished into a well known culinary academy in Malaysia. The name Famous Chef was derived from the goal of the academy to guide their students toward becoming excellent chefs on the world stage. The academy is the only baking and culinary academy in Malaysia that is currently collaborating with Universiti Utara Malaysia. This allows their students to graduate with certificates from a recognised university.\r\n                    ', 'https://www.famouschef.edu.my/'),
(87, 'UNDO Academy', '0', 'Since its inception in 2011, UNDO Academy has been shaping aspiring talents to mould to a better future for the creative industry. UNDO was founded by industry experts and currently stands amongst the best creative institutions in Malaysia. UNDO highly values collaborations with industry experts in order to bring knowledge and share experiences with their students.\r\n', 'https://undo.edu.my/'),
(88, 'Kolej Dar Al-hikmah', '0', 'Kolej Dar al-Hikmah was started in the year 1989. The college focuses on Islamic courses and teaching the Islamic way of life. Kolej Dar al-Hikmah has an experience of 29 years in educating Islamic professionals to enable them to lead the community to a brighter path.', 'http://hikmah.edu.my/v2/'),
(89, 'Advance Tertiary College', '0', 'Advance Tertiary College, founded in the year 1987 has become the largest private law school in the region. Advance Tertiary College has the vision to be internationally recognised as a premier law and business school with a global perspective. Its mission is to promote learning in the best of traditions. The college aims to distinguish itself as a diverse, socially responsible learning community of high quality scholarship and academic rigor.', 'https://www.atc2u.edu.my/');

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
(65, 28, 48980, '2'),
(69, 15, 46920, '3'),
(69, 29, 46920, '3'),
(69, 30, 48312, '3'),
(69, 31, 49710, '3'),
(69, 32, 45042, '3'),
(70, 41, 39600, '2'),
(70, 42, 39600, '2'),
(71, 1, 26000, '2.3'),
(71, 3, 28000, '2.5'),
(71, 6, 26000, '2.3'),
(71, 7, 26000, '2.3'),
(71, 18, 26000, '2.3'),
(71, 19, 26000, '2.3'),
(71, 22, 25000, '2.3'),
(72, 10, 19800, '3'),
(72, 43, 19800, '3'),
(72, 45, 19800, '3'),
(73, 22, 20700, '2.5'),
(73, 46, 20700, '3'),
(74, 6, 25000, '2.5'),
(74, 47, 29500, '2.5'),
(75, 48, 54540, '3'),
(76, 6, 29680, '3'),
(76, 8, 38490, '3'),
(76, 9, 30900, '3'),
(76, 16, 32575, '3'),
(76, 18, 28760, '3'),
(76, 19, 29680, ''),
(76, 25, 34850, '3'),
(76, 27, 31550, '3'),
(77, 15, 52000, '3'),
(79, 6, 17000, '2.5'),
(79, 11, 14000, '2'),
(79, 49, 22400, '2.5'),
(79, 50, 17000, '2.5'),
(79, 51, 24000, '2.5'),
(80, 52, 40600, '3.5'),
(80, 53, 19800, '3'),
(80, 54, 93860, '3'),
(82, 9, 28700, '3'),
(82, 17, 44700, '3'),
(82, 56, 42500, '3'),
(82, 57, 39900, '3'),
(82, 59, 43000, '3'),
(83, 16, 25200, '3'),
(83, 34, 20400, '3'),
(83, 60, 31500, '3'),
(83, 61, 22500, '2'),
(84, 6, 29000, '2'),
(84, 18, 23500, '2'),
(85, 62, 21000, '3'),
(85, 63, 21000, '3'),
(85, 64, 15000, '3'),
(85, 65, 21000, '3'),
(85, 66, 24000, '3'),
(85, 67, 15000, '3'),
(86, 8, 19000, '1'),
(86, 55, 19000, '1'),
(87, 68, 36000, '2'),
(88, 11, 17410, '2.5'),
(88, 69, 17410, '2.5'),
(88, 70, 17410, '2.5'),
(89, 7, 16000, '1'),
(89, 11, 15000, '1'),
(89, 71, 15000, '1');

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
(49, 56, 2, 1, 'John Doe ', 'Best lectures ever!', 5, '2021-10-29 11:52:52'),
(53, 63, 1, 1, 'Andrea', 'Great course and campus!', 5, '2021-11-17 15:29:10'),
(54, 56, 6, 1, 'Andrea Gonzales', 'Great course and campus!', 5, '2021-11-17 15:30:22'),
(55, 56, 6, 1, 'Zhi Shan', 'Great and dedicated lecturers!', 5, '2021-11-17 20:56:29');

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
(28, 'Diploma in Communication'),
(29, 'Diploma in Medical Laboratory Technology'),
(30, 'Diploma in Physiotherapy'),
(31, 'Diploma in Medical Assistant'),
(32, 'Diploma in Healthcare Services'),
(33, 'Diploma in Public Management'),
(34, 'Diploma in Business Management'),
(35, 'Diploma in Halal Practices'),
(36, 'Diploma in Islamic Finance'),
(37, 'Diploma in Hospitality Management'),
(38, 'Diploma in Secretaryship'),
(39, 'Diploma in Media and Communication'),
(40, 'Diploma in Corporate Administration'),
(41, 'Diploma in Design and Media'),
(42, 'Diploma in International Studies'),
(43, 'Diploma in Estate Management'),
(45, 'Diploma in Construction Management'),
(46, 'Diploma in Social Work'),
(47, 'Diploma in Risk Management'),
(48, 'Diploma in Automotive Technology'),
(49, 'Diploma in Policing and Investigation'),
(50, 'Diploma in Office Administration'),
(51, 'Diploma in Investigation Service'),
(52, 'Diploma in Aircraft Maintenance'),
(53, 'Diploma in Aviation Business'),
(54, 'Diploma in Aviation Management'),
(55, 'Diploma in Baking Arts'),
(56, 'Diploma in Digital Media'),
(57, 'Diploma in Fine Arts'),
(58, 'Diploma in Graphic Design'),
(59, 'Diploma in Illustration'),
(60, 'Diploma in Architecture'),
(61, 'Diploma in Technology Design'),
(62, 'Diploma in Aviation Safety Management'),
(63, 'Diploma in Flight Operation Management'),
(64, 'Diploma in Office Management'),
(65, 'Diploma in Aviation Tourism Management'),
(66, 'Diploma in Cabin Crew Services'),
(67, 'Diploma in Human Resource Management'),
(68, 'Diploma in 3D Animation'),
(69, 'Diploma in Counseling'),
(70, 'Diploma in Psychology'),
(71, 'Diploma in Management');

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
  MODIFY `college_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

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
