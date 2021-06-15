-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 07:28 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipal`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(10) NOT NULL,
  `karyawan_id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `stok` int(100) NOT NULL,
  `harga` varchar(10000) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `karyawan_id`, `nama`, `deskripsi`, `tipe`, `stok`, `harga`, `foto`) VALUES
(1, 2, 'Kamera Canon', 'Kamera Ini Mereknya Canon, Fungsinya untuk Foto', 'Kamera', -39, '100000', 'kameracanon.png'),
(3, 5, 'Tripod Kamera', 'Tripod Kamera ini digunakan untuk kamera biar bisa foto berdiri', 'Aksesoris', -16, '10000', 'tripodkamera.png'),
(4, 2, 'Strap Kamera Nikon', 'Strap Kamera ini hanya untuk Kamera dengan Merek Nikon', 'Aksesoris', 24, '5000', 'strapnikon.png'),
(5, 5, 'Lensa Kamera Canon', 'Lensa Kamera Canon hanya digunakan untuk kamera Merek Canon', 'Lensa', -9, '500000', 'lensakameracanon.png'),
(8, 0, 'Kamera Nikon', 'Kamera ini Mereknya Nikon, Fungsinya buat Foto', 'Kamera', 10, '300000', 'kameranikonn.png'),
(9, 0, 'Lensa Kamera Sony', 'Lensa Kamera Sony hanya digunakan untuk Kamer Sony', 'Lensa', 5, '2000000', 'lensakamerasony.png');

-- --------------------------------------------------------

--
-- Table structure for table `d_peminjaman`
--

CREATE TABLE `d_peminjaman` (
  `d_peminjaman_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `buy_price_pcs` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `kode_resi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_peminjaman`
--

INSERT INTO `d_peminjaman` (`d_peminjaman_id`, `barang_id`, `amount`, `buy_price_pcs`, `total_price`, `kode_resi`) VALUES
(1, 3, 1, 10000, 10000, 39),
(2, 3, 1, 10000, 10000, 40),
(3, 1, 2, 100000, 200000, 41),
(4, 3, 3, 10000, 30000, 42),
(5, 4, 1, 5000, 10000, 43);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `karyawan_id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(14) NOT NULL,
  `gaji` int(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`karyawan_id`, `nama`, `email`, `password`, `tgl_lahir`, `alamat`, `no_telepon`, `gaji`, `jabatan`) VALUES
(12, 'yonach', 'yonatan.abisai@yahoo.com', '31863e2943b1660d5f4a5a620e4cb98ad83256e980a20becbf327557d4358e0d0b55d7e0ec87a5b666142f7623a67a9aa41f77296c8a13a0e766062153b124fd', '2021-05-05', 'Kebumen', '087889895119', 50000, 'Sales'),
(13, 'Budi', 'budi@budi.com', 'a9f1ab7ef320bfa15ffc0b115aa6b8d531e4d63560f6c8c75cf885d1a08081aa77200722b1d437bb65013c9f09a23c4d4c42e8f4c206018209ce795307bd146c', '2021-05-05', 'Jalan Budi', '081208120812', 1000000, 'Sales'),
(14, 'Binomo', 'binomo@binomo.com', '459a1f6222e1b4659ac999725caaf0152c13a6a26b9c74584732ad2666d792afd484bf16e0f48b111fb26968ab388593d55e6b9f4be2ed8eedecd6c5223dae2a', '2021-05-01', 'Jalan Binomo', '099908880222', 2000000, 'Owner'),
(15, 'admin', 'admin@admin.com', '285b1244f9c22381b2e2669b181ece10362673c873d17a6e34be86be03d01e62fa4d80b625b97c5ec110fc35c26a81d6618cce99e64352b807446258e4c64961', '2021-04-25', 'admin', '2222', 2000000, 'Owner'),
(18, 'nama', 'nama@nama.com', '8ee19d82fe011d951411a8580f9d0585b00e309e2bd63d64ea8b43fbeeb68b4eb9b46cb04900d11341d0a028f14c11902bf3c40450d15c5ab18cf8d162108d29', '2021-05-26', 'nama', '081280280280', 10000000, 'Kasir');

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `konsumen_id` int(11) NOT NULL,
  `namakonsumen` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`konsumen_id`, `namakonsumen`, `tgl_lahir`, `alamat`, `no_telepon`) VALUES
(1, 'Thomas', '1990-01-03', 'Bogor', '81280002222'),
(2, 'Quincy', '2000-01-24', 'Bogor', '9900880077'),
(3, 'Padawangi', '2010-01-24', 'Bogor', '99908880666'),
(4, 'Putri', '1990-04-21', 'Bekasi', '98709870987'),
(5, 'Wardani', '2000-04-21', 'Bekasi', '78907890789');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `peminjaman_id` int(11) NOT NULL,
  `kode_resi` int(11) NOT NULL,
  `karyawan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `konsumen_id` int(10) NOT NULL,
  `tgl_peminjaman` datetime NOT NULL DEFAULT current_timestamp(),
  `tgl_pengembalian` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`peminjaman_id`, `kode_resi`, `karyawan_id`, `barang_id`, `konsumen_id`, `tgl_peminjaman`, `tgl_pengembalian`) VALUES
(39, 39, 15, 3, 1, '2021-05-20 20:36:59', '2021-06-08 20:36:59'),
(40, 40, 15, 3, 1, '2021-06-08 20:38:16', '2021-06-08 20:38:16'),
(41, 41, 15, 1, 1, '2021-04-15 20:46:41', '2021-06-08 20:46:41'),
(42, 42, 15, 3, 3, '2021-07-15 21:11:44', '2021-06-08 21:11:44'),
(43, 43, 15, 4, 5, '2021-06-23 21:17:14', '2021-06-08 21:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman2`
--

CREATE TABLE `peminjaman2` (
  `peminjaman2_id` int(11) NOT NULL,
  `kode_resi` int(11) NOT NULL,
  `karyawan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `konsumen_id` int(10) NOT NULL,
  `tgl_peminjaman2` datetime NOT NULL DEFAULT current_timestamp(),
  `tgl_pengembalian2` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `pengembalian_id` int(10) NOT NULL,
  `harga` float NOT NULL,
  `kode_resi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(100) NOT NULL,
  `barang_id` int(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `barang_id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 1, 'Kamera', '100000', ''),
(2, 2, 'ASUS Laptop 1500', '79900', 'asus-laptop.jpg'),
(3, 3, 'Microsoft Surface Pro 3', '898.00', 'surface-pro.jpg'),
(4, 4, 'Samsung EVO 32GB', '1200', 'samsung-sd-card.jpg'),
(5, 5, 'Desktop Hard Drive', '5000', 'computer-hard-disk.jpg'),
(6, 6, 'External Hard Drive', '8000', 'external-hard-disk.jpg'),
(7, 7, 'Crock-Pot Oval Slow Cooker', '3400', 'crok-pot-cooker.jpg'),
(8, 8, 'Magic Blender System', '8000', 'blender.jpg'),
(9, 9, 'Cordless Hand Vacuum', '4000', 'vaccum-cleaner.jpg'),
(10, 10, 'Dishwasher Detergent', '1500', 'detergent-powder.jpg'),
(11, 11, 'Essential Oil Diffuser', '2000', 'unpower-difuser.jpg'),
(12, 12, 'Medical Personalized', '1100', 'hand-bag.jpg'),
(13, 13, 'Best Bridle Leather Belt', '6400', 'mens-belt.jpg'),
(14, 14, 'HANDMADE Bow set', '2400', 'pastal-colors.jpg'),
(15, 15, 'Ceramic Coffee Mug', '1800', 'coffee-mug.jpg'),
(16, 16, 'Wine Birthday Glass', '1800', 'wine-glass.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `d_peminjaman`
--
ALTER TABLE `d_peminjaman`
  ADD PRIMARY KEY (`d_peminjaman_id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`karyawan_id`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`konsumen_id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`peminjaman_id`);

--
-- Indexes for table `peminjaman2`
--
ALTER TABLE `peminjaman2`
  ADD PRIMARY KEY (`peminjaman2_id`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`pengembalian_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `d_peminjaman`
--
ALTER TABLE `d_peminjaman`
  MODIFY `d_peminjaman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `karyawan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `konsumen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `peminjaman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `peminjaman2`
--
ALTER TABLE `peminjaman2`
  MODIFY `peminjaman2_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `pengembalian_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
