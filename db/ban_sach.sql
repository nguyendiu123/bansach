-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2021 at 12:24 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ban_sach`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hoa_don`
--

CREATE TABLE `tbl_hoa_don` (
  `hoa_don_id` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` int(15) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khoa`
--

CREATE TABLE `tbl_khoa` (
  `khoa_id` int(11) NOT NULL,
  `ten_khoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_khoa`
--

INSERT INTO `tbl_khoa` (`khoa_id`, `ten_khoa`) VALUES
(1, 'Khoa Lí Luận Chính Trị'),
(2, 'Khoa Ngân Hàng'),
(3, 'Khoa Luật'),
(4, 'Khoa Kế- Kiểm'),
(5, 'Khoa Hệ Thống Thông Tin Quản Lý'),
(6, 'Khoa Tài Chính'),
(7, 'Bộ Môn Toán'),
(8, 'Khoa Ngôn Ngữ Anh'),
(9, 'Khoa Quản Trị Kinh Doanh'),
(10, 'Khoa Kinh Tế'),
(11, 'Khoa Kinh Doanh Quốc Tế');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nguoi_dung`
--

CREATE TABLE `tbl_nguoi_dung` (
  `nguoi_dung_id` int(11) NOT NULL,
  `ten_nguoi_dung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_nguoi_dung`
--

INSERT INTO `tbl_nguoi_dung` (`nguoi_dung_id`, `ten_nguoi_dung`, `email`, `mat_khau`) VALUES
(3, 'Nguyá»…n Thá»‹ Dá»‹u', 'diu@gmail.com', '456'),
(4, 'Nguyá»…n Thá»‹ Lan Anh', 'lanh123@gmail.com', '325'),
(5, 'Pháº¡m ThÃ¹y Linh', 'linh1234@gmail.com', '454');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_san_pham`
--

CREATE TABLE `tbl_san_pham` (
  `san_pham_id` int(11) NOT NULL,
  `khoa_id` int(11) NOT NULL,
  `ten_san_pham` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gia` decimal(19,0) NOT NULL,
  `so_luong` int(10) NOT NULL,
  `ngay_xuat_ban` datetime NOT NULL,
  `mo_ta` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `nha_xuat_ban` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tac_gia` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_san_pham`
--

INSERT INTO `tbl_san_pham` (`san_pham_id`, `khoa_id`, `ten_san_pham`, `anh`, `gia`, `so_luong`, `ngay_xuat_ban`, `mo_ta`, `nha_xuat_ban`, `tac_gia`) VALUES
(1, 1, 'Triáº¿t há»c MÃ¡c-LÃªnin', 'triethocmaclenin1.jpg', '25000', 200, '2020-10-04 00:00:00', '<p>Tri?t h?c Marx-Lenin hï¿½nh thï¿½nh d?a trï¿½n h? th?ng quan ?i?m c?a Marx, Engels vï¿½ ???c Lenin b? sung sau nï¿½y. Trong ?ï¿½ Engels ?ï¿½ phï¿½t tri?n tri?t h?c Marx, thï¿½ng qua vi?c khï¿½i quï¿½t cï¿½c thï¿½nh t?u khoa h?c vï¿½ phï¿½ phï¿½n cï¿½c lï¿½ thuy?t tri?t h?c duy tï¿½m, siï¿½u hï¿½nh vï¿½ c? nh?ng quan ni?m duy v?t t?m th??ng ? nh?ng ng??i mu?n tr? thï¿½nh nh?ng ng??i Mï¿½c-xï¿½t. V?i nh?ng tï¿½c ph?m ch? y?u c?a mï¿½nh nh?: Ch?ng Duyring, Bi?n ch?ng c?a t? nhiï¿½n, Ngu?n g?c c?a gia ?ï¿½nh, c?a ch? ?? t? h?u vï¿½ nhï¿½ n??c, Lut vich Phoi bï¿½ch vï¿½ s? cï¿½o chung c?a tri?t h?c c? ?i?n ??c, Engels ?ï¿½ trï¿½nh bï¿½y h?c thuy?t Mï¿½c nï¿½i chung vï¿½ tri?t h?c Mï¿½c nï¿½i riï¿½ng d??i d?ng m?t h? th?ng lï¿½ lu?n. Ngoï¿½i ra nh?ng ï¿½ ki?n b? sung, gi?i thï¿½ch c?a Engels sau khi Mï¿½c qua ??i ??i v?i m?t s? lu?n ?i?m c?a ï¿½ng tr??c ?ï¿½y c?ng cï¿½ ï¿½ ngh?a r?t quan tr?ng trong vi?c phï¿½t tri?n h?c thuy?t Mï¿½c</p>', 'Thanh NiÃªn', 'Khoa LÃ­ Luáº­n ChÃ­nh Trá»‹'),
(2, 1, 'Kinh táº¿ chÃ­nh trá»‹ MÃ¡c-LÃªnin', 'kinhtechinhtri.jpg', '35000', 200, '2020-07-15 00:00:00', '<p>Kinh t? chï¿½nh tr? Marx-Lenin hay kinh t? chï¿½nh tr? h?c Marx-Lenin lï¿½ m?t lï¿½ thuy?t v? kinh t? chï¿½nh tr? do Marx, Engels vï¿½ sau nï¿½y lï¿½ Lenin phï¿½t tri?n trong giai ?o?n m?i, cï¿½ ??i t??ng nghiï¿½n c?u lï¿½ ph??ng th?c s?n xu?t t? b?n ch? ngh?a vï¿½ nh?ng quan h? s?n xu?t vï¿½ trao ??i thï¿½ch ?ng v?i ph??ng th?c s?n xu?t t? b?n ch? ngh?a. Stalin lï¿½ ng??i ?ï¿½ t?o ra khï¿½i ni?m ch? ngh?a Marx - Lenin trong ?ï¿½ cï¿½ kinh t? chï¿½nh tr? Marx - Lenin b?ng cï¿½ch k?t h?p t? t??ng c?a Marx vï¿½ Lenin ??ng th?i gi?n l??c hï¿½a chï¿½ng. Nh?ng nghiï¿½n c?u v? kinh t? chï¿½nh tr? c?a Marx vï¿½ Lenin cung c?p c? s? lï¿½ lu?n cho nh?ng h?c thuy?t khï¿½c v? chï¿½nh tr?, tri?t h?c, xï¿½ h?i h?c c?a h?. C?t lï¿½i c?a kinh t? chï¿½nh tr? Marx - Lenin lï¿½ h?c thuy?t giï¿½ tr? th?ng d? c?a Karl Marx.</p>', 'Thanh NiÃªn', 'Khoa LÃ­ Luáº­n ChÃ­nh Trá»‹'),
(3, 1, 'Chá»§ nghÄ©a khoa há»c xÃ£ há»™i', 'chunghiakhoahocxahoi.jpg', '40000', 250, '2020-09-15 00:00:00', '<p>Ch? ngh?a xï¿½ h?i khoa h?c lï¿½ thu?t ng? ???c Friedrich Engels nï¿½u ra[1] ?? mï¿½ t? cï¿½c lï¿½ thuy?t v? kinh t?-chï¿½nh tr?-xï¿½ h?i do Karl Marx vï¿½ ï¿½ng sï¿½ng t?o. Thu?t ng? nï¿½y ??i l?p v?i ch? ngh?a xï¿½ h?i khï¿½ng t??ng vï¿½ nï¿½ trï¿½nh bï¿½y m?t cï¿½ch cï¿½ h? th?ng vï¿½ nï¿½u b?t lï¿½n ???c nh?ng ?i?u ki?n vï¿½ ti?n ?? cho vi?c xï¿½y d?ng ch? ngh?a xï¿½ h?i khoa h?c ?ï¿½ lï¿½ nï¿½ ch? rï¿½ con ???ng hi?n th?c d?a vï¿½o khoa h?c ?? lo?i b? tï¿½nh tr?ng ng??i bï¿½c l?t ng??i vï¿½ ??a ra m?t t? ch?c xï¿½ h?i m?i khï¿½ng bi?t ??n nh?ng mï¿½u thu?n c?a ch? ngh?a t? b?n mï¿½ nh?ng ng??i theo ch? ngh?a xï¿½ h?i khï¿½ng t??ng ?ï¿½ m? ??c nh?ng khï¿½ng th?c hi?n ???c.</p>', 'Thanh NiÃªn', 'Khoa LÃ­ Luáº­n ChÃ­nh Trá»‹'),
(4, 1, 'Lá»‹ch sá»­ há»c thuyáº¿t kinh táº¿', 'lichsuhocthuyetkinhte.png', '50000', 150, '2020-08-09 00:00:00', '<p>L?ch s? cï¿½c h?c thuy?t kinh t? lï¿½ mï¿½n khoa h?c xï¿½ h?i nghiï¿½n c?u quï¿½ trï¿½nh ra ??i, phï¿½t tri?n, ??u tranh vï¿½ thay th? l?n nhanh c?a cï¿½c h? th?ng qu?n ?i?m kinh t? c?a cï¿½c giai c?p c? b?n d??i nh?ng hï¿½nh thï¿½i kinh t? - xï¿½ h?i khï¿½c nhau.</p>', 'Há»c Viá»‡n NgÃ¢n HÃ ng', 'Khoa LÃ­ Luáº­n ChÃ­nh Trá»‹'),
(5, 1, 'Nhá»¯ng nguyÃªn lÃ­ cÆ¡ báº£n cá»§a chá»§ nghÄ©a M', 'mac1.jpg', '47000', 200, '2019-10-09 00:00:00', '<p>Ch? ngh?a Mï¿½c-Lï¿½nin ï¿½lï¿½ h? th?ng quan ?i?m vï¿½ h?c thuy?tï¿½ khoa h?c c?a C.Mï¿½c, Ph.?ngghen vï¿½ s? phï¿½t tri?n c?a V.I.Lï¿½nin; lï¿½ s? k? th?a vï¿½ phï¿½t tri?n nh?ng giï¿½ tr? c?a l?ch s? t? t??ng nhï¿½n lo?i, trï¿½n c? s? th?c ti?n c?a th?i ??i; lï¿½ khoa h?c v? s? nghi?p gi?i phï¿½ng giai c?p vï¿½ s?n, gi?i phï¿½ng nhï¿½n dï¿½n lao ??ng vï¿½ gi?i phï¿½ng con ng??i; lï¿½ th? gi?i quan vï¿½ ph??ng phï¿½p lu?n ph? bi?n c?a nh?n th?c khoa h?c.</p>', 'Thanh NiÃªn', 'Khoa LÃ­ Luáº­n ChÃ­nh Trá»‹'),
(6, 1, 'Nhá»¯ng nguyÃªn lÃ­ cÆ¡ báº£n cá»§a chá»§ nghÄ©a M', 'mac2.jpg', '50000', 200, '2020-05-04 00:00:00', '<p>Ch? ngh?a Mï¿½c-Lï¿½nin ï¿½lï¿½ h? th?ng quan ?i?m vï¿½ h?c thuy?tï¿½ khoa h?c c?a C.Mï¿½c, Ph.?ngghen vï¿½ s? phï¿½t tri?n c?a V.I.Lï¿½nin; lï¿½ s? k? th?a vï¿½ phï¿½t tri?n nh?ng giï¿½ tr? c?a l?ch s? t? t??ng nhï¿½n lo?i, trï¿½n c? s? th?c ti?n c?a th?i ??i; lï¿½ khoa h?c v? s? nghi?p gi?i phï¿½ng giai c?p vï¿½ s?n, gi?i phï¿½ng nhï¿½n dï¿½n lao ??ng vï¿½ gi?i phï¿½ng con ng??i; lï¿½ th? gi?i quan vï¿½ ph??ng phï¿½p lu?n ph? bi?n c?a nh?n th?c khoa h?c.</p>', 'Thanh NiÃªn', 'Khoa LÃ­ luáº­n ChÃ­nh Trá»‹'),
(7, 1, 'ÄÆ°á»ng lá»‘i cÃ¡ch máº¡ng cá»§a Äáº£ng Cá»™ng ', 'duongloi.jpg', '55000', 250, '2019-12-02 00:00:00', '<p>Th?c hi?n cï¿½c Ngh? quy?t c?a ??ng C?ng s?n Vi?t Nam, nh?t lï¿½ Ngh? quy?t Trung ??ng 5 (khï¿½a X) v? cï¿½ng tï¿½c t? t??ng, lï¿½ lu?n vï¿½ bï¿½o chï¿½ tr??c yï¿½u c?u m?i, ngï¿½y 18/9/2008, B? Giï¿½o d?c vï¿½ ?ï¿½o t?o ?ï¿½ ban hï¿½nh Quy?t ??nh s? 52/2008/Q?-BG?T ban hï¿½nh Ch??ng trï¿½nh mï¿½n h?c ???ng L?i Cï¿½ch M?ng C?a ??ng C?ng S?n Vi?t Nam dï¿½nh cho sinh viï¿½n kh?i khï¿½ng chuyï¿½n ngï¿½nh Mï¿½c - Lï¿½nin, t? t??ng H? Chï¿½ Minh vï¿½ ph?i h?p v?i Nhï¿½ xu?t b?n Chï¿½nh tr? qu?c gia S? th?t xu?t b?n Giï¿½o Trï¿½nh ???ng L?i Cï¿½ch M?ng C?a ??ng C?ng S?n Vi?t Nam (Dï¿½nh cho sinh viï¿½n ??i h?c, cao ??ng kh?i khï¿½ng chuyï¿½n ngï¿½nh Mï¿½c - Lï¿½nin, t? t??ng H? Chï¿½ Minh)</p>', 'Thanh NiÃªn', 'Khoa LÃ­ Luáº­n ChÃ­nh Trá»‹'),
(8, 2, 'Tiá»n tá»‡- NgÃ¢n hÃ ng', 'tientenganhang.png', '55000', 200, '2019-06-12 00:00:00', '<p><strong style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">Ch&iacute;nh s&aacute;ch lÆ°u th&ocirc;ng tiá»n tá»‡</strong><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;hay&nbsp;</span><strong style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">ch&iacute;nh s&aacute;ch tiá»n tá»‡</strong><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;(monetary policy) l&agrave; qu&aacute; tr&igrave;nh&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Quáº£n l&yacute;" href="https://vi.wikipedia.org/wiki/Qu%E1%BA%A3n_l%C3%BD">quáº£n l&yacute;</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;</span><a class="mw-redirect" style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Cung tiá»n" href="https://vi.wikipedia.org/wiki/Cung_ti%E1%BB%81n">cung tiá»n</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;(money supply) cá»§a cÆ¡ quan quáº£n l&yacute; tiá»n tá»‡ (c&oacute; thá»ƒ l&agrave;&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Ng&acirc;n h&agrave;ng trung Æ°Æ¡ng" href="https://vi.wikipedia.org/wiki/Ng%C3%A2n_h%C3%A0ng_trung_%C6%B0%C6%A1ng">ng&acirc;n h&agrave;ng trung Æ°Æ¡ng</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">), thÆ°á»ng l&agrave; hÆ°á»›ng tá»›i má»™t l&atilde;i suáº¥t mong muá»‘n (targeting interest rate) Ä‘á»ƒ Ä‘áº¡t Ä‘Æ°á»£c nhá»¯ng má»¥c Ä‘&iacute;ch á»•n Ä‘á»‹nh v&agrave; tÄƒng trÆ°á»Ÿng kinh táº¿ - nhÆ° kiá»m cháº¿&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Láº¡m ph&aacute;t" href="https://vi.wikipedia.org/wiki/L%E1%BA%A1m_ph%C3%A1t">láº¡m ph&aacute;t</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">, duy tr&igrave; á»•n Ä‘á»‹nh&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Tá»· gi&aacute; há»‘i Ä‘o&aacute;i" href="https://vi.wikipedia.org/wiki/T%E1%BB%B7_gi%C3%A1_h%E1%BB%91i_%C4%91o%C3%A1i">tá»· gi&aacute; há»‘i Ä‘o&aacute;i</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">, Ä‘áº¡t Ä‘Æ°á»£c&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="To&agrave;n dá»¥ng lao Ä‘á»™ng" href="https://vi.wikipedia.org/wiki/To%C3%A0n_d%E1%BB%A5ng_lao_%C4%91%E1%BB%99ng">to&agrave;n dá»¥ng lao Ä‘á»™ng</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;hay&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="TÄƒng trÆ°á»Ÿng kinh táº¿" href="https://vi.wikipedia.org/wiki/T%C4%83ng_tr%C6%B0%E1%BB%9Fng_kinh_t%E1%BA%BF">tÄƒng trÆ°á»Ÿng kinh táº¿</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">. Ch&iacute;nh s&aacute;ch lÆ°u th&ocirc;ng tiá»n tá»‡ bao gá»“m viá»‡c thay Ä‘á»•i c&aacute;c loáº¡i&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="L&atilde;i suáº¥t" href="https://vi.wikipedia.org/wiki/L%C3%A3i_su%E1%BA%A5t">l&atilde;i suáº¥t</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;nháº¥t Ä‘á»‹nh, c&oacute; thá»ƒ trá»±c tiáº¿p hay gi&aacute;n tiáº¿p th&ocirc;ng qua c&aacute;c&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Nghiá»‡p vá»¥ thá»‹ trÆ°á»ng má»Ÿ" href="https://vi.wikipedia.org/wiki/Nghi%E1%BB%87p_v%E1%BB%A5_th%E1%BB%8B_tr%C6%B0%E1%BB%9Dng_m%E1%BB%9F">nghiá»‡p vá»¥ thá»‹ trÆ°á»ng má»Ÿ</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">; quy Ä‘á»‹nh má»©c&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Dá»± trá»¯ báº¯t buá»™c" href="https://vi.wikipedia.org/wiki/D%E1%BB%B1_tr%E1%BB%AF_b%E1%BA%AFt_bu%E1%BB%99c">dá»± trá»¯ báº¯t buá»™c</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">; hoáº·c trao Ä‘á»•i tr&ecirc;n&nbsp;</span>&lt;a style="text-decoration-line: none; color: #', 'Há»c ViÃªn NgÃ¢n HÃ ng', 'Khoa NgÃ¢n HÃ ng'),
(9, 2, 'TÃ­n dá»¥ng ngÃ¢n hÃ ng', 'tindungnganhang.jpg', '50000', 250, '2019-08-06 00:00:00', '<p style="margin: 0px 0px 10px; font-size: 15px; padding: 0px; text-align: justify; font-family: roboto; color: #58595b; background-color: #ffffff;">Trong ná»n kinh táº¿, ng&acirc;n h&agrave;ng Ä‘&oacute;ng vai tr&ograve; l&agrave; má»™t Ä‘á»‹nh cháº¿ t&agrave;i ch&iacute;nh trung gian, v&igrave; váº­y trong quan há»‡ t&iacute;n dá»¥ng vá»›i c&aacute;c nh&agrave; doanh nghiá»‡p v&agrave; c&aacute; nh&acirc;n, ng&acirc;n h&agrave;ng vá»«a l&agrave; ngÆ°á»i cho vay Ä‘á»“ng thá»i vá»«a l&agrave; ngÆ°á»i Ä‘i vay.</p>\r\n<p style="margin: 0px 0px 10px; font-size: 15px; padding: 0px; text-align: justify; font-family: roboto; color: #58595b; background-color: #ffffff;">Vá»›i tÆ° c&aacute;ch l&agrave; ngÆ°á»i Ä‘i vay ng&acirc;n h&agrave;ng nháº­n tiá»n gá»­i cá»§a c&aacute;c nh&agrave; doanh nghiá»‡p v&agrave; c&aacute; nh&acirc;n hoáº·c ph&aacute;t h&agrave;nh chá»©ng chá»‰ tiá»n gá»­i, tr&aacute;i phiáº¿u Ä‘á»ƒ huy Ä‘á»™ng vá»‘n trong x&atilde; há»™i. Tr&aacute;i láº¡i, vá»›i tÆ° c&aacute;ch l&agrave; ngÆ°á»i cho vay th&igrave; ng&acirc;n h&agrave;ng cung cáº¥p t&iacute;n dá»¥ng cho c&aacute;c doanh nghiá»‡p v&agrave; c&aacute; nh&acirc;n.</p>', 'Thanh NiÃªn', 'Khoa NgÃ¢n HÃ ng'),
(11, 2, 'Káº¿ toÃ¡n ngÃ¢n hÃ ng', 'ketoannganhang.jpg', '45000', 200, '2021-10-11 00:00:00', '<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;"><span style="box-sizing: border-box; color: #000000;">Ng&acirc;n h&agrave;ng l&agrave; loáº¡i h&igrave;nh tá»• chá»©c t&iacute;n dá»¥ng Ä‘Æ°á»£c thá»±c hiá»‡n to&agrave;n bá»™ hoáº¡t Ä‘á»™ng ng&acirc;n h&agrave;ng v&agrave; c&aacute;c hoáº¡t Ä‘á»™ng kinh doanh kh&aacute;c c&oacute; li&ecirc;n quan. Cho n&ecirc;n Káº¿ to&aacute;n ng&acirc;n h&agrave;ng l&agrave; c&ocirc;ng cá»¥ Ä‘á»ƒ quáº£n l&yacute; c&aacute;c nghiá»‡p vá»¥ cá»§a ng&acirc;n h&agrave;ng v&agrave; hoáº¡t Ä‘á»™ng cá»§a ná»n kinh táº¿. Qua b&agrave;i viáº¿t ngay sau Ä‘&acirc; cá»§a Káº¿ to&aacute;n Viá»‡t HÆ°ng</span></p>\r\n<p><span style="box-sizing: border-box; color: #000000;">&nbsp;</span></p>', 'HVNH', 'Khoa NgÃ¢n HÃ ng'),
(12, 2, 'NgÃ¢n hÃ ng thÆ°Æ¡ng máº¡i', 'bo-sach-nhung-cau-chuyen-cho-con-thanh-nguoi-tu-te.jpg', '45000', 200, '2019-03-04 00:00:00', '<p><strong style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">Ng&acirc;n h&agrave;ng thÆ°Æ¡ng máº¡i</strong><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;Ä‘&atilde; h&igrave;nh th&agrave;nh tá»“n táº¡i v&agrave; ph&aacute;t triá»ƒn h&agrave;ng trÄƒm&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="NÄƒm" href="https://vi.wikipedia.org/wiki/N%C4%83m">nÄƒm</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;gáº¯n liá»n vá»›i sá»± ph&aacute;t triá»ƒn cá»§a&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Kinh táº¿ h&agrave;ng h&oacute;a" href="https://vi.wikipedia.org/wiki/Kinh_t%E1%BA%BF_h%C3%A0ng_h%C3%B3a">kinh táº¿ h&agrave;ng ho&aacute;</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">. Sá»± ph&aacute;t triá»ƒn há»‡ thá»‘ng Ng&acirc;n h&agrave;ng ThÆ°Æ¡ng máº¡i (NHTM) Ä‘&atilde; c&oacute; t&aacute;c Ä‘á»™ng ráº¥t lá»›n v&agrave; quan trá»ng Ä‘áº¿n qu&aacute; tr&igrave;nh ph&aacute;t triá»ƒn cá»§a ná»n&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Kinh táº¿ h&agrave;ng h&oacute;a" href="https://vi.wikipedia.org/wiki/Kinh_t%E1%BA%BF_h%C3%A0ng_h%C3%B3a">kinh táº¿ h&agrave;ng ho&aacute;</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">, ngÆ°á»£c láº¡i kinh táº¿ h&agrave;ng ho&aacute; ph&aacute;t triá»ƒn máº¡nh máº½ Ä‘áº¿n giai Ä‘oáº¡n cao nháº¥t l&agrave; ná»n kinh táº¿ thá»‹ trÆ°á»ng th&igrave; NHTM cÅ©ng ng&agrave;y c&agrave;ng Ä‘Æ°á»£c ho&agrave;n thiá»‡n v&agrave; trá»Ÿ th&agrave;nh nhá»¯ng Ä‘á»‹nh cháº¿ t&agrave;i ch&iacute;nh kh&ocirc;ng thá»ƒ thiáº¿u Ä‘Æ°á»£c. Th&ocirc;ng qua hoáº¡t Ä‘á»™ng&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="T&iacute;n dá»¥ng" href="https://vi.wikipedia.org/wiki/T%C3%ADn_d%E1%BB%A5ng">t&iacute;n dá»¥ng</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;th&igrave; ng&acirc;n h&agrave;ng thÆ°Æ¡ng máº¡i táº¡o lá»£i &iacute;ch cho ngÆ°á»i gá»­i tiá»n, ngÆ°á»i vay tiá»n v&agrave; cho cáº£ ng&acirc;n h&agrave;ng th&ocirc;ng qua ch&ecirc;nh lá»‡ch&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="L&atilde;i suáº¥t" href="https://vi.wikipedia.org/wiki/L%C3%A3i_su%E1%BA%A5t">l&atilde;i suáº¥t</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;m&agrave; thu Ä‘Æ°á»£c&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Lá»£i nhuáº­n" href="https://vi.wikipedia.org/wiki/L%E1%BB%A3i_nhu%E1%BA%ADn">lá»£i nhuáº­n</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;cho ng&acirc;n h&agrave;ng.</span></p>', 'Há»c Viá»‡n NgÃ¢n HÃ ng', 'Khoa NgÃ¢n HÃ ng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_hoa_don`
--
ALTER TABLE `tbl_hoa_don`
  ADD PRIMARY KEY (`hoa_don_id`);

--
-- Indexes for table `tbl_khoa`
--
ALTER TABLE `tbl_khoa`
  ADD PRIMARY KEY (`khoa_id`);

--
-- Indexes for table `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  ADD PRIMARY KEY (`nguoi_dung_id`);

--
-- Indexes for table `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  ADD PRIMARY KEY (`san_pham_id`),
  ADD KEY `khoa_id` (`khoa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_hoa_don`
--
ALTER TABLE `tbl_hoa_don`
  MODIFY `hoa_don_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_khoa`
--
ALTER TABLE `tbl_khoa`
  MODIFY `khoa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  MODIFY `nguoi_dung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  MODIFY `san_pham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  ADD CONSTRAINT `tbl_san_pham_ibfk_1` FOREIGN KEY (`khoa_id`) REFERENCES `tbl_khoa` (`khoa_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
