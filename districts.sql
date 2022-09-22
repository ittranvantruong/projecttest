-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 22, 2022 lúc 05:55 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `projecttest`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `codename` varchar(255) NOT NULL,
  `province_code` int(11) NOT NULL,
  `division_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `code`, `codename`, `province_code`, `division_type`, `name`, `created_at`, `updated_at`) VALUES
(1, 760, 'quan_1', 79, 'quận', 'Quận 1', NULL, NULL),
(2, 761, 'quan_12', 79, 'quận', 'Quận 12', NULL, NULL),
(3, 764, 'quan_go_vap', 79, 'quận', 'Quận Gò Vấp', NULL, NULL),
(4, 765, 'quan_binh_thanh', 79, 'quận', 'Quận Bình Thạnh', NULL, NULL),
(5, 766, 'quan_tan_binh', 79, 'quận', 'Quận Tân Bình', NULL, NULL),
(6, 767, 'quan_tan_phu', 79, 'quận', 'Quận Tân Phú', NULL, NULL),
(7, 768, 'quan_phu_nhuan', 79, 'quận', 'Quận Phú Nhuận', NULL, NULL),
(8, 769, 'thanh_pho_thu_duc', 79, 'thành phố', 'Thành phố Thủ Đức', NULL, NULL),
(9, 770, 'quan_3', 79, 'quận', 'Quận 3', NULL, NULL),
(10, 771, 'quan_10', 79, 'quận', 'Quận 10', NULL, NULL),
(11, 772, 'quan_11', 79, 'quận', 'Quận 11', NULL, NULL),
(12, 773, 'quan_4', 79, 'quận', 'Quận 4', NULL, NULL),
(13, 774, 'quan_5', 79, 'quận', 'Quận 5', NULL, NULL),
(14, 775, 'quan_6', 79, 'quận', 'Quận 6', NULL, NULL),
(15, 776, 'quan_8', 79, 'quận', 'Quận 8', NULL, NULL),
(16, 777, 'quan_binh_tan', 79, 'quận', 'Quận Bình Tân', NULL, NULL),
(17, 778, 'quan_7', 79, 'quận', 'Quận 7', NULL, NULL),
(18, 783, 'huyen_cu_chi', 79, 'huyện', 'Huyện Củ Chi', NULL, NULL),
(19, 784, 'huyen_hoc_mon', 79, 'huyện', 'Huyện Hóc Môn', NULL, NULL),
(20, 785, 'huyen_binh_chanh', 79, 'huyện', 'Huyện Bình Chánh', NULL, NULL),
(21, 786, 'huyen_nha_be', 79, 'huyện', 'Huyện Nhà Bè', NULL, NULL),
(22, 787, 'huyen_can_gio', 79, 'huyện', 'Huyện Cần Giờ', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
