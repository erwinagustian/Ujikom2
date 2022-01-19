-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2022 pada 05.48
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databantuan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(2, 'erwin', 'ngikngok', 'Erwin Agustian'),
(12, '123', '123', '1234'),
(123, 'ezar juliansah12', '123', '12345'),
(1258, 'ezar juliansah', 'qwerty', 'ezar juliansah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penerima`
--

CREATE TABLE `data_penerima` (
  `id_no` int(10) NOT NULL,
  `alokasi_dana` varchar(100) CHARACTER SET latin1 NOT NULL,
  `transaksi` varchar(50) NOT NULL,
  `Dana` varchar(100) NOT NULL,
  `Nama` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Hp` varchar(100) NOT NULL,
  `Email` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_penerima`
--

INSERT INTO `data_penerima` (`id_no`, `alokasi_dana`, `transaksi`, `Dana`, `Nama`, `Hp`, `Email`) VALUES
(555555555, 'Agustian', 'eragust@gmail.com', 'Jakarta  03 Desember 2013', 'Pria', 'Pamulang Permai 1 Blok C30 no 18', '88888888'),
(567788643, 'Aziz', 'Aziz@gmail.com', 'Pamulang 18 April 2020', 'Pria', 'Pamulang Permai 1 Blok C30 no 18', '55555555555'),
(888888888, 'Asep Setiawan', 'asep@gmail.com', 'Banten 09 Januari 1998', 'Pria', 'Kampung Rawa Selatan 2', '021 7400534'),
(2016142131, 'Ammar Rafisy Adrian', 'ammargomar@gmail.com', 'Jakarta  03 Desember 2013', 'Pria', 'Pamulang Permai 1 Blok C30 no 18', '12345678'),
(2147483647, 'Almira Erin Dianty', 'mitut@gmail.com', 'Tangerang Selatan 17 April 2019', 'Wanita', 'Pamulang Permai 1 Blok C30 no 18', '22222222222');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `data_penerima`
--
ALTER TABLE `data_penerima`
  ADD PRIMARY KEY (`id_no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1259;

--
-- AUTO_INCREMENT untuk tabel `data_penerima`
--
ALTER TABLE `data_penerima`
  MODIFY `id_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
