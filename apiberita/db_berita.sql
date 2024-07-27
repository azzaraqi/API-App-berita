-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 02:10 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `isi_berita` text NOT NULL,
  `gambar_berita` varchar(100) NOT NULL,
  `tgl_berita` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi_berita`, `gambar_berita`, `tgl_berita`) VALUES
(1, 'Manfaat Olahraga bagi Kesehatan', 'Olahraga secara teratur memiliki banyak manfaat bagi kesehatan fisik dan mental. Ini dapat meningkatkan kekuatan otot, meningkatkan kesehatan jantung, dan mengurangi risiko penyakit kronis seperti diabetes dan kanker.', 'olahraga.jpg', '2024-03-18 22:51:15'),
(2, 'Tips Menjaga Kesehatan Mental', 'Mengatur waktu istirahat yang cukup, bermeditasi, dan berbicara dengan orang terdekat dapat membantu menjaga kesehatan mental Anda. Penting untuk mengenali tanda-tanda stres dan mencari bantuan jika diperlukan.', 'kesehatanmental.jpg', '2024-03-18 22:51:15'),
(3, 'Makanan Sehat untuk Menjaga Berat Badan', 'Makanan sehat yang rendah kalori dan kaya nutrisi, seperti buah-buahan, sayuran, dan protein tanpa lemak, dapat membantu Anda menjaga berat badan yang sehat. Penting juga untuk menghindari makanan olahan dan gula tambahan.', 'makananmenjagaberat.jpeg', '2024-03-18 22:51:15'),
(4, 'Pentingnya Tidur yang Cukup', 'Tidur yang cukup sangat penting untuk kesehatan dan kesejahteraan Anda. Kurang tidur dapat meningkatkan risiko obesitas, penyakit jantung, dan gangguan mental. Usahakan untuk tidur 7-9 jam setiap malam.', 'tidur.jpeg', '2024-03-18 22:51:15'),
(5, 'Manfaat Mengonsumsi Air Putih', 'Mengonsumsi air putih yang cukup penting untuk menjaga hidrasi tubuh, mengoptimalkan fungsi organ, dan membantu menjaga berat badan yang sehat. Minumlah setidaknya 8 gelas air per hari.', 'airputih.jpg', '2024-03-18 22:51:15'),
(6, 'Cara Mengurangi Stres dalam Kehidupan Sehari-hari', 'Berolahraga, meditasi, dan melakukan kegiatan yang Anda nikmati dapat membantu mengurangi stres sehari-hari. Penting juga untuk mengatur waktu dengan baik dan mengelola tugas dengan efisien.', 'stress.jpg', '2024-03-18 22:51:15'),
(7, 'Pentingnya Pemeriksaan Kesehatan Tahunan', 'Pemeriksaan kesehatan tahunan dapat membantu mendeteksi penyakit atau kondisi medis sejak dini, ketika lebih mudah diobati. Jangan abaikan pemeriksaan rutin bahkan jika Anda merasa sehat.', 'periksa.jpeg', '2024-03-18 22:51:15'),
(8, 'Cara Mengelola Pola Makan yang Baik', 'Mengatur pola makan yang seimbang dengan memperbanyak makanan berbasis tanaman, mengurangi konsumsi makanan olahan, dan membatasi asupan gula dan garam dapat membantu meningkatkan kesehatan secara keseluruhan.', 'makananmenjagaberat.jpeg', '2024-03-18 22:51:15'),
(9, 'Manfaat Senyawa Antioksidan dalam Makanan', 'Makanan yang kaya antioksidan, seperti buah-buahan, sayuran, dan kacang-kacangan, dapat membantu melindungi tubuh dari kerusakan sel dan penyakit. Usahakan untuk mengonsumsi berbagai jenis makanan kaya antioksidan setiap hari.', 'anti.jpeg', '2024-03-18 22:51:15'),
(10, 'Tips Mengelola Berat Badan Secara Sehat', 'Menjaga berat badan yang sehat melibatkan kombinasi makanan sehat, olahraga teratur, dan pola tidur yang baik. Penting juga untuk menghindari diet ekstrem atau kebiasaan makan yang tidak sehat.', 'makananmenjagaberat.jpeg', '2024-03-18 22:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_bp` varchar(20) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `no_bp`, `no_hp`, `email`, `tanggal_input`) VALUES
(1, 'adul8', '2111082001', '45345325', 'abdi@gmail.com', '2024-03-18 17:21:14'),
(2, 'adul100', '42423424', '43242', 'fvsdfsf@gagsd.ff', '2024-03-18 17:21:14'),
(3, 'Michael Johnson', 'BP003', '083456789012', 'michael.johnson@example.com', '2024-03-18 17:21:14'),
(4, 'Emily Brown', 'BP004', '084567890123', 'emily.brown@example.com', '2024-03-18 17:21:14'),
(5, 'Daniel Wilson', 'BP005', '085678901234', 'daniel.wilson@example.com', '2024-03-18 17:21:14'),
(6, 'Olivia Lee', 'BP006', '086789012345', 'olivia.lee@example.com', '2024-03-18 17:21:14'),
(7, 'Matthew Taylor', 'BP007', '087890123456', 'matthew.taylor@example.com', '2024-03-18 17:21:14'),
(8, 'Ava Martinez', 'BP008', '088901234567', 'ava.martinez@example.com', '2024-03-18 17:21:14'),
(9, 'William Anderson', 'BP009', '089012345678', 'william.anderson@example.com', '2024-03-18 17:21:14'),
(16, 'abdillah', '4234234', '341414214', 'abdillahhndr2@gmail.com', '2024-03-18 17:52:52'),
(22, 'abdi000', '3124152', '4243242', 'fsdfsf@gmail.com', '2024-03-19 01:35:38'),
(23, 'adul10', '41414142', '4423424', 'abdiii@gmail.com', '2024-03-19 02:05:36'),
(24, 'adul11', '211108888', '4325252', 'abddadai@gmail.com', '2024-03-19 02:09:00'),
(25, 'abdi1234', '34242342', '3524552', 'abdi@ggagda.dd', '2024-03-19 02:11:59'),
(26, 'abdi1234', '34242342', '3524552', 'abdi@ggagda.dd', '2024-03-19 02:12:02'),
(27, 'avbdba222', '423242', '43424', 'sfada@fdfs.dd', '2024-03-19 02:13:23'),
(28, 'avbdba222', '423242', '43424', 'sfada@fdfs.dd', '2024-03-19 02:13:24'),
(29, 'avbdba222', '423242', '43424', 'sfada@fdfs.dd', '2024-03-19 02:13:26'),
(30, 'sdfsdfsf', '53453453', '43242', 'afsdfs@gsfgs.ff', '2024-03-19 02:14:45'),
(31, 'lagi', '3442342', '432424', 'lagi@gmail.com', '2024-03-19 02:18:30'),
(32, 'halo', '3242342', '4324243', 'halo@gmail.com', '2024-03-19 02:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `tgl_daftar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `fullname`, `tgl_daftar`) VALUES
(1, 'abdillah54321', 'udayusmi9@gmail.com', '4297f44b13955235245b2497399d7a93', 'abdillahhendra', '2023-04-03 14:29:15'),
(2, 'testNama', 'test@gmail.com', '4297f44b13955235245b2497399d7a93', 'test', '2023-04-03 16:45:02'),
(3, 'rizki1', 'rizki@gmail.com', '4297f44b13955235245b2497399d7a93', 'rizki syaputra', '2023-04-10 14:04:24'),
(4, 'rizki2', 'rizki2@gmail.com', '22fe8c5a186a927a430f467b96c75bb1', 'rizki syaputra', '2023-04-10 14:05:09'),
(5, 'rizkipm', 'rizki@udacoding.id', '4297f44b13955235245b2497399d7a93', 'RIzki Syaputrta', '2023-05-05 08:34:38'),
(6, 'rizkipm2', 'rizki2@udacoding.id', '4297f44b13955235245b2497399d7a93', 'RIzki Syaputrta1', '2023-05-05 09:23:27'),
(7, 'udin', 'udain@gmail.com', '4297f44b13955235245b2497399d7a93', 'udin', '2023-05-05 09:44:45'),
(8, 'udin2', 'udin2@gmail.com', '4297f44b13955235245b2497399d7a93', 'udin2', '2023-05-05 09:46:31'),
(9, 'rizkipm2', 'aim@gmail.com', '4297f44b13955235245b2497399d7a93', 'Rizki Syaputra Udacoding', '2023-05-12 09:10:34'),
(10, 'rizkiaimar', 'rizki_aimar@udacoding.com', 'ed2b1f468c5f915f3f1cf75d7068baae', 'Rizki Aimar', '2024-02-28 20:22:16'),
(11, 'udin2024', 'udin2024@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 'udin syaputra', '2024-03-04 19:35:44'),
(12, 'udinaja', 'udinaja@gmail.com', '4297f44b13955235245b2497399d7a93', 'udin2023', '2024-03-04 20:02:56'),
(13, 'abdi123', 'abdi@gmail.com', '311eba6dada049960e16974e652ef134', 'abdillah hr', '2024-03-18 01:46:04'),
(14, 'abdi555', 'abdi2321@gmail.com', '311eba6dada049960e16974e652ef134', 'abdillahhrrr', '2024-03-18 11:09:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
