-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2022 pada 08.50
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kebun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_bibit`
--

CREATE TABLE `data_bibit` (
  `ID` int(11) NOT NULL,
  `namabibit` varchar(30) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_bibit`
--

INSERT INTO `data_bibit` (`ID`, `namabibit`, `stok`) VALUES
(2, 'Cabai', 32423),
(4, 'Tomat', 7123),
(9, 'Terong', 1234123),
(10, 'Durian', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pupuk`
--

CREATE TABLE `data_pupuk` (
  `ID` int(11) NOT NULL,
  `nama_pupuk` varchar(30) NOT NULL,
  `Stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pupuk`
--

INSERT INTO `data_pupuk` (`ID`, `nama_pupuk`, `Stok`) VALUES
(1, 'urea', 14),
(12, 'Kalium Klorida', 123),
(13, ' Amonium', 3),
(907, 'kandangab', 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_sayur`
--

CREATE TABLE `data_sayur` (
  `id_sayur` int(11) NOT NULL,
  `nama_sayur` varchar(20) NOT NULL,
  `jenis_sayur` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_sayur`
--

INSERT INTO `data_sayur` (`id_sayur`, `nama_sayur`, `jenis_sayur`, `stok`, `harga`) VALUES
(1, 'Terong', 'Organik', 90, 1),
(2, 'Cabai', 'Organik', 90, 1),
(10, 'Durian', 'Non-Organik', 100, 10),
(11, '', 'Non-Organik', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_bibit`
--
ALTER TABLE `data_bibit`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `data_pupuk`
--
ALTER TABLE `data_pupuk`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `data_sayur`
--
ALTER TABLE `data_sayur`
  ADD PRIMARY KEY (`id_sayur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
