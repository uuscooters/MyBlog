-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2018 at 09:48 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `url`, `cover`, `date`) VALUES
(1, 'Linux vs Unix: Apa Perbedaannya?', '<p>Jika pembaca adalah developer yang berumur sekitar 20 sampai 30 tahunan, pembaca hidup di jaman yang didominasi oleh Linux. Linux telah menjadi pemain besar di data center selama beberapa dekade. Meskipun sulit untuk mencari data <em>market share</em> sistem operasi yang paling akurat, Linux menguasai data center dengan persentase bisa mencapai 70% dimana sisanya diambil oleh berbagai varian Windows. Developer yang menggunakan sistem cloud publik yang besar bisa dipastikan akan memiliki sistem yang menjalankan Linux. Bukti bahwa Linux ada dimana-mana juga bisa ditemukan dengan sangat mudah saat ini seperti yang ada di Android perangkat telepon pintar denagn sistem berbasis Linux, TV, mobil, dan perangkat-perangkat lainnya. </p>\r\n<p>Meski begitu, sebagian besar software developers, bahkan developer yang tumbuh dimasa Linux merajalela pernah mendengar nama Unix. Namanya mirip dengan Linux sehingga terkadang kita bisa mendengar orang menggunakan dua nama itu untuk merujuk kesebuah teknologi yang sama. Atau mungkin, pembaca pernah juga mendengar bahwa Linux merupakan sistem operasi yang \"Unix-like\" alias seperti Unix. </p>\r\n', 'linux-vs-unix-apa-perbedaannya', 'cover1.jpg', '2018-07-31 04:47:15'),
(3, 'Artikel Pembaharuan', '<p>Sejarah Unix dimulai di AT&amp;T Bell Labs pada akhir tahun 1960-an oleh sebuah tim kecil yang terdiri dari beberapa orang programmer. Mereka bekerja untuk membangun sistem operasi yang multi-tasking dan multi-user untuk perangkat PDP-7. Dua anggota tim yang paling dikenal adalah Ken Thompson dan Dennis Ritchie. Meski banyak konsep Unix diimplementasi dari pendahulunya (<a href=\"https://en.wikipedia.org/wiki/Multics\" target=\"_blank\">Multics</a>), tim pengembang Unix di awal tahun 1970-an memutuskan untuk menulis ulang sistem operasi kecil ini dalam bahasa pemrograman C, ini lah yang membedakan Unix dengan sistem lain. Pada saat itu, sistem operasi sangat sangat sangat jarang bersifat portable. Sistem operasi yang ada saat itu diprogram dalam bahasa yang low-level sehingga hanya bisa dipasang di perangkat keras yang memang didesain untuk sistem oeprasi tersebut. Mengembangkan Unix dalam bahasa pemrograman C membuatnya bisa di-ported (diatur agar bisa dijalankan) di arsitektur perangkat keras yang berbeda-beda. </p>\r\n<p>Berkat portabilitasnya, Unix dapat dengan cepat berkembang diluar Bell Labs untuk penggunaan lain, dunia akademis, bahkan penggunaan komersial. Salah satu filsofi Ken Thompson menjadi model desain sistem software dan komputasi yang modular. <a href=\"https://en.wikipedia.org/wiki/Multics\" target=\"_blank\">Filosofi Unix</a> merekomendasikan penggunaan program yang kecil, memiliki satu tujuan yang dikombinasikan bersama untuk menyelesaikan permasalahan yang besar dan kompleks. Model \"piping\" untuk input dan output dimana program-program bekerja di satu kumpulan operasi secara linear masih dipakai sampai sekarang. Bahkan, model cloud function-as-a-service (FaaS)/serverless computing banyak belajar dari filosofi Unix ini. </p>', 'artikel-pembaharuan', '', '2018-07-31 04:47:30'),
(25, 'Judul Artikel Paling Baru Sekali', '<p>Unix proprietari masih hidup dan masih dipakai hingga saat ini, dimana banyak vendor menjanjikan dukungan rilis saat ini hingga 2020, sehingga bisa dikatakan Unix akan tetap ada entah sampai kapan. Ditambah lagi, cabang BSD yang memiliki NetBSD, OpenBSD, dan FreeBSD semuanya mempunyai basis pengguna yang kuat meskipun tidak terlihat seaktif komunitas Linux.</p>\r\n<p>Kekuatan Linux yang membuatnya mampu bersaing dengan Unix proprietari adalah ketersediaan untuk perangkat keras yang sangat banyak. Raspberry Pi, komputer mini yang sangat populer dikalangan pehobi IoT dijalankan menggunakan sistem Linux. Kita juga telah membahas perangkat seperti Android, mobil (dengan Automotive Grade Linux), dan smart TV, dimana Linux memiliki pangsa pasar yang besar. Setiap penyedia layanan cloud dibelahan dunia manapun pasti menawarkan virtual server yang menjalankan Linux karena banyak \"stack cloud-native\" yang populer saat ini berbasis Linux misalnya Kubernetes yang sekarang-sekarang sedang naik daun. </p>\r\n<p>Kemajuan Linux yang paling kentara saat ini tentu saja transformasi Microsoft di beberapa tahun terakhir. Jika pembaca memberitahu seseorang sepuluh tahun lalu bahwa Microsoft akan \"menjalankan Linux\" di tahun 2016, sebagian besar mereka mungkin akan tertawa guling-guling. Namun, eksistensi dan popularitas Windows Subsystem for Linux (WSL), dan port Docker untuk Windows yang baru-baru ini dirilis, termasuk dukungan LCOW (Linux containers on Windows) menunjukkan pengaruh besar Linux di dunia software. </p>', 'judul-artikel-paling-baru', '', '2018-07-31 05:49:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
