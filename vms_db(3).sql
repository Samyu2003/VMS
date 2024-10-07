-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 08:44 AM
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
(2, 'HR'),
(3, 'IT');

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
(2, 2, 'Trainee'),
(3, 3, 'Trainee'),
(4, 1, 'CSE'),
(5, 1, 'MECH'),
(6, 1, 'CIVIL'),
(7, 2, 'HR recuriter'),
(8, 2, 'HR executive'),
(9, 3, 'Developer'),
(10, 3, 'Designer'),
(11, 3, 'Website Designer');

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
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `fname`, `lname`, `deptname`, `des`, `mobile`, `email`, `hod`, `username`, `pwd`, `role`, `status`, `created_at`) VALUES
(1, 'Samyuktha', 'YG', '1', '4', '9513574862', 'sam@gmail.com', 'YES', 'Samyu', '1234', 'HOD', 'IN', '2024-09-26 04:58:36'),
(2, 'Vicky', 'S', '1', '5', '9513574862', 'vicky@gmail.com', 'YES', 'vicky', '1234', 'HOD', 'IN', '2024-09-26 05:04:20'),
(3, 'Sree Varsha', 'R', '1', '6', '9384454264', 'sree@gmail.com', 'YES', 'Varsha', '1234', 'HOD', 'IN', '2024-09-26 05:05:10'),
(4, 'Naveen ', 'S', '2', '8', '8794652103', 'naveen@gmail.com', 'NO', 'naveen55', '1234', 'HR', 'IN', '2024-09-26 05:06:02'),
(5, 'Sriram', 'S', '2', '7', '9638521478', 'sriram@gmail.com', 'NO', 'sriram23', '1234', 'HR', 'IN', '2024-09-26 05:06:34'),
(6, 'Malini', 'P', '2', '2', '8794652103', 'malini@gmail.com', 'NO', 'malini99', '1234', 'HR', 'IN', '2024-09-26 05:07:12'),
(7, 'Bennet', '-', '3', '9', '9638521478', 'bennat@gmail.com', 'NO', 'bennat12', '1234', 'IT', 'IN', '2024-09-26 05:08:34'),
(8, 'Saiful', 'I', '3', '9', '9513574862', 'saiful@gmail.com', 'NO', 'saiful78', '1234', 'IT', 'IN', '2024-09-26 05:09:12'),
(9, 'Pradeep', '-', '3', '10', '9513574862', 'pradeep', 'NO', 'Pradeep123', '1234', 'IT', 'IN', '2024-09-26 05:09:56'),
(10, 'Monika', 'S', '3', '3', '6571269841', 'moni@gmail.com', 'NO', 'Monika134', '1234', 'IT', 'IN', '2024-09-26 05:10:42');

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
  `mobtype` varchar(30) NOT NULL,
  `no_of_laptop` varchar(30) NOT NULL,
  `lapsrno` varchar(30) NOT NULL,
  `lapmodel` varchar(30) NOT NULL,
  `no_of_charger` varchar(30) NOT NULL,
  `visit` varchar(30) NOT NULL,
  `meet` varchar(30) NOT NULL,
  `des` varchar(30) NOT NULL,
  `visitor_name` varchar(30) NOT NULL,
  `in_time` varchar(30) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_visitors`
--

INSERT INTO `tbl_visitors` (`id`, `No_of_person`, `name`, `cno`, `email`, `organization`, `location`, `No_of_vec`, `vectype`, `vecregno`, `no_of_phones`, `mobtype`, `no_of_laptop`, `lapsrno`, `lapmodel`, `no_of_charger`, `visit`, `meet`, `des`, `visitor_name`, `in_time`, `image`, `status`, `created_at`) VALUES
(1, '1', 'DEEKSHA', 7653, 'd@g.co', 'Qwerty', 'coimbatore', 'yes', 'yes', 'TN 21 TH 8652', '2', '', 'yes', '11234', 'xdw32ws', '2', 'Adhirai', '2', '7', '', '2024-09-27T14:45', NULL, 'Approved', '2024-09-27 10:36:12'),
(2, '1', 'DEEKSHA', 7653, 'd@g.co', 'Qwerty', 'coimbatore', 'yes', 'yes', 'TN 21 TH 8652', '2', '', 'yes', '11234', 'xdw32ws', '2', 'Adhirai', '2', '7', '', '2024-09-27T14:45', NULL, '', '2024-09-27 09:19:46'),
(3, '1', 'DEEKSHA', 7653, 'd@g.co', 'Qwerty', 'coimbatore', 'yes', 'yes', 'TN 21 TH 8652', '2', '', 'yes', '11234', 'xdw32ws', '2', 'Adhirai', '', '', '', '2024-09-27T14:45', NULL, '', '2024-09-27 09:21:14'),
(4, '1', 'NAVEEN', 7653, 'd@g.co', 'hp', 'ramapuram', 'yes', 'two-wheeler', 'TN 21 TH 8652', '1', '', 'yes', '12qw1234', 'asus', '1', 'Client visit', '1', '6', '', '2024-09-27T14:54', NULL, '', '2024-09-27 09:24:14'),
(5, '1', 'NAVEEN', 7653, 'd@g.co', 'hp', 'ramapuram', 'yes', 'two-wheeler', 'TN 21 TH 8652', '1', 'With Camera', 'yes', '12qw1234', 'asus', '1', 'Client visit', '1', '6', '', '2024-09-27T14:54', NULL, '', '2024-09-27 09:27:20'),
(6, '1', 'NAVEEN', 7653, 'd@g.co', 'jgbhnm', 'dasa', 'yes', 'two-wheeler', 'TN 21 TH 8652', '1', 'With Camera', 'yes', '12221', 'xdw32ws', '1', 'Client visit', '1', '1', 'dadszxscd', '2024-09-27T15:15', NULL, '', '2024-09-27 09:47:09'),
(7, '1', 'qwerty', 1234567899, 'n@g.co', 'hotel', 'coimbatore', 'yes', 'two-wheeler', 'TN 21 TH 8652', '1', 'Without Camera', 'yes', '12221', 'dell', '2', 'Client visit', '1', '', 'Samyuktha', '2024-10-03T14:04', NULL, '', '2024-10-03 08:35:01');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `des_table`
--
ALTER TABLE `des_table`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
