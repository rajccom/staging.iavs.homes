-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 04:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ivas`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_details`
--

CREATE TABLE `address_details` (
  `id` int(20) NOT NULL,
  `title` varchar(75) NOT NULL,
  `address` varchar(1500) NOT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(10) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `city_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `address_details`
--

INSERT INTO `address_details` (`id`, `title`, `address`, `location`, `city`, `pincode`, `direction`, `city_id`) VALUES
(1, 'ccomdigital', 'C Com Digital, 10, Wadala Udyog Bhavan, Naigaon Cross Road, Telephone Exchn, near Wadala, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Mumbai', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1),
(2, 'I.C.E Asia Pvt Limited', 'India Printing House, 202, G D Ambekar Rd, Sahakar Nagar, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Delhi', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1),
(3, 'Rajdeep Automation Pvt Ltd', ' B-27 3rd Floor, Shriram Industrial Estate, 13, G D Ambedkar Road, Wadala, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Pune', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1),
(4, 'RJ Group of Companies', '201, Awaas CHS, Pralhad Nagar, Ahmedabad, Gujarat - 380001', 'Pralhad Nagar', 'Ahmedabad', 380001, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1),
(5, 'Netcore Cloud', 'Peninsula Towers, Peninsula Corporate Park, Peninsula Tower\'s Walk way, Lower Parel West, Lower Parel, Mumbai, Maharashtra 400013', 'Lower Parel', 'Mumbai', 400013, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bath_fitting`
--

CREATE TABLE `bath_fitting` (
  `product_id` int(11) NOT NULL,
  `product_name` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `im_code` text DEFAULT NULL,
  `colour` text NOT NULL,
  `colour_one` text NOT NULL,
  `colour_two` text NOT NULL,
  `colour_three` text NOT NULL,
  `colour_four` text NOT NULL,
  `colour_five` text NOT NULL,
  `colour_six` text DEFAULT NULL,
  `colour_seven` text DEFAULT NULL,
  `colour_eight` text DEFAULT NULL,
  `colour_nine` text DEFAULT NULL,
  `colour_ten` text DEFAULT NULL,
  `colour_eleven` text DEFAULT NULL,
  `colour_twelve` text DEFAULT NULL,
  `colour_thirteen` text DEFAULT NULL,
  `packing` text NOT NULL,
  `dimension` text NOT NULL,
  `type` text NOT NULL,
  `cock_type` text NOT NULL,
  `finish` text NOT NULL,
  `finish_one` text NOT NULL,
  `finish_two` text NOT NULL,
  `finish_three` text NOT NULL,
  `finish_four` text NOT NULL,
  `finish_five` text NOT NULL,
  `collection` text NOT NULL,
  `features` text NOT NULL,
  `other` text DEFAULT NULL,
  `weight` text NOT NULL,
  `path` text NOT NULL,
  `product_image` text NOT NULL,
  `view` text NOT NULL,
  `product_multiple_imgs` text NOT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bath_fitting`
--

INSERT INTO `bath_fitting` (`product_id`, `product_name`, `category`, `im_code`, `colour`, `colour_one`, `colour_two`, `colour_three`, `colour_four`, `colour_five`, `colour_six`, `colour_seven`, `colour_eight`, `colour_nine`, `colour_ten`, `colour_eleven`, `colour_twelve`, `colour_thirteen`, `packing`, `dimension`, `type`, `cock_type`, `finish`, `finish_one`, `finish_two`, `finish_three`, `finish_four`, `finish_five`, `collection`, `features`, `other`, `weight`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`) VALUES
(1, 'AR-715 ARC BIB COCK LONG WITH FLANGE', 'Faucets', 'IM10063110', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063110.webp', '', 'IM10063110.webp', '1'),
(2, 'AR-701 ARC PILLAR COCK', 'Faucets', 'IM10063111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063111.webp', '', 'IM10063111.webp', '1'),
(3, 'AR-702 ARC PILLAR COCK LONG', 'Faucets', 'IM10063112', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063112.webp', '', 'IM10063112.webp', '1'),
(4, 'AR-705 ARC PILLAR COCK SWAN NECK', 'Faucets', 'IM10063123', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063123.webp', '', 'IM10063123.webp', '1'),
(5, 'AR-731A ARC SINK COCK LONG SPOUT WITH FLANGE', 'Faucets', 'IM10063122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063122.webp', '', 'IM10063122.webp', '1'),
(6, 'IV AR-740 Arc Wall Mixer 2-in-1 Without L Bend or Crutch', 'Faucets', 'IM10063115', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063115.webp', '', 'IM10063115.webp', '1'),
(7, 'IV AR-741 Arc Wall Mixer 3-in-1 With L Bend', 'Faucets', 'IM10063116', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063116.webp', '', 'IM10063116.webp', '1'),
(8, 'AR-753K ARC EXPOSED PART OF HIGH FLOW DIVERTER', 'Faucets', 'IM10063120', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063120.webp', '', 'IM10063120.webp', '1'),
(9, 'IV AR-757 SPOUTS PLAIN', 'Faucets', 'IM10065587', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10065587.webp', '', 'IM10065587.webp', '1'),
(10, 'IV AR-758 ARC SPOUT TIP TOP', 'Faucets', 'IM10065582', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10065582.webp', '', 'IM10065582.webp', '1'),
(11, 'AR-731 ARC SINK COCK WITH FLANGE ', 'Faucets', 'IM10063121', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063121.webp', '', 'IM10063121.webp', '1'),
(12, 'AR-746 ARC SINGLE LEVER BASIN MIXER', 'Faucets', 'IM10063118', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063118.webp', '', 'IM10063118.webp', '1'),
(13, 'AR-747 ARC SINGLE LEVER BASIN MIXER LONG', 'Faucets', 'IM10063119', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063119.webp', '', 'IM10063119.webp', '1'),
(14, 'AR-720 ARC ANGLE COCK WITH FLANGE', 'Faucets', 'IM10063114', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063114.webp', '', 'IM10063114.webp', '1'),
(15, 'IV AR-725 CON. STOP COCK SLIDING 15MM', 'Faucets', 'IM10065585', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stock Cock', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10065585.webp', '', 'IM10065585.webp', '1'),
(16, 'AR-714 ARC BIB COCK 2-WAY WITH FLANGE', 'Faucets', 'IM10063117', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Arc', '', '', '', 'products/bath-fittings/faucets/arc/', 'IM10063117.webp', '', 'IM10063117.webp', '1'),
(17, 'OD-35001 BIB COCK SHORT BODY WITH FLANGE', 'Faucets', 'IM10037473', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037473.webp', '', 'IM10037473.webp', '1'),
(18, 'OD-35003 BIB COCK LONG NOSE WITH FLANGE', 'Faucets', 'IM10037474', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037474.webp', '', 'IM10037474.webp', '1'),
(19, 'OD-35004 BIB COCK NOZZLE WITH FLANGE', 'Faucets', 'IM10060238', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060238.webp', '', 'IM10060238.webp', '1'),
(20, 'OD-35004A W/MACHINE NOZZLE BIB COCK WITH FLANGE', 'Faucets', 'IM10038955', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10038955.webp', '', 'IM10038955.webp', '1'),
(21, 'OD-35006 PILLAR COCK', 'Faucets', 'IM10037379', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037379.webp', '', 'IM10037379.webp', '1'),
(22, 'OD-35006B PILLAR COCK EXTENDED 12\\\" WITH LONG SPOUT 6.5\\\"', 'Faucets', 'IM10038956', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10038956.webp', '', 'IM10038956.webp', '1'),
(23, 'OD-35006B PILLAR COCK EXTENDED 12\\\" WITH LONG SPOUT 6.5\\\"', 'Faucets', 'IM10037475', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10038956.webp', '', 'IM10038956.webp', '1'),
(24, 'OD-35008 ANGLE COCK WITH FLANGE', 'Faucets', 'IM10037476', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037476.webp', '', 'IM10037476.webp', '1'),
(25, 'OD-35009*/OD-35010 CONCEALED STOP COCK WITH ADJUSTABLE WALL FLANGE', 'Faucets', 'IM10037477 | 15mm*\\nIM10038957 | 20mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037477.webp', '', 'IM10037477.webp', '1'),
(26, 'OD 35023 SINGLE LEVER BASIN MIXER', 'Faucets', 'IM10037483', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037483.webp', '', 'IM10037483.webp', '1'),
(27, 'OD-35012 TWO WAY LONG NOSE WITH FLANGE', 'Faucets', 'IM10037478', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037478.webp', '', 'IM10037478.webp', '1'),
(28, 'OD-35013 TWO WAY ANGLE COCK WITH FLANGE', 'Faucets', 'IM10037380', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037380.webp', '', 'IM10037380.webp', '1'),
(29, 'OD-35014 SINK COCK WITH SWINGING SPOUT WITH FLANGE', 'Faucets', 'IM10037479', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037479.webp', '', 'IM10037479.webp', '1'),
(30, 'OD-35015 SWAN NECK PILLAR COCK WITH SWINGING SPOUT', 'Faucets', 'IM10037381', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037381.webp', '', 'IM10037381.webp', '1'),
(31, 'OD-35016 SINK MIXER WITH SWINGING SPOUT', 'Faucets', 'IM10037480', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037480.webp', '', 'IM10037480.webp', '1'),
(32, 'OD-35016A SINK MIXER WITH EXTENDED SPOUT', 'Faucets', 'IM10041275', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10041275.webp', '', 'IM10041275.webp', '1'),
(33, 'OD-35016B SINK MIXER S/L WALL MOUNTED WITH EXTENDED SPOUT', 'Faucets', 'IM10041276', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10041276.webp', '', 'IM10041276.webp', '1'),
(34, 'OD-35016C SINK MIXER S/L TABLE MOUNTED WITH EXTENDED SPOUT', 'Faucets', 'IM10041277', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10041277.webp', '', 'IM10041277.webp', '1'),
(35, 'OD-35022 FLUSH COCK', 'Faucets', 'IM10060317', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Flush Cock', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060317.webp', '', 'IM10060317.webp', '1'),
(36, 'OD-35024 SINGLE LEVER BASIN MIXER EXT. 12\\\" WITH LONG SPOUT 6.5\\\"', 'Faucets', 'IM10060318', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060318.webp', '', 'IM10060318.webp', '1'),
(37, 'OD-35018 WALL MIXER NON TELEPHONIC', 'Faucets', 'IM10060315', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060315.webp', '', 'IM10060315.webp', '1'),
(38, 'OD-35019 WALL MIXER TELE. WITH HAND SHOWERS ARRANGEMENT ONLY WITH CRUTCH', 'Faucets', 'IM10060316', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060316.webp', '', 'IM10060316.webp', '1'),
(39, 'OD-35020 WALL MIXER WITH PROVISION FOR OVERHEAD SHOWER WITH L-BEND', 'Faucets', 'IM10037481', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037481.webp', '', 'IM10037481.webp', '1'),
(40, 'OD-35021 WALL MIXER 3 IN 1 WITH ‘L’ BEND PIPE FOR OVERHEAD SHOWER', 'Faucets', 'IM10037482', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037482.webp', '', 'IM10037482.webp', '1'),
(41, 'OD-35028 WALL SPOUT PLAIN WITH FLANGE', 'Faucets', 'IM10037485', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037485.webp', '', 'IM10037485.webp', '1'),
(42, 'OD-35031 KNOB FOR DIVERTOR', 'Faucets', 'IM10060323', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060323.webp', '', 'IM10060323.webp', '1'),
(43, 'OD-35031A KNOB FOR SINGLE LEVER', 'Faucets', 'IM10060322', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060322.webp', '', 'IM10060322.webp', '1'),
(44, 'OD-35055 SINGLE LEVER WALL MIXER WITH ARRANGEMENT FOR HAND SHOWER', 'Faucets', 'IM10060327', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060327.webp', '', 'IM10060327.webp', '1'),
(45, 'OD-35032 KNOB FOR COCK', 'Faucets', 'IM10060324', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060324.webp', '', 'IM10060324.webp', '1'),
(46, 'OD-35033 EXPOSED PART KIT FOR C. S. C CONSISTING OF LEVER, SLEEVE & FLANGE', 'Faucets', 'IM10060325', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060325.webp', '', 'IM10060325.webp', '1'),
(47, 'OD-35030 S/L BASIN MIXER WALL MOUNTED EXPOSED PART KIT CONSISTING OF OPERATING LEVER, WALL SPOUT & WALL FLANGE FOR DCP 545', 'Faucets', 'IM10060321', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060321.webp', '', 'IM10060321.webp', '1'),
(48, 'OD-35060 SINGLE LEVER WALL MIXER WITH PROVISION FOR OVERHEAD SHOWER WITH PLAIN SPOUT', 'Faucets', 'IM10060328', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060328.webp', '', 'IM10060328.webp', '1'),
(49, 'ODA-35060 SINGLE LEVER WALL MIXER WITH PROVISION FOR OVERHEAD SHOWER WITH BUTTON SPOUT', 'Faucets', 'IM10060328', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060328.webp', '', 'IM10060328.webp', '1'),
(50, 'OD-35050 EXPOSED PART KIT FOR CONCEALED 4 WAY DIVERTOR FOR DCP 575', 'Faucets', 'IM10060326', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060326.webp', '', 'IM10060326.webp', '1'),
(51, 'OD-35017 CENTER HOLE BASIN MIXER', 'Faucets', 'IM10037382', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10037382.webp', '', 'IM10037382.webp', '1'),
(52, 'OD-35026/27 S/L CONCEALED DIVERTOR EXPOSED PART KIT CONSISTING OF OPERATING LEVER & *WALL FLANGE FOR 5 WAY (DCP 535) & **HIGH FLOW (DCP 525)', 'Faucets', 'IM10060320,IM10060283,IM10021311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060320-IM10037486.webp', '', 'IM10060320-IM10037486.webp', '1'),
(53, 'OD-35029 WALL SPOUT TIP-TON FOR HAND SHOWER WITH FLANGE', 'Faucets', 'IM10037486', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Orchid', '', '', '', 'products/bath-fittings/faucets/orchid/', 'IM10060320-IM10037486.webp', '', 'IM10060320-IM10037486.webp', '1'),
(54, 'MA 36023 SINGLE LEVER BASIN', 'Faucets', 'IM10037470', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037470.webp', '', 'IM10037470.webp', '1'),
(55, 'MA-36001 BIB COCK SHORT BODY MA-36001 BIB COCK SHORT BODY WITH FLANGE', 'Faucets', 'IM10021329', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10021329.webp', '', 'IM10021329.webp', '1'),
(56, 'MA-36003 BIB COCK LONG NOSE WITH FLANGE', 'Faucets', 'IM10037462', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037462.webp', '', 'IM10037462.webp', '1'),
(57, 'MA-36004 BIB COCK NOZZLE WITH FLANGE', 'Faucets', 'IM10038953', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10038953.webp', '', 'IM10038953.webp', '1'),
(58, 'MA-36008 ANGLE COCK WITH FLANGE', 'Faucets', 'IM10037374', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037374.webp', '', 'IM10037374.webp', '1'),
(59, 'MA-36006 PILLAR COCK', 'Faucets', 'IM10037373', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037373.webp', '', 'IM10037373.webp', '1'),
(60, 'MA-36006A PILLAR COCK EXTENDED 8\\\" WITH LONG SPOUT 6.5\\\"', 'Faucets', 'IM10038990', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10038990.webp', '', 'IM10038990.webp', '1'),
(61, 'MA-36006B PILLAR COCK EXTENDED 12\\\" WITH LONG SPOUT 6.5\\\"', 'Faucets', 'IM10037463', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037463.webp', '', 'IM10037463.webp', '1'),
(62, 'MA-36007 PILLAR COCK HI-NECK', 'Faucets', 'IM10058329', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10058329.webp', '', 'IM10058329.webp', '1'),
(63, 'MA-36009* CONCEALED STOP COCK WITH ADJUSTABLE WALL FLANGE', 'Faucets', 'IM10037464 | 15MM*\\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037464.webp', '', 'IM10037464.webp', '1'),
(64, ' MA 36010 CONCEALED STOP COCK WITH ADJUSTABLE WALL FLANGE', 'Faucets', 'IM10038954 | 20MM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10038954.webp', '', 'IM10038954.webp', '1'),
(65, 'MA-36012 TWO WAY LONG NOSE WITH FLANGE', 'Faucets', 'IM10037375', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037375.webp', '', 'IM10037375.webp', '1'),
(66, 'MA-36013 TWO WAY ANGLE COCK WITH FLANGE', 'Faucets', 'IM10037465', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037465.webp', '', 'IM10037465.webp', '1'),
(67, 'MA-36014 SINK COCK WITH SWINGING SPOUT WITH FLANGE', 'Faucets', 'IM10037376', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037376.webp', '', 'IM10037376.webp', '1'),
(68, 'MA-36015 SWAN NECK PILLAR COCK WITH SWINGING SPOUT', 'Faucets', 'IM10037466', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037466.webp', '', 'IM10037466.webp', '1'),
(69, 'MA-36016 SINK MIXER WITH SWINGING SPOUT', 'Faucets', 'IM10037467', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037467.webp', '', 'IM10037467.webp', '1'),
(70, 'MA-36016A SINK MIXER WITH EXTENDED SPOUT', 'Faucets', 'IM10041272', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10041272.webp', '', 'IM10041272.webp', '1'),
(71, 'MA-36016B SINK MIXER S/L WALL MOUNTED WITH EXTENDED SPOUT', 'Faucets', 'IM10041273', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10041273.webp', '', 'IM10041273.webp', '1'),
(72, 'MA-36016C SINK MIXER S/L TABLE MOUNTED WITH EXTENDED SPOUT', 'Faucets', 'IM10041274', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10041274.webp', '', 'IM10041274.webp', '1'),
(73, 'MA-36017 CENTER HOLE BASIN MIXER', 'Faucets', 'IM10037377', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037377.webp', '', 'IM10037377.webp', '1'),
(74, 'MA-36018 WALL MIXER NON TELEPHONIC', 'Faucets', 'IM10060300', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060300.webp', '', 'IM10060300.webp', '1'),
(75, 'MA-36019 WALL MIXER TELE. WITH HAND SHOWERS ARRANGEMENT ONLYWITH CRUTCH', 'Faucets', 'IM10060301', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060301.webp', '', 'IM10060301.webp', '1'),
(76, 'MA-36020 WALL MIXER WITH PROVISION FOR OVERHEAD SHOWER WITH L-BEND', 'Faucets', 'IM10037468', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037468.webp', '', 'IM10037468.webp', '1'),
(77, 'MA-36021 WALL MIXER 3 IN 1 WITH ‘L’ BEND PIPE FOR OVERHEAD SHOWER', 'Faucets', 'IM10037469', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037469.webp', '', 'IM10037469.webp', '1'),
(78, 'MA-36022 FLUSH COCK', 'Faucets', 'IM10060302', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Flush Cock', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060302.webp', '', 'IM10060302.webp', '1'),
(79, 'MA-36024 SINGLE LEVER BASIN MIXER EXT. 12\\\" WITH LONG SPOUT 6.5\\\"', 'Faucets', 'IM10060303', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060303.webp', '', 'IM10060303.webp', '1'),
(80, 'MA-36045 WALL MIXER TELE. WITH HAND SHOWERS ARRANGEMENT ONLY WITH CRUTCH (SIDE HANDLE)', 'Faucets', 'IM10078915', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10078915.webp', '', 'IM10078915.webp', '1'),
(81, 'MA-36046 WALL MIXER WITH PROVISION FOR OVERHEAD SHOWER WITH L-BEND (SIDE HANDLE)', 'Faucets', 'IM10078916', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10078916.webp', '', 'IM10078916.webp', '1'),
(82, 'MA-36047 WALL MIXER 3 IN 1 WITH ‘L’ BEND PIPE FOR OVERHEAD SHOWER (SIDE HANDLE)', 'Faucets', 'IM10078917', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10078917.webp', '', 'IM10078917.webp', '1'),
(83, 'MA-36060 SINGLE LEVER WALL MIXER WITH PROVISION FOR OVERHEAD SHOWER WITH PLAIN SPOUT', 'Faucets', 'IM10060312', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060312.webp', '', 'IM10060312.webp', '1'),
(84, 'MA-36028 WALL SPOUT PLAIN WITH FLANGE', 'Faucets', 'IM10037471', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037471.webp', '', 'IM10037471.webp', '1'),
(85, 'MA-36031A KNOB FOR SINGLE LEVER', 'Faucets', 'IM10060306', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060306.webp', '', 'IM10060306.webp', '1'),
(86, 'MA-36031 KNOB FOR DIVERTOR', 'Faucets', 'IM10060307', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060307.webp', '', 'IM10060307.webp', '1'),
(87, 'MA-36032 KNOB FOR COCK', 'Faucets', 'IM10060308', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060308.webp', '', 'IM10060308.webp', '1'),
(88, 'MA-36033 EXPOSED PART KIT FOR C. S. C. CONSISTING OF LEVER, SLEEVE & FLANGE', 'Faucets', 'IM10060309', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060309.webp', '', 'IM10060309.webp', '1'),
(89, 'MA-36050 EXPOSED PART KIT FOR CONCEALED 4 WAY DIVERTOR FOR DCP 575', 'Faucets', 'IM10060310', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060310.webp', '', 'IM10060310.webp', '1'),
(90, 'MA-35026/27 S/L CONCEALED DIVERTOR EXPOSED PART KIT CONSISTING OF OPERATING LEVER & *WALL FLANGE FOR 5 WAY (DCP 535) & **HIGH FLOW (DCP 525)', 'Faucets', 'IM10037468,IM10060283,IM10021311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037468-IM10037472.webp', '', 'IM10037468-IM10037472.webp', '1'),
(91, 'MA-36029 WALL SPOUT TIP-TON FOR HAND SHOWER WITH FLANGE', 'Faucets', 'IM10037472', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10037472.webp', '', 'IM10037472.webp', '1'),
(92, 'MA-36030 S/L BASIN MIXER WALL MOUNTED EXPOSED PART KIT CONSISTING OF OPERATING LEVER, WALL SPOUT & WALL FLANGE FOR DCP 545', 'Faucets', 'IM10060305', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060305.webp', '', 'IM10060305.webp', '1'),
(93, 'MA-36055 SINGLE LEVER WALL MIXER WITH ARRANGEMENT FOR HAND SHOWER', 'Faucets', 'IM10060311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10060311.webp', '', 'IM10060311.webp', '1'),
(94, 'MA-36055A SINGLE LEVER WALL MIXER WITH ARRANGEMENT FOR HAND SHOWER', 'Faucets', 'IM10061375', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matrix', '', '', '', 'products/bath-fittings/faucets/matrix/', 'IM10061375.webp', '', 'IM10061375.webp', '1'),
(95, 'CB 14006B-RG PILLER COCK EXT.', 'Faucets', 'IM10037443', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', 'Piller Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037443.webp', '', 'IM10037443.webp', '1'),
(96, 'CB 14001G BIB COCK', 'Faucets', 'IM10037333', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Cube ', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037333.webp', '', 'IM10037333.webp', '1'),
(97, 'CB 14006B-G PILLER COCK EXT-GOLD', 'Faucets', 'IM10037337', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', 'Piller Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037337.webp', '', 'IM10037337.webp', '1'),
(98, 'CB 14006B-BM PILLER COCK 12”', 'Faucets', 'IM10037336', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12”', '', 'Piller Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037366.webp', '', 'IM10037366.webp', '1'),
(99, 'CB 14006G PILLER COCK-GOLD', 'Faucets', 'IM10037339', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', 'Piller Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037374.webp', '', 'IM10037374.webp', '1'),
(100, 'CB 14006RG PILLER COCK ROSE', 'Faucets', 'IM10037444', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', 'Piller Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037444.webp', '', 'IM10037444.webp', '1'),
(101, 'CB 14006BM PILLER COCK', 'Faucets', 'IM10037441', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Piller Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037441.webp', '', 'IM10037441.webp', '1'),
(102, 'CB 14008G ANGLE COCK-GOLD', 'Faucets', 'IM10037341', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037341.webp', '', 'IM10037341.webp', '1'),
(103, 'CB 14008RG ANGLE COCK ROSE', 'Faucets', 'IM10037342', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037342.webp', '', 'IM10037342.webp', '1'),
(104, 'CB 14012RG 2WAY LONG NOSE', 'Faucets', 'IM10039004', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10039004.webp', '', 'IM10039004.webp', '1'),
(105, 'CB 14012G 2WAY LONG NOSE', 'Faucets', 'IM10039003', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10039003.webp', '', 'IM10039003.webp', '1'),
(106, 'CB 14008BM ANGLE COCK', 'Faucets', 'IM10037340', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037340.webp', '', 'IM10037340.webp', '1'),
(107, 'CB 14012-BM 2WAY LONG NOSE', 'Faucets', 'IM10038994', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10038994.webp', '', 'IM10038994.webp', '1'),
(108, 'CB 14028G WALL SPOUT PLAIN-GOLD', 'Faucets', 'IM10037343', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037343.webp', '', 'IM10037343.webp', '1'),
(109, 'CB 14028RG WALL SPOUT PLAIN', 'Faucets', 'IM10037344', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037344.webp', '', 'IM10037344.webp', '1'),
(110, 'CB 14028BM WALL SPOUT PLAIN', 'Faucets', 'IM10037447', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037447.webp', '', 'IM10037447.webp', '1'),
(111, 'CB 14028BMC WALL SPOUT PLAIN', 'Faucets', 'IM10037446', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037446.webp', '', 'IM10037446.webp', '1'),
(112, 'CB 14029G WALL SPOUT TIP TOP-GOLD', 'Faucets', 'IM10037450', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037450.webp', '', 'IM10037450.webp', '1'),
(113, 'CB 14029RG WALL SPOUT TIP TOP', 'Faucets', 'IM10038962', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10038962.webp', '', 'IM10038962.webp', '1'),
(114, 'CB 14029BM WALL SPOUT TIP TOP', 'Faucets', 'IM10037449', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037449.webp', '', 'IM10037449.webp', '1'),
(115, 'CB 14033G EXPOSED PART FOR C', 'Faucets', 'IM10037347', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037347.webp', '', 'IM10037347.webp', '1'),
(116, 'CB 14033RG EXPOSED PART', 'Faucets', 'IM10037348', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037348.webp', '', 'IM10037348.webp', '1'),
(117, 'CB 14033BM EXPOSED PART', 'Faucets', 'IM10037346', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037346.webp', '', 'IM10037346.webp', '1'),
(118, 'CB 14037G EXPOSED PART DIV.H', 'Faucets', 'IM10037351', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037351.webp', '', 'IM10037351.webp', '1'),
(119, 'CB 14037RG EXPOSED PART DIV.', 'Faucets', 'IM10037352', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037352.webp', '', 'IM10037352.webp', '1'),
(120, 'CB 14037BM EXPOSED PART DIV.', 'Faucets', 'IM10037350', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037350.webp', '', 'IM10037350.webp', '1'),
(121, 'CB 14037BMC EXPOSED PART DIV.', 'Faucets', 'IM10037349', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10037349.webp', '', 'IM10037349.webp', '1'),
(122, 'IV CB-14023BM-SINGLE LEVER BASIN MIXER', 'Faucets', 'IM10065415', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10065415.webp', '', 'IM10065415.webp', '1'),
(123, 'CB 14023RG/SL BASIN MIXER', 'Faucets', 'IM10069971', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10069971-rose-gold.webp', '', 'IM10069971-rose-gold.webp', '1'),
(124, 'IV CB-14023G-SINGLE LEVER BASIN MIXER GOLD', 'Faucets', 'IM10065416', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10065416.webp', '', 'IM10065416.webp', '1'),
(125, 'OHS-3708-BM-SHOWER 8x8 (PRIME)', 'Faucets', 'IM10046551', '', '', '', '', '', '', '', '', 'Black Matt', '', '', '', '', '', '', '8x8', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10046551.webp', '', 'IM10046551.webp', '1'),
(126, 'OHS-3708-RG-SHOWER 8x8 (PRIME)', 'Faucets', 'IM10046550', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '8x8', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10046550.webp', '', 'IM10046550.webp', '1'),
(127, 'OHS-3708-G-SHOWER 8x8 (PRIME)', 'Faucets', 'IM10046549', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '8x8', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube-coloured/', 'IM10046549.webp', '', 'IM10046549.webp', '1'),
(128, 'IV HS-4402 BM HAND SHOWER SAFFRON BLK MATT (ABS-SQUARE)', 'Faucets', 'IM10069970', '', '', '', '', '', '', '', '', 'Black Matt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10069970.webp', '', 'IM10069970.webp', '1'),
(129, 'IV HS-4402 RG HAND SHOWER SAFFRON ROSE GOLD (ABS-SQUARE)', 'Faucets', 'IM10069969', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM1003737.webp', '', 'IM1003737.webp', '1'),
(130, 'IV HS-4402 G HAND SHOWER SAFFRON GOLD (ABS-SQUARE)', 'Faucets', 'IM10069968', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10069968.webp', '', 'IM10069968.webp', '1'),
(131, 'ARM-1818-G-ARM SQUARE GOLD', 'Faucets', 'IM10046553', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10046553.webp', '', 'IM10046553.webp', '1'),
(132, 'ARM-1818-RG-ARM SQUARE ROSE GOLD', 'Faucets', 'IM10046554', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10046554.webp', '', 'IM10046554.webp', '1'),
(133, 'ARM-1818-BM-ARM SQUARE BLK MATT', 'Faucets', 'IM10046555', '', '', '', '', '', '', '', '', 'Black Matt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10046555.webp', '', 'IM10046555.webp', '1'),
(134, 'IV HS-4400 BM HAND SHOWER SOLITAIRE BLK MATT(BRASS-ROUND)', 'Faucets', 'IM10069967', '', '', '', '', '', '', '', '', 'Black Matt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10069967.webp', '', 'IM10069967.webp', '1'),
(135, 'IV HS-4400 RG HAND SHOWER SOLITAIRE ROSE GOLD (BRASS-ROUND)', 'Faucets', 'IM10069966', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10069966.webp', '', 'IM10069966.webp', '1'),
(136, 'IV HS-4400 G HAND SHOWER SOLITAIRE GOLD (BRASS -ROUND)', 'Faucets', 'IM10069965', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10069965.webp', '', 'IM10069965.webp', '1'),
(137, 'PT-002 ANGLE VALVE PRESSMATIC', 'Faucets', 'IM10037425', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', 'Pressematics Faucets', '', 'products/bath-fittings/faucets/cube/', 'IM10037425.webp', '', 'IM10037425.webp', '1'),
(138, 'PT-003 PILLER COCK PRESSMATIC', 'Faucets', 'IM10038960', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Piller Cock', '', '', '', '', '', '', 'Cube', '', 'Pressematics Faucets', '', 'products/bath-fittings/faucets/cube/', 'IM10038960.webp', '', 'IM10038960.webp', '1'),
(139, 'PT-001 LONG BOSY PRESSMATIC', 'Faucets', 'IM10039010', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', 'Pressematics Faucets', '', 'products/bath-fittings/faucets/cube/', 'IM10039010.webp', '', 'IM10039010.webp', '1'),
(140, 'FCP 645 FLUSH VALUE SOFT PUSH', 'Faucets', 'IM10037356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', 'Flush Valves', '', 'products/bath-fittings/faucets/cube/', 'IM10037356.webp', '', 'IM10037356.webp', '1'),
(141, 'FCP 645G FLUSH VALUE SOFT PUSH', 'Faucets', 'IM10037357', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', 'Flush Valves', '', 'products/bath-fittings/faucets/cube/', 'IM10037357.webp', '', 'IM10037357.webp', '1'),
(142, 'FCP 645RG FLUSH VALUE SOFT PUSH', 'Faucets', 'IM10037358', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', 'Flush Valves', '', 'products/bath-fittings/faucets/cube/', 'IM10037358.webp', '', 'IM10037358.webp', '1'),
(143, 'FCP 645BM FLUSH VALUE SOFT PUSH', 'Faucets', 'IM10037355', '', '', '', '', '', '', '', '', 'Black Matt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', 'Flush Valves', '', 'products/bath-fittings/faucets/cube/', 'IM10037355.webp', '', 'IM10037355.webp', '1'),
(144, 'CB-14023 SINGLE LEVER BASIN MIXER', 'Faucets', 'IM10046968', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10046968.webp', '', 'IM10046968.webp', '1'),
(145, 'CB-14001 BIB COCK SHORT BODY WITH FLANGE', 'Faucets', 'IM10013753', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM1004655.webp', '', 'IM1004655.webp', '1'),
(146, 'CB-14003 BIB COCK LONG NOSE WITH FLANGE', 'Faucets', 'IM10013754', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10013754.webp', '', 'IM10013754.webp', '1'),
(147, 'CB-14004 BIB COCK NOZZLE WITH FLANGE', 'Faucets', 'IM10060263', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060263.webp', '', 'IM10060263.webp', '1'),
(148, 'CB-14006A PILLAR COCK EXTENDED 8\\\" WITH LONG SPOUT 6.5\\\"', 'Faucets', 'IM10038950', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10038050.webp', '', 'IM10038050.webp', '1'),
(149, 'CB-14006 PILLAR COCK', 'Faucets', 'IM10013755', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10013755.webp', '', 'IM10013755.webp', '1'),
(150, 'CB-14004A W/MACHINE NOZZLE BIB COCK WITH FLANGE', 'Faucets', 'IM10038949', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10038949.webp', '', 'IM10038949.webp', '1'),
(151, 'CB-14008 ANGLE COCK WITH FLANGE', 'Faucets', 'IM10038947', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10038947.webp', '', 'IM10038947.webp', '1'),
(152, 'CB-14007 HIGH NECK PILLER COCK', 'Faucets', 'IM10013760', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Piller Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10013760.webp', '', 'IM10013760.webp', '1'),
(153, 'CB-14006B PILLAR COCK EXTENDED 12\\\" WITH\\nLONG SPOUT 6.5\\\"', 'Faucets', 'IM10024847', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Piller Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10024847.webp', '', 'IM10024847.webp', '1'),
(154, 'CB-14013 TWO WAY ANGLE COCK\\nWITH FLANGE', 'Faucets', 'IM10060264', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060264.webp', '', 'IM10060264.webp', '1'),
(155, 'CB-14012 TWO WAY LONG NOSE\\nWITH FLANGE', 'Faucets', 'IM10000188', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10000188.webp', '', 'IM10000188.webp', '1'),
(156, 'CB-14009/CB-14010 CONCEALED STOP COCK\\nWITH ADJUSTABLE WALL FLANGE', 'Faucets', 'IM10013763 | 15mm\\nIM10038961 | 20mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10013763.webp', '', 'IM10013763.webp', '1'),
(157, 'CB-14017 CENTER HOLE BASIN MIXER', 'Faucets', 'IM10060269', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060269.webp', '', 'IM10060269.webp', '1'),
(158, 'CB-14015 SWAN NECK PILLAR COCK WITH\\nSWINGING SPOUT', 'Faucets', 'IM10013764', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10013764.webp', '', 'IM10013764.webp', '1'),
(159, 'CB-14014 SINK COCK WITH SWINGING SPOUT\\n\\nWITH FLANGE', 'Faucets', 'IM10000189', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10000189.webp', '', 'IM10000189.webp', '1'),
(160, 'CB-14016B SINK MIXER S/L WALL MOUNTED\\nWITH EXTENDED SPOUT', 'Faucets', 'IM10060266', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060266.webp', '', 'IM10060266.webp', '1'),
(161, 'CB-14016A SINK MIXER WITH\\nEXTENDED SPOUT', 'Faucets', 'IM10060265', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060265.webp', '', 'IM10060265.webp', '1'),
(162, 'CB-14016 SINK MIXER WITH\\nSWINGING SPOUT', 'Faucets', 'IM10060268', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060268.webp', '', 'IM10060268.webp', '1'),
(163, 'CB-14016A SINK MIXER WITH\\nEXTENDED SPOUT', 'Faucets', 'IM10060265', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060265.webp', '', 'IM10060265.webp', '1'),
(164, 'CB-14016B SINK MIXER S/L WALL MOUNTED\\nWITH EXTENDED SPOUT', 'Faucets', 'IM10060266', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060266.webp', '', 'IM10060266.webp', '1'),
(165, 'CB-14016C SINK MIXER S/L TABLE MOUNTED\\nWITH EXTENDED SPOUT', 'Faucets', 'IM10060267', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM100.webp', '', 'IM100.webp', '1'),
(166, 'CB-14018 WALL MIXER NON TELEPHONIC', 'Faucets', 'IM10060270', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060270.webp', '', 'IM10060270.webp', '1'),
(167, 'CB-14019 WALL MIXER TELE. WITH HAND SHOWERS\\nARRANGEMENT ONLY WITH CRUTCH', 'Faucets', 'IM10060271', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060271.webp', '', 'IM10060271.webp', '1'),
(168, 'CB-14020 WALL MIXER WITH PROVISION FOR\\nOVERHEAD SHOWER WITH L-BEND', 'Faucets', 'IM10013765', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10013765.webp', '', 'IM10013765.webp', '1'),
(169, 'CB-14030 S/L BASIN MIXER WALL MOUNTED\\nEXPOSED PART KIT CONSISTING OF OPERATING LEVER,\\nWALL SPOUT & WALL FLANGE FOR DCP 545', 'Faucets', 'IM10013771', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10013771.webp', '', 'IM10013771.webp', '1');
INSERT INTO `bath_fitting` (`product_id`, `product_name`, `category`, `im_code`, `colour`, `colour_one`, `colour_two`, `colour_three`, `colour_four`, `colour_five`, `colour_six`, `colour_seven`, `colour_eight`, `colour_nine`, `colour_ten`, `colour_eleven`, `colour_twelve`, `colour_thirteen`, `packing`, `dimension`, `type`, `cock_type`, `finish`, `finish_one`, `finish_two`, `finish_three`, `finish_four`, `finish_five`, `collection`, `features`, `other`, `weight`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`) VALUES
(170, 'CB-14028 WALL SPOUT PLAIN WITH FLANGE', 'Faucets', 'IM10000190', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10000190.webp', '', 'IM10000190.webp', '1'),
(171, 'CB-14024 SINGLE LEVER BASIN MIXER EXT. 12\\\"\\nWITH LONG SPOUT 6.5\\\"', 'Faucets', 'IM10013768', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10013768.webp', '', 'IM10013768.webp', '1'),
(172, 'CB-35026/27\\n\\nS/L CONCEALED DIVERTOR EXPOSED PART KIT\\nCONSISTING OF OPERATING LEVER &\\n*WALL FLANGE FOR 5 WAY\\n(DCP 535) & **HIGH FLOW (DCP 525)', 'Faucets', 'IM10013769', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM100465.webp', '', 'IM100465.webp', '1'),
(173, '*DCP 535', 'Faucets', 'IM10060283', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060283.webp', '', 'IM10060283.webp', '1'),
(174, '**DCP 525', 'Faucets', 'IM10021311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10021311.webp', '', 'IM10021311.webp', '1'),
(175, 'CB-14029 WALL SPOUT TIP-TON FOR\\nHAND SHOWER WITH FLANGE', 'Faucets', 'IM10000191', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10000191.webp', '', 'IM10000191.webp', '1'),
(176, 'CB-14031 KNOB FOR\\nDIVERTOR', 'Faucets', 'IM10060275', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060275.webp', '', 'IM10060275.webp', '1'),
(177, 'CB-14031A KNOB FOR\\nSINGLE LEVER', 'Faucets', 'IM10060274', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060274.webp', '', 'IM10060274.webp', '1'),
(178, 'CB-14032 KNOB FOR COCK', 'Faucets', 'IM10060276', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060276.webp', '', 'IM10060276.webp', '1'),
(179, 'CB-14033 EXPOSED PART KIT FOR C. S. C.\\nCONSISTING OF LEVER, SLEEVE & FLANGE', 'Faucets', 'IM10060277', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060277.webp', '', 'IM10060277.webp', '1'),
(180, 'CB-14050 EXPOSED PART KIT FOR CONCEALED\\n4 WAY DIVERTOR FOR DCP 575', 'Faucets', 'IM10060280', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060280.webp', '', 'IM10060280.webp', '1'),
(181, 'CB-14029 WALL SPOUT TIP-TON FOR\\nHAND SHOWER WITH FLANGE', 'Faucets', 'IM10000191', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10000191.webp', '', 'IM10000191.webp', '1'),
(182, 'CB-14055 SINGLE LEVER WALL MIXER\\nWITH ARRANGEMENT FOR HAND SHOWER', 'Faucets', 'IM10060281', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060281.webp', '', 'IM10060281.webp', '1'),
(183, 'CB-14060 SINGLE LEVER WALL MIXER WITH\\nARRANGEMENT FOR HAND SHOWER', 'Faucets', 'IM10060282', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10060282.webp', '', 'IM10060282.webp', '1'),
(184, 'CB-14060 SINGLE LEVER WALL MIXER WITH\\nARRANGEMENT FOR HAND SHOWER', 'Faucets', 'IM10061376', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cube', '', '', '', 'products/bath-fittings/faucets/cube/', 'IM10061376.webp', '', 'IM10061376.webp', '1'),
(185, 'AN-52023 SINGLE LEVER BASIN MIXER', 'Faucets', 'IM10037323', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037323.webp', '', 'IM10037323.webp', '1'),
(186, 'AN-52001 BIB COCK', 'Faucets', 'IM10037318', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037318.webp', '', 'IM10037318.webp', '1'),
(187, 'AN-52003 LONG NOSE', 'Faucets', 'IM10037319', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037319.webp', '', 'IM10037319.webp', '1'),
(188, 'AN-52004A W. MACHINE NOZZLE\\nBIB COCK', 'Faucets', 'IM10060245', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060245.webp', '', 'IM10060245.webp', '1'),
(189, 'AN-52004 NOZZLE BIB COCK', 'Faucets', 'IM10060246', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060246.webp', '', 'IM10060246.webp', '1'),
(190, 'AN-52006A PILLAR COCK EXTENDED 8”', 'Faucets', 'IM10038948', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10038948.webp', '', 'IM10038948.webp', '1'),
(191, 'AN-52006B PILLAR COCK EXTENDED 12”', 'Faucets', 'IM10037432', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037432.webp', '', 'IM10037432.webp', '1'),
(192, 'AN-52006 PILLAR COCK', 'Faucets', 'IM10037433', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037433.webp', '', 'IM10037433.webp', '1'),
(193, 'AN-52007 PILLAR COCK HIGH NECK', 'Faucets', 'IM10037495', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037495.webp', '', 'IM10037495.webp', '1'),
(194, 'AN-52006 PILLAR COCK', 'Faucets', 'IM10037433', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037433.webp', '', 'IM10037433.webp', '1'),
(195, 'AN-52013 TWO WAY ANGLE COCK', 'Faucets', 'IM10037320', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037320.webp', '', 'IM10037320.webp', '1'),
(196, 'AN-52012 TWO WAY LONG NOSE', 'Faucets', 'IM10037434', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037434.webp', '', 'IM10037434.webp', '1'),
(197, 'AN-52009/AN-52010\\nCONCEALED STOP COCK', 'Faucets', 'IM10042315 | 15mm\\nIM10060247 | 20mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10042315-15MM.webp', '', 'IM10042315-15MM.webp', '1'),
(198, 'AN-52016A SINK MIXER WITH EXT. SPOUT', 'Faucets', 'IM10060248', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060248.webp', '', 'IM10060248.webp', '1'),
(199, 'AN-52015 SWAN NECK', 'Faucets', 'IM10037436', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037436.webp', '', 'IM10037436.webp', '1'),
(200, 'AN-52014 SINK COCK', 'Faucets', 'IM10037435', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037435.webp', '', 'IM10037435.webp', '1'),
(201, 'AN-52016 SINK MIXER', 'Faucets', 'IM10060251', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060251.webp', '', 'IM10060251.webp', '1'),
(202, 'AN-52017 CENTER HOLE BASIN MIXER', 'Faucets', 'IM10037321', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037321.webp', '', 'IM10037321.webp', '1'),
(203, 'AN-52018 WALL MIXER NON TELEPHONIC', 'Faucets', 'IM10060252', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060252.webp', '', 'IM10060252.webp', '1'),
(204, 'AN-52017 CENTER HOLE BASIN MIXER', 'Faucets', 'IM10037321', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037321.webp', '', 'IM10037321.webp', '1'),
(205, 'AN-52022 FLUSH COCK', 'Faucets', 'IM10060254', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Flush Cock', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060254.webp', '', 'IM10060254.webp', '1'),
(206, 'AN-52021 WALL MIXER 3 IN 1 WITH ‘L’ BEND', 'Faucets', 'IM10037437', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037437.webp', '', 'IM10037437.webp', '1'),
(207, 'AN-52020 WALL MIXER WITH L-BEND', 'Faucets', 'IM10037322', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037322.webp', '', 'IM10037322.webp', '1'),
(208, 'S/L CONCEALED DIVERTOR EXPOSED PART KIT CONSISTING\\nOF OPERATING LEVER & WALL FLANGE FOR DCP 525/535', 'Faucets', 'IM10037439', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037439.webp', '', 'IM10037439.webp', '1'),
(209, 'AN-52025 EXPOSED PART S/L PROJECT DIV.', 'Faucets', 'IM10037438', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037438.webp', '', 'IM10037438.webp', '1'),
(210, 'AN-52024 SINGLE LEVER BASIN MIXER\\nEXTENDED 12\\\" WITH LONG SPOUT 6.5”', 'Faucets', 'IM10037324', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037324.webp', '', 'IM10037324.webp', '1'),
(211, 'AN-52031 KNOB FOR DIVERTOR', 'Faucets', 'IM10060257', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060257.webp', '', 'IM10060257.webp', '1'),
(212, 'AN-52029 WALL SPOUT TIP TOP FOR\\nHAND SHOWER WITH FLANGE', 'Faucets', 'IM10037327', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037327.webp', '', 'IM10037327.webp', '1'),
(213, 'AN-52028 WALL SPOUT PLAIN WITH FLANGE', 'Faucets', 'IM10037326', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037326.webp', '', 'IM10037326.webp', '1'),
(214, 'AN-52031A KNOB FOR SINGLE LEVER', 'Faucets', 'IM10060256', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060256.webp', '', 'IM10060256.webp', '1'),
(215, 'AN-52032 KNOB FOR COCKS', 'Faucets', 'IM10060258', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060258.webp', '', 'IM10060258.webp', '1'),
(216, 'AN-52033 EXPOSED PART KIT FOR C.S.C\\nCONSISTING OF LEVER, SLEEVE & FLANGE', 'Faucets', 'IM10060259', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060259.webp', '', 'IM10060259.webp', '1'),
(217, 'AN-52050 EXPOSED PART KIT FOR\\nCONCEALED 4 WAY DIVERTOR FOR DCP 575', 'Faucets', 'IM10060260', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060260.webp', '', 'IM10060260.webp', '1'),
(218, '4 WAY C/S/C DIVERTOR BODY (INNER PART) FOR DCP 575', 'Faucets', 'IM10060284', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060284.webp', '', 'IM10060284.webp', '1'),
(219, 'AN-52055 SINGLE LEVER WALL MIXER WITH\\nARRANGEMENT FOR HAND SHOWER', 'Faucets', 'IM10060261', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060261.webp', '', 'IM10060261.webp', '1'),
(220, 'AN-52030 EXPOSED PART WALL MOUNTED B/M', 'Faucets', 'IM10037328', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10037328.webp', '', 'IM10037328.webp', '1'),
(221, 'AN-52060 SINGLE LEVER WALL MIXER WITH\\nPROVISION FOR OVERHAND\\nSHOWER WITH PLAIN SPOUT', 'Faucets', 'IM10060262', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angel', '', '', '', 'products/bath-fittings/faucets/angel/', 'IM10060262.webp', '', 'IM10060262.webp', '1'),
(222, 'JA-53023 SINGLE LEVER BASIN MIXER', 'Faucets', 'IM10037456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', 'products/bath-fittings/faucets/jasper/', '', '', '', '1'),
(223, 'JA-53001 BIB COCK SHORT BODY WITH FLANGE', 'Faucets', 'IM10037362', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Jasper', '', '', '', 'products/bath-fittings/faucets/jasper/', 'IM10037362.webp', '', 'IM10037362.webp', '1'),
(224, 'JA-53003 BIB COCK LONG NOSE\\nWITH FLANGE', 'Faucets', 'IM10037452', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(225, 'JA-53004 BIB COCK NOZZLE WITH FLANGE', 'Faucets', 'IM10060285', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(226, 'JA-53004A W. MACHINE NOZZLE BIB COCK', 'Faucets', 'IM10038963', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(227, 'JA-53006 PILLAR COCK', 'Faucets', 'IM10037364', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Jasper', '', '', '', 'products/bath-fittings/faucets/jasper/', 'IM10037364.webp', '', 'IM10037364.webp', '1'),
(228, 'JA-53006A PILLAR COCK EXTENDED 8\\\"\\nWITH LONG SPOUT 6.5”', 'Faucets', 'IM10038964', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(229, 'JA-53006B PILLAR COCK EXTENDED 12\\\"\\nWITH LONG SPOUT 6.5”', 'Faucets', 'IM10037363', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(230, 'JA-53007 PILLAR COCK HIGH NECK', 'Faucets', 'IM10037365', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Jasper', '', '', '', 'products/bath-fittings/faucets/jasper/', 'IM10037365.webp', '', 'IM10037365.webp', '1'),
(231, 'JA-53008 ANGLE COCK WITH FLANGE', 'Faucets', 'IM10038992', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(232, 'JA-53009/JA-53010\\nCONCEALED STOP COCK WITH\\nADJUSTABLE WALL FLANGE', 'Faucets', 'IM10037453 | 15mm\\nIM10038988 | 20mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(233, 'JA-53012 TWO WAY LONG NOSE WITH\\n\\nFLANGE', 'Faucets', 'IM10037454', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(234, 'JA-53013 TWO WAY ANGLE COCK WITH\\n\\nFLANGE', 'Faucets', 'IM10037366', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Jasper', '', '', '', 'products/bath-fittings/faucets/jasper/', 'IM10037366.webp', '', 'IM10037366.webp', '1'),
(235, 'JA-53014 SINK COCK WITH SWINGING SPOUT\\n\\nWITH FLANGE', 'Faucets', 'IM10037455', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(236, 'JA 53014D SINK COCK DUAL FLOW', 'Faucets', 'IM10037367', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(237, 'JA-53015 SWAN NECK PILLAR COCK WITH\\nSWINGING SPOUT', 'Faucets', 'IM10037368', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Jasper', '', '', '', 'products/bath-fittings/faucets/jasper/', 'IM10037368.webp', '', 'IM10037368.webp', '1'),
(238, 'JA 53015D SWAN NECK DUAL FLOW', 'Faucets', 'IM10058331', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(239, 'JA-53016 SINK MIXER WITH\\nSWINGING SPOUT', 'Faucets', 'IM10038965', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(240, 'JA-53016A SINK MIXER WITH\\nEXTENDED SPOUT', 'Faucets', 'IM10038952', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(241, 'JA-53016B SINK MIXER S/L WALL MOUNTED\\nWITH EXTENDED SPOUT', 'Faucets', 'IM10041271', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(242, 'JA-53016C SINK MIXER S/L TABLE MOUNTED\\nWITH EXTENDED SPOUT', 'Faucets', 'IM10041270', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(243, 'JA-53017 CENTER HOLE BASIN MIXER', 'Faucets', 'IM10037369', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(244, 'JA-53020 SINGLE LEVER BASIN MIXER\\nEXTENDED 12\\\" WITH LONG SPOUT 6.5”', 'Faucets', 'IM10037370', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(245, 'JA-53019 WALL MIXER TELE. WITH HAND\\nSHOWERS ARRANGEMENT ONLY WITH CRUTCH', 'Faucets', 'IM10060288', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(246, 'JA-53018 WALL MIXER NON TELEPHONIC', 'Faucets', 'IM10060287', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(247, 'JA-53024 SINGLE LEVER BASIN MIXER EXT. 12”\\nWITH LONG SPOUT 6.5”', 'Faucets', 'IM10037372', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(248, 'JA-53022 S/L CONCEALED DIVERTOR\\nEXPOSED PART KIT CONSISTING OF OPERATING\\nLEVER & WALL FLANGE FOR DCP 525/535', 'Faucets', 'IM10060289', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(249, 'JA-53021 EXPOSED PART S/L PROJECT DIV.', 'Faucets', 'IM10037371', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(250, 'A-53030 S/L BASIN MIXER WALL MOUNTED\\nEXPOSED PART KIT CONSISTING OF\\nOPERATING LEVER, WALL SPOUT &\\nWALL FLANGE FOR DCP 545', 'Faucets', 'IM10060291', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(251, 'A-53025 EXPOSED PART S/L PROJECT DIVERT', 'Faucets', 'IM10037457', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(252, 'JA-53031 KNOB FOR\\nDIVERTOR', 'Faucets', 'IM10060293', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(253, 'JA-53031A KNOB FOR\\nSINGLE LEVER', 'Faucets', 'IM10060292', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(254, 'JA-53032 KNOB FOR COCK', 'Faucets', 'IM10060294', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(255, 'A-53028 KNOB FOR SINGLE LEVER', 'Faucets', 'IM10037459', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(256, 'JA-53033 EXPOSED PART KIT FOR\\nC.S.C CONSISTING OF LEVER,\\nSLEEVE & FLANGE', 'Faucets', 'IM10060295', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(257, 'JA-53045 WALL MIXER TELE. WITH HAND\\nSHOWERS ARRANGEMENT ONLY WITH CRUTCH', 'Faucets', 'IM10061377', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(258, 'JA-53046 WALL MIXER WITH PROVISION\\nFOR OVERHEAD SHOWER WITH L-BEND\\n(SIDE HANDLE)', 'Faucets', 'IM10061378', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(259, 'JA-53045 WALL MIXER TELE. WITH HAND\\nSHOWERS ARRANGEMENT ONLY WITH CRUTCH\\n\\n(SIDE HANDLE)', 'Faucets', 'IM10061377', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(260, 'JA-53033 EXPOSED PART KIT FOR\\nC.S.C CONSISTING OF LEVER,\\nSLEEVE & FLANGE', 'Faucets', 'IM10060295', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(261, 'JA-53045 WALL MIXER TELE. WITH HAND\\nSHOWERS ARRANGEMENT ONLY WITH CRUTCH\\n\\n(SIDE HANDLE)', 'Faucets', 'IM10061377', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(262, 'JA-53046 WALL MIXER WITH PROVISION\\nFOR OVERHEAD SHOWER WITH L-BEND\\n(SIDE HANDLE)', 'Faucets', 'IM10061378', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(263, 'JA-53026/27\\n\\nS/L CONCEALED DIVERTOR EXPOSED PART KIT\\nCONSISTING OF OPERATING LEVER & WALL FLANGE\\nFOR 5 WAY (DCP 535) & HIGH FLOW (DCP 525)', 'Faucets', 'IM10037458', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(264, '*DCP 535', 'Faucets', 'IM10060283', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(265, '**DCP 525', 'Faucets', 'IM10021311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(266, 'JA-53029 WALL SPOUT TIP-TOP FOR HAND\\nSHOWER WITH FLANGE', 'Faucets', 'IM10037460', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(267, 'JA-53055 SINGLE LEVER WALL MIXER WITH\\nARRANGEMENT FOR HAND SHOWER', 'Faucets', 'IM10060298', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(268, 'JA-53060 SINGLE LEVER WALL MIXER WITH\\nPROVISION FOR OVERHEAD SHOWER\\nWITH PLAIN SPOUT', 'Faucets', 'IM10060299', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(269, 'JA-53047 WALL MIXER 3 IN 1 WITH ‘L’ BEND\\nPIPE FOR OVERHEAD SHOWER\\n(SIDE HANDLE)', 'Faucets', 'IM10061379', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(270, 'JA-53050 Exposed Part Kit For Concealed\\n4 Way Divertor for DCP 575', 'Faucets', 'IM10060297', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jasper', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(271, 'OR-55023 SINGLE LEVER BASIN MIXER', 'Faucets', 'IM10037393', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037393.webp', '', 'IM10037393.webp', '1'),
(272, 'OR-55001 BIB COCK SHORT BODY WITH FLANGE', 'Faucets', 'IM10037383', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037383.webp', '', 'IM10037383.webp', '1'),
(273, 'OR-55003 BIB COCK LONG NOSE WITH FLANGE', 'Faucets', 'IM10037384', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037384.webp', '', 'IM10037384.webp', '1'),
(274, 'OR-55004 BIB COCK NOZZLE WITH FLANGE', 'Faucets', 'IM10060343', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060343.webp', '', 'IM10060343.webp', '1'),
(275, 'OR-55004A W. MACHINE NOZZLE BIB COCK\\n\\nWITH FLANGE', 'Faucets', 'IM10060342', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060342.webp', '', 'IM10060342.webp', '1'),
(276, 'OR-55006 PILLAR COCK', 'Faucets', 'IM10058330', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10058330.webp', '', 'IM10058330.webp', '1'),
(277, 'OR-55006A PILLAR COCK EXTENDED 8\\\"\\nWITH LONG SPOUT 6.5”', 'Faucets', 'IM10060239', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060239.webp', '', 'IM10060239.webp', '1'),
(278, 'OR-55006B PILLAR COCK EXTENDED 12\\\"\\nWITH LONG SPOUT 6.5”', 'Faucets', 'IM10037487', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037385.webp', '', 'IM10037385.webp', '1'),
(279, 'OR-55007 PILLAR COCK HIGH NECK', 'Faucets', 'IM10037385', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oliver', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(280, 'OR-55008 ANGLE COCK WITH FLANGE', 'Faucets', 'IM10046969', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037386.webp', '', 'IM10037386.webp', '1'),
(281, 'OR-55009/OL-55010\\nCONCEALED STOP COCK WITH\\nADJUSTABLE WALL FLANGE', 'Faucets', 'IM10037386 | 15mm\\nIM10060344 | 20mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037387.webp', '', 'IM10037387.webp', '1'),
(282, 'OR-55012 TWO WAY LONG NOSE WITH FLANGE', 'Faucets', 'IM10037387', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037388.webp', '', 'IM10037388.webp', '1'),
(283, 'OR-55013 TWO WAY ANGLE COCK WITH FLANGE', 'Faucets', 'IM10037388', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037388.webp', '', 'IM10037388.webp', '1'),
(284, 'OR-55014 SINK COCK WITH SWINGINAG SPOUT\\n\\nWITH FLANGE', 'Faucets', 'IM10057346', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10057346.webp', '', 'IM10057346.webp', '1'),
(285, 'OR-55015 SWAN NECK PILLAR COCK WITH\\nSWINGING SPOUT', 'Faucets', 'IM10037389', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037389.webp', '', 'IM10037389.webp', '1'),
(286, 'OR-55016 SINK MIXER WITH SWINGING SPOUT', 'Faucets', 'IM10060349', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060349.webp', '', 'IM10060349.webp', '1'),
(287, 'OR-55016A SINK MIXER WITH\\nEXTENDED SPOUT', 'Faucets', 'IM10060345', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060345.webp', '', 'IM10060345.webp', '1'),
(288, 'OR-55016B SINK MIXER S/L WALL MOUNTED\\nWITH EXTENDED SPOUT', 'Faucets', 'IM10060346', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060346.webp', '', 'IM10060346.webp', '1'),
(289, 'OR-55016C SINK MIXER S/L TABLE\\nMOUNTED WITH EXTENDED SPOUT', 'Faucets', 'IM10060348', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037390.webp', '', 'IM10037390.webp', '1'),
(290, 'OR-55017 CENTER HOLE BASIN MIXER', 'Faucets', 'IM10037390', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037390.webp', '', 'IM10037390.webp', '1'),
(291, 'OR-55018 WALL MIXER NON TELEPHONIC', 'Faucets', 'IM10060350', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060350.webp', '', 'IM10060350.webp', '1'),
(292, 'OR-55019 WALL MIXER TELE. WITH HAND\\nSHOWERS ARRANGEMENT ONLY WITH CRUTCH', 'Faucets', 'IM10060351', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037391.webp', '', 'IM10037391.webp', '1'),
(293, 'OR-55020 WALL MIXER WITH PROVISION\\nFOR OVERHEAD SHOWER WITH L-BEND', 'Faucets', 'IM10037391', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037392.webp', '', 'IM10037392.webp', '1'),
(294, 'OR-55021 WALL MIXER 3 IN 1 WITH L-BEND\\nPIPE FOR OVERHEAD SHOWER', 'Faucets', 'IM10037392', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', '', '', '', '1'),
(295, 'OR-55022 FLUSH COCK', 'Faucets', 'IM10060352', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037394.webp', '', 'IM10037394.webp', '1'),
(296, 'OR-55024 SINGLE LEVER BASIN MIXER\\nEXTENDED 12\\\" WITH LONG SPOUT 6.5”', 'Faucets', 'IM10037394', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037395.webp', '', 'IM10037395.webp', '1'),
(297, 'OR-55025 EXPOSED PART S/L PROJECT DIV.', 'Faucets', 'IM10037395', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037395.webp', '', 'IM10037395.webp', '1'),
(298, 'S/L CONCEALED DIVERTOR EXPOSED PART KIT CONSISTING\\nOF OPERATING LEVER & WALL FLANGE FOR DCP 525/535', 'Faucets', 'IM10037396', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(299, 'OR-55009/OL-55010\\nCONCEALED STOP COCK WITH\\nADJUSTABLE WALL FLANGE', 'Faucets', 'IM10037386 | 15mm\\nIM10060344 | 20mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037386.webp', '', 'IM10037386.webp', '1'),
(300, 'OR-55012 TWO WAY LONG NOSE WITH FLANGE', 'Faucets', 'IM10037387', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037387.webp', '', 'IM10037387.webp', '1'),
(301, 'OR-55013 TWO WAY ANGLE COCK WITH FLANGE', 'Faucets', 'IM10037388', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037388.webp', '', 'IM10037388.webp', '1'),
(302, 'OR-55014 SINK COCK WITH SWINGINAG SPOUT\\n\\nWITH FLANGE', 'Faucets', 'IM10057346', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10057346.webp', '', 'IM10057346.webp', '1'),
(303, 'OR-55015 SWAN NECK PILLAR COCK WITH\\nSWINGING SPOUT', 'Faucets', 'IM10037389', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037389.webp', '', 'IM10037389.webp', '1'),
(304, 'OR-55016 SINK MIXER WITH SWINGING SPOUT', 'Faucets', 'IM10060349', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060349.webp', '', 'IM10060349.webp', '1'),
(305, 'OR-55016A SINK MIXER WITH\\nEXTENDED SPOUT', 'Faucets', 'IM10060345', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060345.webp', '', 'IM10060345.webp', '1'),
(306, 'OR-55016B SINK MIXER S/L WALL MOUNTED\\nWITH EXTENDED SPOUT', 'Faucets', 'IM10060346', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060346.webp', '', 'IM10060346.webp', '1'),
(307, 'OR-55016C SINK MIXER S/L TABLE\\nMOUNTED WITH EXTENDED SPOUT', 'Faucets', 'IM10060348', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060348.webp', '', 'IM10060348.webp', '1'),
(308, 'OR-55017 CENTER HOLE BASIN MIXER', 'Faucets', 'IM10037390', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037390.webp', '', 'IM10037390.webp', '1'),
(309, 'OR-55018 WALL MIXER NON TELEPHONIC', 'Faucets', 'IM10060350', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060350.webp', '', 'IM10060350.webp', '1'),
(310, 'OR-55019 WALL MIXER TELE. WITH HAND\\nSHOWERS ARRANGEMENT ONLY WITH CRUTCH', 'Faucets', 'IM10060351', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060351.webp', '', 'IM10060351.webp', '1'),
(311, 'OR-55022 FLUSH COCK', 'Faucets', 'IM10060352', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Flush Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060352.webp', '', 'IM10060352.webp', '1'),
(312, 'OR-55021 WALL MIXER 3 IN 1 WITH L-BEND\\nPIPE FOR OVERHEAD SHOWER', 'Faucets', 'IM10037392', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037392.webp', '', 'IM10037392.webp', '1'),
(313, 'OR-55020 WALL MIXER WITH PROVISION\\nFOR OVERHEAD SHOWER WITH L-BEND', 'Faucets', 'IM10037391', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037391.webp', '', 'IM10037391.webp', '1'),
(314, 'OR-55021 WALL MIXER 3 IN 1 WITH L-BEND\\nPIPE FOR OVERHEAD SHOWER', 'Faucets', 'IM10037392', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037392.webp', '', 'IM10037392.webp', '1'),
(315, 'OR-55022 FLUSH COCK', 'Faucets', 'IM10060352', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Flush Cock', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060352.webp', '', 'IM10060352.webp', '1'),
(316, 'OR-55021 WALL MIXER 3 IN 1 WITH L-BEND\\nPIPE FOR OVERHEAD SHOWER', 'Faucets', 'IM10037392', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037392.webp', '', 'IM10037392.webp', '1'),
(317, 'OR-55020 WALL MIXER WITH PROVISION\\nFOR OVERHEAD SHOWER WITH L-BEND', 'Faucets', 'IM10037391', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037391.webp', '', 'IM10037391.webp', '1'),
(318, 'OR-55026/27\\n\\nS/L CONCEALED DIVERTOR EXPOSED PART KIT CONSISTING\\nOF OPERATING LEVER & WALL FLANGE FOR DCP 525/535', 'Faucets', 'IM10037396', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(319, 'OR-55025 EXPOSED PART S/L PROJECT DIV.', 'Faucets', 'IM10037395', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037395.webp', '', 'IM10037395.webp', '1'),
(320, 'OR-55024 SINGLE LEVER BASIN MIXER\\nEXTENDED 12\\\" WITH LONG SPOUT 6.5”', 'Faucets', 'IM10037394', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037394.webp', '', 'IM10037394.webp', '1'),
(321, 'OR-55031 Knob For Divertor', 'Faucets', 'IM10060356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060356.webp', '', 'IM10060356.webp', '1'),
(322, 'OR-55029 Wall Spout Tip Ton For\\nHand Shower with Flange', 'Faucets', 'IM10037398', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037398.webp', '', 'IM10037398.webp', '1'),
(323, 'OR-55028 Wall Spout Plain with Flange', 'Faucets', 'IM10037397', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10037397.webp', '', 'IM10037397.webp', '1'),
(324, 'OR-55033 Exposed Part Kit For C.S.C\\nConsisting Of Lever, Sleeve & Flange', 'Faucets', 'IM10060358', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(325, 'OR-55032 Knob For Cocks', 'Faucets', 'IM10060357', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060357.webp', '', 'IM10060357.webp', '1'),
(326, 'OR-55031A Knob For Single Lever', 'Faucets', 'IM10060355', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060355.webp', '', 'IM10060355.webp', '1'),
(327, 'OR-55047 Wall Mixer 3 in 1 with L-Bend Pipe\\nFor Overhead Shower (Side Handle)', 'Faucets', 'IM10061382', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10061382.webp', '', 'IM10061382.webp', '1'),
(328, 'OR-55046 Wall Mixer with Provision\\nFor Overhead Shower with L-Bend\\n(Side Handle)', 'Faucets', 'IM10061381', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10061381.webp', '', 'IM10061381.webp', '1'),
(329, 'OR-55045 Wall Mixer Tele. with Hand\\nShowers Arrangement only\\nwith Crutch (Side Handle)', 'Faucets', 'IM10061380', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10061380.webp', '', 'IM10061380.webp', '1'),
(330, 'OR-55030 S/L BASIN MIXER WALL MOUNTED EXPOSED\\nPART KIT CONSISTING OF OPERATING LEVER,\\nWALL SPOUT & WALL FLANGE FOR DCP 545', 'Faucets', 'IM10060354', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060354.webp', '', 'IM10060354.webp', '1'),
(331, 'OR-55050 EXPOSED PART KIT FOR CONCEALED 4 WAY\\n\\nDIVERTOR FOR DCP 575', 'Faucets', 'IM10060359', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060359.webp', '', 'IM10060359.webp', '1'),
(332, '4 WAY C/S/C DIVERTOR BODY (INNER PART)\\n\\nFOR DCP 575', 'Faucets', 'IM10060284', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060284.webp', '', 'IM10060284.webp', '1'),
(333, 'OR-55055 SINGLE LEVER WALL MIXER WITH\\nARRANGEMENT FOR HAND SHOWER', 'Faucets', 'IM10060360', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060360.webp', '', 'IM10060360.webp', '1'),
(334, 'OR-55060 SINGLE LEVER WALL MIXER WITH\\nPROVISION FOR OVERHAND SHOWER\\nWITH PLAIN SPOUT', 'Faucets', 'IM10060361', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oliver', '', '', '', 'products/bath-fittings/faucets/oliver/', 'IM10060361.webp', '', 'IM10060361.webp', '1'),
(335, 'OS-56001 BIB COCK SHORT BODY WITH\\n\\nFLANGE', 'Faucets', 'IM10038993', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10038993.webp', '', 'IM10038993.webp', '1'),
(336, 'OS-56003 BIB COCK LONG NOSE WITH\\n\\nFLANGE', 'Faucets', 'IM10037399', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037399.webp', '', 'IM10037399.webp', '1'),
(337, 'OS-56023 SINGLE LEVER BASIN MIXER', 'Faucets', 'IM10037410', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037410.webp', '', 'IM10037410.webp', '1'),
(338, 'OS-56004 BIB COCK NOZZLE WITH\\nFLANGE', 'Faucets', 'IM10038958', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10038958.webp', '', 'IM10038958.webp', '1'),
(339, 'OS-56004A W. MACHINE NOZZLE BIB COCK\\n\\nWITH FLANGE', 'Faucets', 'IM10078918', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Oscar', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(340, 'OS-56006 PILLAR COCK', 'Faucets', 'IM10037488', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037488.webp', '', 'IM10037488.webp', '1'),
(341, 'OS-56006A PILLAR COCK EXTENDED 8\\\"\\nWITH LONG SPOUT 6.5”', 'Faucets', 'IM10038966', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10038966.webp', '', 'IM10038966.webp', '1'),
(342, 'OS-56006B PILLAR COCK EXTENDED 12\\\"\\nWITH LONG SPOUT 6.5”', 'Faucets', 'IM10037400', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037400.webp', '', 'IM10037400.webp', '1');
INSERT INTO `bath_fitting` (`product_id`, `product_name`, `category`, `im_code`, `colour`, `colour_one`, `colour_two`, `colour_three`, `colour_four`, `colour_five`, `colour_six`, `colour_seven`, `colour_eight`, `colour_nine`, `colour_ten`, `colour_eleven`, `colour_twelve`, `colour_thirteen`, `packing`, `dimension`, `type`, `cock_type`, `finish`, `finish_one`, `finish_two`, `finish_three`, `finish_four`, `finish_five`, `collection`, `features`, `other`, `weight`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`) VALUES
(343, 'OS-56007 PILLAR COCK HIGH NECK', 'Faucets', 'IM10037401', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037401.webp', '', 'IM10037401.webp', '1'),
(344, 'OS-56008 ANGLE COCK WITH FLANGE', 'Faucets', 'IM10038987', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10038978.webp', '', 'IM10038978.webp', '1'),
(345, 'OS-56009/OS-56010\\n\\nCONCEALED STOP COCK WITH ADJUSTABLE WALL FLANGE', 'Faucets', 'IM10037402 | 15mm\\nIM10060344 | 20mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/\\n', 'IM10037401.webp', '', 'IM10037401.webp', '1'),
(346, 'OS-56012 TWO WAY LONG NOSE WITH FLANGE', 'Faucets', 'IM10037403', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037403.webp', '', 'IM10037403.webp', '1'),
(347, 'OS-56013 TWO WAY ANGLE COCK WITH FLANGE', 'Faucets', 'IM10037404', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037404.webp', '', 'IM10037404.webp', '1'),
(348, 'OS-56014 SINK COCK WITH SWINGING SPOUT\\n\\nWITH FLANGE', 'Faucets', 'IM10037405', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sink Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037405.webp', '', 'IM10037405.webp', '1'),
(349, 'OS-56015 SWAN NECK PILLAR COCK WITH\\nSWINGING SPOUT', 'Faucets', 'IM10037406', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037406.webp', '', 'IM10037406.webp', '1'),
(350, 'OS-56016 SINK MIXER WITH SWINGING SPOUT', 'Faucets', 'IM10038959', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10038959.webp', '', 'IM10038959.webp', '1'),
(351, 'OS-56016A SINK MIXER WITH EXTENDED\\n\\nSPOUT', 'Faucets', 'IM10078412', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(352, 'OS-56016B SINK MIXER S/L WALL MOUNTED\\nWITH EXTENDED SPOUT', 'Faucets', 'IM10078413', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(353, 'OS-56016C SINK MIXER S/L TABLE MOUNTED\\nWITH EXTENDED SPOUT', 'Faucets', 'IM10078414', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(354, 'OS-56017 CENTER HOLE BASIN MIXER', 'Faucets', 'IM10037407', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10038959.webp', '', 'IM10038959.webp', '1'),
(355, 'OS-56018 WALL MIXER NON TELEPHONIC', 'Faucets', 'IM10060330', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060330.webp', '', 'IM10060330.webp', '1'),
(356, 'OS-56019 WALL MIXER TELE. WITH HAND\\nSHOWERS ARRANGEMENT ONLY WITH CRUTCH', 'Faucets', 'IM10060331', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060331.webp', '', 'IM10060331.webp', '1'),
(357, 'OS-56020 WALL MIXER WITH PROVISION\\nFOR OVERHEAD SHOWER WITH L-BEND', 'Faucets', 'IM10037408', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037408.webp', '', 'IM10037408.webp', '1'),
(358, 'OS-56021 WALL MIXER 3 IN 1 WITH L-BEND\\nPIPE FOR OVERHEAD SHOWER', 'Faucets', 'IM10037409', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037409.webp', '', 'IM10037409.webp', '1'),
(359, 'OS-56022 FLUSH COCK', 'Faucets', 'IM10060332', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Flush Cock', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060332.webp', '', 'IM10060332.webp', '1'),
(360, 'OS-56024 SINGLE LEVER BASIN MIXER\\nEXTENDED 12\\\" WITH LONG SPOUT 6.5”', 'Faucets', 'IM10037411', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037411.webp', '', 'IM10037411.webp', '1'),
(361, 'OS-56025 EXPOSED PART S/L\\nPROJECT DIV.', 'Faucets', 'IM10037412', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037412.webp', '', 'IM10037412.webp', '1'),
(362, 'OS-56026/27 S/L CONCEALED DIVERTOR EXPOSED\\nPART KIT CONSISTING OF OPERATING LEVER\\n& WALL FLANGE FOR DCP 525/535', 'Faucets', 'IM10037489', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037489.webp', '', 'IM10037489.webp', '1'),
(363, 'OS-56031 KNOB FOR DIVERTOR', 'Faucets', 'IM10060336', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060336.webp', '', 'IM10060336.webp', '1'),
(364, 'OS-56029 WALL SPOUT TIP TON FOR\\nHAND SHOWER WITH FLANGE', 'Faucets', 'IM10037490', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037490.webp', '', 'IM10037490.webp', '1'),
(365, 'OS-56028 WALL SPOUT PLAIN WITH FLANGE', 'Faucets', 'IM10037413', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10037413.webp', '', 'IM10037413.webp', '1'),
(366, 'OS-56033 EXPOSED PART KIT FOR C.S.C\\nCONSISTING OF LEVER, SLEEVE & FLANGE', 'Faucets', 'IM10060338', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060338.webp', '', 'IM10060338.webp', '1'),
(367, 'OS-56032 KNOB FOR COCKS', 'Faucets', 'IM10060337', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060337.webp', '', 'IM10060337.webp', '1'),
(368, 'OS-56031A KNOB FOR SINGLE LEVER', 'Faucets', 'IM10060335', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060335.webp', '', 'IM10060335.webp', '1'),
(369, 'OS-56047 WALL MIXER 3 IN 1 WITH L-BEND\\nPIPE FOR OVERHEAD SHOWER (SIDE HANDLE)', 'Faucets', 'IM10061385', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10061385.webp', '', 'IM10061385.webp', '1'),
(370, 'OS-56046 WALL MIXER WITH PROVISION\\nFOR OVERHEAD SHOWER WITH L-BEND\\n(SIDE HANDLE)', 'Faucets', 'IM10061384', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10061384.webp', '', 'IM10061384.webp', '1'),
(371, 'OS-56045 WALL MIXER TELE. WITH HAND\\nSHOWERS ARRANGEMENT ONLY\\nWITH CRUTCH (SIDE HANDLE)', 'Faucets', 'IM10061383', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10061383.webp', '', 'IM10061383.webp', '1'),
(372, 'OS-56046 WALL MIXER WITH PROVISION\\nFOR OVERHEAD SHOWER WITH L-BEND\\n(SIDE HANDLE)', 'Faucets', 'IM10061384', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10061384.webp', '', 'IM10061384.webp', '1'),
(373, 'OS-56047 WALL MIXER 3 IN 1 WITH L-BEND\\nPIPE FOR OVERHEAD SHOWER (SIDE HANDLE)', 'Faucets', 'IM10061385', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10061385.webp', '', 'IM10061385.webp', '1'),
(374, 'OS-56030 S/L BASIN MIXER WALL MOUNTED\\nEXPOSED PART KIT CONSISTING OF OPERATING LEVER,\\nWALL SPOUT & WALL FLANGE FOR DCP 545', 'Faucets', 'IM10060334', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060334.webp', '', 'IM10060334.webp', '1'),
(375, 'OS-56050 EXPOSED PART KIT FOR CONCEALED\\n4 WAY DIVERTOR FOR DCP 575', 'Faucets', 'IM10060339', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060339.webp', '', 'IM10060339.webp', '1'),
(376, '4 WAY C/S/C DIVERTOR (INNER PART)\\nFOR DCP 575', 'Faucets', 'IM10060284', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060284.webp', '', 'IM10060284.webp', '1'),
(377, 'OS-56055 SINGLE LEVER WALL MIXER WITH\\nARRANGEMENT FOR HAND SHOWER', 'Faucets', 'IM10060340', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060340.webp', '', 'IM10060340.webp', '1'),
(378, 'OS-56060 SINGLE LEVER WALL MIXER WITH\\nPROVISION FOR OVERHAND SHOWER\\nWITH PLAIN SPOUT', 'Faucets', 'IM10060341', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Oscar', '', '', '', 'products/bath-fittings/faucets/oscar/', 'IM10060341.webp', '', 'IM10060341.webp', '1'),
(379, 'PR-28017 CENTER HOLE BASIN MIXER', 'Faucets', 'IM10037423', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Prime', '', '', '', 'products/bath-fittings/faucets/prime/', 'IM10037423.webp', '', 'IM10037423.webp', '1'),
(380, 'PR-28001 BIB COCK SHORT BODY', 'Faucets', 'IM10037416', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Prime', '', '', '', 'products/bath-fittings/faucets/prime/', 'IM10037416.webp', '', 'IM10037416.webp', '1'),
(381, 'PR-28003 BIB COCK LONG NOSE', 'Faucets', 'IM10037417', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Prime', '', '', '', 'products/bath-fittings/faucets/prime/', 'IM10037417.webp', '', 'IM10037417.webp', '1'),
(382, 'PR-28004 BIB COCK NOZZLE', 'Faucets', 'IM10060363', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Prime', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(383, 'PR-28004A W. MACHINE NOZZLE BIB COCK', 'Faucets', 'IM10060362', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bib Cock', '', '', '', '', '', '', 'Prime', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(384, 'PR-28006 PILLAR COCK', 'Faucets', 'IM10037418', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Prime', '', '', '', 'products/bath-fittings/faucets/prime/', 'IM10037418.webp', '', 'IM10037418.webp', '1'),
(385, 'PR-28007 PILLAR COCK HIGH NECK', 'Faucets', 'IM10037491', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pillar Cock', '', '', '', '', '', '', 'Prime', '', '', '', 'products/bath-fittings/faucets/prime/', 'IM10037491.webp', '', 'IM10037491.webp', '1'),
(386, 'PR-28008 ANGLE COCK', 'Faucets', 'IM10037419', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Prime', '', '', '', 'products/bath-fittings/faucets/prime/', 'IM10037419.webp', '', 'IM10037419.webp', '1'),
(387, 'PR-28009/PR-28010 CONCEALED STOP COCK WITH\\nADJUSTABLE WALL FLANGE', 'Faucets', 'IM10037420 | 15mm\\nIM10060364 | 20mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Prime', '', '', '', 'products/bath-fittings/faucets/prime/\\n', 'IM10037420.webp', '', 'IM10037420.webp', '1'),
(388, 'PR-28009SC STOP COCK', 'Faucets', 'IM10061386', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Stop Cock', '', '', '', '', '', '', 'Prime', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(389, 'PR-28013 TWO WAY ANGLE COCK', 'Faucets', 'IM10037493', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Angle Cock', '', '', '', '', '', '', 'Prime', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(390, 'PR-28018 WALL MIXER NON TELEPHONIC', 'Faucets', 'IM10037421', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Prime', '', '', '', 'products/bath-fittings/faucets/prime/', 'IM10037421.webp', '', 'IM10037421.webp', '1'),
(391, 'PR-28019 WALL MIXER TELE. WITH HAND SHOWERS\\nARRANGEMENT ONLY WITH CRUTCH', 'Faucets', 'IM10060367', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Prime', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(392, 'PR-28020 WALL MIXER WITH PROVISION FOR\\nOVERHEAD SHOWER WITH L-BEND', 'Faucets', 'IM10037424', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Prime', '', '', '', 'products/bath-fittings/faucets/prime/', 'IM10037424.webp', '', 'IM10037424.webp', '1'),
(393, 'PR-28021 WALL MIXER 3 IN 1 WITH ‘L’ BEND\\nPIPE FOR OVERHEAD SHOWER', 'Faucets', 'IM10037494', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Prime', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(394, 'PR-28032 KNOB FOR COCK', 'Faucets', 'IM10060368', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Prime', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(395, 'PR-28033 EXPOSED PART KIT FOR C.S.C\\nCONSISTING OF LEVER, SLEEVE & FLANGE', 'Faucets', 'IM10060369', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Prime', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1'),
(396, 'H/Faucet ECO(Brass) with 1 mtr SS Tube and Brass Hook ', 'Health Faucets', 'IM10046489', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/health-faucets/', 'IM10046489.webp', '', 'IM10046489.webp', '1'),
(397, 'H/Faucet Square(Brass) with 1 mtr SS Tube and Brass Hook ', 'Health Faucets', 'IM10046490', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/health-faucets/', 'IM10046490.webp', '', 'IM10046490.webp', '1'),
(398, 'H/Faucet Milano with 1 mtr SS Tube and ABS Hook', 'Health Faucets', 'IM10046491', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/health-faucets/', 'IM10046491.webp', '', 'IM10046491.webp', '1'),
(399, 'H/Faucet AquaWith 1 mtr SS Tube & ABS Hook', 'Health Faucets', 'IM10046492', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/health-faucets/', 'IM10046492.webp', '', 'IM10046492.webp', '1'),
(400, 'H/Faucet Fusion with 1 mtr SS Tube & Abs Hook', 'Health Faucets', 'IM10046493', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/health-faucets/', 'IM10046493.webp', '', 'IM10046493.webp', '1'),
(401, 'OVER HEAD SHOWER 8”X8”', 'Showers', 'IM10046444', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8\\\'\\\'x8\\\"', 'Maze Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bath-fittings/showers/mazeshowers/', 'IM10046444.webp', '', 'IM10046444.webp', '1'),
(402, 'OVER HEAD SHOWER 10\\\'\\\'X10\\\'’', 'Showers', 'IM10046445', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10\\\'\\\'X10\\\'’', 'Maze Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bath-fittings/showers/mazeshowers/', 'IM10046445.webp', '', 'IM10046445.webp', '1'),
(403, 'OVER HEAD SHOWER 12”X12”', 'Showers', 'IM10046446', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12\\\'\\\'x12\\\'\\\'', 'Maze Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bath-fittings/showers/mazeshowers/', 'IM10046446.webp', '', 'IM10046446.webp', '1'),
(404, 'OVER HEAD SHOWER 6\\\'\\\'X6\\\'’', 'Showers', 'IM10046447', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6\\\'\\\'x6\\\'\\\'', 'Ultra Thin Showers', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/showers/ultra-thin-showers/', 'ultra-showers-over-head-shower-Im10046447.webp', '', 'ultra-showers-over-head-shower-Im10046447.webp', '1'),
(405, 'OVER HEAD SHOWER 8\\\'\\\'X8\\\'’', 'Showers', 'IM10046448', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8\\\'\\\'x8\\\'\\\'', 'Ultra Thin Showers', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/showers/ultra-thin-showers/', 'ultra-showers-over-head-shower-Im10046448.webp', '', 'ultra-showers-over-head-shower-Im10046448.webp', '1'),
(406, 'OVER HEAD SHOWER 10\\\'\\\'X10\\\'’', 'Showers', 'IM10046449', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10\\\'\\\'x10\\\'', 'Ultra Thin Showers', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/showers/ultra-thin-showers/', 'ultra-showers-over-head-shower-Im10046449.webp', '', 'ultra-showers-over-head-shower-Im10046449.webp', '1'),
(407, 'OVER HEAD SHOWER 12\\\'\\\'X12\\\'’', 'Showers', 'IM10046450', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12\\\'\\\'x12\\\'\\\' ', 'Ultra Thin Showers', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/showers/ultra-thin-showers/', 'ultra-showers-over-head-shower-Im10046450.webp', '', 'ultra-showers-over-head-shower-Im10046450.webp', '1'),
(408, 'OVER HEAD SHOWER 16\\\'\\\'X16\\\'’', 'Showers', 'IM10046451', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16\\\'\\\'x16\\\'\\\'', 'Ultra Thin Showers', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/showers/ultra-thin-showers/', 'ultra-showers-over-head-shower-Im10046451.webp', '', 'ultra-showers-over-head-shower-Im10046451.webp', '1'),
(409, 'WATER FALL & RAIN SHOWER 22\\\'\\\'X10\\\'\\\' (BRASS)', 'Showers', 'IM10046526', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '22\\\'\\\'x10\\\'\\\'', 'Cascade Showers', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/showers/cascade-showers/', 'IM10046526.webp', '', 'IM10046526.webp', '1'),
(410, 'Body Jet Showers - 6 Jets', 'Showers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Body Jet Showers - 6 Jets', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/showers/body-jet-showers/', '740.webp', '', '740.webp', '1'),
(411, 'Body Jet Showers - 4 Jets', 'Showers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Body Jet Showers - 4 Jets', '', '', '', '', '', '', '', '', '', '', '', 'product/bath-fittings/showers/body-jet-showers/', '694.webp', '', '694.webp', '1'),
(412, 'MULTIFUNCTION SHOWER WITH RAIN,MIST AND WATER FALL (SIZE - 24\\\'\\\' X 16\\\'\\\')', 'Showers', 'IM10046530', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '24\\\'\\\' X 16\\\'\\\'', 'Ceiling Showers', '', '', '', '', '', '', '', '', 'LED LIGHTS,RAIN,MIST FLOW,WATERFALL', '', '', 'product/bathfittings/showers/CeilingShowers/', 'IM10046530.webp', '', 'IM10046530.webp', '1'),
(413, 'RAIN SHOWER WITH FRAME (SIZE - 12\\\'\\\' X 12\\\'\\\')', 'Showers', 'IM10046533', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12\\\'\\\' X 12\\\'\\\'', 'Rain Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/RainShowers/', 'IM10046533.webp', '', 'IM10046533.webp', '1'),
(414, 'RAIN SHOWER WITH FRAME (SIZE - 16\\\'\\\' X 16\\\'\\\')', 'Showers', 'IM10046534', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16\\\'\\\' X 16\\\'\\\'', 'Rain Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/RainShowers/', 'IM10046534.webp', '', 'IM10046534.webp', '1'),
(415, 'RAIN SHOWER WITH FRAME(SIZE - 20\\\'\\\' X 20\\\'\\\')', 'Showers', 'IM10046535', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20\\\'\\\' X 20\\\'\\\'', 'Rain Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/RainShowers/', 'IM10046535.webp', '', 'IM10046535.webp', '1'),
(416, 'RAIN SHOWER WITH FRAME(SIZE - 24\\\'\\\' X 24\\\'\\\')', 'Showers', 'IM10046531', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '24\\\'\\\' X 24\\\'\\\'', 'Rain Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/RainShowers/', 'IM10046531.webp', '', 'IM10046531.webp', '1'),
(417, 'RAIN & MIST SHOWER WITH FRAME (Size- 12\\\'\\\' X 12\\\'\\\')', 'Showers', 'IM10046536', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12\\\'\\\' X 12\\\'\\\'', 'Rain & Mist Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/Rain&MistShowers/', 'IM10046536.webp', '', 'IM10046536.webp', '1'),
(418, 'RAIN & MIST SHOWER WITH FRAME(Size- 16\\\'\\\' X 16\\\'\\\')', 'Showers', 'IM10046537', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16\\\'\\\' X 16\\\'\\\'', 'Rain & Mist Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/Rain&MistShowers/', 'IM10046537.webp', '', 'IM10046537.webp', '1'),
(419, 'RAIN & MIST SHOWER WITH FRAME (SIZE- 20\\\'\\\' X 20\\\'\\\')', 'Showers', 'IM10046532', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20\\\'\\\' X 20\\\'\\\'', 'Rain & Mist Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/Rain&MistShowers/', 'IM10046532.webp', '', 'IM10046532.webp', '1'),
(420, 'RAIN & MIST SHOWER WITH FRAME (Size- 24\\\'\\\' X 24\\\'\\\')', 'Showers', 'IM10046538', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '24\\\'\\\' X 24\\\'\\\'', 'Rain & Mist Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/Rain&MistShowers/', 'IM10046538.webp', '', 'IM10046538.webp', '1'),
(421, 'OVER HEAD SHOWER 4\\\'\\\'X4\\\'\\\'', 'Showers', 'IM10046452', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' 4\\\'\\\'X4\\\'\\\'', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046452.webp', '', 'IM10046452.webp', '1'),
(422, 'OVER HEAD SHOWER 6\\\'\\\'X6\\\'\\\'', 'Showers', 'IM10046453', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6\\\'\\\'X6\\\'\\\'', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046453.webp', '', 'IM10046453.webp', '1'),
(423, 'OVER HEAD SHOWER 8\\\'\\\'X8\\\'\\\'', 'Showers', 'IM10046454', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8\\\'\\\'x8\\\'\\\'', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046454.webp', '', 'IM10046454.webp', '1'),
(424, 'OVER HEAD SHOWER 8\\\'\\\'X8\\\'\\\' WITH AIR SYSTEM', 'Showers', 'IM10046455', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8\\\'\\\'x8\\\'\\\'', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046455.webp', '', 'IM10046455.webp', '1'),
(425, 'OVER HEAD SHOWER 4\\\'\\\'X4\\\'\\\' SQUARE WITH FALL', 'Showers', 'IM10046456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' 4\\\'\\\'X4\\\'\\\'', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046456.webp', '', 'IM10046456.webp', '1'),
(426, 'OVER HEAD SHOWER 8\\\'\\\'X8\\\'\\\' SQUARE WITH FALL', 'Showers', 'IM10046457', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8\\\'\\\'x8\\\'\\\'', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046457.webp', '', 'IM10046457.webp', '1'),
(427, 'OVER HEAD SHOWER 8\\\'\\\'X8\\\'\\\' SQUARE WITH AIR SYSTEM', 'Showers', 'IM10046458', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8\\\'\\\'x8\\\'\\\'', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046458.webp', '', 'IM10046458.webp', '1'),
(428, 'OVER HEAD SHOWER 8\\\'\\\' ROUND WITH AIR', 'Showers', 'IM10046459', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8\\\'\\\'', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046459.webp', '', 'IM10046459.webp', '1'),
(429, 'OVER HEAD 5-FUNCTION SHOWER\\n(RAIN, MIST & MASSAGE) WITH ARM & FLANGE', 'Showers', 'IM10046460', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046460.webp', '', 'IM10046460.webp', '1'),
(430, 'OVER HEAD SHOWER DUSTER', 'Showers', 'IM10046487', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046487.webp', '', 'IM10046487.webp', '1'),
(431, 'OVER HEAD SHOWER AQUA MULTI 3-FUNCTION (RAIN & MASSAGE)', 'Showers', 'IM10046488', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046488.webp', '', 'IM10046488.webp', '1'),
(432, 'OVER HEAD SHOWER NERO 5-FUNCTION (RAIN, MIST & MASSAGE)', 'Showers', 'IM10046486', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046486.webp', '', 'IM10046486.webp', '1'),
(433, 'OVER HEAD SHOWER ONYX 4-FUNCTION (RAIN, INTENSE & MASSAGE)', 'Showers', 'IM10046485', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Over Head Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/OverHeadShowers/', 'IM10046485.webp', '', 'IM10046485.webp', '1'),
(434, 'BRASS ROUND SHOWER ARM WITH FLANGE', 'Showers', 'IM10046461,IM10046462,IM10046463,IM10046464', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Shower Arms', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/ShowerArms/IM10046461,IM10046462,IM10046463,IM10046464.webp', 'IM10046461.webp', '', 'IM10046461.webp', '1'),
(435, 'BRASS SQUARE SHOWER ARM WITH FLANGE', 'Showers', 'IM10046465,IM10046466,IM10046467,IM10046468', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Shower Arms', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/ShowerArms/', 'IM10046465.webp', '', 'IM10046465.webp', '1'),
(436, 'SS ROUND SHOWER ARM WITH FLANGE', 'Showers', 'IM10046469,IM10046470,IM10046471,IM10046472', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Shower Arms', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/ShowerArms/', 'IM10046469.webp', '', 'IM10046469.webp', '1'),
(437, 'SS SQUARE SHOWER ARM WITH FLANGE', 'Showers', 'IM10046473,IM10046474,IM10046475,IM10046476', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Shower Arms', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/ShowerArms/IM10046473,IM10046474,IM10046475,IM10046476.webp', 'IM10046473.webp', '', 'IM10046473.webp', '1'),
(438, 'SS CELING ARM WITH FLANGE 10\\\'’', 'Showers', 'IM10046477', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Shower Arms', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/ShowerArms/', 'IM10046477.webp', '', 'IM10046477.webp', '1'),
(439, 'TELEPHONIC SHOWER WITH  1.5MTR SS TUBE', 'Showers', 'IM10046480', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Hand Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/HandShowers/', 'IM10046480.webp', '', 'IM10046480.webp', '1'),
(440, 'TELEPHONIC SHOWER 4-FUNCTION (RAIN, INTENSE & MASSAGE) WITH 1.5MTR SS TUBE', 'Showers', 'IM10046481', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Hand Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/HandShowers/', 'IM10046481.webp', '', 'IM10046481.webp', '1'),
(441, 'TELEPHONIC SHOWER 5-FUNCTION (RAIN, MIST & MASSAGE) WITH 1.5MTR SS TUBE', 'Showers', 'IM10046482', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Hand Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/HandShowers/', 'IM10046482.webp', '', 'IM10046482.webp', '1'),
(442, 'TELEPHONIC SHOWER WITH 1.5MTR SS TUBE', 'Showers', 'IM10046483', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Hand Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/HandShowers/', 'IM10046483.webp', '', 'IM10046483.webp', '1'),
(443, 'TELEPHONIC SHOWER AQUA MULTI WITH 1.5MTR SS TUBE', 'Showers', 'IM10046484', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Hand Showers', '', '', '', '', '', '', '', '', '', '', '', 'product/bathfittings/showers/HandShowers/', 'IM10046484.webp', '', 'IM10046484.webp', '1'),
(444, 'SHOWER HEAD FULL SET-Black', 'Shower Sets', 'IM10062119', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-sets/', 'IM10062119.webp', '', 'IM10062119.webp', '1'),
(445, 'SHOWER HEAD FULL SET-CHROME', 'Shower Sets', 'IM10062121', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-sets/', 'IM10062121.webp', '', 'IM10062121.webp', '1'),
(446, 'SHOWER HEAD FULL SET-BLACK+ROSE GLOD', 'Shower Sets', 'IM10062122', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Black & Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-sets/', 'IM10062122.webp', '', 'IM10062122.webp', '1'),
(447, 'DIGITAL DISPLAY SHOWERS HEAD SET -MATT BLACK', 'Shower Sets', 'IM10062126', '', '', '', '', '', '', '', '', 'Black Matt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-sets/', 'IM10062126.webp', '', 'IM10062126.webp', '1'),
(448, 'DIGITAL MULTIFUNCTION SHOWER HEAD SHOWER SET', 'Shower Sets', 'IM10062127', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-sets/', 'IM10062127.webp', '', 'IM10062127.webp', '1'),
(449, 'DIGITAL MULTIFUNCTION SHOWER HEAD SET BLACK', 'Shower Sets', 'IM10062128', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-sets/', 'IM10062128.webp', '', 'IM10062128.webp', '1'),
(450, 'IV 718GSS304 Wave Pattern ', 'Floor Drains', 'IM10062130', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062130.webp', '', 'IM10062130.webp', '1'),
(451, 'IV 718GSS304 Wave Pattern\\n \\n', 'Floor Drains', 'IM10062131', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062131.webp', '', 'IM10062131.webp', '1'),
(452, 'IV 718GSS304 Wave Pattern\\n\\n', 'Floor Drains', 'IM10062132', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062132.webp', '', 'IM10062132.webp', '1'),
(453, 'IV 718GSS304 Wave Pattern', 'Floor Drains', 'IM10062133', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062133.webp', '', 'IM10062133.webp', '1'),
(454, 'IV 1040GSS304 Wave Pattern', 'Floor Drains', 'IM10062134', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062134.webp', '', 'IM10062134.webp', '1'),
(455, 'IV 1040GSS304 Wave Pattern', 'Floor Drains', 'IM10062135', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062135.webp', '', 'IM10062135.webp', '1'),
(456, 'IV 1040GSS304 Wave Pattern', 'Floor Drains', 'IM10062136', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062136.webp', '', 'IM10062136.webp', '1'),
(457, 'IV 1040GSS304 Wave Pattern', 'Floor Drains', 'IM10062137', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062137.webp', '', 'IM10062137.webp', '1'),
(458, 'IV 370GSS304', 'Floor Drains', 'IM10062138', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062138.webp', '', 'IM10062138.webp', '1'),
(459, 'IV 370GSS304', 'Floor Drains', 'IM10062139', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062139.webp', '', 'IM10062139.webp', '1'),
(460, 'IV 370GSS304', 'Floor Drains', 'IM10062140', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062140.webp', '', 'IM10062140.webp', '1'),
(461, 'IV 370GSS304', 'Floor Drains', 'IM10062141', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062141.webp', '', 'IM10062141.webp', '1'),
(462, 'IV 530GSS304', 'Floor Drains', 'IM10062142', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062142.webp', '', 'IM10062142.webp', '1'),
(463, 'IV 530GSS304', 'Floor Drains', 'IM10062143', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062143.webp', '', 'IM10062143.webp', '1'),
(464, 'IV 530GSS304', 'Floor Drains', 'IM10062144', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062144.webp', '', 'IM10062144.webp', '1'),
(465, 'IV 530GSS304', 'Floor Drains', 'IM10062145', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062145.webp', '', 'IM10062145.webp', '1'),
(466, 'IV 370GSS304 Hidden', 'Floor Drains', 'IM10062146', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062146.webp', '', 'IM10062146.webp', '1'),
(467, 'IV 370GSS304 Hidden', 'Floor Drains', 'IM10062147', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062147.webp', '', 'IM10062147.webp', '1'),
(468, 'IV 370GSS304 Hidden', 'Floor Drains', 'IM10062148', '', '', '', '', '', '', '', 'Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062148.webp', '', 'IM10062148.webp', '1'),
(469, 'IV 370GSS304 Hidden', 'Floor Drains', 'IM10062149', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062149.webp', '', 'IM10062149.webp', '1'),
(470, 'IV 530GSS304 Hidden', 'Floor Drains', 'IM10062150', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062150.webp', '', 'IM10062150.webp', '1'),
(471, 'IV 530GSS304 Hidden', 'Floor Drains', 'IM10062151', '', '', '', '', '', '', 'Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062151.webp', '', 'IM10062151.webp', '1'),
(472, 'IV 530GSS304 Hidden', 'Floor Drains', 'IM10062152', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062152.webp', '', 'IM10062152.webp', '1'),
(473, 'IV 530GSS304 Hidden', 'Floor Drains', 'IM10062153', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/floor-drains/', 'IM10062153.webp', '', 'IM10062153.webp', '1'),
(474, 'Hook (ABS) Sleek', 'Allied Products', 'IM10046539', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046539.webp', '', 'IM10046539.webp', '1'),
(475, 'Hook Fixed (Brass)', 'Allied Products', 'IM10046540', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046540.webp', '', 'IM10046540.webp', '1'),
(476, 'Jet with Brass Patti (1 mtr)', 'Allied Products', 'IM10046494', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046494.webp', '', 'IM10046494.webp', '1'),
(477, 'Jet with Brass Patti (1.5 mtr)', 'Allied Products', 'IM10046495', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046495.webp', '', 'IM10046495.webp', '1'),
(478, 'Brass Flange (Sleek)', 'Allied Products', 'IM10046541', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046541.webp', '', 'IM10046541.webp', '1'),
(479, 'Brass Flange (Square Small)', 'Allied Products', 'IM10046542', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046542.webp', '', 'IM10046542.webp', '1'),
(480, 'PVC Connection Pipe (Heavy Duty) 12\\\"', 'Allied Products', 'IM10046496', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046496.webp', '', 'IM10046496.webp', '1'),
(481, 'PVC Connection Pipe (Heavy Duty) 18\\\"', 'Allied Products', 'IM10046497', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046497.webp', '', 'IM10046497.webp', '1'),
(482, 'PVC Connection Pipe (Heavy Duty) 24\\\"', 'Allied Products', 'IM10046498', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046498.webp', '', 'IM10046498.webp', '1'),
(483, 'SS Connection Pipe 24\\\" ', 'Allied Products', 'IM10046499', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046499.webp', '', 'IM10046499.webp', '1'),
(484, 'SS Connection Pipe 24\\\'’', 'Allied Products', 'IM10046500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046500.webp', '', 'IM10046500.webp', '1'),
(485, 'SS Shower Tube 1 mtr', 'Allied Products', 'IM10046519', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046519.webp', '', 'IM10046519.webp', '1'),
(486, 'SS Shower Tube 1.5 mtr', 'Allied Products', 'IM10046520', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046520.webp', '', 'IM10046520.webp', '1'),
(487, 'Hex Nipple', 'Allied Products', 'IM10046506', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046506.webp', '', 'IM10046506.webp', '1'),
(488, 'CP Extension Piece 1\\\'\\\'', 'Allied Products', 'IM10046507', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046507.webp', '', 'IM10046507.webp', '1'),
(489, 'CP Extension Piece 1.5\\\'\\\'', 'Allied Products', 'IM10046508', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046508.webp', '', 'IM10046508.webp', '1'),
(490, 'CP Extension Piece 2\\\'\\\'', 'Allied Products', 'IM10046509', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046509.webp', '', 'IM10046509.webp', '1'),
(491, 'CP Extension Piece 2.5\\\'\\\'', 'Allied Products', 'IM10046510', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046510.webp', '', 'IM10046510.webp', '1'),
(492, 'SS Floor Grating Plain 4\\\'\\\'', 'Allied Products', 'IM10046511', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046511.webp', '', 'IM10046511.webp', '1'),
(493, 'SS Floor Grating Plain 5\\\'\\\'', 'Allied Products', 'IM10046512', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046512.webp', '', 'IM10046512.webp', '1'),
(494, 'SS Floor Grating Hole 5\\\'\\\'', 'Allied Products', 'IM10046513', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046513.webp', '', 'IM10046513.webp', '1'),
(495, 'SS Floor Grating 5\\\'\\\' Plain With Frame', 'Allied Products', 'IM10046514', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046514.webp', '', 'IM10046514.webp', '1'),
(496, 'SS Floor Grating 5\\\'\\\' Plain With Frame Flower', 'Allied Products', 'IM10046515', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046515.webp', '', 'IM10046515.webp', '1'),
(497, 'SS Cockroach Trap Plain Round', 'Allied Products', 'IM10046516', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046516.webp', '', 'IM10046516.webp', '1'),
(498, 'SS Floor Grating 5\\\'\\\'X 5\\\'\\\' Square With Frame', 'Allied Products', 'IM10046517', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046517.webp', '', 'IM10046517.webp', '1'),
(499, 'SS Floor Grating 6\\\'\\\'X 6\\\'\\\' Square With Frame', 'Allied Products', 'IM10046518', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046518.webp', '', 'IM10046518.webp', '1'),
(500, 'Urinal Waste', 'Allied Products', 'IM10046521', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046521.webp', '', 'IM10046521.webp', '1'),
(501, 'CP Urinal Header', 'Allied Products', 'IM10046522', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046522.webp', '', 'IM10046522.webp', '1'),
(502, 'Teflon Tape', 'Allied Products', 'IM10046523', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046523.webp', '', 'IM10046523.webp', '1'),
(503, 'CP Plug', 'Allied Products', 'IM10046501', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046501.webp', '', 'IM10046501.webp', '1'),
(504, 'CP Elbow', 'Allied Products', 'IM10046502', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046502.webp', '', 'IM10046502.webp', '1'),
(505, 'CP Tee', 'Allied Products', 'IM10046503', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10046503.webp', '', 'IM10046503.webp', '1'),
(506, 'Waste Coupling SS (F/T) 3”', 'Allied Products', 'IM10057508', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10057508.webp', '', 'IM10057508.webp', '1'),
(507, 'Waste Coupling SS (F/T) 3”', 'Allied Products', 'IM10062967', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10062967.webp', '', 'IM10062967.webp', '1'),
(508, 'Waste Coupling SS (F/T) 5”', 'Allied Products', 'IM10062968', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10062968.webp', '', 'IM10062968.webp', '1'),
(509, 'Waste Coupling SS (F/T) 7”', 'Allied Products', 'IM10062969', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10062969.webp', '', 'IM10062969.webp', '1'),
(510, 'IV Pop-Up Waste Coupling SS (Brass) 3”', 'Allied Products', 'IM10062970', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10062970.webp', '', 'IM10062970.webp', '1'),
(511, 'IV Pop-Up Waste Coupling SS (Brass) 5”', 'Allied Products', 'IM10062971', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10062971.webp', '', 'IM10062971.webp', '1'),
(512, 'IV Pop-Up Waste Coupling SS (Brass) 7”', 'Allied Products', 'IM10062972', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10062972.webp', '', 'IM10062972.webp', '1');
INSERT INTO `bath_fitting` (`product_id`, `product_name`, `category`, `im_code`, `colour`, `colour_one`, `colour_two`, `colour_three`, `colour_four`, `colour_five`, `colour_six`, `colour_seven`, `colour_eight`, `colour_nine`, `colour_ten`, `colour_eleven`, `colour_twelve`, `colour_thirteen`, `packing`, `dimension`, `type`, `cock_type`, `finish`, `finish_one`, `finish_two`, `finish_three`, `finish_four`, `finish_five`, `collection`, `features`, `other`, `weight`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`) VALUES
(513, 'IV PWC0406(BM) Pop-Up Waste Coupling 6”', 'Allied Products', 'IM10065609', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/allied-products/', 'IM10065609.webp', '', 'IM10065609.webp', '1'),
(514, 'IV GA102 LED Mirror Tech Light 450X600', 'Mirrors', 'IM10062103', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '450X600', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/mirrors/', 'IM10062103.webp', '', 'IM10062103.webp', '1'),
(515, 'IV GA110 LED Mirror Tech Light 450X600', 'Mirrors', 'IM10062104', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '450X600', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/mirrors/', 'IM10062104.webp', '', 'IM10062104.webp', '1'),
(516, 'IV GB203 LED Mirror Tech Light 450X600', 'Mirrors', 'IM10062105', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '450X600', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/mirrors/', 'IM10062105.webp', '', 'IM10062105.webp', '1'),
(517, 'IV GC305 LED Mirror Tech Light 400X400', 'Mirrors', 'IM10062106', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '400X400', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/mirrors/', 'IM10062106.webp', '', 'IM10062106.webp', '1'),
(518, 'IV GC307 LED Mirror Tech Light 400X400', 'Mirrors', 'IM10062107', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '400X400', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/mirrors/', 'IM10062107.webp', '', 'IM10062107.webp', '1'),
(519, 'IV 8046 DIGITAL FUNCTION KITCHEN SINK WITH ACCESSORIES & FAUCET (BLACK)', 'Smart Kitchen Sink', 'IM10062117', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/smart-kitchen-sink/', 'IV-8046.webp', '', 'IV-8046.webp', '1'),
(520, 'IV NH8046 SMART SERIES KITCHEN SINK WITH ACCESSORIES & FAUCET', 'Smart Kitchen Sink', 'IM10062118', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/smart-kitchen-sink/', 'IV-NH8046.webp', '', 'IV-NH8046.webp', '1'),
(521, 'Quartz Kitchen Sink 18X21\\\" ', 'Kitchen Sinks', 'IM10037842(Granite White), IM10037840(Granite Grey), IM10037841(Granite Red), IM10037843(Granite Yellow),IM10037847(Mettalic White),IM10037846(Mettalic Grey),IM10037845(Mettalic Brown),IM10037844(Mettalic Black)', 'White', 'Grey', 'Red', 'Yellow', 'Brown', 'Black', '', '', '', '', '', '', '', '', '', '18X21\\\"', 'Quartz Kitchen Sinks', '', 'Granite White', 'Granite Grey', 'Granite Red', 'Granite Yellow', 'Mettalic White', 'Mettalic Grey', '', '', '', '10.0 kgs (approx.)', 'products/bath-fittings/kitchen-sinks/quartz-kitchen-sink/', 'im10037842.webp', '', 'im10037842.webp', '1'),
(522, 'Quartz Kitchen Sink 18X36\\\" ', 'Kitchen Sinks', 'IM10042327(Granite White), IM10047056(Granite Grey), IM10042329(Granite Red), IM10042328(Granite Yellow),IM10046966(Mettalic White),IM10042326(Mettalic Grey),IM10046965(Mettalic Brown),IM10042325(Mettalic Black)', 'White', 'Grey', 'Red', 'Yellow', 'Brown', 'Black', '', '', '', '', '', '', '', '', '', '18X36\\\" ', 'Quartz Kitchen Sinks', '', 'Granite White', 'Granite Grey', 'Granite Red', 'Granite Yellow', 'Mettalic White', 'Mettalic Grey', '', '', '', '10.0 kgs (approx.)', 'products/bath-fittings/kitchen-sinks/quartz-kitchen-sink/', 'im10042327.webp', '', 'im10042327.webp', '1'),
(523, 'Quartz Kitchen Sink 18X40\\\" ', 'Kitchen Sinks', 'IM10042320(Granite White), IM10042318(Granite Grey), IM10042319(Granite Red), IM10042317(Granite Yellow),IM10042322(Mettalic White),IM10042321(Mettalic Grey),IM10042323(Mettalic Brown),IM10042324(Mettalic Black)', 'White', 'Grey', 'Red', 'Yellow', 'Brown', 'Black', '', '', '', '', '', '', '', '', '', '18X40\\\"', 'Quartz Kitchen Sinks', '', 'Granite White', 'Granite Grey', 'Granite Red', 'Granite Yellow', 'Mettalic White', 'Mettalic Grey', '', '', '', '10.0 kgs (approx.)', 'products/bath-fittings/kitchen-sinks/quartz-kitchen-sink/', 'im10042320.webp', '', 'im10042320.webp', '1'),
(524, 'Quartz Kitchen Sink 18X24\\\" ', 'Kitchen Sinks', 'IM10037839(Granite White), IM10037843(Granite Grey), IM10046963(Granite Red), IM10046962(Granite Yellow),IM10057345(Granite Blue),IM10037848(Mettalic White),IM10037601(Mettalic Grey),IM10037600(Mettalic Brown),IM10037599(Mettalic Black)', 'White', 'Grey', 'Red', 'Yellow', 'Brown', 'Blue', '', '', '', '', '', '', '', '', '', '18X24\\\"', 'Quartz Kitchen Sinks', '', 'Granite White', 'Granite Grey', 'Granite Red', 'Granite Yellow', 'Granite Blue', 'Mettalic White', '', '', '', '10.0 kgs (approx.)', 'products/bath-fittings/kitchen-sinks/quartz-kitchen-sink/', 'im10037839.webp', '', 'im10037839.webp', '1'),
(525, 'PREMIUM - 18 x 16 x 8', 'Kitchen Sinks', 'IM10017709', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 16 x 8', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10017709.webp', '', 'im10017709.webp', '1'),
(526, 'PREMIUM - 21 x 18 x 8', 'Kitchen Sinks', 'IM10017713', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '21 x 18 x 8', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10017713.webp', '', 'im10017713.webp', '1'),
(527, 'PREMIUM - 24 x 18 x 9', 'Kitchen Sinks', 'IM10017719', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '24 x 18 x 9', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10017719.webp', '', 'im10017719.webp', '1'),
(528, 'STANDARD - 15 x 12', 'Kitchen Sinks', 'IM10017707', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '15 x 12', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10017707.webp', '', 'im10017707.webp', '1'),
(529, 'STANDARD - 18 x 16', 'Kitchen Sinks', 'IM10017711', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 16', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10017711.webp', '', 'im10017711.webp', '1'),
(530, 'STANDARD - 18 x 21', 'Kitchen Sinks', 'IM10017715', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 21', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10017715.webp', '', 'im10017715.webp', '1'),
(531, 'STANDARD - 18 x 24', 'Kitchen Sinks', 'IM10017720', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 24', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10017720.webp', '', 'im10017720.webp', '1'),
(532, 'REGULAR - 18 x 16', 'Kitchen Sinks', 'IM10017710', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 16', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10017710.webp', '', 'im10017710.webp', '1'),
(533, 'REGULAR - 21 x 18', 'Kitchen Sinks', 'IM10017714', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '21 x 18', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10017714.webp', '', 'im10017714.webp', '1'),
(534, 'SS 304 - 18 x 16', 'Kitchen Sinks', 'IM10017708', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 16', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10017708.webp', '', 'im10017708.webp', '1'),
(535, 'SS 304 - 21 x 18', 'Kitchen Sinks', 'IM00000244', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '21 x 18', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im00000244.webp', '', 'im00000244.webp', '1'),
(536, 'SS 304 - 24 x 18', 'Kitchen Sinks', 'IM10057344', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '24 x 18', 'Single Bowl Sinks', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10057344webp', '', 'im10057344webp', '1'),
(537, 'HAND MADE SS 304 (MATT) - 18 x 24', 'Kitchen Sinks', 'IM10058327', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 24', 'Single Bowl Sinks', '', 'Matt', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10058327.webp', '', 'im10058327.webp', '1'),
(538, 'HAND MADE (MATT) - 18 x 16', 'Kitchen Sinks', 'IM10046946', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 16', 'Single Bowl Sinks', '', 'Matt', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10046946.webp', '', 'im10046946.webp', '1'),
(539, 'HAND MADE (MATT) - 18 x 21', 'Kitchen Sinks', 'IM00000245', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 21', 'Single Bowl Sinks', '', 'Matt', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im00000245.webp', '', 'im00000245.webp', '1'),
(540, 'HAND MADE (MATT) - 18 x 24', 'Kitchen Sinks', 'IM10037593', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 24', 'Single Bowl Sinks', '', 'Matt', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10037593.webp', '', 'im10037593.webp', '1'),
(541, 'HAND MADE (MIRROR) - 18 x 21', 'Kitchen Sinks', 'IM10037590', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 21', 'Single Bowl Sinks', '', 'Mirror', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10037590.webp', '', 'im10037590.webp', '1'),
(542, 'HAND MADE (COPPER) - 18 x 24', 'Kitchen Sinks', 'IM10037591', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 x 24', 'Single Bowl Sinks', '', 'Copper', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/kitchen-sinks/single-bowl-sinks/', 'im10037591.webp', '', 'im10037591.webp', '1'),
(543, 'SHOWER PANEL ALUMINUM S/L DIV. 3BJET,RS,HS SPOUT-BLACK', 'Shower Panels', 'IM10062160', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-panels/', 'IM10062160.webp', '', 'IM10062160.webp', '1'),
(544, 'SHOWER PANEL SS304 S/L DIV. 4BJET, RS,HS SPOUT- BLUSH MATT BLACK', 'Shower Panels', 'IM10062492', '', '', '', '', '', '', '', '', '', '', '', '', 'Blush Matt Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-panels/', 'IM10062492.webp', '', 'IM10062492.webp', '1'),
(545, 'SHOWER PANEL SS304 S/L DIV. 4BJET, RS,HS SPOUT- BLUSH MATT ROSE GOLD', 'Shower Panels', 'IM10062493', '', '', '', '', '', '', '', '', '', '', '', '', 'Blush Matt Rose Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-panels/', 'IM10062493.webp', '', 'IM10062493.webp', '1'),
(546, 'SHOWER PANEL SS304 S/L DIV. 4BJET,RS,HS SPOUT', 'Shower Panels', 'IM10062494', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-panels/', 'IM10062494.webp', '', 'IM10062494.webp', '1'),
(547, 'Shower Panel SS304 S/L Div. 4BJET,RS,HS spout', 'Shower Panels', 'IM10062495', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/shower-panels/', 'IM10062495.webp', '', 'IM10062495.webp', '1'),
(548, 'IV 1506 Single Lever Kitchen Sink Mixer - Chrome', 'Exclusive Sink Faucets', 'IM10062120', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10062120.webp', '', 'IM10062120.webp', '1'),
(549, 'IV 4306 Single Lever Kitchen Sink Mixer - Chrome', 'Exclusive Sink Faucets', 'IM10062123', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10062123.webp', '', 'IM10062123.webp', '1'),
(550, 'IV 2603A Single Lever Kitchen Sink Mixer - Chrome', 'Exclusive Sink Faucets', 'IM10062124', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10062124.webp', '', 'IM10062124.webp', '1'),
(551, 'IV 8818 Single Lever Kitchen Sink Mixer - Chrome', 'Exclusive Sink Faucets', 'IM10062125', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10062125.webp', '', 'IM10062125.webp', '1'),
(552, 'IV 9943 Single Lever Kitchen Sink Mixer - Zirconium Gold', 'Exclusive Sink Faucets', 'IM10062154', '', '', '', '', '', '', '', '', '', '', 'Zirconium Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10062154.webp', '', 'IM10062154.webp', '1'),
(553, 'IV 9943 Single Lever Kitchen Sink Mixer - Black', 'Exclusive Sink Faucets', 'IM10062155', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10062155.webp', '', 'IM10062155.webp', '1'),
(554, 'IV LY Single Lever Kitchen Sink Mixer - Brushed Gold', 'Exclusive Sink Faucets', 'IM10062156', '', '', '', '', '', '', '', '', '', '', '', 'Brushed Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10062156.webp', '', 'IM10062156.webp', '1'),
(555, 'IV V6 Single Lever Kitchen Sink Mixer - Chrome', 'Exclusive Sink Faucets', 'IM10062157', '', '', '', '', '', '', '', '', '', 'Chrome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10062157.webp', '', 'IM10062157.webp', '1'),
(556, 'IV V6 Single Lever Kitchen Sink Mixer - Zirconium Gold', 'Exclusive Sink Faucets', 'IM10062158', '', '', '', '', '', '', '', '', '', '', 'Zirconium Gold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10062158.webp', '', 'IM10062158.webp', '1'),
(557, 'IV 9941 Single Lever Kitchen Sink Mixer - Black', 'Exclusive Sink Faucets', 'IM10062159', '', '', '', '', '', 'Black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10062159.webp', '', 'IM10062159.webp', '1'),
(558, 'Single Lever Sink Mixer Table Mounted Brass With Flexible Spout (Single Flow)', 'Exclusive Sink Faucets', 'IM10046546', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10046546.webp', '', 'IM10046546.webp', '1'),
(559, 'Single Lever Sink Mixer Table Mounted Brass With Flexible Spout (Single Flow)', 'Exclusive Sink Faucets', 'IM10046547', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/exclusive-sink-faucets/', 'IM10046547.webp', '', 'IM10046547.webp', '1'),
(560, 'SLIDING BAR SQUARE BRASS', 'Sliding Rails', 'IM10046478', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/sliding-rails/', 'IM10046478.webp', '', 'IM10046478.webp', '1'),
(561, 'SLIDING BAR ROUND BRASS', 'Sliding Rails', 'IM10046479', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/sliding-rails/', 'IM10046479.webp', '', 'IM10046479.webp', '1'),
(562, 'SLIDING BAR OVAL ABS', 'Sliding Rails', 'IM10046543', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/bath-fittings/sliding-rails/', 'IM10046543.webp', '', 'IM10046543.webp', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bath_fittings_leads`
--

CREATE TABLE `bath_fittings_leads` (
  `id` int(25) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `utm_source` varchar(255) NOT NULL,
  `utm_medium` varchar(255) NOT NULL,
  `utm_campaign` varchar(255) NOT NULL,
  `utm_term` varchar(255) NOT NULL,
  `utm_content` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `intrest` int(20) NOT NULL DEFAULT 2 COMMENT '1 - Intrested, 2 - Not Intrested  '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bath_fittings_leads`
--

INSERT INTO `bath_fittings_leads` (`id`, `sname`, `phone`, `email`, `city`, `utm_source`, `utm_medium`, `utm_campaign`, `utm_term`, `utm_content`, `timestamp`, `intrest`) VALUES
(1, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai', '', '', '', '', '', '0000-00-00 00:00:00', 2),
(2, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai Pune', '', '', '', '', '', '2023-04-28 13:54:10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bath_fitting_address_details`
--

CREATE TABLE `bath_fitting_address_details` (
  `id` int(20) NOT NULL,
  `title` varchar(75) NOT NULL,
  `address` varchar(1500) NOT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(10) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `bath_fitting_city_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bath_fitting_address_details`
--

INSERT INTO `bath_fitting_address_details` (`id`, `title`, `address`, `location`, `city`, `pincode`, `direction`, `bath_fitting_city_id`) VALUES
(1, 'ccomdigital', 'C Com Digital, 10, Wadala Udyog Bhavan, Naigaon Cross Road, Telephone Exchn, near Wadala, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Mumbai', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1),
(2, 'I.C.E Asia Pvt Limited', 'India Printing House, 202, G D Ambekar Rd, Sahakar Nagar, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Delhi', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 4),
(3, 'Rajdeep Automation Pvt Ltd', ' B-27 3rd Floor, Shriram Industrial Estate, 13, G D Ambedkar Road, Wadala, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Pune', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 2),
(4, 'RJ Group of Companies', '201, Awaas CHS, Pralhad Nagar, Ahmedabad, Gujarat - 380001', 'Pralhad Nagar', 'Ahmedabad', 380001, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 14),
(5, 'Netcore Cloud', 'Peninsula Towers, Peninsula Corporate Park, Peninsula Tower\'s Walk way, Lower Parel West, Lower Parel, Mumbai, Maharashtra 400013', 'Lower Parel', 'Mumbai', 400013, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bath_fitting_city`
--

CREATE TABLE `bath_fitting_city` (
  `city_id` int(11) NOT NULL,
  `city_name` text NOT NULL,
  `bath_fitting_state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bath_fitting_city`
--

INSERT INTO `bath_fitting_city` (`city_id`, `city_name`, `bath_fitting_state_id`) VALUES
(1, 'Mumbai', 1),
(2, 'Pune', 1),
(3, 'Nagpur', 1),
(4, 'New Delhi', 2),
(5, 'Taj Pul', 2),
(6, 'Mandoli', 2),
(7, 'Vishakhapatnam', 4),
(8, 'Tirupati', 4),
(9, 'Rajarhat Gopalpur', 5),
(10, 'Bhatpara', 5),
(11, 'Panihati', 5),
(12, 'Amritsar', 6),
(13, 'Ludhiana', 6),
(14, 'Ahmedabad', 7),
(15, 'Surat', 7);

-- --------------------------------------------------------

--
-- Table structure for table `bath_fitting_state`
--

CREATE TABLE `bath_fitting_state` (
  `id` int(20) NOT NULL,
  `state_name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bath_fitting_state`
--

INSERT INTO `bath_fitting_state` (`id`, `state_name`) VALUES
(1, 'Maharashtra'),
(2, 'Delhi'),
(3, 'Gujarat'),
(4, 'Uttar Pradesh'),
(5, 'Sikkim'),
(6, 'Tamil Nadu'),
(7, 'Telangana'),
(8, 'West Bengal'),
(9, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `become_dealer_leads`
--

CREATE TABLE `become_dealer_leads` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Modular Kitchen'),
(2, 'Designer Hardware'),
(3, 'Sanitaryware'),
(4, 'Tiles'),
(5, 'Bath Fittings');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` text NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `state_id`) VALUES
(1, 'Mumbai', 1),
(2, 'Pune', 1),
(3, 'Nagpur', 1),
(4, 'New Delhi', 2),
(5, 'Taj Pul', 2),
(6, 'Mandoli', 2),
(7, 'Vishakhapatnam', 4),
(8, 'Tirupati', 4),
(9, 'Rajarhat Gopalpur', 5),
(10, 'Bhatpara', 5),
(11, 'Panihati', 5),
(12, 'Amritsar', 6),
(13, 'Ludhiana', 6),
(14, 'Ahmedabad', 7),
(15, 'Surat', 7);

-- --------------------------------------------------------

--
-- Table structure for table `designer_hardware`
--

CREATE TABLE `designer_hardware` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(5000) NOT NULL,
  `categroy` varchar(5000) NOT NULL,
  `im_code` text NOT NULL,
  `colour` text NOT NULL,
  `colour_one` text NOT NULL,
  `colour_two` text NOT NULL,
  `colour_three` text NOT NULL,
  `colour_four` text NOT NULL,
  `colour_five` text NOT NULL,
  `colour_six` text NOT NULL,
  `packing` text NOT NULL,
  `dimension` text NOT NULL,
  `thickness` text NOT NULL,
  `thickness_one` text NOT NULL,
  `thickness_two` text NOT NULL,
  `type` text NOT NULL,
  `cock_type` text NOT NULL,
  `finish` text NOT NULL,
  `finish_one` text NOT NULL,
  `finish_two` text NOT NULL,
  `finish_three` text NOT NULL,
  `finish_four` text NOT NULL,
  `finish_five` text NOT NULL,
  `finish_six` text NOT NULL,
  `finish_seven` text NOT NULL,
  `finish_eight` text NOT NULL,
  `finish_nine` text NOT NULL,
  `finish_ten` text NOT NULL,
  `finish_eleven` text NOT NULL,
  `finish_twelve` text NOT NULL,
  `finish_thirteen` text NOT NULL,
  `finish_fourteen` text NOT NULL,
  `finish_fifteen` text NOT NULL,
  `finish_sixteen` text NOT NULL,
  `finish_seventeen` text NOT NULL,
  `finish_eighteen` text NOT NULL,
  `base_material` text NOT NULL,
  `base_material_one` text NOT NULL,
  `base_material_two` text NOT NULL,
  `collection` text NOT NULL,
  `features` text NOT NULL,
  `weight` text NOT NULL,
  `path` text NOT NULL,
  `product_image` text NOT NULL,
  `view` text NOT NULL,
  `product_multiple_imgs` text NOT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designer_hardware`
--

INSERT INTO `designer_hardware` (`product_id`, `product_name`, `categroy`, `im_code`, `colour`, `colour_one`, `colour_two`, `colour_three`, `colour_four`, `colour_five`, `colour_six`, `packing`, `dimension`, `thickness`, `thickness_one`, `thickness_two`, `type`, `cock_type`, `finish`, `finish_one`, `finish_two`, `finish_three`, `finish_four`, `finish_five`, `finish_six`, `finish_seven`, `finish_eight`, `finish_nine`, `finish_ten`, `finish_eleven`, `finish_twelve`, `finish_thirteen`, `finish_fourteen`, `finish_fifteen`, `finish_sixteen`, `finish_seventeen`, `finish_eighteen`, `base_material`, `base_material_one`, `base_material_two`, `collection`, `features`, `weight`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`) VALUES
(1, 'Brea Brass Mortise Handle', 'Mortise Handles', 'IM10025276 (AB), IM10025277 (PVDRG), IM10025278 (SS), IM10025279 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS', 'ZB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'brea-brass-mortise-handle.webp', '', 'brea-brass-mortise-handle.webp', '1'),
(2, 'Yuma Brass Mortise Handle', 'Mortise Handles', 'IM10025284 (AB), IM10025285 (PVDG), IM10025286 (PVDRG), IM10025287 (SSM), IM10025288 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', '', 'ZB', 'SSM', 'PVDG', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'yuma-brass-mortise-handle.webp', '', 'yuma-brass-mortise-handle.webp', '1'),
(3, 'Clanton Brass Mortise Handle', 'Mortise Handles', 'IM10025306 (ABM), IM10025307 (PVDR), IM10025308 (SSM), IM10025309 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', 'ZB', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'clanton-brass-mortise-handle.webp', '', 'clanton-brass-mortise-handle.webp', '1'),
(4, 'Lenox Brass Mortise Handle', 'Mortise Handles', 'IM10025280 (ABM), IM10025281 (PVDR), IM10025282 (SS), IM10025283 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', 'SS', 'ZB', '', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'lenox-brass-mortise-handle.webp', '', 'lenox-brass-mortise-handle.webp', '1'),
(5, 'Lowa Brass Mortise Handle', 'Mortise Handles', 'IM10025254 (AB),  IM10025255 (PVDRG),  IM10025256 (SS),  IM10025257 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS', 'ZB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'lowa-brass-mortise-handle.webp', '', 'lowa-brass-mortise-handle.webp', '1'),
(6, 'Jasper Brass Mortise Handle', 'Mortise Handles', 'IM10025301 (AB), IM10025302 (PVDG), IM10025303 (PVDRG), IM10025304 (SS), IM10025305 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS', 'ZB', '', 'PVDG', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'jaspar-brass-mortise-handle.webp', '', 'jaspar-brass-mortise-handle.webp', '1'),
(7, 'Elgin Brass Mortise Handle', 'Mortise Handles', 'IM10025262 (ABM), IM10025263 (BCC), IM10025264 (BCG), IM10025265 (PVDRG), IM10025266 (SSM)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', '', 'SSM', '', 'ABM', 'BCC', 'BCG', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'elgin-mortise-handle.webp', '', 'elgin-mortise-handle.webp', '1'),
(8, 'Clifton Brass Mortise Handle', 'Mortise Handles', 'IM10025293 (ABM), IM10025294 (CAM), IM10025295 (PVDRG), IM10025296 (SSM), IM10025297 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', 'ZB', ' SSM', '', 'ABM', '', '', 'CAM', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'clifton-morties-handle.webp', '', 'clifton-morties-handle.webp', '1'),
(9, 'Alma Brass Mortise Handle', 'Mortise Handles', 'IM10025250 (AB), IM10025251 (PVDRG), IM10025252 (SS), IM10025253 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS', 'ZB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'alma-mortise-handle.webp', '', 'alma-mortise-handle.webp', '1'),
(10, 'Zion Brass Mortise Handle', 'Mortise Handles', 'IM10025258 (AB), IM10025259 (PVDG), IM10025260 (PVDRG), IM10025261 (SS)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS', '', '', 'PVDG', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'zion-mortise-handle.webp', '', 'zion-mortise-handle.webp', '1'),
(11, 'Davis Brass Mortise Handle', 'Mortise Handles', 'IM10025272 (AB), IM10025273 (PVDG), IM10025274 (PVDRG), IM10025275 (SS)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS', '', '', 'PVDG', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'davis-mortise-handle.webp', '', 'davis-mortise-handle.webp', '1'),
(12, 'Ajo Brass Mortise Handle', 'Mortise Handles', 'IM10025298 (ABM), IM10025299 (PVDRG), IM10025300 (SSM)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', '', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'ajo-mortise-handle.webp', '', 'ajo-mortise-handle.webp', '1'),
(13, 'Bowie Brass Mortise Handle', 'Mortise Handles', 'IM10025268 (ABM), IM10025268 (BCC), IM10025269 (BCG), IM10025270 (PVDRG), IM10025271 (SSM)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', '', 'SSM', '', 'ABM', 'BCC', 'BCG', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'bowie-morties-handle.webp', '', 'bowie-morties-handle.webp', '1'),
(14, 'Mesa Brass Mortise Handle', 'Mortise Handles', 'IM10025289 (ABM), IM10025290 (BCG), IM10025291 (PVDRG), IM10025292 (SSM)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', '', 'SSM', '', 'ABM', '', 'BCG', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'mesa-morties-handle.webp', '', 'mesa-morties-handle.webp', '1'),
(15, 'Monza Zinc Alloy Mortise Handle', 'Mortise Handles', 'IM10060600 (SSM), IM10060601 (AB), IM10060602 (ZB), IM10060603 (MBN), IM10060604 (PVDG), IM10060605 (PVDRG)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', ' AB', 'PVDRG ', '', 'ZB', 'SSM', 'PVDG', '', '', '', '', 'MBN', '', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'monza-mortise-handle.webp', '', 'monza-mortise-handle.webp', '1'),
(16, 'Pavia Zinc Alloy Mortise Handle', 'Mortise Handles', 'IM10060606 (SS), IM10060607 (AB), IM10060608 (ZB), IM10060609 (MBN), IM10060610 (PVDG), IM10060611 (PVDRG)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS ', 'ZB', '', 'PVDG', '', '', '', '', 'MBN', '', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'pavia-mortise-handle.webp', '', 'pavia-mortise-handle.webp', '1'),
(17, 'Bari Zinc Alloy Mortise Handle', 'Mortise Handles', 'IM10060628 (SS), IM10060629 (AB), IM10060630 (ZB), IM10060631 (MBN)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', '', 'SS ', 'ZB', '', '', '', '', '', '', 'MBN', '', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'bari-mortise-handle.webp', '', 'bari-mortise-handle.webp', '1'),
(18, 'Como Zinc Alloy Mortise Handle', 'Mortise Handles', 'IM10060589 (SS), IM10060590 (AB), IM10060591 (ZB), IM10060592 (MBN), IM10060593 (PVDG), IM10060594 (PVDRG)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS', 'ZB', '', 'PVDG', '', '', '', '', 'MBN', '', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'como-mortise-handle.webp', '', 'como-mortise-handle.webp', '1'),
(19, 'Fano Zinc Alloy Mortise Handle', 'Mortise Handles', 'IM10060612 (SS), IM10060613 (AB), IM10060614 (ZB), IM10060615 (MBN), IM10060616 (PVDG), IM10060617 (PVDRG)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS', 'ZB', '', 'PVDG', '', '', '', '', 'MBN', '', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'fano-mortise-handle.webp', '', 'fano-mortise-handle.webp', '1'),
(20, 'Jesi Zinc Alloy Mortise Handle', 'Mortise Handles', 'IM10060618 (SS), IM10060619 (AB), IM10060620 (ZB), IM10060621 (MBN), IM10060712 (PVDG), IM10060713 (PVDRG)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS ', 'ZB', '', 'PVDG', '', '', '', '', 'MBN ', '', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'jesi-mortise-handle.webp', '', 'jesi-mortise-handle.webp', '1'),
(21, 'Andria  Zinc Alloy Mortise Handle', 'Mortise Handles', 'IM10060622 (SS), IM10060623 (AB), IM10060624 (ZB), IM10060625 (MBN), IM10060626 (PVDG), IM10060627 (PVDRG)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS', 'ZB', '', 'PVDG', '', '', '', '', 'MBN ', '', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'andria-mortise-handle.webp', '', 'andria-mortise-handle.webp', '1'),
(22, 'Lecco Zinc Alloy Mortise Handle', 'Mortise Handles', 'IM10060595 (SSM), IM10060596 (CP), IM10060597 (AB), IM10060598 (ZB), IM10060599 (MBN)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', '', '', 'ZB', 'SSM', '', '', '', '', '', 'MBN', 'CP', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'lecco-mortise-handle.webp', '', 'lecco-mortise-handle.webp', '1'),
(23, 'Trapani Zinc Alloy Mortise Handle', 'Mortise Handles', 'IM10060632 (SS), IM10060633 (AB), IM10060634 (ZB), IM10060635 (MBN)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', '', 'SS  ', 'ZB ', '', '', '', '', '', '', 'MBN', '', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'trapani-mortise-handle.webp', '', 'trapani-mortise-handle.webp', '1'),
(24, 'Athea Aluminum Available in Combo-Set', 'Mortise Handles', 'IM10025231 (ABM), IM10025232 (RSL), IM10025233 (SSM), IM10061927 (BL)\\n\\n\\n\\n', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', '', '', '', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', 'BL', '', '', 'RSL', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'athea-available-in-combo-set.webp', '', 'athea-available-in-combo-set.webp', '1'),
(25, 'Bray Aluminum Available in Combo-Set', 'Mortise Handles', 'IM10025234 (ABM), IM10025235 (RSL), IM10025236 (SSM), IM10061926 (BL)\\n \\n \\n', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', '', '', '', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', 'BL', '', '', 'RSL', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'bray-available-in-combo-set.webp', '', 'bray-available-in-combo-set.webp', '1'),
(26, 'Clara Aluminum Available in Combo-Set', 'Mortise Handles', 'IM10025237 (ABM), IM10025238 (RSL), IM10025239 (SSM), IM10061925 (BL)\\n \\n', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', '', '', '', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', 'BL', '', '', 'RSL', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'clara-available-in-combo-set.webp', '', 'clara-available-in-combo-set.webp', '1'),
(27, 'Doon Aluminum Available in Combo-Set', 'Mortise Handles', 'IM10025240 (ABM), IM10025241 (RSL), IM10025242 (SSM), IM10061924 (BL)\\n', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', '', '', '', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', 'BL', '', '', 'RSL', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'doon-available-in-combo-set.webp', '', 'doon-available-in-combo-set.webp', '1'),
(28, 'Rush Aluminum Available in Combo-Set', 'Mortise Handles', 'IM10025247 (ABM), IM10025248 (RSL), IM10025249 (SSM), IM10061923 (BL)\\n\\n', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', '', '', '', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', 'BL', '', '', 'RSL', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'rush-available-in-combo-set.webp', '', 'rush-available-in-combo-set.webp', '1'),
(29, 'Sutton Aluminum Available in Combo-Set', 'Mortise Handles', 'IM10025243 (ABM), IM10025244 (RSL), IM10025245 (SSM), IM10061922 (BL)\\n\\n', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', '', '', '', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', 'BL', '', '', 'RSL', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'sutton-available-in-combo-set.webp', '', 'sutton-available-in-combo-set.webp', '1'),
(30, 'Stream Aluminum Available in Combo-Set', 'Mortise Handles', 'IM10025246 (SSM)\\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SSM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/mortise-handles/', 'stream-available-in-combo-set.webp', '', 'stream-available-in-combo-set.webp', '1'),
(31, 'Cork Mab Main Door Handles', 'Pull Handles', 'IM10025346 (ABM), IM10025347(ABM)', '', '', '', '', '', '', '', '1 Set', '', '240 mm', '320 mm', '', '', '', '', '', '', '', '', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'cork-main-door-handles-mab.webp', '', 'cork-main-door-handles-mab.webp', '1'),
(32, 'Teelin Mab Main Door Handles', 'Pull Handles', 'IM10025348 (ABM), IM10025349(ABM)', '', '', '', '', '', '', '', '1 Set', '', '240 mm', '320 mm', '', '', '', '', '', '', '', '', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'teelin-main-door-handles.webp', '', 'pull-handles/teelin-main-door-handles.webp', '1'),
(33, 'Sligo Mab Main Door Handles', 'Pull Handles', 'IM10025350 (ABM), IM10025351 (ABM)', '', '', '', '', '', '', '', '1 Set', '', '240 mm', '320 mm', '', '', '', '', '', '', '', '', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'sligo-main_door-handles_mab.webp', '', 'sligo-main_door-handles_mab.webp', '1'),
(34, 'Spink Mab Main Door Handles', 'Pull Handles', 'IM10025352 (ABM), IM10025353 (ABM)', '', '', '', '', '', '', '', '1 Set', '', '240 mm', '320 mm', '', '', '', '', '', 'SS', 'ZB', '', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'spink-main-door-handles-mab.webp', '', 'spink-main-door-handles-mab.webp', '1'),
(35, 'Cree Pull Handle 250 mm', 'Pull Handles', 'IM10025332 (AB), IM10025333 (SS), IM10025334 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '250 mm', '250 mm', '250 mm', '', '', 'AB', '', 'SS', 'ZB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'cree-pull-handle-250.webp', '', 'cree-pull-handle-250.webp', '1'),
(36, 'Allen Pull Handle 250 mm', 'Pull Handles', 'IM10025324 (ABM), IM10025325 (PVDRG), IM10025326 (SSM), IM10025327 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', 'ZB', ' SSM', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'allen-pull-handle.webp', '', 'allen-pull-handle.webp', '1'),
(37, 'Inver Pull Handle 250 mm', 'Pull Handles', 'IM10025338 (ABM), IM10025339 (PVDRG), IM10025340 (SSM), IM10025341 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', 'ZB', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'inver-pull-handle.webp', '', 'inver-pull-handle.webp', '1'),
(38, 'Lusk Pull Handle 250 mm', 'Pull Handles', 'IM10025310 (ABM), IM10025311 (BCG), IM10025312 (SSM)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', '', '', '', 'SSM', '', 'ABM', '', 'BCG', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'lusk-pull-handle.webp', '', 'lusk-pull-handle.webp', '1'),
(39, 'Eenis Pull Handle 250 mm', 'Pull Handles', 'IM10025335 (AB), IM10025336 (SS), IM10025337 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', 'AB', '', 'SS', 'ZB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'eenis-pull-handle.webp', '', 'eenis-pull-handle.webp', '1'),
(40, 'Lucan Pull Handle 450 mm', 'Pull Handles', 'IM10025313 (ABM), IM10025314 (BCG), IM10025315 (SSM)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', '', '', '', 'SSM', '', 'ABM', '', 'BCG', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'lucan-pull-handle.webp', '', 'lucan-pull-handle.webp', '1'),
(41, 'Kerry Pull Handle 450 mm', 'Pull Handles', 'IM10025328 (ABM), IM10025329 (PVDRG), IM10025330 (SSM), IM10025331 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', 'ZB', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'kerry-pull-handle.webp', '', 'kerry-pull-handle.webp', '1'),
(42, 'Kells Pull Handle 450 mm', 'Pull Handles', 'IM10025342 (ABM), IM10025343 (PVDRG), IM10025344 (SSM), IM10025345 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', 'ZB', 'SSM', '', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'kells-pull-handle.webp', '', 'kells-pull-handle.webp', '1'),
(43, 'Bray Pull Handle 450 mm', 'Pull Handles', 'IM10025316 (ABM), IM10025317 (CAM), IM10025318 (PVDRG), IM10025319 (PVDG)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', '', '', 'PVDG', 'ABM', '', '', 'CAM', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'bray-pull-handle-425-MM.webp', '', 'bray-pull-handle-425-MM.webp', '1'),
(44, 'Cong  Pull Handle 450 mm', 'Pull Handles', 'IM10025321 (ABM), IM10025322 (PVDG), IM10025323 (PVDRG), IM10025324 (ZB)', '', '', '', '', '', '', '', '1 Set', '', '', '', '', '', '', '', 'PVDRG', '', 'ZB', '', 'PVDG', 'ABM', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/pull-handles/', 'cong-pull-handle.webp', '', 'cong-pull-handle.webp', '1'),
(45, 'Aldrop Antique 12 Brooks', 'Aldrops', 'IM10025221 (AB)', '', '', '', '', '', '', '', '1 PCS', '', '', '', '', '', '', 'AB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', 'Steel', 'Rod', '', '', '', 'products/designer-hardware/aldrop-antiqe/', 'aldrop-antiqe-brooks.webp', '', 'aldrop-antiqe-brooks.webp', '1'),
(46, 'Aldrop Antique 12 Nelson', 'Aldrops', 'IM10025222 (AB)', '', '', '', '', '', '', '', '1 PCS', '', '', '', '', '', '', 'AB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', 'Steel', 'Rod', '', '', '', 'products/designer-hardware/aldrop-antiqe/', 'aldrop-antiqe-nelson.webp', '', 'aldrop-antiqe-nelson.webp', '1'),
(47, 'Aldrop Antique 12 Souris', 'Aldrops', 'IM10025223 (AB)', '', '', '', '', '', '', '', '1 PCS', '', '', '', '', '', '', 'AB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', 'Steel', 'Rod', '', '', '', 'products/designer-hardware/aldrop-antiqe/', 'aldrop-antiqe-souris.webp', '', 'aldrop-antiqe-souris.webp', '1'),
(48, 'Aldrop Antique 12 Trail', 'Aldrops', 'IM10025225 (AB)', '', '', '', '', '', '', '', '1 PCS', '', '', '', '', '', '', 'AB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', 'Steel', 'Rod', '', '', '', 'products/designer-hardware/aldrop-antiqe/', 'aldrop-antiqe-trail.webp', '', 'aldrop-antiqe-trail.webp', '1'),
(49, 'Aldrop Antique 12 Dorval', 'Aldrops', 'IM10025226 (AB)', '', '', '', '', '', '', '', '1 PCS', '', '', '', '', '', '', 'AB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', 'Steel', 'Rod', '', '', '', 'products/designer-hardware/aldrop-antiqe/', 'aldrop-antiqe-dorval.webp', '', 'aldrop-antiqe-dorval.webp', '1'),
(50, 'Door Stoppers Empoli', 'Door Stoppers', 'IM10060636 (SS), IM10060637 (AB), IM10060638 (PVDG), IM10060639 (PVDRG)', '', '', '', '', '', '', '', '1 PCS', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS ', '', '', 'PVDG', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/door-stoppers/', 'door-stoppe-Empoli.webp', '', 'door-stoppe-Empoli.webp', '1'),
(51, 'Door Stoppers Siena', 'Door Stoppers', 'IM10060640 (SS), IM10060641 (AB), IM10060642 (PVDG), IM10060643 (PVDRG)', '', '', '', '', '', '', '', '1 PCS', '', '', '', '', '', '', 'AB', 'PVDRG', 'SS', '', '', 'PVDG', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Zinc Alloy', '', '', '', '', '', 'products/designer-hardware/door-stoppers/', 'door-stoppe-siena.webp', '', 'door-stoppe-siena.webp', '1'),
(52, 'Door Stopper 003-b/s', 'Door Stoppers', 'IM10025229 (AB), IM10025229 (CP)', '', '', '', '', '', '', '', '1 PCS', '', '', '', '', '', '', 'AB', '', '', '', '', '', '', '', '', '', '', 'CP', '', '', '', '', '', '', '', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/door-stoppers/', 'door-stopper.webp', '', 'door-stopper.webp', '1'),
(53, 'Antique Half Round Tower Bolt 001', 'Tower Bolts', 'IM10025369 (AB), IM10025370 (AB), IM10025368 (AB)', '', '', '', '', '', '', '', '1 PCS', '', '6', '8', '12', '', '', 'AB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/tower-bolts/', 'tower-bolts-001-antiqe-half-round.webp', '', 'tower-bolts-001-antiqe-half-round.webp', '1'),
(54, 'Antique Full Round Tower Bolt 002', 'Tower Bolts', 'IM10025372 (AB), IM10025373 (AB), IM10025371 (AB)', '', '', '', '', '', '', '', '1 PCS', '', '6', '8', '12', '', '', 'AB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Aluminium', '', '', '', '', '', 'products/designer-hardware/tower-bolts/', 'tower-bolt-002-antiqe-full-round.webp', '', 'tower-bolt-002-antiqe-full-round.webp', '1'),
(55, 'Half Cylinder Key', 'Pin Cylinders', 'IM10025149 (AB), IM10025150 (SS)', '', '', '', '', '', '', '', '1 PCS', '35 X 10', '', '', '', '', '', 'AB', '', 'SS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/cylinders/', '35X10-half-cylinder-with-key.webp', '', '35X10-half-cylinder-with-key.webp', '1'),
(56, 'Half Cylinder Knob', 'Pin Cylinders', 'IM10025151 (AB), IM10025152 (SS)', '', '', '', '', '', '', '', '1 PCS', '35 X 10', '', '', '', '', '', 'AB', '', 'SS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/cylinders/', '35X10-half-cylinder-with-knob.webp', '', '35X10-half-cylinder-with-knob.webp', '1'),
(57, 'Cylinders OSK', 'Pin Cylinders', 'IM10025169 (AB), IM10025170 (BLACK), IM10025171 (PVDR), IM10025172 (SS), IM10025183 (AB), IM10025184 (BL), IM10025185 (PVDG), IM10025186 (SS), IM10025187 (AB), IM10025188 (BLACK), IM10025189 (PVDG), IM10025190 (SS)', '', '', '', '', '', '', '', '1 PCS', '', '60 mm, 70 mm, 80 mm', '', '', '', '', 'AB', '', 'SS', '', '', 'PVDG', '', '', '', '', '', '', 'PVDR', 'Black', '', 'BL', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/cylinders/', '60-70-80-mm-cylinders-osk.webp', '', '60-70-80-mm-cylinders-osk.webp', '1'),
(58, 'Cylinders Key Less', 'Pin Cylinders', 'IM10025166 (AB), IM10025167 (SS), IM10025168 (BL), IM10025179 (AB), IM10025180 (SS), IM10025181 (BLACK), IM10025182 (PVDG)', '', '', '', '', '', '', '', '1 PCS', '', '60 mm, 70 mm', '', '', '', '', 'AB', '', 'SS', '', '', 'PVDG', '', '', '', '', '', '', '', 'Black', '', 'BL', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/cylinders/', '60-70mm-cylinders-key-less-bathroom-appl.webp', '', '60-70mm-cylinders-key-less-bathroom-appl.webp', '1'),
(59, 'Baby Latch Body', 'Baby Latch Body', 'IM10025153 (AB), IM10025154 (BL), IM10025155 (SS)', '', '', '', '', '', '', '', '1 PCS', '', '45 mm', '', '', '', '', 'AB', '', 'SS', '', '', '', '', '', '', '', '', '', '', '', '', 'BL', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/baby-latch-body/', '45-mm-baby-latch-body.webp', '', '45-mm-baby-latch-body.webp', '1'),
(60, 'Dead Lock Body', 'Dead Lock Body', 'IM10025156 (AB), IM10025157 (BL), IM10025158 (SS), IM10025164 (AB), IM10025165 (SS), IM10025173 (AB)', '', '', '', '', '', '', '', '1 PCS', '', '50 mm, 55 mm, 60 mm', '', '', '', '', 'AB', '', 'SS', '', '', '', '', '', '', '', '', '', '', '', '', 'BL', '', '', '', 'Brass', '', '', '', '', '', 'products/designer-hardware/dead-lock-body/', '50-55-60-mm-dead-lock-body.webp', '', '50-55-60-mm-dead-lock-body.webp', '1'),
(61, 'Lock Body', 'Regular Lock Body', 'IM10025159 (AB), IM10025160 (BL), IM10025161 (GL), IM10025162 (RSL), IM10025163 (SS), IM10025174 (AB), IM10025175 (BL), IM10025176 (GL), IM10025177 (RG), IM10025178 (SS) ', '', '', '', '', '', '', '', '1 PCS', '', '50 mm x 85mm, 60 mm x 85mm', '', '', '', '', 'AB', '', 'SS', '', '', '', '', '', '', '', '', '', '', '', 'GL', 'BL', '', '', 'RSL', 'Brass', '', '', '', '', '', 'products/designer-hardware/regular-lock-body/', '50-60-mmx85mm-lock-body.webp', '', '50-60-mmx85mm-lock-body.webp', '1'),
(62, 'Steel Hinges w/o Screws', 'Hinges', 'IM10025354 (AB), IM10025355 (SS), IM10025356 (AB), IM10025357 (SS), IM10025358 (AB), IM10025359 (SS), IM10025360 (AB), IM10025361 (SS), IM10025362 (AB), IM10025363 (SS), IM10061012 (GL),  IM10061013 (BL), IM10061014 (RG), IM10061015 (GL), IM10061016 (BL), IM10061017 (RG), IM10061018 (SS), IM10061019 (AB), IM10061020 (GL), IM10061021 (BL), IM10061022 (RG), IM10061023 (SS), IM10061024 (AB), IM10061025 (GL), IM10061026 (BL), IM10061027 (RG), IM10061028 (SS), IM10061029 (AB),  IM10061030 (GL), IM10061031 (BL), IM10061032 (RG), IM10061033 (SS), IM10061034 (AB), IM10061035 (GL), IM10061036 (BL), IM10061037 (RG), IM10061038 (SS), IM10061039 (AB), IM10061040 (GL), IM10061041 (BL), IM10061042 (RG), IM10061043 (SS),', '', '', '', '', '', '', '', '', '4 x 12, 5 x 12, 6 x 12, 6 x 12 x 1.25, 6 x 12 x 1.5, 6 x 10 x 1.25, 6 x 10 x 1.5, 4 x 3 x 3, 5 x 3 x 3', '', '', '', '', '', 'AB', '', 'SS', '', '', '', '', '', '', '', '', '', '', '', 'GL', 'BL', 'RG', '', '', 'Steel', '', '', '', '', '', 'products/designer-hardware/hinges/', 'steel-hinges.webp', '', 'steel-hinges.webp', '1'),
(63, '45 kg Load Bearing Capacity Full Extension Telescopic Drawer Slides,', 'Door Channels', 'IM10057832 (Zinc), IM10057833 (Zinc), IM10057834 (Zinc), IM10057835 (Zinc), IM10057836 (Zinc), IM10057837 (Zinc), IM10057838 (Zinc), IM10057839 (Zinc), IM10057824 (Zinc), IM10057825 (Zinc), IM10057826 (Zinc), IM10057827 (Zinc), IM10057828 (Zinc), IM10057829 (Zinc), IM10057830 (Zinc), IM10057831 (Zinc)', '', '', '', '', '', '', '', '1 Set', '', '250 mm 300 mm 350 mm 400 mm 450 mm 500 mm 600 mm 250 mm 300 mm 350 mm 400 mm 450 mm 500 mm 550 mm 600 mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Zinc', '', '', '', '', '', '', '', 'products/designer-hardware/channels/', 'channels-full-extension-telescopic-drawer-slides-45-kg.webp', '', 'channels-full-extension-telescopic-drawer-slides-45-kg.webp', '1');

-- --------------------------------------------------------

--
-- Table structure for table `designer_hardware_address_details`
--

CREATE TABLE `designer_hardware_address_details` (
  `id` int(20) NOT NULL,
  `title` varchar(75) NOT NULL,
  `address` varchar(1500) NOT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(10) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `designer_hardware_city_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designer_hardware_city`
--

CREATE TABLE `designer_hardware_city` (
  `city_id` int(11) NOT NULL,
  `city_name` text NOT NULL,
  `designer_hardware_state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designer_hardware_leads`
--

CREATE TABLE `designer_hardware_leads` (
  `id` int(25) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `utm_source` varchar(255) NOT NULL,
  `utm_medium` varchar(255) NOT NULL,
  `utm_campaign` varchar(255) NOT NULL,
  `utm_term` varchar(255) NOT NULL,
  `utm_content` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `intrest` int(20) NOT NULL DEFAULT 2 COMMENT '1 - Intrested, 2 - Not Intrested  '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `designer_hardware_leads`
--

INSERT INTO `designer_hardware_leads` (`id`, `sname`, `phone`, `email`, `city`, `utm_source`, `utm_medium`, `utm_campaign`, `utm_term`, `utm_content`, `timestamp`, `intrest`) VALUES
(1, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai', '', '', '', '', '', '2023-04-28 13:36:30', 2);

-- --------------------------------------------------------

--
-- Table structure for table `designer_hardware_state`
--

CREATE TABLE `designer_hardware_state` (
  `id` int(20) NOT NULL,
  `state_name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `designer_hardware_state`
--

INSERT INTO `designer_hardware_state` (`id`, `state_name`) VALUES
(1, 'Assam'),
(2, 'Haryana'),
(3, 'Himachal Pradesh'),
(4, 'Karnataka'),
(5, 'Madhya Pradesh'),
(6, 'Maharashtra'),
(7, 'Rajasthan'),
(8, 'Tamil Nadu'),
(9, 'Uttar Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `finish`
--

CREATE TABLE `finish` (
  `fid` int(11) NOT NULL,
  `finish_name` text NOT NULL,
  `cid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `finish`
--

INSERT INTO `finish` (`fid`, `finish_name`, `cid`) VALUES
(1, 'ABM', '1'),
(2, 'PVDGR', '1'),
(3, 'SSM', '1'),
(4, 'ZB', '2');

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE `lead` (
  `id` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead`
--

INSERT INTO `lead` (`id`, `sname`, `phone`, `email`, `city`, `msg`) VALUES
(1, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai', ''),
(2, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai', 'Test DEmo');

-- --------------------------------------------------------

--
-- Table structure for table `mapping`
--

CREATE TABLE `mapping` (
  `product_id` int(11) NOT NULL,
  `finish_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modular_kitchen`
--

CREATE TABLE `modular_kitchen` (
  `product_id` int(255) NOT NULL,
  `product_name` text NOT NULL,
  `category` text DEFAULT NULL,
  `size` text DEFAULT NULL,
  `finish` text DEFAULT NULL,
  `concept` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `product_image` text DEFAULT NULL,
  `view` text DEFAULT NULL,
  `product_multiple_imgs` text DEFAULT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modular_kitchen`
--

INSERT INTO `modular_kitchen` (`product_id`, `product_name`, `category`, `size`, `finish`, `concept`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`) VALUES
(1, 'Strawberry & Grey Straight Kitchen', 'Straight Kitchen', '', '', '', 'products/modular-kitchen/straight-kitchen/', 'straight-1.webp', '', 'straight-1.webp', '1'),
(2, 'Slate Grey Straight Kitchen', 'Straight Kitchen', '', '', '', 'products/modular-kitchen/straight-kitchen/', 'straight-2.webp', '', 'straight-2.webp', '1'),
(3, 'Ocean Blue Straight Kitchen ', 'Straight Kitchen', '', '', '', 'products/modular-kitchen/straight-kitchen/', 'straight-3.webp', '', 'straight-3.webp', '1'),
(4, 'Fairy White & Beachwood Straight Kitchen', 'Straight Kitchen', '', '', '', 'products/modular-kitchen/straight-kitchen/', 'straight-4.webp', '', 'straight-4.webp', '1'),
(5, 'Cotton White Straight Kitchen', 'Straight Kitchen', '', '', '', 'products/modular-kitchen/straight-kitchen/', 'straight-5.webp', '', 'straight-5.webp', '1'),
(6, 'Graphite & Gold Yellow Straight Kitchen', 'Straight Kitchen', '', '', '', 'products/modular-kitchen/straight-kitchen/', 'straight-6.webp', '', 'straight-6.webp', '1'),
(7, 'Dry Olive & Horizontal Oak Straight Kitchen', 'Straight Kitchen', '', '', '', 'products/modular-kitchen/straight-kitchen/', 'straight-7.webp', '', 'straight-7.webp', '1'),
(8, 'Pearl White Straight Kitchen', 'Straight Kitchen', '', '', '', 'products/modular-kitchen/straight-kitchen/', 'straight-8.webp', '', 'straight-8.webp', '1'),
(9, 'Brilliant Blue & Feather White Straight Kitchen', 'Straight Kitchen', '', '', '', 'products/modular-kitchen/straight-kitchen/', 'straight-9.webp', '', 'straight-9.webp', '1'),
(10, 'White & Grey Stone Parallel Kitchen', 'Parallel Kitchen', '', '', '', 'products/modular-kitchen/parallel-kitchen/', 'parallel-1.webp', '', 'parallel-1.webp', '1'),
(11, 'Sunny Yellow & Snow White Parallel Kitchen', 'Parallel Kitchen', '', '', '', 'products/modular-kitchen/parallel-kitchen/', 'parallel-2.webp', '', 'parallel-2.webp', '1'),
(12, 'Olive & Ceramic Parallel Kitchen', 'Parallel Kitchen', '', '', '', 'products/modular-kitchen/parallel-kitchen/', 'parallel-3.webp', '', 'parallel-3.webp', '1'),
(13, 'Tanny Mocha Parallel Kitchen', 'Parallel Kitchen', '', '', '', 'products/modular-kitchen/parallel-kitchen/', 'parallel-4.webp', '', 'parallel-4.webp', '1'),
(14, 'Peacock & Snow White Parallel Kitchen', 'Parallel Kitchen', '', '', '', 'products/modular-kitchen/parallel-kitchen/', 'parallel-5.webp', '', 'parallel-5.webp', '1'),
(15, 'Mustard & Dark Fantasy Parallel Kitchen', 'Parallel Kitchen', '', '', '', 'products/modular-kitchen/parallel-kitchen/', 'parallel-6.webp', '', 'parallel-6.webp', '1'),
(16, 'Shadow Grey & Pine L-shaped Kitchen', 'L-Shaped Kitchen', '', '', '', 'products/modular-kitchen/l-shape-kitchen/', 'l-shape-1.webp', '', 'l-shape-1.webp', '1'),
(17, 'Evening Sky & White L-Shaped Kitchen', 'L-Shaped Kitchen', '', '', '', 'products/modular-kitchen/l-shape-kitchen/', 'l-shape-2.webp', '', 'l-shape-2.webp', '1'),
(18, 'Mystic Grey L-Shaped Kitchen', 'L-Shaped Kitchen', '', '', '', 'products/modular-kitchen/l-shape-kitchen/', 'l-shape-3.webp', '', 'l-shape-3.webp', '1'),
(19, 'L shape Modular Kitchen with Wooden Counter Top', 'L-Shaped Kitchen', '', '', '', 'products/modular-kitchen/l-shape-kitchen/', 'l-shape-4.webp', '', 'l-shape-4.webp', '1'),
(20, 'White and Grey L shape Modular Kitchen ', 'L-Shaped Kitchen', '', '', '', 'products/modular-kitchen/l-shape-kitchen/', 'l-shape-6.webp', '', 'l-shape-6.webp', '1'),
(21, 'Feather White C-Shaped Kitchen', 'C-Shaped Kitchen', '', '', '', 'products/modular-kitchen/c-shape-kitchen/', 'c-shape-1.webp', '', 'c-shape-1.webp', '1'),
(22, 'Coffee Bean C-Shaped Kitchen', 'C-Shaped Kitchen', '', '', '', 'products/modular-kitchen/c-shape-kitchen/', 'c-shape-2.webp', '', 'c-shape-2.webp', '1'),
(23, 'Black & White C-Shaped Kitchen', 'C-Shaped Kitchen', '', '', '', 'products/modular-kitchen/c-shape-kitchen/', 'c-shape-3.webp', '', 'c-shape-3.webp', '1'),
(24, 'Neutral & Wood C-Shaped Kitchen', 'C-Shaped Kitchen', '', '', '', 'products/modular-kitchen/c-shape-kitchen/', 'c-shape-4.webp', '', 'c-shape-4.webp', '1'),
(25, 'Mocha & Pine Island Kitchen', 'Island Kitchen', '', '', '', 'products/modular-kitchen/island-kitchen/', 'island-kitchen-1.webp', '', 'island-kitchen-1.webp', '1'),
(26, 'Beige Island Modular Kitchen', 'Island Kitchen', '', '', '', 'products/modular-kitchen/island-kitchen/', 'island-kitchen-2.webp', '', 'island-kitchen-2.webp', '1'),
(27, 'Sea Blue Island Kitchen', 'Island Kitchen', '', '', '', 'products/modular-kitchen/island-kitchen/', 'island-kitchen-3.webp', '', 'island-kitchen-3.webp', '1'),
(28, 'Boho Style Island Modular Kitchen', 'Island Kitchen', '', '', '', 'products/modular-kitchen/island-kitchen/', 'island-kitchen-4.webp', '', 'island-kitchen-4.webp', '1'),
(29, 'Azure Blue & Snow White Island Shaped Kitchen', 'Island Kitchen', '', '', '', 'products/modular-kitchen/island-kitchen/', 'island-kitchen-5.webp', '', 'island-kitchen-5.webp', '1'),
(30, 'Shadow Grey & Beige Island Kitchen', 'Island Kitchen', '', '', '', 'products/modular-kitchen/island-kitchen/', 'island-kitchen-6.webp', '', 'island-kitchen-6.webp', '1'),
(31, 'Strawberry Red & Grey Island Kitchen', 'Island Kitchen', '', '', '', 'products/modular-kitchen/island-kitchen/', 'island-kitchen-7.webp', '', 'island-kitchen-7.webp', '1'),
(32, 'Deep Wine & Light Oak Island Kitchen', 'Island Kitchen', '', '', '', 'products/modular-kitchen/island-kitchen/', 'island-kitchen-8.webp', '', 'island-kitchen-8.webp', '1'),
(33, 'Cobalt Blue & Light Oak Island Kitchen', 'Island Kitchen', '', '', '', 'products/modular-kitchen/island-kitchen/', 'island-kitchen-9.webp', '', 'island-kitchen-9.webp', '1'),
(34, 'Jade Green & Light Wood Island Kitchen', 'Island Kitchen', '', '', '', 'products/modular-kitchen/island-kitchen/', 'island-kitchen-10.webp', '', 'island-kitchen-10.webp', '1');

-- --------------------------------------------------------

--
-- Table structure for table `modular_kitchen_address_details`
--

CREATE TABLE `modular_kitchen_address_details` (
  `id` int(20) NOT NULL,
  `title` varchar(75) NOT NULL,
  `address` varchar(1500) NOT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(10) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `modular_kitchen_city_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modular_kitchen_address_details`
--

INSERT INTO `modular_kitchen_address_details` (`id`, `title`, `address`, `location`, `city`, `pincode`, `direction`, `modular_kitchen_city_id`) VALUES
(1, 'ccomdigital', 'C Com Digital, 10, Wadala Udyog Bhavan, Naigaon Cross Road, Telephone Exchn, near Wadala, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Mumbai', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1),
(2, 'I.C.E Asia Pvt Limited', 'India Printing House, 202, G D Ambekar Rd, Sahakar Nagar, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Delhi', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 4),
(3, 'Rajdeep Automation Pvt Ltd', ' B-27 3rd Floor, Shriram Industrial Estate, 13, G D Ambedkar Road, Wadala, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Pune', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 2),
(4, 'RJ Group of Companies', '201, Awaas CHS, Pralhad Nagar, Ahmedabad, Gujarat - 380001', 'Pralhad Nagar', 'Ahmedabad', 380001, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 14),
(5, 'Netcore Cloud', 'Peninsula Towers, Peninsula Corporate Park, Peninsula Tower\'s Walk way, Lower Parel West, Lower Parel, Mumbai, Maharashtra 400013', 'Lower Parel', 'Mumbai', 400013, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modular_kitchen_city`
--

CREATE TABLE `modular_kitchen_city` (
  `city_id` int(11) NOT NULL,
  `city_name` text NOT NULL,
  `modular_kitchen_state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modular_kitchen_city`
--

INSERT INTO `modular_kitchen_city` (`city_id`, `city_name`, `modular_kitchen_state_id`) VALUES
(1, 'Mumbai', 1),
(2, 'Pune', 1),
(3, 'Nagpur', 1),
(4, 'New Delhi', 2),
(5, 'Taj Pul', 2),
(6, 'Mandoli', 2),
(7, 'Vishakhapatnam', 4),
(8, 'Tirupati', 4),
(9, 'Rajarhat Gopalpur', 5),
(10, 'Bhatpara', 5),
(11, 'Panihati', 5),
(12, 'Amritsar', 6),
(13, 'Ludhiana', 6),
(14, 'Ahmedabad', 7),
(15, 'Surat', 7);

-- --------------------------------------------------------

--
-- Table structure for table `modular_kitchen_leads`
--

CREATE TABLE `modular_kitchen_leads` (
  `id` int(25) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `utm_source` varchar(255) DEFAULT NULL,
  `utm_medium` varchar(255) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `utm_term` varchar(255) DEFAULT NULL,
  `utm_content` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `intrest` int(20) NOT NULL DEFAULT 2 COMMENT '1 - Intrested, 2 - Not Intrested  '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modular_kitchen_leads`
--

INSERT INTO `modular_kitchen_leads` (`id`, `sname`, `phone`, `email`, `city`, `utm_source`, `utm_medium`, `utm_campaign`, `utm_term`, `utm_content`, `timestamp`, `intrest`) VALUES
(1, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai', '', '', '', '', '', '2023-04-28 12:54:24', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modular_kitchen_state`
--

CREATE TABLE `modular_kitchen_state` (
  `id` int(20) NOT NULL,
  `state_name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modular_kitchen_state`
--

INSERT INTO `modular_kitchen_state` (`id`, `state_name`) VALUES
(1, 'Maharashtra'),
(2, 'Delhi'),
(3, 'Gujarat'),
(4, 'Uttar Pradesh'),
(5, 'Sikkim'),
(6, 'Tamil Nadu'),
(7, 'Telangana'),
(8, 'West Bengal'),
(9, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(120) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `im_codes` text NOT NULL,
  `size` text NOT NULL,
  `size_dup` text NOT NULL,
  `color` text NOT NULL,
  `packing` text NOT NULL,
  `finish` text NOT NULL,
  `concept` text NOT NULL,
  `product_image` text NOT NULL,
  `product_multiple_imgs` text NOT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category`, `im_codes`, `size`, `size_dup`, `color`, `packing`, `finish`, `concept`, `product_image`, `product_multiple_imgs`, `product_status`) VALUES
(1, 'Brea Brass Mortise Handle', 'Mortoise Handles', 'IM10025276 (AB), IM10025277 (PVDRG), IM10025278 (SS), IM10025279 (ZB)', 'Brass', 'Floor', '<span class=\\\"red\\\">red</span>, <span class=\\\"orange\\\">orange</span> ', '1 Set', '1,3', 'ceramic/tiles', 'claston-im10025306-im10025307-im10025308-im10025309.webp', 'claston-im10025306-im10025307-im10025308-im10025309.webp,yuma-im10025284-im10025285-im10025286-im10025287-im10025288.webp', '1'),
(2, 'Yuma Brass Mortise Handle', 'Mortoise Handles', 'IM10025284 (AB)\\nIM10025285 (PVDG)\\nIM10025286 (PVDR)\\nIM10025287 (SSM)\\nIM10025288 (ZB)', 'Alloy', 'Wall', '<span class=\\\"red\\\">red</span>, <span class=\\\"orange\\\">orange</span> ', '1 Set', '3', 'ceramic/tiles', 'yuma-im10025284-im10025285-im10025286-im10025287-im10025288.webp', '0', '1'),
(3, 'Clanton Brass Mortise Handle', 'Mortoise Handles', 'IM10025306 (ABM)\\nIM10025307 (PVDR)\\nIM10025308 (SSM)\\nIM10025309 (ZB)', 'Alloy', 'Wall', '<span class=\\\"red\\\">red</span>, <span class=\\\"orange\\\">orange</span> ', '1 Set', '4', 'ceramic/tiles', 'lenox-im10025280-im10025281-im10025282-im10025283.webp', '0', '1'),
(4, 'Lenox Brass Mortise Handle', 'Mortoise Handles', 'IM10025280 (ABM)\\nIM10025281 (PVDR)\\nIM10025282 (SS)\\nIM10025283 (ZB)', 'Alloy', 'Floor', '<span class=\\\"red\\\">red</span>, <span class=\\\"orange\\\">orange</span> ', '1 Set', '5', 'ceramic/tiles', 'brea-im10028276-im10025277-im10025278-im10025279.webp', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sanitaryware`
--

CREATE TABLE `sanitaryware` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(5000) NOT NULL,
  `category` varchar(5000) DEFAULT NULL,
  `im_code` text DEFAULT NULL,
  `colour` text DEFAULT NULL,
  `colour_one` text DEFAULT NULL,
  `colour_two` text DEFAULT NULL,
  `colour_three` text DEFAULT NULL,
  `colour_four` text DEFAULT NULL,
  `colour_five` text DEFAULT NULL,
  `packing` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `type_one` text DEFAULT NULL,
  `trap_type` text DEFAULT NULL,
  `features` text DEFAULT NULL,
  `finish` text DEFAULT NULL,
  `finish_one` text DEFAULT NULL,
  `thickness` text DEFAULT NULL,
  `dimension` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `product_image` text DEFAULT NULL,
  `view` text DEFAULT NULL,
  `product_multiple_imgs` text DEFAULT NULL,
  `other` text DEFAULT NULL,
  `collection` text DEFAULT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanitaryware`
--

INSERT INTO `sanitaryware` (`product_id`, `product_name`, `category`, `im_code`, `colour`, `colour_one`, `colour_two`, `colour_three`, `colour_four`, `colour_five`, `packing`, `type`, `type_one`, `trap_type`, `features`, `finish`, `finish_one`, `thickness`, `dimension`, `path`, `product_image`, `view`, `product_multiple_imgs`, `other`, `collection`, `product_status`) VALUES
(1, 'Leandra', 'Water Closets', 'IM10060383', 'White', 'Ivory', '', '', '', '', '', 'One Piece Closets', '', 'S Trap ', 'FLUSH, SOFT CLOSE, SEAT COVER, SLIM SEAT, COVER, SIPHONIC, GLAZED TRAP', 'Glossy', 'Matt', '225 mm', '680 x 365 x 705  mm', 'products/sanitaryware/water-closets/one-piece-closet/', 'leandra-white-IM10060383.webp', '', 'leandra-white-IM10060383.webp', 'IM10060384, Ivory', '', '1'),
(2, 'Leandra', 'Water Closets', 'IM10039053', 'Mocha', '', '', '', '', '', '', 'One Piece Closets', '', 'S Trap ', 'FLUSH, SOFT CLOSE, SEAT COVER, SLIM SEAT COVER, SIPHONIC, GLAZED TRAP', 'Glossy', '', '300 mm', '680 x 365 x 705  mm', 'products/sanitaryware/water-closets/one-piece-closet/', 'leandra-glossy-IM10039053.webp', '', 'leandra-glossy-IM10039053.webp', 'IM10037554, 225MM, Glossy', '', '1'),
(3, 'Leandra', 'Water Closets', 'IM10039054', 'Shark Grey ', '', '', '', '', '', '', 'One Piece Closets', '', 'S Trap ', 'FLUSH, SOFT CLOSE, SEAT COVER, SLIM SEAT COVER, SIPHONIC, GLAZED TRAP', 'Glossy', 'Matt', '300 mm', '680 x 365 x 705  mm', 'products/sanitaryware/water-closets/one-piece-closet/', 'leandra-glossy-IM10039054.webp', '', 'leandra-glossy-IM10039054.webp', 'IM10060386,Matt,300MM; IM10037555,Glossy,225MM', '', '1'),
(4, 'Leandra', 'Water Closets', 'IM10039055', 'Latte Brown ', '', '', '', '', '', '', 'One Piece Closets', '', 'S Trap ', 'FLUSH, SOFT CLOSE, SEAT COVER, SLIM SEAT COVER, SIPHONIC, GLAZED TRAP', 'Glossy', '', '300mm', '680 x 365 x 705  mm', 'products/sanitaryware/water-closets/one-piece-closet/', 'landra-glossy-IM10039055.webp', '', 'landra-glossy-IM10039055.webp', 'IM10037553,Glossy, 225MM', '', '1'),
(5, 'Jasmine', 'Water Closets', 'IM10017120', 'White', '', '', '', '', '', '', 'One Piece Closets', '', 'S Trap ', 'FLUSH, SOFT CLOSE SEAT COVER, GLAZED TRAP, IN BUILT JET', '', '', '225mm', '665 x 345 x 730 mm', 'products/sanitaryware/water-closets/one-piece-closet/', 'jasmine-white-IM10017120.webp', '', 'jasmine-white-IM10017120.webp', '', '', '1'),
(6, 'Artistide', 'Water Closets', 'IM10037505', 'White', '', '', '', '', '', '', 'One Piece Closets', '', 'S Trap ', 'FLUSH,SIPHONIC,GLAZED TRAP,SOFT CLOSE SEAT COVER,RIMLESS, 4D FLUSHING,TORNADO FLUSH', '', '', '4D 225 mm', '730 x 370 x 725 mm ', 'products/sanitaryware/water-closets/one-piece-closet/', 'aristidf-white-IM10037505.webp', '', 'aristidf-white-IM10037505.webp', '', '', '1'),
(7, 'Maoro', 'Water Closets', 'IM10017127', 'White', '', '', '', '', '', '', 'One Piece Closets', '', 'S Trap ', 'FLUSH, SOFT CLOSE SEAT COVER, SLIM SEAT COVER, GLAZED TRAP', '', '', '225 mm', '675 x 360 x 725 mm', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '', '', '1'),
(8, 'Marco', 'Water Closets', 'IM10037562', 'White', '', '', '', '', '', '', 'One Piece Closets', '', '', 'FLUSH,SOFT CLOSE SEAT COVER,GLAZED TRAP, SLIM SEAT COVER,IN BUILT JET', '', '', '225 mm', '672 x 355 x 724 mm ', 'products/sanitaryware/water-closets/one-piece-closet/', 'marco-white-IM10037562.webp', '', 'marco-white-IM10037562.webp', '', '', '1'),
(9, 'Aurelio', 'Water Closets', 'IM10037517', 'White', '', '', '', '', '', '', 'One Piece Closets', '', 'S Trap ', 'FLUSH,SOFT CLOSE SEAT COVER,GLAZED TRAP,SLIM SEAT COVER,IN BUILT JET', '', '', '225 mm', '650 x 370 x 755 mm', 'products/sanitaryware/water-closets/one-piece-closet/', 'aurelio-white-IM10037517.webp', '', 'aurelio-white-IM10037517.webp', '', '', '1'),
(10, 'Giovanni', 'Water Closets', 'IM10017118', 'White', '', '', '', '', '', '', 'One Piece Closets', '', 'S Trap', 'FLUSH,SOFT CLOSE SEAT COVER,GLAZED TRAP ,SLIM SEAT COVER', '', '', '225 mm', '650 x 345 x 700 mm', 'products/sanitaryware/water-closets/one-piece-closet/', 'giovanni-white-IM10017118.webp', '', 'giovanni-white-IM10017118.webp', '', '', '1'),
(11, 'Polo', 'Water Closets', 'IM10037574', 'White', '', '', '', '', '', '', 'One Piece Closets', '', '', 'FLUSH,SOFT CLOSE SEAT COVER,GLAZED TRAP,SLIM SEAT COVER, IN BUILT JET', '', '', '225 mm', '645 x 370 x 715 mm ', 'products/sanitaryware/water-closets/one-piece-closet/', 'polo-white-IM10037574.webp', '', 'polo-white-IM10037574.webp', '', '', '1'),
(12, 'Dario', 'Water Closets', 'IM10017091', 'White', '', '', '', '', '', '', 'One Piece Closets', '', 'S Trap ', 'FLUSH,SOFT CLOSE SEAT COVER,GLAZED TRAP, SLIM SEAT COVER, IN BUILT JET', '', '', '225 mm', '655 x 345 x 740 mm ', 'products/sanitaryware/water-closets/one-piece-closet/', 'dario-white-IM10017091.webp', '', 'dario-white-IM10017091.webp', '', '', '1'),
(13, 'Grerardo', 'Water Closets', 'IM10039302', 'White', '', '', '', '', '', '', 'One Piece Closets', '', 'S Trap ', 'FLUSH,SOFT CLOSE SEAT COVER, GLAZED TRAP, SLIM SEAT COVER', '', '', '225 mm', '730 x 370 x 725 mm', 'products/sanitaryware/water-closets/one-piece-closet/', 'gerardo-white-IM10039302.webp', '', 'gerardo-white-IM10039302.webp', '', '', '1'),
(14, 'Leandra', 'Water Closets', 'IM10017121(Black) , IM10039052(Black)', '', '', '', '', '', '', '', 'One piece Closets', '', 'S Trap ', 'Flush, Soft Close Seat Cover, Slim Seat Cover, Siphonic, Glazed Trap', '', '', '225MM, 300MM ', '680 X 365 X 705MM', '', 'dummyproduct.webp', '', 'dummyproduct.webp', ' IM10039052 (Black), 300MM', 'Midnight collection', '1'),
(15, 'IV G1165', 'Water Closets', 'IM10062097', 'Silver & Black', '', '', '', '', '', '', 'Wall Hung Closet', '', '', '', '', '', '', '', 'products/sanitaryware/water-closets/wall-hung-closet/', 'IV-G1165.webp', '', 'IV-G1165.webp', '', 'Limited edition', '1'),
(16, 'IV G1176', 'Water Closets', 'IM10062099', 'Rose Gold & Black', '', '', '', '', '', '', 'Wall Hung Closet', '', '', '', '', '', '', '', 'products/sanitaryware/water-closets/wall-hung-closet/', 'IV-G1176.webp', '', 'IV-G1176.webp', '', 'Limited edition', '1'),
(17, 'IV G1174', 'Water Closets', 'IM10062098', 'Gold & Black', '', '', '', '', '', '', 'Wall Hung Closet', '', '', '', '', '', '', '', 'products/sanitaryware/water-closets/wall-hung-closet/', 'IV-G1174.webp', '', 'IV-G1174.webp', '', 'Limited edition', '1'),
(18, 'IV G1066', 'Water Closets', 'IM10062093', 'Gold & White', '', '', '', '', '', '', 'Wall Hung Closet', '', '', '', '', '', '', '', 'products/sanitaryware/water-closets/wall-hung-closet/', 'IV-G1066.webp', '', 'IV-G1066.webp', '', 'Limited edition', '1'),
(19, 'IV G1067', 'Water Closets', 'IM10062094', 'Rose Gold & White', '', '', '', '', '', '', 'Wall Hung Closet', '', '', '', '', '', '', '', 'products/sanitaryware/water-closets/wall-hung-closet/', 'IV-G1067.webp', '', 'IV-G1067.webp', '', 'Limited edition', '1'),
(20, 'IV G1071', 'Water Closets', 'IM10062095', 'Gold & Black', '', '', '', '', '', '', 'Wall Hung Closet', '', '', '', '', '', '', '', 'products/sanitaryware/water-closets/wall-hung-closet/', 'IV-G1071.webp', '', 'IV-G1071.webp', '', 'Limited edition', '1'),
(21, 'IV G1168', 'Water Closets', 'IM10062096', 'Gold & Black', '', '', '', '', '', '', 'Wall Hung Closet', '', '', '', '', '', '', '', 'products/sanitaryware/water-closets/wall-hung-closet/', 'IV-G1168.webp', '', 'IV-G1168.webp', '', 'Limited edition', '1'),
(22, 'Francesa', 'Water Closets', 'IM10037533', 'White', '', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', 'WITH PP SEAT COVER (RIMLESS)', '', '', '', '470 x 367 x 370 mm', 'products/sanitaryware/water-closets/wall-hung-closet/', 'FRANCESCA--WHITE-IM10037533.webp', '', 'FRANCESCA--WHITE-IM10037533.webp', 'IM10037531,Ivory, WITH PP SEAT COVER (RIMLESS)                                          IM10060487, Ivory, WITH UF SEAT COVER (WASHDOWN)', '', '1'),
(23, 'Francesa', 'Water Closets', 'IM10037535', 'Mocha', '', '', '', '', '', '', 'Wall Hung Closet', '', '', 'With PP Seat Cover', 'Glossy', 'Matt', '', '470 x 367 x 370 mm', 'products/sanitaryware/water-closets/wall-hung-closet/', 'FRANCESCA-GLOSSY-IM10037535.webp', '', 'FRANCESCA-GLOSSY-IM10037535.webp', 'IM10037538, WITH UF SEAT COVER, Matt', '', '1'),
(24, 'Francesa', 'Water Closets', 'IM10037534', 'Latte Brown ', '', '', '', '', '', '', 'Wall Hung Closet', '', '', 'With PP Seat Cover', 'Glossy', 'Matt', '', '470 x 367 x 370 mm', 'products/sanitaryware/water-closets/wall-hung-closet/', 'FRANCESCA-GLOSSY-IM10037534.webp', '', 'FRANCESCA-GLOSSY-IM10037534.webp', 'IM10037539, WITH UF SEAT COVER, Matt', '', '1'),
(25, 'Francesa', 'Water Closets', 'IM10037536', 'Shark Grey ', '', '', '', '', '', '', 'Wall Hung Closet', '', '', 'With PP Seat Cover', 'Glossy', 'Matt', '', '470 x 367 x 370 mm', 'products/sanitaryware/water-closets/wall-hung-closet/', 'FRANCESCA-GLOSSY-IM10037536.webp', '', 'FRANCESCA-GLOSSY-IM10037536.webp', 'IM10037541, WITH UF SEAT COVER', '', '1'),
(26, 'Francesa', 'Water Closets', 'IM10037532', 'Mocha ', '', '', '', '', '', '', 'Wall Hung Closet', '', '', 'WITH PP SEAT COVER (RIMLESS)', 'Glossy', '', '', '470 x 367 x 370 mm', 'products/sanitaryware/water-closets/wall-hung-closet/', 'FRANCESCA-GLOSSY-IM10037532.webp', '', 'FRANCESCA-GLOSSY-IM10037532.webp', 'IM10043067, WITH PP SEAT COVER (WD)', '', '1'),
(27, 'Massimo', 'Water Closets', 'IM10037564', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap', 'WITH UF SEAT COVER', '', '', '-', '560 x 355 x 355 mm', 'products/sanitaryware/water-closets/wall-hung-closet/', 'MASSIMO-WHITE-IM10037564.webp', '', 'MASSIMO-WHITE-IM10037564.webp', 'IM10060240,White, WITH PP SEAT COVER ; IM10037563, Ivory, WITH PP SEAT COVER', '', '1'),
(28, 'Lorenza', 'Water Closets', 'IM10037559(White), IM10037560(White), IM10060243(Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap', 'With PP Seat Cover', '', '', '', '480 x 345 x 360 mm', 'products/sanitaryware/water-closets/wall-hung-closet/', 'LORENZA-WHITE-IM10037559.webp', '', 'LORENZA-WHITE-IM10037559.webp', 'IM10037560 WITH UF SEAT COVER,white, IM10060243WITH PP SEAT COVER,ivory ', '', '1'),
(29, 'Lorenza', 'Water Closets', 'IM10059925 (Glossy)  IM10037557 (Matt)', 'Mocha ', '', '', '', '', '', '', 'Wall Hung Closet', '', '', 'With PP Seat Cover', '', '', '', '480 X 345 X 360MM', 'products/sanitaryware/water-closets/wall-hung-closet/', 'LORENZA-GLOSSY-IM10059925.webp', '', 'LORENZA-GLOSSY-IM10059925.webp', 'IM10037557, Matt, WITH PP SEAT COVER', '', '1'),
(30, 'Enzo', 'Water Closets', 'IM10017098 (white) IM10060491 (White) IM10039092 (Ivory) ', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', 'With PP Seat Cover', '', '', '', '505 X 365 X 350MM', 'products/sanitaryware/water-closets/wall-hung-closet/', 'ENZO-WHITE-IM10017098.webp', '', 'ENZO-WHITE-IM10017098.webp', 'WITH UF SEAT COVER, WHITE, IM10060491; WITH PP SEAT COVER, IVORY, IM10039092 ', '', '1'),
(31, 'Franco', 'Water Closets', 'IM10060492(White), IM10039087(Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', '', '', '', '', '535 X 355 X 370MM ', 'products/sanitaryware/water-closets/wall-hung-closet/', 'FRANCO-WHITE-IM10060492.webp', '', 'FRANCO-WHITE-IM10060492.webp', 'IM10039087, Ivory', '', '1'),
(32, 'Lorenza', 'Water Closets', 'IM10037558', 'Shark Grey ', '', '', '', '', '', '', 'Wall Hung Closet', '', '', 'With PP Seat Cover', 'Glossy', '', '', '480 X 345 X 360MM', 'products/sanitaryware/water-closets/wall-hung-closet/', 'LORENZA-GLOSSY-SHARK-GRAY-IM10037558.webp', '', 'LORENZA-GLOSSY-SHARK-GRAY-IM10037558.webp', '', '', '1'),
(33, 'Ronaldo', 'Water Closets', 'IM10046961 (white) IM10017144 (white) IM10061346 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', 'WITH UF SEAT COVER', '', '', '', '480 X 345 X 360MM', 'products/sanitaryware/water-closets/wall-hung-closet/', 'RONALDO-WHITE-IM10046961.webp', '', 'RONALDO-WHITE-IM10046961.webp', 'IM10017144 (white) ,WITH PP SEAT COVER;  IM10061346 (Ivory) WITH PP SEAT COVER', '', '1'),
(34, 'Aldo', 'Water Closets', 'IM10039091(White), IM10060241(White), IM10060493(Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', 'WITH PP SEAT COVER (RIMLESS)', '', '', '', '480 X 345 X 360MM', 'products/sanitaryware/water-closets/wall-hung-closet/', 'ALDO-WHITE-IM10039091.webp', '', 'ALDO-WHITE-IM10039091.webp', 'IM10060241 (White), WITH PP SEAT COVER (WASHDOWN).  IM10060493(Ivory) WITH PP SEAT COVER (WASHDOWN)', '', '1'),
(35, 'Bruno', 'Water Closets', 'IM10043065 (white) IM10037522 (white) IM10037521 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', 'With PP Seat Cover', '', '', '', '490 X 350 X 360MM', 'products/sanitaryware/water-closets/wall-hung-closet/', 'BRUNO-WHITE-IM10043065.webp', '', 'BRUNO-WHITE-IM10043065.webp', ' IM10037522 (white), WITH UF SEAT COVER;  IM10037521 (Ivory),WITH PP SEAT COVER', '', '1'),
(36, 'Gino', 'Water Closets', 'IM10037548 (White) IM10039086 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', 'HYDRAULIC SEAT COVER', '', '', '', '480 X 345 X 360MM', 'products/sanitaryware/water-closets/wall-hung-closet/', 'GINO-WHITE-IM10037548.webp', '', 'GINO-WHITE-IM10037548.webp', 'IM10039086 (Ivory), HYDRAULIC SEAT COVER', '', '1'),
(37, 'Dino', 'Water Closets', 'IM10037528(White), IM10039090(Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', 'WITH PP SEAT COVER', '', '', '', '500 X 360 X 380MM', 'products/sanitaryware/water-closets/wall-hung-closet/', 'DINO-WHITE-IM10037528.webp', '', 'DINO-WHITE-IM10037528.webp', 'IM10039090 (Ivory), WITH PP SEAT COVER', '', '1'),
(38, 'Gianni', 'Water Closets', 'IM10060495 (white) IM10060496 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', 'WITH PP SEAT COVER', '', '', '', '497 X 358 X 362MM', 'products/sanitaryware/water-closets/wall-hung-closet/', 'GIANNI-WHITE-IM10060495.webp', '', 'GIANNI-WHITE-IM10060495.webp', ' IM10060496 (Ivory), WITH PP SEAT COVER', '', '1'),
(39, 'Elio', 'Water Closets', 'IM10060488 (White) IM10060489 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', 'WITH PP SEAT COVER', '', '', '', '500 X 355 X 365MM |', 'products/sanitaryware/water-closets/wall-hung-closet/', 'ELIO-WHITE-IM10060488.webp', '', 'ELIO-WHITE-IM10060488.webp', ' IM10060489 (Ivory), WITH PP SEAT COVER', '', '1'),
(40, 'Florenzo', 'Water Closets', 'IM10017109(white), IM10060387(Ivory), IM10061347(white)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', 'P Trap ', 'WITH PP SEAT COVER', '', '', '', '470 X 367 X 370MM |', 'products/sanitaryware/water-closets/wall-hung-closet/', 'FLORENZO-WHITE-IM10017109.webp', '', 'FLORENZO-WHITE-IM10017109.webp', ' IM10060387 (Ivory), WITH PP SEAT COVER, IM10061347 (white), WITH UF SEAT COVER', '', '1'),
(41, 'Dante', 'Water Closets', 'IM10037527 (white) IM10060494 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Closet', '', '', 'WITH PP SEAT COVER', '', '', '', '545 X 360 X 340MM', 'products/sanitaryware/water-closets/wall-hung-closet/', 'DANTE-WHITE-IM10037527.webp', '', 'DANTE-WHITE-IM10037527.webp', ' IM10060494 (Ivory), WITH PP SEAT COVER', '', '1'),
(42, 'FRANCESCA', '', 'IM10017102', '', '', '', '', '', '', '', 'Wall Hung Closets', '', '', 'With PP Seat Cover', '', '', '', '470 X 367 X 370MM ', 'products/sanitaryware/midnight-collection/midnight-matt/', 'francesca.webp', '', 'francesca.webp', '', 'Midnight collection', '1'),
(43, 'LORENZA', '', 'IM10017122', '', '', '', '', '', '', '', 'Wall Hung Closets', '', '', 'With PP Seat Cover', '', '', '', '480 X 345 X 360MM ', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '', 'Midnight collection', '1'),
(44, 'ART 20001', 'Water Closets', 'IM10037507', 'Art Colour', '', '', '', '', '', '', 'Wall Hung Closets', '', '', '', '', '', '', '530 X 350 X 360MM', 'products/sanitaryware/midnight-collection/midnight-matt/', 'ART-20001.webp', '', 'ART-20001.webp', '', 'Midnight Collection', '1'),
(45, 'ALFIA ORISSA', '', 'IM10037499 (white) IM10039083 (ivory)', 'White', 'Ivory', '', '', '', '', '', 'Squatting Pans ', '', '', '', '', '', '', 'PAN 20”', 'products/sanitaryware/water-closets/squatting-pans/', 'alfia-orissa-pan23.webp', '', 'alfia-orissa-pan23.webp', 'IM10039083 (ivory)', '', '1'),
(46, 'ALFIA ORISSA', '', 'IM10038969 (white) IM10039093 (ivory)', 'White', 'Ivory', '', '', '', '', '', 'Squatting Pans ', '', '', '', '', '', '', 'PAN 23', 'products/sanitaryware/water-closets/squatting-pans/', 'alfia-orissa-pan23.webp', '', 'alfia-orissa-pan23.webp', ' IM10039093 (ivory)', '', '1'),
(47, 'NICOLIA', '', 'IM10038976', 'White', '', '', '', '', '', '', 'Squatting Pans ', '', '', '', '', '', '', 'PAN 20”', 'products/sanitaryware/water-closets/squatting-pans/', 'nicolia.webp', '', 'nicolia.webp', '', '', '1'),
(48, 'VALENTINA', '', 'IM10039095', 'White', '', '', '', '', '', '', 'Squatting Pans ', '', 'P Trap', '', '', '', '', '', 'products/sanitaryware/water-closets/squatting-pans/', 'valentina.webp', '', 'valentina.webp', '', '', '1'),
(49, 'S025', 'Wash Basins', 'IM10046574 (Gray), IM10046575 (Dark Gray), IM10046573 (Black)', 'Gray', 'Dark Gray', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '570 x 430 x 150 mm', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '', '', '1'),
(50, 'S014', 'Wash Basins', 'IM10046571 (Gray), IM10046570 (Black), IM10046572 (Dark Gray)', 'Gray', 'Dark Gray', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '410 x 410 x 130 mm', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '', '', '1'),
(51, 'S002', 'Wash Basins', 'IM10046562 (Gray), IM10046561 (Black), IM10046563 (Dark Gray)', 'Gray', 'Dark Gray', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '420 x 420 x 150 mm', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '', '', '1'),
(52, 'S005', 'Wash Basins', 'IM10046565 (Gray), IM10046564 (Black), IM10046566 (Dark Gray)', 'Gray', 'Dark Gray', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '450 x 320 x 130 mm', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '', '', '1'),
(53, 'S006', 'Wash Basins', 'IM10046568 (Gray), IM10046567 (Black), IM10046569 (Dark Gray)', 'Gray', 'Dark Gray', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '365 x 365 x 110 mm', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'IM10046567 (Black), IM10046569 (Dark Gray)', '', '1'),
(54, 'GABRIELE', 'Wash Basin', 'IM10037543 (White), IM10060400 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '700 x 370 x 145 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'gabriele-white.webp', '', 'gabriele-white.webp', '', '', '1'),
(55, 'GABRIELE', 'Wash Basin', 'IM10056119 (Glossy),  IM10043071 (Matt)', 'Mocha', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '700 x 370 x 145 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'gabriele-mocha.webp', '', 'gabriele-mocha.webp', '', '', '1'),
(56, 'SANTO', 'Wash Basin', 'IM10059929 (White), IM10060511 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '485 x 450 x 438 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'santo.webp', '', 'santo.webp', '', '', '1'),
(57, 'ROCCO', 'Wash Basin', 'IM10037579 (White), IM10060510 (White)', 'White', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '800 x 400 x 105 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'rocco.webp', '', 'rocco.webp', '', '', '1'),
(58, 'GABRIELE', 'Wash Basin', 'IM10039293 (Glossy), IM10043072 (Matt) ', 'Shark Grey', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '700 x 370 x 145 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'gabriele-shark-grey.webp', '', 'gabriele-shark-grey.webp', 'IM10043072 (Matt)', '', '1'),
(59, 'GABRIELE', 'Wash Basin', 'IM10056118 (Glossy), IM10039063 (Matt)', 'Latte Brown', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '700 x 370 x 145 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'gabriele-latte-brown.webp', '', 'gabriele-latte-brown.webp', 'IM10039063 (Matt)', '', '1'),
(60, 'ANDREA', 'Wash Basin', 'IM10037501', 'White', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '600 x 405 x 130 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'andrea-white.webp', '', 'andrea-white.webp', '', '', '1'),
(61, 'ANDREA', 'Wash Basin', 'IM10039280 (Glossy), IM10039059 (Matt)', 'Mocha', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '600 x 405 x 130 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'andrea-mocha.webp', '', 'andrea-mocha.webp', 'IM10039059 (Matt)', '', '1'),
(62, 'ANDREA', 'Wash Basin', 'IM10039281 (Glossy), IM10039060 (Matt)', 'Shark Grey', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '600 x 405 x 130 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'andrea-shark-grey.webp', '', 'andrea-shark-grey.webp', 'IM10039060 (Matt)', '', '1'),
(63, 'ANDREA', 'Wash Basin', 'IM10039279', 'Latte Brown', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy ', '', '', '600 x 405 x 130 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'andrea-latte-brown.webp', '', 'andrea-latte-brown.webp', '', '', '1'),
(64, 'MATTIA', 'Wash Basin', 'IM10017134 (White), IM10017132 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '600 x 380 x 130 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'mattia-white.webp', '', 'mattia-white.webp', 'IM10017132 (Ivory)', '', '1'),
(65, 'MATTIA', 'Wash Basin', 'IM10039288 (Glossy), IM10039061 (Matt) ', 'Mocha', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '600 x 380 x 130 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'mattia-mocha.webp', '', 'mattia-mocha.webp', 'IM10039061 (Matt)', '', '1'),
(66, 'MATTIA', 'Wash Basin', 'IM10037568 (Glossy), IM10037569 (Matt)', 'Shark Grey', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '600 x 380 x 130 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'mattia-shark-grey.webp', '', 'mattia-shark-grey.webp', 'IM10037569 (Matt)', '', '1'),
(67, 'MATTIA', 'Wash Basin', 'IM10039287 (Glossy), IM10039062 (Matt)', 'Latte Brown', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '600 x 380 x 130 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'mattia-latte-brown.webp', '', 'mattia-latte-brown.webp', 'IM10039062 (Matt)', '', '1'),
(68, 'TOMASO', 'Wash Basin', 'IM10017148 (White), IM10060404 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '590 x 370 x 135 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'tomaso-white.webp', '', 'tomaso-white.webp', 'IM10060404 (Ivory)', '', '1'),
(69, 'TOMASO', 'Wash Basin', 'IM10060403 (Glossy), IM10039065 (Matt)', 'Mocha', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '590 x 370 x 135 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'tomaso-mocha.webp', '', 'tomaso-mocha.webp', 'IM10039065 (Matt)', '', '1'),
(70, 'TOMASO', 'Wash Basin', 'IM10060401 (Glossy), IM10039066 (Matt)', 'Latte Brown', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '590 X 370 X 135MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'tomaso-latte-brown.webp', '', 'tomaso-latte-brown.webp', 'IM10039066 (Matt)', '', '1'),
(71, 'ANTONIO', 'Wash Basin', 'IM10017075 (White), IM10061357 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '463 x 325 x 135 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'antonio-white.webp', '', 'antonio-white.webp', 'IM10061357, Ivory', '', '1'),
(72, 'ANTONIO', 'Wash Basin', 'IM10037503 (Glossy), IM10037504 (Matt)', 'Mocha', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '463 x 325 x 135 mm', 'products/sanitaryware/wash-basins/table-top-basin/', 'antonio-mocha.webp', '', 'antonio-mocha.webp', 'IM10037504, Matt', '', '1'),
(73, 'ANTONIO', 'Wash Basin', 'IM10038970 (Glossy), IM10056115 (Matt)', 'Shark Grey', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '463 X 325 X 135MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'antonio-shark-grey.webp', '', 'antonio-shark-grey.webp', 'IM10056115, Matt', '', '1'),
(74, 'ANTONIO', 'Wash Basin', 'IM10037502 (Glossy), IM10039058 (Matt)', 'Latte Brown', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '463 X 325 X 135MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'antonio-latte-brown.webp', '', 'antonio-latte-brown.webp', 'IM10039058, Matt', '', '1'),
(75, 'ALESANDRA', 'Wash Basin', 'IM10037498 (White), IM10060395 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '430 X 265 X 160MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'alesandra-white.webp', '', 'alesandra-white.webp', 'IM10060395, Ivory', '', '1'),
(76, 'ALESANDRA', 'Wash Basin', 'IM10060396 (Glossy), IM10061356 (Matt)', 'Mocha', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '425 X 425 X 135MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'alesandra-mocha.webp', '', 'alesandra-mocha.webp', 'IM10061356, Matt', '', '1'),
(77, 'ALESANDRA', 'Wash Basin', 'IM10060397', 'Shark Grey', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', 'Matt', '', '425 X 425 X 135MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'alesandra-shark-grey.webp', '', 'alesandra-shark-grey.webp', '', '', '1'),
(78, 'ALESANDRA', 'Wash Basin', 'IM10039283 (Glossy), IM10060398 (Matt)', 'Latte Brown', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', 'Matt', '', '425 X 425 X 135MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'alesandra-latte-brown.webp', '', 'alesandra-latte-brown.webp', 'IM10060398 Matt', '', '1'),
(79, 'RICO', 'Wash Basin', 'IM10038979 (White), IM10060509 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '705 X 410 X 155MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'rico.webp', '', 'rico.webp', '', '', '1'),
(80, 'NICO', 'Wash Basin', 'IM10017136 (White), IM10061354 (White)', 'White', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '700 X 370 X 145MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'nico.webp', '', 'nico.webp', 'IM10061354 (White)', '', '1'),
(81, 'TITO', 'Wash Basin', 'IM10037585 (White), IM10060514 (White) ', 'White', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '540 X 395 X 135MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'tito.webp', '', 'tito.webp', 'IM10060514 (White)', '', '1'),
(82, 'DAVIDO', 'Wash Basin', 'IM10043066 (White), IM10060519 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '500 X 420 X 145MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'davido.webp', '', 'davido.webp', 'IM10060519 (Ivory)', '', '1'),
(83, 'CARBINI', 'Wash Basin', 'IM10017083 (White), IM10060504 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '560 X 396 X 145MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'carbini.webp', '', 'carbini.webp', 'IM10060504 (Ivory)', '', '1'),
(84, 'ARTURO', 'Wash Basin', 'IM10037516 (White), IM10060516 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '425 X 425 X 152MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'arturo.webp', '', 'arturo.webp', 'IM10060516 (Ivory)', '', '1'),
(85, 'PLACIDO', 'Wash Basin', 'IM10038978 (White), IM10060522 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '610 X 410 X 103MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'placido.webp', '', 'placido.webp', 'IM10060522 (Ivory)', '', '1'),
(86, 'MANUELE', 'Wash Basin', 'IM10037561 (White),IM10060506 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '492 X 400 X 145MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'manuele.webp', '', 'manuele.webp', 'IM10060506 (Ivory)', '', '1'),
(87, 'ROSSO', 'Wash Basin', 'IM10038980 (White), IM10060502 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '360 X 360 X 115MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'rosso.webp', '', 'rosso.webp', 'IM10060502 (Ivory)', '', '1'),
(88, 'UGO', 'Wash Basin', 'IM10017149 (White), IM10060499 (White)', 'White', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '463 X 325 X 135MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'ugo.webp', '', 'ugo.webp', 'IM10060499 (White)', '', '1'),
(89, 'DANIELE', 'Wash Basin', 'IM10039289 (White), IM10060518 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '550 X 410 X 155MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'daniele.webp', '', 'daniele.webp', 'IM10060518 (Ivory)', '', '1'),
(90, 'TOKYO', 'Wash Basin', 'IM10037586 (White), IM10060517 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '425 X 425 X 135MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'tokyo.webp', '', 'tokyo.webp', 'IM10060517 (Ivory)', '', '1'),
(91, 'TERZO', 'Wash Basin', 'IM10017146 (White), IM10060512 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '395 X 395 X 141MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'terzo.webp', '', 'terzo.webp', 'IM10060512 (Ivory)', '', '1'),
(92, 'ARMANDO', 'Wash Basin', 'IM10037506 (White), IM10060500 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '400 X 400 X 140MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'armando.webp', '', 'armando.webp', 'IM10060500 (Ivory)', '', '1'),
(93, 'TINO', 'Wash Basin', 'IM10037584 (White), IM10060513 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '420 X 420 X 155MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'tino.webp', '', 'tino.webp', 'IM10060513 (Ivory)', '', '1'),
(94, 'GAMEO', 'Wash Basin', 'IM10017113 (White), IM10060503 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '270 X 270 X 140MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'gameo.webp', '', 'gameo.webp', 'IM10060503 (Ivory)', '', '1'),
(95, 'MARCELLO', 'Wash Basin', 'IM10017129 (White), IM10060508 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '400 X 400 X 135MM', 'products/sanitaryware/wash-basins/table-top-basin/', 'marcello.webp', '', 'marcello.webp', 'IM10060508 (Ivory)', '', '1'),
(96, 'BW20-025', 'Wash Basin', 'IM10062110', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/crystal-glass/', 'BW20-025.webp', '', 'BW20-025.webp', 'Glass Wash Basin', 'Crystal Glass', '1'),
(97, 'BW20-047', 'Wash Basin', 'IM10062111', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/crystal-glass/', 'BW20-047.webp', '', 'BW20-047.webp', 'Glass Wash Basin', 'Crystal Glass', '1'),
(98, 'MAB-001', 'Wash Basin', 'IM10062108', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/crystal-glass/', 'MAB-001.webp', '', 'MAB-001.webp', 'Moroccan Wash Basin', 'Crystal Glass', '1'),
(99, 'MAB-002', 'Wash Basin', 'IM10062109', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/crystal-glass/', 'MAB-002.webp', '', 'MAB-002.webp', 'Moroccan Wash Basin', 'Crystal Glass', '1'),
(100, 'BW20-027', 'Wash Basin', 'IM10062113', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/crystal-glass/', 'BW20-027.webp', '', 'BW20-027.webp', 'Glass Wash Basin', 'Crystal Glass', '1'),
(101, 'BW21-004', 'Wash Basin', 'IM10062112', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/crystal-glass/', 'BW21-004.webp', '', 'BW21-004.webp', 'Glass Wash Basin', 'Crystal Glass', '1'),
(102, '6151-B3', 'Wash Basin', 'IM10062116', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/crystal-glass/', '6151-B3.webp', '', '6151-B3.webp', 'Wash Basin', 'Crystal Glass', '1'),
(103, '6151-B1', 'Wash Basin', 'IM10062114', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/crystal-glass/', '6151-B1.webp', '', '6151-B1.webp', 'Wash Basin', 'Crystal Glass', '1'),
(104, '6151-B2', 'Wash Basin', 'IM10062115', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/crystal-glass/', '6151-B2.webp', '', '6151-B2.webp', 'Wash Basin', 'Crystal Glass', '1'),
(105, 'MATEO', 'Wash Basins', 'IM10037565', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', '', '', '420 X 310 X 135MM |', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'mateo-glossy.webp', '', 'mateo-glossy.webp', '', 'Midnight Collection', '1'),
(106, 'EDOARDO', 'Wash Basins', 'IM10039284', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', '', '', '575 X 475 X 167MM |', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'edoardo-glossy.webp', '', 'edoardo-glossy.webp', '', 'Midnight Collection', '1'),
(107, 'RICARDO', 'Wash Basins', 'IM10017142', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy', '', '', '325 X 292 X 110MM |', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'ricardo-glossy.webp', '', 'ricardo-glossy.webp', '', 'Midnight Collection', '1'),
(108, 'MATTIA', 'Wash Basins', 'IM10037567', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', 'Matt', '', '600 X 380 X 130MM |', 'products/sanitaryware/midnight-collection/midnight-matt/', 'mattia.webp', '', 'mattia.webp', '', 'Midnight Collection', '1'),
(109, 'ANDREA', 'Wash Basins', 'IM10039056', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', 'Matt', '', '600 X 405 X 130MM', 'products/sanitaryware/midnight-collection/midnight-matt/', 'andrea.webp', '', 'andrea.webp', '', 'Midnight Collection', '1'),
(110, 'ANTONIO', 'Wash Basins', 'IM10039056', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', 'Matt', '', '463 X 325 X 135MM |', 'products/sanitaryware/midnight-collection/midnight-matt/', 'ANTONIO.webp', '', 'ANTONIO.webp', '', 'Midnight Collection', '1'),
(111, 'ALESANDRA', 'Wash Basins', 'IM10037497', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', 'Matt', '', '430 X 265 X 160MM', 'products/sanitaryware/midnight-collection/midnight-matt/', 'ALESANDRA.webp', '', 'ALESANDRA.webp', '', 'Midnight Collection', '1'),
(112, 'TOMASO', 'Wash Basins', 'IM10039064', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', 'Matt', '', '590 X 370 X 135MM |', 'products/sanitaryware/midnight-collection/midnight-matt/', 'TOMASO.webp', '', 'TOMASO.webp', '', 'Midnight Collection', '1'),
(113, 'RICARDO', 'Wash Basins', 'IM10060407', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', 'Matt', '', '325 X 292 X 110MM |', 'products/sanitaryware/midnight-collection/midnight-matt/', 'RICARDO.webp', '', 'RICARDO.webp', '', 'Midnight Collection', '1'),
(114, 'MATEO', 'Wash Basins', 'IM10060413', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', 'Matt', '', '420 X 310 X 135MM |', 'products/sanitaryware/midnight-collection/midnight-matt/', 'MATEO.webp', '', 'MATEO.webp', '', 'Midnight Collection', '1'),
(115, 'ART 9002', 'Wash Basins', 'IM10037508', 'Art Colour', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '410 X 410 X 140MM', 'products/sanitaryware/midnight-collection/midnight-matt/', 'ART-9002.webp', '', 'ART-9002.webp', '', 'Midnight Collection', '1'),
(116, 'GAIA', 'Wash Basins ', 'IM10060537  (WHITE) IM10060538   (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', 'Wall hung basins', '', '', '', '', '', '530 x 360 x 120mm', 'products/sanitaryware/wash-basins/table-top-and-wall-hung/', 'GAIA-WHITE-IM1006537.webp', '', 'GAIA-WHITE-IM1006537.webp', 'IM10060538 (IVORY)', '', '1'),
(117, 'FLAVIA', 'Wash Basins ', 'IM10017099  (WHITE) IM10060381  (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', 'Wall hung basins', '', '', '', '', '', '430 x 350 x 132mm', 'products/sanitaryware/wash-basins/table-top-and-wall-hung/', 'FLAVIA-WHITE-IM10017099.webp', '', 'FLAVIA-WHITE-IM10017099.webp', 'IM10060381 (IVORY)', '', '1'),
(118, 'GINEVRA', 'Wash Basins ', 'IM10017115', 'White ', 'Ivory', '', '', '', '', '', 'Table Top Basins', 'Wall hung basins', '', '', '', '', '', '454 X 390 X 130MM', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '', '', '1'),
(119, 'EMILIA', 'Wash Basins ', 'IM10017097 (WHITE) IM10060536 (IVORY) IM10060418 (MOCHA) IM10060420 (LATTE BROW) IM10060419 (SHARK GREY)', 'White ', 'Ivory', '', '', '', '', '', 'Table Top Basins', 'Wall hung basins', '', '', '', '', '', '365 x 250 x 105mm', 'products/sanitaryware/wash-basins/table-top-and-wall-hung/', 'EMILIA-WHITE-IM10017097.webp', '', 'EMILIA-WHITE-IM10017097.webp', 'IM10060536 (IVORY) IM10060418 (MOCHA) IM10060420 (LATTE BROW) IM10060419 (SHARK GREY)', '', '1'),
(120, 'MATEO', 'Wash Basins ', 'IM10037566 (WHITE) IM10060412 (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Table Top Basins', 'Wall hung basins', '', '', '', '', '', '20 X 310 X 135MM', 'products/sanitaryware/wash-basins/table-top-and-wall-hung/', 'MATEO-WHITE-IM10037566.webp', '', 'MATEO-WHITE-IM10037566.webp', 'IM10060412 (IVORY)', '', '1'),
(121, 'MATEO', 'Wash Basins ', 'IM10039304 (Glossy) IM10060415 (Matt)', 'Mocha', '', '', '', '', '', '', 'Table Top Basins', 'Wall hung basins', '', '', 'Glossy', 'Matt', '', '420 X 310 X 135MM', 'products/sanitaryware/wash-basins/table-top-and-wall-hung/', 'MATEO-GLOSSY-IM10039304.webp', '', 'MATEO-GLOSSY-IM10039304.webp', 'IM10060415 (Matt)', '', '1'),
(122, 'MATEO', 'Wash Basins ', 'IM10039303 (Gloss) IM10060416 (Matt)', 'Latte Brown ', '', '', '', '', '', '', 'Table Top Basins', 'Wall hung basins', '', '', 'Glossy', 'Matt', '', '420 X 310 X 135MM', 'products/sanitaryware/wash-basins/table-top-and-wall-hung/', 'MATEO-GLOSSY-IM10039303.webp', '', 'MATEO-GLOSSY-IM10039303.webp', 'IM10060416 (Matt)', '', '1'),
(123, 'MATEO', 'Wash Basins ', 'IM10060411 (Gloss) IM10060414 (Matt)', 'Shark Grey', '', '', '', '', '', '', 'Table Top Basins', 'Wall hung basins', '', '', 'Glossy', 'Matt', '', '325 X 292 X 110MM', 'products/sanitaryware/wash-basins/table-top-and-wall-hung/', 'MATEO-GLOSSY-IM10060411.webp', '', 'MATEO-GLOSSY-IM10060411.webp', 'IM10060414 (Matt)', '', '1'),
(124, 'GABRIELE', '', 'IM10037544', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '700 X 370 X 145MM |', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'gabriele-glossy.webp', '', 'gabriele-glossy.webp', '', 'Midnight Collection', '1'),
(125, 'ANDREA', '', 'IM10017068', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '600 X 405 X 130MM |', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'andrea-glossy.webp', '', 'andrea-glossy.webp', '', 'Midnight Collection', '1'),
(126, 'ALESANDRA', '', 'IM10017065', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy ', '', '', '430 X 265 X 160MM', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'alesandra-glossy.webp', '', 'alesandra-glossy.webp', '', 'Midnight Collection', '1'),
(127, 'TOMASO', '', 'IM0017147', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', 'Glossy ', '', '', '590 X 370 X 135MM', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'tomaso-glossy.webp', '', 'tomaso-glossy.webp', '', 'Midnight Collection', '1'),
(128, 'MATTIA', '', 'IM10037570', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '600 X 380 X 130MM |', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'mattia-glossy.webp', '', 'mattia-glossy.webp', '', 'Midnight Collection', '1'),
(129, 'ANTONIO', '', 'IM10017071', '', '', '', '', '', '', '', 'Table Top Basins', '', '', '', '', '', '', '463 X 325 X 135MM |', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'antonio-glossy.webp', '', 'antonio-glossy.webp', '', 'Midnight Collection', '1'),
(130, 'CAMILLA', 'Wash Basins ', 'IM10017082 (white) IM10060523 (Ivory)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '415 X 385 X 160MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'CAMILLA-WHITE-IM10017082.webp', '', 'CAMILLA-WHITE-IM10017082.webp', 'IM10060523 (Ivory)', '', '1'),
(131, 'ELISA', 'Wash Basins ', 'IM10017096', 'White', '', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '525 X 415X 155MM', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '', '', '1'),
(132, 'RICARDO', 'Wash Basins ', 'IM10017143 (WHITE) IM10060406 (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '325 X 292 X 110MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'RICARDO-WHITE-IM10017143.webp', '', 'RICARDO-WHITE-IM10017143.webp', 'IM10060406 (IVORY)', '', '1'),
(133, 'RICARDO', 'Wash Basins ', 'IM10039307 (GLOSSY), IM10060408 (MATT)', 'Mocha', '', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', 'Glossy', 'Matt', '', '325 X 292 X 110MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'RICARDO-GLOSSY-IM10039307.webp', '', 'RICARDO-GLOSSY-IM10039307.webp', 'IM10060408 (MATT)', '', '1'),
(134, 'RICARDO', 'Wash Basins ', 'IM10056116 (GLOSSY) IM10060409 (MATT)', 'Shark grey ', '', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', 'Glossy', 'Matt', '', '325 X 292 X 110MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'RICARDO-WHITE-IM10056116.webp', '', 'RICARDO-WHITE-IM10056116.webp', ' IM10060409 (MATT)', '', '1'),
(135, 'RICARDO', 'Wash Basins ', 'IM10039306 (GLOSSY) IM10060410 (MATT)', 'Latte Brown ', '', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', 'Glossy', 'Matt', '', '325 X 292 X 110MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'RICARDO-GLOSSY-IM10039306.webp', '', 'RICARDO-GLOSSY-IM10039306.webp', ' IM10060410 (MATT)', '', '1'),
(136, 'BLANCA', 'Wash Basins ', 'IM10038972 (WHITE) IM10060531 (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '460 X 315 X 142MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'BLANCA-WHITE-IM10038972.webp', '', 'BLANCA-WHITE-IM10038972.webp', 'IM10060531 (IVORY)', '', '1'),
(137, 'BEATRICE', 'Wash Basins ', 'IM10017078 (WHITE) IM10060525 (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '465 X 285 X 155MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'BEATRICE-WHITE-IM10017078.webp', '', 'BEATRICE-WHITE-IM10017078.webp', 'IM10060525 (IVORY)', '', '1'),
(138, 'ELENORA', 'Wash Basins ', 'IM10017095', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '565 X 400 X 135MM', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '', '', '1'),
(139, 'ARIANA', 'Wash Basins ', 'IM10038971 (WHITE) IM10060530 (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '363 X 360 X 146MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'ARIANA-WHITE-IM10038971.webp', '', 'ARIANA-WHITE-IM10038971.webp', 'IM10060530 (IVORY)', '', '1'),
(140, 'CAREN', 'Wash Basins ', 'IM10017085 (WHITE) IM10060528 (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '357 X 257 X 120MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'CAREN-WHITE-IM10017085.webp', '', 'CAREN-WHITE-IM10017085.webp', 'IM10060528 (IVORY)', '', '1'),
(141, 'ELENA', 'Wash Basins ', 'IM10017093 (WHITE) IM10060452 (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '410 X 372 X 115MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'ELENA-WHITE-IM10017093.webp', '', 'ELENA-WHITE-IM10017093.webp', 'IM10060452 (IVORY)', '', '1'),
(142, 'ACHERON', 'Wash Basins ', 'IM10038967', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '515 X 430 X 880MM', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '', '', '1'),
(143, 'DRUSILLA', 'Wash Basins ', 'IM10017092 (WHITE) IM10060532 (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '450 X 350 X 175MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'DRUSILLA-WHITE-IM10017092.webp', '', 'DRUSILLA-WHITE-IM10017092.webp', 'IM10060532 (IVORY)', '', '1'),
(144, 'CARLOTTA', 'Wash Basins ', 'IM10017084I (WHITE) IM10060527 (IVORY) ', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '321 X 256 X 120MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'CARLOTTA-WHITE-IM10017084.webp', '', 'CARLOTTA-WHITE-IM10017084.webp', 'IM10060527 (IVORY)', '', '1'),
(145, 'CATERINA', 'Wash Basins ', 'IM10017086 (WHITE) IM10060379 (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '435 X 341 X 180MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'CATERINA-WHITE-IM10017086.webp', '', 'CATERINA-WHITE-IM10017086.webp', 'IM10060379 (IVORY)', '', '1'),
(146, 'NUMERO', 'Wash Basins ', 'IM10017140 (WHITE) IM10060524 (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '420 X 300 X 105MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'NUMERO-WHITE-IM10017140.webp', '', 'NUMERO-WHITE-IM10017140.webp', 'IM10060524 (IVORY)', '', '1'),
(147, 'ANGELICA', 'Wash Basins ', 'IM10017070 (WHITE) IM10060526  (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '420 X 277 X 153MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'ANGELICA-WHITE-IM10017070.webp', '', 'ANGELICA-WHITE-IM10017070.webp', 'IM10060526 (IVORY)', '', '1'),
(148, 'CHIARA', 'Wash Basins ', 'IM10017088', 'White', '', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '475 X 370 X 175MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'WHITE-IM10017088.webp', '', 'WHITE-IM10017088.webp', '', '', '1'),
(149, 'VINCENZO', 'Wash Basins ', 'IM10038985  (WHITE) IM10060529   (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '310 X 305 X 125MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'VINCENZO-WHITE-IM10038985.webp', '', 'VINCENZO-WHITE-IM10038985.webp', 'IM10060529 (IVORY)', '', '1'),
(150, 'EDOARDO', 'Wash Basins ', 'IM10038973 (WHITE) IM10060535   (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '575 X 475 X 167MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'EDOARDO-WHITE-IM10038973.webp', '', 'EDOARDO-WHITE-IM10038973.webp', 'IM10060535 (IVORY)', '', '1'),
(151, 'EDOARDO', 'Wash Basins ', 'IM10039285', 'Latte Brown ', '', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', 'Glossy', '', '', '575 X 475 X 167MM', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'EDOARDO-GLOSSY-IM10039285.webp', '', 'EDOARDO-GLOSSY-IM10039285.webp', '', '', '1'),
(152, 'CLAUDIA', 'Wash Basins ', 'IM10017089 (WHITE) IM10060380   (IVORY)', 'White', 'Ivory', '', '', '', '', '', 'Wall Hung Basins ', '', '', '', '', '', '', '430 X 430 X 200M', 'products/sanitaryware/wash-basins/wall-hung-basins/', 'CLAUDIA-WHITE--IM10017089.webp', '', 'CLAUDIA-WHITE--IM10017089.webp', 'IM10060380 (IVORY)', '', '1'),
(153, 'POP-UP WITH CERAMIC CAP', '', 'IM10037575', '', '', '', '', '', '', '', 'Allied Product', '', '', '', 'Glossy', '', '', '463 X 325 X 135MM |', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'pop-up-with-ceramic-cap-glossy.webp', '', 'pop-up-with-ceramic-cap-glossy.webp', '', 'Midnight Collection', '1'),
(154, 'IV 401-9', 'Wash Basins ', 'IM10062100', 'Gold', '', '', '', '', '', '', 'One Piece Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/one-piece-basin/', 'IV401-9-GOLD-IM10062100.webp', '', 'IV401-9-GOLD-IM10062100.webp', '', '', '1'),
(155, 'IV 401-28', 'Wash Basins ', 'IM10062101', 'Gold & Black', '', '', '', '', '', '', 'One Piece Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/one-piece-basin/', 'IV401-28-GOLD+BLACK-IM10062101.webp', '', 'IV401-28-GOLD+BLACK-IM10062101.webp', '', '', '1'),
(156, 'MS-118', 'Wash Basins ', 'IM10043074', 'Marble Stone', '', '', '', '', '', '', 'One Piece Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/one-piece-basin/', 'MS-118-MARBLE-IM10043074.webp', '', 'MS-118-MARBLE-IM10043074.webp', '', '', '1'),
(157, 'IV 400', 'Wash Basins ', 'IM10062102', 'Black & Orange', '', '', '', '', '', '', 'One Piece Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/one-piece-basin/', 'IV400-BLACK+ORANGE-IM10062102.webp', '', 'IV400-BLACK+ORANGE-IM10062102.webp', '', '', '1'),
(158, 'MS-114', 'Wash Basins ', 'IM10043073', 'Marble Stone', '', '', '', '', '', '', 'One Piece Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/one-piece-basin/', 'MS-114-MARBLE-IM10043073.webp', '', 'MS-114-MARBLE-IM10043073.webp', '', '', '1'),
(159, 'GIORGIA', 'Wash Basins ', 'IM10017117', 'White', '', '', '', '', '', '', 'One Piece Basins', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/one-piece-basin/', 'GIORGIA-WHITE-IM10017117.webp', '', 'GIORGIA-WHITE-IM10017117.webp', '', '', '1');
INSERT INTO `sanitaryware` (`product_id`, `product_name`, `category`, `im_code`, `colour`, `colour_one`, `colour_two`, `colour_three`, `colour_four`, `colour_five`, `packing`, `type`, `type_one`, `trap_type`, `features`, `finish`, `finish_one`, `thickness`, `dimension`, `path`, `product_image`, `view`, `product_multiple_imgs`, `other`, `collection`, `product_status`) VALUES
(160, 'GIULIA', '', 'IM10037549 WHITE IM10060541 IVORY', 'White', 'Ivory', '', '', '', '', '', 'Integrated Basins', '', '', '', '', '', '', '480 X 425 X 375MM', 'products/sanitaryware/wash-basins/integrated-basin/', 'giulia.webp', '', 'giulia.webp', 'IM10060541 IVORY', '', '1'),
(161, 'ILARIA', '', 'IM10037551 WHITE IM10060542 IVORY', 'White', 'Ivory', '', '', '', '', '', 'Integrated Basins', '', '', '', '', '', '', '565 X 480 X 410MM', 'products/sanitaryware/wash-basins/integrated-basin/', 'ilaria.webp', '', 'ilaria.webp', 'IM10060542 IVORY', '', '1'),
(162, 'ISABELLA', '', 'IM10060543 WHITE IM10060544 IVORY', 'White', 'Ivory', '', '', '', '', '', 'Integrated Basins', '', '', '', '', '', '', '470 X 430 X 360MM', 'products/sanitaryware/wash-basins/integrated-basin/', 'isabella.webp', '', 'isabella.webp', 'IM10060544 IVORY', '', '1'),
(163, 'LARA', '', 'IM10060545 WHITE IM10060546 IVORY', 'White', 'Ivory', '', '', '', '', '', 'Integrated Basins', '', '', '', '', '', '', '550 X 490 X 325MM', 'products/sanitaryware/wash-basins/integrated-basin/', 'lara.webp', '', 'lara.webp', 'IM10060546 IVORY', '', '1'),
(164, 'LELIA', '', 'IM10060547 WHITE IM10060548 IVORY ', 'White', 'Ivory', '', '', '', '', '', 'Integrated Basins', '', '', '', '', '', '', '500 X 455 X 335MM', 'products/sanitaryware/wash-basins/integrated-basin/', 'lelia.webp', '', 'lelia.webp', 'IM10060548 IVORY', '', '1'),
(165, 'LIVIA', '', 'IM10060549 WHITE IM10060550 IVORY', 'White', 'Ivory', '', '', '', '', '', 'Integrated Basins', '', '', '', '', '', '', '500 X 510 X 360M', 'products/sanitaryware/wash-basins/integrated-basin/', 'livia.webp', '', 'livia.webp', 'IM10060550 IVORY', '', '1'),
(166, 'GARCIA', '', 'IM10038975 WHITE IM10061364 IVORY', 'White', 'Ivory', '', '', '', '', '', 'Wash Basin with Half & Full Pedestals', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'GARCIA-WHITE-IM10038975.webp', '', 'GARCIA-WHITE-IM10038975.webp', 'IM10061364 IVORY, Wash basin ', '', '1'),
(167, 'BETHANY', '', 'IM10061365 WHITE IM10061366 IVORY', 'White', 'Ivory', '', '', '', '', '', 'Wash Basin with Half & Full Pedestals', '', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'IM10061366 IVORY, Full pedestal ', '', '1'),
(168, 'LUDOVICA', '', 'IM10060554 WHITE IM10060555 IVORY', 'White', 'Ivory', '', '', '', '', '', 'Half Pedestal ', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'LUDOVICA-WHITE-IM10060554.webp', '', 'LUDOVICA-WHITE-IM10060554.webp', 'IM10060555 IVORY, Half pedestal', '', '1'),
(169, 'TYRO', '', 'IM10037577 WHITE (Wash basin) , ALETA IM10038968 WHITE (Pedestal)', 'White', '', '', '', '', '', '', 'Wash Basin and Pedestal', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'TYRO-WHITE-IM10037577.webp', '', 'TYRO-WHITE-IM10037577.webp', '', '', '1'),
(170, 'ACHERON', '', 'IM10038967 WHITE (Wash basin), ALETA IM10038968 WHITE (Pedestal)', 'White ', '', '', '', '', '', '', 'Wash Basin and Pedestal', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'ACHERON-WHITE-IM10038967.webp', '', 'ACHERON-WHITE-IM10038967.webp', '', '', '1'),
(171, 'ALEXA/ELISA', '', 'IM10039291 ALEXA BASIN IM10059934 ELISA PEDESTAL', '', '', '', '', '', '', '', 'Wash Basin with Half & Full Pedestals', '', '', '', '', '', '', '510 X 400 X 770MM', 'products/sanitaryware/midnight-collection/midnight-glossy/', 'alexa.elisa-glossy.webp', '', 'alexa.elisa-glossy.webp', '', 'Midnight Collection', '1'),
(172, 'IV 1010 L1(ON TRAY)', 'Shower Enclosures', 'IM10067617 - IV 1010 L1 (On Tray), IM10067618 - IV 1212 L1 (On Tray)', '', '', '', '', '', '', '', 'Shower Enclosures', '', '', '', '', '', '', 'IV 1010 L1 (On Tray) - 1000 x 1000 x 2050  mm, IV 1212 L1 (On Tray) - 1200 x 1200 x 2050 mm', 'products/sanitaryware/wellness/shower-enclosures/', 'im10067617.webp', '', 'im10067617.webp', '', '', '1'),
(173, 'IV 900 S(ON TRAY)', 'Shower Enclosures', 'IM10067619 - IV 900 S (On Tray), IM10067620 - IV 1000 S (On Tray)', '', '', '', '', '', '', '', 'Shower Enclosures', '', '', '', '', 'Matt', '', 'IV 900 S (On Tray) - 900 x 900 x 2050 mm, IV 1000 S (ON TRAY) - 1000 x 1000 x 2050 mm', 'products/sanitaryware/wellness/shower-enclosures/', 'im10067619.webp', '', 'im10067619.webp', '', '', '1'),
(174, 'IV 1111 S(ON TRAY)', 'Shower Enclosures', 'IM10067621 - IV 1111 S (On Tray), IM10067622 - IV 1212 S (On Tray)', '', '', '', '', '', '', '', 'Shower Enclosures', '', '', '', '', 'Matt', '', 'IV 1111 S (On Tray) - 1100 x 1100 x 2050 mm, IV 1212 S (On Tray) - 1200 x 1200 x 2050 mm', 'products/sanitaryware/wellness/shower-enclosures/', 'im10067621.webp', '', 'im10067621.webp', '', '', '1'),
(175, 'IV 1212(ON DEEP TRAY)', 'Shower Enclosures', 'IM10067626', '', '', '', '', '', '', '', 'Shower Enclosures', '', '', '', '', 'Matt', '', '1250 x 1250 x 2050 mm', 'products/sanitaryware/wellness/shower-enclosures/', 'im10067626.webp', '', 'im10067626.webp', '', '', '1'),
(176, 'IV 1212-I (ON TUB)', 'Shower Enclosures', 'IM10067627', '', '', '', '', '', '', '', 'Shower Enclosures', '', '', '', '', '', '', '1250 x 1250 x 2140 mm', 'products/sanitaryware/wellness/shower-enclosures/', 'im10067627.webp', '', 'im10067627.webp', '', '', '1'),
(177, 'IV 1209 R (ON TRAY)', 'Shower Enclosures', 'IM10067623 - IV 1209 R (On Tray), IM10067624 - IV 1590 R (On Tray), IM10067625 - IV 1790 R (On Tray)', '', '', '', '', '', '', '', 'Shower Enclosures', '', '', '', '', '', '', 'IV 1209 R (On Tray) - 1200 x 900 x 2050 mm, IV 1590 R (On Tray) - 1500 x 900 x 2050 mm, IV 1790 R (On Tray) - 1790 x 900 x 2050 mm', 'products/sanitaryware/wellness/shower-enclosures/', 'im10067623.webp', '', 'im10067623.webp', '', '', '1'),
(178, 'Jacopo', 'Urinals', 'IM10060573 (White), IM10060574 (Ivory)', 'White ', 'Ivory', '', '', '', '', '', 'Sensor Flushing', '', '', '', '', '', '', '550 x 310 x 325 mm', 'products/sanitaryware/urinals/', 'jacopo-white.webp', '', 'jacopo-white.webp', '', '', '1'),
(179, 'Jacopo', 'Urinals', 'IM10061372', 'Mocha', '', '', '', '', '', '', 'Sensor Flushing', '', '', '', '', '', '', '550 x 310 x 325 mm', 'products/sanitaryware/urinals/', 'jacopo-mocha.webp', '', 'jacopo-mocha.webp', '', '', '1'),
(180, 'Jacopo', 'Urinals', 'IM10061373', 'Shark Grey', '', '', '', '', '', '', 'Sensor Flushing', '', '', '', '', '', '', '550 x 310 x 325 mm', 'products/sanitaryware/urinals/', 'jacopo-shark-grey.webp', '', 'jacopo-shark-grey.webp', '', '', '1'),
(181, 'Jacopo', 'Urinals', 'IM10061374', 'Latte Brown', '', '', '', '', '', '', 'Sensor Flushing', '', '', '', '', '', '', '550 x 310 x 325 mm', 'products/sanitaryware/urinals/', 'jacopo-latte-brown.webp', '', 'jacopo-latte-brown.webp', '', '', '1'),
(182, 'Michele', 'Urinals', 'IM10017135 (White), IM10061371 (Ivory)', 'White', '', '', '', '', '', '', 'Manual Flushing', '', '', '', '', '', '', '', 'products/sanitaryware/urinals/', 'michele.webp', '', 'michele.webp', '', '', '1'),
(183, 'Greta', 'Urinals', 'IM10017119 (White), IM10060382 (Ivory)', 'White', '', '', '', '', '', '', 'Manual Flushing', '', '', '', '', '', '', '', 'products/sanitaryware/urinals/', 'greta.webp', '', 'greta.webp', '', '', '1'),
(184, 'Pietro', 'Urinals', 'IM10038977 (White), IM10060575 (Ivory)', 'White', '', '', '', '', '', '', 'Manual Flushing', '', '', '', '', '', '', '', 'products/sanitaryware/urinals/', 'pietro.webp', '', 'pietro.webp', '', '', '1'),
(185, 'Rosa', 'Urinals', 'IM10060576 (White), IM10060577 (Ivory)', 'White', '', '', '', '', '', '', 'Manual Flushing', '', '', '', '', '', '', '', 'products/sanitaryware/urinals/', 'rosa.webp', '', 'rosa.webp', '', '', '1'),
(186, 'Concealed Cistern', 'Concealed Cisterns', 'IM10040667', 'White', '', '', '', '', '', '', 'Concealed Cisterns', '', '', 'Round Switch (W/O Frame)', '', '', '', '', 'products/sanitaryware/concealed-cisterns/', 'im10040667.webp', '', 'im10040667.webp', '', '', '1'),
(187, 'Concealed Cistern', 'Concealed Cisterns', 'IM10040668', 'White', '', '', '', '', '', '', 'Concealed Cisterns', '', '', 'Square Switch (W/O Frame)', '', '', '', '', 'products/sanitaryware/concealed-cisterns/', 'im10040668.webp', '', 'im10040668.webp', '', '', '1'),
(188, 'Concealed Cistern', 'Concealed Cisterns', 'IM10040666', '', '', '', '', '', '', '', 'Concealed Cisterns', '', '', 'Full Stand (Only Frame)', '', '', '', '', 'products/sanitaryware/concealed-cisterns/', 'im10040666.webp', '', 'im10040666.webp', '', '', '1'),
(189, 'Amadeo ', 'Water Closets', 'IM10061388', 'White', '', '', '', '', '', '', 'Smart Intelligent closets', '', 'S Trap ', '', '', '', '300 mm', '680 x 420 x 555 mm', 'products/sanitaryware/water-closets/smart-intelligent-toilet/amadeo/', 'amadeo-1.webp', '', 'amadeo-1.webp, amadeo-2.webp, amadeo-3.webp, amadeo-4.webp, amadeo-5.webp', '', 'Smart Intelligent closets', '1'),
(190, 'Frederico', 'Water Closets', 'IM10060459', 'White', '', '', '', '', '', '', 'Smart Intelligent closets', '', 'S Trap ', '', '', '', '300 mm', '680 x 420 x 555 mm', 'products/sanitaryware/water-closets/smart-intelligent-toilet/federico/', 'federico-1.webp', '', 'federico-1.webp, federico-2.webp, federico-3.webp, federico-4.webp, federico-5.webp, federico-6.webp, federico-7.webp', '', '', '1'),
(191, 'Amerigo', 'Water Closets', 'IM10017067', 'White', '', '', '', '', '', '', 'Electroflush Closet ', '', 'P Trap ', '', '', '', '', '590 x 360 x 385 mm', 'products/sanitaryware/water-closets/electro-flush-toilet/', 'amerigo.webp', '', 'amerigo.webp', '', '', '1'),
(192, 'Alonzo ', 'Water Closets', 'IM10060460', 'White', '', '', '', '', '', '', 'Electroflush Closet ', '', 'P Trap ', '', '', '', '180 mm', '625 x 380 x 385 mm', 'products/sanitaryware/water-closets/electro-flush-toilet/', 'alonzo.webp', '', 'alonzo.webp', '', '', '1'),
(193, 'IV-4103', 'Bathtubs', 'IM10067628 (IV-4103) ,IM10062808 (IV-4103A), IM10067629 (IV-4103B), IM10067630 (IV-4103C), IM10067631 (IV-4103CL)', '', '', '', '', '', '', '', '', '', '', 'Slim Water Jet, Air Blower, Air Regulator, PU Green Reinforcement, Chromotherapy, Disinfection, Water Pump (1hp), Key Pad Control, Head Rest Final, SS Frame, PMMA, Level Sensor, Overflow with Drain Sensor', '', '', '', 'IV-4103 - 1500 x 810 x 730 mm, IV-4103A - 1670 x 810 x 730 mm, IV-4103B - 1780 x 810 x 730 mm, IV-4103C - 1780 x 1000 x 730 mm, IV-4103CL - 1800 x 1100 x 730 mm', 'products/sanitaryware/wellness/bathtubs/', 'IM10067628.webp', '', 'IM10067628.webp', '', '', '1'),
(194, 'IV-4103D (L/R)', 'Bathtubs', 'IM10067632', '', '', '', '', '', '', '', '', '', '', 'Slim Water Jet, Air Blower, Air Regulator, PU Green Reinforcement, Chromotherapy, Disinfection, Water Pump (1hp), Key Pad Control, Head Rest Final, SS Frame, PMMA, Level Sensor, Overflow with Drain Sensor', '', '', '', '1730 x 860 x 730 mm', 'products/sanitaryware/wellness/bathtubs/', 'IM10067632.webp', '', 'IM10067632.webp', '', '', '1'),
(195, 'IV-4106', 'Bathtubs', 'IM10067634', '', '', '', '', '', '', '', '', '', '', 'Slim Water Jet, Air Blower, Air Regulator, PU Green Reinforcement, Chromotherapy, Disinfection, Water Pump (1hp), Key Pad Control, Head Rest Final, SS Frame, PMMA, Level Sensor, Overflow with Drain Sensor', '', '', '', '1500 x 1500 x 730 mm', 'products/sanitaryware/wellness/bathtubs/', 'IM10067634.webp', '', 'IM10067634.webp', '', '', '1'),
(196, 'IV-4101', 'Bathtubs', 'IM10062809', '', '', '', '', '', '', '', '', '', '', 'Slim Water Jet, Air Blower, Air Regulator, PU Green Reinforcement, Chromotherapy, Disinfection, Water Pump (1hp), Key Pad Control, Head Rest Final, SS Frame, PMMA, Level Sensor, Overflow with Drain Sensor', '', '', '', '1820 x 1320 x 810 mm', 'products/sanitaryware/wellness/bathtubs/', 'IM10062809.webp', '', 'IM10062809.webp', '', '', '1'),
(197, 'IV-4103E', 'Bathtubs', 'IM10067633', '', '', '', '', '', '', '', '', '', '', 'Slim Water Jet, Air Blower, Air Regulator, PU Green Reinforcement, Chromotherapy, Disinfection, Water Pump (1hp), Key Pad Control, Head Rest Final, SS Frame, PMMA, Level Sensor, Overflow with Drain Sensor', '', '', '', '1800 x 1000 x 730 mm', 'products/sanitaryware/wellness/bathtubs/', 'IM10067633.webp', '', 'IM10067633.webp', '', '', '1'),
(198, 'IV-4104', 'Bathtubs', 'IM10067635', '', '', '', '', '', '', '', '', '', '', 'Slim Water Jet, Air Blower, Air Regulator, PU Green Reinforcement, Chromotherapy, Disinfection, Water Pump (1hp), Key Pad Control, Head Rest Final, SS Frame, PMMA, Level Sensor, Overflow with Drain Sensor', '', '', '', '1360 x 1360 x 730 mm', 'products/sanitaryware/wellness/bathtubs/', 'IM10067635.webp', '', 'IM10067635.webp', '', '', '1'),
(199, 'IV-4106', 'Bathtubs', 'IM10067636', '', '', '', '', '', '', '', '', '', '', 'Slim Water Jet, Air Blower, Air Regulator, PU Green Reinforcement, Chromotherapy, Disinfection, Water Pump (1hp), Key Pad Control, Head Rest Final, SS Frame, PMMA, Level Sensor, Overflow with Drain Sensor', '', '', '', '1580 x 1580 x 700 mm', 'products/sanitaryware/wellness/bathtubs/', 'IM10067636.webp', '', 'IM10067636.webp', '', '', '1'),
(200, 'IV-4102A', 'Bathtubs', 'IM10067637', '', '', '', '', '', '', '', '', '', '', 'Slim Water Jet, Air Blower, Air Regulator, PU Green Reinforcement, Chromotherapy, Disinfection, Water Pump (1hp), Key Pad Control, Head Rest Final, SS Frame, PMMA, Level Sensor, Overflow with Drain Sensor', '', '', '', '1510 x 1510 x 730 mm', 'products/sanitaryware/wellness/bathtubs/', 'IM10067637.webp', '', 'IM10067637.webp', '', '', '1'),
(201, 'PARADISE', 'Bathtubs', 'IM10067638', '', '', '', '', '', '', '', '', '', '', 'Slim Water Jet, Air Blower, Air Regulator, PU Green Reinforcement, Chromotherapy, Disinfection, Water Pump (1hp), Key Pad Control, Head Rest Final, SS Frame, PMMA, Level Sensor, Overflow with Drain Sensor', '', '', '', '1820 x 1820 x 440 mm', 'products/sanitaryware/wellness/bathtubs/', 'IM10067638.webp', '', 'IM10067638.webp', '', '', '1'),
(202, 'GARCIA', '', 'IM10060424', 'Mocha ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'GARCIA-MOCHA-IM10060424.webp', '', 'GARCIA-MOCHA-IM10060424.webp', 'washbasin', '', '1'),
(203, 'BETHANY', '', 'IM10060428', 'Mocha ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'Full Pedestal', '', '1'),
(204, 'MARCOS', '', 'IM10060432', 'Mocha ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'MARCOS-MOCHA-IM10060432.webp', '', 'MARCOS-MOCHA-IM10060432.webp', 'wash basin', '', '1'),
(205, 'CARINA', '', 'IM10061368', 'Mocha ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'Half Pedestal', '', '1'),
(206, 'MARCOS', '', 'IM10060434', 'Latte Brown ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'MARCOS-LATTE-BROWN-IM10060434.webp', '', 'MARCOS-LATTE-BROWN-IM10060434.webp', 'WASH BASIN', '', '1'),
(207, 'CARINA', '', 'IM10061369', 'Latte Brown ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'HALF PEDESTAL', '', '1'),
(208, 'GARCIA', '', 'IM10060426', 'Latte Brown ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'GARCIA-LATTE-BROWN-IM10060426.webp', '', 'GARCIA-LATTE-BROWN-IM10060426.webp', 'WASH BASIN', '', '1'),
(209, 'BETHANY', '', 'IM10060430', 'Latte Brown ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'FULL PEDESTAL', '', '1'),
(210, 'GARCIA', '', 'IM10060425', 'Shark Grey ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'GARCIA-SHARK-GREY-IM10060425.webp', '', 'GARCIA-SHARK-GREY-IM10060425.webp', 'WASH BASIN', '', '1'),
(211, 'BETHANY', '', 'IM10060429', 'Shark Grey ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'FULL PEDESTAL', '', '1'),
(212, 'MARCOS', '', 'IM10060433', 'Shark Grey ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'MARCOS-SHARK-GREY-IM10060433.webp', '', 'MARCOS-SHARK-GREY-IM10060433.webp', 'WASH BASIN', '', '1'),
(213, 'CARINA', '', 'IM10061367', 'Shark Grey ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'HALF PEDESTAL', '', '1'),
(214, 'ALEXA', '', 'IM10039292', 'Latte Brown ', '', '', '', '', '', '', '', '', '', '', 'Glossy ', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'alexa-glossy-im10039292.webp', '', 'alexa-glossy-im10039292.webp', 'WASH BASIN', '', '1'),
(215, 'ELISA', '', 'IM10059935', 'Latte Brown ', '', '', '', '', '', '', '', '', '', '', 'Glossy ', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'PEDESTAL', '', '1'),
(216, 'LUCIANA', '', 'IM10060552 WHITE IM10060553 IVORY ', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'LUCIANA-WHITE-IM10060552.webp', '', 'LUCIANA-WHITE-IM10060552.webp', 'IM10060553 IVORY, wash basin', '', '1'),
(217, 'MARTINA', '', 'IM10060558 WHITE IM10060560 IVORY ', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'MARTINA-WHITE-IM10060558.webp', '', 'MARTINA-WHITE-IM10060558.webp', 'IM10060560 IVORY , Wash basin.', '', '1'),
(218, 'MARTINA', '', 'IM10060561 WHITE IM10060559 IVORY', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'IM10060559 IVORY, MARTINA HALF PEDASTAL', '', '1'),
(219, 'PRISCA', '', 'IM10060562 WHITE IM10060563 IVORY', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'PRISCA-WHITE-IM10060562.webp', '', 'PRISCA-WHITE-IM10060562.webp', 'Wash basin ', '', '1'),
(220, 'SOFIA', '', 'IM10037582 WHITE IM10060572 IVORY', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'SOFIA-WHITE-IM10037582.webp', '', 'SOFIA-WHITE-IM10037582.webp', 'WASH BASIN', '', '1'),
(221, 'AEGIS', '', 'IM10037526', 'White ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'AEGIS-WHITE-IM10037526.webp', '', 'AEGIS-WHITE-IM10037526.webp', 'WASH BASIN', '', '1'),
(222, 'VARA', '', 'IM10059932', 'White ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'PEDESTAL', '', '1'),
(223, 'THEA', '', 'IM10037573', 'White ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'THEA-WHITE-IM10037573.webp', '', 'THEA-WHITE-IM10037573.webp', '', '', '1'),
(224, 'MARGHERITA', '', 'IM10017130 WHITE IM10061358 IVORY', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'MARGHERITA-WHITE-IM10017130.webp', '', 'MARGHERITA-WHITE-IM10017130.webp', 'IM10061358 IVORY, WASH BASIN', '', '1'),
(225, 'MIA', '', 'IM10061362 WHITE, IM10061363 IVORY ', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'MIA-WHITE-IM10061362.webp', '', 'MIA-WHITE-IM10061362.webp', 'IM10061363 IVORY, Wash basin ', '', '1'),
(226, 'SERENA', '', 'IM10060570 WHITE IM10060571 IVORY', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'SERENA-WHITE-IM10060570.webp', '', 'SERENA-WHITE-IM10060570.webp', 'IM10060571 IVORY, Wash basin ', '', '1'),
(227, 'LUISA', '', 'IM10060556 WHITE IM10060557 IVORY', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'LUISA-WHITE-IM10060556.webp', '', 'LUISA-WHITE-IM10060556.webp', 'IM10060557 IVORY, Wash basin ', '', '1'),
(228, 'SARA', '', 'IM10060566 WHITE IM10060567 IVORY', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'SARA-WHITE-IM10060566.webp', '', 'SARA-WHITE-IM10060566.webp', 'IM10060567 IVORY, Wash basin ', '', '1'),
(229, 'SARA', '', 'IM10060564 WHITE IM10060565 IVORY', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', 'IM10060565 IVORY, Half pedestal ', '', '1'),
(230, 'MARGHERITA', '', 'IM10061359 WHITE IM10060551 IVORY ', 'White', 'Ivory', '', '', '', '', '', '', '', '', '', '', '', '', '', 'products/sanitaryware/wash-basins/wash-basin-with-half-and-full-pedestal/', 'MARGHERITA-WHITE-IM10061359.webp', '', 'MARGHERITA-WHITE-IM10061359.webp', 'IM10060551 IVORY, Wash basin', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sanitaryware_address_details`
--

CREATE TABLE `sanitaryware_address_details` (
  `id` int(20) NOT NULL,
  `title` varchar(75) NOT NULL,
  `address` varchar(1500) NOT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(10) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `sanitaryware_city_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sanitaryware_address_details`
--

INSERT INTO `sanitaryware_address_details` (`id`, `title`, `address`, `location`, `city`, `pincode`, `direction`, `sanitaryware_city_id`) VALUES
(1, 'ccomdigital', 'C Com Digital, 10, Wadala Udyog Bhavan, Naigaon Cross Road, Telephone Exchn, near Wadala, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Mumbai', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1),
(2, 'I.C.E Asia Pvt Limited', 'India Printing House, 202, G D Ambekar Rd, Sahakar Nagar, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Delhi', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 4),
(3, 'Rajdeep Automation Pvt Ltd', ' B-27 3rd Floor, Shriram Industrial Estate, 13, G D Ambedkar Road, Wadala, Wadala, Mumbai, Maharashtra 400031', 'Wadala', 'Pune', 400031, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 2),
(4, 'RJ Group of Companies', '201, Awaas CHS, Pralhad Nagar, Ahmedabad, Gujarat - 380001', 'Pralhad Nagar', 'Ahmedabad', 380001, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 14),
(5, 'Netcore Cloud', 'Peninsula Towers, Peninsula Corporate Park, Peninsula Tower\'s Walk way, Lower Parel West, Lower Parel, Mumbai, Maharashtra 400013', 'Lower Parel', 'Mumbai', 400013, 'https://www.google.com/maps/dir//c+com+digital+on+google+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7cee06834027f:0xaf5bd233813a99a1?sa=X&ved=2ahUKEwjPmrG8x7_9AhV7TmwGHVJnAdkQ9Rd6BAgwEAU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanitaryware_city`
--

CREATE TABLE `sanitaryware_city` (
  `city_id` int(11) NOT NULL,
  `city_name` text NOT NULL,
  `sanitaryware_state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sanitaryware_city`
--

INSERT INTO `sanitaryware_city` (`city_id`, `city_name`, `sanitaryware_state_id`) VALUES
(1, 'Mumbai', 1),
(2, 'Pune', 1),
(3, 'Nagpur', 1),
(4, 'New Delhi', 2),
(5, 'Taj Pul', 2),
(6, 'Mandoli', 2),
(7, 'Vishakhapatnam', 4),
(8, 'Tirupati', 4),
(9, 'Rajarhat Gopalpur', 5),
(10, 'Bhatpara', 5),
(11, 'Panihati', 5),
(12, 'Amritsar', 6),
(13, 'Ludhiana', 6),
(14, 'Ahmedabad', 7),
(15, 'Surat', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sanitaryware_leads`
--

CREATE TABLE `sanitaryware_leads` (
  `id` int(25) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `utm_source` varchar(255) NOT NULL,
  `utm_medium` varchar(255) NOT NULL,
  `utm_campaign` varchar(255) NOT NULL,
  `utm_term` varchar(255) NOT NULL,
  `utm_content` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `intrest` int(20) NOT NULL DEFAULT 2 COMMENT '1 - Intrested, 2 - Not Intrested  '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sanitaryware_leads`
--

INSERT INTO `sanitaryware_leads` (`id`, `sname`, `phone`, `email`, `city`, `utm_source`, `utm_medium`, `utm_campaign`, `utm_term`, `utm_content`, `timestamp`, `intrest`) VALUES
(1, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai', '', '', '', '', '', '2023-04-28 13:08:19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sanitaryware_state`
--

CREATE TABLE `sanitaryware_state` (
  `id` int(20) NOT NULL,
  `state_name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sanitaryware_state`
--

INSERT INTO `sanitaryware_state` (`id`, `state_name`) VALUES
(1, 'Maharashtra'),
(2, 'Delhi'),
(3, 'Gujarat'),
(4, 'Uttar Pradesh'),
(5, 'Sikkim'),
(6, 'Tamil Nadu'),
(7, 'Telangana'),
(8, 'West Bengal'),
(9, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(20) NOT NULL,
  `state_name` varchar(75) NOT NULL,
  `category_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`, `category_id`) VALUES
(1, 'Maharashtra', '1,2,3,4,5'),
(2, 'Delhi', '1,3,5'),
(3, 'Gujarat', '2,4'),
(4, 'Uttar Pradesh', '1,2,5'),
(5, 'Sikkim', '3'),
(6, 'Tamil Nadu', '2,5'),
(7, 'Telangana', '1,5'),
(8, 'West Bengal', '1,4,5'),
(9, 'Madhya Pradesh', '1,2,4');

-- --------------------------------------------------------

--
-- Table structure for table `tiles`
--

CREATE TABLE `tiles` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `tile_name` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `im_code` text NOT NULL,
  `packing` text NOT NULL,
  `sku_type` text NOT NULL,
  `vsku_code` text NOT NULL,
  `base_material` text NOT NULL,
  `colour` text DEFAULT NULL,
  `finish` text NOT NULL,
  `finish_one` text NOT NULL,
  `style` text NOT NULL,
  `size` text NOT NULL,
  `application` text NOT NULL,
  `application_one` text NOT NULL,
  `application_areas` text NOT NULL,
  `application_areas_one` text NOT NULL,
  `application_areas_two` text NOT NULL,
  `application_areas_three` text NOT NULL,
  `application_areas_four` text NOT NULL,
  `application_areas_five` text NOT NULL,
  `path` text NOT NULL,
  `product_image` text NOT NULL,
  `view` text NOT NULL,
  `product_multiple_imgs` text NOT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive',
  `area_per_box` varchar(255) NOT NULL,
  `weight_per_box` varchar(255) NOT NULL,
  `ambience_view` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiles`
--

INSERT INTO `tiles` (`product_id`, `product_name`, `tile_name`, `category`, `im_code`, `packing`, `sku_type`, `vsku_code`, `base_material`, `colour`, `finish`, `finish_one`, `style`, `size`, `application`, `application_one`, `application_areas`, `application_areas_one`, `application_areas_two`, `application_areas_three`, `application_areas_four`, `application_areas_five`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`, `area_per_box`, `weight_per_box`, `ambience_view`) VALUES
(1, 'IM 01 HL 600x600 PRM', 'IM 01 HL', 'Ceramic Floor', 'IM10014943', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-01-hl-im10014943.webp', '', 'im-01-hl-im10014943.webp', '1', '15.5 sq.ft', '26 kg', ''),
(2, 'IM 02 HL 600X600 PRM', 'IM 02 HL', 'Ceramic Floor', 'IM10014944', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-02-hl-im10014944.webp', '', 'im-02-hl-im10014944.webp', '1', '15.5 sq.ft', '26 kg', ''),
(3, 'IM 03 HL 600X600 PRM', 'IM 03 HL', 'Ceramic Floor', 'IM10014945', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-03-hl-im10014945.webp', '', 'im-03-hl-im10014945.webp', '1', '15.5 sq.ft', '26 kg', ''),
(4, 'IM 04 HL 600X600 PRM', 'IM 04 HL', 'Ceramic Floor', 'IM10014946', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-04-hl-im10014946.webp', '', 'im-04-hl-im10014946.webp', '1', '15.5 sq.ft', '26 kg', ''),
(5, 'IM 05 HL 600X600 PRM', 'IM 05 HL', 'Ceramic Floor', 'IM10014947', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-05-hl-im10014947.webp', '', 'im-05-hl-im10014947.webp', '1', '15.5 sq.ft', '26 kg', ''),
(6, 'IM 06 HL 600X600 PRM', 'IM 06 HL', 'Ceramic Floor', 'IM10014948', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-06-hl-im10014948.webp', '', 'im-06-hl-im10014948.webp', '1', '15.5 sq.ft', '26 kg', ''),
(7, 'IM 07 HL 600X600 PRM', 'IM 07 HL', 'Ceramic Floor', 'IM10014949', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-07-hl-im10014949.webp', '', 'im-07-hl-im10014949.webp', '1', '15.5 sq.ft', '26 kg', ''),
(8, 'IM 08 HL 600X600 PRM', 'IM 08 HL', 'Ceramic Floor', 'IM10014950', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-08-hl-im10014950.webp', '', 'im-08-hl-im10014950.webp', '1', '15.5 sq.ft', '26 kg', ''),
(9, 'IM 09 HL 600X600 PRM', 'IM 09 HL', 'Ceramic Floor', 'IM10014951', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-09-hl-im10014951.webp', '', 'im-09-hl-im10014951.webp', '1', '15.5 sq.ft', '26 kg', ''),
(10, 'IM 10 HL 600X600 PRM', 'IM 10 HL', 'Ceramic Floor', 'IM10014952', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-10-hl-im10014952.webp', '', 'im-10-hl-im10014952.webp', '1', '15.5 sq.ft', '26 kg', ''),
(11, 'IM 11 HL 600X600 PRM', 'IM 11 HL', 'Ceramic Floor', 'IM10014953', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-11-hl-im10014953.webp', '', 'im-11-hl-im10014953.webp', '1', '15.5 sq.ft', '26 kg', ''),
(12, 'IM 12 HL 600X600 PRM', 'IM 12 HL', 'Ceramic Floor', 'IM10014954', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-12-hl-im10014954.webp', '', 'im-12-hl-im10014954.webp', '1', '15.5 sq.ft', '26 kg', ''),
(13, 'IM 013 HL 600X600 PRM', 'IM 013 HL', 'Ceramic Floor', 'IM10014955', '4', '', '', 'Ceramic', '', '', '', 'Moroccon', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-013-hl-im10014955.webp', '', 'im-013-hl-im10014955.webp', '1', '15.5 sq.ft', '26 kg', ''),
(14, 'IM 101 Matt 600x600 PRM', 'IM 101', 'Ceramic Floor', 'IM10014956', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-101-matt-im10014956.webp', '', 'im-101-matt-im10014956.webp', '1', '15.5 sq.ft', '26 kg', ''),
(15, 'IM 102 Matt 600x600 PRM', 'IM 102', 'Ceramic Floor', 'IM10014957', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-102-matt-im10014957.webp', '', 'im-102-matt-im10014957.webp', '1', '15.5 sq.ft', '26 kg', ''),
(16, 'IM 103 Prm 600x600', 'IM 103', 'Ceramic Floor', 'IM10014958', '4', '', '', 'Ceramic', '', 'Matt (Plain)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-103-prm-im10014958.webp', '', 'im-103-prm-im10014958.webp', '1', '15.5 sq.ft', '26 kg', ''),
(17, 'IM 104 Prm 600x600', 'IM 104', 'Ceramic Floor', 'IM10014959', '4', '', '', 'Ceramic', '', 'Matt (Plain)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-104-prm-im10014959.webp', '', 'im-104-prm-im10014959.webp', '1', '15.5 sq.ft', '26 kg', ''),
(18, 'IM 105 Prm 600x600', 'IM 105', 'Ceramic Floor', 'IM10014960', '4', '', '', 'Ceramic', '', 'Matt (Plain)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-105-prm-im10014960.webp', '', 'im-105-prm-im10014960.webp', '1', '15.5 sq.ft', '26 kg', ''),
(19, 'IM 106 Prm 600x600', 'IM 106', 'Ceramic Floor', 'IM10014961', '4', '', '', 'Ceramic', '', 'Matt (Plain)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-106-prm-im10014961.webp', '', 'im-106-prm-im10014961.webp', '1', '15.5 sq.ft', '26 kg', ''),
(20, 'IM 107 Prm 600x600', 'IM 107', 'Ceramic Floor', 'IM10014962', '4', '', '', 'Ceramic', '', 'Matt (Plain)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-107-prm-im10014962.webp', '', 'im-107-prm-im10014962.webp', '1', '15.5 sq.ft', '26 kg', ''),
(21, 'IM 108 Prm 600x600', 'IM 108', 'Ceramic Floor', 'IM10014963', '4', '', '', 'Ceramic', '', 'Matt (Plain)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-108-prm-im10014963.webp', '', 'im-108-prm-im10014963.webp', '1', '15.5 sq.ft', '26 kg', ''),
(22, 'IM 109 Prm 600x600', 'IM 109', 'Ceramic Floor', 'IM10014964', '4', '', '', 'Ceramic', '', 'Matt (Plain)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-109-prm-im10014964.webp', '', 'im-109-prm-im10014964.webp', '1', '15.5 sq.ft', '26 kg', ''),
(23, 'IM 110 Prm 600x600', 'IM 110', 'Ceramic Floor', 'IM10014965', '4', '', '', 'Ceramic', '', 'Matt (Plain)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-110-prm-im10014965.webp', '', 'im-110-prm-im10014965.webp', '1', '15.5 sq.ft', '26 kg', ''),
(24, 'IM 111 Prm 600x600', 'IM 111', 'Ceramic Floor', 'IM10014966', '4', '', '', 'Ceramic', '', 'Matt (Plain)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-111-prm-im10014966.webp', '', 'im-111-prm-im10014966.webp', '1', '15.5 sq.ft', '26 kg', ''),
(25, 'IM 114 Matt 600x600 PRM', 'IM 114', 'Ceramic Floor', 'IM10014967', '4', '', '', 'Ceramic', '', 'Matt(Punch)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-114-matt-im10014967.webp', '', 'im-114-matt-im10014967.webp', '1', '15.5 sq.ft', '26 kg', ''),
(26, 'IM 115 Matt 600x600 Prm', 'IM 115', 'Ceramic Floor', 'IM10014968', '4', '', '', 'Ceramic', '', 'Matt (Punch)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-115-matt-im10014968.webp', '', 'im-115-matt-im10014968.webp', '1', '15.5 sq.ft', '26 kg', ''),
(27, 'IM 116 Matt 600x600 RPM', 'IM 116', 'Ceramic Floor', 'IM10014969', '4', '', '', 'Ceramic', '', 'Matt (Punch)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-116-matt-im10014969.webp', '', 'im-116-matt-im10014969.webp', '1', '15.5 sq.ft', '26 kg', ''),
(28, 'IM 117 Matt 600x600 Prm', 'IM 117', 'Ceramic Floor', 'IM10014970', '4', '', '', 'Ceramic', '', 'Matt (Punch)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-117-matt-im10014970.webp', '', 'im-117-matt-im10014970.webp', '1', '15.5 sq.ft', '26 kg', ''),
(29, 'IM 118 Matt 600x600 PRM', 'IM 118', 'Ceramic Floor', 'IM10014971', '4', '', '', 'Ceramic', '', 'Matt (Punch)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-118-matt-im10014971.webp', '', 'im-118-matt-im10014971.webp', '1', '15.5 sq.ft', '26 kg', ''),
(30, 'IM 119 Matt 600x600 PRM', 'IM 119', 'Ceramic Floor', 'IM10014972', '4', '', '', 'Ceramic', '', 'Matt (Punch)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-119-matt-im10014972.webp', '', 'im-119-matt-im10014972.webp', '1', '15.5 sq.ft', '26 kg', ''),
(31, 'IM 122 Matt 600x600 PRM', 'IM 122', 'Ceramic Floor', 'IM10014973', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-122-matt-im10014973.webp', '', 'im-122-matt-im10014973.webp', '1', '15.5 sq.ft', '26 kg', ''),
(32, 'IM 123 Matt 600x600 PRM', 'IM 123', 'Ceramic Floor', 'IM10014974', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-123-matt-im10014974.webp', '', 'im-123-matt-im10014974.webp', '1', '15.5 sq.ft', '26 kg', ''),
(33, 'IM 126 Matt 600x600 Prm', 'IM 126', 'Ceramic Floor', 'IM10014975', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-126-matt-im10014975.webp', '', 'im-126-matt-im10014975.webp', '1', '15.5 sq.ft', '26 kg', ''),
(34, 'IM 127 Matt 600x600 Prm', 'IM 127', 'Ceramic Floor', 'IM10014976', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-127-matt-im10014976.webp', '', 'im-127-matt-im10014976.webp', '1', '15.5 sq.ft', '26 kg', ''),
(35, 'IM 128 Matt 600x600 Prm', 'IM 128', 'Ceramic Floor', 'IM10014977', '4', '', '', 'Ceramic', '', 'Matt (Punch)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-128-matt-im10014977.webp', '', 'im-128-matt-im10014977.webp', '1', '15.5 sq.ft', '26 kg', ''),
(36, 'IM 129 Matt 600x600 Prm', 'IM 129', 'Ceramic Floor', 'IM10014978', '4', '', '', 'Ceramic', '', 'Matt (Punch)', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-129-matt-im10014978.webp', '', 'im-129-matt-im10014978.webp', '1', '15.5 sq.ft', '26 kg', ''),
(37, 'IM 133 Matt 600x600 Prm', 'IM 133', 'Ceramic Floor', 'IM10014979', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-133-matt-im10014979.webp', '', 'im-133-matt-im10014979.webp', '1', '15.5 sq.ft', '26 kg', ''),
(38, 'IM 134 Matt 600x600 Prm', 'IM 134', 'Ceramic Floor', 'IM10014980', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-134-matt-im10014980.webp', '', 'im-134-matt-im10014980.webp', '1', '15.5 sq.ft', '26 kg', ''),
(39, 'IM 135 Matt 600x600 Prm', 'IM 135', 'Ceramic Floor', 'IM10014981', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-135-matt-im10014981.webp', '', 'im-135-matt-im10014981.webp', '1', '15.5 sq.ft', '26 kg', ''),
(40, 'IM 138 Matt 600x600 Prm', 'IM 138', 'Ceramic Floor', 'IM10014982', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-138-matt-im10014982.webp', '', 'im-138-matt-im10014982.webp', '1', '15.5 sq.ft', '26 kg', ''),
(41, 'IM 142 Matt 600x600 Prm', 'IM 142', 'Ceramic Floor', 'IM10014983', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-142-matt-im10014983.webp', '', 'im-142-matt-im10014983.webp', '1', '15.5 sq.ft', '26 kg', ''),
(42, 'IM 143 Matt 600x600 Prm', 'IM 143', 'Ceramic Floor', 'IM10014984', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-143-matt-im10014984.webp', '', 'im-143-matt-im10014984.webp', '1', '15.5 sq.ft', '26 kg', ''),
(43, 'IM 144 Matt 600x600 Prm', 'IM 144', 'Ceramic Floor', 'IM10014985', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-144-matt-im10014985.webp', '', 'im-144-matt-im10014985.webp', '1', '15.5 sq.ft', '26 kg', ''),
(44, 'IM 145 Matt 600x600 PRM', 'IM 145', 'Ceramic Floor', 'IM10014986', '4', '', '', 'Ceramic', '', 'Matt', '', '', '600x600', 'Floor Tiles', '', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-floor/', 'im-145-matt-im10014986.webp', '', 'im-145-matt-im10014986.webp', '1', '15.5 sq.ft', '26 kg', ''),
(45, '1208 D Glossy 300x600', '1208 D', 'Ceramic wall', 'IM10037607', '5', '', '', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(46, '1208 HL Glossy 300x600', '1208 HL', 'Ceramic wall', 'IM10037608', '5', '', '', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(47, '1208 L Glossy 300x600', '1208 L', 'Ceramic wall', 'IM10037609', '5', '', '', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(48, '1225 D Glossy 300x600', '1225 D', 'Ceramic wall', 'IM10037610', '5', '', '', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(49, '1225 HL-1 Glossy 300x600', '1225 HL-1', 'Ceramic wall', 'IM10037611', '5', '', '', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(50, '1225 HL-2 Glossy 300x600', '1225 HL-2', 'Ceramic wall', 'IM10037612', '5', '', '', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(51, '6238-D Grade (I) 300x600', '6238- D', 'Ceramic wall', 'IM10016068', '5', '', '', 'Ceramic', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(52, 'IM AS241201-L DOTT COTTED 300x600', 'IM AS241201-L', 'Ceramic wall', 'IM10062162', '5', 'NEW', '9006 L', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062162_IM-AS241201-L-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062162_IM-AS241201-L-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(53, 'IM AS241201-HL1 DOTT COTTED 300x600', 'IM AS2411201- HL1', 'Ceramic wall', 'IM10062163', '5', 'NEW', '9006-HL1', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062163_IM-AS241201-HL1-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062163_IM-AS241201-HL1-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(54, 'IM AS241202-L DOTT COTTED 300x600', 'IM AS2411202- L', 'Ceramic wall', 'IM10062164', '5', 'NEW', '9007 L', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062164_IM-AS241202-L-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062164_IM-AS241202-L-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(55, 'IM AS241202-D DOTT COTTED 300x600', 'IM AS2411202- D', 'Ceramic wall', 'IM10062165', '5', 'NEW', '9007 D', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062165_IM-AS241202-D-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062165_IM-AS241202-D-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(56, 'IM AS241202-HL1 DOTT COTTED 300x600', 'IM AS2411202- HL1', 'Ceramic wall', 'IM10062166', '5', 'NEW', '9007-HL1', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062166_IM-AS241202-HL1-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062166_IM-AS241202-HL1-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(57, 'IM AS241203 L DOTT COTTED 300x600', 'IM AS2411203  L', 'Ceramic wall', 'IM10062167', '5', 'NEW', '9008 L', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062167_IM-AS241203-L-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062167_IM-AS241203-L-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(58, 'IM AS241203 HL 2 DOTT COTTED 300x600', '', 'Ceramic wall', 'IM10062168', '5', 'NEW', '9008-HL 2', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062168_IM-AS241203-HL-2-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062168_IM-AS241203-HL-2-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(59, 'IM AS241203 D DOTT COTTED 300x600', 'IM AS2411203  D', 'Ceramic wall', 'IM10062169', '5', 'NEW', '9014 D', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062169_IM-AS241203-D-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062169_IM-AS241203-D-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(60, 'IM AS241203 HL1 DOTT COTTED 300x600', 'IM AS2411203  HL1', 'Ceramic wall', 'IM10062170', '5', 'NEW', '9014-HL1', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062170_IM-AS241203-HL1-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062170_IM-AS241203-HL1-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(61, 'IM AS241204 L DOTT COTTED 300x600', 'IM AS2411204  L', 'Ceramic wall', 'IM10062171', '5', 'NEW', '9025 L', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062171_IM-AS241204-L-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062171_IM-AS241204-L-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(62, 'IM AS241204 D DOTT COTTED 300x600', 'IM AS2411204  D', 'Ceramic wall', 'IM10062172', '5', 'NEW', '9025 D', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062172_IM-AS241204-D-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062172_IM-AS241204-D-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(63, 'IM AS-WP241205 DOTT COTTED 300x600', 'IM AS- WP241205', 'Ceramic wall', 'IM10062173', '5', 'NEW', 'Wall Paper 1', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062173_IM-AS-WP241205-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062173_IM-AS-WP241205-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(64, 'IM AS-WP241206 DOTT COTTED 300x600', 'IM AS- WP241206', 'Ceramic wall', 'IM10062174', '5', 'NEW', 'Wall Paper 2', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062174_IM-AS-WP241206-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062174_IM-AS-WP241206-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(65, 'IM AS-WP241207 DOTT COTTED 300x600', 'IM AS- WP241207', 'Ceramic wall', 'IM10062175', '5', 'NEW', 'Wall Paper 3', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062175_IM-AS-WP241207-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062175_IM-AS-WP241207-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(66, 'IM AS-WP241208 DOTT COTTED 300x600', 'IM AS- WP241208', 'Ceramic wall', 'IM10062176', '5', 'NEW', 'Wall Paper 5', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062176_IM-AS-WP241208-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062176_IM-AS-WP241208-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(67, 'IM AS-WP241209 DOTT COTTED 300x600', 'IM AS- WP241209', 'Ceramic wall', 'IM10062177', '5', 'NEW', 'Wall Paper 6', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062177_IM-AS-WP241209-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062177_IM-AS-WP241209-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(68, 'IM AS-WP241210 DOTT COTTED 300x600', 'IM AS- WP241210', 'Ceramic wall', 'IM10062178', '5', 'NEW', 'Wall Paper 7', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062178_IM-AS-WP241210-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062178_IM-AS-WP241210-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(69, 'IM AS-WP241212 DOTT COTTED 300x600', 'IM AS- WP241212', 'Ceramic wall', 'IM10062179', '5', 'NEW', 'Wall Paper 9', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062179_IM-AS-WP241212-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062179_IM-AS-WP241212-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(70, 'IM AS-WP241213 DOTT COTTED 300x600', 'IM AS- WP241213', 'Ceramic wall', 'IM10062180', '5', 'NEW', 'Wall Paper 10', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062180_IM-AS-WP241213-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062180_IM-AS-WP241213-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(71, 'IM AS-WP241214 DOTT COTTED 300x600', 'IM AS- WP241214', 'Ceramic wall', 'IM10062181', '5', 'NEW', 'Wall Paper 12', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062181_IM-AS-WP241214-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062181_IM-AS-WP241214-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(72, 'IM AS-WP241215 DOTT COTTED 300x600', 'IM AS- WP241215', 'Ceramic wall', 'IM10062182', '5', 'NEW', 'Wall Paper 14', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062182_IM-AS-WP241215-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062182_IM-AS-WP241215-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(73, 'IM AS-WP241216 DOTT COTTED 300x600', 'IM AS- WP241216', 'Ceramic wall', 'IM10062183', '5', 'NEW', 'Wall Paper 16', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062183_IM-AS-WP241216-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062183_IM-AS-WP241216-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(74, 'IM AS-WP241217 DOTT COTTED 300x600', 'IM AS- WP241217', 'Ceramic wall', 'IM10062184', '5', 'NEW', 'Wall Paper 18', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062184_IM-AS-WP241217-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062184_IM-AS-WP241217-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(75, 'IM AS-WP241218 DOTT COTTED 300x600', 'IM AS- WP241218', 'Ceramic wall', 'IM10062185', '5', 'NEW', 'Wall Paper 20', 'Ceramic', '', 'Dott Cotted', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062185_IM-AS-WP241218-DOTT-COTTED-300X600_Ceramic-wall.webp', '', 'IM10062185_IM-AS-WP241218-DOTT-COTTED-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(76, 'IM AS241219 L GLOSSY 300x600', 'IM AS241219 L', 'Ceramic wall', 'IM10062186', '5', 'NEW', '1007 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062186_IM-AS241219-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062186_IM-AS241219-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(77, 'IM AS241219-HL-1 GLOSSY 300x600', 'IM AS241219-HL-1', 'Ceramic wall', 'IM10062187', '5', 'NEW', '1007-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062187_IM-AS241219-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062187_IM-AS241219-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(78, 'IM AS241220 L GLOSSY 300x600', 'IM AS241220 L', 'Ceramic wall', 'IM10062188', '5', 'NEW', '1011 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062188_IM-AS241220-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062188_IM-AS241220-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(79, 'IM AS241220 D GLOSSY 300x600', 'IM AS241220 D', 'Ceramic wall', 'IM10062189', '5', 'NEW', '10011 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062189_IM-AS241220-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062189_IM-AS241220-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(80, 'IM AS241220-HL-1 GLOSSY 300x600', 'IM AS241220-HL-1', 'Ceramic wall', 'IM10062190', '5', 'NEW', '1011-HL1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062190_IM-AS241220-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062190_IM-AS241220-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(81, 'IM AS241221 L GLOSSY 300x600', 'IM AS241221 L', 'Ceramic wall', 'IM10062191', '5', 'NEW', '1032 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062191_IM-AS241221-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062191_IM-AS241221-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(82, 'IM AS241221-HL-1 GLOSSY 300x600', 'IM AS241221-HL-1', 'Ceramic wall', 'IM10062192', '5', 'NEW', '1032-HL1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062192_IM-AS241221-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062192_IM-AS241221-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(83, 'IM AS241222 L GLOSSY 300x600', 'IM AS241222 L', 'Ceramic wall', 'IM10062193', '5', 'NEW', '1034 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062193_IM-AS241222-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062193_IM-AS241222-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(84, 'IM AS241222 D GLOSSY 300x600', 'IM AS241222 D', 'Ceramic wall', 'IM10062194', '5', 'NEW', '1034 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062194_IM-AS241222-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062194_IM-AS241222-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(85, 'IM AS241222-HL-1 GLOSSY 300x600', 'IM AS241222-HL-1', 'Ceramic wall', 'IM10062195', '5', 'NEW', '1034-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062195_IM-AS241222-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062195_IM-AS241222-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(86, 'IM AS241223 L GLOSSY 300x600', 'IM AS241223 L', 'Ceramic wall', 'IM10062196', '5', 'NEW', '1039 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062196_IM-AS241223-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062196_IM-AS241223-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(87, 'IM AS241233 D GLOSSY 300x600', 'IM AS241233 D', 'Ceramic wall', 'IM10062197', '5', 'NEW', '1039 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062197_IM-AS241233-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062197_IM-AS241233-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(88, 'IM AS241223-HL-1 GLOSSY 300x600', 'IM AS241223-HL-1', 'Ceramic wall', 'IM10062198', '5', 'NEW', '1039-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062198_IM-AS241223-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062198_IM-AS241223-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(89, 'IM AS241224 L GLOSSY 300x600', 'IM AS241224 L', 'Ceramic wall', 'IM10062199', '5', 'NEW', '1048 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062199_IM-AS241224-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062199_IM-AS241224-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(90, 'IM AS241224 D GLOSSY 300x600', 'IM AS241224 D', 'Ceramic wall', 'IM10062200', '5', 'NEW', '1048 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062200_IM-AS241224-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062200_IM-AS241224-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(91, 'IM AS241224-HL-1 GLOSSY 300x600', 'IM AS241224-HL-1', 'Ceramic wall', 'IM10062201', '5', 'NEW', '1048-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062201_IM-AS241224-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062201_IM-AS241224-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(92, 'IM AS241225 L GLOSSY 300x600', 'IM AS241225 L', 'Ceramic wall', 'IM10062202', '5', 'NEW', '1060 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062202_IM-AS241225-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062202_IM-AS241225-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(93, 'IM AS241225 D GLOSSY 300x600', 'IM AS241225 D', 'Ceramic wall', 'IM10062203', '5', 'NEW', '1060 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062203_IM-AS241225-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062203_IM-AS241225-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(94, 'IM AS241225-HL-1 GLOSSY 300x600', 'IM AS241225-HL-1', 'Ceramic wall', 'IM10062204', '5', 'NEW', '1060-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062204_IM-AS241225-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062204_IM-AS241225-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(95, 'IM AS241226 L GLOSSY 300x600', 'IM AS241226 L', 'Ceramic wall', 'IM10062205', '5', 'NEW', '1088 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062205_IM-AS241226-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062205_IM-AS241226-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(96, 'IM AS241226-HL-1 GLOSSY 300x600', 'IM AS241226-HL-1', 'Ceramic wall', 'IM10062206', '5', 'NEW', '1088-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062206_IM-AS241226-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062206_IM-AS241226-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(97, 'IM AS241227 L GLOSSY 300x600', 'IM AS241227 L', 'Ceramic wall', 'IM10062207', '5', 'NEW', '1112 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062207_IM-AS241227-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062207_IM-AS241227-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(98, 'IM AS241227 D GLOSSY 300x600', 'IM AS241227 D', 'Ceramic wall', 'IM10062208', '5', 'NEW', '1112 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062208_IM-AS241227-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062208_IM-AS241227-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(99, 'IM AS241227-HL-1 GLOSSY 300x600', 'IM AS241227-HL-1', 'Ceramic wall', 'IM10062209', '5', 'NEW', '1112-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062209_IM-AS241227-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062209_IM-AS241227-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(100, 'IM AS241228 L GLOSSY 300x600', 'IM AS241228 L', 'Ceramic wall', 'IM10062210', '5', 'NEW', '1125 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062210_IM-AS241228-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062210_IM-AS241228-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(101, 'IM AS241228 D GLOSSY 300x600', 'IM AS241228 D', 'Ceramic wall', 'IM10062211', '5', 'NEW', '1125 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062211_IM-AS241228-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062211_IM-AS241228-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(102, 'IM AS241228-HL-1 GLOSSY 300x600', 'IM AS241228-HL-1', 'Ceramic wall', 'IM10062212', '5', 'NEW', '1125-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062212_IM-AS241228-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062212_IM-AS241228-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(103, 'IM AS241229 L GLOSSY 300x600', 'IM AS241229 L', 'Ceramic wall', 'IM10062213', '5', 'NEW', '1136 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062213_IM-AS241229-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062213_IM-AS241229-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(104, 'IM AS241229 D GLOSSY 300x600', 'IM AS241229 D', 'Ceramic wall', 'IM10062214', '5', 'NEW', '1136 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(105, 'IM AS241229-HL-1 GLOSSY 300x600', 'IM AS241229-HL-1', 'Ceramic wall', 'IM10062215', '5', 'NEW', '1136-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062215_IM-AS241229-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062215_IM-AS241229-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(106, 'IM AS241232 L GLOSSY 300x600', 'IM AS241232 L', 'Ceramic wall', 'IM10062222', '5', 'NEW', '1192 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062222_IM-AS241232-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062222_IM-AS241232-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(107, 'IM AS241232 D GLOSSY 300x600', 'IM AS241232 D', 'Ceramic wall', 'IM10062223', '5', 'NEW', '1192 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062223_IM-AS241232-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062223_IM-AS241232-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(108, 'IM AS241232-HL-1 GLOSSY 300x600', 'IM AS241232-HL-1', 'Ceramic wall', 'IM10062224', '5', 'NEW', '1192-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062224_IM-AS241232-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062224_IM-AS241232-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(109, 'IM AS241233 L GLOSSY 300x600', 'IM AS241233 L', 'Ceramic wall', 'IM10062225', '5', 'NEW', '1202 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062225_IM-AS241233-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062225_IM-AS241233-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(110, 'IM AS241233-HL-1 GLOSSY 300x600', 'IM AS241233-HL-1', 'Ceramic wall', 'IM10062226', '5', 'NEW', '1202-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062226_IM-AS241233-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062226_IM-AS241233-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(111, 'IM AS241234 L GLOSSY 300x600', 'IM AS241234 L', 'Ceramic wall', 'IM10062227', '5', 'NEW', '1226 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062227_IM-AS241234-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062227_IM-AS241234-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(112, 'IM AS241234 D GLOSSY 300x600', 'IM AS241234 D', 'Ceramic wall', 'IM10062228', '5', 'NEW', '1226 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062228_IM-AS241234-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062228_IM-AS241234-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(113, 'IM AS241234-HL-1 GLOSSY 300x600', 'IM AS241234-HL-1', 'Ceramic wall', 'IM10062229', '5', 'NEW', '1226-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062229_IM-AS241234-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062229_IM-AS241234-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(114, 'IM AS241235 L GLOSSY 300x600', 'IM AS241235 L', 'Ceramic wall', 'IM10062230', '5', 'NEW', '1288 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062230_IM-AS241235-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062230_IM-AS241235-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(115, 'IM AS241235 D GLOSSY 300x600', 'IM AS241235 D', 'Ceramic wall', 'IM10062231', '5', 'NEW', '1288 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062231_IM-AS241235-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062231_IM-AS241235-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(116, 'IM AS241235-HL-1 GLOSSY 300x600', 'IM AS241235-HL-1', 'Ceramic wall', 'IM10062232', '5', 'NEW', '1288-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062232_IM-AS241235-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062232_IM-AS241235-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(117, 'IM AS241236 L GLOSSY 300x600', 'IM AS241236 L', 'Ceramic wall', 'IM10062233', '5', 'NEW', '1325 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062233_IM-AS241236-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062233_IM-AS241236-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(118, 'IM AS241236 D GLOSSY 300x600', 'IM AS241236 D', 'Ceramic wall', 'IM10062234', '5', 'NEW', '1325 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062234_IM-AS241236-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062234_IM-AS241236-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(119, 'IM AS241236-HL-1 GLOSSY 300x600', 'IM AS241236-HL-1', 'Ceramic wall', 'IM10062235', '5', 'NEW', '1325-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062235_IM-AS241236-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062235_IM-AS241236-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(120, 'IM AS241238 L GLOSSY 300x600', 'IM AS241238 L', 'Ceramic wall', 'IM10062239', '5', 'NEW', '1357 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062239_IM-AS241238-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062239_IM-AS241238-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(121, 'IM AS241238 D GLOSSY 300x600', 'IM AS241238 D', 'Ceramic wall', 'IM10062240', '5', 'NEW', '1357 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062240_IM-AS241238-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062240_IM-AS241238-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(122, 'IM AS241238-HL-1 GLOSSY 300x600', 'IM AS241238-HL-1', 'Ceramic wall', 'IM10062241', '5', 'NEW', '1357-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062241_IM-AS241238-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062241_IM-AS241238-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(123, 'IM AS241239 L GLOSSY 300x600', 'IM AS241239 L', 'Ceramic wall', 'IM10062242', '5', 'NEW', '1360 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062242_IM-AS241239-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062242_IM-AS241239-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(124, 'IM AS241239-HL-1 GLOSSY 300x600', 'IM AS241239-HL-1', 'Ceramic wall', 'IM10062243', '5', 'NEW', '1360-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062243_IM-AS241239-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062243_IM-AS241239-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(125, 'IM AS241240 L GLOSSY 300x600', 'IM AS241240 L', 'Ceramic wall', 'IM10062244', '5', 'NEW', '6027 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062244_IM-AS241240-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062244_IM-AS241240-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(126, 'IM AS241240 D GLOSSY 300x600', 'IM AS241240 D', 'Ceramic wall', 'IM10062245', '5', 'NEW', '6027 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062245_IM-AS241240-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062245_IM-AS241240-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', '');
INSERT INTO `tiles` (`product_id`, `product_name`, `tile_name`, `category`, `im_code`, `packing`, `sku_type`, `vsku_code`, `base_material`, `colour`, `finish`, `finish_one`, `style`, `size`, `application`, `application_one`, `application_areas`, `application_areas_one`, `application_areas_two`, `application_areas_three`, `application_areas_four`, `application_areas_five`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`, `area_per_box`, `weight_per_box`, `ambience_view`) VALUES
(127, 'IM AS241240-HL-1 GLOSSY 300x600', 'IM AS241240-HL-1', 'Ceramic wall', 'IM10062246', '5', 'NEW', '6027-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062246_IM-AS241240-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062246_IM-AS241240-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(128, 'IM AS241240-HL-2 GLOSSY 300x600', 'IM AS241240-HL-2', 'Ceramic wall', 'IM10062247', '5', 'NEW', '6027-HL-2', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062247_IM-AS241240-HL-2-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062247_IM-AS241240-HL-2-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(129, 'IM AS241241 L GLOSSY 300x600', 'IM AS241241 L', 'Ceramic wall', 'IM10062248', '5', 'NEW', '6033 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062248_IM-AS241241-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062248_IM-AS241241-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(130, 'IM AS241241-HL-1 GLOSSY 300x600', 'IM AS241241-HL-1', 'Ceramic wall', 'IM10062249', '5', 'NEW', '6033-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062249_IM-AS241241-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062249_IM-AS241241-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(131, 'IM AS241241-HL-2 GLOSSY 300x600', 'IM AS241241-HL-2', 'Ceramic wall', 'IM10062250', '5', 'NEW', '6033-HL-2', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062250_IM-AS241241-HL-2-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062250_IM-AS241241-HL-2-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(132, 'IM AS241242 L GLOSSY 300x600', 'IM AS241242 L', 'Ceramic wall', 'IM10062251', '5', 'NEW', '1326 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062251_IM-AS241242-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062251_IM-AS241242-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(133, 'IM AS241242-HL-1 GLOSSY 300x600', 'IM AS241242-HL-1', 'Ceramic wall', 'IM10062252', '5', 'NEW', '1326-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062252_IM-AS241242-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062252_IM-AS241242-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(134, 'IM AS241242-HL-2 GLOSSY 300x600', 'IM AS241242-HL-2', 'Ceramic wall', 'IM10062253', '5', 'NEW', '1326-HL-2', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062253_IM-AS241242-HL-2-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062253_IM-AS241242-HL-2-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(135, 'IM AS241243 L GLOSSY 300x600', 'IM AS241243 L', 'Ceramic wall', 'IM10062254', '5', 'NEW', 'ST 103 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062254_IM-AS241243-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062254_IM-AS241243-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(136, 'IM AS241244 L GLOSSY 300x600', 'IM AS241244 L', 'Ceramic wall', 'IM10062255', '5', 'NEW', 'ST 107 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062255_IM-AS241244-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062255_IM-AS241244-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(137, 'IM AS241248 L GLOSSY 300x600', 'IM AS2411248  L', 'Ceramic wall', 'IM10062259', '5', 'NEW', '4011 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062259_IM-AS241248-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062259_IM-AS241248-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(138, 'IM AS241248 D GLOSSY 300x600', 'IM AS2411248  D', 'Ceramic wall', 'IM10062260', '5', 'NEW', '4011 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062260_IM-AS241248-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062260_IM-AS241248-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(139, 'IM AS241248-HL-1 GLOSSY 300x600', 'IM AS241248-HL-1', 'Ceramic wall', 'IM10062261', '5', 'NEW', '4011-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062261_IM-AS241248-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062261_IM-AS241248-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(140, 'IM AS241249 L GLOSSY 300x600', 'IM AS2411249  L', 'Ceramic wall', 'IM10062262', '5', 'NEW', '4014 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062262_IM-AS241249-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062262_IM-AS241249-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(141, 'IM AS241249D GLOSSY 300x600', 'IM AS2411249D GLOSSY', 'Ceramic wall', 'IM10062263', '5', 'NEW', '4014 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062263_IM-AS241249D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062263_IM-AS241249D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(142, 'IM AS241249-HL-1 GLOSSY 300x600', 'IM AS241249-HL-1', 'Ceramic wall', 'IM10062264', '5', 'NEW', '4014-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062264_IM-AS241249-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062264_IM-AS241249-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(143, 'IM AS241250 L GLOSSY 300x600', 'IM AS2411250  L', 'Ceramic wall', 'IM10062265', '5', 'NEW', '4027 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062265_IM-AS241250-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062265_IM-AS241250-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(144, 'IM AS241250 D GLOSSY 300x600', 'IM AS2411250  D', 'Ceramic wall', 'IM10062266', '5', 'NEW', '4027 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062266_IM-AS241250-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062266_IM-AS241250-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(145, 'IM AS241250-HL-1 GLOSSY 300x600', 'IM AS241250-HL-1', 'Ceramic wall', 'IM10062267', '5', 'NEW', '4027-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062267_IM-AS241250-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062267_IM-AS241250-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(146, 'IM AS241251 L GLOSSY 300x600', 'IM AS2411251  L', 'Ceramic wall', 'IM10062268', '5', 'NEW', '4034 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062268_IM-AS241251-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062268_IM-AS241251-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(147, 'IM AS241251 D GLOSSY 300x600', 'IM AS2411251  D', 'Ceramic wall', 'IM10062269', '5', 'NEW', '4034 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062269_IM-AS241251-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062269_IM-AS241251-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(148, 'IM AS241251-HL-1 GLOSSY 300x600', 'IM AS241251-HL-1', 'Ceramic wall', 'IM10062270', '5', 'NEW', '4034-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062270_IM-AS241251-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062270_IM-AS241251-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(149, 'IM AS241252 L GLOSSY 300x600', 'IM AS2411252  L', 'Ceramic wall', 'IM10062271', '5', 'NEW', '4090 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062271_IM-AS241252-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062271_IM-AS241252-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(150, 'IM AS241252 D GLOSSY 300x600', 'IM AS2411252  D', 'Ceramic wall', 'IM10062272', '5', 'NEW', '4090 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062272_IM-AS241252-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062272_IM-AS241252-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(151, 'IM AS241252-HL-1 GLOSSY 300x600', 'IM AS241252-HL-1', 'Ceramic wall', 'IM10062273', '5', 'NEW', '4090-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062273_IM-AS241252-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062273_IM-AS241252-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(152, 'IM AS241253 L GLOSSY 300x600', 'IM AS2411253  L', 'Ceramic wall', 'IM10062274', '5', 'NEW', '4097 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062274_IM-AS241253-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062274_IM-AS241253-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(153, 'IM AS241253 D GLOSSY 300x600', 'IM AS2411253  D', 'Ceramic wall', 'IM10062275', '5', 'NEW', '4097 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062275_IM--AS241253-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062275_IM--AS241253-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(154, 'IM AS241253-HL-1 GLOSSY 300x600', 'IM AS241253-HL-1', 'Ceramic wall', 'IM10062276', '5', 'NEW', '4097-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062276_IM-AS241253-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062276_IM-AS241253-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(155, 'IM AS241254 L GLOSSY 300x600', 'IM AS2411254  L', 'Ceramic wall', 'IM10062277', '5', 'NEW', '4147 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062277_IM-AS241254-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062277_IM-AS241254-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(156, 'IM AS241254 D GLOSSY 300x600', 'IM AS2411254  D', 'Ceramic wall', 'IM10062278', '5', 'NEW', '4147 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062278_IM-AS241254-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062278_IM-AS241254-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(157, 'IM AS241255 L GLOSSY 300x600', 'IM AS2411255  L', 'Ceramic wall', 'IM10062279', '5', 'NEW', '4154 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062279_IM-AS241255-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062279_IM-AS241255-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(158, 'IM AS241255 D GLOSSY 300x600', 'IM AS2411255  D', 'Ceramic wall', 'IM10062280', '5', 'NEW', '4154 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062280_IM-AS241255-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062280_IM-AS241255-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(159, 'IM AS241255-HL-1 GLOSSY 300x600', 'IM AS241255-HL-1', 'Ceramic wall', 'IM10062281', '5', 'NEW', '4154-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062281_IM-AS241255-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062281_IM-AS241255-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(160, 'IM AS241255-HL-2 GLOSSY 300x600', 'IM AS241255-HL-2', 'Ceramic wall', 'IM10062282', '5', 'NEW', '4154-HL-2', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062282_IM-AS241255-HL-2-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062282_IM-AS241255-HL-2-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(161, 'IM AS241256 L GLOSSY 300x600', 'IM AS2411256  L', 'Ceramic wall', 'IM10062283', '5', 'NEW', '4160 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062283_IM-AS241256-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062283_IM-AS241256-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(162, 'IM AS241256 D GLOSSY 300x600', 'IM AS2411256  D', 'Ceramic wall', 'IM10062284', '5', 'NEW', '4160 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062284_IM-AS241256-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062284_IM-AS241256-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(163, 'IM AS241256-HL-1 GLOSSY 300x600', 'IM AS241256-HL-1', 'Ceramic wall', 'IM10062285', '5', 'NEW', '4160-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062285_IM-AS241256-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062285_IM-AS241256-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(164, 'IM AS241257 L GLOSSY 300x600', 'IM AS2411257  L', 'Ceramic wall', 'IM10062286', '5', 'NEW', '4168 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(165, 'IM AS241257 D GLOSSY 300x600', 'IM AS2411257  D', 'Ceramic wall', 'IM10062287', '5', 'NEW', '4168 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062287_IM-AS241257-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062287_IM-AS241257-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(166, 'IM AS241257-HL-1 GLOSSY 300x600', 'IM AS241257-HL-1', 'Ceramic wall', 'IM10062288', '5', 'NEW', '4168-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062288_IM-AS241257-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062288_IM-AS241257-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(167, 'IM AS241260 D GLOSSY 300x600', 'IM AS2411260  D', 'Ceramic wall', 'IM10062289', '5', 'NEW', '4169 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062289_IM-AS241260-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062289_IM-AS241260-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(168, 'IM AS241260-HL-1 GLOSSY 300x600', 'IM AS241260-HL-1', 'Ceramic wall', 'IM10062290', '5', 'NEW', '4169-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062290_IM-AS241260-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062290_IM-AS241260-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(169, 'IM AS241261 L GLOSSY 300x600', 'IM AS2411261  L', 'Ceramic wall', 'IM10062291', '5', 'NEW', '4180 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062291_IM-AS241261-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062291_IM-AS241261-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(170, 'IM AS241261 D GLOSSY 300x600', 'IM AS2411261  D', 'Ceramic wall', 'IM10062292', '5', 'NEW', '4180 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062292_IM-AS241261-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062292_IM-AS241261-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(171, 'IM AS241261-HL-1 GLOSSY 300x600', 'IM AS241261-HL-1', 'Ceramic wall', 'IM10062293', '5', 'NEW', '4180-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062293_IM-AS241261-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062293_IM-AS241261-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(172, 'IM AS241262 L GLOSSY 300x600', 'IM AS2411262  L', 'Ceramic wall', 'IM10062294', '5', 'NEW', '4183 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062294_IM-AS241262-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062294_IM-AS241262-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(173, 'IM AS241262 D GLOSSY 300x600', 'IM AS2411262  D', 'Ceramic wall', 'IM10062295', '5', 'NEW', '4183 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062295_IM-AS241262-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062295_IM-AS241262-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(174, 'IM AS241262-HL-1 GLOSSY 300x600', 'IM AS241262-HL-1', 'Ceramic wall', 'IM10062296', '5', 'NEW', '4183-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062296_IM-AS241262-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062296_IM-AS241262-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(175, 'IM AS241263 L GLOSSY 300x600', 'IM AS2411263  L', 'Ceramic wall', 'IM10062297', '5', 'NEW', '4184 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062297_IM-AS241263-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062297_IM-AS241263-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(176, 'IM AS241263 D GLOSSY 300x600', 'IM AS2411263  D', 'Ceramic wall', 'IM10062298', '5', 'NEW', '4184 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062298_IM-AS241263-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062298_IM-AS241263-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(177, 'IM AS241263-HL-1 GLOSSY 300x600', 'IM AS241263-HL-1', 'Ceramic wall', 'IM10062299', '5', 'NEW', '4184-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062299_IM-AS241263-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062299_IM-AS241263-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(178, 'IM AS241263-HL-2 GLOSSY 300x600', 'IM AS241263-HL-2', 'Ceramic wall', 'IM10062300', '5', 'NEW', '4184-HL-2', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062300_IM-AS241263-HL-2-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062300_IM-AS241263-HL-2-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(179, 'IM AS241264 L GLOSSY 300x600', 'IM AS2411264  L', 'Ceramic wall', 'IM10062301', '5', 'NEW', '4191 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062301_IM-AS241264-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062301_IM-AS241264-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(180, 'IM AS241264-HL-1 GLOSSY 300x600', 'IM AS241264-HL-1', 'Ceramic wall', 'IM10062302', '5', 'NEW', '4191-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062302_IM-AS241264-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062302_IM-AS241264-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(181, 'IM AS241265 D GLOSSY 300x600', 'IM AS2411265  D', 'Ceramic wall', 'IM10062303', '5', 'NEW', '4201 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062303_IM-AS241265-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062303_IM-AS241265-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(182, 'IM AS241265-HL-1 GLOSSY 300x600', 'IM AS241265-HL-1', 'Ceramic wall', 'IM10062304', '5', 'NEW', '4202-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062304_IM-AS241265-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062304_IM-AS241265-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(183, 'IM AS241266 D GLOSSY 300x600', 'IM AS2411266  D', 'Ceramic wall', 'IM10062305', '5', 'NEW', '4202 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062305_IM-AS241266-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062305_IM-AS241266-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(184, 'IM AS241266-HL-1 GLOSSY 300x600', 'IM AS241266-HL-1', 'Ceramic wall', 'IM10062306', '5', 'NEW', '4202-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062306_IM-AS241266-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062306_IM-AS241266-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(185, 'IM AS241267 D GLOSSY 300x600', 'IM AS2411267  D', 'Ceramic wall', 'IM10062307', '5', 'NEW', '4203 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062307_IM-AS241267-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062307_IM-AS241267-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(186, 'IM AS241267-HL-1 GLOSSY 300x600', 'IM AS241267-HL-1', 'Ceramic wall', 'IM10062308', '5', 'NEW', '4203-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062308_IM-AS241267-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062308_IM-AS241267-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(187, 'IM AS241268 D GLOSSY 300x600', 'IM AS2411268  D', 'Ceramic wall', 'IM10062309', '5', 'NEW', '4207 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062309_IM-AS241268-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062309_IM-AS241268-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(188, 'IM AS241268-HL-1 GLOSSY 300x600', 'IM AS241268-HL-1', 'Ceramic wall', 'IM10062310', '5', 'NEW', '4207-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062310_IM-AS241268-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062310_IM-AS241268-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(189, 'IM AS241269 L GLOSSY 300x600', 'IM AS2411269  L', 'Ceramic wall', 'IM10062311', '5', 'NEW', '4212 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062311_IM-AS241269-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062311_IM-AS241269-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(190, 'IM AS241269 D GLOSSY 300x600', 'IM AS2411269  D', 'Ceramic wall', 'IM10062312', '5', 'NEW', '4212 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062312_IM-AS241269-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062312_IM-AS241269-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(191, 'IM AS241269-HL-1 GLOSSY 300x600', 'IM AS241269-HL-1', 'Ceramic wall', 'IM10062313', '5', 'NEW', '4212-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062313_IM-AS241269-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062313_IM-AS241269-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(192, 'IM AS241270 L GLOSSY 300x600', 'IM AS2411270  L', 'Ceramic wall', 'IM10062314', '5', 'NEW', '4220 L', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062314_IM-AS241270-L-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062314_IM-AS241270-L-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(193, 'IM AS241270 D GLOSSY 300x600', 'IM AS2411270  D', 'Ceramic wall', 'IM10062315', '5', 'NEW', '4220 D', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062315_IM-AS241270-D-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062315_IM-AS241270-D-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(194, 'IM AS241270-HL-1 GLOSSY 300x600', 'IM AS241270-HL-1', 'Ceramic wall', 'IM10062316', '5', 'NEW', '4220-HL-1', 'Ceramic', '', 'Satin Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062316_IM-AS241270-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '', 'IM10062316_IM-AS241270-HL-1-GLOSSY-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(195, 'IM AS241230 L 300x600', 'IM AS241230 L', 'Ceramic wall', 'IM10062876', '5', 'NEW', '1148 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062876_IM-AS241230-L-300X600_Ceramic-wall.webp', '', 'IM10062876_IM-AS241230-L-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(196, 'IM AS241230 D 300x600', 'IM AS241230 D', 'Ceramic wall', 'IM10062877', '5', 'NEW', '1148 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062877_IM-AS241230-D-300X600_Ceramic-wall.webp', '', 'IM10062877_IM-AS241230-D-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(197, 'IM AS241230-HL-1 300x600', 'IM AS241230-HL-1', 'Ceramic wall', 'IM10062878', '5', 'NEW', '1148-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062878_IM-AS241230-HL-1-300X600_Ceramic-wall.webp', '', 'IM10062878_IM-AS241230-HL-1-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(198, 'IM AS241231 L 300x600', 'IM AS241231 L', 'Ceramic wall', 'IM10062879', '5', 'NEW', '1153 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062879_IM-AS241231-L-300X600_Ceramic-wall.webp', '', 'IM10062879_IM-AS241231-L-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(199, 'IM AS241231 D 300x600', 'IM AS241231 D', 'Ceramic wall', 'IM10062880', '5', 'NEW', '1153 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062880_IM-AS241231-D-300X600_Ceramic-wall.webp', '', 'IM10062880_IM-AS241231-D-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(200, 'IM AS241231-HL-1 300x600', 'IM AS241231-HL-1', 'Ceramic wall', 'IM10062881', '5', 'NEW', '1153-HL-1', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062881_IM-AS241231-HL-1-300X600_Ceramic-wall.webp', '', 'IM10062881_IM-AS241231-HL-1-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(201, 'IM AS241245 L 300x600', 'IM AS241245 L', 'Ceramic wall', 'IM10062882', '5', 'NEW', '1404 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062882_IM-AS241245-L-300X600_Ceramic-wall.webp', '', 'IM10062882_IM-AS241245-L-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(202, 'IM AS241246 L 300x600', 'IM AS241246 L', 'Ceramic wall', 'IM10062883', '5', 'NEW', '1406 L', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062883_IM-AS241246-L-300X600_Ceramic-wall.webp', '', 'IM10062883_IM-AS241246-L-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(203, 'IM AS241247 B L 300x600', 'IM AS241247 B', 'Ceramic wall', 'IM10062884', '5', 'NEW', '1406 D', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/300x600/', 'IM10062884_IM-AS241247-B-L-300X600_Ceramic-wall.webp', '', 'IM10062884_IM-AS241247-B-L-300X600_Ceramic-wall.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(204, 'IM AST WALLPAPER 51 300x600', 'IM AST WALLPAPER 51', 'Ceramic wall', 'IM10040705', '5', '', '', 'Ceramic', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(205, 'IM AST WALLPAPER 52 300x600', 'IM AST WALLPAPER 52', 'Ceramic wall', 'IM10040706', '5', '', '', 'Ceramic', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(206, 'IM AST WALLPAPER 53 300x600', 'IM AST WALLPAPER 53', 'Ceramic wall', 'IM10040707', '5', '', '', 'Ceramic', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(207, '2400-L 300x600', '2400-L', 'Ceramic wall', 'IM10044735', '5', '', '', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(208, '2400-D 300x600', '2400-D', 'Ceramic wall', 'IM10044736', '5', '', '', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(209, '2400-HL 300x600', '2400-HL', 'Ceramic wall', 'IM10044737', '5', '', '', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(210, 'IM AST WALLPAPER 54 300x600', 'IM AST WALLPAPER 54', 'Ceramic wall', 'IM10046296', '5', '', '', 'Ceramic', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(211, 'IM AST WALLPAPER 55 300x600', 'IM AST WALLPAPER 55', 'Ceramic wall', 'IM10046297', '5', '', '', 'Ceramic', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(212, 'IM AST WALLPAPER 56 300x600', 'IM AST WALLPAPER 56', 'Ceramic wall', 'IM10046298', '5', '', '', 'Ceramic', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(213, '6117-L-300x600', '6117-L', 'Ceramic wall', 'IM10039072', '5', '', '', 'Ceramic', '', 'Glossy', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '9.7 sq.ft', '13.5 kg', ''),
(214, 'IM AS-IM24801 MATT 24X8', 'IM AS-IM24801 MATT 24X8', 'Ceramic wall', 'IM10062317', '6', 'NEW', '8404', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062317.webp', '', 'IM10062317.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(215, 'IM AS-IM24802 MATT 24X8', 'IM AS-IM24802 MATT 24X8', 'Ceramic wall', 'IM10062318', '6', 'NEW', '8407', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062318.webp', '', 'IM10062318.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(216, 'IM AS-IM24803 MATT 24X8', 'IM AS-IM24803 MATT 24X8', 'Ceramic wall', 'IM10062319', '6', 'NEW', '8408', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062319.webp', '', 'IM10062319.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(217, 'IM AS-IM24804 GLOSSY 24X8', 'IM AS-IM24804 GLOSSY 24X8', 'Ceramic wall', 'IM10062320', '6', 'NEW', '7014', 'Ceramic', '', 'Glossy', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062320.webp', '', 'IM10062320.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(218, 'IM AS-IM24809 MATT 24X8', 'IM AS-IM24809 MATT 24X8', 'Ceramic wall', 'IM10062325', '6', 'NEW', '8013', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062325.webp', '', 'IM10062325.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(219, 'IM AS-IM24810 MATT 24X8', 'IM AS-IM24810 MATT 24X8', 'Ceramic wall', 'IM10062326', '6', 'NEW', '8058', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062326.webp', '', 'IM10062326.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(220, 'IM AS-IM24811 MATT 24X8', 'IM AS-IM24811 MATT 24X8', 'Ceramic wall', 'IM10062327', '6', 'NEW', '8059', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062327.webp', '', 'IM10062327.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(221, 'IM AS-IM24812 MATT 24X8', 'IM AS-IM24812 MATT 24X8', 'Ceramic wall', 'IM10062328', '6', 'NEW', '8056', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062328.webp', '', 'IM10062328.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(222, 'IM AS-IM24813 MATT 24X8', 'IM AS-IM24813 MATT 24X8', 'Ceramic wall', 'IM10062329', '6', 'NEW', '8060', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062329.webp', '', 'IM10062329.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(223, 'IM AS-IM24814 MATT 24X8', 'IM AS-IM24814 MATT 24X8', 'Ceramic wall', 'IM10062330', '6', 'NEW', '8065', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062330.webp', '', 'IM10062330.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(224, 'IM AS-IM24815 MATT 24X8', 'IM AS-IM24815 MATT 24X8', 'Ceramic wall', 'IM10062331', '6', 'NEW', '8067', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062331.webp', '', 'IM10062331.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(225, 'IM AS-IM24816 MATT 24X8', 'IM AS-IM24816 MATT 24X8', 'Ceramic wall', 'IM10062332', '6', 'NEW', '8070', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062332.webp', '', 'IM10062332.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(226, 'IM AS-IM24817 MATT 24X8', 'IM AS-IM24817 MATT 24X8', 'Ceramic wall', 'IM10062333', '6', 'NEW', '8068', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062333.webp', '', 'IM10062333.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(227, 'IM AS-IM24818 MATT 24X8', 'IM AS-IM24818 MATT 24X8', 'Ceramic wall', 'IM10062334', '6', 'NEW', '8069', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062334.webp', '', 'IM10062334.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(228, 'IM AS-IM24819 MATT 24X8', 'IM AS-IM24819 MATT 24X8', 'Ceramic wall', 'IM10062335', '6', 'NEW', '8203', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062335.webp', '', 'IM10062335.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(229, 'IM AS-IM24820 MATT 24X8', 'IM AS-IM24820 MATT 24X8', 'Ceramic wall', 'IM10062336', '6', 'NEW', '8207', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062336.webp', '', 'IM10062336.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(230, 'IM AS-IM24821 MATT 24X8', 'IM AS-IM24821 MATT 24X8', 'Ceramic wall', 'IM10062337', '6', 'NEW', '8087', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062337.webp', '', 'IM10062337.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(231, 'IM AS-IM24822 MATT 24X8', 'IM AS-IM24822 MATT 24X8', 'Ceramic wall', 'IM10062338', '6', 'NEW', '8220', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062338.webp', '', 'IM10062338.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(232, 'IM AS-IM24823 MATT 24X8', 'IM AS-IM24823 MATT 24X8', 'Ceramic wall', 'IM10062339', '6', 'NEW', '8221', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062339.webp', '', 'IM10062339.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(233, 'IM AS-IM24805 24X8', 'IM AS-IM24805 24X8', 'Ceramic wall', 'IM10062885', '6', 'NEW', '7019-D', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062885.webp', '', 'IM10062885.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(234, 'IM AS-IM24806 24X8', 'IM AS-IM24806 24X8', 'Ceramic wall', 'IM10062886', '6', 'NEW', '7019-L', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062886.webp', '', 'IM10062886.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(235, 'IM AS-IM24807 24X8', 'IM AS-IM24807 24X8', 'Ceramic wall', 'IM10062887', '6', 'NEW', '7020-D', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062887.webp', '', 'IM10062887.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(236, 'IM AS-IM24808 24X8', 'IM AS-IM24808 24X8', 'Ceramic wall', 'IM10062888', '6', 'NEW', '7020-L', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10062888.webp', '', 'IM10062888.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(237, 'AS-IM24824', 'AS-IM24824', 'Ceramic wall', 'IM10063124', '6', 'NEW', '7021-D', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10063124.webp', '', 'IM10063124.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(238, 'AS-IM24825', 'AS-IM24825', 'Ceramic wall', 'IM10063125', '6', 'NEW', '7021-L', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10063125.webp', '', 'IM10063125.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(239, 'AS-IM24826', 'AS-IM24826', 'Ceramic wall', 'IM10063126', '6', 'NEW', '7022-D', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10063126.webp', '', 'IM10063126.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(240, 'AS-IM24827', 'AS-IM24827', 'Ceramic wall', 'IM10063127', '6', 'NEW', '7022-L', 'Ceramic', '', 'Matt', '', '', '200x600', '', 'Wall Tiles', 'Living room', 'Bedroom', 'Bathroom', 'Kitchen', '', '', 'products/tiles/ceramic-wall/200X600/', 'IM10063127.webp', '', 'IM10063127.webp', '1', '7.7 sq.ft', '9.9 kg', ''),
(241, 'IM ALA-VELV241271 ELEVATION 300x600', 'IM ALA-VELV241271', 'Elevation', 'IM10062340', '6', 'NEW', 'E-12-1221', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241271-elevation-im10062340.webp', '', 'im-ala-velv241271-elevation-im10062340.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(242, 'IM ALA-VELV241272 ELEVATION 300x600', 'IM ALA-VELV241272', 'Elevation', 'IM10062341', '6', 'NEW', 'E-12-1229', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241272-elevation-im10062341.webp', '', 'im-ala-velv241272-elevation-im10062341.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(243, 'IM ALA-VELV241273 ELEVATION 300x600', 'IM ALA-VELV241273', 'Elevation', 'IM10062342', '6', 'NEW', 'E-20-1382', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241273-elevation-im10062342.webp', '', 'im-ala-velv241273-elevation-im10062342.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(244, 'IM ALA-VELV241274 ELEVATION 300x600', 'IM ALA-VELV241274', 'Elevation', 'IM10062343', '6', 'NEW', 'E-20-1383', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241274-elevation-im10062343.webp', '', 'im-ala-velv241274-elevation-im10062343.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(245, 'IM ALA-VELV241275 ELEVATION 300x600', 'IM ALA-VELV241275', 'Elevation', 'IM10062344', '6', 'NEW', 'E-20-1389', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241275-elevation-im10062344.webp', '', 'im-ala-velv241275-elevation-im10062344.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(246, 'IM ALA-VELV241276 ELEVATION 300x600', 'IM ALA-VELV241276', 'Elevation', 'IM10062345', '6', 'NEW', 'E-20-1392', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241276-elevation-im10062345.webp', '', 'im-ala-velv241276-elevation-im10062345.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(247, 'IM ALA-VELV241277 ELEVATION 300x600', 'IM ALA-VELV241277', 'Elevation', 'IM10062346', '6', 'NEW', 'E-24-1461', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241277-elevation-im10062346.webp', '', 'im-ala-velv241277-elevation-im10062346.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(248, 'IM ALA-VELV241278 ELEVATION 300x600', 'IM ALA-VELV241278', 'Elevation', 'IM10062347', '6', 'NEW', 'E-24-1462', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241278-elevation-im10062347.webp', '', 'im-ala-velv241278-elevation-im10062347.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(249, 'IM ALA-VELV241279 ELEVATION 300x600', 'IM ALA-VELV241279', 'Elevation', 'IM10062348', '6', 'NEW', 'E-24-Liner-BLACK', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241279-elevation-im10062348.webp', '', 'im-ala-velv241279-elevation-im10062348.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(250, 'IM ALA-VELV241280 ELEVATION 300x600', 'IM ALA-VELV241280', 'Elevation', 'IM10062349', '6', 'NEW', 'E-24-Liner-GREY', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241280-elevation-im10062349.webp', '', 'im-ala-velv241280-elevation-im10062349.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(251, 'IM ALA-VELV241281 ELEVATION 300x600', 'IM ALA-VELV241281', 'Elevation', 'IM10062350', '6', 'NEW', 'E-24-Liner-WHITE', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241281-elevation-im10062350.webp', '', 'im-ala-velv241281-elevation-im10062350.webp', '1', '11.6 sq.ft ', '22 kg', '');
INSERT INTO `tiles` (`product_id`, `product_name`, `tile_name`, `category`, `im_code`, `packing`, `sku_type`, `vsku_code`, `base_material`, `colour`, `finish`, `finish_one`, `style`, `size`, `application`, `application_one`, `application_areas`, `application_areas_one`, `application_areas_two`, `application_areas_three`, `application_areas_four`, `application_areas_five`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`, `area_per_box`, `weight_per_box`, `ambience_view`) VALUES
(252, 'IM ALA-VELV241282 ELEVATION 300x600', 'IM ALA-VELV241282', 'Elevation', 'IM10062351', '6', 'NEW', 'E-29-1562', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241282-elevation-im10062351.webp', '', 'im-ala-velv241282-elevation-im10062351.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(253, 'IM ALA-VELV241283 ELEVATION 300x600', 'IM ALA-VELV241283', 'Elevation', 'IM10062352', '6', 'NEW', 'E-29-1563', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241283-elevation-im10062352.webp', '', 'im-ala-velv241283-elevation-im10062352.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(254, 'IM ALA-VELV241284 ELEVATION 300x600', 'IM ALA-VELV241284', 'Elevation', 'IM10062353', '6', 'NEW', 'E-29-1570', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241284-elevation-im10062353.webp', '', 'im-ala-velv241284-elevation-im10062353.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(255, 'IM ALA-VELV241285 ELEVATION 300x600', 'IM ALA-VELV241285', 'Elevation', 'IM10062354', '6', 'NEW', 'E-29-1572', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241285-elevation-im10062354.webp', '', 'im-ala-velv241285-elevation-im10062354.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(256, 'IM ALA-VELV241286 ELEVATION 300x600', 'IM ALA-VELV241286', 'Elevation', 'IM10062355', '6', 'NEW', 'E-34-1672', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241286-elevation-im10062355.webp', '', 'im-ala-velv241286-elevation-im10062355.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(257, 'IM ALA-VELV241287 ELEVATION 300x600', 'IM ALA-VELV241287', 'Elevation', 'IM10062356', '6', 'NEW', 'E-34-1674', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241287-elevation-im10062356.webp', '', 'im-ala-velv241287-elevation-im10062356.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(258, 'IM ALA-VELV241288 ELEVATION 300x600', 'IM ALA-VELV241288', 'Elevation', 'IM10062357', '6', 'NEW', 'E-37-1721', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241288-elevation-im10062357.webp', '', 'im-ala-velv241288-elevation-im10062357.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(259, 'IM ALA-VELV241289 ELEVATION 300x600', 'IM ALA-VELV241289', 'Elevation', 'IM10062358', '6', 'NEW', 'E-38-1747', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241289-elevation-im10062358.webp', '', 'im-ala-velv241289-elevation-im10062358.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(260, 'IM ALA-VELV241290 ELEVATION 300x600', 'IM ALA-VELV241290', 'Elevation', 'IM10062359', '6', 'NEW', 'E-40-1784', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241290-elevation-im10062359.webp', '', 'im-ala-velv241290-elevation-im10062359.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(261, 'IM ALA-VELV241291 ELEVATION 300x600', 'IM ALA-VELV241291', 'Elevation', 'IM10062360', '6', 'NEW', 'E-40-1788', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241291-elevation-im10062360.webp', '', 'im-ala-velv241291-elevation-im10062360.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(262, 'IM ALA-VELV241292 ELEVATION 300x600', 'IM ALA-VELV241292', 'Elevation', 'IM10062361', '6', 'NEW', 'E-41-BK', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241292-elevation-im10062361.webp', '', 'im-ala-velv241292-elevation-im10062361.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(263, 'IM ALA-VELV241293 ELEVATION 300x600', 'IM ALA-VELV241293', 'Elevation', 'IM10062362', '6', 'NEW', 'E-42-1802', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241293-elevation-im10062362.webp', '', 'im-ala-velv241293-elevation-im10062362.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(264, 'IM ALA-VELV241294 ELEVATION 300x600', 'IM ALA-VELV241294', 'Elevation', 'IM10062363', '6', 'NEW', 'E-42-1805', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241294-elevation-im10062363.webp', '', 'im-ala-velv241294-elevation-im10062363.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(265, 'IM ALA-VELV241295 ELEVATION 300x600', 'IM ALA-VELV241295', 'Elevation', 'IM10062364', '6', 'NEW', 'Kera stone Red', 'Vitrified', '', '', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'im-ala-velv241295-elevation-im10062364.webp', '', 'im-ala-velv241295-elevation-im10062364.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(266, 'HD 1007-E-1 300x600', '', 'Elevation', 'IM10016095', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1007-e-1-im10016095.webp', '', 'hd-1007-e-1-im10016095.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(267, 'HD 1047-E-3 300x600', '', 'Elevation', 'IM10016096', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1047-e-3-im10016096.webp', '', 'hd-1047-e-3-im10016096.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(268, 'HD 1061-E-4 300x600', '', 'Elevation', 'IM10016097', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1061-e-4-im10016097.webp', '', 'hd-1061-e-4-im10016097.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(269, 'HD 1245-E-13 300x600', '', 'Elevation', 'IM10016098', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1245-e-13-im10016098.webp', '', 'hd-1245-e-13-im10016098.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(270, 'HD 1250-E-13 300x600', '', 'Elevation', 'IM10016099', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1250-e-13-im10016099.webp', '', 'hd-1250-e-13-im10016099.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(271, 'HD 1286-E-15 300x600', '', 'Elevation', 'IM10016100', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1286-e-15-im10016100.webp', '', 'hd-1286-e-15-im10016100.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(272, 'HD 1289-E-15 300x600', '', 'Elevation', 'IM10016101', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1289-e-15-im10016101.webp', '', 'hd-1289-e-15-im10016101.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(273, 'HD 1348-E-18 300x600', '', 'Elevation', 'IM10016102', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1348-e-18-im10016102.webp', '', 'hd-1348-e-18-im10016102.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(274, 'HD 1388-E-20 300x600', '', 'Elevation', 'IM10016103', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1388-e-20-im10016103.webp', '', 'hd-1388-e-20-im10016103.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(275, 'HD 1530-E-27 300x600', '', 'Elevation', 'IM10016105', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1530-e-27-im10016105.webp', '', 'hd-1530-e-27-im10016105.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(276, 'HD 1573-E-29 300x600', '', 'Elevation', 'IM10016106', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1573-e-29-im10016106.webp', '', 'hd-1573-e-29-im10016106.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(277, 'HD 1603-E-31 300x600', '', 'Elevation', 'IM10016107', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1603-e-31-im10016107.webp', '', 'hd-1603-e-31-im10016107.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(278, 'HD 1609-E-31 300x600', '', 'Elevation', 'IM10016108', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1609-e-31-im10016108.webp', '', 'hd-1609-e-31-im10016108.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(279, 'HD 1623-E-32 300x600', '', 'Elevation', 'IM10016109', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1623-e-32-im10016109.webp', '', 'hd-1623-e-32-im10016109.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(280, 'HD 1626-E-32 300x600', '', 'Elevation', 'IM10016110', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1626-e-32-im10016110.webp', '', 'hd-1626-e-32-im10016110.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(281, 'HD 1629-E-32 300x600', '', 'Elevation', 'IM10016111', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1629-e-32-im10016111.webp', '', 'hd-1629-e-32-im10016111.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(282, 'HD 1672-E-34 300x600', '', 'Elevation', 'IM10016112', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-1672-e-34-im10016112.webp', '', 'hd-1672-e-34-im10016112.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(283, 'HD Linear Black-E-24 300x600', '', 'Elevation', 'IM10016113', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-linear-black-e-24-im10016113.webp', '', 'hd-linear-black-e-24-im10016113.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(284, 'HD Linear Choco-E-24 300x600', '', 'Elevation', 'IM10016114', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-linear-choco-e-24-im10016114.webp', '', 'hd-linear-choco-e-24-im10016114.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(285, 'HD Linear Crema-E-24 300x600', '', 'Elevation', 'IM10016115', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-linear-crema-e-24-im10016115.webp', '', 'hd-linear-crema-e-24-im10016115.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(286, 'HD Linear Grey-E-24 300x600', '', 'Elevation', 'IM10016116', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-linear-grey-e-24-im10016116.webp', '', 'hd-linear-grey-e-24-im10016116.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(287, 'HD Linear White-E-24 300x600', '', 'Elevation', 'IM10016117', '6', '', '', 'Vitrified', '', 'Matt', '', '', '300x600', '', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', 'Outdoor', 'products/tiles/elevation/', 'hd-linear-white-e-24-im10016117.webp', '', 'hd-linear-white-e-24-im10016117.webp', '1', '11.6 sq.ft ', '22 kg', ''),
(288, 'IMSIM1260-CALLIS BEIGE Matt & Carving 1200x600', 'Callis Beige', 'GVT', 'IM10062386', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062386_IMSIM1260-CALLIS-BEIGE-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062386_IMSIM1260-CALLIS-BEIGE-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(289, 'IMSIM1260-CALLIS GRIGIO Matt & Carving 1200x600', 'Callis Greigio', 'GVT', 'IM10062387', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062387_IMSIM1260-CALLIS-GRIGIO-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062387_IMSIM1260-CALLIS-GRIGIO-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(290, 'IMSIM1260-CALLIS GRIS Matt & Carving 1200x600', 'Callis Greis', 'GVT', 'IM10062388', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062388_IMSIM1260-CALLIS-GRIS-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062388_IMSIM1260-CALLIS-GRIS-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(291, 'IMSIM1260-DENIM GRIS Matt & Carving 1200x600', 'Denim Gris', 'GVT', 'IM10062389', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062389_IMSIM1260-DENIM-GRIS-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062389_IMSIM1260-DENIM-GRIS-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(292, 'IMSIM1260-MAJESTIC STATUARIO Matt & Carving 1200x600', 'Majestic Statuario', 'GVT', 'IM10062390', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062390_IMSIM1260-MAJESTIC-STATUARIO-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062390_IMSIM1260-MAJESTIC-STATUARIO-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(293, 'IMSIM1260-MARBELLA BEIGE Matt & Carving 1200x600', 'Marbella Beige', 'GVT', 'IM10062391', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062391_IMSIM1260-MARBELLA-BEIGE-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062391_IMSIM1260-MARBELLA-BEIGE-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(294, 'IMSIM1260-QUIRO Matt & Carving 1200x600', 'Quiro', 'GVT', 'IM10062392', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062392_IMSIM1260-QUIRO-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062392_IMSIM1260-QUIRO-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(295, 'IMSIM1260-RIVA BEIGE Matt & Carving 1200x600', 'Riva Beige', 'GVT', 'IM10062393', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062393_IMSIM1260-RIVA-BEIGE-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062393_IMSIM1260-RIVA-BEIGE-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(296, 'IMSIM1260-RIVA GRIS Matt & Carving 1200x600', 'Riva Gris', 'GVT', 'IM10062394', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062394_IMSIM1260-RIVA-GRIS-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062394_IMSIM1260-RIVA-GRIS-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(297, 'IMSIM1260-SWISS BEIGE Matt & Carving 1200x600', 'Swiss Beige', 'GVT', 'IM10062395', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062395_IMSIM1260-SWISS-BEIGE-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062395_IMSIM1260-SWISS-BEIGE-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(298, 'IMSIM1260-SWISS PEARL Matt & Carving 1200x600', 'Swiss Pearl', 'GVT', 'IM10062396', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062396_IMSIM1260-SWISS-PEARL-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062396_IMSIM1260-SWISS-PEARL-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(299, 'IMSIM1260-VENICE GRIS Matt & Carving 1200x600', 'Venice Gris', 'GVT', 'IM10062397', '2', 'NEW', '', 'Vitrified', '', 'Matt', 'Carving', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062397_IMSIM1260-VENICE-GRIS-Matt-and-Carving-600x1200_GVT.webp', '', 'IM10062397_IMSIM1260-VENICE-GRIS-Matt-and-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(300, 'IMSIM1260-MAJESTIC STATUARIO Special Matt 1200x600', 'Majestic Statuario', 'GVT', 'IM10062398', '2', 'NEW', '', 'Vitrified', '', 'Special Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062398_IMSIM1260-MAJESTIC-STATUARIO-Specia-Matt-600x1200_GVT.webp', '', 'IM10062398_IMSIM1260-MAJESTIC-STATUARIO-Specia-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(301, 'IMSIM1260-VENICE BEIGE Special Matt 1200x600', 'Venice Beige', 'GVT', 'IM10062399', '2', 'NEW', '', 'Vitrified', '', 'Special Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062399_IMSIM1260-VENICE-BEIGE-Special-Matt-600x1200_GVT.webp', '', 'IM10062399_IMSIM1260-VENICE-BEIGE-Special-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(302, 'IMSIM1260-VENICE PEARL Special Matt 1200x600', 'Venice Pearl', 'GVT', 'IM10062400', '2', 'NEW', '', 'Vitrified', '', 'Special Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062400_IMSIM1260-VENICE-PEARL-Special-Matt-600x1200_GVT.webp', '', 'IM10062400_IMSIM1260-VENICE-PEARL-Special-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(303, 'Bilbao Crema Endless 600x1200', 'Bilbao Crema', 'GVT', 'IM10020733', '2', '', '', 'Vitrified', '', '', '', 'Endless', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10020733_Bilbao-Crema-Endless-600x1200_GVT.webp', '', 'IM10020733_Bilbao-Crema-Endless-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(304, 'Almiro White Mg Endless 600x1200', 'Almiro White', 'GVT', 'IM10037690', '2', '', '', 'Vitrified', '', '', '', 'Endless', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037690_Almiro-White-Mg-Endless-600x1200_GVT.webp', '', 'IM10037690_Almiro-White-Mg-Endless-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(305, 'Bilbao Grey Endless 600x1200', 'Bilbao Grey', 'GVT', 'IM10037691', '2', '', '', 'Vitrified', '', '', '', 'Endless', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037691_Bilbao-Grey-Endless-600x1200_GVT.webp', '', 'IM10037691_Bilbao-Grey-Endless-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(306, 'Breccia Rezoni Mg Endless 600x1200', 'Breccia Rezoni', 'GVT', 'IM10037693', '2', '', '', 'Vitrified', '', '', '', 'Endless', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037693_Breccia-Rezoni-Mg-Endless-600x1200_GVT.webp', '', 'IM10037693_Breccia-Rezoni-Mg-Endless-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(307, 'Coreno Royal Mg Endless 600x1200', 'Coreno Royal', 'GVT', 'IM10037695', '2', '', '', 'Vitrified', '', '', '', 'Endless', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037695_Coreno-Royal-Mg-Endless-600x1200_GVT.webp', '', 'IM10037695_Coreno-Royal-Mg-Endless-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(308, 'Elegant Beige Glossy 600x1200', 'Elegant Beige', 'GVT', 'IM10037699', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037699_Elegant-Beige-Glossy-600x1200_GVT.webp', '', 'IM10037699_Elegant-Beige-Glossy-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(309, 'Elegant Grey Glossy 600x1200', 'Elegant Grey', 'GVT', 'IM10037700', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037700_Elegant-Grey-Glossy-600x1200_GVT.webp', '', 'IM10037700_Elegant-Grey-Glossy-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(310, 'Flip Satvario Endless 600x1200', 'Flip Satvario', 'GVT', 'IM10037701', '2', '', '', 'Vitrified', '', '', '', 'Endless', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037701_Flip-Satvario-Endless-600x1200_GVT.webp', '', 'IM10037701_Flip-Satvario-Endless-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(311, 'Harman Beige Mg Endless 600x1200', 'Harman Beige', 'GVT', 'IM10037711', '2', '', '', 'Vitrified', '', '', '', 'Endless', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037711_Harman-Beige-Mg-Endless-600x1200_GVT.webp', '', 'IM10037711_Harman-Beige-Mg-Endless-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(312, 'Kripton Moon Glossy 600x1200', 'Kripton Moon', 'GVT', 'IM10037798', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037798_Kripton-Moon-Glossy-600x1200_GVT.webp', '', 'IM10037798_Kripton-Moon-Glossy-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(313, 'Marlo Cendy Glossy 600x1200', 'Marlo Cendy', 'GVT', 'IM10037813', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037813_Marlo-Cendy-Glossy-600x1200_GVT.webp', '', 'IM10037813_Marlo-Cendy-Glossy-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(314, 'Sabino Onyx Mg Endless 600x1200', 'Sabino Onyx', 'GVT', 'IM10037820', '2', '', '', 'Vitrified', '', '', '', 'Endless', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037820_Sabino-Onyx-Mg-Endless-600x1200_GVT.webp', '', 'IM10037820_Sabino-Onyx-Mg-Endless-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(315, 'Theron Stone Endless 600x1200', 'Theron Stone', 'GVT', 'IM10037826', '2', '', '', 'Vitrified', '', '', '', 'Endless', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037826_Theron-Stone-Endless-600x1200_GVT.webp', '', 'IM10037826_Theron-Stone-Endless-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(316, 'Ariel White Carving 600x1200', 'Ariel White', 'GVT', 'IM10038015', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038015_Ariel-White-Carving-600x1200_GVT.webp', '', 'IM10038015_Ariel-White-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(317, 'Brecia Grey Carving 600x1200', 'Brecia Grey', 'GVT', 'IM10038016', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038016_Brecia-Grey-Carving-600x1200_GVT.webp', '', 'IM10038016_Brecia-Grey-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(318, 'Brecia White Carving 600x1200', 'Brecia White', 'GVT', 'IM10038017', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038017_Brecia-White-Carving-600x1200_GVT.webp', '', 'IM10038017_Brecia-White-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(319, 'Bronze Beige Carving 600x1200', 'Bronze Beige', 'GVT', 'IM10038018', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038018_Bronze-Beige-Carving-600x1200_GVT.webp', '', 'IM10038018_Bronze-Beige-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(320, 'Bronze Bianco Carving 600x1200', 'Bronze Bianco', 'GVT', 'IM10038019', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038019_Bronze-Bianco-Carving-600x1200_GVT.webp', '', 'IM10038019_Bronze-Bianco-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(321, 'Decota Ivory Carving 600x1200', 'Decota Ivory', 'GVT', 'IM10038020', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038020_Decota-Ivory-Carving-600x1200_GVT.webp', '', 'IM10038020_Decota-Ivory-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(322, 'Frido Grey Mg Endless 600x1200', 'Frido Grey', 'GVT', 'IM10038021', '2', '', '', 'Vitrified', '', '', '', 'Endless', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038021_Frido-Grey-Mg-Endless-600x1200_GVT.webp', '', 'IM10038021_Frido-Grey-Mg-Endless-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(323, 'Ketor Bianco Carving 600x1200', 'Ketor Bianco', 'GVT', 'IM10038029', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038029_Ketor-Bianco-Carving-600x1200_GVT.webp', '', 'IM10038029_Ketor-Bianco-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(324, 'Amelia Gris Matt 600x1200', 'Amelia Gris', 'GVT', 'IM10038936', '2', '', '', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038936_Amelia-Gris-Matt-600x1200_GVT.webp', '', 'IM10038936_Amelia-Gris-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(325, 'Ketor Grey Carving 600x1200', 'Ketor Grey', 'GVT', 'IM10038937', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038937_Ketor-Grey-Carving-600x1200_GVT.webp', '', 'IM10038937_Ketor-Grey-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(326, 'Cemento Bianco Matt 600x1200', 'Cemento Bianco', 'GVT', 'IM10038938', '2', '', '', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038938_Cemento-Bianco-Matt-600x1200_GVT.webp', '', 'IM10038938_Cemento-Bianco-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(327, 'Cemento Black Matt 600x1200', 'Cemento Black', 'GVT', 'IM10038939', '2', '', '', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038939_Cemento-Black-Matt-600x1200_GVT.webp', '', 'IM10038939_Cemento-Black-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(328, 'Cemento Gris Matt 600x1200', 'Cemento Gris', 'GVT', 'IM10038940', '2', '', '', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038940_Cemento-Gris-Matt-600x1200_GVT.webp', '', 'IM10038940_Cemento-Gris-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(329, 'Piccaso Black Carving 600x1200', 'Piccaso Black', 'GVT', 'IM10038941', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038941_Piccaso-Black-Carving-600x1200_GVT.webp', '', 'IM10038941_Piccaso-Black-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(330, 'Piccaso White Carving 600x1200', 'Piccaso White', 'GVT', 'IM10038943', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038943_Piccaso-White-Carving-600x1200_GVT.webp', '', 'IM10038943_Piccaso-White-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(331, 'Robert Crema Matt 600x1200', 'Robert Crema', 'GVT', 'IM10038944', '2', '', '', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038944_Robert-Crema-Matt-600x1200_GVT.webp', '', 'IM10038944_Robert-Crema-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(332, 'Natalia Green Matt 600x1200', 'Natalia Green', 'GVT', 'IM10038945', '2', '', '', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038945_Natalia-Green-Matt-600x1200_GVT.webp', '', 'IM10038945_Natalia-Green-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(333, 'Stella Bianco Carving 600x1200', 'Stella Bianco', 'GVT', 'IM10038946', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038946_Stella-Bianco-Carving-600x1200_GVT.webp', '', 'IM10038946_Stella-Bianco-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(334, 'BLUE STONE GREY', 'BLUE STONE GREY', 'GVT', 'IM10017640', '2', '', '', 'Vitrified', '', 'GVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017640_BLUE-STONE-GREY_GVT.webp', '', 'IM10017640_BLUE-STONE-GREY_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(335, 'CEMENTINO ASH', 'CEMENTINO ASH', 'GVT', 'IM10017647', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017647_CEMENTINO-ASH_GVT.webp', '', 'IM10017647_CEMENTINO-ASH_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(336, 'FUSION BIANCO', 'FUSION BIANCO', 'GVT', 'IM10017657', '2', '', '', 'Vitrified', '', 'GVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '15.5 sq.ft', '28 kg', ''),
(337, 'FUSION GREY', 'FUSION GREY', 'GVT', 'IM10017658', '2', '', '', 'Vitrified', '', 'GVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017658_FUSION-GREY_GVT.webp', '', 'IM10017658_FUSION-GREY_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(338, 'MOLIER BIANCO\\\'', 'MOLIER BIANCO\\\'', 'GVT', 'IM10017666', '2', '', '', 'Vitrified', '', 'GVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017666_MOLIER-BIANCO_GVT.webp', '', 'IM10017666_MOLIER-BIANCO_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(339, 'MOLIER GREY', 'MOLIER GREY', 'GVT', 'IM10017667', '2', '', '', 'Vitrified', '', 'GVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017667_MOLIER-GREY_GVT.webp', '', 'IM10017667_MOLIER-GREY_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(340, 'CEMENTINO NERO', 'CEMENTINO NERO', 'GVT', 'IM10017668', '2', '', '', 'Vitrified', '', 'GVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017668_CEMENTINO-NERO_GVT.webp', '', 'IM10017668_CEMENTINO-NERO_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(341, 'AACUTE WHITE', 'AACUTE WHITE', 'GVT', 'IM10037689', '2', '', '', 'Vitrified', '', 'GVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10037689_AACUTE-WHITE_GVT.webp', '', 'IM10037689_AACUTE-WHITE_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(342, 'AACUTE GREY', 'AACUTE GREY', 'GVT', 'IM10017633', '2', '', '', 'Vitrified', '', 'GVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017633_AACUTE-GREY_GVT.webp', '', 'IM10017633_AACUTE-GREY_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(343, 'TIMBER WOOD SISAM', 'TIMBER WOOD SISAM', 'GVT', 'IM10017678', '2', '', '', 'Vitrified', '', 'GVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017678_TIMBER-WOOD-SISAM_GVT.webp', '', 'IM10017678_TIMBER-WOOD-SISAM_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(344, 'PULPIS ROSALIA', 'PULPIS ROSALIA', 'GVT', 'IM10017669', '2', '', '', 'Vitrified', '', 'S.GLOSS', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017669_PULPIS-ROSALIA_GVT.webp', '', 'IM10017669_PULPIS-ROSALIA_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(345, 'TERRAZO WHITE', 'TERRAZO WHITE', 'GVT', 'IM10017669', '2', '', '', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017669_TERRAZO-WHITE_GVT.webp', '', 'IM10017669_TERRAZO-WHITE_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(346, 'CLASSIC DYNA', 'CLASSIC DYNA', 'GVT', 'IM10017649', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017649_CLASSIC-DYNA_GVT.webp', '', 'IM10017649_CLASSIC-DYNA_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(347, 'QUANTIUM PULPIS GREY', 'QUANTIUM PULPIS GREY', 'GVT', 'IM10017671', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017671_QUANTIUM-PULPIS-GREY_GVT.webp', '', 'IM10017671_QUANTIUM-PULPIS-GREY_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(348, 'ROMAN SILVER', 'ROMAN SILVER', 'GVT', 'IM10017673', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017673_ROMAN-SILVER_GVT.webp', '', 'IM10017673_ROMAN-SILVER_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(349, 'DYNA BEIGE', 'DYNA BEIGE', 'GVT', 'IM10017654', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017654_DYNA-BEIGE_GVT.webp', '', 'IM10017654_DYNA-BEIGE_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(350, 'OCHRA MOON BEIGE', 'OCHRA MOON BEIGE', 'GVT', 'IM10000241', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10000241_OCHRA-MOON-BEIGE_GVT.webp', '', 'IM10000241_OCHRA-MOON-BEIGE_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(351, 'TRAVERTINO GOLD', 'TRAVERTINO GOLD', 'GVT', 'IM10000242', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10000242_TRAVERTINO-GOLD_GVT.webp', '', 'IM10000242_TRAVERTINO-GOLD_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(352, 'ASTRON BEIGE', 'ASTRON BEIGE', 'GVT', 'IM10017636', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017636_ASTRON-BEIGE_GVT.webp', '', 'IM10017636_ASTRON-BEIGE_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(353, 'ASTRON GRIS', 'ASTRON GRIS', 'GVT', 'IM10017638', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017638_ASTRON-GRIS_GVT.webp', '', 'IM10017638_ASTRON-GRIS_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(354, 'STATUARIO BRILLIANT', 'STATUARIO BRILLIANT', 'GVT', 'IM10017642', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017642_STATUARIO-BRILLIANT_GVT.webp', '', 'IM10017642_STATUARIO-BRILLIANT_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(355, 'CARRARA GREY NEW', 'CARRARA GREY NEW', 'GVT', 'IM10017645', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017645_CARRARA-GREY-NEW_GVT.webp', '', 'IM10017645_CARRARA-GREY-NEW_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(356, 'LAHN MARFIL', 'LAHN MARFIL', 'GVT', 'IM10017660', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017660_LAHN-MARFIL_GVT.webp', '', 'IM10017660_LAHN-MARFIL_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(357, 'VELSA BEIGE', 'VELSA BEIGE', 'GVT', 'IM10017681', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017681_VELSA-BEIGE_GVT.webp', '', 'IM10017681_VELSA-BEIGE_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(358, 'CREMA MARFIL', 'CREMA MARFIL', 'GVT', 'IM10017650', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017650_CREMA-MARFIL_GVT.webp', '', 'IM10017650_CREMA-MARFIL_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(359, 'QUANTUM PULPIS BEIGE', 'QUANTUM PULPIS BEIGE', 'GVT', 'IM10017670', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017670_QUANTUM-PULPIS-BEIGE_GVT.webp', '', 'IM10017670_QUANTUM-PULPIS-BEIGE_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(360, 'BUXY BLACK', 'BUXY BLACK', 'GVT', 'IM10017644', '2', '', '', 'Vitrified', '', 'S.GLOSS', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017644_BUXY-BLACK_GVT.webp', '', 'IM10017644_BUXY-BLACK_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(361, 'LISTELO CREMA', 'LISTELO CREMA', 'GVT', 'IM10017663', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017663_LISTELO-CREMA_GVT.webp', '', 'IM10017663_LISTELO-CREMA_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(362, 'CIMENTO BIANCO', 'CIMENTO BIANCO', 'GVT', 'IM10038938', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10038938_Cemento-Bianco-Matt-600x1200_GVT.webp', '', 'IM10038938_Cemento-Bianco-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(363, 'LORIYA CREAM', 'LORIYA CREAM', 'GVT', 'IM10017664', '2', '', '', 'Vitrified', '', 'PGVT', '', '', '600x1200', 'Floor Tiles', '', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10017664_LORIYA-CREAM_GVT.webp', '', 'IM10017664_LORIYA-CREAM_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(364, 'IM SIX-ABCO 1200x600', 'Abco', 'GVT', 'IM10061820', '2', 'NEW', 'IM10SIN126027', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061820_IM-SIX-ABCO-600x1200_GVT.webp', '', 'IM10061820_IM-SIX-ABCO-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(365, 'IM SIX-ALCO 1200x600', 'Alco', 'GVT', 'IM10061821', '2', 'NEW', 'IM10SIN126028', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061821_IM-SIX-ALCO-600x1200_GVT.webp', '', 'IM10061821_IM-SIX-ALCO-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(366, 'IM SIX-BRE BG 1200x600', 'Brecia Beige', 'GVT', 'IM10061822', '2', 'NEW', 'IM10SIN126029', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061822_IM-SIX-BRE-BG-600x1200_GVT.webp', '', 'IM10061822_IM-SIX-BRE-BG-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(367, 'IM SIX-BRI WO 1200x600', 'Brilliant White Onyx', 'GVT', 'IM10061823', '2', 'NEW', 'IM10SIN126030', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061823_IM-SIX-BRI-WO-600x1200_GVT.webp', '', 'IM10061823_IM-SIX-BRI-WO-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(368, 'IM SIX-ERT NA 1200x600', 'Earthstone Natural', 'GVT', 'IM10061824', '2', 'NEW', 'IM10SIN126031', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061824_IM-SIX-ERT-NA-600x1200_GVT.webp', '', 'IM10061824_IM-SIX-ERT-NA-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(369, 'IM SIX-ERT WT 1200x600', 'Earthstone White', 'GVT', 'IM10061825', '2', 'NEW', 'IM10SIN126032', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061825_IM-SIX-ERT-WT-600x1200_GVT.webp', '', 'IM10061825_IM-SIX-ERT-WT-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(370, 'IM SIX-FLIC GR 1200x600', 'Flicker Grey', 'GVT', 'IM10061826', '2', 'NEW', 'IM10SIN126033', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061826_IM-SIX-FLIC-GR-600x1200_GVT.webp', '', 'IM10061826_IM-SIX-FLIC-GR-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(371, 'IM SIX-LEO CA 1200x600', 'Leonardo Carrara', 'GVT', 'IM10061827', '2', 'NEW', 'IM10SIN126034', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061827_IM-SIX-LEO-CA-600x1200_GVT.webp', '', 'IM10061827_IM-SIX-LEO-CA-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(372, 'IM SIX-MI IM 1200x600', 'Mirelia Impex', 'GVT', 'IM10061828', '2', 'NEW', 'IM10SIN126035', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061828_IM-SIX-MI-IM-600x1200_GVT.webp', '', 'IM10061828_IM-SIX-MI-IM-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(373, 'IM SIX-ONY WT 1200x600', 'Onxy Pearl White', 'GVT', 'IM10061829', '2', 'NEW', 'IM10SIN126036', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061829_IM-SIX-ONY-WT-600x1200_GVT.webp', '', 'IM10061829_IM-SIX-ONY-WT-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(374, 'IM SIX-RAP GT 1200x600', 'Raphel Gent', 'GVT', 'IM10061830', '2', 'NEW', 'IM10SIN126037', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061830_IM-SIX-RAP-GT-600x1200_GVT.webp', '', 'IM10061830_IM-SIX-RAP-GT-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(375, 'IM SIX-ROS G 1200x600', 'Rosso Grey', 'GVT', 'IM10061831', '2', 'NEW', 'IM10SIN126038', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061831_IM-SIX-ROS-G-600x1200_GVT.webp', '', 'IM10061831_IM-SIX-ROS-G-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(376, 'IM SIX-ROS S 1200x600', 'Rosso Silver', 'GVT', 'IM10061832', '2', 'NEW', 'IM10SIN126039', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061832_IM-SIX-ROS-S-600x1200_GVT.webp', '', 'IM10061832_IM-SIX-ROS-S-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(377, 'IM SIX-SNO WT 1200x600', 'Snow White', 'GVT', 'IM10061833', '2', 'NEW', 'IM10SIN126040', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061833_IM-SIX-SNO-WT-600x1200_GVT.webp', '', 'IM10061833_IM-SIX-SNO-WT-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(378, 'IM SIX-VALT BG 1200x600', 'Valtini Beige', 'GVT', 'IM10061834', '2', 'NEW', 'IM10SIN126041', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061834_IM-SIX-VALT-BG-600x1200_GVT.webp', '', 'IM10061834_IM-SIX-VALT-BG-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(379, 'IM SIX-WAL GER 1200x600', 'Walker Zanger', 'GVT', 'IM10061835', '2', 'NEW', 'IM10SIN126042', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061835_IM-SIX-WAL-GER-600x1200_GVT.webp', '', 'IM10061835_IM-SIX-WAL-GER-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(380, 'IM SIX-BRI IO 1200x600', 'Brilliant Ice Onyx', 'GVT', 'IM10061836', '2', 'NEW', 'IM10SIN126043', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061836_IM-SIX-BRI-IO-600x1200_GVT.webp', '', 'IM10061836_IM-SIX-BRI-IO-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(381, 'IM SIX-DO GR 1200x600', 'Dove Grey', 'GVT', 'IM10061837', '2', 'NEW', 'IM10SIN126044', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061837_IM-SIX-DO-GR-600x1200_GVT.webp', '', 'IM10061837_IM-SIX-DO-GR-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(382, 'IM SIX-DO WH 1200x600', 'Dove White', 'GVT', 'IM10061838', '2', 'NEW', 'IM10SIN126045', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061838_IM-SIX-DO-WH-600x1200_GVT.webp', '', 'IM10061838_IM-SIX-DO-WH-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(383, 'IM SIX-EAR SL 1200x600', 'Earth Slice Onyx', 'GVT', 'IM10061839', '2', 'NEW', 'IM10SIN126046', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061839_IM-SIX-EAR-SL-600x1200_GVT.webp', '', 'IM10061839_IM-SIX-EAR-SL-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(384, 'IM SIX-EL-ALE CO 1200x600', 'EL Aleut Bianco', 'GVT', 'IM10061840', '2', 'NEW', 'IM10SIN126047', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061840_IM-SIX-EL-ALE-CO-600x1200_GVT.webp', '', 'IM10061840_IM-SIX-EL-ALE-CO-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(385, 'IM SIX-EL-BOTT EY 1200x600', 'EL Bottochino Grey', 'GVT', 'IM10061841', '2', 'NEW', 'IM10SIN126048', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061841_IM-SIX-EL-BOTT-EY-600x1200_GVT.webp', '', 'IM10061841_IM-SIX-EL-BOTT-EY-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(386, 'IM SIX-EL-OPTI CO 1200x600', 'EL Optico Bianco', 'GVT', 'IM10061842', '2', 'NEW', 'IM10SIN126049', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061842_IM-SIX-EL-OPTI-CO-600x1200_GVT.webp', '', 'IM10061842_IM-SIX-EL-OPTI-CO-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(387, 'IM SIX-EL-OPTI MA 1200x600', 'EL Optical Crema', 'GVT', 'IM10061843', '2', 'NEW', 'IM10SIN126050', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061843_IM-SIX-EL-OPTI-MA-600x1200_GVT.webp', '', 'IM10061843_IM-SIX-EL-OPTI-MA-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', '');
INSERT INTO `tiles` (`product_id`, `product_name`, `tile_name`, `category`, `im_code`, `packing`, `sku_type`, `vsku_code`, `base_material`, `colour`, `finish`, `finish_one`, `style`, `size`, `application`, `application_one`, `application_areas`, `application_areas_one`, `application_areas_two`, `application_areas_three`, `application_areas_four`, `application_areas_five`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`, `area_per_box`, `weight_per_box`, `ambience_view`) VALUES
(388, 'IM SIX-FRE RE 1200x600', 'French Red', 'GVT', 'IM10061844', '2', 'NEW', 'IM10SIN126051', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061844_IM-SIX-FRE-RE-600x1200_GVT.webp', '', 'IM10061844_IM-SIX-FRE-RE-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(389, 'IM SIX-ON RU 1200x600', 'Onyx Ruby', 'GVT', 'IM10061845', '2', 'NEW', 'IM10SIN126052', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061845_IM-SIX-ON-RU-600x1200_GVT.webp', '', 'IM10061845_IM-SIX-ON-RU-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(390, 'IM SIX-RIO 1200x600', 'Rio Onyx', 'GVT', 'IM10061846', '2', 'NEW', 'IM10SIN126053', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061846_IM-SIX-RIO-600x1200_GVT.webp', '', 'IM10061846_IM-SIX-RIO-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(391, 'IM SIX-ROM GR 1200x600', 'Romantic Statuario Grey', 'GVT', 'IM10061847', '2', 'NEW', 'IM10SIN126054', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061847_IM-SIX-ROM-GR-600x1200_GVT.webp', '', 'IM10061847_IM-SIX-ROM-GR-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(392, 'IM SIX-TRA BE 1200x600', 'Traventine Beige', 'GVT', 'IM10061848', '2', 'NEW', 'IM10SIN126055', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061848_IM-SIX-TRA-BE-600x1200_GVT.webp', '', 'IM10061848_IM-SIX-TRA-BE-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(393, 'IM SIX-TRO CR 1200x600', 'Tropica Crema', 'GVT', 'IM10061849', '2', 'NEW', 'IM10SIN126056', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061849_IM-SIX-TRO-CR-600x1200_GVT.webp', '', 'IM10061849_IM-SIX-TRO-CR-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(394, 'IM SIX-TRO WH 1200x600', 'Tropica White', 'GVT', 'IM10061850', '2', 'NEW', 'IM10SIN126057', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061850_IM-SIX-TRO-WH-600x1200_GVT.webp', '', 'IM10061850_IM-SIX-TRO-WH-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(395, 'IM SIX-VAN BIA 1200x600', 'Vanilia Bianco', 'GVT', 'IM10061851', '2', 'NEW', 'IM10SIN126058', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061851_IM-SIX-VAN-BIA-600x1200_GVT.webp', '', 'IM10061851_IM-SIX-VAN-BIA-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(396, 'IM SIX-YE CR 1200x600', 'Yeld Crema', 'GVT', 'IM10061852', '2', 'NEW', 'IM10SIN126059', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061852_IM-SIX-YE-CR-600x1200_GVT.webp', '', 'IM10061852_IM-SIX-YE-CR-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(397, 'IM SIX-ART FG Carving 1200x600', 'Art Fluo Grey', 'GVT', 'IM10061853', '2', 'NEW', 'IM10SIN126060', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061853_IM-SIX-ART-FG-Carving-600x1200_GVT.webp', '', 'IM10061853_IM-SIX-ART-FG-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(398, 'IM SIX-ART FW Carving 1200x600', 'Art Flou White', 'GVT', 'IM10061854', '2', 'NEW', 'IM10SIN126061', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061854_IM-SIX-ART-FW-Carving-600x1200_GVT.webp', '', 'IM10061854_IM-SIX-ART-FW-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(399, 'IM SIX-DAK DE Carving 1200x600', 'Dakota Décor', 'GVT', 'IM10061855', '2', 'NEW', 'IM10SIN126062', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061855_IM-SIX-DAK-DE-Carving-600x1200_GVT.webp', '', 'IM10061855_IM-SIX-DAK-DE-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(400, 'IM SIX-EL-SMO OLD Carving 1200x600', 'EL Smog Gold', 'GVT', 'IM10061856', '2', 'NEW', 'IM10SIN126063', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061856_IM-SIX-EL-SMO-OLD-Carving-600x1200_GVT.webp', '', 'IM10061856_IM-SIX-EL-SMO-OLD-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(401, 'IM SIX-EL-SMO RIS Carving 1200x600', 'EL Smog Gris', 'GVT', 'IM10061857', '2', 'NEW', 'IM10SIN126064', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061857_IM-SIX-EL-SMO-RIS-Carving-600x1200_GVT.webp', '', 'IM10061857_IM-SIX-EL-SMO-RIS-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(402, 'IM SIX-FL TTO Carving 1200x600', 'Flora Cotto', 'GVT', 'IM10061858', '2', 'NEW', 'IM10SIN126065', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061858_IM-SIX-FL-TTO-Carving-600x1200_GVT.webp', '', 'IM10061858_IM-SIX-FL-TTO-Carving-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(403, 'IM SIX-FRA MA Matt 1200x600', 'Franco Manca', 'GVT', 'IM10061859', '2', 'NEW', 'IM10SIN126066', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061859_IM-SIX-FRA-MA-Matt-600x1200_GVT.webp', '', 'IM10061859_IM-SIX-FRA-MA-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(404, 'IM SIX-LISB DE Matt 1200x600', 'Lisbon Décor', 'GVT', 'IM10061860', '2', 'NEW', 'IM10SIN126067', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061860_IM-SIX-LISB-DE-Matt-600x1200_GVT.webp', '', 'IM10061860_IM-SIX-LISB-DE-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(405, 'IM SIX-ORI DE Matt 1200x600', 'Oriental Décor', 'GVT', 'IM10061861', '2', 'NEW', 'IM10SIN126068', 'Vitrified', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061861_IM-SIX-ORI-DE-Matt-600x1200_GVT.webp', '', 'IM10061861_IM-SIX-ORI-DE-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(406, 'IM SIX-AND GE Matt 1200x600', 'Andalus Beige', 'GVT', 'IM10061862', '2', 'NEW', 'IM10SIN126069', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061862_IM-SIX-AND-GE-Matt-600x1200_GVT.webp', '', 'IM10061862_IM-SIX-AND-GE-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(407, 'IM SIX-DAKO BL Matt 1200x600', 'Dakota Black', 'GVT', 'IM10061863', '2', 'NEW', 'IM10SIN126070', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061863_IM-SIX-DAKO-BL-Matt-600x1200_GVT.webp', '', 'IM10061863_IM-SIX-DAKO-BL-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(408, 'IM SIX-DEN GR Matt 1200x600', 'Denim Green', 'GVT', 'IM10061864', '2', 'NEW', 'IM10SIN126071', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061864_IM-SIX-DEN-GR-Matt-600x1200_GVT.webp', '', 'IM10061864_IM-SIX-DEN-GR-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(409, 'IM SIX-DEN MA Matt 1200x600', 'Denim Mauva', 'GVT', 'IM10061865', '2', 'NEW', 'IM10SIN126072', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061865_IM-SIX-DEN-MA-Matt-600x1200_GVT.webp', '', 'IM10061865_IM-SIX-DEN-MA-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(410, 'IM SIX-GRU BR Matt 1200x600', 'Grunge Brown', 'GVT', 'IM10061866', '2', 'NEW', 'IM10SIN126073', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061866_IM-SIX-GRU-BR-Matt-600x1200_GVT.webp', '', 'IM10061866_IM-SIX-GRU-BR-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(411, 'IM SIX-LIS LI Matt 1200x600', 'Lisbon Light', 'GVT', 'IM10061867', '2', 'NEW', 'IM10SIN126074', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061867_IM-SIX-LIS-LI-Matt-600x1200_GVT.webp', '', 'IM10061867_IM-SIX-LIS-LI-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(412, 'IM SIX-LOVE AS Matt 1200x600', 'Lovely Ash', 'GVT', 'IM10061868', '2', 'NEW', 'IM10SIN126075', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061868_IM-SIX-LOVE-AS-Matt-600x1200_GVT.webp', '', 'IM10061868_IM-SIX-LOVE-AS-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(413, 'IM SIX-LOVE MA Matt 1200x600', 'Lovely Maroan', 'GVT', 'IM10061869', '2', 'NEW', 'IM10SIN126076', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061869_IM-SIX-LOVE-MA-Matt-600x1200_GVT.webp', '', 'IM10061869_IM-SIX-LOVE-MA-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(414, 'IM SIX-ORI BL Matt 1200x600', 'Oriental Blue', 'GVT', 'IM10061870', '2', 'NEW', 'IM10SIN126077', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061870_IM-SIX-ORI-BL-Matt-600x1200_GVT.webp', '', 'IM10061870_IM-SIX-ORI-BL-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(415, 'IM SIX-SCE CR Matt 1200x600', 'Scenic Crema', 'GVT', 'IM10061871', '2', 'NEW', 'IM10SIN126078', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061871_IM-SIX-SCE-CR-Matt-600x1200_GVT.webp', '', 'IM10061871_IM-SIX-SCE-CR-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(416, 'IM SIX-SCE SK Matt 1200x600', 'Scenic Sky', 'GVT', 'IM10061872', '2', 'NEW', 'IM10SIN126079', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061872_IM-SIX-SCE-SK-Matt-600x1200_GVT.webp', '', 'IM10061872_IM-SIX-SCE-SK-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(417, 'IM SIX-SCE WH Matt 1200x600', 'Scenic White', 'GVT', 'IM10061873', '2', 'NEW', 'IM10SIN126080', 'Vitrified', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10061873_IM-SIX-SCE-WH-Matt-600x1200_GVT.webp', '', 'IM10061873_IM-SIX-SCE-WH-Matt-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(418, 'Six-Zavier Grey Polished 1200x600', 'Zavier Grey', 'GVT', 'IM10062630', '2', 'NEW', 'IM10SIN126080', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062630_Six-Zavier-Grey-Polished-600x1200_GVT.webp', '', 'IM10062630_Six-Zavier-Grey-Polished-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(419, 'Six-Zavier Beige Polished 1200x600', 'Zavier Beige', 'GVT', 'IM10062631', '2', 'NEW', 'IM10SIN126080', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062631_Six-Zavier-Beige-Polished-600x1200_GVT.webp', '', 'IM10062631_Six-Zavier-Beige-Polished-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(420, 'Six-Petrous Beige Polished 1200x600', 'Petrous Beige', 'GVT', 'IM10062632', '2', 'NEW', 'IM10SIN126080', 'Vitrified', '', 'Polished', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/600x1200/', 'IM10062632_Six-Petrous-Beige-Polished-600x1200_GVT.webp', '', 'IM10062632_Six-Petrous-Beige-Polished-600x1200_GVT.webp', '1', '15.5 sq.ft', '28 kg', ''),
(421, 'Wooden Plank 4001 N 200x1200', '4001 N', 'GVT', 'IM10012392', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/200x1200/', 'IM10012392_Wooden-Plank-4001-N-200X1200_GVT.webp', '', 'IM10012392_Wooden-Plank-4001-N-200x1200_GVT.webp', '1', '13 sq.ft', '27 kg', ''),
(422, 'Wooden Plank 4007 D 200x1200', '4007 D', 'GVT', 'IM10012393', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/200x1200/', 'IM10012393_Wooden-Plank-4007-D-200X1200_GVT.webp', '', 'IM10012393_Wooden-Plank-4007-D-200X1200_GVT.webp', '1', '13 sq.ft', '27 kg', ''),
(423, 'Wooden Plank 4015 D 200x1200', '4015 D', 'GVT', 'IM10012394', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/200x1200/', 'IM10012394_Wooden-Plank-4015-D-200X1200_GVT.webp', '', 'IM10012394_Wooden-Plank-4015-D-200X1200_GVT.webp', '1', '13 sq.ft', '27 kg', ''),
(424, 'Wooden Plank 4018 D 200x1200', '', 'GVT', 'IM10012395', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '13 sq.ft', '27 kg', ''),
(425, 'Wooden Plank 4024 D 200x1200', '4024 D', 'GVT', 'IM10012396', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/200x1200/', 'IM10012396_Wooden-Plank-4024-D-200X1200_GVT.webp', '', 'IM10012396_Wooden-Plank-4024-D-200X1200_GVT.webp', '1', '13 sq.ft', '27 kg', ''),
(426, 'Wooden Plank 4026 D 200x1200', '', 'GVT', 'IM10012397', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '13 sq.ft', '27 kg', ''),
(427, 'Wooden Plank 5003 D 200x1200', '5003 D', 'GVT', 'IM10012398', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '13 sq.ft', '27 kg', ''),
(428, 'Wooden Plank 5013 D 200x1200', '', 'GVT', 'IM10012399', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '13 sq.ft', '27 kg', ''),
(429, 'Wooden Plank 5015 D 200x1200', '5015 D', 'GVT', 'IM10012400', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/200x1200/', 'IM10012400_Wooden-Plank-5015-D-200x1200_GVT.webp', '', 'IM10012400_Wooden-Plank-5015-D-200x1200_GVT.webp', '1', '13 sq.ft', '27 kg', ''),
(430, 'Wooden Plank 5017 D 200x1200', '5017 D', 'GVT', 'IM10012401', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/200x1200/', 'IM10012401_Wooden-Plank-5017-D-200x1200_GVT.webp', '', 'IM10012401_Wooden-Plank-5017-D-200x1200_GVT.webp', '1', '13 sq.ft', '27 kg', ''),
(431, 'Wooden Plank 5022 N 200x1200', '5022 N', 'GVT', 'IM10012402', '5', '', '', 'Vitrified', '', 'Matt', '', '', '200x1200', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', '', '', '', 'products/tiles/gvt/200x1200/', 'IM10012402_Wooden-Plank-5022-N-200x1200_GVT.webp', '', 'IM10012402_Wooden-Plank-5022-N-200x1200_GVT.webp', '1', '13 sq.ft', '27 kg', ''),
(432, 'IM BRAZILIAN LAND 1200x1800', 'Brazillian Land', 'GVT Slabs - Grandoise', 'IM10061670', '2', 'NEW', '', 'Vitrified', '', 'Canvas Carving', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061670_IM-BRAZILIAN-LAND-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/BRAZILIAN_LAND/index.htm', 'IM10061670_IM-BRAZILIAN-LAND-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(433, 'IM CYEDRELA PAM 1200x1800', 'Cydrela Pam', 'GVT Slabs - Grandoise', 'IM10061671', '2', 'NEW', '', 'Vitrified', '', 'Canvas Carving', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061671_IM-CYEDRELA-PAM-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/CYEDRELA_PAM/index.htm', 'IM10061671_IM-CYEDRELA-PAM-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(434, 'IM ICE LAND PORTIGO 1200x1800', 'Ice Land Portigo', 'GVT Slabs - Grandoise', 'IM10061672', '2', 'NEW', '', 'Vitrified', '', 'Canvas Carving', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061672_IM-ICE-LAND-PORTIGO-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/ICE_LAND_PORTIGO/index.htm', 'IM10061672_IM-ICE-LAND-PORTIGO-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(435, 'IM MONTECARLO 1200x1800', 'Montercarlo', 'GVT Slabs - Grandoise', 'IM10061673', '2', 'NEW', '', 'Vitrified', '', 'Canvas Carving', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061673_IM-MONTECARLO-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/MONTECARLO/index.htm', 'IM10061673_IM-MONTECARLO-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(436, 'IM TERRESHA 1200x1800', 'Terrersha', 'GVT Slabs - Grandoise', 'IM10061674', '2', 'NEW', '', 'Vitrified', '', 'Canvas Carving', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061674_IM-TERRESHA-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/TERRESHA/index.htm', 'IM10061674_IM-TERRESHA-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(437, 'IM VIVASTA 1200x1800', 'Vivasta', 'GVT Slabs - Grandoise', 'IM10061675', '2', 'NEW', '', 'Vitrified', '', 'Canvas Carving', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061675_IM-VIVASTA-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/VIVASTA/index.htm', 'IM10061675_IM-VIVASTA-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(438, 'IM CALCATTA ONYX MARBLE 1200x1800', 'Calcatta Onyx Marble', 'GVT Slabs - Grandoise', 'IM10061676', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061676_IM-CALCATTA-ONYX-MARBLE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/CALCATTA_ONYX_MARBLE/index.htm', 'IM10061676_IM-CALCATTA-ONYX-MARBLE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(439, 'IM CALIFONIA GREY 1200x1800', 'Califonia Grey', 'GVT Slabs - Grandoise', 'IM10061677', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061677_IM-CALIFONIA-GREY-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/CALIFONIA_GREY/index.htm', 'IM10061677_IM-CALIFONIA-GREY-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(440, 'IM CMYK MARBLE 1200x1800', 'Cmyk Marble', 'GVT Slabs - Grandoise', 'IM10061678', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061678_IM-CMYK-MARBLE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/CMYK_MARBLE/index.htm', 'IM10061678_IM-CMYK-MARBLE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(441, 'IM CR MARBLE 1200x1800', 'Cr Marble', 'GVT Slabs - Grandoise', 'IM10061679', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061679_IM-CR-MARBLE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/CR_MARBLE/index.htm', 'IM10061679_IM-CR-MARBLE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(442, 'IM FILIPINE MARBLE 1200x1800', 'Filipine Marble', 'GVT Slabs - Grandoise', 'IM10061680', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061680_IM-FILIPINE-MARBLE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/FILIPINE_MARBLE/index.htm', 'IM10061680_IM-FILIPINE-MARBLE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(443, 'IM MAGNUM WHITE MARBLE 1200x1800', 'Magnum White Marble', 'GVT Slabs - Grandoise', 'IM10061681', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061681_IM-MAGNUM-WHITE-MARBLE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/MAGNUM_WHITE_MARBLE/index.htm', 'IM10061681_IM-MAGNUM-WHITE-MARBLE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(444, 'IM PEARL ONYX MARBLE 1200x1800', 'Pearl Onyx Marble', 'GVT Slabs - Grandoise', 'IM10061682', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061682_IM-PEARL-ONYX-MARBLE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/PEARL_ONYX_MARBLE/index.htm', 'IM10061682_IM-PEARL-ONYX-MARBLE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(445, 'IM PK MARBLE 1200x1800', 'Pk Marble', 'GVT Slabs - Grandoise', 'IM10061683', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061683_IM-PK-MARBLE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/PK_MARBLE/index.htm', 'IM10061683_IM-PK-MARBLE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(446, 'IM SILICON MARBLE 1200x1800', 'Silicon Marble', 'GVT Slabs - Grandoise', 'IM10061684', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061684_IM-SILICON-MARBLE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/SILICON_MARBLE/index.htm', 'IM10061684_IM-SILICON-MARBLE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(447, 'IM SWISS MARBLE 1200x1800', 'Swiss Marble', 'GVT Slabs - Grandoise', 'IM10061685', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061685_IM-SWISS-MARBLE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/SWISS_MARBLE/index.htm', 'IM10061685_IM-SWISS-MARBLE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(448, 'IM TAXESS MARBLE 1200x1800', 'Taxess Marble', 'GVT Slabs - Grandoise', 'IM10061686', '2', 'NEW', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061686_IM-TAXESS-MARBLE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/TAXESS_MARBLE/index.htm', 'IM10061686_IM-TAXESS-MARBLE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(449, 'IM BLUE ELECTRO 1200x1800', 'Blue Electro', 'GVT Slabs - Grandoise', 'IM10061687', '2', 'NEW', '', 'Vitrified', '', 'High Gloss', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061687_IM-BLUE-ELECTRO-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/BLUE_ELECTRO/index.htm', 'IM10061687_IM-BLUE-ELECTRO-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(450, 'IM DIVINE DEPTH 1200x1800', 'Divine Depth', 'GVT Slabs - Grandoise', 'IM10061688', '2', 'NEW', '', 'Vitrified', '', 'High Gloss', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061688_IM-DIVINE-DEPTH-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/DIVINE_DEPTH/index.htm', 'IM10061688_IM-DIVINE-DEPTH-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(451, 'IM SPIDER NET 1200x1800', 'Spider Net', 'GVT Slabs - Grandoise', 'IM10061689', '2', 'NEW', '', 'Vitrified', '', 'High Gloss', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061689_IM-SPIDER-NET-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/SPIDER_NET/index.htm', 'IM10061689_IM-SPIDER-NET-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(452, 'IM DELFI WHITE 1200x1800', 'Delfi White', 'GVT Slabs - Grandoise', 'IM10061690', '2', 'NEW', '', 'Vitrified', '', 'High Crown', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061690_IM-DELFI-WHITE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/DELFI_WHITE/index.htm', 'IM10061690_IM-DELFI-WHITE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(453, 'IM DENVAR 1200x1800', 'Denvar', 'GVT Slabs - Grandoise', 'IM10061691', '2', 'NEW', '', 'Vitrified', '', 'High Crown', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061691_IM-DENVAR-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/DENVAR/index.htm', 'IM10061691_IM-DENVAR-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(454, 'IM MARIAM PLAZA 1200x1800', 'Mariam Plaza', 'GVT Slabs - Grandoise', 'IM10061692', '2', 'NEW', '', 'Vitrified', '', 'High Crown', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061692_IM-MARIAM-PLAZA-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/MARIAM_PLAZA/index.htm', 'IM10061692_IM-MARIAM-PLAZA-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(455, 'IM MIAMI 1200x1800', 'Miami', 'GVT Slabs - Grandoise', 'IM10061693', '2', 'NEW', '', 'Vitrified', '', 'High Crown', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061693_IM-MIAMI-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/MIAMI/index.htm', 'IM10061693_IM-MIAMI-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(456, 'IM POLO CANDY 1200x1800', 'Polo Candy', 'GVT Slabs - Grandoise', 'IM10061694', '2', 'NEW', '', 'Vitrified', '', 'High Crown', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061694_IM-POLO-CANDY-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/POLO_CANDY/index.htm', 'IM10061694_IM-POLO-CANDY-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(457, 'IM POLO ICE 1200x1800', 'Polo Ice', 'GVT Slabs - Grandoise', 'IM10061695', '2', 'NEW', '', 'Vitrified', '', 'High Crown', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10061695_IM-POLO-ICE-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/POLO_ICE/index.htm', 'IM10061695_IM-POLO-ICE-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(458, 'Ash Ford Beige Light 1200x1800', 'Ford Beige', 'GVT Slabs - Grandoise', 'IM10014004', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10014004_Ash-Ford-Beige-Light-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/ASHFORD_BEIGE/index.htm', 'IM10014004_Ash-Ford-Beige-Light-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(459, 'Ash Ford Bianco 1200x1800', 'Ford Bianco', 'GVT Slabs - Grandoise', 'IM10014005', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10014005_Ash-Ford-Bianco-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/ASHFORD_BIANCO/index.htm', 'IM10014005_Ash-Ford-Bianco-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(460, 'Ash Ford Grey 1200x1800', 'Ford Grey', 'GVT Slabs - Grandoise', 'IM10014006', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10014006_Ash-Ford-Grey-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/ASHFORD_GREY/index.htm', 'IM10014006_Ash-Ford-Grey-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(461, 'Brecia Dark 1200x1800', 'Drark', 'GVT Slabs - Grandoise', 'IM10014008', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10014008_Brecia-Dark-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/BRECCIA/index.htm', 'IM10014008_Brecia-Dark-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(462, 'Sahara White Light 1200x1800', 'White Light', 'GVT Slabs - Grandoise', 'IM10014009', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10014009_Sahara-White-Light-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/SAHARA_WHITE/index.htm', 'IM10014009_Sahara-White-Light-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(463, 'Wine Red Dark 1200x1800', 'Red Dark', 'GVT Slabs - Grandoise', 'IM10014010', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '1200x1800', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/1200x1800/', 'IM10014010_Wine-Red-Dark-1200x1800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/1200x1800/WINE_RED/index.htm', 'IM10014010_Wine-Red-Dark-1200x1800_GVT-Slabs.webp', '1', '46.5 sq.ft', '95 kg', ''),
(464, 'IMSIM1680-ARABIAN  SAND Matt & Carving 1600X800', 'Arabian Sand', 'GVT Slabs - Grandoise', 'IM10062372', '2', 'NEW', '', 'Vitrified', '', 'Matt Carving', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062372_IMSIM1680-ARABIAN-SAND-Matt-and-Carving-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/ARABIAN_SAND/index.htm', 'IM10062372_IMSIM1680-ARABIAN-SAND-Matt-and-Carving-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(465, 'IMSIM1680-FROST WHITE Matt & Carving 1600X800', 'Frost White', 'GVT Slabs - Grandoise', 'IM10062373', '2', 'NEW', '', 'Vitrified', '', 'Matt Carving', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062373_IMSIM1680-FROST-WHITE-Matt-and-Carving-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/FROST_WHITE/index.htm', 'IM10062373_IMSIM1680-FROST-WHITE-Matt-and-Carving-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(466, 'IMSIM1680-KASER GREY Matt & Carving 1600X800', 'Kaser Grey', 'GVT Slabs - Grandoise', 'IM10062374', '2', 'NEW', '', 'Vitrified', '', 'Matt Carving', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062374_IMSIM1680-KASER-GREY-Matt-and-Carving-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/KASER_GREY/index.htm', 'IM10062374_IMSIM1680-KASER-GREY-Matt-and-Carving-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(467, 'IMSIM1680-KASER WHITE Matt & Carving 1600X800', 'Kaser White', 'GVT Slabs - Grandoise', 'IM10062375', '2', 'NEW', '', 'Vitrified', '', 'Matt Carving', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800X1600/KASER_WHITE/index.htm', 'dummyproduct.webp', '1', '27.55 sq.ft', '54 kg', ''),
(468, 'IMSIM1680-MOON LAND Matt & Carving 1600X800', 'Moon Land', 'GVT Slabs - Grandoise', 'IM10062376', '2', 'NEW', '', 'Vitrified', '', 'Matt Carving', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062376_IMSIM1680-MOON-LAND-Matt-and-Carving-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/MOON_LAND/index.htm', 'IM10062376_IMSIM1680-MOON-LAND-Matt-and-Carving-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(469, 'IMSIM1680-MOON SKY Matt & Carving 1600X800', 'Moon Sky', 'GVT Slabs - Grandoise', 'IM10062377', '2', 'NEW', '', 'Vitrified', '', 'Matt Carving', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062377_IMSIM1680-MOON-SKY-Matt-and-Carving-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/MOON_SKY/index.htm', 'IM10062377_IMSIM1680-MOON-SKY-Matt-and-Carving-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(470, 'IMSIM1680-PANAMA LINER Matt & Carving 1600X800', 'Panama Liner', 'GVT Slabs - Grandoise', 'IM10062378', '2', 'NEW', '', 'Vitrified', '', 'Matt Carving', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062378_IMSIM1680-PANAMA-LINER-Matt-and-Carving-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/PANAMA_LINER/index.htm', 'IM10062378_IMSIM1680-PANAMA-LINER-Matt-and-Carving-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(471, 'IMSIM1680-ZEDA SAND Matt & Carving 1600X800', 'Zeda Sand', 'GVT Slabs - Grandoise', 'IM10062379', '2', 'NEW', '', 'Vitrified', '', 'Matt Carving', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062379_IMSIM1680-ZEDA-SAND-Matt-and-Carving-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/ZEDA_SAND/index.htm', 'IM10062379_IMSIM1680-ZEDA-SAND-Matt-and-Carving-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(472, 'IMSIM1689-CAMERON LINER Matt 1600X800', 'Cameron Liner', 'GVT Slabs - Grandoise', 'IM10062380', '2', 'NEW', '', 'Vitrified', '', 'Matt Carving', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062380_IMSIM1689-CAMERON-LINER-Matt-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/CAMERON_LINER/index.htm', 'IM10062380_IMSIM1689-CAMERON-LINER-Matt-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(473, 'IMSIM1680-CEMENT COUNTRY Matt 1600X800', 'Cement Country', 'GVT Slabs - Grandoise', 'IM10062381', '2', 'NEW', '', 'Vitrified', '', 'Matt', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062381_IMSIM1680-CEMENT-COUNTRY-Matt-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/CEMENT_COUNTRY/index.htm', 'IM10062381_IMSIM1680-CEMENT-COUNTRY-Matt-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(474, 'IMSIM1680-EARTH COUTTEN Matt 1600X800', 'Earth Coutten', 'GVT Slabs - Grandoise', 'IM10062382', '2', 'NEW', '', 'Vitrified', '', 'Matt', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062382_IMSIM1680-EARTH-COUTTEN-Matt-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/EARTH_COUTTEN/index.htm', 'IM10062382_IMSIM1680-EARTH-COUTTEN-Matt-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(475, 'IMSIM1680-GRAND CANYON Matt 1600X800', 'Grand Canyon', 'GVT Slabs - Grandoise', 'IM10062383', '2', 'NEW', '', 'Vitrified', '', 'Matt', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062383_IMSIM1680-GRAND-CANYON-Matt-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/GRAND_CANYON/index.htm', 'IM10062383_IMSIM1680-GRAND-CANYON-Matt-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(476, 'IMSIM1680-MOUNTAIN GREY Matt 1600X800', 'Mountain Grey', 'GVT Slabs - Grandoise', 'IM10062384', '2', 'NEW', '', 'Vitrified', '', 'Matt', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062384_IMSIM1680-MOUNTAIN-GREY-Matt-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/MOUNTAIN_GREY/index.htm', 'IM10062384_IMSIM1680-MOUNTAIN-GREY-Matt-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(477, 'IMSIM1680-STONE WHITE 00 Matt 1600X800', 'Stone White', 'GVT Slabs - Grandoise', 'IM10062385', '2', 'NEW', '', 'Vitrified', '', 'Matt', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10062385_IMSIM1680-STONE-WHITE-00-Matt-1600X800_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/STONE_WHITE/index.htm', 'IM10062385_IMSIM1680-STONE-WHITE-00-Matt-1600X800_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(478, 'Admire Beige 9mm Polished (800x1600)', 'Admire Beige', 'GVT Slabs - Grandoise', 'IM10038011', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10038011_Admire-Beige-9mm-Polished-800x1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/ADMIRE_BEIGE/index.htm', 'IM10038011_Admire-Beige-9mm-Polished-800x1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(479, 'Attic Crema 9mm Polished (800x1600)', 'Attic Crema', 'GVT Slabs - Grandoise', 'IM10038012', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10038012_Attic-Crema-9mm-Polished-800x1600_GVT-Slabs.webp', '', 'IM10038012_Attic-Crema-9mm-Polished-800x1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(480, 'Resilion onyx 9mm Polished (800x1600)', 'Resilion Onyx', 'GVT Slabs - Grandoise', 'IM10038013', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10038013_Resilion-onyx-9mm-Polished-800x1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/RESILION_ONYX/index.htm', 'IM10038013_Resilion-onyx-9mm-Polished-800x1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(481, 'White Statuario 9MM Polished (800x1600)', 'White Statuario', 'GVT Slabs - Grandoise', 'IM10038014', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10038014_White-Statuario-9MM-Polished-800x1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/WHITE_STATUARIO/index.htm', 'IM10038014_White-Statuario-9MM-Polished-800x1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(482, 'IM EMIL WHITE CHOCO PGVT 800X1600', 'Emil White', 'GVT Slabs - Grandoise', 'IM10038022', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10038022_IM-EMIL-WHITE-CHOCO-PGVT-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/EMIL_WHITE_CHOCO/index.htm', 'IM10038022_IM-EMIL-WHITE-CHOCO-PGVT-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(483, 'IM HONEY BEIGE PGVT 800X1600', 'Honey Beige', 'GVT Slabs - Grandoise', 'IM10038023', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10038023_IM-HONEY-BEIGE-PGVT-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/HONEY_BEIGE/index.htm', 'IM10038023_IM-HONEY-BEIGE-PGVT-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(484, 'IM HONEY GREY PGVT 800X1600', 'Honey Grey', 'GVT Slabs - Grandoise', 'IM10038024', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10038024_IM-HONEY-GREY-PGVT-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/HONEY_GREY/index.htm', 'IM10038024_IM-HONEY-GREY-PGVT-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(485, 'IM MIDAS CREMA PGVT 800X1600', 'Midas Crema', 'GVT Slabs - Grandoise', 'IM10038025', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10038025_IM-MIDAS-CREMA-PGVT-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/MIDAS_CREMA/index.htm', 'IM10038025_IM-MIDAS-CREMA-PGVT-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(486, 'IM OCEAN BEIGE PGVT 800X1600', 'Ocean Beige', 'GVT Slabs - Grandoise', 'IM10038026', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10038026_IM-OCEAN-BEIGE-PGVT-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/OCEAN_BEIGE/index.htm', 'IM10038026_IM-OCEAN-BEIGE-PGVT-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(487, 'IM PERSIAN GOLD PGVT 800X1600', 'Persian Gold', 'GVT Slabs - Grandoise', 'IM10038027', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10038027_IM-PERSIAN-GOLD-PGVT-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/PERSIAN_GOLD/index.htm', 'IM10038027_IM-PERSIAN-GOLD-PGVT-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(488, 'IM ATTIC CREMA PGVT 800X1600', '', 'GVT Slabs - Grandoise', 'IM10038942', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800X1600/ATTIC_CREMA/index.htm', 'dummyproduct.webp', '1', '27.55 sq.ft', '54 kg', ''),
(489, 'BOND BEIGE 9MM POLISHED (800X1600)', 'Bond Beige', 'GVT Slabs - Grandoise', 'IM10039106', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10039106_BOND-BEIGE-9MM-POLISHED-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/BOND_BEIGE/index.htm', 'IM10039106_BOND-BEIGE-9MM-POLISHED-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(490, 'BOND GREY 9MM POLISHED (800X1600)', 'Bond Grey', 'GVT Slabs - Grandoise', 'IM10039107', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10039107_BOND-GREY-9MM-POLISHED-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/BOND_GREY/index.htm', 'IM10039107_BOND-GREY-9MM-POLISHED-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(491, 'BOND IVORY 9MM POLISHED (800X1600)', 'Bond Ivory', 'GVT Slabs - Grandoise', 'IM10039108', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10039108_BOND-IVORY-9MM-POLISHED-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/BOND_IVORY/index.htm', 'IM10039108_BOND-IVORY-9MM-POLISHED-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(492, 'BOND STEEL GREY 9mm Polished 800X1600', 'Bond Steel', 'GVT Slabs - Grandoise', 'IM10039122', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10039122_BOND-STEEL-GREY-9mm-Polished-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/BOND_STEEL_GREY/index.htm', 'IM10039122_BOND-STEEL-GREY-9mm-Polished-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(493, 'FLUENCE STATUARIO 9MM POLISHED (800X1600)', 'Fluence Statuario', 'GVT Slabs - Grandoise', 'IM10039224', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10039224_FLUENCE-STATUARIO-9MM-POLISHED-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/FLUENCE_STATUARIO/index.htm', 'IM10039224_FLUENCE-STATUARIO-9MM-POLISHED-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(494, 'CLOUD WHITE GREY 9MM POLISHED (800X1600)', 'Cloud White', 'GVT Slabs - Grandoise', 'IM10039225', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10039225_CLOUD-WHITE-GREY-9MM-POLISHED-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/CLOUD_WHITE_GREY/index.htm', 'IM10039225_CLOUD-WHITE-GREY-9MM-POLISHED-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(495, 'PERSIAN GRANITO 9MM POLISHED (800X1600)', 'Persian Granito', 'GVT Slabs - Grandoise', 'IM10039226', '2', '', '', 'Vitrified', '', 'Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10039226_PERSIAN-GRANITO-9MM-POLISHED-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/PERSIAN_GRANITO/index.htm', 'IM10039226_PERSIAN-GRANITO-9MM-POLISHED-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(496, 'Granger Brown HG 9mm Polished 800X1600', 'Granger Brown', 'GVT Slabs - Grandoise', 'IM10046294', '2', '', '', 'Vitrified', '', 'High Gloss-Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10046294_Granger-Brown-HG-9mm-Polished-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/GRANGER_BROWN/index.htm', 'IM10046294_Granger-Brown-HG-9mm-Polished-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', '');
INSERT INTO `tiles` (`product_id`, `product_name`, `tile_name`, `category`, `im_code`, `packing`, `sku_type`, `vsku_code`, `base_material`, `colour`, `finish`, `finish_one`, `style`, `size`, `application`, `application_one`, `application_areas`, `application_areas_one`, `application_areas_two`, `application_areas_three`, `application_areas_four`, `application_areas_five`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`, `area_per_box`, `weight_per_box`, `ambience_view`) VALUES
(497, 'Granger Grey HG 9mm Polished 800X1600', 'Granger Grey', 'GVT Slabs - Grandoise', 'IM10046295', '2', '', '', 'Vitrified', '', 'High Gloss-Polished', '', '', '800x1600', 'Floor Tiles', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10046295_Granger-Grey-HG-9mm-Polished-800X1600_GVT-Slabs.webp', 'https://ivashomes.infra.market/360/800X1600/GRANGER_GREY/index.htm', 'IM10046295_Granger-Grey-HG-9mm-Polished-800X1600_GVT-Slabs.webp', '1', '27.55 sq.ft', '54 kg', ''),
(498, 'Forest Aqua Light Glass 800x1600', 'Aqua Light', 'GVT Slabs - Grandoise', 'IM10014011', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '800x1600', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10014011_Forest-Aqua-Light-Glass-800x1600_GVT-Slab.webp', '', 'IM10014011_Forest-Aqua-Light-Glass-800x1600_GVT-Slab.webp', '1', '27.55 sq.ft', '54 kg', ''),
(499, 'Living Natural Shine 800x1600', 'Natural Shine', 'GVT Slabs - Grandoise', 'IM10014012', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '800x1600', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x1600/', 'IM10014012_Living-Natural-Shine-800x1600_GVT-Slab.webp', 'https://ivashomes.infra.market/360/800X1600/LIVING_NATURAL/index.htm', 'IM10014012_Living-Natural-Shine-800x1600_GVT-Slab.webp', '1', '27.55 sq.ft', '54 kg', ''),
(500, 'Magic Wine Dark Glass 800x1600', 'Wine Dark', 'GVT Slabs - Grandoise', 'IM10014013', '2', '', '', 'Vitrified', '', 'Glossy', '', '', '800x1600', 'Floor Tiles', 'Wall Tiles', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800X1600/MAGIC_WINE/index.htm', 'dummyproduct.webp', '1', '27.55 sq.ft', '54 kg', ''),
(501, 'IM Crystall White B.B 800x2400', 'Crystal White', 'GVT Slabs - Grandoise', 'IM10039258', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x2400/', 'IM10039258_IM-Crystall-White-B.B-800x2400_Granonite.webp', 'https://ivashomes.infra.market/360/800x2400/CRYSTAL_WHITE/index.htm', 'IM10039258_IM-Crystall-White-B.B-800x2400_Granonite.webp', '1', '20.66 sq.ft', '70 kg', ''),
(502, 'IM Crystall Black B.B 800x2400', 'Crystal Black', 'GVT Slabs - Grandoise', 'IM10039259', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x2400/', 'IM10039259_IM-Crystall-Black-B.B-800x2400_Granonite.webp', 'https://ivashomes.infra.market/360/800x2400/CRYSTAL_BLACK/index.htm', 'IM10039259_IM-Crystall-Black-B.B-800x2400_Granonite.webp', '1', '20.66 sq.ft', '70 kg', ''),
(503, 'IM Portoro Athens B.B 800x2400', 'Portoro Athens', 'GVT Slabs - Grandoise', 'IM10039260', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x2400/', 'IM10039260_IM-Portoro-Athens-B.B-800x2400_Granonite.webp', 'https://ivashomes.infra.market/360/800x2400/PORTORO_ATHENS/index.htm', 'IM10039260_IM-Portoro-Athens-B.B-800x2400_Granonite.webp', '1', '20.66 sq.ft', '70 kg', ''),
(504, 'IM Dove Nero B.B 800x2400', 'Dove nero', 'GVT Slabs - Grandoise', 'IM10039261', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x2400/', 'IM10039261_IM-Dove-Nero-B.B-800x2400_Granonite.webp', 'https://ivashomes.infra.market/360/800x2400/DOVE_NERO/index.htm', 'IM10039261_IM-Dove-Nero-B.B-800x2400_Granonite.webp', '1', '20.66 sq.ft', '70 kg', ''),
(505, 'IM Dark Grey F.B 800x2400', 'Dark Grey', 'GVT Slabs - Grandoise', 'IM10039262', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x2400/', 'IM10039262_IM-Dark-Grey-F.B-800x2400_Granonite.webp', 'https://ivashomes.infra.market/360/800x2400/DARK_GREY/index.htm', 'IM10039262_IM-Dark-Grey-F.B-800x2400_Granonite.webp', '1', '20.66 sq.ft', '70 kg', ''),
(506, 'IM Grey F.B 800x2400', 'Grey', 'GVT Slabs - Grandoise', 'IM10039263', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', 'products/tiles/gvt-slabs-grandoise/800x2400/', 'IM10039263_IM-Grey-F.B-800x2400_Granonite.webp', 'https://ivashomes.infra.market/360/800x2400/GREY/index.htm', 'IM10039263_IM-Grey-F.B-800x2400_Granonite.webp', '1', '20.66 sq.ft', '70 kg', ''),
(507, 'IM Crystall White W.B 800x2400', '', 'GVT Slabs - Grandoise', 'IM10039264', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(508, 'IM Crystall Black W.B 800x2400', '', 'GVT Slabs - Grandoise', 'IM10039265', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(509, 'IM Roman Statuario W.B 800x2400', 'Roman Statuario', 'GVT Slabs - Grandoise', 'IM10039266', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/ROMAN_STATUARIO/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(510, 'IM Royal Onyx W.B 800x2400', 'Royal Onyx', 'GVT Slabs - Grandoise', 'IM10039267', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/ROYAL_ONYX/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(511, 'IM Galaxy Brown 800x2400', 'Galaxy Brown', 'GVT Slabs - Grandoise', 'IM10040686', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/GALAXY_BROWN/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(512, 'IM Galaxy Crema 800x2400', 'Galaxy Crema', 'GVT Slabs - Grandoise', 'IM10040687', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/GALAXY_CREMA/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(513, 'IM Galaxy Grey 800x2400', 'Galaxy Grey', 'GVT Slabs - Grandoise', 'IM10040688', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/GALAXY_GREY/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(514, 'IM Galaxy Black 800x2400', 'Galaxy Black', 'GVT Slabs - Grandoise', 'IM10040689', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/GALAXY_BLACK/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(515, 'IM Galaxy White 800x2400', 'Galaxy White', 'GVT Slabs - Grandoise', 'IM10040690', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/GALAXY_WHITE/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(516, 'IM Agate Gold B.B 800x2400', 'Agate Gold', 'GVT Slabs - Grandoise', 'IM10042342', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/AGATE_GOLD/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(517, 'IM Dyna Classic B.B 800x2400', 'Dyna Classic', 'GVT Slabs - Grandoise', 'IM10042343', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/DYNA_CLASSIC/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(518, 'IM Brown F.B 800x2400', 'Brown', 'GVT Slabs - Grandoise', 'IM10042344', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/BROWN/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(519, 'IM Ivory F.B 800x2400', 'Ivory', 'GVT Slabs - Grandoise', 'IM10042345', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/IVORY/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(520, 'IM Extream Statuario W.B 800x2400', 'Extream Statuario', 'GVT Slabs - Grandoise', 'IM10042346', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', 'https://ivashomes.infra.market/360/800x2400/EXTREAM_STATUARIO/index.htm', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(521, 'IM Black Matt F.B 800x2400', 'Black Matt', 'GVT Slabs - Grandoise', 'IM10047756', '1', '', '', 'Vitrified', '', 'Glossy', '', '', '800x2400', 'Kitchen Tops', '', 'Living room', 'Bedroom', '', 'Kitchen', 'Facade', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '20.66 sq.ft', '70 kg', ''),
(522, '1303 RUSTIC 400x400 PARKING', '1303', 'Parking', 'IM10025085', '5', '', '', 'Vitrified', '', 'Rustic', '', '', '400x400', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(523, '1106 RUSTIC 400x400 PARKING', '1106', 'Parking', 'IM10025086', '5', '', '', 'Vitrified', '', 'Rustic', '', '', '400x400', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(524, '2007 Punch 400x400 Parking', '2007', 'Parking', 'IM10037645', '5', '', '', 'Vitrified', '', 'Rustic', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '2007-punch-im10037645.webp', '', '2007-punch-im10037645.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(525, '2011 Punch 400x400 Parking', '2011', 'Parking', 'IM10037646', '5', '', '', 'Vitrified', '', 'Rustic', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '2011-punch-im10037646.webp', '', '2011-punch-im10037646.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(526, '5036 Plain 400x400 Parking', '5036', 'Parking', 'IM10037656', '5', '', '', 'Vitrified', '', 'Matt (Plain)', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '5036-plain-im10037656.webp', '', '5036-plain-im10037656.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(527, '5037 Plain 400x400 Parking', '5037', 'Parking', 'IM10037657', '5', '', '', 'Vitrified', '', 'Matt (Plain)', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '5037-plain-im10037657.webp', '', '5037-plain-im10037657.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(528, '5066 Plain 400x400 Parking', '5066', 'Parking', 'IM10037658', '5', '', '', 'Vitrified', '', 'Matt (Plain)', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '5066-plain-im10037658.webp', '', '5066-plain-im10037658.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(529, '5067 Plain 400x400 Parking', '5067', 'Parking', 'IM10037659', '5', '', '', 'Vitrified', '', 'Matt (Plain)', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '5067-plain-im10037659.webp', '', '5067-plain-im10037659.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(530, '5115 D Plain 400x400 Parking', '5115 D', 'Parking', 'IM10037660', '5', '', '', 'Vitrified', '', 'Matt (Plain)', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '5115-d-im10037660.webp', '', '5115-d-im10037660.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(531, '5115 L Plain 400x400 Parking', '5115 L', 'Parking', 'IM10037661', '5', '', '', 'Vitrified', '', 'Matt (Plain)', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(532, '5117 D Plain 400x400 Parking', '5117 D', 'Parking', 'IM10037662', '5', '', '', 'Vitrified', '', 'Matt (Plain)', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '5117-d-im10037662.webp', '', '5117-d-im10037662.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(533, '5117 L Plain 400x400 Parking', '5117 L', 'Parking', 'IM10037663', '5', '', '', 'Vitrified', '', 'Matt (Plain)', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '5117-d-im10037663.webp', '', '5117-d-im10037663.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(534, '6009 Rustic 400x400 Parking', '6009', 'Parking', 'IM10037664', '5', '', '', 'Vitrified', '', 'Rustic', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '6009-rustic-im10037664.webp', '', '6009-rustic-im10037664.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(535, '6018 Rustic 400x400 Parking', '6018', 'Parking', 'IM10037665', '5', '', '', 'Vitrified', '', 'Rustic', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '6018-rustic-im10037665.webp', '', '6018-rustic-im10037665.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(536, '6019 Rustic 400x400 Parking', '6019', 'Parking', 'IM10037666', '5', '', '', 'Vitrified', '', 'Rustic', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '6019-rustic-im10037666.webp', '', '6019-rustic-im10037666.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(537, '6020 Rustic 400x400 Parking', '6020', 'Parking', 'IM10037667', '5', '', '', 'Vitrified', '', 'Rustic', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '6020-rustic-im10037667.webp', '', '6020-rustic-im10037667.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(538, '6021 Rustic 400x400 Parking', '6021', 'Parking', 'IM10037668', '5', '', '', 'Vitrified', '', 'Rustic', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '6021-rustic-im10037668.webp', '', '6021-rustic-im10037668.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(539, '7014 Punch 400x400 Parking', '7014', 'Parking', 'IM10037670', '5', '', '', 'Vitrified', '', 'Matt (Punch)', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '7014-punch-im10037670.webp', '', '7014-punch-im10037670.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(540, '7015 Punch 400x400 Parking', '7015', 'Parking', 'IM10037671', '5', '', '', 'Vitrified', '', 'Matt (Punch)', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/400x400/', '7015-punch-im10037671.webp', '', '7015-punch-im10037671.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(541, '5115 HL 2', '5115 HL', 'Parking', 'IM10039118', '5', '', '', 'Vitrified', '', '', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(542, '5117 HL 2', '5117 HL', 'Parking', 'IM10039119', '5', '', '', 'Vitrified', '', '', '', '', '400x400', '', 'Wall Tiles', '', '', '', '', '', 'Vitrified Floor', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '7.75 sq.ft', '18.5 kg', ''),
(543, 'Bombato Verde 12x12 Digi Parking', 'Bombato Verde', 'Parking', 'IM10012171', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'bombato-verde-im10012171.webp', '', 'bombato-verde-im10012171.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(544, 'Bricko Manow 12x12 Digi Parking', 'Bricko Manow', 'Parking', 'IM10012172', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'bricko-manow-im10012172.webp', '', 'bricko-manow-im10012172.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(545, 'Crazo Arton Decor 12x12 Digi Parking', 'Crazo Arton', 'Parking', 'IM10012173', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'crazo-arton-decor-im10012173.webp', '', 'crazo-arton-decor-im10012173.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(546, 'Creamy Beige 12x12 Digi Parking', 'Creamy Beige', 'Parking', 'IM10012174', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'creamy-beige-im10012174.webp', '', 'creamy-beige-im10012174.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(547, 'Creamy Blue 12x12 Digi Parking', 'Creamy Blue', 'Parking', 'IM10012175', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'creamy-blue-im10012175.webp', '', 'creamy-blue-im10012175.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(548, 'Chips Alter 12x12 Digi Parking', 'Chips Alter', 'Parking', 'IM10012176', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'chips-alter-im10012176.webp', '', 'chips-alter-im10012176.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(549, 'Chips Gran 12x12 Digi Parking', 'Chips Gran', 'Parking', 'IM10012177', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'chips-gran-im10012177.webp', '', 'chips-gran-im10012177.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(550, 'Clone Caoba 12x12 Digi Parking', 'Clone Caoba', 'Parking', 'IM10012178', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'clone-caoba-im10012178.webp', '', 'clone-caoba-im10012178.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(551, 'Crazo Arton 12x12 Digi Parking', 'Crazo Arton', 'Parking', 'IM10012179', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'crazo-arton-im10012179.webp', '', 'crazo-arton-im10012179.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(552, 'Cue Slate 12x12 Digi Parking', 'Cue Slate', 'Parking', 'IM10012180', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'cue-slate-im10012180.webp', '', 'cue-slate-im10012180.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(553, 'Divine Brown 12x12 Digi Parking', 'Divine Brown', 'Parking', 'IM10012181', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'divine-brown-im10012181.webp', '', 'divine-brown-im10012181.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(554, 'Divine Navy 12x12 Digi Parking', 'Divine Navy', 'Parking', 'IM10012182', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'divine-navy-im10012182.webp', '', 'divine-navy-im10012182.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(555, 'Divine Savona 12x12 Digi Parking', 'Divine Savona', 'Parking', 'IM10012183', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'divine-savona-im10012183.webp', '', 'divine-savona-im10012183.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(556, 'Florin Black 12x12 Digi Parking', 'Florin Black', 'Parking', 'IM10012184', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'florin-black-im10012184.webp', '', 'florin-black-im10012184.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(557, 'Irox Black 12x12 Digi Parking', 'Irox Black', 'Parking', 'IM10012185', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'irox-black-im10012185.webp', '', 'irox-black-im10012185.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(558, 'Lancer Choco 12x12 Parking', 'Lancer Choco', 'Parking', 'IM10012186', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'lancer-choco-im10012186.webp', '', 'lancer-choco-im10012186.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(559, 'Lancer Rain 12x12 Digi Parking', 'Lancer Rain', 'Parking', 'IM10012187', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'lancer-rain-im10012187.webp', '', 'lancer-rain-im10012187.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(560, 'Lime Stone Grey 12x12 Digi Parking', 'Lime Stone', 'Parking', 'IM10012188', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'lime-stone-grey-im10012188.webp', '', 'lime-stone-grey-im10012188.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(561, 'Luxury Decor 12x12 Digi Parking', 'Luxury Decor', 'Parking', 'IM10012189', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(562, 'Lumber Wood Choco 12x12 Digi Parking', 'Lumber Wood', 'Parking', 'IM10012190', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(563, 'Mason Brown 12x12 Digi Parking', 'Mason Brown', 'Parking', 'IM10012191', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(564, 'Matrix Cenefa 12x12 Digi Parking', 'Matrix Cenefa', 'Parking', 'IM10012192', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'matrix-cenefa-im10012192.webp', '', 'matrix-cenefa-im10012192.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(565, 'Marco Multi 12x12 Digi Parking', 'Marco Multi', 'Parking', 'IM10012193', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'marco-multi-im10012193.webp', '', 'marco-multi-im10012193.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(566, 'Mason Gray 12x12 Digi Parking', 'Mason Gray', 'Parking', 'IM10012194', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'mason-gray-im10012194.webp', '', 'mason-gray-im10012194.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(567, 'Matrix Granite 12x12 Digi Parking', 'Matrix Granite', 'Parking', 'IM10012195', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'matrix-granite-im10012195.webp', '', 'matrix-granite-im10012195.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(568, 'Metro Fanta 12x12 Digi Parking', 'Metro Fanta', 'Parking', 'IM10012196', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'metro-fanta-im10012196.webp', '', 'metro-fanta-im10012196.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(569, 'Metro Navy 12x12 Digi Parking', 'Metro Navy', 'Parking', 'IM10012197', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'metro-navy-im10012197.webp', '', 'metro-navy-im10012197.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(570, 'Mountain Iris 12x12 Digi Parking', 'Mountain Iris', 'Parking', 'IM10012198', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'mountain-iris-im10012198.webp', '', 'mountain-iris-im10012198.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(571, 'Monaro Nero 12x12 Parking', 'Monaro Nero', 'Parking', 'IM10012199', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'monaro-nero-im10012199.webp', '', 'monaro-nero-im10012199.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(572, 'Ohio Black 12x12 Parking', 'Ohio Black', 'Parking', 'IM10012200', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'ohio-black-im10012200.webp', '', 'ohio-black-im10012200.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(573, 'Ohie Brown 12x12 Parking', 'Ohie Brown', 'Parking', 'IM10012201', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'ohie-brown-im10012201.webp', '', 'ohie-brown-im10012201.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(574, 'Planko Brown 12x12 Parking', 'Planko Brown', 'Parking', 'IM10012202', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'planko-brown-im10012202.webp', '', 'planko-brown-im10012202.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(575, 'Planko Gray 12x12 Parking', 'Planko Gray', 'Parking', 'IM10012203', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'planko-gray-im10012203.webp', '', 'planko-gray-im10012203.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(576, 'Qury White 12x12 Digi Parking', 'Qury White', 'Parking', 'IM10012204', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'qury-white-im10012204.webp', '', 'qury-white-im10012204.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(577, 'Squra Gray 12x12 Digi Parking', 'Squra Gray', 'Parking', 'IM10012205', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'squra-gray-im10012205.webp', '', 'squra-gray-im10012205.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(578, 'Stone Milano 12x12 Digi Parking', 'Stone Milano', 'Parking', 'IM10012206', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'stone-milano-im10012206.webp', '', 'stone-milano-im10012206.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(579, 'Star Wood 12x12 Parking', 'Star Wood', 'Parking', 'IM10012207', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'star-wood-im10012207.webp', '', 'star-wood-im10012207.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(580, 'Titanium Natural 12x12 Digi Parking', 'Titanium Natural', 'Parking', 'IM10012208', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'titanium-natural-im10012208.webp', '', 'titanium-natural-im10012208.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(581, 'Weaver Cloud 12x12 Digi Parking', 'Weaver Cloud', 'Parking', 'IM10012209', '8', '', '', 'Vitrified', '', '', '', '', '300x300', 'Floor Tiles', '', '', '', '', '', '', 'Vitrified Floor', 'products/tiles/parking/300x300/', 'weaver-cloud-im10012209.webp', '', 'weaver-cloud-im10012209.webp', '1', '8.6 sq.ft', '12.5 kg', ''),
(582, 'IVLAC42-PLC-TRAV ROCK BE-CR 600x1200 Floor Tile', 'IVLAC42-PLC-TRAV ROCK BE-CR', 'Monocotta', 'IM10063329', '2', 'NEW', 'TRAVENT ROCK BEIGE', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063329_IVLAC42-PLC-TRAV-ROCK-BE-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063329_IVLAC42-PLC-TRAV-ROCK-BE-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(583, 'IVLAC42-PLC-TRAVEN-BE-CR 600x1200 Floor Tile', 'IVLAC42-PLC-TRAVEN-BE-CR', 'Monocotta', 'IM10064630', '2', 'NEW', 'TRAVENTINO BEIGE', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10064630_IVLAC42-PLC-TRAVEN-BE-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10064630_IVLAC42-PLC-TRAVEN-BE-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(584, 'IVLAC42-PLC-MERRIT SMK-CR 600x1200 Floor Tile', 'IVLAC42-PLC-MERRIT SMK-CR', 'Monocotta', 'IM10063331', '2', 'NEW', 'MERRIT SMOKE', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063331_IVLAC42-PLC-MERRIT-SMK-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063331_IVLAC42-PLC-MERRIT-SMK-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(585, 'IVLAC42-PLC-MERRIT IV-CR 600x1200 Floor Tile', 'IVLAC42-PLC-MERRIT IV-CR', 'Monocotta', 'IM10063332', '2', 'NEW', 'MERRIT IVORY', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063332_IVLAC42-PLC-MERRIT-IV-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063332_IVLAC42-PLC-MERRIT-IV-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(586, 'IVLAC42-PLC-ATHNES GY-CR 600x1200 Floor Tile', 'IVLAC42-PLC-ATHNES GY-CR', 'Monocotta', 'IM10063333', '2', 'NEW', 'ATHNES GREY', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063333_IVLAC42-PLC-ATHNES-GY-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063333_IVLAC42-PLC-ATHNES-GY-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(587, 'IVLAC42-PLC-ALMATY BIANC-CR 600x1200 Floor Tile', 'IVLAC42-PLC-ALMATY BIANC-CR', 'Monocotta', 'IM10063334', '2', 'NEW', 'ALMATY BIANCO', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063334_IVLAC42-PLC-ALMATY-BIANC-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063334_IVLAC42-PLC-ALMATY-BIANC-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(588, 'IVLAC42-PLC-ROSSALIA BIANC-CR 600x1200 Floor Tile', 'IVLAC42-PLC-ROSSALIA BIANC-CR', 'Monocotta', 'IM10063335', '2', 'NEW', 'ROSSLIA BIANCO', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063335_IVLAC42-PLC-ROSSALIA-BIANC-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063335_IVLAC42-PLC-ROSSALIA-BIANC-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(589, 'IVLAC42-PLC-LC10011 HL-CR 600x1200 Floor Tile', 'IVLAC42-PLC-LC10011 HL-CR', 'Monocotta', 'IM10063336', '2', 'NEW', 'LC 10011 HL', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063336_IVLAC42-PLC-LC10011-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063336_IVLAC42-PLC-LC10011-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(590, 'IVLAC42-PLC-L 10005 HL-CR 600x1200 Floor Tile', 'IVLAC42-PLC-L 10005 HL-CR', 'Monocotta', 'IM10063337', '2', 'NEW', 'L 10005 HL', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063337_IVLAC42-PLC-L-10005-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063337_IVLAC42-PLC-L-10005-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(591, 'IVLAC42-PLC-L 10003 HL-CR 600x1200 Floor Tile', 'IVLAC42-PLC-L 10003 HL-CR', 'Monocotta', 'IM10063338', '2', 'NEW', 'L 10003 HL', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063338_IVLAC42-PLC-L-10003-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063338_IVLAC42-PLC-L-10003-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(592, 'IVLAC42-PLC-REAL BOT-CR 600x1200 Floor Tile', 'IVLAC42-PLC-REAL BOT-CR', 'Monocotta', 'IM10063339', '2', 'NEW', 'REAL BOTTOCHINO', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063339_IVLAC42-PLC-REAL-BOT-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063339_IVLAC42-PLC-REAL-BOT-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(593, 'IVLAC42-PLC-LC 10012 HL-CR 600x1200 Floor Tile', 'IVLAC42-PLC-LC 10012 HL-CR', 'Monocotta', 'IM10063340', '2', 'NEW', 'LC 10012 HL', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063340_IVLAC42-PLC-LC-10012-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063340_IVLAC42-PLC-LC-10012-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(594, 'IVLAC42-PLC-LC 10016 HL-CR 600x1200 Floor Tile', 'IVLAC42-PLC-LC 10016 HL-CR', 'Monocotta', 'IM10063341', '2', 'NEW', 'LC 10016 HL', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063341_IVLAC42-PLC-LC-10016-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063341_IVLAC42-PLC-LC-10016-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(595, 'IVLAC42-PLC-BOT-NAT-CR 600x1200 Floor Tile', 'IVLAC42-PLC-BOT-NAT-CR', 'Monocotta', 'IM10063342', '2', 'NEW', 'BOTTOCHINO NATURAL', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063342_IVLAC42-PLC-BOT-NAT-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063342_IVLAC42-PLC-BOT-NAT-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(596, 'IVLAC42-PLC-MERQURY BIANC-CR 600x1200 Floor Tile', 'IVLAC42-PLC-MERQURY BIANC-CR', 'Monocotta', 'IM10063343', '2', 'NEW', 'MERQURY BIANCO', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063343_IVLAC42-PLC-MERQURY-BIANC-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063343_IVLAC42-PLC-MERQURY-BIANC-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(597, 'IVLAC42-PLC-PICASO SAN-CR 600x1200 Floor Tile', 'IVLAC42-PLC-PICASO SAN-CR', 'Monocotta', 'IM10063344', '2', 'NEW', 'PICASO SAND', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063344_IVLAC42-PLC-PICASO-SAN-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063344_IVLAC42-PLC-PICASO-SAN-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(598, 'IVLAC42-PLC-PICASO BIANC-CR 600x1200 Floor Tile', 'IVLAC42-PLC-PICASO BIANC-CR', 'Monocotta', 'IM10063345', '2', 'NEW', 'PICASO BIANCO', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063345_IVLAC42-PLC-PICASO-BIANC-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063345_IVLAC42-PLC-PICASO-BIANC-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(599, 'IVLAC42-PLC-MAN MARFIL SMK-CR 600x1200 Floor Tile', 'IVLAC42-PLC-MAN MARFIL SMK-CR', 'Monocotta', 'IM10063346', '2', 'NEW', 'MANILA MARFIL SMOKE', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063346_IVLAC42-PLC-MAN-MARFIL-SMK-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063346_IVLAC42-PLC-MAN-MARFIL-SMK-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(600, 'IVLAC42-PLC-PLATINUM BIANC-CR 600x1200 Floor Tile', 'IVLAC42-PLC-PLATINUM BIANC-CR', 'Monocotta', 'IM10063347', '2', 'NEW', 'PLATINUM BIANCO', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', '', 'dummyproduct.webp', '', 'dummyproduct.webp', '1', '15.5 sq.ft', '27 kg', ''),
(601, 'IVLAC42-PLC-SMART SATV-CR 600x1200 Floor Tile', 'IVLAC42-PLC-SMART SATV-CR', 'Monocotta', 'IM10063348', '2', 'NEW', 'SMART SATVARIO', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063348_IVLAC42-PLC-SMART-SATV-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063348_IVLAC42-PLC-SMART-SATV-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(602, 'IVLAC42-PLC-KASHMIR WH-CR 600x1200 Floor Tile', 'IVLAC42-PLC-KASHMIR WH-CR', 'Monocotta', 'IM10063349', '2', 'NEW', 'KASHMIR WHITE', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063349_IVLAC42-PLC-KASHMIR-WH-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063349_IVLAC42-PLC-KASHMIR-WH-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(603, 'IVLAC42-PLC-L 10013 HL-CR 600x1200 Floor Tile', 'IVLAC42-PLC-L 10013 HL-CR', 'Monocotta', 'IM10063350', '2', 'NEW', 'L 10013 HL', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063350_IVLAC42-PLC-L-10013-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063350_IVLAC42-PLC-L-10013-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(604, 'IVLAC42-PLC-L 10007 HL-CR 600x1200 Floor Tile', 'IVLAC42-PLC-L 10007 HL-CR', 'Monocotta', 'IM10063351', '2', 'NEW', 'L 10007 HL', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063351_IVLAC42-PLC-L-10007-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063351_IVLAC42-PLC-L-10007-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(605, 'IVLAC42-PLC-MOSCOW GY-CR 600x1200 Floor Tile', 'IVLAC42-PLC-MOSCOW GY-CR', 'Monocotta', 'IM10063352', '2', 'NEW', 'MOSCOW GREY', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063352_IVLAC42-PLC-MOSCOW-GY-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063352_IVLAC42-PLC-MOSCOW-GY-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(606, 'IVLAC42-PLC-MOSCOW BR-CR 600x1200 Floor Tile', 'IVLAC42-PLC-MOSCOW BR-CR', 'Monocotta', 'IM10063353', '2', 'NEW', 'MOSCOW BROWN', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063353_IVLAC42-PLC-MOSCOW-BR-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063353_IVLAC42-PLC-MOSCOW-BR-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(607, 'IVLAC42-PLC-MOSCOW BK-CR 600x1200 Floor Tile', 'IVLAC42-PLC-MOSCOW BK-CR', 'Monocotta', 'IM10063354', '2', 'NEW', 'MOSCOW BLACK', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063354_IVLAC42-PLC-MOSCOW-BK-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063354_IVLAC42-PLC-MOSCOW-BK-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(608, 'IVLAC42-PLC-MOSCOW-SMK-CR 600x1200 Floor Tile', 'IVLAC42-PLC-MOSCOW-SMK-CR', 'Monocotta', 'IM10063355', '2', 'NEW', 'MOSCOW SMOKE', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063355_IVLAC42-PLC-MOSCOW-SMK-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063355_IVLAC42-PLC-MOSCOW-SMK-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(609, 'IVLAC42-PLC-LC 10014 HL-CR 600x1200 Floor Tile', 'IVLAC42-PLC-LC 10014 HL-CR', 'Monocotta', 'IM10063356', '2', 'NEW', 'LC 10014 HL', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063356_IVLAC42-PLC-LC-10014-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063356_IVLAC42-PLC-LC-10014-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(610, 'IVLAC42-PLC-LC 100015 HL-CR 600x1200 Floor Tile', 'IVLAC42-PLC-LC 100015 HL-CR', 'Monocotta', 'IM10063357', '2', 'NEW', 'LC 100015 HL', 'Monocotta', '', 'Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063357_IVLAC42-PLC-LC-100015-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063357_IVLAC42-PLC-LC-100015-HL-CR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(611, 'IVLAC42-PLC-SIG PERL BIANC-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-SIG PERL BIANC-ENCR', 'Monocotta', 'IM10063358', '2', 'NEW', 'SIGNET PERAL BIANCO', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063358_IVLAC42-PLC-SIG-PERL-BIANC-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063358_IVLAC42-PLC-SIG-PERL-BIANC-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(612, 'IVLAC42-PLC-BASIC BOT-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-BASIC BOT-ENCR', 'Monocotta', 'IM10063359', '2', 'NEW', 'BASIC BOTTOCHINO', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063359_IVLAC42-PLC-BASIC-BOT-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063359_IVLAC42-PLC-BASIC-BOT-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(613, 'IVLAC42-PLC-JASPER ICE-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-JASPER ICE-ENCR', 'Monocotta', 'IM10063360', '2', 'NEW', 'JASPER ICE', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063360_IVLAC42-PLC-JASPER-ICE-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063360_IVLAC42-PLC-JASPER-ICE-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(614, 'IVLAC42-PLC-LIVON CRM-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-LIVON CRM-ENCR', 'Monocotta', 'IM10063361', '2', 'NEW', 'LIVON CREMA', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063361_IVLAC42-PLC-LIVON-CRM-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063361_IVLAC42-PLC-LIVON-CRM-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(615, 'IVLAC42-PLC-LIVON ICE-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-LIVON ICE-ENCR', 'Monocotta', 'IM10063362', '2', 'NEW', 'LIVON ICE', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063362_IVLAC42-PLC-LIVON-ICE-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063362_IVLAC42-PLC-LIVON-ICE-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(616, 'IVLAC42-PLC-BRIGATE ICE-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-BRIGATE ICE-ENCR', 'Monocotta', 'IM10063363', '2', 'NEW', 'BRIGATE ICE', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063363_IVLAC42-PLC-BRIGATE-ICE-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063363_IVLAC42-PLC-BRIGATE-ICE-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(617, 'IVLAC42-PLC-BRIGATE NAT-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-BRIGATE NAT-ENCR', 'Monocotta', 'IM10063364', '2', 'NEW', 'BRIGATE NATURAL', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063364_IVLAC42-PLC-BRIGATE-NAT-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063364_IVLAC42-PLC-BRIGATE-NAT-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(618, 'IVLAC42-PLC-THERON WH-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-THERON WH-ENCR', 'Monocotta', 'IM10063365', '2', 'NEW', 'THERON WHITE', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063365_IVLAC42-PLC-THERON-WH-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063365_IVLAC42-PLC-THERON-WH-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(619, 'IVLAC42-PLC-SAT NORA-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-SAT NORA-ENCR', 'Monocotta', 'IM10063366', '2', 'NEW', 'SATURIO NORA', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063366_IVLAC42-PLC-SAT-NORA-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063366_IVLAC42-PLC-SAT-NORA-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(620, 'IVLAC42-PLC-ALPHA WH-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-ALPHA WH-ENCR', 'Monocotta', 'IM10063367', '2', 'NEW', 'ALPHA WHITE', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063367_IVLAC42-PLC-ALPHA-WH-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063367_IVLAC42-PLC-ALPHA-WH-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(621, 'IVLAC42-PLC-RIVER EDGE-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-RIVER EDGE-ENCR', 'Monocotta', 'IM10063368', '2', 'NEW', 'RIVER EDGE', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063368_IVLAC42-PLC-RIVER-EDGE-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063368_IVLAC42-PLC-RIVER-EDGE-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(622, 'IVLAC42-PLC-LOFI SPIDER-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-LOFI SPIDER-ENCR', 'Monocotta', 'IM10063369', '2', 'NEW', 'LOFI SPIDER', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063369_IVLAC42-PLC-LOFI-SPIDER-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063369_IVLAC42-PLC-LOFI-SPIDER-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(623, 'IVLAC42-PLC-MICH ANGL-ENCR 600x1200 Floor Tile', 'IVLAC42-PLC-MICH ANGL-ENCR', 'Monocotta', 'IM10063370', '2', 'NEW', 'MICHEL ANGELO', 'Monocotta', '', 'Endless Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063370_IVLAC42-PLC-MICH-ANGL-ENCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063370_IVLAC42-PLC-MICH-ANGL-ENCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(624, 'IVLAC42-PLC-BRISBANE SMK-MT 600x1200 Floor Tile', 'IVLAC42-PLC-BRISBANE SMK-MT', 'Monocotta', 'IM10063371', '2', 'NEW', 'BRISBANE SMOKE', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063371_IVLAC42-PLC-BRISBANE-SMK-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063371_IVLAC42-PLC-BRISBANE-SMK-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(625, 'IVLAC42-PLC-BRISBANE WH-MT 600x1200 Floor Tile', 'IVLAC42-PLC-BRISBANE WH-MT', 'Monocotta', 'IM10063372', '2', 'NEW', 'BRISBANE WHITE', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063372_IVLAC42-PLC-BRISBANE-WH-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063372_IVLAC42-PLC-BRISBANE-WH-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', '');
INSERT INTO `tiles` (`product_id`, `product_name`, `tile_name`, `category`, `im_code`, `packing`, `sku_type`, `vsku_code`, `base_material`, `colour`, `finish`, `finish_one`, `style`, `size`, `application`, `application_one`, `application_areas`, `application_areas_one`, `application_areas_two`, `application_areas_three`, `application_areas_four`, `application_areas_five`, `path`, `product_image`, `view`, `product_multiple_imgs`, `product_status`, `area_per_box`, `weight_per_box`, `ambience_view`) VALUES
(626, 'IVLAC42-PLC-LC 10011 L-MT 600x1200 Floor Tile', 'IVLAC42-PLC-LC 10011 L-MT', 'Monocotta', 'IM10063373', '2', 'NEW', 'LC 10011 L', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063373_IVLAC42-PLC-LC-10011-L-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063373_IVLAC42-PLC-LC-10011-L-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(627, 'IVLAC42-PLC-LC 10011 D-MT 600x1200 Floor Tile', 'IVLAC42-PLC-LC 10011 D-MT', 'Monocotta', 'IM10063374', '2', 'NEW', 'LC 10011 D', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063374_IVLAC42-PLC-LC-10011-D-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063374_IVLAC42-PLC-LC-10011-D-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(628, 'IVLAC42-PLC-L 10005 L-MT 600x1200 Floor Tile', 'IVLAC42-PLC-L 10005 L-MT', 'Monocotta', 'IM10063375', '2', 'NEW', 'L 10005 L', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063375_IVLAC42-PLC-L-10005-L-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063375_IVLAC42-PLC-L-10005-L-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(629, 'IVLAC42-PLC-L 10005 D-MT 600x1200 Floor Tile', 'IVLAC42-PLC-L 10005 D-MT', 'Monocotta', 'IM10063376', '2', 'NEW', 'L 10005 D', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063376_IVLAC42-PLC-L-10005-D-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063376_IVLAC42-PLC-L-10005-D-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(630, 'IVLAC42-PLC-L 10003 L-MT 600x1200 Floor Tile', 'IVLAC42-PLC-L 10003 L-MT', 'Monocotta', 'IM10063377', '2', 'NEW', 'L 10003 L', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063377_IVLAC42-PLC-L-10003-L-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063377_IVLAC42-PLC-L-10003-L-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(631, 'IVLAC42-PLC-L 10003 D-MT 600x1200 Floor Tile', 'IVLAC42-PLC-L 10003 D-MT', 'Monocotta', 'IM10063378', '2', 'NEW', 'L 10003 D', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063378_IVLAC42-PLC-L-10003-D-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063378_IVLAC42-PLC-L-10003-D-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(632, 'IVLAC42-PLC-L 10004 D-MT 600x1200 Floor Tile', 'IVLAC42-PLC-L 10004 D-MT', 'Monocotta', 'IM10063379', '2', 'NEW', 'L 10004 D', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063379_IVLAC42-PLC-L-10004-D-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063379_IVLAC42-PLC-L-10004-D-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(633, 'IVLAC42-PLC-LC 10012 L-MT 600x1200 Floor Tile', 'IVLAC42-PLC-LC 10012 L-MT', 'Monocotta', 'IM10063380', '2', 'NEW', 'LC 10012 L', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063380_IVLAC42-PLC-LC-10012-L-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063380_IVLAC42-PLC-LC-10012-L-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(634, 'IVLAC42-PLC-LC 10012 D-MT 600x1200 Floor Tile', 'IVLAC42-PLC-LC 10012 D-MT', 'Monocotta', 'IM10063381', '2', 'NEW', 'LC 10012 D', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063381_IVLAC42-PLC-LC-10012-D-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063381_IVLAC42-PLC-LC-10012-D-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(635, 'IVLAC42-PLC-LC 10013 D-MT 600x1200 Floor Tile', 'IVLAC42-PLC-LC 10013 D-MT', 'Monocotta', 'IM10063382', '2', 'NEW', 'LC 10013 D', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063382_IVLAC42-PLC-LC-10013-D-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063382_IVLAC42-PLC-LC-10013-D-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(636, 'IVLAC42-PLC-10007 L-MT 600x1200 Floor Tile', 'IVLAC42-PLC-10007 L-MT', 'Monocotta', 'IM10063383', '2', 'NEW', '10007 L', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063383_IVLAC42-PLC-10007-L-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063383_IVLAC42-PLC-10007-L-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(637, 'IVLAC42-PLC-10007 D-MT 600x1200 Floor Tile', 'IVLAC42-PLC-10007 D-MT', 'Monocotta', 'IM10063384', '2', 'NEW', '10007 D', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063384_IVLAC42-PLC-10007-D-MT- 600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063384_IVLAC42-PLC-10007-D-MT- 600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(638, 'IVLAC42-PLC-LC 10014 D-MT 600x1200 Floor Tile', 'IVLAC42-PLC-LC 10014 D-MT', 'Monocotta', 'IM10063385', '2', 'NEW', 'LC 10014 D', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063385_IVLAC42-PLC-LC-10014-D-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063385_IVLAC42-PLC-LC-10014-D-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(639, 'IVLAC42-PLC-10010 L-MT 600x1200 Floor Tile', 'IVLAC42-PLC-10010 L-MT', 'Monocotta', 'IM10063386', '2', 'NEW', '10010 L', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063386_IVLAC42-PLC-10010 L-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063386_IVLAC42-PLC-10010 L-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(640, 'IVLAC42-PLC-MALTA GRIGIO-MT 600x1200 Floor Tile', 'IVLAC42-PLC-MALTA GRIGIO-MT', 'Monocotta', 'IM10063387', '2', 'NEW', 'MALTA GRIGIO', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063387_IVLAC42-PLC-MALTA-GRIGIO-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063387_IVLAC42-PLC-MALTA-GRIGIO-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(641, 'IVLAC42-PLC-MALTA SAN-MT 600x1200 Floor Tile', 'IVLAC42-PLC-MALTA SAN-MT', 'Monocotta', 'IM10063388', '2', 'NEW', 'MALTA SAND', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063388_IVLAC42-PLC-MALTA-SAN-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063388_IVLAC42-PLC-MALTA-SAN-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(642, 'IVLAC42-PLC-MALTA BE-MT 600x1200 Floor Tile', 'IVLAC42-PLC-MALTA BE-MT', 'Monocotta', 'IM10063389', '2', 'NEW', 'MALTA BEIGE', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063389_IVLAC42-PLC-MALTA-BE-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063389_IVLAC42-PLC-MALTA-BE-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(643, 'IVLAC42-PLC-MALTA MIN-MT 600x1200 Floor Tile', 'IVLAC42-PLC-MALTA MIN-MT', 'Monocotta', 'IM10063390', '2', 'NEW', 'MALTA MINERAL', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063390_IVLAC42-PLC-MALTA-MIN-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063390_IVLAC42-PLC-MALTA-MIN-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(644, 'IVLAC42-PLC-FAB-WH-MT 600x1200 Floor Tile', 'IVLAC42-PLC-FAB-WH-MT', 'Monocotta', 'IM10063391', '2', 'NEW', 'FAB WHITE', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063391_IVLAC42-PLC-FAB-WH-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063391_IVLAC42-PLC-FAB-WH-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(645, 'IVLAC42-PLC-FAB KHAKHI-MT 600x1200 Floor Tile', 'IVLAC42-PLC-FAB KHAKHI-MT', 'Monocotta', 'IM10063392', '2', 'NEW', 'FAB KHAKHI', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063392_IVLAC42-PLC-FAB-KHAKHI-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063392_IVLAC42-PLC-FAB-KHAKHI-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(646, 'IVLAC42-PLC-FAB GY-MT 600x1200 Floor Tile', 'IVLAC42-PLC-FAB GY-MT', 'Monocotta', 'IM10063393', '2', 'NEW', 'FAB GREY', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063393_IVLAC42-PLC-FAB-GY-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063393_IVLAC42-PLC-FAB-GY-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(647, 'IVLAC42-PLC-FAB-CRM-MT 600x1200 Floor Tile', 'IVLAC42-PLC-FAB-CRM-MT', 'Monocotta', 'IM10063394', '2', 'NEW', 'FAB CREMA', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063394_IVLAC42-PLC-FAB-CRM-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063394_IVLAC42-PLC-FAB-CRM-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(648, 'IVLAC42-PLC-LC 100015 L-MT 600x1200 Floor Tile', 'IVLAC42-PLC-LC 100015 L-MT', 'Monocotta', 'IM10063395', '2', 'NEW', 'LC 100015 L', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063395_IVLAC42-PLC-LC-100015-L-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063395_IVLAC42-PLC-LC-100015-L-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(649, 'IVLAC42-PLC-LC 100015 D-MT 600x1200 Floor Tile', 'IVLAC42-PLC-LC 100015 D-MT', 'Monocotta', 'IM10063396', '2', 'NEW', 'LC 100015 D', 'Monocotta', '', 'Matt', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063396_IVLAC42-PLC-LC-100015-D-MT-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063396_IVLAC42-PLC-LC-100015-D-MT-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(650, 'IVLAC42-PLC-ASH HL-DMCR 600x1200 Floor Tile', 'IVLAC42-PLC-ASH HL-DMCR', 'Monocotta', 'IM10063397', '2', 'NEW', 'DREAMLINE ASH HL', 'Monocotta', '', 'Dremaline Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063397_IVLAC42-PLC-ASH-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063397_IVLAC42-PLC-ASH-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(651, 'IVLAC42-PLC-JADE HL-DMCR 600x1200 Floor Tile', 'IVLAC42-PLC-JADE HL-DMCR', 'Monocotta', 'IM10063398', '2', 'NEW', 'DREAMLINE JADE HL', 'Monocotta', '', 'Dremaline Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063398_IVLAC42-PLC-JADE-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063398_IVLAC42-PLC-JADE-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(652, 'IVLAC42-PLC- LEMON HL-DMCR 600x1200 Floor Tile', 'IVLAC42-PLC- LEMON HL-DMCR', 'Monocotta', 'IM10063399', '2', 'NEW', 'DREAMLINE LEMON HL', 'Monocotta', '', 'Dremaline Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063399_IVLAC42-PLC-LEMON-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063399_IVLAC42-PLC-LEMON-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(653, 'IVLAC42-PLC-MAVE HL-DMCR 600x1200 Floor Tile', 'IVLAC42-PLC-MAVE HL-DMCR', 'Monocotta', 'IM10063400', '2', 'NEW', 'DREAMLINE MAVE HL', 'Monocotta', '', 'Dremaline Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063400_IVLAC42-PLC-MAVE-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063400_IVLAC42-PLC-MAVE-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(654, 'IVLAC42-PLC-PISTA HL-DMCR 600x1200 Floor Tile', 'IVLAC42-PLC-PISTA HL-DMCR', 'Monocotta', 'IM10063401', '2', 'NEW', 'DREAMLINE PISTA HL', 'Monocotta', '', 'Dremaline Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063401_IVLAC42-PLC-PISTA-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063401_IVLAC42-PLC-PISTA-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(655, 'IVLAC42-PLC-PINK HL-DMCR 600x1200 Floor Tile', 'IVLAC42-PLC-PINK HL-DMCR', 'Monocotta', 'IM10063402', '2', 'NEW', 'DREAMLINE PINK HL', 'Monocotta', '', 'Dremaline Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063402_IVLAC42-PLC-PINK-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063402_IVLAC42-PLC-PINK-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(656, 'IVLAC42-PLC-SCARLET HL-DMCR 600x1200 Floor Tile', 'IVLAC42-PLC-SCARLET HL-DMCR', 'Monocotta', 'IM10063403', '2', 'NEW', 'DREAMLINE SCARLET HL', 'Monocotta', '', 'Dremaline Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063403_IVLAC42-PLC-SCARLET-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063403_IVLAC42-PLC-SCARLET-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(657, 'IVLAC42-PLC-STEEL HL-DMCR 600x1200 Floor Tile', 'IVLAC42-PLC-STEEL HL-DMCR', 'Monocotta', 'IM10063404', '2', 'NEW', 'DREAMLINE STEEL HL', 'Monocotta', '', 'Dremaline Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10063404_IVLAC42-PLC-STEEL-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10063404_IVLAC42-PLC-STEEL-HL-DMCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', ''),
(658, 'IVLAC42-PLC-TUSK-hl-DMCR 600x1200 Floor Tile', 'IVLAC42-PLC-TUSK-hl-DMCR', 'Monocotta', 'IM10064631', '2', 'NEW', 'DREAMLINE TUSK', 'Monocotta', '', 'Dremaline Carving', '', '', '600x1200', 'Floor Tiles', 'Wall Tiles', '', '', '', '', '', '', 'products/tiles/monocotta/', 'IM10064631_IVLAC42-PLC-TUSK-hl-DMCR-600x1200-Floor-Tile_Monocotta.webp', '', 'IM10064631_IVLAC42-PLC-TUSK-hl-DMCR-600x1200-Floor-Tile_Monocotta.webp', '1', '15.5 sq.ft', '27 kg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tiles_address_details`
--

CREATE TABLE `tiles_address_details` (
  `id` int(20) NOT NULL,
  `title` varchar(75) NOT NULL,
  `address` varchar(1500) NOT NULL,
  `pincode` int(10) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `tiles_city_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tiles_address_details`
--

INSERT INTO `tiles_address_details` (`id`, `title`, `address`, `pincode`, `phone`, `direction`, `tiles_city_id`) VALUES
(1, 'JSM Enterprises (NSK)', 'Archit Icon, Patil lane no 3, Big Bazar Chowl\\\\k, -College Road, -Nashik -422005', 422005, '9604702429', '', 21),
(2, 'Anjani Traders - Kalyan', 'Shop No 1 Ganeshwadi Thane -Near Ram Temple , Suchak Naka , Kalyan -Thane -421306', 421306, '9769310083', '', 29),
(3, 'ONYX ENTERPRISES', 'Plot No. 12, Lokmanya Gruhnirman Samsya, Nivaran Sansta N, Sai Nagar, Nagpur.', 440023, '9765986744', '', 19),
(4, 'Kankariya Associates - Pune', 'FLAT NO-401, PRACHI RESIDENCY, PHAZE II-S.NO1/1/A/6/123, BANER-PUNE-411045', 411045, '7709045567', '', 26),
(5, 'Mangalam Traders - Thane', 'II, Hotkash Udyognagar, -Mira Road, Thane -Thane -401104', 401104, '9821674848', '', 29),
(6, 'Shriram Tiles & Sanitary ware - Pune', 'SN 34/16/3 Marble Market -Near TATA Motors Showroom ambegaon-Pune-411046', 413101, '9822250520', '', 26),
(7, 'Shakun Marbles', 'Sr. No 41/1/8, Opp. Pune Urban Bank,Mumbai Bangalore Bypass Highway, Pune', 411046, '9325727651', '', 26),
(8, 'UNIQ TILES & SANITATION', 'S NO 29 \\\\ 12B NR KOLHATKAR AUTOMOTIVE -AMBEGAON BK -PUNE -411046', 411046, '8097106634', '', 26),
(9, 'ANTIQUE STONE & TILES', 'Shop No. G-01, Unique Sai Krupa Complex,-Jaripatka Ring Road, Jaripatka, Nagpur-NAGPUR-440014', 440014, '9579777818', '', 26),
(10, 'Raj Sales Corporation', '0, 26/4, DALMIA CHAMBER, KORADI ROAD, MANKAPUR,, NAGPUR', 440030, '9823078388', '', 29),
(11, 'Rathod Traders - Palghar', 'SHOP NO. 01, GROUND FLOOR, RAM RAHIMMANZIL, RAJ VAIBHAV BUINDING CHSL, AMBADI ROAD, SURVEY NO. 44, 45, 57,Vasai Virar, Palghar,', 401202, '7972104167', '', 25),
(12, 'Merazen Ceramic - Mumbai', 'ROOM NO 02, DAGADU BHAGAJI CHAWL, RAIPADA SCHOOL ROAD, ', 400064, '8291060091', '', 18),
(13, 'Modern Ceramic - Thane', 'SHOP NO 7,8, GROUND, A-WING , MADHAVBUNGLOWS,, SANDOR, VASAI ROAD WEST,Thane, Maharashtra', 401201, '8087399890', '', 27),
(14, 'Aryan Cera - Navi Mumbai', 'PLOT NO190, GROUND, KALAMBOLI MARBLE MARKET, SECTOR 23, KALAMBOLI', 410218, '7021889884', '', 27),
(15, 'Bath Concept - Mulund', 'GR FLOOR, SHOP NO 01 AND 02, GANESH KRUPA CHSL,, HOUSE NO 0902, PLOT NO 125, SECTOR-22, TURBHE, GAON, NAVI MUMBAI, Thane, Maharashtra, 400705', 400705, '7045982323', '', 29),
(16, 'Bellicosa - Andheri', 'KALAMBOLI-Kalamboli Marble Market-RAIGAD-410206', 410206, '9310094237', '', 27),
(17, 'Bhagwati Ceramic -  Bhiwandi', 'A 404, BHAKTI APARTMENTS,, OPP JAIN TEMPLE JAMBLI GULLY, BORIVALI W, 400092', 400092, '9820039726', '', 18),
(18, 'Bharat Tiles & Sanitary', '3, Mahalaxmi Niwas,', 400602, '9820142329', '', 28),
(19, 'Bhavya Marble Point - Kalamboli', 'Gala No. 02, Gr Flr, Thakare Compund,', 400607, '9310094237', '', 27),
(20, 'Ceramic Center -  Khoparkhairane', 'Plot No.35, Sector.12B, Shop No.01,', 400709, '9821121195', '', 22),
(21, 'Ceramic Point - Thane', 'Part Cts No.723pp, Shop No.67,, Asma Steel Indl Estate, Lbs Marg, Mulund W', 400080, '8433803375', '', 18),
(22, 'Ceramic World - Pune', 'Gala No.P-23, Laxmi Industrial Estate,, Link Road, Andheri (W)., Thane 400602', 400053, '9822545765', '', 29),
(23, 'Designo Ceramic Studio - Kalamboli', '5/350, C.G. Patil Compd., Kalyan Naka, Agra Road,, Bhiwandi 421302, Mob No-9322087930', 421302, '9890732888', '', 29),
(24, 'Divyani Enterrprises - Thane', 'Ferrous Metal Compd, Unit No.6,-Opp Om Anand Industrial Estate,Raghunath -THANE-400602', 400602, '9004222104', '', 29),
(25, 'Gurukripa Ceramics - Ambernath', 'Plot No.5/6, Marble Market,, Taloja Cross Road, Kalamboli, Navi Mumbai', 410218, '9821370831', '', 22),
(26, 'Hare Krishna Enterprises-Mum', 'Plot No.35, Sector.12B, Shop No.01,', 400709, '9821121195', '', 18),
(27, 'Hindustan Ceramics - Bhiwandi', '1439, Chandan Park, Blgd No.1,, Block No. 102/103, Agra Road,, Opp TJS Bank,Anjur Phata Bhiwandi', 421302, '9890890455', '', 29),
(28, 'Homework Luxury Tiles - Chembur', '23, PLOT NO.42/43, MARBLE MARKET,-SECTOR-23, KALAMBOLI, NAVI-MUMBAI,-KALAMBOLI-410218', 410218, '9820307788', '', 22),
(29, 'Jay Sitaram Enterprises - Turbhe', 'Ferrous Metal Compd, Unit No.6,-Opp Om Anand Industrial Estate,Raghunath -THANE-400602', 400602, '9004222104', '', 29),
(30, 'Krishna Ceramics - Thane', '10, VISHRAM APT, L.B.S. MARG', 400607, '9310094237', '', 18),
(31, 'Manibhadra Enterprises - Palghar', '126/A, Naik Nagar,L.B.S. Marg, Opp Sion Railway Yard,, Sion (W) Mumbai-400022', 400022, '9004793198', '', 18),
(32, 'Taksh Buildcon', 'SN/ 94/95, 8, Anubhav Apartment, -Paud Road, Bhusari Colony , Kothrud , Pune, -Pune-411038', 411038, '9764902623', '', 26),
(33, 'Marble Concept - Thane', 'Gr. Floor, Gala No.8, R.P Singh Cmpnd,, Tikujiniwadi Rd, Manpada, Thane-400607', 400607, '9819542516', '', 29),
(34, 'Max Ceramics - Mulund', 'sensus no T -10/X-34-4/10 copp goregaon link road -mulund -400080', 400080, '9869644065', '', 18),
(35, 'Mishra Sales Mart - Kalamboli', 'Plot No 94, Marble Market, Sec -23,, Kalamboli410218', 410218, '9819902929', '', 22),
(36, 'Moksh Ceramic Studio - Boisar', 'Shop No.19,20, Gr. Floor, Vinay Residancy,Palghar Rd, Boisar', 401501, '9049015899', '', 22),
(37, 'Neev Ceramics - Bhiwandi', '1094/4, Gala No.6, Shri Madvi Compd.', 421302, '9819829944', '', 29),
(38, 'Om Ceramic -  Kalamboli', 'Gr Floor, Plot No.188,, Marble Market Sector 23, Kalamboli, Navi Mujmbai', 410218, '8097158050', '', 22),
(39, 'Omkar Ceramics - Pune', '02, Sai Pritham Nagarai D Wing , -Shri Nagar , Rahatani -Pune -411017', 411017, '8983009991', '', 26),
(40, 'Om Shanti Minerals LLP - Boisar', 'Sy No.26/A/1, Village Gundate,Palghar 401501', 401501, '1111129325', '', 25),
(41, 'Pallavi Ceramic & Granites - Andheri', 'Shop No.1, Gurumauli CHS,D.N Nagar, Andheri (W)-400053', 400053, '9819058276', '', 18),
(42, 'Pixar Tiles - Turbhe', 'Plot No.10, Sec-23, Opp Janta Market,', 400703, '9833344235', '', 22),
(43, 'Royal Plus - Kopar Khairane', 'Plot No.6, Shop No.2, Sec No-1/A, Kopar khairane.--Navi Mumbai-400709', 400709, '9920411834', '', 22),
(44, 'R P Interior Project Pvt Ltd-MUM', '10th Flr,Unit No-1014,Awing,Kailash BusinessPark ,Veer Savarkar Marg,Vikhroli  West', 400079, '9821389837', '', 18),
(45, 'Rudraksh Impex - Dombivali', 'Dawadi, House No.80/A,, Opp Hanuman Mandir Davdigaon Dombivali, Kalyan , Thane- 421301, Mob No- 9765870033', 421203, '9702438750', '', 29),
(46, 'Shakun Tiles and Sanitation Pvt Ltd - Pune', 'SR NO 41/1/9, OPP PUNE URBAN BANK, DATTANAGAR -AMBEGAON -PUNE-411046', 411046, '8888011222', '', 26),
(47, 'Shreemeet Enterprises - Tiles', 'A1-90/3 & 4, Sector 21,, Bank of India Road,Turbhe,, Mob No-8446255113', 400075, '9969463847', '', 18),
(48, 'Signett Ceramic Plus - Thane', '93/694, Navshibai Compd, Manpada Naka,, Manpada Thane', 400607, '9870224022', '', 29),
(49, 'Sonata Enterprises - Dombivali', 'C/O ANJANEY CERAMIC, KALYAN', 421306, '9310094237', '', 29),
(50, 'Suman Cera Mart - Kalamboli', 'Plot No.56, Marble Market,', 400703, '9821080840', '', 27),
(51, 'Tile Element - Thane', 'Gr Shop No.2, Tropical Prima,-Mahatma Gandhi Road, Naupada-THNE-400602', 400602, '9819919252', '', 29),
(52, 'Universal Enterprise / Shreeji Ceramic - Malad', 'Abhishek Apt, C-101, 1st Floor,Data Mandir Rd,, Malad E-', 400097, '9310094237', '', 18),
(53, 'Vishal Trading Co. NX - Thane', '7 Silver Plaza, ESIS Road,, Opp Suryadarshan Thane', 400099, '8369199406', '', 29),
(54, 'Yash Corporation - Kandivali', '403, RONIT ARCADE, S.V ROAD,, KANDIVALI WEST, Mumbai', 400067, '9819034123', '', 18),
(55, 'MEHER TILES', 'INDIRA MARKET, WARDHA', 442001, '7152243460', '', 19),
(56, 'NEW SHRI ASHAPURA TILES', 'Plot No. 02, Shubhangi Gruha Nirman Hou Soc.-Besa Main Road, Nagpur,-NAGPUR-440037', 440037, '9325868966', '', 19),
(57, 'PARAS MARBLES', '5, Juna Bagadganj, Nagpur', 440008, '9890328805', '', 19),
(58, 'PARMARTHI TRADERS', 'Hingna Road, Takli Seem, Plot No. 16/2, 271B,, Hingna Road, Trimurti Nagar, Nagpur', 440022, '7776036702', '', 19),
(59, 'PRAVINKUMAR & COMPANY', 'Behind Durga Mandir, Plot No. 45,Postal Audit-Colony, Pratap Nagar, Nagpur, Maharastrs.-NAGPUR-440022', 440022, '9326981122', '', 19),
(60, 'SHREE ASHTAVINAYAK SALES', 'First Floor, Plot No. 81, Ramnagar Hill Road,, Gokulpeth, Nagpur.', 440010, '9607912491', '', 19),
(61, 'SHUBHAM SALES', '495, Tekdi Road, Sitabuldi, Nagpur-440012', 440012, '9326657395', '', 19),
(62, 'V.S. MAHAKALKAR SHOWROOM', 'Ground Floor, 16, Mukharji Ward,, Bhandara, Bhandara.', 441904, '9822562408', '', 19),
(63, 'Shree Sai Associates (NSK)', 'RH No.-11, Bajrang RH, Nisarg Nagar,-Opp. Reliance Petrol Pump,-Nashik-422004', 422004, '9860793712', '', 21),
(64, 'Shree Sai Traders NSK', 'LAM Road, Vihitgaon, Shop No.-28,-Mahalaxmi Plaza, Deolali Gaon,-Nashik-422401', 422401, '9960808997', '', 21),
(65, 'UNITY CERAMIC PLUS - MALAD', 'BOX-266/A, TIWARI CHAWL, NEAR SWAMI VIVEKANAND SCHOOL, APPAPADA, KURAR VILLAGE, MALAD EAST,', 400097, '8424091919', '', 18),
(66, 'Hindustan Associates', '431-A, GR FLOOR , ZULAKHA MANJIL-MAULANA AZAD ROAD , GIRGAON-MUMBAI-400004', 400004, '9819399733', '', 18),
(67, 'Mihir Ceramics - Nashik', 'Pranjali Heights,-Bhabha Nagar, Dwarka-Nashik-422011', 422011, '9890015345', '', 21),
(68, 'Om Sai Enterprises', 'S No 1653, Shel Pimpalgoan,Khed, Pune,Khed, Pune,', 410501, '8308065380', '', 26),
(69, 'Pragati Corporation', 'Plot No 56/57, Sector 23, -Marble Market , Kalamboli , Taloja-Thane-410218', 410218, '8879228953', '', 29),
(70, 'Virat Trade Link', 'Plot No.4, Sumati Sadan, Ambedkar Road, Nagpur, Nagpur', 440017, '7387003198', '', 19),
(71, 'Sun Ceramics & Alluminium', 'Shop No. 8, Dandenaik Plaza, VEH NO MH 25 AJ 6057-Barshi Naka, TQ Osmanabad LR NO 1561-Osmanabad-413501', 413501, '9422070604', '', 24),
(72, 'Shelke Agency', 'PROPERTY NO 727/5, MILKAT NO - W19000145,SHOP NO 1, A/P - RAHURI,Ahmednagar', 413705, '9421334569', '', 2),
(73, 'Sri Parram Marketing', 'S No.26, Behind Royal Steel,Near Hamy Steel, Kondhwa Bk, Pune,', 411048, '7030930004', '', 26),
(74, 'Shivam Marbles Proprietory', 'Nagar Road, Behind Bajaj Showroom,Alephata, Tal Junnar, Dist Pune', 412411, '9730173738', '', 26),
(75, 'V R Bhattad - Nashik', 'Gat No 2436/2, Near Reliance Petrol Pump,Mumbai Agra Road, Ojhar Mig, Nashik', 422206, '9860182208', '', 21),
(76, 'Mauli Traders', 'milkat, gate no-66, titoli, opp den drop, nashik, Nashik,\\nMaharashtra, 422403', 422403, '8766548404', '', 21),
(77, 'Dhandhai Electricals', 'H NO 706, GALA NO 09, ANNAPURNA COMPLEX,\\nCHANAKAPUR ROAD, ABHONA, Nashik, Maharashtra,\\n423502', 423502, '9767660242', '', 21),
(78, 'Krushna Steel', 'SHOP NO-7,8,9, KHANDERAO COMPLEX, MUMBAI AGRA\\nHIGHWAY, OZAR NIPHAD, Nashik, Maharashtra, 422206', 422206, '7744066863', '', 21),
(79, 'Jogeshwari Marketing', 'B-WING, FLAT.NO.8, SUKRUT APARTMENT, DINDORI\\nROAD, MERI MHASRUL, Nashik, Maharashtra, 422004', 422004, '9175103771', '', 21),
(80, 'Vrundavan Tiles Gallery', 'PATURKAR COMPLEX, SHOP NO 2 MORSHI, MORSHI,\\nAmravati, Maharashtra, 444905', 444905, '9766494741', '', 4),
(81, 'Om Siradi Sai Ram Tiles & Granites', '327, Jala Hobli, Yelahanka Road,', 562149, '9008774555', '', 5),
(82, 'Sai Murali Ceramics', '1ST FLOOR, NO.14, 15,, GANGOTHRI PAVITHRA PARADISE-, BENDRE NAGAR, KADIRANAHALLI, BSK 2ND STAGE-Bengaluru (Bangalore) Urban-560070', 560070, '9886618565', '', 5),
(83, 'Sushmitha Ceramics', 'SY.NO.82/1, MEDAHALLI VILLAGE, BIDARAHALLI HOBLI,', 560049, '9880443528', '', 5),
(84, 'P C Sudarshan And Co', '1/9, Ground and Third Floors, MILLIA BUILDING,, SRI NARASIMHA RAJA ROAD, City Market,, Bengaluru Urban, Karnataka, 560002', 560002, '9845047579', '', 5),
(85, 'Maruthi Ceramics', '311, 10th Main, 100 Feet Road,,-Banaswadi, Bengaluru Urban, Karnataka, 560043-Bengaluru Urban-560043', 560043, '9900211350', '', 5),
(86, 'Floor Magic', 'No.92/119, Ground Floor,, Ullal Main Road', 560056, '9964480273', '', 5),
(87, 'Brindavan Ceramics', 'No.2484J, Near Ganesha Temple, Aecs Layout A Block,, Singasandra, Bangalore 560068', 560068, '9535231354', '', 5),
(88, 'Shreyas Ceramics & Sanitary', 'NO. 23/1, GROUND , 1ST FLOOR, RAJ COMPLEX,, 80 FEET MAIN ROAD, NGEF LAYOUT, OPP. TO RELIANCE DIGITAL, NAGARBHAVI, Bengaluru Rural', 560072, '8147665593', '', 5),
(89, 'Parshwa Home Decor', 'No 85/6, YELAHANKA HOBLI, JAKKUR,-Bengaluru Urban, Karnataka, 560064-Bengaluru Urban,-560064', 560064, '7353449911', '', 5),
(90, 'Naagam Enterprises', 'No.1, Nagarasan Aracade, R M Nagar Main Road, Opp Tata Steel Yard, Ramamurthy Nagar, Bengaluru Urban, Karnataka, 560016', 560016, '9845339669', '', 5),
(91, 'Sachi Int Pro', '21, 5 th floor, BDG Lane, ranasinghpet,-bangalore, Bengaluru Urban, Karnataka,- Bengaluru Urban,-560053', 560053, '9738256943', '', 5),
(92, 'Tile Store', 'Old Sy No.48/2, New No.48/8, Agara Village', 560082, '9535888599', '', 5),
(93, 'Sri Mookambika Tiles Mart', 'No.743, 1st Floor, H K Halli, Banashankari 3rd Stage', 560085, '9611997898', '', 5),
(94, 'A.B Ceramics', 'NO 1549, Ground Floor, 5th Main Road South End Main road East End Circle-JP Nagar 3rd phase, Bengaluru Urban, Karnataka, 560078-Bengaluru Urban-560078', 560078, '9742426196', '', 5),
(95, 'Unity Ceramics', '28, SARJAPURA MAIN ROAD, DODDKANNEHALLI,Bengaluru Urban, Karnataka, 560035', 560035, '9606496278', '', 5),
(96, 'GMN Enterprises', 'NO 781 12TH CROSS WEAVERS COLONY GOTTIGERE-BANNERGHATTA ROAD BANGALORE 560083-BANGALORE -560083', 560083, '9980903929', '', 5),
(97, 'Shiv Shakti Traders', 'Shop No 9-6-349 AND 350, BVB College Road, opposite Hotel Kaveri, Karnataka, 585403', 585403, '9448604529', '', 6),
(98, 'SHREE SHIVA ENTERPRISES - KARNATAKA', 'NO.83/1, UTTRAHALLI MAIN ROAD, NEAR KRISHNAPRIYA CONVENTIONAL HALL, DR.VISHNUVARDHAN ROAD, KENGERI', 560060, '9900961518', '', 5),
(99, 'ROYAL GRANITE & MARBLE', 'No. 27/2, Sarjapura Road, Varthur Hobli, Doddakanahalli, Bangalora,Bangalore Urban', 560035, '9448383867', '', 5),
(100, 'MYR ARCADE', 'GROUND FLOOR, SHOP NO 10/11 GALI NO MAMURA NOIDA ,GAUTAM BUDH NAGAR, UTTARPRADESH-201301', 201301, '9871995003', '', 9),
(101, 'M/S Unistar Industries', '213-214, Nalgarha, Sector-145,, Noida, Gautam Buddha Nagar,, Uttar Pradesh, 201301', 201301, '7678303743', '', 9),
(102, 'M/S Rajasthan Marble and Tiles', 'D59/78-B Sigra Varanasi,, Uttar Pradesh, 221001', 221001, '9616406042', '', 32),
(103, 'M/S Shri Krishna Tiles', '0 , Pansari  Tola, Mirzapur , UP -up -UTTAR PRADESH-231001', 231001, '9415689830', '', 17),
(104, 'M/S Gaurav Marble', 'Awaleshpur,, Kandwa,, Varanasi, Uttar Pradesh, 221106', 221106, '9918880737', '', 32),
(105, 'MAHESH ENTERPRISES-AGRA', '23/235, JEONI MANDI, AGRA, Agra', 282004, '7906102163', '', 1),
(106, 'SHIV SHAKTI TRADERS', 'Garhi Mundo,, Yamunanagar, Haryana - 135003', 135003, '9815739488', '', 33),
(107, 'Awesome Ceramics', 'M/S AWESOME CERAMICS, VILLAGE UCHANA', 132001, '9215212468', '', 14),
(108, 'SCHONE VENTURES', 'FIRST FLOOR, 312/22, GALI NO. 6 E, GANDHI NAGAR, Gurgaon, Haryana, 122001', 122001, '9319110989', '', 10),
(109, 'Royal Ceramic Collection', 'Survey No.14/4B, Door No.3A,Kanniamman Nagar Main Road,Vanagaram, Chennai,', 600095, '7904882281', '', 31),
(110, 'Tile Concepts', 'No 1, Mandaveli Pillaiyar Koil Street,Nerkundram, Chennai,', 600107, '9941508080', '', 23),
(111, 'A.M Tiles', 'NO.335/2A, Alapakkam Main Road, natesan street,', 600116, '7904744081', '', 7),
(112, 'Maas Ceramics', 'Old No 198C New No 197E,Ph Road, Maduravoyal,Chennai', 600095, '9894482021', '', 30),
(113, 'SHREE MAYUR MARBLE - RAJSTHAN', 'PANCHRATAN COMPLEX, BHILWARA ROAD', 313324, '9001011623', '', 3),
(114, 'Akshat Ceramic - Indore', '1, Denu Market, Indore,, Indore, Madhya Pradesh, 452001', 452001, '9826048050', '', 12),
(115, 'Alankar Tiles Indore LLP- Indore', '11, Sitabagh Colony, Behind Regal Cinema, Indore, Madhya Pradesh, 452002', 452002, '9425062237', '', 12),
(116, 'Alf Ceramics- Indore', 'Plot No 27, Shop No 03, Ts Navlakha, Lohamandi,, Indore, Madhya Pradesh, 452001', 452001, '6262525333', '', 12),
(117, 'BALAJI TRADING COMPANY-BADNAWAR', '1, PETLAWAD ROAD, BADNAWAR,, Dhar Madhya Pradesh, 454660\\n\\n', 454660, '8435329233', '', 8),
(118, 'Chintaman Home Solution-Indore', 'LG-1, Samyak Park, 31, Park Road, Indore, -Indore, Madhya Pradesh, 452001-Indore-452001', 452001, '9165077770', '', 12),
(119, 'Gurubaksh Singh Kripal Singh-Dewas', '\\n89, Station Road, Dewas\\n, Dewas, Madhya Pradesh, 455001', 455001, '9425043113', '', 12),
(120, 'Mega Buildmart -Indore', '73-B, 1 floor, Greater Brijeshwari,, Pipiyahana Road, Indore,Madhya Pradesh, 452016', 452016, '9168000000', '', 12),
(121, 'NEW NANAKSAR STONE-INDORE', 'LASUDIYA MORI,, DEWAS NAKA,, OPP. TATA MOTORS,, A.B. ROAD,, INDORE,, Indore, Madhya Pradesh, 452005', 452005, '9981175777', '', 12),
(122, 'R Stone - Indore', '2/3,1, manavta nagar kanadiya main road, indore,, Indore, Madhya Pradesh, 452001', 452001, '9826900239', '', 12),
(123, 'Sati Aagya Sales Corporation– Indore', '18, Gulab Bag Colony, Dewas Naka, Indore, Indore, Madhya Pradesh, 452010', 452010, '9993110770', '', 12),
(124, 'Shree Ji Sanitary & Building Material– Indore', '12, Pushap Ratan Park, Bicholi Road,, Village Devguradiya, Indore, Madhya Pradesh, 452016', 452016, '8602146089', '', 12),
(125, 'Vinayak Tiles-Indore', 'Lg-6, Starlite Tower, 29- Y N Road,\\n, ndore,Indore, Madhya Pradesh, 452001', 452001, '8827785558', '', 12),
(126, 'Shiv Gori Sanitary Store', 'VPO DAIN, TEHSIL BARSAR,\\nHamirpur, Himachal Pradesh, 176042\\n5.', 176042, '9816225073', '', 11),
(127, 'Devi Enterprise', 'Devta Gadhpati Narayan Temple, JAWAN, Unnamed Road,\\nBanogi, Kullu, Himachal Pradesh, 175101', 175101, '7018089947', '', 15),
(128, 'SHEETLA TRADERS - HIMACHAL PRADESH', '287D/10, SHEETLA TRADERS, ROPA, PURANA BAZAR, Mandi,', 175019, '7018141300', '', 16),
(129, 'Anas Hardware', 'WARD NO 4, KALAFAKIRTOLA, DHAMDHAMA ROAD,\\nMILANPUR, Nalbari, Assam, 781337', 781337, '7002063535', '', 20),
(130, 'ARRTEE MARKETING', 'LAND MEASURING 6450 SQ FT, ARRTEE MARKETING,\\nVIGYAN PATH, PASCHIM BORAGAON, Kamrup\\nMetropolitan, Assam, 781033', 781033, '8876521000', '', 13),
(131, 'Aanand\\\'z Enterprises - Assam', '3, Kejriwal Complex, S J Road, Athgaon', 781001, '9864296686', '', 13),
(132, 'GB Enterprises', 'NEAR SARUSAJAI STADIUM, LOKHRA ROAD, Guwahati, Kamrup Metropolitan', 781040, '9706156991', '', 13),
(133, 'KHUSBOO TILES & SANITARY - ASSAM', 'Ground, New Mittal Godown, Behind DTO, Guwahati, Kamrup Metropolitan', 781034, '9854026194', '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tiles_city`
--

CREATE TABLE `tiles_city` (
  `city_id` int(11) NOT NULL,
  `city_name` text NOT NULL,
  `tiles_state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tiles_leads`
--

CREATE TABLE `tiles_leads` (
  `id` int(25) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `utm_source` varchar(255) NOT NULL,
  `utm_medium` varchar(255) NOT NULL,
  `utm_campaign` varchar(255) NOT NULL,
  `utm_term` varchar(255) NOT NULL,
  `utm_content` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `intrest` int(20) NOT NULL DEFAULT 2 COMMENT '1 - Intrested, 2 - Not Intrested  '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tiles_leads`
--

INSERT INTO `tiles_leads` (`id`, `sname`, `phone`, `email`, `city`, `utm_source`, `utm_medium`, `utm_campaign`, `utm_term`, `utm_content`, `timestamp`, `intrest`) VALUES
(1, 'raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai', '', '', '', '', '', '2023-04-28 12:45:12', 2),
(2, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai', '', '', '', '', '', '2023-04-28 12:45:12', 2),
(3, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Chennai', '', '', '', '', '', '2023-04-28 12:45:12', 2),
(4, 'Ankit', '9892904587', 'rajkadam7045@gmail.com', 'CCOm', '', '', '', '', '', '2023-04-28 12:45:12', 2),
(5, '', '', '', '', '', '', '', '', '', '2023-04-28 12:45:12', 2),
(6, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai', '', '', '', '', '', '2023-04-28 13:01:35', 2),
(7, 'Raj', '7045563425', 'rajkadam7045@gmail.com', 'Mumbai', '', '', '', '', '', '2023-04-28 13:02:33', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tiles_state`
--

CREATE TABLE `tiles_state` (
  `id` int(20) NOT NULL,
  `state_name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tiles_state`
--

INSERT INTO `tiles_state` (`id`, `state_name`) VALUES
(1, 'Assam'),
(2, 'Haryana'),
(3, 'Himachal Pradesh'),
(4, 'Karnataka'),
(5, 'Madhya Pradesh'),
(6, 'Maharashtra'),
(7, 'Rajasthan'),
(8, 'Tamil Nadu'),
(9, 'Uttar Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(2, 'Kary123', '$2y$10$w75uotsEuLa1vYxAuALrSeYRxMQTVOe857eaC0BlZJC3W7JPQyP7y', '2023-05-02 13:10:09'),
(4, 'ivas', '$2y$10$MnfxaStkMaoDbP2PFSKmaeRFZy8vMASnNduDVGaTYXGzxiqcRDNaG', '2023-05-18 13:39:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_details`
--
ALTER TABLE `address_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bath_fitting`
--
ALTER TABLE `bath_fitting`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `bath_fittings_leads`
--
ALTER TABLE `bath_fittings_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bath_fitting_address_details`
--
ALTER TABLE `bath_fitting_address_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bath_fitting_city`
--
ALTER TABLE `bath_fitting_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `bath_fitting_state`
--
ALTER TABLE `bath_fitting_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `become_dealer_leads`
--
ALTER TABLE `become_dealer_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `designer_hardware`
--
ALTER TABLE `designer_hardware`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `designer_hardware_address_details`
--
ALTER TABLE `designer_hardware_address_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designer_hardware_city`
--
ALTER TABLE `designer_hardware_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `designer_hardware_leads`
--
ALTER TABLE `designer_hardware_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designer_hardware_state`
--
ALTER TABLE `designer_hardware_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finish`
--
ALTER TABLE `finish`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapping`
--
ALTER TABLE `mapping`
  ADD PRIMARY KEY (`product_id`,`finish_id`);

--
-- Indexes for table `modular_kitchen`
--
ALTER TABLE `modular_kitchen`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `modular_kitchen_address_details`
--
ALTER TABLE `modular_kitchen_address_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modular_kitchen_city`
--
ALTER TABLE `modular_kitchen_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `modular_kitchen_leads`
--
ALTER TABLE `modular_kitchen_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modular_kitchen_state`
--
ALTER TABLE `modular_kitchen_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `finish` (`finish`(333));

--
-- Indexes for table `sanitaryware`
--
ALTER TABLE `sanitaryware`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sanitaryware_address_details`
--
ALTER TABLE `sanitaryware_address_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanitaryware_city`
--
ALTER TABLE `sanitaryware_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `sanitaryware_leads`
--
ALTER TABLE `sanitaryware_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanitaryware_state`
--
ALTER TABLE `sanitaryware_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiles`
--
ALTER TABLE `tiles`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tiles_address_details`
--
ALTER TABLE `tiles_address_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiles_city`
--
ALTER TABLE `tiles_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tiles_leads`
--
ALTER TABLE `tiles_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiles_state`
--
ALTER TABLE `tiles_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_details`
--
ALTER TABLE `address_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bath_fitting`
--
ALTER TABLE `bath_fitting`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `bath_fittings_leads`
--
ALTER TABLE `bath_fittings_leads`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bath_fitting_address_details`
--
ALTER TABLE `bath_fitting_address_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bath_fitting_state`
--
ALTER TABLE `bath_fitting_state`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `become_dealer_leads`
--
ALTER TABLE `become_dealer_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `designer_hardware`
--
ALTER TABLE `designer_hardware`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `designer_hardware_address_details`
--
ALTER TABLE `designer_hardware_address_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designer_hardware_leads`
--
ALTER TABLE `designer_hardware_leads`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `designer_hardware_state`
--
ALTER TABLE `designer_hardware_state`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `finish`
--
ALTER TABLE `finish`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lead`
--
ALTER TABLE `lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modular_kitchen`
--
ALTER TABLE `modular_kitchen`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `modular_kitchen_address_details`
--
ALTER TABLE `modular_kitchen_address_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modular_kitchen_leads`
--
ALTER TABLE `modular_kitchen_leads`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modular_kitchen_state`
--
ALTER TABLE `modular_kitchen_state`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanitaryware`
--
ALTER TABLE `sanitaryware`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `sanitaryware_address_details`
--
ALTER TABLE `sanitaryware_address_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sanitaryware_leads`
--
ALTER TABLE `sanitaryware_leads`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanitaryware_state`
--
ALTER TABLE `sanitaryware_state`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tiles`
--
ALTER TABLE `tiles`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=659;

--
-- AUTO_INCREMENT for table `tiles_address_details`
--
ALTER TABLE `tiles_address_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `tiles_leads`
--
ALTER TABLE `tiles_leads`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tiles_state`
--
ALTER TABLE `tiles_state`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
