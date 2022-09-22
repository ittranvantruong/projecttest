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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `division_type` varchar(255) NOT NULL,
  `codename` varchar(255) NOT NULL,
  `phone_code` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `provinces`
--

INSERT INTO `provinces` (`id`, `code`, `division_type`, `codename`, `phone_code`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'thành phố trung ương', 'thanh_pho_ha_noi', 24, 'Thành phố Hà Nội', NULL, NULL),
(2, 2, 'tỉnh', 'tinh_ha_giang', 219, 'Tỉnh Hà Giang', NULL, NULL),
(3, 4, 'tỉnh', 'tinh_cao_bang', 206, 'Tỉnh Cao Bằng', NULL, NULL),
(4, 6, 'tỉnh', 'tinh_bac_kan', 209, 'Tỉnh Bắc Kạn', NULL, NULL),
(5, 8, 'tỉnh', 'tinh_tuyen_quang', 207, 'Tỉnh Tuyên Quang', NULL, NULL),
(6, 10, 'tỉnh', 'tinh_lao_cai', 214, 'Tỉnh Lào Cai', NULL, NULL),
(7, 11, 'tỉnh', 'tinh_dien_bien', 215, 'Tỉnh Điện Biên', NULL, NULL),
(8, 12, 'tỉnh', 'tinh_lai_chau', 213, 'Tỉnh Lai Châu', NULL, NULL),
(9, 14, 'tỉnh', 'tinh_son_la', 212, 'Tỉnh Sơn La', NULL, NULL),
(10, 15, 'tỉnh', 'tinh_yen_bai', 216, 'Tỉnh Yên Bái', NULL, NULL),
(11, 17, 'tỉnh', 'tinh_hoa_binh', 218, 'Tỉnh Hoà Bình', NULL, NULL),
(12, 19, 'tỉnh', 'tinh_thai_nguyen', 208, 'Tỉnh Thái Nguyên', NULL, NULL),
(13, 20, 'tỉnh', 'tinh_lang_son', 205, 'Tỉnh Lạng Sơn', NULL, NULL),
(14, 22, 'tỉnh', 'tinh_quang_ninh', 203, 'Tỉnh Quảng Ninh', NULL, NULL),
(15, 24, 'tỉnh', 'tinh_bac_giang', 204, 'Tỉnh Bắc Giang', NULL, NULL),
(16, 25, 'tỉnh', 'tinh_phu_tho', 210, 'Tỉnh Phú Thọ', NULL, NULL),
(17, 26, 'tỉnh', 'tinh_vinh_phuc', 211, 'Tỉnh Vĩnh Phúc', NULL, NULL),
(18, 27, 'tỉnh', 'tinh_bac_ninh', 222, 'Tỉnh Bắc Ninh', NULL, NULL),
(19, 30, 'tỉnh', 'tinh_hai_duong', 220, 'Tỉnh Hải Dương', NULL, NULL),
(20, 31, 'thành phố trung ương', 'thanh_pho_hai_phong', 225, 'Thành phố Hải Phòng', NULL, NULL),
(21, 33, 'tỉnh', 'tinh_hung_yen', 221, 'Tỉnh Hưng Yên', NULL, NULL),
(22, 34, 'tỉnh', 'tinh_thai_binh', 227, 'Tỉnh Thái Bình', NULL, NULL),
(23, 35, 'tỉnh', 'tinh_ha_nam', 226, 'Tỉnh Hà Nam', NULL, NULL),
(24, 36, 'tỉnh', 'tinh_nam_dinh', 228, 'Tỉnh Nam Định', NULL, NULL),
(25, 37, 'tỉnh', 'tinh_ninh_binh', 229, 'Tỉnh Ninh Bình', NULL, NULL),
(26, 38, 'tỉnh', 'tinh_thanh_hoa', 237, 'Tỉnh Thanh Hóa', NULL, NULL),
(27, 40, 'tỉnh', 'tinh_nghe_an', 238, 'Tỉnh Nghệ An', NULL, NULL),
(28, 42, 'tỉnh', 'tinh_ha_tinh', 239, 'Tỉnh Hà Tĩnh', NULL, NULL),
(29, 44, 'tỉnh', 'tinh_quang_binh', 232, 'Tỉnh Quảng Bình', NULL, NULL),
(30, 45, 'tỉnh', 'tinh_quang_tri', 233, 'Tỉnh Quảng Trị', NULL, NULL),
(31, 46, 'tỉnh', 'tinh_thua_thien_hue', 234, 'Tỉnh Thừa Thiên Huế', NULL, NULL),
(32, 48, 'thành phố trung ương', 'thanh_pho_da_nang', 236, 'Thành phố Đà Nẵng', NULL, NULL),
(33, 49, 'tỉnh', 'tinh_quang_nam', 235, 'Tỉnh Quảng Nam', NULL, NULL),
(34, 51, 'tỉnh', 'tinh_quang_ngai', 255, 'Tỉnh Quảng Ngãi', NULL, NULL),
(35, 52, 'tỉnh', 'tinh_binh_dinh', 256, 'Tỉnh Bình Định', NULL, NULL),
(36, 54, 'tỉnh', 'tinh_phu_yen', 257, 'Tỉnh Phú Yên', NULL, NULL),
(37, 56, 'tỉnh', 'tinh_khanh_hoa', 258, 'Tỉnh Khánh Hòa', NULL, NULL),
(38, 58, 'tỉnh', 'tinh_ninh_thuan', 259, 'Tỉnh Ninh Thuận', NULL, NULL),
(39, 60, 'tỉnh', 'tinh_binh_thuan', 252, 'Tỉnh Bình Thuận', NULL, NULL),
(40, 62, 'tỉnh', 'tinh_kon_tum', 260, 'Tỉnh Kon Tum', NULL, NULL),
(41, 64, 'tỉnh', 'tinh_gia_lai', 269, 'Tỉnh Gia Lai', NULL, NULL),
(42, 66, 'tỉnh', 'tinh_dak_lak', 262, 'Tỉnh Đắk Lắk', NULL, NULL),
(43, 67, 'tỉnh', 'tinh_dak_nong', 261, 'Tỉnh Đắk Nông', NULL, NULL),
(44, 68, 'tỉnh', 'tinh_lam_dong', 263, 'Tỉnh Lâm Đồng', NULL, NULL),
(45, 70, 'tỉnh', 'tinh_binh_phuoc', 271, 'Tỉnh Bình Phước', NULL, NULL),
(46, 72, 'tỉnh', 'tinh_tay_ninh', 276, 'Tỉnh Tây Ninh', NULL, NULL),
(47, 74, 'tỉnh', 'tinh_binh_duong', 274, 'Tỉnh Bình Dương', NULL, NULL),
(48, 75, 'tỉnh', 'tinh_dong_nai', 251, 'Tỉnh Đồng Nai', NULL, NULL),
(49, 77, 'tỉnh', 'tinh_ba_ria_vung_tau', 254, 'Tỉnh Bà Rịa - Vũng Tàu', NULL, NULL),
(50, 79, 'thành phố trung ương', 'thanh_pho_ho_chi_minh', 28, 'Thành phố Hồ Chí Minh', NULL, NULL),
(51, 80, 'tỉnh', 'tinh_long_an', 272, 'Tỉnh Long An', NULL, NULL),
(52, 82, 'tỉnh', 'tinh_tien_giang', 273, 'Tỉnh Tiền Giang', NULL, NULL),
(53, 83, 'tỉnh', 'tinh_ben_tre', 275, 'Tỉnh Bến Tre', NULL, NULL),
(54, 84, 'tỉnh', 'tinh_tra_vinh', 294, 'Tỉnh Trà Vinh', NULL, NULL),
(55, 86, 'tỉnh', 'tinh_vinh_long', 270, 'Tỉnh Vĩnh Long', NULL, NULL),
(56, 87, 'tỉnh', 'tinh_dong_thap', 277, 'Tỉnh Đồng Tháp', NULL, NULL),
(57, 89, 'tỉnh', 'tinh_an_giang', 296, 'Tỉnh An Giang', NULL, NULL),
(58, 91, 'tỉnh', 'tinh_kien_giang', 297, 'Tỉnh Kiên Giang', NULL, NULL),
(59, 92, 'thành phố trung ương', 'thanh_pho_can_tho', 292, 'Thành phố Cần Thơ', NULL, NULL),
(60, 93, 'tỉnh', 'tinh_hau_giang', 293, 'Tỉnh Hậu Giang', NULL, NULL),
(61, 94, 'tỉnh', 'tinh_soc_trang', 299, 'Tỉnh Sóc Trăng', NULL, NULL),
(62, 95, 'tỉnh', 'tinh_bac_lieu', 291, 'Tỉnh Bạc Liêu', NULL, NULL),
(63, 96, 'tỉnh', 'tinh_ca_mau', 290, 'Tỉnh Cà Mau', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wards`
--

CREATE TABLE `wards` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `codename` varchar(255) NOT NULL,
  `division_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `district_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wards`
--

INSERT INTO `wards` (`id`, `code`, `codename`, `division_type`, `name`, `district_code`, `created_at`, `updated_at`) VALUES
(1, 26734, 'phuong_tan_dinh', 'phường', 'Phường Tân Định', 760, NULL, NULL),
(2, 26737, 'phuong_da_kao', 'phường', 'Phường Đa Kao', 760, NULL, NULL),
(3, 26740, 'phuong_ben_nghe', 'phường', 'Phường Bến Nghé', 760, NULL, NULL),
(4, 26743, 'phuong_ben_thanh', 'phường', 'Phường Bến Thành', 760, NULL, NULL),
(5, 26746, 'phuong_nguyen_thai_binh', 'phường', 'Phường Nguyễn Thái Bình', 760, NULL, NULL),
(6, 26749, 'phuong_pham_ngu_lao', 'phường', 'Phường Phạm Ngũ Lão', 760, NULL, NULL),
(7, 26752, 'phuong_cau_ong_lanh', 'phường', 'Phường Cầu Ông Lãnh', 760, NULL, NULL),
(8, 26755, 'phuong_co_giang', 'phường', 'Phường Cô Giang', 760, NULL, NULL),
(9, 26758, 'phuong_nguyen_cu_trinh', 'phường', 'Phường Nguyễn Cư Trinh', 760, NULL, NULL),
(10, 26761, 'phuong_cau_kho', 'phường', 'Phường Cầu Kho', 760, NULL, NULL),
(11, 26764, 'phuong_thanh_xuan', 'phường', 'Phường Thạnh Xuân', 761, NULL, NULL),
(12, 26767, 'phuong_thanh_loc', 'phường', 'Phường Thạnh Lộc', 761, NULL, NULL),
(13, 26770, 'phuong_hiep_thanh', 'phường', 'Phường Hiệp Thành', 761, NULL, NULL),
(14, 26773, 'phuong_thoi_an', 'phường', 'Phường Thới An', 761, NULL, NULL),
(15, 26776, 'phuong_tan_chanh_hiep', 'phường', 'Phường Tân Chánh Hiệp', 761, NULL, NULL),
(16, 26779, 'phuong_an_phu_dong', 'phường', 'Phường An Phú Đông', 761, NULL, NULL),
(17, 26782, 'phuong_tan_thoi_hiep', 'phường', 'Phường Tân Thới Hiệp', 761, NULL, NULL),
(18, 26785, 'phuong_trung_my_tay', 'phường', 'Phường Trung Mỹ Tây', 761, NULL, NULL),
(19, 26787, 'phuong_tan_hung_thuan', 'phường', 'Phường Tân Hưng Thuận', 761, NULL, NULL),
(20, 26788, 'phuong_dong_hung_thuan', 'phường', 'Phường Đông Hưng Thuận', 761, NULL, NULL),
(21, 26791, 'phuong_tan_thoi_nhat', 'phường', 'Phường Tân Thới Nhất', 761, NULL, NULL),
(22, 26869, 'phuong_15', 'phường', 'Phường 15', 764, NULL, NULL),
(23, 26872, 'phuong_13', 'phường', 'Phường 13', 764, NULL, NULL),
(24, 26875, 'phuong_17', 'phường', 'Phường 17', 764, NULL, NULL),
(25, 26876, 'phuong_6', 'phường', 'Phường 6', 764, NULL, NULL),
(26, 26878, 'phuong_16', 'phường', 'Phường 16', 764, NULL, NULL),
(27, 26881, 'phuong_12', 'phường', 'Phường 12', 764, NULL, NULL),
(28, 26882, 'phuong_14', 'phường', 'Phường 14', 764, NULL, NULL),
(29, 26884, 'phuong_10', 'phường', 'Phường 10', 764, NULL, NULL),
(30, 26887, 'phuong_05', 'phường', 'Phường 05', 764, NULL, NULL),
(31, 26890, 'phuong_07', 'phường', 'Phường 07', 764, NULL, NULL),
(32, 26893, 'phuong_04', 'phường', 'Phường 04', 764, NULL, NULL),
(33, 26896, 'phuong_01', 'phường', 'Phường 01', 764, NULL, NULL),
(34, 26897, 'phuong_9', 'phường', 'Phường 9', 764, NULL, NULL),
(35, 26898, 'phuong_8', 'phường', 'Phường 8', 764, NULL, NULL),
(36, 26899, 'phuong_11', 'phường', 'Phường 11', 764, NULL, NULL),
(37, 26902, 'phuong_03', 'phường', 'Phường 03', 764, NULL, NULL),
(38, 26905, 'phuong_13', 'phường', 'Phường 13', 765, NULL, NULL),
(39, 26908, 'phuong_11', 'phường', 'Phường 11', 765, NULL, NULL),
(40, 26911, 'phuong_27', 'phường', 'Phường 27', 765, NULL, NULL),
(41, 26914, 'phuong_26', 'phường', 'Phường 26', 765, NULL, NULL),
(42, 26917, 'phuong_12', 'phường', 'Phường 12', 765, NULL, NULL),
(43, 26920, 'phuong_25', 'phường', 'Phường 25', 765, NULL, NULL),
(44, 26923, 'phuong_05', 'phường', 'Phường 05', 765, NULL, NULL),
(45, 26926, 'phuong_07', 'phường', 'Phường 07', 765, NULL, NULL),
(46, 26929, 'phuong_24', 'phường', 'Phường 24', 765, NULL, NULL),
(47, 26932, 'phuong_06', 'phường', 'Phường 06', 765, NULL, NULL),
(48, 26935, 'phuong_14', 'phường', 'Phường 14', 765, NULL, NULL),
(49, 26938, 'phuong_15', 'phường', 'Phường 15', 765, NULL, NULL),
(50, 26941, 'phuong_02', 'phường', 'Phường 02', 765, NULL, NULL),
(51, 26944, 'phuong_01', 'phường', 'Phường 01', 765, NULL, NULL),
(52, 26947, 'phuong_03', 'phường', 'Phường 03', 765, NULL, NULL),
(53, 26950, 'phuong_17', 'phường', 'Phường 17', 765, NULL, NULL),
(54, 26953, 'phuong_21', 'phường', 'Phường 21', 765, NULL, NULL),
(55, 26956, 'phuong_22', 'phường', 'Phường 22', 765, NULL, NULL),
(56, 26959, 'phuong_19', 'phường', 'Phường 19', 765, NULL, NULL),
(57, 26962, 'phuong_28', 'phường', 'Phường 28', 765, NULL, NULL),
(58, 26965, 'phuong_02', 'phường', 'Phường 02', 766, NULL, NULL),
(59, 26968, 'phuong_04', 'phường', 'Phường 04', 766, NULL, NULL),
(60, 26971, 'phuong_12', 'phường', 'Phường 12', 766, NULL, NULL),
(61, 26974, 'phuong_13', 'phường', 'Phường 13', 766, NULL, NULL),
(62, 26977, 'phuong_01', 'phường', 'Phường 01', 766, NULL, NULL),
(63, 26980, 'phuong_03', 'phường', 'Phường 03', 766, NULL, NULL),
(64, 26983, 'phuong_11', 'phường', 'Phường 11', 766, NULL, NULL),
(65, 26986, 'phuong_07', 'phường', 'Phường 07', 766, NULL, NULL),
(66, 26989, 'phuong_05', 'phường', 'Phường 05', 766, NULL, NULL),
(67, 26992, 'phuong_10', 'phường', 'Phường 10', 766, NULL, NULL),
(68, 26995, 'phuong_06', 'phường', 'Phường 06', 766, NULL, NULL),
(69, 26998, 'phuong_08', 'phường', 'Phường 08', 766, NULL, NULL),
(70, 27001, 'phuong_09', 'phường', 'Phường 09', 766, NULL, NULL),
(71, 27004, 'phuong_14', 'phường', 'Phường 14', 766, NULL, NULL),
(72, 27007, 'phuong_15', 'phường', 'Phường 15', 766, NULL, NULL),
(73, 27010, 'phuong_tan_son_nhi', 'phường', 'Phường Tân Sơn Nhì', 767, NULL, NULL),
(74, 27013, 'phuong_tay_thanh', 'phường', 'Phường Tây Thạnh', 767, NULL, NULL),
(75, 27016, 'phuong_son_ky', 'phường', 'Phường Sơn Kỳ', 767, NULL, NULL),
(76, 27019, 'phuong_tan_quy', 'phường', 'Phường Tân Quý', 767, NULL, NULL),
(77, 27022, 'phuong_tan_thanh', 'phường', 'Phường Tân Thành', 767, NULL, NULL),
(78, 27025, 'phuong_phu_tho_hoa', 'phường', 'Phường Phú Thọ Hòa', 767, NULL, NULL),
(79, 27028, 'phuong_phu_thanh', 'phường', 'Phường Phú Thạnh', 767, NULL, NULL),
(80, 27031, 'phuong_phu_trung', 'phường', 'Phường Phú Trung', 767, NULL, NULL),
(81, 27034, 'phuong_hoa_thanh', 'phường', 'Phường Hòa Thạnh', 767, NULL, NULL),
(82, 27037, 'phuong_hiep_tan', 'phường', 'Phường Hiệp Tân', 767, NULL, NULL),
(83, 27040, 'phuong_tan_thoi_hoa', 'phường', 'Phường Tân Thới Hòa', 767, NULL, NULL),
(84, 27043, 'phuong_04', 'phường', 'Phường 04', 768, NULL, NULL),
(85, 27046, 'phuong_05', 'phường', 'Phường 05', 768, NULL, NULL),
(86, 27049, 'phuong_09', 'phường', 'Phường 09', 768, NULL, NULL),
(87, 27052, 'phuong_07', 'phường', 'Phường 07', 768, NULL, NULL),
(88, 27055, 'phuong_03', 'phường', 'Phường 03', 768, NULL, NULL),
(89, 27058, 'phuong_01', 'phường', 'Phường 01', 768, NULL, NULL),
(90, 27061, 'phuong_02', 'phường', 'Phường 02', 768, NULL, NULL),
(91, 27064, 'phuong_08', 'phường', 'Phường 08', 768, NULL, NULL),
(92, 27067, 'phuong_15', 'phường', 'Phường 15', 768, NULL, NULL),
(93, 27070, 'phuong_10', 'phường', 'Phường 10', 768, NULL, NULL),
(94, 27073, 'phuong_11', 'phường', 'Phường 11', 768, NULL, NULL),
(95, 27076, 'phuong_17', 'phường', 'Phường 17', 768, NULL, NULL),
(96, 27085, 'phuong_13', 'phường', 'Phường 13', 768, NULL, NULL),
(97, 26794, 'phuong_linh_xuan', 'phường', 'Phường Linh Xuân', 769, NULL, NULL),
(98, 26797, 'phuong_binh_chieu', 'phường', 'Phường Bình Chiểu', 769, NULL, NULL),
(99, 26800, 'phuong_linh_trung', 'phường', 'Phường Linh Trung', 769, NULL, NULL),
(100, 26803, 'phuong_tam_binh', 'phường', 'Phường Tam Bình', 769, NULL, NULL),
(101, 26806, 'phuong_tam_phu', 'phường', 'Phường Tam Phú', 769, NULL, NULL),
(102, 26809, 'phuong_hiep_binh_phuoc', 'phường', 'Phường Hiệp Bình Phước', 769, NULL, NULL),
(103, 26812, 'phuong_hiep_binh_chanh', 'phường', 'Phường Hiệp Bình Chánh', 769, NULL, NULL),
(104, 26815, 'phuong_linh_chieu', 'phường', 'Phường Linh Chiểu', 769, NULL, NULL),
(105, 26818, 'phuong_linh_tay', 'phường', 'Phường Linh Tây', 769, NULL, NULL),
(106, 26821, 'phuong_linh_dong', 'phường', 'Phường Linh Đông', 769, NULL, NULL),
(107, 26824, 'phuong_binh_tho', 'phường', 'Phường Bình Thọ', 769, NULL, NULL),
(108, 26827, 'phuong_truong_tho', 'phường', 'Phường Trường Thọ', 769, NULL, NULL),
(109, 26830, 'phuong_long_binh', 'phường', 'Phường Long Bình', 769, NULL, NULL),
(110, 26833, 'phuong_long_thanh_my', 'phường', 'Phường Long Thạnh Mỹ', 769, NULL, NULL),
(111, 26836, 'phuong_tan_phu', 'phường', 'Phường Tân Phú', 769, NULL, NULL),
(112, 26839, 'phuong_hiep_phu', 'phường', 'Phường Hiệp Phú', 769, NULL, NULL),
(113, 26842, 'phuong_tang_nhon_phu_a', 'phường', 'Phường Tăng Nhơn Phú A', 769, NULL, NULL),
(114, 26845, 'phuong_tang_nhon_phu_b', 'phường', 'Phường Tăng Nhơn Phú B', 769, NULL, NULL),
(115, 26848, 'phuong_phuoc_long_b', 'phường', 'Phường Phước Long B', 769, NULL, NULL),
(116, 26851, 'phuong_phuoc_long_a', 'phường', 'Phường Phước Long A', 769, NULL, NULL),
(117, 26854, 'phuong_truong_thanh', 'phường', 'Phường Trường Thạnh', 769, NULL, NULL),
(118, 26857, 'phuong_long_phuoc', 'phường', 'Phường Long Phước', 769, NULL, NULL),
(119, 26860, 'phuong_long_truong', 'phường', 'Phường Long Trường', 769, NULL, NULL),
(120, 26863, 'phuong_phuoc_binh', 'phường', 'Phường Phước Bình', 769, NULL, NULL),
(121, 26866, 'phuong_phu_huu', 'phường', 'Phường Phú Hữu', 769, NULL, NULL),
(122, 27088, 'phuong_thao_dien', 'phường', 'Phường Thảo Điền', 769, NULL, NULL),
(123, 27091, 'phuong_an_phu', 'phường', 'Phường An Phú', 769, NULL, NULL),
(124, 27094, 'phuong_an_khanh', 'phường', 'Phường An Khánh', 769, NULL, NULL),
(125, 27097, 'phuong_binh_trung_dong', 'phường', 'Phường Bình Trưng Đông', 769, NULL, NULL),
(126, 27100, 'phuong_binh_trung_tay', 'phường', 'Phường Bình Trưng Tây', 769, NULL, NULL),
(127, 27109, 'phuong_cat_lai', 'phường', 'Phường Cát Lái', 769, NULL, NULL),
(128, 27112, 'phuong_thanh_my_loi', 'phường', 'Phường Thạnh Mỹ Lợi', 769, NULL, NULL),
(129, 27115, 'phuong_an_loi_dong', 'phường', 'Phường An Lợi Đông', 769, NULL, NULL),
(130, 27118, 'phuong_thu_thiem', 'phường', 'Phường Thủ Thiêm', 769, NULL, NULL),
(131, 27127, 'phuong_14', 'phường', 'Phường 14', 770, NULL, NULL),
(132, 27130, 'phuong_12', 'phường', 'Phường 12', 770, NULL, NULL),
(133, 27133, 'phuong_11', 'phường', 'Phường 11', 770, NULL, NULL),
(134, 27136, 'phuong_13', 'phường', 'Phường 13', 770, NULL, NULL),
(135, 27139, 'phuong_vo_thi_sau', 'phường', 'Phường Võ Thị Sáu', 770, NULL, NULL),
(136, 27142, 'phuong_09', 'phường', 'Phường 09', 770, NULL, NULL),
(137, 27145, 'phuong_10', 'phường', 'Phường 10', 770, NULL, NULL),
(138, 27148, 'phuong_04', 'phường', 'Phường 04', 770, NULL, NULL),
(139, 27151, 'phuong_05', 'phường', 'Phường 05', 770, NULL, NULL),
(140, 27154, 'phuong_03', 'phường', 'Phường 03', 770, NULL, NULL),
(141, 27157, 'phuong_02', 'phường', 'Phường 02', 770, NULL, NULL),
(142, 27160, 'phuong_01', 'phường', 'Phường 01', 770, NULL, NULL),
(143, 27163, 'phuong_15', 'phường', 'Phường 15', 771, NULL, NULL),
(144, 27166, 'phuong_13', 'phường', 'Phường 13', 771, NULL, NULL),
(145, 27169, 'phuong_14', 'phường', 'Phường 14', 771, NULL, NULL),
(146, 27172, 'phuong_12', 'phường', 'Phường 12', 771, NULL, NULL),
(147, 27175, 'phuong_11', 'phường', 'Phường 11', 771, NULL, NULL),
(148, 27178, 'phuong_10', 'phường', 'Phường 10', 771, NULL, NULL),
(149, 27181, 'phuong_09', 'phường', 'Phường 09', 771, NULL, NULL),
(150, 27184, 'phuong_01', 'phường', 'Phường 01', 771, NULL, NULL),
(151, 27187, 'phuong_08', 'phường', 'Phường 08', 771, NULL, NULL),
(152, 27190, 'phuong_02', 'phường', 'Phường 02', 771, NULL, NULL),
(153, 27193, 'phuong_04', 'phường', 'Phường 04', 771, NULL, NULL),
(154, 27196, 'phuong_07', 'phường', 'Phường 07', 771, NULL, NULL),
(155, 27199, 'phuong_05', 'phường', 'Phường 05', 771, NULL, NULL),
(156, 27202, 'phuong_06', 'phường', 'Phường 06', 771, NULL, NULL),
(157, 27208, 'phuong_15', 'phường', 'Phường 15', 772, NULL, NULL),
(158, 27211, 'phuong_05', 'phường', 'Phường 05', 772, NULL, NULL),
(159, 27214, 'phuong_14', 'phường', 'Phường 14', 772, NULL, NULL),
(160, 27217, 'phuong_11', 'phường', 'Phường 11', 772, NULL, NULL),
(161, 27220, 'phuong_03', 'phường', 'Phường 03', 772, NULL, NULL),
(162, 27223, 'phuong_10', 'phường', 'Phường 10', 772, NULL, NULL),
(163, 27226, 'phuong_13', 'phường', 'Phường 13', 772, NULL, NULL),
(164, 27229, 'phuong_08', 'phường', 'Phường 08', 772, NULL, NULL),
(165, 27232, 'phuong_09', 'phường', 'Phường 09', 772, NULL, NULL),
(166, 27235, 'phuong_12', 'phường', 'Phường 12', 772, NULL, NULL),
(167, 27238, 'phuong_07', 'phường', 'Phường 07', 772, NULL, NULL),
(168, 27241, 'phuong_06', 'phường', 'Phường 06', 772, NULL, NULL),
(169, 27244, 'phuong_04', 'phường', 'Phường 04', 772, NULL, NULL),
(170, 27247, 'phuong_01', 'phường', 'Phường 01', 772, NULL, NULL),
(171, 27250, 'phuong_02', 'phường', 'Phường 02', 772, NULL, NULL),
(172, 27253, 'phuong_16', 'phường', 'Phường 16', 772, NULL, NULL),
(173, 27259, 'phuong_13', 'phường', 'Phường 13', 773, NULL, NULL),
(174, 27262, 'phuong_09', 'phường', 'Phường 09', 773, NULL, NULL),
(175, 27265, 'phuong_06', 'phường', 'Phường 06', 773, NULL, NULL),
(176, 27268, 'phuong_08', 'phường', 'Phường 08', 773, NULL, NULL),
(177, 27271, 'phuong_10', 'phường', 'Phường 10', 773, NULL, NULL),
(178, 27277, 'phuong_18', 'phường', 'Phường 18', 773, NULL, NULL),
(179, 27280, 'phuong_14', 'phường', 'Phường 14', 773, NULL, NULL),
(180, 27283, 'phuong_04', 'phường', 'Phường 04', 773, NULL, NULL),
(181, 27286, 'phuong_03', 'phường', 'Phường 03', 773, NULL, NULL),
(182, 27289, 'phuong_16', 'phường', 'Phường 16', 773, NULL, NULL),
(183, 27292, 'phuong_02', 'phường', 'Phường 02', 773, NULL, NULL),
(184, 27295, 'phuong_15', 'phường', 'Phường 15', 773, NULL, NULL),
(185, 27298, 'phuong_01', 'phường', 'Phường 01', 773, NULL, NULL),
(186, 27301, 'phuong_04', 'phường', 'Phường 04', 774, NULL, NULL),
(187, 27304, 'phuong_09', 'phường', 'Phường 09', 774, NULL, NULL),
(188, 27307, 'phuong_03', 'phường', 'Phường 03', 774, NULL, NULL),
(189, 27310, 'phuong_12', 'phường', 'Phường 12', 774, NULL, NULL),
(190, 27313, 'phuong_02', 'phường', 'Phường 02', 774, NULL, NULL),
(191, 27316, 'phuong_08', 'phường', 'Phường 08', 774, NULL, NULL),
(192, 27322, 'phuong_07', 'phường', 'Phường 07', 774, NULL, NULL),
(193, 27325, 'phuong_01', 'phường', 'Phường 01', 774, NULL, NULL),
(194, 27328, 'phuong_11', 'phường', 'Phường 11', 774, NULL, NULL),
(195, 27331, 'phuong_14', 'phường', 'Phường 14', 774, NULL, NULL),
(196, 27334, 'phuong_05', 'phường', 'Phường 05', 774, NULL, NULL),
(197, 27337, 'phuong_06', 'phường', 'Phường 06', 774, NULL, NULL),
(198, 27340, 'phuong_10', 'phường', 'Phường 10', 774, NULL, NULL),
(199, 27343, 'phuong_13', 'phường', 'Phường 13', 774, NULL, NULL),
(200, 27346, 'phuong_14', 'phường', 'Phường 14', 775, NULL, NULL),
(201, 27349, 'phuong_13', 'phường', 'Phường 13', 775, NULL, NULL),
(202, 27352, 'phuong_09', 'phường', 'Phường 09', 775, NULL, NULL),
(203, 27355, 'phuong_06', 'phường', 'Phường 06', 775, NULL, NULL),
(204, 27358, 'phuong_12', 'phường', 'Phường 12', 775, NULL, NULL),
(205, 27361, 'phuong_05', 'phường', 'Phường 05', 775, NULL, NULL),
(206, 27364, 'phuong_11', 'phường', 'Phường 11', 775, NULL, NULL),
(207, 27367, 'phuong_02', 'phường', 'Phường 02', 775, NULL, NULL),
(208, 27370, 'phuong_01', 'phường', 'Phường 01', 775, NULL, NULL),
(209, 27373, 'phuong_04', 'phường', 'Phường 04', 775, NULL, NULL),
(210, 27376, 'phuong_08', 'phường', 'Phường 08', 775, NULL, NULL),
(211, 27379, 'phuong_03', 'phường', 'Phường 03', 775, NULL, NULL),
(212, 27382, 'phuong_07', 'phường', 'Phường 07', 775, NULL, NULL),
(213, 27385, 'phuong_10', 'phường', 'Phường 10', 775, NULL, NULL),
(214, 27388, 'phuong_08', 'phường', 'Phường 08', 776, NULL, NULL),
(215, 27391, 'phuong_02', 'phường', 'Phường 02', 776, NULL, NULL),
(216, 27394, 'phuong_01', 'phường', 'Phường 01', 776, NULL, NULL),
(217, 27397, 'phuong_03', 'phường', 'Phường 03', 776, NULL, NULL),
(218, 27400, 'phuong_11', 'phường', 'Phường 11', 776, NULL, NULL),
(219, 27403, 'phuong_09', 'phường', 'Phường 09', 776, NULL, NULL),
(220, 27406, 'phuong_10', 'phường', 'Phường 10', 776, NULL, NULL),
(221, 27409, 'phuong_04', 'phường', 'Phường 04', 776, NULL, NULL),
(222, 27412, 'phuong_13', 'phường', 'Phường 13', 776, NULL, NULL),
(223, 27415, 'phuong_12', 'phường', 'Phường 12', 776, NULL, NULL),
(224, 27418, 'phuong_05', 'phường', 'Phường 05', 776, NULL, NULL),
(225, 27421, 'phuong_14', 'phường', 'Phường 14', 776, NULL, NULL),
(226, 27424, 'phuong_06', 'phường', 'Phường 06', 776, NULL, NULL),
(227, 27427, 'phuong_15', 'phường', 'Phường 15', 776, NULL, NULL),
(228, 27430, 'phuong_16', 'phường', 'Phường 16', 776, NULL, NULL),
(229, 27433, 'phuong_07', 'phường', 'Phường 07', 776, NULL, NULL),
(230, 27436, 'phuong_binh_hung_hoa', 'phường', 'Phường Bình Hưng Hòa', 777, NULL, NULL),
(231, 27439, 'phuong_binh_hung_hoa_a', 'phường', 'Phường Bình Hưng Hoà A', 777, NULL, NULL),
(232, 27442, 'phuong_binh_hung_hoa_b', 'phường', 'Phường Bình Hưng Hoà B', 777, NULL, NULL),
(233, 27445, 'phuong_binh_tri_dong', 'phường', 'Phường Bình Trị Đông', 777, NULL, NULL),
(234, 27448, 'phuong_binh_tri_dong_a', 'phường', 'Phường Bình Trị Đông A', 777, NULL, NULL),
(235, 27451, 'phuong_binh_tri_dong_b', 'phường', 'Phường Bình Trị Đông B', 777, NULL, NULL),
(236, 27454, 'phuong_tan_tao', 'phường', 'Phường Tân Tạo', 777, NULL, NULL),
(237, 27457, 'phuong_tan_tao_a', 'phường', 'Phường Tân Tạo A', 777, NULL, NULL),
(238, 27460, 'phuong_an_lac', 'phường', 'Phường An Lạc', 777, NULL, NULL),
(239, 27463, 'phuong_an_lac_a', 'phường', 'Phường An Lạc A', 777, NULL, NULL),
(240, 27466, 'phuong_tan_thuan_dong', 'phường', 'Phường Tân Thuận Đông', 778, NULL, NULL),
(241, 27469, 'phuong_tan_thuan_tay', 'phường', 'Phường Tân Thuận Tây', 778, NULL, NULL),
(242, 27472, 'phuong_tan_kieng', 'phường', 'Phường Tân Kiểng', 778, NULL, NULL),
(243, 27475, 'phuong_tan_hung', 'phường', 'Phường Tân Hưng', 778, NULL, NULL),
(244, 27478, 'phuong_binh_thuan', 'phường', 'Phường Bình Thuận', 778, NULL, NULL),
(245, 27481, 'phuong_tan_quy', 'phường', 'Phường Tân Quy', 778, NULL, NULL),
(246, 27484, 'phuong_phu_thuan', 'phường', 'Phường Phú Thuận', 778, NULL, NULL),
(247, 27487, 'phuong_tan_phu', 'phường', 'Phường Tân Phú', 778, NULL, NULL),
(248, 27490, 'phuong_tan_phong', 'phường', 'Phường Tân Phong', 778, NULL, NULL),
(249, 27493, 'phuong_phu_my', 'phường', 'Phường Phú Mỹ', 778, NULL, NULL),
(250, 27496, 'thi_tran_cu_chi', 'thị trấn', 'Thị trấn Củ Chi', 783, NULL, NULL),
(251, 27499, 'xa_phu_my_hung', 'xã', 'Xã Phú Mỹ Hưng', 783, NULL, NULL),
(252, 27502, 'xa_an_phu', 'xã', 'Xã An Phú', 783, NULL, NULL),
(253, 27505, 'xa_trung_lap_thuong', 'xã', 'Xã Trung Lập Thượng', 783, NULL, NULL),
(254, 27508, 'xa_an_nhon_tay', 'xã', 'Xã An Nhơn Tây', 783, NULL, NULL),
(255, 27511, 'xa_nhuan_duc', 'xã', 'Xã Nhuận Đức', 783, NULL, NULL),
(256, 27514, 'xa_pham_van_coi', 'xã', 'Xã Phạm Văn Cội', 783, NULL, NULL),
(257, 27517, 'xa_phu_hoa_dong', 'xã', 'Xã Phú Hòa Đông', 783, NULL, NULL),
(258, 27520, 'xa_trung_lap_ha', 'xã', 'Xã Trung Lập Hạ', 783, NULL, NULL),
(259, 27523, 'xa_trung_an', 'xã', 'Xã Trung An', 783, NULL, NULL),
(260, 27526, 'xa_phuoc_thanh', 'xã', 'Xã Phước Thạnh', 783, NULL, NULL),
(261, 27529, 'xa_phuoc_hiep', 'xã', 'Xã Phước Hiệp', 783, NULL, NULL),
(262, 27532, 'xa_tan_an_hoi', 'xã', 'Xã Tân An Hội', 783, NULL, NULL),
(263, 27535, 'xa_phuoc_vinh_an', 'xã', 'Xã Phước Vĩnh An', 783, NULL, NULL),
(264, 27538, 'xa_thai_my', 'xã', 'Xã Thái Mỹ', 783, NULL, NULL),
(265, 27541, 'xa_tan_thanh_tay', 'xã', 'Xã Tân Thạnh Tây', 783, NULL, NULL),
(266, 27544, 'xa_hoa_phu', 'xã', 'Xã Hòa Phú', 783, NULL, NULL),
(267, 27547, 'xa_tan_thanh_dong', 'xã', 'Xã Tân Thạnh Đông', 783, NULL, NULL),
(268, 27550, 'xa_binh_my', 'xã', 'Xã Bình Mỹ', 783, NULL, NULL),
(269, 27553, 'xa_tan_phu_trung', 'xã', 'Xã Tân Phú Trung', 783, NULL, NULL),
(270, 27556, 'xa_tan_thong_hoi', 'xã', 'Xã Tân Thông Hội', 783, NULL, NULL),
(271, 27559, 'thi_tran_hoc_mon', 'thị trấn', 'Thị trấn Hóc Môn', 784, NULL, NULL),
(272, 27562, 'xa_tan_hiep', 'xã', 'Xã Tân Hiệp', 784, NULL, NULL),
(273, 27565, 'xa_nhi_binh', 'xã', 'Xã Nhị Bình', 784, NULL, NULL),
(274, 27568, 'xa_dong_thanh', 'xã', 'Xã Đông Thạnh', 784, NULL, NULL),
(275, 27571, 'xa_tan_thoi_nhi', 'xã', 'Xã Tân Thới Nhì', 784, NULL, NULL),
(276, 27574, 'xa_thoi_tam_thon', 'xã', 'Xã Thới Tam Thôn', 784, NULL, NULL),
(277, 27577, 'xa_xuan_thoi_son', 'xã', 'Xã Xuân Thới Sơn', 784, NULL, NULL),
(278, 27580, 'xa_tan_xuan', 'xã', 'Xã Tân Xuân', 784, NULL, NULL),
(279, 27583, 'xa_xuan_thoi_dong', 'xã', 'Xã Xuân Thới Đông', 784, NULL, NULL),
(280, 27586, 'xa_trung_chanh', 'xã', 'Xã Trung Chánh', 784, NULL, NULL),
(281, 27589, 'xa_xuan_thoi_thuong', 'xã', 'Xã Xuân Thới Thượng', 784, NULL, NULL),
(282, 27592, 'xa_ba_diem', 'xã', 'Xã Bà Điểm', 784, NULL, NULL),
(283, 27595, 'thi_tran_tan_tuc', 'thị trấn', 'Thị trấn Tân Túc', 785, NULL, NULL),
(284, 27598, 'xa_pham_van_hai', 'xã', 'Xã Phạm Văn Hai', 785, NULL, NULL),
(285, 27601, 'xa_vinh_loc_a', 'xã', 'Xã Vĩnh Lộc A', 785, NULL, NULL),
(286, 27604, 'xa_vinh_loc_b', 'xã', 'Xã Vĩnh Lộc B', 785, NULL, NULL),
(287, 27607, 'xa_binh_loi', 'xã', 'Xã Bình Lợi', 785, NULL, NULL),
(288, 27610, 'xa_le_minh_xuan', 'xã', 'Xã Lê Minh Xuân', 785, NULL, NULL),
(289, 27613, 'xa_tan_nhut', 'xã', 'Xã Tân Nhựt', 785, NULL, NULL),
(290, 27616, 'xa_tan_kien', 'xã', 'Xã Tân Kiên', 785, NULL, NULL),
(291, 27619, 'xa_binh_hung', 'xã', 'Xã Bình Hưng', 785, NULL, NULL),
(292, 27622, 'xa_phong_phu', 'xã', 'Xã Phong Phú', 785, NULL, NULL),
(293, 27625, 'xa_an_phu_tay', 'xã', 'Xã An Phú Tây', 785, NULL, NULL),
(294, 27628, 'xa_hung_long', 'xã', 'Xã Hưng Long', 785, NULL, NULL),
(295, 27631, 'xa_da_phuoc', 'xã', 'Xã Đa Phước', 785, NULL, NULL),
(296, 27634, 'xa_tan_quy_tay', 'xã', 'Xã Tân Quý Tây', 785, NULL, NULL),
(297, 27637, 'xa_binh_chanh', 'xã', 'Xã Bình Chánh', 785, NULL, NULL),
(298, 27640, 'xa_quy_duc', 'xã', 'Xã Quy Đức', 785, NULL, NULL),
(299, 27643, 'thi_tran_nha_be', 'thị trấn', 'Thị trấn Nhà Bè', 786, NULL, NULL),
(300, 27646, 'xa_phuoc_kien', 'xã', 'Xã Phước Kiển', 786, NULL, NULL),
(301, 27649, 'xa_phuoc_loc', 'xã', 'Xã Phước Lộc', 786, NULL, NULL),
(302, 27652, 'xa_nhon_duc', 'xã', 'Xã Nhơn Đức', 786, NULL, NULL),
(303, 27655, 'xa_phu_xuan', 'xã', 'Xã Phú Xuân', 786, NULL, NULL),
(304, 27658, 'xa_long_thoi', 'xã', 'Xã Long Thới', 786, NULL, NULL),
(305, 27661, 'xa_hiep_phuoc', 'xã', 'Xã Hiệp Phước', 786, NULL, NULL),
(306, 27664, 'thi_tran_can_thanh', 'thị trấn', 'Thị trấn Cần Thạnh', 787, NULL, NULL),
(307, 27667, 'xa_binh_khanh', 'xã', 'Xã Bình Khánh', 787, NULL, NULL),
(308, 27670, 'xa_tam_thon_hiep', 'xã', 'Xã Tam Thôn Hiệp', 787, NULL, NULL),
(309, 27673, 'xa_an_thoi_dong', 'xã', 'Xã An Thới Đông', 787, NULL, NULL),
(310, 27676, 'xa_thanh_an', 'xã', 'Xã Thạnh An', 787, NULL, NULL),
(311, 27679, 'xa_long_hoa', 'xã', 'Xã Long Hòa', 787, NULL, NULL),
(312, 27682, 'xa_ly_nhon', 'xã', 'Xã Lý Nhơn', 787, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;