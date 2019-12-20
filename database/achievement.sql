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

 Date: 20/12/2019 11:16:02
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
  `achievement_count` double(255, 0) NULL DEFAULT NULL,
  `achievement_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`achievement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of achievement
-- ----------------------------
INSERT INTO `achievement` VALUES (4, 1, 'clients', 6, '', '2019-12-07 22:34:17', '2019-12-19 01:20:09', NULL);
INSERT INTO `achievement` VALUES (5, 1, 'recycled-waste-kg', 133823, '', '2019-12-07 22:34:17', '2019-12-19 01:20:18', NULL);
INSERT INTO `achievement` VALUES (6, 1, 'locations', 3, '', '2019-12-07 22:34:17', '2019-12-19 01:20:09', NULL);
INSERT INTO `achievement` VALUES (7, 2, 'clients', 47, '', '2019-12-07 22:34:17', '2019-12-19 01:20:10', NULL);
INSERT INTO `achievement` VALUES (8, 2, 'recycled-waste-kg', 282288, '', '2019-12-07 22:34:17', '2019-12-20 11:14:02', NULL);
INSERT INTO `achievement` VALUES (9, 2, 'locations', 3, '', '2019-12-07 22:34:17', '2019-12-19 01:20:14', NULL);
INSERT INTO `achievement` VALUES (10, 3, 'short-lorem', 9999, '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (11, 3, 'short-lorem', 9999, '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (12, 3, 'short-lorem', 9999, '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (13, 4, 'short-lorem', 9999, '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (14, 4, 'short-lorem', 9999, '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (15, 4, 'short-lorem', 9999, '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL);
INSERT INTO `achievement` VALUES (16, 18, 'analysis-and-recommendations-to-implement-a-respon', 0, 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (17, 18, 'identification-of-waste-management-method-that-is-', 0, 'wastebin-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (18, 18, 'written-report-and-presentation-of-3r-based-waste-', 0, 'report-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (19, 19, 'data-collection-activities-were-done-through-inter', 0, 'research-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (20, 19, 'analyzed-the-current-management-system-by-identify', 0, 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (21, 20, 'key-players-and-stakeholders-mapping', 0, 'mark-location-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (22, 20, 'comprehensive-waste-flow-analysis-of-jakarta-and-s', 0, 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (23, 20, 'identification-of-recycling-rate-in-jakarta-and-su', 0, 'report-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (24, 20, 'solid-waste-management-swot-analysis-of-jakarta-an', 0, 'flow-m.ong', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (25, 21, 'retrieved-better-understanding-on-the-total-amount', 0, 'idea-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (26, 21, 'published-paper-regarding-the-project-can-be-found', 0, 'report-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL);
INSERT INTO `achievement` VALUES (27, 22, 'solid-waste-characteristics-and-solid-waste-existi', 0, 'mark-location-m.png', '2019-12-07 22:34:17', '2019-12-12 09:27:22', NULL);
INSERT INTO `achievement` VALUES (28, 22, 'solid-waste-supply-plan-review-and-its-possible-di', 0, 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-12 09:27:22', NULL);
INSERT INTO `achievement` VALUES (29, 22, 'suitability-study-of-the-current-site-for-waste-to', 0, 'distribution-m.png', '2019-12-07 22:34:17', '2019-12-12 09:27:22', NULL);
INSERT INTO `achievement` VALUES (30, 23, 'increased-awareness-and-action-of-employees-toward', 0, 'idea-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (31, 23, 'increased-segregation-rate', 0, 'chart-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (32, 23, 'decreased-residual-waste-generation', 0, 'residue-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (33, 23, 'increased-economic-incentives-from-composting', 0, 'economy-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (34, 24, 'reports-containing-progress-activities-lessons-le', 0, 'video-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (35, 24, 'proceedings-of-workshop-consignment-proceedings', 0, 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (36, 24, 'video-and-audio-visual-documentation-of-monitoring', 0, 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (37, 25, 'the-formation-of-eco-ranger:-a-group-of-local-peop', 0, 'wastebin-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (38, 25, 'technical-assistance-capacity-building-connectin', 0, 'people-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (39, 26, 'waste-management-education-to-local-communities-an', 0, 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (40, 26, 'technical-guideline-of-organic-and-inorganic-waste', 0, 'wastebin-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (41, 26, 'formation-of-organization-and-follow-up-work-plan', 0, 'flow-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (42, 27, 'forming-the-task-force-which-in-charge-of-increasi', 0, 'people-m.png', '2019-12-07 22:34:17', '2019-12-12 09:28:23', NULL);
INSERT INTO `achievement` VALUES (43, 27, 'organizing-education-events-which-are-akabis-clas', 0, 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:28:23', NULL);
INSERT INTO `achievement` VALUES (44, 27, 'each-school-was-expected-to-be-able-to-carry-on-th', 0, 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:28:30', NULL);
INSERT INTO `achievement` VALUES (45, 28, 'sharing-session:-why-we-need-to-be-responsible-for', 0, 'chat-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (46, 28, 'presentation-session:-how-can-we-conduct-responsib', 0, 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (47, 28, 'interactive-games?', 0, 'games-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (48, 29, 'open-discussion-with-fellow-panels-and-audiences-o', 0, 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (49, 29, 'the-importance-of-responsible-solid-waste-manageme', 0, 'wastebin-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (50, 29, 'how-to-handle-and-treat-waste-responsibly-and-sust', 0, 'chart-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (51, 29, 'how-to-mitigate-adverse-effects-of-waste-for-human', 0, 'chat-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (52, 30, 'shock-moment:-all-participants-are-invited-to-see-', 0, 'landfill-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (53, 30, 'o-moment:-responsible-waste-management-presentati', 0, 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (54, 30, 'facility-tour:-visiting-w4cs-facilities-includin', 0, 'tour-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (55, 31, 'shock-moment:-all-participants-are-invited-to-see-', 0, 'landfill-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (56, 31, 'o-moment:-responsible-waste-management-presentati', 0, 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);
INSERT INTO `achievement` VALUES (57, 31, 'facility-tour:-visiting-w4cs-facilities-includin', 0, 'tour-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);

SET FOREIGN_KEY_CHECKS = 1;
