-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2022 at 12:09 PM
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
-- Database: `usermanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `update_at` varchar(100) NOT NULL,
  `is_active` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `created_at`, `update_at`, `is_active`) VALUES
(1, 'Bangladesh', '', '', 1),
(2, 'India', '', '', 1),
(3, 'Pakistan', '', '', 1),
(4, 'Mayanamar', '', '', 1),
(5, 'Srilanka', '', '', 1),
(6, 'Afganistan', '', '', 1),
(7, 'China', '', '', 1),
(8, 'Taiwan', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dist_id` int(10) NOT NULL,
  `created_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `is_active` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `dist_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Dhaka', 1, 'current_timestamp()', 'current_timestamp()', 1),
(2, 'Gazipur', 1, 'current_timestamp()', 'current_timestamp()', 1),
(3, 'Narayanganj', 1, 'current_timestamp()', 'current_timestamp()', 1),
(4, 'Munshiganj', 1, 'current_timestamp()', 'current_timestamp()', 1),
(5, 'Manikganj', 1, 'current_timestamp()', 'current_timestamp()', 1),
(6, 'Kishoreganj', 1, 'current_timestamp()', 'current_timestamp()', 1),
(7, 'Narsingdi', 1, 'current_timestamp()', 'current_timestamp()', 1),
(8, 'Tangail', 1, 'current_timestamp()', 'current_timestamp()', 1),
(9, 'Brahmanbaria', 2, 'current_timestamp()', 'current_timestamp()', 1),
(10, 'Comilla', 2, 'current_timestamp()', 'current_timestamp()', 1),
(11, 'Chandpur', 2, 'current_timestamp()', 'current_timestamp()', 1),
(12, 'Lakshmipur', 2, 'current_timestamp()', 'current_timestamp()', 1),
(13, 'Noakhali', 2, 'current_timestamp()', 'current_timestamp()', 1),
(14, 'Feni', 2, 'current_timestamp()', 'current_timestamp()', 1),
(15, 'Khagrachhari', 2, 'current_timestamp()', 'current_timestamp()', 1),
(16, 'Rangamati', 2, 'current_timestamp()', 'current_timestamp()', 1),
(17, 'Bandarban ', 2, 'current_timestamp()', 'current_timestamp()', 1),
(18, 'Chittagong', 2, 'current_timestamp()', 'current_timestamp()', 1),
(19, 'Cox\'s Bazar', 2, 'current_timestamp()', 'current_timestamp()', 1),
(20, 'Bagerhat', 3, 'current_timestamp()', 'current_timestamp()', 1),
(21, 'Chuadanga', 3, 'current_timestamp()', 'current_timestamp()', 1),
(22, 'Jashore', 3, 'current_timestamp()', 'current_timestamp()', 1),
(23, 'Jhenaidah', 3, 'current_timestamp()', 'current_timestamp()', 1),
(24, 'Khulna', 3, 'current_timestamp()', 'current_timestamp()', 1),
(25, 'Kushtia', 3, 'current_timestamp()', 'current_timestamp()', 1),
(26, 'Magura', 3, 'current_timestamp()', 'current_timestamp()', 1),
(27, 'Meherpur', 3, 'current_timestamp()', 'current_timestamp()', 1),
(28, 'Narail', 3, 'current_timestamp()', 'current_timestamp()', 1),
(29, 'Satkhira', 3, 'current_timestamp()', 'current_timestamp()', 1);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `divi_id` int(10) NOT NULL,
  `created_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `is_active` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`id`, `name`, `divi_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Dhaka', 1, 'current_timestamp()', 'current_timestamp()', 1),
(2, 'Chittagong', 2, 'current_timestamp()', 'current_timestamp()', 1),
(3, 'Khulna', 3, 'current_timestamp()', 'current_timestamp()', 1),
(4, 'Barishal', 4, 'current_timestamp()', 'current_timestamp()', 1),
(5, 'Rajshahi', 5, 'current_timestamp()', 'current_timestamp()', 1),
(6, 'Sylet', 6, 'current_timestamp()', 'current_timestamp()', 1),
(7, 'Rangpur', 7, 'current_timestamp()', 'current_timestamp()', 1),
(8, 'Mymensing', 8, 'current_timestamp()', 'current_timestamp()', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_office`
--

CREATE TABLE `post_office` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `created_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `is_active` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_office`
--

INSERT INTO `post_office` (`id`, `name`, `post_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Burichang Post Office', 20, 'current_timestamp()', 'current_timestamp()', 1),
(2, 'Shankuchail Post Office(3500)\r\n', 20, 'current_timestamp()', 'current_timestamp()', 1),
(3, 'Malapra Post Office', 20, 'current_timestamp()', 'current_timestamp()', 1),
(4, 'PARUARA', 20, 'current_timestamp()', 'current_timestamp()', 1),
(5, '‌জিয়াপুর পোষ্ট অ‌ফিস', 20, 'current_timestamp()', 'current_timestamp()', 1),
(6, 'Bharella Post Office\r\n', 20, 'current_timestamp()', 'current_timestamp()', 1),
(7, 'ঘিলাতলা পোস্ট অফিস', 20, 'current_timestamp()', 'current_timestamp()', 1),
(8, 'Rampur Post Office', 20, 'current_timestamp()', 'current_timestamp()', 1),
(9, 'Shimpur sub post office =3505', 20, 'current_timestamp()', 'current_timestamp()', 1),
(10, 'Bamnishair post office, 3531\r\n', 20, 'current_timestamp()', 'current_timestamp()', 1),
(11, 'Paruara Post Office', 20, 'current_timestamp()', 'current_timestamp()', 1),
(12, 'Debpur Post Office', 20, 'current_timestamp()', 'current_timestamp()', 1),
(13, 'Pir Jatrapur Post Office (3520)', 20, 'current_timestamp()', 'current_timestamp()', 1),
(14, 'Cumilla Post Office', 21, 'current_timestamp()', 'current_timestamp()', 1),
(15, 'kaliajuri post office', 21, 'current_timestamp()', 'current_timestamp()', 1),
(16, 'Halima Nagar Post Office', 21, 'current_timestamp()', 'current_timestamp()', 1),
(17, 'রাজাপারা পোস্ট অফিস(Razapara Post Office)', 21, 'current_timestamp()', 'current_timestamp()', 1),
(18, 'Rasulpur Post Office', 21, 'current_timestamp()', 'current_timestamp()', 1),
(19, 'Kotbari Post Office\r\n', 21, 'current_timestamp()', 'current_timestamp()', 1),
(20, 'Anandapur Post Office', 21, 'current_timestamp()', 'current_timestamp()', 1),
(21, 'Kandirpar Post Office', 21, 'current_timestamp()', 'current_timestamp()', 1),
(22, 'Post-E Center', 21, 'current_timestamp()', 'current_timestamp()', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upzilla`
--

CREATE TABLE `upzilla` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `up_id` int(10) NOT NULL,
  `created_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `is_active` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upzilla`
--

INSERT INTO `upzilla` (`id`, `name`, `up_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Gazipur Sadar', 2, 'current_timestamp()', 'current_timestamp()', 1),
(2, 'Kapasia ', 2, 'current_timestamp()', 'current_timestamp()', 1),
(3, 'Tongi town', 2, 'current_timestamp()', 'current_timestamp()', 1),
(4, 'Sripur', 2, 'current_timestamp()', 'current_timestamp()', 1),
(5, 'Dohar ', 1, 'current_timestamp()', 'current_timestamp()', 1),
(6, 'Keraniganj ', 1, 'current_timestamp()', 'current_timestamp()', 1),
(7, 'Dhamrai ', 1, 'current_timestamp()', 'current_timestamp()', 1),
(8, 'Savar', 1, 'current_timestamp()', 'current_timestamp()', 1),
(9, 'Nawabganj', 1, 'current_timestamp()', 'current_timestamp()', 1),
(11, 'Narayanganj Sadar Upazila', 3, 'current_timestamp()', 'current_timestamp()', 1),
(12, 'Araihazar', 3, 'current_timestamp()', 'current_timestamp()', 1),
(13, 'Rupganj ', 3, 'current_timestamp()', 'current_timestamp()', 1),
(14, 'Bandar ', 3, 'current_timestamp()', 'current_timestamp()', 1),
(15, 'Sonargaon', 3, 'current_timestamp()', 'current_timestamp()', 1),
(16, 'Siddhirganj ', 3, 'current_timestamp()', 'current_timestamp()', 1),
(17, 'Fatullah ', 3, 'current_timestamp()', 'current_timestamp()', 1),
(18, 'Barura', 10, 'current_timestamp()', 'current_timestamp()', 1),
(19, 'Brahmanpara', 10, 'current_timestamp()', 'current_timestamp()', 1),
(20, 'Burichong', 10, 'current_timestamp()', 'current_timestamp()', 1),
(21, 'Cumilla Adarsha Sadar', 10, 'current_timestamp()', 'current_timestamp()', 1),
(22, 'Cumilla Sadar South', 10, 'current_timestamp()', 'current_timestamp()', 1),
(23, 'Chandina', 10, 'current_timestamp()', 'current_timestamp()', 1),
(24, 'Chauddagram', 10, 'current_timestamp()', 'current_timestamp()', 1),
(25, 'Daudkandi', 10, 'current_timestamp()', 'current_timestamp()', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `country_id` int(10) NOT NULL,
  `division_id` int(10) NOT NULL,
  `district_id` int(10) NOT NULL,
  `upzilla_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL,
  `village_id` int(11) NOT NULL,
  `is_active` int(10) NOT NULL DEFAULT 1,
  `created_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `update_at` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `name`, `email`, `contact`, `country_id`, `division_id`, `district_id`, `upzilla_id`, `post_id`, `word_id`, `village_id`, `is_active`, `created_at`, `update_at`) VALUES
(1, 'monircse', 'monircse3973@gmail.com', '12345', 1, 2, 10, 20, 13, 1, 1, 1, '2022-08-28 14:46:03', '2022-08-28 14:46:03'),
(2, 'monircse', 'monircse3973@gmail.com', '12345', 1, 2, 10, 20, 13, 1, 1, 1, '2022-08-28 15:54:05', '2022-08-28 15:54:05'),
(3, 'monircse', 'monircse3973@gmail.com', '12345', 3, 2, 10, 20, 13, 1, 1, 1, '2022-08-28 15:56:00', '2022-08-28 15:56:00'),
(4, 'Demo Product', 'saiyad@gmail.com', '12345', 1, 2, 10, 20, 13, 1, 1, 1, '2022-08-28 15:57:57', '2022-08-28 15:57:57'),
(5, 'Asiqul', 'monircse3973@gmail.com', '12345', 1, 2, 10, 20, 13, 1, 1, 1, '2022-08-28 16:00:34', '2022-08-28 16:00:34'),
(6, 'Asiqul', 'monircse3973@gmail.com', '12345', 2, -1, 0, 0, 0, 0, 0, 1, '2022-08-28 16:08:13', '2022-08-28 16:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE `village` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `village_id` int(10) NOT NULL,
  `created_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `is_active` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`id`, `name`, `village_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Dhakkin Shampur', 1, 'current_timestamp()', 'current_timestamp()', 1),
(2, 'Uttar Shampur', 1, 'current_timestamp()', 'current_timestamp()', 1),
(3, 'Kumalla', 1, 'current_timestamp()', 'current_timestamp()', 1),
(4, 'Sadakpur', 2, 'current_timestamp()', 'current_timestamp()', 1),
(5, 'Noapara', 4, 'current_timestamp()', 'current_timestamp()', 1);

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `word_id` int(10) NOT NULL,
  `created_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `is_active` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `word`
--

INSERT INTO `word` (`id`, `name`, `word_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'word_1', 13, 'current_timestamp()', 'current_timestamp()', 1),
(2, 'word_2', 13, 'current_timestamp()', 'current_timestamp()', 1),
(3, 'word_3', 13, 'current_timestamp()', 'current_timestamp()', 1),
(4, 'word_4', 13, 'current_timestamp()', 'current_timestamp()', 1),
(5, 'word_7', 14, 'current_timestamp()', 'current_timestamp()', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_office`
--
ALTER TABLE `post_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upzilla`
--
ALTER TABLE `upzilla`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_office`
--
ALTER TABLE `post_office`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `upzilla`
--
ALTER TABLE `upzilla`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `village`
--
ALTER TABLE `village`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
