-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2020 at 09:55 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w4c_official_demo`
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
(1, 1, 'clientscompanies', '6.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(2, 1, 'waste-recycled-kg', '133823.00', '', '2019-12-24 11:05:42', '2019-12-24 12:20:26', NULL),
(3, 1, 'cities-available', '7.00', '', '2019-12-24 11:05:42', '2020-01-09 00:07:59', NULL),
(4, 2, 'clients', '47.00', '', '2019-12-24 11:05:42', '2020-01-04 10:53:58', NULL),
(5, 2, 'residual-waste-that-doesnt-end-up-in-the-landfill', '282288.23', '', '2019-12-24 11:05:42', '2020-01-04 10:54:33', NULL),
(6, 2, 'cities-available', '3', '', '2019-12-24 11:05:42', '2020-01-09 00:08:03', NULL),
(7, 3, 'clientscompanies', '5.00', '', '2019-12-24 11:05:42', '2020-01-03 14:49:48', NULL),
(8, 3, 'waste-recycled-kg', '1342.70', '', '2019-12-24 11:05:42', '2020-01-03 14:50:01', NULL),
(9, 3, 'cities-available', '7.00', '', '2019-12-24 11:05:42', '2020-01-09 00:08:06', NULL),
(10, 4, 'events', '27.00', '', '2019-12-24 11:05:42', '2019-12-24 20:59:21', NULL),
(11, 4, 'waste-recycled-kg', '1722.40', '', '2019-12-24 11:05:42', '2019-12-24 20:59:21', NULL),
(12, 4, 'cities-available', '10.00', '', '2019-12-24 11:05:42', '2020-01-09 00:08:08', NULL),
(13, 5, 'clientscompanies', '12.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(14, 5, 'residual-waste-that-doesnt-end-up-in-the-landfill', '6570.35', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(15, 5, 'cities-available', '7.00', '', '2019-12-24 11:05:42', '2020-01-09 00:08:10', NULL),
(16, 6, 'clientscompanies', '2.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(17, 6, 'residual-waste-that-doesnt-end-up-in-the-landfill', '8827.00', '', '2019-12-24 11:05:42', '2020-01-04 12:40:12', NULL),
(18, 6, 'provinces-available', '34', '', '2019-12-24 11:05:42', '2020-01-04 12:40:12', NULL),
(19, 7, 'clients', '35.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(20, 7, 'project-finished', '44', '', '2019-12-24 11:05:42', '2020-01-25 07:52:34', NULL),
(21, 7, 'cities-regencies', '37.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(22, 8, 'clients', '25.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(23, 8, 'participant', '339714.00', '', '2019-12-24 11:05:42', '2020-01-22 16:13:22', NULL),
(24, 8, 'cities-regencies', '111.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(25, 9, 'clients', '13.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(26, 9, 'participant', '19150.00', '', '2019-12-24 11:05:42', '2020-01-22 16:13:20', NULL),
(27, 9, 'cities-available', '10', '', '2019-12-24 11:05:42', '2020-01-20 17:31:18', NULL),
(28, 10, 'clients', '53.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(29, 10, 'reciever', '4271', '', '2019-12-24 11:05:42', '2020-01-22 23:43:16', NULL),
(30, 10, 'cities-available', '14', '', '2019-12-24 11:05:42', '2020-01-22 23:43:10', NULL),
(31, 18, 'analysis-and-recommendations-to-implement-a-respon', '', 'analysis-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(32, 18, 'identification-of-waste-management-method-that-is-', '', 'wastebin-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(33, 18, 'written-report-and-presentation-of-3r-based-waste-', '', 'report-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(34, 19, 'data-collection-activities-were-done-through-inter', '', 'research-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(35, 19, 'analyzed-the-current-management-system-by-identify', '', 'analysis-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(36, 20, 'key-players-and-stakeholders-mapping', '', 'mark-location-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(37, 20, 'comprehensive-waste-flow-analysis-of-jakarta-and-s', '', 'analysis-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(38, 20, 'identification-of-recycling-rate-in-jakarta-and-su', '', 'report-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(39, 20, 'solid-waste-management-swot-analysis-of-jakarta-an', '', 'flow-m.png', '2019-12-24 11:05:42', '2020-01-15 00:11:43', NULL),
(40, 21, 'retrieved-better-understanding-on-the-total-amount', '', 'idea-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(41, 21, 'published-paper-regarding-the-project-can-be-found', '', 'report-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(42, 22, 'solid-waste-characteristics-and-solid-waste-existi', '', 'mark-location-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(43, 22, 'solid-waste-supply-plan-review-and-its-possible-di', '', 'analysis-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(44, 22, 'suitability-study-of-the-current-site-for-waste-to', '', 'distribution-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(45, 23, 'increased-awareness-and-action-of-employees-toward', '', 'idea-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(46, 23, 'increased-segregation-rate', '', 'chart-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(47, 23, 'decreased-residual-waste-generation', '', 'residue-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(48, 23, 'increased-economic-incentives-from-composting', '', 'economy-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(49, 24, 'reports-containing-progress-activities-lessons-le', '', 'video-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(50, 24, 'proceedings-of-workshop-consignment-proceedings', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(51, 24, 'video-and-audio-visual-documentation-of-monitoring', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(52, 25, 'the-formation-of-eco-ranger:-a-group-of-local-peop', '', 'wastebin-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(53, 25, 'technical-assistance-capacity-building-connectin', '', 'people-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(54, 26, 'waste-management-education-to-local-communities-an', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(55, 26, 'technical-guideline-of-organic-and-inorganic-waste', '', 'wastebin-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(56, 26, 'formation-of-organization-and-follow-up-work-plan', '', 'flow-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(57, 27, 'forming-the-task-force-which-in-charge-of-increasi', '', 'people-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(58, 27, 'organizing-education-events-which-are-akabis-clas', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(59, 27, 'each-school-was-expected-to-be-able-to-carry-on-th', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(60, 28, 'sharing-session:-why-we-need-to-be-responsible-for', '', 'chat-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(61, 28, 'presentation-session:-how-can-we-conduct-responsib', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(62, 28, 'interactive-games', '', 'games-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(63, 29, 'open-discussion-with-fellow-panels-and-audiences-o', '', 'analysis-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(64, 29, 'the-importance-of-responsible-solid-waste-manageme', '', 'wastebin-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(65, 29, 'how-to-handle-and-treat-waste-responsibly-and-sust', '', 'chart-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(66, 29, 'how-to-mitigate-adverse-effects-of-waste-for-human', '', 'chat-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(67, 30, 'shock-moment:-all-participants-are-invited-to-see-', '', 'landfill-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(68, 30, 'o-moment:-responsible-waste-management-presentati', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(69, 30, 'facility-tour:-visiting-w4cs-facilities-includin', '', 'tour-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(70, 31, 'shock-moment:-all-participants-are-invited-to-see-', '', 'landfill-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(71, 31, 'o-moment:-responsible-waste-management-presentati', '', 'loadspeaker-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(72, 31, 'facility-tour:-visiting-w4cs-facilities-includin', '', 'tour-m.png', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(73, 11, 'participant', '135', '', '2020-01-14 23:39:55', '2020-01-23 00:02:13', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

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
(2, 1, 'general', 'adding-sustainable-and-environmental-friendly-valu', '', '2019-12-08 00:58:50', '2019-12-31 10:44:42', NULL),
(3, 1, 'general', 'reduce-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-31 10:44:38', NULL),
(4, 1, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', '', '2019-12-08 00:58:50', '2019-12-31 10:44:49', NULL),
(5, 1, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(6, 2, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(7, 2, 'general', 'zerowastetolandfill', NULL, '2019-12-08 00:58:50', '2020-01-21 10:27:02', NULL),
(8, 2, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(9, 2, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(10, 2, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2020-02-03 21:20:27', '2019-12-08 00:58:50'),
(11, 3, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(12, 3, 'general', 'reduce-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(13, 3, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(14, 3, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(15, 3, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(16, 4, 'general', '100-holistic-approach-on-waste-management', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(17, 4, 'general', 'reduce-waste-to-landfill', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(18, 4, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(19, 4, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(20, 4, 'general', 'increasing-audiences-awareness-of-waste-issues', NULL, '2019-12-08 00:58:50', '2019-12-30 14:45:41', NULL),
(21, 5, 'general', 'zerowastetolandfill', NULL, '2019-12-08 00:58:50', '2020-01-21 10:27:08', NULL),
(22, 5, 'general', 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(23, 5, 'general', 'waste-journey-report', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(24, 5, 'general', 'help-to-increase-recycling-rate', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(25, 6, 'general', 'zerowastetolandfill', NULL, '2019-12-08 00:58:50', '2020-01-21 10:27:09', NULL),
(26, 6, 'general', 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(27, 6, 'general', 'wider-reach', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(28, 6, 'general', 'meet-the-needs-of-your-brand-customers-in-more-loc', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(29, 6, 'general', 'waste-journey-report', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(30, 6, 'general', 'help-to-increase-recycling-rate', NULL, '2019-12-08 00:58:50', '2019-12-08 00:58:50', NULL),
(31, 9, 'for-clients', 'the-real-action-in-encouraging-the-implementation-', NULL, '2019-12-08 00:58:50', '2020-01-17 14:35:39', NULL),
(32, 9, 'for-clients', 'supporting-the-green-concept-of-our-clients-brand', NULL, '2019-12-08 00:58:50', '2020-01-17 14:35:40', NULL),
(33, 9, 'for-schools', 'increased-knowledge-and-capacity-of-students-and-t', NULL, '2019-12-08 00:58:50', '2020-01-17 14:35:41', NULL),
(34, 9, 'for-schools', 'schools-can-contribute-to-supporting-and-executing', NULL, '2019-12-08 00:58:50', '2020-01-17 14:35:42', NULL),
(35, 9, 'for-schools', 'available-for-every-school-located-in-indonesia-w', NULL, '2019-12-08 00:58:50', '2020-01-24 09:02:24', NULL),
(36, 9, 'for-schools', 'for-schools-located-in-jakarta-we-help-to-support', NULL, '2019-12-08 00:58:50', '2020-01-17 14:35:43', NULL);

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
(1, 1, 'Binus School Bekasi', 'Binus-School.jpg', '2019-12-10 02:47:07', '2020-01-03 13:59:09', NULL),
(2, 1, 'Javara', 'Javara.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(3, 1, 'Mang Kabayan', 'Mang-Kabayan.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(4, 1, 'Sekolah Seniman Pangan', 'Seniman-Pangan.jpg', '2019-12-10 02:47:07', '2020-01-03 13:59:28', NULL),
(5, 1, 'Wisma Barito', 'Wisma-Barito.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(6, 2, 'Danone', 'Danone.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(7, 2, 'DBS', 'DBS.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(8, 2, 'Decathlon', 'Decathlon.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(9, 2, 'Gojek', 'Gojek.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(10, 2, 'IKEA', 'IKEA.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(11, 2, 'PT L\'Oreal Indonesia', 'L-Oreal.jpg', '2019-12-10 02:47:07', '2020-01-23 17:12:01', NULL),
(12, 2, 'Potato Head Family Jakarta', 'Potato-Head.jpg', '2019-12-10 02:47:07', '2020-01-03 14:14:08', NULL),
(13, 2, 'Kementerian PUPR', 'PUPR.jpg', '2019-12-10 02:47:07', '2020-01-03 14:15:31', NULL),
(14, 2, 'RSPO', 'RSPO.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(15, 2, 'Ruang Selatan', 'Ruang-Selatan.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(16, 2, 'Sudirman 7.8', 'Sudirman-7.8.jpg', '2019-12-10 02:47:07', '2020-01-03 14:19:31', NULL),
(17, 2, 'The Body Shop ', 'The-Body-Shop.jpg', '2019-12-10 02:47:07', '2020-01-03 14:15:43', NULL),
(18, 2, 'World Bank', 'World-Bank.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(19, 2, 'Young Living', 'Young-Living.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(20, 3, 'Climate Policy Initiative', 'Climate-Policy-Initiative.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(21, 3, 'Jakarta Land', 'Jakarta-Land.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(22, 3, 'Kemenko Maritim', 'Kemenko-Maritim.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(23, 3, 'The Vida Kebon Jeruk', 'The-Vida-Kebon-Jeruk.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(24, 3, 'Think Web', 'Think-Web.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(25, 4, 'CIMB Niaga', 'Cimb-Niaga.jpg', '2019-12-10 02:47:07', '2020-01-03 15:56:30', NULL),
(26, 4, 'Ismaya Group', 'Ismaya-Group.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(27, 4, 'Jakarta Fashion Week', 'Jakarta-Fashion-Week.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(28, 4, 'Jakpro', 'Jakpro.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(29, 4, 'Narasi TV', 'Narasi-TV.jpg', '2019-12-10 02:47:07', '2019-12-31 16:54:22', NULL),
(30, 4, 'PT Nestle Indonesia', 'Nestle.jpg', '2019-12-10 02:47:07', '2020-01-23 17:09:32', NULL),
(31, 4, 'Pertamina PHE WMO', 'Pertamina.jpg', '2019-12-10 02:47:07', '2020-01-03 15:55:57', NULL),
(32, 4, 'The Body Shop', 'The-Body-Shop.jpg', '2019-12-10 02:47:07', '2019-12-31 16:54:20', NULL),
(33, 4, 'Wardah', 'Wardah.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(34, 5, 'By Lizzie Parra', 'By-Lizzie-Parra.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(35, 5, 'Djournal', 'Djournal.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(36, 5, 'Gojek', 'Gojek.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(37, 5, 'Love Beauty Planet Indonesia', 'Love-Beauty-Planet.jpg', '2019-12-10 02:47:07', '2020-01-03 16:42:41', NULL),
(38, 5, 'Nescafe Dolce Gusto', 'Nescafe-Dolce-Gusto.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(39, 5, 'Potato Head Family', 'Potato-Head.jpg', '2019-12-10 02:47:07', '2020-01-03 16:43:34', NULL),
(40, 5, 'Tetra Pak', 'Tetrapak.jpg', '2019-12-10 02:47:07', '2020-01-03 16:38:51', NULL),
(41, 5, 'The Body Shop', 'The-Body-Shop.jpg', '2019-12-10 02:47:07', '2019-12-31 16:54:29', NULL),
(42, 5, 'Trava Gannah', 'Trava.jpg', '2019-12-10 02:47:07', '2020-01-03 16:41:31', NULL),
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
(55, 7, 'Kementerian PUPR', 'PUPR.jpg', '2019-12-10 02:47:07', '2020-01-03 14:15:34', NULL),
(56, 7, 'World Bank', 'World-Bank.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(57, 8, 'PT Indonesia Power Suralaya', 'Indonesia-Power.jpg', '2019-12-10 02:47:07', '2020-01-23 17:09:20', NULL),
(58, 8, 'AHT Group AG', 'AHT-Group.jpg', '2019-12-10 02:47:07', '2020-01-23 17:08:49', NULL),
(59, 8, 'PT Bank Negara Indonesia', 'BNI.jpg', '2019-12-10 02:47:07', '2020-01-23 17:09:04', NULL),
(60, 8, 'GA Circular', 'GA-Circular.jpg', '2019-12-10 02:47:07', '2020-01-23 17:10:36', '2019-12-10 02:47:07'),
(61, 8, 'PT Nestle Indonesia', 'PT-Nestle-Indonesia.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(62, 8, 'Kementerian PUPR', 'PUPR.jpg', '2019-12-10 02:47:07', '2020-01-03 14:15:36', NULL),
(63, 9, 'DBS', 'DBS.jpg', '2019-12-10 02:47:07', '2019-12-10 02:47:07', NULL),
(64, 9, 'Tetra Pak', 'Tetrapak.jpg', '2019-12-10 02:47:07', '2020-01-03 16:38:56', NULL),
(65, 9, 'PT Unilever Indonesia', 'Yayasan-Unilever.jpg', '2019-12-10 02:47:07', '2020-01-23 17:11:14', NULL),
(66, 10, 'PT Sharp Electronics Indonesia', 'Sharp.jpg', '2019-12-10 02:47:07', '2020-01-23 17:10:46', NULL),
(67, 10, 'PT Unilever Indonesia', 'Yayasan-Unilever.jpg', '2019-12-10 02:47:07', '2020-01-23 17:11:14', NULL),
(68, 1, 'Vida Bekasi', 'Vida-Bekasi.jpg', '2020-01-04 13:58:28', '2020-01-04 14:00:34', NULL),
(69, 1, 'Institute Francais Indonesia', 'Institute-Francais-Indonesia.jpg', '2020-01-04 14:14:46', '2020-01-22 12:56:14', '2020-01-04 14:14:46'),
(70, 2, 'Institute Francais Indonesia', 'IFI.jpg', '2020-01-11 00:37:13', '2020-01-11 00:37:13', NULL),
(71, 7, 'PT. Pelabuhan Indinesia', 'PT.-Pelabuhan-Indonesia-II.jpg', '2020-01-12 23:41:20', '2020-01-12 23:41:20', NULL),
(72, 11, 'Eawag', 'eawag.jpg', '2020-01-17 12:58:23', '2020-01-17 12:58:23', NULL),
(73, 11, 'Kalbe', 'kalbe.jpg', '2020-01-17 12:58:28', '2020-01-17 12:59:12', NULL),
(74, 11, 'Milano', 'milano.jpg', '2020-01-17 12:58:30', '2020-01-17 12:59:12', NULL),
(75, 11, 'Puspa Agro', 'puspa-argo.jpg', '2020-01-17 12:58:33', '2020-01-17 23:02:23', NULL),
(76, 11, 'USAID', 'USAID.jpg', '2020-01-17 12:58:37', '2020-01-17 12:59:27', NULL),
(77, 9, 'PT. NEC Idonesia', 'NEC.jpg', '2020-01-20 09:30:00', '2020-01-20 09:30:24', NULL),
(78, 9, 'Yayasan Bangun Kecerdasan Bangsa', 'ybkb.jpg', '2020-01-20 09:30:14', '2020-01-20 09:31:15', NULL),
(79, 10, 'PT L\'Oreal Indonesia', 'L\'Oreal.jpg', '2020-01-22 23:57:00', '2020-01-23 17:12:01', NULL),
(80, 10, 'The Body Shop', 'The-Body-Shop.jpg', '2020-01-22 23:57:14', '2020-01-22 23:59:30', NULL);

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
(653, 'en', 'Lorem Ipsum', 'short-lorem', 'global'),
(654, 'id', 'Lorem Ipsum', 'short-lorem', 'global'),
(655, 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl', 'medium-lorem', 'global'),
(656, 'id', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl', 'medium-lorem', 'global'),
(657, 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl. Ut viverra orci volutpat dolor dignissim, eget pretium justo consequat. Maecenas at mauris vitae eros elementum rutrum id in orci.', 'long-lorem', 'global'),
(658, 'id', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at tristique nisl. Ut viverra orci volutpat dolor dignissim, eget pretium justo consequat. Maecenas at mauris vitae eros elementum rutrum id in orci.', 'long-lorem', 'global'),
(659, 'en', 'Services', 'services', 'global'),
(660, 'id', 'Servis', 'services', 'global'),
(661, 'en', 'For company', 'for-company', 'home'),
(662, 'id', 'Perusahaan', 'for-company', 'home'),
(663, 'en', 'For Individual', 'for-individuals', 'home'),
(664, 'id', 'Individu', 'for-individuals', 'home'),
(665, 'en', 'About', 'about', 'global'),
(666, 'id', 'Tentang', 'about', 'global'),
(667, 'en', 'About Us', 'about-us', 'global'),
(668, 'id', 'Tentang Kami', 'about-us', 'global'),
(669, 'en', 'Carrer', 'carrer', 'global'),
(670, 'id', 'Karir', 'carrer', 'global'),
(671, 'en', 'Blog', 'blog', 'global'),
(672, 'id', 'Blog', 'blog', 'global'),
(673, 'en', 'Contact', 'contact', 'global'),
(674, 'id', 'Kontak', 'contact', 'global'),
(675, 'en', 'Language', 'language', 'global'),
(676, 'id', 'Bahasa', 'language', 'global'),
(677, 'en', 'It\'s time to', 'it-is-time-to-responsibly', 'home'),
(678, 'id', 'Waktunya Mengelola Sampah', 'it-is-time-to-responsibly', 'home'),
(679, 'en', 'Manage Your Waste', 'manage-your-waste', 'home'),
(680, 'id', '', 'manage-your-waste', 'home'),
(681, 'en', 'with Waste4Change', 'with-waste4change', 'home'),
(682, 'id', 'bersama Waste4Change', 'with-waste4change', 'home'),
(683, 'en', 'Available services in your city', 'available-services-for-your-location', 'global'),
(684, 'id', 'Layanan yang tersedia di kota Anda', 'available-services-for-your-location', 'global'),
(685, 'en', 'Enter Your Location', 'enter-your-location', 'global'),
(686, 'id', 'Masukkan Lokasi Anda', 'enter-your-location', 'global'),
(687, 'en', 'Search', 'search', 'global'),
(688, 'id', 'Cari', 'search', 'global'),
(689, 'en', 'Cannot found the solution you are looking for?', 'cant-found-the-solution-you-are-looking-for?', 'global'),
(690, 'id', 'Tidak Dapat Menemukan Solusi Yang Anda Cari?', 'cant-found-the-solution-you-are-looking-for?', 'global'),
(691, 'en', 'All Services', 'all-services', 'global'),
(692, 'id', 'Semua Layanan', 'all-services', 'global'),
(693, 'en', 'Learn more', 'learn-more', 'global'),
(694, 'id', 'Pelajari Lebih Lanjut', 'learn-more', 'global'),
(695, 'en', 'Talk To Our Expert', 'talk-to-our-expert', 'global'),
(696, 'id', 'Hubungi Kami', 'talk-to-our-expert', 'global'),
(697, 'en', 'Our Achievement', 'our-achievement', 'global'),
(698, 'id', 'Pencapaian Kami', 'our-achievement', 'global'),
(699, 'en', 'We create an ecosystem of responsible waste management in Indonesia', 'we-create-an-ecosystem-of-responsible-waste-manage', 'home'),
(700, 'id', 'Kami menciptakan ekosistem pengelolaan sampah yang bertanggung jawab di Indonesia', 'we-create-an-ecosystem-of-responsible-waste-manage', 'home'),
(701, 'en', 'Clients', 'clients', 'global'),
(702, 'id', 'Klien', 'clients', 'global'),
(703, 'en', 'Projects', 'projects', 'global'),
(704, 'id', 'Proyek', 'projects', 'global'),
(705, 'en', 'Partners', 'partners', 'home'),
(706, 'id', 'Partner', 'partners', 'home'),
(707, 'en', 'Waste Recycled (kg)', 'waste-recycled', 'home'),
(708, 'id', 'Sampah Terdaur Ulang (kg)', 'waste-recycled', 'home'),
(709, 'en', 'More About Us', 'more-about-us', 'global'),
(710, 'id', 'Tentang Kami', 'more-about-us', 'global'),
(711, 'en', 'Client And Partner', 'client-and-partner', 'global'),
(712, 'id', 'Klien Dan Partner', 'client-and-partner', 'global'),
(713, 'en', 'Testimonial', 'testimonial', 'global'),
(714, 'id', 'Testimoni', 'testimonial', 'global'),
(715, 'en', 'The report from Waste4Change has really helped us to improve our communication and education system towards our employees', 'the-report-from-waste4change-has-really-helped-us-', 'home-testimonial'),
(716, 'id', 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan', 'the-report-from-waste4change-has-really-helped-us-', 'home-testimonial'),
(717, 'en', 'Waste4Change is more than just a partner, but also a learning buddy. They taught us how to make internal procedures', 'waste4change-is-more-than-just-a-partner-but-also', 'home-testimonial'),
(718, 'id', 'W4C lebih dari sekedar company partner tapi seperti teman belajar. Mereka mengajari kami cara membuat prosedur internal', 'waste4change-is-more-than-just-a-partner-but-also', 'home-testimonial'),
(719, 'en', 'I am very thrilled to be working with Waste4Change because they communicate openly and respond promptly', 'i-am-very-thrilled-to-be-working-with-waste4change', 'home-testimonial'),
(720, 'id', 'Saya senang sekali bisa bekerjasama dengan Waste4Change karena punya komunikasi yang terbuka dan cepat menanggap', 'i-am-very-thrilled-to-be-working-with-waste4change', 'home-testimonial'),
(721, 'en', 'Blog And News', 'blog-and-news', 'home'),
(722, 'id', 'Blog Dan Berita', 'blog-and-news', 'home'),
(723, 'en', 'Read More', 'read-more', 'home'),
(724, 'id', 'Selengkapnya', 'read-more', 'home'),
(725, 'en', 'Find more content about responsible waste management and green lifestyle in our Blog & News page', 'find-more-content-about-responsible-waste-manageme', 'global'),
(726, 'id', 'Temukan lebih banyak konten mengenai pengelolaan sampah yang bertanggung jawab dan gaya hidup ramah lingkungan di halaman Blog dan Berita kami', 'find-more-content-about-responsible-waste-manageme', 'global'),
(727, 'en', 'More Article', 'more-article', 'global'),
(728, 'id', 'Lihat Artikel Lainnya', 'more-article', 'global'),
(729, 'en', 'Spread The Good News', 'spread-the-good-news', 'global'),
(730, 'id', 'Sebarkan Berita Baik Ini', 'spread-the-good-news', 'global'),
(731, 'en', 'Share on your social media & create impact for your environment', 'share-on-your-social-media-create-impact-for-you', 'global'),
(732, 'id', 'Bagikan kami di media sosial Anda dan ciptakan dampak yang positif di lingkungan sekitar', 'share-on-your-social-media-create-impact-for-you', 'global'),
(733, 'en', 'Ready to start your <strong>Responsible Waste Management</strong> ?', 'ready-to-start-your-<strong>responsible-waste-mana', 'global'),
(734, 'id', 'Siap memulai <strong>Pengelolaan Sampah yang Bertanggung Jawab</strong> ?', 'ready-to-start-your-<strong>responsible-waste-mana', 'global'),
(735, 'en', 'Get Started', 'get-started', 'global'),
(736, 'id', 'Mulai', 'get-started', 'global'),
(737, 'en', 'Career', 'career', 'global'),
(738, 'id', 'Karier', 'career', 'global'),
(739, 'en', 'Internship', 'internship', 'global'),
(740, 'id', 'Magang', 'internship', 'global'),
(741, 'en', 'Connect with Us', 'connect-with-us', 'global'),
(742, 'id', 'Hubungi Kami', 'connect-with-us', 'global'),
(743, 'en', 'Choose the right solution for you', 'choose-the-right-solution', 'all-service'),
(744, 'id', 'Pilih Jasa yang Tepat untuk Solusi Permasalahan Sampah Anda', 'choose-the-right-solution', 'all-service'),
(745, 'en', 'for your business', 'for-your-business', 'all-service'),
(746, 'id', 'permasalahan sampah Anda', 'for-your-business', 'all-service'),
(747, 'en', 'ALL', 'all', 'global'),
(748, 'id', 'Semua', 'all', 'global'),
(749, 'en', 'Get Proposal', 'get-proposal', 'global'),
(750, 'id', 'Dapatkan Proposal', 'get-proposal', 'global'),
(751, 'en', 'Home', 'home', 'global'),
(752, 'id', 'Beranda', 'home', 'global'),
(753, 'en', 'For this type of service, Waste4Change provides the facilities as follows:', 'for-this-type-of-service-waste4change-provides-th', 'global'),
(754, 'id', 'Untuk servis ini, Waste4Change menyediakan fasilitas sebagai berikut', 'for-this-type-of-service-waste4change-provides-th', 'global'),
(755, 'en', 'Average of waste collected', 'average-of-waste-collected', 'project_highlight'),
(756, 'id', 'Rerata Volume Sampah yang Diangkut', 'average-of-waste-collected', 'project_highlight'),
(757, 'en', 'MoU Signed', 'mou-signed', 'project_highlight'),
(758, 'id', 'Penandatanganan MoU', 'mou-signed', 'project_highlight'),
(759, 'en', 'Collection Schedule', 'collection-schedule', 'project_highlight'),
(760, 'id', 'Jadwal Pengangkutan', 'collection-schedule', 'project_highlight'),
(761, 'en', 'kg/ month', 'kgmonth', 'project_highlight'),
(762, 'id', 'kg/ bulan', 'kgmonth', 'project_highlight'),
(763, 'en', 'kg', 'kg', 'global'),
(764, 'id', 'kg', 'kg', 'global'),
(765, 'en', 'pcs', 'pcs', 'global'),
(766, 'id', 'pcs', 'pcs', 'global'),
(767, 'en', 'days per week', 'days-per-week', 'project_highlight'),
(768, 'id', 'Hari Per Minggu', 'days-per-week', 'project_highlight'),
(769, 'en', 'year', 'year', 'global'),
(770, 'id', 'Tahun', 'year', 'global'),
(771, 'en', 'month', 'month', 'global'),
(772, 'id', 'Bulan', 'month', 'global'),
(773, 'en', 'day', 'day', 'global'),
(774, 'id', 'Hari', 'day', 'global'),
(775, 'en', 'Every day', 'every-day', 'project_highlight'),
(776, 'id', 'Setiap hari', 'every-day', 'project_highlight'),
(777, 'en', 'Start your', 'start-your', 'service_cta'),
(778, 'id', 'Mulai', 'start-your', 'service_cta'),
(779, 'en', 'now!', 'now!', 'service_cta'),
(780, 'id', 'Anda sekarang!', 'now!', 'service_cta'),
(781, 'en', 'ENROLL THE CLASS', 'enroll-the-class', 'service_cta'),
(782, 'id', 'MULAI KELAS', 'enroll-the-class', 'service_cta'),
(783, 'en', 'Welcome', 'welcome', 'section'),
(784, 'id', 'Selamat datang', 'welcome', 'section'),
(785, 'en', 'Header', 'header', 'section'),
(786, 'id', 'Header', 'header', 'section'),
(787, 'en', 'Description', 'description', 'section'),
(788, 'id', 'Deskripsi', 'description', 'section'),
(789, 'en', 'Achievement/ Deliverables', 'achievement-deliverable', 'section'),
(790, 'id', 'Hasil Kerja', 'achievement-deliverable', 'section'),
(791, 'en', 'We Offer', 'we-offer', 'section'),
(792, 'id', 'Kami menawarkan', 'we-offer', 'section'),
(793, 'en', 'Activities', 'activities', 'section'),
(794, 'id', 'Aktifitas', 'activities', 'section'),
(795, 'en', 'Benefits', 'benefit', 'section'),
(796, 'id', 'Keuntungan', 'benefit', 'section'),
(797, 'en', 'Expertise And Experience', 'expertise-and-experience', 'section'),
(798, 'id', 'Keahlian Dan Pengalaman', 'expertise-and-experience', 'section'),
(799, 'en', 'Output & Benefit', 'output-benefit', 'section'),
(800, 'id', 'Hasil & Keuntungan', 'output-benefit', 'section'),
(801, 'en', 'What You Get', 'what-you-get', 'section'),
(802, 'id', 'Yang Anda Dapat', 'what-you-get', 'section'),
(803, 'en', 'Waste Flow', 'waste-flow', 'section'),
(804, 'id', 'Alur Sampah', 'waste-flow', 'section'),
(805, 'en', 'Portfolio Highlight', 'portofolio-highlight', 'section'),
(806, 'id', 'Sorotan Portofolio', 'portofolio-highlight', 'section'),
(807, 'en', 'Research Hightlight', 'research-hightlight', 'section'),
(808, 'id', 'Sorotan Penelitian', 'research-hightlight', 'section'),
(809, 'en', 'Program Highlight', 'program-highlight', 'section'),
(810, 'id', 'Sorotan Program', 'program-highlight', 'section'),
(811, 'en', 'Similar Project', 'similar-project', 'section'),
(812, 'id', 'Proyek Serupa', 'similar-project', 'section'),
(813, 'en', 'Our Client', 'our-client', 'section'),
(814, 'id', 'Klien kami', 'our-client', 'section'),
(815, 'en', 'Recommended For', 'recommended-for', 'section'),
(816, 'id', 'Direkomendasikan Untuk', 'recommended-for', 'section'),
(817, 'en', 'Coverage Area', 'our-coverage', 'section'),
(818, 'id', 'Area Cakupan', 'our-coverage', 'section'),
(819, 'en', 'CTA', 'cta', 'section'),
(820, 'id', 'CTA', 'cta', 'section'),
(821, 'en', 'Expertise and Experiences', 'expertise-and-experiences', 'section'),
(822, 'id', 'Keahlian dan Pengalaman', 'expertise-and-experiences', 'section'),
(823, 'en', 'Highlight', 'highlight', 'section'),
(824, 'id', 'Sorotan', 'highlight', 'section'),
(825, 'en', 'Client', 'client', 'section'),
(826, 'id', 'Klien', 'client', 'section'),
(827, 'en', 'Coverage Area', 'coverage', 'section'),
(828, 'id', 'Area Cakupan', 'coverage', 'section'),
(829, 'en', 'Waste Collection Services', 'waste-collection-program', 'service_category_name'),
(830, 'id', 'Waste Collection Services', 'waste-collection-program', 'service_category_name'),
(831, 'en', 'Extended Producer Responsibility', 'extended-producer-responsibility', 'service_category_name'),
(832, 'id', 'Extended Producer Responsibility', 'extended-producer-responsibility', 'service_category_name'),
(833, 'en', 'Solid Waste Management Research', 'solid-waste-management-research', 'service_category_name'),
(834, 'id', 'Solid Waste Management Research', 'solid-waste-management-research', 'service_category_name'),
(835, 'en', 'Community Development', 'community-development', 'service_category_name'),
(836, 'id', 'Community Development', 'community-development', 'service_category_name'),
(837, 'en', 'Training', 'training', 'service_category_name'),
(838, 'id', 'Training', 'training', 'service_category_name'),
(839, 'en', 'General', 'general', 'service_category_name'),
(840, 'id', 'General', 'general', 'service_category_name'),
(841, 'en', 'SWM Research In Institutions', 'swm-research-in-institutions', 'service_category_name2'),
(842, 'id', 'SWM Research di Institusi', 'swm-research-in-institutions', 'service_category_name2'),
(843, 'en', 'SWM Research In Municipalities/ Tourism Sites', 'swm-research-in-municipalities', 'service_category_name2'),
(844, 'id', 'SWM Research di Daerah/ Destinasi Wisata', 'swm-research-in-municipalities', 'service_category_name2'),
(845, 'en', 'Value Chain Analysis', 'value-chain-analysis', 'service_category_name2'),
(846, 'id', 'Analisis Rantai Nilai', 'value-chain-analysis', 'service_category_name2'),
(847, 'en', 'Marine Debris Study', 'marine-debris-study', 'service_category_name2'),
(848, 'id', 'Studi Sampah di Laut', 'marine-debris-study', 'service_category_name2'),
(849, 'en', 'Waste To Energy', 'waste-to-energy', 'service_category_name2'),
(850, 'id', 'Waste To Energy', 'waste-to-energy', 'service_category_name2'),
(851, 'en', 'Community Assistance In Institutions', 'community-assistance-in-institutions', 'service_category_name2'),
(852, 'id', 'Community Assistance  di Institusi', 'community-assistance-in-institutions', 'service_category_name2'),
(853, 'en', 'Community Assistance In Municipalities', 'community-assistance-in-municipalities', 'service_category_name2'),
(854, 'id', 'Community Assistance di Daerah', 'community-assistance-in-municipalities', 'service_category_name2'),
(855, 'en', 'Community Assistance In Tourism Sites', 'community-assistance-in-tourism-sites', 'service_category_name2'),
(856, 'id', 'Community Assistance di Destinasi Wisata', 'community-assistance-in-tourism-sites', 'service_category_name2'),
(857, 'en', 'Community Capacity Building', 'community-capacity-building', 'service_category_name2'),
(858, 'id', 'Community Capacity Building', 'community-capacity-building', 'service_category_name2'),
(859, 'en', '3R School Program', '3r-school-program', 'service_category_name2'),
(860, 'id', '3R School Program', '3r-school-program', 'service_category_name2'),
(861, 'en', 'AKABIS Class For Institution', 'akabis-class-for-institution', 'service_category_name2'),
(862, 'id', 'AKABIS Class untuk Institusi', 'akabis-class-for-institution', 'service_category_name2'),
(863, 'en', 'AKABIS Class For Public', 'akabis-class-for-public', 'service_category_name2'),
(864, 'id', 'AKABIS Class untuk Umum', 'akabis-class-for-public', 'service_category_name2'),
(865, 'en', 'AKABIS Xperience For Institution', 'akabis-xperience-for-institution', 'service_category_name2'),
(866, 'id', 'AKABIS Xperience untuk Institusi', 'akabis-xperience-for-institution', 'service_category_name2'),
(867, 'en', 'AKABIS Xperience For Public', 'akabis-xperience-for-public', 'service_category_name2'),
(868, 'id', 'AKABIS Xperience untuk Umum', 'akabis-xperience-for-public', 'service_category_name2'),
(869, 'en', 'Responsible Waste Management', 'responsible-waste-management', 'service_name'),
(870, 'id', 'Responsible Waste Management', 'responsible-waste-management', 'service_name'),
(871, 'en', 'Zero Waste to Landfill', 'zero-waste-to-landfill', 'service_name'),
(872, 'id', 'Zero Waste to Landfill', 'zero-waste-to-landfill', 'service_name'),
(873, 'en', 'Inorganic Waste Management', 'inorganic-waste-management', 'service_name'),
(874, 'id', 'Inorganic Waste Management', 'inorganic-waste-management', 'service_name'),
(875, 'en', 'Event Waste Management', 'event-waste-management', 'service_name'),
(876, 'id', 'Event Waste Management', 'event-waste-management', 'service_name'),
(877, 'en', 'In-Store Recycling', 'in-store-recycling', 'service_name'),
(878, 'id', 'In-Store Recycling', 'in-store-recycling', 'service_name'),
(879, 'en', 'Digital EPR', 'digital-epr', 'service_name'),
(880, 'id', 'Digital EPR', 'digital-epr', 'service_name'),
(881, 'en', 'Community-Based Implementation', 'community-based-implementation', 'service_name'),
(882, 'id', 'Community-Based Implementation', 'community-based-implementation', 'service_name'),
(883, 'en', 'AKABIS (Waste Management Academy)', 'akabis-waste-management-academy', 'service_name'),
(884, 'id', 'AKABIS (Waste Management Academy)', 'akabis-waste-management-academy', 'service_name'),
(885, 'en', 'Black Soldier Fly Learning Center', 'black-soldier-fly-learning-center', 'service_name'),
(886, 'id', 'Black Soldier Fly Learning Center', 'black-soldier-fly-learning-center', 'service_name'),
(887, 'en', 'Black Soldier Fly Tools & Products', 'black-soldier-fly-tools-products', 'service_name'),
(888, 'id', 'Black Soldier Fly Tools & Products', 'black-soldier-fly-tools-products', 'service_name'),
(889, 'en', 'Send Your Waste', 'send-your-waste', 'service_name'),
(890, 'id', 'Send Your Waste', 'send-your-waste', 'service_name'),
(891, 'en', 'Dropbox', 'dropbox', 'service_name'),
(892, 'id', 'Dropbox', 'dropbox', 'service_name'),
(893, 'en', 'Sinergi #AdesNiatMurni dan Gojek', 'sinergi-adesniatmurni-dan-gojek', 'service_name'),
(894, 'id', 'Sinergi #AdesNiatMurni dan Gojek', 'sinergi-adesniatmurni-dan-gojek', 'service_name'),
(895, 'en', 'Merchant', 'merchant', 'service_name'),
(896, 'id', 'Merchant', 'merchant', 'service_name'),
(897, 'en', 'Home Composting', 'home-composting', 'service_name'),
(898, 'id', 'Home Composting', 'home-composting', 'service_name'),
(899, 'en', 'Solid Waste Management Study at Pelabuhan Indonesia II HQ', 'solid-waste-management-study-at-pelabuhan-indonesi', 'service_name'),
(900, 'id', 'Solid Waste Management Study di Kantor Pusat Pelabuhan Indonesia II', 'solid-waste-management-study-at-pelabuhan-indonesi', 'service_name'),
(901, 'en', 'Solid Waste Management Design for Revitalisation at Jami\' Mosque and Kampung Beting Settlements in Pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', 'service_name'),
(902, 'id', 'Rancangan Pengelolaan Sampah Padat untuk Program Revitalisasi di Masjid Jami\' dan Permukiman Beting di Pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', 'service_name'),
(903, 'id', 'Studi Manajemen Sampah - Pemetaan Pemangku Kepentingan dan Alur Sampah di Jakarta dan Surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', 'service_name'),
(904, 'en', 'Waste Management Scouting Study - Stakeholders Mapping and Waste Flow in Jakarta and Surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', 'service_name'),
(905, 'id', 'Proyek Pemantauan Sampah Plastik di Sungai-Sungai di Jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', 'service_name'),
(906, 'en', 'Riverine Plastic Monitoring Project in Jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', 'service_name'),
(907, 'en', 'Technical Due Diligence for ITF Sunter Jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', 'service_name'),
(908, 'id', 'Uji Kelayakan untuk ITF Sunter Jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', 'service_name'),
(909, 'en', '3R Program Suralaya', '3r-program-suralaya', 'service_name'),
(910, 'id', '3R Program Suralaya', '3r-program-suralaya', 'service_name'),
(911, 'en', 'TPS 3R Advisory', 'tps-3r-advisory', 'service_name'),
(912, 'id', 'TPS 3R Advisory', 'tps-3r-advisory', 'service_name'),
(913, 'id', 'Ecoranger di Pulau Merah Banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', 'service_name'),
(914, 'en', 'Ecoranger in Pulau Merah Banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', 'service_name'),
(915, 'id', 'Capacity Building di Wilayah Terdepan Indonesia', 'capacity-building-di-wilayah-terdepan-indonesia', 'service_name'),
(916, 'en', 'Capacity Building in Indonesia\'s Frontline Territories', 'capacity-building-di-wilayah-terdepan-indonesia', 'service_name'),
(917, 'en', '3R Green School', '3r-green-school', 'service_name'),
(918, 'id', '3R Green School', '3r-green-school', 'service_name'),
(919, 'id', 'AKABIS Class untuk Kedutaan Finlandia di Jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', 'service_name'),
(920, 'en', 'AKABIS-CLASS for The Embassy of Finland - Jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', 'service_name'),
(921, 'en', 'AKABIS Class - The Neglected Debris: Paper, Letter and Waste Discussion', 'akabis-class-the-neglected-debris:-paper-letter', 'service_name'),
(922, 'id', 'AKABIS Class mengenai Sampah yang Terabaikan: Kertas, Aksara, dan Diskusi mengenai Sampah', 'akabis-class-the-neglected-debris:-paper-letter', 'service_name'),
(923, 'id', 'AKABIS Xperience untuk PT. Bank DBS Indonesia', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'service_name'),
(924, 'en', 'AKABIS Xperience for PT. Bank DBS Indonesia', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'service_name'),
(925, 'id', 'AKABIS Xperience untuk YSEALI', 'akabis-xperience-untuk-yseali-young-southeast-asi', 'service_name'),
(926, 'en', 'AKABIS XPERIENCE for YSEALI', 'akabis-xperience-untuk-yseali-young-southeast-asi', 'service_name'),
(927, 'en', 'Events', 'events', 'service_ourachivement'),
(928, 'id', 'Acara', 'events', 'service_ourachivement'),
(929, 'en', 'Clients', 'clientscompanies', 'service_ourachivement'),
(930, 'id', 'Klien', 'clientscompanies', 'service_ourachivement'),
(931, 'en', 'Recycled Waste (kg)', 'waste-recycled-kg', 'service_ourachivement'),
(932, 'id', 'Sampah Terdaur Ulang (kg)', 'waste-recycled-kg', 'service_ourachivement'),
(933, 'en', 'Residual Waste That Doesn\'t End Up in the Landfill (kg)', 'residual-waste-that-doesnt-end-up-in-the-landfill', 'service_ourachivement'),
(934, 'id', 'Residu yang Tidak Berakhir di TPA (kg)', 'residual-waste-that-doesnt-end-up-in-the-landfill', 'service_ourachivement'),
(935, 'en', 'Locations', 'locations', 'service_ourachivement'),
(936, 'id', 'Lokasi', 'locations', 'service_ourachivement'),
(937, 'en', 'Days spent for waste audit', 'days-spent-for-waste-audit', ''),
(938, 'id', 'Hari Dihabiskan untuk Audit Sampah', 'days-spent-for-waste-audit', ''),
(939, 'en', 'Cities & Regencies', 'cities-regencies', ''),
(940, 'id', 'Kabupaten & Kota', 'cities-regencies', ''),
(941, 'en', 'Beneficiaries', 'beneficiaries', ''),
(942, 'id', 'Peserta', 'beneficiaries', ''),
(943, '', '', '', ''),
(944, '', '', '', ''),
(945, 'en', 'A 100% holistic waste management for companies, buildings, and businesses to reduce the number of waste that piles up in the landfill.', 'a-100-holistic-waste-management-for-companies-bu', 'service_description'),
(946, 'id', 'Sistem manajemen sampah yang 100% menyeluruh untuk perusahaan, gedung, dan pelaku bisnis dalam rangka mengurangi jumlah timbulan sampah yang berakhir di TPA.', 'a-100-holistic-waste-management-for-companies-bu', 'service_description'),
(947, 'en', 'Take an active part in preventing our local landfills from being overcapacity! With our waste collection and waste recycling service, Zero Waste to Landfill, we will make sure that none of your waste ends up in the landfill!', 'take-an-active-part-in-preventing-our-local-landfi', 'service_description'),
(948, 'id', 'Ambil peran aktif untuk membantu mencegah TPS dan TPA agar tidak kelebihan kapasitas! Melalui layanan pengangkutan dan daur ulang sampah yang dinamakan Zero Waste to Landfill, kami akan memastikan bahwa tidak ada sampah Anda yang berakhir di TPA!', 'take-an-active-part-in-preventing-our-local-landfi', 'service_description'),
(949, 'en', 'Treat your inorganic waste the right way and make sure  that your inorganic waste are recycled and included in the sustainable circular system.', 'treat-your-inorganic-waste-the-right-way-and-make-', 'service_description'),
(950, 'id', 'Kelola sampah anorganik Anda dengan cara yang tepat dan pastikan bahwa sampah anorganik tersebut didaur ulang dan masuk ke dalam siklus yang berkelanjutan.', 'treat-your-inorganic-waste-the-right-way-and-make-', 'service_description'),
(951, 'en', 'Through the placement of segregated waste bins in strategic locations, as well as segregated waste collection for all of the waste that are produced during your event, we will help your event&apos;s waste management to be more well-prepared and responsible!', 'through-the-placement-of-segregated-waste-bins-in-', 'service_description'),
(952, 'id', 'Melalui penempatan tempat sampah terpilah di lokasi-lokasi yang strategis, serta pengangkutan sampah terpilah selama acara berlangsung, kami akan membantu acara Anda mempersiapkan pengelolaan sampah yang bertanggung jawab!', 'through-the-placement-of-segregated-waste-bins-in-', 'service_description'),
(953, 'en', 'We provide a system to improve the recycling process of your brand-labeled waste so that it remains safe for the environment, supports the circular economy, and prevent it from ending up in the landfill.', 'increase-the-material-processing-of-brand-labelled', 'service_description'),
(954, 'id', 'Tingkatkan pengelolaan materi dari sampah berlabel merek di seluruh lini bisnis Anda. Baik melalui layanan daur ulang di toko maupun yang berbasis aplikasi, kami punya sistem dan solusinya!', 'increase-the-material-processing-of-brand-labelled', 'service_description'),
(955, 'en', 'Increasing the recycling rate of your brand-labeled waste with the support of app-integrated and web-integrated recycling system and opening even wider collaboration opportunities with other businesses and communities.', 'increasing-the-recycling-rate-of-your-brand-labele', 'service_description'),
(956, 'id', 'Tingkatkan pengelolaan materi dari sampah berlabel merek Anda dengan bantuan sistem daur ulang berbasis aplikasi dan website, sekaligus membuka semakin banyak peluang kolaborasi dengan pelaku bisnis dan komunitas lain.', 'increasing-the-recycling-rate-of-your-brand-labele', 'service_description'),
(957, 'en', 'Improve your solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs.', 'improve-your-solid-waste-management-by-conducting-', 'service_description'),
(958, 'id', 'Tingkatkan pengelolaan sampah Anda dengan melakukan analisis terperinci dan mengidentifikasi program dan sistem manajemen sampah yang paling tepat.', 'improve-your-solid-waste-management-by-conducting-', 'service_description'),
(959, 'en', 'We help our clients to implement programs that encourage the community to act and provide real contributions to the waste crisis in Indonesia.', 'we-help-our-clients-to-implement-programs-that-enc', 'service_description'),
(960, 'id', 'Kami membantu klien kami untuk menerapkan program-program yang mendorong komunitas untuk ikut bertindak dan memberikan kontribusi nyata terhadap krisis sampah di Indonesia.', 'we-help-our-clients-to-implement-programs-that-enc', 'service_description'),
(961, 'en', 'Designed to increase our future generations\' awareness  about 3R Principles (Reduce, Reuse, Recycle) and how to implement it in their everyday lives.', 'designed-to-encourage-the-increasing-awareness-of-', 'service_description'),
(962, 'id', 'Dirancang untuk meningkatkan kesadaran generasi mendatang terhadap prinsip 3R (Reduce, Reuse, Recycle) dan bagaimana menerapkannya di kehidupan sehari-hari.', 'designed-to-encourage-the-increasing-awareness-of-', 'service_description'),
(963, 'en', 'Waste management education program that includes a visit to the local landfill and Waste4Change\'s waste management facilities that stimulates all 4 senses (sight, touch, smell, and hearing).\r\n', 'waste-management-education-program-that-includes-a', 'service_description'),
(964, 'id', 'Program edukasi manajemen sampah yang mencakup kunjungan ke TPA/TPS dan fasilitas pengelolaan sampah milik Waste4Change yang akan merangsang keempat indra Anda (melihat, mendengar, mencium, dan meraba).', 'waste-management-education-program-that-includes-a', 'service_description'),
(965, 'en', 'Receive in-depth information regarding organic waste processing using Black Soldier Fly (BSF), as well as the cultivation and breeding methods of BSF.', 'receive-in-depth-information-regarding-organic-was', 'service_description'),
(966, 'id', 'Dapatkan informasi mendalam mengenai pengelolaan sampah organik dengan menggunakan Black Soldier Fly (BSF), serta metode budidaya dan pengembangbiakan BSF.', 'receive-in-depth-information-regarding-organic-was', 'service_description'),
(967, 'en', 'We provide Black Soldier Fly larvae that is high in protein and considered as a great animal feed. For any of you who wishes to build your own BSF nursery, we have all the tools and starters needed.', 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'service_description'),
(968, 'id', 'Kami menjual larva  Black Soldier Fly yang tinggi protein dan bagus untuk digunakan sebagai pakan ternak. Untuk siapapun yang ingin merintis peternakan BSFnya sendiri, kami menyediakan semua perlengkapan dan alat yang diperlukan.', 'we-provide-black-soldier-fly-larvae-that-is-high-i', 'service_description'),
(969, 'en', 'Send your inorganic waste to Waste4Change and let us recycle it for you.', 'send-your-inorganic-waste-to-waste4change-and-let-', 'service_description'),
(970, 'id', 'Kirim sampah anorganik Anda ke Waste4Change untuk didaur ulang.', 'send-your-inorganic-waste-to-waste4change-and-let-', 'service_description'),
(971, 'en', 'Deposit your inorganic waste in Waste4Change\'s dropbox and let us recycle it for you.', 'deposit-your-inorganic-waste-in-waste4changes-dro', 'service_description'),
(972, 'id', 'Setor sampah anorganik Anda ke dalam dropbox Waste4Change untuk didaur ulang.', 'deposit-your-inorganic-waste-in-waste4changes-dro', 'service_description'),
(973, 'en', 'Send your used PET bottles of various sizes and brands with GoSend to get many benefits from Ades.', 'send-your-used-pet-bottles-of-various-sizes-and-br', 'service_description'),
(974, 'id', 'Kirimkan sampah botol plastik PET Anda dalam berbagai ukuran dan merek dengan menggunakan GoSend untuk mendapatkan banyak keuntungan dari Ades.', 'send-your-used-pet-bottles-of-various-sizes-and-br', 'service_description'),
(975, 'en', 'Deposit your used packaging through our partners throughout Indonesia and get reward points when shopping for various digital products.', 'deposit-your-used-packaging-through-our-partners-t', 'service_description'),
(976, 'id', 'Setor sampah kemasan Anda melalui partner-partner kami yang tersebar di seluruh Indonesia dan dapatkan hadiah poin untuk setiap pembelanjaan produk digital.', 'deposit-your-used-packaging-through-our-partners-t', 'service_description'),
(977, 'en', 'Process your organic waste at  home with Waste4Change\'s special composting bag and other home composting tools and equipment!', 'process-your-organic-waste-at-home-with-waste4cha', 'service_description'),
(978, 'id', 'Kelola sampah organik Anda di rumah dengan menggunakan tas kompos dari Waste4Change beserta perlengkapan kompos lainnya!', 'process-your-organic-waste-at-home-with-waste4cha', 'service_description'),
(979, 'en', 'No More Mixed Waste', 'no-more-mixed-waste', 'service_slogan'),
(980, 'id', 'Tidak Ada Lagi Sampah yang Tercampur', 'no-more-mixed-waste', 'service_slogan'),
(981, 'en', 'No More Waste That End Up In Landfills', 'no-more-waste-that-end-up-in-landfills', 'service_slogan'),
(982, 'id', 'Tidak Ada Lagi Sampah yang Berakhir di TPA', 'no-more-waste-that-end-up-in-landfills', 'service_slogan'),
(983, 'en', 'From Waste to Useful Materials', 'from-waste-to-useful-materials', 'service_slogan'),
(984, 'id', 'Dari Sampah Menjadi Material yang Berguna', 'from-waste-to-useful-materials', 'service_slogan'),
(985, 'en', 'Great Events Take Their Waste Management Seriously and is Well-Prepared Beforehand', 'great-event-planned-their-waste-management-beforeh', 'service_slogan'),
(986, 'id', 'Acara yang Baik itu Penuh Persiapan dan Bersungguh-sungguh dalam Mengelola Sampah Mereka', 'great-event-planned-their-waste-management-beforeh', 'service_slogan'),
(987, 'en', 'Support the Recycling of Your Brand-Labeled Waste', 'support-the-recycling-of-your-brand-labeled-waste', 'service_slogan'),
(988, 'id', 'Mendukung Daur Ulang Sampah Berlabel Merek Anda', 'support-the-recycling-of-your-brand-labeled-waste', 'service_slogan'),
(989, 'en', 'More Effective and Sustainable Brand-Labeled Waste Recycling Management', 'more-effective-and-sustainable-brand-labeled-waste', 'service_slogan'),
(990, 'id', 'Daur Ulang Sampah Berlabel Merek dengan Lebih Efektif dan Berkelanjutan', 'more-effective-and-sustainable-brand-labeled-waste', 'service_slogan'),
(991, 'en', 'Research and Planning with Environment in Mind', 'research-and-planning-with-environment-in-mind', 'service_slogan'),
(992, 'id', 'Penelitian dan Perencanaan dengan Mempertimbangkan Aspek Lingkungan', 'research-and-planning-with-environment-in-mind', 'service_slogan'),
(993, 'en', 'Solid Effort to Reduce Waste Generation From The Source', 'solid-effort-to-reduce-waste-generation-from-the-s', 'service_slogan'),
(994, 'id', 'Usaha Nyata untuk Mengurangi Produksi Sampah dari Sumbernya', 'solid-effort-to-reduce-waste-generation-from-the-s', 'service_slogan'),
(995, 'en', 'Optimal Implementation of 3R (Reduce-Reuse-Recycle) Principles', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'service_slogan'),
(996, 'id', 'Penerapan Maksimal Prinsip 3R (Reduce-Reuse-Recycle)', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'service_slogan'),
(997, 'en', 'Take a Closer Look at Waste Management Facts and Solutions', 'take-a-closer-look-at-waste-management-facts-and-s', 'service_slogan'),
(998, 'id', 'Melihat Lebih Dekat Fakta dan Solusi Pengelolaan Sampah', 'take-a-closer-look-at-waste-management-facts-and-s', 'service_slogan'),
(999, 'en', 'Effective Organic Waste Solution', 'effective-organic-waste-solution', 'service_slogan'),
(1000, 'id', 'Solusi Sampah Organik yang Efektif', 'effective-organic-waste-solution', 'service_slogan'),
(1001, 'en', 'Waste generation is inevitable. It\'s not easy to reduce waste in our everyday lives. The simplest, easiest and most important thing that we can do after generating waste is separating our organic and inorganic waste. <br><br>Through our service Responsible Waste Management (RWM), Waste4Change is providing holistic waste management to reduce the number of waste that piles up in the landfill.', 'waste-generation-is-inevitable-its-not-easy-to-r', 'service_about'),
(1002, 'id', 'Produksi sampah merupakan sesuatu yang tidak bisa dihindari. Mengurangi sampah sendiri bukanlah perkara yang mudah. Hal yang paling sederhana, mudah, dan penting yang dapat kita lakukan setelah menghasilkan sampah adalah memisahkan sampah organik dan sampah anorganik.<br><br>Dengan layanan kami yang bernama Responsible Waste Management (RWM), Waste4Change menyediakan manajemen sampah untuk mengurangi jumlah timbulan sampah yang menumpuk di TPA.', 'waste-generation-is-inevitable-its-not-easy-to-r', 'service_about'),
(1003, 'en', 'Every day, Indonesians generates 175,000 tons of waste. This caused Jakarta and many areas in Indonesia to suffer from landfill emergencies. Even the Bantar Gebang landfill that holds the residual waste of Jakarta residents is predicted to be overcapacity in 2022.<br><br>Waste is everyone\'s responsibility, but several sectors such as the commercial, company, and business actors need to contribute and pay more attention to their waste management and product cycle to ensure the environmental sustainability of their business. Through the ZWTL service, Waste4Change ensures that all waste will be managed responsibly and no waste is  transported to the landfill.', 'every-day-indonesians-are-generating-175000-tons', 'service_about'),
(1004, 'id', 'Setiap harinya, masyarakat Indonesia menghasilkan 175,000 ton sampah. Hal ini yang menyebabkan banyak TPA di banyak tempat di Indonesia mengalami kondisi darurat. Bahkan Bantar Gerbang yang menampung sampah warga Jakarta diperkirakan akan menjadi kelebihan kapasitas di tahun 2022.<br><br>Sampah merupakan tanggung jawab semua orang, tapi beberapa sektor seperti komersial, perusahaan, dan pelaku bisnis perlu berkontribusi dan menaruh perhatian pada manajemen sampah dan siklus produk mereka untuk memastikan aspek keberlanjutan lingkungan dari bisnis mereka sendiri. Melalui layanan ZWTL, Waste4Change memastikan bahwa semua sampah akan dikelola secara bertanggung jawab dan tidak ada sampah yang dibuang ke TPA.', 'every-day-indonesians-are-generating-175000-tons', 'service_about'),
(1005, 'en', 'Waste is a relative term that can apply differently according to each person, especially inorganic waste. Once it is treated  the right way, inorganic waste can solve our problems on the scarcity of raw materials.\r\n<br><br>Through our Inorganic Waste Management (IWM), Waste4Change will ensure that your inorganic waste are recycled and included in the sustainable circular system.', 'waste-is-a-relative-term-that-can-be-applied-diffe', 'service_about'),
(1006, 'id', '\"Sampah merupakan istilah yang maknanya relatif dan tergantung pada setiap orang, terutama sampah anorganik. Ketika sampah tersebut dikelola secara tepat, sampah anorganik dapat menjadi solusi terhadap masalah kelangkaan bahan baku.<br><br>Melalui layanan kami yang dinamakan Inorganic Waste Management (IWM), Waste4Change akan memastikan bahwa sampah anorganik Anda akan didaur ulang dan menjadi bagian dari siklus yang berkelanjutan.\"', 'waste-is-a-relative-term-that-can-be-applied-diffe', 'service_about'),
(1007, 'en', 'Waste generation during an event is inevitable. In a place where participants are allowed to eat, drink, and take notes, especially if it&#39;s super crowded, it\'s not easy to make sure that everyone\'s doing their part to be responsible for their waste. \r\n<br><br>Through our service called Event Waste Management (EWM), we will provide your event with special trash bags designated to encourage people to segregate their waste. Waste4Change will also guarantee that your waste will be handled and processed responsibly to reduce the number of waste that ends up in the landfill.', 'waste-generation-during-an-event-is-inevitable-in', 'service_about'),
(1008, 'id', '\"Produksi sampah dalam suatu acara menjadi hal yang tidak bisa dihindari. Di tempat dimana peserta diperbolehkan untuk makan, minum, serta mencatat, terutama tempat yang sangat ramai, tidak mudah untuk memastikan bahwa setiap orang bertanggung jawab terhadap sampah mereka.<br><br>Dengan layanan kami yang dinamakan Event Waste Management (EWM), kami akan menyediakan acara Anda dengan kantong sampah khusus yang dibuat untuk mendorong orang-orang untuk memilah sampah mereka. Waste4Change juga akan menjamin bahwa sampah Anda akan ditangani dan dikelola secara bertanggung jawab untuk mengurangi jumlah timbulan sampah yang berakhir di TPA.\"', 'waste-generation-during-an-event-is-inevitable-in', 'service_about'),
(1009, 'en', 'Designed to increase the material processing of brand-labeled waste throughout your company&apos;s business line. What we define as brand-labeled waste might resulted from the following:<ul><li>Production process that resulted in product defect, reject, or residue from production process</li><li>Distribution process such as expired or defect products</li><li>Warehouse such as returns, second-hand, or broken</li><li>Consumer such as empty packaging or used products</li></ul>', 'designed-to-increase-the-material-processing-from-', 'service_about'),
(1010, 'id', 'Dirancang untuk meningkatkan daur ulang materi dari sampah berlabel merek dalam seluruh lini bisnis Anda. Yang kami maksud sebagai sampah berlabel merek dapat muncul sebagai hasil dari:<br><ul><li>Proses produksi yang menghasilkan produk gagal, cacat, atau sampah dari sisa proses produksi</li><li>Proses distribusi seperti produk yang cacat atau kadaluwarsa</li><li>Gudang, seperti barang retur,bekas, atau rusak</li><li>Konsumen, seperti kemasan kosong atau produk yang sudah selesai digunakan  </li></ul>', 'designed-to-increase-the-material-processing-from-', 'service_about'),
(1011, 'en', 'We provide a waste recycling system that is integrated with web and mobile applications to further increase the amount of waste labeled your brand that is recycled.\r\n<br><br>\r\nThe integration of technology in the waste recycling system not only supports responsible waste management for your brand-labeled waste but also opens opportunities for collaboration with many businesses and other recycling partners.\r\n<br><br>\r\nThe integrated waste recycling system also supports the education and campaign aspects of your brand program, so it is expected to be able to reach and meet the needs of your brand consumers in more locations in Indonesia.', 'we-provide-a-waste-recycling-system-that-is-integr', 'service_about'),
(1012, 'id', 'Kami menyediakan sistem daur ulang yang terintegrasi dengan website dan aplikasi handphone untuk semakin meningkatkan tingkat daur ulang dari sampah berlabel merek Anda. <br><br>Pengintegrasian teknologi dalam sistem daur ulang tidak hanya akan mendukung pengelolaan sampah yang bertanggung jawab untuk sampah berlabel merek Anda, tetapi juga membuka peluang untuk berkolaborasi dengan banyak pelaku bisnis dan mitra daur ulang yang lain.<br><br>Sistem daur ulang sampah yang terintegrasi juga mendukung program di bidang edukasi dan kampanye dari merek/perusahaan Anda, sehingga harapannya layanan ini akan mampu menjangkau dan memenuhi kebutuhan konsumen dari merek Anda di semakin banyak tempat di Indonesia.', 'we-provide-a-waste-recycling-system-that-is-integr', 'service_about'),
(1013, 'en', 'Waste4Change provides consultation through Solid Waste Management (SWM) Research that aims to improve solid waste management by conducting a thorough analysis and identifying the most appropriate system and programs in cities, regions, building, or any other private/commercial institutions. <br> It also aims to harness the advantages borne out of implementing responsible waste management.', 'waste4change-provides-consultation-through-solid-w', 'service_about'),
(1014, 'id', 'Waste4Change menyediakan konsultasi melalui layanan Solid Waste Management (SWM) Research yang bertujuan meningkatkan pengelolaan sampah padat dengan melakukan analisis terperinci dan mengidentifikasi program dan sistem yang paling tepat, baik di kota, provinsi, bangunan, atau institusi publik dan komersial lainnya.<br><br>Layanan ini juga bertujuan untuk memaksimalkan keuntungan yang didapat dari menerapkan pengelolaan sampah yang bertanggung jawab.', 'waste4change-provides-consultation-through-solid-w', 'service_about'),
(1015, 'en', 'According to recent BPS statistics, waste management ranks the lowest when compared to other environmental issues (energy, air pollution, transportation).<br>At Waste4Change, we see this as a challenge to implement programs that encourages the community to act and give real contributions to the ongoing waste crisis in Indonesia through Community-based Implementation.', 'according-to-recent-bps-statistics-waste-manageme', 'service_about'),
(1016, 'id', '\"Berdasarkan statistik dari BPS, pengelolaan sampah menempati peringkat paling akhir dibandingkan dengan isu lingkungan yang lain (energi, polusi udara, transportasi).<br><br>Kami di Waste4Change melihat hal ini sebagai sebuah tantangan untuk menerapkan program-program yang mendorong komunitas lokal untuk bertindak dan memberikan kontribusi nyata terhadap permasalahan sampah di Indonesia yang tengah berlangsung melalui layanan Community-based Implementation\"', 'according-to-recent-bps-statistics-waste-manageme', 'service_about'),
(1017, 'en', '3R School Program is a program designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management system in schools. The aims of this program is to assist schools. Waste4Change acts as a facilitator in assisting beneficiaries to achieve the objectives of the program.', '3r-school-program-is-a-program-designed-to-encoura', 'service_about'),
(1018, 'id', '3R School Program adalah program yang dirancang untuk mendorong peningkatan kesadaran warga sekolah untuk menerapkan prinsip 3R (Reduce, Reuse, Recycle) demi terwujudnya sistem pengelolaan sampah yang bertanggung jawab di sekolah-sekolah. Tujuan dari program ini adalah untuk membantu sekolah. Waste4Change berperan sebagai fasilitator dalam mendampingi penerima manfaat mencapai tujuan program yang telah ditetapkan.', '3r-school-program-is-a-program-designed-to-encoura', 'service_about'),
(1019, 'en', 'Akademi Bijak Sampah (AKABIS) is an education model created by Waste4Change to raise awareness on the importance of protecting the environment, especially in responsible waste management.', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'service_about'),
(1020, 'id', 'Akademi Bijak Sampah (AKABIS) adalah sebuah model edukasi yang dibuat oleh Waste4Change untuk meningkatkan kesadaran mengenai pentingnya menjaga lingkungan, terutama mengenai pengelolaan sampah yang bertanggung jawab.', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'service_about'),
(1021, 'en', 'Through BSF Learning Center, you will receive in-depth information regarding organic waste processing using Black Soldier Flies (BSF), as well as the cultivation and breeding methods of BSF.', 'through-bsf-learning-center-you-will-receive-in-d', 'service_about'),
(1022, 'id', 'Melalui program BSF Learning Center, Anda akan mendapatkan informasi yang mendalam mengenai pengolahan sampah organik dengan menggunakan Black Soldier Fly (BSF), sekaligus mengenai metode pembudidayaan dan pengembangbiakan BSF.', 'through-bsf-learning-center-you-will-receive-in-d', 'service_about'),
(1023, 'en', 'Based on the Regulation of Ministry of Transportation No 51 year 2015 about Sea Ports, Sea Ports Unit Organizations have to provide pollution prevention facilities and ensure the implementation of greenport.<br>Therefore, the study in PT Pelabuhan Indonesia II (Persero) head office building aims to identify and provide recommendations related to the steps in implementing 3R-based waste management system. This study was conducted by performing waste audits, survey to employees, and in-depth interview to the related stakeholders.', 'based-on-the-regulation-of-ministry-of-transportat', 'service_about'),
(1024, 'id', 'Berdasarkan Peraturan Menteri Perhubungan No. 51 Tahun 2015 mengenai Pelabuhan, organisasi unit pelabuhan harus menyediakan fasilitas pencegahan polusi dan memastikan penerapan konsep pelabuhan hijau. <br>Maka dari itu, studi yang dilakukan di kantor utama PT Pelabuhan Indonesia II (Persero) bertujuan untuk mengidentifikasi dan memberikan rekomendasi yang berkaitan dengan langkah-langkah penerapan sistem pengelolaan sampah berbasis 3R. Studi ini dilakukan dengan melaksanakan audit sampah, survei ke pegawai, dan wawancara mendalam dengan pemangku kepentingan terkait.', 'based-on-the-regulation-of-ministry-of-transportat', 'service_about'),
(1025, 'en', 'Beting village and Jami\' Mosque area are located at the intersection of Kapuas River and Landak River. People in Beting village area tend to dispose their waste into the river due to the minimum facilities, limited access to landfill, and unavailability of waste management system.<br><br>The increasing piles of waste in this area was also worsened by the volume of waste coming from the upstream. In order to solve the waste problem in that area, an integrated waste management system needs to be implemented.', 'beting-village-and-jami-mosque-area-are-located-a', 'service_about'),
(1026, 'id', 'Desa Beting dan Masjid Jami\' terletak di persimpangan sungai Kapuas dan sungai Landak. Masyarakat desa Beting cenderung membuang sampah mereka ke sungai karena minimnya fasilitas, akses ke TPA/TPS yang terbatas, serta tidak adanya sistem manajemen sampah.<br><br>Jumlah sampah yang kian meningkat di area ini juga diperparah oleh adanya kiriman sampah dari daerah hulu. Guna memecahkan masalah sampah di area tersebut, sebuah sistem manajemen sampah yang terintegrasi perlu diterapkan. \r\n', 'beting-village-and-jami-mosque-area-are-located-a', 'service_about'),
(1027, 'en', 'Indonesia is the 2nd biggest contributor of plastic waste into the oceans, primarily through the mismanagement of land-based waste. In 2010, it was estimated that 3.2 million Mt/year of plastic waste were mismanaged, and that the volume would more than doubled by 2025 if no significant changes were to take place. <br>The study aimed to better understand waste management in Indonesia, map the flow of packaging waste, and identify potential key  stakeholders to collaborate with in order to prevent packaging waste from ending up in the ocean.', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'service_about');
INSERT INTO `dictionary` (`dictionary_id`, `language_code`, `dictionary_content`, `dictionary_slug`, `dictionary_type`) VALUES
(1028, 'id', 'Indonesia merupakan penyumbang sampah laut terbesar kedua di dunia, utamanya karena buruknya penanganan sampah yang berasal dari darat. Di tahun 2010, diperkirakan ada sebanyak 3,2 juta ton sampah plastik per tahun yang tidak dikelola dengan baik. Jumlah tersebut diperkirakan akan berlipat ganda di tahun 2025 jika tidak terjadi perubahan yang signifikan. <br>Studi ini bertujuan untuk lebih memahami pengelolaan sampah di Indonesia, memetakan alur sampah kemasan, dan mengidentifikasi pemangku kepentingan yang potensial di tingkat lokal untuk berkolaborasi demi mencegah sampah kemasan agar tidak berakhir di laut.', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'service_about'),
(1029, 'en', 'The Ocean Cleanup is a Dutch-based non-profit organization who develops advanced technologies to rid the world\'s oceans of plastics. By deploying their fleet of systems, they aim to remove 50% of the Great Pacific Garbage Patch in just five years\' time. By having the same mission on tackling waste problems, The Ocean Cleanup cooperates with Waste4Change as their local partner in Indonesia and conducted a riverine plastic emission study in Jakarta\'s rivers in April 2018. <br>During a 10-day fieldwork supported by DKI Jakarta Orange Troops, plastics were monitored at 7 river points throughout Jakarta, which includes Ciliwung and Pesanggrahan River. Plastic samples were trawled and analyzed by dividing them into different types. By having these data, hopefully appropriate measures can be done to tackle marine debris starting from the rivers, not only in Jakarta, but  throughout Indonesia and in neighboring countries.', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'service_about'),
(1030, 'id', 'The Ocean Cleanup merupakan organisasi non-profit asal Belanda yang mengembangkan teknologi mutakhir untuk membersihkan lautan dari sampah plastik. Dengan meluncurkan armada mereka, The Ocean Cleanup berambisi untuk menyingkirkan 50% sampah di the Great Pacific Garbage Patch hanya dalam waktu lima tahun. Dengan berbagi misi yang sama untuk mengatasi permasalahan sampah, The Ocean Cleanup bekerja sama dengan Waste4Change sebagai partner lokal mereka di Indonesia dan melakukan studi polusi plastik di sungai-sungai di Jakarta pada bulan April tahun 2018. <br>Melalui kerja lapangan yang dilaksanakan selama 10 hari dengan dibantu oleh Pasukan Oranye Jakarta, sampah plastik di monitor di 7 titik sungai di Jakarta, termasuk di dalamnya sungai Ciliwung dan sungai Pesanggrahan. Sampel plastik dijaring dan dianalisis dengan cara membaginya ke beberapa tipe. Dengan data ini, diharapkan dapat diambil langkah yang tepat untuk mengatasi masalah sampah di laut, dimulai dari menangani sampah yang berada di sungai, dan tidak hanya sungai di Jakarta, tapi juga di seluruh Indonesia dan bahkan di negara-negara tetangga. ', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'service_about'),
(1031, 'en', 'Ramboll Danmark A/S as the main consultant was working together with Waste4Change as local consultant to conduct technical due diligence for 2,200 tpd and 35 MW Waste to Energy Plant that will be built in Sunter, North Jakarta.<br>This due diligence is done for lenders appraisal and to make sure that the Waste to Energy plant will be operating sustainably in terms of technicalities', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'service_about'),
(1032, 'id', 'Ramboll Danmark A/S sebagai konsultan utama bekerja sama dengan Waste4Change sebagai konsultan lokal untuk melakukan uji kelayakan terhadap 2,200 tpd dan 35 Miliar Watt fasilitas Waste-to-Energy yang akan dibangun di Sunter, Jakarta Utara. \r\n\r\nUji kelayakan ini dilakukan untuk penilaian pemberi pinjaman serta untuk memastikan bahwa fasilitas the Waste to Energy akan beroperasi secara berkelanjutan dari segi teknis.', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'service_about'),
(1033, 'en', 'Waste4Change assisted PT Indonesia Power UP Suralaya in implementing responsible waste management in both the existing office and  the new buildings (Unit 5-7 and Coal Building), as well as Suralaya village itself.  <br>The purpose of this assistance was to increase awareness and action on the importance of sorting out waste, and to subsequently reuse waste that is disaggregated and has value and  eventually to reduce the waste disposed to Cinapol landfill.', 'waste4change-assisted-pt-indonesia-power-up-surala', 'service_about'),
(1034, 'id', 'Waste4Change membantu PT Indonesia Power UP Suralaya dalam menerapkan pengelolaan sampah yang bertanggung jawab di kantor lama sekaligus di gedung barunya (Unit 5-7 dan Coal Building), dan di desa Suralaya sendiri.  <br>Tujuan dari pendampingan ini adalah untuk meningkatkan kesadaran dan perilaku masyarakat mengenai pentingnya memilah sampah, untuk menggunakan kembali sampah yang telah dipisahkan sesuai bahannya dan masih memiliki nilai, serta mengurangi jumlah timbulan sampah yang dibuang di TPA Cinapol. ', 'waste4change-assisted-pt-indonesia-power-up-surala', 'service_about'),
(1035, 'en', 'In order to achieve the national target of 30% waste reduction by 2030 that the government had set, TPS 3R program can serve as one of the solutions. Waste4Change as one of the TPS 3R Advisory consultants plays a pivotal role in assisting, supervising, monitoring and evaluating the implementation of this community-based program.<br>The scope of work includes optimization of previously constructed TPS 3R to improve both the management and business development as well as supervision on the establishment of new TPS 3Rs. Waste4Change monitored and evaluated TPS 3R throughout Kalimantan and Java (in 2017) and Kalimantan, Java, Sulawesi, Nusa Tenggara, Maluku, and Papua (in 2018).', 'in-order-to-achieve-the-national-target-of-30-was', 'service_about'),
(1036, 'id', 'Dalam rangka mencapai target nasional pengurangan sampah sebesar 30% di tahun 2030 yang telah ditetapkan pemerintah, program TPS 3R dapat menjadi salah satu solusinya. Waste4Change sebagai salah satu konsultan TPS 3R Advisory berperan dalam mendampingi, mengawasi, memonitor, serta mengevaluasi penerapan program berbasis komunitas ini.<br>Cakupan kerjanya meliputi pengoptimalisasian TPS 3R yang kemarin sudah dibangun untuk meningkatkan manajemen dan pengembangan bisnisnya, serta pengawasan TPS 3R yang baru dibangun. Waste4Change memonitor dan mengevaluasi TPS 3R yang ada di Kalimantan dan Jawa (di tahun 2017) dan di Kalimantan, Jawa, Sulawesi, Nusa Tenggara, Maluku, dan Papua (di tahun 2018).', 'in-order-to-achieve-the-national-target-of-30-was', 'service_about'),
(1037, 'en', 'Tourism in Indonesia is currently growing exponentially. This condition, if not properly planned, will have negative implications for the environment such as increased waste amount that will lead to health issues, environmental problems, and eventually the reluctance of tourists to visit certain destinations that are mismanaged.<br>Pulau Merah, with its astonishing sunset view and nice waves for surfing, is one of the emerging tourist destinations in Banyuwangi. It will almost likely  face the said problems if there is no concrete actions to encourage a good waste management system and campaign.', 'tourism-in-indonesia-is-currently-growing-exponent', 'service_about'),
(1038, 'id', 'Sektor pariwisata di Indonesia sedang berkembang pesat. Kondisi ini, jika tidak ditangani dengan tepat, akan menyebabkan dampak negatif terhadap lingkungan, misalnya peningkatan jumlah sampah yang akan menyebabkan masalah kesehatan, lingkungan, dan pada akhirnya membuat wisatawan segan untuk kembali ke destinasi wisata yang tidak dikelola dengan baik tersebut.<br>Pulau Merah, dengan pemandangan matahari terbenam yang cantik dan ombak yang cocok untuk berselancar, merupakan salah satu destinasi wisata yang tengah naik daun di Banyuwangi. Tempat tersebut berpotensi untuk mengalami masalah serupa apabila tidak ada aksi konkret untuk mendorong kampanye dan sistem manajemen sampah yang baik.', 'tourism-in-indonesia-is-currently-growing-exponent', 'service_about'),
(1039, 'en', 'Indonesia\'s frontline areas reflect the life of the country, including its waste management. Therefore, a responsible waste management in the frontline areas is a necessity to develop a sustainable frontline. This program aims to implement responsible waste management system in 7 Indonesian borderline areas. This program focuses on community capacity building so that waste burning and the behavior of unethical waste dumping can be reduced.<br><br>This capacity building program is expected to nurture an understanding  in the local community about the importance of their involvement in a waste management system, the benefits of responsible waste management implementation and the direct impact of not implementing a proper waste management.\r\n', 'indonesias-frontline-areas-reflect-the-life-of-th', 'service_about'),
(1040, 'id', 'Wilayah-wilayah terdepan Indonesia merefleksikan kehidupan negara tersebut, termasuk tentang sistem pengelolaan sampahnya. Karena itulah, pengelolaan sampah yang bertanggung jawab di wilayah-wilayah terdepan Indonesia diperlukan demi keberlanjutannya. Program ini bertujuan untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab di 7 area perbatasan Indonesia dengan negara lain. Program ini berfokus pada peningkatan kapasitas untuk mengurangi kegiatan membakar sampah atau perilaku membuang sampah sembarangan.<br><br>Program peningkatan kapasitas ini diharapkan mampu menanamkan pemahaman masyarakat lokal mengenai pentingnya partisipasi mereka dalam pengelolaan sampah yang bertanggung jawab, keuntungan dari penerapan sistem pengelolaan sampah yang bertanggung jawab, serta dampak langsung dari tidak adanya sistem pengelolaan sampah yang layak.\r\n', 'indonesias-frontline-areas-reflect-the-life-of-th', 'service_about'),
(1041, 'en', 'The Unilever Foundation along with Waste4Change organized a 3R Green School program that aimed to educate students in nine schools in Tangerang about responsible waste management through 3R principles, as well as to encourage them about environmental awareness.<br>In this program, students are informed to understand the problem of waste, and the methods of sorting waste and processing waste by applying 3R principles in order to reduce the waste disposal to landfill in South Tangerang.<br>At the end of the program, students from each of the selected school  have a better understanding on the importance of  environmental awareness and are expected to consistently commit in handling their waste responsibly.', 'the-unilever-foundation-along-with-waste4change-or', 'service_about'),
(1042, 'id', 'Wilayah-wilayah terdepan Indonesia merefleksikan kehidupan negara tersebut, termasuk tentang sistem pengelolaan sampahnya. Karena itulah, pengelolaan sampah yang bertanggung jawab di wilayah-wilayah terdepan Indonesia diperlukan demi keberlanjutannya. Program ini bertujuan untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab di 7 area perbatasan Indonesia dengan negara lain. Program ini berfokus pada peningkatan kapasitas untuk mengurangi kegiatan membakar sampah atau perilaku membuang sampah sembarangan.<br>Program peningkatan kapasitas ini diharapkan mampu menanamkan pemahaman masyarakat lokal mengenai pentingnya partisipasi mereka dalam pengelolaan sampah yang bertanggung jawab, keuntungan dari penerapan sistem pengelolaan sampah yang bertanggung jawab, serta dampak langsung dari tidak adanya sistem pengelolaan sampah yang layak.', 'the-unilever-foundation-along-with-waste4change-or', 'service_about'),
(1043, 'en', 'Knowledge about responsible solid waste management and the 3R (Reduce- Reuse, Recycle) Concept is very important, especially for institutions. Waste4Change facilitates institutions to be agents of change so they can encourage responsible solid waste management in their environments.<br>As a country with a strong foundation in sustainability, the Embassy of Finland wants to play its role in waste management in Indonesia through green office practices. They were keen to implement solid waste management in their office in order to reduce waste transported to TPST Bantar Gebang.<br>Akabis Class in the Embassy of Finland was held in 2018 and around 20 employees from different sectors joined the training session.', 'knowledge-about-responsible-solid-waste-management', 'service_about'),
(1044, 'id', 'Pengetahuan mengenai pengelolaan sampah yang bertanggung jawab dan konsep 3R (Reduce- Reuse, Recycle) sangatlah penting, terutama bagi institusi. Waste4Change memfasilitasi institusi untuk menjadi agen perubahan agar mereka bisa mendorong terciptanya sistem pengelolaan sampah padat yang bertanggung jawab d kantor mereka sendiri. <br>Sebagai negara yang memiliki landasan kuat dalam aspek berkelanjutan, Kedutaan Finlandia ingin menjalankan perannya dalam pengelolaan sampah di Indonesia melalui praktik kantor hijau. Mereka bersemangat untuk menerapkan pengelolaan sampah padat di kantor mereka demi mengurangi jumlah timbulan sampah yang berakhir di TPST Bantar Gebang. <br>AKABIS-Class di Kedutaan Finlandia dilaksanakan di tahun 2018 dan sekitar 20 pegawai dari berbagai sektor mengikuti sesi edukasi tersebut.', 'knowledge-about-responsible-solid-waste-management', 'service_about'),
(1045, 'en', 'The ancient method of making paper is not only recognized as a way of reading history, but also as a way to understand the philosophy of letters, eastern culture, and the sustainability of culture and the environment.<br>The Museum of Modern and Contemporary Art in Nusantara (also known as Museum MACAN) invited Waste4Change to enlighten the ways on handling solid waste sustainably especially on paper waste to the audience of enthusiasts on sustainability in their museum.', 'the-ancient-method-of-making-paper-is-not-only-rec', 'service_about'),
(1046, 'id', 'Metode kuno untuk membuat kertas tidak hanya dikenal sebagai cara untuk memahami sejarah, tetapi juga sebagai cara untuk memahami filosofi dibalik aksara, budaya Timur, serta keberlanjutan budaya dan lingkungan. <br>Museum of Modern and Contemporary Art in Nusantara (MACAN) mengundang Waste4Change untuk memberi pencerahan mengenai cara-cara menangani sampah padat, terutama sampah kertas, kepada para pengunjung museum yang antusias terhadap topik keberlanjutan atau sustainability', 'the-ancient-method-of-making-paper-is-not-only-rec', 'service_about'),
(1047, 'en', 'PT Bank DBS Indonesia is one of Waste4Change\'s clients that implements ZWTL (Zero Waste To Landfill) concept in its office\'s waste management system. To increase the performance of ZWTL program at the PT Bank DBS Indonesia office, all of the PT Bank DBS Indonesia employees were required to enroll in the Akabis Xperience program held by Waste4Change.<br>Through AKABIS Xperience activities, PT Bank DBS Indonesia employees were expected to understand more about responsible waste management concept.', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'service_about'),
(1048, 'id', 'PT BANK DBS Indonesia merupakan salah satu klien Waste4Change yang menggunakan layanan ZWTL (Zero Waste To Landfill). Salah satu syarat agar program ZWTL bisa diterapkan di kantor PT BANK DBS Indonesia yaitu dengan melaksanakan AKABIS-Xperience untuk semua pegawai PT BANK DBS Indonesia.<br><br>Melalui kegiatan-kegiatan di AKABIS Xperience, pegawai PT BANK DBS Indonesia bisa meningkatkan kepedulian dan pemahaman mereka mengenai sistem pengelolaan sampah yang bertanggung jawab.', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'service_about'),
(1049, 'en', 'Waste4Change became one of the facilitators for YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition 2018. The event is implemented by Divers Clean Action and hosted by the US Embassy.<br><br>Through Akabis Xperience, Waste4Change delivered hands-on experiences and ensured the continuing effort of supporting behavioral change regarding waste management. <br><br>61 young leaders from 11 Southeast Asia countries were given a brief presentation about the current waste management condition by Waste4Change representatives, followed by a visit to Waste4Change’s Material Recovery Facility (MRF), Waste4Change’s Composting Area, and the infamous Bantar Gebang landfill – located not far from Waste4Change’s head office.? <br><br>Upon visiting Waste4Change’s MRF, the YSEALI’s young participants were encouraged to express their curiosities. Moreover, they were also given a close-up introduction about Waste4Change’s Black Soldier Flies (BSF) nurseries and how Black Soldier Flies holds a big part in the organic waste composting process.', 'waste4change-became-one-of-the-facilitators-for-ys', 'service_about'),
(1050, 'id', 'Waste4Change menjadi salah satu fasilitator untuk YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition Workshop yang diselenggarakan oleh Divers Clean Action dan dihost oleh Kedutaan Amerika Serikat. <br>Melalui program AKABIS-Xperience, Waste4Change ingin memberikan pengalaman langsung dan memastikan adanya perubahan perilaku yang berkelanjutan dalam usaha pengelolaan sampah yang lebih baik.<br>61 pemimpin muda dari 11 negara Asia Tenggara diberikan presentasi singkat oleh perwakilan Waste4change mengenai kondisi pengelolaan sampah yang ada di Indonesia, dilanjutkan oleh kunjungan ke Rumah Pemulihan Material (RPM) dan Rumah Kompos Waste4Change, dan sekaligus ke TPST Bantar Gebang yang berlokasi tidak jauh dari kantor Waste4Change.', 'waste4change-became-one-of-the-facilitators-for-ys', 'service_about'),
(1051, 'en', 'Analysis and recommendations to implement a responsible 3R-based waste management system using the approach of 5 aspects', 'analysis-and-recommendations-to-implement-a-respon', 'service_achievement'),
(1052, 'id', 'Analisis dan rekomendasi untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab dan berbasis 3R dengan menggunakan 5 aspek pendekatan', 'analysis-and-recommendations-to-implement-a-respon', 'service_achievement'),
(1053, 'en', 'Identification of waste management method that is potential to be developed', 'identification-of-waste-management-method-that-is-', 'service_achievement'),
(1054, 'id', 'Identifikasi metode pengelolaan sampah yang memiliki potensi untuk dikembangkan', 'identification-of-waste-management-method-that-is-', 'service_achievement'),
(1055, 'en', 'Written report and presentation of 3R-based waste management', 'written-report-and-presentation-of-3r-based-waste-', 'service_achievement'),
(1056, 'id', 'Laporan tertulis beserta presentasi mengenai pengelolaan sampah berbasis 3R', 'written-report-and-presentation-of-3r-based-waste-', 'service_achievement'),
(1057, 'en', 'Data collection activities were done through interview, field observation, questionnaire distribution and waste sampling in favor of analyzing the major problems that occurred in Beting Village and Jami\' Mosque area', 'data-collection-activities-were-done-through-inter', 'service_achievement'),
(1058, 'id', 'Aktivitas pengumpulan data dilakukan dengan cara wawancara, observasi lapangan, pendistribusian kuesioner, serta pengambilan sampel sampah dalam rangka menganalisis masalah utama yang terjadi di Desa Beting dan area masjid Jami\'', 'data-collection-activities-were-done-through-inter', 'service_achievement'),
(1059, 'en', 'Analyzed the current management system by identifying the existing law, Institution, Operational Techniques, Community Participation and Finance aspects respectively', 'analyzed-the-current-management-system-by-identify', 'service_achievement'),
(1060, 'id', 'Menganalisis sistem manajemen sampah yang ada dengan mengidentifikasi peraturan yang ada, institusi, teknis operasional, partisipasi masyarakat, serta aspek finansialnya secara berurutan', 'analyzed-the-current-management-system-by-identify', 'service_achievement'),
(1061, 'en', 'Key players and stakeholders mapping', 'key-players-and-stakeholders-mapping', 'service_achievement'),
(1062, 'id', 'Pemetaan aktor yang krusial dan pemangku kepentingan', 'key-players-and-stakeholders-mapping', 'service_achievement'),
(1063, 'en', 'Comprehensive waste flow analysis of Jakarta and Surabaya City', 'comprehensive-waste-flow-analysis-of-jakarta-and-s', 'service_achievement'),
(1064, 'id', 'Analisis alur sampah yang komprehensi di kota Jakarta Surabaya', 'comprehensive-waste-flow-analysis-of-jakarta-and-s', 'service_achievement'),
(1065, 'en', 'Identification of recycling rate in Jakarta and Surabaya', 'identification-of-recycling-rate-in-jakarta-and-su', 'service_achievement'),
(1066, 'id', 'Identifikasi tingkat daur ulang sampah di Jakarta dan Surabaya', 'identification-of-recycling-rate-in-jakarta-and-su', 'service_achievement'),
(1067, 'en', 'Solid Waste Management SWOT analysis of Jakarta and Surabaya City', 'solid-waste-management-swot-analysis-of-jakarta-an', 'service_achievement'),
(1068, 'id', 'Analisis SWOT Pengelolaan Sampah di Jakarta dan Surabaya', 'solid-waste-management-swot-analysis-of-jakarta-an', 'service_achievement'),
(1069, 'en', 'Retrieved better understanding on the total amount and characteristics of plastics that lies in Jakarta\'s rivers, which has become a problem in the past years, as well as analyzed the best way to tackle these issues', 'retrieved-better-understanding-on-the-total-amount', 'service_achievement'),
(1070, 'id', 'Memperoleh pemahaman yang lebih baik mengenai jumlah dan karakteristik plastik yang berada di sungai-sungai di Jakarta, yang memang sudah menjadi masalah selama beberapa tahun belakangan, sekaligus menganalisis cara yang paling tepat untuk mengatasi masalah tersebut', 'retrieved-better-understanding-on-the-total-amount', 'service_achievement'),
(1071, 'en', 'Published paper regarding the project can be found in the following link', 'published-paper-regarding-the-project-can-be-found', 'service_achievement'),
(1072, 'id', 'Makalah ilmiah mengenai proyek ini bisa dibaca di link berikut', 'published-paper-regarding-the-project-can-be-found', 'service_achievement'),
(1073, 'en', 'Solid Waste Characteristics and solid-waste existing system review', 'solid-waste-characteristics-and-solid-waste-existi', 'service_achievement'),
(1074, 'id', 'Ulasan mengenai karakteristik sampah padat serta sistem pengelolaan sampah padat yang sudah ada', 'solid-waste-characteristics-and-solid-waste-existi', 'service_achievement'),
(1075, 'en', 'Solid waste supply plan review and its possible disruptions', 'solid-waste-supply-plan-review-and-its-possible-di', 'service_achievement'),
(1076, 'id', 'Ulasan rencana pasokan sampah padat dan kemungkinan interupsi yang terjadi', 'solid-waste-supply-plan-review-and-its-possible-di', 'service_achievement'),
(1077, 'en', 'Suitability study of the current site for Waste-to-Energy facility', 'suitability-study-of-the-current-site-for-waste-to', 'service_achievement'),
(1078, 'id', 'Studi kecocokan untuk area yang akan menjadi tempat dibangunnya fasilitas Waste-to-Energy', 'suitability-study-of-the-current-site-for-waste-to', 'service_achievement'),
(1079, 'en', 'Increased awareness and action of employees towards responsible waste management', 'increased-awareness-and-action-of-employees-toward', 'service_achievement'),
(1080, 'id', 'Peningkatan kesadaran dan perilaku para pegawai terhadap konsep pengelolaan sampah yang bertanggung jawab', 'increased-awareness-and-action-of-employees-toward', 'service_achievement'),
(1081, 'en', 'Increased segregation rate', 'increased-segregation-rate', 'service_achievement'),
(1082, 'id', 'Bertambahnya tingkat daur ulang sampah', 'increased-segregation-rate', 'service_achievement'),
(1083, 'en', 'Decreased residual waste generation', 'decreased-residual-waste-generation', 'service_achievement'),
(1084, 'id', 'Berkurangnya produksi sampah residu', 'decreased-residual-waste-generation', 'service_achievement'),
(1085, 'en', 'Increased economic incentives from composting', 'increased-economic-incentives-from-composting', 'service_achievement'),
(1086, 'id', 'Penambahan insentif ekonomi dari hasil mengkompos', 'increased-economic-incentives-from-composting', 'service_achievement'),
(1087, 'en', 'Reports containing progress activities, lessons learnt and best practices of TPS3R', 'reports-containing-progress-activities-lessons-le', 'service_achievement'),
(1088, 'id', 'Laporan yang mencakup perkembangan, pelajaran yang didapat, serta contoh praktik terbaik dari TPS3R', 'reports-containing-progress-activities-lessons-le', 'service_achievement'),
(1089, 'en', 'Proceedings of Workshop/ Consignment Proceedings', 'proceedings-of-workshop-consignment-proceedings', 'service_achievement'),
(1090, 'id', 'Catatan Workshop/ Catatan Konsinyasi', 'proceedings-of-workshop-consignment-proceedings', 'service_achievement'),
(1091, 'en', 'Video and audio visual documentation of Monitoring and Evaluation activities', 'video-and-audio-visual-documentation-of-monitoring', 'service_achievement'),
(1092, 'id', 'Video dan dokumentasi audio visual dari aktivitas Monitoring dan Evaluasi', 'video-and-audio-visual-documentation-of-monitoring', 'service_achievement'),
(1093, 'en', 'The formation of Eco Ranger: a group of local people that operates waste management systems and also educates tourists and locals about environmental issues.The Eco Ranger is formed to support the cleanliness and sustainability of their home-environment as one of the famous tourist destinations in Indonesia', 'the-formation-of-eco-ranger:-a-group-of-local-peop', 'service_achievement'),
(1094, 'id', 'Pembentukan Eco Ranger, sekelompok orang dari masyarakat lokal yang mengoperasikan sistem pengelolaan sampah, mengedukasi wisatawan dan orang lokal mengenai isu lingkungan, dan memastikan bahwa rumah mereka yang menjadi destinasi wisata tetap bersih dan indah untuk dinikmati oleh generasi-generasi berikutnya', 'the-formation-of-eco-ranger:-a-group-of-local-peop', 'service_achievement'),
(1095, 'en', 'Technical assistance, capacity building, connecting partners and funding sources, assistance in making Standard Operating Procedure, and continuous monitoring and evaluation for 3 years', 'technical-assistance-capacity-building-connectin', 'service_achievement'),
(1096, 'id', 'Bantuan teknis, peningkatan kapasitas, menghubungkan partner dan sumber pendanaan, pendampingan dalam merancang SOP, dan pemantauan serta evaluasi yang dilakukan terus menerus selama 3 tahun lamanya', 'technical-assistance-capacity-building-connectin', 'service_achievement'),
(1097, 'en', 'Waste Management Education to local communities and stakeholders', 'waste-management-education-to-local-communities-an', 'service_achievement'),
(1098, 'id', 'Edukasi manajemen sampah terhadap masyarakat lokal dan para pemangku kepentingan', 'waste-management-education-to-local-communities-an', 'service_achievement'),
(1099, 'en', 'Technical guideline of organic and inorganic waste handling', 'technical-guideline-of-organic-and-inorganic-waste', 'service_achievement'),
(1100, 'id', 'Panduan teknis mengenai penanganan sampah organik dan anorganik', 'technical-guideline-of-organic-and-inorganic-waste', 'service_achievement'),
(1101, 'en', 'Formation of organization and follow-up work plan', 'formation-of-organization-and-follow-up-work-plan', 'service_achievement'),
(1102, 'id', 'Pembentukan organisasi dan tindak lanjut rencana kerja', 'formation-of-organization-and-follow-up-work-plan', 'service_achievement'),
(1103, 'en', 'Forming the Task Force which in charge of increasing the environmental awareness and 3R principle application amongst other school residents. The Task Force members are consist of selected teachers and students from each school', 'forming-the-task-force-which-in-charge-of-increasi', 'service_achievement'),
(1104, 'id', 'Pembentukan Satuan Tugas. Melalui program ini, para anggota Satuan Tugas bertanggung jawab untuk mendorong timbulnya kesadaran lingkungan di kalangan warga sekolah dan menerapkan prinsip 3R di kehidupan sehari-hari. Anggota Satuan Tugas terdiri dari murid dan guru yang sudah dipilih dari setiap sekolah', 'forming-the-task-force-which-in-charge-of-increasi', 'service_achievement'),
(1105, 'en', 'Organizing education events, which are AKABIS Class and AKABIS Xperience, to increase awareness and introduce several solutions to overcome the waste problem', 'organizing-education-events-which-are-akabis-clas', 'service_achievement'),
(1106, 'id', 'Mengadakan acara edukatif, yaitu AKADEMI BIJAK SAMPAH (AKABIS) Class and Xperience, untuk meningkatkan kesadaran dan memperkenalkan beberapa solusi dari masalah sampah yang ada', 'organizing-education-events-which-are-akabis-clas', 'service_achievement'),
(1107, 'en', 'Each school was expected to be able to carry on the Recycle Day activities independently, in which students are encouraged to put recyclable waste in the designated bin to be recycled. Waste4Change conducted monitoring and evaluation of the waste generated during the activities', 'each-school-was-expected-to-be-able-to-carry-on-th', 'service_achievement'),
(1108, 'id', 'Setiap sekolah diharapkan mampu menjalankan aktivitas Recycle Day, dimana para murid didorong untuk menaruh sampah yang bisa didaur ulang ke dalam kantong sampah yang sesuai. Waste4Change melakukan pengawasan dan evaluasi terhadap sampah yang dihasilkan selama aktivitas berlangsung', 'each-school-was-expected-to-be-able-to-carry-on-th', 'service_achievement'),
(1109, 'en', 'Sharing Session: why we need to be responsible for our solid waste management?', 'sharing-session:-why-we-need-to-be-responsible-for', 'service_achievement'),
(1110, 'id', 'Sesi Sharing: kenapa kita harus menerapkan pengelolaan sampah padat yang bertanggung jawab?', 'sharing-session:-why-we-need-to-be-responsible-for', 'service_achievement'),
(1111, 'en', 'Presentation Session: how can we conduct responsible solid waste management starting from our office?', 'presentation-session:-how-can-we-conduct-responsib', 'service_achievement'),
(1112, 'id', 'Sesi Presentasi: bagaimana kita bisa menerapkan pengelolaan sampah yang ertanggung jawab dimulai dari kantor sendiri?', 'presentation-session:-how-can-we-conduct-responsib', 'service_achievement'),
(1113, 'en', 'Interactive Games', 'interactive-games', 'service_achievement'),
(1114, 'id', 'Permainan Interaktif', 'interactive-games', 'service_achievement'),
(1115, 'en', 'Open discussion with fellow panels and audiences on solid waste management', 'open-discussion-with-fellow-panels-and-audiences-o', 'service_achievement'),
(1116, 'id', 'Bagaimana cara menangani dan mengelola sampah secara bertanggung jawab dan berkelanjutan, terutama sampah kertas', 'open-discussion-with-fellow-panels-and-audiences-o', 'service_achievement'),
(1117, 'en', 'The importance of responsible solid waste management', 'the-importance-of-responsible-solid-waste-manageme', 'service_achievement'),
(1118, 'id', 'Pentingnya pengelolaan sampah padat yang bertanggung jawab', 'the-importance-of-responsible-solid-waste-manageme', 'service_achievement'),
(1119, 'en', 'How to handle and treat waste responsibly and sustainably especially on paper waste', 'how-to-handle-and-treat-waste-responsibly-and-sust', 'service_achievement'),
(1120, 'id', 'Bagaimana cara menanggulangi kerugian yang disebabkan oleh sampah terhadap manusia dan makhluk hidup lain', 'how-to-handle-and-treat-waste-responsibly-and-sust', 'service_achievement'),
(1121, 'en', 'How to mitigate adverse effects of waste for humans and other living creatures', 'how-to-mitigate-adverse-effects-of-waste-for-human', 'service_achievement'),
(1122, 'id', 'Adanya diskusi terbuka antara pembicara dan peserta mengenai pengelolaan sampah padat', 'how-to-mitigate-adverse-effects-of-waste-for-human', 'service_achievement'),
(1123, 'en', 'Shock Moment: all participants are invited to see the magnitude of waste problems by visiting Bantar Gebang Landfill', 'shock-moment:-all-participants-are-invited-to-see-', 'service_achievement'),
(1124, 'id', 'Shock Moment: semua peserta diajak untuk menyaksikan besarnya permasalahan sampah yang kita hadapi melalui kunjungan ke TPST Bantar Gebang', 'shock-moment:-all-participants-are-invited-to-see-', 'service_achievement'),
(1125, 'en', 'O\' Moment: responsible waste management presentation regarding why they must be responsible with their waste', 'o-moment:-responsible-waste-management-presentati', 'service_achievement'),
(1126, 'id', 'O\'Moment: presentasi mengenai pengelolaan sampah yang bertanggung jawab dan mengapa setiap orang harus bertanggung jawab terhadap sampahnya', 'o-moment:-responsible-waste-management-presentati', 'service_achievement'),
(1127, 'en', 'Facility Tour: visiting W4C\'s facilities, including our Material Recovery Facility and Composting House', 'facility-tour:-visiting-w4cs-facilities-includin', 'service_achievement'),
(1128, 'id', 'Tur Fasilitas: Mengunjungi fasilitas milik Waste4Change, yaitu Rumah Pemulihan Material dan Rumah Kompos', 'facility-tour:-visiting-w4cs-facilities-includin', 'service_achievement'),
(1129, 'en', 'Community Assistance', 'community-assistance', 'service_offer_name'),
(1130, 'id', 'Community Assistance', 'community-assistance', 'service_offer_name'),
(1131, 'en', 'Community Capacity Building', 'community-capaciity-building', 'service_offer_name'),
(1132, 'id', 'Community Capacity Building', 'community-capaciity-building', 'service_offer_name'),
(1133, 'en', 'AKABIS CLASS', 'akabis-class', 'service_offer_name'),
(1134, 'id', 'AKABIS CLASS', 'akabis-class', 'service_offer_name'),
(1135, 'en', 'AKABIS XPERIENCE', 'akabis-xperience', 'service_offer_name'),
(1136, 'id', 'AKABIS XPERIENCE', 'akabis-xperience', 'service_offer_name'),
(1137, 'en', 'One-day Visit', 'one-day-visit', 'service_offer_name'),
(1138, 'id', 'Kunjungan 1 Hari', 'one-day-visit', 'service_offer_name'),
(1139, 'en', 'Five-day Visit', 'five-day-visit', 'service_offer_name'),
(1140, 'id', 'Kunjungan 5 Hari', 'five-day-visit', 'service_offer_name'),
(1141, 'en', '21 Days of Intensive Program', '21-days-of-intensive-program', 'service_offer_name'),
(1142, 'id', 'Program Intensif Selama 21 Hari', '21-days-of-intensive-program', 'service_offer_name'),
(1143, 'en', 'Planning and operational assistance for a minimum duration of 6 months to ensure the sustainability of the SWM program\'s  within a certain area.<br>Encourage communities\' aspiration and assist them to take actions on responsible solid waste management programs within their neighborhood.<br>Designed for neighborhood, city, offices.', 'planning-and-operational-assistance-for-a-minimum-', 'service_offer_decription'),
(1144, 'id', 'Perencanaan dan pendampingan operasional selama minimal 6 bulan untuk memastikan keberlanjutan dari program SWM di suatu daerah/area tertentu<br>Mendorong aspirasi dari komunitas lokal dan membantu mereka untuk mengambil tindakan nyata dalam program pengelolaan sampah yang bertanggung jawab di lingkungan mereka masing-masing<br>Dirancang untuk perumahan, kota, dan perkantoran', 'planning-and-operational-assistance-for-a-minimum-', 'service_offer_decription'),
(1145, 'en', 'Community Based Capacity Building is a 3-days training activities for local waste organization\'s.<br>Deepen their understanding towards institutional management concept in waste sector and assist them to make a sustainable action plan.<br>Designed to empower Solid Waste Activists, Waste Banks, Government,  Civil Society Group (TPS 3R managers), Communities and Academic Institutional to perform implement responsible waste management in their communities.', 'community-based-capacity-building-is-a-3-days-trai', 'service_offer_decription'),
(1146, 'id', 'Community Based Capacity Building adalah sebuah pelatihan selama 3 hari untuk organisasi sampah di tingkat lokal <br>Bertujuan untuk memperdalam pemahaman mereka terhadap konsep manajemen institusi dalam sektor persampahan dan membantu mereka untuk membuat rencana aksi yang berkelanjutan <br>Dirancang untuk memberdayakan Aktivis Sampah, Bank Sampah, Pemerintah, Kelompok Masyarakat Sipil, dan Institusi Pendidikan untuk ikut menerapkan pengelolaan sampah yang bertanggung jawab di komunitas mereka.', 'community-based-capacity-building-is-a-3-days-trai', 'service_offer_decription'),
(1147, 'en', 'A 2-hour In-class training and discussion<br>Held in client\'s institution<br>Akabis Class can be attended by:<ul style=\"padding-inline-start: 17px;\"><li>The general public, especially people who wish to be the agents of change and to prepare for a better future of waste management in Indonesia</li><li>Institution</li></ul>', 'a-2-hour-in-class-training-and-discussion<br>held-', 'service_offer_decription'),
(1148, 'id', 'Pelatihan dan diskusi dalam ruangan dengan durasi 2 jam<br>Diadakan di tempat klien<br>Akabis Class dapat diikuti oleh:<ul style=\"padding-inline-start: 17px;\"><li>Masyarakat umum, terutama masyarakat yang ingin menjadi agen perubahan demi masa depan pengelolaan sampah di Indonesia yang lebih baik lagi</li><li>Institusi</li></ul>', 'a-2-hour-in-class-training-and-discussion<br>held-', 'service_offer_decription'),
(1149, 'en', 'A 6-hour educational tour and interactive discussion<br>Visit to landfill<br>Visit to W4C Facility<br>Akabis Xperience can be  attended by:<ul style=\"padding-inline-start: 17px;\"><li>The general public who are the agents of change for a better future of waste management in Indonesia</li><li>Institution</li></ul>', 'a-6-hour-educational-tour-and-interactive-discussi', 'service_offer_decription'),
(1150, 'id', 'Tur edukasional dan diskusi interaktif yang berlangsung selama 6 jam<br>Kunjungan ke TPAI<br>Kunjungan ke Fasilitas W4C <br>Akabis Xperience dapat diikuti oleh<ul style=\"padding-inline-start: 17px;\"><li>Masyarakat umum, terutama anak muda yang menjadi agen perubahan demi masa depan pengelolaan sampah di Indonesia yang lebih baik lagi</li><li>Institusi</li></ul>', 'a-6-hour-educational-tour-and-interactive-discussi', 'service_offer_decription'),
(1151, 'en', 'Tour and introduction of BSF cultivation and breeding facilities to see the maintenance methods as well as the decomposition process of food waste using BSF', 'tour-and-introduction-of-bsf-cultivation-and-breed', 'service_offer_decription'),
(1152, 'id', 'Tur dan pengenalan fasilitas pengembangbiakan dan pembudidayaan BSF untuk melihat metode pemeliharaan dan proses pembusukan sampah makanan menggunakan BSF', 'tour-and-introduction-of-bsf-cultivation-and-breed', 'service_offer_decription'),
(1153, 'en', 'Engage in a more detailed exploration through direct practice of breeding and cultivating BSF for 5 days in our facility', 'engage-in-a-more-detailed-exploration-through-dire', 'service_offer_decription'),
(1154, 'id', 'Eksplorasi yang lebih mendetail dalam bentuk berlatih langsung membudidayakan dan beternak BSF selama 5 hari di fasilitas kami', 'engage-in-a-more-detailed-exploration-through-dire', 'service_offer_decription'),
(1155, 'en', 'This is suitable for business actors who aspire to develop their very own BSF breeding and cultivation facilities. We will help you to design and plan your own BSF cultivation and breeding facilities in your city/area', 'this-is-suitable-for-business-actors-who-aspire-to', 'service_offer_decription'),
(1156, 'id', 'Program ini cocok untuk pelaku bisnis yang ingin mengembangkan peternakan dan budidaya BSFnya sendiri. Kami akan membantu Anda untuk merancang dan merencanakan fasilitas budidaya dan penembangbiakan BSF di kota/domisili Anda', 'this-is-suitable-for-business-actors-who-aspire-to', 'service_activity_name'),
(1157, 'en', 'Phase 1', 'phase-1', 'service_activity_name'),
(1158, 'id', 'Tahap 1', 'phase-1', 'service_activity_name'),
(1159, 'en', 'Phase 2', 'phase-2', 'service_activity_name'),
(1160, 'id', 'Tahap 2', 'phase-2', 'service_activity_name'),
(1161, 'en', 'Raising Awareness through AKABIS', 'raising-awareness-through-akabis', 'service_activity_description'),
(1162, 'id', 'Meningkatkan Kesadaran melalui AKABIS', 'raising-awareness-through-akabis', 'service_activity_description'),
(1163, 'en', 'Forming Task Force, Planning, Capacity Building, and Assistance', 'forming-task-force-planning-capacity-building-a', 'service_activity_description'),
(1164, 'id', 'Pembentukan Satuan Tugas, Perencanaan, Peningkatan Kapasitas, dan Pendampingan', 'forming-task-force-planning-capacity-building-a', 'service_activity_description'),
(1165, 'en', '100% holistic-approach on waste management', '100-holistic-approach-on-waste-management', 'service_benefit_name'),
(1166, 'id', 'Pendekatan manajemen sampah yang 100% terpilah', '100-holistic-approach-on-waste-management', 'service_benefit_name'),
(1167, 'en', 'Supports and in line with Peraturan Pemerintah No.81  Tahun 2012 and Peraturan Presiden Nomor 97 Tahun 2017 (JAKSTRANAS)', 'support-and-in-line-with-perpres-no-97-tahun-2017', 'service_benefit_name'),
(1168, 'id', 'Menaati Peraturan Pemerintah (PP) No. 81 Tahun 2012 tentang Pengelolaan Sampah Rumah Tangga dan Sampah Sejenis Rumah Tangga, serta mendukung Peraturan Presiden Nomor 97 Tahun 2017 (JAKSTRANAS)', 'support-and-in-line-with-perpres-no-97-tahun-2017', 'service_benefit_name'),
(1169, 'en', 'Adding sustainable and environmental-friendly value to client\'s brand image', 'adding-sustainable-and-environmental-friendly-valu', 'service_benefit_name'),
(1170, 'id', 'Meningkatkan citra perusahaan', 'adding-sustainable-and-environmental-friendly-valu', 'service_benefit_name'),
(1171, 'en', 'Increasing staff\'s awareness of waste issues', 'increasing-staffs-awareness-of-waste-issues', 'service_benefit_name'),
(1172, 'id', 'Meningkatkan kepedulian pegawai tentang isu sampah', 'increasing-staffs-awareness-of-waste-issues', 'service_benefit_name'),
(1173, 'en', 'Reduce volume of waste into landfill', 'reduce-waste-to-landfill', 'service_benefit_name'),
(1174, 'id', 'Mengurangi timbulan sampah yang dibuang ke TPA', 'reduce-waste-to-landfill', 'service_benefit_name'),
(1175, 'en', 'Prevent your brand-labelled products for being misused, imitated or forged', 'prevent-your-brand-labelled-products-for-being-mis', 'service_benefit_name'),
(1176, 'id', 'Mencegah produk berlabel merek Anda agar tidak disalahgunakan, dibuat imitasinya, atau dipalsukan', 'prevent-your-brand-labelled-products-for-being-mis', 'service_benefit_name'),
(1177, 'en', 'Waste journey report', 'waste-journey-report', 'service_benefit_name'),
(1178, 'id', 'Laporan tentang alur sampah', 'waste-journey-report', 'service_benefit_name'),
(1179, 'en', 'Help to increase recycling rate', 'help-to-increase-recycling-rate', 'service_benefit_name'),
(1180, 'id', 'Membantu meningkatkan tingkat daur ulang', 'help-to-increase-recycling-rate', 'service_benefit_name'),
(1181, 'en', 'Wider reach', 'wider-reach', 'service_benefit_name'),
(1182, 'id', 'Jangkauan yang Lebih Luas', 'wider-reach', 'service_benefit_name'),
(1183, 'en', 'Meet the needs of your brand customers in more locations in Indonesia', 'meet-the-needs-of-your-brand-customers-in-more-loc', 'service_benefit_name'),
(1184, 'id', 'Melayani kebutuhan pelanggan merek Anda di lebih banyak tempat di Indonesia', 'meet-the-needs-of-your-brand-customers-in-more-loc', 'service_benefit_name'),
(1185, 'en', 'The real action in encouraging the implementation of 3R and responsible waste management in Indonesia, especially in the educational sector', 'the-real-action-in-encouraging-the-implementation-', 'service_benefit_name'),
(1186, 'id', 'Sebagai bentuk nyata penerapan 3R dan pengelolaan sampah yang bertanggung jawab di Indonesia, terutama di sektor pendidikan', 'the-real-action-in-encouraging-the-implementation-', 'service_benefit_name'),
(1187, 'en', 'Supporting the green concept of our clients\' brand image', 'supporting-the-green-concept-of-our-clients-brand', 'service_benefit_name'),
(1188, 'id', 'Memperkuat citra positif perusahaan', 'supporting-the-green-concept-of-our-clients-brand', 'service_benefit_name'),
(1189, 'en', 'Increased knowledge and capacity of students and teachers about the 3R concept', 'increased-knowledge-and-capacity-of-students-and-t', 'service_benefit_name'),
(1190, 'id', 'Peningkatan pengetahuan dan kapasitas murid serta guru mengenai prinsip 3R', 'increased-knowledge-and-capacity-of-students-and-t', 'service_benefit_name'),
(1191, 'en', 'Schools can contribute to supporting and executing a responsible waste management system in their facility', 'schools-can-contribute-to-supporting-and-executing', 'service_benefit_name'),
(1192, 'id', 'Sekolah dapat berkontribusi untuk mewujudkan pengelolaan sampah yang bertanggung jawab di sekolah-sekolah', 'schools-can-contribute-to-supporting-and-executing', 'service_benefit_name'),
(1193, 'en', 'Available for every school located in Indonesia, we support our client\'s school to become an example of a green and sustainable educational facility', 'available-for-every-school-located-in-indonesia-w', 'service_benefit_name'),
(1194, 'id', 'Tersedia untuk setiap sekolah yang berlokasi di Indonesia, kami mendukung sekolah klien kami untuk menjadi contoh fasilitas pendidikan yang hijau dan berkelanjutan', 'available-for-every-school-located-in-indonesia-w', 'service_benefit_name'),
(1195, 'en', 'For schools located in Jakarta, we help to support the school to become a potential candidate to apply for the Sekolah ADIWIYATA program', 'for-schools-located-in-jakarta-we-help-to-support', 'service_benefit_name'),
(1196, 'id', 'Menjadi kandidat potensial untuk mendaftar program Sekolah ADIWIYATA', 'for-schools-located-in-jakarta-we-help-to-support', 'service_benefit_name'),
(1197, 'en', 'Solid Waste Management Feasibility Study', 'solid-waste-management-feasibility-study', 'service_expertise_name'),
(1198, 'id', 'Studi Kelayakan Pengelolaan Sampah Padat', 'solid-waste-management-feasibility-study', 'service_expertise_name'),
(1199, 'en', 'Waste Audit', 'waste-audit', 'service_expertise_name'),
(1200, 'id', 'Audit Sampah', 'waste-audit', 'service_expertise_name'),
(1201, 'en', 'Technical and Operational Design of SWM', 'technical-and-operational-design-of-swm', 'service_expertise_name'),
(1202, 'id', 'Desain Operasional dan Teknis Pengelolaan Sampah Padat', 'technical-and-operational-design-of-swm', 'service_expertise_name'),
(1203, 'en', 'SWM Regulatory Analysis', 'swm-regulatory-analysis', 'service_expertise_name'),
(1204, 'id', 'Analisis Peraturan Pengelolaan Sampah Padat', 'swm-regulatory-analysis', 'service_expertise_name'),
(1205, 'en', 'Behavior Change Analysis', 'behavior-change-analysis', 'service_expertise_name'),
(1206, 'id', 'Analisis Perubahan Perilaku', 'behavior-change-analysis', 'service_expertise_name'),
(1207, 'en', 'Financial Analysis', 'financial-analysis', 'service_expertise_name'),
(1208, 'id', 'Analisis Finansial', 'financial-analysis', 'service_expertise_name'),
(1209, 'en', 'Institutional Analysis', 'institutional-analysis', 'service_expertise_name'),
(1210, 'id', 'Analisis Institusional', 'institutional-analysis', 'service_expertise_name'),
(1211, 'en', 'Stakeholders Mapping', 'stakeholders-mapping', 'service_expertise_name'),
(1212, 'id', 'Pemetaan Pemangku Kepentingan', 'stakeholders-mapping', 'service_expertise_name'),
(1213, 'en', 'Recycling Value Chain Analysis', 'recycling-value-chain-analysis', 'service_expertise_name'),
(1214, 'id', 'Analisis Rantai Nilai Daur Ulang', 'recycling-value-chain-analysis', 'service_expertise_name'),
(1215, 'en', 'Material Flow Analysis/ VCA', 'material-flow-analysis-vca', 'service_expertise_name'),
(1216, 'id', 'Analisis Alur Materi (VCA)', 'material-flow-analysis-vca', 'service_expertise_name'),
(1217, 'en', 'Waste to Energy Feasibility Study', 'waste-to-energy-feasibility-study', 'service_expertise_name'),
(1218, 'id', 'Studi Kelayakan Waste to Energy', 'waste-to-energy-feasibility-study', 'service_expertise_name'),
(1219, 'en', 'Trash bag designated to support waste segregation', 'trash-bag-designated-to-support-waste-segregation', 'service_facility_name'),
(1220, 'id', 'Kantong sampah yang akan mendukung pemilahan sampah', 'trash-bag-designated-to-support-waste-segregation', 'service_facility_name'),
(1221, 'en', 'Waste collection in a segregated state', 'waste-collection-in-a-segregated-state', 'service_facility_name'),
(1222, 'id', 'Pengangkutan sampah dalam kondisi terpilah', 'waste-collection-in-a-segregated-state', 'service_facility_name'),
(1223, 'en', 'One-time technical induction training', 'one-time-technical-induction-training', 'service_facility_name'),
(1224, 'id', 'Pelatihan induksi teknis sebanyak satu kali', 'one-time-technical-induction-training', 'service_facility_name'),
(1225, 'en', 'Inorganic trash bag', 'inorganic-trash-bag', 'service_facility_name'),
(1226, 'id', 'Kantong sampah anorganik', 'inorganic-trash-bag', 'service_facility_name'),
(1227, 'en', 'Comprehensive waste management system in the distribution line', 'comprehensive-waste-management-system-in-the-distr', 'service_facility_name'),
(1228, 'id', 'Sistem pengelolaan sampah yang komprehensif di lini distribusi ', 'comprehensive-waste-management-system-in-the-distr', 'service_facility_name'),
(1229, 'en', 'Responsible waste management for residual waste (waste that are difficult to be recycled) without sending it to the landfills (on demand)', 'responsible-waste-management-for-residual-waste-w', 'service_facility_name'),
(1230, 'id', 'Pengelolaan sampah yang bertanggung jawab untuk sampah residu (sampah yang sulit didaur ulang) tanpa mengirimnya ke TPA (berdasarkan permintaan)', 'responsible-waste-management-for-residual-waste-w', 'service_facility_name'),
(1231, 'en', 'Increase the number of waste that can be further processed through recycling method', 'increase-the-number-of-waste-that-can-be-further-p', 'service_facility_name'),
(1232, 'id', 'Meningkatkan jumlah sampah yang dapat diproses melalui metode daur ulang', 'increase-the-number-of-waste-that-can-be-further-p', 'service_facility_name'),
(1233, 'en', 'Easy waste collection and recycling system supported by web and mobile applications', 'easy-waste-collection-and-recycling-system-support', 'service_facility_name');
INSERT INTO `dictionary` (`dictionary_id`, `language_code`, `dictionary_content`, `dictionary_slug`, `dictionary_type`) VALUES
(1234, 'id', 'Proses pengangkutan dan pendaur ulangan sampah yang lebih mudah dengan didukung website dan aplikasi handphone', 'easy-waste-collection-and-recycling-system-support', 'service_facility_name'),
(1235, 'en', 'Waste segregation by client', 'waste-segregation-by-client', 'service_flow_name'),
(1236, 'id', 'Pemilahan sampah oleh klien', 'waste-segregation-by-client', 'service_flow_name'),
(1237, 'en', 'Waste storage in transfer point/ TPST', 'waste-storage-in-transfer-point-tpst', 'service_flow_name'),
(1238, 'id', 'Penyimpanan sampah di titik transfer/ TPST', 'waste-storage-in-transfer-point-tpst', 'service_flow_name'),
(1239, 'en', 'Segregated waste collection', 'segregated-waste-collection', 'service_flow_name'),
(1240, 'id', 'Pengumpulan sampah terpilah', 'segregated-waste-collection', 'service_flow_name'),
(1241, 'en', 'Waste processing in W4C\'s Material Recovery Facility (MRF)', 'waste-processing-in-w4cs-material-recovery-facili', 'service_flow_name'),
(1242, 'id', 'Pengolahan sampah di Rumah Pemulihan Material W4C', 'waste-processing-in-w4cs-material-recovery-facili', 'service_flow_name'),
(1243, 'en', 'Residue being sent to the landfill', 'residue-being-sent-to-the-landfill', 'service_flow_name'),
(1244, 'id', 'Residu dikirim ke TPA', 'residue-being-sent-to-the-landfill', 'service_flow_name'),
(1245, 'en', 'Waste processing in W4C\'s Material Recovery Facility (MRF)', 'waste-processing-in-w4cs-material-recivery-facili', 'service_flow_name'),
(1246, 'id', 'Pengelolaan sampah di Rumah Pemulihan Material W4C', 'waste-processing-in-w4cs-material-recivery-facili', 'service_flow_name'),
(1247, 'en', 'Residue co-processing with RDF technology', 'residue-co-processing-with-rdf-technology', 'service_flow_name'),
(1248, 'id', 'Pengelolaan residu menggunakan teknologi RDF', 'residue-co-processing-with-rdf-technology', 'service_flow_name'),
(1249, 'en', 'Dropping locations in more location across Indonesia', 'dropping-locations-in-more-location-across-indones', 'service_flow_name'),
(1250, 'id', 'Lokasi setor sampah di banyak lokasi di seluruh Indonesia', 'dropping-locations-in-more-location-across-indones', 'service_flow_name'),
(1251, 'en', 'User can send or drop their waste to Waste4Change\'s partner by registering to get a unique code from website', 'user-can-send-or-drop-their-waste-to-waste4change', 'service_flow_name'),
(1252, 'id', 'Pengguna dapat menyetor sampah mereka ke partner daur ulang Waste4Change dengan mendaftarkan diri di website untuk mendapat kode unik', 'user-can-send-or-drop-their-waste-to-waste4change', 'service_flow_name'),
(1253, 'en', 'User will get points as a reward for recycling their waste', 'user-will-get-points-as-a-reward-for-recycling-the', 'service_flow_name'),
(1254, 'id', 'Pengguna akan mendapatkan poin sebagai hadiah karena sudah mendaur ulang', 'user-will-get-points-as-a-reward-for-recycling-the', 'service_flow_name'),
(1255, 'en', 'Waste responsibly managed by our partner', 'waste-responsibly-managed-by-our-partner', 'service_flow_name'),
(1256, 'id', 'Sampah dikelola secara bertanggung jawab oleh partner daur ulang kami', 'waste-responsibly-managed-by-our-partner', 'service_flow_name'),
(1257, 'en', 'Material transported to up-cycling and recycling industry to support Circular Economy', 'material-transported-to-up-cycling-and-recycling-i', 'service_flow_name'),
(1258, 'id', 'Material dikirim ke industri up-cycling dan recycling untuk mendukung Circular Economy', 'material-transported-to-up-cycling-and-recycling-i', 'service_flow_name'),
(1259, 'en', 'We ensure that your brand-labeled was not ends up in environment', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'service_flow_name'),
(1260, 'id', 'Kami memastikan sampah brand Anda tidak berakhir di TPA', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'service_flow_name'),
(1261, 'en', 'Brand', 'brand', 'service_recomendation'),
(1262, 'id', 'Merek', 'brand', 'service_recomendation'),
(1263, 'en', 'Bussiness Actor', 'bussiness-actor', 'service_recomendation'),
(1264, 'id', 'Pelaku Bisnis', 'bussiness-actor', 'service_recomendation'),
(1265, 'en', 'Company', 'company', 'service_recomendation'),
(1266, 'id', 'Perusahaan', 'company', 'service_recomendation'),
(1267, 'en', 'Company\'s CSR', 'companys-csr', 'service_recomendation'),
(1268, 'id', 'CSR Perusahaan', 'companys-csr', 'service_recomendation'),
(1269, 'en', 'Consultant', 'consultant', 'service_recomendation'),
(1270, 'id', 'Konsultan', 'consultant', 'service_recomendation'),
(1271, 'en', 'Distributor', 'distributor', 'service_recomendation'),
(1272, 'id', 'Distribusi', 'distributor', 'service_recomendation'),
(1273, 'en', 'Event Organizer', 'event', 'service_recomendation'),
(1274, 'id', 'Event Organizer', 'event', 'service_recomendation'),
(1275, 'en', 'Foundation', 'foundation', 'service_recomendation'),
(1276, 'id', 'Yayasan', 'foundation', 'service_recomendation'),
(1277, 'en', 'Government', 'government', 'service_recomendation'),
(1278, 'id', 'Pemerintah', 'government', 'service_recomendation'),
(1279, 'en', 'Hotel', 'hotels', 'service_recomendation'),
(1280, 'id', 'Hotel', 'hotels', 'service_recomendation'),
(1281, 'en', 'Individual', 'individual', 'service_recomendation'),
(1282, 'id', 'Individu', 'individual', 'service_recomendation'),
(1283, 'en', 'Office Block', 'office-blocks', 'service_recomendation'),
(1284, 'id', 'Komplek Perkantoran', 'office-blocks', 'service_recomendation'),
(1285, 'en', 'Product', 'product', 'service_recomendation'),
(1286, 'id', 'Produk', 'product', 'service_recomendation'),
(1287, 'en', 'Researcher', 'researcher', 'service_recomendation'),
(1288, 'id', 'Peneliti', 'researcher', 'service_recomendation'),
(1289, 'en', 'Residential Area/ Housing', 'residential-areahousing', 'service_recomendation'),
(1290, 'id', 'Perumahan', 'residential-areahousing', 'service_recomendation'),
(1291, 'en', 'Restaurant', 'restaurants', 'service_recomendation'),
(1292, 'id', 'Restoran', 'restaurants', 'service_recomendation'),
(1293, 'en', 'School', 'school', 'service_recomendation'),
(1294, 'id', 'Sekolah', 'school', 'service_recomendation'),
(1295, 'en', 'HSE Division', 'hse-division', 'service_recomendation'),
(1296, 'id', 'Divisi HSE', 'hse-division', 'service_recomendation'),
(1297, 'en', 'Sustainability Division', 'sustainability-division', 'service_recomendation'),
(1298, 'id', 'Divisi Sustainability', 'sustainability-division', 'service_recomendation'),
(1299, 'en', 'CSR Division', 'csr-division', 'service_recomendation'),
(1300, 'id', 'Divisi CSR', 'csr-division', 'service_recomendation'),
(1301, 'en', 'Building / Area Management', 'building-area-management', 'service_recomendation'),
(1302, 'id', 'Pengelola Bangunan/ Kawasan', 'building-area-management', 'service_recomendation'),
(1303, 'en', 'Personal', 'personal', 'service_recomendation'),
(1304, 'id', 'Personal', 'personal', 'service_recomendation'),
(1305, 'en', 'Residual Waste Treatment at the Landfill', 'residual-waste-treatment-at-the-landfill', 'section'),
(1306, 'id', 'Pengelolaan Sampah Residu di TPA', 'residual-waste-treatment-at-the-landfill', 'section'),
(1309, 'en', 'Residual Waste Treatment Using RDF Technology', 'residual-waste-treatment-using-rdf-technology', 'section'),
(1310, 'id', 'Pengelolaan Sampah Residu Menggunakan Teknologi RDF', 'residual-waste-treatment-using-rdf-technology', 'section'),
(1311, 'en', 'Residual Waste Treatment at the Landfill', 'residual-waste-treatment-at-the-landfill', 'section'),
(1312, 'id', 'Pengelolaan Limbah Sisa di TPA', 'residual-waste-treatment-at-the-landfill', 'section'),
(1313, 'en', 'Increasing audience\'s awareness of waste issues', 'increasing-audiences-awareness-of-waste-issues', NULL),
(1314, 'id', 'Meningkatkan kepedulian peserta tentang isu sampah', 'increasing-audiences-awareness-of-waste-issues', NULL),
(1315, 'en', 'Residual Treatment Using RDF Technology', 'residual-treatment-using-rdf-technology', NULL),
(1316, 'id', 'Perawatan Sampah Residu Menggunakan Teknologi RDF', 'residual-treatment-using-rdf-technology', NULL),
(1317, 'en', 'About', 'about-this-service', NULL),
(1318, 'id', 'Tentang Service Ini', 'about-this-service', NULL),
(1319, 'en', 'Approximately', 'approximately', 'service_portofolio'),
(1320, 'id', 'Kira-kira', 'approximately', 'service_portofolio'),
(1321, 'en', 'People', 'people', 'service_portofolio'),
(1322, 'id', 'orang', 'people', 'service_portofolio'),
(1323, 'en', 'Estimated Number of Participants', 'estimated-number-of-participants', 'service_portofolio'),
(1324, 'id', 'Perkiraan Jumlah Peserta', 'estimated-number-of-participants', 'service_portofolio'),
(1325, 'en', ' Event Date', 'event-date', 'service_portofolio'),
(1326, 'id', 'Tanggal Acara', 'event-date', 'service_portofolio'),
(1327, 'en', 'August - November 2019', 'agustus-november-2019', 'service_portofolio'),
(1328, 'id', 'Agustus - November 2019', 'agustus-november-2019', 'service_portofolio'),
(1329, 'en', 'Collection Schedule', 'collection-schedule', 'service_portofolio'),
(1330, 'id', 'Jadwal Pengumpulan', 'collection-schedule', 'service_portofolio'),
(1331, 'en', 'Service Duration', 'program-duration', 'service_portofolio'),
(1332, 'id', 'Durasi Layanan', 'program-duration', 'service_portofolio'),
(1333, 'en', 'Until Present', 'until-present', 'service_portofolio'),
(1334, 'id', 'Sampai Sekarang', 'until-present', 'service_portofolio'),
(1335, 'en', 'Provinces Available', 'provinces-available', 'service_achievement'),
(1336, 'id', 'Provinsi Tersedia', 'provinces-available', 'service_achievement'),
(1337, 'en', 'Number of Waste Recycling Agents Involved', 'number-of-waste-recycling-agents-involved', 'service_portfolio'),
(1338, 'id', 'Number of Waste Recycling Agents Involved', 'number-of-waste-recycling-agents-involved', 'service_portfolio'),
(1342, 'en', '41 cities across Indonesia', '41-cities-across-indonesia', 'service_portfolio'),
(1343, 'id', '41 Kota di Indonesia', '41-cities-across-indonesia', 'service_portfolio'),
(1344, 'en', 'Cities', 'cities', NULL),
(1345, 'id', 'Kota', 'cities', NULL),
(1346, 'en', '1st May - 30th June 2019', '1st-may-30th-june-2019', 'service_portfolio'),
(1347, 'id', '1 Mei - 30 Juni 2019', '1st-may-30th-june-2019', 'service_portfolio'),
(1348, 'en', '31st October 2019 - present', '31st-october-2019-present', 'service_portfolio'),
(1349, 'id', '31 Oktober 2019 - Sekarang', '31st-october-2019-present', 'service_portfolio'),
(1350, 'en', 'Retail', 'retail', 'service_recomendation'),
(1351, 'id', 'Retail', 'retail', 'service_recomendation'),
(1352, 'en', 'Store', 'store', 'service_recomendation'),
(1353, 'id', 'Toko', 'store', 'service_recomendation'),
(1354, 'en', 'Responsibly', 'responsibly', NULL),
(1355, 'id', 'Secara Bertanggung Jawab', 'responsibly', NULL),
(1356, 'en', 'Cities Available', 'cities-available', NULL),
(1357, 'id', 'Kota Tersedia', 'cities-available', NULL),
(1358, 'en', 'Join the Program', 'join-the-program', NULL),
(1359, 'id', 'Bergabung dalam Program', 'join-the-program', NULL),
(1360, 'en', 'Get Portfolio', 'get-portfolio', NULL),
(1361, 'id', 'Dapatkan Portofolio', 'get-portfolio', NULL),
(1362, 'en', 'Pick Media', 'pick-media', NULL),
(1363, 'id', 'Pilih Media', 'pick-media', NULL),
(1364, 'en', 'Number of Participants', 'number-of-participants', 'service_achievement'),
(1365, 'id', 'Jumlah Peserta', 'number-of-participants', 'service_achievement'),
(1368, 'en', 'For Clients', 'for-clients', 'service_benefit'),
(1369, 'id', 'Bagi Klien', 'for-clients', 'service_benefit'),
(1370, 'en', 'For Schools', 'for-schools', 'service_benefit'),
(1371, 'id', 'Bagi Sekolah', 'for-schools', 'service_benefit'),
(1372, 'en', 'Zero Waste to Landfill', 'zerowastetolandfill', 'service_benefit'),
(1373, 'id', 'Tidak ada sampah yang terbuang ke TPA', 'zerowastetolandfill', 'service_benefit'),
(1402, 'en', 'Marine Debris Study', 'study-about-marine-debris', 'service_expertise'),
(1403, 'id', 'Studi tentang Sampah di Laut', 'study-about-marine-debris', 'service_expertise'),
(1404, 'en', 'Participant', 'participant', 'our_achievement'),
(1405, 'id', 'Peserta', 'participant', 'our_achievement'),
(1406, 'en', 'Building', 'building', 'service_recomendation'),
(1407, 'id', 'Bangunan', 'building', 'service_recomendation'),
(1408, 'en', 'School Management', 'school-management', 'service_recomendation'),
(1409, 'id', 'Pengurus Sekolah', 'school-management', 'service_recomendation'),
(1410, 'en', 'Offer', 'offer', 'service_section'),
(1411, 'id', 'Penawaran', 'offer', 'service_section'),
(1412, 'en', 'Reciever', 'reciever', 'our_achievement'),
(1413, 'id', 'Penerima', 'reciever', 'our_achievement'),
(1414, 'en', 'Akademi Bijak Sampah (AKABIS) is an education model created by Waste4Change to raise awareness on the importance of protecting the environment, especially in responsible waste management. If your institution is willing to experience first-hand field visits that stimulate all 4 senses, we can provide you with Akabis Xperience, a 6-hour educational tour to our facilities and landfill with interactive discussion.<br><br>To accommodate those with time limitation, we can also provide you with Akabis Class, a 2-hour In-class training and discussion on responsible waste management that can be carried out at the client\'s preferred location.\r\n', 'akademi-bijak-sampah-akabis-is-an-education-mode-created-by', 'service_about'),
(1415, 'id', 'Akademi Bijak Sampah (AKABIS) adalah sebuah model edukasi yang dibuat oleh Waste4Change untuk meningkatkan kesadaran mengenai pentingnya menjaga lingkungan, terutama mengenai pengelolaan sampah yang bertanggung jawab. Jika institusi Anda ingin merasakan pengalaman langsung kunjungan lapangan yang merangsang keempat indra manusia, kami bisa menawarkan Anda program AKABIS-Xperience, tur edukasional yang berlangsung selama 6 jam ke fasilitas milik Waste4Change dan TPA yang disertai dengan diskusi interaktif. <br><br>Selain itu, untuk mengakomodasi Anda yang memiliki waktu yang terbatas, kami juga menawarkan AKABIS-Class, sebuah pelatihan yang berlangsung selama 2 jam dan dilakukan di dalam ruangan, lengkap dengan diskusi mengenai pengelolaan sampah yang bertanggung jawab dan bisa dilakukan di lokasi yang dikehendaki oleh klien.', 'akademi-bijak-sampah-akabis-is-an-education-mode-created-by', 'service_about'),
(1416, 'en', 'Package', 'pakcage', 'service_offer'),
(1417, 'id', 'Paket', 'package', 'service_offer'),
(1418, 'en', 'Recommended For', 'recommendation', 'service_section'),
(1419, 'id', 'Rekomendasi', 'recommendation', 'service_section'),
(1420, 'en', 'Enter Location', 'enter-location', 'global'),
(1421, 'id', 'Masukkan Lokasi', 'enter-location', 'global'),
(1422, 'en', 'Waste Collected and Recycled', 'waste-collected-and-recycled', 'portfolio-highlight'),
(1423, 'id', 'Kemasan terkumpul dan terdaur ulang', 'waste-collected-and-recycled', 'portfolio-highlight'),
(1424, 'en', 'Deliverables', 'deliverable', 'section'),
(1425, 'id', 'Hasil Kerja', 'deliverable', 'section'),
(1426, 'en', 'Enter the name of your city', 'enter-the-name-of-your-city', 'home service'),
(1427, 'id', 'Masukkan Nama Kota Anda', 'enter-the-name-of-your-city', 'home service'),
(1428, 'en', 'Waste Managed (kg)', 'waste-manage', 'home-counter'),
(1429, 'id', 'Sampah Terkelola (kg)', 'waste-manage', 'home-counter'),
(1430, 'en', 'Programs', 'programs', 'service_offer'),
(1431, 'id', 'Program', 'programs', 'service_offer'),
(1432, 'en', 'Implemented by', 'implemented-by', 'project_header'),
(1433, 'id', 'Di Implementasikan oleh', 'implemented-by', 'project_header'),
(1434, 'en', 'Project Finished', 'project-finished', NULL),
(1435, 'id', 'Proyek Diselesaikan', 'project-finished', NULL),
(1436, 'en', 'Our<br>Achievement', 'our-br-achievement', 'global'),
(1437, 'id', 'Pencapaian<br>Kami', 'our-br-achievement', 'global'),
(1438, 'en', 'Showing Result for', 'showing-result-for', 'service_search'),
(1439, 'id', 'Hasil Pencarian untuk', 'showing-result-for', 'service_search'),
(1440, 'en', 'Please Insert Valid City Name', 'insert-valid-city-name', 'service_search'),
(1441, 'id', 'Masukkan Nama Kota dengan benar', 'insert-valid-city-name', 'service_search'),
(1442, 'en', 'No result found for', 'no-result-found-for', 'service_search'),
(1443, 'id', 'Tidak menemukan hasil untuk pencarian', 'no-result-found-for', 'service_search'),
(1444, 'en', 'PT. Pelabuhan Indonesia II (Persero)', 'pt-pelabuhan-indonesia-ii-persero', 'service_client'),
(1445, 'id', 'PT. Pelabuhan Indonesia II (Persero)', 'pt-pelabuhan-indonesia-ii-persero', 'service_client'),
(1446, 'en', 'Ministry of Public Works and Housings', 'ministry-of-public-works-and-housings', 'service_client'),
(1447, 'id', 'Kementerian Pekerjaan Umum dan Perumahan Rakyat', 'ministry-of-public-works-and-housings', 'service_client'),
(1448, 'en', 'PT. Deloitte Konsultan Indonesia', 'pt-deloitte-konsultan-indonesia', 'service_client'),
(1449, 'id', 'PT. Deloitte Konsultan Indonesia', 'pt-deloitte-konsultan-indonesia', 'service_client'),
(1450, 'en', 'The Ocean Cleanup', 'the-ocean-cleanup', 'service_client'),
(1451, 'id', 'The Ocean Cleanup', 'the-ocean-cleanup', 'service_client'),
(1452, 'en', 'GA Circular', 'ga-circular', 'service_client'),
(1453, 'id', 'GA Circular', 'ga-circular', 'service_client'),
(1454, 'en', 'PT. Indonesia Power Up Suralaya', 'pt-indonesia-power-up-suralaya', 'service_client'),
(1455, 'id', 'PT. Indonesia Power Up Suralaya', 'pt-indonesia-power-up-suralaya', 'service_client'),
(1456, 'en', 'PT. Sarana Multi Daya, PT. Multi Karadiguna Jasa, PT. Prismaita Cipta Kreasi', 'pt-sarana-multi-daya-pt-multi-karadiguna-jasa-', 'service_client'),
(1457, 'id', 'PT. Sarana Multi Daya, PT. Multi Karadiguna Jasa, PT. Prismaita Cipta Kreasi', 'pt-sarana-multi-daya-pt-multi-karadiguna-jasa-', 'service_client'),
(1458, 'en', 'Greeneration Foundation, Coca-cola Foundation Indonesia', 'greeneration-foundation-coca-cola-foundation-indo', 'service_client'),
(1459, 'id', 'Greeneration Foundation, Coca-cola Foundation Indonesia', 'greeneration-foundation-coca-cola-foundation-indo', 'service_client'),
(1460, 'en', 'PT. Idee Murni Pratama, PT. Wijaya Karya, PT. Hutama Karya, PT. Waskita Karya, PT. Brantas Abipraya, PT. Adhi Karya, PT. Basuki Rahmanta Putra', 'pt-idee-murni-pratama-pt-wijaya-karya-pt-huta', 'service_client'),
(1461, 'id', 'PT. Idee Murni Pratama, PT. Wijaya Karya, PT. Hutama Karya, PT. Waskita Karya, PT. Brantas Abipraya, PT. Adhi Karya, PT. Basuki Rahmanta Putra', 'pt-idee-murni-pratama-pt-wijaya-karya-pt-huta', 'service_client'),
(1462, 'en', 'Yayasan Unilever Indonesia', 'yayasan-unilever-indonesia', 'service_client'),
(1463, 'id', 'Yayasan Unilever Indonesia', 'yayasan-unilever-indonesia', 'service_client'),
(1464, 'en', 'Embassy of Finland in Indonesia', 'embassy-of-finland-in-indonesia', 'service_client'),
(1465, 'id', 'Kedutaan Finlandia', 'embassy-of-finland-in-indonesia', 'service_client'),
(1466, 'en', 'PT. Galeri Museum Macan', 'pt-galeri-museum-macan', 'service_client'),
(1467, 'id', 'PT. Galeri Museum Macan', 'pt-galeri-museum-macan', 'service_client'),
(1468, 'en', 'PT. Bank DBS Indonesia', 'pt-bank-dbs-indonesia', 'service_client'),
(1469, 'id', 'PT. Bank DBS Indonesia', 'pt-bank-dbs-indonesia', 'service_client'),
(1470, 'en', '\r\nYSEALI (Young Southeast Asian Leader Initiative) Implemented by Divers Clean Action and hosted by US Embassy								', 'implemented-by-divers-clean-action-and-hosted-by-u', 'service_client'),
(1471, 'id', 'YSEALI (Young Southeast Asian Leader Initiative) Diselenggarakan oleh Divers Clean Action dan Kedutaan AS', 'implemented-by-divers-clean-action-and-hosted-by-u', 'service_client');

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
(11, 7, 'study-about-marine-debris', '', '2019-12-07 22:42:02', '2020-01-22 16:04:30', NULL),
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
(2, 1, 'one-time-technical-induction-training', 'loadspeaker-m.png', '2019-12-07 22:45:42', NULL, '2019-12-31 10:48:01'),
(3, 1, 'waste-collection-in-a-segregated-state', 'mark-location-m.png', '2019-12-07 22:45:42', NULL, '2019-12-31 10:48:03'),
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
  `flow_category` varchar(255) DEFAULT NULL,
  `flow_name` varchar(255) DEFAULT NULL,
  `flow_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `flow`
--

INSERT INTO `flow` (`flow_id`, `service_id`, `flow_category`, `flow_name`, `flow_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'general', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(2, 1, 'general', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(3, 1, 'general', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(4, 1, 'general', 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(5, 1, 'general', 'residue-being-sent-to-the-landfill', 'landfill.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(6, 2, 'general', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(7, 2, 'general', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(8, 2, 'general', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(9, 2, 'general', 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(10, 2, 'general', 'residue-co-processing-with-rdf-technology', 'factory.png', '2019-12-24 21:51:38', '2019-12-30 14:16:42', NULL),
(11, 3, 'residual-waste-treatment-using-rdf-technology', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL),
(12, 3, 'residual-waste-treatment-using-rdf-technology', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL),
(13, 3, 'residual-waste-treatment-using-rdf-technology', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL),
(14, 3, 'residual-waste-treatment-using-rdf-technology', 'waste-processing-in-w4cs-material-recivery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL),
(15, 3, 'residual-waste-treatment-using-rdf-technology', 'residue-co-processing-with-rdf-technology', 'factory.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL),
(16, 3, 'residual-waste-treatment-at-the-landfill', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL),
(17, 3, 'residual-waste-treatment-at-the-landfill', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL),
(18, 3, 'residual-waste-treatment-at-the-landfill', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL),
(19, 3, 'residual-waste-treatment-at-the-landfill', 'waste-processing-in-w4cs-material-recivery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL),
(20, 3, 'residual-waste-treatment-at-the-landfill', 'residue-being-sent-to-the-landfill', 'recycling.png', '2019-12-24 21:51:38', '2019-12-24 22:33:27', NULL),
(21, 4, 'general', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(22, 4, 'general', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(23, 4, 'general', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(24, 4, 'general', 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(25, 4, 'general', 'residue-co-processing-with-rdf-technology', 'factory.png', '2019-12-24 21:51:38', '2019-12-30 14:29:54', NULL),
(26, 5, 'general', 'waste-segregation-by-client', 'drop.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(27, 5, 'general', 'waste-storage-in-transfer-point-tpst', 'storage.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(28, 5, 'general', 'segregated-waste-collection', 'transfer.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(29, 5, 'general', 'waste-processing-in-w4cs-material-recovery-facili', 'process.png', '2019-12-24 21:51:38', '2019-12-24 21:51:38', NULL),
(30, 5, 'general', 'residue-co-processing-with-rdf-technology', 'factory.png', '2019-12-24 21:51:38', '2019-12-30 14:31:08', NULL),
(31, 6, 'general', 'dropping-locations-in-more-location-across-indones', 'wasteflow-epr-1.png', '2019-12-24 21:51:38', '2020-01-04 12:38:52', NULL),
(32, 6, 'general', 'user-can-send-or-drop-their-waste-to-waste4change', 'wasteflow-epr-2.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL),
(33, 6, 'general', 'user-will-get-points-as-a-reward-for-recycling-the', 'wasteflow-epr-3.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL),
(34, 6, 'general', 'waste-responsibly-managed-by-our-partner', 'wasteflow-epr-4.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL),
(35, 6, 'general', 'material-transported-to-up-cycling-and-recycling-i', 'wasteflow-epr-5.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL),
(36, 6, 'general', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'wasteflow-epr-6.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL);

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
(1, 'id', 'Indonesia', 'flag_indonesia.png', '2019-11-16 18:56:12', '2020-01-07 00:48:02', NULL),
(2, 'en', 'English', 'flag_england.png', '2019-11-16 18:56:53', '2020-01-07 00:48:08', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

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
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `portfolio_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `portfolio_client` varchar(255) DEFAULT NULL,
  `portfolio_client_logo` varchar(255) DEFAULT NULL,
  `portfolio_client_address` varchar(255) DEFAULT NULL,
  `portfolio_image` varchar(255) DEFAULT NULL,
  `portfolio_start` date DEFAULT NULL,
  `portfolio_end` date DEFAULT NULL,
  `portfolio_duration` varchar(255) DEFAULT NULL,
  `portfolio_collection_schedulle` varchar(255) DEFAULT NULL,
  `portfolio_waste_collected` varchar(255) DEFAULT NULL,
  `portfolio_audience` varchar(255) DEFAULT NULL,
  `portfolio_mou` date DEFAULT NULL,
  `portfolio_agent_involve` int(11) DEFAULT NULL,
  `portfolio_city_count` text DEFAULT NULL,
  `portfolio_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`portfolio_id`, `service_id`, `portfolio_client`, `portfolio_client_logo`, `portfolio_client_address`, `portfolio_image`, `portfolio_start`, `portfolio_end`, `portfolio_duration`, `portfolio_collection_schedulle`, `portfolio_waste_collected`, `portfolio_audience`, `portfolio_mou`, `portfolio_agent_involve`, `portfolio_city_count`, `portfolio_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Vida Bekasi', 'vida.jpg', 'Jl. Tirta Utama No. 1, Bumiwedari, Bantar Gebang, Kota Bekasi', 'vida.jpg', NULL, NULL, '', '3 days-per-week', '112000 kgmonth', '', '2014-01-01', NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-02 14:01:35', NULL),
(2, 1, 'Wisma Barito', 'barito.jpg', 'Jl. Letjen. S. Parman Kav. 62-63, Slipi, Jakarta Barat', 'barito.jpg', NULL, NULL, '1 year', '3 days-per-week', '6922 kgmonth', '', '2019-02-01', NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-02 14:01:45', NULL),
(3, 2, 'The Body Shop', 'tbs.jpg', 'Sentosa Building 2 Lt. 1, Bintaro Jaya Central Business District, Kota Tangerang Selatan', 'tbs.jpg', NULL, NULL, '1 year', 'every-day', '776,5 kgmonth', '', '2018-12-01', NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-02 14:02:10', NULL),
(4, 2, 'PUPR', 'pupr.jpg', 'Jalan Pattimura No. 20, Jakarta Selatan', 'pupr.jpg', NULL, NULL, '4 month', 'every-day', '26,575 kgmonth', '', '2019-09-01', NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-02 14:02:16', NULL),
(5, 3, 'Jakarta Land', 'jakartaland.jpg', 'World Trade Centre - WTC 5, 8th floor, Jl. Jend. Sudirman Kav. 29 Jakarta', 'jakartaland.jpg', NULL, NULL, '1 year', '1 days-per-week', '192 kgmonth', '', '2018-04-01', NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-02 14:02:56', NULL),
(6, 4, 'Playfest 2019', 'playfest2019.jpg', '', 'playfest2019.jpg', '2019-08-24', '2019-08-25', '', '', '1141 kg', '6000', NULL, NULL, NULL, NULL, '2019-12-07 22:47:29', '2019-12-31 16:24:27', NULL),
(7, 4, 'Milo Jakarta International Run 10K 2018', 'milo.jpg', '', 'milo.jpg', '2018-07-15', NULL, '', '', '626 kg', '16000', NULL, NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-11 00:49:58', NULL),
(8, 5, 'The Body Shop - Bring Back Our Bottle (BBOB) Program', 'tbs.jpg', '', 'tbs.jpg', NULL, NULL, '2015 until-present', '', '33447 kg', '', NULL, NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-04 11:52:59', NULL),
(9, 5, 'By Lizzy Parra - There is a Box for That (TIBFT)', 'lizzy.jpg', '', 'lizzy.jpg', NULL, NULL, 'agustus-november-2019', '', '102 kg', '', NULL, NULL, NULL, NULL, '2019-12-07 22:47:29', '2020-01-04 11:53:35', NULL),
(10, 6, 'Lifebuoy Ramadhan Berkah 2019', 'lifebuoy.jpg', '', 'lifebuoy.jpg', NULL, NULL, '1st-may-30th-june-2019', '', '7177 pcs', '', NULL, 227, '41-cities-across-indonesia', 'https://waste4change.com/poin/home/lifebuoy', '2019-12-07 22:49:09', '2020-01-04 13:32:51', NULL),
(11, 6, 'Ades #NiatMurni 2019', 'ades.jpg', '', 'ades.jpg', NULL, NULL, '31st-october-2019-present', '', '1650 pcs', '', NULL, 130, 'Jakarta, Bandung, Semarang, Surabaya, Makassar, Medan', 'https://waste4change.com/poin/home/sinergi-ades-niat-murni-dan-gojek', '2019-12-07 22:49:09', '2020-01-05 03:24:35', NULL);

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
(10, 8, '3r-green-school', '3r-green-school', 'capacity-building-in-indonesia’s-frontline-territo', 'Yayasan Unilever Indonesia', '', NULL, '2019-11-24 03:27:02', '2020-01-22 23:03:44', NULL),
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
(17, 'school-management', '#4489a2', 'icon-education-001 u-line-icon-pro', '2019-12-08 00:56:23', '2020-01-22 23:38:51', NULL),
(18, 'hse-division', '#4489a2', 'icon-medical-031 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(19, 'sustainability-division', '#a24444', 'icon-hotel-restaurant-132 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(20, 'csr-division', '#4489a2', 'icon-medical-022 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(21, 'building-area-management', '#4489a2', 'icon-hotel-restaurant-172 u-line-icon-pro', '2019-12-08 00:56:23', '2020-01-21 09:28:10', NULL),
(22, 'personal', '#4489a2', 'icon-finance-002 u-line-icon-pro', '2019-12-08 00:56:23', '2019-12-08 00:56:23', NULL),
(23, 'retail', '#a24495', 'icon-education-031 u-line-icon-pro', '2020-01-04 14:04:02', '2020-01-04 14:04:02', NULL),
(24, 'store', '#a24495', 'icon-hotel-restaurant-172 u-line-icon-pro', '2020-01-04 14:04:02', '2020-01-04 14:04:02', NULL),
(25, 'building', '#4489a2', 'icon-hotel-restaurant-172 u-line-icon-pro', '2020-01-22 23:27:49', '2020-01-22 23:27:58', NULL);

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
(2, 'header', 'header', '', '2019-12-07 22:26:24', '2019-12-17 23:50:13', NULL),
(3, 'our-achievement', 'our-br-achievement', '', '2019-12-07 22:26:24', '2020-01-31 20:49:03', NULL),
(4, 'about', 'about', 'about', '2019-12-07 22:26:24', '2020-01-22 14:28:33', NULL),
(5, 'description', 'description', 'description', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(6, 'achievement-deliverable', 'deliverable', 'deliverable', '2019-12-07 22:26:24', '2020-01-24 09:10:07', NULL),
(7, 'we-offer', 'we-offer', 'offer', '2019-12-07 22:26:24', '2020-01-22 23:40:13', NULL),
(8, 'activities', 'activities', 'activities', '2019-12-07 22:26:24', '2019-12-10 01:07:37', NULL),
(9, 'benefit', 'benefit', 'benefit', '2019-12-07 22:26:24', '2019-12-19 01:23:15', NULL),
(10, 'expertise-and-experience', 'expertise-and-experience', 'expertise-and-experience', '2019-12-07 22:26:24', '2020-01-17 11:49:12', NULL),
(11, 'output-benefit', 'output-benefit', 'output-benefit', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(12, 'what-you-get', 'what-you-get', 'what-you-get', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(13, 'waste-flow', 'waste-flow', 'waste-flow', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(14, 'portfolio-highlight', 'portofolio-highlight', NULL, '2019-12-07 22:26:24', '2020-01-31 20:52:07', NULL),
(15, 'research-highlight', 'research-hightlight', NULL, '2019-12-07 22:26:24', '2020-01-31 20:52:07', NULL),
(16, 'program-highlight', 'program-highlight', NULL, '2019-12-07 22:26:24', '2020-01-31 20:52:07', NULL),
(17, 'similar-project', 'similar-project', 'similar-project', '2019-12-07 22:26:24', '2019-12-08 00:11:50', NULL),
(18, 'our-client', 'client', 'client', '2019-12-07 22:26:24', '2020-01-22 23:52:18', NULL),
(19, 'recommended-for', 'recommended-for', 'recommendation', '2019-12-07 22:26:24', '2020-01-23 12:05:27', NULL),
(20, 'our-coverage-try', 'our-coverage', 'coverage', '2019-12-07 22:26:24', '2020-02-05 12:14:27', NULL),
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
  `service_client_logo` varchar(255) DEFAULT NULL,
  `service_about_image` varchar(255) DEFAULT NULL,
  `service_header_image` varchar(255) DEFAULT NULL,
  `service_thumbnail_image` varchar(255) DEFAULT NULL,
  `service_page_url` varchar(255) DEFAULT NULL,
  `service_join_url` varchar(255) DEFAULT NULL,
  `service_proposal_url` varchar(255) DEFAULT NULL,
  `service_portfolio_url` varchar(255) DEFAULT NULL,
  `has_page` int(1) DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_category_id`, `service_parent_id`, `service_subcategory_name`, `service_slug`, `service_name`, `service_slogan`, `service_description`, `service_about`, `service_client_name`, `service_client_logo`, `service_about_image`, `service_header_image`, `service_thumbnail_image`, `service_page_url`, `service_join_url`, `service_proposal_url`, `service_portfolio_url`, `has_page`, `is_new`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '', 'responsible-waste-management', 'responsible-waste-management', 'no-more-mixed-waste', 'a-100-holistic-waste-management-for-companies-bu', 'waste-generation-is-inevitable-its-not-easy-to-r', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/responsible-waste-management', '', 'https://docs.google.com/forms/d/e/1FAIpQLSdydu6Ar9mGKppAI4V2fevcWkLSpTpiSwdbpv0moPU4-_o3NQ/viewform', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(2, 1, NULL, '', 'zero-waste-to-landfill', 'zero-waste-to-landfill', 'no-more-waste-that-end-up-in-landfills', 'take-an-active-part-in-preventing-our-local-landfi', 'every-day-indonesians-are-generating-175000-tons', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/zero-waste-to-landfill', '', 'https://docs.google.com/forms/d/e/1FAIpQLSemrcuqzCk4wFUtMPFFwLkJOsYSlCjoJ8GHCDdXcM7Or5YlQg/viewform', '', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(3, 1, NULL, '', 'inorganic-waste-management', 'inorganic-waste-management', 'from-waste-to-useful-materials', 'treat-your-inorganic-waste-the-right-way-and-make-', 'waste-is-a-relative-term-that-can-be-applied-diffe', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/inorganic-waste-management', '', 'https://docs.google.com/forms/d/e/1FAIpQLSfgzkfJXMhuTUO4sgwpkF1PINvH7_XNBrZ84PWJD6OqghV_Eg/viewform', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(4, 1, NULL, '', 'event-waste-management', 'event-waste-management', 'great-event-planned-their-waste-management-beforeh', 'through-the-placement-of-segregated-waste-bins-in-', 'waste-generation-during-an-event-is-inevitable-in', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/event-waste-management', '', 'https://docs.google.com/forms/d/e/1FAIpQLScFEwvyBaouF85RuuJSQpDCmGmkIIf4Hby9uo6HrZHJVSRBvw/viewform', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(5, 2, NULL, '', 'in-store-recycling', 'in-store-recycling', 'support-the-recycling-of-your-brand-labeled-waste', 'increase-the-material-processing-of-brand-labelled', 'designed-to-increase-the-material-processing-from-', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/in-store-recycling', '', 'https://docs.google.com/forms/d/e/1FAIpQLSd8QsQoYbyTb5-8dD6r5KUFCz9BhTmBvh1c2Lla2HdlrDHFQg/viewform', '', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(6, 2, NULL, '', 'digital-epr', 'digital-epr', 'more-effective-and-sustainable-brand-labeled-waste', 'increasing-the-recycling-rate-of-your-brand-labele', 'we-provide-a-waste-recycling-system-that-is-integr', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/digital-epr', '', 'https://docs.google.com/forms/d/e/1FAIpQLScZh1J71WYKPVOZzDGgfSTtOudKLu_RuwnDPvvlXV9h8TvxyQ/viewform', '', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(7, 3, NULL, '', 'solid-waste-management-research', 'solid-waste-management-research', 'research-and-planning-with-environment-in-mind', 'improve-your-solid-waste-management-by-conducting-', 'waste4change-provides-consultation-through-solid-w', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/solid-waste-management-research', '', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', '1', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(8, 4, NULL, '', 'community-based-implementation', 'community-based-implementation', 'solid-effort-to-reduce-waste-generation-from-the-s', 'we-help-our-clients-to-implement-programs-that-enc', 'according-to-recent-bps-statistics-waste-manageme', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/community-based-implementation', '', 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', '1', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(9, 4, NULL, '', '3r-school-program', '3r-school-program', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'designed-to-encourage-the-increasing-awareness-of-', '3r-school-program-is-a-program-designed-to-encoura', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/3r-school-program', '', 'https://docs.google.com/forms/d/e/1FAIpQLScmBjcHJhsI1OIOM-So0VQNhsbIGUJeKuovMe2QzVeYMnUU0g/viewform', '1', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(10, 5, NULL, '', 'akabis-waste-management-academy', 'akabis-waste-management-academy', 'take-a-closer-look-at-waste-management-facts-and-s', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'akademi-bijak-sampah-akabis-is-an-education-mode-created-by', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/akabis-waste-management-academy', '', 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', '1', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(11, 5, NULL, '', 'black-soldier-fly-learning-center', 'black-soldier-fly-learning-center', 'effective-organic-waste-solution', 'receive-in-depth-information-regarding-organic-was', 'through-bsf-learning-center-you-will-receive-in-d', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'service/black-soldier-fly-learning-center', '', 'https://docs.google.com/forms/d/e/1FAIpQLSc7hGAdWLlFqt5qa38-7fMwA9Nsp2ev9lUk7Qi8Xwe_z3lYfg/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(12, 7, NULL, '', 'black-soldier-fly-tools-products', 'black-soldier-fly-tools-products', '', 'we-provide-black-soldier-fly-larvae-that-is-high-i', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'http://w4c.id/rumahkompos', '', '', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(13, 6, NULL, '', 'send-your-waste', 'send-your-waste', '', 'send-your-inorganic-waste-to-waste4change-and-let-', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/sendyourwaste', '', '', NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(14, 6, NULL, '', 'dropbox', 'dropbox', '', 'deposit-your-inorganic-waste-in-waste4changes-dro', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/dropbox', '', '', NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(15, 6, NULL, '', 'sinergi-adesniatmurni-dan-gojek', 'sinergi-adesniatmurni-dan-gojek', '', 'send-your-used-pet-bottles-of-various-sizes-and-br', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/poin/home/sinergi-ades-niat-murni-dan-gojek', '', '', NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(16, 6, NULL, '', 'merchant', 'merchant', '', 'deposit-your-used-packaging-through-our-partners-t', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'https://waste4change.com/poin/home/', '', '', NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(17, 6, NULL, '', 'home-composting', 'home-composting', '', 'process-your-organic-waste-at-home-with-waste4cha', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'http://w4c.id/rumahkompos', '', '', NULL, 0, 0, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL),
(18, NULL, 7, 'swm-research-in-institutions', 'solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', 'solid-waste-management-study-at-pelabuhan-indonesi', '', '', 'based-on-the-regulation-of-ministry-of-transportat', 'pt-pelabuhan-indonesia-ii-persero', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', '', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL),
(19, NULL, 7, 'swm-research-in-municipalities', 'solid-waste-management-design-for-revitalisation-at-jami-mosque-and-kampung-beting-settlements-in-pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', '', '', 'beting-village-and-jami-mosque-area-are-located-a', 'ministry-of-public-works-and-housings', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/solid-waste-management-design-for-revitalisation-at-jami\'-mosque-and-kampung-beting-settlements-in-pontianak', '', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(20, NULL, 7, 'value-chain-analysis', 'waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', '', '', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'pt-deloitte-konsultan-indonesia', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', '', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(21, NULL, 7, 'marine-debris-study', 'riverine-plastic-monitoring-project-in-jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', '', '', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'the-ocean-cleanup', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/riverine-plastic-monitoring-project-in-jakarta', '', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(22, NULL, 7, 'waste-to-energy', 'technical-due-diligence-for-itf-sunter-jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', '', '', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'ga-circular', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/feasibility-study-of-pyrolysis-for-plastic-packaging-in-lombok-and-batam', '', 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(23, NULL, 8, 'community-assistance-in-institutions', '3r-program-suralaya', '3r-program-suralaya', '', '', 'waste4change-assisted-pt-indonesia-power-up-surala', 'pt-indonesia-power-up-suralaya', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/3r-program-suralaya', '', 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(24, NULL, 8, 'community-assistance-in-municipalities', 'tps-3r-advisory', 'tps-3r-advisory', '', '', 'in-order-to-achieve-the-national-target-of-30-was', 'pt-sarana-multi-daya-pt-multi-karadiguna-jasa-', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/tps-3r-advisory', '', 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(25, NULL, 8, 'community-assistance-in-tourism-sites', 'ecoranger-in-pulau-merah-banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', '', '', 'tourism-in-indonesia-is-currently-growing-exponent', 'greeneration-foundation-coca-cola-foundation-indo', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/ecoranger-in-pulau-merah-banyuwangi', '', 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(26, NULL, 8, 'community-capacity-building', 'capacity-building-in-indonesias-frontline-territories', 'capacity-building-di-wilayah-terdepan-indonesia', '', '', 'indonesias-frontline-areas-reflect-the-life-of-th', 'pt-idee-murni-pratama-pt-wijaya-karya-pt-huta', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/capacity-building-in-indonesia\'s-frontline-territories', '', 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(27, NULL, 9, '3r-green-school', '3r-green-school', '3r-green-school', '', '', 'the-unilever-foundation-along-with-waste4change-or', 'yayasan-unilever-indonesia', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/3r-green-school', '', 'https://docs.google.com/forms/d/e/1FAIpQLScmBjcHJhsI1OIOM-So0VQNhsbIGUJeKuovMe2QzVeYMnUU0g/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(28, NULL, 10, 'akabis-class-for-institution', 'akabis-class-for-the-embassy-of-finland-jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', '', '', 'knowledge-about-responsible-solid-waste-management', 'embassy-of-finland-in-indonesia', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-class-for-the-embassy-of-finland-jakarta', '', 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(29, NULL, 10, 'akabis-class-for-public', 'akabis-class-the-neglected-debris-paper-letter-and-waste-discussion', 'akabis-class-the-neglected-debris:-paper-letter', '', '', 'the-ancient-method-of-making-paper-is-not-only-rec', 'pt-galeri-museum-macan', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-class-the-neglected-debris:-paper,-letter-and-waste-discussion', '', 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(30, NULL, 10, 'akabis-xperience-for-institution', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', '', '', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'pt-bank-dbs-indonesia', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-xperience-for-world-bank-jakarta', '', 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(31, NULL, 10, 'akabis-xperience-for-public', 'akabis-xperience-for-yseali', 'akabis-xperience-untuk-yseali-young-southeast-asi', '', '', 'waste4change-became-one-of-the-facilitators-for-ys', 'implemented-by-divers-clean-action-and-hosted-by-u', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'project/akabis-xperience-for-yseali', '', 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', '', 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL);

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
(1, 1, 'waste-collection-program', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL),
(2, 1, 'extended-producer-responsibility', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL),
(3, 1, 'solid-waste-management-research', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL),
(4, 1, 'community-development', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL),
(5, 1, 'training', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL),
(6, 2, 'general', NULL, '2019-11-16 18:52:03', '2020-01-20 09:51:40', NULL),
(7, 1, 'general', NULL, '2020-01-20 09:51:22', '2020-01-20 09:51:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_coverage`
--

CREATE TABLE `service_coverage` (
  `coverage_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_coverage_city` varchar(255) DEFAULT NULL,
  `service_coverage_coordinate` varchar(255) DEFAULT NULL,
  `service_coverage_area` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `service_coverage`
--

INSERT INTO `service_coverage` (`coverage_id`, `service_id`, `service_coverage_city`, `service_coverage_coordinate`, `service_coverage_area`, `created_at`, `updated_at`, `deleted_at`) VALUES
(400, 1, 'Kota Administrasi Jakarta Pusat', '-6.18233995,106.842871536007', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:10', NULL),
(401, 1, 'Kota Administrasi Jakarta Timur', '-6.26289085,106.882228946928', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:41', NULL),
(402, 1, 'Kota Administrasi Jakarta Selatan', '-6.28381815,106.804863491948', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:27', NULL),
(403, 1, 'Kota Administrasi Jakarta Barat', '-6.16156235,106.743891240277', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:01', NULL),
(404, 1, 'Kota Administrasi Jakarta Utara', '-6.136197,106.900690224284', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:48', NULL),
(405, 1, 'Bekasi', '-6.2349858,106.9945444', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(406, 1, 'Tangerang', '-6.1701796,106.64032359999999', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(407, 2, 'Kota Administrasi Jakarta Pusat', '-6.18233995,106.842871536007', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:10', NULL),
(408, 2, 'Kota Administrasi Jakarta Timur', '-6.26289085,106.882228946928', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:41', NULL),
(409, 2, 'Kota Administrasi Jakarta Selatan', '-6.28381815,106.804863491948', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:27', NULL),
(410, 2, 'Kota Administrasi Jakarta Barat', '-6.16156235,106.743891240277', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:01', NULL),
(411, 2, 'Kota Administrasi Jakarta Utara', '-6.136197,106.900690224284', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:48', NULL),
(412, 2, 'Bekasi', '-6.2349858,106.9945444', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(413, 2, 'Tangerang', '-6.1701796,106.64032359999999', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(414, 3, 'Kota Administrasi Jakarta Pusat', '-6.18233995,106.842871536007', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:10', NULL),
(415, 3, 'Kota Administrasi Jakarta Timur', '-6.26289085,106.882228946928', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:41', NULL),
(416, 3, 'Kota Administrasi Jakarta Selatan', '-6.28381815,106.804863491948', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:27', NULL),
(417, 3, 'Kota Administrasi Jakarta Barat', '-6.16156235,106.743891240277', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:01', NULL),
(418, 3, 'Kota Administrasi Jakarta Utara', '-6.136197,106.900690224284', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:48', NULL),
(419, 3, 'Bekasi', '-6.2349858,106.9945444', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(420, 3, 'Tangerang', '-6.1701796,106.64032359999999', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(421, 4, 'Kota Administrasi Jakarta Pusat', '-6.18233995,106.842871536007', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:10', NULL),
(422, 4, 'Kota Administrasi Jakarta Timur', '-6.26289085,106.882228946928', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:41', NULL),
(423, 4, 'Kota Administrasi Jakarta Selatan', '-6.28381815,106.804863491948', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:22', NULL),
(424, 4, 'Kota Administrasi Jakarta Barat', '-6.16156235,106.743891240277', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:01', NULL),
(425, 4, 'Kota Administrasi Jakarta Utara', '-6.136197,106.900690224284', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:48', NULL),
(426, 4, 'Surabaya', '-7.2459717,112.7378266', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(427, 4, 'Medan', '3.594863, 98.672782', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(428, 4, 'Bali', '-8.4560181,115.270385511912', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(429, 4, 'Bandung', '-6.9344694,107.6049539', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(430, 4, 'Semarang', '-7.0051453,110.43812539999999', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(431, 5, 'Kota Administrasi Jakarta Pusat', '-6.18233995,106.842871536007', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:10', NULL),
(432, 5, 'Kota Administrasi Jakarta Timur', '-6.26289085,106.882228946928', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:41', NULL),
(433, 5, 'Kota Administrasi Jakarta Selatan', '-6.28381815,106.804863491948', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:22', NULL),
(434, 5, 'Kota Administrasi Jakarta Barat', '-6.16156235,106.743891240277', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:01', NULL),
(435, 5, 'Kota Administrasi Jakarta Utara', '-6.136197,106.900690224284', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:48', NULL),
(436, 5, 'Bekasi', '-6.2349858,106.9945444', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(437, 5, 'Tangerang', '-6.1701796,106.64032359999999', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(438, 6, 'Seluruh Kota di Indonesia', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(439, 7, 'Seluruh Kota di Indonesia', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(440, 7, 'Aruk', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(441, 7, 'Entikong', '0.9570648999999999,110.28322170000001', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(442, 7, 'Sebatik Tengah', '4.137595000000001,117.81941970000003', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(443, 7, 'Wini', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(444, 7, 'Motaain', '-9.642087199999999,124.96719830000006', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(445, 7, 'Motamasin', '-9.451362,125.08532430000002', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(446, 7, 'Skouw', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(447, 7, 'Bandung Barat', '-6.865221399999999,107.49197670000001', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(448, 7, 'Batam', '1.1300779,104.05292069999996', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(449, 7, 'Mataram', '-8.597080799999999,116.10048940000001', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(450, 7, 'Bekasi', '-6.2349858,106.9945444', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(451, 7, 'Bogor', '-6.597165, 106.806050', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(452, 7, 'Kota Administrasi Jakarta Pusat', '-6.18233995,106.842871536007', NULL, '2020-01-21 11:18:39', '2020-02-05 13:17:41', NULL),
(453, 7, 'Purwakarta', '-6.5649241,107.4321959', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(454, 7, 'Bandung', '-6.9344694,107.6049539', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(455, 7, 'Karawang', '-6.3227303,107.3375791', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(456, 7, 'Surabaya', '-7.2459717,112.7378266', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(457, 7, 'Bima', '-8.463398, 118.744458', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(458, 7, 'Baubau', '-5.507078, 122.596601', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(459, 7, 'Cibinong', '-6.485010, 106.835504', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(460, 7, 'Makassar', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(461, 7, 'Manado', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(462, 7, 'Denpasar', '-8.660793, 115.214657', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(463, 7, 'Tangerang Selatan', '-6.294989, 106.707111', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(464, 7, 'Kep. Seribu', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(465, 7, 'Cimahi', '-6.882934, 107.540864', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(466, 7, 'Pontianak', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(467, 7, 'Balikpapan', '-1.2398711,116.8593379', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(468, 7, 'Banjarmasin', '-3.3187496,114.5925828', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(469, 7, 'Depok', '-6.401147, 106.810932', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(470, 7, 'Pulau Obi', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(471, 7, 'Suralaya', '-5.9023949,106.0316898', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(472, 7, 'Tarimbang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(473, 7, 'Suralaya', '-5.9023949,106.0316898', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(474, 7, 'Tarimbang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(475, 8, 'Seluruh Kota di Indonesia', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(476, 8, 'Aruk', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(477, 8, 'Entikong', '0.9570648999999999,110.28322170000001', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(478, 8, 'Sebatik Tengah', '4.137595000000001,117.81941970000003', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(479, 8, 'Wini', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(480, 8, 'Motaain', '-9.642087199999999,124.96719830000006', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(481, 8, 'Motamasin', '-9.451362,125.08532430000002', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(482, 8, 'Skouw', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(483, 8, 'Banyuwangi', '-8.2192335,114.36922670000001', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(484, 8, 'Kota Administrasi Jakarta Pusat', '-6.18233995,106.842871536007', NULL, '2020-01-21 11:18:39', '2020-02-05 13:17:47', NULL),
(485, 8, 'Jombang', '-7.5740867,112.28609000000006', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(486, 8, 'Sidoarjo', '-7.472613399999998,112.66753979999999', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(487, 8, 'Malang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(488, 8, 'Jambi', '-1.6101229,103.6131203', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(489, 8, 'Kab. Bogor', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(490, 8, 'Kab. Cianjur', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(491, 8, 'Bandung Barat', '-6.865221399999999,107.49197670000001', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(492, 8, 'Cimahi', '-6.882934, 107.540864', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(493, 8, 'Sumedang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(494, 8, 'Kepulauan Seribu', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(495, 8, 'Lombok Utara', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(496, 8, 'Madiun', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(497, 8, 'Kuningan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(498, 8, 'Solo', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(499, 8, 'Suralaya', '-5.9023949,106.0316898', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(500, 8, 'Tasikmalaya', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(501, 8, 'Indramayu', '-6.413415, 108.197493', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(502, 8, 'Kab. Bekasi', '-6.2382699,106.9755726', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(503, 8, 'Bima', '-8.463398, 118.744458', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(504, 8, 'Yogyakarta', '-7.8011945,110.364917', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(505, 8, 'Kab. Lebak', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(506, 8, 'Kota Tangerang Selatan', '-6.2835218,106.7112933', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(507, 8, 'Kota Bekasi', '-6.2382699,106.9755726', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(508, 8, 'Kab. Magelang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(509, 8, 'Kab. Semarang', '-7.0051453,110.4381254', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(510, 8, 'Kab. Temanggung', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(511, 8, 'Kab. Kulon Progo', NULL, NULL, '2020-01-21 11:18:39', '2020-01-21 11:19:18', NULL),
(512, 8, 'Kota Pasuruan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(513, 8, 'Kab. Pasuruan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(514, 8, 'Kab. Kediri', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(515, 8, 'Kota Mojokerto', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(516, 8, 'Kab. Lamongan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(517, 8, 'Kab. Paser', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(518, 8, 'Kab. Nunukan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(519, 8, 'Kab. Bulungan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(520, 8, 'Kota Tarakan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(521, 8, 'Kota Tomohon', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(522, 8, 'Kab. Kepulauan Siau Tagulandang Biaro', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(523, 8, 'Kab. Boalemo', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(524, 8, 'Kab. Gorontalo', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:11', NULL),
(525, 8, 'Kab. Gorontalo Utara', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(526, 8, 'Kab. Enrekang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(527, 8, 'Kab. Seidenreng Rappang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(528, 8, 'Kab. Luwu Utara', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(529, 8, 'Kab. Mamuju Utara', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(530, 8, 'Kab. Majene', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(531, 8, 'Kab. Polewali Mandar (Polman)', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(532, 8, 'Kab. Kolaka Utara', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(533, 8, 'Kab. Wakatobi', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(534, 8, 'Kota Kendari', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(535, 8, 'Serang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(536, 8, 'Kab. Serang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(537, 8, 'Kota Tangerang', '-6.1701796,106.6403236', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(538, 8, 'Kab. Sukabumi', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(539, 8, 'Kota Semarang', '-7.0051453,110.4381254', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(540, 8, 'Kab. Probolinggo', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(541, 8, 'Kab. Lumajang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(542, 8, 'Kota Sidoarjo', '-7.4726134,112.6675398', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(543, 8, 'Kab. Sidoarjo', '-7.4726134,112.6675398', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(544, 8, 'Kota Samarinda', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(545, 8, 'Kota Bontang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(546, 8, 'Kab. Bulungan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(547, 8, 'Kota Tarakan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(548, 8, 'Kota Manado', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(549, 8, 'Kota Kotamobagu', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(550, 8, 'Kab. Minahasa Utara', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(551, 8, 'Kota Gorontalo', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:17', NULL),
(552, 8, 'Kab. Bone Bolango', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(553, 8, 'Kab. Pinrang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(554, 8, 'Kab. Sidrap', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(555, 8, 'Kab. Sinjai', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(556, 8, 'Kab. Mamuju', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(557, 8, 'Kota Kendari', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(558, 8, 'Kab. Buton', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(559, 8, 'Kab. Bau Bau', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(560, 8, 'Kota Palu', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(561, 8, 'Kab. Sigi', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(562, 8, 'Kab. Tanah Bumbu', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(563, 8, 'Kab. Hulu Sungai Utara', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(564, 8, 'Kab. Kapuas', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(565, 8, 'Kota Banjar', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(566, 8, 'Kab. Balangan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(567, 8, 'Kab. Sleman', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(568, 8, 'Kota Banjarmasin', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(569, 8, 'Kota Sukabumi', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(570, 8, 'Kab. Probolinggo', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(571, 8, 'Kab. Kediri', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(572, 8, 'Kab. Tulungagung', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(573, 8, 'Kota Bandung', '-6.9174639,107.6191228', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(574, 8, 'Kab. Barito Selatan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(575, 8, 'Kab. Klaten', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(576, 8, 'Kota Salatiga', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(577, 8, 'Kota Magelang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(578, 8, 'Kota Tegal', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(579, 8, 'Kota Palangkaraya', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(580, 8, 'Kab. Nganjuk', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(581, 8, 'Kota Semarang', '-7.0051453,110.4381254', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(582, 8, 'Kota Serang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(583, 8, 'Kab. Lumajang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(584, 8, 'Kab. Sumenep', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(585, 8, 'Kab. Kotawaringin Barat', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(586, 8, 'Kota Cilegon', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(587, 8, 'Kab. Katingan', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(588, 9, 'Bekasi', '-6.2349858,106.9945444', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(589, 9, 'Kota Administrasi Jakarta Pusat', '-6.18233995,106.842871536007', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:08', NULL),
(590, 9, 'Kota Administrasi Jakarta Timur', '-6.26289085,106.882228946928', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:34', NULL),
(591, 9, 'Kota Administrasi Jakarta Selatan', '-6.28381815,106.804863491948', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:18', NULL),
(592, 9, 'Kota Administrasi Jakarta Barat', '-6.16156235,106.743891240277', NULL, '2020-01-21 11:18:39', '2020-02-05 13:14:59', NULL),
(593, 9, 'Kota Administrasi Jakarta Utara', '-6.136197,106.900690224284', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:44', NULL),
(594, 9, 'Karawang', '-6.3227303,107.3375791', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(595, 9, 'Bandung', '-6.9344694,107.6049539', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(596, 9, 'Purwakarta', '-6.5649241,107.4321959', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(597, 9, 'Tangerang Selatan', '-6.294989, 106.707111', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(598, 10, 'Bekasi', '-6.2349858,106.9945444', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(599, 10, 'Kota Administrasi Jakarta Pusat', '-6.18233995,106.842871536007', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:10', NULL),
(600, 10, 'Kota Administrasi Jakarta Timur', '-6.26289085,106.882228946928', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:41', NULL),
(601, 10, 'Kota Administrasi Jakarta Selatan', '-6.28381815,106.804863491948', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:27', NULL),
(602, 10, 'Kota Administrasi Jakarta Barat', '-6.16156235,106.743891240277', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:01', NULL),
(603, 10, 'Kota Administrasi Jakarta Utara', '-6.136197,106.900690224284', NULL, '2020-01-21 11:18:39', '2020-02-05 13:15:48', NULL),
(604, 10, 'Banten', '-6.032607, 106.160980', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(605, 10, 'Cibitung', '-6.229805, 107.108478', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(606, 10, 'Cikarang', '-6.302070, 107.146708', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(607, 10, 'Depok', '-6.401147, 106.810932', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(608, 10, 'Malang', NULL, NULL, '2020-01-21 11:18:39', '2020-01-22 09:11:39', NULL),
(609, 10, 'Suralaya', '-5.9023949,106.0316898', NULL, '2020-01-21 11:18:39', '2020-01-22 09:10:34', NULL),
(610, 10, 'Tangerang', '-6.1701796,106.64032359999999', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(611, 10, 'Garut', '-7.377232, 107.753421', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(612, 11, 'Sidoarjo', '-7.472613399999998,112.66753979999999', NULL, '2020-01-21 11:18:39', '2020-01-21 11:18:39', NULL),
(613, 7, 'Kota Administrasi Jakarta Timur', '-6.26289085,106.882228946928', NULL, '2020-02-05 13:17:02', '2020-02-05 13:17:08', NULL),
(614, 7, 'Kota Administrasi Jakarta Selatan', '-6.28381815,106.804863491948', NULL, '2020-02-05 13:17:02', '2020-02-05 13:17:08', NULL),
(615, 7, 'Kota Administrasi Jakarta Barat', '-6.16156235,106.743891240277', NULL, '2020-02-05 13:17:02', '2020-02-05 13:17:08', NULL),
(616, 7, 'Kota Administrasi Jakarta Utara', '-6.136197,106.900690224284', NULL, '2020-02-05 13:17:02', '2020-02-05 13:17:08', NULL),
(617, 8, 'Kota Administrasi Jakarta Timur', '-6.26289085,106.882228946928', NULL, '2020-02-05 13:17:55', '2020-02-05 13:17:55', NULL),
(618, 8, 'Kota Administrasi Jakarta Selatan', '-6.28381815,106.804863491948', NULL, '2020-02-05 13:17:55', '2020-02-05 13:17:55', NULL),
(619, 8, 'Kota Administrasi Jakarta Barat', '-6.16156235,106.743891240277', NULL, '2020-02-05 13:17:55', '2020-02-05 13:17:55', NULL),
(620, 8, 'Kota Administrasi Jakarta Utara', '-6.136197,106.900690224284', NULL, '2020-02-05 13:17:55', '2020-02-05 13:17:55', NULL),
(621, 17, 'Seluruh Kota di Indonesia', NULL, NULL, '2020-02-05 15:18:17', '2020-02-05 15:18:17', NULL);

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
(4, 1, 25, '2019-12-07 22:50:16', '2020-01-22 23:28:11', NULL),
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
(16, 4, 7, '2019-12-07 22:50:16', '2020-01-04 11:26:32', NULL),
(17, 4, 8, '2019-12-07 22:50:16', '2020-01-04 11:26:33', NULL),
(18, 4, 3, '2019-12-07 22:50:16', '2020-01-04 11:26:35', NULL),
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
(32, 8, 20, '2019-12-07 22:50:16', '2020-01-14 23:20:09', NULL),
(33, 8, 19, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(34, 8, 9, '2019-12-07 22:50:16', '2020-01-14 23:20:09', NULL),
(35, 8, 15, '2019-12-07 22:50:16', '2020-01-20 09:47:59', NULL),
(36, 8, 21, '2019-12-07 22:50:16', '2020-01-14 23:20:25', NULL),
(37, 8, 8, '2019-12-07 22:50:16', '2020-01-14 23:20:09', NULL),
(39, 9, 20, '2019-12-07 22:50:16', '2020-01-14 23:36:15', NULL),
(40, 9, 9, '2019-12-07 22:50:16', '2020-01-14 23:36:15', NULL),
(45, 11, 2, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(46, 11, 14, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(47, 12, 2, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(48, 12, 14, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(49, 13, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(50, 14, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(51, 15, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(52, 16, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(53, 17, 22, '2019-12-07 22:50:16', '2019-12-07 22:50:16', NULL),
(54, 2, 23, '2020-01-04 14:06:22', '2020-01-04 14:06:22', NULL),
(55, 2, 24, '2020-01-04 14:06:23', '2020-01-04 14:06:23', NULL),
(56, 3, 23, '2020-01-11 18:33:15', '2020-01-11 18:33:15', NULL),
(57, 3, 24, '2020-01-11 18:33:15', '2020-01-11 18:33:15', NULL),
(58, 7, 15, '2020-01-12 23:44:41', '2020-01-12 23:44:41', NULL),
(59, 7, 21, '2020-01-12 23:44:41', '2020-01-12 23:44:41', NULL),
(60, 9, 17, '2020-01-14 23:36:45', '2020-01-14 23:36:45', NULL),
(61, 9, 8, '2020-01-14 23:36:45', '2020-01-14 23:36:45', NULL),
(62, 10, 18, '2020-01-20 09:49:04', '2020-01-20 09:49:16', NULL),
(63, 10, 19, '2020-01-20 09:49:05', '2020-01-20 09:49:19', NULL),
(64, 10, 20, '2020-01-20 09:49:25', '2020-01-23 00:01:15', NULL),
(65, 10, 9, '2020-01-20 09:49:28', '2020-01-20 09:49:47', NULL),
(66, 10, 8, '2020-01-20 09:49:31', '2020-01-20 09:49:47', NULL),
(67, 10, 15, '2020-01-20 09:49:35', '2020-01-20 09:49:47', NULL),
(68, 10, 21, '2020-01-20 09:49:44', '2020-01-20 09:49:47', NULL);

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
(1, 'for-company', 'company-active-o.png', '2019-11-16 20:18:11', '2019-12-20 23:52:44', NULL),
(2, 'for-individuals', 'individu-active-o.png', '2019-11-16 20:18:16', '2019-12-24 12:15:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimony_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `language_code` char(5) DEFAULT NULL,
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
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimony_id`, `service_id`, `language_code`, `testimony_name`, `testimony_role`, `testimony_company`, `testimony_content`, `testimony_photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'en', 'Carsten Schneider', 'Head of Business Development', 'Ramboll Danmark A/S', 'We are very content with the works performed by Waste4Change. They are very good at their job and have shown fantastic understanding of the project. They perform at international level!', 'Carsten-Schneider.png', '2020-01-25 07:19:09', '2020-01-25 07:22:03', NULL),
(2, NULL, 'id', 'Carsten Schneider', 'Head of Business Development', 'Ramboll Danmark A/S', 'Kami sangat puas dengan apa yang dikerjakan oleh Waste4Change. Mereka sangat mahir dengan apa yang mereka kerjakan, dan mereka memperlihatkan pemahaman yang luar biasa terhadap proyek ini. Mereka bekerja dengan standar internasional!', 'Carsten-Schneider.png', '2020-01-25 07:20:42', '2020-01-25 07:22:03', NULL),
(3, NULL, 'en', 'Yongmei Zhou ', 'Program Leader, Equitable Growth, Finance & Institutions ', 'World Bank', 'Thanks to Waste4Change, we spent a day smelling, seeing, sorting and talking about waste! I feel an overwhelming shame that this is the footprint we leave on earth.', 'Yongmei-Zhou.png', '2020-01-25 07:20:54', '2020-01-25 07:22:09', NULL),
(4, NULL, 'id', 'Yongmei Zhou ', 'Program Leader, Equitable Growth, Finance & Institutions ', 'World Bank', 'Berkat Waste4Change, kami menghabiskan satu hari dengan mencium, melihat, memilah, dan berbicara tentang sampah! Saya merasakan perasaan malu yang teramat besar ketika tahu bahwa jejak seperti inilah yang kita tinggalkan di bumi.', 'Yongmei-Zhou.png', '2020-01-25 07:20:57', '2020-01-25 07:30:12', NULL),
(5, NULL, 'en', 'Debora Tjandrakusuma', 'Corporate Affairs ', 'Nestl&eacute Indonesia', 'Waste4Change is an important partner for us to achieve the Zero Waste to Landfill commitment target in the office & brand event', 'Debora-Tjandrakusuma.png', '2020-01-25 07:22:18', '2020-02-05 13:06:07', NULL),
(6, NULL, 'id', 'Debora Tjandrakusuma', 'Corporate Affairs ', 'Nestl&eacute Indonesia', 'Waste4Change merupakan partner penting bagi kami untuk mencapai target komitmen Zero Waste to Landfill di kantor & brand event', 'Debora-Tjandrakusuma.png', '2020-01-25 07:22:21', '2020-01-25 07:31:10', NULL),
(7, NULL, 'en', 'Faiza Anindita', 'Creating Shared Value Manager ', 'Nestl&eacute Indonesia\r\n', 'Collaboration with Waste4Change makes me confident that the waste management system program in the community can be sustainable', 'Faiza-Anindita.png', '2020-01-25 07:23:27', '2020-02-05 13:06:05', NULL),
(8, NULL, 'id', 'Faiza Anindita', 'Creating Shared Value Manager ', 'Nestl&eacute Indonesia', 'Kolaborasi dengan Waste4Change membuat saya yakin bahwa program sistem pengelolaan sampah di komunitas dapat sustain', 'Faiza-Anindita.png', '2020-01-25 07:23:28', '2020-01-25 07:31:03', NULL);

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
  ADD PRIMARY KEY (`activity_id`) USING BTREE;

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
  ADD PRIMARY KEY (`offer_id`) USING BTREE;

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`) USING BTREE;

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`portfolio_id`) USING BTREE;

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`) USING BTREE;

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
  ADD PRIMARY KEY (`coverage_id`) USING BTREE;

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
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimony_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement`
--
ALTER TABLE `achievement`
  MODIFY `achievement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

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
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `dictionary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1472;

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
  MODIFY `flow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `portfolio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `recomendation`
--
ALTER TABLE `recomendation`
  MODIFY `recomendation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `service_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_coverage`
--
ALTER TABLE `service_coverage`
  MODIFY `coverage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT for table `service_recomendation`
--
ALTER TABLE `service_recomendation`
  MODIFY `service_recomendation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimony_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
