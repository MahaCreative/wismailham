-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2021 at 02:21 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_reservasi_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(1, 'Yusuf Tangkuni S.T', 'admin', '21232f297a57a5a743894a0e4a801fc3', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_hp` varchar(20) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_email`, `customer_hp`, `customer_alamat`, `customer_password`) VALUES
(3, 'Ahmad Jhony', 'jhony@gmail.com', '0927883733', 'jala sdjasl', '91ec1f9324753048c0096d036a694f86'),
(5, 'Jamaika Bob', 'jamaika@gmail.com', '08262122771', 'jalan rasta uye nomor 1', '91ec1f9324753048c0096d036a694f86'),
(6, 'Rosalina', 'rosalina@gmail.com', '082827287', 'jalan meruakaja', '91ec1f9324753048c0096d036a694f86'),
(7, 'suleha alala', 'suleha@gmail.com', '982737383737', 'sasdkajndkasjdn', 'ae2831cce9ac4de6a703a728f26cc07b'),
(8, 'yara', 'yara@gmail.com', '08626272726', 'tes', '6006605c2cfc6c453e3aac6c9193bd30'),
(10, 'Rafatar', 'rafatar@gmail.com', '082727282', 'Jl. T. Nyak Arief Kampus Unsyiah Darussalam, Banda Aceh, Provinsi Aceh, Indonesia 23111', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_hotel`
--

CREATE TABLE `fasilitas_hotel` (
  `fh_id` int(11) NOT NULL,
  `fh_icon` varchar(20) DEFAULT NULL,
  `fh_nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fasilitas_hotel`
--

INSERT INTO `fasilitas_hotel` (`fh_id`, `fh_icon`, `fh_nama`) VALUES
(1, 'fa-automobile', 'Parkir'),
(2, 'fa-heart', 'Nyaman'),
(3, 'fa-life-bouy', 'Kolam Renang'),
(4, 'fa-futbol-o', 'Lapangan Futsal'),
(5, 'fa-taxi', 'Antar Jemput Bandara'),
(6, 'fa-coffee', 'Coffee & Resto'),
(7, 'fa-shopping-cart', 'Swalayan');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_kamar`
--

CREATE TABLE `fasilitas_kamar` (
  `fk_id` int(11) NOT NULL,
  `fk_icon` varchar(20) DEFAULT NULL,
  `fk_nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fasilitas_kamar`
--

INSERT INTO `fasilitas_kamar` (`fk_id`, `fk_icon`, `fk_nama`) VALUES
(3, 'fa-circle', 'Bathup'),
(4, 'fa-circle', 'Shower'),
(5, 'fa-circle', 'Closet Jongkok'),
(6, 'fa-circle', 'Closet Duduk'),
(7, 'fa-circle', 'Cermin'),
(8, 'fa-circle', 'TV'),
(9, 'fa-circle', 'Wifi'),
(10, 'fa-circle', 'Smoking Room'),
(11, 'fa-circle', 'Non Smoking Room'),
(12, 'fa-circle', 'Breakfast'),
(13, 'fa-circle', 'Lunch'),
(14, 'fa-circle', 'Dinner'),
(16, 'fa-circle', 'Kulkas'),
(17, 'fa-circle', 'Lemari'),
(18, 'fa-circle', 'AC'),
(19, 'fa-circle', 'Telepon');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_tanggal` date NOT NULL,
  `invoice_customer` int(11) NOT NULL,
  `invoice_nama` varchar(255) NOT NULL,
  `invoice_hp` varchar(255) NOT NULL,
  `invoice_kamar` int(11) NOT NULL,
  `invoice_dari` date NOT NULL,
  `invoice_sampai` date NOT NULL,
  `invoice_harga` int(11) NOT NULL,
  `invoice_total_bayar` int(11) NOT NULL,
  `invoice_status` int(11) NOT NULL,
  `invoice_bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_tanggal`, `invoice_customer`, `invoice_nama`, `invoice_hp`, `invoice_kamar`, `invoice_dari`, `invoice_sampai`, `invoice_harga`, `invoice_total_bayar`, `invoice_status`, `invoice_bukti`) VALUES
(2, '2021-06-03', 10, 'Rafi Ahmad', '08726272723', 2, '2021-06-07', '2021-06-09', 500000, 1200000, 3, '1865297521.png'),
(3, '2021-06-06', 10, 'Nagita', '0872727343', 2, '2021-06-06', '2021-06-09', 500000, 500000, 0, ''),
(4, '2021-06-06', 10, 'Rafatar', '082829334', 2, '2021-06-07', '2021-06-09', 500000, 500000, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_layanan_tambahan`
--

CREATE TABLE `invoice_layanan_tambahan` (
  `ilt_invoice` int(11) NOT NULL,
  `ilt_layanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_layanan_tambahan`
--

INSERT INTO `invoice_layanan_tambahan` (`ilt_invoice`, `ilt_layanan`) VALUES
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `kamar_id` int(11) NOT NULL,
  `kamar_nama` varchar(255) NOT NULL,
  `kamar_ranjang` varchar(255) NOT NULL,
  `kamar_ukuran` int(11) NOT NULL,
  `kamar_kategori` int(11) NOT NULL,
  `kamar_jumlah` int(11) NOT NULL,
  `kamar_keterangan` text NOT NULL,
  `kamar_harga` int(11) NOT NULL,
  `kamar_foto1` varchar(255) NOT NULL,
  `kamar_foto2` varchar(255) NOT NULL,
  `kamar_foto3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`kamar_id`, `kamar_nama`, `kamar_ranjang`, `kamar_ukuran`, `kamar_kategori`, `kamar_jumlah`, `kamar_keterangan`, `kamar_harga`, `kamar_foto1`, `kamar_foto2`, `kamar_foto3`) VALUES
(2, 'Economic Room', 'Double', 46, 3, 3, '', 500000, '1585810678_pexels-pixabay-271618.jpg', '2046335240_pexels-pixabay-271619(1).jpg', '2046335240_pexels-max-vakhtbovych-6538889.jpg'),
(3, 'King Super Delux On', 'King', 45, 10, 3, '<p>Silahkan isi keterangan detail tentang kamar disini<br></p>', 700000, '1776783477_pexels-naim-benjelloun-2029719.jpg', '1776783477_pexels-max-vakhtbovych-6585603.jpg', '1776783477_pexels-julie-aagaard-2467285.jpg'),
(4, 'Double Economic Delux', 'Double', 30, 3, 5, '', 350000, '1200973631_pexels-max-vakhtbovych-6585604.jpg', '', ''),
(5, 'Single Titanium Superior', 'Single', 25, 11, 2, '', 500000, '2072439600_pexels-max-vakhtbovych-6538935.jpg', '', ''),
(6, 'Single Economic Delux', 'Single', 25, 3, 3, '', 200000, '1298987203_pexels-max-vakhtbovych-6585760.jpg', '', ''),
(7, 'Double Premium Super Delux', 'Double', 30, 10, 4, '', 350000, '1580918857_pexels-suhel-vba-3659683.jpg', '', ''),
(8, 'King Economic Delux', 'King', 45, 3, 3, '', 400000, '789769088_pexels-rachel-claire-8112351.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kamar_fasilitas`
--

CREATE TABLE `kamar_fasilitas` (
  `kf_id` int(11) NOT NULL,
  `kf_kamar` int(11) NOT NULL,
  `kf_fasilitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kamar_fasilitas`
--

INSERT INTO `kamar_fasilitas` (`kf_id`, `kf_kamar`, `kf_fasilitas`) VALUES
(11, 2, 18),
(12, 2, 3),
(13, 2, 12),
(14, 2, 7),
(15, 2, 6),
(16, 2, 16),
(17, 2, 17),
(127, 8, 3),
(128, 8, 17),
(129, 8, 13),
(130, 8, 4),
(131, 8, 10),
(132, 8, 19),
(133, 8, 9),
(144, 6, 12),
(145, 6, 14),
(146, 6, 16),
(147, 6, 17),
(148, 6, 13),
(149, 6, 11),
(150, 6, 8),
(151, 6, 9),
(152, 5, 18),
(153, 5, 3),
(154, 5, 12),
(155, 5, 7),
(156, 5, 6),
(157, 5, 5),
(158, 5, 16),
(159, 5, 17),
(160, 5, 13),
(161, 5, 11),
(162, 5, 4),
(163, 5, 19),
(164, 5, 8),
(165, 5, 9),
(166, 4, 18),
(167, 4, 3),
(168, 4, 12),
(169, 4, 7),
(170, 4, 6),
(171, 4, 5),
(172, 4, 14),
(173, 4, 16),
(174, 4, 17),
(175, 4, 11),
(176, 4, 4),
(177, 4, 10),
(178, 4, 19),
(179, 4, 8),
(180, 4, 9),
(181, 3, 18),
(182, 3, 3),
(183, 3, 12),
(184, 3, 7),
(185, 3, 6),
(186, 3, 5),
(187, 3, 14),
(188, 3, 16),
(189, 3, 17),
(190, 3, 13),
(191, 3, 11),
(192, 3, 4),
(193, 3, 10),
(194, 3, 19),
(195, 3, 8),
(196, 3, 9),
(197, 7, 18),
(198, 7, 3),
(199, 7, 12),
(200, 7, 7),
(201, 7, 6),
(202, 7, 5),
(203, 7, 14),
(204, 7, 16),
(205, 7, 17),
(206, 7, 13),
(207, 7, 11),
(208, 7, 4),
(209, 7, 10),
(210, 7, 19),
(211, 7, 8),
(212, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Tidak Berkategori'),
(3, 'Delux'),
(10, 'Super Delux'),
(11, 'Superior');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_tambahan`
--

CREATE TABLE `layanan_tambahan` (
  `lt_id` int(11) NOT NULL,
  `lt_nama` varchar(255) NOT NULL,
  `lt_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layanan_tambahan`
--

INSERT INTO `layanan_tambahan` (`lt_id`, `lt_nama`, `lt_harga`) VALUES
(1, 'Bed Extra', 100000),
(3, 'Laundry', 100000),
(4, 'SPA', 200000),
(5, 'Antar Jemput Bandara', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `rating_tanggal` date NOT NULL,
  `rating_invoice` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `rating_review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `rating_tanggal`, `rating_invoice`, `rating`, `rating_review`) VALUES
(33, '2021-05-28', 9, 4, 'Kualitas Bagus'),
(34, '2021-05-28', 9, 3, 'Kain nya lembut, namun berbulu'),
(44, '2021-06-03', 2, 4, 'Kamar rapi dan murah');

-- --------------------------------------------------------

--
-- Table structure for table `resepsionis`
--

CREATE TABLE `resepsionis` (
  `resepsionis_id` int(11) NOT NULL,
  `resepsionis_nama` varchar(100) NOT NULL,
  `resepsionis_username` varchar(100) NOT NULL,
  `resepsionis_password` varchar(100) NOT NULL,
  `resepsionis_foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resepsionis`
--

INSERT INTO `resepsionis` (`resepsionis_id`, `resepsionis_nama`, `resepsionis_username`, `resepsionis_password`, `resepsionis_foto`) VALUES
(2, 'Sri Rahayu Dewi', 'resepsionis', 'ef8e9b73187906ce9a6633f4b009b802', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  ADD PRIMARY KEY (`fh_id`);

--
-- Indexes for table `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  ADD PRIMARY KEY (`fk_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`kamar_id`);

--
-- Indexes for table `kamar_fasilitas`
--
ALTER TABLE `kamar_fasilitas`
  ADD PRIMARY KEY (`kf_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `layanan_tambahan`
--
ALTER TABLE `layanan_tambahan`
  ADD PRIMARY KEY (`lt_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `resepsionis`
--
ALTER TABLE `resepsionis`
  ADD PRIMARY KEY (`resepsionis_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  MODIFY `fh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  MODIFY `fk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `kamar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kamar_fasilitas`
--
ALTER TABLE `kamar_fasilitas`
  MODIFY `kf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `layanan_tambahan`
--
ALTER TABLE `layanan_tambahan`
  MODIFY `lt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `resepsionis`
--
ALTER TABLE `resepsionis`
  MODIFY `resepsionis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
