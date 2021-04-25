-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql4.freesqldatabase.com
-- Generation Time: Apr 25, 2021 at 03:40 AM
-- Server version: 5.5.54-0ubuntu0.12.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql4408113`
--

-- --------------------------------------------------------

--
-- Table structure for table `courseAssignment`
--

CREATE TABLE `courseAssignment` (
  `assignmentId` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `facilitatorId` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `expectations` varchar(150) NOT NULL,
  `status` varchar(20) NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseAssignment`
--

INSERT INTO `courseAssignment` (`assignmentId`, `courseId`, `facilitatorId`, `date`, `description`, `expectations`, `status`, `credit`) VALUES
(1, 1, 1, '2021-04-05', 'This course is a full module and will be deivered based on the timelines', 'Student will be able to understand the topics and how to apply them through exercises', 'ongoing', 1),
(2, 3, 2, '2021-04-02', 'This course is a full module and will be deivered based on the timelines', 'Student will be able to understand the topics and ...', 'not started', 4),
(3, 2, 4, '2021-04-01', 'This course is a full module and will be deivered based on the timelines', 'Student will be able to understand the topics and ...', 'not started', 3),
(4, 1, 1, '2021-04-19', 'This course is a full module and will be deivered based on the timelines', 'Student will be able to understand the topics and ...', 'not started', 3),
(5, 1, 1, '2021-04-08', 'This course is a full module and will be deivered based on the timelines', 'Student will be able to understand the topics and ...', 'ongoing', 4),
(6, 1, 1, '2021-04-29', 'This course is a full module and will be deivered based on the timelines', 'Student will be able to understand the topics and ...', 'not started', 3),
(7, 3, 8, '2021-04-12', 'This course is a full module and will be deivered based on the timelines', 'Student will be able to understand the topics and ...', 'ongoing', 4),
(8, 6, 7, '2021-04-06', 'This course is a full module and will be deivered based on the timelines', 'Student will be able to understand the topics and ...', 'completed', 2),
(9, 6, 5, '2021-04-08', 'This course is a full module and will be deivered based on the timelines', 'Student will be able to understand the topics and ...', 'completed', 4),
(10, 7, 8, '2021-04-18', 'This course is a full module and will be deivered based on the timelines', 'Student will be able to understand the topics and ...', 'not started', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(45) NOT NULL,
  `moduleID` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `departmentId` int(11) NOT NULL,
  `timerequired` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseID`, `courseName`, `moduleID`, `description`, `startDate`, `endDate`, `departmentId`, `timerequired`) VALUES
(1, 'Advanced Database', 2, 'Advanced database is an advanced database query using mysql and un sql db', '2021-04-04', '2021-07-31', 1, '150 hours'),
(2, 'Communication ', 2, 'Communication for impact outline the form of communications and empower how students can improve ', '2021-01-18', '2021-05-27', 1, '200 hours'),
(3, 'Internet of THings', 2, 'Internet services outline the future of technologies', '2021-02-14', '2021-06-02', 2, '120 hours'),
(4, 'Data mining', 2, 'Mining information allows companies find patternsfor their business it is important to know basics', '2021-04-01', '2021-06-19', 3, '200 hours'),
(5, 'Computer Architecture', 2, 'Advanced database is an advanced database query using mysql and un sql db', '0000-00-00', '0000-00-00', 4, '400 hours'),
(6, 'Programming', 2, 'Learning basics of programmming languages.', '2021-01-11', '2021-05-22', 2, '420 hours'),
(7, 'Entrepreneurship', 3, 'Entreneurship breaks the gap of unemployment. Leading the market with capability is learning', '2021-01-25', '2021-04-02', 1, '420 hours'),
(8, 'Business Analysis', 2, 'This course explore the methods and some knowledge of analysing businesses', '2020-12-15', '2021-05-06', 2, '420 hours'),
(9, 'Digital Marketing', 2, 'ay anonymous understanding in online business, learning is how to save the gap', '2021-02-09', '2021-06-03', 1, '250 hours'),
(10, 'Networking', 2, 'Networking session will teach you way of braodcasting your connection and having many opps', '2021-02-01', '2021-05-22', 4, '125 hours');

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `departmentID` int(11) NOT NULL,
  `depName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `details` varchar(150) NOT NULL,
  `tasks` varchar(150) NOT NULL,
  `police` varchar(1000) NOT NULL,
  `pseudo` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`departmentID`, `depName`, `email`, `address`, `details`, `tasks`, `police`, `pseudo`) VALUES
(1, 'Computer Science', 'csdepartment@alueducation.com', 'Gabon room and Office center', 'This department is an educational or all students doing Computer Scinece and offer all support to deliver best education', 'Provide courses, timeline, update grades, control and settle diff meeting with our facilitator, manage and satisfy students and facilitators requireme', 'This policie all all students and facilitators meet our exception and as well their own values. We love ethics and hardwork', 'CS'),
(2, 'International Business and Trade', 'ibtdepartment@alueducation.com', 'Guinea room and Office center', 'This department is an educational or all students doing Computer Scinece and offer all support to deliver best education', 'Provide courses, timeline, update grades, control and settle diff meeting with our facilitator, manage and satisfy students and facilitators requireme', 'This policie all all students and facilitators meet our exception and as well their own values. We love ethics and hardwork', 'IBT'),
(3, 'Global Challenges', 'gcdepartment@alueducation.com', 'Gabon room and Office center', 'This department is an educational or all students doing Computer Scinece and offer all support to deliver best education', 'Provide courses, timeline, update grades, control and settle diff meeting with our facilitator, manage and satisfy students and facilitators requireme', 'This policie all all students and facilitators meet our exception and as well their own values. We love ethics and hardwork', 'GC'),
(4, 'Entrepreneurial', 'endepartment@alueducation.com', 'Ethiopia room and Office center', 'This department is an educational or all students doing Computer Scinece and offer all support to deliver best education', 'Provide courses, timeline, update grades, control and settle diff meeting with our facilitator, manage and satisfy students and facilitators requireme', 'This policie all all students and facilitators meet our exception and as well their own values. We love ethics and hardwork', 'ET');

-- --------------------------------------------------------

--
-- Table structure for table `facilitator`
--

CREATE TABLE `facilitator` (
  `facilitatorId` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(40) NOT NULL,
  `about` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `departmentID` int(11) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilitator`
--

INSERT INTO `facilitator` (`facilitatorId`, `firstName`, `lastName`, `email`, `phone`, `address`, `about`, `date`, `departmentID`, `country`) VALUES
(1, 'Robert', 'Wekessa', 'rwekesa@alueducation.com', 2147483647, 'Kigali Djicondo', 'Studed computer in MIT, degree and master in CS, I worked in Cs department as a supervisor and a fac', '2021-04-12', 1, 'Kenya'),
(2, 'Benson', 'Muhira', 'rwekesa@alueducation.com', 2147483647, 'Kigali Djicondo', 'Studed computer in MIT, degree and master in CS, I worked in Cs department as a supervisor and a fac', '2021-04-26', 1, 'Tanzania'),
(3, 'Robert', 'Wekessa', 'rwekesa@alueducation.com', 2147483647, 'Kigali Djicondo', 'Studed computer in MIT, degree and master in CS, I worked in Cs department as a supervisor and a fac', '2021-04-08', 1, 'Rwanda'),
(4, 'Tatenda', 'Kemai', 'tatmd@alueducation.com', 2147483647, 'Kigali Djicondo', 'Studed computer in MIT, degree and master in CS, I worked in Cs department as a supervisor and a fac', '0000-00-00', 1, 'Kenya'),
(5, 'Kelvin', 'Benta', 'eda@alueducation.com', 2147483647, 'Kigali Djicondo', 'Studed computer in MIT, degree and master in CS, I worked in Cs department as a supervisor and a fac', '2021-04-02', 2, 'Ethiopia'),
(6, 'Anita', 'Mendi', 'rada@alueducation.com', 2147483647, 'Kigali Djicondo', 'Studed IBT in MIT, degree and master in CS, I worked in Cs department as a supervisor and a facilita', '0000-00-00', 3, 'Ghana'),
(7, 'Anderson', 'Walker', 'rwekesa@alueducation.com', 2147483647, 'Kigali Djicondo', 'Studed computer in Global Challenges in Havard, degree and master in CS, I worked in Cs department a', '0000-00-00', 4, 'Nigeria'),
(8, 'Aline', 'Nden', 'alisa@alueducation.com', 2147483647, 'Kigali Djicondo', 'Studed computer in MIT, degree and master in CS, I worked in Cs department as a supervisor and a fac', '2021-04-23', 3, 'South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groupID` int(11) NOT NULL DEFAULT '0',
  `information` varchar(50) DEFAULT NULL,
  `anouncement` varchar(50) DEFAULT NULL,
  `dateCreated` date NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `groupName` varchar(14) DEFAULT NULL,
  `facilitatorId` int(11) NOT NULL,
  `year` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupID`, `information`, `anouncement`, `dateCreated`, `startDate`, `endDate`, `groupName`, `facilitatorId`, `year`) VALUES
(1, 'Group assignment', 'This group will be working on the Distributed and ', '2021-04-03', '2021-04-15', '2021-08-10', 'Group1', 1, 'YEAR1'),
(2, 'Group assignment', 'This group will be working on the Distributed and ', '2021-04-03', '2021-04-14', '2021-08-23', 'Group2', 2, 'YEAR4'),
(3, 'Group assignment', 'This group will be working on the Distributed and ', '2021-04-03', '2021-05-12', '2021-08-12', 'Group1', 4, 'YEAR2'),
(4, 'Group assignment', 'This group will be working on the Distributed and ', '2021-04-03', '2021-04-20', '2021-10-21', 'Group2', 3, 'YEAR3'),
(5, 'Group assignment', 'This group will be working on the Distributed and ', '2021-04-03', '2021-04-03', '2021-07-14', 'Group_11', 2, 'YEAR4'),
(6, 'Group assignment', 'This group will be working on the Distributed and ', '2021-04-03', '2021-04-03', '2021-08-16', 'Group_14', 5, 'YEAR3'),
(7, 'Group assignment', 'This group will be working on the Distributed and ', '2021-04-03', '2021-04-03', '2021-08-13', 'Group1', 6, 'YEAR1'),
(8, 'Group assignment', 'This group will be working on the Distributed and ', '2021-04-03', '2021-04-03', '2021-04-03', 'Group_44', 2, 'YEAR2'),
(9, 'Group assignment', 'This group will be working on the Distributed and ', '2021-04-03', '2021-04-03', '2021-08-06', 'Group_12', 3, 'YEAR1'),
(10, 'Group assignment', 'This group will be working on the Distributed and ', '2021-04-03', '2021-04-03', '2021-08-12', 'Group_21', 1, 'YEAR2');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `timeadded` date NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberId`, `studentId`, `timeadded`, `groupId`) VALUES
(1, 2, '0000-00-00', 1),
(2, 2, '0000-00-00', 1),
(3, 5, '0000-00-00', 1),
(4, 4, '0000-00-00', 2),
(5, 1, '0000-00-00', 2),
(6, 8, '0000-00-00', 2),
(7, 2, '0000-00-00', 4),
(8, 1, '0000-00-00', 4),
(9, 4, '0000-00-00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `moduleID` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `departmentId` int(11) NOT NULL,
  `year` varchar(11) NOT NULL,
  `term` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`moduleID`, `description`, `startDate`, `endDate`, `departmentId`, `year`, `term`) VALUES
(1, 'This module is about Human computer interaction', '2021-04-03', '2021-04-03', 2, 'YEAR1', 'TERM1'),
(2, 'This module is about Artificial Intelligence', '2021-04-03', '2021-04-03', 2, 'YEAR3', 'TERM2'),
(3, 'Advamced database module', '2021-04-03', '2021-04-03', 2, 'YEAR4', 'TERM1'),
(4, 'Data Mining module', '2021-04-03', '2021-04-03', 4, 'YEAR4', 'TERM1'),
(5, 'Internet of things session module', '2021-04-03', '2021-04-03', 1, 'YEAR4', 'TERMF'),
(6, 'Business ENtrepreneurial', '2021-04-03', '2021-04-03', 3, 'YEAR2', 'TERMF'),
(7, 'Communication for Impact session module', '2021-04-03', '2021-04-03', 2, 'YEAR1', 'TERMF'),
(8, 'Data analysis', '2021-04-03', '2021-04-03', 1, 'YEAR1', 'TERMF'),
(9, 'This module is about Human computer interaction', '2021-04-03', '2021-04-03', 1, 'YEAR3', 'TERM1'),
(10, 'Projects session module', '2021-04-03', '2021-04-03', 2, 'YEAR2', 'TERM2');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `account_name` varchar(14) DEFAULT NULL,
  `bank_no` varchar(18) DEFAULT NULL,
  `amount` int(12) DEFAULT NULL,
  `client_no` varchar(18) DEFAULT NULL,
  `studentID` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `account_name`, `bank_no`, `amount`, `client_no`, `studentID`, `date`) VALUES
(1, 'Ecobank', '4257181448744', 1200, '14585898545', 6, '2021-04-03'),
(2, 'IB bank', '35985425', 250, '9575222255', 2, '2021-04-03'),
(3, 'IB bank', '15482588', 1500, '12558789', 4, '2021-04-03'),
(4, 'IB bank', '31588888', 120, '75452587', 5, '2021-04-03'),
(6, 'IB bank', '487877814', 300, '14585898545', 3, '2021-04-03'),
(7, 'IB bank', '4257181448744', 650, '14585898545', 9, '2021-04-03'),
(8, 'IB bank', '4257181448744', 100, '14585898545', 4, '2021-04-03'),
(9, 'IB bank', '785565111', 310, '14585898545', 3, '2021-04-03'),
(10, 'IB bank', '1485551525', 770, '77188589958', 6, '2021-04-03'),
(17, 'IB bank', '5784181448744', 400, '144868868', 7, '2021-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `ressources`
--

CREATE TABLE `ressources` (
  `ressourceID` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `ressourceType` varchar(30) DEFAULT NULL,
  `file` varchar(30) DEFAULT NULL,
  `date` date NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `title` varchar(45) NOT NULL,
  `userType` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ressources`
--

INSERT INTO `ressources` (`ressourceID`, `courseId`, `ressourceType`, `file`, `date`, `userId`, `title`, `userType`) VALUES
(0, 1, 'submission', 'mamadyAssign.pdf', '2021-04-14', 1, 'assginment submission', 'student'),
(1, 3, 'sumission', 'assignment5.pdf', '2021-04-15', 2, 'Assignment 4 submissions', 'student'),
(2, 2, 'submission', 'adadedej.pdf', '2021-04-14', 1, 'Submission of assigment 3', 'student'),
(3, 2, 'course', 'advanced DB courses.pdf', '2021-04-13', 7, 'Course introductions', 'facilitator'),
(4, 4, 'course', 'introduct.pdf', '2021-04-14', 4, 'Introduction to IBT', 'facilitator'),
(5, 5, 'course', 'introduct.pdf', '2021-04-14', 6, 'Introduction to Entrepreunership', 'facilitator'),
(6, 7, 'submission', 'assignment4.pdf', '2021-04-15', 5, 'Assignment 4 submissions', 'student'),
(7, 9, 'sumission', 'assignment4.pdf', '2021-04-16', 7, 'Assignment 4 submissions', 'student'),
(8, 8, 'sumission', 'assignmentFinalTerm1.pdf', '2021-04-15', 3, 'Assignment 4 submissions', 'student'),
(9, 4, 'sumission', 'assignment4.pdf', '2021-04-17', 8, 'Assignment 4 submissions', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentName` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `pseudoName` varchar(6) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `image` varchar(25) DEFAULT NULL,
  `registerDate` date DEFAULT NULL,
  `country` varchar(14) DEFAULT NULL,
  `city` varchar(14) DEFAULT NULL,
  `region` varchar(16) DEFAULT NULL,
  `currentLocation` varchar(16) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `studentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentName`, `email`, `phone`, `address`, `pseudoName`, `password`, `image`, `registerDate`, `country`, `city`, `region`, `currentLocation`, `gender`, `studentId`) VALUES
('Mamady Kante', 'makante17@alustudent', '0787850457', 'Nyamirambo', 'makant', '62631697', 'ydyuu.jpg', '2021-04-02', 'Guinea', 'Conakry', 'Rwanda', 'Kigali', 'F', 1),
('Diane', 'dian@alustudent.com', '25668555', 'Nyamirambo', 'dain11', '62631697', 'ydyuu.jpg', '2021-04-02', 'Rwanda', 'Kigali', 'Rwanda', 'Kigali', 'F', 2),
('kelvin', 'kel@gmail.com', '626569555', 'Rwanda kigali', 'kelvni', '42656', 'dsoije.jpg', '2021-04-03', 'Rwanda', 'Kigali', 'Region', 'Kigali', 'F', 3),
('Abdal', 'abdal@gmail.com', '556565686', 'Rwanda kigali', 'kelvni', '42656', 'dsoije.jpg', '2021-04-03', 'Rwanda', 'Kigali', 'Region', 'Kigali', 'F', 4),
('Rhoni', 'rhon@gmail.com', '8575658554', 'Rwanda kigali', 'kelvni', '12556', 'dsoije.jpg', '2021-04-03', 'Rwanda', 'Kigali', 'Region', 'Kigali', 'F', 5),
('Albert', 'albert@gmail.com', '2548656565', 'Rwanda kigali', 'kelvni', '145688', '268bikjwesd.jpg', '2021-04-03', 'Rwanda', 'Kigali', 'Region', 'Kigali', 'F', 6),
('Samiratou', 'samir@gmail.com', '2653655', 'Rwanda kigali', 'samira', '42656', '25dsje.jpg', '2021-04-03', 'Rwanda', 'Kigali', 'Region', 'Kigali', 'F', 7),
('Benit san', 'beni@gmail.com', '5586565', 'Rwanda kigali', 'ebnit', '42656', '25dsje.jpg', '2021-04-03', 'Rwanda', 'Kigali', 'Region', 'Kigali', 'F', 8),
('Aminata', 'amina@gmail.com', '2653655', 'Rwanda kigali', 'amina', '78559', 'ami12.jpg', '2021-04-03', 'Rwanda', 'Kigali', 'Region', 'Kigali', 'F', 9),
('Nicole', 'nicole@gmail.com', '29865385', 'Rwanda kigali', 'nicole', '42656', '1d5e.jpg', '2021-04-03', 'Rwanda', 'Kigali', 'Region', 'Kigali', 'F', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courseAssignment`
--
ALTER TABLE `courseAssignment`
  ADD PRIMARY KEY (`assignmentId`),
  ADD KEY `assignment` (`courseId`),
  ADD KEY `facilit` (`facilitatorId`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseID`),
  ADD KEY `mdle` (`moduleID`),
  ADD KEY `facilitf` (`departmentId`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`departmentID`);

--
-- Indexes for table `facilitator`
--
ALTER TABLE `facilitator`
  ADD PRIMARY KEY (`facilitatorId`),
  ADD KEY `dpart` (`departmentID`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupID`),
  ADD KEY `course` (`facilitatorId`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberId`),
  ADD KEY `stud` (`studentId`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`moduleID`),
  ADD KEY `sded` (`departmentId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `gh` (`studentID`);

--
-- Indexes for table `ressources`
--
ALTER TABLE `ressources`
  ADD PRIMARY KEY (`ressourceID`),
  ADD KEY `des` (`userId`),
  ADD KEY `de` (`courseId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courseAssignment`
--
ALTER TABLE `courseAssignment`
  ADD CONSTRAINT `assignment` FOREIGN KEY (`courseId`) REFERENCES `courses` (`courseID`),
  ADD CONSTRAINT `facilit` FOREIGN KEY (`facilitatorId`) REFERENCES `facilitator` (`facilitatorId`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `facilitf` FOREIGN KEY (`departmentId`) REFERENCES `Department` (`departmentID`),
  ADD CONSTRAINT `mdle` FOREIGN KEY (`moduleID`) REFERENCES `modules` (`moduleID`);

--
-- Constraints for table `facilitator`
--
ALTER TABLE `facilitator`
  ADD CONSTRAINT `dpart` FOREIGN KEY (`departmentID`) REFERENCES `Department` (`departmentID`);

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `course` FOREIGN KEY (`facilitatorId`) REFERENCES `facilitator` (`facilitatorId`);

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `stud` FOREIGN KEY (`studentId`) REFERENCES `students` (`studentId`);

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `sded` FOREIGN KEY (`departmentId`) REFERENCES `Department` (`departmentID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `gh` FOREIGN KEY (`studentID`) REFERENCES `students` (`studentId`);

--
-- Constraints for table `ressources`
--
ALTER TABLE `ressources`
  ADD CONSTRAINT `de` FOREIGN KEY (`courseId`) REFERENCES `courses` (`courseID`),
  ADD CONSTRAINT `des` FOREIGN KEY (`userId`) REFERENCES `students` (`studentId`),
  ADD CONSTRAINT `ress` FOREIGN KEY (`userId`) REFERENCES `facilitator` (`facilitatorId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
