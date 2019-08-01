-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2019 at 03:28 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alkhizra_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `teacher_description` varchar(500) NOT NULL,
  `teacher_email` varchar(50) DEFAULT NULL,
  `room_token` varchar(50) NOT NULL,
  `course_Id` int(10) NOT NULL,
  `teacherId` int(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `title`, `date`, `time`, `description`, `teacher_description`, `teacher_email`, `room_token`, `course_Id`, `teacherId`, `createdAt`, `updatedAt`) VALUES
(3, 'History of Java', '2019-03-07 16:18:29', '07:00 PM - 09:00 PM (60 Min)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Umar Raza will be the instructor of this class.', 'umarraza2200@gmail.com', '5d317831e09ff', 3, 7, '2019-08-01 12:03:56', '2019-07-19 02:58:41'),
(4, 'History of Islam', '2019-03-07 16:18:29', '07:00 PM - 09:00 PM (60 Min)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Umar Raza will be the instructor of this class.', 'numan100@gmail.com', '5d40194d15709', 4, 1, '2019-08-01 12:03:59', '2019-07-30 05:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `conferences`
--

CREATE TABLE `conferences` (
  `id` int(10) NOT NULL,
  `conferenceName` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeZone` varchar(50) NOT NULL,
  `teacherId` int(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conferences`
--

INSERT INTO `conferences` (`id`, `conferenceName`, `date`, `time`, `timeZone`, `teacherId`, `createdAt`, `updatedAt`) VALUES
(1, 'AI Conferenece', '2019-07-31 06:50:35', '2019-07-10 04:46:04', 'GMT Standard Time', 1, '2019-07-30 06:29:48', '2019-07-30 06:29:48'),
(5, 'AI Conferenece', '2019-07-31 06:50:41', '2019-07-10 04:46:04', 'GMT Standard Time', 7, '2019-07-30 06:35:17', '2019-07-30 06:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `about_instructor` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `teacherId` int(10) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `description`, `about_instructor`, `category`, `type`, `teacherId`, `createdAt`, `updatedAt`) VALUES
(3, 'Introduction to Java', 'This is a description about the course, which allows the user to show any king of description about the course.', 'Malik Aftab is the instructor of this course.', 'Programming', 'Free', 1, '2019-07-19 02:58:29', '2019-07-19 02:58:29'),
(4, 'History of Islam', 'This is a description about the course, which allows the user to show any king of description about the course.', 'Umar Raza is the instructor of this course.', 'Programming', 'Free', 7, '2019-07-30 05:17:33', '2019-07-30 05:17:33'),
(6, 'Introduction to C+', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Umar Raza is the instructor of this course.', 'Programming', 'Free', 1, '2019-08-01 05:47:34', '2019-08-01 05:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', 'A user with Admin Privilege', '2019-06-13 07:00:00', '2019-06-13 07:00:00'),
(2, 'Teacher', 'A user with Teacher Privilege', '2019-06-13 07:00:00', '2019-06-13 07:00:00'),
(3, 'Student', 'A user with Student Privilege', '2019-06-13 07:00:00', '2019-06-13 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dateOfBirth` varchar(50) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `course_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `userId` int(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `dateOfBirth`, `phoneNumber`, `email`, `course_id`, `teacher_id`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'Ali', 'Raza', '15-03-1995', '03034969407', 'alexa@gmail.com', 3, 1, 28, '2019-08-01 05:28:45', '2019-08-01 05:28:45'),
(2, 'Numan', 'Hashmi', '15-03-1995', '03034969407', 'numan100@gmail.com', 3, 1, 29, '2019-08-01 05:29:07', '2019-08-01 05:29:07'),
(3, 'Waqas', 'Ahmad', '15-03-1995', '03034969407', 'waqasahmad@gmail.com', 3, 1, 30, '2019-08-01 05:29:40', '2019-08-01 05:29:40'),
(4, 'Waleed', 'Ijaz', '15-03-1995', '03034969407', 'waleed@gmail.com', 3, 1, 31, '2019-08-01 05:36:58', '2019-08-01 05:36:58'),
(5, 'Mahnoor', 'Malik', '15-03-1995', '03034969407', 'mahnoor@gmail.com', 3, 1, 32, '2019-08-01 05:37:22', '2019-08-01 05:37:22'),
(6, 'Rabia', 'Ajmal', '15-03-1995', '03034969407', 'rabia@gmail.com', 3, 1, 33, '2019-08-01 05:37:49', '2019-08-01 05:37:49'),
(7, 'Kinza', 'Malik', '11-05-1997', '03031212141', 'kinza@gmail.com', 3, 1, 34, '2019-08-01 05:38:25', '2019-08-01 05:38:25'),
(8, 'Sana', 'Imtiaz', '12-07-1995', '03214521214', 'sana@gmail.com', 3, 1, 35, '2019-08-01 05:39:06', '2019-08-01 05:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `phoneNumber` bigint(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `first_name`, `last_name`, `specialization`, `phoneNumber`, `email`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'Malik', 'Aftab', 'BS Software Engineering', 3214251476, 'malikaftab@gmail.com', 12, '2019-07-19 02:57:34', '2019-07-19 02:57:34'),
(7, 'Numan', 'Hashmi', 'MA English', 3215256987, 'numan100@gmail.com', 17, '2019-07-30 03:13:13', '2019-07-30 03:13:13'),
(8, 'Ali', 'Raza', 'MA Islamiat', 3215248796, 'ali@gmail.com', 18, '2019-07-30 03:13:31', '2019-07-30 03:13:31'),
(9, 'Usman', 'Hashmi', 'MA Urdu Literature', 3474800074, 'usman@gmail.com', 19, '2019-07-30 03:14:29', '2019-07-30 03:14:29'),
(12, 'Nimra', 'Jameel', 'PHD Software Engineering', 3336565696, 'nimra@gmail.com', 22, '2019-07-30 03:20:25', '2019-07-30 03:20:25'),
(16, 'Dr. Naveed', 'Malik', 'BSSC', 3034969407, 'maliknaveed@gmail.com', 26, '2019-07-30 07:37:57', '2019-07-30 07:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) NOT NULL,
  `testName` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `totalMarks` varchar(50) NOT NULL,
  `passingMarks` varchar(50) NOT NULL,
  `totalTime` varchar(20) NOT NULL,
  `instructions` varchar(500) NOT NULL,
  `courseId` int(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `testName`, `description`, `totalMarks`, `passingMarks`, `totalTime`, `instructions`, `courseId`, `createdAt`, `updatedAt`) VALUES
(1, 'AWS Certified Solutions Architect Associate', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '30', '10', '1 Hour', 'Some instructions', 4, '2019-07-31 06:09:58', '2019-07-31 06:09:58'),
(2, 'Neural Networks Thesis', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '100', '33', '1 Hour', 'Some Instructions', 4, '2019-07-31 06:38:04', '2019-07-31 06:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessCode` int(10) DEFAULT NULL,
  `roleId` int(10) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `accessCode`, `roleId`, `remember_token`, `verified`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$VwROsyn0bDr5gTh/rnCCG.5JN3kZTAWEEUZPJLHfiZf.84ZLdPtwq', NULL, 1, 'CO1nu7mTtjNDErxhQlxhGYH1mr0biixxl8LOEBjXUPVYmjtLN4nPtc0MBl23', 1, '2019-07-08 19:00:00', '2019-07-08 19:00:00'),
(12, 'Malik Aftab', 'malikaftab@gmail.com', '$2y$10$wl.u3qGx12y7irqtzOPE2eA07FaAyF6knsscAvS243qDTFWkRl2mu', 1067106809, 2, 'QALhvAyY9PUPWTAIdHzCxykuKS5uKyt71qO1zpSSakmstrDwWmXhSIIOwven', NULL, '2019-07-19 02:57:34', '2019-07-19 02:57:34'),
(17, 'Umar Raza', 'umarraza2200@gmail.com', '$2y$10$wl.u3qGx12y7irqtzOPE2eA07FaAyF6knsscAvS243qDTFWkRl2mu', 823184130, 2, 'cwoc8JwN6dWQlPKDO2d8Ig02u7AdnxbiyyjPOspQiMveTtWQbbKaQxC1t7Ic', NULL, '2019-07-30 03:13:13', '2019-07-30 03:13:13'),
(18, 'Ali Raza', 'ali@gmail.com', NULL, 1613883644, 2, NULL, NULL, '2019-07-30 03:13:31', '2019-07-30 03:13:31'),
(19, 'Usman Hashmi', 'usman@gmail.com', NULL, 1197390354, 2, NULL, NULL, '2019-07-30 03:14:29', '2019-07-30 03:14:29'),
(22, 'Nimra Jameel', 'nimra@gmail.com', NULL, 58577260, 2, NULL, NULL, '2019-07-30 03:20:25', '2019-07-30 03:20:25'),
(26, 'Dr. Naveed Malik', 'maliknaveed@gmail.com', NULL, 867570118, 2, NULL, NULL, '2019-07-30 07:37:57', '2019-07-30 07:37:57'),
(28, 'Ali Raza', 'alexa@gmail.com', NULL, 1330025296, 3, NULL, NULL, '2019-08-01 05:28:45', '2019-08-01 05:28:45'),
(29, 'Numan Hashmi', 'numan100@gmail.com', NULL, 263011948, 3, NULL, NULL, '2019-08-01 05:29:07', '2019-08-01 05:29:07'),
(30, 'Waqas Ahmad', 'waqasahmad@gmail.com', NULL, 329834801, 3, NULL, NULL, '2019-08-01 05:29:40', '2019-08-01 05:29:40'),
(31, 'Waleed Ijaz', 'waleed@gmail.com', NULL, 88075649, 3, NULL, NULL, '2019-08-01 05:36:58', '2019-08-01 05:36:58'),
(32, 'Mahnoor Malik', 'mahnoor@gmail.com', NULL, 125611311, 3, NULL, NULL, '2019-08-01 05:37:22', '2019-08-01 05:37:22'),
(33, 'Rabia Ajmal', 'rabia@gmail.com', NULL, 1852224073, 3, NULL, NULL, '2019-08-01 05:37:49', '2019-08-01 05:37:49'),
(34, 'Kinza Malik', 'kinza@gmail.com', NULL, 1150751583, 3, NULL, NULL, '2019-08-01 05:38:25', '2019-08-01 05:38:25'),
(35, 'Sana Imtiaz', 'sana@gmail.com', NULL, 348218801, 3, NULL, NULL, '2019-08-01 05:39:06', '2019-08-01 05:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` int(10) NOT NULL,
  `userId` int(10) NOT NULL,
  `token` varchar(200) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conferences`
--
ALTER TABLE `conferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conferences`
--
ALTER TABLE `conferences`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
