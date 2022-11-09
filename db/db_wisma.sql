-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 03:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wisma`
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
(1, 'Fifi', 'admin', '21232f297a57a5a743894a0e4a801fc3', '');

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
(12, 'Fifi', 'fifi@gmail.com', '123', 'mamuju', '202cb962ac59075b964b07152d234b70');

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
(5, 'fa-taxi', 'Antar Jemput Bandara'),
(8, ' fa-building', 'Aula');

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
(5, 'fa-circle', 'Closet Jongkok'),
(7, 'fa-circle', 'Cermin'),
(8, 'fa-circle', 'TV'),
(9, 'fa-circle', 'Wifi'),
(18, 'fa-circle', 'AC'),
(20, 'fa-tint', 'WC'),
(21, 'fa-bicycle', 'Sepeda');

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
(11, '2022-08-23', 12, 'Fifi', '123', 9, '2022-08-23', '2022-08-25', 180000, 560000, 3, '899507460.jpg');

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
(11, 5);

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
(9, 'Economic Room', 'Single', 10, 11, 20, '', 180000, '1020502028_IMG20220815124725.jpg', '1020502028_IMG20220815124803.jpg', '1020502028_IMG20220815124840.jpg'),
(11, 'Deluxe Room', 'Double', 5, 13, 10, '', 200000, '517397013_IMG20220815124723.jpg', '517397013_IMG-20220815-WA0069.jpg', '517397013_IMG-20220815-WA0068.jpg');

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
(212, 7, 9),
(213, 9, 18),
(214, 9, 7),
(215, 9, 5),
(216, 9, 8),
(217, 9, 9),
(221, 10, 18),
(222, 10, 20),
(223, 10, 9),
(231, 11, 18),
(232, 11, 7),
(233, 11, 5),
(234, 11, 21),
(235, 11, 8),
(236, 11, 20),
(237, 11, 9);

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
(11, 'Economic Room'),
(13, 'Deluxe Room');

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
(3, 'Laundry', 7000),
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
(44, '2021-06-03', 2, 4, 'Kamar rapi dan murah'),
(46, '2022-08-23', 11, 5, '-');

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
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  MODIFY `fh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  MODIFY `fk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `kamar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kamar_fasilitas`
--
ALTER TABLE `kamar_fasilitas`
  MODIFY `kf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `layanan_tambahan`
--
ALTER TABLE `layanan_tambahan`
  MODIFY `lt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `resepsionis`
--
ALTER TABLE `resepsionis`
  MODIFY `resepsionis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
