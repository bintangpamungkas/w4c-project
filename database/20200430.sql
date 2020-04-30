/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : w4c_official_demo

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 30/04/2020 13:08:14
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
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of achievement
-- ----------------------------
INSERT INTO `achievement` VALUES (1, 1, 'clientscompanies', '6.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (2, 1, 'waste-recycled-kg', '133823.00', '', '2019-12-24 11:05:42', '2019-12-24 12:20:26', NULL);
INSERT INTO `achievement` VALUES (3, 1, 'cities-available', '7.00', '', '2019-12-24 11:05:42', '2020-01-09 00:07:59', NULL);
INSERT INTO `achievement` VALUES (4, 2, 'clients', '47.00', '', '2019-12-24 11:05:42', '2020-01-04 10:53:58', NULL);
INSERT INTO `achievement` VALUES (5, 2, 'residual-waste-that-doesnt-end-up-in-the-landfill', '282288.23', '', '2019-12-24 11:05:42', '2020-01-04 10:54:33', NULL);
INSERT INTO `achievement` VALUES (6, 2, 'cities-available', '7', '', '2019-12-24 11:05:42', '2020-02-15 09:07:53', NULL);
INSERT INTO `achievement` VALUES (7, 3, 'clientscompanies', '5.00', '', '2019-12-24 11:05:42', '2020-01-03 14:49:48', NULL);
INSERT INTO `achievement` VALUES (8, 3, 'waste-recycled-kg', '1342.70', '', '2019-12-24 11:05:42', '2020-01-03 14:50:01', NULL);
INSERT INTO `achievement` VALUES (9, 3, 'cities-available', '7.00', '', '2019-12-24 11:05:42', '2020-01-09 00:08:06', NULL);
INSERT INTO `achievement` VALUES (10, 4, 'events', '27.00', '', '2019-12-24 11:05:42', '2019-12-24 20:59:21', NULL);
INSERT INTO `achievement` VALUES (11, 4, 'waste-recycled-kg', '1722.40', '', '2019-12-24 11:05:42', '2019-12-24 20:59:21', NULL);
INSERT INTO `achievement` VALUES (12, 4, 'cities-available', '10.00', '', '2019-12-24 11:05:42', '2020-01-09 00:08:08', NULL);
INSERT INTO `achievement` VALUES (13, 5, 'clientscompanies', '12.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (14, 5, 'residual-waste-that-doesnt-end-up-in-the-landfill', '6570.35', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (15, 5, 'cities-available', '7.00', '', '2019-12-24 11:05:42', '2020-01-09 00:08:10', NULL);
INSERT INTO `achievement` VALUES (16, 6, 'clientscompanies', '2.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (17, 6, 'residual-waste-that-doesnt-end-up-in-the-landfill', '8827.00', '', '2019-12-24 11:05:42', '2020-02-18 19:18:18', NULL);
INSERT INTO `achievement` VALUES (18, 6, 'cities-regencies', '10', '', '2019-12-24 11:05:42', '2020-02-18 16:40:12', NULL);
INSERT INTO `achievement` VALUES (19, 7, 'clients', '35.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (20, 7, 'project-finished', '44', '', '2019-12-24 11:05:42', '2020-01-25 07:52:34', NULL);
INSERT INTO `achievement` VALUES (21, 7, 'cities-regencies', '37.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (22, 8, 'clients', '25.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (23, 8, 'beneficiaries', '339714.00', '', '2019-12-24 11:05:42', '2020-02-15 09:08:36', NULL);
INSERT INTO `achievement` VALUES (24, 8, 'cities-regencies', '111.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (25, 9, 'clients', '13.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (26, 9, 'beneficiaries', '19150.00', '', '2019-12-24 11:05:42', '2020-02-15 09:08:42', NULL);
INSERT INTO `achievement` VALUES (27, 9, 'cities', '10', '', '2019-12-24 11:05:42', '2020-02-20 00:36:24', NULL);
INSERT INTO `achievement` VALUES (28, 10, 'clients', '53.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (29, 10, 'beneficiaries', '4271', '', '2019-12-24 11:05:42', '2020-02-15 09:09:09', NULL);
INSERT INTO `achievement` VALUES (30, 10, 'cities-available', '14', '', '2019-12-24 11:05:42', '2020-01-22 23:43:10', NULL);
INSERT INTO `achievement` VALUES (31, 18, 'analysis-and-recommendations-to-implement-a-respon', '', 'analysis-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (32, 18, 'identification-of-waste-management-method-that-is-', '', 'wastebin-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (33, 18, 'written-report-and-presentation-of-3r-based-waste-', '', 'report-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (34, 19, 'data-collection-activities-were-done-through-inter', '', 'research-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (35, 19, 'analyzed-the-current-management-system-by-identify', '', 'analysis-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (36, 20, 'key-players-and-stakeholders-mapping', '', 'mark-location-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (37, 20, 'comprehensive-waste-flow-analysis-of-jakarta-and-s', '', 'analysis-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (38, 20, 'identification-of-recycling-rate-in-jakarta-and-su', '', 'report-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (39, 20, 'solid-waste-management-swot-analysis-of-jakarta-an', '', 'flow-m.png', '2019-12-24 11:05:42', '2020-01-15 00:11:43', NULL);
INSERT INTO `achievement` VALUES (40, 21, 'retrieved-better-understanding-on-the-total-amount', '', 'idea-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (41, 21, 'published-paper-regarding-the-project-can-be-found', '', 'report-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (42, 22, 'solid-waste-characteristics-and-solid-waste-existi', '', 'mark-location-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (43, 22, 'solid-waste-supply-plan-review-and-its-possible-di', '', 'analysis-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (44, 22, 'suitability-study-of-the-current-site-for-waste-to', '', 'distribution-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (45, 23, 'increased-awareness-and-action-of-employees-toward', '', 'idea-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (46, 23, 'increased-segregation-rate', '', 'chart-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (47, 23, 'decreased-residual-waste-generation', '', 'residue-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (48, 23, 'increased-economic-incentives-from-composting', '', 'economy-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (49, 24, 'reports-containing-progress-activities-lessons-le', '', 'video-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (50, 24, 'proceedings-of-workshop-consignment-proceedings', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (51, 24, 'video-and-audio-visual-documentation-of-monitoring', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (52, 25, 'the-formation-of-eco-ranger:-a-group-of-local-peop', '', 'wastebin-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (53, 25, 'technical-assistance-capacity-building-connectin', '', 'people-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (54, 26, 'waste-management-education-to-local-communities-an', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (55, 26, 'technical-guideline-of-organic-and-inorganic-waste', '', 'wastebin-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (56, 26, 'formation-of-organization-and-follow-up-work-plan', '', 'flow-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (57, 27, 'forming-the-task-force-which-in-charge-of-increasi', '', 'people-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (58, 27, 'organizing-education-events-which-are-akabis-clas', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (59, 27, 'each-school-was-expected-to-be-able-to-carry-on-th', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (60, 28, 'sharing-session:-why-we-need-to-be-responsible-for', '', 'chat-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (61, 28, 'presentation-session:-how-can-we-conduct-responsib', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (62, 28, 'interactive-games', '', 'games-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (63, 29, 'open-discussion-with-fellow-panels-and-audiences-o', '', 'analysis-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (64, 29, 'the-importance-of-responsible-solid-waste-manageme', '', 'wastebin-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (65, 29, 'how-to-handle-and-treat-waste-responsibly-and-sust', '', 'chart-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (66, 29, 'how-to-mitigate-adverse-effects-of-waste-for-human', '', 'chat-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (67, 30, 'shock-moment:-all-participants-are-invited-to-see-', '', 'landfill-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (68, 30, 'o-moment:-responsible-waste-management-presentati', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (69, 30, 'facility-tour:-visiting-w4cs-facilities-includin', '', 'tour-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (70, 31, 'shock-moment:-all-participants-are-invited-to-see-', '', 'landfill-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (71, 31, 'o-moment:-responsible-waste-management-presentati', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (72, 31, 'facility-tour:-visiting-w4cs-facilities-includin', '', 'tour-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL);
INSERT INTO `achievement` VALUES (73, 11, 'participant', '135', '', '2020-01-14 23:39:55', '2020-01-23 00:02:13', NULL);
INSERT INTO `achievement` VALUES (74, 32, 'clients', '53.00', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL);
INSERT INTO `achievement` VALUES (75, 32, 'beneficiaries', '4271', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL);
INSERT INTO `achievement` VALUES (76, 32, 'cities-available', '14', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL);
INSERT INTO `achievement` VALUES (77, 33, 'clients', '53.00', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL);
INSERT INTO `achievement` VALUES (78, 33, 'beneficiaries', '4271', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL);
INSERT INTO `achievement` VALUES (79, 33, 'cities-available', '14', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL);
INSERT INTO `achievement` VALUES (80, 34, 'clients', '53.00', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL);
INSERT INTO `achievement` VALUES (81, 34, 'beneficiaries', '4271', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL);
INSERT INTO `achievement` VALUES (82, 34, 'cities-available', '14', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of benefit
-- ----------------------------
INSERT INTO `benefit` VALUES (1, 1, 'general', '100-holistic-approach-on-waste-management', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (2, 1, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (3, 1, 'general', 'reduce-waste-to-landfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (4, 1, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (5, 1, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (6, 2, 'general', '100-holistic-approach-on-waste-management', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (7, 2, 'general', 'zerowastetolandfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (8, 2, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (9, 2, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (10, 3, 'general', '100-holistic-approach-on-waste-management', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (11, 3, 'general', 'reduce-waste-to-landfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (12, 3, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (13, 3, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (14, 3, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (15, 4, 'general', '100-holistic-approach-on-waste-management', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (16, 4, 'general', 'reduce-waste-to-landfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (17, 4, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (18, 4, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (19, 4, 'general', 'increasing-audiences-awareness-of-waste-issues', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (20, 5, 'general', 'zerowastetolandfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (21, 5, 'general', 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (22, 5, 'general', 'waste-journey-report', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (23, 5, 'general', 'help-to-increase-recycling-rate', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (24, 6, 'general', 'zerowastetolandfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (25, 6, 'general', 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (26, 6, 'general', 'wider-reach', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (27, 6, 'general', 'meet-the-needs-of-your-brand-customers-in-more-loc', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (28, 6, 'general', 'waste-journey-report', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (29, 6, 'general', 'help-to-increase-recycling-rate', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (30, 9, 'for-clients', 'the-real-action-in-encouraging-the-implementation-', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (31, 9, 'for-clients', 'supporting-the-green-concept-of-our-clients-brand', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (32, 9, 'for-schools', 'increased-knowledge-and-capacity-of-students-and-t', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (33, 9, 'for-schools', 'schools-can-contribute-to-supporting-and-executing', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (34, 9, 'for-schools', 'available-for-every-school-located-in-indonesia-w', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (35, 9, 'for-schools', 'for-schools-located-in-jakarta-we-help-to-support', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (36, 32, 'general', 'a-better-waste-management-guidelines-to-improve-wa', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (37, 32, 'general', 'custom-design-based-on-your-brand-guidelines-or-in', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (38, 33, 'general', '100-segregated-inorganic-waste', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (39, 33, 'general', 'reduce-volume-of-waste-into-landfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (40, 33, 'general', 'improve-recycling-rate', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (41, 33, 'general', 'prolong-material-life-by-recycling', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (42, 33, 'general', 'improve-waste-collector-recycler-jobs', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (43, 34, 'general', 'reducing-waste-that-ends-up-in-the-landfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL);
INSERT INTO `benefit` VALUES (44, 34, 'general', 'compost-that-can-be-used-for-gardens-parks', NULL, '2020-03-03 22:15:04', '2020-04-08 14:15:26', NULL);
INSERT INTO `benefit` VALUES (49, 34, 'general', 'easy-to-compost-on-a-small-scale', NULL, '2020-03-31 22:34:42', '2020-04-08 14:14:03', '2020-04-08 14:14:01');

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `client_logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (1, 'Ades', 'Ades.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (2, 'AHT Group AG', 'AHT-Group.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (3, 'Bappenas', 'Bappenas.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (4, 'Binus School Bekasi', 'Binus-School.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (5, 'PT Bank Negara Indonesia', 'BNI.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (6, 'By Lizzie Parra', 'By-Lizzie-Parra.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (7, 'CIMB Niaga', 'Cimb-Niaga.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (8, 'Climate Policy Initiative', 'Climate-Policy-Initiative.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (9, 'Danone', 'Danone.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (10, 'DBS', 'DBS.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (11, 'Decathlon', 'Decathlon.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (12, 'Deloitte', 'Deloitte.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (13, 'Djournal', 'Djournal.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (14, 'Eawag', 'eawag.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (15, 'EPSON', 'epson.png', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (16, 'GA Circular', 'GA-Circular.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (17, 'Gojek', 'Gojek.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (18, 'Institute Francais Indonesia', 'IFI.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (19, 'IKEA', 'IKEA.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (20, 'PT Indonesia Power Suralaya', 'Indonesia-Power.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (21, 'Institute Francais Indonesia', 'Institute-Francais-Indonesia.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (22, 'Ismaya Group', 'Ismaya-Group.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (23, 'Jakarta Fashion Week', 'Jakarta-Fashion-Week.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (24, 'Jakarta Land', 'Jakarta-Land.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (25, 'Jakpro', 'Jakpro.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (26, 'Javara', 'Javara.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (27, 'Kalbe', 'kalbe.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (28, 'Kemenko Maritim', 'Kemenko-Maritim.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (29, 'Kementerian Keuangan', 'kemetrian-keuangan.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (30, 'KLHK RI', 'KLHK-RI.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (31, 'PT L\'Oreal Indonesia', 'L\'Oreal.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (32, 'Lifebuoy', 'Lifebuoy.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (33, 'Love Beauty Planet Indonesia', 'Love-Beauty-Planet.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (34, 'Mang Kabayan', 'Mang-Kabayan.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (35, 'Milano', 'milano.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (36, 'Narasi TV', 'Narasi-TV.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (37, 'PT. NEC Idonesia', 'NEC.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (38, 'Nescafe Dolce Gusto', 'Nescafe-Dolce-Gusto.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (39, 'PT Nestle Indonesia', 'Nestle.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (40, 'Pertamina PHE WMO', 'Pertamina.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (41, 'Potato Head Family Jakarta', 'Potato-Head.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (42, 'PT Nestle Indonesia', 'PT-Nestle-Indonesia.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (43, 'PT Tirta Inverstama', 'PT-Tirta-Inverstama.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (44, 'PT. Pelabuhan Indonesia', 'PT.-Pelabuhan-Indonesia-II.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (45, 'Kementerian PUPR', 'PUPR.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (46, 'Puspa Agro', 'puspa-argo.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (47, 'RSPO', 'RSPO.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (48, 'Ruang Selatan', 'Ruang-Selatan.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (49, 'Sekolah Seniman Pangan', 'Seniman-Pangan.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (50, 'PT Sharp Electronics Indonesia', 'Sharp.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (51, 'Sudirman 7.8', 'Sudirman-7.8.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (52, 'Tetra Pak', 'Tetrapak.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (53, 'The Body Shop', 'The-Body-Shop.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (54, 'The Vida Kebon Jeruk', 'The-Vida-Kebon-Jeruk.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (55, 'Think Web', 'Think-Web.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (56, 'Trava Gannah', 'Trava.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (57, 'USAID', 'USAID.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (58, 'Vida Bekasi', 'Vida-Bekasi.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (59, 'Wardah', 'Wardah.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (60, 'Wisma Barito', 'Wisma-Barito.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (61, 'World Bank', 'World-Bank.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (62, 'Yara', 'Yara.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (63, 'PT Unilever Indonesia', 'Yayasan-Unilever.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (64, 'Yayasan Bangun Kecerdasan Bangsa', 'ybkb.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);
INSERT INTO `client` VALUES (65, 'Young Living', 'Young-Living.jpg', '2020-04-30 11:11:43', '2020-04-30 11:11:43', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1772 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (653, 'en', 'Lorem Ipsum', 'short-lorem', 'global');
INSERT INTO `dictionary` VALUES (654, 'id', 'Lorem Ipsum', 'short-lorem', 'global');
INSERT INTO `dictionary` VALUES (655, 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl', 'medium-lorem', 'global');
INSERT INTO `dictionary` VALUES (656, 'id', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl', 'medium-lorem', 'global');
INSERT INTO `dictionary` VALUES (657, 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl. Ut viverra orci volutpat dolor dignissim, eget pretium justo consequat. Maecenas at mauris vitae eros elementum rutrum id in orci.', 'long-lorem', 'global');
INSERT INTO `dictionary` VALUES (658, 'id', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl. Ut viverra orci volutpat dolor dignissim, eget pretium justo consequat. Maecenas at mauris vitae eros elementum rutrum id in orci.', 'long-lorem', 'global');
INSERT INTO `dictionary` VALUES (659, 'en', 'Services', 'services', 'global');
INSERT INTO `dictionary` VALUES (660, 'id', 'Servis', 'services', 'global');
INSERT INTO `dictionary` VALUES (661, 'en', 'For company', 'for-company', 'home');
INSERT INTO `dictionary` VALUES (662, 'id', 'Perusahaan', 'for-company', 'home');
INSERT INTO `dictionary` VALUES (663, 'en', 'For Individual', 'for-individuals', 'home');
INSERT INTO `dictionary` VALUES (664, 'id', 'Individu', 'for-individuals', 'home');
INSERT INTO `dictionary` VALUES (665, 'en', 'About', 'about', 'global');
INSERT INTO `dictionary` VALUES (666, 'id', 'Tentang', 'about', 'global');
INSERT INTO `dictionary` VALUES (667, 'en', 'About Us', 'about-us', 'global');
INSERT INTO `dictionary` VALUES (668, 'id', 'Tentang Kami', 'about-us', 'global');
INSERT INTO `dictionary` VALUES (669, 'en', 'Carrer', 'carrer', 'global');
INSERT INTO `dictionary` VALUES (670, 'id', 'Karir', 'carrer', 'global');
INSERT INTO `dictionary` VALUES (671, 'en', 'Blog', 'blog', 'global');
INSERT INTO `dictionary` VALUES (672, 'id', 'Blog', 'blog', 'global');
INSERT INTO `dictionary` VALUES (673, 'en', 'Contact', 'contact', 'global');
INSERT INTO `dictionary` VALUES (674, 'id', 'Kontak', 'contact', 'global');
INSERT INTO `dictionary` VALUES (675, 'en', 'Language', 'language', 'global');
INSERT INTO `dictionary` VALUES (676, 'id', 'Bahasa', 'language', 'global');
INSERT INTO `dictionary` VALUES (677, 'en', 'It\'s time to', 'it-is-time-to-responsibly', 'home');
INSERT INTO `dictionary` VALUES (678, 'id', 'Waktunya Mengelola Sampah', 'it-is-time-to-responsibly', 'home');
INSERT INTO `dictionary` VALUES (679, 'en', 'Manage Your Waste', 'manage-your-waste', 'home');
INSERT INTO `dictionary` VALUES (680, 'id', '', 'manage-your-waste', 'home');
INSERT INTO `dictionary` VALUES (681, 'en', 'with Waste4Change', 'with-waste4change', 'home');
INSERT INTO `dictionary` VALUES (682, 'id', 'bersama Waste4Change', 'with-waste4change', 'home');
INSERT INTO `dictionary` VALUES (683, 'en', 'Available services in your city', 'available-services-for-your-location', 'global');
INSERT INTO `dictionary` VALUES (684, 'id', 'Layanan yang tersedia di kota Anda', 'available-services-for-your-location', 'global');
INSERT INTO `dictionary` VALUES (685, 'en', 'Enter Your Location', 'enter-your-location', 'global');
INSERT INTO `dictionary` VALUES (686, 'id', 'Masukkan Lokasi Anda', 'enter-your-location', 'global');
INSERT INTO `dictionary` VALUES (687, 'en', 'Search', 'search', 'global');
INSERT INTO `dictionary` VALUES (688, 'id', 'Cari', 'search', 'global');
INSERT INTO `dictionary` VALUES (689, 'en', 'Cannot found the solution you are looking for?', 'cant-found-the-solution-you-are-looking-for?', 'global');
INSERT INTO `dictionary` VALUES (690, 'id', 'Tidak Dapat Menemukan Solusi Yang Anda Cari?', 'cant-found-the-solution-you-are-looking-for?', 'global');
INSERT INTO `dictionary` VALUES (691, 'en', 'All Services', 'all-services', 'global');
INSERT INTO `dictionary` VALUES (692, 'id', 'Semua Layanan', 'all-services', 'global');
INSERT INTO `dictionary` VALUES (693, 'en', 'Learn more', 'learn-more', 'global');
INSERT INTO `dictionary` VALUES (694, 'id', 'Pelajari Lebih Lanjut', 'learn-more', 'global');
INSERT INTO `dictionary` VALUES (695, 'en', 'Talk To Our Expert', 'talk-to-our-expert', 'global');
INSERT INTO `dictionary` VALUES (696, 'id', 'Hubungi Kami', 'talk-to-our-expert', 'global');
INSERT INTO `dictionary` VALUES (697, 'en', 'Our Achievement', 'our-achievement', 'global');
INSERT INTO `dictionary` VALUES (698, 'id', 'Pencapaian Kami', 'our-achievement', 'global');
INSERT INTO `dictionary` VALUES (699, 'en', 'We create an ecosystem of responsible waste management in Indonesia', 'we-create-an-ecosystem-of-responsible-waste-manage', 'home');
INSERT INTO `dictionary` VALUES (700, 'id', 'Kami menciptakan ekosistem pengelolaan sampah yang bertanggung jawab di Indonesia', 'we-create-an-ecosystem-of-responsible-waste-manage', 'home');
INSERT INTO `dictionary` VALUES (701, 'en', 'Clients', 'clients', 'global');
INSERT INTO `dictionary` VALUES (702, 'id', 'Klien', 'clients', 'global');
INSERT INTO `dictionary` VALUES (703, 'en', 'Projects', 'projects', 'global');
INSERT INTO `dictionary` VALUES (704, 'id', 'Proyek', 'projects', 'global');
INSERT INTO `dictionary` VALUES (705, 'en', 'Partners', 'partners', 'home');
INSERT INTO `dictionary` VALUES (706, 'id', 'Partner', 'partners', 'home');
INSERT INTO `dictionary` VALUES (707, 'en', 'Waste Recycled (kg)', 'waste-recycled', 'home');
INSERT INTO `dictionary` VALUES (708, 'id', 'Sampah Terdaur Ulang (kg)', 'waste-recycled', 'home');
INSERT INTO `dictionary` VALUES (709, 'en', 'More About Us', 'more-about-us', 'global');
INSERT INTO `dictionary` VALUES (710, 'id', 'Tentang Kami', 'more-about-us', 'global');
INSERT INTO `dictionary` VALUES (711, 'en', 'Client And Partner', 'client-and-partner', 'global');
INSERT INTO `dictionary` VALUES (712, 'id', 'Klien Dan Partner', 'client-and-partner', 'global');
INSERT INTO `dictionary` VALUES (713, 'en', 'Testimonial', 'testimonial', 'global');
INSERT INTO `dictionary` VALUES (714, 'id', 'Testimoni', 'testimonial', 'global');
INSERT INTO `dictionary` VALUES (715, 'en', 'The report from Waste4Change has really helped us to improve our communication and education system towards our employees', 'the-report-from-waste4change-has-really-helped-us-', 'home-testimonial');
INSERT INTO `dictionary` VALUES (716, 'id', 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan', 'the-report-from-waste4change-has-really-helped-us-', 'home-testimonial');
INSERT INTO `dictionary` VALUES (717, 'en', 'Waste4Change is more than just a partner, but also a learning buddy. They taught us how to make internal procedures', 'waste4change-is-more-than-just-a-partner-but-also', 'home-testimonial');
INSERT INTO `dictionary` VALUES (718, 'id', 'W4C lebih dari sekedar company partner tapi seperti teman belajar. Mereka mengajari kami cara membuat prosedur internal', 'waste4change-is-more-than-just-a-partner-but-also', 'home-testimonial');
INSERT INTO `dictionary` VALUES (719, 'en', 'I am very thrilled to be working with Waste4Change because they communicate openly and respond promptly', 'i-am-very-thrilled-to-be-working-with-waste4change', 'home-testimonial');
INSERT INTO `dictionary` VALUES (720, 'id', 'Saya senang sekali bisa bekerjasama dengan Waste4Change karena punya komunikasi yang terbuka dan cepat menanggap', 'i-am-very-thrilled-to-be-working-with-waste4change', 'home-testimonial');
INSERT INTO `dictionary` VALUES (721, 'en', 'Blog and News', 'blog-and-news', 'home');
INSERT INTO `dictionary` VALUES (722, 'id', 'Blog dan Berita', 'blog-and-news', 'home');
INSERT INTO `dictionary` VALUES (723, 'en', 'Read More', 'read-more', 'home');
INSERT INTO `dictionary` VALUES (724, 'id', 'Selengkapnya', 'read-more', 'home');
INSERT INTO `dictionary` VALUES (725, 'en', 'Find more content about responsible waste management and green lifestyle in our Blog & News page', 'find-more-content-about-responsible-waste-manageme', 'global');
INSERT INTO `dictionary` VALUES (726, 'id', 'Temukan lebih banyak konten mengenai pengelolaan sampah yang bertanggung jawab dan gaya hidup ramah lingkungan di halaman Blog dan Berita kami', 'find-more-content-about-responsible-waste-manageme', 'global');
INSERT INTO `dictionary` VALUES (727, 'en', 'More Article', 'more-article', 'global');
INSERT INTO `dictionary` VALUES (728, 'id', 'Lihat Artikel Lainnya', 'more-article', 'global');
INSERT INTO `dictionary` VALUES (729, 'en', 'Spread The Good News', 'spread-the-good-news', 'global');
INSERT INTO `dictionary` VALUES (730, 'id', 'Sebarkan Berita Baik Ini', 'spread-the-good-news', 'global');
INSERT INTO `dictionary` VALUES (731, 'en', 'Share on your social media & create impact for your environment', 'share-on-your-social-media-create-impact-for-you', 'global');
INSERT INTO `dictionary` VALUES (732, 'id', 'Bagikan kami di media sosial Anda dan ciptakan dampak yang positif di lingkungan sekitar', 'share-on-your-social-media-create-impact-for-you', 'global');
INSERT INTO `dictionary` VALUES (733, 'en', 'Ready to start your <strong>Responsible Waste Management</strong> ?', 'ready-to-start-your-<strong>responsible-waste-mana', 'global');
INSERT INTO `dictionary` VALUES (734, 'id', 'Siap memulai <strong>Pengelolaan Sampah yang Bertanggung Jawab</strong> ?', 'ready-to-start-your-<strong>responsible-waste-mana', 'global');
INSERT INTO `dictionary` VALUES (735, 'en', 'Get Started', 'get-started', 'global');
INSERT INTO `dictionary` VALUES (736, 'id', 'Mulai', 'get-started', 'global');
INSERT INTO `dictionary` VALUES (737, 'en', 'Career', 'career', 'global');
INSERT INTO `dictionary` VALUES (738, 'id', 'Karier', 'career', 'global');
INSERT INTO `dictionary` VALUES (739, 'en', 'Internship', 'internship', 'global');
INSERT INTO `dictionary` VALUES (740, 'id', 'Magang', 'internship', 'global');
INSERT INTO `dictionary` VALUES (741, 'en', 'Connect with Us', 'connect-with-us', 'global');
INSERT INTO `dictionary` VALUES (742, 'id', 'Hubungi Kami', 'connect-with-us', 'global');
INSERT INTO `dictionary` VALUES (743, 'en', 'Choose the right solution for you', 'choose-the-right-solution', 'all-service');
INSERT INTO `dictionary` VALUES (744, 'id', 'Pilih Jasa yang Tepat untuk Solusi Permasalahan Sampah Anda', 'choose-the-right-solution', 'all-service');
INSERT INTO `dictionary` VALUES (745, 'en', 'for your business', 'for-your-business', 'all-service');
INSERT INTO `dictionary` VALUES (746, 'id', 'permasalahan sampah Anda', 'for-your-business', 'all-service');
INSERT INTO `dictionary` VALUES (747, 'en', 'ALL', 'all', 'global');
INSERT INTO `dictionary` VALUES (748, 'id', 'Semua', 'all', 'global');
INSERT INTO `dictionary` VALUES (749, 'en', 'Get Proposal', 'get-proposal', 'global');
INSERT INTO `dictionary` VALUES (750, 'id', 'Dapatkan Proposal', 'get-proposal', 'global');
INSERT INTO `dictionary` VALUES (751, 'en', 'Home', 'home', 'global');
INSERT INTO `dictionary` VALUES (752, 'id', 'Beranda', 'home', 'global');
INSERT INTO `dictionary` VALUES (753, 'en', 'For this type of service, Waste4Change provides the facilities as follows:', 'for-this-type-of-service-waste4change-provides-th', 'global');
INSERT INTO `dictionary` VALUES (754, 'id', 'Untuk servis ini, Waste4Change menyediakan fasilitas sebagai berikut', 'for-this-type-of-service-waste4change-provides-th', 'global');
INSERT INTO `dictionary` VALUES (755, 'en', 'Average of waste collected', 'average-of-waste-collected', 'project_highlight');
INSERT INTO `dictionary` VALUES (756, 'id', 'Rerata Volume Sampah yang Diangkut', 'average-of-waste-collected', 'project_highlight');
INSERT INTO `dictionary` VALUES (757, 'en', 'MoU Signed', 'mou-signed', 'project_highlight');
INSERT INTO `dictionary` VALUES (758, 'id', 'Penandatanganan MoU', 'mou-signed', 'project_highlight');
INSERT INTO `dictionary` VALUES (759, 'en', 'Collection Schedule', 'collection-schedule', 'project_highlight');
INSERT INTO `dictionary` VALUES (760, 'id', 'Jadwal Pengangkutan', 'collection-schedule', 'project_highlight');
INSERT INTO `dictionary` VALUES (761, 'en', 'kg/ month', 'kgmonth', 'project_highlight');
INSERT INTO `dictionary` VALUES (762, 'id', 'kg/ bulan', 'kgmonth', 'project_highlight');
INSERT INTO `dictionary` VALUES (763, 'en', 'kg', 'kg', 'global');
INSERT INTO `dictionary` VALUES (764, 'id', 'kg', 'kg', 'global');
INSERT INTO `dictionary` VALUES (765, 'en', 'pcs', 'pcs', 'global');
INSERT INTO `dictionary` VALUES (766, 'id', 'pcs', 'pcs', 'global');
INSERT INTO `dictionary` VALUES (767, 'en', 'days per week', 'days-per-week', 'project_highlight');
INSERT INTO `dictionary` VALUES (768, 'id', 'Hari Per Minggu', 'days-per-week', 'project_highlight');
INSERT INTO `dictionary` VALUES (769, 'en', 'year', 'year', 'global');
INSERT INTO `dictionary` VALUES (770, 'id', 'Tahun', 'year', 'global');
INSERT INTO `dictionary` VALUES (771, 'en', 'month', 'month', 'global');
INSERT INTO `dictionary` VALUES (772, 'id', 'Bulan', 'month', 'global');
INSERT INTO `dictionary` VALUES (773, 'en', 'day', 'day', 'global');
INSERT INTO `dictionary` VALUES (774, 'id', 'Hari', 'day', 'global');
INSERT INTO `dictionary` VALUES (775, 'en', 'Every day', 'every-day', 'project_highlight');
INSERT INTO `dictionary` VALUES (776, 'id', 'Setiap hari', 'every-day', 'project_highlight');
INSERT INTO `dictionary` VALUES (777, 'en', 'Start your', 'start-your', 'service_cta');
INSERT INTO `dictionary` VALUES (778, 'id', 'Mulai', 'start-your', 'service_cta');
INSERT INTO `dictionary` VALUES (779, 'en', 'now!', 'now!', 'service_cta');
INSERT INTO `dictionary` VALUES (780, 'id', 'Anda sekarang juga!', 'now!', 'service_cta');
INSERT INTO `dictionary` VALUES (781, 'en', 'ENROLL THE CLASS', 'enroll-the-class', 'service_cta');
INSERT INTO `dictionary` VALUES (782, 'id', 'MULAI KELAS', 'enroll-the-class', 'service_cta');
INSERT INTO `dictionary` VALUES (783, 'en', 'Welcome', 'welcome', 'section');
INSERT INTO `dictionary` VALUES (784, 'id', 'Selamat datang', 'welcome', 'section');
INSERT INTO `dictionary` VALUES (785, 'en', 'Header', 'header', 'section');
INSERT INTO `dictionary` VALUES (786, 'id', 'Header', 'header', 'section');
INSERT INTO `dictionary` VALUES (787, 'en', 'Description', 'description', 'section');
INSERT INTO `dictionary` VALUES (788, 'id', 'Deskripsi', 'description', 'section');
INSERT INTO `dictionary` VALUES (789, 'en', 'Achievement/ Deliverables', 'achievement-deliverable', 'section');
INSERT INTO `dictionary` VALUES (790, 'id', 'Hasil Kerja', 'achievement-deliverable', 'section');
INSERT INTO `dictionary` VALUES (791, 'en', 'We Offer', 'we-offer', 'section');
INSERT INTO `dictionary` VALUES (792, 'id', 'Kami menawarkan', 'we-offer', 'section');
INSERT INTO `dictionary` VALUES (793, 'en', 'Activities', 'activities', 'section');
INSERT INTO `dictionary` VALUES (794, 'id', 'Aktifitas', 'activities', 'section');
INSERT INTO `dictionary` VALUES (795, 'en', 'Benefits', 'benefit', 'section');
INSERT INTO `dictionary` VALUES (796, 'id', 'Keuntungan', 'benefit', 'section');
INSERT INTO `dictionary` VALUES (797, 'en', 'Expertise And Experience', 'expertise-and-experience', 'section');
INSERT INTO `dictionary` VALUES (798, 'id', 'Keahlian Dan Pengalaman', 'expertise-and-experience', 'section');
INSERT INTO `dictionary` VALUES (799, 'en', 'Output & Benefit', 'output-benefit', 'section');
INSERT INTO `dictionary` VALUES (800, 'id', 'Hasil & Keuntungan', 'output-benefit', 'section');
INSERT INTO `dictionary` VALUES (801, 'en', 'What You Get', 'what-you-get', 'section');
INSERT INTO `dictionary` VALUES (802, 'id', 'Yang Anda Dapat', 'what-you-get', 'section');
INSERT INTO `dictionary` VALUES (803, 'en', 'Waste Flow', 'waste-flow', 'section');
INSERT INTO `dictionary` VALUES (804, 'id', 'Alur Sampah', 'waste-flow', 'section');
INSERT INTO `dictionary` VALUES (805, 'en', 'Portfolio Highlight', 'portofolio-highlight', 'section');
INSERT INTO `dictionary` VALUES (806, 'id', 'Sorotan Portofolio', 'portofolio-highlight', 'section');
INSERT INTO `dictionary` VALUES (807, 'en', 'Research Hightlight', 'research-hightlight', 'section');
INSERT INTO `dictionary` VALUES (808, 'id', 'Sorotan Penelitian', 'research-hightlight', 'section');
INSERT INTO `dictionary` VALUES (809, 'en', 'Program Highlight', 'program-highlight', 'section');
INSERT INTO `dictionary` VALUES (810, 'id', 'Sorotan Program', 'program-highlight', 'section');
INSERT INTO `dictionary` VALUES (811, 'en', 'Similar Project', 'similar-project', 'section');
INSERT INTO `dictionary` VALUES (812, 'id', 'Proyek Serupa', 'similar-project', 'section');
INSERT INTO `dictionary` VALUES (813, 'en', 'Our Client', 'our-client', 'section');
INSERT INTO `dictionary` VALUES (814, 'id', 'Klien kami', 'our-client', 'section');
INSERT INTO `dictionary` VALUES (815, 'en', 'Recommended For', 'recommended-for', 'section');
INSERT INTO `dictionary` VALUES (816, 'id', 'Direkomendasikan Untuk', 'recommended-for', 'section');
INSERT INTO `dictionary` VALUES (817, 'en', 'Coverage Area', 'our-coverage', 'section');
INSERT INTO `dictionary` VALUES (818, 'id', 'Area Cakupan', 'our-coverage', 'section');
INSERT INTO `dictionary` VALUES (819, 'en', 'CTA', 'cta', 'section');
INSERT INTO `dictionary` VALUES (820, 'id', 'CTA', 'cta', 'section');
INSERT INTO `dictionary` VALUES (821, 'en', 'Expertise and Experiences', 'expertise-and-experiences', 'section');
INSERT INTO `dictionary` VALUES (822, 'id', 'Keahlian dan Pengalaman', 'expertise-and-experiences', 'section');
INSERT INTO `dictionary` VALUES (823, 'en', 'Highlight', 'highlight', 'section');
INSERT INTO `dictionary` VALUES (824, 'id', 'Sorotan', 'highlight', 'section');
INSERT INTO `dictionary` VALUES (825, 'en', 'Client', 'client', 'section');
INSERT INTO `dictionary` VALUES (826, 'id', 'Klien', 'client', 'section');
INSERT INTO `dictionary` VALUES (827, 'en', 'Coverage Area', 'coverage', 'section');
INSERT INTO `dictionary` VALUES (828, 'id', 'Area Cakupan', 'coverage', 'section');
INSERT INTO `dictionary` VALUES (829, 'en', 'Waste Collection Services', 'waste-collection-program', 'service_category_name');
INSERT INTO `dictionary` VALUES (830, 'id', 'Waste Collection Services', 'waste-collection-program', 'service_category_name');
INSERT INTO `dictionary` VALUES (831, 'en', 'Extended Producer Responsibility', 'extended-producer-responsibility', 'service_category_name');
INSERT INTO `dictionary` VALUES (832, 'id', 'Extended Producer Responsibility', 'extended-producer-responsibility', 'service_category_name');
INSERT INTO `dictionary` VALUES (833, 'en', 'Solid Waste Management Research', 'solid-waste-management-research', 'service_category_name');
INSERT INTO `dictionary` VALUES (834, 'id', 'Solid Waste Management Research', 'solid-waste-management-research', 'service_category_name');
INSERT INTO `dictionary` VALUES (835, 'en', 'Community Development', 'community-development', 'service_category_name');
INSERT INTO `dictionary` VALUES (836, 'id', 'Community Development', 'community-development', 'service_category_name');
INSERT INTO `dictionary` VALUES (837, 'en', 'Training', 'training', 'service_category_name');
INSERT INTO `dictionary` VALUES (838, 'id', 'Training', 'training', 'service_category_name');
INSERT INTO `dictionary` VALUES (839, 'en', 'General', 'general', 'service_category_name');
INSERT INTO `dictionary` VALUES (840, 'id', 'General', 'general', 'service_category_name');
INSERT INTO `dictionary` VALUES (841, 'en', 'SWM Research In Institutions', 'swm-research-in-institutions', 'service_category_name2');
INSERT INTO `dictionary` VALUES (842, 'id', 'SWM Research di Institusi', 'swm-research-in-institutions', 'service_category_name2');
INSERT INTO `dictionary` VALUES (843, 'en', 'SWM Research In Municipalities/ Tourism Sites', 'swm-research-in-municipalities', 'service_category_name2');
INSERT INTO `dictionary` VALUES (844, 'id', 'SWM Research di Daerah/ Destinasi Wisata', 'swm-research-in-municipalities', 'service_category_name2');
INSERT INTO `dictionary` VALUES (845, 'en', 'Value Chain Analysis', 'value-chain-analysis', 'service_category_name2');
INSERT INTO `dictionary` VALUES (846, 'id', 'Analisis Rantai Nilai', 'value-chain-analysis', 'service_category_name2');
INSERT INTO `dictionary` VALUES (847, 'en', 'Marine Debris Study', 'marine-debris-study', 'service_category_name2');
INSERT INTO `dictionary` VALUES (848, 'id', 'Studi Sampah Sungai dan Laut', 'marine-debris-study', 'service_category_name2');
INSERT INTO `dictionary` VALUES (849, 'en', 'Waste To Energy', 'waste-to-energy', 'service_category_name2');
INSERT INTO `dictionary` VALUES (850, 'id', 'Waste To Energy', 'waste-to-energy', 'service_category_name2');
INSERT INTO `dictionary` VALUES (851, 'en', 'Community Assistance In Institutions', 'community-assistance-in-institutions', 'service_category_name2');
INSERT INTO `dictionary` VALUES (852, 'id', 'Community Assistance  di Institusi', 'community-assistance-in-institutions', 'service_category_name2');
INSERT INTO `dictionary` VALUES (853, 'en', 'Community Assistance In Municipalities', 'community-assistance-in-municipalities', 'service_category_name2');
INSERT INTO `dictionary` VALUES (854, 'id', 'Community Assistance di Daerah', 'community-assistance-in-municipalities', 'service_category_name2');
INSERT INTO `dictionary` VALUES (855, 'en', 'Community Assistance In Tourism Sites', 'community-assistance-in-tourism-sites', 'service_category_name2');
INSERT INTO `dictionary` VALUES (856, 'id', 'Community Assistance di Destinasi Wisata', 'community-assistance-in-tourism-sites', 'service_category_name2');
INSERT INTO `dictionary` VALUES (857, 'en', 'Community Capacity Building', 'community-capacity-building', 'service_category_name2');
INSERT INTO `dictionary` VALUES (858, 'id', 'Community Capacity Building', 'community-capacity-building', 'service_category_name2');
INSERT INTO `dictionary` VALUES (859, 'en', '3R School Program', '3r-school-program', 'service_category_name2');
INSERT INTO `dictionary` VALUES (860, 'id', '3R School Program', '3r-school-program', 'service_category_name2');
INSERT INTO `dictionary` VALUES (861, 'en', 'AKABIS Class For Institution', 'akabis-class-for-institution', 'service_category_name2');
INSERT INTO `dictionary` VALUES (862, 'id', 'AKABIS Class untuk Institusi', 'akabis-class-for-institution', 'service_category_name2');
INSERT INTO `dictionary` VALUES (863, 'en', 'AKABIS Class For Public', 'akabis-class-for-public', 'service_category_name2');
INSERT INTO `dictionary` VALUES (864, 'id', 'AKABIS Class untuk Umum', 'akabis-class-for-public', 'service_category_name2');
INSERT INTO `dictionary` VALUES (865, 'en', 'AKABIS Xperience For Institution', 'akabis-xperience-for-institution', 'service_category_name2');
INSERT INTO `dictionary` VALUES (866, 'id', 'AKABIS Xperience untuk Institusi', 'akabis-xperience-for-institution', 'service_category_name2');
INSERT INTO `dictionary` VALUES (867, 'en', 'AKABIS Xperience For Public', 'akabis-xperience-for-public', 'service_category_name2');
INSERT INTO `dictionary` VALUES (868, 'id', 'AKABIS Xperience untuk Umum', 'akabis-xperience-for-public', 'service_category_name2');
INSERT INTO `dictionary` VALUES (869, 'en', 'Responsible Waste Management', 'responsible-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (870, 'id', 'Responsible Waste Management', 'responsible-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (871, 'en', 'Zero Waste to Landfill', 'zero-waste-to-landfill', 'service_name');
INSERT INTO `dictionary` VALUES (872, 'id', 'Zero Waste to Landfill', 'zero-waste-to-landfill', 'service_name');
INSERT INTO `dictionary` VALUES (873, 'en', 'Inorganic Waste Management', 'inorganic-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (874, 'id', 'Inorganic Waste Management', 'inorganic-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (875, 'en', 'Event Waste Management', 'event-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (876, 'id', 'Event Waste Management', 'event-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (877, 'en', 'In-Store Recycling', 'in-store-recycling', 'service_name');
INSERT INTO `dictionary` VALUES (878, 'id', 'In-Store Recycling', 'in-store-recycling', 'service_name');
INSERT INTO `dictionary` VALUES (879, 'en', 'Digital EPR', 'digital-epr', 'service_name');
INSERT INTO `dictionary` VALUES (880, 'id', 'Digital EPR', 'digital-epr', 'service_name');
INSERT INTO `dictionary` VALUES (881, 'en', 'Community-Based Implementation', 'community-based-implementation', 'service_name');
INSERT INTO `dictionary` VALUES (882, 'id', 'Community-Based Implementation', 'community-based-implementation', 'service_name');
INSERT INTO `dictionary` VALUES (883, 'en', 'AKABIS (Waste Management Academy)', 'akabis-waste-management-academy', 'service_name');
INSERT INTO `dictionary` VALUES (884, 'id', 'AKABIS (Waste Management Academy)', 'akabis-waste-management-academy', 'service_name');
INSERT INTO `dictionary` VALUES (885, 'en', 'Black Soldier Fly Learning Center', 'black-soldier-fly-learning-center', 'service_name');
INSERT INTO `dictionary` VALUES (886, 'id', 'Black Soldier Fly Learning Center', 'black-soldier-fly-learning-center', 'service_name');
INSERT INTO `dictionary` VALUES (887, 'en', 'Black Soldier Fly Tools & Products', 'black-soldier-fly-tools-products', 'service_name');
INSERT INTO `dictionary` VALUES (888, 'id', 'Black Soldier Fly Tools & Products', 'black-soldier-fly-tools-products', 'service_name');
INSERT INTO `dictionary` VALUES (889, 'en', 'Send Your Waste', 'send-your-waste', 'service_name');
INSERT INTO `dictionary` VALUES (890, 'id', 'Send Your Waste', 'send-your-waste', 'service_name');
INSERT INTO `dictionary` VALUES (891, 'en', 'Dropbox', 'dropbox', 'service_name');
INSERT INTO `dictionary` VALUES (892, 'id', 'Dropbox', 'dropbox', 'service_name');
INSERT INTO `dictionary` VALUES (893, 'en', 'Sinergi #AdesNiatMurni dan Gojek', 'sinergi-adesniatmurni-dan-gojek', 'service_name');
INSERT INTO `dictionary` VALUES (894, 'id', 'Sinergi #AdesNiatMurni dan Gojek', 'sinergi-adesniatmurni-dan-gojek', 'service_name');
INSERT INTO `dictionary` VALUES (895, 'en', 'Merchant', 'merchant', 'service_name');
INSERT INTO `dictionary` VALUES (896, 'id', 'Merchant', 'merchant', 'service_name');
INSERT INTO `dictionary` VALUES (897, 'en', 'Home Composting', 'home-composting', 'service_name');
INSERT INTO `dictionary` VALUES (898, 'id', 'Home Composting', 'home-composting', 'service_name');
INSERT INTO `dictionary` VALUES (899, 'en', 'Solid Waste Management Study at Pelabuhan Indonesia II HQ', 'solid-waste-management-study-at-pelabuhan-indonesi', 'service_name');
INSERT INTO `dictionary` VALUES (900, 'id', 'Solid Waste Management Study di Kantor Pusat Pelabuhan Indonesia II', 'solid-waste-management-study-at-pelabuhan-indonesi', 'service_name');
INSERT INTO `dictionary` VALUES (901, 'en', 'Solid Waste Management Design for Revitalisation at Jami\' Mosque and Kampung Beting Settlements in Pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', 'service_name');
INSERT INTO `dictionary` VALUES (902, 'id', 'Rancangan Pengelolaan Sampah untuk Program Revitalisasi di Masjid Jami\' dan Permukiman Beting di Pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', 'service_name');
INSERT INTO `dictionary` VALUES (903, 'id', 'Studi Manajemen Sampah - Pemetaan Pemangku Kepentingan dan Alur Sampah di Jakarta dan Surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', 'service_name');
INSERT INTO `dictionary` VALUES (904, 'en', 'Waste Management Scouting Study - Stakeholders Mapping and Waste Flow in Jakarta and Surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', 'service_name');
INSERT INTO `dictionary` VALUES (905, 'id', 'Proyek Pemantauan Sampah Plastik di Sungai-Sungai di Jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', 'service_name');
INSERT INTO `dictionary` VALUES (906, 'en', 'Riverine Plastic Monitoring Project in Jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', 'service_name');
INSERT INTO `dictionary` VALUES (907, 'en', 'Technical Due Diligence for <br>ITF Sunter Jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', 'service_name');
INSERT INTO `dictionary` VALUES (908, 'id', 'Uji Kelayakan untuk <br>ITF Sunter Jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', 'service_name');
INSERT INTO `dictionary` VALUES (909, 'en', '3R Program Suralaya', '3r-program-suralaya', 'service_name');
INSERT INTO `dictionary` VALUES (910, 'id', '3R Program Suralaya', '3r-program-suralaya', 'service_name');
INSERT INTO `dictionary` VALUES (911, 'en', 'TPS 3R Advisory', 'tps-3r-advisory', 'service_name');
INSERT INTO `dictionary` VALUES (912, 'id', 'TPS 3R Advisory', 'tps-3r-advisory', 'service_name');
INSERT INTO `dictionary` VALUES (913, 'id', 'Ecoranger di Pulau Merah Banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', 'service_name');
INSERT INTO `dictionary` VALUES (914, 'en', 'Ecoranger in Pulau Merah Banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', 'service_name');
INSERT INTO `dictionary` VALUES (915, 'id', 'Capacity Building di Wilayah Terdepan Indonesia', 'capacity-building-di-wilayah-terdepan-indonesia', 'service_name');
INSERT INTO `dictionary` VALUES (916, 'en', 'Capacity Building in Indonesia\'s Frontline Territories', 'capacity-building-di-wilayah-terdepan-indonesia', 'service_name');
INSERT INTO `dictionary` VALUES (917, 'en', '3R Green School', '3r-green-school', 'service_name');
INSERT INTO `dictionary` VALUES (918, 'id', '3R Green School', '3r-green-school', 'service_name');
INSERT INTO `dictionary` VALUES (919, 'id', 'AKABIS Class untuk Kedutaan Finlandia di Jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', 'service_name');
INSERT INTO `dictionary` VALUES (920, 'en', 'AKABIS-CLASS for The Embassy of Finland - Jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', 'service_name');
INSERT INTO `dictionary` VALUES (921, 'en', 'AKABIS Class - The Neglected Debris: Paper, Letter and Waste Discussion', 'akabis-class-the-neglected-debris:-paper-letter', 'service_name');
INSERT INTO `dictionary` VALUES (922, 'id', 'AKABIS Class mengenai Sampah yang Terabaikan: Kertas, Aksara, dan Diskusi mengenai Sampah', 'akabis-class-the-neglected-debris:-paper-letter', 'service_name');
INSERT INTO `dictionary` VALUES (923, 'id', 'AKABIS Xperience untuk PT. Bank DBS Indonesia', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'service_name');
INSERT INTO `dictionary` VALUES (924, 'en', 'AKABIS Xperience for PT. Bank DBS Indonesia', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'service_name');
INSERT INTO `dictionary` VALUES (925, 'id', 'AKABIS Xperience untuk YSEALI', 'akabis-xperience-untuk-yseali-young-southeast-asi', 'service_name');
INSERT INTO `dictionary` VALUES (926, 'en', 'AKABIS XPERIENCE for YSEALI', 'akabis-xperience-untuk-yseali-young-southeast-asi', 'service_name');
INSERT INTO `dictionary` VALUES (927, 'en', 'Events', 'events', 'service_ourachivement');
INSERT INTO `dictionary` VALUES (928, 'id', 'Acara', 'events', 'service_ourachivement');
INSERT INTO `dictionary` VALUES (929, 'en', 'Clients', 'clientscompanies', 'service_ourachivement');
INSERT INTO `dictionary` VALUES (930, 'id', 'Klien', 'clientscompanies', 'service_ourachivement');
INSERT INTO `dictionary` VALUES (931, 'en', 'Recycled Waste (kg)', 'waste-recycled-kg', 'service_ourachivement');
INSERT INTO `dictionary` VALUES (932, 'id', 'Sampah Terdaur Ulang (kg)', 'waste-recycled-kg', 'service_ourachivement');
INSERT INTO `dictionary` VALUES (933, 'en', 'Residual Waste That Doesn\'t End Up in the Landfill (kg)', 'residual-waste-that-doesnt-end-up-in-the-landfill', 'service_ourachivement');
INSERT INTO `dictionary` VALUES (934, 'id', 'Residu yang Tidak Berakhir di TPA (kg)', 'residual-waste-that-doesnt-end-up-in-the-landfill', 'service_ourachivement');
INSERT INTO `dictionary` VALUES (935, 'en', 'Locations', 'locations', 'service_ourachivement');
INSERT INTO `dictionary` VALUES (936, 'id', 'Lokasi', 'locations', 'service_ourachivement');
INSERT INTO `dictionary` VALUES (937, 'en', 'Days spent for waste audit', 'days-spent-for-waste-audit', '');
INSERT INTO `dictionary` VALUES (938, 'id', 'Hari Dihabiskan untuk Audit Sampah', 'days-spent-for-waste-audit', '');
INSERT INTO `dictionary` VALUES (939, 'en', 'Cities & Regencies', 'cities-regencies', '');
INSERT INTO `dictionary` VALUES (940, 'id', 'Kabupaten & Kota', 'cities-regencies', '');
INSERT INTO `dictionary` VALUES (941, 'en', 'Beneficiaries', 'beneficiaries', '');
INSERT INTO `dictionary` VALUES (942, 'id', 'Peserta', 'beneficiaries', '');
INSERT INTO `dictionary` VALUES (943, '', '', '', '');
INSERT INTO `dictionary` VALUES (944, '', '', '', '');
INSERT INTO `dictionary` VALUES (945, 'en', 'A 100% holistic waste management for companies, buildings, and businesses to reduce the number of waste that piles up in the landfill.', 'a-100-holistic-waste-management-for-companies-bu', 'service_description');
INSERT INTO `dictionary` VALUES (946, 'id', 'Sistem manajemen sampah yang 100% menyeluruh untuk perusahaan, gedung, dan pelaku bisnis dalam rangka mengurangi jumlah timbulan sampah yang berakhir di TPA.', 'a-100-holistic-waste-management-for-companies-bu', 'service_description');
INSERT INTO `dictionary` VALUES (947, 'en', 'Take an active part in preventing our local landfills from being overcapacity! With our waste collection and waste recycling service, Zero Waste to Landfill, we will make sure that none of your waste ends up in the landfill!', 'take-an-active-part-in-preventing-our-local-landfi', 'service_description');
INSERT INTO `dictionary` VALUES (948, 'id', 'Ambil peran aktif untuk membantu mencegah TPS dan TPA agar tidak kelebihan kapasitas! Melalui layanan pengangkutan dan daur ulang sampah yang dinamakan Zero Waste to Landfill, kami akan memastikan bahwa tidak ada sampah Anda yang berakhir di TPA!', 'take-an-active-part-in-preventing-our-local-landfi', 'service_description');
INSERT INTO `dictionary` VALUES (949, 'en', 'Treat your inorganic waste the right way and make sure  that your inorganic waste are recycled and included in the sustainable circular system.', 'treat-your-inorganic-waste-the-right-way-and-make-', 'service_description');
INSERT INTO `dictionary` VALUES (950, 'id', 'Kelola sampah anorganik Anda dengan cara yang tepat dan pastikan bahwa sampah anorganik tersebut didaur ulang dan masuk ke dalam siklus yang berkelanjutan.', 'treat-your-inorganic-waste-the-right-way-and-make-', 'service_description');
INSERT INTO `dictionary` VALUES (951, 'en', 'Through the placement of segregated waste bins in strategic locations, as well as segregated waste collection for all of the waste that are produced during your event, we will help your event&apos;s waste management to be more well-prepared and responsible!', 'through-the-placement-of-segregated-waste-bins-in-', 'service_description');
INSERT INTO `dictionary` VALUES (952, 'id', 'Melalui penempatan tempat sampah terpilah di lokasi-lokasi yang strategis, serta pengangkutan sampah terpilah selama acara berlangsung, kami akan membantu acara Anda mempersiapkan pengelolaan sampah yang bertanggung jawab!', 'through-the-placement-of-segregated-waste-bins-in-', 'service_description');
INSERT INTO `dictionary` VALUES (953, 'en', 'We provide a system to improve the recycling process of your brand-labeled waste so that it remains safe for the environment, supports the circular economy, and prevent it from ending up in the landfill.', 'increase-the-material-processing-of-brand-labelled', 'service_description');
INSERT INTO `dictionary` VALUES (954, 'id', 'Tingkatkan pengelolaan materi dari sampah berlabel merek di seluruh lini bisnis Anda. Baik melalui layanan daur ulang di toko maupun yang berbasis aplikasi, kami punya sistem dan solusinya!', 'increase-the-material-processing-of-brand-labelled', 'service_description');
INSERT INTO `dictionary` VALUES (955, 'en', 'Increasing the recycling rate of your brand-labeled waste with the support of app-integrated and web-integrated recycling system and opening even wider collaboration opportunities with other businesses and communities.', 'increasing-the-recycling-rate-of-your-brand-labele', 'service_description');
INSERT INTO `dictionary` VALUES (956, 'id', 'Tingkatkan pengelolaan materi dari sampah berlabel merek Anda dengan bantuan sistem daur ulang berbasis aplikasi dan website, sekaligus membuka semakin banyak peluang kolaborasi dengan pelaku bisnis dan komunitas lain.', 'increasing-the-recycling-rate-of-your-brand-labele', 'service_description');
INSERT INTO `dictionary` VALUES (957, 'en', 'Improve your solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs.', 'improve-your-solid-waste-management-by-conducting-', 'service_description');
INSERT INTO `dictionary` VALUES (958, 'id', 'Tingkatkan pengelolaan sampah Anda dengan melakukan analisis terperinci dan mengidentifikasi program dan sistem manajemen sampah yang paling tepat.', 'improve-your-solid-waste-management-by-conducting-', 'service_description');
INSERT INTO `dictionary` VALUES (959, 'en', 'We help our clients to implement programs that encourage the community to act and provide real contributions to the waste crisis in Indonesia.', 'we-help-our-clients-to-implement-programs-that-enc', 'service_description');
INSERT INTO `dictionary` VALUES (960, 'id', 'Kami membantu klien kami untuk menerapkan program-program yang mendorong komunitas untuk ikut bertindak dan memberikan kontribusi nyata terhadap krisis pengelolaan sampah di Indonesia', 'we-help-our-clients-to-implement-programs-that-enc', 'service_description');
INSERT INTO `dictionary` VALUES (961, 'en', 'Designed to increase our future generations\' awareness  about 3R Principles (Reduce, Reuse, Recycle) and how to implement it in their everyday lives.', 'designed-to-encourage-the-increasing-awareness-of-', 'service_description');
INSERT INTO `dictionary` VALUES (962, 'id', 'Dirancang untuk meningkatkan kesadaran generasi mendatang terhadap prinsip 3R (Reduce, Reuse, Recycle) dan bagaimana menerapkannya di kehidupan sehari-hari.', 'designed-to-encourage-the-increasing-awareness-of-', 'service_description');
INSERT INTO `dictionary` VALUES (963, 'en', 'Waste management education program that includes a visit to the local landfill and Waste4Change\'s waste management facilities that stimulates all 4 senses (sight, touch, smell, and hearing).\r\n', 'waste-management-education-program-that-includes-a', 'service_description');
INSERT INTO `dictionary` VALUES (964, 'id', 'Program edukasi manajemen sampah yang mencakup kunjungan ke TPA/TPS dan fasilitas pengelolaan sampah milik Waste4Change yang akan merangsang keempat indra Anda (melihat, mendengar, mencium, dan meraba).', 'waste-management-education-program-that-includes-a', 'service_description');
INSERT INTO `dictionary` VALUES (965, 'en', 'Receive in-depth information regarding organic waste processing using Black Soldier Fly (BSF), as well as the cultivation and breeding methods of BSF.', 'receive-in-depth-information-regarding-organic-was', 'service_description');
INSERT INTO `dictionary` VALUES (966, 'id', 'Dapatkan informasi mendalam mengenai pengelolaan sampah organik dengan menggunakan Black Soldier Fly (BSF), serta metode budidaya dan pengembangbiakan BSF.', 'receive-in-depth-information-regarding-organic-was', 'service_description');
INSERT INTO `dictionary` VALUES (967, 'en', 'We provide Black Soldier Fly larvae that is high in protein and considered as a great animal feed. For any of you who wishes to build your own BSF nursery, we have all the tools and starters needed.', 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'service_description');
INSERT INTO `dictionary` VALUES (968, 'id', 'Kami menjual larva  Black Soldier Fly yang tinggi protein dan bagus untuk digunakan sebagai pakan ternak. Untuk siapapun yang ingin merintis peternakan BSFnya sendiri, kami menyediakan semua perlengkapan dan alat yang diperlukan.', 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'service_description');
INSERT INTO `dictionary` VALUES (969, 'en', 'Send your inorganic waste to Waste4Change and let us recycle it for you.', 'send-your-inorganic-waste-to-waste4change-and-let-', 'service_description');
INSERT INTO `dictionary` VALUES (970, 'id', 'Kirim sampah anorganik Anda ke Waste4Change untuk didaur ulang.', 'send-your-inorganic-waste-to-waste4change-and-let-', 'service_description');
INSERT INTO `dictionary` VALUES (971, 'en', 'Deposit your inorganic waste in Waste4Change\'s dropbox and let us recycle it for you.', 'deposit-your-inorganic-waste-in-waste4changes-dro', 'service_description');
INSERT INTO `dictionary` VALUES (972, 'id', 'Setor sampah anorganik Anda ke dalam dropbox Waste4Change untuk didaur ulang.', 'deposit-your-inorganic-waste-in-waste4changes-dro', 'service_description');
INSERT INTO `dictionary` VALUES (973, 'en', 'Send your used PET bottles of various sizes and brands with GoSend to get many benefits from Ades.', 'send-your-used-pet-bottles-of-various-sizes-and-br', 'service_description');
INSERT INTO `dictionary` VALUES (974, 'id', 'Kirimkan sampah botol plastik PET Anda dalam berbagai ukuran dan merek dengan menggunakan GoSend untuk mendapatkan banyak keuntungan dari Ades.', 'send-your-used-pet-bottles-of-various-sizes-and-br', 'service_description');
INSERT INTO `dictionary` VALUES (975, 'en', 'Deposit your used packaging through our partners throughout Indonesia and get reward points when shopping for various digital products.', 'deposit-your-used-packaging-through-our-partners-t', 'service_description');
INSERT INTO `dictionary` VALUES (976, 'id', 'Setor sampah kemasan Anda melalui partner-partner kami yang tersebar di seluruh Indonesia dan dapatkan hadiah poin untuk setiap pembelanjaan produk digital.', 'deposit-your-used-packaging-through-our-partners-t', 'service_description');
INSERT INTO `dictionary` VALUES (977, 'en', 'Process your organic waste at  home with Waste4Change\'s special composting bag and other home composting tools and equipment!', 'process-your-organic-waste-at-home-with-waste4cha', 'service_description');
INSERT INTO `dictionary` VALUES (978, 'id', 'Kelola sampah organik Anda di rumah dengan menggunakan tas kompos dari Waste4Change beserta perlengkapan kompos lainnya!', 'process-your-organic-waste-at-home-with-waste4cha', 'service_description');
INSERT INTO `dictionary` VALUES (979, 'en', 'No More Mixed Waste', 'no-more-mixed-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (980, 'id', 'Tidak Ada Lagi Sampah yang Tercampur', 'no-more-mixed-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (981, 'en', 'No More Waste That End Up In Landfills', 'no-more-waste-that-end-up-in-landfills', 'service_slogan');
INSERT INTO `dictionary` VALUES (982, 'id', 'Tidak Ada Lagi Sampah yang Berakhir di TPA', 'no-more-waste-that-end-up-in-landfills', 'service_slogan');
INSERT INTO `dictionary` VALUES (983, 'en', 'From Waste to Useful Materials', 'from-waste-to-useful-materials', 'service_slogan');
INSERT INTO `dictionary` VALUES (984, 'id', 'Dari Sampah Menjadi Material yang Berguna', 'from-waste-to-useful-materials', 'service_slogan');
INSERT INTO `dictionary` VALUES (985, 'en', 'Great Events Take Their Waste Management Seriously and is Well-Prepared Beforehand', 'great-event-planned-their-waste-management-beforeh', 'service_slogan');
INSERT INTO `dictionary` VALUES (986, 'id', 'Acara yang Baik itu Penuh Persiapan dan Bersungguh-sungguh dalam Mengelola Sampah Mereka', 'great-event-planned-their-waste-management-beforeh', 'service_slogan');
INSERT INTO `dictionary` VALUES (987, 'en', 'Support the Recycling of Your Brand-Labeled Waste', 'support-the-recycling-of-your-brand-labeled-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (988, 'id', 'Mendukung Daur Ulang Sampah Berlabel Merek Anda', 'support-the-recycling-of-your-brand-labeled-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (989, 'en', 'More Effective and Sustainable Brand-Labeled Waste Recycling Management', 'more-effective-and-sustainable-brand-labeled-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (990, 'id', 'Daur Ulang Sampah Berlabel Merek dengan Lebih Efektif dan Berkelanjutan', 'more-effective-and-sustainable-brand-labeled-waste', 'service_slogan');
INSERT INTO `dictionary` VALUES (991, 'en', 'Research and Planning with Environment in Mind', 'research-and-planning-with-environment-in-mind', 'service_slogan');
INSERT INTO `dictionary` VALUES (992, 'id', 'Penelitian dan Perencanaan dengan Mempertimbangkan Aspek Lingkungan', 'research-and-planning-with-environment-in-mind', 'service_slogan');
INSERT INTO `dictionary` VALUES (993, 'en', 'Solid Effort to Reduce Waste Generation From The Source', 'solid-effort-to-reduce-waste-generation-from-the-s', 'service_slogan');
INSERT INTO `dictionary` VALUES (994, 'id', 'Usaha Nyata untuk Mengurangi Produksi Sampah dari Sumbernya', 'solid-effort-to-reduce-waste-generation-from-the-s', 'service_slogan');
INSERT INTO `dictionary` VALUES (995, 'en', 'Optimal Implementation of 3R (Reduce-Reuse-Recycle) Principles', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'service_slogan');
INSERT INTO `dictionary` VALUES (996, 'id', 'Penerapan Prinsip 3R (Reduce-Reuse-Recycle)', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'service_slogan');
INSERT INTO `dictionary` VALUES (997, 'en', 'Take a Closer Look at Waste Management Facts and Solutions', 'take-a-closer-look-at-waste-management-facts-and-s', 'service_slogan');
INSERT INTO `dictionary` VALUES (998, 'id', 'Melihat Lebih Dekat Fakta dan Solusi Pengelolaan Sampah', 'take-a-closer-look-at-waste-management-facts-and-s', 'service_slogan');
INSERT INTO `dictionary` VALUES (999, 'en', 'Effective Organic Waste Solution', 'effective-organic-waste-solution', 'service_slogan');
INSERT INTO `dictionary` VALUES (1000, 'id', 'Solusi Sampah Organik yang Efektif', 'effective-organic-waste-solution', 'service_slogan');
INSERT INTO `dictionary` VALUES (1001, 'en', 'Waste generation is inevitable. It\'s not easy to reduce waste in our everyday lives. The simplest, easiest and most important thing that we can do after generating waste is separating our organic and inorganic waste. <br><br>Through our service Responsible Waste Management (RWM), Waste4Change is providing holistic waste management to reduce the number of waste that piles up in the landfill.', 'waste-generation-is-inevitable-its-not-easy-to-r', 'service_about');
INSERT INTO `dictionary` VALUES (1002, 'id', 'Produksi sampah merupakan sesuatu yang tidak bisa dihindari. Mengurangi sampah sendiri bukanlah perkara yang mudah. Hal yang paling sederhana, mudah, dan penting yang dapat kita lakukan setelah menghasilkan sampah adalah memisahkan sampah organik dan sampah anorganik.<br><br>Dengan layanan kami yang bernama Responsible Waste Management (RWM), Waste4Change menyediakan manajemen sampah untuk mengurangi jumlah timbulan sampah yang menumpuk di TPA.', 'waste-generation-is-inevitable-its-not-easy-to-r', 'service_about');
INSERT INTO `dictionary` VALUES (1003, 'en', 'Every day, Indonesians generates 175,000 tons of waste. This caused Jakarta and many areas in Indonesia to suffer from landfill emergencies. Even the Bantar Gebang landfill that holds the residual waste of Jakarta residents is predicted to be overcapacity in 2022.<br><br>Waste is everyone\'s responsibility, but several sectors such as the commercial, company, and business actors need to contribute and pay more attention to their waste management and product cycle to ensure the environmental sustainability of their business. Through the ZWTL service, Waste4Change ensures that all waste will be managed responsibly and no waste is  transported to the landfill.', 'every-day-indonesians-are-generating-175000-tons', 'service_about');
INSERT INTO `dictionary` VALUES (1004, 'id', 'Setiap harinya, masyarakat Indonesia menghasilkan 175,000 ton sampah. Hal ini yang menyebabkan banyak TPA di banyak tempat di Indonesia mengalami kondisi darurat. Bahkan Bantar Gerbang yang menampung sampah warga Jakarta diperkirakan akan menjadi kelebihan kapasitas di tahun 2022.<br><br>Sampah merupakan tanggung jawab semua orang, tapi beberapa sektor seperti komersial, perusahaan, dan pelaku bisnis perlu berkontribusi dan menaruh perhatian pada manajemen sampah dan siklus produk mereka untuk memastikan aspek keberlanjutan lingkungan dari bisnis mereka sendiri. Melalui layanan ZWTL, Waste4Change memastikan bahwa semua sampah akan dikelola secara bertanggung jawab dan tidak ada sampah yang dibuang ke TPA.', 'every-day-indonesians-are-generating-175000-tons', 'service_about');
INSERT INTO `dictionary` VALUES (1005, 'en', 'Waste is a relative term that can apply differently according to each person, especially inorganic waste. Once it is treated  the right way, inorganic waste can solve our problems on the scarcity of raw materials.\r\n<br><br>Through our Inorganic Waste Management (IWM), Waste4Change will ensure that your inorganic waste are recycled and included in the sustainable circular system.', 'waste-is-a-relative-term-that-can-be-applied-diffe', 'service_about');
INSERT INTO `dictionary` VALUES (1006, 'id', '\"Sampah merupakan istilah yang maknanya relatif dan tergantung pada setiap orang, terutama sampah anorganik. Ketika sampah tersebut dikelola secara tepat, sampah anorganik dapat menjadi solusi terhadap masalah kelangkaan bahan baku.<br><br>Melalui layanan kami yang dinamakan Inorganic Waste Management (IWM), Waste4Change akan memastikan bahwa sampah anorganik Anda akan didaur ulang dan menjadi bagian dari siklus yang berkelanjutan.\"', 'waste-is-a-relative-term-that-can-be-applied-diffe', 'service_about');
INSERT INTO `dictionary` VALUES (1007, 'en', 'Waste generation during an event is inevitable. In a place where participants are allowed to eat, drink, and take notes, especially if it&#39;s super crowded, it\'s not easy to make sure that everyone\'s doing their part to be responsible for their waste. \r\n<br><br>Through our service called Event Waste Management (EWM), we will provide your event with special trash bags designated to encourage people to segregate their waste. Waste4Change will also guarantee that your waste will be handled and processed responsibly to reduce the number of waste that ends up in the landfill.', 'waste-generation-during-an-event-is-inevitable-in', 'service_about');
INSERT INTO `dictionary` VALUES (1008, 'id', '\"Produksi sampah dalam suatu acara menjadi hal yang tidak bisa dihindari. Di tempat dimana peserta diperbolehkan untuk makan, minum, serta mencatat, terutama tempat yang sangat ramai, tidak mudah untuk memastikan bahwa setiap orang bertanggung jawab terhadap sampah mereka.<br><br>Dengan layanan kami yang dinamakan Event Waste Management (EWM), kami akan menyediakan acara Anda dengan kantong sampah khusus yang dibuat untuk mendorong orang-orang untuk memilah sampah mereka. Waste4Change juga akan menjamin bahwa sampah Anda akan ditangani dan dikelola secara bertanggung jawab untuk mengurangi jumlah timbulan sampah yang berakhir di TPA.\"', 'waste-generation-during-an-event-is-inevitable-in', 'service_about');
INSERT INTO `dictionary` VALUES (1009, 'en', 'Designed to increase the material processing of brand-labeled waste throughout your company&apos;s business line. What we define as brand-labeled waste might resulted from the following:<ul><li>Production process that resulted in product defect, reject, or residue from production process</li><li>Distribution process such as expired or defect products</li><li>Warehouse such as returns, second-hand, or broken</li><li>Consumer such as empty packaging or used products</li></ul>', 'designed-to-increase-the-material-processing-from-', 'service_about');
INSERT INTO `dictionary` VALUES (1010, 'id', 'Dirancang untuk meningkatkan daur ulang materi dari sampah berlabel merek dalam seluruh lini bisnis Anda. Yang kami maksud sebagai sampah berlabel merek dapat muncul sebagai hasil dari:<br><ul><li>Proses produksi yang menghasilkan produk gagal, cacat, atau sampah dari sisa proses produksi</li><li>Proses distribusi seperti produk yang cacat atau kadaluwarsa</li><li>Gudang, seperti barang retur,bekas, atau rusak</li><li>Konsumen, seperti kemasan kosong atau produk yang sudah selesai digunakan  </li></ul>', 'designed-to-increase-the-material-processing-from-', 'service_about');
INSERT INTO `dictionary` VALUES (1011, 'en', 'We provide a waste recycling system that is integrated with web and mobile applications to further increase the amount of waste labeled your brand that is recycled.\r\n<br><br>\r\nThe integration of technology in the waste recycling system not only supports responsible waste management for your brand-labeled waste but also opens opportunities for collaboration with many businesses and other recycling partners.\r\n<br><br>\r\nThe integrated waste recycling system also supports the education and campaign aspects of your brand program, so it is expected to be able to reach and meet the needs of your brand consumers in more locations in Indonesia.', 'we-provide-a-waste-recycling-system-that-is-integr', 'service_about');
INSERT INTO `dictionary` VALUES (1012, 'id', 'Kami menyediakan sistem daur ulang yang terintegrasi dengan website dan aplikasi handphone untuk semakin meningkatkan tingkat daur ulang dari sampah berlabel merek Anda. <br><br>Pengintegrasian teknologi dalam sistem daur ulang tidak hanya akan mendukung pengelolaan sampah yang bertanggung jawab untuk sampah berlabel merek Anda, tetapi juga membuka peluang untuk berkolaborasi dengan banyak pelaku bisnis dan mitra daur ulang yang lain.<br><br>Sistem daur ulang sampah yang terintegrasi juga mendukung program di bidang edukasi dan kampanye dari merek/perusahaan Anda, sehingga harapannya layanan ini akan mampu menjangkau dan memenuhi kebutuhan konsumen dari merek Anda di semakin banyak tempat di Indonesia.', 'we-provide-a-waste-recycling-system-that-is-integr', 'service_about');
INSERT INTO `dictionary` VALUES (1013, 'en', 'Waste4Change provides consultation through Solid Waste Management (SWM) Research that aims to improve solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs in cities, regions, building, or any other private/commercial institutions. <br> It also aims to harness the advantages borne out of implementing responsible waste management.', 'waste4change-provides-consultation-through-solid-w', 'service_about');
INSERT INTO `dictionary` VALUES (1014, 'id', 'Waste4Change menyediakan konsultasi melalui layanan Solid Waste Management (SWM) Research yang bertujuan meningkatkan pengelolaan sampah dengan melakukan analisis terperinci dan mengidentifikasi program dan sistem yang paling tepat, baik di kota, provinsi, bangunan, atau institusi publik dan komersial lainnya.<br><br>Layanan ini juga bertujuan untuk memaksimalkan keuntungan yang didapat dari menerapkan pengelolaan sampah yang bertanggung jawab.', 'waste4change-provides-consultation-through-solid-w', 'service_about');
INSERT INTO `dictionary` VALUES (1015, 'en', 'According to recent BPS statistics, waste management ranks the lowest when compared to other environmental issues (energy, air pollution, transportation).<br>At Waste4Change, we see this as a challenge to implement programs that encourages the community to act and give real contributions to the ongoing waste crisis in Indonesia through Community-based Implementation.', 'according-to-recent-bps-statistics-waste-manageme', 'service_about');
INSERT INTO `dictionary` VALUES (1016, 'id', 'Berdasarkan statistik dari BPS 2018, pengelolaan sampah menempati perhatian paling akhir dalam ketidakpedulian masyarakat Indonesia dibandingkan dengan isu lingkungan yang lain (energi, polusi udara, transportasi).<br><br>Kami di Waste4Change melihat hal ini sebagai sebuah tantangan untuk menerapkan program-program yang mendorong komunitas lokal untuk bertindak dan memberikan kontribusi nyata terhadap permasalahan sampah di Indonesia yang tengah berlangsung melalui layanan Community-based Implementation', 'according-to-recent-bps-statistics-waste-manageme', 'service_about');
INSERT INTO `dictionary` VALUES (1017, 'en', '3R School Program is a program designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management system in schools. The aims of this program is to assist schools. Waste4Change acts as a facilitator in assisting beneficiaries to achieve the objectives of the program.', '3r-school-program-is-a-program-designed-to-encoura', 'service_about');
INSERT INTO `dictionary` VALUES (1018, 'id', '3R School Program adalah program yang dirancang untuk mendorong peningkatan kesadaran warga sekolah untuk menerapkan prinsip 3R (Reduce, Reuse, Recycle) demi terwujudnya sistem pengelolaan sampah yang bertanggung jawab di sekolah-sekolah. Waste4Change berperan sebagai fasilitator dalam mendampingi penerima manfaat mencapai tujuan program yang telah ditetapkan.', '3r-school-program-is-a-program-designed-to-encoura', 'service_about');
INSERT INTO `dictionary` VALUES (1019, 'en', 'Akademi Bijak Sampah (AKABIS) is an education model created by Waste4Change to raise awareness on the importance of protecting the environment, especially in responsible waste management.', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'service_about');
INSERT INTO `dictionary` VALUES (1020, 'id', 'Akademi Bijak Sampah (AKABIS) adalah sebuah model edukasi yang dibuat oleh Waste4Change untuk meningkatkan kesadaran mengenai pentingnya menjaga lingkungan, terutama mengenai pengelolaan sampah yang bertanggung jawab.', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'service_about');
INSERT INTO `dictionary` VALUES (1021, 'en', 'Through BSF Learning Center, you will receive in-depth information regarding organic waste processing using Black Soldier Flies (BSF), as well as the cultivation and breeding methods of BSF.', 'through-bsf-learning-center-you-will-receive-in-d', 'service_about');
INSERT INTO `dictionary` VALUES (1022, 'id', 'Melalui program BSF Learning Center, Anda akan mendapatkan informasi yang mendalam mengenai pengolahan sampah organik dengan menggunakan Black Soldier Fly (BSF), sekaligus mengenai metode pembudidayaan dan pengembangbiakan BSF.', 'through-bsf-learning-center-you-will-receive-in-d', 'service_about');
INSERT INTO `dictionary` VALUES (1023, 'en', 'Based on the Regulation of Ministry of Transportation No 51 year 2015 about Sea Ports, Sea Ports Unit Organizations have to provide pollution prevention facilities and ensure the implementation of greenport.<br>Therefore, the study in PT Pelabuhan Indonesia II (Persero) head office building aims to identify and provide recommendations related to the steps in implementing 3R-based waste management system. This study was conducted by performing waste audits, survey to employees, and in-depth interview to the related stakeholders.', 'based-on-the-regulation-of-ministry-of-transportat', 'service_about');
INSERT INTO `dictionary` VALUES (1024, 'id', 'Berdasarkan Peraturan Menteri Perhubungan No. 51 Tahun 2015 mengenai Pelabuhan, organisasi unit pelabuhan harus menyediakan fasilitas pencegahan polusi dan memastikan penerapan konsep pelabuhan hijau. <br>Maka dari itu, studi yang dilakukan di kantor utama PT Pelabuhan Indonesia II (Persero) bertujuan untuk mengidentifikasi dan memberikan rekomendasi yang berkaitan dengan langkah-langkah penerapan sistem pengelolaan sampah berbasis 3R. Studi ini dilakukan dengan melaksanakan audit sampah, survei ke pegawai, dan wawancara mendalam dengan pemangku kepentingan terkait.', 'based-on-the-regulation-of-ministry-of-transportat', 'service_about');
INSERT INTO `dictionary` VALUES (1025, 'en', 'Beting village and Jami\' Mosque area are located at the intersection of Kapuas River and Landak River. People in Beting village area tend to dispose their waste into the river due to the minimum facilities, limited access to landfill, and unavailability of waste management system.<br><br>The increasing piles of waste in this area was also worsened by the volume of waste coming from the upstream. In order to solve the waste problem in that area, an integrated waste management system needs to be implemented.', 'beting-village-and-jami-mosque-area-are-located-a', 'service_about');
INSERT INTO `dictionary` VALUES (1026, 'id', 'Desa Beting dan Masjid Jami\' terletak di persimpangan sungai Kapuas dan sungai Landak. Masyarakat desa Beting cenderung membuang sampah mereka ke sungai karena minimnya fasilitas, akses ke TPA/TPS yang terbatas, serta tidak adanya sistem manajemen sampah.<br><br>Jumlah sampah yang kian meningkat di area ini juga diperparah oleh adanya kiriman sampah dari daerah hulu. Guna memecahkan masalah sampah di area tersebut, sebuah sistem manajemen sampah yang terintegrasi perlu diterapkan. \r\n', 'beting-village-and-jami-mosque-area-are-located-a', 'service_about');
INSERT INTO `dictionary` VALUES (1027, 'en', 'Indonesia is the 2nd biggest contributor of plastic waste into the oceans, primarily through the mismanagement of land-based waste. In 2010, it was estimated that 3.2 million Mt/year of plastic waste were mismanaged, and that the volume would more than doubled by 2025 if no significant changes were to take place. <br>The study aimed to better understand waste management in Indonesia, map the flow of packaging waste, and identify potential key  stakeholders to collaborate with in order to prevent packaging waste from ending up in the ocean.', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'service_about');
INSERT INTO `dictionary` VALUES (1028, 'id', 'Indonesia merupakan penyumbang sampah laut terbesar kedua di dunia, penyebab utamanya adalah karena kurang optimalnya penanganan sampah di darat. Di tahun 2010, diperkirakan ada sebanyak 3,2 juta ton sampah plastik per tahun yang tidak dikelola dengan baik. Jumlah tersebut diperkirakan akan berlipat ganda di tahun 2025 jika tidak terjadi perubahan yang signifikan. <br>Studi ini bertujuan untuk lebih memahami pengelolaan sampah di Indonesia, memetakan alur sampah kemasan, dan mengidentifikasi pemangku kepentingan yang potensial di tingkat lokal untuk berkolaborasi demi mencegah sampah kemasan agar tidak berakhir di laut.', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'service_about');
INSERT INTO `dictionary` VALUES (1029, 'en', 'The Ocean Cleanup is a Dutch-based non-profit organization who develops advanced technologies to rid the world\'s oceans of plastics. By deploying their fleet of systems, they aim to remove 50% of the Great Pacific Garbage Patch in just five years\' time. By having the same mission on tackling waste problems, The Ocean Cleanup cooperates with Waste4Change as their local partner in Indonesia and conducted a riverine plastic emission study in Jakarta\'s rivers in April 2018. <br>During a 10-day fieldwork supported by DKI Jakarta Orange Troops, plastics were monitored at 7 river points throughout Jakarta, which includes Ciliwung and Pesanggrahan River. Plastic samples were trawled and analyzed by dividing them into different types. By having these data, hopefully appropriate measures can be done to tackle marine debris starting from the rivers, not only in Jakarta, but  throughout Indonesia and in neighboring countries.', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'service_about');
INSERT INTO `dictionary` VALUES (1030, 'id', 'The Ocean Cleanup merupakan organisasi non-profit asal Belanda yang mengembangkan teknologi mutakhir untuk membersihkan lautan dari sampah plastik. Dengan meluncurkan armada mereka, The Ocean Cleanup berambisi untuk menyingkirkan 50% sampah di the Great Pacific Garbage Patch hanya dalam waktu lima tahun. Dengan berbagi misi yang sama untuk mengatasi permasalahan sampah, The Ocean Cleanup bekerja sama dengan Waste4Change sebagai partner lokal mereka di Indonesia dan melakukan studi polusi plastik di sungai-sungai di Jakarta pada bulan April tahun 2018. <br>Melalui kerja lapangan yang dilaksanakan selama 10 hari dengan dibantu oleh Pasukan Oranye Jakarta, sampah plastik di monitor di 7 titik sungai di Jakarta, termasuk di dalamnya sungai Ciliwung dan sungai Pesanggrahan. Sampel plastik dijaring dan dianalisis dengan cara membaginya ke beberapa tipe. Dengan data ini, diharapkan dapat diambil langkah yang tepat untuk mengatasi masalah sampah di laut, dimulai dari menangani sampah yang berada di sungai, dan tidak hanya sungai di Jakarta, tapi juga di seluruh Indonesia dan bahkan di negara-negara tetangga. ', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'service_about');
INSERT INTO `dictionary` VALUES (1031, 'en', 'Ramboll Danmark A/S as the main consultant was working together with Waste4Change as local consultant to conduct technical due diligence for 2,200 tpd and 35 MW Waste to Energy Plant that will be built in Sunter, North Jakarta.<br>This due diligence is done for lenders appraisal and to make sure that the Waste to Energy plant will be operating sustainably in terms of technicalities', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'service_about');
INSERT INTO `dictionary` VALUES (1032, 'id', 'Ramboll Danmark A/S sebagai konsultan utama bekerja sama dengan Waste4Change sebagai konsultan lokal untuk melakukan uji kelayakan terhadap fasilitas Waste-to-Energy dengan kapasitas 2.200 ton/hari dan menghasilkan listrik sebesar 35 MW. \r\n\r\nUji kelayakan ini dilakukan untuk penilaian pemberi pinjaman serta untuk memastikan bahwa fasilitas the Waste to Energy akan beroperasi secara berkelanjutan dari segi teknis.', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'service_about');
INSERT INTO `dictionary` VALUES (1033, 'en', 'Waste4Change assisted PT Indonesia Power UP Suralaya in implementing responsible waste management in both the existing office and  the new buildings (Unit 5-7 and Coal Building), as well as Suralaya village itself.  <br>The purpose of this assistance was to increase awareness and action on the importance of sorting out waste, and to subsequently reuse waste that is disaggregated and has value and  eventually to reduce the waste disposed to Cinapol landfill.', 'waste4change-assisted-pt-indonesia-power-up-surala', 'service_about');
INSERT INTO `dictionary` VALUES (1034, 'id', 'Waste4Change membantu PT Indonesia Power UP Suralaya dalam menerapkan pengelolaan sampah yang bertanggung jawab di kantor lama sekaligus di gedung barunya (Unit 5-7 dan Coal Building), dan di desa Suralaya sendiri.  <br>Tujuan dari pendampingan ini adalah untuk meningkatkan kesadaran dan perilaku masyarakat mengenai pentingnya memilah sampah, untuk menggunakan kembali sampah yang telah dipisahkan sesuai bahannya dan masih memiliki nilai, serta mengurangi jumlah timbulan sampah yang dibuang di TPA Cinapol. ', 'waste4change-assisted-pt-indonesia-power-up-surala', 'service_about');
INSERT INTO `dictionary` VALUES (1035, 'en', 'In order to achieve the national target of 30% waste reduction by 2030 that the government had set, TPS 3R program can serve as one of the solutions. Waste4Change as one of the TPS 3R Advisory consultants plays a pivotal role in assisting, supervising, monitoring and evaluating the implementation of this community-based program.<br>The scope of work includes optimization of previously constructed TPS 3R to improve both the management and business development as well as supervision on the establishment of new TPS 3Rs. Waste4Change monitored and evaluated TPS 3R throughout Kalimantan and Java (in 2017) and Kalimantan, Java, Sulawesi, Nusa Tenggara, Maluku, and Papua (in 2018).', 'in-order-to-achieve-the-national-target-of-30-was', 'service_about');
INSERT INTO `dictionary` VALUES (1036, 'id', 'Dalam rangka mencapai target nasional pengurangan sampah sebesar 30% di tahun 2030 yang telah ditetapkan pemerintah, program TPS 3R dapat menjadi salah satu solusinya. Waste4Change sebagai salah satu konsultan TPS 3R Advisory berperan dalam mendampingi, mengawasi, memonitor, serta mengevaluasi penerapan program berbasis komunitas ini.<br>Cakupan kerjanya meliputi pengoptimalisasian TPS 3R yang kemarin sudah dibangun untuk meningkatkan manajemen dan pengembangan bisnisnya, serta pengawasan TPS 3R yang baru dibangun. Waste4Change memonitor dan mengevaluasi TPS 3R yang ada di Kalimantan dan Jawa (di tahun 2017) dan di Kalimantan, Jawa, Sulawesi, Nusa Tenggara, Maluku, dan Papua (di tahun 2018).', 'in-order-to-achieve-the-national-target-of-30-was', 'service_about');
INSERT INTO `dictionary` VALUES (1037, 'en', 'Tourism in Indonesia is currently growing exponentially. This condition, if not properly planned, will have negative implications for the environment such as increased waste amount that will lead to health issues, environmental problems, and eventually the reluctance of tourists to visit certain destinations that are mismanaged.<br>Pulau Merah, with its astonishing sunset view and nice waves for surfing, is one of the emerging tourist destinations in Banyuwangi. It will almost likely  face the said problems if there is no concrete actions to encourage a good waste management system and campaign.', 'tourism-in-indonesia-is-currently-growing-exponent', 'service_about');
INSERT INTO `dictionary` VALUES (1038, 'id', 'Sektor pariwisata di Indonesia sedang berkembang pesat. Kondisi ini, jika tidak ditangani dengan tepat, akan menyebabkan dampak negatif terhadap lingkungan, misalnya peningkatan jumlah sampah yang akan menyebabkan masalah kesehatan, lingkungan, dan pada akhirnya membuat wisatawan segan untuk kembali ke destinasi wisata yang tidak dikelola dengan baik tersebut.<br>Pulau Merah, dengan pemandangan matahari terbenam yang cantik dan ombak yang cocok untuk berselancar, merupakan salah satu destinasi wisata yang tengah naik daun di Banyuwangi. Tempat tersebut berpotensi untuk mengalami masalah serupa apabila tidak ada aksi konkret untuk mendorong kampanye dan sistem manajemen sampah yang baik.', 'tourism-in-indonesia-is-currently-growing-exponent', 'service_about');
INSERT INTO `dictionary` VALUES (1039, 'en', 'Indonesia\'s frontline areas reflect the life of the country, including its waste management. Therefore, a responsible waste management in the frontline areas is a necessity to develop a sustainable frontline. This program aims to implement responsible waste management system in 7 Indonesian borderline areas. This program focuses on community capacity building so that waste burning and the behavior of unethical waste dumping can be reduced.<br><br>This capacity building program is expected to nurture an understanding  in the local community about the importance of their involvement in a waste management system, the benefits of responsible waste management implementation and the direct impact of not implementing a proper waste management.\r\n', 'indonesias-frontline-areas-reflect-the-life-of-th', 'service_about');
INSERT INTO `dictionary` VALUES (1040, 'id', 'Wilayah-wilayah terdepan Indonesia merefleksikan kehidupan negara tersebut, termasuk tentang sistem pengelolaan sampahnya. Karena itulah, pengelolaan sampah yang bertanggung jawab di wilayah-wilayah terdepan Indonesia diperlukan demi keberlanjutannya. Program ini bertujuan untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab di 7 area perbatasan Indonesia dengan negara lain. Program ini berfokus pada peningkatan kapasitas untuk mengurangi kegiatan membakar sampah atau perilaku membuang sampah sembarangan.<br><br>Program peningkatan kapasitas ini diharapkan mampu menanamkan pemahaman masyarakat lokal mengenai pentingnya partisipasi mereka dalam pengelolaan sampah yang bertanggung jawab, keuntungan dari penerapan sistem pengelolaan sampah yang bertanggung jawab, serta dampak langsung dari tidak adanya sistem pengelolaan sampah yang layak.\r\n', 'indonesias-frontline-areas-reflect-the-life-of-th', 'service_about');
INSERT INTO `dictionary` VALUES (1041, 'en', 'The Unilever Foundation along with Waste4Change organized a 3R Green School program that aimed to educate students in nine schools in Tangerang about responsible waste management through 3R principles, as well as to encourage them about environmental awareness.<br>In this program, students are informed to understand the problem of waste, and the methods of sorting waste and processing waste by applying 3R principles in order to reduce the waste disposal to landfill in South Tangerang.<br>At the end of the program, students from each of the selected school  have a better understanding on the importance of  environmental awareness and are expected to consistently commit in handling their waste responsibly.', 'the-unilever-foundation-along-with-waste4change-or', 'service_about');
INSERT INTO `dictionary` VALUES (1042, 'id', 'Wilayah-wilayah terdepan Indonesia merefleksikan kehidupan negara tersebut, termasuk tentang sistem pengelolaan sampahnya. Karena itulah, pengelolaan sampah yang bertanggung jawab di wilayah-wilayah terdepan Indonesia diperlukan demi keberlanjutannya. Program ini bertujuan untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab di 7 area perbatasan Indonesia dengan negara lain. Program ini berfokus pada peningkatan kapasitas untuk mengurangi kegiatan membakar sampah atau perilaku membuang sampah sembarangan.<br>Program peningkatan kapasitas ini diharapkan mampu menanamkan pemahaman masyarakat lokal mengenai pentingnya partisipasi mereka dalam pengelolaan sampah yang bertanggung jawab, keuntungan dari penerapan sistem pengelolaan sampah yang bertanggung jawab, serta dampak langsung dari tidak adanya sistem pengelolaan sampah yang layak.', 'the-unilever-foundation-along-with-waste4change-or', 'service_about');
INSERT INTO `dictionary` VALUES (1043, 'en', 'Knowledge about responsible solid waste management and the 3R (Reduce- Reuse, Recycle) Concept is very important, especially for institutions. Waste4Change facilitates institutions to be agents of change so they can encourage responsible solid waste management in their environments.<br>As a country with a strong foundation in sustainability, the Embassy of Finland wants to play its role in waste management in Indonesia through green office practices. They were keen to implement solid waste management in their office in order to reduce waste transported to TPST Bantar Gebang.<br>Akabis Class in the Embassy of Finland was held in 2018 and around 20 employees from different sectors joined the training session.', 'knowledge-about-responsible-solid-waste-management', 'service_about');
INSERT INTO `dictionary` VALUES (1044, 'id', 'Pengetahuan mengenai pengelolaan sampah yang bertanggung jawab dan konsep 3R (Reduce- Reuse, Recycle) sangatlah penting, terutama bagi institusi. Waste4Change memfasilitasi institusi untuk menjadi agen perubahan agar mereka bisa mendorong terciptanya sistem pengelolaan sampah	 yang bertanggung jawab d kantor mereka sendiri. <br>Sebagai negara yang memiliki landasan kuat dalam aspek berkelanjutan, Kedutaan Finlandia ingin menjalankan perannya dalam pengelolaan sampah di Indonesia melalui praktik kantor hijau. Mereka bersemangat untuk menerapkan pengelolaan sampah di kantor mereka demi mengurangi jumlah timbulan sampah yang berakhir di TPST Bantar Gebang. <br>AKABIS-Class di Kedutaan Finlandia dilaksanakan di tahun 2018 dan sekitar 20 pegawai dari berbagai sektor mengikuti sesi edukasi tersebut.', 'knowledge-about-responsible-solid-waste-management', 'service_about');
INSERT INTO `dictionary` VALUES (1045, 'en', 'The ancient method of making paper is not only recognized as a way of reading history, but also as a way to understand the philosophy of letters, eastern culture, and the sustainability of culture and the environment.<br>The Museum of Modern and Contemporary Art in Nusantara (also known as Museum MACAN) invited Waste4Change to enlighten the ways on handling solid waste sustainably especially on paper waste to the audience of enthusiasts on sustainability in their museum.', 'the-ancient-method-of-making-paper-is-not-only-rec', 'service_about');
INSERT INTO `dictionary` VALUES (1046, 'id', 'Metode kuno untuk membuat kertas tidak hanya dikenal sebagai cara untuk memahami sejarah, tetapi juga sebagai cara untuk memahami filosofi dibalik aksara, budaya Timur, serta keberlanjutan budaya dan lingkungan. <br>Museum of Modern and Contemporary Art in Nusantara (MACAN) mengundang Waste4Change untuk memberi pencerahan mengenai cara-cara menangani sampah, terutama sampah kertas, kepada para pengunjung museum yang antusias terhadap topik keberlanjutan atau sustainability', 'the-ancient-method-of-making-paper-is-not-only-rec', 'service_about');
INSERT INTO `dictionary` VALUES (1047, 'en', 'PT Bank DBS Indonesia is one of Waste4Change\'s clients that implements ZWTL (Zero Waste To Landfill) concept in its office\'s waste management system. To increase the performance of ZWTL program at the PT Bank DBS Indonesia office, all of the PT Bank DBS Indonesia employees were required to enroll in the Akabis Xperience program held by Waste4Change.<br>Through AKABIS Xperience activities, PT Bank DBS Indonesia employees were expected to understand more about responsible waste management concept.', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'service_about');
INSERT INTO `dictionary` VALUES (1048, 'id', 'PT BANK DBS Indonesia merupakan salah satu klien Waste4Change yang menggunakan layanan ZWTL (Zero Waste To Landfill). Salah satu syarat agar program ZWTL bisa diterapkan di kantor PT BANK DBS Indonesia yaitu dengan melaksanakan AKABIS-Xperience untuk semua pegawai PT BANK DBS Indonesia.<br><br>Melalui kegiatan-kegiatan di AKABIS Xperience, pegawai PT BANK DBS Indonesia bisa meningkatkan kepedulian dan pemahaman mereka mengenai sistem pengelolaan sampah yang bertanggung jawab.', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'service_about');
INSERT INTO `dictionary` VALUES (1049, 'en', 'Waste4Change became one of the facilitators for YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition 2018. The event is implemented by Divers Clean Action and hosted by the US Embassy.<br><br>Through Akabis Xperience, Waste4Change delivered hands-on experiences and ensured the continuing effort of supporting behavioral change regarding waste management. <br><br>61 young leaders from 11 Southeast Asia countries were given a brief presentation about the current waste management condition by Waste4Change representatives, followed by a visit to Waste4Change\'s Material Recovery Facility (MRF), Waste4Change\'s Composting Area, and the infamous Bantar Gebang landfill – located not far from Waste4Change\'s head office. <br><br>Upon visiting Waste4Change\'s MRF, the YSEALI\'s young participants were encouraged to express their curiosities. Moreover, they were also given a close-up introduction about Waste4Change\'s Black Soldier Flies (BSF) nurseries and how Black Soldier Flies holds a big part in the organic waste composting process.', 'waste4change-became-one-of-the-facilitators-for-ys', 'service_about');
INSERT INTO `dictionary` VALUES (1050, 'id', 'Waste4Change menjadi salah satu fasilitator untuk YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition Workshop yang diselenggarakan oleh Divers Clean Action dan dihost oleh Kedutaan Amerika Serikat. <br>Melalui program AKABIS-Xperience, Waste4Change ingin memberikan pengalaman langsung dan memastikan adanya perubahan perilaku yang berkelanjutan dalam usaha pengelolaan sampah yang lebih baik.<br>61 pemimpin muda dari 11 negara Asia Tenggara diberikan presentasi singkat oleh perwakilan Waste4change mengenai kondisi pengelolaan sampah yang ada di Indonesia, dilanjutkan oleh kunjungan ke Rumah Pemulihan Material (RPM) dan Rumah Kompos Waste4Change, dan sekaligus ke TPST Bantar Gebang yang berlokasi tidak jauh dari kantor Waste4Change.', 'waste4change-became-one-of-the-facilitators-for-ys', 'service_about');
INSERT INTO `dictionary` VALUES (1051, 'en', 'Analysis and recommendations to implement a responsible 3R-based waste management system using the approach of 5 aspects', 'analysis-and-recommendations-to-implement-a-respon', 'service_achievement');
INSERT INTO `dictionary` VALUES (1052, 'id', 'Analisis dan rekomendasi untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab dan berbasis 3R dengan menggunakan 5 Aspek Persampahan', 'analysis-and-recommendations-to-implement-a-respon', 'service_achievement');
INSERT INTO `dictionary` VALUES (1053, 'en', 'Identification of waste management method that is potential to be developed', 'identification-of-waste-management-method-that-is-', 'service_achievement');
INSERT INTO `dictionary` VALUES (1054, 'id', 'Identifikasi metode pengelolaan sampah yang memiliki potensi untuk dikembangkan', 'identification-of-waste-management-method-that-is-', 'service_achievement');
INSERT INTO `dictionary` VALUES (1055, 'en', 'Written report and presentation of 3R-based waste management', 'written-report-and-presentation-of-3r-based-waste-', 'service_achievement');
INSERT INTO `dictionary` VALUES (1056, 'id', 'Laporan tertulis beserta presentasi mengenai pengelolaan sampah berbasis 3R', 'written-report-and-presentation-of-3r-based-waste-', 'service_achievement');
INSERT INTO `dictionary` VALUES (1057, 'en', 'Data collection activities were done through interview, field observation, questionnaire distribution and waste sampling in favor of analyzing the major problems that occurred in Beting Village and Jami\' Mosque area', 'data-collection-activities-were-done-through-inter', 'service_achievement');
INSERT INTO `dictionary` VALUES (1058, 'id', 'Aktivitas pengumpulan data dilakukan dengan cara wawancara, observasi lapangan, pendistribusian kuesioner, serta pengambilan sampel sampah dalam rangka menganalisis masalah utama yang terjadi di Desa Beting dan area masjid Jami\'', 'data-collection-activities-were-done-through-inter', 'service_achievement');
INSERT INTO `dictionary` VALUES (1059, 'en', 'Analyzed the current management system by identifying the existing law, Institution, Operational Techniques, Community Participation and Finance aspects respectively', 'analyzed-the-current-management-system-by-identify', 'service_achievement');
INSERT INTO `dictionary` VALUES (1060, 'id', 'Menganalisis sistem manajemen sampah yang ada dengan mengidentifikasi peraturan yang ada, institusi, teknis operasional, partisipasi masyarakat, serta aspek finansialnya secara berurutan', 'analyzed-the-current-management-system-by-identify', 'service_achievement');
INSERT INTO `dictionary` VALUES (1061, 'en', 'Key players and stakeholders mapping', 'key-players-and-stakeholders-mapping', 'service_achievement');
INSERT INTO `dictionary` VALUES (1062, 'id', 'Pemetaan aktor yang krusial dan pemangku kepentingan', 'key-players-and-stakeholders-mapping', 'service_achievement');
INSERT INTO `dictionary` VALUES (1063, 'en', 'Comprehensive waste flow analysis of Jakarta and Surabaya City', 'comprehensive-waste-flow-analysis-of-jakarta-and-s', 'service_achievement');
INSERT INTO `dictionary` VALUES (1064, 'id', 'Analisis alur sampah yang komprehensi di kota Jakarta Surabaya', 'comprehensive-waste-flow-analysis-of-jakarta-and-s', 'service_achievement');
INSERT INTO `dictionary` VALUES (1065, 'en', 'Identification of recycling rate in Jakarta and Surabaya', 'identification-of-recycling-rate-in-jakarta-and-su', 'service_achievement');
INSERT INTO `dictionary` VALUES (1066, 'id', 'Identifikasi tingkat daur ulang sampah di Jakarta dan Surabaya', 'identification-of-recycling-rate-in-jakarta-and-su', 'service_achievement');
INSERT INTO `dictionary` VALUES (1067, 'en', 'Solid Waste Management SWOT analysis of Jakarta and Surabaya City', 'solid-waste-management-swot-analysis-of-jakarta-an', 'service_achievement');
INSERT INTO `dictionary` VALUES (1068, 'id', 'Analisis SWOT Pengelolaan Sampah di Jakarta dan Surabaya', 'solid-waste-management-swot-analysis-of-jakarta-an', 'service_achievement');
INSERT INTO `dictionary` VALUES (1069, 'en', 'Retrieved better understanding on the total amount and characteristics of plastics that lies in Jakarta\'s rivers, which has become a problem in the past years, as well as analyzed the best way to tackle these issues', 'retrieved-better-understanding-on-the-total-amount', 'service_achievement');
INSERT INTO `dictionary` VALUES (1070, 'id', 'Memperoleh pemahaman yang lebih baik mengenai jumlah dan karakteristik plastik yang berada di sungai-sungai di Jakarta, yang memang sudah menjadi masalah selama beberapa tahun belakangan, sekaligus menganalisis cara yang paling tepat untuk mengatasi masalah tersebut', 'retrieved-better-understanding-on-the-total-amount', 'service_achievement');
INSERT INTO `dictionary` VALUES (1071, 'en', 'Published paper regarding the project can be found in the following link', 'published-paper-regarding-the-project-can-be-found', 'service_achievement');
INSERT INTO `dictionary` VALUES (1072, 'id', 'Makalah ilmiah mengenai proyek ini bisa dibaca di <a href=\"https://theoceancleanup.com/scientific-publications/riverine-plastic-emission-from-jakarta-into-the-ocean/\">link ini</a>.', 'published-paper-regarding-the-project-can-be-found', 'service_achievement');
INSERT INTO `dictionary` VALUES (1073, 'en', 'Solid Waste Characteristics and solid-waste existing system review', 'solid-waste-characteristics-and-solid-waste-existi', 'service_achievement');
INSERT INTO `dictionary` VALUES (1074, 'id', 'Ulasan mengenai karakteristik sampah serta sistem pengelolaan sampah yang sudah ada', 'solid-waste-characteristics-and-solid-waste-existi', 'service_achievement');
INSERT INTO `dictionary` VALUES (1075, 'en', 'Solid waste supply plan review and its possible disruptions', 'solid-waste-supply-plan-review-and-its-possible-di', 'service_achievement');
INSERT INTO `dictionary` VALUES (1076, 'id', 'Ulasan rencana pasokan sampah dan kemungkinan interupsi yang terjadi', 'solid-waste-supply-plan-review-and-its-possible-di', 'service_achievement');
INSERT INTO `dictionary` VALUES (1077, 'en', 'Suitability study of the current site for Waste-to-Energy facility', 'suitability-study-of-the-current-site-for-waste-to', 'service_achievement');
INSERT INTO `dictionary` VALUES (1078, 'id', 'Studi kecocokan untuk area yang akan menjadi tempat dibangunnya fasilitas Waste-to-Energy', 'suitability-study-of-the-current-site-for-waste-to', 'service_achievement');
INSERT INTO `dictionary` VALUES (1079, 'en', 'Increased awareness and action of employees towards responsible waste management', 'increased-awareness-and-action-of-employees-toward', 'service_achievement');
INSERT INTO `dictionary` VALUES (1080, 'id', 'Peningkatan kesadaran dan perilaku para pegawai terhadap konsep pengelolaan sampah yang bertanggung jawab', 'increased-awareness-and-action-of-employees-toward', 'service_achievement');
INSERT INTO `dictionary` VALUES (1081, 'en', 'Increased segregation rate', 'increased-segregation-rate', 'service_achievement');
INSERT INTO `dictionary` VALUES (1082, 'id', 'Bertambahnya tingkat daur ulang sampah', 'increased-segregation-rate', 'service_achievement');
INSERT INTO `dictionary` VALUES (1083, 'en', 'Decreased residual waste generation', 'decreased-residual-waste-generation', 'service_achievement');
INSERT INTO `dictionary` VALUES (1084, 'id', 'Berkurangnya produksi sampah residu', 'decreased-residual-waste-generation', 'service_achievement');
INSERT INTO `dictionary` VALUES (1085, 'en', 'Increased economic incentives from composting', 'increased-economic-incentives-from-composting', 'service_achievement');
INSERT INTO `dictionary` VALUES (1086, 'id', 'Penambahan insentif ekonomi dari hasil mengkompos', 'increased-economic-incentives-from-composting', 'service_achievement');
INSERT INTO `dictionary` VALUES (1087, 'en', 'Reports containing progress activities, lessons learnt and best practices of TPS3R', 'reports-containing-progress-activities-lessons-le', 'service_achievement');
INSERT INTO `dictionary` VALUES (1088, 'id', 'Laporan yang mencakup perkembangan, pelajaran yang didapat, serta contoh praktik terbaik dari TPS3R', 'reports-containing-progress-activities-lessons-le', 'service_achievement');
INSERT INTO `dictionary` VALUES (1089, 'en', 'Proceedings of Workshop/ Consignment Proceedings', 'proceedings-of-workshop-consignment-proceedings', 'service_achievement');
INSERT INTO `dictionary` VALUES (1090, 'id', 'Catatan Workshop/ Catatan Konsinyasi', 'proceedings-of-workshop-consignment-proceedings', 'service_achievement');
INSERT INTO `dictionary` VALUES (1091, 'en', 'Video and audio visual documentation of Monitoring and Evaluation activities', 'video-and-audio-visual-documentation-of-monitoring', 'service_achievement');
INSERT INTO `dictionary` VALUES (1092, 'id', 'Video dan dokumentasi audio visual dari aktivitas Monitoring dan Evaluasi', 'video-and-audio-visual-documentation-of-monitoring', 'service_achievement');
INSERT INTO `dictionary` VALUES (1093, 'en', 'The formation of Eco Ranger: a group of local people that operates waste management systems and also educates tourists and locals about environmental issues.The Eco Ranger is formed to support the cleanliness and sustainability of their home-environment as one of the famous tourist destinations in Indonesia', 'the-formation-of-eco-ranger:-a-group-of-local-peop', 'service_achievement');
INSERT INTO `dictionary` VALUES (1094, 'id', 'Pembentukan Eco Ranger, sekelompok orang dari masyarakat lokal yang mengoperasikan sistem pengelolaan sampah, mengedukasi wisatawan dan orang lokal mengenai isu lingkungan, dan memastikan bahwa rumah mereka yang menjadi destinasi wisata tetap bersih dan indah untuk dinikmati oleh generasi-generasi berikutnya', 'the-formation-of-eco-ranger:-a-group-of-local-peop', 'service_achievement');
INSERT INTO `dictionary` VALUES (1095, 'en', 'Technical assistance, capacity building, connecting partners and funding sources, assistance in making Standard Operating Procedure, and continuous monitoring and evaluation for 3 years', 'technical-assistance-capacity-building-connectin', 'service_achievement');
INSERT INTO `dictionary` VALUES (1096, 'id', 'Bantuan teknis, peningkatan kapasitas, menghubungkan partner dan sumber pendanaan, pendampingan dalam merancang SOP, dan pemantauan serta evaluasi yang dilakukan terus menerus selama 3 tahun lamanya', 'technical-assistance-capacity-building-connectin', 'service_achievement');
INSERT INTO `dictionary` VALUES (1097, 'en', 'Waste Management Education to local communities and stakeholders', 'waste-management-education-to-local-communities-an', 'service_achievement');
INSERT INTO `dictionary` VALUES (1098, 'id', 'Edukasi manajemen sampah terhadap masyarakat lokal dan para pemangku kepentingan', 'waste-management-education-to-local-communities-an', 'service_achievement');
INSERT INTO `dictionary` VALUES (1099, 'en', 'Technical guideline of organic and inorganic waste handling', 'technical-guideline-of-organic-and-inorganic-waste', 'service_achievement');
INSERT INTO `dictionary` VALUES (1100, 'id', 'Panduan teknis mengenai penanganan sampah organik dan anorganik', 'technical-guideline-of-organic-and-inorganic-waste', 'service_achievement');
INSERT INTO `dictionary` VALUES (1101, 'en', 'Formation of organization and follow-up work plan', 'formation-of-organization-and-follow-up-work-plan', 'service_achievement');
INSERT INTO `dictionary` VALUES (1102, 'id', 'Pembentukan organisasi dan tindak lanjut rencana kerja', 'formation-of-organization-and-follow-up-work-plan', 'service_achievement');
INSERT INTO `dictionary` VALUES (1103, 'en', 'Forming the Task Force which in charge of increasing the environmental awareness and 3R principle application amongst other school residents. The Task Force members are consist of selected teachers and students from each school', 'forming-the-task-force-which-in-charge-of-increasi', 'service_achievement');
INSERT INTO `dictionary` VALUES (1104, 'id', 'Pembentukan Satuan Tugas. Melalui program ini, para anggota Satuan Tugas bertanggung jawab untuk mendorong timbulnya kesadaran lingkungan di kalangan warga sekolah dan menerapkan prinsip 3R di kehidupan sehari-hari. Anggota Satuan Tugas terdiri dari murid dan guru yang sudah dipilih dari setiap sekolah', 'forming-the-task-force-which-in-charge-of-increasi', 'service_achievement');
INSERT INTO `dictionary` VALUES (1105, 'en', 'Organizing education events, which are AKABIS Class and AKABIS Xperience, to increase awareness and introduce several solutions to overcome the waste problem', 'organizing-education-events-which-are-akabis-clas', 'service_achievement');
INSERT INTO `dictionary` VALUES (1106, 'id', 'Mengadakan acara edukatif, yaitu AKADEMI BIJAK SAMPAH (AKABIS) Class and Xperience, untuk meningkatkan kesadaran dan memperkenalkan beberapa solusi dari masalah sampah yang ada', 'organizing-education-events-which-are-akabis-clas', 'service_achievement');
INSERT INTO `dictionary` VALUES (1107, 'en', 'Each school was expected to be able to carry on the Recycle Day activities independently, in which students are encouraged to put recyclable waste in the designated bin to be recycled. Waste4Change conducted monitoring and evaluation of the waste generated during the activities', 'each-school-was-expected-to-be-able-to-carry-on-th', 'service_achievement');
INSERT INTO `dictionary` VALUES (1108, 'id', 'Setiap sekolah diharapkan mampu menjalankan aktivitas Recycle Day, dimana para murid didorong untuk menaruh sampah yang bisa didaur ulang ke dalam kantong sampah yang sesuai. Waste4Change melakukan pengawasan dan evaluasi terhadap sampah yang dihasilkan selama aktivitas berlangsung', 'each-school-was-expected-to-be-able-to-carry-on-th', 'service_achievement');
INSERT INTO `dictionary` VALUES (1109, 'en', 'Sharing Session: why we need to be responsible for our solid waste management?', 'sharing-session:-why-we-need-to-be-responsible-for', 'service_achievement');
INSERT INTO `dictionary` VALUES (1110, 'id', 'Sesi Sharing: kenapa kita harus menerapkan pengelolaan sampah yang bertanggung jawab?', 'sharing-session:-why-we-need-to-be-responsible-for', 'service_achievement');
INSERT INTO `dictionary` VALUES (1111, 'en', 'Presentation Session: how can we conduct responsible solid waste management starting from our office?', 'presentation-session:-how-can-we-conduct-responsib', 'service_achievement');
INSERT INTO `dictionary` VALUES (1112, 'id', 'Sesi Presentasi: bagaimana kita bisa menerapkan pengelolaan sampah yang ertanggung jawab dimulai dari kantor sendiri?', 'presentation-session:-how-can-we-conduct-responsib', 'service_achievement');
INSERT INTO `dictionary` VALUES (1113, 'en', 'Interactive Games', 'interactive-games', 'service_achievement');
INSERT INTO `dictionary` VALUES (1114, 'id', 'Permainan Interaktif', 'interactive-games', 'service_achievement');
INSERT INTO `dictionary` VALUES (1115, 'en', 'Open discussion with fellow panels and audiences on solid waste management', 'open-discussion-with-fellow-panels-and-audiences-o', 'service_achievement');
INSERT INTO `dictionary` VALUES (1116, 'id', 'Bagaimana cara menangani dan mengelola sampah secara bertanggung jawab dan berkelanjutan, terutama sampah kertas', 'open-discussion-with-fellow-panels-and-audiences-o', 'service_achievement');
INSERT INTO `dictionary` VALUES (1117, 'en', 'The importance of responsible solid waste management', 'the-importance-of-responsible-solid-waste-manageme', 'service_achievement');
INSERT INTO `dictionary` VALUES (1118, 'id', 'Pentingnya pengelolaan sampah yang bertanggung jawab', 'the-importance-of-responsible-solid-waste-manageme', 'service_achievement');
INSERT INTO `dictionary` VALUES (1119, 'en', 'How to handle and treat waste responsibly and sustainably especially on paper waste', 'how-to-handle-and-treat-waste-responsibly-and-sust', 'service_achievement');
INSERT INTO `dictionary` VALUES (1120, 'id', 'Bagaimana cara menanggulangi kerugian yang disebabkan oleh sampah terhadap manusia dan makhluk hidup lain', 'how-to-handle-and-treat-waste-responsibly-and-sust', 'service_achievement');
INSERT INTO `dictionary` VALUES (1121, 'en', 'How to mitigate adverse effects of waste for humans and other living creatures', 'how-to-mitigate-adverse-effects-of-waste-for-human', 'service_achievement');
INSERT INTO `dictionary` VALUES (1122, 'id', 'Adanya diskusi terbuka antara pembicara dan peserta mengenai pengelolaan sampah', 'how-to-mitigate-adverse-effects-of-waste-for-human', 'service_achievement');
INSERT INTO `dictionary` VALUES (1123, 'en', 'Shock Moment: all participants are invited to see the magnitude of waste problems by visiting Bantar Gebang Landfill', 'shock-moment:-all-participants-are-invited-to-see-', 'service_achievement');
INSERT INTO `dictionary` VALUES (1124, 'id', 'Shock Moment: semua peserta diajak untuk menyaksikan besarnya permasalahan sampah yang kita hadapi melalui kunjungan ke TPST Bantar Gebang', 'shock-moment:-all-participants-are-invited-to-see-', 'service_achievement');
INSERT INTO `dictionary` VALUES (1125, 'en', 'O\' Moment: responsible waste management presentation regarding why they must be responsible with their waste', 'o-moment:-responsible-waste-management-presentati', 'service_achievement');
INSERT INTO `dictionary` VALUES (1126, 'id', 'O\'Moment: presentasi mengenai pengelolaan sampah yang bertanggung jawab dan mengapa setiap orang harus bertanggung jawab terhadap sampahnya', 'o-moment:-responsible-waste-management-presentati', 'service_achievement');
INSERT INTO `dictionary` VALUES (1127, 'en', 'Facility Tour: visiting W4C\'s facilities, including our Material Recovery Facility and Composting House', 'facility-tour:-visiting-w4cs-facilities-includin', 'service_achievement');
INSERT INTO `dictionary` VALUES (1128, 'id', 'Tur Fasilitas: Mengunjungi fasilitas milik Waste4Change, yaitu Rumah Pemulihan Material dan Rumah Kompos', 'facility-tour:-visiting-w4cs-facilities-includin', 'service_achievement');
INSERT INTO `dictionary` VALUES (1129, 'en', 'Community Assistance', 'community-assistance', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1130, 'id', 'Community Assistance', 'community-assistance', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1131, 'en', 'Community Capacity Building', 'community-capaciity-building', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1132, 'id', 'Community Capacity Building', 'community-capaciity-building', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1133, 'en', 'AKABIS CLASS', 'akabis-class', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1134, 'id', 'AKABIS CLASS', 'akabis-class', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1135, 'en', 'AKABIS XPERIENCE', 'akabis-xperience', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1136, 'id', 'AKABIS XPERIENCE', 'akabis-xperience', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1137, 'en', 'One-day Visit', 'one-day-visit', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1138, 'id', 'Kunjungan 1 Hari', 'one-day-visit', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1139, 'en', 'Five-day Visit', 'five-day-visit', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1140, 'id', 'Kunjungan 5 Hari', 'five-day-visit', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1141, 'en', '21 Days of Intensive Program', '21-days-of-intensive-program', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1142, 'id', 'Program Intensif Selama 21 Hari', '21-days-of-intensive-program', 'service_offer_name');
INSERT INTO `dictionary` VALUES (1143, 'en', 'Planning and operational assistance for a minimum duration of 6 months to ensure the sustainability of the SWM program\'s  within a certain area.<br>Encourage communities\' aspiration and assist them to take actions on responsible solid waste management programs within their neighborhood.<br>Designed for neighborhood, city, offices.', 'planning-and-operational-assistance-for-a-minimum-', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1144, 'id', 'Perencanaan dan pendampingan operasional selama minimal 6 bulan untuk memastikan keberlanjutan dari program SWM di suatu daerah/area tertentu<br>Mendorong aspirasi dari komunitas lokal dan membantu mereka untuk mengambil tindakan nyata dalam program pengelolaan sampah yang bertanggung jawab di lingkungan mereka masing-masing<br>Dirancang untuk perumahan, kota, dan perkantoran', 'planning-and-operational-assistance-for-a-minimum-', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1145, 'en', 'Community Based Capacity Building is a 3-days training activities for local waste organization\'s.<br>Deepen their understanding towards institutional management concept in waste sector and assist them to make a sustainable action plan.<br>Designed to empower Solid Waste Activists, Waste Banks, Government,  Civil Society Group (TPS 3R managers), Communities and Academic Institutional to perform implement responsible waste management in their communities.', 'community-based-capacity-building-is-a-3-days-trai', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1146, 'id', 'Community Based Capacity Building adalah sebuah pelatihan selama 3 hari untuk organisasi sampah di tingkat lokal <br>Bertujuan untuk memperdalam pemahaman mereka terhadap konsep manajemen institusi dalam sektor persampahan dan membantu mereka untuk membuat rencana aksi yang berkelanjutan <br>Dirancang untuk memberdayakan Aktivis Sampah, Bank Sampah, Pemerintah, Kelompok Masyarakat Sipil, dan Institusi Pendidikan untuk ikut menerapkan pengelolaan sampah yang bertanggung jawab di komunitas mereka.', 'community-based-capacity-building-is-a-3-days-trai', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1147, 'en', 'A 2-hour In-class training and discussion<br>Held in client\'s institution<br>Akabis Class can be attended by:<ul style=\"padding-inline-start: 17px;\"><li>The general public, especially people who wish to be the agents of change and to prepare for a better future of waste management in Indonesia</li><li>Institution</li></ul>', 'a-2-hour-in-class-training-and-discussion<br>held-', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1148, 'id', 'Pelatihan dan diskusi dalam ruangan dengan durasi 2 jam<br>Diadakan di tempat klien<br>Akabis Class dapat diikuti oleh:<ul style=\"padding-inline-start: 17px;\"><li>Masyarakat umum, terutama masyarakat yang ingin menjadi agen perubahan demi masa depan pengelolaan sampah di Indonesia yang lebih baik lagi</li><li>Institusi</li></ul>', 'a-2-hour-in-class-training-and-discussion<br>held-', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1149, 'en', 'A 6-hour educational tour and interactive discussion<br>Visit to landfill<br>Visit to W4C Facility<br>Akabis Xperience can be  attended by:<ul style=\"padding-inline-start: 17px;\"><li>The general public who are the agents of change for a better future of waste management in Indonesia</li><li>Institution</li></ul>', 'a-6-hour-educational-tour-and-interactive-discussi', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1150, 'id', 'Tur edukasional dan diskusi interaktif yang berlangsung selama 6 jam<br>Kunjungan ke TPA/TPST<br>Kunjungan ke Fasilitas W4C <br>Akabis Xperience dapat diikuti oleh<ul style=\"padding-inline-start: 17px;\"><li>Masyarakat umum, terutama anak muda yang menjadi agen perubahan demi masa depan pengelolaan sampah di Indonesia yang lebih baik lagi</li><li>Institusi</li></ul>', 'a-6-hour-educational-tour-and-interactive-discussi', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1151, 'en', 'Tour and introduction of BSF cultivation and breeding facilities to see the maintenance methods as well as the decomposition process of food waste using BSF', 'tour-and-introduction-of-bsf-cultivation-and-breed', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1152, 'id', 'Tur dan pengenalan fasilitas pengembangbiakan dan pembudidayaan BSF untuk melihat metode pemeliharaan dan proses pembusukan sampah makanan menggunakan BSF', 'tour-and-introduction-of-bsf-cultivation-and-breed', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1153, 'en', 'Engage in a more detailed exploration through direct practice of breeding and cultivating BSF for 5 days in our facility', 'engage-in-a-more-detailed-exploration-through-dire', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1154, 'id', 'Eksplorasi yang lebih mendetail dalam bentuk berlatih langsung membudidayakan dan beternak BSF selama 5 hari di fasilitas kami', 'engage-in-a-more-detailed-exploration-through-dire', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1155, 'en', 'This is suitable for business actors who aspire to develop their very own BSF breeding and cultivation facilities. We will help you to design and plan your own BSF cultivation and breeding facilities in your city/area', 'this-is-suitable-for-business-actors-who-aspire-to', 'service_offer_decription');
INSERT INTO `dictionary` VALUES (1156, 'id', 'Program ini cocok untuk pelaku bisnis yang ingin mengembangkan peternakan dan budidaya BSFnya sendiri. Kami akan membantu Anda untuk merancang dan merencanakan fasilitas budidaya dan penembangbiakan BSF di kota/domisili Anda', 'this-is-suitable-for-business-actors-who-aspire-to', 'service_activity_name');
INSERT INTO `dictionary` VALUES (1157, 'en', 'Phase 1', 'phase-1', 'service_activity_name');
INSERT INTO `dictionary` VALUES (1158, 'id', 'Tahap 1', 'phase-1', 'service_activity_name');
INSERT INTO `dictionary` VALUES (1159, 'en', 'Phase 2', 'phase-2', 'service_activity_name');
INSERT INTO `dictionary` VALUES (1160, 'id', 'Tahap 2', 'phase-2', 'service_activity_name');
INSERT INTO `dictionary` VALUES (1161, 'en', 'Raising Awareness through AKABIS', 'raising-awareness-through-akabis', 'service_activity_description');
INSERT INTO `dictionary` VALUES (1162, 'id', 'Meningkatkan Kesadaran melalui AKABIS', 'raising-awareness-through-akabis', 'service_activity_description');
INSERT INTO `dictionary` VALUES (1163, 'en', 'Forming Task Force, Planning, Capacity Building, and Assistance', 'forming-task-force-planning-capacity-building-a', 'service_activity_description');
INSERT INTO `dictionary` VALUES (1164, 'id', 'Pembentukan Satuan Tugas, Perencanaan, Peningkatan Kapasitas, dan Pendampingan', 'forming-task-force-planning-capacity-building-a', 'service_activity_description');
INSERT INTO `dictionary` VALUES (1165, 'en', '100% holistic-approach on waste management', '100-holistic-approach-on-waste-management', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1166, 'id', 'Pendekatan manajemen sampah yang 100% terpilah', '100-holistic-approach-on-waste-management', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1167, 'en', 'Supports and in line with Peraturan Pemerintah No.81  Tahun 2012 and Peraturan Presiden Nomor 97 Tahun 2017 (JAKSTRANAS)', 'support-and-in-line-with-perpres-no-97-tahun-2017', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1168, 'id', 'Menaati Peraturan Pemerintah (PP) No. 81 Tahun 2012 tentang Pengelolaan Sampah Rumah Tangga dan Sampah Sejenis Rumah Tangga, serta mendukung Peraturan Presiden Nomor 97 Tahun 2017 (JAKSTRANAS)', 'support-and-in-line-with-perpres-no-97-tahun-2017', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1169, 'en', 'Adding sustainable and environmental-friendly value to client\'s brand image', 'adding-sustainable-and-environmental-friendly-valu', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1170, 'id', 'Meningkatkan citra perusahaan', 'adding-sustainable-and-environmental-friendly-valu', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1171, 'en', 'Increasing staff\'s awareness of waste issues', 'increasing-staffs-awareness-of-waste-issues', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1172, 'id', 'Meningkatkan kepedulian pegawai tentang isu sampah', 'increasing-staffs-awareness-of-waste-issues', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1173, 'en', 'Reduce volume of waste into landfill', 'reduce-waste-to-landfill', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1174, 'id', 'Mengurangi timbulan sampah yang dibuang ke TPA', 'reduce-waste-to-landfill', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1175, 'en', 'Prevent your brand-labelled products for being misused, imitated or forged', 'prevent-your-brand-labelled-products-for-being-mis', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1176, 'id', 'Mencegah produk berlabel merek Anda agar tidak disalahgunakan, dibuat imitasinya, atau dipalsukan', 'prevent-your-brand-labelled-products-for-being-mis', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1177, 'en', 'Waste journey report', 'waste-journey-report', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1178, 'id', 'Laporan tentang alur sampah', 'waste-journey-report', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1179, 'en', 'Help to increase recycling rate', 'help-to-increase-recycling-rate', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1180, 'id', 'Membantu meningkatkan tingkat daur ulang', 'help-to-increase-recycling-rate', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1181, 'en', 'Wider reach', 'wider-reach', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1182, 'id', 'Jangkauan yang Lebih Luas', 'wider-reach', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1183, 'en', 'Meet the needs of your brand customers in more locations in Indonesia', 'meet-the-needs-of-your-brand-customers-in-more-loc', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1184, 'id', 'Melayani kebutuhan pelanggan merek Anda di lebih banyak tempat di Indonesia', 'meet-the-needs-of-your-brand-customers-in-more-loc', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1185, 'en', 'The real action in encouraging the implementation of 3R and responsible waste management in Indonesia, especially in the educational sector', 'the-real-action-in-encouraging-the-implementation-', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1186, 'id', 'Sebagai bentuk nyata penerapan 3R dan pengelolaan sampah yang bertanggung jawab di Indonesia, terutama di sektor pendidikan', 'the-real-action-in-encouraging-the-implementation-', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1187, 'en', 'Supporting the green concept of our clients\' brand image', 'supporting-the-green-concept-of-our-clients-brand', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1188, 'id', 'Memperkuat citra positif perusahaan', 'supporting-the-green-concept-of-our-clients-brand', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1189, 'en', 'Increased knowledge and capacity of students and teachers about the 3R concept', 'increased-knowledge-and-capacity-of-students-and-t', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1190, 'id', 'Peningkatan pengetahuan dan kapasitas murid serta guru mengenai prinsip 3R', 'increased-knowledge-and-capacity-of-students-and-t', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1191, 'en', 'Schools can contribute to supporting and executing a responsible waste management system in their facility', 'schools-can-contribute-to-supporting-and-executing', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1192, 'id', 'Sekolah dapat berkontribusi untuk mewujudkan pengelolaan sampah yang bertanggung jawab di sekolah-sekolah', 'schools-can-contribute-to-supporting-and-executing', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1193, 'en', 'Available for every school located in Indonesia, we support our client\'s school to become an example of a green and sustainable educational facility', 'available-for-every-school-located-in-indonesia-w', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1194, 'id', 'Tersedia untuk setiap sekolah yang berlokasi di Indonesia, kami mendukung sekolah klien kami untuk menjadi contoh fasilitas pendidikan yang hijau dan berkelanjutan', 'available-for-every-school-located-in-indonesia-w', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1195, 'en', 'For schools located in Jakarta, we help to support the school to become a potential candidate to apply for the Sekolah ADIWIYATA program', 'for-schools-located-in-jakarta-we-help-to-support', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1196, 'id', 'Menjadi kandidat potensial untuk mendaftar program Sekolah ADIWIYATA', 'for-schools-located-in-jakarta-we-help-to-support', 'service_benefit_name');
INSERT INTO `dictionary` VALUES (1197, 'en', 'Solid Waste Management Feasibility Study', 'solid-waste-management-feasibility-study', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1198, 'id', 'Studi Kelayakan Pengelolaan Sampah', 'solid-waste-management-feasibility-study', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1199, 'en', 'Waste Audit', 'waste-audit', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1200, 'id', 'Audit Sampah', 'waste-audit', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1201, 'en', 'Technical and Operational Design of SWM', 'technical-and-operational-design-of-swm', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1202, 'id', 'Desain Operasional dan Teknis Pengelolaan Sampah', 'technical-and-operational-design-of-swm', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1203, 'en', 'SWM Regulatory Analysis', 'swm-regulatory-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1204, 'id', 'Analisis Peraturan Pengelolaan Sampah', 'swm-regulatory-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1205, 'en', 'Behavior Change Analysis', 'behavior-change-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1206, 'id', 'Analisis Perubahan Perilaku', 'behavior-change-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1207, 'en', 'Financial Analysis', 'financial-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1208, 'id', 'Analisis Finansial', 'financial-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1209, 'en', 'Institutional Analysis', 'institutional-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1210, 'id', 'Analisis Institusional', 'institutional-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1211, 'en', 'Stakeholders Mapping', 'stakeholders-mapping', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1212, 'id', 'Pemetaan Pemangku Kepentingan', 'stakeholders-mapping', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1213, 'en', 'Recycling Value Chain Analysis', 'recycling-value-chain-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1214, 'id', 'Analisis Rantai Nilai Daur Ulang', 'recycling-value-chain-analysis', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1215, 'en', 'Material Flow Analysis/ VCA', 'material-flow-analysis-vca', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1216, 'id', 'Analisis Alur Material (VCA)', 'material-flow-analysis-vca', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1217, 'en', 'Waste to Energy Feasibility Study', 'waste-to-energy-feasibility-study', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1218, 'id', 'Studi Kelayakan Waste to Energy', 'waste-to-energy-feasibility-study', 'service_expertise_name');
INSERT INTO `dictionary` VALUES (1219, 'en', 'Trash bag designated to support waste segregation', 'trash-bag-designated-to-support-waste-segregation', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1220, 'id', 'Kantong sampah yang akan mendukung pemilahan sampah', 'trash-bag-designated-to-support-waste-segregation', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1221, 'en', 'Waste collection in a segregated state', 'waste-collection-in-a-segregated-state', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1222, 'id', 'Pengangkutan sampah dalam kondisi terpilah', 'waste-collection-in-a-segregated-state', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1223, 'en', 'One-time technical induction training', 'one-time-technical-induction-training', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1224, 'id', 'Pelatihan induksi teknis sebanyak satu kali', 'one-time-technical-induction-training', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1225, 'en', 'Inorganic trash bag', 'inorganic-trash-bag', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1226, 'id', 'Kantong sampah anorganik', 'inorganic-trash-bag', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1227, 'en', 'Comprehensive waste management system in the distribution line', 'comprehensive-waste-management-system-in-the-distr', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1228, 'id', 'Sistem pengelolaan sampah yang komprehensif di lini distribusi ', 'comprehensive-waste-management-system-in-the-distr', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1229, 'en', 'Responsible waste management for residual waste (waste that are difficult to be recycled) without sending it to the landfills (on demand)', 'responsible-waste-management-for-residual-waste-w', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1230, 'id', 'Pengelolaan sampah yang bertanggung jawab untuk sampah residu (sampah yang sulit didaur ulang) tanpa mengirimnya ke TPA (berdasarkan permintaan)', 'responsible-waste-management-for-residual-waste-w', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1231, 'en', 'Increase the number of waste that can be further processed through recycling method', 'increase-the-number-of-waste-that-can-be-further-p', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1232, 'id', 'Meningkatkan jumlah sampah yang dapat diproses melalui metode daur ulang', 'increase-the-number-of-waste-that-can-be-further-p', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1233, 'en', 'Easy waste collection and recycling system supported by web and mobile applications', 'easy-waste-collection-and-recycling-system-support', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1234, 'id', 'Proses pengangkutan dan pendaur ulangan sampah yang lebih mudah dengan didukung website dan aplikasi handphone', 'easy-waste-collection-and-recycling-system-support', 'service_facility_name');
INSERT INTO `dictionary` VALUES (1235, 'en', 'Waste segregation by client', 'waste-segregation-by-client', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1236, 'id', 'Pemilahan sampah oleh klien', 'waste-segregation-by-client', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1237, 'en', 'Waste storage in transfer point/ TPST', 'waste-storage-in-transfer-point-tpst', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1238, 'id', 'Penyimpanan sampah di titik transfer/ TPST', 'waste-storage-in-transfer-point-tpst', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1239, 'en', 'Segregated waste collection', 'segregated-waste-collection', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1240, 'id', 'Pengumpulan sampah terpilah', 'segregated-waste-collection', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1241, 'en', 'Waste processing in W4C\'s Material Recovery Facility (MRF)', 'waste-processing-in-w4cs-material-recovery-facili', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1242, 'id', 'Pengolahan sampah di Rumah Pemulihan Material W4C', 'waste-processing-in-w4cs-material-recovery-facili', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1243, 'en', 'Residue being sent to the landfill', 'residue-being-sent-to-the-landfill', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1244, 'id', 'Residu dikirim ke TPA', 'residue-being-sent-to-the-landfill', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1245, 'en', 'Waste processing in W4C\'s Material Recovery Facility (MRF)', 'waste-processing-in-w4cs-material-recivery-facili', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1246, 'id', 'Pengelolaan sampah di Rumah Pemulihan Material W4C', 'waste-processing-in-w4cs-material-recivery-facili', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1247, 'en', 'Residue co-processing with RDF technology', 'residue-co-processing-with-rdf-technology', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1248, 'id', 'Pengelolaan residu menggunakan teknologi RDF', 'residue-co-processing-with-rdf-technology', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1249, 'en', 'Dropping locations in more location across Indonesia', 'dropping-locations-in-more-location-across-indones', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1250, 'id', 'Lokasi setor sampah di banyak lokasi di seluruh Indonesia', 'dropping-locations-in-more-location-across-indones', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1251, 'en', 'User can send or drop their waste to Waste4Change\'s partner by registering to get a unique code from website', 'user-can-send-or-drop-their-waste-to-waste4change', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1252, 'id', 'Pengguna dapat menyetor sampah mereka ke partner daur ulang Waste4Change dengan mendaftarkan diri di website untuk mendapat kode unik', 'user-can-send-or-drop-their-waste-to-waste4change', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1253, 'en', 'User will get points as a reward for recycling their waste', 'user-will-get-points-as-a-reward-for-recycling-the', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1254, 'id', 'Pengguna akan mendapatkan poin sebagai hadiah karena sudah mendaur ulang', 'user-will-get-points-as-a-reward-for-recycling-the', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1255, 'en', 'Waste responsibly managed by our partner', 'waste-responsibly-managed-by-our-partner', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1256, 'id', 'Sampah dikelola secara bertanggung jawab oleh partner daur ulang kami', 'waste-responsibly-managed-by-our-partner', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1257, 'en', 'Material transported to up-cycling and recycling industry to support Circular Economy', 'material-transported-to-up-cycling-and-recycling-i', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1258, 'id', 'Material dikirim ke industri up-cycling dan recycling untuk mendukung Circular Economy', 'material-transported-to-up-cycling-and-recycling-i', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1259, 'en', 'We ensure that your brand-labeled was not ends up in environment', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1260, 'id', 'Kami memastikan sampah brand Anda tidak berakhir di TPA', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'service_flow_name');
INSERT INTO `dictionary` VALUES (1261, 'en', 'Brand', 'brand', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1262, 'id', 'Merek', 'brand', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1263, 'en', 'Bussiness Actor', 'bussiness-actor', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1264, 'id', 'Pelaku Bisnis', 'bussiness-actor', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1265, 'en', 'Company', 'company', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1266, 'id', 'Perusahaan', 'company', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1267, 'en', 'Company\'s CSR', 'companys-csr', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1268, 'id', 'CSR Perusahaan', 'companys-csr', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1269, 'en', 'Consultant', 'consultant', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1270, 'id', 'Konsultan', 'consultant', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1271, 'en', 'Distributor', 'distributor', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1272, 'id', 'Distribusi', 'distributor', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1273, 'en', 'Event Organizer', 'event', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1274, 'id', 'Event Organizer', 'event', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1275, 'en', 'Foundation', 'foundation', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1276, 'id', 'Yayasan', 'foundation', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1277, 'en', 'Government', 'government', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1278, 'id', 'Pemerintah', 'government', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1279, 'en', 'Hotel', 'hotels', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1280, 'id', 'Hotel', 'hotels', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1281, 'en', 'Individual', 'individual', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1282, 'id', 'Individu', 'individual', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1283, 'en', 'Office Block', 'office-blocks', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1284, 'id', 'Komplek Perkantoran', 'office-blocks', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1285, 'en', 'Product', 'product', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1286, 'id', 'Produk', 'product', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1287, 'en', 'Researcher', 'researcher', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1288, 'id', 'Peneliti', 'researcher', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1289, 'en', 'Residential Area/ Housing', 'residential-areahousing', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1290, 'id', 'Pengelola Perumahan', 'residential-areahousing', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1291, 'en', 'Restaurant', 'restaurants', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1292, 'id', 'Restoran', 'restaurants', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1293, 'en', 'School', 'school', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1294, 'id', 'Sekolah', 'school', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1295, 'en', 'HSE Division', 'hse-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1296, 'id', 'Divisi HSE', 'hse-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1297, 'en', 'Sustainability Division', 'sustainability-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1298, 'id', 'Divisi Sustainability', 'sustainability-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1299, 'en', 'CSR Division', 'csr-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1300, 'id', 'Divisi CSR', 'csr-division', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1301, 'en', 'Building / Area Management', 'building-area-management', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1302, 'id', 'Pengelola Bangunan/ Kawasan', 'building-area-management', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1303, 'en', 'Personal', 'personal', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1304, 'id', 'Personal', 'personal', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1305, 'en', 'Residual Waste Treatment at the Landfill', 'residual-waste-treatment-at-the-landfill', 'section');
INSERT INTO `dictionary` VALUES (1306, 'id', 'Pengelolaan Sampah Residu di TPA', 'residual-waste-treatment-at-the-landfill', 'section');
INSERT INTO `dictionary` VALUES (1309, 'en', 'Residual Waste Treatment Using RDF Technology', 'residual-waste-treatment-using-rdf-technology', 'section');
INSERT INTO `dictionary` VALUES (1310, 'id', 'Pengelolaan Sampah Residu Menggunakan Teknologi RDF', 'residual-waste-treatment-using-rdf-technology', 'section');
INSERT INTO `dictionary` VALUES (1311, 'en', 'Residual Waste Treatment at the Landfill', 'residual-waste-treatment-at-the-landfill', 'section');
INSERT INTO `dictionary` VALUES (1312, 'id', 'Pengelolaan Limbah Sisa di TPA', 'residual-waste-treatment-at-the-landfill', 'section');
INSERT INTO `dictionary` VALUES (1313, 'en', 'Increasing audience\'s awareness of waste issues', 'increasing-audiences-awareness-of-waste-issues', NULL);
INSERT INTO `dictionary` VALUES (1314, 'id', 'Meningkatkan kepedulian peserta tentang isu sampah', 'increasing-audiences-awareness-of-waste-issues', NULL);
INSERT INTO `dictionary` VALUES (1315, 'en', 'Residual Treatment Using RDF Technology', 'residual-treatment-using-rdf-technology', NULL);
INSERT INTO `dictionary` VALUES (1316, 'id', 'Perawatan Sampah Residu Menggunakan Teknologi RDF', 'residual-treatment-using-rdf-technology', NULL);
INSERT INTO `dictionary` VALUES (1317, 'en', 'About', 'about-this-service', NULL);
INSERT INTO `dictionary` VALUES (1318, 'id', 'Tentang Service Ini', 'about-this-service', NULL);
INSERT INTO `dictionary` VALUES (1319, 'en', 'Approximately', 'approximately', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1320, 'id', 'Kira-kira', 'approximately', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1321, 'en', 'People', 'people', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1322, 'id', 'orang', 'people', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1323, 'en', 'Estimated Number of Participants', 'estimated-number-of-participants', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1324, 'id', 'Perkiraan Jumlah Peserta', 'estimated-number-of-participants', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1325, 'en', ' Event Date', 'event-date', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1326, 'id', 'Tanggal Acara', 'event-date', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1327, 'en', 'August - November 2019', 'agustus-november-2019', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1328, 'id', 'Agustus - November 2019', 'agustus-november-2019', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1329, 'en', 'Collection Schedule', 'collection-schedule', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1330, 'id', 'Jadwal Pengumpulan', 'collection-schedule', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1331, 'en', 'Service Duration', 'program-duration', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1332, 'id', 'Durasi Layanan', 'program-duration', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1333, 'en', 'Until Present', 'until-present', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1334, 'id', 'Sampai Sekarang', 'until-present', 'service_portofolio');
INSERT INTO `dictionary` VALUES (1335, 'en', 'Provinces Available', 'provinces-available', 'service_achievement');
INSERT INTO `dictionary` VALUES (1336, 'id', 'Provinsi Tersedia', 'provinces-available', 'service_achievement');
INSERT INTO `dictionary` VALUES (1337, 'en', 'Number of Waste Recycling Agents Involved', 'number-of-waste-recycling-agents-involved', 'service_portfolio');
INSERT INTO `dictionary` VALUES (1338, 'id', 'Number of Waste Recycling Agents Involved', 'number-of-waste-recycling-agents-involved', 'service_portfolio');
INSERT INTO `dictionary` VALUES (1342, 'en', '41 cities across Indonesia', '41-cities-across-indonesia', 'service_portfolio');
INSERT INTO `dictionary` VALUES (1343, 'id', '41 Kota di Indonesia', '41-cities-across-indonesia', 'service_portfolio');
INSERT INTO `dictionary` VALUES (1344, 'en', 'Cities', 'cities', NULL);
INSERT INTO `dictionary` VALUES (1345, 'id', 'Kota', 'cities', NULL);
INSERT INTO `dictionary` VALUES (1346, 'en', '1st May - 30th June 2019', '1st-may-30th-june-2019', 'service_portfolio');
INSERT INTO `dictionary` VALUES (1347, 'id', '1 Mei - 30 Juni 2019', '1st-may-30th-june-2019', 'service_portfolio');
INSERT INTO `dictionary` VALUES (1348, 'en', '31st October 2019 - present', '31st-october-2019-present', 'service_portfolio');
INSERT INTO `dictionary` VALUES (1349, 'id', '31 Oktober 2019 - Sekarang', '31st-october-2019-present', 'service_portfolio');
INSERT INTO `dictionary` VALUES (1350, 'en', 'Retail', 'retail', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1351, 'id', 'Retail', 'retail', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1352, 'en', 'Store', 'store', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1353, 'id', 'Toko', 'store', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1354, 'en', 'Responsibly', 'responsibly', NULL);
INSERT INTO `dictionary` VALUES (1355, 'id', 'Secara Bertanggung Jawab', 'responsibly', NULL);
INSERT INTO `dictionary` VALUES (1356, 'en', 'Cities Available', 'cities-available', NULL);
INSERT INTO `dictionary` VALUES (1357, 'id', 'Kota Tersedia', 'cities-available', NULL);
INSERT INTO `dictionary` VALUES (1358, 'en', 'Join the Program', 'join-the-program', NULL);
INSERT INTO `dictionary` VALUES (1359, 'id', 'Bergabung dalam Program', 'join-the-program', NULL);
INSERT INTO `dictionary` VALUES (1360, 'en', 'Get Portfolio', 'get-portfolio', NULL);
INSERT INTO `dictionary` VALUES (1361, 'id', 'Dapatkan Portofolio', 'get-portfolio', NULL);
INSERT INTO `dictionary` VALUES (1362, 'en', 'Pick Media', 'pick-media', NULL);
INSERT INTO `dictionary` VALUES (1363, 'id', 'Pilih Media', 'pick-media', NULL);
INSERT INTO `dictionary` VALUES (1364, 'en', 'Number of Participants', 'number-of-participants', 'service_achievement');
INSERT INTO `dictionary` VALUES (1365, 'id', 'Jumlah Peserta', 'number-of-participants', 'service_achievement');
INSERT INTO `dictionary` VALUES (1368, 'en', 'For Clients', 'for-clients', 'service_benefit');
INSERT INTO `dictionary` VALUES (1369, 'id', 'Bagi Klien', 'for-clients', 'service_benefit');
INSERT INTO `dictionary` VALUES (1370, 'en', 'For Schools', 'for-schools', 'service_benefit');
INSERT INTO `dictionary` VALUES (1371, 'id', 'Bagi Sekolah', 'for-schools', 'service_benefit');
INSERT INTO `dictionary` VALUES (1372, 'en', 'Zero Waste to Landfill', 'zerowastetolandfill', 'service_benefit');
INSERT INTO `dictionary` VALUES (1373, 'id', 'Tidak ada sampah yang terbuang ke TPA', 'zerowastetolandfill', 'service_benefit');
INSERT INTO `dictionary` VALUES (1402, 'en', 'Marine Debris Study', 'study-about-marine-debris', 'service_expertise');
INSERT INTO `dictionary` VALUES (1403, 'id', 'Studi Sampah Sungai dan Laut', 'study-about-marine-debris', 'service_expertise');
INSERT INTO `dictionary` VALUES (1404, 'en', 'Participants', 'participant', 'our_achievement');
INSERT INTO `dictionary` VALUES (1405, 'id', 'Peserta', 'participant', 'our_achievement');
INSERT INTO `dictionary` VALUES (1406, 'en', 'Building', 'building', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1407, 'id', 'Bangunan', 'building', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1408, 'en', 'School Management', 'school-management', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1409, 'id', 'Pengurus Sekolah', 'school-management', 'service_recomendation');
INSERT INTO `dictionary` VALUES (1410, 'en', 'Offer', 'offer', 'service_section');
INSERT INTO `dictionary` VALUES (1411, 'id', 'Penawaran', 'offer', 'service_section');
INSERT INTO `dictionary` VALUES (1412, 'en', 'Reciever', 'reciever', 'our_achievement');
INSERT INTO `dictionary` VALUES (1413, 'id', 'Penerima', 'reciever', 'our_achievement');
INSERT INTO `dictionary` VALUES (1414, 'en', 'Akademi Bijak Sampah (AKABIS) is an education model created by Waste4Change to raise awareness on the importance of protecting the environment, especially in responsible waste management. If your institution is willing to experience first-hand field visits that stimulate all 4 senses, we can provide you with Akabis Xperience, a 6-hour educational tour to our facilities and landfill with interactive discussion.<br><br>To accommodate those with time limitation, we can also provide you with Akabis Class, a 2-hour In-class training and discussion on responsible waste management that can be carried out at the client\'s preferred location.\r\n', 'akademi-bijak-sampah-akabis-is-an-education-mode-created-by', 'service_about');
INSERT INTO `dictionary` VALUES (1415, 'id', 'Akademi Bijak Sampah (AKABIS) adalah sebuah model edukasi yang dibuat oleh Waste4Change untuk meningkatkan kesadaran mengenai pentingnya menjaga lingkungan, terutama mengenai pengelolaan sampah yang bertanggung jawab. Jika institusi Anda ingin merasakan pengalaman langsung kunjungan lapangan yang merangsang keempat indra manusia, kami bisa menawarkan Anda program AKABIS-Xperience, tur edukasional yang berlangsung selama 6 jam ke fasilitas milik Waste4Change dan TPA yang disertai dengan diskusi interaktif. <br><br>Selain itu, untuk mengakomodasi Anda yang memiliki waktu yang terbatas, kami juga menawarkan AKABIS-Class, sebuah pelatihan yang berlangsung selama 2 jam dan dilakukan di dalam ruangan, lengkap dengan diskusi mengenai pengelolaan sampah yang bertanggung jawab dan bisa dilakukan di lokasi yang dikehendaki oleh klien.', 'akademi-bijak-sampah-akabis-is-an-education-mode-created-by', 'service_about');
INSERT INTO `dictionary` VALUES (1416, 'en', 'Package', 'pakcage', 'service_offer');
INSERT INTO `dictionary` VALUES (1417, 'id', 'Paket', 'package', 'service_offer');
INSERT INTO `dictionary` VALUES (1418, 'en', 'Recommended For', 'recommendation', 'service_section');
INSERT INTO `dictionary` VALUES (1419, 'id', 'Rekomendasi', 'recommendation', 'service_section');
INSERT INTO `dictionary` VALUES (1420, 'en', 'Enter Location', 'enter-location', 'global');
INSERT INTO `dictionary` VALUES (1421, 'id', 'Masukkan Lokasi', 'enter-location', 'global');
INSERT INTO `dictionary` VALUES (1422, 'en', 'Waste Collected and Recycled', 'waste-collected-and-recycled', 'portfolio-highlight');
INSERT INTO `dictionary` VALUES (1423, 'id', 'Kemasan terkumpul dan terdaur ulang', 'waste-collected-and-recycled', 'portfolio-highlight');
INSERT INTO `dictionary` VALUES (1424, 'en', 'Deliverables', 'deliverable', 'section');
INSERT INTO `dictionary` VALUES (1425, 'id', 'Hasil Pekerjaan', 'deliverable', 'section');
INSERT INTO `dictionary` VALUES (1426, 'en', 'Enter the name of your city', 'enter-the-name-of-your-city', 'home service');
INSERT INTO `dictionary` VALUES (1427, 'id', 'Masukkan Nama Kota Anda', 'enter-the-name-of-your-city', 'home service');
INSERT INTO `dictionary` VALUES (1428, 'en', 'Waste Managed (kg)', 'waste-manage', 'home-counter');
INSERT INTO `dictionary` VALUES (1429, 'id', 'Sampah Terkelola (kg)', 'waste-manage', 'home-counter');
INSERT INTO `dictionary` VALUES (1430, 'en', 'Programs', 'programs', 'service_offer');
INSERT INTO `dictionary` VALUES (1431, 'id', 'Program', 'programs', 'service_offer');
INSERT INTO `dictionary` VALUES (1432, 'en', 'Implemented by', 'implemented-by', 'project_header');
INSERT INTO `dictionary` VALUES (1433, 'id', 'Di Implementasikan oleh', 'implemented-by', 'project_header');
INSERT INTO `dictionary` VALUES (1434, 'en', 'Project Finished', 'project-finished', NULL);
INSERT INTO `dictionary` VALUES (1435, 'id', 'Proyek Diselesaikan', 'project-finished', NULL);
INSERT INTO `dictionary` VALUES (1436, 'en', 'Our<br>Achievement', 'our-br-achievement', 'global');
INSERT INTO `dictionary` VALUES (1437, 'id', 'Pencapaian<br>Kami', 'our-br-achievement', 'global');
INSERT INTO `dictionary` VALUES (1438, 'en', 'Showing Result for', 'showing-result-for', 'service_search');
INSERT INTO `dictionary` VALUES (1439, 'id', 'Hasil Pencarian untuk', 'showing-result-for', 'service_search');
INSERT INTO `dictionary` VALUES (1440, 'en', 'Please Insert Valid City Name', 'insert-valid-city-name', 'service_search');
INSERT INTO `dictionary` VALUES (1441, 'id', 'Masukkan Nama Kota dengan benar', 'insert-valid-city-name', 'service_search');
INSERT INTO `dictionary` VALUES (1442, 'en', 'No result found for', 'no-result-found-for', 'service_search');
INSERT INTO `dictionary` VALUES (1443, 'id', 'Tidak menemukan hasil untuk pencarian', 'no-result-found-for', 'service_search');
INSERT INTO `dictionary` VALUES (1444, 'en', 'PT. Pelabuhan Indonesia II (Persero)', 'pt-pelabuhan-indonesia-ii-persero', 'service_client');
INSERT INTO `dictionary` VALUES (1445, 'id', 'PT. Pelabuhan Indonesia II (Persero)', 'pt-pelabuhan-indonesia-ii-persero', 'service_client');
INSERT INTO `dictionary` VALUES (1446, 'en', 'Ministry of Public Works and Housings', 'ministry-of-public-works-and-housings', 'service_client');
INSERT INTO `dictionary` VALUES (1447, 'id', 'Kementerian Pekerjaan Umum dan Perumahan Rakyat', 'ministry-of-public-works-and-housings', 'service_client');
INSERT INTO `dictionary` VALUES (1448, 'en', 'PT. Deloitte Konsultan Indonesia', 'pt-deloitte-konsultan-indonesia', 'service_client');
INSERT INTO `dictionary` VALUES (1449, 'id', 'PT. Deloitte Konsultan Indonesia', 'pt-deloitte-konsultan-indonesia', 'service_client');
INSERT INTO `dictionary` VALUES (1450, 'en', 'The Ocean Cleanup', 'the-ocean-cleanup', 'service_client');
INSERT INTO `dictionary` VALUES (1451, 'id', 'The Ocean Cleanup', 'the-ocean-cleanup', 'service_client');
INSERT INTO `dictionary` VALUES (1452, 'en', 'GA Circular', 'ga-circular', 'service_client');
INSERT INTO `dictionary` VALUES (1453, 'id', 'GA Circular', 'ga-circular', 'service_client');
INSERT INTO `dictionary` VALUES (1454, 'en', 'PT. Indonesia Power Up Suralaya', 'pt-indonesia-power-up-suralaya', 'service_client');
INSERT INTO `dictionary` VALUES (1455, 'id', 'PT. Indonesia Power Up Suralaya', 'pt-indonesia-power-up-suralaya', 'service_client');
INSERT INTO `dictionary` VALUES (1456, 'en', 'PT. Sarana Multi Daya, PT. Multi Karadiguna Jasa, PT. Prismaita Cipta Kreasi', 'pt-sarana-multi-daya-pt-multi-karadiguna-jasa-', 'service_client');
INSERT INTO `dictionary` VALUES (1457, 'id', 'PT. Sarana Multi Daya, PT. Multi Karadiguna Jasa, PT. Prismaita Cipta Kreasi', 'pt-sarana-multi-daya-pt-multi-karadiguna-jasa-', 'service_client');
INSERT INTO `dictionary` VALUES (1458, 'en', 'Greeneration Foundation, Coca-cola Foundation Indonesia', 'greeneration-foundation-coca-cola-foundation-indo', 'service_client');
INSERT INTO `dictionary` VALUES (1459, 'id', 'Greeneration Foundation, Coca-cola Foundation Indonesia', 'greeneration-foundation-coca-cola-foundation-indo', 'service_client');
INSERT INTO `dictionary` VALUES (1460, 'en', 'PT. Idee Murni Pratama, PT. Wijaya Karya, PT. Hutama Karya, PT. Waskita Karya, PT. Brantas Abipraya, PT. Adhi Karya, PT. Basuki Rahmanta Putra', 'pt-idee-murni-pratama-pt-wijaya-karya-pt-huta', 'service_client');
INSERT INTO `dictionary` VALUES (1461, 'id', 'PT. Idee Murni Pratama, PT. Wijaya Karya, PT. Hutama Karya, PT. Waskita Karya, PT. Brantas Abipraya, PT. Adhi Karya, PT. Basuki Rahmanta Putra', 'pt-idee-murni-pratama-pt-wijaya-karya-pt-huta', 'service_client');
INSERT INTO `dictionary` VALUES (1462, 'en', 'Yayasan Unilever Indonesia', 'yayasan-unilever-indonesia', 'service_client');
INSERT INTO `dictionary` VALUES (1463, 'id', 'Yayasan Unilever Indonesia', 'yayasan-unilever-indonesia', 'service_client');
INSERT INTO `dictionary` VALUES (1464, 'en', 'Embassy of Finland in Indonesia', 'embassy-of-finland-in-indonesia', 'service_client');
INSERT INTO `dictionary` VALUES (1465, 'id', 'Kedutaan Finlandia', 'embassy-of-finland-in-indonesia', 'service_client');
INSERT INTO `dictionary` VALUES (1466, 'en', 'PT. Galeri Museum Macan', 'pt-galeri-museum-macan', 'service_client');
INSERT INTO `dictionary` VALUES (1467, 'id', 'PT. Galeri Museum Macan', 'pt-galeri-museum-macan', 'service_client');
INSERT INTO `dictionary` VALUES (1468, 'en', 'PT. Bank DBS Indonesia', 'pt-bank-dbs-indonesia', 'service_client');
INSERT INTO `dictionary` VALUES (1469, 'id', 'PT. Bank DBS Indonesia', 'pt-bank-dbs-indonesia', 'service_client');
INSERT INTO `dictionary` VALUES (1470, 'en', '\r\nYSEALI (Young Southeast Asian Leader Initiative) Implemented by Divers Clean Action and hosted by US Embassy								', 'implemented-by-divers-clean-action-and-hosted-by-u', 'service_client');
INSERT INTO `dictionary` VALUES (1471, 'id', 'YSEALI (Young Southeast Asian Leader Initiative) Diselenggarakan oleh Divers Clean Action dan Kedutaan AS', 'implemented-by-divers-clean-action-and-hosted-by-u', 'service_client');
INSERT INTO `dictionary` VALUES (1472, 'en', 'Pick city available', 'pick-city-available', NULL);
INSERT INTO `dictionary` VALUES (1473, 'id', 'Pilih kota yang telah disediakan', 'pick-city-available', NULL);
INSERT INTO `dictionary` VALUES (1474, 'en', 'View Project', 'view-project', NULL);
INSERT INTO `dictionary` VALUES (1475, 'id', 'Lihat Proyek', 'view-project', NULL);
INSERT INTO `dictionary` VALUES (1476, 'en', 'Ramboll Danmark A/S', 'ramboll-danmark', 'service_client');
INSERT INTO `dictionary` VALUES (1477, 'id', 'Ramboll Danmark A/S', 'ramboll-danmark', 'service_client');
INSERT INTO `dictionary` VALUES (1478, 'en', 'Collect Waste Management', 'collect-waste-management', 'service_category');
INSERT INTO `dictionary` VALUES (1479, 'id', 'Collect Waste Management', 'collect-waste-management', 'service_category');
INSERT INTO `dictionary` VALUES (1480, 'en', 'Custom Waste Bin', 'custom-waste-bin', 'service_name');
INSERT INTO `dictionary` VALUES (1481, 'id', 'Custom Waste Bin', 'custom-waste-bin', 'service_name');
INSERT INTO `dictionary` VALUES (1482, 'en', 'Personal Waste Management', 'personal-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (1483, 'id', 'Personal Waste Management', 'personal-waste-management', 'service_name');
INSERT INTO `dictionary` VALUES (1484, 'en', 'Composting Tools & Supplies', 'composting-tools', 'service_name');
INSERT INTO `dictionary` VALUES (1485, 'id', 'Composting Tools & Supplies', 'composting-tools', 'service_name');
INSERT INTO `dictionary` VALUES (1486, 'en', 'Get the special waste bins designed specifically to support waste segregation to improve waste management in your area. Waste4Change provides special waste bins with educational instructions for waste-sorting needs. The design can be adjusted to the frequency and behavior of waste segregation in your area.', 'get-the-special-waste-bins-designed-specifically-t', 'service_description');
INSERT INTO `dictionary` VALUES (1487, 'id', 'Dapatkan tempat sampah yang didesain khusus untuk pemilahan sampah untuk tingkatkan pengelolaan sampah di area Anda. Waste4Change menyediakan tempat sampah dengan bentuk dan petunjuk edukasi untuk kebutuhan pemilahan sampah. Desain dapat disesuaikan dengan frekuensi dan perilaku pemilahan sampah di area Anda.', 'get-the-special-waste-bins-designed-specifically-t', 'service_description');
INSERT INTO `dictionary` VALUES (1488, 'en', 'Invite Visitors to Increase Waste Segregation with the Right Instructions', 'invite-visitors-to-increase-waste-segregation-with', 'service_slogan');
INSERT INTO `dictionary` VALUES (1489, 'id', 'Ajak Pengunjung Tingkatkan Pemilahan Sampah dengan Petunjuk yang Tepat', 'invite-visitors-to-increase-waste-segregation-with', 'service_slogan');
INSERT INTO `dictionary` VALUES (1490, 'en', 'Educate people around your area with a better message on your waste bin stickers. With better awareness and education, it will be easier for you to improve the waste segregation rate in your area. You can also request a design based on your brand guidelines or interior design.', 'educate-people-around-your-area-with-a-better-mess', 'service_about');
INSERT INTO `dictionary` VALUES (1491, 'id', 'Berikan edukasi yang tepat pada orang-orang di sekitar area Anda dengan pesan-pesan yang lebih baik pada stiker tempat sampah Anda. Ketika edukasi diberikan dengan pesan yang lebih baik, mereka akan lebih mudah memahami dan pada akhirnya dapat meningkatkan tingkat pemilahan di sekitar area Anda. ', 'educate-people-around-your-area-with-a-better-mess', 'service_about');
INSERT INTO `dictionary` VALUES (1492, 'en', 'A better waste management guidelines to improve waste segregation', 'a-better-waste-management-guidelines-to-improve-wa', 'service_benefit');
INSERT INTO `dictionary` VALUES (1493, 'id', 'Panduan memilah sampah untuk bantu tingkatkan pemilahan sampah', 'a-better-waste-management-guidelines-to-improve-wa', 'service_benefit');
INSERT INTO `dictionary` VALUES (1494, 'en', 'Custom design based on your brand guidelines or interior design', 'custom-design-based-on-your-brand-guidelines-or-in', 'service_benefit');
INSERT INTO `dictionary` VALUES (1495, 'id', 'Tempat sampah yang bisa dibuat sesuai keperluan brand atau panduan desain interior ', 'custom-design-based-on-your-brand-guidelines-or-in', 'service_benefit');
INSERT INTO `dictionary` VALUES (1496, 'en', '4 in 1 Capsule', '4-in-1-capsule', 'service_facility');
INSERT INTO `dictionary` VALUES (1497, 'id', '4 in 1 Capsule', '4-in-1-capsule', 'service_facility');
INSERT INTO `dictionary` VALUES (1498, 'en', 'Tube', 'tube', 'service_facility');
INSERT INTO `dictionary` VALUES (1499, 'id', 'Tube', 'tube', 'service_facility');
INSERT INTO `dictionary` VALUES (1500, 'en', '3 in 1 Capsule', '3-in-1-capsule', 'service_facility');
INSERT INTO `dictionary` VALUES (1501, 'id', '3 in 1 Capsule', '3-in-1-capsule', 'service_facility');
INSERT INTO `dictionary` VALUES (1502, 'en', 'Custom/tailor made bin', 'customtailor-made-bin', 'service_facility');
INSERT INTO `dictionary` VALUES (1503, 'id', 'Custom/tailor made bin', 'customtailor-made-bin', 'service_facility');
INSERT INTO `dictionary` VALUES (1504, 'en', '2 in 1 Capsule', '2-in-1-capsule', 'service_facility');
INSERT INTO `dictionary` VALUES (1505, 'id', '2 in 1 Capsule', '2-in-1-capsule', 'service_facility');
INSERT INTO `dictionary` VALUES (1506, 'en', 'Making sure that your inorganic waste is recycled will be easier with Personal Waste Management services from Waste4Change. Segregate your waste and Waste4Change will pick up your inorganic waste regularly--straight from your home! This program is only available in the areas of <strong>South Jakarta, South Tangerang and Bekasi</strong>.', 'making-sure-that-your-inorganic-waste-is-recycled-', 'service_description');
INSERT INTO `dictionary` VALUES (1507, 'id', 'Memastikan sampah anorganikmu didaur ulang jadi lebih mudah dengan jasa Personal Waste Management dari Waste4Change. Pilah sampahmu dan Waste4Change akan menjemput sampah anorganikmu secara rutin-langsung ke rumahmu! Program ini hanya tersedia di wilayah <strong>Jakarta Selatan, Tangerang Selatan, dan Bekasi</strong>.', 'making-sure-that-your-inorganic-waste-is-recycled-', 'service_description');
INSERT INTO `dictionary` VALUES (1508, 'en', 'No More Mixed Waste Collection', 'no-more-mixed-waste-collection', 'service_slogan');
INSERT INTO `dictionary` VALUES (1509, 'id', 'Tidak Ada Lagi Sampah yang Diangkut dalam Kondisi Tercampur ', 'no-more-mixed-waste-collection', 'service_slogan');
INSERT INTO `dictionary` VALUES (1510, 'en', 'Responsible waste management starts with waste segregation. That is why, waste segregation needs to be done from the source, in this case: your house.Through the Personal Waste Management (PWM) service, you can segregate your waste at home and we will ensure the collection of your inorganic waste every week. Later, your waste will be responsibly managed by Waste4Change.', 'responsible-waste-management-starts-with-waste-seg', 'service_about');
INSERT INTO `dictionary` VALUES (1511, 'id', 'Pengelolaan sampah yang bertanggung jawab dimulai dari pemilahan sampah. Itulah sebabnya, pemilahan perlu dilakukan sejak dari sumber, dalam hal ini: rumah. Melalui layanan Personal Waste Management (PWM), Anda dapat memulai pemilahan sampah di rumah dan kami akan memastikan adanya pengangkutan sampah anorganik setiap minggunya. Nantinya, sampah Anda akan dikelola oleh Waste4Change secara bertanggung jawab.', 'responsible-waste-management-starts-with-waste-seg', 'service_about');
INSERT INTO `dictionary` VALUES (1512, 'en', '100% segregated INORGANIC waste', '100-segregated-inorganic-waste', 'service_benefit');
INSERT INTO `dictionary` VALUES (1513, 'id', 'pemilahan sampah ANORGANIK 100%', '100-segregated-inorganic-waste', 'service_benefit');
INSERT INTO `dictionary` VALUES (1514, 'en', 'Reduce volume of waste into landfill', 'reduce-volume-of-waste-into-landfill', 'service_benefit');
INSERT INTO `dictionary` VALUES (1515, 'id', 'Mengurangi timbulan sampah yang dibuang ke TPA', 'reduce-volume-of-waste-into-landfill', 'service_benefit');
INSERT INTO `dictionary` VALUES (1516, 'en', 'Improve recycling rate', 'improve-recycling-rate', 'service_benefit');
INSERT INTO `dictionary` VALUES (1517, 'id', 'Meningkatkan tingkat daur ulang ', 'improve-recycling-rate', 'service_benefit');
INSERT INTO `dictionary` VALUES (1518, 'en', 'Prolong material life by recycling', 'prolong-material-life-by-recycling', 'service_benefit');
INSERT INTO `dictionary` VALUES (1519, 'id', 'Memperpanjang usia pakai material melalui daur ulang', 'prolong-material-life-by-recycling', 'service_benefit');
INSERT INTO `dictionary` VALUES (1520, 'en', 'Improve the welfare of waste management operators', 'improve-waste-collector-recycler-jobs', 'service_benefit');
INSERT INTO `dictionary` VALUES (1521, 'id', 'Meningkatkan kesejahteraan operator manajemen sampah\r\n', 'improve-waste-collector-recycler-jobs', 'service_benefit');
INSERT INTO `dictionary` VALUES (1522, 'en', 'Inorganic Trash Bags', 'inorganic-trash-bags', 'service_facility');
INSERT INTO `dictionary` VALUES (1523, 'id', 'Kantong Sampah Anorganik', 'inorganic-trash-bags', 'service_facility');
INSERT INTO `dictionary` VALUES (1524, 'en', '1 iron-frame', '1-iron-frame', 'service_facility');
INSERT INTO `dictionary` VALUES (1525, 'id', '1 rangka besi', '1-iron-frame', 'service_facility');
INSERT INTO `dictionary` VALUES (1526, 'en', 'Waste collection in a segregated state every week', 'waste-collection-in-a-segregated-state-every-week', 'service_facility');
INSERT INTO `dictionary` VALUES (1527, 'id', 'Pengangkutan sampah dalam kondisi terpilah setiap minggu', 'waste-collection-in-a-segregated-state-every-week', 'service_facility');
INSERT INTO `dictionary` VALUES (1528, 'en', 'Waste4Change provides home-composting equipment and supplies for those of you who want to help optimize organic waste management.', 'waste4change-provides-composting-tools-for-those-o', 'service_description');
INSERT INTO `dictionary` VALUES (1529, 'id', 'Waste4Change menyediakan peralatan dan perlengkapan pengomposan mandiri di rumah untuk Anda yang ingin bantu optimalkan pengelolaan sampah organik.', 'waste4change-provides-composting-tools-for-those-o', 'service_description');
INSERT INTO `dictionary` VALUES (1530, 'en', 'Divert Organic Waste from Landfill with Composting', 'divert-organic-waste-from-landfill-with-composting', 'service_slogan');
INSERT INTO `dictionary` VALUES (1531, 'id', 'Selamatkan Sampah Organik dari TPA dengan Mengompos ', 'divert-organic-waste-from-landfill-with-composting', 'service_slogan');
INSERT INTO `dictionary` VALUES (1532, 'en', 'Once the organic waste has already been segregated from the rest of the waste, it becomes valuable. The value of the organic materials can be enhanced for your garden by processing it through composting. One of the benefits of waste segregation is to increase the number of valuable materials for recycling purposes and circular economy. Or you can also learn to manage organic waste using Black Soldier Flies (BSF) by enrolling in our BSF Training Class at BSF Learning Center', 'once-the-organic-waste-has-already-been-segregated', 'service_about');
INSERT INTO `dictionary` VALUES (1533, 'id', 'Setelah sampah organik sudah dipilah dan dipisahkan dari seluruh sampah lainnya, materialnya akan menjadi bernilai. Nilai dari material organik yang terkandung di dalamnya dapat ditingkatkan melalui proses mengompos. Peralatan kompos Waste4Change dapat membantu Anda menghasilkan kompos secara aerobic (dengan bantuan oksigen) menggunakan Composting Bag Waste4Change. Atau Anda pun juga dapat belajar untuk mengelola sampah organik menggunakan Black Soldier Flies (BSF) dengan mendaftar pada pelatihan di BSF Learning Center.', 'once-the-organic-waste-has-already-been-segregated', 'service_about');
INSERT INTO `dictionary` VALUES (1534, 'en', 'Reducing waste that ends up in the landfill', 'reducing-waste-that-ends-up-in-the-landfill', 'service_benefit');
INSERT INTO `dictionary` VALUES (1535, 'id', 'Mengurangi timbulan sampah yang dibuang ke TPA', 'reducing-waste-that-ends-up-in-the-landfill', 'service_benefit');
INSERT INTO `dictionary` VALUES (1536, 'en', 'Making simple compost that you can use in your own planter/ garden', 'compost-that-can-be-used-for-gardens-parks', 'service_benefit');
INSERT INTO `dictionary` VALUES (1537, 'id', 'Membuat kompos skala kecil yang bisa digunakan di pot/ kebun sendiri', 'compost-that-can-be-used-for-gardens-parks', 'service_benefit');
INSERT INTO `dictionary` VALUES (1538, 'en', 'Compost Bag', 'compost-bag', 'service_facility');
INSERT INTO `dictionary` VALUES (1539, 'id', 'Compost Bag', 'compost-bag', 'service_facility');
INSERT INTO `dictionary` VALUES (1540, 'en', 'Compost kit starter pack', 'compost-kit-starter-pack', 'service_facility');
INSERT INTO `dictionary` VALUES (1541, 'id', 'Kompos Starter Kit', 'compost-kit-starter-pack', 'service_facility');
INSERT INTO `dictionary` VALUES (1542, 'en', 'Black Soldier Flies larvae (optional)', 'black-soldier-flies-larvae-optional', 'service_facility');
INSERT INTO `dictionary` VALUES (1543, 'id', 'Larva Black Soldier Flies (opsional)', 'black-soldier-flies-larvae-optional', 'service_facility');
INSERT INTO `dictionary` VALUES (1552, 'en', 'Get It Now', 'get-it-now', 'service_cta');
INSERT INTO `dictionary` VALUES (1553, 'id', 'Pesan Sekarang', 'get-it-now', 'service_cta');
INSERT INTO `dictionary` VALUES (1554, 'en', 'Subscribe Now', 'subscribe-now', 'service_cta');
INSERT INTO `dictionary` VALUES (1555, 'id', 'Berlangganan Sekarang', 'subscribe-now', 'service_cta');
INSERT INTO `dictionary` VALUES (1556, 'en', 'Design your custom waste bin now!', 'design-your-custom-waste-bin-now!', 'service_cta');
INSERT INTO `dictionary` VALUES (1557, 'id', 'Desain Custom Waste Bin Anda sekarang juga!            ', 'design-your-custom-waste-bin-now!', 'service_cta');
INSERT INTO `dictionary` VALUES (1558, 'en', 'Start your personal waste management now!', 'start-your-personal-waste-management-now!', 'service_cta');
INSERT INTO `dictionary` VALUES (1559, 'id', 'Mulai Personal Waste Management di rumah Anda sekarang!', 'start-your-personal-waste-management-now!', 'service_cta');
INSERT INTO `dictionary` VALUES (1560, 'en', 'Start your composting now!', 'start-your-composting-now!', 'service_cta');
INSERT INTO `dictionary` VALUES (1561, 'id', 'Mulai mengompos sekarang juga!', 'start-your-composting-now!', 'service_cta');
INSERT INTO `dictionary` VALUES (1562, 'en', 'Design your', 'design', 'service_cta');
INSERT INTO `dictionary` VALUES (1563, 'id', 'Desain', 'design', 'service_cta');
INSERT INTO `dictionary` VALUES (1564, 'en', 'in your house', 'in-your-house', 'service_cta');
INSERT INTO `dictionary` VALUES (1565, 'id', 'di rumah', 'in-your-house', 'service_cta');
INSERT INTO `dictionary` VALUES (1566, 'en', 'Composting', 'composting', 'service_cta');
INSERT INTO `dictionary` VALUES (1567, 'id', 'Mengompos', 'composting', 'service_cta');
INSERT INTO `dictionary` VALUES (1568, 'en', 'now!', 'now', 'service_cta');
INSERT INTO `dictionary` VALUES (1569, 'id', 'sekarang juga!', 'now', 'service_cta');
INSERT INTO `dictionary` VALUES (1570, 'en', 'in your house now!', 'in-your-house-now', 'service_cta');
INSERT INTO `dictionary` VALUES (1571, 'id', 'di rumah Anda sekarang!', 'in-your-house-now', 'service_cta');
INSERT INTO `dictionary` VALUES (1572, 'en', 'Waste Bin Option', 'waste-bin-option', 'service_section');
INSERT INTO `dictionary` VALUES (1573, 'id', 'Pilihan Waste Bin', 'waste-bin-option', 'service_section');
INSERT INTO `dictionary` VALUES (1574, 'en', 'To improve waste segregation, the following are the types of segregated bins that can be selected', 'to-improve-waste-segregation, the following are the types of segregated', 'service_wasbin');
INSERT INTO `dictionary` VALUES (1575, 'id', 'Untuk meningkatkan pemilahan sampah, berikut adalah jenis tempat sampah terpilah yang bisa menjadi pilihan', 'to-improve-waste-segregation, the following are the types of segregated', 'service_wasbin');
INSERT INTO `dictionary` VALUES (1576, 'en', 'Easy to compost on a small scale in various places without the need for land or large space', 'easy-to-compost-on-a-small-scale', 'servive_benefit');
INSERT INTO `dictionary` VALUES (1577, 'id', 'Mudah mengompos dalam skala kecil di berbagai tempat tanpa membutuhkan lahan atau tempat luas', 'easy-to-compost-on-a-small-scale', 'servive_benefit');
INSERT INTO `dictionary` VALUES (1578, 'en', 'Latest news on waste management from Waste4Change', 'latest-news-on-waste-management-from-waste4change', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1579, 'id', 'Berita terbaru seputar pengelolaan sampah dari Waste4Change', 'latest-news-on-waste-management-from-waste4change', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1580, 'en', 'A social entrepreneur that provides responsible waste management services', 'a-social-entrepreneur-that-provides-responsible-waste-management-services', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1581, 'id', 'Perusahaan sosial yang menyediakan pengelolaan sampah secara bertanggung jawab', 'a-social-entrepreneur-that-provides-responsible-waste-management-services', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1582, 'en', 'Program Assistance for 3Rs (Reduce Reuse Recycle) Implementation in Schools', 'program-assistance-for-3rs-reduce-reuse-recycle-implementation-in-schools', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1583, 'id', 'Pendampingan Implementasi Konsep 3R (Reduce Reuse Recycle) untuk Sekolah-sekolah', 'program-assistance-for-3rs-reduce-reuse-recycle-implementation-in-schools', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1584, 'en', 'Waste management assistance for institutions', 'waste-management-assistance-for-institutions', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1585, 'id', 'Pendampingan Materi Terkait Pengelolaan Sampah untuk Institusi', 'waste-management-assistance-for-institutions', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1586, 'en', 'Waste Management Educational Class for Institutions', 'waste-management-educational-class-for-institutions', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1587, 'id', 'Kelas Edukasi Manajemen Sampah untuk Institusi', 'waste-management-educational-class-for-institutions', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1588, 'en', 'Waste Management Educational Class for the General Public', 'waste-management-educational-class-for-the-general-public', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1589, 'id', 'Kelas Edukasi Manajemen Sampah untuk Masyarakat Umum', 'waste-management-educational-class-for-the-general-public', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1590, 'en', 'Waste Management Education and Tour for The General Public', 'waste-management-education-and-tour-for-the-general-public', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1591, 'id', 'Edukasi dan Tur Manajemen Sampah untuk Umum', 'waste-management-education-and-tour-for-the-general-public', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1592, 'en', 'Waste Management Education and Tour for Institutions', 'waste-management-education-and-tour-for-institutions', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1593, 'id', 'Edukasi dan Tur Manajemen Sampah untuk Institusi', 'waste-management-education-and-tour-for-institutions', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1594, 'en', 'Waste management assistance for communities', 'waste-management-assistance-for-communities', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1595, 'id', 'Pendampingan Materi Terkait Pengelolaan Sampah untuk Institusi untuk Komunitas', 'waste-management-assistance-for-communities', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1596, 'en', 'Waste management assistance for tourism sites/area', 'waste-management-assistance-for-tourism-sitesarea', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1597, 'id', 'Pendampingan Materi Terkait Pengelolaan Sampah untuk Daerah/Area Wisata', 'waste-management-assistance-for-tourism-sitesarea', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1598, 'en', 'Solid Waste Management Research and Study on Marine Debris', 'solid-waste-management-research-and-study-on-marine-debris', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1599, 'id', 'Riset dan Studi Manajemen Pengelolaan Limbah Padat di Sungai dan Laut', 'solid-waste-management-research-and-study-on-marine-debris', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1600, 'en', 'Solid waste management study and research for tourism sites/area', 'solid-waste-management-study-and-research-for-tourism-sitesarea', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1601, 'id', 'Riset dan Studi Manajemen Pengelolaan Limbah Padat  untuk Area/Destinasi Wisata', 'solid-waste-management-study-and-research-for-tourism-sitesarea', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1602, 'en', 'Solid waste management research and study for Institutions', 'solid-waste-management-research-and-study-for-institutions', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1603, 'id', 'Riset dan Studi Manajemen Pengelolaan Limbah Padat  untuk Institusi', 'solid-waste-management-research-and-study-for-institutions', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1604, 'en', 'Waste Management Research and Study for Waste-to-Energy', 'waste-management-research-and-study-for-waste-to-energy', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1605, 'id', 'Riset dan Studi Manajemen Pengelolaan Limbah Padat  untuk Sampah Menjadi Energi', 'waste-management-research-and-study-for-waste-to-energy', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1606, 'en', 'Waste management assistance for regions and/or districts', 'waste-management-assistance-for-regions-andor-districts', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1607, 'id', 'Pendampingan Materi Terkait Pengelolaan Sampah untuk Daerah', 'waste-management-assistance-for-regions-andor-districts', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1608, 'en', 'Solid waste management research and study based on value chain analysis', 'solid-waste-management-research-and-study-based-on-value-chain-analysis', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1609, 'id', 'Riset dan Studi Manajemen Pengelolaan Limbah Padat  Berdasar Analisis Rantai Nilai', 'solid-waste-management-research-and-study-based-on-value-chain-analysis', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1610, 'en', 'A list of Waste4Change\'s waste management services', 'a-list-of-waste4changes-waste-management-services', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1611, 'id', 'Daftar layanan pengelolaan sampah Waste4Change', 'a-list-of-waste4changes-waste-management-services', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1612, 'en', 'A list of Waste4Change\'s waste management services for companies, institutions, schools, businesses, and foundation', 'a-list-of-waste4changes-waste-management-services-for-companies-institutions-schools-businesses-and-foundation', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1613, 'id', 'Daftar layanan pengelolaan sampah Waste4Change untuk perusahaan, institusi, sekolah, bisnis, dan lembaga', 'a-list-of-waste4changes-waste-management-services-for-companies-institutions-schools-businesses-and-foundation', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1614, 'en', 'A list of Waste4Change\'s waste management services for individual', 'a-list-of-waste4changes-waste-management-services-for-individual', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1615, 'id', 'Daftar layanan pengelolaan sampah Waste4Change untuk individu', 'a-list-of-waste4changes-waste-management-services-for-individual', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1616, 'en', 'Education and assistance in order to implement the 3Rs (Reduce, Reuse, Recycle) concept at school', 'education-and-assistance-in-order-to-implement-the-3rs-reduce-reuse-recycle-concept-at-school', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1617, 'id', 'Edukasi dan pendampingan untuk implementasi konsep 3R di sekolah', 'education-and-assistance-in-order-to-implement-the-3rs-reduce-reuse-recycle-concept-at-school', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1618, 'en', 'Educational program and field visit to see the waste management process at Waste4Change', 'educational-program-and-field-visit-to-see-the-waste-management-process-at-waste4change', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1619, 'id', 'Edukasi dan melihat langsung pengelolaan sampah di Waste4Change', 'educational-program-and-field-visit-to-see-the-waste-management-process-at-waste4change', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1620, 'en', 'Educational session on organic waste decomposition using Black Soldier Fly (BSF)', 'educational-session-on-organic-waste-decomposition-using-black-soldier-fly-bsf', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1621, 'id', 'Edukasi penguraian sampah organik menggunakan Black Soldier Fly (BSF)', 'educational-session-on-organic-waste-decomposition-using-black-soldier-fly-bsf', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1622, 'en', 'Education and assistance to reduce waste from the source', 'education-and-assistance-to-reduce-waste-from-the-source', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1623, 'id', 'Edukasi dan Pendampingan untuk kurangi sampah dari sumber', 'education-and-assistance-to-reduce-waste-from-the-source', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1624, 'en', 'Reduce your organic waste through home composting', 'reduce-your-organic-waste-through-home-composting', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1625, 'id', 'Kurangi produksi sampah organik dengan mengompos', 'reduce-your-organic-waste-through-home-composting', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1626, 'en', 'Custom waste bins with clear and precise waste segregation guide', 'custom-waste-bins-with-clear-and-precise-waste-segregation-guide', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1627, 'id', 'Tempat sampah khusus dengan petunjuk pemilahan yang tepat', 'custom-waste-bins-with-clear-and-precise-waste-segregation-guide', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1628, 'en', 'Recycling of brand-labeled waste with the help of technology', 'recycling-of-brand-labeled-waste-with-the-help-of-technology', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1629, 'id', 'Daur ulang sampah berlabel merek dengan dukungan teknologi', 'recycling-of-brand-labeled-waste-with-the-help-of-technology', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1630, 'en', 'Segregated and responsible waste management and waste education at one\'s event', 'segregated-and-responsible-waste-management-and-waste-education-at-ones-event', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1631, 'id', 'Pengelolaan dan edukasi sampah acara secara terpilah dan bertanggung jawab', 'segregated-and-responsible-waste-management-and-waste-education-at-ones-event', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1632, 'en', 'Recycling of brand-labeled waste', 'recycling-of-brand-labeled-waste', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1633, 'id', 'Daur ulang sampah berlabel merek perusahaan', 'recycling-of-brand-labeled-waste', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1634, 'en', 'Inorganic waste management with optimal segregation', 'inorganic-waste-management-with-optimal-segregation', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1635, 'id', 'Pengelolaan sampah anorganik dengan pemilahan yang optimal', 'inorganic-waste-management-with-optimal-segregation', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1636, 'en', 'Waste collection straight from your doorstep', 'waste-collection-straight-from-your-doorstep', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1637, 'id', 'Penjemputan sampah langsung dari rumah', 'waste-collection-straight-from-your-doorstep', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1638, 'en', 'An optimal waste management program along with the waste flow report', 'an-optimal-waste-management-program-along-with-the-waste-flow-report', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1639, 'id', 'Program pengelolaan sampah secara optimal beserta pelaporan alur sampah', 'an-optimal-waste-management-program-along-with-the-waste-flow-report', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1640, 'en', 'Waste management research by incorporating environmental aspects', 'waste-management-research-by-incorporating-environmental-aspects', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1641, 'id', 'Penelitian pengelolaan sampah dengan mempertimbangkan aspek lingkungan', 'waste-management-research-by-incorporating-environmental-aspects', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1642, 'en', 'Waste management program that prevents waste from ending up in landfills', 'waste-management-program-that-prevents-waste-from-ending-up-in-landfills', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1643, 'id', 'Program pengelolaan sampah yang mencegah sampah berakhir di TPA', 'waste-management-program-that-prevents-waste-from-ending-up-in-landfills', 'service_meta_title');
INSERT INTO `dictionary` VALUES (1644, 'en', 'Featuring latest news, tips, and research regarding waste management from Waste4Change', 'featuring-latest-news-tips-and-research-regarding-waste-management-from-waste4change', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1645, 'id', 'Berita terbaru, tips, dan studi seputar pengelolaan sampah dari Waste4Change', 'featuring-latest-news-tips-and-research-regarding-waste-management-from-waste4change', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1646, 'en', 'A social entrepreneur that provides segregated and responsible waste management services by reducing the amount of waste that end up in landfills', 'a-social-entrepreneur-that-provides-segregated-and-responsible-waste-management-services-by-reducing-the-amount-of-waste-that-end-up-in-landfills', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1647, 'id', 'Perusahaan sosial yang menyediakan jasa pengolahan sampah terpilah secara bertanggung jawab dengan mengurangi timbunan sampah di TPA', 'a-social-entrepreneur-that-provides-segregated-and-responsible-waste-management-services-by-reducing-the-amount-of-waste-that-end-up-in-landfills', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1648, 'en', 'Program Assistance for 3Rs (Reduce Reuse Recycle) Implementation in Schools with Unilever Indonesia', 'program-assistance-for-3rs-reduce-reuse-recycle-implementation-in-schools-with-unilever-indonesia', '');
INSERT INTO `dictionary` VALUES (1649, 'id', 'Pendampingan Implementasi Konsep 3R (Reduce Reuse Recycle) Sekolah bersama Unilever Indonesia', 'program-assistance-for-3rs-reduce-reuse-recycle-implementation-in-schools-with-unilever-indonesia', '');
INSERT INTO `dictionary` VALUES (1650, 'en', 'Counseling and socialization of the 3Rs Concept in Suralaya together with PT Indonesia Powerup Suralaya', 'counseling-and-socialization-of-the-3rs-concept-in-suralaya-together-with-pt-indonesia-powerup-suralaya', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1651, 'id', 'Penyuluhan Konsep 3R di Desa Suralaya Bersama PT Indonesia Powerup Suralaya', 'counseling-and-socialization-of-the-3rs-concept-in-suralaya-together-with-pt-indonesia-powerup-suralaya', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1652, 'en', 'Waste Management Educational Class for the Staffs at the Embassy of Finland in Jakarta as a part of the waste collection service', 'waste-management-educational-class-for-the-staffs-at-the-embassy-of-finland-in-jakarta-as-a-part-of-the-waste-collection-service', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1653, 'id', 'Edukasi Manajemen Sampah untuk Pegawai Kedutaan Besar Finlandia di Jakarta sebagai bagian dari servis pengangkutan sampah', 'waste-management-educational-class-for-the-staffs-at-the-embassy-of-finland-in-jakarta-as-a-part-of-the-waste-collection-service', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1654, 'en', 'Waste Management Education for Seminar Participants at the Museum of Modern and Contemporary Art in Nusantara (MACAN)', 'waste-management-education-for-seminar-participants-at-the-museum-of-modern-and-contemporary-art-in-nusantara-macan', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1655, 'id', 'Edukasi Manajemen Sampah untuk peserta seminar di Museum of Modern and Contemporary Art in Nusantara (MACAN)', 'waste-management-education-for-seminar-participants-at-the-museum-of-modern-and-contemporary-art-in-nusantara-macan', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1656, 'en', 'Waste Management Education and Tour for YSEALI Workshop\'s Participants', 'waste-management-education-and-tour-for-yseali-workshops-participants', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1657, 'id', 'Edukasi & Tur Manajemen Sampah untuk peserta workshop YSEALI', 'waste-management-education-and-tour-for-yseali-workshops-participants', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1658, 'en', 'Waste Management Education and Tour for the Employess of DBS Bank Indonesia', 'waste-management-education-and-tour-for-the-employess-of-dbs-bank-indonesia', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1659, 'id', 'Edukasi & Tur Manajemen Sampah untuk pegawai Bank DBS Indonesia', 'waste-management-education-and-tour-for-the-employess-of-dbs-bank-indonesia', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1660, 'en', 'Capacity building Regarding Waste Management in Indonesia\'s frontline territories', 'capacity-building-regarding-waste-management-in-indonesias-frontline-territories', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1661, 'id', 'Peningkatan Kapasitas Sumber Daya Manusia terkait Pengelolaan Sampah di Wilayah Terdepan Indonesia', 'capacity-building-regarding-waste-management-in-indonesias-frontline-territories', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1662, 'en', 'The formation of Ecoranger in Pulau Merah Banyuwangi to Help Reduce Waste from the Source', 'the-formation-of-ecoranger-in-pulau-merah-banyuwangi-to-help-reduce-waste-from-the-source', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1663, 'id', 'Pembentukan Tim Ecoranger di Pulau Merah Banyuwangi untuk Bantu Kurangi Sampah dari Sumber', 'the-formation-of-ecoranger-in-pulau-merah-banyuwangi-to-help-reduce-waste-from-the-source', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1664, 'en', 'Study on Riverine plastic emission from Jakarta into the ocean with The Ocean Cleanup', 'study-on-riverine-plastic-emission-from-jakarta-into-the-ocean-with-the-ocean-cleanup', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1665, 'id', 'Proyek Pemantauan Sampah Plastik di Sungai-Sungai di Jakarta bersama The Ocean Cleanup', 'study-on-riverine-plastic-emission-from-jakarta-into-the-ocean-with-the-ocean-cleanup', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1666, 'en', 'Waste Management Plan for the revitalization of Masjid Jami and Beting village in Pontianak', 'waste-management-plan-for-the-revitalization-of-masjid-jami-and-beting-village-in-pontianak', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1667, 'id', 'Rancangan Pengelolaan Sampah untuk Program Revitalisasi di Masjid Jami\' dan Permukiman Beting di Pontianak', 'waste-management-plan-for-the-revitalization-of-masjid-jami-and-beting-village-in-pontianak', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1668, 'en', 'Solid waste management study at Pelabuhan Indonesia II Headquarter to implement the 3Rs Concept', 'solid-waste-management-study-at-pelabuhan-indonesia-ii-headquarter-to-implement-the-3rs-concept', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1669, 'id', 'Studi Pengelolaan Limbah Padat di Kantor Pusat Pelabuhan Indonesia II untuk mengimplementasikan konsep 3R', 'solid-waste-management-study-at-pelabuhan-indonesia-ii-headquarter-to-implement-the-3rs-concept', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1670, 'en', 'Feasibility Study for ITF Sunter Jakarta to make Waste-to-Energy Technology', 'feasibility-study-for-itf-sunter-jakarta-to-make-waste-to-energy-technology', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1671, 'id', 'Uji Kelayakan untuk ITF Sunter Jakarta untuk Pengadaan Teknologi Sampah Menjadi Energi', 'feasibility-study-for-itf-sunter-jakarta-to-make-waste-to-energy-technology', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1672, 'en', 'TPS 3R Assistance in Kalimantan, Jawa, Nusa Tenggara, Sulawesi, Maluku & Papua to Reduce Waste from the Source', 'tps-3r-assistance-in-kalimantan-jawa-nusa-tenggara-sulawesi-maluku-papua-to-reduce-waste-from-the-source', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1673, 'id', 'Pendampingan TPS 3R di Kalimantan, Jawa, Nusa Tenggara, Sulawesi, Maluku & Papua untuk Kurangi Sampah dari Sumber', 'tps-3r-assistance-in-kalimantan-jawa-nusa-tenggara-sulawesi-maluku-papua-to-reduce-waste-from-the-source', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1674, 'en', 'Waste Management Study and Stakeholder as well as Waste Flow Mapping in Jakarta and Surabaya ', 'waste-management-study-and-stakeholder-as-well-as-waste-flow-mapping-in-jakarta-and-surabaya-', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1675, 'id', 'Studi Manajemen Sampah dan Pemetaan Pemangku Kepentingan dan Alur Sampah di Jakarta dan Surabaya', 'waste-management-study-and-stakeholder-as-well-as-waste-flow-mapping-in-jakarta-and-surabaya-', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1676, 'en', 'A list of Waste4Change\'s waste management services, from waste education, waste research, waste collection, and waste recycling.', 'a-list-of-waste4changes-waste-management-services-from-waste-education-waste-research-waste-collection-and-waste-recycling', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1677, 'id', 'Daftar layanan pengelolaan sampah Waste4Change mulai dari edukasi, studi, pengangkutan dan daur ulang', 'a-list-of-waste4changes-waste-management-services-from-waste-education-waste-research-waste-collection-and-waste-recycling', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1678, 'en', 'A list of Waste4Change\'s waste management services for companies, institutions, schools, businesses, and foundation, from waste education, waste research, waste collection, and waste recycling', 'a-list-of-waste4changes-waste-management-services-for-companies-institutions-schools-businesses-and-foundation-from-waste-education-waste-research-waste-collection-and-waste-recycling', '');
INSERT INTO `dictionary` VALUES (1679, 'id', 'Daftar layanan pengelolaan sampah Waste4Change untuk perusahaan, institusi, sekolah, bisnis, dan lembaga mulai dari edukasi, studi, pengangkutan dan daur ulang', 'a-list-of-waste4changes-waste-management-services-for-companies-institutions-schools-businesses-and-foundation-from-waste-education-waste-research-waste-collection-and-waste-recycling', '');
INSERT INTO `dictionary` VALUES (1680, 'en', 'A list of Waste4Change\'s waste management services for individual, from waste drop points, waste delivery, and door-to-door waste collection', 'a-list-of-waste4changes-waste-management-services-for-individual-from-waste-drop-points-waste-delivery-and-door-to-door-waste-collection', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1681, 'id', 'Daftar layanan pengelolaan sampah Waste4Change untuk individu, mulai dari titik drop sampah, pengiriman sampah, hingga penjemputan sampah ke rumah', 'a-list-of-waste4changes-waste-management-services-for-individual-from-waste-drop-points-waste-delivery-and-door-to-door-waste-collection', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1682, 'en', 'Sustainable educational and assistance program to implement the 3Rs (Reduce, Reuse, Recycle) concept at school', 'sustainable-educational-and-assistance-program-to-implement-the-3rs-reduce-reuse-recycle-concept-at-school', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1683, 'id', 'Edukasi dan pendampingan berkelanjutan untuk implementasi konsep 3R (Reduce, Reuse, Recycle) di sekolah', 'sustainable-educational-and-assistance-program-to-implement-the-3rs-reduce-reuse-recycle-concept-at-school', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1684, 'en', 'Educational program and field visit to see the waste management process at Waste4Change as well as landfills', 'educational-program-and-field-visit-to-see-the-waste-management-process-at-waste4change-as-well-as-landfills', '');
INSERT INTO `dictionary` VALUES (1685, 'id', 'Edukasi dan melihat langsung pengelolaan sampah di Waste4Change dan TPA', 'educational-program-and-field-visit-to-see-the-waste-management-process-at-waste4change-as-well-as-landfills', '');
INSERT INTO `dictionary` VALUES (1686, 'en', 'Educational services on organic waste management decomposition and the cultivation of the Black Soldier Fly (BSF)', 'educational-services-on-organic-waste-management-decomposition-and-the-cultivation-of-the-black-soldier-fly-bsf', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1687, 'id', 'Edukasi penguraian sampah organik menggunakan Black Soldier Fly (BSF)', 'educational-services-on-organic-waste-management-decomposition-and-the-cultivation-of-the-black-soldier-fly-bsf', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1688, 'en', 'Sustainable education and assistance program to reduce waste from the source', 'sustainable-education-and-assistance-program-to-reduce-waste-from-the-source', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1689, 'id', 'Edukasi dan pendampingan berkelanjutan untuk kurangi sampah dari sumber', 'sustainable-education-and-assistance-program-to-reduce-waste-from-the-source', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1690, 'en', 'Reduce your volume of organic waste by composting at home', 'reduce-your-volume-of-organic-waste-by-composting-at-home', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1691, 'id', 'Kurangi produksi sampah organik dengan mengompos sendiri di rumah', 'reduce-your-volume-of-organic-waste-by-composting-at-home', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1692, 'en', 'Recycle your brand-labeled waste with the help of technology to make it more accessible and sustainable', 'recycle-your-brand-labeled-waste-with-the-help-of-technology-to-make-it-more-accessible-and-sustainable', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1693, 'id', 'Daur ulang sampah berlabel merek dengan dukungan teknologi yang memungkinkan jangkauan lebih luas dan berkelanjutan', 'recycle-your-brand-labeled-waste-with-the-help-of-technology-to-make-it-more-accessible-and-sustainable', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1694, 'en', 'Waste management program through the placement of segregated waste bins in crowded places as well as educational booth during the event', 'waste-management-program-through-the-placement-of-segregated-waste-bins-in-crowded-places-as-well-as-educational-booth-during-the-event', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1695, 'id', 'Program pengelolaan sampah melalui tempat sampah terpilah yang telah disediakan di titik keramaian acara dan pengadaan booth edukasi selama acara berlangsung', 'waste-management-program-through-the-placement-of-segregated-waste-bins-in-crowded-places-as-well-as-educational-booth-during-the-event', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1696, 'en', 'Recycle your brand-labeled waste to prevent it from being mishandled and ending up in landfills', 'recycle-your-brand-labeled-waste-to-prevent-it-from-being-mishandled-and-ending-up-in-landfills', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1697, 'id', 'Daur ulang sampah berlabel merek perusahaan Anda agar tidak disalahgunakan dan tidak berakhir di TPA', 'recycle-your-brand-labeled-waste-to-prevent-it-from-being-mishandled-and-ending-up-in-landfills', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1698, 'en', 'Inorganic waste management with optimal segregation and a complete waste flow report', 'inorganic-waste-management-with-optimal-segregation-and-a-complete-waste-flow-report', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1699, 'id', 'Pengelolaan sampah anorganik dengan pemilahan sampah yang optimal dan pelaporan alur sampah yang lengkap', 'inorganic-waste-management-with-optimal-segregation-and-a-complete-waste-flow-report', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1700, 'en', 'Responsible door-to-door waste collection and management', 'responsible-door-to-door-waste-collection-and-management', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1701, 'id', 'Penjemputan sampah langsung dari rumah dan dikelola secara bertanggung jawab', 'responsible-door-to-door-waste-collection-and-management', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1702, 'en', 'Waste management program from the source that is managed optimally and completed with waste flow report', 'waste-management-program-from-the-source-that-is-managed-optimally-and-completed-with-waste-flow-report', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1703, 'id', 'Program pengelolaan sampah dari sumbernya yang dikelola secara optimal dengan pelaporan alur sampah', 'waste-management-program-from-the-source-that-is-managed-optimally-and-completed-with-waste-flow-report', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1704, 'en', 'Waste management research and planning by taking into consideration the environmental aspects', 'waste-management-research-and-planning-by-taking-into-consideration-the-environmental-aspects', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1705, 'id', 'Penelitian dan perencanaan pengelolaan sampah dengan mempertimbangkan aspek lingkungan', 'waste-management-research-and-planning-by-taking-into-consideration-the-environmental-aspects', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1706, 'en', 'Waste management program from the source that prevents waste from ending up in landfills', 'waste-management-program-from-the-source-that-prevents-waste-from-ending-up-in-landfills', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1707, 'id', 'Program pengelolaan sampah dari sumber yang memastikan sampah tidak berakhir di TPA', 'waste-management-program-from-the-source-that-prevents-waste-from-ending-up-in-landfills', 'service_meta_description');
INSERT INTO `dictionary` VALUES (1708, 'en', 'waste tips, waste news, news about waste, waste press release, waste management, waste processing, waste handling, waste story,  Waste4Change story, Waste4Change news, Waste4Change blog, waste blog', 'waste-tips-waste-news-news-about-waste-waste-press-release-waste-management-waste-processing-waste-handling-waste-story-waste4change-story-waste4change-news-waste4change-blog-waste-blog', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1709, 'id', 'tips sampah, berita sampah, siaran pers sampah, kabar sampah, manajemen sampah, pengelolaan sampah, cerita sampah, cerita Waste4Change, berita Waste4Change, blog Waste4Change, blog sampah', 'waste-tips-waste-news-news-about-waste-waste-press-release-waste-management-waste-processing-waste-handling-waste-story-waste4change-story-waste4change-news-waste4change-blog-waste-blog', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1710, 'en', 'waste management, waste management jakarta, waste management service, waste management using modern technology, recycling service, waste processing service', 'waste-management-waste-management-jakarta-waste-management-service-waste-management-using-modern-technology-recycling-service-waste-processing-service', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1711, 'id', 'waste management, waste management jakarta, layanan pengelolaan sampah, pengelolaan sampah dengan teknologi modern, layanan daur ulang, jasa pengelola sampah', 'waste-management-waste-management-jakarta-waste-management-service-waste-management-using-modern-technology-recycling-service-waste-processing-service', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1712, 'en', 'waste management, waste management jakarta, waste management service, waste management with modern technology, recycling service, waste processing service', 'waste-management-waste-management-jakarta-waste-management-service-waste-management-with-modern-technology-recycling-service-waste-processing-service', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1713, 'id', 'waste management, waste management jakarta, layanan pengelolaan sampah, pengelolaan sampah dengan teknologi modern, layanan daur ulang, jasa pengelola sampah', 'waste-management-waste-management-jakarta-waste-management-service-waste-management-with-modern-technology-recycling-service-waste-processing-service', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1714, 'en', 'waste education, waste assistance, waste class, waste socialization, waste guidance, waste management education, waste management program, waste workshop, waste training, corporate social responsibility, CSR program, 3R waste, 3R Concept, school waste, school recycling program', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-3r-waste-3r-concept-school-waste-school-recycling', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1715, 'id', 'edukasi sampah, pendampingan sampah, kelas sampah, penyuluhan sampah, bimbingan sampah, edukasi manajemen sampah, program manajemen sampah, workshop sampah, pelatihan sampah, program tanggung jawab sosial perusahaan, program CSR. sampah 3R, konsep 3R, sampah sekolah', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-3r-waste-3r-concept-school-waste-school-recycling', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1716, 'en', 'waste education, waste assistance, waste class, waste socialization, waste guidance, waste management education, waste management program, waste workshop, waste training, corporate social responsibility, CSR program, 3R waste, 3R Concept', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-3r-waste-3r-concept', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1717, 'id', 'edukasi sampah, pendampingan sampah, kelas sampah, penyuluhan sampah, bimbingan sampah, edukasi manajemen sampah, program manajemen sampah, workshop sampah, pelatihan sampah, program tanggung jawab sosial perusahaan, program CSR. sampah 3R, konsep 3R', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-3r-waste-3r-concept', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1718, 'en', 'waste education, waste assistance, waste class, waste socialization, waste guidance, waste management education, waste management program, waste workshop, waste training, corporate social responsibility, CSR program, cleaning service training, building management training, sustainable building, green building', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-cleaning-service-training-building-management-tra', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1719, 'id', 'edukasi sampah, pendampingan sampah, kelas sampah, penyuluhan sampah, bimbingan sampah, edukasi manajemen sampah, program manajemen sampah, workshop sampah, pelatihan sampah, program tanggung jawab sosial perusahaan, program CSR, pelatihan cleaning service, pelatihan manajemen gedung', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-cleaning-service-training-building-management-tra', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1720, 'en', 'waste education, waste assistance, waste class, waste socialization, waste guidance, waste management education, waste management program, waste workshop, waste training, corporate social responsibility, CSR program', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1721, 'id', 'edukasi sampah, pendampingan sampah, kelas sampah, penyuluhan sampah, bimbingan sampah, edukasi manajemen sampah, program manajemen sampah, workshop sampah, pelatihan sampah, program tanggung jawab sosial perusahaan, program CSR', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1722, 'en', 'waste education, waste assistance, waste class, waste socialization, waste guidance, waste management education, waste management program, waste workshop, waste training, corporate social responsibility, CSR program, waste tour, landfill visit, Bantar Gebang, Waste4Change site', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-waste-tour-landfill-visit-bantar-gebang-waste4cha', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1723, 'id', 'edukasi sampah, pendampingan sampah, kelas sampah, penyuluhan sampah, bimbingan sampah, edukasi manajemen sampah, program manajemen sampah, workshop sampah, pelatihan sampah, program tanggung jawab sosial perusahaan, program CSR. tur sampah, kunjungan TPA, Bantar Gebang, site Waste4Change', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-waste-tour-landfill-visit-bantar-gebang-waste4cha', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1724, 'en', 'waste education, waste assistance, waste class, waste socialization, waste guidance, waste management education, waste management program, waste workshop, waste training, corporate social responsibility, CSR program, ecotourism', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-ecotourism', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1725, 'id', 'edukasi sampah, pendampingan sampah, kelas sampah, penyuluhan sampah, bimbingan sampah, edukasi manajemen sampah, program manajemen sampah, workshop sampah, pelatihan sampah, program tanggung jawab sosial perusahaan, program CSR. ecotourism', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-ecotourism', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1726, 'en', 'waste education, waste assistance, waste class, waste socialization, waste guidance, waste management education, waste management program, waste workshop, waste training, corporate social responsibility, CSR program, ecotourism, sustainable tourism', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-ecotourism-sustainable-tourism', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1727, 'id', 'edukasi sampah, pendampingan sampah, kelas sampah, penyuluhan sampah, bimbingan sampah, edukasi manajemen sampah, program manajemen sampah, workshop sampah, pelatihan sampah, program tanggung jawab sosial perusahaan, program CSR. ecotourism, pariwisata yang berkelanjutan', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-ecotourism-sustainable-tourism', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1728, 'en', 'waste research, waste study, waste research service, waste study service, environmental aspect waste research, waste data collection, waste volume, waste amount, types of waste, waste category, solid waste management, river waste, riverine waste, marine debris, ocean pollution, sea pollution, waste pollution, plastic pollution', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-river-waste-riverine-waste-marine-debris-ocean-p', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1729, 'id', 'penelitian sampah,studi sampah, riset sampah, jasa studi sampah, jasa riset sampah, jasa penelitian sampah, penelitian sampah aspek lingkungan, pendataan sampah, jumlah sampah, volume sampah, jenis sampah, manajemen limbah padat, sampah sungai, sampah laut, marine debris', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-river-waste-riverine-waste-marine-debris-ocean-p', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1730, 'en', 'waste research, waste study, waste research service, waste research service, environmental aspect waste research, waste data collection, waste volume, waste amount, types of waste, waste category, solid waste management, tourism waste, tourist waste, tourism waste management, waste in tourism sites, waste in tourism areas, sustainable tourism, ecotourism', 'waste-research-waste-study-waste-research-service-waste-research-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-tourism-waste-tourist-waste-tourism-waste-man', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1731, 'id', 'penelitian sampah,studi sampah, riset sampah, jasa studi sampah, jasa riset sampah, jasa penelitian sampah, penelitian sampah aspek lingkungan, pendataan sampah, jumlah sampah, volume sampah, jenis sampah, manajemen limbah padat, sampah wisata, sampah pariwisata, manajemen sampah pariwisata, sampah kawasan wisata, ecotourism, pariwisata yang berkelanjutan', 'waste-research-waste-study-waste-research-service-waste-research-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-tourism-waste-tourist-waste-tourism-waste-man', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1732, 'en', 'waste research, waste study, waste research service, waste study service, environmental aspect waste research, waste data collection, waste volume, waste amount, types of waste, waste category, solid waste management', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1733, 'id', 'penelitian sampah,studi sampah, riset sampah, jasa studi sampah, jasa riset sampah, jasa penelitian sampah, penelitian sampah aspek lingkungan, pendataan sampah, jumlah sampah, volume sampah, jenis sampah, manajemen limbah padat', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1734, 'en', 'waste research, waste study, waste research service, waste study service, environmental aspect waste research, waste data collection, waste volume, waste amount, types of waste, waste category, solid waste management, waste to energy', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-waste-to-energy', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1735, 'id', 'penelitian sampah,studi sampah, riset sampah, jasa studi sampah, jasa riset sampah, jasa penelitian sampah, penelitian sampah aspek lingkungan, pendataan sampah, jumlah sampah, volume sampah, jenis sampah, manajemen limbah padat, sampah menjadi energi, waste to energy', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-waste-to-energy', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1736, 'en', 'waste education, waste assistance, waste class, waste socialization, waste guidance, waste management education, waste management program, waste workshop, waste training, corporate social responsibility, CSR program, 3R waste, 3R Concept, TPS 3R', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-3r-waste-3r-concept-tps-3r', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1737, 'id', 'edukasi sampah, pendampingan sampah, kelas sampah, penyuluhan sampah, bimbingan sampah, edukasi manajemen sampah, program manajemen sampah, workshop sampah, pelatihan sampah, program tanggung jawab sosial perusahaan, program CSR. sampah 3R, konsep 3R, TPS 3R', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-3r-waste-3r-concept-tps-3r', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1738, 'en', 'waste research, waste study, waste research service, waste study service, environmental aspect waste research, waste data collection, waste volume, waste amount, types of waste, waste category, solid waste management, life chain analysis, waste value chain, waste report', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-life-chain-analysis-waste-value-chain-waste-repo', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1739, 'id', 'penelitian sampah,studi sampah, riset sampah, jasa studi sampah, jasa riset sampah, jasa penelitian sampah, penelitian sampah aspek lingkungan, pendataan sampah, jumlah sampah, volume sampah, jenis sampah, manajemen limbah padat, life chain analysis, rantai nilai sampah, laporan sampah', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-life-chain-analysis-waste-value-chain-waste-repo', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1740, 'en', 'waste4change service, waste service, waste management, waste processing, waste education, waste research, waste study, waste recycling, waste collection, waste recycling, waste bin, trash bag, trash can', 'waste4change-service-waste-service-waste-management-waste-processing-waste-education-waste-research-waste-study-waste-recycling-waste-collection-waste-recycling-waste-bin-trash-bag-trash-can', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1741, 'id', 'layanan waste4change, layanan sampah, pengelolaan sampah, manejemen sampah, edukasi sampah, riset sampah, studi sampah, daur ulang sampah, pengangkutan sampah, tempat sampah', 'waste4change-service-waste-service-waste-management-waste-processing-waste-education-waste-research-waste-study-waste-recycling-waste-collection-waste-recycling-waste-bin-trash-bag-trash-can', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1742, 'en', 'waste delivery, waste pickup, waste drop off, waste deposit, domestic waste, household waste, individual waste, inorganic waste, organic waste, waste segregation', 'waste-delivery-waste-pickup-waste-drop-off-waste-deposit-domestic-waste-household-waste-individual-waste-inorganic-waste-organic-waste-waste-segregation', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1743, 'id', 'pengiriman sampah, jemput sampah, drop sampah, penitipan sampah, sampah domestik, sampah rumah tangga, sampah individu, sampah anorganik, sampah organik, memilah sampah', 'waste-delivery-waste-pickup-waste-drop-off-waste-deposit-domestic-waste-household-waste-individual-waste-inorganic-waste-organic-waste-waste-segregation', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1744, 'en', 'waste education, waste assistance, waste class, waste socialization, waste guidance, waste management education, waste workshop, waste training, corporate social responsibility, CSR program', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-workshop-waste-training-corporate-social-responsibility-csr-program', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1745, 'id', 'edukasi sampah, pendampingan sampah, kelas sampah, penyuluhan sampah, bimbingan sampah, edukasi manajemen sampah, program manajemen sampah, workshop sampah, pelatihan sampah, program tanggung jawab sosial perusahaan, program CSR', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-workshop-waste-training-corporate-social-responsibility-csr-program', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1746, 'en', 'waste education, waste tour, waste assistance, waste class, waste socialization, waste guidance, waste management education, waste management program, waste workshop, waste training, corporate social responsibility, CSR program, landfill visit, Bantar Gebang waste management, waste academy, Waste4Change\'s site', 'waste-education-waste-tour-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-landfill-visit-bantar-gebang-waste-man', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1747, 'id', 'edukasi sampah, tur sampah, pendampingan sampah, kelas sampah, penyuluhan sampah, bimbingan sampah, edukasi manajemen sampah, program manajemen sampah, workshop sampah, pelatihan sampah, program tanggung jawab sosial perusahaan, program CSR, kunjungan ke TPA, pengelolaan sampah Bantar Gebang, akademi sampah, site Waste4Change', 'waste-education-waste-tour-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-landfill-visit-bantar-gebang-waste-man', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1748, 'en', 'waste decomposition education, waste decomposition, waste decomposition service, Black Soldier Fly cultivation, Black Soldier Fly breeding, making organic fertilizer, organic fertilizer', 'waste-decomposition-education-waste-decomposition-waste-decomposition-service-black-soldier-fly-cultivation-black-soldier-fly-breeding-making-organic-fertilizer-organic-fertilizer', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1749, 'id', 'edukasi penguraian sampah, penguraian sampah, jasa penguraian sampah, pembudidayaan Black Soldier Fly, pembibitan Black Soldier Fly, pembuatan pupuk organik, pupuk organik', 'waste-decomposition-education-waste-decomposition-waste-decomposition-service-black-soldier-fly-cultivation-black-soldier-fly-breeding-making-organic-fertilizer-organic-fertilizer', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1750, 'en', 'home composting, composting equipment, composting kit, compost, fertilizer, composting bag, compost bag, composter, compost making, home compost', 'home-composting-composting-equipment-composting-kit-compost-fertilizer-composting-bag-compost-bag-composter-compost-making-home-compost', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1751, 'id', 'mengompos di rumah, peralatan mengompos, perlengkapan mengompos, kompos, pupuk, composting bag, kantong kompos, tas kompos, tempat mengompos, komposter, membuat kompos, kompos rumahan', 'home-composting-composting-equipment-composting-kit-compost-fertilizer-composting-bag-compost-bag-composter-compost-making-home-compost', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1752, 'en', 'custom waste bin, custom garbage bag, custom trash can, custom trash bag, trash bin manufacturing service, segregated waste bin, segregated trash bin, segregated trash can, waste segregation, branded waste bin, branded trash can, branded trash bag, special waste bin, special trash can, special trash bag, brand waste bin, brand trash can, brand garbage can, brand garbage bag, labeled waste bin, labeled trash can, labeled trash bag, labeled garbage bag, instruction trash can, instruction trash bin, instruction waste bin, high-quality waste bin, high-quality trash can', 'custom-waste-bin-custom-garbage-bag-custom-trash-can-custom-trash-bag-trash-bin-manufacturing-service-segregated-waste-bin-segregated-trash-bin-segregated-trash-can-waste-segregation-branded-waste-bin-branded-trash-can-branded-trash-bag-special-waste-bin-', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1753, 'id', 'tong sampah custom, tempat sampah custom, jasa pembuatan tong sampah, tong sampah terpilah, tempat sampah terpilah, pemilahan sampah, tempat sampah bermerek, tempat sampah khusus, tempat sampah brand, tempat sampah berlabel, tempat sampah petunjuk, tempat sampah instruksi, tempat sampah berkualitas', 'custom-waste-bin-custom-garbage-bag-custom-trash-can-custom-trash-bag-trash-bin-manufacturing-service-segregated-waste-bin-segregated-trash-bin-segregated-trash-can-waste-segregation-branded-waste-bin-branded-trash-can-branded-trash-bag-special-waste-bin-', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1754, 'en', 'in store recycling, extended producer responsibility, labeled waste management, brand waste management, labeled waste recycling, brand waste recycling, brand waste recycling', 'in-store-recycling-extended-producer-responsibility-labeled-waste-management-brand-waste-management-labeled-waste-recycling-brand-waste-recycling-brand-waste-recycling', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1755, 'id', 'in store recycling, extended producer responsibility, manajemen sampah berlabel, manajemen sampah bermerek, manajemen sampah brand, daur ulang sampah berlabel, daur ulang sampah bermerek, daur ulang sampah brand', 'in-store-recycling-extended-producer-responsibility-labeled-waste-management-brand-waste-management-labeled-waste-recycling-brand-waste-recycling-brand-waste-recycling', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1756, 'en', 'event waste management, segregated waste bin, segregated trash bin, educational booth, segregated waste collection, environmental campaign, responsible waste management', 'event-waste-management-segregated-waste-bin-segregated-trash-bin-educational-booth-segregated-waste-collection-environmental-campaign-responsible-waste-management', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1757, 'id', 'pengelolaan sampah acara, tempat sampah terpilah, booth edukasi sampah, pengangkutan sampah terpilah, kampanye lingkungan, bijak kelola sampah', 'event-waste-management-segregated-waste-bin-segregated-trash-bin-educational-booth-segregated-waste-collection-environmental-campaign-responsible-waste-management', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1758, 'en', 'in store recycling, extended producer responsibility, labeled-waste management, brand waste management, labeled waste recycling, brand waste recycling', 'in-store-recycling-extended-producer-responsibility-labeled-waste-management-brand-waste-management-labeled-waste-recycling-brand-waste-recycling', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1759, 'id', 'in store recycling, extended producer responsibility, manajemen sampah berlabel, manajemen sampah bermerek, manajemen sampah brand, daur ulang sampah berlabel, daur ulang sampah bermerek, daur ulang sampah brand', 'in-store-recycling-extended-producer-responsibility-labeled-waste-management-brand-waste-management-labeled-waste-recycling-brand-waste-recycling', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1760, 'en', 'inorganic waste management, waste segregation, optimum waste segregation, waste flow report, inorganic waste, waste management', 'inorganic-waste-management-waste-segregation-optimum-waste-segregation-waste-flow-report-inorganic-waste-waste-management', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1761, 'id', 'pengelolaan sampah anorganik, pemilahan sampah, pemilahan sampah yang optimal, pelaporan alur sampah, sampah anorganik, waste management', 'inorganic-waste-management-waste-segregation-optimum-waste-segregation-waste-flow-report-inorganic-waste-waste-management', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1762, 'en', 'waste collection, waste collection service, household waste, inorganic waste, domestic waste, door-to-door waste collection, residential waste, individual waste, waste pickup', 'waste-collection-waste-collection-service-household-waste-inorganic-waste-domestic-waste-door-to-door-waste-collection-residential-waste-individual-waste-waste-pickup', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1763, 'id', 'angkut sampah, jasa angkut sampah, sampah rumah tangga, sampah anorganik, sampah domestik, jasa angkut sampah ke rumah, sampah perumahan, sampah individu, jemput sampah', 'waste-collection-waste-collection-service-household-waste-inorganic-waste-domestic-waste-door-to-door-waste-collection-residential-waste-individual-waste-waste-pickup', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1764, 'en', 'waste management program, waste management, waste management from the source, waste flow report, optimal waste management, responsible waste management', 'waste-management-program-waste-management-waste-management-from-the-source-waste-flow-report-optimal-waste-management-responsible-waste-management', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1765, 'id', 'program pengelolaan sampah, pengelolaan sampah, pengelolaan sampah dari sumber, pelaporan alur sampah, pengelolaan sampah secara optimal, pengelolaan sampah bertanggung jawab', 'waste-management-program-waste-management-waste-management-from-the-source-waste-flow-report-optimal-waste-management-responsible-waste-management', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1766, 'en', 'waste research, waste study, waste research service, waste study service,environmental aspect waste research, waste data collection, waste volume, waste amount, waste type, types of waste, waste category, garbage study, garbage research, solid waste management, solid waste research', 'waste-research-waste-study-waste-research-service-waste-study-serviceenvironmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-waste-type-types-of-waste-waste-category-garbage-study-garbage-research-solid-waste-management-solid-w', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1767, 'id', 'penelitian sampah,studi sampah, riset sampah, jasa studi sampah, jasa riset sampah, jasa penelitian sampah, penelitian sampah aspek lingkungan, pendataan sampah, jumlah sampah, volume sampah, jenis sampah, manajemen limbah padat', 'waste-research-waste-study-waste-research-service-waste-study-serviceenvironmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-waste-type-types-of-waste-waste-category-garbage-study-garbage-research-solid-waste-management-solid-w', 'service_meta_keyword');
INSERT INTO `dictionary` VALUES (1768, 'en', 'Back to Previous Page', 'back_to_previous_page', '404');
INSERT INTO `dictionary` VALUES (1769, 'id', 'Kembali ke Halaman Sebelumnya', 'back_to_previous_page', '404');
INSERT INTO `dictionary` VALUES (1770, 'en', 'Track Record', 'track-record', 'section');
INSERT INTO `dictionary` VALUES (1771, 'id', 'Rekam Jejak', 'track-record', 'section');

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
-- Records of dictionary_type
-- ----------------------------

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
INSERT INTO `expertise` VALUES (11, 7, 'study-about-marine-debris', '', '2019-12-07 22:42:02', '2020-01-22 16:04:30', NULL);
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
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of facility
-- ----------------------------
INSERT INTO `facility` VALUES (1, 1, 'trash-bag-designated-to-support-waste-segregation', 'wastebin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');
INSERT INTO `facility` VALUES (2, 1, 'one-time-technical-induction-training', 'loadspeaker-m.png', '2019-12-07 22:45:42', NULL, '2019-12-31 10:48:01');
INSERT INTO `facility` VALUES (3, 1, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-12-07 22:45:42', NULL, '2019-12-31 10:48:03');
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
INSERT INTO `facility` VALUES (33, 33, 'inorganic-trash-bags', 'frame.png', '2020-03-12 08:42:39', NULL, '2020-03-13 09:21:01');
INSERT INTO `facility` VALUES (34, 33, '1-iron-frame', 'wastebin-m.png', '2020-03-12 08:42:39', NULL, '2020-03-31 22:38:47');
INSERT INTO `facility` VALUES (35, 33, 'waste-collection-in-a-segregated-state-every-week', 'segregation-bin-m.png', '2020-03-12 08:42:39', NULL, '2020-03-31 22:38:42');

-- ----------------------------
-- Table structure for flow
-- ----------------------------
DROP TABLE IF EXISTS `flow`;
CREATE TABLE `flow`  (
  `flow_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `flow_category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `flow_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `flow_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`flow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of flow
-- ----------------------------
INSERT INTO `flow` VALUES (1, 1, 'general', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (2, 1, 'general', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (3, 1, 'general', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (4, 1, 'general', 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (5, 1, 'general', 'residue-being-sent-to-the-landfill', 'landfill.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (6, 2, 'general', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (7, 2, 'general', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (8, 2, 'general', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (9, 2, 'general', 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (10, 2, 'general', 'residue-co-processing-with-rdf-technology', 'factory.png', '2019-12-24 21:51:38', '2019-12-30 14:16:42', NULL);
INSERT INTO `flow` VALUES (11, 3, 'residual-waste-treatment-using-rdf-technology', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL);
INSERT INTO `flow` VALUES (12, 3, 'residual-waste-treatment-using-rdf-technology', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL);
INSERT INTO `flow` VALUES (13, 3, 'residual-waste-treatment-using-rdf-technology', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL);
INSERT INTO `flow` VALUES (14, 3, 'residual-waste-treatment-using-rdf-technology', 'waste-processing-in-w4cs-material-recivery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL);
INSERT INTO `flow` VALUES (15, 3, 'residual-waste-treatment-using-rdf-technology', 'residue-co-processing-with-rdf-technology', 'factory.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL);
INSERT INTO `flow` VALUES (16, 3, 'residual-waste-treatment-at-the-landfill', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL);
INSERT INTO `flow` VALUES (17, 3, 'residual-waste-treatment-at-the-landfill', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL);
INSERT INTO `flow` VALUES (18, 3, 'residual-waste-treatment-at-the-landfill', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL);
INSERT INTO `flow` VALUES (19, 3, 'residual-waste-treatment-at-the-landfill', 'waste-processing-in-w4cs-material-recivery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL);
INSERT INTO `flow` VALUES (20, 3, 'residual-waste-treatment-at-the-landfill', 'residue-being-sent-to-the-landfill', 'recycling.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL);
INSERT INTO `flow` VALUES (21, 4, 'general', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (22, 4, 'general', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (23, 4, 'general', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (24, 4, 'general', 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (25, 4, 'general', 'residue-co-processing-with-rdf-technology', 'factory.png', '2019-12-24 21:51:38', '2019-12-30 14:29:54', NULL);
INSERT INTO `flow` VALUES (26, 5, 'general', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (27, 5, 'general', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (28, 5, 'general', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (29, 5, 'general', 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL);
INSERT INTO `flow` VALUES (30, 5, 'general', 'residue-co-processing-with-rdf-technology', 'factory.png', '2019-12-24 21:51:38', '2019-12-30 14:31:08', NULL);
INSERT INTO `flow` VALUES (31, 6, 'general', 'dropping-locations-in-more-location-across-indones', 'wasteflow-epr-1.png', '2019-12-24 21:51:38', '2020-01-04 12:38:52', NULL);
INSERT INTO `flow` VALUES (32, 6, 'general', 'user-can-send-or-drop-their-waste-to-waste4change', 'wasteflow-epr-2.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL);
INSERT INTO `flow` VALUES (33, 6, 'general', 'user-will-get-points-as-a-reward-for-recycling-the', 'wasteflow-epr-3.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL);
INSERT INTO `flow` VALUES (34, 6, 'general', 'waste-responsibly-managed-by-our-partner', 'wasteflow-epr-4.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL);
INSERT INTO `flow` VALUES (35, 6, 'general', 'material-transported-to-up-cycling-and-recycling-i', 'wasteflow-epr-5.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL);
INSERT INTO `flow` VALUES (36, 6, 'general', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'wasteflow-epr-6.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL);
INSERT INTO `flow` VALUES (37, 32, 'general', '4-in-1-capsule', 'wastebin-4in1.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL);
INSERT INTO `flow` VALUES (38, 32, 'general', 'tube', 'wastebin-tube.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL);
INSERT INTO `flow` VALUES (39, 32, 'general', '3-in-1-capsule', 'wastebin-3in1.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL);
INSERT INTO `flow` VALUES (40, 32, 'general', 'customtailor-made-bin', 'wastebin-custom.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL);
INSERT INTO `flow` VALUES (41, 32, 'general', '2-in-1-capsule', 'wastebin-2in1.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL);
INSERT INTO `flow` VALUES (42, 33, 'general', 'inorganic-trash-bags', 'wastebin-m.png', '2020-03-12 08:42:39', '2020-03-31 22:39:46', NULL);
INSERT INTO `flow` VALUES (43, 33, 'general', '1-iron-frame', 'frame.png', '2020-03-12 08:42:39', '2020-03-31 22:39:41', NULL);
INSERT INTO `flow` VALUES (44, 33, 'general', 'waste-collection-in-a-segregated-state-every-week', 'segregation-bin-m.png', '2020-03-12 08:42:39', '2020-03-31 22:39:42', NULL);
INSERT INTO `flow` VALUES (45, 34, 'general', 'compost-bag', 'compost-bag.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL);
INSERT INTO `flow` VALUES (46, 34, 'general', 'compost-kit-starter-pack', 'compost-starter.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL);
INSERT INTO `flow` VALUES (47, 34, 'general', 'black-soldier-flies-larvae-optional', 'compost-bsf.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL);

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
INSERT INTO `language` VALUES (1, 'id', 'Indonesia', 'flag_indonesia.png', '2019-11-16 18:56:12', '2020-01-07 00:48:02', NULL);
INSERT INTO `language` VALUES (2, 'en', 'English', 'flag_england.png', '2019-11-16 18:56:53', '2020-01-07 00:48:08', NULL);

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
INSERT INTO `offer` VALUES (5, 11, 'people-m.png', 'one-day-visit', 'tour-and-introduction-of-bsf-cultivation-and-breed', NULL, '2019-12-12 09:36:09', NULL);
INSERT INTO `offer` VALUES (6, 11, 'people-m.png', 'five-day-visit', 'engage-in-a-more-detailed-exploration-through-dire', NULL, '2019-12-12 09:36:09', NULL);
INSERT INTO `offer` VALUES (7, 11, 'loadspeaker-m.png', '21-days-of-intensive-program', 'this-is-suitable-for-business-actors-who-aspire-to', NULL, '2019-12-12 09:36:09', NULL);

-- ----------------------------
-- Table structure for portfolio
-- ----------------------------
DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE `portfolio`  (
  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `portfolio_client` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `portfolio_client_logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `portfolio_client_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `portfolio_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `portfolio_start` date NULL DEFAULT NULL,
  `portfolio_end` date NULL DEFAULT NULL,
  `portfolio_duration` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `portfolio_collection_schedulle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `portfolio_waste_collected` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `portfolio_audience` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `portfolio_mou` date NULL DEFAULT NULL,
  `portfolio_agent_involve` int(11) NULL DEFAULT NULL,
  `portfolio_city_count` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `portfolio_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`portfolio_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of portfolio
-- ----------------------------
INSERT INTO `portfolio` VALUES (1, 1, 'Vida Bekasi', 'vida.jpg', 'Jl. Tirta Utama No. 1, Bumiwedari, Bantar Gebang, Kota Bekasi', 'vida.jpg', NULL, NULL, '', '3 days-per-week', '112000 kgmonth', '', '2014-01-01', NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-02 14:01:35', NULL);
INSERT INTO `portfolio` VALUES (2, 1, 'Wisma Barito', 'barito.jpg', 'Jl. Letjen. S. Parman Kav. 62-63, Slipi, Jakarta Barat', 'barito.jpg', NULL, NULL, '1 year', '3 days-per-week', '6922 kgmonth', '', '2019-02-01', NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-02 14:01:45', NULL);
INSERT INTO `portfolio` VALUES (3, 2, 'The Body Shop', 'tbs.jpg', 'Sentosa Building 2 Lt. 1, Bintaro Jaya Central Business District, Kota Tangerang Selatan', 'tbs.jpg', NULL, NULL, '1 year', 'every-day', '776,5 kgmonth', '', '2018-12-01', NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-02 14:02:10', NULL);
INSERT INTO `portfolio` VALUES (4, 2, 'PUPR', 'pupr.jpg', 'Jalan Pattimura No. 20, Jakarta Selatan', 'pupr.jpg', NULL, NULL, '4 month', 'every-day', '26,575 kgmonth', '', '2019-09-01', NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-02 14:02:16', NULL);
INSERT INTO `portfolio` VALUES (5, 3, 'Jakarta Land', 'jakartaland.jpg', 'World Trade Centre - WTC 5, 8th floor, Jl. Jend. Sudirman Kav. 29 Jakarta', 'jakartaland.jpg', NULL, NULL, '1 year', '1 days-per-week', '192 kgmonth', '', '2018-04-01', NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-02 14:02:56', NULL);
INSERT INTO `portfolio` VALUES (6, 4, 'Playfest 2019', 'playfest2019.jpg', '', 'playfest2019.jpg', '2019-08-24', '2019-08-25', '', '', '1141 kg', '6000', NULL, NULL, NULL, NULL, '2019-12-07 22:47:29', '2019-12-31 16:24:27', NULL);
INSERT INTO `portfolio` VALUES (7, 4, 'Milo Jakarta International Run 10K 2018', 'milo.jpg', '', 'milo.jpg', '2018-07-15', NULL, '', '', '626 kg', '16000', NULL, NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-11 00:49:58', NULL);
INSERT INTO `portfolio` VALUES (8, 5, 'The Body Shop - Bring Back Our Bottle (BBOB) Program', 'tbs.jpg', '', 'tbs.jpg', NULL, NULL, '2015 until-present', '', '33447 kg', '', NULL, NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-04 11:52:59', NULL);
INSERT INTO `portfolio` VALUES (9, 5, 'By Lizzy Parra - There is a Box for That (TIBFT)', 'lizzy.jpg', '', 'lizzy.jpg', NULL, NULL, 'agustus-november-2019', '', '102 kg', '', NULL, NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-04 11:53:35', NULL);
INSERT INTO `portfolio` VALUES (10, 6, 'Lifebuoy Ramadhan Berkah 2019', 'lifebuoy.jpg', '', 'lifebuoy.jpg', NULL, NULL, '1st-may-30th-june-2019', '', '7177 pcs', '', NULL, 227, '41-cities-across-indonesia', 'https://waste4change.com/poin/home/lifebuoy', '2019-12-07 22:49:09', '2020-01-04 13:32:51', NULL);
INSERT INTO `portfolio` VALUES (11, 6, 'Ades #NiatMurni 2019', 'ades.jpg', '', 'ades.jpg', NULL, NULL, '31st-october-2019-present', '', '1650 pcs', '', NULL, 130, 'Jakarta, Bandung, Semarang, Surabaya, Makassar, Medan', 'https://waste4change.com/poin/home/sinergi-ades-niat-murni-dan-gojek', '2019-12-07 22:49:09', '2020-01-05 03:24:35', NULL);

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
INSERT INTO `project` VALUES (10, 8, '3r-green-school', '3r-green-school', 'capacity-building-in-indonesia’s-frontline-territo', 'Yayasan Unilever Indonesia', '', NULL, '2019-11-24 03:27:02', '2020-01-22 23:03:44', NULL);
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
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
INSERT INTO `recomendation` VALUES (17, 'school-management', '#4489a2', 'icon-education-001 u-line-icon-pro', '2019-12-08 00:56:23', '2020-01-22 23:38:51', NULL);
INSERT INTO `recomendation` VALUES (18, 'hse-division', '#4489a2', 'HSE.svg', '2019-12-08 00:56:23', '2020-02-26 18:30:36', NULL);
INSERT INTO `recomendation` VALUES (19, 'sustainability-division', '#a24444', 'icon-hotel-restaurant-132 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (20, 'csr-division', '#4489a2', 'icon-medical-022 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (21, 'building-area-management', '#4489a2', 'icon-hotel-restaurant-172 u-line-icon-pro', '2019-12-08 00:56:23', '2020-01-21 09:28:10', NULL);
INSERT INTO `recomendation` VALUES (22, 'personal', '#4489a2', 'icon-finance-002 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);
INSERT INTO `recomendation` VALUES (23, 'retail', '#a24495', 'icon-education-031 u-line-icon-pro', '2020-01-04 14:04:02', '2020-01-04 14:04:02', NULL);
INSERT INTO `recomendation` VALUES (24, 'store', '#a24495', 'icon-hotel-restaurant-172 u-line-icon-pro', '2020-01-04 14:04:02', '2020-01-04 14:04:02', NULL);
INSERT INTO `recomendation` VALUES (25, 'building', '#4489a2', 'icon-hotel-restaurant-172 u-line-icon-pro', '2020-01-22 23:27:49', '2020-01-22 23:27:58', NULL);

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `section_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `section_menu_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `section_order` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`section_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, 'welcome', 'welcome', '', 1, '2019-12-07 22:26:24', '2020-03-12 08:26:07', NULL);
INSERT INTO `section` VALUES (2, 'header', 'header', '', 2, '2019-12-07 22:26:24', '2020-03-12 08:26:39', NULL);
INSERT INTO `section` VALUES (3, 'our-achievement', 'our-br-achievement', '', 3, '2019-12-07 22:26:24', '2020-03-12 08:26:41', NULL);
INSERT INTO `section` VALUES (4, 'about', 'about', 'about', 4, '2019-12-07 22:26:24', '2020-03-12 08:26:41', NULL);
INSERT INTO `section` VALUES (5, 'description', 'description', 'description', 5, '2019-12-07 22:26:24', '2020-03-12 08:26:42', NULL);
INSERT INTO `section` VALUES (6, 'achievement-deliverable', 'deliverable', 'deliverable', 6, '2019-12-07 22:26:24', '2020-03-12 08:26:42', NULL);
INSERT INTO `section` VALUES (7, 'we-offer', 'we-offer', 'offer', 7, '2019-12-07 22:26:24', '2020-03-12 08:26:43', NULL);
INSERT INTO `section` VALUES (8, 'activities', 'activities', 'activities', 5, '2019-12-07 22:26:24', '2020-03-12 08:26:21', NULL);
INSERT INTO `section` VALUES (9, 'benefit', 'benefit', 'benefit', 9, '2019-12-07 22:26:24', '2020-03-12 08:26:44', NULL);
INSERT INTO `section` VALUES (10, 'expertise-and-experience', 'expertise-and-experience', 'expertise-and-experience', 10, '2019-12-07 22:26:24', '2020-03-12 08:26:45', NULL);
INSERT INTO `section` VALUES (11, 'output-benefit', 'output-benefit', 'output-benefit', 11, '2019-12-07 22:26:24', '2020-03-12 08:26:46', NULL);
INSERT INTO `section` VALUES (12, 'what-you-get', 'what-you-get', 'what-you-get', 12, '2019-12-07 22:26:24', '2020-03-12 08:26:47', NULL);
INSERT INTO `section` VALUES (13, 'waste-flow', 'waste-flow', 'waste-flow', 13, '2019-12-07 22:26:24', '2020-03-12 08:26:48', NULL);
INSERT INTO `section` VALUES (14, 'portfolio-highlight', 'portofolio-highlight', NULL, 14, '2019-12-07 22:26:24', '2020-03-12 08:26:49', NULL);
INSERT INTO `section` VALUES (15, 'research-highlight', 'research-hightlight', NULL, 15, '2019-12-07 22:26:24', '2020-03-12 08:26:50', NULL);
INSERT INTO `section` VALUES (16, 'program-highlight', 'program-highlight', NULL, 16, '2019-12-07 22:26:24', '2020-03-12 08:26:51', NULL);
INSERT INTO `section` VALUES (17, 'similar-project', 'similar-project', 'similar-project', 17, '2019-12-07 22:26:24', '2020-03-12 08:26:53', NULL);
INSERT INTO `section` VALUES (18, 'our-client', 'client', 'client', 18, '2019-12-07 22:26:24', '2020-03-12 08:26:54', NULL);
INSERT INTO `section` VALUES (19, 'recommended-for', 'recommended-for', 'recommendation', 19, '2019-12-07 22:26:24', '2020-03-12 08:27:03', NULL);
INSERT INTO `section` VALUES (20, 'our-coverage', 'our-coverage', 'coverage', 20, '2019-12-07 22:26:24', '2020-03-12 08:27:05', NULL);
INSERT INTO `section` VALUES (21, 'cta', 'cta', '', 21, '2019-12-07 22:26:24', '2020-03-12 08:27:06', NULL);
INSERT INTO `section` VALUES (22, 'waste-bin-option', 'waste-bin-option', 'waste-bin-option', 12, '2020-03-12 08:27:27', '2020-03-12 08:27:42', NULL);
INSERT INTO `section` VALUES (23, 'whatyouget', 'what-you-get', 'what-you-get', 12, '2020-03-17 01:19:07', '2020-03-17 01:30:03', NULL);

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
  `service_short_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_slogan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `service_about` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `service_client_name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `service_client_logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_meta_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_meta_description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_meta_keyword` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_about_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_header_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_thumbnail_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_page_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_map_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_proposal_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_portfolio_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `has_page` int(1) NULL DEFAULT NULL,
  `is_new` int(1) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 1, NULL, '', 'responsible-waste-management', 'responsible-waste-management', 'RWM', 'no-more-mixed-waste', 'a-100-holistic-waste-management-for-companies-bu', 'waste-generation-is-inevitable-its-not-easy-to-r', '', NULL, 'an-optimal-waste-management-program-along-with-the-waste-flow-report', 'waste-management-program-waste-management-waste-management-from-the-source-waste-flow-report-optimal-waste-management-responsible-waste-management', 'waste-management-program-from-the-source-that-is-managed-optimally-and-completed-with-waste-flow-report', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/responsible-waste-management', 'https://www.google.com/maps/d/u/4/embed?mid=1EzzP9MqDQdgs4AvnMD8ybre3DRfMeWpG', 'https://docs.google.com/forms/d/e/1FAIpQLSdydu6Ar9mGKppAI4V2fevcWkLSpTpiSwdbpv0moPU4-_o3NQ/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (2, 1, NULL, '', 'zero-waste-to-landfill', 'zero-waste-to-landfill', 'ZWTL', 'no-more-waste-that-end-up-in-landfills', 'take-an-active-part-in-preventing-our-local-landfi', 'every-day-indonesians-are-generating-175000-tons', '', NULL, 'waste-management-program-that-prevents-waste-from-ending-up-in-landfills', 'waste-management-program-waste-management-waste-management-from-the-source-waste-flow-report-optimal-waste-management-responsible-waste-management', 'waste-management-program-from-the-source-that-prevents-waste-from-ending-up-in-landfills', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/zero-waste-to-landfill', 'https://www.google.com/maps/d/u/4/embed?mid=14U27pSAYe3HQIvZiTgk-NXoS6AEEu1Rp', 'https://docs.google.com/forms/d/e/1FAIpQLSemrcuqzCk4wFUtMPFFwLkJOsYSlCjoJ8GHCDdXcM7Or5YlQg/viewform', NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (3, 1, NULL, '', 'inorganic-waste-management', 'inorganic-waste-management', 'IWM', 'from-waste-to-useful-materials', 'treat-your-inorganic-waste-the-right-way-and-make-', 'waste-is-a-relative-term-that-can-be-applied-diffe', '', NULL, 'inorganic-waste-management-with-optimal-segregation', 'inorganic-waste-management-waste-segregation-optimum-waste-segregation-waste-flow-report-inorganic-waste-waste-management', 'inorganic-waste-management-with-optimal-segregation-and-a-complete-waste-flow-report', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/inorganic-waste-management', 'https://www.google.com/maps/d/u/4/embed?mid=1pi8NaeTl6FXhO7_Y4QGLrvZxGj6VlJwF', 'https://docs.google.com/forms/d/e/1FAIpQLSfgzkfJXMhuTUO4sgwpkF1PINvH7_XNBrZ84PWJD6OqghV_Eg/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (4, 1, NULL, '', 'event-waste-management', 'event-waste-management', 'EWM', 'great-event-planned-their-waste-management-beforeh', 'through-the-placement-of-segregated-waste-bins-in-', 'waste-generation-during-an-event-is-inevitable-in', '', NULL, 'segregated-and-responsible-waste-management-and-waste-education-at-ones-event', 'event-waste-management-segregated-waste-bin-segregated-trash-bin-educational-booth-segregated-waste-collection-environmental-campaign-responsible-waste-management', 'waste-management-program-through-the-placement-of-segregated-waste-bins-in-crowded-places-as-well-as-educational-booth-during-the-event', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/event-waste-management', 'https://www.google.com/maps/d/u/4/embed?mid=1UfoOowGLVWxHt5w_SLy6zHfNUobfOlkd', 'https://docs.google.com/forms/d/e/1FAIpQLScFEwvyBaouF85RuuJSQpDCmGmkIIf4Hby9uo6HrZHJVSRBvw/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (5, 2, NULL, '', 'in-store-recycling', 'in-store-recycling', 'In-Store Recycling', 'support-the-recycling-of-your-brand-labeled-waste', 'increase-the-material-processing-of-brand-labelled', 'designed-to-increase-the-material-processing-from-', '', NULL, 'recycling-of-brand-labeled-waste', 'in-store-recycling-extended-producer-responsibility-labeled-waste-management-brand-waste-management-labeled-waste-recycling-brand-waste-recycling', 'recycle-your-brand-labeled-waste-to-prevent-it-from-being-mishandled-and-ending-up-in-landfills', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/in-store-recycling', 'https://www.google.com/maps/d/u/4/embed?mid=1GDDIUknG99ELERykKibGPWvEUXFjzfgx', 'https://docs.google.com/forms/d/e/1FAIpQLSd8QsQoYbyTb5-8dD6r5KUFCz9BhTmBvh1c2Lla2HdlrDHFQg/viewform', NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (6, 2, NULL, '', 'digital-epr', 'digital-epr', 'Digital EPR', 'more-effective-and-sustainable-brand-labeled-waste', 'increasing-the-recycling-rate-of-your-brand-labele', 'we-provide-a-waste-recycling-system-that-is-integr', '', NULL, 'recycling-of-brand-labeled-waste-with-the-help-of-technology', 'in-store-recycling-extended-producer-responsibility-labeled-waste-management-brand-waste-management-labeled-waste-recycling-brand-waste-recycling-brand-waste-recycling', 'recycle-your-brand-labeled-waste-with-the-help-of-technology-to-make-it-more-accessible-and-sustainable', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/digital-epr', 'https://www.google.com/maps/d/u/4/embed?mid=1Gps2QciOKXTLqrt_pLKM5tvw0EJI-iLg', 'https://docs.google.com/forms/d/e/1FAIpQLScZh1J71WYKPVOZzDGgfSTtOudKLu_RuwnDPvvlXV9h8TvxyQ/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (7, 3, NULL, '', 'solid-waste-management-research', 'solid-waste-management-research', 'SWM Research', 'research-and-planning-with-environment-in-mind', 'improve-your-solid-waste-management-by-conducting-', 'waste4change-provides-consultation-through-solid-w', '', NULL, 'waste-management-research-by-incorporating-environmental-aspects', 'waste-research-waste-study-waste-research-service-waste-study-serviceenvironmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-waste-type-types-of-waste-waste-category-garbage-study-garbage-research-solid-waste-management-solid-w', 'waste-management-research-and-planning-by-taking-into-consideration-the-environmental-aspects', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/solid-waste-management-research', 'https://www.google.com/maps/d/u/4/embed?mid=1kyIBPS8Js-umo5K7RxtYM8TlEm6Ok-_N', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', '1', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (8, 4, NULL, '', 'community-based-implementation', 'community-based-implementation', 'CBI', 'solid-effort-to-reduce-waste-generation-from-the-s', 'we-help-our-clients-to-implement-programs-that-enc', 'according-to-recent-bps-statistics-waste-manageme', '', NULL, 'education-and-assistance-to-reduce-waste-from-the-source', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-workshop-waste-training-corporate-social-responsibility-csr-program', 'sustainable-education-and-assistance-program-to-reduce-waste-from-the-source', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/community-based-implementation', 'https://www.google.com/maps/d/u/4/embed?mid=1Cyc1udMyKSqvT_8z-oAAJSlpYD5pJV4V', 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', '1', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (9, 4, NULL, '', '3r-school-program', '3r-school-program', '3R School Program', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'designed-to-encourage-the-increasing-awareness-of-', '3r-school-program-is-a-program-designed-to-encoura', '', NULL, 'education-and-assistance-in-order-to-implement-the-3rs-reduce-reuse-recycle-concept-at-school', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-workshop-waste-training-corporate-social-responsibility-csr-program', 'sustainable-educational-and-assistance-program-to-implement-the-3rs-reduce-reuse-recycle-concept-at-school', '2-about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/3r-school-program', 'https://www.google.com/maps/d/u/4/embed?mid=10BE1aJSuB03vNPzXygpWxPUrlOkRXzBi', 'https://docs.google.com/forms/d/e/1FAIpQLScmBjcHJhsI1OIOM-So0VQNhsbIGUJeKuovMe2QzVeYMnUU0g/viewform', '1', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (10, 5, NULL, '', 'akabis-waste-management-academy', 'akabis-waste-management-academy', 'AKABIS', 'take-a-closer-look-at-waste-management-facts-and-s', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'akademi-bijak-sampah-akabis-is-an-education-mode-created-by', '', NULL, 'educational-program-and-field-visit-to-see-the-waste-management-process-at-waste4change', 'waste-education-waste-tour-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-landfill-visit-bantar-gebang-waste-man', 'educational-program-and-field-visit-to-see-the-waste-management-process-at-waste4change-as-well-as-landfills', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/akabis-waste-management-academy', 'https://www.google.com/maps/d/u/4/embed?mid=1xvUoOkajgibuGD6SVt3XgFvlNHspNJmt', 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', '1', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (11, 5, NULL, '', 'black-soldier-fly-learning-center', 'black-soldier-fly-learning-center', 'BSF Learning Center', 'effective-organic-waste-solution', 'receive-in-depth-information-regarding-organic-was', 'through-bsf-learning-center-you-will-receive-in-d', '', NULL, 'educational-session-on-organic-waste-decomposition-using-black-soldier-fly-bsf', 'waste-decomposition-education-waste-decomposition-waste-decomposition-service-black-soldier-fly-cultivation-black-soldier-fly-breeding-making-organic-fertilizer-organic-fertilizer', 'educational-services-on-organic-waste-management-decomposition-and-the-cultivation-of-the-black-soldier-fly-bsf', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/black-soldier-fly-learning-center', 'https://www.google.com/maps/d/u/4/embed?mid=1yuVnbriDYDMIZbKRRW9bk4hwejRiMTRO', 'https://docs.google.com/forms/d/e/1FAIpQLSc7hGAdWLlFqt5qa38-7fMwA9Nsp2ev9lUk7Qi8Xwe_z3lYfg/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (12, 7, NULL, '', 'black-soldier-fly-tools-products', 'black-soldier-fly-tools-products', 'BSF Tools Products', '', 'we-provide-black-soldier-fly-larvae-that-is-high-i', '', '', NULL, NULL, NULL, NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'http://w4c.id/rumahkompos', NULL, NULL, NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (13, 6, NULL, '', 'send-your-waste', 'send-your-waste', NULL, '', 'send-your-inorganic-waste-to-waste4change-and-let-', '', '', NULL, NULL, NULL, NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'sendyourwaste', NULL, NULL, NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (14, 6, NULL, '', 'dropbox', 'dropbox', NULL, '', 'deposit-your-inorganic-waste-in-waste4changes-dro', '', '', NULL, NULL, NULL, NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'dropbox', NULL, NULL, NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (15, 6, NULL, '', 'sinergi-adesniatmurni-dan-gojek', 'sinergi-adesniatmurni-dan-gojek', NULL, '', 'send-your-used-pet-bottles-of-various-sizes-and-br', '', '', NULL, NULL, NULL, NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'poin/home/sinergi-ades-niat-murni-dan-gojek', NULL, NULL, NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL);
INSERT INTO `service` VALUES (16, 6, NULL, '', 'merchant', 'merchant', NULL, '', 'deposit-your-used-packaging-through-our-partners-t', '', '', NULL, NULL, NULL, NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'poin/home/', NULL, NULL, NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', '2019-11-16 18:53:26');
INSERT INTO `service` VALUES (17, 6, NULL, '', 'home-composting', 'home-composting', NULL, '', 'process-your-organic-waste-at-home-with-waste4cha', '', '', NULL, NULL, NULL, NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'http://w4c.id/rumahkompos', NULL, NULL, NULL, 0, 0, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL);
INSERT INTO `service` VALUES (18, NULL, 7, 'swm-research-in-institutions', 'solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', 'solid-waste-management-study-at-pelabuhan-indonesi', NULL, '', '', 'based-on-the-regulation-of-ministry-of-transportat', 'pt-pelabuhan-indonesia-ii-persero', NULL, 'solid-waste-management-research-and-study-for-institutions', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management', 'solid-waste-management-study-at-pelabuhan-indonesia-ii-headquarter-to-implement-the-3rs-concept', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL);
INSERT INTO `service` VALUES (19, NULL, 7, 'swm-research-in-municipalities', 'solid-waste-management-design-for-revitalisation-at-jami-mosque-and-kampung-beting-settlements-in-pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', NULL, '', '', 'beting-village-and-jami-mosque-area-are-located-a', 'ministry-of-public-works-and-housings', NULL, 'solid-waste-management-study-and-research-for-tourism-sitesarea', 'waste-research-waste-study-waste-research-service-waste-research-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-tourism-waste-tourist-waste-tourism-waste-man', 'waste-management-plan-for-the-revitalization-of-masjid-jami-and-beting-village-in-pontianak', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/solid-waste-management-design-for-revitalisation-at-jami\'-mosque-and-kampung-beting-settlements-in-pontianak', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (20, NULL, 7, 'value-chain-analysis', 'waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', NULL, '', '', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'pt-deloitte-konsultan-indonesia', NULL, 'solid-waste-management-research-and-study-based-on-value-chain-analysis', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-life-chain-analysis-waste-value-chain-waste-repo', 'waste-management-study-and-stakeholder-as-well-as-waste-flow-mapping-in-jakarta-and-surabaya-', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (21, NULL, 7, 'marine-debris-study', 'riverine-plastic-monitoring-project-in-jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', NULL, '', '', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'the-ocean-cleanup', NULL, 'solid-waste-management-research-and-study-on-marine-debris', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-river-waste-riverine-waste-marine-debris-ocean-p', 'study-on-riverine-plastic-emission-from-jakarta-into-the-ocean-with-the-ocean-cleanup', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/riverine-plastic-monitoring-project-in-jakarta', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (22, NULL, 7, 'waste-to-energy', 'technical-due-diligence-for-itf-sunter-jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', NULL, '', '', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'ramboll-danmark', NULL, 'waste-management-research-and-study-for-waste-to-energy', 'waste-research-waste-study-waste-research-service-waste-study-service-environmental-aspect-waste-research-waste-data-collection-waste-volume-waste-amount-types-of-waste-waste-category-solid-waste-management-waste-to-energy', 'feasibility-study-for-itf-sunter-jakarta-to-make-waste-to-energy-technology', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/feasibility-study-of-pyrolysis-for-plastic-packaging-in-lombok-and-batam', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (23, NULL, 8, 'community-assistance-in-institutions', '3r-program-suralaya', '3r-program-suralaya', NULL, '', '', 'waste4change-assisted-pt-indonesia-power-up-surala', 'pt-indonesia-power-up-suralaya', NULL, 'waste-management-assistance-for-institutions', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-3r-waste-3r-concept', 'counseling-and-socialization-of-the-3rs-concept-in-suralaya-together-with-pt-indonesia-powerup-suralaya', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/3r-program-suralaya', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (24, NULL, 8, 'community-assistance-in-municipalities', 'tps-3r-advisory', 'tps-3r-advisory', NULL, '', '', 'in-order-to-achieve-the-national-target-of-30-was', 'pt-sarana-multi-daya-pt-multi-karadiguna-jasa-', NULL, 'waste-management-assistance-for-regions-andor-districts', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-3r-waste-3r-concept-tps-3r', 'tps-3r-assistance-in-kalimantan-jawa-nusa-tenggara-sulawesi-maluku-papua-to-reduce-waste-from-the-source', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/tps-3r-advisory', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (25, NULL, 8, 'community-assistance-in-tourism-sites', 'ecoranger-in-pulau-merah-banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', NULL, '', '', 'tourism-in-indonesia-is-currently-growing-exponent', 'greeneration-foundation-coca-cola-foundation-indo', NULL, 'waste-management-assistance-for-tourism-sitesarea', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-ecotourism-sustainable-tourism', 'the-formation-of-ecoranger-in-pulau-merah-banyuwangi-to-help-reduce-waste-from-the-source', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/ecoranger-in-pulau-merah-banyuwangi', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (26, NULL, 8, 'community-capacity-building', 'capacity-building-in-indonesias-frontline-territories', 'capacity-building-di-wilayah-terdepan-indonesia', NULL, '', '', 'indonesias-frontline-areas-reflect-the-life-of-th', 'pt-idee-murni-pratama-pt-wijaya-karya-pt-huta', NULL, 'waste-management-assistance-for-communities', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-ecotourism', 'capacity-building-regarding-waste-management-in-indonesias-frontline-territories', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/capacity-building-in-indonesia\'s-frontline-territories', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (27, NULL, 9, '3r-green-school', '3r-green-school', '3r-green-school', NULL, '', '', 'the-unilever-foundation-along-with-waste4change-or', 'yayasan-unilever-indonesia', NULL, 'program-assistance-for-3rs-reduce-reuse-recycle-implementation-in-schools', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-3r-waste-3r-concept-school-waste-school-recycling', 'program-assistance-for-3rs-reduce-reuse-recycle-implementation-in-schools-with-unilever-indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/3r-green-school', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScmBjcHJhsI1OIOM-So0VQNhsbIGUJeKuovMe2QzVeYMnUU0g/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (28, NULL, 10, 'akabis-class-for-institution', 'akabis-class-for-the-embassy-of-finland-jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', NULL, '', '', 'knowledge-about-responsible-solid-waste-management', 'embassy-of-finland-in-indonesia', NULL, 'waste-management-educational-class-for-institutions', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-cleaning-service-training-building-management-tra', 'waste-management-educational-class-for-the-staffs-at-the-embassy-of-finland-in-jakarta-as-a-part-of-the-waste-collection-service', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/akabis-class-for-the-embassy-of-finland-jakarta', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (29, NULL, 10, 'akabis-class-for-public', 'akabis-class-the-neglected-debris-paper-letter-and-waste-discussion', 'akabis-class-the-neglected-debris:-paper-letter', NULL, 'get-the-special-waste-bins-designed-specifically-t', '', 'the-ancient-method-of-making-paper-is-not-only-rec', 'pt-galeri-museum-macan', NULL, 'waste-management-educational-class-for-the-general-public', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program', 'waste-management-education-for-seminar-participants-at-the-museum-of-modern-and-contemporary-art-in-nusantara-macan', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/akabis-class-the-neglected-debris:-paper,-letter-and-waste-discussion', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (30, NULL, 10, 'akabis-xperience-for-institution', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', NULL, 'making-sure-that-your-inorganic-waste-is-recycled-', '', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'pt-bank-dbs-indonesia', NULL, 'waste-management-education-and-tour-for-institutions', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-waste-tour-landfill-visit-bantar-gebang-waste4cha', 'waste-management-education-and-tour-for-the-employess-of-dbs-bank-indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/akabis-xperience-for-world-bank-jakarta', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (31, NULL, 10, 'akabis-xperience-for-public', 'akabis-xperience-for-yseali', 'akabis-xperience-untuk-yseali-young-southeast-asi', NULL, 'waste4change-provides-composting-tools-for-those', '', 'waste4change-became-one-of-the-facilitators-for-ys', 'implemented-by-divers-clean-action-and-hosted-by-u', NULL, 'waste-management-education-and-tour-for-the-general-public', 'waste-education-waste-assistance-waste-class-waste-socialization-waste-guidance-waste-management-education-waste-management-program-waste-workshop-waste-training-corporate-social-responsibility-csr-program-waste-tour-landfill-visit-bantar-gebang-waste4cha', 'waste-management-education-and-tour-for-yseali-workshops-participants', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/akabis-xperience-for-yseali', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);
INSERT INTO `service` VALUES (32, 8, NULL, 'Custom Waste Bin ', 'custom-waste-bin', 'custom-waste-bin', 'CWB', 'invite-visitors-to-increase-waste-segregation-with', 'get-the-special-waste-bins-designed-specifically-t', 'educate-people-around-your-area-with-a-better-mess', '', NULL, 'custom-waste-bins-with-clear-and-precise-waste-segregation-guide', 'custom-waste-bin-custom-garbage-bag-custom-trash-can-custom-trash-bag-trash-bin-manufacturing-service-segregated-waste-bin-segregated-trash-bin-segregated-trash-can-waste-segregation-branded-waste-bin-branded-trash-can-branded-trash-bag-special-waste-bin-', 'custom-waste-bins-with-clear-and-precise-waste-segregation-guide', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/custom-waste-bin', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSfiR_Gy39VKbuU8vo7VgOku0g22ZHNRvpETfA8OT2nIJPuD7w/viewform', NULL, 1, 0, '2020-03-03 22:18:35', '2020-03-03 22:18:35', NULL);
INSERT INTO `service` VALUES (33, 6, NULL, 'Personal Waste Managemnet ', 'personal-waste-management', 'personal-waste-management', 'PWM', 'no-more-mixed-waste-collection', 'making-sure-that-your-inorganic-waste-is-recycled-', 'responsible-waste-management-starts-with-waste-seg', '', NULL, 'waste-collection-straight-from-your-doorstep', 'waste-collection-waste-collection-service-household-waste-inorganic-waste-domestic-waste-door-to-door-waste-collection-residential-waste-individual-waste-waste-pickup', 'responsible-door-to-door-waste-collection-and-management', '2-about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/personal-waste-management', 'https://www.google.com/maps/d/u/4/embed?mid=1prjvUYrAvx4_XGJu1WCxFRJO9BtQ6Hpv', 'https://docs.google.com/forms/d/e/1FAIpQLSds5DtNPTUzwpdHYN3ihMgK0_ILYWV4r2oqFgVwvNnjSzdcsw/viewform', NULL, 1, 1, '2020-03-03 22:18:35', '2020-03-03 22:18:35', NULL);
INSERT INTO `service` VALUES (34, 6, NULL, 'Composting Tools', 'composting-tools-supplies', 'composting-tools', 'Composting Tools', 'divert-organic-waste-from-landfill-with-composting', 'waste4change-provides-composting-tools-for-those-o', 'once-the-organic-waste-has-already-been-segregated', '', NULL, 'reduce-your-organic-waste-through-home-composting', 'home-composting-composting-equipment-composting-kit-compost-fertilizer-composting-bag-compost-bag-composter-compost-making-home-compost', 'reduce-your-volume-of-organic-waste-by-composting-at-home', '2-about.jpg', '2-header.jpg', 'thumbnail.jpg', 'official/service/composting-tools-supplies', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeiPULugXFbA5YkZ9Rz8Qp6WX8f3EtstBPU8mHjn4BLlFWTAQ/viewform', NULL, 1, 1, '2020-03-03 22:18:35', '2020-03-03 22:18:35', NULL);

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
  PRIMARY KEY (`service_category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_category
-- ----------------------------
INSERT INTO `service_category` VALUES (1, 1, 'waste-collection-program', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL);
INSERT INTO `service_category` VALUES (2, 1, 'extended-producer-responsibility', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL);
INSERT INTO `service_category` VALUES (3, 1, 'solid-waste-management-research', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL);
INSERT INTO `service_category` VALUES (4, 1, 'community-development', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL);
INSERT INTO `service_category` VALUES (5, 1, 'training', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL);
INSERT INTO `service_category` VALUES (6, 2, 'general', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL);
INSERT INTO `service_category` VALUES (7, 1, 'general', NULL, '2020-01-20 09:51:22', '2020-01-20 09:51:22', NULL);
INSERT INTO `service_category` VALUES (8, 1, 'collect-waste-management', NULL, '2020-03-03 22:21:49', '2020-03-03 22:25:12', NULL);

-- ----------------------------
-- Table structure for service_client
-- ----------------------------
DROP TABLE IF EXISTS `service_client`;
CREATE TABLE `service_client`  (
  `service_client_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `client_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_client
-- ----------------------------
INSERT INTO `service_client` VALUES (1, 1, 4, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (2, 1, 26, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (3, 1, 34, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (4, 1, 49, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (5, 1, 60, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (6, 2, 9, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (7, 2, 10, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (8, 2, 11, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (9, 2, 17, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (10, 2, 19, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (11, 2, 30, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (12, 2, 41, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (13, 2, 45, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (14, 2, 47, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (15, 2, 48, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (16, 2, 51, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (17, 2, 53, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (18, 2, 61, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (19, 2, 65, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (20, 3, 8, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (21, 3, 24, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (22, 3, 28, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (23, 3, 54, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (24, 3, 55, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (25, 4, 7, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (26, 4, 22, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (27, 4, 23, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (28, 4, 25, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (29, 4, 36, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (30, 4, 39, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (31, 4, 40, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (32, 4, 53, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (33, 4, 59, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (34, 5, 6, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (35, 5, 13, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (36, 5, 17, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (37, 5, 33, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (38, 5, 38, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (39, 5, 41, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (40, 5, 52, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (41, 5, 53, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (42, 5, 56, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (43, 5, 59, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (44, 5, 62, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (45, 5, 65, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (46, 6, 32, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (47, 6, 1, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (48, 7, 3, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (49, 7, 12, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (50, 7, 16, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (51, 7, 28, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (52, 7, 30, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (53, 7, 42, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (54, 7, 43, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (55, 7, 45, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (56, 7, 61, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (57, 8, 20, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (58, 8, 2, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (59, 8, 5, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (60, 8, 16, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (61, 8, 42, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (62, 8, 45, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (63, 9, 10, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (64, 9, 52, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (65, 9, 63, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (66, 10, 50, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (67, 10, 63, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (68, 1, 58, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (69, 1, 21, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (70, 2, 18, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (71, 7, 44, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (72, 11, 14, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (73, 11, 27, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (74, 11, 35, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (75, 11, 46, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (76, 11, 57, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (77, 9, 37, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (78, 9, 64, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (79, 10, 31, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (80, 10, 53, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (81, 32, 10, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (82, 32, 61, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (83, 32, 45, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (84, 32, 29, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (85, 32, 19, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);
INSERT INTO `service_client` VALUES (86, 32, 15, '2020-04-30 11:12:51', '2020-04-30 11:12:51', NULL);

-- ----------------------------
-- Table structure for service_coverage
-- ----------------------------
DROP TABLE IF EXISTS `service_coverage`;
CREATE TABLE `service_coverage`  (
  `service_coverage_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `service_coverage_type` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `service_coverage_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `service_coverage_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `service_coverage_icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `service_coverage_code` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`service_coverage_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 307 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_coverage
-- ----------------------------
INSERT INTO `service_coverage` VALUES (1, 31, 'area', 'province', '#7ab74e', 'green.png', 11, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (2, 31, 'area', 'province', '#7ab74e', 'green.png', 12, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (3, 31, 'area', 'province', '#7ab74e', 'green.png', 13, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (4, 31, 'area', 'province', '#7ab74e', 'green.png', 14, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (5, 31, 'area', 'province', '#7ab74e', 'green.png', 15, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (6, 31, 'area', 'province', '#7ab74e', 'green.png', 16, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (7, 31, 'area', 'province', '#7ab74e', 'green.png', 17, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (8, 31, 'area', 'province', '#7ab74e', 'green.png', 18, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (9, 31, 'area', 'province', '#7ab74e', 'green.png', 19, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (10, 31, 'area', 'province', '#7ab74e', 'green.png', 21, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (11, 31, 'area', 'province', '#7ab74e', 'green.png', 31, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (12, 31, 'area', 'province', '#7ab74e', 'green.png', 32, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (13, 31, 'area', 'city', '#7ab74e', 'green.png', 33, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (14, 31, 'area', 'province', '#7ab74e', 'green.png', 34, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (15, 31, 'area', 'province', '#7ab74e', 'green.png', 35, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (16, 31, 'area', 'province', '#7ab74e', 'green.png', 36, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (17, 31, 'area', 'province', '#7ab74e', 'green.png', 51, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (18, 31, 'area', 'province', '#7ab74e', 'green.png', 52, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (19, 31, 'area', 'province', '#7ab74e', 'green.png', 53, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (20, 31, 'area', 'province', '#7ab74e', 'green.png', 61, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (21, 31, 'area', 'province', '#7ab74e', 'green.png', 62, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (22, 31, 'area', 'province', '#7ab74e', 'green.png', 63, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (23, 31, 'area', 'province', '#7ab74e', 'green.png', 64, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (24, 31, 'area', 'province', '#7ab74e', 'green.png', 65, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (25, 31, 'area', 'province', '#7ab74e', 'green.png', 71, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (26, 31, 'area', 'province', '#7ab74e', 'green.png', 72, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (27, 31, 'area', 'province', '#7ab74e', 'green.png', 73, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (28, 31, 'area', 'province', '#7ab74e', 'green.png', 74, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (29, 31, 'area', 'province', '#7ab74e', 'green.png', 75, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (30, 31, 'area', 'province', '#7ab74e', 'green.png', 76, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (31, 31, 'area', 'province', '#7ab74e', 'green.png', 81, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (32, 31, 'area', 'province', '#7ab74e', 'green.png', 82, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (33, 31, 'area', 'province', '#7ab74e', 'green.png', 91, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (34, 31, 'area', 'province', '#7ab74e', 'green.png', 92, '2020-04-13 10:16:39', '2020-04-14 09:38:47', NULL);
INSERT INTO `service_coverage` VALUES (35, 29, 'area', 'province', '#ff2214', 'red.png', 94, '2020-04-13 10:16:54', '2020-04-14 09:38:28', NULL);
INSERT INTO `service_coverage` VALUES (36, 1, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3671, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (37, 1, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3275, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (38, 1, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3271, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (39, 1, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3173, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (40, 1, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3171, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (41, 1, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3174, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (42, 1, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3175, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (43, 1, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3172, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (44, 2, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3671, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (45, 2, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3275, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (46, 2, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3271, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (47, 2, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3173, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (48, 2, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3171, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (49, 2, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3174, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (50, 2, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3175, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (51, 2, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3172, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (52, 3, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3671, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (53, 3, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3275, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (54, 3, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3271, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (55, 3, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3173, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (56, 3, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3171, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (57, 3, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3174, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (58, 3, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3175, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (59, 3, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3172, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (60, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3671, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (61, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3273, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (62, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3275, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (63, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3271, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (64, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3173, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (65, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3171, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (66, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3174, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (67, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3175, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (68, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3172, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (69, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3374, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (70, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3515, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (71, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3578, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (72, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 5103, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (73, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 5106, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (74, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 5108, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (75, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 5104, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (76, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 5101, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (77, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 5107, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (78, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 5105, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (79, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 5102, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (80, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 5171, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (81, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 6471, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (82, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 7371, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (83, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 7171, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (84, 5, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3671, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (85, 5, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3275, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (86, 5, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3271, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (87, 5, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3276, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (88, 5, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3173, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (89, 5, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3171, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (90, 5, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3174, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (91, 5, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3175, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (92, 5, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3172, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (93, 5, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3515, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (99, 11, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3515, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (101, 13, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3275, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (102, 13, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3374, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (103, 14, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3275, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (104, 14, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3173, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (105, 14, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3171, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (106, 14, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3174, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (107, 14, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3175, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (108, 14, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3172, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (109, 15, 'point', 'city', '#7ab74e', 'icon-pin2.png', 1271, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (110, 15, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3273, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (111, 15, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3173, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (112, 15, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3171, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (113, 15, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3174, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (114, 15, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3175, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (115, 15, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3172, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (116, 15, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3374, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (117, 15, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3578, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (118, 15, 'point', 'city', '#7ab74e', 'icon-pin2.png', 7371, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (119, 16, 'point', 'city', '#7ab74e', 'icon-pin2.png', 1271, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (120, 16, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3273, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (121, 16, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3173, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (122, 16, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3171, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (123, 16, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3174, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (124, 16, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3175, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (125, 16, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3172, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (126, 16, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3374, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (127, 16, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3578, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (128, 16, 'point', 'city', '#7ab74e', 'icon-pin2.png', 7371, '2020-04-13 10:53:10', '2020-04-14 02:26:49', NULL);
INSERT INTO `service_coverage` VALUES (130, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 1871, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (131, 4, 'point', 'city', '#7ab74e', 'icon-pin2.png', 1271, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (132, 31, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3671, '2020-04-13 10:53:10', '2020-04-14 09:38:59', '2020-04-14 02:26:54');
INSERT INTO `service_coverage` VALUES (133, 31, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3275, '2020-04-13 10:53:10', '2020-04-14 09:38:58', '2020-04-14 02:26:54');
INSERT INTO `service_coverage` VALUES (134, 33, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3174, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (135, 33, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3275, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (136, 33, 'point', 'city', '#7ab74e', 'icon-pin2.png', 3674, '2020-04-13 10:53:10', '2020-04-14 02:26:54', NULL);
INSERT INTO `service_coverage` VALUES (137, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 11, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (138, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 12, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (139, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 13, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (140, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 14, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (141, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 15, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (142, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 16, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (143, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 17, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (144, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 18, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (145, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 19, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (146, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 21, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (147, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 31, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (148, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 32, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (149, 6, 'area', 'city', '#7ab74e', 'icon-pin1.png', 33, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (150, 6, 'area', 'city', '#7ab74e', 'icon-pin1.png', 34, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (151, 6, 'area', 'city', '#7ab74e', 'icon-pin1.png', 35, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (152, 6, 'area', 'city', '#7ab74e', 'icon-pin1.png', 36, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (153, 6, 'area', 'city', '#7ab74e', 'icon-pin1.png', 51, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (154, 6, 'area', 'city', '#7ab74e', 'icon-pin1.png', 52, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (155, 6, 'area', 'city', '#7ab74e', 'icon-pin1.png', 53, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (156, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 61, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (157, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 62, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (158, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 63, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (159, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 64, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (160, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 65, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (161, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 71, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (162, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 72, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (163, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 73, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (164, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 74, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (165, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 75, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (166, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 76, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (167, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 81, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (168, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 82, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (169, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 91, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (170, 6, 'area', 'province', '#7ab74e', 'icon-pin1.png', 92, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (171, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 11, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (172, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 12, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (173, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 13, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (174, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 14, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (175, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 15, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (176, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 16, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (177, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 17, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (178, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 18, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (179, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 19, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (180, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 21, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (181, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 31, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (182, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 32, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (183, 7, 'area', 'city', '#7ab74e', 'icon-pin1.png', 33, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (184, 7, 'area', 'city', '#7ab74e', 'icon-pin1.png', 34, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (185, 7, 'area', 'city', '#7ab74e', 'icon-pin1.png', 35, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (186, 7, 'area', 'city', '#7ab74e', 'icon-pin1.png', 36, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (187, 7, 'area', 'city', '#7ab74e', 'icon-pin1.png', 51, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (188, 7, 'area', 'city', '#7ab74e', 'icon-pin1.png', 52, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (189, 7, 'area', 'city', '#7ab74e', 'icon-pin1.png', 53, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (190, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 61, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (191, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 62, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (192, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 63, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (193, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 64, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (194, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 65, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (195, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 71, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (196, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 72, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (197, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 73, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (198, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 74, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (199, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 75, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (200, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 76, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (201, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 81, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (202, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 82, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (203, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 91, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (204, 7, 'area', 'province', '#7ab74e', 'icon-pin1.png', 92, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (205, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 11, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (206, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 12, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (207, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 13, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (208, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 14, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (209, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 15, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (210, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 16, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (211, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 17, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (212, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 18, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (213, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 19, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (214, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 21, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (215, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 31, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (216, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 32, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (217, 8, 'area', 'city', '#7ab74e', 'icon-pin1.png', 33, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (218, 8, 'area', 'city', '#7ab74e', 'icon-pin1.png', 34, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (219, 8, 'area', 'city', '#7ab74e', 'icon-pin1.png', 35, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (220, 8, 'area', 'city', '#7ab74e', 'icon-pin1.png', 36, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (221, 8, 'area', 'city', '#7ab74e', 'icon-pin1.png', 51, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (222, 8, 'area', 'city', '#7ab74e', 'icon-pin1.png', 52, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (223, 8, 'area', 'city', '#7ab74e', 'icon-pin1.png', 53, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (224, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 61, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (225, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 62, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (226, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 63, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (227, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 64, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (228, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 65, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (229, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 71, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (230, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 72, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (231, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 73, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (232, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 74, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (233, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 75, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (234, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 76, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (235, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 81, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (236, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 82, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (237, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 91, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (238, 8, 'area', 'province', '#7ab74e', 'icon-pin1.png', 92, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (239, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 11, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (240, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 12, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (241, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 13, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (242, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 14, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (243, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 15, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (244, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 16, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (245, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 17, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (246, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 18, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (247, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 19, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (248, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 21, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (249, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 31, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (250, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 32, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (251, 9, 'area', 'city', '#7ab74e', 'icon-pin1.png', 33, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (252, 9, 'area', 'city', '#7ab74e', 'icon-pin1.png', 34, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (253, 9, 'area', 'city', '#7ab74e', 'icon-pin1.png', 35, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (254, 9, 'area', 'city', '#7ab74e', 'icon-pin1.png', 36, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (255, 9, 'area', 'city', '#7ab74e', 'icon-pin1.png', 51, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (256, 9, 'area', 'city', '#7ab74e', 'icon-pin1.png', 52, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (257, 9, 'area', 'city', '#7ab74e', 'icon-pin1.png', 53, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (258, 9, 'area', 'city', '#7ab74e', 'icon-pin1.png', 61, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (259, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 62, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (260, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 63, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (261, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 64, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (262, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 65, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (263, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 71, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (264, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 72, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (265, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 73, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (266, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 74, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (267, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 75, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (268, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 76, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (269, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 81, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (270, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 82, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (271, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 91, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (272, 9, 'area', 'province', '#7ab74e', 'icon-pin1.png', 92, '2020-04-13 11:25:06', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (273, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 11, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (274, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 12, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (275, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 13, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (276, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 14, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (277, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 15, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (278, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 16, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (279, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 17, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (280, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 18, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (281, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 19, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (282, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 21, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (283, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 31, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (284, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 32, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (285, 12, 'area', 'city', '#7ab74e', 'icon-pin1.png', 33, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (286, 12, 'area', 'city', '#7ab74e', 'icon-pin1.png', 34, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (287, 12, 'area', 'city', '#7ab74e', 'icon-pin1.png', 35, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (288, 12, 'area', 'city', '#7ab74e', 'icon-pin1.png', 36, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (289, 12, 'area', 'city', '#7ab74e', 'icon-pin1.png', 51, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (290, 12, 'area', 'city', '#7ab74e', 'icon-pin1.png', 52, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (291, 12, 'area', 'city', '#7ab74e', 'icon-pin1.png', 53, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (292, 12, 'area', 'city', '#7ab74e', 'icon-pin1.png', 61, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (293, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 62, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (294, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 63, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (295, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 64, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (296, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 65, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (297, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 71, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (298, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 72, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (299, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 73, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (300, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 74, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (301, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 75, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (302, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 76, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (303, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 81, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (304, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 82, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (305, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 91, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);
INSERT INTO `service_coverage` VALUES (306, 12, 'area', 'province', '#7ab74e', 'icon-pin1.png', 92, '2020-04-13 11:26:16', '2020-04-14 02:27:02', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_recomendation
-- ----------------------------
INSERT INTO `service_recomendation` VALUES (1, 1, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (2, 1, 16, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (3, 1, 10, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (4, 1, 25, '2019-12-07 22:50:16', '2020-01-22 23:28:11', NULL);
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
INSERT INTO `service_recomendation` VALUES (16, 4, 7, '2019-12-07 22:50:16', '2020-01-04 11:26:32', NULL);
INSERT INTO `service_recomendation` VALUES (17, 4, 8, '2019-12-07 22:50:16', '2020-01-04 11:26:33', NULL);
INSERT INTO `service_recomendation` VALUES (18, 4, 3, '2019-12-07 22:50:16', '2020-01-04 11:26:35', NULL);
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
INSERT INTO `service_recomendation` VALUES (32, 8, 20, '2019-12-07 22:50:16', '2020-01-14 23:20:09', NULL);
INSERT INTO `service_recomendation` VALUES (33, 8, 19, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (34, 8, 9, '2019-12-07 22:50:16', '2020-01-14 23:20:09', NULL);
INSERT INTO `service_recomendation` VALUES (35, 8, 15, '2019-12-07 22:50:16', '2020-01-20 09:47:59', NULL);
INSERT INTO `service_recomendation` VALUES (36, 8, 21, '2019-12-07 22:50:16', '2020-01-14 23:20:25', NULL);
INSERT INTO `service_recomendation` VALUES (37, 8, 8, '2019-12-07 22:50:16', '2020-01-14 23:20:09', NULL);
INSERT INTO `service_recomendation` VALUES (39, 9, 20, '2019-12-07 22:50:16', '2020-01-14 23:36:15', NULL);
INSERT INTO `service_recomendation` VALUES (40, 9, 9, '2019-12-07 22:50:16', '2020-01-14 23:36:15', NULL);
INSERT INTO `service_recomendation` VALUES (45, 11, 2, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (46, 11, 14, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (47, 12, 2, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (48, 12, 14, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (49, 13, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (50, 14, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (51, 15, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (52, 16, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (53, 17, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);
INSERT INTO `service_recomendation` VALUES (54, 2, 23, '2020-01-04 14:06:22', '2020-01-04 14:06:22', NULL);
INSERT INTO `service_recomendation` VALUES (55, 2, 24, '2020-01-04 14:06:23', '2020-01-04 14:06:23', NULL);
INSERT INTO `service_recomendation` VALUES (56, 3, 23, '2020-01-11 18:33:15', '2020-01-11 18:33:15', NULL);
INSERT INTO `service_recomendation` VALUES (57, 3, 24, '2020-01-11 18:33:15', '2020-01-11 18:33:15', NULL);
INSERT INTO `service_recomendation` VALUES (58, 7, 15, '2020-01-12 23:44:41', '2020-01-12 23:44:41', NULL);
INSERT INTO `service_recomendation` VALUES (59, 7, 21, '2020-01-12 23:44:41', '2020-01-12 23:44:41', NULL);
INSERT INTO `service_recomendation` VALUES (60, 9, 17, '2020-01-14 23:36:45', '2020-01-14 23:36:45', NULL);
INSERT INTO `service_recomendation` VALUES (61, 9, 8, '2020-01-14 23:36:45', '2020-01-14 23:36:45', NULL);
INSERT INTO `service_recomendation` VALUES (62, 10, 18, '2020-01-20 09:49:04', '2020-01-20 09:49:16', NULL);
INSERT INTO `service_recomendation` VALUES (63, 10, 19, '2020-01-20 09:49:05', '2020-01-20 09:49:19', NULL);
INSERT INTO `service_recomendation` VALUES (64, 10, 20, '2020-01-20 09:49:25', '2020-01-23 00:01:15', NULL);
INSERT INTO `service_recomendation` VALUES (65, 10, 9, '2020-01-20 09:49:28', '2020-01-20 09:49:47', NULL);
INSERT INTO `service_recomendation` VALUES (66, 10, 8, '2020-01-20 09:49:31', '2020-01-20 09:49:47', NULL);
INSERT INTO `service_recomendation` VALUES (67, 10, 15, '2020-01-20 09:49:35', '2020-01-20 09:49:47', NULL);
INSERT INTO `service_recomendation` VALUES (68, 10, 21, '2020-01-20 09:49:44', '2020-01-20 09:49:47', NULL);
INSERT INTO `service_recomendation` VALUES (69, 32, 12, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL);
INSERT INTO `service_recomendation` VALUES (70, 32, 16, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL);
INSERT INTO `service_recomendation` VALUES (71, 32, 10, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL);
INSERT INTO `service_recomendation` VALUES (72, 32, 21, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL);
INSERT INTO `service_recomendation` VALUES (73, 32, 15, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL);
INSERT INTO `service_recomendation` VALUES (74, 33, 11, '2020-03-03 22:32:36', '2020-03-06 13:42:25', NULL);
INSERT INTO `service_recomendation` VALUES (75, 34, 3, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL);
INSERT INTO `service_recomendation` VALUES (76, 34, 11, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL);

-- ----------------------------
-- Table structure for service_record
-- ----------------------------
DROP TABLE IF EXISTS `service_record`;
CREATE TABLE `service_record`  (
  `coverage_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `city_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`coverage_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_record
-- ----------------------------
INSERT INTO `service_record` VALUES (99, 1, '3671', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (100, 1, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (101, 1, '3271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (102, 1, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (103, 1, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (104, 1, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (105, 1, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (106, 1, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (107, 2, '3671', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (108, 2, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (109, 2, '3271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (110, 2, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (111, 2, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (112, 2, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (113, 2, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (114, 2, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (115, 3, '3671', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (116, 3, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (117, 3, '3271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (118, 3, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (119, 3, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (120, 3, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (121, 3, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (122, 3, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (123, 4, '3671', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (124, 4, '3273', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (125, 4, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (126, 4, '3271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (127, 4, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (128, 4, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (129, 4, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (130, 4, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (131, 4, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (132, 4, '3374', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (133, 4, '3515', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (134, 4, '3578', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (135, 4, '5103', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (136, 4, '5106', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (137, 4, '5108', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (138, 4, '5104', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (139, 4, '5101', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (140, 4, '5107', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (141, 4, '5105', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (142, 4, '5102', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (143, 4, '5171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (144, 4, '6471', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (145, 4, '7371', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (146, 4, '7171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (147, 5, '3671', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (148, 5, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (149, 5, '3271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (150, 5, '3276', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (151, 5, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (152, 5, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (153, 5, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (154, 5, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (155, 5, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (156, 5, '3515', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (157, 6, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (158, 7, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (159, 8, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (160, 9, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (161, 10, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (162, 11, '3515', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (163, 12, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (164, 13, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (165, 13, '3374', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (166, 14, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (167, 14, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (168, 14, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (169, 14, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (170, 14, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (171, 14, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (172, 15, '1271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (173, 15, '3273', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (174, 15, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (175, 15, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (176, 15, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (177, 15, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (178, 15, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (179, 15, '3374', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (180, 15, '3578', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (181, 15, '7371', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (182, 16, '1271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (183, 16, '3273', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (184, 16, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (185, 16, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (186, 16, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (187, 16, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (188, 16, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (189, 16, '3374', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (190, 16, '3578', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (191, 16, '7371', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL);
INSERT INTO `service_record` VALUES (192, 17, '0', '2020-02-13 15:57:30', '2020-02-13 15:57:30', NULL);
INSERT INTO `service_record` VALUES (193, 4, '1871', '2020-02-16 23:35:12', '2020-02-16 23:35:44', NULL);
INSERT INTO `service_record` VALUES (194, 4, '1271', '2020-02-16 23:35:30', '2020-02-16 23:35:42', NULL);
INSERT INTO `service_record` VALUES (195, 30, '3671', '2020-02-17 13:59:29', '2020-02-17 14:00:10', NULL);
INSERT INTO `service_record` VALUES (196, 31, '3275', '2020-02-17 13:59:56', '2020-02-17 14:01:22', NULL);
INSERT INTO `service_record` VALUES (197, 33, '3174', '2020-03-06 13:55:54', '2020-03-06 13:57:04', NULL);
INSERT INTO `service_record` VALUES (198, 33, '3275', '2020-03-06 13:55:57', '2020-03-06 13:57:22', NULL);
INSERT INTO `service_record` VALUES (199, 33, '3674', '2020-03-06 13:55:58', '2020-03-06 13:57:01', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 266 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
INSERT INTO `service_section` VALUES (231, 32, 1, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL);
INSERT INTO `service_section` VALUES (232, 32, 3, '2020-03-03 22:27:18', '2020-03-06 09:59:15', '2020-03-03 22:27:18');
INSERT INTO `service_section` VALUES (233, 32, 4, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL);
INSERT INTO `service_section` VALUES (234, 32, 9, '2020-03-03 22:27:18', '2020-03-06 10:05:52', NULL);
INSERT INTO `service_section` VALUES (235, 32, 12, '2020-03-03 22:27:18', '2020-03-12 09:02:50', '2020-03-03 22:27:18');
INSERT INTO `service_section` VALUES (236, 32, 13, '2020-03-03 22:27:18', '2020-03-06 09:55:04', '2020-03-03 22:27:18');
INSERT INTO `service_section` VALUES (237, 32, 14, '2020-03-03 22:27:18', '2020-03-06 09:54:58', NULL);
INSERT INTO `service_section` VALUES (238, 32, 16, '2020-03-03 22:27:18', '2020-03-06 09:54:59', NULL);
INSERT INTO `service_section` VALUES (239, 32, 18, '2020-03-03 22:27:18', '2020-03-07 23:50:53', NULL);
INSERT INTO `service_section` VALUES (240, 32, 19, '2020-03-03 22:27:18', '2020-03-07 23:50:54', NULL);
INSERT INTO `service_section` VALUES (241, 32, 21, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL);
INSERT INTO `service_section` VALUES (242, 33, 1, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL);
INSERT INTO `service_section` VALUES (243, 33, 3, '2020-03-03 22:27:18', '2020-03-06 13:55:17', '2020-03-03 22:27:18');
INSERT INTO `service_section` VALUES (244, 33, 4, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL);
INSERT INTO `service_section` VALUES (245, 33, 9, '2020-03-03 22:27:18', '2020-03-06 10:05:47', NULL);
INSERT INTO `service_section` VALUES (246, 33, 12, '2020-03-03 22:27:18', '2020-03-17 12:20:43', '2020-03-03 22:27:18');
INSERT INTO `service_section` VALUES (247, 33, 23, '2020-03-03 22:27:18', '2020-03-17 12:20:11', NULL);
INSERT INTO `service_section` VALUES (248, 33, 14, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL);
INSERT INTO `service_section` VALUES (249, 33, 18, '2020-03-03 22:27:18', '2020-03-13 08:24:15', '2020-03-03 22:27:18');
INSERT INTO `service_section` VALUES (250, 33, 19, '2020-03-03 22:27:18', '2020-03-13 08:24:12', NULL);
INSERT INTO `service_section` VALUES (251, 33, 20, '2020-03-03 22:27:18', '2020-03-12 08:37:50', NULL);
INSERT INTO `service_section` VALUES (252, 33, 21, '2020-03-03 22:27:18', '2020-03-12 08:37:17', NULL);
INSERT INTO `service_section` VALUES (253, 34, 1, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL);
INSERT INTO `service_section` VALUES (254, 34, 3, '2020-03-03 22:27:18', '2020-03-06 13:41:39', '2020-03-03 22:27:18');
INSERT INTO `service_section` VALUES (255, 34, 4, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL);
INSERT INTO `service_section` VALUES (256, 34, 9, '2020-03-03 22:27:18', '2020-03-06 10:05:53', NULL);
INSERT INTO `service_section` VALUES (257, 34, 12, '2020-03-03 22:27:18', '2020-03-17 01:21:54', '2020-03-03 22:27:18');
INSERT INTO `service_section` VALUES (258, 34, 13, '2020-03-03 22:27:18', '2020-03-10 07:56:26', '2020-03-03 22:27:18');
INSERT INTO `service_section` VALUES (259, 34, 14, '2020-03-03 22:27:18', '2020-03-10 07:56:48', NULL);
INSERT INTO `service_section` VALUES (260, 34, 18, '2020-03-03 22:27:18', '2020-03-10 07:56:50', '0000-00-00 00:00:00');
INSERT INTO `service_section` VALUES (261, 34, 19, '2020-03-03 22:27:18', '2020-03-10 07:56:20', NULL);
INSERT INTO `service_section` VALUES (262, 34, 20, '2020-03-03 22:27:18', '2020-03-10 07:56:14', '2020-03-03 22:27:18');
INSERT INTO `service_section` VALUES (263, 34, 21, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL);
INSERT INTO `service_section` VALUES (264, 32, 22, '2020-03-12 08:31:45', '2020-03-12 08:52:17', NULL);
INSERT INTO `service_section` VALUES (265, 34, 23, '2020-03-12 09:01:54', '2020-03-17 01:21:44', NULL);

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
INSERT INTO `service_target` VALUES (1, 'for-company', 'company-active-o.png', '2019-11-16 20:18:11', '2019-12-20 23:52:44', NULL);
INSERT INTO `service_target` VALUES (2, 'for-individuals', 'individu-active-o.png', '2019-11-16 20:18:16', '2019-12-24 12:15:58', NULL);

-- ----------------------------
-- Table structure for testimonial
-- ----------------------------
DROP TABLE IF EXISTS `testimonial`;
CREATE TABLE `testimonial`  (
  `testimony_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NULL DEFAULT NULL,
  `language_code` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimony_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimony_role` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimony_company` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimony_content` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimony_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`testimony_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of testimonial
-- ----------------------------
INSERT INTO `testimonial` VALUES (1, NULL, 'en', 'Carsten Schneider', 'Head of Business Development', 'Ramboll Danmark A/S', 'We are very content with the works performed by Waste4Change. They are very good at their job and have shown fantastic understanding of the project. They perform at international level!', '2-Carsten-Schneider.png', '2020-01-25 07:19:09', '2020-03-07 23:28:17', NULL);
INSERT INTO `testimonial` VALUES (2, NULL, 'id', 'Carsten Schneider', 'Head of Business Development', 'Ramboll Danmark A/S', 'Kami sangat puas dengan apa yang dikerjakan oleh Waste4Change. Mereka sangat mahir dengan apa yang mereka kerjakan, dan mereka memperlihatkan pemahaman yang luar biasa terhadap proyek ini. Mereka bekerja dengan standar internasional!', '2-Carsten-Schneider.png', '2020-01-25 07:20:42', '2020-03-07 23:28:18', NULL);
INSERT INTO `testimonial` VALUES (3, NULL, 'en', 'Yongmei Zhou ', 'Program Leader, Equitable Growth, Finance & Institutions ', 'World Bank', 'Thanks to Waste4Change, we spent a day smelling, seeing, sorting and talking about waste! I feel an overwhelming shame that this is the footprint we leave on earth.', '2-Yongmei-Zhou.png', '2020-01-25 07:20:54', '2020-03-07 23:28:21', NULL);
INSERT INTO `testimonial` VALUES (4, NULL, 'id', 'Yongmei Zhou ', 'Program Leader, Equitable Growth, Finance & Institutions ', 'World Bank', 'Berkat Waste4Change, kami menghabiskan satu hari dengan mencium, melihat, memilah, dan berbicara tentang sampah! Saya merasakan perasaan malu yang teramat besar ketika tahu bahwa jejak seperti inilah yang kita tinggalkan di bumi.', '2-Yongmei-Zhou.png', '2020-01-25 07:20:57', '2020-03-07 23:28:22', NULL);
INSERT INTO `testimonial` VALUES (5, NULL, 'en', 'Debora Tjandrakusuma', 'Corporate Affairs ', 'Nestl&eacute Indonesia', 'Waste4Change is an important partner for us to achieve the Zero Waste to Landfill commitment target in the office & brand event', '2-Debora-Tjandrakusuma.png', '2020-01-25 07:22:18', '2020-03-07 23:28:25', NULL);
INSERT INTO `testimonial` VALUES (6, NULL, 'id', 'Debora Tjandrakusuma', 'Corporate Affairs ', 'Nestl&eacute Indonesia', 'Waste4Change merupakan partner penting bagi kami untuk mencapai target komitmen Zero Waste to Landfill di kantor & brand event', '2-Debora-Tjandrakusuma.png', '2020-01-25 07:22:21', '2020-03-07 23:28:26', NULL);
INSERT INTO `testimonial` VALUES (7, NULL, 'en', 'Faiza Anindita', 'Creating Shared Value Manager ', 'Nestl&eacute Indonesia\r\n', 'Collaboration with Waste4Change makes me confident that the waste management system program in the community can be sustainable', '2-Faiza-Anindita.png', '2020-01-25 07:23:27', '2020-03-07 23:28:29', NULL);
INSERT INTO `testimonial` VALUES (8, NULL, 'id', 'Faiza Anindita', 'Creating Shared Value Manager ', 'Nestl&eacute Indonesia', 'Kolaborasi dengan Waste4Change membuat saya yakin bahwa program sistem pengelolaan sampah di komunitas dapat sustain', '2-Faiza-Anindita.png', '2020-01-25 07:23:28', '2020-03-07 23:28:30', NULL);

SET FOREIGN_KEY_CHECKS = 1;
