-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2020 at 09:23 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teman_jabar`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landing_fitur`
--

CREATE TABLE `landing_fitur` (
  `id` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landing_fitur`
--

INSERT INTO `landing_fitur` (`id`, `judul`, `deskripsi`, `icon`, `link`) VALUES
(1, 'Pengaduan', 'Ada masalah dengan insfrastruktur di daerah anda? Segera lapor kepada kami!', 'fas fa-bullhorn', '#laporan'),
(2, 'Paket Pekerjaan', 'projek pembangunan infrastruktur yang sudah kami selesaikan', 'fas fa-box-open', 'https://citylab.itb.ac.id/temanjabar-laravel/public/paket-pekerjaan'),
(3, 'UPTD', 'Perkembangan pembangunan disetiap kabupaten/kota', 'fas fa-map', '#uptd'),
(4, 'Progress Pekerjaan', 'Pantau semua proses pembangunan yang sedang dilakukan', 'fas fa-road', 'https://citylab.itb.ac.id/temanjabar-laravel/public/progress-pekerjaan'),
(5, 'Pelebaran Jalan', 'Cek jalan mana saja yang sudah kami perlebar dan perbaiki', 'fas fa-text-width', '#');

-- --------------------------------------------------------

--
-- Table structure for table `landing_pesan`
--

CREATE TABLE `landing_pesan` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landing_pesan`
--

INSERT INTO `landing_pesan` (`id`, `nama`, `email`, `pesan`, `created_at`) VALUES
(1, 'Rumah Sakit Santo Yusup', 'priyayidimas@upi.edu', 'dsfsdf', '2020-09-23 01:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `landing_profil`
--

CREATE TABLE `landing_profil` (
  `id` int(1) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `jam_layanan` varchar(20) NOT NULL,
  `link_website` varchar(255) DEFAULT NULL,
  `link_instagram` varchar(255) DEFAULT NULL,
  `link_facebook` varchar(255) DEFAULT NULL,
  `link_twitter` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `pencapaian_selesai` int(4) NOT NULL,
  `pencapaian_target` int(4) NOT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landing_profil`
--

INSERT INTO `landing_profil` (`id`, `nama`, `deskripsi`, `alamat`, `email`, `kontak`, `jam_layanan`, `link_website`, `link_instagram`, `link_facebook`, `link_twitter`, `gambar`, `pencapaian_selesai`, `pencapaian_target`, `updated_at`) VALUES
(1, 'DBMPR Provinsi Jawa Barat', 'Dinas Bina Marga dan Penataan Ruang Provinsi Jawa Barat merupakan salah satu dari dinas daerah dan menjadi bagian dari Pemerintah Daerah Provinsi Jawa Barat. Merupakan unsur pelaksana otonomi daerah yang mempunyai tugas melaksanakan urusan Bidang Kebinamargaan dan Penataan Ruang serta Tugas Pembantuan.', 'Jl. Asia Afrika No.79, Braga, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40111', 'dbmpr.jawabarat@support.com', '021 - 222 - 346', '08.00 - 17.00', 'http://dbmtr.jabarprov.go.id/', 'www.instagram.com', 'www.facebook.com', 'www.twitter.com', 'landing/profil/20200929042634_about.jpg', 874, 1200, '2020-09-24 02:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `landing_slideshow`
--

CREATE TABLE `landing_slideshow` (
  `id` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landing_slideshow`
--

INSERT INTO `landing_slideshow` (`id`, `judul`, `gambar`) VALUES
(3, 'DBMPR Konektivitas Seluruh Wilayah', 'landing/slideshow/20200929044055_hero01.jpg'),
(4, 'Proses Groundbreaking Dengan Vendor', 'landing/slideshow/20200929073236_hero02.jpg'),
(5, 'Membantu Pembangunan Tata Kelola', 'landing/slideshow/20200929073412_hero03.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `landing_uptd`
--

CREATE TABLE `landing_uptd` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `altnama` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landing_uptd`
--

INSERT INTO `landing_uptd` (`id`, `nama`, `slug`, `altnama`, `deskripsi`, `gambar`) VALUES
(1, 'UPTD 1', 'uptd1', 'Wilayah Pelayanan 1', 'WILAYAH KAB.CIANJUR-KOTA/KAB.BOGOR-KOTA DEPOK-KOTA/KAB.BEKASI', 'landing/uptd/20200929044758_uptd1.jpg'),
(2, 'UPTD 2', 'uptd2', 'Wilayah Pelayanan 2', 'WILAYAH KOTA & KAB. SUKABUMI', 'landing/uptd/20200929044736_uptd2.jpg'),
(3, 'UPTD 3', 'uptd3', 'Wilayah Pelayanan 3', 'WILAYAH KOTA/KAB.BANDUNG-KOTA CIMAHI-KAB.BANDUNG BARAT-KAB. SUBANG-KAB.PURWAKARTA-KAB.KARAWANG', 'landing/uptd/20200929044710_uptd3.jpg'),
(4, 'UPTD 4', 'uptd4', 'Wilayah Pelayanan 4', 'WILAYAH KAB.SUMEDANG-KAB.GARUT', 'landing/uptd/20200929045409_uptd4.jpeg'),
(5, 'UPTD 5', 'uptd5', 'Wilayah Pelayanan 5', 'WILAYAH KAB./KOTA TASIKMALAYA-KOTA BANJAR-KAB.CIAMIS-KAB.PANGANDARAN-KAB.KUNINGAN', 'landing/uptd/20200929053132_uptd5.jpg'),
(6, 'UPTD 6', 'uptd6', 'Wilayah Pelayanan 6', 'WILAYAH KOTA/KAB. CIREBON - KAB. MAJALENGKA- KAB. INDRAMAYU', 'landing/uptd/20200929053333_uptd6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monitoring_laporan_masyarakat`
--

CREATE TABLE `monitoring_laporan_masyarakat` (
  `id` int(10) NOT NULL,
  `nomorPengaduan` varchar(40) NOT NULL DEFAULT 'P-123123',
  `nama` varchar(100) DEFAULT NULL,
  `nik` varchar(17) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `jenis` varchar(40) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Submitted',
  `uptd_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monitoring_laporan_masyarakat`
--

INSERT INTO `monitoring_laporan_masyarakat` (`id`, `nomorPengaduan`, `nama`, `nik`, `alamat`, `telp`, `email`, `jenis`, `gambar`, `lokasi`, `lat`, `long`, `deskripsi`, `status`, `uptd_id`, `created_at`, `updated_at`) VALUES
(1, 'P-123123', 'Sumanto', '3212321323211232', 'Jalan', '082382123212', 'sumanto@mail.com', 'Jalan Berlubang', 'https://images.hukumonline.com/frontend/lt5a954764bab1a/lt5a954d70cd9dd.jpg', NULL, '-6', '141', 'Punten, Jalan dekat rumah saya rusak', 'Done', 1, NULL, '2020-11-21 01:53:29'),
(2, 'P-123123', 'NamaNama', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', NULL, NULL, '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Approved', 1, '2020-10-18 02:06:29', '2020-10-18 02:06:29'),
(3, 'P-123123', 'NamaSayaSiapa', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'laporan_masyarakat/20201018090932_Picture.jpg', NULL, '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'On Progress', 1, '2020-10-18 02:09:32', '2020-10-18 02:09:32'),
(4, 'P-123123', 'NamaSayaApa', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'laporan_masyarakat/20201103040209_Picture.jpg', NULL, '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Done', 1, '2020-11-02 21:02:09', '2020-11-02 21:02:09'),
(6, 'P-123123', 'NamaSayaApaSSA', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103114038_Picture.jpg', NULL, '-6', '138', 'Punten, Jalan dekat rumah saya rusak', 'Progress', 1, '2020-11-03 04:40:38', '2020-11-21 01:20:23'),
(7, 'P-123123', 'jsjsjs', '6464646464464949', 'Jalan', '646464949449', 'ha@js.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103135831_IMG-20201103-WA0010.jpg', NULL, '-6.92797', '107.67', 'nNan', 'Progress', 1, '2020-11-03 06:58:31', '2020-11-21 01:20:57'),
(8, 'P-123123', 'NamaSayaApa', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103141513_porsche_911_carrera_rsr_porsche_sports_car_139640_2560x1080.jpg', NULL, '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Progress', 1, '2020-11-03 07:15:13', '2020-11-21 01:21:32'),
(9, 'P-123123', 'Rizal Test', '6464644664644469', 'Jalan', '6464646464', 'hshsh@js.cmx', 'Trotoar Rusak', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103142142_IMG-20201103-WA0009.jpg', NULL, '-6.92793', '107.67', 'Rizal', 'Submitted', 1, '2020-11-03 07:21:42', '2020-11-03 07:21:42'),
(10, 'P-123123', 'saya', '6464995959594464', 'Jalan', '081316666161', 'kaka@mail.com', 'Trotoar Rusak', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103150200_IMG-20201103-WA0000.jpg', NULL, '-7.0030501', '107.6008543', 'rusak', 'Submitted', 1, '2020-11-03 08:02:00', '2020-11-03 08:02:00'),
(11, 'P-123123', 'karya bakti', '3208758121212121', 'Jalan', '08131698725', 'karya@bakti.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103155949_IMG_20201103_225736.jpg', NULL, '-6.9851835', '107.6068127', 'jalan berlubang mohon diperbaiki', 'Submitted', 1, '2020-11-03 08:59:49', '2020-11-03 08:59:49'),
(12, 'P-123123', 'kaka safika', '6984546494848424', 'Jalan', '081365484848', 'kaka12@gmail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201104035632_IMG_20201103_225736.jpg', NULL, '-6.985186', '107.6068151', 'jalan bolong', 'Submitted', 1, '2020-11-03 20:56:32', '2020-11-03 20:56:32'),
(13, 'P-123123', 'NamaSayaApa', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201111025325_Picture.jpg', NULL, '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Submitted', 1, '2020-11-10 19:53:25', '2020-11-10 19:53:25'),
(14, 'P-123123', 'zulkifli', '0856215669988566', 'Jalan', '081126957653', 'izqfly@gmail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201117001431_Screenshot_20201117-070906.jpg', NULL, '-6.9070754', '107.6453934', 'jalan rusak', 'Submitted', 1, '2020-11-16 17:14:31', '2020-11-16 17:14:31'),
(15, 'P-123123', 'Do', '3232323232323232', 'Jalan', '3232323', 'mail@mail.com', 'Jembatan Rusak', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201119073342_IMG-20201117-WA0016.jpg', NULL, '-6.8909188', '107.6228495', 'tidak ada', 'Submitted', 1, '2020-11-19 00:33:42', '2020-11-19 00:33:42'),
(16, 'P-123123', 'NamaSayaApa', '123123123', 'Jalanan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201120035349_Picture.jpg', 'Kota Bandung', '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Submitted', 1, '2020-11-19 20:53:49', '2020-11-19 20:53:49'),
(17, 'P-732032', 'NamaSayaApa', '123123123', 'Jalanan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', NULL, '1', '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Submitted', 1, '2020-11-20 20:20:19', '2020-11-20 20:20:19'),
(18, 'P-290776', 'Test', '1213464649464646', 'Bandung', '64644646464', 'haah@mail.com', 'Jalan Berlubang', 'http://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201121033832_IMG-20201120-WA0002.jpg', 'Kabupaten Bogor', '-6.9279996', '107.6699062', 'Test', 'Submitted', 1, '2020-11-20 20:38:32', '2020-11-20 20:38:32'),
(19, 'P-820472', 'kaka', '9797979997977979', 'jl.mama no.1', '081364548494', 'wfh@gmail.com', 'Jalan Berlubang', 'http://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201121144208_Screenshot_2020-11-21-21-40-31-718_com.temanjabar.app.jpg', 'Kabupaten Purwakarta', '-6.9851803', '107.6068084', NULL, 'Submitted', 3, '2020-11-21 07:42:08', '2020-11-21 07:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `monitoring_laporan_petugas`
--

CREATE TABLE `monitoring_laporan_petugas` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `pegawai_id` int(10) DEFAULT NULL,
  `perkembangan` varchar(255) DEFAULT NULL,
  `persentase` float DEFAULT NULL,
  `dokumentasi` varchar(255) DEFAULT NULL,
  `laporan_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monitoring_laporan_petugas`
--

INSERT INTO `monitoring_laporan_petugas` (`id`, `tanggal`, `pegawai_id`, `perkembangan`, `persentase`, `dokumentasi`, `laporan_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Tidak Ada', 0, 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201119073342_IMG-20201117-WA0016.jpg', 3, NULL, NULL),
(2, '2020-01-01', 3, 'Tidak Ada', 91, 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat_progress/20201120040048_Picture.jpg', 1, '2020-11-19 21:00:48', '2020-11-19 21:00:48'),
(3, '2020-01-01', 3, 'Tidak Ada', 90.8, 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat_progress/20201120040114_Picture.jpg', 1, '2020-11-19 21:01:14', '2020-11-19 21:01:14'),
(4, '2020-11-21', 1, 'test', 100, 'http://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat_progress/20201121085329_IMG-20201121-WA0000.jpg', 1, '2020-11-21 01:53:29', '2020-11-21 01:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `progress_mingguan`
--

CREATE TABLE `progress_mingguan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_paket` varchar(200) NOT NULL,
  `jenis_pekerjaan` varchar(200) NOT NULL,
  `sup` varchar(100) NOT NULL,
  `ruas_jalan` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `rencana` decimal(12,4) NOT NULL,
  `realisasi` decimal(12,4) NOT NULL,
  `deviasi` decimal(12,4) NOT NULL,
  `waktu_kontrak` decimal(10,2) NOT NULL,
  `terpakai` decimal(10,2) NOT NULL,
  `nilai_kontrak` decimal(20,2) NOT NULL,
  `bayar` decimal(20,2) NOT NULL,
  `bayar1` decimal(20,2) NOT NULL,
  `sisa` decimal(10,2) NOT NULL,
  `prosentase` decimal(10,2) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `video` varchar(200) NOT NULL,
  `penyedia_jasa` varchar(100) NOT NULL,
  `kegiatan` varchar(50) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progress_mingguan`
--

INSERT INTO `progress_mingguan` (`id`, `tanggal`, `nama_paket`, `jenis_pekerjaan`, `sup`, `ruas_jalan`, `lokasi`, `lat`, `lng`, `rencana`, `realisasi`, `deviasi`, `waktu_kontrak`, `terpakai`, `nilai_kontrak`, `bayar`, `bayar1`, `sisa`, `prosentase`, `foto`, `video`, `penyedia_jasa`, `kegiatan`, `kategori`, `status`) VALUES
(4, '2019-08-15', 'Peningkatan Jalan Cikadu - Kebon Muncang - Bts. Kab. Bandung/Cianjur (6,1 Km) - DAK', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC ', 'SPP CIANJUR II', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', 'KM.BDG. 58+770 - KM.BDG 64+870', -7.232266, 107.352188, '7.0090', '7.7250', '0.7160', '170.00', '40.00', '0.00', '0.00', '0.00', '130.00', '23.53', '20082019202152FotoPeningkatanJalanCikadu.jpg', '20082019202152VideoPeningkatanJalanCikadu', 'PT. SINAR MUTIARA', 'peningkatan', 'pr2', ''),
(5, '2019-08-15', 'Rehabilitasi Jalan Cileungsi - Cibeet (3 Km)', 'Pelapisan Ulang 1 Lapis AC-WC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 81+200 - KM.JKT.82+100', -6.522874, 107.127434, '2.7400', '0.0000', '-2.7400', '150.00', '28.00', '0.00', '0.00', '0.00', '122.00', '18.67', '20082019234840FotoRehabCileungsi.jpg', '20082019234840VideoRehabCileungsi', 'PT. CAHAYA RAMA PRATAMA', 'rehabilitasi', 'pr4', ''),
(6, '2019-08-15', 'Rehabilitasi Jembatan Cikarang Ruas Jalan Cileungsi - Cibeet', 'Pelebaran Jembatan menggunakan unit Pracetak Gelagar Type I', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 64+750 ', -6.436457, 107.052986, '4.3670', '0.4740', '-3.8930', '160.00', '28.00', '0.00', '0.00', '0.00', '132.00', '17.50', '20082019235428FotoRehabJembatanCikarang.jpg', '20082019235428VideoJembatanCikarang', 'PT. RESTU IBU', 'rehabilitasi', 'pr4', ''),
(7, '2019-08-15', 'Perbaikan Badan Jalan Cileungsi - Cibeet Km.Jkt. 96+900', 'TPT Beton Fc.30, Baja Tulangan U 24 Polos dan Tiang Bor Beton Dia. 80 cm', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 96+900', -6.434874, 107.047050, '21.3300', '0.0000', '-21.3300', '90.00', '28.00', '0.00', '0.00', '0.00', '62.00', '31.11', '20082019235844FotoPbjCileungsi96900.jpg', '20082019235844VideoPerbaikanBadanJalan96900.mp4', 'CV. PUTERA ZIA', 'rehabilitasi', 'pr4', ''),
(8, '2019-08-15', 'Perbaikan Badan Jalan Selajambe - Cibogo - Cibeet Km.Bdg. 78+500; Km.Bdg. 79+000 dan Km.Bdg. 79+500', 'TPT Beton dan Pelapisan Ulang 1 Lapis AC-WC ', 'SPP CIANJUR I', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', 'KM.BDG 73+762 - KM.BDG 73+885', -6.659006, 107.187561, '3.5700', '0.1400', '-3.4300', '120.00', '28.00', '0.00', '0.00', '0.00', '92.00', '23.33', '21082019000317FotoPBJSelajambe.jpg', '21082019000317VideoPBJSelajambe', 'CV. TATA KREATIPA', 'rehabilitasi', 'pr1', ''),
(9, '2019-08-15', 'Peningkatan Jalan Cileungsi - Cibeet (2 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 39+869 s.d KM.JKT. 43+200', -6.487520, 107.110527, '0.6520', '0.8210', '0.1690', '170.00', '33.00', '0.00', '0.00', '0.00', '137.00', '19.41', '21082019005514FotoPenignkatanCileungsi.jpg', '21082019005514VideoPeningkatanCileungsi.mp4', 'PT. BEKASI RAYA PUTRA', 'peningkatan', 'pr4', ''),
(16, '2019-08-15', 'Pelebaran dan Pembuatan Pedestrian Jalan Ruas Jalan Cileungsi - Cibeet (7,5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC/AC-BC dan Pelebaran menggunakan', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'km.Jkt 57+873 s.d.  km.Jkt. 64+503', -6.409300, 107.004204, '6.0770', '3.1020', '-2.9750', '170.00', '33.00', '0.00', '0.00', '0.00', '137.00', '19.41', '29082019102521', '29082019102521', 'PT. PRIMA MIXINDO UTAMA', 'peningkatan', 'pr4', ''),
(19, '2019-08-25', 'Paket peningkatan jalan cikadu - kebon muncang - bts bdg/cjr. (DAK) 6.1km', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC ', 'SPP CIANJUR II', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', 'KM.BDG 58+770 - KM.BDG 84+904 ', -7.232266, 107.352188, '13.4800', '14.4400', '0.9600', '170.00', '53.00', '0.00', '0.00', '0.00', '117.00', '31.18', '290820191049311fotocikadu25Ags.jpg', '290820191049311videocikadu25Ags.mp4', 'PT. SINAR MUTIARA', 'peningkatan', 'pr2', ''),
(20, '2019-08-25', 'Rehabilitasi Jalan Cileungsi - Cibeet (3 Km)', 'Pelapisan Ulang 1 Lapis AC-WC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 81+200 s.d KM.JKT. 90+500', -6.522874, 107.127434, '5.2400', '0.8400', '-4.4000', '150.00', '41.00', '0.00', '0.00', '0.00', '109.00', '27.33', '290820191055452afotocileungsi25Ags.jpg', '290820191055452avideocileungsi25Ags.mp4', 'PT. CAHAYA RAMA PRATAMA', 'rehabilitasi', 'pr4', ''),
(23, '2019-08-25', 'Rehabilitasi Jembatan Cikarang Ruas Jalan Cileungsi - Cibeet', 'Pelebaran Jembatan menggunakan unit Pracetak Gelagar Type I', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 64+750', -6.436457, 107.052986, '9.7900', '0.4700', '-9.3200', '160.00', '41.00', '0.00', '0.00', '0.00', '119.00', '25.63', '290820191113503fotoJembCikarang25Ags.jpg', '290820191113503videoJembCikarang25Ags.mp4', 'PT. RESTU IBU', 'rehabilitasi', 'pr4', ''),
(26, '2019-08-25', 'Perbaikan Badan Jalan Selajambe - Cibogo - Cibeet Km.Bdg. 78+500; Km.Bdg. 79+000 dan Km.Bdg. 79+500', 'TPT Beton dan Pelapisan Ulang 1 Lapis AC-WC ', 'SPP CIANJUR I', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', 'KM. BDG. 78+500 + KM. BDG. 79+546', -6.659006, 107.187561, '8.1000', '0.1400', '-7.9600', '120.00', '41.00', '0.00', '0.00', '0.00', '79.00', '34.17', '290820191134055fotoPBJSelajambe25Ags.jpg', '290820191134055videoPBJSelajambe25Ags.mp4', 'CV. TATA KREATIPA', 'rehabilitasi', 'pr1', ''),
(27, '2019-08-25', 'Peningkatan Jalan Cileungsi - Cibeet (2 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Perkerasan Beton Semen', '', 'CILEUNGSI - CIBEET', 'KM.JKT. 75+700 s.d KM.JKT. 77+700', -6.487520, 107.110527, '7.5700', '1.2100', '-6.3600', '150.00', '30.00', '0.00', '0.00', '0.00', '120.00', '20.00', '290820191140022fotoCileungsi25Agsting.jpg', '290820191140022videoCileungsi25Agsting.mp4', 'PT. BEKASI RAYA PUTRA', 'peningkatan', '', ''),
(28, '2019-08-25', 'Pelebaran dan Pembuatan Pedestrian Jalan Ruas Jalan Cileungsi - Cibeet (7,5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 57+873 s.d KM.JKT. 66+373', -6.409300, 107.004204, '10.0200', '5.8200', '-4.2000', '170.00', '48.00', '0.00', '0.00', '0.00', '122.00', '28.24', '290820191148333fotoPedestrian25Ags.jpg', '290820191148333fotoPedestrian25Ags.jpg', 'PT. PRIMA MIXINDO UTAMA', 'peningkatan', 'pr4', ''),
(37, '2019-08-25', 'Perbaikan Badan Jalan Cileungsi - Cibeet Km.Jkt. 96+900', 'TPT Beton Fc.30, Baja Tulangan U 24 Polos dan Tiang Bor Beton Dia. 80 cm', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM. JKT 96+900', -6.640184, 107.168022, '22.9300', '20.7900', '-2.1400', '90.00', '41.00', '0.00', '0.00', '0.00', '49.00', '45.56', '30082019101433', '30082019101433', 'CV. PUTERA ZIA', 'rehabilitasi', 'pr4', ''),
(40, '2019-08-25', 'Peningkatan Jalan Sp. Tole Iskandar - Pondok Rajeg (Bts. Depok/Bogor) (5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR I', 'SP. JALAN TOLE ISKANDAR - PONDOK RAJEG (BTS. DEPOK/BOGOR)', 'KM. JKT 39+869 - KM. JKT KM. JKT 44+869', -6.404000, 106.838402, '1.2460', '0.8900', '-0.3560', '170.00', '46.00', '0.00', '0.00', '0.00', '124.00', '27.06', '300820191026001fotoSpTole25Ags.jpg', 'sptole.mp4', 'PT. MUTIARA INDAH PURNAMA', 'peningkatan', 'pr3', ''),
(42, '2019-08-15', 'Peningkatan Jalan Sp. Tole Iskandar - Pondok Rajeg (Bts. Depok/Bogor) (5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR I', 'SP. JALAN TOLE ISKANDAR - PONDOK RAJEG (BTS. DEPOK/BOGOR)', 'KM. JKT 39+869 - KM. JKT KM. JKT 44+869', -6.404000, 106.838402, '0.6520', '0.8210', '0.1690', '170.00', '33.00', '0.00', '0.00', '0.00', '137.00', '19.41', '30082019103801', '', 'PT. MUTIARA INDAH PURNAMA', 'peningkatan', 'pr3', ''),
(43, '2019-08-31', 'Peningkatan Jalan Sp. Tole Iskandar - Pondok Rajeg (Bts. Depok/Bogor) (5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR I', 'SP. JALAN TOLE ISKANDAR - PONDOK RAJEG (BTS. DEPOK/BOGOR)', 'KM.JKT. 39+869 s.d KM.JKT. 44+869', -6.404000, 106.838402, '2.3400', '0.2200', '-2.1200', '170.00', '52.00', '0.00', '0.00', '0.00', '118.00', '30.59', '030920190041291FotoTingSpTole31Ags.jpg', '030920190041291VideoTingSpTole31Ags.mp4', 'PT. MUTIARA INDAH PURNAMA', 'peningkatan', 'pr3', ''),
(44, '2019-08-31', 'Peningkatan Jalan Cileungsi - Cibeet (2 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Perkerasan Beton Semen', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 75+700 s.d KM.JKT. 77+700', -6.487520, 107.110527, '9.6700', '10.2800', '0.6100', '150.00', '36.00', '0.00', '0.00', '0.00', '114.00', '24.00', '030920190045112FotoTingCileungsi31Ags.jpg', '030920190045112VideoTingCIleungsi31Ags.mp4', 'PT. BEKASI RAYA PUTRA', 'peningkatan', 'pr4', ''),
(45, '2019-08-31', 'Pelebaran dan Pembuatan Pedestrian Jalan Ruas Jalan Cileungsi - Cibeet (7,5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 57+873 s.d KM.JKT. 66+373', -6.409300, 107.004204, '12.6200', '8.5900', '-4.0300', '170.00', '54.00', '0.00', '0.00', '0.00', '116.00', '31.76', '030920190052003FotoPedestrian31Ags.jpg', '03092019005200', 'PT. PRIMA MIXINDO UTAMA', 'peningkatan', 'pr4', ''),
(46, '2019-08-31', 'Peningkatan Jalan Cikadu - Kebon Muncang - Bts. Kab. Bandung/Cianjur (6,1 Km) - DAK', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC ', 'SPP CIANJUR II', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', 'KM.BDG 58+770 - KM.BDG 90+500', -6.522874, 107.127434, '6.2160', '2.0160', '-4.2000', '150.00', '47.00', '0.00', '0.00', '0.00', '103.00', '31.33', '030920190058221FotoTingCikadu31Ags.jpg', '030920190058221VideoTingCikadu31Ags.mp4', 'PT. SINAR MUTIARA', 'peningkatan', 'pr2', ''),
(47, '2019-08-31', 'Rehabilitasi Jalan Cileungsi - Cibeet (3 Km)', 'Pelapisan Ulang 1 Lapis AC-WC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 81+200 s.d KM.JKT. 90+500', -6.522874, 107.127434, '6.2160', '2.0160', '-4.2000', '150.00', '47.00', '0.00', '0.00', '0.00', '103.00', '31.33', '030920190103112FotoRehabCileungsi31Ags.jpg', '030920190103112VideoRehabCileungsi31Ags.mp4', 'PT. CAHAYA RAMA PRATAMA', 'rehabilitasi', 'pr4', ''),
(48, '2019-08-31', 'Peningkatan Jalan Cikadu - Kebon Muncang - Bts. Kab. Bandung/Cianjur (6,1 Km) - DAK', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC ', 'SPP CIANJUR II', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', 'KM.BDG 58+770 - KM.BDG 84+904 ', -7.232266, 107.352188, '17.5260', '17.5880', '0.0620', '170.00', '59.00', '0.00', '0.00', '0.00', '111.00', '34.71', '030920190107081FotoTingCikadu31Ags.jpg', '030920190107081VideoTingCikadu31Ags.mp4', 'PT. SINAR MUTIARA', 'peningkatan', 'pr2', ''),
(49, '2019-08-31', 'Rehabilitasi Jembatan Cikarang Ruas Jalan Cileungsi - Cibeet', 'Pelebaran Jembatan menggunakan unit Pracetak Gelagar Type I', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 64+750', -6.436457, 107.052986, '11.6900', '0.4700', '-11.2200', '160.00', '47.00', '0.00', '0.00', '0.00', '113.00', '29.38', '030920190110243FotoJembCikarang31Ags.jpg', '030920190110243VideJembCikarang31Ags.mp4', 'PT. RESTU IBU', 'rehabilitasi', 'pr4', ''),
(50, '2019-08-31', 'Perbaikan Badan Jalan Cileungsi - Cibeet Km.Jkt. 96+900', 'TPT Beton Fc.30, Baja Tulangan U 24 Polos dan Tiang Bor Beton Dia. 80 cm', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 96+900', -6.640184, 107.168022, '23.9220', '24.9470', '1.0250', '90.00', '47.00', '0.00', '0.00', '0.00', '43.00', '52.22', '030920190113094FotoPBJ9690031Ags.jpg', '030920190113094VideoPBJ9690031Ags.mp4', 'CV. PUTERA ZIA', 'rehabilitasi', 'pr4', ''),
(51, '2019-08-31', 'Perbaikan Badan Jalan Selajambe - Cibogo - Cibeet Km.Bdg. 78+500; Km.Bdg. 79+000 dan Km.Bdg. 79+500', 'TPT Beton dan Pelapisan Ulang 1 Lapis AC-WC ', 'SPP CIANJUR I', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', 'KM.BDG 78+500 - KM.BDG 79+546', -6.659006, 107.187561, '13.8400', '13.7500', '-0.0900', '120.00', '47.00', '0.00', '0.00', '0.00', '73.00', '39.17', '030920190116255FotoPBJSelajambe31Ags.jpg', '030920190116255VideoPBJSelajambe31Ags.mp4', 'CV. TATA KREATIPA', 'rehabilitasi', 'pr1', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_otp` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'masyarakat',
  `internal_role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `kode_otp`, `role`, `internal_role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@mail.com', '2020-10-19 15:33:46', '$2y$10$y1wR2I0NCyLpCz26nnO/2OS5aSqbGgOufKcPMS3EdMeAaCHM6zyFa', '296056', 'internal', 1, NULL, NULL, '2020-11-23 09:03:10'),
(2, 'Masyarakat', 'masyarakat@mail.com', '2020-10-19 15:34:06', '$2y$10$Kg32vyPq7Mt5cl1WtSpIXO0G2/aMolyrJrElW8kr/wNdXcDUFBTti', NULL, 'masyarakat', NULL, NULL, NULL, '2020-11-23 09:05:49'),
(3, 'Kadis', 'kadis@mail.com', '2020-10-19 01:55:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '504286', 'internal', 2, NULL, '2020-11-15 01:37:00', '2020-10-19 08:56:07'),
(4, 'Kabid', 'kabid@mail.com', '2020-10-19 01:55:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '504286', 'internal', 3, NULL, NULL, '2020-10-19 08:56:07'),
(5, 'Kepala UPTD 3', 'uptd3@mail.com', '2020-11-15 01:38:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '504286', 'internal', 14, NULL, NULL, NULL),
(6, 'Kepala UPTD 1', 'uptd1@mail.com', '2020-11-15 01:38:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '504286', 'internal', 12, NULL, NULL, NULL),
(30, 'Siapa Ini', 'priyayidimas@gmail.com', '2020-11-02 18:15:15', '$2y$10$O9TK1cSq4iScXdTbB.azuerp6vGBo/YULNU4wxPUc62mSjKnYDlgy', '873697', 'masyarakat', NULL, NULL, '2020-11-02 17:40:47', '2020-11-02 20:29:13'),
(34, 'siapa ini', 'priyayidimas@upi.edu', NULL, '$2y$10$Ks9gLAWqf4AXz8mPOkT5R.t8tosLkUWzdHLXr51QotYV6VkwOFiBS', '840879', 'masyarakat', NULL, NULL, '2020-11-02 19:27:12', '2020-11-02 19:31:02'),
(35, 'siapa lagi ini', 'mendozadante05@gmail.com', '2020-11-02 19:33:23', '$2y$10$ti2xjEI0pRCtos955DNuzuamppBRFdm8DxaElRg78FPQtFW78eucW', '299279', 'masyarakat', NULL, NULL, '2020-11-02 19:33:10', '2020-11-02 19:33:23'),
(36, 'Niko', 'nikop0003@gmail.com', '2020-11-10 18:45:25', '$2y$10$sgxWOoIL6tSe6mFtnnCRQu6VPMid7cvqnqNv5SiLTpxUeiO29Xj/.', '539668', 'masyarakat', NULL, NULL, '2020-11-10 18:44:32', '2020-11-10 18:45:25'),
(37, 'andi', 'andi@gmaill.com', NULL, '$2y$10$qpPmvIZZpHipITgZvthvNO.5PpduG7XmaEAm0eeAD9Rc8DLMGmO56', '899998', 'masyarakat', NULL, NULL, '2020-11-15 16:41:12', '2020-11-15 16:41:12'),
(38, 'zulkifli', 'izqfly@gmail.com', '2020-11-16 17:00:14', '$2y$10$ZWcNtzQNpCg2zvGzWZK/dO9qlPt4aumh3VdScPqVhvO9Y9hcvg.bi', '318930', 'masyarakat', NULL, NULL, '2020-11-16 16:58:18', '2020-11-16 17:00:14'),
(39, 'kaka', 'ekafise.pns@gmail.com', '2020-11-21 07:36:31', '$2y$10$i1FILLdNG2RzzkJ9MfAWLuAJOCVfyM.mgPMbCv7/a8vbVpCngfnGC', '607711', 'masyarakat', NULL, NULL, '2020-11-21 07:35:11', '2020-11-21 07:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_bidang`
--

CREATE TABLE `user_bidang` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_bidang`
--

INSERT INTO `user_bidang` (`id`, `kode`, `nama`, `keterangan`, `is_active`, `is_delete`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '001', 'JASA KONSTRUKSI', '', 1, 0, '2019-01-16 07:59:49', '2019-01-17 07:47:37', 1, 1),
(2, '002', 'PENGATURAN JASA KONSTRUKSI', '', 1, 0, '2019-01-16 08:13:28', '2019-01-17 07:47:25', 1, 1),
(3, '003', 'PENGAWASAN DATA DAN INFORMASI', '', 1, 0, '2019-01-17 07:47:12', '2019-01-17 07:47:12', 1, 1),
(4, '004', 'PEMBERDAYAAN JASA KONSTRUKSI', '', 1, 0, '2019-01-17 07:48:29', '2019-01-17 07:50:02', 1, 1),
(5, '005', 'TEKNIK JALAN', '', 1, 0, '2019-01-17 07:48:48', '2019-01-17 07:50:15', 1, 1),
(6, '006', 'REKAYASA TEKNIK', '', 1, 0, '2019-01-17 07:49:05', '2019-01-17 07:50:25', 1, 1),
(7, '007', 'SISTEM JARINGAN DAN LEGER JALAN', '', 1, 0, '2019-01-17 07:49:26', '2019-01-17 07:50:34', 1, 1),
(8, '008', 'REGULASI DAN KERJASAMA', '', 1, 0, '2019-01-17 07:49:49', '2019-01-17 07:49:49', 1, 1),
(9, '009', 'PEMELIHARAAN DAN PEMBANGUNAN JALAN', '', 1, 0, '2019-01-17 07:51:07', '2019-01-17 07:51:07', 1, 1),
(10, '010', 'PEMELIHARAAN', '', 1, 0, '2019-01-17 07:51:23', '2019-01-17 07:51:23', 1, 1),
(11, '011', 'PEMBANGUNAN', '', 1, 0, '2019-01-17 07:51:57', '2019-01-17 07:51:57', 1, 1),
(12, '012', 'PENGAWASAN DAN PEMANFAATAN', '', 1, 0, '2019-01-17 07:52:19', '2019-01-17 07:52:19', 1, 1),
(13, '013', 'BIDANG PENATAAN RUANG', '', 1, 0, '2019-01-17 07:52:41', '2019-01-17 07:52:41', 1, 1),
(14, '014', 'PERENCANAAN TATA RUANG', '', 1, 0, '2019-01-17 07:53:00', '2019-01-17 07:53:00', 1, 1),
(15, '015', 'PEMANFAATAN RUANG', '', 1, 0, '2019-01-17 07:53:17', '2019-02-20 13:05:09', 1, 1),
(16, '016', 'PENGENDALIAN DAN PEMANFAATAN RUANG', '', 1, 0, '2019-01-17 07:53:36', '2019-01-17 07:53:36', 1, 1),
(17, '017', 'SEKRETARIATAN', '', 1, 0, '2019-01-17 07:53:48', '2019-01-17 07:53:48', 1, 1),
(18, '018', 'SUB BADAN KEUANGAN DAN ASET', '', 1, 0, '2019-01-17 07:54:10', '2019-01-17 07:54:10', 1, 1),
(19, '019', 'SUB BADAN PERENCANAAN DAN PELAPORAN', '', 1, 0, '2019-01-17 07:54:40', '2019-01-17 07:54:40', 1, 1),
(20, '020', 'SUB BADAN KEPAWAIAN DAN UMUM', '', 1, 0, '2019-01-17 07:54:59', '2019-01-17 07:54:59', 1, 1),
(88, '021', 'UPTD 1', NULL, 1, 0, '2020-09-24 23:59:30', '2020-09-24 23:59:40', NULL, NULL),
(89, '022', 'UPTD 2', NULL, 1, 0, '2020-09-24 23:59:32', '2020-09-24 23:59:40', NULL, NULL),
(90, '023', 'UPTD 3', NULL, 1, 0, '2020-09-24 23:59:34', '2020-09-24 23:59:39', NULL, NULL),
(91, '024', 'UPTD 4', NULL, 1, 0, '2020-09-24 23:59:35', '2020-09-24 23:59:38', NULL, NULL),
(92, '025', 'UPTD 5', NULL, 1, 0, '2020-09-24 23:59:35', '2020-09-24 23:59:37', NULL, NULL),
(93, '026', 'UPTD LAB', NULL, 1, 0, '2020-09-24 23:59:36', '2020-09-24 23:59:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_pegawai`
--

CREATE TABLE `user_pegawai` (
  `id` int(11) NOT NULL,
  `no_pegawai` varchar(50) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL COMMENT '0=Perempuan, 1=Laki-Laki',
  `no_tlp` varchar(100) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bidang_id` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_pegawai`
--

INSERT INTO `user_pegawai` (`id`, `no_pegawai`, `nama`, `tgl_lahir`, `jenis_kelamin`, `no_tlp`, `user_id`, `bidang_id`, `is_delete`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '111111', 'Administrator', '1990-05-11', 'Laki-laki', '0214407377', 1, 1, 0, NULL, '2019-01-28 08:19:43', NULL, 1),
(2, '222222', 'Pusing', '2000-05-02', 'Perempuan', '', NULL, 2, 0, NULL, '2019-02-21 14:23:56', NULL, 1),
(3, '123123213', 'Petugas Tukang Jalan', '2020-11-26', 'Perempuan', '123123123', NULL, 3, 0, '2020-11-19 10:19:25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `is_superadmin` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes',
  `keterangan` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_deleted` int(11) DEFAULT 0,
  `uptd` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`, `is_superadmin`, `keterangan`, `is_active`, `is_deleted`, `uptd`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'admin', 1, 'Administrator', 1, 0, NULL, NULL, NULL, NULL, NULL),
(2, 'kadis', 0, 'Kepala Dinas', 1, 0, NULL, NULL, NULL, NULL, NULL),
(3, 'kabid jakon', 0, 'Kepala Bidang Jasa Konstruksi', 1, 0, NULL, NULL, NULL, NULL, NULL),
(4, 'kabid bidtek', 0, 'Kepala Bidang Teknik Jalan', 1, 0, NULL, NULL, NULL, NULL, NULL),
(5, 'kabid pemeliharan dan pembangunan jalan', 0, 'Kepala Bidang Pemeliharaan dan pembangunan jalan', 1, 0, NULL, NULL, NULL, NULL, NULL),
(6, 'kabid penataan ruang', 0, 'Kepala Bidang Penataan Ruang', 1, 0, NULL, NULL, NULL, NULL, NULL),
(7, 'sekretariatan', 0, 'Sekretariatan', 1, 0, NULL, NULL, NULL, NULL, NULL),
(8, 'kasie pengaturan jakon', 0, 'Kepala Seksi Pengaturan Jasa Konstruksi', 1, 0, NULL, NULL, NULL, NULL, NULL),
(9, 'kasie pengawasan data informasi', 0, 'Kepala Seksi Pengawasan Data Informasi', 1, 0, NULL, NULL, NULL, NULL, NULL),
(10, 'kasie pemberdayaan jasa konstruksi', 0, 'Kepala Seksi Pemberdayaan Jasa Konstruksi', 1, 0, NULL, NULL, NULL, NULL, NULL),
(11, 'kasie rekayasa teknik', 0, 'Kepala Seksi Rekayasa Teknik', 1, 0, NULL, NULL, NULL, NULL, NULL),
(12, 'kepala uptd 1', 0, 'Unit Pelaksana Teknis Dinas 1', 1, 0, 'uptd1', NULL, NULL, NULL, NULL),
(13, 'kepala uptd 2', 0, 'Unit Pelaksana Teknis Dinas 2', 1, 0, 'uptd2', NULL, NULL, NULL, NULL),
(14, 'kepala uptd 3', 0, 'Unit Pelaksana Teknis Dinas 3', 1, 0, 'uptd3', NULL, NULL, NULL, NULL),
(15, 'kepala uptd 4', 0, 'Unit Pelaksana Teknis Dinas 4', 1, 0, 'uptd4', NULL, NULL, NULL, NULL),
(16, 'kepala uptd 5', 0, 'Unit Pelaksana Teknis Dinas 5', 1, 0, 'uptd5', NULL, NULL, NULL, NULL),
(17, 'kepala uptd 6', 0, 'Unit Pelaksana Teknis Dinas 6', 1, 0, 'uptd6', NULL, NULL, NULL, NULL),
(18, 'UPTD Laboratoriun', 0, 'Unit Pelaksana Teknis Dinas Laboratorium', 1, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `utils_jenis_laporan`
--

CREATE TABLE `utils_jenis_laporan` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utils_jenis_laporan`
--

INSERT INTO `utils_jenis_laporan` (`id`, `name`) VALUES
('Jalan Berlubang', 'Jalan Berlubang'),
('Jembatan Rusak', 'Jembatan Rusak'),
('Keputusan Masyarakat', 'Keputusan Masyarakat'),
('Tiang & Kabel Listri', 'Tiang & Kabel Listri'),
('Trotoar Rusak', 'Trotoar Rusak');

-- --------------------------------------------------------

--
-- Table structure for table `utils_lokasi`
--

CREATE TABLE `utils_lokasi` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utils_lokasi`
--

INSERT INTO `utils_lokasi` (`id`, `name`) VALUES
(1, 'Kabupaten Bogor'),
(2, 'Kabupaten Sukabumi'),
(3, 'Kabupaten Cianjur'),
(4, 'Kabupaten Bandung'),
(5, 'Kabupaten Bandung Barat'),
(6, 'Kabupaten Garut'),
(7, 'Kabupaten Tasikmalaya'),
(8, 'Kabupaten Ciamis'),
(9, 'Kabupaten Kuningan'),
(10, 'Kabupaten Cirebon'),
(11, 'Kabupaten Majalengka'),
(12, 'Kabupaten Sumedang'),
(13, 'Kabupaten Indramayu'),
(14, 'Kabupaten Subang'),
(15, 'Kabupaten Purwakarta'),
(16, 'Kabupaten Karawang'),
(17, 'Kabupaten Bekasi'),
(18, 'Kabupaten Pangandaran'),
(19, 'Kota Bogor'),
(20, 'Kota Sukabumi'),
(21, 'Kota Bandung'),
(22, 'Kota Cirebon'),
(23, 'Kota Bekasi'),
(24, 'Kota Depok'),
(25, 'Kota Cimahi'),
(26, 'Kota Tasikmalaya'),
(27, 'Kota Banjar');

-- --------------------------------------------------------

--
-- Table structure for table `utils_notifikasi`
--

CREATE TABLE `utils_notifikasi` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utils_notifikasi`
--

INSERT INTO `utils_notifikasi` (`id`, `title`, `subtitle`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Pengaduan Jalan Rusak (Internal)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.', 'internal', '2020-09-18 17:00:00', NULL),
(2, 'Pengaduan Jalan Rusak (Internal)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.', 'internal', '2020-09-18 17:00:00', NULL),
(3, 'Pengaduan Jalan Rusak (Masyarakat)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.', 'masyarakat', '2020-09-18 17:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_fitur`
--
ALTER TABLE `landing_fitur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_pesan`
--
ALTER TABLE `landing_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_profil`
--
ALTER TABLE `landing_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_slideshow`
--
ALTER TABLE `landing_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_uptd`
--
ALTER TABLE `landing_uptd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoring_laporan_masyarakat`
--
ALTER TABLE `monitoring_laporan_masyarakat`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `uptd_id` (`uptd_id`) USING BTREE;

--
-- Indexes for table `monitoring_laporan_petugas`
--
ALTER TABLE `monitoring_laporan_petugas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `progress_mingguan`
--
ALTER TABLE `progress_mingguan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_bidang`
--
ALTER TABLE `user_bidang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_pegawai`
--
ALTER TABLE `user_pegawai`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `bidang_id` (`bidang_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `utils_jenis_laporan`
--
ALTER TABLE `utils_jenis_laporan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `utils_lokasi`
--
ALTER TABLE `utils_lokasi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `utils_notifikasi`
--
ALTER TABLE `utils_notifikasi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landing_fitur`
--
ALTER TABLE `landing_fitur`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `landing_pesan`
--
ALTER TABLE `landing_pesan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `landing_profil`
--
ALTER TABLE `landing_profil`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `landing_slideshow`
--
ALTER TABLE `landing_slideshow`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `landing_uptd`
--
ALTER TABLE `landing_uptd`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `monitoring_laporan_masyarakat`
--
ALTER TABLE `monitoring_laporan_masyarakat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `monitoring_laporan_petugas`
--
ALTER TABLE `monitoring_laporan_petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `progress_mingguan`
--
ALTER TABLE `progress_mingguan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_bidang`
--
ALTER TABLE `user_bidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `user_pegawai`
--
ALTER TABLE `user_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1374;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `utils_notifikasi`
--
ALTER TABLE `utils_notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_pegawai`
--
ALTER TABLE `user_pegawai`
  ADD CONSTRAINT `user_pegawai_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_pegawai_ibfk_2` FOREIGN KEY (`bidang_id`) REFERENCES `user_bidang` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
