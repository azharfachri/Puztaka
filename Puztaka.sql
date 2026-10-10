-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2026 at 10:22 AM
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
-- Database: `perpus_azhar_pa_andika`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `kelas`, `alamat`) VALUES
(242510401, 'Fadhlan Muhammad Zakky', 'XII PPLG 3', 'Kampung Selang Nangkaa'),
(242510407, 'Hudzwa Aghia', 'XII MPLB 2', 'Perumahan Taman Wanasari Indah'),
(242510408, 'Dinda Herawati', 'XII TM 3', 'Perumahan Pesona Gading Cibitung'),
(242510409, 'Fadillah Khairul Nissa', 'XI TM 3', 'Perumahan Regensi 1 Cibitung'),
(242510419, 'Salsabila Ananta Putri', 'XII AKL 2', 'Perumahan Regensi 2 Cibitung'),
(242510424, 'Moch Alif', 'XII TMI 1', 'Perumahan Griya Asri Cibitung'),
(242510431, 'Kirana Dwi', 'XII MPLB 1', 'Perumahan Villa Mutiara Cibitung'),
(242510450, 'Zulfa Arwa Nasifa', 'XII PPLG 3', 'Perumahan Pesona Gading Cibitung'),
(242510470, 'Jihad Fiisabilillah', 'XII PPLG 2', 'Perumahan Villa Mutiara Cibitung'),
(242510489, 'Zahrotu Nikmah', 'XII PPLG 1', 'Perumahan Villa Mutiara Cibitung'),
(242510590, 'Imam Rifai Yono Saputra', 'XII TM 1', 'Perumahan Villa Wanajaya Cibitung'),
(242510708, 'Nafisa Althafia', 'XII MPLB 1', 'Perumahan Taman Wanasari Indah'),
(242510777, 'Lathifah Lintang', 'XI PPLG 1', 'Perumahan Taman Wanasari Indah'),
(242510807, 'Cahyani Kamila', 'XII MPLB 2', 'Perumahan Kartika Wanasari Cibitung'),
(252610402, 'Niquita Vinazella', 'XI PPLG 3', 'Perumahan Griya Asri Cibitung'),
(252610403, 'Shifa Marvella', 'X MPLB 2', 'Perumahan Metland Cibitung'),
(252610409, 'Filia Desiyani', 'XI AKL 2', 'Perumahan Villa Wanasari Cibitung'),
(252610410, 'Izza Putri', 'XI AKL 2', 'Perumahan Regensi 2 Cibitung'),
(252610417, 'M Fawwaz', 'XI TMI 1', 'Perumahan Griya Asri Cibitung'),
(252610467, 'Putri Nur Soleha', 'XI MPLB 2', 'Perumahan Taman Wanasari Indah'),
(252610506, 'Jesika Yuliana', 'XI PPLG 1', 'Perumahan Metland Cibiitung'),
(252610545, 'Adinda Virga', 'XI PPLG 3', 'Perumahan Pesona Gading Cibitung'),
(252610569, 'Laelina Hannani', 'XI AKL 1', 'Perumahan Metland Cibiitung'),
(252610866, 'Ahmad Zidan', 'XI PPLG 2', 'Perumahan Pesona Gading Cibitung'),
(252671717, 'Nabila Aprilia', 'XI MPLB 1', 'Perumahan Griya Asri 1'),
(2147483647, 'Shevia Laras', 'X AKL 1', 'Perumahan Taman Wanasari Indah');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `tahun` year(4) DEFAULT NULL,
  `id_kategori` varchar(10) NOT NULL,
  `stok` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `pengarang`, `tahun`, `id_kategori`, `stok`) VALUES
('B001', 'Laskar Pelangi', 'Andrea Hirata', '2005', 'K001', 10),
('B002', 'Bumi', 'Tere Liye', '2014', 'K001', 10),
('B003', 'Dilan 1990', 'Pidi Baiq', '2014', 'K001', 10),
('B004', 'Negeri 5 Menara', 'Ahmad Fuadi', '2009', 'K001', 10),
('B005', 'One Piece Vol. 1', 'Eiichiro Oda', '1997', 'K002', 10),
('B006', 'Naruto Vol. 1', 'Masashi Kishimoto', '1999', 'K002', 10),
('B007', 'Doraemon Vol. 1', 'Fujiko F. Fujio', '1974', 'K002', 10),
('B008', 'Sejarah Indonesia', 'Ricklefs', '2008', 'K003', 10),
('B009', 'Sejarah Dunia', 'William J. Duiker', '2015', 'K003', 10),
('B010', 'Sejarah Perjuangan Bangsa Indonesia', 'Sartono Kartodirdjo', '2014', 'K003', 10),
('B011', 'Fisika Dasar', 'Halliday dan Resnick', '2014', 'K004', 10),
('B012', 'Biologi untuk SMA', 'Irnaningtyas', '2016', 'K004', 10),
('B013', 'Kimia untuk SMA', 'Michael Purba', '2017', 'K004', 10),
('B014', 'Dasar-Dasar Pemrograman', 'Abdul Kadir', '2017', 'K005', 10),
('B015', 'Pemrograman PHP', 'Budi Raharjo', '2018', 'K005', 10),
('B016', 'Basis Data', 'Rosa A.S. dan M. Shalahuddin', '2020', 'K005', 10),
('B017', 'Algoritma dan Pemrograman', 'Rinaldi Munir', '2016', 'K005', 9),
('B018', 'Pendidikan Agama Islam', 'Kementerian Agama RI', '2019', 'K006', 10),
('B019', 'Akhlak dan Budi Pekerti', 'Kementerian Agama RI', '2020', 'K006', 10),
('B020', 'Membentuk Generasi Islami', 'Abdullah Gymnastiar', '2018', 'K006', 10),
('B021', 'Strategi Belajar Efektif', 'Slameto', '2015', 'K007', 10),
('B022', 'Pendidikan Karakter', 'Muchlas Samani', '2017', 'K007', 10),
('B023', 'Belajar dan Pembelajaran', 'Dimyati dan Mudjiono', '2018', 'K007', 10),
('B024', 'Biografi B.J. Habibie', 'A. Makmur Makka', '2018', 'K008', 10),
('B025', 'Biografi Ki Hajar Dewantara', 'Suhartono', '2017', 'K008', 10),
('B026', 'Ensiklopedia Sains', 'Tim Ensiklopedia', '2021', 'K009', 10),
('B027', 'Ensiklopedia Dunia', 'Tim Redaksi', '2020', 'K009', 10),
('B028', 'Kamus Bahasa Indonesia', 'Badan Pengembangan Bahasa', '2016', 'K010', 10),
('B029', 'Kamus Bahasa Inggris', 'John M. Echols', '2015', 'K010', 10),
('B030', 'Panduan Bahasa Indonesia', 'Badan Pengembangan Bahasa', '2019', 'K010', 10);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(10) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
('K001', 'Novel'),
('K002', 'Komik'),
('K003', 'Sejarah'),
('K004', 'Sains'),
('K005', 'Teknologi'),
('K006', 'Agama'),
('K007', 'Pendidikan'),
('K008', 'Biografi'),
('K009', 'Ensiklopedia'),
('K010', 'Bahasa');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` varchar(10) NOT NULL,
  `id_buku` varchar(10) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_petugas` varchar(10) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `id_buku`, `id_anggota`, `id_petugas`, `tanggal_pinjam`, `tanggal_jatuh_tempo`, `tanggal_kembali`, `keterangan`) VALUES
('PM001', 'B001', 242510408, 'A001', '2026-08-01', '2026-08-06', '2026-08-05', 'Tepat Waktu'),
('PM002', 'B005', 242510401, 'A001', '2026-08-02', '2026-08-07', '2026-08-07', 'Tepat Waktu'),
('PM003', 'B010', 252610402, 'A001', '2026-08-03', '2026-08-08', '2026-08-10', 'Terlambat'),
('PM004', 'B002', 252610403, 'A001', '2026-08-04', '2026-08-09', '2026-08-09', 'Tepat Waktu'),
('PM005', 'B015', 242510431, 'A001', '2026-08-05', '2026-08-10', '2026-08-12', 'Terlambat'),
('PM006', 'B017', 252610866, 'A001', '2026-09-09', '2026-09-14', NULL, 'Dipinjam');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(10) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`) VALUES
('A001', 'Azhar Fachri', '@azhar', 'e2000039de82e6c208ac36af0d9fc80c'),
('A002', 'Vira Indriyani', '@vira', '352630027b1bd194b433fb187182a462'),
('A003', 'Citra Lestari', '@citra', 'a471cc23d89f15b4c552246412714ee8'),
('A004', 'Alisa Salsabila', '@alisa', '3ba0dc39c0ef945745d9654b4f3471c9'),
('A005', 'Eka Ramadhan', '@eka', 'e48ec16d066a59dffbe1e352ad0710d7'),
('A006', 'Fajar Maulana', '@fajar', '7bedc9fd30769590c992b8f7f23738f7'),
('A007', 'Gita Permata', '@gita', '39ffc7f8a25f8c55be3dd42ab7025d89'),
('A008', 'Hendra Wijaya', '@hendra', 'ded3d0299c47566fbf51621ace258e95'),
('A009', 'Intan Sari', '@intan', '46a7357b0b816cb9dd56d70d2a385cfd'),
('A010', 'Joko Setiawan', '@joko', '278ea841c0d133059032b8a75320c3e0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `buku_ibfk_1` (`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `peminjaman_ibfk_1` (`id_buku`),
  ADD KEY `peminjaman_ibfk_3` (`id_petugas`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
