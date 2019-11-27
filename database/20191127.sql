/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : w4c_official

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 27/11/2019 23:02:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for achievement
-- ----------------------------
DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement`  (
  `achievement_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `achievement_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `achievement_count` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `achievement_unit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`achievement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of achievement
-- ----------------------------
INSERT INTO `achievement` VALUES (1, 1, 'lorem-ipsum', '9999', '', '0000-00-00 00:00:00', '2019-11-24 03:20:55', NULL);
INSERT INTO `achievement` VALUES (2, 1, 'lorem-ipsum', '9999', '', '0000-00-00 00:00:00', '2019-11-24 03:20:55', NULL);
INSERT INTO `achievement` VALUES (3, 1, 'lorem-ipsum', '9999', '', '0000-00-00 00:00:00', '2019-11-24 03:20:56', NULL);

-- ----------------------------
-- Table structure for benefit
-- ----------------------------
DROP TABLE IF EXISTS `benefit`;
CREATE TABLE `benefit`  (
  `benefit_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `benefit_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `benefit_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`benefit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of benefit
-- ----------------------------
INSERT INTO `benefit` VALUES (25, 1, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (26, 1, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (27, 1, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (28, 1, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (29, 1, 'increasing-staff’s-awareness-of-waste-issues', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (30, 2, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (31, 2, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (32, 2, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (33, 2, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (34, 2, 'increasing-staff’s-awareness-of-waste-issues', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (35, 3, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (36, 3, 'reduce-waste-to-landfill', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (37, 3, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (38, 3, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (39, 3, 'increasing-staff’s-awareness-of-waste-issues', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (40, 4, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (41, 4, 'reduce-waste-to-landfill', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (42, 4, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (43, 4, 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (44, 4, 'increasing-staff’s-awareness-of-waste-issues', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (45, 5, '100-holistic-approach-on-waste-management', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (46, 5, 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (47, 5, 'waste-journey-report', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);
INSERT INTO `benefit` VALUES (48, 5, 'help-to-increase-recycling-rate', NULL, '2019-11-24 03:23:39', '2019-11-24 03:23:39', NULL);

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `client_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `client_logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (2, 1, 'Binus School', 'Binus School.jpg', '2019-11-24 03:27:24', '2019-11-27 22:48:07', NULL);
INSERT INTO `client` VALUES (3, 1, 'Javara', 'Javara.jpg', '2019-11-24 03:27:24', '2019-11-27 22:48:09', NULL);
INSERT INTO `client` VALUES (4, 1, 'Mang Kabayan', 'Mang Kabayan.jpg', '2019-11-24 03:27:24', '2019-11-27 22:48:55', NULL);
INSERT INTO `client` VALUES (5, 1, 'Seniman Pangan', 'Seniman Pangan.jpg', '2019-11-24 03:27:24', '2019-11-27 22:48:35', NULL);
INSERT INTO `client` VALUES (6, 1, 'Wisma Barito', 'Wisma Barito.jpg', '2019-11-24 03:27:24', '2019-11-27 22:48:29', NULL);
INSERT INTO `client` VALUES (7, 1, 'Client F', 'clientf.jpg', '2019-11-24 03:27:24', '2019-11-24 03:27:24', NULL);
INSERT INTO `client` VALUES (8, 1, 'Client G', 'clientg.jpg', '2019-11-24 03:27:24', '2019-11-24 03:27:24', NULL);

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `dictionary_id` int(11) NOT NULL AUTO_INCREMENT,
  `dictionar_type_id` int(11) NULL DEFAULT NULL,
  `dictionary_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `language_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dictionary_content` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dictionary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, NULL, 'brand', 'en', 'Brand');
INSERT INTO `dictionary` VALUES (2, NULL, 'brand', 'id', 'Merek');
INSERT INTO `dictionary` VALUES (3, NULL, 'bussiness-actor', 'en', 'Bussiness Actor');
INSERT INTO `dictionary` VALUES (4, NULL, 'bussiness-actor', 'id', 'Bussiness Aktor');
INSERT INTO `dictionary` VALUES (5, NULL, 'company', 'en', 'Company');
INSERT INTO `dictionary` VALUES (6, NULL, 'company', 'id', 'Perusahaan');
INSERT INTO `dictionary` VALUES (7, NULL, 'companys-csr', 'en', 'Company\'s CSR');
INSERT INTO `dictionary` VALUES (8, NULL, 'companys-csr', 'id', 'Csr Perusahaan');
INSERT INTO `dictionary` VALUES (9, NULL, 'consultant', 'en', 'Consultant');
INSERT INTO `dictionary` VALUES (10, NULL, 'consultant', 'id', 'Konsultan');
INSERT INTO `dictionary` VALUES (11, NULL, 'distributor', 'en', 'Distributor');
INSERT INTO `dictionary` VALUES (12, NULL, 'distributor', 'id', 'Distribut');
INSERT INTO `dictionary` VALUES (13, NULL, 'event', 'en', 'Event');
INSERT INTO `dictionary` VALUES (14, NULL, 'event', 'id', 'Peristiwa');
INSERT INTO `dictionary` VALUES (15, NULL, 'foundation', 'en', 'Foundation');
INSERT INTO `dictionary` VALUES (16, NULL, 'foundation', 'id', 'Dasar');
INSERT INTO `dictionary` VALUES (17, NULL, 'government', 'en', 'Government');
INSERT INTO `dictionary` VALUES (18, NULL, 'government', 'id', 'Pemerintah');
INSERT INTO `dictionary` VALUES (19, NULL, 'hotels', 'en', 'Hotels');
INSERT INTO `dictionary` VALUES (20, NULL, 'hotels', 'id', 'Hotel');
INSERT INTO `dictionary` VALUES (21, NULL, 'individual', 'en', 'Individual');
INSERT INTO `dictionary` VALUES (22, NULL, 'individual', 'id', 'Individu');
INSERT INTO `dictionary` VALUES (23, NULL, 'office-blocks', 'en', 'Office Blocks');
INSERT INTO `dictionary` VALUES (24, NULL, 'office-blocks', 'id', 'Kantor Blok');
INSERT INTO `dictionary` VALUES (25, NULL, 'product', 'en', 'Product');
INSERT INTO `dictionary` VALUES (26, NULL, 'product', 'id', 'Produk');
INSERT INTO `dictionary` VALUES (27, NULL, 'researcher', 'en', 'Researcher');
INSERT INTO `dictionary` VALUES (28, NULL, 'researcher', 'id', 'Peneliti');
INSERT INTO `dictionary` VALUES (29, NULL, 'residential-area/housing', 'en', 'Residential Area/Housing');
INSERT INTO `dictionary` VALUES (30, NULL, 'residential-area/housing', 'id', 'Residential Area / Perumahan');
INSERT INTO `dictionary` VALUES (31, NULL, 'restaurants', 'en', 'Restaurants');
INSERT INTO `dictionary` VALUES (32, NULL, 'restaurants', 'id', 'Restoran');
INSERT INTO `dictionary` VALUES (33, NULL, 'school', 'en', 'School');
INSERT INTO `dictionary` VALUES (34, NULL, 'school', 'id', 'Sekolah');
INSERT INTO `dictionary` VALUES (35, NULL, 'hse-division', 'en', 'HSE Division');
INSERT INTO `dictionary` VALUES (36, NULL, 'hse-division', 'id', 'Divisi HSE');
INSERT INTO `dictionary` VALUES (37, NULL, 'sustainability-division', 'en', 'Sustainability Division');
INSERT INTO `dictionary` VALUES (38, NULL, 'sustainability-division', 'id', 'Divisi keberlanjutan');
INSERT INTO `dictionary` VALUES (39, NULL, 'csr-division', 'en', 'CSR Division');
INSERT INTO `dictionary` VALUES (40, NULL, 'csr-division', 'id', 'Divisi CSR');
INSERT INTO `dictionary` VALUES (41, NULL, 'no-more-mixed-waste', 'en', 'No More Mixed Waste');
INSERT INTO `dictionary` VALUES (42, NULL, 'no-more-mixed-waste', 'id', 'Tidak Ada Limbah Campur');
INSERT INTO `dictionary` VALUES (43, NULL, 'no-more-waste-that-end-up-in-landfills', 'en', 'No More Waste That End Up In Landfills');
INSERT INTO `dictionary` VALUES (44, NULL, 'no-more-waste-that-end-up-in-landfills', 'id', 'Tidak ada Limbah Lebih Itu berakhir di landfill');
INSERT INTO `dictionary` VALUES (45, NULL, 'from-waste-to-useful-materials', 'en', 'From Waste to Useful Materials');
INSERT INTO `dictionary` VALUES (46, NULL, 'from-waste-to-useful-materials', 'id', 'Dari Limbah ke Bahan Berguna');
INSERT INTO `dictionary` VALUES (47, NULL, 'great-event-planned-their-waste-management-beforeh', 'en', 'Great Event Planned Their Waste Management Beforehand');
INSERT INTO `dictionary` VALUES (48, NULL, 'great-event-planned-their-waste-management-beforeh', 'id', 'Great Event Rencana Pengelolaan Limbah mereka Terlebih dahulu');
INSERT INTO `dictionary` VALUES (49, NULL, 'support-the-recycling-of-your-brand-labeled-waste', 'en', 'Support the Recycling of Your Brand-Labeled Waste');
INSERT INTO `dictionary` VALUES (50, NULL, 'support-the-recycling-of-your-brand-labeled-waste', 'id', 'Mendukung Daur Ulang Limbah Brand-Berlabel Anda');
INSERT INTO `dictionary` VALUES (51, NULL, 'research-and-planning-with-environment-in-mind', 'en', 'Research and Planning with Environment in Mind');
INSERT INTO `dictionary` VALUES (52, NULL, 'research-and-planning-with-environment-in-mind', 'id', 'Penelitian dan Perencanaan dengan Lingkungan di Mind');
INSERT INTO `dictionary` VALUES (53, NULL, 'solid-effort-to-reduce-waste-generation-from-the-s', 'en', 'Solid Effort to Reduce Waste Generation From The Source');
INSERT INTO `dictionary` VALUES (54, NULL, 'solid-effort-to-reduce-waste-generation-from-the-s', 'id', 'Upaya yang solid untuk Mengurangi Generasi Sampah Dari Source');
INSERT INTO `dictionary` VALUES (55, NULL, 'optimal-implementation-of-3r-reduce-reuse-recycle', 'en', 'Optimal Implementation of 3R (Reduce-Reuse-Recycle) Principles');
INSERT INTO `dictionary` VALUES (56, NULL, 'optimal-implementation-of-3r-reduce-reuse-recycle', 'id', 'Pelaksanaan optimal 3R (Reduce-Reuse-Recycle) Prinsip');
INSERT INTO `dictionary` VALUES (57, NULL, 'take-a-closer-look-at-waste-management-facts-and-s', 'en', 'Take a Closer Look at Waste Management Facts and Solutions');
INSERT INTO `dictionary` VALUES (58, NULL, 'take-a-closer-look-at-waste-management-facts-and-s', 'id', 'Ambil Closer Look di Fakta Pengelolaan Limbah dan Solusi');
INSERT INTO `dictionary` VALUES (59, NULL, 'effective-organic-waste-solution', 'en', 'Effective Organic Waste Solution');
INSERT INTO `dictionary` VALUES (60, NULL, 'effective-organic-waste-solution', 'id', 'Solusi Sampah Organik efektif');
INSERT INTO `dictionary` VALUES (61, NULL, 'a-100-holistic-waste-management-for-companies-bu', 'en', 'A 100% holistic waste management for companies, buildings, and businesses to reduce the number of waste that piles up in the landfill.');
INSERT INTO `dictionary` VALUES (62, NULL, 'a-100-holistic-waste-management-for-companies-bu', 'id', 'Sebuah pengelolaan limbah holistik 100% bagi perusahaan, bangunan, dan bisnis untuk mengurangi jumlah sampah yang menumpuk di TPA.');
INSERT INTO `dictionary` VALUES (63, NULL, 'take-an-active-part-in-preventing-our-local-landfi', 'en', 'Take an active part in preventing our local landfills from becoming overcapacity! Through our waste collection and waste recycling program: Zero Waste to Landfill, we will ensure that none of your waste ends up in the landfill!');
INSERT INTO `dictionary` VALUES (64, NULL, 'take-an-active-part-in-preventing-our-local-landfi', 'id', 'Mengambil bagian aktif dalam mencegah pembuangan sampah lokal kami dari menjadi kelebihan kapasitas! Melalui pengumpulan sampah dan limbah Program daur ulang: Zero Waste ke TPA, kami akan memastikan bahwa tidak ada limbah Anda berakhir di TPA!');
INSERT INTO `dictionary` VALUES (65, NULL, 'treat-your-inorganic-waste-the-right-way-and-make-', 'en', 'Treat your inorganic waste the right way and make sure that your inorganic waste are recycled and included in the sustainable circular system.');
INSERT INTO `dictionary` VALUES (66, NULL, 'treat-your-inorganic-waste-the-right-way-and-make-', 'id', 'Perlakukan sampah anorganik Anda dengan cara yang benar dan memastikan bahwa sampah anorganik Anda didaur ulang dan termasuk dalam sistem melingkar yang berkelanjutan.');
INSERT INTO `dictionary` VALUES (67, NULL, 'through-the-placement-of-segregated-waste-bins-in-', 'en', 'Through the placement of segregated waste bins in strategic places, as well as segregated waste collection for all of the waste that are produced during your event, we will help your event’s waste management to be more well-prepared and responsible!');
INSERT INTO `dictionary` VALUES (68, NULL, 'through-the-placement-of-segregated-waste-bins-in-', 'id', 'Melalui penempatan tempat sampah terpisah di tempat-tempat strategis, serta pengumpulan sampah terpisah untuk semua limbah yang dihasilkan selama acara Anda, kami akan membantu pengelolaan sampah acara Anda menjadi lebih disiapkan dan bertanggung jawab!');
INSERT INTO `dictionary` VALUES (69, NULL, 'increase-the-material-processing-of-brand-labelled', 'en', 'Increase the material processing of brand-labelled waste throughout your company’s business line. Whether it’s in-store recycling or app-based recycling program, we provide both the system and solution!');
INSERT INTO `dictionary` VALUES (70, NULL, 'increase-the-material-processing-of-brand-labelled', 'id', 'Meningkatkan pengolahan bahan limbah merek berlabel seluruh lini bisnis perusahaan Anda. Apakah itu di dalam toko daur ulang atau program daur ulang berbasis aplikasi-, kami menyediakan sistem dan solusi!');
INSERT INTO `dictionary` VALUES (71, NULL, 'improve-your-solid-waste-management-by-conducting-', 'en', 'Improve your solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs.');
INSERT INTO `dictionary` VALUES (72, NULL, 'improve-your-solid-waste-management-by-conducting-', 'id', 'Meningkatkan pengelolaan limbah padat Anda dengan melakukan analisis menyeluruh dan mengidentifikasi paling sistem dan program yang tepat.');
INSERT INTO `dictionary` VALUES (73, NULL, 'we-help-our-clients-to-implement-programs-that-enc', 'en', 'We help our clients to implement programs that encourage the community to act and provide real contributions to the waste crisis in Indonesia.');
INSERT INTO `dictionary` VALUES (74, NULL, 'we-help-our-clients-to-implement-programs-that-enc', 'id', 'Kami membantu klien kami untuk melaksanakan program-program yang mendorong masyarakat untuk bertindak dan memberikan kontribusi nyata untuk krisis sampah di Indonesia.');
INSERT INTO `dictionary` VALUES (75, NULL, 'designed-to-encourage-the-increasing-awareness-of-', 'en', 'Designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management in schools.');
INSERT INTO `dictionary` VALUES (76, NULL, 'designed-to-encourage-the-increasing-awareness-of-', 'id', 'Dirancang untuk mendorong meningkatnya kesadaran warga sekolah untuk menerapkan Prinsip 3R (Reduce, Reuse, Recycle) untuk penciptaan pengelolaan sampah yang bertanggung jawab di sekolah-sekolah.');
INSERT INTO `dictionary` VALUES (77, NULL, 'waste-management-education-program-that-includes-a', 'en', 'Waste management education program that includes a visit to local landfill and Waste4Change’s waste management facilities that stimulates all 4 senses (sight, touch, smell, and hearing).');
INSERT INTO `dictionary` VALUES (78, NULL, 'waste-management-education-program-that-includes-a', 'id', 'Limbah Program pendidikan manajemen yang mencakup kunjungan ke TPA lokal dan fasilitas pengelolaan limbah Waste4Change yang merangsang semua indera 4 (penglihatan, sentuhan, bau, dan pendengaran).');
INSERT INTO `dictionary` VALUES (79, NULL, 'receive-in-depth-information-regarding-organic-was', 'en', 'Receive in-depth information regarding organic waste processing using Black Soldier Fly (BSF), as well as the cultivation and breeding methods of BSF.');
INSERT INTO `dictionary` VALUES (80, NULL, 'receive-in-depth-information-regarding-organic-was', 'id', 'Menerima informasi mendalam mengenai pengolahan sampah organik menggunakan Hitam Soldier Fly (BSF), serta budidaya dan metode pemuliaan dari BSF.');
INSERT INTO `dictionary` VALUES (81, NULL, 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'en', 'We provide Black Soldier Fly larvae that is high in protein and considered as a great animal feed. For any of you who wishes to build your own BSF nursery, we have all the necessary tools and starter kit.');
INSERT INTO `dictionary` VALUES (82, NULL, 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'id', 'Kami menyediakan Hitam Soldier Fly larva yang tinggi protein dan dianggap sebagai pakan ternak besar. Untuk setiap dari Anda yang ingin membangun pembibitan BSF sendiri, kita memiliki semua alat yang diperlukan dan starter kit.');
INSERT INTO `dictionary` VALUES (83, NULL, 'send-your-inorganic-waste-to-waste4change-and-let-', 'en', 'Send your inorganic waste to Waste4Change and let us recycle it for you.');
INSERT INTO `dictionary` VALUES (84, NULL, 'send-your-inorganic-waste-to-waste4change-and-let-', 'id', 'Kirim sampah anorganik untuk Waste4Change dan biarkan kami mendaur ulang untuk Anda.');
INSERT INTO `dictionary` VALUES (85, NULL, 'deposit-your-inorganic-waste-in-waste4changes-dro', 'en', 'Deposit your inorganic waste in Waste4Change\'s dropbox and let us recycle it for you.');
INSERT INTO `dictionary` VALUES (86, NULL, 'deposit-your-inorganic-waste-in-waste4changes-dro', 'id', 'Deposit sampah anorganik Anda di dropbox Waste4Change dan mari kita mendaur ulang untuk Anda.');
INSERT INTO `dictionary` VALUES (87, NULL, 'send-your-used-pet-bottles-of-various-sizes-and-br', 'en', 'Send your used PET bottles of various sizes and brands with GoSend to get many benefits from Ades.');
INSERT INTO `dictionary` VALUES (88, NULL, 'send-your-used-pet-bottles-of-various-sizes-and-br', 'id', 'Kirim botol PET Anda digunakan berbagai ukuran dan merek dengan GoSend untuk mendapatkan banyak manfaat dari Ades.');
INSERT INTO `dictionary` VALUES (89, NULL, 'deposit-your-used-packaging-through-our-partners-t', 'en', 'Deposit your used packaging through our partners throughout Indonesia and get reward points when shopping for various digital products.');
INSERT INTO `dictionary` VALUES (90, NULL, 'deposit-your-used-packaging-through-our-partners-t', 'id', 'Deposit kemasan yang digunakan melalui mitra kami di seluruh Indonesia dan mendapatkan poin reward saat berbelanja untuk berbagai produk digital.');
INSERT INTO `dictionary` VALUES (91, NULL, 'process-your-organic-waste-at-home-with-waste4cha', 'en', 'Process your organic waste at  home with Waste4Change’s special composting bag and other home composting tools and equipment!');
INSERT INTO `dictionary` VALUES (92, NULL, 'process-your-organic-waste-at-home-with-waste4cha', 'id', 'Mengolah sampah organik di rumah dengan tas Waste4Change ini khusus kompos dan kompos alat rumah lainnya dan peralatan!');
INSERT INTO `dictionary` VALUES (93, NULL, 'waste-generation-is-inevitable-its-not-easy-to-r', 'en', 'Waste generation is inevitable. It\'s not easy to reduce waste in our everyday lives. The simplest, easiest and most important thing that we can do after generating waste is separating our organic and inorganic waste. <br>Through our service Responsible Wa');
INSERT INTO `dictionary` VALUES (94, NULL, 'waste-generation-is-inevitable-its-not-easy-to-r', 'id', 'timbulan sampah tidak bisa dihindari. Ini tidak mudah untuk mengurangi limbah dalam kehidupan kita sehari-hari. Yang paling sederhana, paling mudah dan paling penting hal yang bisa kita lakukan setelah limbah pembangkit adalah memisahkan sampah organik da');
INSERT INTO `dictionary` VALUES (95, NULL, 'every-day-indonesians-are-generating-175000-tons', 'en', 'Every day, Indonesians are generating 175,000 tons of waste. This caused Jakarta and many areas in Indonesia to suffer from landfill emergencies. Even the Bantar Gebang landfill that holds the residual waste of Jakarta residents is predicted to be overcap');
INSERT INTO `dictionary` VALUES (96, NULL, 'every-day-indonesians-are-generating-175000-tons', 'id', 'Setiap hari, orang Indonesia menghasilkan 175.000 ton limbah. Hal ini menyebabkan Jakarta dan banyak daerah di Indonesia menderita keadaan darurat TPA. Bahkan TPA Bantar Gebang yang memegang limbah sisa warga Jakarta diprediksi akan kelebihan kapasitas di');
INSERT INTO `dictionary` VALUES (97, NULL, 'waste-is-a-relative-term-that-can-be-applied-diffe', 'en', 'Waste is a relative term that can be applied differently to each person, especially inorganic waste. Once it is treated in the right way, inorganic waste can solve our problems on the scarcity of raw materials.<br>Through our Inorganic Waste Management (I');
INSERT INTO `dictionary` VALUES (98, NULL, 'waste-is-a-relative-term-that-can-be-applied-diffe', 'id', 'Limbah adalah istilah relatif yang dapat diterapkan secara berbeda untuk setiap orang, terutama sampah anorganik. Setelah itu diperlakukan dengan cara yang benar, sampah anorganik bisa memecahkan masalah kita pada kelangkaan bahan baku. <br> Melalui anorg');
INSERT INTO `dictionary` VALUES (99, NULL, 'waste-generation-during-an-event-is-inevitable-in', 'en', 'Waste generation during an event is inevitable. In a place where participants\' are allowed to take notes, to drink and eat, especially in a crowded event, it\'s not easy to make sure that everyone\'s taking their time and energy to be responsible for their ');
INSERT INTO `dictionary` VALUES (100, NULL, 'waste-generation-during-an-event-is-inevitable-in', 'id', 'timbulan sampah selama acara tidak bisa dihindari. Di tempat di mana peserta diperbolehkan untuk mengambil catatan, untuk minum dan makan, terutama dalam acara ramai, itu tidak mudah untuk memastikan bahwa semua orang mengambil waktu dan energi mereka unt');
INSERT INTO `dictionary` VALUES (101, NULL, 'designed-to-increase-the-material-processing-from-', 'en', 'Designed to increase the material processing from brand-labeled waste throughout your companys business line. What we define as brand-labeled waste might resulted from the following:<br><ul><li>Production process that resulted in product defect, reject, o');
INSERT INTO `dictionary` VALUES (102, NULL, 'designed-to-increase-the-material-processing-from-', 'id', 'Dirancang untuk meningkatkan pengolahan bahan dari limbah merek-berlabel seluruh lini bisnis companys Anda. Apa yang kita definisikan sebagai merek-label limbah kekuatan hasil berikut ini: Situs <ul> <li> Proses produksi yang mengakibatkan cacat produk, m');
INSERT INTO `dictionary` VALUES (103, NULL, 'waste4change-provides-consultation-through-solid-w', 'en', 'Waste4Change provides consultation through Solid Waste Management (SWM) Research that aims to improve solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs in cities, regions, building, or any ot');
INSERT INTO `dictionary` VALUES (104, NULL, 'waste4change-provides-consultation-through-solid-w', 'id', 'Waste4Change menyediakan konsultasi melalui Pengelolaan Limbah Padat (SWM) Penelitian yang bertujuan untuk meningkatkan pengelolaan limbah padat dengan melakukan analisis menyeluruh dan mengidentifikasi paling sistem dan program yang tepat di kota, daerah');
INSERT INTO `dictionary` VALUES (105, NULL, 'according-to-recent-bps-statistics-waste-manageme', 'en', 'According to recent BPS statistics, waste management ranks the lowest when compared to other environmental issues (energy, air pollution, transportation).<br>At Waste4Change, we see this as a challenge to implement programs that encourages the community t');
INSERT INTO `dictionary` VALUES (106, NULL, 'according-to-recent-bps-statistics-waste-manageme', 'id', 'Menurut statistik BPS baru-baru ini, pengelolaan sampah peringkat terendah bila dibandingkan dengan isu-isu lain lingkungan (energi, polusi udara, transportasi). <br> Pada Waste4Change, kami melihat ini sebagai tantangan untuk melaksanakan program-program');
INSERT INTO `dictionary` VALUES (107, NULL, '3r-school-program-is-a-program-designed-to-encoura', 'en', '3R School Program is a program designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management system in schools. The aims of this program is to assist sch');
INSERT INTO `dictionary` VALUES (108, NULL, '3r-school-program-is-a-program-designed-to-encoura', 'id', 'Program Sekolah 3R adalah program yang dirancang untuk mendorong meningkatnya kesadaran warga sekolah untuk menerapkan Prinsip 3R (Reduce, Reuse, Recycle) untuk penciptaan sistem pengelolaan sampah yang bertanggung jawab di sekolah-sekolah. Tujuan dari pr');
INSERT INTO `dictionary` VALUES (109, NULL, 'akademi-bijak-sampah-akabis-is-an-education-mode', 'en', 'Akademi Bijak Sampah (AKABIS) is an education model created by Waste4Change to raise awareness on the importance of protecting the environment, especially in responsible waste management. If your institution is willing to experience first-hand field visit');
INSERT INTO `dictionary` VALUES (110, NULL, 'akademi-bijak-sampah-akabis-is-an-education-mode', 'id', 'Akademi Bijak Sampah (AKABIS) merupakan model pendidikan yang dibuat oleh Waste4Change untuk meningkatkan kesadaran tentang pentingnya menjaga lingkungan, terutama dalam pengelolaan sampah yang bertanggung jawab. Jika institusi Anda bersedia untuk mengala');
INSERT INTO `dictionary` VALUES (111, NULL, 'through-bsf-learning-center-you-will-receive-in-d', 'en', 'Through BSF Learning Center, you will receive in-depth information regarding organic waste processing using Black Soldier Flies (BSF), as well as the cultivation and breeding methods of BSF.');
INSERT INTO `dictionary` VALUES (112, NULL, 'through-bsf-learning-center-you-will-receive-in-d', 'id', 'Melalui BSF Learning Center, Anda akan menerima informasi mendalam mengenai sampah organik pengolahan menggunakan Lalat Soldier Hitam (BSF), serta budidaya dan metode pemuliaan dari BSF.');
INSERT INTO `dictionary` VALUES (113, NULL, '100-holistic-approach-on-waste-management', 'en', '100% holistic-approach on waste management');
INSERT INTO `dictionary` VALUES (114, NULL, '100-holistic-approach-on-waste-management', 'id', 'Zero waste to landfill');
INSERT INTO `dictionary` VALUES (115, NULL, 'support-and-in-line-with-perpres-no-97-tahun-2017', 'en', 'Support and in line with Perpres No. 97 Tahun 2017 (JAKSTRANAS)');
INSERT INTO `dictionary` VALUES (116, NULL, 'support-and-in-line-with-perpres-no-97-tahun-2017', 'id', 'Adding sustainable and environmental-friendly value to client\'s brand image');
INSERT INTO `dictionary` VALUES (117, NULL, 'increasing-staff’s-awareness-of-waste-issues', 'en', 'Increasing staff’s awareness of waste issues');
INSERT INTO `dictionary` VALUES (118, NULL, 'increasing-staff’s-awareness-of-waste-issues', 'id', '100% holistic-approach on waste management');
INSERT INTO `dictionary` VALUES (119, NULL, 'zero-waste-to-landfill', 'en', 'Zero waste to landfill');
INSERT INTO `dictionary` VALUES (120, NULL, 'zero-waste-to-landfill', 'id', 'Support and in line with Perpres No. 97 Tahun 2017 (JAKSTRANAS)');
INSERT INTO `dictionary` VALUES (121, NULL, 'adding-sustainable-and-environmental-friendly-valu', 'en', 'Adding sustainable and environmental-friendly value to client\'s brand image');
INSERT INTO `dictionary` VALUES (122, NULL, 'adding-sustainable-and-environmental-friendly-valu', 'id', 'Increasing staff’s awareness of waste issues');
INSERT INTO `dictionary` VALUES (123, NULL, '100-holistik-pendekatan-pengelolaan-sampah', 'en', '100% holistik-pendekatan pengelolaan sampah');
INSERT INTO `dictionary` VALUES (124, NULL, '100-holistik-pendekatan-pengelolaan-sampah', 'id', 'zero waste ke TPA');
INSERT INTO `dictionary` VALUES (125, NULL, 'dukungan-dan-sejalan-dengan-perpres-no-97-tahun-2', 'en', 'Dukungan dan sejalan dengan Perpres No. 97 Tahun 2017 (JAKSTRANAS)');
INSERT INTO `dictionary` VALUES (126, NULL, 'dukungan-dan-sejalan-dengan-perpres-no-97-tahun-2', 'id', 'Menambahkan nilai yang berkelanjutan dan ramah lingkungan untuk citra merek klien');
INSERT INTO `dictionary` VALUES (127, NULL, 'meningkatkan-kesadaran-staf-masalah-limbah', 'en', 'Meningkatkan kesadaran staf masalah limbah');
INSERT INTO `dictionary` VALUES (128, NULL, 'meningkatkan-kesadaran-staf-masalah-limbah', 'id', '100% holistik-pendekatan pengelolaan sampah');
INSERT INTO `dictionary` VALUES (129, NULL, 'zero-waste-ke-tpa', 'en', 'zero waste ke TPA');
INSERT INTO `dictionary` VALUES (130, NULL, 'zero-waste-ke-tpa', 'id', 'Dukungan dan sejalan dengan Perpres No. 97 Tahun 2017 (JAKSTRANAS)');
INSERT INTO `dictionary` VALUES (131, NULL, 'mengurangi-sampah-ke-tpa', 'en', 'Mengurangi sampah ke TPA');
INSERT INTO `dictionary` VALUES (132, NULL, 'mengurangi-sampah-ke-tpa', 'id', 'Dukungan dan sejalan dengan Perpres No. 97 Tahun 2017 (JAKSTRANAS)');
INSERT INTO `dictionary` VALUES (133, NULL, 'menambahkan-nilai-yang-berkelanjutan-dan-ramah-lin', 'en', 'Menambahkan nilai yang berkelanjutan dan ramah lingkungan untuk citra merek klien');
INSERT INTO `dictionary` VALUES (134, NULL, 'menambahkan-nilai-yang-berkelanjutan-dan-ramah-lin', 'id', 'Meningkatkan kesadaran staf masalah limbah');
INSERT INTO `dictionary` VALUES (135, NULL, 'limbah-journey-laporan', 'en', 'Limbah Journey Laporan');
INSERT INTO `dictionary` VALUES (136, NULL, 'limbah-journey-laporan', 'id', 'Bantuan untuk tingkat daur ulang meningkat');
INSERT INTO `dictionary` VALUES (137, NULL, 'reduce-waste-to-landfill', 'en', 'Reduce waste to landfill');
INSERT INTO `dictionary` VALUES (138, NULL, 'reduce-waste-to-landfill', 'id', 'Mengurangi sampah ke TPA');
INSERT INTO `dictionary` VALUES (139, NULL, 'prevent-your-brand-labelled-products-for-being-mis', 'en', 'Prevent your brand-labelled products for being misused, imitated or forged');
INSERT INTO `dictionary` VALUES (140, NULL, 'prevent-your-brand-labelled-products-for-being-mis', 'id', 'Mencegah merek produk berlabel Anda untuk disalahgunakan, ditiru atau dipalsukan');
INSERT INTO `dictionary` VALUES (141, NULL, 'help-to-increase-recycling-rate', 'en', 'Help to increase recycling rate');
INSERT INTO `dictionary` VALUES (142, NULL, 'help-to-increase-recycling-rate', 'id', 'Bantuan untuk tingkat daur ulang meningkat');
INSERT INTO `dictionary` VALUES (143, NULL, 'technical-operational-analysis-?', 'en', 'Technical Operational Analysis ?');
INSERT INTO `dictionary` VALUES (144, NULL, 'technical-operational-analysis-?', 'id', 'Analisis Operasional Teknis');
INSERT INTO `dictionary` VALUES (145, NULL, 'waste-audit?', 'en', 'Waste Audit?');
INSERT INTO `dictionary` VALUES (146, NULL, 'waste-audit?', 'id', 'limbah Audit');
INSERT INTO `dictionary` VALUES (147, NULL, 'financial-analysis-?', 'en', 'Financial Analysis ?');
INSERT INTO `dictionary` VALUES (148, NULL, 'financial-analysis-?', 'id', 'Analisis keuangan');
INSERT INTO `dictionary` VALUES (149, NULL, 'swm-regulatory-analysis-?', 'en', 'SWM Regulatory Analysis ?');
INSERT INTO `dictionary` VALUES (150, NULL, 'swm-regulatory-analysis-?', 'id', 'Analisis Regulasi SWM');
INSERT INTO `dictionary` VALUES (151, NULL, 'social-participation-analysis-?', 'en', 'Social Participation Analysis ?');
INSERT INTO `dictionary` VALUES (152, NULL, 'social-participation-analysis-?', 'id', 'Analisis Partisipasi sosial');
INSERT INTO `dictionary` VALUES (153, NULL, 'institutional-analysis?', 'en', 'Institutional Analysis?');
INSERT INTO `dictionary` VALUES (154, NULL, 'institutional-analysis?', 'id', 'Analisis Kelembagaan');
INSERT INTO `dictionary` VALUES (155, NULL, 'stakeholders-mapping-?', 'en', 'Stakeholders Mapping ?');
INSERT INTO `dictionary` VALUES (156, NULL, 'stakeholders-mapping-?', 'id', 'stakeholder Pemetaan');
INSERT INTO `dictionary` VALUES (157, NULL, 'recycling-value-chain-analysis-?', 'en', 'Recycling Value Chain Analysis, ?');
INSERT INTO `dictionary` VALUES (158, NULL, 'recycling-value-chain-analysis-?', 'id', 'Daur ulang Analisis Rantai Nilai,');
INSERT INTO `dictionary` VALUES (159, NULL, 'material-flow-analysis-?', 'en', 'Material Flow Analysis ?');
INSERT INTO `dictionary` VALUES (160, NULL, 'material-flow-analysis-?', 'id', 'Analisis Arus Material');
INSERT INTO `dictionary` VALUES (161, NULL, 'behavior-change-analysis-?', 'en', 'Behavior Change Analysis ?');
INSERT INTO `dictionary` VALUES (162, NULL, 'behavior-change-analysis-?', 'id', 'Analisis Perubahan perilaku');
INSERT INTO `dictionary` VALUES (163, NULL, 'marine-debris-study-?', 'en', 'Marine Debris Study ?');
INSERT INTO `dictionary` VALUES (164, NULL, 'marine-debris-study-?', 'id', 'Laut Puing Studi');
INSERT INTO `dictionary` VALUES (165, NULL, 'waste-to-energy-feasibility-study-and-due-diligenc', 'en', 'Waste to Energy Feasibility Study and Due Diligence?');
INSERT INTO `dictionary` VALUES (166, NULL, 'waste-to-energy-feasibility-study-and-due-diligenc', 'id', 'Limbah untuk Energi Studi Kelayakan dan Due Diligence');
INSERT INTO `dictionary` VALUES (167, NULL, 'trash-bag-designated-to-support-waste-segregation', 'en', 'Trash bag designated to support waste segregation');
INSERT INTO `dictionary` VALUES (168, NULL, 'trash-bag-designated-to-support-waste-segregation', 'id', 'kantong sampah yang ditunjuk untuk dukungan pemilahan sampah');
INSERT INTO `dictionary` VALUES (169, NULL, 'waste-collection-in-a-segregated-state', 'en', 'Waste collection in a segregated state');
INSERT INTO `dictionary` VALUES (170, NULL, 'waste-collection-in-a-segregated-state', 'id', 'Limbah koleksi dalam keadaan terpisah');
INSERT INTO `dictionary` VALUES (171, NULL, 'one-time-technical-induction-training', 'en', 'One-time Technical Induction Training');
INSERT INTO `dictionary` VALUES (172, NULL, 'one-time-technical-induction-training', 'id', 'Satu kali Teknis Induction Training');
INSERT INTO `dictionary` VALUES (173, NULL, 'waste-journey-report', 'en', 'Waste Journey Report');
INSERT INTO `dictionary` VALUES (174, NULL, 'waste-journey-report', 'id', 'Limbah Journey Laporan');
INSERT INTO `dictionary` VALUES (175, NULL, 'inorganic-trash-bag', 'en', 'Inorganic Trash Bag');
INSERT INTO `dictionary` VALUES (176, NULL, 'inorganic-trash-bag', 'id', 'Sampah anorganik Bag');
INSERT INTO `dictionary` VALUES (177, NULL, 'comprehensive-waste-management-system-in-the-distr', 'en', 'Comprehensive waste management system in the distribution line');
INSERT INTO `dictionary` VALUES (178, NULL, 'comprehensive-waste-management-system-in-the-distr', 'id', 'sistem pengelolaan sampah yang komprehensif dalam jalur distribusi');
INSERT INTO `dictionary` VALUES (179, NULL, 'responsible-waste-management-for-residual-waste-w', 'en', 'Responsible waste management for residual waste (waste that are difficult to be recycled) without sending it to the landfills (on demand)');
INSERT INTO `dictionary` VALUES (180, NULL, 'responsible-waste-management-for-residual-waste-w', 'id', 'pengelolaan sampah yang bertanggung jawab untuk limbah sisa (limbah yang sulit didaur ulang) tanpa mengirimnya ke tempat pembuangan sampah (on demand)');
INSERT INTO `dictionary` VALUES (181, NULL, 'increase-the-number-of-waste-that-can-be-further-p', 'en', 'Increase the number of waste that can be further processed through recycling method');
INSERT INTO `dictionary` VALUES (182, NULL, 'increase-the-number-of-waste-that-can-be-further-p', 'id', 'Meningkatkan jumlah sampah yang bisa diolah lebih lanjut melalui metode daur ulang');
INSERT INTO `dictionary` VALUES (183, NULL, 'waste-processing-in-w4c’s-material-recovery-facili', 'en', 'Waste processing in W4C’s Material Recovery Facility');
INSERT INTO `dictionary` VALUES (184, NULL, 'waste-processing-in-w4c’s-material-recovery-facili', 'id', 'Limbah pengolahan di Fasilitas Bahan Pemulihan W4C ini');
INSERT INTO `dictionary` VALUES (185, NULL, 'waste-segregation-by-client', 'en', 'Waste segregation by client');
INSERT INTO `dictionary` VALUES (186, NULL, 'waste-segregation-by-client', 'id', 'Buang segregasi oleh klien');
INSERT INTO `dictionary` VALUES (187, NULL, 'waste-storage-in-transfer-point/-tpst', 'en', 'Waste storage in transfer point/ TPST');
INSERT INTO `dictionary` VALUES (188, NULL, 'waste-storage-in-transfer-point/-tpst', 'id', 'Limbah penyimpanan di titik transfer / TPST');
INSERT INTO `dictionary` VALUES (189, NULL, 'segregated-waste-collection', 'en', 'Segregated waste collection');
INSERT INTO `dictionary` VALUES (190, NULL, 'segregated-waste-collection', 'id', 'pengumpulan sampah Segregated');
INSERT INTO `dictionary` VALUES (191, NULL, 'waste-processing-in-w4c’s-material-recivery-facili', 'en', 'Waste processing in W4C’s Material Recivery Facility');
INSERT INTO `dictionary` VALUES (192, NULL, 'waste-processing-in-w4c’s-material-recivery-facili', 'id', 'Limbah pengolahan di Fasilitas Material Recivery W4C ini');
INSERT INTO `dictionary` VALUES (193, NULL, 'residue-being-sent-to-the-landfill', 'en', 'Residue being sent to the landfill');
INSERT INTO `dictionary` VALUES (194, NULL, 'residue-being-sent-to-the-landfill', 'id', 'makhluk residu dikirim ke TPA');
INSERT INTO `dictionary` VALUES (195, NULL, 'swm-research-in-institutions', 'en', 'SWM RESEARCH IN INSTITUTIONS');
INSERT INTO `dictionary` VALUES (196, NULL, 'swm-research-in-institutions', 'id', 'SWM PENELITIAN DI LEMBAGA');
INSERT INTO `dictionary` VALUES (197, NULL, 'swm-research-in-municipalities', 'en', 'SWM RESEARCH IN MUNICIPALITIES');
INSERT INTO `dictionary` VALUES (198, NULL, 'swm-research-in-municipalities', 'id', 'KOTA SWM RESEARCH IN');
INSERT INTO `dictionary` VALUES (199, NULL, 'waste-to-energy-study', 'en', 'WASTE TO ENERGY STUDY');
INSERT INTO `dictionary` VALUES (200, NULL, 'waste-to-energy-study', 'id', 'STUDI LIMBAH UNTUK ENERGI');
INSERT INTO `dictionary` VALUES (201, NULL, 'value-chain-analysis', 'en', 'VALUE CHAIN ANALYSIS');
INSERT INTO `dictionary` VALUES (202, NULL, 'value-chain-analysis', 'id', 'RANTAI NILAI ANALISIS');
INSERT INTO `dictionary` VALUES (203, NULL, 'marine-debris-study', 'en', 'MARINE DEBRIS STUDY');
INSERT INTO `dictionary` VALUES (204, NULL, 'marine-debris-study', 'id', 'STUDI sampah laut');
INSERT INTO `dictionary` VALUES (205, NULL, 'community-assistance-in-institutions', 'en', 'COMMUNITY ASSISTANCE IN INSTITUTIONS');
INSERT INTO `dictionary` VALUES (206, NULL, 'community-assistance-in-institutions', 'id', 'COMMUNITY BANTUAN LEMBAGA');
INSERT INTO `dictionary` VALUES (207, NULL, 'community-assistance-in-municipalities', 'en', 'COMMUNITY ASSISTANCE IN MUNICIPALITIES');
INSERT INTO `dictionary` VALUES (208, NULL, 'community-assistance-in-municipalities', 'id', 'COMMUNITY BANTUAN KOTA');
INSERT INTO `dictionary` VALUES (209, NULL, 'community-assistance-in-tourism-sites', 'en', 'COMMUNITY ASSISTANCE IN TOURISM SITES');
INSERT INTO `dictionary` VALUES (210, NULL, 'community-assistance-in-tourism-sites', 'id', 'COMMUNITY BANTUAN SITUS PARIWISATA');
INSERT INTO `dictionary` VALUES (211, NULL, 'capacity-building', 'en', 'CAPACITY BUILDING');
INSERT INTO `dictionary` VALUES (212, NULL, 'capacity-building', 'id', 'KAPASITAS');
INSERT INTO `dictionary` VALUES (213, NULL, '3r-school-program', 'en', '3R SCHOOL PROGRAM');
INSERT INTO `dictionary` VALUES (214, NULL, '3r-school-program', 'id', '3R SCHOOL PROGRAM');
INSERT INTO `dictionary` VALUES (215, NULL, 'akabis-class-for-public', 'en', 'AKABIS CLASS FOR PUBLIC');
INSERT INTO `dictionary` VALUES (216, NULL, 'akabis-class-for-public', 'id', 'AKABIS KELAS UNTUK UMUM');
INSERT INTO `dictionary` VALUES (217, NULL, 'akabis-class-for-institution', 'en', 'AKABIS CLASS FOR INSTITUTION');
INSERT INTO `dictionary` VALUES (218, NULL, 'akabis-class-for-institution', 'id', 'AKABIS KELAS UNTUK LEMBAGA');
INSERT INTO `dictionary` VALUES (219, NULL, 'akabis-xperience-for-public', 'en', 'AKABIS XPERIENCE FOR PUBLIC');
INSERT INTO `dictionary` VALUES (220, NULL, 'akabis-xperience-for-public', 'id', 'AKABIS Xperience UNTUK UMUM');
INSERT INTO `dictionary` VALUES (221, NULL, 'akabis-xperience-for-institution', 'en', 'AKABIS XPERIENCE FOR INSTITUTION');
INSERT INTO `dictionary` VALUES (222, NULL, 'akabis-xperience-for-institution', 'id', 'AKABIS Xperience UNTUK LEMBAGA');
INSERT INTO `dictionary` VALUES (223, NULL, 'solid-waste-management-study-at-pelabuhan-indonesi', 'en', 'Solid Waste Management Study at Pelabuhan Indonesia II HQ?');
INSERT INTO `dictionary` VALUES (224, NULL, 'solid-waste-management-study-at-pelabuhan-indonesi', 'id', 'Solid Waste Management Design for Revitalisation at Jami’ Mosque and Kampung Beting Settlements in Pontianak');
INSERT INTO `dictionary` VALUES (225, NULL, 'feasibility-study-of-pyrolysis-for-plastic-packagi', 'en', 'Feasibility Study of Pyrolysis for Plastic Packaging in Lombok and Batam');
INSERT INTO `dictionary` VALUES (226, NULL, 'feasibility-study-of-pyrolysis-for-plastic-packagi', 'id', 'Waste Management Scouting Study – Stakeholders Mapping and Waste Flow in Jakarta and Surabaya');
INSERT INTO `dictionary` VALUES (227, NULL, 'riverine-plastic-monitoring-project-in-jakarta', 'en', 'Riverine Plastic Monitoring Project in Jakarta');
INSERT INTO `dictionary` VALUES (228, NULL, 'riverine-plastic-monitoring-project-in-jakarta', 'id', '3R Program Suralaya');
INSERT INTO `dictionary` VALUES (229, NULL, 'tps-3r-advisory', 'en', 'TPS 3R Advisory');
INSERT INTO `dictionary` VALUES (230, NULL, 'tps-3r-advisory', 'id', 'Ecoranger in Pulau Merah Banyuwangi');
INSERT INTO `dictionary` VALUES (231, NULL, 'capacity-building-in-indonesia’s-frontline-territo', 'en', 'Capacity Building in Indonesia’s Frontline Territories');
INSERT INTO `dictionary` VALUES (232, NULL, 'capacity-building-in-indonesia’s-frontline-territo', 'id', '3R Green School');
INSERT INTO `dictionary` VALUES (233, NULL, 'akabis-class-for-students-of-binus-school-al-izha', 'en', 'AKABIS-CLASS for Students of Binus School, Al-Izhar High School and SMKN 3 Bekasi');
INSERT INTO `dictionary` VALUES (234, NULL, 'akabis-class-for-students-of-binus-school-al-izha', 'id', 'AKABIS-CLASS for The Embassy of Finland - Jakarta');
INSERT INTO `dictionary` VALUES (235, NULL, 'akabis-xperience-for-yseali', 'en', 'AKABIS-XPERIENCE for YSEALI');
INSERT INTO `dictionary` VALUES (236, NULL, 'akabis-xperience-for-yseali', 'id', 'AKABIS-XPERIENCE for World Bank Jakarta');
INSERT INTO `dictionary` VALUES (237, NULL, 'studi-pengelolaan-sampah-di-pelabuhan-indonesia-ii', 'en', 'Studi Pengelolaan Sampah di Pelabuhan Indonesia II HQ');
INSERT INTO `dictionary` VALUES (238, NULL, 'studi-pengelolaan-sampah-di-pelabuhan-indonesia-ii', 'id', 'Desain Pengelolaan Sampah Revitalisasi di Jami’Masjid dan Kampung Beting Pemukiman di Pontianak');
INSERT INTO `dictionary` VALUES (239, NULL, 'studi-kelayakan-pirolisis-untuk-kemasan-plastik-di', 'en', 'Studi Kelayakan Pirolisis untuk Kemasan Plastik di Lombok dan Batam');
INSERT INTO `dictionary` VALUES (240, NULL, 'studi-kelayakan-pirolisis-untuk-kemasan-plastik-di', 'id', 'Limbah Manajemen Pramuka Studi - Stakeholder Mapping dan Aliran Limbah di Jakarta dan Surabaya');
INSERT INTO `dictionary` VALUES (241, NULL, 'sungai-plastik-pemantauan-proyek-di-jakarta', 'en', 'Sungai Plastik Pemantauan Proyek di Jakarta');
INSERT INTO `dictionary` VALUES (242, NULL, 'sungai-plastik-pemantauan-proyek-di-jakarta', 'id', '3R Program Suralaya');
INSERT INTO `dictionary` VALUES (243, NULL, 'tps-3r-penasehat', 'en', 'TPS 3R Penasehat');
INSERT INTO `dictionary` VALUES (244, NULL, 'tps-3r-penasehat', 'id', 'Ecoranger di Pulau Merah Banyuwangi');
INSERT INTO `dictionary` VALUES (245, NULL, 'kapasitas-di-frontline-teritorial-di-indonesia', 'en', 'Kapasitas di Frontline Teritorial di Indonesia');
INSERT INTO `dictionary` VALUES (246, NULL, 'kapasitas-di-frontline-teritorial-di-indonesia', 'id', '3R Green School');
INSERT INTO `dictionary` VALUES (247, NULL, 'akabis-class-untuk-mahasiswa-binus-school-al-izha', 'en', 'AKABIS-CLASS untuk Mahasiswa Binus School, Al-Izhar Sekolah Tinggi dan SMKN 3 Bekasi');
INSERT INTO `dictionary` VALUES (248, NULL, 'akabis-class-untuk-mahasiswa-binus-school-al-izha', 'id', 'AKABIS-CLASS untuk The Kedutaan Finlandia - Jakarta');
INSERT INTO `dictionary` VALUES (249, NULL, 'akabis-xperience-untuk-yseali', 'en', 'AKABIS-Xperience untuk YSEALI');
INSERT INTO `dictionary` VALUES (250, NULL, 'akabis-xperience-untuk-yseali', 'id', 'AKABIS-Xperience untuk Bank Dunia Jakarta');
INSERT INTO `dictionary` VALUES (251, NULL, 'lorem-ipsum', 'en', 'Lorem Ipsum');
INSERT INTO `dictionary` VALUES (252, NULL, 'lorem-ipsum', 'id', 'Lorem Ipsum');
INSERT INTO `dictionary` VALUES (253, NULL, 'welcome', 'en', 'Welcome');
INSERT INTO `dictionary` VALUES (254, NULL, 'welcome', 'id', 'Selamat datang');
INSERT INTO `dictionary` VALUES (255, NULL, 'our-achievement', 'en', 'Our Achievement');
INSERT INTO `dictionary` VALUES (256, NULL, 'our-achievement', 'id', 'Prestasi kami');
INSERT INTO `dictionary` VALUES (257, NULL, 'about', 'en', 'About');
INSERT INTO `dictionary` VALUES (258, NULL, 'about', 'id', 'Tentang');
INSERT INTO `dictionary` VALUES (259, NULL, 'activities', 'en', 'Activities');
INSERT INTO `dictionary` VALUES (260, NULL, 'activities', 'id', 'Kegiatan');
INSERT INTO `dictionary` VALUES (261, NULL, 'benefit', 'en', 'Benefit');
INSERT INTO `dictionary` VALUES (262, NULL, 'benefit', 'id', 'Manfaat');
INSERT INTO `dictionary` VALUES (263, NULL, 'expertise-and-experience', 'en', 'Expertise And Experience');
INSERT INTO `dictionary` VALUES (264, NULL, 'expertise-and-experience', 'id', 'Keahlian Dan Pengalaman');
INSERT INTO `dictionary` VALUES (265, NULL, 'what-you-get', 'en', 'What You Get');
INSERT INTO `dictionary` VALUES (266, NULL, 'what-you-get', 'id', 'Apa yang kau dapatkan');
INSERT INTO `dictionary` VALUES (267, NULL, 'waste-flow', 'en', 'Waste Flow');
INSERT INTO `dictionary` VALUES (268, NULL, 'waste-flow', 'id', 'Arus limbah');
INSERT INTO `dictionary` VALUES (269, NULL, 'portofolio-highlight', 'en', 'Portofolio Highlight');
INSERT INTO `dictionary` VALUES (270, NULL, 'portofolio-highlight', 'id', 'portofolio Highlight');
INSERT INTO `dictionary` VALUES (271, NULL, 'project-hightlight', 'en', 'Project Hightlight');
INSERT INTO `dictionary` VALUES (272, NULL, 'project-hightlight', 'id', 'proyek Hightlight');
INSERT INTO `dictionary` VALUES (273, NULL, 'our-client', 'en', 'Our Client');
INSERT INTO `dictionary` VALUES (274, NULL, 'our-client', 'id', 'Klien kami');
INSERT INTO `dictionary` VALUES (275, NULL, 'recomended-for', 'en', 'Recomended For');
INSERT INTO `dictionary` VALUES (276, NULL, 'recomended-for', 'id', 'Recomended Untuk');
INSERT INTO `dictionary` VALUES (277, NULL, 'our-coverage', 'en', 'Our Coverage');
INSERT INTO `dictionary` VALUES (278, NULL, 'our-coverage', 'id', 'Cakupan kami');
INSERT INTO `dictionary` VALUES (279, NULL, 'cta', 'en', 'CTA');
INSERT INTO `dictionary` VALUES (280, NULL, 'cta', 'id', 'CTA');
INSERT INTO `dictionary` VALUES (281, NULL, 'expertise-and-experiences', 'en', 'Expertise and Experiences');
INSERT INTO `dictionary` VALUES (282, NULL, 'expertise-and-experiences', 'id', 'Keahlian dan Pengalaman');
INSERT INTO `dictionary` VALUES (283, NULL, 'highlight', 'en', 'Highlight');
INSERT INTO `dictionary` VALUES (284, NULL, 'highlight', 'id', 'Menyoroti');
INSERT INTO `dictionary` VALUES (285, NULL, 'client', 'en', 'Client');
INSERT INTO `dictionary` VALUES (286, NULL, 'client', 'id', 'Klien');
INSERT INTO `dictionary` VALUES (287, NULL, 'coverage', 'en', 'Coverage');
INSERT INTO `dictionary` VALUES (288, NULL, 'coverage', 'id', 'liputan');
INSERT INTO `dictionary` VALUES (289, NULL, 'responsible-waste-management', 'en', 'Responsible Waste Management');
INSERT INTO `dictionary` VALUES (290, NULL, 'responsible-waste-management', 'id', 'Pengelolaan Limbah bertanggung jawab');
INSERT INTO `dictionary` VALUES (291, NULL, 'extended-producer-responsibility', 'en', 'Extended Producer Responsibility');
INSERT INTO `dictionary` VALUES (292, NULL, 'extended-producer-responsibility', 'id', 'Extended Producer Responsibility');
INSERT INTO `dictionary` VALUES (293, NULL, 'solid-waste-management-research', 'en', 'Solid Waste Management Research');
INSERT INTO `dictionary` VALUES (294, NULL, 'solid-waste-management-research', 'id', 'Penelitian Pengelolaan Limbah Padat');
INSERT INTO `dictionary` VALUES (295, NULL, 'community-development', 'en', 'Community Development');
INSERT INTO `dictionary` VALUES (296, NULL, 'community-development', 'id', 'Pengembangan masyarakat');
INSERT INTO `dictionary` VALUES (297, NULL, 'training', 'en', 'Training');
INSERT INTO `dictionary` VALUES (298, NULL, 'training', 'id', 'Latihan');
INSERT INTO `dictionary` VALUES (299, NULL, 'general', 'en', 'General');
INSERT INTO `dictionary` VALUES (300, NULL, 'general', 'id', 'Umum');

-- ----------------------------
-- Table structure for dictionary_type
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_type`;
CREATE TABLE `dictionary_type`  (
  `dictionary_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `dictionary_type_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`dictionary_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for expertise
-- ----------------------------
DROP TABLE IF EXISTS `expertise`;
CREATE TABLE `expertise`  (
  `expertise_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `expertise_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `expertise_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`expertise_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of expertise
-- ----------------------------
INSERT INTO `expertise` VALUES (2, 6, 'technical-operational-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (3, 6, 'waste-audit?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (4, 6, 'financial-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (5, 6, 'swm-regulatory-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (6, 6, 'social-participation-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (7, 6, 'institutional-analysis?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (8, 6, 'stakeholders-mapping-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (9, 6, 'recycling-value-chain-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (10, 6, 'material-flow-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (11, 6, 'behavior-change-analysis-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (12, 6, 'marine-debris-study-?', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);
INSERT INTO `expertise` VALUES (13, 6, 'waste-to-energy-feasibility-study-and-due-diligenc', NULL, '2019-11-24 03:25:37', '2019-11-24 03:25:37', NULL);

-- ----------------------------
-- Table structure for facility
-- ----------------------------
DROP TABLE IF EXISTS `facility`;
CREATE TABLE `facility`  (
  `facility_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `facility_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `facility_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`facility_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of facility
-- ----------------------------
INSERT INTO `facility` VALUES (1, 1, 'trash-bag-designated-to-support-waste-segregation', 'bin.png', '2019-11-19 09:09:42', NULL, '2019-11-21 06:14:34');
INSERT INTO `facility` VALUES (2, 1, 'waste-collection-in-a-segregated-state', 'marker.png', '2019-11-19 09:09:42', NULL, '2019-11-21 06:14:46');
INSERT INTO `facility` VALUES (3, 1, 'one-time-technical-induction-training', 'megaphone.png', '2019-11-19 09:09:42', NULL, '2019-11-21 06:14:52');
INSERT INTO `facility` VALUES (4, 1, 'waste-journey-report', 'report.png', '2019-11-19 09:09:42', NULL, '2019-11-21 06:15:00');
INSERT INTO `facility` VALUES (5, 2, 'trash-bag-designated-to-support-waste-segregation', 'bin.png', '2019-11-19 09:09:42', NULL, '2019-11-24 14:43:14');
INSERT INTO `facility` VALUES (6, 2, 'waste-collection-in-a-segregated-state', 'marker.png', '2019-11-19 09:09:42', NULL, '2019-11-24 14:43:14');
INSERT INTO `facility` VALUES (7, 2, 'one-time-technical-induction-training', 'megaphone.png', '2019-11-19 09:09:42', NULL, '2019-11-24 14:43:14');
INSERT INTO `facility` VALUES (8, 2, 'waste-journey-report', 'report.png', '2019-11-19 09:09:42', NULL, '2019-11-24 14:43:14');
INSERT INTO `facility` VALUES (9, 3, 'inorganic-trash-bag', 'bin.png', '2019-11-19 09:09:42', NULL, '2019-11-25 22:44:07');
INSERT INTO `facility` VALUES (10, 3, 'waste-collection-in-a-segregated-state', 'marker.png', '2019-11-19 09:09:42', NULL, '2019-11-25 22:44:07');
INSERT INTO `facility` VALUES (11, 3, 'one-time-technical-induction-training', 'megaphone.png', '2019-11-19 09:09:42', NULL, '2019-11-25 22:44:07');
INSERT INTO `facility` VALUES (12, 3, 'waste-journey-report', 'report.png', '2019-11-19 09:09:42', NULL, '2019-11-25 22:44:07');
INSERT INTO `facility` VALUES (13, 4, 'trash-bag-designated-to-support-waste-segregation', 'bin.png', '2019-11-19 09:09:42', NULL, '2019-11-25 22:44:07');
INSERT INTO `facility` VALUES (14, 4, 'waste-collection-in-a-segregated-state', 'marker.png', '2019-11-19 09:09:42', NULL, '2019-11-25 22:44:07');
INSERT INTO `facility` VALUES (15, 4, 'waste-journey-report', 'megaphone.png', '2019-11-19 09:09:42', NULL, '2019-11-25 22:44:07');
INSERT INTO `facility` VALUES (16, 5, 'comprehensive-waste-management-system-in-the-distr', 'report.png', '2019-11-19 09:09:42', NULL, '2019-11-25 22:44:07');
INSERT INTO `facility` VALUES (17, 5, 'responsible-waste-management-for-residual-waste-w', 'megaphone.png', '2019-11-19 09:09:42', NULL, '2019-11-25 22:48:49');
INSERT INTO `facility` VALUES (18, 5, 'increase-the-number-of-waste-that-can-be-further-p', 'report.png', '2019-11-19 09:09:42', NULL, '2019-11-25 22:48:49');

-- ----------------------------
-- Table structure for flow
-- ----------------------------
DROP TABLE IF EXISTS `flow`;
CREATE TABLE `flow`  (
  `flow_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `flow_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `flow_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`flow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of flow
-- ----------------------------
INSERT INTO `flow` VALUES (1, 1, 'waste-segregation-by-client', 'wasteflow-1.png', '2019-11-19 09:10:01', '2019-11-27 22:41:14', NULL);
INSERT INTO `flow` VALUES (2, 1, 'waste-storage-in-transfer-point/-tpst', 'wasteflow-2.png', '2019-11-19 09:10:01', '2019-11-27 22:41:23', NULL);
INSERT INTO `flow` VALUES (3, 1, 'segregated-waste-collection', 'wasteflow-3.png', '2019-11-19 09:10:01', '2019-11-27 22:41:33', NULL);
INSERT INTO `flow` VALUES (4, 1, 'waste-processing-in-w4c’s-material-recovery-facili', 'wasteflow-4.png', '2019-11-19 09:10:01', '2019-11-27 22:41:43', NULL);
INSERT INTO `flow` VALUES (5, 1, 'residue-being-sent-to-the-landfill', 'wasteflow-5.png', '2019-11-19 09:10:01', '2019-11-27 22:41:52', NULL);
INSERT INTO `flow` VALUES (6, 2, 'waste-segregation-by-client', 'wasteflow-1.png', '2019-11-19 09:10:01', '2019-11-27 22:41:14', NULL);
INSERT INTO `flow` VALUES (7, 2, 'waste-storage-in-transfer-point/-tpst', 'wasteflow-2.png', '2019-11-19 09:10:01', '2019-11-27 22:41:23', NULL);
INSERT INTO `flow` VALUES (8, 2, 'segregated-waste-collection', 'wasteflow-3.png', '2019-11-19 09:10:01', '2019-11-27 22:41:33', NULL);
INSERT INTO `flow` VALUES (9, 2, 'waste-processing-in-w4c’s-material-recovery-facili', 'wasteflow-4.png', '2019-11-19 09:10:01', '2019-11-27 22:41:43', NULL);
INSERT INTO `flow` VALUES (10, 2, 'residue-being-sent-to-the-landfill', 'wasteflow-5.png', '2019-11-19 09:10:01', '2019-11-27 22:41:52', NULL);
INSERT INTO `flow` VALUES (11, 3, 'waste-segregation-by-client', 'wasteflow-1.png', '2019-11-19 09:10:01', '2019-11-27 22:41:14', NULL);
INSERT INTO `flow` VALUES (12, 3, 'waste-storage-in-transfer-point/-tpst', 'wasteflow-2.png', '2019-11-19 09:10:01', '2019-11-27 22:41:23', NULL);
INSERT INTO `flow` VALUES (13, 3, 'segregated-waste-collection', 'wasteflow-3.png', '2019-11-19 09:10:01', '2019-11-27 22:41:33', NULL);
INSERT INTO `flow` VALUES (14, 3, 'waste-processing-in-w4c’s-material-recivery-facili', 'wasteflow-4.png', '2019-11-19 09:10:01', '2019-11-27 22:41:43', NULL);
INSERT INTO `flow` VALUES (15, 3, 'residue-being-sent-to-the-landfill', 'wasteflow-5.png', '2019-11-19 09:10:01', '2019-11-27 22:41:52', NULL);
INSERT INTO `flow` VALUES (16, 4, 'waste-segregation-by-client', 'wasteflow-1.png', '2019-11-19 09:10:01', '2019-11-27 22:41:14', NULL);
INSERT INTO `flow` VALUES (17, 4, 'waste-storage-in-transfer-point/-tpst', 'wasteflow-2.png', '2019-11-19 09:10:01', '2019-11-27 22:41:23', NULL);
INSERT INTO `flow` VALUES (18, 4, 'segregated-waste-collection', 'wasteflow-3.png', '2019-11-19 09:10:01', '2019-11-27 22:41:33', NULL);
INSERT INTO `flow` VALUES (19, 4, 'waste-processing-in-w4c’s-material-recivery-facili', 'wasteflow-4.png', '2019-11-19 09:10:01', '2019-11-27 22:41:43', NULL);
INSERT INTO `flow` VALUES (20, 4, 'residue-being-sent-to-the-landfill', 'wasteflow-5.png', '2019-11-19 09:10:01', '2019-11-27 22:41:52', NULL);
INSERT INTO `flow` VALUES (21, 5, 'waste-segregation-by-client', 'wasteflow-1.png', '2019-11-19 09:10:01', '2019-11-27 22:41:14', NULL);
INSERT INTO `flow` VALUES (22, 5, 'waste-storage-in-transfer-point/-tpst', 'wasteflow-2.png', '2019-11-19 09:10:01', '2019-11-27 22:41:23', NULL);
INSERT INTO `flow` VALUES (23, 5, 'segregated-waste-collection', 'wasteflow-3.png', '2019-11-19 09:10:01', '2019-11-27 22:41:33', NULL);
INSERT INTO `flow` VALUES (24, 5, 'waste-processing-in-w4c’s-material-recivery-facili', 'wasteflow-4.png', '2019-11-19 09:10:01', '2019-11-27 22:41:43', NULL);
INSERT INTO `flow` VALUES (25, 5, 'residue-being-sent-to-the-landfill', 'wasteflow-5.png', '2019-11-19 09:10:01', '2019-11-27 22:41:52', NULL);

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language`  (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `language_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `language_flag` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`language_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES (1, 'id', 'Indonesia', 'assets/img/icons/flag_indonesia.png', '2019-11-16 18:56:12', '2019-11-16 18:56:30', NULL);
INSERT INTO `language` VALUES (2, 'en', 'English', 'assets/img/icons/flag_english.png', '2019-11-16 18:56:53', '2019-11-16 18:56:59', NULL);

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page`  (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `page_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `publised_at` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`page_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for photofolio
-- ----------------------------
DROP TABLE IF EXISTS `photofolio`;
CREATE TABLE `photofolio`  (
  `photofolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `photofolio_client` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_client_logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_client_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_start` date NULL DEFAULT NULL,
  `photofolio_end` date NULL DEFAULT NULL,
  `photofolio_duration` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_collection_schedulle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_waste_collected` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_audience` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_mou` date NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`photofolio_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of photofolio
-- ----------------------------
INSERT INTO `photofolio` VALUES (2, 1, 'Vida Bekasi', NULL, 'Jl. Tirta Utama No. 1, Bumiwedari, Bantar Gebang, Kota Bekasi, Jawa Barat 1715', NULL, NULL, NULL, NULL, '3 days per week', '112.000 kg/month', NULL, '2014-01-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (3, 1, 'Wisma Barito', NULL, 'Jl. Letjen. S. Parman Kav. 62-63, Slipi, Jakarta Barat, DKI Jakarta 11410', NULL, NULL, NULL, '1 year', '3 days per week', '6.922 kg/month', NULL, '2019-02-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (4, 2, 'Ikea Alam Sutra', NULL, 'l. Jalur Sutera Boulevard Kota Tangerang, Banten', NULL, NULL, NULL, '1 year', 'Every day', '25.000 kg/month', NULL, '2018-04-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (5, 2, 'Unilever Head Office', NULL, 'Grha Unilever, Green Office Park Kav 3, Jl. BSD Boulevard Barat, BSD City, Tangerang 15345', NULL, NULL, NULL, '3 year', '3 days per week', '4.698 kg/month', NULL, '2016-12-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (6, 3, 'Jakarta Land', NULL, 'World Trade Centre – WTC 5, 8th floor, Jl. Jend. Sudirman Kav. 29 Jakarta 12920', NULL, NULL, NULL, '1 year', '1 day per week', '192 kg/month', NULL, '2018-04-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (7, 3, 'Kementrian Koordinator Bidang Kemaritiman', NULL, 'Gedung BPPT 1, Lantai 3, Jalan M.H. Thamrin No. 8, Menteng, RT. 2 / RW. 1, Kb. Sirih, Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10340', NULL, NULL, NULL, '1 year', '1 days per week', '82 kg/month', NULL, '2018-04-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (8, 4, 'Playfest 2019', NULL, NULL, NULL, '2019-08-24', '2019-08-25', NULL, NULL, '1.141 kg', '6000', NULL, '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (9, 4, 'DBS Bank Family Gathering', NULL, NULL, NULL, '2019-08-28', NULL, NULL, NULL, '328,6 kg', '4500', NULL, '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (10, 5, 'The Body Shop - Bring Back Our Bottle (BBOB) Program', NULL, NULL, NULL, NULL, NULL, '2015 until present', NULL, NULL, NULL, NULL, '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (11, 5, 'Gojek', NULL, NULL, NULL, NULL, NULL, '2015 until present', NULL, NULL, NULL, NULL, '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `project_id` int(11) NULL DEFAULT NULL,
  `service_id` int(11) NULL DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project_client` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project_category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (NULL, 6, 'swm-research-in-institutions', 'solid-waste-management-study-at-pelabuhan-indonesi', 'PT. Pelabuhan Indonesia II (Persero)', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 6, 'swm-research-in-municipalities', 'solid-waste-management-study-at-pelabuhan-indonesi', 'Ministry of Public Works and Housings', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 6, 'waste-to-energy-study', 'feasibility-study-of-pyrolysis-for-plastic-packagi', 'GA Circular', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 6, 'value-chain-analysis', 'feasibility-study-of-pyrolysis-for-plastic-packagi', 'PT. Deloitte Konsultan Indonesia', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 6, 'marine-debris-study', 'riverine-plastic-monitoring-project-in-jakarta', 'The Ocean Cleanup', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 7, 'community-assistance-in-institutions', 'riverine-plastic-monitoring-project-in-jakarta', 'T. Indonesia Power Up Suralaya', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 7, 'community-assistance-in-municipalities', 'tps-3r-advisory', 'PT. Sarana Multi Daya, PT. Multi Karadiguna Jasa, PT. Prismamita Cipta Kreasi', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 7, 'community-assistance-in-tourism-sites', 'tps-3r-advisory', 'Greeneration Foundation and Coca Cola Foundation Indonesia', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 7, 'capacity-building', 'capacity-building-in-indonesia’s-frontline-territo', 'Ministry of Public Works and Housing', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 8, '3r-school-program', 'capacity-building-in-indonesia’s-frontline-territo', 'Yayasan Unilever Indonesia', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 9, 'akabis-class-for-public', 'akabis-class-for-students-of-binus-school-al-izha', 'PT. Epson Indonesia', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 9, 'akabis-class-for-institution', 'akabis-class-for-students-of-binus-school-al-izha', 'Embassy of Finland', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 9, 'akabis-xperience-for-public', 'akabis-xperience-for-yseali', 'YSEALI (Young Southeast Asian Leader Initiative) Organized by Divers Clean Action and US Embassy?', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);
INSERT INTO `project` VALUES (NULL, 9, 'akabis-xperience-for-institution', 'akabis-xperience-for-yseali', 'World Bank', NULL, '2019-11-24 03:27:02', '2019-11-24 03:27:02', NULL);

-- ----------------------------
-- Table structure for recomendation
-- ----------------------------
DROP TABLE IF EXISTS `recomendation`;
CREATE TABLE `recomendation`  (
  `recomendation_id` int(11) NOT NULL AUTO_INCREMENT,
  `recomendation_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `recomendation_color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `recomendation_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`recomendation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of recomendation
-- ----------------------------
INSERT INTO `recomendation` VALUES (1, 'brand', '#a24495', 'icon-real-estate-014 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (2, 'bussiness-actor', '#a29244', 'icon-real-estate-014 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (3, 'company', '#a24444', 'icon-hotel-restaurant-172 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (4, 'companys-csr', '#a24444', 'icon-medical-022 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (5, 'consultant', '#a29244', 'icon-real-estate-014 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (6, 'distributor', '#a24444', 'icon-real-estate-088 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (7, 'event', '#a24495', 'icon-real-estate-014 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (8, 'foundation', '#68a244', 'icon-real-estate-014 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (9, 'government', '#68a244', 'icon-real-estate-014 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (10, 'hotels', '#4489a2', 'icon-hotel-restaurant-001 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (11, 'individual', '#68a244', 'icon-real-estate-014 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (12, 'office-blocks', '#68a244', 'icon-real-estate-018 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (13, 'product', '#a24495', 'icon-real-estate-014 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (14, 'researcher', '#a29244', 'icon-medical-013 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (15, 'residential-area/housing', '#4489a2', 'icon-real-estate-003  u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (16, 'restaurants', '#a24444', 'icon-hotel-restaurant-171 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (17, 'school', '#4489a2', 'icon-education-001 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (18, 'hse-division', '#4489a2', 'icon-real-estate-003  u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (19, 'sustainability-division', '#a24444', 'icon-hotel-restaurant-171 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);
INSERT INTO `recomendation` VALUES (20, 'csr-division', '#4489a2', 'icon-education-001 u-line-icon-pro', '2019-11-24 03:28:16', '2019-11-24 03:28:16', NULL);

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `section_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `section_menu_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`section_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, 'welcome', 'welcome', '', '2019-11-24 03:28:01', '2019-11-26 01:07:10', NULL);
INSERT INTO `section` VALUES (2, 'our-achievement', 'our-achievement', '', '2019-11-24 03:28:01', '2019-11-26 01:07:10', NULL);
INSERT INTO `section` VALUES (3, 'about', 'about', 'about', '2019-11-24 03:28:01', '2019-11-26 01:17:37', NULL);
INSERT INTO `section` VALUES (4, 'activities', 'activities', 'activities', '2019-11-24 03:28:01', '2019-11-26 01:17:37', NULL);
INSERT INTO `section` VALUES (5, 'benefit', 'benefit', 'benefit', '2019-11-24 03:28:01', '2019-11-26 01:17:37', NULL);
INSERT INTO `section` VALUES (6, 'expertise', 'expertise', 'expertise-and-experiences', '2019-11-24 03:28:01', '2019-11-26 01:17:45', NULL);
INSERT INTO `section` VALUES (7, 'what-you-get', 'what-you-get', 'what-you-get', '2019-11-24 03:28:01', '2019-11-26 01:17:54', NULL);
INSERT INTO `section` VALUES (8, 'waste-flow', 'waste-flow', 'waste-flow', '2019-11-24 03:28:01', '2019-11-26 01:17:54', NULL);
INSERT INTO `section` VALUES (9, 'photofolio-highlight', 'photofolio-highlight', 'highlight', '2019-11-24 03:28:01', '2019-11-26 01:17:59', NULL);
INSERT INTO `section` VALUES (10, 'project-highlight', 'project-highlight', 'highlight', '2019-11-24 03:28:01', '2019-11-26 01:18:00', NULL);
INSERT INTO `section` VALUES (11, 'our-client', 'our-client', 'client', '2019-11-24 03:28:01', '2019-11-26 01:18:03', NULL);
INSERT INTO `section` VALUES (12, 'recomended-for', 'recomended-for', 'recomended-for', '2019-11-24 03:28:01', '2019-11-26 01:18:06', NULL);
INSERT INTO `section` VALUES (13, 'our-coverage', 'our-coverage', 'coverage', '2019-11-24 03:28:01', '2019-11-26 01:18:12', NULL);
INSERT INTO `section` VALUES (14, 'cta', 'cta', '', '2019-11-24 03:28:01', '2019-11-26 01:07:10', NULL);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_category_id` int(11) NULL DEFAULT NULL,
  `service_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `service_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `service_slogan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_about` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_about_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_header_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_thumbnail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_page_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_join_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_proposal_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_portofolio_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `has_page` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_id`) USING BTREE,
  INDEX `fk_service_service_category_1`(`service_category_id`) USING BTREE,
  CONSTRAINT `fk_service_service_category_1` FOREIGN KEY (`service_category_id`) REFERENCES `service_category` (`service_category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 1, 'responsible-waste-management-basic', 'Responsible Waste Management - Basic', 'no-more-mixed-waste', 'a-100-holistic-waste-management-for-companies-bu', 'waste-generation-is-inevitable-its-not-easy-to-r', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/responsible-waste-management-basic', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSdydu6Ar9mGKppAI4V2fevcWkLSpTpiSwdbpv0moPU4-_o3NQ/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (2, 1, 'zero-waste-to-landfill', 'Zero Waste to Landfill', 'no-more-waste-that-end-up-in-landfills', 'take-an-active-part-in-preventing-our-local-landfi', 'every-day-indonesians-are-generating-175000-tons', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/zero-waste-to-landfill', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSemrcuqzCk4wFUtMPFFwLkJOsYSlCjoJ8GHCDdXcM7Or5YlQg/', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (3, 1, 'inorganic-waste-management', 'Inorganic Waste Management', 'from-waste-to-useful-materials', 'treat-your-inorganic-waste-the-right-way-and-make-', 'waste-is-a-relative-term-that-can-be-applied-diffe', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/inorganic-waste-management', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSfgzkfJXMhuTUO4sgwpkF1PINvH7_XNBrZ84PWJD6OqghV_Eg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (4, 1, 'event-waste-management', 'Event Waste Management', 'great-event-planned-their-waste-management-beforeh', 'through-the-placement-of-segregated-waste-bins-in-', 'waste-generation-during-an-event-is-inevitable-in', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/event-waste-management', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLScFEwvyBaouF85RuuJSQpDCmGmkIIf4Hby9uo6HrZHJVSRBvw', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (5, 2, 'in-store-recycling', 'In-Store Recycling', 'support-the-recycling-of-your-brand-labeled-waste', 'increase-the-material-processing-of-brand-labelled', 'designed-to-increase-the-material-processing-from-', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/in-store-recycling', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSd8QsQoYbyTb5-8dD6r5KUFCz9BhTmBvh1c2Lla2HdlrDHFQg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (6, 3, 'solid-waste-management-research', 'Solid Waste Management Research', 'research-and-planning-with-environment-in-mind', 'improve-your-solid-waste-management-by-conducting-', 'waste4change-provides-consultation-through-solid-w', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/solid-waste-management-research', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (7, 4, 'community-based-implementation', 'Community-Based Implementation', 'solid-effort-to-reduce-waste-generation-from-the-s', 'we-help-our-clients-to-implement-programs-that-enc', 'according-to-recent-bps-statistics-waste-manageme', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/community-based-implementation', 'https://waste4change.com/official/join', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (8, 4, '3r-school-program', '3R School Program', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'designed-to-encourage-the-increasing-awareness-of-', '3r-school-program-is-a-program-designed-to-encoura', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/3r-school-program', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLScmBjcHJhsI1OIOM-So0VQNhsbIGUJeKuovMe2QzVeYMnUU0g/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (9, 5, 'akabis-waste-management-academy', 'AKABIS (Waste Management Academy)', 'take-a-closer-look-at-waste-management-facts-and-s', 'waste-management-education-program-that-includes-a', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/akabis-waste-management-academy', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (10, 5, 'black-soldier-fly-learning-center', 'Black Soldier Fly Learning Center', 'effective-organic-waste-solution', 'receive-in-depth-information-regarding-organic-was', 'through-bsf-learning-center-you-will-receive-in-d', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/black-soldier-fly-learning-center', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSc7hGAdWLlFqt5qa38-7fMwA9Nsp2ev9lUk7Qi8Xwe_z3lYfg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (11, 5, 'black-soldier-fly-tools-products', 'Black Soldier Fly Tools & Products', '', 'we-provide-black-soldier-fly-larvae-that-is-high-i', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/black-soldier-fly-tools-products', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (12, 6, 'send-your-waste', 'Send Your Waste', '', 'send-your-inorganic-waste-to-waste4change-and-let-', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/send-your-waste', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (13, 6, 'dropbox', 'Dropbox', '', 'deposit-your-inorganic-waste-in-waste4changes-dro', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/dropbox', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (14, 6, 'sinergi-adesniatmurni-dan-gojek', 'Sinergi #AdesNiatMurni dan Gojek', '', 'send-your-used-pet-bottles-of-various-sizes-and-br', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/sinergi-adesniatmurni-dan-gojek', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (15, 6, 'merchant', 'Merchant', '', 'deposit-your-used-packaging-through-our-partners-t', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/merchant', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (16, 6, 'home-composting', 'Home Composting', '', 'process-your-organic-waste-at-home-with-waste4cha', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/official/service/home-composting', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);

-- ----------------------------
-- Table structure for service_category
-- ----------------------------
DROP TABLE IF EXISTS `service_category`;
CREATE TABLE `service_category`  (
  `service_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_target_id` int(11) NULL DEFAULT NULL,
  `service_category_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_category_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_category_id`) USING BTREE,
  INDEX `fk_service_category_service_for_1`(`service_target_id`) USING BTREE,
  CONSTRAINT `fk_service_category_service_for_1` FOREIGN KEY (`service_target_id`) REFERENCES `service_target` (`service_target_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_category
-- ----------------------------
INSERT INTO `service_category` VALUES (1, 1, 'responsible-waste-management', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL);
INSERT INTO `service_category` VALUES (2, 1, 'extended-producer-responsibility', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL);
INSERT INTO `service_category` VALUES (3, 1, 'solid-waste-management-research', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL);
INSERT INTO `service_category` VALUES (4, 1, 'community-development', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL);
INSERT INTO `service_category` VALUES (5, 1, 'training', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL);
INSERT INTO `service_category` VALUES (6, 2, 'general', '', '2019-11-16 18:52:03', '2019-11-24 07:52:36', NULL);

-- ----------------------------
-- Table structure for service_recomendation
-- ----------------------------
DROP TABLE IF EXISTS `service_recomendation`;
CREATE TABLE `service_recomendation`  (
  `service_recomendation_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `recomendation_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_recomendation_id`) USING BTREE,
  INDEX `fk_service_recomendation_service_1`(`service_id`) USING BTREE,
  CONSTRAINT `fk_service_recomendation_service_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_recomendation
-- ----------------------------
INSERT INTO `service_recomendation` VALUES (1, 1, 12, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL);
INSERT INTO `service_recomendation` VALUES (2, 1, 16, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL);
INSERT INTO `service_recomendation` VALUES (3, 1, 10, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL);
INSERT INTO `service_recomendation` VALUES (4, 1, 15, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL);
INSERT INTO `service_recomendation` VALUES (5, 2, 12, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL);
INSERT INTO `service_recomendation` VALUES (6, 2, 16, '2019-11-24 03:27:46', '2019-11-24 03:27:46', NULL);
INSERT INTO `service_recomendation` VALUES (7, 2, 10, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (8, 2, 15, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (9, 3, 12, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (10, 3, 16, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (11, 3, 10, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (12, 3, 15, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (13, 4, 1, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (14, 4, 7, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (15, 4, 10, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (16, 4, 12, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (17, 5, 6, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (18, 5, 1, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (19, 5, 13, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (20, 6, 18, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (21, 6, 19, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (22, 6, 20, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (23, 6, 9, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (24, 6, 5, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (25, 6, 15, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (26, 6, 12, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (27, 7, 18, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (28, 7, 19, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (29, 7, 20, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (30, 7, 9, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (31, 7, 5, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (32, 7, 15, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (33, 7, 12, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (34, 8, 9, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (35, 8, 5, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (36, 9, 4, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (37, 9, 8, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (38, 9, 3, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (39, 9, 17, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (40, 10, 2, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (41, 10, 14, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (42, 11, 2, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (43, 11, 14, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (44, 12, 11, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (45, 13, 11, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (46, 14, 11, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (47, 15, 11, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);
INSERT INTO `service_recomendation` VALUES (48, 16, 11, '2019-11-24 03:27:47', '2019-11-24 03:27:47', NULL);

-- ----------------------------
-- Table structure for service_section
-- ----------------------------
DROP TABLE IF EXISTS `service_section`;
CREATE TABLE `service_section`  (
  `service_section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NULL DEFAULT NULL,
  `service_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_section_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 225 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_section
-- ----------------------------
INSERT INTO `service_section` VALUES (1, 1, 1, '2019-11-24 03:19:46', '2019-11-24 03:19:59', NULL);
INSERT INTO `service_section` VALUES (2, 2, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (3, 3, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (4, 4, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (5, 5, 1, '2019-11-24 03:19:46', '2019-11-26 01:22:19', NULL);
INSERT INTO `service_section` VALUES (6, 6, 1, '2019-11-24 03:19:46', '2019-11-26 01:22:13', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (7, 7, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (8, 8, 1, '2019-11-24 03:19:46', '2019-11-26 01:48:18', NULL);
INSERT INTO `service_section` VALUES (9, 9, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (10, 10, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (11, 11, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (12, 12, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (13, 13, 1, '2019-11-24 03:19:46', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (14, 14, 1, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (15, 1, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (16, 2, 2, '2019-11-24 03:19:46', '2019-11-24 03:19:59', NULL);
INSERT INTO `service_section` VALUES (17, 3, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (18, 4, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (19, 5, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (20, 6, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (21, 7, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (22, 8, 2, '2019-11-24 03:19:46', '2019-11-26 01:23:00', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (23, 9, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (24, 10, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (25, 11, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (26, 12, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (27, 13, 2, '2019-11-24 03:19:46', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (28, 14, 2, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (29, 1, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (30, 2, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (31, 3, 3, '2019-11-24 03:19:46', '2019-11-24 03:19:59', NULL);
INSERT INTO `service_section` VALUES (32, 4, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (33, 5, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (34, 6, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (35, 7, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (36, 8, 3, '2019-11-24 03:19:46', '2019-11-26 01:23:02', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (37, 9, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (38, 10, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (39, 11, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (40, 12, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (41, 13, 3, '2019-11-24 03:19:46', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (42, 14, 3, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (43, 1, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (44, 2, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (45, 3, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (46, 4, 4, '2019-11-24 03:19:46', '2019-11-24 03:19:46', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (47, 5, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (48, 6, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (49, 7, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (50, 8, 4, '2019-11-24 03:19:46', '2019-11-26 01:23:05', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (51, 9, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (52, 10, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (53, 11, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (54, 12, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (55, 13, 4, '2019-11-24 03:19:46', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (56, 14, 4, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (57, 1, 5, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (58, 2, 5, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (59, 3, 5, '2019-11-24 03:19:46', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (60, 4, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (61, 5, 5, '2019-11-24 03:19:47', '2019-11-24 03:19:59', NULL);
INSERT INTO `service_section` VALUES (62, 6, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (63, 7, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (64, 8, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (65, 9, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (66, 10, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (67, 11, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (68, 12, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (69, 13, 5, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (70, 14, 5, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (71, 1, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (72, 2, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (73, 3, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (74, 4, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (75, 5, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (76, 6, 6, '2019-11-24 03:19:47', '2019-11-24 03:19:59', NULL);
INSERT INTO `service_section` VALUES (77, 7, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (78, 8, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (79, 9, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (80, 10, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (81, 11, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (82, 12, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (83, 13, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (84, 14, 6, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (85, 1, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (86, 2, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (87, 3, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (88, 4, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (89, 5, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (90, 6, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (91, 7, 7, '2019-11-24 03:19:47', '2019-11-24 03:19:59', NULL);
INSERT INTO `service_section` VALUES (92, 8, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (93, 9, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (94, 10, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (95, 11, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (96, 12, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (97, 13, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (98, 14, 7, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (99, 1, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (100, 2, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (101, 3, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (102, 4, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (103, 5, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (104, 6, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (105, 7, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (106, 8, 8, '2019-11-24 03:19:47', '2019-11-24 03:19:47', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (107, 9, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (108, 10, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (109, 11, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (110, 12, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (111, 13, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (112, 14, 8, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (113, 1, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (114, 2, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (115, 3, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (116, 4, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (117, 5, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (118, 6, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (119, 7, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (120, 8, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (121, 9, 9, '2019-11-24 03:19:47', '2019-11-24 03:19:47', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (122, 10, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (123, 11, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (124, 12, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (125, 13, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (126, 14, 9, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (127, 1, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (128, 2, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (129, 3, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (130, 4, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (131, 5, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (132, 6, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (133, 7, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (134, 8, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (135, 9, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (136, 10, 10, '2019-11-24 03:19:47', '2019-11-24 03:19:47', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (137, 11, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (138, 12, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (139, 13, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (140, 14, 10, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (141, 1, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (142, 2, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (143, 3, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (144, 4, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (145, 5, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (146, 6, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (147, 7, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (148, 8, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (149, 9, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (150, 10, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (151, 11, 11, '2019-11-24 03:19:47', '2019-11-24 03:19:58', NULL);
INSERT INTO `service_section` VALUES (152, 12, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (153, 13, 11, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (154, 14, 11, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (155, 1, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (156, 2, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (157, 3, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (158, 4, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (159, 5, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (160, 6, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (161, 7, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (162, 8, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (163, 9, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (164, 10, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (165, 11, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (166, 12, 12, '2019-11-24 03:19:47', '2019-11-24 03:19:58', NULL);
INSERT INTO `service_section` VALUES (167, 13, 12, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (168, 14, 12, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (169, 1, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (170, 2, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (171, 3, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (172, 4, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (173, 5, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (174, 6, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (175, 7, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (176, 8, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (177, 9, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (178, 10, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (179, 11, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (180, 12, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (181, 13, 13, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (182, 14, 13, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (183, 1, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (184, 2, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (185, 3, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (186, 4, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (187, 5, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (188, 6, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (189, 7, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (190, 8, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (191, 9, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (192, 10, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (193, 11, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (194, 12, 14, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (195, 13, 14, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (196, 14, 14, '2019-11-24 03:19:47', '2019-11-24 03:19:59', NULL);
INSERT INTO `service_section` VALUES (197, 1, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (198, 2, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (199, 3, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (200, 4, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (201, 5, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (202, 6, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (203, 7, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (204, 8, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (205, 9, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (206, 10, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (207, 11, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (208, 12, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (209, 13, 15, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (210, 14, 15, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (211, 1, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (212, 2, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (213, 3, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (214, 4, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (215, 5, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (216, 6, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (217, 7, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (218, 8, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (219, 9, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (220, 10, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (221, 11, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (222, 12, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);
INSERT INTO `service_section` VALUES (223, 13, 16, '2019-11-24 03:19:47', '2019-11-26 03:35:12', '2019-11-19 09:10:01');
INSERT INTO `service_section` VALUES (224, 14, 16, '2019-11-24 03:19:47', '2019-11-26 01:15:30', NULL);

-- ----------------------------
-- Table structure for service_target
-- ----------------------------
DROP TABLE IF EXISTS `service_target`;
CREATE TABLE `service_target`  (
  `service_target_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_target_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_target_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_target_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_target
-- ----------------------------
INSERT INTO `service_target` VALUES (1, 'company', 'icon-real-estate-066', '2019-11-16 20:18:11', '2019-11-16 20:18:34', NULL);
INSERT INTO `service_target` VALUES (2, 'individual', 'icon-real-estate-003', '2019-11-16 20:18:16', '2019-11-16 20:18:39', NULL);

-- ----------------------------
-- Table structure for testimoni
-- ----------------------------
DROP TABLE IF EXISTS `testimoni`;
CREATE TABLE `testimoni`  (
  `testimony_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `testimony_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimony_role` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimony_company` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimony_content` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimony_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`testimony_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
