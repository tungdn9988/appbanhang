-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 03:28 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thietbi`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `idsp`, `soluong`, `gia`) VALUES
(1, 1, 1, '4250000'),
(2, 14, 1, '29990000'),
(3, 14, 1, '29990000'),
(4, 12, 11, '43990000'),
(5, 9, 5, '26690000'),
(6, 6, 1, '6950000'),
(7, 13, 1, '49990000'),
(8, 13, 1, '49990000'),
(8, 11, 1, '29590000'),
(9, 13, 1, '49990000'),
(10, 14, 1, '29990000');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `diachi` text NOT NULL,
  `sodienthoai` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `diachi`, `sodienthoai`, `email`, `soluong`, `tongtien`) VALUES
(1, 4, 'tthththt', '113', 'admin', 1, '4250000'),
(2, 4, 'Ha noi', '113', 'admin', 1, '29990000'),
(3, 4, 'gttrhrhtrh', '113', 'admin', 1, '29990000'),
(4, 4, 'hanoi', '113', 'admin', 11, '483890000'),
(5, 4, 'hanoi', '113', 'admin', 5, '133450000'),
(6, 4, 'hanoi', '113', 'admin', 1, '6950000'),
(7, 10, 'qqeq3rf4rg', '23123213213', 'tungtung1', 1, '49990000'),
(8, 10, 'vnua', '23123213213', 'tungtung1', 2, '79580000'),
(9, 4, 'ddsasd', '113', 'admin', 1, '49990000'),
(10, 4, 'v', '113', 'admin', 1, '29990000');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `hinhanhsanpham` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `hinhanhsanpham`) VALUES
(1, 'Trang chủ', 'https://cdn.pixabay.com/photo/2015/12/28/02/58/home-1110868_960_720.png'),
(2, 'Điện thoại', 'https://media.istockphoto.com/id/1156787281/vi/vec-to/bi%E1%BB%83u-t%C6%B0%E1%BB%A3ng-%C4%91i%E1%BB%87n-tho%E1%BA%A1i-di-%C4%91%E1%BB%99ng-m%C3%A0u-xanh.jpg?s=1024x1024&w=is&k=20&c=3sQeThyNYO1GS4_ehTH31UGlCWkSraDPMHYA65WNfa4='),
(3, 'máy tính', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRM8futO4krmeIvqG1U7iC41tTbYuaWAD0w7KSvY8EucDHQsZiCoMi20x0LWPgZpn22YTM&usqp=CAU&fbclid=IwAR3wsxkTqURe1sFrAvK8mq387_OHa2ZBOU2gwx44VWiem4mGgT4ukpJkl20'),
(6, 'Thông tin', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTfv4LC62EBl3XNG6m5CBJgrE6uy2hjFXS4Uw&usqp=CA'),
(7, 'Liên hệ', 'https://voip24h.vn/wp-content/uploads/2019/03/phone-png-mb-phone-icon-256.png?fbclid=IwAR1_9107hBWpayxk9v9Y3OIyw1azBnmse4Y4ME9PH4aLdsYeds9Wj_UEoCc'),
(8, 'Đơn hàng', 'https://imaxmobile.vn/media/data/icon-giao-hang-toan-quoc.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `sanphammoi`
--

CREATE TABLE `sanphammoi` (
  `id` int(10) NOT NULL,
  `tensp` varchar(200) NOT NULL,
  `giasp` int(30) NOT NULL,
  `hinhanh` varchar(200) NOT NULL,
  `mota` mediumtext NOT NULL,
  `loai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanphammoi`
--

INSERT INTO `sanphammoi` (`id`, `tensp`, `giasp`, `hinhanh`, `mota`, `loai`) VALUES
(1, 'Điện thoại Xiaomi Redmi Note 12 ', 4250000, 'https://cdn.mobilecity.vn/mobilecity-vn/images/2022/10/w300/xiaomi-redmi-note-12-xanh.png.webp', 'Thông số kỹ thuật\r\n	\r\n		\r\n			\r\n				\r\n					Màn hình:\r\n					Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)\r\n6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9\r\n				\r\n				\r\n					Hệ điều hành:\r\n					Android 12, MIUI 13\r\n				\r\n				\r\n					Camera sau:\r\n					48 MP, (góc rộng), 0.8µm, PDAF\r\n2 MP, f/2.4, (độ sâu)\r\nQuay phim: 1080p@30/60fps\r\n				\r\n				\r\n					Camera trước:\r\n					8 MP, f/2.0, (góc rộng), 1/4\", 1.12µm\r\nQuay phim: 1080p@30fps\r\n				\r\n				\r\n					CPU:\r\n					Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)\r\n8 nhân (2x2.0 GHz & 6x1.8 GHz)\r\nGPU: Adreno 619\r\n				\r\n				\r\n					RAM:\r\n					4-8GB\r\n				\r\n				\r\n					Bộ nhớ trong:\r\n					128-256GB\r\nUFS 2.2\r\n				\r\n				\r\n					Thẻ SIM:\r\n					2 SIM, NanoSIM\r\n				\r\n				\r\n					Dung lượng pin:\r\n					Li-Po 5000 mAh\r\nSạc nhanh 33W\r\n				\r\n				\r\n					Thiết kế:\r\n					Thanh + Cảm ứng', 1),
(2, 'Máy tính bảng Apple MacBook Air 2017 Mới 100% ', 14450000, 'https://cdn.mobilecity.vn/mobilecity-vn/images/2022/11/w300/apple-macbook-air-2017-core-i5-8gb-128gb-dai-dien-1.jpg.webp', 'Màn hình:\r\n					LED-backlit IPS LCD, 13.3 inch, WXGA+ (1440 x 900 pixels)\r\n				\r\n				\r\n					Hệ điều hành:\r\n					Mac OS\r\n				\r\n				\r\n					Camera sau:\r\n					Không\r\n				\r\n				\r\n					Camera trước:\r\n					1 MP\r\n				\r\n				\r\n					CPU:\r\n					Intel Core i5 Broadwell, Turbo Boost 2.9 GHz\r\n				\r\n				\r\n					RAM:\r\n					8GB, DDR3L (Onboard), 1600 MHz\r\n				\r\n				\r\n					Bộ nhớ trong:\r\n					256GB SSD\r\n				\r\n				\r\n					Thẻ SIM:\r\n					\r\n				\r\n				\r\n					Dung lượng pin:\r\n					Li-Po 54 Wh\r\n				\r\n				\r\n					Thiết kế:\r\n					Máy tính xách tay + vỏ nhôm', 2),
(3, 'Điện thoại iPhone 11 Pro cũ (Chính hãng) ', 10750000, 'https://cdn.mobilecity.vn/mobilecity-vn/images/2021/07/w300/iphone-11-pro-xanh.jpg.webp', 'Thông số kỹ thuật\r\n	\r\n		\r\n			\r\n				\r\n					Màn hình:\r\n					Super Retina XDR OLED, HDR10\r\n5.8 inches, 1125 x 2436 pixels, tỷ lệ 19.5:9\r\nKính chống xước\r\n				\r\n				\r\n					Hệ điều hành:\r\n					iOS 13, có thể nâng lên iOS 15\r\n				\r\n				\r\n					Camera sau:\r\n					12 MP, f/1.8, 26mm (góc rộng), dual pixel PDAF, OIS\r\n12 MP, f/2.0, 52mm (chân dung), PDAF, OIS, 2x optical zoom\r\n12 MP, f/2.4, 120˚, 13mm (siêu rộng)\r\nQuay phim 4K@24/30/60fps, 1080p@30/60/120/240fps\r\n				\r\n				\r\n					Camera trước:\r\n					12 MP, f/2.2, 23mm (góc rộng)\r\nQuay phim 4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS\r\n				\r\n				\r\n					CPU:\r\n					Apple A13 Bionic 7 nm+\r\n6 nhân (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)\r\nGPU: Apple GPU, 4 nhân đồ họa\r\n				\r\n				\r\n					RAM:\r\n					4G RAM\r\n				\r\n				\r\n					Bộ nhớ trong:\r\n					64-256-512GB, NVMe\r\nThẻ nhớ: không\r\n				\r\n				\r\n					Thẻ SIM:\r\n					1 Sim hoặc 2 Sim\r\n				\r\n				\r\n					Dung lượng pin:\r\n					Li-Ion 3046 mAh\r\nSạc nhanh 18W, 50% trong 30ph (quảng cáo)\r\nUSB Power Delivery 2.0\r\n				\r\n				\r\n					Thiết kế:\r\n					Thiết kế 2 mặt kính', 1),
(4, 'Điện thoại iPhone 11 cũ  (Chính hãng) ', 6750000, 'https://cdn.mobilecity.vn/mobilecity-vn/images/2021/07/w300/iphone-11-tim.jpg.webp', 'Thông số kỹ thuật\r\n	\r\n		\r\n			\r\n				\r\n					Màn hình:\r\n					Liquid Retina IPS LCD\r\n6.1 inches, Full HD+ (828 x 1792 pixels), tỷ lệ 19.5:9\r\nKính chống xước\r\n				\r\n				\r\n					Hệ điều hành:\r\n					iOS 13, có thể nâng cấp lên iOS 15\r\n				\r\n				\r\n					Camera sau:\r\n					12 MP, f/1.8, 26mm (góc rộng), dual pixel PDAF, OIS\r\n12 MP, f/2.4, 120˚, 13mm (góc siêu rộng)\r\nQuay phim: 4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.\r\n				\r\n				\r\n					Camera trước:\r\n					12 MP, f/2.2, 23mm (góc rộng), HDR\r\nSL 3D, (đo chiều sâu)\r\nQuay phim: 4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS\r\n				\r\n				\r\n					CPU:\r\n					Apple A13 Bionic (7 nm+)\r\n6 nhân (2x2.65 GHz + 4x1.8 GHz)\r\nGPU: Apple GPU (4-core graphics)\r\n				\r\n				\r\n					RAM:\r\n					4GB\r\n				\r\n				\r\n					Bộ nhớ trong:\r\n					64/128/256GB NVMe\r\nThẻ nhớ: không\r\n				\r\n				\r\n					Thẻ SIM:\r\n					2 SIM hoặc 1 SIM, Nano-SIM hoặc E-SIM, 2 SIM (Nano-SIM, dual stand-by) bản Trung Quốc\r\n				\r\n				\r\n					Dung lượng pin:\r\n					Li-Ion 3110 mAh\r\nSạc nhanh 18W, 50% pin trong 30ph (quảng cáo)\r\nUSB Power Delivery 2.0\r\nSạc không dây Qi\r\n				\r\n				\r\n					Thiết kế:\r\n					Thiết kế nguyên 2 mặt kính', 1),
(5, 'Điện thoại Samsung Galaxy S20 Cũ 5G ', 5650000, 'https://cdn.mobilecity.vn/mobilecity-vn/images/2022/03/w300/galaxy-s20-cu-xam.png.webp', 'Thông số kỹ thuật\r\n	\r\n		\r\n			\r\n				\r\n					Màn hình:\r\n					Dynamic AMOLED 2X, 120Hz, HDR10+, 1200 nits (tối đa)\r\n6.2 inches, QHD+ (1440 x 3200 pixels), tỷ lệ 20:9\r\nCorning Gorilla Glass 6\r\nAlways-on display\r\n				\r\n				\r\n					Hệ điều hành:\r\n					Android 10 có thể lên Android 13, One UI 5\r\n				\r\n				\r\n					Camera sau:\r\n					12 MP, f/1.8, 26mm (góc rộng), Dual Pixel PDAF, OIS\r\n64 MP, f/2.0, 29mm (tele), PDAF, OIS\r\n12 MP, f/2.2, 13mm, 120˚ (góc siêu rộng)\r\nQuay phim: 8K@24fps, 4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS & OIS\r\n				\r\n				\r\n					Camera trước:\r\n					10 MP, f/2.2, 26mm (góc rộng)\r\nQuay phim: 4K@30/60fps, 1080p@30fps\r\n				\r\n				\r\n					CPU:\r\n					Qualcomm Snapdragon 865 5G (7 nm+): 8 nhân (2x2.73 GHz & 2x2.50 GHz & 4x2.0)\r\nExynos 990 (7 nm+): 8 nhân (2x2.73 GHz & 2x2.50 GHz & 4x2.0 GHz)\r\nGPU: Adreno 660 hoặc Mali-G77 MP11\r\n				\r\n				\r\n					RAM:\r\n					8-12GB\r\n				\r\n				\r\n					Bộ nhớ trong:\r\n					128GB\r\nUFS 3.0\r\n				\r\n				\r\n					Thẻ SIM:\r\n					1 SIM\r\n				\r\n				\r\n					Dung lượng pin:\r\n					Li-Ion 4000 mAh\r\nSạc nhanh 25W\r\nSạc nhanh không dây 15W\r\nSạc ngược không dây 4.5W\r\n				\r\n				\r\n					Thiết kế:\r\n					Khung kim loại + Mặt lưng kính', 1),
(6, 'Điện thoại Samsung Galaxy S20 Ultra Cũ 5G', 6950000, 'https://cdn.mobilecity.vn/mobilecity-vn/images/2022/03/w300/samsung-galaxy-s20-ultra-den.png.webp', 'Thông số kỹ thuật\r\n	\r\n		\r\n			\r\n				\r\n					Màn hình:\r\n					Dynamic AMOLED 2X, 120Hz, HDR10+, 1400 nits (tối đa)\r\n6.9 inches, QHD+ (1440 x 3200 pixels), tỷ lệ 20:9\r\nCorning Gorilla Glass 6\r\nAlways-on display\r\n120Hz@FHD/60Hz@QHD\r\n				\r\n				\r\n					Hệ điều hành:\r\n					Android 10.0, One UI 2\r\nCó thể cập nhật lên Android 13, One UI 5\r\n				\r\n				\r\n					Camera sau:\r\n					108 MP, f/1.8, 26mm (góc rộng), PDAF, OIS\r\n48 MP, f/3.5, 103mm (kính tiềm vọng tele), PDAF, OIS, zoom quang 4x, zoom hybrid 10x\r\n12 MP, f/2.2, 13mm, 120˚ (góc siêu rộng), Video siêu ổn định\r\n0.3 MP, TOF 3D, f/1.0, (độ sâu)\r\nQuay phim: 8K@24fps, 4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS & OIS\r\n				\r\n				\r\n					Camera trước:\r\n					40 MP, f/2.2, 26mm (rộng), PDAF\r\nCuộc gọi video kép, Auto-HDR\r\nQuay phim: 4K@30/60fps, 1080p@30fps\r\n				\r\n				\r\n					CPU:\r\n					Exynos 990 (7 nm+)\r\n8 nhân (2x2.73 GHz & 2x2.50 GHz & 4x2.0 GHz)\r\nGPU: Mali-G77 MP11\r\nQualcomm SM8250 Snapdragon 865 5G (7 nm+)\r\n8 nhân (1x2.84 GHz & 3x2.42 GHz & 4x1.80 GHz)\r\nGPU: Adreno 650\r\n				\r\n				\r\n					RAM:\r\n					12GB - 16GB\r\n				\r\n				\r\n					Bộ nhớ trong:\r\n					128-512GB\r\nUFS 3.0\r\n				\r\n				\r\n					Thẻ SIM:\r\n					1 SIM\r\n				\r\n				\r\n					Dung lượng pin:\r\n					Li-Ion 5000 mAh\r\nSạc nhanh 45W (PD3.0)\r\nSạc nhanh không dây 15W (Qi/PMA)\r\nSạc ngược không dây 4.5W\r\n				\r\n				\r\n					Thiết kế:\r\n					Khung kim loại + 2 mặt kính Gorilla Glass 6\r\nMàn hình cong 3D', 1),
(7, 'Điện thoại Samsung Galaxy A04s', 2950000, 'https://cdn.mobilecity.vn/mobilecity-vn/images/2022/09/w300/galaxy-a04s-hong.png.webp', 'Thông số kỹ thuật\r\n	\r\n		\r\n			\r\n				\r\n					Màn hình:\r\n					PLS LCD, 90Hz, 400 nits, tỷ lệ 20:9\r\n6.5 inches, HD+ (720 x 1600 pixels)\r\n				\r\n				\r\n					Hệ điều hành:\r\n					Android 12, One UI Core 4\r\n				\r\n				\r\n					Camera sau:\r\n					50 MP, f/1.8 (góc rộng), PDAF\r\n2 MP, f/2.4 (macro)\r\n2 MP, f/2.4 (độ sâu)\r\nQuay phim: 1080p@30fps\r\n				\r\n				\r\n					Camera trước:\r\n					5 MP, f/2.2, (góc rộng)\r\nQuay phim: Có\r\n				\r\n				\r\n					CPU:\r\n					Exynos 850 (8nm)\r\n8 nhân (4x2.0 GHz & 4x2.0 GHz)\r\nGPU: Mali-G52\r\n				\r\n				\r\n					RAM:\r\n					3-4GB\r\n				\r\n				\r\n					Bộ nhớ trong:\r\n					32-128GB, eMMC 5.1\r\n				\r\n				\r\n					Thẻ SIM:\r\n					2 SIM, NanoSIM\r\n				\r\n				\r\n					Dung lượng pin:\r\n					Li-Po 5000 mAh\r\nSạc nhanh 15W (kèm máy)\r\n				\r\n				\r\n					Thiết kế:\r\n					Thanh + Cảm ứng', 1),
(8, 'Điện thoại Sony Xperia 5 Cũ ', 3250000, 'https://cdn.mobilecity.vn/mobilecity-vn/images/2021/11/w300/sony-xperia-5-den.jpg.webp', 'Thông số kỹ thuật\r\n	\r\n		\r\n			\r\n				\r\n					Màn hình:\r\n					OLED, HDR BT.2020\r\n6.1 inches Full HD+ (1080 x 2520 pixels), tỷ lệ 21:9\r\nCorning Gorilla Glass 6\r\nTriluminos display\r\nĐộng cơ trục X\r\n				\r\n				\r\n					Hệ điều hành:\r\n					Android 9.0 (Pie), có thể nâng lên Android 11\r\n				\r\n				\r\n					Camera sau:\r\n					12 MP, f/1.6, 26mm (góc rộng), Dual Pixel PDAF, 5-axis OIS\r\n12 MP, f/2.4, 52mm (tele), PDAF, 2x optical zoom, 5-axis OIS\r\n12 MP, f/2.4, 16mm (góc siêu rộng)\r\nQuay phim: 4K@24/30fps HDR, 1080p@60fps, 1080p@30fps (5-axis gyro-EIS)\r\n				\r\n				\r\n					Camera trước:\r\n					8 MP, f/2.0, 24mm (góc rộng)\r\nQuay phim: 1080p@30fps (5-axis gyro-EIS)\r\n				\r\n				\r\n					CPU:\r\n					Qualcomm SM8150 Snapdragon 855 (7 nm)\r\n8 nhân (1x2.84 GHz & 3x2.42 GHz & 4x1.78 GHz)\r\nGPU: Adreno 640\r\n				\r\n				\r\n					RAM:\r\n					6GB\r\n				\r\n				\r\n					Bộ nhớ trong:\r\n					128GB, UFS 2.1\r\n				\r\n				\r\n					Thẻ SIM:\r\n					1 hoặc 2 SIM\r\n				\r\n				\r\n					Dung lượng pin:\r\n					Li-Ion 3140 mAh\r\nSạc nhanh 18W\r\nUSB Power Delivery 2.0\r\n				\r\n				\r\n					Thiết kế:\r\n					Khung kim loại + 2 mặt kính', 1),
(9, 'Laptop MSI Katana GF66 12UDK 684VN', 26690000, 'https://anphat.com.vn/media/product/43767_laptop_msi_katana_gf66_12udk_684vn__core_i7_12650h__16gb__512gb__geforce_rtx_3050ti__15_6_inch__windows_11_home__black___2_.jpg', 'Hãng sản xuất\r\n\r\n Laptop MSI\r\n\r\nTên sản phẩm   \r\n\r\nMSI Katana GF66 12UDK 684VN\r\nDòng Laptop\r\n\r\nLaptop | Laptop Văn Phòng | Laptop nhỏ gọn  |  Laptop Core i7\r\n\r\nBộ vi xử lý \r\n\r\nCông nghệ CPU\r\n\r\nIntel Core i7-12650H \r\n\r\nSố nhân\r\n\r\n10\r\n\r\nSố luồng\r\n\r\n16\r\n\r\nTốc độ tối đa\r\n\r\n4.7GHz\r\n\r\nBộ nhớ đệm\r\n\r\n24MB\r\n\r\nBộ nhớ trong (RAM)\r\n\r\nRAM\r\n\r\n16GB \r\n\r\nLoại RAM\r\n\r\nDDR4\r\n\r\nTốc độ Bus RAM\r\n\r\n3200MHz\r\n\r\nSố khe cắm\r\n\r\n 2 khe Ram\r\n\r\nHỗ trợ RAM tối đa\r\n\r\n Nâng cấp tối đa 64GB\r\n\r\nỔ cứng \r\n\r\nDung lượng\r\n\r\n512GB SSD M.2 PCIe NVMe Gen4 x4\r\n\r\nTốc độ vòng quay\r\n\r\n \r\n\r\nKhe cắm SSD mở rộng\r\n\r\n-\r\n\r\nỔ đĩa quang (ODD) \r\n\r\nKhông có\r\n\r\nMàn hình\r\n\r\nKích thước màn hình\r\n\r\n15.6 inch\r\n\r\nĐộ phân giải\r\n\r\nFullHD (1920 x 1080)\r\n\r\nTần số quét\r\n\r\n144Hz\r\n\r\nCông nghệ màn hình\r\n\r\n144Hz 45%NTSC IPS-Level\r\n\r\nĐồ Họa (VGA) \r\n\r\nCard màn hình\r\n\r\nNVIDIA GeForce RTX 3050 Ti Laptop GPU 4GB GDDR6\r\n\r\nKết nối (Network) \r\n\r\nWireless\r\n\r\nIntel Wi-Fi 6 AX201 \r\n\r\nLAN\r\n\r\nGigabit LAN\r\n\r\nBluetooth\r\n\r\nBluetooth 5.2\r\n\r\nBàn phím , Chuột \r\n\r\nKiểu bàn phím\r\n\r\nRGB Gaming Keyboard\r\n\r\nChuột\r\n\r\nCảm ứng đa điểm\r\n\r\nGiao tiếp mở rộng \r\n\r\nKết nối USB\r\n\r\n2 x USB 3.2 Gen1 Type-A\r\n\r\n1 x USB 3.2 Gen1 Type-C\r\n\r\n1 x USB 2.0\r\n\r\nKết nối HDMI/VGA\r\n\r\n1 x HDMI-out (4K 60Hz)\r\n\r\nTai nghe\r\n\r\n1 x Mic-in/ Headphone-out combo jack\r\n\r\nCamera\r\n\r\nHD Camera (30FPS 720P)\r\n\r\nCard mở rộng\r\n\r\n \r\n\r\nLOA\r\n\r\n2 Loa\r\n\r\nKiểu Pin\r\n\r\n3 Cell 53.5 Battery \r\n\r\nSạc pin\r\n\r\nĐi kèm\r\n\r\nHệ điều hành (bản quyền) đi kèm \r\n\r\nWindows 11 Home\r\n\r\nKích thước (Dài x Rộng x Cao)\r\n\r\n359 x 259 x 24.9 mm\r\n\r\nTrọng Lượng\r\n\r\n2.25 kg\r\n\r\nMàu sắc\r\n\r\nBlack', 2),
(10, 'Laptop HP 240 G8 617K5PA ', 9290000, 'https://anphat.com.vn/media/product/41177_laptop_hp_240_g8_617k5pa__1_.jpg', 'Hãng sản xuất\r\n\r\nLaptop HP\r\nTên sản phẩm   \r\n\r\nHP 240 G8 617K5PA\r\nDòng Laptop\r\n\r\nLaptop | Laptop nhỏ gọn | Laptop văn phòng | Laptop Core i3 | Laptop cho kế toán\r\n\r\nBộ vi xử lý \r\n\r\nCông nghệ CPU\r\n\r\nIntel® Core™ i3-1005G1\r\n\r\nSố nhân\r\n\r\n2\r\n\r\nSố luồng\r\n\r\n4\r\n\r\nTốc độ CPU\r\n\r\n1.20 GHz \r\n\r\nTốc độ tối đa\r\n\r\n3.40 GHz\r\n\r\nBộ nhớ đệm\r\n\r\n4MB\r\nBộ nhớ trong (RAM)\r\n\r\nRAM\r\n\r\n4GB (1 x 4GB)\r\n\r\nLoại RAM\r\n\r\nDDR4\r\n\r\nTốc độ Bus RAM\r\n\r\n2666 MHz\r\n\r\nSố khe cắm\r\n\r\n2 khe\r\n\r\nHỗ trợ RAM tối đa\r\n\r\n-\r\n\r\nỔ cứng \r\n\r\nDung lượng\r\n\r\nSSD 256GB PCIe® NVMe™ \r\n\r\nTốc độ vòng quay\r\n\r\n \r\n\r\nKhe cắm SSD mở rộng\r\n\r\n-\r\n\r\nỔ đĩa quang (ODD) \r\n\r\nKhông có\r\n\r\nMàn hình\r\n\r\nKích thước màn hình\r\n\r\n14 inch\r\n\r\nĐộ phân giải\r\n\r\nFHD (1920 x 1080)\r\n\r\nTần số quét\r\n\r\n -\r\n\r\nCông nghệ màn hình\r\n\r\nIPS, narrow bezel, anti-glare, 250 nits, 45% NTSC\r\n\r\nĐồ Họa (VGA) \r\n\r\nCard màn hình\r\n\r\n Intel® UHD Graphics\r\n\r\nKết nối (Network) \r\n\r\nWireless\r\n\r\nIntel® 802.11a/b/g/n/ac (1x1) Wi-Fi®\r\n\r\nLAN\r\n\r\nRealtek RTL8111HSH-CG 10/100/1000 GbE NIC \r\n\r\nBluetooth\r\n\r\nBluetooth® 4.2 combo\r\n\r\nBàn phím , Chuột \r\n\r\nKiểu bàn phím\r\n\r\nBàn phím tiêu chuẩn\r\n\r\nChuột\r\n\r\nCảm ứng đa điểm\r\n\r\nGiao tiếp mở rộng \r\n\r\nKết nối USB\r\n\r\n2 Super Speed USB Type-A 5Gbps signaling rate;\r\n1 SuperSpeed USB Type-C® 5Gbps signaling rate\r\n\r\nKết nối HDMI/VGA\r\n\r\n1 HDMI 1.4b\r\n\r\nTai nghe\r\n\r\n1 headphone/microphone combo; \r\n\r\nCamera\r\n\r\n720p HD camera\r\n\r\nCard mở rộng\r\n\r\n-\r\n\r\nLOA\r\n\r\n2 Loa\r\n\r\nKiểu Pin\r\n\r\n 3-cell, 41 Wh Li-ion\r\n\r\nSạc pin\r\n\r\nĐi kèm\r\n\r\nHệ điều hành (bản quyền) đi kèm \r\n\r\nWindows 11 SL\r\n\r\nKích thước (Dài x Rộng x Cao)\r\n\r\n32.4 x 22.59 x 1.99 cm\r\n\r\nTrọng Lượng\r\n\r\n1.47 kg\r\n\r\nMàu sắc\r\n\r\nBạc', 2),
(11, 'Laptop HP ZBook Firefly 14 G8', 29590000, 'https://anphat.com.vn/media/product/38914_center_facing.png', 'Hãng sản xuất   	 Laptop HP \r\nTên sản phẩm	HP ZBook Firefly 14 G8 Mobile Workstation 1A2F1AV-i5-8G-DDR4-3200\r\nNhóm thuộc tính	Laptop | Laptop Workstation\r\nBộ vi xử lý \r\n\r\nBộ vi xử lý\r\n\r\nIntel Core i5-1135G7 \r\n\r\nTốc độ\r\n\r\nupto 4.20 GHz, 4 cores 8 threads\r\n\r\nBộ nhớ đệm\r\n\r\n8MB Cache\r\n\r\nBộ nhớ trong (RAM)\r\n\r\nDung lượng\r\n\r\n8GB (1x8GB) DDR4-3200Mhz\r\n\r\nSố khe cắm\r\n\r\n \r\n\r\nỔ cứng \r\n\r\nDung lượng\r\n\r\n 512GB M.2 2280 PCIe NVMe SSD\r\n\r\nTốc độ vòng quay\r\n\r\n \r\n\r\nKhe cắm SSD mở rộng\r\n\r\n \r\n\r\nỔ đĩa quang (ODD) \r\n\r\nKhông có\r\n\r\nHiển thị \r\n\r\nMàn hình\r\n\r\n14 inch FHD (1920x1080) LED UWVA Anti-Glare for WWAN for HD Webcam (400 Nits)\r\n\r\nĐộ phân giải\r\n\r\n1920x1080\r\n\r\nĐồ Họa (VGA) \r\n\r\nCard màn hình\r\n\r\n Intel® Iris® Xe Graphics\r\n\r\nKết nối (Network) \r\n\r\nWireless\r\n\r\nIntel® AX201 Wi-Fi 6 (2x2) \r\n\r\nLAN\r\n\r\n \r\n\r\nBluetooth\r\n\r\nBluetooth® 5 Combo\r\n\r\nBàn phím , Chuột \r\n\r\nKiểu bàn phím\r\n\r\nBàn phím tiêu chuẩn\r\n\r\nChuột\r\n\r\nCảm ứng đa điểm\r\n\r\nGiao tiếp mở rộng \r\n\r\nKết nối USB\r\n\r\n1 SuperSpeed USB Type-A 5Gbps signaling rate;\r\n1 SuperSpeed USB Type-A 5Gbps signaling rate (charging)\r\n2 Thunderbolt™ 4 with USB4™ Type-C® 40Gbps signaling rate (USB Power Delivery, DisplayPort™ 1.4, HP Sleep and Charge)\r\nKết nối HDMI/VGA\r\n\r\n1 HDMI 1.4b\r\n\r\nTai nghe\r\n\r\n1 headphone/microphone combo\r\n\r\nCamera\r\n\r\nWebcam HD\r\n\r\nCard mở rộng\r\n\r\n \r\n\r\nLOA\r\n\r\n2 Loa\r\n\r\nKiểu Pin\r\n\r\n3 Cell, 53 WHr\r\n\r\nSạc pin\r\n\r\nĐi kèm\r\n\r\nHệ điều hành (bản quyền) đi kèm \r\n\r\nWindows 10 Pro 64\r\n\r\nKích thước (Dài x Rộng x Cao)\r\n\r\n 32.3 x 21.46 x 1.79 cm\r\n\r\nTrọng Lượng\r\n\r\n1.41 kg \r\n\r\nMàu sắc\r\n\r\nBạc', 2),
(12, 'Laptop HP OMEN 16-b0176TX 5Z9Q7PA ', 43990000, 'https://anphat.com.vn/media/product/41797_laptop_hp_omen_16_b0176tx_5z9q7pa__2_.jpeg', 'Hãng sản xuất\r\n\r\nLaptop Acer\r\n\r\nTên sản phẩm   \r\n\r\nHP OMEN 16-b0176TX 5Z9Q7PA\r\nDòng Laptop\r\n\r\nLaptop | Laptop HP | Laptop RTX 30 SERIES |  | Laptop Khoảng 16 inch\r\n\r\n \r\n\r\nBộ vi xử lý \r\n\r\nCông nghệ CPU\r\n\r\nIntel® Core™ i7-11800H\r\n\r\nSố nhân\r\n\r\n8\r\n\r\nSố luồng\r\n\r\n 16\r\n\r\nTốc độ CPU\r\n\r\n \r\n\r\nTốc độ tối đa\r\n\r\n4.60 GHz\r\n\r\nBộ nhớ đệm\r\n\r\n24MB\r\n\r\nBộ nhớ trong (RAM)\r\n\r\nRAM\r\n\r\n16 GB (2 x 8 GB)\r\n\r\nLoại RAM\r\n\r\nDDR4\r\n\r\nTốc độ Bus RAM\r\n\r\n 2933 MHz\r\n\r\nSố khe cắm\r\n\r\n2 khe \r\n\r\nHỗ trợ RAM tối đa\r\n\r\n \r\n\r\nỔ cứng \r\n\r\nDung lượng\r\n\r\n1 TB PCIe® NVMe™ TLC M.2 SSD\r\n\r\nTốc độ vòng quay\r\n\r\n \r\n\r\nKhe cắm SSD mở rộng\r\n\r\n \r\n\r\nỔ đĩa quang (ODD) \r\n\r\nKhông có\r\n\r\nMàn hình\r\n\r\nKích thước màn hình\r\n\r\n 16.1 inch  \r\n\r\nĐộ phân giải\r\n\r\nFHD (1920 x 1080)\r\n\r\nTần số quét\r\n\r\n  144 Hz\r\n\r\nCông nghệ màn hình\r\n\r\n7 ms response time, IPS, micro-edge, anti-glare, Low Blue Light, 300 nits, 100% sRGB\r\n\r\nĐồ Họa (VGA) \r\n\r\nCard màn hình\r\n\r\nNVIDIA® GeForce RTX™ 3060 6GB\r\n\r\nKết nối (Network) \r\n\r\nWireless\r\n\r\nIntel® Wi-Fi 6 AX201 (2x2) \r\n\r\nLAN\r\n\r\n 1 RJ-45\r\n\r\nBluetooth\r\n\r\nBluetooth® 5 combo (Supporting Gigabit data rate)\r\n\r\nBàn phím , Chuột \r\n\r\nKiểu bàn phím\r\n\r\nBàn phím tiêu chuẩn - Đèn nền bàn phím, 4-zone RGB backlit\r\n\r\nChuột\r\n\r\nCảm ứng đa điểm\r\n\r\nGiao tiếp mở rộng \r\n\r\nKết nối USB\r\n\r\n1 SuperSpeed USB Type-C® 10Gbps signaling rate (DisplayPort™ 1.4, HP Sleep and Charge); \r\n\r\n1 SuperSpeed USB Type-A 5Gbps signaling rate (HP Sleep and Charge); \r\n\r\n2 SuperSpeed USB Type-A 5Gbps signaling rate\r\n\r\nKết nối HDMI/VGA\r\n\r\n1 HDMI 2.1\r\n\r\nTai nghe\r\n\r\n1 headphone/microphone combo\r\n\r\nCamera\r\n\r\nHP Wide Vision 720p HD camera with integrated dual array digital microphones\r\n\r\nCard mở rộng\r\n\r\n-\r\n\r\nLOA\r\n\r\n2 Loa\r\n\r\nKiểu Pin\r\n\r\n 6-cell, 83 Wh \r\n\r\nSạc pin\r\n\r\nĐi kèm\r\n\r\nHệ điều hành (bản quyền) đi kèm \r\n\r\nWindows 11 Home 64\r\n\r\nKích thước (Dài x Rộng x Cao)\r\n\r\n36.92 x 24.8 x 2.3 cm\r\n\r\nTrọng Lượng\r\n\r\n2.3 kg\r\n\r\nMàu sắc\r\n\r\nShadow Black', 2),
(13, 'Laptop HP EliteBook 630 G9 6M143PA', 49990000, 'https://anphat.com.vn/media/product/41797_laptop_hp_omen_16_b0176tx_5z9q7pa__2_.jpeg', 'Hãng sản xuất\r\n\r\nLaptop Acer\r\n\r\nTên sản phẩm   \r\n\r\nHP OMEN 16-b0176TX 5Z9Q7PA\r\nDòng Laptop\r\n\r\nLaptop | Laptop HP | Laptop RTX 30 SERIES |  | Laptop Khoảng 16 inch\r\n\r\n \r\n\r\nBộ vi xử lý \r\n\r\nCông nghệ CPU\r\n\r\nIntel® Core™ i7-11800H\r\n\r\nSố nhân\r\n\r\n8\r\n\r\nSố luồng\r\n\r\n 16\r\n\r\nTốc độ CPU\r\n\r\n \r\n\r\nTốc độ tối đa\r\n\r\n4.60 GHz\r\n\r\nBộ nhớ đệm\r\n\r\n24MB\r\n\r\nBộ nhớ trong (RAM)\r\n\r\nRAM\r\n\r\n16 GB (2 x 8 GB)\r\n\r\nLoại RAM\r\n\r\nDDR4\r\n\r\nTốc độ Bus RAM\r\n\r\n 2933 MHz\r\n\r\nSố khe cắm\r\n\r\n2 khe \r\n\r\nHỗ trợ RAM tối đa\r\n\r\n \r\n\r\nỔ cứng \r\n\r\nDung lượng\r\n\r\n1 TB PCIe® NVMe™ TLC M.2 SSD\r\n\r\nTốc độ vòng quay\r\n\r\n \r\n\r\nKhe cắm SSD mở rộng\r\n\r\n \r\n\r\nỔ đĩa quang (ODD) \r\n\r\nKhông có\r\n\r\nMàn hình\r\n\r\nKích thước màn hình\r\n\r\n 16.1 inch  \r\n\r\nĐộ phân giải\r\n\r\nFHD (1920 x 1080)\r\n\r\nTần số quét\r\n\r\n  144 Hz\r\n\r\nCông nghệ màn hình\r\n\r\n7 ms response time, IPS, micro-edge, anti-glare, Low Blue Light, 300 nits, 100% sRGB\r\n\r\nĐồ Họa (VGA) \r\n\r\nCard màn hình\r\n\r\nNVIDIA® GeForce RTX™ 3060 6GB\r\n\r\nKết nối (Network) \r\n\r\nWireless\r\n\r\nIntel® Wi-Fi 6 AX201 (2x2) \r\n\r\nLAN\r\n\r\n 1 RJ-45\r\n\r\nBluetooth\r\n\r\nBluetooth® 5 combo (Supporting Gigabit data rate)\r\n\r\nBàn phím , Chuột \r\n\r\nKiểu bàn phím\r\n\r\nBàn phím tiêu chuẩn - Đèn nền bàn phím, 4-zone RGB backlit\r\n\r\nChuột\r\n\r\nCảm ứng đa điểm\r\n\r\nGiao tiếp mở rộng \r\n\r\nKết nối USB\r\n\r\n1 SuperSpeed USB Type-C® 10Gbps signaling rate (DisplayPort™ 1.4, HP Sleep and Charge); \r\n\r\n1 SuperSpeed USB Type-A 5Gbps signaling rate (HP Sleep and Charge); \r\n\r\n2 SuperSpeed USB Type-A 5Gbps signaling rate\r\n\r\nKết nối HDMI/VGA\r\n\r\n1 HDMI 2.1\r\n\r\nTai nghe\r\n\r\n1 headphone/microphone combo\r\n\r\nCamera\r\n\r\nHP Wide Vision 720p HD camera with integrated dual array digital microphones\r\n\r\nCard mở rộng\r\n\r\n-\r\n\r\nLOA\r\n\r\n2 Loa\r\n\r\nKiểu Pin\r\n\r\n 6-cell, 83 Wh \r\n\r\nSạc pin\r\n\r\nĐi kèm\r\n\r\nHệ điều hành (bản quyền) đi kèm \r\n\r\nWindows 11 Home 64\r\n\r\nKích thước (Dài x Rộng x Cao)\r\n\r\n36.92 x 24.8 x 2.3 cm\r\n\r\nTrọng Lượng\r\n\r\n2.3 kg\r\n\r\nMàu sắc\r\n\r\nShadow Black', 2),
(14, 'Laptop HP EliteBook 1040 G9 6Z985PA', 29990000, 'https://anphat.com.vn/media/product/42292_nbac0352vvv.jpg', 'Hãng sản xuất\r\n\r\nLaptop HP\r\nTên sản phẩm   \r\n\r\nHP EliteBook 1040 G9 6Z985PA\r\nDòng Laptop\r\n\r\nLaptop | HP EliteBook | Laptop nhỏ gọn | Laptop Core i7 | Laptop cho kế toán\r\n\r\nBộ vi xử lý \r\n\r\nCông nghệ CPU\r\n\r\nIntel® Core™ i7-1255U\r\n\r\nSố nhân\r\n\r\n10\r\n\r\nSố luồng\r\n\r\n12\r\n\r\nTốc độ CPU\r\n\r\n \r\n\r\nTốc độ tối đa\r\n\r\n4.7 GHz\r\n\r\nBộ nhớ đệm\r\n\r\n12 MB\r\nBộ nhớ trong (RAM)\r\n\r\nRAM\r\n\r\n16GB (1 x 16GB) \r\n\r\nLoại RAM\r\n\r\nDDR5\r\n\r\nTốc độ Bus RAM\r\n\r\n4800MHz\r\n\r\nSố khe cắm\r\n\r\n2 khe\r\n\r\nHỗ trợ RAM tối đa\r\n\r\n-\r\n\r\nỔ cứng \r\n\r\nDung lượng\r\n\r\n1TB PCIe NVMe TLC SSD\r\n\r\nTốc độ vòng quay\r\n\r\n \r\n\r\nKhe cắm SSD mở rộng\r\n\r\n-\r\n\r\nỔ đĩa quang (ODD) \r\n\r\nKhông có\r\n\r\nMàn hình\r\n\r\nKích thước màn hình\r\n\r\n14 inch \r\n\r\nĐộ phân giải\r\n\r\nWUXGA (1920 x 1200)\r\n\r\nTần số quét\r\n\r\n -\r\n\r\nCông nghệ màn hình\r\n\r\nIPS, anti-glare, 1000 nits, 100% sRGB, HP Sure View Reflect integrated privacy screen\r\n\r\nĐồ Họa (VGA) \r\n\r\nCard màn hình\r\n\r\nIntel Iris Xe Graphics\r\n\r\nKết nối (Network) \r\n\r\nWireless\r\n\r\nIntel Wi-Fi 6E AX211 (2x2), NFC\r\n\r\nLAN\r\n\r\n-\r\n\r\nBluetooth\r\n\r\nBluetooth® 5.2 combo (Supporting Gigabit data rate)\r\n\r\nBàn phím , Chuột \r\n\r\nKiểu bàn phím\r\n\r\nBàn phím tiêu chuẩn, đèn nền bàn phím\r\n\r\nChuột\r\n\r\nCảm ứng đa điểm\r\n\r\nGiao tiếp mở rộng \r\n\r\nKết nối USB\r\n\r\n2 Thunderbolt™ 4 with USB4™ Type-C 40Gbps signaling rate (USB Power Delivery, DisplayPort™ 1.4)\r\n\r\n2 SuperSpeed USB Type-A 5Gbps signaling rate (1 charging);\r\n\r\n1 AC power (HDMI cable sold separately.)\r\n\r\nKết nối HDMI/VGA\r\n\r\n1 HDMI 2.0\r\n\r\nTai nghe\r\n\r\n -\r\n\r\nCamera\r\n\r\n Webcam\r\n\r\nCard mở rộng\r\n\r\n-\r\n\r\nLOA\r\n\r\n2 Loa\r\n\r\nKiểu Pin\r\n\r\n3-cell, 51 Wh\r\n\r\nSạc pin\r\n\r\nĐi kèm\r\n\r\nHệ điều hành (bản quyền) đi kèm \r\n\r\nWindows 11 Pro\r\n\r\nKích thước (Dài x Rộng x Cao)\r\n\r\n31.56 x 22.4 x 1.92 cm\r\n\r\nTrọng Lượng\r\n\r\n1.16 kg\r\n\r\nMàu sắc\r\n\r\nBạc', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `username`, `mobile`) VALUES
(4, 'admin', 'admin', 'admin', '113'),
(5, '12121', '1', '212121', '1212121'),
(6, '212121', '11', '1212', '1'),
(7, '', '', '', ''),
(8, 'dinhtung123', '123', 'dinhtung123', '0123456789'),
(9, 'tungtung', '123', 'tungtung', '01234567890'),
(10, 'tungtung1', '123', 'tungtung1', '23123213213');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanphammoi`
--
ALTER TABLE `sanphammoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sanphammoi`
--
ALTER TABLE `sanphammoi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
