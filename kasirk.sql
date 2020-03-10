-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Mar 2020 pada 16.53
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dagangan`
--

CREATE TABLE `dagangan` (
  `Kode_brg` varchar(10) NOT NULL,
  `Nama_brg` varchar(50) NOT NULL,
  `Kategori` varchar(15) NOT NULL,
  `Per` int(3) NOT NULL,
  `Harga_Jual` int(6) NOT NULL,
  `Harga_Beli` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dagangan`
--

INSERT INTO `dagangan` (`Kode_brg`, `Nama_brg`, `Kategori`, `Per`, `Harga_Jual`, `Harga_Beli`) VALUES
('M0001R', 'Coba', 'Makanan', 3, 1000, 900),
('M0002R', 'Nyobain', 'Makanan', 1, 2000, 1000),
('O0001K', 'Mencoba', 'Obat', 3, 3000, 2000),
('O0002K', 'Budrek', 'Obat', 3, 1500, 700),
('O0003K', 'Parahmen', 'Obat', 3, 4000, 3000),
('R0001B', 'Djarum Super 12', 'Rokok', 1, 17000, 16000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suser`
--

CREATE TABLE `suser` (
  `Nama` varchar(100) NOT NULL,
  `Panggilan` varchar(30) NOT NULL,
  `Tanggal_lahir` date NOT NULL,
  `Jenis_Kelamin` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `HakAkses` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suser`
--

INSERT INTO `suser` (`Nama`, `Panggilan`, `Tanggal_lahir`, `Jenis_Kelamin`, `Username`, `Password`, `HakAkses`) VALUES
('Zainuri SWA', 'Zai', '2001-10-27', 'Laki - Laki', 'Zainuri', 'testtest', 'A'),
('Kaitoga', '(OwO)', '2001-10-27', 'Laki - Laki', 'King', 'awooo', 'P');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksia`
--

CREATE TABLE `transaksia` (
  `id_transaksi` int(11) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `barang` text NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksia`
--

INSERT INTO `transaksia` (`id_transaksi`, `tgl_transaksi`, `barang`, `jumlah`, `total`, `bayar`, `kembalian`) VALUES
(1, '2019-12-27 21:58:17', '[Nyobain, Budrek]', '[1, 3]', 5500, 10000, 4500),
(2, '2020-02-28 21:36:11', '[Coba, Budrek]', '[3, 3]', 2500, 5000, 2500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksib`
--

CREATE TABLE `transaksib` (
  `No` int(11) NOT NULL,
  `Kode_Barang` varchar(50) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Per` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksib`
--

INSERT INTO `transaksib` (`No`, `Kode_Barang`, `Nama_Barang`, `Per`, `Jumlah`, `Harga`, `Subtotal`) VALUES
(1, 'M0002R', 'Nyobain', 1, 2, 2000, 4000),
(2, 'O0002K', 'Budrek', 3, 1, 1500, 1500),
(3, 'M0001R', 'Coba', 3, 1, 1000, 1000),
(4, 'O0002K', 'Budrek', 3, 1, 1500, 1500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksibd`
--

CREATE TABLE `transaksibd` (
  `Tanggal` datetime NOT NULL,
  `Pegawai` varchar(30) NOT NULL,
  `Total` int(11) NOT NULL,
  `Bayar` int(11) NOT NULL,
  `Kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksibd`
--

INSERT INTO `transaksibd` (`Tanggal`, `Pegawai`, `Total`, `Bayar`, `Kembalian`) VALUES
('2019-12-27 21:58:19', 'Zai', 5500, 10000, 4500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `Kode_brg` varchar(30) NOT NULL,
  `Nama_brg` varchar(100) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`Kode_brg`, `Nama_brg`, `Jumlah`, `subtotal`) VALUES
('M0001R', 'Coba', 1, 1000),
('O0002K', 'Budrek', 1, 1500);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dagangan`
--
ALTER TABLE `dagangan`
  ADD PRIMARY KEY (`Kode_brg`);

--
-- Indeks untuk tabel `transaksia`
--
ALTER TABLE `transaksia`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `transaksib`
--
ALTER TABLE `transaksib`
  ADD PRIMARY KEY (`No`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`Kode_brg`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksia`
--
ALTER TABLE `transaksia`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksib`
--
ALTER TABLE `transaksib`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
