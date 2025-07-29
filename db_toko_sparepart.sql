-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2025 at 06:21 PM
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
-- Database: `db_toko_sparepart`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'SP001', 1, 'Busi', 'NGK', '12000', '15000', 'PCS', '50', '12 Januari 2022, 10:15', NULL),
(2, 'SP002', 2, 'Oli Mesin', 'Federal Oil', '32000', '45000', 'PCS', '40', '23 Februari 2022, 14:30', '3 April 2022, 11:00'),
(3, 'SP003', 3, 'Kampas Rem', 'Honda', '25000', '35000', 'PCS', '60', '5 Maret 2022, 09:10', NULL),
(4, 'SP004', 4, 'Filter Udara', 'Yamaha', '28000', '40000', 'PCS', '25', '17 Maret 2022, 16:20', '20 Juni 2022, 08:00'),
(5, 'SP005', 5, 'Rantai', 'Suzuki', '50000', '65000', 'SET', '30', '9 April 2022, 12:45', NULL),
(6, 'SP006', 1, 'Gear Set', 'Kawasaki', '85000', '100000', 'SET', '15', '28 Mei 2022, 10:00', '3 Juli 2022, 13:45'),
(7, 'SP007', 2, 'Ban Luar', 'IRC', '150000', '180000', 'PCS', '22', '1 Juni 2022, 15:30', NULL),
(8, 'SP008', 3, 'Ban Dalam', 'FDR', '30000', '40000', 'PCS', '35', '14 Juni 2022, 08:00', '20 Juli 2022, 09:30'),
(9, 'SP009', 4, 'Aki', 'GS Astra', '230000', '270000', 'PCS', '18', '30 Juni 2022, 11:25', NULL),
(10, 'SP010', 5, 'Lampu Depan', 'Stanley', '45000', '60000', 'PCS', '28', '2 Juli 2022, 14:00', '15 Agustus 2022, 10:45'),
(11, 'SP011', 2, 'Lampu Belakang', 'Stanley', '42000', '55000', 'PCS', '19', '5 Juli 2022, 09:30', NULL),
(12, 'SP012', 3, 'Spion', 'Honda', '25000', '32000', 'PCS', '40', '7 Juli 2022, 10:10', '12 Agustus 2022, 14:00'),
(13, 'SP013', 4, 'Kabel Gas', 'Yamaha', '12000', '17000', 'PCS', '60', '10 Juli 2022, 08:45', NULL),
(14, 'SP014', 5, 'Kabel Kopling', 'Suzuki', '15000', '20000', 'PCS', '55', '13 Juli 2022, 12:30', NULL),
(15, 'SP015', 1, 'Kampas Kopling', 'Honda', '50000', '65000', 'PCS', '35', '15 Juli 2022, 13:50', '10 September 2022, 11:30'),
(16, 'SP016', 2, 'Piston', 'Yamaha', '95000', '120000', 'PCS', '20', '18 Juli 2022, 11:00', NULL),
(17, 'SP017', 3, 'Ring Seher', 'Suzuki', '35000', '47000', 'PCS', '42', '21 Juli 2022, 15:20', '1 September 2022, 09:15'),
(18, 'SP018', 4, 'Bearing', 'Koyo', '30000', '42000', 'PCS', '28', '25 Juli 2022, 10:10', NULL),
(19, 'SP019', 5, 'Saklar', 'Yamaha', '18000', '25000', 'PCS', '33', '28 Juli 2022, 14:20', NULL),
(20, 'SP020', 1, 'Relay Starter', 'Denso', '32000', '40000', 'PCS', '22', '30 Juli 2022, 13:00', '5 Oktober 2022, 08:45'),
(21, 'SP021', 2, 'Filter Udara', 'Honda', '27000', '38000', 'PCS', '45', '2 Agustus 2022, 09:30', NULL),
(22, 'SP022', 3, 'Busi', 'Astra Otopart', '13000', '16000', 'PCS', '50', '5 Juli 2025, 10:00', NULL),
(23, 'SP023', 4, 'Oli Mesin', 'Motul', '45000', '60000', 'PCS', '60', '8 Agustus 2022, 08:20', NULL),
(24, 'SP024', 5, 'Kampas Rem', 'Yamaha', '24000', '33000', 'PCS', '30', '11 Agustus 2022, 13:30', NULL),
(25, 'SP025', 1, 'Gear Set', 'Suzuki', '86000', '99000', 'SET', '20', '14 Agustus 2022, 11:45', '20 Oktober 2022, 14:00'),
(26, 'SP026', 2, 'Ban Luar', 'IRC', '148000', '170000', 'PCS', '17', '17 Agustus 2022, 16:00', NULL),
(27, 'SP027', 3, 'Ban Dalam', 'FDR', '31000', '39000', 'PCS', '27', '20 Agustus 2022, 09:20', '25 Oktober 2022, 08:10'),
(28, 'SP028', 4, 'Aki', 'GS Astra', '225000', '265000', 'PCS', '12', '23 Agustus 2022, 12:40', NULL),
(29, 'SP029', 5, 'Lampu Depan', 'Stanley', '43000', '57000', 'PCS', '31', '26 Agustus 2022, 13:50', NULL),
(30, 'SP030', 1, 'Lampu Belakang', 'Stanley', '41000', '52000', 'PCS', '16', '29 Agustus 2022, 14:30', '15 November 2022, 10:15'),
(31, 'SP031', 2, 'Spion', 'Kawasaki', '26000', '34000', 'PCS', '22', '1 September 2022, 10:00', NULL),
(32, 'SP032', 3, 'Kabel Gas', 'Suzuki', '11000', '16000', 'PCS', '36', '4 September 2022, 11:45', '10 November 2022, 09:10'),
(33, 'SP033', 4, 'Kabel Kopling', 'Honda', '14500', '19500', 'PCS', '25', '7 September 2022, 09:30', NULL),
(34, 'SP034', 5, 'Kampas Kopling', 'Yamaha', '48000', '62000', 'PCS', '18', '10 September 2022, 12:00', '20 November 2022, 11:30'),
(35, 'SP035', 1, 'Piston', 'Suzuki', '92000', '115000', 'PCS', '15', '13 September 2022, 14:10', NULL),
(36, 'SP036', 2, 'Ring Seher', 'Yamaha', '33000', '45000', 'PCS', '19', '16 September 2022, 08:40', '21 November 2022, 10:45'),
(37, 'SP037', 3, 'Bearing', 'Koyo', '29000', '41000', 'PCS', '24', '19 September 2022, 15:00', NULL),
(38, 'SP038', 4, 'Saklar', 'Honda', '17500', '23000', 'PCS', '29', '22 September 2022, 13:20', NULL),
(39, 'SP039', 5, 'Relay Starter', 'Denso', '31000', '38000', 'PCS', '14', '25 September 2022, 10:30', '10 Desember 2022, 08:00'),
(40, 'SP040', 1, 'Filter Udara', 'Kawasaki', '26500', '36000', 'PCS', '20', '28 September 2022, 09:10', NULL),
(41, 'SP041', 2, 'Busi', 'NGK', '12500', '15500', 'PCS', '38', '1 Oktober 2022, 14:30', NULL),
(42, 'SP042', 3, 'Oli Mesin', 'Federal Oil', '33000', '47000', 'PCS', '47', '4 Oktober 2022, 15:00', '15 Desember 2022, 09:45'),
(43, 'SP043', 4, 'Kampas Rem', 'Yamaha', '25500', '34500', 'PCS', '32', '7 Oktober 2022, 11:10', NULL),
(44, 'SP044', 5, 'Gear Set', 'Suzuki', '84000', '97000', 'SET', '23', '10 Oktober 2022, 10:00', '18 Desember 2022, 12:00'),
(45, 'SP045', 1, 'Ban Luar', 'IRC', '149000', '175000', 'PCS', '19', '13 Oktober 2022, 09:50', NULL),
(46, 'SP046', 2, 'Ban Dalam', 'FDR', '29000', '37000', 'PCS', '33', '16 Oktober 2022, 08:15', NULL),
(47, 'SP047', 3, 'Aki', 'Yuasa', '240000', '280000', 'PCS', '11', '19 Oktober 2022, 14:20', '5 Januari 2023, 11:30'),
(48, 'SP048', 4, 'Lampu Depan', 'Stanley', '44000', '59000', 'PCS', '21', '22 Oktober 2022, 10:40', NULL),
(49, 'SP049', 5, 'Lampu Belakang', 'Stanley', '40500', '51500', 'PCS', '17', '25 Oktober 2022, 13:15', '20 Januari 2023, 09:00'),
(50, 'SP050', 1, 'Spion', 'Honda', '27000', '35000', 'PCS', '26', '28 Oktober 2022, 12:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Mesin', '1 Januari 2022, 08:00'),
(2, 'Kelistrikan', '1 Januari 2022, 08:05'),
(3, 'Pelumas', '1 Januari 2022, 08:10'),
(4, 'Body Part', '1 Januari 2022, 08:15'),
(5, 'Aksesoris', '1 Januari 2022, 08:20');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `NIK`) VALUES
(1, 'Duta Windu', 'Bandung', '081234567890', 'kasir@gmail.com', '12314121');

-- --------------------------------------------------------
