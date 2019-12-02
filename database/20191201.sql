-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2019 at 05:43 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w4c_official`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `achievement_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `achievement_name` varchar(255) DEFAULT NULL,
  `achievement_count` varchar(255) DEFAULT NULL,
  `achievement_unit` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `achievement`
--

INSERT INTO `achievement` (`achievement_id`, `service_id`, `achievement_name`, `achievement_count`, `achievement_unit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'lorem-ipsum', '9999', '', '0000-00-00 00:00:00', '2019-11-24 03:20:55', NULL),
(2, 1, 'lorem-ipsum', '9999', '', '0000-00-00 00:00:00', '2019-11-24 03:20:55', NULL),
(3, 1, 'lorem-ipsum', '9999', '', '0000-00-00 00:00:00', '2019-11-24 03:20:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `benefit`
--

CREATE TABLE `benefit` (
  `benefit_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `benefit_name` varchar(255) DEFAULT NULL,
  `benefit_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `benefit`
--

INSERT INTO `benefit` (`benefit_id`, `service_id`, `benefit_name`, `benefit_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(25, 1, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(26, 1, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(27, 1, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(28, 1, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(29, 1, 'increasing-staff’s-awareness-of-waste-issues', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(30, 2, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(31, 2, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(32, 2, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(33, 2, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(34, 2, 'increasing-staff’s-awareness-of-waste-issues', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(35, 3, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(36, 3, 'reduce-waste-to-landfill', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(37, 3, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(38, 3, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(39, 3, 'increasing-staff’s-awareness-of-waste-issues', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(40, 4, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(41, 4, 'reduce-waste-to-landfill', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(42, 4, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(43, 4, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(44, 4, 'increasing-staff’s-awareness-of-waste-issues', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(45, 5, 'zero-waste-to-landfill', NULL, '2019-11-24 03:23:39', '2019-12-01 15:35:18', NULL),
(46, 5, 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(47, 5, 'waste-journey-report', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL),
(48, 5, 'help-to-increase-recycling-rate', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_logo` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `service_id`, `client_name`, `client_logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'Binus School', 'Binus-School.jpg', '2019-11-24 03:27:24', '2019-11-28 00:43:29', NULL),
(3, 1, 'Javara', 'Javara.jpg', '2019-11-24 03:27:24', '2019-11-27 22:48:09', NULL),
(4, 1, 'Mang Kabayan', 'Mang-Kabayan.jpg', '2019-11-24 03:27:24', '2019-11-28 00:43:29', NULL),
(5, 1, 'Seniman Pangan', 'Seniman-Pangan.jpg', '2019-11-24 03:27:24', '2019-11-28 00:43:29', NULL),
(6, 1, 'Wisma Barito', 'Wisma-Barito.jpg', '2019-11-24 03:27:24', '2019-11-28 00:43:29', NULL),
(7, 2, 'Danone', 'Danone.jpg', '2019-11-24 03:27:24', '2019-11-28 00:18:14', NULL),
(8, 2, 'DBS', 'DBS.jpg', '2019-11-24 03:27:24', '2019-11-28 00:18:14', NULL),
(9, 2, 'Decathlon', 'Decathlon.jpg', '2019-11-28 00:18:17', '2019-11-28 00:18:17', NULL),
(10, 2, 'Gojek', 'Gojek.jpg', '2019-11-28 00:18:17', '2019-11-28 00:18:17', NULL),
(11, 2, 'IKEA', 'IKEA.jpg', '2019-11-28 00:18:17', '2019-11-28 00:18:17', NULL),
(12, 2, 'L Oreal', 'L-Oreal.jpg', '2019-11-28 00:18:17', '2019-11-28 00:43:29', NULL),
(13, 2, 'Potato Head', 'Potato-Head.jpg', '2019-11-28 00:18:17', '2019-11-28 00:40:12', NULL),
(14, 2, 'PUPR', 'PUPR.jpg', '2019-11-28 00:18:17', '2019-11-28 00:18:17', NULL),
(15, 2, 'RSPO', 'RSPO.jpg', '2019-11-28 00:18:17', '2019-11-28 00:18:17', NULL),
(16, 2, 'Ruang Selatan', 'Ruang-Selatan.jpg', '2019-11-28 00:18:17', '2019-11-28 00:43:29', NULL),
(17, 2, 'Sudarman 7.8', 'Sudarman-7.8.jpg', '2019-11-28 00:18:17', '2019-11-28 00:43:29', NULL),
(18, 2, 'The Body Shop ', 'The-Body-Shop-.jpg', '2019-11-28 00:18:17', '2019-11-28 00:43:29', NULL),
(19, 2, 'World Bank', 'World-Bank.jpg', '2019-11-28 00:18:17', '2019-11-28 00:43:29', NULL),
(20, 2, 'Young Living', 'Young-Living.jpg', '2019-11-28 00:18:17', '2019-11-28 00:43:29', NULL),
(21, 3, 'Climate Policy Initiative', 'Climate-Policy-Initiative.jpg', '2019-11-28 01:07:46', '2019-11-28 01:07:46', NULL),
(22, 3, 'Jakarta Land', 'Jakarta-Land.jpg', '2019-11-28 01:07:46', '2019-11-28 01:07:46', NULL),
(23, 3, 'Kemenko Maritim', 'Kemenko-Maritim.jpg', '2019-11-28 01:07:46', '2019-11-28 01:07:46', NULL),
(24, 3, 'The Vida Kebon Jeruk', 'The-Vida-Kebon-Jeruk.jpg', '2019-11-28 01:07:46', '2019-11-28 01:07:46', NULL),
(25, 3, 'Think Web', 'Think-Web.jpg', '2019-11-28 01:07:46', '2019-11-28 01:07:46', NULL),
(26, 4, 'Cimb Niaga', 'Cimb-Niaga.jpg', '2019-11-28 01:39:28', '2019-11-28 01:39:28', NULL),
(27, 4, 'Ismaya Group', 'Ismaya-Group.jpg', '2019-11-28 01:39:28', '2019-11-28 01:39:28', NULL),
(28, 4, 'Jakarta Fashion Week', 'Jakarta-Fashion-Week.jpg', '2019-11-28 01:39:28', '2019-11-28 01:39:28', NULL),
(29, 4, 'Jakpro', 'Jakpro.jpg', '2019-11-28 01:39:28', '2019-11-28 01:39:28', NULL),
(30, 4, 'Narasi TV ', 'Narasi-TV-.jpg', '2019-11-28 01:39:28', '2019-11-28 01:39:28', NULL),
(31, 4, 'Nestle', 'Nestle.jpg', '2019-11-28 01:39:28', '2019-11-28 01:39:28', NULL),
(32, 4, 'Pertamina', 'Pertamina.jpg', '2019-11-28 01:39:28', '2019-11-28 01:39:28', NULL),
(33, 4, 'The Body Shop ', 'The-Body-Shop-.jpg', '2019-11-28 01:39:28', '2019-11-28 01:39:28', NULL),
(34, 4, 'Wardah', 'Wardah.jpg', '2019-11-28 01:39:28', '2019-11-28 01:39:28', NULL),
(35, 5, 'By Lizzie Parra', 'By-Lizzie-Parra.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(36, 5, 'Djournal', 'Djournal.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(37, 5, 'Gojek', 'Gojek.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(38, 5, 'Love Beauty Planet', 'Love-Beauty-Planet.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(39, 5, 'Nescafe Dolce Gusto', 'Nescafe-Dolce-Gusto.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(40, 5, 'POtato Head', 'POtato-Head.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(41, 5, 'Tetrapak', 'Tetrapak.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(42, 5, 'The Body Shop ', 'The-Body-Shop-.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(43, 5, 'Trave', 'Trave.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(44, 5, 'Wardah', 'Wardah.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(45, 5, 'Yara', 'Yara.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL),
(46, 5, 'Young Living', 'Young-Living.jpg', '2019-11-28 01:50:10', '2019-11-28 01:50:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE `dictionary` (
  `dictionary_id` int(11) NOT NULL,
  `dictionar_type_id` int(11) DEFAULT NULL,
  `dictionary_slug` varchar(255) DEFAULT NULL,
  `language_code` varchar(255) DEFAULT NULL,
  `dictionary_content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dictionary`
--

INSERT INTO `dictionary` (`dictionary_id`, `dictionar_type_id`, `dictionary_slug`, `language_code`, `dictionary_content`) VALUES
(1, NULL, 'brand', 'en', 'Brand'),
(2, NULL, 'brand', 'id', 'Merek'),
(3, NULL, 'bussiness-actor', 'en', 'Bussiness Actor'),
(4, NULL, 'bussiness-actor', 'id', 'Bussiness Aktor'),
(5, NULL, 'company', 'en', 'Company'),
(6, NULL, 'company', 'id', 'Perusahaan'),
(7, NULL, 'companys-csr', 'en', 'Company\'s CSR'),
(8, NULL, 'companys-csr', 'id', 'Csr Perusahaan'),
(9, NULL, 'consultant', 'en', 'Consultant'),
(10, NULL, 'consultant', 'id', 'Konsultan'),
(11, NULL, 'distributor', 'en', 'Distributor'),
(12, NULL, 'distributor', 'id', 'Distribut'),
(13, NULL, 'event', 'en', 'Event'),
(14, NULL, 'event', 'id', 'Peristiwa'),
(15, NULL, 'foundation', 'en', 'Foundation'),
(16, NULL, 'foundation', 'id', 'Dasar'),
(17, NULL, 'government', 'en', 'Government'),
(18, NULL, 'government', 'id', 'Pemerintah'),
(19, NULL, 'hotels', 'en', 'Hotels'),
(20, NULL, 'hotels', 'id', 'Hotel'),
(21, NULL, 'individual', 'en', 'Individual'),
(22, NULL, 'individual', 'id', 'Individu'),
(23, NULL, 'office-blocks', 'en', 'Office Blocks'),
(24, NULL, 'office-blocks', 'id', 'Kantor Blok'),
(25, NULL, 'product', 'en', 'Product'),
(26, NULL, 'product', 'id', 'Produk'),
(27, NULL, 'researcher', 'en', 'Researcher'),
(28, NULL, 'researcher', 'id', 'Peneliti'),
(29, NULL, 'residential-area/housing', 'en', 'Residential Area/Housing'),
(30, NULL, 'residential-area/housing', 'id', 'Residential Area / Perumahan'),
(31, NULL, 'restaurants', 'en', 'Restaurants'),
(32, NULL, 'restaurants', 'id', 'Restoran'),
(33, NULL, 'school', 'en', 'School'),
(34, NULL, 'school', 'id', 'Sekolah'),
(35, NULL, 'hse-division', 'en', 'HSE Division'),
(36, NULL, 'hse-division', 'id', 'Divisi HSE'),
(37, NULL, 'sustainability-division', 'en', 'Sustainability Division'),
(38, NULL, 'sustainability-division', 'id', 'Divisi keberlanjutan'),
(39, NULL, 'csr-division', 'en', 'CSR Division'),
(40, NULL, 'csr-division', 'id', 'Divisi CSR'),
(41, NULL, 'no-more-mixed-waste', 'en', 'No More Mixed Waste'),
(42, NULL, 'no-more-mixed-waste', 'id', 'Tidak Ada Limbah Campur'),
(43, NULL, 'no-more-waste-that-end-up-in-landfills', 'en', 'No More Waste That End Up In Landfills'),
(44, NULL, 'no-more-waste-that-end-up-in-landfills', 'id', 'Tidak ada Limbah Lebih Itu berakhir di landfill'),
(45, NULL, 'from-waste-to-useful-materials', 'en', 'From Waste to Useful Materials'),
(46, NULL, 'from-waste-to-useful-materials', 'id', 'Dari Limbah ke Bahan Berguna'),
(47, NULL, 'great-event-planned-their-waste-management-beforeh', 'en', 'Great Event Planned Their Waste Management Beforehand'),
(48, NULL, 'great-event-planned-their-waste-management-beforeh', 'id', 'Great Event Rencana Pengelolaan Limbah mereka Terlebih dahulu'),
(49, NULL, 'support-the-recycling-of-your-brand-labeled-waste', 'en', 'Support the Recycling of Your Brand-Labeled Waste'),
(50, NULL, 'support-the-recycling-of-your-brand-labeled-waste', 'id', 'Mendukung Daur Ulang Limbah Brand-Berlabel Anda'),
(51, NULL, 'research-and-planning-with-environment-in-mind', 'en', 'Research and Planning with Environment in Mind'),
(52, NULL, 'research-and-planning-with-environment-in-mind', 'id', 'Penelitian dan Perencanaan dengan Lingkungan di Mind'),
(53, NULL, 'solid-effort-to-reduce-waste-generation-from-the-s', 'en', 'Solid Effort to Reduce Waste Generation From The Source'),
(54, NULL, 'solid-effort-to-reduce-waste-generation-from-the-s', 'id', 'Upaya yang solid untuk Mengurangi Generasi Sampah Dari Source'),
(55, NULL, 'optimal-implementation-of-3r-reduce-reuse-recycle', 'en', 'Optimal Implementation of 3R (Reduce-Reuse-Recycle) Principles'),
(56, NULL, 'optimal-implementation-of-3r-reduce-reuse-recycle', 'id', 'Pelaksanaan optimal 3R (Reduce-Reuse-Recycle) Prinsip'),
(57, NULL, 'take-a-closer-look-at-waste-management-facts-and-s', 'en', 'Take a Closer Look at Waste Management Facts and Solutions'),
(58, NULL, 'take-a-closer-look-at-waste-management-facts-and-s', 'id', 'Ambil Closer Look di Fakta Pengelolaan Limbah dan Solusi'),
(59, NULL, 'effective-organic-waste-solution', 'en', 'Effective Organic Waste Solution'),
(60, NULL, 'effective-organic-waste-solution', 'id', 'Solusi Sampah Organik efektif'),
(61, NULL, 'a-100-holistic-waste-management-for-companies-bu', 'en', 'A 100% holistic waste management for companies, buildings, and businesses to reduce the number of waste that piles up in the landfill.'),
(62, NULL, 'a-100-holistic-waste-management-for-companies-bu', 'id', 'Sebuah pengelolaan limbah holistik 100% bagi perusahaan, bangunan, dan bisnis untuk mengurangi jumlah sampah yang menumpuk di TPA.'),
(63, NULL, 'take-an-active-part-in-preventing-our-local-landfi', 'en', 'Take an active part in preventing our local landfills from becoming overcapacity! Through our waste collection and waste recycling program: Zero Waste to Landfill, we will ensure that none of your waste ends up in the landfill!'),
(64, NULL, 'take-an-active-part-in-preventing-our-local-landfi', 'id', 'Mengambil bagian aktif dalam mencegah pembuangan sampah lokal kami dari menjadi kelebihan kapasitas! Melalui pengumpulan sampah dan limbah Program daur ulang: Zero Waste ke TPA, kami akan memastikan bahwa tidak ada limbah Anda berakhir di TPA!'),
(65, NULL, 'treat-your-inorganic-waste-the-right-way-and-make-', 'en', 'Treat your inorganic waste the right way and make sure that your inorganic waste are recycled and included in the sustainable circular system.'),
(66, NULL, 'treat-your-inorganic-waste-the-right-way-and-make-', 'id', 'Perlakukan sampah anorganik Anda dengan cara yang benar dan memastikan bahwa sampah anorganik Anda didaur ulang dan termasuk dalam sistem melingkar yang berkelanjutan.'),
(67, NULL, 'through-the-placement-of-segregated-waste-bins-in-', 'en', 'Through the placement of segregated waste bins in strategic places, as well as segregated waste collection for all of the waste that are produced during your event, we will help your event’s waste management to be more well-prepared and responsible!'),
(68, NULL, 'through-the-placement-of-segregated-waste-bins-in-', 'id', 'Melalui penempatan tempat sampah terpisah di tempat-tempat strategis, serta pengumpulan sampah terpisah untuk semua limbah yang dihasilkan selama acara Anda, kami akan membantu pengelolaan sampah acara Anda menjadi lebih disiapkan dan bertanggung jawab!'),
(69, NULL, 'increase-the-material-processing-of-brand-labelled', 'en', 'Increase the material processing of brand-labelled waste throughout your company’s business line. Whether it’s in-store recycling or app-based recycling program, we provide both the system and solution!'),
(70, NULL, 'increase-the-material-processing-of-brand-labelled', 'id', 'Meningkatkan pengolahan bahan limbah merek berlabel seluruh lini bisnis perusahaan Anda. Apakah itu di dalam toko daur ulang atau program daur ulang berbasis aplikasi-, kami menyediakan sistem dan solusi!'),
(71, NULL, 'improve-your-solid-waste-management-by-conducting-', 'en', 'Improve your solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs.'),
(72, NULL, 'improve-your-solid-waste-management-by-conducting-', 'id', 'Meningkatkan pengelolaan limbah padat Anda dengan melakukan analisis menyeluruh dan mengidentifikasi paling sistem dan program yang tepat.'),
(73, NULL, 'we-help-our-clients-to-implement-programs-that-enc', 'en', 'We help our clients to implement programs that encourage the community to act and provide real contributions to the waste crisis in Indonesia.'),
(74, NULL, 'we-help-our-clients-to-implement-programs-that-enc', 'id', 'Kami membantu klien kami untuk melaksanakan program-program yang mendorong masyarakat untuk bertindak dan memberikan kontribusi nyata untuk krisis sampah di Indonesia.'),
(75, NULL, 'designed-to-encourage-the-increasing-awareness-of-', 'en', 'Designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management in schools.'),
(76, NULL, 'designed-to-encourage-the-increasing-awareness-of-', 'id', 'Dirancang untuk mendorong meningkatnya kesadaran warga sekolah untuk menerapkan Prinsip 3R (Reduce, Reuse, Recycle) untuk penciptaan pengelolaan sampah yang bertanggung jawab di sekolah-sekolah.'),
(77, NULL, 'waste-management-education-program-that-includes-a', 'en', 'Waste management education program that includes a visit to local landfill and Waste4Change’s waste management facilities that stimulates all 4 senses (sight, touch, smell, and hearing).'),
(78, NULL, 'waste-management-education-program-that-includes-a', 'id', 'Limbah Program pendidikan manajemen yang mencakup kunjungan ke TPA lokal dan fasilitas pengelolaan limbah Waste4Change yang merangsang semua indera 4 (penglihatan, sentuhan, bau, dan pendengaran).'),
(79, NULL, 'receive-in-depth-information-regarding-organic-was', 'en', 'Receive in-depth information regarding organic waste processing using Black Soldier Fly (BSF), as well as the cultivation and breeding methods of BSF.'),
(80, NULL, 'receive-in-depth-information-regarding-organic-was', 'id', 'Menerima informasi mendalam mengenai pengolahan sampah organik menggunakan Hitam Soldier Fly (BSF), serta budidaya dan metode pemuliaan dari BSF.'),
(81, NULL, 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'en', 'We provide Black Soldier Fly larvae that is high in protein and considered as a great animal feed. For any of you who wishes to build your own BSF nursery, we have all the necessary tools and starter kit.'),
(82, NULL, 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'id', 'Kami menyediakan Hitam Soldier Fly larva yang tinggi protein dan dianggap sebagai pakan ternak besar. Untuk setiap dari Anda yang ingin membangun pembibitan BSF sendiri, kita memiliki semua alat yang diperlukan dan starter kit.'),
(83, NULL, 'send-your-inorganic-waste-to-waste4change-and-let-', 'en', 'Send your inorganic waste to Waste4Change and let us recycle it for you.'),
(84, NULL, 'send-your-inorganic-waste-to-waste4change-and-let-', 'id', 'Kirim sampah anorganik untuk Waste4Change dan biarkan kami mendaur ulang untuk Anda.'),
(85, NULL, 'deposit-your-inorganic-waste-in-waste4changes-dro', 'en', 'Deposit your inorganic waste in Waste4Change\'s dropbox and let us recycle it for you.'),
(86, NULL, 'deposit-your-inorganic-waste-in-waste4changes-dro', 'id', 'Deposit sampah anorganik Anda di dropbox Waste4Change dan mari kita mendaur ulang untuk Anda.'),
(87, NULL, 'send-your-used-pet-bottles-of-various-sizes-and-br', 'en', 'Send your used PET bottles of various sizes and brands with GoSend to get many benefits from Ades.'),
(88, NULL, 'send-your-used-pet-bottles-of-various-sizes-and-br', 'id', 'Kirim botol PET Anda digunakan berbagai ukuran dan merek dengan GoSend untuk mendapatkan banyak manfaat dari Ades.'),
(89, NULL, 'deposit-your-used-packaging-through-our-partners-t', 'en', 'Deposit your used packaging through our partners throughout Indonesia and get reward points when shopping for various digital products.'),
(90, NULL, 'deposit-your-used-packaging-through-our-partners-t', 'id', 'Deposit kemasan yang digunakan melalui mitra kami di seluruh Indonesia dan mendapatkan poin reward saat berbelanja untuk berbagai produk digital.'),
(91, NULL, 'process-your-organic-waste-at-home-with-waste4cha', 'en', 'Process your organic waste at  home with Waste4Change’s special composting bag and other home composting tools and equipment!'),
(92, NULL, 'process-your-organic-waste-at-home-with-waste4cha', 'id', 'Mengolah sampah organik di rumah dengan tas Waste4Change ini khusus kompos dan kompos alat rumah lainnya dan peralatan!'),
(93, NULL, 'waste-generation-is-inevitable-its-not-easy-to-r', 'en', 'Waste generation is inevitable. It\'s not easy to reduce waste in our everyday lives. The simplest, easiest and most important thing that we can do after generating waste is separating our organic and inorganic waste. <br>Through our service Responsible Wa'),
(94, NULL, 'waste-generation-is-inevitable-its-not-easy-to-r', 'id', 'timbulan sampah tidak bisa dihindari. Ini tidak mudah untuk mengurangi limbah dalam kehidupan kita sehari-hari. Yang paling sederhana, paling mudah dan paling penting hal yang bisa kita lakukan setelah limbah pembangkit adalah memisahkan sampah organik da'),
(95, NULL, 'every-day-indonesians-are-generating-175000-tons', 'en', 'Every day, Indonesians are generating 175,000 tons of waste. This caused Jakarta and many areas in Indonesia to suffer from landfill emergencies. Even the Bantar Gebang landfill that holds the residual waste of Jakarta residents is predicted to be overcap'),
(96, NULL, 'every-day-indonesians-are-generating-175000-tons', 'id', 'Setiap hari, orang Indonesia menghasilkan 175.000 ton limbah. Hal ini menyebabkan Jakarta dan banyak daerah di Indonesia menderita keadaan darurat TPA. Bahkan TPA Bantar Gebang yang memegang limbah sisa warga Jakarta diprediksi akan kelebihan kapasitas di'),
(97, NULL, 'waste-is-a-relative-term-that-can-be-applied-diffe', 'en', 'Waste is a relative term that can be applied differently to each person, especially inorganic waste. Once it is treated in the right way, inorganic waste can solve our problems on the scarcity of raw materials.<br>Through our Inorganic Waste Management (I'),
(98, NULL, 'waste-is-a-relative-term-that-can-be-applied-diffe', 'id', 'Limbah adalah istilah relatif yang dapat diterapkan secara berbeda untuk setiap orang, terutama sampah anorganik. Setelah itu diperlakukan dengan cara yang benar, sampah anorganik bisa memecahkan masalah kita pada kelangkaan bahan baku. <br> Melalui anorg'),
(99, NULL, 'waste-generation-during-an-event-is-inevitable-in', 'en', 'Waste generation during an event is inevitable. In a place where participants\' are allowed to take notes, to drink and eat, especially in a crowded event, it\'s not easy to make sure that everyone\'s taking their time and energy to be responsible for their '),
(100, NULL, 'waste-generation-during-an-event-is-inevitable-in', 'id', 'timbulan sampah selama acara tidak bisa dihindari. Di tempat di mana peserta diperbolehkan untuk mengambil catatan, untuk minum dan makan, terutama dalam acara ramai, itu tidak mudah untuk memastikan bahwa semua orang mengambil waktu dan energi mereka unt'),
(101, NULL, 'designed-to-increase-the-material-processing-from-', 'en', 'Designed to increase the material processing from brand-labeled waste throughout your companys business line. What we define as brand-labeled waste might resulted from the following:<ul><li>Production process that resulted in product defect, reject, or residue from production process</li><li>Distribution process such as expired or defect products</li><li>Warehouse such as returns, second-hand, or broken</li><li>Consumer such as empty packaging or used products</li></ul>'),
(102, NULL, 'designed-to-increase-the-material-processing-from-', 'id', 'Designed to increase the material processing from brand-labeled waste throughout your companys business line. What we define as brand-labeled waste might resulted from the following:<ul><li>Production process that resulted in product defect, reject, or residue from production process</li><li>Distribution process such as expired or defect products</li><li>Warehouse such as returns, second-hand, or broken</li><li>Consumer such as empty packaging or used products</li></ul>'),
(103, NULL, 'waste4change-provides-consultation-through-solid-w', 'en', 'Waste4Change provides consultation through Solid Waste Management (SWM) Research that aims to improve solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs in cities, regions, building, or any ot'),
(104, NULL, 'waste4change-provides-consultation-through-solid-w', 'id', 'Waste4Change menyediakan konsultasi melalui Pengelolaan Limbah Padat (SWM) Penelitian yang bertujuan untuk meningkatkan pengelolaan limbah padat dengan melakukan analisis menyeluruh dan mengidentifikasi paling sistem dan program yang tepat di kota, daerah'),
(105, NULL, 'according-to-recent-bps-statistics-waste-manageme', 'en', 'According to recent BPS statistics, waste management ranks the lowest when compared to other environmental issues (energy, air pollution, transportation).<br>At Waste4Change, we see this as a challenge to implement programs that encourages the community t'),
(106, NULL, 'according-to-recent-bps-statistics-waste-manageme', 'id', 'Menurut statistik BPS baru-baru ini, pengelolaan sampah peringkat terendah bila dibandingkan dengan isu-isu lain lingkungan (energi, polusi udara, transportasi). <br> Pada Waste4Change, kami melihat ini sebagai tantangan untuk melaksanakan program-program'),
(107, NULL, '3r-school-program-is-a-program-designed-to-encoura', 'en', '3R School Program is a program designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management system in schools. The aims of this program is to assist sch'),
(108, NULL, '3r-school-program-is-a-program-designed-to-encoura', 'id', 'Program Sekolah 3R adalah program yang dirancang untuk mendorong meningkatnya kesadaran warga sekolah untuk menerapkan Prinsip 3R (Reduce, Reuse, Recycle) untuk penciptaan sistem pengelolaan sampah yang bertanggung jawab di sekolah-sekolah. Tujuan dari pr'),
(109, NULL, 'akademi-bijak-sampah-akabis-is-an-education-mode', 'en', 'Akademi Bijak Sampah (AKABIS) is an education model created by Waste4Change to raise awareness on the importance of protecting the environment, especially in responsible waste management. If your institution is willing to experience first-hand field visit'),
(110, NULL, 'akademi-bijak-sampah-akabis-is-an-education-mode', 'id', 'Akademi Bijak Sampah (AKABIS) merupakan model pendidikan yang dibuat oleh Waste4Change untuk meningkatkan kesadaran tentang pentingnya menjaga lingkungan, terutama dalam pengelolaan sampah yang bertanggung jawab. Jika institusi Anda bersedia untuk mengala'),
(111, NULL, 'through-bsf-learning-center-you-will-receive-in-d', 'en', 'Through BSF Learning Center, you will receive in-depth information regarding organic waste processing using Black Soldier Flies (BSF), as well as the cultivation and breeding methods of BSF.'),
(112, NULL, 'through-bsf-learning-center-you-will-receive-in-d', 'id', 'Melalui BSF Learning Center, Anda akan menerima informasi mendalam mengenai sampah organik pengolahan menggunakan Lalat Soldier Hitam (BSF), serta budidaya dan metode pemuliaan dari BSF.'),
(113, NULL, '100-holistic-approach-on-waste-management', 'en', '100% holistic-approach on waste management'),
(114, NULL, '100-holistic-approach-on-waste-management', 'id', 'Zero waste to landfill'),
(115, NULL, 'support-and-in-line-with-perpres-no-97-tahun-2017', 'en', 'Support and in line with Perpres No. 97 Tahun 2017 (JAKSTRANAS)'),
(116, NULL, 'support-and-in-line-with-perpres-no-97-tahun-2017', 'id', 'Adding sustainable and environmental-friendly value to client\'s brand image'),
(117, NULL, 'increasing-staff’s-awareness-of-waste-issues', 'en', 'Increasing staff\'s awareness of waste issues'),
(118, NULL, 'increasing-staff’s-awareness-of-waste-issues', 'id', '100% holistic-approach on waste management'),
(119, NULL, 'zero-waste-to-landfill', 'en', 'Zero waste to landfill'),
(120, NULL, 'zero-waste-to-landfill', 'id', 'Support and in line with Perpres No. 97 Tahun 2017 (JAKSTRANAS)'),
(121, NULL, 'adding-sustainable-and-environmental-friendly-valu', 'en', 'Adding sustainable and environmental-friendly value to client\'s brand image'),
(122, NULL, 'adding-sustainable-and-environmental-friendly-valu', 'id', 'Increasing staff\'s awareness of waste issues'),
(123, NULL, '100-holistik-pendekatan-pengelolaan-sampah', 'en', '100% holistik-pendekatan pengelolaan sampah'),
(124, NULL, '100-holistik-pendekatan-pengelolaan-sampah', 'id', 'zero waste ke TPA'),
(125, NULL, 'dukungan-dan-sejalan-dengan-perpres-no-97-tahun-2', 'en', 'Dukungan dan sejalan dengan Perpres No. 97 Tahun 2017 (JAKSTRANAS)'),
(126, NULL, 'dukungan-dan-sejalan-dengan-perpres-no-97-tahun-2', 'id', 'Menambahkan nilai yang berkelanjutan dan ramah lingkungan untuk citra merek klien'),
(127, NULL, 'meningkatkan-kesadaran-staf-masalah-limbah', 'en', 'Meningkatkan kesadaran staf masalah limbah'),
(128, NULL, 'meningkatkan-kesadaran-staf-masalah-limbah', 'id', '100% holistik-pendekatan pengelolaan sampah'),
(129, NULL, 'zero-waste-ke-tpa', 'en', 'zero waste ke TPA'),
(130, NULL, 'zero-waste-ke-tpa', 'id', 'Dukungan dan sejalan dengan Perpres No. 97 Tahun 2017 (JAKSTRANAS)'),
(131, NULL, 'mengurangi-sampah-ke-tpa', 'en', 'Mengurangi sampah ke TPA'),
(132, NULL, 'mengurangi-sampah-ke-tpa', 'id', 'Dukungan dan sejalan dengan Perpres No. 97 Tahun 2017 (JAKSTRANAS)'),
(133, NULL, 'menambahkan-nilai-yang-berkelanjutan-dan-ramah-lin', 'en', 'Menambahkan nilai yang berkelanjutan dan ramah lingkungan untuk citra merek klien'),
(134, NULL, 'menambahkan-nilai-yang-berkelanjutan-dan-ramah-lin', 'id', 'Meningkatkan kesadaran staf masalah limbah'),
(135, NULL, 'limbah-journey-laporan', 'en', 'Limbah Journey Laporan'),
(136, NULL, 'limbah-journey-laporan', 'id', 'Bantuan untuk tingkat daur ulang meningkat'),
(137, NULL, 'reduce-waste-to-landfill', 'en', 'Reduce waste to landfill'),
(138, NULL, 'reduce-waste-to-landfill', 'id', 'Mengurangi sampah ke TPA'),
(139, NULL, 'prevent-your-brand-labelled-products-for-being-mis', 'en', 'Prevent your brand-labelled products for being misused, imitated or forged'),
(140, NULL, 'prevent-your-brand-labelled-products-for-being-mis', 'id', 'Mencegah merek produk berlabel Anda untuk disalahgunakan, ditiru atau dipalsukan'),
(141, NULL, 'help-to-increase-recycling-rate', 'en', 'Help to increase recycling rate'),
(142, NULL, 'help-to-increase-recycling-rate', 'id', 'Bantuan untuk tingkat daur ulang meningkat'),
(143, NULL, 'technical-operational-analysis-?', 'en', 'Technical Operational Analysis ?'),
(144, NULL, 'technical-operational-analysis-?', 'id', 'Analisis Operasional Teknis'),
(145, NULL, 'waste-audit?', 'en', 'Waste Audit?'),
(146, NULL, 'waste-audit?', 'id', 'limbah Audit'),
(147, NULL, 'financial-analysis-?', 'en', 'Financial Analysis ?'),
(148, NULL, 'financial-analysis-?', 'id', 'Analisis keuangan'),
(149, NULL, 'swm-regulatory-analysis-?', 'en', 'SWM Regulatory Analysis ?'),
(150, NULL, 'swm-regulatory-analysis-?', 'id', 'Analisis Regulasi SWM'),
(151, NULL, 'social-participation-analysis-?', 'en', 'Social Participation Analysis ?'),
(152, NULL, 'social-participation-analysis-?', 'id', 'Analisis Partisipasi sosial'),
(153, NULL, 'institutional-analysis?', 'en', 'Institutional Analysis?'),
(154, NULL, 'institutional-analysis?', 'id', 'Analisis Kelembagaan'),
(155, NULL, 'stakeholders-mapping-?', 'en', 'Stakeholders Mapping ?'),
(156, NULL, 'stakeholders-mapping-?', 'id', 'stakeholder Pemetaan'),
(157, NULL, 'recycling-value-chain-analysis-?', 'en', 'Recycling Value Chain Analysis, ?'),
(158, NULL, 'recycling-value-chain-analysis-?', 'id', 'Daur ulang Analisis Rantai Nilai,'),
(159, NULL, 'material-flow-analysis-?', 'en', 'Material Flow Analysis ?'),
(160, NULL, 'material-flow-analysis-?', 'id', 'Analisis Arus Material'),
(161, NULL, 'behavior-change-analysis-?', 'en', 'Behavior Change Analysis ?'),
(162, NULL, 'behavior-change-analysis-?', 'id', 'Analisis Perubahan perilaku'),
(163, NULL, 'marine-debris-study-?', 'en', 'Marine Debris Study ?'),
(164, NULL, 'marine-debris-study-?', 'id', 'Laut Puing Studi'),
(165, NULL, 'waste-to-energy-feasibility-study-and-due-diligenc', 'en', 'Waste to Energy Feasibility Study and Due Diligence?'),
(166, NULL, 'waste-to-energy-feasibility-study-and-due-diligenc', 'id', 'Limbah untuk Energi Studi Kelayakan dan Due Diligence'),
(167, NULL, 'trash-bag-designated-to-support-waste-segregation', 'en', 'Trash bag designated to support waste segregation'),
(168, NULL, 'trash-bag-designated-to-support-waste-segregation', 'id', 'kantong sampah yang ditunjuk untuk dukungan pemilahan sampah'),
(169, NULL, 'waste-collection-in-a-segregated-state', 'en', 'Waste collection in a segregated state'),
(170, NULL, 'waste-collection-in-a-segregated-state', 'id', 'Limbah koleksi dalam keadaan terpisah'),
(171, NULL, 'one-time-technical-induction-training', 'en', 'One-time Technical Induction Training'),
(172, NULL, 'one-time-technical-induction-training', 'id', 'Satu kali Teknis Induction Training'),
(173, NULL, 'waste-journey-report', 'en', 'Waste Journey Report'),
(174, NULL, 'waste-journey-report', 'id', 'Limbah Journey Laporan'),
(175, NULL, 'inorganic-trash-bag', 'en', 'Inorganic Trash Bag'),
(176, NULL, 'inorganic-trash-bag', 'id', 'Sampah anorganik Bag'),
(177, NULL, 'comprehensive-waste-management-system-in-the-distr', 'en', 'Comprehensive waste management system in the distribution line'),
(178, NULL, 'comprehensive-waste-management-system-in-the-distr', 'id', 'sistem pengelolaan sampah yang komprehensif dalam jalur distribusi'),
(179, NULL, 'responsible-waste-management-for-residual-waste-w', 'en', 'Responsible waste management for residual waste (waste that are difficult to be recycled) without sending it to the landfills (on demand)'),
(180, NULL, 'responsible-waste-management-for-residual-waste-w', 'id', 'pengelolaan sampah yang bertanggung jawab untuk limbah sisa (limbah yang sulit didaur ulang) tanpa mengirimnya ke tempat pembuangan sampah (on demand)'),
(181, NULL, 'increase-the-number-of-waste-that-can-be-further-p', 'en', 'Increase the number of waste that can be further processed through recycling method'),
(182, NULL, 'increase-the-number-of-waste-that-can-be-further-p', 'id', 'Meningkatkan jumlah sampah yang bisa diolah lebih lanjut melalui metode daur ulang'),
(183, NULL, 'waste-processing-in-w4c’s-material-recovery-facili', 'en', 'Waste processing in W4C’s Material Recovery Facility'),
(184, NULL, 'waste-processing-in-w4c’s-material-recovery-facili', 'id', 'Limbah pengolahan di Fasilitas Bahan Pemulihan W4C ini'),
(185, NULL, 'waste-segregation-by-client', 'en', 'Waste segregation by client'),
(186, NULL, 'waste-segregation-by-client', 'id', 'Buang segregasi oleh klien'),
(187, NULL, 'waste-storage-in-transfer-point/-tpst', 'en', 'Waste storage in transfer point/ TPST'),
(188, NULL, 'waste-storage-in-transfer-point/-tpst', 'id', 'Limbah penyimpanan di titik transfer / TPST'),
(189, NULL, 'segregated-waste-collection', 'en', 'Segregated waste collection'),
(190, NULL, 'segregated-waste-collection', 'id', 'pengumpulan sampah Segregated'),
(191, NULL, 'waste-processing-in-w4c’s-material-recivery-facili', 'en', 'Waste processing in W4C’s Material Recivery Facility'),
(192, NULL, 'waste-processing-in-w4c’s-material-recivery-facili', 'id', 'Limbah pengolahan di Fasilitas Material Recivery W4C ini'),
(193, NULL, 'residue-being-sent-to-the-landfill', 'en', 'Residue being sent to the landfill'),
(194, NULL, 'residue-being-sent-to-the-landfill', 'id', 'makhluk residu dikirim ke TPA'),
(195, NULL, 'swm-research-in-institutions', 'en', 'SWM RESEARCH IN INSTITUTIONS'),
(196, NULL, 'swm-research-in-institutions', 'id', 'SWM PENELITIAN DI LEMBAGA'),
(197, NULL, 'swm-research-in-municipalities', 'en', 'SWM RESEARCH IN MUNICIPALITIES'),
(198, NULL, 'swm-research-in-municipalities', 'id', 'KOTA SWM RESEARCH IN'),
(199, NULL, 'waste-to-energy-study', 'en', 'WASTE TO ENERGY STUDY'),
(200, NULL, 'waste-to-energy-study', 'id', 'STUDI LIMBAH UNTUK ENERGI'),
(201, NULL, 'value-chain-analysis', 'en', 'VALUE CHAIN ANALYSIS'),
(202, NULL, 'value-chain-analysis', 'id', 'RANTAI NILAI ANALISIS'),
(203, NULL, 'marine-debris-study', 'en', 'MARINE DEBRIS STUDY'),
(204, NULL, 'marine-debris-study', 'id', 'STUDI sampah laut'),
(205, NULL, 'community-assistance-in-institutions', 'en', 'COMMUNITY ASSISTANCE IN INSTITUTIONS'),
(206, NULL, 'community-assistance-in-institutions', 'id', 'COMMUNITY BANTUAN LEMBAGA'),
(207, NULL, 'community-assistance-in-municipalities', 'en', 'COMMUNITY ASSISTANCE IN MUNICIPALITIES'),
(208, NULL, 'community-assistance-in-municipalities', 'id', 'COMMUNITY BANTUAN KOTA'),
(209, NULL, 'community-assistance-in-tourism-sites', 'en', 'COMMUNITY ASSISTANCE IN TOURISM SITES'),
(210, NULL, 'community-assistance-in-tourism-sites', 'id', 'COMMUNITY BANTUAN SITUS PARIWISATA'),
(211, NULL, 'capacity-building', 'en', 'CAPACITY BUILDING'),
(212, NULL, 'capacity-building', 'id', 'KAPASITAS'),
(213, NULL, '3r-school-program', 'en', '3R SCHOOL PROGRAM'),
(214, NULL, '3r-school-program', 'id', '3R SCHOOL PROGRAM'),
(215, NULL, 'akabis-class-for-public', 'en', 'AKABIS CLASS FOR PUBLIC'),
(216, NULL, 'akabis-class-for-public', 'id', 'AKABIS KELAS UNTUK UMUM'),
(217, NULL, 'akabis-class-for-institution', 'en', 'AKABIS CLASS FOR INSTITUTION'),
(218, NULL, 'akabis-class-for-institution', 'id', 'AKABIS KELAS UNTUK LEMBAGA'),
(219, NULL, 'akabis-xperience-for-public', 'en', 'AKABIS XPERIENCE FOR PUBLIC'),
(220, NULL, 'akabis-xperience-for-public', 'id', 'AKABIS Xperience UNTUK UMUM'),
(221, NULL, 'akabis-xperience-for-institution', 'en', 'AKABIS XPERIENCE FOR INSTITUTION'),
(222, NULL, 'akabis-xperience-for-institution', 'id', 'AKABIS Xperience UNTUK LEMBAGA'),
(223, NULL, 'solid-waste-management-study-at-pelabuhan-indonesi', 'en', 'Solid Waste Management Study at Pelabuhan Indonesia II HQ?'),
(224, NULL, 'solid-waste-management-study-at-pelabuhan-indonesi', 'id', 'Solid Waste Management Design for Revitalisation at Jami’ Mosque and Kampung Beting Settlements in Pontianak'),
(225, NULL, 'feasibility-study-of-pyrolysis-for-plastic-packagi', 'en', 'Feasibility Study of Pyrolysis for Plastic Packaging in Lombok and Batam'),
(226, NULL, 'feasibility-study-of-pyrolysis-for-plastic-packagi', 'id', 'Waste Management Scouting Study – Stakeholders Mapping and Waste Flow in Jakarta and Surabaya'),
(227, NULL, 'riverine-plastic-monitoring-project-in-jakarta', 'en', 'Riverine Plastic Monitoring Project in Jakarta'),
(228, NULL, 'riverine-plastic-monitoring-project-in-jakarta', 'id', '3R Program Suralaya'),
(229, NULL, 'tps-3r-advisory', 'en', 'TPS 3R Advisory'),
(230, NULL, 'tps-3r-advisory', 'id', 'Ecoranger in Pulau Merah Banyuwangi'),
(231, NULL, 'capacity-building-in-indonesia’s-frontline-territo', 'en', 'Capacity Building in Indonesia’s Frontline Territories'),
(232, NULL, 'capacity-building-in-indonesia’s-frontline-territo', 'id', '3R Green School'),
(233, NULL, 'akabis-class-for-students-of-binus-school-al-izha', 'en', 'AKABIS-CLASS for Students of Binus School, Al-Izhar High School and SMKN 3 Bekasi'),
(234, NULL, 'akabis-class-for-students-of-binus-school-al-izha', 'id', 'AKABIS-CLASS for The Embassy of Finland - Jakarta'),
(235, NULL, 'akabis-xperience-for-yseali', 'en', 'AKABIS-XPERIENCE for YSEALI'),
(236, NULL, 'akabis-xperience-for-yseali', 'id', 'AKABIS-XPERIENCE for World Bank Jakarta'),
(237, NULL, 'studi-pengelolaan-sampah-di-pelabuhan-indonesia-ii', 'en', 'Studi Pengelolaan Sampah di Pelabuhan Indonesia II HQ'),
(238, NULL, 'studi-pengelolaan-sampah-di-pelabuhan-indonesia-ii', 'id', 'Desain Pengelolaan Sampah Revitalisasi di Jami\' \r\nMasjid dan Kampung Beting Pemukiman di Pontianak'),
(239, NULL, 'studi-kelayakan-pirolisis-untuk-kemasan-plastik-di', 'en', 'Studi Kelayakan Pirolisis untuk Kemasan Plastik di Lombok dan Batam'),
(240, NULL, 'studi-kelayakan-pirolisis-untuk-kemasan-plastik-di', 'id', 'Limbah Manajemen Pramuka Studi - Stakeholder Mapping dan Aliran Limbah di Jakarta dan Surabaya'),
(241, NULL, 'sungai-plastik-pemantauan-proyek-di-jakarta', 'en', 'Sungai Plastik Pemantauan Proyek di Jakarta'),
(242, NULL, 'sungai-plastik-pemantauan-proyek-di-jakarta', 'id', '3R Program Suralaya'),
(243, NULL, 'tps-3r-penasehat', 'en', 'TPS 3R Penasehat'),
(244, NULL, 'tps-3r-penasehat', 'id', 'Ecoranger di Pulau Merah Banyuwangi'),
(245, NULL, 'kapasitas-di-frontline-teritorial-di-indonesia', 'en', 'Kapasitas di Frontline Teritorial di Indonesia'),
(246, NULL, 'kapasitas-di-frontline-teritorial-di-indonesia', 'id', '3R Green School'),
(247, NULL, 'akabis-class-untuk-mahasiswa-binus-school-al-izha', 'en', 'AKABIS-CLASS untuk Mahasiswa Binus School, Al-Izhar Sekolah Tinggi dan SMKN 3 Bekasi'),
(248, NULL, 'akabis-class-untuk-mahasiswa-binus-school-al-izha', 'id', 'AKABIS-CLASS untuk The Kedutaan Finlandia - Jakarta'),
(249, NULL, 'akabis-xperience-untuk-yseali', 'en', 'AKABIS-Xperience untuk YSEALI'),
(250, NULL, 'akabis-xperience-untuk-yseali', 'id', 'AKABIS-Xperience untuk Bank Dunia Jakarta'),
(251, NULL, 'lorem-ipsum', 'en', 'Lorem Ipsum'),
(252, NULL, 'lorem-ipsum', 'id', 'Lorem Ipsum'),
(253, NULL, 'welcome', 'en', 'Welcome'),
(254, NULL, 'welcome', 'id', 'Selamat datang'),
(255, NULL, 'our-achievement', 'en', 'Our Achievement'),
(256, NULL, 'our-achievement', 'id', 'Prestasi kami'),
(257, NULL, 'about', 'en', 'About'),
(258, NULL, 'about', 'id', 'Tentang'),
(259, NULL, 'activities', 'en', 'Activities'),
(260, NULL, 'activities', 'id', 'Kegiatan'),
(261, NULL, 'benefit', 'en', 'Benefit'),
(262, NULL, 'benefit', 'id', 'Manfaat'),
(263, NULL, 'expertise-and-experience', 'en', 'Expertise And Experience'),
(264, NULL, 'expertise-and-experience', 'id', 'Keahlian Dan Pengalaman'),
(265, NULL, 'what-you-get', 'en', 'What You Get'),
(266, NULL, 'what-you-get', 'id', 'Apa yang kau dapatkan'),
(267, NULL, 'waste-flow', 'en', 'Waste Flow'),
(268, NULL, 'waste-flow', 'id', 'Arus limbah'),
(269, NULL, 'portofolio-highlight', 'en', 'Portofolio Highlight'),
(270, NULL, 'portofolio-highlight', 'id', 'portofolio Highlight'),
(271, NULL, 'project-hightlight', 'en', 'Project Hightlight'),
(272, NULL, 'project-hightlight', 'id', 'proyek Hightlight'),
(273, NULL, 'our-client', 'en', 'Our Client'),
(274, NULL, 'our-client', 'id', 'Klien kami'),
(275, NULL, 'recomended-for', 'en', 'Recomended For'),
(276, NULL, 'recomended-for', 'id', 'Recomended Untuk'),
(277, NULL, 'our-coverage', 'en', 'Our Coverage'),
(278, NULL, 'our-coverage', 'id', 'Cakupan kami'),
(279, NULL, 'cta', 'en', 'CTA'),
(280, NULL, 'cta', 'id', 'CTA'),
(281, NULL, 'expertise-and-experiences', 'en', 'Expertise and Experiences'),
(282, NULL, 'expertise-and-experiences', 'id', 'Keahlian dan Pengalaman'),
(283, NULL, 'highlight', 'en', 'Highlight'),
(284, NULL, 'highlight', 'id', 'Menyoroti'),
(285, NULL, 'client', 'en', 'Client'),
(286, NULL, 'client', 'id', 'Klien'),
(287, NULL, 'coverage', 'en', 'Coverage'),
(288, NULL, 'coverage', 'id', 'liputan'),
(289, NULL, 'responsible-waste-management', 'en', 'Responsible Waste Management'),
(290, NULL, 'responsible-waste-management', 'id', 'Pengelolaan Limbah bertanggung jawab'),
(291, NULL, 'extended-producer-responsibility', 'en', 'Extended Producer Responsibility'),
(292, NULL, 'extended-producer-responsibility', 'id', 'Extended Producer Responsibility'),
(293, NULL, 'solid-waste-management-research', 'en', 'Solid Waste Management Research'),
(294, NULL, 'solid-waste-management-research', 'id', 'Penelitian Pengelolaan Limbah Padat'),
(295, NULL, 'community-development', 'en', 'Community Development'),
(296, NULL, 'community-development', 'id', 'Pengembangan masyarakat'),
(297, NULL, 'training', 'en', 'Training'),
(298, NULL, 'training', 'id', 'Latihan'),
(299, NULL, 'general', 'en', 'General'),
(300, NULL, 'general', 'id', 'Umum'),
(301, NULL, 'achievement/-deverables', 'en', 'Achievement/ Deverables'),
(302, NULL, 'achievement/-deverables', 'id', 'Achievement/ Deverables'),
(303, NULL, 'description', 'en', 'Description'),
(304, NULL, 'description', 'id', 'Deskripsi'),
(305, NULL, 'similar-project', 'en', 'Similar Project'),
(306, NULL, 'similar-project', 'id', 'Proyek Lainnya'),
(307, NULL, 'solid-waste-management-study-at-pelabuhan-indonesi', 'en', 'Solid Waste Management Study at Pelabuhan Indonesia II HQ'),
(308, NULL, 'solid-waste-management-study-at-pelabuhan-indonesi', 'id', 'Solid Waste Management Study at Pelabuhan Indonesia II HQ'),
(309, NULL, 'swm-research-in-institutions', 'en', 'SWM RESEARCH IN INSTITUTIONS'),
(310, NULL, 'swm-research-in-institutions', 'id', 'SWM RESEARCH IN INSTITUTIONS'),
(311, NULL, 'swm-research-in-municipalities', 'en', 'SWM RESEARCH IN MUNICIPALITIES'),
(312, NULL, 'swm-research-in-municipalities', 'id', 'SWM RESEARCH IN MUNICIPALITIES'),
(313, NULL, 'solid-waste-management-design-for-revitalisation-a', 'en', 'Solid Waste Management Design for Revitalisation at Jami\' Mosque and Kampung Beting Settlements in Pontianak'),
(314, NULL, 'solid-waste-management-design-for-revitalisation-a', 'id', 'Solid Waste Management Design for Revitalisation at Jami\' Mosque and Kampung Beting Settlements in Pontianak');

-- --------------------------------------------------------

--
-- Table structure for table `dictionary_type`
--

CREATE TABLE `dictionary_type` (
  `dictionary_type_id` int(11) NOT NULL,
  `dictionary_type_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `expertise`
--

CREATE TABLE `expertise` (
  `expertise_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `expertise_name` varchar(255) DEFAULT NULL,
  `expertise_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `expertise`
--

INSERT INTO `expertise` (`expertise_id`, `service_id`, `expertise_name`, `expertise_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 6, 'technical-operational-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(3, 6, 'waste-audit?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(4, 6, 'financial-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(5, 6, 'swm-regulatory-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(6, 6, 'social-participation-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(7, 6, 'institutional-analysis?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(8, 6, 'stakeholders-mapping-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(9, 6, 'recycling-value-chain-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(10, 6, 'material-flow-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(11, 6, 'behavior-change-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(12, 6, 'marine-debris-study-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL),
(13, 6, 'waste-to-energy-feasibility-study-and-due-diligenc', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `facility_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `facility_name` varchar(255) DEFAULT NULL,
  `facility_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`facility_id`, `service_id`, `facility_name`, `facility_icon`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 1, 'trash-bag-designated-to-support-waste-segregation', 'wastebin-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:00'),
(2, 1, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:08'),
(3, 1, 'one-time-technical-induction-training', 'loadspeaker-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:16'),
(4, 1, 'waste-journey-report', 'report-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:21'),
(5, 2, 'trash-bag-designated-to-support-waste-segregation', 'wastebin-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:25'),
(6, 2, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:25'),
(7, 2, 'one-time-technical-induction-training', 'loadspeaker-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:25'),
(8, 2, 'waste-journey-report', 'report-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:25'),
(9, 3, 'inorganic-trash-bag', 'wastebin-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:31'),
(10, 3, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:31'),
(11, 3, 'one-time-technical-induction-training', 'loadspeaker-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:31'),
(12, 3, 'waste-journey-report', 'report-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:31'),
(13, 4, 'trash-bag-designated-to-support-waste-segregation', 'wastebin-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 00:07:44'),
(14, 4, 'waste-collection-in-a-segregated-state', 'segregation-bin-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 01:42:12'),
(15, 4, 'waste-journey-report', 'report-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 01:42:13'),
(16, 5, 'comprehensive-waste-management-system-in-the-distr', 'distribution-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 01:43:43'),
(17, 5, 'responsible-waste-management-for-residual-waste-w', 'residue-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 01:53:21'),
(18, 5, 'increase-the-number-of-waste-that-can-be-further-p', 'chart-m.png', '2019-11-19 09:09:42', NULL, '2019-11-28 01:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `flow`
--

CREATE TABLE `flow` (
  `flow_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `flow_name` varchar(255) DEFAULT NULL,
  `flow_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `flow`
--

INSERT INTO `flow` (`flow_id`, `service_id`, `flow_name`, `flow_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'waste-segregation-by-client', 'drop.png', '2019-11-19 09:10:01', '2019-12-01 11:57:07', NULL),
(2, 1, 'waste-storage-in-transfer-point/-tpst', 'storage.png', '2019-11-19 09:10:01', '2019-12-01 11:57:25', NULL),
(3, 1, 'segregated-waste-collection', 'transfer.png', '2019-11-19 09:10:01', '2019-12-01 11:56:44', NULL),
(4, 1, 'waste-processing-in-w4c’s-material-recovery-facili', 'process.png', '2019-11-19 09:10:01', '2019-12-01 11:56:57', NULL),
(5, 1, 'residue-being-sent-to-the-landfill', 'landfill.png', '2019-11-19 09:10:01', '2019-12-01 11:57:42', NULL),
(6, 2, 'waste-segregation-by-client', 'drop.png', '2019-11-19 09:10:01', '2019-12-01 11:57:07', NULL),
(7, 2, 'waste-storage-in-transfer-point/-tpst', 'storage.png', '2019-11-19 09:10:01', '2019-12-01 11:57:25', NULL),
(8, 2, 'segregated-waste-collection', 'transfer.png', '2019-11-19 09:10:01', '2019-12-01 11:56:44', NULL),
(9, 2, 'waste-processing-in-w4c’s-material-recovery-facili', 'process.png', '2019-11-19 09:10:01', '2019-12-01 11:56:57', NULL),
(10, 2, 'residue-being-sent-to-the-landfill', 'landfill.png', '2019-11-19 09:10:01', '2019-12-01 11:57:48', NULL),
(11, 3, 'waste-segregation-by-client', 'drop.png', '2019-11-19 09:10:01', '2019-12-01 11:57:07', NULL),
(12, 3, 'waste-storage-in-transfer-point/-tpst', 'storage.png', '2019-11-19 09:10:01', '2019-12-01 11:57:25', NULL),
(13, 3, 'segregated-waste-collection', 'transfer.png', '2019-11-19 09:10:01', '2019-12-01 11:56:44', NULL),
(14, 3, 'waste-processing-in-w4c’s-material-recivery-facili', 'process.png', '2019-11-19 09:10:01', '2019-12-01 11:56:57', NULL),
(15, 3, 'residue-being-sent-to-the-landfill', 'recycling.png', '2019-11-19 09:10:01', '2019-12-01 12:23:29', NULL),
(16, 4, 'waste-segregation-by-client', 'drop.png', '2019-11-19 09:10:01', '2019-12-01 11:57:07', NULL),
(17, 4, 'waste-storage-in-transfer-point/-tpst', 'storage.png', '2019-11-19 09:10:01', '2019-12-01 11:57:25', NULL),
(18, 4, 'segregated-waste-collection', 'transfer.png', '2019-11-19 09:10:01', '2019-12-01 11:56:44', NULL),
(19, 4, 'waste-processing-in-w4c’s-material-recivery-facili', 'process.png', '2019-11-19 09:10:01', '2019-12-01 11:56:57', NULL),
(20, 4, 'residue-being-sent-to-the-landfill', 'landfill.png', '2019-11-19 09:10:01', '2019-12-01 14:50:37', NULL),
(21, 5, 'waste-segregation-by-client', 'drop.png', '2019-11-19 09:10:01', '2019-12-01 11:57:07', NULL),
(22, 5, 'waste-storage-in-transfer-point/-tpst', 'storage.png', '2019-11-19 09:10:01', '2019-12-01 11:57:25', NULL),
(23, 5, 'segregated-waste-collection', 'transfer.png', '2019-11-19 09:10:01', '2019-12-01 11:56:44', NULL),
(24, 5, 'waste-processing-in-w4c’s-material-recivery-facili', 'process.png', '2019-11-19 09:10:01', '2019-12-01 11:56:57', NULL),
(25, 5, 'residue-being-sent-to-the-landfill', 'landfill.png', '2019-11-19 09:10:01', '2019-12-01 15:36:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_code` varchar(255) DEFAULT NULL,
  `language_name` varchar(255) DEFAULT NULL,
  `language_flag` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_code`, `language_name`, `language_flag`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'id', 'Indonesia', 'assets/img/icons/flag_indonesia.png', '2019-11-16 18:56:12', '2019-11-16 18:56:30', NULL),
(2, 'en', 'English', 'assets/img/icons/flag_english.png', '2019-11-16 18:56:53', '2019-11-16 18:56:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_slug` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `publised_at` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `photofolio`
--

CREATE TABLE `photofolio` (
  `photofolio_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `photofolio_client` varchar(255) DEFAULT NULL,
  `photofolio_client_logo` varchar(255) DEFAULT NULL,
  `photofolio_client_address` varchar(255) DEFAULT NULL,
  `photofolio_image` varchar(255) DEFAULT NULL,
  `photofolio_start` date DEFAULT NULL,
  `photofolio_end` date DEFAULT NULL,
  `photofolio_duration` varchar(255) DEFAULT NULL,
  `photofolio_collection_schedulle` varchar(255) DEFAULT NULL,
  `photofolio_waste_collected` varchar(255) DEFAULT NULL,
  `photofolio_audience` varchar(255) DEFAULT NULL,
  `photofolio_mou` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `photofolio`
--

INSERT INTO `photofolio` (`photofolio_id`, `service_id`, `photofolio_client`, `photofolio_client_logo`, `photofolio_client_address`, `photofolio_image`, `photofolio_start`, `photofolio_end`, `photofolio_duration`, `photofolio_collection_schedulle`, `photofolio_waste_collected`, `photofolio_audience`, `photofolio_mou`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 1, 'Vida Bekasi', 'vida.jpg', 'Jl. Tirta Utama No. 1, Bumiwedari, Bantar Gebang, Kota Bekasi, Jawa Barat 1715', 'vida.jpg', NULL, NULL, '', '3 days per week', '112.000 kg/month', '', '2014-01-01', '2019-11-28 01:35:47', '2019-11-28 01:36:03', NULL),
(13, 1, 'Wisma Barito', 'barito.jpg', 'Jl. Letjen. S. Parman Kav. 62-63, Slipi, Jakarta Barat, DKI Jakarta 11410', 'barito.jpg', NULL, NULL, '1 year', '3 days per week', '6.922 kg/month', '', '2019-02-01', '2019-11-28 01:35:47', '2019-11-28 01:36:03', NULL),
(14, 2, 'The Body Shop', 'tbs.jpg', 'Sentosa Building 2 Lt. 1, Bintaro Jaya Central Business District, Kota Tangerang Selatan, Banten 15224', 'tbs.jpg', NULL, NULL, '1 year', 'Every day', '776,5 kg/month', '', '2018-12-01', '2019-11-28 01:35:47', '2019-11-28 01:36:03', NULL),
(15, 2, 'PUPR', 'pupr.jpg', 'Jalan Pattimura No. 20,Jakarta Selatan 12110', 'pupr.jpg', NULL, NULL, '4 month', 'Every day', '26,575 kg/month', '', '2019-09-01', '2019-11-28 01:35:47', '2019-11-28 01:36:03', NULL),
(16, 3, 'Jakarta Land', '', 'World Trade Centre - WTC 5, 8th floor, Jl. Jend. Sudirman Kav. 29 Jakarta 12920', '', NULL, NULL, '1 year', '1 day per week', '192 kg/month', '', '2018-04-01', '2019-11-28 01:35:47', '2019-11-28 01:37:05', NULL),
(17, 4, 'Playfest 2019', 'playfest2019.jpg', '', 'playfest2019.jpg', '2019-08-24', '2019-08-25', '', '', '1.141 kg', '6000', NULL, '2019-11-28 01:35:47', '2019-11-28 01:37:10', NULL),
(18, 4, 'Milo Jakarta International 10K 2018', 'milo.jpg', '', 'milo.jpg', '2018-07-15', NULL, '', '', '646,2 kg', '16000', NULL, '2019-11-28 01:35:47', '2019-11-28 01:35:59', NULL),
(19, 5, 'The Body Shop - Bring Back Our Bottle (BBOB) Program', 'tbs.jpg', '', 'tbs.jpg', NULL, NULL, '2015 until present', '', '33447 kg', '', NULL, '2019-11-28 01:35:47', '2019-11-28 01:35:59', NULL),
(20, 5, 'By Lizzy Parra - There is a Box for That (TIBFT)', 'lizzy.jpg', '', 'lizzy.jpg', NULL, NULL, 'Agustus - November 2019', '', '', '', NULL, '2019-11-28 01:35:47', '2019-11-28 01:35:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `project_slug` varchar(255) NOT NULL,
  `project_category` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_client` varchar(255) DEFAULT NULL,
  `project_url` varchar(255) NOT NULL,
  `project_thumbnail` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `service_id`, `project_slug`, `project_category`, `project_name`, `project_client`, `project_url`, `project_thumbnail`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', 'swm-research-in-institutions', 'solid-waste-management-study-at-pelabuhan-indonesi', 'PT. Pelabuhan Indonesia II (Persero)', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:08:34', NULL),
(2, 6, 'solid-waste-management-design-for-revitalisation-at-jami\'\r\n-mosque-and-kampung-beting-settlements-in-pontianak', 'swm-research-in-municipalities', 'solid-waste-management-study-at-pelabuhan-indonesi', 'Ministry of Public Works and Housings', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:19:43', NULL),
(3, 6, 'feasibility-study-of-pyrolysis-for-plastic-packaging-in-lombok-and-batam', 'waste-to-energy-study', 'feasibility-study-of-pyrolysis-for-plastic-packagi', 'GA Circular', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:08:55', NULL),
(4, 6, 'waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', 'value-chain-analysis', 'feasibility-study-of-pyrolysis-for-plastic-packagi', 'PT. Deloitte Konsultan Indonesia', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:03', NULL),
(5, 6, 'riverine-plastic-monitoring-project-in-jakarta', 'marine-debris-study', 'riverine-plastic-monitoring-project-in-jakarta', 'The Ocean Cleanup', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:11', NULL),
(6, 7, '3r-program-suralaya', 'community-assistance-in-institutions', 'riverine-plastic-monitoring-project-in-jakarta', 'T. Indonesia Power Up Suralaya', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:21', NULL),
(7, 7, 'tps-3r-advisory', 'community-assistance-in-municipalities', 'tps-3r-advisory', 'PT. Sarana Multi Daya, PT. Multi Karadiguna Jasa, PT. Prismamita Cipta Kreasi', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:26', NULL),
(8, 7, 'ecoranger-in-pulau-merah-banyuwangi', 'community-assistance-in-tourism-sites', 'tps-3r-advisory', 'Greeneration Foundation and Coca Cola Foundation Indonesia', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:31', NULL),
(9, 7, 'capacity-building-in-indonesia’s-frontline-territories', 'capacity-building', 'capacity-building-in-indonesia’s-frontline-territo', 'Ministry of Public Works and Housing', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:36', NULL),
(10, 8, '3r-green-school', '3r-school-program', 'capacity-building-in-indonesia’s-frontline-territo', 'Yayasan Unilever Indonesia', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:43', NULL),
(11, 9, 'akabis-class-for-students-of-binus-school-al-izhar-high-school-and-smkn-3-bekasi', 'akabis-class-for-public', 'akabis-class-for-students-of-binus-school-al-izha', 'PT. Epson Indonesia', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:50', NULL),
(12, 9, 'akabis-class-for-the-embassy-of-finland-jakarta', 'akabis-class-for-institution', 'akabis-class-for-students-of-binus-school-al-izha', 'Embassy of Finland', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:54', NULL),
(13, 9, 'akabis-xperience-for-yseali', 'akabis-xperience-for-public', 'akabis-xperience-for-yseali', 'YSEALI (Young Southeast Asian Leader Initiative) Organized by Divers Clean Action and US Embassy?', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:59', NULL),
(14, 9, 'akabis-xperience-for-world-bank-jakarta', 'akabis-xperience-for-institution', 'akabis-xperience-for-yseali', 'World Bank', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:10:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recomendation`
--

CREATE TABLE `recomendation` (
  `recomendation_id` int(11) NOT NULL,
  `recomendation_name` varchar(255) DEFAULT NULL,
  `recomendation_color` varchar(255) DEFAULT NULL,
  `recomendation_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `recomendation`
--

INSERT INTO `recomendation` (`recomendation_id`, `recomendation_name`, `recomendation_color`, `recomendation_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'brand', '#a24495', 'icon-medical-022 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:32:41', NULL),
(2, 'bussiness-actor', '#a29244', 'icon-finance-024 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:32:53', NULL),
(3, 'company', '#a24444', 'icon-real-estate-052 u-line-icon-pro)', '2019-11-24 03:28:16', '2019-11-27 23:33:02', NULL),
(4, 'companys-csr', '#a24444', 'icon-medical-022 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:33:35', NULL),
(5, 'consultant', '#a29244', 'icon-finance-218 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:33:05', NULL),
(6, 'distributor', '#a24444', 'icon-real-estate-088 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:43:35', NULL),
(7, 'event', '#a24495', 'icon-hotel-restaurant-056 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:33:52', NULL),
(8, 'foundation', '#68a244', 'icon-real-estate-009 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:34:00', NULL),
(9, 'government', '#68a244', 'icon-hotel-restaurant-136 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:34:12', NULL),
(10, 'hotels', '#4489a2', 'icon-travel-079 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:34:29', NULL),
(11, 'individual', '#68a244', 'icon-real-estate-014 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL),
(12, 'office-blocks', '#68a244', 'icon-hotel-restaurant-172 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:34:37', NULL),
(13, 'product', '#a24495', 'icon-education-031 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:34:47', NULL),
(14, 'researcher', '#a29244', 'icon-finance-002 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:37:01', NULL),
(15, 'residential-area/housing', '#4489a2', 'icon-real-estate-070 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:37:17', NULL),
(16, 'restaurants', '#a24444', 'icon-hotel-restaurant-020 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:37:27', NULL),
(17, 'school', '#4489a2', 'icon-education-001 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:43:16', NULL),
(18, 'hse-division', '#4489a2', 'icon-medical-031 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:34:20', NULL),
(19, 'sustainability-division', '#a24444', 'icon-hotel-restaurant-132 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:32:19', NULL),
(20, 'csr-division', '#4489a2', 'icon-medical-022 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-27 23:43:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section_slug` varchar(255) DEFAULT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `section_menu_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_slug`, `section_name`, `section_menu_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'welcome', 'welcome', '', '2019-10-01 00:00:00', '2019-12-01 20:18:19', NULL),
(2, 'our-achievement', 'our-achievement', '', '2019-10-02 03:28:01', '2019-12-01 20:18:29', NULL),
(3, 'about', 'about', 'about', '2019-10-03 03:28:01', '2019-12-01 20:18:37', NULL),
(4, 'activities', 'activities', 'activities', '2019-10-05 03:28:01', '2019-12-01 20:33:47', NULL),
(5, 'benefit', 'benefit', 'benefit', '2019-10-06 03:28:01', '2019-12-01 20:34:14', NULL),
(6, 'expertise', 'expertise', 'expertise-and-experiences', '2019-10-06 03:28:01', '2019-12-01 20:34:07', NULL),
(7, 'what-you-get', 'what-you-get', 'what-you-get', '2019-10-07 03:28:01', '2019-12-01 20:37:21', NULL),
(8, 'waste-flow', 'waste-flow', 'waste-flow', '2019-10-07 03:28:01', '2019-12-01 20:36:17', NULL),
(9, 'photofolio-highlight', 'photofolio-highlight', 'highlight', '2019-10-08 03:28:01', '2019-12-01 20:36:26', NULL),
(10, 'project-highlight', 'project-highlight', 'highlight', '2019-10-08 03:28:01', '2019-12-01 20:36:31', NULL),
(11, 'our-client', 'our-client', 'client', '2019-10-09 03:28:01', '2019-12-01 20:37:45', NULL),
(12, 'recomended-for', 'recomended-for', 'recomended-for', '2019-10-10 03:28:01', '2019-12-01 20:37:39', NULL),
(13, 'our-coverage', 'our-coverage', 'coverage', '2019-10-11 03:28:01', '2019-12-01 20:37:50', NULL),
(14, 'cta', 'cta', '', '2019-10-12 03:28:01', '2019-12-01 20:37:55', NULL),
(15, 'project-header', 'project-header', NULL, '2019-10-01 00:00:00', '2019-12-01 20:15:36', NULL),
(16, 'description', 'description', 'description', '2019-10-03 00:00:00', '2019-12-01 20:15:36', NULL),
(17, 'similar-project', 'similar-project', 'similar-project', '2019-10-08 20:15:59', '2019-12-01 20:37:30', NULL),
(18, 'achievement-deliverables', 'achievement-deliverables', 'achievement-deliverables', '2019-10-04 20:22:17', '2019-12-01 20:54:37', NULL),
(19, 'we-offer', 'we-offer', 'offer', '2019-10-05 20:33:27', '2019-12-01 20:33:55', NULL),
(20, 'output', 'output-benefit', 'output-benefit', '2019-10-06 20:33:27', '2019-12-01 20:34:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_category_id` int(11) DEFAULT NULL,
  `service_parent_id` int(11) DEFAULT NULL,
  `service_subcategory_name` varchar(255) NOT NULL,
  `service_slug` text NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_slogan` varchar(255) DEFAULT NULL,
  `service_description` text DEFAULT NULL,
  `service_about` text DEFAULT NULL,
  `service_client_name` text NOT NULL,
  `service_about_image` varchar(255) DEFAULT NULL,
  `service_header_image` varchar(255) DEFAULT NULL,
  `service_thumbnail` varchar(255) DEFAULT NULL,
  `service_page_url` varchar(255) DEFAULT NULL,
  `service_join_url` varchar(255) DEFAULT NULL,
  `service_proposal_url` varchar(255) DEFAULT NULL,
  `service_portofolio_url` varchar(255) DEFAULT NULL,
  `has_page` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_category_id`, `service_parent_id`, `service_subcategory_name`, `service_slug`, `service_name`, `service_slogan`, `service_description`, `service_about`, `service_client_name`, `service_about_image`, `service_header_image`, `service_thumbnail`, `service_page_url`, `service_join_url`, `service_proposal_url`, `service_portofolio_url`, `has_page`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '', 'responsible-waste-management-basic', 'Responsible Waste Management - Basic', 'no-more-mixed-waste', 'a-100-holistic-waste-management-for-companies-bu', 'waste-generation-is-inevitable-its-not-easy-to-r', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/responsible-waste-management-basic', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSdydu6Ar9mGKppAI4V2fevcWkLSpTpiSwdbpv0moPU4-_o3NQ/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(2, 1, NULL, '', 'zero-waste-to-landfill', 'Zero Waste to Landfill', 'no-more-waste-that-end-up-in-landfills', 'take-an-active-part-in-preventing-our-local-landfi', 'every-day-indonesians-are-generating-175000-tons', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/zero-waste-to-landfill', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSemrcuqzCk4wFUtMPFFwLkJOsYSlCjoJ8GHCDdXcM7Or5YlQg/', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(3, 1, NULL, '', 'inorganic-waste-management', 'Inorganic Waste Management', 'from-waste-to-useful-materials', 'treat-your-inorganic-waste-the-right-way-and-make-', 'waste-is-a-relative-term-that-can-be-applied-diffe', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/inorganic-waste-management', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSfgzkfJXMhuTUO4sgwpkF1PINvH7_XNBrZ84PWJD6OqghV_Eg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(4, 1, NULL, '', 'event-waste-management', 'Event Waste Management', 'great-event-planned-their-waste-management-beforeh', 'through-the-placement-of-segregated-waste-bins-in-', 'waste-generation-during-an-event-is-inevitable-in', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/event-waste-management', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLScFEwvyBaouF85RuuJSQpDCmGmkIIf4Hby9uo6HrZHJVSRBvw', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(5, 2, NULL, '', 'in-store-recycling', 'In-Store Recycling', 'support-the-recycling-of-your-brand-labeled-waste', 'increase-the-material-processing-of-brand-labelled', 'designed-to-increase-the-material-processing-from-', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/in-store-recycling', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSd8QsQoYbyTb5-8dD6r5KUFCz9BhTmBvh1c2Lla2HdlrDHFQg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(6, 3, NULL, '', 'solid-waste-management-research', 'Solid Waste Management Research', 'research-and-planning-with-environment-in-mind', 'improve-your-solid-waste-management-by-conducting-', 'waste4change-provides-consultation-through-solid-w', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/solid-waste-management-research', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(7, 4, NULL, '', 'community-based-implementation', 'Community-Based Implementation', 'solid-effort-to-reduce-waste-generation-from-the-s', 'we-help-our-clients-to-implement-programs-that-enc', 'according-to-recent-bps-statistics-waste-manageme', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/community-based-implementation', 'https://waste4change.com/official/join', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(8, 4, NULL, '', '3r-school-program', '3R School Program', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'designed-to-encourage-the-increasing-awareness-of-', '3r-school-program-is-a-program-designed-to-encoura', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/3r-school-program', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLScmBjcHJhsI1OIOM-So0VQNhsbIGUJeKuovMe2QzVeYMnUU0g/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(9, 5, NULL, '', 'akabis-waste-management-academy', 'AKABIS (Waste Management Academy)', 'take-a-closer-look-at-waste-management-facts-and-s', 'waste-management-education-program-that-includes-a', 'akademi-bijak-sampah-akabis-is-an-education-mode', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/akabis-waste-management-academy', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(10, 5, NULL, '', 'black-soldier-fly-learning-center', 'Black Soldier Fly Learning Center', 'effective-organic-waste-solution', 'receive-in-depth-information-regarding-organic-was', 'through-bsf-learning-center-you-will-receive-in-d', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/black-soldier-fly-learning-center', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSc7hGAdWLlFqt5qa38-7fMwA9Nsp2ev9lUk7Qi8Xwe_z3lYfg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(11, 5, NULL, '', 'black-soldier-fly-tools-products', 'Black Soldier Fly Tools & Products', '', 'we-provide-black-soldier-fly-larvae-that-is-high-i', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/black-soldier-fly-tools-products', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(12, 6, NULL, '', 'send-your-waste', 'Send Your Waste', '', 'send-your-inorganic-waste-to-waste4change-and-let-', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/sendyourwaste', 'https://waste4change.com/official/join', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(13, 6, NULL, '', 'dropbox', 'Dropbox', '', 'deposit-your-inorganic-waste-in-waste4changes-dro', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'dropbox', 'https://waste4change.com/official/join', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(14, 6, NULL, '', 'sinergi-adesniatmurni-dan-gojek', 'Sinergi #AdesNiatMurni dan Gojek', '', 'send-your-used-pet-bottles-of-various-sizes-and-br', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'poin/home/sinergi-ades-niat-murni-dan-gojek', 'https://waste4change.com/official/join', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(15, 6, NULL, '', 'merchant', 'Merchant', '', 'deposit-your-used-packaging-through-our-partners-t', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/merchant', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(16, 6, NULL, '', 'home-composting', 'Home Composting', '', 'process-your-organic-waste-at-home-with-waste4cha', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/home-composting', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(17, NULL, 6, 'swm-research-in-institutions', 'solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', 'solid-waste-management-study-at-pelabuhan-indonesi', NULL, NULL, NULL, 'PT. Pelabuhan Indonesia II (Persero)', 'about.jpg', 'header.jpg', 'thumbnail.jpg\r\n', 'project/solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', NULL, NULL, NULL, 1, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL),
(18, NULL, 6, 'swm-research-in-municipalities', 'solid-waste-management-design-for-revitalisation-at-jami-mosque-and-kampung-beting-settlements-in-pontianak', 'solid-waste-management-design-for-revitalisation-a', NULL, NULL, NULL, 'Ministry of Public Works and Housings', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/solid-waste-management-design-for-revitalisation-at-jami-mosque-and-kampung-beting-settlements-in-pontianak', NULL, NULL, NULL, 1, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `service_category_id` int(11) NOT NULL,
  `service_target_id` int(11) DEFAULT NULL,
  `service_category_name` varchar(255) DEFAULT NULL,
  `service_category_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`service_category_id`, `service_target_id`, `service_category_name`, `service_category_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'responsible-waste-management', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL),
(2, 1, 'extended-producer-responsibility', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL),
(3, 1, 'solid-waste-management-research', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL),
(4, 1, 'community-development', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL),
(5, 1, 'training', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL),
(6, 2, 'general', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_recomendation`
--

CREATE TABLE `service_recomendation` (
  `service_recomendation_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `recomendation_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `service_recomendation`
--

INSERT INTO `service_recomendation` (`service_recomendation_id`, `service_id`, `recomendation_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 12, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL),
(2, 1, 16, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL),
(3, 1, 10, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL),
(4, 1, 15, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL),
(5, 2, 12, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL),
(6, 2, 16, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL),
(7, 2, 10, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(8, 2, 15, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(9, 3, 12, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(10, 3, 16, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(11, 3, 10, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(12, 3, 15, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(13, 4, 1, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(14, 4, 7, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(15, 4, 10, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(16, 4, 12, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(17, 5, 6, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(18, 5, 1, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(19, 5, 13, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(20, 6, 18, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(21, 6, 19, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(22, 6, 20, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(23, 6, 9, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(24, 6, 5, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(25, 6, 15, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(26, 6, 12, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(27, 7, 18, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(28, 7, 19, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(29, 7, 20, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(30, 7, 9, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(31, 7, 5, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(32, 7, 15, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(33, 7, 12, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(34, 8, 9, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(35, 8, 5, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(36, 9, 4, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(37, 9, 8, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(38, 9, 3, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(39, 9, 17, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(40, 10, 2, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(41, 10, 14, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(42, 11, 2, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(43, 11, 14, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(44, 12, 11, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(45, 13, 11, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(46, 14, 11, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(47, 15, 11, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL),
(48, 16, 11, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_section`
--

CREATE TABLE `service_section` (
  `service_section_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `service_section`
--

INSERT INTO `service_section` (`service_section_id`, `section_id`, `service_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2019-11-24 03:19:46', '2019-11-24 03:19:59', NULL),
(2, 2, 1, '2019-11-24 03:19:46', '2019-12-01 13:58:34', NULL),
(3, 3, 1, '2019-11-24 03:19:46', '2019-12-01 14:01:16', NULL),
(4, 4, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(5, 5, 1, '2019-11-24 03:19:46', '2019-11-26 01:22:19', NULL),
(6, 6, 1, '2019-11-24 03:19:46', '2019-11-26 01:22:13', '2019-11-19 09:10:01'),
(7, 7, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(8, 8, 1, '2019-11-24 03:19:46', '2019-11-26 01:48:18', NULL),
(9, 9, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(10, 10, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(11, 11, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(12, 12, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(13, 13, 1, '2019-11-24 03:19:46', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(14, 14, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(15, 1, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(16, 2, 2, '2019-11-24 03:19:46', '2019-11-24 03:19:59', NULL),
(17, 3, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(18, 4, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(19, 5, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(20, 6, 2, '2019-11-24 03:19:46', '2019-11-28 01:14:20', '2019-11-19 09:10:01'),
(21, 7, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(22, 8, 2, '2019-11-24 03:19:46', '2019-11-26 01:23:00', '2019-11-19 09:10:01'),
(23, 9, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(24, 10, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(25, 11, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(26, 12, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(27, 13, 2, '2019-11-24 03:19:46', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(28, 14, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(29, 1, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(30, 2, 3, '2019-11-24 03:19:46', '2019-11-28 01:13:25', '2019-11-19 09:10:01'),
(31, 3, 3, '2019-11-24 03:19:46', '2019-11-24 03:19:59', NULL),
(32, 4, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(33, 5, 3, '2019-11-24 03:19:46', '2019-11-28 01:14:16', NULL),
(34, 6, 3, '2019-11-24 03:19:46', '2019-11-28 01:14:18', '2019-11-19 09:10:01'),
(35, 7, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(36, 8, 3, '2019-11-24 03:19:46', '2019-11-26 01:23:02', '2019-11-19 09:10:01'),
(37, 9, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(38, 10, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(39, 11, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(40, 12, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(41, 13, 3, '2019-11-24 03:19:46', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(42, 14, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(43, 1, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(44, 2, 4, '2019-11-24 03:19:46', '2019-11-28 01:52:09', '2019-11-19 09:10:01'),
(45, 3, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(46, 4, 4, '2019-11-24 03:19:46', '2019-11-24 03:19:46', '2019-11-19 09:10:01'),
(47, 5, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(48, 6, 4, '2019-11-24 03:19:46', '2019-11-28 01:40:05', '2019-11-19 09:10:01'),
(49, 7, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(50, 8, 4, '2019-11-24 03:19:46', '2019-11-28 01:40:13', NULL),
(51, 9, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(52, 10, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(53, 11, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(54, 12, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(55, 13, 4, '2019-11-24 03:19:46', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(56, 14, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(57, 1, 5, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(58, 2, 5, '2019-11-24 03:19:46', '2019-11-28 01:52:07', '2019-11-19 09:10:01'),
(59, 3, 5, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL),
(60, 4, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(61, 5, 5, '2019-11-24 03:19:47', '2019-12-01 15:33:42', NULL),
(62, 6, 5, '2019-11-24 03:19:47', '2019-12-01 15:34:06', '2019-11-19 09:10:01'),
(63, 7, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(64, 8, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(65, 9, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(66, 10, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(67, 11, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(68, 12, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(69, 13, 5, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(70, 14, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(71, 1, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(72, 2, 6, '2019-11-24 03:19:47', '2019-12-01 19:18:16', '2019-11-19 09:10:01'),
(73, 3, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(74, 4, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(75, 5, 6, '2019-11-24 03:19:47', '2019-12-01 16:23:14', '2019-11-19 09:10:01'),
(76, 6, 6, '2019-11-24 03:19:47', '2019-12-01 16:23:21', NULL),
(77, 7, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(78, 8, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(79, 9, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(80, 10, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(81, 11, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(82, 12, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(83, 13, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(84, 14, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(85, 1, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(86, 2, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(87, 3, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(88, 4, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(89, 5, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(90, 6, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(91, 7, 7, '2019-11-24 03:19:47', '2019-11-24 03:19:59', NULL),
(92, 8, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(93, 9, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(94, 10, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(95, 11, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(96, 12, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(97, 13, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(98, 14, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(99, 1, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(100, 2, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(101, 3, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(102, 4, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(103, 5, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(104, 6, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(105, 7, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(106, 8, 8, '2019-11-24 03:19:47', '2019-11-24 03:19:47', '2019-11-19 09:10:01'),
(107, 9, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(108, 10, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(109, 11, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(110, 12, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(111, 13, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(112, 14, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(113, 1, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(114, 2, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(115, 3, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(116, 4, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(117, 5, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(118, 6, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(119, 7, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(120, 8, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(121, 9, 9, '2019-11-24 03:19:47', '2019-11-24 03:19:47', '2019-11-19 09:10:01'),
(122, 10, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(123, 11, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(124, 12, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(125, 13, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(126, 14, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(127, 1, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(128, 2, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(129, 3, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(130, 4, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(131, 5, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(132, 6, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(133, 7, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(134, 8, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(135, 9, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(136, 10, 10, '2019-11-24 03:19:47', '2019-11-24 03:19:47', '2019-11-19 09:10:01'),
(137, 11, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(138, 12, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(139, 13, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01'),
(140, 14, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(141, 1, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(142, 2, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(143, 3, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(144, 4, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(145, 5, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(146, 6, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(147, 7, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(148, 8, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(149, 9, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(150, 10, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(151, 11, 11, '2019-11-24 03:19:47', '2019-11-24 03:19:58', NULL),
(152, 12, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(153, 13, 11, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(154, 14, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(155, 1, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(156, 2, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(157, 3, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(158, 4, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(159, 5, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(160, 6, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(161, 7, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(162, 8, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(163, 9, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(164, 10, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(165, 11, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(166, 12, 12, '2019-11-24 03:19:47', '2019-11-24 03:19:58', NULL),
(167, 13, 12, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(168, 14, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(169, 1, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(170, 2, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(171, 3, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(172, 4, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(173, 5, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(174, 6, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(175, 7, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(176, 8, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(177, 9, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(178, 10, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(179, 11, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(180, 12, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(181, 13, 13, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(182, 14, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(183, 1, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(184, 2, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(185, 3, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(186, 4, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(187, 5, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(188, 6, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(189, 7, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(190, 8, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(191, 9, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(192, 10, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(193, 11, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(194, 12, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(195, 13, 14, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(196, 14, 14, '2019-11-24 03:19:47', '2019-11-24 03:19:59', NULL),
(197, 1, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(198, 2, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(199, 3, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(200, 4, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(201, 5, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(202, 6, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(203, 7, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(204, 8, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(205, 9, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(206, 10, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(207, 11, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(208, 12, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(209, 13, 15, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(210, 14, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(211, 1, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(212, 2, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(213, 3, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(214, 4, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(215, 5, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(216, 6, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(217, 7, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(218, 8, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(219, 9, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(220, 10, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(221, 11, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(222, 12, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(223, 13, 16, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01'),
(224, 14, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL),
(225, 15, 17, '2019-12-01 20:48:04', '2019-12-01 20:48:04', NULL),
(226, 16, 17, '2019-12-01 20:48:26', '2019-12-01 20:48:26', NULL),
(227, 18, 17, '2019-12-01 20:48:39', '2019-12-01 20:49:33', NULL),
(228, 6, 17, '2019-12-01 20:50:12', '2019-12-01 20:50:12', NULL),
(229, 17, 17, '2019-12-01 20:50:24', '2019-12-01 20:50:24', NULL),
(230, 14, 17, '2019-12-01 20:50:36', '2019-12-01 20:50:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_target`
--

CREATE TABLE `service_target` (
  `service_target_id` int(11) NOT NULL,
  `service_target_name` varchar(255) DEFAULT NULL,
  `service_target_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `service_target`
--

INSERT INTO `service_target` (`service_target_id`, `service_target_name`, `service_target_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'company', 'icon-real-estate-066', '2019-11-16 20:18:11', '2019-11-16 20:18:34', NULL),
(2, 'individual', 'icon-real-estate-003', '2019-11-16 20:18:16', '2019-11-16 20:18:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `testimony_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `testimony_name` varchar(255) DEFAULT NULL,
  `testimony_role` varchar(255) DEFAULT NULL,
  `testimony_company` varchar(255) DEFAULT NULL,
  `testimony_content` varchar(255) DEFAULT NULL,
  `testimony_photo` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`achievement_id`) USING BTREE;

--
-- Indexes for table `benefit`
--
ALTER TABLE `benefit`
  ADD PRIMARY KEY (`benefit_id`) USING BTREE;

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`) USING BTREE;

--
-- Indexes for table `dictionary`
--
ALTER TABLE `dictionary`
  ADD PRIMARY KEY (`dictionary_id`) USING BTREE;

--
-- Indexes for table `dictionary_type`
--
ALTER TABLE `dictionary_type`
  ADD PRIMARY KEY (`dictionary_type_id`) USING BTREE;

--
-- Indexes for table `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`expertise_id`) USING BTREE;

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`facility_id`) USING BTREE;

--
-- Indexes for table `flow`
--
ALTER TABLE `flow`
  ADD PRIMARY KEY (`flow_id`) USING BTREE;

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`) USING BTREE;

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`) USING BTREE;

--
-- Indexes for table `photofolio`
--
ALTER TABLE `photofolio`
  ADD PRIMARY KEY (`photofolio_id`) USING BTREE;

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `recomendation`
--
ALTER TABLE `recomendation`
  ADD PRIMARY KEY (`recomendation_id`) USING BTREE;

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`) USING BTREE;

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`) USING BTREE,
  ADD KEY `fk_service_service_category_1` (`service_category_id`) USING BTREE;

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`service_category_id`) USING BTREE,
  ADD KEY `fk_service_category_service_for_1` (`service_target_id`) USING BTREE;

--
-- Indexes for table `service_recomendation`
--
ALTER TABLE `service_recomendation`
  ADD PRIMARY KEY (`service_recomendation_id`) USING BTREE,
  ADD KEY `fk_service_recomendation_service_1` (`service_id`) USING BTREE;

--
-- Indexes for table `service_section`
--
ALTER TABLE `service_section`
  ADD PRIMARY KEY (`service_section_id`) USING BTREE;

--
-- Indexes for table `service_target`
--
ALTER TABLE `service_target`
  ADD PRIMARY KEY (`service_target_id`) USING BTREE;

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`testimony_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement`
--
ALTER TABLE `achievement`
  MODIFY `achievement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `benefit`
--
ALTER TABLE `benefit`
  MODIFY `benefit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `dictionary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `dictionary_type`
--
ALTER TABLE `dictionary_type`
  MODIFY `dictionary_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expertise`
--
ALTER TABLE `expertise`
  MODIFY `expertise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `flow`
--
ALTER TABLE `flow`
  MODIFY `flow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photofolio`
--
ALTER TABLE `photofolio`
  MODIFY `photofolio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `recomendation`
--
ALTER TABLE `recomendation`
  MODIFY `recomendation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `service_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_recomendation`
--
ALTER TABLE `service_recomendation`
  MODIFY `service_recomendation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `service_section`
--
ALTER TABLE `service_section`
  MODIFY `service_section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `service_target`
--
ALTER TABLE `service_target`
  MODIFY `service_target_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `testimony_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fk_service_service_category_1` FOREIGN KEY (`service_category_id`) REFERENCES `service_category` (`service_category_id`);

--
-- Constraints for table `service_category`
--
ALTER TABLE `service_category`
  ADD CONSTRAINT `fk_service_category_service_for_1` FOREIGN KEY (`service_target_id`) REFERENCES `service_target` (`service_target_id`);

--
-- Constraints for table `service_recomendation`
--
ALTER TABLE `service_recomendation`
  ADD CONSTRAINT `fk_service_recomendation_service_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
