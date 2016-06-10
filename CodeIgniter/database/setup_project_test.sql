-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2016 at 12:28 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `setup_project_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `person_id` int(10) NOT NULL,
  `account_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date_1` date DEFAULT NULL,
  `wife` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sex` int(1) NOT NULL DEFAULT '1',
  `positions` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `manages_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`person_id`, `account_number`, `birth_date_1`, `wife`, `sex`, `positions`, `manages_name`) VALUES
(2, '0', NULL, NULL, 1, NULL, ''),
(3, '0', NULL, NULL, 1, NULL, ''),
(4, '0', NULL, NULL, 1, NULL, ''),
(5, '0', NULL, NULL, 1, NULL, ''),
(6, '0', NULL, NULL, 1, NULL, ''),
(7, '0', NULL, NULL, 1, NULL, ''),
(8, '0', NULL, NULL, 1, NULL, ''),
(9, '0', NULL, NULL, 1, NULL, ''),
(10, '0', NULL, NULL, 1, NULL, ''),
(11, '0', NULL, NULL, 1, NULL, ''),
(12, '0', NULL, NULL, 1, NULL, ''),
(13, '0', NULL, NULL, 1, NULL, ''),
(14, '0', NULL, NULL, 1, NULL, ''),
(15, '0', NULL, NULL, 1, NULL, ''),
(16, '0', NULL, NULL, 1, NULL, ''),
(17, '0', NULL, NULL, 1, NULL, ''),
(18, '0', NULL, NULL, 1, NULL, ''),
(19, '0', NULL, NULL, 1, NULL, ''),
(20, '0', NULL, NULL, 1, NULL, ''),
(21, '0', NULL, NULL, 1, NULL, ''),
(22, '0', '2016-01-29', '', 1, '', ''),
(23, '0', NULL, NULL, 1, NULL, ''),
(24, '0', NULL, NULL, 1, NULL, ''),
(25, '0', NULL, NULL, 1, NULL, ''),
(26, '0', NULL, NULL, 1, NULL, ''),
(27, '0', NULL, NULL, 1, NULL, ''),
(28, '0', NULL, NULL, 1, NULL, ''),
(29, '0', NULL, NULL, 1, NULL, ''),
(30, '0', NULL, NULL, 1, NULL, ''),
(31, '0', NULL, NULL, 1, NULL, ''),
(32, '0', NULL, NULL, 1, NULL, ''),
(33, '0', NULL, NULL, 1, NULL, ''),
(34, '0', NULL, NULL, 1, NULL, ''),
(35, '0', NULL, NULL, 1, NULL, ''),
(36, '0', NULL, NULL, 1, NULL, ''),
(37, '0', NULL, NULL, 1, NULL, ''),
(38, '0', NULL, NULL, 1, NULL, ''),
(39, '0', NULL, NULL, 1, NULL, ''),
(40, '0', NULL, NULL, 1, NULL, ''),
(41, '0', NULL, NULL, 1, NULL, ''),
(42, '0', NULL, NULL, 1, NULL, ''),
(43, '0', NULL, NULL, 1, NULL, ''),
(44, '0', NULL, NULL, 1, NULL, ''),
(45, '0', NULL, NULL, 1, NULL, ''),
(46, '0', NULL, NULL, 1, NULL, ''),
(47, '0', NULL, NULL, 1, NULL, ''),
(48, '0', NULL, NULL, 1, NULL, ''),
(49, '0', NULL, NULL, 1, NULL, ''),
(50, '0', NULL, NULL, 1, NULL, ''),
(51, '0', NULL, NULL, 1, NULL, ''),
(52, '0', NULL, NULL, 1, NULL, ''),
(53, '0', NULL, NULL, 1, NULL, ''),
(54, '0', NULL, NULL, 1, NULL, ''),
(55, '0', NULL, NULL, 1, NULL, ''),
(56, '0', NULL, NULL, 1, NULL, ''),
(57, '0', NULL, NULL, 1, NULL, ''),
(58, '0', NULL, NULL, 1, NULL, ''),
(59, '0', NULL, NULL, 1, NULL, ''),
(60, '0', NULL, NULL, 1, NULL, ''),
(61, '0', NULL, NULL, 1, NULL, ''),
(62, '0', NULL, NULL, 1, NULL, ''),
(63, NULL, '2016-02-17', '', 1, '', ''),
(64, '0', NULL, NULL, 1, NULL, ''),
(65, '0', NULL, NULL, 1, NULL, ''),
(66, '0', '2016-04-27', '', 1, '', ''),
(67, '0', NULL, NULL, 1, NULL, ''),
(68, '0', NULL, NULL, 1, NULL, ''),
(69, '0', NULL, NULL, 1, NULL, ''),
(70, '0', NULL, NULL, 1, NULL, ''),
(71, '0', NULL, NULL, 1, NULL, ''),
(72, '0', NULL, NULL, 1, NULL, ''),
(73, '0', NULL, NULL, 1, NULL, ''),
(74, '0', '2016-04-27', '', 1, '', ''),
(75, '0', NULL, NULL, 1, NULL, ''),
(76, '0', NULL, NULL, 1, NULL, ''),
(77, '0', NULL, NULL, 1, NULL, ''),
(78, '0', NULL, NULL, 1, NULL, ''),
(79, '0', '2016-04-09', '', 1, '', ''),
(80, '0', '2016-04-09', '', 1, '', ''),
(81, '0', '2016-04-09', '', 1, '', ''),
(82, NULL, '2016-04-09', '', 1, '', ''),
(83, NULL, '2016-04-09', '', 1, '', ''),
(85, NULL, '2016-04-21', '', 1, '', ''),
(86, NULL, '2016-04-26', '', 1, '', ''),
(87, NULL, '2016-04-28', '', 1, '', ''),
(88, NULL, '2016-04-28', '', 1, '', ''),
(89, NULL, '2016-04-28', '', 1, '', ''),
(90, '0', '2016-04-28', '', 1, '', ''),
(91, '0', NULL, NULL, 1, NULL, ''),
(92, NULL, '2016-04-29', '', 1, '', ''),
(93, NULL, '2016-04-29', '', 1, '', ''),
(94, NULL, '2016-04-29', '', 1, '', ''),
(95, '0', NULL, NULL, 1, NULL, ''),
(96, '0', NULL, NULL, 1, NULL, ''),
(97, '0', NULL, NULL, 1, NULL, ''),
(98, '0', NULL, NULL, 1, NULL, ''),
(99, '0', NULL, NULL, 1, NULL, ''),
(100, '0', NULL, NULL, 1, NULL, ''),
(101, '0', '2016-05-04', '', 1, '', ''),
(102, '0', NULL, NULL, 1, NULL, ''),
(103, '0', NULL, NULL, 1, NULL, ''),
(104, '0', NULL, NULL, 1, NULL, ''),
(105, '0', NULL, NULL, 1, NULL, ''),
(106, '0', NULL, NULL, 1, NULL, ''),
(107, '0', NULL, NULL, 1, NULL, ''),
(108, '0', NULL, NULL, 1, NULL, ''),
(109, '0', NULL, NULL, 1, NULL, ''),
(110, '0', NULL, NULL, 1, NULL, ''),
(111, '0', NULL, NULL, 1, NULL, ''),
(112, '0', NULL, NULL, 1, NULL, ''),
(113, '0', NULL, NULL, 1, NULL, ''),
(114, '0', NULL, NULL, 1, NULL, ''),
(115, '0', NULL, NULL, 1, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_code` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `made_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Xuất sứ',
  `item_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost_price` decimal(15,0) NOT NULL,
  `unit_price` decimal(15,0) NOT NULL,
  `quantity` double(20,2) NOT NULL DEFAULT '0.00',
  `item_id` int(10) NOT NULL,
  `unit` int(11) NOT NULL,
  `co_hang` tinyint(1) NOT NULL DEFAULT '0',
  `sp_banchay` tinyint(1) NOT NULL DEFAULT '0',
  `sp_km` tinyint(1) NOT NULL DEFAULT '0',
  `sp_moi` tinyint(1) NOT NULL DEFAULT '0',
  `sp_tot` tinyint(1) NOT NULL DEFAULT '0',
  `sp_giamgia` tinyint(1) NOT NULL DEFAULT '0',
  `ngaytao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT '0',
  `sp_depvadoc` tinyint(1) NOT NULL DEFAULT '0',
  `count_view` int(20) DEFAULT '1',
  `like` int(11) DEFAULT '1',
  `is_now` int(10) DEFAULT '0',
  `method_cost` int(11) NOT NULL,
  `promo_price` decimal(15,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `quantity_total` double(20,2) NOT NULL DEFAULT '0.00' COMMENT 'số lượng kho tổng ',
  `quantity_first` int(11) NOT NULL DEFAULT '0',
  `taxes` float NOT NULL COMMENT 'Thuế',
  `item_kit_id` int(11) DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity_inv` int(11) NOT NULL,
  `money_inv` decimal(15,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_code`, `name`, `images`, `made_in`, `item_number`, `description`, `cost_price`, `unit_price`, `quantity`, `item_id`, `unit`, `co_hang`, `sp_banchay`, `sp_km`, `sp_moi`, `sp_tot`, `sp_giamgia`, `ngaytao`, `trangthai`, `sp_depvadoc`, `count_view`, `like`, `is_now`, `method_cost`, `promo_price`, `start_date`, `end_date`, `quantity_total`, `quantity_first`, `taxes`, `item_kit_id`, `url`, `quantity_inv`, `money_inv`) VALUES
(0, 'Chè Đào', 'xoi-xoai.png', '', '1', '-1 bát ăn cơm xôi gạo Thái đồ thơm cùng lá dứa, đậu xanh-1/2 trái xoài chín tươi, ngọt-Ăn kèm nước cốt dừa đã qua chế biến của đầu bếp Thái Lan', '19000', '55000', 0.00, 1, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'che-dao', 0, '0'),
(0, 'Chè Cam', 'che-hat-luu1.png', '', '2', '-1 bát ăn cơm xôi gạo Thái đồ thơm cùng lá dứa, đậu xanh-1/2 trái xoài chín tươi, ngọt-Ăn kèm nước cốt dừa đã qua chế biến của đầu bếp Thái Lan', '18000', '52000', 0.00, 2, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'che-cam', 0, '0'),
(0, 'Chè Canh', 'xoi-xoai1.png', '', '3', '-1 bát ăn cơm xôi gạo Thái đồ thơm cùng lá dứa, đậu xanh-1/2 trái xoài chín tươi, ngọt-Ăn kèm nước cốt dừa đã qua chế biến của đầu bếp Thái Lan', '15000', '50000', 0.00, 3, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'che-canh', 0, '0'),
(0, 'Chè Xạm', 'che-hat-luu1.png', '', '4', '-1 bát ăn cơm xôi gạo Thái đồ thơm cùng lá dứa, đậu xanh-1/2 trái xoài chín tươi, ngọt-Ăn kèm nước cốt dừa đã qua chế biến của đầu bếp Thái Lan', '12000', '50000', 0.00, 4, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, NULL, NULL, NULL, 0.00, 0, 0, NULL, '', 0, '0'),
(0, 'Chè Quýt', 'che-hat-luu1.png', '', '5', '-1 bát ăn cơm xôi gạo Thái đồ thơm cùng lá dứa, đậu xanh-1/2 trái xoài chín tươi, ngọt-Ăn kèm nước cốt dừa đã qua chế biến của đầu bếp Thái Lan', '1000', '5000', 0.00, 5, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, NULL, NULL, NULL, 0.00, 0, 0, NULL, '', 0, '0'),
(0, 'Chè Thạch', 'che-hat-luu1.png', '', '6', '-1 bát ăn cơm xôi gạo Thái đồ thơm cùng lá dứa, đậu xanh-1/2 trái xoài chín tươi, ngọt-Ăn kèm nước cốt dừa đã qua chế biến của đầu bếp Thái Lan', '25000', '50000', 0.00, 6, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '40000.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'che-thach', 0, '0'),
(0, 'Chè Xôi', 'demo-1.png', '', '7', '- Gạo nếp đem vo sạch, ngâm với nước từ 8 – 10 tiếng cho mềm. - Bạn nên ngâm trước một đêm để hôm sau làm sẽ tiện hơn. - Sau khi ngâm vo lại gạo, nhặt bỏ sạn rồi để thật ráo nước.  - Việc để ráo gạo rất quan trọng đến chất lượng của xôi.', '12000', '30000', 0.00, 7, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '12000.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'che-xoi', 0, '0'),
(0, 'Kem vani', 'demo-2.png', '', '8', '- Vẫn sử dụng nồi hấp đậu xanh, xóc gạo với một ít muối rồi đem hấp chín. - Khi xôi gần chín bạn cho một ít đường và dầu ăn vào đảo đều, đậy nắp hấp thêm khoảng 5 phút nữa là được.', '5000', '15000', 0.00, 8, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'kem-vani', 0, '0'),
(0, 'Sữa chua mít', '2015-10-05_110831.jpg', '', '9', 'aaaaaaaaaaaaaa', '10000', '25000', 0.00, 9, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '22000.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'sua-chua-mit', 0, '0'),
(0, 'Xôi xoài', 'xôi_xoài.png', 'Thái Lan', '10', 'Sản phẩm là sự kết hợp độc đáo của món xôi nước dừa lá dứa thơm ngậy, những lát xoài chín vàng ăn kèm với nước cốt dừa.', '15000', '32000', 0.00, 10, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '25000.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'xoi-xoai', 0, '0'),
(0, 'Xôi Sầu Riêng', 'xôi_sầu_riêng1.JPG', '', 'Xôi Sầu Riêng', '', '15000', '32000', 0.00, 13, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '28000.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'xoi-sau-rieng', 0, '0'),
(0, 'Kem Trà Xanh', 'kem_trà_xanh.JPG', 'Thái Lan', '12', '', '30000', '32000', 0.00, 14, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'kem-tra-xanh', 0, '0'),
(0, 'Kem dừa', 'kem_dua_1.png', 'Thái Lan', '13', '', '30000', '32000', 0.00, 15, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'kem-dua', 0, '0'),
(0, 'Kem Sầu Riêng', 'sau-rieng.jpg', 'Thái Lan', '14', 'Được làm từ Sầu Riêng tươi, nên kem Sầu riêng tại Thái 2bla có sự khác biệt hoàn toàn  so với các cửa hàng khác', '30000', '32000', 0.00, 16, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'kem-sau-rieng', 0, '0'),
(0, 'Kem Xôi', 'kem_xôi_dừa.png', '', '15', 'Kết hợp giữa xôi lá nếp thơm lừng và kem dừa béo ngậy', '30000', '32000', 0.00, 17, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'kem-xoi', 0, '0'),
(0, 'Sữa Chua', 'sau_rieng11.png', '', 'SC', '', '0', '0', 0.00, 21, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'sua-chua', 0, '0'),
(0, 'Trà sữa xanh', 'trà_xanh_sữa3.jpg', 'Thái Lan', '16', '', '20000', '22000', 0.00, 22, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'tra-sua-xanh', 0, '0'),
(0, 'Trà sữa đỏ', 'trà_sữa_đỏ.jpg', '', '17', '', '20000', '22000', 0.00, 23, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '20000.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'tra-sua-do', 0, '0'),
(0, 'Trà Táo', 'tra_tao.png', '', 'Trà Hoa quả', '', '20000', '22000', 0.00, 24, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'tra-tao', 0, '0'),
(0, 'Đá Xay Việt Quất', 'da_xay_vietquat.png', '', 'Đá Xay Việt Quất', ' Đá xay Việt Quất là sự kết hợp của vị thơm ngậy của sữa, vị chua chua và thơm lừng của Việt Quất. Bạn sẽ cảm nhận được đầy đủ khi đưa thìa đá xay vào miệng, khi mà đá từ từ tan nơi đầu lưỡi.', '20000', '22000', 0.00, 25, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'da-xay-viet-quat', 0, '0'),
(0, 'Đá Xay Táo Xanh', 'da_xay_tao_xanh.png', '', 'Đá Xay Táo Xanh', ' Đá xay Táo Xanh là sự kết hợp của vị thơm ngậy của sữa, vị chua chua và thơm lừng của Táo xanh. Bạn sẽ cảm nhận được đầy đủ khi đưa thìa đá xay vào miệng, khi mà đá từ từ tan nơi đầu lưỡi.', '20000', '22000', 0.00, 26, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'da-xay-tao-xanh', 0, '0'),
(0, 'Đá xay Vải', 'đá_xay_vải.PNG', '', 'Đá xay Vải', ' Đá xay Vải  là sự kết hợp của vị thơm ngậy của sữa, vị chua chua và thơm lừng của Vải. Bạn sẽ cảm nhận được đầy đủ khi đưa thìa đá xay vào miệng, khi mà đá từ từ tan nơi đầu lưỡi.', '20000', '22000', 0.00, 27, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'da-xay-vai', 0, '0'),
(0, 'Đá xay Dứa', 'đá_xay_dứa.PNG', '', 'Đá xay Dứa', ' Đá xay Dứa là sự kết hợp của vị thơm ngậy của sữa, vị chua chua và thơm lừng của Dứa. Bạn sẽ cảm nhận được đầy đủ khi đưa thìa đá xay vào miệng, khi mà đá từ từ tan nơi đầu lưỡi.', '20000', '22000', -1.00, 28, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', -1.00, 0, 0, NULL, 'da-xay-dua', 0, '0'),
(0, 'Đá xay Dâu', 'đá_xay_dâu.JPG', '', 'Đá xay Dâu', ' Đá xay Dâu  là sự kết hợp của vị thơm ngậy của sữa, vị chua chua và thơm lừng của Dâu tây. Bạn sẽ cảm nhận được đầy đủ khi đưa thìa đá xay vào miệng, khi mà đá từ từ tan nơi đầu lưỡi.', '20000', '22000', 0.00, 29, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'da-xay-dau', 0, '0'),
(0, 'Đá xay Xoài', 'đá_xay_xoài.JPG', '', 'Đá xay Xoài', ' Đá xay xoài  là sự kết hợp của vị thơm ngậy của sữa, vị chua chua và thơm lừng đặc trưng của Xoài. Bạn sẽ cảm nhận được đầy đủ khi đưa thìa đá xay vào miệng, khi mà đá từ từ tan nơi đầu lưỡi.', '20000', '22000', -1.00, 30, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', -1.00, 0, 0, NULL, 'da-xay-xoai', 0, '0'),
(0, 'Đá xay Blu hawaii', 'đá_xay_bluhawai.JPG', '', 'Đá xay Blu hawaii', 'Blu ha waii là sự kết hợp của vị thơm ngậy của sữa, vị tê tê của soda và thơm lừng của rượu rum. Bạn sẽ cảm nhận được đầy đủ khi đưa thìa đá xay vào miệng, khi mà đá từ từ tan nơi đầu lưỡi.', '20000', '22000', 0.00, 31, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'da-xay-blu-hawaii', 0, '0'),
(0, 'Bánh Rainbow', 'banh_bay_mau.png', '', 'Bánh Rainbow', '', '20000', '20000', -1.00, 32, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', -1.00, 0, 0, NULL, 'banh-rainbow', 0, '0'),
(0, 'Bánh Chuối', 'banh_chuoi_10k.png', '', 'Bánh Chuối', '', '10000', '10000', -1.00, 33, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', -1.00, 0, 0, NULL, 'banh-chuoi', 0, '0'),
(0, 'Bánh kem lớp trà xanh', 'bánh_lớp_trà_xanh.png', '', 'Bánh kem lớp trà xanh', '', '15000', '15000', -2.00, 34, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', -2.00, 0, 0, NULL, 'banh-kem-lop-tra-xanh', 0, '0'),
(0, 'Bánh Cupcake', 'banh_mufil_10k.png', '', 'Bánh Cupcake', '', '10000', '10000', -100.00, 35, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', -100.00, 0, 0, NULL, 'banh-cupcake', 0, '0'),
(0, 'Bánh socola', 'bánh_socola.png', '', 'Bánh socola', '', '20000', '20000', -1.00, 36, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', -1.00, 0, 0, NULL, 'banh-socola', 0, '0'),
(0, 'Bánh trứng nướng khoai môn', 'khoai_mon.png', '', 'Bánh trứng nướng khoai môn', '', '12000', '12000', 1.00, 37, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 1.00, 0, 0, NULL, 'banh-trung-nuong-khoai-mon', 0, '0'),
(0, 'Bánh trứng nướng lá dứa', 'banh_trung_sua.png', '', 'Bánh trứng nướng lá dứa', '', '12000', '12000', 0.00, 38, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'banh-trung-nuong-la-dua', 0, '0'),
(0, 'Bánh Su kem', 'IMG_20160117_1.png', '', 'Bánh Su kem', '', '15000', '15000', -3.00, 39, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', -3.00, 0, 0, NULL, 'banh-su-kem', 0, '0'),
(0, 'Chè Thái', 'che_thai.png', '', 'Chè Thái', '', '20000', '22000', -100.00, 40, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', -100.00, 0, 0, NULL, 'che-thai', 0, '0'),
(0, 'Bánh trà xanh', 'banh_tra_xanh.png', '', 'Bánh trà xanh', '', '12000', '15000', 0.00, 41, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'banh-tra-xanh', 0, '0'),
(0, 'Bánh cafe', 'banh_cafe_15k.png', '', 'Bánh cafe', '', '12000', '15000', -4.00, 42, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '14000.00', '2016-01-01', '2017-01-01', -4.00, 0, 0, NULL, 'banh-cafe', 0, '0'),
(0, 'Bim bim que', 'atori.jpg', 'Thái Lan', 'Bim bim que', 'Món ăn vặt được sản xuất từ Thái Lan có 6 vị: Cá hồi, tảo biển, tôm, rau, gà cay.', '5000', '5000', 0.00, 43, 4, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'bim-bim-que', 0, '0'),
(0, 'Mực bento', 'bento.jpg', '', 'Mực bento', 'Món ăn vặt được sản xuất từ Thái Lan có 3 vị: cay vừa, cay và cay xé lưỡi', '6000', '6000', 0.00, 44, 4, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'muc-bento', 0, '0'),
(0, 'Cầy Thót (Gà Chiên)', 'IMG_6053.jpg', 'Thái Lan', 'Cầy Thót (Gà Chiên)', 'Vị giòn của bột bao ngoài, vị ngọt của gà, cay của gia vị tạo nên một món ăn đặc biệt. Thử một lần nhớ mãi.', '10000', '12000', 0.00, 45, 2, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'cay-thot-(ga-chien)', 0, '0'),
(0, 'Chè củ năng', 'DSC_8061.JPG', 'Thái Lan', 'Chè củ năng', 'Chè Củ Năng - nguyên liệu chế biến chính là củ năng (củ mã thầy ở miền bắc). Điểm đặc biệt của món ăn chính là cách pha chế mầu của người đầu bếp. Màu của món ăn được là hoàn toàn từ thiên nhiên đó là từ củ Dền và lá Dứa.\nVào mùa hè, món chè không những ă', '20000', '22000', 0.00, 46, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'che-cu-nang', 0, '0'),
(0, 'Hoành Thánh Chiên', 'hoành_thanh_chiên.jpg', 'Thái Lan', 'Hoành Thánh Chiên', 'Hoành thánh chiên là món ăn đặc biệt. Bột mì được làm vỏ để bọc nhân thịt bên trong. Khi ăn chấm nước mắm chua ngọt.', '25000', '28000', 0.00, 47, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'hoanh-thanh-chien', 0, '0'),
(0, 'Khoai Tây Chiên', 'khoai_tay_chien.jpg', '', 'Khoai Tây Chiên', 'Khoai tây sau khi sơ chế qua nhiều công đoạn được chiên giòn. Chấm thêm một chút tương ớt, chỉ đơn giản như vậy cũng trở thành một món ăn vặt không thể thiếu rồi.\n', '26000', '28000', 0.00, 48, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'khoai-tay-chien', 0, '0'),
(0, 'Kha Nùm Băng', 'kha_nùm_băng.jpg', '', 'Kha Nùm Băng', 'Kha Nùm băng là món ăn không thể thiếu trên đường phố Thái Lan. Được chế biến dưới bàn tay tài hoa của người đầu bếp chuối tươi kết hợp với  bột mì đã tạo nên một món bánh đặc biệt. Khi ăn chấm một chút sữa đặc - hương vị này khiến bạn một lần thử nhớ mãi', '12000', '12000', 0.00, 49, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'kha-num-bang', 0, '0'),
(0, 'Mù Thót', 'Mù_Thót.png', 'Thái Lan', 'Mù Thót', 'Là món ăn đặc trưng của người Thái Lan. Đó là sự kết hợp của xôi và thịt rán.\nĐiều đặc biệt là thịt được làm tuyển lựa từ thịt thăn ngon nhất và được tẩm ướt các loại rau gia vị đặc biệt. Và 1 sức hút của món ăn đó chính là nước chấm. Loại nước chấm  đầy ', '26000', '32000', 1.00, 50, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 1.00, 0, 0, NULL, 'mu-thot', 0, '0'),
(0, 'Kha nẻo sây kot', 'Khao_nẻo_sây_kọt_11.png', '', 'Kha nẻo sây kot', 'Là món ăn đặc trưng của người Thái Lan. Đó là sự kết hợp của xôi và xúc xích.\nĐiều đặc biệt là xúc xích được làm tuyển lựa từ những loại thịt ngon nhất và được tẩm ướt các loại rau gia vị đặc biệt chỉ có ở Thái Lan. Và 1 sức hút của món ăn đó chính là nướ', '32000', '32000', 0.00, 51, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'kha-neo-say-kot', 0, '0'),
(0, 'Soda Xí Muôi', 'soda_xí_muội.JPG', 'Thái Lan', 'Soda Xí Muôi', 'Soda xí muội  là sự kết hợp của vị xí muội và soda  loại nước uống đặc biệt có vị chua chua thơm ngất ngây và tê tê nơi đầu lưỡi. Đây chính là loại nước uống không thể thiếu trong mùa hè.', '20000', '22000', 0.00, 52, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'soda-xi-muoi', 0, '0'),
(0, 'Trà Đào', 'trà_đào.png', 'Thái Lan', 'Trà Đào', 'Trà Đào  là sự kết hợp hòa quyện của vị trà đỏ, sữa tươi và nước sốt Đào. \nLoại nước uống đặc biệt này đã tạo nên cơn sốt của hè 2015.', '20000', '22000', 0.00, 53, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'tra-dao', 0, '0'),
(0, 'Trà Chanh Xanh', 'trà_chanh_xanh.JPG', 'Thái Lan', 'Trà Chanh Xanh', 'Trà Chanh xanh  là sự kết hợp của vị Chanh và nước trà thái loại đặc biệt  tạo nên một loại uống giải khát  có vị chua chua của chanh và thơm ngất ngây  của trà.', '20000', '22000', 0.00, 54, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'tra-chanh-xanh', 0, '0'),
(0, 'Soda Táo xanh', 'soda_táo_xanh.JPG', '', 'Soda Táo xanh', 'Soda Táo xanh  là sự kết hợp của vị táo xanh và soda  loại nước uống đặc biệt có vị chua chua thơm ngất ngây và tê tê nơi đầu lưỡi. Đây chính là loại nước uống không thể thiếu trong mùa hè.', '20000', '22000', 0.00, 55, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'soda-tao-xanh', 0, '0'),
(0, 'Soda Kola', 'soda_kola.JPG', 'Thái Lan', 'Soda Kola', 'Soda Kola  là sự kết hợp của vị kola và soda loại nước uống đặc biệt có vị ga thơm ngất ngây và tê tê nơi đầu lưỡi. Loại nước uống này sẽ sẽ hoàn hảo hơn khi bạn dùng thêm bánh ngọt.', '20000', '22000', 0.00, 56, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 0.00, 0, 0, NULL, 'soda-kola', 0, '0'),
(0, 'Soda Dâu', 'soda_dâu.JPG', '', 'Soda Dâu', 'Ai mà bị nghiện vị dâu thì không nên bỏ qua loại nước uống này, không chỉ có vị đặc trưng, mùi đặc trưng mà cái cảm giác nước ga trong lưỡi khi uống mới chính là sự độc đáo cần khám phá ', '20000', '22000', 11.00, 57, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 11.00, 0, 0, NULL, 'soda-dau', 0, '0'),
(0, 'Soda Đào', 'soda_đào.JPG', 'Thái Lan', 'Soda Đào', 'Vị Đào chua thanh, thơm không nồng kết hợp với soda tê tê đầu lưỡi. Là cảm giác không thể chối từ :)', '20000', '22000', 2.00, 58, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 2.00, 0, 0, NULL, 'soda-dao', 0, '0'),
(0, 'Soda Blu hawaii', 'IMG_2182.PNG', '', 'Soda Blu hawaii', 'Cảm giác tê tê đầu lưỡi và mát lạnh từng cơ quan, cảm giác thưởng thức đó là khoảnh khắc không thể không thử trong những ngày hè', '20000', '22000', 8.00, 59, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 8.00, 0, 0, NULL, 'soda-blu-hawaii', 0, '0'),
(0, 'Soda Dứa', 'soda_đào1.JPG', '', 'Soda Dứa', 'Đó là sự kết hợp tuyệt vời của Soda, Nước ép dứa, một chút sữa tươi thêm vài giọt cốt chanh. Hẳn là sự khác biệt phải không nào ', '20000', '22000', 3.00, 60, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 3.00, 0, 0, NULL, 'soda-dua', 0, '0'),
(0, 'Đá xay Chanh leo', 'đá_xay_chanh_leo.PNG', 'Thái Lan', 'Đá xay Chanh leo', ' Đá xay Chanh leo là sự kết hợp của vị thơm ngậy của sữa, vị chua chua và thơm lừng của chanh leo. Bạn sẽ cảm nhận được đầy đủ khi đưa thìa đá xay vào miệng, khi mà đá từ từ tan nơi đầu lưỡi.', '20000', '22000', 1.00, 61, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '0.00', '1969-01-01', '1969-01-01', 1.00, 0, 0, NULL, 'da-xay-chanh-leo', 0, '0'),
(0, 'Cá Viên Chiên', 'ca_vien_chien_2.png', 'Thái Lan', 'Cá Viên Chiên', 'Món cá viên chiên dùng kèm tương ớt và sốt riêng của Thái 2bla luôn được rất nhiều người yêu thích bởi hương vị thơm ngon, hấp dẫn vô cùng đặc trưng.', '20000', '22000', 2.00, 62, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '21000.00', '2016-01-01', '2017-01-01', 2.00, 0, 0, NULL, 'ca-vien-chien', 0, '0'),
(0, 'aaaaaaaaaaaa', 'Desert2.jpg', '', 'aaaaa', '', '100000', '200000', 0.00, 63, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '150000.00', '2016-05-01', '2016-05-31', 0.00, 0, 0, NULL, 'aaaaaaaaaaaa', 0, '0'),
(0, 'MHMOI', '', '', 'MHMOI', '', '12', '25', -3.00, 64, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '20.00', '2016-04-09', '2017-01-01', -3.00, 0, 0, NULL, 'mhmoi', 0, '0'),
(0, 'mmm1', '', 'china', 'mat hang m', '', '25', '30', -5.00, 65, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '27.00', '2016-01-02', '2017-01-01', -5.00, 0, 0, NULL, 'mmm1', 0, '0'),
(0, 'mh1', '', '01', 'hang1', '', '20000', '25000', -4.00, 66, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '22000.00', '2016-01-01', '2017-01-01', -4.00, 0, 0, NULL, 'mh1', 0, '0'),
(0, 'kk', '', '', 'klk', '', '12', '15', -100.00, 67, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '13.00', '2016-03-03', '2016-06-20', -100.00, 0, 0, NULL, 'kk', 0, '0'),
(0, 'mặt hàng 001', 'Koala5.jpg', '', 'MH 001 3516', '', '20000', '25000', -10.00, 68, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '22000.00', '2016-05-02', '2016-06-06', -10.00, 0, 0, NULL, 'mat-hang-001', 0, '0'),
(0, 'laptop dell latitide', '', '', 'mh new pro', '', '13000000', '18000000', 0.00, 69, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '16000000.00', '2016-05-03', '2016-05-31', 0.00, 0, 0, NULL, 'laptop-dell-latitide', 0, '0'),
(0, '1MH', 'idcs1426.jpg', '', '1MH', '', '100000', '200000', 0.00, 70, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '150000.00', '2016-01-01', '2017-01-01', 0.00, 0, 0, NULL, '1mh', 0, '0'),
(0, '2MH', '', '', '2MH', '', '100000', '200000', 0.00, 71, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '150000.00', '2016-01-01', '2016-05-04', 0.00, 0, 0, NULL, '2mh', 0, '0'),
(0, 'MH2', '', '', 'MH2', '', '100000', '100000', 6.00, 72, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '150000.00', '2016-01-02', '2016-05-05', 6.00, 0, 0, NULL, 'mh2', 0, '0'),
(0, '3T', '', '', '3T', '', '100000', '200000', 0.00, 73, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '180000.00', '2016-01-04', '2016-01-04', 0.00, 0, 0, NULL, '3t', 0, '0'),
(0, '4T', '', '', '4T', '', '100000', '200000', 12.00, 74, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '190000.00', '2016-05-04', '2016-05-04', 12.00, 0, 0, NULL, '4t', 0, '0'),
(0, '6T', 'Koala5.jpg', '', '6T', '', '10000', '30000', 7.00, 75, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, '20000.00', '2016-05-03', '2016-05-06', 7.00, 0, 0, NULL, '6t', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) DEFAULT NULL COMMENT 'Số máy bàn',
  `address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `person_id` int(10) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`first_name`, `last_name`, `phone`, `address_1`, `person_id`, `birth_date`, `password`) VALUES
('Lê ', 'Nam Admin', '', 'Ba Đình', 1, '2013-06-01', ''),
('Tuan', '0', NULL, 'Thai Thinh', 2, NULL, ''),
('Trần Tuấn Dũng', '0', NULL, 'Thái Thịnh', 3, NULL, ''),
('Trần Tuấn Dũng', '0', NULL, 'Thái Thịnh', 4, NULL, ''),
('Hiên', '0', NULL, 'HN', 5, NULL, ''),
('Nguyen', '0', NULL, 'Thai Thinh', 6, NULL, ''),
('Hiên', '0', NULL, 'Đội Cấn', 7, NULL, ''),
('', '0', NULL, '', 8, NULL, ''),
('Hiên Test', '0', NULL, 'HY', 9, NULL, ''),
('Hiên 1', '0', NULL, 'HY', 10, NULL, ''),
('nhung', '0', NULL, '12 nguyễn Xiển', 11, NULL, ''),
('', '0', NULL, '', 12, NULL, ''),
('nhung', '0', NULL, 'cầu giấy', 13, NULL, ''),
('Thu Hương', '0', NULL, 'HN', 14, NULL, ''),
('abc', '0', NULL, 'bca', 15, NULL, ''),
('Lan', '0', NULL, 'HY', 16, NULL, ''),
('Tao', '0', NULL, 'A2CN8', 17, NULL, ''),
('Tao', '0', NULL, 'A2CN8', 18, NULL, ''),
('0', '0', NULL, '0', 19, NULL, ''),
('Huệ', '0', NULL, 'HN', 20, NULL, ''),
('Zun', '0', NULL, 'Thai Thinh', 21, NULL, ''),
('Trần Tuấn', 'Dũng', '0', 'Thai Thinh', 22, '2000-01-29', ''),
('', '0', NULL, '', 23, NULL, ''),
('', '0', NULL, '', 24, NULL, ''),
('', '0', NULL, '', 25, NULL, ''),
('', '0', NULL, '', 26, NULL, ''),
('Hương', '0', NULL, 'HN', 27, NULL, ''),
('Hà', '0', NULL, 'hy', 28, NULL, ''),
('Test 1', '0', NULL, 'Thai Thinh', 29, NULL, ''),
('Tuan', '0', NULL, 'Thai Ha', 30, NULL, ''),
('aaaaaa', '0', NULL, 'aaaaa', 31, NULL, ''),
('Zun', '0', NULL, 'Thai Thinh', 32, NULL, ''),
('Zun', '0', NULL, 'Thai Thinh', 33, NULL, ''),
('Zun', '0', NULL, 'Thai Thinh', 34, NULL, ''),
('Zun', '0', NULL, 'Thai Thinh', 35, NULL, ''),
('Zun', '0', NULL, 'Thai Thinh', 36, NULL, ''),
('Zun', '0', NULL, 'Thai Thinh', 37, NULL, ''),
('Zun', '0', NULL, 'Thai Thinh', 38, NULL, ''),
('Zun', '0', NULL, 'Thai Thinh', 39, NULL, ''),
('Trần Tuấn Dũng', '0', NULL, 'Thai Thinh', 40, NULL, ''),
('Nguyen', '0', NULL, 'Thai Thinh', 41, NULL, ''),
('ewrwe', '0', NULL, 'e', 42, NULL, ''),
('Zun', '0', NULL, 'Thai Thinh', 43, NULL, ''),
('3', '0', NULL, '3', 44, NULL, ''),
('Trần Tuấn Dũng', '0', NULL, 'Thai Thinh', 45, NULL, ''),
('Nguyen', '0', NULL, 'Thai Thinh', 46, NULL, ''),
('Minh', '0', NULL, 'Thai Thinh', 47, NULL, ''),
('Yeah', '0', NULL, 'Thai Thinh', 48, NULL, ''),
('Nguyen', '0', NULL, 'Thai Thinh', 49, NULL, ''),
('4', '0', NULL, '3', 50, NULL, ''),
('2', '0', NULL, '2', 51, NULL, ''),
('tuan', '0', NULL, 'Thai Thinh', 52, NULL, ''),
('Hoàng Văn Thịnh', '0', NULL, '25 nguyễn Du ', 53, NULL, ''),
('Nguyễn Đình vinh', '0', NULL, 'Số 2 Hoàng Diệu ', 54, NULL, ''),
('Hoàng Văn mạnh', '0', NULL, 'Số 8 Hoàng Quốc Việt', 55, NULL, ''),
('Nguyễn hải Yến', '0', NULL, 'Số 2 Nguyễn Trãi ', 56, NULL, ''),
('Đinh ngọc vinh', '0', NULL, 'Số 2 Hoàng Diệu', 57, NULL, ''),
('Hoàng Hải Minh', '0', NULL, 'Số 2 Nguyễn Trãi', 58, NULL, ''),
('Như Hiên', '0', NULL, 'Mỹ Hào', 59, NULL, ''),
('Hiên Vũ', '0', NULL, 'MH', 60, NULL, ''),
('Hoàng hải', '0', NULL, '45 Hai Bà Trưng - Hà Nội', 61, NULL, ''),
('Hoàng khanh', '0', NULL, '5 Nguyễn Xiển', 62, NULL, ''),
('hoàng', 'hải', '0', '', 63, '2016-02-17', ''),
('hoàng văn hải', '0', NULL, '78 nguyễn khang -hà nội', 64, NULL, ''),
('Nguyễn Hải Dâu', '0', NULL, '2 hàng chuối', 65, NULL, ''),
('Hoàng Hoàng', '0', '0', 'Hai bà trưng', 66, '2016-04-27', ''),
('Đinh Văn Thanh', '0', NULL, 'Số 78 Nguyễn Khoái - Hai Bà Trưng ', 67, NULL, ''),
('Nguyễn Thị Khang', '0', NULL, 'Số 7 , Ngọc Hồi , Đống Đa', 68, NULL, ''),
('Nguyễn Thu Anh', '0', NULL, 'Số 2 Đội Cấn - Ba Đình', 69, NULL, ''),
('Hoàng Anh', '0', NULL, 'Số 2 Đào Tấn - Hải Dương', 70, NULL, ''),
('nhung', '0', NULL, 'nam từ liêm', 71, NULL, ''),
('nhung xinh', '0', NULL, 'nam từ liêm', 72, NULL, ''),
('Hoàng Dung', '0', NULL, 'Ba Đình', 73, NULL, ''),
('hoàng văn hải', '0', '0', 'Hạnh', 74, '2016-04-27', ''),
('Đinh A', '0', NULL, 'Số 2 Cầu Giấy', 75, NULL, ''),
('Đinh Hanh Nguyễn Mai', '0', NULL, 'Số 4 Hoàng Minh Giám - Hai Bà Trưng', 76, NULL, ''),
('hoàng thanh', '0', NULL, '23 Nguyễn Huệ - Hải Phòng', 77, NULL, ''),
('Minh Ngọc', '0', NULL, 'Sô 3 Hai Bà Trưng', 78, NULL, ''),
('Hoàng', 'Linh', '0', '179 đội cấn', 79, '2016-04-09', ''),
('thu hương', 'oooo', '0', '195 Đội cấn', 80, '2016-04-09', ''),
('Lê Quỳnh', 'Trâm', '0', '44 Hào Nam, P. Ô Chợ Dừa, Q. Đống Đa', 81, '2016-04-09', ''),
('ádasd', 'a', '0', '', 82, '2016-04-09', ''),
('a', '0', '0', '', 83, '2016-04-09', ''),
(' aaaaaaaaaaaa', '', NULL, '', 84, '2016-04-15', ''),
('zzzzzzzzzzzzz', 'zzzzzzzzzzzzzzzzzzzzz', '0', '', 85, '2016-04-21', ''),
('nguyen an', 'a', '0', '', 86, '2016-04-26', ''),
('dohue', 'huedo', '0', '', 87, '2016-04-28', ''),
('dolananh', 'dolananh', '0', '', 88, '2016-04-28', ''),
('a', 'a', '0', '', 89, '2016-04-28', ''),
('a', '0', '0', 'a', 90, '2016-04-28', ''),
(' dolan', '0', NULL, '  a', 91, NULL, ''),
('khách hàng test search', '11111', '0', '', 92, '2016-04-29', ''),
('hoa', 'Hồng', '0', '', 93, '2016-04-29', ''),
('su su', 'su', '0', '', 94, '2016-04-29', ''),
('Đỗ', '0', NULL, 'Mai Dịch -Hà Nội', 95, NULL, ''),
('q', '0', NULL, 'q', 96, NULL, ''),
('ten 1', '0', NULL, '1', 97, NULL, ''),
('ưeqwe', '0', NULL, 'ewqeqw', 98, NULL, ''),
('qqqq', '0', NULL, 'qqqqq', 99, NULL, ''),
('le van hai', '0', NULL, 'ha noi', 100, NULL, ''),
('ten 2', '0', '0', '1', 101, '2016-05-04', ''),
('Đỗ', '0', NULL, 'Mai Dịch -Hà Nội', 102, NULL, ''),
('bờm', '0', NULL, 'bờm', 103, NULL, ''),
('Đỗ', '0', NULL, 'Mai Dịch -Hà Nội', 104, NULL, ''),
('le hai', '0', NULL, 'hai duong', 105, NULL, ''),
('ten', '0', NULL, '1', 106, NULL, ''),
('aaaaaaaaaaa', '0', NULL, 'dddddddd', 107, NULL, ''),
('11111111', '0', NULL, '222222222222', 108, NULL, ''),
('ten 3', '0', NULL, '11', 109, NULL, ''),
('222222222222', '0', NULL, '22222222222222', 110, NULL, ''),
(' d', '0', NULL, 'd', 111, NULL, ''),
('dohue', '0', NULL, 'd', 112, NULL, ''),
('ten 6', '0', NULL, '1', 113, NULL, ''),
('ten 7', '0', NULL, '1', 114, NULL, ''),
('h', '0', NULL, 'hue', 115, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_time` date NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_money` decimal(15,2) NOT NULL DEFAULT '0.00',
  `actual_money` decimal(15,2) NOT NULL DEFAULT '0.00',
  `items_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_time`, `customer_id`, `sale_id`, `payment_type`, `discount_money`, `actual_money`, `items_id`) VALUES
('2016-01-20', 2, 1, 'Tiền mặt:116000', '0.00', '116000.00', ''),
('2016-01-20', 3, 2, 'Tiền mặt:128000', '0.00', '128000.00', ''),
('2016-01-20', 4, 3, 'Tiền mặt:64000', '0.00', '64000.00', ''),
('2016-01-20', 5, 4, 'Tiền mặt:64000', '0.00', '64000.00', ''),
('2016-01-21', 6, 5, 'Tiền mặt:288000', '0.00', '288000.00', ''),
('2016-01-21', 7, 6, 'Tiền mặt:64000', '0.00', '64000.00', ''),
('2016-01-21', 9, 7, 'Tiền mặt:96000', '0.00', '96000.00', ''),
('2016-01-22', 10, 8, 'Tiền mặt:96000', '0.00', '96000.00', ''),
('2016-01-22', 11, 9, 'Tiền mặt:132000', '0.00', '132000.00', ''),
('2016-01-22', 12, 10, 'Tiền mặt:220000', '0.00', '220000.00', ''),
('2016-01-23', 13, 11, 'Tiền mặt:296000', '0.00', '296000.00', ''),
('2016-01-23', 14, 12, 'Tiền mặt:78000', '0.00', '78000.00', ''),
('2016-01-25', 15, 13, 'Tiền mặt:44000', '0.00', '44000.00', ''),
('2016-01-26', 16, 14, 'Tiền mặt:110000', '0.00', '110000.00', ''),
('2016-01-26', 17, 15, 'Tiền mặt:104000', '0.00', '104000.00', ''),
('2016-01-27', 20, 16, 'Tiền mặt:66000', '0.00', '66000.00', ''),
('2016-01-27', 21, 17, 'Tiền mặt:131000', '0.00', '131000.00', ''),
('2016-01-27', 22, 18, 'Tiền mặt: 132,000<br />', '0.00', '132000.00', ''),
('2016-01-27', 25, 19, 'Tiền mặt: 440,000<br />', '0.00', '440000.00', ''),
('2016-01-29', 27, 20, 'Tiền mặt:43000', '0.00', '43000.00', ''),
('2016-01-29', 28, 21, 'Tiền mặt:66000', '0.00', '66000.00', ''),
('2016-01-29', 29, 22, 'CKNH: 110,000<br />', '0.00', '110000.00', ''),
('2016-01-29', 30, 23, 'Tiền mặt:22000', '0.00', '22000.00', ''),
('2016-01-31', 31, 24, 'Tiền mặt:22000', '0.00', '22000.00', ''),
('2016-02-03', 32, 25, 'Tiền mặt:44000', '0.00', '44000.00', ''),
('2016-02-03', 40, 26, 'Tiền mặt:44000', '0.00', '44000.00', ''),
('2016-02-03', 41, 27, 'Tiền mặt:44000', '0.00', '44000.00', ''),
('2016-02-03', 42, 28, 'Tiền mặt:22000', '0.00', '22000.00', ''),
('2016-02-03', 43, 29, 'Tiền mặt:44000', '0.00', '44000.00', ''),
('2016-02-03', 44, 30, 'Tiền mặt:132000', '0.00', '132000.00', ''),
('2016-02-03', 45, 31, 'Tiền mặt:65000', '0.00', '65000.00', ''),
('2016-02-03', 46, 32, 'Tiền mặt:44000', '0.00', '44000.00', ''),
('2016-02-03', 47, 33, 'Tiền mặt: 64,000<br />', '0.00', '64000.00', ''),
('2016-02-03', 48, 34, 'Tiền mặt:64000', '0.00', '64000.00', ''),
('2016-02-03', 49, 35, 'Tiền mặt:21000', '0.00', '21000.00', ''),
('2016-02-03', 50, 36, 'Tiền mặt:88000', '0.00', '88000.00', ''),
('2016-02-03', 51, 37, 'Tiền mặt:88000', '0.00', '88000.00', ''),
('2016-02-03', 52, 38, 'Tiền mặt: 32,000<br />', '0.00', '32000.00', ''),
('2016-02-16', 53, 39, 'Tiền mặt:44000', '0.00', '44000.00', ''),
('2016-02-16', 54, 40, 'Tiền mặt: 154,000<br />', '0.00', '154000.00', ''),
('2016-02-16', 55, 41, 'Tiền mặt: 22,000<br />', '0.00', '22000.00', ''),
('2016-02-16', 56, 42, 'Tiền mặt: 44,000<br />', '0.00', '44000.00', ''),
('2016-02-16', 57, 43, 'Tiền mặt:43000', '0.00', '43000.00', ''),
('2016-02-16', 58, 44, 'Tiền mặt: 44,000<br />', '0.00', '44000.00', ''),
('2016-02-16', 59, 45, 'Tiền mặt:44000', '0.00', '44000.00', ''),
('2016-02-16', 60, 46, 'Tiền mặt:43000', '0.00', '43000.00', ''),
('2016-02-17', 61, 47, 'Tiền mặt: 22,000<br />', '0.00', '22000.00', ''),
('2016-02-17', 62, 48, 'Tiền mặt:25000', '0.00', '25000.00', ''),
('2016-02-22', 64, 49, 'Tiền mặt: 22,000<br />', '0.00', '22000.00', ''),
('2016-02-22', 65, 50, 'Tiền mặt:22000', '0.00', '22000.00', ''),
('2016-02-22', 66, 51, 'Tiền mặt: 22,000<br />', '0.00', '22000.00', ''),
('2016-02-24', 67, 52, 'Tiền mặt: 22,000<br />', '0.00', '22000.00', ''),
('2016-02-24', 68, 53, 'Tiền mặt: 22,000<br />', '0.00', '22000.00', ''),
('2016-02-25', 69, 54, 'Tiền mặt: 44,000<br />', '0.00', '44000.00', ''),
('2016-02-25', 70, 55, 'Tiền mặt:88000', '0.00', '88000.00', ''),
('2016-02-25', 71, 56, 'Tiền mặt:66000', '0.00', '66000.00', ''),
('2016-02-25', 72, 57, 'Tiền mặt:104000', '0.00', '104000.00', ''),
('2016-02-25', 73, 58, 'Tiền mặt: 0<br />', '0.00', '22000.00', ''),
('2016-02-26', 74, 59, 'Tiền mặt:21000', '0.00', '21000.00', ''),
('2016-02-27', 75, 60, 'Tiền mặt: 88,000<br />', '0.00', '88000.00', ''),
('2016-02-29', 76, 61, 'Tiền mặt: 22,000<br />', '0.00', '22000.00', ''),
('2016-03-01', 77, 62, 'Tiền mặt: 22,000<br />', '0.00', '22000.00', ''),
('2016-03-02', 78, 63, 'Tiền mặt:21000', '0.00', '21000.00', ''),
('2016-03-11', 79, 64, 'Tiền mặt:22000', '0.00', '22000.00', ''),
('2016-03-11', 80, 65, 'Tiền mặt: 44,000<br />', '0.00', '44000.00', ''),
('2016-03-17', 81, 66, 'Tiền mặt:88000', '0.00', '88000.00', ''),
('2016-04-25', NULL, 67, 'Tiền mặt: 27<br />', '0.00', '27.00', ''),
('2016-04-11', 2, 68, 'Tiền mặt: <br />', '0.00', '30000.00', ''),
('2016-04-27', 2, 69, 'Tiền mặt: <br />', '0.00', '28000.00', ''),
('2016-04-14', 2, 70, 'Tiền mặt: 57,000<br />', '0.00', '57000.00', ''),
('2016-04-24', 81, 71, 'Tiền mặt: 1,030,000<br />', '0.00', '1030000.00', ''),
('2016-04-28', 5, 72, 'Tiền mặt : 0<br />Tiền mặt: 0<br />', '0.00', '10000.00', ''),
('2016-04-28', 81, 73, 'Tiền mặt: <br />', '0.00', '45000.00', ''),
('2016-04-16', 30, 74, 'Tiền mặt: <br />', '0.00', '2225000.00', ''),
('2016-04-28', 90, 75, 'Tiền mặt: 500,000<br />', '0.00', '1000025.00', ''),
('2016-04-28', 91, 76, 'Tiền mặt:333376353', '0.00', '333376353.00', ''),
('2016-04-29', 93, 77, 'Tiền mặt: 0<br />', '0.00', '50000.00', ''),
('2016-04-29', 93, 78, 'Tiền mặt: <br />', '0.00', '6000000.00', ''),
('2016-04-29', 93, 79, 'Tiền mặt: 300,000<br />', '0.00', '300000.00', ''),
('2016-04-24', 94, 80, 'Tiền mặt: <br />', '0.00', '25047.00', ''),
('2016-04-29', 95, 81, 'Tiền mặt:22027', '0.00', '22027.00', ''),
('2016-04-29', 96, 82, 'Tiền mặt:22000', '0.00', '22000.00', ''),
('2016-04-29', 97, 83, 'Tiền mặt:288000', '0.00', '288000.00', ''),
('2016-05-03', 98, 84, 'Tiền mặt:452000', '0.00', '452000.00', ''),
('2016-05-03', 16, 85, 'Tiền mặt: 233,000<br />', '0.00', '233000.00', ''),
('2016-05-03', 99, 86, 'Tiền mặt:220000', '0.00', '220000.00', ''),
('2016-05-03', 100, 87, 'Tiền mặt:333377380', '0.00', '333377380.00', ''),
('2016-05-04', 101, 88, 'Tiền mặt:66000', '0.00', '66000.00', ''),
('2016-05-04', 102, 89, 'Tiền mặt:40000', '0.00', '40000.00', ''),
('2016-05-04', 3, 90, 'Tiền mặt: <br />', '0.00', '0.00', ''),
('2016-05-04', 2, 91, 'Tiền mặt : 0<br />', '0.00', '0.00', ''),
('2016-05-04', 103, 92, 'Tiền mặt:210000', '0.00', '210000.00', ''),
('2016-05-05', 104, 93, 'Tiền mặt: 60,000<br />', '0.00', '60000.00', ''),
('2016-05-05', 105, 94, 'Tiền mặt:15000000', '0.00', '15000000.00', ''),
('2016-05-05', 106, 95, 'Tiền mặt:730000', '0.00', '730000.00', ''),
('2016-05-05', 2, 96, 'Tiền mặt: 14,000<br />', '0.00', '14000.00', ''),
('2016-05-05', 107, 97, 'Tiền mặt : 10,000<br />Tiền mặt: 20,000<br />', '0.00', '20000.00', ''),
('2016-05-05', 108, 98, 'Tiền mặt: 50,000<br />', '0.00', '50000.00', ''),
('2016-05-05', 109, 99, 'Tiền mặt:840000', '0.00', '840000.00', ''),
('2016-05-05', 110, 100, 'Tiền mặt:840000', '0.00', '840000.00', ''),
('2016-05-05', 111, 101, 'Tiền mặt: 60,000<br />', '0.00', '360000.00', ''),
('2016-05-05', 112, 102, 'Tiền mặt    : 60,000<br />Tiền mặt   : 0<br />Tiền mặt  : 240,000<br />Tiền mặt : 400,000<br />Tiền mặt: 100,000<br />', '0.00', '800000.00', ''),
('2016-05-05', 4, 103, 'Tiền mặt: 29,000<br />', '0.00', '29000.00', ''),
('2016-05-05', 113, 104, 'Tiền mặt:172000', '0.00', '172000.00', ''),
('2016-05-05', 114, 105, 'Tiền mặt:15150000', '0.00', '15150000.00', ''),
('0000-00-00', NULL, 106, 'Tiền mặt: 22,000<br />', '0.00', '22000.00', ''),
('2016-05-07', 2, 107, 'Tiền mặt: 11,111<br />', '0.00', '11111.00', ''),
('2016-05-06', 2, 108, 'Tiền mặt : 10,000<br />Tiền mặt: 10,000<br />', '0.00', '10000.00', ''),
('2016-05-11', 4, 109, NULL, '0.00', '0.00', ''),
('2016-05-18', 115, 110, 'Tiền mặt:16000000', '0.00', '16000000.00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_number` (`item_number`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `first_name` (`first_name`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `people` (`person_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`person_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
