-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 12:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinder_class`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_ID` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `section` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_ID`, `email`, `password`, `section`) VALUES
(1, 'kinder-honesty@class', 'kcw123', 'Honesty'),
(2, 'kinder-charity@class', 'kcw123', 'Charity');

-- --------------------------------------------------------

--
-- Table structure for table `class_schedule`
--

CREATE TABLE `class_schedule` (
  `id` int(11) NOT NULL,
  `startTime` varchar(20) NOT NULL,
  `endTime` varchar(20) NOT NULL,
  `newSched` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_schedule`
--

INSERT INTO `class_schedule` (`id`, `startTime`, `endTime`, `newSched`) VALUES
(3, '09:30', '09:40', 'prayer'),
(4, '10:00', '10:20', 'Exercise');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `contactType` varchar(50) NOT NULL,
  `contactInfo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contactType`, `contactInfo`) VALUES
(1, 'facebook', 'Miss Heart Facebook'),
(2, 'envelope', 'missheart@gmail.com'),
(4, 'mobile', '09358193710');

-- --------------------------------------------------------

--
-- Table structure for table `eactivities`
--

CREATE TABLE `eactivities` (
  `eactivities_id` int(11) NOT NULL,
  `eactivities_file` varchar(6000) NOT NULL,
  `ea_week` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(4) NOT NULL,
  `weekNum` int(3) NOT NULL,
  `file_t` varchar(500) NOT NULL,
  `file_w` varchar(500) NOT NULL,
  `file_a` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `weekNum`, `file_t`, `file_w`, `file_a`) VALUES
(4, 2, 'files/Fundamentals of Software Testing.pdf', 'files/Group 3 - Static Testing.pptx', 'files/Garcia, Mary Angelique T. (Assigment No.1).docx'),
(6, 1, 'files/PRINCIPLE MGT & ORG_LESSON 1.pdf', 'files/PRINCIPLE MGT & ORG_LESSON 2.pdf', 'files/PRINCIPLE MGT & ORG_LESSON 3.pdf'),
(8, 3, 'uploads/', 'uploads/', 'uploads/');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `image` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `studID_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`image`, `user_id`, `studID_number`) VALUES
('car.jpg', 1, 91818);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `user_id` int(15) NOT NULL,
  `week` int(3) NOT NULL,
  `studID_number` int(15) NOT NULL,
  `item` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `stud_fname` varchar(15) NOT NULL,
  `stud_lname` varchar(15) NOT NULL,
  `remark` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`user_id`, `week`, `studID_number`, `item`, `score`, `percent`, `stud_fname`, `stud_lname`, `remark`) VALUES
(21, 1, 1818, 100, 20, 20, 'nini', 'bear', '0'),
(22, 2, 1818, 20, 18, 90, 'Mary', 'Garcia', '0'),
(23, 3, 1818, 100, 78, 78, 'Mary', 'Garcia', '0'),
(24, 4, 1818, 50, 45, 90, 'nini', 'bear', '0'),
(25, 1, 91818, 190, 100, 53, 'Mary', 'Garcia', 'good job!'),
(26, 2, 91818, 100, 54, 54, 'Mary', 'Garcia', 'Very active.');

-- --------------------------------------------------------

--
-- Table structure for table `reg_info`
--

CREATE TABLE `reg_info` (
  `stud_fname` varchar(50) NOT NULL,
  `stud_mname` varchar(20) NOT NULL,
  `stud_lname` varchar(30) NOT NULL,
  `studID_number` varchar(20) NOT NULL,
  `parent_fullname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm_pass` varchar(20) NOT NULL,
  `bday` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `section` varchar(15) NOT NULL DEFAULT 'Charity',
  `gender` varchar(15) NOT NULL,
  `none` varchar(5) NOT NULL DEFAULT 'yes',
  `asthma` varchar(5) NOT NULL DEFAULT 'no',
  `eyesight` varchar(5) NOT NULL DEFAULT 'no',
  `epilepsy` varchar(5) NOT NULL DEFAULT 'no',
  `allergy` varchar(20) NOT NULL DEFAULT 'no',
  `heart` varchar(15) NOT NULL DEFAULT 'no',
  `pulmonary` varchar(15) NOT NULL DEFAULT 'no',
  `others` varchar(20) NOT NULL DEFAULT 'none',
  `relation` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg_info`
--

INSERT INTO `reg_info` (`stud_fname`, `stud_mname`, `stud_lname`, `studID_number`, `parent_fullname`, `address`, `contact_number`, `password`, `confirm_pass`, `bday`, `user_id`, `section`, `gender`, `none`, `asthma`, `eyesight`, `epilepsy`, `allergy`, `heart`, `pulmonary`, `others`, `relation`, `occupation`) VALUES
('Mary', 'T', 'Garcia', '091818', 'Ange Tan', 'Laguna', '09159547343', '0918', '0918', '2023-12-01', 1, 'Charity', 'Female', 'Yes', 'No', 'Yes', 'No', 'egg', 'None', 'None', 'None', 'Auntie', 'Employee'),
('Chan', 'C', 'Villanueva', '2023-KCW', 'Paul Villanueva', 'Laguna', '2147483647', '2023', '2023', '2023-11-29', 2, 'Honesty', 'Male', 'No', 'No', 'No', 'No', 'None', 'None', 'None', 'None', 'Brother', 'employee'),
('Paul', 'A', 'Vill', '123', 'Chan Vill', 'Laguna', '1312312', '123', '123', '2023-12-30', 3, 'Charity', 'Male', 'No', 'No', 'Yes', 'No', 'milk', 'pericardial', 'None', 'None', 'Brother', 'employee'),
('John', 'D', 'Doe', '4545', 'Paul Doe', 'Canada', '09662681566', '4545', '4545', '12/12/12', 4, 'Charity', 'male', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'none', 'brother', 'employee'),
('anne', 's', 'tan', '09091', 'ann s tan', 'laguna', '865419722222', '0909', '0909', '2023-12-10', 5, 'Charity', 'Female', 'No', 'No', 'Yes', 'No', 'milk', 'None', 'None', 'None', 'sister', 'none'),
('nini', 'n', 'bear', '1818', 'nini s bear', 'calamba', '098371537262', '1818', '1818', '2023-12-06', 6, 'Honesty', 'Female', 'No', 'Yes', 'No', 'No', 'peanuts', 'None', 'None', 'None', 'mom', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `rule` varchar(1000) NOT NULL,
  `rule_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `rule`, `rule_num`) VALUES
(1, 'Listen to your parents.', 1),
(5, 'Answer carefully.', 2),
(6, 'Eat on time.', 3),
(8, 'Sleep on time.', 4),
(9, 'Read and answer the questions.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `title`, `description`, `start_datetime`, `end_datetime`) VALUES
(2, 'Sample 102', 'Sample Description 102', '2022-01-08 09:30:00', '2022-01-08 11:30:00'),
(4, 'Sample 102', 'Sample Description', '2022-01-12 14:00:00', '2022-01-12 17:00:00'),
(18, 'sdas', 'sadas', '2023-12-12 00:00:00', '2023-12-12 23:59:59'),
(19, 'asdas', 'sdad', '2023-12-12 00:00:00', '2023-12-12 23:59:59'),
(20, 'Flag Ceremony', 'Wear complete uniform and attend the flag ceremony on time.', '2023-12-12 00:00:00', '2023-12-12 23:59:59'),
(22, 'Prelims', 'Bring pencil and eraser.', '2023-12-12 00:00:00', '2023-12-12 23:59:59'),
(23, 'ttt', 'ttt', '2023-12-20 00:00:00', '2023-12-20 23:59:59'),
(24, 'birthday', 'student 1 birthday', '2023-12-18 00:00:00', '2023-12-18 23:59:59'),
(25, 'birthday', 'student 1 birthday', '2023-12-18 00:00:00', '2023-12-18 23:59:59'),
(28, 'Christmas', 'Happy Holidays!\r\nEnjoy your vacation!', '2023-12-25 11:30:00', '2023-12-25 00:30:00'),
(29, 'Christmas', 'holidays!', '2023-12-25 09:00:00', '2023-12-25 10:00:00'),
(30, 'Christmas Party', 'bring gifts!', '2023-12-19 14:00:00', '2023-12-19 17:00:00'),
(31, 'holiday', 'happy holidays', '2023-12-31 09:00:00', '2023-12-31 10:00:00'),
(32, 'holiday', 'none', '2023-12-30 10:20:00', '2023-12-30 11:20:00'),
(33, 'Christmas', 'noooo', '2023-12-01 09:30:00', '2023-12-01 10:30:00'),
(34, 'Christmas', 'non', '2023-12-01 09:00:00', '2023-12-01 10:00:00'),
(35, 'holiday', 'nope', '2023-12-08 09:55:00', '2023-12-08 10:55:00'),
(36, 'holiday', 'noppp', '2023-12-30 09:00:00', '2023-12-30 10:00:00'),
(37, 'please save', 'tired', '2023-12-01 10:15:00', '2023-12-01 10:30:00'),
(48, 'draft', '101', '2023-12-31 18:00:00', '2023-12-31 18:10:00'),
(49, 'tryy', 'tryyy', '2023-12-31 06:10:00', '2023-12-31 18:10:00'),
(50, 'ytyt', 'ytyt', '2023-12-01 06:15:00', '2023-12-01 06:19:00'),
(51, 'title', 'tilt', '2024-01-03 22:15:00', '2024-01-03 22:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topics_id` int(11) NOT NULL,
  `topics_file` varchar(6000) NOT NULL,
  `t_week` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `worksheets`
--

CREATE TABLE `worksheets` (
  `worksheets_id` int(11) NOT NULL,
  `worksheets_file` varchar(6000) NOT NULL,
  `w_week` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_ID`);

--
-- Indexes for table `class_schedule`
--
ALTER TABLE `class_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eactivities`
--
ALTER TABLE `eactivities`
  ADD PRIMARY KEY (`eactivities_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `reg_info`
--
ALTER TABLE `reg_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topics_id`);

--
-- Indexes for table `worksheets`
--
ALTER TABLE `worksheets`
  ADD PRIMARY KEY (`worksheets_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class_schedule`
--
ALTER TABLE `class_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `eactivities`
--
ALTER TABLE `eactivities`
  MODIFY `eactivities_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `reg_info`
--
ALTER TABLE `reg_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topics_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `worksheets`
--
ALTER TABLE `worksheets`
  MODIFY `worksheets_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
