-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2020 at 05:40 PM
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
(6, 2, 'cities-available', '7', '', '2019-12-24 11:05:42', '2020-02-15 09:07:53', NULL),
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
(17, 6, 'residual-waste-that-doesnt-end-up-in-the-landfill', '8827.00', '', '2019-12-24 11:05:42', '2020-02-18 19:18:18', NULL),
(18, 6, 'cities-regencies', '10', '', '2019-12-24 11:05:42', '2020-02-18 16:40:12', NULL),
(19, 7, 'clients', '35.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(20, 7, 'project-finished', '44', '', '2019-12-24 11:05:42', '2020-01-25 07:52:34', NULL),
(21, 7, 'cities-regencies', '37.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(22, 8, 'clients', '25.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(23, 8, 'beneficiaries', '339714.00', '', '2019-12-24 11:05:42', '2020-02-15 09:08:36', NULL),
(24, 8, 'cities-regencies', '111.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(25, 9, 'clients', '13.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(26, 9, 'beneficiaries', '19150.00', '', '2019-12-24 11:05:42', '2020-02-15 09:08:42', NULL),
(27, 9, 'cities', '10', '', '2019-12-24 11:05:42', '2020-02-20 00:36:24', NULL),
(28, 10, 'clients', '53.00', '', '2019-12-24 11:05:42', '2019-12-24 11:05:42', NULL),
(29, 10, 'beneficiaries', '4271', '', '2019-12-24 11:05:42', '2020-02-15 09:09:09', NULL),
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
(73, 11, 'participant', '135', '', '2020-01-14 23:39:55', '2020-01-23 00:02:13', NULL),
(74, 32, 'clients', '53.00', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL),
(75, 32, 'beneficiaries', '4271', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL),
(76, 32, 'cities-available', '14', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL),
(77, 33, 'clients', '53.00', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL),
(78, 33, 'beneficiaries', '4271', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL),
(79, 33, 'cities-available', '14', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL),
(80, 34, 'clients', '53.00', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL),
(81, 34, 'beneficiaries', '4271', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL),
(82, 34, 'cities-available', '14', '', '2020-03-03 22:15:25', '2020-03-03 22:15:25', NULL);

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
(1, 1, 'general', '100-holistic-approach-on-waste-management', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(2, 1, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(3, 1, 'general', 'reduce-waste-to-landfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(4, 1, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(5, 1, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(6, 2, 'general', '100-holistic-approach-on-waste-management', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(7, 2, 'general', 'zerowastetolandfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(8, 2, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(9, 2, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(10, 3, 'general', '100-holistic-approach-on-waste-management', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(11, 3, 'general', 'reduce-waste-to-landfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(12, 3, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(13, 3, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(14, 3, 'general', 'increasing-staffs-awareness-of-waste-issues', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(15, 4, 'general', '100-holistic-approach-on-waste-management', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(16, 4, 'general', 'reduce-waste-to-landfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(17, 4, 'general', 'support-and-in-line-with-perpres-no-97-tahun-2017', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(18, 4, 'general', 'adding-sustainable-and-environmental-friendly-valu', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(19, 4, 'general', 'increasing-audiences-awareness-of-waste-issues', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(20, 5, 'general', 'zerowastetolandfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(21, 5, 'general', 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(22, 5, 'general', 'waste-journey-report', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(23, 5, 'general', 'help-to-increase-recycling-rate', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(24, 6, 'general', 'zerowastetolandfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(25, 6, 'general', 'prevent-your-brand-labelled-products-for-being-mis', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(26, 6, 'general', 'wider-reach', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(27, 6, 'general', 'meet-the-needs-of-your-brand-customers-in-more-loc', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(28, 6, 'general', 'waste-journey-report', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(29, 6, 'general', 'help-to-increase-recycling-rate', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(30, 9, 'for-clients', 'the-real-action-in-encouraging-the-implementation-', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(31, 9, 'for-clients', 'supporting-the-green-concept-of-our-clients-brand', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(32, 9, 'for-schools', 'increased-knowledge-and-capacity-of-students-and-t', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(33, 9, 'for-schools', 'schools-can-contribute-to-supporting-and-executing', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(34, 9, 'for-schools', 'available-for-every-school-located-in-indonesia-w', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(35, 9, 'for-schools', 'for-schools-located-in-jakarta-we-help-to-support', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(36, 32, 'general', 'a-better-waste-management-guidelines-to-improve-wa', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(37, 32, 'general', 'custom-design-based-on-your-brand-guidelines-or-in', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(38, 33, 'general', '100-segregated-inorganic-waste', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(39, 33, 'general', 'reduce-volume-of-waste-into-landfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(40, 33, 'general', 'improve-recycling-rate', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(41, 33, 'general', 'prolong-material-life-by-recycling', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(42, 33, 'general', 'improve-waste-collector-recycler-jobs', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(43, 34, 'general', 'reducing-waste-that-ends-up-in-the-landfill', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(44, 34, 'general', 'compost-that-can-be-used-for-gardens-parks', NULL, '2020-03-03 22:15:04', '2020-03-03 22:15:04', NULL),
(49, 34, 'general', 'easy-to-compost-on-a-small-scale', NULL, '2020-03-31 22:34:42', '2020-03-31 22:35:11', NULL);

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
(71, 7, 'PT. Pelabuhan Indonesia', 'PT.-Pelabuhan-Indonesia-II.jpg', '2020-01-12 23:41:20', '2020-02-19 11:16:27', NULL),
(72, 11, 'Eawag', 'eawag.jpg', '2020-01-17 12:58:23', '2020-01-17 12:58:23', NULL),
(73, 11, 'Kalbe', 'kalbe.jpg', '2020-01-17 12:58:28', '2020-01-17 12:59:12', NULL),
(74, 11, 'Milano', 'milano.jpg', '2020-01-17 12:58:30', '2020-01-17 12:59:12', NULL),
(75, 11, 'Puspa Agro', 'puspa-argo.jpg', '2020-01-17 12:58:33', '2020-01-17 23:02:23', NULL),
(76, 11, 'USAID', 'USAID.jpg', '2020-01-17 12:58:37', '2020-01-17 12:59:27', NULL),
(77, 9, 'PT. NEC Idonesia', 'NEC.jpg', '2020-01-20 09:30:00', '2020-01-20 09:30:24', NULL),
(78, 9, 'Yayasan Bangun Kecerdasan Bangsa', 'ybkb.jpg', '2020-01-20 09:30:14', '2020-01-20 09:31:15', NULL),
(79, 10, 'PT L\'Oreal Indonesia', 'L\'Oreal.jpg', '2020-01-22 23:57:00', '2020-01-23 17:12:01', NULL),
(80, 10, 'The Body Shop', 'The-Body-Shop.jpg', '2020-01-22 23:57:14', '2020-01-22 23:59:30', NULL),
(81, 32, 'DBS', 'DBS.jpg', '2020-03-03 22:32:19', '2020-03-09 08:57:59', NULL),
(82, 32, 'World Bank', 'World-Bank.jpg', '2020-03-03 22:32:19', '2020-03-09 08:57:59', NULL),
(83, 32, 'Kementerian PUPR', 'PUPR.jpg', '2020-03-03 22:32:19', '2020-03-10 08:01:51', NULL),
(84, 32, 'Kementerian Kuangan', 'kemetrian-keuangan.jpg', '2020-03-03 22:32:19', '2020-03-09 09:03:20', NULL),
(85, 32, 'IKEA', 'IKEA.jpg', '2020-03-03 22:32:19', '2020-03-09 08:58:22', NULL),
(86, 32, 'EPSON', 'epson.png', '2020-03-03 22:32:19', '2020-03-09 09:02:01', NULL);

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
(721, 'en', 'Blog and News', 'blog-and-news', 'home'),
(722, 'id', 'Blog dan Berita', 'blog-and-news', 'home'),
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
(780, 'id', 'Anda sekarang juga!', 'now!', 'service_cta'),
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
(848, 'id', 'Studi Sampah Sungai dan Laut', 'marine-debris-study', 'service_category_name2'),
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
(902, 'id', 'Rancangan Pengelolaan Sampah untuk Program Revitalisasi di Masjid Jami\' dan Permukiman Beting di Pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', 'service_name'),
(903, 'id', 'Studi Manajemen Sampah - Pemetaan Pemangku Kepentingan dan Alur Sampah di Jakarta dan Surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', 'service_name'),
(904, 'en', 'Waste Management Scouting Study - Stakeholders Mapping and Waste Flow in Jakarta and Surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', 'service_name'),
(905, 'id', 'Proyek Pemantauan Sampah Plastik di Sungai-Sungai di Jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', 'service_name'),
(906, 'en', 'Riverine Plastic Monitoring Project in Jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', 'service_name'),
(907, 'en', 'Technical Due Diligence for <br>ITF Sunter Jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', 'service_name'),
(908, 'id', 'Uji Kelayakan untuk <br>ITF Sunter Jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', 'service_name'),
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
(960, 'id', 'Kami membantu klien kami untuk menerapkan program-program yang mendorong komunitas untuk ikut bertindak dan memberikan kontribusi nyata terhadap krisis pengelolaan sampah di Indonesia', 'we-help-our-clients-to-implement-programs-that-enc', 'service_description'),
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
(996, 'id', 'Penerapan Prinsip 3R (Reduce-Reuse-Recycle)', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'service_slogan'),
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
(1014, 'id', 'Waste4Change menyediakan konsultasi melalui layanan Solid Waste Management (SWM) Research yang bertujuan meningkatkan pengelolaan sampah dengan melakukan analisis terperinci dan mengidentifikasi program dan sistem yang paling tepat, baik di kota, provinsi, bangunan, atau institusi publik dan komersial lainnya.<br><br>Layanan ini juga bertujuan untuk memaksimalkan keuntungan yang didapat dari menerapkan pengelolaan sampah yang bertanggung jawab.', 'waste4change-provides-consultation-through-solid-w', 'service_about'),
(1015, 'en', 'According to recent BPS statistics, waste management ranks the lowest when compared to other environmental issues (energy, air pollution, transportation).<br>At Waste4Change, we see this as a challenge to implement programs that encourages the community to act and give real contributions to the ongoing waste crisis in Indonesia through Community-based Implementation.', 'according-to-recent-bps-statistics-waste-manageme', 'service_about'),
(1016, 'id', 'Berdasarkan statistik dari BPS 2018, pengelolaan sampah menempati perhatian paling akhir dalam ketidakpedulian masyarakat Indonesia dibandingkan dengan isu lingkungan yang lain (energi, polusi udara, transportasi).<br><br>Kami di Waste4Change melihat hal ini sebagai sebuah tantangan untuk menerapkan program-program yang mendorong komunitas lokal untuk bertindak dan memberikan kontribusi nyata terhadap permasalahan sampah di Indonesia yang tengah berlangsung melalui layanan Community-based Implementation', 'according-to-recent-bps-statistics-waste-manageme', 'service_about'),
(1017, 'en', '3R School Program is a program designed to encourage the increasing awareness of school residents to apply 3R Principles (Reduce, Reuse, Recycle) for the creation of responsible waste management system in schools. The aims of this program is to assist schools. Waste4Change acts as a facilitator in assisting beneficiaries to achieve the objectives of the program.', '3r-school-program-is-a-program-designed-to-encoura', 'service_about'),
(1018, 'id', '3R School Program adalah program yang dirancang untuk mendorong peningkatan kesadaran warga sekolah untuk menerapkan prinsip 3R (Reduce, Reuse, Recycle) demi terwujudnya sistem pengelolaan sampah yang bertanggung jawab di sekolah-sekolah. Waste4Change berperan sebagai fasilitator dalam mendampingi penerima manfaat mencapai tujuan program yang telah ditetapkan.', '3r-school-program-is-a-program-designed-to-encoura', 'service_about'),
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
(1028, 'id', 'Indonesia merupakan penyumbang sampah laut terbesar kedua di dunia, penyebab utamanya adalah karena kurang optimalnya penanganan sampah di darat. Di tahun 2010, diperkirakan ada sebanyak 3,2 juta ton sampah plastik per tahun yang tidak dikelola dengan baik. Jumlah tersebut diperkirakan akan berlipat ganda di tahun 2025 jika tidak terjadi perubahan yang signifikan. <br>Studi ini bertujuan untuk lebih memahami pengelolaan sampah di Indonesia, memetakan alur sampah kemasan, dan mengidentifikasi pemangku kepentingan yang potensial di tingkat lokal untuk berkolaborasi demi mencegah sampah kemasan agar tidak berakhir di laut.', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'service_about'),
(1029, 'en', 'The Ocean Cleanup is a Dutch-based non-profit organization who develops advanced technologies to rid the world\'s oceans of plastics. By deploying their fleet of systems, they aim to remove 50% of the Great Pacific Garbage Patch in just five years\' time. By having the same mission on tackling waste problems, The Ocean Cleanup cooperates with Waste4Change as their local partner in Indonesia and conducted a riverine plastic emission study in Jakarta\'s rivers in April 2018. <br>During a 10-day fieldwork supported by DKI Jakarta Orange Troops, plastics were monitored at 7 river points throughout Jakarta, which includes Ciliwung and Pesanggrahan River. Plastic samples were trawled and analyzed by dividing them into different types. By having these data, hopefully appropriate measures can be done to tackle marine debris starting from the rivers, not only in Jakarta, but  throughout Indonesia and in neighboring countries.', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'service_about'),
(1030, 'id', 'The Ocean Cleanup merupakan organisasi non-profit asal Belanda yang mengembangkan teknologi mutakhir untuk membersihkan lautan dari sampah plastik. Dengan meluncurkan armada mereka, The Ocean Cleanup berambisi untuk menyingkirkan 50% sampah di the Great Pacific Garbage Patch hanya dalam waktu lima tahun. Dengan berbagi misi yang sama untuk mengatasi permasalahan sampah, The Ocean Cleanup bekerja sama dengan Waste4Change sebagai partner lokal mereka di Indonesia dan melakukan studi polusi plastik di sungai-sungai di Jakarta pada bulan April tahun 2018. <br>Melalui kerja lapangan yang dilaksanakan selama 10 hari dengan dibantu oleh Pasukan Oranye Jakarta, sampah plastik di monitor di 7 titik sungai di Jakarta, termasuk di dalamnya sungai Ciliwung dan sungai Pesanggrahan. Sampel plastik dijaring dan dianalisis dengan cara membaginya ke beberapa tipe. Dengan data ini, diharapkan dapat diambil langkah yang tepat untuk mengatasi masalah sampah di laut, dimulai dari menangani sampah yang berada di sungai, dan tidak hanya sungai di Jakarta, tapi juga di seluruh Indonesia dan bahkan di negara-negara tetangga. ', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'service_about'),
(1031, 'en', 'Ramboll Danmark A/S as the main consultant was working together with Waste4Change as local consultant to conduct technical due diligence for 2,200 tpd and 35 MW Waste to Energy Plant that will be built in Sunter, North Jakarta.<br>This due diligence is done for lenders appraisal and to make sure that the Waste to Energy plant will be operating sustainably in terms of technicalities', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'service_about'),
(1032, 'id', 'Ramboll Danmark A/S sebagai konsultan utama bekerja sama dengan Waste4Change sebagai konsultan lokal untuk melakukan uji kelayakan terhadap fasilitas Waste-to-Energy dengan kapasitas 2.200 ton/hari dan menghasilkan listrik sebesar 35 MW. \r\n\r\nUji kelayakan ini dilakukan untuk penilaian pemberi pinjaman serta untuk memastikan bahwa fasilitas the Waste to Energy akan beroperasi secara berkelanjutan dari segi teknis.', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'service_about'),
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
(1044, 'id', 'Pengetahuan mengenai pengelolaan sampah yang bertanggung jawab dan konsep 3R (Reduce- Reuse, Recycle) sangatlah penting, terutama bagi institusi. Waste4Change memfasilitasi institusi untuk menjadi agen perubahan agar mereka bisa mendorong terciptanya sistem pengelolaan sampah	 yang bertanggung jawab d kantor mereka sendiri. <br>Sebagai negara yang memiliki landasan kuat dalam aspek berkelanjutan, Kedutaan Finlandia ingin menjalankan perannya dalam pengelolaan sampah di Indonesia melalui praktik kantor hijau. Mereka bersemangat untuk menerapkan pengelolaan sampah di kantor mereka demi mengurangi jumlah timbulan sampah yang berakhir di TPST Bantar Gebang. <br>AKABIS-Class di Kedutaan Finlandia dilaksanakan di tahun 2018 dan sekitar 20 pegawai dari berbagai sektor mengikuti sesi edukasi tersebut.', 'knowledge-about-responsible-solid-waste-management', 'service_about'),
(1045, 'en', 'The ancient method of making paper is not only recognized as a way of reading history, but also as a way to understand the philosophy of letters, eastern culture, and the sustainability of culture and the environment.<br>The Museum of Modern and Contemporary Art in Nusantara (also known as Museum MACAN) invited Waste4Change to enlighten the ways on handling solid waste sustainably especially on paper waste to the audience of enthusiasts on sustainability in their museum.', 'the-ancient-method-of-making-paper-is-not-only-rec', 'service_about'),
(1046, 'id', 'Metode kuno untuk membuat kertas tidak hanya dikenal sebagai cara untuk memahami sejarah, tetapi juga sebagai cara untuk memahami filosofi dibalik aksara, budaya Timur, serta keberlanjutan budaya dan lingkungan. <br>Museum of Modern and Contemporary Art in Nusantara (MACAN) mengundang Waste4Change untuk memberi pencerahan mengenai cara-cara menangani sampah, terutama sampah kertas, kepada para pengunjung museum yang antusias terhadap topik keberlanjutan atau sustainability', 'the-ancient-method-of-making-paper-is-not-only-rec', 'service_about'),
(1047, 'en', 'PT Bank DBS Indonesia is one of Waste4Change\'s clients that implements ZWTL (Zero Waste To Landfill) concept in its office\'s waste management system. To increase the performance of ZWTL program at the PT Bank DBS Indonesia office, all of the PT Bank DBS Indonesia employees were required to enroll in the Akabis Xperience program held by Waste4Change.<br>Through AKABIS Xperience activities, PT Bank DBS Indonesia employees were expected to understand more about responsible waste management concept.', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'service_about'),
(1048, 'id', 'PT BANK DBS Indonesia merupakan salah satu klien Waste4Change yang menggunakan layanan ZWTL (Zero Waste To Landfill). Salah satu syarat agar program ZWTL bisa diterapkan di kantor PT BANK DBS Indonesia yaitu dengan melaksanakan AKABIS-Xperience untuk semua pegawai PT BANK DBS Indonesia.<br><br>Melalui kegiatan-kegiatan di AKABIS Xperience, pegawai PT BANK DBS Indonesia bisa meningkatkan kepedulian dan pemahaman mereka mengenai sistem pengelolaan sampah yang bertanggung jawab.', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'service_about'),
(1049, 'en', 'Waste4Change became one of the facilitators for YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition 2018. The event is implemented by Divers Clean Action and hosted by the US Embassy.<br><br>Through Akabis Xperience, Waste4Change delivered hands-on experiences and ensured the continuing effort of supporting behavioral change regarding waste management. <br><br>61 young leaders from 11 Southeast Asia countries were given a brief presentation about the current waste management condition by Waste4Change representatives, followed by a visit to Waste4Change\'s Material Recovery Facility (MRF), Waste4Change\'s Composting Area, and the infamous Bantar Gebang landfill ??? located not far from Waste4Change\'s head office. <br><br>Upon visiting Waste4Change\'s MRF, the YSEALI\'s young participants were encouraged to express their curiosities. Moreover, they were also given a close-up introduction about Waste4Change\'s Black Soldier Flies (BSF) nurseries and how Black Soldier Flies holds a big part in the organic waste composting process.', 'waste4change-became-one-of-the-facilitators-for-ys', 'service_about'),
(1050, 'id', 'Waste4Change menjadi salah satu fasilitator untuk YSEALI (Young Southeast Asian Leader Initiative) Marine Debris Expedition Workshop yang diselenggarakan oleh Divers Clean Action dan dihost oleh Kedutaan Amerika Serikat. <br>Melalui program AKABIS-Xperience, Waste4Change ingin memberikan pengalaman langsung dan memastikan adanya perubahan perilaku yang berkelanjutan dalam usaha pengelolaan sampah yang lebih baik.<br>61 pemimpin muda dari 11 negara Asia Tenggara diberikan presentasi singkat oleh perwakilan Waste4change mengenai kondisi pengelolaan sampah yang ada di Indonesia, dilanjutkan oleh kunjungan ke Rumah Pemulihan Material (RPM) dan Rumah Kompos Waste4Change, dan sekaligus ke TPST Bantar Gebang yang berlokasi tidak jauh dari kantor Waste4Change.', 'waste4change-became-one-of-the-facilitators-for-ys', 'service_about'),
(1051, 'en', 'Analysis and recommendations to implement a responsible 3R-based waste management system using the approach of 5 aspects', 'analysis-and-recommendations-to-implement-a-respon', 'service_achievement'),
(1052, 'id', 'Analisis dan rekomendasi untuk menerapkan sistem pengelolaan sampah yang bertanggung jawab dan berbasis 3R dengan menggunakan 5 Aspek Persampahan', 'analysis-and-recommendations-to-implement-a-respon', 'service_achievement'),
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
(1072, 'id', 'Makalah ilmiah mengenai proyek ini bisa dibaca di <a href=\"https://theoceancleanup.com/scientific-publications/riverine-plastic-emission-from-jakarta-into-the-ocean/\">link ini</a>.', 'published-paper-regarding-the-project-can-be-found', 'service_achievement'),
(1073, 'en', 'Solid Waste Characteristics and solid-waste existing system review', 'solid-waste-characteristics-and-solid-waste-existi', 'service_achievement'),
(1074, 'id', 'Ulasan mengenai karakteristik sampah serta sistem pengelolaan sampah yang sudah ada', 'solid-waste-characteristics-and-solid-waste-existi', 'service_achievement'),
(1075, 'en', 'Solid waste supply plan review and its possible disruptions', 'solid-waste-supply-plan-review-and-its-possible-di', 'service_achievement'),
(1076, 'id', 'Ulasan rencana pasokan sampah dan kemungkinan interupsi yang terjadi', 'solid-waste-supply-plan-review-and-its-possible-di', 'service_achievement'),
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
(1110, 'id', 'Sesi Sharing: kenapa kita harus menerapkan pengelolaan sampah yang bertanggung jawab?', 'sharing-session:-why-we-need-to-be-responsible-for', 'service_achievement'),
(1111, 'en', 'Presentation Session: how can we conduct responsible solid waste management starting from our office?', 'presentation-session:-how-can-we-conduct-responsib', 'service_achievement'),
(1112, 'id', 'Sesi Presentasi: bagaimana kita bisa menerapkan pengelolaan sampah yang ertanggung jawab dimulai dari kantor sendiri?', 'presentation-session:-how-can-we-conduct-responsib', 'service_achievement'),
(1113, 'en', 'Interactive Games', 'interactive-games', 'service_achievement'),
(1114, 'id', 'Permainan Interaktif', 'interactive-games', 'service_achievement'),
(1115, 'en', 'Open discussion with fellow panels and audiences on solid waste management', 'open-discussion-with-fellow-panels-and-audiences-o', 'service_achievement'),
(1116, 'id', 'Bagaimana cara menangani dan mengelola sampah secara bertanggung jawab dan berkelanjutan, terutama sampah kertas', 'open-discussion-with-fellow-panels-and-audiences-o', 'service_achievement'),
(1117, 'en', 'The importance of responsible solid waste management', 'the-importance-of-responsible-solid-waste-manageme', 'service_achievement'),
(1118, 'id', 'Pentingnya pengelolaan sampah yang bertanggung jawab', 'the-importance-of-responsible-solid-waste-manageme', 'service_achievement'),
(1119, 'en', 'How to handle and treat waste responsibly and sustainably especially on paper waste', 'how-to-handle-and-treat-waste-responsibly-and-sust', 'service_achievement'),
(1120, 'id', 'Bagaimana cara menanggulangi kerugian yang disebabkan oleh sampah terhadap manusia dan makhluk hidup lain', 'how-to-handle-and-treat-waste-responsibly-and-sust', 'service_achievement'),
(1121, 'en', 'How to mitigate adverse effects of waste for humans and other living creatures', 'how-to-mitigate-adverse-effects-of-waste-for-human', 'service_achievement'),
(1122, 'id', 'Adanya diskusi terbuka antara pembicara dan peserta mengenai pengelolaan sampah', 'how-to-mitigate-adverse-effects-of-waste-for-human', 'service_achievement'),
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
(1150, 'id', 'Tur edukasional dan diskusi interaktif yang berlangsung selama 6 jam<br>Kunjungan ke TPA/TPST<br>Kunjungan ke Fasilitas W4C <br>Akabis Xperience dapat diikuti oleh<ul style=\"padding-inline-start: 17px;\"><li>Masyarakat umum, terutama anak muda yang menjadi agen perubahan demi masa depan pengelolaan sampah di Indonesia yang lebih baik lagi</li><li>Institusi</li></ul>', 'a-6-hour-educational-tour-and-interactive-discussi', 'service_offer_decription'),
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
(1198, 'id', 'Studi Kelayakan Pengelolaan Sampah', 'solid-waste-management-feasibility-study', 'service_expertise_name'),
(1199, 'en', 'Waste Audit', 'waste-audit', 'service_expertise_name'),
(1200, 'id', 'Audit Sampah', 'waste-audit', 'service_expertise_name'),
(1201, 'en', 'Technical and Operational Design of SWM', 'technical-and-operational-design-of-swm', 'service_expertise_name'),
(1202, 'id', 'Desain Operasional dan Teknis Pengelolaan Sampah', 'technical-and-operational-design-of-swm', 'service_expertise_name'),
(1203, 'en', 'SWM Regulatory Analysis', 'swm-regulatory-analysis', 'service_expertise_name'),
(1204, 'id', 'Analisis Peraturan Pengelolaan Sampah', 'swm-regulatory-analysis', 'service_expertise_name'),
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
(1216, 'id', 'Analisis Alur Material (VCA)', 'material-flow-analysis-vca', 'service_expertise_name'),
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
(1290, 'id', 'Pengelola Perumahan', 'residential-areahousing', 'service_recomendation'),
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
(1403, 'id', 'Studi Sampah Sungai dan Laut', 'study-about-marine-debris', 'service_expertise'),
(1404, 'en', 'Participants', 'participant', 'our_achievement'),
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
(1425, 'id', 'Hasil Pekerjaan', 'deliverable', 'section'),
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
(1471, 'id', 'YSEALI (Young Southeast Asian Leader Initiative) Diselenggarakan oleh Divers Clean Action dan Kedutaan AS', 'implemented-by-divers-clean-action-and-hosted-by-u', 'service_client'),
(1472, 'en', 'Pick city available', 'pick-city-available', NULL),
(1473, 'id', 'Pilih kota yang telah disediakan', 'pick-city-available', NULL),
(1474, 'en', 'View Project', 'view-project', NULL),
(1475, 'id', 'Lihat Proyek', 'view-project', NULL),
(1476, 'en', 'Ramboll Danmark A/S', 'ramboll-danmark', 'service_client'),
(1477, 'id', 'Ramboll Danmark A/S', 'ramboll-danmark', 'service_client'),
(1478, 'en', 'Collect Waste Management', 'collect-waste-management', 'service_category'),
(1479, 'id', 'Collect Waste Management', 'collect-waste-management', 'service_category'),
(1480, 'en', 'Custom Waste Bin', 'custom-waste-bin', 'service_name'),
(1481, 'id', 'Custom Waste Bin', 'custom-waste-bin', 'service_name'),
(1482, 'en', 'Personal Waste Management', 'personal-waste-management', 'service_name'),
(1483, 'id', 'Personal Waste Management', 'personal-waste-management', 'service_name'),
(1484, 'en', 'Composting Tools', 'composting-tools', 'service_name'),
(1485, 'id', 'Composting Tools', 'composting-tools', 'service_name'),
(1486, 'en', 'Get the special waste bins designed specifically to support waste segregation to improve waste management in your area. Waste4Change provides special waste bins with educational instructions for waste-sorting needs. The design can be adjusted to the frequency and behavior of waste segregation in your area.', 'get-the-special-waste-bins-designed-specifically-t', 'service_description'),
(1487, 'id', 'Dapatkan tempat sampah yang didesain khusus untuk pemilahan sampah untuk tingkatkan pengelolaan sampah di area Anda. Waste4Change menyediakan tempat sampah dengan bentuk dan petunjuk edukasi untuk kebutuhan pemilahan sampah. Desain dapat disesuaikan dengan frekuensi dan perilaku pemilahan sampah di area Anda.', 'get-the-special-waste-bins-designed-specifically-t', 'service_description'),
(1488, 'en', 'Invite Visitors to Increase Waste Segregation with the Right Instructions', 'invite-visitors-to-increase-waste-segregation-with', 'service_slogan'),
(1489, 'id', 'Ajak Pengunjung Tingkatkan Pemilahan Sampah dengan Petunjuk yang Tepat', 'invite-visitors-to-increase-waste-segregation-with', 'service_slogan'),
(1490, 'en', 'Educate people around your area with a better message on your waste bin stickers. With better awareness and education, it will be easier for you to improve the waste segregation rate in your area. You can also request a design based on your brand guidelines or interior design.', 'educate-people-around-your-area-with-a-better-mess', 'service_about'),
(1491, 'id', 'Berikan edukasi yang tepat pada orang-orang di sekitar area Anda dengan pesan-pesan yang lebih baik pada stiker tempat sampah Anda. Ketika edukasi diberikan dengan pesan yang lebih baik, mereka akan lebih mudah memahami dan pada akhirnya dapat meningkatkan tingkat pemilahan di sekitar area Anda. ', 'educate-people-around-your-area-with-a-better-mess', 'service_about'),
(1492, 'en', 'A better waste management guidelines to improve waste segregation', 'a-better-waste-management-guidelines-to-improve-wa', 'service_benefit'),
(1493, 'id', 'Panduan memilah sampah untuk bantu tingkatkan pemilahan sampah', 'a-better-waste-management-guidelines-to-improve-wa', 'service_benefit'),
(1494, 'en', 'Custom design based on your brand guidelines or interior design', 'custom-design-based-on-your-brand-guidelines-or-in', 'service_benefit'),
(1495, 'id', 'Tempat sampah yang bisa dibuat sesuai keperluan brand atau panduan desain interior ', 'custom-design-based-on-your-brand-guidelines-or-in', 'service_benefit'),
(1496, 'en', '4 in 1 Capsule', '4-in-1-capsule', 'service_facility'),
(1497, 'id', '4 in 1 Capsule', '4-in-1-capsule', 'service_facility'),
(1498, 'en', 'Tube', 'tube', 'service_facility'),
(1499, 'id', 'Tube', 'tube', 'service_facility'),
(1500, 'en', '3 in 1 Capsule', '3-in-1-capsule', 'service_facility'),
(1501, 'id', '3 in 1 Capsule', '3-in-1-capsule', 'service_facility'),
(1502, 'en', 'Custom/tailor made bin', 'customtailor-made-bin', 'service_facility'),
(1503, 'id', 'Custom/tailor made bin', 'customtailor-made-bin', 'service_facility'),
(1504, 'en', '2 in 1 Capsule', '2-in-1-capsule', 'service_facility'),
(1505, 'id', '2 in 1 Capsule', '2-in-1-capsule', 'service_facility'),
(1506, 'en', 'Making sure that your inorganic waste is recycled will be easier with Personal Waste Management services from Waste4Change. Segregate your waste and Waste4Change will pick up your inorganic waste regularly--straight from your home! This program is only available in the areas of South Jakarta, South Tangerang and Bekasi.', 'making-sure-that-your-inorganic-waste-is-recycled-', 'service_description'),
(1507, 'id', 'Memastikan sampah anorganikmu didaur ulang jadi lebih mudah dengan jasa Personal Waste Management dari Waste4Change. Pilah sampahmu dan Waste4Change akan menjemput sampah anorganikmu secara rutin-langsung ke rumahmu! Program ini hanya tersedia di wilayah Jakarta Selatan, Tangerang Selatan, dan Bekasi.', 'making-sure-that-your-inorganic-waste-is-recycled-', 'service_description'),
(1508, 'en', 'No More Mixed Waste Collection', 'no-more-mixed-waste-collection', 'service_slogan'),
(1509, 'id', 'Tidak Ada Lagi Sampah yang Diangkut dalam Kondisi Tercampur ', 'no-more-mixed-waste-collection', 'service_slogan'),
(1510, 'en', 'Responsible waste management starts with waste segregation. That is why, waste segregation needs to be done from the source, in this case: your house.Through the Personal Waste Management (PWM) service, you can segregate your waste at home and we will ensure the collection of your inorganic waste every week. Later, your waste will be responsibly managed by Waste4Change.', 'responsible-waste-management-starts-with-waste-seg', 'service_about'),
(1511, 'id', 'Pengelolaan sampah yang bertanggung jawab dimulai dari pemilahan sampah. Itulah sebabnya, pemilahan perlu dilakukan sejak dari sumber, dalam hal ini: rumah. Melalui layanan Personal Waste Management (PWM), Anda dapat memulai pemilahan sampah di rumah dan kami akan memastikan adanya pengangkutan sampah anorganik setiap minggunya. Nantinya, sampah Anda akan dikelola oleh Waste4Change secara bertanggung jawab.', 'responsible-waste-management-starts-with-waste-seg', 'service_about'),
(1512, 'en', '100% segregated INORGANIC waste', '100-segregated-inorganic-waste', 'service_benefit'),
(1513, 'id', 'pemilahan sampah ANORGANIK 100%', '100-segregated-inorganic-waste', 'service_benefit'),
(1514, 'en', 'Reduce volume of waste into landfill', 'reduce-volume-of-waste-into-landfill', 'service_benefit'),
(1515, 'id', 'Mengurangi timbulan sampah yang dibuang ke TPA', 'reduce-volume-of-waste-into-landfill', 'service_benefit'),
(1516, 'en', 'Improve recycling rate', 'improve-recycling-rate', 'service_benefit'),
(1517, 'id', 'Meningkatkan tingkat daur ulang ', 'improve-recycling-rate', 'service_benefit'),
(1518, 'en', 'Prolong material life by recycling', 'prolong-material-life-by-recycling', 'service_benefit'),
(1519, 'id', 'Memperpanjang usia pakai material melalui daur ulang', 'prolong-material-life-by-recycling', 'service_benefit'),
(1520, 'en', 'Improve waste collector & recycler jobs', 'improve-waste-collector-recycler-jobs', 'service_benefit'),
(1521, 'id', 'Turut berkontribusi dalam kondisi kerja pengangkut dan pemilah sampah / tenaga kebersihan / tenaga kerja persampahan yang lebih baik', 'improve-waste-collector-recycler-jobs', 'service_benefit'),
(1522, 'en', 'Inorganic Trash Bags', 'inorganic-trash-bags', 'service_facility'),
(1523, 'id', 'Kantong Sampah Anorganik', 'inorganic-trash-bags', 'service_facility'),
(1524, 'en', '1 iron-frame', '1-iron-frame', 'service_facility'),
(1525, 'id', '1 rangka besi', '1-iron-frame', 'service_facility'),
(1526, 'en', 'Waste collection in a segregated state every week', 'waste-collection-in-a-segregated-state-every-week', 'service_facility'),
(1527, 'id', 'Pengangkutan sampah dalam kondisi terpilah setiap minggu', 'waste-collection-in-a-segregated-state-every-week', 'service_facility'),
(1528, 'en', 'Waste4Change provides composting tools for those of you who want to help optimize the management of organic waste by processing it into compost', 'waste4change-provides-composting-tools-for-those-o', 'service_description'),
(1529, 'id', 'Waste4Change menyediakan peralatan pengomposan untuk Anda yang ingin bantu optimalkan pengelolaan sampah organik dengan memprosesnya menjadi kompos.', 'waste4change-provides-composting-tools-for-those-o', 'service_description'),
(1530, 'en', 'Divert Organic Waste from Landfill with Composting', 'divert-organic-waste-from-landfill-with-composting', 'service_slogan'),
(1531, 'id', 'Selamatkan Sampah Organik dari TPA dengan Mengompos ', 'divert-organic-waste-from-landfill-with-composting', 'service_slogan'),
(1532, 'en', 'Once the organic waste has already been segregated from the rest of the waste, it becomes valuable. The value of the organic materials can be enhanced for your garden by processing it through composting. One of the benefits of waste segregation is to increase the number of valuable materials for recycling purposes and circular economy. Or you can also learn to manage organic waste using Black Soldier Flies (BSF) by enrolling in our BSF Training Class at BSF Learning Center', 'once-the-organic-waste-has-already-been-segregated', 'service_about'),
(1533, 'id', 'Setelah sampah organik sudah dipilah dan dipisahkan dari seluruh sampah lainnya, materialnya akan menjadi bernilai. Nilai dari material organik yang terkandung di dalamnya dapat ditingkatkan melalui proses mengompos. Peralatan kompos Waste4Change dapat membantu Anda menghasilkan kompos secara aerobic (dengan bantuan oksigen) menggunakan Composting Bag Waste4Change. Atau Anda pun juga dapat belajar untuk mengelola sampah organik menggunakan Black Soldier Flies (BSF) dengan mendaftar pada pelatihan di BSF Learning Center.', 'once-the-organic-waste-has-already-been-segregated', 'service_about'),
(1534, 'en', 'Reducing waste that ends up in the landfill', 'reducing-waste-that-ends-up-in-the-landfill', 'service_benefit'),
(1535, 'id', 'Mengurangi timbulan sampah yang dibuang ke TPA', 'reducing-waste-that-ends-up-in-the-landfill', 'service_benefit'),
(1536, 'en', 'Compost that can be used for gardens / parks', 'compost-that-can-be-used-for-gardens-parks', 'service_benefit'),
(1537, 'id', 'Mendapatkan kompos untuk digunakan pada kebun/taman', 'compost-that-can-be-used-for-gardens-parks', 'service_benefit'),
(1538, 'en', 'Compost Bag', 'compost-bag', 'service_facility'),
(1539, 'id', 'Compost Bag', 'compost-bag', 'service_facility'),
(1540, 'en', 'Compost kit starter pack', 'compost-kit-starter-pack', 'service_facility'),
(1541, 'id', 'Kompos Starter Kit', 'compost-kit-starter-pack', 'service_facility'),
(1542, 'en', 'Black Soldier Flies larvae (optional)', 'black-soldier-flies-larvae-optional', 'service_facility'),
(1543, 'id', 'Larva Black Soldier Flies (opsional)', 'black-soldier-flies-larvae-optional', 'service_facility'),
(1552, 'en', 'Get It Now', 'get-it-now', 'service_cta'),
(1553, 'id', 'Pesan Sekarang', 'get-it-now', 'service_cta'),
(1554, 'en', 'Subscribe Now', 'subscribe-now', 'service_cta'),
(1555, 'id', 'Berlangganan Sekarang', 'subscribe-now', 'service_cta'),
(1556, 'en', 'Design your custom waste bin now!', 'design-your-custom-waste-bin-now!', 'service_cta'),
(1557, 'id', 'Desain Custom Waste Bin Anda sekarang juga!            ', 'design-your-custom-waste-bin-now!', 'service_cta'),
(1558, 'en', 'Start your personal waste management now!', 'start-your-personal-waste-management-now!', 'service_cta'),
(1559, 'id', 'Mulai Personal Waste Management di rumah Anda sekarang!', 'start-your-personal-waste-management-now!', 'service_cta'),
(1560, 'en', 'Start your composting now!', 'start-your-composting-now!', 'service_cta'),
(1561, 'id', 'Mulai mengompos sekarang juga!', 'start-your-composting-now!', 'service_cta'),
(1562, 'en', 'Design your', 'design', 'service_cta'),
(1563, 'id', 'Desain', 'design', 'service_cta'),
(1564, 'en', 'in your house', 'in-your-house', 'service_cta'),
(1565, 'id', 'di rumah', 'in-your-house', 'service_cta'),
(1566, 'en', 'Composting', 'composting', 'service_cta'),
(1567, 'id', 'Mengompos', 'composting', 'service_cta'),
(1568, 'en', 'now!', 'now', 'service_cta'),
(1569, 'id', 'sekarang juga!', 'now', 'service_cta'),
(1570, 'en', 'in your house now!', 'in-your-house-now', 'service_cta'),
(1571, 'id', 'di rumah Anda sekarang!', 'in-your-house-now', 'service_cta'),
(1572, 'en', 'Waste Bin Option', 'waste-bin-option', 'service_section'),
(1573, 'id', 'Pilihan Waste Bin', 'waste-bin-option', 'service_section'),
(1574, 'en', 'To improve waste segregation, the following are the types of segregated bins that can be selected', 'to-improve-waste-segregation, the following are the types of segregated', 'service_wasbin'),
(1575, 'id', 'Untuk meningkatkan pemilahan sampah, berikut adalah jenis tempat sampah terpilah yang bisa menjadi pilihan', 'to-improve-waste-segregation, the following are the types of segregated', 'service_wasbin'),
(1576, 'en', 'Easy to compost on a small scale in various places without the need for land or large space', 'easy-to-compost-on-a-small-scale', 'servive_benefit'),
(1577, 'id', 'Mudah mengompos dalam skala kecil di berbagai tempat tanpa membutuhkan lahan atau tempat luas', 'easy-to-compost-on-a-small-scale', 'servive_benefit');

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
(21, 6, 'easy-waste-collection-and-recycling-system-support', 'report-m.png', '2019-12-07 22:45:42', NULL, '2019-12-07 22:45:42'),
(33, 33, 'inorganic-trash-bags', 'frame.png', '2020-03-12 08:42:39', NULL, '2020-03-13 09:21:01'),
(34, 33, '1-iron-frame', 'wastebin-m.png', '2020-03-12 08:42:39', NULL, '2020-03-31 22:38:47'),
(35, 33, 'waste-collection-in-a-segregated-state-every-week', 'segregation-bin-m.png', '2020-03-12 08:42:39', NULL, '2020-03-31 22:38:42');

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
(36, 6, 'general', 'we-ensure-that-your-brand-labeled-was-not-ends-up-', 'wasteflow-epr-6.png', '2019-12-24 21:51:38', '2020-01-04 12:39:11', NULL),
(37, 32, 'general', '4-in-1-capsule', 'wastebin-4in1.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL),
(38, 32, 'general', 'tube', 'wastebin-tube.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL),
(39, 32, 'general', '3-in-1-capsule', 'wastebin-3in1.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL),
(40, 32, 'general', 'customtailor-made-bin', 'wastebin-custom.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL),
(41, 32, 'general', '2-in-1-capsule', 'wastebin-2in1.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL),
(42, 33, 'general', 'inorganic-trash-bags', 'wastebin-m.png', '2020-03-12 08:42:39', '2020-03-31 22:39:46', NULL),
(43, 33, 'general', '1-iron-frame', 'frame.png', '2020-03-12 08:42:39', '2020-03-31 22:39:41', NULL),
(44, 33, 'general', 'waste-collection-in-a-segregated-state-every-week', 'segregation-bin-m.png', '2020-03-12 08:42:39', '2020-03-31 22:39:42', NULL),
(45, 34, 'general', 'compost-bag', 'compost-bag.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL),
(46, 34, 'general', 'compost-kit-starter-pack', 'compost-starter.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL),
(47, 34, 'general', 'black-soldier-flies-larvae-optional', 'compost-bsf.png', '2020-03-12 08:42:39', '2020-03-12 08:43:17', NULL);

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
(9, 7, 'capacity-building-in-indonesia???s-frontline-territories', 'capacity-building', 'capacity-building-in-indonesia???s-frontline-territo', 'Ministry of Public Works and Housing', '', NULL, '2019-11-24 03:27:02', '2019-12-01 16:09:36', NULL),
(10, 8, '3r-green-school', '3r-green-school', 'capacity-building-in-indonesia???s-frontline-territo', 'Yayasan Unilever Indonesia', '', NULL, '2019-11-24 03:27:02', '2020-01-22 23:03:44', NULL),
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
(18, 'hse-division', '#4489a2', 'HSE.svg', '2019-12-08 00:56:23', '2020-02-26 18:30:36', NULL),
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
  `section_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_slug`, `section_name`, `section_menu_name`, `section_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'welcome', 'welcome', '', 1, '2019-12-07 22:26:24', '2020-03-12 08:26:07', NULL),
(2, 'header', 'header', '', 2, '2019-12-07 22:26:24', '2020-03-12 08:26:39', NULL),
(3, 'our-achievement', 'our-br-achievement', '', 3, '2019-12-07 22:26:24', '2020-03-12 08:26:41', NULL),
(4, 'about', 'about', 'about', 4, '2019-12-07 22:26:24', '2020-03-12 08:26:41', NULL),
(5, 'description', 'description', 'description', 5, '2019-12-07 22:26:24', '2020-03-12 08:26:42', NULL),
(6, 'achievement-deliverable', 'deliverable', 'deliverable', 6, '2019-12-07 22:26:24', '2020-03-12 08:26:42', NULL),
(7, 'we-offer', 'we-offer', 'offer', 7, '2019-12-07 22:26:24', '2020-03-12 08:26:43', NULL),
(8, 'activities', 'activities', 'activities', 5, '2019-12-07 22:26:24', '2020-03-12 08:26:21', NULL),
(9, 'benefit', 'benefit', 'benefit', 9, '2019-12-07 22:26:24', '2020-03-12 08:26:44', NULL),
(10, 'expertise-and-experience', 'expertise-and-experience', 'expertise-and-experience', 10, '2019-12-07 22:26:24', '2020-03-12 08:26:45', NULL),
(11, 'output-benefit', 'output-benefit', 'output-benefit', 11, '2019-12-07 22:26:24', '2020-03-12 08:26:46', NULL),
(12, 'what-you-get', 'what-you-get', 'what-you-get', 12, '2019-12-07 22:26:24', '2020-03-12 08:26:47', NULL),
(13, 'waste-flow', 'waste-flow', 'waste-flow', 13, '2019-12-07 22:26:24', '2020-03-12 08:26:48', NULL),
(14, 'portfolio-highlight', 'portofolio-highlight', NULL, 14, '2019-12-07 22:26:24', '2020-03-12 08:26:49', NULL),
(15, 'research-highlight', 'research-hightlight', NULL, 15, '2019-12-07 22:26:24', '2020-03-12 08:26:50', NULL),
(16, 'program-highlight', 'program-highlight', NULL, 16, '2019-12-07 22:26:24', '2020-03-12 08:26:51', NULL),
(17, 'similar-project', 'similar-project', 'similar-project', 17, '2019-12-07 22:26:24', '2020-03-12 08:26:53', NULL),
(18, 'our-client', 'client', 'client', 18, '2019-12-07 22:26:24', '2020-03-12 08:26:54', NULL),
(19, 'recommended-for', 'recommended-for', 'recommendation', 19, '2019-12-07 22:26:24', '2020-03-12 08:27:03', NULL),
(20, 'our-coverage', 'our-coverage', 'coverage', 20, '2019-12-07 22:26:24', '2020-03-12 08:27:05', NULL),
(21, 'cta', 'cta', '', 21, '2019-12-07 22:26:24', '2020-03-12 08:27:06', NULL),
(22, 'waste-bin-option', 'waste-bin-option', 'waste-bin-option', 12, '2020-03-12 08:27:27', '2020-03-12 08:27:42', NULL),
(23, 'whatyouget', 'what-you-get', 'what-you-get', 12, '2020-03-17 01:19:07', '2020-03-17 01:30:03', NULL);

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
  `service_short_name` varchar(255) DEFAULT NULL,
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

INSERT INTO `service` (`service_id`, `service_category_id`, `service_parent_id`, `service_subcategory_name`, `service_slug`, `service_name`, `service_short_name`, `service_slogan`, `service_description`, `service_about`, `service_client_name`, `service_client_logo`, `service_about_image`, `service_header_image`, `service_thumbnail_image`, `service_page_url`, `service_join_url`, `service_proposal_url`, `service_portfolio_url`, `has_page`, `is_new`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '', 'responsible-waste-management', 'responsible-waste-management', 'RWM', 'no-more-mixed-waste', 'a-100-holistic-waste-management-for-companies-bu', 'waste-generation-is-inevitable-its-not-easy-to-r', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/responsible-waste-management', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSdydu6Ar9mGKppAI4V2fevcWkLSpTpiSwdbpv0moPU4-_o3NQ/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(2, 1, NULL, '', 'zero-waste-to-landfill', 'zero-waste-to-landfill', 'ZWTL', 'no-more-waste-that-end-up-in-landfills', 'take-an-active-part-in-preventing-our-local-landfi', 'every-day-indonesians-are-generating-175000-tons', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/zero-waste-to-landfill', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSemrcuqzCk4wFUtMPFFwLkJOsYSlCjoJ8GHCDdXcM7Or5YlQg/viewform', NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(3, 1, NULL, '', 'inorganic-waste-management', 'inorganic-waste-management', 'IWM', 'from-waste-to-useful-materials', 'treat-your-inorganic-waste-the-right-way-and-make-', 'waste-is-a-relative-term-that-can-be-applied-diffe', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/inorganic-waste-management', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSfgzkfJXMhuTUO4sgwpkF1PINvH7_XNBrZ84PWJD6OqghV_Eg/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(4, 1, NULL, '', 'event-waste-management', 'event-waste-management', 'EWM', 'great-event-planned-their-waste-management-beforeh', 'through-the-placement-of-segregated-waste-bins-in-', 'waste-generation-during-an-event-is-inevitable-in', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/event-waste-management', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScFEwvyBaouF85RuuJSQpDCmGmkIIf4Hby9uo6HrZHJVSRBvw/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(5, 2, NULL, '', 'in-store-recycling', 'in-store-recycling', 'In-Store Recycling', 'support-the-recycling-of-your-brand-labeled-waste', 'increase-the-material-processing-of-brand-labelled', 'designed-to-increase-the-material-processing-from-', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/in-store-recycling', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSd8QsQoYbyTb5-8dD6r5KUFCz9BhTmBvh1c2Lla2HdlrDHFQg/viewform', NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(6, 2, NULL, '', 'digital-epr', 'digital-epr', 'Digital EPR', 'more-effective-and-sustainable-brand-labeled-waste', 'increasing-the-recycling-rate-of-your-brand-labele', 'we-provide-a-waste-recycling-system-that-is-integr', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/digital-epr', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScZh1J71WYKPVOZzDGgfSTtOudKLu_RuwnDPvvlXV9h8TvxyQ/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(7, 3, NULL, '', 'solid-waste-management-research', 'solid-waste-management-research', 'SWM Research', 'research-and-planning-with-environment-in-mind', 'improve-your-solid-waste-management-by-conducting-', 'waste4change-provides-consultation-through-solid-w', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/solid-waste-management-research', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', '1', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(8, 4, NULL, '', 'community-based-implementation', 'community-based-implementation', 'CBI', 'solid-effort-to-reduce-waste-generation-from-the-s', 'we-help-our-clients-to-implement-programs-that-enc', 'according-to-recent-bps-statistics-waste-manageme', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/community-based-implementation', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', '1', 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(9, 4, NULL, '', '3r-school-program', '3r-school-program', '3R School Program', 'optimal-implementation-of-3r-reduce-reuse-recycle', 'designed-to-encourage-the-increasing-awareness-of-', '3r-school-program-is-a-program-designed-to-encoura', '', NULL, '2-about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/3r-school-program', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScmBjcHJhsI1OIOM-So0VQNhsbIGUJeKuovMe2QzVeYMnUU0g/viewform', '1', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(10, 5, NULL, '', 'akabis-waste-management-academy', 'akabis-waste-management-academy', 'AKABIS', 'take-a-closer-look-at-waste-management-facts-and-s', 'akademi-bijak-sampah-akabis-is-an-education-mode', 'akademi-bijak-sampah-akabis-is-an-education-mode-created-by', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/akabis-waste-management-academy', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', '1', 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(11, 5, NULL, '', 'black-soldier-fly-learning-center', 'black-soldier-fly-learning-center', 'BSF Learning Center', 'effective-organic-waste-solution', 'receive-in-depth-information-regarding-organic-was', 'through-bsf-learning-center-you-will-receive-in-d', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/black-soldier-fly-learning-center', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSc7hGAdWLlFqt5qa38-7fMwA9Nsp2ev9lUk7Qi8Xwe_z3lYfg/viewform', NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(12, 7, NULL, '', 'black-soldier-fly-tools-products', 'black-soldier-fly-tools-products', 'BSF Tools Products', '', 'we-provide-black-soldier-fly-larvae-that-is-high-i', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'http://w4c.id/rumahkompos', NULL, NULL, NULL, 1, 0, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(13, 6, NULL, '', 'send-your-waste', 'send-your-waste', NULL, '', 'send-your-inorganic-waste-to-waste4change-and-let-', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'sendyourwaste', NULL, NULL, NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(14, 6, NULL, '', 'dropbox', 'dropbox', NULL, '', 'deposit-your-inorganic-waste-in-waste4changes-dro', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'dropbox', NULL, NULL, NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(15, 6, NULL, '', 'sinergi-adesniatmurni-dan-gojek', 'sinergi-adesniatmurni-dan-gojek', NULL, '', 'send-your-used-pet-bottles-of-various-sizes-and-br', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'poin/home/sinergi-ades-niat-murni-dan-gojek', NULL, NULL, NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', NULL),
(16, 6, NULL, '', 'merchant', 'merchant', NULL, '', 'deposit-your-used-packaging-through-our-partners-t', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'poin/home/', NULL, NULL, NULL, 1, 1, '2019-11-16 18:53:26', '2019-11-16 18:53:26', '2019-11-16 18:53:26'),
(17, 6, NULL, '', 'home-composting', 'home-composting', NULL, '', 'process-your-organic-waste-at-home-with-waste4cha', '', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'http://w4c.id/rumahkompos', NULL, NULL, NULL, 0, 0, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL),
(18, NULL, 7, 'swm-research-in-institutions', 'solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', 'solid-waste-management-study-at-pelabuhan-indonesi', NULL, '', '', 'based-on-the-regulation-of-ministry-of-transportat', 'pt-pelabuhan-indonesia-ii-persero', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/solid-waste-management-study-at-pelabuhan-indonesia-ii-hq', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-01 20:06:45', '2019-12-01 20:06:45', NULL),
(19, NULL, 7, 'swm-research-in-municipalities', 'solid-waste-management-design-for-revitalisation-at-jami-mosque-and-kampung-beting-settlements-in-pontianak', 'rancangan-pengelolaan-sampah-padat-untuk-program-r', NULL, '', '', 'beting-village-and-jami-mosque-area-are-located-a', 'ministry-of-public-works-and-housings', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/solid-waste-management-design-for-revitalisation-at-jami\'-mosque-and-kampung-beting-settlements-in-pontianak', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(20, NULL, 7, 'value-chain-analysis', 'waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', 'studi-manajemen-sampah-pemetaan-pemangku-kepenti', NULL, '', '', 'indonesia-is-the-2nd-biggest-contributor-of-plasti', 'pt-deloitte-konsultan-indonesia', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/waste-management-scouting-study-stakeholders-mapping-and-waste-flow-in-jakarta-and-surabaya', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(21, NULL, 7, 'marine-debris-study', 'riverine-plastic-monitoring-project-in-jakarta', 'proyek-pemantauan-sampah-plastik-di-sungai-sungai-', NULL, '', '', 'the-ocean-cleanup-is-a-dutch-based-non-profit-orga', 'the-ocean-cleanup', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/riverine-plastic-monitoring-project-in-jakarta', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(22, NULL, 7, 'waste-to-energy', 'technical-due-diligence-for-itf-sunter-jakarta', 'technical-due-diligence-for-itf-sunter-jakarta', NULL, '', '', 'ramboll-danmark-as-as-the-main-consultant-was-wor', 'ramboll-danmark', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/feasibility-study-of-pyrolysis-for-plastic-packaging-in-lombok-and-batam', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScGCw668xdQjji7zRsCRQ-50524A4XLOWS7-up1q4F_KDWhNw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(23, NULL, 8, 'community-assistance-in-institutions', '3r-program-suralaya', '3r-program-suralaya', NULL, '', '', 'waste4change-assisted-pt-indonesia-power-up-surala', 'pt-indonesia-power-up-suralaya', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/3r-program-suralaya', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(24, NULL, 8, 'community-assistance-in-municipalities', 'tps-3r-advisory', 'tps-3r-advisory', NULL, '', '', 'in-order-to-achieve-the-national-target-of-30-was', 'pt-sarana-multi-daya-pt-multi-karadiguna-jasa-', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/tps-3r-advisory', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(25, NULL, 8, 'community-assistance-in-tourism-sites', 'ecoranger-in-pulau-merah-banyuwangi', 'ecoranger-di-pulau-merah-banyuwangi', NULL, '', '', 'tourism-in-indonesia-is-currently-growing-exponent', 'greeneration-foundation-coca-cola-foundation-indo', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/ecoranger-in-pulau-merah-banyuwangi', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(26, NULL, 8, 'community-capacity-building', 'capacity-building-in-indonesias-frontline-territories', 'capacity-building-di-wilayah-terdepan-indonesia', NULL, '', '', 'indonesias-frontline-areas-reflect-the-life-of-th', 'pt-idee-murni-pratama-pt-wijaya-karya-pt-huta', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/capacity-building-in-indonesia\'s-frontline-territories', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSflGH-JUj6sEZbURhI65LCyfyP_5BA034bF5PxKi6fi2zA5Pw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(27, NULL, 9, '3r-green-school', '3r-green-school', '3r-green-school', NULL, '', '', 'the-unilever-foundation-along-with-waste4change-or', 'yayasan-unilever-indonesia', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/3r-green-school', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLScmBjcHJhsI1OIOM-So0VQNhsbIGUJeKuovMe2QzVeYMnUU0g/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(28, NULL, 10, 'akabis-class-for-institution', 'akabis-class-for-the-embassy-of-finland-jakarta', 'akabis-class-untuk-kedutaan-finlandia-di-jakarta', NULL, '', '', 'knowledge-about-responsible-solid-waste-management', 'embassy-of-finland-in-indonesia', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/akabis-class-for-the-embassy-of-finland-jakarta', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(29, NULL, 10, 'akabis-class-for-public', 'akabis-class-the-neglected-debris-paper-letter-and-waste-discussion', 'akabis-class-the-neglected-debris:-paper-letter', NULL, 'get-the-special-waste-bins-designed-specifically-t', '', 'the-ancient-method-of-making-paper-is-not-only-rec', 'pt-galeri-museum-macan', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/akabis-class-the-neglected-debris:-paper,-letter-and-waste-discussion', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(30, NULL, 10, 'akabis-xperience-for-institution', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', 'akabis-xperience-untuk-pt-bank-dbs-indonesia', NULL, 'making-sure-that-your-inorganic-waste-is-recycled-', '', 'pt-bank-dbs-indonesia-is-one-of-waste4changes-cli', 'pt-bank-dbs-indonesia', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/akabis-xperience-for-world-bank-jakarta', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(31, NULL, 10, 'akabis-xperience-for-public', 'akabis-xperience-for-yseali', 'akabis-xperience-untuk-yseali-young-southeast-asi', NULL, 'waste4change-provides-composting-tools-for-those', '', 'waste4change-became-one-of-the-facilitators-for-ys', 'implemented-by-divers-clean-action-and-hosted-by-u', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/project/akabis-xperience-for-yseali', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeSk3TroFAjonCgvBQcOjv5jSIS8elOVSyt_BVlUHoL_7k_gw/viewform', NULL, 1, 0, '2019-12-07 22:25:56', '2019-12-07 22:25:56', NULL),
(32, 8, NULL, 'Custom Waste Bin ', 'custom-waste-bin', 'custom-waste-bin', 'CWB', 'invite-visitors-to-increase-waste-segregation-with', 'get-the-special-waste-bins-designed-specifically-t', 'educate-people-around-your-area-with-a-better-mess', '', NULL, 'about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/custom-waste-bin', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSfiR_Gy39VKbuU8vo7VgOku0g22ZHNRvpETfA8OT2nIJPuD7w/viewform', NULL, 1, 0, '2020-03-03 22:18:35', '2020-03-03 22:18:35', NULL),
(33, 6, NULL, 'Personal Waste Managemnet ', 'personal-waste-management', 'personal-waste-management', 'PWM', 'no-more-mixed-waste-collection', 'making-sure-that-your-inorganic-waste-is-recycled-', 'responsible-waste-management-starts-with-waste-seg', '', NULL, '2-about.jpg', 'header.jpg', 'thumbnail.jpg', 'official/service/personal-waste-management', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSds5DtNPTUzwpdHYN3ihMgK0_ILYWV4r2oqFgVwvNnjSzdcsw/viewform', NULL, 1, 1, '2020-03-03 22:18:35', '2020-03-03 22:18:35', NULL),
(34, 6, NULL, 'Composting Tools', 'composting-tools', 'composting-tools', 'Composting Tools', 'divert-organic-waste-from-landfill-with-composting', 'waste4change-provides-composting-tools-for-those-o', 'once-the-organic-waste-has-already-been-segregated', '', NULL, '2-about.jpg', '2-header.jpg', 'thumbnail.jpg', 'official/service/composting-tools', NULL, 'https://docs.google.com/forms/d/e/1FAIpQLSeiPULugXFbA5YkZ9Rz8Qp6WX8f3EtstBPU8mHjn4BLlFWTAQ/viewform', NULL, 1, 1, '2020-03-03 22:18:35', '2020-03-03 22:18:35', NULL);

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
(7, 1, 'general', NULL, '2020-01-20 09:51:22', '2020-01-20 09:51:22', NULL),
(8, 1, 'collect-waste-management', NULL, '2020-03-03 22:21:49', '2020-03-03 22:25:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_coverage`
--

CREATE TABLE `service_coverage` (
  `service_coverage_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_coverage_color` varchar(255) DEFAULT NULL,
  `service_coverage_name` varchar(225) DEFAULT NULL,
  `service_coverage_area` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_coverage`
--

INSERT INTO `service_coverage` (`service_coverage_id`, `service_id`, `service_coverage_color`, `service_coverage_name`, `service_coverage_area`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 10, '#149cb4', 'Jawa', '{lng: -245.4146575,lat: -8.6806864},\r\n{lng: -245.4277038,lat: -8.6643998},\r\n{lng: -245.4407501,lat: -8.6576135},\r\n{lng: -245.4579162,lat: -8.6596494},\r\n{lng: -245.4842835,lat: -8.6505421},\r\n{lng: -245.4943084,lat: -8.6365752},\r\n{lng: -245.5162811,lat: -8.6270736},\r\n{lng: -245.5265808,lat: -8.6175718},\r\n{lng: -245.5451202,lat: -8.6379325},\r\n{lng: -245.5657195,lat: -8.6168931},\r\n{lng: -245.5959319,lat: -8.5361181},\r\n{lng: -245.5931854,lat: -8.5130364},\r\n{lng: -245.605545,lat: -8.4885954},\r\n{lng: -245.6330108,lat: -8.5429066},\r\n{lng: -245.6460571,lat: -8.5218619},\r\n{lng: -245.6419372,lat: -8.4784112},\r\n{lng: -245.6618499,lat: -8.42477},\r\n{lng: -245.6336974,lat: -8.2819957},\r\n{lng: -245.6103514,lat: -8.2276481},\r\n{lng: -245.6172179,lat: -8.1896003},\r\n{lng: -245.5993651,lat: -8.1474717},\r\n{lng: -245.5664061,lat: -8.037373},\r\n{lng: -245.5782165,lat: -7.9237658},\r\n{lng: -245.5356445,lat: -7.8911291},\r\n{lng: -245.5390777,lat: -7.8170071},\r\n{lng: -245.625595,lat: -7.7591964},\r\n{lng: -245.6784667,lat: -7.7578361},\r\n{lng: -245.7607269,lat: -7.6997451},\r\n{lng: -245.7888793,lat: -7.718112},\r\n{lng: -245.8067321,lat: -7.709949},\r\n{lng: -245.8602905,lat: -7.7187922},\r\n{lng: -245.898056,lat: -7.707228},\r\n{lng: -245.9598541,lat: -7.6065381},\r\n{lng: -246.0353851,lat: -7.6636894},\r\n{lng: -246.0731506,lat: -7.6990649},\r\n{lng: -246.1589813,lat: -7.6840987},\r\n{lng: -246.2283325,lat: -7.7368862},\r\n{lng: -246.2894439,lat: -7.7055954},\r\n{lng: -246.3409423,lat: -7.739607},\r\n{lng: -246.4260864,lat: -7.7110374},\r\n{lng: -246.5153503,lat: -7.699473},\r\n{lng: -246.6782226,lat: -7.7747041},\r\n{lng: -246.6919555,lat: -7.7672224},\r\n{lng: -246.7214812,lat: -7.7835459},\r\n{lng: -246.7489471,lat: -7.7372943},\r\n{lng: -246.8553771,lat: -7.733213},\r\n{lng: -246.9556274,lat: -7.6617845},\r\n{lng: -247.0215453,lat: -7.6536204},\r\n{lng: -247.0490111,lat: -7.6202824},\r\n{lng: -247.1018829,lat: -7.6114371},\r\n{lng: -247.1434936,lat: -7.5222942},\r\n{lng: -247.1566772,lat: -7.2824028},\r\n{lng: -247.1916961,lat: -7.2476745},\r\n{lng: -247.2287749,lat: -7.2081764},\r\n{lng: -247.2484131,lat: -7.1686133},\r\n{lng: -247.122345,lat: -7.1689841},\r\n{lng: -246.9218445,lat: -7.2221061},\r\n{lng: -246.7412567,lat: -7.2241492},\r\n{lng: -246.5009308,lat: -7.2290524},\r\n{lng: -246.4775849,lat: -7.248801},\r\n{lng: -246.4487457,lat: -7.2290524},\r\n{lng: -246.4245758,lat: -7.1633069},\r\n{lng: -246.3883209,lat: -7.1282531},\r\n{lng: -246.3244629,lat: -7.1086355},\r\n{lng: -246.1116028,lat: -7.1338385},\r\n{lng: -246.1116028,lat: -7.0626231},\r\n{lng: -245.8699036,lat: -6.9808661},\r\n{lng: -246.084137,lat: -6.8622929},\r\n{lng: -246.5126038,lat: -6.8977317},\r\n{lng: -247.1437683,lat: -6.892825},\r\n{lng: -247.2728577,lat: -7.0304671},\r\n{lng: -247.3181763,lat: -7.0345549},\r\n{lng: -247.3552551,lat: -7.016841},\r\n{lng: -247.4307861,lat: -6.8437547},\r\n{lng: -247.4925842,lat: -6.8996399},\r\n{lng: -247.784546,lat: -6.8813757},\r\n{lng: -247.9520875,lat: -6.8895538},\r\n{lng: -248.053711,lat: -6.7709579},\r\n{lng: -248.2418519,lat: -6.7818645},\r\n{lng: -248.4873963,lat: -6.6198764},\r\n{lng: -248.6093445,lat: -6.696513},\r\n{lng: -248.7387085,lat: -6.6907869},\r\n{lng: -248.8570861,lat: -6.6618706},\r\n{lng: -248.9221802,lat: -6.5672324},\r\n{lng: -248.9592591,lat: -6.4240018},\r\n{lng: -249.0614319,lat: -6.4064738},\r\n{lng: -249.1638794,lat: -6.4185446},\r\n{lng: -249.2567139,lat: -6.4482303},\r\n{lng: -249.2970887,lat: -6.493576},\r\n{lng: -249.3808594,lat: -6.7066041},\r\n{lng: -249.4605103,lat: -6.7502348},\r\n{lng: -249.5538941,lat: -6.936984},\r\n{lng: -249.827179,lat: -6.8347581},\r\n{lng: -250.0491028,lat: -6.9239004},\r\n{lng: -250.4377442,lat: -6.8393929},\r\n{lng: -250.4775696,lat: -6.7821373},\r\n{lng: -250.5808409,lat: -6.8609765},\r\n{lng: -250.7220154,lat: -6.8734703},\r\n{lng: -250.928833,lat: -6.809948},\r\n{lng: -251.1004944,lat: -6.8167641},\r\n{lng: -251.1938782,lat: -6.7663227},\r\n{lng: -251.2913819,lat: -6.8167641},\r\n{lng: -251.4520569,lat: -6.6858782},\r\n{lng: -251.4693604,lat: -6.4881197},\r\n{lng: -251.6011963,lat: -6.3953509},\r\n{lng: -251.6465149,lat: -6.2507072},\r\n{lng: -251.8085633,lat: -6.2343299},\r\n{lng: -251.859375,lat: -6.3271278},\r\n{lng: -252.1134339,lat: -6.2234114},\r\n{lng: -252.1694642,lat: -6.1939304},\r\n{lng: -252.328766,lat: -6.2307814},\r\n{lng: -252.3768311,lat: -6.1939304},\r\n{lng: -252.5141602,lat: -6.1598068},\r\n{lng: -252.6896668,lat: -5.9542001},\r\n{lng: -252.836609,lat: -5.9828751},\r\n{lng: -252.9890443,lat: -5.9200614},\r\n{lng: -252.9986573,lat: -6.0647951},\r\n{lng: -253.1236268,lat: -6.1016551},\r\n{lng: -253.2870484,lat: -6.0961945},\r\n{lng: -253.3460999,lat: -6.006087},\r\n{lng: -253.5163879,lat: -6.0394136},\r\n{lng: -253.6235046,lat: -5.9793373},\r\n{lng: -253.6688232,lat: -5.9615862},\r\n{lng: -253.7286987,lat: -5.9477283},\r\n{lng: -253.7635803,lat: -5.9656827},\r\n{lng: -253.8336182,lat: -6.036683},\r\n{lng: -253.8981628,lat: -5.9807028},\r\n{lng: -253.8951416,lat: -5.9294214},\r\n{lng: -253.9352417,lat: -5.8823821},\r\n{lng: -254.0039063,lat: -5.9274479},\r\n{lng: -254.0148926,lat: -5.9984532},\r\n{lng: -254.1291504,lat: -6.1207791},\r\n{lng: -254.1604614,lat: -6.2137382},\r\n{lng: -254.1689758,lat: -6.3255028},\r\n{lng: -254.2005615,lat: -6.4864952},\r\n{lng: -254.3076782,lat: -6.5246893},\r\n{lng: -254.3351441,lat: -6.4742179},\r\n{lng: -254.3859558,lat: -6.6010688},\r\n{lng: -254.5068054,lat: -6.7756059},\r\n{lng: -254.5438843,lat: -6.831499},\r\n{lng: -254.5837097,lat: -6.7565189},\r\n{lng: -254.6290283,lat: -6.6515273},\r\n{lng: -254.7855835,lat: -6.7728792},\r\n{lng: -254.7320252,lat: -6.8533092},\r\n{lng: -254.694397,lat: -6.7996364},\r\n{lng: -254.6331482,lat: -6.8219568},\r\n{lng: -254.5013123,lat: -6.8737554},\r\n{lng: -254.3008118,lat: -6.8451305},\r\n{lng: -253.9931946,lat: -6.8260463},\r\n{lng: -253.6858521,lat: -6.9852395},\r\n{lng: -253.5224305,lat: -6.9661609},\r\n{lng: -253.4688721,lat: -6.9893276},\r\n{lng: -253.472992,lat: -7.0601833},\r\n{lng: -253.5965882,lat: -7.1923273},\r\n{lng: -253.6254273,lat: -7.2712071},\r\n{lng: -253.6034546,lat: -7.359836},\r\n{lng: -253.4573364,lat: -7.4140663},\r\n{lng: -252.6210022,lat: -7.4957449},\r\n{lng: -252.1656188,lat: -7.7281723},\r\n{lng: -251.5421447,lat: -7.8233927},\r\n{lng: -251.4817199,lat: -7.7676234},\r\n{lng: -251.4899597,lat: -7.7240909},\r\n{lng: -251.3691101,lat: -7.6832752},\r\n{lng: -250.9598693,lat: -7.7785058},\r\n{lng: -250.9763487,lat: -7.7295327},\r\n{lng: -250.8760985,lat: -7.6968809},\r\n{lng: -250.6083068,lat: -7.7268118},\r\n{lng: -250.5808409,lat: -7.7812263},\r\n{lng: -250.5204161,lat: -7.7744249},\r\n{lng: -250.1155701,lat: -7.8478875},\r\n{lng: -249.6961668,lat: -8.0254596},\r\n{lng: -249.2855528,lat: -8.1999777},\r\n{lng: -249.1380615,lat: -8.2163858},\r\n{lng: -249.0108946,lat: -8.2502531},\r\n{lng: -248.8460997,lat: -8.2896536},\r\n{lng: -248.7340391,lat: -8.2494379},\r\n{lng: -248.544525,lat: -8.2847627},\r\n{lng: -248.5417784,lat: -8.3282351},\r\n{lng: -248.2987059,lat: -8.3880018},\r\n{lng: -248.2121885,lat: -8.2806869},\r\n{lng: -247.34317,lat: -8.4447716},\r\n{lng: -247.08197,lat: -8.4002256},\r\n{lng: -247.0295105,lat: -8.3324461},\r\n{lng: -246.9364011,lat: -8.2983483},\r\n{lng: -246.7320556,lat: -8.2922347},\r\n{lng: -246.6123044,lat: -8.3988674},\r\n{lng: -246.5408933,lat: -8.3812106},\r\n{lng: -246.1838376,lat: -8.5577431},\r\n{lng: -245.7713009,lat: -8.6562942},\r\n{lng: -245.7726742,lat: -8.6196459},\r\n{lng: -245.6339718,lat: -8.6522223},\r\n{lng: -245.6559445,lat: -8.7322939},\r\n{lng: -245.5447079,lat: -8.7730018},\r\n{lng: -245.422485,lat: -8.7730018},\r\n{lng: -245.3950192,lat: -8.7214378},\r\n{lng: -245.4156186,lat: -8.6752956},\r\n{lng: -245.4146575,lat: -8.6806864}', '2020-03-19 04:03:15', '2020-03-19 05:07:50', NULL),
(3, 10, '#149cb4', 'Kalimantan', ' {lng: -250.4589842, lat: 1.9283667},\r\n      {lng: -250.0634763, lat: 1.3576358},\r\n      {lng: -249.6459959, lat: 1.1819965},\r\n      {lng: -249.0966795, lat: 0.962432},\r\n      {lng: -248.5253904, lat: 1.0283029},\r\n      {lng: -247.9541013, lat: 1.3576358},\r\n      {lng: -247.0971677, lat: 1.1600408},\r\n      {lng: -246.408691, lat: 1.0209838},\r\n      {lng: -245.9472652, lat: 1.1455882},\r\n      {lng: -244.3212886, lat: 4.3476915},\r\n      {lng: -244.0576167, lat: 4.5228478},\r\n      {lng: -243.6840816, lat: 4.4790627},\r\n      {lng: -242.189941, lat: 4.1505921},\r\n      {lng: -242.3876949, lat: 3.9972584},\r\n      {lng: -242.1459956, lat: 3.668591},\r\n      {lng: -242.4755855, lat: 3.4055695},\r\n      {lng: -242.5634761, lat: 3.1205486},\r\n      {lng: -242.2558589, lat: 2.7477134},\r\n      {lng: -241.9116209, lat: 2.3076776},\r\n      {lng: -242.1423338, lat: 2.0004508},\r\n      {lng: -242.1423338, lat: 1.802917},\r\n      {lng: -241.9226072, lat: 1.7151172},\r\n      {lng: -241.5270994, lat: 1.4077873},\r\n      {lng: -241.1572261, lat: 1.1077356},\r\n      {lng: -241.0034175, lat: 0.965017},\r\n      {lng: -241.2341304, lat: 0.7893552},\r\n      {lng: -241.5856929, lat: 0.7783761},\r\n      {lng: -241.9262691, lat: 0.8662082},\r\n      {lng: -242.0471187, lat: 0.8222924},\r\n      {lng: -242.2009273, lat: 0.8113134},\r\n      {lng: -242.3876949, lat: 0.4599706},\r\n      {lng: -242.5305171, lat: -0.0121712},\r\n      {lng: -242.5305171, lat: -0.3964735},\r\n      {lng: -242.3547359, lat: -0.56117},\r\n      {lng: -242.5085445, lat: -0.86859},\r\n      {lng: -242.7062984, lat: -0.9344628},\r\n      {lng: -242.9699703, lat: -1.1650072},\r\n      {lng: -243.1677242, lat: -1.3077159},\r\n      {lng: -243.464355, lat: -1.4613932},\r\n      {lng: -243.4753413, lat: -1.6370114},\r\n      {lng: -243.7939449, lat: -1.8345634},\r\n      {lng: -243.5192867, lat: -1.8711446},\r\n      {lng: -243.5412593, lat: -2.0686705},\r\n      {lng: -243.4167475, lat: -2.2881151},\r\n      {lng: -243.4716791, lat: -2.5404343},\r\n      {lng: -243.6145014, lat: -2.5623728},\r\n      {lng: -243.669433, lat: -2.8475385},\r\n      {lng: -243.735351, lat: -3.0449199},\r\n      {lng: -243.8671869, lat: -3.1545608},\r\n      {lng: -243.6914057, lat: -3.3628463},\r\n      {lng: -243.5595698, lat: -3.4614925},\r\n      {lng: -243.702392, lat: -3.8011934},\r\n      {lng: -243.7463373, lat: -3.9983784},\r\n      {lng: -243.940429, lat: -4.1115558},\r\n      {lng: -243.9184564, lat: -3.7938891},\r\n      {lng: -244.006347, lat: -3.6514483},\r\n      {lng: -244.1271966, lat: -3.6514483},\r\n      {lng: -244.5556634, lat: -3.8596232},\r\n      {lng: -245.3576653, lat: -4.1882153},\r\n      {lng: -245.4016107, lat: -3.9253521},\r\n      {lng: -245.3576653, lat: -3.6185741},\r\n      {lng: -245.5334466, lat: -3.5089849},\r\n      {lng: -245.9069818, lat: -3.3336156},\r\n      {lng: -246.082763, lat: -3.4103437},\r\n      {lng: -246.3464349, lat: -3.4870655},\r\n      {lng: -246.4343255, lat: -3.3664998},\r\n      {lng: -246.4013665, lat: -3.2020681},\r\n      {lng: -246.5661614, lat: -3.191105},\r\n      {lng: -246.6540521, lat: -3.267844},\r\n      {lng: -246.9177239, lat: -3.0705036},\r\n      {lng: -247.0056146, lat: -2.9937501},\r\n      {lng: -247.0715325, lat: -3.1691785},\r\n      {lng: -246.9836419, lat: -3.1801418},\r\n      {lng: -247.4121087, lat: -3.4541855},\r\n      {lng: -247.5439446, lat: -3.3993829},\r\n      {lng: -247.7416985, lat: -3.3336156},\r\n      {lng: -248.0969231, lat: -3.5272506},\r\n      {lng: -248.228759, lat: -3.5601281},\r\n      {lng: -248.1738274, lat: -3.362846},\r\n      {lng: -248.2067864, lat: -3.1435969},\r\n      {lng: -248.1848137, lat: -2.9681643},\r\n      {lng: -248.3056633, lat: -2.8365715},\r\n      {lng: -248.4704583, lat: -3.0668487},\r\n      {lng: -248.6242669, lat: -2.9133358},\r\n      {lng: -248.931884, lat: -3.077813},\r\n      {lng: -249.096679, lat: -3.0449196},\r\n      {lng: -249.2175286, lat: -2.9791297},\r\n      {lng: -249.3933098, lat: -3.0558842},\r\n      {lng: -249.4152825, lat: -2.8804374},\r\n      {lng: -249.6459954, lat: -2.9462332},\r\n      {lng: -249.7448723, lat: -2.9571988},\r\n      {lng: -249.766845, lat: -2.7268993},\r\n      {lng: -249.8327629, lat: -2.3978245},\r\n      {lng: -249.8876946, lat: -2.2222848},\r\n      {lng: -249.8767083, lat: -1.9808841},\r\n      {lng: -250.1074211, lat: -1.8711446},\r\n      {lng: -249.9645989, lat: -1.6845719},\r\n      {lng: -249.9426262, lat: -1.4321219},\r\n      {lng: -250.0964348, lat: -1.1906219},\r\n      {lng: -250.2282708, lat: -1.0588855},\r\n      {lng: -250.404052, lat: -1.2564878},\r\n      {lng: -250.5798333, lat: -1.3223521},\r\n      {lng: -250.5358879, lat: -1.0479072},\r\n      {lng: -250.3930657, lat: -0.9930151},\r\n      {lng: -250.5578606, lat: -0.8722494},\r\n      {lng: -250.6237786, lat: -0.9161647},\r\n      {lng: -250.7556145, lat: -0.7734382},\r\n      {lng: -250.6237786, lat: -0.6856041},\r\n      {lng: -250.8105461, lat: -0.5428703},\r\n      {lng: -250.9533684, lat: -0.2903336},\r\n      {lng: -250.8105461, lat: -0.0487715},\r\n      {lng: -250.8435051, lat: 0.2147517},\r\n      {lng: -251.0888666, lat: 0.4636309},\r\n      {lng: -251.0778802, lat: 0.7051816},\r\n      {lng: -251.0229486, lat: 0.968677},\r\n      {lng: -251.0778802, lat: 1.1443295},\r\n      {lng: -250.9240717, lat: 1.2870394},\r\n      {lng: -250.968017, lat: 1.4846243},\r\n      {lng: -250.7263177, lat: 1.6163379},\r\n      {lng: -250.5944818, lat: 1.8907129},\r\n      {lng: -250.4406732, lat: 1.9346091}', '2020-03-19 04:03:24', '2020-03-19 05:07:50', NULL),
(4, 10, '#149cb4', 'Sumatera', '{lng: -254.2791131, lat: -5.9150083},\r\n{lng: -254.2785645, lat: -5.9757538},\r\n{lng: -254.0808105, lat: -4.4992375},\r\n{lng: -254.1851807, lat: -4.4006855},\r\n{lng: -254.0137939, lat: -3.843489},\r\n{lng: -254.1895751, lat: -3.7174557},\r\n{lng: -253.9259033, lat: -3.2844251},\r\n{lng: -254.0083007, lat: -2.9334766},\r\n{lng: -254.2280273, lat: -2.7195625},\r\n{lng: -254.3928222, lat: -2.4562318},\r\n{lng: -254.7169189, lat: -2.3629561},\r\n{lng: -254.8981933, lat: -2.3849039},\r\n{lng: -255.1069335, lat: -2.3025979},\r\n{lng: -254.854248, lat: -2.0446758},\r\n{lng: -254.7004394, lat: -2.1544352},\r\n{lng: -254.4971923, lat: -2.1105324},\r\n{lng: -254.2499999, lat: -2.1763862},\r\n{lng: -254.1071777, lat: -2.4946376},\r\n{lng: -254.052246, lat: -2.8018418},\r\n{lng: -253.7666015, lat: -2.9225076},\r\n{lng: -253.4864501, lat: -3.1034819},\r\n{lng: -253.2941894, lat: -3.0760635},\r\n{lng: -253.1239013, lat: -2.9115385},\r\n{lng: -252.8876952, lat: -2.8566915},\r\n{lng: -252.4812011, lat: -2.8457218},\r\n{lng: -252.4812011, lat: -3.0212246},\r\n{lng: -252.3548583, lat: -3.2186313},\r\n{lng: -251.9703368, lat: -3.2570115},\r\n{lng: -251.8494872, lat: -3.1528332},\r\n{lng: -251.706665, lat: -2.8621763},\r\n{lng: -251.9978027, lat: -2.5549872},\r\n{lng: -252.3658447, lat: -2.5604734},\r\n{lng: -252.442749, lat: -2.8347519},\r\n{lng: -252.6306152, lat: -2.8136162},\r\n{lng: -253.1184081, lat: -2.8896},\r\n{lng: -253.112915, lat: -2.8896},\r\n{lng: -253.3051757, lat: -2.9773515},\r\n{lng: -253.3985595, lat: -2.9554143},\r\n{lng: -253.3326415, lat: -2.7305334},\r\n{lng: -253.1239013, lat: -2.5714457},\r\n{lng: -253.4644775, lat: -2.500124},\r\n{lng: -253.684204, lat: -2.4617184},\r\n{lng: -253.8336182, lat: -2.0040627},\r\n{lng: -253.795166, lat: -1.8997817},\r\n{lng: -253.9764404, lat: -1.5814127},\r\n{lng: -254.2071533, lat: -1.5374957},\r\n{lng: -254.3444824, lat: -1.6582652},\r\n{lng: -254.498291, lat: -1.5649439},\r\n{lng: -254.6575928, lat: -1.6692439},\r\n{lng: -254.597168, lat: -1.7845164},\r\n{lng: -254.7344971, lat: -1.8997817},\r\n{lng: -254.8718262, lat: -1.976621},\r\n{lng: -254.866333, lat: -2.0534567},\r\n{lng: -255.1080322, lat: -2.2674791},\r\n{lng: -255.0849609, lat: -2.1907186},\r\n{lng: -255.1409912, lat: -2.0238851},\r\n{lng: -255.2975464, lat: -1.985467},\r\n{lng: -255.4678345, lat: -1.8647186},\r\n{lng: -255.4788208, lat: -1.7192608},\r\n{lng: -255.5969238, lat: -1.2026652},\r\n{lng: -255.635376, lat: -1.0233269},\r\n{lng: -255.838623, lat: -1.0267422},\r\n{lng: -256.0940552, lat: -0.9745794},\r\n{lng: -256.1929321, lat: -1.0185061},\r\n{lng: -256.4373779, lat: -0.8482872},\r\n{lng: -256.5637207, lat: -0.7082628},\r\n{lng: -256.5664673, lat: -0.5435228},\r\n{lng: -256.4868164, lat: -0.5297943},\r\n{lng: -256.3796997, lat: -0.4034903},\r\n{lng: -256.2165528, lat: -0.3353515},\r\n{lng: -256.3209229, lat: -0.247486},\r\n{lng: -256.5324097, lat: -0.2035531},\r\n{lng: -256.4005737, lat: -0.0827369},\r\n{lng: -256.1781006, lat: -0.0113454},\r\n{lng: -256.2495117, lat: 0.2577452},\r\n{lng: -256.4088135, lat: 0.4170005},\r\n{lng: -256.6878662, lat: 0.5427551},\r\n{lng: -256.7537841, lat: 0.6992582},\r\n{lng: -256.8773803, lat: 0.6663106},\r\n{lng: -256.8746337, lat: 0.8090819},\r\n{lng: -256.8471679, lat: 0.8914478},\r\n{lng: -257.0009765, lat: 1.0808819},\r\n{lng: -257.2476196, lat: 1.1593977},\r\n{lng: -257.3794556, lat: 1.0495849},\r\n{lng: -257.5310671, lat: 1.1514616},\r\n{lng: -257.4871218, lat: 1.2491917},\r\n{lng: -257.5475466, lat: 1.5291838},\r\n{lng: -258.0199587, lat: 1.5895697},\r\n{lng: -258.0199587, lat: 1.4797759},\r\n{lng: -258.247925, lat: 1.6664219},\r\n{lng: -258.3275759, lat: 1.6938684},\r\n{lng: -258.2506716, lat: 1.7707165},\r\n{lng: -258.2177126, lat: 1.9491014},\r\n{lng: -258.2753907, lat: 2.0572885},\r\n{lng: -258.3605349, lat: 2.1027718},\r\n{lng: -258.5143435, lat: 2.0590109},\r\n{lng: -258.7230837, lat: 2.0617549},\r\n{lng: -258.9592898, lat: 2.2922381},\r\n{lng: -259.2669069, lat: 2.2894945},\r\n{lng: -259.3135988, lat: 2.2181581},\r\n{lng: -259.4921267, lat: 2.2044392},\r\n{lng: -259.6074829, lat: 2.3668802},\r\n{lng: -259.6596682, lat: 2.5309136},\r\n{lng: -259.7706302, lat: 2.6943951},\r\n{lng: -259.8777469, lat: 2.6779382},\r\n{lng: -260.0068362, lat: 2.7465071},\r\n{lng: -260.0095828, lat: 2.9302519},\r\n{lng: -260.2364504, lat: 3.1605758},\r\n{lng: -260.4671633, lat: 3.248305},\r\n{lng: -260.6896363, lat: 3.4489565},\r\n{lng: -261.3010254, lat: 3.7832804},\r\n{lng: -261.3422242, lat: 3.9038252},\r\n{lng: -261.6608277, lat: 4.0626986},\r\n{lng: -261.7679444, lat: 4.2434475},\r\n{lng: -261.7185059, lat: 4.4214164},\r\n{lng: -261.9799805, lat: 4.579636},\r\n{lng: -262.1090698, lat: 4.8833842},\r\n{lng: -262.4990845, lat: 5.2362155},\r\n{lng: -262.8286743, lat: 5.1487095},\r\n{lng: -262.8424072, lat: 5.2088711},\r\n{lng: -263.1390381, lat: 5.2608243},\r\n{lng: -263.5235596, lat: 5.2088711},\r\n{lng: -263.921814, lat: 5.2909006},\r\n{lng: -264.1140747, lat: 5.4959261},\r\n{lng: -264.4161987, lat: 5.6243729},\r\n{lng: -264.5700072, lat: 5.6386},\r\n{lng: -264.7512817, lat: 5.5320211},\r\n{lng: -264.7677611, lat: 5.2941993},\r\n{lng: -264.4255371, lat: 4.634393},\r\n{lng: -263.4834593, lat: 3.7306916},\r\n{lng: -263.1730955, lat: 3.6978109},\r\n{lng: -262.7391356, lat: 3.2126838},\r\n{lng: -262.6539915, lat: 3.0070498},\r\n{lng: -262.4370115, lat: 2.8836507},\r\n{lng: -262.3348386, lat: 2.3937669},\r\n{lng: -262.0958859, lat: 2.2620758},\r\n{lng: -261.6152341, lat: 1.9931701},\r\n{lng: -261.1867673, lat: 1.6501153},\r\n{lng: -261.2719113, lat: 1.565028},\r\n{lng: -261.1532589, lat: 1.3048052},\r\n{lng: -260.8725584, lat: 0.2779762},\r\n{lng: -260.7407225, lat: 0.2010936},\r\n{lng: -260.2490843, lat: -0.0734891},\r\n{lng: -260.2518309, lat: -0.1448805},\r\n{lng: -260.1886595, lat: -0.3123748},\r\n{lng: -259.6777952, lat: -0.8862196},\r\n{lng: -259.48114, lat: -1.3320579},\r\n{lng: -259.1323241, lat: -1.9194266},\r\n{lng: -259.1240843, lat: -2.0785878},\r\n{lng: -259.1982421, lat: -2.1554186},\r\n{lng: -258.8703003, lat: -2.6212544},\r\n{lng: -258.6972656, lat: -2.7364532},\r\n{lng: -258.4033813, lat: -3.2218069},\r\n{lng: -257.7826538, lat: -3.6822683},\r\n{lng: -257.7337646, lat: -3.9244649},\r\n{lng: -257.1185303, lat: -4.4776303},\r\n{lng: -256.6571045, lat: -4.7759502},\r\n{lng: -256.284118, lat: -4.9610376},\r\n{lng: -255.4024651, lat: -5.9477819},\r\n{lng: -255.2843621, lat: -5.9286642},\r\n{lng: -255.4409173, lat: -5.5161109},\r\n{lng: -255.364013, lat: -5.5161109},\r\n{lng: -254.8421624, lat: -5.8002856},\r\n{lng: -254.7048333, lat: -5.4559793},\r\n{lng: -254.2791131, lat: -5.9150083}', '2020-03-19 04:03:28', '2020-03-19 05:07:50', NULL),
(5, 10, '#149cb4', 'Sulawesi', '{lng: -234.8950194,lat: 1.6257587},\r\n      {lng: -235.0927733,lat: 1.5928127},\r\n      {lng: -235.3344725,lat: 1.3731599},\r\n      {lng: -235.4663085,lat: 1.252342},\r\n      {lng: -235.5761718,lat: 1.1425027},\r\n      {lng: -235.8288573,lat: 0.9118271},\r\n      {lng: -236.1914061,lat: 0.8019761},\r\n      {lng: -236.520996,lat: 0.8349317},\r\n      {lng: -236.9714354,lat: 0.922812},\r\n      {lng: -237.158203,lat: 0.8129613},\r\n      {lng: -237.4877929,lat: 0.9337969},\r\n      {lng: -237.8393554,lat: 1.0106901},\r\n      {lng: -238.0590819,lat: 1.0546283},\r\n      {lng: -238.3886718,lat: 1.0106901},\r\n      {lng: -238.5864257,lat: 1.1644709},\r\n      {lng: -238.5754393,lat: 1.3182434},\r\n      {lng: -238.7731932,lat: 1.2303745},\r\n      {lng: -238.9929198,lat: 1.2743093},\r\n      {lng: -239.1687011,lat: 1.3402101},\r\n      {lng: -239.2126464,lat: 1.0765971},\r\n      {lng: -239.333496,lat: 0.9337969},\r\n      {lng: -239.4323729,lat: 0.7800055},\r\n      {lng: -239.6411132,lat: 0.8129613},\r\n      {lng: -239.6520995,lat: 0.9667513},\r\n      {lng: -239.7839354,lat: 0.8019761},\r\n      {lng: -239.9157714,lat: 0.7690202},\r\n      {lng: -239.9487304,lat: 0.5602941},\r\n      {lng: -239.9267577,lat: 0.4614211},\r\n      {lng: -240.0805663,lat: 0.4724071},\r\n      {lng: -240.102539,lat: 0.2307126},\r\n      {lng: -240.2343749,lat: 0.2307126},\r\n      {lng: -240.1245116,lat: 0.021973},\r\n      {lng: -240.3112792,lat: -0.0659176},\r\n      {lng: -240.2014159,lat: -0.2197257},\r\n      {lng: -240.2343749,lat: -0.4284625},\r\n      {lng: -240.1684569,lat: -0.6371936},\r\n      {lng: -240.1135253,lat: -0.8349311},\r\n      {lng: -240.1904296,lat: -0.8349311},\r\n      {lng: -240.2783202,lat: -0.703107},\r\n      {lng: -240.4980468,lat: -1.0656121},\r\n      {lng: -240.6958007,lat: -1.2852922},\r\n      {lng: -240.673828,lat: -1.6367399},\r\n      {lng: -240.673828,lat: -1.8893056},\r\n      {lng: -240.7836913,lat: -2.0869404},\r\n      {lng: -240.8715819,lat: -2.4162753},\r\n      {lng: -241.0253905,lat: -2.6357882},\r\n      {lng: -241.1791991,lat: -2.7235827},\r\n      {lng: -241.2011718,lat: -2.8442897},\r\n      {lng: -241.1352538,lat: -2.8772076},\r\n      {lng: -241.1791991,lat: -3.1185759},\r\n      {lng: -241.1242675,lat: -3.502455},\r\n      {lng: -240.8386229,lat: -3.502455},\r\n      {lng: -240.6298827,lat: -3.4147244},\r\n      {lng: -240.4870604,lat: -3.5463172},\r\n      {lng: -240.5200194,lat: -3.6669274},\r\n      {lng: -240.4467773,lat: -3.9738606},\r\n      {lng: -240.3588867,lat: -4.3245012},\r\n      {lng: -240.4138184,lat: -4.6968787},\r\n      {lng: -240.46875,lat: -5.0143384},\r\n      {lng: -240.5786133,lat: -5.2331868},\r\n      {lng: -240.6115723,lat: -5.4519587},\r\n      {lng: -240.4907227,lat: -5.6925156},\r\n      {lng: -240.2050781,lat: -5.6925156},\r\n      {lng: -240.0842285,lat: -5.6050518},\r\n      {lng: -239.8535156,lat: -5.626919},\r\n      {lng: -239.6228027,lat: -5.561315},\r\n      {lng: -239.5568848,lat: -5.6487853},\r\n      {lng: -239.6228027,lat: -5.3097658},\r\n      {lng: -239.699707,lat: -5.058114},\r\n      {lng: -239.6337891,lat: -4.8392067},\r\n      {lng: -239.5898438,lat: -4.5983269},\r\n      {lng: -239.6008301,lat: -4.2916353},\r\n      {lng: -239.6228027,lat: -4.0286584},\r\n      {lng: -239.6337891,lat: -3.8752156},\r\n      {lng: -239.5568848,lat: -3.7546338},\r\n      {lng: -239.6118164,lat: -3.502455},\r\n      {lng: -239.6118164,lat: -3.2611768},\r\n      {lng: -239.7436523,lat: -3.1185759},\r\n      {lng: -239.8535156,lat: -2.9759556},\r\n      {lng: -239.3041992,lat: -2.6906605},\r\n      {lng: -238.963623,lat: -2.6687119},\r\n      {lng: -238.8427734,lat: -2.8113709},\r\n      {lng: -238.9086914,lat: -2.9320687},\r\n      {lng: -238.9416504,lat: -3.2611768},\r\n      {lng: -239.095459,lat: -3.3379536},\r\n      {lng: -239.128418,lat: -3.5682475},\r\n      {lng: -238.8537598,lat: -3.7984836},\r\n      {lng: -238.6560059,lat: -3.9848205},\r\n      {lng: -238.4033203,lat: -4.0944108},\r\n      {lng: -238.3703613,lat: -4.247812},\r\n      {lng: -238.4692383,lat: -4.2916353},\r\n      {lng: -238.5131836,lat: -4.6749795},\r\n      {lng: -238.326416,lat: -4.7844686},\r\n      {lng: -237.9858398,lat: -4.9486694},\r\n      {lng: -237.9638672,lat: -4.8282594},\r\n      {lng: -237.8979492,lat: -4.6421294},\r\n      {lng: -237.623291,lat: -4.5107138},\r\n      {lng: -237.2827148,lat: -4.4230901},\r\n      {lng: -237.0849609,lat: -4.3573656},\r\n      {lng: -237.1508789,lat: -4.6092778},\r\n      {lng: -237.1508789,lat: -4.8720474},\r\n      {lng: -237.1838379,lat: -5.1128294},\r\n      {lng: -237.3046875,lat: -5.2550675},\r\n      {lng: -237.3925781,lat: -5.2441272},\r\n      {lng: -237.3486328,lat: -5.0800008},\r\n      {lng: -237.2607422,lat: -4.9048865},\r\n      {lng: -237.3156738,lat: -4.6530796},\r\n      {lng: -237.4914551,lat: -4.7297262},\r\n      {lng: -237.6672363,lat: -4.7844686},\r\n      {lng: -237.6342773,lat: -5.0252826},\r\n      {lng: -237.6452637,lat: -5.1784818},\r\n      {lng: -237.7001953,lat: -5.3644593},\r\n      {lng: -237.5024414,lat: -5.3644593},\r\n      {lng: -237.4035645,lat: -5.4082106},\r\n      {lng: -237.3596191,lat: -5.7143795},\r\n      {lng: -237.1948242,lat: -5.6815833},\r\n      {lng: -237.1289063,lat: -5.5503802},\r\n      {lng: -237.1289063,lat: -5.4519587},\r\n      {lng: -236.9641113,lat: -5.4082106},\r\n      {lng: -236.7663574,lat: -5.3097658},\r\n      {lng: -236.9091797,lat: -5.2222462},\r\n      {lng: -236.986084,lat: -5.1456564},\r\n      {lng: -237.0629883,lat: -5.1894231},\r\n      {lng: -236.9970703,lat: -4.8720474},\r\n      {lng: -236.9311523,lat: -4.707828},\r\n      {lng: -236.8103027,lat: -4.7297262},\r\n      {lng: -236.8432617,lat: -4.5654732},\r\n      {lng: -236.9091797,lat: -4.444997},\r\n      {lng: -236.9970703,lat: -4.3683201},\r\n      {lng: -237.0410156,lat: -4.4559502},\r\n      {lng: -236.9970703,lat: -4.2039861},\r\n      {lng: -236.8432617,lat: -4.247812},\r\n      {lng: -236.7553711,lat: -4.0944108},\r\n      {lng: -236.887207,lat: -4.0396175},\r\n      {lng: -236.9970703,lat: -3.9629007},\r\n      {lng: -237.0849609,lat: -4.105369},\r\n      {lng: -237.1728516,lat: -4.0615353},\r\n      {lng: -237.3046875,lat: -4.0176991},\r\n      {lng: -237.3706055,lat: -3.8971377},\r\n      {lng: -237.5793457,lat: -3.8423313},\r\n      {lng: -237.7880859,lat: -3.6669274},\r\n      {lng: -237.7001953,lat: -3.4914891},\r\n      {lng: -237.65625,lat: -3.2392395},\r\n      {lng: -237.689209,lat: -3.0308118},\r\n      {lng: -237.65625,lat: -2.8991524},\r\n      {lng: -237.9199219,lat: -2.840632},\r\n      {lng: -238.0297852,lat: -2.577255},\r\n      {lng: -238.1286621,lat: -2.4235929},\r\n      {lng: -238.2495117,lat: -2.2699133},\r\n      {lng: -238.3374023,lat: -2.1601322},\r\n      {lng: -238.4912109,lat: -2.138175},\r\n      {lng: -238.6230469,lat: -1.9405464},\r\n      {lng: -238.6779785,lat: -1.8197619},\r\n      {lng: -238.5131836,lat: -1.8197619},\r\n      {lng: -238.3374023,lat: -1.9734862},\r\n      {lng: -238.1835938,lat: -1.7978002},\r\n      {lng: -237.8979492,lat: -1.6111153},\r\n      {lng: -237.7001953,lat: -1.5452224},\r\n      {lng: -237.4584961,lat: -1.3585148},\r\n      {lng: -237.3266602,lat: -1.1498247},\r\n      {lng: -237.1728516,lat: -0.9740737},\r\n      {lng: -236.9091797,lat: -0.9081646},\r\n      {lng: -236.887207,lat: -0.8422544},\r\n      {lng: -236.7663574,lat: -1.0180124},\r\n      {lng: -236.6235352,lat: -1.0399815},\r\n      {lng: -236.6015625,lat: -0.8642246},\r\n      {lng: -236.5795898,lat: -0.6664884},\r\n      {lng: -236.854248,lat: -0.5566314},\r\n      {lng: -236.986084,lat: -0.6115602},\r\n      {lng: -237.2387695,lat: -0.6664884},\r\n      {lng: -237.0300293,lat: -0.7324015},\r\n      {lng: -237.3486328,lat: -0.7983136},\r\n      {lng: -237.5463867,lat: -0.8092988},\r\n      {lng: -237.8759766,lat: -0.8642246},\r\n      {lng: -237.9199219,lat: -0.9740737},\r\n      {lng: -238.1176758,lat: -0.9740737},\r\n      {lng: -238.293457,lat: -0.9740737},\r\n      {lng: -238.3483887,lat: -0.8312692},\r\n      {lng: -238.5351563,lat: -1.0180124},\r\n      {lng: -238.8208008,lat: -1.2926145},\r\n      {lng: -238.8757324,lat: -1.49031},\r\n      {lng: -239.1943359,lat: -1.369498},\r\n      {lng: -239.3481445,lat: -1.4134304},\r\n      {lng: -239.4580078,lat: -1.1937608},\r\n      {lng: -239.4909668,lat: -1.0619505},\r\n      {lng: -239.6447754,lat: -0.9301345},\r\n      {lng: -239.732666,lat: -0.9081646},\r\n      {lng: -239.9304199,lat: -0.6445172},\r\n      {lng: -240.0000001,lat: -0.2160635},\r\n      {lng: -239.8901368,lat: 0.0366215},\r\n      {lng: -239.7583009,lat: 0.2783197},\r\n      {lng: -239.6044923,lat: 0.4760692},\r\n      {lng: -239.4506837,lat: 0.4870551},\r\n      {lng: -239.1870118,lat: 0.4980411},\r\n      {lng: -238.9453126,lat: 0.3552228},\r\n      {lng: -238.7365724,lat: 0.4540973},\r\n      {lng: -238.6157228,lat: 0.4980411},\r\n      {lng: -238.3959962,lat: 0.5200128},\r\n      {lng: -238.1652833,lat: 0.4431113},\r\n      {lng: -237.7807618,lat: 0.4540973},\r\n      {lng: -237.5610353,lat: 0.5200128},\r\n      {lng: -237.1655275,lat: 0.4980411},\r\n      {lng: -236.8908693,lat: 0.4760692},\r\n      {lng: -236.6381837,lat: 0.300292},\r\n      {lng: -236.3525392,lat: 0.3442367},\r\n      {lng: -235.8691407,lat: 0.4101532},\r\n      {lng: -235.6054689,lat: 0.4540973},\r\n      {lng: -235.4296876,lat: 0.5969135},\r\n      {lng: -235.308838,lat: 0.8385936},\r\n      {lng: -235.0781251,lat: 1.0253363},\r\n      {lng: -234.9243165,lat: 1.1901004},\r\n      {lng: -234.8364259,lat: 1.3987873},\r\n      {lng: -234.7375489,lat: 1.4646846},\r\n      {lng: -234.8583985,lat: 1.6074555}', '2020-03-19 04:03:36', '2020-03-19 05:07:50', NULL),
(6, 10, '#149cb4', 'Papua', '{lng: -218.7890607, lat: -9.1493675},\r\n      {lng: -218.7890607, lat: -7.9332534},\r\n      {lng: -218.7011701, lat: -7.2802453},\r\n      {lng: -218.964842, lat: -6.8879781},\r\n      {lng: -218.6132795, lat: -6.2334867},\r\n      {lng: -218.6572248, lat: -2.7311356},\r\n      {lng: -219.6313468, lat: -2.4642543},\r\n      {lng: -220.1806632, lat: -2.3106656},\r\n      {lng: -221.0595694, lat: -2.0473326},\r\n      {lng: -221.8725577, lat: -1.6522538},\r\n      {lng: -222.0703116, lat: -1.5205425},\r\n      {lng: -222.8393546, lat: -1.8278552},\r\n      {lng: -222.8393546, lat: -2.0473326},\r\n      {lng: -223.4985343, lat: -2.3106656},\r\n      {lng: -223.8940421, lat: -2.6616993},\r\n      {lng: -224.3115225, lat: -3.1442047},\r\n      {lng: -224.6850577, lat: -3.4949795},\r\n      {lng: -225.2563468, lat: -3.1442047},\r\n      {lng: -225.498046, lat: -2.5739497},\r\n      {lng: -225.6957999, lat: -2.3545498},\r\n      {lng: -225.9374991, lat: -1.871753},\r\n      {lng: -225.8056632, lat: -1.608351},\r\n      {lng: -225.7617179, lat: -1.2790513},\r\n      {lng: -226.0253897, lat: -0.8618792},\r\n      {lng: -226.2670889, lat: -0.7740469},\r\n      {lng: -226.6406241, lat: -0.6862128},\r\n      {lng: -227.131347, lat: -0.4739403},\r\n      {lng: -227.6147454, lat: -0.4519808},\r\n      {lng: -227.8784173, lat: -0.4958999},\r\n      {lng: -228.1420892, lat: -0.7594076},\r\n      {lng: -228.5156243, lat: -0.8033241},\r\n      {lng: -228.7353509, lat: -1.1985486},\r\n      {lng: -229.0209954, lat: -0.9789853},\r\n      {lng: -229.240722, lat: -0.8033241},\r\n      {lng: -229.4165032, lat: -0.8911557},\r\n      {lng: -229.174804, lat: -1.1985486},\r\n      {lng: -228.8232415, lat: -1.593716},\r\n      {lng: -228.405761, lat: -1.5498119},\r\n      {lng: -228.1860345, lat: -1.593716},\r\n      {lng: -228.0102532, lat: -1.8571201},\r\n      {lng: -227.7905267, lat: -2.1643747},\r\n      {lng: -227.3510735, lat: -2.2302072},\r\n      {lng: -226.8457025, lat: -2.2082634},\r\n      {lng: -226.2524407, lat: -2.2960368},\r\n      {lng: -226.1645501, lat: -2.5593237},\r\n      {lng: -226.6479485, lat: -2.3838047},\r\n      {lng: -227.0434564, lat: -2.3838047},\r\n      {lng: -227.1533196, lat: -2.7786885},\r\n      {lng: -227.5268548, lat: -2.7786885},\r\n      {lng: -227.768554, lat: -2.6470743},\r\n      {lng: -227.8784173, lat: -2.8225566},\r\n      {lng: -227.5268548, lat: -3.0857299},\r\n      {lng: -227.1093743, lat: -3.5022856},\r\n      {lng: -227.0874017, lat: -3.9843802},\r\n      {lng: -226.6479485, lat: -4.0500993},\r\n      {lng: -226.5820306, lat: -3.5899586},\r\n      {lng: -226.296386, lat: -3.3926827},\r\n      {lng: -225.9448235, lat: -3.9405646},\r\n      {lng: -225.4174798, lat: -4.115813},\r\n      {lng: -224.956054, lat: -4.4661925},\r\n      {lng: -224.1650384, lat: -4.4880858},\r\n      {lng: -222.9711912, lat: -5.0789463},\r\n      {lng: -222.1801756, lat: -5.2757826},\r\n      {lng: -221.8725584, lat: -5.7129699},\r\n      {lng: -221.4257808, lat: -6.5084102},\r\n      {lng: -221.0742183, lat: -7.2932479},\r\n      {lng: -221.6455074, lat: -7.5545624},\r\n      {lng: -222.1289058, lat: -8.0332248},\r\n      {lng: -222.3486324, lat: -8.2506142},\r\n      {lng: -221.2060542, lat: -8.4244398},\r\n      {lng: -220.6347652, lat: -8.4244398},\r\n      {lng: -219.9316402, lat: -8.1636726},\r\n      {lng: -219.4921871, lat: -8.6416119},\r\n      {lng: -218.8769527, lat: -8.9454421}', '2020-03-19 04:03:38', '2020-03-19 05:07:50', NULL),
(8, 10, '#149cb4', 'NTB', '{lng:-243.1782533,lat:-8.5710630},{lng:-243.1961060,lat:-8.5764948},{lng:-243.2180787,lat:-8.6022947},{lng:-243.2235719,lat:-8.6253773},{lng:-243.2331849,lat:-8.6484585},{lng:-243.2482911,lat:-8.6647502},{lng:-243.2235719,lat:-8.6891865},{lng:-243.2167054,lat:-8.7176936},{lng:-243.2345582,lat:-8.7353397},{lng:-243.2125855,lat:-8.7652004},{lng:-243.1823731,lat:-8.8018444},{lng:-243.1864930,lat:-8.8222007},{lng:-243.2112122,lat:-8.8262718},{lng:-243.2423402,lat:-8.8588390},{lng:-243.2579041,lat:-8.8823580},{lng:-243.2675171,lat:-8.9040665},{lng:-243.2592773,lat:-8.9217037},{lng:-243.2606506,lat:-8.9501928},{lng:-243.2730103,lat:-8.9718973},{lng:-243.2537842,lat:-8.9936005},{lng:-243.2263184,lat:-9.0329341},{lng:-243.2043457,lat:-9.0424278},{lng:-243.1878662,lat:-9.0383591},{lng:-243.1658936,lat:-9.0532775},{lng:-243.1480408,lat:-9.0492089},{lng:-243.1082153,lat:-9.0681952},{lng:-243.0793762,lat:-9.0587022},{lng:-243.0477905,lat:-9.0532775},{lng:-243.0216980,lat:-9.0831123},{lng:-242.9804993,lat:-9.1115886},{lng:-242.9269409,lat:-9.0939607},{lng:-242.8610229,lat:-9.0817562},{lng:-242.8541565,lat:-9.0654829},{lng:-242.8225708,lat:-9.0288653},{lng:-242.7731323,lat:-9.0261528},{lng:-242.7264404,lat:-9.0451403},{lng:-242.6824951,lat:-9.0492089},{lng:-242.6522827,lat:-9.0464965},{lng:-242.6138306,lat:-9.0559898},{lng:-242.5314331,lat:-9.0302216},{lng:-242.4600220,lat:-9.0030952},{lng:-242.3625183,lat:-8.9569756},{lng:-242.3268127,lat:-8.9406967},{lng:-242.2938538,lat:-8.9203471},{lng:-242.2540283,lat:-8.9217037},{lng:-242.2265625,lat:-8.9339136},{lng:-242.2077942,lat:-8.9131114},{lng:-242.1734619,lat:-8.8914034},{lng:-242.1624756,lat:-8.9293915},{lng:-242.1322632,lat:-8.9321048},{lng:-242.0896911,lat:-8.9321048},{lng:-242.0429992,lat:-8.9022576},{lng:-242.0141601,lat:-8.8846194},{lng:-241.9866943,lat:-8.8574821},{lng:-241.9468689,lat:-8.8588391},{lng:-241.9180298,lat:-8.8411988},{lng:-241.8946838,lat:-8.8724079},{lng:-241.8548584,lat:-8.8683373},{lng:-241.8150329,lat:-8.8502452},{lng:-241.7724609,lat:-8.8041063},{lng:-241.7298889,lat:-8.7715343},{lng:-241.7051696,lat:-8.7362446},{lng:-241.6557312,lat:-8.7036666},{lng:-241.6227722,lat:-8.6860190},{lng:-241.5856933,lat:-8.6914491},{lng:-241.5760803,lat:-8.7172411},{lng:-241.5829467,lat:-8.7471033},{lng:-241.6145324,lat:-8.7715343},{lng:-241.6227722,lat:-8.8095347},{lng:-241.5953064,lat:-8.8665281},{lng:-241.5467834,lat:-8.8810012},{lng:-241.5069579,lat:-8.8782875},{lng:-241.4273070,lat:-8.8457220},{lng:-241.3270568,lat:-8.8022968},{lng:-241.2748717,lat:-8.8022968},{lng:-241.2171935,lat:-8.8158677},{lng:-241.1682128,lat:-8.8448174},{lng:-241.1174010,lat:-8.8407465},{lng:-241.0514830,lat:-8.8285335},{lng:-241.0556029,lat:-8.8013921},{lng:-241.0830687,lat:-8.7796775},{lng:-241.1064147,lat:-8.7633908},{lng:-241.1750792,lat:-8.7688198},{lng:-241.2643431,lat:-8.7674625},{lng:-241.3000487,lat:-8.7525326},{lng:-241.2615966,lat:-8.7172411},{lng:-241.2423705,lat:-8.6914491},{lng:-241.1956786,lat:-8.7036666},{lng:-241.1338805,lat:-8.7253856},{lng:-241.1187743,lat:-8.7063815},{lng:-241.1064147,lat:-8.6846614},{lng:-241.0679625,lat:-8.7009516},{lng:-241.0336303,lat:-8.7348873},{lng:-241.0075377,lat:-8.7525326},{lng:-240.9223937,lat:-8.7403167},{lng:-240.8853148,lat:-8.7471033},{lng:-240.8528136,lat:-8.7335299},{lng:-240.8308409,lat:-8.7090965},{lng:-240.8381651,lat:-8.6774212},{lng:-240.8354187,lat:-8.6448380},{lng:-240.8367918,lat:-8.6339764},{lng:-240.8161925,lat:-8.6176833},{lng:-240.8230589,lat:-8.5796633},{lng:-240.8354185,lat:-8.5647259},{lng:-240.8615111,lat:-8.5959581},{lng:-240.8834837,lat:-8.6027473},{lng:-240.8766173,lat:-8.6231144},{lng:-240.8930968,lat:-8.6394072},{lng:-240.9054564,lat:-8.6502688},{lng:-240.9315489,lat:-8.6529841},{lng:-240.9713743,lat:-8.6353341},{lng:-240.9672545,lat:-8.6041052},{lng:-240.9768675,lat:-8.5755895},{lng:-240.9809874,lat:-8.5443557},{lng:-240.9754942,lat:-8.5253425},{lng:-240.9576414,lat:-8.5158356},{lng:-240.9452818,lat:-8.4900299},{lng:-240.9645079,lat:-8.4411301},{lng:-240.9974669,lat:-8.3949412},{lng:-241.0111998,lat:-8.3568992},{lng:-240.9933470,lat:-8.3147769},{lng:-241.0496519,lat:-8.3052648},{lng:-241.1334227,lat:-8.2916757},{lng:-241.1746214,lat:-8.2862399},{lng:-241.2171934,lat:-8.3107004},{lng:-241.2556456,lat:-8.3419531},{lng:-241.2776182,lat:-8.3813552},{lng:-241.2803648,lat:-8.4139608},{lng:-241.2721251,lat:-8.4587890},{lng:-241.2817381,lat:-8.4859551},{lng:-241.2995909,lat:-8.5117611},{lng:-241.3339232,lat:-8.5158356},{lng:-241.3256834,lat:-8.4682974},{lng:-241.3133238,lat:-8.4085267},{lng:-241.3243101,lat:-8.3310829},{lng:-241.3609313,lat:-8.2898638},{lng:-241.4144896,lat:-8.2803511},{lng:-241.4556883,lat:-8.2640431},{lng:-241.5010069,lat:-8.2545297},{lng:-241.5380858,lat:-8.2518116},{lng:-241.5696715,lat:-8.2789921},{lng:-241.5971373,lat:-8.3034530},{lng:-241.6136168,lat:-8.3116063},{lng:-241.6218565,lat:-8.3469352},{lng:-241.6589354,lat:-8.3605224},{lng:-241.7028807,lat:-8.3713918},{lng:-241.7330931,lat:-8.3578050},{lng:-241.7742919,lat:-8.3184006},{lng:-241.7880248,lat:-8.2885049},{lng:-241.8127440,lat:-8.2654021},{lng:-241.8402098,lat:-8.2355024},{lng:-241.8525695,lat:-8.1874769},{lng:-241.8470763,lat:-8.1303825},{lng:-241.9157408,lat:-8.1113492},{lng:-241.9583129,lat:-8.1031918},{lng:-242.0063781,lat:-8.0977535},{lng:-242.0475768,lat:-8.1113492},{lng:-242.0613097,lat:-8.0895958},{lng:-242.1354674,lat:-8.1072705},{lng:-242.1931456,lat:-8.1290230},{lng:-242.2206115,lat:-8.1276635},{lng:-242.2412108,lat:-8.1466960},{lng:-242.2741698,lat:-8.1630089},{lng:-242.2933959,lat:-8.2309719},{lng:-242.2645568,lat:-8.2663081},{lng:-242.2315978,lat:-8.2934876},{lng:-242.1849059,lat:-8.3546347},{lng:-242.1409606,lat:-8.3913183},{lng:-242.0462035,lat:-8.4375076},{lng:-242.0173644,lat:-8.4578835},{lng:-241.9514464,lat:-8.4483749},{lng:-241.9047545,lat:-8.4538084},{lng:-241.8827819,lat:-8.5108557},{lng:-241.8690490,lat:-8.5108557},{lng:-241.8333434,lat:-8.5271534},{lng:-241.8113707,lat:-8.5597466},{lng:-241.7907714,lat:-8.5733263},{lng:-241.7674254,lat:-8.5651786},{lng:-241.7303466,lat:-8.5977686},{lng:-241.7152404,lat:-8.6330712},{lng:-241.7303466,lat:-8.6561520},{lng:-241.7701720,lat:-8.6629401},{lng:-241.8049621,lat:-8.6629401},{lng:-241.8489074,lat:-8.6493637},{lng:-241.9065856,lat:-8.6588672},{lng:-241.9477843,lat:-8.6656554},{lng:-241.9779967,lat:-8.6792313},{lng:-242.0045470,lat:-8.7140738},{lng:-242.0361327,lat:-8.7317200},{lng:-242.0924377,lat:-8.7181461},{lng:-242.1611022,lat:-8.7045716},{lng:-242.1830749,lat:-8.7262905},{lng:-242.2146606,lat:-8.7140738},{lng:-242.2325133,lat:-8.6909966},{lng:-242.2338866,lat:-8.6475534},{lng:-242.2380065,lat:-8.6203988},{lng:-242.2489928,lat:-8.5878107},{lng:-242.2352599,lat:-8.5701577},{lng:-242.2009276,lat:-8.5606519},{lng:-242.2462462,lat:-8.5307749},{lng:-242.2544860,lat:-8.4954628},{lng:-242.2764586,lat:-8.4655807},{lng:-242.3011779,lat:-8.4723723},{lng:-242.3139953,lat:-8.4424884},{lng:-242.3304748,lat:-8.4275456},{lng:-242.3606872,lat:-8.4085267},{lng:-242.3913573,lat:-8.4225646},{lng:-242.4229430,lat:-8.4212061},{lng:-242.4380492,lat:-8.4076210},{lng:-242.4613952,lat:-8.3886011},{lng:-242.4284362,lat:-8.3288182},{lng:-242.4147033,lat:-8.2853339},{lng:-242.3844909,lat:-8.2445631},{lng:-242.3707580,lat:-8.2228169},{lng:-242.3048400,lat:-8.1901955},{lng:-242.3213195,lat:-8.1548525},{lng:-242.3542785,lat:-8.1494148},{lng:-242.4092101,lat:-8.1480554},{lng:-242.4504089,lat:-8.1466960},{lng:-242.4971008,lat:-8.1766024},{lng:-242.5190734,lat:-8.1969918},{lng:-242.5218200,lat:-8.2255353},{lng:-242.5163268,lat:-8.2581539},{lng:-242.4861144,lat:-8.2717441},{lng:-242.5286865,lat:-8.3491997},{lng:-242.5039672,lat:-8.3777322},{lng:-242.4723815,lat:-8.3994697},{lng:-242.5080871,lat:-8.4184891},{lng:-242.5671386,lat:-8.3994697},{lng:-242.5849914,lat:-8.4538084},{lng:-242.6083373,lat:-8.4728251},{lng:-242.6852416,lat:-8.4375076},{lng:-242.7717590,lat:-8.3967526},{lng:-242.7882385,lat:-8.4116966},{lng:-242.8417968,lat:-8.3655042},{lng:-242.8889465,lat:-8.3609753},{lng:-242.8999328,lat:-8.3922240},{lng:-242.9315185,lat:-8.4275456},{lng:-242.9809570,lat:-8.4615057},{lng:-243.0166626,lat:-8.4900298},{lng:-243.0496216,lat:-8.5185519},{lng:-243.0921936,lat:-8.5239844},{lng:-243.1169128,lat:-8.5307749},{lng:-243.1443786,lat:-8.5375654},{lng:-243.1636047,lat:-8.5552199},{lng:-243.1773376,lat:-8.5674418}', '2020-03-19 04:03:45', '2020-03-29 23:36:00', NULL),
(9, 10, '#149cb4', 'Bali', '{lng: -244.8316957,lat: -8.7556995},\r\n{lng: -244.8310090,lat: -8.7749273},\r\n{lng: -244.8392487,lat: -8.7803561},\r\n{lng: -244.8509217,lat: -8.7796775},\r\n{lng: -244.8619080,lat: -8.7871420},\r\n{lng: -244.8825074,lat: -8.7952850},\r\n{lng: -244.8852540,lat: -8.8034278},\r\n{lng: -244.9031068,lat: -8.8142845},\r\n{lng: -244.9127198,lat: -8.8163201},\r\n{lng: -244.9140931,lat: -8.8319260},\r\n{lng: -244.8976136,lat: -8.8468528},\r\n{lng: -244.8474885,lat: -8.8522806},\r\n{lng: -244.8172761,lat: -8.8482098},\r\n{lng: -244.7884370,lat: -8.8380325},\r\n{lng: -244.7795106,lat: -8.8264979},\r\n{lng: -244.7685242,lat: -8.8136060},\r\n{lng: -244.7630311,lat: -8.7986778},\r\n{lng: -244.7733308,lat: -8.7810347},\r\n{lng: -244.7740174,lat: -8.7613549},\r\n{lng: -244.7726441,lat: -8.7491393},\r\n{lng: -244.7575379,lat: -8.7409953},\r\n{lng: -244.7520448,lat: -8.7287791},\r\n{lng: -244.7671510,lat: -8.7233495},\r\n{lng: -244.7719575,lat: -8.7165624},\r\n{lng: -244.7554780,lat: -8.7084177},\r\n{lng: -244.7424317,lat: -8.7124901},\r\n{lng: -244.7300721,lat: -8.6962004},\r\n{lng: -244.7341920,lat: -8.6738009},\r\n{lng: -244.7355653,lat: -8.6609036},\r\n{lng: -244.7177125,lat: -8.6446117},\r\n{lng: -244.6888734,lat: -8.6160991},\r\n{lng: -244.6703339,lat: -8.6059156},\r\n{lng: -244.6476746,lat: -8.5882634},\r\n{lng: -244.6339417,lat: -8.5733263},\r\n{lng: -244.6025849,lat: -8.5753632},\r\n{lng: -244.5799256,lat: -8.5706104},\r\n{lng: -244.5538331,lat: -8.5712893},\r\n{lng: -244.5346070,lat: -8.5577096},\r\n{lng: -244.5140076,lat: -8.5488825},\r\n{lng: -244.4906617,lat: -8.5400551},\r\n{lng: -244.4851685,lat: -8.5264743},\r\n{lng: -244.4886017,lat: -8.5115347},\r\n{lng: -244.4611359,lat: -8.5006692},\r\n{lng: -244.4391633,lat: -8.5061020},\r\n{lng: -244.4178773,lat: -8.5135720},\r\n{lng: -244.3924714,lat: -8.5040647},\r\n{lng: -244.3766785,lat: -8.4748625},\r\n{lng: -244.3599702,lat: -8.4581098},\r\n{lng: -244.3194581,lat: -8.4377339},\r\n{lng: -244.2940522,lat: -8.4058096},\r\n{lng: -244.2892457,lat: -8.3806758},\r\n{lng: -244.3036652,lat: -8.3616546},\r\n{lng: -244.3331910,lat: -8.3426324},\r\n{lng: -244.3640900,lat: -8.3310828},\r\n{lng: -244.3812562,lat: -8.3032264},\r\n{lng: -244.4169617,lat: -8.2601924},\r\n{lng: -244.4492341,lat: -8.2262148},\r\n{lng: -244.4828797,lat: -8.2085453},\r\n{lng: -244.5130921,lat: -8.1881565},\r\n{lng: -244.5563508,lat: -8.1596103},\r\n{lng: -244.5982362,lat: -8.1412582},\r\n{lng: -244.6421815,lat: -8.1283432},\r\n{lng: -244.6641541,lat: -8.1099896},\r\n{lng: -244.7067261,lat: -8.0984332},\r\n{lng: -244.7319032,lat: -8.0920884},\r\n{lng: -244.7634889,lat: -8.0798516},\r\n{lng: -244.7868348,lat: -8.0778121},\r\n{lng: -244.8081208,lat: -8.0648951},\r\n{lng: -244.8321534,lat: -8.0642152},\r\n{lng: -244.8616792,lat: -8.0723734},\r\n{lng: -244.8953248,lat: -8.0968470},\r\n{lng: -244.9269105,lat: -8.1192798},\r\n{lng: -244.9433900,lat: -8.1362735},\r\n{lng: -244.9742890,lat: -8.1621025},\r\n{lng: -245.0058747,lat: -8.1790944},\r\n{lng: -245.0347138,lat: -8.1811334},\r\n{lng: -245.0825501,lat: -8.1838520},\r\n{lng: -245.1141358,lat: -8.1926874},\r\n{lng: -245.1512147,lat: -8.1933671},\r\n{lng: -245.1745606,lat: -8.1865706},\r\n{lng: -245.2136994,lat: -8.1804538},\r\n{lng: -245.2528382,lat: -8.1675400},\r\n{lng: -245.2823640,lat: -8.1546259},\r\n{lng: -245.3009034,lat: -8.1505477},\r\n{lng: -245.3235627,lat: -8.1423911},\r\n{lng: -245.3489686,lat: -8.1396721},\r\n{lng: -245.3633881,lat: -8.1308356},\r\n{lng: -245.3791810,lat: -8.1213191},\r\n{lng: -245.3997804,lat: -8.1192798},\r\n{lng: -245.4162598,lat: -8.1233583},\r\n{lng: -245.4423524,lat: -8.1308356},\r\n{lng: -245.4588319,lat: -8.1383127},\r\n{lng: -245.4670716,lat: -8.1519071},\r\n{lng: -245.4759980,lat: -8.1566650},\r\n{lng: -245.4828645,lat: -8.1478288},\r\n{lng: -245.4759980,lat: -8.1355937},\r\n{lng: -245.4862977,lat: -8.1219988},\r\n{lng: -245.4965974,lat: -8.1002460},\r\n{lng: -245.5075837,lat: -8.0968470},\r\n{lng: -245.5309297,lat: -8.0968470},\r\n{lng: -245.5494691,lat: -8.0920883},\r\n{lng: -245.5638886,lat: -8.0975268},\r\n{lng: -245.5700685,lat: -8.1152012},\r\n{lng: -245.5618287,lat: -8.1308356},\r\n{lng: -245.5535890,lat: -8.1410316},\r\n{lng: -245.5577088,lat: -8.1573447},\r\n{lng: -245.5632020,lat: -8.1824927},\r\n{lng: -245.5535890,lat: -8.2076392},\r\n{lng: -245.5377961,lat: -8.2450161},\r\n{lng: -245.5110169,lat: -8.2803510},\r\n{lng: -245.4904176,lat: -8.2993762},\r\n{lng: -245.4773713,lat: -8.3163622},\r\n{lng: -245.4794312,lat: -8.3285917},\r\n{lng: -245.4663850,lat: -8.3442176},\r\n{lng: -245.4478455,lat: -8.3578049},\r\n{lng: -245.4272462,lat: -8.3829402},\r\n{lng: -245.4176331,lat: -8.3978847},\r\n{lng: -245.3956605,lat: -8.4060360},\r\n{lng: -245.3730012,lat: -8.4067153},\r\n{lng: -245.3324891,lat: -8.4033189},\r\n{lng: -245.2830506,lat: -8.3965261},\r\n{lng: -245.2528382,lat: -8.3995829},\r\n{lng: -245.2229691,lat: -8.4056964},\r\n{lng: -245.1972199,lat: -8.4145268},\r\n{lng: -245.1893235,lat: -8.4240363},\r\n{lng: -245.1824570,lat: -8.4281117},\r\n{lng: -245.1800537,lat: -8.4352435},\r\n{lng: -245.1654053,lat: -8.4363755},\r\n{lng: -245.1351929,lat: -8.4441864},\r\n{lng: -245.1084137,lat: -8.4560723},\r\n{lng: -245.0716782,lat: -8.4767867},\r\n{lng: -245.0521088,lat: -8.4900298},\r\n{lng: -245.0404358,lat: -8.5029329},\r\n{lng: -245.0281906,lat: -8.5089316},\r\n{lng: -245.0093079,lat: -8.5204759},\r\n{lng: -245.0007248,lat: -8.5350755},\r\n{lng: -244.9945450,lat: -8.5408474},\r\n{lng: -244.9708557,lat: -8.5568042},\r\n{lng: -244.9495697,lat: -8.5741184},\r\n{lng: -244.9300003,lat: -8.5938081},\r\n{lng: -244.9138642,lat: -8.6138362},\r\n{lng: -244.9052811,lat: -8.6331843},\r\n{lng: -244.8963547,lat: -8.6416700},\r\n{lng: -244.8812485,lat: -8.6511738},\r\n{lng: -244.8668289,lat: -8.6613562},\r\n{lng: -244.8537827,lat: -8.6745928},\r\n{lng: -244.8431397,lat: -8.6902047},\r\n{lng: -244.8366165,lat: -8.7027616},\r\n{lng: -244.8297501,lat: -8.7207478},\r\n{lng: -244.8324967,lat: -8.7282135},\r\n{lng: -244.8383332,lat: -8.7394118},\r\n{lng: -244.8449707,lat: -8.7433707},\r\n{lng: -244.8479748,lat: -8.7443038},\r\n{lng: -244.8473740,lat: -8.7505814},\r\n{lng: -244.8398209,lat: -8.7506663},\r\n{lng: -244.8343277,lat: -8.7546533},\r\n{lng: -244.8319244,lat: -8.7559258}', '2020-03-19 04:03:47', '2020-03-29 23:32:01', NULL);
INSERT INTO `service_coverage` (`service_coverage_id`, `service_id`, `service_coverage_color`, `service_coverage_name`, `service_coverage_area`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 10, '#149cb4', 'Maluku', '{lng: -231.4105225, lat: 2.1754523},\r\n{lng: -231.295166, lat: 2.4168912},\r\n{lng: -231.4489746, lat: 2.6144004},\r\n{lng: -231.7181396, lat: 2.4388381},\r\n{lng: -231.7785645, lat: 2.2852023},\r\n{lng: -231.9158936, lat: 2.1754523},\r\n{lng: -232.0367432, lat: 2.2248408},\r\n{lng: -232.3883057, lat: 1.8351783},\r\n{lng: -232.5091553, lat: 1.308179},\r\n{lng: -232.6135254, lat: 1.1928816},\r\n{lng: -232.6080322, lat: 1.0116903},\r\n{lng: -232.5256348, lat: 0.9348182},\r\n{lng: -232.4157715, lat: 0.8140157},\r\n{lng: -232.4761963, lat: 0.6657533},\r\n{lng: -232.4454344, lat: 0.4230329},\r\n{lng: -232.3081053, lat: 0.2692692},\r\n{lng: -232.3355711, lat: -0.2469452},\r\n{lng: -232.467407, lat: -0.3512853},\r\n{lng: -232.8189695, lat: -0.3018612},\r\n{lng: -232.9068602, lat: -0.4062007},\r\n{lng: -232.8519285, lat: -0.6093841},\r\n{lng: -232.8409422, lat: -0.7851042},\r\n{lng: -232.6431883, lat: -0.8235421},\r\n{lng: -232.6761473, lat: -0.7301924},\r\n{lng: -232.5443113, lat: -0.6533147},\r\n{lng: -232.5772703, lat: -0.8070687},\r\n{lng: -232.4289549, lat: -0.8455064},\r\n{lng: -232.3630369, lat: -0.8400153},\r\n{lng: -232.2861326, lat: -0.9168895},\r\n{lng: -232.1158445, lat: -0.818051},\r\n{lng: -232.165283, lat: -0.6862625},\r\n{lng: -232.3135984, lat: -0.6642973},\r\n{lng: -232.3630369, lat: -0.5874187},\r\n{lng: -232.3190916, lat: -0.4775902},\r\n{lng: -232.4234617, lat: -0.3073528},\r\n{lng: -232.3026121, lat: -0.2579284},\r\n{lng: -232.1817625, lat: -0.3842346},\r\n{lng: -231.9840086, lat: -0.7247012},\r\n{lng: -231.6104734, lat: -0.8949256},\r\n{lng: -231.7752684, lat: -0.6752799},\r\n{lng: -232.0554197, lat: -0.0162962},\r\n{lng: -232.0938719, lat: 0.4669649},\r\n{lng: -231.8356932, lat: 0.4065583},\r\n{lng: -231.1105955, lat: 0.1814033},\r\n{lng: -231.3248289, lat: 0.3791007},\r\n{lng: -231.3248289, lat: 0.5767935},\r\n{lng: -231.797241, lat: 0.7525148},\r\n{lng: -231.2698973, lat: 1.038046},\r\n{lng: -231.2808836, lat: 1.5541284},\r\n{lng: -231.7258299, lat: 1.4553126},\r\n{lng: -231.9510496, lat: 1.2631586},\r\n{lng: -231.8466795, lat: 1.1917834},\r\n{lng: -231.8356932, lat: 1.1149157},\r\n{lng: -232.0114744, lat: 1.0929532},\r\n{lng: -232.0894774, lat: 0.8590952},\r\n{lng: -232.1608885, lat: 0.8151724},\r\n{lng: -232.2729492, lat: 0.828345},\r\n{lng: -232.3399659, lat: 0.9216999},\r\n{lng: -232.3465574, lat: 1.0051013},\r\n{lng: -231.9840086, lat: 1.2466876},\r\n{lng: -231.9840086, lat: 1.5376594},\r\n{lng: -231.9785154, lat: 1.718811},\r\n{lng: -232.1597898, lat: 1.8285916},\r\n{lng: -231.9400633, lat: 2.1249645},\r\n{lng: -231.7697752, lat: 2.289592},\r\n{lng: -231.7038572, lat: 2.0481322},\r\n{lng: -231.462158, lat: 2.0371559},\r\n{lng: -231.4105225, lat: 2.1754523}', '2020-03-19 04:39:42', '2020-03-19 05:07:50', NULL),
(11, 10, '#82c75d', 'Jabodetabek', '{lng:-253.5956955, lat:-6.0229472},\r\n  {lng:-253.6372375, lat:-6.0395048},\r\n  {lng:-253.6555481, lat:-6.0832044},\r\n  {lng:-253.6066716, lat:-6.1648826},\r\n  {lng:-253.6149037, lat:-6.2740378},\r\n  {lng:-253.5764874, lat:-6.402266},\r\n  {lng:-253.5737434, lat:-6.530462},\r\n  {lng:-253.6011836, lat:-6.5850036},\r\n  {lng:-253.5923767, lat:-6.638236},\r\n  {lng:-253.5334978, lat:-6.6613517},\r\n  {lng:-253.4182491, lat:-6.6368126},\r\n  {lng:-253.3752594, lat:-6.6313592},\r\n  {lng:-253.3148911, lat:-6.6722576},\r\n  {lng:-253.2270825, lat:-6.6967951},\r\n  {lng:-253.1365299, lat:-6.6886161},\r\n  {lng:-253.0926256, lat:-6.6395392},\r\n  {lng:-253.0871376, lat:-6.5959112},\r\n  {lng:-253.0075611, lat:-6.5950023},\r\n  {lng:-252.9362166, lat:-6.5895485},\r\n  {lng:-252.8868243, lat:-6.5731868},\r\n  {lng:-252.8456641, lat:-6.5159167},\r\n  {lng:-252.7825517, lat:-6.5077347},\r\n  {lng:-252.780304, lat:-6.41857},\r\n  {lng:-252.7720642, lat:-6.3184834},\r\n  {lng:-252.7112072, lat:-6.2458416},\r\n  {lng:-252.7112072, lat:-6.1667021},\r\n  {lng:-252.7505381, lat:-6.1121162},\r\n  {lng:-252.8529815, lat:-6.0720829},\r\n  {lng:-252.8913977, lat:-6.0092976},\r\n  {lng:-252.9043579, lat:-5.9803226},\r\n  {lng:-252.8988648, lat:-5.9448102},\r\n  {lng:-252.9901824, lat:-5.9219321},\r\n  {lng:-252.9929264, lat:-5.9437748},\r\n  {lng:-252.9826355, lat:-5.9816884},\r\n  {lng:-253.0121345, lat:-6.0229472},\r\n  {lng:-252.9846943, lat:-6.085731},\r\n  {lng:-253.1054311, lat:-6.1075671},\r\n  {lng:-253.2014717, lat:-6.1348609},\r\n  {lng:-253.2755602, lat:-6.0802718},\r\n  {lng:-253.2879639, lat:-6.0436018},\r\n  {lng:-253.309021, lat:-6.024027},\r\n  {lng:-253.3534241, lat:-6.012646},\r\n  {lng:-253.41156, lat:-6.0340421},\r\n  {lng:-253.4614563, lat:-6.0194746},\r\n  {lng:-253.4841055, lat:-6.0338667},\r\n  {lng:-253.5145569, lat:-6.0426913},\r\n  {lng:-253.5499619, lat:-6.0420561},\r\n  {lng:-253.5938662, lat:-6.0202173}', '2020-03-19 04:01:37', '2020-03-19 05:07:50', NULL),
(12, 10, '#149cb4', 'Bali 2', '{lng:-244.5442201,lat:-8.6629401},{lng:-244.5325472,lat:-8.6670129},{lng:-244.5236208,lat:-8.6731221},{lng:-244.5174409,lat:-8.6812675},{lng:-244.5124627,lat:-8.6807585},{lng:-244.5105744,lat:-8.6754979},{lng:-244.5062828,lat:-8.6727827},{lng:-244.4983864,lat:-8.6738009},{lng:-244.4829369,lat:-8.6770252},{lng:-244.4630242,lat:-8.6763464},{lng:-244.4510079,lat:-8.6748191},{lng:-244.4444847,lat:-8.6724433},{lng:-244.4345284,lat:-8.6744797},{lng:-244.4280053,lat:-8.6773646},{lng:-244.4194222,lat:-8.6878856},{lng:-244.4165039,lat:-8.6965398},{lng:-244.4158745,lat:-8.7018566},{lng:-244.4126129,lat:-8.7081349},{lng:-244.4076348,lat:-8.7130557},{lng:-244.4035149,lat:-8.7195035},{lng:-244.4017983,lat:-8.7244241},{lng:-244.3956185,lat:-8.7307020},{lng:-244.3863488,lat:-8.7356225},{lng:-244.3794823,lat:-8.7435969},{lng:-244.3760491,lat:-8.7530981},{lng:-244.3751908,lat:-8.7615811},{lng:-244.3715287,lat:-8.7667839},{lng:-244.3711853,lat:-8.7720432},{lng:-244.3761635,lat:-8.7725522},{lng:-244.3778801,lat:-8.7742487},{lng:-244.3816567,lat:-8.7766238},{lng:-244.3852616,lat:-8.7803561},{lng:-244.3854332,lat:-8.7837491},{lng:-244.3881798,lat:-8.7834098},{lng:-244.3895531,lat:-8.7847670},{lng:-244.3914414,lat:-8.7881599},{lng:-244.3929863,lat:-8.7932493},{lng:-244.3951035,lat:-8.7983385},{lng:-244.3935585,lat:-8.8017314},{lng:-244.3937302,lat:-8.8047849},{lng:-244.3921852,lat:-8.8085169},{lng:-244.3985367,lat:-8.8066509},{lng:-244.4023133,lat:-8.8090258},{lng:-244.4047165,lat:-8.8119096},{lng:-244.4074631,lat:-8.8153023},{lng:-244.4119263,lat:-8.8195431},{lng:-244.4184494,lat:-8.8180164},{lng:-244.4217110,lat:-8.8136060},{lng:-244.4254876,lat:-8.8119096},{lng:-244.4290924,lat:-8.8136060},{lng:-244.4326973,lat:-8.8105525},{lng:-244.4371605,lat:-8.8071598},{lng:-244.4426537,lat:-8.8051241},{lng:-244.4507218,lat:-8.8007135},{lng:-244.4589615,lat:-8.7993564},{lng:-244.4658280,lat:-8.7979993},{lng:-244.4718361,lat:-8.8000350},{lng:-244.4721794,lat:-8.7930796},{lng:-244.4759560,lat:-8.7917225},{lng:-244.4769860,lat:-8.7849366},{lng:-244.4822503,lat:-8.7815437},{lng:-244.4904900,lat:-8.7769631},{lng:-244.4971848,lat:-8.7759452},{lng:-244.5011330,lat:-8.7722128},{lng:-244.5057679,lat:-8.7703467},{lng:-244.5140076,lat:-8.7679715},{lng:-244.5141793,lat:-8.7628818},{lng:-244.5157242,lat:-8.7589797},{lng:-244.5195007,lat:-8.7572831},{lng:-244.5270538,lat:-8.7520236},{lng:-244.5344353,lat:-8.7472730},{lng:-244.5433617,lat:-8.7474426},{lng:-244.5491981,lat:-8.7477820},{lng:-244.5467949,lat:-8.7437100},{lng:-244.5447350,lat:-8.7386200},{lng:-244.5475388,lat:-8.7329643},{lng:-244.5516586,lat:-8.7271954},{lng:-244.5502853,lat:-8.7221052},{lng:-244.5427322,lat:-8.7166755},{lng:-244.5420456,lat:-8.7098883},{lng:-244.5489120,lat:-8.7075127},{lng:-244.5582962,lat:-8.7112458},{lng:-244.5624161,lat:-8.7027616},{lng:-244.5613861,lat:-8.6980104},{lng:-244.5699692,lat:-8.6895259},{lng:-244.5727157,lat:-8.6820595},{lng:-244.5651626,lat:-8.6834170},{lng:-244.5548630,lat:-8.6783262},{lng:-244.5521164,lat:-8.6708595},{lng:-244.5493698,lat:-8.6650896},{lng:-244.5449066,lat:-8.6616956}', '2020-03-29 23:30:43', '2020-03-29 23:32:27', NULL),
(13, 10, '#149cb4', 'Lombok', '{lng:-244.1141510,lat:-8.7627122},{lng:-244.1223907,lat:-8.7532112},{lng:-244.1361237,lat:-8.7430313},{lng:-244.1306305,lat:-8.7281004},{lng:-244.1347504,lat:-8.7192773},{lng:-244.1429901,lat:-8.7274217},{lng:-244.1464233,lat:-8.7213134},{lng:-244.1635895,lat:-8.7294578},{lng:-244.1629028,lat:-8.7355659},{lng:-244.1766357,lat:-8.7545685},{lng:-244.1697693,lat:-8.7783203},{lng:-244.1725159,lat:-8.7979993},{lng:-244.1601563,lat:-8.8176772},{lng:-244.1361237,lat:-8.8237839},{lng:-244.1155243,lat:-8.8326045},{lng:-244.0976715,lat:-8.8319260},{lng:-244.0777588,lat:-8.8454959},{lng:-244.0736389,lat:-8.8366755},{lng:-244.0612793,lat:-8.8400680},{lng:-244.0434265,lat:-8.8563514},{lng:-244.0242004,lat:-8.8800967},{lng:-244.0056610,lat:-8.8936647},{lng:-243.9878082,lat:-8.9079106},{lng:-243.9761353,lat:-8.8943431},{lng:-243.9754486,lat:-8.8834887},{lng:-243.9891815,lat:-8.8726340},{lng:-243.9850616,lat:-8.8617790},{lng:-243.9575958,lat:-8.8617790},{lng:-243.9424896,lat:-8.8549945},{lng:-243.9280701,lat:-8.8604221},{lng:-243.9301300,lat:-8.8617790},{lng:-243.9388275,lat:-8.8653974},{lng:-243.9446640,lat:-8.8647189},{lng:-243.9525604,lat:-8.8701465},{lng:-243.9522171,lat:-8.8796444},{lng:-243.9470673,lat:-8.8871069},{lng:-243.9357376,lat:-8.8837149},{lng:-243.9264679,lat:-8.8847325},{lng:-243.9185715,lat:-8.8850717},{lng:-243.9144516,lat:-8.8785137},{lng:-243.8935089,lat:-8.8713902},{lng:-243.8746262,lat:-8.8713902},{lng:-243.8681030,lat:-8.8751216},{lng:-243.8571167,lat:-8.8713902},{lng:-243.8502502,lat:-8.8649451},{lng:-243.8440704,lat:-8.8656235},{lng:-243.8378906,lat:-8.8737647},{lng:-243.8430405,lat:-8.8808881},{lng:-243.8375473,lat:-8.8941170},{lng:-243.8334274,lat:-8.9073453},{lng:-243.8245010,lat:-8.9131114},{lng:-243.8073349,lat:-8.9137897},{lng:-243.8032150,lat:-8.9124330},{lng:-243.7990951,lat:-8.9087020},{lng:-243.7910843,lat:-8.9032751},{lng:-243.7849045,lat:-8.9070061},{lng:-243.7732315,lat:-8.9083629},{lng:-243.7732315,lat:-8.9015792},{lng:-243.7673950,lat:-8.9036143},{lng:-243.7646484,lat:-8.9171815},{lng:-243.7560654,lat:-8.9127722},{lng:-243.7540054,lat:-8.9053102},{lng:-243.7474823,lat:-8.9059886},{lng:-243.7320328,lat:-8.9093804},{lng:-243.7231064,lat:-8.9103979},{lng:-243.7248230,lat:-8.9012400},{lng:-243.7231064,lat:-8.8937778},{lng:-243.7114334,lat:-8.8961521},{lng:-243.7025070,lat:-8.9032751},{lng:-243.6959839,lat:-8.9110763},{lng:-243.6812210,lat:-8.9110763},{lng:-243.6692047,lat:-8.9120938},{lng:-243.6626816,lat:-8.9168423},{lng:-243.6679459,lat:-8.9098326},{lng:-243.6603928,lat:-8.9213646},{lng:-243.6576462,lat:-8.9281479},{lng:-243.6500931,lat:-8.9298437},{lng:-243.6511230,lat:-8.9210254},{lng:-243.6535263,lat:-8.9122069},{lng:-243.6579895,lat:-8.9047449},{lng:-243.6607361,lat:-8.9006747},{lng:-243.6538696,lat:-8.8989787},{lng:-243.6452866,lat:-8.9013530},{lng:-243.6394501,lat:-8.9064408},{lng:-243.6349869,lat:-8.9101718},{lng:-243.6298370,lat:-8.9057625},{lng:-243.6236572,lat:-8.9047449},{lng:-243.6191940,lat:-8.9074584},{lng:-243.6198807,lat:-8.9122069},{lng:-243.6253738,lat:-8.9183120},{lng:-243.6325836,lat:-8.9250954},{lng:-243.6301804,lat:-8.9342528},{lng:-243.6291504,lat:-8.9427316},{lng:-243.6274338,lat:-8.9488363},{lng:-243.6243439,lat:-8.9542625},{lng:-243.6215973,lat:-8.9549408},{lng:-243.6147308,lat:-8.9488363},{lng:-243.6082077,lat:-8.9488363},{lng:-243.6037445,lat:-8.9349311},{lng:-243.6068344,lat:-8.9237388},{lng:-243.6006546,lat:-8.9061016},{lng:-243.5944748,lat:-8.8986395},{lng:-243.5982513,lat:-8.8911773},{lng:-243.6006546,lat:-8.8823580},{lng:-243.6088943,lat:-8.8755739},{lng:-243.6143875,lat:-8.8660758},{lng:-243.6064911,lat:-8.8558991},{lng:-243.5955048,lat:-8.8562383},{lng:-243.5927582,lat:-8.8572560},{lng:-243.5872650,lat:-8.8396157},{lng:-243.5852051,lat:-8.8339615},{lng:-243.5783386,lat:-8.8271765},{lng:-243.5721588,lat:-8.8278550},{lng:-243.5618591,lat:-8.8407465},{lng:-243.5580826,lat:-8.8383718},{lng:-243.5623169,lat:-8.8302298},{lng:-243.5551071,lat:-8.8292120},{lng:-243.5437775,lat:-8.8319260},{lng:-243.5389709,lat:-8.8264980},{lng:-243.5338211,lat:-8.8210698},{lng:-243.5248947,lat:-8.8268372},{lng:-243.5331345,lat:-8.8312475},{lng:-243.5293579,lat:-8.8366755},{lng:-243.5207748,lat:-8.8373540},{lng:-243.5252380,lat:-8.8431212},{lng:-243.5362244,lat:-8.8529591},{lng:-243.5403442,lat:-8.8590652},{lng:-243.5396576,lat:-8.8685634},{lng:-243.5434341,lat:-8.8726340},{lng:-243.5499573,lat:-8.8780614},{lng:-243.5492706,lat:-8.8916295},{lng:-243.5527039,lat:-8.9011269},{lng:-243.5595703,lat:-8.9055363},{lng:-243.5657501,lat:-8.9140158},{lng:-243.5619736,lat:-8.9204601},{lng:-243.5417175,lat:-8.9218168},{lng:-243.5197449,lat:-8.9187643},{lng:-243.5005188,lat:-8.9167292},{lng:-243.4823227,lat:-8.9140158},{lng:-243.4754562,lat:-8.9065539},{lng:-243.4613800,lat:-8.9031620},{lng:-243.4424972,lat:-8.8970566},{lng:-243.4280777,lat:-8.8912903},{lng:-243.4291077,lat:-8.8777222},{lng:-243.4194946,lat:-8.8709379},{lng:-243.4091949,lat:-8.8634751},{lng:-243.4057617,lat:-8.8594044},{lng:-243.4102249,lat:-8.8577083},{lng:-243.4167480,lat:-8.8600829},{lng:-243.4304810,lat:-8.8597436},{lng:-243.4346008,lat:-8.8553337},{lng:-243.4452438,lat:-8.8529591},{lng:-243.4517670,lat:-8.8512629},{lng:-243.4558868,lat:-8.8427819},{lng:-243.4600067,lat:-8.8359970},{lng:-243.4644699,lat:-8.8298905},{lng:-243.4723663,lat:-8.8292120},{lng:-243.4703064,lat:-8.8210698},{lng:-243.4637833,lat:-8.8176772},{lng:-243.4703064,lat:-8.8095347},{lng:-243.4703064,lat:-8.8000350},{lng:-243.4785461,lat:-8.7952850},{lng:-243.4905624,lat:-8.7946064},{lng:-243.4946823,lat:-8.7878206},{lng:-243.4857559,lat:-8.7779810},{lng:-243.4819794,lat:-8.7776417},{lng:-243.4747696,lat:-8.7739094},{lng:-243.4692764,lat:-8.7654267},{lng:-243.4600067,lat:-8.7586403},{lng:-243.4515381,lat:-8.7473295},{lng:-243.4474182,lat:-8.7385069},{lng:-243.4470749,lat:-8.7249331},{lng:-243.4223557,lat:-8.6937116},{lng:-243.4202957,lat:-8.6825120},{lng:-243.4137726,lat:-8.6706332},{lng:-243.4099960,lat:-8.6645240},{lng:-243.3924866,lat:-8.6492505},{lng:-243.3815003,lat:-8.6302426},{lng:-243.3753204,lat:-8.6163254},{lng:-243.3749771,lat:-8.6047840},{lng:-243.3583832,lat:-8.5888292},{lng:-243.3484268,lat:-8.5762685},{lng:-243.3333206,lat:-8.5633679},{lng:-243.3312607,lat:-8.5552199},{lng:-243.3398438,lat:-8.5463927},{lng:-243.3419037,lat:-8.5343965},{lng:-243.3374405,lat:-8.5201364},{lng:-243.3302307,lat:-8.5089316},{lng:-243.3206177,lat:-8.5024802},{lng:-243.3223343,lat:-8.4919540},{lng:-243.3230210,lat:-8.4834649},{lng:-243.3322907,lat:-8.4773527},{lng:-243.3219910,lat:-8.4702216},{lng:-243.3124352,lat:-8.4628074},{lng:-243.3060837,lat:-8.4563553},{lng:-243.3007622,lat:-8.4488842},{lng:-243.2976723,lat:-8.4482050},{lng:-243.2911491,lat:-8.4448090},{lng:-243.2880592,lat:-8.4424318},{lng:-243.2884026,lat:-8.4353001},{lng:-243.2894325,lat:-8.4295267},{lng:-243.2904625,lat:-8.4278286},{lng:-243.2868576,lat:-8.4247721},{lng:-243.2868576,lat:-8.4210363},{lng:-243.2890892,lat:-8.4156023},{lng:-243.2894325,lat:-8.4137344},{lng:-243.2821656,lat:-8.3999226},{lng:-243.2759858,lat:-8.3822609},{lng:-243.2766725,lat:-8.3652778},{lng:-243.2849122,lat:-8.3557669},{lng:-243.2986451,lat:-8.3387826},{lng:-243.3185578,lat:-8.3170416},{lng:-243.3494569,lat:-8.2885048},{lng:-243.3824159,lat:-8.2796715},{lng:-243.3947755,lat:-8.2817100},{lng:-243.4215547,lat:-8.2721971},{lng:-243.4538270,lat:-8.2599659},{lng:-243.4778596,lat:-8.2518115},{lng:-243.4970857,lat:-8.2552092},{lng:-243.5266114,lat:-8.2341432},{lng:-243.5472108,lat:-8.2266679},{lng:-243.5787965,lat:-8.2198720},{lng:-243.6186219,lat:-8.2178332},{lng:-243.6309815,lat:-8.2110372},{lng:-243.6481477,lat:-8.2123964},{lng:-243.6904908,lat:-8.2291597},{lng:-243.7097169,lat:-8.2413918},{lng:-243.7207032,lat:-8.2413918},{lng:-243.7536622,lat:-8.2604189},{lng:-243.7790681,lat:-8.2882783},{lng:-243.8044740,lat:-8.3134180},{lng:-243.8140870,lat:-8.3290446},{lng:-243.8374330,lat:-8.3439912},{lng:-243.8594056,lat:-8.3473881},{lng:-243.8717652,lat:-8.3636926},{lng:-243.8827516,lat:-8.3677687},{lng:-243.8923646,lat:-8.3596166},{lng:-243.9019776,lat:-8.3623339},{lng:-243.8944245,lat:-8.3813551},{lng:-243.9006044,lat:-8.3942619},{lng:-243.9376832,lat:-8.4078474},{lng:-243.9507295,lat:-8.4193948},{lng:-243.9630891,lat:-8.4411300},{lng:-243.9660646,lat:-8.4676182},{lng:-243.9578248,lat:-8.4954627},{lng:-243.9379121,lat:-8.5144774},{lng:-243.9276124,lat:-8.5626889},{lng:-243.9276124,lat:-8.6013894},{lng:-243.9308168,lat:-8.6733484},{lng:-243.9383699,lat:-8.6957479},{lng:-243.9440919,lat:-8.7319463},{lng:-243.9537050,lat:-8.7489131},{lng:-243.9557649,lat:-8.7244806},{lng:-243.9688112,lat:-8.7231232},{lng:-243.9749910,lat:-8.7326250},{lng:-243.9804841,lat:-8.7489131},{lng:-243.9921571,lat:-8.7516277},{lng:-244.0148164,lat:-8.7339823},{lng:-244.0264894,lat:-8.7326250},{lng:-244.0457155,lat:-8.7434838},{lng:-244.0567018,lat:-8.7556995},{lng:-244.0718080,lat:-8.7665577},{lng:-244.0958406,lat:-8.7692722},{lng:-244.1061403,lat:-8.7658791},{lng:-244.1130067,lat:-8.7631646}', '2020-03-29 23:32:24', '2020-03-29 23:32:42', NULL),
(14, 10, '#149cb4', 'NTT1', '{lng:-241.0734559,lat:-9.5623828},{lng:-241.0322572,lat:-9.5935282},{lng:-241.0130311,lat:-9.6192549},{lng:-240.9910584,lat:-9.6490412},{lng:-240.9622193,lat:-9.6883009},{lng:-240.9182740,lat:-9.7072522},{lng:-240.8674622,lat:-9.7316166},{lng:-240.8290101,lat:-9.7397377},{lng:-240.8139039,lat:-9.7559793},{lng:-240.7878114,lat:-9.7451517},{lng:-240.7575990,lat:-9.7478586},{lng:-240.7246400,lat:-9.7478586},{lng:-240.6953430,lat:-9.7408657},{lng:-240.6877899,lat:-9.7625208},{lng:-240.6719971,lat:-9.7686111},{lng:-240.6644440,lat:-9.7604907},{lng:-240.6479645,lat:-9.7611674},{lng:-240.6301117,lat:-9.7740246},{lng:-240.6204987,lat:-9.7868812},{lng:-240.6095123,lat:-9.7990607},{lng:-240.5957794,lat:-9.7963542},{lng:-240.5875397,lat:-9.7855279},{lng:-240.5875397,lat:-9.7679344},{lng:-240.5776978,lat:-9.7609418},{lng:-240.5557251,lat:-9.7555282},{lng:-240.5481720,lat:-9.7433470},{lng:-240.5296326,lat:-9.7406401},{lng:-240.5104065,lat:-9.7501144},{lng:-240.4918671,lat:-9.7582350},{lng:-240.4733277,lat:-9.7670321},{lng:-240.4602814,lat:-9.7650021},{lng:-240.4575348,lat:-9.7541747},{lng:-240.4499817,lat:-9.7562049},{lng:-240.4417420,lat:-9.7670321},{lng:-240.4286957,lat:-9.7677088},{lng:-240.4163361,lat:-9.7622953},{lng:-240.4046631,lat:-9.7717690},{lng:-240.3909302,lat:-9.7708667},{lng:-240.3806305,lat:-9.7640998},{lng:-240.3723908,lat:-9.7681600},{lng:-240.3744507,lat:-9.7830468},{lng:-240.3813172,lat:-9.7952265},{lng:-240.3668976,lat:-9.7979330},{lng:-240.3511048,lat:-9.7891367},{lng:-240.3490448,lat:-9.7769568},{lng:-240.3298187,lat:-9.7816935},{lng:-240.3195191,lat:-9.7898134},{lng:-240.3256989,lat:-9.7965798},{lng:-240.3215790,lat:-9.8006395},{lng:-240.3147125,lat:-9.8033460},{lng:-240.3112793,lat:-9.8141717},{lng:-240.3133392,lat:-9.8270268},{lng:-240.3188324,lat:-9.8358221},{lng:-240.2815247,lat:-9.8651381},{lng:-240.2320862,lat:-9.8949024},{lng:-240.2165222,lat:-9.9183512},{lng:-240.2007294,lat:-9.9156457},{lng:-240.1787567,lat:-9.9237623},{lng:-240.1636505,lat:-9.9298495},{lng:-240.1478577,lat:-9.9203804},{lng:-240.1334381,lat:-9.9284968},{lng:-240.1251984,lat:-9.9420238},{lng:-240.1286316,lat:-9.9514923},{lng:-240.1190186,lat:-9.9596080},{lng:-240.1011658,lat:-9.9514923},{lng:-240.0942993,lat:-9.9596080},{lng:-240.0963593,lat:-9.9738099},{lng:-240.0798798,lat:-9.9805726},{lng:-240.0620270,lat:-9.9812488},{lng:-240.0524140,lat:-9.9717811},{lng:-240.0434876,lat:-9.9866588},{lng:-240.0531006,lat:-10.0022120},{lng:-240.0189972,lat:-10.0263292},{lng:-239.9922180,lat:-10.0635158},{lng:-239.9764252,lat:-10.0932620},{lng:-239.9874115,lat:-10.1108380},{lng:-239.9887848,lat:-10.1243574},{lng:-239.9613190,lat:-10.1230055},{lng:-239.9379730,lat:-10.1432835},{lng:-239.9146271,lat:-10.1696430},{lng:-239.9050140,lat:-10.1777532},{lng:-239.8837280,lat:-10.1824841},{lng:-239.8697662,lat:-10.1991542},{lng:-239.8512268,lat:-10.2248333},{lng:-239.8340606,lat:-10.2356450},{lng:-239.8203277,lat:-10.2261848},{lng:-239.8052215,lat:-10.2369964},{lng:-239.7832489,lat:-10.2559159},{lng:-239.7585296,lat:-10.2424021},{lng:-239.7173309,lat:-10.2498348},{lng:-239.7015381,lat:-10.2579429},{lng:-239.6685790,lat:-10.2541141},{lng:-239.6356200,lat:-10.2595194},{lng:-239.5889282,lat:-10.2892474},{lng:-239.5504760,lat:-10.3149193},{lng:-239.5271301,lat:-10.2973545},{lng:-239.5133971,lat:-10.2595194},{lng:-239.4776916,lat:-10.2473572},{lng:-239.4296264,lat:-10.2378974},{lng:-239.3801879,lat:-10.2568168},{lng:-239.3664550,lat:-10.2406002},{lng:-239.3128967,lat:-10.2216798},{lng:-239.2909240,lat:-10.2068131},{lng:-239.2593383,lat:-10.1784291},{lng:-239.2327880,lat:-10.1459871},{lng:-239.1696167,lat:-10.1230054},{lng:-239.1503906,lat:-10.0621636},{lng:-239.1682434,lat:-10.0040152},{lng:-239.2025756,lat:-9.9607351},{lng:-239.2547607,lat:-9.9242132},{lng:-239.3037414,lat:-9.9115873},{lng:-239.3490600,lat:-9.8601771},{lng:-239.3737793,lat:-9.7911666},{lng:-239.3875122,lat:-9.7749268},{lng:-239.4012451,lat:-9.7437982},{lng:-239.4039917,lat:-9.7329702},{lng:-239.4218445,lat:-9.7275560},{lng:-239.4396973,lat:-9.7031913},{lng:-239.4589233,lat:-9.6828860},{lng:-239.4822693,lat:-9.6964230},{lng:-239.4987488,lat:-9.6761173},{lng:-239.5188904,lat:-9.6314405},{lng:-239.5353699,lat:-9.6165469},{lng:-239.6218872,lat:-9.6463334},{lng:-239.6534729,lat:-9.6598719},{lng:-239.6850586,lat:-9.6666409},{lng:-239.6974182,lat:-9.6449795},{lng:-239.7221375,lat:-9.6355022},{lng:-239.7509766,lat:-9.6314405},{lng:-239.7743225,lat:-9.6030067},{lng:-239.7702027,lat:-9.5366518},{lng:-239.7967530,lat:-9.4878931},{lng:-239.8159791,lat:-9.4675750},{lng:-239.8393250,lat:-9.4729933},{lng:-239.8777772,lat:-9.4865386},{lng:-239.9148560,lat:-9.4675750},{lng:-239.9697877,lat:-9.3944196},{lng:-239.9862672,lat:-9.3822255},{lng:-240.0384522,lat:-9.3348001},{lng:-240.0453187,lat:-9.3104073},{lng:-240.0521851,lat:-9.2819470},{lng:-240.0700379,lat:-9.2778810},{lng:-240.0823975,lat:-9.2964033},{lng:-240.0961304,lat:-9.3140212},{lng:-240.1208497,lat:-9.3384137},{lng:-240.1496888,lat:-9.3519643},{lng:-240.1702882,lat:-9.3790640},{lng:-240.1991273,lat:-9.4020971},{lng:-240.2265931,lat:-9.3993874},{lng:-240.2471925,lat:-9.3953228},{lng:-240.2966309,lat:-9.3871935},{lng:-240.3543092,lat:-9.3546744},{lng:-240.3735352,lat:-9.3465441},{lng:-240.4174805,lat:-9.3573844},{lng:-240.4463196,lat:-9.3790640},{lng:-240.4866029,lat:-9.3727409},{lng:-240.5319215,lat:-9.3659661},{lng:-240.5580140,lat:-9.3686761},{lng:-240.5964661,lat:-9.3781607},{lng:-240.6307984,lat:-9.3781607},{lng:-240.6802369,lat:-9.3727409},{lng:-240.7035828,lat:-9.3578361},{lng:-240.7351685,lat:-9.3754509},{lng:-240.7763673,lat:-9.3808706},{lng:-240.7901002,lat:-9.3849353},{lng:-240.8079530,lat:-9.3754509},{lng:-240.8395387,lat:-9.3862903},{lng:-240.8738709,lat:-9.4011939},{lng:-240.9054566,lat:-9.4242255},{lng:-240.9342957,lat:-9.4296445},{lng:-240.9535218,lat:-9.4296445},{lng:-240.9878541,lat:-9.4486102},{lng:-241.0263062,lat:-9.4743478},{lng:-241.0510255,lat:-9.5136278},{lng:-241.0702515,lat:-9.5461319},{lng:-241.0757447,lat:-9.5569659}', '2020-03-29 23:36:33', '2020-03-29 23:37:54', NULL),
(15, 10, '#149cb4', 'NTT2', '{lng:-240.5937196,lat:-8.5592938},{lng:-240.6143189,lat:-8.5810212},{lng:-240.6060792,lat:-8.6394071},{lng:-240.5882264,lat:-8.6787786},{lng:-240.6005860,lat:-8.6923541},{lng:-240.6239320,lat:-8.7195034},{lng:-240.6088258,lat:-8.7466508},{lng:-240.5868531,lat:-8.7290052},{lng:-240.5621339,lat:-8.7439362},{lng:-240.5319215,lat:-8.7466508},{lng:-240.5552674,lat:-8.7222182},{lng:-240.5429078,lat:-8.6923541},{lng:-240.5690003,lat:-8.6733483},{lng:-240.5456544,lat:-8.6421225},{lng:-240.5209351,lat:-8.6461956},{lng:-240.4989625,lat:-8.6122520},{lng:-240.5319215,lat:-8.6217565},{lng:-240.5291749,lat:-8.6108942},{lng:-240.5161286,lat:-8.5973159},{lng:-240.5003357,lat:-8.5823791},{lng:-240.4969025,lat:-8.5721946},{lng:-240.4797364,lat:-8.5789843},{lng:-240.4790497,lat:-8.5912054},{lng:-240.4804230,lat:-8.6013894},{lng:-240.4749299,lat:-8.6197199},{lng:-240.4687500,lat:-8.6115731},{lng:-240.4557038,lat:-8.6020683},{lng:-240.4316712,lat:-8.5986737},{lng:-240.4048920,lat:-8.5674418},{lng:-240.4028321,lat:-8.5538619},{lng:-240.3911591,lat:-8.5429976},{lng:-240.3760529,lat:-8.5558989},{lng:-240.3657532,lat:-8.5613309},{lng:-240.3410340,lat:-8.5701577},{lng:-240.3156281,lat:-8.5762684},{lng:-240.3039551,lat:-8.5959580},{lng:-240.2902222,lat:-8.6054629},{lng:-240.2984620,lat:-8.6258298},{lng:-240.3211213,lat:-8.6353340},{lng:-240.3018952,lat:-8.6523052},{lng:-240.2970887,lat:-8.6611299},{lng:-240.3080750,lat:-8.6699544},{lng:-240.3279877,lat:-8.6753847},{lng:-240.3410340,lat:-8.6556993},{lng:-240.3369141,lat:-8.6326186},{lng:-240.3318787,lat:-8.6160991},{lng:-240.3593445,lat:-8.6079523},{lng:-240.3806305,lat:-8.6099890},{lng:-240.3950501,lat:-8.6262824},{lng:-240.4087830,lat:-8.6317134},{lng:-240.4266358,lat:-8.6459694},{lng:-240.4534150,lat:-8.6629400},{lng:-240.4609681,lat:-8.6724433},{lng:-240.4534150,lat:-8.6765160},{lng:-240.4389954,lat:-8.6860189},{lng:-240.4451752,lat:-8.6738009},{lng:-240.4389954,lat:-8.6663341},{lng:-240.4280091,lat:-8.6602248},{lng:-240.4149628,lat:-8.6609036},{lng:-240.4026032,lat:-8.6649765},{lng:-240.3964234,lat:-8.6547942},{lng:-240.3964234,lat:-8.6439328},{lng:-240.3909302,lat:-8.6357866},{lng:-240.3826905,lat:-8.6317134},{lng:-240.3689576,lat:-8.6425751},{lng:-240.3586579,lat:-8.6595460},{lng:-240.3565980,lat:-8.6744797},{lng:-240.3765107,lat:-8.6887340},{lng:-240.3565980,lat:-8.6928066},{lng:-240.3513336,lat:-8.6957479},{lng:-240.3456116,lat:-8.6982366},{lng:-240.3607178,lat:-8.7050240},{lng:-240.3785706,lat:-8.7057028},{lng:-240.3813172,lat:-8.7185985},{lng:-240.3829193,lat:-8.7452935},{lng:-240.3911591,lat:-8.7588666},{lng:-240.3863525,lat:-8.7724391},{lng:-240.3806305,lat:-8.7982255},{lng:-240.3600311,lat:-8.8036539},{lng:-240.3243256,lat:-8.8090824},{lng:-240.3030396,lat:-8.8090824},{lng:-240.2851868,lat:-8.7894040},{lng:-240.2721405,lat:-8.7737963},{lng:-240.2687073,lat:-8.7615811},{lng:-240.2748871,lat:-8.7452935},{lng:-240.2845001,lat:-8.7371495},{lng:-240.3067017,lat:-8.7296840},{lng:-240.2998352,lat:-8.7120376},{lng:-240.2915955,lat:-8.7032141},{lng:-240.2861023,lat:-8.6923541},{lng:-240.2840424,lat:-8.6814938},{lng:-240.2751160,lat:-8.6930329},{lng:-240.2634430,lat:-8.6950691},{lng:-240.2490234,lat:-8.6848877},{lng:-240.2462769,lat:-8.6713120},{lng:-240.2284241,lat:-8.6652028},{lng:-240.2091980,lat:-8.6556994},{lng:-240.1940918,lat:-8.6611299},{lng:-240.2037048,lat:-8.6828514},{lng:-240.2064514,lat:-8.7127163},{lng:-240.1968384,lat:-8.7235757},{lng:-240.1934052,lat:-8.7432576},{lng:-240.1975250,lat:-8.7615811},{lng:-240.1831055,lat:-8.7855587},{lng:-240.1528930,lat:-8.8054634},{lng:-240.1171875,lat:-8.8108918},{lng:-240.1116943,lat:-8.8407464},{lng:-240.0897216,lat:-8.8611005},{lng:-240.0787353,lat:-8.8516021},{lng:-240.0677490,lat:-8.8326045},{lng:-240.0292968,lat:-8.8298905},{lng:-239.9798584,lat:-8.8176771},{lng:-239.9125671,lat:-8.8041063},{lng:-239.8741149,lat:-8.7891778},{lng:-239.8452759,lat:-8.7889516},{lng:-239.8226166,lat:-8.7964159},{lng:-239.8068237,lat:-8.8147368},{lng:-239.7802734,lat:-8.8371278},{lng:-239.7507476,lat:-8.8459482},{lng:-239.7219085,lat:-8.8479836},{lng:-239.7068023,lat:-8.8486621},{lng:-239.6910095,lat:-8.8520544},{lng:-239.6772766,lat:-8.8520544},{lng:-239.6649170,lat:-8.8405203},{lng:-239.6470642,lat:-8.8276288},{lng:-239.6319580,lat:-8.8228792},{lng:-239.6044922,lat:-8.8253670},{lng:-239.5619202,lat:-8.8145106},{lng:-239.5220947,lat:-8.8212959},{lng:-239.4822693,lat:-8.8145106},{lng:-239.4451904,lat:-8.8199388},{lng:-239.3930054,lat:-8.8158677},{lng:-239.3820190,lat:-8.8375801},{lng:-239.3572998,lat:-8.8606482},{lng:-239.3380737,lat:-8.8660757},{lng:-239.3037414,lat:-8.8742169},{lng:-239.2721557,lat:-8.8877852},{lng:-239.2378235,lat:-8.8904988},{lng:-239.2185974,lat:-8.8715032},{lng:-239.2117309,lat:-8.8457219},{lng:-239.1911316,lat:-8.8475313},{lng:-239.1650390,lat:-8.8312475},{lng:-239.1485596,lat:-8.8488882},{lng:-239.1073608,lat:-8.9004485},{lng:-239.0744018,lat:-8.9370791},{lng:-239.0222168,lat:-8.9425055},{lng:-238.9453125,lat:-8.9506450},{lng:-238.8958740,lat:-8.9221559},{lng:-238.8436890,lat:-8.8990918},{lng:-238.8171386,lat:-8.8864284},{lng:-238.7649535,lat:-8.8959260},{lng:-238.7210082,lat:-8.8918556},{lng:-238.6907958,lat:-8.9149203},{lng:-238.6413574,lat:-8.8986395},{lng:-238.6262512,lat:-8.8660758},{lng:-238.6317443,lat:-8.8335092},{lng:-238.6212157,lat:-8.7973206},{lng:-238.6006164,lat:-8.7851062},{lng:-238.5282897,lat:-8.8054634},{lng:-238.4774779,lat:-8.8095346},{lng:-238.4417724,lat:-8.8027491},{lng:-238.3923339,lat:-8.8081776},{lng:-238.3744811,lat:-8.8326045},{lng:-238.3580016,lat:-8.8461743},{lng:-238.3607482,lat:-8.8719555},{lng:-238.3607482,lat:-8.9018052},{lng:-238.3428954,lat:-8.8990917},{lng:-238.3305358,lat:-8.8855239},{lng:-238.3346557,lat:-8.8611005},{lng:-238.3195495,lat:-8.8475312},{lng:-238.2701110,lat:-8.8719555},{lng:-238.1918334,lat:-8.8651711},{lng:-238.1272887,lat:-8.8380324},{lng:-238.0805968,lat:-8.8353185},{lng:-238.0435180,lat:-8.8163200},{lng:-237.9748534,lat:-8.7918921},{lng:-237.9377746,lat:-8.7728914},{lng:-237.9103088,lat:-8.7430313},{lng:-237.8814696,lat:-8.7321724},{lng:-237.8494262,lat:-8.7294577},{lng:-237.8150939,lat:-8.7403166},{lng:-237.7876281,lat:-8.7579616},{lng:-237.7532958,lat:-8.7484606},{lng:-237.7134704,lat:-8.7552471},{lng:-237.6791381,lat:-8.7376019},{lng:-237.6283263,lat:-8.7484606},{lng:-237.5802611,lat:-8.7389592},{lng:-237.4937438,lat:-8.7145262},{lng:-237.4552917,lat:-8.6860189},{lng:-237.4415587,lat:-8.6697281},{lng:-237.3948668,lat:-8.6543417},{lng:-237.3564147,lat:-8.6407649},{lng:-237.3165893,lat:-8.6244721},{lng:-237.2740172,lat:-8.6285453},{lng:-237.2547912,lat:-8.6108942},{lng:-237.2177123,lat:-8.6054629},{lng:-237.1888732,lat:-8.5959580},{lng:-237.1641540,lat:-8.5837370},{lng:-237.1563720,lat:-8.5701577},{lng:-237.1673584,lat:-8.5212681},{lng:-237.2016906,lat:-8.4941045},{lng:-237.2181701,lat:-8.4682973},{lng:-237.2195434,lat:-8.4343378},{lng:-237.1948242,lat:-8.4275456},{lng:-237.1618652,lat:-8.4424884},{lng:-237.1275329,lat:-8.4574306},{lng:-237.1151733,lat:-8.4289041},{lng:-237.1174621,lat:-8.3944883},{lng:-237.1151733,lat:-8.3691274},{lng:-237.0822144,lat:-8.3392355},{lng:-237.0382690,lat:-8.3433118},{lng:-237.0190430,lat:-8.3528230},{lng:-236.9956970,lat:-8.3433118},{lng:-236.9984436,lat:-8.3908654},{lng:-236.9956970,lat:-8.4153193},{lng:-236.9943237,lat:-8.4424884},{lng:-237.0300293,lat:-8.4465636},{lng:-237.0533752,lat:-8.4764472},{lng:-237.0561218,lat:-8.4995374},{lng:-237.0959473,lat:-8.5158356},{lng:-237.1110535,lat:-8.5375654},{lng:-237.1275330,lat:-8.5783054},{lng:-237.1179199,lat:-8.6054630},{lng:-237.0932007,lat:-8.6122520},{lng:-237.0657349,lat:-8.5864528},{lng:-237.0410156,lat:-8.5592939},{lng:-237.0259094,lat:-8.5076866},{lng:-236.9696045,lat:-8.4818803},{lng:-236.9311523,lat:-8.4968210},{lng:-236.9023132,lat:-8.4791637},{lng:-236.8707275,lat:-8.4696557},{lng:-236.8432617,lat:-8.4533556},{lng:-236.8405151,lat:-8.4289041},{lng:-236.8515015,lat:-8.3962997},{lng:-236.8093872,lat:-8.3958469},{lng:-236.7636108,lat:-8.3976583},{lng:-236.7169189,lat:-8.3990169},{lng:-236.6935730,lat:-8.3691274},{lng:-236.6921997,lat:-8.3460293},{lng:-236.6880798,lat:-8.3174946},{lng:-236.6427612,lat:-8.3120592},{lng:-236.5988159,lat:-8.3011881},{lng:-236.5589905,lat:-8.3161358},{lng:-236.5342712,lat:-8.3392355},{lng:-236.5480042,lat:-8.3636927},{lng:-236.5768433,lat:-8.3664100},{lng:-236.6098022,lat:-8.3799965},{lng:-236.6510010,lat:-8.3990169},{lng:-236.6743469,lat:-8.4098852},{lng:-236.6880798,lat:-8.4424884},{lng:-236.7292786,lat:-8.4764472},{lng:-236.7485046,lat:-8.5022538},{lng:-236.7897034,lat:-8.5185519},{lng:-236.7773438,lat:-8.5402815},{lng:-236.7553711,lat:-8.5429976},{lng:-236.7320251,lat:-8.5525039},{lng:-236.7059326,lat:-8.5511458},{lng:-236.6825867,lat:-8.5294168},{lng:-236.6551208,lat:-8.5484298},{lng:-236.6207886,lat:-8.5796633},{lng:-236.5946960,lat:-8.5837370},{lng:-236.5672302,lat:-8.5511458},{lng:-236.5246582,lat:-8.5280587},{lng:-236.5026855,lat:-8.5253425},{lng:-236.4912415,lat:-8.5574832},{lng:-236.4555359,lat:-8.5764948},{lng:-236.4280701,lat:-8.5629152},{lng:-236.4143372,lat:-8.5248898},{lng:-236.4253235,lat:-8.4950100},{lng:-236.4514160,lat:-8.4719195},{lng:-236.4294434,lat:-8.4569778},{lng:-236.3923645,lat:-8.4270928},{lng:-236.3786316,lat:-8.4080738},{lng:-236.3484192,lat:-8.4039982},{lng:-236.3346863,lat:-8.4162249},{lng:-236.3168335,lat:-8.4257343},{lng:-236.2907410,lat:-8.3863367},{lng:-236.2197878,lat:-8.3908654},{lng:-236.1813356,lat:-8.4261872},{lng:-236.1346437,lat:-8.4234702},{lng:-236.0742189,lat:-8.4778055},{lng:-236.0330202,lat:-8.4452052},{lng:-236.0028078,lat:-8.4153193},{lng:-235.9588625,lat:-8.4343379},{lng:-235.9368898,lat:-8.4886716},{lng:-235.9423830,lat:-8.5375654},{lng:-235.8956911,lat:-8.5511458},{lng:-235.8380129,lat:-8.5212681},{lng:-235.8105470,lat:-8.4941045},{lng:-235.7885744,lat:-8.4587890},{lng:-235.7830812,lat:-8.4126023},{lng:-235.7556154,lat:-8.3691274},{lng:-235.7171633,lat:-8.3338004},{lng:-235.6787111,lat:-8.3202123},{lng:-235.6127931,lat:-8.3365180},{lng:-235.6402590,lat:-8.3962997},{lng:-235.6484987,lat:-8.4343379},{lng:-235.6018068,lat:-8.4452052},{lng:-235.5688478,lat:-8.4669390},{lng:-235.5084230,lat:-8.4180363},{lng:-235.4644777,lat:-8.4289041},{lng:-235.4425051,lat:-8.4452052},{lng:-235.3326418,lat:-8.3881482},{lng:-235.2282717,lat:-8.3962997},{lng:-235.1239015,lat:-8.3745620},{lng:-235.0469972,lat:-8.3636927},{lng:-234.9041750,lat:-8.3365180},{lng:-234.8657228,lat:-8.3310828},{lng:-234.8657228,lat:-8.2821630},{lng:-234.8602297,lat:-8.2223639},{lng:-234.8959352,lat:-8.1815865},{lng:-234.8931886,lat:-8.1462428},{lng:-234.9838259,lat:-8.1652744},{lng:-235.0305177,lat:-8.1543993},{lng:-235.0689699,lat:-8.1571181},{lng:-235.1486208,lat:-8.1734306},{lng:-235.2090456,lat:-8.1571181},{lng:-235.2777101,lat:-8.1571181},{lng:-235.3601076,lat:-8.1788679},{lng:-235.3930666,lat:-8.1843052},{lng:-235.3875734,lat:-8.1353672},{lng:-235.3839112,lat:-8.1140683},{lng:-235.4278565,lat:-8.1222255},{lng:-235.4937745,lat:-8.1290230},{lng:-235.5226136,lat:-8.1385393},{lng:-235.5541993,lat:-8.1602901},{lng:-235.5720521,lat:-8.1956326},{lng:-235.5940247,lat:-8.2282536},{lng:-235.5899048,lat:-8.2812570},{lng:-235.6036378,lat:-8.3111533},{lng:-235.6228638,lat:-8.2962055},{lng:-235.6434632,lat:-8.2771801},{lng:-235.6613160,lat:-8.2771801},{lng:-235.6860352,lat:-8.2934876},{lng:-235.6970215,lat:-8.2758211},{lng:-235.6832886,lat:-8.2513585},{lng:-235.6681824,lat:-8.2255353},{lng:-235.6695557,lat:-8.1983511},{lng:-235.6915284,lat:-8.1738837},{lng:-235.7464600,lat:-8.1820397},{lng:-235.7725525,lat:-8.2296127},{lng:-235.8178711,lat:-8.2894108},{lng:-235.8480836,lat:-8.3233829},{lng:-235.8700562,lat:-8.3451235},{lng:-235.9043885,lat:-8.3614282},{lng:-235.9140015,lat:-8.3451235},{lng:-235.9140015,lat:-8.3206652},{lng:-235.9222413,lat:-8.3002822},{lng:-235.9469605,lat:-8.3016411},{lng:-235.9812928,lat:-8.3247417},{lng:-236.0266114,lat:-8.3424060},{lng:-236.0760499,lat:-8.3559934},{lng:-236.0980225,lat:-8.3668629},{lng:-236.0705567,lat:-8.3858839},{lng:-236.0540772,lat:-8.3858839},{lng:-236.0581971,lat:-8.4198476},{lng:-236.0815430,lat:-8.4375076},{lng:-236.0993958,lat:-8.4266400},{lng:-236.1145020,lat:-8.4212061},{lng:-236.1584473,lat:-8.4049039},{lng:-236.1598206,lat:-8.3750149},{lng:-236.1845399,lat:-8.3546347},{lng:-236.1982728,lat:-8.3722976},{lng:-236.2216187,lat:-8.3790908},{lng:-236.2641907,lat:-8.3655042},{lng:-236.2559510,lat:-8.3315358},{lng:-236.2133790,lat:-8.2921287},{lng:-236.1804200,lat:-8.2826160},{lng:-236.1282349,lat:-8.2853339},{lng:-236.0870362,lat:-8.2690261},{lng:-236.0733033,lat:-8.2527176},{lng:-236.0870362,lat:-8.2268944},{lng:-236.1048890,lat:-8.2119434},{lng:-236.1433411,lat:-8.2101311},{lng:-236.1728669,lat:-8.1951795},{lng:-236.1879731,lat:-8.1843052},{lng:-236.2085724,lat:-8.1754696},{lng:-236.2326050,lat:-8.1734306},{lng:-236.2538910,lat:-8.1972183},{lng:-236.2806702,lat:-8.2148883},{lng:-236.2992096,lat:-8.2182863},{lng:-236.3012696,lat:-8.2379941},{lng:-236.2998963,lat:-8.2509055},{lng:-236.3218689,lat:-8.2543032},{lng:-236.3417817,lat:-8.2515850},{lng:-236.3452149,lat:-8.2407123},{lng:-236.3362885,lat:-8.2189659},{lng:-236.3706208,lat:-8.2135291},{lng:-236.3898468,lat:-8.2244026},{lng:-236.3953400,lat:-8.2461487},{lng:-236.3809204,lat:-8.2434305},{lng:-236.3685608,lat:-8.2644960},{lng:-236.3603211,lat:-8.2808040},{lng:-236.3719941,lat:-8.2998292},{lng:-236.3980866,lat:-8.3174946},{lng:-236.3930512,lat:-8.2996027},{lng:-236.3996887,lat:-8.2903167},{lng:-236.4216614,lat:-8.2875988},{lng:-236.4299011,lat:-8.3018676},{lng:-236.4168549,lat:-8.3195329},{lng:-236.4038086,lat:-8.3256476},{lng:-236.4093018,lat:-8.3541817},{lng:-236.4310455,lat:-8.3682216},{lng:-236.4516449,lat:-8.3709389},{lng:-236.4797974,lat:-8.3627869},{lng:-236.4921570,lat:-8.3478410},{lng:-236.4921570,lat:-8.3288182},{lng:-236.4763641,lat:-8.3125121},{lng:-236.4591980,lat:-8.2880518},{lng:-236.4502716,lat:-8.2635900},{lng:-236.4358520,lat:-8.2466017},{lng:-236.4605713,lat:-8.2364084},{lng:-236.4859772,lat:-8.2377675},{lng:-236.5175629,lat:-8.2506790},{lng:-236.5361023,lat:-8.2683466},{lng:-236.5560150,lat:-8.2724236},{lng:-236.5663147,lat:-8.2608719},{lng:-236.5924072,lat:-8.2486404},{lng:-236.5999603,lat:-8.2554357},{lng:-236.6164398,lat:-8.2649490},{lng:-236.6336060,lat:-8.2758211},{lng:-236.6432190,lat:-8.2860134},{lng:-236.6596985,lat:-8.3002822},{lng:-236.6716004,lat:-8.3070766},{lng:-236.6880799,lat:-8.3016411},{lng:-236.6839600,lat:-8.2934876},{lng:-236.6667938,lat:-8.2798981},{lng:-236.6585541,lat:-8.2622310},{lng:-236.6516876,lat:-8.2499994},{lng:-236.6654206,lat:-8.2432040},{lng:-236.6716004,lat:-8.2418449},{lng:-236.6867066,lat:-8.2411653},{lng:-236.7066193,lat:-8.2472813},{lng:-236.7375183,lat:-8.2389001},{lng:-236.7519379,lat:-8.2273475},{lng:-236.7691040,lat:-8.2300658},{lng:-236.7739105,lat:-8.2436570},{lng:-236.7828369,lat:-8.2395797},{lng:-236.7855835,lat:-8.2300658},{lng:-236.7910767,lat:-8.2273475},{lng:-236.8061829,lat:-8.2273475},{lng:-236.8199158,lat:-8.2395797},{lng:-236.8384552,lat:-8.2334636},{lng:-236.8528748,lat:-8.2334636},{lng:-236.8652344,lat:-8.2429775},{lng:-236.8817139,lat:-8.2545297},{lng:-236.9194794,lat:-8.2783126},{lng:-236.9496918,lat:-8.2952995},{lng:-236.9675446,lat:-8.3075296},{lng:-236.9723511,lat:-8.3156828},{lng:-236.9833374,lat:-8.2986968},{lng:-236.9750977,lat:-8.2817100},{lng:-236.9867707,lat:-8.2769536},{lng:-237.0046234,lat:-8.2613249},{lng:-237.0197296,lat:-8.2436570},{lng:-237.0183563,lat:-8.2259883},{lng:-237.0309449,lat:-8.1634619},{lng:-237.0336915,lat:-8.1281166},{lng:-237.0858766,lat:-8.1118023},{lng:-237.1156312,lat:-8.0773589},{lng:-237.1403504,lat:-8.0664814},{lng:-237.1774293,lat:-8.0991130},{lng:-237.2200013,lat:-8.1072705},{lng:-237.2227479,lat:-8.1507742},{lng:-237.2433472,lat:-8.1711650},{lng:-237.2570801,lat:-8.2024288},{lng:-237.2721863,lat:-8.2228169},{lng:-237.2337342,lat:-8.2336901},{lng:-237.1980286,lat:-8.2296127},{lng:-237.1952820,lat:-8.2037880},{lng:-237.1568299,lat:-8.1861176},{lng:-237.1211243,lat:-8.1833990},{lng:-237.1046448,lat:-8.1752430},{lng:-237.0799256,lat:-8.1915547},{lng:-237.0867920,lat:-8.2173802},{lng:-237.0991517,lat:-8.2540767},{lng:-237.1046448,lat:-8.2866929},{lng:-237.1362305,lat:-8.2962054},{lng:-237.1733094,lat:-8.2989233},{lng:-237.2076417,lat:-8.3220241},{lng:-237.2227479,lat:-8.3464822},{lng:-237.2254944,lat:-8.3682216},{lng:-237.2625733,lat:-8.3519172},{lng:-237.2969056,lat:-8.3722976},{lng:-237.3298646,lat:-8.3926769},{lng:-237.3573304,lat:-8.3899597},{lng:-237.3820496,lat:-8.3858839},{lng:-237.4067689,lat:-8.4062625},{lng:-237.4342347,lat:-8.4334323},{lng:-237.4479676,lat:-8.4619585},{lng:-237.4699402,lat:-8.4646751},{lng:-237.5138856,lat:-8.4755416},{lng:-237.5331116,lat:-8.4687501},{lng:-237.5578309,lat:-8.4334323},{lng:-237.5921631,lat:-8.4293569},{lng:-237.6058961,lat:-8.4347907},{lng:-237.6319886,lat:-8.4293569},{lng:-237.6539612,lat:-8.4334323},{lng:-237.6704407,lat:-8.4442996},{lng:-237.6594544,lat:-8.4823330},{lng:-237.6429749,lat:-8.4999901},{lng:-237.6113892,lat:-8.4972737},{lng:-237.5839234,lat:-8.4877661},{lng:-237.5619507,lat:-8.4823330},{lng:-237.5193787,lat:-8.4931990},{lng:-237.4960328,lat:-8.5230790},{lng:-237.4809266,lat:-8.5353019},{lng:-237.4836732,lat:-8.5611046},{lng:-237.5111390,lat:-8.5882634},{lng:-237.5248719,lat:-8.6154202},{lng:-237.5514222,lat:-8.6131572},{lng:-237.6448060,lat:-8.6158728},{lng:-237.6928712,lat:-8.6335237},{lng:-237.6997376,lat:-8.6389546},{lng:-237.7931214,lat:-8.6145150},{lng:-237.8137208,lat:-8.5955054},{lng:-237.8837586,lat:-8.5493351},{lng:-237.9277039,lat:-8.5330384},{lng:-237.9675294,lat:-8.5303222},{lng:-237.9867554,lat:-8.5004428},{lng:-237.9785157,lat:-8.4827858},{lng:-237.9771424,lat:-8.4447524},{lng:-238.0320740,lat:-8.4651279},{lng:-238.0860902,lat:-8.4823330},{lng:-238.1419373,lat:-8.5013483},{lng:-238.1611634,lat:-8.4850496},{lng:-238.1973269,lat:-8.5040648},{lng:-238.2467653,lat:-8.4931991},{lng:-238.2989504,lat:-8.4931991},{lng:-238.3456423,lat:-8.5257952},{lng:-238.3731081,lat:-8.4741834},{lng:-238.3978274,lat:-8.4959155},{lng:-238.4115603,lat:-8.5502405},{lng:-238.4390261,lat:-8.5801159},{lng:-238.4857180,lat:-8.6099890},{lng:-238.5214235,lat:-8.5909792},{lng:-238.5653689,lat:-8.5801159},{lng:-238.6312868,lat:-8.5746842},{lng:-238.6614992,lat:-8.5393761},{lng:-238.6972048,lat:-8.4769000},{lng:-238.7493896,lat:-8.4750889},{lng:-238.7796023,lat:-8.4660335},{lng:-238.8345339,lat:-8.4279985},{lng:-238.9059450,lat:-8.4144136},{lng:-238.9801027,lat:-8.3899597},{lng:-239.0158083,lat:-8.3600695},{lng:-239.0515139,lat:-8.3519172},{lng:-239.1119387,lat:-8.3546347},{lng:-239.2025759,lat:-8.3546347},{lng:-239.3179323,lat:-8.3410472},{lng:-239.3618777,lat:-8.2894108},{lng:-239.3838503,lat:-8.2595129},{lng:-239.4332888,lat:-8.2975644},{lng:-239.4882204,lat:-8.2921287},{lng:-239.5651247,lat:-8.2921287},{lng:-239.6566775,lat:-8.2731031},{lng:-239.7637942,lat:-8.3002822},{lng:-239.8489382,lat:-8.3301770},{lng:-239.9038699,lat:-8.3818081},{lng:-239.9752810,lat:-8.3872425},{lng:-239.9945071,lat:-8.4225646},{lng:-239.9917605,lat:-8.4497332},{lng:-240.0686648,lat:-8.4578834},{lng:-240.1153567,lat:-8.4660335},{lng:-240.1318362,lat:-8.5176464},{lng:-240.1565554,lat:-8.5529566},{lng:-240.1785281,lat:-8.5638205},{lng:-240.2059939,lat:-8.5746842},{lng:-240.2609256,lat:-8.5420922},{lng:-240.3543093,lat:-8.5203627},{lng:-240.4092410,lat:-8.5176464},{lng:-240.4312136,lat:-8.5040648},{lng:-240.4833987,lat:-8.4823331},{lng:-240.5081179,lat:-8.4877661},{lng:-240.5300906,lat:-8.4931991},{lng:-240.5328372,lat:-8.4497332},{lng:-240.5575564,lat:-8.4497332},{lng:-240.5740359,lat:-8.4606001},{lng:-240.5575564,lat:-8.5176464},{lng:-240.5740359,lat:-8.5312276},{lng:-240.5771256,lat:-8.5510893},{lng:-240.5884552,lat:-8.5549936},{lng:-240.5932617,lat:-8.5583886}', '2020-03-29 23:36:36', '2020-03-29 23:38:29', NULL),
(16, 10, '#149cb4', 'NTT3', '{lng:-237.1996566,lat:-10.7687529},{lng:-237.1948550,lat:-10.8092006},{lng:-237.1777063,lat:-10.8341407},{lng:-237.1660452,lat:-10.8611005},{lng:-237.1742766,lat:-10.8792971},{lng:-237.1804501,lat:-10.9042313},{lng:-237.1702209,lat:-10.9275097},{lng:-237.1523863,lat:-10.9423333},{lng:-237.1434690,lat:-10.9302050},{lng:-237.1331798,lat:-10.9180761},{lng:-237.1105435,lat:-10.9120115},{lng:-237.0933949,lat:-10.9147069},{lng:-237.0741884,lat:-10.9254883},{lng:-237.0625273,lat:-10.9416595},{lng:-237.0460645,lat:-10.9382906},{lng:-237.0344034,lat:-10.9221191},{lng:-237.0206845,lat:-10.9221191},{lng:-237.0076515,lat:-10.9281835},{lng:-236.9959904,lat:-10.9126854},{lng:-237.0124531,lat:-10.9120115},{lng:-237.0302877,lat:-10.9079684},{lng:-237.0446926,lat:-10.8992081},{lng:-237.0481224,lat:-10.8890997},{lng:-237.0330315,lat:-10.8722516},{lng:-237.0151969,lat:-10.8641642},{lng:-236.9898169,lat:-10.8601204},{lng:-236.9815855,lat:-10.8628163},{lng:-236.9562055,lat:-10.8574246},{lng:-236.9315114,lat:-10.8560766},{lng:-236.9171065,lat:-10.8614684},{lng:-236.9081892,lat:-10.8520327},{lng:-236.8930983,lat:-10.8291163},{lng:-236.8711480,lat:-10.8190055},{lng:-236.8505696,lat:-10.8136130},{lng:-236.8256469,lat:-10.8223758},{lng:-236.8112420,lat:-10.8331605},{lng:-236.7961512,lat:-10.8243980},{lng:-236.7776306,lat:-10.8257461},{lng:-236.7755728,lat:-10.8115908},{lng:-236.7618538,lat:-10.7866488},{lng:-236.7584241,lat:-10.7657499},{lng:-236.7659695,lat:-10.7475465},{lng:-236.7577381,lat:-10.7435012},{lng:-236.7405895,lat:-10.7333875},{lng:-236.7124321,lat:-10.7288762},{lng:-236.6973413,lat:-10.7147163},{lng:-236.6863661,lat:-10.7012301},{lng:-236.6726472,lat:-10.6863946},{lng:-236.6548126,lat:-10.6836972},{lng:-236.6253168,lat:-10.6884177},{lng:-236.5971930,lat:-10.6850459},{lng:-236.5903335,lat:-10.6675120},{lng:-236.5786724,lat:-10.6567214},{lng:-236.5738708,lat:-10.6364880},{lng:-236.5738708,lat:-10.6169278},{lng:-236.5848460,lat:-10.6068100},{lng:-236.6040525,lat:-10.6088336},{lng:-236.6115979,lat:-10.5960173},{lng:-236.6232590,lat:-10.6034373},{lng:-236.6465812,lat:-10.5980409},{lng:-236.6561844,lat:-10.5879225},{lng:-236.6349201,lat:-10.5825258},{lng:-236.6246309,lat:-10.5724068},{lng:-236.6067963,lat:-10.5541918},{lng:-236.5969643,lat:-10.5379998},{lng:-236.5818735,lat:-10.5258552},{lng:-236.5654108,lat:-10.5164091},{lng:-236.5560362,lat:-10.4972911},{lng:-236.5628956,lat:-10.4871693},{lng:-236.5724989,lat:-10.4905433},{lng:-236.5827881,lat:-10.4912181},{lng:-236.5903335,lat:-10.4898685},{lng:-236.5999368,lat:-10.4790717},{lng:-236.5869038,lat:-10.4682745},{lng:-236.5951351,lat:-10.4507282},{lng:-236.6157136,lat:-10.4345308},{lng:-236.5090931,lat:-10.3493977},{lng:-236.4240357,lat:-10.3439969},{lng:-236.3225155,lat:-10.3520981},{lng:-236.2017889,lat:-10.3574987},{lng:-236.0920374,lat:-10.3304945},{lng:-236.0097237,lat:-10.2602726},{lng:-235.9301539,lat:-10.2413640},{lng:-235.8889970,lat:-10.1846316},{lng:-235.8176586,lat:-10.1576126},{lng:-235.6786400,lat:-10.1612152},{lng:-235.5798636,lat:-10.1774267},{lng:-235.5085251,lat:-10.1260875},{lng:-235.4591370,lat:-10.0531176},{lng:-235.4536494,lat:-10.0098685},{lng:-235.3877985,lat:-9.9801313},{lng:-235.2560967,lat:-9.8746778},{lng:-235.1847582,lat:-9.7881265},{lng:-235.1481743,lat:-9.7403334},{lng:-235.0713482,lat:-9.6808078},{lng:-235.0082411,lat:-9.6564534},{lng:-235.0082411,lat:-9.5779661},{lng:-234.9808032,lat:-9.5265335},{lng:-234.9176961,lat:-9.4669703},{lng:-234.8319828,lat:-9.4088064},{lng:-234.8319828,lat:-9.3004651},{lng:-234.9166923,lat:-9.2639325},{lng:-234.9605929,lat:-9.1989048},{lng:-234.9770556,lat:-9.1447060},{lng:-234.8782793,lat:-9.1121827},{lng:-234.8014532,lat:-9.0796565},{lng:-234.7959656,lat:-8.9929054},{lng:-234.8618165,lat:-8.9278285},{lng:-234.9496177,lat:-8.9495221},{lng:-235.0538817,lat:-9.0308616},{lng:-235.1142450,lat:-9.0254395},{lng:-235.1581456,lat:-8.9712144},{lng:-235.2843599,lat:-9.0471273},{lng:-235.3337481,lat:-9.1555464},{lng:-235.5148381,lat:-9.1880657},{lng:-235.5971517,lat:-9.1934853},{lng:-235.6520275,lat:-9.1934853},{lng:-235.6794653,lat:-9.2368391},{lng:-235.7014156,lat:-9.3668683},{lng:-235.7343411,lat:-9.4210328},{lng:-235.7672666,lat:-9.5239220},{lng:-235.8276299,lat:-9.5347506},{lng:-235.8495802,lat:-9.4860191},{lng:-235.8770181,lat:-9.4210328},{lng:-235.9373814,lat:-9.4697737},{lng:-236.0526205,lat:-9.4318647},{lng:-236.1459093,lat:-9.4806040},{lng:-236.2574901,lat:-9.5509930},{lng:-236.3398037,lat:-9.6321929},{lng:-236.3178534,lat:-9.7296070},{lng:-236.3398037,lat:-9.8702661},{lng:-236.4166298,lat:-9.9297577},{lng:-236.4111422,lat:-10.0162716},{lng:-236.3343161,lat:-10.0108652},{lng:-236.2190770,lat:-10.0216780},{lng:-236.2245646,lat:-10.0433025},{lng:-236.3398037,lat:-10.1405949},{lng:-236.4385801,lat:-10.1568074},{lng:-236.5428440,lat:-10.1514033},{lng:-236.5958906,lat:-10.1189769},{lng:-236.6397912,lat:-10.2054401},{lng:-236.6828805,lat:-10.2484868},{lng:-236.6993433,lat:-10.3052078},{lng:-236.6883681,lat:-10.3430162},{lng:-236.6526989,lat:-10.3187113},{lng:-236.6115420,lat:-10.3268131},{lng:-236.5731290,lat:-10.3511174},{lng:-236.6280048,lat:-10.4051200},{lng:-236.6444675,lat:-10.4537143},{lng:-236.6444675,lat:-10.4726101},{lng:-236.7067346,lat:-10.5113351},{lng:-236.7403740,lat:-10.5212418},{lng:-236.7624504,lat:-10.5589760},{lng:-236.8036072,lat:-10.5994517},{lng:-236.8272437,lat:-10.6446422},{lng:-236.8776895,lat:-10.6480154},{lng:-236.9082679,lat:-10.6797222},{lng:-236.9393991,lat:-10.7017646},{lng:-236.9654907,lat:-10.7343319},{lng:-237.0231102,lat:-10.7505135},{lng:-237.0752422,lat:-10.7451197},{lng:-237.1191428,lat:-10.7613007},{lng:-237.1493245,lat:-10.7774809},{lng:-237.2014565,lat:-10.7613007}', '2020-03-29 23:36:51', '2020-03-29 23:38:58', NULL);

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
(68, 10, 21, '2020-01-20 09:49:44', '2020-01-20 09:49:47', NULL),
(69, 32, 12, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL),
(70, 32, 16, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL),
(71, 32, 10, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL),
(72, 32, 21, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL),
(73, 32, 15, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL),
(74, 33, 11, '2020-03-03 22:32:36', '2020-03-06 13:42:25', NULL),
(75, 34, 3, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL),
(76, 34, 11, '2020-03-03 22:32:36', '2020-03-03 22:32:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_record`
--

CREATE TABLE `service_record` (
  `coverage_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `service_record`
--

INSERT INTO `service_record` (`coverage_id`, `service_id`, `city_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(99, 1, '3671', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(100, 1, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(101, 1, '3271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(102, 1, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(103, 1, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(104, 1, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(105, 1, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(106, 1, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(107, 2, '3671', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(108, 2, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(109, 2, '3271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(110, 2, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(111, 2, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(112, 2, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(113, 2, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(114, 2, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(115, 3, '3671', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(116, 3, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(117, 3, '3271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(118, 3, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(119, 3, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(120, 3, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(121, 3, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(122, 3, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(123, 4, '3671', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(124, 4, '3273', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(125, 4, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(126, 4, '3271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(127, 4, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(128, 4, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(129, 4, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(130, 4, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(131, 4, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(132, 4, '3374', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(133, 4, '3515', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(134, 4, '3578', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(135, 4, '5103', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(136, 4, '5106', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(137, 4, '5108', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(138, 4, '5104', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(139, 4, '5101', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(140, 4, '5107', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(141, 4, '5105', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(142, 4, '5102', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(143, 4, '5171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(144, 4, '6471', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(145, 4, '7371', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(146, 4, '7171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(147, 5, '3671', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(148, 5, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(149, 5, '3271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(150, 5, '3276', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(151, 5, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(152, 5, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(153, 5, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(154, 5, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(155, 5, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(156, 5, '3515', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(157, 6, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(158, 7, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(159, 8, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(160, 9, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(161, 10, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(162, 11, '3515', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(163, 12, '0', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(164, 13, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(165, 13, '3374', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(166, 14, '3275', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(167, 14, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(168, 14, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(169, 14, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(170, 14, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(171, 14, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(172, 15, '1271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(173, 15, '3273', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(174, 15, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(175, 15, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(176, 15, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(177, 15, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(178, 15, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(179, 15, '3374', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(180, 15, '3578', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(181, 15, '7371', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(182, 16, '1271', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(183, 16, '3273', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(184, 16, '3173', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(185, 16, '3171', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(186, 16, '3174', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(187, 16, '3175', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(188, 16, '3172', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(189, 16, '3374', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(190, 16, '3578', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(191, 16, '7371', '2020-02-13 15:57:19', '2020-02-13 15:57:19', NULL),
(192, 17, '0', '2020-02-13 15:57:30', '2020-02-13 15:57:30', NULL),
(193, 4, '1871', '2020-02-16 23:35:12', '2020-02-16 23:35:44', NULL),
(194, 4, '1271', '2020-02-16 23:35:30', '2020-02-16 23:35:42', NULL),
(195, 30, '3671', '2020-02-17 13:59:29', '2020-02-17 14:00:10', NULL),
(196, 31, '3275', '2020-02-17 13:59:56', '2020-02-17 14:01:22', NULL),
(197, 33, '3174', '2020-03-06 13:55:54', '2020-03-06 13:57:04', NULL),
(198, 33, '3275', '2020-03-06 13:55:57', '2020-03-06 13:57:22', NULL),
(199, 33, '3674', '2020-03-06 13:55:58', '2020-03-06 13:57:01', NULL);

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
(184, 31, 21, '2019-12-08 16:54:13', '2019-12-08 16:54:13', NULL),
(231, 32, 1, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL),
(232, 32, 3, '2020-03-03 22:27:18', '2020-03-06 09:59:15', '2020-03-03 22:27:18'),
(233, 32, 4, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL),
(234, 32, 9, '2020-03-03 22:27:18', '2020-03-06 10:05:52', NULL),
(235, 32, 12, '2020-03-03 22:27:18', '2020-03-12 09:02:50', '2020-03-03 22:27:18'),
(236, 32, 13, '2020-03-03 22:27:18', '2020-03-06 09:55:04', '2020-03-03 22:27:18'),
(237, 32, 14, '2020-03-03 22:27:18', '2020-03-06 09:54:58', NULL),
(238, 32, 16, '2020-03-03 22:27:18', '2020-03-06 09:54:59', NULL),
(239, 32, 18, '2020-03-03 22:27:18', '2020-03-07 23:50:53', NULL),
(240, 32, 19, '2020-03-03 22:27:18', '2020-03-07 23:50:54', NULL),
(241, 32, 21, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL),
(242, 33, 1, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL),
(243, 33, 3, '2020-03-03 22:27:18', '2020-03-06 13:55:17', '2020-03-03 22:27:18'),
(244, 33, 4, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL),
(245, 33, 9, '2020-03-03 22:27:18', '2020-03-06 10:05:47', NULL),
(246, 33, 12, '2020-03-03 22:27:18', '2020-03-17 12:20:43', '2020-03-03 22:27:18'),
(247, 33, 23, '2020-03-03 22:27:18', '2020-03-17 12:20:11', NULL),
(248, 33, 14, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL),
(249, 33, 18, '2020-03-03 22:27:18', '2020-03-13 08:24:15', '2020-03-03 22:27:18'),
(250, 33, 19, '2020-03-03 22:27:18', '2020-03-13 08:24:12', NULL),
(251, 33, 20, '2020-03-03 22:27:18', '2020-03-12 08:37:50', NULL),
(252, 33, 21, '2020-03-03 22:27:18', '2020-03-12 08:37:17', NULL),
(253, 34, 1, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL),
(254, 34, 3, '2020-03-03 22:27:18', '2020-03-06 13:41:39', '2020-03-03 22:27:18'),
(255, 34, 4, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL),
(256, 34, 9, '2020-03-03 22:27:18', '2020-03-06 10:05:53', NULL),
(257, 34, 12, '2020-03-03 22:27:18', '2020-03-17 01:21:54', '2020-03-03 22:27:18'),
(258, 34, 13, '2020-03-03 22:27:18', '2020-03-10 07:56:26', '2020-03-03 22:27:18'),
(259, 34, 14, '2020-03-03 22:27:18', '2020-03-10 07:56:48', NULL),
(260, 34, 18, '2020-03-03 22:27:18', '2020-03-10 07:56:50', '0000-00-00 00:00:00'),
(261, 34, 19, '2020-03-03 22:27:18', '2020-03-10 07:56:20', NULL),
(262, 34, 20, '2020-03-03 22:27:18', '2020-03-10 07:56:14', '2020-03-03 22:27:18'),
(263, 34, 21, '2020-03-03 22:27:18', '2020-03-03 22:27:18', NULL),
(264, 32, 22, '2020-03-12 08:31:45', '2020-03-12 08:52:17', NULL),
(265, 34, 23, '2020-03-12 09:01:54', '2020-03-17 01:21:44', NULL);

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
(1, NULL, 'en', 'Carsten Schneider', 'Head of Business Development', 'Ramboll Danmark A/S', 'We are very content with the works performed by Waste4Change. They are very good at their job and have shown fantastic understanding of the project. They perform at international level!', '2-Carsten-Schneider.png', '2020-01-25 07:19:09', '2020-03-07 23:28:17', NULL),
(2, NULL, 'id', 'Carsten Schneider', 'Head of Business Development', 'Ramboll Danmark A/S', 'Kami sangat puas dengan apa yang dikerjakan oleh Waste4Change. Mereka sangat mahir dengan apa yang mereka kerjakan, dan mereka memperlihatkan pemahaman yang luar biasa terhadap proyek ini. Mereka bekerja dengan standar internasional!', '2-Carsten-Schneider.png', '2020-01-25 07:20:42', '2020-03-07 23:28:18', NULL),
(3, NULL, 'en', 'Yongmei Zhou ', 'Program Leader, Equitable Growth, Finance & Institutions ', 'World Bank', 'Thanks to Waste4Change, we spent a day smelling, seeing, sorting and talking about waste! I feel an overwhelming shame that this is the footprint we leave on earth.', '2-Yongmei-Zhou.png', '2020-01-25 07:20:54', '2020-03-07 23:28:21', NULL),
(4, NULL, 'id', 'Yongmei Zhou ', 'Program Leader, Equitable Growth, Finance & Institutions ', 'World Bank', 'Berkat Waste4Change, kami menghabiskan satu hari dengan mencium, melihat, memilah, dan berbicara tentang sampah! Saya merasakan perasaan malu yang teramat besar ketika tahu bahwa jejak seperti inilah yang kita tinggalkan di bumi.', '2-Yongmei-Zhou.png', '2020-01-25 07:20:57', '2020-03-07 23:28:22', NULL),
(5, NULL, 'en', 'Debora Tjandrakusuma', 'Corporate Affairs ', 'Nestl&eacute Indonesia', 'Waste4Change is an important partner for us to achieve the Zero Waste to Landfill commitment target in the office & brand event', '2-Debora-Tjandrakusuma.png', '2020-01-25 07:22:18', '2020-03-07 23:28:25', NULL),
(6, NULL, 'id', 'Debora Tjandrakusuma', 'Corporate Affairs ', 'Nestl&eacute Indonesia', 'Waste4Change merupakan partner penting bagi kami untuk mencapai target komitmen Zero Waste to Landfill di kantor & brand event', '2-Debora-Tjandrakusuma.png', '2020-01-25 07:22:21', '2020-03-07 23:28:26', NULL),
(7, NULL, 'en', 'Faiza Anindita', 'Creating Shared Value Manager ', 'Nestl&eacute Indonesia\r\n', 'Collaboration with Waste4Change makes me confident that the waste management system program in the community can be sustainable', '2-Faiza-Anindita.png', '2020-01-25 07:23:27', '2020-03-07 23:28:29', NULL),
(8, NULL, 'id', 'Faiza Anindita', 'Creating Shared Value Manager ', 'Nestl&eacute Indonesia', 'Kolaborasi dengan Waste4Change membuat saya yakin bahwa program sistem pengelolaan sampah di komunitas dapat sustain', '2-Faiza-Anindita.png', '2020-01-25 07:23:28', '2020-03-07 23:28:30', NULL);

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
  ADD PRIMARY KEY (`service_id`) USING BTREE;

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
  ADD PRIMARY KEY (`service_coverage_id`);

--
-- Indexes for table `service_recomendation`
--
ALTER TABLE `service_recomendation`
  ADD PRIMARY KEY (`service_recomendation_id`) USING BTREE,
  ADD KEY `fk_service_recomendation_service_1` (`service_id`) USING BTREE;

--
-- Indexes for table `service_record`
--
ALTER TABLE `service_record`
  ADD PRIMARY KEY (`coverage_id`) USING BTREE;

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
  MODIFY `achievement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `benefit`
--
ALTER TABLE `benefit`
  MODIFY `benefit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `dictionary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1578;

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
  MODIFY `facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `flow`
--
ALTER TABLE `flow`
  MODIFY `flow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `service_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_coverage`
--
ALTER TABLE `service_coverage`
  MODIFY `service_coverage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `service_recomendation`
--
ALTER TABLE `service_recomendation`
  MODIFY `service_recomendation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `service_record`
--
ALTER TABLE `service_record`
  MODIFY `coverage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `service_section`
--
ALTER TABLE `service_section`
  MODIFY `service_section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

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
-- Constraints for table `service_recomendation`
--
ALTER TABLE `service_recomendation`
  ADD CONSTRAINT `fk_service_recomendation_service_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
