-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Bulan Mei 2021 pada 16.16
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbstbi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbberita`
--

CREATE TABLE `tbberita` (
  `Id` int(11) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Berita` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbberita`
--

INSERT INTO `tbberita` (`Id`, `Judul`, `Berita`) VALUES
(1, 'To The Bone', 'HAVE I EVER TOLD YOU I WANT YOU TO THE BONE HAVE I EVER CALLED YOU WHEN YOU ARE ALL ALONE AND IF I EVER FORGET TO TELL YOU HOW I FEEL LISTEN TO ME NOW BABE I WANT YOU TO THE BONE I WANT YOU TO THE BONE OOH OOH OOH OOH I WANT YOU TO THE BONE OH OH OH OH MA'),
(2, 'Blue Jeans', 'CALLING YOU LATE AT NIGHT TALKING BOUT NOTHIN BUT WERE ALWAYS LAUGHING THESE DUMB CONVERSATIONS THEY RAISE MY AFFECTIONS THOSE WERE THE GOOD TIMES AND I MISS THE OLD TIMES HAVE I TOLD YOU LATELY THAT I MISS YOU BADLY SOMETIMES I WISH THAT I COULD STILL CA'),
(3, 'Bitter Love', 'THERE IS BITTER IN EVERYDAY BUT THEN I FEEL IT THAT YOU WOULD BE THE ONLY ONE SOMETIMES IT DOESNT HAVE TO BE SO SURE THE SWEETEST LOVE CAN BE SO HARD TO FIND WELL BE BETTER IN EVERY WAY BUT THEN I WOULD GO TO BE IN OTHER SPACE SOMETIMES THE BITTER OF LOVE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcache`
--

CREATE TABLE `tbcache` (
  `Id` int(11) NOT NULL,
  `Query` varchar(100) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbindex`
--

CREATE TABLE `tbindex` (
  `Id` int(11) NOT NULL,
  `Term` varchar(30) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Count` int(11) NOT NULL,
  `Bobot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbindex`
--

INSERT INTO `tbindex` (`Id`, `Term`, `DocId`, `Count`, `Bobot`) VALUES
(1, 'have', 1, 2, 0),
(2, 'i', 1, 8, 0),
(3, 'ever', 1, 3, 3.29584),
(4, 'told', 1, 1, 0.405465),
(5, 'you', 1, 8, 0),
(6, 'want', 1, 4, 4.39445),
(7, 'to', 1, 6, 2.43279),
(8, 'the', 1, 4, 0),
(9, 'bone', 1, 4, 4.39445),
(10, 'called', 1, 1, 1.09861),
(11, 'when', 1, 1, 1.09861),
(12, 'are', 1, 1, 1.09861),
(13, 'all', 1, 1, 1.09861),
(14, 'alone', 1, 1, 1.09861),
(15, 'and', 1, 1, 0.405465),
(16, 'if', 1, 1, 1.09861),
(17, 'forget', 1, 1, 1.09861),
(18, 'tell', 1, 1, 1.09861),
(19, 'how', 1, 1, 1.09861),
(20, 'feel', 1, 1, 0.405465),
(21, 'listen', 1, 1, 1.09861),
(22, 'me', 1, 1, 1.09861),
(23, 'now', 1, 1, 1.09861),
(24, 'babe', 1, 1, 1.09861),
(25, 'ooh', 1, 4, 4.39445),
(26, 'oh', 1, 4, 4.39445),
(27, 'ma', 1, 1, 1.09861),
(28, 'calling', 2, 1, 1.09861),
(29, 'you', 2, 3, 0),
(30, 'late', 2, 1, 1.09861),
(31, 'at', 2, 1, 1.09861),
(32, 'night', 2, 1, 1.09861),
(33, 'talking', 2, 1, 1.09861),
(34, 'bout', 2, 1, 1.09861),
(35, 'nothin', 2, 1, 1.09861),
(36, 'but', 2, 1, 0.405465),
(37, 'were', 2, 2, 2.19722),
(38, 'always', 2, 1, 1.09861),
(39, 'laughing', 2, 1, 1.09861),
(40, 'these', 2, 1, 1.09861),
(41, 'dumb', 2, 1, 1.09861),
(42, 'conversations', 2, 1, 1.09861),
(43, 'they', 2, 1, 1.09861),
(44, 'raise', 2, 1, 1.09861),
(45, 'my', 2, 1, 1.09861),
(46, 'affections', 2, 1, 1.09861),
(47, 'those', 2, 1, 1.09861),
(48, 'the', 2, 2, 0),
(49, 'good', 2, 1, 1.09861),
(50, 'times', 2, 2, 2.19722),
(51, 'and', 2, 1, 0.405465),
(52, 'i', 2, 5, 0),
(53, 'miss', 2, 2, 2.19722),
(54, 'old', 2, 1, 1.09861),
(55, 'have', 2, 1, 0),
(56, 'told', 2, 1, 0.405465),
(57, 'lately', 2, 1, 1.09861),
(58, 'that', 2, 2, 0.81093),
(59, 'badly', 2, 1, 1.09861),
(60, 'sometimes', 2, 1, 0.405465),
(61, 'wish', 2, 1, 1.09861),
(62, 'could', 2, 1, 1.09861),
(63, 'still', 2, 1, 1.09861),
(64, 'ca', 2, 1, 1.09861),
(65, 'there', 3, 1, 1.09861),
(66, 'is', 3, 1, 1.09861),
(67, 'bitter', 3, 2, 2.19722),
(68, 'in', 3, 3, 3.29584),
(69, 'everyday', 3, 1, 1.09861),
(70, 'but', 3, 2, 0.81093),
(71, 'then', 3, 2, 2.19722),
(72, 'i', 3, 2, 0),
(73, 'feel', 3, 1, 0.405465),
(74, 'it', 3, 2, 2.19722),
(75, 'that', 3, 1, 0.405465),
(76, 'you', 3, 1, 0),
(77, 'would', 3, 2, 2.19722),
(78, 'be', 3, 5, 5.49306),
(79, 'the', 3, 3, 0),
(80, 'only', 3, 1, 1.09861),
(81, 'one', 3, 1, 1.09861),
(82, 'sometimes', 3, 2, 0.81093),
(83, 'doesnt', 3, 1, 1.09861),
(84, 'have', 3, 1, 0),
(85, 'to', 3, 3, 1.2164),
(86, 'so', 3, 2, 2.19722),
(87, 'sure', 3, 1, 1.09861),
(88, 'sweetest', 3, 1, 1.09861),
(89, 'love', 3, 2, 2.19722),
(90, 'can', 3, 1, 1.09861),
(91, 'hard', 3, 1, 1.09861),
(92, 'find', 3, 1, 1.09861),
(93, 'well', 3, 1, 1.09861),
(94, 'better', 3, 1, 1.09861),
(95, 'every', 3, 1, 1.09861),
(96, 'way', 3, 1, 1.09861),
(97, 'go', 3, 1, 1.09861),
(98, 'other', 3, 1, 1.09861),
(99, 'space', 3, 1, 1.09861),
(100, 'of', 3, 1, 1.09861);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbstem`
--

CREATE TABLE `tbstem` (
  `Id` int(11) NOT NULL,
  `Term` varchar(30) NOT NULL,
  `Stem` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbstem`
--

INSERT INTO `tbstem` (`Id`, `Term`, `Stem`) VALUES
(1, 'pertemuan', 'temu'),
(2, 'bertemu', 'temu'),
(3, 'cr9', 'cristiano ronaldo'),
(4, 'kepindahan', 'pindah'),
(5, 'menembus', 'tembus'),
(6, 'menyusut', 'susut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbvektor`
--

CREATE TABLE `tbvektor` (
  `DocId` int(11) NOT NULL,
  `Panjang` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbvektor`
--

INSERT INTO `tbvektor` (`DocId`, `Panjang`) VALUES
(1, 10.5554),
(2, 6.78028),
(3, 9.80094);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbberita`
--
ALTER TABLE `tbberita`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `tbcache`
--
ALTER TABLE `tbcache`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `tbindex`
--
ALTER TABLE `tbindex`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `tbstem`
--
ALTER TABLE `tbstem`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `tbvektor`
--
ALTER TABLE `tbvektor`
  ADD PRIMARY KEY (`DocId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbberita`
--
ALTER TABLE `tbberita`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbcache`
--
ALTER TABLE `tbcache`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbindex`
--
ALTER TABLE `tbindex`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `tbstem`
--
ALTER TABLE `tbstem`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
