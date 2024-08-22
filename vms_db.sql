  -- phpMyAdmin SQL Dump
  -- version 5.2.1
  -- https://www.phpmyadmin.net/
  --
  -- Host: 127.0.0.1
  -- Generation Time: Aug 22, 2024 at 11:02 AM
  -- Server version: 10.4.32-MariaDB
  -- PHP Version: 8.2.12

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
  -- Table structure for table `tbl_department`
  --

  CREATE TABLE `tbl_department` (
    `id` int(11) NOT NULL,
    `name` varchar(30) NOT NULL,
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

  INSERT INTO `tbl_department` (`id`, `name`, `deptname`, `des`, `mobile`, `email`, `hod`, `username`, `pwd`, `role`, `in_time`, `status`, `created_at`) VALUES
  (17, 'Lohithya', 'HOD', 'HOD', '9638521478', 'lohithya@gmail.com', 'YES', 'Lohithya123', '1234', 'HOD', '', 0, '2024-08-20 05:08:55'),
  (18, 'Saranya', 'HOD', 'HOD', '8794652103', 'saranya@gmail.com', 'YES', 'saranya123', '1234', 'HOD', '', 0, '2024-08-20 05:19:29'),
  (19, 'Snekha', 'HOD', 'HOD', '9571269841', 'snekha@gmail.com', 'YES', 'Snekha123', '1234', 'HOD', '', 0, '2024-08-20 05:20:00'),
  (20, 'Dharshini Priya', 'HOD', 'HOD', '9384454264', 'dharshinipriya@gmail.com', 'YES', 'dharshini', '1234', 'HOD', '', 0, '2024-08-20 05:24:11'),
  (21, 'Naveen', 'IT', 'Developer', '9638521478', 'naveen@gmail.com', 'NO', 'naveen55', '1234', 'IT', '', 0, '2024-08-20 05:25:15'),
  (22, 'Vignesh', 'IT', 'Developer', '9571269841', 'vicky@gmail.com', 'NO', 'vignesh', '1234', 'IT', '', 0, '2024-08-20 05:25:44'),
  (23, 'Sriram', 'IT', 'Designer', '9571269841', 'sriram@gmail.com', 'NO', 'sriram23', '1234', 'IT', '', 0, '2024-08-20 05:26:25'),
  (24, 'Darani', 'IT', 'Designer', '9571269841', 'darani@gmail.com', 'NO', 'darani123', '1234', 'IT', '', 0, '2024-08-20 05:27:58'),
  (25, 'Adhithiyan', 'HR', 'HR recuriter', '9513574862', 'adhithiyan@gmail.com', 'NO', 'Adhithiyan22', '1234', 'HR', '', 0, '2024-08-20 05:29:15'),
  (26, 'Danasri', 'HR', 'HR recuriter', '8794652103', 'danasri@gmail.com', 'NO', 'Danasri77', '1234', 'HR', '', 0, '2024-08-20 05:30:09'),
  (27, 'Prithisha', 'HR', 'HR Generalist', '9638521478', 'prithisha@gmail.com', 'NO', 'prithisha88', '1234', 'HR', '', 0, '2024-08-20 05:31:29'),
  (28, 'Malini', 'HR', 'Trainee', '6371269841', 'malini@gmail.com', 'NO', 'malini99', '1234', 'HR', '', 0, '2024-08-20 05:35:27'),
  (29, 'Samyuktha', 'Staff', 'SD Trainee', '9513574862', 'samyu@gmail.com', 'NO', 'Samyu25', '1234', 'General staff', '', 0, '2024-08-20 05:36:38'),
  (30, 'Preethi', 'Staff', 'Trainee', '9384454264', 'preethi@gmail.com', 'NO', 'preethi', '1234', 'General staff', '', 0, '2024-08-20 05:38:14'),
  (31, 'Ramya', 'Staff', 'Trainee', '9638521478', 'ramya@gmail.com', 'NO', 'ramya56', '1234', 'General staff', '', 0, '2024-08-20 05:38:46'),
  (32, 'Anitha', 'Staff', 'Trainee', '8794652103', 'anitha@gmail.com', 'NO', 'Anitha12', '1234', 'General staff', '', 0, '2024-08-20 05:39:19'),
  (33, 'Bennet', 'Staff', 'Mobile Developer', '6513574862', 'bennat@gmail.com', 'NO', 'bennat', '1234', 'General staff', '', 0, '2024-08-20 05:40:13'),
  (34, 'Sanjay', 'Staff', 'Trainee', '9638521478', 'sanjay@gmail.com', 'NO', 'sanjay66', '1234', 'General staff', '', 0, '2024-08-20 05:50:21'),
  (35, 'Anodas', 'Staff', 'Website Designer', '8794652103', 'anodas@gmail.com', 'NO', 'anodas33', '1234', 'General staff', '', 0, '2024-08-20 05:51:20'),
  (36, 'Saiful', 'Staff', 'Developer', '87945652103', 'saiful@gmail.com', 'NO', 'saiful78', '1234', 'General staff', '', 0, '2024-08-20 05:52:02'),
  (37, 'Jerbin', 'Staff', 'Trainee', '9632594114', 'jerbin@gmail.com', 'NO', 'Jerbin23', '1234', 'General staff', '', 0, '2024-08-20 05:52:43'),
  (38, 'Pranav', 'Staff', 'Destop Engineer', '9513574862', 'pranav@gmail.com', 'NO', 'pranav', '1234', 'General staff', '', 0, '2024-08-20 05:53:31');

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
  (1, 'admin', 'admin@gmail.com', 'admin', '2024-08-07 04:03:18');

  -- --------------------------------------------------------

  --
  -- Table structure for table `tbl_visitors`
  --

  CREATE TABLE `tbl_visitors` (
    `id` int(11) NOT NULL,
    `No_of_person` varchar(30) NOT NULL,
    `name` varchar(255) NOT NULL,
    `cno` varchar(255) NOT NULL,
    `email` varchar(10) NOT NULL,
    `organization` varchar(255) NOT NULL,
    `location` varchar(255) NOT NULL,
    `no_of_vec` varchar(255) NOT NULL,
    `vectype` varchar(255) NOT NULL,
    `vecregno` varchar(255) NOT NULL,
    `no_of_phones` varchar(255) NOT NULL,
    `no_of_laptop` varchar(30) NOT NULL,
    `lapsrno` varchar(30) NOT NULL,
    `lapmodel` varchar(30) NOT NULL,
    `no_of_charger` varchar(30) NOT NULL,
    `visit` varchar(30) NOT NULL,
    `meet` varchar(30) NOT NULL,
    `status` int(30) NOT NULL,
    `in_time` varchar(30) NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

  --
  -- Dumping data for table `tbl_visitors`
  --

  INSERT INTO `tbl_visitors` (`id`, `No_of_person`, `name`, `cno`, `email`, `organization`, `location`, `no_of_vec`, `vectype`, `vecregno`, `no_of_phones`, `no_of_laptop`, `lapsrno`, `lapmodel`, `no_of_charger`, `visit`, `meet`, `status`, `in_time`, `created_at`) VALUES
  (8, '2', 'Rambo', '9265894212', 'rambo@gmai', 'BlueBase', 'Chennai', '1', 'two wheeler', '5421', '1', '1', '564125AX952', 'Asus', '1', 'Interview', 'Jillu', 0, '2024-08-22T09:43', '2024-08-22 04:13:55'),
  (9, '2', 'Array', 'Array', 'Array', 'BlueBase', 'Chennai', '1', 'two wheeler', '5421', '1', '1', '564125AX952', 'Asus', '1', 'Interview', 'Jillu', 0, '2024-08-22T12:18', '2024-08-22 06:48:50'),
  (10, '2', 'Array', 'Array', 'Array', 'BlueBase', 'Chennai', '1', 'two wheeler', '5421', '1', '1', '564125AX952', 'Asus', '1', 'Interview', 'Jillu', 0, '2024-08-22T12:18', '2024-08-22 06:49:15'),
  (11, '2', 'Array', 'Array', 'Array', 'BlueBase', 'Chennai', '1', 'two wheeler', '5421', '1', '1', '564125AX952', 'Asus', '1', 'Interview', 'Jillu', 0, '2024-08-22T12:18', '2024-08-22 06:49:49'),
  (12, '2', 'Mahima', '6589421259', 'mahima@gma', 'BlueBase', 'Chennai', '1', 'two wheeler', '5421', '1', '1', '564125AX952', 'Asus', '2', 'Interview', 'Jillu', 0, '2024-08-22T12:20', '2024-08-22 06:51:05');

  --
  -- Indexes for dumped tables
  --

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
  -- AUTO_INCREMENT for table `tbl_department`
  --
  ALTER TABLE `tbl_department`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

  --
  -- AUTO_INCREMENT for table `tbl_users`
  --
  ALTER TABLE `tbl_users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

  --
  -- AUTO_INCREMENT for table `tbl_visitors`
  --
  ALTER TABLE `tbl_visitors`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
  COMMIT;

  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
