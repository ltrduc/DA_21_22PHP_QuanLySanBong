-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2022 at 04:43 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cnpm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(255) NOT NULL,
  `staff` int(255) NOT NULL,
  `customer` int(255) DEFAULT NULL,
  `total_bill` int(255) NOT NULL,
  `activate` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `staff`, `customer`, `total_bill`, `activate`) VALUES
(69, 0, 174, 900000, 1),
(70, 14, 176, 500000, 1),
(71, 0, 177, 450000, 0),
(72, 0, 179, 900000, 1),
(73, 0, 178, 250000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(255) NOT NULL,
  `seri` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `price` int(255) NOT NULL,
  `network` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `seri`, `number`, `price`, `network`, `status`) VALUES
(1, 947832693, 621225988, 10000, 'Viettel', 1),
(2, 177788302, 168802290, 10000, 'Viettel', 1),
(8, 228335323, 440680663, 50000, 'MobiFone', 1),
(10, 582278936, 359133685, 100000, 'MobiFone', 0),
(14, 792886321, 178772791, 20000, 'Viettel', 1),
(15, 727854733, 639395448, 500000, 'Vietnamobile', 0),
(16, 548902411, 142000805, 500000, 'Vietnamobile', 0),
(17, 909682023, 522449474, 50000, 'MobiFone', 1),
(18, 913937816, 204894836, 500000, 'Viettel', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(255) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `price` int(255) DEFAULT NULL,
  `activate` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `fullname`, `phone`, `price`, `activate`) VALUES
(11, 'minhhoa', 'minhhoa', 'Nguyễn Thị Minh Hoa', 377025444, 49550000, 1),
(12, 'triduc', 'triduc', 'Lê Trí Đức', 907208755, NULL, 1),
(13, 'minhtai', 'minhtai', 'Trần Minh Tài', 907208725, 50000, 1),
(14, 'tanhoang', 'tanhoang', 'Hoàng Nhật Tân', 907208754, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_order` date NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sport` int(255) NOT NULL,
  `time` int(255) NOT NULL,
  `deposit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activate` int(1) NOT NULL DEFAULT 1,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `phone`, `date_order`, `email`, `sport`, `time`, `deposit`, `description`, `activate`, `username`, `status`) VALUES
(174, 'Nguyễn Quốc Đạt', '0907208755', '2022-01-14', 'email@domain.com', 12, 3, '450000', '', 0, '', 0),
(175, 'Hoàng Nhật Tân', '0564321244', '2022-01-15', 'email@domain.com', 9, 1, '250000', '', 1, '', 1),
(176, 'Phạm Long Tony', '0907208755', '2022-01-14', 'email@domain.com', 9, 4, '250000', '', 0, '', 0),
(177, 'Nguyễn Thị Minh Hoa', '377025445', '2022-01-15', NULL, 12, 3, '450000', NULL, 0, 'minhhoa', 0),
(178, 'Nguyễn Thị Thảo Như', '0377025445', '2022-01-15', 'email@domain.com', 9, 3, '250000', '', 0, '', 0),
(179, 'Trần Minh Tài', '907208725', '2022-01-15', NULL, 12, 1, '450000', NULL, 0, 'minhtai', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `id` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(255) NOT NULL,
  `deposit` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`id`, `name`, `price`, `deposit`) VALUES
(9, 'Sân bóng 5:5', 500000, 250000),
(12, 'Sân bóng 7:7', 900000, 450000);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` int(255) NOT NULL,
  `role` int(1) NOT NULL,
  `activate` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `address`, `salary`, `role`, `activate`) VALUES
(14, 'longnguyen', '123456', 'Nguyễn Hoàng Long', 'nguyenlong@gmail.com', 907208722, 'Thành phố Hồ Chí Minh', 10000000, 2, 1),
(15, 'tranthikieu', '123456', 'Trần Thị Kiều', 'trankieu@gmail.com', 377025445, 'Thành Phố Sa Đéc, tỉnh Đồng Tháp', 7500000, 1, 1),
(17, 'bangbangpham', 'bangbangpham', 'Phạm Băng Băng', 'email@domain.com', 377025445, 'Thành phố Hồ Chí Minh', 10000000, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(255) NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `start`, `end`) VALUES
(1, '06:00:00', '07:00:00'),
(2, '07:00:00', '08:00:00'),
(3, '08:00:00', '09:00:00'),
(4, '09:00:00', '10:00:00'),
(5, '10:00:00', '11:00:00'),
(6, '14:00:00', '15:00:00'),
(7, '15:00:00', '16:00:00'),
(8, '16:00:00', '17:00:00'),
(9, '17:00:00', '18:00:00'),
(10, '18:00:00', '19:00:00'),
(12, '19:00:00', '20:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
