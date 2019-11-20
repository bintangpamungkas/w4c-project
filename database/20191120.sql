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

 Date: 20/11/2019 09:14:50
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
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`achievement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for benefit
-- ----------------------------
DROP TABLE IF EXISTS `benefit`;
CREATE TABLE `benefit`  (
  `benefit_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `benefit_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `benefit_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`benefit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of benefit
-- ----------------------------
INSERT INTO `benefit` VALUES (1, 1, '100-holistic-approach-on-waste-management', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (2, 1, 'zero-waste-to-landfill', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (3, 1, 'support-and-in-line-with-perpres-no-97-tahun-2017', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (4, 1, 'adding-sustainable-and-environmental-friendly-valu', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (5, 1, 'increasing-staff’s-awareness-of-waste-issues', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (6, 2, '100-holistic-approach-on-waste-management', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (7, 2, 'zero-waste-to-landfill', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (8, 2, 'support-and-in-line-with-perpres-no-97-tahun-2017', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (9, 2, 'adding-sustainable-and-environmental-friendly-valu', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (10, 2, 'increasing-staff’s-awareness-of-waste-issues', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (11, 3, '100-holistic-approach-on-waste-management', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (12, 3, 'reduce-waste-to-landfill', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (13, 3, 'support-and-in-line-with-perpres-no-97-tahun-2017', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (14, 3, 'adding-sustainable-and-environmental-friendly-valu', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (15, 3, 'increasing-staff’s-awareness-of-waste-issues', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (16, 4, '100-holistic-approach-on-waste-management', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (17, 4, 'reduce-waste-to-landfill', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (18, 4, 'support-and-in-line-with-perpres-no-97-tahun-2017', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (19, 4, 'adding-sustainable-and-environmental-friendly-valu', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (20, 4, 'increasing-staff’s-awareness-of-waste-issues', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (21, 5, 'zero-waste-to-landfill', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (22, 5, 'prevent-your-brand-labelled-products-for-being-mis', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (23, 5, 'waste-journey-report', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);
INSERT INTO `benefit` VALUES (24, 5, 'help-to-increase-recycling-rate', '', '2019-11-19 09:07:48', '2019-11-19 09:07:48', NULL);

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NULL DEFAULT NULL,
  `client_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `client_logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `dictionary` VALUES (35, NULL, 'a-100-holistic-waste-management-for-companies-bu', 'en', 'A 100% holistic waste management for companies, buildings, and businesses to reduce the number of waste that piles up in the landfill.');
INSERT INTO `dictionary` VALUES (36, NULL, 'a-100-holistic-waste-management-for-companies-bu', 'id', 'Sebuah pengelolaan limbah holistik 100% bagi perusahaan, bangunan, dan bisnis untuk mengurangi jumlah sampah yang menumpuk di TPA.');
INSERT INTO `dictionary` VALUES (37, NULL, 'take-an-active-part-in-preventing-our-local-landfi', 'en', 'Take an active part in preventing our local landfills from becoming overcapacity! Through our waste collection and waste recycling program: Zero Waste to Landfill, we will ensure that none of your waste ends up in the landfill!');
INSERT INTO `dictionary` VALUES (38, NULL, 'take-an-active-part-in-preventing-our-local-landfi', 'id', 'Mengambil bagian aktif dalam mencegah pembuangan sampah lokal kami dari menjadi kelebihan kapasitas! Melalui pengumpulan sampah dan limbah Program daur ulang: Zero Waste ke TPA, kami akan memastikan bahwa tidak ada limbah Anda berakhir di TPA!');
INSERT INTO `dictionary` VALUES (39, NULL, 'treat-your-inorganic-waste-the-right-way-and-make-', 'en', 'Treat your inorganic waste the right way and make sure that your inorganic waste are recycled and included in the sustainable circular system.');
INSERT INTO `dictionary` VALUES (40, NULL, 'treat-your-inorganic-waste-the-right-way-and-make-', 'id', 'Perlakukan sampah anorganik Anda dengan cara yang benar dan memastikan bahwa sampah anorganik Anda didaur ulang dan termasuk dalam sistem melingkar yang berkelanjutan.');
INSERT INTO `dictionary` VALUES (41, NULL, 'through-the-placement-of-segregated-waste-bins-in-', 'en', 'Through the placement of segregated waste bins in strategic places, as well as segregated waste collection for all of the waste that are produced during your event, we will help your event’s waste management to be more well-prepared and responsible!');
INSERT INTO `dictionary` VALUES (42, NULL, 'through-the-placement-of-segregated-waste-bins-in-', 'id', 'Melalui penempatan tempat sampah terpisah di tempat-tempat strategis, serta pengumpulan sampah terpisah untuk semua limbah yang dihasilkan selama acara Anda, kami akan membantu pengelolaan sampah acara Anda menjadi lebih disiapkan dan bertanggung jawab!');
INSERT INTO `dictionary` VALUES (43, NULL, 'increase-the-material-processing-of-brand-labelled', 'en', 'Increase the material processing of brand-labelled waste throughout your company’s business line. Whether it’s in-store recycling or app-based recycling program, we provide both the system and solution!');
INSERT INTO `dictionary` VALUES (44, NULL, 'increase-the-material-processing-of-brand-labelled', 'id', 'Meningkatkan pengolahan bahan limbah merek berlabel seluruh lini bisnis perusahaan Anda. Apakah itu di dalam toko daur ulang atau program daur ulang berbasis aplikasi-, kami menyediakan sistem dan solusi!');
INSERT INTO `dictionary` VALUES (45, NULL, 'improve-your-solid-waste-management-by-conducting-', 'en', 'Improve your solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs.');
INSERT INTO `dictionary` VALUES (46, NULL, 'improve-your-solid-waste-management-by-conducting-', 'id', 'Meningkatkan pengelolaan limbah padat Anda dengan melakukan analisis menyeluruh dan mengidentifikasi paling sistem dan program yang tepat.');
INSERT INTO `dictionary` VALUES (47, NULL, 'we-help-our-clients-to-implement-programs-that-enc', 'en', 'We help our clients to implement programs that encourage the community to act and provide real contributions to the waste crisis in Indonesia.');
INSERT INTO `dictionary` VALUES (48, NULL, 'we-help-our-clients-to-implement-programs-that-enc', 'id', 'Kami membantu klien kami untuk melaksanakan program-program yang mendorong masyarakat untuk bertindak dan memberikan kontribusi nyata untuk krisis sampah di Indonesia.');
INSERT INTO `dictionary` VALUES (49, NULL, 'designed-to-encourage-the-increasing-awareness-of-', 'en', 'Designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management in schools.');
INSERT INTO `dictionary` VALUES (50, NULL, 'designed-to-encourage-the-increasing-awareness-of-', 'id', 'Dirancang untuk mendorong meningkatnya kesadaran warga sekolah untuk menerapkan Prinsip 3R (Reduce, Reuse, Recycle) untuk penciptaan pengelolaan sampah yang bertanggung jawab di sekolah-sekolah.');
INSERT INTO `dictionary` VALUES (51, NULL, 'waste-management-education-program-that-includes-a', 'en', 'Waste management education program that includes a visit to local landfill and Waste4Change’s waste management facilities that stimulates all 4 senses (sight, touch, smell, and hearing).');
INSERT INTO `dictionary` VALUES (52, NULL, 'waste-management-education-program-that-includes-a', 'id', 'Limbah Program pendidikan manajemen yang mencakup kunjungan ke TPA lokal dan fasilitas pengelolaan limbah Waste4Change yang merangsang semua indera 4 (penglihatan, sentuhan, bau, dan pendengaran).');
INSERT INTO `dictionary` VALUES (53, NULL, 'receive-in-depth-information-regarding-organic-was', 'en', 'Receive in-depth information regarding organic waste processing using Black Soldier Fly (BSF), as well as the cultivation and breeding methods of BSF.');
INSERT INTO `dictionary` VALUES (54, NULL, 'receive-in-depth-information-regarding-organic-was', 'id', 'Menerima informasi mendalam mengenai pengolahan sampah organik menggunakan Hitam Soldier Fly (BSF), serta budidaya dan metode pemuliaan dari BSF.');
INSERT INTO `dictionary` VALUES (55, NULL, 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'en', 'We provide Black Soldier Fly larvae that is high in protein and considered as a great animal feed. For any of you who wishes to build your own BSF nursery, we have all the necessary tools and starter kit.');
INSERT INTO `dictionary` VALUES (56, NULL, 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'id', 'Kami menyediakan Hitam Soldier Fly larva yang tinggi protein dan dianggap sebagai pakan ternak besar. Untuk setiap dari Anda yang ingin membangun pembibitan BSF sendiri, kita memiliki semua alat yang diperlukan dan starter kit.');
INSERT INTO `dictionary` VALUES (57, NULL, 'send-your-inorganic-waste-to-waste4change-and-let-', 'en', 'Send your inorganic waste to Waste4Change and let us recycle it for you.');
INSERT INTO `dictionary` VALUES (58, NULL, 'send-your-inorganic-waste-to-waste4change-and-let-', 'id', 'Kirim sampah anorganik untuk Waste4Change dan biarkan kami mendaur ulang untuk Anda.');
INSERT INTO `dictionary` VALUES (59, NULL, 'deposit-your-inorganic-waste-in-waste4changes-dro', 'en', 'Deposit your inorganic waste in Waste4Change\'s dropbox and let us recycle it for you.');
INSERT INTO `dictionary` VALUES (60, NULL, 'deposit-your-inorganic-waste-in-waste4changes-dro', 'id', 'Deposit sampah anorganik Anda di dropbox Waste4Change dan mari kita mendaur ulang untuk Anda.');
INSERT INTO `dictionary` VALUES (61, NULL, 'send-your-used-pet-bottles-of-various-sizes-and-br', 'en', 'Send your used PET bottles of various sizes and brands with GoSend to get many benefits from Ades.');
INSERT INTO `dictionary` VALUES (62, NULL, 'send-your-used-pet-bottles-of-various-sizes-and-br', 'id', 'Kirim botol PET Anda digunakan berbagai ukuran dan merek dengan GoSend untuk mendapatkan banyak manfaat dari Ades.');
INSERT INTO `dictionary` VALUES (63, NULL, 'deposit-your-used-packaging-through-our-partners-t', 'en', 'Deposit your used packaging through our partners throughout Indonesia and get reward points when shopping for various digital products.');
INSERT INTO `dictionary` VALUES (64, NULL, 'deposit-your-used-packaging-through-our-partners-t', 'id', 'Deposit kemasan yang digunakan melalui mitra kami di seluruh Indonesia dan mendapatkan poin reward saat berbelanja untuk berbagai produk digital.');
INSERT INTO `dictionary` VALUES (65, NULL, 'process-your-organic-waste-at-home-with-waste4cha', 'en', 'Process your organic waste at  home with Waste4Change’s special composting bag and other home composting tools and equipment!');
INSERT INTO `dictionary` VALUES (66, NULL, 'process-your-organic-waste-at-home-with-waste4cha', 'id', 'Mengolah sampah organik di rumah dengan tas Waste4Change ini khusus kompos dan kompos alat rumah lainnya dan peralatan!');
INSERT INTO `dictionary` VALUES (67, NULL, 'no-more-mixed-waste', 'en', 'No More Mixed Waste');
INSERT INTO `dictionary` VALUES (68, NULL, 'no-more-mixed-waste', 'id', 'No More Campuran Limbah');
INSERT INTO `dictionary` VALUES (69, NULL, 'no-more-waste-that-end-up-in-landfills', 'en', 'No More Waste That End Up In Landfills');
INSERT INTO `dictionary` VALUES (70, NULL, 'no-more-waste-that-end-up-in-landfills', 'id', 'Tidak ada Limbah Lebih Itu berakhir di landfill');
INSERT INTO `dictionary` VALUES (71, NULL, 'from-waste-to-useful-materials', 'en', 'From Waste to Useful Materials');
INSERT INTO `dictionary` VALUES (72, NULL, 'from-waste-to-useful-materials', 'id', 'Dari Limbah ke Bahan Berguna');
INSERT INTO `dictionary` VALUES (73, NULL, 'great-event-planned-their-waste-management-beforeh', 'en', 'Great Event Planned Their Waste Management Beforehand');
INSERT INTO `dictionary` VALUES (74, NULL, 'great-event-planned-their-waste-management-beforeh', 'id', 'Great Event Rencana Pengelolaan Limbah mereka Terlebih dahulu');
INSERT INTO `dictionary` VALUES (75, NULL, 'support-the-recycling-of-your-brand-labeled-waste', 'en', 'Support the Recycling of Your Brand-Labeled Waste');
INSERT INTO `dictionary` VALUES (76, NULL, 'support-the-recycling-of-your-brand-labeled-waste', 'id', 'Mendukung Daur Ulang Limbah Brand-Berlabel Anda');
INSERT INTO `dictionary` VALUES (77, NULL, 'waste-generation-is-inevitable-its-not-easy-to-r', 'en', 'Waste generation is inevitable. It\'s not easy to reduce waste in our everyday lives. The simplest, easiest and most important thing that we can do after generating waste is separating our organic and inorganic waste. <br>Through our service Responsible Wa');
INSERT INTO `dictionary` VALUES (78, NULL, 'waste-generation-is-inevitable-its-not-easy-to-r', 'id', 'timbulan sampah tidak bisa dihindari. Ini tidak mudah untuk mengurangi limbah dalam kehidupan kita sehari-hari. Yang paling sederhana, paling mudah dan paling penting hal yang bisa kita lakukan setelah limbah pembangkit adalah memisahkan sampah organik da');
INSERT INTO `dictionary` VALUES (79, NULL, 'every-day-indonesians-are-generating-175000-tons', 'en', 'Every day, Indonesians are generating 175,000 tons of waste. This caused Jakarta and many areas in Indonesia to suffer from landfill emergencies. Even the Bantar Gebang landfill that holds the residual waste of Jakarta residents is predicted to be overcap');
INSERT INTO `dictionary` VALUES (80, NULL, 'every-day-indonesians-are-generating-175000-tons', 'id', 'Setiap hari, orang Indonesia menghasilkan 175.000 ton limbah. Hal ini menyebabkan Jakarta dan banyak daerah di Indonesia menderita keadaan darurat TPA. Bahkan TPA Bantar Gebang yang memegang limbah sisa warga Jakarta diprediksi akan kelebihan kapasitas di');
INSERT INTO `dictionary` VALUES (81, NULL, 'waste-is-a-relative-term-that-can-be-applied-diffe', 'en', 'Waste is a relative term that can be applied differently to each person, especially inorganic waste. Once it is treated in the right way, inorganic waste can solve our problems on the scarcity of raw materials.<br>Through our Inorganic Waste Management (I');
INSERT INTO `dictionary` VALUES (82, NULL, 'waste-is-a-relative-term-that-can-be-applied-diffe', 'id', 'Limbah adalah istilah relatif yang dapat diterapkan secara berbeda untuk setiap orang, terutama sampah anorganik. Setelah itu diperlakukan dengan cara yang benar, sampah anorganik bisa memecahkan masalah kita pada kelangkaan bahan baku. <br> Melalui anorg');
INSERT INTO `dictionary` VALUES (83, NULL, 'waste-generation-during-an-event-is-inevitable-in', 'en', 'Waste generation during an event is inevitable. In a place where participants\' are allowed to take notes, to drink and eat, especially in a crowded event, it\'s not easy to make sure that everyone\'s taking their time and energy to be responsible for their ');
INSERT INTO `dictionary` VALUES (84, NULL, 'waste-generation-during-an-event-is-inevitable-in', 'id', 'timbulan sampah selama acara tidak bisa dihindari. Di tempat di mana peserta diperbolehkan untuk mengambil catatan, untuk minum dan makan, terutama dalam acara ramai, itu tidak mudah untuk memastikan bahwa semua orang mengambil waktu dan energi mereka unt');
INSERT INTO `dictionary` VALUES (85, NULL, 'designed-to-increase-the-material-processing-from-', 'en', 'Designed to increase the material processing from brand-labeled waste throughout your companys business line. What we define as brand-labeled waste might resulted from the following:<br><ul><li>Production process that resulted in product defect, reject, o');
INSERT INTO `dictionary` VALUES (86, NULL, 'designed-to-increase-the-material-processing-from-', 'id', 'Dirancang untuk meningkatkan pengolahan bahan dari limbah merek-berlabel seluruh lini bisnis companys Anda. Apa yang kita definisikan sebagai merek-label limbah kekuatan hasil berikut ini: Situs <ul> <li> Proses produksi yang mengakibatkan cacat produk, m');
INSERT INTO `dictionary` VALUES (87, NULL, '100-holistic-approach-on-waste-management', 'en', '100% holistic-approach on waste management');
INSERT INTO `dictionary` VALUES (88, NULL, '100-holistic-approach-on-waste-management', 'id', '100% holistik-pendekatan pengelolaan sampah');
INSERT INTO `dictionary` VALUES (89, NULL, 'zero-waste-to-landfill', 'en', 'Zero waste to landfill');
INSERT INTO `dictionary` VALUES (90, NULL, 'zero-waste-to-landfill', 'id', 'zero waste ke TPA');
INSERT INTO `dictionary` VALUES (91, NULL, 'support-and-in-line-with-perpres-no-97-tahun-2017', 'en', 'Support and in line with Perpres No. 97 Tahun 2017 (JAKSTRANAS)');
INSERT INTO `dictionary` VALUES (92, NULL, 'support-and-in-line-with-perpres-no-97-tahun-2017', 'id', 'Dukungan dan sejalan dengan Perpres No. 97 Tahun 2017 (JAKSTRANAS)');
INSERT INTO `dictionary` VALUES (93, NULL, 'adding-sustainable-and-environmental-friendly-valu', 'en', 'Adding sustainable and environmental-friendly value to client\'s brand image');
INSERT INTO `dictionary` VALUES (94, NULL, 'adding-sustainable-and-environmental-friendly-valu', 'id', 'Menambahkan nilai yang berkelanjutan dan ramah lingkungan untuk citra merek klien');
INSERT INTO `dictionary` VALUES (95, NULL, 'increasing-staff’s-awareness-of-waste-issues', 'en', 'Increasing staff’s awareness of waste issues');
INSERT INTO `dictionary` VALUES (96, NULL, 'increasing-staff’s-awareness-of-waste-issues', 'id', 'Meningkatkan kesadaran staf masalah limbah');
INSERT INTO `dictionary` VALUES (97, NULL, 'reduce-waste-to-landfill', 'en', 'Reduce waste to landfill');
INSERT INTO `dictionary` VALUES (98, NULL, 'reduce-waste-to-landfill', 'id', 'Mengurangi sampah ke TPA');
INSERT INTO `dictionary` VALUES (99, NULL, 'prevent-your-brand-labelled-products-for-being-mis', 'en', 'Prevent your brand-labelled products for being misused, imitated or forged');
INSERT INTO `dictionary` VALUES (100, NULL, 'prevent-your-brand-labelled-products-for-being-mis', 'id', 'Mencegah merek produk berlabel Anda untuk disalahgunakan, ditiru atau dipalsukan');
INSERT INTO `dictionary` VALUES (101, NULL, 'waste-journey-report', 'en', 'Waste Journey Report');
INSERT INTO `dictionary` VALUES (102, NULL, 'waste-journey-report', 'id', 'Limbah Journey Laporan');
INSERT INTO `dictionary` VALUES (103, NULL, 'help-to-increase-recycling-rate', 'en', 'Help to increase recycling rate');
INSERT INTO `dictionary` VALUES (104, NULL, 'help-to-increase-recycling-rate', 'id', 'Bantuan untuk tingkat daur ulang meningkat');
INSERT INTO `dictionary` VALUES (105, NULL, 'trash-bag-designated-to-support-waste-segregation', 'en', 'Trash bag designated to support waste segregation');
INSERT INTO `dictionary` VALUES (106, NULL, 'trash-bag-designated-to-support-waste-segregation', 'id', 'kantong sampah yang ditunjuk untuk dukungan pemilahan sampah');
INSERT INTO `dictionary` VALUES (107, NULL, 'waste-collection-in-a-segregated-state', 'en', 'Waste collection in a segregated state');
INSERT INTO `dictionary` VALUES (108, NULL, 'waste-collection-in-a-segregated-state', 'id', 'Limbah koleksi dalam keadaan terpisah');
INSERT INTO `dictionary` VALUES (109, NULL, 'one-time-technical-induction-training', 'en', 'One-time Technical Induction Training');
INSERT INTO `dictionary` VALUES (110, NULL, 'one-time-technical-induction-training', 'id', 'Satu kali Teknis Induction Training');
INSERT INTO `dictionary` VALUES (111, NULL, 'inorganic-trash-bag', 'en', 'Inorganic Trash Bag');
INSERT INTO `dictionary` VALUES (112, NULL, 'inorganic-trash-bag', 'id', 'Sampah anorganik Bag');
INSERT INTO `dictionary` VALUES (113, NULL, 'comprehensive-waste-management-system-in-the-distr', 'en', 'Comprehensive waste management system in the distribution line');
INSERT INTO `dictionary` VALUES (114, NULL, 'comprehensive-waste-management-system-in-the-distr', 'id', 'sistem pengelolaan sampah yang komprehensif dalam jalur distribusi');
INSERT INTO `dictionary` VALUES (115, NULL, 'responsible-waste-management-for-residual-waste-w', 'en', 'Responsible waste management for residual waste (waste that are difficult to be recycled) without sending it to the landfills (on demand)');
INSERT INTO `dictionary` VALUES (116, NULL, 'responsible-waste-management-for-residual-waste-w', 'id', 'pengelolaan sampah yang bertanggung jawab untuk limbah sisa (limbah yang sulit didaur ulang) tanpa mengirimnya ke tempat pembuangan sampah (on demand)');
INSERT INTO `dictionary` VALUES (117, NULL, 'increase-the-number-of-waste-that-can-be-further-p', 'en', 'Increase the number of waste that can be further processed through recycling method');
INSERT INTO `dictionary` VALUES (118, NULL, 'increase-the-number-of-waste-that-can-be-further-p', 'id', 'Meningkatkan jumlah sampah yang bisa diolah lebih lanjut melalui metode daur ulang');
INSERT INTO `dictionary` VALUES (119, NULL, 'waste-segregation-by-client', 'en', 'Waste segregation by client');
INSERT INTO `dictionary` VALUES (120, NULL, 'waste-segregation-by-client', 'id', 'Buang segregasi oleh klien');
INSERT INTO `dictionary` VALUES (121, NULL, 'waste-storage-in-transfer-point/-tpst', 'en', 'Waste storage in transfer point/ TPST');
INSERT INTO `dictionary` VALUES (122, NULL, 'waste-storage-in-transfer-point/-tpst', 'id', 'Limbah penyimpanan di titik transfer / TPST');
INSERT INTO `dictionary` VALUES (123, NULL, 'segregated-waste-collection', 'en', 'Segregated waste collection');
INSERT INTO `dictionary` VALUES (124, NULL, 'segregated-waste-collection', 'id', 'pengumpulan sampah Segregated');
INSERT INTO `dictionary` VALUES (125, NULL, 'waste-processing-in-w4c’s-material-recovery-facili', 'en', 'Waste processing in W4C’s Material Recovery Facility');
INSERT INTO `dictionary` VALUES (126, NULL, 'waste-processing-in-w4c’s-material-recovery-facili', 'id', 'Limbah pengolahan di Fasilitas Bahan Pemulihan W4C ini');
INSERT INTO `dictionary` VALUES (127, NULL, 'residue-being-sent-to-the-landfill', 'en', 'Residue being sent to the landfill');
INSERT INTO `dictionary` VALUES (128, NULL, 'residue-being-sent-to-the-landfill', 'id', 'makhluk residu dikirim ke TPA');
INSERT INTO `dictionary` VALUES (129, NULL, 'welcome', 'en', 'Welcome');
INSERT INTO `dictionary` VALUES (130, NULL, 'welcome', 'id', 'Selamat datang');
INSERT INTO `dictionary` VALUES (131, NULL, 'our-achievement', 'en', 'Our Achievement');
INSERT INTO `dictionary` VALUES (132, NULL, 'our-achievement', 'id', 'Prestasi kami');
INSERT INTO `dictionary` VALUES (133, NULL, 'about', 'en', 'About');
INSERT INTO `dictionary` VALUES (134, NULL, 'about', 'id', 'Tentang');
INSERT INTO `dictionary` VALUES (135, NULL, 'benefit', 'en', 'Benefit');
INSERT INTO `dictionary` VALUES (136, NULL, 'benefit', 'id', 'Manfaat');
INSERT INTO `dictionary` VALUES (137, NULL, 'what-you-get', 'en', 'What You Get');
INSERT INTO `dictionary` VALUES (138, NULL, 'what-you-get', 'id', 'Apa yang kau dapatkan');
INSERT INTO `dictionary` VALUES (139, NULL, 'waste-flow', 'en', 'Waste Flow');
INSERT INTO `dictionary` VALUES (140, NULL, 'waste-flow', 'id', 'Arus limbah');
INSERT INTO `dictionary` VALUES (141, NULL, 'highlight', 'en', 'Highlight');
INSERT INTO `dictionary` VALUES (142, NULL, 'highlight', 'id', 'Menyoroti');
INSERT INTO `dictionary` VALUES (143, NULL, 'our-client', 'en', 'Our Client');
INSERT INTO `dictionary` VALUES (144, NULL, 'our-client', 'id', 'Klien kami');
INSERT INTO `dictionary` VALUES (145, NULL, 'recomended-for', 'en', 'Recomended For');
INSERT INTO `dictionary` VALUES (146, NULL, 'recomended-for', 'id', 'Recomended Untuk');
INSERT INTO `dictionary` VALUES (147, NULL, 'our-coverage', 'en', 'Our Coverage');
INSERT INTO `dictionary` VALUES (148, NULL, 'our-coverage', 'id', 'Cakupan kami');
INSERT INTO `dictionary` VALUES (149, NULL, 'start-your-responsible-waste-management-now', 'en', 'Start your Responsible Waste Management now');
INSERT INTO `dictionary` VALUES (150, NULL, 'start-your-responsible-waste-management-now', 'id', 'Mulai Anda Bertanggung Jawab Pengelolaan Sampah sekarang');
INSERT INTO `dictionary` VALUES (151, NULL, 'achievement', 'en', 'Achievement');
INSERT INTO `dictionary` VALUES (152, NULL, 'achievement', 'id', 'Prestasi');
INSERT INTO `dictionary` VALUES (153, NULL, 'client', 'en', 'Client');
INSERT INTO `dictionary` VALUES (154, NULL, 'client', 'id', 'Klien');
INSERT INTO `dictionary` VALUES (155, NULL, 'coverage', 'en', 'Coverage');
INSERT INTO `dictionary` VALUES (156, NULL, 'coverage', 'id', 'liputan');

-- ----------------------------
-- Table structure for dictionary_type
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_type`;
CREATE TABLE `dictionary_type`  (
  `dictionary_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `dictionary_type_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`dictionary_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for facility
-- ----------------------------
DROP TABLE IF EXISTS `facility`;
CREATE TABLE `facility`  (
  `facility_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `facility_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `facility_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`facility_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of facility
-- ----------------------------
INSERT INTO `facility` VALUES (1, 1, 'trash-bag-designated-to-support-waste-segregation', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (2, 1, 'waste-collection-in-a-segregated-state', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (3, 1, 'one-time-technical-induction-training', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (4, 1, 'waste-journey-report', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (5, 2, 'trash-bag-designated-to-support-waste-segregation', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (6, 2, 'waste-collection-in-a-segregated-state', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (7, 2, 'one-time-technical-induction-training', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (8, 2, 'waste-journey-report', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (9, 3, 'inorganic-trash-bag', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (10, 3, 'waste-collection-in-a-segregated-state', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (11, 3, 'one-time-technical-induction-training', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (12, 3, 'waste-journey-report', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (13, 4, 'trash-bag-designated-to-support-waste-segregation', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (14, 4, 'waste-collection-in-a-segregated-state', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (15, 4, 'waste-journey-report', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (16, 5, 'comprehensive-waste-management-system-in-the-distr', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (17, 5, 'responsible-waste-management-for-residual-waste-w', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');
INSERT INTO `facility` VALUES (18, 5, 'increase-the-number-of-waste-that-can-be-further-p', NULL, '2019-11-19 09:09:42', NULL, '2019-11-19 09:09:42');

-- ----------------------------
-- Table structure for flow
-- ----------------------------
DROP TABLE IF EXISTS `flow`;
CREATE TABLE `flow`  (
  `flow_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `flow_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `flow_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`flow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flow
-- ----------------------------
INSERT INTO `flow` VALUES (1, 1, 'waste-segregation-by-client', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (2, 1, 'waste-storage-in-transfer-point/-tpst', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (3, 1, 'segregated-waste-collection', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (4, 1, 'waste-processing-in-w4c’s-material-recovery-facili', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (5, 1, 'residue-being-sent-to-the-landfill', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (6, 2, 'waste-segregation-by-client', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (7, 2, 'waste-storage-in-transfer-point/-tpst', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (8, 2, 'segregated-waste-collection', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (9, 2, 'waste-processing-in-w4c’s-material-recovery-facili', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (10, 2, 'residue-being-sent-to-the-landfill', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (11, 3, 'waste-segregation-by-client', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (12, 3, 'waste-storage-in-transfer-point/-tpst', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (13, 3, 'segregated-waste-collection', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (14, 3, 'waste-processing-in-w4c’s-material-recivery-facili', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (15, 3, 'residue-being-sent-to-the-landfill', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (16, 4, 'waste-segregation-by-client', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (17, 4, 'waste-storage-in-transfer-point/-tpst', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (18, 4, 'segregated-waste-collection', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (19, 4, 'waste-processing-in-w4c’s-material-recivery-facili', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (20, 4, 'residue-being-sent-to-the-landfill', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (21, 5, 'waste-segregation-by-client', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (22, 5, 'waste-storage-in-transfer-point/-tpst', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (23, 5, 'segregated-waste-collection', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (24, 5, 'waste-processing-in-w4c’s-material-recivery-facili', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);
INSERT INTO `flow` VALUES (25, 5, 'residue-being-sent-to-the-landfill', NULL, '2019-11-19 09:10:01', '2019-11-19 09:10:01', NULL);

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
-- Table structure for photofolio
-- ----------------------------
DROP TABLE IF EXISTS `photofolio`;
CREATE TABLE `photofolio`  (
  `photofolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `photofolio_client` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_client_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_start` date NULL DEFAULT NULL,
  `photofolio_end` date NULL DEFAULT NULL,
  `photofolio_duration` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_collection_schedulle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_waste_collected` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_audience` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `photofolio_mou` date NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`photofolio_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photofolio
-- ----------------------------
INSERT INTO `photofolio` VALUES (2, 1, 'Vida Bekasi', 'Jl. Tirta Utama No. 1, Bumiwedari, Bantar Gebang, Kota Bekasi, Jawa Barat 1715', NULL, NULL, NULL, NULL, '3 days per week', '112.000 kg/month', NULL, '2014-01-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (3, 1, 'Wisma Barito', 'Jl. Letjen. S. Parman Kav. 62-63, Slipi, Jakarta Barat, DKI Jakarta 11410', NULL, NULL, NULL, '1 year', '3 days per week', '6.922 kg/month', NULL, '2019-02-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (4, 2, 'Ikea Alam Sutra', 'l. Jalur Sutera Boulevard Kota Tangerang, Banten', NULL, NULL, NULL, '1 year', 'Every day', '25.000 kg/month', NULL, '2018-04-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (5, 2, 'Unilever Head Office', 'Grha Unilever, Green Office Park Kav 3, Jl. BSD Boulevard Barat, BSD City, Tangerang 15345', NULL, NULL, NULL, '3 year', '3 days per week', '4.698 kg/month', NULL, '2016-12-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (6, 3, 'Jakarta Land', 'World Trade Centre – WTC 5, 8th floor, Jl. Jend. Sudirman Kav. 29 Jakarta 12920', NULL, NULL, NULL, '1 year', '1 day per week', '192 kg/month', NULL, '2018-04-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (7, 3, 'Kementrian Koordinator Bidang Kemaritiman', 'Gedung BPPT 1, Lantai 3, Jalan M.H. Thamrin No. 8, Menteng, RT. 2 / RW. 1, Kb. Sirih, Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10340', NULL, NULL, NULL, '1 year', '1 days per week', '82 kg/month', NULL, '2018-04-01', '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (8, 4, 'Playfest 2019', NULL, NULL, '2019-08-24', '2019-08-25', NULL, NULL, '1.141 kg', '6000', NULL, '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (9, 4, 'DBS Bank Family Gathering', NULL, NULL, '2019-08-28', NULL, NULL, NULL, '328,6 kg', '4500', NULL, '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (10, 5, 'The Body Shop - Bring Back Our Bottle (BBOB) Program', NULL, NULL, NULL, NULL, '2015 until present', NULL, NULL, NULL, NULL, '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);
INSERT INTO `photofolio` VALUES (11, 5, 'Gojek', NULL, NULL, NULL, NULL, '2015 until present', NULL, NULL, NULL, NULL, '2019-11-19 09:12:14', '2019-11-19 09:13:10', NULL);

-- ----------------------------
-- Table structure for recomendation
-- ----------------------------
DROP TABLE IF EXISTS `recomendation`;
CREATE TABLE `recomendation`  (
  `recomendation_id` int(11) NOT NULL AUTO_INCREMENT,
  `recomendation_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `recomendation_color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `recomendation_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`recomendation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recomendation
-- ----------------------------
INSERT INTO `recomendation` VALUES (1, 'brand', '#a24495', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (2, 'bussiness-actor', '#a29244', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (3, 'company', '#a24444', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (4, 'companys-csr', '#a24444', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (5, 'consultant', '#a29244', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (6, 'distributor', '#a24444', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (7, 'event', '#a24495', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (8, 'foundation', '#68a244', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (9, 'government', '#68a244', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (10, 'hotels', '#4489a2', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (11, 'individual', '#68a244', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (12, 'office-blocks', '#68a244', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (13, 'product', '#a24495', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (14, 'researcher', '#a29244', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (15, 'residential-area/housing', '#4489a2', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (16, 'restaurants', '#a24444', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);
INSERT INTO `recomendation` VALUES (17, 'school', '#4489a2', NULL, '2019-11-16 19:47:47', '2019-11-16 21:05:12', NULL);

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `section_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `section_menu_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`section_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, 'welcome', 'welcome', 'welcome', '2019-11-20 01:16:00', '2019-11-20 01:34:59', NULL);
INSERT INTO `section` VALUES (2, 'our-achievement', 'our-achievement', NULL, '2019-11-20 01:16:00', '2019-11-20 01:35:15', NULL);
INSERT INTO `section` VALUES (3, 'about', 'about', 'about', '2019-11-20 01:16:00', '2019-11-20 01:34:59', NULL);
INSERT INTO `section` VALUES (4, 'benefit', 'benefit', 'benefit', '2019-11-20 01:16:00', '2019-11-20 01:34:59', NULL);
INSERT INTO `section` VALUES (5, 'what-you-get', 'what-you-get', 'what-you-get', '2019-11-20 01:16:00', '2019-11-20 01:34:59', NULL);
INSERT INTO `section` VALUES (6, 'waste-flow', 'waste-flow', 'waste-flow', '2019-11-20 01:16:00', '2019-11-20 01:34:59', NULL);
INSERT INTO `section` VALUES (7, 'highlight', 'highlight', 'highlight', '2019-11-20 01:16:00', '2019-11-20 01:34:59', NULL);
INSERT INTO `section` VALUES (8, 'our-client', 'our-client', 'client', '2019-11-20 01:16:00', '2019-11-20 01:35:05', NULL);
INSERT INTO `section` VALUES (9, 'recomended-for', 'recomended-for', 'recomended-for', '2019-11-20 01:16:00', '2019-11-20 01:34:59', NULL);
INSERT INTO `section` VALUES (10, 'our-coverage', 'our-coverage', 'coverage', '2019-11-20 01:16:00', '2019-11-20 01:35:06', NULL);
INSERT INTO `section` VALUES (11, 'start-your-responsible-waste-management-now', 'start-your-responsible-waste-management-now', NULL, '2019-11-20 01:16:00', '2019-11-20 01:35:12', NULL);

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
  `service_thumbnail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_page_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_join_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_proposal_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_portofolio_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `has_page` int(11) NULL DEFAULT NULL,
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
INSERT INTO `service` VALUES (1, 1, 'responsible-waste-management-basic', 'Responsible Waste Management - Basic', 'no-more-mixed-waste', 'a-100-holistic-waste-management-for-companies-bu', 'waste-generation-is-inevitable-its-not-easy-to-r', '', 'responsible-waste-management-basic.jpg', 'https://waste4change.com/official/service/responsible-waste-management-basic', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSdydu6Ar9mGKppAI4V2fevcWkLSpTpiSwdbpv0moPU4-_o3NQ/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (2, 1, 'zero-waste-to-landfill', 'Zero Waste to Landfill', 'no-more-waste-that-end-up-in-landfills', 'take-an-active-part-in-preventing-our-local-landfi', 'every-day-indonesians-are-generating-175000-tons', '', 'zero-waste-to-landfill.jpg', 'https://waste4change.com/official/service/zero-waste-to-landfill', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSemrcuqzCk4wFUtMPFFwLkJOsYSlCjoJ8GHCDdXcM7Or5YlQg/', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (3, 1, 'inorganic-waste-management', 'Inorganic Waste Management', 'from-waste-to-useful-materials', 'treat-your-inorganic-waste-the-right-way-and-make-', 'waste-is-a-relative-term-that-can-be-applied-diffe', '', 'inorganic-waste-management.jpg', 'https://waste4change.com/official/service/inorganic-waste-management', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSfgzkfJXMhuTUO4sgwpkF1PINvH7_XNBrZ84PWJD6OqghV_Eg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (4, 1, 'event-waste-management', 'Event Waste Management', 'great-event-planned-their-waste-management-beforeh', 'through-the-placement-of-segregated-waste-bins-in-', 'waste-generation-during-an-event-is-inevitable-in', '', 'event-waste-management.jpg', 'https://waste4change.com/official/service/event-waste-management', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLScFEwvyBaouF85RuuJSQpDCmGmkIIf4Hby9uo6HrZHJVSRBvw', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (5, 2, 'in-store-recycling', 'In-Store Recycling', 'support-the-recycling-of-your-brand-labeled-waste', 'increase-the-material-processing-of-brand-labelled', 'designed-to-increase-the-material-processing-from-', '', 'in-store-recycling.jpg', 'https://waste4change.com/official/service/in-store-recycling', 'https://waste4change.com/official/join', 'https://docs.google.com/forms/d/e/1FAIpQLSd8QsQoYbyTb5-8dD6r5KUFCz9BhTmBvh1c2Lla2HdlrDHFQg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (6, 3, 'solid-waste-management-research', 'Solid Waste Management Research', '', 'improve-your-solid-waste-management-by-conducting-', '', '', 'solid-waste-management-research.jpg', 'https://waste4change.com/official/service/solid-waste-management-research', 'https://waste4change.com/official/join', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (7, 4, 'community-based-implementation', 'Community-Based Implementation', '', 'we-help-our-clients-to-implement-programs-that-enc', '', '', 'community-based-implementation.jpg', 'https://waste4change.com/official/service/community-based-implementation', 'https://waste4change.com/official/join', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (8, 4, '3r-school-program', '3R School Program', '', 'designed-to-encourage-the-increasing-awareness-of-', '', '', '3r-school-program.jpg', 'https://waste4change.com/official/service/3r-school-program', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (9, 5, 'akabis-waste-management-academy', 'AKABIS (Waste Management Academy)', '', 'waste-management-education-program-that-includes-a', '', '', 'akabis-waste-management-academy.jpg', 'https://waste4change.com/official/service/akabis-waste-management-academy', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (10, 5, 'black-soldier-fly-learning-center', 'Black Soldier Fly Learning Center', '', 'receive-in-depth-information-regarding-organic-was', '', '', 'black-soldier-fly-learning-center.jpg', 'https://waste4change.com/official/service/black-soldier-fly-learning-center', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (11, 5, 'black-soldier-fly-tools-products', 'Black Soldier Fly Tools & Products', '', 'we-provide-black-soldier-fly-larvae-that-is-high-i', '', '', 'black-soldier-fly-tools-products.jpg', 'https://waste4change.com/official/service/black-soldier-fly-tools-products', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (12, 6, 'send-your-waste', 'Send Your Waste', '', 'send-your-inorganic-waste-to-waste4change-and-let-', '', '', 'send-your-waste.jpg', 'https://waste4change.com/official/service/send-your-waste', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (13, 6, 'dropbox', 'Dropbox', '', 'deposit-your-inorganic-waste-in-waste4changes-dro', '', '', 'dropbox.jpg', 'https://waste4change.com/official/service/dropbox', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (14, 6, 'sinergi-adesniatmurni-dan-gojek', 'Sinergi #AdesNiatMurni dan Gojek', '', 'send-your-used-pet-bottles-of-various-sizes-and-br', '', '', 'sinergi-adesniatmurni-dan-gojek.jpg', 'https://waste4change.com/official/service/sinergi-adesniatmurni-dan-gojek', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (15, 6, 'merchant', 'Merchant', '', 'deposit-your-used-packaging-through-our-partners-t', '', '', 'merchant.jpg', 'https://waste4change.com/official/service/merchant', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (16, 6, 'home-composting', 'Home Composting', '', 'process-your-organic-waste-at-home-with-waste4cha', '', '', 'home-composting.jpg', 'https://waste4change.com/official/service/home-composting', 'https://waste4change.com/official/join', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);

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
-- Table structure for service_section
-- ----------------------------
DROP TABLE IF EXISTS `service_section`;
CREATE TABLE `service_section`  (
  `service_section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NULL DEFAULT NULL,
  `service_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_section_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_section
-- ----------------------------
INSERT INTO `service_section` VALUES (1, 1, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (2, 1, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (3, 1, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (4, 1, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (5, 1, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (6, 1, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (7, 1, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (8, 1, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (9, 1, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (10, 1, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (11, 1, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (12, 1, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (13, 1, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (14, 1, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (15, 1, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (16, 1, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (17, 2, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (18, 2, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (19, 2, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (20, 2, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (21, 2, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (22, 2, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (23, 2, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (24, 2, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (25, 2, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (26, 2, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (27, 2, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (28, 2, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (29, 2, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (30, 2, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (31, 2, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (32, 2, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (33, 3, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (34, 3, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (35, 3, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (36, 3, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (37, 3, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (38, 3, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (39, 3, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (40, 3, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (41, 3, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (42, 3, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (43, 3, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (44, 3, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (45, 3, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (46, 3, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (47, 3, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (48, 3, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (49, 4, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (50, 4, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (51, 4, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (52, 4, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (53, 4, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (54, 4, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (55, 4, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (56, 4, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (57, 4, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (58, 4, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (59, 4, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (60, 4, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (61, 4, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (62, 4, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (63, 4, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (64, 4, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (65, 5, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (66, 5, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (67, 5, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (68, 5, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (69, 5, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (70, 5, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (71, 5, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (72, 5, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (73, 5, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (74, 5, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (75, 5, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (76, 5, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (77, 5, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (78, 5, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (79, 5, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (80, 5, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (81, 6, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (82, 6, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (83, 6, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (84, 6, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (85, 6, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (86, 6, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (87, 6, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (88, 6, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (89, 6, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (90, 6, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (91, 6, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (92, 6, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (93, 6, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (94, 6, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (95, 6, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (96, 6, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (97, 7, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (98, 7, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (99, 7, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (100, 7, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (101, 7, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (102, 7, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (103, 7, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (104, 7, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (105, 7, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (106, 7, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (107, 7, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (108, 7, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (109, 7, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (110, 7, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (111, 7, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (112, 7, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (113, 8, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (114, 8, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (115, 8, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (116, 8, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (117, 8, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (118, 8, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (119, 8, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (120, 8, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (121, 8, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (122, 8, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (123, 8, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (124, 8, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (125, 8, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (126, 8, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (127, 8, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (128, 8, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (129, 9, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (130, 9, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (131, 9, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (132, 9, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (133, 9, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (134, 9, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (135, 9, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (136, 9, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (137, 9, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (138, 9, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (139, 9, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (140, 9, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (141, 9, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (142, 9, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (143, 9, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (144, 9, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (145, 10, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (146, 10, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (147, 10, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (148, 10, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (149, 10, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (150, 10, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (151, 10, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (152, 10, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (153, 10, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (154, 10, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (155, 10, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (156, 10, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (157, 10, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (158, 10, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (159, 10, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (160, 10, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (161, 11, 1, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (162, 11, 2, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (163, 11, 3, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (164, 11, 4, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (165, 11, 5, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (166, 11, 6, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (167, 11, 7, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (168, 11, 8, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (169, 11, 9, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (170, 11, 10, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (171, 11, 11, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (172, 11, 12, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (173, 11, 13, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (174, 11, 14, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (175, 11, 15, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);
INSERT INTO `service_section` VALUES (176, 11, 16, '2019-11-20 01:37:17', '2019-11-20 01:37:17', NULL);

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
