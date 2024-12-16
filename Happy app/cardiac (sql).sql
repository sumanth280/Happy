-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 10:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cardiac`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpatient`
--

CREATE TABLE `addpatient` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone_number_1` varchar(10) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `bmi` varchar(10) DEFAULT NULL,
  `phone_number_2` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addpatient`
--

INSERT INTO `addpatient` (`s_no`, `patient_id`, `name`, `age`, `gender`, `phone_number_1`, `profession`, `weight`, `height`, `bmi`, `phone_number_2`, `address`, `password`, `confirm_password`, `profile_pic`, `time_stamp`) VALUES
(1, '2410231948', 'Sumanth Nerella', '2003-06-28', 'male', '9059248129', 'student', '61', '1.74', '20.15', '7799075975', 'ongole gandhi road', '123', '123', './uploads/2410231948.jpg', '2024-12-03 22:56:55'),
(10, '2147483647', 'roji', '2003-05-15', 'female', '9848054100', 'student', '55', '170', '85', '9059248129', 'chennai', '123', '123', '', '2024-11-14 10:43:35'),
(14, '2409041055', 'harshi', '2003-11-15', 'female', '9848054100', 'student', '55', '170', '85', '2147483647', 'chennai', NULL, NULL, '', '2024-11-14 10:43:40'),
(36, '2411091119', 'hari', '1985-06-14', 'Male', '1234567890', 'Engineer', '75', '180', NULL, '0987654321', '123 Main St City Country', 'password123', NULL, '', '2024-11-14 10:44:25'),
(37, '2411091134', 'lahari', '2005-07-01', 'female', '7898330660', 'student', '45', '1.70', NULL, '7898330660', 'kalahasti', '123', NULL, '', '2024-11-14 10:44:28'),
(52, '2411210822', 'Gowtami Puvvada', '2024-11-21', 'Female', '9398641077', 'student', '47', '500', NULL, '9398641077', 'Ong ', '@gowtami18', NULL, './uploads/2411210822.jpg', '2024-12-10 05:31:50'),
(53, '2411211323', 'snigdha dande', '2003-07-12', 'Female', '9652138977', 'student ', '54', '155', NULL, '8143519329', 'Ongole ', 'snigdha12', NULL, '0', '2024-11-21 06:53:08'),
(54, '2411211340', 'Thejasree Jaikumar', '2003-12-21', 'Female', '8712162009', 'student ', '52', '5.4', NULL, '8712162009', 'Chennai ', '1234', NULL, '0', '2024-11-21 07:10:44'),
(56, '2411211604', 'Teju G', '2003-10-27', 'Female', '9573995147', 'Student ', '40', '5.1', NULL, '9014028519', '3-336, thagguvaripalli, bangarupalyam ', 'chinni', NULL, '0', '2024-11-21 09:34:44'),
(59, '2411241735', 'K Ramya', '2003-06-11', 'Female', '7207384985', 'student', '55', '1.6', NULL, '987654321', 'chennai', '1106', NULL, '0', '2024-11-24 11:05:33'),
(60, '2411241740', 'S SIRISHA ', '2004-02-20', 'Female', '+919392851', 'student ', '49', '159', NULL, '9876543210', 'chittoor ', 'siri@188', NULL, '0', '2024-11-24 11:10:43'),
(61, '2412020742', 'Likhitha', '2024-12-02', 'Female', '8143815746', 'stident', '45', '120', NULL, '8143815746', 'chennai', 'likki', NULL, '0', '2024-12-02 01:12:05'),
(62, '2412081418', 'Sahith Panga', '2004-07-13', 'Male', '9533083083', 'Student', '80', '1.83', NULL, '0000000000', '#750, Phase 5, Yelahanka New Town, Bangalore', 'qwerty1234', NULL, '0', '2024-12-08 07:48:53'),
(63, '2412100756', 'Nikhil Nuthalapati', '2003-09-03', 'Male', '6304394813', 'student ', '68', '155', NULL, '6304394813', 'Chennai ', '6304394813', NULL, '0', '2024-12-10 01:26:18'),
(64, '2412100759', 'NUKALA BALA ADITHYA ', '2004-03-14', 'Male', '7396977589', 'student ', '72', '162', NULL, 'nill', 'vijayashanthi tower-1,2H', 'Adithya143', NULL, '0', '2024-12-10 01:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `notification_id` varchar(255) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `time_med` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`s_no`, `patient_id`, `notification_id`, `medicine_name`, `time_med`, `status`, `time_stamp`) VALUES
(3, '2410231948', 'U414255', 'Amebano', '07:00', '1', '2024-12-16 08:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`s_no`, `patient_id`, `date`, `time`, `comments`, `time_stamp`) VALUES
(4, '2410231948', '2024-09-14', '09:00:00', 'hello', '2024-11-09 17:26:19'),
(5, '2410231948', '2024-09-14', '10:00:00', 'hello', '2024-11-09 17:26:25'),
(6, '2147483647', '2024-09-24', '09:00:00', 'hello', '2024-09-24 10:56:11'),
(7, '2147483647', '2024-09-16', '09:00:00', 'hello', '2024-09-04 13:03:39'),
(8, '2147483647', '2024-08-16', '09:00:00', 'hello', '2024-09-04 13:03:47'),
(9, '2147483647', '2024-07-16', '09:00:00', 'hello', '2024-09-04 13:03:54'),
(10, '2442', '2024-09-12', '09:00:00', 'hello', '2024-09-05 07:40:24'),
(11, '2409041055', '2024-09-30', '14:30:00', ' Follow-up appointment', '2024-09-24 11:28:22'),
(12, '2409041055', '2024-10-23', '14:30:00', 'Follow-up appointment', '2024-10-23 09:44:03'),
(13, '2409041055', '2024-09-30', '14:30:00', 'Follow-up appointment', '2024-10-23 18:15:01'),
(14, '2410231948', '2024-10-30', '14:30:00', 'Follow-up appointment', '2024-11-09 08:20:36'),
(15, '2410231948', '2024-12-10', '14:30:00', 'Follow-up appointment', '2024-11-09 08:20:49'),
(16, '2410231948', '2024-11-12', '14:30:00', 'Follow-up appointment', '2024-11-12 16:27:58'),
(17, '2410231948', '2024-11-13', '14:30:00', 'Follow-up appointment', '2024-11-12 16:33:58'),
(18, '24102319567', '2024-11-13', '14:30:00', 'Follow-up appointment', '2024-12-04 16:34:04'),
(19, '2410231976', '2024-11-13', '14:30:00', 'Follow-up appointment', '2024-12-04 16:34:17'),
(20, '2410231948', '2024-11-16', '10:45:00', '', '2024-11-16 05:15:37'),
(23, '2410231948', '2024-12-13', '16:00:00', 'Follow-up appointment', '2024-12-04 05:33:53'),
(24, '2410231948', '2024-12-04', '12:10:00', '', '2024-12-04 05:50:43'),
(25, '2411210727', '2024-12-04', '17:30:00', '', '2024-12-04 05:51:05'),
(26, '2410231948', '2024-12-12', '14:31:00', '', '2024-12-12 09:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_profile`
--

CREATE TABLE `doctor_profile` (
  `doctor_id` varchar(255) NOT NULL,
  `doc_name` varchar(255) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profile_doc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_profile`
--

INSERT INTO `doctor_profile` (`doctor_id`, `doc_name`, `age`, `gender`, `phone_number`, `password`, `confirm_password`, `address`, `profile_doc`) VALUES
('112220003', 'vijay', '24', 'Male', '0123456789', '123', '123', '123 Elm Street, Springfield', ''),
('112220008', 'sindhuri', '24', 'Feale', '0123456789', '123', '123', '123 Elm Street, Springfield', ''),
('112220009', 'raghuram', '24', 'Male', '7382584445', '123', '123', '123 Elm Street, Springfield', './uploads/112220009.jpg'),
('112220014', 'sharath chandra', '24', 'Male', '0123456789', '123', '123', '123 Elm Street, Springfield', ''),
('112220017', 'pritham', '24', 'Male', '0123456789', '123', '123', '123 Elm Street, Springfield', '');

-- --------------------------------------------------------

--
-- Table structure for table `health_metrics`
--

CREATE TABLE `health_metrics` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `pulse_rate` varchar(255) DEFAULT NULL,
  `spo2` varchar(255) DEFAULT NULL,
  `bp` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `fluid_intake` varchar(255) DEFAULT NULL,
  `salt_intake` varchar(255) DEFAULT NULL,
  `urine_output` varchar(255) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_metrics`
--

INSERT INTO `health_metrics` (`s_no`, `patient_id`, `pulse_rate`, `spo2`, `bp`, `weight`, `activity`, `fluid_intake`, `salt_intake`, `urine_output`, `time_stamp`) VALUES
(1, '2409021611', '98', '96%', '120/80', '60', 'running', '300ml', '30mg', NULL, '2024-09-14 09:12:14'),
(2, '2409021611', '75', '98', '120/80', '70', 'moderate', '2000', 'low', NULL, '2024-11-04 14:13:29'),
(3, '2409021611', '75', '98', '120/80', '70', 'moderate', '2000', 'low', NULL, '2024-11-04 14:27:27'),
(4, '2409021611', '75', '98', '120/80', '70', 'moderate', '2000', 'low', NULL, '2024-11-09 12:59:32'),
(5, '2410231948', '90', '100', '87', '76', '98', '67', '90', NULL, '2024-11-10 05:50:12'),
(6, '2410231948', '90', '100', '87', '76', '98', '67', '90', NULL, '2024-11-10 05:55:21'),
(7, '2410231948', '75', '98', '120/80', '70', 'moderate', '2000', 'low', NULL, '2024-11-10 06:04:01'),
(8, '2410231948', '90', '87', '78', '90', '76', '67', '65', NULL, '2024-11-10 09:16:10'),
(9, '2410231948', '89', '76', '78', '90', '54', '67', '90', NULL, '2024-11-10 09:27:34'),
(10, '2410231948', '89', '90', '65', '67', '98', '56', '76', NULL, '2024-11-10 09:56:19'),
(12, '2410231948', '90', '87', '87', '65', '3hours', 'moderate', 'less', NULL, '2024-11-11 10:20:27'),
(13, '2410231948', '90', '65', '56', '87', '56', '98', '67', NULL, '2024-11-12 04:20:23'),
(15, '2410231948', '75', '98', '120/80', '70', 'moderate', '2000', 'low', NULL, '2024-11-14 17:06:07'),
(17, '2410231948', '90', '158', '987', '90', '56', '45', '23', NULL, '2024-12-01 06:08:37'),
(18, '2410231948', '56', '89', '89', '56', '45', '98', '34', '98', '2024-12-13 03:17:59'),
(19, '2410231948', '67', '78', '98', '56', '98', '45', '67', '90', '2024-12-13 03:43:57'),
(20, '2410231948', '56', '68', '58', '35', '98', '46', '98', '45', '2024-12-16 08:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `investigation_routines`
--

CREATE TABLE `investigation_routines` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `casesheet_id` varchar(255) NOT NULL,
  `cbc_hb` varchar(255) DEFAULT NULL,
  `cbc_tlc` varchar(255) DEFAULT NULL,
  `rft_creatinine` varchar(255) DEFAULT NULL,
  `sgot` varchar(255) DEFAULT NULL,
  `sgpt` varchar(255) DEFAULT NULL,
  `total_bilibubin` varchar(255) DEFAULT NULL,
  `sodium` varchar(255) DEFAULT NULL,
  `pottasium` varchar(255) DEFAULT NULL,
  `chloride` varchar(255) DEFAULT NULL,
  `sodium_bicarbonate` varchar(255) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investigation_routines`
--

INSERT INTO `investigation_routines` (`s_no`, `patient_id`, `casesheet_id`, `cbc_hb`, `cbc_tlc`, `rft_creatinine`, `sgot`, `sgpt`, `total_bilibubin`, `sodium`, `pottasium`, `chloride`, `sodium_bicarbonate`, `time_stamp`) VALUES
(1, '2409021610', '', ' 13.5,', ' 6000,', ' 1.2,', ' 40,', ' 45,', ' 0.8,', ' 140,', ' 4.2,', ' 100,', ' 24', '2024-09-14 12:55:43'),
(2, '2409021611', '', ' 14.0', ' 7000', ' 1.2', ' 22', ' 30', ' 1.0', ' 140', ' 4.0', ' 102', ' 24', '2024-09-14 12:50:26'),
(3, '2409021611', 'C276762', '14.0', '7000', '1.2', '22', '30', '1.0', '140', '4.0', '102', '24', '2024-09-24 06:40:27'),
(4, '2409021611', 'C263304', '14.0', '7000', '1.2', '22', '30', '1.0', '140', '4.0', '102', '24', '2024-10-23 18:58:29'),
(5, '2409021611', 'C156805', '14.0', '7000', '1.2', '22', '30', '1.0', '140', '4.0', '102', '24', '2024-10-23 19:02:11'),
(6, '2409021611', 'C942386', '14.0', '7000', '1.2', '22', '30', '1.0', '140', '4.0', '102', '24', '2024-11-17 10:55:05'),
(7, '2409021611', 'C941719', '14.0', '7000', '1.2', '22', '30', '1.0', '140', '4.0', '102', '24', '2024-11-17 10:55:27'),
(8, '2410231948', 'C742873', '14.0', '7000', '1.2', '22', '30', '1.0', '140', '4.0', '102', '24', '2024-11-17 12:44:15'),
(9, '2410231948', 'C171323', '14.0', '7000', '1.2', '22', '30', '1.0', '140', '4.0', '102', '24', '2024-11-17 10:58:18'),
(10, '2410231948', 'C554809', '35', '45', '67', '69', '25', '25', '36', '145', '253', '25', '2024-11-17 14:02:29'),
(11, '2410231948', 'C869793', '65', '56', '67', '87', '97', '87', '67', '56', '98', '09', '2024-11-17 14:10:54'),
(12, '2410231948', 'C986580', '65', '56', '67', '87', '97', '87', '67', '56', '98', '09', '2024-11-17 14:11:18'),
(13, '2410231948', 'C784433', '76', '67', '67', '90', '23', '54', '34', '23', '45', '54', '2024-11-17 14:15:46'),
(14, '2410231948', 'C266053', '14.0', '7000', '1.2', '22', '30', '1.0', '140', '4.0', '102', '24', '2024-11-17 14:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `investigation_special`
--

CREATE TABLE `investigation_special` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `special_casesheet_id` varchar(255) NOT NULL,
  `h1ba1c` varchar(255) DEFAULT NULL,
  `triglycerides` varchar(255) DEFAULT NULL,
  `ldl` varchar(255) DEFAULT NULL,
  `hdl` varchar(255) DEFAULT NULL,
  `bnp` varchar(255) DEFAULT NULL,
  `tsh` varchar(255) DEFAULT NULL,
  `ft3` varchar(255) DEFAULT NULL,
  `ft4` varchar(255) DEFAULT NULL,
  `ecg_findings` varchar(255) DEFAULT NULL,
  `echo_findings` varchar(255) DEFAULT NULL,
  `usg_abdomen_findings` varchar(255) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investigation_special`
--

INSERT INTO `investigation_special` (`s_no`, `patient_id`, `special_casesheet_id`, `h1ba1c`, `triglycerides`, `ldl`, `hdl`, `bnp`, `tsh`, `ft3`, `ft4`, `ecg_findings`, `echo_findings`, `usg_abdomen_findings`, `stage`, `time_stamp`) VALUES
(1, '2409041055', '', ' 6.1,', ' 150,', ' 100,', ' 50,', ' 25,', ' 1.5,', ' 3.0,', ' 1.2,', ' Normal,', ' No abnormalities,', ' Normal,', ' 1', '2024-09-14 09:47:42'),
(2, '2409041055', '', '6.1', '150', '100', '50', '25', '1.5', '3.0', '1.2', 'Normal', 'No abnormalities', 'Normal', '2', '2024-09-14 09:57:57'),
(3, '2409021611', '', '6.1', '150', '100', '50', '25', '1.5', '3.0', '1.2', 'Normal', 'No abnormalities', 'Normal', '2', '2024-09-14 12:56:15'),
(4, '2409021611', 'G919849', '6.1', '150', '100', '50', '25', '1.5', '3.0', '1.2', 'Normal', 'No abnormalities', 'Normal', '2', '2024-09-24 06:43:32'),
(5, '2409021611', 'P292735', '6.1', '150', '100', '50', '25', '1.5', '3.0', '1.2', 'Normal', 'No abnormalities', 'Normal', '2', '2024-10-23 19:03:30'),
(6, '2409021611', 'X851442', '6.1', '150', '100', '50', '25', '1.5', '3.0', '1.2', 'Normal', 'No abnormalities', 'Normal', '2', '2024-11-17 10:55:59'),
(7, '2409021611', 'M496686', '6.1', '150', '100', '50', '25', '1.5', '3.0', '1.2', 'Normal', 'No abnormalities', 'Normal', '2', '2024-11-17 11:01:30'),
(8, '2410231948', 'X546809', '6.1', '150', '100', '50', '25', '1.5', '3.0', '1.2', 'Normal', 'No abnormalities', 'Normal', '2', '2024-11-17 12:49:11'),
(9, '2410231948', 'R219970', '6.1', '150', '100', '50', '25', '1.5', '3.0', '1.2', 'Normal', 'No abnormalities', 'Normal', '2', '2024-11-17 12:49:12'),
(10, '2410231948', 'Q840108', '56', '45', '98', '34', '26', '55', '78', '45', '// Return the data in JSON format with the \'data\' field holding the database result', 'clear', 'good', 'Stage A - At risk for heart failure', '2024-11-18 16:33:34'),
(11, '2411210727', 'K830393', '', '', '', '', '', '', '', '', '', '', '', 'Stage B - Pre-heart failure', '2024-12-04 05:58:07'),
(12, '2147483647', 'Z419451', '', '', '', '', '', '', '', '', '', '', '', 'Stage C - Symptomatic heart failure', '2024-12-04 05:58:35'),
(13, '2409041055', 'E963177', '', '', '', '', '', '', '', '', '', '', '', 'Stage D - Advanced heart failure', '2024-12-04 05:59:10'),
(14, '2410231948', 'L841405', '', '', '', '', '', '', '', '', '', '', '', 'Stage D - Symptomatic heart failure', '2024-12-15 16:45:13'),
(15, '2410231948', 'H160523', '', '', '', '', '', '', '', '', '', '', '', 'Stage A - At risk for heart failure', '2024-12-15 16:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `medicine_id` varchar(255) NOT NULL,
  `dosage` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `morning` varchar(255) DEFAULT NULL,
  `afternoon` varchar(255) DEFAULT NULL,
  `night` varchar(255) DEFAULT NULL,
  `before_food` varchar(255) DEFAULT NULL,
  `after_food` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`s_no`, `patient_id`, `medicine_name`, `medicine_id`, `dosage`, `days`, `morning`, `afternoon`, `night`, `before_food`, `after_food`, `comments`, `time_stamp`) VALUES
(2, '2409041054', 'Aspirin', 'Z821253', '100 mg', '7', 'yes', 'no', 'no', 'no', 'yes', 'Take with water', '2024-09-14 11:25:47'),
(5, '2409041055', 'eno', 'C508861', '100 mg', '7', 'no', '', '', 'no', 'yes', 'Take with water', '2024-09-14 11:40:39'),
(6, '2409041055', 'eno', 'U209661', '100 mg', '7', 'no', '', '', 'no', 'yes', 'Take with water', '2024-09-24 11:00:56'),
(7, '2409041055', 'eno', 'U806481', '100 mg', '7', 'no', '', '', 'yes', 'no', 'Take with water', '2024-09-24 11:01:17'),
(8, '2409041055', 'eno', 'N591300', '100 mg', '7', 'no', '', '', 'yes', 'no', 'Take with water', '2024-10-23 18:03:39'),
(9, '2409041055', 'eno', 'A957027', '100 mg', '7', 'no', '', '', 'yes', 'no', 'Take with water', '2024-10-23 18:05:24'),
(11, '2410231948', 'Aspirin', 'F234405', '100 mg', '45', 'no', 'no', 'yes', 'no', 'yes', 'Take with water', '2024-12-04 05:37:04'),
(13, '2410231948', 'Amebano', 'Q347562', '100 mg', '7', 'no', '', 'yes', 'no', 'yes', 'Take with water', '2024-12-04 05:30:21'),
(17, '2410231948', 'Creatine', 'I361147', '10mg', '20', 'yes', 'yes', 'yes', 'yes', 'no', 'take with water', '2024-12-04 05:30:14'),
(20, '2410231948', 'Aldactone', 'R100282', '15', '15', 'yes', 'no', 'no', 'yes', 'no', 'high level', '2024-12-04 05:30:04'),
(21, '2410231948', 'Cidmus', 'Y856421', '50', '14', 'yes', 'no', 'yes', 'no', 'yes', 'Take regularly', '2024-12-12 14:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `notification_id` varchar(255) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `time_med` varchar(255) NOT NULL,
  `monday` varchar(255) DEFAULT NULL,
  `tuesday` varchar(255) DEFAULT NULL,
  `wednesday` varchar(255) DEFAULT NULL,
  `thursday` varchar(255) DEFAULT NULL,
  `friday` varchar(255) DEFAULT NULL,
  `saturday` varchar(255) DEFAULT NULL,
  `sunday` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`s_no`, `patient_id`, `notification_id`, `medicine_name`, `time_med`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `status`, `time_stamp`) VALUES
(1, '2410231948', 'F279778', ' Aspirin', ' 08:00:00', ' yes', ' no', ' yes', ' no', ' yes', ' no', ' yes', '', '2024-11-09 15:03:26'),
(4, '2410231948', 'H744784', 'dolo', '12:00:00', ' yes', ' no', ' yes', ' no', ' yes', ' no', ' yes', '', '2024-11-09 16:49:09'),
(7, '2410231948', 'U920664', 'citerzen', '04:00:00', ' yes', ' no', ' yes', ' no', ' yes', ' no', ' yes', '', '2024-11-09 17:01:23'),
(30, '2410231948', 'E640267', 'paracetomol', '03:29', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', '', '2024-11-12 04:21:04'),
(33, '2410231948', 'C542010', 'Aspirin', '20:00', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', '', '2024-12-13 06:34:32'),
(34, '2410231948', 'W165403', 'Creatine', '12:25', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '2024-12-13 06:56:04'),
(35, '2410231948', 'B982629', 'Aldactone', '12:27', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '2024-12-13 06:56:25'),
(36, '2410231948', 'U414255', 'Amebano', '07:00', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', '', '2024-12-16 06:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `risk_major`
--

CREATE TABLE `risk_major` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `acute_pulmonary_edema` varchar(255) DEFAULT NULL,
  `cardiomegaly` varchar(255) DEFAULT NULL,
  `hepatojugular_reflex` varchar(255) DEFAULT NULL,
  `neck_vein_distension` varchar(255) DEFAULT NULL,
  `pnd_orthopnea` varchar(255) DEFAULT NULL,
  `pulmonary_rales` varchar(255) DEFAULT NULL,
  `third_heartsound_s3` varchar(255) DEFAULT NULL,
  `weight_loss` varchar(255) DEFAULT NULL,
  `response_to_treatment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `risk_major`
--

INSERT INTO `risk_major` (`s_no`, `patient_id`, `acute_pulmonary_edema`, `cardiomegaly`, `hepatojugular_reflex`, `neck_vein_distension`, `pnd_orthopnea`, `pulmonary_rales`, `third_heartsound_s3`, `weight_loss`, `response_to_treatment`) VALUES
(2, '2410231948', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `risk_minor`
--

CREATE TABLE `risk_minor` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `ankle_edema` varchar(255) DEFAULT NULL,
  `dyspnea_on_exertion` varchar(255) DEFAULT NULL,
  `hapatomegaly` varchar(255) DEFAULT NULL,
  `nocturnal_cough` varchar(255) DEFAULT NULL,
  `pleural_effusion` varchar(255) DEFAULT NULL,
  `tachycardia_hr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `risk_minor`
--

INSERT INTO `risk_minor` (`s_no`, `patient_id`, `ankle_edema`, `dyspnea_on_exertion`, `hapatomegaly`, `nocturnal_cough`, `pleural_effusion`, `tachycardia_hr`) VALUES
(4, '2410231948', 'no', 'no', 'no', 'no', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `risk_primary`
--

CREATE TABLE `risk_primary` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `bmi` varchar(255) DEFAULT NULL,
  `sbp` varchar(255) DEFAULT NULL,
  `creatinine` varchar(255) DEFAULT NULL,
  `current_smoker` varchar(255) DEFAULT NULL,
  `diabetes` varchar(255) DEFAULT NULL,
  `heart_failure` varchar(255) DEFAULT NULL,
  `beta_blockers` varchar(255) DEFAULT NULL,
  `acei_arb` varchar(255) DEFAULT NULL,
  `nyha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `risk_primary`
--

INSERT INTO `risk_primary` (`s_no`, `patient_id`, `age`, `gender`, `bmi`, `sbp`, `creatinine`, `current_smoker`, `diabetes`, `heart_failure`, `beta_blockers`, `acei_arb`, `nyha`) VALUES
(1, ' 2409041055', '55', ' feMale', ' 29.4', '140', ' 1.2', ' Yes', ' No', ' Yes', ' No', ' Yes', ' Class II'),
(3, '2409021611', '55', 'feMale', '29.4', '140', '1.2', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Class II'),
(5, 'admin', '20', ' male', ' 25.3', '130', ' 1.2', ' no', ' yes', ' no', ' yes', ' yes', ' 2'),
(11, '2410231947', '55', 'female', '29.4', '140', '1.2', 'Yes', 'No', 'Yes', 'No', 'Yes', ''),
(12, '2409021612', '55', 'feMale', '29.4', '140', '1.2', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Class II'),
(13, '2410231948', '43', 'Male', '76', '45', '79', '1', '1', '1', '0', '0', 'Slight limitation');

-- --------------------------------------------------------

--
-- Table structure for table `symptom_monitoring`
--

CREATE TABLE `symptom_monitoring` (
  `s_no` int(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `shortness_of_breath` varchar(255) NOT NULL,
  `while_working` varchar(255) NOT NULL,
  `while_rest` varchar(255) NOT NULL,
  `cough` varchar(255) NOT NULL,
  `occasional` varchar(255) NOT NULL,
  `frequent` varchar(255) NOT NULL,
  `fatigue_weakness` varchar(255) NOT NULL,
  `chest_pain` varchar(255) NOT NULL,
  `palpatations` varchar(255) NOT NULL,
  `abdomen_discomfort` varchar(255) NOT NULL,
  `confusion` varchar(255) NOT NULL,
  `weight_gain` varchar(255) NOT NULL,
  `sleep_difficulty` varchar(255) NOT NULL,
  `condition_status` varchar(255) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptom_monitoring`
--

INSERT INTO `symptom_monitoring` (`s_no`, `patient_id`, `shortness_of_breath`, `while_working`, `while_rest`, `cough`, `occasional`, `frequent`, `fatigue_weakness`, `chest_pain`, `palpatations`, `abdomen_discomfort`, `confusion`, `weight_gain`, `sleep_difficulty`, `condition_status`, `time_stamp`) VALUES
(8, '2409021611', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'caution', '2024-10-25 09:06:42'),
(9, '2409041055', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'warning', '2024-10-25 09:47:04'),
(12, '2409021611', 'yes', 'yes', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-04 14:00:50'),
(13, '2409021611', 'yes', 'yes', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-04 14:01:52'),
(14, '2409021611', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-04 14:03:21'),
(15, '2409021611', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-04 14:26:41'),
(16, '2409021611', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-09 12:24:37'),
(17, '2409021611', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-10 15:52:52'),
(18, '2409021611', 'yes', 'yes', '', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-10 15:52:59'),
(19, '2409021611', 'yes', 'yes', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-10 15:53:10'),
(20, '2409021611', 'yes', 'yes', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-11 04:29:17'),
(21, '2409021611', 'no', 'no', 'no', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-11 04:30:12'),
(22, '2410231948', 'no', 'no', 'no', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-10 06:11:19'),
(23, '2410231948', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'caution', '2024-11-10 15:27:19'),
(24, '2410231948', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'caution', '2024-11-10 15:36:10'),
(26, '2409041055', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'warning', '2024-11-19 17:05:12'),
(27, '2147483647', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'caution', '2024-11-14 17:05:23'),
(28, '2410231948', 'no', 'no', 'no', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'good', '2024-11-19 17:21:13'),
(29, '2147483647', 'no', 'no', 'no', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-19 16:52:14'),
(30, '2409041055', 'no', 'no', 'no', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-14 16:52:39'),
(31, '2410231950', 'yes', '', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'good', '2024-12-04 05:48:21'),
(32, '2409041055', 'yes', '', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'warning', '2024-12-04 06:01:11'),
(33, '2147483647', 'yes', '', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'good', '2024-12-04 06:00:55'),
(34, '2411210727', 'yes', '', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-12-04 17:00:33'),
(35, '2410231948', 'yes', 'yes', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'good', '2024-12-04 17:00:41'),
(36, '2410231948', 'yes', 'yes', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-14 17:01:22'),
(37, '2410231948', 'yes', 'yes', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-14 17:16:59'),
(38, '2410231948', 'yes', 'yes', 'no', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-14 17:17:10'),
(39, '2410231948', 'yes', 'yes', 'no', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-14 17:21:33'),
(40, '2410231948', 'yes', 'yes', 'no', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-14 17:23:45'),
(41, '2410231948', 'yes', 'yes', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-14 17:32:30'),
(42, '2409041055', 'yes', 'yes', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'warning', '2024-11-15 03:06:17'),
(43, '2147483647', 'yes', 'yes', '', 'yes', 'yes', '', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'caution', '2024-11-15 03:05:42'),
(44, '2410231948', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Good', '2024-11-15 03:16:54'),
(47, '2410231948', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Good', '2024-11-01 03:13:39'),
(48, '2410231948', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Good', '2024-12-07 02:18:52'),
(49, '2410231948', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Good', '2024-12-01 02:18:55'),
(50, '2410231948', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Good', '2024-12-12 02:19:02'),
(51, '2410231948', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'Warning', '2024-12-12 02:31:43'),
(52, '2410231948', 'yes', 'yes', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'Caution', '2024-12-12 02:37:57'),
(53, '2410231948', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'Caution', '2024-12-12 08:17:51'),
(54, '2410231948', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'no', 'Warning', '2024-12-12 08:19:16'),
(55, '2410231948', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Caution', '2024-12-12 16:21:03'),
(56, '2410231948', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'Caution', '2024-12-12 16:22:54'),
(57, '2410231948', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'Caution', '2024-12-13 18:15:05'),
(58, '2410231948', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'Warning', '2024-12-13 04:31:53'),
(59, '2410231948', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'Good', '2024-12-15 16:53:13'),
(60, '2410231948', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'Good', '2024-12-15 16:57:33'),
(61, '2410231948', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'Good', '2024-12-15 16:57:59'),
(62, '2410231948', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Good', '2024-12-15 16:58:21'),
(63, '2410231948', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Warning', '2024-12-15 16:58:56'),
(64, '2410231948', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'Warning', '2024-12-15 16:59:04'),
(65, '2410231948', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Warning', '2024-12-15 17:03:02'),
(66, '2410231948', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Warning', '2024-12-15 17:04:07'),
(67, '2410231948', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Warning', '2024-12-15 17:06:09'),
(68, '2410231948', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Warning', '2024-12-15 17:06:46'),
(69, '2410231948', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Caution', '2024-12-16 08:29:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addpatient`
--
ALTER TABLE `addpatient`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `doctor_profile`
--
ALTER TABLE `doctor_profile`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `health_metrics`
--
ALTER TABLE `health_metrics`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `investigation_routines`
--
ALTER TABLE `investigation_routines`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `investigation_special`
--
ALTER TABLE `investigation_special`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `risk_major`
--
ALTER TABLE `risk_major`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `risk_minor`
--
ALTER TABLE `risk_minor`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `risk_primary`
--
ALTER TABLE `risk_primary`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `symptom_monitoring`
--
ALTER TABLE `symptom_monitoring`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addpatient`
--
ALTER TABLE `addpatient`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `health_metrics`
--
ALTER TABLE `health_metrics`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `investigation_routines`
--
ALTER TABLE `investigation_routines`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `investigation_special`
--
ALTER TABLE `investigation_special`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `risk_major`
--
ALTER TABLE `risk_major`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `risk_minor`
--
ALTER TABLE `risk_minor`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `risk_primary`
--
ALTER TABLE `risk_primary`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `symptom_monitoring`
--
ALTER TABLE `symptom_monitoring`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
