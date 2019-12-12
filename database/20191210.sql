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

 Date: 10/12/2019 03:09:34
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
  `achievement_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`achievement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of achievement
-- ----------------------------
INSERT INTO `achievement` VALUES (4, 1, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:54', NULL);
INSERT INTO `achievement` VALUES (5, 1, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (6, 1, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (7, 2, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (8, 2, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (9, 2, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (10, 3, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (11, 3, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (12, 3, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (13, 4, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (14, 4, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (15, 4, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (16, 18, 'analysis-and-recommendations-to-implement-a-respon', '', 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (17, 18, 'identification-of-waste-management-method-that-is-', '', 'wastebin-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (18, 18, 'written-report-and-presentation-of-3r-based-waste-', '', 'report-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (19, 19, 'data-collection-activities-were-done-through-inter', '', 'research-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (20, 19, 'analyzed-the-current-management-system-by-identify', '', 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (21, 20, 'key-players-and-stakeholders-mapping', '', 'mark-location-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (22, 20, 'comprehensive-waste-flow-analysis-of-jakarta-and-s', '', 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (23, 20, 'identification-of-recycling-rate-in-jakarta-and-su', '', 'report-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (24, 20, 'solid-waste-management-swot-analysis-of-jakarta-an', '', 'flow-m.ong', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (25, 21, 'retrieved-better-understanding-on-the-total-amount', '', 'idea-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (26, 21, 'published-paper-regarding-the-project-can-be-found', '', 'report-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (27, 22, 'solid-waste-characteristics-and-solid-waste-existi', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (28, 22, 'solid-waste-supply-plan-review-and-its-possible-di', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (29, 22, 'suitability-study-of-the-current-site-for-waste-to', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (30, 23, 'increased-awareness-and-action-of-employees-toward', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (31, 23, 'increased-segregation-rate', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (32, 23, 'decreased-residual-waste-generation', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (33, 23, 'increased-economic-incentives-from-composting', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (34, 24, 'reports-containing-progress-activities-lessons-le', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (35, 24, 'proceedings-of-workshop-consignment-proceedings', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (36, 24, 'video-and-audio-visual-documentation-of-monitoring', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (37, 25, 'the-formation-of-eco-ranger:-a-group-of-local-peop', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (38, 25, 'technical-assistance-capacity-building-connectin', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (39, 26, 'waste-management-education-to-local-communities-an', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (40, 26, 'technical-guideline-of-organic-and-inorganic-waste', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (41, 26, 'formation-of-organization-and-follow-up-work-plan', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (42, 27, 'forming-the-task-force-which-in-charge-of-increasi', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (43, 27, 'organizing-education-events-which-are-akabis-clas', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (44, 27, 'each-school-was-expected-to-be-able-to-carry-on-th', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (45, 28, 'sharing-session:-why-we-need-to-be-responsible-for', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (46, 28, 'presentation-session:-how-can-we-conduct-responsib', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (47, 28, 'interactive-games?', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (48, 29, 'open-discussion-with-fellow-panels-and-audiences-o', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (49, 29, 'the-importance-of-responsible-solid-waste-manageme', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (50, 29, 'how-to-handle-and-treat-waste-responsibly-and-sust', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (51, 29, 'how-to-mitigate-adverse-effects-of-waste-for-human', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (52, 30, 'shock-moment:-all-participants-are-invited-to-see-', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (53, 30, 'o-moment:-responsible-waste-management-presentati', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (54, 30, 'facility-tour:-visiting-w4cs-facilities-includin', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (55, 31, 'shock-moment:-all-participants-are-invited-to-see-', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (56, 31, 'o-moment:-responsible-waste-management-presentati', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (57, 31, 'facility-tour:-visiting-w4cs-facilities-includin', '', '', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `activity_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `activity_description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `activity_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`activity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, 9, 'phase-1', 'raising-awareness-through-akabis', 'report-m.png', '2019-12-07 22:40:22', '2019-12-10 00:55:19', NULL);
INSERT INTO `activity` VALUES (2, 9, 'phase-2', 'forming-task-force-planning-capacity-building-a', 'loadspeaker-m.png', '2019-12-07 22:40:22', '2019-12-10 00:55:44', NULL);

-- ----------------------------
-- Table structure for benefit
-- ----------------------------
DROP TABLE IF EXISTS `benefit`;
CREATE TABLE `benefit`  (
  `benefit_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `benefit_category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `benefit_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `benefit_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`benefit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of benefit
-- ----------------------------
INSERT INTO `benefit` VALUES (1, 1, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (2, 1, 'general', 'zero-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (3, 1, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (4, 1, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (5, 1, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (6, 2, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (7, 2, 'general', 'zero-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (8, 2, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (9, 2, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (10, 2, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (11, 3, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (12, 3, 'general', 'reduce-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (13, 3, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (14, 3, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (15, 3, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (16, 4, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (17, 4, 'general', 'reduce-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (18, 4, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (19, 4, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (20, 4, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (21, 5, 'general', 'zero-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (22, 5, 'general', 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (23, 5, 'general', 'waste-journey-report', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (24, 5, 'general', 'help-to-increase-recycling-rate', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (25, 6, 'general', 'zero-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (26, 6, 'general', 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (27, 6, 'general', 'wider-reach', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (28, 6, 'general', 'meet-the-needs-of-your-brand-customers-in-more-loc', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (29, 6, 'general', 'waste-journey-report', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (30, 6, 'general', 'help-to-increase-recycling-rate', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL);
INSERT INTO `benefit` VALUES (31, 9, 'for-client', 'the-real-action-in-encouraging-the-implementation-', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL);
INSERT INTO `benefit` VALUES (32, 9, 'for-client', 'supporting-the-green-concept-of-our-clients-brand', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL);
INSERT INTO `benefit` VALUES (33, 9, 'for-school', 'increased-knowledge-and-capacity-of-students-and-t', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL);
INSERT INTO `benefit` VALUES (34, 9, 'for-school', 'schools-can-contribute-to-supporting-and-executing', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL);
INSERT INTO `benefit` VALUES (35, 9, 'for-school', 'available-for-every-school-located-in-indonesia-w', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL);
INSERT INTO `benefit` VALUES (36, 9, 'for-school', 'for-schools-located-in-jakarta-we-help-to-support', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL);

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `client_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `client_logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (1, 1, 'Binus School', 'Binus-School.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (2, 1, 'Javara', 'Javara.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (3, 1, 'Mang Kabayan', 'Mang-Kabayan.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (4, 1, 'Seniman Pangan', 'Seniman-Pangan.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (5, 1, 'Wisma Barito', 'Wisma-Barito.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (6, 2, 'Danone', 'Danone.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (7, 2, 'DBS', 'DBS.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (8, 2, 'Decathlon', 'Decathlon.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (9, 2, 'Gojek', 'Gojek.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (10, 2, 'IKEA', 'IKEA.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (11, 2, 'L Oreal', 'L-Oreal.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (12, 2, 'Potato Head', 'Potato-Head.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (13, 2, 'PUPR', 'PUPR.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (14, 2, 'RSPO', 'RSPO.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (15, 2, 'Ruang Selatan', 'Ruang-Selatan.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (16, 2, 'Sudarman 7.8', 'Sudarman-7.8.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (17, 2, 'The Body Shop ', 'The-Body-Shop-.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (18, 2, 'World Bank', 'World-Bank.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (19, 2, 'Young Living', 'Young-Living.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (20, 3, 'Climate Policy Initiative', 'Climate-Policy-Initiative.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (21, 3, 'Jakarta Land', 'Jakarta-Land.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (22, 3, 'Kemenko Maritim', 'Kemenko-Maritim.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (23, 3, 'The Vida Kebon Jeruk', 'The-Vida-Kebon-Jeruk.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (24, 3, 'Think Web', 'Think-Web.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (25, 4, 'Cimb Niaga', 'Cimb-Niaga.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (26, 4, 'Ismaya Group', 'Ismaya-Group.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (27, 4, 'Jakarta Fashion Week', 'Jakarta-Fashion-Week.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (28, 4, 'Jakpro', 'Jakpro.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (29, 4, 'Narasi TV ', 'Narasi-TV-.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (30, 4, 'Nestle', 'Nestle.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (31, 4, 'Pertamina', 'Pertamina.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (32, 4, 'The Body Shop ', 'The-Body-Shop-.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (33, 4, 'Wardah', 'Wardah.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (34, 5, 'By Lizzie Parra', 'By-Lizzie-Parra.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (35, 5, 'Djournal', 'Djournal.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (36, 5, 'Gojek', 'Gojek.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (37, 5, 'Love Beauty Planet', 'Love-Beauty-Planet.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (38, 5, 'Nescafe Dolce Gusto', 'Nescafe-Dolce-Gusto.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (39, 5, 'Potato Head', 'Potato-Head.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (40, 5, 'Tetrapak', 'Tetrapak.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (41, 5, 'The Body Shop ', 'The-Body-Shop-.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (42, 5, 'Trave', 'Trave.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (43, 5, 'Wardah', 'Wardah.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (44, 5, 'Yara', 'Yara.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (45, 5, 'Young Living', 'Young-Living.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (46, 6, 'Lifebuoy', 'Lifebuoy.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (47, 6, 'Ades', 'Ades.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (48, 7, 'Bappenas', 'Bappenas.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (49, 7, 'Deloitte', 'Deloitte.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (50, 7, 'GA Circular', 'GA-Circular.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (51, 7, 'Kemenko Maritim', 'Kemenko-Maritim.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (52, 7, 'KLHK RI', 'KLHK-RI.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (53, 7, 'PT Nestle Indonesia', 'PT-Nestle-Indonesia.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (54, 7, 'PT Tirta Inverstama', 'PT-Tirta-Inverstama.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (55, 7, 'PUPR', 'PUPR.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (56, 7, 'World Bank', 'World-Bank.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (57, 8, 'Indonesia Power', 'Indonesia-Power.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (58, 8, 'AHT Group', 'AHT-Group.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (59, 8, 'BNI', 'BNI.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (60, 8, 'GA Circular', 'GA-Circular.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (61, 8, 'PT Nestle Indonesia', 'PT-Nestle-Indonesia.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (62, 8, 'PUPR', 'PUPR.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (63, 9, 'DBS', 'DBS.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (64, 9, 'Tetrapak', 'Tetrapak.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (65, 9, 'Yayasan Unilever', 'Yayasan-Unilever.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (66, 10, 'Sharp', 'Sharp.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);
INSERT INTO `client` VALUES (67, 10, 'Yayasan Unilever', 'Yayasan-Unilever.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `dictionary_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dictionary_content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `dictionary_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dictionary_type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dictionary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 625 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'en', 'Lorem Ipsum', 'short-lorem', 'global');
INSERT INTO `dictionary` VALUES (2, 'id', 'Lorem Ipsum', 'short-lorem', 'global');
INSERT INTO `dictionary` VALUES (3, 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl', 'medium-lorem', 'global');
INSERT INTO `dictionary` VALUES (4, 'id', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl', 'medium-lorem', 'global');
INSERT INTO `dictionary` VALUES (5, 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl. Ut viverra orci volutpat dolor dignissim, eget pretium justo consequat. Maecenas at mauris vitae eros elementum rutrum id in orci. ', 'long-lorem', 'global');
INSERT INTO `dictionary` VALUES (6, 'id', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl. Ut viverra orci volutpat dolor dignissim, eget pretium justo consequat. Maecenas at mauris vitae eros elementum rutrum id in orci. ', 'long-lorem', 'global');
INSERT INTO `dictionary` VALUES (7, 'en', 'Service', 'service', 'global');
INSERT INTO `dictionary` VALUES (8, 'id', 'Servis', 'service', 'global');
INSERT INTO `dictionary` VALUES (9, 'en', 'For company', 'for-company', 'home');
INSERT INTO `dictionary` VALUES (10, 'id', 'Perusahaan', 'for-company', 'home');
INSERT INTO `dictionary` VALUES (11, 'en', 'For Individual', 'for-individual', 'home');
INSERT INTO `dictionary` VALUES (12, 'id', 'Individu', 'for-individual', 'home');
INSERT INTO `dictionary` VALUES (13, 'en', 'About', 'about', 'global');
INSERT INTO `dictionary` VALUES (14, 'id', 'Tentang Kami', 'about', 'global');
INSERT INTO `dictionary` VALUES (15, 'en', 'Blog', 'blog', 'global');
INSERT INTO `dictionary` VALUES (16, 'id', 'Blog', 'blog', 'global');
INSERT INTO `dictionary` VALUES (17, 'en', 'Contact', 'contact', 'global');
INSERT INTO `dictionary` VALUES (18, 'id', 'Kontak', 'contact', 'global');
INSERT INTO `dictionary` VALUES (19, 'en', 'Language', 'language', 'global');
INSERT INTO `dictionary` VALUES (20, 'id', 'Bahasa', 'language', 'global');
INSERT INTO `dictionary` VALUES (21, 'en', 'It is time to', 'it-is-time-to', 'home');
INSERT INTO `dictionary` VALUES (22, 'id', 'Waktunya', 'it-is-time-to', 'home');
INSERT INTO `dictionary` VALUES (23, 'en', 'Responsibly', 'responsibly', 'home');
INSERT INTO `dictionary` VALUES (24, 'id', 'Bertanggung Jawab', 'responsibly', 'home');
INSERT INTO `dictionary` VALUES (25, 'en', 'Manage Your Waste', 'manage-your-waste', 'home');
INSERT INTO `dictionary` VALUES (26, 'id', 'Mengelola Sampah', 'manage-your-waste', 'home');
INSERT INTO `dictionary` VALUES (27, 'en', 'With Waste4Change', 'with-waste4change', 'home');
INSERT INTO `dictionary` VALUES (28, 'id', 'Bersama Waste4Change', 'with-waste4change', 'home');
INSERT INTO `dictionary` VALUES (29, 'en', 'In', 'in', 'home');
INSERT INTO `dictionary` VALUES (30, 'id', 'Secara', 'in', 'home');
INSERT INTO `dictionary` VALUES (31, 'en', 'Available services for your location :', 'available-services-for-your-location-:', 'global');
INSERT INTO `dictionary` VALUES (32, 'id', 'Servis yang tersedia di kota Anda :', 'available-services-for-your-location-:', 'global');
INSERT INTO `dictionary` VALUES (33, 'en', 'Enter Location', 'enter-location', 'global');
INSERT INTO `dictionary` VALUES (34, 'id', 'Masukkan nama kota', 'enter-location', 'global');
INSERT INTO `dictionary` VALUES (35, 'en', 'Search', 'search', 'global');
INSERT INTO `dictionary` VALUES (36, 'id', 'Cari', 'search', 'global');
INSERT INTO `dictionary` VALUES (37, 'en', 'Cannot found the solution you are looking for?', 'cannot-found-the-solution-you-are-looking-for?', 'global');
INSERT INTO `dictionary` VALUES (38, 'id', 'Tidak Dapat Menemukan Solusi Yang Anda Cari?', 'cannot-found-the-solution-you-are-looking-for?', 'global');
INSERT INTO `dictionary` VALUES (39, 'en', 'ALL SERVICES', 'all-services', 'global');
INSERT INTO `dictionary` VALUES (40, 'id', 'Semua Service', 'all-services', 'global');
INSERT INTO `dictionary` VALUES (41, 'en', 'TALK TO OUR EXPERT', 'talk-to-our-expert', 'global');
INSERT INTO `dictionary` VALUES (42, 'id', 'Hubungi Kami', 'talk-to-our-expert', 'global');
INSERT INTO `dictionary` VALUES (43, 'en', 'OUR ACHIEVEMENT', 'our-achievement', 'global');
INSERT INTO `dictionary` VALUES (44, 'id', 'PENCAPAIAN KAMI', 'our-achievement', 'global');
INSERT INTO `dictionary` VALUES (45, 'en', 'We create an ecosystem of responsible waste management in Indonesia', 'we-create-an-ecosystem-of-responsible-waste-manage', 'home');
INSERT INTO `dictionary` VALUES (46, 'id', 'Kami menciptakan ekosistem pengelolaan sampah yang bertanggung jawab di Indonesia', 'we-create-an-ecosystem-of-responsible-waste-manage', 'home');
INSERT INTO `dictionary` VALUES (47, 'en', 'Clients', 'clients', 'global');
INSERT INTO `dictionary` VALUES (48, 'id', 'Klien', 'clients', 'global');
INSERT INTO `dictionary` VALUES (49, 'en', 'Projects', 'projects', 'global');
INSERT INTO `dictionary` VALUES (50, 'id', 'Proyek', 'projects', 'global');
INSERT INTO `dictionary` VALUES (51, 'en', 'Partners', 'partners', 'home');
INSERT INTO `dictionary` VALUES (52, 'id', 'Partner', 'partners', 'home');
INSERT INTO `dictionary` VALUES (53, 'en', 'MORE ABOUT US', 'more-about-us', 'global');
INSERT INTO `dictionary` VALUES (54, 'id', 'Tentang Kami', 'more-about-us', 'global');
INSERT INTO `dictionary` VALUES (55, 'en', 'CLIENT AND PARTNER', 'client-and-partner', 'global');
INSERT INTO `dictionary` VALUES (56, 'id', 'KLIEN DAN PARTNER', 'client-and-partner', 'global');
INSERT INTO `dictionary` VALUES (57, 'en', 'TESTIMONIAL', 'testimonial', 'global');
INSERT INTO `dictionary` VALUES (58, 'id', 'TESTIMONI', 'testimonial', 'global');
INSERT INTO `dictionary` VALUES (59, 'en', 'The report from Waste4Change has really helped us to improve our communication and education system towards our employees', 'the-report-from-waste4change-has-really-helped-us-', 'home-testimonial');
INSERT INTO `dictionary` VALUES (60, 'id', 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan', 'the-report-from-waste4change-has-really-helped-us-', 'home-testimonial');
INSERT INTO `dictionary` VALUES (61, 'en', 'Waste4Change is more than just a partner, but also a learning buddy. They taught us how to make internal procedures', 'waste4change-is-more-than-just-a-partner-but-also', 'home-testimonial');
INSERT INTO `dictionary` VALUES (62, 'id', 'W4C lebih dari sekedar company partner tapi seperti teman belajar. Mereka mengajari kami cara membuat prosedur internal', 'waste4change-is-more-than-just-a-partner-but-also', 'home-testimonial');
INSERT INTO `dictionary` VALUES (63, 'en', 'I am very thrilled to be working with Waste4Change because they communicate openly and respond promptly', 'i-am-very-thrilled-to-be-working-with-waste4change', 'home-testimonial');
INSERT INTO `dictionary` VALUES (64, 'id', 'Saya senang sekali bisa bekerjasama dengan Waste4Change karena punya komunikasi yang terbuka dan cepat menanggap', 'i-am-very-thrilled-to-be-working-with-waste4change', 'home-testimonial');
INSERT INTO `dictionary` VALUES (65, 'en', 'BLOG AND NEWS', 'blog-and-news', 'home');
INSERT INTO `dictionary` VALUES (66, 'id', 'Blog Dan Berita', 'blog-and-news', 'home');
INSERT INTO `dictionary` VALUES (67, 'en', 'READ MORE', 'read-more', 'home');
INSERT INTO `dictionary` VALUES (68, 'id', 'SELENGKAPNYA', 'read-more', 'home');
INSERT INTO `dictionary` VALUES (69, 'en', 'Find? ?more? ?content? ?about? ?responsible? ?waste? ?management? ?and? ?green? ?lifestyle? ?in? ?our? ?Blog? ?&? ?News page?', 'find?-?more?-?content?-?about?-?responsible?-?wast', 'global');
INSERT INTO `dictionary` VALUES (70, 'id', 'Temukan lebih banyak konten mengenai pengelolaan sampah yang bertanggung jawab dan gaya hidup ramah lingkungan di halaman Blog dan Berita kami', 'find?-?more?-?content?-?about?-?responsible?-?wast', 'global');
INSERT INTO `dictionary` VALUES (71, 'en', 'MORE ARTICLE', 'more-article', 'global');
INSERT INTO `dictionary` VALUES (72, 'id', 'LEBIH BANYAK ARTIKEL', 'more-article', 'global');
INSERT INTO `dictionary` VALUES (73, 'en', 'SPREAD THE GOOD NEWS', 'spread-the-good-news', 'global');
INSERT INTO `dictionary` VALUES (74, 'id', 'SEBARKAN BERITA BAIK INI', 'spread-the-good-news', 'global');
INSERT INTO `dictionary` VALUES (75, 'en', 'Share? on your social media? ?&? ?create impact for your? ?environment?', 'share?-on-your-social-media?-??-?create-impact-fo', 'global');
INSERT INTO `dictionary` VALUES (76, 'id', 'Bagikan kami di media sosial Anda dan ciptakan dampak yang positif di lingkungan sekitar', 'share?-on-your-social-media?-??-?create-impact-fo', 'global');
INSERT INTO `dictionary` VALUES (77, 'en', 'Ready? ?to? ?start? ?your? <strong>Responsible? Waste? ?Management??</strong>', 'ready?-?to?-?start?-?your?-<strong>responsible?-wa', 'global');
INSERT INTO `dictionary` VALUES (78, 'id', 'Siap memulai <strong>Pengelolaan Sampah yang Bertanggung Jawab?</strong>', 'ready?-?to?-?start?-?your?-<strong>responsible?-wa', 'global');
INSERT INTO `dictionary` VALUES (79, 'en', 'GET STARTED', 'get-started', 'global');
INSERT INTO `dictionary` VALUES (80, 'id', 'MULAI SEKARANG', 'get-started', 'global');
INSERT INTO `dictionary` VALUES (81, 'en', 'Career', 'career', 'global');
INSERT INTO `dictionary` VALUES (82, 'id', 'Karier', 'career', 'global');
INSERT INTO `dictionary` VALUES (83, 'en', 'Internship', 'internship', 'global');
INSERT INTO `dictionary` VALUES (84, 'id', 'Magang', 'internship', 'global');
INSERT INTO `dictionary` VALUES (85, 'en', 'Choose the right solution', 'choose-the-right-solution', 'all-service');
INSERT INTO `dictionary` VALUES (86, 'id', 'Pilih solusi terbaik untuk', 'choose-the-right-solution', 'all-service');
INSERT INTO `dictionary` VALUES (87, 'en', 'for your business', 'for-your-business', 'all-service');
INSERT INTO `dictionary` VALUES (88, 'id', 'permasalahan sampah Anda', 'for-your-business', 'all-service');
INSERT INTO `dictionary` VALUES (89, 'en', 'ALL', 'all', 'global');
INSERT INTO `dictionary` VALUES (90, 'id', 'Semua', 'all', 'global');
INSERT INTO `dictionary` VALUES (91, 'en', 'GET PROPOSAL', 'get-proposal', 'global');
INSERT INTO `dictionary` VALUES (92, 'id', 'Dapatkan Proposal', 'get-proposal', 'global');
INSERT INTO `dictionary` VALUES (93, 'en', 'Home', 'home', 'global');
INSERT INTO `dictionary` VALUES (94, 'id', 'Beranda', 'home', 'global');
INSERT INTO `dictionary` VALUES (95, 'en', 'For this type of service, Waste4Change provides the facilities as follows:', 'for-this-type-of-service-waste4change-provides-th', 'global');
INSERT INTO `dictionary` VALUES (96, 'id', 'Untuk servis ini, Waste4Change menyediakan fasilitas sebagai berikut', 'for-this-type-of-service-waste4change-provides-th', 'global');
INSERT INTO `dictionary` VALUES (97, 'en', 'Average of waste collected', 'average-of-waste-collected', 'project_highlight');
INSERT INTO `dictionary` VALUES (98, 'id', 'Rerata Volume Sampah yang Diangkut', 'average-of-waste-collected', 'project_highlight');
INSERT INTO `dictionary` VALUES (99, 'en', 'MoU Signed', 'mou-signed', 'project_highlight');
INSERT INTO `dictionary` VALUES (100, 'id', 'Penandatanganan MoU', 'mou-signed', 'project_highlight');
INSERT INTO `dictionary` VALUES (101, 'en', 'Collection Schedule', 'collection-schedule', 'project_highlight');
INSERT INTO `dictionary` VALUES (102, 'id', 'Jadwal Pengangkutan', 'collection-schedule', 'project_highlight');
INSERT INTO `dictionary` VALUES (103, 'en', 'kg/month', 'kgmonth', 'project_highlight');
INSERT INTO `dictionary` VALUES (104, 'id', 'Kg / Bulan', 'kgmonth', 'project_highlight');
INSERT INTO `dictionary` VALUES (105, 'en', 'kg', 'kg', 'global');
INSERT INTO `dictionary` VALUES (106, 'id', 'Kg', 'kg', 'global');
INSERT INTO `dictionary` VALUES (107, 'en', 'pcs', 'pcs', 'global');
INSERT INTO `dictionary` VALUES (108, 'id', 'pcs', 'pcs', 'global');
INSERT INTO `dictionary` VALUES (109, 'en', 'days per week', 'days-per-week', 'project_highlight');
INSERT INTO `dictionary` VALUES (110, 'id', 'Hari Per Minggu', 'days-per-week', 'project_highlight');
INSERT INTO `dictionary` VALUES (111, 'en', 'year', 'year', 'global');
INSERT INTO `dictionary` VALUES (112, 'id', 'Tahun', 'year', 'global');
INSERT INTO `dictionary` VALUES (113, 'en', 'month', 'month', 'global');
INSERT INTO `dictionary` VALUES (114, 'id', 'Bulan', 'month', 'global');
INSERT INTO `dictionary` VALUES (115, 'en', 'day', 'day', 'global');
INSERT INTO `dictionary` VALUES (116, 'id', 'Hari', 'day', 'global');
INSERT INTO `dictionary` VALUES (117, 'en', 'Every day', 'every-day', 'project_highlight');
INSERT INTO `dictionary` VALUES (118, 'id', 'Setiap hari', 'every-day', 'project_highlight');
INSERT INTO `dictionary` VALUES (119, 'en', 'Start your', 'start-your', 'service_cta');
INSERT INTO `dictionary` VALUES (120, 'id', 'Mulai', 'start-your', 'service_cta');
INSERT INTO `dictionary` VALUES (121, 'en', 'now!', 'now!', 'service_cta');
INSERT INTO `dictionary` VALUES (122, 'id', 'Anda sekarang juga!', 'now!', 'service_cta');
INSERT INTO `dictionary` VALUES (123, 'en', 'ENROLL THE CLASS', 'enroll-the-class', 'service_cta');
INSERT INTO `dictionary` VALUES (124, 'id', 'MULAI SEKARANG', 'enroll-the-class', 'service_cta');
INSERT INTO `dictionary` VALUES (125, 'en', 'Welcome', 'welcome', 'section');
INSERT INTO `dictionary` VALUES (126, 'id', 'Selamat datang', 'welcome', 'section');
INSERT INTO `dictionary` VALUES (127, 'en', 'Header', 'header', 'section');
INSERT INTO `dictionary` VALUES (128, 'id', 'Header', 'header', 'section');
INSERT INTO `dictionary` VALUES (129, 'en', 'Description', 'description', 'section');
INSERT INTO `dictionary` VALUES (130, 'id', 'Deskripsi', 'description', 'section');
INSERT INTO `dictionary` VALUES (131, 'en', 'Achievement/ Deliverables', 'achievement-deliverable', 'section');
INSERT INTO `dictionary` VALUES (132, 'id', 'Prestasi / Deverables', 'achievement-deliverable', 'section');
INSERT INTO `dictionary` VALUES (133, 'en', 'We Offer', 'we-offer', 'section');
INSERT INTO `dictionary` VALUES (134, 'id', 'Kami menawarkan', 'we-offer', 'section');
INSERT INTO `dictionary` VALUES (135, 'en', 'Activities', 'activities', 'section');
INSERT INTO `dictionary` VALUES (136, 'id', 'Kegiatan', 'activities', 'section');
INSERT INTO `dictionary` VALUES (137, 'en', 'Benefit', 'benefit', 'section');
INSERT INTO `dictionary` VALUES (138, 'id', 'Keunungan', 'benefit', 'section');
INSERT INTO `dictionary` VALUES (139, 'en', 'Expertise And Experience', 'expertise-and-experience', 'section');
INSERT INTO `dictionary` VALUES (140, 'id', 'Keahlian Dan Pengalaman', 'expertise-and-experience', 'section');
INSERT INTO `dictionary` VALUES (141, 'en', 'Output & Benefit', 'output-benefit', 'section');
INSERT INTO `dictionary` VALUES (142, 'id', 'Output & Benefit', 'output-benefit', 'section');
INSERT INTO `dictionary` VALUES (143, 'en', 'What You Get', 'what-you-get', 'section');
INSERT INTO `dictionary` VALUES (144, 'id', 'Yang Anda Dapat', 'what-you-get', 'section');
INSERT INTO `dictionary` VALUES (145, 'en', 'Waste Flow', 'waste-flow', 'section');
INSERT INTO `dictionary` VALUES (146, 'id', 'Arus limbah', 'waste-flow', 'section');
INSERT INTO `dictionary` VALUES (147, 'en', 'Photofolio Highlight', 'photofolio-highlight', 'section');
INSERT INTO `dictionary` VALUES (148, 'id', 'Portofolio Highlight', 'portofolio-highlight', 'section');
INSERT INTO `dictionary` VALUES (149, 'en', 'Research Hightlight', 'research-hightlight', 'section');
INSERT INTO `dictionary` VALUES (150, 'id', 'penelitian Hightlight', 'research-hightlight', 'section');
INSERT INTO `dictionary` VALUES (151, 'en', 'Program Highlight', 'program-highlight', 'section');
INSERT INTO `dictionary` VALUES (152, 'id', 'Program Highlight', 'program-highlight', 'section');
INSERT INTO `dictionary` VALUES (153, 'en', 'Similar Project', 'similar-project', 'section');
INSERT INTO `dictionary` VALUES (154, 'id', 'serupa Proyek', 'similar-project', 'section');
INSERT INTO `dictionary` VALUES (155, 'en', 'Our Client', 'our-client', 'section');
INSERT INTO `dictionary` VALUES (156, 'id', 'Klien kami', 'our-client', 'section');
INSERT INTO `dictionary` VALUES (157, 'en', 'Recomended For', 'recomended-for', 'section');
INSERT INTO `dictionary` VALUES (158, 'id', 'Direcomendasikan Untuk', 'recomended-for', 'section');
INSERT INTO `dictionary` VALUES (159, 'en', 'Our Coverage', 'our-coverage', 'section');
INSERT INTO `dictionary` VALUES (160, 'id', 'Cakupan kami', 'our-coverage', 'section');
INSERT INTO `dictionary` VALUES (161, 'en', 'CTA', 'cta', 'section');
INSERT INTO `dictionary` VALUES (162, 'id', 'CTA', 'cta', 'section');
INSERT INTO `dictionary` VALUES (163, 'en', 'Expertise and Experiences', 'expertise-and-experiences', 'section');
INSERT INTO `dictionary` VALUES (164, 'id', 'Keahlian dan Pengalaman', 'expertise-and-experiences', 'section');
INSERT INTO `dictionary` VALUES (165, 'en', 'Highlight', 'highlight', 'section');
INSERT INTO `dictionary` VALUES (166, 'id', 'Rekam Jejak', 'highlight', 'section');
INSERT INTO `dictionary` VALUES (167, 'en', 'Client', 'client', 'section');
INSERT INTO `dictionary` VALUES (168, 'id', 'Klien', 'client', 'section');
INSERT INTO `dictionary` VALUES (169, 'en', 'Coverage', 'coverage', 'section');
INSERT INTO `dictionary` VALUES (170, 'id', 'Jangkauan', 'coverage', 'section');
INSERT INTO `dictionary` VALUES (171, 'en', 'SWM Research In Institutions', 'swm-research-in-institutions', 'service_category_name');
INSERT INTO `dictionary` VALUES (172, 'id', 'SWM Research In Institutions', 'swm-research-in-institutions', 'service_category_name');
INSERT INTO `dictionary` VALUES (173, 'en', 'SWM Research In Municipalities', 'swm-research-in-municipalities', 'service_category_name');
INSERT INTO `dictionary` VALUES (174, 'id', 'SWM Research In Municipalities', 'swm-research-in-municipalities', 'service_category_name');
INSERT INTO `dictionary` VALUES (175, 'en', 'Value Chain Analysis', 'value-chain-analysis', 'service_category_name');
INSERT INTO `dictionary` VALUES (176, 'id', 'Value Chain Analysis', 'value-chain-analysis', 'service_category_name');
INSERT INTO `dictionary` VALUES (177, 'en', 'Marine Debris Study', 'marine-debris-study', 'service_category_name');
INSERT INTO `dictionary` VALUES (178, 'id', 'Marine Debris Study', 'marine-debris-study', 'service_category_name');
INSERT INTO `dictionary` VALUES (179, 'en', 'Waste To Energy Study', 'waste-to-energy-study', 'service_category_name');
INSERT INTO `dictionary` VALUES (180, 'id', 'Waste To Energy Study', 'waste-to-energy-study', 'service_category_name');
INSERT INTO `dictionary` VALUES (181, 'en', 'Community Assistance In Institutions', 'community-assistance-in-institutions', 'service_category_name');
INSERT INTO `dictionary` VALUES (182, 'id', 'Community Assistance In Institutions', 'community-assistance-in-institutions', 'service_category_name');
INSERT INTO `dictionary` VALUES (183, 'en', 'Community Assistance In Municipalities', 'community-assistance-in-municipalities', 'service_category_name');
INSERT INTO `dictionary` VALUES (184, 'id', 'Community Assistance Di Daerah', 'community-assistance-in-municipalities', 'service_category_name');
INSERT INTO `dictionary` VALUES (185, 'en', 'Community Assistance In Tourism Sites', 'community-assistance-in-tourism-sites', 'service_category_name');
INSERT INTO `dictionary` VALUES (186, 'id', 'Community Assistance di Destinasi Wisata', 'community-assistance-in-tourism-sites', 'service_category_name');
INSERT INTO `dictionary` VALUES (187, 'en', 'Capacity Building', 'capacity-building', 'service_category_name');
INSERT INTO `dictionary` VALUES (188, 'id', 'Capacity Building', 'capacity-building', 'service_category_name');
INSERT INTO `dictionary` VALUES (189, 'en', '3r School Program', '3r-school-program', 'service_category_name');
INSERT INTO `dictionary` VALUES (190, 'id', '3r School Program', '3r-school-program', 'service_category_name');
INSERT INTO `dictionary` VALUES (191, 'en', 'AKABIS Class For Institution', 'akabis-class-for-institution', 'service_category_name');
INSERT INTO `dictionary` VALUES (192, 'id', 'AKABIS Class untuk Institusi', 'akabis-class-for-institution', 'service_category_name');
INSERT INTO `dictionary` VALUES (193, 'en', 'AKABIS Class For Public', 'akabis-class-for-public', 'service_category_name');
INSERT INTO `dictionary` VALUES (194, 'id', 'AKABIS Class untuk Umum', 'akabis-class-for-public', 'service_category_name');
INSERT INTO `dictionary` VALUES (195, 'en', 'AKABIS Xperience For Institution', 'akabis-xperience-for-institution', 'service_category_name');
INSERT INTO `dictionary` VALUES (196, 'id', 'AKABIS Xperience untuk Institusi', 'akabis-xperience-for-institution', 'service_category_name');
INSERT INTO `dictionary` VALUES (197, 'en', 'AKABIS Xperience For Public', 'akabis-xperience-for-public', 'service_category_name');
INSERT INTO `dictionary` VALUES (198, 'id', 'AKABIS Xperience untuk Umum', 'akabis-xperience-for-public', 'service_category_name');
INSERT INTO `dictionary` VALUES (199, 'en', 'Responsible Waste Management - Basic', 'responsible-waste-management-basic', 'service_name');
INSERT INTO `dictionary` VALUES (200, 'id', 'Responsible Waste Management - Basic', 'responsible-waste-management-basic', 'service_name');
INSERT INTO `dictionary` VALUES (201, 'en', 'Zero Waste to Landfill', 'zero-waste-to-landfill', 'service_name');
INSERT INTO `dictionary` VALUES (202, 'id', 'Zero Waste to Landfill', 'zero-waste-to-landfill', 'service_name');
INSERT INTO `dictionary` VALUES (203, 'en', 'Inorganic Waste Management', 'inorganic-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (204, 'id', 'Inorganic Waste Management', 'inorganic-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (205, 'en', 'Event Waste Management', 'event-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (206, 'id', 'Event Waste Management', 'event-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (207, 'en', 'In-Store Recycling', 'in-store-recycling', 'service_name');
INSERT INTO `dictionary` VALUES (208, 'id', 'In-Store Recycling', 'in-store-recycling', 'service_name');
INSERT INTO `dictionary` VALUES (209, 'en', 'Digital EPR', 'digital-epr', 'service_name');
INSERT INTO `dictionary` VALUES (210, 'id', 'Digital EPR', 'digital-epr', 'service_name');
INSERT INTO `dictionary` VALUES (211, 'en', 'Solid Waste Management Research', 'solid-waste-management-research', 'service_name');
INSERT INTO `dictionary` VALUES (212, 'id', 'Solid Waste Management Research', 'solid-waste-management-research', 'service_name');
INSERT INTO `dictionary` VALUES (213, 'en', 'Community-Based Implementation', 'community-based-implementation', 'service_name');
INSERT INTO `dictionary` VALUES (214, 'id', 'Community-Based Implementation', 'community-based-implementation', 'service_name');
INSERT INTO `dictionary` VALUES (215, 'en', 'AKABIS (Waste Management Academy)', 'akabis-waste-management-academy', 'service_name');
INSERT INTO `dictionary` VALUES (216, 'id', 'AKABIS (Waste Management Academy)', 'akabis-waste-management-academy', 'service_name');
INSERT INTO `dictionary` VALUES (217, 'en', 'Black Soldier Fly Learning Center', 'black-soldier-fly-learning-center', 'service_name');
INSERT INTO `dictionary` VALUES (218, 'id', 'Black Soldier Fly Learning Center', 'black-soldier-fly-learning-center', 'service_name');
INSERT INTO `dictionary` VALUES (219, 'en', 'Black Soldier Fly Tools & Products', 'black-soldier-fly-tools-products', 'service_name');
INSERT INTO `dictionary` VALUES (220, 'id', 'Black Soldier Fly Tools & Products', 'black-soldier-fly-tools-products', 'service_name');
INSERT INTO `dictionary` VALUES (221, 'en', 'Send Your Waste', 'send-your-waste', 'service_name');
INSERT INTO `dictionary` VALUES (222, 'id', 'Send Your Waste', 'send-your-waste', 'service_name');
INSERT INTO `dictionary` VALUES (223, 'en', 'Dropbox', 'dropbox', 'service_name');
INSERT INTO `dictionary` VALUES (224, 'id', 'Dropbox', 'dropbox', 'service_name');
INSERT INTO `dictionary` VALUES (225, 'en', 'Sinergi #AdesNiatMurni dan Gojek', 'sinergi-adesniatmurni-dan-gojek', 'service_name');
INSERT INTO `dictionary` VALUES (226, 'id', 'Sinergi #AdesNiatMurni dan Gojek', 'sinergi-adesniatmurni-dan-gojek', 'service_name');
INSERT INTO `dictionary` VALUES (227, 'en', 'Merchant', 'merchant', 'service_name');
INSERT INTO `dictionary` VALUES (228, 'id', 'Merchant', 'merchant', 'service_name');
INSERT INTO `dictionary` VALUES (229, 'en', 'Home Composting', 'home-composting', 'service_name');
INSERT INTO `dictionary` VALUES (230, 'id', 'Home Composting', 'home-composting', 'service_name');
INSERT INTO `dictionary` VALUES (231, 'en', 'Solid Waste Management Study at Pelabuhan Indonesia II HQ', 'solid-waste-management-study-at-pelabuhan-indonesi', 'service_name');
INSERT INTO `dictionary` VALUES (232, 'id', 'Solid Waste Management Study di Kantor Pusat Pelabuhan Indonesia II?', 'solid-waste-management-study-at-pelabuhan-indonesi', 'service_name');
INSERT INTO `dictionary` VALUES (233, 'en', 'Rancangan Pengelolaan Sampah Padat untuk Program Revitalisasi di Masjid Jami\' dan Permukiman Beting di Pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', 'service_name');
INSERT INTO `dictionary` VALUES (234, 'id', 'Solid Waste Management Design for Revitalisation at Jami\' Mosque and Kampung Beting Settlements in Pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', 'service_name');
INSERT INTO `dictionary` VALUES (235, 'en', 'Studi Manajemen Sampah - Pemetaan Pemangku Kepentingan dan Alur Sampah di Jakarta dan Surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', 'service_name');
INSERT INTO `dictionary` VALUES (236, 'id', 'Waste Management Scouting Study - Stakeholders Mapping and Waste Flow in Jakarta and Surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', 'service_name');
INSERT INTO `dictionary` VALUES (237, 'en', 'Proyek Pemantauan Sampah Plastik di Sungai-Sungai di Jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', 'service_name');
INSERT INTO `dictionary` VALUES (238, 'Support and in line with Perpres No. 97 Tahun 2017 (JAKSTRANAS)', 'Riverine Plastic Monitoring Project in Jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', 'service_name');
INSERT INTO `dictionary` VALUES (239, 'en', 'Technical Due Diligence for ITF Sunter Jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', 'service_name');
INSERT INTO `dictionary` VALUES (240, 'id', 'Uji Kelayakan untuk ITF Sunter Jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', 'service_name');
INSERT INTO `dictionary` VALUES (241, 'en', '3R Program Suralaya', '3r-program-suralaya', 'service_name');
INSERT INTO `dictionary` VALUES (242, 'zero waste ke TPA', '3R Program Suralaya', '3r-program-suralaya', 'service_name');
INSERT INTO `dictionary` VALUES (243, 'en', 'TPS 3R Advisory', 'tps-3r-advisory', 'service_name');
INSERT INTO `dictionary` VALUES (244, 'id', 'TPS 3R Advisory', 'tps-3r-advisory', 'service_name');
INSERT INTO `dictionary` VALUES (245, 'en', 'Ecoranger di Pulau Merah Banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', 'service_name');
INSERT INTO `dictionary` VALUES (246, 'Increasing staff\'s awareness of waste issues', 'Ecoranger in Pulau Merah Banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', 'service_name');
INSERT INTO `dictionary` VALUES (247, 'Meningkatkan kesadaran staf masalah limbah', 'Capacity Building di Wilayah Terdepan Indonesia', 'capacity-building-di-wilayah-terdepan-indonesia', 'service_name');
INSERT INTO `dictionary` VALUES (248, 'id', 'Capacity Building in Indonesia\'s Frontline Territories', 'capacity-building-di-wilayah-terdepan-indonesia', 'service_name');
INSERT INTO `dictionary` VALUES (249, 'en', '3R Green School', '3r-green-school', 'service_name');
INSERT INTO `dictionary` VALUES (250, 'id', '3R Green School', '3r-green-school', 'service_name');
INSERT INTO `dictionary` VALUES (251, 'en', 'AKABIS Class untuk Kedutaan Finlandia di Jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', 'service_name');
INSERT INTO `dictionary` VALUES (252, 'id', 'AKABIS-CLASS for The Embassy of Finland - Jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', 'service_name');
INSERT INTO `dictionary` VALUES (253, 'en', 'AKABIS Class - The Neglected Debris: Paper, Letter and Waste Discussion', 'akabis-class-the-neglected-debris:-paper-letter', 'service_name');
INSERT INTO `dictionary` VALUES (254, 'id', 'AKABIS Class mengenai Sampah yang Terabaikan: Kertas, Aksara, dan Diskusi mengenai Sampah', 'akabis-class-the-neglected-debris:-paper-letter', 'service_name');
INSERT INTO `dictionary` VALUES (255, 'en', 'AKABIS Xperience untuk PT. Bank DBS Indonesia', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'service_name');
INSERT INTO `dictionary` VALUES (256, 'id', 'AKABIS-XPERIENCE for World Bank Jakarta', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'service_name');
INSERT INTO `dictionary` VALUES (257, 'en', 'AKABIS Xperience untuk YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition 2018', 'akabis-xperience-untuk-yseali-young-southeast-asi', 'service_name');
INSERT INTO `dictionary` VALUES (258, 'id', 'AKABIS-XPERIENCE for YSEALI', 'akabis-xperience-untuk-yseali-young-southeast-asi', 'service_name');
INSERT INTO `dictionary` VALUES (259, 'en', 'A 100% holistic waste management for companies, buildings, and businesses to reduce the number of waste that piles up in the landfill.', 'a-100-holistic-waste-management-for-companies-bu', 'service_description');
INSERT INTO `dictionary` VALUES (260, 'id', 'Sistem manajemen sampah yang 100% menyeluruh untuk perusahaan, gedung, dan pelaku bisnis dalam rangka mengurangi jumlah timbulan sampah yang berakhir di TPA.', 'a-100-holistic-waste-management-for-companies-bu', 'service_description');
INSERT INTO `dictionary` VALUES (261, 'en', 'Take an active part in preventing our local landfills from becoming overcapacity! Through our waste collection and waste recycling program: Zero Waste to Landfill, we will ensure that none of your waste ends up in the landfill!', 'take-an-active-part-in-preventing-our-local-landfi', 'service_description');
INSERT INTO `dictionary` VALUES (262, 'id', 'Ambil peran aktif untuk membantu mencegah TPS dan TPA agar tidak kelebihan kapasitas! Melalui program pengangkutan dan daur ulang sampah yang dinamakan Zero Waste to Landfill, kami akan memastikan bahwa tidak ada sampah Anda yang berakhir di TPA!', 'take-an-active-part-in-preventing-our-local-landfi', 'service_description');
INSERT INTO `dictionary` VALUES (263, 'en', 'Treat your inorganic waste the right way and make sure that your inorganic waste are recycled and included in the sustainable circular system.', 'treat-your-inorganic-waste-the-right-way-and-make-', 'service_description');
INSERT INTO `dictionary` VALUES (264, 'id', 'Kelola sampah anorganik Anda dengan cara yang tepat dan pastikan bahwa sampah anorganik tersebut didaur ulang dan masuk ke dalam siklus yang berkelanjutan.', 'treat-your-inorganic-waste-the-right-way-and-make-', 'service_description');
INSERT INTO `dictionary` VALUES (265, 'en', 'Through the placement of segregated waste bins in strategic places, as well as segregated waste collection for all of the waste that are produced during your event, we will help your event\'s waste management to be more well-prepared and responsible!', 'through-the-placement-of-segregated-waste-bins-in-', 'service_description');
INSERT INTO `dictionary` VALUES (266, 'id', 'Melalui penempatan tempat sampah terpilah di lokasi-lokasi yang strategis, serta pengangkutan sampah terpilah selama acara berlangsung, kami akan membantu acara Anda mempersiapkan pengelolaan sampah yang bertanggung jawab!', 'through-the-placement-of-segregated-waste-bins-in-', 'service_description');
INSERT INTO `dictionary` VALUES (267, 'en', 'Increase the material processing of brand-labelled waste throughout your company\'s business line. Whether it\'s in-store recycling or app-based recycling program, we provide both the system and solution!', 'increase-the-material-processing-of-brand-labelled', 'service_description');
INSERT INTO `dictionary` VALUES (268, 'id', 'Tingkatkan pengelolaan materi dari sampah berlabel merek di seluruh lini bisnis Anda. Baik melalui program daur ulang di toko maupun yang berbasis aplikasi, kami punya sistem dan solusinya!', 'increase-the-material-processing-of-brand-labelled', 'service_description');
INSERT INTO `dictionary` VALUES (269, 'en', 'Increasing the recycling rate of your brand-labeled waste with the support of app-integrated and web-integrated recycling system and opening even wider collaboration opportunities with other businesses and communities.', 'increasing-the-recycling-rate-of-your-brand-labele', 'service_description');
INSERT INTO `dictionary` VALUES (270, 'id', 'Tingkatkan pengelolaan materi dari sampah berlabel merek Anda dengan bantuan sistem daur ulang berbasis aplikasi dan website, sekaligus membuka semakin banyak peluang kolaborasi dengan pelaku bisnis dan komunitas lain.', 'increasing-the-recycling-rate-of-your-brand-labele', 'service_description');
INSERT INTO `dictionary` VALUES (271, 'en', 'Improve your solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs.', 'improve-your-solid-waste-management-by-conducting-', 'service_description');
INSERT INTO `dictionary` VALUES (272, 'id', 'Tingkatkan pengelolaan sampah padat Anda dengan melakukan analisis terperinci dan mengidentifikasi program dan sistem manajemen sampah yang paling tepat.', 'improve-your-solid-waste-management-by-conducting-', 'service_description');
INSERT INTO `dictionary` VALUES (273, 'en', 'We help our clients to implement programs that encourage the community to act and provide real contributions to the waste crisis in Indonesia.', 'we-help-our-clients-to-implement-programs-that-enc', 'service_description');
INSERT INTO `dictionary` VALUES (274, 'id', 'Kami membantu klien kami untuk menerapkan program-program yang mendorong komunitas untuk ikut bertindak dan memberikan kontribusi nyata terhadap krisis sampah di Indonesia.', 'we-help-our-clients-to-implement-programs-that-enc', 'service_description');
INSERT INTO `dictionary` VALUES (275, 'en', 'Designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management in schools.', 'designed-to-encourage-the-increasing-awareness-of-', 'service_description');
INSERT INTO `dictionary` VALUES (276, 'id', 'Dirancang untuk meningkatkan kesadaran generasi mendatang terhadap prinsip 3R (Reduce, Reuse, Recycle) dan bagaimana menerapkannya di kehidupan sehari-hari.', 'designed-to-encourage-the-increasing-awareness-of-', 'service_description');
INSERT INTO `dictionary` VALUES (277, 'en', 'Waste management education program that includes a visit to local landfill and Waste4Change\'s waste management facilities that stimulates all 4 senses (sight, touch, smell, and hearing).', 'waste-management-education-program-that-includes-a', 'service_description');
INSERT INTO `dictionary` VALUES (278, 'id', 'Program edukasi manajemen sampah yang mencakup kunjungan ke TPA/TPS dan fasilitas pengelolaan sampah milik Waste4Change yang akan merangsang keempat indra Anda (melihat, mendengar, mencium, dan meraba).', 'waste-management-education-program-that-includes-a', 'service_description');
INSERT INTO `dictionary` VALUES (279, 'en', 'Receive in-depth information regarding organic waste processing using Black Soldier Fly (BSF), as well as the cultivation and breeding methods of BSF.', 'receive-in-depth-information-regarding-organic-was', 'service_description');
INSERT INTO `dictionary` VALUES (280, 'id', 'Dapatkan informasi mendalam mengenai pengelolaan sampah organik dengan menggunakan Black Soldier Fly (BSF), serta metode budidaya dan pengembangbiakan BSF.', 'receive-in-depth-information-regarding-organic-was', 'service_description');
INSERT INTO `dictionary` VALUES (281, 'en', 'We provide Black Soldier Fly larvae that is high in protein and considered as a great animal feed. For any of you who wishes to build your own BSF nursery, we have all the necessary tools and starter kit.', 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'service_description');
INSERT INTO `dictionary` VALUES (282, 'id', 'Kami menjual larva Black Soldier Fly yang tinggi protein dan bagus untuk digunakan sebagai pakan ternak. Untuk siapapun yang ingin merintis peternakan BSFnya sendiri, kami menyediakan semua perlengkapan dan alat yang diperlukan.', 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'service_description');
INSERT INTO `dictionary` VALUES (283, 'en', 'Send your inorganic waste to Waste4Change and let us recycle it for you.', 'send-your-inorganic-waste-to-waste4change-and-let-', 'service_description');
INSERT INTO `dictionary` VALUES (284, 'id', 'Kirim sampah anorganik Anda ke Waste4Change untuk didaur ulang.', 'send-your-inorganic-waste-to-waste4change-and-let-', 'service_description');
INSERT INTO `dictionary` VALUES (285, 'en', 'Deposit your inorganic waste in Waste4Change\'s dropbox and let us recycle it for you.', 'deposit-your-inorganic-waste-in-waste4changes-dro', 'service_description');
INSERT INTO `dictionary` VALUES (286, 'id', 'Setor sampah anorganik Anda ke dalam dropbox Waste4Change untuk didaur ulang.', 'deposit-your-inorganic-waste-in-waste4changes-dro', 'service_description');
INSERT INTO `dictionary` VALUES (287, 'en', 'Send your used PET bottles of various sizes and brands with GoSend to get many benefits from Ades.', 'send-your-used-pet-bottles-of-various-sizes-and-br', 'service_description');
INSERT INTO `dictionary` VALUES (288, 'id', 'Kirimkan sampah botol plastik PET Anda dalam berbagai ukuran dan merek dengan menggunakan GoSend untuk mendapatkan banyak keuntungan dari Ades.', 'send-your-used-pet-bottles-of-various-sizes-and-br', 'service_description');
INSERT INTO `dictionary` VALUES (289, 'en', 'Deposit your used packaging through our partners throughout Indonesia and get reward points when shopping for various digital products.', 'deposit-your-used-packaging-through-our-partners-t', 'service_description');
INSERT INTO `dictionary` VALUES (290, 'id', 'Setor sampah kemasan Anda melalui partner-partner kami yang tersebar di seluruh Indonesia dan dapatkan hadiah poin untuk setiap pembelanjaan produk digital.', 'deposit-your-used-packaging-through-our-partners-t', 'service_description');
INSERT INTO `dictionary` VALUES (291, 'en', 'Process your organic waste at  home with Waste4Change\'s special composting bag and other home composting tools and equipment!', 'process-your-organic-waste-at-home-with-waste4cha', 'service_description');
INSERT INTO `dictionary` VALUES (292, 'id', 'Kelola sampah organik Anda di rumah dengan menggunakan tas kompos dari Waste4Change beserta perlengkapan kompos lainnya!', 'process-your-organic-waste-at-home-with-waste4cha', 'service_description');
INSERT INTO `dictionary` VALUES (293, 'en', 'No More Mixed Waste', 'no-more-mixed-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (294, 'id', 'Tidak Ada Lagi Sampah yang Tercampur', 'no-more-mixed-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (295, 'en', 'No More Waste That End Up In Landfills', 'no-more-waste-that-end-up-in-landfills', 'service_slogan');
INSERT INTO `dictionary` VALUES (296, 'id', 'Zero Waste to Landfill', 'no-more-waste-that-end-up-in-landfills', 'service_slogan');
INSERT INTO `dictionary` VALUES (297, 'en', 'From Waste to Useful Materials', 'from-waste-to-useful-materials', 'service_slogan');
INSERT INTO `dictionary` VALUES (298, 'id', 'Dari Sampah Menjadi Material yang Berguna', 'from-waste-to-useful-materials', 'service_slogan');
INSERT INTO `dictionary` VALUES (299, 'en', 'Great Event Planned Their Waste Management Beforehand', 'great-event-planned-their-waste-management-beforeh', 'service_slogan');
INSERT INTO `dictionary` VALUES (300, 'id', 'Acara yang Baik itu Dipersiapkan dengan Matang dan Bersungguh-sungguh dalam Mengelola Sampah Mereka ', 'great-event-planned-their-waste-management-beforeh', 'service_slogan');
INSERT INTO `dictionary` VALUES (301, 'en', 'Support the Recycling of Your Brand-Labeled Waste', 'support-the-recycling-of-your-brand-labeled-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (302, 'id', 'Mendukung Daur Ulang Sampah Berlabel Merek Anda ', 'support-the-recycling-of-your-brand-labeled-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (303, 'en', 'More Effective and Sustainable Brand-Labeled Waste Recycling Management', 'more-effective-and-sustainable-brand-labeled-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (304, 'id', 'Daur Ulang Sampah Berlabel Merek dengan Lebih Efektif dan Berkelanjutan', 'more-effective-and-sustainable-brand-labeled-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (305, 'en', 'Research and Planning with Environment in Mind', 'research-and-planning-with-environment-in-mind', 'service_slogan');
INSERT INTO `dictionary` VALUES (306, 'id', 'Penelitian dan Perencanaan dengan Mempertimbangkan Aspek Lingkungan', 'research-and-planning-with-environment-in-mind', 'service_slogan');
INSERT INTO `dictionary` VALUES (307, 'en', 'Solid Effort to Reduce Waste Generation From The Source', 'solid-effort-to-reduce-waste-generation-from-the-s', 'service_slogan');
INSERT INTO `dictionary` VALUES (308, 'id', 'Usaha Nyata untuk Mengurangi Produksi Sampah dari Sumbernya', 'solid-effort-to-reduce-waste-generation-from-the-s', 'service_slogan');
INSERT INTO `dictionary` VALUES (309, 'en', 'Optimal Implementation of 3R (Reduce-Reuse-Recycle) Principles', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'service_slogan');
INSERT INTO `dictionary` VALUES (310, 'id', 'Penerapan Maksimal Prinsip 3R (Reduce-Reuse-Recycle)', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'service_slogan');
INSERT INTO `dictionary` VALUES (311, 'en', 'Take a Closer Look at Waste Management Facts and Solutions', 'take-a-closer-look-at-waste-management-facts-and-s', 'service_slogan');
INSERT INTO `dictionary` VALUES (312, 'id', 'Melihat Lebih Dekat Fakta dan Solusi Pengelolaan Sampah', 'take-a-closer-look-at-waste-management-facts-and-s', 'service_slogan');
INSERT INTO `dictionary` VALUES (313, 'en', 'Effective Organic Waste Solution', 'effective-organic-waste-solution', 'service_slogan');
INSERT INTO `dictionary` VALUES (314, 'id', 'Solusi Sampah Organik yang Efektif', 'effective-organic-waste-solution', 'service_slogan');
INSERT INTO `dictionary` VALUES (315, 'en', 'Waste generation is inevitable. It\'s not easy to reduce waste in our everyday lives. The simplest, easiest and most important thing that we can do after generating waste is separating our organic and inorganic waste. <br>Through our service Responsible Waste Management (RWM), Waste4Change is providing holistic waste management to reduce the number of waste that piles up in the landfill.', 'waste-generation-is-inevitable-its-not-easy-to-r', 'service_about');
INSERT INTO `dictionary` VALUES (316, 'id', 'Produksi sampah merupakan sesuatu yang tidak bisa dihindari. Mengurangi sampah sendiri bukanlah perkara yang mudah. Hal yang paling sederhana, mudah, dan penting yang dapat kita lakukan setelah menghasilkan sampah adalah memisahkan sampah organik dan sampah anorganik. Waste generation is inevitable. <br>Dengan servis kami yang bernama Responsible Waste Management (RWM), Waste4Change menyediakan manajemen sampah untuk mengurangi jumlah timbulan sampah yang menumpuk di TPA. ', 'waste-generation-is-inevitable-its-not-easy-to-r', 'service_about');
INSERT INTO `dictionary` VALUES (317, 'en', 'Every day, Indonesians are generating 175,000 tons of waste. This caused Jakarta and many areas in Indonesia to suffer from landfill emergencies. Even the Bantar Gebang landfill that holds the residual waste of Jakarta residents is predicted to be overcapacity in 2022.<br>Waste is everyone\'s responsibility, but several sectors such as the commercial, company, and business actors need to contribute in paying more attention to their waste management and product cycle to ensure the environmental sustainability of their business. Through ZWTL program, Waste4Change ensures that all waste will be managed responsibly and no waste is being transported to the landfill.', 'every-day-indonesians-are-generating-175000-tons', 'service_about');
INSERT INTO `dictionary` VALUES (318, 'id', 'Setiap harinya, masyarakat Indonesia menghasilkan 175,000 ton sampah. Hal ini yang menyebabkan banyak TPA di banyak tempat di Indonesia mengalami kondisi darurat. Bahkan Bantar Gerbang yang menampung sampah warga Jakarta diperkirakan akan menjadi kelebihan kapasitas di tahun 2022.<br>Sampah merupakan tanggung jawab semua orang, tapi beberapa sektor seperti komersial, perusahaan, dan pelaku bisnis perlu berkontribusi dan menaruh perhatian pada manajemen sampah dan siklus produk mereka untuk memastikan aspek keberlanjutan lingkungan dari bisnis mereka sendiri. Melalui program ZWTL, Waste4Change memastikan bahwa semua sampah akan dikelola secara bertanggung jawab dan tidak ada sampah yang dibuang ke TPA.', 'every-day-indonesians-are-generating-175000-tons', 'service_about');
INSERT INTO `dictionary` VALUES (319, 'en', 'Waste is a relative term that can be applied differently to each person, especially inorganic waste. Once it is treated in the right way, inorganic waste can solve our problems on the scarcity of raw materials.<br>Through our Inorganic Waste Management (IWM), Waste4Change will ensure that your inorganic waste are recycled and be included in the sustainable circular system.', 'waste-is-a-relative-term-that-can-be-applied-diffe', 'service_about');
INSERT INTO `dictionary` VALUES (320, 'id', 'Sampah merupakan istilah yang maknanya relatif dan tergantung pada setiap orang, terutama sampah anorganik. Ketika sampah tersebut dikelola secara tepat, sampah anorganik dapat menjadi solusi terhadap masalah kelangkaan bahan baku.<br>Melalui servis kami yang dinamakan Inorganic Waste Management (IWM), Waste4Change akan memastikan bahwa sampah anorganik Anda akan didaur ulang dan menjadi bagian dari siklus yang berkelanjutan.', 'waste-is-a-relative-term-that-can-be-applied-diffe', 'service_about');
INSERT INTO `dictionary` VALUES (321, 'en', 'Waste generation during an event is inevitable. In a place where participants\' are allowed to take notes, to drink and eat, especially in a crowded event, it\'s not easy to make sure that everyone\'s taking their time and energy to be responsible for their waste. <br>Through our service Event Waste Management (EWM), we will provide your event with special trash bags designated to encourage people to segregate their waste. Waste4Change will also guarantee that your waste would be handled and processed responsibly to reduce the number of waste that ends up in the landfill.', 'waste-generation-during-an-event-is-inevitable-in', 'service_about');
INSERT INTO `dictionary` VALUES (322, 'id', 'Produksi sampah dalam suatu acara menjadi hal yang tidak bisa dihindari. Di tempat dimana peserta diperbolehkan untuk makan, minum, serta mencatat, terutama tempat yang sangat ramai, tidak mudah untuk memastikan bahwa setiap orang bertanggung jawab terhadap sampah mereka.<br>Dengan servis kami yang dinamakan Event Waste Management (EWM), kami akan menyediakan acara Anda dengan kantong sampah khusus yang dibuat untuk mendorong orang-orang untuk memilah sampah mereka. Waste4Change juga akan menjamin bahwa sampah Anda akan ditangani dan dikelola secara bertanggung jawab untuk mengurangi jumlah timbulan sampah yang berakhir di TPA.', 'waste-generation-during-an-event-is-inevitable-in', 'service_about');
INSERT INTO `dictionary` VALUES (323, 'en', 'Designed to increase the material processing from brand-labeled waste throughout your companys business line. What we define as brand-labeled waste might resulted from the following:<br><i class=\"fa fa-circle\"></i>Production process that resulted in product defect, reject, or residue from production process<br><i class=\"fa fa-circle\"></i>Distribution process such as expired or defect products<br><i class=\"fa fa-circle\"></i>Warehouse such as returns, second-hand, or broken<br><i class=\"fa fa-circle\"></i>Consumer such as empty packaging or used products', 'designed-to-increase-the-material-processing-from-', 'service_about');
INSERT INTO `dictionary` VALUES (324, 'id', 'Dirancang untuk meningkatkan daur ulang materi dari sampah berlabel merek dalam seluruh lini bisnis Anda. Yang kami maksud sebagai sampah berlabel merek dapat muncul sebagai hasil dari:<br><i class=\"fa fa-circle\"></i>Proses produksi yang menghasilkan produk gagal, cacat, atau sampah dari sisa proses produksi<br><i class=\"fa fa-circle\"></i>Proses distribusi seperti produk yang cacat atau kadaluwarsa<br><i class=\"fa fa-circle\"></i>Gudang, seperti barang retur,bekas, atau rusak<br><i class=\"fa fa-circle\"></i>Konsumen, seperti kemasan kosong atau produk yang sudah selesai digunakan', 'designed-to-increase-the-material-processing-from-', 'service_about');
INSERT INTO `dictionary` VALUES (325, 'en', 'We provide a waste recycling system that is integrated with web and mobile applications to further increase the amount of waste labeled your brand that is recycled.<br>The integration of technology in the waste recycling system not only supports responsible waste management for your brand-labeled waste but also opens opportunities for collaboration with many businesses and other recycling partners.<br>The integrated waste recycling system also supports the education and campaign aspects of your brand program, so it is expected to be able to reach and meet the needs of your brand consumers in more locations in Indonesia.', 'we-provide-a-waste-recycling-system-that-is-integr', 'service_about');
INSERT INTO `dictionary` VALUES (326, 'id', 'Kami menyediakan sistem daur ulang yang terintegrasi dengan website dan aplikasi handphone untuk semakin meningkatkan tingkat daur ulang dari sampah berlabel merek Anda.<br>Pengintegrasian teknologi dalam sistem daur ulang tidak hanya akan mendukung pengelolaan sampah yang bertanggung jawab untuk sampah berlabel merek Anda, tetapi juga membuka peluang untuk berkolaborasi dengan banyak pelaku bisnis dan mitra daur ulang yang lain.<br>Sistem daur ulang sampah yang terintegrasi juga mendukung program di bidang edukasi dan kampanye dari merek/perusahaan Anda, sehingga harapannya servis ini akan mampu menjangkau dan memenuhi kebutuhan konsumen dari merek Anda di semakin banyak tempat di Indonesia.', 'we-provide-a-waste-recycling-system-that-is-integr', 'service_about');
INSERT INTO `dictionary` VALUES (327, 'en', 'Waste4Change provides consultation through Solid Waste Management (SWM) Research that aims to improve solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs in cities, regions, building, or any other private/commercial institutions. <br> It also aims to harness the advantages borne out of implementing responsible waste management.?', 'waste4change-provides-consultation-through-solid-w', 'service_about');
INSERT INTO `dictionary` VALUES (328, 'id', 'Waste4Change menyediakan konsultasi melalui servis Solid Waste Management (SWM) Research yang bertujuan meningkatkan pengelolaan sampah padat dengan melakukan analisis terperinci dan mengidentifikasi program dan sistem yang paling tepat, baik di kota, provinsi, bangungan, atau institusi publik dan komersial lainnya.<br>Servis ini juga bertujuan untuk memaksimalkan keuntungan yang didapat dari menerapkan pengelolaan sampah yang bertanggung jawab.? ', 'waste4change-provides-consultation-through-solid-w', 'service_about');
INSERT INTO `dictionary` VALUES (329, 'en', 'According to recent BPS statistics, waste management ranks the lowest when compared to other environmental issues (energy, air pollution, transportation).<br>At Waste4Change, we see this as a challenge to implement programs that encourages the community to act and give real contributions to the ongoing waste crisis in Indonesia through Community-based Implementation.', 'according-to-recent-bps-statistics-waste-manageme', 'service_about');
INSERT INTO `dictionary` VALUES (330, 'id', 'Berdasarkan statistik dari BPS, pengelolaan sampah menempati peringkat paling akhir dibandingkan dengan isu lingkungan yang lain (energi, polusi udara, transportasi).<br>Kami di Waste4Change melihat hal ini sebagai sebuah tantangan untuk menerapkan program-program yang mendorong komunitas lokal untuk bertindak dan memberikan kontribusi nyata terhadap permasalahan sampah di Indonesia yang tengah berlangsung melalui servis Community-based Implementation.', 'according-to-recent-bps-statistics-waste-manageme', 'service_about');
INSERT INTO `dictionary` VALUES (331, 'en', '3R School Program is a program designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management system in schools. The aims of this program is to assist schools. Waste4Change acts as a facilitator in assisting beneficiaries to achieve the objectives of the program.?', '3r-school-program-is-a-program-designed-to-encoura', 'service_about');
INSERT INTO `dictionary` VALUES (332, 'id', '3R School Program adalah program yang dirancang untuk mendorong peningkatan kesadaran warga sekolah untuk menerapkan prinsip 3R (Reduce, Reuse, Recycle) demi terwujudnya sistem pengelolaan sampah yang bertanggung jawab di sekolah-sekolah. Tujuan dari program ini adalah untuk membantu sekolah. Waste4Change berperan sebagai fasilitator dalam mendampingi penerima manfaat mencapai tujuan program yang telah ditetapkan.?', '3r-school-program-is-a-program-designed-to-encoura', 'service_about');
INSERT INTO `dictionary` VALUES (333, 'en', 'Akademi Bijak Sampah (AKABIS) is an education model created by Waste4Change to raise awareness on the importance of protecting the environment, especially in responsible waste management. If your institution is willing to experience first-hand field visits that stimulate all 4 senses, we can provide you with AKABIS-Xperience, a 6-hour educational tour to our facilities and landfill with interactive discussion.?<br> To accommodate those with time limitation, we can also provide you with AKABIS-Class, a 2-hour In-class training and discussion on responsible waste management that can be carried out at the client\'s preferred location.', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'service_about');
INSERT INTO `dictionary` VALUES (334, 'id', 'Akademi Bijak Sampah (AKABIS) adalah sebuah model edukasi yang dibuat oleh Waste4Change untuk meningkatkan kesadaran mengenai pentingnya menjaga lingkungan, terutama mengenai pengelolaan sampah yang bertanggung jawab. Jika institusi Anda ingin merasakan pengalaman langsung kunjungan lapangan yang merangsang keempat indra manusia, kami bisa menawarkan Anda program AKABIS-Xperience, tur edukasional yang berlangsung selama 6 jam ke fasilitas milik Waste4Change dan TPA yang disertai dengan diskusi interaktif.<br>Selain itu, untuk mengakomodasi Anda yang memiliki waktu yang terbatas, kami juga menawarkan AKABIS-Class, sebuah pelatihan yang berlangsung selama 2 jam dan dilakukan di dalam ruangan, lengkap dengan diskusi mengenai pengelolaan sampah yang bertanggung jawab dan bisa dilakukan di lokasi yang dikehendaki oleh klien.', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'service_about');
INSERT INTO `dictionary` VALUES (335, 'en', 'Through BSF Learning Center, you will receive in-depth information regarding organic waste processing using Black Soldier Flies (BSF), as well as the cultivation and breeding methods of BSF.', 'through-bsf-learning-center-you-will-receive-in-d', 'service_about');
INSERT INTO `dictionary` VALUES (336, 'id', 'Melalui program BSF Learning Center, Anda akan mendapatkan informasi yang mendalam mengenai pengolahan sampah organik dengan menggunakan Black Soldier Fly (BSF), sekaligus mengenai metode pembudidayaan dan pengembangbiakan BSF.', 'through-bsf-learning-center-you-will-receive-in-d', 'service_about');
INSERT INTO `dictionary` VALUES (337, 'en', 'Based on the Regulation of Ministry of Transportation No 51 year 2015 about Sea Ports, Sea Ports Unit Organizations have to provide pollution prevention facilities and ensure the implementation of greenport.<br>Therefore, the study in PT Pelabuhan Indonesia II (Persero) head office building aims to identify and provide recommendations related to the steps in implementing 3R-based waste management system. This study was conducted by performing waste audits, survey to employees, and in-depth interview to the related stakeholders.?', 'based-on-the-regulation-of-ministry-of-transportat', 'service_about');
INSERT INTO `dictionary` VALUES (338, 'id', 'Berdasarkan Peraturan Menteri Perhubungan No. 51 Tahun 2015 mengenai Pelabuhan, organisasi unit pelabuhan harus menyediakan fasilitas pencegahan polusi dan memastikan penerapan konsep pelabuhan hijau. <br>Maka dari itu, studi yang dilakukan di kantor utama PT Pelabuhan Indonesia II (Persero) bertujuan untuk mengidentifikasi dan memberikan rekomendasi yang berkaitan dengan langkah-langkah penerapan sistem pengelolaan sampah berbasis 3R. Studi ini dilakukan dengan melaksanakan audit sampah, survei ke pegawai, dan wawancara mendalam dengan pemangku kepentingan terkait.', 'based-on-the-regulation-of-ministry-of-transportat', 'service_about');
INSERT INTO `dictionary` VALUES (339, 'en', 'Beting village and Jami\' Mosque area are located at the intersection of Kapuas River and Landak River. People in Beting village area tend to dispose their waste into the river due to the minimum facilities, limited access to landfill, and unavailability of waste management system.<br.The increasing piles of waste in this area was also worsened by the volume of waste coming from the upstream. In order to solve the waste problem in that area, an integrated waste management system needs to be implemented.?', 'beting-village-and-jami-mosque-area-are-located-a', 'service_about');
INSERT INTO `dictionary` VALUES (340, 'id', 'Desa Beting dan Masjid Jami\' terletak di persimpangan sungai Kapuas dan sungai Landak. Masyarakat desa Beting cenderung membuang sampah mereka ke sungai karena minimnya fasilitas, akses ke TPA/TPS yang terbatas, serta tidak adanya sistem manajemen sampah.<br>Jumlah sampah yang kian meningkat di area ini juga diperparah oleh adanya kiriman sampah dari daerah hulu. Guna memecahkan masalah sampah di area tersebut, sebuah sistem manajemen sampah yang terintegrasi perlu diterapkan.', 'beting-village-and-jami-mosque-area-are-located-a', 'service_about');
INSERT INTO `dictionary` VALUES (341, 'en', 'Indonesia is the 2nd biggest contributor of plastic waste into the oceans, primarily through the mismanagement of land-based waste. In 2010, it was estimated that 3.2 million Mt/year of plastic waste were mismanaged, and that the volume would more than doubled by 2025 if no significant changes were to take place.  ?<br>The study aimed to better understand waste management in Indonesia, map the flow of packaging waste, and identify potential key  stakeholders to collaborate with in order to prevent packaging waste from ending up in the ocean?', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'service_about');
INSERT INTO `dictionary` VALUES (342, 'id', 'Indonesia merupakan penyumbang sampah laut terbesar kedua di dunia, utamanya karena buruknya penanganan sampah yang berasal dari darat. Di tahun 2010, diperkirakan ada sebanyak 3,2 juta ton sampah plastik per tahun yang tidak dikelola dengan baik. Jumlah tersebut diperkirakan akan berlipat ganda di tahun 2025 jika tidak terjadi perubahan yang signifikan.  ?<br>Studi ini bertujuan untuk lebih memahami pengelolaan sampah di Indonesia, memetakan alur sampah kemasan, dan mengidentifikasi pemangku kepentingan yang potensial di tingkat lokal untuk berkolaborasi demi mencegah sampah kemasan agar tidak berakhir di laut.', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'service_about');
INSERT INTO `dictionary` VALUES (343, 'en', 'The Ocean Cleanup is a Dutch-based non-profit organization who develops advanced technologies to rid the world\'s oceans of plastics. By deploying their fleet of systems, they aim to remove 50% of the Great Pacific Garbage Patch in just five years\' time. By having the same mission on tackling waste problems, The Ocean Cleanup cooperates with Waste4Change as their local partner in Indonesia and conducted a riverine plastic emission study in Jakarta\'s rivers in April 2018. ?<br>During a 10-day fieldwork supported by DKI Jakarta Orange Troops, plastics were monitored at 7 river points throughout Jakarta, which includes Ciliwung and Pesanggrahan River. Plastic samples were trawled and analyzed by dividing them into different types. By having these data, hopefully appropriate measures can be done to tackle marine debris starting from the rivers, not only in Jakarta, but  throughout Indonesia and in neighboring countries.', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'service_about');
INSERT INTO `dictionary` VALUES (344, 'id', 'The Ocean Cleanup merupakan organisasi non-profit asal Belanda yang mengembangkan teknologi mutakhir untuk membersihkan lautan dari sampah plastik. Dengan meluncurkan armada mereka, The Ocean Cleanup berambisi untuk menyingkirkan 50% sampah di the Great Pacific Garbage Patch hanya dalam waktu lima tahun. Dengan berbagi misi yang sama untuk mengatasi permasalahan sampah, The Ocean Cleanup bekerja sama dengan Waste4Change sebagai partner lokal mereka di Indonesia dan melakukan studi polusi plastik di sungai-sungai di Jakarta pada bulan April tahun 2018. ?<br>Melalui kerja lapangan yang dilaksanakan selama 10 hari dengan dibantu oleh Pasukan Oranye Jakarta, sampah plastik di monitor di 7 titik sungai di Jakarta, termasuk di dalamnya sungai Ciliwung dan sungai Pesanggrahan. Sampel plastik dijaring dan dianalisis dengan cara membaginya ke beberapa tipe. Dengan data ini, diharapkan dapat diambil langkah yang tepat untuk mengatasi masalah sampah di laut, dimulai dari menangani sampah yang berada di sungai, dan tidak hanya sungai di Jakarta, tapi juga di seluruh Indonesia dan bahkan di negara-negara tetangga. ?', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'service_about');
INSERT INTO `dictionary` VALUES (345, 'en', 'Ramboll Danmark A/S as the main consultant was working together with Waste4Change as local consultant to conduct technical due diligence for 2,200 tpd and 35 MW Waste to Energy Plant that will be built in Sunter, North Jakarta. ?<br>This due diligence is done for lenders appraisal and to make sure that the Waste to Energy plant will be operating sustainably in terms of technicalities.', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'service_about');
INSERT INTO `dictionary` VALUES (346, 'id', 'Ramboll Danmark A/S as the main consultant was working together with Waste4Change as local consultant to conduct technical due diligence for 2,200 tpd and 35 MW Waste to Energy Plant that will be built in Sunter, North Jakarta.<br>This due diligence is done for lenders appraisal and to make sure that the Waste to Energy plant will be operating sustainably in terms of technicalities.', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'service_about');
INSERT INTO `dictionary` VALUES (347, 'en', 'Waste4Change assisted PT Indonesia Power UP Suralaya in implementing responsible waste management in both the existing office and  the new buildings (Unit 5-7 and Coal Building), as well as Suralaya village itself.  <br>The purpose of this assistance was to increase awareness and action on the importance of sorting out waste, and to subsequently reuse waste that is disaggregated and has value and  eventually to reduce the waste disposed to Cinapol landfill. ', 'waste4change-assisted-pt-indonesia-power-up-surala', 'service_about');
INSERT INTO `dictionary` VALUES (348, 'id', 'Waste4Change membantu PT Indonesia Power UP Suralaya dalam menerapkan pengelolaan sampah yang bertanggung jawab di kantor lama sekaligus di gedung barunya (Unit 5-7 dan Coal Building), dan di desa Suralaya sendiri.  <br>Tujuan dari pendampingan ini adalah untuk meningkatkan kesadaran dan perilaku masyarakat mengenai pentingnya memilah sampah, untuk menggunakan kembali sampah yang telah dipisahkan sesuai bahannya dan masih memiliki nilai, serta mengurangi jumlah timbulan sampah yang dibuang di TPA Cinapol. ? ', 'waste4change-assisted-pt-indonesia-power-up-surala', 'service_about');
INSERT INTO `dictionary` VALUES (349, 'en', 'In order to achieve the national target of 30% waste reduction by 2030 that the government had set, TPS 3R program can serve as one of the solutions. Waste4Change as one of the TPS 3R Advisory consultants plays a pivotal role in assisting, supervising, monitoring and evaluating the implementation of this community-based program.<br>The scope of work includes optimization of previously constructed TPS 3R to improve both the management and business development as well as supervision on the establishment of new TPS 3Rs. Waste4Change monitored and evaluated TPS 3R throughout Kalimantan and Java (in 2017) and Kalimantan, Java, Sulawesi, Nusa Tenggara, Maluku, and Papua (in 2018). ', 'in-order-to-achieve-the-national-target-of-30-was', 'service_about');
INSERT INTO `dictionary` VALUES (350, 'id', 'Dalam rangka mencapai target nasional pengurangan sampah sebesar 30% di tahun 2030 yang telah ditetapkan pemerintah, program TPS 3R dapat menjadi salah satu solusinya. Waste4Change sebagai salah satu konsultan TPS 3R Advisory berperan dalam mendampingi, mengawasi, memonitor, serta mengevaluasi penerapan program berbasis komunitas ini.<br>Cakupan kerjanya meliputi pengoptimalisasian TPS 3R yang kemarin sudah dibangun untuk meningkatkan manajemen dan pengembangan bisnisnya, serta pengawasan TPS 3R yang baru dibangun. Waste4Change memonitor dan mengevaluasi TPS 3R yang ada di Kalimantan dan Jawa (di tahun 2017) dan di Kalimantan, Jawa, Sulawesi, Nusa Tenggara, Maluku, dan Papua (di tahun 2018). ', 'in-order-to-achieve-the-national-target-of-30-was', 'service_about');
INSERT INTO `dictionary` VALUES (351, 'en', 'Tourism in Indonesia is currently growing exponentially. This condition, if not properly planned, will have negative implications for the environment such as increased waste amount that will lead to health issues, environmental problems, and eventually the reluctance of tourists to visit certain destinations that are mismanaged.<br>Pulau Merah, with its astonishing sunset view and nice waves for surfing, is one of the emerging tourist destinations in Banyuwangi. It will almost likely  face the said problems if there is no concrete actions to encourage a good waste management system and campaign. ', 'tourism-in-indonesia-is-currently-growing-exponent', 'service_about');
INSERT INTO `dictionary` VALUES (352, 'id', 'Sektor pariwisata di Indonesia sedang berkembang pesat. Kondisi ini, jika tidak ditangani dengan tepat, akan menyebabkan dampak negatif terhadap lingkungan, misalnya peningkatan jumlah sampah yang akan menyebabkan masalah kesehatan, lingkungan, dan pada akhirnya membuat wisatawan segan untuk kembali ke destinasi wisata yang tidak dikelola dengan baik tersebut.<br>Pulau Merah, dengan pemandangan matahari terbenam yang cantik dan ombak yang cocok untuk berselancar, merupakan salah satu destinasi wisata yang tengah naik daun di Banyuwangi. Tempat tersebut berpotensi untuk mengalami masalah serupa apabila tidak ada aksi konkret untuk mendorong kampanye dan sistem manajemen sampah yang baik. ', 'tourism-in-indonesia-is-currently-growing-exponent', 'service_about');
INSERT INTO `dictionary` VALUES (353, 'en', 'Indonesia\'s frontline areas reflect the life of the country, including its waste management. Therefore, a responsible waste management in the frontline areas is a necessity to develop a sustainable frontline. This program aims to implement responsible waste management system in 7 Indonesian borderline areas. This program focuses on community capacity building so that waste burning and the behavior of unethical waste dumping can be reduced.', 'indonesias-frontline-areas-reflect-the-life-of-th', 'service_about');
INSERT INTO `dictionary` VALUES (354, 'id', 'Wilayah-wilayah terdepan Indonesia merefleksikan kehidupan negara tersebut, termasuk tentang sistem pengelolaan sampahnya. Karena itulah, pengelolaan sampah yang bertanggung jawab di wilayah-wilayah terdepan Indonesia diperlukan demi keberlanjutannya. Program ini bertujuan untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab di 7 area perbatasan Indonesia dengan negara lain. Program ini berfokus pada peningkatan kapasitas untuk mengurangi kegiatan membakar sampah atau perilaku membuang sampah sembarangan.', 'indonesias-frontline-areas-reflect-the-life-of-th', 'service_about');
INSERT INTO `dictionary` VALUES (355, 'en', 'The Unilever Foundation along with Waste4Change organized a 3R Green School program that aimed to educate students in nine schools in Tangerang about responsible waste management through 3R principles, as well as to encourage them about environmental awareness.<br>In this program, students are informed to understand the problem of waste, and the methods of sorting waste and processing waste by applying 3R principles in order to reduce the waste disposal to landfill in South Tangerang.<br>At the end of the program, students from each of the selected school  have a better understanding on the importance of  environmental awareness and are expected to consistently commit in handling their waste responsibly.', 'the-unilever-foundation-along-with-waste4change-or', 'service_about');
INSERT INTO `dictionary` VALUES (356, 'id', 'Wilayah-wilayah terdepan Indonesia merefleksikan kehidupan negara tersebut, termasuk tentang sistem pengelolaan sampahnya. Karena itulah, pengelolaan sampah yang bertanggung jawab di wilayah-wilayah terdepan Indonesia diperlukan demi keberlanjutannya. Program ini bertujuan untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab di 7 area perbatasan Indonesia dengan negara lain. Program ini berfokus pada peningkatan kapasitas untuk mengurangi kegiatan membakar sampah atau perilaku membuang sampah sembarangan.<br>Program peningkatan kapasitas ini diharapkan mampu menanamkan pemahaman masyarakat lokal mengenai pentingnya partisipasi mereka dalam pengelolaan sampah yang bertanggung jawab, keuntungan dari penerapan sistem pengelolaan sampah yang bertanggung jawab, serta dampak langsung dari tidak adanya sistem pengelolaan sampah yang layak.', 'the-unilever-foundation-along-with-waste4change-or', 'service_about');
INSERT INTO `dictionary` VALUES (357, 'en', 'Knowledge about responsible solid waste management and the 3R (Reduce- Reuse, Recycle) Concept is very important, especially for institutions. Waste4Change facilitates institutions to be agents of change so they can encourage responsible solid waste management in their environments.<br>As a country with a strong foundation in sustainability, the Embassy of Finland wants to play its role in waste management in Indonesia through green office practices. They were keen to implement solid waste management in their office in order to reduce waste transported to TPST Bantar Gebang.<br>Akabis Class in the Embassy of Finland was held in 2018 and around 20 employees from different sectors joined the training session.', 'knowledge-about-responsible-solid-waste-management', 'service_about');
INSERT INTO `dictionary` VALUES (358, 'id', 'Pengetahuan mengenai pengelolaan sampah yang bertanggung jawab dan konsep 3R (Reduce- Reuse, Recycle) sangatlah penting, terutama bagi institusi. Waste4Change memfasilitasi institusi untuk menjadi agen perubahan agar mereka bisa mendorong terciptanya sistem pengelolaan sampah padat yang bertanggung jawab d kantor mereka sendiri. <br>Sebagai negara yang memiliki landasan kuat dalam aspek berkelanjutan, Kedutaan Finlandia ingin menjalankan perannya dalam pengelolaan sampah di Indonesia melalui praktik kantor hijau. Mereka bersemangat untuk menerapkan pengelolaan sampah padat di kantor mereka demi mengurangi jumlah timbulan sampah yang berakhir di TPST Bantar Gebang. <br>AKABIS-Class di Kedutaan Finlandia dilaksanakan di tahun 2018 dan sekitar 20 pegawai dari berbagai sektor mengikuti sesi edukasi tersebut.', 'knowledge-about-responsible-solid-waste-management', 'service_about');
INSERT INTO `dictionary` VALUES (359, 'en', 'The ancient method of making paper is not only recognized as a way of reading history, but also as a way to understand the philosophy of letters, eastern culture, and the sustainability of culture and the environment.<br>The Museum of Modern and Contemporary Art in Nusantara (also known as Museum MACAN) invited Waste4Change to enlighten the ways on handling solid waste sustainably especially on paper waste to the audience of enthusiasts on sustainability in their museum.', 'the-ancient-method-of-making-paper-is-not-only-rec', 'service_about');
INSERT INTO `dictionary` VALUES (360, 'id', 'Metode kuno untuk membuat kertas tidak hanya dikenal sebagai cara untuk memahami sejarah, tetapi juga sebagai cara untuk memahami filosofi dibalik aksara, budaya Timur, serta keberlanjutan budaya dan lingkungan. <br>Museum of Modern and Contemporary Art in Nusantara (MACAN) mengundang Waste4Change untuk memberi pencerahan mengenai cara-cara menangani sampah padat, terutama sampah kertas, kepada para pengunjung museum yang antusias terhadap topik keberlanjutan atau sustainability', 'the-ancient-method-of-making-paper-is-not-only-rec', 'service_about');
INSERT INTO `dictionary` VALUES (361, 'en', 'PT Bank DBS Indonesia is one of Waste4Change\'s clients that implements ZWTL (Zero Waste To Landfill) concept in its office\'s waste management system. To increase the performance of ZWTL program at the PT Bank DBS Indonesia office, all of the PT Bank DBS Indonesia employees were required to enroll in the Akabis Xperience program held by Waste4Change.<br>Through AKABIS Xperience activities, PT Bank DBS Indonesia employees were expected to understand more about responsible waste management concept.', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'service_about');
INSERT INTO `dictionary` VALUES (362, 'id', 'PT BANK DBS Indonesia merupakan salah satu klien Waste4Change yang menggunakan servis ZWTL (Zero Waste To Landfill). Salah satu syarat agar program ZWTL bisa diterapkan di kantor PT BANK DBS Indonesia yaitu dengan melaksanakan AKABIS-Xperience untuk semua pegawai PT BANK DBS Indonesia.?<br>Melalui kegiatan-kegiatan di AKABIS Xperience, pegawai PT BANK DBS Indonesia bisa meningkatkan kepedulian dan pemahaman mereka mengenai sistem pengelolaan sampah yang bertanggung jawab.', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'service_about');
INSERT INTO `dictionary` VALUES (363, 'en', 'Waste4Change became one of the facilitators for YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition 2018. The event is implemented by Divers Clean Action and hosted by the US Embassy.<br>Through Akabis Xperience, Waste4Change delivered hands-on experiences and ensured the continuing effort of supporting behavioral change regarding waste management.<br>61 young leaders from 11 Southeast Asia countries were given a brief presentation about the current waste management condition by Waste4Change representatives, followed by a visit to Waste4Change\'s Material Recovery Facility (MRF), Waste4Change\'s Composting Area, and the infamous Bantar Gebang landfill – located not far from Waste4Change\'s head office.', 'waste4change-became-one-of-the-facilitators-for-ys', 'service_about');
INSERT INTO `dictionary` VALUES (364, 'id', 'Waste4Change menjadi salah satu fasilitator untuk YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition Workshop yang diselenggarakan oleh Divers Clean Action dan dihost oleh Kedutaan Amerika Serikat. <br>Melalui program AKABIS-Xperience, Waste4Change ingin memberikan pengalaman langsung dan memastikan adanya perubahan perilaku yang berkelanjutan dalam usaha pengelolaan sampah yang lebih baik.<br>61 pemimpin muda dari 11 negara Asia Tenggara diberikan presentasi singkat oleh perwakilan Waste4change mengenai kondisi pengelolaan sampah yang ada di Indonesia, dilanjutkan oleh kunjungan ke Rumah Pemulihan Material (RPM) dan Rumah Kompos Waste4Change, dan sekaligus ke TPST Bantar Gebang yang berlokasi tidak jauh dari kantor Waste4Change.  ', 'waste4change-became-one-of-the-facilitators-for-ys', 'service_about');
INSERT INTO `dictionary` VALUES (365, 'en', 'Analysis and recommendations to implement a responsible 3R-based waste management system using the approach of 5 aspects', 'analysis-and-recommendations-to-implement-a-respon', 'service_achievement');
INSERT INTO `dictionary` VALUES (366, 'id', 'Analisis dan rekomendasi untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab dan berbasis 3R dengan menggunakan 5 aspek pendekatan', 'analysis-and-recommendations-to-implement-a-respon', 'service_achievement');
INSERT INTO `dictionary` VALUES (367, 'en', 'Identification of waste management method that is potential to be developed', 'identification-of-waste-management-method-that-is-', 'service_achievement');
INSERT INTO `dictionary` VALUES (368, 'id', 'Identifikasi metode pengelolaan sampah yang memiliki potensi untuk dikembangkan?', 'identification-of-waste-management-method-that-is-', 'service_achievement');
INSERT INTO `dictionary` VALUES (369, 'en', 'Written report and presentation of 3R-based waste management?', 'written-report-and-presentation-of-3r-based-waste-', 'service_achievement');
INSERT INTO `dictionary` VALUES (370, 'id', 'Laporan tertulis beserta presentasi mengenai pengelolaan sampah berbasis 3R', 'written-report-and-presentation-of-3r-based-waste-', 'service_achievement');
INSERT INTO `dictionary` VALUES (371, 'en', 'Data collection activities were done through interview, field observation, questionnaire distribution and waste sampling in favor of analyzing the major problems that occurred in Beting Village and Jami\' Mosque area', 'data-collection-activities-were-done-through-inter', 'service_achievement');
INSERT INTO `dictionary` VALUES (372, 'id', 'Aktivitas pengumpulan data dilakukan dengan cara wawancara, observasi lapangan, pendistribusian kuesioner, serta pengambilan sampel sampah dalam rangka menganalisis masalah utama yang terjadi di Desa Beting dan area masjid Jami\'', 'data-collection-activities-were-done-through-inter', 'service_achievement');
INSERT INTO `dictionary` VALUES (373, 'en', 'Analyzed the current management system by identifying the existing law, Institution, Operational Techniques, Community Participation and Finance aspects respectively', 'analyzed-the-current-management-system-by-identify', 'service_achievement');
INSERT INTO `dictionary` VALUES (374, 'id', 'Menganalisis sistem manajemen sampah yang ada dengan mengidentifikasi peraturan yang ada, institusi, teknis operasional, partisipasi masyarakat, serta aspek finansialnya secara berurutan', 'analyzed-the-current-management-system-by-identify', 'service_achievement');
INSERT INTO `dictionary` VALUES (375, 'en', 'Key players and stakeholders mapping', 'key-players-and-stakeholders-mapping', 'service_achievement');
INSERT INTO `dictionary` VALUES (376, 'id', 'Pemetaan aktor yang krusial dan pemangku kepentingan', 'key-players-and-stakeholders-mapping', 'service_achievement');
INSERT INTO `dictionary` VALUES (377, 'en', 'Comprehensive waste flow analysis of Jakarta and Surabaya City', 'comprehensive-waste-flow-analysis-of-jakarta-and-s', 'service_achievement');
INSERT INTO `dictionary` VALUES (378, 'id', 'Analisis alur sampah yang komprehensi di kota Jakarta Surabaya', 'comprehensive-waste-flow-analysis-of-jakarta-and-s', 'service_achievement');
INSERT INTO `dictionary` VALUES (379, 'en', 'Identification of recycling rate in Jakarta and Surabaya?', 'identification-of-recycling-rate-in-jakarta-and-su', 'service_achievement');
INSERT INTO `dictionary` VALUES (380, 'id', 'Identifikasi tingkat daur ulang sampah di Jakarta dan Surabaya?', 'identification-of-recycling-rate-in-jakarta-and-su', 'service_achievement');
INSERT INTO `dictionary` VALUES (381, 'en', 'Solid Waste Management SWOT analysis of Jakarta and Surabaya City', 'solid-waste-management-swot-analysis-of-jakarta-an', 'service_achievement');
INSERT INTO `dictionary` VALUES (382, 'id', 'Analisis SWOT Pengelolaan Sampah di Jakarta dan Surabaya', 'solid-waste-management-swot-analysis-of-jakarta-an', 'service_achievement');
INSERT INTO `dictionary` VALUES (383, 'en', 'Retrieved better understanding on the total amount and characteristics of plastics that lies in Jakarta\'s rivers, which has become a problem in the past years, as well as analyzed the best way to tackle these issues', 'retrieved-better-understanding-on-the-total-amount', 'service_achievement');
INSERT INTO `dictionary` VALUES (384, 'id', 'Memperoleh pemahaman yang lebih baik mengenai jumlah dan karakteristik plastik yang berada di sungai-sungai di Jakarta, yang memang sudah menjadi masalah selama beberapa tahun belakangan, sekaligus menganalisis cara yang paling tepat untuk mengatasi masalah tersebut', 'retrieved-better-understanding-on-the-total-amount', 'service_achievement');
INSERT INTO `dictionary` VALUES (385, 'en', 'Published paper regarding the project can be found in the following link', 'published-paper-regarding-the-project-can-be-found', 'service_achievement');
INSERT INTO `dictionary` VALUES (386, 'id', 'Makalah ilmiah mengenai proyek ini bisa dibaca di link berikut', 'published-paper-regarding-the-project-can-be-found', 'service_achievement');
INSERT INTO `dictionary` VALUES (387, 'en', 'Solid Waste Characteristics and solid-waste existing system review', 'solid-waste-characteristics-and-solid-waste-existi', 'service_achievement');
INSERT INTO `dictionary` VALUES (388, 'id', 'Solid Waste Characteristics and solid-waste existing system review', 'solid-waste-characteristics-and-solid-waste-existi', 'service_achievement');
INSERT INTO `dictionary` VALUES (389, 'en', 'Solid waste supply plan review and its possible disruptions', 'solid-waste-supply-plan-review-and-its-possible-di', 'service_achievement');
INSERT INTO `dictionary` VALUES (390, 'id', 'Solid waste supply plan review and its possible disruptions', 'solid-waste-supply-plan-review-and-its-possible-di', 'service_achievement');
INSERT INTO `dictionary` VALUES (391, 'en', 'Suitability study of the current site for Waste-to-Energy facility', 'suitability-study-of-the-current-site-for-waste-to', 'service_achievement');
INSERT INTO `dictionary` VALUES (392, 'id', 'Suitability study of the current site for Waste-to-Energy facility', 'suitability-study-of-the-current-site-for-waste-to', 'service_achievement');
INSERT INTO `dictionary` VALUES (393, 'en', 'Increased awareness and action of employees towards responsible waste management?', 'increased-awareness-and-action-of-employees-toward', 'service_achievement');
INSERT INTO `dictionary` VALUES (394, 'id', 'Peningkatan kesadaran dan perilaku para pegawai terhadap konsep pengelolaan sampah yang bertanggung jawab?', 'increased-awareness-and-action-of-employees-toward', 'service_achievement');
INSERT INTO `dictionary` VALUES (395, 'en', 'Increased segregation rate', 'increased-segregation-rate', 'service_achievement');
INSERT INTO `dictionary` VALUES (396, 'id', 'Bertambahnya tingkat daur ulang sampah', 'increased-segregation-rate', 'service_achievement');
INSERT INTO `dictionary` VALUES (397, 'en', 'Decreased residual waste generation', 'decreased-residual-waste-generation', 'service_achievement');
INSERT INTO `dictionary` VALUES (398, 'id', 'Berkurangnya produksi sampah residu', 'decreased-residual-waste-generation', 'service_achievement');
INSERT INTO `dictionary` VALUES (399, 'en', 'Increased economic incentives from composting', 'increased-economic-incentives-from-composting', 'service_achievement');
INSERT INTO `dictionary` VALUES (400, 'id', 'Penambahan insentif ekonomi dari hasil mengkompos', 'increased-economic-incentives-from-composting', 'service_achievement');
INSERT INTO `dictionary` VALUES (401, 'en', 'Reports containing progress activities, lessons learnt and best practices of TPS3R', 'reports-containing-progress-activities-lessons-le', 'service_achievement');
INSERT INTO `dictionary` VALUES (402, 'id', 'Laporan yang mencakup perkembangan, pelajaran yang didapat, serta contoh praktik terbaik dari TPS3R', 'reports-containing-progress-activities-lessons-le', 'service_achievement');
INSERT INTO `dictionary` VALUES (403, 'en', 'Proceedings of Workshop/ Consignment Proceedings', 'proceedings-of-workshop-consignment-proceedings', 'service_achievement');
INSERT INTO `dictionary` VALUES (404, 'id', 'Catatan Workshop/ Catatan Konsinyasi', 'proceedings-of-workshop-consignment-proceedings', 'service_achievement');
INSERT INTO `dictionary` VALUES (405, 'en', 'Video and audio visual documentation of Monitoring and Evaluation activities', 'video-and-audio-visual-documentation-of-monitoring', 'service_achievement');
INSERT INTO `dictionary` VALUES (406, 'id', 'Video dan dokumentasi audio visual dari aktivitas Monitoring dan Evaluasi', 'video-and-audio-visual-documentation-of-monitoring', 'service_achievement');
INSERT INTO `dictionary` VALUES (407, 'en', 'The formation of Eco Ranger: a group of local people that operates waste management systems and also educates tourists and locals about environmental issues.The Eco Ranger is formed to support the cleanliness and sustainability of their home-environment as one of the famous tourist destinations in Indonesia', 'the-formation-of-eco-ranger:-a-group-of-local-peop', 'service_achievement');
INSERT INTO `dictionary` VALUES (408, 'id', 'Pembentukan Eco Ranger, sekelompok orang dari masyarakat lokal yang mengoperasikan sistem pengelolaan sampah, mengedukasi wisatawan dan orang lokal mengenai isu lingkungan, dan memastikan bahwa rumah mereka yang menjadi destinasi wisata tetap bersih dan indah untuk dinikmati oleh generasi-generasi berikutnya', 'the-formation-of-eco-ranger:-a-group-of-local-peop', 'service_achievement');
INSERT INTO `dictionary` VALUES (409, 'en', 'Technical assistance, capacity building, connecting partners and funding sources, assistance in making Standard Operating Procedure, and continuous monitoring and evaluation for 3 years', 'technical-assistance-capacity-building-connectin', 'service_achievement');
INSERT INTO `dictionary` VALUES (410, 'id', 'Bantuan teknis, peningkatan kapasitas, menghubungkan partner dan sumber pendanaan, pendampingan dalam merancang SOP, dan pemantauan serta evaluasi yang dilakukan terus menerus selama 3 tahun lamanya', 'technical-assistance-capacity-building-connectin', 'service_achievement');
INSERT INTO `dictionary` VALUES (411, 'en', 'Waste Management Education to local communities and stakeholders?', 'waste-management-education-to-local-communities-an', 'service_achievement');
INSERT INTO `dictionary` VALUES (412, 'id', 'Edukasi manajemen sampah terhadap masyarakat lokal dan para pemangku kepentingan?', 'waste-management-education-to-local-communities-an', 'service_achievement');
INSERT INTO `dictionary` VALUES (413, 'en', 'Technical guideline of organic and inorganic waste handling?', 'technical-guideline-of-organic-and-inorganic-waste', 'service_achievement');
INSERT INTO `dictionary` VALUES (414, 'id', 'Panduan teknis mengenai penanganan sampah organik dan anorganik', 'technical-guideline-of-organic-and-inorganic-waste', 'service_achievement');
INSERT INTO `dictionary` VALUES (415, 'en', 'Formation of organization and follow-up work plan', 'formation-of-organization-and-follow-up-work-plan', 'service_achievement');
INSERT INTO `dictionary` VALUES (416, 'id', 'Pembentukan organisasi dan tindak lanjut rencana kerja', 'formation-of-organization-and-follow-up-work-plan', 'service_achievement');
INSERT INTO `dictionary` VALUES (417, 'en', 'Forming the Task Force which in charge of increasing the environmental awareness and 3R principle application amongst other school residents. The Task Force members are consist of selected teachers and students from each school', 'forming-the-task-force-which-in-charge-of-increasi', 'service_achievement');
INSERT INTO `dictionary` VALUES (418, 'id', 'Pembentukan Satuan Tugas. Melalui program ini, para anggota Satuan Tugas bertanggung jawab untuk mendorong timbulnya kesadaran lingkungan di kalangan warga sekolah dan menerapkan prinsip 3R di kehidupan sehari-hari. Anggota Satuan Tugas terdiri dari murid dan guru yang sudah dipilih dari setiap sekolah', 'forming-the-task-force-which-in-charge-of-increasi', 'service_achievement');
INSERT INTO `dictionary` VALUES (419, 'en', 'Organizing education events, which are AKABIS Class and AKABIS Xperience, to increase awareness and introduce several solutions to overcome the waste problem?', 'organizing-education-events-which-are-akabis-clas', 'service_achievement');
INSERT INTO `dictionary` VALUES (420, 'id', 'Mengadakan acara edukatif, yaitu AKADEMI BIJAK SAMPAH (AKABIS) Class and Xperience, untuk meningkatkan kesadaran dan memperkenalkan beberapa solusi dari masalah sampah yang ada', 'organizing-education-events-which-are-akabis-clas', 'service_achievement');
INSERT INTO `dictionary` VALUES (421, 'en', 'Each school was expected to be able to carry on the Recycle Day activities independently, in which students are encouraged to put recyclable waste in the designated bin to be recycled. Waste4Change conducted monitoring and evaluation of the waste generated during the activities', 'each-school-was-expected-to-be-able-to-carry-on-th', 'service_achievement');
INSERT INTO `dictionary` VALUES (422, 'id', 'Setiap sekolah diharapkan mampu menjalankan aktivitas Recycle Day, dimana para murid didorong untuk menaruh sampah yang bisa didaur ulang ke dalam kantong sampah yang sesuai. Waste4Change melakukan pengawasan dan evaluasi terhadap sampah yang dihasilkan selama aktivitas berlangsung', 'each-school-was-expected-to-be-able-to-carry-on-th', 'service_achievement');
INSERT INTO `dictionary` VALUES (423, 'en', 'Sharing Session: why we need to be responsible for our solid waste management?', 'sharing-session:-why-we-need-to-be-responsible-for', 'service_achievement');
INSERT INTO `dictionary` VALUES (424, 'id', 'Sesi Sharing: kenapa kita harus menerapkan pengelolaan sampah padat yang bertanggung jawab?', 'sharing-session:-why-we-need-to-be-responsible-for', 'service_achievement');
INSERT INTO `dictionary` VALUES (425, 'en', 'Presentation Session: how can we conduct responsible solid waste management starting from our office??', 'presentation-session:-how-can-we-conduct-responsib', 'service_achievement');
INSERT INTO `dictionary` VALUES (426, 'id', 'Sesi Presentasi: bagaimana kita bisa menerapkan pengelolaan sampah yang ertanggung jawab dimulai dari kantor sendiri?', 'presentation-session:-how-can-we-conduct-responsib', 'service_achievement');
INSERT INTO `dictionary` VALUES (427, 'en', 'Interactive Games?', 'interactive-games?', 'service_achievement');
INSERT INTO `dictionary` VALUES (428, 'id', 'Permainan Interaktif', 'interactive-games?', 'service_achievement');
INSERT INTO `dictionary` VALUES (429, 'en', 'Open discussion with fellow panels and audiences on solid waste management', 'open-discussion-with-fellow-panels-and-audiences-o', 'service_achievement');
INSERT INTO `dictionary` VALUES (430, 'id', 'Bagaimana cara menangani dan mengelola sampah secara bertanggung jawab dan berkelanjutan, terutama sampah kertas', 'open-discussion-with-fellow-panels-and-audiences-o', 'service_achievement');
INSERT INTO `dictionary` VALUES (431, 'en', 'The importance of responsible solid waste management?', 'the-importance-of-responsible-solid-waste-manageme', 'service_achievement');
INSERT INTO `dictionary` VALUES (432, 'id', 'Pentingnya pengelolaan sampah padat yang bertanggung jawab', 'the-importance-of-responsible-solid-waste-manageme', 'service_achievement');
INSERT INTO `dictionary` VALUES (433, 'en', 'How to handle and treat waste responsibly and sustainably especially on paper waste', 'how-to-handle-and-treat-waste-responsibly-and-sust', 'service_achievement');
INSERT INTO `dictionary` VALUES (434, 'id', 'Bagaimana cara menanggulangi kerugian yang disebabkan oleh sampah terhadap manusia dan makhluk hidup lain', 'how-to-handle-and-treat-waste-responsibly-and-sust', 'service_achievement');
INSERT INTO `dictionary` VALUES (435, 'en', 'How to mitigate adverse effects of waste for humans and other living creatures', 'how-to-mitigate-adverse-effects-of-waste-for-human', 'service_achievement');
INSERT INTO `dictionary` VALUES (436, 'id', 'Adanya diskusi terbuka antara pembicara dan peserta mengenai pengelolaan sampah padat', 'how-to-mitigate-adverse-effects-of-waste-for-human', 'service_achievement');
INSERT INTO `dictionary` VALUES (437, 'en', 'Shock Moment: all participants are invited to see the magnitude of waste problems by visiting Bantar Gebang Landfill?', 'shock-moment:-all-participants-are-invited-to-see-', 'service_achievement');
INSERT INTO `dictionary` VALUES (438, 'id', 'Shock Moment: semua peserta diajak untuk menyaksikan besarnya permasalahan sampah yang kita hadapi melalui kunjungan ke TPST Bantar Gebang', 'shock-moment:-all-participants-are-invited-to-see-', 'service_achievement');
INSERT INTO `dictionary` VALUES (439, 'en', 'O\' Moment: responsible waste management presentation regarding why they must be responsible with their waste?', 'o-moment:-responsible-waste-management-presentati', 'service_achievement');
INSERT INTO `dictionary` VALUES (440, 'id', 'O\'Moment: presentasi mengenai pengelolaan sampah yang bertanggung jawab dan mengapa setiap orang harus bertanggung jawab terhadap sampahnya', 'o-moment:-responsible-waste-management-presentati', 'service_achievement');
INSERT INTO `dictionary` VALUES (441, 'en', 'Facility Tour: visiting W4C\'s facilities, including our Material Recovery Facility and Composting House', 'facility-tour:-visiting-w4cs-facilities-includin', 'service_achievement');
INSERT INTO `dictionary` VALUES (442, 'id', 'Tur Fasilitas: Mengunjungi fasilitas milik Waste4Change, yaitu Rumah Pemulihan Material dan Rumah Kompos', 'facility-tour:-visiting-w4cs-facilities-includin', 'service_achievement');
INSERT INTO `dictionary` VALUES (443, 'en', 'Community Assistance', 'community-assistance', 'service_offer_name');
INSERT INTO `dictionary` VALUES (444, 'id', 'Community Assistance', 'community-assistance', 'service_offer_name');
INSERT INTO `dictionary` VALUES (445, 'en', 'Community Capaciity Building', 'community-capaciity-building', 'service_offer_name');
INSERT INTO `dictionary` VALUES (446, 'id', 'Community Capaciity Building', 'community-capaciity-building', 'service_offer_name');
INSERT INTO `dictionary` VALUES (447, 'en', 'AKABIS CLASS', 'akabis-class', 'service_offer_name');
INSERT INTO `dictionary` VALUES (448, 'id', 'AKABIS CLASS', 'akabis-class', 'service_offer_name');
INSERT INTO `dictionary` VALUES (449, 'en', 'AKABIS XPERIENCE', 'akabis-xperience', 'service_offer_name');
INSERT INTO `dictionary` VALUES (450, 'id', 'AKABIS XPERIENCE', 'akabis-xperience', 'service_offer_name');
INSERT INTO `dictionary` VALUES (451, 'en', 'One-day Visit', 'one-day-visit', 'service_offer_name');
INSERT INTO `dictionary` VALUES (452, 'id', 'Kunjungan 1 Hari', 'one-day-visit', 'service_offer_name');
INSERT INTO `dictionary` VALUES (453, 'en', 'Five-day Visit', 'five-day-visit', 'service_offer_name');
INSERT INTO `dictionary` VALUES (454, 'id', 'Kunjungan 5 Hari', 'five-day-visit', 'service_offer_name');
INSERT INTO `dictionary` VALUES (455, 'en', '21 Days of Intensive Program', '21-days-of-intensive-program', 'service_offer_name');
INSERT INTO `dictionary` VALUES (456, 'id', 'Program Intensif Selama 21 Hari', '21-days-of-intensive-program', 'service_offer_name');
INSERT INTO `dictionary` VALUES (457, 'en', 'Planning and operational assistance for a minimum duration of 6 months to ensure the sustainability of the SWM program\'s  within a certain area?.<br>Encourage communities\' aspiration and assist them to take actions on responsible solid waste management programs within their neighborhood?<br>Designed for neighborhood, city, offices.', 'planning-and-operational-assistance-for-a-minimum-', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (458, 'id', 'Perencanaan dan pendampingan operasional selama minimal 6 bulan untuk memastikan keberlanjutan dari program SWM di suatu daerah/area tertentu?<br>Mendorong aspirasi dari komunitas lokal dan membantu mereka untuk mengambil tindakan nyata dalam program pengelolaan sampah yang bertanggung jawab di lingkungan mereka masing-masing<br>Dirancang untuk perumahan, kota, dan perkantoran', 'planning-and-operational-assistance-for-a-minimum-', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (459, 'en', 'Community Based Capacity Building is a 3-days training activities for local waste organization?s<br>Deepen their understanding towards institutional management concept in waste sector and assist them to make a sustainable action plan ?.<br>Designed to empower Solid Waste Activists, Waste Banks, Government,  Civil Society Group (TPS 3R managers), Communities and Academic Institutional to perform? implement? responsible waste management in their communities?.', 'community-based-capacity-building-is-a-3-days-trai', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (460, 'id', 'Community Based Capacity Building adalah sebuah pelatihan selama 3 hari untuk organisasi sampah di tingkat lokal<br>Bertujuan untuk memperdalam pemahaman mereka terhadap konsep manajemen institusi dalam sektor persampahan dan membantu mereka untuk membuat rencana aksi yang berkelanjutan<br>Dirancang untuk memberdayakan aktivis Sampah Padat, Bank Sampah, Pemerintah, Kelompok Masyarakat Sipil, dan Institusi Pendidikan untuk ikut menerapkan pengelolaan sampah yang bertanggung jawab di komunitas mereka', 'community-based-capacity-building-is-a-3-days-trai', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (461, 'en', 'A 2-hour In-class training and discussion<br>Held in client\'s institution<br>Akabis Class can be attended by:<ul><li>The general public, especially young people who are the agents of change, for a better future of waste management in Indonesia </li><li>Institution</li></ul>', 'a-2-hour-in-class-training-and-discussion<br>held-', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (462, 'id', 'Pelatihan dan diskusi dalam ruangan dengan durasi 2 jam<br>Diadakan di tempat klien<br>Akabis Class dapat diikuti oleh:<ul><li>Masyarakat umum, terutama anak muda yang menjadi agen perubahan demi masa depan pengelolaan sampah di Indonesia yang lebih baik lagi</li><li>Institusi</li></ul>', 'a-2-hour-in-class-training-and-discussion<br>held-', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (463, 'en', 'A 6-hour educational tour and interactive discussion<br>Visit to landfill?<br>Visit to W4C Facility<br>Akabis Xperience can be  attended by:<ul><li>The general public who are the agents of change for a better future of waste management in Indonesia</li><li>Institution</li></ul>', 'a-6-hour-educational-tour-and-interactive-discussi', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (464, 'id', 'Tur edukasional dan diskusi interaktif yang berlangsung selama 6 jam<br>Kunjungan ke TPA<br>Kunjungan ke Fasilitas W4C ?<br>Akabis Xperience dapat diikuti oleh<ul><li>Masyarakat umum, terutama anak muda yang menjadi agen perubahan demi masa depan pengelolaan sampah di Indonesia yang lebih baik lagi</li><li>Institusi</li></ul>', 'a-6-hour-educational-tour-and-interactive-discussi', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (465, 'en', 'Tour and introduction of BSF cultivation and breeding facilities to see the maintenance methods as well as the decomposition process of food waste using BSF', 'tour-and-introduction-of-bsf-cultivation-and-breed', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (466, 'id', 'Tur dan pengenalan fasilitas pengembangbiakan dan pembudidayaan BSF untuk melihat metode pemeliharaan dan proses pembusukan sampah makanan menggunakan BSF', 'tour-and-introduction-of-bsf-cultivation-and-breed', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (467, 'en', 'Engage in a more detailed exploration through direct practice of breeding and cultivating BSF for 5 days in our facility', 'engage-in-a-more-detailed-exploration-through-dire', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (468, 'id', 'Eksplorasi yang lebih mendetail dalam bentuk berlatih langsung membudidayakan dan beternak BSF selama 5 hari di fasilitas kami', 'engage-in-a-more-detailed-exploration-through-dire', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (469, 'en', 'This is suitable for business actors who aspire to develop their very own BSF breeding and cultivation facilities. We will help you to design and plan your own BSF cultivation and breeding facilities in your city/area', 'this-is-suitable-for-business-actors-who-aspire-to', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (470, 'id', 'Program ini cocok untuk pelaku bisnis yang ingin mengembangkan peternakan dan budidaya BSFnya sendiri. Kami akan membantu Anda untuk merancang dan merencanakan fasilitas budidaya dan penembangbiakan BSF di kota/domisili Anda', 'this-is-suitable-for-business-actors-who-aspire-to', 'service_activity_name');
INSERT INTO `dictionary` VALUES (471, 'en', 'Phase 1', 'phase-1', 'service_activity_name');
INSERT INTO `dictionary` VALUES (472, 'id', 'Tahap 1', 'phase-1', 'service_activity_name');
INSERT INTO `dictionary` VALUES (473, 'en', 'Phase 2', 'phase-2', 'service_activity_name');
INSERT INTO `dictionary` VALUES (474, 'id', 'Tahap 2', 'phase-2', 'service_activity_name');
INSERT INTO `dictionary` VALUES (475, 'en', 'Raising Awareness through AKABIS', 'raising-awareness-through-akabis', 'service_activity_description');
INSERT INTO `dictionary` VALUES (476, 'id', 'Meningkatkan Kesadaran melalui AKABIS', 'raising-awareness-through-akabis', 'service_activity_description');
INSERT INTO `dictionary` VALUES (477, 'en', 'Forming Task Force, Planning, Capacity Building, and Assistance', 'forming-task-force-planning-capacity-building-a', 'service_activity_description');
INSERT INTO `dictionary` VALUES (478, 'id', 'Pembentukan Satuan Tugas, Perencanaan, Peningkatan Kapasitas, dan Pendampingan', 'forming-task-force-planning-capacity-building-a', 'service_activity_description');
INSERT INTO `dictionary` VALUES (479, 'en', '100% holistic-approach on waste management', '100-holistic-approach-on-waste-management', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (480, 'id', 'Pendekatan manajemen sampah yang 100% menyeluruh', '100-holistic-approach-on-waste-management', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (481, 'en', 'Support and in line with Perpres No. 97 Tahun 2017 (JAKSTRANAS)', 'support-and-in-line-with-perpres-no-97-tahun-2017', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (482, 'id', 'Mendukung dan sesuai dengan Peraturan Presiden Nomor 97 Tahun 2017 (JAKSTRANAS)', 'support-and-in-line-with-perpres-no-97-tahun-2017', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (483, 'en', 'Adding sustainable and environmental-friendly value to client\'s brand image', 'adding-sustainable-and-environmental-friendly-valu', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (484, 'id', 'Memberikan nilai ramah lingkungan dan keberlanjutan kepada citra perusahaan', 'adding-sustainable-and-environmental-friendly-valu', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (485, 'en', 'Increasing staff\'s awareness of waste issues', 'increasing-staffs-awareness-of-waste-issues', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (486, 'id', 'Meningkatkan kepedulian pegawai tentang isu sampah', 'increasing-staffs-awareness-of-waste-issues', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (487, 'en', 'Reduce waste to landfill', 'reduce-waste-to-landfill', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (488, 'id', 'Mengurangi timbulan sampah yang dibuang ke TPA', 'reduce-waste-to-landfill', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (489, 'en', 'Prevent your brand-labelled products for being misused, imitated or forged', 'prevent-your-brand-labelled-products-for-being-mis', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (490, 'id', 'Mencegah produk berlabel merek Anda agar tidak disalahgunakan, dibuat imitasinya, atau dipalsukan', 'prevent-your-brand-labelled-products-for-being-mis', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (491, 'en', 'Waste Journey Report', 'waste-journey-report', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (492, 'id', 'Laporan Alur Sampah', 'waste-journey-report', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (493, 'en', 'Help to increase recycling rate', 'help-to-increase-recycling-rate', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (494, 'id', 'Membantu meningkatkan tingkat daur ulang', 'help-to-increase-recycling-rate', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (495, 'en', 'Wider Reach', 'wider-reach', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (496, 'id', 'Jangkauan yang Lebih Luas', 'wider-reach', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (497, 'en', 'Meet the needs of your brand customers in more locations in Indonesia', 'meet-the-needs-of-your-brand-customers-in-more-loc', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (498, 'id', 'Melayani kebutuhan pelanggan merek Anda di lebih banyak tempat di Indonesia', 'meet-the-needs-of-your-brand-customers-in-more-loc', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (499, 'en', 'The real action in encouraging the implementation of 3R and responsible waste management in Indonesia, especially in the educational sector?', 'the-real-action-in-encouraging-the-implementation-', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (500, 'id', 'Sebagai bentuk nyata penerapan 3R dan pengelolaan sampah yang bertanggung jawab di Indonesia, terutama di sektor pendidikan', 'the-real-action-in-encouraging-the-implementation-', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (501, 'en', 'Supporting the green concept of our clients\' brand image?', 'supporting-the-green-concept-of-our-clients-brand', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (502, 'id', 'Memperkuat citra positif perusahaan', 'supporting-the-green-concept-of-our-clients-brand', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (503, 'en', 'Increased knowledge and capacity of students and teachers about the 3R concept', 'increased-knowledge-and-capacity-of-students-and-t', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (504, 'id', 'Peningkatan pengetahuan dan kapasitas murid serta guru mengenai prinsip 3R', 'increased-knowledge-and-capacity-of-students-and-t', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (505, 'en', 'Schools can contribute to supporting and executing a responsible waste management system in their facility', 'schools-can-contribute-to-supporting-and-executing', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (506, 'id', 'Sekolah dapat berkontribusi untuk mewujudkan pengelolaan sampah yang bertanggung jawab di sekolah-sekolah', 'schools-can-contribute-to-supporting-and-executing', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (507, 'en', 'Available for every school located in Indonesia, we support our clients\' school to become an example of a green and sustainable educational facility', 'available-for-every-school-located-in-indonesia-w', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (508, 'id', 'Tersedia untuk setiap sekolah yang berlokasi di Indonesia, kami mendukung sekolah klien kami untuk menjadi contoh fasilitas pendidikan yang hijau dan berkelanjutan', 'available-for-every-school-located-in-indonesia-w', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (509, 'en', 'For schools located in Jakarta, we help to support the school to become a potential candidate to apply for the Sekolah ADIWIYATA program?', 'for-schools-located-in-jakarta-we-help-to-support', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (510, 'id', 'Menjadi kandidat potensial untuk mendaftar program Sekolah ADIWIYATA?', 'for-schools-located-in-jakarta-we-help-to-support', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (511, 'en', 'Solid Waste Management Feasibility Study', 'solid-waste-management-feasibility-study', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (512, 'id', 'Solid Waste Management Feasibility Study', 'solid-waste-management-feasibility-study', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (513, 'en', 'Waste Audit', 'waste-audit', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (514, 'id', 'Waste Audit', 'waste-audit', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (515, 'en', 'Technical and Operational Design of SWM', 'technical-and-operational-design-of-swm', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (516, 'id', 'Technical and Operational Design of SWM', 'technical-and-operational-design-of-swm', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (517, 'en', 'SWM Regulatory Analysis', 'swm-regulatory-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (518, 'id', 'SWM Regulatory Analysis', 'swm-regulatory-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (519, 'en', 'Behavior Change Analysis', 'behavior-change-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (520, 'id', 'Behavior Change Analysis', 'behavior-change-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (521, 'en', 'Financial Analysis', 'financial-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (522, 'id', 'Financial Analysis', 'financial-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (523, 'en', 'Institutional Analysis', 'institutional-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (524, 'id', 'Institutional Analysis', 'institutional-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (525, 'en', 'Stakeholders Mapping', 'stakeholders-mapping', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (526, 'id', 'Stakeholders Mapping', 'stakeholders-mapping', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (527, 'en', 'Recycling Value Chain Analysis', 'recycling-value-chain-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (528, 'id', 'Recycling Value Chain Analysis', 'recycling-value-chain-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (529, 'en', 'Material Flow Analysis/ VCA', 'material-flow-analysis-vca', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (530, 'id', 'Material Flow Analysis/ VCA', 'material-flow-analysis-vca', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (531, 'en', 'Waste to Energy Feasibility Study', 'waste-to-energy-feasibility-study', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (532, 'id', 'Waste to Energy Feasibility Study', 'waste-to-energy-feasibility-study', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (533, 'en', 'Trash bag designated to support waste segregation', 'trash-bag-designated-to-support-waste-segregation', 'service_facility_name');
INSERT INTO `dictionary` VALUES (534, 'id', 'Kantong sampah yang akan mendukung pemilahan sampah', 'trash-bag-designated-to-support-waste-segregation', 'service_facility_name');
INSERT INTO `dictionary` VALUES (535, 'en', 'Waste collection in a segregated state', 'waste-collection-in-a-segregated-state', 'service_facility_name');
INSERT INTO `dictionary` VALUES (536, 'id', 'Pengangkutan sampah dalam kondisi terpilah', 'waste-collection-in-a-segregated-state', 'service_facility_name');
INSERT INTO `dictionary` VALUES (537, 'en', 'One-time Technical Induction Training', 'one-time-technical-induction-training', 'service_facility_name');
INSERT INTO `dictionary` VALUES (538, 'id', 'Pelatihan induksi teknis sebanyak satu kali', 'one-time-technical-induction-training', 'service_facility_name');
INSERT INTO `dictionary` VALUES (539, 'en', 'Inorganic Trash Bag', 'inorganic-trash-bag', 'service_facility_name');
INSERT INTO `dictionary` VALUES (540, 'id', 'Kantong sampah anorganik', 'inorganic-trash-bag', 'service_facility_name');
INSERT INTO `dictionary` VALUES (541, 'en', 'Comprehensive waste management system in the distribution line', 'comprehensive-waste-management-system-in-the-distr', 'service_facility_name');
INSERT INTO `dictionary` VALUES (542, 'id', 'Sistem manajemen sampah yang komprehensif di alur distribusi', 'comprehensive-waste-management-system-in-the-distr', 'service_facility_name');
INSERT INTO `dictionary` VALUES (543, 'en', 'Responsible waste management for residual waste (waste that are difficult to be recycled) without sending it to the landfills (on demand)', 'responsible-waste-management-for-residual-waste-w', 'service_facility_name');
INSERT INTO `dictionary` VALUES (544, 'id', 'Pengelolaan sampah yang bertanggung jawab untuk sampah residu (sampah yang sulit untuk didaur ulang) tanpa membuangnya ke TPA (sesuai permintaan)', 'responsible-waste-management-for-residual-waste-w', 'service_facility_name');
INSERT INTO `dictionary` VALUES (545, 'en', 'Increase the number of waste that can be further processed through recycling method', 'increase-the-number-of-waste-that-can-be-further-p', 'service_facility_name');
INSERT INTO `dictionary` VALUES (546, 'id', 'Meningkatkan jumlah sampah yang dapat diproses melalui metode daur ulang', 'increase-the-number-of-waste-that-can-be-further-p', 'service_facility_name');
INSERT INTO `dictionary` VALUES (547, 'en', 'Easy waste collection and recycling system supported by web and mobile applications', 'easy-waste-collection-and-recycling-system-support', 'service_facility_name');
INSERT INTO `dictionary` VALUES (548, 'id', 'Proses pengangkutan dan pendaur ulangan sampah yang lebih mudah dengan didukung website dan aplikasi handphone', 'easy-waste-collection-and-recycling-system-support', 'service_facility_name');
INSERT INTO `dictionary` VALUES (549, 'en', 'Waste segregation by client', 'waste-segregation-by-client', 'service_flow_name');
INSERT INTO `dictionary` VALUES (550, 'id', 'Pemilahan sampah oleh klien', 'waste-segregation-by-client', 'service_flow_name');
INSERT INTO `dictionary` VALUES (551, 'en', 'Waste storage in transfer point/ TPST', 'waste-storage-in-transfer-point-tpst', 'service_flow_name');
INSERT INTO `dictionary` VALUES (552, 'id', 'Penyimpanan sampah di titik transfer/ TPST', 'waste-storage-in-transfer-point-tpst', 'service_flow_name');
INSERT INTO `dictionary` VALUES (553, 'en', 'Segregated waste collection', 'segregated-waste-collection', 'service_flow_name');
INSERT INTO `dictionary` VALUES (554, 'id', 'Pengumpulan sampah terpilah', 'segregated-waste-collection', 'service_flow_name');
INSERT INTO `dictionary` VALUES (555, 'en', 'Waste processing in W4C\'s Material Recovery Facility', 'waste-processing-in-w4cs-material-recovery-facili', 'service_flow_name');
INSERT INTO `dictionary` VALUES (556, 'id', 'Pengolahan sampah di Rumah Pemulihan Material W4C', 'waste-processing-in-w4cs-material-recovery-facili', 'service_flow_name');
INSERT INTO `dictionary` VALUES (557, 'en', 'Residue being sent to the landfill', 'residue-being-sent-to-the-landfill', 'service_flow_name');
INSERT INTO `dictionary` VALUES (558, 'id', 'Residu dikirim ke Tempat Pembuangan Akhir', 'residue-being-sent-to-the-landfill', 'service_flow_name');
INSERT INTO `dictionary` VALUES (559, 'en', 'Waste processing in W4C\'s Material Recivery Facility', 'waste-processing-in-w4cs-material-recivery-facili', 'service_flow_name');
INSERT INTO `dictionary` VALUES (560, 'id', 'Pengolahan sampah di Rumah Pemulihan Material W4C', 'waste-processing-in-w4cs-material-recivery-facili', 'service_flow_name');
INSERT INTO `dictionary` VALUES (561, 'en', 'Residue co-processing with RDF technology', 'residue-co-processing-with-rdf-technology', 'service_flow_name');
INSERT INTO `dictionary` VALUES (562, 'id', 'Pengolahan residu dengan teknologi RDF', 'residue-co-processing-with-rdf-technology', 'service_flow_name');
INSERT INTO `dictionary` VALUES (563, 'en', 'Dropping locations in more location across Indonesia', 'dropping-locations-in-more-location-across-indones', 'service_flow_name');
INSERT INTO `dictionary` VALUES (564, 'id', 'Lokasi setor sampah di banyak lokasi di seluruh Indonesia', 'dropping-locations-in-more-location-across-indones', 'service_flow_name');
INSERT INTO `dictionary` VALUES (565, 'en', 'User can send or drop their waste to Waste4Change\'s partner by registering to get a unique code from website', 'user-can-send-or-drop-their-waste-to-waste4change', 'service_flow_name');
INSERT INTO `dictionary` VALUES (566, 'id', 'Pengguna dapat menyetor sampah mereka ke partner daur ulang Waste4Change dengan mendaftarkan diri di website untuk mendapat kode unik', 'user-can-send-or-drop-their-waste-to-waste4change', 'service_flow_name');
INSERT INTO `dictionary` VALUES (567, 'en', 'User will get points as a reward for recycling their waste', 'user-will-get-points-as-a-reward-for-recycling-the', 'service_flow_name');
INSERT INTO `dictionary` VALUES (568, 'id', 'Pengguna akan mendapatkan poin sebagai hadiah karena sudah mendaur ulang', 'user-will-get-points-as-a-reward-for-recycling-the', 'service_flow_name');
INSERT INTO `dictionary` VALUES (569, 'en', 'Waste responsibly managed by our partner', 'waste-responsibly-managed-by-our-partner', 'service_flow_name');
INSERT INTO `dictionary` VALUES (570, 'id', 'Sampah dikelola secara bertanggung jawab oleh partner daur ulang kami', 'waste-responsibly-managed-by-our-partner', 'service_flow_name');
INSERT INTO `dictionary` VALUES (571, 'en', 'Material transported to up-cycling and recycling industry to support Circular Economy', 'material-transported-to-up-cycling-and-recycling-i', 'service_flow_name');
INSERT INTO `dictionary` VALUES (572, 'id', 'Material dikirim ke industri up-cycling dan recycling untuk mendukung Circular Economy', 'material-transported-to-up-cycling-and-recycling-i', 'service_flow_name');
INSERT INTO `dictionary` VALUES (573, 'en', 'We ensure that your brand-labeled was not ends up in environment', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'service_flow_name');
INSERT INTO `dictionary` VALUES (574, 'id', 'Kami memastikan sampah brand Anda tidak berakhir di TPA', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'service_flow_name');
INSERT INTO `dictionary` VALUES (575, 'en', 'Brand', 'brand', 'service_recomendation');
INSERT INTO `dictionary` VALUES (576, 'id', 'Merek', 'brand', 'service_recomendation');
INSERT INTO `dictionary` VALUES (577, 'en', 'Bussiness Actor', 'bussiness-actor', 'service_recomendation');
INSERT INTO `dictionary` VALUES (578, 'id', 'Pelaku Bisnis', 'bussiness-actor', 'service_recomendation');
INSERT INTO `dictionary` VALUES (579, 'en', 'Company', 'company', 'service_recomendation');
INSERT INTO `dictionary` VALUES (580, 'id', 'Perusahaan', 'company', 'service_recomendation');
INSERT INTO `dictionary` VALUES (581, 'en', 'Company\'s CSR', 'companys-csr', 'service_recomendation');
INSERT INTO `dictionary` VALUES (582, 'id', 'CSR Perusahaan', 'companys-csr', 'service_recomendation');
INSERT INTO `dictionary` VALUES (583, 'en', 'Consultant', 'consultant', 'service_recomendation');
INSERT INTO `dictionary` VALUES (584, 'id', 'Konsultan', 'consultant', 'service_recomendation');
INSERT INTO `dictionary` VALUES (585, 'en', 'Distributor', 'distributor', 'service_recomendation');
INSERT INTO `dictionary` VALUES (586, 'id', 'Distribusi', 'distributor', 'service_recomendation');
INSERT INTO `dictionary` VALUES (587, 'en', 'Event', 'event', 'service_recomendation');
INSERT INTO `dictionary` VALUES (588, 'id', 'Acara', 'event', 'service_recomendation');
INSERT INTO `dictionary` VALUES (589, 'en', 'Foundation', 'foundation', 'service_recomendation');
INSERT INTO `dictionary` VALUES (590, 'id', 'Foundation', 'foundation', 'service_recomendation');
INSERT INTO `dictionary` VALUES (591, 'en', 'Government', 'government', 'service_recomendation');
INSERT INTO `dictionary` VALUES (592, 'id', 'Pemerintah', 'government', 'service_recomendation');
INSERT INTO `dictionary` VALUES (593, 'en', 'Hotels', 'hotels', 'service_recomendation');
INSERT INTO `dictionary` VALUES (594, 'id', 'Hotel', 'hotels', 'service_recomendation');
INSERT INTO `dictionary` VALUES (595, 'en', 'Individual', 'individual', 'service_recomendation');
INSERT INTO `dictionary` VALUES (596, 'id', 'Individu', 'individual', 'service_recomendation');
INSERT INTO `dictionary` VALUES (597, 'en', 'Office Blocks', 'office-blocks', 'service_recomendation');
INSERT INTO `dictionary` VALUES (598, 'id', 'Komplek Perkantoran', 'office-blocks', 'service_recomendation');
INSERT INTO `dictionary` VALUES (599, 'en', 'Product', 'product', 'service_recomendation');
INSERT INTO `dictionary` VALUES (600, 'id', 'Produk', 'product', 'service_recomendation');
INSERT INTO `dictionary` VALUES (601, 'en', 'Researcher', 'researcher', 'service_recomendation');
INSERT INTO `dictionary` VALUES (602, 'id', 'Peneliti', 'researcher', 'service_recomendation');
INSERT INTO `dictionary` VALUES (603, 'en', 'Residential Area/Housing', 'residential-areahousing', 'service_recomendation');
INSERT INTO `dictionary` VALUES (604, 'id', 'Perumahan', 'residential-areahousing', 'service_recomendation');
INSERT INTO `dictionary` VALUES (605, 'en', 'Restaurants', 'restaurants', 'service_recomendation');
INSERT INTO `dictionary` VALUES (606, 'id', 'Restoran', 'restaurants', 'service_recomendation');
INSERT INTO `dictionary` VALUES (607, 'en', 'School', 'school', 'service_recomendation');
INSERT INTO `dictionary` VALUES (608, 'id', 'Sekolah', 'school', 'service_recomendation');
INSERT INTO `dictionary` VALUES (609, 'en', 'HSE Division', 'hse-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (610, 'id', 'Divisi HSE', 'hse-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (611, 'en', 'Sustainability Division', 'sustainability-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (612, 'id', 'Divisi Sustainability', 'sustainability-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (613, 'en', 'CSR Division', 'csr-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (614, 'id', 'Divisi CSR', 'csr-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (615, 'en', 'Building', 'building', 'service_recomendation');
INSERT INTO `dictionary` VALUES (616, 'id', 'Bangunan', 'building', 'service_recomendation');
INSERT INTO `dictionary` VALUES (617, 'en', 'Personal', 'personal', 'service_recomendation');
INSERT INTO `dictionary` VALUES (618, 'id', 'Personal', 'personal', 'service_recomendation');
INSERT INTO `dictionary` VALUES (619, 'en', 'Join the Program', 'join-the-program', 'service_join');
INSERT INTO `dictionary` VALUES (620, 'id', 'Bergabung dalam Program', 'join-the-program', 'service_join');
INSERT INTO `dictionary` VALUES (621, 'en', 'For Client', 'for-client', NULL);
INSERT INTO `dictionary` VALUES (622, 'id', 'Bagi Klien', 'for-client', NULL);
INSERT INTO `dictionary` VALUES (623, 'en', 'For School', 'for-school', NULL);
INSERT INTO `dictionary` VALUES (624, 'id', 'Bagi Sekolah', 'for-school', NULL);

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
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`expertise_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of expertise
-- ----------------------------
INSERT INTO `expertise` VALUES (1, 7, 'solid-waste-management-feasibility-study', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);
INSERT INTO `expertise` VALUES (2, 7, 'waste-audit', '', '2019-12-07 22:42:02', '2019-12-07 22:42:45', NULL);
INSERT INTO `expertise` VALUES (3, 7, 'technical-and-operational-design-of-swm', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);
INSERT INTO `expertise` VALUES (4, 7, 'swm-regulatory-analysis', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);
INSERT INTO `expertise` VALUES (5, 7, 'behavior-change-analysis', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);
INSERT INTO `expertise` VALUES (6, 7, 'financial-analysis', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);
INSERT INTO `expertise` VALUES (7, 7, 'institutional-analysis', '', '2019-12-07 22:42:02', '2019-12-07 22:43:51', NULL);
INSERT INTO `expertise` VALUES (8, 7, 'stakeholders-mapping', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);
INSERT INTO `expertise` VALUES (9, 7, 'recycling-value-chain-analysis', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);
INSERT INTO `expertise` VALUES (10, 7, 'material-flow-analysis-vca', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);
INSERT INTO `expertise` VALUES (11, 7, 'marine-debris-study', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);
INSERT INTO `expertise` VALUES (12, 7, 'waste-to-energy-feasibility-study', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of facility
-- ----------------------------
INSERT INTO `facility` VALUES (1, 1, 'trash-bag-designated-to-support-waste-segregation', 'wastebin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (2, 1, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (3, 1, 'one-time-technical-induction-training', 'loadspeaker-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (4, 1, 'waste-journey-report', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (5, 2, 'trash-bag-designated-to-support-waste-segregation', 'wastebin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (6, 2, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (7, 2, 'waste-journey-report', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (8, 3, 'inorganic-trash-bag', 'wastebin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (9, 3, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (10, 3, 'one-time-technical-induction-training', 'loadspeaker-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (11, 3, 'waste-journey-report', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (12, 4, 'trash-bag-designated-to-support-waste-segregation', 'wastebin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (13, 4, 'waste-collection-in-a-segregated-state', 'segregation-bin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (14, 4, 'waste-journey-report', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (15, 5, 'comprehensive-waste-management-system-in-the-distr', 'distribution-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (16, 5, 'responsible-waste-management-for-residual-waste-w', 'residue-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (17, 5, 'increase-the-number-of-waste-that-can-be-further-p', 'chart-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (18, 6, 'comprehensive-waste-management-system-in-the-distr', 'distribution-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (19, 6, 'responsible-waste-management-for-residual-waste-w', 'residue-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (20, 6, 'increase-the-number-of-waste-that-can-be-further-p', 'chart-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (21, 6, 'easy-waste-collection-and-recycling-system-support', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');

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
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of flow
-- ----------------------------
INSERT INTO `flow` VALUES (1, 1, 'waste-segregation-by-client', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (2, 1, 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (3, 1, 'segregated-waste-collection', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (4, 1, 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (5, 1, 'residue-being-sent-to-the-landfill', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (6, 2, 'waste-segregation-by-client', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (7, 2, 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (8, 2, 'segregated-waste-collection', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (9, 2, 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (10, 2, 'residue-being-sent-to-the-landfill', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (11, 3, 'waste-segregation-by-client', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (12, 3, 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (13, 3, 'segregated-waste-collection', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (14, 3, 'waste-processing-in-w4cs-material-recivery-facili', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (15, 3, 'residue-being-sent-to-the-landfill', 'recycling.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (16, 4, 'waste-segregation-by-client', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (17, 4, 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (18, 4, 'segregated-waste-collection', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (19, 4, 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (20, 4, 'residue-co-processing-with-rdf-technology', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (21, 5, 'waste-segregation-by-client', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (22, 5, 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (23, 5, 'segregated-waste-collection', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (24, 5, 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (25, 5, 'residue-co-processing-with-rdf-technology', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (26, 6, 'dropping-locations-in-more-location-across-indones', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (27, 6, 'user-can-send-or-drop-their-waste-to-waste4change', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (28, 6, 'user-will-get-points-as-a-reward-for-recycling-the', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (29, 6, 'waste-responsibly-managed-by-our-partner', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (30, 6, 'material-transported-to-up-cycling-and-recycling-i', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);
INSERT INTO `flow` VALUES (31, 6, 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES (1, 'id', 'Indonesia', 'assets/img/icons/flag_indonesia.png', '2019-11-16 18:56:12', '2019-11-16 18:56:30', NULL);
INSERT INTO `language` VALUES (2, 'en', 'English', 'assets/img/icons/flag_english.png', '2019-11-16 18:56:53', '2019-11-16 18:56:59', NULL);

-- ----------------------------
-- Table structure for offer
-- ----------------------------
DROP TABLE IF EXISTS `offer`;
CREATE TABLE `offer`  (
  `offer_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `offer_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `offer_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `offer_description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`offer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of offer
-- ----------------------------
INSERT INTO `offer` VALUES (1, 8, 'people-m.png', 'community-assistance', 'planning-and-operational-assistance-for-a-minimum-', NULL, '2019-12-10 02:22:33', NULL);
INSERT INTO `offer` VALUES (2, 8, 'people-m.png', 'community-capaciity-building', 'community-based-capacity-building-is-a-3-days-trai', NULL, '2019-12-10 02:22:34', NULL);
INSERT INTO `offer` VALUES (3, 10, 'loadspeaker-m.png', 'akabis-class', 'a-2-hour-in-class-training-and-discussion<br>held-', NULL, '2019-12-10 02:36:55', NULL);
INSERT INTO `offer` VALUES (4, 10, 'tour-m.png', 'akabis-xperience', 'a-6-hour-educational-tour-and-interactive-discussi', NULL, '2019-12-10 02:36:55', NULL);
INSERT INTO `offer` VALUES (5, 11, 'as', 'one-day-visit', 'tour-and-introduction-of-bsf-cultivation-and-breed', NULL, '2019-12-10 02:50:45', NULL);
INSERT INTO `offer` VALUES (6, 11, 'as', 'five-day-visit', 'engage-in-a-more-detailed-exploration-through-dire', NULL, '2019-12-10 02:50:46', NULL);
INSERT INTO `offer` VALUES (7, 11, 'as', '21-days-of-intensive-program', 'this-is-suitable-for-business-actors-who-aspire-to', NULL, '2019-12-10 02:50:46', NULL);

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
  `photofolio_agent_involve` int(11) NULL DEFAULT NULL,
  `photofolio_city_count` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`photofolio_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of photofolio
-- ----------------------------
INSERT INTO `photofolio` VALUES (1, 1, 'Vida Bekasi', 'vida.jpg', 'Jl. Tirta Utama No. 1, Bumiwedari, Bantar Gebang, Kota Bekasi, Jawa Barat 1715', 'vida.jpg', NULL, NULL, '', '3 days-per-week', '112000 kgmonth', '', '2014-01-01', NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL);
INSERT INTO `photofolio` VALUES (2, 1, 'Wisma Barito', 'barito.jpg', 'Jl. Letjen. S. Parman Kav. 62-63, Slipi, Jakarta Barat, DKI Jakarta 11410', 'barito.jpg', NULL, NULL, '1 year', '3 days-per-week', '6922 kgmonth', '', '2019-02-01', NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL);
INSERT INTO `photofolio` VALUES (3, 2, 'The Body Shop', 'tbs.jpg', 'Sentosa Building 2 Lt. 1, Bintaro Jaya Central Business District, Kota Tangerang Selatan, Banten 15224', 'tbs.jpg', NULL, NULL, '1 year', 'every-day', '776,5 kgmonth', '', '2018-12-01', NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL);
INSERT INTO `photofolio` VALUES (4, 2, 'PUPR', 'pupr.jpg', 'Jalan Pattimura No. 20,Jakarta Selatan 12110', 'pupr.jpg', NULL, NULL, '4 month', 'every-day', '26,575 kgmonth', '', '2019-09-01', NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL);
INSERT INTO `photofolio` VALUES (5, 3, 'Jakarta Land', '', 'World Trade Centre - WTC 5, 8th floor, Jl. Jend. Sudirman Kav. 29 Jakarta 12920', '', NULL, NULL, '1 year', '1 days-per-week', '192 kgmonth', '', '2018-04-01', NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL);
INSERT INTO `photofolio` VALUES (6, 4, 'Playfest 2019', 'playfest2019.jpg', '', 'playfest2019.jpg', '2019-08-24', '2019-08-25', '', '', '1.141 kg', '6000', NULL, NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:25', NULL);
INSERT INTO `photofolio` VALUES (7, 4, 'Milo Jakarta International 10K 2018', 'milo.jpg', '', 'milo.jpg', '2018-07-15', NULL, '', '', '646,2 kg', '16000', NULL, NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:33', NULL);
INSERT INTO `photofolio` VALUES (8, 5, 'The Body Shop - Bring Back Our Bottle (BBOB) Program', 'tbs.jpg', '', 'tbs.jpg', NULL, NULL, '2015 until present', '', '33447 kg', '', NULL, NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL);
INSERT INTO `photofolio` VALUES (9, 5, 'By Lizzy Parra - There is a Box for That (TIBFT)', 'lizzy.jpg', '', 'lizzy.jpg', NULL, NULL, 'Agustus - November 2019', '', '', '', NULL, NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL);
INSERT INTO `photofolio` VALUES (10, 6, 'Lifebuoy Ramadhan Berkah 2019', 'lifebuoy.jpg', '', 'lifebuoy.jpg', '2019-05-01', '2019-06-30', '', '', '7177 pcs', '', NULL, 227, '41 cities-across-Indonesia', '2019-12-07 22:49:09', '2019-12-07 22:49:25', NULL);
INSERT INTO `photofolio` VALUES (11, 6, 'Ades #NiatMurni 2019', 'ades.jpg', '', 'ades.jpg', NULL, NULL, '31 October - Present', '', '2150 pcs', '', NULL, 130, 'Jakarta,Bandung,Semarang,Surabaya,Makassar,Medan', '2019-12-07 22:49:09', '2019-12-07 22:49:37', NULL);

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `project_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project_client` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_thumbnail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, 6, 'solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', 'swm-research-in-institutions', 'solid-waste-management-study-at-pelabuhan-indonesi', 'PT. Pelabuhan Indonesia II (Persero)', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:08:34', NULL);
INSERT INTO `project` VALUES (2, 6, 'solid-waste-management-design-for-revitalisation-at-jami\'\r\n-mosque-and-kampung-beting-settlements-in-pontianak', 'swm-research-in-municipalities', 'solid-waste-management-study-at-pelabuhan-indonesi', 'Ministry of Public Works and Housings', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:19:43', NULL);
INSERT INTO `project` VALUES (3, 6, 'feasibility-study-of-pyrolysis-for-plastic-packaging-in-lombok-and-batam', 'waste-to-energy-study', 'feasibility-study-of-pyrolysis-for-plastic-packagi', 'GA Circular', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:08:55', NULL);
INSERT INTO `project` VALUES (4, 6, 'waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', 'value-chain-analysis', 'feasibility-study-of-pyrolysis-for-plastic-packagi', 'PT. Deloitte Konsultan Indonesia', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:03', NULL);
INSERT INTO `project` VALUES (5, 6, 'riverine-plastic-monitoring-project-in-jakarta', 'marine-debris-study', 'riverine-plastic-monitoring-project-in-jakarta', 'The Ocean Cleanup', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:11', NULL);
INSERT INTO `project` VALUES (6, 7, '3r-program-suralaya', 'community-assistance-in-institutions', 'riverine-plastic-monitoring-project-in-jakarta', 'T. Indonesia Power Up Suralaya', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:21', NULL);
INSERT INTO `project` VALUES (7, 7, 'tps-3r-advisory', 'community-assistance-in-municipalities', 'tps-3r-advisory', 'PT. Sarana Multi Daya, PT. Multi Karadiguna Jasa, PT. Prismamita Cipta Kreasi', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:26', NULL);
INSERT INTO `project` VALUES (8, 7, 'ecoranger-in-pulau-merah-banyuwangi', 'community-assistance-in-tourism-sites', 'tps-3r-advisory', 'Greeneration Foundation and Coca Cola Foundation Indonesia', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:31', NULL);
INSERT INTO `project` VALUES (9, 7, 'capacity-building-in-indonesia’s-frontline-territories', 'capacity-building', 'capacity-building-in-indonesia’s-frontline-territo', 'Ministry of Public Works and Housing', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:36', NULL);
INSERT INTO `project` VALUES (10, 8, '3r-green-school', '3r-school-program', 'capacity-building-in-indonesia’s-frontline-territo', 'Yayasan Unilever Indonesia', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:43', NULL);
INSERT INTO `project` VALUES (11, 9, 'akabis-class-for-students-of-binus-school-al-izhar-high-school-and-smkn-3-bekasi', 'akabis-class-for-public', 'akabis-class-for-students-of-binus-school-al-izha', 'PT. Epson Indonesia', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:50', NULL);
INSERT INTO `project` VALUES (12, 9, 'akabis-class-for-the-embassy-of-finland-jakarta', 'akabis-class-for-institution', 'akabis-class-for-students-of-binus-school-al-izha', 'Embassy of Finland', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:54', NULL);
INSERT INTO `project` VALUES (13, 9, 'akabis-xperience-for-yseali', 'akabis-xperience-for-public', 'akabis-xperience-for-yseali', 'YSEALI (Young Southeast Asian Leader Initiative) Organized by Divers Clean Action and US Embassy?', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:59', NULL);
INSERT INTO `project` VALUES (14, 9, 'akabis-xperience-for-world-bank-jakarta', 'akabis-xperience-for-institution', 'akabis-xperience-for-yseali', 'World Bank', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:10:06', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of recomendation
-- ----------------------------
INSERT INTO `recomendation` VALUES (1, 'brand', '#a24495', 'icon-medical-022 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (2, 'bussiness-actor', '#a29244', 'icon-finance-024 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (3, 'company', '#a24444', 'icon-real-estate-052 u-line-icon-pro)', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (4, 'companys-csr', '#a24444', 'icon-medical-022 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (5, 'consultant', '#a29244', 'icon-finance-218 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (6, 'distributor', '#a24444', 'icon-real-estate-088 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (7, 'event', '#a24495', 'icon-hotel-restaurant-056 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (8, 'foundation', '#68a244', 'icon-real-estate-009 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (9, 'government', '#68a244', 'icon-hotel-restaurant-136 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (10, 'hotels', '#4489a2', 'icon-travel-079 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (11, 'individual', '#68a244', 'icon-real-estate-014 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (12, 'office-blocks', '#68a244', 'icon-hotel-restaurant-172 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (13, 'product', '#a24495', 'icon-education-031 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (14, 'researcher', '#a29244', 'icon-finance-002 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (15, 'residential-areahousing', '#4489a2', 'icon-real-estate-070 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (16, 'restaurants', '#a24444', 'icon-hotel-restaurant-020 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (17, 'school', '#4489a2', 'icon-education-001 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (18, 'hse-division', '#4489a2', 'icon-medical-031 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (19, 'sustainability-division', '#a24444', 'icon-hotel-restaurant-132 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (20, 'csr-division', '#4489a2', 'icon-medical-022 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (21, 'building', '#4489a2', 'icon-hotel-restaurant-172 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (22, 'personal', '#4489a2', 'icon-finance-002 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, 'welcome', 'welcome', '', '2019-12-07 22:26:24', '2019-12-07 22:26:24', NULL);
INSERT INTO `section` VALUES (2, 'header', '', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (3, 'our-achievement', 'our-achievement', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (4, 'about', 'about', 'about', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (5, 'description', 'description', 'description', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (6, 'achievement-deliverable', '', '', '2019-12-07 22:26:24', '2019-12-08 00:45:11', NULL);
INSERT INTO `section` VALUES (7, 'we-offer', '', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (8, 'activities', 'activities', 'activities', '2019-12-07 22:26:24', '2019-12-10 01:07:37', NULL);
INSERT INTO `section` VALUES (9, 'benefit', '', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (10, 'expertise-and-experience', '', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (11, 'output-benefit', 'output-benefit', 'output-benefit', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (12, 'what-you-get', 'what-you-get', 'what-you-get', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (13, 'waste-flow', 'waste-flow', 'waste-flow', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (14, 'photofolio-highlight', 'photofolio-highlight', 'highlight', '2019-12-07 22:26:24', '2019-12-08 00:22:17', NULL);
INSERT INTO `section` VALUES (15, 'research-highlight', 'research-highlight', 'highlight', '2019-12-07 22:26:24', '2019-12-08 16:42:46', NULL);
INSERT INTO `section` VALUES (16, 'program-highlight', 'program-highlight', 'highlight', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (17, 'similar-project', 'similar-project', 'similar-project', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (18, 'our-client', 'our-client', 'client', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (19, 'recomended-for', 'recomended-for', 'recomended-for', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (20, 'our-coverage', 'our-coverage', 'coverage', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);
INSERT INTO `section` VALUES (21, 'cta', 'cta', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_category_id` int(11) NULL DEFAULT NULL,
  `service_parent_id` int(11) NULL DEFAULT NULL,
  `service_subcategory_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `service_slug` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `service_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `service_slogan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `service_about` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `service_client_name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `service_about_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_header_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 1, NULL, '', 'responsible-waste-management-basic', 'responsible-waste-management-basic', 'no-more-mixed-waste', 'a-100-holistic-waste-management-for-companies-bu', 'waste-generation-is-inevitable-its-not-easy-to-r', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/responsible-waste-management-basic', '', 'https://docs.google.com/forms/d/e/1FAIpQLSdydu6Ar9mGKppAI4V2fevcWkLSpTpiSwdbpv0moPU4-_o3NQ/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (2, 1, NULL, '', 'zero-waste-to-landfill', 'zero-waste-to-landfill', 'no-more-waste-that-end-up-in-landfills', 'take-an-active-part-in-preventing-our-local-landfi', 'every-day-indonesians-are-generating-175000-tons', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/zero-waste-to-landfill', '', 'https://docs.google.com/forms/d/e/1FAIpQLSemrcuqzCk4wFUtMPFFwLkJOsYSlCjoJ8GHCDdXcM7Or5YlQg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (3, 1, NULL, '', 'inorganic-waste-management', 'inorganic-waste-management', 'from-waste-to-useful-materials', 'treat-your-inorganic-waste-the-right-way-and-make-', 'waste-is-a-relative-term-that-can-be-applied-diffe', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/inorganic-waste-management', '', 'https://docs.google.com/forms/d/e/1FAIpQLScFEwvyBaouF85RuuJSQpDCmGmkIIf4Hby9uo6HrZHJVSRBvw/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (4, 1, NULL, '', 'event-waste-management', 'event-waste-management', 'great-event-planned-their-waste-management-beforeh', 'through-the-placement-of-segregated-waste-bins-in-', 'waste-generation-during-an-event-is-inevitable-in', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/event-waste-management', '', 'https://docs.google.com/forms/d/e/1FAIpQLSfgzkfJXMhuTUO4sgwpkF1PINvH7_XNBrZ84PWJD6OqghV_Eg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (5, 2, NULL, '', 'in-store-recycling', 'in-store-recycling', 'support-the-recycling-of-your-brand-labeled-waste', 'increase-the-material-processing-of-brand-labelled', 'designed-to-increase-the-material-processing-from-', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/in-store-recycling', '', 'https://docs.google.com/forms/d/e/1FAIpQLSd8QsQoYbyTb5-8dD6r5KUFCz9BhTmBvh1c2Lla2HdlrDHFQg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (6, 2, NULL, '', 'digital-epr', 'digital-epr', 'more-effective-and-sustainable-brand-labeled-waste', 'increasing-the-recycling-rate-of-your-brand-labele', 'we-provide-a-waste-recycling-system-that-is-integr', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/digital-epr', '', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (7, 3, NULL, '', 'solid-waste-management-research', 'solid-waste-management-research', 'research-and-planning-with-environment-in-mind', 'improve-your-solid-waste-management-by-conducting-', 'waste4change-provides-consultation-through-solid-w', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/solid-waste-management-research', '', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (8, 4, NULL, '', 'community-based-implementation', 'community-based-implementation', 'solid-effort-to-reduce-waste-generation-from-the-s', 'we-help-our-clients-to-implement-programs-that-enc', 'according-to-recent-bps-statistics-waste-manageme', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/community-based-implementation', '', 'https://docs.google.com/forms/d/e/1FAIpQLScmBjcHJhsI1OIOM-So0VQNhsbIGUJeKuovMe2QzVeYMnUU0g/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (9, 4, NULL, '', '3r-school-program', '3r-school-program', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'designed-to-encourage-the-increasing-awareness-of-', '3r-school-program-is-a-program-designed-to-encoura', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/3r-school-program', '', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (10, 5, NULL, '', 'akabis-waste-management-academy', 'akabis-waste-management-academy', 'take-a-closer-look-at-waste-management-facts-and-s', 'waste-management-education-program-that-includes-a', 'akademi-bijak-sampah-akabis-is-an-education-mode', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/akabis-waste-management-academy', '', 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (11, 5, NULL, '', 'black-soldier-fly-learning-center', 'black-soldier-fly-learning-center', 'effective-organic-waste-solution', 'receive-in-depth-information-regarding-organic-was', 'through-bsf-learning-center-you-will-receive-in-d', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/black-soldier-fly-learning-center', '', 'https://docs.google.com/forms/d/e/1FAIpQLSc7hGAdWLlFqt5qa38-7fMwA9Nsp2ev9lUk7Qi8Xwe_z3lYfg/viewform', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (12, 5, NULL, '', 'black-soldier-fly-tools-products', 'black-soldier-fly-tools-products', '', 'we-provide-black-soldier-fly-larvae-that-is-high-i', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/black-soldier-fly-tools-products', '', '', '', 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (13, 6, NULL, '', 'send-your-waste', 'send-your-waste', '', 'send-your-inorganic-waste-to-waste4change-and-let-', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/sendyourwaste', '', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (14, 6, NULL, '', 'dropbox', 'dropbox', '', 'deposit-your-inorganic-waste-in-waste4changes-dro', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'dropbox', '', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (15, 6, NULL, '', 'sinergi-adesniatmurni-dan-gojek', 'sinergi-adesniatmurni-dan-gojek', '', 'send-your-used-pet-bottles-of-various-sizes-and-br', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'poin/home/sinergi-ades-niat-murni-dan-gojek', '', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (16, 6, NULL, '', 'merchant', 'merchant', '', 'deposit-your-used-packaging-through-our-partners-t', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/merchant', '', '', '', 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (17, 6, NULL, '', 'home-composting', 'home-composting', '', 'process-your-organic-waste-at-home-with-waste4cha', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/home-composting', '', '', '', 0, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL);
INSERT INTO `service` VALUES (18, NULL, 7, 'SWM Research In Institutions', 'solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', 'solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', '', '', 'based-on-the-regulation-of-ministry-of-transportat', 'PT. Pelabuhan Indonesia II (Persero)', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', '', '', '', 1, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL);
INSERT INTO `service` VALUES (19, NULL, 7, 'SWM Research In Municipalities', 'solid-waste-management-design-for-revitalisation-at-jami-mosque-and-kampung-beting-settlements-in-pontianak', 'solid-waste-management-design-for-revitalisation-at-jami-mosque-and-kampung-beting-settlements-in-pontianak', '', '', 'beting-village-and-jami-mosque-area-are-located-a', 'Ministry of Public Works and Housings', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/solid-waste-management-design-for-revitalisation-at-jami\'-mosque-and-kampung-beting-settlements-in-pontianak', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (20, NULL, 7, 'Value Chain Analysis', 'waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', 'waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', '', '', '', 'PT. Deloitte Konsultan Indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (21, NULL, 7, 'Marine Debris Study', 'riverine-plastic-monitoring-project-in-jakarta', 'riverine-plastic-monitoring-project-in-jakarta', '', '', '', 'The Ocean Cleanup', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/riverine-plastic-monitoring-project-in-jakarta', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (22, NULL, 7, 'Waste To Energy Study', 'technical-due-diligence-for-itf-sunter-jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', '', '', '', 'Ramboll Danmark A/S', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/feasibility-study-of-pyrolysis-for-plastic-packaging-in-lombok-and-batam', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (23, NULL, 8, 'Community Assistance In Institutions', '3r-program-suralaya', '3r-program-suralaya', '', '', '', 'PT. Indonesia Power Up Suralaya', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/3r-program-suralaya', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (24, NULL, 8, 'Community Assistance In Municipalities', 'tps-3r-advisory', 'tps-3r-advisory', '', '', '', 'PT. Sarana Multi Daya?, PT. Multi Karadiguna Jasa?, PT. Prismaita Cipta Kreasi', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/tps-3r-advisory', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (25, NULL, 8, 'Community Assistance In Tourism Sites', 'ecoranger-in-pulau-merah-banyuwangi', 'ecoranger-in-pulau-merah-banyuwangi', '', '', '', 'Greeneration Foundation, Coca-cola Foundation Indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/ecoranger-in-pulau-merah-banyuwangi', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (26, NULL, 8, 'Capacity Building', 'capacity-building-in-indonesias-frontline-territories', 'capacity-building-in-indonesias-frontline-territories', '', '', '', 'PT. Idee Murni Pratama?, PT. Wijaya Karya, ?PT. Hutama Karya?, PT. Waskita Karya?, PT. Brantas Abipraya?, PT. Adhi Karya?, PT. Basuki Rahmanta Putra', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/capacity-building-in-indonesia\'s-frontline-territories', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (27, NULL, 9, '3r School Program', '3r-green-school', '3r-green-school', '', '', '', 'Yayasan Unilever Indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/3r-green-school', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (28, NULL, 10, 'AKABIS Class For Institution', 'akabis-class-for-the-embassy-of-finland-jakarta', 'akabis-class-for-the-embassy-of-finland-jakarta', '', '', '', 'Embassy of Finland in Indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-class-for-the-embassy-of-finland-jakarta', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (29, NULL, 10, 'AKABIS Class For Public', 'akabis-class-the-neglected-debris-paper-letter-and-waste-discussion', 'akabis-class-the-neglected-debris-paper-letter-and-waste-discussion', '', '', '', 'PT. Galeri Museum Macan', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-class-the-neglected-debris:-paper,-letter-and-waste-discussion', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (30, NULL, 10, 'AKABIS Xperience For Institution', 'akabis-xperience-for-world-bank-jakarta', 'akabis-xperience-for-world-bank-jakarta', '', '', '', 'PT. Bank DBS Indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-xperience-for-world-bank-jakarta', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (31, NULL, 10, 'AKABIS Xperience For Public', 'akabis-xperience-for-yseali', 'akabis-xperience-for-yseali', '', '', '', 'Divers Clean Action and hosted by US Embassy', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-xperience-for-yseali', '', '', '', 1, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_category
-- ----------------------------
INSERT INTO `service_category` VALUES (1, 1, 'Responsible Waste Management', '', '2019-11-16 18:52:03', '2019-12-07 23:17:45', NULL);
INSERT INTO `service_category` VALUES (2, 1, 'Extended Producer Responsibility', '', '2019-11-16 18:52:03', '2019-12-07 23:17:46', NULL);
INSERT INTO `service_category` VALUES (3, 1, 'Solid Waste Management Research', '', '2019-11-16 18:52:03', '2019-12-07 23:17:46', NULL);
INSERT INTO `service_category` VALUES (4, 1, 'Community Development', '', '2019-11-16 18:52:03', '2019-12-07 23:17:46', NULL);
INSERT INTO `service_category` VALUES (5, 1, 'Training', '', '2019-11-16 18:52:03', '2019-12-07 23:17:46', NULL);
INSERT INTO `service_category` VALUES (6, 2, 'General', '', '2019-11-16 18:52:03', '2019-12-07 23:17:46', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_recomendation
-- ----------------------------
INSERT INTO `service_recomendation` VALUES (1, 1, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (2, 1, 16, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (3, 1, 10, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (4, 1, 21, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (5, 1, 15, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (6, 2, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (7, 2, 16, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (8, 2, 10, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (9, 2, 21, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (10, 2, 15, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (11, 3, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (12, 3, 16, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (13, 3, 10, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (14, 3, 21, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (15, 3, 15, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (16, 4, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (17, 4, 16, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (18, 4, 10, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (19, 4, 21, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (20, 4, 15, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (21, 5, 6, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (22, 5, 1, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (23, 5, 13, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (24, 6, 6, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (25, 6, 1, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (26, 6, 13, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (27, 7, 18, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (28, 7, 19, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (29, 7, 20, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (30, 7, 9, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (31, 7, 5, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (32, 8, 18, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (33, 8, 19, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (34, 8, 20, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (35, 8, 9, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (36, 8, 5, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (37, 8, 15, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (38, 8, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (39, 9, 9, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (40, 9, 5, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (41, 10, 4, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (42, 10, 8, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (43, 10, 3, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (44, 10, 17, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (45, 11, 2, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (46, 11, 14, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (47, 12, 2, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (48, 12, 14, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (49, 13, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (50, 14, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (51, 15, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (52, 16, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (53, 17, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);

-- ----------------------------
-- Table structure for service_section
-- ----------------------------
DROP TABLE IF EXISTS `service_section`;
CREATE TABLE `service_section`  (
  `service_section_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `section_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_section_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 231 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_section
-- ----------------------------
INSERT INTO `service_section` VALUES (1, 1, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (2, 1, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (3, 1, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (4, 1, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (5, 1, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (6, 1, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (7, 1, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (8, 1, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (9, 1, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (10, 1, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (11, 1, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (12, 2, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (13, 2, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (14, 2, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (15, 2, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (16, 2, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (17, 2, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (18, 2, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (19, 2, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (20, 2, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (21, 2, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (22, 2, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (23, 3, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (24, 3, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (25, 3, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (26, 3, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (27, 3, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (28, 3, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (29, 3, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (30, 3, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (31, 3, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (32, 3, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (33, 3, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (34, 4, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (35, 4, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (36, 4, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (37, 4, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (38, 4, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (39, 4, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (40, 4, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (41, 4, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (42, 4, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (43, 4, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (44, 4, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (45, 5, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (46, 5, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (47, 5, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (48, 5, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (49, 5, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (50, 5, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (51, 5, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (52, 5, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (53, 5, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (54, 5, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (55, 5, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (56, 6, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (57, 6, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (58, 6, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (59, 6, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (60, 6, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (61, 6, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (62, 6, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (63, 6, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (64, 6, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (65, 6, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (66, 6, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (67, 7, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (68, 7, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (69, 7, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (70, 7, 10, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (71, 7, 15, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (72, 7, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (73, 7, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (74, 7, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (75, 7, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (76, 8, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (77, 8, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (78, 8, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (79, 8, 7, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (80, 8, 16, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (81, 8, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (82, 8, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (83, 8, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (84, 8, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (85, 9, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (86, 9, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (87, 9, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (88, 9, 8, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (89, 9, 11, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (90, 9, 16, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (91, 9, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (92, 9, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (93, 9, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (94, 9, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (95, 10, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (96, 10, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (97, 10, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (98, 10, 7, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (100, 10, 16, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (101, 10, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (102, 10, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (103, 10, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (104, 10, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (105, 11, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (106, 11, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (107, 11, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (108, 11, 7, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (110, 11, 16, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (111, 11, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (112, 11, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (113, 11, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (114, 11, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (115, 18, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (116, 18, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (117, 18, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (118, 18, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (119, 18, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (120, 19, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (121, 19, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (122, 19, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (123, 19, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (124, 19, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (125, 20, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (126, 20, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (127, 20, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (128, 20, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (129, 20, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (130, 21, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (131, 21, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (132, 21, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (133, 21, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (134, 21, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (135, 22, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (136, 22, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (137, 22, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (138, 22, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (139, 22, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (140, 23, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (141, 23, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (142, 23, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (143, 23, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (144, 23, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (145, 24, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (146, 24, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (147, 24, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (148, 24, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (149, 24, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (150, 25, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (151, 25, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (152, 25, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (153, 25, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (154, 25, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (155, 26, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (156, 26, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (157, 26, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (158, 26, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (159, 26, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (160, 27, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (161, 27, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (162, 27, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (163, 27, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (164, 28, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (165, 28, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (166, 28, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (167, 28, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (168, 28, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (169, 29, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (170, 29, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (171, 29, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (172, 29, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (173, 29, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (174, 30, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (175, 30, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (176, 30, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (177, 30, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (178, 30, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (179, 31, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (180, 31, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (181, 31, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (182, 31, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (183, 31, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);
INSERT INTO `service_section` VALUES (184, 31, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);

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
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`testimony_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
