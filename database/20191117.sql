/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : w4c_official

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 17/11/2019 04:17:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `dictionary_id` int(11) NOT NULL AUTO_INCREMENT,
  `dictionary_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `language_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dictionary_content` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dictionary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'a-100-holistic-waste-management-for-companies-bu', 'en', 'A 100% holistic waste management for companies, buildings, and businesses to reduce the number of waste that piles up in the landfill.');
INSERT INTO `dictionary` VALUES (2, 'a-100-holistic-waste-management-for-companies-bu', 'id', 'Sebuah pengelolaan limbah holistik 100% bagi perusahaan, bangunan, dan bisnis untuk mengurangi jumlah sampah yang menumpuk di TPA.');
INSERT INTO `dictionary` VALUES (3, 'take-an-active-part-in-preventing-our-local-landfi', 'en', 'Take an active part in preventing our local landfills from becoming overcapacity! Through our waste collection and waste recycling program: Zero Waste to Landfill, we will ensure that none of your waste ends up in the landfill!');
INSERT INTO `dictionary` VALUES (4, 'take-an-active-part-in-preventing-our-local-landfi', 'id', 'Mengambil bagian aktif dalam mencegah pembuangan sampah lokal kami dari menjadi kelebihan kapasitas! Melalui pengumpulan sampah dan limbah Program daur ulang: Zero Waste ke TPA, kami akan memastikan bahwa tidak ada limbah Anda berakhir di TPA!');
INSERT INTO `dictionary` VALUES (5, 'treat-your-inorganic-waste-the-right-way-and-make-', 'en', 'Treat your inorganic waste the right way and make sure that your inorganic waste are recycled and included in the sustainable circular system.');
INSERT INTO `dictionary` VALUES (6, 'treat-your-inorganic-waste-the-right-way-and-make-', 'id', 'Perlakukan sampah anorganik Anda dengan cara yang benar dan memastikan bahwa sampah anorganik Anda didaur ulang dan termasuk dalam sistem melingkar yang berkelanjutan.');
INSERT INTO `dictionary` VALUES (7, 'through-the-placement-of-segregated-waste-bins-in-', 'en', 'Through the placement of segregated waste bins in strategic places, as well as segregated waste collection for all of the waste that are produced during your event, we will help your event’s waste management to be more well-prepared and responsible!');
INSERT INTO `dictionary` VALUES (8, 'through-the-placement-of-segregated-waste-bins-in-', 'id', 'Melalui penempatan tempat sampah terpisah di tempat-tempat strategis, serta pengumpulan sampah terpisah untuk semua limbah yang dihasilkan selama acara Anda, kami akan membantu pengelolaan sampah acara Anda menjadi lebih disiapkan dan bertanggung jawab!');
INSERT INTO `dictionary` VALUES (9, 'increase-the-material-processing-of-brand-labelled', 'en', 'Increase the material processing of brand-labelled waste throughout your company’s business line. Whether it’s in-store recycling or app-based recycling program, we provide both the system and solution!');
INSERT INTO `dictionary` VALUES (10, 'increase-the-material-processing-of-brand-labelled', 'id', 'Meningkatkan pengolahan bahan limbah merek berlabel seluruh lini bisnis perusahaan Anda. Apakah itu di dalam toko daur ulang atau program daur ulang berbasis aplikasi-, kami menyediakan sistem dan solusi!');
INSERT INTO `dictionary` VALUES (11, 'improve-your-solid-waste-management-by-conducting-', 'en', 'Improve your solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs.');
INSERT INTO `dictionary` VALUES (12, 'improve-your-solid-waste-management-by-conducting-', 'id', 'Meningkatkan pengelolaan limbah padat Anda dengan melakukan analisis menyeluruh dan mengidentifikasi paling sistem dan program yang tepat.');
INSERT INTO `dictionary` VALUES (13, 'we-help-our-clients-to-implement-programs-that-enc', 'en', 'We help our clients to implement programs that encourage the community to act and provide real contributions to the waste crisis in Indonesia.');
INSERT INTO `dictionary` VALUES (14, 'we-help-our-clients-to-implement-programs-that-enc', 'id', 'Kami membantu klien kami untuk melaksanakan program-program yang mendorong masyarakat untuk bertindak dan memberikan kontribusi nyata untuk krisis sampah di Indonesia.');
INSERT INTO `dictionary` VALUES (15, 'designed-to-encourage-the-increasing-awareness-of-', 'en', 'Designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management in schools.');
INSERT INTO `dictionary` VALUES (16, 'designed-to-encourage-the-increasing-awareness-of-', 'id', 'Dirancang untuk mendorong meningkatnya kesadaran warga sekolah untuk menerapkan Prinsip 3R (Reduce, Reuse, Recycle) untuk penciptaan pengelolaan sampah yang bertanggung jawab di sekolah-sekolah.');
INSERT INTO `dictionary` VALUES (17, 'waste-management-education-program-that-includes-a', 'en', 'Waste management education program that includes a visit to local landfill and Waste4Change’s waste management facilities that stimulates all 4 senses (sight, touch, smell, and hearing).');
INSERT INTO `dictionary` VALUES (18, 'waste-management-education-program-that-includes-a', 'id', 'Limbah Program pendidikan manajemen yang mencakup kunjungan ke TPA lokal dan fasilitas pengelolaan limbah Waste4Change yang merangsang semua indera 4 (penglihatan, sentuhan, bau, dan pendengaran).');
INSERT INTO `dictionary` VALUES (19, 'receive-in-depth-information-regarding-organic-was', 'en', 'Receive in-depth information regarding organic waste processing using Black Soldier Fly (BSF), as well as the cultivation and breeding methods of BSF.');
INSERT INTO `dictionary` VALUES (20, 'receive-in-depth-information-regarding-organic-was', 'id', 'Menerima informasi mendalam mengenai pengolahan sampah organik menggunakan Hitam Soldier Fly (BSF), serta budidaya dan metode pemuliaan dari BSF.');
INSERT INTO `dictionary` VALUES (21, 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'en', 'We provide Black Soldier Fly larvae that is high in protein and considered as a great animal feed. For any of you who wishes to build your own BSF nursery, we have all the necessary tools and starter kit.');
INSERT INTO `dictionary` VALUES (22, 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'id', 'Kami menyediakan Hitam Soldier Fly larva yang tinggi protein dan dianggap sebagai pakan ternak besar. Untuk setiap dari Anda yang ingin membangun pembibitan BSF sendiri, kita memiliki semua alat yang diperlukan dan starter kit.');
INSERT INTO `dictionary` VALUES (23, 'send-your-inorganic-waste-to-waste4change-and-let-', 'en', 'Send your inorganic waste to Waste4Change and let us recycle it for you.');
INSERT INTO `dictionary` VALUES (24, 'send-your-inorganic-waste-to-waste4change-and-let-', 'id', 'Kirim sampah anorganik untuk Waste4Change dan biarkan kami mendaur ulang untuk Anda.');
INSERT INTO `dictionary` VALUES (25, 'deposit-your-inorganic-waste-in-waste4changes-dro', 'en', 'Deposit your inorganic waste in Waste4Change\'s dropbox and let us recycle it for you.');
INSERT INTO `dictionary` VALUES (26, 'deposit-your-inorganic-waste-in-waste4changes-dro', 'id', 'Deposit sampah anorganik Anda di dropbox Waste4Change dan mari kita mendaur ulang untuk Anda.');
INSERT INTO `dictionary` VALUES (27, 'send-your-used-pet-bottles-of-various-sizes-and-br', 'en', 'Send your used PET bottles of various sizes and brands with GoSend to get many benefits from Ades.');
INSERT INTO `dictionary` VALUES (28, 'send-your-used-pet-bottles-of-various-sizes-and-br', 'id', 'Kirim botol PET Anda digunakan berbagai ukuran dan merek dengan GoSend untuk mendapatkan banyak manfaat dari Ades.');
INSERT INTO `dictionary` VALUES (29, 'deposit-your-used-packaging-through-our-partners-t', 'en', 'Deposit your used packaging through our partners throughout Indonesia and get reward points when shopping for various digital products.');
INSERT INTO `dictionary` VALUES (30, 'deposit-your-used-packaging-through-our-partners-t', 'id', 'Deposit kemasan yang digunakan melalui mitra kami di seluruh Indonesia dan mendapatkan poin reward saat berbelanja untuk berbagai produk digital.');
INSERT INTO `dictionary` VALUES (31, 'process-your-organic-waste-at-home-with-waste4cha', 'en', 'Process your organic waste at  home with Waste4Change’s special composting bag and other home composting tools and equipment!');
INSERT INTO `dictionary` VALUES (32, 'process-your-organic-waste-at-home-with-waste4cha', 'id', 'Mengolah sampah organik di rumah dengan tas Waste4Change ini khusus kompos dan kompos alat rumah lainnya dan peralatan!');
INSERT INTO `dictionary` VALUES (33, 'brand', 'en', 'Brand');
INSERT INTO `dictionary` VALUES (34, 'brand', 'id', 'Merek');
INSERT INTO `dictionary` VALUES (35, 'bussiness-actor', 'en', 'Bussiness Actor');
INSERT INTO `dictionary` VALUES (36, 'bussiness-actor', 'id', 'Bussiness Aktor');
INSERT INTO `dictionary` VALUES (37, 'company', 'en', 'Company');
INSERT INTO `dictionary` VALUES (38, 'company', 'id', 'Perusahaan');
INSERT INTO `dictionary` VALUES (39, 'companys-csr', 'en', 'Company\'s CSR');
INSERT INTO `dictionary` VALUES (40, 'companys-csr', 'id', 'Csr Perusahaan');
INSERT INTO `dictionary` VALUES (41, 'consultant', 'en', 'Consultant');
INSERT INTO `dictionary` VALUES (42, 'consultant', 'id', 'Konsultan');
INSERT INTO `dictionary` VALUES (43, 'distributor', 'en', 'Distributor');
INSERT INTO `dictionary` VALUES (44, 'distributor', 'id', 'Distributor');
INSERT INTO `dictionary` VALUES (45, 'event', 'en', 'Event');
INSERT INTO `dictionary` VALUES (46, 'event', 'id', 'Peristiwa');
INSERT INTO `dictionary` VALUES (47, 'foundation', 'en', 'Foundation');
INSERT INTO `dictionary` VALUES (48, 'foundation', 'id', 'Dasar');
INSERT INTO `dictionary` VALUES (49, 'government', 'en', 'Government');
INSERT INTO `dictionary` VALUES (50, 'government', 'id', 'Pemerintah');
INSERT INTO `dictionary` VALUES (51, 'hotels', 'en', 'Hotels');
INSERT INTO `dictionary` VALUES (52, 'hotels', 'id', 'Hotel');
INSERT INTO `dictionary` VALUES (53, 'individual', 'en', 'Individual');
INSERT INTO `dictionary` VALUES (54, 'individual', 'id', 'Individu');
INSERT INTO `dictionary` VALUES (55, 'office-blocks', 'en', 'Office Blocks');
INSERT INTO `dictionary` VALUES (56, 'office-blocks', 'id', 'Kantor Blok');
INSERT INTO `dictionary` VALUES (57, 'product', 'en', 'Product');
INSERT INTO `dictionary` VALUES (58, 'product', 'id', 'Produk');
INSERT INTO `dictionary` VALUES (59, 'researcher', 'en', 'Researcher');
INSERT INTO `dictionary` VALUES (60, 'researcher', 'id', 'Peneliti');
INSERT INTO `dictionary` VALUES (61, 'residential-area/housing', 'en', 'Residential Area/Housing');
INSERT INTO `dictionary` VALUES (62, 'residential-area/housing', 'id', 'Residential Area / Perumahan');
INSERT INTO `dictionary` VALUES (63, 'restaurants', 'en', 'Restaurants');
INSERT INTO `dictionary` VALUES (64, 'restaurants', 'id', 'Restoran');
INSERT INTO `dictionary` VALUES (65, 'school', 'en', 'School');
INSERT INTO `dictionary` VALUES (66, 'school', 'id', 'Sekolah');

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language`  (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `language_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `language_flag` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`language_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`page_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for recomendation
-- ----------------------------
DROP TABLE IF EXISTS `recomendation`;
CREATE TABLE `recomendation`  (
  `recomendation_id` int(11) NOT NULL AUTO_INCREMENT,
  `recomendation_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `recomendation_color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`recomendation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recomendation
-- ----------------------------
INSERT INTO `recomendation` VALUES (1, 'brand', '#a24495', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (2, 'bussiness-actor', '#a29244', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (3, 'company', '#a24444', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (4, 'companys-csr', '#a24444', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (5, 'consultant', '#a29244', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (6, 'distributor', '#a24444', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (7, 'event', '#a24495', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (8, 'foundation', '#68a244', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (9, 'government', '#68a244', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (10, 'hotels', '#4489a2', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (11, 'individual', '#68a244', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (12, 'office-blocks', '#68a244', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (13, 'product', '#a24495', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (14, 'researcher', '#a29244', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (15, 'residential-area/housing', '#4489a2', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (16, 'restaurants', '#a24444', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (17, 'school', '#4489a2', '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_category_id` int(11) NULL DEFAULT NULL,
  `service_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `service_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `service_description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_page_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_join_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_thumbnail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_id`) USING BTREE,
  INDEX `fk_service_service_category_1`(`service_category_id`) USING BTREE,
  CONSTRAINT `fk_service_service_category_1` FOREIGN KEY (`service_category_id`) REFERENCES `service_category` (`service_category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 1, 'responsible-waste-management-basic', 'Responsible Waste Management - Basic', 'a-100-holistic-waste-management-for-companies-bu', 'https://waste4change.com/official/service/responsible-waste-management-basic', 'https://waste4change.com/official/join', 'responsible-waste-managementbasic.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (2, 1, 'zero-waste-to-landfill', 'Zero Waste to Landfill', 'take-an-active-part-in-preventing-our-local-landfi', 'https://waste4change.com/official/service/zero-waste-to-landfill', 'https://waste4change.com/official/join', 'zero-waste-to-landfill.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (3, 1, 'inorganic-waste-management', 'Inorganic Waste Management', 'treat-your-inorganic-waste-the-right-way-and-make-', 'https://waste4change.com/official/service/inorganic-waste-management', 'https://waste4change.com/official/join', 'inorganic-waste-management.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (4, 1, 'event-waste-management', 'Event Waste Management', 'through-the-placement-of-segregated-waste-bins-in-', 'https://waste4change.com/official/service/event-waste-management', 'https://waste4change.com/official/join', 'event-waste-management.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (5, 2, 'in-store-recycling', 'In-Store Recycling', 'increase-the-material-processing-of-brand-labelled', 'https://waste4change.com/official/service/in-store-recycling', 'https://waste4change.com/official/join', 'in-store-recycling.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (6, 3, 'solid-waste-management-research', 'Solid Waste Management Research', 'improve-your-solid-waste-management-by-conducting-', 'https://waste4change.com/official/service/solid-waste-management-research', 'https://waste4change.com/official/join', 'solid-waste-management-research.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (7, 4, 'community-based-implementation', 'Community-Based Implementation', 'we-help-our-clients-to-implement-programs-that-enc', 'https://waste4change.com/official/service/community-based-implementation', 'https://waste4change.com/official/join', 'community-based-implementation.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (8, 4, '3r-school-program', '3R School Program', 'designed-to-encourage-the-increasing-awareness-of-', 'https://waste4change.com/official/service/3r-school-program', 'https://waste4change.com/official/join', '3r-school-program.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (9, 5, 'akabis-waste-management-academy', 'AKABIS (Waste Management Academy)', 'waste-management-education-program-that-includes-a', 'https://waste4change.com/official/service/akabis-waste-management-academy', 'https://waste4change.com/official/join', 'akabis-waste-management-academy.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (10, 5, 'black-soldier-fly-learning-center', 'Black Soldier Fly Learning Center', 'receive-in-depth-information-regarding-organic-was', 'https://waste4change.com/official/service/black-soldier-fly-learning-center', 'https://waste4change.com/official/join', 'black-soldier-fly-learning-center.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (11, 5, 'black-soldier-fly-tools-products', 'Black Soldier Fly Tools & Products', 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'https://waste4change.com/official/service/black-soldier-fly-tools-products', 'https://waste4change.com/official/join', 'black-soldier-fly-tools-products.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (12, 6, 'send-your-waste', 'Send Your Waste', 'send-your-inorganic-waste-to-waste4change-and-let-', 'https://waste4change.com/official/service/send-your-waste', 'https://waste4change.com/official/join', 'send-your-waste.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (13, 6, 'dropbox', 'Dropbox', 'deposit-your-inorganic-waste-in-waste4changes-dro', 'https://waste4change.com/official/service/dropbox', 'https://waste4change.com/official/join', 'dropbox.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (14, 6, 'sinergi-adesniatmurni-dan-gojek', 'Sinergi #AdesNiatMurni dan Gojek', 'send-your-used-pet-bottles-of-various-sizes-and-br', 'https://waste4change.com/official/service/sinergi-adesniatmurni-dan-gojek', 'https://waste4change.com/official/join', 'sinergi-adesniatmurni-dan-gojek.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (15, 6, 'merchant', 'Merchant', 'deposit-your-used-packaging-through-our-partners-t', 'https://waste4change.com/official/service/merchant', 'https://waste4change.com/official/join', 'merchant.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (16, 6, 'home-composting', 'Home Composting', 'process-your-organic-waste-at-home-with-waste4cha', 'https://waste4change.com/official/service/home-composting', 'https://waste4change.com/official/join', 'home-composting.jpg', '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);

-- ----------------------------
-- Table structure for service_category
-- ----------------------------
DROP TABLE IF EXISTS `service_category`;
CREATE TABLE `service_category`  (
  `service_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_target_id` int(11) NULL DEFAULT NULL,
  `service_category_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_category_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_category_id`) USING BTREE,
  INDEX `fk_service_category_service_for_1`(`service_target_id`) USING BTREE,
  CONSTRAINT `fk_service_category_service_for_1` FOREIGN KEY (`service_target_id`) REFERENCES `service_target` (`service_target_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_category
-- ----------------------------
INSERT INTO `service_category` VALUES (1, 1, 'Responsible Waste Management', '', '2019-11-16 18:52:03', '2019-11-16 18:52:03', NULL);
INSERT INTO `service_category` VALUES (2, 1, 'Extended Producer Responsibility', '', '2019-11-16 18:52:03', '2019-11-16 18:52:03', NULL);
INSERT INTO `service_category` VALUES (3, 1, 'General', '', '2019-11-16 18:52:03', '2019-11-16 18:52:03', NULL);
INSERT INTO `service_category` VALUES (4, 1, 'Community Development', '', '2019-11-16 18:52:03', '2019-11-16 18:52:03', NULL);
INSERT INTO `service_category` VALUES (5, 1, 'Training', '', '2019-11-16 18:52:03', '2019-11-16 18:52:03', NULL);
INSERT INTO `service_category` VALUES (6, 2, 'General', '', '2019-11-16 18:52:03', '2019-11-16 18:52:03', NULL);

-- ----------------------------
-- Table structure for service_recomendation
-- ----------------------------
DROP TABLE IF EXISTS `service_recomendation`;
CREATE TABLE `service_recomendation`  (
  `service_recomendation_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `recomendation_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_recomendation_id`) USING BTREE,
  INDEX `fk_service_recomendation_service_1`(`service_id`) USING BTREE,
  CONSTRAINT `fk_service_recomendation_service_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_recomendation
-- ----------------------------
INSERT INTO `service_recomendation` VALUES (1, 1, 12, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (2, 1, 16, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (3, 1, 10, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (4, 1, 15, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (5, 2, 12, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (6, 2, 16, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (7, 2, 10, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (8, 2, 15, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (9, 3, 12, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (10, 3, 16, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (11, 3, 10, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (12, 3, 15, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (13, 4, 1, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (14, 4, 7, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (15, 4, 10, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (16, 4, 12, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (17, 5, 6, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (18, 5, 1, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (19, 5, 13, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (20, 6, 9, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (21, 6, 5, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (22, 6, 15, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (23, 6, 12, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (24, 7, 9, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (25, 7, 5, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (26, 7, 15, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (27, 7, 12, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (28, 8, 9, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (29, 8, 5, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (30, 9, 4, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (31, 9, 8, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (32, 9, 3, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (33, 9, 17, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (34, 10, 2, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (35, 10, 14, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (36, 11, 2, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (37, 11, 14, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (38, 12, 11, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (39, 13, 11, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (40, 14, 11, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (41, 15, 11, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);
INSERT INTO `service_recomendation` VALUES (42, 16, 11, '2019-11-16 20:53:24', '2019-11-16 20:53:24', NULL);

-- ----------------------------
-- Table structure for service_target
-- ----------------------------
DROP TABLE IF EXISTS `service_target`;
CREATE TABLE `service_target`  (
  `service_target_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_target_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_target_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_target_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`testimony_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
