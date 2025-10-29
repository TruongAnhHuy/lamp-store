-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2025 at 11:52 AM
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
-- Database: `quanlysanpham`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MaKH` int(10) NOT NULL,
  `TenKH` varchar(50) NOT NULL,
  `NoiDung` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`MaKH`, `TenKH`, `NoiDung`) VALUES
(1, 'Nguyễn Văn A', ''),
(2, 'Trần Văn B', ''),
(3, 'Trần Văn C', ''),
(4, 'Lê Văn D', ''),
(5, 'Trần Quang G', '');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `IDSP` int(10) NOT NULL,
  `IDDH` int(10) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`IDSP`, `IDDH`, `DonGia`, `SoLuong`) VALUES
(101, 201, 2000000, 1),
(102, 202, 3000000, 2),
(103, 203, 4000000, 3),
(104, 204, 5000000, 4),
(105, 205, 6000000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(50) NOT NULL,
  `Email` longtext NOT NULL,
  `SDT` int(11) NOT NULL,
  `Content` varchar(100) NOT NULL,
  `TrangThai` varchar(20) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `SDT`, `Content`, `TrangThai`, `UserID`) VALUES
('Nguyễn Văn A', 'tt@caothang.edu.vn', 123456789, '', '', 123),
('Trần Văn B', 'bb@caothang.edu.vn', 123456788, '', '', 234);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID` int(10) NOT NULL,
  `TenDM` varchar(50) NOT NULL,
  `TrangThai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`ID`, `TenDM`, `TrangThai`) VALUES
(201, 'Đèn trang trí', 'Hoạt động'),
(202, 'Đèn học sinh', 'Hoạt động'),
(203, 'Đèn phòng ngủ', 'Hoạt động');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `IDDonHang` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `TGMua` datetime NOT NULL,
  `UserID_Sale` int(10) NOT NULL,
  `TrangThai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`IDDonHang`, `UserID`, `TGMua`, `UserID_Sale`, `TrangThai`) VALUES
(1001, 123, '2025-10-12 00:00:00', 1, 'Đang Giao'),
(1002, 234, '2025-06-02 00:00:00', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(10) NOT NULL,
  `TenSP` varchar(50) NOT NULL,
  `Gia` decimal(10,0) NOT NULL,
  `GiaKhuyenMai` decimal(10,0) NOT NULL,
  `Hinh` longtext DEFAULT NULL,
  `MoTa` varchar(50) NOT NULL,
  `MaDM` int(10) NOT NULL,
  `Tags` varchar(20) NOT NULL,
  `TrangThai` varchar(30) NOT NULL,
  `UserID` int(10) NOT NULL,
  `Loai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `Gia`, `GiaKhuyenMai`, `Hinh`, `MoTa`, `MaDM`, `Tags`, `TrangThai`, `UserID`, `Loai`) VALUES
(1, 'Đèn Nội Thất 1', 2000000, 1800000, '', 'Dùng để trang trí ', 10, '', 'Còn hàng', 123, 'Vật dụng gia đình'),
(2, 'Đèn Nội Thất 2', 3000000, 1900000, '', 'Dùng để trang trí ', 20, '', 'Còn hàng', 234, 'Vật dụng gia đình'),
(3, 'Đèn Nội Thất 3', 4000000, 1700000, '', 'Dùng để trang trí ', 30, '', 'Hết hàng', 345, 'Vật dụng gia đình'),
(4, 'Đèn Nội Thất 4', 5000000, 1500000, '', 'Dùng để trang trí ', 40, '', 'Còn hàng', 456, 'Vật dụng gia đình'),
(5, 'Đèn Nội Thất 5', 6000000, 1600000, '', 'Dùng để trang trí ', 50, '', 'Hết hàng', 567, 'Vật dụng gia đình'),
(6, 'Đèn Nội Thất 6', 1800000, 1700000, '', 'Dùng để trang trí', 60, '', 'Còn hàng', 678, 'Vật dụng gia đình'),
(7, 'Đèn Nội Thất 7', 1900000, 1800000, '', 'Dùng để trang trí', 70, '', 'Còn hàng', 789, 'Vật dụng gia đình'),
(8, 'Đèn Nội Thất 8', 1800000, 1700000, '', 'Dùng để trang trí', 80, '', 'Còn hàng', 798, 'Vật dụng gia đình'),
(9, 'Đèn Nội Thất 9', 1700000, 1600000, '', 'Dùng để trang trí', 90, '', 'Còn hàng', 238, 'Vật dụng gia đình'),
(10, 'Đèn Nội Thất 10', 1800000, 1700000, '', 'Dùng để trang trí', 100, '', 'Hết hàng', 355, 'Vật dụng gia đình'),
(11, 'Đèn Nội Thất 11', 1800000, 1700000, '', 'Dùng để trang trí', 110, '', 'Hết hàng', 355, 'Vật dụng gia đình'),
(12, 'Đèn Nội Thất 12', 1900000, 1600000, '', 'Dùng để trang trí', 120, '', 'Còn hàng', 335, 'Vật dụng gia đình'),
(13, 'Đèn Nội Thất 13', 2800000, 2700000, '', 'Dùng để trang trí', 130, '', 'Còn hàng', 325, 'Vật dụng gia đình'),
(14, 'Đèn Nội Thất 14', 1600000, 1500000, '', 'Dùng để trang trí', 140, '', 'Còn hàng', 357, 'Vật dụng gia đình'),
(15, 'Đèn Nội Thất 15', 2800000, 2300000, '', 'Dùng để trang trí', 150, '', 'Còn hàng', 395, 'Vật dụng gia đình'),
(16, 'Đèn Nội Thất 16', 1900000, 1800000, '', 'Dùng để trang trí', 160, '', 'Còn hàng', 365, 'Vật dụng gia đình'),
(17, 'Đèn Nội Thất 17', 3000000, 2700000, '', 'Dùng để trang trí', 170, '', 'Còn hàng', 389, 'Vật dụng gia đình'),
(18, 'Đèn Nội Thất 18', 1800000, 1570000, '', 'Dùng để trang trí', 180, '', 'Còn hàng', 265, 'Vật dụng gia đình'),
(19, 'Đèn Nội Thất 19', 1600000, 1500000, '', 'Dùng để trang trí', 190, '', 'Hết hàng', 986, 'Vật dụng gia đình'),
(20, 'Đèn Nội Thất 20', 1900000, 1700000, '', 'Dùng để trang trí', 200, '', 'Hết hàng', 952, 'Vật dụng gia đình'),
(21, 'Đèn Nội Thất 21', 1900000, 1700000, '', 'Dùng để trang trí', 210, '', 'Còn hàng', 934, 'Vật dụng gia đình'),
(22, 'Đèn Nội Thất 22', 1100000, 1000000, '', 'Dùng để trang trí', 220, '', 'Còn hàng', 231, 'Vật dụng gia đình'),
(23, 'Đèn Nội Thất 23', 2900000, 2700000, '', 'Dùng để trang trí', 230, '', 'Còn hàng', 786, 'Vật dụng gia đình'),
(24, 'Đèn Nội Thất 24', 1950000, 1800000, '', 'Dùng để trang trí', 240, '', 'Còn hàng', 432, 'Vật dụng gia đình'),
(25, 'Đèn Nội Thất 25', 1850000, 1600000, '', 'Dùng để trang trí', 250, '', 'Còn hàng', 899, 'Vật dụng gia đình'),
(26, 'Đèn Nội Thất 26', 2900000, 2750000, '', 'Dùng để trang trí', 260, '', 'Còn hàng', 952, 'Vật dụng gia đình'),
(27, 'Đèn Nội Thất 27', 1960000, 1800000, '', 'Dùng để trang trí', 270, '', 'Còn hàng', 666, 'Vật dụng gia đình'),
(28, 'Đèn Nội Thất 28', 2900000, 2850000, '', 'Dùng để trang trí', 280, '', 'Còn hàng', 777, 'Vật dụng gia đình'),
(29, 'Đèn Nội Thất 29', 1900000, 1800000, '', 'Dùng để trang trí', 290, '', 'Còn hàng', 888, 'Vật dụng gia đình'),
(30, 'Đèn Nội Thất 30', 1700000, 1600000, '', 'Dùng để trang trí', 300, '', 'Hết hàng', 925, 'Vật dụng gia đình'),
(31, 'Đèn Nội Thất 31', 2200000, 2100000, '', 'Dùng để trang trí', 310, '', 'Còn hàng', 956, 'Vật dụng gia đình'),
(32, 'Đèn Nội Thất 32', 2300000, 2200000, '', 'Dùng để trang trí', 320, '', 'Còn hàng', 932, 'Vật dụng gia đình'),
(33, 'Đèn Nội Thất 33', 2400000, 2300000, '', 'Dùng để trang trí', 330, '', 'Còn hàng', 912, 'Vật dụng gia đình'),
(34, 'Đèn Nội Thất 34', 2500000, 2400000, '', 'Dùng để trang trí', 340, '', 'Còn hàng', 916, 'Vật dụng gia đình'),
(35, 'Đèn Nội Thất 35', 2600000, 2500000, '', 'Dùng để trang trí', 350, '', 'Còn hàng', 899, 'Vật dụng gia đình'),
(36, 'Đèn Nội Thất 36', 2700000, 2600000, '', 'Dùng để trang trí', 360, '', 'Còn hàng', 353, 'Vật dụng gia đình'),
(37, 'Đèn Nội Thất 37', 2800000, 2700000, '', 'Dùng để trang trí', 370, '', 'Còn hàng', 112, 'Vật dụng gia đình'),
(38, 'Đèn Nội Thất 38', 2900000, 2800000, '', 'Dùng để trang trí', 380, '', 'Còn hàng', 113, 'Vật dụng gia đình'),
(39, 'Đèn Nội Thất 39', 3000000, 2900000, '', 'Dùng để trang trí', 390, '', 'Còn hàng', 117, 'Vật dụng gia đình'),
(40, 'Đèn Nội Thất 40', 3100000, 3000000, '', 'Dùng để trang trí', 400, '', 'Còn hàng', 911, 'Vật dụng gia đình'),
(41, 'Đèn Nội Thất 41', 4100000, 3000000, '', 'Dùng để trang trí', 410, '', 'Còn hàng', 922, 'Vật dụng gia đình'),
(42, 'Đèn Nội Thất 42', 4200000, 3800000, '', 'Dùng để trang trí', 420, '', 'Hết hàng', 922, 'Vật dụng gia đình'),
(43, 'Đèn Nội Thất 43', 4300000, 4200000, '', 'Dùng để trang trí', 430, '', 'Hết hàng', 933, 'Vật dụng gia đình'),
(44, 'Đèn Nội Thất 44', 4400000, 4300000, '', 'Dùng để trang trí', 440, '', 'Hết hàng', 944, 'Vật dụng gia đình'),
(45, 'Đèn Nội Thất 45', 4500000, 4400000, '', 'Dùng để trang trí', 450, '', 'Hết hàng', 955, 'Vật dụng gia đình'),
(46, 'Đèn Nội Thất 46', 4600000, 4500000, '', 'Dùng để trang trí', 460, '', 'Hết hàng', 966, 'Vật dụng gia đình'),
(47, 'Đèn Nội Thất 47', 4700000, 4600000, '', 'Dùng để trang trí', 470, '', 'Còn hàng', 977, 'Vật dụng gia đình'),
(48, 'Đèn Nội Thất 48', 4800000, 4700000, '', 'Dùng để trang trí', 480, '', 'Còn hàng', 988, 'Vật dụng gia đình'),
(49, 'Đèn Nội Thất 49', 4900000, 4800000, '', 'Dùng để trang trí', 490, '', 'Còn hàng', 999, 'Vật dụng gia đình'),
(50, 'Đèn Nội Thất 50', 5000000, 4900000, '', 'Dùng để trang trí', 500, '', 'Còn hàng', 919, 'Vật dụng gia đình'),
(57, 'đèn học 1', 100000, 50000, NULL, 'đây là đèn học', 0, '', 'Còn hàng', 1, 'Đèn học'),
(58, 'đèn học 2', 100000, 50000, NULL, 'đây là đèn học', 0, '', 'Còn hàng', 1, 'Đèn học');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JQMrr1lzd2nQzr0bFNJQKqJRxV1vZbLqyxOXiOKU', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZEJxdkUyUDhJb0owSXhwMERySlk3TTJUTWJmR0E4WTdNc2ZxZVZIaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1761264593),
('UyZjonNIMNoY7Gav2uEPnRRq9qcTuFDK0Fk6mnyL', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUzhCb1Y0eU0zR1I1cmE5bk5tUTJ1QmNRVVlsS1pkR3NZMUhhWHRpZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hZGQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1761734733);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$9.G.IkTLCjUMLxGl0Q2lS.DZm39f6mJB0RxsghaWbIsmmM5QFB8ui', NULL, '2025-10-14 06:06:17', '2025-10-14 06:06:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
