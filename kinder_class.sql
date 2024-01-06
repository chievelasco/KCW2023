-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 05:41 PM
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
  `section` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_ID`, `email`, `password`, `section`) VALUES
(1, 'kinder_honesty@class', 'kcwh123', 'Honesty'),
(2, 'kinder_charity@class', 'kcwc123', 'Charity');

-- --------------------------------------------------------

--
-- Table structure for table `class_schedule`
--

CREATE TABLE `class_schedule` (
  `id` int(11) NOT NULL,
  `startTime` varchar(20) NOT NULL,
  `endTime` varchar(20) NOT NULL,
  `newSched` varchar(500) NOT NULL,
  `section` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_schedule`
--

INSERT INTO `class_schedule` (`id`, `startTime`, `endTime`, `newSched`, `section`) VALUES
(4, '10:00', '10:20', 'Exercise', 'Honesty'),
(5, '11:10', '23:28', 'Science and Health', 'Honesty'),
(12, '08:00', '08:05', 'Exercise', 'Charity');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `contactType` varchar(50) NOT NULL,
  `contactInfo` varchar(100) NOT NULL,
  `section` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contactType`, `contactInfo`, `section`) VALUES
(1, 'facebook', 'Miss Heart Facebook Official', 'Charity'),
(2, 'envelope', 'missheart@gmail.com', 'Honesty'),
(6, 'instagram', 'itsmamkaeceelynaaah', 'Honesty'),
(13, 'linkedin', 'mamkaeceelyncharity', 'Charity');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(4) NOT NULL,
  `weekNum` int(3) NOT NULL,
  `section` varchar(11) NOT NULL,
  `file_t` varchar(500) NOT NULL,
  `file_w` varchar(500) NOT NULL,
  `file_a` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `weekNum`, `section`, `file_t`, `file_w`, `file_a`) VALUES
(6, 1, 'Honesty', 'files/PRINCIPLE MGT & ORG_LESSON 1.pdf', 'files/PRINCIPLE MGT & ORG_LESSON 2.pdf', 'files/PRINCIPLE MGT & ORG_LESSON 3.pdf'),
(8, 8, '', 'files/Untitled design (11).png', 'files/Untitled design (10).png', 'files/1-Parental Involvement.png'),
(9, 10, '', 'files/download.jpg', 'files/download (1).jpg', 'files/download (2).jpg'),
(11, 12, '', 'files/Untitled design (11).png', 'files/Untitled design (10).png', 'files/385531822_932428791912625_3137449549452273078_n.jpg'),
(14, 10, '', 'files/3.png', 'files/4.png', 'files/5.png'),
(15, 2, 'Honesty', 'uploads/7.png', 'uploads/7.png', 'uploads/7.png'),
(16, 1, 'Charity', 'uploads/1.png', 'uploads/2.png', 'uploads/3.png');

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
('pfp.jpg', 1, 91818),
('pfp.jpg', 2, 447),
('pfp.jpg', 3, 2023);

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
  `remark` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`user_id`, `week`, `studID_number`, `item`, `score`, `percent`, `stud_fname`, `stud_lname`, `remark`) VALUES
(21, 1, 1818, 100, 20, 20, 'nini', 'bear', ''),
(22, 2, 1818, 20, 18, 90, 'Mary', 'Garcia', ''),
(23, 3, 1818, 100, 78, 78, 'Mary', 'Garcia', ''),
(24, 4, 1818, 50, 45, 90, 'nini', 'bear', ''),
(25, 1, 91818, 100, 88, 88, 'Mary', 'Garcia', ''),
(26, 2, 91818, 100, 90, 90, 'Mary', 'Garcia', ''),
(27, 10, 91818, 70, 50, 71, 'Mary', 'Garcia', ''),
(28, 0, 447, 0, 0, 0, 'Rose', 'Doe', ''),
(29, 12, 91818, 40, 30, 75, 'Mary', 'Garcia', 'great'),
(30, 3, 9091, 75, 50, 67, 'anne', 'tan', 'good job'),
(31, 9, 4545, 50, 40, 80, 'John', 'Doe', 'great'),
(32, 1, 4545, 30, 20, 67, 'John', 'Doe', 'great work'),
(33, 2, 4545, 30, 20, 67, 'John', 'Doe', 'good john'),
(34, 13, 91818, 13, 13, 100, 'Mary', 'Garcia', 'ts'),
(35, 12, 1818, 40, 15, 38, 'nini', 'bear', 'great perfofrmance'),
(36, 12, 2023, 50, 30, 60, 'Chan', 'Villanueva', 'great '),
(37, 14, 91818, 30, 20, 67, 'Mary', 'Garcia', 'wow');

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
('Mary', 'T', 'Garcia', '091818', 'Chienie Rose Velaso', 'Calamba Laguna', '0987654321', '0918', '0918', '2023-12-01', 1, 'Charity', 'Female', 'Yes', 'No', 'Yes', 'No', 'egg', 'None', 'None', 'None', 'Mother', 'UX UI Designer'),
('Chan', 'C', 'Villanueva', '2023-KCW', 'Rose Anne', 'San Agustin', '0987654432', '2023', '2023', '2023-11-29', 2, 'Honesty', 'Male', 'No', 'No', 'No', 'No', 'None', 'None', 'None', 'None', 'Mother', 'UX UI Designer'),
('Paul', 'A', 'Vill', '123', 'Chan Vill', 'Laguna', '1312312', '123', '123', '2023-12-30', 3, 'Charity', 'Male', 'No', 'No', 'Yes', 'No', 'milk', 'pericardial', 'None', 'None', 'Brother', 'employee'),
('John', 'D', 'Doe', '4545', 'Paul Doe', 'Canada', '09662681566', '4545', '4545', '12/12/12', 4, 'Charity', 'male', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'none', 'brother', 'employee'),
('anne', 's', 'tan', '09091', 'ann s tan', 'laguna', '865419722222', '0909', '0909', '2023-12-10', 5, 'Charity', 'Female', 'No', 'No', 'Yes', 'No', 'milk', 'None', 'None', 'None', 'sister', 'none'),
('nini', 'n', 'bear', '1818', 'nini s bear', 'calamba', '098371537262', '1818', '1818', '2023-12-06', 6, 'Honesty', 'Female', 'No', 'Yes', 'No', 'No', 'peanuts', 'None', 'None', 'None', 'mom', 'none'),
('Rose', 'V', 'Doe', '00447', 'Chienie Rose', 'Somewhere On Earth', '09098787654', 'easy', 'easy', '2001-01-08', 7, 'Charity', 'Female', 'No', 'No', 'Yes', 'No', 'Dust', 'BrokenbyCrush', 'Palpitate', 'None', 'Rich Tita', 'Frontend Developer nya');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `rule` varchar(1000) NOT NULL,
  `rule_num` int(11) NOT NULL,
  `section` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `rule`, `rule_num`, `section`) VALUES
(1, 'Listen to your parents always', 1, 'Charity'),
(5, 'Answer carefully.', 3, 'Honesty'),
(11, 'Do your homework', 2, 'Charity'),
(15, 'Help in chores', 3, 'Charity');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `section` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `title`, `description`, `start_datetime`, `end_datetime`, `section`) VALUES
(34, 'TRIAL', 'Ewan ko naaa', '2024-01-01 21:21:00', '2024-01-01 21:21:00', 'Honesty'),
(35, 'TRIAL NOW EDITED', 'yeeey', '2024-01-06 07:30:00', '2024-01-06 07:30:00', 'Honesty'),
(36, 'TRIAL TODAY EDITED', 'yeeeeey', '2024-01-11 09:26:00', '2024-01-11 09:27:00', 'Honesty'),
(45, 'Foundation Day', 'Celebration of beloved School Foundation', '2024-01-15 07:00:00', '2024-01-15 15:00:00', 'Charity');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_schedule`
--
ALTER TABLE `class_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `reg_info`
--
ALTER TABLE `reg_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
