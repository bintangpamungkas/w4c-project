-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2019 at 01:52 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

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
  `achievement_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `achievement`
--

INSERT INTO `achievement` (`achievement_id`, `service_id`, `achievement_name`, `achievement_count`, `achievement_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:54', NULL),
(5, 1, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(6, 1, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(7, 2, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(8, 2, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(9, 2, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(10, 3, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(11, 3, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(12, 3, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(13, 4, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(14, 4, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(15, 4, 'short-lorem', '9999', '', '2019-12-07 22:34:17', '2019-12-08 16:26:56', NULL),
(16, 18, 'analysis-and-recommendations-to-implement-a-respon', '', 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(17, 18, 'identification-of-waste-management-method-that-is-', '', 'wastebin-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(18, 18, 'written-report-and-presentation-of-3r-based-waste-', '', 'report-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(19, 19, 'data-collection-activities-were-done-through-inter', '', 'research-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(20, 19, 'analyzed-the-current-management-system-by-identify', '', 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(21, 20, 'key-players-and-stakeholders-mapping', '', 'mark-location-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(22, 20, 'comprehensive-waste-flow-analysis-of-jakarta-and-s', '', 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(23, 20, 'identification-of-recycling-rate-in-jakarta-and-su', '', 'report-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(24, 20, 'solid-waste-management-swot-analysis-of-jakarta-an', '', 'flow-m.ong', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(25, 21, 'retrieved-better-understanding-on-the-total-amount', '', 'idea-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(26, 21, 'published-paper-regarding-the-project-can-be-found', '', 'report-m.png', '2019-12-07 22:34:17', '2019-12-07 22:34:17', NULL),
(27, 22, 'solid-waste-characteristics-and-solid-waste-existi', '', 'mark-location-m.png', '2019-12-07 22:34:17', '2019-12-12 09:27:22', NULL),
(28, 22, 'solid-waste-supply-plan-review-and-its-possible-di', '', 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-12 09:27:22', NULL),
(29, 22, 'suitability-study-of-the-current-site-for-waste-to', '', 'distribution-m.png', '2019-12-07 22:34:17', '2019-12-12 09:27:22', NULL),
(30, 23, 'increased-awareness-and-action-of-employees-toward', '', 'idea-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(31, 23, 'increased-segregation-rate', '', 'chart-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(32, 23, 'decreased-residual-waste-generation', '', 'residue-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(33, 23, 'increased-economic-incentives-from-composting', '', 'economy-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(34, 24, 'reports-containing-progress-activities-lessons-le', '', 'video-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(35, 24, 'proceedings-of-workshop-consignment-proceedings', '', 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(36, 24, 'video-and-audio-visual-documentation-of-monitoring', '', 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(37, 25, 'the-formation-of-eco-ranger:-a-group-of-local-peop', '', 'wastebin-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(38, 25, 'technical-assistance-capacity-building-connectin', '', 'people-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(39, 26, 'waste-management-education-to-local-communities-an', '', 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(40, 26, 'technical-guideline-of-organic-and-inorganic-waste', '', 'wastebin-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(41, 26, 'formation-of-organization-and-follow-up-work-plan', '', 'flow-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(42, 27, 'forming-the-task-force-which-in-charge-of-increasi', '', 'people-m.png', '2019-12-07 22:34:17', '2019-12-12 09:28:23', NULL),
(43, 27, 'organizing-education-events-which-are-akabis-clas', '', 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:28:23', NULL),
(44, 27, 'each-school-was-expected-to-be-able-to-carry-on-th', '', 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:28:30', NULL),
(45, 28, 'sharing-session:-why-we-need-to-be-responsible-for', '', 'chat-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(46, 28, 'presentation-session:-how-can-we-conduct-responsib', '', 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(47, 28, 'interactive-games?', '', 'games-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(48, 29, 'open-discussion-with-fellow-panels-and-audiences-o', '', 'analysis-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(49, 29, 'the-importance-of-responsible-solid-waste-manageme', '', 'wastebin-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(50, 29, 'how-to-handle-and-treat-waste-responsibly-and-sust', '', 'chart-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(51, 29, 'how-to-mitigate-adverse-effects-of-waste-for-human', '', 'chat-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(52, 30, 'shock-moment:-all-participants-are-invited-to-see-', '', 'landfill-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(53, 30, 'o-moment:-responsible-waste-management-presentati', '', 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(54, 30, 'facility-tour:-visiting-w4cs-facilities-includin', '', 'tour-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(55, 31, 'shock-moment:-all-participants-are-invited-to-see-', '', 'landfill-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(56, 31, 'o-moment:-responsible-waste-management-presentati', '', 'loadspeaker-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL),
(57, 31, 'facility-tour:-visiting-w4cs-facilities-includin', '', 'tour-m.png', '2019-12-07 22:34:17', '2019-12-12 09:34:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `activity_name` varchar(255) DEFAULT NULL,
  `activity_description` varchar(255) DEFAULT NULL,
  `activity_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `service_id`, `activity_name`, `activity_description`, `activity_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 'phase-1', 'raising-awareness-through-akabis', 'report-m.png', '2019-12-07 22:40:22', '2019-12-10 00:55:19', NULL),
(2, 9, 'phase-2', 'forming-task-force-planning-capacity-building-a', 'loadspeaker-m.png', '2019-12-07 22:40:22', '2019-12-10 00:55:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `benefit`
--

CREATE TABLE `benefit` (
  `benefit_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `benefit_category` varchar(255) DEFAULT NULL,
  `benefit_name` varchar(255) DEFAULT NULL,
  `benefit_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `benefit`
--

INSERT INTO `benefit` (`benefit_id`, `service_id`, `benefit_category`, `benefit_name`, `benefit_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(2, 1, 'general', 'zero-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(3, 1, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(4, 1, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(5, 1, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(6, 2, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(7, 2, 'general', 'zero-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(8, 2, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(9, 2, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(10, 2, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(11, 3, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(12, 3, 'general', 'reduce-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(13, 3, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(14, 3, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(15, 3, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(16, 4, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(17, 4, 'general', 'reduce-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(18, 4, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(19, 4, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(20, 4, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(21, 5, 'general', 'zero-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(22, 5, 'general', 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(23, 5, 'general', 'waste-journey-report', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(24, 5, 'general', 'help-to-increase-recycling-rate', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(25, 6, 'general', 'zero-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(26, 6, 'general', 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(27, 6, 'general', 'wider-reach', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(28, 6, 'general', 'meet-the-needs-of-your-brand-customers-in-more-loc', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(29, 6, 'general', 'waste-journey-report', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(30, 6, 'general', 'help-to-increase-recycling-rate', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(31, 9, 'for-client', 'the-real-action-in-encouraging-the-implementation-', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL),
(32, 9, 'for-client', 'supporting-the-green-concept-of-our-clients-brand', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL),
(33, 9, 'for-school', 'increased-knowledge-and-capacity-of-students-and-t', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL),
(34, 9, 'for-school', 'schools-can-contribute-to-supporting-and-executing', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL),
(35, 9, 'for-school', 'available-for-every-school-located-in-indonesia-w', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL),
(36, 9, 'for-school', 'for-schools-located-in-jakarta-we-help-to-support', NULL, '2019-12-08 00:58:50', '2019-12-10 01:09:17', NULL);

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
(1, 1, 'Binus School', 'Binus-School.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(2, 1, 'Javara', 'Javara.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(3, 1, 'Mang Kabayan', 'Mang-Kabayan.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(4, 1, 'Seniman Pangan', 'Seniman-Pangan.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(5, 1, 'Wisma Barito', 'Wisma-Barito.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(6, 2, 'Danone', 'Danone.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(7, 2, 'DBS', 'DBS.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(8, 2, 'Decathlon', 'Decathlon.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(9, 2, 'Gojek', 'Gojek.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(10, 2, 'IKEA', 'IKEA.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(11, 2, 'L Oreal', 'L-Oreal.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(12, 2, 'Potato Head', 'Potato-Head.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(13, 2, 'PUPR', 'PUPR.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(14, 2, 'RSPO', 'RSPO.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(15, 2, 'Ruang Selatan', 'Ruang-Selatan.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(16, 2, 'Sudarman 7.8', 'Sudarman-7.8.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(17, 2, 'The Body Shop ', 'The-Body-Shop-.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(18, 2, 'World Bank', 'World-Bank.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(19, 2, 'Young Living', 'Young-Living.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(20, 3, 'Climate Policy Initiative', 'Climate-Policy-Initiative.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(21, 3, 'Jakarta Land', 'Jakarta-Land.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(22, 3, 'Kemenko Maritim', 'Kemenko-Maritim.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(23, 3, 'The Vida Kebon Jeruk', 'The-Vida-Kebon-Jeruk.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(24, 3, 'Think Web', 'Think-Web.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(25, 4, 'Cimb Niaga', 'Cimb-Niaga.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(26, 4, 'Ismaya Group', 'Ismaya-Group.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(27, 4, 'Jakarta Fashion Week', 'Jakarta-Fashion-Week.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(28, 4, 'Jakpro', 'Jakpro.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(29, 4, 'Narasi TV ', 'Narasi-TV-.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(30, 4, 'Nestle', 'Nestle.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(31, 4, 'Pertamina', 'Pertamina.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(32, 4, 'The Body Shop ', 'The-Body-Shop-.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(33, 4, 'Wardah', 'Wardah.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(34, 5, 'By Lizzie Parra', 'By-Lizzie-Parra.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(35, 5, 'Djournal', 'Djournal.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(36, 5, 'Gojek', 'Gojek.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(37, 5, 'Love Beauty Planet', 'Love-Beauty-Planet.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(38, 5, 'Nescafe Dolce Gusto', 'Nescafe-Dolce-Gusto.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(39, 5, 'Potato Head', 'Potato-Head.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(40, 5, 'Tetrapak', 'Tetrapak.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(41, 5, 'The Body Shop ', 'The-Body-Shop-.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(42, 5, 'Trave', 'Trave.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(43, 5, 'Wardah', 'Wardah.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(44, 5, 'Yara', 'Yara.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(45, 5, 'Young Living', 'Young-Living.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(46, 6, 'Lifebuoy', 'Lifebuoy.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(47, 6, 'Ades', 'Ades.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(48, 7, 'Bappenas', 'Bappenas.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(49, 7, 'Deloitte', 'Deloitte.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(50, 7, 'GA Circular', 'GA-Circular.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(51, 7, 'Kemenko Maritim', 'Kemenko-Maritim.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(52, 7, 'KLHK RI', 'KLHK-RI.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(53, 7, 'PT Nestle Indonesia', 'PT-Nestle-Indonesia.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(54, 7, 'PT Tirta Inverstama', 'PT-Tirta-Inverstama.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(55, 7, 'PUPR', 'PUPR.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(56, 7, 'World Bank', 'World-Bank.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(57, 8, 'Indonesia Power', 'Indonesia-Power.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(58, 8, 'AHT Group', 'AHT-Group.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(59, 8, 'BNI', 'BNI.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(60, 8, 'GA Circular', 'GA-Circular.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(61, 8, 'PT Nestle Indonesia', 'PT-Nestle-Indonesia.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(62, 8, 'PUPR', 'PUPR.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(63, 9, 'DBS', 'DBS.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(64, 9, 'Tetrapak', 'Tetrapak.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(65, 9, 'Yayasan Unilever', 'Yayasan-Unilever.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(66, 10, 'Sharp', 'Sharp.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(67, 10, 'Yayasan Unilever', 'Yayasan-Unilever.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE `dictionary` (
  `dictionary_id` int(11) NOT NULL,
  `language_code` varchar(255) DEFAULT NULL,
  `dictionary_content` text DEFAULT NULL,
  `dictionary_slug` varchar(255) DEFAULT NULL,
  `dictionary_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dictionary`
--

INSERT INTO `dictionary` (`dictionary_id`, `language_code`, `dictionary_content`, `dictionary_slug`, `dictionary_type`) VALUES
(1245, 'en', 'Lorem Ipsum', 'short-lorem', 'global'),
(1246, 'id', 'Lorem Ipsum', 'short-lorem', 'global'),
(1247, 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl', 'medium-lorem', 'global'),
(1248, 'id', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl', 'medium-lorem', 'global'),
(1249, 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl. Ut viverra orci volutpat dolor dignissim, eget pretium justo consequat. Maecenas at mauris vitae eros elementum rutrum id in orci. ', 'long-lorem', 'global'),
(1250, 'id', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl. Ut viverra orci volutpat dolor dignissim, eget pretium justo consequat. Maecenas at mauris vitae eros elementum rutrum id in orci. ', 'long-lorem', 'global'),
(1251, 'en', 'Services', 'services', 'global'),
(1252, 'id', 'Servis', 'services', 'global'),
(1253, 'en', 'For company', 'for-company', 'home'),
(1254, 'id', 'Perusahaan', 'for-company', 'home'),
(1255, 'en', 'For Individual', 'for-individual', 'home'),
(1256, 'id', 'Individu', 'for-individual', 'home'),
(1257, 'en', 'About', 'about', 'global'),
(1258, 'id', 'Tentang Kami', 'about', 'global'),
(1259, 'en', 'Blog', 'blog', 'global'),
(1260, 'id', 'Blog', 'blog', 'global'),
(1261, 'en', 'Contact', 'contact', 'global'),
(1262, 'id', 'Kontak', 'contact', 'global'),
(1263, 'en', 'Language', 'language', 'global'),
(1264, 'id', 'Bahasa', 'language', 'global'),
(1265, 'en', 'It is time to Responsibly', 'it-is-time-to-responsibly', 'home'),
(1266, 'id', 'Waktunya Mengelola Sampah', 'it-is-time-to-responsibly', 'home'),
(1267, 'en', 'Manage Your Waste', 'manage-your-waste', 'home'),
(1268, 'id', 'Secara Bertanggung Jawab', 'manage-your-waste', 'home'),
(1269, 'en', 'with Waste4Change', 'with-waste4change', 'home'),
(1270, 'id', 'bersama Waste4Change', 'with-waste4change', 'home'),
(1271, 'en', 'Available services for your location', 'available-services-for-your-location', 'global'),
(1272, 'id', 'Servis yang tersedia di kota Anda', 'available-services-for-your-location', 'global'),
(1273, 'en', 'Enter Location', 'enter-location', 'global'),
(1274, 'id', 'Masukkan nama kota', 'enter-location', 'global'),
(1275, 'en', 'Search', 'search', 'global'),
(1276, 'id', 'Cari', 'search', 'global'),
(1277, 'en', 'Cannot found the solution you are looking for?', 'cannot-found-the-solution-you-are-looking-for?', 'global'),
(1278, 'id', 'Tidak Dapat Menemukan Solusi Yang Anda Cari?', 'cannot-found-the-solution-you-are-looking-for?', 'global'),
(1279, 'en', 'All Services', 'all-services', 'global'),
(1280, 'id', 'Semua Service', 'all-services', 'global'),
(1281, 'en', 'Talk To Our Expert', 'talk-to-our-expert', 'global'),
(1282, 'id', 'Hubungi Kami', 'talk-to-our-expert', 'global'),
(1283, 'en', 'Our Achievement', 'our-achievement', 'global'),
(1284, 'id', 'Pencapaian Kami', 'our-achievement', 'global'),
(1285, 'en', 'We create an ecosystem of responsible waste management in Indonesia', 'we-create-an-ecosystem-of-responsible-waste-manage', 'home'),
(1286, 'id', 'Kami menciptakan ekosistem pengelolaan sampah yang bertanggung jawab di Indonesia', 'we-create-an-ecosystem-of-responsible-waste-manage', 'home'),
(1287, 'en', 'Clients', 'clients', 'global'),
(1288, 'id', 'Klien', 'clients', 'global'),
(1289, 'en', 'Projects', 'projects', 'global'),
(1290, 'id', 'Proyek', 'projects', 'global'),
(1291, 'en', 'Partners', 'partners', 'home'),
(1292, 'id', 'Partner', 'partners', 'home'),
(1293, 'en', 'More About Us', 'more-about-us', 'global'),
(1294, 'id', 'Tentang Kami', 'more-about-us', 'global'),
(1295, 'en', 'Client And Partner', 'client-and-partner', 'global'),
(1296, 'id', 'Klien Dan Partner', 'client-and-partner', 'global'),
(1297, 'en', 'Testimonial', 'testimonial', 'global'),
(1298, 'id', 'Testimoni', 'testimonial', 'global'),
(1299, 'en', 'The report from Waste4Change has really helped us to improve our communication and education system towards our employees', 'the-report-from-waste4change-has-really-helped-us-', 'home-testimonial'),
(1300, 'id', 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan', 'the-report-from-waste4change-has-really-helped-us-', 'home-testimonial'),
(1301, 'en', 'Waste4Change is more than just a partner, but also a learning buddy. They taught us how to make internal procedures', 'waste4change-is-more-than-just-a-partner-but-also', 'home-testimonial'),
(1302, 'id', 'W4C lebih dari sekedar company partner tapi seperti teman belajar. Mereka mengajari kami cara membuat prosedur internal', 'waste4change-is-more-than-just-a-partner-but-also', 'home-testimonial'),
(1303, 'en', 'I am very thrilled to be working with Waste4Change because they communicate openly and respond promptly', 'i-am-very-thrilled-to-be-working-with-waste4change', 'home-testimonial'),
(1304, 'id', 'Saya senang sekali bisa bekerjasama dengan Waste4Change karena punya komunikasi yang terbuka dan cepat menanggap', 'i-am-very-thrilled-to-be-working-with-waste4change', 'home-testimonial'),
(1305, 'en', 'Blog And News', 'blog-and-news', 'home'),
(1306, 'id', 'Blog Dan Berita', 'blog-and-news', 'home'),
(1307, 'en', 'Read More', 'read-more', 'home'),
(1308, 'id', 'Selengkapnya', 'read-more', 'home'),
(1309, 'en', 'Find? ?more? ?content? ?about? ?responsible? ?waste? ?management? ?and? ?green? ?lifestyle? ?in? ?our? ?Blog? ?&? ?News page?', 'find?-?more?-?content?-?about?-?responsible?-?wast', 'global'),
(1310, 'id', 'Temukan lebih banyak konten mengenai pengelolaan sampah yang bertanggung jawab dan gaya hidup ramah lingkungan di halaman Blog dan Berita kami', 'find?-?more?-?content?-?about?-?responsible?-?wast', 'global'),
(1311, 'en', 'More Article', 'more-article', 'global'),
(1312, 'id', 'Lebih Banyak Artikel', 'more-article', 'global'),
(1313, 'en', 'Spread The Good News', 'spread-the-good-news', 'global'),
(1314, 'id', 'Sebarkan Berita Baik Ini', 'spread-the-good-news', 'global'),
(1315, 'en', 'Share? on your social media? ?&? ?create impact for your? ?environment?', 'share?-on-your-social-media?-??-?create-impact-fo', 'global'),
(1316, 'id', 'Bagikan kami di media sosial Anda dan ciptakan dampak yang positif di lingkungan sekitar', 'share?-on-your-social-media?-??-?create-impact-fo', 'global'),
(1317, 'en', 'Ready? ?to? ?start? ?your? <strong>Responsible? Waste? ?Management??</strong>', 'ready?-?to?-?start?-?your?-<strong>responsible?-wa', 'global'),
(1318, 'id', 'Siap memulai <strong>Pengelolaan Sampah yang Bertanggung Jawab?</strong>', 'ready?-?to?-?start?-?your?-<strong>responsible?-wa', 'global'),
(1319, 'en', 'Get Started', 'get-started', 'global'),
(1320, 'id', 'Mulai Sekarang', 'get-started', 'global'),
(1321, 'en', 'Career', 'career', 'global'),
(1322, 'id', 'Karier', 'career', 'global'),
(1323, 'en', 'Internship', 'internship', 'global'),
(1324, 'id', 'Magang', 'internship', 'global'),
(1325, 'en', 'Choose the right solution', 'choose-the-right-solution', 'all-service'),
(1326, 'id', 'Pilih solusi terbaik untuk', 'choose-the-right-solution', 'all-service'),
(1327, 'en', 'for your business', 'for-your-business', 'all-service'),
(1328, 'id', 'permasalahan sampah Anda', 'for-your-business', 'all-service'),
(1329, 'en', 'ALL', 'all', 'global'),
(1330, 'id', 'Semua', 'all', 'global'),
(1331, 'en', 'Get Proposal', 'get-proposal', 'global'),
(1332, 'id', 'Dapatkan Proposal', 'get-proposal', 'global'),
(1333, 'en', 'Home', 'home', 'global'),
(1334, 'id', 'Beranda', 'home', 'global'),
(1335, 'en', 'For this type of service, Waste4Change provides the facilities as follows:', 'for-this-type-of-service-waste4change-provides-th', 'global'),
(1336, 'id', 'Untuk servis ini, Waste4Change menyediakan fasilitas sebagai berikut', 'for-this-type-of-service-waste4change-provides-th', 'global'),
(1337, 'en', 'Average of waste collected', 'average-of-waste-collected', 'project_highlight'),
(1338, 'id', 'Rerata Volume Sampah yang Diangkut', 'average-of-waste-collected', 'project_highlight'),
(1339, 'en', 'MoU Signed', 'mou-signed', 'project_highlight'),
(1340, 'id', 'Penandatanganan MoU', 'mou-signed', 'project_highlight'),
(1341, 'en', 'Collection Schedule', 'collection-schedule', 'project_highlight'),
(1342, 'id', 'Jadwal Pengangkutan', 'collection-schedule', 'project_highlight'),
(1343, 'en', 'kg/month', 'kgmonth', 'project_highlight'),
(1344, 'id', 'Kg / Bulan', 'kgmonth', 'project_highlight'),
(1345, 'en', 'kg', 'kg', 'global'),
(1346, 'id', 'Kg', 'kg', 'global'),
(1347, 'en', 'pcs', 'pcs', 'global'),
(1348, 'id', 'pcs', 'pcs', 'global'),
(1349, 'en', 'days per week', 'days-per-week', 'project_highlight'),
(1350, 'id', 'Hari Per Minggu', 'days-per-week', 'project_highlight'),
(1351, 'en', 'year', 'year', 'global'),
(1352, 'id', 'Tahun', 'year', 'global'),
(1353, 'en', 'month', 'month', 'global'),
(1354, 'id', 'Bulan', 'month', 'global'),
(1355, 'en', 'day', 'day', 'global'),
(1356, 'id', 'Hari', 'day', 'global'),
(1357, 'en', 'Every day', 'every-day', 'project_highlight'),
(1358, 'id', 'Setiap hari', 'every-day', 'project_highlight'),
(1359, 'en', 'Start your', 'start-your', 'service_cta'),
(1360, 'id', 'Mulai', 'start-your', 'service_cta'),
(1361, 'en', 'now!', 'now!', 'service_cta'),
(1362, 'id', 'Anda sekarang juga!', 'now!', 'service_cta'),
(1363, 'en', 'ENROLL THE CLASS', 'enroll-the-class', 'service_cta'),
(1364, 'id', 'MULAI SEKARANG', 'enroll-the-class', 'service_cta'),
(1365, 'en', 'Welcome', 'welcome', 'section'),
(1366, 'id', 'Selamat datang', 'welcome', 'section'),
(1367, 'en', 'Header', 'header', 'section'),
(1368, 'id', 'Header', 'header', 'section'),
(1369, 'en', 'Description', 'description', 'section'),
(1370, 'id', 'Deskripsi', 'description', 'section'),
(1371, 'en', 'Achievement/ Deliverables', 'achievement-deliverables', 'section'),
(1372, 'id', 'Prestasi / Deverables', 'achievement-deliverables', 'section'),
(1373, 'en', 'We Offer', 'we-offer', 'section'),
(1374, 'id', 'Kami menawarkan', 'we-offer', 'section'),
(1375, 'en', 'Activities', 'activities', 'section'),
(1376, 'id', 'Kegiatan', 'activities', 'section'),
(1377, 'en', 'Benefit', 'benefit', 'section'),
(1378, 'id', 'Keunungan', 'benefit', 'section'),
(1379, 'en', 'Expertise And Experience', 'expertise-and-experience', 'section'),
(1380, 'id', 'Keahlian Dan Pengalaman', 'expertise-and-experience', 'section'),
(1381, 'en', 'Output & Benefit', 'output-benefit', 'section'),
(1382, 'id', 'Output & Benefit', 'output-benefit', 'section'),
(1383, 'en', 'What You Get', 'what-you-get', 'section'),
(1384, 'id', 'Yang Anda Dapat', 'what-you-get', 'section'),
(1385, 'en', 'Waste Flow', 'waste-flow', 'section'),
(1386, 'id', 'Arus limbah', 'waste-flow', 'section'),
(1387, 'en', 'Portofolio Highlight', 'portofolio-highlight', 'section'),
(1388, 'id', 'portofolio Highlight', 'portofolio-highlight', 'section'),
(1389, 'en', 'Research Hightlight', 'research-hightlight', 'section'),
(1390, 'id', 'penelitian Hightlight', 'research-hightlight', 'section'),
(1391, 'en', 'Program Highlight', 'program-highlight', 'section'),
(1392, 'id', 'Program Highlight', 'program-highlight', 'section'),
(1393, 'en', 'Similar Project', 'similar-project', 'section'),
(1394, 'id', 'serupa Proyek', 'similar-project', 'section'),
(1395, 'en', 'Our Client', 'our-client', 'section'),
(1396, 'id', 'Klien kami', 'our-client', 'section'),
(1397, 'en', 'Recomended For', 'recomended-for', 'section'),
(1398, 'id', 'Direcomendasikan Untuk', 'recomended-for', 'section'),
(1399, 'en', 'Our Coverage', 'our-coverage', 'section'),
(1400, 'id', 'Cakupan kami', 'our-coverage', 'section'),
(1401, 'en', 'CTA', 'cta', 'section'),
(1402, 'id', 'CTA', 'cta', 'section'),
(1403, 'en', 'Expertise and Experiences', 'expertise-and-experiences', 'section'),
(1404, 'id', 'Keahlian dan Pengalaman', 'expertise-and-experiences', 'section'),
(1405, 'en', 'Highlight', 'highlight', 'section'),
(1406, 'id', 'Rekam Jejak', 'highlight', 'section'),
(1407, 'en', 'Client', 'client', 'section'),
(1408, 'id', 'Klien', 'client', 'section'),
(1409, 'en', 'Coverage', 'coverage', 'section'),
(1410, 'id', 'Jangkauan', 'coverage', 'section'),
(1411, 'en', 'Collection Program', 'collection-program', 'service_category_name'),
(1412, 'id', 'Collection Program', 'collection-program', 'service_category_name'),
(1413, 'en', 'Extended Producer Responsibility', 'extended-producer-responsibility', 'service_category_name'),
(1414, 'id', 'Extended Producer Responsibility', 'extended-producer-responsibility', 'service_category_name'),
(1415, 'en', 'Solid Waste Management Research', 'solid-waste-management-research', 'service_category_name'),
(1416, 'id', 'Solid Waste Management Research', 'solid-waste-management-research', 'service_category_name'),
(1417, 'en', 'Community Development', 'community-development', 'service_category_name'),
(1418, 'id', 'Community Development', 'community-development', 'service_category_name'),
(1419, 'en', 'Training', 'training', 'service_category_name'),
(1420, 'id', 'Training', 'training', 'service_category_name'),
(1421, 'en', 'General', 'general', 'service_category_name'),
(1422, 'id', 'General', 'general', 'service_category_name'),
(1423, 'en', 'SWM Research In Institutions', 'swm-research-in-institutions', 'service_category_name2'),
(1424, 'id', 'SWM Research In Institutions', 'swm-research-in-institutions', 'service_category_name2'),
(1425, 'en', 'SWM Research In Municipalities', 'swm-research-in-municipalities', 'service_category_name2'),
(1426, 'id', 'SWM Research In Municipalities', 'swm-research-in-municipalities', 'service_category_name2'),
(1427, 'en', 'Value Chain Analysis', 'value-chain-analysis', 'service_category_name2'),
(1428, 'id', 'Value Chain Analysis', 'value-chain-analysis', 'service_category_name2'),
(1429, 'en', 'Marine Debris Study', 'marine-debris-study', 'service_category_name2'),
(1430, 'id', 'Marine Debris Study', 'marine-debris-study', 'service_category_name2'),
(1431, 'en', 'Waste To Energy Study', 'waste-to-energy-study', 'service_category_name2'),
(1432, 'id', 'Waste To Energy Study', 'waste-to-energy-study', 'service_category_name2'),
(1433, 'en', 'Community Assistance In Institutions', 'community-assistance-in-institutions', 'service_category_name2'),
(1434, 'id', 'Community Assistance In Institutions', 'community-assistance-in-institutions', 'service_category_name2'),
(1435, 'en', 'Community Assistance In Municipalities', 'community-assistance-in-municipalities', 'service_category_name2'),
(1436, 'id', 'Community Assistance Di Daerah', 'community-assistance-in-municipalities', 'service_category_name2'),
(1437, 'en', 'Community Assistance In Tourism Sites', 'community-assistance-in-tourism-sites', 'service_category_name2'),
(1438, 'id', 'Community Assistance di Destinasi Wisata', 'community-assistance-in-tourism-sites', 'service_category_name2'),
(1439, 'en', 'Capacity Building', 'capacity-building', 'service_category_name2'),
(1440, 'id', 'Capacity Building', 'capacity-building', 'service_category_name2'),
(1441, 'en', '3r School Program', '3r-school-program', 'service_category_name2'),
(1442, 'id', '3r School Program', '3r-school-program', 'service_category_name2'),
(1443, 'en', 'AKABIS Class For Institution', 'akabis-class-for-institution', 'service_category_name2'),
(1444, 'id', 'AKABIS Class untuk Institusi', 'akabis-class-for-institution', 'service_category_name2'),
(1445, 'en', 'AKABIS Class For Public', 'akabis-class-for-public', 'service_category_name2'),
(1446, 'id', 'AKABIS Class untuk Umum', 'akabis-class-for-public', 'service_category_name2'),
(1447, 'en', 'AKABIS Xperience For Institution', 'akabis-xperience-for-institution', 'service_category_name2'),
(1448, 'id', 'AKABIS Xperience untuk Institusi', 'akabis-xperience-for-institution', 'service_category_name2'),
(1449, 'en', 'AKABIS Xperience For Public', 'akabis-xperience-for-public', 'service_category_name2'),
(1450, 'id', 'AKABIS Xperience untuk Umum', 'akabis-xperience-for-public', 'service_category_name2'),
(1451, 'en', 'Responsible Waste Management', 'responsible-waste-management', 'service_name'),
(1452, 'id', 'Responsible Waste Management', 'responsible-waste-management', 'service_name'),
(1453, 'en', 'Zero Waste to Landfill', 'zero-waste-to-landfill', 'service_name'),
(1454, 'id', 'Zero Waste to Landfill', 'zero-waste-to-landfill', 'service_name'),
(1455, 'en', 'Inorganic Waste Management', 'inorganic-waste-management', 'service_name'),
(1456, 'id', 'Inorganic Waste Management', 'inorganic-waste-management', 'service_name'),
(1457, 'en', 'Event Waste Management', 'event-waste-management', 'service_name'),
(1458, 'id', 'Event Waste Management', 'event-waste-management', 'service_name'),
(1459, 'en', 'In-Store Recycling', 'in-store-recycling', 'service_name'),
(1460, 'id', 'In-Store Recycling', 'in-store-recycling', 'service_name'),
(1461, 'en', 'Digital EPR', 'digital-epr', 'service_name'),
(1462, 'id', 'Digital EPR', 'digital-epr', 'service_name'),
(1463, 'en', 'Community-Based Implementation', 'community-based-implementation', 'service_name'),
(1464, 'id', 'Community-Based Implementation', 'community-based-implementation', 'service_name'),
(1465, 'en', 'AKABIS (Waste Management Academy)', 'akabis-waste-management-academy', 'service_name'),
(1466, 'id', 'AKABIS (Waste Management Academy)', 'akabis-waste-management-academy', 'service_name'),
(1467, 'en', 'Black Soldier Fly Learning Center', 'black-soldier-fly-learning-center', 'service_name'),
(1468, 'id', 'Black Soldier Fly Learning Center', 'black-soldier-fly-learning-center', 'service_name'),
(1469, 'en', 'Black Soldier Fly Tools & Products', 'black-soldier-fly-tools-products', 'service_name'),
(1470, 'id', 'Black Soldier Fly Tools & Products', 'black-soldier-fly-tools-products', 'service_name'),
(1471, 'en', 'Send Your Waste', 'send-your-waste', 'service_name'),
(1472, 'id', 'Send Your Waste', 'send-your-waste', 'service_name'),
(1473, 'en', 'Dropbox', 'dropbox', 'service_name'),
(1474, 'id', 'Dropbox', 'dropbox', 'service_name'),
(1475, 'en', 'Sinergi #AdesNiatMurni dan Gojek', 'sinergi-adesniatmurni-dan-gojek', 'service_name'),
(1476, 'id', 'Sinergi #AdesNiatMurni dan Gojek', 'sinergi-adesniatmurni-dan-gojek', 'service_name'),
(1477, 'en', 'Merchant', 'merchant', 'service_name'),
(1478, 'id', 'Merchant', 'merchant', 'service_name'),
(1479, 'en', 'Home Composting', 'home-composting', 'service_name'),
(1480, 'id', 'Home Composting', 'home-composting', 'service_name'),
(1481, 'en', 'Solid Waste Management Study at Pelabuhan Indonesia II HQ', 'solid-waste-management-study-at-pelabuhan-indonesi', 'service_name'),
(1482, 'id', 'Solid Waste Management Study di Kantor Pusat Pelabuhan Indonesia II?', 'solid-waste-management-study-at-pelabuhan-indonesi', 'service_name'),
(1483, 'en', 'Rancangan Pengelolaan Sampah Padat untuk Program Revitalisasi di Masjid Jami\' dan Permukiman Beting di Pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', 'service_name'),
(1484, 'id', 'Solid Waste Management Design for Revitalisation at Jami\' Mosque and Kampung Beting Settlements in Pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', 'service_name'),
(1485, 'en', 'Studi Manajemen Sampah - Pemetaan Pemangku Kepentingan dan Alur Sampah di Jakarta dan Surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', 'service_name'),
(1486, 'id', 'Waste Management Scouting Study - Stakeholders Mapping and Waste Flow in Jakarta and Surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', 'service_name'),
(1487, 'en', 'Proyek Pemantauan Sampah Plastik di Sungai-Sungai di Jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', 'service_name'),
(1488, 'Support and in line with Perpres No. 97 Tahun 2017 (JAKSTRANAS)', 'Riverine Plastic Monitoring Project in Jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', 'service_name'),
(1489, 'en', 'Technical Due Diligence for ITF Sunter Jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', 'service_name'),
(1490, 'id', 'Uji Kelayakan untuk ITF Sunter Jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', 'service_name'),
(1491, 'en', '3R Program Suralaya', '3r-program-suralaya', 'service_name'),
(1492, 'zero waste ke TPA', '3R Program Suralaya', '3r-program-suralaya', 'service_name'),
(1493, 'en', 'TPS 3R Advisory', 'tps-3r-advisory', 'service_name'),
(1494, 'id', 'TPS 3R Advisory', 'tps-3r-advisory', 'service_name'),
(1495, 'en', 'Ecoranger di Pulau Merah Banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', 'service_name'),
(1496, 'Increasing staff\'s awareness of waste issues', 'Ecoranger in Pulau Merah Banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', 'service_name'),
(1497, 'Meningkatkan kesadaran staf masalah limbah', 'Capacity Building di Wilayah Terdepan Indonesia', 'capacity-building-di-wilayah-terdepan-indonesia', 'service_name'),
(1498, 'id', 'Capacity Building in Indonesia\'s Frontline Territories', 'capacity-building-di-wilayah-terdepan-indonesia', 'service_name'),
(1499, 'en', '3R Green School', '3r-green-school', 'service_name'),
(1500, 'id', '3R Green School', '3r-green-school', 'service_name'),
(1501, 'en', 'AKABIS Class untuk Kedutaan Finlandia di Jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', 'service_name'),
(1502, 'id', 'AKABIS-CLASS for The Embassy of Finland - Jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', 'service_name'),
(1503, 'en', 'AKABIS Class - The Neglected Debris: Paper, Letter and Waste Discussion', 'akabis-class-the-neglected-debris:-paper-letter', 'service_name'),
(1504, 'id', 'AKABIS Class mengenai Sampah yang Terabaikan: Kertas, Aksara, dan Diskusi mengenai Sampah', 'akabis-class-the-neglected-debris:-paper-letter', 'service_name'),
(1505, 'en', 'AKABIS Xperience untuk PT. Bank DBS Indonesia', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'service_name'),
(1506, 'id', 'AKABIS-XPERIENCE for World Bank Jakarta', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'service_name'),
(1507, 'en', 'AKABIS Xperience untuk YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition 2018', 'akabis-xperience-untuk-yseali-young-southeast-asi', 'service_name'),
(1508, 'id', 'AKABIS-XPERIENCE for YSEALI', 'akabis-xperience-untuk-yseali-young-southeast-asi', 'service_name'),
(1509, 'en', 'A 100% holistic waste management for companies, buildings, and businesses to reduce the number of waste that piles up in the landfill.', 'a-100-holistic-waste-management-for-companies-bu', 'service_description'),
(1510, 'id', 'Sistem manajemen sampah yang 100% menyeluruh untuk perusahaan, gedung, dan pelaku bisnis dalam rangka mengurangi jumlah timbulan sampah yang berakhir di TPA.', 'a-100-holistic-waste-management-for-companies-bu', 'service_description'),
(1511, 'en', 'Take an active part in preventing our local landfills from becoming overcapacity! Through our waste collection and waste recycling program: Zero Waste to Landfill, we will ensure that none of your waste ends up in the landfill!', 'take-an-active-part-in-preventing-our-local-landfi', 'service_description'),
(1512, 'id', 'Ambil peran aktif untuk membantu mencegah TPS dan TPA agar tidak kelebihan kapasitas! Melalui program pengangkutan dan daur ulang sampah yang dinamakan Zero Waste to Landfill, kami akan memastikan bahwa tidak ada sampah Anda yang berakhir di TPA!', 'take-an-active-part-in-preventing-our-local-landfi', 'service_description'),
(1513, 'en', 'Treat your inorganic waste the right way and make sure that your inorganic waste are recycled and included in the sustainable circular system.', 'treat-your-inorganic-waste-the-right-way-and-make-', 'service_description'),
(1514, 'id', 'Kelola sampah anorganik Anda dengan cara yang tepat dan pastikan bahwa sampah anorganik tersebut didaur ulang dan masuk ke dalam siklus yang berkelanjutan.', 'treat-your-inorganic-waste-the-right-way-and-make-', 'service_description'),
(1515, 'en', 'Through the placement of segregated waste bins in strategic places, as well as segregated waste collection for all of the waste that are produced during your event, we will help your event\'s waste management to be more well-prepared and responsible!', 'through-the-placement-of-segregated-waste-bins-in-', 'service_description'),
(1516, 'id', 'Melalui penempatan tempat sampah terpilah di lokasi-lokasi yang strategis, serta pengangkutan sampah terpilah selama acara berlangsung, kami akan membantu acara Anda mempersiapkan pengelolaan sampah yang bertanggung jawab!', 'through-the-placement-of-segregated-waste-bins-in-', 'service_description'),
(1517, 'en', 'Increase the material processing of brand-labelled waste throughout your company\'s business line. Whether it\'s in-store recycling or app-based recycling program, we provide both the system and solution!', 'increase-the-material-processing-of-brand-labelled', 'service_description'),
(1518, 'id', 'Tingkatkan pengelolaan materi dari sampah berlabel merek di seluruh lini bisnis Anda. Baik melalui program daur ulang di toko maupun yang berbasis aplikasi, kami punya sistem dan solusinya!', 'increase-the-material-processing-of-brand-labelled', 'service_description'),
(1519, 'en', 'Increasing the recycling rate of your brand-labeled waste with the support of app-integrated and web-integrated recycling system and opening even wider collaboration opportunities with other businesses and communities.', 'increasing-the-recycling-rate-of-your-brand-labele', 'service_description'),
(1520, 'id', 'Tingkatkan pengelolaan materi dari sampah berlabel merek Anda dengan bantuan sistem daur ulang berbasis aplikasi dan website, sekaligus membuka semakin banyak peluang kolaborasi dengan pelaku bisnis dan komunitas lain.', 'increasing-the-recycling-rate-of-your-brand-labele', 'service_description'),
(1521, 'en', 'Improve your solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs.', 'improve-your-solid-waste-management-by-conducting-', 'service_description'),
(1522, 'id', 'Tingkatkan pengelolaan sampah padat Anda dengan melakukan analisis terperinci dan mengidentifikasi program dan sistem manajemen sampah yang paling tepat.', 'improve-your-solid-waste-management-by-conducting-', 'service_description'),
(1523, 'en', 'We help our clients to implement programs that encourage the community to act and provide real contributions to the waste crisis in Indonesia.', 'we-help-our-clients-to-implement-programs-that-enc', 'service_description'),
(1524, 'id', 'Kami membantu klien kami untuk menerapkan program-program yang mendorong komunitas untuk ikut bertindak dan memberikan kontribusi nyata terhadap krisis sampah di Indonesia.', 'we-help-our-clients-to-implement-programs-that-enc', 'service_description'),
(1525, 'en', 'Designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management in schools.', 'designed-to-encourage-the-increasing-awareness-of-', 'service_description'),
(1526, 'id', 'Dirancang untuk meningkatkan kesadaran generasi mendatang terhadap prinsip 3R (Reduce, Reuse, Recycle) dan bagaimana menerapkannya di kehidupan sehari-hari.', 'designed-to-encourage-the-increasing-awareness-of-', 'service_description'),
(1527, 'en', 'Waste management education program that includes a visit to local landfill and Waste4Change\'s waste management facilities that stimulates all 4 senses (sight, touch, smell, and hearing).', 'waste-management-education-program-that-includes-a', 'service_description'),
(1528, 'id', 'Program edukasi manajemen sampah yang mencakup kunjungan ke TPA/TPS dan fasilitas pengelolaan sampah milik Waste4Change yang akan merangsang keempat indra Anda (melihat, mendengar, mencium, dan meraba).', 'waste-management-education-program-that-includes-a', 'service_description'),
(1529, 'en', 'Receive in-depth information regarding organic waste processing using Black Soldier Fly (BSF), as well as the cultivation and breeding methods of BSF.', 'receive-in-depth-information-regarding-organic-was', 'service_description'),
(1530, 'id', 'Dapatkan informasi mendalam mengenai pengelolaan sampah organik dengan menggunakan Black Soldier Fly (BSF), serta metode budidaya dan pengembangbiakan BSF.', 'receive-in-depth-information-regarding-organic-was', 'service_description'),
(1531, 'en', 'We provide Black Soldier Fly larvae that is high in protein and considered as a great animal feed. For any of you who wishes to build your own BSF nursery, we have all the necessary tools and starter kit.', 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'service_description'),
(1532, 'id', 'Kami menjual larva Black Soldier Fly yang tinggi protein dan bagus untuk digunakan sebagai pakan ternak. Untuk siapapun yang ingin merintis peternakan BSFnya sendiri, kami menyediakan semua perlengkapan dan alat yang diperlukan.', 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'service_description'),
(1533, 'en', 'Send your inorganic waste to Waste4Change and let us recycle it for you.', 'send-your-inorganic-waste-to-waste4change-and-let-', 'service_description'),
(1534, 'id', 'Kirim sampah anorganik Anda ke Waste4Change untuk didaur ulang.', 'send-your-inorganic-waste-to-waste4change-and-let-', 'service_description'),
(1535, 'en', 'Deposit your inorganic waste in Waste4Change\'s dropbox and let us recycle it for you.', 'deposit-your-inorganic-waste-in-waste4changes-dro', 'service_description'),
(1536, 'id', 'Setor sampah anorganik Anda ke dalam dropbox Waste4Change untuk didaur ulang.', 'deposit-your-inorganic-waste-in-waste4changes-dro', 'service_description'),
(1537, 'en', 'Send your used PET bottles of various sizes and brands with GoSend to get many benefits from Ades.', 'send-your-used-pet-bottles-of-various-sizes-and-br', 'service_description'),
(1538, 'id', 'Kirimkan sampah botol plastik PET Anda dalam berbagai ukuran dan merek dengan menggunakan GoSend untuk mendapatkan banyak keuntungan dari Ades.', 'send-your-used-pet-bottles-of-various-sizes-and-br', 'service_description'),
(1539, 'en', 'Deposit your used packaging through our partners throughout Indonesia and get reward points when shopping for various digital products.', 'deposit-your-used-packaging-through-our-partners-t', 'service_description'),
(1540, 'id', 'Setor sampah kemasan Anda melalui partner-partner kami yang tersebar di seluruh Indonesia dan dapatkan hadiah poin untuk setiap pembelanjaan produk digital.', 'deposit-your-used-packaging-through-our-partners-t', 'service_description'),
(1541, 'en', 'Process your organic waste at  home with Waste4Change\'s special composting bag and other home composting tools and equipment!', 'process-your-organic-waste-at-home-with-waste4cha', 'service_description'),
(1542, 'id', 'Kelola sampah organik Anda di rumah dengan menggunakan tas kompos dari Waste4Change beserta perlengkapan kompos lainnya!', 'process-your-organic-waste-at-home-with-waste4cha', 'service_description'),
(1543, 'en', 'No More Mixed Waste', 'no-more-mixed-waste', 'service_slogan'),
(1544, 'id', 'Tidak Ada Lagi Sampah yang Tercampur', 'no-more-mixed-waste', 'service_slogan'),
(1545, 'en', 'No More Waste That End Up In Landfills', 'no-more-waste-that-end-up-in-landfills', 'service_slogan'),
(1546, 'id', 'Zero Waste to Landfill', 'no-more-waste-that-end-up-in-landfills', 'service_slogan'),
(1547, 'en', 'From Waste to Useful Materials', 'from-waste-to-useful-materials', 'service_slogan'),
(1548, 'id', 'Dari Sampah Menjadi Material yang Berguna', 'from-waste-to-useful-materials', 'service_slogan'),
(1549, 'en', 'Great Event Planned Their Waste Management Beforehand', 'great-event-planned-their-waste-management-beforeh', 'service_slogan'),
(1550, 'id', 'Acara yang Baik itu Dipersiapkan dengan Matang dan Bersungguh-sungguh dalam Mengelola Sampah Mereka ', 'great-event-planned-their-waste-management-beforeh', 'service_slogan'),
(1551, 'en', 'Support the Recycling of Your Brand-Labeled Waste', 'support-the-recycling-of-your-brand-labeled-waste', 'service_slogan'),
(1552, 'id', 'Mendukung Daur Ulang Sampah Berlabel Merek Anda ', 'support-the-recycling-of-your-brand-labeled-waste', 'service_slogan'),
(1553, 'en', 'More Effective and Sustainable Brand-Labeled Waste Recycling Management', 'more-effective-and-sustainable-brand-labeled-waste', 'service_slogan'),
(1554, 'id', 'Daur Ulang Sampah Berlabel Merek dengan Lebih Efektif dan Berkelanjutan', 'more-effective-and-sustainable-brand-labeled-waste', 'service_slogan'),
(1555, 'en', 'Research and Planning with Environment in Mind', 'research-and-planning-with-environment-in-mind', 'service_slogan'),
(1556, 'id', 'Penelitian dan Perencanaan dengan Mempertimbangkan Aspek Lingkungan', 'research-and-planning-with-environment-in-mind', 'service_slogan'),
(1557, 'en', 'Solid Effort to Reduce Waste Generation From The Source', 'solid-effort-to-reduce-waste-generation-from-the-s', 'service_slogan'),
(1558, 'id', 'Usaha Nyata untuk Mengurangi Produksi Sampah dari Sumbernya', 'solid-effort-to-reduce-waste-generation-from-the-s', 'service_slogan'),
(1559, 'en', 'Optimal Implementation of 3R (Reduce-Reuse-Recycle) Principles', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'service_slogan'),
(1560, 'id', 'Penerapan Maksimal Prinsip 3R (Reduce-Reuse-Recycle)', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'service_slogan'),
(1561, 'en', 'Take a Closer Look at Waste Management Facts and Solutions', 'take-a-closer-look-at-waste-management-facts-and-s', 'service_slogan'),
(1562, 'id', 'Melihat Lebih Dekat Fakta dan Solusi Pengelolaan Sampah', 'take-a-closer-look-at-waste-management-facts-and-s', 'service_slogan'),
(1563, 'en', 'Effective Organic Waste Solution', 'effective-organic-waste-solution', 'service_slogan'),
(1564, 'id', 'Solusi Sampah Organik yang Efektif', 'effective-organic-waste-solution', 'service_slogan'),
(1565, 'en', 'Waste generation is inevitable. It\'s not easy to reduce waste in our everyday lives. The simplest, easiest and most important thing that we can do after generating waste is separating our organic and inorganic waste. <br>Through our service Responsible Waste Management (RWM), Waste4Change is providing holistic waste management to reduce the number of waste that piles up in the landfill.', 'waste-generation-is-inevitable-its-not-easy-to-r', 'service_about'),
(1566, 'id', 'Produksi sampah merupakan sesuatu yang tidak bisa dihindari. Mengurangi sampah sendiri bukanlah perkara yang mudah. Hal yang paling sederhana, mudah, dan penting yang dapat kita lakukan setelah menghasilkan sampah adalah memisahkan sampah organik dan sampah anorganik. Waste generation is inevitable. <br>Dengan servis kami yang bernama Responsible Waste Management (RWM), Waste4Change menyediakan manajemen sampah untuk mengurangi jumlah timbulan sampah yang menumpuk di TPA. ', 'waste-generation-is-inevitable-its-not-easy-to-r', 'service_about'),
(1567, 'en', 'Every day, Indonesians are generating 175,000 tons of waste. This caused Jakarta and many areas in Indonesia to suffer from landfill emergencies. Even the Bantar Gebang landfill that holds the residual waste of Jakarta residents is predicted to be overcapacity in 2022.<br>Waste is everyone\'s responsibility, but several sectors such as the commercial, company, and business actors need to contribute in paying more attention to their waste management and product cycle to ensure the environmental sustainability of their business. Through ZWTL program, Waste4Change ensures that all waste will be managed responsibly and no waste is being transported to the landfill.', 'every-day-indonesians-are-generating-175000-tons', 'service_about'),
(1568, 'id', 'Setiap harinya, masyarakat Indonesia menghasilkan 175,000 ton sampah. Hal ini yang menyebabkan banyak TPA di banyak tempat di Indonesia mengalami kondisi darurat. Bahkan Bantar Gerbang yang menampung sampah warga Jakarta diperkirakan akan menjadi kelebihan kapasitas di tahun 2022.<br>Sampah merupakan tanggung jawab semua orang, tapi beberapa sektor seperti komersial, perusahaan, dan pelaku bisnis perlu berkontribusi dan menaruh perhatian pada manajemen sampah dan siklus produk mereka untuk memastikan aspek keberlanjutan lingkungan dari bisnis mereka sendiri. Melalui program ZWTL, Waste4Change memastikan bahwa semua sampah akan dikelola secara bertanggung jawab dan tidak ada sampah yang dibuang ke TPA.', 'every-day-indonesians-are-generating-175000-tons', 'service_about'),
(1569, 'en', 'Waste is a relative term that can be applied differently to each person, especially inorganic waste. Once it is treated in the right way, inorganic waste can solve our problems on the scarcity of raw materials.<br>Through our Inorganic Waste Management (IWM), Waste4Change will ensure that your inorganic waste are recycled and be included in the sustainable circular system.', 'waste-is-a-relative-term-that-can-be-applied-diffe', 'service_about'),
(1570, 'id', 'Sampah merupakan istilah yang maknanya relatif dan tergantung pada setiap orang, terutama sampah anorganik. Ketika sampah tersebut dikelola secara tepat, sampah anorganik dapat menjadi solusi terhadap masalah kelangkaan bahan baku.<br>Melalui servis kami yang dinamakan Inorganic Waste Management (IWM), Waste4Change akan memastikan bahwa sampah anorganik Anda akan didaur ulang dan menjadi bagian dari siklus yang berkelanjutan.', 'waste-is-a-relative-term-that-can-be-applied-diffe', 'service_about'),
(1571, 'en', 'Waste generation during an event is inevitable. In a place where participants\' are allowed to take notes, to drink and eat, especially in a crowded event, it\'s not easy to make sure that everyone\'s taking their time and energy to be responsible for their waste. <br>Through our service Event Waste Management (EWM), we will provide your event with special trash bags designated to encourage people to segregate their waste. Waste4Change will also guarantee that your waste would be handled and processed responsibly to reduce the number of waste that ends up in the landfill.', 'waste-generation-during-an-event-is-inevitable-in', 'service_about'),
(1572, 'id', 'Produksi sampah dalam suatu acara menjadi hal yang tidak bisa dihindari. Di tempat dimana peserta diperbolehkan untuk makan, minum, serta mencatat, terutama tempat yang sangat ramai, tidak mudah untuk memastikan bahwa setiap orang bertanggung jawab terhadap sampah mereka.<br>Dengan servis kami yang dinamakan Event Waste Management (EWM), kami akan menyediakan acara Anda dengan kantong sampah khusus yang dibuat untuk mendorong orang-orang untuk memilah sampah mereka. Waste4Change juga akan menjamin bahwa sampah Anda akan ditangani dan dikelola secara bertanggung jawab untuk mengurangi jumlah timbulan sampah yang berakhir di TPA.', 'waste-generation-during-an-event-is-inevitable-in', 'service_about'),
(1573, 'en', 'Designed to increase the material processing from brand-labeled waste throughout your companys business line. What we define as brand-labeled waste might resulted from the following:<br><i class=\"fa fa-circle\"></i>Production process that resulted in product defect, reject, or residue from production process<br><i class=\"fa fa-circle\"></i>Distribution process such as expired or defect products<br><i class=\"fa fa-circle\"></i>Warehouse such as returns, second-hand, or broken<br><i class=\"fa fa-circle\"></i>Consumer such as empty packaging or used products', 'designed-to-increase-the-material-processing-from-', 'service_about'),
(1574, 'id', 'Dirancang untuk meningkatkan daur ulang materi dari sampah berlabel merek dalam seluruh lini bisnis Anda. Yang kami maksud sebagai sampah berlabel merek dapat muncul sebagai hasil dari:<br><i class=\"fa fa-circle\"></i>Proses produksi yang menghasilkan produk gagal, cacat, atau sampah dari sisa proses produksi<br><i class=\"fa fa-circle\"></i>Proses distribusi seperti produk yang cacat atau kadaluwarsa<br><i class=\"fa fa-circle\"></i>Gudang, seperti barang retur,bekas, atau rusak<br><i class=\"fa fa-circle\"></i>Konsumen, seperti kemasan kosong atau produk yang sudah selesai digunakan', 'designed-to-increase-the-material-processing-from-', 'service_about'),
(1575, 'en', 'We provide a waste recycling system that is integrated with web and mobile applications to further increase the amount of waste labeled your brand that is recycled.<br>The integration of technology in the waste recycling system not only supports responsible waste management for your brand-labeled waste but also opens opportunities for collaboration with many businesses and other recycling partners.<br>The integrated waste recycling system also supports the education and campaign aspects of your brand program, so it is expected to be able to reach and meet the needs of your brand consumers in more locations in Indonesia.', 'we-provide-a-waste-recycling-system-that-is-integr', 'service_about'),
(1576, 'id', 'Kami menyediakan sistem daur ulang yang terintegrasi dengan website dan aplikasi handphone untuk semakin meningkatkan tingkat daur ulang dari sampah berlabel merek Anda.<br>Pengintegrasian teknologi dalam sistem daur ulang tidak hanya akan mendukung pengelolaan sampah yang bertanggung jawab untuk sampah berlabel merek Anda, tetapi juga membuka peluang untuk berkolaborasi dengan banyak pelaku bisnis dan mitra daur ulang yang lain.<br>Sistem daur ulang sampah yang terintegrasi juga mendukung program di bidang edukasi dan kampanye dari merek/perusahaan Anda, sehingga harapannya servis ini akan mampu menjangkau dan memenuhi kebutuhan konsumen dari merek Anda di semakin banyak tempat di Indonesia.', 'we-provide-a-waste-recycling-system-that-is-integr', 'service_about'),
(1577, 'en', 'Waste4Change provides consultation through Solid Waste Management (SWM) Research that aims to improve solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs in cities, regions, building, or any other private/commercial institutions. <br> It also aims to harness the advantages borne out of implementing responsible waste management.?', 'waste4change-provides-consultation-through-solid-w', 'service_about'),
(1578, 'id', 'Waste4Change menyediakan konsultasi melalui servis Solid Waste Management (SWM) Research yang bertujuan meningkatkan pengelolaan sampah padat dengan melakukan analisis terperinci dan mengidentifikasi program dan sistem yang paling tepat, baik di kota, provinsi, bangungan, atau institusi publik dan komersial lainnya.<br>Servis ini juga bertujuan untuk memaksimalkan keuntungan yang didapat dari menerapkan pengelolaan sampah yang bertanggung jawab.? ', 'waste4change-provides-consultation-through-solid-w', 'service_about'),
(1579, 'en', 'According to recent BPS statistics, waste management ranks the lowest when compared to other environmental issues (energy, air pollution, transportation).<br>At Waste4Change, we see this as a challenge to implement programs that encourages the community to act and give real contributions to the ongoing waste crisis in Indonesia through Community-based Implementation.', 'according-to-recent-bps-statistics-waste-manageme', 'service_about'),
(1580, 'id', 'Berdasarkan statistik dari BPS, pengelolaan sampah menempati peringkat paling akhir dibandingkan dengan isu lingkungan yang lain (energi, polusi udara, transportasi).<br>Kami di Waste4Change melihat hal ini sebagai sebuah tantangan untuk menerapkan program-program yang mendorong komunitas lokal untuk bertindak dan memberikan kontribusi nyata terhadap permasalahan sampah di Indonesia yang tengah berlangsung melalui servis Community-based Implementation.', 'according-to-recent-bps-statistics-waste-manageme', 'service_about'),
(1581, 'en', '3R School Program is a program designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management system in schools. The aims of this program is to assist schools. Waste4Change acts as a facilitator in assisting beneficiaries to achieve the objectives of the program.?', '3r-school-program-is-a-program-designed-to-encoura', 'service_about'),
(1582, 'id', '3R School Program adalah program yang dirancang untuk mendorong peningkatan kesadaran warga sekolah untuk menerapkan prinsip 3R (Reduce, Reuse, Recycle) demi terwujudnya sistem pengelolaan sampah yang bertanggung jawab di sekolah-sekolah. Tujuan dari program ini adalah untuk membantu sekolah. Waste4Change berperan sebagai fasilitator dalam mendampingi penerima manfaat mencapai tujuan program yang telah ditetapkan.?', '3r-school-program-is-a-program-designed-to-encoura', 'service_about'),
(1583, 'en', 'Akademi Bijak Sampah (AKABIS) is an education model created by Waste4Change to raise awareness on the importance of protecting the environment, especially in responsible waste management. If your institution is willing to experience first-hand field visits that stimulate all 4 senses, we can provide you with AKABIS-Xperience, a 6-hour educational tour to our facilities and landfill with interactive discussion.?<br> To accommodate those with time limitation, we can also provide you with AKABIS-Class, a 2-hour In-class training and discussion on responsible waste management that can be carried out at the client\'s preferred location.', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'service_about'),
(1584, 'id', 'Akademi Bijak Sampah (AKABIS) adalah sebuah model edukasi yang dibuat oleh Waste4Change untuk meningkatkan kesadaran mengenai pentingnya menjaga lingkungan, terutama mengenai pengelolaan sampah yang bertanggung jawab. Jika institusi Anda ingin merasakan pengalaman langsung kunjungan lapangan yang merangsang keempat indra manusia, kami bisa menawarkan Anda program AKABIS-Xperience, tur edukasional yang berlangsung selama 6 jam ke fasilitas milik Waste4Change dan TPA yang disertai dengan diskusi interaktif.<br>Selain itu, untuk mengakomodasi Anda yang memiliki waktu yang terbatas, kami juga menawarkan AKABIS-Class, sebuah pelatihan yang berlangsung selama 2 jam dan dilakukan di dalam ruangan, lengkap dengan diskusi mengenai pengelolaan sampah yang bertanggung jawab dan bisa dilakukan di lokasi yang dikehendaki oleh klien.', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'service_about'),
(1585, 'en', 'Through BSF Learning Center, you will receive in-depth information regarding organic waste processing using Black Soldier Flies (BSF), as well as the cultivation and breeding methods of BSF.', 'through-bsf-learning-center-you-will-receive-in-d', 'service_about'),
(1586, 'id', 'Melalui program BSF Learning Center, Anda akan mendapatkan informasi yang mendalam mengenai pengolahan sampah organik dengan menggunakan Black Soldier Fly (BSF), sekaligus mengenai metode pembudidayaan dan pengembangbiakan BSF.', 'through-bsf-learning-center-you-will-receive-in-d', 'service_about'),
(1587, 'en', 'Based on the Regulation of Ministry of Transportation No 51 year 2015 about Sea Ports, Sea Ports Unit Organizations have to provide pollution prevention facilities and ensure the implementation of greenport.<br>Therefore, the study in PT Pelabuhan Indonesia II (Persero) head office building aims to identify and provide recommendations related to the steps in implementing 3R-based waste management system. This study was conducted by performing waste audits, survey to employees, and in-depth interview to the related stakeholders.?', 'based-on-the-regulation-of-ministry-of-transportat', 'service_about'),
(1588, 'id', 'Berdasarkan Peraturan Menteri Perhubungan No. 51 Tahun 2015 mengenai Pelabuhan, organisasi unit pelabuhan harus menyediakan fasilitas pencegahan polusi dan memastikan penerapan konsep pelabuhan hijau. <br>Maka dari itu, studi yang dilakukan di kantor utama PT Pelabuhan Indonesia II (Persero) bertujuan untuk mengidentifikasi dan memberikan rekomendasi yang berkaitan dengan langkah-langkah penerapan sistem pengelolaan sampah berbasis 3R. Studi ini dilakukan dengan melaksanakan audit sampah, survei ke pegawai, dan wawancara mendalam dengan pemangku kepentingan terkait.', 'based-on-the-regulation-of-ministry-of-transportat', 'service_about'),
(1589, 'en', 'Beting village and Jami\' Mosque area are located at the intersection of Kapuas River and Landak River. People in Beting village area tend to dispose their waste into the river due to the minimum facilities, limited access to landfill, and unavailability of waste management system.<br.The increasing piles of waste in this area was also worsened by the volume of waste coming from the upstream. In order to solve the waste problem in that area, an integrated waste management system needs to be implemented.?', 'beting-village-and-jami-mosque-area-are-located-a', 'service_about'),
(1590, 'id', 'Desa Beting dan Masjid Jami\' terletak di persimpangan sungai Kapuas dan sungai Landak. Masyarakat desa Beting cenderung membuang sampah mereka ke sungai karena minimnya fasilitas, akses ke TPA/TPS yang terbatas, serta tidak adanya sistem manajemen sampah.<br>Jumlah sampah yang kian meningkat di area ini juga diperparah oleh adanya kiriman sampah dari daerah hulu. Guna memecahkan masalah sampah di area tersebut, sebuah sistem manajemen sampah yang terintegrasi perlu diterapkan.', 'beting-village-and-jami-mosque-area-are-located-a', 'service_about'),
(1591, 'en', 'Indonesia is the 2nd biggest contributor of plastic waste into the oceans, primarily through the mismanagement of land-based waste. In 2010, it was estimated that 3.2 million Mt/year of plastic waste were mismanaged, and that the volume would more than doubled by 2025 if no significant changes were to take place.  ?<br>The study aimed to better understand waste management in Indonesia, map the flow of packaging waste, and identify potential key  stakeholders to collaborate with in order to prevent packaging waste from ending up in the ocean?', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'service_about');
INSERT INTO `dictionary` (`dictionary_id`, `language_code`, `dictionary_content`, `dictionary_slug`, `dictionary_type`) VALUES
(1592, 'id', 'Indonesia merupakan penyumbang sampah laut terbesar kedua di dunia, utamanya karena buruknya penanganan sampah yang berasal dari darat. Di tahun 2010, diperkirakan ada sebanyak 3,2 juta ton sampah plastik per tahun yang tidak dikelola dengan baik. Jumlah tersebut diperkirakan akan berlipat ganda di tahun 2025 jika tidak terjadi perubahan yang signifikan.  ?<br>Studi ini bertujuan untuk lebih memahami pengelolaan sampah di Indonesia, memetakan alur sampah kemasan, dan mengidentifikasi pemangku kepentingan yang potensial di tingkat lokal untuk berkolaborasi demi mencegah sampah kemasan agar tidak berakhir di laut.', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'service_about'),
(1593, 'en', 'The Ocean Cleanup is a Dutch-based non-profit organization who develops advanced technologies to rid the world\'s oceans of plastics. By deploying their fleet of systems, they aim to remove 50% of the Great Pacific Garbage Patch in just five years\' time. By having the same mission on tackling waste problems, The Ocean Cleanup cooperates with Waste4Change as their local partner in Indonesia and conducted a riverine plastic emission study in Jakarta\'s rivers in April 2018. ?<br>During a 10-day fieldwork supported by DKI Jakarta Orange Troops, plastics were monitored at 7 river points throughout Jakarta, which includes Ciliwung and Pesanggrahan River. Plastic samples were trawled and analyzed by dividing them into different types. By having these data, hopefully appropriate measures can be done to tackle marine debris starting from the rivers, not only in Jakarta, but  throughout Indonesia and in neighboring countries.', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'service_about'),
(1594, 'id', 'The Ocean Cleanup merupakan organisasi non-profit asal Belanda yang mengembangkan teknologi mutakhir untuk membersihkan lautan dari sampah plastik. Dengan meluncurkan armada mereka, The Ocean Cleanup berambisi untuk menyingkirkan 50% sampah di the Great Pacific Garbage Patch hanya dalam waktu lima tahun. Dengan berbagi misi yang sama untuk mengatasi permasalahan sampah, The Ocean Cleanup bekerja sama dengan Waste4Change sebagai partner lokal mereka di Indonesia dan melakukan studi polusi plastik di sungai-sungai di Jakarta pada bulan April tahun 2018. ?<br>Melalui kerja lapangan yang dilaksanakan selama 10 hari dengan dibantu oleh Pasukan Oranye Jakarta, sampah plastik di monitor di 7 titik sungai di Jakarta, termasuk di dalamnya sungai Ciliwung dan sungai Pesanggrahan. Sampel plastik dijaring dan dianalisis dengan cara membaginya ke beberapa tipe. Dengan data ini, diharapkan dapat diambil langkah yang tepat untuk mengatasi masalah sampah di laut, dimulai dari menangani sampah yang berada di sungai, dan tidak hanya sungai di Jakarta, tapi juga di seluruh Indonesia dan bahkan di negara-negara tetangga. ?', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'service_about'),
(1595, 'en', 'Ramboll Danmark A/S as the main consultant was working together with Waste4Change as local consultant to conduct technical due diligence for 2,200 tpd and 35 MW Waste to Energy Plant that will be built in Sunter, North Jakarta. ?<br>This due diligence is done for lenders appraisal and to make sure that the Waste to Energy plant will be operating sustainably in terms of technicalities.', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'service_about'),
(1596, 'id', 'Ramboll Danmark A/S as the main consultant was working together with Waste4Change as local consultant to conduct technical due diligence for 2,200 tpd and 35 MW Waste to Energy Plant that will be built in Sunter, North Jakarta.<br>This due diligence is done for lenders appraisal and to make sure that the Waste to Energy plant will be operating sustainably in terms of technicalities.', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'service_about'),
(1597, 'en', 'Waste4Change assisted PT Indonesia Power UP Suralaya in implementing responsible waste management in both the existing office and  the new buildings (Unit 5-7 and Coal Building), as well as Suralaya village itself.  <br>The purpose of this assistance was to increase awareness and action on the importance of sorting out waste, and to subsequently reuse waste that is disaggregated and has value and  eventually to reduce the waste disposed to Cinapol landfill. ', 'waste4change-assisted-pt-indonesia-power-up-surala', 'service_about'),
(1598, 'id', 'Waste4Change membantu PT Indonesia Power UP Suralaya dalam menerapkan pengelolaan sampah yang bertanggung jawab di kantor lama sekaligus di gedung barunya (Unit 5-7 dan Coal Building), dan di desa Suralaya sendiri.  <br>Tujuan dari pendampingan ini adalah untuk meningkatkan kesadaran dan perilaku masyarakat mengenai pentingnya memilah sampah, untuk menggunakan kembali sampah yang telah dipisahkan sesuai bahannya dan masih memiliki nilai, serta mengurangi jumlah timbulan sampah yang dibuang di TPA Cinapol. ? ', 'waste4change-assisted-pt-indonesia-power-up-surala', 'service_about'),
(1599, 'en', 'In order to achieve the national target of 30% waste reduction by 2030 that the government had set, TPS 3R program can serve as one of the solutions. Waste4Change as one of the TPS 3R Advisory consultants plays a pivotal role in assisting, supervising, monitoring and evaluating the implementation of this community-based program.<br>The scope of work includes optimization of previously constructed TPS 3R to improve both the management and business development as well as supervision on the establishment of new TPS 3Rs. Waste4Change monitored and evaluated TPS 3R throughout Kalimantan and Java (in 2017) and Kalimantan, Java, Sulawesi, Nusa Tenggara, Maluku, and Papua (in 2018). ', 'in-order-to-achieve-the-national-target-of-30-was', 'service_about'),
(1600, 'id', 'Dalam rangka mencapai target nasional pengurangan sampah sebesar 30% di tahun 2030 yang telah ditetapkan pemerintah, program TPS 3R dapat menjadi salah satu solusinya. Waste4Change sebagai salah satu konsultan TPS 3R Advisory berperan dalam mendampingi, mengawasi, memonitor, serta mengevaluasi penerapan program berbasis komunitas ini.<br>Cakupan kerjanya meliputi pengoptimalisasian TPS 3R yang kemarin sudah dibangun untuk meningkatkan manajemen dan pengembangan bisnisnya, serta pengawasan TPS 3R yang baru dibangun. Waste4Change memonitor dan mengevaluasi TPS 3R yang ada di Kalimantan dan Jawa (di tahun 2017) dan di Kalimantan, Jawa, Sulawesi, Nusa Tenggara, Maluku, dan Papua (di tahun 2018). ', 'in-order-to-achieve-the-national-target-of-30-was', 'service_about'),
(1601, 'en', 'Tourism in Indonesia is currently growing exponentially. This condition, if not properly planned, will have negative implications for the environment such as increased waste amount that will lead to health issues, environmental problems, and eventually the reluctance of tourists to visit certain destinations that are mismanaged.<br>Pulau Merah, with its astonishing sunset view and nice waves for surfing, is one of the emerging tourist destinations in Banyuwangi. It will almost likely  face the said problems if there is no concrete actions to encourage a good waste management system and campaign. ', 'tourism-in-indonesia-is-currently-growing-exponent', 'service_about'),
(1602, 'id', 'Sektor pariwisata di Indonesia sedang berkembang pesat. Kondisi ini, jika tidak ditangani dengan tepat, akan menyebabkan dampak negatif terhadap lingkungan, misalnya peningkatan jumlah sampah yang akan menyebabkan masalah kesehatan, lingkungan, dan pada akhirnya membuat wisatawan segan untuk kembali ke destinasi wisata yang tidak dikelola dengan baik tersebut.<br>Pulau Merah, dengan pemandangan matahari terbenam yang cantik dan ombak yang cocok untuk berselancar, merupakan salah satu destinasi wisata yang tengah naik daun di Banyuwangi. Tempat tersebut berpotensi untuk mengalami masalah serupa apabila tidak ada aksi konkret untuk mendorong kampanye dan sistem manajemen sampah yang baik. ', 'tourism-in-indonesia-is-currently-growing-exponent', 'service_about'),
(1603, 'en', 'Indonesia\'s frontline areas reflect the life of the country, including its waste management. Therefore, a responsible waste management in the frontline areas is a necessity to develop a sustainable frontline. This program aims to implement responsible waste management system in 7 Indonesian borderline areas. This program focuses on community capacity building so that waste burning and the behavior of unethical waste dumping can be reduced.', 'indonesias-frontline-areas-reflect-the-life-of-th', 'service_about'),
(1604, 'id', 'Wilayah-wilayah terdepan Indonesia merefleksikan kehidupan negara tersebut, termasuk tentang sistem pengelolaan sampahnya. Karena itulah, pengelolaan sampah yang bertanggung jawab di wilayah-wilayah terdepan Indonesia diperlukan demi keberlanjutannya. Program ini bertujuan untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab di 7 area perbatasan Indonesia dengan negara lain. Program ini berfokus pada peningkatan kapasitas untuk mengurangi kegiatan membakar sampah atau perilaku membuang sampah sembarangan.', 'indonesias-frontline-areas-reflect-the-life-of-th', 'service_about'),
(1605, 'en', 'The Unilever Foundation along with Waste4Change organized a 3R Green School program that aimed to educate students in nine schools in Tangerang about responsible waste management through 3R principles, as well as to encourage them about environmental awareness.<br>In this program, students are informed to understand the problem of waste, and the methods of sorting waste and processing waste by applying 3R principles in order to reduce the waste disposal to landfill in South Tangerang.<br>At the end of the program, students from each of the selected school  have a better understanding on the importance of  environmental awareness and are expected to consistently commit in handling their waste responsibly.', 'the-unilever-foundation-along-with-waste4change-or', 'service_about'),
(1606, 'id', 'Wilayah-wilayah terdepan Indonesia merefleksikan kehidupan negara tersebut, termasuk tentang sistem pengelolaan sampahnya. Karena itulah, pengelolaan sampah yang bertanggung jawab di wilayah-wilayah terdepan Indonesia diperlukan demi keberlanjutannya. Program ini bertujuan untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab di 7 area perbatasan Indonesia dengan negara lain. Program ini berfokus pada peningkatan kapasitas untuk mengurangi kegiatan membakar sampah atau perilaku membuang sampah sembarangan.<br>Program peningkatan kapasitas ini diharapkan mampu menanamkan pemahaman masyarakat lokal mengenai pentingnya partisipasi mereka dalam pengelolaan sampah yang bertanggung jawab, keuntungan dari penerapan sistem pengelolaan sampah yang bertanggung jawab, serta dampak langsung dari tidak adanya sistem pengelolaan sampah yang layak.', 'the-unilever-foundation-along-with-waste4change-or', 'service_about'),
(1607, 'en', 'Knowledge about responsible solid waste management and the 3R (Reduce- Reuse, Recycle) Concept is very important, especially for institutions. Waste4Change facilitates institutions to be agents of change so they can encourage responsible solid waste management in their environments.<br>As a country with a strong foundation in sustainability, the Embassy of Finland wants to play its role in waste management in Indonesia through green office practices. They were keen to implement solid waste management in their office in order to reduce waste transported to TPST Bantar Gebang.<br>Akabis Class in the Embassy of Finland was held in 2018 and around 20 employees from different sectors joined the training session.', 'knowledge-about-responsible-solid-waste-management', 'service_about'),
(1608, 'id', 'Pengetahuan mengenai pengelolaan sampah yang bertanggung jawab dan konsep 3R (Reduce- Reuse, Recycle) sangatlah penting, terutama bagi institusi. Waste4Change memfasilitasi institusi untuk menjadi agen perubahan agar mereka bisa mendorong terciptanya sistem pengelolaan sampah padat yang bertanggung jawab d kantor mereka sendiri. <br>Sebagai negara yang memiliki landasan kuat dalam aspek berkelanjutan, Kedutaan Finlandia ingin menjalankan perannya dalam pengelolaan sampah di Indonesia melalui praktik kantor hijau. Mereka bersemangat untuk menerapkan pengelolaan sampah padat di kantor mereka demi mengurangi jumlah timbulan sampah yang berakhir di TPST Bantar Gebang. <br>AKABIS-Class di Kedutaan Finlandia dilaksanakan di tahun 2018 dan sekitar 20 pegawai dari berbagai sektor mengikuti sesi edukasi tersebut.', 'knowledge-about-responsible-solid-waste-management', 'service_about'),
(1609, 'en', 'The ancient method of making paper is not only recognized as a way of reading history, but also as a way to understand the philosophy of letters, eastern culture, and the sustainability of culture and the environment.<br>The Museum of Modern and Contemporary Art in Nusantara (also known as Museum MACAN) invited Waste4Change to enlighten the ways on handling solid waste sustainably especially on paper waste to the audience of enthusiasts on sustainability in their museum.', 'the-ancient-method-of-making-paper-is-not-only-rec', 'service_about'),
(1610, 'id', 'Metode kuno untuk membuat kertas tidak hanya dikenal sebagai cara untuk memahami sejarah, tetapi juga sebagai cara untuk memahami filosofi dibalik aksara, budaya Timur, serta keberlanjutan budaya dan lingkungan. <br>Museum of Modern and Contemporary Art in Nusantara (MACAN) mengundang Waste4Change untuk memberi pencerahan mengenai cara-cara menangani sampah padat, terutama sampah kertas, kepada para pengunjung museum yang antusias terhadap topik keberlanjutan atau sustainability', 'the-ancient-method-of-making-paper-is-not-only-rec', 'service_about'),
(1611, 'en', 'PT Bank DBS Indonesia is one of Waste4Change\'s clients that implements ZWTL (Zero Waste To Landfill) concept in its office\'s waste management system. To increase the performance of ZWTL program at the PT Bank DBS Indonesia office, all of the PT Bank DBS Indonesia employees were required to enroll in the Akabis Xperience program held by Waste4Change.<br>Through AKABIS Xperience activities, PT Bank DBS Indonesia employees were expected to understand more about responsible waste management concept.', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'service_about'),
(1612, 'id', 'PT BANK DBS Indonesia merupakan salah satu klien Waste4Change yang menggunakan servis ZWTL (Zero Waste To Landfill). Salah satu syarat agar program ZWTL bisa diterapkan di kantor PT BANK DBS Indonesia yaitu dengan melaksanakan AKABIS-Xperience untuk semua pegawai PT BANK DBS Indonesia.?<br>Melalui kegiatan-kegiatan di AKABIS Xperience, pegawai PT BANK DBS Indonesia bisa meningkatkan kepedulian dan pemahaman mereka mengenai sistem pengelolaan sampah yang bertanggung jawab.', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'service_about'),
(1613, 'en', 'Waste4Change became one of the facilitators for YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition 2018. The event is implemented by Divers Clean Action and hosted by the US Embassy.<br>Through Akabis Xperience, Waste4Change delivered hands-on experiences and ensured the continuing effort of supporting behavioral change regarding waste management.<br>61 young leaders from 11 Southeast Asia countries were given a brief presentation about the current waste management condition by Waste4Change representatives, followed by a visit to Waste4Change\'s Material Recovery Facility (MRF), Waste4Change\'s Composting Area, and the infamous Bantar Gebang landfill – located not far from Waste4Change\'s head office.', 'waste4change-became-one-of-the-facilitators-for-ys', 'service_about'),
(1614, 'id', 'Waste4Change menjadi salah satu fasilitator untuk YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition Workshop yang diselenggarakan oleh Divers Clean Action dan dihost oleh Kedutaan Amerika Serikat. <br>Melalui program AKABIS-Xperience, Waste4Change ingin memberikan pengalaman langsung dan memastikan adanya perubahan perilaku yang berkelanjutan dalam usaha pengelolaan sampah yang lebih baik.<br>61 pemimpin muda dari 11 negara Asia Tenggara diberikan presentasi singkat oleh perwakilan Waste4change mengenai kondisi pengelolaan sampah yang ada di Indonesia, dilanjutkan oleh kunjungan ke Rumah Pemulihan Material (RPM) dan Rumah Kompos Waste4Change, dan sekaligus ke TPST Bantar Gebang yang berlokasi tidak jauh dari kantor Waste4Change.  ', 'waste4change-became-one-of-the-facilitators-for-ys', 'service_about'),
(1615, 'en', 'Analysis and recommendations to implement a responsible 3R-based waste management system using the approach of 5 aspects', 'analysis-and-recommendations-to-implement-a-respon', 'service_achievement'),
(1616, 'id', 'Analisis dan rekomendasi untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab dan berbasis 3R dengan menggunakan 5 aspek pendekatan', 'analysis-and-recommendations-to-implement-a-respon', 'service_achievement'),
(1617, 'en', 'Identification of waste management method that is potential to be developed', 'identification-of-waste-management-method-that-is-', 'service_achievement'),
(1618, 'id', 'Identifikasi metode pengelolaan sampah yang memiliki potensi untuk dikembangkan?', 'identification-of-waste-management-method-that-is-', 'service_achievement'),
(1619, 'en', 'Written report and presentation of 3R-based waste management?', 'written-report-and-presentation-of-3r-based-waste-', 'service_achievement'),
(1620, 'id', 'Laporan tertulis beserta presentasi mengenai pengelolaan sampah berbasis 3R', 'written-report-and-presentation-of-3r-based-waste-', 'service_achievement'),
(1621, 'en', 'Data collection activities were done through interview, field observation, questionnaire distribution and waste sampling in favor of analyzing the major problems that occurred in Beting Village and Jami\' Mosque area', 'data-collection-activities-were-done-through-inter', 'service_achievement'),
(1622, 'id', 'Aktivitas pengumpulan data dilakukan dengan cara wawancara, observasi lapangan, pendistribusian kuesioner, serta pengambilan sampel sampah dalam rangka menganalisis masalah utama yang terjadi di Desa Beting dan area masjid Jami\'', 'data-collection-activities-were-done-through-inter', 'service_achievement'),
(1623, 'en', 'Analyzed the current management system by identifying the existing law, Institution, Operational Techniques, Community Participation and Finance aspects respectively', 'analyzed-the-current-management-system-by-identify', 'service_achievement'),
(1624, 'id', 'Menganalisis sistem manajemen sampah yang ada dengan mengidentifikasi peraturan yang ada, institusi, teknis operasional, partisipasi masyarakat, serta aspek finansialnya secara berurutan', 'analyzed-the-current-management-system-by-identify', 'service_achievement'),
(1625, 'en', 'Key players and stakeholders mapping', 'key-players-and-stakeholders-mapping', 'service_achievement'),
(1626, 'id', 'Pemetaan aktor yang krusial dan pemangku kepentingan', 'key-players-and-stakeholders-mapping', 'service_achievement'),
(1627, 'en', 'Comprehensive waste flow analysis of Jakarta and Surabaya City', 'comprehensive-waste-flow-analysis-of-jakarta-and-s', 'service_achievement'),
(1628, 'id', 'Analisis alur sampah yang komprehensi di kota Jakarta Surabaya', 'comprehensive-waste-flow-analysis-of-jakarta-and-s', 'service_achievement'),
(1629, 'en', 'Identification of recycling rate in Jakarta and Surabaya?', 'identification-of-recycling-rate-in-jakarta-and-su', 'service_achievement'),
(1630, 'id', 'Identifikasi tingkat daur ulang sampah di Jakarta dan Surabaya?', 'identification-of-recycling-rate-in-jakarta-and-su', 'service_achievement'),
(1631, 'en', 'Solid Waste Management SWOT analysis of Jakarta and Surabaya City', 'solid-waste-management-swot-analysis-of-jakarta-an', 'service_achievement'),
(1632, 'id', 'Analisis SWOT Pengelolaan Sampah di Jakarta dan Surabaya', 'solid-waste-management-swot-analysis-of-jakarta-an', 'service_achievement'),
(1633, 'en', 'Retrieved better understanding on the total amount and characteristics of plastics that lies in Jakarta\'s rivers, which has become a problem in the past years, as well as analyzed the best way to tackle these issues', 'retrieved-better-understanding-on-the-total-amount', 'service_achievement'),
(1634, 'id', 'Memperoleh pemahaman yang lebih baik mengenai jumlah dan karakteristik plastik yang berada di sungai-sungai di Jakarta, yang memang sudah menjadi masalah selama beberapa tahun belakangan, sekaligus menganalisis cara yang paling tepat untuk mengatasi masalah tersebut', 'retrieved-better-understanding-on-the-total-amount', 'service_achievement'),
(1635, 'en', 'Published paper regarding the project can be found in the following link', 'published-paper-regarding-the-project-can-be-found', 'service_achievement'),
(1636, 'id', 'Makalah ilmiah mengenai proyek ini bisa dibaca di link berikut', 'published-paper-regarding-the-project-can-be-found', 'service_achievement'),
(1637, 'en', 'Solid Waste Characteristics and solid-waste existing system review', 'solid-waste-characteristics-and-solid-waste-existi', 'service_achievement'),
(1638, 'id', 'Solid Waste Characteristics and solid-waste existing system review', 'solid-waste-characteristics-and-solid-waste-existi', 'service_achievement'),
(1639, 'en', 'Solid waste supply plan review and its possible disruptions', 'solid-waste-supply-plan-review-and-its-possible-di', 'service_achievement'),
(1640, 'id', 'Solid waste supply plan review and its possible disruptions', 'solid-waste-supply-plan-review-and-its-possible-di', 'service_achievement'),
(1641, 'en', 'Suitability study of the current site for Waste-to-Energy facility', 'suitability-study-of-the-current-site-for-waste-to', 'service_achievement'),
(1642, 'id', 'Suitability study of the current site for Waste-to-Energy facility', 'suitability-study-of-the-current-site-for-waste-to', 'service_achievement'),
(1643, 'en', 'Increased awareness and action of employees towards responsible waste management?', 'increased-awareness-and-action-of-employees-toward', 'service_achievement'),
(1644, 'id', 'Peningkatan kesadaran dan perilaku para pegawai terhadap konsep pengelolaan sampah yang bertanggung jawab?', 'increased-awareness-and-action-of-employees-toward', 'service_achievement'),
(1645, 'en', 'Increased segregation rate', 'increased-segregation-rate', 'service_achievement'),
(1646, 'id', 'Bertambahnya tingkat daur ulang sampah', 'increased-segregation-rate', 'service_achievement'),
(1647, 'en', 'Decreased residual waste generation', 'decreased-residual-waste-generation', 'service_achievement'),
(1648, 'id', 'Berkurangnya produksi sampah residu', 'decreased-residual-waste-generation', 'service_achievement'),
(1649, 'en', 'Increased economic incentives from composting', 'increased-economic-incentives-from-composting', 'service_achievement'),
(1650, 'id', 'Penambahan insentif ekonomi dari hasil mengkompos', 'increased-economic-incentives-from-composting', 'service_achievement'),
(1651, 'en', 'Reports containing progress activities, lessons learnt and best practices of TPS3R', 'reports-containing-progress-activities-lessons-le', 'service_achievement'),
(1652, 'id', 'Laporan yang mencakup perkembangan, pelajaran yang didapat, serta contoh praktik terbaik dari TPS3R', 'reports-containing-progress-activities-lessons-le', 'service_achievement'),
(1653, 'en', 'Proceedings of Workshop/ Consignment Proceedings', 'proceedings-of-workshop-consignment-proceedings', 'service_achievement'),
(1654, 'id', 'Catatan Workshop/ Catatan Konsinyasi', 'proceedings-of-workshop-consignment-proceedings', 'service_achievement'),
(1655, 'en', 'Video and audio visual documentation of Monitoring and Evaluation activities', 'video-and-audio-visual-documentation-of-monitoring', 'service_achievement'),
(1656, 'id', 'Video dan dokumentasi audio visual dari aktivitas Monitoring dan Evaluasi', 'video-and-audio-visual-documentation-of-monitoring', 'service_achievement'),
(1657, 'en', 'The formation of Eco Ranger: a group of local people that operates waste management systems and also educates tourists and locals about environmental issues.The Eco Ranger is formed to support the cleanliness and sustainability of their home-environment as one of the famous tourist destinations in Indonesia', 'the-formation-of-eco-ranger:-a-group-of-local-peop', 'service_achievement'),
(1658, 'id', 'Pembentukan Eco Ranger, sekelompok orang dari masyarakat lokal yang mengoperasikan sistem pengelolaan sampah, mengedukasi wisatawan dan orang lokal mengenai isu lingkungan, dan memastikan bahwa rumah mereka yang menjadi destinasi wisata tetap bersih dan indah untuk dinikmati oleh generasi-generasi berikutnya', 'the-formation-of-eco-ranger:-a-group-of-local-peop', 'service_achievement'),
(1659, 'en', 'Technical assistance, capacity building, connecting partners and funding sources, assistance in making Standard Operating Procedure, and continuous monitoring and evaluation for 3 years', 'technical-assistance-capacity-building-connectin', 'service_achievement'),
(1660, 'id', 'Bantuan teknis, peningkatan kapasitas, menghubungkan partner dan sumber pendanaan, pendampingan dalam merancang SOP, dan pemantauan serta evaluasi yang dilakukan terus menerus selama 3 tahun lamanya', 'technical-assistance-capacity-building-connectin', 'service_achievement'),
(1661, 'en', 'Waste Management Education to local communities and stakeholders?', 'waste-management-education-to-local-communities-an', 'service_achievement'),
(1662, 'id', 'Edukasi manajemen sampah terhadap masyarakat lokal dan para pemangku kepentingan?', 'waste-management-education-to-local-communities-an', 'service_achievement'),
(1663, 'en', 'Technical guideline of organic and inorganic waste handling?', 'technical-guideline-of-organic-and-inorganic-waste', 'service_achievement'),
(1664, 'id', 'Panduan teknis mengenai penanganan sampah organik dan anorganik', 'technical-guideline-of-organic-and-inorganic-waste', 'service_achievement'),
(1665, 'en', 'Formation of organization and follow-up work plan', 'formation-of-organization-and-follow-up-work-plan', 'service_achievement'),
(1666, 'id', 'Pembentukan organisasi dan tindak lanjut rencana kerja', 'formation-of-organization-and-follow-up-work-plan', 'service_achievement'),
(1667, 'en', 'Forming the Task Force which in charge of increasing the environmental awareness and 3R principle application amongst other school residents. The Task Force members are consist of selected teachers and students from each school', 'forming-the-task-force-which-in-charge-of-increasi', 'service_achievement'),
(1668, 'id', 'Pembentukan Satuan Tugas. Melalui program ini, para anggota Satuan Tugas bertanggung jawab untuk mendorong timbulnya kesadaran lingkungan di kalangan warga sekolah dan menerapkan prinsip 3R di kehidupan sehari-hari. Anggota Satuan Tugas terdiri dari murid dan guru yang sudah dipilih dari setiap sekolah', 'forming-the-task-force-which-in-charge-of-increasi', 'service_achievement'),
(1669, 'en', 'Organizing education events, which are AKABIS Class and AKABIS Xperience, to increase awareness and introduce several solutions to overcome the waste problem?', 'organizing-education-events-which-are-akabis-clas', 'service_achievement'),
(1670, 'id', 'Mengadakan acara edukatif, yaitu AKADEMI BIJAK SAMPAH (AKABIS) Class and Xperience, untuk meningkatkan kesadaran dan memperkenalkan beberapa solusi dari masalah sampah yang ada', 'organizing-education-events-which-are-akabis-clas', 'service_achievement'),
(1671, 'en', 'Each school was expected to be able to carry on the Recycle Day activities independently, in which students are encouraged to put recyclable waste in the designated bin to be recycled. Waste4Change conducted monitoring and evaluation of the waste generated during the activities', 'each-school-was-expected-to-be-able-to-carry-on-th', 'service_achievement'),
(1672, 'id', 'Setiap sekolah diharapkan mampu menjalankan aktivitas Recycle Day, dimana para murid didorong untuk menaruh sampah yang bisa didaur ulang ke dalam kantong sampah yang sesuai. Waste4Change melakukan pengawasan dan evaluasi terhadap sampah yang dihasilkan selama aktivitas berlangsung', 'each-school-was-expected-to-be-able-to-carry-on-th', 'service_achievement'),
(1673, 'en', 'Sharing Session: why we need to be responsible for our solid waste management?', 'sharing-session:-why-we-need-to-be-responsible-for', 'service_achievement'),
(1674, 'id', 'Sesi Sharing: kenapa kita harus menerapkan pengelolaan sampah padat yang bertanggung jawab?', 'sharing-session:-why-we-need-to-be-responsible-for', 'service_achievement'),
(1675, 'en', 'Presentation Session: how can we conduct responsible solid waste management starting from our office??', 'presentation-session:-how-can-we-conduct-responsib', 'service_achievement'),
(1676, 'id', 'Sesi Presentasi: bagaimana kita bisa menerapkan pengelolaan sampah yang ertanggung jawab dimulai dari kantor sendiri?', 'presentation-session:-how-can-we-conduct-responsib', 'service_achievement'),
(1677, 'en', 'Interactive Games?', 'interactive-games?', 'service_achievement'),
(1678, 'id', 'Permainan Interaktif', 'interactive-games?', 'service_achievement'),
(1679, 'en', 'Open discussion with fellow panels and audiences on solid waste management', 'open-discussion-with-fellow-panels-and-audiences-o', 'service_achievement'),
(1680, 'id', 'Bagaimana cara menangani dan mengelola sampah secara bertanggung jawab dan berkelanjutan, terutama sampah kertas', 'open-discussion-with-fellow-panels-and-audiences-o', 'service_achievement'),
(1681, 'en', 'The importance of responsible solid waste management?', 'the-importance-of-responsible-solid-waste-manageme', 'service_achievement'),
(1682, 'id', 'Pentingnya pengelolaan sampah padat yang bertanggung jawab', 'the-importance-of-responsible-solid-waste-manageme', 'service_achievement'),
(1683, 'en', 'How to handle and treat waste responsibly and sustainably especially on paper waste', 'how-to-handle-and-treat-waste-responsibly-and-sust', 'service_achievement'),
(1684, 'id', 'Bagaimana cara menanggulangi kerugian yang disebabkan oleh sampah terhadap manusia dan makhluk hidup lain', 'how-to-handle-and-treat-waste-responsibly-and-sust', 'service_achievement'),
(1685, 'en', 'How to mitigate adverse effects of waste for humans and other living creatures', 'how-to-mitigate-adverse-effects-of-waste-for-human', 'service_achievement'),
(1686, 'id', 'Adanya diskusi terbuka antara pembicara dan peserta mengenai pengelolaan sampah padat', 'how-to-mitigate-adverse-effects-of-waste-for-human', 'service_achievement'),
(1687, 'en', 'Shock Moment: all participants are invited to see the magnitude of waste problems by visiting Bantar Gebang Landfill?', 'shock-moment:-all-participants-are-invited-to-see-', 'service_achievement'),
(1688, 'id', 'Shock Moment: semua peserta diajak untuk menyaksikan besarnya permasalahan sampah yang kita hadapi melalui kunjungan ke TPST Bantar Gebang', 'shock-moment:-all-participants-are-invited-to-see-', 'service_achievement'),
(1689, 'en', 'O\' Moment: responsible waste management presentation regarding why they must be responsible with their waste?', 'o-moment:-responsible-waste-management-presentati', 'service_achievement'),
(1690, 'id', 'O\'Moment: presentasi mengenai pengelolaan sampah yang bertanggung jawab dan mengapa setiap orang harus bertanggung jawab terhadap sampahnya', 'o-moment:-responsible-waste-management-presentati', 'service_achievement'),
(1691, 'en', 'Facility Tour: visiting W4C\'s facilities, including our Material Recovery Facility and Composting House', 'facility-tour:-visiting-w4cs-facilities-includin', 'service_achievement'),
(1692, 'id', 'Tur Fasilitas: Mengunjungi fasilitas milik Waste4Change, yaitu Rumah Pemulihan Material dan Rumah Kompos', 'facility-tour:-visiting-w4cs-facilities-includin', 'service_achievement'),
(1693, 'en', 'Community Assistance', 'community-assistance', 'service_offer_name'),
(1694, 'id', 'Community Assistance', 'community-assistance', 'service_offer_name'),
(1695, 'en', 'Community Capaciity Building', 'community-capaciity-building', 'service_offer_name'),
(1696, 'id', 'Community Capaciity Building', 'community-capaciity-building', 'service_offer_name'),
(1697, 'en', 'AKABIS CLASS', 'akabis-class', 'service_offer_name'),
(1698, 'id', 'AKABIS CLASS', 'akabis-class', 'service_offer_name'),
(1699, 'en', 'AKABIS XPERIENCE', 'akabis-xperience', 'service_offer_name'),
(1700, 'id', 'AKABIS XPERIENCE', 'akabis-xperience', 'service_offer_name'),
(1701, 'en', 'One-day Visit', 'one-day-visit', 'service_offer_name'),
(1702, 'id', 'Kunjungan 1 Hari', 'one-day-visit', 'service_offer_name'),
(1703, 'en', 'Five-day Visit', 'five-day-visit', 'service_offer_name'),
(1704, 'id', 'Kunjungan 5 Hari', 'five-day-visit', 'service_offer_name'),
(1705, 'en', '21 Days of Intensive Program', '21-days-of-intensive-program', 'service_offer_name'),
(1706, 'id', 'Program Intensif Selama 21 Hari', '21-days-of-intensive-program', 'service_offer_name'),
(1707, 'en', 'Planning and operational assistance for a minimum duration of 6 months to ensure the sustainability of the SWM program\'s  within a certain area?.<br>Encourage communities\' aspiration and assist them to take actions on responsible solid waste management programs within their neighborhood?<br>Designed for neighborhood, city, offices.', 'planning-and-operational-assistance-for-a-minimum-', 'service_offer_decription'),
(1708, 'id', 'Perencanaan dan pendampingan operasional selama minimal 6 bulan untuk memastikan keberlanjutan dari program SWM di suatu daerah/area tertentu?<br>Mendorong aspirasi dari komunitas lokal dan membantu mereka untuk mengambil tindakan nyata dalam program pengelolaan sampah yang bertanggung jawab di lingkungan mereka masing-masing<br>Dirancang untuk perumahan, kota, dan perkantoran', 'planning-and-operational-assistance-for-a-minimum-', 'service_offer_decription'),
(1709, 'en', 'Community Based Capacity Building is a 3-days training activities for local waste organization?s<br>Deepen their understanding towards institutional management concept in waste sector and assist them to make a sustainable action plan ?.<br>Designed to empower Solid Waste Activists, Waste Banks, Government,  Civil Society Group (TPS 3R managers), Communities and Academic Institutional to perform? implement? responsible waste management in their communities?.', 'community-based-capacity-building-is-a-3-days-trai', 'service_offer_decription'),
(1710, 'id', 'Community Based Capacity Building adalah sebuah pelatihan selama 3 hari untuk organisasi sampah di tingkat lokal<br>Bertujuan untuk memperdalam pemahaman mereka terhadap konsep manajemen institusi dalam sektor persampahan dan membantu mereka untuk membuat rencana aksi yang berkelanjutan<br>Dirancang untuk memberdayakan aktivis Sampah Padat, Bank Sampah, Pemerintah, Kelompok Masyarakat Sipil, dan Institusi Pendidikan untuk ikut menerapkan pengelolaan sampah yang bertanggung jawab di komunitas mereka', 'community-based-capacity-building-is-a-3-days-trai', 'service_offer_decription'),
(1711, 'en', 'A 2-hour In-class training and discussion<br>Held in client\'s institution<br>Akabis Class can be attended by:<ul><li>The general public, especially young people who are the agents of change, for a better future of waste management in Indonesia </li><li>Institution</li></ul>', 'a-2-hour-in-class-training-and-discussion<br>held-', 'service_offer_decription'),
(1712, 'id', 'Pelatihan dan diskusi dalam ruangan dengan durasi 2 jam<br>Diadakan di tempat klien<br>Akabis Class dapat diikuti oleh:<ul><li>Masyarakat umum, terutama anak muda yang menjadi agen perubahan demi masa depan pengelolaan sampah di Indonesia yang lebih baik lagi</li><li>Institusi</li></ul>', 'a-2-hour-in-class-training-and-discussion<br>held-', 'service_offer_decription'),
(1713, 'en', 'A 6-hour educational tour and interactive discussion<br>Visit to landfill<br>Visit to W4C Facility<br>Akabis Xperience can be  attended by:<ul><li>The general public who are the agents of change for a better future of waste management in Indonesia</li><li>Institution</li></ul>', 'a-6-hour-educational-tour-and-interactive-discussi', 'service_offer_decription'),
(1714, 'id', 'Tur edukasional dan diskusi interaktif yang berlangsung selama 6 jam<br>Kunjungan ke TPA<br>Kunjungan ke Fasilitas W4C ?<br>Akabis Xperience dapat diikuti oleh<ul><li>Masyarakat umum, terutama anak muda yang menjadi agen perubahan demi masa depan pengelolaan sampah di Indonesia yang lebih baik lagi</li><li>Institusi</li></ul>', 'a-6-hour-educational-tour-and-interactive-discussi', 'service_offer_decription'),
(1715, 'en', 'Tour and introduction of BSF cultivation and breeding facilities to see the maintenance methods as well as the decomposition process of food waste using BSF', 'tour-and-introduction-of-bsf-cultivation-and-breed', 'service_offer_decription'),
(1716, 'id', 'Tur dan pengenalan fasilitas pengembangbiakan dan pembudidayaan BSF untuk melihat metode pemeliharaan dan proses pembusukan sampah makanan menggunakan BSF', 'tour-and-introduction-of-bsf-cultivation-and-breed', 'service_offer_decription'),
(1717, 'en', 'Engage in a more detailed exploration through direct practice of breeding and cultivating BSF for 5 days in our facility', 'engage-in-a-more-detailed-exploration-through-dire', 'service_offer_decription'),
(1718, 'id', 'Eksplorasi yang lebih mendetail dalam bentuk berlatih langsung membudidayakan dan beternak BSF selama 5 hari di fasilitas kami', 'engage-in-a-more-detailed-exploration-through-dire', 'service_offer_decription'),
(1719, 'en', 'This is suitable for business actors who aspire to develop their very own BSF breeding and cultivation facilities. We will help you to design and plan your own BSF cultivation and breeding facilities in your city/area', 'this-is-suitable-for-business-actors-who-aspire-to', 'service_offer_decription'),
(1720, 'id', 'Program ini cocok untuk pelaku bisnis yang ingin mengembangkan peternakan dan budidaya BSFnya sendiri. Kami akan membantu Anda untuk merancang dan merencanakan fasilitas budidaya dan penembangbiakan BSF di kota/domisili Anda', 'this-is-suitable-for-business-actors-who-aspire-to', 'service_activity_name'),
(1721, 'en', 'Phase 1', 'phase-1', 'service_activity_name'),
(1722, 'id', 'Tahap 1', 'phase-1', 'service_activity_name'),
(1723, 'en', 'Phase 2', 'phase-2', 'service_activity_name'),
(1724, 'id', 'Tahap 2', 'phase-2', 'service_activity_name'),
(1725, 'en', 'Raising Awareness through AKABIS', 'raising-awareness-through-akabis', 'service_activity_description'),
(1726, 'id', 'Meningkatkan Kesadaran melalui AKABIS', 'raising-awareness-through-akabis', 'service_activity_description'),
(1727, 'en', 'Forming Task Force, Planning, Capacity Building, and Assistance', 'forming-task-force-planning-capacity-building-a', 'service_activity_description'),
(1728, 'id', 'Pembentukan Satuan Tugas, Perencanaan, Peningkatan Kapasitas, dan Pendampingan', 'forming-task-force-planning-capacity-building-a', 'service_activity_description'),
(1729, 'en', '100% holistic-approach on waste management', '100-holistic-approach-on-waste-management', 'service_benefit_name'),
(1730, 'id', 'Pendekatan manajemen sampah yang 100% menyeluruh', '100-holistic-approach-on-waste-management', 'service_benefit_name'),
(1731, 'en', 'Support and in line with Perpres No. 97 Tahun 2017 (JAKSTRANAS)', 'support-and-in-line-with-perpres-no-97-tahun-2017', 'service_benefit_name'),
(1732, 'id', 'Mendukung dan sesuai dengan Peraturan Presiden Nomor 97 Tahun 2017 (JAKSTRANAS)', 'support-and-in-line-with-perpres-no-97-tahun-2017', 'service_benefit_name'),
(1733, 'en', 'Adding sustainable and environmental-friendly value to client\'s brand image', 'adding-sustainable-and-environmental-friendly-valu', 'service_benefit_name'),
(1734, 'id', 'Memberikan nilai ramah lingkungan dan keberlanjutan kepada citra perusahaan', 'adding-sustainable-and-environmental-friendly-valu', 'service_benefit_name'),
(1735, 'en', 'Increasing staff\'s awareness of waste issues', 'increasing-staffs-awareness-of-waste-issues', 'service_benefit_name'),
(1736, 'id', 'Meningkatkan kepedulian pegawai tentang isu sampah', 'increasing-staffs-awareness-of-waste-issues', 'service_benefit_name'),
(1737, 'en', 'Reduce waste to landfill', 'reduce-waste-to-landfill', 'service_benefit_name'),
(1738, 'id', 'Mengurangi timbulan sampah yang dibuang ke TPA', 'reduce-waste-to-landfill', 'service_benefit_name'),
(1739, 'en', 'Prevent your brand-labelled products for being misused, imitated or forged', 'prevent-your-brand-labelled-products-for-being-mis', 'service_benefit_name'),
(1740, 'id', 'Mencegah produk berlabel merek Anda agar tidak disalahgunakan, dibuat imitasinya, atau dipalsukan', 'prevent-your-brand-labelled-products-for-being-mis', 'service_benefit_name'),
(1741, 'en', 'Waste Journey Report', 'waste-journey-report', 'service_benefit_name'),
(1742, 'id', 'Laporan Alur Sampah', 'waste-journey-report', 'service_benefit_name'),
(1743, 'en', 'Help to increase recycling rate', 'help-to-increase-recycling-rate', 'service_benefit_name'),
(1744, 'id', 'Membantu meningkatkan tingkat daur ulang', 'help-to-increase-recycling-rate', 'service_benefit_name'),
(1745, 'en', 'Wider Reach', 'wider-reach', 'service_benefit_name'),
(1746, 'id', 'Jangkauan yang Lebih Luas', 'wider-reach', 'service_benefit_name'),
(1747, 'en', 'Meet the needs of your brand customers in more locations in Indonesia', 'meet-the-needs-of-your-brand-customers-in-more-loc', 'service_benefit_name'),
(1748, 'id', 'Melayani kebutuhan pelanggan merek Anda di lebih banyak tempat di Indonesia', 'meet-the-needs-of-your-brand-customers-in-more-loc', 'service_benefit_name'),
(1749, 'en', 'The real action in encouraging the implementation of 3R and responsible waste management in Indonesia, especially in the educational sector?', 'the-real-action-in-encouraging-the-implementation-', 'service_benefit_name'),
(1750, 'id', 'Sebagai bentuk nyata penerapan 3R dan pengelolaan sampah yang bertanggung jawab di Indonesia, terutama di sektor pendidikan', 'the-real-action-in-encouraging-the-implementation-', 'service_benefit_name'),
(1751, 'en', 'Supporting the green concept of our clients\' brand image?', 'supporting-the-green-concept-of-our-clients-brand', 'service_benefit_name'),
(1752, 'id', 'Memperkuat citra positif perusahaan', 'supporting-the-green-concept-of-our-clients-brand', 'service_benefit_name'),
(1753, 'en', 'Increased knowledge and capacity of students and teachers about the 3R concept', 'increased-knowledge-and-capacity-of-students-and-t', 'service_benefit_name'),
(1754, 'id', 'Peningkatan pengetahuan dan kapasitas murid serta guru mengenai prinsip 3R', 'increased-knowledge-and-capacity-of-students-and-t', 'service_benefit_name'),
(1755, 'en', 'Schools can contribute to supporting and executing a responsible waste management system in their facility', 'schools-can-contribute-to-supporting-and-executing', 'service_benefit_name'),
(1756, 'id', 'Sekolah dapat berkontribusi untuk mewujudkan pengelolaan sampah yang bertanggung jawab di sekolah-sekolah', 'schools-can-contribute-to-supporting-and-executing', 'service_benefit_name'),
(1757, 'en', 'Available for every school located in Indonesia, we support our clients\' school to become an example of a green and sustainable educational facility', 'available-for-every-school-located-in-indonesia-w', 'service_benefit_name'),
(1758, 'id', 'Tersedia untuk setiap sekolah yang berlokasi di Indonesia, kami mendukung sekolah klien kami untuk menjadi contoh fasilitas pendidikan yang hijau dan berkelanjutan', 'available-for-every-school-located-in-indonesia-w', 'service_benefit_name'),
(1759, 'en', 'For schools located in Jakarta, we help to support the school to become a potential candidate to apply for the Sekolah ADIWIYATA program?', 'for-schools-located-in-jakarta-we-help-to-support', 'service_benefit_name'),
(1760, 'id', 'Menjadi kandidat potensial untuk mendaftar program Sekolah ADIWIYATA?', 'for-schools-located-in-jakarta-we-help-to-support', 'service_benefit_name'),
(1761, 'en', 'Solid Waste Management Feasibility Study', 'solid-waste-management-feasibility-study', 'service_expertise_name'),
(1762, 'id', 'Solid Waste Management Feasibility Study', 'solid-waste-management-feasibility-study', 'service_expertise_name'),
(1763, 'en', 'Waste Audit', 'waste-audit', 'service_expertise_name'),
(1764, 'id', 'Waste Audit', 'waste-audit', 'service_expertise_name'),
(1765, 'en', 'Technical and Operational Design of SWM', 'technical-and-operational-design-of-swm', 'service_expertise_name'),
(1766, 'id', 'Technical and Operational Design of SWM', 'technical-and-operational-design-of-swm', 'service_expertise_name'),
(1767, 'en', 'SWM Regulatory Analysis', 'swm-regulatory-analysis', 'service_expertise_name'),
(1768, 'id', 'SWM Regulatory Analysis', 'swm-regulatory-analysis', 'service_expertise_name'),
(1769, 'en', 'Behavior Change Analysis', 'behavior-change-analysis', 'service_expertise_name'),
(1770, 'id', 'Behavior Change Analysis', 'behavior-change-analysis', 'service_expertise_name'),
(1771, 'en', 'Financial Analysis', 'financial-analysis', 'service_expertise_name'),
(1772, 'id', 'Financial Analysis', 'financial-analysis', 'service_expertise_name'),
(1773, 'en', 'Institutional Analysis', 'institutional-analysis', 'service_expertise_name'),
(1774, 'id', 'Institutional Analysis', 'institutional-analysis', 'service_expertise_name'),
(1775, 'en', 'Stakeholders Mapping', 'stakeholders-mapping', 'service_expertise_name'),
(1776, 'id', 'Stakeholders Mapping', 'stakeholders-mapping', 'service_expertise_name'),
(1777, 'en', 'Recycling Value Chain Analysis', 'recycling-value-chain-analysis', 'service_expertise_name'),
(1778, 'id', 'Recycling Value Chain Analysis', 'recycling-value-chain-analysis', 'service_expertise_name'),
(1779, 'en', 'Material Flow Analysis/ VCA', 'material-flow-analysis-vca', 'service_expertise_name'),
(1780, 'id', 'Material Flow Analysis/ VCA', 'material-flow-analysis-vca', 'service_expertise_name'),
(1781, 'en', 'Waste to Energy Feasibility Study', 'waste-to-energy-feasibility-study', 'service_expertise_name'),
(1782, 'id', 'Waste to Energy Feasibility Study', 'waste-to-energy-feasibility-study', 'service_expertise_name'),
(1783, 'en', 'Trash bag designated to support waste segregation', 'trash-bag-designated-to-support-waste-segregation', 'service_facility_name'),
(1784, 'id', 'Kantong sampah yang akan mendukung pemilahan sampah', 'trash-bag-designated-to-support-waste-segregation', 'service_facility_name'),
(1785, 'en', 'Waste collection in a segregated state', 'waste-collection-in-a-segregated-state', 'service_facility_name'),
(1786, 'id', 'Pengangkutan sampah dalam kondisi terpilah', 'waste-collection-in-a-segregated-state', 'service_facility_name'),
(1787, 'en', 'One-time Technical Induction Training', 'one-time-technical-induction-training', 'service_facility_name'),
(1788, 'id', 'Pelatihan induksi teknis sebanyak satu kali', 'one-time-technical-induction-training', 'service_facility_name'),
(1789, 'en', 'Inorganic Trash Bag', 'inorganic-trash-bag', 'service_facility_name'),
(1790, 'id', 'Kantong sampah anorganik', 'inorganic-trash-bag', 'service_facility_name'),
(1791, 'en', 'Comprehensive waste management system in the distribution line', 'comprehensive-waste-management-system-in-the-distr', 'service_facility_name'),
(1792, 'id', 'Sistem manajemen sampah yang komprehensif di alur distribusi', 'comprehensive-waste-management-system-in-the-distr', 'service_facility_name'),
(1793, 'en', 'Responsible waste management for residual waste (waste that are difficult to be recycled) without sending it to the landfills (on demand)', 'responsible-waste-management-for-residual-waste-w', 'service_facility_name'),
(1794, 'id', 'Pengelolaan sampah yang bertanggung jawab untuk sampah residu (sampah yang sulit untuk didaur ulang) tanpa membuangnya ke TPA (sesuai permintaan)', 'responsible-waste-management-for-residual-waste-w', 'service_facility_name'),
(1795, 'en', 'Increase the number of waste that can be further processed through recycling method', 'increase-the-number-of-waste-that-can-be-further-p', 'service_facility_name'),
(1796, 'id', 'Meningkatkan jumlah sampah yang dapat diproses melalui metode daur ulang', 'increase-the-number-of-waste-that-can-be-further-p', 'service_facility_name'),
(1797, 'en', 'Easy waste collection and recycling system supported by web and mobile applications', 'easy-waste-collection-and-recycling-system-support', 'service_facility_name'),
(1798, 'id', 'Proses pengangkutan dan pendaur ulangan sampah yang lebih mudah dengan didukung website dan aplikasi handphone', 'easy-waste-collection-and-recycling-system-support', 'service_facility_name'),
(1799, 'en', 'Waste segregation by client', 'waste-segregation-by-client', 'service_flow_name'),
(1800, 'id', 'Pemilahan sampah oleh klien', 'waste-segregation-by-client', 'service_flow_name'),
(1801, 'en', 'Waste storage in transfer point/ TPST', 'waste-storage-in-transfer-point-tpst', 'service_flow_name'),
(1802, 'id', 'Penyimpanan sampah di titik transfer/ TPST', 'waste-storage-in-transfer-point-tpst', 'service_flow_name'),
(1803, 'en', 'Segregated waste collection', 'segregated-waste-collection', 'service_flow_name'),
(1804, 'id', 'Pengumpulan sampah terpilah', 'segregated-waste-collection', 'service_flow_name'),
(1805, 'en', 'Waste processing in W4C\'s Material Recovery Facility', 'waste-processing-in-w4cs-material-recovery-facili', 'service_flow_name'),
(1806, 'id', 'Pengolahan sampah di Rumah Pemulihan Material W4C', 'waste-processing-in-w4cs-material-recovery-facili', 'service_flow_name'),
(1807, 'en', 'Residue being sent to the landfill', 'residue-being-sent-to-the-landfill', 'service_flow_name'),
(1808, 'id', 'Residu dikirim ke Tempat Pembuangan Akhir', 'residue-being-sent-to-the-landfill', 'service_flow_name'),
(1809, 'en', 'Waste processing in W4C\'s Material Recivery Facility', 'waste-processing-in-w4cs-material-recivery-facili', 'service_flow_name');
INSERT INTO `dictionary` (`dictionary_id`, `language_code`, `dictionary_content`, `dictionary_slug`, `dictionary_type`) VALUES
(1810, 'id', 'Pengolahan sampah di Rumah Pemulihan Material W4C', 'waste-processing-in-w4cs-material-recivery-facili', 'service_flow_name'),
(1811, 'en', 'Residue co-processing with RDF technology', 'residue-co-processing-with-rdf-technology', 'service_flow_name'),
(1812, 'id', 'Pengolahan residu dengan teknologi RDF', 'residue-co-processing-with-rdf-technology', 'service_flow_name'),
(1813, 'en', 'Dropping locations in more location across Indonesia', 'dropping-locations-in-more-location-across-indones', 'service_flow_name'),
(1814, 'id', 'Lokasi setor sampah di banyak lokasi di seluruh Indonesia', 'dropping-locations-in-more-location-across-indones', 'service_flow_name'),
(1815, 'en', 'User can send or drop their waste to Waste4Change\'s partner by registering to get a unique code from website', 'user-can-send-or-drop-their-waste-to-waste4change', 'service_flow_name'),
(1816, 'id', 'Pengguna dapat menyetor sampah mereka ke partner daur ulang Waste4Change dengan mendaftarkan diri di website untuk mendapat kode unik', 'user-can-send-or-drop-their-waste-to-waste4change', 'service_flow_name'),
(1817, 'en', 'User will get points as a reward for recycling their waste', 'user-will-get-points-as-a-reward-for-recycling-the', 'service_flow_name'),
(1818, 'id', 'Pengguna akan mendapatkan poin sebagai hadiah karena sudah mendaur ulang', 'user-will-get-points-as-a-reward-for-recycling-the', 'service_flow_name'),
(1819, 'en', 'Waste responsibly managed by our partner', 'waste-responsibly-managed-by-our-partner', 'service_flow_name'),
(1820, 'id', 'Sampah dikelola secara bertanggung jawab oleh partner daur ulang kami', 'waste-responsibly-managed-by-our-partner', 'service_flow_name'),
(1821, 'en', 'Material transported to up-cycling and recycling industry to support Circular Economy', 'material-transported-to-up-cycling-and-recycling-i', 'service_flow_name'),
(1822, 'id', 'Material dikirim ke industri up-cycling dan recycling untuk mendukung Circular Economy', 'material-transported-to-up-cycling-and-recycling-i', 'service_flow_name'),
(1823, 'en', 'We ensure that your brand-labeled was not ends up in environment', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'service_flow_name'),
(1824, 'id', 'Kami memastikan sampah brand Anda tidak berakhir di TPA', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'service_flow_name'),
(1825, 'en', 'Brand', 'brand', 'service_recomendation'),
(1826, 'id', 'Merek', 'brand', 'service_recomendation'),
(1827, 'en', 'Bussiness Actor', 'bussiness-actor', 'service_recomendation'),
(1828, 'id', 'Pelaku Bisnis', 'bussiness-actor', 'service_recomendation'),
(1829, 'en', 'Company', 'company', 'service_recomendation'),
(1830, 'id', 'Perusahaan', 'company', 'service_recomendation'),
(1831, 'en', 'Company\'s CSR', 'companys-csr', 'service_recomendation'),
(1832, 'id', 'CSR Perusahaan', 'companys-csr', 'service_recomendation'),
(1833, 'en', 'Consultant', 'consultant', 'service_recomendation'),
(1834, 'id', 'Konsultan', 'consultant', 'service_recomendation'),
(1835, 'en', 'Distributor', 'distributor', 'service_recomendation'),
(1836, 'id', 'Distribusi', 'distributor', 'service_recomendation'),
(1837, 'en', 'Event', 'event', 'service_recomendation'),
(1838, 'id', 'Acara', 'event', 'service_recomendation'),
(1839, 'en', 'Foundation', 'foundation', 'service_recomendation'),
(1840, 'id', 'Foundation', 'foundation', 'service_recomendation'),
(1841, 'en', 'Government', 'government', 'service_recomendation'),
(1842, 'id', 'Pemerintah', 'government', 'service_recomendation'),
(1843, 'en', 'Hotels', 'hotels', 'service_recomendation'),
(1844, 'id', 'Hotel', 'hotels', 'service_recomendation'),
(1845, 'en', 'Individual', 'individual', 'service_recomendation'),
(1846, 'id', 'Individu', 'individual', 'service_recomendation'),
(1847, 'en', 'Office Blocks', 'office-blocks', 'service_recomendation'),
(1848, 'id', 'Komplek Perkantoran', 'office-blocks', 'service_recomendation'),
(1849, 'en', 'Product', 'product', 'service_recomendation'),
(1850, 'id', 'Produk', 'product', 'service_recomendation'),
(1851, 'en', 'Researcher', 'researcher', 'service_recomendation'),
(1852, 'id', 'Peneliti', 'researcher', 'service_recomendation'),
(1853, 'en', 'Residential Area/Housing', 'residential-areahousing', 'service_recomendation'),
(1854, 'id', 'Perumahan', 'residential-areahousing', 'service_recomendation'),
(1855, 'en', 'Restaurants', 'restaurants', 'service_recomendation'),
(1856, 'id', 'Restoran', 'restaurants', 'service_recomendation'),
(1857, 'en', 'School', 'school', 'service_recomendation'),
(1858, 'id', 'Sekolah', 'school', 'service_recomendation'),
(1859, 'en', 'HSE Division', 'hse-division', 'service_recomendation'),
(1860, 'id', 'Divisi HSE', 'hse-division', 'service_recomendation'),
(1861, 'en', 'Sustainability Division', 'sustainability-division', 'service_recomendation'),
(1862, 'id', 'Divisi Sustainability', 'sustainability-division', 'service_recomendation'),
(1863, 'en', 'CSR Division', 'csr-division', 'service_recomendation'),
(1864, 'id', 'Divisi CSR', 'csr-division', 'service_recomendation'),
(1865, 'en', 'Building', 'building', 'service_recomendation'),
(1866, 'id', 'Bangunan', 'building', 'service_recomendation'),
(1867, 'en', 'Personal', 'personal', 'service_recomendation'),
(1868, 'id', 'Personal', 'personal', 'service_recomendation'),
(1869, 'en', 'Learn more', 'learn-more', 'global'),
(1870, 'id', 'Pelajari Lebih Lanjut', 'learn-more', 'global');

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
(1, 7, 'solid-waste-management-feasibility-study', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL),
(2, 7, 'waste-audit', '', '2019-12-07 22:42:02', '2019-12-07 22:42:45', NULL),
(3, 7, 'technical-and-operational-design-of-swm', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL),
(4, 7, 'swm-regulatory-analysis', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL),
(5, 7, 'behavior-change-analysis', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL),
(6, 7, 'financial-analysis', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL),
(7, 7, 'institutional-analysis', '', '2019-12-07 22:42:02', '2019-12-07 22:43:51', NULL),
(8, 7, 'stakeholders-mapping', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL),
(9, 7, 'recycling-value-chain-analysis', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL),
(10, 7, 'material-flow-analysis-vca', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL),
(11, 7, 'marine-debris-study', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL),
(12, 7, 'waste-to-energy-feasibility-study', '', '2019-12-07 22:42:02', '2019-12-07 22:42:02', NULL);

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
(1, 1, 'trash-bag-designated-to-support-waste-segregation', 'wastebin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(2, 1, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(3, 1, 'one-time-technical-induction-training', 'loadspeaker-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(4, 1, 'waste-journey-report', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(5, 2, 'trash-bag-designated-to-support-waste-segregation', 'wastebin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(6, 2, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(7, 2, 'waste-journey-report', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(8, 3, 'inorganic-trash-bag', 'wastebin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(9, 3, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(10, 3, 'one-time-technical-induction-training', 'loadspeaker-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(11, 3, 'waste-journey-report', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(12, 4, 'trash-bag-designated-to-support-waste-segregation', 'wastebin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(13, 4, 'waste-collection-in-a-segregated-state', 'segregation-bin-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(14, 4, 'waste-journey-report', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(15, 5, 'comprehensive-waste-management-system-in-the-distr', 'distribution-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(16, 5, 'responsible-waste-management-for-residual-waste-w', 'residue-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(17, 5, 'increase-the-number-of-waste-that-can-be-further-p', 'chart-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(18, 6, 'comprehensive-waste-management-system-in-the-distr', 'distribution-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(19, 6, 'responsible-waste-management-for-residual-waste-w', 'residue-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(20, 6, 'increase-the-number-of-waste-that-can-be-further-p', 'chart-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(21, 6, 'easy-waste-collection-and-recycling-system-support', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42');

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
(1, 1, 'waste-segregation-by-client', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(2, 1, 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(3, 1, 'segregated-waste-collection', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(4, 1, 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(5, 1, 'residue-being-sent-to-the-landfill', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(6, 2, 'waste-segregation-by-client', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(7, 2, 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(8, 2, 'segregated-waste-collection', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(9, 2, 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(10, 2, 'residue-being-sent-to-the-landfill', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(11, 3, 'waste-segregation-by-client', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(12, 3, 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(13, 3, 'segregated-waste-collection', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(14, 3, 'waste-processing-in-w4cs-material-recivery-facili', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(15, 3, 'residue-being-sent-to-the-landfill', 'recycling.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(16, 4, 'waste-segregation-by-client', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(17, 4, 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(18, 4, 'segregated-waste-collection', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(19, 4, 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(20, 4, 'residue-co-processing-with-rdf-technology', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(21, 5, 'waste-segregation-by-client', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(22, 5, 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(23, 5, 'segregated-waste-collection', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(24, 5, 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(25, 5, 'residue-co-processing-with-rdf-technology', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(26, 6, 'dropping-locations-in-more-location-across-indones', 'drop.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(27, 6, 'user-can-send-or-drop-their-waste-to-waste4change', 'storage.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(28, 6, 'user-will-get-points-as-a-reward-for-recycling-the', 'transfer.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(29, 6, 'waste-responsibly-managed-by-our-partner', 'process.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(30, 6, 'material-transported-to-up-cycling-and-recycling-i', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL),
(31, 6, 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'landfill.png', '2019-12-07 22:46:00', '2019-12-07 22:46:00', NULL);

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
(2, 'en', 'English', 'assets/img/icons/flag_england.png', '2019-11-16 18:56:53', '2019-12-14 10:50:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `offer_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `offer_icon` varchar(255) DEFAULT NULL,
  `offer_name` varchar(255) DEFAULT NULL,
  `offer_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`offer_id`, `service_id`, `offer_icon`, `offer_name`, `offer_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 'people-m.png', 'community-assistance', 'planning-and-operational-assistance-for-a-minimum-', NULL, '2019-12-10 02:22:33', NULL),
(2, 8, 'people-m.png', 'community-capaciity-building', 'community-based-capacity-building-is-a-3-days-trai', NULL, '2019-12-10 02:22:34', NULL),
(3, 10, 'loadspeaker-m.png', 'akabis-class', 'a-2-hour-in-class-training-and-discussion<br>held-', NULL, '2019-12-10 02:36:55', NULL),
(4, 10, 'tour-m.png', 'akabis-xperience', 'a-6-hour-educational-tour-and-interactive-discussi', NULL, '2019-12-10 02:36:55', NULL),
(5, 11, 'people-m.png', 'one-day-visit', 'tour-and-introduction-of-bsf-cultivation-and-breed', NULL, '2019-12-12 09:36:09', NULL),
(6, 11, 'people-m.png', 'five-day-visit', 'engage-in-a-more-detailed-exploration-through-dire', NULL, '2019-12-12 09:36:09', NULL),
(7, 11, 'loadspeaker-m.png', '21-days-of-intensive-program', 'this-is-suitable-for-business-actors-who-aspire-to', NULL, '2019-12-12 09:36:09', NULL);

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
  `photofolio_agent_involve` int(11) DEFAULT NULL,
  `photofolio_city_count` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `photofolio`
--

INSERT INTO `photofolio` (`photofolio_id`, `service_id`, `photofolio_client`, `photofolio_client_logo`, `photofolio_client_address`, `photofolio_image`, `photofolio_start`, `photofolio_end`, `photofolio_duration`, `photofolio_collection_schedulle`, `photofolio_waste_collected`, `photofolio_audience`, `photofolio_mou`, `photofolio_agent_involve`, `photofolio_city_count`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Vida Bekasi', 'vida.jpg', 'Jl. Tirta Utama No. 1, Bumiwedari, Bantar Gebang, Kota Bekasi, Jawa Barat 1715', 'vida.jpg', NULL, NULL, '', '3 days-per-week', '112000 kgmonth', '', '2014-01-01', NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL),
(2, 1, 'Wisma Barito', 'barito.jpg', 'Jl. Letjen. S. Parman Kav. 62-63, Slipi, Jakarta Barat, DKI Jakarta 11410', 'barito.jpg', NULL, NULL, '1 year', '3 days-per-week', '6922 kgmonth', '', '2019-02-01', NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL),
(3, 2, 'The Body Shop', 'tbs.jpg', 'Sentosa Building 2 Lt. 1, Bintaro Jaya Central Business District, Kota Tangerang Selatan, Banten 15224', 'tbs.jpg', NULL, NULL, '1 year', 'every-day', '776,5 kgmonth', '', '2018-12-01', NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL),
(4, 2, 'PUPR', 'pupr.jpg', 'Jalan Pattimura No. 20,Jakarta Selatan 12110', 'pupr.jpg', NULL, NULL, '4 month', 'every-day', '26,575 kgmonth', '', '2019-09-01', NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL),
(5, 3, 'Jakarta Land', '', 'World Trade Centre - WTC 5, 8th floor, Jl. Jend. Sudirman Kav. 29 Jakarta 12920', '', NULL, NULL, '1 year', '1 days-per-week', '192 kgmonth', '', '2018-04-01', NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL),
(6, 4, 'Playfest 2019', 'playfest2019.jpg', '', 'playfest2019.jpg', '2019-08-24', '2019-08-25', '', '', '1.141 kg', '6000', NULL, NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:25', NULL),
(7, 4, 'Milo Jakarta International 10K 2018', 'milo.jpg', '', 'milo.jpg', '2018-07-15', NULL, '', '', '646,2 kg', '16000', NULL, NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:33', NULL),
(8, 5, 'The Body Shop - Bring Back Our Bottle (BBOB) Program', 'tbs.jpg', '', 'tbs.jpg', NULL, NULL, '2015 until present', '', '33447 kg', '', NULL, NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL),
(9, 5, 'By Lizzy Parra - There is a Box for That (TIBFT)', 'lizzy.jpg', '', 'lizzy.jpg', NULL, NULL, 'Agustus - November 2019', '', '', '', NULL, NULL, NULL, '2019-12-07 22:47:29', '2019-12-07 22:49:37', NULL),
(10, 6, 'Lifebuoy Ramadhan Berkah 2019', 'lifebuoy.jpg', '', 'lifebuoy.jpg', '2019-05-01', '2019-06-30', '', '', '7177 pcs', '', NULL, 227, '41 cities-across-Indonesia', '2019-12-07 22:49:09', '2019-12-07 22:49:25', NULL),
(11, 6, 'Ades #NiatMurni 2019', 'ades.jpg', '', 'ades.jpg', NULL, NULL, '31 October - Present', '', '2150 pcs', '', NULL, 130, 'Jakarta,Bandung,Semarang,Surabaya,Makassar,Medan', '2019-12-07 22:49:09', '2019-12-07 22:49:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `place_city`
--

CREATE TABLE `place_city` (
  `city_id` char(4) NOT NULL,
  `province_id` char(2) NOT NULL,
  `city` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place_city`
--

INSERT INTO `place_city` (`city_id`, `province_id`, `city`) VALUES
('1101', '11', 'kab. aceh selatan'),
('1102', '11', 'kab. aceh tenggara'),
('1103', '11', 'kab. aceh timur'),
('1104', '11', 'kab. aceh tengah'),
('1105', '11', 'kab. aceh barat'),
('1106', '11', 'kab. aceh besar'),
('1107', '11', 'kab. pidie'),
('1108', '11', 'kab. aceh utara'),
('1109', '11', 'kab. simeulue'),
('1110', '11', 'kab. aceh singkil'),
('1111', '11', 'kab. bireuen'),
('1112', '11', 'kab. aceh barat daya'),
('1113', '11', 'kab. gayo lues'),
('1114', '11', 'kab. aceh jaya'),
('1115', '11', 'kab. nagan raya'),
('1116', '11', 'kab. aceh tamiang'),
('1117', '11', 'kab. bener meriah'),
('1118', '11', 'kab. pidie jaya'),
('1171', '11', 'kota banda aceh'),
('1172', '11', 'kota sabang'),
('1173', '11', 'kota lhokseumawe'),
('1174', '11', 'kota langsa'),
('1175', '11', 'kota subulussalam'),
('1201', '12', 'kab. tapanuli tengah'),
('1202', '12', 'kab. tapanuli utara'),
('1203', '12', 'kab. tapanuli selatan'),
('1204', '12', 'kab. nias'),
('1205', '12', 'kab. langkat'),
('1206', '12', 'kab. karo'),
('1207', '12', 'kab. deli serdang'),
('1208', '12', 'kab. simalungun'),
('1209', '12', 'kab. asahan'),
('1210', '12', 'kab. labuhanbatu'),
('1211', '12', 'kab. dairi'),
('1212', '12', 'kab. toba samosir'),
('1213', '12', 'kab. mandailing natal'),
('1214', '12', 'kab. nias selatan'),
('1215', '12', 'kab. pakpak bharat'),
('1216', '12', 'kab. humbang hasundutan'),
('1217', '12', 'kab. samosir'),
('1218', '12', 'kab. serdang bedagai'),
('1219', '12', 'kab. batu bara'),
('1220', '12', 'kab. padang lawas utara'),
('1221', '12', 'kab. padang lawas'),
('1222', '12', 'kab. labuhanbatu selatan'),
('1223', '12', 'kab. labuhanbatu utara'),
('1224', '12', 'kab. nias utara'),
('1225', '12', 'kab. nias barat'),
('1271', '12', 'kota medan'),
('1272', '12', 'kota pematang siantar'),
('1273', '12', 'kota sibolga'),
('1274', '12', 'kota tanjung balai'),
('1275', '12', 'kota binjai'),
('1276', '12', 'kota tebing tinggi'),
('1277', '12', 'kota padangsidimpuan'),
('1278', '12', 'kota gunungsitoli'),
('1301', '13', 'kab. pesisir selatan'),
('1302', '13', 'kab. solok'),
('1303', '13', 'kab. sijunjung'),
('1304', '13', 'kab. tanah datar'),
('1305', '13', 'kab. padang pariaman'),
('1306', '13', 'kab. agam'),
('1307', '13', 'kab. lima puluh kota'),
('1308', '13', 'kab. pasaman'),
('1309', '13', 'kab. kepulauan mentawai'),
('1310', '13', 'kab. dharmasraya'),
('1311', '13', 'kab. solok selatan'),
('1312', '13', 'kab. pasaman barat'),
('1371', '13', 'kota padang'),
('1372', '13', 'kota solok'),
('1373', '13', 'kota sawahlunto'),
('1374', '13', 'kota padang panjang'),
('1375', '13', 'kota bukittinggi'),
('1376', '13', 'kota payakumbuh'),
('1377', '13', 'kota pariaman'),
('1401', '14', 'kab. kampar'),
('1402', '14', 'kab. indragiri hulu'),
('1403', '14', 'kab. bengkalis'),
('1404', '14', 'kab. indragiri hilir'),
('1405', '14', 'kab. pelalawan'),
('1406', '14', 'kab. rokan hulu'),
('1407', '14', 'kab. rokan hilir'),
('1408', '14', 'kab. siak'),
('1409', '14', 'kab. kuantan singingi'),
('1410', '14', 'kab. kepulauan meranti'),
('1471', '14', 'kota pekanbaru'),
('1472', '14', 'kota dumai'),
('1501', '15', 'kab. kerinci'),
('1502', '15', 'kab. merangin'),
('1503', '15', 'kab. sarolangun'),
('1504', '15', 'kab. batanghari'),
('1505', '15', 'kab. muaro jambi'),
('1506', '15', 'kab. tanjung jabung barat'),
('1507', '15', 'kab. tanjung jabung timur'),
('1508', '15', 'kab. bungo'),
('1509', '15', 'kab. tebo'),
('1571', '15', 'kota jambi'),
('1572', '15', 'kota sungai penuh'),
('1601', '16', 'kab. ogan komering ulu'),
('1602', '16', 'kab. ogan komering ilir'),
('1603', '16', 'kab. muara enim'),
('1604', '16', 'kab. lahat'),
('1605', '16', 'kab. musi rawas'),
('1606', '16', 'kab. musi banyuasin'),
('1607', '16', 'kab. banyuasin'),
('1608', '16', 'kab. ogan komering ulu timur'),
('1609', '16', 'kab. ogan komering ulu selatan'),
('1610', '16', 'kab. ogan ilir'),
('1611', '16', 'kab. empat lawang'),
('1612', '16', 'kab. penukal abab lematang ilir'),
('1613', '16', 'kab. musi rawas utara'),
('1671', '16', 'kota palembang'),
('1672', '16', 'kota pagar alam'),
('1673', '16', 'kota lubuk linggau'),
('1674', '16', 'kota prabumulih'),
('1701', '17', 'kab. bengkulu selatan'),
('1702', '17', 'kab. rejang lebong'),
('1703', '17', 'kab. bengkulu utara'),
('1704', '17', 'kab. kaur'),
('1705', '17', 'kab. seluma'),
('1706', '17', 'kab. muko muko'),
('1707', '17', 'kab. lebong'),
('1708', '17', 'kab. kepahiang'),
('1709', '17', 'kab. bengkulu tengah'),
('1771', '17', 'kota bengkulu'),
('1801', '18', 'kab. lampung selatan'),
('1802', '18', 'kab. lampung tengah'),
('1803', '18', 'kab. lampung utara'),
('1804', '18', 'kab. lampung barat'),
('1805', '18', 'kab. tulang bawang'),
('1806', '18', 'kab. tanggamus'),
('1807', '18', 'kab. lampung timur'),
('1808', '18', 'kab. way kanan'),
('1809', '18', 'kab. pesawaran'),
('1810', '18', 'kab. pringsewu'),
('1811', '18', 'kab. mesuji'),
('1812', '18', 'kab. tulang bawang barat'),
('1813', '18', 'kab. pesisir barat'),
('1871', '18', 'kota bandar lampung'),
('1872', '18', 'kota metro'),
('1901', '19', 'kab. bangka'),
('1902', '19', 'kab. belitung'),
('1903', '19', 'kab. bangka selatan'),
('1904', '19', 'kab. bangka tengah'),
('1905', '19', 'kab. bangka barat'),
('1906', '19', 'kab. belitung timur'),
('1971', '19', 'kota pangkal pinang'),
('2101', '21', 'kab. bintan'),
('2102', '21', 'kab. karimun'),
('2103', '21', 'kab. natuna'),
('2104', '21', 'kab. lingga'),
('2105', '21', 'kab. kepulauan anambas'),
('2171', '21', 'kota batam'),
('2172', '21', 'kota tanjung pinang'),
('3101', '31', 'kab. adm. kep. seribu'),
('3171', '31', 'kota adm. jakarta pusat'),
('3172', '31', 'kota adm. jakarta utara'),
('3173', '31', 'kota adm. jakarta barat'),
('3174', '31', 'kota adm. jakarta selatan'),
('3175', '31', 'kota adm. jakarta timur'),
('3201', '32', 'kab. bogor'),
('3202', '32', 'kab. sukabumi'),
('3203', '32', 'kab. cianjur'),
('3204', '32', 'kab. bandung'),
('3205', '32', 'kab. garut'),
('3206', '32', 'kab. tasikmalaya'),
('3207', '32', 'kab. ciamis'),
('3208', '32', 'kab. kuningan'),
('3209', '32', 'kab. cirebon'),
('3210', '32', 'kab. majalengka'),
('3211', '32', 'kab. sumedang'),
('3212', '32', 'kab. indramayu'),
('3213', '32', 'kab. subang'),
('3214', '32', 'kab. purwakarta'),
('3215', '32', 'kab. karawang'),
('3216', '32', 'kab. bekasi'),
('3217', '32', 'kab. bandung barat'),
('3218', '32', 'kab. pangandaran'),
('3271', '32', 'kota bogor'),
('3272', '32', 'kota sukabumi'),
('3273', '32', 'kota bandung'),
('3274', '32', 'kota cirebon'),
('3275', '32', 'kota bekasi'),
('3276', '32', 'kota depok'),
('3277', '32', 'kota cimahi'),
('3278', '32', 'kota tasikmalaya'),
('3279', '32', 'kota banjar'),
('3301', '33', 'kab. cilacap'),
('3302', '33', 'kab. banyumas'),
('3303', '33', 'kab. purbalingga'),
('3304', '33', 'kab. banjarnegara'),
('3305', '33', 'kab. kebumen'),
('3306', '33', 'kab. purworejo'),
('3307', '33', 'kab. wonosobo'),
('3308', '33', 'kab. magelang'),
('3309', '33', 'kab. boyolali'),
('3310', '33', 'kab. klaten'),
('3311', '33', 'kab. sukoharjo'),
('3312', '33', 'kab. wonogiri'),
('3313', '33', 'kab. karanganyar'),
('3314', '33', 'kab. sragen'),
('3315', '33', 'kab. grobogan'),
('3316', '33', 'kab. blora'),
('3317', '33', 'kab. rembang'),
('3318', '33', 'kab. pati'),
('3319', '33', 'kab. kudus'),
('3320', '33', 'kab. jepara'),
('3321', '33', 'kab. demak'),
('3322', '33', 'kab. semarang'),
('3323', '33', 'kab. temanggung'),
('3324', '33', 'kab. kendal'),
('3325', '33', 'kab. batang'),
('3326', '33', 'kab. pekalongan'),
('3327', '33', 'kab. pemalang'),
('3328', '33', 'kab. tegal'),
('3329', '33', 'kab. brebes'),
('3371', '33', 'kota magelang'),
('3372', '33', 'kota surakarta'),
('3373', '33', 'kota salatiga'),
('3374', '33', 'kota semarang'),
('3375', '33', 'kota pekalongan'),
('3376', '33', 'kota tegal'),
('3401', '34', 'kab. kulon progo'),
('3402', '34', 'kab. bantul'),
('3403', '34', 'kab. gunung kidul'),
('3404', '34', 'kab. sleman'),
('3471', '34', 'kota yogyakarta'),
('3501', '35', 'kab. pacitan'),
('3502', '35', 'kab. ponorogo'),
('3503', '35', 'kab. trenggalek'),
('3504', '35', 'kab. tulungagung'),
('3505', '35', 'kab. blitar'),
('3506', '35', 'kab. kediri'),
('3507', '35', 'kab. malang'),
('3508', '35', 'kab. lumajang'),
('3509', '35', 'kab. jember'),
('3510', '35', 'kab. banyuwangi'),
('3511', '35', 'kab. bondowoso'),
('3512', '35', 'kab. situbondo'),
('3513', '35', 'kab. probolinggo'),
('3514', '35', 'kab. pasuruan'),
('3515', '35', 'kab. sidoarjo'),
('3516', '35', 'kab. mojokerto'),
('3517', '35', 'kab. jombang'),
('3518', '35', 'kab. nganjuk'),
('3519', '35', 'kab. madiun'),
('3520', '35', 'kab. magetan'),
('3521', '35', 'kab. ngawi'),
('3522', '35', 'kab. bojonegoro'),
('3523', '35', 'kab. tuban'),
('3524', '35', 'kab. lamongan'),
('3525', '35', 'kab. gresik'),
('3526', '35', 'kab. bangkalan'),
('3527', '35', 'kab. sampang'),
('3528', '35', 'kab. pamekasan'),
('3529', '35', 'kab. sumenep'),
('3571', '35', 'kota kediri'),
('3572', '35', 'kota blitar'),
('3573', '35', 'kota malang'),
('3574', '35', 'kota probolinggo'),
('3575', '35', 'kota pasuruan'),
('3576', '35', 'kota mojokerto'),
('3577', '35', 'kota madiun'),
('3578', '35', 'kota surabaya'),
('3579', '35', 'kota batu'),
('3601', '36', 'kab. pandeglang'),
('3602', '36', 'kab. lebak'),
('3603', '36', 'kab. tangerang'),
('3604', '36', 'kab. serang'),
('3671', '36', 'kota tangerang'),
('3672', '36', 'kota cilegon'),
('3673', '36', 'kota serang'),
('3674', '36', 'kota tangerang selatan'),
('5101', '51', 'kab. jembrana'),
('5102', '51', 'kab. tabanan'),
('5103', '51', 'kab. badung'),
('5104', '51', 'kab. gianyar'),
('5105', '51', 'kab. klungkung'),
('5106', '51', 'kab. bangli'),
('5107', '51', 'kab. karangasem'),
('5108', '51', 'kab. buleleng'),
('5171', '51', 'kota denpasar'),
('5201', '52', 'kab. lombok barat'),
('5202', '52', 'kab. lombok tengah'),
('5203', '52', 'kab. lombok timur'),
('5204', '52', 'kab. sumbawa'),
('5205', '52', 'kab. dompu'),
('5206', '52', 'kab. bima'),
('5207', '52', 'kab. sumbawa barat'),
('5208', '52', 'kab. lombok utara'),
('5271', '52', 'kota mataram'),
('5272', '52', 'kota bima'),
('5301', '53', 'kab. kupang'),
('5302', '53', 'kab timor tengah selatan'),
('5303', '53', 'kab. timor tengah utara'),
('5304', '53', 'kab. belu'),
('5305', '53', 'kab. alor'),
('5306', '53', 'kab. flores timur'),
('5307', '53', 'kab. sikka'),
('5308', '53', 'kab. ende'),
('5309', '53', 'kab. ngada'),
('5310', '53', 'kab. manggarai'),
('5311', '53', 'kab. sumba timur'),
('5312', '53', 'kab. sumba barat'),
('5313', '53', 'kab. lembata'),
('5314', '53', 'kab. rote ndao'),
('5315', '53', 'kab. manggarai barat'),
('5316', '53', 'kab. nagekeo'),
('5317', '53', 'kab. sumba tengah'),
('5318', '53', 'kab. sumba barat daya'),
('5319', '53', 'kab. manggarai timur'),
('5320', '53', 'kab. sabu raijua'),
('5321', '53', 'kab. malaka'),
('5371', '53', 'kota kupang'),
('6101', '61', 'kab. sambas'),
('6102', '61', 'kab. mempawah'),
('6103', '61', 'kab. sanggau'),
('6104', '61', 'kab. ketapang'),
('6105', '61', 'kab. sintang'),
('6106', '61', 'kab. kapuas hulu'),
('6107', '61', 'kab. bengkayang'),
('6108', '61', 'kab. landak'),
('6109', '61', 'kab. sekadau'),
('6110', '61', 'kab. melawi'),
('6111', '61', 'kab. kayong utara'),
('6112', '61', 'kab. kubu raya'),
('6171', '61', 'kota pontianak'),
('6172', '61', 'kota singkawang'),
('6201', '62', 'kab. kotawaringin barat'),
('6202', '62', 'kab. kotawaringin timur'),
('6203', '62', 'kab. kapuas'),
('6204', '62', 'kab. barito selatan'),
('6205', '62', 'kab. barito utara'),
('6206', '62', 'kab. katingan'),
('6207', '62', 'kab. seruyan'),
('6208', '62', 'kab. sukamara'),
('6209', '62', 'kab. lamandau'),
('6210', '62', 'kab. gunung mas'),
('6211', '62', 'kab. pulang pisau'),
('6212', '62', 'kab. murung raya'),
('6213', '62', 'kab. barito timur'),
('6271', '62', 'kota palangkaraya'),
('6301', '63', 'kab. tanah laut'),
('6302', '63', 'kab. kotabaru'),
('6303', '63', 'kab. banjar'),
('6304', '63', 'kab. barito kuala'),
('6305', '63', 'kab. tapin'),
('6306', '63', 'kab. hulu sungai selatan'),
('6307', '63', 'kab. hulu sungai tengah'),
('6308', '63', 'kab. hulu sungai utara'),
('6309', '63', 'kab. tabalong'),
('6310', '63', 'kab. tanah bumbu'),
('6311', '63', 'kab. balangan'),
('6371', '63', 'kota banjarmasin'),
('6372', '63', 'kota banjarbaru'),
('6401', '64', 'kab. paser'),
('6402', '64', 'kab. kutai kartanegara'),
('6403', '64', 'kab. berau'),
('6407', '64', 'kab. kutai barat'),
('6408', '64', 'kab. kutai timur'),
('6409', '64', 'kab. penajam paser utara'),
('6411', '64', 'kab. mahakam ulu'),
('6471', '64', 'kota balikpapan'),
('6472', '64', 'kota samarinda'),
('6474', '64', 'kota bontang'),
('6501', '65', 'kab. bulungan'),
('6502', '65', 'kab. malinau'),
('6503', '65', 'kab. nunukan'),
('6504', '65', 'kab. tana tidung'),
('6571', '65', 'kota tarakan'),
('7101', '71', 'kab. bolaang mongondow'),
('7102', '71', 'kab. minahasa'),
('7103', '71', 'kab. kepulauan sangihe'),
('7104', '71', 'kab. kepulauan talaud'),
('7105', '71', 'kab. minahasa selatan'),
('7106', '71', 'kab. minahasa utara'),
('7107', '71', 'kab. minahasa tenggara'),
('7108', '71', 'kab. bolaang mongondow utara'),
('7109', '71', 'kab. kep. siau tagulandang biaro'),
('7110', '71', 'kab. bolaang mongondow timur'),
('7111', '71', 'kab. bolaang mongondow selatan'),
('7171', '71', 'kota manado'),
('7172', '71', 'kota bitung'),
('7173', '71', 'kota tomohon'),
('7174', '71', 'kota kotamobagu'),
('7201', '72', 'kab. banggai'),
('7202', '72', 'kab. poso'),
('7203', '72', 'kab. donggala'),
('7204', '72', 'kab. toli toli'),
('7205', '72', 'kab. buol'),
('7206', '72', 'kab. morowali'),
('7207', '72', 'kab. banggai kepulauan'),
('7208', '72', 'kab. parigi moutong'),
('7209', '72', 'kab. tojo una una'),
('7210', '72', 'kab. sigi'),
('7211', '72', 'kab. banggai laut'),
('7212', '72', 'kab. morowali utara'),
('7271', '72', 'kota palu'),
('7301', '73', 'kab. kepulauan selayar'),
('7302', '73', 'kab. bulukumba'),
('7303', '73', 'kab. bantaeng'),
('7304', '73', 'kab. jeneponto'),
('7305', '73', 'kab. takalar'),
('7306', '73', 'kab. gowa'),
('7307', '73', 'kab. sinjai'),
('7308', '73', 'kab. bone'),
('7309', '73', 'kab. maros'),
('7310', '73', 'kab. pangkajene kepulauan'),
('7311', '73', 'kab. barru'),
('7312', '73', 'kab. soppeng'),
('7313', '73', 'kab. wajo'),
('7314', '73', 'kab. sidenreng rappang'),
('7315', '73', 'kab. pinrang'),
('7316', '73', 'kab. enrekang'),
('7317', '73', 'kab. luwu'),
('7318', '73', 'kab. tana toraja'),
('7322', '73', 'kab. luwu utara'),
('7324', '73', 'kab. luwu timur'),
('7326', '73', 'kab. toraja utara'),
('7371', '73', 'kota makassar'),
('7372', '73', 'kota pare pare'),
('7373', '73', 'kota palopo'),
('7401', '74', 'kab. kolaka'),
('7402', '74', 'kab. konawe'),
('7403', '74', 'kab. muna'),
('7404', '74', 'kab. buton'),
('7405', '74', 'kab. konawe selatan'),
('7406', '74', 'kab. bombana'),
('7407', '74', 'kab. wakatobi'),
('7408', '74', 'kab. kolaka utara'),
('7409', '74', 'kab. konawe utara'),
('7410', '74', 'kab. buton utara'),
('7411', '74', 'kab. kolaka timur'),
('7412', '74', 'kab. konawe kepulauan'),
('7413', '74', 'kab. muna barat'),
('7414', '74', 'kab. buton tengah'),
('7415', '74', 'kab. buton selatan'),
('7471', '74', 'kota kendari'),
('7472', '74', 'kota bau bau'),
('7501', '75', 'kab. gorontalo'),
('7502', '75', 'kab. boalemo'),
('7503', '75', 'kab. bone bolango'),
('7504', '75', 'kab. pahuwato'),
('7505', '75', 'kab. gorontalo utara'),
('7571', '75', 'kota gorontalo'),
('7601', '76', 'kab. mamuju utara'),
('7602', '76', 'kab. mamuju'),
('7603', '76', 'kab. mamasa'),
('7604', '76', 'kab. polewali mandar'),
('7605', '76', 'kab. majene'),
('7606', '76', 'kab. mamuju tengah'),
('8101', '81', 'kab. maluku tengah'),
('8102', '81', 'kab. maluku tenggara'),
('8103', '81', 'kab maluku tenggara barat'),
('8104', '81', 'kab. buru'),
('8105', '81', 'kab. seram bagian timur'),
('8106', '81', 'kab. seram bagian barat'),
('8107', '81', 'kab. kepulauan aru'),
('8108', '81', 'kab. maluku barat daya'),
('8109', '81', 'kab. buru selatan'),
('8171', '81', 'kota ambon'),
('8172', '81', 'kota tual'),
('8201', '82', 'kab. halmahera barat'),
('8202', '82', 'kab. halmahera tengah'),
('8203', '82', 'kab. halmahera utara'),
('8204', '82', 'kab. halmahera selatan'),
('8205', '82', 'kab. kepulauan sula'),
('8206', '82', 'kab. halmahera timur'),
('8207', '82', 'kab. pulau morotai'),
('8208', '82', 'kab. pulau taliabu'),
('8271', '82', 'kota ternate'),
('8272', '82', 'kota tidore kepulauan'),
('9101', '91', 'kab. merauke'),
('9102', '91', 'kab. jayawijaya'),
('9103', '91', 'kab. jayapura'),
('9104', '91', 'kab. nabire'),
('9105', '91', 'kab. kepulauan yapen'),
('9106', '91', 'kab. biak numfor'),
('9107', '91', 'kab. puncak jaya'),
('9108', '91', 'kab. paniai'),
('9109', '91', 'kab. mimika'),
('9110', '91', 'kab. sarmi'),
('9111', '91', 'kab. keerom'),
('9112', '91', 'kab pegunungan bintang'),
('9113', '91', 'kab. yahukimo'),
('9114', '91', 'kab. tolikara'),
('9115', '91', 'kab. waropen'),
('9116', '91', 'kab. boven digoel'),
('9117', '91', 'kab. mappi'),
('9118', '91', 'kab. asmat'),
('9119', '91', 'kab. supiori'),
('9120', '91', 'kab. mamberamo raya'),
('9121', '91', 'kab. mamberamo tengah'),
('9122', '91', 'kab. yalimo'),
('9123', '91', 'kab. lanny jaya'),
('9124', '91', 'kab. nduga'),
('9125', '91', 'kab. puncak'),
('9126', '91', 'kab. dogiyai'),
('9127', '91', 'kab. intan jaya'),
('9128', '91', 'kab. deiyai'),
('9171', '91', 'kota jayapura'),
('9201', '92', 'kab. sorong'),
('9202', '92', 'kab. manokwari'),
('9203', '92', 'kab. fak fak'),
('9204', '92', 'kab. sorong selatan'),
('9205', '92', 'kab. raja ampat'),
('9206', '92', 'kab. teluk bintuni'),
('9207', '92', 'kab. teluk wondama'),
('9208', '92', 'kab. kaimana'),
('9209', '92', 'kab. tambrauw'),
('9210', '92', 'kab. maybrat'),
('9211', '92', 'kab. manokwari selatan'),
('9212', '92', 'kab. pegunungan arfak'),
('9271', '92', 'kota sorong');

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
(1, 'brand', '#a24495', 'icon-medical-022 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(2, 'bussiness-actor', '#a29244', 'icon-finance-024 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(3, 'company', '#a24444', 'icon-real-estate-052 u-line-icon-pro)', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(4, 'companys-csr', '#a24444', 'icon-medical-022 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(5, 'consultant', '#a29244', 'icon-finance-218 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(6, 'distributor', '#a24444', 'icon-real-estate-088 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(7, 'event', '#a24495', 'icon-hotel-restaurant-056 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(8, 'foundation', '#68a244', 'icon-real-estate-009 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(9, 'government', '#68a244', 'icon-hotel-restaurant-136 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(10, 'hotels', '#4489a2', 'icon-travel-079 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(11, 'individual', '#68a244', 'icon-real-estate-014 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(12, 'office-blocks', '#68a244', 'icon-hotel-restaurant-172 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(13, 'product', '#a24495', 'icon-education-031 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(14, 'researcher', '#a29244', 'icon-finance-002 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(15, 'residential-areahousing', '#4489a2', 'icon-real-estate-070 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(16, 'restaurants', '#a24444', 'icon-hotel-restaurant-020 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(17, 'school', '#4489a2', 'icon-education-001 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(18, 'hse-division', '#4489a2', 'icon-medical-031 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(19, 'sustainability-division', '#a24444', 'icon-hotel-restaurant-132 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(20, 'csr-division', '#4489a2', 'icon-medical-022 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(21, 'building', '#4489a2', 'icon-hotel-restaurant-172 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(22, 'personal', '#4489a2', 'icon-finance-002 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL);

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
(1, 'welcome', 'welcome', '', '2019-12-07 22:26:24', '2019-12-07 22:26:24', NULL),
(2, 'header', '', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(3, 'our-achievement', 'our-achievement', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(4, 'about', 'about', 'about', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(5, 'description', 'description', 'description', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(6, 'achievement-deliverable', '', '', '2019-12-07 22:26:24', '2019-12-08 00:45:11', NULL),
(7, 'we-offer', '', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(8, 'activities', 'activities', 'activities', '2019-12-07 22:26:24', '2019-12-10 01:07:37', NULL),
(9, 'benefit', '', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(10, 'expertise-and-experience', '', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(11, 'output-benefit', 'output-benefit', 'output-benefit', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(12, 'what-you-get', 'what-you-get', 'what-you-get', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(13, 'waste-flow', 'waste-flow', 'waste-flow', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(14, 'photofolio-highlight', 'photofolio-highlight', 'highlight', '2019-12-07 22:26:24', '2019-12-08 00:22:17', NULL),
(15, 'research-highlight', 'research-highlight', 'highlight', '2019-12-07 22:26:24', '2019-12-08 16:42:46', NULL),
(16, 'program-highlight', 'program-highlight', 'highlight', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(17, 'similar-project', 'similar-project', 'similar-project', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(18, 'our-client', 'our-client', 'client', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(19, 'recomended-for', 'recomended-for', 'recomended-for', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(20, 'our-coverage', 'our-coverage', 'coverage', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(21, 'cta', 'cta', '', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL);

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
  `service_thumbnail_image` varchar(255) DEFAULT NULL,
  `service_page_url` varchar(255) DEFAULT NULL,
  `service_join_url` varchar(255) DEFAULT NULL,
  `service_proposal_url` varchar(255) DEFAULT NULL,
  `service_portofolio_url` varchar(255) DEFAULT NULL,
  `has_page` int(1) DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_category_id`, `service_parent_id`, `service_subcategory_name`, `service_slug`, `service_name`, `service_slogan`, `service_description`, `service_about`, `service_client_name`, `service_about_image`, `service_header_image`, `service_thumbnail_image`, `service_page_url`, `service_join_url`, `service_proposal_url`, `service_portofolio_url`, `has_page`, `is_new`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '', 'responsible-waste-management', 'responsible-waste-management', 'no-more-mixed-waste', 'a-100-holistic-waste-management-for-companies-bu', 'waste-generation-is-inevitable-its-not-easy-to-r', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/responsible-waste-management-basic', '', 'https://docs.google.com/forms/d/e/1FAIpQLSdydu6Ar9mGKppAI4V2fevcWkLSpTpiSwdbpv0moPU4-_o3NQ/viewform', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(2, 1, NULL, '', 'zero-waste-to-landfill', 'zero-waste-to-landfill', 'no-more-waste-that-end-up-in-landfills', 'take-an-active-part-in-preventing-our-local-landfi', 'every-day-indonesians-are-generating-175000-tons', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/zero-waste-to-landfill', '', 'https://docs.google.com/forms/d/e/1FAIpQLSemrcuqzCk4wFUtMPFFwLkJOsYSlCjoJ8GHCDdXcM7Or5YlQg/viewform', '', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(3, 1, NULL, '', 'inorganic-waste-management', 'inorganic-waste-management', 'from-waste-to-useful-materials', 'treat-your-inorganic-waste-the-right-way-and-make-', 'waste-is-a-relative-term-that-can-be-applied-diffe', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/inorganic-waste-management', '', 'https://docs.google.com/forms/d/e/1FAIpQLScFEwvyBaouF85RuuJSQpDCmGmkIIf4Hby9uo6HrZHJVSRBvw/viewform', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(4, 1, NULL, '', 'event-waste-management', 'event-waste-management', 'great-event-planned-their-waste-management-beforeh', 'through-the-placement-of-segregated-waste-bins-in-', 'waste-generation-during-an-event-is-inevitable-in', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/event-waste-management', '', 'https://docs.google.com/forms/d/e/1FAIpQLSfgzkfJXMhuTUO4sgwpkF1PINvH7_XNBrZ84PWJD6OqghV_Eg/viewform', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(5, 2, NULL, '', 'in-store-recycling', 'in-store-recycling', 'support-the-recycling-of-your-brand-labeled-waste', 'increase-the-material-processing-of-brand-labelled', 'designed-to-increase-the-material-processing-from-', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/in-store-recycling', '', 'https://docs.google.com/forms/d/e/1FAIpQLSd8QsQoYbyTb5-8dD6r5KUFCz9BhTmBvh1c2Lla2HdlrDHFQg/viewform', '', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(6, 2, NULL, '', 'digital-epr', 'digital-epr', 'more-effective-and-sustainable-brand-labeled-waste', 'increasing-the-recycling-rate-of-your-brand-labele', 'we-provide-a-waste-recycling-system-that-is-integr', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/digital-epr', '', '', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(7, 3, NULL, '', 'solid-waste-management-research', 'solid-waste-management-research', 'research-and-planning-with-environment-in-mind', 'improve-your-solid-waste-management-by-conducting-', 'waste4change-provides-consultation-through-solid-w', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/solid-waste-management-research', '', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(8, 4, NULL, '', 'community-based-implementation', 'community-based-implementation', 'solid-effort-to-reduce-waste-generation-from-the-s', 'we-help-our-clients-to-implement-programs-that-enc', 'according-to-recent-bps-statistics-waste-manageme', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/community-based-implementation', '', 'https://docs.google.com/forms/d/e/1FAIpQLScmBjcHJhsI1OIOM-So0VQNhsbIGUJeKuovMe2QzVeYMnUU0g/viewform', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(9, 4, NULL, '', '3r-school-program', '3r-school-program', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'designed-to-encourage-the-increasing-awareness-of-', '3r-school-program-is-a-program-designed-to-encoura', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/3r-school-program', '', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', '', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(10, 5, NULL, '', 'akabis-waste-management-academy', 'akabis-waste-management-academy', 'take-a-closer-look-at-waste-management-facts-and-s', 'waste-management-education-program-that-includes-a', 'akademi-bijak-sampah-akabis-is-an-education-mode', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/akabis-waste-management-academy', '', 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', '', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(11, 5, NULL, '', 'black-soldier-fly-learning-center', 'black-soldier-fly-learning-center', 'effective-organic-waste-solution', 'receive-in-depth-information-regarding-organic-was', 'through-bsf-learning-center-you-will-receive-in-d', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/black-soldier-fly-learning-center', '', 'https://docs.google.com/forms/d/e/1FAIpQLSc7hGAdWLlFqt5qa38-7fMwA9Nsp2ev9lUk7Qi8Xwe_z3lYfg/viewform', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(12, 5, NULL, '', 'black-soldier-fly-tools-products', 'black-soldier-fly-tools-products', '', 'we-provide-black-soldier-fly-larvae-that-is-high-i', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/black-soldier-fly-tools-products', '', '', '', 0, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(13, 6, NULL, '', 'send-your-waste', 'send-your-waste', '', 'send-your-inorganic-waste-to-waste4change-and-let-', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/sendyourwaste', '', '', '', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(14, 6, NULL, '', 'dropbox', 'dropbox', '', 'deposit-your-inorganic-waste-in-waste4changes-dro', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'dropbox', '', '', '', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(15, 6, NULL, '', 'sinergi-adesniatmurni-dan-gojek', 'sinergi-adesniatmurni-dan-gojek', '', 'send-your-used-pet-bottles-of-various-sizes-and-br', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'poin/home/sinergi-ades-niat-murni-dan-gojek', '', '', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(16, 6, NULL, '', 'merchant', 'merchant', '', 'deposit-your-used-packaging-through-our-partners-t', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/merchant', '', '', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(17, 6, NULL, '', 'home-composting', 'home-composting', '', 'process-your-organic-waste-at-home-with-waste4cha', '', '', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/home-composting', '', '', '', 0, 0, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL),
(18, NULL, 7, 'SWM Research In Institutions', 'solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', 'solid-waste-management-study-at-pelabuhan-indonesi', '', '', 'based-on-the-regulation-of-ministry-of-transportat', 'PT. Pelabuhan Indonesia II (Persero)', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', '', '', '', 1, 0, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL),
(19, NULL, 7, 'SWM Research In Municipalities', 'solid-waste-management-design-for-revitalisation-at-jami-mosque-and-kampung-beting-settlements-in-pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', '', '', 'beting-village-and-jami-mosque-area-are-located-a', 'Ministry of Public Works and Housings', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/solid-waste-management-design-for-revitalisation-at-jami\'-mosque-and-kampung-beting-settlements-in-pontianak', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(20, NULL, 7, 'Value Chain Analysis', 'waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', '', '', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'PT. Deloitte Konsultan Indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(21, NULL, 7, 'Marine Debris Study', 'riverine-plastic-monitoring-project-in-jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', '', '', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'The Ocean Cleanup', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/riverine-plastic-monitoring-project-in-jakarta', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(22, NULL, 7, 'Waste To Energy Study', 'technical-due-diligence-for-itf-sunter-jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', '', '', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'Ramboll Danmark A/S', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/feasibility-study-of-pyrolysis-for-plastic-packaging-in-lombok-and-batam', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(23, NULL, 8, 'Community Assistance In Institutions', '3r-program-suralaya', '3r-program-suralaya', '', '', 'waste4change-assisted-pt-indonesia-power-up-surala', 'PT. Indonesia Power Up Suralaya', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/3r-program-suralaya', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(24, NULL, 8, 'Community Assistance In Municipalities', 'tps-3r-advisory', 'tps-3r-advisory', '', '', 'in-order-to-achieve-the-national-target-of-30-was', 'PT. Sarana Multi Daya?, PT. Multi Karadiguna Jasa?, PT. Prismaita Cipta Kreasi', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/tps-3r-advisory', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(25, NULL, 8, 'Community Assistance In Tourism Sites', 'ecoranger-in-pulau-merah-banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', '', '', 'tourism-in-indonesia-is-currently-growing-exponent', 'Greeneration Foundation, Coca-cola Foundation Indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/ecoranger-in-pulau-merah-banyuwangi', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(26, NULL, 8, 'Capacity Building', 'capacity-building-in-indonesias-frontline-territories', 'capacity-building-di-wilayah-terdepan-indonesia', '', '', 'indonesias-frontline-areas-reflect-the-life-of-th', 'PT. Idee Murni Pratama?, PT. Wijaya Karya, ?PT. Hutama Karya?, PT. Waskita Karya?, PT. Brantas Abipraya?, PT. Adhi Karya?, PT. Basuki Rahmanta Putra', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/capacity-building-in-indonesia\'s-frontline-territories', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(27, NULL, 9, '3r School Program', '3r-green-school', '3r-green-school', '', '', 'the-unilever-foundation-along-with-waste4change-or', 'Yayasan Unilever Indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/3r-green-school', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(28, NULL, 10, 'AKABIS Class For Institution', 'akabis-class-for-the-embassy-of-finland-jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', '', '', 'knowledge-about-responsible-solid-waste-management', 'Embassy of Finland in Indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-class-for-the-embassy-of-finland-jakarta', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(29, NULL, 10, 'AKABIS Class For Public', 'akabis-class-the-neglected-debris-paper-letter-and-waste-discussion', 'akabis-class-the-neglected-debris:-paper-letter', '', '', 'the-ancient-method-of-making-paper-is-not-only-rec', 'PT. Galeri Museum Macan', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-class-the-neglected-debris:-paper,-letter-and-waste-discussion', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(30, NULL, 10, 'AKABIS Xperience For Institution', 'akabis-xperience-for-world-bank-jakarta', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', '', '', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'PT. Bank DBS Indonesia', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-xperience-for-world-bank-jakarta', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(31, NULL, 10, 'AKABIS Xperience For Public', 'akabis-xperience-for-yseali', 'akabis-xperience-untuk-yseali-young-southeast-asi', '', '', 'waste4change-became-one-of-the-facilitators-for-ys', 'Divers Clean Action and hosted by US Embassy', 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-xperience-for-yseali', '', '', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);

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
(1, 1, 'collection-program', '', '2019-11-16 18:52:03', '2019-12-17 17:29:17', NULL),
(2, 1, 'extended-producer-responsibility', '', '2019-11-16 18:52:03', '2019-12-17 17:29:17', NULL),
(3, 1, 'solid-waste-management-research', '', '2019-11-16 18:52:03', '2019-12-17 17:29:17', NULL),
(4, 1, 'community-development', '', '2019-11-16 18:52:03', '2019-12-17 17:29:17', NULL),
(5, 1, 'training', '', '2019-11-16 18:52:03', '2019-12-17 17:29:17', NULL),
(6, 2, 'general', '', '2019-11-16 18:52:03', '2019-12-17 17:29:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_coverage`
--

CREATE TABLE `service_coverage` (
  `coverage_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `coverage_coordinate` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_coverage`
--

INSERT INTO `service_coverage` (`coverage_id`, `service_id`, `city_name`, `coverage_coordinate`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, 1, 'Jakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(17, 1, 'Bekasi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(18, 1, 'Tangerang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(19, 2, 'Jakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(20, 2, 'Bekasi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(21, 2, 'Tangerang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(22, 3, 'Jakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(23, 3, 'Bekasi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(24, 3, 'Tangerang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(25, 4, 'Jakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(26, 4, 'Surabaya', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(27, 4, 'Medan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(28, 4, 'Bali', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(29, 4, 'Bandung', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(30, 4, 'Semarang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(31, 5, 'Jakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(32, 5, 'Bekasi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(33, 5, 'Tangerang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(34, 6, 'Seluruh Indonesia', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(35, 7, 'Aruk', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(36, 7, 'Entikong', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(37, 7, 'Sebatik Tengah', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(38, 7, 'Wini', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(39, 7, 'Motaain', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(40, 7, 'Motamasin', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(41, 7, 'Skouw', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(42, 7, 'Bandung Barat', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(43, 7, 'Batam', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(44, 7, 'Mataram', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(45, 7, 'Bekasi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(46, 7, 'Bogor', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(47, 7, 'Jakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(48, 7, 'Purwakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(49, 7, 'Bandung', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(50, 7, 'Karawang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(51, 7, 'Surabaya', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(52, 7, 'Bima', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(53, 7, 'Baubau', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(54, 7, 'Cibinong,Makassar', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(55, 7, 'Manado', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(56, 7, 'Denpasar', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(57, 7, 'Tangerang Selatan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(58, 7, 'Kep Seribu', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(59, 7, 'Cimahi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(60, 7, 'Pontianak', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(61, 7, 'Balikpapan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(62, 7, 'Banjarmasin', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(63, 7, 'Depok', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(64, 7, 'Pulau Obi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(65, 7, 'Suralaya', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(66, 7, 'Tarimbang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(67, 8, 'Aruk', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(68, 8, 'Entikong', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(69, 8, 'Sebatik Tengah', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(70, 8, 'Wini', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(71, 8, 'Motaain', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(72, 8, 'Motamasin', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(73, 8, 'Skouw', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(74, 8, 'Banyuwangi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(75, 8, 'Jakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(76, 8, 'Jombang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(77, 8, 'Sidoarjo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(78, 8, 'Malang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(79, 8, 'Jambi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(80, 8, 'Kab Bogor', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(81, 8, 'Kab Cianjur', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(82, 8, 'Bandung Barat', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(83, 8, 'Cimahi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(84, 8, 'Sumedang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(85, 8, 'Kep Seribu', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(86, 8, 'Lombok Utara', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(87, 8, 'Madiun', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(88, 8, 'Kuningan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(89, 8, 'Solo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(90, 8, 'Suralaya', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(91, 8, 'Tasikmalaya', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(92, 8, 'Indramayu', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(93, 8, 'Kab Bekasi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(94, 8, 'Bima', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(95, 8, 'Yogyakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(96, 8, 'Kab.Lebak', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(97, 8, 'Kota Tangerang Selatan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(98, 8, 'Kota Bekasi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(99, 8, 'Kab. Magelang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(100, 8, 'Kab. Semarang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(101, 8, 'Kab. Temanggung', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(102, 8, 'Kab. Kulon Progo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(103, 8, 'Kota Pasuruan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(104, 8, 'Kab. Pasuruan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(105, 8, 'Kab. Kediri', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(106, 8, 'Kota Mojokerto', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(107, 8, 'Kab. Lamongan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(108, 8, 'Kab. Paser', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(109, 8, 'Kab. Nunukan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(110, 8, 'Kab. Bulungan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(111, 8, 'Kota Tarakan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(112, 8, 'Kota Tomohon', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(113, 8, 'Kab. Kep. Siau Tagulandang Biaro', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(114, 8, 'Kab. Boalemo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(115, 8, 'Kab. Gorontalo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(116, 8, 'Kab. Gorontalo Utara', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(117, 8, 'Kab. Enrekang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(118, 8, 'Kab. Seidenreng Rappang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(119, 8, 'Kab. Luwu Utara', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(120, 8, 'Kab. Mamuju Utara', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(121, 8, 'Kab. Majene', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(122, 8, 'Kab. Polewali Mandar (Polman)', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(123, 8, 'Kab. Kolaka Utara', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(124, 8, 'Kab. Wakatobi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(125, 8, 'Kota Kendari', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(126, 8, 'Serang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(127, 8, 'Kab. Serang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(128, 8, 'Kota Tangerang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(129, 8, 'Kab. Sukabumi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(130, 8, 'Kota Semarang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(131, 8, 'Kab. Probolinggo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(132, 8, 'Kab. Lumajang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(133, 8, 'Kota Sidoarjo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(134, 8, 'Kab. Sidoarjo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(135, 8, 'Kota Samarinda', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(136, 8, 'Kota Bontang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(137, 8, 'Kab. Bulungan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(138, 8, 'Kota Tarakan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(139, 8, 'Kota Manado', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(140, 8, 'Kota Kotamobagu', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(141, 8, 'Kab. Minahasa Utara', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(142, 8, 'Kota Gorontalo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(143, 8, 'Kab. Bone Bolango', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(144, 8, 'Kab. Pinrang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(145, 8, 'kab. Sidrap', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(146, 8, 'Kab. Sinjai', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(147, 8, 'Kab. Mamuju', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(148, 8, 'Kota Kendari', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(149, 8, 'Kab. Buton', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(150, 8, 'kab. Bau Bau', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(151, 8, 'Kota Palu', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(152, 8, 'Kab. Sigi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(153, 8, 'Kab. Tanah Bumbu', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(154, 8, 'Kab Hulu Sungai Utara', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(155, 8, 'Kab Kapuas', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(156, 8, 'kota Banjar', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(157, 8, 'Kab Balangan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(158, 8, 'Kab Sleman', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(159, 8, 'Kota Banjarmasin', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(160, 8, 'Kota Sukabumi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(161, 8, 'Kab Probolinggo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(162, 8, 'Kab Kediri', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(163, 8, 'Kab Tulungagung', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(164, 8, 'Kota Bandung', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(165, 8, 'Kab Barito Selatan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(166, 8, 'Kab Klaten', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(167, 8, 'Kota Salatiga', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(168, 8, 'Kota Magelang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(169, 8, 'Kota Tegal', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(170, 8, 'Kota Palangkaraya', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(171, 8, 'Kab. Nganjuk', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(172, 8, 'Kota Semarang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(173, 8, 'Kota Serang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(174, 8, 'Kab Lumajang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(175, 8, 'Kab Sumenep', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(176, 8, 'Kab Kotawaringin Barat', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(177, 8, 'Kota Cilegon', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(178, 8, 'Kab Katingan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(179, 9, 'Bekasi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(180, 9, 'Jakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(181, 9, 'Karawang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(182, 9, 'Bandung', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(183, 9, 'Purwakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(184, 9, 'Tangerang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(185, 9, 'Selatan', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(186, 10, 'Bekasi', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(187, 10, 'Jakarta', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(188, 10, 'Banten', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(189, 10, 'Cibitung', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(190, 10, 'Cikarang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(191, 10, 'Depok', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(192, 10, 'Malang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(193, 10, 'Suralaya', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(194, 10, 'Tangerang', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(195, 10, 'garut', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL),
(196, 11, 'Sidoarjo', NULL, '2019-12-17 16:59:36', '2019-12-17 16:59:36', NULL);

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
(1, 1, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(2, 1, 16, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(3, 1, 10, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(4, 1, 21, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(5, 1, 15, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(6, 2, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(7, 2, 16, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(8, 2, 10, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(9, 2, 21, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(10, 2, 15, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(11, 3, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(12, 3, 16, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(13, 3, 10, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(14, 3, 21, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(15, 3, 15, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(16, 4, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(17, 4, 16, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(18, 4, 10, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(19, 4, 21, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(20, 4, 15, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(21, 5, 6, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(22, 5, 1, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(23, 5, 13, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(24, 6, 6, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(25, 6, 1, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(26, 6, 13, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(27, 7, 18, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(28, 7, 19, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(29, 7, 20, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(30, 7, 9, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(31, 7, 5, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(32, 8, 18, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(33, 8, 19, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(34, 8, 20, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(35, 8, 9, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(36, 8, 5, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(37, 8, 15, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(38, 8, 12, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(39, 9, 9, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(40, 9, 5, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(41, 10, 4, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(42, 10, 8, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(43, 10, 3, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(44, 10, 17, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(45, 11, 2, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(46, 11, 14, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(47, 12, 2, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(48, 12, 14, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(49, 13, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(50, 14, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(51, 15, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(52, 16, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(53, 17, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_section`
--

CREATE TABLE `service_section` (
  `service_section_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `service_section`
--

INSERT INTO `service_section` (`service_section_id`, `service_id`, `section_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(2, 1, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(3, 1, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(4, 1, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(5, 1, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(6, 1, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(7, 1, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(8, 1, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(9, 1, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(10, 1, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(11, 1, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(12, 2, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(13, 2, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(14, 2, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(15, 2, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(16, 2, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(17, 2, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(18, 2, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(19, 2, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(20, 2, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(21, 2, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(22, 2, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(23, 3, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(24, 3, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(25, 3, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(26, 3, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(27, 3, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(28, 3, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(29, 3, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(30, 3, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(31, 3, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(32, 3, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(33, 3, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(34, 4, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(35, 4, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(36, 4, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(37, 4, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(38, 4, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(39, 4, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(40, 4, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(41, 4, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(42, 4, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(43, 4, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(44, 4, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(45, 5, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(46, 5, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(47, 5, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(48, 5, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(49, 5, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(50, 5, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(51, 5, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(52, 5, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(53, 5, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(54, 5, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(55, 5, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(56, 6, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(57, 6, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(58, 6, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(59, 6, 9, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(60, 6, 12, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(61, 6, 13, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(62, 6, 14, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(63, 6, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(64, 6, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(65, 6, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(66, 6, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(67, 7, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(68, 7, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(69, 7, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(70, 7, 10, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(71, 7, 15, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(72, 7, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(73, 7, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(74, 7, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(75, 7, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(76, 8, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(77, 8, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(78, 8, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(79, 8, 7, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(80, 8, 16, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(81, 8, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(82, 8, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(83, 8, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(84, 8, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(85, 9, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(86, 9, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(87, 9, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(88, 9, 8, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(89, 9, 11, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(90, 9, 16, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(91, 9, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(92, 9, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(93, 9, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(94, 9, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(95, 10, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(96, 10, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(97, 10, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(98, 10, 7, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(100, 10, 16, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(101, 10, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(102, 10, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(103, 10, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(104, 10, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(105, 11, 1, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(106, 11, 3, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(107, 11, 4, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(108, 11, 7, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(110, 11, 16, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(111, 11, 18, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(112, 11, 19, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(113, 11, 20, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(114, 11, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(115, 18, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(116, 18, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(117, 18, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(118, 18, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(119, 18, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(120, 19, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(121, 19, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(122, 19, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(123, 19, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(124, 19, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(125, 20, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(126, 20, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(127, 20, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(128, 20, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(129, 20, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(130, 21, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(131, 21, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(132, 21, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(133, 21, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(134, 21, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(135, 22, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(136, 22, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(137, 22, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(138, 22, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(139, 22, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(140, 23, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(141, 23, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(142, 23, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(143, 23, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(144, 23, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(145, 24, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(146, 24, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(147, 24, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(148, 24, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(149, 24, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(150, 25, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(151, 25, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(152, 25, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(153, 25, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(154, 25, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(155, 26, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(156, 26, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(157, 26, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(158, 26, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(159, 26, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(160, 27, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(161, 27, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(162, 27, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(163, 27, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(164, 28, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(165, 28, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(166, 28, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(167, 28, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(168, 28, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(169, 29, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(170, 29, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(171, 29, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(172, 29, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(173, 29, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(174, 30, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(175, 30, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(176, 30, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(177, 30, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(178, 30, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(179, 31, 2, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(180, 31, 5, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(181, 31, 6, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(182, 31, 17, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(183, 31, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(184, 31, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL);

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
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

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
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`offer_id`);

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
-- Indexes for table `place_city`
--
ALTER TABLE `place_city`
  ADD PRIMARY KEY (`city_id`);

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
-- Indexes for table `service_coverage`
--
ALTER TABLE `service_coverage`
  ADD PRIMARY KEY (`coverage_id`);

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
  MODIFY `achievement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `benefit`
--
ALTER TABLE `benefit`
  MODIFY `benefit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `dictionary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1871;

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
  MODIFY `facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `flow`
--
ALTER TABLE `flow`
  MODIFY `flow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `recomendation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `service_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_coverage`
--
ALTER TABLE `service_coverage`
  MODIFY `coverage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `service_recomendation`
--
ALTER TABLE `service_recomendation`
  MODIFY `service_recomendation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
