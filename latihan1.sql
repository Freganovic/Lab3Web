-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Mar 2023 pada 14.57
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `id_barang` int(10) NOT NULL,
  `Kategori` varchar(30) DEFAULT NULL,
  `Kama` varchar(30) DEFAULT NULL,
  `Gambar` varchar(100) DEFAULT NULL,
  `Harga_beli` decimal(10,0) DEFAULT NULL,
  `Harga_jual` decimal(10,0) DEFAULT NULL,
  `Stok` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `barang` (`id_barang`, `Kategori`, `Nama`, `Gambar`, `Harga_beli`, `Harga_jual`, `Stok`) VALUES
(2, 'Elektronik', 'HP Xiaomi Android', 'hp_xiaomi.png', '1000000', '1400000', 5),
(3, 'Elektronik', 'HP OPPO Android', 'hp_oppo.png', '1800000', '2300000', 5),
(6, 'Elektronik', 'HP VIVO Andorid', 'hp_vivo.png', '2300000', '2500000', 5),
(7, 'Elektronik', 'HP IPHONE Android', 'hp_iphone.png', '10000000', '11000000', 5),
(9, 'Elektronik', 'Hp Samsung Android', 'hp_samsung.png', '2300000', '2500000', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;