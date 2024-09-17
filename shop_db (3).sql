-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Sep 2024 pada 06.00
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(54, 'polo giordano', '500000', '194d005a-ba41-47b7-985e-2613aff6e37f.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(100) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` int(10) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_products`, `total_price`) VALUES
(57, '2', '2', '1@gmail.com', 'cash on delivery', '2', '2', '2', '2', '2', 2, 'gunung seminung (1) , pantai bidadari (1) , danau ranau (1) ', '37'),
(58, '2', '2', '1@gmail.com', 'cash on delivery', '2', '2', '2', '2', '2', 2, 'gunung seminung (1) , pantai bidadari (1) , danau ranau (1) ', '37000'),
(59, '2', '2', '1@gmail.com', 'cash on delivery', '2', '2', '2', '2', '2', 2, 'gunung seminung (1) , pantai bidadari (1) , danau ranau (1) ', '37000'),
(60, '2', '2', '1@gmail.com', 'cash on delivery', '1', '1', '1', '1', '1', 1, 'gunung seminung (1) , pantai bidadari (1) , danau ranau (1) ', '37000'),
(61, 'rangga', '0812345678', 'rangga@gmail.com', 'credit cart', 'jalan panca usaha', 'lorong kenanga', 'palembang', 'seberang ulu 1', 'indonesia', 1234, 'gunung seminung (3) , air terjun niagara (2) ', '55000'),
(62, 'rangga', '0812345678', 'rangga@gmail.com', 'credit cart', 'jalan silaberanti', 'gang taqwa', 'palembang', 'plaju', 'indonesia', 1233, 'arung jeram (1) , air terjun niagara (1) , danau ranau (2) ', '66000'),
(63, 'naufal', '081272031606', 'nafualjr205@gmail', 'credit cart', 'jalan', 'jalan jalan', 'palembang', 'kemuning', 'indonesia', 123, 'gunung seminung (1) , arung jeram (1) , air terjun niagara (1) ', '55000'),
(64, 'naufal', '08', 'naufaljr205@gmail.coom', 'credit cart', 'jln', 'jln', 'palembang', 'kemuning', 'indonesia', 1233, 'gunung seminung (1) , arung jeram (1) , air terjun niagara (1) ', '55000'),
(65, 'naufal', '123', 'admin@example.com', 'credit cart', 'jln silaberanti', 'lorong siantan', 'palembang', 'kemuning', 'indonesia', 123, 'air terjun niagara (1) , kopi nako (1) ', '25000'),
(66, 'naufal', '123', 'admin@example.com', 'cash on delivery', '123', '123', '123', '123', '123', 123, 'kopi nako (1) , baju (1) ', '50000'),
(67, 'naufal', '123', 'admin@example.com', 'cash on delivery', '123', '123', '123', '123', '123', 123, 'kopi nako (1) , baju (1) ', '50000'),
(68, 'naufal', '123', 'admin@example.com', 'cash on delivery', '123', '123', '123', '123', '123', 123, 'kopi nako (1) , baju (1) ', '50000'),
(69, 'afjsafjsl', '9123132', 'naufaljr205@gmail.coom', 'credit cart', 'afjsadfj', 'dsafjsafdj', 'sdafjsadfj', 'sadfjsafdj', 'sdafjsa', 123, 'kopi nako (1) , baju (1) ', '50000'),
(70, 'naufal dhiya ulhag', '081234572332', 'naufaljr205@gmail.coom', 'cash on delivery', 'silaberanti', 'gang taqwa', 'palembang', 'kemuning', 'indo', 123, 'polo giordano (1) ', '500000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(37, 'kopi nako', '20000', '194d005a-ba41-47b7-985e-2613aff6e37f.jpg'),
(41, 'polo giordano', '500000', '194d005a-ba41-47b7-985e-2613aff6e37f.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
