-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 22, 2022 lúc 05:54 PM
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

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
