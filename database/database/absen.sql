-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 03:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_absensi_updated`
--

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id_positions` int(11) NOT NULL,
  `position_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id_positions`, `position_name`) VALUES
(1, 'Dokter'),
(2, 'Perawat '),
(3, 'Apoteker'),
(4, 'Akuntan');

-- --------------------------------------------------------

--
-- Table structure for table `presents`
--

CREATE TABLE `presents` (
  `id_presents` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `information` char(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presents`
--

INSERT INTO `presents` (`id_presents`, `user_id`, `date`, `time`, `information`, `status`) VALUES
(36, 19, '2020-08-27', '09:00:32', 'M', 1),
(37, 19, '2020-08-27', '09:00:35', 'I', 2),
(38, 19, '2020-08-27', '09:00:38', 'S', 2),
(39, 21, '2023-12-22', '08:55:22', 'M', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_roles` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_roles`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `no_employee` char(18) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(1) NOT NULL,
  `position_id` int(11) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `no_employee`, `name`, `gender`, `email`, `photo`, `password`, `role_id`, `position_id`, `date_created`) VALUES
(1, '', 'Administrator', '', 'admin@gmail.com', NULL, '$2y$10$VqvV0UfbaEhwfR0v1nQUOOz0SY461B3Q41cwaHiqocwfN5uG9lUge', 1, 0, '2020-04-14'),
(6, '147809542832971391', 'Dr. Fitri putsi', 'P', 'vina@gmail.com', 'b213d2e497b7d4cbf7ac9576282df160.jpg', '$2y$10$iXn5ihHs9ySSDgfw1uKqFuMd3ONHovXLfUr4O1J/fbocqvxShZ/oC', 2, 1, '2020-04-15'),
(12, '196201171989112002', 'Nagita silvono', 'P', 'reygitavina@gmail.com', 'fe1ad04bb02924855045a192dfcf9a8e.jpg', '$2y$10$Y4OmoEmz7SrfaA.xNrUXxOPnBXmURB60LQaiR/TAVQb6cmeev.W/u', 2, 2, '2020-06-09'),
(16, '182620117479891120', 'shinta yunishar', 'P', 'anggitwidya@gmail.com', NULL, '$2y$10$6H8kd8h3kKkERt94TsWRJeqJciwYF041N2dRl.MtYlfTAOFwHy18u', 2, 3, '2020-06-25'),
(17, '136202151689112012', 'anang', 'L', 'bubu@gmail.com', NULL, '$2y$10$rRtPxgXKTQNa1P7v3sXszerGM0gJKGLXoujHsn/1DQj4IaYCe2zu.', 2, 4, '2020-08-13'),
(21, '12121212', 'kasep', 'L', 'kasep@gmail.com', 'be7dc4027a89c392711e1ce312791db0.png', '$2y$10$cWWtRuM..PudslbXCK2f0eqXVdnfk72rEOVQIh7JCZr8ogr7YAbIO', 2, 2, '2023-12-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id_positions`);

--
-- Indexes for table `presents`
--
ALTER TABLE `presents`
  ADD PRIMARY KEY (`id_presents`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_roles`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id_positions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `presents`
--
ALTER TABLE `presents`
  MODIFY `id_presents` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
