-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 01:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_det`
--

CREATE TABLE `add_det` (
  `id` int(11) NOT NULL,
  `deptname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_det`
--

INSERT INTO `add_det` (`id`, `deptname`) VALUES
(1, 'HOD'),
(2, 'HR');

-- --------------------------------------------------------

--
-- Table structure for table `des_table`
--

CREATE TABLE `des_table` (
  `id` int(30) NOT NULL,
  `dept_id` int(30) NOT NULL,
  `des` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `des_table`
--

INSERT INTO `des_table` (`id`, `dept_id`, `des`) VALUES
(1, 1, 'Trainee'),
(2, 1, 'junior'),
(3, 2, 'Trainee'),
(4, 1, 'Senior'),
(5, 2, 'HR recuriter');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(11) NOT NULL,
  `deptname` varchar(15) NOT NULL,
  `des` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `hod` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `in_time` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `fname`, `lname`, `deptname`, `des`, `mobile`, `email`, `hod`, `username`, `pwd`, `role`, `in_time`, `status`, `created_at`) VALUES
(17, 'Lohithya', '', 'HOD', 'HOD', '9638521478', 'lohithya@gmail.com', 'YES', 'Lohithya123', '1234', 'HOD', '', 0, '2024-08-20 05:08:55'),
(18, 'Saranya', '', 'HOD', 'HOD', '8794652103', 'saranya@gmail.com', 'YES', 'saranya123', '1234', 'HOD', '', 0, '2024-08-20 05:19:29'),
(19, 'Snekha', '', 'HOD', 'HOD', '9571269841', 'snekha@gmail.com', 'YES', 'Snekha123', '1234', 'HOD', '', 0, '2024-08-20 05:20:00'),
(20, 'Dharshini Priya', '', 'HOD', 'HOD', '9384454264', 'dharshinipriya@gmail.com', 'YES', 'dharshini', '1234', 'HOD', '', 0, '2024-08-20 05:24:11'),
(21, 'Naveen', '', 'IT', 'Developer', '9638521478', 'naveen@gmail.com', 'NO', 'naveen55', '1234', 'IT', '', 0, '2024-08-20 05:25:15'),
(22, 'Vignesh', '', 'IT', 'Developer', '9571269841', 'vicky@gmail.com', 'NO', 'vignesh', '1234', 'IT', '', 0, '2024-08-20 05:25:44'),
(23, 'Sriram', '', 'IT', 'Designer', '9571269841', 'sriram@gmail.com', 'NO', 'sriram23', '1234', 'IT', '', 0, '2024-08-20 05:26:25'),
(24, 'Darani', '', 'IT', 'Designer', '9571269841', 'darani@gmail.com', 'NO', 'darani123', '1234', 'IT', '', 0, '2024-08-20 05:27:58'),
(25, 'Adhithiyan', '', 'HR', 'HR recuriter', '9513574862', 'adhithiyan@gmail.com', 'NO', 'Adhithiyan22', '1234', 'HR', '', 0, '2024-08-20 05:29:15'),
(26, 'Danasri', '', 'HR', 'HR recuriter', '8794652103', 'danasri@gmail.com', 'NO', 'Danasri77', '1234', 'HR', '', 0, '2024-08-20 05:30:09'),
(27, 'Prithisha', '', 'HR', 'HR Generalist', '9638521478', 'prithisha@gmail.com', 'NO', 'prithisha88', '1234', 'HR', '', 0, '2024-08-20 05:31:29'),
(28, 'Malini', '', 'HR', 'Trainee', '6371269841', 'malini@gmail.com', 'NO', 'malini99', '1234', 'HR', '', 0, '2024-08-20 05:35:27'),
(29, 'Samyuktha', '', 'Staff', 'SD Trainee', '9513574862', 'samyu@gmail.com', 'NO', 'Samyu25', '1234', 'General staff', '', 0, '2024-08-20 05:36:38'),
(30, 'Preethi', '', 'Staff', 'Trainee', '9384454264', 'preethi@gmail.com', 'NO', 'preethi', '1234', 'General staff', '', 0, '2024-08-20 05:38:14'),
(31, 'Ramya', '', 'Staff', 'Trainee', '9638521478', 'ramya@gmail.com', 'NO', 'ramya56', '1234', 'General staff', '', 0, '2024-08-20 05:38:46'),
(32, 'Anitha', '', 'Staff', 'Trainee', '8794652103', 'anitha@gmail.com', 'NO', 'Anitha12', '1234', 'General staff', '', 0, '2024-08-20 05:39:19'),
(33, 'Bennet', '', 'Staff', 'Mobile Developer', '6513574862', 'bennat@gmail.com', 'NO', 'bennat', '1234', 'General staff', '', 0, '2024-08-20 05:40:13'),
(34, 'Sanjay', '', 'Staff', 'Trainee', '9638521478', 'sanjay@gmail.com', 'NO', 'sanjay66', '1234', 'General staff', '', 0, '2024-08-20 05:50:21'),
(35, 'Anodas', '', 'Staff', 'Website Designer', '8794652103', 'anodas@gmail.com', 'NO', 'anodas33', '1234', 'General staff', '', 0, '2024-08-20 05:51:20'),
(36, 'Saiful', '', 'Staff', 'Developer', '87945652103', 'saiful@gmail.com', 'NO', 'saiful78', '1234', 'General staff', '', 0, '2024-08-20 05:52:02'),
(37, 'Jerbin', '', 'Staff', 'Trainee', '9632594114', 'jerbin@gmail.com', 'NO', 'Jerbin23', '1234', 'General staff', '', 0, '2024-08-20 05:52:43'),
(38, 'Pranav', '', 'Staff', 'Destop Engineer', '9513574862', 'pranav@gmail.com', 'NO', 'pranav', '1234', 'General staff', '', 0, '2024-08-20 05:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user_name`, `emailid`, `password`, `created_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '2024-08-07 04:03:18'),
(2, 'hod', 'hod@gmail.com', 'hod', '2024-09-06 06:47:42'),
(3, 'IT', 'it@gmail.com', 'it', '2024-09-06 06:40:26'),
(4, 'staff', 'staff@gmail.com', 'staff', '2024-09-06 06:40:57'),
(5, 'timeoffice', 'timeoffice@gmail.com', 'timeoffice', '2024-09-06 06:43:20'),
(6, 'hr', 'hr@gmail.com', 'hr', '2024-09-06 09:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitors`
--

CREATE TABLE `tbl_visitors` (
  `id` int(11) NOT NULL,
  `No_of_person` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `cno` int(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `organization` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `No_of_vec` varchar(255) NOT NULL,
  `vectype` varchar(30) NOT NULL,
  `vecregno` varchar(30) NOT NULL,
  `no_of_phones` varchar(255) NOT NULL,
  `no_of_laptop` varchar(30) NOT NULL,
  `lapsrno` varchar(30) NOT NULL,
  `lapmodel` varchar(30) NOT NULL,
  `no_of_charger` varchar(30) NOT NULL,
  `visit` varchar(30) NOT NULL,
  `meet` varchar(30) NOT NULL,
  `visitor_name` varchar(30) NOT NULL,
  `status` varchar(11) NOT NULL,
  `in_time` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_visitors`
--

INSERT INTO `tbl_visitors` (`id`, `No_of_person`, `name`, `cno`, `email`, `organization`, `location`, `No_of_vec`, `vectype`, `vecregno`, `no_of_phones`, `no_of_laptop`, `lapsrno`, `lapmodel`, `no_of_charger`, `visit`, `meet`, `visitor_name`, `status`, `in_time`, `created_at`) VALUES
(20, '4', 'NAVEEN', 2147483647, 'n@g.co', 'jgbhnm', 'coimbatore', 'yes', '12345', '12345', '2', 'yes', '123qwerty', '4567gb', '2', 'time pass', 'fun city', '', 'Approved', '2024-09-06T11:15', '2024-09-10 09:44:22'),
(21, '4', 'SAMYU', 7653, 's@g.co', 'jgbhnm', 'coimbatore', 'yes', '12345', '4563', '2', 'yes', '12221', 'dell', '2', 'time pass', 'fun city', '', 'Approved', '2024-09-06T11:15', '2024-09-10 09:34:55'),
(22, '4', 'VICKY', 7653, 'v@g.co', 'jgbhnm', 'coimbatore', 'yes', 'yamaha', '456789', '2', 'yes', '12qw1234', 'asus', '2', 'time pass', 'fun city', '', 'Approved', '2024-09-06T11:15', '2024-09-10 09:36:25'),
(23, '4', 'SRIRAM', 7653, 'sri@g.co', 'jgbhnm', 'coimbatore', 'yes', '12345', '12345343fc', '2', 'yes', '12221fds', 'asussd', '2', 'time pass', 'fun city', '', 'Approved', '2024-09-06T11:15', '2024-09-19 10:59:11'),
(24, '2', 'SNEKHA', 2147483647, 's@g.co', 'bluebase', 'guindy', 'yes', 'scooty', '6785ghsbx7', '1', 'yes', '672835289', 'bxcgd82682', '3', 'interview', 'IT', 'Bennet', 'Approved', '2024-09-10T09:30', '2024-09-10 10:50:17'),
(25, '2', 'SANKARI ', 2147483647, 's@g.co', 'bluebase', 'guindy', 'yes', 'kxsj8757', 'bxhjgd6817', '1', 'yes', 'hud37890389', 'hxuswbd876', '3', 'interview', 'IT', 'Bennet', 'Rejected', '2024-09-10T09:30', '2024-09-10 10:50:21'),
(26, '1', 'DEEKSHA', 2147483647, 'd@g.co', 'quadsel', 'anna nagar', 'yes', 'cds3213', '567232', '2', 'yes', 'hjs7836', 'xdw32ws', '2', 'meeting', 'HR', 'Malini', 'Approved', '2024-09-10T10:26', '2024-09-10 10:49:29'),
(27, '1', 'SARANYA', 2147483647, 's@g.co', 'srm', 'ramapuram', 'yes', 'fdsx321', 'dcw32wsx', '1', 'yes', 'dwcsx', 'wsad', '2', 'supervising', 'General staff', 'Samyuktha', 'Rejected', '2024-09-10T11:03', '2024-09-13 05:22:12'),
(28, '1', 'saai', 7653, 'n@g.co', 'local', 'coimbatore', 'Array', 'yes', 'TN 21 TH 8652', 'Array', 'Array', 'dell', '12', '1', 'time pass', 'General staff', 'Saiful', 'Rejected', '2024-09-19T15:01', '2024-09-19 10:54:37'),
(29, '1', 'saai', 7653, 'n@g.co', 'local', 'coimbatore', 'Array', 'yes', 'TN 21 TH 8652', 'Array', 'Array', 'dell', '12', '1', 'time pass', 'General staff', 'Saiful', '', '2024-09-19T15:01', '2024-09-19 10:16:38'),
(30, '1', 'saai', 7653, 'n@g.co', 'local', 'coimbatore', 'Array', 'yes', 'TN 21 TH 8652', 'Array', 'Array', 'dell', '12', '1', 'time pass', 'General staff', 'Saiful', '', '2024-09-19T15:01', '2024-09-19 10:16:59'),
(31, '1', 'saai', 7653, 'n@g.co', 'local', 'coimbatore', 'Array', 'yes', 'TN 21 TH 8652', '3', 'yes', 'dell', '12', '1', 'time pass', 'General staff', 'Saiful', '', '2024-09-19T15:01', '2024-09-19 10:18:02'),
(32, '1', 'saai', 7653, 'n@g.co', 'local', 'coimbatore', 'yes', 'yes', 'TN 21 TH 8652', '3', 'yes', 'dell', '12', '1', 'time pass', 'General staff', 'Saiful', '', '2024-09-19T15:01', '2024-09-19 10:18:41'),
(33, '1', 'Adhi', 2147483647, 'A@g.co', 'Qwerty', 'Vellore', 'yes', 'yes', 'qwerfcxdsfvcs', '2', 'yes', 'v vdcswedws', 'wsd232212', '1', 'Client visit', 'IT', 'Darani', 'Rejected', '2024-09-20T09:33', '2024-09-20 04:14:02'),
(34, '1', 'Adhi', 2147483647, 'A@g.co', 'Qwerty', 'Vellore', 'yes', 'yes', 'qwerfcxdsfvcs', '2', 'yes', 'v vdcswedws', 'wsd232212', '1', 'Client visit', 'IT', 'Darani', '', '2024-09-20T09:33', '2024-09-20 04:13:34'),
(35, '1', 'Home Prakash', 2147483647, 'h@g.com', 'srm', 'ramapuram', 'yes', 'yes', 'TN 21 KM 8652', '2', 'yes', '123qwerty', 'dell', '2', 'supervising', 'HR', 'Anodas', '', '2024-09-20T10:14', '2024-09-20 04:44:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_det`
--
ALTER TABLE `add_det`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `des_table`
--
ALTER TABLE `des_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_det`
--
ALTER TABLE `add_det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `des_table`
--
ALTER TABLE `des_table`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
